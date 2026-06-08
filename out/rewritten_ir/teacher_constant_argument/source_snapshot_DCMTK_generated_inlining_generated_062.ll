; ModuleID = './out/rewritten_ir/teacher_constant_argument/source_snapshot_DCMTK_generated_inlining_generated_062.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_062.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_062_entry(i32 noundef %x) #0 {
entry:
  %mode.addr.i113 = alloca i32, align 4
  %t.i115 = alloca i32, align 4
  %mode.addr.i102 = alloca i32, align 4
  %t.i104 = alloca i32, align 4
  %mode.addr.i91 = alloca i32, align 4
  %t.i93 = alloca i32, align 4
  %mode.addr.i80 = alloca i32, align 4
  %t.i82 = alloca i32, align 4
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
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL18packet_062_large_ai(i32 noundef 4)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL18packet_062_large_bi(i32 noundef 5)
  %add18 = add nsw i32 %add16, %call17
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i82)
  store i32 1, ptr %mode.addr.i80, align 4
  store i32 8, ptr %t.i82, align 4
  %26 = load i32, ptr %t.i82, align 4
  %27 = load i32, ptr %mode.addr.i80, align 4
  %add1.i85 = add nsw i32 %27, 1
  %mul.i86 = mul nsw i32 %26, %add1.i85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i82)
  %28 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %28, %mul.i86
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL18packet_062_large_bi(i32 noundef 7)
  %add22 = add nsw i32 %add20, %call21
  store i32 %add22, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i91)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i93)
  store i32 0, ptr %mode.addr.i91, align 4
  store i32 10, ptr %t.i93, align 4
  %29 = load i32, ptr %t.i93, align 4
  %30 = load i32, ptr %mode.addr.i91, align 4
  %add1.i96 = add nsw i32 %30, 1
  %mul.i97 = mul nsw i32 %29, %add1.i96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i91)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i93)
  %31 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %31, %mul.i97
  store i32 %add24, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i102)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i104)
  store i32 1, ptr %mode.addr.i102, align 4
  store i32 11, ptr %t.i104, align 4
  %32 = load i32, ptr %t.i104, align 4
  %33 = load i32, ptr %mode.addr.i102, align 4
  %add1.i107 = add nsw i32 %33, 1
  %mul.i108 = mul nsw i32 %32, %add1.i107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i102)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i104)
  %34 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %34, %mul.i108
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL20packet_062_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i113)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i115)
  store i32 0, ptr %mode.addr.i113, align 4
  store i32 2, ptr %t.i115, align 4
  %35 = load i32, ptr %t.i115, align 4
  %36 = load i32, ptr %mode.addr.i113, align 4
  %add1.i118 = add nsw i32 %36, 1
  %mul.i119 = mul nsw i32 %35, %add1.i118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i113)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i115)
  %37 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %37, %mul.i119
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_062_large_ai(i32 noundef %x) #1 {
entry:
  %mul = mul nsw i32 %x, 3
  %add = add nsw i32 %mul, 62
  %shr = ashr i32 %add, 1
  %xor = xor i32 %add, %shr
  %mul1 = shl nsw i32 %xor, 2
  %add2 = add nsw i32 %mul1, 63
  %shr3 = ashr i32 %add2, 2
  %xor4 = xor i32 %add2, %shr3
  %mul5 = mul nsw i32 %xor4, 5
  %add6 = add nsw i32 %mul5, 64
  %shr7 = ashr i32 %add6, 3
  %xor8 = xor i32 %add6, %shr7
  %mul9 = mul nsw i32 %xor8, 6
  %add10 = add nsw i32 %mul9, 65
  %shr11 = ashr i32 %add10, 1
  %xor12 = xor i32 %add10, %shr11
  %mul13 = mul nsw i32 %xor12, 7
  %add14 = add nsw i32 %mul13, 66
  %shr15 = ashr i32 %add14, 2
  %xor16 = xor i32 %add14, %shr15
  %mul17 = shl nsw i32 %xor16, 3
  %add18 = add nsw i32 %mul17, 67
  %shr19 = ashr i32 %add18, 3
  %xor20 = xor i32 %add18, %shr19
  %mul21 = mul nsw i32 %xor20, 9
  %add22 = add nsw i32 %mul21, 68
  %shr23 = ashr i32 %add22, 1
  %xor24 = xor i32 %add22, %shr23
  %mul25 = mul nsw i32 %xor24, 10
  %add26 = add nsw i32 %mul25, 69
  %shr27 = ashr i32 %add26, 2
  %xor28 = xor i32 %add26, %shr27
  %mul29 = mul nsw i32 %xor28, 11
  %add30 = add nsw i32 %mul29, 70
  %shr31 = ashr i32 %add30, 3
  %xor32 = xor i32 %add30, %shr31
  %mul33 = mul nsw i32 %xor32, 12
  %add34 = add nsw i32 %mul33, 71
  %shr35 = ashr i32 %add34, 1
  %xor36 = xor i32 %add34, %shr35
  %mul37 = mul nsw i32 %xor36, 13
  %add38 = add nsw i32 %mul37, 72
  %shr39 = ashr i32 %add38, 2
  %xor40 = xor i32 %add38, %shr39
  %mul41 = mul nsw i32 %xor40, 14
  %add42 = add nsw i32 %mul41, 73
  %shr43 = ashr i32 %add42, 3
  %xor44 = xor i32 %add42, %shr43
  %mul45 = mul nsw i32 %xor44, 15
  %add46 = add nsw i32 %mul45, 74
  %shr47 = ashr i32 %add46, 1
  %xor48 = xor i32 %add46, %shr47
  ret i32 %xor48
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_062_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 1
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %add
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
