; ModuleID = './source_snapshot/public_repos/mibench/network/dijkstra/dijkstra_large.c'
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

; Function Attrs: nounwind ssp uwtable
define void @print_path(ptr noundef %rgnNodes, i32 noundef %chNode) #0 {
entry:
  %rgnNodes.addr = alloca ptr, align 8
  %chNode.addr = alloca i32, align 4
  store ptr %rgnNodes, ptr %rgnNodes.addr, align 8
  store i32 %chNode, ptr %chNode.addr, align 4
  %0 = load ptr, ptr %rgnNodes.addr, align 8
  %1 = load i32, ptr %chNode.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct._NODE, ptr %0, i64 %idxprom
  %iPrev = getelementptr inbounds %struct._NODE, ptr %arrayidx, i32 0, i32 1
  %2 = load i32, ptr %iPrev, align 4
  %cmp = icmp ne i32 %2, 9999
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %rgnNodes.addr, align 8
  %4 = load ptr, ptr %rgnNodes.addr, align 8
  %5 = load i32, ptr %chNode.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct._NODE, ptr %4, i64 %idxprom1
  %iPrev3 = getelementptr inbounds %struct._NODE, ptr %arrayidx2, i32 0, i32 1
  %6 = load i32, ptr %iPrev3, align 4
  call void @print_path(ptr noundef %3, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %chNode.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  %8 = load ptr, ptr @__stdoutp, align 8
  %call4 = call i32 @fflush(ptr noundef %8)
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
  %call = call ptr @malloc(i64 noundef 24) #4
  store ptr %call, ptr %qNew, align 8
  %0 = load ptr, ptr @qHead, align 8
  store ptr %0, ptr %qLast, align 8
  %1 = load ptr, ptr %qNew, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %iNode.addr, align 4
  %4 = load ptr, ptr %qNew, align 8
  %iNode2 = getelementptr inbounds %struct._QITEM, ptr %4, i32 0, i32 0
  store i32 %3, ptr %iNode2, align 8
  %5 = load i32, ptr %iDist.addr, align 4
  %6 = load ptr, ptr %qNew, align 8
  %iDist3 = getelementptr inbounds %struct._QITEM, ptr %6, i32 0, i32 1
  store i32 %5, ptr %iDist3, align 4
  %7 = load i32, ptr %iPrev.addr, align 4
  %8 = load ptr, ptr %qNew, align 8
  %iPrev4 = getelementptr inbounds %struct._QITEM, ptr %8, i32 0, i32 2
  store i32 %7, ptr %iPrev4, align 8
  %9 = load ptr, ptr %qNew, align 8
  %qNext = getelementptr inbounds %struct._QITEM, ptr %9, i32 0, i32 3
  store ptr null, ptr %qNext, align 8
  %10 = load ptr, ptr %qLast, align 8
  %tobool5 = icmp ne ptr %10, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %qNew, align 8
  store ptr %11, ptr @qHead, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %12 = load ptr, ptr %qLast, align 8
  %qNext7 = getelementptr inbounds %struct._QITEM, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %qNext7, align 8
  %tobool8 = icmp ne ptr %13, null
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %qLast, align 8
  %qNext9 = getelementptr inbounds %struct._QITEM, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %qNext9, align 8
  store ptr %15, ptr %qLast, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %qNew, align 8
  %17 = load ptr, ptr %qLast, align 8
  %qNext10 = getelementptr inbounds %struct._QITEM, ptr %17, i32 0, i32 3
  store ptr %16, ptr %qNext10, align 8
  br label %if.end11

if.end11:                                         ; preds = %while.end, %if.then6
  %18 = load i32, ptr @g_qCount, align 4
  %inc = add nsw i32 %18, 1
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
  %1 = load ptr, ptr @qHead, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @qHead, align 8
  %iNode = getelementptr inbounds %struct._QITEM, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %iNode, align 8
  %4 = load ptr, ptr %piNode.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load ptr, ptr @qHead, align 8
  %iDist = getelementptr inbounds %struct._QITEM, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %iDist, align 4
  %7 = load ptr, ptr %piDist.addr, align 8
  store i32 %6, ptr %7, align 4
  %8 = load ptr, ptr @qHead, align 8
  %iPrev = getelementptr inbounds %struct._QITEM, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %iPrev, align 8
  %10 = load ptr, ptr %piPrev.addr, align 8
  store i32 %9, ptr %10, align 4
  %11 = load ptr, ptr @qHead, align 8
  %qNext = getelementptr inbounds %struct._QITEM, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %qNext, align 8
  store ptr %12, ptr @qHead, align 8
  %13 = load ptr, ptr %qKill, align 8
  call void @free(ptr noundef %13)
  %14 = load i32, ptr @g_qCount, align 4
  %dec = add nsw i32 %14, -1
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
  store i32 0, ptr @ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @ch, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @ch, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom
  %iDist = getelementptr inbounds %struct._NODE, ptr %arrayidx, i32 0, i32 0
  store i32 9999, ptr %iDist, align 4
  %2 = load i32, ptr @ch, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom1
  %iPrev = getelementptr inbounds %struct._NODE, ptr %arrayidx2, i32 0, i32 1
  store i32 9999, ptr %iPrev, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr @ch, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @ch, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %chStart.addr, align 4
  %5 = load i32, ptr %chEnd.addr, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end48

if.else:                                          ; preds = %for.end
  %6 = load i32, ptr %chStart.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom4
  %iDist6 = getelementptr inbounds %struct._NODE, ptr %arrayidx5, i32 0, i32 0
  store i32 0, ptr %iDist6, align 4
  %7 = load i32, ptr %chStart.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom7
  %iPrev9 = getelementptr inbounds %struct._NODE, ptr %arrayidx8, i32 0, i32 1
  store i32 9999, ptr %iPrev9, align 4
  %8 = load i32, ptr %chStart.addr, align 4
  call void @enqueue(i32 noundef %8, i32 noundef 0, i32 noundef 9999)
  br label %while.cond

while.cond:                                       ; preds = %for.end41, %if.else
  %call10 = call i32 @qcount()
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @dequeue(ptr noundef @iNode, ptr noundef @iDist, ptr noundef @iPrev)
  store i32 0, ptr @i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc39, %while.body
  %9 = load i32, ptr @i, align 4
  %cmp13 = icmp slt i32 %9, 100
  br i1 %cmp13, label %for.body14, label %for.end41

for.body14:                                       ; preds = %for.cond12
  %10 = load i32, ptr @iNode, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %idxprom15
  %11 = load i32, ptr @i, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %arrayidx16, i64 0, i64 %idxprom17
  %12 = load i32, ptr %arrayidx18, align 4
  store i32 %12, ptr @iCost, align 4
  %cmp19 = icmp ne i32 %12, 9999
  br i1 %cmp19, label %if.then20, label %if.end38

if.then20:                                        ; preds = %for.body14
  %13 = load i32, ptr @i, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom21
  %iDist23 = getelementptr inbounds %struct._NODE, ptr %arrayidx22, i32 0, i32 0
  %14 = load i32, ptr %iDist23, align 4
  %cmp24 = icmp eq i32 9999, %14
  br i1 %cmp24, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %15 = load i32, ptr @i, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom25
  %iDist27 = getelementptr inbounds %struct._NODE, ptr %arrayidx26, i32 0, i32 0
  %16 = load i32, ptr %iDist27, align 4
  %17 = load i32, ptr @iCost, align 4
  %18 = load i32, ptr @iDist, align 4
  %add = add nsw i32 %17, %18
  %cmp28 = icmp sgt i32 %16, %add
  br i1 %cmp28, label %if.then29, label %if.end

if.then29:                                        ; preds = %lor.lhs.false, %if.then20
  %19 = load i32, ptr @iDist, align 4
  %20 = load i32, ptr @iCost, align 4
  %add30 = add nsw i32 %19, %20
  %21 = load i32, ptr @i, align 4
  %idxprom31 = sext i32 %21 to i64
  %arrayidx32 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom31
  %iDist33 = getelementptr inbounds %struct._NODE, ptr %arrayidx32, i32 0, i32 0
  store i32 %add30, ptr %iDist33, align 4
  %22 = load i32, ptr @iNode, align 4
  %23 = load i32, ptr @i, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom34
  %iPrev36 = getelementptr inbounds %struct._NODE, ptr %arrayidx35, i32 0, i32 1
  store i32 %22, ptr %iPrev36, align 4
  %24 = load i32, ptr @i, align 4
  %25 = load i32, ptr @iDist, align 4
  %26 = load i32, ptr @iCost, align 4
  %add37 = add nsw i32 %25, %26
  %27 = load i32, ptr @iNode, align 4
  call void @enqueue(i32 noundef %24, i32 noundef %add37, i32 noundef %27)
  br label %if.end

if.end:                                           ; preds = %if.then29, %lor.lhs.false
  br label %if.end38

if.end38:                                         ; preds = %if.end, %for.body14
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %28 = load i32, ptr @i, align 4
  %inc40 = add nsw i32 %28, 1
  store i32 %inc40, ptr @i, align 4
  br label %for.cond12, !llvm.loop !9

for.end41:                                        ; preds = %for.cond12
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %29 = load i32, ptr %chEnd.addr, align 4
  %idxprom42 = sext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %idxprom42
  %iDist44 = getelementptr inbounds %struct._NODE, ptr %arrayidx43, i32 0, i32 0
  %30 = load i32, ptr %iDist44, align 4
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %30)
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %31 = load i32, ptr %chEnd.addr, align 4
  call void @print_path(ptr noundef @rgnNodes, i32 noundef %31)
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end48

if.end48:                                         ; preds = %while.end, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %fp = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.6)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx, align 8
  %call2 = call ptr @"\01_fopen"(ptr noundef %4, ptr noundef @.str.8)
  store ptr %call2, ptr %fp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %if.end
  %5 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %5, 100
  br i1 %cmp3, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4
  %cmp5 = icmp slt i32 %6, 100
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load ptr, ptr %fp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %7, ptr noundef @.str.9, ptr noundef %k)
  %8 = load i32, ptr %k, align 4
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %idxprom
  %10 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  store i32 %8, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond4, !llvm.loop !11

for.end:                                          ; preds = %for.cond4
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  store i32 50, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc18, %for.end13
  %13 = load i32, ptr %i, align 4
  %cmp15 = icmp slt i32 %13, 100
  br i1 %cmp15, label %for.body16, label %for.end21

for.body16:                                       ; preds = %for.cond14
  %14 = load i32, ptr %j, align 4
  %rem = srem i32 %14, 100
  store i32 %rem, ptr %j, align 4
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %j, align 4
  %call17 = call i32 @dijkstra(i32 noundef %15, i32 noundef %16)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body16
  %17 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, ptr %i, align 4
  %18 = load i32, ptr %j, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, ptr %j, align 4
  br label %for.cond14, !llvm.loop !13

for.end21:                                        ; preds = %for.cond14
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fscanf(ptr noundef, ptr noundef, ...) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { noreturn }

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
