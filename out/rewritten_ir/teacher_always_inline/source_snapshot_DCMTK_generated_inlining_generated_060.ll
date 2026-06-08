; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_060.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_060.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_060_kernel(i32 noundef %x) #0 {
entry:
  %mode.addr.i107 = alloca i32, align 4
  %out.i109 = alloca i32, align 4
  %mode.addr.i95 = alloca i32, align 4
  %out.i97 = alloca i32, align 4
  %mode.addr.i83 = alloca i32, align 4
  %out.i85 = alloca i32, align 4
  %mode.addr.i37 = alloca i32, align 4
  %out.i39 = alloca i32, align 4
  %x.addr.i24 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %mode.addr.i8 = alloca i32, align 4
  %out.i10 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 8, ptr %out.i, align 4
  %0 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %0, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_0.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %1 = load i32, ptr %out.i, align 4
  %xor.i = xor i32 %1, 6
  store i32 %xor.i, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_0.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_0.exit: ; preds = %entry, %if.then3.i
  %2 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %3 = load i32, ptr %total, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and = and i32 %4, 7
  %sub.i = add nsw i32 %and, -7
  %add2 = add nsw i32 %add, %sub.i
  %sub.i3 = or i32 %4, -8
  %add5 = add nsw i32 %add2, %sub.i3
  %add7 = add nsw i32 %add5, 2
  store i32 %add7, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %5, 7
  %sub.i7 = add nuw nsw i32 %and8, 246
  %add11 = add nsw i32 %add7, %sub.i7
  store i32 %add11, ptr %total, align 4
  %and12 = and i32 %5, 3
  %and13 = and i32 %5, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i10)
  store i32 %and12, ptr %mode.addr.i8, align 4
  store i32 %and13, ptr %out.i10, align 4
  %and.i11 = and i32 %5, 1
  %tobool.i12.not = icmp eq i32 %and.i11, 0
  br i1 %tobool.i12.not, label %if.end.i17, label %if.then.i14

if.then.i14:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_0.exit
  %6 = load i32, ptr %out.i10, align 4
  %add.i13 = add nsw i32 %6, 5
  store i32 %add.i13, ptr %out.i10, align 4
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.then.i14, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_0.exit
  %7 = load i32, ptr %mode.addr.i8, align 4
  %and1.i15 = and i32 %7, 2
  %tobool2.i16.not = icmp eq i32 %and1.i15, 0
  br i1 %tobool2.i16.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_5.exit, label %if.then3.i19

if.then3.i19:                                     ; preds = %if.end.i17
  %8 = load i32, ptr %out.i10, align 4
  %xor.i18 = xor i32 %8, 6
  store i32 %xor.i18, ptr %out.i10, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_5.exit: ; preds = %if.end.i17, %if.then3.i19
  %9 = load i32, ptr %out.i10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i10)
  %10 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %10, %9
  store i32 %add15, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %and18 = and i32 %11, 7
  %sub.i23 = add nsw i32 %and18, -2
  %add20 = add nsw i32 %add15, %sub.i23
  store i32 %add20, ptr %total, align 4
  %and21 = and i32 %11, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %and21, ptr %x.addr.i24, align 4
  %and.i25 = and i32 %11, 3
  %mul.i = mul nuw nsw i32 %and.i25, 6
  %add.i26 = add nuw nsw i32 %and21, %mul.i
  store i32 %add.i26, ptr %s.i, align 4
  %rem.i = and i32 %add.i26, 1
  %cmp.i = icmp eq i32 %rem.i, 0
  %12 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %12, 1
  %13 = load i32, ptr %s.i, align 4
  %storemerge = select i1 %cmp.i, i32 %13, i32 %add1.i
  store i32 %storemerge, ptr %s.i, align 4
  %14 = load i32, ptr %x.addr.i24, align 4
  %and2.i = and i32 %14, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 7
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %15 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %15, 3
  %16 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %16, -1
  %storemerge119 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge119, ptr %s.i, align 4
  %17 = load i32, ptr %x.addr.i24, align 4
  %and12.i = shl i32 %17, 3
  %mul13.i = and i32 %and12.i, 40
  %add14.i = add nsw i32 %storemerge119, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %18 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %18, 0
  %19 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %19, 5
  %20 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %20, -2
  %storemerge120 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge120, ptr %s.i, align 4
  %21 = load i32, ptr %x.addr.i24, align 4
  %and22.i = and i32 %21, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 9
  %add24.i = add nsw i32 %storemerge120, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %22 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %22, 7
  %23 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %23, -3
  %storemerge121 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge121, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %24 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %24, %storemerge121
  %add26 = add nsw i32 %add23, 7
  store i32 %add26, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %25, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i37)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i39)
  store i32 2, ptr %mode.addr.i37, align 4
  store i32 %and27, ptr %out.i39, align 4
  %26 = load i32, ptr %mode.addr.i37, align 4
  %and1.i44 = and i32 %26, 2
  %tobool2.i45.not = icmp eq i32 %and1.i44, 0
  br i1 %tobool2.i45.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_10.exit, label %if.then3.i48

if.then3.i48:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_5.exit
  %27 = load i32, ptr %out.i39, align 4
  %xor.i47 = xor i32 %27, 6
  store i32 %xor.i47, ptr %out.i39, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_10.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_5.exit, %if.then3.i48
  %28 = load i32, ptr %out.i39, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i37)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i39)
  %29 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %29, %28
  store i32 %add29, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %and30 = and i32 %30, 7
  %mul.i51 = mul nuw nsw i32 %and30, 3
  %add.i52 = add nuw nsw i32 %mul.i51, 77
  %31 = lshr i32 %add.i52, 1
  %xor.i54 = xor i32 %add.i52, %31
  %mul1.i55 = shl nuw nsw i32 %xor.i54, 2
  %add2.i56 = add nuw nsw i32 %mul1.i55, 78
  %shr3.i57 = lshr i32 %add2.i56, 2
  %xor4.i58 = xor i32 %add2.i56, %shr3.i57
  %mul5.i59 = mul nsw i32 %xor4.i58, 5
  %add6.i60 = add nsw i32 %mul5.i59, 79
  %shr7.i61 = ashr i32 %add6.i60, 3
  %xor8.i62 = xor i32 %add6.i60, %shr7.i61
  %mul9.i63 = mul nsw i32 %xor8.i62, 6
  %add10.i64 = add nsw i32 %mul9.i63, 80
  %shr11.i65 = ashr exact i32 %add10.i64, 1
  %xor12.i66 = xor i32 %add10.i64, %shr11.i65
  %mul13.i67 = mul nsw i32 %xor12.i66, 7
  %add14.i68 = add nsw i32 %mul13.i67, 81
  %shr15.i69 = ashr i32 %add14.i68, 2
  %xor16.i70 = xor i32 %add14.i68, %shr15.i69
  %mul17.i71 = shl nsw i32 %xor16.i70, 3
  %add18.i72 = add nsw i32 %mul17.i71, 82
  %shr19.i73 = ashr i32 %add18.i72, 3
  %xor20.i74 = xor i32 %add18.i72, %shr19.i73
  %mul21.i75 = mul nsw i32 %xor20.i74, 9
  %add22.i76 = add nsw i32 %mul21.i75, 83
  %shr23.i77 = ashr i32 %add22.i76, 1
  %xor24.i78 = xor i32 %add22.i76, %shr23.i77
  %mul25.i79 = mul nsw i32 %xor24.i78, 10
  %add26.i80 = add nsw i32 %mul25.i79, 84
  %shr27.i81 = ashr i32 %add26.i80, 2
  %xor28.i82 = xor i32 %add26.i80, %shr27.i81
  %32 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %32, %xor28.i82
  store i32 %add32, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i85)
  store i32 0, ptr %mode.addr.i83, align 4
  store i32 7, ptr %out.i85, align 4
  %33 = load i32, ptr %mode.addr.i83, align 4
  %and1.i90 = and i32 %33, 2
  %tobool2.i91.not = icmp eq i32 %and1.i90, 0
  br i1 %tobool2.i91.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_12.exit, label %if.then3.i94

if.then3.i94:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_10.exit
  %34 = load i32, ptr %out.i85, align 4
  %xor.i93 = xor i32 %34, 6
  store i32 %xor.i93, ptr %out.i85, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_12.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_10.exit, %if.then3.i94
  %35 = load i32, ptr %out.i85, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i85)
  %36 = load i32, ptr %total, align 4
  %add34 = add nsw i32 %36, %35
  store i32 %add34, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %and35 = and i32 %37, 3
  %and36 = and i32 %37, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i97)
  store i32 %and35, ptr %mode.addr.i95, align 4
  store i32 %and36, ptr %out.i97, align 4
  %and.i98 = and i32 %37, 1
  %tobool.i99.not = icmp eq i32 %and.i98, 0
  br i1 %tobool.i99.not, label %if.end.i104, label %if.then.i101

if.then.i101:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_12.exit
  %38 = load i32, ptr %out.i97, align 4
  %add.i100 = add nsw i32 %38, 5
  store i32 %add.i100, ptr %out.i97, align 4
  br label %if.end.i104

if.end.i104:                                      ; preds = %if.then.i101, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_12.exit
  %39 = load i32, ptr %mode.addr.i95, align 4
  %and1.i102 = and i32 %39, 2
  %tobool2.i103.not = icmp eq i32 %and1.i102, 0
  br i1 %tobool2.i103.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_13.exit, label %if.then3.i106

if.then3.i106:                                    ; preds = %if.end.i104
  %40 = load i32, ptr %out.i97, align 4
  %xor.i105 = xor i32 %40, 6
  store i32 %xor.i105, ptr %out.i97, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_13.exit: ; preds = %if.end.i104, %if.then3.i106
  %41 = load i32, ptr %out.i97, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i97)
  %42 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %42, %41
  store i32 %add38, ptr %total, align 4
  %call39 = call noundef i32 @_ZL18game_060_recursivei(i32 noundef 2)
  %and40 = and i32 %call39, 255
  %add41 = add nsw i32 %add38, %and40
  store i32 %add41, ptr %total, align 4
  %43 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %43, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i107)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i109)
  store i32 %and42, ptr %mode.addr.i107, align 4
  store i32 10, ptr %out.i109, align 4
  %and.i110 = and i32 %43, 1
  %tobool.i111.not = icmp eq i32 %and.i110, 0
  br i1 %tobool.i111.not, label %if.end.i116, label %if.then.i113

if.then.i113:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_13.exit
  %44 = load i32, ptr %out.i109, align 4
  %add.i112 = add nsw i32 %44, 5
  store i32 %add.i112, ptr %out.i109, align 4
  br label %if.end.i116

if.end.i116:                                      ; preds = %if.then.i113, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_13.exit
  %45 = load i32, ptr %mode.addr.i107, align 4
  %and1.i114 = and i32 %45, 2
  %tobool2.i115.not = icmp eq i32 %and1.i114, 0
  br i1 %tobool2.i115.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_15.exit, label %if.then3.i118

if.then3.i118:                                    ; preds = %if.end.i116
  %46 = load i32, ptr %out.i109, align 4
  %xor.i117 = xor i32 %46, 6
  store i32 %xor.i117, ptr %out.i109, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_15.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_060_15.exit: ; preds = %if.end.i116, %if.then3.i118
  %47 = load i32, ptr %out.i109, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i107)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i109)
  %48 = load i32, ptr %total, align 4
  %add44 = add nsw i32 %48, %47
  store i32 %add44, ptr %total, align 4
  ret i32 %add44
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_060_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_060_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL18game_060_recursivei(i32 noundef %sub1)
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
