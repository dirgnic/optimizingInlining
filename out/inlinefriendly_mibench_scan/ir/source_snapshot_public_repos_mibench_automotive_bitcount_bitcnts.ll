; ModuleID = './source_snapshot/public_repos/mibench/automotive/bitcount/bitcnts.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/bitcount/bitcnts.c"
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
@__stderrp = external global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %ct = alloca double, align 8
  %cmin = alloca double, align 8
  %cmax = alloca double, align 8
  %i = alloca i32, align 4
  %cminix = alloca i32, align 4
  %cmaxix = alloca i32, align 4
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %seed = alloca i64, align 8
  %iterations = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store double 0x7FEFFFFFFFFFFFFF, ptr %cmin, align 8
  store double 0.000000e+00, ptr %cmax, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.7)
  call void @exit(i32 noundef -1) #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @atoi(ptr noundef %3)
  store i32 %call1, ptr %iterations, align 4
  %call2 = call i32 @puts(ptr noundef @.str.8)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %if.end
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %4, 7
  br i1 %cmp3, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %call4 = call i64 @"\01_clock"()
  store i64 %call4, ptr %start, align 8
  store i64 0, ptr %n, align 8
  store i64 0, ptr %j, align 8
  %call5 = call i32 @rand()
  %conv = sext i32 %call5 to i64
  store i64 %conv, ptr %seed, align 8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %5 = load i64, ptr %j, align 8
  %6 = load i32, ptr %iterations, align 4
  %conv7 = sext i32 %6 to i64
  %cmp8 = icmp slt i64 %5, %conv7
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond6
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %idxprom
  %8 = load ptr, ptr %arrayidx11, align 8
  %9 = load i64, ptr %seed, align 8
  %call12 = call i32 %8(i64 noundef %9)
  %conv13 = sext i32 %call12 to i64
  %10 = load i64, ptr %n, align 8
  %add = add nsw i64 %10, %conv13
  store i64 %add, ptr %n, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %11 = load i64, ptr %j, align 8
  %inc = add nsw i64 %11, 1
  store i64 %inc, ptr %j, align 8
  %12 = load i64, ptr %seed, align 8
  %add14 = add nsw i64 %12, 13
  store i64 %add14, ptr %seed, align 8
  br label %for.cond6, !llvm.loop !6

for.end:                                          ; preds = %for.cond6
  %call15 = call i64 @"\01_clock"()
  store i64 %call15, ptr %stop, align 8
  %13 = load i64, ptr %stop, align 8
  %14 = load i64, ptr %start, align 8
  %sub = sub i64 %13, %14
  %conv16 = uitofp i64 %sub to double
  %div = fdiv double %conv16, 1.000000e+06
  store double %div, ptr %ct, align 8
  %15 = load double, ptr %ct, align 8
  %16 = load double, ptr %cmin, align 8
  %cmp17 = fcmp olt double %15, %16
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.end
  %17 = load double, ptr %ct, align 8
  store double %17, ptr %cmin, align 8
  %18 = load i32, ptr %i, align 4
  store i32 %18, ptr %cminix, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.end
  %19 = load double, ptr %ct, align 8
  %20 = load double, ptr %cmax, align 8
  %cmp21 = fcmp ogt double %19, %20
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %21 = load double, ptr %ct, align 8
  store double %21, ptr %cmax, align 8
  %22 = load i32, ptr %i, align 4
  store i32 %22, ptr %cmaxix, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  %23 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %idxprom25
  %24 = load ptr, ptr %arrayidx26, align 8
  %25 = load double, ptr %ct, align 8
  %26 = load i64, ptr %n, align 8
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %24, double noundef %25, i64 noundef %26)
  br label %for.inc28

for.inc28:                                        ; preds = %if.end24
  %27 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %27, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end30:                                        ; preds = %for.cond
  %28 = load i32, ptr %cminix, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %idxprom31
  %29 = load ptr, ptr %arrayidx32, align 8
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %29)
  %30 = load i32, ptr %cmaxix, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %idxprom34
  %31 = load ptr, ptr %arrayidx35, align 8
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, ptr noundef %31)
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
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.end
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare i32 @atoi(ptr noundef) #1

declare i32 @puts(ptr noundef) #1

declare i64 @"\01_clock"() #1

declare i32 @rand() #1

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
