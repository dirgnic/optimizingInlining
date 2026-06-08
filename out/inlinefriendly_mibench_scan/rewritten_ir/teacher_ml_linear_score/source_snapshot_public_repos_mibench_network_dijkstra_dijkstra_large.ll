; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_mibench_network_dijkstra_dijkstra_large.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/network/dijkstra/dijkstra_large.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct._NODE = type { i32, i32 }
%struct._QITEM = type { i32, i32, i32, ptr }

@qHead = global ptr null, align 8
@g_qCount = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@__stdoutp = external global ptr, align 8
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = global i32 0, align 4
@rgnNodes = global [100 x %struct._NODE] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Shortest path is 0 in cost. Just stay where you are.\0A\00", align 1
@iNode = global i32 0, align 4
@iDist = global i32 0, align 4
@iPrev = global i32 0, align 4
@i = global i32 0, align 4
@AdjMatrix = global [100 x [100 x i32]] zeroinitializer, align 4
@iCost = global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Shortest path is 0 in cost. Just stay where you are.\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @print_path(ptr noundef %rgnNodes, i32 noundef %chNode) #0 {
entry:
  %rgnNodes.addr = alloca ptr, align 8
  %chNode.addr = alloca i32, align 4
  store ptr %rgnNodes, ptr %rgnNodes.addr, align 8
  store i32 %chNode, ptr %chNode.addr, align 4
  %idxprom = sext i32 %chNode to i64
  %iPrev = getelementptr inbounds %struct._NODE, ptr %rgnNodes, i64 %idxprom, i32 1
  %0 = load i32, ptr %iPrev, align 4
  %cmp.not = icmp eq i32 %0, 9999
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rgnNodes.addr, align 8
  %2 = load i32, ptr %chNode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %iPrev3 = getelementptr inbounds %struct._NODE, ptr %1, i64 %idxprom1, i32 1
  %3 = load i32, ptr %iPrev3, align 4
  call void @print_path(ptr noundef %1, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %chNode.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %4) #6
  %5 = load ptr, ptr @__stdoutp, align 8
  %call4 = call i32 @fflush(ptr noundef %5) #6
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @enqueue(i32 noundef %iNode, i32 noundef %iDist, i32 noundef %iPrev) #0 {
entry:
  %iNode.addr = alloca i32, align 4
  %iDist.addr = alloca i32, align 4
  %iPrev.addr = alloca i32, align 4
  %qNew = alloca ptr, align 8
  %qLast = alloca ptr, align 8
  store i32 %iNode, ptr %iNode.addr, align 4
  store i32 %iDist, ptr %iDist.addr, align 4
  store i32 %iPrev, ptr %iPrev.addr, align 4
  %call = call dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #7
  store ptr %call, ptr %qNew, align 8
  %0 = load ptr, ptr @qHead, align 8
  store ptr %0, ptr %qLast, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %1)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %iNode.addr, align 4
  %4 = load ptr, ptr %qNew, align 8
  store i32 %3, ptr %4, align 8
  %5 = load i32, ptr %iDist.addr, align 4
  %iDist3 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  store i32 %5, ptr %iDist3, align 4
  %6 = load i32, ptr %iPrev.addr, align 4
  %iPrev4 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  store i32 %6, ptr %iPrev4, align 8
  %7 = load ptr, ptr %qNew, align 8
  %qNext = getelementptr inbounds %struct._QITEM, ptr %7, i64 0, i32 3
  store ptr null, ptr %qNext, align 8
  %8 = load ptr, ptr %qLast, align 8
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.then6, label %while.cond

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %qNew, align 8
  store ptr %9, ptr @qHead, align 8
  br label %if.end11

while.cond:                                       ; preds = %if.end, %while.body
  %10 = load ptr, ptr %qLast, align 8
  %qNext7 = getelementptr inbounds %struct._QITEM, ptr %10, i64 0, i32 3
  %11 = load ptr, ptr %qNext7, align 8
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %qLast, align 8
  %qNext9 = getelementptr inbounds %struct._QITEM, ptr %12, i64 0, i32 3
  %13 = load ptr, ptr %qNext9, align 8
  store ptr %13, ptr %qLast, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %qNew, align 8
  %15 = load ptr, ptr %qLast, align 8
  %qNext10 = getelementptr inbounds %struct._QITEM, ptr %15, i64 0, i32 3
  store ptr %14, ptr %qNext10, align 8
  br label %if.end11

if.end11:                                         ; preds = %while.end, %if.then6
  %16 = load i32, ptr @g_qCount, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr @g_qCount, align 4
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind ssp uwtable
define void @dequeue(ptr noundef %piNode, ptr noundef %piDist, ptr noundef %piPrev) #0 {
entry:
  %piNode.addr = alloca ptr, align 8
  %piDist.addr = alloca ptr, align 8
  %piPrev.addr = alloca ptr, align 8
  %qKill = alloca ptr, align 8
  store ptr %piNode, ptr %piNode.addr, align 8
  store ptr %piDist, ptr %piDist.addr, align 8
  store ptr %piPrev, ptr %piPrev.addr, align 8
  %0 = load ptr, ptr @qHead, align 8
  store ptr %0, ptr %qKill, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @qHead, align 8
  %2 = load i32, ptr %1, align 8
  %3 = load ptr, ptr %piNode.addr, align 8
  store i32 %2, ptr %3, align 4
  %4 = load ptr, ptr @qHead, align 8
  %iDist = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %iDist, align 4
  %6 = load ptr, ptr %piDist.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr @qHead, align 8
  %iPrev = getelementptr inbounds %struct._QITEM, ptr %7, i64 0, i32 2
  %8 = load i32, ptr %iPrev, align 8
  %9 = load ptr, ptr %piPrev.addr, align 8
  store i32 %8, ptr %9, align 4
  %10 = load ptr, ptr @qHead, align 8
  %qNext = getelementptr inbounds %struct._QITEM, ptr %10, i64 0, i32 3
  %11 = load ptr, ptr %qNext, align 8
  store ptr %11, ptr @qHead, align 8
  %12 = load ptr, ptr %qKill, align 8
  call void @free(ptr noundef %12) #6
  %13 = load i32, ptr @g_qCount, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr @g_qCount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @qcount() #0 {
entry:
  %0 = load i32, ptr @g_qCount, align 4
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define i32 @dijkstra(i32 noundef %chStart, i32 noundef %chEnd) #0 {
entry:
  %retval = alloca i32, align 4
  %chStart.addr = alloca i32, align 4
  %chEnd.addr = alloca i32, align 4
  store i32 %chStart, ptr %chStart.addr, align 4
  store i32 %chEnd, ptr %chEnd.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr @ch, align 4
  %cmp = icmp slt i32 %storemerge, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr @ch, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom
  store i32 9999, ptr %arrayidx, align 4
  %idxprom1 = sext i32 %0 to i64
  %iPrev = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom1, i32 1
  store i32 9999, ptr %iPrev, align 4
  %1 = load i32, ptr @ch, align 4
  %inc = add nsw i32 %1, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %chStart.addr, align 4
  %3 = load i32, ptr %chEnd.addr, align 4
  %cmp3 = icmp eq i32 %2, %3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %puts = call i32 @puts(ptr nonnull @str)
  br label %if.end48

if.else:                                          ; preds = %for.end
  %4 = load i32, ptr %chStart.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom4
  store i32 0, ptr %arrayidx5, align 4
  %idxprom7 = sext i32 %4 to i64
  %iPrev9 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom7, i32 1
  store i32 9999, ptr %iPrev9, align 4
  %5 = load i32, ptr %chStart.addr, align 4
  call void @enqueue(i32 noundef %5, i32 noundef 0, i32 noundef 9999)
  br label %while.cond

while.cond:                                       ; preds = %for.cond12, %if.else
  %6 = load i32, ptr @g_qCount, align 4
  %cmp11 = icmp sgt i32 %6, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @dequeue(ptr noundef nonnull @iNode, ptr noundef nonnull @iDist, ptr noundef nonnull @iPrev)
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc39, %while.body
  %storemerge1 = phi i32 [ 0, %while.body ], [ %inc40, %for.inc39 ]
  store i32 %storemerge1, ptr @i, align 4
  %cmp13 = icmp slt i32 %storemerge1, 100
  br i1 %cmp13, label %for.body14, label %while.cond, !llvm.loop !9

for.body14:                                       ; preds = %for.cond12
  %7 = load i32, ptr @iNode, align 4
  %idxprom15 = sext i32 %7 to i64
  %8 = load i32, ptr @i, align 4
  %idxprom17 = sext i32 %8 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %idxprom15, i64 %idxprom17
  %9 = load i32, ptr %arrayidx18, align 4
  store i32 %9, ptr @iCost, align 4
  %cmp19.not = icmp eq i32 %9, 9999
  br i1 %cmp19.not, label %for.inc39, label %if.then20

if.then20:                                        ; preds = %for.body14
  %10 = load i32, ptr @i, align 4
  %idxprom21 = sext i32 %10 to i64
  %arrayidx22 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom21
  %11 = load i32, ptr %arrayidx22, align 4
  %cmp24 = icmp eq i32 %11, 9999
  br i1 %cmp24, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %12 = load i32, ptr @i, align 4
  %idxprom25 = sext i32 %12 to i64
  %arrayidx26 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom25
  %13 = load i32, ptr %arrayidx26, align 4
  %14 = load i32, ptr @iCost, align 4
  %15 = load i32, ptr @iDist, align 4
  %add = add nsw i32 %14, %15
  %cmp28 = icmp sgt i32 %13, %add
  br i1 %cmp28, label %if.then29, label %for.inc39

if.then29:                                        ; preds = %lor.lhs.false, %if.then20
  %16 = load i32, ptr @iDist, align 4
  %17 = load i32, ptr @iCost, align 4
  %add30 = add nsw i32 %16, %17
  %18 = load i32, ptr @i, align 4
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom31
  store i32 %add30, ptr %arrayidx32, align 4
  %19 = load i32, ptr @iNode, align 4
  %idxprom34 = sext i32 %18 to i64
  %iPrev36 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom34, i32 1
  store i32 %19, ptr %iPrev36, align 4
  %20 = load i32, ptr @i, align 4
  %21 = load i32, ptr @iDist, align 4
  %22 = load i32, ptr @iCost, align 4
  %add37 = add nsw i32 %21, %22
  %23 = load i32, ptr @iNode, align 4
  call void @enqueue(i32 noundef %20, i32 noundef %add37, i32 noundef %23)
  br label %for.inc39

for.inc39:                                        ; preds = %for.body14, %if.then29, %lor.lhs.false
  %24 = load i32, ptr @i, align 4
  %inc40 = add nsw i32 %24, 1
  br label %for.cond12, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %25 = load i32, ptr %chEnd.addr, align 4
  %idxprom42 = sext i32 %25 to i64
  %arrayidx43 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom42
  %26 = load i32, ptr %arrayidx43, align 4
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %26) #6
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4) #6
  call void @print_path(ptr noundef nonnull @rgnNodes, i32 noundef %25)
  %putchar = call i32 @putchar(i32 10)
  br label %if.end48

if.end48:                                         ; preds = %while.end, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %fp = alloca ptr, align 8
  store ptr %argv, ptr %argv.addr, align 8
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %0)
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx, align 8
  %call2 = call ptr @"\01_fopen"(ptr noundef %5, ptr noundef nonnull @.str.8) #6
  store ptr %call2, ptr %fp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc12, %for.inc11 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp3 = icmp slt i32 %storemerge, 100
  br i1 %cmp3, label %for.cond4, label %for.end13

for.cond4:                                        ; preds = %for.cond, %for.body6
  %storemerge2 = phi i32 [ %inc, %for.body6 ], [ 0, %for.cond ]
  store i32 %storemerge2, ptr %j, align 4
  %cmp5 = icmp slt i32 %storemerge2, 100
  br i1 %cmp5, label %for.body6, label %for.inc11

for.body6:                                        ; preds = %for.cond4
  %6 = load ptr, ptr %fp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull %k) #6
  %7 = load i32, ptr %k, align 4
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %idxprom, i64 %idxprom9
  store i32 %7, ptr %arrayidx10, align 4
  %10 = load i32, ptr %j, align 4
  %inc = add nsw i32 %10, 1
  br label %for.cond4, !llvm.loop !11

for.inc11:                                        ; preds = %for.cond4
  %11 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %11, 1
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.body16, %for.end13
  %storemerge1 = phi i32 [ 50, %for.end13 ], [ %inc20, %for.body16 ]
  store i32 %storemerge1, ptr %j, align 4
  %12 = load i32, ptr %i, align 4
  %cmp15 = icmp slt i32 %12, 100
  br i1 %cmp15, label %for.body16, label %for.end21

for.body16:                                       ; preds = %for.cond14
  %13 = load i32, ptr %j, align 4
  %rem = srem i32 %13, 100
  store i32 %rem, ptr %j, align 4
  %14 = load i32, ptr %i, align 4
  %call17 = call i32 @dijkstra(i32 noundef %14, i32 noundef %rem)
  %15 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, ptr %i, align 4
  %16 = load i32, ptr %j, align 4
  %inc20 = add nsw i32 %16, 1
  br label %for.cond14, !llvm.loop !13

for.end21:                                        ; preds = %for.cond14
  call void @exit(i32 noundef 0) #8
  unreachable
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_mibench_network_dijkstra_dijkstra_large_0() #4 {
entry:
  %0 = load i32, ptr @g_qCount, align 4
  ret i32 %0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }

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
