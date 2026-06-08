; ModuleID = './out/rewritten_ir/student_knn/source_snapshot_DCMTK_generated_inlining_generated_006.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_006.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_006_entry(i32 noundef %x) #0 {
entry:
  %retval.i4 = alloca i32, align 4
  %mode.addr.i5 = alloca i32, align 4
  %x.addr.i6 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %x.addr.i1 = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 7, ptr %total, align 4
  %add1 = add nsw i32 %x, 1
  %call2 = call noundef i32 @_ZL19packet_006_branch_1ii(i32 noundef 1, i32 noundef %add1)
  %add3 = add nsw i32 %call2, 7
  store i32 %add3, ptr %total, align 4
  %call4 = call noundef i32 @_ZL19packet_006_medium_2i(i32 noundef 2)
  %add5 = add nsw i32 %add3, %call4
  store i32 %add5, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %0, 3
  %call7 = call noundef i32 @_ZL18packet_006_large_bi(i32 noundef %add6)
  %add8 = add nsw i32 %add5, %call7
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i1)
  store i32 1, ptr %mode.addr.i, align 4
  store i32 4, ptr %x.addr.i1, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %cmp1.i = icmp eq i32 %1, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %entry
  %2 = load i32, ptr %x.addr.i1, align 4
  %mul.i = shl nsw i32 %2, 2
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_1.exit

if.end3.i:                                        ; preds = %entry
  %3 = load i32, ptr %mode.addr.i, align 4
  %cmp4.i = icmp eq i32 %3, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %4 = load i32, ptr %x.addr.i1, align 4
  %sub.i = add nsw i32 %4, -4
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_1.exit

if.end6.i:                                        ; preds = %if.end3.i
  %5 = load i32, ptr %x.addr.i1, align 4
  %6 = load i32, ptr %mode.addr.i, align 4
  %add7.i = add nsw i32 %5, %6
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_1.exit: ; preds = %if.then2.i, %if.then5.i, %if.end6.i
  %7 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i1)
  %8 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %8, %7
  store i32 %add10, ptr %total, align 4
  %call11 = call noundef i32 @_ZL20packet_006_recursivei(i32 noundef 1)
  %add12 = add nsw i32 %add10, %call11
  %add14 = add nsw i32 %add12, 11
  store i32 %add14, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add15 = add nsw i32 %9, 7
  %call16 = call noundef i32 @_ZL19packet_006_branch_7ii(i32 noundef 1, i32 noundef %add15)
  %add17 = add nsw i32 %add14, %call16
  store i32 %add17, ptr %total, align 4
  %call18 = call noundef i32 @_ZL19packet_006_medium_0i(i32 noundef 1)
  %add19 = add nsw i32 %add17, %call18
  store i32 %add19, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %add20 = add nsw i32 %10, 9
  %call21 = call noundef i32 @_ZL18packet_006_large_bi(i32 noundef %add20)
  %add22 = add nsw i32 %add19, %call21
  store i32 %add22, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i6)
  store i32 1, ptr %mode.addr.i5, align 4
  store i32 3, ptr %x.addr.i6, align 4
  %11 = load i32, ptr %mode.addr.i5, align 4
  %cmp1.i10 = icmp eq i32 %11, 1
  br i1 %cmp1.i10, label %if.then2.i13, label %if.end3.i15

if.then2.i13:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_1.exit
  %12 = load i32, ptr %x.addr.i6, align 4
  %mul.i12 = shl nsw i32 %12, 2
  store i32 %mul.i12, ptr %retval.i4, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_3.exit

if.end3.i15:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_1.exit
  %13 = load i32, ptr %mode.addr.i5, align 4
  %cmp4.i14 = icmp eq i32 %13, 2
  br i1 %cmp4.i14, label %if.then5.i17, label %if.end6.i19

if.then5.i17:                                     ; preds = %if.end3.i15
  %14 = load i32, ptr %x.addr.i6, align 4
  %sub.i16 = add nsw i32 %14, -4
  store i32 %sub.i16, ptr %retval.i4, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_3.exit

if.end6.i19:                                      ; preds = %if.end3.i15
  %15 = load i32, ptr %x.addr.i6, align 4
  %16 = load i32, ptr %mode.addr.i5, align 4
  %add7.i18 = add nsw i32 %15, %16
  store i32 %add7.i18, ptr %retval.i4, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_006_3.exit: ; preds = %if.then2.i13, %if.then5.i17, %if.end6.i19
  %17 = load i32, ptr %retval.i4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i6)
  %18 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %18, %17
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL20packet_006_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  %add28 = add nsw i32 %add26, 14
  store i32 %add28, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %add29 = add nsw i32 %19, 13
  %call30 = call noundef i32 @_ZL19packet_006_branch_5ii(i32 noundef 1, i32 noundef %add29)
  %add31 = add nsw i32 %add28, %call30
  store i32 %add31, ptr %total, align 4
  %call32 = call noundef i32 @_ZL19packet_006_medium_6i(i32 noundef 0)
  %add33 = add nsw i32 %add31, %call32
  store i32 %add33, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add34 = add nsw i32 %20, 15
  %call35 = call noundef i32 @_ZL18packet_006_large_bi(i32 noundef %add34)
  %add36 = add nsw i32 %add33, %call35
  store i32 %add36, ptr %total, align 4
  ret i32 %add36
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_006_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 8
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %out, align 4
  %xor = xor i32 %2, 10
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_006_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 11
  store i32 %add, ptr %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %add1 = add nsw i32 %0, %and
  %2 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %2, %add1
  store i32 %add2, ptr %y, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %y, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18packet_006_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %x, ptr %s, align 4
  %and = and i32 %x, 3
  %add = add nuw nsw i32 %and, 6
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
  %sub = add nsw i32 %mul, -2
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
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_006_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_006_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_006_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_006_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %4, -6
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %5 = load i32, ptr %x.addr, align 4
  %6 = load i32, ptr %mode.addr, align 4
  %add7 = add nsw i32 %5, %6
  store i32 %add7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_006_medium_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 9
  store i32 %add, ptr %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %add1 = add nsw i32 %0, %and
  %2 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %2, %add1
  store i32 %add2, ptr %y, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %y, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_006_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %xor = xor i32 %2, 14
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19packet_006_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 4
  store i32 %add, ptr %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %add1 = add nsw i32 %0, %and
  %2 = load i32, ptr %y, align 4
  %add2 = add nsw i32 %2, %add1
  store i32 %add2, ptr %y, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %y, align 4
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
