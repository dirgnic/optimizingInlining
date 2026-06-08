; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_047.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_047.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_047_kernel(i32 noundef %x) #0 {
entry:
  %mode.addr.i160 = alloca i32, align 4
  %t.i162 = alloca i32, align 4
  %mode.addr.i149 = alloca i32, align 4
  %t.i151 = alloca i32, align 4
  %x.addr.i136 = alloca i32, align 4
  %s.i137 = alloca i32, align 4
  %i.i138 = alloca i32, align 4
  %mode.addr.i91 = alloca i32, align 4
  %t.i93 = alloca i32, align 4
  %x.addr.i78 = alloca i32, align 4
  %s.i79 = alloca i32, align 4
  %i.i80 = alloca i32, align 4
  %mode.addr.i33 = alloca i32, align 4
  %t.i35 = alloca i32, align 4
  %mode.addr.i22 = alloca i32, align 4
  %t.i24 = alloca i32, align 4
  %mode.addr.i5 = alloca i32, align 4
  %t.i7 = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 5, ptr %t.i, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 4, ptr %x.addr.i1, align 4
  store i32 4, ptr %s.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i2 = icmp slt i32 %storemerge, 8
  br i1 %cmp.i2, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_1.exit

for.body.i:                                       ; preds = %for.cond.i
  %3 = load i32, ptr %x.addr.i1, align 4
  %4 = load i32, ptr %i.i, align 4
  %xor.i = xor i32 %3, %4
  %add.i3 = add nsw i32 %xor.i, 12
  %5 = load i32, ptr %s.i, align 4
  %add1.i4 = add nsw i32 %5, %add.i3
  %shl.i = shl i32 %add1.i4, 1
  %shr.i = ashr i32 %add1.i4, 3
  %xor2.i = xor i32 %shl.i, %shr.i
  store i32 %xor2.i, ptr %s.i, align 4
  %6 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %6, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_1.exit: ; preds = %for.cond.i
  %7 = load i32, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %8 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %8, %7
  store i32 %add2, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i7)
  store i32 2, ptr %mode.addr.i5, align 4
  store i32 7, ptr %t.i7, align 4
  %9 = load i32, ptr %t.i7, align 4
  %10 = load i32, ptr %mode.addr.i5, align 4
  %sub.i13 = sub nsw i32 %9, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i7)
  %11 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %11, %sub.i13
  store i32 %add4, ptr %total, align 4
  %call5 = call noundef i32 @_ZL20matrix_047_recursivei(i32 noundef 3)
  %add6 = add nsw i32 %add4, %call5
  %add8 = add nsw i32 %add6, 246
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i24)
  store i32 2, ptr %mode.addr.i22, align 4
  store i32 10, ptr %t.i24, align 4
  %12 = load i32, ptr %t.i24, align 4
  %13 = load i32, ptr %mode.addr.i22, align 4
  %sub.i30 = sub nsw i32 %12, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i24)
  %14 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %14, %sub.i30
  store i32 %add10, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i35)
  store i32 0, ptr %mode.addr.i33, align 4
  store i32 11, ptr %t.i35, align 4
  %15 = load i32, ptr %t.i35, align 4
  %16 = load i32, ptr %mode.addr.i33, align 4
  %add1.i38 = add nsw i32 %16, 1
  %mul.i39 = mul nsw i32 %15, %add1.i38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i35)
  %17 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %17, %mul.i39
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @_ZL20matrix_047_recursivei(i32 noundef 3)
  %add14 = add nsw i32 %add12, %call13
  %add16 = add nsw i32 %add14, 89813340
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i78)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i79)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i80)
  store i32 1, ptr %x.addr.i78, align 4
  store i32 1, ptr %s.i79, align 4
  br label %for.cond.i82

for.cond.i82:                                     ; preds = %for.body.i89, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_1.exit
  %storemerge171 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_1.exit ], [ %inc.i90, %for.body.i89 ]
  store i32 %storemerge171, ptr %i.i80, align 4
  %cmp.i81 = icmp slt i32 %storemerge171, 8
  br i1 %cmp.i81, label %for.body.i89, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_9.exit

for.body.i89:                                     ; preds = %for.cond.i82
  %18 = load i32, ptr %x.addr.i78, align 4
  %19 = load i32, ptr %i.i80, align 4
  %xor.i83 = xor i32 %18, %19
  %add.i84 = add nsw i32 %xor.i83, 12
  %20 = load i32, ptr %s.i79, align 4
  %add1.i85 = add nsw i32 %20, %add.i84
  %shl.i86 = shl i32 %add1.i85, 1
  %shr.i87 = ashr i32 %add1.i85, 3
  %xor2.i88 = xor i32 %shl.i86, %shr.i87
  store i32 %xor2.i88, ptr %s.i79, align 4
  %21 = load i32, ptr %i.i80, align 4
  %inc.i90 = add nsw i32 %21, 1
  br label %for.cond.i82, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_9.exit: ; preds = %for.cond.i82
  %22 = load i32, ptr %s.i79, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i78)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i79)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i80)
  %and18 = and i32 %22, 255
  %23 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %23, %and18
  store i32 %add19, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i91)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i93)
  store i32 1, ptr %mode.addr.i91, align 4
  store i32 4, ptr %t.i93, align 4
  %24 = load i32, ptr %t.i93, align 4
  %25 = load i32, ptr %mode.addr.i91, align 4
  %add1.i96 = add nsw i32 %25, 1
  %mul.i97 = mul nsw i32 %24, %add1.i96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i91)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i93)
  %26 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %26, %mul.i97
  store i32 %add21, ptr %total, align 4
  %call22 = call noundef i32 @_ZL20matrix_047_recursivei(i32 noundef 3)
  %add23 = add nsw i32 %add21, %call22
  %add25 = add nsw i32 %add23, 88006827
  store i32 %add25, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i137)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i138)
  store i32 5, ptr %x.addr.i136, align 4
  store i32 5, ptr %s.i137, align 4
  br label %for.cond.i140

for.cond.i140:                                    ; preds = %for.body.i147, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_9.exit
  %storemerge172 = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_9.exit ], [ %inc.i148, %for.body.i147 ]
  store i32 %storemerge172, ptr %i.i138, align 4
  %cmp.i139 = icmp slt i32 %storemerge172, 8
  br i1 %cmp.i139, label %for.body.i147, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_13.exit

for.body.i147:                                    ; preds = %for.cond.i140
  %27 = load i32, ptr %x.addr.i136, align 4
  %28 = load i32, ptr %i.i138, align 4
  %xor.i141 = xor i32 %27, %28
  %add.i142 = add nsw i32 %xor.i141, 12
  %29 = load i32, ptr %s.i137, align 4
  %add1.i143 = add nsw i32 %29, %add.i142
  %shl.i144 = shl i32 %add1.i143, 1
  %shr.i145 = ashr i32 %add1.i143, 3
  %xor2.i146 = xor i32 %shl.i144, %shr.i145
  store i32 %xor2.i146, ptr %s.i137, align 4
  %30 = load i32, ptr %i.i138, align 4
  %inc.i148 = add nsw i32 %30, 1
  br label %for.cond.i140, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_047_13.exit: ; preds = %for.cond.i140
  %31 = load i32, ptr %s.i137, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i136)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i137)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i138)
  %32 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %32, %31
  store i32 %add27, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i149)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i151)
  store i32 2, ptr %mode.addr.i149, align 4
  store i32 8, ptr %t.i151, align 4
  %33 = load i32, ptr %t.i151, align 4
  %34 = load i32, ptr %mode.addr.i149, align 4
  %sub.i157 = sub nsw i32 %33, %34
  %phi.bo = and i32 %sub.i157, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i149)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i151)
  %35 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %35, %phi.bo
  store i32 %add30, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i160)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i162)
  store i32 0, ptr %mode.addr.i160, align 4
  store i32 9, ptr %t.i162, align 4
  %36 = load i32, ptr %t.i162, align 4
  %37 = load i32, ptr %mode.addr.i160, align 4
  %add1.i165 = add nsw i32 %37, 1
  %mul.i166 = mul nsw i32 %36, %add1.i165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i160)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i162)
  %38 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %38, %mul.i166
  store i32 %add32, ptr %total, align 4
  ret i32 %add32
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_047_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_047_recursivei(i32 noundef %sub)
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
