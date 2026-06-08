; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-security-sha/sha.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-security-sha/sha.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@.str = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @sha_init(ptr noundef %sha_info) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  store ptr %sha_info, ptr %sha_info.addr, align 8
  %0 = load ptr, ptr %sha_info.addr, align 8
  %digest = getelementptr inbounds %struct.SHA_INFO, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i64], ptr %digest, i64 0, i64 0
  store i64 1732584193, ptr %arrayidx, align 8
  %1 = load ptr, ptr %sha_info.addr, align 8
  %digest1 = getelementptr inbounds %struct.SHA_INFO, ptr %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i64], ptr %digest1, i64 0, i64 1
  store i64 4023233417, ptr %arrayidx2, align 8
  %2 = load ptr, ptr %sha_info.addr, align 8
  %digest3 = getelementptr inbounds %struct.SHA_INFO, ptr %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %digest3, i64 0, i64 2
  store i64 2562383102, ptr %arrayidx4, align 8
  %3 = load ptr, ptr %sha_info.addr, align 8
  %digest5 = getelementptr inbounds %struct.SHA_INFO, ptr %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i64], ptr %digest5, i64 0, i64 3
  store i64 271733878, ptr %arrayidx6, align 8
  %4 = load ptr, ptr %sha_info.addr, align 8
  %digest7 = getelementptr inbounds %struct.SHA_INFO, ptr %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [5 x i64], ptr %digest7, i64 0, i64 4
  store i64 3285377520, ptr %arrayidx8, align 8
  %5 = load ptr, ptr %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHA_INFO, ptr %5, i32 0, i32 1
  store i64 0, ptr %count_lo, align 8
  %6 = load ptr, ptr %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHA_INFO, ptr %6, i32 0, i32 2
  store i64 0, ptr %count_hi, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @sha_update(ptr noundef %sha_info, ptr noundef %buffer, i32 noundef %count) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %sha_info, ptr %sha_info.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  %0 = load ptr, ptr %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHA_INFO, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %count_lo, align 8
  %2 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %2 to i64
  %shl = shl i64 %conv, 3
  %add = add i64 %1, %shl
  %3 = load ptr, ptr %sha_info.addr, align 8
  %count_lo1 = getelementptr inbounds %struct.SHA_INFO, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %count_lo1, align 8
  %cmp = icmp ult i64 %add, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHA_INFO, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %count_hi, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %count_hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %count.addr, align 4
  %conv3 = sext i32 %7 to i64
  %shl4 = shl i64 %conv3, 3
  %8 = load ptr, ptr %sha_info.addr, align 8
  %count_lo5 = getelementptr inbounds %struct.SHA_INFO, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %count_lo5, align 8
  %add6 = add i64 %9, %shl4
  store i64 %add6, ptr %count_lo5, align 8
  %10 = load i32, ptr %count.addr, align 4
  %conv7 = sext i32 %10 to i64
  %shr = lshr i64 %conv7, 29
  %11 = load ptr, ptr %sha_info.addr, align 8
  %count_hi8 = getelementptr inbounds %struct.SHA_INFO, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %count_hi8, align 8
  %add9 = add i64 %12, %shr
  store i64 %add9, ptr %count_hi8, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %13 = load i32, ptr %count.addr, align 4
  %cmp10 = icmp sge i32 %13, 64
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %sha_info.addr, align 8
  %data = getelementptr inbounds %struct.SHA_INFO, ptr %14, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], ptr %data, i64 0, i64 0
  %15 = load ptr, ptr %buffer.addr, align 8
  %16 = load ptr, ptr %sha_info.addr, align 8
  %data12 = getelementptr inbounds %struct.SHA_INFO, ptr %16, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [16 x i64], ptr %data12, i64 0, i64 0
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay13, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %arraydecay, ptr noundef %15, i64 noundef 64, i64 noundef %17) #4
  %18 = load ptr, ptr %sha_info.addr, align 8
  %data14 = getelementptr inbounds %struct.SHA_INFO, ptr %18, i32 0, i32 3
  %arraydecay15 = getelementptr inbounds [16 x i64], ptr %data14, i64 0, i64 0
  call void @byte_reverse(ptr noundef %arraydecay15, i32 noundef 64)
  %19 = load ptr, ptr %sha_info.addr, align 8
  call void @sha_transform(ptr noundef %19)
  %20 = load ptr, ptr %buffer.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 64
  store ptr %add.ptr, ptr %buffer.addr, align 8
  %21 = load i32, ptr %count.addr, align 4
  %sub = sub nsw i32 %21, 64
  store i32 %sub, ptr %count.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %22 = load ptr, ptr %sha_info.addr, align 8
  %data16 = getelementptr inbounds %struct.SHA_INFO, ptr %22, i32 0, i32 3
  %arraydecay17 = getelementptr inbounds [16 x i64], ptr %data16, i64 0, i64 0
  %23 = load ptr, ptr %buffer.addr, align 8
  %24 = load i32, ptr %count.addr, align 4
  %conv18 = sext i32 %24 to i64
  %25 = load ptr, ptr %sha_info.addr, align 8
  %data19 = getelementptr inbounds %struct.SHA_INFO, ptr %25, i32 0, i32 3
  %arraydecay20 = getelementptr inbounds [16 x i64], ptr %data19, i64 0, i64 0
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay20, i1 false, i1 true, i1 false)
  %call21 = call ptr @__memcpy_chk(ptr noundef %arraydecay17, ptr noundef %23, i64 noundef %conv18, i64 noundef %26) #4
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @byte_reverse(ptr noundef %buffer, i32 noundef %count) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ct = alloca [4 x i8], align 1
  %cp = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  %0 = load i32, ptr %count.addr, align 4
  %conv = sext i32 %0 to i64
  %div = udiv i64 %conv, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, ptr %count.addr, align 4
  %1 = load ptr, ptr %buffer.addr, align 8
  store ptr %1, ptr %cp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %count.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 0
  store i8 %5, ptr %arrayidx3, align 1
  %6 = load ptr, ptr %cp, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 1
  store i8 %7, ptr %arrayidx5, align 1
  %8 = load ptr, ptr %cp, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 2
  %9 = load i8, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 2
  store i8 %9, ptr %arrayidx7, align 1
  %10 = load ptr, ptr %cp, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %10, i64 3
  %11 = load i8, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 3
  store i8 %11, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 3
  %12 = load i8, ptr %arrayidx10, align 1
  %13 = load ptr, ptr %cp, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 0
  store i8 %12, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 2
  %14 = load i8, ptr %arrayidx12, align 1
  %15 = load ptr, ptr %cp, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %14, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 1
  %16 = load i8, ptr %arrayidx14, align 1
  %17 = load ptr, ptr %cp, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %16, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 0
  %18 = load i8, ptr %arrayidx16, align 1
  %19 = load ptr, ptr %cp, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %19, i64 3
  store i8 %18, ptr %arrayidx17, align 1
  %20 = load ptr, ptr %cp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %add.ptr, ptr %cp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @sha_transform(ptr noundef %sha_info) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca i64, align 8
  %A = alloca i64, align 8
  %B = alloca i64, align 8
  %C = alloca i64, align 8
  %D = alloca i64, align 8
  %E = alloca i64, align 8
  %W = alloca [80 x i64], align 8
  store ptr %sha_info, ptr %sha_info.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %sha_info.addr, align 8
  %data = getelementptr inbounds %struct.SHA_INFO, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i64], ptr %data, i64 0, i64 %idxprom
  %3 = load i64, ptr %arrayidx, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom1
  store i64 %3, ptr %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 16, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc21, %for.end
  %6 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %6, 80
  br i1 %cmp4, label %for.body5, label %for.end23

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %7, 3
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom6
  %8 = load i64, ptr %arrayidx7, align 8
  %9 = load i32, ptr %i, align 4
  %sub8 = sub nsw i32 %9, 8
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom9
  %10 = load i64, ptr %arrayidx10, align 8
  %xor = xor i64 %8, %10
  %11 = load i32, ptr %i, align 4
  %sub11 = sub nsw i32 %11, 14
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom12
  %12 = load i64, ptr %arrayidx13, align 8
  %xor14 = xor i64 %xor, %12
  %13 = load i32, ptr %i, align 4
  %sub15 = sub nsw i32 %13, 16
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom16
  %14 = load i64, ptr %arrayidx17, align 8
  %xor18 = xor i64 %xor14, %14
  %15 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom19
  store i64 %xor18, ptr %arrayidx20, align 8
  br label %for.inc21

for.inc21:                                        ; preds = %for.body5
  %16 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond3, !llvm.loop !10

for.end23:                                        ; preds = %for.cond3
  %17 = load ptr, ptr %sha_info.addr, align 8
  %digest = getelementptr inbounds %struct.SHA_INFO, ptr %17, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [5 x i64], ptr %digest, i64 0, i64 0
  %18 = load i64, ptr %arrayidx24, align 8
  store i64 %18, ptr %A, align 8
  %19 = load ptr, ptr %sha_info.addr, align 8
  %digest25 = getelementptr inbounds %struct.SHA_INFO, ptr %19, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [5 x i64], ptr %digest25, i64 0, i64 1
  %20 = load i64, ptr %arrayidx26, align 8
  store i64 %20, ptr %B, align 8
  %21 = load ptr, ptr %sha_info.addr, align 8
  %digest27 = getelementptr inbounds %struct.SHA_INFO, ptr %21, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [5 x i64], ptr %digest27, i64 0, i64 2
  %22 = load i64, ptr %arrayidx28, align 8
  store i64 %22, ptr %C, align 8
  %23 = load ptr, ptr %sha_info.addr, align 8
  %digest29 = getelementptr inbounds %struct.SHA_INFO, ptr %23, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [5 x i64], ptr %digest29, i64 0, i64 3
  %24 = load i64, ptr %arrayidx30, align 8
  store i64 %24, ptr %D, align 8
  %25 = load ptr, ptr %sha_info.addr, align 8
  %digest31 = getelementptr inbounds %struct.SHA_INFO, ptr %25, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [5 x i64], ptr %digest31, i64 0, i64 4
  %26 = load i64, ptr %arrayidx32, align 8
  store i64 %26, ptr %E, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc46, %for.end23
  %27 = load i32, ptr %i, align 4
  %cmp34 = icmp slt i32 %27, 20
  br i1 %cmp34, label %for.body35, label %for.end48

for.body35:                                       ; preds = %for.cond33
  %28 = load i64, ptr %A, align 8
  %shl = shl i64 %28, 5
  %29 = load i64, ptr %A, align 8
  %shr = lshr i64 %29, 27
  %or = or i64 %shl, %shr
  %30 = load i64, ptr %B, align 8
  %31 = load i64, ptr %C, align 8
  %and = and i64 %30, %31
  %32 = load i64, ptr %B, align 8
  %neg = xor i64 %32, -1
  %33 = load i64, ptr %D, align 8
  %and36 = and i64 %neg, %33
  %or37 = or i64 %and, %and36
  %add = add i64 %or, %or37
  %34 = load i64, ptr %E, align 8
  %add38 = add i64 %add, %34
  %35 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom39
  %36 = load i64, ptr %arrayidx40, align 8
  %add41 = add i64 %add38, %36
  %add42 = add i64 %add41, 1518500249
  store i64 %add42, ptr %temp, align 8
  %37 = load i64, ptr %D, align 8
  store i64 %37, ptr %E, align 8
  %38 = load i64, ptr %C, align 8
  store i64 %38, ptr %D, align 8
  %39 = load i64, ptr %B, align 8
  %shl43 = shl i64 %39, 30
  %40 = load i64, ptr %B, align 8
  %shr44 = lshr i64 %40, 2
  %or45 = or i64 %shl43, %shr44
  store i64 %or45, ptr %C, align 8
  %41 = load i64, ptr %A, align 8
  store i64 %41, ptr %B, align 8
  %42 = load i64, ptr %temp, align 8
  store i64 %42, ptr %A, align 8
  br label %for.inc46

for.inc46:                                        ; preds = %for.body35
  %43 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %43, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond33, !llvm.loop !11

for.end48:                                        ; preds = %for.cond33
  store i32 20, ptr %i, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc66, %for.end48
  %44 = load i32, ptr %i, align 4
  %cmp50 = icmp slt i32 %44, 40
  br i1 %cmp50, label %for.body51, label %for.end68

for.body51:                                       ; preds = %for.cond49
  %45 = load i64, ptr %A, align 8
  %shl52 = shl i64 %45, 5
  %46 = load i64, ptr %A, align 8
  %shr53 = lshr i64 %46, 27
  %or54 = or i64 %shl52, %shr53
  %47 = load i64, ptr %B, align 8
  %48 = load i64, ptr %C, align 8
  %xor55 = xor i64 %47, %48
  %49 = load i64, ptr %D, align 8
  %xor56 = xor i64 %xor55, %49
  %add57 = add i64 %or54, %xor56
  %50 = load i64, ptr %E, align 8
  %add58 = add i64 %add57, %50
  %51 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %51 to i64
  %arrayidx60 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom59
  %52 = load i64, ptr %arrayidx60, align 8
  %add61 = add i64 %add58, %52
  %add62 = add i64 %add61, 1859775393
  store i64 %add62, ptr %temp, align 8
  %53 = load i64, ptr %D, align 8
  store i64 %53, ptr %E, align 8
  %54 = load i64, ptr %C, align 8
  store i64 %54, ptr %D, align 8
  %55 = load i64, ptr %B, align 8
  %shl63 = shl i64 %55, 30
  %56 = load i64, ptr %B, align 8
  %shr64 = lshr i64 %56, 2
  %or65 = or i64 %shl63, %shr64
  store i64 %or65, ptr %C, align 8
  %57 = load i64, ptr %A, align 8
  store i64 %57, ptr %B, align 8
  %58 = load i64, ptr %temp, align 8
  store i64 %58, ptr %A, align 8
  br label %for.inc66

for.inc66:                                        ; preds = %for.body51
  %59 = load i32, ptr %i, align 4
  %inc67 = add nsw i32 %59, 1
  store i32 %inc67, ptr %i, align 4
  br label %for.cond49, !llvm.loop !12

for.end68:                                        ; preds = %for.cond49
  store i32 40, ptr %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc89, %for.end68
  %60 = load i32, ptr %i, align 4
  %cmp70 = icmp slt i32 %60, 60
  br i1 %cmp70, label %for.body71, label %for.end91

for.body71:                                       ; preds = %for.cond69
  %61 = load i64, ptr %A, align 8
  %shl72 = shl i64 %61, 5
  %62 = load i64, ptr %A, align 8
  %shr73 = lshr i64 %62, 27
  %or74 = or i64 %shl72, %shr73
  %63 = load i64, ptr %B, align 8
  %64 = load i64, ptr %C, align 8
  %and75 = and i64 %63, %64
  %65 = load i64, ptr %B, align 8
  %66 = load i64, ptr %D, align 8
  %and76 = and i64 %65, %66
  %or77 = or i64 %and75, %and76
  %67 = load i64, ptr %C, align 8
  %68 = load i64, ptr %D, align 8
  %and78 = and i64 %67, %68
  %or79 = or i64 %or77, %and78
  %add80 = add i64 %or74, %or79
  %69 = load i64, ptr %E, align 8
  %add81 = add i64 %add80, %69
  %70 = load i32, ptr %i, align 4
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom82
  %71 = load i64, ptr %arrayidx83, align 8
  %add84 = add i64 %add81, %71
  %add85 = add i64 %add84, 2400959708
  store i64 %add85, ptr %temp, align 8
  %72 = load i64, ptr %D, align 8
  store i64 %72, ptr %E, align 8
  %73 = load i64, ptr %C, align 8
  store i64 %73, ptr %D, align 8
  %74 = load i64, ptr %B, align 8
  %shl86 = shl i64 %74, 30
  %75 = load i64, ptr %B, align 8
  %shr87 = lshr i64 %75, 2
  %or88 = or i64 %shl86, %shr87
  store i64 %or88, ptr %C, align 8
  %76 = load i64, ptr %A, align 8
  store i64 %76, ptr %B, align 8
  %77 = load i64, ptr %temp, align 8
  store i64 %77, ptr %A, align 8
  br label %for.inc89

for.inc89:                                        ; preds = %for.body71
  %78 = load i32, ptr %i, align 4
  %inc90 = add nsw i32 %78, 1
  store i32 %inc90, ptr %i, align 4
  br label %for.cond69, !llvm.loop !13

for.end91:                                        ; preds = %for.cond69
  store i32 60, ptr %i, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc109, %for.end91
  %79 = load i32, ptr %i, align 4
  %cmp93 = icmp slt i32 %79, 80
  br i1 %cmp93, label %for.body94, label %for.end111

for.body94:                                       ; preds = %for.cond92
  %80 = load i64, ptr %A, align 8
  %shl95 = shl i64 %80, 5
  %81 = load i64, ptr %A, align 8
  %shr96 = lshr i64 %81, 27
  %or97 = or i64 %shl95, %shr96
  %82 = load i64, ptr %B, align 8
  %83 = load i64, ptr %C, align 8
  %xor98 = xor i64 %82, %83
  %84 = load i64, ptr %D, align 8
  %xor99 = xor i64 %xor98, %84
  %add100 = add i64 %or97, %xor99
  %85 = load i64, ptr %E, align 8
  %add101 = add i64 %add100, %85
  %86 = load i32, ptr %i, align 4
  %idxprom102 = sext i32 %86 to i64
  %arrayidx103 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom102
  %87 = load i64, ptr %arrayidx103, align 8
  %add104 = add i64 %add101, %87
  %add105 = add i64 %add104, 3395469782
  store i64 %add105, ptr %temp, align 8
  %88 = load i64, ptr %D, align 8
  store i64 %88, ptr %E, align 8
  %89 = load i64, ptr %C, align 8
  store i64 %89, ptr %D, align 8
  %90 = load i64, ptr %B, align 8
  %shl106 = shl i64 %90, 30
  %91 = load i64, ptr %B, align 8
  %shr107 = lshr i64 %91, 2
  %or108 = or i64 %shl106, %shr107
  store i64 %or108, ptr %C, align 8
  %92 = load i64, ptr %A, align 8
  store i64 %92, ptr %B, align 8
  %93 = load i64, ptr %temp, align 8
  store i64 %93, ptr %A, align 8
  br label %for.inc109

for.inc109:                                       ; preds = %for.body94
  %94 = load i32, ptr %i, align 4
  %inc110 = add nsw i32 %94, 1
  store i32 %inc110, ptr %i, align 4
  br label %for.cond92, !llvm.loop !14

for.end111:                                       ; preds = %for.cond92
  %95 = load i64, ptr %A, align 8
  %96 = load ptr, ptr %sha_info.addr, align 8
  %digest112 = getelementptr inbounds %struct.SHA_INFO, ptr %96, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [5 x i64], ptr %digest112, i64 0, i64 0
  %97 = load i64, ptr %arrayidx113, align 8
  %add114 = add i64 %97, %95
  store i64 %add114, ptr %arrayidx113, align 8
  %98 = load i64, ptr %B, align 8
  %99 = load ptr, ptr %sha_info.addr, align 8
  %digest115 = getelementptr inbounds %struct.SHA_INFO, ptr %99, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [5 x i64], ptr %digest115, i64 0, i64 1
  %100 = load i64, ptr %arrayidx116, align 8
  %add117 = add i64 %100, %98
  store i64 %add117, ptr %arrayidx116, align 8
  %101 = load i64, ptr %C, align 8
  %102 = load ptr, ptr %sha_info.addr, align 8
  %digest118 = getelementptr inbounds %struct.SHA_INFO, ptr %102, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [5 x i64], ptr %digest118, i64 0, i64 2
  %103 = load i64, ptr %arrayidx119, align 8
  %add120 = add i64 %103, %101
  store i64 %add120, ptr %arrayidx119, align 8
  %104 = load i64, ptr %D, align 8
  %105 = load ptr, ptr %sha_info.addr, align 8
  %digest121 = getelementptr inbounds %struct.SHA_INFO, ptr %105, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [5 x i64], ptr %digest121, i64 0, i64 3
  %106 = load i64, ptr %arrayidx122, align 8
  %add123 = add i64 %106, %104
  store i64 %add123, ptr %arrayidx122, align 8
  %107 = load i64, ptr %E, align 8
  %108 = load ptr, ptr %sha_info.addr, align 8
  %digest124 = getelementptr inbounds %struct.SHA_INFO, ptr %108, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [5 x i64], ptr %digest124, i64 0, i64 4
  %109 = load i64, ptr %arrayidx125, align 8
  %add126 = add i64 %109, %107
  store i64 %add126, ptr %arrayidx125, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @sha_final(ptr noundef %sha_info) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %lo_bit_count = alloca i64, align 8
  %hi_bit_count = alloca i64, align 8
  store ptr %sha_info, ptr %sha_info.addr, align 8
  %0 = load ptr, ptr %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHA_INFO, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %count_lo, align 8
  store i64 %1, ptr %lo_bit_count, align 8
  %2 = load ptr, ptr %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHA_INFO, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %count_hi, align 8
  store i64 %3, ptr %hi_bit_count, align 8
  %4 = load i64, ptr %lo_bit_count, align 8
  %shr = lshr i64 %4, 3
  %and = and i64 %shr, 63
  %conv = trunc i64 %and to i32
  store i32 %conv, ptr %count, align 4
  %5 = load ptr, ptr %sha_info.addr, align 8
  %data = getelementptr inbounds %struct.SHA_INFO, ptr %5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], ptr %data, i64 0, i64 0
  %6 = load i32, ptr %count, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %count, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %arraydecay, i64 %idxprom
  store i8 -128, ptr %arrayidx, align 1
  %7 = load i32, ptr %count, align 4
  %cmp = icmp sgt i32 %7, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %sha_info.addr, align 8
  %data2 = getelementptr inbounds %struct.SHA_INFO, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %count, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %data2, i64 %idx.ext
  %10 = load i32, ptr %count, align 4
  %sub = sub nsw i32 64, %10
  %conv3 = sext i32 %sub to i64
  %11 = load ptr, ptr %sha_info.addr, align 8
  %data4 = getelementptr inbounds %struct.SHA_INFO, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %count, align 4
  %idx.ext5 = sext i32 %12 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr %data4, i64 %idx.ext5
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr6, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %add.ptr, i32 noundef 0, i64 noundef %conv3, i64 noundef %13) #4
  %14 = load ptr, ptr %sha_info.addr, align 8
  %data7 = getelementptr inbounds %struct.SHA_INFO, ptr %14, i32 0, i32 3
  %arraydecay8 = getelementptr inbounds [16 x i64], ptr %data7, i64 0, i64 0
  call void @byte_reverse(ptr noundef %arraydecay8, i32 noundef 64)
  %15 = load ptr, ptr %sha_info.addr, align 8
  call void @sha_transform(ptr noundef %15)
  %16 = load ptr, ptr %sha_info.addr, align 8
  %data9 = getelementptr inbounds %struct.SHA_INFO, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %sha_info.addr, align 8
  %data10 = getelementptr inbounds %struct.SHA_INFO, ptr %17, i32 0, i32 3
  %18 = call i64 @llvm.objectsize.i64.p0(ptr %data10, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memset_chk(ptr noundef %data9, i32 noundef 0, i64 noundef 56, i64 noundef %18) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %sha_info.addr, align 8
  %data12 = getelementptr inbounds %struct.SHA_INFO, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %count, align 4
  %idx.ext13 = sext i32 %20 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %data12, i64 %idx.ext13
  %21 = load i32, ptr %count, align 4
  %sub15 = sub nsw i32 56, %21
  %conv16 = sext i32 %sub15 to i64
  %22 = load ptr, ptr %sha_info.addr, align 8
  %data17 = getelementptr inbounds %struct.SHA_INFO, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %count, align 4
  %idx.ext18 = sext i32 %23 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %data17, i64 %idx.ext18
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr19, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memset_chk(ptr noundef %add.ptr14, i32 noundef 0, i64 noundef %conv16, i64 noundef %24) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load ptr, ptr %sha_info.addr, align 8
  %data21 = getelementptr inbounds %struct.SHA_INFO, ptr %25, i32 0, i32 3
  %arraydecay22 = getelementptr inbounds [16 x i64], ptr %data21, i64 0, i64 0
  call void @byte_reverse(ptr noundef %arraydecay22, i32 noundef 64)
  %26 = load i64, ptr %hi_bit_count, align 8
  %27 = load ptr, ptr %sha_info.addr, align 8
  %data23 = getelementptr inbounds %struct.SHA_INFO, ptr %27, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [16 x i64], ptr %data23, i64 0, i64 14
  store i64 %26, ptr %arrayidx24, align 8
  %28 = load i64, ptr %lo_bit_count, align 8
  %29 = load ptr, ptr %sha_info.addr, align 8
  %data25 = getelementptr inbounds %struct.SHA_INFO, ptr %29, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [16 x i64], ptr %data25, i64 0, i64 15
  store i64 %28, ptr %arrayidx26, align 8
  %30 = load ptr, ptr %sha_info.addr, align 8
  call void @sha_transform(ptr noundef %30)
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @sha_stream(ptr noundef %sha_info, ptr noundef %fin) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  %fin.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %data = alloca [8192 x i8], align 1
  store ptr %sha_info, ptr %sha_info.addr, align 8
  store ptr %fin, ptr %fin.addr, align 8
  %0 = load ptr, ptr %sha_info.addr, align 8
  call void @sha_init(ptr noundef %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %data, i64 0, i64 0
  %1 = load ptr, ptr %fin.addr, align 8
  %call = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %i, align 4
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %sha_info.addr, align 8
  %arraydecay2 = getelementptr inbounds [8192 x i8], ptr %data, i64 0, i64 0
  %3 = load i32, ptr %i, align 4
  call void @sha_update(ptr noundef %2, ptr noundef %arraydecay2, i32 noundef %3)
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %sha_info.addr, align 8
  call void @sha_final(ptr noundef %4)
  ret void
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @sha_print(ptr noundef %sha_info) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  store ptr %sha_info, ptr %sha_info.addr, align 8
  %0 = load ptr, ptr %sha_info.addr, align 8
  %digest = getelementptr inbounds %struct.SHA_INFO, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i64], ptr %digest, i64 0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %sha_info.addr, align 8
  %digest1 = getelementptr inbounds %struct.SHA_INFO, ptr %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i64], ptr %digest1, i64 0, i64 1
  %3 = load i64, ptr %arrayidx2, align 8
  %4 = load ptr, ptr %sha_info.addr, align 8
  %digest3 = getelementptr inbounds %struct.SHA_INFO, ptr %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %digest3, i64 0, i64 2
  %5 = load i64, ptr %arrayidx4, align 8
  %6 = load ptr, ptr %sha_info.addr, align 8
  %digest5 = getelementptr inbounds %struct.SHA_INFO, ptr %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i64], ptr %digest5, i64 0, i64 3
  %7 = load i64, ptr %arrayidx6, align 8
  %8 = load ptr, ptr %sha_info.addr, align 8
  %digest7 = getelementptr inbounds %struct.SHA_INFO, ptr %8, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [5 x i64], ptr %digest7, i64 0, i64 4
  %9 = load i64, ptr %arrayidx8, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9)
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
!15 = distinct !{!15, !7}
