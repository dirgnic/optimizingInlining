; ModuleID = './out/rewritten_ir/student_knn/source_snapshot_DCMTK_generated_inlining_generated_065.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_065.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_065_entry(i32 noundef %x) #0 {
entry:
  %retval.i38 = alloca i32, align 4
  %mode.addr.i39 = alloca i32, align 4
  %x.addr.i40 = alloca i32, align 4
  %mode.addr.i26 = alloca i32, align 4
  %out.i28 = alloca i32, align 4
  %retval.i14 = alloca i32, align 4
  %x.addr.i16 = alloca i32, align 4
  %retval.i6 = alloca i32, align 4
  %x.addr.i8 = alloca i32, align 4
  %mode.addr.i1 = alloca i32, align 4
  %out.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  store i32 10, ptr %x.addr.i, align 4
  %0 = load i32, ptr %x.addr.i, align 4
  %add.i = add nsw i32 %0, 12
  store i32 %add.i, ptr %retval.i, align 4
  %1 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  %2 = load i32, ptr %total, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 1, ptr %mode.addr.i1, align 4
  store i32 0, ptr %out.i, align 4
  %3 = load i32, ptr %out.i, align 4
  %add.i4 = add nsw i32 %3, 3
  store i32 %add.i4, ptr %out.i, align 4
  %4 = load i32, ptr %mode.addr.i1, align 4
  %and1.i = and i32 %4, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %5 = load i32, ptr %out.i, align 4
  %xor.i5 = xor i32 %5, 12
  store i32 %xor.i5, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit: ; preds = %entry, %if.then3.i
  %6 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %7 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %7, %6
  store i32 %add2, ptr %total, align 4
  %call3 = call noundef i32 @_ZL18image_065_branch_2ii(i32 noundef 2, i32 noundef 1)
  %add4 = add nsw i32 %add2, %call3
  store i32 %add4, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i8)
  store i32 2, ptr %x.addr.i8, align 4
  %8 = load i32, ptr %x.addr.i8, align 4
  %add.i9 = add nsw i32 %8, 6
  store i32 %add.i9, ptr %retval.i6, align 4
  %9 = load i32, ptr %retval.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i8)
  %10 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %10, %9
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i16)
  store i32 3, ptr %x.addr.i16, align 4
  %11 = load i32, ptr %x.addr.i16, align 4
  %xor.i20 = xor i32 %11, 6
  store i32 %xor.i20, ptr %retval.i14, align 4
  %12 = load i32, ptr %retval.i14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i16)
  %13 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %13, %12
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i28)
  store i32 2, ptr %mode.addr.i26, align 4
  store i32 4, ptr %out.i28, align 4
  %14 = load i32, ptr %mode.addr.i26, align 4
  %and1.i33 = and i32 %14, 2
  %tobool2.i34.not = icmp eq i32 %and1.i33, 0
  br i1 %tobool2.i34.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_4.exit, label %if.then3.i37

if.then3.i37:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit
  %15 = load i32, ptr %out.i28, align 4
  %xor.i36 = xor i32 %15, 16
  store i32 %xor.i36, ptr %out.i28, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_4.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_4.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_1.exit, %if.then3.i37
  %16 = load i32, ptr %out.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i28)
  %17 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %17, %16
  store i32 %add10, ptr %total, align 4
  %call11 = call noundef i32 @_ZL18image_065_branch_6ii(i32 noundef 0, i32 noundef 5)
  %add12 = add nsw i32 %add10, %call11
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i39)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i40)
  store i32 1, ptr %mode.addr.i39, align 4
  store i32 6, ptr %x.addr.i40, align 4
  %18 = load i32, ptr %mode.addr.i39, align 4
  %cmp1.i44 = icmp eq i32 %18, 1
  br i1 %cmp1.i44, label %if.then2.i47, label %if.end3.i49

if.then2.i47:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_4.exit
  %19 = load i32, ptr %x.addr.i40, align 4
  %mul.i46 = shl nsw i32 %19, 1
  store i32 %mul.i46, ptr %retval.i38, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_5.exit

if.end3.i49:                                      ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_4.exit
  %20 = load i32, ptr %mode.addr.i39, align 4
  %cmp4.i48 = icmp eq i32 %20, 2
  br i1 %cmp4.i48, label %if.then5.i51, label %if.end6.i53

if.then5.i51:                                     ; preds = %if.end3.i49
  %21 = load i32, ptr %x.addr.i40, align 4
  %sub.i50 = add nsw i32 %21, -5
  store i32 %sub.i50, ptr %retval.i38, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_5.exit

if.end6.i53:                                      ; preds = %if.end3.i49
  %22 = load i32, ptr %x.addr.i40, align 4
  %23 = load i32, ptr %mode.addr.i39, align 4
  %add7.i52 = add nsw i32 %22, %23
  store i32 %add7.i52, ptr %retval.i38, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_5.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_065_5.exit: ; preds = %if.then2.i47, %if.then5.i51, %if.end6.i53
  %24 = load i32, ptr %retval.i38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i39)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i40)
  %25 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %25, %24
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @_ZL25image_065_branch_variableii(i32 noundef 2, i32 noundef 7)
  %add16 = add nsw i32 %add14, %call15
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL25image_065_branch_variableii(i32 noundef 0, i32 noundef 8)
  %add18 = add nsw i32 %add16, %call17
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL25image_065_branch_variableii(i32 noundef 1, i32 noundef 9)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL25image_065_branch_variableii(i32 noundef 2, i32 noundef 10)
  %add22 = add nsw i32 %add20, %call21
  store i32 %add22, ptr %total, align 4
  %call23 = call noundef i32 @_ZL17image_065_large_ai(i32 noundef 0)
  %add24 = add nsw i32 %add22, %call23
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL17image_065_large_bi(i32 noundef 1)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL19image_065_recursivei(i32 noundef 2)
  %add28 = add nsw i32 %add26, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL19image_065_recursivei(i32 noundef 3)
  %add30 = add nsw i32 %add28, %call29
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_065_branch_2ii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL18image_065_branch_6ii(i32 noundef %mode, i32 noundef %x) #1 {
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
define internal noundef i32 @_ZL25image_065_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 3
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
  %sub = add nsw i32 %4, -3
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
define internal noundef i32 @_ZL17image_065_large_ai(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %storemerge, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %i, align 4
  %xor = xor i32 %0, %1
  %2 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %2, %xor
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_065_large_bi(i32 noundef %x) #1 {
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
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_065_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_065_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_065_recursivei(i32 noundef %sub1)
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
