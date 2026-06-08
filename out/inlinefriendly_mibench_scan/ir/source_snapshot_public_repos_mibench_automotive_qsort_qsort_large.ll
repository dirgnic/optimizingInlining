; ModuleID = './source_snapshot/public_repos/mibench/automotive/qsort/qsort_large.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/qsort/qsort_large.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.my3DVertexStruct = type { i32, i32, i32, double }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @compare(ptr noundef %elem1, ptr noundef %elem2) #0 {
entry:
  %elem1.addr = alloca ptr, align 8
  %elem2.addr = alloca ptr, align 8
  %distance1 = alloca double, align 8
  %distance2 = alloca double, align 8
  store ptr %elem1, ptr %elem1.addr, align 8
  store ptr %elem2, ptr %elem2.addr, align 8
  %0 = load ptr, ptr %elem1.addr, align 8
  %distance = getelementptr inbounds %struct.my3DVertexStruct, ptr %0, i32 0, i32 3
  %1 = load double, ptr %distance, align 8
  store double %1, ptr %distance1, align 8
  %2 = load ptr, ptr %elem2.addr, align 8
  %distance3 = getelementptr inbounds %struct.my3DVertexStruct, ptr %2, i32 0, i32 3
  %3 = load double, ptr %distance3, align 8
  store double %3, ptr %distance2, align 8
  %4 = load double, ptr %distance1, align 8
  %5 = load double, ptr %distance2, align 8
  %cmp = fcmp ogt double %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load double, ptr %distance1, align 8
  %7 = load double, ptr %distance2, align 8
  %cmp4 = fcmp oeq double %6, %7
  %8 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 0, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  ret i32 %cond5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %array = alloca [60000 x %struct.my3DVertexStruct], align 8
  %fp = alloca ptr, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
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
  call void @exit(i32 noundef -1) #4
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
  %call2 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %4, ptr noundef @.str.2, ptr noundef %x)
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %5 = load ptr, ptr %fp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %5, ptr noundef @.str.2, ptr noundef %y)
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %fp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fscanf(ptr noundef %6, ptr noundef @.str.2, ptr noundef %z)
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  %7 = load i32, ptr %count, align 4
  %cmp9 = icmp slt i32 %7, 60000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, ptr %x, align 4
  %10 = load i32, ptr %count, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %idxprom
  %x11 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx10, i32 0, i32 0
  store i32 %9, ptr %x11, align 8
  %11 = load i32, ptr %y, align 4
  %12 = load i32, ptr %count, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %idxprom12
  %y14 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx13, i32 0, i32 1
  store i32 %11, ptr %y14, align 4
  %13 = load i32, ptr %z, align 4
  %14 = load i32, ptr %count, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %idxprom15
  %z17 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx16, i32 0, i32 2
  store i32 %13, ptr %z17, align 8
  %15 = load i32, ptr %x, align 4
  %conv = sitofp i32 %15 to double
  %16 = call double @llvm.pow.f64(double %conv, double 2.000000e+00)
  %17 = load i32, ptr %y, align 4
  %conv18 = sitofp i32 %17 to double
  %18 = call double @llvm.pow.f64(double %conv18, double 2.000000e+00)
  %add = fadd double %16, %18
  %19 = load i32, ptr %z, align 4
  %conv19 = sitofp i32 %19 to double
  %20 = call double @llvm.pow.f64(double %conv19, double 2.000000e+00)
  %add20 = fadd double %add, %20
  %21 = call double @llvm.sqrt.f64(double %add20)
  %22 = load i32, ptr %count, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %idxprom21
  %distance = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx22, i32 0, i32 3
  store double %21, ptr %distance, align 8
  %23 = load i32, ptr %count, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %count, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end
  %24 = load i32, ptr %count, align 4
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %24)
  %arraydecay = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 0
  %25 = load i32, ptr %count, align 4
  %conv24 = sext i32 %25 to i64
  call void @qsort(ptr noundef %arraydecay, i64 noundef %conv24, i64 noundef 24, ptr noundef @compare)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %count, align 4
  %cmp25 = icmp slt i32 %26, %27
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %idxprom27
  %x29 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx28, i32 0, i32 0
  %29 = load i32, ptr %x29, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %arrayidx31 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %idxprom30
  %y32 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx31, i32 0, i32 1
  %31 = load i32, ptr %y32, align 4
  %32 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %array, i64 0, i64 %idxprom33
  %z35 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx34, i32 0, i32 2
  %33 = load i32, ptr %z35, align 8
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %29, i32 noundef %31, i32 noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %34, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #3

declare i32 @printf(ptr noundef, ...) #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn }

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
