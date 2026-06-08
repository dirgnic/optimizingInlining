; ModuleID = './out/rewritten_ir/teacher_greedy_ir_size_work/source_snapshot_DCMTK_generated_inlining_generated_030.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_030.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_030_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @_ZL26packet_030_branch_variableii(i32 noundef 2, i32 noundef 4)
  %and = and i32 %x, 7
  %add.i10 = shl nuw nsw i32 %and, 2
  %sub.i12 = add nuw nsw i32 %add.i10, 43
  %xor.i14 = xor i32 %sub.i12, %and
  %add2 = add nsw i32 %call, %xor.i14
  store i32 %add2, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %0, 7
  %add.i17 = shl nuw nsw i32 %and3, 2
  %sub.i19 = add nuw nsw i32 %add.i17, 46
  %xor.i21 = xor i32 %sub.i19, %and3
  %add5 = add nsw i32 %add2, %xor.i21
  %xor = xor i32 %add5, 38
  store i32 %xor, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %1, 7
  %add.i24 = shl nuw nsw i32 %and7, 2
  %sub.i26 = add nuw nsw i32 %add.i24, 8
  %xor.i28 = xor i32 %sub.i26, %and7
  %add9 = add nsw i32 %xor, %xor.i28
  store i32 %add9, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %2, 3
  %and11 = and i32 %2, 7
  %call12 = call noundef i32 @_ZL26packet_030_branch_variableii(i32 noundef %and10, i32 noundef %and11)
  %add13 = add nsw i32 %add9, %call12
  %add15 = add nsw i32 %add13, 60
  store i32 %add15, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and16 = and i32 %3, 7
  %add.i31 = shl nuw nsw i32 %and16, 2
  %sub.i33 = add nuw nsw i32 %add.i31, 17
  %xor.i35 = xor i32 %sub.i33, %and16
  %xor18 = xor i32 %add15, %xor.i35
  store i32 %xor18, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %4, 7
  %call20 = call noundef i32 @_ZL18packet_030_large_ai(i32 noundef %and19)
  %add21 = add nsw i32 %xor18, %call20
  %add23 = add nsw i32 %add21, 89813340
  store i32 %add23, ptr %total, align 4
  %and24 = and i32 %4, 7
  %call25 = call noundef i32 @_ZL26packet_030_branch_variableii(i32 noundef 0, i32 noundef %and24)
  %add26 = add nsw i32 %add23, %call25
  store i32 %add26, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and27 = and i32 %5, 7
  %mul.i41 = mul nuw nsw i32 %and27, 3
  %add.i42 = add nuw nsw i32 %mul.i41, 47
  %6 = lshr i32 %add.i42, 1
  %xor.i44 = xor i32 %add.i42, %6
  %mul1.i45 = shl nuw nsw i32 %xor.i44, 2
  %add2.i46 = add nuw nsw i32 %mul1.i45, 48
  %shr3.i47 = lshr exact i32 %add2.i46, 2
  %xor4.i48 = xor i32 %add2.i46, %shr3.i47
  %mul5.i49 = mul nsw i32 %xor4.i48, 5
  %add6.i50 = add nsw i32 %mul5.i49, 49
  %shr7.i51 = ashr i32 %add6.i50, 3
  %xor8.i52 = xor i32 %add6.i50, %shr7.i51
  %mul9.i53 = mul nsw i32 %xor8.i52, 6
  %add10.i54 = add nsw i32 %mul9.i53, 50
  %shr11.i55 = ashr exact i32 %add10.i54, 1
  %xor12.i56 = xor i32 %add10.i54, %shr11.i55
  %mul13.i57 = mul nsw i32 %xor12.i56, 7
  %add14.i58 = add nsw i32 %mul13.i57, 51
  %shr15.i59 = ashr i32 %add14.i58, 2
  %xor16.i60 = xor i32 %add14.i58, %shr15.i59
  %mul17.i61 = shl nsw i32 %xor16.i60, 3
  %add18.i62 = add nsw i32 %mul17.i61, 52
  %shr19.i63 = ashr i32 %add18.i62, 3
  %xor20.i64 = xor i32 %add18.i62, %shr19.i63
  %mul21.i65 = mul nsw i32 %xor20.i64, 9
  %add22.i66 = add nsw i32 %mul21.i65, 53
  %shr23.i67 = ashr i32 %add22.i66, 1
  %xor24.i68 = xor i32 %add22.i66, %shr23.i67
  %mul25.i69 = mul nsw i32 %xor24.i68, 10
  %add26.i70 = add nsw i32 %mul25.i69, 54
  %shr27.i71 = ashr i32 %add26.i70, 2
  %xor28.i72 = xor i32 %add26.i70, %shr27.i71
  %7 = load i32, ptr %total, align 4
  %xor29 = xor i32 %7, %xor28.i72
  store i32 %xor29, ptr %total, align 4
  %call30 = call noundef i32 @_ZL26packet_030_branch_variableii(i32 noundef 2, i32 noundef 3)
  %add31 = add nsw i32 %xor29, %call30
  store i32 %add31, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %8, 3
  %and33 = and i32 %8, 7
  %call34 = call noundef i32 @_ZL26packet_030_branch_variableii(i32 noundef %and32, i32 noundef %and33)
  %add35 = add nsw i32 %add31, %call34
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL20packet_030_recursivei(i32 noundef 2)
  %add37 = add nsw i32 %add35, %call36
  store i32 %add37, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %and38 = and i32 %9, 3
  %call39 = call noundef i32 @_ZL26packet_030_branch_variableii(i32 noundef %and38, i32 noundef 6)
  %xor40 = xor i32 %add37, %call39
  store i32 %xor40, ptr %total, align 4
  ret i32 %xor40
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_030_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %xor = xor i32 %2, 14
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_030_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 9
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %storemerge = select i1 %cmp, i32 %2, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 10
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -1
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 11
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -2
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 12
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -3
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_030_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_030_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_030_recursivei(i32 noundef %sub1)
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
