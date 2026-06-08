; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_027.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_027.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_027_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i263 = alloca i32, align 4
  %out.i265 = alloca i32, align 4
  %x.addr.i188 = alloca i32, align 4
  %s.i189 = alloca i32, align 4
  %mode.addr.i176 = alloca i32, align 4
  %out.i178 = alloca i32, align 4
  %x.addr.i101 = alloca i32, align 4
  %s.i102 = alloca i32, align 4
  %mode.addr.i89 = alloca i32, align 4
  %out.i91 = alloca i32, align 4
  %x.addr.i14 = alloca i32, align 4
  %s.i15 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %s.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %x, ptr %x.addr.i, align 4
  %and.i = and i32 %x, 3
  %mul.i = mul nuw nsw i32 %and.i, 6
  %add.i = add nsw i32 %mul.i, %x
  store i32 %add.i, ptr %s.i, align 4
  %0 = and i32 %add.i, 1
  %cmp.i = icmp eq i32 %0, 0
  %1 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %1, 1
  %2 = load i32, ptr %s.i, align 4
  %sub.i = add nsw i32 %2, -2
  %storemerge = select i1 %cmp.i, i32 %sub.i, i32 %add1.i
  store i32 %storemerge, ptr %s.i, align 4
  %3 = load i32, ptr %x.addr.i, align 4
  %and2.i = and i32 %3, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 7
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %4 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %4, 3
  %5 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %5, -3
  %storemerge275 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge275, ptr %s.i, align 4
  %6 = load i32, ptr %x.addr.i, align 4
  %and12.i = shl i32 %6, 3
  %mul13.i = and i32 %and12.i, 40
  %add14.i = add nsw i32 %storemerge275, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %7 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %7, 0
  %8 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %8, 5
  %9 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %9, -4
  %storemerge276 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge276, ptr %s.i, align 4
  %10 = load i32, ptr %x.addr.i, align 4
  %and22.i = and i32 %10, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 9
  %add24.i = add nsw i32 %storemerge276, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %11 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %11, 7
  %12 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %12, -5
  %storemerge277 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge277, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %13 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %13, %storemerge277
  store i32 %add1, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %15 = mul i32 %14, 3
  %add.i4 = add i32 %15, 47
  %shr.i = ashr i32 %add.i4, 1
  %xor.i = xor i32 %add.i4, %shr.i
  %mul1.i = shl nsw i32 %xor.i, 2
  %add2.i = add nsw i32 %mul1.i, 45
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 46
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i5 = add nsw i32 %mul9.i, 47
  %shr11.i = ashr i32 %add10.i5, 1
  %xor12.i = xor i32 %add10.i5, %shr11.i
  %mul13.i6 = mul nsw i32 %xor12.i, 7
  %add14.i7 = add nsw i32 %mul13.i6, 48
  %shr15.i = ashr i32 %add14.i7, 2
  %xor16.i = xor i32 %add14.i7, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 49
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 50
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 51
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %16 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %16, %xor28.i
  store i32 %add4, ptr %total, align 4
  %17 = load i32, ptr %x.addr, align 4
  %and = and i32 %17, 3
  %add5 = add nsw i32 %17, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and, ptr %mode.addr.i, align 4
  store i32 %add5, ptr %out.i, align 4
  %and.i9 = and i32 %17, 1
  %tobool.i.not = icmp eq i32 %and.i9, 0
  br i1 %tobool.i.not, label %if.end.i12, label %if.then.i11

if.then.i11:                                      ; preds = %entry
  %18 = load i32, ptr %out.i, align 4
  %add.i10 = add nsw i32 %18, 4
  store i32 %add.i10, ptr %out.i, align 4
  br label %if.end.i12

if.end.i12:                                       ; preds = %if.then.i11, %entry
  %19 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %19, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i12
  %20 = load i32, ptr %out.i, align 4
  %xor.i13 = xor i32 %20, 11
  store i32 %xor.i13, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit: ; preds = %if.end.i12, %if.then3.i
  %21 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %22 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %22, %21
  store i32 %add7, ptr %total, align 4
  %call8 = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef 3)
  %xor = xor i32 %add7, %call8
  store i32 %xor, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %add9 = add nsw i32 %23, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i15)
  store i32 %add9, ptr %x.addr.i14, align 4
  %and.i16 = and i32 %23, 3
  %mul.i17 = mul nuw nsw i32 %and.i16, 6
  %add.i18 = add nsw i32 %add9, %mul.i17
  store i32 %add.i18, ptr %s.i15, align 4
  %24 = and i32 %add.i18, 1
  %cmp.i20 = icmp eq i32 %24, 0
  %25 = load i32, ptr %s.i15, align 4
  %add1.i23 = add nsw i32 %25, 1
  %26 = load i32, ptr %s.i15, align 4
  %sub.i21 = add nsw i32 %26, -2
  %storemerge278 = select i1 %cmp.i20, i32 %sub.i21, i32 %add1.i23
  store i32 %storemerge278, ptr %s.i15, align 4
  %27 = load i32, ptr %x.addr.i14, align 4
  %and2.i25 = and i32 %27, 4
  %mul3.i26 = mul nuw nsw i32 %and2.i25, 7
  %add4.i27 = add nsw i32 %storemerge278, %mul3.i26
  store i32 %add4.i27, ptr %s.i15, align 4
  %rem5.i28 = srem i32 %add4.i27, 3
  %cmp6.i29 = icmp eq i32 %rem5.i28, 0
  %28 = load i32, ptr %s.i15, align 4
  %add10.i33 = add nsw i32 %28, 3
  %29 = load i32, ptr %s.i15, align 4
  %sub8.i31 = add nsw i32 %29, -3
  %storemerge279 = select i1 %cmp6.i29, i32 %sub8.i31, i32 %add10.i33
  store i32 %storemerge279, ptr %s.i15, align 4
  %30 = load i32, ptr %x.addr.i14, align 4
  %and12.i35 = shl i32 %30, 3
  %mul13.i36 = and i32 %and12.i35, 40
  %add14.i37 = add nsw i32 %storemerge279, %mul13.i36
  store i32 %add14.i37, ptr %s.i15, align 4
  %31 = and i32 %add14.i37, 3
  %cmp16.i39 = icmp eq i32 %31, 0
  %32 = load i32, ptr %s.i15, align 4
  %add20.i43 = add nsw i32 %32, 5
  %33 = load i32, ptr %s.i15, align 4
  %sub18.i41 = add nsw i32 %33, -4
  %storemerge280 = select i1 %cmp16.i39, i32 %sub18.i41, i32 %add20.i43
  store i32 %storemerge280, ptr %s.i15, align 4
  %34 = load i32, ptr %x.addr.i14, align 4
  %and22.i45 = and i32 %34, 6
  %mul23.i46 = mul nuw nsw i32 %and22.i45, 9
  %add24.i47 = add nsw i32 %storemerge280, %mul23.i46
  store i32 %add24.i47, ptr %s.i15, align 4
  %rem25.i48 = srem i32 %add24.i47, 5
  %cmp26.i49 = icmp eq i32 %rem25.i48, 0
  %35 = load i32, ptr %s.i15, align 4
  %add30.i53 = add nsw i32 %35, 7
  %36 = load i32, ptr %s.i15, align 4
  %sub28.i51 = add nsw i32 %36, -5
  %storemerge281 = select i1 %cmp26.i49, i32 %sub28.i51, i32 %add30.i53
  store i32 %storemerge281, ptr %s.i15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i15)
  %37 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %37, %storemerge281
  store i32 %add11, ptr %total, align 4
  %38 = load i32, ptr %x.addr, align 4
  %39 = mul i32 %38, 3
  %add.i58 = add i32 %39, 59
  %shr.i59 = ashr i32 %add.i58, 1
  %xor.i60 = xor i32 %add.i58, %shr.i59
  %mul1.i61 = shl nsw i32 %xor.i60, 2
  %add2.i62 = add nsw i32 %mul1.i61, 45
  %shr3.i63 = ashr i32 %add2.i62, 2
  %xor4.i64 = xor i32 %add2.i62, %shr3.i63
  %mul5.i65 = mul nsw i32 %xor4.i64, 5
  %add6.i66 = add nsw i32 %mul5.i65, 46
  %shr7.i67 = ashr i32 %add6.i66, 3
  %xor8.i68 = xor i32 %add6.i66, %shr7.i67
  %mul9.i69 = mul nsw i32 %xor8.i68, 6
  %add10.i70 = add nsw i32 %mul9.i69, 47
  %shr11.i71 = ashr i32 %add10.i70, 1
  %xor12.i72 = xor i32 %add10.i70, %shr11.i71
  %mul13.i73 = mul nsw i32 %xor12.i72, 7
  %add14.i74 = add nsw i32 %mul13.i73, 48
  %shr15.i75 = ashr i32 %add14.i74, 2
  %xor16.i76 = xor i32 %add14.i74, %shr15.i75
  %mul17.i77 = shl nsw i32 %xor16.i76, 3
  %add18.i78 = add nsw i32 %mul17.i77, 49
  %shr19.i79 = ashr i32 %add18.i78, 3
  %xor20.i80 = xor i32 %add18.i78, %shr19.i79
  %mul21.i81 = mul nsw i32 %xor20.i80, 9
  %add22.i82 = add nsw i32 %mul21.i81, 50
  %shr23.i83 = ashr i32 %add22.i82, 1
  %xor24.i84 = xor i32 %add22.i82, %shr23.i83
  %mul25.i85 = mul nsw i32 %xor24.i84, 10
  %add26.i86 = add nsw i32 %mul25.i85, 51
  %shr27.i87 = ashr i32 %add26.i86, 2
  %xor28.i88 = xor i32 %add26.i86, %shr27.i87
  %40 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %40, %xor28.i88
  store i32 %add14, ptr %total, align 4
  %41 = load i32, ptr %x.addr, align 4
  %and15 = and i32 %41, 3
  %add16 = add nsw i32 %41, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i89)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i91)
  store i32 %and15, ptr %mode.addr.i89, align 4
  store i32 %add16, ptr %out.i91, align 4
  %and.i92 = and i32 %41, 1
  %tobool.i93.not = icmp eq i32 %and.i92, 0
  br i1 %tobool.i93.not, label %if.end.i98, label %if.then.i95

if.then.i95:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit
  %42 = load i32, ptr %out.i91, align 4
  %add.i94 = add nsw i32 %42, 4
  store i32 %add.i94, ptr %out.i91, align 4
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.then.i95, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_2.exit
  %43 = load i32, ptr %mode.addr.i89, align 4
  %and1.i96 = and i32 %43, 2
  %tobool2.i97.not = icmp eq i32 %and1.i96, 0
  br i1 %tobool2.i97.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_6.exit, label %if.then3.i100

if.then3.i100:                                    ; preds = %if.end.i98
  %44 = load i32, ptr %out.i91, align 4
  %xor.i99 = xor i32 %44, 11
  store i32 %xor.i99, ptr %out.i91, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_6.exit: ; preds = %if.end.i98, %if.then3.i100
  %45 = load i32, ptr %out.i91, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i89)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i91)
  %46 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %46, %45
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef 3)
  %xor20 = xor i32 %add18, %call19
  store i32 %xor20, ptr %total, align 4
  %47 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %47, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i101)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i102)
  store i32 %add21, ptr %x.addr.i101, align 4
  %and.i103 = and i32 %47, 3
  %mul.i104 = mul nuw nsw i32 %and.i103, 6
  %add.i105 = add nsw i32 %add21, %mul.i104
  store i32 %add.i105, ptr %s.i102, align 4
  %48 = and i32 %add.i105, 1
  %cmp.i107 = icmp eq i32 %48, 0
  %49 = load i32, ptr %s.i102, align 4
  %add1.i110 = add nsw i32 %49, 1
  %50 = load i32, ptr %s.i102, align 4
  %sub.i108 = add nsw i32 %50, -2
  %storemerge282 = select i1 %cmp.i107, i32 %sub.i108, i32 %add1.i110
  store i32 %storemerge282, ptr %s.i102, align 4
  %51 = load i32, ptr %x.addr.i101, align 4
  %and2.i112 = and i32 %51, 4
  %mul3.i113 = mul nuw nsw i32 %and2.i112, 7
  %add4.i114 = add nsw i32 %storemerge282, %mul3.i113
  store i32 %add4.i114, ptr %s.i102, align 4
  %rem5.i115 = srem i32 %add4.i114, 3
  %cmp6.i116 = icmp eq i32 %rem5.i115, 0
  %52 = load i32, ptr %s.i102, align 4
  %add10.i120 = add nsw i32 %52, 3
  %53 = load i32, ptr %s.i102, align 4
  %sub8.i118 = add nsw i32 %53, -3
  %storemerge283 = select i1 %cmp6.i116, i32 %sub8.i118, i32 %add10.i120
  store i32 %storemerge283, ptr %s.i102, align 4
  %54 = load i32, ptr %x.addr.i101, align 4
  %and12.i122 = shl i32 %54, 3
  %mul13.i123 = and i32 %and12.i122, 40
  %add14.i124 = add nsw i32 %storemerge283, %mul13.i123
  store i32 %add14.i124, ptr %s.i102, align 4
  %55 = and i32 %add14.i124, 3
  %cmp16.i126 = icmp eq i32 %55, 0
  %56 = load i32, ptr %s.i102, align 4
  %add20.i130 = add nsw i32 %56, 5
  %57 = load i32, ptr %s.i102, align 4
  %sub18.i128 = add nsw i32 %57, -4
  %storemerge284 = select i1 %cmp16.i126, i32 %sub18.i128, i32 %add20.i130
  store i32 %storemerge284, ptr %s.i102, align 4
  %58 = load i32, ptr %x.addr.i101, align 4
  %and22.i132 = and i32 %58, 6
  %mul23.i133 = mul nuw nsw i32 %and22.i132, 9
  %add24.i134 = add nsw i32 %storemerge284, %mul23.i133
  store i32 %add24.i134, ptr %s.i102, align 4
  %rem25.i135 = srem i32 %add24.i134, 5
  %cmp26.i136 = icmp eq i32 %rem25.i135, 0
  %59 = load i32, ptr %s.i102, align 4
  %add30.i140 = add nsw i32 %59, 7
  %60 = load i32, ptr %s.i102, align 4
  %sub28.i138 = add nsw i32 %60, -5
  %storemerge285 = select i1 %cmp26.i136, i32 %sub28.i138, i32 %add30.i140
  store i32 %storemerge285, ptr %s.i102, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i101)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i102)
  %61 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %61, %storemerge285
  store i32 %add23, ptr %total, align 4
  %62 = load i32, ptr %x.addr, align 4
  %63 = mul i32 %62, 3
  %add.i145 = add i32 %63, 71
  %shr.i146 = ashr i32 %add.i145, 1
  %xor.i147 = xor i32 %add.i145, %shr.i146
  %mul1.i148 = shl nsw i32 %xor.i147, 2
  %add2.i149 = add nsw i32 %mul1.i148, 45
  %shr3.i150 = ashr i32 %add2.i149, 2
  %xor4.i151 = xor i32 %add2.i149, %shr3.i150
  %mul5.i152 = mul nsw i32 %xor4.i151, 5
  %add6.i153 = add nsw i32 %mul5.i152, 46
  %shr7.i154 = ashr i32 %add6.i153, 3
  %xor8.i155 = xor i32 %add6.i153, %shr7.i154
  %mul9.i156 = mul nsw i32 %xor8.i155, 6
  %add10.i157 = add nsw i32 %mul9.i156, 47
  %shr11.i158 = ashr i32 %add10.i157, 1
  %xor12.i159 = xor i32 %add10.i157, %shr11.i158
  %mul13.i160 = mul nsw i32 %xor12.i159, 7
  %add14.i161 = add nsw i32 %mul13.i160, 48
  %shr15.i162 = ashr i32 %add14.i161, 2
  %xor16.i163 = xor i32 %add14.i161, %shr15.i162
  %mul17.i164 = shl nsw i32 %xor16.i163, 3
  %add18.i165 = add nsw i32 %mul17.i164, 49
  %shr19.i166 = ashr i32 %add18.i165, 3
  %xor20.i167 = xor i32 %add18.i165, %shr19.i166
  %mul21.i168 = mul nsw i32 %xor20.i167, 9
  %add22.i169 = add nsw i32 %mul21.i168, 50
  %shr23.i170 = ashr i32 %add22.i169, 1
  %xor24.i171 = xor i32 %add22.i169, %shr23.i170
  %mul25.i172 = mul nsw i32 %xor24.i171, 10
  %add26.i173 = add nsw i32 %mul25.i172, 51
  %shr27.i174 = ashr i32 %add26.i173, 2
  %xor28.i175 = xor i32 %add26.i173, %shr27.i174
  %64 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %64, %xor28.i175
  store i32 %add26, ptr %total, align 4
  %65 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %65, 3
  %add28 = add nsw i32 %65, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i176)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i178)
  store i32 %and27, ptr %mode.addr.i176, align 4
  store i32 %add28, ptr %out.i178, align 4
  %and.i179 = and i32 %65, 1
  %tobool.i180.not = icmp eq i32 %and.i179, 0
  br i1 %tobool.i180.not, label %if.end.i185, label %if.then.i182

if.then.i182:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_6.exit
  %66 = load i32, ptr %out.i178, align 4
  %add.i181 = add nsw i32 %66, 4
  store i32 %add.i181, ptr %out.i178, align 4
  br label %if.end.i185

if.end.i185:                                      ; preds = %if.then.i182, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_6.exit
  %67 = load i32, ptr %mode.addr.i176, align 4
  %and1.i183 = and i32 %67, 2
  %tobool2.i184.not = icmp eq i32 %and1.i183, 0
  br i1 %tobool2.i184.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_10.exit, label %if.then3.i187

if.then3.i187:                                    ; preds = %if.end.i185
  %68 = load i32, ptr %out.i178, align 4
  %xor.i186 = xor i32 %68, 11
  store i32 %xor.i186, ptr %out.i178, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_10.exit: ; preds = %if.end.i185, %if.then3.i187
  %69 = load i32, ptr %out.i178, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i176)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i178)
  %70 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %70, %69
  store i32 %add30, ptr %total, align 4
  %call31 = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef 3)
  %xor32 = xor i32 %add30, %call31
  store i32 %xor32, ptr %total, align 4
  %71 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %71, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i188)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i189)
  store i32 %add33, ptr %x.addr.i188, align 4
  %and.i190 = and i32 %71, 3
  %mul.i191 = mul nuw nsw i32 %and.i190, 6
  %add.i192 = add nsw i32 %add33, %mul.i191
  store i32 %add.i192, ptr %s.i189, align 4
  %72 = and i32 %add.i192, 1
  %cmp.i194 = icmp eq i32 %72, 0
  %73 = load i32, ptr %s.i189, align 4
  %add1.i197 = add nsw i32 %73, 1
  %74 = load i32, ptr %s.i189, align 4
  %sub.i195 = add nsw i32 %74, -2
  %storemerge286 = select i1 %cmp.i194, i32 %sub.i195, i32 %add1.i197
  store i32 %storemerge286, ptr %s.i189, align 4
  %75 = load i32, ptr %x.addr.i188, align 4
  %and2.i199 = and i32 %75, 4
  %mul3.i200 = mul nuw nsw i32 %and2.i199, 7
  %add4.i201 = add nsw i32 %storemerge286, %mul3.i200
  store i32 %add4.i201, ptr %s.i189, align 4
  %rem5.i202 = srem i32 %add4.i201, 3
  %cmp6.i203 = icmp eq i32 %rem5.i202, 0
  %76 = load i32, ptr %s.i189, align 4
  %add10.i207 = add nsw i32 %76, 3
  %77 = load i32, ptr %s.i189, align 4
  %sub8.i205 = add nsw i32 %77, -3
  %storemerge287 = select i1 %cmp6.i203, i32 %sub8.i205, i32 %add10.i207
  store i32 %storemerge287, ptr %s.i189, align 4
  %78 = load i32, ptr %x.addr.i188, align 4
  %and12.i209 = shl i32 %78, 3
  %mul13.i210 = and i32 %and12.i209, 40
  %add14.i211 = add nsw i32 %storemerge287, %mul13.i210
  store i32 %add14.i211, ptr %s.i189, align 4
  %79 = and i32 %add14.i211, 3
  %cmp16.i213 = icmp eq i32 %79, 0
  %80 = load i32, ptr %s.i189, align 4
  %add20.i217 = add nsw i32 %80, 5
  %81 = load i32, ptr %s.i189, align 4
  %sub18.i215 = add nsw i32 %81, -4
  %storemerge288 = select i1 %cmp16.i213, i32 %sub18.i215, i32 %add20.i217
  store i32 %storemerge288, ptr %s.i189, align 4
  %82 = load i32, ptr %x.addr.i188, align 4
  %and22.i219 = and i32 %82, 6
  %mul23.i220 = mul nuw nsw i32 %and22.i219, 9
  %add24.i221 = add nsw i32 %storemerge288, %mul23.i220
  store i32 %add24.i221, ptr %s.i189, align 4
  %rem25.i222 = srem i32 %add24.i221, 5
  %cmp26.i223 = icmp eq i32 %rem25.i222, 0
  %83 = load i32, ptr %s.i189, align 4
  %add30.i227 = add nsw i32 %83, 7
  %84 = load i32, ptr %s.i189, align 4
  %sub28.i225 = add nsw i32 %84, -5
  %storemerge289 = select i1 %cmp26.i223, i32 %sub28.i225, i32 %add30.i227
  store i32 %storemerge289, ptr %s.i189, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i188)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i189)
  %85 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %85, %storemerge289
  store i32 %add35, ptr %total, align 4
  %86 = load i32, ptr %x.addr, align 4
  %87 = mul i32 %86, 3
  %add.i232 = add i32 %87, 83
  %shr.i233 = ashr i32 %add.i232, 1
  %xor.i234 = xor i32 %add.i232, %shr.i233
  %mul1.i235 = shl nsw i32 %xor.i234, 2
  %add2.i236 = add nsw i32 %mul1.i235, 45
  %shr3.i237 = ashr i32 %add2.i236, 2
  %xor4.i238 = xor i32 %add2.i236, %shr3.i237
  %mul5.i239 = mul nsw i32 %xor4.i238, 5
  %add6.i240 = add nsw i32 %mul5.i239, 46
  %shr7.i241 = ashr i32 %add6.i240, 3
  %xor8.i242 = xor i32 %add6.i240, %shr7.i241
  %mul9.i243 = mul nsw i32 %xor8.i242, 6
  %add10.i244 = add nsw i32 %mul9.i243, 47
  %shr11.i245 = ashr i32 %add10.i244, 1
  %xor12.i246 = xor i32 %add10.i244, %shr11.i245
  %mul13.i247 = mul nsw i32 %xor12.i246, 7
  %add14.i248 = add nsw i32 %mul13.i247, 48
  %shr15.i249 = ashr i32 %add14.i248, 2
  %xor16.i250 = xor i32 %add14.i248, %shr15.i249
  %mul17.i251 = shl nsw i32 %xor16.i250, 3
  %add18.i252 = add nsw i32 %mul17.i251, 49
  %shr19.i253 = ashr i32 %add18.i252, 3
  %xor20.i254 = xor i32 %add18.i252, %shr19.i253
  %mul21.i255 = mul nsw i32 %xor20.i254, 9
  %add22.i256 = add nsw i32 %mul21.i255, 50
  %shr23.i257 = ashr i32 %add22.i256, 1
  %xor24.i258 = xor i32 %add22.i256, %shr23.i257
  %mul25.i259 = mul nsw i32 %xor24.i258, 10
  %add26.i260 = add nsw i32 %mul25.i259, 51
  %shr27.i261 = ashr i32 %add26.i260, 2
  %xor28.i262 = xor i32 %add26.i260, %shr27.i261
  %88 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %88, %xor28.i262
  store i32 %add38, ptr %total, align 4
  %89 = load i32, ptr %x.addr, align 4
  %and39 = and i32 %89, 3
  %add40 = add nsw i32 %89, 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i263)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i265)
  store i32 %and39, ptr %mode.addr.i263, align 4
  store i32 %add40, ptr %out.i265, align 4
  %and.i266 = and i32 %89, 1
  %tobool.i267.not = icmp eq i32 %and.i266, 0
  br i1 %tobool.i267.not, label %if.end.i272, label %if.then.i269

if.then.i269:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_10.exit
  %90 = load i32, ptr %out.i265, align 4
  %add.i268 = add nsw i32 %90, 4
  store i32 %add.i268, ptr %out.i265, align 4
  br label %if.end.i272

if.end.i272:                                      ; preds = %if.then.i269, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_10.exit
  %91 = load i32, ptr %mode.addr.i263, align 4
  %and1.i270 = and i32 %91, 2
  %tobool2.i271.not = icmp eq i32 %and1.i270, 0
  br i1 %tobool2.i271.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_14.exit, label %if.then3.i274

if.then3.i274:                                    ; preds = %if.end.i272
  %92 = load i32, ptr %out.i265, align 4
  %xor.i273 = xor i32 %92, 11
  store i32 %xor.i273, ptr %out.i265, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_14.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_027_14.exit: ; preds = %if.end.i272, %if.then3.i274
  %93 = load i32, ptr %out.i265, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i263)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i265)
  %94 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %94, %93
  store i32 %add42, ptr %total, align 4
  %call43 = call noundef i32 @_ZL20matrix_027_recursivei(i32 noundef 3)
  %xor44 = xor i32 %add42, %call43
  store i32 %xor44, ptr %total, align 4
  ret i32 %xor44
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
