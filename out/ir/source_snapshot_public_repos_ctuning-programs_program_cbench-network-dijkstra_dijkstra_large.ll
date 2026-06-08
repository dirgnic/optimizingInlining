; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-network-dijkstra/dijkstra_large.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-network-dijkstra/dijkstra_large.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct._NODE = type { i32, i32 }
%struct._QITEM = type { i32, i32, i32, ptr }

@NUM_NODES = global i32 0, align 4
@qHead = global ptr null, align 8
@g_qCount = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@__stdoutp = external global ptr, align 8
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = global i32 0, align 4
@rgnNodes = global ptr null, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Shortest path is 0 in cost. Just stay where you are.\0A\00", align 1
@iNode = global i32 0, align 4
@iDist = global i32 0, align 4
@iPrev = global i32 0, align 4
@i = global i32 0, align 4
@AdjMatrix = global ptr null, align 8
@iCost = global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"CT_REPEAT_MAIN\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Matrix size: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"AdjMatrix size: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"rgnNodesSize: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @qcount() #0 {
entry:
  %0 = load i32, ptr @g_qCount, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @dijkstra(i32 noundef %chStart, i32 noundef %chEnd) #0 {
entry:
  %chStart.addr = alloca i32, align 4
  %chEnd.addr = alloca i32, align 4
  store i32 %chStart, ptr %chStart.addr, align 4
  store i32 %chEnd, ptr %chEnd.addr, align 4
  store i32 0, ptr @ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @ch, align 4
  %1 = load i32, ptr @NUM_NODES, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @rgnNodes, align 8
  %3 = load i32, ptr @ch, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct._NODE, ptr %2, i64 %idxprom
  %iDist = getelementptr inbounds %struct._NODE, ptr %arrayidx, i32 0, i32 0
  store i32 9999, ptr %iDist, align 4
  %4 = load ptr, ptr @rgnNodes, align 8
  %5 = load i32, ptr @ch, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct._NODE, ptr %4, i64 %idxprom1
  %iPrev = getelementptr inbounds %struct._NODE, ptr %arrayidx2, i32 0, i32 1
  store i32 9999, ptr %iPrev, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr @ch, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @ch, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %chStart.addr, align 4
  %8 = load i32, ptr %chEnd.addr, align 4
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end41

if.else:                                          ; preds = %for.end
  %9 = load ptr, ptr @rgnNodes, align 8
  %10 = load i32, ptr %chStart.addr, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds %struct._NODE, ptr %9, i64 %idxprom4
  %iDist6 = getelementptr inbounds %struct._NODE, ptr %arrayidx5, i32 0, i32 0
  store i32 0, ptr %iDist6, align 4
  %11 = load ptr, ptr @rgnNodes, align 8
  %12 = load i32, ptr %chStart.addr, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds %struct._NODE, ptr %11, i64 %idxprom7
  %iPrev9 = getelementptr inbounds %struct._NODE, ptr %arrayidx8, i32 0, i32 1
  store i32 9999, ptr %iPrev9, align 4
  %13 = load i32, ptr %chStart.addr, align 4
  call void @enqueue(i32 noundef %13, i32 noundef 0, i32 noundef 9999)
  br label %while.cond

while.cond:                                       ; preds = %for.end40, %if.else
  %call10 = call i32 @qcount()
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @dequeue(ptr noundef @iNode, ptr noundef @iDist, ptr noundef @iPrev)
  store i32 0, ptr @i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc38, %while.body
  %14 = load i32, ptr @i, align 4
  %15 = load i32, ptr @NUM_NODES, align 4
  %cmp13 = icmp slt i32 %14, %15
  br i1 %cmp13, label %for.body14, label %for.end40

for.body14:                                       ; preds = %for.cond12
  %16 = load ptr, ptr @AdjMatrix, align 8
  %17 = load i32, ptr @iNode, align 4
  %18 = load i32, ptr @NUM_NODES, align 4
  %mul = mul nsw i32 %17, %18
  %19 = load i32, ptr @i, align 4
  %add = add nsw i32 %mul, %19
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %16, i64 %idxprom15
  %20 = load i32, ptr %arrayidx16, align 4
  store i32 %20, ptr @iCost, align 4
  %cmp17 = icmp ne i32 %20, 9999
  br i1 %cmp17, label %if.then18, label %if.end37

if.then18:                                        ; preds = %for.body14
  %21 = load ptr, ptr @rgnNodes, align 8
  %22 = load i32, ptr @i, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds %struct._NODE, ptr %21, i64 %idxprom19
  %iDist21 = getelementptr inbounds %struct._NODE, ptr %arrayidx20, i32 0, i32 0
  %23 = load i32, ptr %iDist21, align 4
  %cmp22 = icmp eq i32 9999, %23
  br i1 %cmp22, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then18
  %24 = load ptr, ptr @rgnNodes, align 8
  %25 = load i32, ptr @i, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds %struct._NODE, ptr %24, i64 %idxprom23
  %iDist25 = getelementptr inbounds %struct._NODE, ptr %arrayidx24, i32 0, i32 0
  %26 = load i32, ptr %iDist25, align 4
  %27 = load i32, ptr @iCost, align 4
  %28 = load i32, ptr @iDist, align 4
  %add26 = add nsw i32 %27, %28
  %cmp27 = icmp sgt i32 %26, %add26
  br i1 %cmp27, label %if.then28, label %if.end

if.then28:                                        ; preds = %lor.lhs.false, %if.then18
  %29 = load i32, ptr @iDist, align 4
  %30 = load i32, ptr @iCost, align 4
  %add29 = add nsw i32 %29, %30
  %31 = load ptr, ptr @rgnNodes, align 8
  %32 = load i32, ptr @i, align 4
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds %struct._NODE, ptr %31, i64 %idxprom30
  %iDist32 = getelementptr inbounds %struct._NODE, ptr %arrayidx31, i32 0, i32 0
  store i32 %add29, ptr %iDist32, align 4
  %33 = load i32, ptr @iNode, align 4
  %34 = load ptr, ptr @rgnNodes, align 8
  %35 = load i32, ptr @i, align 4
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds %struct._NODE, ptr %34, i64 %idxprom33
  %iPrev35 = getelementptr inbounds %struct._NODE, ptr %arrayidx34, i32 0, i32 1
  store i32 %33, ptr %iPrev35, align 4
  %36 = load i32, ptr @i, align 4
  %37 = load i32, ptr @iDist, align 4
  %38 = load i32, ptr @iCost, align 4
  %add36 = add nsw i32 %37, %38
  %39 = load i32, ptr @iNode, align 4
  call void @enqueue(i32 noundef %36, i32 noundef %add36, i32 noundef %39)
  br label %if.end

if.end:                                           ; preds = %if.then28, %lor.lhs.false
  br label %if.end37

if.end37:                                         ; preds = %if.end, %for.body14
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %40 = load i32, ptr @i, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, ptr @i, align 4
  br label %for.cond12, !llvm.loop !9

for.end40:                                        ; preds = %for.cond12
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  br label %if.end41

if.end41:                                         ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %fp = alloca ptr, align 8
  %ct_repeat = alloca i64, align 8
  %ct_repeat_max = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 0, ptr %ct_repeat, align 8
  store i64 1, ptr %ct_repeat_max, align 8
  %call = call ptr @getenv(ptr noundef @.str.3)
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @getenv(ptr noundef @.str.3)
  %call2 = call i64 @atol(ptr noundef %call1)
  store i64 %call2, ptr %ct_repeat_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %cmp3 = icmp slt i32 %0, 2
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.4)
  %2 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.5)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end7:                                          ; preds = %if.end
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx, align 8
  %call8 = call ptr @"\01_fopen"(ptr noundef %4, ptr noundef @.str.6)
  store ptr %call8, ptr %fp, align 8
  %5 = load ptr, ptr %fp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %5, ptr noundef @.str.7, ptr noundef @NUM_NODES)
  %6 = load i32, ptr @NUM_NODES, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %6)
  %7 = load i32, ptr @NUM_NODES, align 4
  %add = add nsw i32 %7, 1
  %mul = mul nsw i32 4, %add
  %8 = load i32, ptr @NUM_NODES, align 4
  %add11 = add nsw i32 %8, 1
  %mul12 = mul nsw i32 %mul, %add11
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %mul12)
  %9 = load i32, ptr @NUM_NODES, align 4
  %add14 = add nsw i32 %9, 1
  %mul15 = mul nsw i32 8, %add14
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %mul15)
  %10 = load i32, ptr @NUM_NODES, align 4
  %add17 = add nsw i32 %10, 1
  %conv = sext i32 %add17 to i64
  %mul18 = mul i64 4, %conv
  %11 = load i32, ptr @NUM_NODES, align 4
  %add19 = add nsw i32 %11, 1
  %conv20 = sext i32 %add19 to i64
  %mul21 = mul i64 %mul18, %conv20
  %call22 = call ptr @malloc(i64 noundef %mul21) #4
  store ptr %call22, ptr @AdjMatrix, align 8
  %12 = load i32, ptr @NUM_NODES, align 4
  %add23 = add nsw i32 %12, 1
  %conv24 = sext i32 %add23 to i64
  %mul25 = mul i64 8, %conv24
  %call26 = call ptr @malloc(i64 noundef %mul25) #4
  store ptr %call26, ptr @rgnNodes, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %if.end7
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr @NUM_NODES, align 4
  %cmp27 = icmp slt i32 %13, %14
  br i1 %cmp27, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc, %for.body
  %15 = load i32, ptr %j, align 4
  %16 = load i32, ptr @NUM_NODES, align 4
  %cmp30 = icmp slt i32 %15, %16
  br i1 %cmp30, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond29
  %17 = load ptr, ptr %fp, align 8
  %call33 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %17, ptr noundef @.str.7, ptr noundef %k)
  %18 = load i32, ptr %k, align 4
  %19 = load ptr, ptr @AdjMatrix, align 8
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr @NUM_NODES, align 4
  %mul34 = mul nsw i32 %20, %21
  %22 = load i32, ptr %j, align 4
  %add35 = add nsw i32 %mul34, %22
  %idxprom = sext i32 %add35 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %19, i64 %idxprom
  store i32 %18, ptr %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body32
  %23 = load i32, ptr %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond29, !llvm.loop !11

for.end:                                          ; preds = %for.cond29
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4
  %inc38 = add nsw i32 %24, 1
  store i32 %inc38, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end39:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  %25 = load i32, ptr @NUM_NODES, align 4
  %div = sdiv i32 %25, 2
  store i32 %div, ptr %j, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc56, %for.end39
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr @NUM_NODES, align 4
  %cmp41 = icmp slt i32 %26, %27
  br i1 %cmp41, label %for.body43, label %for.end59

for.body43:                                       ; preds = %for.cond40
  %28 = load i32, ptr %j, align 4
  %29 = load i32, ptr @NUM_NODES, align 4
  %rem = srem i32 %28, %29
  store i32 %rem, ptr %j, align 4
  store i64 0, ptr %ct_repeat, align 8
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc48, %for.body43
  %30 = load i64, ptr %ct_repeat, align 8
  %31 = load i64, ptr %ct_repeat_max, align 8
  %cmp45 = icmp slt i64 %30, %31
  br i1 %cmp45, label %for.body47, label %for.end50

for.body47:                                       ; preds = %for.cond44
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %j, align 4
  call void @dijkstra(i32 noundef %32, i32 noundef %33)
  br label %for.inc48

for.inc48:                                        ; preds = %for.body47
  %34 = load i64, ptr %ct_repeat, align 8
  %inc49 = add nsw i64 %34, 1
  store i64 %inc49, ptr %ct_repeat, align 8
  br label %for.cond44, !llvm.loop !13

for.end50:                                        ; preds = %for.cond44
  %35 = load ptr, ptr @rgnNodes, align 8
  %36 = load i32, ptr %j, align 4
  %idxprom51 = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds %struct._NODE, ptr %35, i64 %idxprom51
  %iDist = getelementptr inbounds %struct._NODE, ptr %arrayidx52, i32 0, i32 0
  %37 = load i32, ptr %iDist, align 4
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %37)
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %38 = load ptr, ptr @rgnNodes, align 8
  %39 = load i32, ptr %j, align 4
  call void @print_path(ptr noundef %38, i32 noundef %39)
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  br label %for.inc56

for.inc56:                                        ; preds = %for.end50
  %40 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %40, 1
  store i32 %inc57, ptr %i, align 4
  %41 = load i32, ptr %j, align 4
  %inc58 = add nsw i32 %41, 1
  store i32 %inc58, ptr %j, align 4
  br label %for.cond40, !llvm.loop !14

for.end59:                                        ; preds = %for.cond40
  %42 = load ptr, ptr @AdjMatrix, align 8
  call void @free(ptr noundef %42)
  %43 = load ptr, ptr @rgnNodes, align 8
  call void @free(ptr noundef %43)
  ret i32 0
}

declare ptr @getenv(ptr noundef) #1

declare i64 @atol(ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fscanf(ptr noundef, ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!14 = distinct !{!14, !7}
