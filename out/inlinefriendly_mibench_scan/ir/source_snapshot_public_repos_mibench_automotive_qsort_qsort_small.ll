; ModuleID = './source_snapshot/public_repos/mibench/automotive/qsort/qsort_small.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/qsort/qsort_small.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.myStringStruct = type { [128 x i8] }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_small <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\0ASorting %d elements.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @compare(ptr noundef %elem1, ptr noundef %elem2) #0 {
entry:
  %elem1.addr = alloca ptr, align 8
  %elem2.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %elem1, ptr %elem1.addr, align 8
  store ptr %elem2, ptr %elem2.addr, align 8
  %0 = load ptr, ptr %elem1.addr, align 8
  %qstring = getelementptr inbounds %struct.myStringStruct, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [128 x i8], ptr %qstring, i64 0, i64 0
  %1 = load ptr, ptr %elem2.addr, align 8
  %qstring1 = getelementptr inbounds %struct.myStringStruct, ptr %1, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [128 x i8], ptr %qstring1, i64 0, i64 0
  %call = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %arraydecay2)
  store i32 %call, ptr %result, align 4
  %2 = load i32, ptr %result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %result, align 4
  %cmp3 = icmp eq i32 %3, 0
  %4 = zext i1 %cmp3 to i64
  %cond = select i1 %cmp3, i32 0, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  ret i32 %cond4
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %array = alloca [60000 x %struct.myStringStruct], align 1
  %fp = alloca ptr, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %count, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str)
  call void @exit(i32 noundef -1) #3
  unreachable

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef %3, ptr noundef @.str.1)
  store ptr %call1, ptr %fp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %4 = load ptr, ptr %fp, align 8
  %5 = load i32, ptr %count, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [60000 x %struct.myStringStruct], ptr %array, i64 0, i64 %idxprom
  %qstring = getelementptr inbounds %struct.myStringStruct, ptr %arrayidx2, i32 0, i32 0
  %call3 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %4, ptr noundef @.str.2, ptr noundef %qstring)
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %count, align 4
  %cmp5 = icmp slt i32 %6, 60000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, ptr %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %count, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end
  %9 = load i32, ptr %count, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %9)
  %arraydecay = getelementptr inbounds [60000 x %struct.myStringStruct], ptr %array, i64 0, i64 0
  %10 = load i32, ptr %count, align 4
  %conv = sext i32 %10 to i64
  call void @qsort(ptr noundef %arraydecay, i64 noundef %conv, i64 noundef 128, ptr noundef @compare)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %count, align 4
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [60000 x %struct.myStringStruct], ptr %array, i64 0, i64 %idxprom9
  %qstring11 = getelementptr inbounds %struct.myStringStruct, ptr %arrayidx10, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [128 x i8], ptr %qstring11, i64 0, i64 0
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fscanf(ptr noundef, ptr noundef, ...) #1

declare i32 @printf(ptr noundef, ...) #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

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
