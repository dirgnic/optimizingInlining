; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/mkspans.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/mkspans.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [27 x i8] c"static u_char %s[256] = {\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c",\09/* 0x%02x - 0x%02x */\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bruns\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"wruns\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @dumparray(ptr noundef %name, ptr noundef %runs) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %runs.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sep = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %runs, ptr %runs.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  store ptr @.str.1, ptr %sep, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %sep, align 8
  %3 = load ptr, ptr %runs.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %2, i32 noundef %conv)
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, 1
  %rem = srem i32 %add, 16
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %7, 15
  %8 = load i32, ptr %i, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %sub, i32 noundef %8)
  store ptr @.str.1, ptr %sep, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  store ptr @.str.4, ptr %sep, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %runs = alloca [2 x [256 x i8]], align 1
  %run = alloca i32, align 4
  %runlen = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 0
  %arraydecay = getelementptr inbounds [256 x i8], ptr %arrayidx, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 256, i1 false)
  %arrayidx1 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 1
  %arraydecay2 = getelementptr inbounds [256 x i8], ptr %arrayidx1, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay2, i8 0, i64 256, i1 false)
  store i32 1, ptr %runlen, align 4
  store i32 128, ptr %run, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %run, align 4
  %cmp = icmp ne i32 %0, 255
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %run, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4
  %cmp4 = icmp sge i32 %2, 0
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %3 = load i32, ptr %runlen, align 4
  %conv = trunc i32 %3 to i8
  %arrayidx6 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 1
  %4 = load i32, ptr %run, align 4
  %5 = load i32, ptr %i, align 4
  %or = or i32 %4, %5
  %idxprom = sext i32 %or to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], ptr %arrayidx6, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx7, align 1
  %6 = load i32, ptr %runlen, align 4
  %conv8 = trunc i32 %6 to i8
  %arrayidx9 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 0
  %7 = load i32, ptr %run, align 4
  %8 = load i32, ptr %i, align 4
  %or10 = or i32 %7, %8
  %neg = xor i32 %or10, -1
  %and = and i32 %neg, 255
  %idxprom11 = sext i32 %and to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr %arrayidx9, i64 0, i64 %idxprom11
  store i8 %conv8, ptr %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %9 = load i32, ptr %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end:                                          ; preds = %for.cond3
  %10 = load i32, ptr %runlen, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %runlen, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %11 = load i32, ptr %run, align 4
  %shr = ashr i32 %11, 1
  %or14 = or i32 %shr, 128
  store i32 %or14, ptr %run, align 4
  br label %for.cond, !llvm.loop !9

for.end15:                                        ; preds = %for.cond
  %arrayidx16 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 0
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr %arrayidx16, i64 0, i64 0
  store i8 8, ptr %arrayidx17, align 1
  %arrayidx18 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 1
  %arrayidx19 = getelementptr inbounds [256 x i8], ptr %arrayidx18, i64 0, i64 255
  store i8 8, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [256 x i8], ptr %arrayidx20, i64 0, i64 0
  %call = call i32 @dumparray(ptr noundef @.str.6, ptr noundef %arraydecay21)
  %arrayidx22 = getelementptr inbounds [2 x [256 x i8]], ptr %runs, i64 0, i64 1
  %arraydecay23 = getelementptr inbounds [256 x i8], ptr %arrayidx22, i64 0, i64 0
  %call24 = call i32 @dumparray(ptr noundef @.str.7, ptr noundef %arraydecay23)
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }

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
