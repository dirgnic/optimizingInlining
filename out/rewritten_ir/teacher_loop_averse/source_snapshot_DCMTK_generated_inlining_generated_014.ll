; ModuleID = './out/rewritten_ir/teacher_loop_averse/source_snapshot_DCMTK_generated_inlining_generated_014.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_014.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_014_entry(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef 0, i32 noundef 0)
  store i32 %call, ptr %total, align 4
  %add1 = add nsw i32 %x, 1
  %add.i = shl i32 %x, 2
  %sub.i = add i32 %add.i, 30
  %and.i = and i32 %add1, 15
  %xor.i = xor i32 %sub.i, %and.i
  %add3 = add nsw i32 %call, %xor.i
  %add5 = add nsw i32 %add3, 39
  store i32 %add5, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %0, 3
  %add.i10 = shl i32 %0, 2
  %sub.i12 = add i32 %add.i10, 44
  %and.i13 = and i32 %add6, 15
  %xor.i14 = xor i32 %sub.i12, %and.i13
  %1 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %1, %xor.i14
  %add10 = add nsw i32 %add8, 55
  store i32 %add10, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %2, 5
  %call12 = call noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef 2, i32 noundef %add11)
  %add13 = add nsw i32 %add10, %call12
  %add15 = add nsw i32 %add13, 71
  store i32 %add15, ptr %total, align 4
  %add16 = add nsw i32 %2, 7
  %add.i31 = shl i32 %2, 2
  %sub.i33 = add i32 %add.i31, 72
  %and.i34 = and i32 %add16, 15
  %xor.i35 = xor i32 %sub.i33, %and.i34
  %add18 = add nsw i32 %add15, %xor.i35
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL18packet_014_large_ai(i32 noundef 1)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %4 = mul i32 %3, 3
  %add.i37 = add i32 %4, 58
  %shr.i = ashr i32 %add.i37, 1
  %xor.i38 = xor i32 %add.i37, %shr.i
  %mul1.i = shl nsw i32 %xor.i38, 2
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
  %5 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %5, %xor28.i
  store i32 %add23, ptr %total, align 4
  %call24 = call noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef 1, i32 noundef 3)
  %add25 = add nsw i32 %add23, %call24
  store i32 %add25, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %7 = mul i32 %6, 3
  %add.i42 = add i32 %7, 64
  %shr.i43 = ashr i32 %add.i42, 1
  %xor.i44 = xor i32 %add.i42, %shr.i43
  %mul1.i45 = shl nsw i32 %xor.i44, 2
  %add2.i46 = add nsw i32 %mul1.i45, 32
  %shr3.i47 = ashr exact i32 %add2.i46, 2
  %xor4.i48 = xor i32 %add2.i46, %shr3.i47
  %mul5.i49 = mul nsw i32 %xor4.i48, 5
  %add6.i50 = add nsw i32 %mul5.i49, 33
  %shr7.i51 = ashr i32 %add6.i50, 3
  %xor8.i52 = xor i32 %add6.i50, %shr7.i51
  %mul9.i53 = mul nsw i32 %xor8.i52, 6
  %add10.i54 = add nsw i32 %mul9.i53, 34
  %shr11.i55 = ashr exact i32 %add10.i54, 1
  %xor12.i56 = xor i32 %add10.i54, %shr11.i55
  %mul13.i57 = mul nsw i32 %xor12.i56, 7
  %add14.i58 = add nsw i32 %mul13.i57, 35
  %shr15.i59 = ashr i32 %add14.i58, 2
  %xor16.i60 = xor i32 %add14.i58, %shr15.i59
  %mul17.i61 = shl nsw i32 %xor16.i60, 3
  %add18.i62 = add nsw i32 %mul17.i61, 36
  %shr19.i63 = ashr i32 %add18.i62, 3
  %xor20.i64 = xor i32 %add18.i62, %shr19.i63
  %mul21.i65 = mul nsw i32 %xor20.i64, 9
  %add22.i66 = add nsw i32 %mul21.i65, 37
  %shr23.i67 = ashr i32 %add22.i66, 1
  %xor24.i68 = xor i32 %add22.i66, %shr23.i67
  %mul25.i69 = mul nsw i32 %xor24.i68, 10
  %add26.i70 = add nsw i32 %mul25.i69, 38
  %shr27.i71 = ashr i32 %add26.i70, 2
  %xor28.i72 = xor i32 %add26.i70, %shr27.i71
  %8 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %8, %xor28.i72
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef 0, i32 noundef 5)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %9, 13
  %call32 = call noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef 1, i32 noundef %add31)
  %add33 = add nsw i32 %add30, %call32
  store i32 %add33, ptr %total, align 4
  %call34 = call noundef i32 @_ZL20packet_014_recursivei(i32 noundef 2)
  %add35 = add nsw i32 %add33, %call34
  store i32 %add35, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %10, 15
  %call37 = call noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef 0, i32 noundef %add36)
  %add38 = add nsw i32 %add35, %call37
  store i32 %add38, ptr %total, align 4
  ret i32 %add38
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_014_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 7
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %out, align 4
  %xor = xor i32 %2, 17
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_014_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = shl i32 %x, 2
  %mul = and i32 %and, 12
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
  %mul3 = mul nuw nsw i32 %and2, 5
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
  %mul13 = mul nuw nsw i32 %and12, 6
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
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 7
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_014_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_014_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_014_recursivei(i32 noundef %sub1)
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
