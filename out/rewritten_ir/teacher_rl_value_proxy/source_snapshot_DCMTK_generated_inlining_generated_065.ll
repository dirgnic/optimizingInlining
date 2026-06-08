; ModuleID = './out/rewritten_ir/teacher_rl_value_proxy/source_snapshot_DCMTK_generated_inlining_generated_065.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_065.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_065_entry(i32 noundef %x) #0 {
entry:
  %retval.i119 = alloca i32, align 4
  %mode.addr.i120 = alloca i32, align 4
  %x.addr.i121 = alloca i32, align 4
  %retval.i103 = alloca i32, align 4
  %mode.addr.i104 = alloca i32, align 4
  %x.addr.i105 = alloca i32, align 4
  %retval.i87 = alloca i32, align 4
  %x.addr.i89 = alloca i32, align 4
  %retval.i71 = alloca i32, align 4
  %mode.addr.i72 = alloca i32, align 4
  %x.addr.i73 = alloca i32, align 4
  %retval.i55 = alloca i32, align 4
  %mode.addr.i56 = alloca i32, align 4
  %x.addr.i57 = alloca i32, align 4
  %mode.addr.i44 = alloca i32, align 4
  %t.i46 = alloca i32, align 4
  %mode.addr.i32 = alloca i32, align 4
  %out.i34 = alloca i32, align 4
  %retval.i20 = alloca i32, align 4
  %x.addr.i22 = alloca i32, align 4
  %retval.i11 = alloca i32, align 4
  %x.addr.i13 = alloca i32, align 4
  %mode.addr.i6 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 10, ptr %x.addr.i, align 4
  %0 = load i32, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %0, 12
  store i32 %add.i, ptr %retval.i, align 4
  %1 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %2 = load i32, ptr %total, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 1, ptr %mode.addr.i1, align 4
  store i32 0, ptr %out.i, align 4
  %3 = load i32, ptr %out.i, align 4
  %add.i4 = add nsw i32 %3, 3
  store i32 %add.i4, ptr %out.i, align 4
  %4 = load i32, ptr %mode.addr.i1, align 4
  %and1.i = and i32 %4, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %5 = load i32, ptr %out.i, align 4
  %xor.i5 = xor i32 %5, 12
  store i32 %xor.i5, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit: ; preds = %entry, %if.then3.i
  %6 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %7 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %7, %6
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 2, ptr %mode.addr.i6, align 4
  store i32 3, ptr %t.i, align 4
  %8 = load i32, ptr %t.i, align 4
  %9 = load i32, ptr %mode.addr.i6, align 4
  %sub.i10 = sub nsw i32 %8, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %10 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %10, %sub.i10
  store i32 %add4, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i13)
  store i32 2, ptr %x.addr.i13, align 4
  %11 = load i32, ptr %x.addr.i13, align 4
  %add.i15 = add nsw i32 %11, 6
  store i32 %add.i15, ptr %retval.i11, align 4
  %12 = load i32, ptr %retval.i11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i13)
  %13 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %13, %12
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i22)
  store i32 3, ptr %x.addr.i22, align 4
  %14 = load i32, ptr %x.addr.i22, align 4
  %xor.i26 = xor i32 %14, 6
  store i32 %xor.i26, ptr %retval.i20, align 4
  %15 = load i32, ptr %retval.i20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i22)
  %16 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %16, %15
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i34)
  store i32 2, ptr %mode.addr.i32, align 4
  store i32 4, ptr %out.i34, align 4
  %17 = load i32, ptr %mode.addr.i32, align 4
  %and1.i39 = and i32 %17, 2
  %tobool2.i40.not = icmp eq i32 %and1.i39, 0
  br i1 %tobool2.i40.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_5.exit, label %if.then3.i43

if.then3.i43:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit
  %18 = load i32, ptr %out.i34, align 4
  %xor.i42 = xor i32 %18, 16
  store i32 %xor.i42, ptr %out.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_5.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit, %if.then3.i43
  %19 = load i32, ptr %out.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i34)
  %20 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %20, %19
  store i32 %add10, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i46)
  store i32 0, ptr %mode.addr.i44, align 4
  store i32 6, ptr %t.i46, align 4
  %21 = load i32, ptr %t.i46, align 4
  %22 = load i32, ptr %mode.addr.i44, align 4
  %add1.i49 = add nsw i32 %22, 1
  %mul.i50 = mul nsw i32 %21, %add1.i49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i46)
  %23 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %23, %mul.i50
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i55)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i57)
  store i32 1, ptr %mode.addr.i56, align 4
  store i32 6, ptr %x.addr.i57, align 4
  %24 = load i32, ptr %mode.addr.i56, align 4
  %cmp1.i61 = icmp eq i32 %24, 1
  br i1 %cmp1.i61, label %if.then2.i64, label %if.end3.i66

if.then2.i64:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_5.exit
  %25 = load i32, ptr %x.addr.i57, align 4
  %mul.i63 = shl nsw i32 %25, 1
  store i32 %mul.i63, ptr %retval.i55, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_7.exit

if.end3.i66:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_5.exit
  %26 = load i32, ptr %mode.addr.i56, align 4
  %cmp4.i65 = icmp eq i32 %26, 2
  br i1 %cmp4.i65, label %if.then5.i68, label %if.end6.i70

if.then5.i68:                                     ; preds = %if.end3.i66
  %27 = load i32, ptr %x.addr.i57, align 4
  %sub.i67 = add nsw i32 %27, -5
  store i32 %sub.i67, ptr %retval.i55, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_7.exit

if.end6.i70:                                      ; preds = %if.end3.i66
  %28 = load i32, ptr %x.addr.i57, align 4
  %29 = load i32, ptr %mode.addr.i56, align 4
  %add7.i69 = add nsw i32 %28, %29
  store i32 %add7.i69, ptr %retval.i55, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_7.exit: ; preds = %if.then2.i64, %if.then5.i68, %if.end6.i70
  %30 = load i32, ptr %retval.i55, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i57)
  %31 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %31, %30
  store i32 %add14, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i73)
  store i32 2, ptr %mode.addr.i72, align 4
  store i32 7, ptr %x.addr.i73, align 4
  %32 = load i32, ptr %mode.addr.i72, align 4
  %cmp1.i77 = icmp eq i32 %32, 1
  br i1 %cmp1.i77, label %if.then2.i80, label %if.end3.i82

if.then2.i80:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_7.exit
  %33 = load i32, ptr %x.addr.i73, align 4
  %mul.i79 = mul nsw i32 %33, 3
  store i32 %mul.i79, ptr %retval.i71, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_8.exit

if.end3.i82:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_7.exit
  %34 = load i32, ptr %mode.addr.i72, align 4
  %cmp4.i81 = icmp eq i32 %34, 2
  br i1 %cmp4.i81, label %if.then5.i84, label %if.end6.i86

if.then5.i84:                                     ; preds = %if.end3.i82
  %35 = load i32, ptr %x.addr.i73, align 4
  %sub.i83 = add nsw i32 %35, -3
  store i32 %sub.i83, ptr %retval.i71, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_8.exit

if.end6.i86:                                      ; preds = %if.end3.i82
  %36 = load i32, ptr %x.addr.i73, align 4
  %37 = load i32, ptr %mode.addr.i72, align 4
  %add7.i85 = add nsw i32 %36, %37
  store i32 %add7.i85, ptr %retval.i71, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_8.exit: ; preds = %if.then2.i80, %if.then5.i84, %if.end6.i86
  %38 = load i32, ptr %retval.i71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i71)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i72)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i73)
  %39 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %39, %38
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i87)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i89)
  store i32 8, ptr %x.addr.i89, align 4
  %40 = load i32, ptr %x.addr.i89, align 4
  %add.i91 = add nsw i32 %40, 3
  store i32 %add.i91, ptr %retval.i87, align 4
  %41 = load i32, ptr %retval.i87, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i87)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i89)
  %42 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %42, %41
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i103)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i105)
  store i32 1, ptr %mode.addr.i104, align 4
  store i32 9, ptr %x.addr.i105, align 4
  %43 = load i32, ptr %mode.addr.i104, align 4
  %cmp1.i109 = icmp eq i32 %43, 1
  br i1 %cmp1.i109, label %if.then2.i112, label %if.end3.i114

if.then2.i112:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_8.exit
  %44 = load i32, ptr %x.addr.i105, align 4
  %mul.i111 = mul nsw i32 %44, 3
  store i32 %mul.i111, ptr %retval.i103, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_10.exit

if.end3.i114:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_8.exit
  %45 = load i32, ptr %mode.addr.i104, align 4
  %cmp4.i113 = icmp eq i32 %45, 2
  br i1 %cmp4.i113, label %if.then5.i116, label %if.end6.i118

if.then5.i116:                                    ; preds = %if.end3.i114
  %46 = load i32, ptr %x.addr.i105, align 4
  %sub.i115 = add nsw i32 %46, -3
  store i32 %sub.i115, ptr %retval.i103, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_10.exit

if.end6.i118:                                     ; preds = %if.end3.i114
  %47 = load i32, ptr %x.addr.i105, align 4
  %48 = load i32, ptr %mode.addr.i104, align 4
  %add7.i117 = add nsw i32 %47, %48
  store i32 %add7.i117, ptr %retval.i103, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_10.exit: ; preds = %if.then2.i112, %if.then5.i116, %if.end6.i118
  %49 = load i32, ptr %retval.i103, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i103)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i105)
  %50 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %50, %49
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i119)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i121)
  store i32 2, ptr %mode.addr.i120, align 4
  store i32 10, ptr %x.addr.i121, align 4
  %51 = load i32, ptr %mode.addr.i120, align 4
  %cmp1.i125 = icmp eq i32 %51, 1
  br i1 %cmp1.i125, label %if.then2.i128, label %if.end3.i130

if.then2.i128:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_10.exit
  %52 = load i32, ptr %x.addr.i121, align 4
  %mul.i127 = mul nsw i32 %52, 3
  store i32 %mul.i127, ptr %retval.i119, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_11.exit

if.end3.i130:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_10.exit
  %53 = load i32, ptr %mode.addr.i120, align 4
  %cmp4.i129 = icmp eq i32 %53, 2
  br i1 %cmp4.i129, label %if.then5.i132, label %if.end6.i134

if.then5.i132:                                    ; preds = %if.end3.i130
  %54 = load i32, ptr %x.addr.i121, align 4
  %sub.i131 = add nsw i32 %54, -3
  store i32 %sub.i131, ptr %retval.i119, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_11.exit

if.end6.i134:                                     ; preds = %if.end3.i130
  %55 = load i32, ptr %x.addr.i121, align 4
  %56 = load i32, ptr %mode.addr.i120, align 4
  %add7.i133 = add nsw i32 %55, %56
  store i32 %add7.i133, ptr %retval.i119, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_11.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_11.exit: ; preds = %if.then2.i128, %if.then5.i132, %if.end6.i134
  %57 = load i32, ptr %retval.i119, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i119)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i120)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i121)
  %58 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %58, %57
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL17image_065_large_ai(i32 noundef 0)
  %add24 = add nsw i32 %add22, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL17image_065_large_bi(i32 noundef 1)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL19image_065_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL19image_065_recursivei(i32 noundef 3)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_065_large_ai(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %xor
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_065_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = add nuw nsw i32 %and, 6
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
  %sub = add nsw i32 %mul, -5
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
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_065_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_065_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_065_recursivei(i32 noundef %sub1)
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
