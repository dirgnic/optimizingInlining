; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/debug.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/debug.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s [%d .. %d]: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @gsm_debug_words(ptr noundef %name, i32 noundef %from, i32 noundef %to, ptr noundef %ptr) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  %nprinted = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i32 %from, ptr %from.addr, align 4
  store i32 %to, ptr %to.addr, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 0, ptr %nprinted, align 4
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i32, ptr %from.addr, align 4
  %3 = load i32, ptr %to.addr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %4 = load i32, ptr %from.addr, align 4
  %5 = load i32, ptr %to.addr, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load i32, ptr %from.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 %idxprom
  %9 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %9 to i32
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.1, i32 noundef %conv)
  %10 = load i32, ptr %from.addr, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %from.addr, align 4
  %11 = load i32, ptr %nprinted, align 4
  %inc2 = add nsw i32 %11, 1
  store i32 %inc2, ptr %nprinted, align 4
  %cmp3 = icmp sge i32 %11, 7
  br i1 %cmp3, label %if.then, label %if.end9

if.then:                                          ; preds = %while.body
  store i32 0, ptr %nprinted, align 4
  %12 = load i32, ptr %from.addr, align 4
  %13 = load i32, ptr %to.addr, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %14 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 @putc(i32 noundef 10, ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 @putc(i32 noundef 10, ptr noundef %15)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @gsm_debug_longwords(ptr noundef %name, i32 noundef %from, i32 noundef %to, ptr noundef %ptr) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  %nprinted = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i32 %from, ptr %from.addr, align 4
  store i32 %to, ptr %to.addr, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 0, ptr %nprinted, align 4
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i32, ptr %from.addr, align 4
  %3 = load i32, ptr %to.addr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %4 = load i32, ptr %from.addr, align 4
  %5 = load i32, ptr %to.addr, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load i32, ptr %from.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 %idxprom
  %9 = load i64, ptr %arrayidx, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.1, i64 noundef %9)
  %10 = load i32, ptr %from.addr, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %from.addr, align 4
  %11 = load i32, ptr %nprinted, align 4
  %inc2 = add nsw i32 %11, 1
  store i32 %inc2, ptr %nprinted, align 4
  %cmp3 = icmp sge i32 %11, 7
  br i1 %cmp3, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  store i32 0, ptr %nprinted, align 4
  %12 = load i32, ptr %from.addr, align 4
  %13 = load i32, ptr %to.addr, align 4
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %14 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 @putc(i32 noundef 10, ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %while.body
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 @putc(i32 noundef 10, ptr noundef %15)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @gsm_debug_longword(ptr noundef %name, i64 noundef %value) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8
  store i64 %value, ptr %value.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i64, ptr %value.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.2, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @gsm_debug_word(ptr noundef %name, i16 noundef signext %value) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %value.addr = alloca i16, align 2
  store ptr %name, ptr %name.addr, align 8
  store i16 %value, ptr %value.addr, align 2
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load i16, ptr %value.addr, align 2
  %conv = sext i16 %2 to i64
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.2, ptr noundef %1, i64 noundef %conv)
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
