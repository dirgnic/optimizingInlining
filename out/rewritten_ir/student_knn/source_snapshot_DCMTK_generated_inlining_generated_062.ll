; ModuleID = './out/rewritten_ir/student_knn/source_snapshot_DCMTK_generated_inlining_generated_062.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_062.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_062_entry(i32 noundef %x) #0 {
entry:
  %call = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 0, i32 noundef 7)
  %call1 = call noundef i32 @_ZL19packet_062_medium_1i(i32 noundef 8)
  %add2 = add nsw i32 %call, %call1
  %call3 = call noundef i32 @_ZL19packet_062_medium_2i(i32 noundef 9)
  %add4 = add nsw i32 %add2, %call3
  %call5 = call noundef i32 @_ZL19packet_062_medium_3i(i32 noundef 10)
  %add6 = add nsw i32 %add4, %call5
  %call7 = call noundef i32 @_ZL19packet_062_medium_4i(i32 noundef 0)
  %add8 = add nsw i32 %add6, %call7
  %call9 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 2, i32 noundef 1)
  %add10 = add nsw i32 %add8, %call9
  %call11 = call noundef i32 @_ZL19packet_062_medium_6i(i32 noundef 2)
  %add12 = add nsw i32 %add10, %call11
  %call13 = call noundef i32 @_ZL19packet_062_medium_7i(i32 noundef 3)
  %add14 = add nsw i32 %add12, %call13
  %add16 = add nsw i32 %add14, 444730790
  %call17 = call noundef i32 @_ZL18packet_062_large_bi(i32 noundef 5)
  %add18 = add nsw i32 %add16, %call17
  %call19 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 1, i32 noundef 6)
  %add20 = add nsw i32 %add18, %call19
  %call21 = call noundef i32 @_ZL18packet_062_large_bi(i32 noundef 7)
  %add22 = add nsw i32 %add20, %call21
  %call23 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 0, i32 noundef 8)
  %add24 = add nsw i32 %add22, %call23
  %call25 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 1, i32 noundef 9)
  %add26 = add nsw i32 %add24, %call25
  %call27 = call noundef i32 @_ZL20packet_062_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  %call29 = call noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef 0, i32 noundef 0)
  %add30 = add nsw i32 %add28, %call29
  ret i32 %add30
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26packet_062_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  %add = add nsw i32 %x, 2
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
define internal noundef i32 @_ZL19packet_062_medium_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 11
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  store i32 %add1, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %2, 3
  %3 = load i32, ptr %y, align 4
  %add3 = add nsw i32 %3, %and2
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 12
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = shl i32 %3, 1
  %mul = and i32 %and2, 6
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_3i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 13
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 3
  %mul = mul nuw nsw i32 %and2, 3
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 3
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = shl i32 %3, 2
  %mul = and i32 %and2, 12
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 5
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 3
  %mul = mul nuw nsw i32 %and2, 6
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_062_medium_7i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 6
  store i32 %add, ptr %y, align 4
  %and = and i32 %x, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 1
  %1 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %1, %shr
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %sub = add nsw i32 %2, -6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %sub, %if.else ], [ %add1, %if.then ]
  store i32 %storemerge, ptr %y, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %3, 3
  %mul = mul nuw nsw i32 %and2, 7
  %add3 = add nsw i32 %storemerge, %mul
  store i32 %add3, ptr %y, align 4
  ret i32 %add3
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
