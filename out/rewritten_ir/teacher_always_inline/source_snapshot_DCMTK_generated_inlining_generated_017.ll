; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_017.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_017.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_017_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr.i118 = alloca i32, align 4
  %s.i119 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %mode.addr.i103 = alloca i32, align 4
  %t.i105 = alloca i32, align 4
  %mode.addr.i92 = alloca i32, align 4
  %t.i94 = alloca i32, align 4
  %mode.addr.i81 = alloca i32, align 4
  %t.i83 = alloca i32, align 4
  %mode.addr.i70 = alloca i32, align 4
  %t.i72 = alloca i32, align 4
  %mode.addr.i59 = alloca i32, align 4
  %t.i61 = alloca i32, align 4
  %mode.addr.i47 = alloca i32, align 4
  %out.i49 = alloca i32, align 4
  %retval.i35 = alloca i32, align 4
  %x.addr.i37 = alloca i32, align 4
  %retval.i19 = alloca i32, align 4
  %mode.addr.i20 = alloca i32, align 4
  %x.addr.i21 = alloca i32, align 4
  %mode.addr.i14 = alloca i32, align 4
  %t.i = alloca i32, align 4
  %mode.addr.i7 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i1 = alloca i32, align 4
  %x.addr.i3 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 0, ptr %x.addr.i, align 4
  %0 = load i32, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %0, 9
  store i32 %add.i, ptr %retval.i, align 4
  %1 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %2 = load i32, ptr %total, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %3, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i3)
  store i32 %add1, ptr %x.addr.i3, align 4
  %4 = load i32, ptr %x.addr.i3, align 4
  %xor.i = xor i32 %4, 6
  store i32 %xor.i, ptr %retval.i1, align 4
  %5 = load i32, ptr %retval.i1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i3)
  %6 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %6, %5
  store i32 %add3, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 2, ptr %mode.addr.i7, align 4
  store i32 2, ptr %out.i, align 4
  %7 = load i32, ptr %mode.addr.i7, align 4
  %and1.i = and i32 %7, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %8 = load i32, ptr %out.i, align 4
  %xor.i13 = xor i32 %8, 3
  store i32 %xor.i13, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit: ; preds = %entry, %if.then3.i
  %9 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %10 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %10, %9
  store i32 %add5, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %11, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 0, ptr %mode.addr.i14, align 4
  store i32 %add6, ptr %t.i, align 4
  %12 = load i32, ptr %t.i, align 4
  %13 = load i32, ptr %mode.addr.i14, align 4
  %add1.i = add nsw i32 %13, 1
  %mul.i17 = mul nsw i32 %12, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %14 = load i32, ptr %total, align 4
  %xor = xor i32 %14, %mul.i17
  store i32 %xor, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i19)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i21)
  store i32 1, ptr %mode.addr.i20, align 4
  store i32 4, ptr %x.addr.i21, align 4
  %15 = load i32, ptr %mode.addr.i20, align 4
  %cmp1.i25 = icmp eq i32 %15, 1
  br i1 %cmp1.i25, label %if.then2.i28, label %if.end3.i30

if.then2.i28:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit
  %16 = load i32, ptr %x.addr.i21, align 4
  %mul.i27 = mul nsw i32 %16, 3
  store i32 %mul.i27, ptr %retval.i19, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit

if.end3.i30:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_2.exit
  %17 = load i32, ptr %mode.addr.i20, align 4
  %cmp4.i29 = icmp eq i32 %17, 2
  br i1 %cmp4.i29, label %if.then5.i32, label %if.end6.i34

if.then5.i32:                                     ; preds = %if.end3.i30
  %18 = load i32, ptr %x.addr.i21, align 4
  %sub.i31 = add nsw i32 %18, -4
  store i32 %sub.i31, ptr %retval.i19, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit

if.end6.i34:                                      ; preds = %if.end3.i30
  %19 = load i32, ptr %x.addr.i21, align 4
  %20 = load i32, ptr %mode.addr.i20, align 4
  %add7.i33 = add nsw i32 %19, %20
  store i32 %add7.i33, ptr %retval.i19, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit: ; preds = %if.then2.i28, %if.then5.i32, %if.end6.i34
  %21 = load i32, ptr %retval.i19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i21)
  %22 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %22, %21
  store i32 %add9, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %23, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i37)
  store i32 %add10, ptr %x.addr.i37, align 4
  %24 = load i32, ptr %x.addr.i37, align 4
  %mul.i43 = shl nsw i32 %24, 2
  store i32 %mul.i43, ptr %retval.i35, align 4
  %25 = load i32, ptr %retval.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i37)
  %26 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %26, %25
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i47)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i49)
  store i32 0, ptr %mode.addr.i47, align 4
  store i32 6, ptr %out.i49, align 4
  %27 = load i32, ptr %mode.addr.i47, align 4
  %and1.i54 = and i32 %27, 2
  %tobool2.i55.not = icmp eq i32 %and1.i54, 0
  br i1 %tobool2.i55.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_6.exit, label %if.then3.i58

if.then3.i58:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit
  %28 = load i32, ptr %out.i49, align 4
  %xor.i57 = xor i32 %28, 7
  store i32 %xor.i57, ptr %out.i49, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_6.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_4.exit, %if.then3.i58
  %29 = load i32, ptr %out.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i47)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i49)
  %30 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %30, %29
  store i32 %add14, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i61)
  store i32 1, ptr %mode.addr.i59, align 4
  %add.i62 = add nsw i32 %31, 11
  store i32 %add.i62, ptr %t.i61, align 4
  %32 = load i32, ptr %t.i61, align 4
  %33 = load i32, ptr %mode.addr.i59, align 4
  %add1.i64 = add nsw i32 %33, 1
  %mul.i65 = mul nsw i32 %32, %add1.i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i59)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i61)
  %34 = load i32, ptr %total, align 4
  %xor17 = xor i32 %34, %mul.i65
  store i32 %xor17, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i70)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i72)
  store i32 2, ptr %mode.addr.i70, align 4
  store i32 3, ptr %t.i72, align 4
  %35 = load i32, ptr %t.i72, align 4
  %36 = load i32, ptr %mode.addr.i70, align 4
  %sub.i78 = sub nsw i32 %35, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i70)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i72)
  %37 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %37, %sub.i78
  store i32 %add19, ptr %total, align 4
  %38 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i81)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i83)
  store i32 0, ptr %mode.addr.i81, align 4
  %add.i84 = add nsw i32 %38, 11
  store i32 %add.i84, ptr %t.i83, align 4
  %39 = load i32, ptr %t.i83, align 4
  %40 = load i32, ptr %mode.addr.i81, align 4
  %add1.i86 = add nsw i32 %40, 1
  %mul.i87 = mul nsw i32 %39, %add1.i86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i81)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i83)
  %41 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %41, %mul.i87
  store i32 %add22, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i94)
  store i32 1, ptr %mode.addr.i92, align 4
  store i32 5, ptr %t.i94, align 4
  %42 = load i32, ptr %t.i94, align 4
  %43 = load i32, ptr %mode.addr.i92, align 4
  %add1.i97 = add nsw i32 %43, 1
  %mul.i98 = mul nsw i32 %42, %add1.i97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i92)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i94)
  %44 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %44, %mul.i98
  store i32 %add24, ptr %total, align 4
  %45 = load i32, ptr %x.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i103)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i105)
  store i32 2, ptr %mode.addr.i103, align 4
  %add.i106 = add nsw i32 %45, 13
  store i32 %add.i106, ptr %t.i105, align 4
  %46 = load i32, ptr %t.i105, align 4
  %47 = load i32, ptr %mode.addr.i103, align 4
  %sub.i111 = sub nsw i32 %46, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i103)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i105)
  %48 = load i32, ptr %total, align 4
  %xor27 = xor i32 %48, %sub.i111
  %add29 = add nsw i32 %xor27, 27316206
  store i32 %add29, ptr %total, align 4
  %49 = load i32, ptr %x.addr, align 4
  %add30 = add nsw i32 %49, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i118)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i119)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 %add30, ptr %x.addr.i118, align 4
  store i32 %add30, ptr %s.i119, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_6.exit
  %storemerge = phi i32 [ 0, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_6.exit ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i120 = icmp slt i32 %storemerge, 8
  br i1 %cmp.i120, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_13.exit

for.body.i:                                       ; preds = %for.cond.i
  %50 = load i32, ptr %x.addr.i118, align 4
  %51 = load i32, ptr %i.i, align 4
  %xor.i121 = xor i32 %50, %51
  %add.i122 = add nsw i32 %xor.i121, 8
  %52 = load i32, ptr %s.i119, align 4
  %add1.i123 = add nsw i32 %52, %add.i122
  %shl.i = shl i32 %add1.i123, 1
  %shr.i124 = ashr i32 %add1.i123, 3
  %xor2.i = xor i32 %shl.i, %shr.i124
  store i32 %xor2.i, ptr %s.i119, align 4
  %53 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %53, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_017_13.exit: ; preds = %for.cond.i
  %54 = load i32, ptr %s.i119, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i118)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i119)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  %55 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %55, %54
  store i32 %add32, ptr %total, align 4
  %call33 = call noundef i32 @_ZL19image_017_recursivei(i32 noundef 2)
  %add34 = add nsw i32 %add32, %call33
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL19image_017_recursivei(i32 noundef 3)
  %xor36 = xor i32 %add34, %call35
  store i32 %xor36, ptr %total, align 4
  ret i32 %xor36
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_017_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_017_recursivei(i32 noundef %sub)
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
