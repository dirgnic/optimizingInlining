; ModuleID = './out/real_signal_run_all/rewritten_ir/student_small_mlp/source_snapshot_public_repos_log.c_src_log.prepared.ll'
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
  %call = call i32 @log_add_callback(ptr noundef nonnull @file_callback, ptr noundef %fp, i32 noundef %level)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal void @file_callback(ptr noundef %ev) #0 {
entry:
  %ev.addr = alloca ptr, align 8
  %buf = alloca [64 x i8], align 1
  store ptr %ev, ptr %ev.addr, align 8
  %time = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 3
  %0 = load ptr, ptr %time, align 8
  %call = call i64 @"\01_strftime"(ptr noundef nonnull %buf, i64 noundef 64, ptr noundef nonnull @.str.6, ptr noundef %0) #5
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
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %buf, ptr noundef %4, ptr noundef %5, i32 noundef %7) #5
  %udata4 = getelementptr inbounds %struct.log_Event, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %udata4, align 8
  %fmt = getelementptr inbounds %struct.log_Event, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %fmt, align 8
  %10 = load ptr, ptr %ev.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %call5 = call i32 @vfprintf(ptr noundef %8, ptr noundef %9, ptr noundef %11) #5
  %udata6 = getelementptr inbounds %struct.log_Event, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %udata6, align 8
  %fputc = call i32 @fputc(i32 10, ptr %12)
  %udata8 = getelementptr inbounds %struct.log_Event, ptr %10, i64 0, i32 4
  %13 = load ptr, ptr %udata8, align 8
  %call9 = call i32 @fflush(ptr noundef %13) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @log_log(i32 noundef %level, ptr noundef %file, i32 noundef %line, ptr noundef %fmt, ...) #0 {
entry:
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
  call void @lock()
  %2 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 3), align 4
  %3 = and i8 %2, 1
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %level.addr, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 2), align 8
  %cmp.not = icmp slt i32 %4, %5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr @__stderrp, align 8
  call void @init_event(ptr noundef nonnull %ev, ptr noundef %6)
  call void @llvm.va_start(ptr nonnull %ev)
  call void @stdout_callback(ptr noundef nonnull %ev)
  call void @llvm.va_end(ptr %ev)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp7 = icmp slt i32 %storemerge, 32
  br i1 %cmp7, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %tobool8 = icmp ne ptr %8, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %9 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom9
  store ptr %arrayidx10, ptr %cb, align 8
  %10 = load i32, ptr %level.addr, align 4
  %level11 = getelementptr inbounds %struct.anon, ptr @L, i64 0, i32 4, i64 %idxprom9, i32 2
  %11 = load i32, ptr %level11, align 8
  %cmp12.not = icmp slt i32 %10, %11
  br i1 %cmp12.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %for.body
  %12 = load ptr, ptr %cb, align 8
  %udata14 = getelementptr inbounds %struct.Callback, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %udata14, align 8
  call void @init_event(ptr noundef nonnull %ev, ptr noundef %13)
  call void @llvm.va_start(ptr nonnull %ev)
  %14 = load ptr, ptr %12, align 8
  call void %14(ptr noundef nonnull %ev) #5
  call void @llvm.va_end(ptr %ev)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then13
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond, %land.rhs
  call void @unlock()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @lock() #0 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 1), align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 1), align 8
  %2 = load ptr, ptr @L, align 8
  call void %1(i1 noundef zeroext true, ptr noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @init_event(ptr noundef %ev, ptr noundef %udata) #0 {
entry:
  %ev.addr = alloca ptr, align 8
  %udata.addr = alloca ptr, align 8
  %t = alloca i64, align 8
  store ptr %ev, ptr %ev.addr, align 8
  store ptr %udata, ptr %udata.addr, align 8
  %time = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 3
  %0 = load ptr, ptr %time, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @time(ptr noundef null) #5
  store i64 %call, ptr %t, align 8
  %call1 = call ptr @localtime(ptr noundef nonnull %t) #5
  %1 = load ptr, ptr %ev.addr, align 8
  %time2 = getelementptr inbounds %struct.log_Event, ptr %1, i64 0, i32 3
  store ptr %call1, ptr %time2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %udata.addr, align 8
  %3 = load ptr, ptr %ev.addr, align 8
  %udata3 = getelementptr inbounds %struct.log_Event, ptr %3, i64 0, i32 4
  store ptr %2, ptr %udata3, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nounwind ssp uwtable
define internal void @stdout_callback(ptr noundef %ev) #0 {
entry:
  %ev.addr = alloca ptr, align 8
  %buf = alloca [16 x i8], align 1
  store ptr %ev, ptr %ev.addr, align 8
  %time = getelementptr inbounds %struct.log_Event, ptr %ev, i64 0, i32 3
  %0 = load ptr, ptr %time, align 8
  %call = call i64 @"\01_strftime"(ptr noundef nonnull %buf, i64 noundef 16, ptr noundef nonnull @.str.9, ptr noundef %0) #5
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %call
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
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %buf, ptr noundef %4, ptr noundef %5, i32 noundef %7) #5
  %udata4 = getelementptr inbounds %struct.log_Event, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %udata4, align 8
  %fmt = getelementptr inbounds %struct.log_Event, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %fmt, align 8
  %10 = load ptr, ptr %ev.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %call5 = call i32 @vfprintf(ptr noundef %8, ptr noundef %9, ptr noundef %11) #5
  %udata6 = getelementptr inbounds %struct.log_Event, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %udata6, align 8
  %fputc = call i32 @fputc(i32 10, ptr %12)
  %udata8 = getelementptr inbounds %struct.log_Event, ptr %10, i64 0, i32 4
  %13 = load ptr, ptr %udata8, align 8
  %call9 = call i32 @fflush(ptr noundef %13) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: nounwind ssp uwtable
define internal void @unlock() #0 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 1), align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @L, i64 0, i32 1), align 8
  %2 = load ptr, ptr @L, align 8
  call void %1(i1 noundef zeroext false, ptr noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @"\01_strftime"(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @fflush(ptr noundef) #3

declare i64 @time(ptr noundef) #3

declare ptr @localtime(ptr noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
