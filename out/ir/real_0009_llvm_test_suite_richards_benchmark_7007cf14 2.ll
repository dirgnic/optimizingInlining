; ModuleID = 'SingleSource/Benchmarks/Misc/richards_benchmark.c'
source_filename = "SingleSource/Benchmarks/Misc/richards_benchmark.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%struct.task = type { ptr, i32, i32, ptr, i32, ptr, i64, i64 }
%struct.packet = type { ptr, i32, i32, i32, [4 x i8] }

@alphabet = global [28 x i8] c"0ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@tasktab = global [11 x ptr] zeroinitializer, align 8
@tasklist = global ptr null, align 8
@qpktcount = global i32 0, align 4
@holdcount = global i32 0, align 4
@tracing = global i32 1, align 4
@layout = global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@tcb = global ptr null, align 8
@taskid = global i64 0, align 8
@v1 = global i64 0, align 8
@v2 = global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"\0ABad task id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Bench mark starting\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Starting\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"finished\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"qpkt count = %d  holdcount = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"These results are \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"correct\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"incorrect\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0Aend of run\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @createtask(i32 noundef %id, i32 noundef %pri, ptr noundef %wkq, i32 noundef %state, ptr noundef %fn, i64 noundef %v1, i64 noundef %v2) #0 {
entry:
  %id.addr = alloca i32, align 4
  %pri.addr = alloca i32, align 4
  %wkq.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %v1.addr = alloca i64, align 8
  %v2.addr = alloca i64, align 8
  %t = alloca ptr, align 8
  store i32 %id, ptr %id.addr, align 4
  store i32 %pri, ptr %pri.addr, align 4
  store ptr %wkq, ptr %wkq.addr, align 8
  store i32 %state, ptr %state.addr, align 4
  store ptr %fn, ptr %fn.addr, align 8
  store i64 %v1, ptr %v1.addr, align 8
  store i64 %v2, ptr %v2.addr, align 8
  %call = call ptr @malloc(i64 noundef 56) #3
  store ptr %call, ptr %t, align 8
  %0 = load ptr, ptr %t, align 8
  %1 = load i32, ptr %id.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [11 x ptr], ptr @tasktab, i64 0, i64 %idxprom
  store ptr %0, ptr %arrayidx, align 8
  %2 = load ptr, ptr @tasklist, align 8
  %3 = load ptr, ptr %t, align 8
  %t_link = getelementptr inbounds nuw %struct.task, ptr %3, i32 0, i32 0
  store ptr %2, ptr %t_link, align 8
  %4 = load i32, ptr %id.addr, align 4
  %5 = load ptr, ptr %t, align 8
  %t_id = getelementptr inbounds nuw %struct.task, ptr %5, i32 0, i32 1
  store i32 %4, ptr %t_id, align 8
  %6 = load i32, ptr %pri.addr, align 4
  %7 = load ptr, ptr %t, align 8
  %t_pri = getelementptr inbounds nuw %struct.task, ptr %7, i32 0, i32 2
  store i32 %6, ptr %t_pri, align 4
  %8 = load ptr, ptr %wkq.addr, align 8
  %9 = load ptr, ptr %t, align 8
  %t_wkq = getelementptr inbounds nuw %struct.task, ptr %9, i32 0, i32 3
  store ptr %8, ptr %t_wkq, align 8
  %10 = load i32, ptr %state.addr, align 4
  %11 = load ptr, ptr %t, align 8
  %t_state = getelementptr inbounds nuw %struct.task, ptr %11, i32 0, i32 4
  store i32 %10, ptr %t_state, align 8
  %12 = load ptr, ptr %fn.addr, align 8
  %13 = load ptr, ptr %t, align 8
  %t_fn = getelementptr inbounds nuw %struct.task, ptr %13, i32 0, i32 5
  store ptr %12, ptr %t_fn, align 8
  %14 = load i64, ptr %v1.addr, align 8
  %15 = load ptr, ptr %t, align 8
  %t_v1 = getelementptr inbounds nuw %struct.task, ptr %15, i32 0, i32 6
  store i64 %14, ptr %t_v1, align 8
  %16 = load i64, ptr %v2.addr, align 8
  %17 = load ptr, ptr %t, align 8
  %t_v2 = getelementptr inbounds nuw %struct.task, ptr %17, i32 0, i32 7
  store i64 %16, ptr %t_v2, align 8
  %18 = load ptr, ptr %t, align 8
  store ptr %18, ptr @tasklist, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @pkt(ptr noundef %link, i32 noundef %id, i32 noundef %kind) #0 {
entry:
  %link.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %link, ptr %link.addr, align 8
  store i32 %id, ptr %id.addr, align 4
  store i32 %kind, ptr %kind.addr, align 4
  %call = call ptr @malloc(i64 noundef 24) #3
  store ptr %call, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %p, align 8
  %p_a2 = getelementptr inbounds nuw %struct.packet, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %p_a2, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %link.addr, align 8
  %5 = load ptr, ptr %p, align 8
  %p_link = getelementptr inbounds nuw %struct.packet, ptr %5, i32 0, i32 0
  store ptr %4, ptr %p_link, align 8
  %6 = load i32, ptr %id.addr, align 4
  %7 = load ptr, ptr %p, align 8
  %p_id = getelementptr inbounds nuw %struct.packet, ptr %7, i32 0, i32 1
  store i32 %6, ptr %p_id, align 8
  %8 = load i32, ptr %kind.addr, align 4
  %9 = load ptr, ptr %p, align 8
  %p_kind = getelementptr inbounds nuw %struct.packet, ptr %9, i32 0, i32 2
  store i32 %8, ptr %p_kind, align 4
  %10 = load ptr, ptr %p, align 8
  %p_a1 = getelementptr inbounds nuw %struct.packet, ptr %10, i32 0, i32 3
  store i32 0, ptr %p_a1, align 8
  %11 = load ptr, ptr %p, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @trace(i8 noundef signext %a) #0 {
entry:
  %a.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
  %0 = load i32, ptr @layout, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr @layout, align 4
  %cmp = icmp sle i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 50, ptr @layout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr %a.addr, align 1
  %conv = sext i8 %1 to i32
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @schedule() #0 {
entry:
  %pkt = alloca ptr, align 8
  %newtcb = alloca ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr @tcb, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store ptr null, ptr %pkt, align 8
  %1 = load ptr, ptr @tcb, align 8
  %t_state = getelementptr inbounds nuw %struct.task, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %t_state, align 8
  switch i32 %2, label %sw.default [
    i32 3, label %sw.bb
    i32 0, label %sw.bb5
    i32 1, label %sw.bb5
    i32 2, label %sw.bb11
    i32 4, label %sw.bb11
    i32 5, label %sw.bb11
    i32 6, label %sw.bb11
    i32 7, label %sw.bb11
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @tcb, align 8
  %t_wkq = getelementptr inbounds nuw %struct.task, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %t_wkq, align 8
  store ptr %4, ptr %pkt, align 8
  %5 = load ptr, ptr %pkt, align 8
  %p_link = getelementptr inbounds nuw %struct.packet, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %p_link, align 8
  %7 = load ptr, ptr @tcb, align 8
  %t_wkq1 = getelementptr inbounds nuw %struct.task, ptr %7, i32 0, i32 3
  store ptr %6, ptr %t_wkq1, align 8
  %8 = load ptr, ptr @tcb, align 8
  %t_wkq2 = getelementptr inbounds nuw %struct.task, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %t_wkq2, align 8
  %cmp3 = icmp eq ptr %9, null
  %10 = zext i1 %cmp3 to i64
  %cond = select i1 %cmp3, i32 0, i32 1
  %11 = load ptr, ptr @tcb, align 8
  %t_state4 = getelementptr inbounds nuw %struct.task, ptr %11, i32 0, i32 4
  store i32 %cond, ptr %t_state4, align 8
  br label %sw.bb5

sw.bb5:                                           ; preds = %while.body, %while.body, %sw.bb
  %12 = load ptr, ptr @tcb, align 8
  %t_id = getelementptr inbounds nuw %struct.task, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %t_id, align 8
  %conv = sext i32 %13 to i64
  store i64 %conv, ptr @taskid, align 8
  %14 = load ptr, ptr @tcb, align 8
  %t_v1 = getelementptr inbounds nuw %struct.task, ptr %14, i32 0, i32 6
  %15 = load i64, ptr %t_v1, align 8
  store i64 %15, ptr @v1, align 8
  %16 = load ptr, ptr @tcb, align 8
  %t_v2 = getelementptr inbounds nuw %struct.task, ptr %16, i32 0, i32 7
  %17 = load i64, ptr %t_v2, align 8
  store i64 %17, ptr @v2, align 8
  %18 = load i32, ptr @tracing, align 4
  %cmp6 = icmp eq i32 %18, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb5
  %19 = load i64, ptr @taskid, align 8
  %add = add nsw i64 %19, 48
  %conv8 = trunc i64 %add to i8
  call void @trace(i8 noundef signext %conv8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb5
  %20 = load ptr, ptr @tcb, align 8
  %t_fn = getelementptr inbounds nuw %struct.task, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %t_fn, align 8
  %22 = load ptr, ptr %pkt, align 8
  %call = call ptr %21(ptr noundef %22)
  store ptr %call, ptr %newtcb, align 8
  %23 = load i64, ptr @v1, align 8
  %24 = load ptr, ptr @tcb, align 8
  %t_v19 = getelementptr inbounds nuw %struct.task, ptr %24, i32 0, i32 6
  store i64 %23, ptr %t_v19, align 8
  %25 = load i64, ptr @v2, align 8
  %26 = load ptr, ptr @tcb, align 8
  %t_v210 = getelementptr inbounds nuw %struct.task, ptr %26, i32 0, i32 7
  store i64 %25, ptr %t_v210, align 8
  %27 = load ptr, ptr %newtcb, align 8
  store ptr %27, ptr @tcb, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %28 = load ptr, ptr @tcb, align 8
  %t_link = getelementptr inbounds nuw %struct.task, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %t_link, align 8
  store ptr %29, ptr @tcb, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %while.end

sw.epilog:                                        ; preds = %sw.bb11, %if.end
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %sw.default, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @Wait() #0 {
entry:
  %0 = load ptr, ptr @tcb, align 8
  %t_state = getelementptr inbounds nuw %struct.task, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %t_state, align 8
  %or = or i32 %1, 2
  store i32 %or, ptr %t_state, align 8
  %2 = load ptr, ptr @tcb, align 8
  ret ptr %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @holdself() #0 {
entry:
  %0 = load i32, ptr @holdcount, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @holdcount, align 4
  %1 = load ptr, ptr @tcb, align 8
  %t_state = getelementptr inbounds nuw %struct.task, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %t_state, align 8
  %or = or i32 %2, 4
  store i32 %or, ptr %t_state, align 8
  %3 = load ptr, ptr @tcb, align 8
  %t_link = getelementptr inbounds nuw %struct.task, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %t_link, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @findtcb(i32 noundef %id) #0 {
entry:
  %id.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  store i32 %id, ptr %id.addr, align 4
  store ptr null, ptr %t, align 8
  %0 = load i32, ptr %id.addr, align 4
  %cmp = icmp sle i32 1, %0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %id.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp1 = icmp sle i64 %conv, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %id.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [11 x ptr], ptr @tasktab, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load ptr, ptr %t, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load i32, ptr %id.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %5)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %6 = load ptr, ptr %t, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @release(i32 noundef %id) #0 {
entry:
  %retval = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  store i32 %id, ptr %id.addr, align 4
  %0 = load i32, ptr %id.addr, align 4
  %call = call ptr @findtcb(i32 noundef %0)
  store ptr %call, ptr %t, align 8
  %1 = load ptr, ptr %t, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %t, align 8
  %t_state = getelementptr inbounds nuw %struct.task, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %t_state, align 8
  %and = and i32 %3, 65531
  store i32 %and, ptr %t_state, align 8
  %4 = load ptr, ptr %t, align 8
  %t_pri = getelementptr inbounds nuw %struct.task, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %t_pri, align 4
  %6 = load ptr, ptr @tcb, align 8
  %t_pri1 = getelementptr inbounds nuw %struct.task, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %t_pri1, align 4
  %cmp2 = icmp sgt i32 %5, %7
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %t, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr @tcb, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @qpkt(ptr noundef %pkt) #0 {
entry:
  %retval = alloca ptr, align 8
  %pkt.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  store ptr %pkt, ptr %pkt.addr, align 8
  %0 = load ptr, ptr %pkt.addr, align 8
  %p_id = getelementptr inbounds nuw %struct.packet, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %p_id, align 8
  %call = call ptr @findtcb(i32 noundef %1)
  store ptr %call, ptr %t, align 8
  %2 = load ptr, ptr %t, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %t, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @qpktcount, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @qpktcount, align 4
  %5 = load ptr, ptr %pkt.addr, align 8
  %p_link = getelementptr inbounds nuw %struct.packet, ptr %5, i32 0, i32 0
  store ptr null, ptr %p_link, align 8
  %6 = load i64, ptr @taskid, align 8
  %conv = trunc i64 %6 to i32
  %7 = load ptr, ptr %pkt.addr, align 8
  %p_id1 = getelementptr inbounds nuw %struct.packet, ptr %7, i32 0, i32 1
  store i32 %conv, ptr %p_id1, align 8
  %8 = load ptr, ptr %t, align 8
  %t_wkq = getelementptr inbounds nuw %struct.task, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %t_wkq, align 8
  %cmp2 = icmp eq ptr %9, null
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %pkt.addr, align 8
  %11 = load ptr, ptr %t, align 8
  %t_wkq5 = getelementptr inbounds nuw %struct.task, ptr %11, i32 0, i32 3
  store ptr %10, ptr %t_wkq5, align 8
  %12 = load ptr, ptr %t, align 8
  %t_state = getelementptr inbounds nuw %struct.task, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %t_state, align 8
  %or = or i32 %13, 1
  store i32 %or, ptr %t_state, align 8
  %14 = load ptr, ptr %t, align 8
  %t_pri = getelementptr inbounds nuw %struct.task, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %t_pri, align 4
  %16 = load ptr, ptr @tcb, align 8
  %t_pri6 = getelementptr inbounds nuw %struct.task, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %t_pri6, align 4
  %cmp7 = icmp sgt i32 %15, %17
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then4
  %18 = load ptr, ptr %t, align 8
  store ptr %18, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.then4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %19 = load ptr, ptr %pkt.addr, align 8
  %20 = load ptr, ptr %t, align 8
  %t_wkq11 = getelementptr inbounds nuw %struct.task, ptr %20, i32 0, i32 3
  call void @append(ptr noundef %19, ptr noundef %t_wkq11)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end10
  %21 = load ptr, ptr @tcb, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then9, %if.then
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @append(ptr noundef %pkt, ptr noundef %ptr) #0 {
entry:
  %pkt.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %pkt, ptr %pkt.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %pkt.addr, align 8
  %p_link = getelementptr inbounds nuw %struct.packet, ptr %0, i32 0, i32 0
  store ptr null, ptr %p_link, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %ptr.addr, align 8
  %p_link1 = getelementptr inbounds nuw %struct.packet, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %p_link1, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %ptr.addr, align 8
  %p_link2 = getelementptr inbounds nuw %struct.packet, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %p_link2, align 8
  store ptr %4, ptr %ptr.addr, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %pkt.addr, align 8
  %6 = load ptr, ptr %ptr.addr, align 8
  %p_link3 = getelementptr inbounds nuw %struct.packet, ptr %6, i32 0, i32 0
  store ptr %5, ptr %p_link3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @idlefn(ptr noundef %pkt) #0 {
entry:
  %retval = alloca ptr, align 8
  %pkt.addr = alloca ptr, align 8
  store ptr %pkt, ptr %pkt.addr, align 8
  %0 = load i64, ptr @v2, align 8
  %dec = add nsw i64 %0, -1
  store i64 %dec, ptr @v2, align 8
  %1 = load i64, ptr @v2, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @holdself()
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr @v1, align 8
  %and = and i64 %2, 1
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr @v1, align 8
  %shr = ashr i64 %3, 1
  %and3 = and i64 %shr, 32767
  store i64 %and3, ptr @v1, align 8
  %call4 = call ptr @release(i32 noundef 5)
  store ptr %call4, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i64, ptr @v1, align 8
  %shr5 = ashr i64 %4, 1
  %and6 = and i64 %shr5, 32767
  %xor = xor i64 %and6, 53256
  store i64 %xor, ptr @v1, align 8
  %call7 = call ptr @release(i32 noundef 6)
  store ptr %call7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then2, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @workfn(ptr noundef %pkt) #0 {
entry:
  %retval = alloca ptr, align 8
  %pkt.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pkt, ptr %pkt.addr, align 8
  %0 = load ptr, ptr %pkt.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @Wait()
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, ptr @v1, align 8
  %sub = sub nsw i64 7, %1
  store i64 %sub, ptr @v1, align 8
  %2 = load i64, ptr @v1, align 8
  %conv = trunc i64 %2 to i32
  %3 = load ptr, ptr %pkt.addr, align 8
  %p_id = getelementptr inbounds nuw %struct.packet, ptr %3, i32 0, i32 1
  store i32 %conv, ptr %p_id, align 8
  %4 = load ptr, ptr %pkt.addr, align 8
  %p_a1 = getelementptr inbounds nuw %struct.packet, ptr %4, i32 0, i32 3
  store i32 0, ptr %p_a1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load i32, ptr %i, align 4
  %cmp1 = icmp sle i32 %5, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr @v2, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, ptr @v2, align 8
  %7 = load i64, ptr @v2, align 8
  %cmp3 = icmp sgt i64 %7, 26
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  store i64 1, ptr @v2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %for.body
  %8 = load i64, ptr @v2, align 8
  %arrayidx = getelementptr inbounds [28 x i8], ptr @alphabet, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx, align 1
  %10 = load ptr, ptr %pkt.addr, align 8
  %p_a2 = getelementptr inbounds nuw %struct.packet, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [4 x i8], ptr %p_a2, i64 0, i64 %idxprom
  store i8 %9, ptr %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %pkt.addr, align 8
  %call8 = call ptr @qpkt(ptr noundef %13)
  store ptr %call8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @handlerfn(ptr noundef %pkt) #0 {
entry:
  %retval = alloca ptr, align 8
  %pkt.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %workpkt = alloca ptr, align 8
  %devpkt = alloca ptr, align 8
  store ptr %pkt, ptr %pkt.addr, align 8
  %0 = load ptr, ptr %pkt.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pkt.addr, align 8
  %2 = load ptr, ptr %pkt.addr, align 8
  %p_kind = getelementptr inbounds nuw %struct.packet, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %p_kind, align 4
  %cmp1 = icmp eq i32 %3, 1001
  %4 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, ptr @v1, ptr @v2
  call void @append(ptr noundef %1, ptr noundef %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr @v1, align 8
  %cmp2 = icmp ne i64 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  %6 = load i64, ptr @v1, align 8
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %workpkt, align 8
  %8 = load ptr, ptr %workpkt, align 8
  %p_a1 = getelementptr inbounds nuw %struct.packet, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %p_a1, align 8
  store i32 %9, ptr %count, align 4
  %10 = load i32, ptr %count, align 4
  %cmp4 = icmp sgt i32 %10, 3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %11 = load i64, ptr @v1, align 8
  %12 = inttoptr i64 %11 to ptr
  %p_link = getelementptr inbounds nuw %struct.packet, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %p_link, align 8
  %14 = ptrtoint ptr %13 to i64
  store i64 %14, ptr @v1, align 8
  %15 = load ptr, ptr %workpkt, align 8
  %call = call ptr @qpkt(ptr noundef %15)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.then3
  %16 = load i64, ptr @v2, align 8
  %cmp7 = icmp ne i64 %16, 0
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end6
  %17 = load i64, ptr @v2, align 8
  %18 = inttoptr i64 %17 to ptr
  store ptr %18, ptr %devpkt, align 8
  %19 = load i64, ptr @v2, align 8
  %20 = inttoptr i64 %19 to ptr
  %p_link9 = getelementptr inbounds nuw %struct.packet, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %p_link9, align 8
  %22 = ptrtoint ptr %21 to i64
  store i64 %22, ptr @v2, align 8
  %23 = load ptr, ptr %workpkt, align 8
  %p_a2 = getelementptr inbounds nuw %struct.packet, ptr %23, i32 0, i32 4
  %24 = load i32, ptr %count, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %p_a2, i64 0, i64 %idxprom
  %25 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %25 to i32
  %26 = load ptr, ptr %devpkt, align 8
  %p_a110 = getelementptr inbounds nuw %struct.packet, ptr %26, i32 0, i32 3
  store i32 %conv, ptr %p_a110, align 8
  %27 = load i32, ptr %count, align 4
  %add = add nsw i32 %27, 1
  %28 = load ptr, ptr %workpkt, align 8
  %p_a111 = getelementptr inbounds nuw %struct.packet, ptr %28, i32 0, i32 3
  store i32 %add, ptr %p_a111, align 8
  %29 = load ptr, ptr %devpkt, align 8
  %call12 = call ptr @qpkt(ptr noundef %29)
  store ptr %call12, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %call15 = call ptr @Wait()
  store ptr %call15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then8, %if.then5
  %30 = load ptr, ptr %retval, align 8
  ret ptr %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @devfn(ptr noundef %pkt) #0 {
entry:
  %retval = alloca ptr, align 8
  %pkt.addr = alloca ptr, align 8
  store ptr %pkt, ptr %pkt.addr, align 8
  %0 = load ptr, ptr %pkt.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @v1, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = call ptr @Wait()
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load i64, ptr @v1, align 8
  %3 = inttoptr i64 %2 to ptr
  store ptr %3, ptr %pkt.addr, align 8
  store i64 0, ptr @v1, align 8
  %4 = load ptr, ptr %pkt.addr, align 8
  %call3 = call ptr @qpkt(ptr noundef %4)
  store ptr %call3, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pkt.addr, align 8
  %6 = ptrtoint ptr %5 to i64
  store i64 %6, ptr @v1, align 8
  %7 = load i32, ptr @tracing, align 4
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  %8 = load ptr, ptr %pkt.addr, align 8
  %p_a1 = getelementptr inbounds nuw %struct.packet, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %p_a1, align 8
  %conv = trunc i32 %9 to i8
  call void @trace(i8 noundef signext %conv)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else
  %call7 = call ptr @holdself()
  store ptr %call7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.end, %if.then2
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %wkq = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %wkq, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %0 = load ptr, ptr %wkq, align 8
  call void @createtask(i32 noundef 1, i32 noundef 0, ptr noundef %0, i32 noundef 0, ptr noundef @idlefn, i64 noundef 1, i64 noundef 10000000)
  %call2 = call ptr @pkt(ptr noundef null, i32 noundef 0, i32 noundef 1001)
  store ptr %call2, ptr %wkq, align 8
  %1 = load ptr, ptr %wkq, align 8
  %call3 = call ptr @pkt(ptr noundef %1, i32 noundef 0, i32 noundef 1001)
  store ptr %call3, ptr %wkq, align 8
  %2 = load ptr, ptr %wkq, align 8
  call void @createtask(i32 noundef 2, i32 noundef 1000, ptr noundef %2, i32 noundef 3, ptr noundef @workfn, i64 noundef 3, i64 noundef 0)
  %call4 = call ptr @pkt(ptr noundef null, i32 noundef 5, i32 noundef 1000)
  store ptr %call4, ptr %wkq, align 8
  %3 = load ptr, ptr %wkq, align 8
  %call5 = call ptr @pkt(ptr noundef %3, i32 noundef 5, i32 noundef 1000)
  store ptr %call5, ptr %wkq, align 8
  %4 = load ptr, ptr %wkq, align 8
  %call6 = call ptr @pkt(ptr noundef %4, i32 noundef 5, i32 noundef 1000)
  store ptr %call6, ptr %wkq, align 8
  %5 = load ptr, ptr %wkq, align 8
  call void @createtask(i32 noundef 3, i32 noundef 2000, ptr noundef %5, i32 noundef 3, ptr noundef @handlerfn, i64 noundef 0, i64 noundef 0)
  %call7 = call ptr @pkt(ptr noundef null, i32 noundef 6, i32 noundef 1000)
  store ptr %call7, ptr %wkq, align 8
  %6 = load ptr, ptr %wkq, align 8
  %call8 = call ptr @pkt(ptr noundef %6, i32 noundef 6, i32 noundef 1000)
  store ptr %call8, ptr %wkq, align 8
  %7 = load ptr, ptr %wkq, align 8
  %call9 = call ptr @pkt(ptr noundef %7, i32 noundef 6, i32 noundef 1000)
  store ptr %call9, ptr %wkq, align 8
  %8 = load ptr, ptr %wkq, align 8
  call void @createtask(i32 noundef 4, i32 noundef 3000, ptr noundef %8, i32 noundef 3, ptr noundef @handlerfn, i64 noundef 0, i64 noundef 0)
  store ptr null, ptr %wkq, align 8
  %9 = load ptr, ptr %wkq, align 8
  call void @createtask(i32 noundef 5, i32 noundef 4000, ptr noundef %9, i32 noundef 2, ptr noundef @devfn, i64 noundef 0, i64 noundef 0)
  %10 = load ptr, ptr %wkq, align 8
  call void @createtask(i32 noundef 6, i32 noundef 5000, ptr noundef %10, i32 noundef 2, ptr noundef @devfn, i64 noundef 0, i64 noundef 0)
  %11 = load ptr, ptr @tasklist, align 8
  store ptr %11, ptr @tcb, align 8
  store i32 0, ptr @holdcount, align 4
  store i32 0, ptr @qpktcount, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr @tracing, align 4
  store i32 0, ptr @layout, align 4
  call void @schedule()
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %12 = load i32, ptr @qpktcount, align 4
  %13 = load i32, ptr @holdcount, align 4
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %12, i32 noundef %13)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %14 = load i32, ptr @qpktcount, align 4
  %cmp = icmp eq i32 %14, 23263894
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, ptr @holdcount, align 4
  %cmp14 = icmp eq i32 %15, 9305557
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval1, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %16 = load i32, ptr %retval1, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 20.1.5"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
