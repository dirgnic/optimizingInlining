; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/percentile.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/percentile.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.PercentileFunc = type { ptr, i8, i8, i8 }
%struct.Percentile = type { i32, i32, i8, i8, i8, double, ptr }

@aPercentFunc = internal constant [4 x %struct.PercentileFunc] [%struct.PercentileFunc { ptr @.str, i8 1, i8 1, i8 0 }, %struct.PercentileFunc { ptr @.str.1, i8 2, i8 100, i8 0 }, %struct.PercentileFunc { ptr @.str.2, i8 2, i8 1, i8 0 }, %struct.PercentileFunc { ptr @.str.3, i8 2, i8 1, i8 1 }], align 8
@.str = private unnamed_addr constant [7 x i8] c"median\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"percentile\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"percentile_cont\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"percentile_disc\00", align 1
@__func__.percentStep = private unnamed_addr constant [12 x i8] c"percentStep\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"percentile.c\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"argc==2 || argc==1\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"the fraction argument to %%s() is not between 0.0 and %.1f\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"the fraction argument to %%s() is not the same for all input rows\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"input to %%s() is not numeric\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Inf input to %%s()\00", align 1
@__func__.percentCompute = private unnamed_addr constant [15 x i8] c"percentCompute\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"p->nUsed>1\00", align 1
@__func__.percentInverse = private unnamed_addr constant [15 x i8] c"percentInverse\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"p!=0\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @sqlite3_percentile_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %pzErrMsg.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %conv = zext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.PercentileFunc], ptr @aPercentFunc, i64 0, i64 %idxprom
  %zName = getelementptr inbounds %struct.PercentileFunc, ptr %arrayidx, i32 0, i32 0
  %5 = load ptr, ptr %zName, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom2 = zext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [4 x %struct.PercentileFunc], ptr @aPercentFunc, i64 0, i64 %idxprom2
  %nArg = getelementptr inbounds %struct.PercentileFunc, ptr %arrayidx3, i32 0, i32 1
  %7 = load i8, ptr %nArg, align 8
  %conv4 = sext i8 %7 to i32
  %8 = load i32, ptr %i, align 4
  %idxprom5 = zext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [4 x %struct.PercentileFunc], ptr @aPercentFunc, i64 0, i64 %idxprom5
  %call = call i32 @sqlite3_create_window_function(ptr noundef %3, ptr noundef %5, i32 noundef %conv4, i32 noundef 35651585, ptr noundef %arrayidx6, ptr noundef @percentStep, ptr noundef @percentFinal, ptr noundef @percentValue, ptr noundef @percentInverse, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i32, ptr %rc, align 4
  ret i32 %11
}

declare i32 @sqlite3_create_window_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @percentStep(ptr noundef %pCtx, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rPct = alloca double, align 8
  %eType = alloca i32, align 4
  %y = alloca double, align 8
  %pFunc = alloca ptr, align 8
  %n = alloca i32, align 4
  %a = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %2, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  call void @__assert_rtn(ptr noundef @__func__.percentStep, ptr noundef @.str.4, i32 noundef 236, ptr noundef @.str.5) #7
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store double 5.000000e-01, ptr %rPct, align 8
  br label %if.end20

if.else:                                          ; preds = %cond.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_user_data(ptr noundef %5)
  store ptr %call, ptr %pFunc, align 8
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx, align 8
  %call4 = call i32 @sqlite3_value_numeric_type(ptr noundef %7)
  store i32 %call4, ptr %eType, align 4
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx5, align 8
  %call6 = call double @sqlite3_value_double(ptr noundef %9)
  %10 = load ptr, ptr %pFunc, align 8
  %mxFrac = getelementptr inbounds %struct.PercentileFunc, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %mxFrac, align 1
  %conv7 = sitofp i8 %11 to double
  %div = fdiv double %call6, %conv7
  store double %div, ptr %rPct, align 8
  %12 = load i32, ptr %eType, align 4
  %cmp8 = icmp ne i32 %12, 1
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  %13 = load i32, ptr %eType, align 4
  %cmp10 = icmp ne i32 %13, 2
  br i1 %cmp10, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %14 = load double, ptr %rPct, align 8
  %cmp12 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp12, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %15 = load double, ptr %rPct, align 8
  %cmp15 = fcmp ogt double %15, 1.000000e+00
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %land.lhs.true
  %16 = load ptr, ptr %pCtx.addr, align 8
  %17 = load ptr, ptr %pFunc, align 8
  %mxFrac18 = getelementptr inbounds %struct.PercentileFunc, ptr %17, i32 0, i32 2
  %18 = load i8, ptr %mxFrac18, align 1
  %conv19 = sitofp i8 %18 to double
  call void (ptr, ptr, ...) @percentError(ptr noundef %16, ptr noundef @.str.6, double noundef %conv19)
  br label %if.end135

if.end:                                           ; preds = %lor.lhs.false14
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  %19 = load ptr, ptr %pCtx.addr, align 8
  %call21 = call ptr @sqlite3_aggregate_context(ptr noundef %19, i32 noundef 32)
  store ptr %call21, ptr %p, align 8
  %20 = load ptr, ptr %p, align 8
  %cmp22 = icmp eq ptr %20, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  br label %if.end135

if.end25:                                         ; preds = %if.end20
  %21 = load ptr, ptr %p, align 8
  %bPctValid = getelementptr inbounds %struct.Percentile, ptr %21, i32 0, i32 4
  %22 = load i8, ptr %bPctValid, align 2
  %tobool26 = icmp ne i8 %22, 0
  br i1 %tobool26, label %if.else30, label %if.then27

if.then27:                                        ; preds = %if.end25
  %23 = load double, ptr %rPct, align 8
  %24 = load ptr, ptr %p, align 8
  %rPct28 = getelementptr inbounds %struct.Percentile, ptr %24, i32 0, i32 5
  store double %23, ptr %rPct28, align 8
  %25 = load ptr, ptr %p, align 8
  %bPctValid29 = getelementptr inbounds %struct.Percentile, ptr %25, i32 0, i32 4
  store i8 1, ptr %bPctValid29, align 2
  br label %if.end36

if.else30:                                        ; preds = %if.end25
  %26 = load ptr, ptr %p, align 8
  %rPct31 = getelementptr inbounds %struct.Percentile, ptr %26, i32 0, i32 5
  %27 = load double, ptr %rPct31, align 8
  %28 = load double, ptr %rPct, align 8
  %call32 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_percentile_0(double noundef %27, double noundef %28)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.else30
  %29 = load ptr, ptr %pCtx.addr, align 8
  call void (ptr, ptr, ...) @percentError(ptr noundef %29, ptr noundef @.str.7)
  br label %if.end135

if.end35:                                         ; preds = %if.else30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then27
  %30 = load ptr, ptr %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds ptr, ptr %30, i64 0
  %31 = load ptr, ptr %arrayidx37, align 8
  %call38 = call i32 @sqlite3_value_type(ptr noundef %31)
  store i32 %call38, ptr %eType, align 4
  %32 = load i32, ptr %eType, align 4
  %cmp39 = icmp eq i32 %32, 5
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end36
  br label %if.end135

if.end42:                                         ; preds = %if.end36
  %33 = load i32, ptr %eType, align 4
  %cmp43 = icmp ne i32 %33, 1
  br i1 %cmp43, label %land.lhs.true45, label %if.end49

land.lhs.true45:                                  ; preds = %if.end42
  %34 = load i32, ptr %eType, align 4
  %cmp46 = icmp ne i32 %34, 2
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %land.lhs.true45
  %35 = load ptr, ptr %pCtx.addr, align 8
  call void (ptr, ptr, ...) @percentError(ptr noundef %35, ptr noundef @.str.8)
  br label %if.end135

if.end49:                                         ; preds = %land.lhs.true45, %if.end42
  %36 = load ptr, ptr %argv.addr, align 8
  %arrayidx50 = getelementptr inbounds ptr, ptr %36, i64 0
  %37 = load ptr, ptr %arrayidx50, align 8
  %call51 = call double @sqlite3_value_double(ptr noundef %37)
  store double %call51, ptr %y, align 8
  %38 = load double, ptr %y, align 8
  %call52 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_percentile_1(double noundef %38)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  %39 = load ptr, ptr %pCtx.addr, align 8
  call void (ptr, ptr, ...) @percentError(ptr noundef %39, ptr noundef @.str.9)
  br label %if.end135

if.end55:                                         ; preds = %if.end49
  %40 = load ptr, ptr %p, align 8
  %nUsed = getelementptr inbounds %struct.Percentile, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %nUsed, align 4
  %42 = load ptr, ptr %p, align 8
  %nAlloc = getelementptr inbounds %struct.Percentile, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %nAlloc, align 8
  %cmp56 = icmp uge i32 %41, %43
  br i1 %cmp56, label %if.then58, label %if.end72

if.then58:                                        ; preds = %if.end55
  %44 = load ptr, ptr %p, align 8
  %nAlloc59 = getelementptr inbounds %struct.Percentile, ptr %44, i32 0, i32 0
  %45 = load i32, ptr %nAlloc59, align 8
  %mul = mul i32 %45, 2
  %add = add i32 %mul, 250
  store i32 %add, ptr %n, align 4
  %46 = load ptr, ptr %p, align 8
  %a60 = getelementptr inbounds %struct.Percentile, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %a60, align 8
  %48 = load i32, ptr %n, align 4
  %conv61 = zext i32 %48 to i64
  %mul62 = mul i64 8, %conv61
  %call63 = call ptr @sqlite3_realloc64(ptr noundef %47, i64 noundef %mul62)
  store ptr %call63, ptr %a, align 8
  %49 = load ptr, ptr %a, align 8
  %cmp64 = icmp eq ptr %49, null
  br i1 %cmp64, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.then58
  %50 = load ptr, ptr %p, align 8
  %a67 = getelementptr inbounds %struct.Percentile, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %a67, align 8
  call void @sqlite3_free(ptr noundef %51)
  %52 = load ptr, ptr %p, align 8
  %53 = load ptr, ptr %p, align 8
  %54 = call i64 @llvm.objectsize.i64.p0(ptr %53, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memset_chk(ptr noundef %52, i32 noundef 0, i64 noundef 32, i64 noundef %54) #8
  %55 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %55)
  br label %if.end135

if.end69:                                         ; preds = %if.then58
  %56 = load i32, ptr %n, align 4
  %57 = load ptr, ptr %p, align 8
  %nAlloc70 = getelementptr inbounds %struct.Percentile, ptr %57, i32 0, i32 0
  store i32 %56, ptr %nAlloc70, align 8
  %58 = load ptr, ptr %a, align 8
  %59 = load ptr, ptr %p, align 8
  %a71 = getelementptr inbounds %struct.Percentile, ptr %59, i32 0, i32 6
  store ptr %58, ptr %a71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.end69, %if.end55
  %60 = load ptr, ptr %p, align 8
  %nUsed73 = getelementptr inbounds %struct.Percentile, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %nUsed73, align 4
  %cmp74 = icmp eq i32 %61, 0
  br i1 %cmp74, label %if.then76, label %if.else80

if.then76:                                        ; preds = %if.end72
  %62 = load double, ptr %y, align 8
  %63 = load ptr, ptr %p, align 8
  %a77 = getelementptr inbounds %struct.Percentile, ptr %63, i32 0, i32 6
  %64 = load ptr, ptr %a77, align 8
  %65 = load ptr, ptr %p, align 8
  %nUsed78 = getelementptr inbounds %struct.Percentile, ptr %65, i32 0, i32 1
  %66 = load i32, ptr %nUsed78, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %nUsed78, align 4
  %idxprom = zext i32 %66 to i64
  %arrayidx79 = getelementptr inbounds double, ptr %64, i64 %idxprom
  store double %62, ptr %arrayidx79, align 8
  %67 = load ptr, ptr %p, align 8
  %bSorted = getelementptr inbounds %struct.Percentile, ptr %67, i32 0, i32 2
  store i8 1, ptr %bSorted, align 8
  br label %if.end135

if.else80:                                        ; preds = %if.end72
  %68 = load ptr, ptr %p, align 8
  %bSorted81 = getelementptr inbounds %struct.Percentile, ptr %68, i32 0, i32 2
  %69 = load i8, ptr %bSorted81, align 8
  %tobool82 = icmp ne i8 %69, 0
  br i1 %tobool82, label %lor.lhs.false83, label %if.then90

lor.lhs.false83:                                  ; preds = %if.else80
  %70 = load double, ptr %y, align 8
  %71 = load ptr, ptr %p, align 8
  %a84 = getelementptr inbounds %struct.Percentile, ptr %71, i32 0, i32 6
  %72 = load ptr, ptr %a84, align 8
  %73 = load ptr, ptr %p, align 8
  %nUsed85 = getelementptr inbounds %struct.Percentile, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %nUsed85, align 4
  %sub = sub i32 %74, 1
  %idxprom86 = zext i32 %sub to i64
  %arrayidx87 = getelementptr inbounds double, ptr %72, i64 %idxprom86
  %75 = load double, ptr %arrayidx87, align 8
  %cmp88 = fcmp oge double %70, %75
  br i1 %cmp88, label %if.then90, label %if.else96

if.then90:                                        ; preds = %lor.lhs.false83, %if.else80
  %76 = load double, ptr %y, align 8
  %77 = load ptr, ptr %p, align 8
  %a91 = getelementptr inbounds %struct.Percentile, ptr %77, i32 0, i32 6
  %78 = load ptr, ptr %a91, align 8
  %79 = load ptr, ptr %p, align 8
  %nUsed92 = getelementptr inbounds %struct.Percentile, ptr %79, i32 0, i32 1
  %80 = load i32, ptr %nUsed92, align 4
  %inc93 = add i32 %80, 1
  store i32 %inc93, ptr %nUsed92, align 4
  %idxprom94 = zext i32 %80 to i64
  %arrayidx95 = getelementptr inbounds double, ptr %78, i64 %idxprom94
  store double %76, ptr %arrayidx95, align 8
  br label %if.end134

if.else96:                                        ; preds = %lor.lhs.false83
  %81 = load ptr, ptr %p, align 8
  %bKeepSorted = getelementptr inbounds %struct.Percentile, ptr %81, i32 0, i32 3
  %82 = load i8, ptr %bKeepSorted, align 1
  %tobool97 = icmp ne i8 %82, 0
  br i1 %tobool97, label %if.then98, label %if.else126

if.then98:                                        ; preds = %if.else96
  %83 = load ptr, ptr %p, align 8
  %84 = load double, ptr %y, align 8
  %call99 = call i32 @percentBinarySearch(ptr noundef %83, double noundef %84, i32 noundef 0)
  store i32 %call99, ptr %i, align 4
  %85 = load i32, ptr %i, align 4
  %86 = load ptr, ptr %p, align 8
  %nUsed100 = getelementptr inbounds %struct.Percentile, ptr %86, i32 0, i32 1
  %87 = load i32, ptr %nUsed100, align 4
  %cmp101 = icmp slt i32 %85, %87
  br i1 %cmp101, label %if.then103, label %if.end120

if.then103:                                       ; preds = %if.then98
  %88 = load ptr, ptr %p, align 8
  %a104 = getelementptr inbounds %struct.Percentile, ptr %88, i32 0, i32 6
  %89 = load ptr, ptr %a104, align 8
  %90 = load i32, ptr %i, align 4
  %add105 = add nsw i32 %90, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds double, ptr %89, i64 %idxprom106
  %91 = load ptr, ptr %p, align 8
  %a108 = getelementptr inbounds %struct.Percentile, ptr %91, i32 0, i32 6
  %92 = load ptr, ptr %a108, align 8
  %93 = load i32, ptr %i, align 4
  %idxprom109 = sext i32 %93 to i64
  %arrayidx110 = getelementptr inbounds double, ptr %92, i64 %idxprom109
  %94 = load ptr, ptr %p, align 8
  %nUsed111 = getelementptr inbounds %struct.Percentile, ptr %94, i32 0, i32 1
  %95 = load i32, ptr %nUsed111, align 4
  %96 = load i32, ptr %i, align 4
  %sub112 = sub i32 %95, %96
  %conv113 = zext i32 %sub112 to i64
  %mul114 = mul i64 %conv113, 8
  %97 = load ptr, ptr %p, align 8
  %a115 = getelementptr inbounds %struct.Percentile, ptr %97, i32 0, i32 6
  %98 = load ptr, ptr %a115, align 8
  %99 = load i32, ptr %i, align 4
  %add116 = add nsw i32 %99, 1
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds double, ptr %98, i64 %idxprom117
  %100 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx118, i1 false, i1 true, i1 false)
  %call119 = call ptr @__memmove_chk(ptr noundef %arrayidx107, ptr noundef %arrayidx110, i64 noundef %mul114, i64 noundef %100) #8
  br label %if.end120

if.end120:                                        ; preds = %if.then103, %if.then98
  %101 = load double, ptr %y, align 8
  %102 = load ptr, ptr %p, align 8
  %a121 = getelementptr inbounds %struct.Percentile, ptr %102, i32 0, i32 6
  %103 = load ptr, ptr %a121, align 8
  %104 = load i32, ptr %i, align 4
  %idxprom122 = sext i32 %104 to i64
  %arrayidx123 = getelementptr inbounds double, ptr %103, i64 %idxprom122
  store double %101, ptr %arrayidx123, align 8
  %105 = load ptr, ptr %p, align 8
  %nUsed124 = getelementptr inbounds %struct.Percentile, ptr %105, i32 0, i32 1
  %106 = load i32, ptr %nUsed124, align 4
  %inc125 = add i32 %106, 1
  store i32 %inc125, ptr %nUsed124, align 4
  br label %if.end133

if.else126:                                       ; preds = %if.else96
  %107 = load double, ptr %y, align 8
  %108 = load ptr, ptr %p, align 8
  %a127 = getelementptr inbounds %struct.Percentile, ptr %108, i32 0, i32 6
  %109 = load ptr, ptr %a127, align 8
  %110 = load ptr, ptr %p, align 8
  %nUsed128 = getelementptr inbounds %struct.Percentile, ptr %110, i32 0, i32 1
  %111 = load i32, ptr %nUsed128, align 4
  %inc129 = add i32 %111, 1
  store i32 %inc129, ptr %nUsed128, align 4
  %idxprom130 = zext i32 %111 to i64
  %arrayidx131 = getelementptr inbounds double, ptr %109, i64 %idxprom130
  store double %107, ptr %arrayidx131, align 8
  %112 = load ptr, ptr %p, align 8
  %bSorted132 = getelementptr inbounds %struct.Percentile, ptr %112, i32 0, i32 2
  store i8 0, ptr %bSorted132, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.else126, %if.end120
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then90
  br label %if.end135

if.end135:                                        ; preds = %if.then17, %if.then24, %if.then34, %if.then41, %if.then48, %if.then54, %if.then66, %if.end134, %if.then76
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @percentFinal(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  call void @percentCompute(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @percentValue(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  call void @percentCompute(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @percentInverse(ptr noundef %pCtx, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %eType = alloca i32, align 4
  %y = alloca double, align 8
  %i = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %2, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  call void @__assert_rtn(ptr noundef @__func__.percentInverse, ptr noundef @.str.4, i32 noundef 394, ptr noundef @.str.5) #7
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %4, i32 noundef 32)
  store ptr %call, ptr %p, align 8
  %5 = load ptr, ptr %p, align 8
  %cmp2 = icmp ne ptr %5, null
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.percentInverse, ptr noundef @.str.4, i32 noundef 398, ptr noundef @.str.11) #7
  unreachable

6:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %6
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx, align 8
  %call11 = call i32 @sqlite3_value_type(ptr noundef %8)
  store i32 %call11, ptr %eType, align 4
  %9 = load i32, ptr %eType, align 4
  %cmp12 = icmp eq i32 %9, 5
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end10
  br label %if.end63

if.end:                                           ; preds = %cond.end10
  %10 = load i32, ptr %eType, align 4
  %cmp14 = icmp ne i32 %10, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, ptr %eType, align 4
  %cmp16 = icmp ne i32 %11, 2
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  br label %if.end63

if.end19:                                         ; preds = %land.lhs.true, %if.end
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx20, align 8
  %call21 = call double @sqlite3_value_double(ptr noundef %13)
  store double %call21, ptr %y, align 8
  %14 = load double, ptr %y, align 8
  %call22 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_percentile_2(double noundef %14)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  br label %if.end63

if.end25:                                         ; preds = %if.end19
  %15 = load ptr, ptr %p, align 8
  %bSorted = getelementptr inbounds %struct.Percentile, ptr %15, i32 0, i32 2
  %16 = load i8, ptr %bSorted, align 8
  %conv26 = sext i8 %16 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then29, label %if.end41

if.then29:                                        ; preds = %if.end25
  %17 = load ptr, ptr %p, align 8
  %nUsed = getelementptr inbounds %struct.Percentile, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %nUsed, align 4
  %cmp30 = icmp ugt i32 %18, 1
  %lnot32 = xor i1 %cmp30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %tobool35 = icmp ne i64 %conv34, 0
  br i1 %tobool35, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %if.then29
  call void @__assert_rtn(ptr noundef @__func__.percentInverse, ptr noundef @.str.4, i32 noundef 416, ptr noundef @.str.10) #7
  unreachable

19:                                               ; No predecessors!
  br label %cond.end38

cond.false37:                                     ; preds = %if.then29
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %19
  %20 = load ptr, ptr %p, align 8
  %a = getelementptr inbounds %struct.Percentile, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %a, align 8
  %22 = load ptr, ptr %p, align 8
  %nUsed39 = getelementptr inbounds %struct.Percentile, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nUsed39, align 4
  call void @percentSort(ptr noundef %21, i32 noundef %23)
  %24 = load ptr, ptr %p, align 8
  %bSorted40 = getelementptr inbounds %struct.Percentile, ptr %24, i32 0, i32 2
  store i8 1, ptr %bSorted40, align 8
  br label %if.end41

if.end41:                                         ; preds = %cond.end38, %if.end25
  %25 = load ptr, ptr %p, align 8
  %bKeepSorted = getelementptr inbounds %struct.Percentile, ptr %25, i32 0, i32 3
  store i8 1, ptr %bKeepSorted, align 1
  %26 = load ptr, ptr %p, align 8
  %27 = load double, ptr %y, align 8
  %call42 = call i32 @percentBinarySearch(ptr noundef %26, double noundef %27, i32 noundef 1)
  store i32 %call42, ptr %i, align 4
  %28 = load i32, ptr %i, align 4
  %cmp43 = icmp sge i32 %28, 0
  br i1 %cmp43, label %if.then45, label %if.end63

if.then45:                                        ; preds = %if.end41
  %29 = load ptr, ptr %p, align 8
  %nUsed46 = getelementptr inbounds %struct.Percentile, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %nUsed46, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %nUsed46, align 4
  %31 = load i32, ptr %i, align 4
  %32 = load ptr, ptr %p, align 8
  %nUsed47 = getelementptr inbounds %struct.Percentile, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %nUsed47, align 4
  %cmp48 = icmp slt i32 %31, %33
  br i1 %cmp48, label %if.then50, label %if.end62

if.then50:                                        ; preds = %if.then45
  %34 = load ptr, ptr %p, align 8
  %a51 = getelementptr inbounds %struct.Percentile, ptr %34, i32 0, i32 6
  %35 = load ptr, ptr %a51, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds double, ptr %35, i64 %idxprom
  %37 = load ptr, ptr %p, align 8
  %a53 = getelementptr inbounds %struct.Percentile, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %a53, align 8
  %39 = load i32, ptr %i, align 4
  %add = add nsw i32 %39, 1
  %idxprom54 = sext i32 %add to i64
  %arrayidx55 = getelementptr inbounds double, ptr %38, i64 %idxprom54
  %40 = load ptr, ptr %p, align 8
  %nUsed56 = getelementptr inbounds %struct.Percentile, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %nUsed56, align 4
  %42 = load i32, ptr %i, align 4
  %sub = sub i32 %41, %42
  %conv57 = zext i32 %sub to i64
  %mul = mul i64 %conv57, 8
  %43 = load ptr, ptr %p, align 8
  %a58 = getelementptr inbounds %struct.Percentile, ptr %43, i32 0, i32 6
  %44 = load ptr, ptr %a58, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %45 to i64
  %arrayidx60 = getelementptr inbounds double, ptr %44, i64 %idxprom59
  %46 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx60, i1 false, i1 true, i1 false)
  %call61 = call ptr @__memmove_chk(ptr noundef %arrayidx52, ptr noundef %arrayidx55, i64 noundef %mul, i64 noundef %46) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then50, %if.then45
  br label %if.end63

if.end63:                                         ; preds = %if.then, %if.then18, %if.then24, %if.end62, %if.end41
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @sqlite3_user_data(ptr noundef) #1

declare i32 @sqlite3_value_numeric_type(ptr noundef) #1

declare double @sqlite3_value_double(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @percentError(ptr noundef %pCtx, ptr noundef %zFormat, ...) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %zMsg1 = alloca ptr, align 8
  %zMsg2 = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_user_data(ptr noundef %0)
  store ptr %call, ptr %pFunc, align 8
  call void @llvm.va_start(ptr %ap)
  %1 = load ptr, ptr %zFormat.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call1 = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef %2)
  store ptr %call1, ptr %zMsg1, align 8
  call void @llvm.va_end(ptr %ap)
  %3 = load ptr, ptr %zMsg1, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %zMsg1, align 8
  %5 = load ptr, ptr %pFunc, align 8
  %zName = getelementptr inbounds %struct.PercentileFunc, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %zName, align 8
  %call2 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef %4, ptr noundef %6)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %zMsg2, align 8
  %7 = load ptr, ptr %pCtx.addr, align 8
  %8 = load ptr, ptr %zMsg2, align 8
  call void @sqlite3_result_error(ptr noundef %7, ptr noundef %8, i32 noundef -1)
  %9 = load ptr, ptr %zMsg1, align 8
  call void @sqlite3_free(ptr noundef %9)
  %10 = load ptr, ptr %zMsg2, align 8
  call void @sqlite3_free(ptr noundef %10)
  ret void
}

declare ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @percentSameValue(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8
  store double %b, ptr %b.addr, align 8
  %0 = load double, ptr %b.addr, align 8
  %1 = load double, ptr %a.addr, align 8
  %sub = fsub double %1, %0
  store double %sub, ptr %a.addr, align 8
  %2 = load double, ptr %a.addr, align 8
  %cmp = fcmp oge double %2, -1.000000e-03
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load double, ptr %a.addr, align 8
  %cmp1 = fcmp ole double %3, 1.000000e-03
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

declare i32 @sqlite3_value_type(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @percentIsInfinity(double noundef %r) #0 {
entry:
  %r.addr = alloca double, align 8
  %u = alloca i64, align 8
  store double %r, ptr %r.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %u, ptr align 8 %r.addr, i64 8, i1 false)
  %0 = load i64, ptr %u, align 8
  %shr = lshr i64 %0, 52
  %and = and i64 %shr, 2047
  %cmp = icmp eq i64 %and, 2047
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

declare void @sqlite3_free(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare void @sqlite3_result_error_nomem(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @percentBinarySearch(ptr noundef %p, double noundef %y, i32 noundef %bExact) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %y.addr = alloca double, align 8
  %bExact.addr = alloca i32, align 4
  %iFirst = alloca i32, align 4
  %iLast = alloca i32, align 4
  %iMid = alloca i32, align 4
  %x = alloca double, align 8
  store ptr %p, ptr %p.addr, align 8
  store double %y, ptr %y.addr, align 8
  store i32 %bExact, ptr %bExact.addr, align 4
  store i32 0, ptr %iFirst, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %nUsed = getelementptr inbounds %struct.Percentile, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %nUsed, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, ptr %iLast, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %2 = load i32, ptr %iLast, align 4
  %3 = load i32, ptr %iFirst, align 4
  %cmp = icmp sge i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %iFirst, align 4
  %5 = load i32, ptr %iLast, align 4
  %add = add nsw i32 %4, %5
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %iMid, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds %struct.Percentile, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %a, align 8
  %8 = load i32, ptr %iMid, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds double, ptr %7, i64 %idxprom
  %9 = load double, ptr %arrayidx, align 8
  store double %9, ptr %x, align 8
  %10 = load double, ptr %x, align 8
  %11 = load double, ptr %y.addr, align 8
  %cmp1 = fcmp olt double %10, %11
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i32, ptr %iMid, align 4
  %add2 = add nsw i32 %12, 1
  store i32 %add2, ptr %iFirst, align 4
  br label %if.end7

if.else:                                          ; preds = %while.body
  %13 = load double, ptr %x, align 8
  %14 = load double, ptr %y.addr, align 8
  %cmp3 = fcmp ogt double %13, %14
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %15 = load i32, ptr %iMid, align 4
  %sub5 = sub nsw i32 %15, 1
  store i32 %sub5, ptr %iLast, align 4
  br label %if.end

if.else6:                                         ; preds = %if.else
  %16 = load i32, ptr %iMid, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %17 = load i32, ptr %bExact.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.end
  %18 = load i32, ptr %iFirst, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.else6
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

declare ptr @sqlite3_vmprintf(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind ssp uwtable
define internal void @percentCompute(ptr noundef %pCtx, i32 noundef %bIsFinal) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %bIsFinal.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %v1 = alloca double, align 8
  %v2 = alloca double, align 8
  %ix = alloca double, align 8
  %vx = alloca double, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %bIsFinal, ptr %bIsFinal.addr, align 4
  %0 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_user_data(ptr noundef %0)
  store ptr %call, ptr %pFunc, align 8
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call ptr @sqlite3_aggregate_context(ptr noundef %1, i32 noundef 0)
  store ptr %call1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end51

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %a = getelementptr inbounds %struct.Percentile, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %a, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %if.end51

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %p, align 8
  %nUsed = getelementptr inbounds %struct.Percentile, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nUsed, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then5, label %if.end45

if.then5:                                         ; preds = %if.end4
  %7 = load ptr, ptr %p, align 8
  %bSorted = getelementptr inbounds %struct.Percentile, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %bSorted, align 8
  %conv = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then8, label %if.end17

if.then8:                                         ; preds = %if.then5
  %9 = load ptr, ptr %p, align 8
  %nUsed9 = getelementptr inbounds %struct.Percentile, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %nUsed9, align 4
  %cmp10 = icmp ugt i32 %10, 1
  %lnot = xor i1 %cmp10, true
  %lnot.ext = zext i1 %lnot to i32
  %conv12 = sext i32 %lnot.ext to i64
  %tobool13 = icmp ne i64 %conv12, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  call void @__assert_rtn(ptr noundef @__func__.percentCompute, ptr noundef @.str.4, i32 noundef 447, ptr noundef @.str.10) #7
  unreachable

11:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %11
  %12 = load ptr, ptr %p, align 8
  %a14 = getelementptr inbounds %struct.Percentile, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %a14, align 8
  %14 = load ptr, ptr %p, align 8
  %nUsed15 = getelementptr inbounds %struct.Percentile, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %nUsed15, align 4
  call void @percentSort(ptr noundef %13, i32 noundef %15)
  %16 = load ptr, ptr %p, align 8
  %bSorted16 = getelementptr inbounds %struct.Percentile, ptr %16, i32 0, i32 2
  store i8 1, ptr %bSorted16, align 8
  br label %if.end17

if.end17:                                         ; preds = %cond.end, %if.then5
  %17 = load ptr, ptr %p, align 8
  %rPct = getelementptr inbounds %struct.Percentile, ptr %17, i32 0, i32 5
  %18 = load double, ptr %rPct, align 8
  %19 = load ptr, ptr %p, align 8
  %nUsed18 = getelementptr inbounds %struct.Percentile, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nUsed18, align 4
  %sub = sub i32 %20, 1
  %conv19 = uitofp i32 %sub to double
  %mul = fmul double %18, %conv19
  store double %mul, ptr %ix, align 8
  %21 = load double, ptr %ix, align 8
  %conv20 = fptoui double %21 to i32
  store i32 %conv20, ptr %i1, align 4
  %22 = load ptr, ptr %pFunc, align 8
  %bDiscrete = getelementptr inbounds %struct.PercentileFunc, ptr %22, i32 0, i32 3
  %23 = load i8, ptr %bDiscrete, align 2
  %tobool21 = icmp ne i8 %23, 0
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end17
  %24 = load ptr, ptr %p, align 8
  %a23 = getelementptr inbounds %struct.Percentile, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %a23, align 8
  %26 = load i32, ptr %i1, align 4
  %idxprom = zext i32 %26 to i64
  %arrayidx = getelementptr inbounds double, ptr %25, i64 %idxprom
  %27 = load double, ptr %arrayidx, align 8
  store double %27, ptr %vx, align 8
  br label %if.end44

if.else:                                          ; preds = %if.end17
  %28 = load double, ptr %ix, align 8
  %29 = load i32, ptr %i1, align 4
  %conv24 = uitofp i32 %29 to double
  %cmp25 = fcmp oeq double %28, %conv24
  br i1 %cmp25, label %cond.true31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %30 = load i32, ptr %i1, align 4
  %31 = load ptr, ptr %p, align 8
  %nUsed27 = getelementptr inbounds %struct.Percentile, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %nUsed27, align 4
  %sub28 = sub i32 %32, 1
  %cmp29 = icmp eq i32 %30, %sub28
  br i1 %cmp29, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %lor.lhs.false, %if.else
  %33 = load i32, ptr %i1, align 4
  br label %cond.end33

cond.false32:                                     ; preds = %lor.lhs.false
  %34 = load i32, ptr %i1, align 4
  %add = add i32 %34, 1
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond = phi i32 [ %33, %cond.true31 ], [ %add, %cond.false32 ]
  store i32 %cond, ptr %i2, align 4
  %35 = load ptr, ptr %p, align 8
  %a34 = getelementptr inbounds %struct.Percentile, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %a34, align 8
  %37 = load i32, ptr %i1, align 4
  %idxprom35 = zext i32 %37 to i64
  %arrayidx36 = getelementptr inbounds double, ptr %36, i64 %idxprom35
  %38 = load double, ptr %arrayidx36, align 8
  store double %38, ptr %v1, align 8
  %39 = load ptr, ptr %p, align 8
  %a37 = getelementptr inbounds %struct.Percentile, ptr %39, i32 0, i32 6
  %40 = load ptr, ptr %a37, align 8
  %41 = load i32, ptr %i2, align 4
  %idxprom38 = zext i32 %41 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %40, i64 %idxprom38
  %42 = load double, ptr %arrayidx39, align 8
  store double %42, ptr %v2, align 8
  %43 = load double, ptr %v1, align 8
  %44 = load double, ptr %v2, align 8
  %45 = load double, ptr %v1, align 8
  %sub40 = fsub double %44, %45
  %46 = load double, ptr %ix, align 8
  %47 = load i32, ptr %i1, align 4
  %conv41 = uitofp i32 %47 to double
  %sub42 = fsub double %46, %conv41
  %48 = call double @llvm.fmuladd.f64(double %sub40, double %sub42, double %43)
  store double %48, ptr %vx, align 8
  br label %if.end44

if.end44:                                         ; preds = %cond.end33, %if.then22
  %49 = load ptr, ptr %pCtx.addr, align 8
  %50 = load double, ptr %vx, align 8
  call void @sqlite3_result_double(ptr noundef %49, double noundef %50)
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end4
  %51 = load i32, ptr %bIsFinal.addr, align 4
  %tobool46 = icmp ne i32 %51, 0
  br i1 %tobool46, label %if.then47, label %if.else50

if.then47:                                        ; preds = %if.end45
  %52 = load ptr, ptr %p, align 8
  %a48 = getelementptr inbounds %struct.Percentile, ptr %52, i32 0, i32 6
  %53 = load ptr, ptr %a48, align 8
  call void @sqlite3_free(ptr noundef %53)
  %54 = load ptr, ptr %p, align 8
  %55 = load ptr, ptr %p, align 8
  %56 = call i64 @llvm.objectsize.i64.p0(ptr %55, i1 false, i1 true, i1 false)
  %call49 = call ptr @__memset_chk(ptr noundef %54, i32 noundef 0, i64 noundef 32, i64 noundef %56) #8
  br label %if.end51

if.else50:                                        ; preds = %if.end45
  %57 = load ptr, ptr %p, align 8
  %bKeepSorted = getelementptr inbounds %struct.Percentile, ptr %57, i32 0, i32 3
  store i8 1, ptr %bKeepSorted, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then, %if.then3, %if.else50, %if.then47
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @percentSort(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %iLt = alloca i32, align 4
  %iGt = alloca i32, align 4
  %i = alloca i32, align 4
  %rPivot = alloca double, align 8
  %ttt = alloca double, align 8
  %ttt20 = alloca double, align 8
  %ttt33 = alloca double, align 8
  %ttt55 = alloca double, align 8
  %ttt76 = alloca double, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end107, %entry
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp uge i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %a.addr, align 8
  %arrayidx = getelementptr inbounds double, ptr %1, i64 0
  %2 = load double, ptr %arrayidx, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load i32, ptr %n.addr, align 4
  %sub = sub i32 %4, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx1 = getelementptr inbounds double, ptr %3, i64 %idxprom
  %5 = load double, ptr %arrayidx1, align 8
  %cmp2 = fcmp ogt double %2, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, ptr %6, i64 0
  %7 = load double, ptr %arrayidx3, align 8
  store double %7, ptr %ttt, align 8
  %8 = load ptr, ptr %a.addr, align 8
  %9 = load i32, ptr %n.addr, align 4
  %sub4 = sub i32 %9, 1
  %idxprom5 = zext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds double, ptr %8, i64 %idxprom5
  %10 = load double, ptr %arrayidx6, align 8
  %11 = load ptr, ptr %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, ptr %11, i64 0
  store double %10, ptr %arrayidx7, align 8
  %12 = load double, ptr %ttt, align 8
  %13 = load ptr, ptr %a.addr, align 8
  %14 = load i32, ptr %n.addr, align 4
  %sub8 = sub i32 %14, 1
  %idxprom9 = zext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %13, i64 %idxprom9
  store double %12, ptr %arrayidx10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = load i32, ptr %n.addr, align 4
  %cmp11 = icmp eq i32 %15, 2
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  br label %while.end

if.end13:                                         ; preds = %if.end
  %16 = load i32, ptr %n.addr, align 4
  %sub14 = sub i32 %16, 1
  store i32 %sub14, ptr %iGt, align 4
  %17 = load i32, ptr %n.addr, align 4
  %div = udiv i32 %17, 2
  store i32 %div, ptr %i, align 4
  %18 = load ptr, ptr %a.addr, align 8
  %arrayidx15 = getelementptr inbounds double, ptr %18, i64 0
  %19 = load double, ptr %arrayidx15, align 8
  %20 = load ptr, ptr %a.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds double, ptr %20, i64 %idxprom16
  %22 = load double, ptr %arrayidx17, align 8
  %cmp18 = fcmp ogt double %19, %22
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end13
  %23 = load ptr, ptr %a.addr, align 8
  %arrayidx21 = getelementptr inbounds double, ptr %23, i64 0
  %24 = load double, ptr %arrayidx21, align 8
  store double %24, ptr %ttt20, align 8
  %25 = load ptr, ptr %a.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds double, ptr %25, i64 %idxprom22
  %27 = load double, ptr %arrayidx23, align 8
  %28 = load ptr, ptr %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double, ptr %28, i64 0
  store double %27, ptr %arrayidx24, align 8
  %29 = load double, ptr %ttt20, align 8
  %30 = load ptr, ptr %a.addr, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %30, i64 %idxprom25
  store double %29, ptr %arrayidx26, align 8
  br label %if.end43

if.else:                                          ; preds = %if.end13
  %32 = load ptr, ptr %a.addr, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %32, i64 %idxprom27
  %34 = load double, ptr %arrayidx28, align 8
  %35 = load ptr, ptr %a.addr, align 8
  %36 = load i32, ptr %iGt, align 4
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %35, i64 %idxprom29
  %37 = load double, ptr %arrayidx30, align 8
  %cmp31 = fcmp ogt double %34, %37
  br i1 %cmp31, label %if.then32, label %if.end42

if.then32:                                        ; preds = %if.else
  %38 = load ptr, ptr %a.addr, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %39 to i64
  %arrayidx35 = getelementptr inbounds double, ptr %38, i64 %idxprom34
  %40 = load double, ptr %arrayidx35, align 8
  store double %40, ptr %ttt33, align 8
  %41 = load ptr, ptr %a.addr, align 8
  %42 = load i32, ptr %iGt, align 4
  %idxprom36 = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %41, i64 %idxprom36
  %43 = load double, ptr %arrayidx37, align 8
  %44 = load ptr, ptr %a.addr, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %45 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %44, i64 %idxprom38
  store double %43, ptr %arrayidx39, align 8
  %46 = load double, ptr %ttt33, align 8
  %47 = load ptr, ptr %a.addr, align 8
  %48 = load i32, ptr %iGt, align 4
  %idxprom40 = sext i32 %48 to i64
  %arrayidx41 = getelementptr inbounds double, ptr %47, i64 %idxprom40
  store double %46, ptr %arrayidx41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then32, %if.else
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then19
  %49 = load i32, ptr %n.addr, align 4
  %cmp44 = icmp eq i32 %49, 3
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  br label %while.end

if.end46:                                         ; preds = %if.end43
  %50 = load ptr, ptr %a.addr, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %51 to i64
  %arrayidx48 = getelementptr inbounds double, ptr %50, i64 %idxprom47
  %52 = load double, ptr %arrayidx48, align 8
  store double %52, ptr %rPivot, align 8
  store i32 1, ptr %i, align 4
  store i32 1, ptr %iLt, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond89, %if.end46
  %53 = load ptr, ptr %a.addr, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %54 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %53, i64 %idxprom49
  %55 = load double, ptr %arrayidx50, align 8
  %56 = load double, ptr %rPivot, align 8
  %cmp51 = fcmp olt double %55, %56
  br i1 %cmp51, label %if.then52, label %if.else66

if.then52:                                        ; preds = %do.body
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %iLt, align 4
  %cmp53 = icmp sgt i32 %57, %58
  br i1 %cmp53, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.then52
  %59 = load ptr, ptr %a.addr, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %60 to i64
  %arrayidx57 = getelementptr inbounds double, ptr %59, i64 %idxprom56
  %61 = load double, ptr %arrayidx57, align 8
  store double %61, ptr %ttt55, align 8
  %62 = load ptr, ptr %a.addr, align 8
  %63 = load i32, ptr %iLt, align 4
  %idxprom58 = sext i32 %63 to i64
  %arrayidx59 = getelementptr inbounds double, ptr %62, i64 %idxprom58
  %64 = load double, ptr %arrayidx59, align 8
  %65 = load ptr, ptr %a.addr, align 8
  %66 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %66 to i64
  %arrayidx61 = getelementptr inbounds double, ptr %65, i64 %idxprom60
  store double %64, ptr %arrayidx61, align 8
  %67 = load double, ptr %ttt55, align 8
  %68 = load ptr, ptr %a.addr, align 8
  %69 = load i32, ptr %iLt, align 4
  %idxprom62 = sext i32 %69 to i64
  %arrayidx63 = getelementptr inbounds double, ptr %68, i64 %idxprom62
  store double %67, ptr %arrayidx63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then54, %if.then52
  %70 = load i32, ptr %iLt, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, ptr %iLt, align 4
  %71 = load i32, ptr %i, align 4
  %inc65 = add nsw i32 %71, 1
  store i32 %inc65, ptr %i, align 4
  br label %if.end88

if.else66:                                        ; preds = %do.body
  %72 = load ptr, ptr %a.addr, align 8
  %73 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %73 to i64
  %arrayidx68 = getelementptr inbounds double, ptr %72, i64 %idxprom67
  %74 = load double, ptr %arrayidx68, align 8
  %75 = load double, ptr %rPivot, align 8
  %cmp69 = fcmp ogt double %74, %75
  br i1 %cmp69, label %if.then70, label %if.else85

if.then70:                                        ; preds = %if.else66
  br label %do.body71

do.body71:                                        ; preds = %land.end, %if.then70
  %76 = load i32, ptr %iGt, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, ptr %iGt, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body71
  %77 = load i32, ptr %iGt, align 4
  %78 = load i32, ptr %i, align 4
  %cmp72 = icmp sgt i32 %77, %78
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %79 = load ptr, ptr %a.addr, align 8
  %80 = load i32, ptr %iGt, align 4
  %idxprom73 = sext i32 %80 to i64
  %arrayidx74 = getelementptr inbounds double, ptr %79, i64 %idxprom73
  %81 = load double, ptr %arrayidx74, align 8
  %82 = load double, ptr %rPivot, align 8
  %cmp75 = fcmp ogt double %81, %82
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %83 = phi i1 [ false, %do.cond ], [ %cmp75, %land.rhs ]
  br i1 %83, label %do.body71, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %land.end
  %84 = load ptr, ptr %a.addr, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom77 = sext i32 %85 to i64
  %arrayidx78 = getelementptr inbounds double, ptr %84, i64 %idxprom77
  %86 = load double, ptr %arrayidx78, align 8
  store double %86, ptr %ttt76, align 8
  %87 = load ptr, ptr %a.addr, align 8
  %88 = load i32, ptr %iGt, align 4
  %idxprom79 = sext i32 %88 to i64
  %arrayidx80 = getelementptr inbounds double, ptr %87, i64 %idxprom79
  %89 = load double, ptr %arrayidx80, align 8
  %90 = load ptr, ptr %a.addr, align 8
  %91 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %91 to i64
  %arrayidx82 = getelementptr inbounds double, ptr %90, i64 %idxprom81
  store double %89, ptr %arrayidx82, align 8
  %92 = load double, ptr %ttt76, align 8
  %93 = load ptr, ptr %a.addr, align 8
  %94 = load i32, ptr %iGt, align 4
  %idxprom83 = sext i32 %94 to i64
  %arrayidx84 = getelementptr inbounds double, ptr %93, i64 %idxprom83
  store double %92, ptr %arrayidx84, align 8
  br label %if.end87

if.else85:                                        ; preds = %if.else66
  %95 = load i32, ptr %i, align 4
  %inc86 = add nsw i32 %95, 1
  store i32 %inc86, ptr %i, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else85, %do.end
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end64
  br label %do.cond89

do.cond89:                                        ; preds = %if.end88
  %96 = load i32, ptr %i, align 4
  %97 = load i32, ptr %iGt, align 4
  %cmp90 = icmp slt i32 %96, %97
  br i1 %cmp90, label %do.body, label %do.end91, !llvm.loop !10

do.end91:                                         ; preds = %do.cond89
  %98 = load i32, ptr %iLt, align 4
  %99 = load i32, ptr %n.addr, align 4
  %div92 = udiv i32 %99, 2
  %cmp93 = icmp ugt i32 %98, %div92
  br i1 %cmp93, label %if.then94, label %if.else100

if.then94:                                        ; preds = %do.end91
  %100 = load i32, ptr %n.addr, align 4
  %101 = load i32, ptr %iGt, align 4
  %sub95 = sub i32 %100, %101
  %cmp96 = icmp uge i32 %sub95, 2
  br i1 %cmp96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.then94
  %102 = load ptr, ptr %a.addr, align 8
  %103 = load i32, ptr %iGt, align 4
  %idx.ext = sext i32 %103 to i64
  %add.ptr = getelementptr inbounds double, ptr %102, i64 %idx.ext
  %104 = load i32, ptr %n.addr, align 4
  %105 = load i32, ptr %iGt, align 4
  %sub98 = sub i32 %104, %105
  call void @percentSort(ptr noundef %add.ptr, i32 noundef %sub98)
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.then94
  %106 = load i32, ptr %iLt, align 4
  store i32 %106, ptr %n.addr, align 4
  br label %if.end107

if.else100:                                       ; preds = %do.end91
  %107 = load i32, ptr %iLt, align 4
  %cmp101 = icmp sge i32 %107, 2
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.else100
  %108 = load ptr, ptr %a.addr, align 8
  %109 = load i32, ptr %iLt, align 4
  call void @percentSort(ptr noundef %108, i32 noundef %109)
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.else100
  %110 = load i32, ptr %iGt, align 4
  %111 = load ptr, ptr %a.addr, align 8
  %idx.ext104 = sext i32 %110 to i64
  %add.ptr105 = getelementptr inbounds double, ptr %111, i64 %idx.ext104
  store ptr %add.ptr105, ptr %a.addr, align 8
  %112 = load i32, ptr %iGt, align 4
  %113 = load i32, ptr %n.addr, align 4
  %sub106 = sub i32 %113, %112
  store i32 %sub106, ptr %n.addr, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.end103, %if.end99
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %if.then12, %if.then45, %while.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @sqlite3_result_double(ptr noundef, double noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn }
attributes #7 = { cold noreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_percentile_0(double noundef %a, double noundef %b)  alwaysinline#0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8
  store double %b, ptr %b.addr, align 8
  %0 = load double, ptr %b.addr, align 8
  %1 = load double, ptr %a.addr, align 8
  %sub = fsub double %1, %0
  store double %sub, ptr %a.addr, align 8
  %2 = load double, ptr %a.addr, align 8
  %cmp = fcmp oge double %2, -1.000000e-03
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load double, ptr %a.addr, align 8
  %cmp1 = fcmp ole double %3, 1.000000e-03
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_percentile_1(double noundef %r)  alwaysinline#0 {
entry:
  %r.addr = alloca double, align 8
  %u = alloca i64, align 8
  store double %r, ptr %r.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %u, ptr align 8 %r.addr, i64 8, i1 false)
  %0 = load i64, ptr %u, align 8
  %shr = lshr i64 %0, 52
  %and = and i64 %shr, 2047
  %cmp = icmp eq i64 %and, 2047
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_percentile_2(double noundef %r)  alwaysinline#0 {
entry:
  %r.addr = alloca double, align 8
  %u = alloca i64, align 8
  store double %r, ptr %r.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %u, ptr align 8 %r.addr, i64 8, i1 false)
  %0 = load i64, ptr %u, align 8
  %shr = lshr i64 %0, 52
  %and = and i64 %shr, 2047
  %cmp = icmp eq i64 %and, 2047
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

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
