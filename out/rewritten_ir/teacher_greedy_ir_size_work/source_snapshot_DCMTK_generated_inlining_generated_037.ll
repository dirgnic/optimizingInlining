; ModuleID = './out/rewritten_ir/teacher_greedy_ir_size_work/source_snapshot_DCMTK_generated_inlining_generated_037.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_037.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_037_step(i32 noundef %x) #0 {
entry:
  %retval.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %x.addr.i5 = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 45, ptr %total, align 4
  %and = and i32 %x, 3
  %and1 = and i32 %x, 7
  %call2 = call noundef i32 @_ZL18image_037_branch_1ii(i32 noundef %and, i32 noundef %and1)
  %add3 = add nsw i32 %call2, 45
  store i32 %add3, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and5 = and i32 %0, 1
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %1, 7
  %call7 = call noundef i32 @_ZL18image_037_medium_2i(i32 noundef %and6)
  %2 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %2, %call7
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call9 = call noundef i32 @_ZL17image_037_large_bi(i32 noundef 1)
  %3 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %3, %call9
  store i32 %add10, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %and11 = and i32 %4, 7
  %call12 = call noundef i32 @_ZL25image_037_branch_variableii(i32 noundef 1, i32 noundef %and11)
  %add13 = add nsw i32 %add10, %call12
  store i32 %add13, ptr %total, align 4
  %5 = and i32 %4, 1
  %tobool16.not.not = icmp eq i32 %5, 0
  br i1 %tobool16.not.not, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end
  %call18 = call noundef i32 @_ZL19image_037_recursivei(i32 noundef 1)
  %6 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %6, %call18
  store i32 %add19, ptr %total, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end
  %7 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %7, 40
  store i32 %add22, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %8, 3
  %and24 = and i32 %8, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i5)
  store i32 %and23, ptr %mode.addr.i, align 4
  store i32 %and24, ptr %x.addr.i5, align 4
  %cmp.i = icmp eq i32 %and23, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end20
  %9 = load i32, ptr %x.addr.i5, align 4
  %add.i = add nsw i32 %9, 9
  store i32 %add.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit

if.end.i:                                         ; preds = %if.end20
  %10 = load i32, ptr %mode.addr.i, align 4
  %cmp1.i = icmp eq i32 %10, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %11 = load i32, ptr %x.addr.i5, align 4
  %mul.i = shl nsw i32 %11, 1
  store i32 %mul.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit

if.end3.i:                                        ; preds = %if.end.i
  %12 = load i32, ptr %mode.addr.i, align 4
  %cmp4.i = icmp eq i32 %12, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %13 = load i32, ptr %x.addr.i5, align 4
  %sub.i = add nsw i32 %13, -7
  store i32 %sub.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit

if.end6.i:                                        ; preds = %if.end3.i
  %14 = load i32, ptr %x.addr.i5, align 4
  %15 = load i32, ptr %mode.addr.i, align 4
  %add7.i = add nsw i32 %14, %15
  store i32 %add7.i, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit: ; preds = %if.then.i, %if.then2.i, %if.then5.i, %if.end6.i
  %16 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i5)
  %17 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %17, %16
  store i32 %add26, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %and28 = and i32 %18, 1
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit
  %19 = load i32, ptr %x.addr, align 4
  %and31 = and i32 %19, 7
  %call32 = call noundef i32 @_ZL18image_037_medium_0i(i32 noundef %and31)
  %20 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %20, %call32
  store i32 %add33, ptr %total, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_037_3.exit
  %call35 = call noundef i32 @_ZL17image_037_large_bi(i32 noundef 7)
  %21 = load i32, ptr %total, align 4
  %add36 = add nsw i32 %21, %call35
  store i32 %add36, ptr %total, align 4
  %22 = load i32, ptr %x.addr, align 4
  %and37 = and i32 %22, 7
  %call38 = call noundef i32 @_ZL25image_037_branch_variableii(i32 noundef 3, i32 noundef %and37)
  %add39 = add nsw i32 %add36, %call38
  store i32 %add39, ptr %total, align 4
  %23 = and i32 %22, 1
  %tobool42.not.not = icmp eq i32 %23, 0
  br i1 %tobool42.not.not, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end34
  %call44 = call noundef i32 @_ZL19image_037_recursivei(i32 noundef 3)
  %24 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %24, %call44
  store i32 %add45, ptr %total, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end34
  %25 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %25, 32
  store i32 %add48, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %and49 = and i32 %26, 3
  %and50 = and i32 %26, 7
  %call51 = call noundef i32 @_ZL18image_037_branch_5ii(i32 noundef %and49, i32 noundef %and50)
  %add52 = add nsw i32 %add48, %call51
  store i32 %add52, ptr %total, align 4
  %and54 = and i32 %26, 1
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end60, label %if.then56

if.then56:                                        ; preds = %if.end46
  %27 = load i32, ptr %x.addr, align 4
  %and57 = and i32 %27, 7
  %call58 = call noundef i32 @_ZL18image_037_medium_6i(i32 noundef %and57)
  %28 = load i32, ptr %total, align 4
  %add59 = add nsw i32 %28, %call58
  store i32 %add59, ptr %total, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end46
  %call61 = call noundef i32 @_ZL17image_037_large_bi(i32 noundef 0)
  %29 = load i32, ptr %total, align 4
  %add62 = add nsw i32 %29, %call61
  store i32 %add62, ptr %total, align 4
  ret i32 %add62
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_037_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %xor = xor i32 %2, 3
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_037_medium_2i(i32 noundef %x) #1 {
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
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %y, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17image_037_large_bi(i32 noundef %x) #1 {
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
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL25image_037_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 2
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
  %sub = add nsw i32 %4, -5
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

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_037_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL19image_037_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL19image_037_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
  ret i32 %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_037_medium_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 7
  store i32 %add, ptr %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 3
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
define internal noundef i32 @_ZL18image_037_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i32, ptr %out, align 4
  %xor = xor i32 %2, 7
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %out, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18image_037_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add = add nsw i32 %x, 13
  store i32 %add, ptr %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 3
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
