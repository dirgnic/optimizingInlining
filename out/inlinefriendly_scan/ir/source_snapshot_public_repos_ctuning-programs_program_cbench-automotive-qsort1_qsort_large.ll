; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-qsort1/qsort_large.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-qsort1/qsort_large.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.my3DVertexStruct = type { i32, i32, i32, double }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@array = global [60000 x %struct.my3DVertexStruct] zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"tmp-output.tmp\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\0AError: Can't open output file\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

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
define i32 @main1(i32 noundef %argc, ptr noundef %argv, i32 noundef %print) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %print.addr = alloca i32, align 4
  %fmisc = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 %print, ptr %print.addr, align 4
  store ptr null, ptr %fmisc, align 8
  store i32 0, ptr %count, align 4
  store i64 0, ptr %x, align 8
  store i64 0, ptr %y, align 8
  store i64 0, ptr %z, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str)
  call void @exit(i32 noundef 1) #4
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
  %9 = load i64, ptr %x, align 8
  %conv = trunc i64 %9 to i32
  %10 = load i32, ptr %count, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr @array, i64 0, i64 %idxprom
  %x11 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx10, i32 0, i32 0
  store i32 %conv, ptr %x11, align 8
  %11 = load i64, ptr %y, align 8
  %conv12 = trunc i64 %11 to i32
  %12 = load i32, ptr %count, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr @array, i64 0, i64 %idxprom13
  %y15 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx14, i32 0, i32 1
  store i32 %conv12, ptr %y15, align 4
  %13 = load i64, ptr %z, align 8
  %conv16 = trunc i64 %13 to i32
  %14 = load i32, ptr %count, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr @array, i64 0, i64 %idxprom17
  %z19 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx18, i32 0, i32 2
  store i32 %conv16, ptr %z19, align 8
  %15 = load i64, ptr %x, align 8
  %conv20 = sitofp i64 %15 to double
  %16 = call double @llvm.pow.f64(double %conv20, double 2.000000e+00)
  %17 = load i64, ptr %y, align 8
  %conv21 = sitofp i64 %17 to double
  %18 = call double @llvm.pow.f64(double %conv21, double 2.000000e+00)
  %add = fadd double %16, %18
  %19 = load i64, ptr %z, align 8
  %conv22 = sitofp i64 %19 to double
  %20 = call double @llvm.pow.f64(double %conv22, double 2.000000e+00)
  %add23 = fadd double %add, %20
  %21 = call double @llvm.sqrt.f64(double %add23)
  %22 = load i32, ptr %count, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr @array, i64 0, i64 %idxprom24
  %distance = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx25, i32 0, i32 3
  store double %21, ptr %distance, align 8
  %23 = load i32, ptr %count, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %count, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %24 = load ptr, ptr %fp, align 8
  %call26 = call i32 @fclose(ptr noundef %24)
  br label %if.end

if.end:                                           ; preds = %while.end
  %25 = load i32, ptr %print.addr, align 4
  %cmp27 = icmp eq i32 %25, 1
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end
  %26 = load i32, ptr %count, align 4
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %26)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end
  %27 = load i32, ptr %count, align 4
  call void @qsortx(ptr noundef @array, i32 noundef %27, i32 noundef 24, ptr noundef @compare)
  %28 = load i32, ptr %print.addr, align 4
  %cmp32 = icmp eq i32 %28, 1
  br i1 %cmp32, label %if.then34, label %if.end55

if.then34:                                        ; preds = %if.end31
  %call35 = call ptr @"\01_fopen"(ptr noundef @.str.4, ptr noundef @.str.5)
  store ptr %call35, ptr %fmisc, align 8
  %cmp36 = icmp eq ptr %call35, null
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then34
  %29 = load ptr, ptr @__stderrp, align 8
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.6)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end40:                                         ; preds = %if.then34
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end40
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %count, align 4
  %cmp41 = icmp slt i32 %30, %31
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %fmisc, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr @array, i64 0, i64 %idxprom43
  %x45 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx44, i32 0, i32 0
  %34 = load i32, ptr %x45, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr @array, i64 0, i64 %idxprom46
  %y48 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx47, i32 0, i32 1
  %36 = load i32, ptr %y48, align 4
  %37 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr @array, i64 0, i64 %idxprom49
  %z51 = getelementptr inbounds %struct.my3DVertexStruct, ptr %arrayidx50, i32 0, i32 2
  %38 = load i32, ptr %z51, align 8
  %call52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.7, i32 noundef %34, i32 noundef %36, i32 noundef %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %count, align 4
  %div = sdiv i32 %39, 100
  %40 = load i32, ptr %i, align 4
  %add53 = add nsw i32 %40, %div
  store i32 %add53, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %fmisc, align 8
  %call54 = call i32 @fclose(ptr noundef %41)
  br label %if.end55

if.end55:                                         ; preds = %for.end, %if.end31
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

declare i32 @fclose(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare void @qsortx(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

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
