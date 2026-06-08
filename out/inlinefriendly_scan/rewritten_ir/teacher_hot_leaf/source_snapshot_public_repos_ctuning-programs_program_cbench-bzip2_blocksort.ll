; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_hot_leaf/source_snapshot_public_repos_ctuning-programs_program_cbench-bzip2_blocksort.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-bzip2/blocksort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [38 x i8] c"      %d work, %d block, ratio %5.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"    too repetitive; using fallback sorting algorithm\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"        bucket sorting ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"        depth %6d has \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%6d unresolved strings\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"        reconstructing block ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"        main sort initialise ...\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"        qsort [0x%x, 0x%x]   done %d   this %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"        %d pointers, %d sorted, %d scanned\0A\00", align 1
@incs = internal global [14 x i32] [i32 1, i32 4, i32 13, i32 40, i32 121, i32 364, i32 1093, i32 3280, i32 9841, i32 29524, i32 88573, i32 265720, i32 797161, i32 2391484], align 4

; Function Attrs: nounwind ssp uwtable
define void @BZ2_blockSort(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %block = alloca ptr, align 8
  %ftab = alloca ptr, align 8
  %nblock = alloca i32, align 4
  %verb = alloca i32, align 4
  %wfact = alloca i32, align 4
  %quadrant = alloca ptr, align 8
  %budget = alloca i32, align 4
  %budgetInit = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %ptr1 = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 8
  %0 = load ptr, ptr %ptr1, align 8
  store ptr %0, ptr %ptr, align 8
  %block2 = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 9
  %1 = load ptr, ptr %block2, align 8
  store ptr %1, ptr %block, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %ftab3 = getelementptr inbounds %struct.EState, ptr %2, i64 0, i32 6
  %3 = load ptr, ptr %ftab3, align 8
  store ptr %3, ptr %ftab, align 8
  %nblock4 = getelementptr inbounds %struct.EState, ptr %2, i64 0, i32 17
  %4 = load i32, ptr %nblock4, align 4
  store i32 %4, ptr %nblock, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %verbosity = getelementptr inbounds %struct.EState, ptr %5, i64 0, i32 28
  %6 = load i32, ptr %verbosity, align 8
  store i32 %6, ptr %verb, align 4
  %workFactor = getelementptr inbounds %struct.EState, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %workFactor, align 8
  store i32 %7, ptr %wfact, align 4
  %8 = load i32, ptr %nblock, align 4
  %cmp = icmp slt i32 %8, 10000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %s.addr, align 8
  %arr1 = getelementptr inbounds %struct.EState, ptr %9, i64 0, i32 4
  %10 = load ptr, ptr %arr1, align 8
  %arr2 = getelementptr inbounds %struct.EState, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %arr2, align 8
  %12 = load ptr, ptr %ftab, align 8
  %13 = load i32, ptr %nblock, align 4
  %14 = load i32, ptr %verb, align 4
  call void @fallbackSort(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14)
  br label %if.end33

if.else:                                          ; preds = %entry
  %15 = load i32, ptr %nblock, align 4
  %add = add nsw i32 %15, 34
  store i32 %add, ptr %i, align 4
  %and = and i32 %15, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.else
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  %17 = load ptr, ptr %block, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 %idxprom
  store ptr %arrayidx, ptr %quadrant, align 8
  %19 = load i32, ptr %wfact, align 4
  %cmp6 = icmp slt i32 %19, 1
  %spec.store.select = select i1 %cmp6, i32 1, i32 %19
  store i32 %spec.store.select, ptr %wfact, align 4
  %20 = load i32, ptr %wfact, align 4
  %cmp9 = icmp sgt i32 %20, 100
  %spec.store.select1 = select i1 %cmp9, i32 100, i32 %20
  store i32 %spec.store.select1, ptr %wfact, align 4
  %21 = load i32, ptr %nblock, align 4
  %22 = load i32, ptr %wfact, align 4
  %sub = add nsw i32 %22, -1
  %div = sdiv i32 %sub, 3
  %mul = mul nsw i32 %21, %div
  store i32 %mul, ptr %budgetInit, align 4
  store i32 %mul, ptr %budget, align 4
  %23 = load ptr, ptr %ptr, align 8
  %24 = load ptr, ptr %block, align 8
  %25 = load ptr, ptr %quadrant, align 8
  %26 = load ptr, ptr %ftab, align 8
  %27 = load i32, ptr %nblock, align 4
  %28 = load i32, ptr %verb, align 4
  call void @mainSort(ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28, ptr noundef nonnull %budget)
  %cmp12 = icmp sgt i32 %28, 2
  br i1 %cmp12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end
  %29 = load ptr, ptr @__stderrp, align 8
  %30 = load i32, ptr %budgetInit, align 4
  %31 = load i32, ptr %budget, align 4
  %sub14 = sub nsw i32 %30, %31
  %32 = load i32, ptr %nblock, align 4
  %sub15 = sub nsw i32 %30, %31
  %conv = sitofp i32 %sub15 to float
  %cmp16 = icmp eq i32 %32, 0
  %33 = load i32, ptr %nblock, align 4
  %phi.cast = sitofp i32 %33 to float
  %cond = select i1 %cmp16, float 1.000000e+00, float %phi.cast
  %div19 = fdiv float %conv, %cond
  %conv20 = fpext float %div19 to double
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str, i32 noundef %sub14, i32 noundef %32, double noundef %conv20) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end
  %34 = load i32, ptr %budget, align 4
  %cmp22 = icmp slt i32 %34, 0
  br i1 %cmp22, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.end21
  %35 = load i32, ptr %verb, align 4
  %cmp25 = icmp sgt i32 %35, 1
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then24
  %36 = load ptr, ptr @__stderrp, align 8
  %37 = call i64 @fwrite(ptr nonnull @.str.1, i64 53, i64 1, ptr %36)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24
  %38 = load ptr, ptr %s.addr, align 8
  %arr130 = getelementptr inbounds %struct.EState, ptr %38, i64 0, i32 4
  %39 = load ptr, ptr %arr130, align 8
  %arr231 = getelementptr inbounds %struct.EState, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %arr231, align 8
  %41 = load ptr, ptr %ftab, align 8
  %42 = load i32, ptr %nblock, align 4
  %43 = load i32, ptr %verb, align 4
  call void @fallbackSort(ptr noundef %39, ptr noundef %40, ptr noundef %41, i32 noundef %42, i32 noundef %43)
  br label %if.end33

if.end33:                                         ; preds = %if.end21, %if.end29, %if.then
  %44 = load ptr, ptr %s.addr, align 8
  %origPtr = getelementptr inbounds %struct.EState, ptr %44, i64 0, i32 7
  store i32 -1, ptr %origPtr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %storemerge = phi i32 [ 0, %if.end33 ], [ %inc44, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %45 = load ptr, ptr %s.addr, align 8
  %nblock34 = getelementptr inbounds %struct.EState, ptr %45, i64 0, i32 17
  %46 = load i32, ptr %nblock34, align 4
  %cmp35 = icmp slt i32 %storemerge, %46
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load ptr, ptr %ptr, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %48 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %47, i64 %idxprom37
  %49 = load i32, ptr %arrayidx38, align 4
  %cmp39 = icmp eq i32 %49, 0
  br i1 %cmp39, label %if.then41, label %for.inc

if.then41:                                        ; preds = %for.body
  %50 = load i32, ptr %i, align 4
  %51 = load ptr, ptr %s.addr, align 8
  %origPtr42 = getelementptr inbounds %struct.EState, ptr %51, i64 0, i32 7
  store i32 %50, ptr %origPtr42, align 8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %52 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %52, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then41, %for.cond
  %53 = load ptr, ptr %s.addr, align 8
  %origPtr45 = getelementptr inbounds %struct.EState, ptr %53, i64 0, i32 7
  %54 = load i32, ptr %origPtr45, align 8
  %cmp46.not = icmp eq i32 %54, -1
  br i1 %cmp46.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %for.end
  call void @BZ2_bz__AssertH__fail(i32 noundef 1003) #4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fallbackSort(ptr noundef %fmap, ptr noundef %eclass, ptr noundef %bhtab, i32 noundef %nblock, i32 noundef %verb) #0 {
entry:
  %fmap.addr = alloca ptr, align 8
  %eclass.addr = alloca ptr, align 8
  %bhtab.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %verb.addr = alloca i32, align 4
  %ftab = alloca [257 x i32], align 4
  %ftabCopy = alloca [256 x i32], align 4
  %H = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %cc = alloca i32, align 4
  %cc1 = alloca i32, align 4
  %nNotDone = alloca i32, align 4
  %nBhtab = alloca i32, align 4
  %eclass8 = alloca ptr, align 8
  store ptr %fmap, ptr %fmap.addr, align 8
  store ptr %eclass, ptr %eclass.addr, align 8
  store ptr %bhtab, ptr %bhtab.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store i32 %verb, ptr %verb.addr, align 4
  store ptr %eclass, ptr %eclass8, align 8
  %cmp = icmp sgt i32 %verb, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str.2, i64 27, i64 1, ptr %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp1 = icmp slt i32 %storemerge, 257
  br i1 %cmp1, label %for.body, label %for.cond2

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !8

for.cond2:                                        ; preds = %for.cond, %for.body4
  %storemerge1 = phi i32 [ %inc11, %for.body4 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %4 = load i32, ptr %nblock.addr, align 4
  %cmp3 = icmp slt i32 %storemerge1, %4
  br i1 %cmp3, label %for.body4, label %for.cond13

for.body4:                                        ; preds = %for.cond2
  %5 = load ptr, ptr %eclass8, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 %idxprom5
  %7 = load i8, ptr %arrayidx6, align 1
  %idxprom7 = zext i8 %7 to i64
  %arrayidx8 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom7
  %8 = load i32, ptr %arrayidx8, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, ptr %arrayidx8, align 4
  %9 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %9, 1
  br label %for.cond2, !llvm.loop !9

for.cond13:                                       ; preds = %for.cond2, %for.body15
  %storemerge2 = phi i32 [ %inc21, %for.body15 ], [ 0, %for.cond2 ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp14 = icmp slt i32 %storemerge2, 256
  br i1 %cmp14, label %for.body15, label %for.cond23

for.body15:                                       ; preds = %for.cond13
  %10 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom16
  %11 = load i32, ptr %arrayidx17, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], ptr %ftabCopy, i64 0, i64 %idxprom18
  store i32 %11, ptr %arrayidx19, align 4
  %12 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %12, 1
  br label %for.cond13, !llvm.loop !10

for.cond23:                                       ; preds = %for.cond13, %for.body25
  %storemerge3 = phi i32 [ %inc31, %for.body25 ], [ 1, %for.cond13 ]
  store i32 %storemerge3, ptr %i, align 4
  %cmp24 = icmp slt i32 %storemerge3, 257
  br i1 %cmp24, label %for.body25, label %for.cond33

for.body25:                                       ; preds = %for.cond23
  %13 = load i32, ptr %i, align 4
  %sub = add nsw i32 %13, -1
  %idxprom26 = sext i32 %sub to i64
  %arrayidx27 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom26
  %14 = load i32, ptr %arrayidx27, align 4
  %idxprom28 = sext i32 %13 to i64
  %arrayidx29 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom28
  %15 = load i32, ptr %arrayidx29, align 4
  %add = add nsw i32 %15, %14
  store i32 %add, ptr %arrayidx29, align 4
  %16 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %16, 1
  br label %for.cond23, !llvm.loop !11

for.cond33:                                       ; preds = %for.cond23, %for.body35
  %storemerge4 = phi i32 [ %inc46, %for.body35 ], [ 0, %for.cond23 ]
  store i32 %storemerge4, ptr %i, align 4
  %17 = load i32, ptr %nblock.addr, align 4
  %cmp34 = icmp slt i32 %storemerge4, %17
  br i1 %cmp34, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond33
  %18 = load ptr, ptr %eclass8, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %18, i64 %idxprom36
  %20 = load i8, ptr %arrayidx37, align 1
  %conv = zext i8 %20 to i32
  store i32 %conv, ptr %j, align 4
  %idxprom38 = zext i8 %20 to i64
  %arrayidx39 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom38
  %21 = load i32, ptr %arrayidx39, align 4
  %sub40 = add nsw i32 %21, -1
  store i32 %sub40, ptr %k, align 4
  %idxprom41 = zext i8 %20 to i64
  %arrayidx42 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom41
  store i32 %sub40, ptr %arrayidx42, align 4
  %22 = load i32, ptr %i, align 4
  %23 = load ptr, ptr %fmap.addr, align 8
  %idxprom43 = sext i32 %sub40 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %23, i64 %idxprom43
  store i32 %22, ptr %arrayidx44, align 4
  %24 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %24, 1
  br label %for.cond33, !llvm.loop !12

for.end47:                                        ; preds = %for.cond33
  %25 = load i32, ptr %nblock.addr, align 4
  %div = sdiv i32 %25, 32
  %add48 = add nsw i32 %div, 2
  store i32 %add48, ptr %nBhtab, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.body52, %for.end47
  %storemerge5 = phi i32 [ 0, %for.end47 ], [ %inc56, %for.body52 ]
  store i32 %storemerge5, ptr %i, align 4
  %26 = load i32, ptr %nBhtab, align 4
  %cmp50 = icmp slt i32 %storemerge5, %26
  br i1 %cmp50, label %for.body52, label %for.cond58

for.body52:                                       ; preds = %for.cond49
  %27 = load ptr, ptr %bhtab.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %28 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %27, i64 %idxprom53
  store i32 0, ptr %arrayidx54, align 4
  %29 = load i32, ptr %i, align 4
  %inc56 = add nsw i32 %29, 1
  br label %for.cond49, !llvm.loop !13

for.cond58:                                       ; preds = %for.cond49, %for.body61
  %storemerge6 = phi i32 [ %inc69, %for.body61 ], [ 0, %for.cond49 ]
  store i32 %storemerge6, ptr %i, align 4
  %cmp59 = icmp slt i32 %storemerge6, 256
  br i1 %cmp59, label %for.body61, label %for.cond71

for.body61:                                       ; preds = %for.cond58
  %30 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %30 to i64
  %arrayidx63 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom62
  %31 = load i32, ptr %arrayidx63, align 4
  %and = and i32 %31, 31
  %shl = shl i32 1, %and
  %32 = load ptr, ptr %bhtab.addr, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %33 to i64
  %arrayidx65 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom64
  %34 = load i32, ptr %arrayidx65, align 4
  %shr = ashr i32 %34, 5
  %idxprom66 = sext i32 %shr to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %32, i64 %idxprom66
  %35 = load i32, ptr %arrayidx67, align 4
  %or = or i32 %35, %shl
  store i32 %or, ptr %arrayidx67, align 4
  %36 = load i32, ptr %i, align 4
  %inc69 = add nsw i32 %36, 1
  br label %for.cond58, !llvm.loop !14

for.cond71:                                       ; preds = %for.cond58, %for.body74
  %storemerge7 = phi i32 [ %inc97, %for.body74 ], [ 0, %for.cond58 ]
  store i32 %storemerge7, ptr %i, align 4
  %cmp72 = icmp slt i32 %storemerge7, 32
  br i1 %cmp72, label %for.body74, label %for.end98

for.body74:                                       ; preds = %for.cond71
  %37 = load i32, ptr %nblock.addr, align 4
  %38 = load i32, ptr %i, align 4
  %mul = shl nsw i32 %38, 1
  %add75 = add nsw i32 %37, %mul
  %and76 = and i32 %add75, 31
  %shl77 = shl i32 1, %and76
  %39 = load ptr, ptr %bhtab.addr, align 8
  %40 = load i32, ptr %nblock.addr, align 4
  %41 = load i32, ptr %i, align 4
  %mul78 = shl nsw i32 %41, 1
  %add79 = add nsw i32 %40, %mul78
  %shr80 = ashr i32 %add79, 5
  %idxprom81 = sext i32 %shr80 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %39, i64 %idxprom81
  %42 = load i32, ptr %arrayidx82, align 4
  %or83 = or i32 %42, %shl77
  store i32 %or83, ptr %arrayidx82, align 4
  %43 = load i32, ptr %nblock.addr, align 4
  %44 = load i32, ptr %i, align 4
  %mul84 = shl nsw i32 %44, 1
  %add85 = add nsw i32 %43, %mul84
  %add86 = add nsw i32 %add85, 1
  %and87 = and i32 %add86, 31
  %shl88 = shl i32 1, %and87
  %neg = xor i32 %shl88, -1
  %45 = load ptr, ptr %bhtab.addr, align 8
  %46 = load i32, ptr %nblock.addr, align 4
  %47 = load i32, ptr %i, align 4
  %mul89 = shl nsw i32 %47, 1
  %add90 = add nsw i32 %46, %mul89
  %add91 = add nsw i32 %add90, 1
  %shr92 = ashr i32 %add91, 5
  %idxprom93 = sext i32 %shr92 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %45, i64 %idxprom93
  %48 = load i32, ptr %arrayidx94, align 4
  %and95 = and i32 %48, %neg
  store i32 %and95, ptr %arrayidx94, align 4
  %49 = load i32, ptr %i, align 4
  %inc97 = add nsw i32 %49, 1
  br label %for.cond71, !llvm.loop !15

for.end98:                                        ; preds = %for.cond71
  store i32 1, ptr %H, align 4
  br label %while.body

while.body:                                       ; preds = %if.end260, %for.end98
  %50 = load i32, ptr %verb.addr, align 4
  %cmp99 = icmp sgt i32 %50, 3
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %while.body
  %51 = load ptr, ptr @__stderrp, align 8
  %52 = load i32, ptr %H, align 4
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.3, i32 noundef %52) #4
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %while.body
  store i32 0, ptr %j, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %if.end123, %if.end103
  %storemerge8 = phi i32 [ 0, %if.end103 ], [ %inc127, %if.end123 ]
  store i32 %storemerge8, ptr %i, align 4
  %53 = load i32, ptr %nblock.addr, align 4
  %cmp105 = icmp slt i32 %storemerge8, %53
  br i1 %cmp105, label %for.body107, label %for.end128

for.body107:                                      ; preds = %for.cond104
  %54 = load ptr, ptr %bhtab.addr, align 8
  %55 = load i32, ptr %i, align 4
  %shr108 = ashr i32 %55, 5
  %idxprom109 = sext i32 %shr108 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %54, i64 %idxprom109
  %56 = load i32, ptr %arrayidx110, align 4
  %and111 = and i32 %55, 31
  %shl112 = shl i32 1, %and111
  %and113 = and i32 %56, %shl112
  %tobool.not = icmp eq i32 %and113, 0
  br i1 %tobool.not, label %if.end115, label %if.then114

if.then114:                                       ; preds = %for.body107
  %57 = load i32, ptr %i, align 4
  store i32 %57, ptr %j, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %for.body107
  %58 = load ptr, ptr %fmap.addr, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom116 = sext i32 %59 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %58, i64 %idxprom116
  %60 = load i32, ptr %arrayidx117, align 4
  %61 = load i32, ptr %H, align 4
  %sub118 = sub i32 %60, %61
  store i32 %sub118, ptr %k, align 4
  %cmp119 = icmp slt i32 %sub118, 0
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end115
  %62 = load i32, ptr %nblock.addr, align 4
  %63 = load i32, ptr %k, align 4
  %add122 = add nsw i32 %63, %62
  store i32 %add122, ptr %k, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end115
  %64 = load i32, ptr %j, align 4
  %65 = load ptr, ptr %eclass.addr, align 8
  %66 = load i32, ptr %k, align 4
  %idxprom124 = sext i32 %66 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %65, i64 %idxprom124
  store i32 %64, ptr %arrayidx125, align 4
  %67 = load i32, ptr %i, align 4
  %inc127 = add nsw i32 %67, 1
  br label %for.cond104, !llvm.loop !16

for.end128:                                       ; preds = %for.cond104
  store i32 0, ptr %nNotDone, align 4
  store i32 -1, ptr %r, align 4
  br label %while.body130

while.body130:                                    ; preds = %if.end254, %for.end128
  %68 = load i32, ptr %r, align 4
  br label %while.cond132

while.cond132:                                    ; preds = %while.body142, %while.body130
  %storemerge9.in = phi i32 [ %68, %while.body130 ], [ %73, %while.body142 ]
  %storemerge9 = add nsw i32 %storemerge9.in, 1
  store i32 %storemerge9, ptr %k, align 4
  %69 = load ptr, ptr %bhtab.addr, align 8
  %shr133 = ashr i32 %storemerge9, 5
  %idxprom134 = sext i32 %shr133 to i64
  %arrayidx135 = getelementptr inbounds i32, ptr %69, i64 %idxprom134
  %70 = load i32, ptr %arrayidx135, align 4
  %and136 = and i32 %storemerge9, 31
  %shl137 = shl i32 1, %and136
  %and138 = and i32 %70, %shl137
  %tobool139.not = icmp eq i32 %and138, 0
  %71 = load i32, ptr %k, align 4
  %and140 = and i32 %71, 31
  %tobool141 = icmp ne i32 %and140, 0
  %72 = select i1 %tobool139.not, i1 false, i1 %tobool141
  br i1 %72, label %while.body142, label %while.end

while.body142:                                    ; preds = %while.cond132
  %73 = load i32, ptr %k, align 4
  br label %while.cond132, !llvm.loop !17

while.end:                                        ; preds = %while.cond132
  %74 = load ptr, ptr %bhtab.addr, align 8
  %75 = load i32, ptr %k, align 4
  %shr144 = ashr i32 %75, 5
  %idxprom145 = sext i32 %shr144 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %74, i64 %idxprom145
  %76 = load i32, ptr %arrayidx146, align 4
  %and147 = and i32 %75, 31
  %shl148 = shl i32 1, %and147
  %and149 = and i32 %76, %shl148
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end172, label %while.cond152

while.cond152:                                    ; preds = %while.end, %while.body158
  %77 = load ptr, ptr %bhtab.addr, align 8
  %78 = load i32, ptr %k, align 4
  %shr153 = ashr i32 %78, 5
  %idxprom154 = sext i32 %shr153 to i64
  %arrayidx155 = getelementptr inbounds i32, ptr %77, i64 %idxprom154
  %79 = load i32, ptr %arrayidx155, align 4
  %cmp156 = icmp eq i32 %79, -1
  br i1 %cmp156, label %while.body158, label %while.cond161

while.body158:                                    ; preds = %while.cond152
  %80 = load i32, ptr %k, align 4
  %add159 = add nsw i32 %80, 32
  store i32 %add159, ptr %k, align 4
  br label %while.cond152, !llvm.loop !18

while.cond161:                                    ; preds = %while.cond152, %while.body169
  %81 = load ptr, ptr %bhtab.addr, align 8
  %82 = load i32, ptr %k, align 4
  %shr162 = ashr i32 %82, 5
  %idxprom163 = sext i32 %shr162 to i64
  %arrayidx164 = getelementptr inbounds i32, ptr %81, i64 %idxprom163
  %83 = load i32, ptr %arrayidx164, align 4
  %and165 = and i32 %82, 31
  %shl166 = shl i32 1, %and165
  %and167 = and i32 %83, %shl166
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end172, label %while.body169

while.body169:                                    ; preds = %while.cond161
  %84 = load i32, ptr %k, align 4
  %inc170 = add nsw i32 %84, 1
  store i32 %inc170, ptr %k, align 4
  br label %while.cond161, !llvm.loop !19

if.end172:                                        ; preds = %while.cond161, %while.end
  %85 = load i32, ptr %k, align 4
  %sub173 = add nsw i32 %85, -1
  store i32 %sub173, ptr %l, align 4
  %86 = load i32, ptr %nblock.addr, align 4
  %cmp174.not.not = icmp sgt i32 %85, %86
  br i1 %cmp174.not.not, label %while.end255, label %while.cond178

while.cond178:                                    ; preds = %if.end172, %while.body190
  %87 = load ptr, ptr %bhtab.addr, align 8
  %88 = load i32, ptr %k, align 4
  %shr179 = ashr i32 %88, 5
  %idxprom180 = sext i32 %shr179 to i64
  %arrayidx181 = getelementptr inbounds i32, ptr %87, i64 %idxprom180
  %89 = load i32, ptr %arrayidx181, align 4
  %and182 = and i32 %88, 31
  %shl183 = shl i32 1, %and182
  %and184 = and i32 %89, %shl183
  %tobool185.not = icmp eq i32 %and184, 0
  %90 = load i32, ptr %k, align 4
  %and187 = and i32 %90, 31
  %tobool188 = icmp ne i32 %and187, 0
  %91 = select i1 %tobool185.not, i1 %tobool188, i1 false
  br i1 %91, label %while.body190, label %while.end192

while.body190:                                    ; preds = %while.cond178
  %92 = load i32, ptr %k, align 4
  %inc191 = add nsw i32 %92, 1
  store i32 %inc191, ptr %k, align 4
  br label %while.cond178, !llvm.loop !20

while.end192:                                     ; preds = %while.cond178
  %93 = load ptr, ptr %bhtab.addr, align 8
  %94 = load i32, ptr %k, align 4
  %shr193 = ashr i32 %94, 5
  %idxprom194 = sext i32 %shr193 to i64
  %arrayidx195 = getelementptr inbounds i32, ptr %93, i64 %idxprom194
  %95 = load i32, ptr %arrayidx195, align 4
  %and196 = and i32 %94, 31
  %shl197 = shl i32 1, %and196
  %and198 = and i32 %95, %shl197
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %while.cond201, label %if.end221

while.cond201:                                    ; preds = %while.end192, %while.body207
  %96 = load ptr, ptr %bhtab.addr, align 8
  %97 = load i32, ptr %k, align 4
  %shr202 = ashr i32 %97, 5
  %idxprom203 = sext i32 %shr202 to i64
  %arrayidx204 = getelementptr inbounds i32, ptr %96, i64 %idxprom203
  %98 = load i32, ptr %arrayidx204, align 4
  %cmp205 = icmp eq i32 %98, 0
  br i1 %cmp205, label %while.body207, label %while.cond210

while.body207:                                    ; preds = %while.cond201
  %99 = load i32, ptr %k, align 4
  %add208 = add nsw i32 %99, 32
  store i32 %add208, ptr %k, align 4
  br label %while.cond201, !llvm.loop !21

while.cond210:                                    ; preds = %while.cond201, %while.body218
  %100 = load ptr, ptr %bhtab.addr, align 8
  %101 = load i32, ptr %k, align 4
  %shr211 = ashr i32 %101, 5
  %idxprom212 = sext i32 %shr211 to i64
  %arrayidx213 = getelementptr inbounds i32, ptr %100, i64 %idxprom212
  %102 = load i32, ptr %arrayidx213, align 4
  %and214 = and i32 %101, 31
  %shl215 = shl i32 1, %and214
  %and216 = and i32 %102, %shl215
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %while.body218, label %if.end221

while.body218:                                    ; preds = %while.cond210
  %103 = load i32, ptr %k, align 4
  %inc219 = add nsw i32 %103, 1
  store i32 %inc219, ptr %k, align 4
  br label %while.cond210, !llvm.loop !22

if.end221:                                        ; preds = %while.cond210, %while.end192
  %104 = load i32, ptr %k, align 4
  %sub222 = add nsw i32 %104, -1
  store i32 %sub222, ptr %r, align 4
  %105 = load i32, ptr %nblock.addr, align 4
  %cmp223.not.not = icmp sgt i32 %104, %105
  br i1 %cmp223.not.not, label %while.end255, label %if.end226

if.end226:                                        ; preds = %if.end221
  %106 = load i32, ptr %r, align 4
  %107 = load i32, ptr %l, align 4
  %cmp227 = icmp sgt i32 %106, %107
  br i1 %cmp227, label %if.then229, label %if.end254

if.then229:                                       ; preds = %if.end226
  %108 = load i32, ptr %r, align 4
  %109 = load i32, ptr %l, align 4
  %sub230 = sub nsw i32 %108, %109
  %add231 = add nsw i32 %sub230, 1
  %110 = load i32, ptr %nNotDone, align 4
  %add232 = add nsw i32 %110, %add231
  store i32 %add232, ptr %nNotDone, align 4
  %111 = load ptr, ptr %fmap.addr, align 8
  %112 = load ptr, ptr %eclass.addr, align 8
  %113 = load i32, ptr %l, align 4
  %114 = load i32, ptr %r, align 4
  call void @fallbackQSort3(ptr noundef %111, ptr noundef %112, i32 noundef %113, i32 noundef %114)
  store i32 -1, ptr %cc, align 4
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc251, %if.then229
  %storemerge10 = phi i32 [ %113, %if.then229 ], [ %inc252, %for.inc251 ]
  store i32 %storemerge10, ptr %i, align 4
  %115 = load i32, ptr %r, align 4
  %cmp234.not = icmp sgt i32 %storemerge10, %115
  br i1 %cmp234.not, label %if.end254, label %for.body236

for.body236:                                      ; preds = %for.cond233
  %116 = load ptr, ptr %eclass.addr, align 8
  %117 = load ptr, ptr %fmap.addr, align 8
  %118 = load i32, ptr %i, align 4
  %idxprom237 = sext i32 %118 to i64
  %arrayidx238 = getelementptr inbounds i32, ptr %117, i64 %idxprom237
  %119 = load i32, ptr %arrayidx238, align 4
  %idxprom239 = zext i32 %119 to i64
  %arrayidx240 = getelementptr inbounds i32, ptr %116, i64 %idxprom239
  %120 = load i32, ptr %arrayidx240, align 4
  store i32 %120, ptr %cc1, align 4
  %121 = load i32, ptr %cc, align 4
  %cmp241.not = icmp eq i32 %121, %120
  br i1 %cmp241.not, label %for.inc251, label %if.then243

if.then243:                                       ; preds = %for.body236
  %122 = load i32, ptr %i, align 4
  %and244 = and i32 %122, 31
  %shl245 = shl i32 1, %and244
  %123 = load ptr, ptr %bhtab.addr, align 8
  %shr246 = ashr i32 %122, 5
  %idxprom247 = sext i32 %shr246 to i64
  %arrayidx248 = getelementptr inbounds i32, ptr %123, i64 %idxprom247
  %124 = load i32, ptr %arrayidx248, align 4
  %or249 = or i32 %124, %shl245
  store i32 %or249, ptr %arrayidx248, align 4
  %125 = load i32, ptr %cc1, align 4
  store i32 %125, ptr %cc, align 4
  br label %for.inc251

for.inc251:                                       ; preds = %for.body236, %if.then243
  %126 = load i32, ptr %i, align 4
  %inc252 = add nsw i32 %126, 1
  br label %for.cond233, !llvm.loop !23

if.end254:                                        ; preds = %for.cond233, %if.end226
  br label %while.body130

while.end255:                                     ; preds = %if.end221, %if.end172
  %127 = load i32, ptr %verb.addr, align 4
  %cmp256 = icmp sgt i32 %127, 3
  br i1 %cmp256, label %if.then258, label %if.end260

if.then258:                                       ; preds = %while.end255
  %128 = load ptr, ptr @__stderrp, align 8
  %129 = load i32, ptr %nNotDone, align 4
  %call259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.4, i32 noundef %129) #4
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %while.end255
  %130 = load i32, ptr %H, align 4
  %mul261 = shl nsw i32 %130, 1
  store i32 %mul261, ptr %H, align 4
  %131 = load i32, ptr %nblock.addr, align 4
  %cmp262 = icmp sgt i32 %mul261, %131
  %132 = load i32, ptr %nNotDone, align 4
  %cmp264 = icmp eq i32 %132, 0
  %or.cond = select i1 %cmp262, i1 true, i1 %cmp264
  br i1 %or.cond, label %while.end268, label %while.body

while.end268:                                     ; preds = %if.end260
  %133 = load i32, ptr %verb.addr, align 4
  %cmp269 = icmp sgt i32 %133, 3
  br i1 %cmp269, label %if.then271, label %if.end273

if.then271:                                       ; preds = %while.end268
  %134 = load ptr, ptr @__stderrp, align 8
  %135 = call i64 @fwrite(ptr nonnull @.str.5, i64 33, i64 1, ptr %134)
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %while.end268
  store i32 0, ptr %j, align 4
  br label %for.cond274

for.cond274:                                      ; preds = %while.end284, %if.end273
  %storemerge11 = phi i32 [ 0, %if.end273 ], [ %inc293, %while.end284 ]
  store i32 %storemerge11, ptr %i, align 4
  %136 = load i32, ptr %nblock.addr, align 4
  %cmp275 = icmp slt i32 %storemerge11, %136
  br i1 %cmp275, label %while.cond, label %for.end294

while.cond:                                       ; preds = %for.cond274, %while.body282
  %137 = load i32, ptr %j, align 4
  %idxprom278 = sext i32 %137 to i64
  %arrayidx279 = getelementptr inbounds [256 x i32], ptr %ftabCopy, i64 0, i64 %idxprom278
  %138 = load i32, ptr %arrayidx279, align 4
  %cmp280 = icmp eq i32 %138, 0
  br i1 %cmp280, label %while.body282, label %while.end284

while.body282:                                    ; preds = %while.cond
  %139 = load i32, ptr %j, align 4
  %inc283 = add nsw i32 %139, 1
  store i32 %inc283, ptr %j, align 4
  br label %while.cond, !llvm.loop !24

while.end284:                                     ; preds = %while.cond
  %140 = load i32, ptr %j, align 4
  %idxprom285 = sext i32 %140 to i64
  %arrayidx286 = getelementptr inbounds [256 x i32], ptr %ftabCopy, i64 0, i64 %idxprom285
  %141 = load i32, ptr %arrayidx286, align 4
  %dec = add nsw i32 %141, -1
  store i32 %dec, ptr %arrayidx286, align 4
  %conv287 = trunc i32 %140 to i8
  %142 = load ptr, ptr %eclass8, align 8
  %143 = load ptr, ptr %fmap.addr, align 8
  %144 = load i32, ptr %i, align 4
  %idxprom288 = sext i32 %144 to i64
  %arrayidx289 = getelementptr inbounds i32, ptr %143, i64 %idxprom288
  %145 = load i32, ptr %arrayidx289, align 4
  %idxprom290 = zext i32 %145 to i64
  %arrayidx291 = getelementptr inbounds i8, ptr %142, i64 %idxprom290
  store i8 %conv287, ptr %arrayidx291, align 1
  %146 = load i32, ptr %i, align 4
  %inc293 = add nsw i32 %146, 1
  br label %for.cond274, !llvm.loop !25

for.end294:                                       ; preds = %for.cond274
  %147 = load i32, ptr %j, align 4
  %cmp295 = icmp slt i32 %147, 256
  br i1 %cmp295, label %if.end298, label %if.then297

if.then297:                                       ; preds = %for.end294
  call void @BZ2_bz__AssertH__fail(i32 noundef 1005) #4
  br label %if.end298

if.end298:                                        ; preds = %if.then297, %for.end294
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @mainSort(ptr noundef %ptr, ptr noundef %block, ptr noundef %quadrant, ptr noundef %ftab, i32 noundef %nblock, i32 noundef %verb, ptr noundef %budget) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %quadrant.addr = alloca ptr, align 8
  %ftab.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %verb.addr = alloca i32, align 4
  %budget.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ss = alloca i32, align 4
  %sb = alloca i32, align 4
  %runningOrder = alloca [256 x i32], align 4
  %bigDone = alloca [256 x i8], align 1
  %copyStart = alloca [256 x i32], align 4
  %copyEnd = alloca [256 x i32], align 4
  %c1 = alloca i8, align 1
  %numQSorted = alloca i32, align 4
  %s = alloca i16, align 2
  %vv = alloca i32, align 4
  %h = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %bbStart = alloca i32, align 4
  %bbSize = alloca i32, align 4
  %shifts = alloca i32, align 4
  %a2update = alloca i32, align 4
  %qVal = alloca i16, align 2
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %quadrant, ptr %quadrant.addr, align 8
  store ptr %ftab, ptr %ftab.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store i32 %verb, ptr %verb.addr, align 4
  store ptr %budget, ptr %budget.addr, align 8
  %cmp = icmp sgt i32 %verb, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str.6, i64 33, i64 1, ptr %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 65536, %if.end ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp1 = icmp sgt i32 %storemerge, -1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ftab.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %4 = load i32, ptr %i, align 4
  %dec = add nsw i32 %4, -1
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %block.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, ptr %j, align 4
  %7 = load i32, ptr %nblock.addr, align 4
  %sub = add nsw i32 %7, -1
  br label %for.cond3

for.cond3:                                        ; preds = %for.body6, %for.end
  %storemerge1 = phi i32 [ %sub, %for.end ], [ %sub59, %for.body6 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp4 = icmp sgt i32 %storemerge1, 2
  br i1 %cmp4, label %for.body6, label %for.cond61

for.body6:                                        ; preds = %for.cond3
  %8 = load ptr, ptr %quadrant.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %8, i64 %idxprom7
  store i16 0, ptr %arrayidx8, align 2
  %10 = load i32, ptr %j, align 4
  %shr = ashr i32 %10, 8
  %11 = load ptr, ptr %block.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 %idxprom9
  %13 = load i8, ptr %arrayidx10, align 1
  %conv12 = zext i8 %13 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or = or i32 %shr, %shl13
  store i32 %or, ptr %j, align 4
  %14 = load ptr, ptr %ftab.addr, align 8
  %idxprom14 = sext i32 %or to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %14, i64 %idxprom14
  %15 = load i32, ptr %arrayidx15, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %arrayidx15, align 4
  %16 = load ptr, ptr %quadrant.addr, align 8
  %17 = load i32, ptr %i, align 4
  %sub16 = add nsw i32 %17, -1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %16, i64 %idxprom17
  store i16 0, ptr %arrayidx18, align 2
  %18 = load i32, ptr %j, align 4
  %shr19 = ashr i32 %18, 8
  %19 = load ptr, ptr %block.addr, align 8
  %20 = load i32, ptr %i, align 4
  %sub20 = add nsw i32 %20, -1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %19, i64 %idxprom21
  %21 = load i8, ptr %arrayidx22, align 1
  %conv24 = zext i8 %21 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %or26 = or i32 %shr19, %shl25
  store i32 %or26, ptr %j, align 4
  %22 = load ptr, ptr %ftab.addr, align 8
  %idxprom27 = sext i32 %or26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %22, i64 %idxprom27
  %23 = load i32, ptr %arrayidx28, align 4
  %inc29 = add i32 %23, 1
  store i32 %inc29, ptr %arrayidx28, align 4
  %24 = load ptr, ptr %quadrant.addr, align 8
  %25 = load i32, ptr %i, align 4
  %sub30 = add nsw i32 %25, -2
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %24, i64 %idxprom31
  store i16 0, ptr %arrayidx32, align 2
  %26 = load i32, ptr %j, align 4
  %shr33 = ashr i32 %26, 8
  %27 = load ptr, ptr %block.addr, align 8
  %28 = load i32, ptr %i, align 4
  %sub34 = add nsw i32 %28, -2
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %27, i64 %idxprom35
  %29 = load i8, ptr %arrayidx36, align 1
  %conv38 = zext i8 %29 to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %or40 = or i32 %shr33, %shl39
  store i32 %or40, ptr %j, align 4
  %30 = load ptr, ptr %ftab.addr, align 8
  %idxprom41 = sext i32 %or40 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %30, i64 %idxprom41
  %31 = load i32, ptr %arrayidx42, align 4
  %inc43 = add i32 %31, 1
  store i32 %inc43, ptr %arrayidx42, align 4
  %32 = load ptr, ptr %quadrant.addr, align 8
  %33 = load i32, ptr %i, align 4
  %sub44 = add nsw i32 %33, -3
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds i16, ptr %32, i64 %idxprom45
  store i16 0, ptr %arrayidx46, align 2
  %34 = load i32, ptr %j, align 4
  %shr47 = ashr i32 %34, 8
  %35 = load ptr, ptr %block.addr, align 8
  %36 = load i32, ptr %i, align 4
  %sub48 = add nsw i32 %36, -3
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %35, i64 %idxprom49
  %37 = load i8, ptr %arrayidx50, align 1
  %conv52 = zext i8 %37 to i32
  %shl53 = shl nuw nsw i32 %conv52, 8
  %or54 = or i32 %shr47, %shl53
  store i32 %or54, ptr %j, align 4
  %38 = load ptr, ptr %ftab.addr, align 8
  %idxprom55 = sext i32 %or54 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %38, i64 %idxprom55
  %39 = load i32, ptr %arrayidx56, align 4
  %inc57 = add i32 %39, 1
  store i32 %inc57, ptr %arrayidx56, align 4
  %40 = load i32, ptr %i, align 4
  %sub59 = add nsw i32 %40, -4
  br label %for.cond3, !llvm.loop !27

for.cond61:                                       ; preds = %for.cond3, %for.body64
  %41 = load i32, ptr %i, align 4
  %cmp62 = icmp sgt i32 %41, -1
  br i1 %cmp62, label %for.body64, label %for.cond80

for.body64:                                       ; preds = %for.cond61
  %42 = load ptr, ptr %quadrant.addr, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %43 to i64
  %arrayidx66 = getelementptr inbounds i16, ptr %42, i64 %idxprom65
  store i16 0, ptr %arrayidx66, align 2
  %44 = load i32, ptr %j, align 4
  %shr67 = ashr i32 %44, 8
  %45 = load ptr, ptr %block.addr, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom68 = sext i32 %46 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %45, i64 %idxprom68
  %47 = load i8, ptr %arrayidx69, align 1
  %conv71 = zext i8 %47 to i32
  %shl72 = shl nuw nsw i32 %conv71, 8
  %or73 = or i32 %shr67, %shl72
  store i32 %or73, ptr %j, align 4
  %48 = load ptr, ptr %ftab.addr, align 8
  %idxprom74 = sext i32 %or73 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %48, i64 %idxprom74
  %49 = load i32, ptr %arrayidx75, align 4
  %inc76 = add i32 %49, 1
  store i32 %inc76, ptr %arrayidx75, align 4
  %50 = load i32, ptr %i, align 4
  %dec78 = add nsw i32 %50, -1
  store i32 %dec78, ptr %i, align 4
  br label %for.cond61, !llvm.loop !28

for.cond80:                                       ; preds = %for.cond61, %for.body83
  %storemerge2 = phi i32 [ %inc92, %for.body83 ], [ 0, %for.cond61 ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp81 = icmp slt i32 %storemerge2, 34
  br i1 %cmp81, label %for.body83, label %for.end93

for.body83:                                       ; preds = %for.cond80
  %51 = load ptr, ptr %block.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %52 to i64
  %arrayidx85 = getelementptr inbounds i8, ptr %51, i64 %idxprom84
  %53 = load i8, ptr %arrayidx85, align 1
  %54 = load i32, ptr %nblock.addr, align 4
  %add = add nsw i32 %54, %52
  %idxprom86 = sext i32 %add to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %51, i64 %idxprom86
  store i8 %53, ptr %arrayidx87, align 1
  %55 = load ptr, ptr %quadrant.addr, align 8
  %56 = load i32, ptr %i, align 4
  %add88 = add nsw i32 %54, %56
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds i16, ptr %55, i64 %idxprom89
  store i16 0, ptr %arrayidx90, align 2
  %57 = load i32, ptr %i, align 4
  %inc92 = add nsw i32 %57, 1
  br label %for.cond80, !llvm.loop !29

for.end93:                                        ; preds = %for.cond80
  %58 = load i32, ptr %verb.addr, align 4
  %cmp94 = icmp sgt i32 %58, 3
  br i1 %cmp94, label %if.then96, label %if.end98

if.then96:                                        ; preds = %for.end93
  %59 = load ptr, ptr @__stderrp, align 8
  %60 = call i64 @fwrite(ptr nonnull @.str.2, i64 27, i64 1, ptr %59)
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %for.end93
  br label %for.cond99

for.cond99:                                       ; preds = %for.body102, %if.end98
  %storemerge3 = phi i32 [ 1, %if.end98 ], [ %inc110, %for.body102 ]
  store i32 %storemerge3, ptr %i, align 4
  %cmp100 = icmp slt i32 %storemerge3, 65537
  br i1 %cmp100, label %for.body102, label %for.end111

for.body102:                                      ; preds = %for.cond99
  %61 = load ptr, ptr %ftab.addr, align 8
  %62 = load i32, ptr %i, align 4
  %sub103 = add nsw i32 %62, -1
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds i32, ptr %61, i64 %idxprom104
  %63 = load i32, ptr %arrayidx105, align 4
  %idxprom106 = sext i32 %62 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %61, i64 %idxprom106
  %64 = load i32, ptr %arrayidx107, align 4
  %add108 = add i32 %64, %63
  store i32 %add108, ptr %arrayidx107, align 4
  %65 = load i32, ptr %i, align 4
  %inc110 = add nsw i32 %65, 1
  br label %for.cond99, !llvm.loop !30

for.end111:                                       ; preds = %for.cond99
  %66 = load ptr, ptr %block.addr, align 8
  %67 = load i8, ptr %66, align 1
  %conv113 = zext i8 %67 to i16
  %shl114 = shl nuw i16 %conv113, 8
  store i16 %shl114, ptr %s, align 2
  %68 = load i32, ptr %nblock.addr, align 4
  %sub116 = add nsw i32 %68, -1
  br label %for.cond117

for.cond117:                                      ; preds = %for.body120, %for.end111
  %storemerge4 = phi i32 [ %sub116, %for.end111 ], [ %sub188, %for.body120 ]
  store i32 %storemerge4, ptr %i, align 4
  %cmp118 = icmp sgt i32 %storemerge4, 2
  br i1 %cmp118, label %for.body120, label %for.cond190

for.body120:                                      ; preds = %for.cond117
  %69 = load i16, ptr %s, align 2
  %70 = load ptr, ptr %block.addr, align 8
  %71 = load i32, ptr %i, align 4
  %idxprom123 = sext i32 %71 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %70, i64 %idxprom123
  %72 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %72 to i16
  %or127 = call i16 @llvm.fshl.i16(i16 %conv125, i16 %69, i16 8)
  store i16 %or127, ptr %s, align 2
  %73 = load ptr, ptr %ftab.addr, align 8
  %idxprom129 = zext i16 %or127 to i64
  %arrayidx130 = getelementptr inbounds i32, ptr %73, i64 %idxprom129
  %74 = load i32, ptr %arrayidx130, align 4
  %sub131 = add i32 %74, -1
  store i32 %sub131, ptr %j, align 4
  %75 = load i16, ptr %s, align 2
  %idxprom132 = zext i16 %75 to i64
  %arrayidx133 = getelementptr inbounds i32, ptr %73, i64 %idxprom132
  store i32 %sub131, ptr %arrayidx133, align 4
  %76 = load i32, ptr %i, align 4
  %77 = load ptr, ptr %ptr.addr, align 8
  %78 = load i32, ptr %j, align 4
  %idxprom134 = sext i32 %78 to i64
  %arrayidx135 = getelementptr inbounds i32, ptr %77, i64 %idxprom134
  store i32 %76, ptr %arrayidx135, align 4
  %79 = load i16, ptr %s, align 2
  %80 = load ptr, ptr %block.addr, align 8
  %81 = load i32, ptr %i, align 4
  %sub138 = add nsw i32 %81, -1
  %idxprom139 = sext i32 %sub138 to i64
  %arrayidx140 = getelementptr inbounds i8, ptr %80, i64 %idxprom139
  %82 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %82 to i16
  %or143 = call i16 @llvm.fshl.i16(i16 %conv141, i16 %79, i16 8)
  store i16 %or143, ptr %s, align 2
  %83 = load ptr, ptr %ftab.addr, align 8
  %idxprom145 = zext i16 %or143 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %83, i64 %idxprom145
  %84 = load i32, ptr %arrayidx146, align 4
  %sub147 = add i32 %84, -1
  store i32 %sub147, ptr %j, align 4
  %85 = load i16, ptr %s, align 2
  %idxprom148 = zext i16 %85 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %83, i64 %idxprom148
  store i32 %sub147, ptr %arrayidx149, align 4
  %86 = load i32, ptr %i, align 4
  %sub150 = add nsw i32 %86, -1
  %87 = load ptr, ptr %ptr.addr, align 8
  %88 = load i32, ptr %j, align 4
  %idxprom151 = sext i32 %88 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %87, i64 %idxprom151
  store i32 %sub150, ptr %arrayidx152, align 4
  %89 = load i16, ptr %s, align 2
  %90 = load ptr, ptr %block.addr, align 8
  %91 = load i32, ptr %i, align 4
  %sub155 = add nsw i32 %91, -2
  %idxprom156 = sext i32 %sub155 to i64
  %arrayidx157 = getelementptr inbounds i8, ptr %90, i64 %idxprom156
  %92 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %92 to i16
  %or160 = call i16 @llvm.fshl.i16(i16 %conv158, i16 %89, i16 8)
  store i16 %or160, ptr %s, align 2
  %93 = load ptr, ptr %ftab.addr, align 8
  %idxprom162 = zext i16 %or160 to i64
  %arrayidx163 = getelementptr inbounds i32, ptr %93, i64 %idxprom162
  %94 = load i32, ptr %arrayidx163, align 4
  %sub164 = add i32 %94, -1
  store i32 %sub164, ptr %j, align 4
  %95 = load i16, ptr %s, align 2
  %idxprom165 = zext i16 %95 to i64
  %arrayidx166 = getelementptr inbounds i32, ptr %93, i64 %idxprom165
  store i32 %sub164, ptr %arrayidx166, align 4
  %96 = load i32, ptr %i, align 4
  %sub167 = add nsw i32 %96, -2
  %97 = load ptr, ptr %ptr.addr, align 8
  %98 = load i32, ptr %j, align 4
  %idxprom168 = sext i32 %98 to i64
  %arrayidx169 = getelementptr inbounds i32, ptr %97, i64 %idxprom168
  store i32 %sub167, ptr %arrayidx169, align 4
  %99 = load i16, ptr %s, align 2
  %100 = load ptr, ptr %block.addr, align 8
  %101 = load i32, ptr %i, align 4
  %sub172 = add nsw i32 %101, -3
  %idxprom173 = sext i32 %sub172 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %100, i64 %idxprom173
  %102 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %102 to i16
  %or177 = call i16 @llvm.fshl.i16(i16 %conv175, i16 %99, i16 8)
  store i16 %or177, ptr %s, align 2
  %103 = load ptr, ptr %ftab.addr, align 8
  %idxprom179 = zext i16 %or177 to i64
  %arrayidx180 = getelementptr inbounds i32, ptr %103, i64 %idxprom179
  %104 = load i32, ptr %arrayidx180, align 4
  %sub181 = add i32 %104, -1
  store i32 %sub181, ptr %j, align 4
  %105 = load i16, ptr %s, align 2
  %idxprom182 = zext i16 %105 to i64
  %arrayidx183 = getelementptr inbounds i32, ptr %103, i64 %idxprom182
  store i32 %sub181, ptr %arrayidx183, align 4
  %106 = load i32, ptr %i, align 4
  %sub184 = add nsw i32 %106, -3
  %107 = load ptr, ptr %ptr.addr, align 8
  %108 = load i32, ptr %j, align 4
  %idxprom185 = sext i32 %108 to i64
  %arrayidx186 = getelementptr inbounds i32, ptr %107, i64 %idxprom185
  store i32 %sub184, ptr %arrayidx186, align 4
  %109 = load i32, ptr %i, align 4
  %sub188 = add nsw i32 %109, -4
  br label %for.cond117, !llvm.loop !31

for.cond190:                                      ; preds = %for.cond117, %for.body193
  %110 = load i32, ptr %i, align 4
  %cmp191 = icmp sgt i32 %110, -1
  br i1 %cmp191, label %for.body193, label %for.cond212

for.body193:                                      ; preds = %for.cond190
  %111 = load i16, ptr %s, align 2
  %112 = load ptr, ptr %block.addr, align 8
  %113 = load i32, ptr %i, align 4
  %idxprom196 = sext i32 %113 to i64
  %arrayidx197 = getelementptr inbounds i8, ptr %112, i64 %idxprom196
  %114 = load i8, ptr %arrayidx197, align 1
  %conv198 = zext i8 %114 to i16
  %or200 = call i16 @llvm.fshl.i16(i16 %conv198, i16 %111, i16 8)
  store i16 %or200, ptr %s, align 2
  %115 = load ptr, ptr %ftab.addr, align 8
  %idxprom202 = zext i16 %or200 to i64
  %arrayidx203 = getelementptr inbounds i32, ptr %115, i64 %idxprom202
  %116 = load i32, ptr %arrayidx203, align 4
  %sub204 = add i32 %116, -1
  store i32 %sub204, ptr %j, align 4
  %117 = load i16, ptr %s, align 2
  %idxprom205 = zext i16 %117 to i64
  %arrayidx206 = getelementptr inbounds i32, ptr %115, i64 %idxprom205
  store i32 %sub204, ptr %arrayidx206, align 4
  %118 = load i32, ptr %i, align 4
  %119 = load ptr, ptr %ptr.addr, align 8
  %120 = load i32, ptr %j, align 4
  %idxprom207 = sext i32 %120 to i64
  %arrayidx208 = getelementptr inbounds i32, ptr %119, i64 %idxprom207
  store i32 %118, ptr %arrayidx208, align 4
  %121 = load i32, ptr %i, align 4
  %dec210 = add nsw i32 %121, -1
  store i32 %dec210, ptr %i, align 4
  br label %for.cond190, !llvm.loop !32

for.cond212:                                      ; preds = %for.cond190, %for.body215
  %storemerge5 = phi i32 [ %inc221, %for.body215 ], [ 0, %for.cond190 ]
  store i32 %storemerge5, ptr %i, align 4
  %cmp213 = icmp slt i32 %storemerge5, 256
  br i1 %cmp213, label %for.body215, label %for.end222

for.body215:                                      ; preds = %for.cond212
  %122 = load i32, ptr %i, align 4
  %idxprom216 = sext i32 %122 to i64
  %arrayidx217 = getelementptr inbounds [256 x i8], ptr %bigDone, i64 0, i64 %idxprom216
  store i8 0, ptr %arrayidx217, align 1
  %idxprom218 = sext i32 %122 to i64
  %arrayidx219 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom218
  store i32 %122, ptr %arrayidx219, align 4
  %123 = load i32, ptr %i, align 4
  %inc221 = add nsw i32 %123, 1
  br label %for.cond212, !llvm.loop !33

for.end222:                                       ; preds = %for.cond212
  store i32 1, ptr %h, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %for.end222
  %124 = load i32, ptr %h, align 4
  %mul = mul nsw i32 %124, 3
  %add223 = add nsw i32 %mul, 1
  store i32 %add223, ptr %h, align 4
  %125 = load i32, ptr %h, align 4
  %cmp224 = icmp slt i32 %125, 257
  br i1 %cmp224, label %do.body, label %do.body226, !llvm.loop !34

do.body226:                                       ; preds = %do.body, %do.cond273
  %126 = load i32, ptr %h, align 4
  %div = sdiv i32 %126, 3
  store i32 %div, ptr %h, align 4
  br label %for.cond227

for.cond227:                                      ; preds = %zero, %do.body226
  %storemerge6 = phi i32 [ %div, %do.body226 ], [ %inc271, %zero ]
  store i32 %storemerge6, ptr %i, align 4
  %cmp228 = icmp slt i32 %storemerge6, 256
  br i1 %cmp228, label %for.body230, label %do.cond273

for.body230:                                      ; preds = %for.cond227
  %127 = load i32, ptr %i, align 4
  %idxprom231 = sext i32 %127 to i64
  %arrayidx232 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom231
  %128 = load i32, ptr %arrayidx232, align 4
  store i32 %128, ptr %vv, align 4
  store i32 %127, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body230
  %129 = load ptr, ptr %ftab.addr, align 8
  %130 = load i32, ptr %j, align 4
  %131 = load i32, ptr %h, align 4
  %sub233 = sub nsw i32 %130, %131
  %idxprom234 = sext i32 %sub233 to i64
  %arrayidx235 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom234
  %132 = load i32, ptr %arrayidx235, align 4
  %add236 = shl i32 %132, 8
  %shl237 = add i32 %add236, 256
  %idxprom238 = sext i32 %shl237 to i64
  %arrayidx239 = getelementptr inbounds i32, ptr %129, i64 %idxprom238
  %133 = load i32, ptr %arrayidx239, align 4
  %134 = load ptr, ptr %ftab.addr, align 8
  %135 = load i32, ptr %j, align 4
  %136 = load i32, ptr %h, align 4
  %sub240 = sub nsw i32 %135, %136
  %idxprom241 = sext i32 %sub240 to i64
  %arrayidx242 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom241
  %137 = load i32, ptr %arrayidx242, align 4
  %shl243 = shl i32 %137, 8
  %idxprom244 = sext i32 %shl243 to i64
  %arrayidx245 = getelementptr inbounds i32, ptr %134, i64 %idxprom244
  %138 = load i32, ptr %arrayidx245, align 4
  %sub246 = sub i32 %133, %138
  %139 = load ptr, ptr %ftab.addr, align 8
  %140 = load i32, ptr %vv, align 4
  %add247 = shl i32 %140, 8
  %shl248 = add i32 %add247, 256
  %idxprom249 = sext i32 %shl248 to i64
  %arrayidx250 = getelementptr inbounds i32, ptr %139, i64 %idxprom249
  %141 = load i32, ptr %arrayidx250, align 4
  %142 = load ptr, ptr %ftab.addr, align 8
  %143 = load i32, ptr %vv, align 4
  %shl251 = shl i32 %143, 8
  %idxprom252 = sext i32 %shl251 to i64
  %arrayidx253 = getelementptr inbounds i32, ptr %142, i64 %idxprom252
  %144 = load i32, ptr %arrayidx253, align 4
  %sub254 = sub i32 %141, %144
  %cmp255 = icmp ugt i32 %sub246, %sub254
  br i1 %cmp255, label %while.body, label %zero

while.body:                                       ; preds = %while.cond
  %145 = load i32, ptr %j, align 4
  %146 = load i32, ptr %h, align 4
  %sub257 = sub nsw i32 %145, %146
  %idxprom258 = sext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom258
  %147 = load i32, ptr %arrayidx259, align 4
  %idxprom260 = sext i32 %145 to i64
  %arrayidx261 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom260
  store i32 %147, ptr %arrayidx261, align 4
  %148 = load i32, ptr %j, align 4
  %149 = load i32, ptr %h, align 4
  %sub262 = sub nsw i32 %148, %149
  store i32 %sub262, ptr %j, align 4
  %cmp264.not.not = icmp slt i32 %sub262, %149
  br i1 %cmp264.not.not, label %zero, label %while.cond, !llvm.loop !35

zero:                                             ; preds = %while.cond, %while.body
  %150 = load i32, ptr %vv, align 4
  %151 = load i32, ptr %j, align 4
  %idxprom268 = sext i32 %151 to i64
  %arrayidx269 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom268
  store i32 %150, ptr %arrayidx269, align 4
  %152 = load i32, ptr %i, align 4
  %inc271 = add nsw i32 %152, 1
  br label %for.cond227, !llvm.loop !36

do.cond273:                                       ; preds = %for.cond227
  %153 = load i32, ptr %h, align 4
  %cmp274.not = icmp eq i32 %153, 1
  br i1 %cmp274.not, label %do.end276, label %do.body226, !llvm.loop !37

do.end276:                                        ; preds = %do.cond273
  store i32 0, ptr %numQSorted, align 4
  br label %for.cond277

for.cond277:                                      ; preds = %for.inc506, %do.end276
  %storemerge7 = phi i32 [ 0, %do.end276 ], [ %inc507, %for.inc506 ]
  store i32 %storemerge7, ptr %i, align 4
  %cmp278 = icmp slt i32 %storemerge7, 256
  br i1 %cmp278, label %for.body280, label %for.end508

for.body280:                                      ; preds = %for.cond277
  %154 = load i32, ptr %i, align 4
  %idxprom281 = sext i32 %154 to i64
  %arrayidx282 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom281
  %155 = load i32, ptr %arrayidx282, align 4
  store i32 %155, ptr %ss, align 4
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc326, %for.body280
  %storemerge8 = phi i32 [ 0, %for.body280 ], [ %inc327, %for.inc326 ]
  store i32 %storemerge8, ptr %j, align 4
  %cmp284 = icmp slt i32 %storemerge8, 256
  br i1 %cmp284, label %for.body286, label %for.end328

for.body286:                                      ; preds = %for.cond283
  %156 = load i32, ptr %j, align 4
  %157 = load i32, ptr %ss, align 4
  %cmp287.not = icmp eq i32 %156, %157
  br i1 %cmp287.not, label %for.inc326, label %if.then289

if.then289:                                       ; preds = %for.body286
  %158 = load i32, ptr %ss, align 4
  %shl290 = shl i32 %158, 8
  %159 = load i32, ptr %j, align 4
  %add291 = add nsw i32 %shl290, %159
  store i32 %add291, ptr %sb, align 4
  %160 = load ptr, ptr %ftab.addr, align 8
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds i32, ptr %160, i64 %idxprom292
  %161 = load i32, ptr %arrayidx293, align 4
  %and = and i32 %161, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then294, label %if.end321

if.then294:                                       ; preds = %if.then289
  %162 = load ptr, ptr %ftab.addr, align 8
  %163 = load i32, ptr %sb, align 4
  %idxprom295 = sext i32 %163 to i64
  %arrayidx296 = getelementptr inbounds i32, ptr %162, i64 %idxprom295
  %164 = load i32, ptr %arrayidx296, align 4
  %and297 = and i32 %164, -2097153
  store i32 %and297, ptr %lo, align 4
  %165 = load ptr, ptr %ftab.addr, align 8
  %166 = load i32, ptr %sb, align 4
  %add298 = add nsw i32 %166, 1
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds i32, ptr %165, i64 %idxprom299
  %167 = load i32, ptr %arrayidx300, align 4
  %and301 = and i32 %167, -2097153
  %sub302 = add i32 %and301, -1
  store i32 %sub302, ptr %hi, align 4
  %168 = load i32, ptr %lo, align 4
  %cmp303 = icmp sgt i32 %sub302, %168
  br i1 %cmp303, label %if.then305, label %if.end321

if.then305:                                       ; preds = %if.then294
  %169 = load i32, ptr %verb.addr, align 4
  %cmp306 = icmp sgt i32 %169, 3
  br i1 %cmp306, label %if.then308, label %if.end312

if.then308:                                       ; preds = %if.then305
  %170 = load ptr, ptr @__stderrp, align 8
  %171 = load i32, ptr %ss, align 4
  %172 = load i32, ptr %j, align 4
  %173 = load i32, ptr %numQSorted, align 4
  %174 = load i32, ptr %hi, align 4
  %175 = load i32, ptr %lo, align 4
  %sub309 = sub nsw i32 %174, %175
  %add310 = add nsw i32 %sub309, 1
  %call311 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef nonnull @.str.7, i32 noundef %171, i32 noundef %172, i32 noundef %173, i32 noundef %add310) #4
  br label %if.end312

if.end312:                                        ; preds = %if.then308, %if.then305
  %176 = load ptr, ptr %ptr.addr, align 8
  %177 = load ptr, ptr %block.addr, align 8
  %178 = load ptr, ptr %quadrant.addr, align 8
  %179 = load i32, ptr %nblock.addr, align 4
  %180 = load i32, ptr %lo, align 4
  %181 = load i32, ptr %hi, align 4
  %182 = load ptr, ptr %budget.addr, align 8
  call void @mainQSort3(ptr noundef %176, ptr noundef %177, ptr noundef %178, i32 noundef %179, i32 noundef %180, i32 noundef %181, i32 noundef 2, ptr noundef %182)
  %sub313 = sub nsw i32 %181, %180
  %add314 = add nsw i32 %sub313, 1
  %183 = load i32, ptr %numQSorted, align 4
  %add315 = add nsw i32 %183, %add314
  store i32 %add315, ptr %numQSorted, align 4
  %184 = load ptr, ptr %budget.addr, align 8
  %185 = load i32, ptr %184, align 4
  %cmp316 = icmp slt i32 %185, 0
  br i1 %cmp316, label %if.end514, label %if.end321

if.end321:                                        ; preds = %if.then294, %if.end312, %if.then289
  %186 = load ptr, ptr %ftab.addr, align 8
  %187 = load i32, ptr %sb, align 4
  %idxprom322 = sext i32 %187 to i64
  %arrayidx323 = getelementptr inbounds i32, ptr %186, i64 %idxprom322
  %188 = load i32, ptr %arrayidx323, align 4
  %or324 = or i32 %188, 2097152
  store i32 %or324, ptr %arrayidx323, align 4
  br label %for.inc326

for.inc326:                                       ; preds = %for.body286, %if.end321
  %189 = load i32, ptr %j, align 4
  %inc327 = add nsw i32 %189, 1
  br label %for.cond283, !llvm.loop !38

for.end328:                                       ; preds = %for.cond283
  %190 = load i32, ptr %ss, align 4
  %idxprom329 = sext i32 %190 to i64
  %arrayidx330 = getelementptr inbounds [256 x i8], ptr %bigDone, i64 0, i64 %idxprom329
  %191 = load i8, ptr %arrayidx330, align 1
  %tobool331.not = icmp eq i8 %191, 0
  br i1 %tobool331.not, label %if.end333, label %if.then332

if.then332:                                       ; preds = %for.end328
  call void @BZ2_bz__AssertH__fail(i32 noundef 1006) #4
  br label %if.end333

if.end333:                                        ; preds = %if.then332, %for.end328
  br label %for.cond334

for.cond334:                                      ; preds = %for.body337, %if.end333
  %storemerge9 = phi i32 [ 0, %if.end333 ], [ %inc355, %for.body337 ]
  store i32 %storemerge9, ptr %j, align 4
  %cmp335 = icmp slt i32 %storemerge9, 256
  br i1 %cmp335, label %for.body337, label %for.end356

for.body337:                                      ; preds = %for.cond334
  %192 = load ptr, ptr %ftab.addr, align 8
  %193 = load i32, ptr %j, align 4
  %shl338 = shl i32 %193, 8
  %194 = load i32, ptr %ss, align 4
  %add339 = add nsw i32 %shl338, %194
  %idxprom340 = sext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds i32, ptr %192, i64 %idxprom340
  %195 = load i32, ptr %arrayidx341, align 4
  %and342 = and i32 %195, -2097153
  %196 = load i32, ptr %j, align 4
  %idxprom343 = sext i32 %196 to i64
  %arrayidx344 = getelementptr inbounds [256 x i32], ptr %copyStart, i64 0, i64 %idxprom343
  store i32 %and342, ptr %arrayidx344, align 4
  %197 = load ptr, ptr %ftab.addr, align 8
  %shl345 = shl i32 %196, 8
  %198 = load i32, ptr %ss, align 4
  %add346 = add nsw i32 %shl345, %198
  %add347 = add nsw i32 %add346, 1
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds i32, ptr %197, i64 %idxprom348
  %199 = load i32, ptr %arrayidx349, align 4
  %and350 = and i32 %199, -2097153
  %sub351 = add i32 %and350, -1
  %200 = load i32, ptr %j, align 4
  %idxprom352 = sext i32 %200 to i64
  %arrayidx353 = getelementptr inbounds [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom352
  store i32 %sub351, ptr %arrayidx353, align 4
  %201 = load i32, ptr %j, align 4
  %inc355 = add nsw i32 %201, 1
  br label %for.cond334, !llvm.loop !39

for.end356:                                       ; preds = %for.cond334
  %202 = load ptr, ptr %ftab.addr, align 8
  %203 = load i32, ptr %ss, align 4
  %shl357 = shl i32 %203, 8
  %idxprom358 = sext i32 %shl357 to i64
  %arrayidx359 = getelementptr inbounds i32, ptr %202, i64 %idxprom358
  %204 = load i32, ptr %arrayidx359, align 4
  %and360 = and i32 %204, -2097153
  br label %for.cond361

for.cond361:                                      ; preds = %for.inc387, %for.end356
  %storemerge10 = phi i32 [ %and360, %for.end356 ], [ %inc388, %for.inc387 ]
  store i32 %storemerge10, ptr %j, align 4
  %205 = load i32, ptr %ss, align 4
  %idxprom362 = sext i32 %205 to i64
  %arrayidx363 = getelementptr inbounds [256 x i32], ptr %copyStart, i64 0, i64 %idxprom362
  %206 = load i32, ptr %arrayidx363, align 4
  %cmp364 = icmp slt i32 %storemerge10, %206
  br i1 %cmp364, label %for.body366, label %for.end389

for.body366:                                      ; preds = %for.cond361
  %207 = load ptr, ptr %ptr.addr, align 8
  %208 = load i32, ptr %j, align 4
  %idxprom367 = sext i32 %208 to i64
  %arrayidx368 = getelementptr inbounds i32, ptr %207, i64 %idxprom367
  %209 = load i32, ptr %arrayidx368, align 4
  %sub369 = add i32 %209, -1
  store i32 %sub369, ptr %k, align 4
  %cmp370 = icmp slt i32 %sub369, 0
  br i1 %cmp370, label %if.then372, label %if.end374

if.then372:                                       ; preds = %for.body366
  %210 = load i32, ptr %nblock.addr, align 4
  %211 = load i32, ptr %k, align 4
  %add373 = add nsw i32 %211, %210
  store i32 %add373, ptr %k, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.then372, %for.body366
  %212 = load ptr, ptr %block.addr, align 8
  %213 = load i32, ptr %k, align 4
  %idxprom375 = sext i32 %213 to i64
  %arrayidx376 = getelementptr inbounds i8, ptr %212, i64 %idxprom375
  %214 = load i8, ptr %arrayidx376, align 1
  store i8 %214, ptr %c1, align 1
  %idxprom377 = zext i8 %214 to i64
  %arrayidx378 = getelementptr inbounds [256 x i8], ptr %bigDone, i64 0, i64 %idxprom377
  %215 = load i8, ptr %arrayidx378, align 1
  %tobool379.not = icmp eq i8 %215, 0
  br i1 %tobool379.not, label %if.then380, label %for.inc387

if.then380:                                       ; preds = %if.end374
  %216 = load i32, ptr %k, align 4
  %217 = load ptr, ptr %ptr.addr, align 8
  %218 = load i8, ptr %c1, align 1
  %idxprom381 = zext i8 %218 to i64
  %arrayidx382 = getelementptr inbounds [256 x i32], ptr %copyStart, i64 0, i64 %idxprom381
  %219 = load i32, ptr %arrayidx382, align 4
  %inc383 = add nsw i32 %219, 1
  store i32 %inc383, ptr %arrayidx382, align 4
  %idxprom384 = sext i32 %219 to i64
  %arrayidx385 = getelementptr inbounds i32, ptr %217, i64 %idxprom384
  store i32 %216, ptr %arrayidx385, align 4
  br label %for.inc387

for.inc387:                                       ; preds = %if.end374, %if.then380
  %220 = load i32, ptr %j, align 4
  %inc388 = add nsw i32 %220, 1
  br label %for.cond361, !llvm.loop !40

for.end389:                                       ; preds = %for.cond361
  %221 = load ptr, ptr %ftab.addr, align 8
  %222 = load i32, ptr %ss, align 4
  %add390 = shl i32 %222, 8
  %shl391 = add i32 %add390, 256
  %idxprom392 = sext i32 %shl391 to i64
  %arrayidx393 = getelementptr inbounds i32, ptr %221, i64 %idxprom392
  %223 = load i32, ptr %arrayidx393, align 4
  %and394 = and i32 %223, -2097153
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc422, %for.end389
  %storemerge11.in = phi i32 [ %and394, %for.end389 ], [ %239, %for.inc422 ]
  %storemerge11 = add i32 %storemerge11.in, -1
  store i32 %storemerge11, ptr %j, align 4
  %224 = load i32, ptr %ss, align 4
  %idxprom397 = sext i32 %224 to i64
  %arrayidx398 = getelementptr inbounds [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom397
  %225 = load i32, ptr %arrayidx398, align 4
  %cmp399 = icmp sgt i32 %storemerge11, %225
  br i1 %cmp399, label %for.body401, label %for.end424

for.body401:                                      ; preds = %for.cond396
  %226 = load ptr, ptr %ptr.addr, align 8
  %227 = load i32, ptr %j, align 4
  %idxprom402 = sext i32 %227 to i64
  %arrayidx403 = getelementptr inbounds i32, ptr %226, i64 %idxprom402
  %228 = load i32, ptr %arrayidx403, align 4
  %sub404 = add i32 %228, -1
  store i32 %sub404, ptr %k, align 4
  %cmp405 = icmp slt i32 %sub404, 0
  br i1 %cmp405, label %if.then407, label %if.end409

if.then407:                                       ; preds = %for.body401
  %229 = load i32, ptr %nblock.addr, align 4
  %230 = load i32, ptr %k, align 4
  %add408 = add nsw i32 %230, %229
  store i32 %add408, ptr %k, align 4
  br label %if.end409

if.end409:                                        ; preds = %if.then407, %for.body401
  %231 = load ptr, ptr %block.addr, align 8
  %232 = load i32, ptr %k, align 4
  %idxprom410 = sext i32 %232 to i64
  %arrayidx411 = getelementptr inbounds i8, ptr %231, i64 %idxprom410
  %233 = load i8, ptr %arrayidx411, align 1
  store i8 %233, ptr %c1, align 1
  %idxprom412 = zext i8 %233 to i64
  %arrayidx413 = getelementptr inbounds [256 x i8], ptr %bigDone, i64 0, i64 %idxprom412
  %234 = load i8, ptr %arrayidx413, align 1
  %tobool414.not = icmp eq i8 %234, 0
  br i1 %tobool414.not, label %if.then415, label %for.inc422

if.then415:                                       ; preds = %if.end409
  %235 = load i32, ptr %k, align 4
  %236 = load ptr, ptr %ptr.addr, align 8
  %237 = load i8, ptr %c1, align 1
  %idxprom416 = zext i8 %237 to i64
  %arrayidx417 = getelementptr inbounds [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom416
  %238 = load i32, ptr %arrayidx417, align 4
  %dec418 = add nsw i32 %238, -1
  store i32 %dec418, ptr %arrayidx417, align 4
  %idxprom419 = sext i32 %238 to i64
  %arrayidx420 = getelementptr inbounds i32, ptr %236, i64 %idxprom419
  store i32 %235, ptr %arrayidx420, align 4
  br label %for.inc422

for.inc422:                                       ; preds = %if.end409, %if.then415
  %239 = load i32, ptr %j, align 4
  br label %for.cond396, !llvm.loop !41

for.end424:                                       ; preds = %for.cond396
  %240 = load i32, ptr %ss, align 4
  %idxprom425 = sext i32 %240 to i64
  %arrayidx426 = getelementptr inbounds [256 x i32], ptr %copyStart, i64 0, i64 %idxprom425
  %241 = load i32, ptr %arrayidx426, align 4
  %sub427 = add nsw i32 %241, -1
  %idxprom428 = sext i32 %240 to i64
  %arrayidx429 = getelementptr inbounds [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom428
  %242 = load i32, ptr %arrayidx429, align 4
  %cmp430 = icmp eq i32 %sub427, %242
  br i1 %cmp430, label %if.end442, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end424
  %243 = load i32, ptr %ss, align 4
  %idxprom432 = sext i32 %243 to i64
  %arrayidx433 = getelementptr inbounds [256 x i32], ptr %copyStart, i64 0, i64 %idxprom432
  %244 = load i32, ptr %arrayidx433, align 4
  %cmp434 = icmp eq i32 %244, 0
  br i1 %cmp434, label %land.lhs.true, label %if.then441

land.lhs.true:                                    ; preds = %lor.lhs.false
  %245 = load i32, ptr %ss, align 4
  %idxprom436 = sext i32 %245 to i64
  %arrayidx437 = getelementptr inbounds [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom436
  %246 = load i32, ptr %arrayidx437, align 4
  %247 = load i32, ptr %nblock.addr, align 4
  %sub438 = add nsw i32 %247, -1
  %cmp439 = icmp eq i32 %246, %sub438
  br i1 %cmp439, label %if.end442, label %if.then441

if.then441:                                       ; preds = %land.lhs.true, %lor.lhs.false
  call void @BZ2_bz__AssertH__fail(i32 noundef 1007) #4
  br label %if.end442

if.end442:                                        ; preds = %if.then441, %land.lhs.true, %for.end424
  br label %for.cond443

for.cond443:                                      ; preds = %for.body446, %if.end442
  %storemerge12 = phi i32 [ 0, %if.end442 ], [ %inc453, %for.body446 ]
  store i32 %storemerge12, ptr %j, align 4
  %cmp444 = icmp slt i32 %storemerge12, 256
  br i1 %cmp444, label %for.body446, label %for.end454

for.body446:                                      ; preds = %for.cond443
  %248 = load ptr, ptr %ftab.addr, align 8
  %249 = load i32, ptr %j, align 4
  %shl447 = shl i32 %249, 8
  %250 = load i32, ptr %ss, align 4
  %add448 = add nsw i32 %shl447, %250
  %idxprom449 = sext i32 %add448 to i64
  %arrayidx450 = getelementptr inbounds i32, ptr %248, i64 %idxprom449
  %251 = load i32, ptr %arrayidx450, align 4
  %or451 = or i32 %251, 2097152
  store i32 %or451, ptr %arrayidx450, align 4
  %252 = load i32, ptr %j, align 4
  %inc453 = add nsw i32 %252, 1
  br label %for.cond443, !llvm.loop !42

for.end454:                                       ; preds = %for.cond443
  %253 = load i32, ptr %ss, align 4
  %idxprom455 = sext i32 %253 to i64
  %arrayidx456 = getelementptr inbounds [256 x i8], ptr %bigDone, i64 0, i64 %idxprom455
  store i8 1, ptr %arrayidx456, align 1
  %254 = load i32, ptr %i, align 4
  %cmp457 = icmp slt i32 %254, 255
  br i1 %cmp457, label %if.then459, label %for.inc506

if.then459:                                       ; preds = %for.end454
  %255 = load ptr, ptr %ftab.addr, align 8
  %256 = load i32, ptr %ss, align 4
  %shl460 = shl i32 %256, 8
  %idxprom461 = sext i32 %shl460 to i64
  %arrayidx462 = getelementptr inbounds i32, ptr %255, i64 %idxprom461
  %257 = load i32, ptr %arrayidx462, align 4
  %and463 = and i32 %257, -2097153
  store i32 %and463, ptr %bbStart, align 4
  %258 = load ptr, ptr %ftab.addr, align 8
  %259 = load i32, ptr %ss, align 4
  %add464 = shl i32 %259, 8
  %shl465 = add i32 %add464, 256
  %idxprom466 = sext i32 %shl465 to i64
  %arrayidx467 = getelementptr inbounds i32, ptr %258, i64 %idxprom466
  %260 = load i32, ptr %arrayidx467, align 4
  %and468 = and i32 %260, -2097153
  %261 = load i32, ptr %bbStart, align 4
  %sub469 = sub i32 %and468, %261
  store i32 %sub469, ptr %bbSize, align 4
  br label %while.cond470

while.cond470:                                    ; preds = %while.body474, %if.then459
  %storemerge13 = phi i32 [ 0, %if.then459 ], [ %inc475, %while.body474 ]
  store i32 %storemerge13, ptr %shifts, align 4
  %262 = load i32, ptr %bbSize, align 4
  %shr471 = ashr i32 %262, %storemerge13
  %cmp472 = icmp sgt i32 %shr471, 65534
  br i1 %cmp472, label %while.body474, label %while.end476

while.body474:                                    ; preds = %while.cond470
  %263 = load i32, ptr %shifts, align 4
  %inc475 = add nsw i32 %263, 1
  br label %while.cond470, !llvm.loop !43

while.end476:                                     ; preds = %while.cond470
  %264 = load i32, ptr %bbSize, align 4
  br label %for.cond478

for.cond478:                                      ; preds = %for.inc496, %while.end476
  %storemerge14.in = phi i32 [ %264, %while.end476 ], [ %276, %for.inc496 ]
  %storemerge14 = add nsw i32 %storemerge14.in, -1
  store i32 %storemerge14, ptr %j, align 4
  %cmp479 = icmp sgt i32 %storemerge14.in, 0
  br i1 %cmp479, label %for.body481, label %for.end498

for.body481:                                      ; preds = %for.cond478
  %265 = load ptr, ptr %ptr.addr, align 8
  %266 = load i32, ptr %bbStart, align 4
  %267 = load i32, ptr %j, align 4
  %add482 = add nsw i32 %266, %267
  %idxprom483 = sext i32 %add482 to i64
  %arrayidx484 = getelementptr inbounds i32, ptr %265, i64 %idxprom483
  %268 = load i32, ptr %arrayidx484, align 4
  store i32 %268, ptr %a2update, align 4
  %269 = load i32, ptr %shifts, align 4
  %shr485 = ashr i32 %267, %269
  %conv486 = trunc i32 %shr485 to i16
  store i16 %conv486, ptr %qVal, align 2
  %270 = load ptr, ptr %quadrant.addr, align 8
  %idxprom487 = sext i32 %268 to i64
  %arrayidx488 = getelementptr inbounds i16, ptr %270, i64 %idxprom487
  store i16 %conv486, ptr %arrayidx488, align 2
  %271 = load i32, ptr %a2update, align 4
  %cmp489 = icmp slt i32 %271, 34
  br i1 %cmp489, label %if.then491, label %for.inc496

if.then491:                                       ; preds = %for.body481
  %272 = load i16, ptr %qVal, align 2
  %273 = load ptr, ptr %quadrant.addr, align 8
  %274 = load i32, ptr %a2update, align 4
  %275 = load i32, ptr %nblock.addr, align 4
  %add492 = add nsw i32 %274, %275
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds i16, ptr %273, i64 %idxprom493
  store i16 %272, ptr %arrayidx494, align 2
  br label %for.inc496

for.inc496:                                       ; preds = %for.body481, %if.then491
  %276 = load i32, ptr %j, align 4
  br label %for.cond478, !llvm.loop !44

for.end498:                                       ; preds = %for.cond478
  %277 = load i32, ptr %bbSize, align 4
  %sub499 = add nsw i32 %277, -1
  %278 = load i32, ptr %shifts, align 4
  %shr500 = ashr i32 %sub499, %278
  %cmp501 = icmp slt i32 %shr500, 65536
  br i1 %cmp501, label %for.inc506, label %if.then503

if.then503:                                       ; preds = %for.end498
  call void @BZ2_bz__AssertH__fail(i32 noundef 1002) #4
  br label %for.inc506

for.inc506:                                       ; preds = %for.end454, %if.then503, %for.end498
  %279 = load i32, ptr %i, align 4
  %inc507 = add nsw i32 %279, 1
  br label %for.cond277, !llvm.loop !45

for.end508:                                       ; preds = %for.cond277
  %280 = load i32, ptr %verb.addr, align 4
  %cmp509 = icmp sgt i32 %280, 3
  br i1 %cmp509, label %if.then511, label %if.end514

if.then511:                                       ; preds = %for.end508
  %281 = load ptr, ptr @__stderrp, align 8
  %282 = load i32, ptr %nblock.addr, align 4
  %283 = load i32, ptr %numQSorted, align 4
  %sub512 = sub nsw i32 %282, %283
  %call513 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef nonnull @.str.8, i32 noundef %282, i32 noundef %283, i32 noundef %sub512) #4
  br label %if.end514

if.end514:                                        ; preds = %if.end312, %if.then511, %for.end508
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare void @BZ2_bz__AssertH__fail(i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @fallbackQSort3(ptr noundef %fmap, ptr noundef %eclass, i32 noundef %loSt, i32 noundef %hiSt) #0 {
entry:
  %fmap.addr = alloca ptr, align 8
  %eclass.addr = alloca ptr, align 8
  %unLo = alloca i32, align 4
  %unHi = alloca i32, align 4
  %ltLo = alloca i32, align 4
  %gtHi = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %sp = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %med = alloca i32, align 4
  %r = alloca i32, align 4
  %r3 = alloca i32, align 4
  %stackLo = alloca [100 x i32], align 4
  %stackHi = alloca [100 x i32], align 4
  %zztmp = alloca i32, align 4
  %zztmp73 = alloca i32, align 4
  %zztmp93 = alloca i32, align 4
  %yyp1 = alloca i32, align 4
  %yyp2 = alloca i32, align 4
  %yyn = alloca i32, align 4
  %zztmp117 = alloca i32, align 4
  %yyp1139 = alloca i32, align 4
  %yyp2140 = alloca i32, align 4
  %yyn143 = alloca i32, align 4
  %zztmp147 = alloca i32, align 4
  store ptr %fmap, ptr %fmap.addr, align 8
  store ptr %eclass, ptr %eclass.addr, align 8
  store i32 0, ptr %r, align 4
  store i32 0, ptr %sp, align 4
  store i32 %loSt, ptr %stackLo, align 4
  store i32 %hiSt, ptr %stackHi, align 4
  store i32 1, ptr %sp, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end104, %if.end191, %if.then9, %entry
  %0 = load i32, ptr %sp, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end192

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %sp, align 4
  %cmp3 = icmp slt i32 %1, 99
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @BZ2_bz__AssertH__fail(i32 noundef 1004) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %2 = load i32, ptr %sp, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %sp, align 4
  %idxprom4 = sext i32 %dec to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom4
  %3 = load i32, ptr %arrayidx5, align 4
  store i32 %3, ptr %lo, align 4
  %idxprom6 = sext i32 %dec to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom6
  %4 = load i32, ptr %arrayidx7, align 4
  store i32 %4, ptr %hi, align 4
  %sub = sub nsw i32 %4, %3
  %cmp8 = icmp slt i32 %sub, 10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %5 = load ptr, ptr %fmap.addr, align 8
  %6 = load ptr, ptr %eclass.addr, align 8
  %7 = load i32, ptr %lo, align 4
  %8 = load i32, ptr %hi, align 4
  call void @fallbackSimpleSort(ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  br label %while.cond, !llvm.loop !46

if.end10:                                         ; preds = %if.end
  %9 = load i32, ptr %r, align 4
  %mul = mul i32 %9, 7621
  %add = add i32 %mul, 1
  %rem = and i32 %add, 32767
  store i32 %rem, ptr %r, align 4
  %rem11 = urem i32 %rem, 3
  store i32 %rem11, ptr %r3, align 4
  %cmp12 = icmp eq i32 %rem11, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %10 = load ptr, ptr %eclass.addr, align 8
  %11 = load ptr, ptr %fmap.addr, align 8
  %12 = load i32, ptr %lo, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %11, i64 %idxprom14
  %13 = load i32, ptr %arrayidx15, align 4
  %idxprom16 = zext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %10, i64 %idxprom16
  br label %if.end31

if.else:                                          ; preds = %if.end10
  %14 = load i32, ptr %r3, align 4
  %cmp18 = icmp eq i32 %14, 1
  br i1 %cmp18, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.else
  %15 = load ptr, ptr %eclass.addr, align 8
  %16 = load ptr, ptr %fmap.addr, align 8
  %17 = load i32, ptr %lo, align 4
  %18 = load i32, ptr %hi, align 4
  %add20 = add nsw i32 %17, %18
  %shr = ashr i32 %add20, 1
  %idxprom21 = sext i32 %shr to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %16, i64 %idxprom21
  %19 = load i32, ptr %arrayidx22, align 4
  %idxprom23 = zext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %15, i64 %idxprom23
  br label %if.end31

if.else25:                                        ; preds = %if.else
  %20 = load ptr, ptr %eclass.addr, align 8
  %21 = load ptr, ptr %fmap.addr, align 8
  %22 = load i32, ptr %hi, align 4
  %idxprom26 = sext i32 %22 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %21, i64 %idxprom26
  %23 = load i32, ptr %arrayidx27, align 4
  %idxprom28 = zext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %20, i64 %idxprom28
  br label %if.end31

if.end31:                                         ; preds = %if.then19, %if.else25, %if.then13
  %storemerge1.in = phi ptr [ %arrayidx17, %if.then13 ], [ %arrayidx29, %if.else25 ], [ %arrayidx24, %if.then19 ]
  %storemerge1 = load i32, ptr %storemerge1.in, align 4
  store i32 %storemerge1, ptr %med, align 4
  %24 = load i32, ptr %lo, align 4
  store i32 %24, ptr %ltLo, align 4
  store i32 %24, ptr %unLo, align 4
  %25 = load i32, ptr %hi, align 4
  store i32 %25, ptr %gtHi, align 4
  br label %while.body33

while.body33:                                     ; preds = %if.end92, %if.end31
  %storemerge = phi i32 [ %25, %if.end31 ], [ %dec103, %if.end92 ]
  store i32 %storemerge, ptr %unHi, align 4
  br label %while.body35

while.body35:                                     ; preds = %if.end59, %if.then45, %while.body33
  %26 = load i32, ptr %unLo, align 4
  %27 = load i32, ptr %unHi, align 4
  %cmp36 = icmp sgt i32 %26, %27
  br i1 %cmp36, label %while.end, label %if.end38

if.end38:                                         ; preds = %while.body35
  %28 = load ptr, ptr %eclass.addr, align 8
  %29 = load ptr, ptr %fmap.addr, align 8
  %30 = load i32, ptr %unLo, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %29, i64 %idxprom39
  %31 = load i32, ptr %arrayidx40, align 4
  %idxprom41 = zext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %28, i64 %idxprom41
  %32 = load i32, ptr %arrayidx42, align 4
  %33 = load i32, ptr %med, align 4
  %sub43 = sub nsw i32 %32, %33
  store i32 %sub43, ptr %n, align 4
  %cmp44 = icmp eq i32 %32, %33
  br i1 %cmp44, label %if.then45, label %if.end56

if.then45:                                        ; preds = %if.end38
  %34 = load ptr, ptr %fmap.addr, align 8
  %35 = load i32, ptr %unLo, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %34, i64 %idxprom46
  %36 = load i32, ptr %arrayidx47, align 4
  store i32 %36, ptr %zztmp, align 4
  %37 = load i32, ptr %ltLo, align 4
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %34, i64 %idxprom48
  %38 = load i32, ptr %arrayidx49, align 4
  %39 = load ptr, ptr %fmap.addr, align 8
  %40 = load i32, ptr %unLo, align 4
  %idxprom50 = sext i32 %40 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %39, i64 %idxprom50
  store i32 %38, ptr %arrayidx51, align 4
  %41 = load i32, ptr %zztmp, align 4
  %42 = load i32, ptr %ltLo, align 4
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %39, i64 %idxprom52
  store i32 %41, ptr %arrayidx53, align 4
  %inc54 = add nsw i32 %42, 1
  store i32 %inc54, ptr %ltLo, align 4
  %43 = load i32, ptr %unLo, align 4
  %inc55 = add nsw i32 %43, 1
  store i32 %inc55, ptr %unLo, align 4
  br label %while.body35

if.end56:                                         ; preds = %if.end38
  %44 = load i32, ptr %n, align 4
  %cmp57 = icmp sgt i32 %44, 0
  br i1 %cmp57, label %while.end, label %if.end59

if.end59:                                         ; preds = %if.end56
  %45 = load i32, ptr %unLo, align 4
  %inc60 = add nsw i32 %45, 1
  store i32 %inc60, ptr %unLo, align 4
  br label %while.body35

while.end:                                        ; preds = %if.end56, %while.body35
  br label %while.body62

while.body62:                                     ; preds = %if.end87, %if.then72, %while.end
  %46 = load i32, ptr %unLo, align 4
  %47 = load i32, ptr %unHi, align 4
  %cmp63 = icmp sgt i32 %46, %47
  br i1 %cmp63, label %while.end89, label %if.end65

if.end65:                                         ; preds = %while.body62
  %48 = load ptr, ptr %eclass.addr, align 8
  %49 = load ptr, ptr %fmap.addr, align 8
  %50 = load i32, ptr %unHi, align 4
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %49, i64 %idxprom66
  %51 = load i32, ptr %arrayidx67, align 4
  %idxprom68 = zext i32 %51 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %48, i64 %idxprom68
  %52 = load i32, ptr %arrayidx69, align 4
  %53 = load i32, ptr %med, align 4
  %sub70 = sub nsw i32 %52, %53
  store i32 %sub70, ptr %n, align 4
  %cmp71 = icmp eq i32 %52, %53
  br i1 %cmp71, label %if.then72, label %if.end84

if.then72:                                        ; preds = %if.end65
  %54 = load ptr, ptr %fmap.addr, align 8
  %55 = load i32, ptr %unHi, align 4
  %idxprom74 = sext i32 %55 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %54, i64 %idxprom74
  %56 = load i32, ptr %arrayidx75, align 4
  store i32 %56, ptr %zztmp73, align 4
  %57 = load i32, ptr %gtHi, align 4
  %idxprom76 = sext i32 %57 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %54, i64 %idxprom76
  %58 = load i32, ptr %arrayidx77, align 4
  %59 = load ptr, ptr %fmap.addr, align 8
  %60 = load i32, ptr %unHi, align 4
  %idxprom78 = sext i32 %60 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %59, i64 %idxprom78
  store i32 %58, ptr %arrayidx79, align 4
  %61 = load i32, ptr %zztmp73, align 4
  %62 = load i32, ptr %gtHi, align 4
  %idxprom80 = sext i32 %62 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %59, i64 %idxprom80
  store i32 %61, ptr %arrayidx81, align 4
  %dec82 = add nsw i32 %62, -1
  store i32 %dec82, ptr %gtHi, align 4
  %63 = load i32, ptr %unHi, align 4
  %dec83 = add nsw i32 %63, -1
  store i32 %dec83, ptr %unHi, align 4
  br label %while.body62

if.end84:                                         ; preds = %if.end65
  %64 = load i32, ptr %n, align 4
  %cmp85 = icmp slt i32 %64, 0
  br i1 %cmp85, label %while.end89, label %if.end87

if.end87:                                         ; preds = %if.end84
  %65 = load i32, ptr %unHi, align 4
  %dec88 = add nsw i32 %65, -1
  store i32 %dec88, ptr %unHi, align 4
  br label %while.body62

while.end89:                                      ; preds = %if.end84, %while.body62
  %66 = load i32, ptr %unLo, align 4
  %67 = load i32, ptr %unHi, align 4
  %cmp90 = icmp sgt i32 %66, %67
  br i1 %cmp90, label %while.end104, label %if.end92

if.end92:                                         ; preds = %while.end89
  %68 = load ptr, ptr %fmap.addr, align 8
  %69 = load i32, ptr %unLo, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %68, i64 %idxprom94
  %70 = load i32, ptr %arrayidx95, align 4
  store i32 %70, ptr %zztmp93, align 4
  %71 = load i32, ptr %unHi, align 4
  %idxprom96 = sext i32 %71 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %68, i64 %idxprom96
  %72 = load i32, ptr %arrayidx97, align 4
  %73 = load ptr, ptr %fmap.addr, align 8
  %74 = load i32, ptr %unLo, align 4
  %idxprom98 = sext i32 %74 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %73, i64 %idxprom98
  store i32 %72, ptr %arrayidx99, align 4
  %75 = load i32, ptr %zztmp93, align 4
  %76 = load i32, ptr %unHi, align 4
  %idxprom100 = sext i32 %76 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %73, i64 %idxprom100
  store i32 %75, ptr %arrayidx101, align 4
  %77 = load i32, ptr %unLo, align 4
  %inc102 = add nsw i32 %77, 1
  store i32 %inc102, ptr %unLo, align 4
  %78 = load i32, ptr %unHi, align 4
  %dec103 = add nsw i32 %78, -1
  br label %while.body33

while.end104:                                     ; preds = %while.end89
  %79 = load i32, ptr %gtHi, align 4
  %80 = load i32, ptr %ltLo, align 4
  %cmp105 = icmp slt i32 %79, %80
  br i1 %cmp105, label %while.cond, label %if.end107, !llvm.loop !46

if.end107:                                        ; preds = %while.end104
  %81 = load i32, ptr %ltLo, align 4
  %82 = load i32, ptr %lo, align 4
  %sub108 = sub nsw i32 %81, %82
  %83 = load i32, ptr %unLo, align 4
  %sub109 = sub nsw i32 %83, %81
  %cmp110 = icmp slt i32 %sub108, %sub109
  br i1 %cmp110, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end107
  %84 = load i32, ptr %ltLo, align 4
  %85 = load i32, ptr %lo, align 4
  %sub111 = sub nsw i32 %84, %85
  br label %cond.end

cond.false:                                       ; preds = %if.end107
  %86 = load i32, ptr %unLo, align 4
  %87 = load i32, ptr %ltLo, align 4
  %sub112 = sub nsw i32 %86, %87
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub111, %cond.true ], [ %sub112, %cond.false ]
  store i32 %cond, ptr %n, align 4
  %88 = load i32, ptr %lo, align 4
  store i32 %88, ptr %yyp1, align 4
  %89 = load i32, ptr %unLo, align 4
  %sub113 = sub nsw i32 %89, %cond
  store i32 %sub113, ptr %yyp2, align 4
  br label %while.cond114

while.cond114:                                    ; preds = %while.body116, %cond.end
  %storemerge2 = phi i32 [ %cond, %cond.end ], [ %dec128, %while.body116 ]
  store i32 %storemerge2, ptr %yyn, align 4
  %cmp115 = icmp sgt i32 %storemerge2, 0
  br i1 %cmp115, label %while.body116, label %while.end129

while.body116:                                    ; preds = %while.cond114
  %90 = load ptr, ptr %fmap.addr, align 8
  %91 = load i32, ptr %yyp1, align 4
  %idxprom118 = sext i32 %91 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %90, i64 %idxprom118
  %92 = load i32, ptr %arrayidx119, align 4
  store i32 %92, ptr %zztmp117, align 4
  %93 = load i32, ptr %yyp2, align 4
  %idxprom120 = sext i32 %93 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %90, i64 %idxprom120
  %94 = load i32, ptr %arrayidx121, align 4
  %95 = load ptr, ptr %fmap.addr, align 8
  %96 = load i32, ptr %yyp1, align 4
  %idxprom122 = sext i32 %96 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %95, i64 %idxprom122
  store i32 %94, ptr %arrayidx123, align 4
  %97 = load i32, ptr %zztmp117, align 4
  %98 = load i32, ptr %yyp2, align 4
  %idxprom124 = sext i32 %98 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %95, i64 %idxprom124
  store i32 %97, ptr %arrayidx125, align 4
  %99 = load i32, ptr %yyp1, align 4
  %inc126 = add nsw i32 %99, 1
  store i32 %inc126, ptr %yyp1, align 4
  %100 = load i32, ptr %yyp2, align 4
  %inc127 = add nsw i32 %100, 1
  store i32 %inc127, ptr %yyp2, align 4
  %101 = load i32, ptr %yyn, align 4
  %dec128 = add nsw i32 %101, -1
  br label %while.cond114, !llvm.loop !47

while.end129:                                     ; preds = %while.cond114
  %102 = load i32, ptr %hi, align 4
  %103 = load i32, ptr %gtHi, align 4
  %sub130 = sub nsw i32 %102, %103
  %104 = load i32, ptr %unHi, align 4
  %sub131 = sub nsw i32 %103, %104
  %cmp132 = icmp slt i32 %sub130, %sub131
  br i1 %cmp132, label %cond.true133, label %cond.false135

cond.true133:                                     ; preds = %while.end129
  %105 = load i32, ptr %hi, align 4
  %106 = load i32, ptr %gtHi, align 4
  %sub134 = sub nsw i32 %105, %106
  br label %cond.end137

cond.false135:                                    ; preds = %while.end129
  %107 = load i32, ptr %gtHi, align 4
  %108 = load i32, ptr %unHi, align 4
  %sub136 = sub nsw i32 %107, %108
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false135, %cond.true133
  %cond138 = phi i32 [ %sub134, %cond.true133 ], [ %sub136, %cond.false135 ]
  store i32 %cond138, ptr %m, align 4
  %109 = load i32, ptr %unLo, align 4
  store i32 %109, ptr %yyp1139, align 4
  %110 = load i32, ptr %hi, align 4
  %sub141 = sub nsw i32 %110, %cond138
  %add142 = add nsw i32 %sub141, 1
  store i32 %add142, ptr %yyp2140, align 4
  %111 = load i32, ptr %m, align 4
  br label %while.cond144

while.cond144:                                    ; preds = %while.body146, %cond.end137
  %storemerge3 = phi i32 [ %111, %cond.end137 ], [ %dec158, %while.body146 ]
  store i32 %storemerge3, ptr %yyn143, align 4
  %cmp145 = icmp sgt i32 %storemerge3, 0
  br i1 %cmp145, label %while.body146, label %while.end159

while.body146:                                    ; preds = %while.cond144
  %112 = load ptr, ptr %fmap.addr, align 8
  %113 = load i32, ptr %yyp1139, align 4
  %idxprom148 = sext i32 %113 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %112, i64 %idxprom148
  %114 = load i32, ptr %arrayidx149, align 4
  store i32 %114, ptr %zztmp147, align 4
  %115 = load i32, ptr %yyp2140, align 4
  %idxprom150 = sext i32 %115 to i64
  %arrayidx151 = getelementptr inbounds i32, ptr %112, i64 %idxprom150
  %116 = load i32, ptr %arrayidx151, align 4
  %117 = load ptr, ptr %fmap.addr, align 8
  %118 = load i32, ptr %yyp1139, align 4
  %idxprom152 = sext i32 %118 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %117, i64 %idxprom152
  store i32 %116, ptr %arrayidx153, align 4
  %119 = load i32, ptr %zztmp147, align 4
  %120 = load i32, ptr %yyp2140, align 4
  %idxprom154 = sext i32 %120 to i64
  %arrayidx155 = getelementptr inbounds i32, ptr %117, i64 %idxprom154
  store i32 %119, ptr %arrayidx155, align 4
  %121 = load i32, ptr %yyp1139, align 4
  %inc156 = add nsw i32 %121, 1
  store i32 %inc156, ptr %yyp1139, align 4
  %122 = load i32, ptr %yyp2140, align 4
  %inc157 = add nsw i32 %122, 1
  store i32 %inc157, ptr %yyp2140, align 4
  %123 = load i32, ptr %yyn143, align 4
  %dec158 = add nsw i32 %123, -1
  br label %while.cond144, !llvm.loop !48

while.end159:                                     ; preds = %while.cond144
  %124 = load i32, ptr %lo, align 4
  %125 = load i32, ptr %unLo, align 4
  %add160 = add nsw i32 %124, %125
  %126 = load i32, ptr %ltLo, align 4
  %127 = xor i32 %126, -1
  %sub162 = add i32 %add160, %127
  store i32 %sub162, ptr %n, align 4
  %128 = load i32, ptr %hi, align 4
  %129 = load i32, ptr %gtHi, align 4
  %130 = load i32, ptr %unHi, align 4
  %sub163.neg = sub i32 %130, %129
  %sub164 = add i32 %sub163.neg, %128
  %add165 = add nsw i32 %sub164, 1
  store i32 %add165, ptr %m, align 4
  %131 = load i32, ptr %n, align 4
  %132 = load i32, ptr %lo, align 4
  %sub166 = sub nsw i32 %131, %132
  %133 = load i32, ptr %hi, align 4
  %sub167 = sub nsw i32 %133, %add165
  %cmp168 = icmp sgt i32 %sub166, %sub167
  br i1 %cmp168, label %if.then169, label %if.else180

if.then169:                                       ; preds = %while.end159
  %134 = load i32, ptr %lo, align 4
  %135 = load i32, ptr %sp, align 4
  %idxprom170 = sext i32 %135 to i64
  %arrayidx171 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom170
  store i32 %134, ptr %arrayidx171, align 4
  %136 = load i32, ptr %n, align 4
  %idxprom172 = sext i32 %135 to i64
  %arrayidx173 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom172
  store i32 %136, ptr %arrayidx173, align 4
  %137 = load i32, ptr %sp, align 4
  %inc174 = add nsw i32 %137, 1
  store i32 %inc174, ptr %sp, align 4
  %138 = load i32, ptr %m, align 4
  %idxprom175 = sext i32 %inc174 to i64
  %arrayidx176 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom175
  store i32 %138, ptr %arrayidx176, align 4
  %139 = load i32, ptr %hi, align 4
  %idxprom177 = sext i32 %inc174 to i64
  %arrayidx178 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom177
  store i32 %139, ptr %arrayidx178, align 4
  %140 = load i32, ptr %sp, align 4
  br label %if.end191

if.else180:                                       ; preds = %while.end159
  %141 = load i32, ptr %m, align 4
  %142 = load i32, ptr %sp, align 4
  %idxprom181 = sext i32 %142 to i64
  %arrayidx182 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom181
  store i32 %141, ptr %arrayidx182, align 4
  %143 = load i32, ptr %hi, align 4
  %idxprom183 = sext i32 %142 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom183
  store i32 %143, ptr %arrayidx184, align 4
  %144 = load i32, ptr %sp, align 4
  %inc185 = add nsw i32 %144, 1
  store i32 %inc185, ptr %sp, align 4
  %145 = load i32, ptr %lo, align 4
  %idxprom186 = sext i32 %inc185 to i64
  %arrayidx187 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom186
  store i32 %145, ptr %arrayidx187, align 4
  %146 = load i32, ptr %n, align 4
  %idxprom188 = sext i32 %inc185 to i64
  %arrayidx189 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom188
  store i32 %146, ptr %arrayidx189, align 4
  %147 = load i32, ptr %sp, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.else180, %if.then169
  %storemerge4.in = phi i32 [ %147, %if.else180 ], [ %140, %if.then169 ]
  %storemerge4 = add nsw i32 %storemerge4.in, 1
  store i32 %storemerge4, ptr %sp, align 4
  br label %while.cond, !llvm.loop !46

while.end192:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fallbackSimpleSort(ptr noundef %fmap, ptr noundef %eclass, i32 noundef %lo, i32 noundef %hi) #0 {
entry:
  %fmap.addr = alloca ptr, align 8
  %eclass.addr = alloca ptr, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ec_tmp = alloca i32, align 4
  store ptr %fmap, ptr %fmap.addr, align 8
  store ptr %eclass, ptr %eclass.addr, align 8
  store i32 %lo, ptr %lo.addr, align 4
  store i32 %hi, ptr %hi.addr, align 4
  %cmp = icmp eq i32 %lo, %hi
  br i1 %cmp, label %for.end58, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %hi.addr, align 4
  %1 = load i32, ptr %lo.addr, align 4
  %sub = sub nsw i32 %0, %1
  %cmp1 = icmp sgt i32 %sub, 3
  br i1 %cmp1, label %if.then2, label %if.end26

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %hi.addr, align 4
  %sub3 = add nsw i32 %2, -4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.then2
  %storemerge2 = phi i32 [ %sub3, %if.then2 ], [ %dec, %for.end ]
  store i32 %storemerge2, ptr %i, align 4
  %3 = load i32, ptr %lo.addr, align 4
  %cmp4.not = icmp slt i32 %storemerge2, %3
  br i1 %cmp4.not, label %if.end26, label %for.body

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %fmap.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  store i32 %6, ptr %tmp, align 4
  %7 = load ptr, ptr %eclass.addr, align 8
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %7, i64 %idxprom5
  %8 = load i32, ptr %arrayidx6, align 4
  store i32 %8, ptr %ec_tmp, align 4
  %9 = load i32, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.body14, %for.body
  %storemerge3.in = phi i32 [ %9, %for.body ], [ %20, %for.body14 ]
  %storemerge3 = add nsw i32 %storemerge3.in, 4
  store i32 %storemerge3, ptr %j, align 4
  %10 = load i32, ptr %hi.addr, align 4
  %cmp8.not = icmp sgt i32 %storemerge3, %10
  br i1 %cmp8.not, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond7
  %11 = load i32, ptr %ec_tmp, align 4
  %12 = load ptr, ptr %eclass.addr, align 8
  %13 = load ptr, ptr %fmap.addr, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %13, i64 %idxprom9
  %15 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = zext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %12, i64 %idxprom11
  %16 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp ugt i32 %11, %16
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %land.rhs
  %17 = load ptr, ptr %fmap.addr, align 8
  %18 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %17, i64 %idxprom15
  %19 = load i32, ptr %arrayidx16, align 4
  %sub17 = add nsw i32 %18, -4
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %17, i64 %idxprom18
  store i32 %19, ptr %arrayidx19, align 4
  %20 = load i32, ptr %j, align 4
  br label %for.cond7, !llvm.loop !49

for.end:                                          ; preds = %for.cond7, %land.rhs
  %21 = load i32, ptr %tmp, align 4
  %22 = load ptr, ptr %fmap.addr, align 8
  %23 = load i32, ptr %j, align 4
  %sub21 = add nsw i32 %23, -4
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %22, i64 %idxprom22
  store i32 %21, ptr %arrayidx23, align 4
  %24 = load i32, ptr %i, align 4
  %dec = add nsw i32 %24, -1
  br label %for.cond, !llvm.loop !50

if.end26:                                         ; preds = %for.cond, %if.end
  %25 = load i32, ptr %hi.addr, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.end52, %if.end26
  %storemerge.in = phi i32 [ %25, %if.end26 ], [ %47, %for.end52 ]
  %storemerge = add nsw i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i, align 4
  %26 = load i32, ptr %lo.addr, align 4
  %cmp29.not.not = icmp sgt i32 %storemerge.in, %26
  br i1 %cmp29.not.not, label %for.body30, label %for.end58

for.body30:                                       ; preds = %for.cond28
  %27 = load ptr, ptr %fmap.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %27, i64 %idxprom31
  %29 = load i32, ptr %arrayidx32, align 4
  store i32 %29, ptr %tmp, align 4
  %30 = load ptr, ptr %eclass.addr, align 8
  %idxprom33 = sext i32 %29 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %30, i64 %idxprom33
  %31 = load i32, ptr %arrayidx34, align 4
  store i32 %31, ptr %ec_tmp, align 4
  %32 = load i32, ptr %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.body45, %for.body30
  %storemerge1.in = phi i32 [ %32, %for.body30 ], [ %43, %for.body45 ]
  %storemerge1 = add nsw i32 %storemerge1.in, 1
  store i32 %storemerge1, ptr %j, align 4
  %33 = load i32, ptr %hi.addr, align 4
  %cmp37.not.not = icmp slt i32 %storemerge1.in, %33
  br i1 %cmp37.not.not, label %land.rhs38, label %for.end52

land.rhs38:                                       ; preds = %for.cond36
  %34 = load i32, ptr %ec_tmp, align 4
  %35 = load ptr, ptr %eclass.addr, align 8
  %36 = load ptr, ptr %fmap.addr, align 8
  %37 = load i32, ptr %j, align 4
  %idxprom39 = sext i32 %37 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %36, i64 %idxprom39
  %38 = load i32, ptr %arrayidx40, align 4
  %idxprom41 = zext i32 %38 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %35, i64 %idxprom41
  %39 = load i32, ptr %arrayidx42, align 4
  %cmp43 = icmp ugt i32 %34, %39
  br i1 %cmp43, label %for.body45, label %for.end52

for.body45:                                       ; preds = %land.rhs38
  %40 = load ptr, ptr %fmap.addr, align 8
  %41 = load i32, ptr %j, align 4
  %idxprom46 = sext i32 %41 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %40, i64 %idxprom46
  %42 = load i32, ptr %arrayidx47, align 4
  %sub48 = add nsw i32 %41, -1
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %40, i64 %idxprom49
  store i32 %42, ptr %arrayidx50, align 4
  %43 = load i32, ptr %j, align 4
  br label %for.cond36, !llvm.loop !51

for.end52:                                        ; preds = %for.cond36, %land.rhs38
  %44 = load i32, ptr %tmp, align 4
  %45 = load ptr, ptr %fmap.addr, align 8
  %46 = load i32, ptr %j, align 4
  %sub53 = add nsw i32 %46, -1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %45, i64 %idxprom54
  store i32 %44, ptr %arrayidx55, align 4
  %47 = load i32, ptr %i, align 4
  br label %for.cond28, !llvm.loop !52

for.end58:                                        ; preds = %entry, %for.cond28
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @mainQSort3(ptr noundef %ptr, ptr noundef %block, ptr noundef %quadrant, i32 noundef %nblock, i32 noundef %loSt, i32 noundef %hiSt, i32 noundef %dSt, ptr noundef %budget) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %quadrant.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %budget.addr = alloca ptr, align 8
  %unLo = alloca i32, align 4
  %unHi = alloca i32, align 4
  %ltLo = alloca i32, align 4
  %gtHi = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %med = alloca i32, align 4
  %sp = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %d = alloca i32, align 4
  %stackLo = alloca [100 x i32], align 4
  %stackHi = alloca [100 x i32], align 4
  %stackD = alloca [100 x i32], align 4
  %nextLo = alloca [3 x i32], align 4
  %nextHi = alloca [3 x i32], align 4
  %nextD = alloca [3 x i32], align 4
  %zztmp = alloca i32, align 4
  %zztmp84 = alloca i32, align 4
  %zztmp106 = alloca i32, align 4
  %yyp1 = alloca i32, align 4
  %yyp2 = alloca i32, align 4
  %yyn = alloca i32, align 4
  %zztmp141 = alloca i32, align 4
  %yyp1164 = alloca i32, align 4
  %yyp2165 = alloca i32, align 4
  %yyn168 = alloca i32, align 4
  %zztmp173 = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %quadrant, ptr %quadrant.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store ptr %budget, ptr %budget.addr, align 8
  store i32 0, ptr %sp, align 4
  store i32 %loSt, ptr %stackLo, align 4
  store i32 %hiSt, ptr %stackHi, align 4
  store i32 %dSt, ptr %stackD, align 4
  store i32 1, ptr %sp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end271, %if.then120, %entry
  %.old = load i32, ptr %sp, align 4
  %cmp.old = icmp sgt i32 %.old, 0
  br i1 %cmp.old, label %while.body, label %while.end302

while.body:                                       ; preds = %if.then14, %while.cond
  %0 = load i32, ptr %sp, align 4
  %cmp5 = icmp slt i32 %0, 98
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @BZ2_bz__AssertH__fail(i32 noundef 1001) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %1 = load i32, ptr %sp, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %sp, align 4
  %idxprom6 = sext i32 %dec to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom6
  %2 = load i32, ptr %arrayidx7, align 4
  store i32 %2, ptr %lo, align 4
  %idxprom8 = sext i32 %dec to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom8
  %3 = load i32, ptr %arrayidx9, align 4
  store i32 %3, ptr %hi, align 4
  %4 = load i32, ptr %sp, align 4
  %idxprom10 = sext i32 %4 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom10
  %5 = load i32, ptr %arrayidx11, align 4
  store i32 %5, ptr %d, align 4
  %6 = load i32, ptr %lo, align 4
  %sub = sub nsw i32 %3, %6
  %cmp12 = icmp slt i32 %sub, 20
  %7 = load i32, ptr %d, align 4
  %cmp13 = icmp sgt i32 %7, 14
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %block.addr, align 8
  %10 = load ptr, ptr %quadrant.addr, align 8
  %11 = load i32, ptr %nblock.addr, align 4
  %12 = load i32, ptr %lo, align 4
  %13 = load i32, ptr %hi, align 4
  %14 = load i32, ptr %d, align 4
  %15 = load ptr, ptr %budget.addr, align 8
  call void @mainSimpleSort(ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef %15)
  %16 = load i32, ptr %15, align 4
  %cmp15 = icmp sge i32 %16, 0
  %17 = load i32, ptr %sp, align 4
  %cmp = icmp sgt i32 %17, 0
  %or.cond3 = select i1 %cmp15, i1 %cmp, i1 false
  br i1 %or.cond3, label %while.body, label %while.end302, !llvm.loop !53

if.end18:                                         ; preds = %if.end
  %18 = load ptr, ptr %block.addr, align 8
  %19 = load ptr, ptr %ptr.addr, align 8
  %20 = load i32, ptr %lo, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %19, i64 %idxprom19
  %21 = load i32, ptr %arrayidx20, align 4
  %22 = load i32, ptr %d, align 4
  %add = add i32 %21, %22
  %idxprom21 = zext i32 %add to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %18, i64 %idxprom21
  %23 = load i8, ptr %arrayidx22, align 1
  %24 = load ptr, ptr %block.addr, align 8
  %25 = load ptr, ptr %ptr.addr, align 8
  %26 = load i32, ptr %hi, align 4
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %25, i64 %idxprom23
  %27 = load i32, ptr %arrayidx24, align 4
  %28 = load i32, ptr %d, align 4
  %add25 = add i32 %27, %28
  %idxprom26 = zext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 %idxprom26
  %29 = load i8, ptr %arrayidx27, align 1
  %30 = load ptr, ptr %block.addr, align 8
  %31 = load ptr, ptr %ptr.addr, align 8
  %32 = load i32, ptr %lo, align 4
  %33 = load i32, ptr %hi, align 4
  %add28 = add nsw i32 %32, %33
  %shr = ashr i32 %add28, 1
  %idxprom29 = sext i32 %shr to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %31, i64 %idxprom29
  %34 = load i32, ptr %arrayidx30, align 4
  %35 = load i32, ptr %d, align 4
  %add31 = add i32 %34, %35
  %idxprom32 = zext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %30, i64 %idxprom32
  %36 = load i8, ptr %arrayidx33, align 1
  %call = call zeroext i8 @mmed3(i8 noundef zeroext %23, i8 noundef zeroext %29, i8 noundef zeroext %36)
  %conv = zext i8 %call to i32
  store i32 %conv, ptr %med, align 4
  %37 = load i32, ptr %lo, align 4
  store i32 %37, ptr %ltLo, align 4
  store i32 %37, ptr %unLo, align 4
  %38 = load i32, ptr %hi, align 4
  store i32 %38, ptr %gtHi, align 4
  br label %while.body35

while.body35:                                     ; preds = %if.end105, %if.end18
  %storemerge = phi i32 [ %38, %if.end18 ], [ %dec116, %if.end105 ]
  store i32 %storemerge, ptr %unHi, align 4
  br label %while.body37

while.body37:                                     ; preds = %if.end66, %if.then51, %while.body35
  %39 = load i32, ptr %unLo, align 4
  %40 = load i32, ptr %unHi, align 4
  %cmp38 = icmp sgt i32 %39, %40
  br i1 %cmp38, label %while.end, label %if.end41

if.end41:                                         ; preds = %while.body37
  %41 = load ptr, ptr %block.addr, align 8
  %42 = load ptr, ptr %ptr.addr, align 8
  %43 = load i32, ptr %unLo, align 4
  %idxprom42 = sext i32 %43 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %42, i64 %idxprom42
  %44 = load i32, ptr %arrayidx43, align 4
  %45 = load i32, ptr %d, align 4
  %add44 = add i32 %44, %45
  %idxprom45 = zext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %41, i64 %idxprom45
  %46 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %46 to i32
  %47 = load i32, ptr %med, align 4
  %sub48 = sub nsw i32 %conv47, %47
  store i32 %sub48, ptr %n, align 4
  %cmp49 = icmp eq i32 %47, %conv47
  br i1 %cmp49, label %if.then51, label %if.end62

if.then51:                                        ; preds = %if.end41
  %48 = load ptr, ptr %ptr.addr, align 8
  %49 = load i32, ptr %unLo, align 4
  %idxprom52 = sext i32 %49 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %48, i64 %idxprom52
  %50 = load i32, ptr %arrayidx53, align 4
  store i32 %50, ptr %zztmp, align 4
  %51 = load i32, ptr %ltLo, align 4
  %idxprom54 = sext i32 %51 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %48, i64 %idxprom54
  %52 = load i32, ptr %arrayidx55, align 4
  %53 = load ptr, ptr %ptr.addr, align 8
  %54 = load i32, ptr %unLo, align 4
  %idxprom56 = sext i32 %54 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %53, i64 %idxprom56
  store i32 %52, ptr %arrayidx57, align 4
  %55 = load i32, ptr %zztmp, align 4
  %56 = load i32, ptr %ltLo, align 4
  %idxprom58 = sext i32 %56 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %53, i64 %idxprom58
  store i32 %55, ptr %arrayidx59, align 4
  %inc60 = add nsw i32 %56, 1
  store i32 %inc60, ptr %ltLo, align 4
  %57 = load i32, ptr %unLo, align 4
  %inc61 = add nsw i32 %57, 1
  store i32 %inc61, ptr %unLo, align 4
  br label %while.body37

if.end62:                                         ; preds = %if.end41
  %58 = load i32, ptr %n, align 4
  %cmp63 = icmp sgt i32 %58, 0
  br i1 %cmp63, label %while.end, label %if.end66

if.end66:                                         ; preds = %if.end62
  %59 = load i32, ptr %unLo, align 4
  %inc67 = add nsw i32 %59, 1
  store i32 %inc67, ptr %unLo, align 4
  br label %while.body37

while.end:                                        ; preds = %if.end62, %while.body37
  br label %while.body69

while.body69:                                     ; preds = %if.end99, %if.then83, %while.end
  %60 = load i32, ptr %unLo, align 4
  %61 = load i32, ptr %unHi, align 4
  %cmp70 = icmp sgt i32 %60, %61
  br i1 %cmp70, label %while.end101, label %if.end73

if.end73:                                         ; preds = %while.body69
  %62 = load ptr, ptr %block.addr, align 8
  %63 = load ptr, ptr %ptr.addr, align 8
  %64 = load i32, ptr %unHi, align 4
  %idxprom74 = sext i32 %64 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %63, i64 %idxprom74
  %65 = load i32, ptr %arrayidx75, align 4
  %66 = load i32, ptr %d, align 4
  %add76 = add i32 %65, %66
  %idxprom77 = zext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds i8, ptr %62, i64 %idxprom77
  %67 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %67 to i32
  %68 = load i32, ptr %med, align 4
  %sub80 = sub nsw i32 %conv79, %68
  store i32 %sub80, ptr %n, align 4
  %cmp81 = icmp eq i32 %68, %conv79
  br i1 %cmp81, label %if.then83, label %if.end95

if.then83:                                        ; preds = %if.end73
  %69 = load ptr, ptr %ptr.addr, align 8
  %70 = load i32, ptr %unHi, align 4
  %idxprom85 = sext i32 %70 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %69, i64 %idxprom85
  %71 = load i32, ptr %arrayidx86, align 4
  store i32 %71, ptr %zztmp84, align 4
  %72 = load i32, ptr %gtHi, align 4
  %idxprom87 = sext i32 %72 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %69, i64 %idxprom87
  %73 = load i32, ptr %arrayidx88, align 4
  %74 = load ptr, ptr %ptr.addr, align 8
  %75 = load i32, ptr %unHi, align 4
  %idxprom89 = sext i32 %75 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %74, i64 %idxprom89
  store i32 %73, ptr %arrayidx90, align 4
  %76 = load i32, ptr %zztmp84, align 4
  %77 = load i32, ptr %gtHi, align 4
  %idxprom91 = sext i32 %77 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %74, i64 %idxprom91
  store i32 %76, ptr %arrayidx92, align 4
  %dec93 = add nsw i32 %77, -1
  store i32 %dec93, ptr %gtHi, align 4
  %78 = load i32, ptr %unHi, align 4
  %dec94 = add nsw i32 %78, -1
  store i32 %dec94, ptr %unHi, align 4
  br label %while.body69

if.end95:                                         ; preds = %if.end73
  %79 = load i32, ptr %n, align 4
  %cmp96 = icmp slt i32 %79, 0
  br i1 %cmp96, label %while.end101, label %if.end99

if.end99:                                         ; preds = %if.end95
  %80 = load i32, ptr %unHi, align 4
  %dec100 = add nsw i32 %80, -1
  store i32 %dec100, ptr %unHi, align 4
  br label %while.body69

while.end101:                                     ; preds = %if.end95, %while.body69
  %81 = load i32, ptr %unLo, align 4
  %82 = load i32, ptr %unHi, align 4
  %cmp102 = icmp sgt i32 %81, %82
  br i1 %cmp102, label %while.end117, label %if.end105

if.end105:                                        ; preds = %while.end101
  %83 = load ptr, ptr %ptr.addr, align 8
  %84 = load i32, ptr %unLo, align 4
  %idxprom107 = sext i32 %84 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %83, i64 %idxprom107
  %85 = load i32, ptr %arrayidx108, align 4
  store i32 %85, ptr %zztmp106, align 4
  %86 = load i32, ptr %unHi, align 4
  %idxprom109 = sext i32 %86 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %83, i64 %idxprom109
  %87 = load i32, ptr %arrayidx110, align 4
  %88 = load ptr, ptr %ptr.addr, align 8
  %89 = load i32, ptr %unLo, align 4
  %idxprom111 = sext i32 %89 to i64
  %arrayidx112 = getelementptr inbounds i32, ptr %88, i64 %idxprom111
  store i32 %87, ptr %arrayidx112, align 4
  %90 = load i32, ptr %zztmp106, align 4
  %91 = load i32, ptr %unHi, align 4
  %idxprom113 = sext i32 %91 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %88, i64 %idxprom113
  store i32 %90, ptr %arrayidx114, align 4
  %92 = load i32, ptr %unLo, align 4
  %inc115 = add nsw i32 %92, 1
  store i32 %inc115, ptr %unLo, align 4
  %93 = load i32, ptr %unHi, align 4
  %dec116 = add nsw i32 %93, -1
  br label %while.body35

while.end117:                                     ; preds = %while.end101
  %94 = load i32, ptr %gtHi, align 4
  %95 = load i32, ptr %ltLo, align 4
  %cmp118 = icmp slt i32 %94, %95
  br i1 %cmp118, label %if.then120, label %if.end129

if.then120:                                       ; preds = %while.end117
  %96 = load i32, ptr %lo, align 4
  %97 = load i32, ptr %sp, align 4
  %idxprom121 = sext i32 %97 to i64
  %arrayidx122 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom121
  store i32 %96, ptr %arrayidx122, align 4
  %98 = load i32, ptr %hi, align 4
  %idxprom123 = sext i32 %97 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom123
  store i32 %98, ptr %arrayidx124, align 4
  %99 = load i32, ptr %d, align 4
  %add125 = add nsw i32 %99, 1
  %100 = load i32, ptr %sp, align 4
  %idxprom126 = sext i32 %100 to i64
  %arrayidx127 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom126
  store i32 %add125, ptr %arrayidx127, align 4
  %inc128 = add nsw i32 %100, 1
  store i32 %inc128, ptr %sp, align 4
  br label %while.cond, !llvm.loop !53

if.end129:                                        ; preds = %while.end117
  %101 = load i32, ptr %ltLo, align 4
  %102 = load i32, ptr %lo, align 4
  %sub130 = sub nsw i32 %101, %102
  %103 = load i32, ptr %unLo, align 4
  %sub131 = sub nsw i32 %103, %101
  %cmp132 = icmp slt i32 %sub130, %sub131
  br i1 %cmp132, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end129
  %104 = load i32, ptr %ltLo, align 4
  %105 = load i32, ptr %lo, align 4
  %sub134 = sub nsw i32 %104, %105
  br label %cond.end

cond.false:                                       ; preds = %if.end129
  %106 = load i32, ptr %unLo, align 4
  %107 = load i32, ptr %ltLo, align 4
  %sub135 = sub nsw i32 %106, %107
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub134, %cond.true ], [ %sub135, %cond.false ]
  store i32 %cond, ptr %n, align 4
  %108 = load i32, ptr %lo, align 4
  store i32 %108, ptr %yyp1, align 4
  %109 = load i32, ptr %unLo, align 4
  %sub136 = sub nsw i32 %109, %cond
  store i32 %sub136, ptr %yyp2, align 4
  br label %while.cond137

while.cond137:                                    ; preds = %while.body140, %cond.end
  %storemerge1 = phi i32 [ %cond, %cond.end ], [ %dec152, %while.body140 ]
  store i32 %storemerge1, ptr %yyn, align 4
  %cmp138 = icmp sgt i32 %storemerge1, 0
  br i1 %cmp138, label %while.body140, label %while.end153

while.body140:                                    ; preds = %while.cond137
  %110 = load ptr, ptr %ptr.addr, align 8
  %111 = load i32, ptr %yyp1, align 4
  %idxprom142 = sext i32 %111 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %110, i64 %idxprom142
  %112 = load i32, ptr %arrayidx143, align 4
  store i32 %112, ptr %zztmp141, align 4
  %113 = load i32, ptr %yyp2, align 4
  %idxprom144 = sext i32 %113 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %110, i64 %idxprom144
  %114 = load i32, ptr %arrayidx145, align 4
  %115 = load ptr, ptr %ptr.addr, align 8
  %116 = load i32, ptr %yyp1, align 4
  %idxprom146 = sext i32 %116 to i64
  %arrayidx147 = getelementptr inbounds i32, ptr %115, i64 %idxprom146
  store i32 %114, ptr %arrayidx147, align 4
  %117 = load i32, ptr %zztmp141, align 4
  %118 = load i32, ptr %yyp2, align 4
  %idxprom148 = sext i32 %118 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %115, i64 %idxprom148
  store i32 %117, ptr %arrayidx149, align 4
  %119 = load i32, ptr %yyp1, align 4
  %inc150 = add nsw i32 %119, 1
  store i32 %inc150, ptr %yyp1, align 4
  %120 = load i32, ptr %yyp2, align 4
  %inc151 = add nsw i32 %120, 1
  store i32 %inc151, ptr %yyp2, align 4
  %121 = load i32, ptr %yyn, align 4
  %dec152 = add nsw i32 %121, -1
  br label %while.cond137, !llvm.loop !54

while.end153:                                     ; preds = %while.cond137
  %122 = load i32, ptr %hi, align 4
  %123 = load i32, ptr %gtHi, align 4
  %sub154 = sub nsw i32 %122, %123
  %124 = load i32, ptr %unHi, align 4
  %sub155 = sub nsw i32 %123, %124
  %cmp156 = icmp slt i32 %sub154, %sub155
  br i1 %cmp156, label %cond.true158, label %cond.false160

cond.true158:                                     ; preds = %while.end153
  %125 = load i32, ptr %hi, align 4
  %126 = load i32, ptr %gtHi, align 4
  %sub159 = sub nsw i32 %125, %126
  br label %cond.end162

cond.false160:                                    ; preds = %while.end153
  %127 = load i32, ptr %gtHi, align 4
  %128 = load i32, ptr %unHi, align 4
  %sub161 = sub nsw i32 %127, %128
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false160, %cond.true158
  %cond163 = phi i32 [ %sub159, %cond.true158 ], [ %sub161, %cond.false160 ]
  store i32 %cond163, ptr %m, align 4
  %129 = load i32, ptr %unLo, align 4
  store i32 %129, ptr %yyp1164, align 4
  %130 = load i32, ptr %hi, align 4
  %sub166 = sub nsw i32 %130, %cond163
  %add167 = add nsw i32 %sub166, 1
  store i32 %add167, ptr %yyp2165, align 4
  %131 = load i32, ptr %m, align 4
  br label %while.cond169

while.cond169:                                    ; preds = %while.body172, %cond.end162
  %storemerge2 = phi i32 [ %131, %cond.end162 ], [ %dec184, %while.body172 ]
  store i32 %storemerge2, ptr %yyn168, align 4
  %cmp170 = icmp sgt i32 %storemerge2, 0
  br i1 %cmp170, label %while.body172, label %while.end185

while.body172:                                    ; preds = %while.cond169
  %132 = load ptr, ptr %ptr.addr, align 8
  %133 = load i32, ptr %yyp1164, align 4
  %idxprom174 = sext i32 %133 to i64
  %arrayidx175 = getelementptr inbounds i32, ptr %132, i64 %idxprom174
  %134 = load i32, ptr %arrayidx175, align 4
  store i32 %134, ptr %zztmp173, align 4
  %135 = load i32, ptr %yyp2165, align 4
  %idxprom176 = sext i32 %135 to i64
  %arrayidx177 = getelementptr inbounds i32, ptr %132, i64 %idxprom176
  %136 = load i32, ptr %arrayidx177, align 4
  %137 = load ptr, ptr %ptr.addr, align 8
  %138 = load i32, ptr %yyp1164, align 4
  %idxprom178 = sext i32 %138 to i64
  %arrayidx179 = getelementptr inbounds i32, ptr %137, i64 %idxprom178
  store i32 %136, ptr %arrayidx179, align 4
  %139 = load i32, ptr %zztmp173, align 4
  %140 = load i32, ptr %yyp2165, align 4
  %idxprom180 = sext i32 %140 to i64
  %arrayidx181 = getelementptr inbounds i32, ptr %137, i64 %idxprom180
  store i32 %139, ptr %arrayidx181, align 4
  %141 = load i32, ptr %yyp1164, align 4
  %inc182 = add nsw i32 %141, 1
  store i32 %inc182, ptr %yyp1164, align 4
  %142 = load i32, ptr %yyp2165, align 4
  %inc183 = add nsw i32 %142, 1
  store i32 %inc183, ptr %yyp2165, align 4
  %143 = load i32, ptr %yyn168, align 4
  %dec184 = add nsw i32 %143, -1
  br label %while.cond169, !llvm.loop !55

while.end185:                                     ; preds = %while.cond169
  %144 = load i32, ptr %lo, align 4
  %145 = load i32, ptr %unLo, align 4
  %add186 = add nsw i32 %144, %145
  %146 = load i32, ptr %ltLo, align 4
  %147 = xor i32 %146, -1
  %sub188 = add i32 %add186, %147
  store i32 %sub188, ptr %n, align 4
  %148 = load i32, ptr %hi, align 4
  %149 = load i32, ptr %gtHi, align 4
  %150 = load i32, ptr %unHi, align 4
  %sub189.neg = sub i32 %150, %149
  %sub190 = add i32 %sub189.neg, %148
  %add191 = add nsw i32 %sub190, 1
  store i32 %add191, ptr %m, align 4
  %151 = load i32, ptr %lo, align 4
  store i32 %151, ptr %nextLo, align 4
  %152 = load i32, ptr %n, align 4
  store i32 %152, ptr %nextHi, align 4
  %153 = load i32, ptr %d, align 4
  store i32 %153, ptr %nextD, align 4
  %154 = load i32, ptr %m, align 4
  %arrayidx195 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  store i32 %154, ptr %arrayidx195, align 4
  %155 = load i32, ptr %hi, align 4
  %arrayidx196 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  store i32 %155, ptr %arrayidx196, align 4
  %156 = load i32, ptr %d, align 4
  %arrayidx197 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  store i32 %156, ptr %arrayidx197, align 4
  %157 = load i32, ptr %n, align 4
  %add198 = add nsw i32 %157, 1
  %arrayidx199 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  store i32 %add198, ptr %arrayidx199, align 4
  %158 = load i32, ptr %m, align 4
  %sub200 = add nsw i32 %158, -1
  %arrayidx201 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  store i32 %sub200, ptr %arrayidx201, align 4
  %159 = load i32, ptr %d, align 4
  %add202 = add nsw i32 %159, 1
  %arrayidx203 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 2
  store i32 %add202, ptr %arrayidx203, align 4
  %160 = load i32, ptr %nextHi, align 4
  %161 = load i32, ptr %nextLo, align 4
  %sub206 = sub nsw i32 %160, %161
  %arrayidx207 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %162 = load i32, ptr %arrayidx207, align 4
  %arrayidx208 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %163 = load i32, ptr %arrayidx208, align 4
  %sub209 = sub nsw i32 %162, %163
  %cmp210 = icmp slt i32 %sub206, %sub209
  br i1 %cmp210, label %if.then212, label %if.end225

if.then212:                                       ; preds = %while.end185
  %164 = load i32, ptr %nextLo, align 4
  %arrayidx214 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %165 = load i32, ptr %arrayidx214, align 4
  store i32 %165, ptr %nextLo, align 4
  %arrayidx216 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  store i32 %164, ptr %arrayidx216, align 4
  %166 = load i32, ptr %nextHi, align 4
  %arrayidx218 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %167 = load i32, ptr %arrayidx218, align 4
  store i32 %167, ptr %nextHi, align 4
  %arrayidx220 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  store i32 %166, ptr %arrayidx220, align 4
  %168 = load i32, ptr %nextD, align 4
  %arrayidx222 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  %169 = load i32, ptr %arrayidx222, align 4
  store i32 %169, ptr %nextD, align 4
  %arrayidx224 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  store i32 %168, ptr %arrayidx224, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then212, %while.end185
  %arrayidx226 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %170 = load i32, ptr %arrayidx226, align 4
  %arrayidx227 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %171 = load i32, ptr %arrayidx227, align 4
  %sub228 = sub nsw i32 %170, %171
  %arrayidx229 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  %172 = load i32, ptr %arrayidx229, align 4
  %arrayidx230 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  %173 = load i32, ptr %arrayidx230, align 4
  %sub231 = sub nsw i32 %172, %173
  %cmp232 = icmp slt i32 %sub228, %sub231
  br i1 %cmp232, label %if.then234, label %if.end248

if.then234:                                       ; preds = %if.end225
  %arrayidx236 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %174 = load i32, ptr %arrayidx236, align 4
  %arrayidx237 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  %175 = load i32, ptr %arrayidx237, align 4
  %arrayidx238 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  store i32 %175, ptr %arrayidx238, align 4
  %arrayidx239 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  store i32 %174, ptr %arrayidx239, align 4
  %arrayidx240 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %176 = load i32, ptr %arrayidx240, align 4
  %arrayidx241 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  %177 = load i32, ptr %arrayidx241, align 4
  %arrayidx242 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  store i32 %177, ptr %arrayidx242, align 4
  %arrayidx243 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  store i32 %176, ptr %arrayidx243, align 4
  %arrayidx244 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  %178 = load i32, ptr %arrayidx244, align 4
  %arrayidx245 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 2
  %179 = load i32, ptr %arrayidx245, align 4
  %arrayidx246 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  store i32 %179, ptr %arrayidx246, align 4
  %arrayidx247 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 2
  store i32 %178, ptr %arrayidx247, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then234, %if.end225
  %180 = load i32, ptr %nextHi, align 4
  %181 = load i32, ptr %nextLo, align 4
  %sub251 = sub nsw i32 %180, %181
  %arrayidx252 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %182 = load i32, ptr %arrayidx252, align 4
  %arrayidx253 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %183 = load i32, ptr %arrayidx253, align 4
  %sub254 = sub nsw i32 %182, %183
  %cmp255 = icmp slt i32 %sub251, %sub254
  br i1 %cmp255, label %if.then257, label %if.end271

if.then257:                                       ; preds = %if.end248
  %184 = load i32, ptr %nextLo, align 4
  %arrayidx260 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %185 = load i32, ptr %arrayidx260, align 4
  store i32 %185, ptr %nextLo, align 4
  %arrayidx262 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  store i32 %184, ptr %arrayidx262, align 4
  %186 = load i32, ptr %nextHi, align 4
  %arrayidx264 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %187 = load i32, ptr %arrayidx264, align 4
  store i32 %187, ptr %nextHi, align 4
  %arrayidx266 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  store i32 %186, ptr %arrayidx266, align 4
  %188 = load i32, ptr %nextD, align 4
  %arrayidx268 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  %189 = load i32, ptr %arrayidx268, align 4
  store i32 %189, ptr %nextD, align 4
  %arrayidx270 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  store i32 %188, ptr %arrayidx270, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then257, %if.end248
  %190 = load i32, ptr %nextLo, align 4
  %191 = load i32, ptr %sp, align 4
  %idxprom273 = sext i32 %191 to i64
  %arrayidx274 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom273
  store i32 %190, ptr %arrayidx274, align 4
  %192 = load i32, ptr %nextHi, align 4
  %idxprom276 = sext i32 %191 to i64
  %arrayidx277 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom276
  store i32 %192, ptr %arrayidx277, align 4
  %193 = load i32, ptr %nextD, align 4
  %194 = load i32, ptr %sp, align 4
  %idxprom279 = sext i32 %194 to i64
  %arrayidx280 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom279
  store i32 %193, ptr %arrayidx280, align 4
  %inc281 = add nsw i32 %194, 1
  store i32 %inc281, ptr %sp, align 4
  %arrayidx282 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %195 = load i32, ptr %arrayidx282, align 4
  %idxprom283 = sext i32 %inc281 to i64
  %arrayidx284 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom283
  store i32 %195, ptr %arrayidx284, align 4
  %arrayidx285 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %196 = load i32, ptr %arrayidx285, align 4
  %197 = load i32, ptr %sp, align 4
  %idxprom286 = sext i32 %197 to i64
  %arrayidx287 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom286
  store i32 %196, ptr %arrayidx287, align 4
  %arrayidx288 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  %198 = load i32, ptr %arrayidx288, align 4
  %idxprom289 = sext i32 %197 to i64
  %arrayidx290 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom289
  store i32 %198, ptr %arrayidx290, align 4
  %199 = load i32, ptr %sp, align 4
  %inc291 = add nsw i32 %199, 1
  store i32 %inc291, ptr %sp, align 4
  %arrayidx292 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  %200 = load i32, ptr %arrayidx292, align 4
  %idxprom293 = sext i32 %inc291 to i64
  %arrayidx294 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom293
  store i32 %200, ptr %arrayidx294, align 4
  %arrayidx295 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  %201 = load i32, ptr %arrayidx295, align 4
  %202 = load i32, ptr %sp, align 4
  %idxprom296 = sext i32 %202 to i64
  %arrayidx297 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom296
  store i32 %201, ptr %arrayidx297, align 4
  %arrayidx298 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 2
  %203 = load i32, ptr %arrayidx298, align 4
  %idxprom299 = sext i32 %202 to i64
  %arrayidx300 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom299
  store i32 %203, ptr %arrayidx300, align 4
  %204 = load i32, ptr %sp, align 4
  %inc301 = add nsw i32 %204, 1
  store i32 %inc301, ptr %sp, align 4
  br label %while.cond, !llvm.loop !53

while.end302:                                     ; preds = %if.then14, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @mainSimpleSort(ptr noundef %ptr, ptr noundef %block, ptr noundef %quadrant, i32 noundef %nblock, i32 noundef %lo, i32 noundef %hi, i32 noundef %d, ptr noundef %budget) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %quadrant.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %budget.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %bigN = alloca i32, align 4
  %hp = alloca i32, align 4
  %v = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %quadrant, ptr %quadrant.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store i32 %lo, ptr %lo.addr, align 4
  store i32 %hi, ptr %hi.addr, align 4
  store i32 %d, ptr %d.addr, align 4
  store ptr %budget, ptr %budget.addr, align 8
  %sub = sub nsw i32 %hi, %lo
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %bigN, align 4
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %for.end, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %storemerge = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  store i32 %storemerge, ptr %hp, align 4
  %idxprom = sext i32 %storemerge to i64
  %arrayidx = getelementptr inbounds [14 x i32], ptr @incs, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  %1 = load i32, ptr %bigN, align 4
  %cmp1 = icmp slt i32 %0, %1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %hp, align 4
  %inc = add nsw i32 %2, 1
  br label %while.cond, !llvm.loop !56

while.end:                                        ; preds = %while.cond
  %3 = load i32, ptr %hp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %storemerge1.in = phi i32 [ %3, %while.end ], [ %88, %for.inc ]
  %storemerge1 = add nsw i32 %storemerge1.in, -1
  store i32 %storemerge1, ptr %hp, align 4
  %cmp2 = icmp sgt i32 %storemerge1.in, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %hp, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [14 x i32], ptr @incs, i64 0, i64 %idxprom3
  %5 = load i32, ptr %arrayidx4, align 4
  store i32 %5, ptr %h, align 4
  %6 = load i32, ptr %lo.addr, align 4
  %add5 = add nsw i32 %6, %5
  store i32 %add5, ptr %i, align 4
  br label %while.body7

while.body7:                                      ; preds = %while.end89, %for.body
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %hi.addr, align 4
  %cmp8 = icmp sgt i32 %7, %8
  br i1 %cmp8, label %for.inc, label %if.end10

if.end10:                                         ; preds = %while.body7
  %9 = load ptr, ptr %ptr.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %9, i64 %idxprom11
  %11 = load i32, ptr %arrayidx12, align 4
  store i32 %11, ptr %v, align 4
  store i32 %10, ptr %j, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %while.body19, %if.end10
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load i32, ptr %j, align 4
  %14 = load i32, ptr %h, align 4
  %sub14 = sub nsw i32 %13, %14
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %12, i64 %idxprom15
  %15 = load i32, ptr %arrayidx16, align 4
  %16 = load i32, ptr %d.addr, align 4
  %add17 = add i32 %15, %16
  %17 = load i32, ptr %v, align 4
  %add18 = add i32 %17, %16
  %18 = load ptr, ptr %block.addr, align 8
  %19 = load ptr, ptr %quadrant.addr, align 8
  %20 = load i32, ptr %nblock.addr, align 4
  %21 = load ptr, ptr %budget.addr, align 8
  %call = call zeroext i8 @mainGtU(i32 noundef %add17, i32 noundef %add18, ptr noundef %18, ptr noundef %19, i32 noundef %20, ptr noundef %21)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %while.end31, label %while.body19

while.body19:                                     ; preds = %while.cond13
  %22 = load ptr, ptr %ptr.addr, align 8
  %23 = load i32, ptr %j, align 4
  %24 = load i32, ptr %h, align 4
  %sub20 = sub nsw i32 %23, %24
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %22, i64 %idxprom21
  %25 = load i32, ptr %arrayidx22, align 4
  %26 = load ptr, ptr %ptr.addr, align 8
  %27 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %26, i64 %idxprom23
  store i32 %25, ptr %arrayidx24, align 4
  %28 = load i32, ptr %h, align 4
  %sub25 = sub nsw i32 %27, %28
  store i32 %sub25, ptr %j, align 4
  %29 = load i32, ptr %lo.addr, align 4
  %add26 = add nsw i32 %29, %28
  %cmp28.not.not = icmp slt i32 %sub25, %add26
  br i1 %cmp28.not.not, label %while.end31, label %while.cond13, !llvm.loop !57

while.end31:                                      ; preds = %while.body19, %while.cond13
  %30 = load i32, ptr %v, align 4
  %31 = load ptr, ptr %ptr.addr, align 8
  %32 = load i32, ptr %j, align 4
  %idxprom32 = sext i32 %32 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %31, i64 %idxprom32
  store i32 %30, ptr %arrayidx33, align 4
  %33 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %33, 1
  store i32 %inc34, ptr %i, align 4
  %34 = load i32, ptr %hi.addr, align 4
  %cmp35.not = icmp slt i32 %33, %34
  br i1 %cmp35.not, label %if.end37, label %for.inc

if.end37:                                         ; preds = %while.end31
  %35 = load ptr, ptr %ptr.addr, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %35, i64 %idxprom38
  %37 = load i32, ptr %arrayidx39, align 4
  store i32 %37, ptr %v, align 4
  store i32 %36, ptr %j, align 4
  br label %while.cond40

while.cond40:                                     ; preds = %while.body48, %if.end37
  %38 = load ptr, ptr %ptr.addr, align 8
  %39 = load i32, ptr %j, align 4
  %40 = load i32, ptr %h, align 4
  %sub41 = sub nsw i32 %39, %40
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %38, i64 %idxprom42
  %41 = load i32, ptr %arrayidx43, align 4
  %42 = load i32, ptr %d.addr, align 4
  %add44 = add i32 %41, %42
  %43 = load i32, ptr %v, align 4
  %add45 = add i32 %43, %42
  %44 = load ptr, ptr %block.addr, align 8
  %45 = load ptr, ptr %quadrant.addr, align 8
  %46 = load i32, ptr %nblock.addr, align 4
  %47 = load ptr, ptr %budget.addr, align 8
  %call46 = call zeroext i8 @mainGtU(i32 noundef %add44, i32 noundef %add45, ptr noundef %44, ptr noundef %45, i32 noundef %46, ptr noundef %47)
  %tobool47.not = icmp eq i8 %call46, 0
  br i1 %tobool47.not, label %while.end60, label %while.body48

while.body48:                                     ; preds = %while.cond40
  %48 = load ptr, ptr %ptr.addr, align 8
  %49 = load i32, ptr %j, align 4
  %50 = load i32, ptr %h, align 4
  %sub49 = sub nsw i32 %49, %50
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %48, i64 %idxprom50
  %51 = load i32, ptr %arrayidx51, align 4
  %52 = load ptr, ptr %ptr.addr, align 8
  %53 = load i32, ptr %j, align 4
  %idxprom52 = sext i32 %53 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %52, i64 %idxprom52
  store i32 %51, ptr %arrayidx53, align 4
  %54 = load i32, ptr %h, align 4
  %sub54 = sub nsw i32 %53, %54
  store i32 %sub54, ptr %j, align 4
  %55 = load i32, ptr %lo.addr, align 4
  %add55 = add nsw i32 %55, %54
  %cmp57.not.not = icmp slt i32 %sub54, %add55
  br i1 %cmp57.not.not, label %while.end60, label %while.cond40, !llvm.loop !58

while.end60:                                      ; preds = %while.body48, %while.cond40
  %56 = load i32, ptr %v, align 4
  %57 = load ptr, ptr %ptr.addr, align 8
  %58 = load i32, ptr %j, align 4
  %idxprom61 = sext i32 %58 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %57, i64 %idxprom61
  store i32 %56, ptr %arrayidx62, align 4
  %59 = load i32, ptr %i, align 4
  %inc63 = add nsw i32 %59, 1
  store i32 %inc63, ptr %i, align 4
  %60 = load i32, ptr %hi.addr, align 4
  %cmp64.not = icmp slt i32 %59, %60
  br i1 %cmp64.not, label %if.end66, label %for.inc

if.end66:                                         ; preds = %while.end60
  %61 = load ptr, ptr %ptr.addr, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %62 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %61, i64 %idxprom67
  %63 = load i32, ptr %arrayidx68, align 4
  store i32 %63, ptr %v, align 4
  store i32 %62, ptr %j, align 4
  br label %while.cond69

while.cond69:                                     ; preds = %while.body77, %if.end66
  %64 = load ptr, ptr %ptr.addr, align 8
  %65 = load i32, ptr %j, align 4
  %66 = load i32, ptr %h, align 4
  %sub70 = sub nsw i32 %65, %66
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %64, i64 %idxprom71
  %67 = load i32, ptr %arrayidx72, align 4
  %68 = load i32, ptr %d.addr, align 4
  %add73 = add i32 %67, %68
  %69 = load i32, ptr %v, align 4
  %add74 = add i32 %69, %68
  %70 = load ptr, ptr %block.addr, align 8
  %71 = load ptr, ptr %quadrant.addr, align 8
  %72 = load i32, ptr %nblock.addr, align 4
  %73 = load ptr, ptr %budget.addr, align 8
  %call75 = call zeroext i8 @mainGtU(i32 noundef %add73, i32 noundef %add74, ptr noundef %70, ptr noundef %71, i32 noundef %72, ptr noundef %73)
  %tobool76.not = icmp eq i8 %call75, 0
  br i1 %tobool76.not, label %while.end89, label %while.body77

while.body77:                                     ; preds = %while.cond69
  %74 = load ptr, ptr %ptr.addr, align 8
  %75 = load i32, ptr %j, align 4
  %76 = load i32, ptr %h, align 4
  %sub78 = sub nsw i32 %75, %76
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %74, i64 %idxprom79
  %77 = load i32, ptr %arrayidx80, align 4
  %78 = load ptr, ptr %ptr.addr, align 8
  %79 = load i32, ptr %j, align 4
  %idxprom81 = sext i32 %79 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %78, i64 %idxprom81
  store i32 %77, ptr %arrayidx82, align 4
  %80 = load i32, ptr %h, align 4
  %sub83 = sub nsw i32 %79, %80
  store i32 %sub83, ptr %j, align 4
  %81 = load i32, ptr %lo.addr, align 4
  %add84 = add nsw i32 %81, %80
  %cmp86.not.not = icmp slt i32 %sub83, %add84
  br i1 %cmp86.not.not, label %while.end89, label %while.cond69, !llvm.loop !59

while.end89:                                      ; preds = %while.body77, %while.cond69
  %82 = load i32, ptr %v, align 4
  %83 = load ptr, ptr %ptr.addr, align 8
  %84 = load i32, ptr %j, align 4
  %idxprom90 = sext i32 %84 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %83, i64 %idxprom90
  store i32 %82, ptr %arrayidx91, align 4
  %85 = load i32, ptr %i, align 4
  %inc92 = add nsw i32 %85, 1
  store i32 %inc92, ptr %i, align 4
  %86 = load ptr, ptr %budget.addr, align 8
  %87 = load i32, ptr %86, align 4
  %cmp93 = icmp slt i32 %87, 0
  br i1 %cmp93, label %for.end, label %while.body7

for.inc:                                          ; preds = %while.body7, %while.end31, %while.end60
  %88 = load i32, ptr %hp, align 4
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %while.end89, %entry, %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @mmed3(i8 noundef zeroext %a, i8 noundef zeroext %b, i8 noundef zeroext %c) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
  store i8 %b, ptr %b.addr, align 1
  store i8 %c, ptr %c.addr, align 1
  %cmp = icmp ugt i8 %a, %b
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %a.addr, align 1
  %1 = load i8, ptr %b.addr, align 1
  store i8 %1, ptr %a.addr, align 1
  store i8 %0, ptr %b.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, ptr %b.addr, align 1
  %3 = load i8, ptr %c.addr, align 1
  %cmp5 = icmp ugt i8 %2, %3
  br i1 %cmp5, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %4 = load i8, ptr %c.addr, align 1
  store i8 %4, ptr %b.addr, align 1
  %5 = load i8, ptr %a.addr, align 1
  %cmp10 = icmp ugt i8 %5, %4
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then7
  %6 = load i8, ptr %a.addr, align 1
  store i8 %6, ptr %b.addr, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.then12, %if.end
  %7 = load i8, ptr %b.addr, align 1
  ret i8 %7
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @mainGtU(i32 noundef %i1, i32 noundef %i2, ptr noundef %block, ptr noundef %quadrant, i32 noundef %nblock, ptr noundef %budget) #0 {
entry:
  %retval = alloca i8, align 1
  %i1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %block.addr = alloca ptr, align 8
  %quadrant.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %budget.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %s1 = alloca i16, align 2
  %s2 = alloca i16, align 2
  store i32 %i1, ptr %i1.addr, align 4
  store i32 %i2, ptr %i2.addr, align 4
  store ptr %block, ptr %block.addr, align 8
  store ptr %quadrant, ptr %quadrant.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store ptr %budget, ptr %budget.addr, align 8
  %idxprom = zext i32 %i1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %block, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  store i8 %0, ptr %c1, align 1
  %1 = load ptr, ptr %block.addr, align 8
  %2 = load i32, ptr %i2.addr, align 4
  %idxprom1 = zext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 %idxprom1
  %3 = load i8, ptr %arrayidx2, align 1
  store i8 %3, ptr %c2, align 1
  %4 = load i8, ptr %c1, align 1
  %cmp.not = icmp eq i8 %4, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8, ptr %c1, align 1
  %6 = load i8, ptr %c2, align 1
  %cmp7 = icmp ugt i8 %5, %6
  %conv9 = zext i1 %cmp7 to i8
  store i8 %conv9, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %i1.addr, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %i1.addr, align 4
  %8 = load i32, ptr %i2.addr, align 4
  %inc10 = add i32 %8, 1
  store i32 %inc10, ptr %i2.addr, align 4
  %9 = load ptr, ptr %block.addr, align 8
  %idxprom11 = zext i32 %inc to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %9, i64 %idxprom11
  %10 = load i8, ptr %arrayidx12, align 1
  store i8 %10, ptr %c1, align 1
  %idxprom13 = zext i32 %inc10 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %9, i64 %idxprom13
  %11 = load i8, ptr %arrayidx14, align 1
  store i8 %11, ptr %c2, align 1
  %cmp17.not = icmp eq i8 %10, %11
  br i1 %cmp17.not, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end
  %12 = load i8, ptr %c1, align 1
  %13 = load i8, ptr %c2, align 1
  %cmp22 = icmp ugt i8 %12, %13
  %conv24 = zext i1 %cmp22 to i8
  store i8 %conv24, ptr %retval, align 1
  br label %return

if.end25:                                         ; preds = %if.end
  %14 = load i32, ptr %i1.addr, align 4
  %inc26 = add i32 %14, 1
  store i32 %inc26, ptr %i1.addr, align 4
  %15 = load i32, ptr %i2.addr, align 4
  %inc27 = add i32 %15, 1
  store i32 %inc27, ptr %i2.addr, align 4
  %16 = load ptr, ptr %block.addr, align 8
  %idxprom28 = zext i32 %inc26 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %16, i64 %idxprom28
  %17 = load i8, ptr %arrayidx29, align 1
  store i8 %17, ptr %c1, align 1
  %idxprom30 = zext i32 %inc27 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %16, i64 %idxprom30
  %18 = load i8, ptr %arrayidx31, align 1
  store i8 %18, ptr %c2, align 1
  %cmp34.not = icmp eq i8 %17, %18
  br i1 %cmp34.not, label %if.end42, label %if.then36

if.then36:                                        ; preds = %if.end25
  %19 = load i8, ptr %c1, align 1
  %20 = load i8, ptr %c2, align 1
  %cmp39 = icmp ugt i8 %19, %20
  %conv41 = zext i1 %cmp39 to i8
  store i8 %conv41, ptr %retval, align 1
  br label %return

if.end42:                                         ; preds = %if.end25
  %21 = load i32, ptr %i1.addr, align 4
  %inc43 = add i32 %21, 1
  store i32 %inc43, ptr %i1.addr, align 4
  %22 = load i32, ptr %i2.addr, align 4
  %inc44 = add i32 %22, 1
  store i32 %inc44, ptr %i2.addr, align 4
  %23 = load ptr, ptr %block.addr, align 8
  %idxprom45 = zext i32 %inc43 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %23, i64 %idxprom45
  %24 = load i8, ptr %arrayidx46, align 1
  store i8 %24, ptr %c1, align 1
  %idxprom47 = zext i32 %inc44 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %23, i64 %idxprom47
  %25 = load i8, ptr %arrayidx48, align 1
  store i8 %25, ptr %c2, align 1
  %cmp51.not = icmp eq i8 %24, %25
  br i1 %cmp51.not, label %if.end59, label %if.then53

if.then53:                                        ; preds = %if.end42
  %26 = load i8, ptr %c1, align 1
  %27 = load i8, ptr %c2, align 1
  %cmp56 = icmp ugt i8 %26, %27
  %conv58 = zext i1 %cmp56 to i8
  store i8 %conv58, ptr %retval, align 1
  br label %return

if.end59:                                         ; preds = %if.end42
  %28 = load i32, ptr %i1.addr, align 4
  %inc60 = add i32 %28, 1
  store i32 %inc60, ptr %i1.addr, align 4
  %29 = load i32, ptr %i2.addr, align 4
  %inc61 = add i32 %29, 1
  store i32 %inc61, ptr %i2.addr, align 4
  %30 = load ptr, ptr %block.addr, align 8
  %idxprom62 = zext i32 %inc60 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %30, i64 %idxprom62
  %31 = load i8, ptr %arrayidx63, align 1
  store i8 %31, ptr %c1, align 1
  %idxprom64 = zext i32 %inc61 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %30, i64 %idxprom64
  %32 = load i8, ptr %arrayidx65, align 1
  store i8 %32, ptr %c2, align 1
  %cmp68.not = icmp eq i8 %31, %32
  br i1 %cmp68.not, label %if.end76, label %if.then70

if.then70:                                        ; preds = %if.end59
  %33 = load i8, ptr %c1, align 1
  %34 = load i8, ptr %c2, align 1
  %cmp73 = icmp ugt i8 %33, %34
  %conv75 = zext i1 %cmp73 to i8
  store i8 %conv75, ptr %retval, align 1
  br label %return

if.end76:                                         ; preds = %if.end59
  %35 = load i32, ptr %i1.addr, align 4
  %inc77 = add i32 %35, 1
  store i32 %inc77, ptr %i1.addr, align 4
  %36 = load i32, ptr %i2.addr, align 4
  %inc78 = add i32 %36, 1
  store i32 %inc78, ptr %i2.addr, align 4
  %37 = load ptr, ptr %block.addr, align 8
  %idxprom79 = zext i32 %inc77 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %37, i64 %idxprom79
  %38 = load i8, ptr %arrayidx80, align 1
  store i8 %38, ptr %c1, align 1
  %idxprom81 = zext i32 %inc78 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %37, i64 %idxprom81
  %39 = load i8, ptr %arrayidx82, align 1
  store i8 %39, ptr %c2, align 1
  %cmp85.not = icmp eq i8 %38, %39
  br i1 %cmp85.not, label %if.end93, label %if.then87

if.then87:                                        ; preds = %if.end76
  %40 = load i8, ptr %c1, align 1
  %41 = load i8, ptr %c2, align 1
  %cmp90 = icmp ugt i8 %40, %41
  %conv92 = zext i1 %cmp90 to i8
  store i8 %conv92, ptr %retval, align 1
  br label %return

if.end93:                                         ; preds = %if.end76
  %42 = load i32, ptr %i1.addr, align 4
  %inc94 = add i32 %42, 1
  store i32 %inc94, ptr %i1.addr, align 4
  %43 = load i32, ptr %i2.addr, align 4
  %inc95 = add i32 %43, 1
  store i32 %inc95, ptr %i2.addr, align 4
  %44 = load ptr, ptr %block.addr, align 8
  %idxprom96 = zext i32 %inc94 to i64
  %arrayidx97 = getelementptr inbounds i8, ptr %44, i64 %idxprom96
  %45 = load i8, ptr %arrayidx97, align 1
  store i8 %45, ptr %c1, align 1
  %idxprom98 = zext i32 %inc95 to i64
  %arrayidx99 = getelementptr inbounds i8, ptr %44, i64 %idxprom98
  %46 = load i8, ptr %arrayidx99, align 1
  store i8 %46, ptr %c2, align 1
  %cmp102.not = icmp eq i8 %45, %46
  br i1 %cmp102.not, label %if.end110, label %if.then104

if.then104:                                       ; preds = %if.end93
  %47 = load i8, ptr %c1, align 1
  %48 = load i8, ptr %c2, align 1
  %cmp107 = icmp ugt i8 %47, %48
  %conv109 = zext i1 %cmp107 to i8
  store i8 %conv109, ptr %retval, align 1
  br label %return

if.end110:                                        ; preds = %if.end93
  %49 = load i32, ptr %i1.addr, align 4
  %inc111 = add i32 %49, 1
  store i32 %inc111, ptr %i1.addr, align 4
  %50 = load i32, ptr %i2.addr, align 4
  %inc112 = add i32 %50, 1
  store i32 %inc112, ptr %i2.addr, align 4
  %51 = load ptr, ptr %block.addr, align 8
  %idxprom113 = zext i32 %inc111 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %51, i64 %idxprom113
  %52 = load i8, ptr %arrayidx114, align 1
  store i8 %52, ptr %c1, align 1
  %idxprom115 = zext i32 %inc112 to i64
  %arrayidx116 = getelementptr inbounds i8, ptr %51, i64 %idxprom115
  %53 = load i8, ptr %arrayidx116, align 1
  store i8 %53, ptr %c2, align 1
  %cmp119.not = icmp eq i8 %52, %53
  br i1 %cmp119.not, label %if.end127, label %if.then121

if.then121:                                       ; preds = %if.end110
  %54 = load i8, ptr %c1, align 1
  %55 = load i8, ptr %c2, align 1
  %cmp124 = icmp ugt i8 %54, %55
  %conv126 = zext i1 %cmp124 to i8
  store i8 %conv126, ptr %retval, align 1
  br label %return

if.end127:                                        ; preds = %if.end110
  %56 = load i32, ptr %i1.addr, align 4
  %inc128 = add i32 %56, 1
  store i32 %inc128, ptr %i1.addr, align 4
  %57 = load i32, ptr %i2.addr, align 4
  %inc129 = add i32 %57, 1
  store i32 %inc129, ptr %i2.addr, align 4
  %58 = load ptr, ptr %block.addr, align 8
  %idxprom130 = zext i32 %inc128 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %58, i64 %idxprom130
  %59 = load i8, ptr %arrayidx131, align 1
  store i8 %59, ptr %c1, align 1
  %idxprom132 = zext i32 %inc129 to i64
  %arrayidx133 = getelementptr inbounds i8, ptr %58, i64 %idxprom132
  %60 = load i8, ptr %arrayidx133, align 1
  store i8 %60, ptr %c2, align 1
  %cmp136.not = icmp eq i8 %59, %60
  br i1 %cmp136.not, label %if.end144, label %if.then138

if.then138:                                       ; preds = %if.end127
  %61 = load i8, ptr %c1, align 1
  %62 = load i8, ptr %c2, align 1
  %cmp141 = icmp ugt i8 %61, %62
  %conv143 = zext i1 %cmp141 to i8
  store i8 %conv143, ptr %retval, align 1
  br label %return

if.end144:                                        ; preds = %if.end127
  %63 = load i32, ptr %i1.addr, align 4
  %inc145 = add i32 %63, 1
  store i32 %inc145, ptr %i1.addr, align 4
  %64 = load i32, ptr %i2.addr, align 4
  %inc146 = add i32 %64, 1
  store i32 %inc146, ptr %i2.addr, align 4
  %65 = load ptr, ptr %block.addr, align 8
  %idxprom147 = zext i32 %inc145 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %65, i64 %idxprom147
  %66 = load i8, ptr %arrayidx148, align 1
  store i8 %66, ptr %c1, align 1
  %idxprom149 = zext i32 %inc146 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %65, i64 %idxprom149
  %67 = load i8, ptr %arrayidx150, align 1
  store i8 %67, ptr %c2, align 1
  %cmp153.not = icmp eq i8 %66, %67
  br i1 %cmp153.not, label %if.end161, label %if.then155

if.then155:                                       ; preds = %if.end144
  %68 = load i8, ptr %c1, align 1
  %69 = load i8, ptr %c2, align 1
  %cmp158 = icmp ugt i8 %68, %69
  %conv160 = zext i1 %cmp158 to i8
  store i8 %conv160, ptr %retval, align 1
  br label %return

if.end161:                                        ; preds = %if.end144
  %70 = load i32, ptr %i1.addr, align 4
  %inc162 = add i32 %70, 1
  store i32 %inc162, ptr %i1.addr, align 4
  %71 = load i32, ptr %i2.addr, align 4
  %inc163 = add i32 %71, 1
  store i32 %inc163, ptr %i2.addr, align 4
  %72 = load ptr, ptr %block.addr, align 8
  %idxprom164 = zext i32 %inc162 to i64
  %arrayidx165 = getelementptr inbounds i8, ptr %72, i64 %idxprom164
  %73 = load i8, ptr %arrayidx165, align 1
  store i8 %73, ptr %c1, align 1
  %idxprom166 = zext i32 %inc163 to i64
  %arrayidx167 = getelementptr inbounds i8, ptr %72, i64 %idxprom166
  %74 = load i8, ptr %arrayidx167, align 1
  store i8 %74, ptr %c2, align 1
  %cmp170.not = icmp eq i8 %73, %74
  br i1 %cmp170.not, label %if.end178, label %if.then172

if.then172:                                       ; preds = %if.end161
  %75 = load i8, ptr %c1, align 1
  %76 = load i8, ptr %c2, align 1
  %cmp175 = icmp ugt i8 %75, %76
  %conv177 = zext i1 %cmp175 to i8
  store i8 %conv177, ptr %retval, align 1
  br label %return

if.end178:                                        ; preds = %if.end161
  %77 = load i32, ptr %i1.addr, align 4
  %inc179 = add i32 %77, 1
  store i32 %inc179, ptr %i1.addr, align 4
  %78 = load i32, ptr %i2.addr, align 4
  %inc180 = add i32 %78, 1
  store i32 %inc180, ptr %i2.addr, align 4
  %79 = load ptr, ptr %block.addr, align 8
  %idxprom181 = zext i32 %inc179 to i64
  %arrayidx182 = getelementptr inbounds i8, ptr %79, i64 %idxprom181
  %80 = load i8, ptr %arrayidx182, align 1
  store i8 %80, ptr %c1, align 1
  %idxprom183 = zext i32 %inc180 to i64
  %arrayidx184 = getelementptr inbounds i8, ptr %79, i64 %idxprom183
  %81 = load i8, ptr %arrayidx184, align 1
  store i8 %81, ptr %c2, align 1
  %cmp187.not = icmp eq i8 %80, %81
  br i1 %cmp187.not, label %if.end195, label %if.then189

if.then189:                                       ; preds = %if.end178
  %82 = load i8, ptr %c1, align 1
  %83 = load i8, ptr %c2, align 1
  %cmp192 = icmp ugt i8 %82, %83
  %conv194 = zext i1 %cmp192 to i8
  store i8 %conv194, ptr %retval, align 1
  br label %return

if.end195:                                        ; preds = %if.end178
  %84 = load i32, ptr %i1.addr, align 4
  %inc196 = add i32 %84, 1
  store i32 %inc196, ptr %i1.addr, align 4
  %85 = load i32, ptr %i2.addr, align 4
  %inc197 = add i32 %85, 1
  store i32 %inc197, ptr %i2.addr, align 4
  %86 = load i32, ptr %nblock.addr, align 4
  %add = add i32 %86, 8
  store i32 %add, ptr %k, align 4
  br label %do.body

do.body:                                          ; preds = %if.end462, %if.end195
  %87 = load ptr, ptr %block.addr, align 8
  %88 = load i32, ptr %i1.addr, align 4
  %idxprom198 = zext i32 %88 to i64
  %arrayidx199 = getelementptr inbounds i8, ptr %87, i64 %idxprom198
  %89 = load i8, ptr %arrayidx199, align 1
  store i8 %89, ptr %c1, align 1
  %90 = load i32, ptr %i2.addr, align 4
  %idxprom200 = zext i32 %90 to i64
  %arrayidx201 = getelementptr inbounds i8, ptr %87, i64 %idxprom200
  %91 = load i8, ptr %arrayidx201, align 1
  store i8 %91, ptr %c2, align 1
  %cmp204.not = icmp eq i8 %89, %91
  br i1 %cmp204.not, label %if.end212, label %if.then206

if.then206:                                       ; preds = %do.body
  %92 = load i8, ptr %c1, align 1
  %93 = load i8, ptr %c2, align 1
  %cmp209 = icmp ugt i8 %92, %93
  %conv211 = zext i1 %cmp209 to i8
  store i8 %conv211, ptr %retval, align 1
  br label %return

if.end212:                                        ; preds = %do.body
  %94 = load ptr, ptr %quadrant.addr, align 8
  %95 = load i32, ptr %i1.addr, align 4
  %idxprom213 = zext i32 %95 to i64
  %arrayidx214 = getelementptr inbounds i16, ptr %94, i64 %idxprom213
  %96 = load i16, ptr %arrayidx214, align 2
  store i16 %96, ptr %s1, align 2
  %97 = load i32, ptr %i2.addr, align 4
  %idxprom215 = zext i32 %97 to i64
  %arrayidx216 = getelementptr inbounds i16, ptr %94, i64 %idxprom215
  %98 = load i16, ptr %arrayidx216, align 2
  store i16 %98, ptr %s2, align 2
  %cmp219.not = icmp eq i16 %96, %98
  br i1 %cmp219.not, label %if.end227, label %if.then221

if.then221:                                       ; preds = %if.end212
  %99 = load i16, ptr %s1, align 2
  %100 = load i16, ptr %s2, align 2
  %cmp224 = icmp ugt i16 %99, %100
  %conv226 = zext i1 %cmp224 to i8
  store i8 %conv226, ptr %retval, align 1
  br label %return

if.end227:                                        ; preds = %if.end212
  %101 = load i32, ptr %i1.addr, align 4
  %inc228 = add i32 %101, 1
  store i32 %inc228, ptr %i1.addr, align 4
  %102 = load i32, ptr %i2.addr, align 4
  %inc229 = add i32 %102, 1
  store i32 %inc229, ptr %i2.addr, align 4
  %103 = load ptr, ptr %block.addr, align 8
  %idxprom230 = zext i32 %inc228 to i64
  %arrayidx231 = getelementptr inbounds i8, ptr %103, i64 %idxprom230
  %104 = load i8, ptr %arrayidx231, align 1
  store i8 %104, ptr %c1, align 1
  %idxprom232 = zext i32 %inc229 to i64
  %arrayidx233 = getelementptr inbounds i8, ptr %103, i64 %idxprom232
  %105 = load i8, ptr %arrayidx233, align 1
  store i8 %105, ptr %c2, align 1
  %cmp236.not = icmp eq i8 %104, %105
  br i1 %cmp236.not, label %if.end244, label %if.then238

if.then238:                                       ; preds = %if.end227
  %106 = load i8, ptr %c1, align 1
  %107 = load i8, ptr %c2, align 1
  %cmp241 = icmp ugt i8 %106, %107
  %conv243 = zext i1 %cmp241 to i8
  store i8 %conv243, ptr %retval, align 1
  br label %return

if.end244:                                        ; preds = %if.end227
  %108 = load ptr, ptr %quadrant.addr, align 8
  %109 = load i32, ptr %i1.addr, align 4
  %idxprom245 = zext i32 %109 to i64
  %arrayidx246 = getelementptr inbounds i16, ptr %108, i64 %idxprom245
  %110 = load i16, ptr %arrayidx246, align 2
  store i16 %110, ptr %s1, align 2
  %111 = load i32, ptr %i2.addr, align 4
  %idxprom247 = zext i32 %111 to i64
  %arrayidx248 = getelementptr inbounds i16, ptr %108, i64 %idxprom247
  %112 = load i16, ptr %arrayidx248, align 2
  store i16 %112, ptr %s2, align 2
  %cmp251.not = icmp eq i16 %110, %112
  br i1 %cmp251.not, label %if.end259, label %if.then253

if.then253:                                       ; preds = %if.end244
  %113 = load i16, ptr %s1, align 2
  %114 = load i16, ptr %s2, align 2
  %cmp256 = icmp ugt i16 %113, %114
  %conv258 = zext i1 %cmp256 to i8
  store i8 %conv258, ptr %retval, align 1
  br label %return

if.end259:                                        ; preds = %if.end244
  %115 = load i32, ptr %i1.addr, align 4
  %inc260 = add i32 %115, 1
  store i32 %inc260, ptr %i1.addr, align 4
  %116 = load i32, ptr %i2.addr, align 4
  %inc261 = add i32 %116, 1
  store i32 %inc261, ptr %i2.addr, align 4
  %117 = load ptr, ptr %block.addr, align 8
  %idxprom262 = zext i32 %inc260 to i64
  %arrayidx263 = getelementptr inbounds i8, ptr %117, i64 %idxprom262
  %118 = load i8, ptr %arrayidx263, align 1
  store i8 %118, ptr %c1, align 1
  %idxprom264 = zext i32 %inc261 to i64
  %arrayidx265 = getelementptr inbounds i8, ptr %117, i64 %idxprom264
  %119 = load i8, ptr %arrayidx265, align 1
  store i8 %119, ptr %c2, align 1
  %cmp268.not = icmp eq i8 %118, %119
  br i1 %cmp268.not, label %if.end276, label %if.then270

if.then270:                                       ; preds = %if.end259
  %120 = load i8, ptr %c1, align 1
  %121 = load i8, ptr %c2, align 1
  %cmp273 = icmp ugt i8 %120, %121
  %conv275 = zext i1 %cmp273 to i8
  store i8 %conv275, ptr %retval, align 1
  br label %return

if.end276:                                        ; preds = %if.end259
  %122 = load ptr, ptr %quadrant.addr, align 8
  %123 = load i32, ptr %i1.addr, align 4
  %idxprom277 = zext i32 %123 to i64
  %arrayidx278 = getelementptr inbounds i16, ptr %122, i64 %idxprom277
  %124 = load i16, ptr %arrayidx278, align 2
  store i16 %124, ptr %s1, align 2
  %125 = load i32, ptr %i2.addr, align 4
  %idxprom279 = zext i32 %125 to i64
  %arrayidx280 = getelementptr inbounds i16, ptr %122, i64 %idxprom279
  %126 = load i16, ptr %arrayidx280, align 2
  store i16 %126, ptr %s2, align 2
  %cmp283.not = icmp eq i16 %124, %126
  br i1 %cmp283.not, label %if.end291, label %if.then285

if.then285:                                       ; preds = %if.end276
  %127 = load i16, ptr %s1, align 2
  %128 = load i16, ptr %s2, align 2
  %cmp288 = icmp ugt i16 %127, %128
  %conv290 = zext i1 %cmp288 to i8
  store i8 %conv290, ptr %retval, align 1
  br label %return

if.end291:                                        ; preds = %if.end276
  %129 = load i32, ptr %i1.addr, align 4
  %inc292 = add i32 %129, 1
  store i32 %inc292, ptr %i1.addr, align 4
  %130 = load i32, ptr %i2.addr, align 4
  %inc293 = add i32 %130, 1
  store i32 %inc293, ptr %i2.addr, align 4
  %131 = load ptr, ptr %block.addr, align 8
  %idxprom294 = zext i32 %inc292 to i64
  %arrayidx295 = getelementptr inbounds i8, ptr %131, i64 %idxprom294
  %132 = load i8, ptr %arrayidx295, align 1
  store i8 %132, ptr %c1, align 1
  %idxprom296 = zext i32 %inc293 to i64
  %arrayidx297 = getelementptr inbounds i8, ptr %131, i64 %idxprom296
  %133 = load i8, ptr %arrayidx297, align 1
  store i8 %133, ptr %c2, align 1
  %cmp300.not = icmp eq i8 %132, %133
  br i1 %cmp300.not, label %if.end308, label %if.then302

if.then302:                                       ; preds = %if.end291
  %134 = load i8, ptr %c1, align 1
  %135 = load i8, ptr %c2, align 1
  %cmp305 = icmp ugt i8 %134, %135
  %conv307 = zext i1 %cmp305 to i8
  store i8 %conv307, ptr %retval, align 1
  br label %return

if.end308:                                        ; preds = %if.end291
  %136 = load ptr, ptr %quadrant.addr, align 8
  %137 = load i32, ptr %i1.addr, align 4
  %idxprom309 = zext i32 %137 to i64
  %arrayidx310 = getelementptr inbounds i16, ptr %136, i64 %idxprom309
  %138 = load i16, ptr %arrayidx310, align 2
  store i16 %138, ptr %s1, align 2
  %139 = load i32, ptr %i2.addr, align 4
  %idxprom311 = zext i32 %139 to i64
  %arrayidx312 = getelementptr inbounds i16, ptr %136, i64 %idxprom311
  %140 = load i16, ptr %arrayidx312, align 2
  store i16 %140, ptr %s2, align 2
  %cmp315.not = icmp eq i16 %138, %140
  br i1 %cmp315.not, label %if.end323, label %if.then317

if.then317:                                       ; preds = %if.end308
  %141 = load i16, ptr %s1, align 2
  %142 = load i16, ptr %s2, align 2
  %cmp320 = icmp ugt i16 %141, %142
  %conv322 = zext i1 %cmp320 to i8
  store i8 %conv322, ptr %retval, align 1
  br label %return

if.end323:                                        ; preds = %if.end308
  %143 = load i32, ptr %i1.addr, align 4
  %inc324 = add i32 %143, 1
  store i32 %inc324, ptr %i1.addr, align 4
  %144 = load i32, ptr %i2.addr, align 4
  %inc325 = add i32 %144, 1
  store i32 %inc325, ptr %i2.addr, align 4
  %145 = load ptr, ptr %block.addr, align 8
  %idxprom326 = zext i32 %inc324 to i64
  %arrayidx327 = getelementptr inbounds i8, ptr %145, i64 %idxprom326
  %146 = load i8, ptr %arrayidx327, align 1
  store i8 %146, ptr %c1, align 1
  %idxprom328 = zext i32 %inc325 to i64
  %arrayidx329 = getelementptr inbounds i8, ptr %145, i64 %idxprom328
  %147 = load i8, ptr %arrayidx329, align 1
  store i8 %147, ptr %c2, align 1
  %cmp332.not = icmp eq i8 %146, %147
  br i1 %cmp332.not, label %if.end340, label %if.then334

if.then334:                                       ; preds = %if.end323
  %148 = load i8, ptr %c1, align 1
  %149 = load i8, ptr %c2, align 1
  %cmp337 = icmp ugt i8 %148, %149
  %conv339 = zext i1 %cmp337 to i8
  store i8 %conv339, ptr %retval, align 1
  br label %return

if.end340:                                        ; preds = %if.end323
  %150 = load ptr, ptr %quadrant.addr, align 8
  %151 = load i32, ptr %i1.addr, align 4
  %idxprom341 = zext i32 %151 to i64
  %arrayidx342 = getelementptr inbounds i16, ptr %150, i64 %idxprom341
  %152 = load i16, ptr %arrayidx342, align 2
  store i16 %152, ptr %s1, align 2
  %153 = load i32, ptr %i2.addr, align 4
  %idxprom343 = zext i32 %153 to i64
  %arrayidx344 = getelementptr inbounds i16, ptr %150, i64 %idxprom343
  %154 = load i16, ptr %arrayidx344, align 2
  store i16 %154, ptr %s2, align 2
  %cmp347.not = icmp eq i16 %152, %154
  br i1 %cmp347.not, label %if.end355, label %if.then349

if.then349:                                       ; preds = %if.end340
  %155 = load i16, ptr %s1, align 2
  %156 = load i16, ptr %s2, align 2
  %cmp352 = icmp ugt i16 %155, %156
  %conv354 = zext i1 %cmp352 to i8
  store i8 %conv354, ptr %retval, align 1
  br label %return

if.end355:                                        ; preds = %if.end340
  %157 = load i32, ptr %i1.addr, align 4
  %inc356 = add i32 %157, 1
  store i32 %inc356, ptr %i1.addr, align 4
  %158 = load i32, ptr %i2.addr, align 4
  %inc357 = add i32 %158, 1
  store i32 %inc357, ptr %i2.addr, align 4
  %159 = load ptr, ptr %block.addr, align 8
  %idxprom358 = zext i32 %inc356 to i64
  %arrayidx359 = getelementptr inbounds i8, ptr %159, i64 %idxprom358
  %160 = load i8, ptr %arrayidx359, align 1
  store i8 %160, ptr %c1, align 1
  %idxprom360 = zext i32 %inc357 to i64
  %arrayidx361 = getelementptr inbounds i8, ptr %159, i64 %idxprom360
  %161 = load i8, ptr %arrayidx361, align 1
  store i8 %161, ptr %c2, align 1
  %cmp364.not = icmp eq i8 %160, %161
  br i1 %cmp364.not, label %if.end372, label %if.then366

if.then366:                                       ; preds = %if.end355
  %162 = load i8, ptr %c1, align 1
  %163 = load i8, ptr %c2, align 1
  %cmp369 = icmp ugt i8 %162, %163
  %conv371 = zext i1 %cmp369 to i8
  store i8 %conv371, ptr %retval, align 1
  br label %return

if.end372:                                        ; preds = %if.end355
  %164 = load ptr, ptr %quadrant.addr, align 8
  %165 = load i32, ptr %i1.addr, align 4
  %idxprom373 = zext i32 %165 to i64
  %arrayidx374 = getelementptr inbounds i16, ptr %164, i64 %idxprom373
  %166 = load i16, ptr %arrayidx374, align 2
  store i16 %166, ptr %s1, align 2
  %167 = load i32, ptr %i2.addr, align 4
  %idxprom375 = zext i32 %167 to i64
  %arrayidx376 = getelementptr inbounds i16, ptr %164, i64 %idxprom375
  %168 = load i16, ptr %arrayidx376, align 2
  store i16 %168, ptr %s2, align 2
  %cmp379.not = icmp eq i16 %166, %168
  br i1 %cmp379.not, label %if.end387, label %if.then381

if.then381:                                       ; preds = %if.end372
  %169 = load i16, ptr %s1, align 2
  %170 = load i16, ptr %s2, align 2
  %cmp384 = icmp ugt i16 %169, %170
  %conv386 = zext i1 %cmp384 to i8
  store i8 %conv386, ptr %retval, align 1
  br label %return

if.end387:                                        ; preds = %if.end372
  %171 = load i32, ptr %i1.addr, align 4
  %inc388 = add i32 %171, 1
  store i32 %inc388, ptr %i1.addr, align 4
  %172 = load i32, ptr %i2.addr, align 4
  %inc389 = add i32 %172, 1
  store i32 %inc389, ptr %i2.addr, align 4
  %173 = load ptr, ptr %block.addr, align 8
  %idxprom390 = zext i32 %inc388 to i64
  %arrayidx391 = getelementptr inbounds i8, ptr %173, i64 %idxprom390
  %174 = load i8, ptr %arrayidx391, align 1
  store i8 %174, ptr %c1, align 1
  %idxprom392 = zext i32 %inc389 to i64
  %arrayidx393 = getelementptr inbounds i8, ptr %173, i64 %idxprom392
  %175 = load i8, ptr %arrayidx393, align 1
  store i8 %175, ptr %c2, align 1
  %cmp396.not = icmp eq i8 %174, %175
  br i1 %cmp396.not, label %if.end404, label %if.then398

if.then398:                                       ; preds = %if.end387
  %176 = load i8, ptr %c1, align 1
  %177 = load i8, ptr %c2, align 1
  %cmp401 = icmp ugt i8 %176, %177
  %conv403 = zext i1 %cmp401 to i8
  store i8 %conv403, ptr %retval, align 1
  br label %return

if.end404:                                        ; preds = %if.end387
  %178 = load ptr, ptr %quadrant.addr, align 8
  %179 = load i32, ptr %i1.addr, align 4
  %idxprom405 = zext i32 %179 to i64
  %arrayidx406 = getelementptr inbounds i16, ptr %178, i64 %idxprom405
  %180 = load i16, ptr %arrayidx406, align 2
  store i16 %180, ptr %s1, align 2
  %181 = load i32, ptr %i2.addr, align 4
  %idxprom407 = zext i32 %181 to i64
  %arrayidx408 = getelementptr inbounds i16, ptr %178, i64 %idxprom407
  %182 = load i16, ptr %arrayidx408, align 2
  store i16 %182, ptr %s2, align 2
  %cmp411.not = icmp eq i16 %180, %182
  br i1 %cmp411.not, label %if.end419, label %if.then413

if.then413:                                       ; preds = %if.end404
  %183 = load i16, ptr %s1, align 2
  %184 = load i16, ptr %s2, align 2
  %cmp416 = icmp ugt i16 %183, %184
  %conv418 = zext i1 %cmp416 to i8
  store i8 %conv418, ptr %retval, align 1
  br label %return

if.end419:                                        ; preds = %if.end404
  %185 = load i32, ptr %i1.addr, align 4
  %inc420 = add i32 %185, 1
  store i32 %inc420, ptr %i1.addr, align 4
  %186 = load i32, ptr %i2.addr, align 4
  %inc421 = add i32 %186, 1
  store i32 %inc421, ptr %i2.addr, align 4
  %187 = load ptr, ptr %block.addr, align 8
  %idxprom422 = zext i32 %inc420 to i64
  %arrayidx423 = getelementptr inbounds i8, ptr %187, i64 %idxprom422
  %188 = load i8, ptr %arrayidx423, align 1
  store i8 %188, ptr %c1, align 1
  %idxprom424 = zext i32 %inc421 to i64
  %arrayidx425 = getelementptr inbounds i8, ptr %187, i64 %idxprom424
  %189 = load i8, ptr %arrayidx425, align 1
  store i8 %189, ptr %c2, align 1
  %cmp428.not = icmp eq i8 %188, %189
  br i1 %cmp428.not, label %if.end436, label %if.then430

if.then430:                                       ; preds = %if.end419
  %190 = load i8, ptr %c1, align 1
  %191 = load i8, ptr %c2, align 1
  %cmp433 = icmp ugt i8 %190, %191
  %conv435 = zext i1 %cmp433 to i8
  store i8 %conv435, ptr %retval, align 1
  br label %return

if.end436:                                        ; preds = %if.end419
  %192 = load ptr, ptr %quadrant.addr, align 8
  %193 = load i32, ptr %i1.addr, align 4
  %idxprom437 = zext i32 %193 to i64
  %arrayidx438 = getelementptr inbounds i16, ptr %192, i64 %idxprom437
  %194 = load i16, ptr %arrayidx438, align 2
  store i16 %194, ptr %s1, align 2
  %195 = load i32, ptr %i2.addr, align 4
  %idxprom439 = zext i32 %195 to i64
  %arrayidx440 = getelementptr inbounds i16, ptr %192, i64 %idxprom439
  %196 = load i16, ptr %arrayidx440, align 2
  store i16 %196, ptr %s2, align 2
  %cmp443.not = icmp eq i16 %194, %196
  br i1 %cmp443.not, label %if.end451, label %if.then445

if.then445:                                       ; preds = %if.end436
  %197 = load i16, ptr %s1, align 2
  %198 = load i16, ptr %s2, align 2
  %cmp448 = icmp ugt i16 %197, %198
  %conv450 = zext i1 %cmp448 to i8
  store i8 %conv450, ptr %retval, align 1
  br label %return

if.end451:                                        ; preds = %if.end436
  %199 = load i32, ptr %i1.addr, align 4
  %inc452 = add i32 %199, 1
  store i32 %inc452, ptr %i1.addr, align 4
  %200 = load i32, ptr %i2.addr, align 4
  %inc453 = add i32 %200, 1
  store i32 %inc453, ptr %i2.addr, align 4
  %201 = load i32, ptr %nblock.addr, align 4
  %cmp454.not = icmp ult i32 %inc452, %201
  br i1 %cmp454.not, label %if.end457, label %if.then456

if.then456:                                       ; preds = %if.end451
  %202 = load i32, ptr %nblock.addr, align 4
  %203 = load i32, ptr %i1.addr, align 4
  %sub = sub i32 %203, %202
  store i32 %sub, ptr %i1.addr, align 4
  br label %if.end457

if.end457:                                        ; preds = %if.then456, %if.end451
  %204 = load i32, ptr %i2.addr, align 4
  %205 = load i32, ptr %nblock.addr, align 4
  %cmp458.not = icmp ult i32 %204, %205
  br i1 %cmp458.not, label %if.end462, label %if.then460

if.then460:                                       ; preds = %if.end457
  %206 = load i32, ptr %nblock.addr, align 4
  %207 = load i32, ptr %i2.addr, align 4
  %sub461 = sub i32 %207, %206
  store i32 %sub461, ptr %i2.addr, align 4
  br label %if.end462

if.end462:                                        ; preds = %if.then460, %if.end457
  %208 = load i32, ptr %k, align 4
  %sub463 = add nsw i32 %208, -8
  store i32 %sub463, ptr %k, align 4
  %209 = load ptr, ptr %budget.addr, align 8
  %210 = load i32, ptr %209, align 4
  %dec = add nsw i32 %210, -1
  store i32 %dec, ptr %209, align 4
  %211 = load i32, ptr %k, align 4
  %cmp464 = icmp sgt i32 %211, -1
  br i1 %cmp464, label %do.body, label %do.end, !llvm.loop !61

do.end:                                           ; preds = %if.end462
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %if.then445, %if.then430, %if.then413, %if.then398, %if.then381, %if.then366, %if.then349, %if.then334, %if.then317, %if.then302, %if.then285, %if.then270, %if.then253, %if.then238, %if.then221, %if.then206, %if.then189, %if.then172, %if.then155, %if.then138, %if.then121, %if.then104, %if.then87, %if.then70, %if.then53, %if.then36, %if.then19, %if.then
  %212 = load i8, ptr %retval, align 1
  ret i8 %212
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
