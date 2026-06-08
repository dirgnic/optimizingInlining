; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_029.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_029.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_029_dispatch(i32 noundef %x) #0 {
entry:
  %mode.addr.i133 = alloca i32, align 4
  %out.i135 = alloca i32, align 4
  %x.addr.i116 = alloca i32, align 4
  %s.i = alloca i32, align 4
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
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 0, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 13
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %4, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i2)
  store i32 1, ptr %mode.addr.i1, align 4
  store i32 %add1, ptr %x.addr.i2, align 4
  %5 = load i32, ptr %mode.addr.i1, align 4
  %cmp1.i = icmp eq i32 %5, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_0.exit
  %6 = load i32, ptr %x.addr.i2, align 4
  %mul.i = shl nsw i32 %6, 2
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_1.exit

if.end3.i:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_0.exit
  %7 = load i32, ptr %mode.addr.i1, align 4
  %cmp4.i = icmp eq i32 %7, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %8 = load i32, ptr %x.addr.i2, align 4
  %sub.i = add nsw i32 %8, -3
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_1.exit

if.end6.i:                                        ; preds = %if.end3.i
  %9 = load i32, ptr %x.addr.i2, align 4
  %10 = load i32, ptr %mode.addr.i1, align 4
  %add7.i = add nsw i32 %9, %10
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_1.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %11 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i2)
  %12 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %12, %11
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i8)
  store i32 2, ptr %x.addr.i8, align 4
  %13 = load i32, ptr %x.addr.i8, align 4
  %mul.i12 = shl nsw i32 %13, 2
  store i32 %mul.i12, ptr %retval.i6, align 4
  %14 = load i32, ptr %retval.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i8)
  %15 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %15, %14
  store i32 %add5, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %16, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i16)
  store i32 0, ptr %mode.addr.i14, align 4
  store i32 %add6, ptr %out.i16, align 4
  %17 = load i32, ptr %mode.addr.i14, align 4
  %and1.i21 = and i32 %17, 2
  %tobool2.i22.not = icmp eq i32 %and1.i21, 0
  br i1 %tobool2.i22.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_3.exit, label %if.then3.i25

if.then3.i25:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_1.exit
  %18 = load i32, ptr %out.i16, align 4
  %xor.i24 = xor i32 %18, 16
  store i32 %xor.i24, ptr %out.i16, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_3.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_1.exit, %if.then3.i25
  %19 = load i32, ptr %out.i16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i16)
  %20 = load i32, ptr %total, align 4
  %xor = xor i32 %20, %19
  store i32 %xor, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i26, align 4
  store i32 7, ptr %t.i, align 4
  %21 = load i32, ptr %t.i, align 4
  %22 = load i32, ptr %mode.addr.i26, align 4
  %add1.i = add nsw i32 %22, 1
  %mul.i30 = mul nsw i32 %21, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %23 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %23, %mul.i30
  store i32 %add9, ptr %total, align 4
  %24 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %24, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i34)
  store i32 2, ptr %mode.addr.i32, align 4
  store i32 %add10, ptr %out.i34, align 4
  %25 = load i32, ptr %mode.addr.i32, align 4
  %and1.i39 = and i32 %25, 2
  %tobool2.i40.not = icmp eq i32 %and1.i39, 0
  br i1 %tobool2.i40.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_5.exit, label %if.then3.i43

if.then3.i43:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_3.exit
  %26 = load i32, ptr %out.i34, align 4
  %xor.i42 = xor i32 %26, 13
  store i32 %xor.i42, ptr %out.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_5.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_3.exit, %if.then3.i43
  %27 = load i32, ptr %out.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i34)
  %28 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %28, %27
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i46)
  store i32 6, ptr %x.addr.i46, align 4
  %29 = load i32, ptr %x.addr.i46, align 4
  %add.i48 = add nsw i32 %29, 4
  store i32 %add.i48, ptr %retval.i44, align 4
  %30 = load i32, ptr %retval.i44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i46)
  %31 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %31, %30
  store i32 %add14, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %add15 = add nsw i32 %32, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i58)
  store i32 1, ptr %mode.addr.i56, align 4
  store i32 %add15, ptr %out.i58, align 4
  %33 = load i32, ptr %out.i58, align 4
  %add.i61 = add nsw i32 %33, 5
  store i32 %add.i61, ptr %out.i58, align 4
  %34 = load i32, ptr %mode.addr.i56, align 4
  %and1.i63 = and i32 %34, 2
  %tobool2.i64.not = icmp eq i32 %and1.i63, 0
  br i1 %tobool2.i64.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_7.exit, label %if.then3.i67

if.then3.i67:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_5.exit
  %35 = load i32, ptr %out.i58, align 4
  %xor.i66 = xor i32 %35, 20
  store i32 %xor.i66, ptr %out.i58, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_7.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_5.exit, %if.then3.i67
  %36 = load i32, ptr %out.i58, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i58)
  %37 = load i32, ptr %total, align 4
  %xor17 = xor i32 %37, %36
  store i32 %xor17, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i70)
  store i32 2, ptr %mode.addr.i68, align 4
  store i32 1, ptr %out.i70, align 4
  %38 = load i32, ptr %mode.addr.i68, align 4
  %and1.i75 = and i32 %38, 2
  %tobool2.i76.not = icmp eq i32 %and1.i75, 0
  br i1 %tobool2.i76.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_8.exit, label %if.then3.i79

if.then3.i79:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_7.exit
  %39 = load i32, ptr %out.i70, align 4
  %xor.i78 = xor i32 %39, 13
  store i32 %xor.i78, ptr %out.i70, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_8.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_7.exit, %if.then3.i79
  %40 = load i32, ptr %out.i70, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i68)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i70)
  %41 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %41, %40
  store i32 %add19, ptr %total, align 4
  %42 = load i32, ptr %x.addr, align 4
  %add20 = add nsw i32 %42, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i82)
  store i32 0, ptr %mode.addr.i80, align 4
  store i32 %add20, ptr %out.i82, align 4
  %43 = load i32, ptr %mode.addr.i80, align 4
  %and1.i87 = and i32 %43, 2
  %tobool2.i88.not = icmp eq i32 %and1.i87, 0
  br i1 %tobool2.i88.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_9.exit, label %if.then3.i91

if.then3.i91:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_8.exit
  %44 = load i32, ptr %out.i82, align 4
  %xor.i90 = xor i32 %44, 13
  store i32 %xor.i90, ptr %out.i82, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_9.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_8.exit, %if.then3.i91
  %45 = load i32, ptr %out.i82, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i82)
  %46 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %46, %45
  store i32 %add22, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i94)
  store i32 1, ptr %mode.addr.i92, align 4
  store i32 3, ptr %out.i94, align 4
  %47 = load i32, ptr %out.i94, align 4
  %add.i97 = add nsw i32 %47, 6
  store i32 %add.i97, ptr %out.i94, align 4
  %48 = load i32, ptr %mode.addr.i92, align 4
  %and1.i99 = and i32 %48, 2
  %tobool2.i100.not = icmp eq i32 %and1.i99, 0
  br i1 %tobool2.i100.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_10.exit, label %if.then3.i103

if.then3.i103:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_9.exit
  %49 = load i32, ptr %out.i94, align 4
  %xor.i102 = xor i32 %49, 13
  store i32 %xor.i102, ptr %out.i94, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_9.exit, %if.then3.i103
  %50 = load i32, ptr %out.i94, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i94)
  %51 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %51, %50
  store i32 %add24, ptr %total, align 4
  %52 = load i32, ptr %x.addr, align 4
  %add25 = add nsw i32 %52, 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i106)
  store i32 2, ptr %mode.addr.i104, align 4
  store i32 %add25, ptr %out.i106, align 4
  %53 = load i32, ptr %mode.addr.i104, align 4
  %and1.i111 = and i32 %53, 2
  %tobool2.i112.not = icmp eq i32 %and1.i111, 0
  br i1 %tobool2.i112.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_11.exit, label %if.then3.i115

if.then3.i115:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_10.exit
  %54 = load i32, ptr %out.i106, align 4
  %xor.i114 = xor i32 %54, 13
  store i32 %xor.i114, ptr %out.i106, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_11.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_11.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_10.exit, %if.then3.i115
  %55 = load i32, ptr %out.i106, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i106)
  %56 = load i32, ptr %total, align 4
  %xor27 = xor i32 %56, %55
  store i32 %xor27, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i116)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 5, ptr %x.addr.i116, align 4
  store i32 13, ptr %s.i, align 4
  %57 = load i32, ptr %s.i, align 4
  %add1.i123 = add nsw i32 %57, 1
  store i32 %add1.i123, ptr %s.i, align 4
  %58 = load i32, ptr %x.addr.i116, align 4
  %and2.i = and i32 %58, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 9
  %add4.i = add nsw i32 %add1.i123, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %59 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %59, 3
  %60 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %60, -5
  %storemerge145 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge145, ptr %s.i, align 4
  %61 = load i32, ptr %x.addr.i116, align 4
  %and12.i = and i32 %61, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 10
  %add14.i = add nsw i32 %storemerge145, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %62 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %62, 0
  %63 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %63, 5
  %64 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %64, -6
  %storemerge146 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge146, ptr %s.i, align 4
  %65 = load i32, ptr %x.addr.i116, align 4
  %and22.i = and i32 %65, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 11
  %add24.i = add nsw i32 %storemerge146, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %66 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %66, 7
  %67 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %67, -7
  %storemerge147 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge147, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %68 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %68, %storemerge147
  store i32 %add29, ptr %total, align 4
  %69 = load i32, ptr %x.addr, align 4
  %70 = mul i32 %69, 3
  %add.i128 = add i32 %70, 85
  %shr.i = ashr i32 %add.i128, 1
  %xor.i129 = xor i32 %add.i128, %shr.i
  %mul1.i = shl nsw i32 %xor.i129, 2
  %add2.i = add nsw i32 %mul1.i, 47
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 48
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i130 = add nsw i32 %mul9.i, 49
  %shr11.i = ashr i32 %add10.i130, 1
  %xor12.i = xor i32 %add10.i130, %shr11.i
  %mul13.i131 = mul nsw i32 %xor12.i, 7
  %add14.i132 = add nsw i32 %mul13.i131, 50
  %shr15.i = ashr i32 %add14.i132, 2
  %xor16.i = xor i32 %add14.i132, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 51
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 52
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 53
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %71 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %71, %xor28.i
  store i32 %add32, ptr %total, align 4
  %call33 = call noundef i32 @_ZL19image_029_recursivei(i32 noundef 2)
  %add34 = add nsw i32 %add32, %call33
  store i32 %add34, ptr %total, align 4
  %72 = load i32, ptr %x.addr, align 4
  %add35 = add nsw i32 %72, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i133)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i135)
  store i32 0, ptr %mode.addr.i133, align 4
  store i32 %add35, ptr %out.i135, align 4
  %73 = load i32, ptr %mode.addr.i133, align 4
  %and1.i140 = and i32 %73, 2
  %tobool2.i141.not = icmp eq i32 %and1.i140, 0
  br i1 %tobool2.i141.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_15.exit, label %if.then3.i144

if.then3.i144:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_11.exit
  %74 = load i32, ptr %out.i135, align 4
  %xor.i143 = xor i32 %74, 13
  store i32 %xor.i143, ptr %out.i135, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_15.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_029_11.exit, %if.then3.i144
  %75 = load i32, ptr %out.i135, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i133)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i135)
  %76 = load i32, ptr %total, align 4
  %xor37 = xor i32 %76, %75
  store i32 %xor37, ptr %total, align 4
  ret i32 %xor37
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_029_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_029_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_029_recursivei(i32 noundef %sub1)
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
