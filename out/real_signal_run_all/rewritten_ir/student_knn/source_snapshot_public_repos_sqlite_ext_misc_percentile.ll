; ModuleID = './out/real_signal_run_all/rewritten_ir/student_knn/source_snapshot_public_repos_sqlite_ext_misc_percentile.prepared.ll'
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
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 0, ptr %rc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp ult i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.PercentileFunc], ptr @aPercentFunc, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %idxprom2 = zext i32 %1 to i64
  %nArg = getelementptr inbounds [4 x %struct.PercentileFunc], ptr @aPercentFunc, i64 0, i64 %idxprom2, i32 1
  %3 = load i8, ptr %nArg, align 8
  %conv4 = sext i8 %3 to i32
  %4 = load i32, ptr %i, align 4
  %idxprom5 = zext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [4 x %struct.PercentileFunc], ptr @aPercentFunc, i64 0, i64 %idxprom5
  %call = call i32 @sqlite3_create_window_function(ptr noundef %0, ptr noundef %2, i32 noundef %conv4, i32 noundef 35651585, ptr noundef nonnull %arrayidx6, ptr noundef nonnull @percentStep, ptr noundef nonnull @percentFinal, ptr noundef nonnull @percentValue, ptr noundef nonnull @percentInverse, ptr noundef null) #7
  store i32 %call, ptr %rc, align 4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add i32 %5, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.body, %for.cond
  %6 = load i32, ptr %rc, align 4
  ret i32 %6
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
  %cmp = icmp eq i32 %argc, 2
  %0 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp eq i32 %0, 1
  %1 = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.percentStep, ptr noundef nonnull @.str.4, i32 noundef 236, ptr noundef nonnull @.str.5) #8
  unreachable

cond.end:                                         ; preds = %entry
  %2 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store double 5.000000e-01, ptr %rPct, align 8
  br label %if.end20

if.else:                                          ; preds = %cond.end
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_user_data(ptr noundef %3) #7
  store ptr %call, ptr %pFunc, align 8
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx, align 8
  %call4 = call i32 @sqlite3_value_numeric_type(ptr noundef %5) #7
  store i32 %call4, ptr %eType, align 4
  %arrayidx5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %arrayidx5, align 8
  %call6 = call double @sqlite3_value_double(ptr noundef %6) #7
  %7 = load ptr, ptr %pFunc, align 8
  %mxFrac = getelementptr inbounds %struct.PercentileFunc, ptr %7, i64 0, i32 2
  %8 = load i8, ptr %mxFrac, align 1
  %conv7 = sitofp i8 %8 to double
  %div = fdiv double %call6, %conv7
  store double %div, ptr %rPct, align 8
  %9 = load i32, ptr %eType, align 4
  %cmp8.not = icmp eq i32 %9, 1
  %10 = load i32, ptr %eType, align 4
  %cmp10.not = icmp eq i32 %10, 2
  %or.cond = select i1 %cmp8.not, i1 true, i1 %cmp10.not
  %or.cond.not = xor i1 %or.cond, true
  %11 = load double, ptr %rPct, align 8
  %cmp12 = fcmp olt double %11, 0.000000e+00
  %or.cond1 = select i1 %or.cond.not, i1 true, i1 %cmp12
  %12 = load double, ptr %rPct, align 8
  %cmp15 = fcmp ogt double %12, 1.000000e+00
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp15
  br i1 %or.cond2, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.else
  %13 = load ptr, ptr %pCtx.addr, align 8
  %14 = load ptr, ptr %pFunc, align 8
  %mxFrac18 = getelementptr inbounds %struct.PercentileFunc, ptr %14, i64 0, i32 2
  %15 = load i8, ptr %mxFrac18, align 1
  %conv19 = sitofp i8 %15 to double
  call void (ptr, ptr, ...) @percentError(ptr noundef %13, ptr noundef nonnull @.str.6, double noundef %conv19)
  br label %if.end135

if.end20:                                         ; preds = %if.else, %if.then
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call21 = call ptr @sqlite3_aggregate_context(ptr noundef %16, i32 noundef 32) #7
  store ptr %call21, ptr %p, align 8
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %if.end135, label %if.end25

if.end25:                                         ; preds = %if.end20
  %17 = load ptr, ptr %p, align 8
  %bPctValid = getelementptr inbounds %struct.Percentile, ptr %17, i64 0, i32 4
  %18 = load i8, ptr %bPctValid, align 2
  %tobool26.not = icmp eq i8 %18, 0
  br i1 %tobool26.not, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.end25
  %19 = load double, ptr %rPct, align 8
  %20 = load ptr, ptr %p, align 8
  %rPct28 = getelementptr inbounds %struct.Percentile, ptr %20, i64 0, i32 5
  store double %19, ptr %rPct28, align 8
  %bPctValid29 = getelementptr inbounds %struct.Percentile, ptr %20, i64 0, i32 4
  store i8 1, ptr %bPctValid29, align 2
  br label %if.end36

if.else30:                                        ; preds = %if.end25
  %21 = load ptr, ptr %p, align 8
  %rPct31 = getelementptr inbounds %struct.Percentile, ptr %21, i64 0, i32 5
  %22 = load double, ptr %rPct31, align 8
  %23 = load double, ptr %rPct, align 8
  %call32 = call i32 @percentSameValue(double noundef %22, double noundef %23)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.else30
  %24 = load ptr, ptr %pCtx.addr, align 8
  call void (ptr, ptr, ...) @percentError(ptr noundef %24, ptr noundef nonnull @.str.7)
  br label %if.end135

if.end36:                                         ; preds = %if.else30, %if.then27
  %25 = load ptr, ptr %argv.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %call38 = call i32 @sqlite3_value_type(ptr noundef %26) #7
  store i32 %call38, ptr %eType, align 4
  %cmp39 = icmp eq i32 %call38, 5
  br i1 %cmp39, label %if.end135, label %if.end42

if.end42:                                         ; preds = %if.end36
  %27 = load i32, ptr %eType, align 4
  %cmp43.not = icmp eq i32 %27, 1
  %28 = load i32, ptr %eType, align 4
  %cmp46.not = icmp eq i32 %28, 2
  %or.cond3 = select i1 %cmp43.not, i1 true, i1 %cmp46.not
  br i1 %or.cond3, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end42
  %29 = load ptr, ptr %pCtx.addr, align 8
  call void (ptr, ptr, ...) @percentError(ptr noundef %29, ptr noundef nonnull @.str.8)
  br label %if.end135

if.end49:                                         ; preds = %if.end42
  %30 = load ptr, ptr %argv.addr, align 8
  %31 = load ptr, ptr %30, align 8
  %call51 = call double @sqlite3_value_double(ptr noundef %31) #7
  store double %call51, ptr %y, align 8
  %call52 = call i32 @percentIsInfinity(double noundef %call51)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end49
  %32 = load ptr, ptr %pCtx.addr, align 8
  call void (ptr, ptr, ...) @percentError(ptr noundef %32, ptr noundef nonnull @.str.9)
  br label %if.end135

if.end55:                                         ; preds = %if.end49
  %33 = load ptr, ptr %p, align 8
  %nUsed = getelementptr inbounds %struct.Percentile, ptr %33, i64 0, i32 1
  %34 = load i32, ptr %nUsed, align 4
  %35 = load i32, ptr %33, align 8
  %cmp56.not = icmp ult i32 %34, %35
  br i1 %cmp56.not, label %if.end72, label %if.then58

if.then58:                                        ; preds = %if.end55
  %36 = load ptr, ptr %p, align 8
  %37 = load i32, ptr %36, align 8
  %mul = shl i32 %37, 1
  %add = add i32 %mul, 250
  store i32 %add, ptr %n, align 4
  %a60 = getelementptr inbounds %struct.Percentile, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %a60, align 8
  %conv61 = zext i32 %add to i64
  %mul62 = shl nuw nsw i64 %conv61, 3
  %call63 = call ptr @sqlite3_realloc64(ptr noundef %38, i64 noundef %mul62) #7
  store ptr %call63, ptr %a, align 8
  %cmp64 = icmp eq ptr %call63, null
  br i1 %cmp64, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.then58
  %39 = load ptr, ptr %p, align 8
  %a67 = getelementptr inbounds %struct.Percentile, ptr %39, i64 0, i32 6
  %40 = load ptr, ptr %a67, align 8
  call void @sqlite3_free(ptr noundef %40) #7
  %41 = call i64 @llvm.objectsize.i64.p0(ptr %39, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memset_chk(ptr noundef %39, i32 noundef 0, i64 noundef 32, i64 noundef %41) #7
  %42 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %42) #7
  br label %if.end135

if.end69:                                         ; preds = %if.then58
  %43 = load i32, ptr %n, align 4
  %44 = load ptr, ptr %p, align 8
  store i32 %43, ptr %44, align 8
  %45 = load ptr, ptr %a, align 8
  %a71 = getelementptr inbounds %struct.Percentile, ptr %44, i64 0, i32 6
  store ptr %45, ptr %a71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.end69, %if.end55
  %46 = load ptr, ptr %p, align 8
  %nUsed73 = getelementptr inbounds %struct.Percentile, ptr %46, i64 0, i32 1
  %47 = load i32, ptr %nUsed73, align 4
  %cmp74 = icmp eq i32 %47, 0
  br i1 %cmp74, label %if.then76, label %if.else80

if.then76:                                        ; preds = %if.end72
  %48 = load double, ptr %y, align 8
  %49 = load ptr, ptr %p, align 8
  %a77 = getelementptr inbounds %struct.Percentile, ptr %49, i64 0, i32 6
  %50 = load ptr, ptr %a77, align 8
  %nUsed78 = getelementptr inbounds %struct.Percentile, ptr %49, i64 0, i32 1
  %51 = load i32, ptr %nUsed78, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %nUsed78, align 4
  %idxprom = zext i32 %51 to i64
  %arrayidx79 = getelementptr inbounds double, ptr %50, i64 %idxprom
  store double %48, ptr %arrayidx79, align 8
  %52 = load ptr, ptr %p, align 8
  %bSorted = getelementptr inbounds %struct.Percentile, ptr %52, i64 0, i32 2
  store i8 1, ptr %bSorted, align 8
  br label %if.end135

if.else80:                                        ; preds = %if.end72
  %53 = load ptr, ptr %p, align 8
  %bSorted81 = getelementptr inbounds %struct.Percentile, ptr %53, i64 0, i32 2
  %54 = load i8, ptr %bSorted81, align 8
  %tobool82.not = icmp eq i8 %54, 0
  br i1 %tobool82.not, label %if.then90, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %if.else80
  %55 = load double, ptr %y, align 8
  %56 = load ptr, ptr %p, align 8
  %a84 = getelementptr inbounds %struct.Percentile, ptr %56, i64 0, i32 6
  %57 = load ptr, ptr %a84, align 8
  %nUsed85 = getelementptr inbounds %struct.Percentile, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %nUsed85, align 4
  %sub = add i32 %58, -1
  %idxprom86 = zext i32 %sub to i64
  %arrayidx87 = getelementptr inbounds double, ptr %57, i64 %idxprom86
  %59 = load double, ptr %arrayidx87, align 8
  %cmp88 = fcmp ult double %55, %59
  br i1 %cmp88, label %if.else96, label %if.then90

if.then90:                                        ; preds = %lor.lhs.false83, %if.else80
  %60 = load double, ptr %y, align 8
  %61 = load ptr, ptr %p, align 8
  %a91 = getelementptr inbounds %struct.Percentile, ptr %61, i64 0, i32 6
  %62 = load ptr, ptr %a91, align 8
  %nUsed92 = getelementptr inbounds %struct.Percentile, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %nUsed92, align 4
  %inc93 = add i32 %63, 1
  store i32 %inc93, ptr %nUsed92, align 4
  %idxprom94 = zext i32 %63 to i64
  %arrayidx95 = getelementptr inbounds double, ptr %62, i64 %idxprom94
  store double %60, ptr %arrayidx95, align 8
  br label %if.end135

if.else96:                                        ; preds = %lor.lhs.false83
  %64 = load ptr, ptr %p, align 8
  %bKeepSorted = getelementptr inbounds %struct.Percentile, ptr %64, i64 0, i32 3
  %65 = load i8, ptr %bKeepSorted, align 1
  %tobool97.not = icmp eq i8 %65, 0
  br i1 %tobool97.not, label %if.else126, label %if.then98

if.then98:                                        ; preds = %if.else96
  %66 = load ptr, ptr %p, align 8
  %67 = load double, ptr %y, align 8
  %call99 = call i32 @percentBinarySearch(ptr noundef %66, double noundef %67, i32 noundef 0)
  store i32 %call99, ptr %i, align 4
  %nUsed100 = getelementptr inbounds %struct.Percentile, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %nUsed100, align 4
  %cmp101 = icmp slt i32 %call99, %68
  br i1 %cmp101, label %if.then103, label %if.end120

if.then103:                                       ; preds = %if.then98
  %69 = load ptr, ptr %p, align 8
  %a104 = getelementptr inbounds %struct.Percentile, ptr %69, i64 0, i32 6
  %70 = load ptr, ptr %a104, align 8
  %71 = load i32, ptr %i, align 4
  %add105 = add nsw i32 %71, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds double, ptr %70, i64 %idxprom106
  %72 = load ptr, ptr %p, align 8
  %a108 = getelementptr inbounds %struct.Percentile, ptr %72, i64 0, i32 6
  %73 = load ptr, ptr %a108, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom109 = sext i32 %74 to i64
  %arrayidx110 = getelementptr inbounds double, ptr %73, i64 %idxprom109
  %nUsed111 = getelementptr inbounds %struct.Percentile, ptr %72, i64 0, i32 1
  %75 = load i32, ptr %nUsed111, align 4
  %sub112 = sub i32 %75, %74
  %conv113 = zext i32 %sub112 to i64
  %mul114 = shl nuw nsw i64 %conv113, 3
  %76 = load ptr, ptr %p, align 8
  %a115 = getelementptr inbounds %struct.Percentile, ptr %76, i64 0, i32 6
  %77 = load ptr, ptr %a115, align 8
  %78 = load i32, ptr %i, align 4
  %add116 = add nsw i32 %78, 1
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds double, ptr %77, i64 %idxprom117
  %79 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx118, i1 false, i1 true, i1 false)
  %call119 = call ptr @__memmove_chk(ptr noundef %arrayidx107, ptr noundef %arrayidx110, i64 noundef %mul114, i64 noundef %79) #7
  br label %if.end120

if.end120:                                        ; preds = %if.then103, %if.then98
  %80 = load double, ptr %y, align 8
  %81 = load ptr, ptr %p, align 8
  %a121 = getelementptr inbounds %struct.Percentile, ptr %81, i64 0, i32 6
  %82 = load ptr, ptr %a121, align 8
  %83 = load i32, ptr %i, align 4
  %idxprom122 = sext i32 %83 to i64
  %arrayidx123 = getelementptr inbounds double, ptr %82, i64 %idxprom122
  store double %80, ptr %arrayidx123, align 8
  %84 = load ptr, ptr %p, align 8
  %nUsed124 = getelementptr inbounds %struct.Percentile, ptr %84, i64 0, i32 1
  %85 = load i32, ptr %nUsed124, align 4
  %inc125 = add i32 %85, 1
  store i32 %inc125, ptr %nUsed124, align 4
  br label %if.end135

if.else126:                                       ; preds = %if.else96
  %86 = load double, ptr %y, align 8
  %87 = load ptr, ptr %p, align 8
  %a127 = getelementptr inbounds %struct.Percentile, ptr %87, i64 0, i32 6
  %88 = load ptr, ptr %a127, align 8
  %nUsed128 = getelementptr inbounds %struct.Percentile, ptr %87, i64 0, i32 1
  %89 = load i32, ptr %nUsed128, align 4
  %inc129 = add i32 %89, 1
  store i32 %inc129, ptr %nUsed128, align 4
  %idxprom130 = zext i32 %89 to i64
  %arrayidx131 = getelementptr inbounds double, ptr %88, i64 %idxprom130
  store double %86, ptr %arrayidx131, align 8
  %90 = load ptr, ptr %p, align 8
  %bSorted132 = getelementptr inbounds %struct.Percentile, ptr %90, i64 0, i32 2
  store i8 0, ptr %bSorted132, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then90, %if.else126, %if.end120, %if.end36, %if.end20, %if.then76, %if.then66, %if.then54, %if.then48, %if.then34, %if.then17
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @percentFinal(ptr noundef %pCtx) #0 {
entry:
  call void @percentCompute(ptr noundef %pCtx, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @percentValue(ptr noundef %pCtx) #0 {
entry:
  call void @percentCompute(ptr noundef %pCtx, i32 noundef 0)
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
  %cmp = icmp eq i32 %argc, 2
  %0 = load i32, ptr %argc.addr, align 4
  %cmp1.not = icmp eq i32 %0, 1
  %1 = select i1 %cmp, i1 true, i1 %cmp1.not
  br i1 %1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.percentInverse, ptr noundef nonnull @.str.4, i32 noundef 394, ptr noundef nonnull @.str.5) #8
  unreachable

cond.end:                                         ; preds = %entry
  %2 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %2, i32 noundef 32) #7
  store ptr %call, ptr %p, align 8
  %cmp2.not = icmp eq ptr %call, null
  br i1 %cmp2.not, label %cond.true8, label %cond.end10

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.percentInverse, ptr noundef nonnull @.str.4, i32 noundef 398, ptr noundef nonnull @.str.11) #8
  unreachable

cond.end10:                                       ; preds = %cond.end
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %call11 = call i32 @sqlite3_value_type(ptr noundef %4) #7
  store i32 %call11, ptr %eType, align 4
  %cmp12 = icmp eq i32 %call11, 5
  br i1 %cmp12, label %if.end63, label %if.end

if.end:                                           ; preds = %cond.end10
  %5 = load i32, ptr %eType, align 4
  %cmp14.not = icmp eq i32 %5, 1
  %6 = load i32, ptr %eType, align 4
  %cmp16.not = icmp eq i32 %6, 2
  %or.cond = select i1 %cmp14.not, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %if.end19, label %if.end63

if.end19:                                         ; preds = %if.end
  %7 = load ptr, ptr %argv.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %call21 = call double @sqlite3_value_double(ptr noundef %8) #7
  store double %call21, ptr %y, align 8
  %call22 = call i32 @percentIsInfinity(double noundef %call21)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end63

if.end25:                                         ; preds = %if.end19
  %9 = load ptr, ptr %p, align 8
  %bSorted = getelementptr inbounds %struct.Percentile, ptr %9, i64 0, i32 2
  %10 = load i8, ptr %bSorted, align 8
  %cmp27 = icmp eq i8 %10, 0
  br i1 %cmp27, label %if.then29, label %if.end41

if.then29:                                        ; preds = %if.end25
  %11 = load ptr, ptr %p, align 8
  %nUsed = getelementptr inbounds %struct.Percentile, ptr %11, i64 0, i32 1
  %12 = load i32, ptr %nUsed, align 4
  %cmp30 = icmp ult i32 %12, 2
  br i1 %cmp30, label %cond.true36, label %cond.end38

cond.true36:                                      ; preds = %if.then29
  call void @__assert_rtn(ptr noundef nonnull @__func__.percentInverse, ptr noundef nonnull @.str.4, i32 noundef 416, ptr noundef nonnull @.str.10) #8
  unreachable

cond.end38:                                       ; preds = %if.then29
  %13 = load ptr, ptr %p, align 8
  %a = getelementptr inbounds %struct.Percentile, ptr %13, i64 0, i32 6
  %14 = load ptr, ptr %a, align 8
  %nUsed39 = getelementptr inbounds %struct.Percentile, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %nUsed39, align 4
  call void @percentSort(ptr noundef %14, i32 noundef %15)
  %bSorted40 = getelementptr inbounds %struct.Percentile, ptr %13, i64 0, i32 2
  store i8 1, ptr %bSorted40, align 8
  br label %if.end41

if.end41:                                         ; preds = %cond.end38, %if.end25
  %16 = load ptr, ptr %p, align 8
  %bKeepSorted = getelementptr inbounds %struct.Percentile, ptr %16, i64 0, i32 3
  store i8 1, ptr %bKeepSorted, align 1
  %17 = load double, ptr %y, align 8
  %call42 = call i32 @percentBinarySearch(ptr noundef %16, double noundef %17, i32 noundef 1)
  store i32 %call42, ptr %i, align 4
  %cmp43 = icmp sgt i32 %call42, -1
  br i1 %cmp43, label %if.then45, label %if.end63

if.then45:                                        ; preds = %if.end41
  %18 = load ptr, ptr %p, align 8
  %nUsed46 = getelementptr inbounds %struct.Percentile, ptr %18, i64 0, i32 1
  %19 = load i32, ptr %nUsed46, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %nUsed46, align 4
  %20 = load i32, ptr %i, align 4
  %cmp48 = icmp slt i32 %20, %dec
  br i1 %cmp48, label %if.then50, label %if.end63

if.then50:                                        ; preds = %if.then45
  %21 = load ptr, ptr %p, align 8
  %a51 = getelementptr inbounds %struct.Percentile, ptr %21, i64 0, i32 6
  %22 = load ptr, ptr %a51, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx52 = getelementptr inbounds double, ptr %22, i64 %idxprom
  %add = add nsw i32 %23, 1
  %idxprom54 = sext i32 %add to i64
  %arrayidx55 = getelementptr inbounds double, ptr %22, i64 %idxprom54
  %24 = load ptr, ptr %p, align 8
  %nUsed56 = getelementptr inbounds %struct.Percentile, ptr %24, i64 0, i32 1
  %25 = load i32, ptr %nUsed56, align 4
  %26 = load i32, ptr %i, align 4
  %sub = sub i32 %25, %26
  %conv57 = zext i32 %sub to i64
  %mul = shl nuw nsw i64 %conv57, 3
  %27 = load ptr, ptr %p, align 8
  %a58 = getelementptr inbounds %struct.Percentile, ptr %27, i64 0, i32 6
  %28 = load ptr, ptr %a58, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %29 to i64
  %arrayidx60 = getelementptr inbounds double, ptr %28, i64 %idxprom59
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx60, i1 false, i1 true, i1 false)
  %call61 = call ptr @__memmove_chk(ptr noundef %arrayidx52, ptr noundef %arrayidx55, i64 noundef %mul, i64 noundef %30) #7
  br label %if.end63

if.end63:                                         ; preds = %if.then45, %if.then50, %if.end19, %if.end, %cond.end10, %if.end41
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
  %pFunc = alloca ptr, align 8
  %zMsg1 = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_user_data(ptr noundef %pCtx) #7
  store ptr %call, ptr %pFunc, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call1 = call ptr @sqlite3_vmprintf(ptr noundef %zFormat, ptr noundef %0) #7
  store ptr %call1, ptr %zMsg1, align 8
  call void @llvm.va_end(ptr %ap)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %zMsg1, align 8
  %2 = load ptr, ptr %pFunc, align 8
  %3 = load ptr, ptr %2, align 8
  %call2 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef %1, ptr noundef %3) #7
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ null, %entry ]
  %4 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error(ptr noundef %4, ptr noundef %cond, i32 noundef -1) #7
  %5 = load ptr, ptr %zMsg1, align 8
  call void @sqlite3_free(ptr noundef %5) #7
  call void @sqlite3_free(ptr noundef %cond) #7
  ret void
}

declare ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @percentSameValue(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %sub = fsub double %a, %b
  store double %sub, ptr %a.addr, align 8
  %cmp = fcmp ult double %sub, -1.000000e-03
  %0 = load double, ptr %a.addr, align 8
  %cmp1 = fcmp ole double %0, 1.000000e-03
  %phi.cast = zext i1 %cmp1 to i32
  %1 = select i1 %cmp, i32 0, i32 %phi.cast
  ret i32 %1
}

declare i32 @sqlite3_value_type(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @percentIsInfinity(double noundef %r) #0 {
entry:
  %.cast = bitcast double %r to i64
  %0 = and i64 %.cast, 9218868437227405312
  %cmp = icmp eq i64 %0, 9218868437227405312
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
  %nUsed = getelementptr inbounds %struct.Percentile, ptr %p, i64 0, i32 1
  %0 = load i32, ptr %nUsed, align 4
  %sub = add i32 %0, -1
  store i32 %sub, ptr %iLast, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %1 = load i32, ptr %iLast, align 4
  %2 = load i32, ptr %iFirst, align 4
  %cmp.not = icmp slt i32 %1, %2
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %iFirst, align 4
  %4 = load i32, ptr %iLast, align 4
  %add = add nsw i32 %3, %4
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %iMid, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds %struct.Percentile, ptr %5, i64 0, i32 6
  %6 = load ptr, ptr %a, align 8
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom
  %7 = load double, ptr %arrayidx, align 8
  store double %7, ptr %x, align 8
  %8 = load double, ptr %y.addr, align 8
  %cmp1 = fcmp olt double %7, %8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %iMid, align 4
  %add2 = add nsw i32 %9, 1
  store i32 %add2, ptr %iFirst, align 4
  br label %if.end7

if.else:                                          ; preds = %while.body
  %10 = load double, ptr %x, align 8
  %11 = load double, ptr %y.addr, align 8
  %cmp3 = fcmp ogt double %10, %11
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %12 = load i32, ptr %iMid, align 4
  %sub5 = add nsw i32 %12, -1
  store i32 %sub5, ptr %iLast, align 4
  br label %if.end7

if.else6:                                         ; preds = %if.else
  %13 = load i32, ptr %iMid, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then4, %if.then
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %14 = load i32, ptr %bExact.addr, align 4
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %while.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.end
  %15 = load i32, ptr %iFirst, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.else6
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
  %ix = alloca double, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %bIsFinal, ptr %bIsFinal.addr, align 4
  %call = call ptr @sqlite3_user_data(ptr noundef %pCtx) #7
  store ptr %call, ptr %pFunc, align 8
  %call1 = call ptr @sqlite3_aggregate_context(ptr noundef %pCtx, i32 noundef 0) #7
  store ptr %call1, ptr %p, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.end51, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %p, align 8
  %a = getelementptr inbounds %struct.Percentile, ptr %0, i64 0, i32 6
  %1 = load ptr, ptr %a, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.end51, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %p, align 8
  %nUsed = getelementptr inbounds %struct.Percentile, ptr %2, i64 0, i32 1
  %3 = load i32, ptr %nUsed, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end45, label %if.then5

if.then5:                                         ; preds = %if.end4
  %4 = load ptr, ptr %p, align 8
  %bSorted = getelementptr inbounds %struct.Percentile, ptr %4, i64 0, i32 2
  %5 = load i8, ptr %bSorted, align 8
  %cmp6 = icmp eq i8 %5, 0
  br i1 %cmp6, label %if.then8, label %if.end17

if.then8:                                         ; preds = %if.then5
  %6 = load ptr, ptr %p, align 8
  %nUsed9 = getelementptr inbounds %struct.Percentile, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %nUsed9, align 4
  %cmp10 = icmp ult i32 %7, 2
  br i1 %cmp10, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then8
  call void @__assert_rtn(ptr noundef nonnull @__func__.percentCompute, ptr noundef nonnull @.str.4, i32 noundef 447, ptr noundef nonnull @.str.10) #8
  unreachable

cond.end:                                         ; preds = %if.then8
  %8 = load ptr, ptr %p, align 8
  %a14 = getelementptr inbounds %struct.Percentile, ptr %8, i64 0, i32 6
  %9 = load ptr, ptr %a14, align 8
  %nUsed15 = getelementptr inbounds %struct.Percentile, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %nUsed15, align 4
  call void @percentSort(ptr noundef %9, i32 noundef %10)
  %bSorted16 = getelementptr inbounds %struct.Percentile, ptr %8, i64 0, i32 2
  store i8 1, ptr %bSorted16, align 8
  br label %if.end17

if.end17:                                         ; preds = %cond.end, %if.then5
  %11 = load ptr, ptr %p, align 8
  %rPct = getelementptr inbounds %struct.Percentile, ptr %11, i64 0, i32 5
  %12 = load double, ptr %rPct, align 8
  %nUsed18 = getelementptr inbounds %struct.Percentile, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %nUsed18, align 4
  %sub = add i32 %13, -1
  %conv19 = uitofp i32 %sub to double
  %mul = fmul double %12, %conv19
  store double %mul, ptr %ix, align 8
  %conv20 = fptoui double %mul to i32
  store i32 %conv20, ptr %i1, align 4
  %14 = load ptr, ptr %pFunc, align 8
  %bDiscrete = getelementptr inbounds %struct.PercentileFunc, ptr %14, i64 0, i32 3
  %15 = load i8, ptr %bDiscrete, align 2
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end17
  %16 = load ptr, ptr %p, align 8
  %a23 = getelementptr inbounds %struct.Percentile, ptr %16, i64 0, i32 6
  %17 = load ptr, ptr %a23, align 8
  %18 = load i32, ptr %i1, align 4
  %idxprom = zext i32 %18 to i64
  %arrayidx = getelementptr inbounds double, ptr %17, i64 %idxprom
  %19 = load double, ptr %arrayidx, align 8
  br label %if.end44

if.else:                                          ; preds = %if.end17
  %20 = load double, ptr %ix, align 8
  %21 = load i32, ptr %i1, align 4
  %conv24 = uitofp i32 %21 to double
  %cmp25 = fcmp oeq double %20, %conv24
  br i1 %cmp25, label %cond.true31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %22 = load i32, ptr %i1, align 4
  %23 = load ptr, ptr %p, align 8
  %nUsed27 = getelementptr inbounds %struct.Percentile, ptr %23, i64 0, i32 1
  %24 = load i32, ptr %nUsed27, align 4
  %sub28 = add i32 %24, -1
  %cmp29 = icmp eq i32 %22, %sub28
  br i1 %cmp29, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %lor.lhs.false, %if.else
  %25 = load i32, ptr %i1, align 4
  br label %cond.end33

cond.false32:                                     ; preds = %lor.lhs.false
  %26 = load i32, ptr %i1, align 4
  %add = add i32 %26, 1
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond = phi i32 [ %25, %cond.true31 ], [ %add, %cond.false32 ]
  store i32 %cond, ptr %i2, align 4
  %27 = load ptr, ptr %p, align 8
  %a34 = getelementptr inbounds %struct.Percentile, ptr %27, i64 0, i32 6
  %28 = load ptr, ptr %a34, align 8
  %29 = load i32, ptr %i1, align 4
  %idxprom35 = zext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds double, ptr %28, i64 %idxprom35
  %30 = load double, ptr %arrayidx36, align 8
  store double %30, ptr %v1, align 8
  %31 = load ptr, ptr %p, align 8
  %a37 = getelementptr inbounds %struct.Percentile, ptr %31, i64 0, i32 6
  %32 = load ptr, ptr %a37, align 8
  %33 = load i32, ptr %i2, align 4
  %idxprom38 = zext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %32, i64 %idxprom38
  %34 = load double, ptr %arrayidx39, align 8
  %35 = load double, ptr %v1, align 8
  %sub40 = fsub double %34, %35
  %36 = load double, ptr %ix, align 8
  %37 = load i32, ptr %i1, align 4
  %conv41 = uitofp i32 %37 to double
  %sub42 = fsub double %36, %conv41
  %38 = call double @llvm.fmuladd.f64(double %sub40, double %sub42, double %35)
  br label %if.end44

if.end44:                                         ; preds = %cond.end33, %if.then22
  %storemerge = phi double [ %38, %cond.end33 ], [ %19, %if.then22 ]
  %39 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_double(ptr noundef %39, double noundef %storemerge) #7
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end4
  %40 = load i32, ptr %bIsFinal.addr, align 4
  %tobool46.not = icmp eq i32 %40, 0
  br i1 %tobool46.not, label %if.else50, label %if.then47

if.then47:                                        ; preds = %if.end45
  %41 = load ptr, ptr %p, align 8
  %a48 = getelementptr inbounds %struct.Percentile, ptr %41, i64 0, i32 6
  %42 = load ptr, ptr %a48, align 8
  call void @sqlite3_free(ptr noundef %42) #7
  %43 = call i64 @llvm.objectsize.i64.p0(ptr %41, i1 false, i1 true, i1 false)
  %call49 = call ptr @__memset_chk(ptr noundef %41, i32 noundef 0, i64 noundef 32, i64 noundef %43) #7
  br label %if.end51

if.else50:                                        ; preds = %if.end45
  %44 = load ptr, ptr %p, align 8
  %bKeepSorted = getelementptr inbounds %struct.Percentile, ptr %44, i64 0, i32 3
  store i8 1, ptr %bKeepSorted, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.end, %entry, %if.else50, %if.then47
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
  br label %while.cond

while.cond:                                       ; preds = %if.end107, %entry
  %storemerge3 = phi i32 [ %storemerge, %if.end107 ], [ %n, %entry ]
  store i32 %storemerge3, ptr %n.addr, align 4
  %cmp = icmp ugt i32 %storemerge3, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load double, ptr %0, align 8
  %2 = load i32, ptr %n.addr, align 4
  %sub = add i32 %2, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx1 = getelementptr inbounds double, ptr %0, i64 %idxprom
  %3 = load double, ptr %arrayidx1, align 8
  %cmp2 = fcmp ogt double %1, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %a.addr, align 8
  %5 = load double, ptr %4, align 8
  store double %5, ptr %ttt, align 8
  %6 = load i32, ptr %n.addr, align 4
  %sub4 = add i32 %6, -1
  %idxprom5 = zext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds double, ptr %4, i64 %idxprom5
  %7 = load double, ptr %arrayidx6, align 8
  %8 = load ptr, ptr %a.addr, align 8
  store double %7, ptr %8, align 8
  %9 = load double, ptr %ttt, align 8
  %10 = load i32, ptr %n.addr, align 4
  %sub8 = add i32 %10, -1
  %idxprom9 = zext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %8, i64 %idxprom9
  store double %9, ptr %arrayidx10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %11 = load i32, ptr %n.addr, align 4
  %cmp11 = icmp eq i32 %11, 2
  br i1 %cmp11, label %while.end, label %if.end13

if.end13:                                         ; preds = %if.end
  %12 = load i32, ptr %n.addr, align 4
  %sub14 = add i32 %12, -1
  store i32 %sub14, ptr %iGt, align 4
  %div1 = lshr i32 %12, 1
  store i32 %div1, ptr %i, align 4
  %13 = load ptr, ptr %a.addr, align 8
  %14 = load double, ptr %13, align 8
  %idxprom16 = zext i32 %div1 to i64
  %arrayidx17 = getelementptr inbounds double, ptr %13, i64 %idxprom16
  %15 = load double, ptr %arrayidx17, align 8
  %cmp18 = fcmp ogt double %14, %15
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end13
  %16 = load ptr, ptr %a.addr, align 8
  %17 = load double, ptr %16, align 8
  store double %17, ptr %ttt20, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds double, ptr %16, i64 %idxprom22
  %19 = load double, ptr %arrayidx23, align 8
  %20 = load ptr, ptr %a.addr, align 8
  store double %19, ptr %20, align 8
  %21 = load double, ptr %ttt20, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %20, i64 %idxprom25
  store double %21, ptr %arrayidx26, align 8
  br label %if.end43

if.else:                                          ; preds = %if.end13
  %23 = load ptr, ptr %a.addr, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %23, i64 %idxprom27
  %25 = load double, ptr %arrayidx28, align 8
  %26 = load i32, ptr %iGt, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %23, i64 %idxprom29
  %27 = load double, ptr %arrayidx30, align 8
  %cmp31 = fcmp ogt double %25, %27
  br i1 %cmp31, label %if.then32, label %if.end43

if.then32:                                        ; preds = %if.else
  %28 = load ptr, ptr %a.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds double, ptr %28, i64 %idxprom34
  %30 = load double, ptr %arrayidx35, align 8
  store double %30, ptr %ttt33, align 8
  %31 = load i32, ptr %iGt, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %28, i64 %idxprom36
  %32 = load double, ptr %arrayidx37, align 8
  %33 = load ptr, ptr %a.addr, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %34 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %33, i64 %idxprom38
  store double %32, ptr %arrayidx39, align 8
  %35 = load double, ptr %ttt33, align 8
  %36 = load i32, ptr %iGt, align 4
  %idxprom40 = sext i32 %36 to i64
  %arrayidx41 = getelementptr inbounds double, ptr %33, i64 %idxprom40
  store double %35, ptr %arrayidx41, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then32, %if.then19
  %37 = load i32, ptr %n.addr, align 4
  %cmp44 = icmp eq i32 %37, 3
  br i1 %cmp44, label %while.end, label %if.end46

if.end46:                                         ; preds = %if.end43
  %38 = load ptr, ptr %a.addr, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %39 to i64
  %arrayidx48 = getelementptr inbounds double, ptr %38, i64 %idxprom47
  %40 = load double, ptr %arrayidx48, align 8
  store double %40, ptr %rPivot, align 8
  store i32 1, ptr %i, align 4
  store i32 1, ptr %iLt, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond89, %if.end46
  %41 = load ptr, ptr %a.addr, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %42 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %41, i64 %idxprom49
  %43 = load double, ptr %arrayidx50, align 8
  %44 = load double, ptr %rPivot, align 8
  %cmp51 = fcmp olt double %43, %44
  br i1 %cmp51, label %if.then52, label %if.else66

if.then52:                                        ; preds = %do.body
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %iLt, align 4
  %cmp53 = icmp sgt i32 %45, %46
  br i1 %cmp53, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.then52
  %47 = load ptr, ptr %a.addr, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %48 to i64
  %arrayidx57 = getelementptr inbounds double, ptr %47, i64 %idxprom56
  %49 = load double, ptr %arrayidx57, align 8
  store double %49, ptr %ttt55, align 8
  %50 = load i32, ptr %iLt, align 4
  %idxprom58 = sext i32 %50 to i64
  %arrayidx59 = getelementptr inbounds double, ptr %47, i64 %idxprom58
  %51 = load double, ptr %arrayidx59, align 8
  %52 = load ptr, ptr %a.addr, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %53 to i64
  %arrayidx61 = getelementptr inbounds double, ptr %52, i64 %idxprom60
  store double %51, ptr %arrayidx61, align 8
  %54 = load double, ptr %ttt55, align 8
  %55 = load i32, ptr %iLt, align 4
  %idxprom62 = sext i32 %55 to i64
  %arrayidx63 = getelementptr inbounds double, ptr %52, i64 %idxprom62
  store double %54, ptr %arrayidx63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then54, %if.then52
  %56 = load i32, ptr %iLt, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %iLt, align 4
  %57 = load i32, ptr %i, align 4
  %inc65 = add nsw i32 %57, 1
  store i32 %inc65, ptr %i, align 4
  br label %do.cond89

if.else66:                                        ; preds = %do.body
  %58 = load ptr, ptr %a.addr, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %59 to i64
  %arrayidx68 = getelementptr inbounds double, ptr %58, i64 %idxprom67
  %60 = load double, ptr %arrayidx68, align 8
  %61 = load double, ptr %rPivot, align 8
  %cmp69 = fcmp ogt double %60, %61
  br i1 %cmp69, label %do.body71, label %if.else85

do.body71:                                        ; preds = %if.else66, %land.rhs
  %62 = load i32, ptr %iGt, align 4
  %dec = add nsw i32 %62, -1
  store i32 %dec, ptr %iGt, align 4
  %63 = load i32, ptr %iGt, align 4
  %64 = load i32, ptr %i, align 4
  %cmp72 = icmp sgt i32 %63, %64
  br i1 %cmp72, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.body71
  %65 = load ptr, ptr %a.addr, align 8
  %66 = load i32, ptr %iGt, align 4
  %idxprom73 = sext i32 %66 to i64
  %arrayidx74 = getelementptr inbounds double, ptr %65, i64 %idxprom73
  %67 = load double, ptr %arrayidx74, align 8
  %68 = load double, ptr %rPivot, align 8
  %cmp75 = fcmp ogt double %67, %68
  br i1 %cmp75, label %do.body71, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.body71, %land.rhs
  %69 = load ptr, ptr %a.addr, align 8
  %70 = load i32, ptr %i, align 4
  %idxprom77 = sext i32 %70 to i64
  %arrayidx78 = getelementptr inbounds double, ptr %69, i64 %idxprom77
  %71 = load double, ptr %arrayidx78, align 8
  store double %71, ptr %ttt76, align 8
  %72 = load i32, ptr %iGt, align 4
  %idxprom79 = sext i32 %72 to i64
  %arrayidx80 = getelementptr inbounds double, ptr %69, i64 %idxprom79
  %73 = load double, ptr %arrayidx80, align 8
  %74 = load ptr, ptr %a.addr, align 8
  %75 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %75 to i64
  %arrayidx82 = getelementptr inbounds double, ptr %74, i64 %idxprom81
  store double %73, ptr %arrayidx82, align 8
  %76 = load double, ptr %ttt76, align 8
  %77 = load i32, ptr %iGt, align 4
  %idxprom83 = sext i32 %77 to i64
  %arrayidx84 = getelementptr inbounds double, ptr %74, i64 %idxprom83
  store double %76, ptr %arrayidx84, align 8
  br label %do.cond89

if.else85:                                        ; preds = %if.else66
  %78 = load i32, ptr %i, align 4
  %inc86 = add nsw i32 %78, 1
  store i32 %inc86, ptr %i, align 4
  br label %do.cond89

do.cond89:                                        ; preds = %if.end64, %if.else85, %do.end
  %79 = load i32, ptr %i, align 4
  %80 = load i32, ptr %iGt, align 4
  %cmp90 = icmp slt i32 %79, %80
  br i1 %cmp90, label %do.body, label %do.end91, !llvm.loop !10

do.end91:                                         ; preds = %do.cond89
  %81 = load i32, ptr %iLt, align 4
  %82 = load i32, ptr %n.addr, align 4
  %div922 = lshr i32 %82, 1
  %cmp93 = icmp ugt i32 %81, %div922
  br i1 %cmp93, label %if.then94, label %if.else100

if.then94:                                        ; preds = %do.end91
  %83 = load i32, ptr %n.addr, align 4
  %84 = load i32, ptr %iGt, align 4
  %sub95 = sub i32 %83, %84
  %cmp96 = icmp ugt i32 %sub95, 1
  br i1 %cmp96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.then94
  %85 = load ptr, ptr %a.addr, align 8
  %86 = load i32, ptr %iGt, align 4
  %idx.ext = sext i32 %86 to i64
  %add.ptr = getelementptr inbounds double, ptr %85, i64 %idx.ext
  %87 = load i32, ptr %n.addr, align 4
  %sub98 = sub i32 %87, %86
  call void @percentSort(ptr noundef %add.ptr, i32 noundef %sub98)
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.then94
  %88 = load i32, ptr %iLt, align 4
  br label %if.end107

if.else100:                                       ; preds = %do.end91
  %89 = load i32, ptr %iLt, align 4
  %cmp101 = icmp sgt i32 %89, 1
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.else100
  %90 = load ptr, ptr %a.addr, align 8
  %91 = load i32, ptr %iLt, align 4
  call void @percentSort(ptr noundef %90, i32 noundef %91)
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.else100
  %92 = load i32, ptr %iGt, align 4
  %93 = load ptr, ptr %a.addr, align 8
  %idx.ext104 = sext i32 %92 to i64
  %add.ptr105 = getelementptr inbounds double, ptr %93, i64 %idx.ext104
  store ptr %add.ptr105, ptr %a.addr, align 8
  %94 = load i32, ptr %n.addr, align 4
  %sub106 = sub i32 %94, %92
  br label %if.end107

if.end107:                                        ; preds = %if.end103, %if.end99
  %storemerge = phi i32 [ %sub106, %if.end103 ], [ %88, %if.end99 ]
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %if.end43, %if.end, %while.cond
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
attributes #7 = { nounwind }
attributes #8 = { cold noreturn nounwind }

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
