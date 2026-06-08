; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_059.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_059.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_059_kernel(i32 noundef %x) #0 {
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
  store i32 0, ptr %x.addr.i, align 4
  store i32 0, ptr %s.i, align 4
  %0 = load i32, ptr %s.i, align 4
  %sub.i = add nsw i32 %0, -4
  store i32 %sub.i, ptr %s.i, align 4
  %1 = load i32, ptr %x.addr.i, align 4
  %and2.i = and i32 %1, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 6
  %add4.i = add nsw i32 %sub.i, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %2 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %2, 3
  %3 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %3, -5
  %storemerge275 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge275, ptr %s.i, align 4
  %4 = load i32, ptr %x.addr.i, align 4
  %and12.i = and i32 %4, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 7
  %add14.i = add nsw i32 %storemerge275, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %5 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %5, 0
  %6 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %6, 5
  %7 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %7, -6
  %storemerge276 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge276, ptr %s.i, align 4
  %8 = load i32, ptr %x.addr.i, align 4
  %and22.i = shl i32 %8, 3
  %mul23.i = and i32 %and22.i, 48
  %add24.i = add nsw i32 %storemerge276, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %9 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %9, 7
  %10 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %10, -7
  %storemerge277 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge277, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %11 = load i32, ptr %total, align 4
  %add = add nsw i32 %11, %storemerge277
  store i32 %add, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %13 = mul i32 %12, 3
  %add.i4 = add i32 %13, 79
  %shr.i = ashr i32 %add.i4, 1
  %xor.i = xor i32 %add.i4, %shr.i
  %mul1.i = shl nsw i32 %xor.i, 2
  %add2.i = add nsw i32 %mul1.i, 77
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 78
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i5 = add nsw i32 %mul9.i, 79
  %shr11.i = ashr i32 %add10.i5, 1
  %xor12.i = xor i32 %add10.i5, %shr11.i
  %mul13.i6 = mul nsw i32 %xor12.i, 7
  %add14.i7 = add nsw i32 %mul13.i6, 80
  %shr15.i = ashr i32 %add14.i7, 2
  %xor16.i = xor i32 %add14.i7, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 81
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 82
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 83
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %14 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %14, %xor28.i
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 2, ptr %mode.addr.i, align 4
  store i32 2, ptr %out.i, align 4
  %15 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %15, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_2.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %16 = load i32, ptr %out.i, align 4
  %xor.i13 = xor i32 %16, 5
  store i32 %xor.i13, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_2.exit: ; preds = %entry, %if.then3.i
  %17 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %18 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %18, %17
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  store i32 %add7, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i15)
  store i32 4, ptr %x.addr.i14, align 4
  store i32 4, ptr %s.i15, align 4
  %19 = load i32, ptr %s.i15, align 4
  %sub.i21 = add nsw i32 %19, -4
  store i32 %sub.i21, ptr %s.i15, align 4
  %20 = load i32, ptr %x.addr.i14, align 4
  %and2.i25 = and i32 %20, 4
  %mul3.i26 = mul nuw nsw i32 %and2.i25, 6
  %add4.i27 = add nsw i32 %sub.i21, %mul3.i26
  store i32 %add4.i27, ptr %s.i15, align 4
  %rem5.i28 = srem i32 %add4.i27, 3
  %cmp6.i29 = icmp eq i32 %rem5.i28, 0
  %21 = load i32, ptr %s.i15, align 4
  %add10.i33 = add nsw i32 %21, 3
  %22 = load i32, ptr %s.i15, align 4
  %sub8.i31 = add nsw i32 %22, -5
  %storemerge279 = select i1 %cmp6.i29, i32 %sub8.i31, i32 %add10.i33
  store i32 %storemerge279, ptr %s.i15, align 4
  %23 = load i32, ptr %x.addr.i14, align 4
  %and12.i35 = and i32 %23, 5
  %mul13.i36 = mul nuw nsw i32 %and12.i35, 7
  %add14.i37 = add nsw i32 %storemerge279, %mul13.i36
  store i32 %add14.i37, ptr %s.i15, align 4
  %24 = and i32 %add14.i37, 3
  %cmp16.i39 = icmp eq i32 %24, 0
  %25 = load i32, ptr %s.i15, align 4
  %add20.i43 = add nsw i32 %25, 5
  %26 = load i32, ptr %s.i15, align 4
  %sub18.i41 = add nsw i32 %26, -6
  %storemerge280 = select i1 %cmp16.i39, i32 %sub18.i41, i32 %add20.i43
  store i32 %storemerge280, ptr %s.i15, align 4
  %27 = load i32, ptr %x.addr.i14, align 4
  %and22.i45 = shl i32 %27, 3
  %mul23.i46 = and i32 %and22.i45, 48
  %add24.i47 = add nsw i32 %storemerge280, %mul23.i46
  store i32 %add24.i47, ptr %s.i15, align 4
  %rem25.i48 = srem i32 %add24.i47, 5
  %cmp26.i49 = icmp eq i32 %rem25.i48, 0
  %28 = load i32, ptr %s.i15, align 4
  %add30.i53 = add nsw i32 %28, 7
  %29 = load i32, ptr %s.i15, align 4
  %sub28.i51 = add nsw i32 %29, -7
  %storemerge281 = select i1 %cmp26.i49, i32 %sub28.i51, i32 %add30.i53
  store i32 %storemerge281, ptr %s.i15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i15)
  %and = and i32 %storemerge281, 255
  %30 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %30, %and
  store i32 %add9, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %32 = mul i32 %31, 3
  %add.i58 = add i32 %32, 91
  %shr.i59 = ashr i32 %add.i58, 1
  %xor.i60 = xor i32 %add.i58, %shr.i59
  %mul1.i61 = shl nsw i32 %xor.i60, 2
  %add2.i62 = add nsw i32 %mul1.i61, 77
  %shr3.i63 = ashr i32 %add2.i62, 2
  %xor4.i64 = xor i32 %add2.i62, %shr3.i63
  %mul5.i65 = mul nsw i32 %xor4.i64, 5
  %add6.i66 = add nsw i32 %mul5.i65, 78
  %shr7.i67 = ashr i32 %add6.i66, 3
  %xor8.i68 = xor i32 %add6.i66, %shr7.i67
  %mul9.i69 = mul nsw i32 %xor8.i68, 6
  %add10.i70 = add nsw i32 %mul9.i69, 79
  %shr11.i71 = ashr i32 %add10.i70, 1
  %xor12.i72 = xor i32 %add10.i70, %shr11.i71
  %mul13.i73 = mul nsw i32 %xor12.i72, 7
  %add14.i74 = add nsw i32 %mul13.i73, 80
  %shr15.i75 = ashr i32 %add14.i74, 2
  %xor16.i76 = xor i32 %add14.i74, %shr15.i75
  %mul17.i77 = shl nsw i32 %xor16.i76, 3
  %add18.i78 = add nsw i32 %mul17.i77, 81
  %shr19.i79 = ashr i32 %add18.i78, 3
  %xor20.i80 = xor i32 %add18.i78, %shr19.i79
  %mul21.i81 = mul nsw i32 %xor20.i80, 9
  %add22.i82 = add nsw i32 %mul21.i81, 82
  %shr23.i83 = ashr i32 %add22.i82, 1
  %xor24.i84 = xor i32 %add22.i82, %shr23.i83
  %mul25.i85 = mul nsw i32 %xor24.i84, 10
  %add26.i86 = add nsw i32 %mul25.i85, 83
  %shr27.i87 = ashr i32 %add26.i86, 2
  %xor28.i88 = xor i32 %add26.i86, %shr27.i87
  %33 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %33, %xor28.i88
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i89)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i91)
  store i32 0, ptr %mode.addr.i89, align 4
  store i32 6, ptr %out.i91, align 4
  %34 = load i32, ptr %mode.addr.i89, align 4
  %and1.i96 = and i32 %34, 2
  %tobool2.i97.not = icmp eq i32 %and1.i96, 0
  br i1 %tobool2.i97.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_6.exit, label %if.then3.i100

if.then3.i100:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_2.exit
  %35 = load i32, ptr %out.i91, align 4
  %xor.i99 = xor i32 %35, 5
  store i32 %xor.i99, ptr %out.i91, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_6.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_2.exit, %if.then3.i100
  %36 = load i32, ptr %out.i91, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i89)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i91)
  %37 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %37, %36
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef 3)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i101)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i102)
  store i32 1, ptr %x.addr.i101, align 4
  store i32 6, ptr %s.i102, align 4
  %38 = load i32, ptr %s.i102, align 4
  %sub.i108 = add nsw i32 %38, -4
  store i32 %sub.i108, ptr %s.i102, align 4
  %39 = load i32, ptr %x.addr.i101, align 4
  %and2.i112 = and i32 %39, 4
  %mul3.i113 = mul nuw nsw i32 %and2.i112, 6
  %add4.i114 = add nsw i32 %sub.i108, %mul3.i113
  store i32 %add4.i114, ptr %s.i102, align 4
  %rem5.i115 = srem i32 %add4.i114, 3
  %cmp6.i116 = icmp eq i32 %rem5.i115, 0
  %40 = load i32, ptr %s.i102, align 4
  %add10.i120 = add nsw i32 %40, 3
  %41 = load i32, ptr %s.i102, align 4
  %sub8.i118 = add nsw i32 %41, -5
  %storemerge283 = select i1 %cmp6.i116, i32 %sub8.i118, i32 %add10.i120
  store i32 %storemerge283, ptr %s.i102, align 4
  %42 = load i32, ptr %x.addr.i101, align 4
  %and12.i122 = and i32 %42, 5
  %mul13.i123 = mul nuw nsw i32 %and12.i122, 7
  %add14.i124 = add nsw i32 %storemerge283, %mul13.i123
  store i32 %add14.i124, ptr %s.i102, align 4
  %43 = and i32 %add14.i124, 3
  %cmp16.i126 = icmp eq i32 %43, 0
  %44 = load i32, ptr %s.i102, align 4
  %add20.i130 = add nsw i32 %44, 5
  %45 = load i32, ptr %s.i102, align 4
  %sub18.i128 = add nsw i32 %45, -6
  %storemerge284 = select i1 %cmp16.i126, i32 %sub18.i128, i32 %add20.i130
  store i32 %storemerge284, ptr %s.i102, align 4
  %46 = load i32, ptr %x.addr.i101, align 4
  %and22.i132 = shl i32 %46, 3
  %mul23.i133 = and i32 %and22.i132, 48
  %add24.i134 = add nsw i32 %storemerge284, %mul23.i133
  store i32 %add24.i134, ptr %s.i102, align 4
  %rem25.i135 = srem i32 %add24.i134, 5
  %cmp26.i136 = icmp eq i32 %rem25.i135, 0
  %47 = load i32, ptr %s.i102, align 4
  %add30.i140 = add nsw i32 %47, 7
  %48 = load i32, ptr %s.i102, align 4
  %sub28.i138 = add nsw i32 %48, -7
  %storemerge285 = select i1 %cmp26.i136, i32 %sub28.i138, i32 %add30.i140
  store i32 %storemerge285, ptr %s.i102, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i101)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i102)
  %49 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %49, %storemerge285
  store i32 %add18, ptr %total, align 4
  %50 = load i32, ptr %x.addr, align 4
  %51 = mul i32 %50, 3
  %add.i145 = add i32 %51, 103
  %shr.i146 = ashr i32 %add.i145, 1
  %xor.i147 = xor i32 %add.i145, %shr.i146
  %mul1.i148 = shl nsw i32 %xor.i147, 2
  %add2.i149 = add nsw i32 %mul1.i148, 77
  %shr3.i150 = ashr i32 %add2.i149, 2
  %xor4.i151 = xor i32 %add2.i149, %shr3.i150
  %mul5.i152 = mul nsw i32 %xor4.i151, 5
  %add6.i153 = add nsw i32 %mul5.i152, 78
  %shr7.i154 = ashr i32 %add6.i153, 3
  %xor8.i155 = xor i32 %add6.i153, %shr7.i154
  %mul9.i156 = mul nsw i32 %xor8.i155, 6
  %add10.i157 = add nsw i32 %mul9.i156, 79
  %shr11.i158 = ashr i32 %add10.i157, 1
  %xor12.i159 = xor i32 %add10.i157, %shr11.i158
  %mul13.i160 = mul nsw i32 %xor12.i159, 7
  %add14.i161 = add nsw i32 %mul13.i160, 80
  %shr15.i162 = ashr i32 %add14.i161, 2
  %xor16.i163 = xor i32 %add14.i161, %shr15.i162
  %mul17.i164 = shl nsw i32 %xor16.i163, 3
  %add18.i165 = add nsw i32 %mul17.i164, 81
  %shr19.i166 = ashr i32 %add18.i165, 3
  %xor20.i167 = xor i32 %add18.i165, %shr19.i166
  %mul21.i168 = mul nsw i32 %xor20.i167, 9
  %add22.i169 = add nsw i32 %mul21.i168, 82
  %shr23.i170 = ashr i32 %add22.i169, 1
  %xor24.i171 = xor i32 %add22.i169, %shr23.i170
  %mul25.i172 = mul nsw i32 %xor24.i171, 10
  %add26.i173 = add nsw i32 %mul25.i172, 83
  %52 = lshr i32 %add26.i173, 2
  %xor28.i175 = xor i32 %add26.i173, %52
  %and21 = and i32 %xor28.i175, 255
  %53 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %53, %and21
  store i32 %add22, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i176)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i178)
  store i32 1, ptr %mode.addr.i176, align 4
  store i32 3, ptr %out.i178, align 4
  %54 = load i32, ptr %out.i178, align 4
  %add.i181 = add nsw i32 %54, 4
  store i32 %add.i181, ptr %out.i178, align 4
  %55 = load i32, ptr %mode.addr.i176, align 4
  %and1.i183 = and i32 %55, 2
  %tobool2.i184.not = icmp eq i32 %and1.i183, 0
  br i1 %tobool2.i184.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_10.exit, label %if.then3.i187

if.then3.i187:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_6.exit
  %56 = load i32, ptr %out.i178, align 4
  %xor.i186 = xor i32 %56, 5
  store i32 %xor.i186, ptr %out.i178, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_6.exit, %if.then3.i187
  %57 = load i32, ptr %out.i178, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i176)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i178)
  %58 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %58, %57
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i188)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i189)
  store i32 5, ptr %x.addr.i188, align 4
  store i32 10, ptr %s.i189, align 4
  %59 = load i32, ptr %s.i189, align 4
  %sub.i195 = add nsw i32 %59, -4
  store i32 %sub.i195, ptr %s.i189, align 4
  %60 = load i32, ptr %x.addr.i188, align 4
  %and2.i199 = and i32 %60, 4
  %mul3.i200 = mul nuw nsw i32 %and2.i199, 6
  %add4.i201 = add nsw i32 %sub.i195, %mul3.i200
  store i32 %add4.i201, ptr %s.i189, align 4
  %rem5.i202 = srem i32 %add4.i201, 3
  %cmp6.i203 = icmp eq i32 %rem5.i202, 0
  %61 = load i32, ptr %s.i189, align 4
  %add10.i207 = add nsw i32 %61, 3
  %62 = load i32, ptr %s.i189, align 4
  %sub8.i205 = add nsw i32 %62, -5
  %storemerge287 = select i1 %cmp6.i203, i32 %sub8.i205, i32 %add10.i207
  store i32 %storemerge287, ptr %s.i189, align 4
  %63 = load i32, ptr %x.addr.i188, align 4
  %and12.i209 = and i32 %63, 5
  %mul13.i210 = mul nuw nsw i32 %and12.i209, 7
  %add14.i211 = add nsw i32 %storemerge287, %mul13.i210
  store i32 %add14.i211, ptr %s.i189, align 4
  %64 = and i32 %add14.i211, 3
  %cmp16.i213 = icmp eq i32 %64, 0
  %65 = load i32, ptr %s.i189, align 4
  %add20.i217 = add nsw i32 %65, 5
  %66 = load i32, ptr %s.i189, align 4
  %sub18.i215 = add nsw i32 %66, -6
  %storemerge288 = select i1 %cmp16.i213, i32 %sub18.i215, i32 %add20.i217
  store i32 %storemerge288, ptr %s.i189, align 4
  %67 = load i32, ptr %x.addr.i188, align 4
  %and22.i219 = shl i32 %67, 3
  %mul23.i220 = and i32 %and22.i219, 48
  %add24.i221 = add nsw i32 %storemerge288, %mul23.i220
  store i32 %add24.i221, ptr %s.i189, align 4
  %rem25.i222 = srem i32 %add24.i221, 5
  %cmp26.i223 = icmp eq i32 %rem25.i222, 0
  %68 = load i32, ptr %s.i189, align 4
  %add30.i227 = add nsw i32 %68, 7
  %69 = load i32, ptr %s.i189, align 4
  %sub28.i225 = add nsw i32 %69, -7
  %storemerge289 = select i1 %cmp26.i223, i32 %sub28.i225, i32 %add30.i227
  store i32 %storemerge289, ptr %s.i189, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i188)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i189)
  %70 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %70, %storemerge289
  store i32 %add28, ptr %total, align 4
  %71 = load i32, ptr %x.addr, align 4
  %72 = mul i32 %71, 3
  %add.i232 = add i32 %72, 115
  %shr.i233 = ashr i32 %add.i232, 1
  %xor.i234 = xor i32 %add.i232, %shr.i233
  %mul1.i235 = shl nsw i32 %xor.i234, 2
  %add2.i236 = add nsw i32 %mul1.i235, 77
  %shr3.i237 = ashr i32 %add2.i236, 2
  %xor4.i238 = xor i32 %add2.i236, %shr3.i237
  %mul5.i239 = mul nsw i32 %xor4.i238, 5
  %add6.i240 = add nsw i32 %mul5.i239, 78
  %shr7.i241 = ashr i32 %add6.i240, 3
  %xor8.i242 = xor i32 %add6.i240, %shr7.i241
  %mul9.i243 = mul nsw i32 %xor8.i242, 6
  %add10.i244 = add nsw i32 %mul9.i243, 79
  %shr11.i245 = ashr i32 %add10.i244, 1
  %xor12.i246 = xor i32 %add10.i244, %shr11.i245
  %mul13.i247 = mul nsw i32 %xor12.i246, 7
  %add14.i248 = add nsw i32 %mul13.i247, 80
  %shr15.i249 = ashr i32 %add14.i248, 2
  %xor16.i250 = xor i32 %add14.i248, %shr15.i249
  %mul17.i251 = shl nsw i32 %xor16.i250, 3
  %add18.i252 = add nsw i32 %mul17.i251, 81
  %shr19.i253 = ashr i32 %add18.i252, 3
  %xor20.i254 = xor i32 %add18.i252, %shr19.i253
  %mul21.i255 = mul nsw i32 %xor20.i254, 9
  %add22.i256 = add nsw i32 %mul21.i255, 82
  %shr23.i257 = ashr i32 %add22.i256, 1
  %xor24.i258 = xor i32 %add22.i256, %shr23.i257
  %mul25.i259 = mul nsw i32 %xor24.i258, 10
  %add26.i260 = add nsw i32 %mul25.i259, 83
  %shr27.i261 = ashr i32 %add26.i260, 2
  %xor28.i262 = xor i32 %add26.i260, %shr27.i261
  %73 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %73, %xor28.i262
  store i32 %add31, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i263)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i265)
  store i32 2, ptr %mode.addr.i263, align 4
  store i32 0, ptr %out.i265, align 4
  %74 = load i32, ptr %mode.addr.i263, align 4
  %and1.i270 = and i32 %74, 2
  %tobool2.i271.not = icmp eq i32 %and1.i270, 0
  br i1 %tobool2.i271.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_14.exit, label %if.then3.i274

if.then3.i274:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_10.exit
  %75 = load i32, ptr %out.i265, align 4
  %xor.i273 = xor i32 %75, 5
  store i32 %xor.i273, ptr %out.i265, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_14.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_14.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_059_10.exit, %if.then3.i274
  %76 = load i32, ptr %out.i265, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i263)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i265)
  %and33 = and i32 %76, 255
  %77 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %77, %and33
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef 3)
  %add36 = add nsw i32 %add34, %call35
  store i32 %add36, ptr %total, align 4
  ret i32 %add36
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_059_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef %sub1)
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
