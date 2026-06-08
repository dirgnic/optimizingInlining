; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_045.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_045.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_045_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i132 = alloca i32, align 4
  %out.i134 = alloca i32, align 4
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
  store i32 1, ptr %mode.addr.i, align 4
  store i32 6, ptr %out.i, align 4
  %0 = load i32, ptr %out.i, align 4
  %add.i = add nsw i32 %0, 6
  store i32 %add.i, ptr %out.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %1, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %2 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %2, 10
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit: ; preds = %entry, %if.then3.i
  %3 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %4 = load i32, ptr %total, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and = and i32 %5, 3
  %and1 = and i32 %5, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i2)
  store i32 %and, ptr %mode.addr.i1, align 4
  store i32 %and1, ptr %x.addr.i2, align 4
  %cmp.i = icmp eq i32 %and, 0
  br i1 %cmp.i, label %if.then.i4, label %if.end.i5

if.then.i4:                                       ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit
  %6 = load i32, ptr %x.addr.i2, align 4
  %add.i3 = add nsw i32 %6, 2
  store i32 %add.i3, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit

if.end.i5:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_0.exit
  %7 = load i32, ptr %mode.addr.i1, align 4
  %cmp1.i = icmp eq i32 %7, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i5
  %8 = load i32, ptr %x.addr.i2, align 4
  %mul.i = shl nsw i32 %8, 2
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit

if.end3.i:                                        ; preds = %if.end.i5
  %9 = load i32, ptr %mode.addr.i1, align 4
  %cmp4.i = icmp eq i32 %9, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %10 = load i32, ptr %x.addr.i2, align 4
  %sub.i = add nsw i32 %10, -4
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit

if.end6.i:                                        ; preds = %if.end3.i
  %11 = load i32, ptr %x.addr.i2, align 4
  %12 = load i32, ptr %mode.addr.i1, align 4
  %add7.i = add nsw i32 %11, %12
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit: ; preds = %if.then.i4, %if.then2.i, %if.then5.i, %if.end6.i
  %13 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i2)
  %14 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %14, %13
  store i32 %add3, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %15, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit
  %16 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %16, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i8)
  store i32 %and6, ptr %x.addr.i8, align 4
  %17 = load i32, ptr %x.addr.i8, align 4
  %sub.i13 = add nsw i32 %17, -6
  store i32 %sub.i13, ptr %retval.i6, align 4
  %18 = load i32, ptr %retval.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i8)
  %19 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %19, %18
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_1.exit
  %20 = load i32, ptr %x.addr, align 4
  %and9 = and i32 %20, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i16)
  store i32 %and9, ptr %mode.addr.i14, align 4
  store i32 9, ptr %out.i16, align 4
  %and.i17 = and i32 %20, 1
  %tobool.i18.not = icmp eq i32 %and.i17, 0
  br i1 %tobool.i18.not, label %if.end.i23, label %if.then.i20

if.then.i20:                                      ; preds = %if.end
  %21 = load i32, ptr %out.i16, align 4
  %add.i19 = add nsw i32 %21, 1
  store i32 %add.i19, ptr %out.i16, align 4
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.then.i20, %if.end
  %22 = load i32, ptr %mode.addr.i14, align 4
  %and1.i21 = and i32 %22, 2
  %tobool2.i22.not = icmp eq i32 %and1.i21, 0
  br i1 %tobool2.i22.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_3.exit, label %if.then3.i25

if.then3.i25:                                     ; preds = %if.end.i23
  %23 = load i32, ptr %out.i16, align 4
  %xor.i24 = xor i32 %23, 13
  store i32 %xor.i24, ptr %out.i16, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_3.exit: ; preds = %if.end.i23, %if.then3.i25
  %24 = load i32, ptr %out.i16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i16)
  %25 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %25, %24
  store i32 %add11, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %26, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i26, align 4
  %add.i28 = add nuw nsw i32 %and12, 4
  store i32 %add.i28, ptr %t.i, align 4
  %27 = load i32, ptr %t.i, align 4
  %28 = load i32, ptr %mode.addr.i26, align 4
  %add1.i = add nsw i32 %28, 1
  %mul.i30 = mul nsw i32 %27, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %29 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %29, %mul.i30
  store i32 %add14, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %31 = and i32 %30, 1
  %tobool17.not.not = icmp eq i32 %31, 0
  br i1 %tobool17.not.not, label %if.then18, label %if.end23

if.then18:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_3.exit
  %32 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %32, 3
  %and20 = and i32 %32, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i34)
  store i32 %and19, ptr %mode.addr.i32, align 4
  store i32 %and20, ptr %out.i34, align 4
  %and.i35 = and i32 %32, 1
  %tobool.i36.not = icmp eq i32 %and.i35, 0
  br i1 %tobool.i36.not, label %if.end.i41, label %if.then.i38

if.then.i38:                                      ; preds = %if.then18
  %33 = load i32, ptr %out.i34, align 4
  %add.i37 = add nsw i32 %33, 6
  store i32 %add.i37, ptr %out.i34, align 4
  br label %if.end.i41

if.end.i41:                                       ; preds = %if.then.i38, %if.then18
  %34 = load i32, ptr %mode.addr.i32, align 4
  %and1.i39 = and i32 %34, 2
  %tobool2.i40.not = icmp eq i32 %and1.i39, 0
  br i1 %tobool2.i40.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit, label %if.then3.i43

if.then3.i43:                                     ; preds = %if.end.i41
  %35 = load i32, ptr %out.i34, align 4
  %xor.i42 = xor i32 %35, 10
  store i32 %xor.i42, ptr %out.i34, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit: ; preds = %if.end.i41, %if.then3.i43
  %36 = load i32, ptr %out.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i34)
  %37 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %37, %36
  store i32 %add22, ptr %total, align 4
  br label %if.end23

if.end23:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_5.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_3.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i46)
  store i32 12, ptr %x.addr.i46, align 4
  %38 = load i32, ptr %x.addr.i46, align 4
  %sub.i54 = add nsw i32 %38, -3
  store i32 %sub.i54, ptr %retval.i44, align 4
  %39 = load i32, ptr %retval.i44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i46)
  %40 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %40, %39
  store i32 %add25, ptr %total, align 4
  %41 = load i32, ptr %x.addr, align 4
  %and26 = and i32 %41, 3
  %and27 = and i32 %41, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i58)
  store i32 %and26, ptr %mode.addr.i56, align 4
  store i32 %and27, ptr %out.i58, align 4
  %and.i59 = and i32 %41, 1
  %tobool.i60.not = icmp eq i32 %and.i59, 0
  br i1 %tobool.i60.not, label %if.end.i65, label %if.then.i62

if.then.i62:                                      ; preds = %if.end23
  %42 = load i32, ptr %out.i58, align 4
  %add.i61 = add nsw i32 %42, 5
  store i32 %add.i61, ptr %out.i58, align 4
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.then.i62, %if.end23
  %43 = load i32, ptr %mode.addr.i56, align 4
  %and1.i63 = and i32 %43, 2
  %tobool2.i64.not = icmp eq i32 %and1.i63, 0
  br i1 %tobool2.i64.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_7.exit, label %if.then3.i67

if.then3.i67:                                     ; preds = %if.end.i65
  %44 = load i32, ptr %out.i58, align 4
  %xor.i66 = xor i32 %44, 17
  store i32 %xor.i66, ptr %out.i58, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_7.exit: ; preds = %if.end.i65, %if.then3.i67
  %45 = load i32, ptr %out.i58, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i56)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i58)
  %46 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %46, %45
  store i32 %add29, ptr %total, align 4
  %47 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %47, 1
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_7.exit
  %48 = load i32, ptr %x.addr, align 4
  %and34 = and i32 %48, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i70)
  store i32 1, ptr %mode.addr.i68, align 4
  store i32 %and34, ptr %out.i70, align 4
  %49 = load i32, ptr %out.i70, align 4
  %add.i73 = add nsw i32 %49, 6
  store i32 %add.i73, ptr %out.i70, align 4
  %50 = load i32, ptr %mode.addr.i68, align 4
  %and1.i75 = and i32 %50, 2
  %tobool2.i76.not = icmp eq i32 %and1.i75, 0
  br i1 %tobool2.i76.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_8.exit, label %if.then3.i79

if.then3.i79:                                     ; preds = %if.then33
  %51 = load i32, ptr %out.i70, align 4
  %xor.i78 = xor i32 %51, 10
  store i32 %xor.i78, ptr %out.i70, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_8.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_8.exit: ; preds = %if.then33, %if.then3.i79
  %52 = load i32, ptr %out.i70, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i68)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i70)
  %53 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %53, %52
  store i32 %add36, ptr %total, align 4
  br label %if.end37

if.end37:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_8.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_7.exit
  %54 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %54, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i82)
  store i32 %and38, ptr %mode.addr.i80, align 4
  store i32 2, ptr %out.i82, align 4
  %and.i83 = and i32 %54, 1
  %tobool.i84.not = icmp eq i32 %and.i83, 0
  br i1 %tobool.i84.not, label %if.end.i89, label %if.then.i86

if.then.i86:                                      ; preds = %if.end37
  %55 = load i32, ptr %out.i82, align 4
  %add.i85 = add nsw i32 %55, 6
  store i32 %add.i85, ptr %out.i82, align 4
  br label %if.end.i89

if.end.i89:                                       ; preds = %if.then.i86, %if.end37
  %56 = load i32, ptr %mode.addr.i80, align 4
  %and1.i87 = and i32 %56, 2
  %tobool2.i88.not = icmp eq i32 %and1.i87, 0
  br i1 %tobool2.i88.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_9.exit, label %if.then3.i91

if.then3.i91:                                     ; preds = %if.end.i89
  %57 = load i32, ptr %out.i82, align 4
  %xor.i90 = xor i32 %57, 10
  store i32 %xor.i90, ptr %out.i82, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_9.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_9.exit: ; preds = %if.end.i89, %if.then3.i91
  %58 = load i32, ptr %out.i82, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i82)
  %59 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %59, %58
  store i32 %add40, ptr %total, align 4
  %60 = load i32, ptr %x.addr, align 4
  %and41 = and i32 %60, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i94)
  store i32 3, ptr %mode.addr.i92, align 4
  store i32 %and41, ptr %out.i94, align 4
  %61 = load i32, ptr %out.i94, align 4
  %add.i97 = add nsw i32 %61, 6
  store i32 %add.i97, ptr %out.i94, align 4
  %62 = load i32, ptr %mode.addr.i92, align 4
  %and1.i99 = and i32 %62, 2
  %tobool2.i100.not = icmp eq i32 %and1.i99, 0
  br i1 %tobool2.i100.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_10.exit, label %if.then3.i103

if.then3.i103:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_9.exit
  %63 = load i32, ptr %out.i94, align 4
  %xor.i102 = xor i32 %63, 10
  store i32 %xor.i102, ptr %out.i94, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_9.exit, %if.then3.i103
  %64 = load i32, ptr %out.i94, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i94)
  %65 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %65, %64
  store i32 %add43, ptr %total, align 4
  %66 = load i32, ptr %x.addr, align 4
  %67 = and i32 %66, 1
  %tobool46.not.not = icmp eq i32 %67, 0
  br i1 %tobool46.not.not, label %if.then47, label %if.end52

if.then47:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_10.exit
  %68 = load i32, ptr %x.addr, align 4
  %and48 = and i32 %68, 3
  %and49 = and i32 %68, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i106)
  store i32 %and48, ptr %mode.addr.i104, align 4
  store i32 %and49, ptr %out.i106, align 4
  %and.i107 = and i32 %68, 1
  %tobool.i108.not = icmp eq i32 %and.i107, 0
  br i1 %tobool.i108.not, label %if.end.i113, label %if.then.i110

if.then.i110:                                     ; preds = %if.then47
  %69 = load i32, ptr %out.i106, align 4
  %add.i109 = add nsw i32 %69, 6
  store i32 %add.i109, ptr %out.i106, align 4
  br label %if.end.i113

if.end.i113:                                      ; preds = %if.then.i110, %if.then47
  %70 = load i32, ptr %mode.addr.i104, align 4
  %and1.i111 = and i32 %70, 2
  %tobool2.i112.not = icmp eq i32 %and1.i111, 0
  br i1 %tobool2.i112.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_11.exit, label %if.then3.i115

if.then3.i115:                                    ; preds = %if.end.i113
  %71 = load i32, ptr %out.i106, align 4
  %xor.i114 = xor i32 %71, 10
  store i32 %xor.i114, ptr %out.i106, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_11.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_11.exit: ; preds = %if.end.i113, %if.then3.i115
  %72 = load i32, ptr %out.i106, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i104)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i106)
  %73 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %73, %72
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_11.exit, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_10.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i116)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 5, ptr %x.addr.i116, align 4
  store i32 7, ptr %s.i, align 4
  %74 = load i32, ptr %s.i, align 4
  %add1.i122 = add nsw i32 %74, 1
  store i32 %add1.i122, ptr %s.i, align 4
  %75 = load i32, ptr %x.addr.i116, align 4
  %and2.i = and i32 %75, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 3
  %add4.i = add nsw i32 %add1.i122, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %76 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %76, 3
  %77 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %77, -1
  %storemerge144 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge144, ptr %s.i, align 4
  %78 = load i32, ptr %x.addr.i116, align 4
  %and12.i = shl i32 %78, 2
  %mul13.i = and i32 %and12.i, 20
  %add14.i = add nsw i32 %storemerge144, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %79 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %79, 0
  %80 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %80, 5
  %81 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %81, -2
  %storemerge145 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge145, ptr %s.i, align 4
  %82 = load i32, ptr %x.addr.i116, align 4
  %and22.i = and i32 %82, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 5
  %add24.i = add nsw i32 %storemerge145, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %83 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %83, 7
  %84 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %84, -3
  %storemerge146 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge146, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %85 = load i32, ptr %total, align 4
  %add54 = add nsw i32 %85, %storemerge146
  store i32 %add54, ptr %total, align 4
  %86 = load i32, ptr %x.addr, align 4
  %and55 = and i32 %86, 7
  %mul.i126 = mul nuw nsw i32 %and55, 3
  %add.i127 = add nuw nsw i32 %mul.i126, 62
  %87 = lshr i32 %add.i127, 1
  %xor.i128 = xor i32 %add.i127, %87
  %mul1.i = shl nuw nsw i32 %xor.i128, 2
  %add2.i = add nuw nsw i32 %mul1.i, 63
  %shr3.i = lshr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 64
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i129 = add nsw i32 %mul9.i, 65
  %shr11.i = ashr i32 %add10.i129, 1
  %xor12.i = xor i32 %add10.i129, %shr11.i
  %mul13.i130 = mul nsw i32 %xor12.i, 7
  %add14.i131 = add nsw i32 %mul13.i130, 66
  %shr15.i = ashr i32 %add14.i131, 2
  %xor16.i = xor i32 %add14.i131, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 67
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 68
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 69
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %88 = load i32, ptr %total, align 4
  %add57 = add nsw i32 %88, %xor28.i
  store i32 %add57, ptr %total, align 4
  %89 = load i32, ptr %x.addr, align 4
  %and59 = and i32 %89, 1
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.end52
  %call62 = call noundef i32 @_ZL19image_045_recursivei(i32 noundef 2)
  %90 = load i32, ptr %total, align 4
  %add63 = add nsw i32 %90, %call62
  store i32 %add63, ptr %total, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end52
  %91 = load i32, ptr %x.addr, align 4
  %and65 = and i32 %91, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i132)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i134)
  store i32 %and65, ptr %mode.addr.i132, align 4
  store i32 8, ptr %out.i134, align 4
  %and.i135 = and i32 %91, 1
  %tobool.i136.not = icmp eq i32 %and.i135, 0
  br i1 %tobool.i136.not, label %if.end.i141, label %if.then.i138

if.then.i138:                                     ; preds = %if.end64
  %92 = load i32, ptr %out.i134, align 4
  %add.i137 = add nsw i32 %92, 6
  store i32 %add.i137, ptr %out.i134, align 4
  br label %if.end.i141

if.end.i141:                                      ; preds = %if.then.i138, %if.end64
  %93 = load i32, ptr %mode.addr.i132, align 4
  %and1.i139 = and i32 %93, 2
  %tobool2.i140.not = icmp eq i32 %and1.i139, 0
  br i1 %tobool2.i140.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_15.exit, label %if.then3.i143

if.then3.i143:                                    ; preds = %if.end.i141
  %94 = load i32, ptr %out.i134, align 4
  %xor.i142 = xor i32 %94, 10
  store i32 %xor.i142, ptr %out.i134, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_045_15.exit: ; preds = %if.end.i141, %if.then3.i143
  %95 = load i32, ptr %out.i134, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i132)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i134)
  %96 = load i32, ptr %total, align 4
  %add67 = add nsw i32 %96, %95
  store i32 %add67, ptr %total, align 4
  ret i32 %add67
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_045_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_045_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_045_recursivei(i32 noundef %sub1)
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
