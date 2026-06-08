; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_062.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_062.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_062_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i137 = alloca i32, align 4
  %t.i139 = alloca i32, align 4
  %mode.addr.i126 = alloca i32, align 4
  %t.i128 = alloca i32, align 4
  %mode.addr.i115 = alloca i32, align 4
  %t.i117 = alloca i32, align 4
  %x.addr.i102 = alloca i32, align 4
  %s.i103 = alloca i32, align 4
  %i.i104 = alloca i32, align 4
  %mode.addr.i91 = alloca i32, align 4
  %t.i93 = alloca i32, align 4
  %x.addr.i84 = alloca i32, align 4
  %s.i85 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %x.addr.i67 = alloca i32, align 4
  %y.i68 = alloca i32, align 4
  %x.addr.i54 = alloca i32, align 4
  %y.i55 = alloca i32, align 4
  %mode.addr.i43 = alloca i32, align 4
  %t.i45 = alloca i32, align 4
  %x.addr.i30 = alloca i32, align 4
  %y.i31 = alloca i32, align 4
  %x.addr.i17 = alloca i32, align 4
  %y.i18 = alloca i32, align 4
  %x.addr.i4 = alloca i32, align 4
  %y.i5 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %y.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 9, ptr %t.i, align 4
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i = mul nsw i32 %0, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %2 = load i32, ptr %total, align 4
  %add = add nsw i32 %2, %mul.i
  store i32 %add, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  store i32 8, ptr %x.addr.i1, align 4
  store i32 19, ptr %y.i, align 4
  %3 = load i32, ptr %x.addr.i1, align 4
  %and2.i = and i32 %3, 3
  %4 = load i32, ptr %y.i, align 4
  %add3.i = add nsw i32 %4, %and2.i
  store i32 %add3.i, ptr %y.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  %5 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %5, %add3.i
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i5)
  store i32 9, ptr %x.addr.i4, align 4
  store i32 21, ptr %y.i5, align 4
  %6 = load i32, ptr %x.addr.i4, align 4
  %shr.i9 = ashr i32 %6, 1
  %7 = load i32, ptr %y.i5, align 4
  %add1.i10 = add nsw i32 %7, %shr.i9
  store i32 %add1.i10, ptr %y.i5, align 4
  %8 = load i32, ptr %x.addr.i4, align 4
  %and2.i14 = shl i32 %8, 1
  %mul.i15 = and i32 %and2.i14, 6
  %add3.i16 = add nsw i32 %add1.i10, %mul.i15
  store i32 %add3.i16, ptr %y.i5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i5)
  %9 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %9, %add3.i16
  store i32 %add4, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i18)
  store i32 10, ptr %x.addr.i17, align 4
  store i32 23, ptr %y.i18, align 4
  %10 = load i32, ptr %y.i18, align 4
  %sub.i25 = add nsw i32 %10, -2
  store i32 %sub.i25, ptr %y.i18, align 4
  %11 = load i32, ptr %x.addr.i17, align 4
  %and2.i27 = and i32 %11, 3
  %mul.i28 = mul nuw nsw i32 %and2.i27, 3
  %add3.i29 = add nsw i32 %sub.i25, %mul.i28
  store i32 %add3.i29, ptr %y.i18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i18)
  %12 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %12, %add3.i29
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i31)
  store i32 0, ptr %x.addr.i30, align 4
  store i32 3, ptr %y.i31, align 4
  %13 = load i32, ptr %y.i31, align 4
  %sub.i38 = add nsw i32 %13, -3
  store i32 %sub.i38, ptr %y.i31, align 4
  %14 = load i32, ptr %x.addr.i30, align 4
  %and2.i40 = shl i32 %14, 2
  %mul.i41 = and i32 %and2.i40, 12
  %add3.i42 = add nsw i32 %sub.i38, %mul.i41
  store i32 %add3.i42, ptr %y.i31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i31)
  %15 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %15, %add3.i42
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i43)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i45)
  store i32 2, ptr %mode.addr.i43, align 4
  store i32 3, ptr %t.i45, align 4
  %16 = load i32, ptr %t.i45, align 4
  %17 = load i32, ptr %mode.addr.i43, align 4
  %sub.i51 = sub nsw i32 %16, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i43)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i45)
  %18 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %18, %sub.i51
  store i32 %add10, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i54)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i55)
  store i32 2, ptr %x.addr.i54, align 4
  store i32 7, ptr %y.i55, align 4
  %19 = load i32, ptr %y.i55, align 4
  %sub.i62 = add nsw i32 %19, -5
  store i32 %sub.i62, ptr %y.i55, align 4
  %20 = load i32, ptr %x.addr.i54, align 4
  %and2.i64 = and i32 %20, 3
  %mul.i65 = mul nuw nsw i32 %and2.i64, 6
  %add3.i66 = add nsw i32 %sub.i62, %mul.i65
  store i32 %add3.i66, ptr %y.i55, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i54)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i55)
  %21 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %21, %add3.i66
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i67)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i68)
  store i32 3, ptr %x.addr.i67, align 4
  store i32 9, ptr %y.i68, align 4
  %22 = load i32, ptr %x.addr.i67, align 4
  %shr.i72 = ashr i32 %22, 1
  %23 = load i32, ptr %y.i68, align 4
  %add1.i73 = add nsw i32 %23, %shr.i72
  store i32 %add1.i73, ptr %y.i68, align 4
  %24 = load i32, ptr %x.addr.i67, align 4
  %and2.i77 = and i32 %24, 3
  %mul.i78 = mul nuw nsw i32 %and2.i77, 7
  %add3.i79 = add nsw i32 %add1.i73, %mul.i78
  store i32 %add3.i79, ptr %y.i68, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i67)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i68)
  %25 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %25, %add3.i79
  %add16 = add nsw i32 %add14, 444730790
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i85)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 5, ptr %x.addr.i84, align 4
  store i32 5, ptr %s.i85, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge152 = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge152, ptr %i.i, align 4
  %cmp.i86 = icmp slt i32 %storemerge152, 10
  br i1 %cmp.i86, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_062_9.exit

for.body.i:                                       ; preds = %for.cond.i
  %26 = load i32, ptr %x.addr.i84, align 4
  %27 = load i32, ptr %i.i, align 4
  %xor.i87 = xor i32 %26, %27
  %add.i88 = add nsw i32 %xor.i87, 1
  %28 = load i32, ptr %s.i85, align 4
  %add1.i89 = add nsw i32 %28, %add.i88
  %shl.i = shl i32 %add1.i89, 1
  %shr.i90 = ashr i32 %add1.i89, 3
  %xor2.i = xor i32 %shl.i, %shr.i90
  store i32 %xor2.i, ptr %s.i85, align 4
  %29 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %29, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_062_9.exit: ; preds = %for.cond.i
  %30 = load i32, ptr %s.i85, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i84)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i85)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %31 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %31, %30
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i91)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i93)
  store i32 1, ptr %mode.addr.i91, align 4
  store i32 8, ptr %t.i93, align 4
  %32 = load i32, ptr %t.i93, align 4
  %33 = load i32, ptr %mode.addr.i91, align 4
  %add1.i96 = add nsw i32 %33, 1
  %mul.i97 = mul nsw i32 %32, %add1.i96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i91)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i93)
  %34 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %34, %mul.i97
  store i32 %add20, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i102)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i103)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i104)
  store i32 7, ptr %x.addr.i102, align 4
  store i32 7, ptr %s.i103, align 4
  br label %for.cond.i106

for.cond.i106:                                    ; preds = %for.body.i113, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_062_9.exit
  %storemerge153 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_062_9.exit ], [ %inc.i114, %for.body.i113 ]
  store i32 %storemerge153, ptr %i.i104, align 4
  %cmp.i105 = icmp slt i32 %storemerge153, 10
  br i1 %cmp.i105, label %for.body.i113, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_062_11.exit

for.body.i113:                                    ; preds = %for.cond.i106
  %35 = load i32, ptr %x.addr.i102, align 4
  %36 = load i32, ptr %i.i104, align 4
  %xor.i107 = xor i32 %35, %36
  %add.i108 = add nsw i32 %xor.i107, 1
  %37 = load i32, ptr %s.i103, align 4
  %add1.i109 = add nsw i32 %37, %add.i108
  %shl.i110 = shl i32 %add1.i109, 1
  %shr.i111 = ashr i32 %add1.i109, 3
  %xor2.i112 = xor i32 %shl.i110, %shr.i111
  store i32 %xor2.i112, ptr %s.i103, align 4
  %38 = load i32, ptr %i.i104, align 4
  %inc.i114 = add nsw i32 %38, 1
  br label %for.cond.i106, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_062_11.exit: ; preds = %for.cond.i106
  %39 = load i32, ptr %s.i103, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i102)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i103)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i104)
  %40 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %40, %39
  store i32 %add22, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i117)
  store i32 0, ptr %mode.addr.i115, align 4
  store i32 10, ptr %t.i117, align 4
  %41 = load i32, ptr %t.i117, align 4
  %42 = load i32, ptr %mode.addr.i115, align 4
  %add1.i120 = add nsw i32 %42, 1
  %mul.i121 = mul nsw i32 %41, %add1.i120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i117)
  %43 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %43, %mul.i121
  store i32 %add24, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i126)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i128)
  store i32 1, ptr %mode.addr.i126, align 4
  store i32 11, ptr %t.i128, align 4
  %44 = load i32, ptr %t.i128, align 4
  %45 = load i32, ptr %mode.addr.i126, align 4
  %add1.i131 = add nsw i32 %45, 1
  %mul.i132 = mul nsw i32 %44, %add1.i131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i126)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i128)
  %46 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %46, %mul.i132
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL20packet_062_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i137)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i139)
  store i32 0, ptr %mode.addr.i137, align 4
  store i32 2, ptr %t.i139, align 4
  %47 = load i32, ptr %t.i139, align 4
  %48 = load i32, ptr %mode.addr.i137, align 4
  %add1.i142 = add nsw i32 %48, 1
  %mul.i143 = mul nsw i32 %47, %add1.i142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i137)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i139)
  %49 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %49, %mul.i143
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_062_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_062_recursivei(i32 noundef %sub)
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
