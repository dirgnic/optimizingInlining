; ModuleID = './out/rewritten_ir/teacher_loop_averse/source_snapshot_DCMTK_generated_inlining_generated_059.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_059.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_059_kernel(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL18matrix_059_large_ai(i32 noundef 0)
  store i32 %call, ptr %total, align 4
  %0 = mul i32 %x, 3
  %add.i = add i32 %0, 79
  %shr.i = ashr i32 %add.i, 1
  %xor.i = xor i32 %add.i, %shr.i
  %mul1.i = shl nsw i32 %xor.i, 2
  %add2.i = add nsw i32 %mul1.i, 77
  %shr3.i = ashr i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 78
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 79
  %shr11.i = ashr i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 80
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 81
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 82
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 83
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %1 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %1, %xor28.i
  store i32 %add3, ptr %total, align 4
  %call4 = call noundef i32 @_ZL26matrix_059_branch_variableii(i32 noundef 2, i32 noundef 2)
  %add5 = add nsw i32 %add3, %call4
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef 3)
  %add7 = add nsw i32 %add5, %call6
  store i32 %add7, ptr %total, align 4
  %call8 = call noundef i32 @_ZL18matrix_059_large_ai(i32 noundef 4)
  %and = and i32 %call8, 255
  %add9 = add nsw i32 %add7, %and
  store i32 %add9, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %3 = mul i32 %2, 3
  %add.i4 = add i32 %3, 91
  %shr.i5 = ashr i32 %add.i4, 1
  %xor.i6 = xor i32 %add.i4, %shr.i5
  %mul1.i7 = shl nsw i32 %xor.i6, 2
  %add2.i8 = add nsw i32 %mul1.i7, 77
  %shr3.i9 = ashr i32 %add2.i8, 2
  %xor4.i10 = xor i32 %add2.i8, %shr3.i9
  %mul5.i11 = mul nsw i32 %xor4.i10, 5
  %add6.i12 = add nsw i32 %mul5.i11, 78
  %shr7.i13 = ashr i32 %add6.i12, 3
  %xor8.i14 = xor i32 %add6.i12, %shr7.i13
  %mul9.i15 = mul nsw i32 %xor8.i14, 6
  %add10.i16 = add nsw i32 %mul9.i15, 79
  %shr11.i17 = ashr i32 %add10.i16, 1
  %xor12.i18 = xor i32 %add10.i16, %shr11.i17
  %mul13.i19 = mul nsw i32 %xor12.i18, 7
  %add14.i20 = add nsw i32 %mul13.i19, 80
  %shr15.i21 = ashr i32 %add14.i20, 2
  %xor16.i22 = xor i32 %add14.i20, %shr15.i21
  %mul17.i23 = shl nsw i32 %xor16.i22, 3
  %add18.i24 = add nsw i32 %mul17.i23, 81
  %shr19.i25 = ashr i32 %add18.i24, 3
  %xor20.i26 = xor i32 %add18.i24, %shr19.i25
  %mul21.i27 = mul nsw i32 %xor20.i26, 9
  %add22.i28 = add nsw i32 %mul21.i27, 82
  %shr23.i29 = ashr i32 %add22.i28, 1
  %xor24.i30 = xor i32 %add22.i28, %shr23.i29
  %mul25.i31 = mul nsw i32 %xor24.i30, 10
  %add26.i32 = add nsw i32 %mul25.i31, 83
  %shr27.i33 = ashr i32 %add26.i32, 2
  %xor28.i34 = xor i32 %add26.i32, %shr27.i33
  %4 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %4, %xor28.i34
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @_ZL26matrix_059_branch_variableii(i32 noundef 0, i32 noundef 6)
  %add14 = add nsw i32 %add12, %call13
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef 3)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL18matrix_059_large_ai(i32 noundef 1)
  %add18 = add nsw i32 %add16, %call17
  store i32 %add18, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %6 = mul i32 %5, 3
  %add.i38 = add i32 %6, 103
  %shr.i39 = ashr i32 %add.i38, 1
  %xor.i40 = xor i32 %add.i38, %shr.i39
  %mul1.i41 = shl nsw i32 %xor.i40, 2
  %add2.i42 = add nsw i32 %mul1.i41, 77
  %shr3.i43 = ashr i32 %add2.i42, 2
  %xor4.i44 = xor i32 %add2.i42, %shr3.i43
  %mul5.i45 = mul nsw i32 %xor4.i44, 5
  %add6.i46 = add nsw i32 %mul5.i45, 78
  %shr7.i47 = ashr i32 %add6.i46, 3
  %xor8.i48 = xor i32 %add6.i46, %shr7.i47
  %mul9.i49 = mul nsw i32 %xor8.i48, 6
  %add10.i50 = add nsw i32 %mul9.i49, 79
  %shr11.i51 = ashr i32 %add10.i50, 1
  %xor12.i52 = xor i32 %add10.i50, %shr11.i51
  %mul13.i53 = mul nsw i32 %xor12.i52, 7
  %add14.i54 = add nsw i32 %mul13.i53, 80
  %shr15.i55 = ashr i32 %add14.i54, 2
  %xor16.i56 = xor i32 %add14.i54, %shr15.i55
  %mul17.i57 = shl nsw i32 %xor16.i56, 3
  %add18.i58 = add nsw i32 %mul17.i57, 81
  %shr19.i59 = ashr i32 %add18.i58, 3
  %xor20.i60 = xor i32 %add18.i58, %shr19.i59
  %mul21.i61 = mul nsw i32 %xor20.i60, 9
  %add22.i62 = add nsw i32 %mul21.i61, 82
  %shr23.i63 = ashr i32 %add22.i62, 1
  %xor24.i64 = xor i32 %add22.i62, %shr23.i63
  %mul25.i65 = mul nsw i32 %xor24.i64, 10
  %add26.i66 = add nsw i32 %mul25.i65, 83
  %7 = lshr i32 %add26.i66, 2
  %xor28.i68 = xor i32 %add26.i66, %7
  %and21 = and i32 %xor28.i68, 255
  %8 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %8, %and21
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL26matrix_059_branch_variableii(i32 noundef 1, i32 noundef 3)
  %add24 = add nsw i32 %add22, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL18matrix_059_large_ai(i32 noundef 5)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %10 = mul i32 %9, 3
  %add.i72 = add i32 %10, 115
  %shr.i73 = ashr i32 %add.i72, 1
  %xor.i74 = xor i32 %add.i72, %shr.i73
  %mul1.i75 = shl nsw i32 %xor.i74, 2
  %add2.i76 = add nsw i32 %mul1.i75, 77
  %shr3.i77 = ashr i32 %add2.i76, 2
  %xor4.i78 = xor i32 %add2.i76, %shr3.i77
  %mul5.i79 = mul nsw i32 %xor4.i78, 5
  %add6.i80 = add nsw i32 %mul5.i79, 78
  %shr7.i81 = ashr i32 %add6.i80, 3
  %xor8.i82 = xor i32 %add6.i80, %shr7.i81
  %mul9.i83 = mul nsw i32 %xor8.i82, 6
  %add10.i84 = add nsw i32 %mul9.i83, 79
  %shr11.i85 = ashr i32 %add10.i84, 1
  %xor12.i86 = xor i32 %add10.i84, %shr11.i85
  %mul13.i87 = mul nsw i32 %xor12.i86, 7
  %add14.i88 = add nsw i32 %mul13.i87, 80
  %shr15.i89 = ashr i32 %add14.i88, 2
  %xor16.i90 = xor i32 %add14.i88, %shr15.i89
  %mul17.i91 = shl nsw i32 %xor16.i90, 3
  %add18.i92 = add nsw i32 %mul17.i91, 81
  %shr19.i93 = ashr i32 %add18.i92, 3
  %xor20.i94 = xor i32 %add18.i92, %shr19.i93
  %mul21.i95 = mul nsw i32 %xor20.i94, 9
  %add22.i96 = add nsw i32 %mul21.i95, 82
  %shr23.i97 = ashr i32 %add22.i96, 1
  %xor24.i98 = xor i32 %add22.i96, %shr23.i97
  %mul25.i99 = mul nsw i32 %xor24.i98, 10
  %add26.i100 = add nsw i32 %mul25.i99, 83
  %shr27.i101 = ashr i32 %add26.i100, 2
  %xor28.i102 = xor i32 %add26.i100, %shr27.i101
  %11 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %11, %xor28.i102
  store i32 %add31, ptr %total, align 4
  %call32 = call noundef i32 @_ZL26matrix_059_branch_variableii(i32 noundef 2, i32 noundef 0)
  %and33 = and i32 %call32, 255
  %add34 = add nsw i32 %add31, %and33
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef 3)
  %add36 = add nsw i32 %add34, %call35
  store i32 %add36, ptr %total, align 4
  ret i32 %add36
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_059_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 5
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -4
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 6
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -5
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 7
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -6
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = shl i32 %10, 3
  %mul23 = and i32 %and22, 48
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -7
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26matrix_059_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %out, align 4
  %and = and i32 %mode, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %out, align 4
  %add = add nsw i32 %0, 4
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %out, align 4
  %xor = xor i32 %2, 5
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_059_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20matrix_059_recursivei(i32 noundef %sub1)
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
