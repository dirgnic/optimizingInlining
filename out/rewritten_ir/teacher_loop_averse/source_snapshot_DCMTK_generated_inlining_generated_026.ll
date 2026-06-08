; ModuleID = './out/rewritten_ir/teacher_loop_averse/source_snapshot_DCMTK_generated_inlining_generated_026.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_026.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_026_dispatch(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 31, ptr %total, align 4
  %and = and i32 %x, 7
  %add.i3 = or i32 %and, 8
  %mul.i4 = shl nuw nsw i32 %add.i3, 2
  %0 = lshr i32 %add.i3, 1
  %xor.i6 = xor i32 %mul.i4, %0
  %add1.i7 = add nuw nsw i32 %xor.i6, 10
  %1 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %1, %add1.i7
  store i32 %add2, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %2, 7
  %add.i10 = add nuw nsw i32 %and3, 9
  %mul.i11 = mul nuw nsw i32 %add.i10, 5
  %3 = lshr i32 %add.i10, 1
  %xor.i13 = xor i32 %mul.i11, %3
  %add1.i14 = add nuw nsw i32 %xor.i13, 11
  %4 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %4, %add1.i14
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 3)
  %xor = xor i32 %add5, %call6
  store i32 %xor, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %5, 7
  %add.i17 = add nuw nsw i32 %and7, 11
  %mul.i18 = shl nuw nsw i32 %add.i17, 1
  %6 = lshr i32 %add.i17, 1
  %xor.i20 = xor i32 %mul.i18, %6
  %add1.i21 = add nuw nsw i32 %xor.i20, 13
  %7 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %7, %add1.i21
  store i32 %add9, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and10 = and i32 %8, 7
  %add.i24 = add nuw nsw i32 %and10, 12
  %mul.i25 = mul nuw nsw i32 %add.i24, 3
  %9 = lshr i32 %add.i24, 1
  %xor.i27 = xor i32 %mul.i25, %9
  %add1.i28 = add nuw nsw i32 %xor.i27, 14
  %10 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %10, %add1.i28
  %add14 = add nsw i32 %add12, 84
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 3)
  %xor16 = xor i32 %add14, %call15
  store i32 %xor16, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %and17 = and i32 %11, 7
  %call18 = call noundef i32 @_ZL18packet_026_large_ai(i32 noundef %and17)
  %add19 = add nsw i32 %xor16, %call18
  store i32 %add19, ptr %total, align 4
  %call20 = call noundef i32 @_ZL18packet_026_large_bi(i32 noundef 9)
  %add21 = add nsw i32 %add19, %call20
  store i32 %add21, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %12, 7
  %call23 = call noundef i32 @_ZL18packet_026_large_ai(i32 noundef %and22)
  %add24 = add nsw i32 %add21, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 3)
  %xor26 = xor i32 %add24, %call25
  store i32 %xor26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL26packet_026_branch_variableii(i32 noundef 2, i32 noundef 12)
  %add28 = add nsw i32 %xor26, %call27
  store i32 %add28, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %and29 = and i32 %13, 3
  %and30 = and i32 %13, 7
  %call31 = call noundef i32 @_ZL26packet_026_branch_variableii(i32 noundef %and29, i32 noundef %and30)
  %add32 = add nsw i32 %add28, %call31
  store i32 %add32, ptr %total, align 4
  %call33 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 2)
  %add34 = add nsw i32 %add32, %call33
  store i32 %add34, ptr %total, align 4
  %call35 = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef 3)
  %xor36 = xor i32 %add34, %call35
  store i32 %xor36, ptr %total, align 4
  ret i32 %xor36
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_026_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_026_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_026_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = add nuw nsw i32 %and, 5
  store i32 %add, ptr %limit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %limit, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %1, %1
  %sub = add nsw i32 %mul, -5
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %sub
  store i32 %add1, ptr %s, align 4
  %and2 = and i32 %add1, 1
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %3, %4
  %5 = load i32, ptr %s, align 4
  %xor = xor i32 %5, %add4
  store i32 %xor, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_026_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %x, 3
  %mul = mul nuw nsw i32 %and, 11
  %add = add nsw i32 %mul, %x
  store i32 %add, ptr %s, align 4
  %0 = and i32 %add, 1
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %1, 1
  %2 = load i32, ptr %s, align 4
  %sub = add nsw i32 %2, -3
  %storemerge = select i1 %cmp, i32 %sub, i32 %add1
  store i32 %storemerge, ptr %s, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 4
  %mul3 = mul nuw nsw i32 %and2, 12
  %add4 = add nsw i32 %storemerge, %mul3
  store i32 %add4, ptr %s, align 4
  %rem5 = srem i32 %add4, 3
  %cmp6 = icmp eq i32 %rem5, 0
  %4 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %4, 3
  %5 = load i32, ptr %s, align 4
  %sub8 = add nsw i32 %5, -4
  %storemerge1 = select i1 %cmp6, i32 %sub8, i32 %add10
  store i32 %storemerge1, ptr %s, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %6, 5
  %mul13 = mul nuw nsw i32 %and12, 13
  %add14 = add nsw i32 %storemerge1, %mul13
  store i32 %add14, ptr %s, align 4
  %7 = and i32 %add14, 3
  %cmp16 = icmp eq i32 %7, 0
  %8 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %8, 5
  %9 = load i32, ptr %s, align 4
  %sub18 = add nsw i32 %9, -5
  %storemerge2 = select i1 %cmp16, i32 %sub18, i32 %add20
  store i32 %storemerge2, ptr %s, align 4
  %10 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %10, 6
  %mul23 = mul nuw nsw i32 %and22, 14
  %add24 = add nsw i32 %storemerge2, %mul23
  store i32 %add24, ptr %s, align 4
  %rem25 = srem i32 %add24, 5
  %cmp26 = icmp eq i32 %rem25, 0
  %11 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %11, 7
  %12 = load i32, ptr %s, align 4
  %sub28 = add nsw i32 %12, -6
  %storemerge3 = select i1 %cmp26, i32 %sub28, i32 %add30
  store i32 %storemerge3, ptr %s, align 4
  ret i32 %storemerge3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_026_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %and = and i32 %mode, 3
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 6
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %1, 14
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %3, -6
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
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
