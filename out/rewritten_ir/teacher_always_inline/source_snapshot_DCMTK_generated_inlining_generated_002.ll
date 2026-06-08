; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_002.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_002.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_002_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i132 = alloca i32, align 4
  %t.i134 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %x.addr.i113 = alloca i32, align 4
  %s.i114 = alloca i32, align 4
  %i.i115 = alloca i32, align 4
  %x.addr.i73 = alloca i32, align 4
  %s.i74 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr.i61 = alloca i32, align 4
  %y.i62 = alloca i32, align 4
  %y.i52 = alloca i32, align 4
  %x.addr.i41 = alloca i32, align 4
  %y.i42 = alloca i32, align 4
  %y.i32 = alloca i32, align 4
  %x.addr.i21 = alloca i32, align 4
  %y.i22 = alloca i32, align 4
  %y.i12 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %y.i2 = alloca i32, align 4
  %y.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  store i32 5, ptr %y.i, align 4
  %0 = load i32, ptr %y.i, align 4
  %sub.i = add nsw i32 %0, -2
  store i32 %sub.i, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  %1 = load i32, ptr %total, align 4
  %add = add nsw i32 %1, %sub.i
  store i32 %add, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %2, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i2)
  store i32 %add1, ptr %x.addr.i1, align 4
  %add.i3 = add nsw i32 %2, 7
  store i32 %add.i3, ptr %y.i2, align 4
  %and.i4 = and i32 %add1, 1
  %tobool.i5.not = icmp eq i32 %and.i4, 0
  br i1 %tobool.i5.not, label %if.else.i10, label %if.then.i8

if.then.i8:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr.i1, align 4
  %shr.i6 = ashr i32 %3, 1
  %4 = load i32, ptr %y.i2, align 4
  %add1.i7 = add nsw i32 %4, %shr.i6
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit

if.else.i10:                                      ; preds = %entry
  %5 = load i32, ptr %y.i2, align 4
  %sub.i9 = add nsw i32 %5, -3
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit: ; preds = %if.then.i8, %if.else.i10
  %storemerge143 = phi i32 [ %sub.i9, %if.else.i10 ], [ %add1.i7, %if.then.i8 ]
  store i32 %storemerge143, ptr %y.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i2)
  %6 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %6, %storemerge143
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i12)
  store i32 9, ptr %y.i12, align 4
  %7 = load i32, ptr %y.i12, align 4
  %sub.i19 = add nsw i32 %7, -4
  store i32 %sub.i19, ptr %y.i12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i12)
  %8 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %8, %sub.i19
  store i32 %add5, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %9, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i22)
  store i32 %add6, ptr %x.addr.i21, align 4
  %add.i23 = add nsw i32 %9, 11
  store i32 %add.i23, ptr %y.i22, align 4
  %and.i24 = and i32 %add6, 1
  %tobool.i25.not = icmp eq i32 %and.i24, 0
  br i1 %tobool.i25.not, label %if.else.i30, label %if.then.i28

if.then.i28:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit
  %10 = load i32, ptr %x.addr.i21, align 4
  %shr.i26 = ashr i32 %10, 1
  %11 = load i32, ptr %y.i22, align 4
  %add1.i27 = add nsw i32 %11, %shr.i26
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit

if.else.i30:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_1.exit
  %12 = load i32, ptr %y.i22, align 4
  %sub.i29 = add nsw i32 %12, -5
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit: ; preds = %if.then.i28, %if.else.i30
  %storemerge145 = phi i32 [ %sub.i29, %if.else.i30 ], [ %add1.i27, %if.then.i28 ]
  store i32 %storemerge145, ptr %y.i22, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i22)
  %13 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %13, %storemerge145
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i32)
  store i32 13, ptr %y.i32, align 4
  %14 = load i32, ptr %y.i32, align 4
  %sub.i39 = add nsw i32 %14, -6
  store i32 %sub.i39, ptr %y.i32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i32)
  %15 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %15, %sub.i39
  store i32 %add10, ptr %total, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %16, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i42)
  store i32 %add11, ptr %x.addr.i41, align 4
  %add.i43 = add nsw i32 %16, 15
  store i32 %add.i43, ptr %y.i42, align 4
  %and.i44 = and i32 %add11, 1
  %tobool.i45.not = icmp eq i32 %and.i44, 0
  br i1 %tobool.i45.not, label %if.else.i50, label %if.then.i48

if.then.i48:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit
  %17 = load i32, ptr %x.addr.i41, align 4
  %shr.i46 = ashr i32 %17, 1
  %18 = load i32, ptr %y.i42, align 4
  %add1.i47 = add nsw i32 %18, %shr.i46
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit

if.else.i50:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_3.exit
  %19 = load i32, ptr %y.i42, align 4
  %sub.i49 = add nsw i32 %19, -7
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit: ; preds = %if.then.i48, %if.else.i50
  %storemerge147 = phi i32 [ %sub.i49, %if.else.i50 ], [ %add1.i47, %if.then.i48 ]
  store i32 %storemerge147, ptr %y.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i41)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i42)
  %20 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %20, %storemerge147
  store i32 %add13, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i52)
  store i32 17, ptr %y.i52, align 4
  %21 = load i32, ptr %y.i52, align 4
  %sub.i59 = add nsw i32 %21, -8
  store i32 %sub.i59, ptr %y.i52, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i52)
  %22 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %22, %sub.i59
  store i32 %add15, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %23, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i61)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i62)
  store i32 %add16, ptr %x.addr.i61, align 4
  %add.i63 = add nsw i32 %23, 19
  store i32 %add.i63, ptr %y.i62, align 4
  %and.i64 = and i32 %add16, 1
  %tobool.i65.not = icmp eq i32 %and.i64, 0
  br i1 %tobool.i65.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_7.exit, label %if.then.i68

if.then.i68:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit
  %24 = load i32, ptr %x.addr.i61, align 4
  %shr.i66 = ashr i32 %24, 1
  %25 = load i32, ptr %y.i62, align 4
  %add1.i67 = add nsw i32 %25, %shr.i66
  store i32 %add1.i67, ptr %y.i62, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_7.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_7.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_5.exit, %if.then.i68
  %26 = load i32, ptr %y.i62, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i61)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i62)
  %27 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %27, %26
  %add20 = add nsw i32 %add18, 6672418
  store i32 %add20, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %28, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i73)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i74)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add21, ptr %x.addr.i73, align 4
  store i32 %add21, ptr %s.i74, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_7.exit
  %storemerge149 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_7.exit ], [ %inc.i, %for.body.i ]
  store i32 %storemerge149, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge149, 8
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_9.exit

for.body.i:                                       ; preds = %for.cond.i
  %29 = load i32, ptr %x.addr.i73, align 4
  %30 = load i32, ptr %i.i, align 4
  %xor.i75 = xor i32 %29, %30
  %add.i76 = add nsw i32 %xor.i75, 6
  %31 = load i32, ptr %s.i74, align 4
  %add1.i77 = add nsw i32 %31, %add.i76
  %shl.i = shl i32 %add1.i77, 1
  %shr.i78 = ashr i32 %add1.i77, 3
  %xor2.i = xor i32 %shl.i, %shr.i78
  store i32 %xor2.i, ptr %s.i74, align 4
  %32 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %32, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_9.exit: ; preds = %for.cond.i
  %33 = load i32, ptr %s.i74, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i73)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i74)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %34 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %34, %33
  %add25 = add nsw i32 %add23, 2584579
  store i32 %add25, ptr %total, align 4
  %35 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %35, 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i114)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i115)
  store i32 %add26, ptr %x.addr.i113, align 4
  store i32 %add26, ptr %s.i114, align 4
  br label %for.cond.i117

for.cond.i117:                                    ; preds = %for.body.i124, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_9.exit
  %storemerge150 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_9.exit ], [ %inc.i125, %for.body.i124 ]
  store i32 %storemerge150, ptr %i.i115, align 4
  %cmp.i116 = icmp slt i32 %storemerge150, 8
  br i1 %cmp.i116, label %for.body.i124, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_11.exit

for.body.i124:                                    ; preds = %for.cond.i117
  %36 = load i32, ptr %x.addr.i113, align 4
  %37 = load i32, ptr %i.i115, align 4
  %xor.i118 = xor i32 %36, %37
  %add.i119 = add nsw i32 %xor.i118, 6
  %38 = load i32, ptr %s.i114, align 4
  %add1.i120 = add nsw i32 %38, %add.i119
  %shl.i121 = shl i32 %add1.i120, 1
  %shr.i122 = ashr i32 %add1.i120, 3
  %xor2.i123 = xor i32 %shl.i121, %shr.i122
  store i32 %xor2.i123, ptr %s.i114, align 4
  %39 = load i32, ptr %i.i115, align 4
  %inc.i125 = add nsw i32 %39, 1
  br label %for.cond.i117, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_002_11.exit: ; preds = %for.cond.i117
  %40 = load i32, ptr %s.i114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i113)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i114)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i115)
  %41 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %41, %40
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 7, ptr %t.i, align 4
  %42 = load i32, ptr %t.i, align 4
  %43 = load i32, ptr %mode.addr.i, align 4
  %add1.i129 = add nsw i32 %43, 1
  %mul.i130 = mul nsw i32 %42, %add1.i129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %44 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %44, %mul.i130
  store i32 %add30, ptr %total, align 4
  %45 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i132)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i134)
  store i32 1, ptr %mode.addr.i132, align 4
  %add.i135 = add nsw i32 %45, 15
  store i32 %add.i135, ptr %t.i134, align 4
  %46 = load i32, ptr %t.i134, align 4
  %47 = load i32, ptr %mode.addr.i132, align 4
  %add1.i137 = add nsw i32 %47, 1
  %mul.i138 = mul nsw i32 %46, %add1.i137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i132)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i134)
  %48 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %48, %mul.i138
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL20packet_002_recursivei(i32 noundef 2)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20packet_002_recursivei(i32 noundef 3)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  ret i32 %add37
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_002_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_002_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
