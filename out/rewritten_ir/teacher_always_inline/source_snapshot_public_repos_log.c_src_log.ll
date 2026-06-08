; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_log.c_src_log.prepared.ll'
source_filename = "./source_snapshot/public_repos/log.c/src/log.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.anon = type { ptr, ptr, i32, i8, [32 x %struct.Callback] }
%struct.Callback = type { ptr, ptr, i32 }
%struct.log_Event = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }

@level_strings = internal global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 8
@L = internal global %struct.anon zeroinitializer, align 8
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FATAL\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%s %-5s %s:%d: \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @log_level_string(i32 noundef %level) #0 {
entry:
  %idxprom = sext i32 %level to i64
  %arrayidx = getelementptr inbounds [6 x ptr], ptr @level_strings, i64 0, i64 %idxprom
  %0 = load ptr, ptr %arrayidx, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define void @log_set_lock(ptr noundef %fn, ptr noundef %udata) #0 {
entry:
  store ptr %fn, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 1), align 8
  store ptr %udata, ptr @L, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @log_set_level(i32 noundef %level) #0 {
entry:
  store i32 %level, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 2), align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @log_set_quiet(i1 noundef zeroext %enable) #0 {
entry:
  %frombool1 = zext i1 %enable to i8
  store i8 %frombool1, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 3), align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @log_add_callback(ptr noundef %fn, ptr noundef %udata, i32 noundef %level) #0 {
entry:
  %fn.addr = alloca ptr, align 8
  %udata.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.Callback, align 8
  store ptr %fn, ptr %fn.addr, align 8
  store ptr %udata, ptr %udata.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 32
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom2
  %3 = load ptr, ptr %fn.addr, align 8
  store ptr %3, ptr %.compoundliteral, align 8
  %udata5 = getelementptr inbounds %struct.Callback, ptr %.compoundliteral, i64 0, i32 1
  %4 = load ptr, ptr %udata.addr, align 8
  store ptr %4, ptr %udata5, align 8
  %level6 = getelementptr inbounds %struct.Callback, ptr %.compoundliteral, i64 0, i32 2
  %5 = load i32, ptr %level.addr, align 4
  store i32 %5, ptr %level6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayidx3, ptr noundef nonnull align 8 dereferenceable(24) %.compoundliteral, i64 24, i1 false)
  br label %return

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

return:                                           ; preds = %for.cond, %if.then
  %storemerge1 = phi i32 [ 0, %if.then ], [ -1, %for.cond ]
  ret i32 %storemerge1
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind ssp uwtable
define i32 @log_add_fp(ptr noundef %fp, i32 noundef %level) #0 {
entry:
  %fn.addr.i = alloca ptr, align 8
  %udata.addr.i = alloca ptr, align 8
  %level.addr.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %.compoundliteral.i = alloca %struct.Callback, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fn.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %udata.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %.compoundliteral.i)
  store ptr @file_callback, ptr %fn.addr.i, align 8
  store ptr %fp, ptr %udata.addr.i, align 8
  store i32 %level, ptr %level.addr.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %cmp.i = icmp slt i32 %storemerge, 32
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_public_repos_log_c_src_log_0.exit

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %i.i, align 4
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom.i
  %1 = load ptr, ptr %arrayidx.i, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %2 = load i32, ptr %i.i, align 4
  %idxprom2.i = sext i32 %2 to i64
  %arrayidx3.i = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom2.i
  %3 = load ptr, ptr %fn.addr.i, align 8
  store ptr %3, ptr %.compoundliteral.i, align 8
  %udata5.i = getelementptr inbounds %struct.Callback, ptr %.compoundliteral.i, i64 0, i32 1
  %4 = load ptr, ptr %udata.addr.i, align 8
  store ptr %4, ptr %udata5.i, align 8
  %level6.i = getelementptr inbounds %struct.Callback, ptr %.compoundliteral.i, i64 0, i32 2
  %5 = load i32, ptr %level.addr.i, align 4
  store i32 %5, ptr %level6.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayidx3.i, ptr noundef nonnull align 8 dereferenceable(24) %.compoundliteral.i, i64 24, i1 false)
  br label %pc_inline_source_snapshot_public_repos_log_c_src_log_0.exit

if.end.i:                                         ; preds = %for.body.i
  %6 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %6, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_public_repos_log_c_src_log_0.exit: ; preds = %for.cond.i, %if.then.i
  %storemerge1 = phi i32 [ 0, %if.then.i ], [ -1, %for.cond.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fn.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %udata.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %.compoundliteral.i)
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal void @file_callback(ptr noundef %ev) #0 {
entry:
  %ev.addr = alloca ptr, align 8
  %buf = alloca [64 x i8], align 1
  store ptr %ev, ptr %ev.addr, align 8
  %time = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 3
  %0 = load ptr, ptr %time, align 8
  %call = call i64 @"\01_strftime"(ptr noundef nonnull %buf, i64 noundef 64, ptr noundef nonnull @.str.6, ptr noundef %0) #7
  %arrayidx = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 %call
  store i8 0, ptr %arrayidx, align 1
  %udata = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 4
  %1 = load ptr, ptr %udata, align 8
  %2 = load ptr, ptr %ev.addr, align 8
  %level = getelementptr inbounds %struct.log_Event, ptr %2, i64 0, i32 6
  %3 = load i32, ptr %level, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [6 x ptr], ptr @level_strings, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx2, align 8
  %file = getelementptr inbounds %struct.log_Event, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %file, align 8
  %6 = load ptr, ptr %ev.addr, align 8
  %line = getelementptr inbounds %struct.log_Event, ptr %6, i64 0, i32 5
  %7 = load i32, ptr %line, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %buf, ptr noundef %4, ptr noundef %5, i32 noundef %7) #7
  %udata4 = getelementptr inbounds %struct.log_Event, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %udata4, align 8
  %fmt = getelementptr inbounds %struct.log_Event, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %fmt, align 8
  %10 = load ptr, ptr %ev.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %call5 = call i32 @vfprintf(ptr noundef %8, ptr noundef %9, ptr noundef %11) #7
  %udata6 = getelementptr inbounds %struct.log_Event, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %udata6, align 8
  %fputc = call i32 @fputc(i32 10, ptr %12)
  %udata8 = getelementptr inbounds %struct.log_Event, ptr %10, i64 0, i32 4
  %13 = load ptr, ptr %udata8, align 8
  %call9 = call i32 @fflush(ptr noundef %13) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @log_log(i32 noundef %level, ptr noundef %file, i32 noundef %line, ptr noundef %fmt, ...) #0 {
entry:
  %ev.addr.i6 = alloca ptr, align 8
  %udata.addr.i7 = alloca ptr, align 8
  %t.i8 = alloca i64, align 8
  %ev.addr.i3 = alloca ptr, align 8
  %buf.i = alloca [16 x i8], align 1
  %ev.addr.i = alloca ptr, align 8
  %udata.addr.i = alloca ptr, align 8
  %t.i = alloca i64, align 8
  %level.addr = alloca i32, align 4
  %line.addr = alloca i32, align 4
  %ev = alloca %struct.log_Event, align 8
  %i = alloca i32, align 4
  %cb = alloca ptr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %line, ptr %line.addr, align 4
  store ptr null, ptr %ev, align 8
  %fmt1 = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 1
  store ptr %fmt, ptr %fmt1, align 8
  %file2 = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 2
  store ptr %file, ptr %file2, align 8
  %time = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 3
  store ptr null, ptr %time, align 8
  %udata = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 4
  store ptr null, ptr %udata, align 8
  %line3 = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 5
  %0 = load i32, ptr %line.addr, align 4
  store i32 %0, ptr %line3, align 8
  %level4 = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 6
  %1 = load i32, ptr %level.addr, align 4
  store i32 %1, ptr %level4, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 1), align 8
  %tobool.i.not = icmp eq ptr %2, null
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_log_c_src_log_1.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 1), align 8
  %4 = load ptr, ptr @L, align 8
  call void %3(i1 noundef zeroext true, ptr noundef %4) #7
  br label %pc_inline_source_snapshot_public_repos_log_c_src_log_1.exit

pc_inline_source_snapshot_public_repos_log_c_src_log_1.exit: ; preds = %entry, %if.then.i
  %5 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 3), align 4
  %6 = and i8 %5, 1
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %pc_inline_source_snapshot_public_repos_log_c_src_log_1.exit
  %7 = load i32, ptr %level.addr, align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 2), align 8
  %cmp.not = icmp slt i32 %7, %8
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr @__stderrp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %udata.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t.i)
  store ptr %ev, ptr %ev.addr.i, align 8
  store ptr %9, ptr %udata.addr.i, align 8
  %time.i = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 3
  %10 = load ptr, ptr %time.i, align 8
  %tobool.i1.not = icmp eq ptr %10, null
  br i1 %tobool.i1.not, label %if.then.i2, label %pc_inline_source_snapshot_public_repos_log_c_src_log_2.exit

if.then.i2:                                       ; preds = %if.then
  %call.i = call i64 @time(ptr noundef null) #7
  store i64 %call.i, ptr %t.i, align 8
  %call1.i = call ptr @localtime(ptr noundef nonnull %t.i) #7
  %11 = load ptr, ptr %ev.addr.i, align 8
  %time2.i = getelementptr inbounds %struct.log_Event, ptr %11, i64 0, i32 3
  store ptr %call1.i, ptr %time2.i, align 8
  br label %pc_inline_source_snapshot_public_repos_log_c_src_log_2.exit

pc_inline_source_snapshot_public_repos_log_c_src_log_2.exit: ; preds = %if.then, %if.then.i2
  %12 = load ptr, ptr %udata.addr.i, align 8
  %13 = load ptr, ptr %ev.addr.i, align 8
  %udata3.i = getelementptr inbounds %struct.log_Event, ptr %13, i64 0, i32 4
  store ptr %12, ptr %udata3.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %udata.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t.i)
  call void @llvm.va_start(ptr nonnull %ev)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev.addr.i3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i)
  store ptr %ev, ptr %ev.addr.i3, align 8
  %time.i4 = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 3
  %14 = load ptr, ptr %time.i4, align 8
  %call.i5 = call i64 @"\01_strftime"(ptr noundef nonnull %buf.i, i64 noundef 16, ptr noundef nonnull @.str.9, ptr noundef %14) #7
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %buf.i, i64 0, i64 %call.i5
  store i8 0, ptr %arrayidx.i, align 1
  %udata.i = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 4
  %15 = load ptr, ptr %udata.i, align 8
  %16 = load ptr, ptr %ev.addr.i3, align 8
  %level.i = getelementptr inbounds %struct.log_Event, ptr %16, i64 0, i32 6
  %17 = load i32, ptr %level.i, align 4
  %idxprom.i = sext i32 %17 to i64
  %arrayidx2.i = getelementptr inbounds [6 x ptr], ptr @level_strings, i64 0, i64 %idxprom.i
  %18 = load ptr, ptr %arrayidx2.i, align 8
  %file.i = getelementptr inbounds %struct.log_Event, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %file.i, align 8
  %20 = load ptr, ptr %ev.addr.i3, align 8
  %line.i = getelementptr inbounds %struct.log_Event, ptr %20, i64 0, i32 5
  %21 = load i32, ptr %line.i, align 8
  %call3.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.7, ptr noundef nonnull %buf.i, ptr noundef %18, ptr noundef %19, i32 noundef %21) #7
  %udata4.i = getelementptr inbounds %struct.log_Event, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %udata4.i, align 8
  %fmt.i = getelementptr inbounds %struct.log_Event, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %fmt.i, align 8
  %24 = load ptr, ptr %ev.addr.i3, align 8
  %25 = load ptr, ptr %24, align 8
  %call5.i = call i32 @vfprintf(ptr noundef %22, ptr noundef %23, ptr noundef %25) #7
  %udata6.i = getelementptr inbounds %struct.log_Event, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %udata6.i, align 8
  %fputc = call i32 @fputc(i32 10, ptr %26)
  %udata8.i = getelementptr inbounds %struct.log_Event, ptr %24, i64 0, i32 4
  %27 = load ptr, ptr %udata8.i, align 8
  %call9.i = call i32 @fflush(ptr noundef %27) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.addr.i3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i)
  call void @llvm.va_end(ptr %ev)
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_log_c_src_log_2.exit, %land.lhs.true, %pc_inline_source_snapshot_public_repos_log_c_src_log_1.exit
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp7 = icmp slt i32 %storemerge, 32
  br i1 %cmp7, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond
  %28 = load i32, ptr %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom
  %29 = load ptr, ptr %arrayidx, align 8
  %tobool8 = icmp ne ptr %29, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %30 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %30 to i64
  %arrayidx10 = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom9
  store ptr %arrayidx10, ptr %cb, align 8
  %31 = load i32, ptr %level.addr, align 4
  %level11 = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom9, i32 2
  %32 = load i32, ptr %level11, align 8
  %cmp12.not = icmp slt i32 %31, %32
  br i1 %cmp12.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %for.body
  %33 = load ptr, ptr %cb, align 8
  %udata14 = getelementptr inbounds %struct.Callback, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %udata14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev.addr.i6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %udata.addr.i7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t.i8)
  store ptr %ev, ptr %ev.addr.i6, align 8
  store ptr %34, ptr %udata.addr.i7, align 8
  %time.i9 = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 3
  %35 = load ptr, ptr %time.i9, align 8
  %tobool.i10.not = icmp eq ptr %35, null
  br i1 %tobool.i10.not, label %if.then.i14, label %pc_inline_source_snapshot_public_repos_log_c_src_log_4.exit

if.then.i14:                                      ; preds = %if.then13
  %call.i11 = call i64 @time(ptr noundef null) #7
  store i64 %call.i11, ptr %t.i8, align 8
  %call1.i12 = call ptr @localtime(ptr noundef nonnull %t.i8) #7
  %36 = load ptr, ptr %ev.addr.i6, align 8
  %time2.i13 = getelementptr inbounds %struct.log_Event, ptr %36, i64 0, i32 3
  store ptr %call1.i12, ptr %time2.i13, align 8
  br label %pc_inline_source_snapshot_public_repos_log_c_src_log_4.exit

pc_inline_source_snapshot_public_repos_log_c_src_log_4.exit: ; preds = %if.then13, %if.then.i14
  %37 = load ptr, ptr %udata.addr.i7, align 8
  %38 = load ptr, ptr %ev.addr.i6, align 8
  %udata3.i15 = getelementptr inbounds %struct.log_Event, ptr %38, i64 0, i32 4
  store ptr %37, ptr %udata3.i15, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.addr.i6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %udata.addr.i7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t.i8)
  call void @llvm.va_start(ptr nonnull %ev)
  %39 = load ptr, ptr %cb, align 8
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr noundef nonnull %ev) #7
  call void @llvm.va_end(ptr %ev)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %pc_inline_source_snapshot_public_repos_log_c_src_log_4.exit
  %41 = load i32, ptr %i, align 4
  %inc = add nsw i32 %41, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond, %land.rhs
  %42 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 1), align 8
  %tobool.i16.not = icmp eq ptr %42, null
  br i1 %tobool.i16.not, label %pc_inline_source_snapshot_public_repos_log_c_src_log_5.exit, label %if.then.i17

if.then.i17:                                      ; preds = %for.end
  %43 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 1), align 8
  %44 = load ptr, ptr @L, align 8
  call void %43(i1 noundef zeroext false, ptr noundef %44) #7
  br label %pc_inline_source_snapshot_public_repos_log_c_src_log_5.exit

pc_inline_source_snapshot_public_repos_log_c_src_log_5.exit: ; preds = %for.end, %if.then.i17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

declare i64 @"\01_strftime"(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @fflush(ptr noundef) #3

declare i64 @time(ptr noundef) #3

declare ptr @localtime(ptr noundef) #3

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_log_c_src_log_0(ptr noundef %fn, ptr noundef %udata, i32 noundef %level) #4 {
entry:
  %fn.addr = alloca ptr, align 8
  %udata.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.Callback, align 8
  store ptr %fn, ptr %fn.addr, align 8
  store ptr %udata, ptr %udata.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 32
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom2
  %3 = load ptr, ptr %fn.addr, align 8
  store ptr %3, ptr %.compoundliteral, align 8
  %udata5 = getelementptr inbounds %struct.Callback, ptr %.compoundliteral, i64 0, i32 1
  %4 = load ptr, ptr %udata.addr, align 8
  store ptr %4, ptr %udata5, align 8
  %level6 = getelementptr inbounds %struct.Callback, ptr %.compoundliteral, i64 0, i32 2
  %5 = load i32, ptr %level.addr, align 4
  store i32 %5, ptr %level6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayidx3, ptr noundef nonnull align 8 dereferenceable(24) %.compoundliteral, i64 24, i1 false)
  br label %return

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

return:                                           ; preds = %for.cond, %if.then
  %storemerge1 = phi i32 [ 0, %if.then ], [ -1, %for.cond ]
  ret i32 %storemerge1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
