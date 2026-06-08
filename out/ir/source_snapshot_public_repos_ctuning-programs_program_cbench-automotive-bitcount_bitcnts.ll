; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-bitcount/bitcnts.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-bitcount/bitcnts.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@main.pBitCntFunc = internal global [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 8
@main.text = internal global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 8
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"CT_REPEAT_MAIN\00", align 1
@__stderrp = external global ptr, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%-38s> Bits: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ct_repeat = alloca i64, align 8
  %ct_repeat_max = alloca i64, align 8
  %ct_return = alloca i32, align 4
  %print = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %seed = alloca i64, align 8
  %iterations = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 0, ptr %ct_repeat, align 8
  store i64 1, ptr %ct_repeat_max, align 8
  store i32 0, ptr %ct_return, align 4
  store i32 1, ptr %print, align 4
  %call = call ptr @getenv(ptr noundef @.str.7)
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @getenv(ptr noundef @.str.7)
  %call2 = call i64 @atol(ptr noundef %call1)
  store i64 %call2, ptr %ct_repeat_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %cmp3 = icmp slt i32 %0, 2
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.8)
  call void @exit(i32 noundef 1) #3
  unreachable

if.end6:                                          ; preds = %if.end
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  %call7 = call i32 @atoi(ptr noundef %3)
  store i32 %call7, ptr %iterations, align 4
  %4 = load i32, ptr %print, align 4
  %cmp8 = icmp eq i32 %4, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %call10 = call i32 @puts(ptr noundef @.str.9)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6
  store i64 0, ptr %ct_repeat, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %if.end11
  %5 = load i64, ptr %ct_repeat, align 8
  %6 = load i64, ptr %ct_repeat_max, align 8
  %cmp12 = icmp slt i64 %5, %6
  br i1 %cmp12, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc31, %for.body
  %7 = load i32, ptr %i, align 4
  %cmp14 = icmp slt i32 %7, 7
  br i1 %cmp14, label %for.body15, label %for.end33

for.body15:                                       ; preds = %for.cond13
  store i64 0, ptr %n, align 8
  store i64 0, ptr %j, align 8
  store i64 1, ptr %seed, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %for.body15
  %8 = load i64, ptr %j, align 8
  %9 = load i32, ptr %iterations, align 4
  %conv = sext i32 %9 to i64
  %cmp17 = icmp slt i64 %8, %conv
  br i1 %cmp17, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond16
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %idxprom
  %11 = load ptr, ptr %arrayidx20, align 8
  %12 = load i64, ptr %seed, align 8
  %call21 = call i32 %11(i64 noundef %12)
  %conv22 = sext i32 %call21 to i64
  %13 = load i64, ptr %n, align 8
  %add = add nsw i64 %13, %conv22
  store i64 %add, ptr %n, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %14 = load i64, ptr %j, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %j, align 8
  %15 = load i64, ptr %seed, align 8
  %add23 = add nsw i64 %15, 13
  store i64 %add23, ptr %seed, align 8
  br label %for.cond16, !llvm.loop !6

for.end:                                          ; preds = %for.cond16
  %16 = load i32, ptr %print, align 4
  %cmp24 = icmp eq i32 %16, 1
  br i1 %cmp24, label %if.then26, label %if.end30

if.then26:                                        ; preds = %for.end
  %17 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %17 to i64
  %arrayidx28 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %idxprom27
  %18 = load ptr, ptr %arrayidx28, align 8
  %19 = load i64, ptr %n, align 8
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %18, i64 noundef %19)
  store i32 0, ptr %print, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %for.end
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %20 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %20, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond13, !llvm.loop !8

for.end33:                                        ; preds = %for.cond13
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %21 = load i64, ptr %ct_repeat, align 8
  %inc35 = add nsw i64 %21, 1
  store i64 %inc35, ptr %ct_repeat, align 8
  br label %for.cond, !llvm.loop !9

for.end36:                                        ; preds = %for.cond
  ret i32 0
}

declare i32 @bit_count(i64 noundef) #1

declare i32 @bitcount(i64 noundef) #1

declare i32 @ntbl_bitcnt(i64 noundef) #1

declare i32 @ntbl_bitcount(i64 noundef) #1

declare i32 @BW_btbl_bitcount(i64 noundef) #1

declare i32 @AR_btbl_bitcount(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @bit_shifter(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  store i32 0, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %x.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 64
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load i64, ptr %x.addr, align 8
  %and = and i64 %3, 1
  %conv2 = trunc i64 %and to i32
  %4 = load i32, ptr %n, align 4
  %add = add nsw i32 %4, %conv2
  store i32 %add, ptr %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  %6 = load i64, ptr %x.addr, align 8
  %shr = ashr i64 %6, 1
  store i64 %shr, ptr %x.addr, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.end
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

declare ptr @getenv(ptr noundef) #1

declare i64 @atol(ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare i32 @atoi(ptr noundef) #1

declare i32 @puts(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
