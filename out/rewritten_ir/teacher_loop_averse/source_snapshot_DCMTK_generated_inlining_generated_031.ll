; ModuleID = './out/rewritten_ir/teacher_loop_averse/source_snapshot_DCMTK_generated_inlining_generated_031.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_031.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_031_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %and = and i32 %x, 3
  %call = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and, i32 noundef %x)
  store i32 %call, ptr %total, align 4
  %add2 = add nsw i32 %x, 1
  %call3 = call noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %add2)
  %add4 = add nsw i32 %call, %call3
  store i32 %add4, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %0, 1
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %1, 3
  %add8 = add nsw i32 %1, 2
  %call9 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and7, i32 noundef %add8)
  %2 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %2, %call9
  store i32 %add10, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call11 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %3 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %3, %call11
  store i32 %add12, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %5 = mul i32 %4, 3
  %add.i = add i32 %5, 43
  %shr.i = ashr i32 %add.i, 1
  %xor.i = xor i32 %add.i, %shr.i
  %mul1.i = shl nsw i32 %xor.i, 2
  %add2.i = add nsw i32 %mul1.i, 32
  %shr3.i = ashr exact i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 33
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i = add nsw i32 %mul9.i, 34
  %shr11.i = ashr exact i32 %add10.i, 1
  %xor12.i = xor i32 %add10.i, %shr11.i
  %mul13.i = mul nsw i32 %xor12.i, 7
  %add14.i = add nsw i32 %mul13.i, 35
  %shr15.i = ashr i32 %add14.i, 2
  %xor16.i = xor i32 %add14.i, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 36
  %shr19.i = ashr i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 37
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 38
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %6 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %6, %xor28.i
  store i32 %add15, ptr %total, align 4
  %7 = load i32, ptr %x.addr, align 4
  %8 = and i32 %7, 1
  %tobool18.not.not = icmp eq i32 %8, 0
  br i1 %tobool18.not.not, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end
  %9 = load i32, ptr %x.addr, align 4
  %and20 = and i32 %9, 3
  %add21 = add nsw i32 %9, 5
  %call22 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and20, i32 noundef %add21)
  %10 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %10, %call22
  store i32 %add23, ptr %total, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end
  %11 = load i32, ptr %x.addr, align 4
  %and25 = and i32 %11, 3
  %add26 = add nsw i32 %11, 6
  %call27 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and25, i32 noundef %add26)
  %12 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %12, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %13, 1
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end38, label %if.then34

if.then34:                                        ; preds = %if.end24
  %14 = load i32, ptr %x.addr, align 4
  %15 = mul i32 %14, 3
  %add.i4 = add i32 %15, 55
  %shr.i5 = ashr i32 %add.i4, 1
  %xor.i6 = xor i32 %add.i4, %shr.i5
  %mul1.i7 = shl nsw i32 %xor.i6, 2
  %add2.i8 = add nsw i32 %mul1.i7, 32
  %shr3.i9 = ashr exact i32 %add2.i8, 2
  %xor4.i10 = xor i32 %add2.i8, %shr3.i9
  %mul5.i11 = mul nsw i32 %xor4.i10, 5
  %add6.i12 = add nsw i32 %mul5.i11, 33
  %shr7.i13 = ashr i32 %add6.i12, 3
  %xor8.i14 = xor i32 %add6.i12, %shr7.i13
  %mul9.i15 = mul nsw i32 %xor8.i14, 6
  %add10.i16 = add nsw i32 %mul9.i15, 34
  %shr11.i17 = ashr exact i32 %add10.i16, 1
  %xor12.i18 = xor i32 %add10.i16, %shr11.i17
  %mul13.i19 = mul nsw i32 %xor12.i18, 7
  %add14.i20 = add nsw i32 %mul13.i19, 35
  %shr15.i21 = ashr i32 %add14.i20, 2
  %xor16.i22 = xor i32 %add14.i20, %shr15.i21
  %mul17.i23 = shl nsw i32 %xor16.i22, 3
  %add18.i24 = add nsw i32 %mul17.i23, 36
  %shr19.i25 = ashr i32 %add18.i24, 3
  %xor20.i26 = xor i32 %add18.i24, %shr19.i25
  %mul21.i27 = mul nsw i32 %xor20.i26, 9
  %add22.i28 = add nsw i32 %mul21.i27, 37
  %shr23.i29 = ashr i32 %add22.i28, 1
  %xor24.i30 = xor i32 %add22.i28, %shr23.i29
  %mul25.i31 = mul nsw i32 %xor24.i30, 10
  %add26.i32 = add nsw i32 %mul25.i31, 38
  %shr27.i33 = ashr i32 %add26.i32, 2
  %xor28.i34 = xor i32 %add26.i32, %shr27.i33
  %16 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %16, %xor28.i34
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end24
  %17 = load i32, ptr %x.addr, align 4
  %add39 = add nsw i32 %17, 9
  %call40 = call noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %add39)
  %18 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %18, %call40
  store i32 %add41, ptr %total, align 4
  %and42 = and i32 %17, 3
  %19 = load i32, ptr %x.addr, align 4
  %add43 = add nsw i32 %19, 10
  %call44 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and42, i32 noundef %add43)
  %add45 = add nsw i32 %add41, %call44
  store i32 %add45, ptr %total, align 4
  %20 = and i32 %19, 1
  %tobool48.not.not = icmp eq i32 %20, 0
  br i1 %tobool48.not.not, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end38
  %call50 = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef 3)
  %21 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %21, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end38
  %22 = load i32, ptr %x.addr, align 4
  %23 = mul i32 %22, 3
  %add.i38 = add i32 %23, 67
  %shr.i39 = ashr i32 %add.i38, 1
  %xor.i40 = xor i32 %add.i38, %shr.i39
  %mul1.i41 = shl nsw i32 %xor.i40, 2
  %add2.i42 = add nsw i32 %mul1.i41, 32
  %shr3.i43 = ashr exact i32 %add2.i42, 2
  %xor4.i44 = xor i32 %add2.i42, %shr3.i43
  %mul5.i45 = mul nsw i32 %xor4.i44, 5
  %add6.i46 = add nsw i32 %mul5.i45, 33
  %shr7.i47 = ashr i32 %add6.i46, 3
  %xor8.i48 = xor i32 %add6.i46, %shr7.i47
  %mul9.i49 = mul nsw i32 %xor8.i48, 6
  %add10.i50 = add nsw i32 %mul9.i49, 34
  %shr11.i51 = ashr exact i32 %add10.i50, 1
  %xor12.i52 = xor i32 %add10.i50, %shr11.i51
  %mul13.i53 = mul nsw i32 %xor12.i52, 7
  %add14.i54 = add nsw i32 %mul13.i53, 35
  %shr15.i55 = ashr i32 %add14.i54, 2
  %xor16.i56 = xor i32 %add14.i54, %shr15.i55
  %mul17.i57 = shl nsw i32 %xor16.i56, 3
  %add18.i58 = add nsw i32 %mul17.i57, 36
  %shr19.i59 = ashr i32 %add18.i58, 3
  %xor20.i60 = xor i32 %add18.i58, %shr19.i59
  %mul21.i61 = mul nsw i32 %xor20.i60, 9
  %add22.i62 = add nsw i32 %mul21.i61, 37
  %shr23.i63 = ashr i32 %add22.i62, 1
  %xor24.i64 = xor i32 %add22.i62, %shr23.i63
  %mul25.i65 = mul nsw i32 %xor24.i64, 10
  %add26.i66 = add nsw i32 %mul25.i65, 38
  %shr27.i67 = ashr i32 %add26.i66, 2
  %xor28.i68 = xor i32 %add26.i66, %shr27.i67
  %24 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %24, %xor28.i68
  store i32 %add55, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %add56 = add nsw i32 %25, 13
  %call57 = call noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %add56)
  %add58 = add nsw i32 %add55, %call57
  store i32 %add58, ptr %total, align 4
  %and60 = and i32 %25, 1
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end67, label %if.then62

if.then62:                                        ; preds = %if.end52
  %26 = load i32, ptr %x.addr, align 4
  %and63 = and i32 %26, 3
  %add64 = add nsw i32 %26, 14
  %call65 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and63, i32 noundef %add64)
  %27 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %27, %call65
  store i32 %add66, ptr %total, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end52
  %28 = load i32, ptr %x.addr, align 4
  %and68 = and i32 %28, 3
  %add69 = add nsw i32 %28, 15
  %call70 = call noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %and68, i32 noundef %add69)
  %29 = load i32, ptr %total, align 4
  %add71 = add nsw i32 %29, %call70
  store i32 %add71, ptr %total, align 4
  ret i32 %add71
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26matrix_031_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %add = add nsw i32 %x, 1
  store i32 %add, ptr %t, align 4
  %cmp = icmp slt i32 %mode, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %1, 1
  %mul = mul nsw i32 %0, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_031_large_bi(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %add = add nsw i32 %xor, 9
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
define internal noundef i32 @_ZL20matrix_031_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_031_recursivei(i32 noundef %sub)
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
