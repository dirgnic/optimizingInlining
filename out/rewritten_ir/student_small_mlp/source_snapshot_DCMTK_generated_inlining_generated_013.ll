; ModuleID = './out/rewritten_ir/student_small_mlp/source_snapshot_DCMTK_generated_inlining_generated_013.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_013.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_013_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i120 = alloca i32, align 4
  %out.i122 = alloca i32, align 4
  %mode.addr.i104 = alloca i32, align 4
  %out.i106 = alloca i32, align 4
  %mode.addr.i92 = alloca i32, align 4
  %out.i94 = alloca i32, align 4
  %mode.addr.i80 = alloca i32, align 4
  %out.i82 = alloca i32, align 4
  %mode.addr.i68 = alloca i32, align 4
  %out.i70 = alloca i32, align 4
  %mode.addr.i56 = alloca i32, align 4
  %out.i58 = alloca i32, align 4
  %retval.i44 = alloca i32, align 4
  %x.addr.i46 = alloca i32, align 4
  %mode.addr.i32 = alloca i32, align 4
  %out.i34 = alloca i32, align 4
  %mode.addr.i26 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i14 = alloca i32, align 4
  %out.i16 = alloca i32, align 4
  %retval.i6 = alloca i32, align 4
  %x.addr.i8 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %x.addr.i2 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 2, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 16
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i2)
  store i32 1, ptr %mode.addr.i1, align 4
  store i32 3, ptr %x.addr.i2, align 4
  %4 = load i32, ptr %mode.addr.i1, align 4
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit
  %5 = load i32, ptr %x.addr.i2, align 4
  %mul.i = shl nsw i32 %5, 2
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_1.exit

if.end3.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_0.exit
  %6 = load i32, ptr %mode.addr.i1, align 4
  %cmp4.i = icmp eq i32 %6, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %7 = load i32, ptr %x.addr.i2, align 4
  %sub.i = add nsw i32 %7, -7
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_1.exit

if.end6.i:                                        ; preds = %if.end3.i
  %8 = load i32, ptr %x.addr.i2, align 4
  %9 = load i32, ptr %mode.addr.i1, align 4
  %add7.i = add nsw i32 %8, %9
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_1.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %10 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i2)
  %11 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %11, %10
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i8)
  store i32 4, ptr %x.addr.i8, align 4
  %12 = load i32, ptr %x.addr.i8, align 4
  %mul.i12 = mul nsw i32 %12, 3
  store i32 %mul.i12, ptr %retval.i6, align 4
  %13 = load i32, ptr %retval.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i8)
  %14 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %14, %13
  store i32 %add4, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i16)
  store i32 0, ptr %mode.addr.i14, align 4
  store i32 5, ptr %out.i16, align 4
  %15 = load i32, ptr %mode.addr.i14, align 4
  %and1.i21 = and i32 %15, 2
  %tobool2.i22.not = icmp eq i32 %and1.i21, 0
  br i1 %tobool2.i22.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_3.exit, label %if.then3.i25

if.then3.i25:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_1.exit
  %16 = load i32, ptr %out.i16, align 4
  %xor.i24 = xor i32 %16, 19
  store i32 %xor.i24, ptr %out.i16, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_3.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_1.exit, %if.then3.i25
  %17 = load i32, ptr %out.i16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i16)
  %18 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %18, %17
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i26, align 4
  store i32 8, ptr %t.i, align 4
  %19 = load i32, ptr %t.i, align 4
  %20 = load i32, ptr %mode.addr.i26, align 4
  %add1.i = add nsw i32 %20, 1
  %mul.i30 = mul nsw i32 %19, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %21 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %21, %mul.i30
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i34)
  store i32 2, ptr %mode.addr.i32, align 4
  store i32 7, ptr %out.i34, align 4
  %22 = load i32, ptr %mode.addr.i32, align 4
  %and1.i39 = and i32 %22, 2
  %tobool2.i40.not = icmp eq i32 %and1.i39, 0
  br i1 %tobool2.i40.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_5.exit, label %if.then3.i43

if.then3.i43:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_3.exit
  %23 = load i32, ptr %out.i34, align 4
  %xor.i42 = xor i32 %23, 16
  store i32 %xor.i42, ptr %out.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_5.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_3.exit, %if.then3.i43
  %24 = load i32, ptr %out.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i34)
  %25 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %25, %24
  store i32 %add10, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i46)
  store i32 8, ptr %x.addr.i46, align 4
  %26 = load i32, ptr %x.addr.i46, align 4
  %add.i48 = add nsw i32 %26, 10
  store i32 %add.i48, ptr %retval.i44, align 4
  %27 = load i32, ptr %retval.i44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i46)
  %28 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %28, %27
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i58)
  store i32 1, ptr %mode.addr.i56, align 4
  store i32 9, ptr %out.i58, align 4
  %29 = load i32, ptr %out.i58, align 4
  %add.i61 = add nsw i32 %29, 5
  store i32 %add.i61, ptr %out.i58, align 4
  %30 = load i32, ptr %mode.addr.i56, align 4
  %and1.i63 = and i32 %30, 2
  %tobool2.i64.not = icmp eq i32 %and1.i63, 0
  br i1 %tobool2.i64.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit, label %if.then3.i67

if.then3.i67:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_5.exit
  %31 = load i32, ptr %out.i58, align 4
  %xor.i66 = xor i32 %31, 4
  store i32 %xor.i66, ptr %out.i58, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_5.exit, %if.then3.i67
  %32 = load i32, ptr %out.i58, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i58)
  %33 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %33, %32
  store i32 %add14, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i70)
  store i32 2, ptr %mode.addr.i68, align 4
  store i32 10, ptr %out.i70, align 4
  %34 = load i32, ptr %mode.addr.i68, align 4
  %and1.i75 = and i32 %34, 2
  %tobool2.i76.not = icmp eq i32 %and1.i75, 0
  br i1 %tobool2.i76.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit, label %if.then3.i79

if.then3.i79:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit
  %35 = load i32, ptr %out.i70, align 4
  %xor.i78 = xor i32 %35, 16
  store i32 %xor.i78, ptr %out.i70, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_7.exit, %if.then3.i79
  %36 = load i32, ptr %out.i70, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i68)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i70)
  %37 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %37, %36
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i82)
  store i32 0, ptr %mode.addr.i80, align 4
  store i32 0, ptr %out.i82, align 4
  %38 = load i32, ptr %mode.addr.i80, align 4
  %and1.i87 = and i32 %38, 2
  %tobool2.i88.not = icmp eq i32 %and1.i87, 0
  br i1 %tobool2.i88.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit, label %if.then3.i91

if.then3.i91:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit
  %39 = load i32, ptr %out.i82, align 4
  %xor.i90 = xor i32 %39, 16
  store i32 %xor.i90, ptr %out.i82, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_8.exit, %if.then3.i91
  %40 = load i32, ptr %out.i82, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i82)
  %41 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %41, %40
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i94)
  store i32 1, ptr %mode.addr.i92, align 4
  store i32 1, ptr %out.i94, align 4
  %42 = load i32, ptr %out.i94, align 4
  %add.i97 = add nsw i32 %42, 6
  store i32 %add.i97, ptr %out.i94, align 4
  %43 = load i32, ptr %mode.addr.i92, align 4
  %and1.i99 = and i32 %43, 2
  %tobool2.i100.not = icmp eq i32 %and1.i99, 0
  br i1 %tobool2.i100.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit, label %if.then3.i103

if.then3.i103:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit
  %44 = load i32, ptr %out.i94, align 4
  %xor.i102 = xor i32 %44, 16
  store i32 %xor.i102, ptr %out.i94, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_9.exit, %if.then3.i103
  %45 = load i32, ptr %out.i94, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i94)
  %46 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %46, %45
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i106)
  store i32 2, ptr %mode.addr.i104, align 4
  store i32 2, ptr %out.i106, align 4
  %47 = load i32, ptr %mode.addr.i104, align 4
  %and1.i111 = and i32 %47, 2
  %tobool2.i112.not = icmp eq i32 %and1.i111, 0
  br i1 %tobool2.i112.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_11.exit, label %if.then3.i115

if.then3.i115:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit
  %48 = load i32, ptr %out.i106, align 4
  %xor.i114 = xor i32 %48, 16
  store i32 %xor.i114, ptr %out.i106, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_11.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_11.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_10.exit, %if.then3.i115
  %49 = load i32, ptr %out.i106, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i106)
  %50 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %50, %49
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL17image_013_large_ai(i32 noundef 3)
  %add24 = add nsw i32 %add22, %call23
  %add26 = add nsw i32 %add24, 104040781
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL19image_013_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i122)
  store i32 0, ptr %mode.addr.i120, align 4
  store i32 6, ptr %out.i122, align 4
  %51 = load i32, ptr %mode.addr.i120, align 4
  %and1.i127 = and i32 %51, 2
  %tobool2.i128.not = icmp eq i32 %and1.i127, 0
  br i1 %tobool2.i128.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_13.exit, label %if.then3.i131

if.then3.i131:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_11.exit
  %52 = load i32, ptr %out.i122, align 4
  %xor.i130 = xor i32 %52, 16
  store i32 %xor.i130, ptr %out.i122, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_13.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_013_11.exit, %if.then3.i131
  %53 = load i32, ptr %out.i122, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i120)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i122)
  %54 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %54, %53
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_013_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 3
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -3
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = shl i32 %3, 2
  %mul3 = and i32 %and2, 16
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -4
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 5
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -5
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 6
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -6
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_013_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_013_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_013_recursivei(i32 noundef %sub1)
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
