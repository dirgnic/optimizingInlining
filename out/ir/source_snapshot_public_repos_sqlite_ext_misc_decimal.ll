; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/decimal.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/decimal.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.anon = type { ptr, i32, i32, ptr }
%struct.Decimal = type { i8, i8, i8, i8, i32, i32, ptr }

@sqlite3_decimal_init.aFunc = internal constant [9 x %struct.anon] [%struct.anon { ptr @.str, i32 1, i32 0, ptr @decimalFunc }, %struct.anon { ptr @.str, i32 2, i32 0, ptr @decimalFunc }, %struct.anon { ptr @.str.1, i32 1, i32 1, ptr @decimalFunc }, %struct.anon { ptr @.str.1, i32 2, i32 1, ptr @decimalFunc }, %struct.anon { ptr @.str.2, i32 2, i32 0, ptr @decimalCmpFunc }, %struct.anon { ptr @.str.3, i32 2, i32 0, ptr @decimalAddFunc }, %struct.anon { ptr @.str.4, i32 2, i32 0, ptr @decimalSubFunc }, %struct.anon { ptr @.str.5, i32 2, i32 0, ptr @decimalMulFunc }, %struct.anon { ptr @.str.6, i32 1, i32 0, ptr @decimalPow2Func }], align 8
@.str = private unnamed_addr constant [8 x i8] c"decimal\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"decimal_exp\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"decimal_cmp\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"decimal_add\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"decimal_sub\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"decimal_mul\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"decimal_pow2\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"decimal_sum\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"e%+03d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_decimal_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %0 = load ptr, ptr %pzErrMsg.addr, align 8
  %1 = load ptr, ptr %pApi.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %2, 9
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.anon], ptr @sqlite3_decimal_init.aFunc, i64 0, i64 %idxprom
  %zFuncName = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %7 = load ptr, ptr %zFuncName, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom2 = zext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [9 x %struct.anon], ptr @sqlite3_decimal_init.aFunc, i64 0, i64 %idxprom2
  %nArg = getelementptr inbounds %struct.anon, ptr %arrayidx3, i32 0, i32 1
  %9 = load i32, ptr %nArg, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [9 x %struct.anon], ptr @sqlite3_decimal_init.aFunc, i64 0, i64 %idxprom4
  %iArg = getelementptr inbounds %struct.anon, ptr %arrayidx5, i32 0, i32 2
  %11 = load i32, ptr %iArg, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load ptr, ptr %db.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ null, %cond.false ]
  %13 = load i32, ptr %i, align 4
  %idxprom6 = zext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [9 x %struct.anon], ptr @sqlite3_decimal_init.aFunc, i64 0, i64 %idxprom6
  %xFunc = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 3
  %14 = load ptr, ptr %xFunc, align 8
  %call = call i32 @sqlite3_create_function(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 2099201, ptr noundef %cond, ptr noundef %14, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %15 = load i32, ptr %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %16 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %17 = load ptr, ptr %db.addr, align 8
  %call9 = call i32 @sqlite3_create_window_function(ptr noundef %17, ptr noundef @.str.7, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef @decimalSumStep, ptr noundef @decimalSumFinalize, ptr noundef @decimalSumValue, ptr noundef @decimalSumInverse, ptr noundef null)
  store i32 %call9, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %18 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %18, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %19 = load ptr, ptr %db.addr, align 8
  %call12 = call i32 @sqlite3_create_collation(ptr noundef %19, ptr noundef @.str, i32 noundef 1, ptr noundef null, ptr noundef @decimalCollFunc)
  store i32 %call12, ptr %rc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  %20 = load i32, ptr %rc, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %N = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @decimal_new(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  store ptr %call, ptr %p, align 8
  %3 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_int(ptr noundef %5)
  store i32 %call2, ptr %N, align 4
  %6 = load i32, ptr %N, align 4
  %cmp3 = icmp sgt i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %p, align 8
  %8 = load i32, ptr %N, align 4
  call void @decimal_round(ptr noundef %7, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.else:                                          ; preds = %entry
  store i32 0, ptr %N, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  %9 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end5
  %10 = load ptr, ptr %context.addr, align 8
  %call7 = call ptr @sqlite3_user_data(ptr noundef %10)
  %cmp8 = icmp ne ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.then6
  %11 = load ptr, ptr %context.addr, align 8
  %12 = load ptr, ptr %p, align 8
  %13 = load i32, ptr %N, align 4
  call void @decimal_result_sci(ptr noundef %11, ptr noundef %12, i32 noundef %13)
  br label %if.end11

if.else10:                                        ; preds = %if.then6
  %14 = load ptr, ptr %context.addr, align 8
  %15 = load ptr, ptr %p, align 8
  call void @decimal_result(ptr noundef %14, ptr noundef %15)
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then9
  %16 = load ptr, ptr %p, align 8
  call void @decimal_free(ptr noundef %16)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalCmpFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pA = alloca ptr, align 8
  %pB = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %pA, align 8
  store ptr null, ptr %pB, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %context.addr, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @decimal_new(ptr noundef %1, ptr noundef %3, i32 noundef 1)
  store ptr %call, ptr %pA, align 8
  %4 = load ptr, ptr %pA, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %pA, align 8
  %isNull = getelementptr inbounds %struct.Decimal, ptr %5, i32 0, i32 2
  %6 = load i8, ptr %isNull, align 2
  %conv = sext i8 %6 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %cmp_done

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %context.addr, align 8
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @decimal_new(ptr noundef %7, ptr noundef %9, i32 noundef 1)
  store ptr %call2, ptr %pB, align 8
  %10 = load ptr, ptr %pB, align 8
  %cmp3 = icmp eq ptr %10, null
  br i1 %cmp3, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %11 = load ptr, ptr %pB, align 8
  %isNull6 = getelementptr inbounds %struct.Decimal, ptr %11, i32 0, i32 2
  %12 = load i8, ptr %isNull6, align 2
  %conv7 = sext i8 %12 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false5, %if.end
  br label %cmp_done

if.end10:                                         ; preds = %lor.lhs.false5
  %13 = load ptr, ptr %pA, align 8
  %14 = load ptr, ptr %pB, align 8
  %call11 = call i32 @decimal_cmp(ptr noundef %13, ptr noundef %14)
  store i32 %call11, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp12 = icmp slt i32 %15, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  store i32 -1, ptr %rc, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end10
  %16 = load i32, ptr %rc, align 4
  %cmp15 = icmp sgt i32 %16, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else
  store i32 1, ptr %rc, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then14
  %17 = load ptr, ptr %context.addr, align 8
  %18 = load i32, ptr %rc, align 4
  call void @sqlite3_result_int(ptr noundef %17, i32 noundef %18)
  br label %cmp_done

cmp_done:                                         ; preds = %if.end19, %if.then9, %if.then
  %19 = load ptr, ptr %pA, align 8
  call void @decimal_free(ptr noundef %19)
  %20 = load ptr, ptr %pB, align 8
  call void @decimal_free(ptr noundef %20)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalAddFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pA = alloca ptr, align 8
  %pB = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @decimal_new(ptr noundef %0, ptr noundef %2, i32 noundef 1)
  store ptr %call, ptr %pA, align 8
  %3 = load ptr, ptr %context.addr, align 8
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @decimal_new(ptr noundef %3, ptr noundef %5, i32 noundef 1)
  store ptr %call2, ptr %pB, align 8
  %6 = load i32, ptr %argc.addr, align 4
  %7 = load ptr, ptr %pA, align 8
  %8 = load ptr, ptr %pB, align 8
  call void @decimal_add(ptr noundef %7, ptr noundef %8)
  %9 = load ptr, ptr %context.addr, align 8
  %10 = load ptr, ptr %pA, align 8
  call void @decimal_result(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %pA, align 8
  call void @decimal_free(ptr noundef %11)
  %12 = load ptr, ptr %pB, align 8
  call void @decimal_free(ptr noundef %12)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalSubFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pA = alloca ptr, align 8
  %pB = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @decimal_new(ptr noundef %0, ptr noundef %2, i32 noundef 1)
  store ptr %call, ptr %pA, align 8
  %3 = load ptr, ptr %context.addr, align 8
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @decimal_new(ptr noundef %3, ptr noundef %5, i32 noundef 1)
  store ptr %call2, ptr %pB, align 8
  %6 = load i32, ptr %argc.addr, align 4
  %7 = load ptr, ptr %pB, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pB, align 8
  %sign = getelementptr inbounds %struct.Decimal, ptr %8, i32 0, i32 0
  %9 = load i8, ptr %sign, align 8
  %tobool3 = icmp ne i8 %9, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %10 = load ptr, ptr %pB, align 8
  %sign4 = getelementptr inbounds %struct.Decimal, ptr %10, i32 0, i32 0
  store i8 %conv, ptr %sign4, align 8
  %11 = load ptr, ptr %pA, align 8
  %12 = load ptr, ptr %pB, align 8
  call void @decimal_add(ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %context.addr, align 8
  %14 = load ptr, ptr %pA, align 8
  call void @decimal_result(ptr noundef %13, ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %pA, align 8
  call void @decimal_free(ptr noundef %15)
  %16 = load ptr, ptr %pB, align 8
  call void @decimal_free(ptr noundef %16)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalMulFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pA = alloca ptr, align 8
  %pB = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @decimal_new(ptr noundef %0, ptr noundef %2, i32 noundef 1)
  store ptr %call, ptr %pA, align 8
  %3 = load ptr, ptr %context.addr, align 8
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @decimal_new(ptr noundef %3, ptr noundef %5, i32 noundef 1)
  store ptr %call2, ptr %pB, align 8
  %6 = load i32, ptr %argc.addr, align 4
  %7 = load ptr, ptr %pA, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %pA, align 8
  %oom = getelementptr inbounds %struct.Decimal, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %oom, align 1
  %conv = sext i8 %9 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %10 = load ptr, ptr %pA, align 8
  %isNull = getelementptr inbounds %struct.Decimal, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %isNull, align 2
  %conv4 = sext i8 %11 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %12 = load ptr, ptr %pB, align 8
  %cmp7 = icmp eq ptr %12, null
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %13 = load ptr, ptr %pB, align 8
  %oom10 = getelementptr inbounds %struct.Decimal, ptr %13, i32 0, i32 1
  %14 = load i8, ptr %oom10, align 1
  %conv11 = sext i8 %14 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %15 = load ptr, ptr %pB, align 8
  %isNull14 = getelementptr inbounds %struct.Decimal, ptr %15, i32 0, i32 2
  %16 = load i8, ptr %isNull14, align 2
  %conv15 = sext i8 %16 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  br label %mul_end

if.end:                                           ; preds = %lor.lhs.false13
  %17 = load ptr, ptr %pA, align 8
  %18 = load ptr, ptr %pB, align 8
  call void @decimalMul(ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %pA, align 8
  %oom17 = getelementptr inbounds %struct.Decimal, ptr %19, i32 0, i32 1
  %20 = load i8, ptr %oom17, align 1
  %tobool18 = icmp ne i8 %20, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  br label %mul_end

if.end20:                                         ; preds = %if.end
  %21 = load ptr, ptr %context.addr, align 8
  %22 = load ptr, ptr %pA, align 8
  call void @decimal_result(ptr noundef %21, ptr noundef %22)
  br label %mul_end

mul_end:                                          ; preds = %if.end20, %if.then19, %if.then
  %23 = load ptr, ptr %pA, align 8
  call void @decimal_free(ptr noundef %23)
  %24 = load ptr, ptr %pB, align 8
  call void @decimal_free(ptr noundef %24)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalPow2Func(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pA = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_int(ptr noundef %4)
  %call3 = call ptr @decimalPow2(i32 noundef %call2)
  store ptr %call3, ptr %pA, align 8
  %5 = load ptr, ptr %context.addr, align 8
  %6 = load ptr, ptr %pA, align 8
  call void @decimal_result_sci(ptr noundef %5, ptr noundef %6, i32 noundef 0)
  %7 = load ptr, ptr %pA, align 8
  call void @decimal_free(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_create_window_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalSumStep(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pArg = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %1, i32 noundef 24)
  store ptr %call, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %isInit = getelementptr inbounds %struct.Decimal, ptr %3, i32 0, i32 3
  %4 = load i8, ptr %isInit, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end9, label %if.then1

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %p, align 8
  %isInit2 = getelementptr inbounds %struct.Decimal, ptr %5, i32 0, i32 3
  store i8 1, ptr %isInit2, align 1
  %call3 = call ptr @sqlite3_malloc64(i64 noundef 2)
  %6 = load ptr, ptr %p, align 8
  %a = getelementptr inbounds %struct.Decimal, ptr %6, i32 0, i32 6
  store ptr %call3, ptr %a, align 8
  %7 = load ptr, ptr %p, align 8
  %a4 = getelementptr inbounds %struct.Decimal, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %a4, align 8
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then1
  %9 = load ptr, ptr %p, align 8
  %oom = getelementptr inbounds %struct.Decimal, ptr %9, i32 0, i32 1
  store i8 1, ptr %oom, align 1
  br label %if.end8

if.else:                                          ; preds = %if.then1
  %10 = load ptr, ptr %p, align 8
  %a7 = getelementptr inbounds %struct.Decimal, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %a7, align 8
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 0
  store i8 0, ptr %arrayidx, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %12 = load ptr, ptr %p, align 8
  %nDigit = getelementptr inbounds %struct.Decimal, ptr %12, i32 0, i32 4
  store i32 1, ptr %nDigit, align 4
  %13 = load ptr, ptr %p, align 8
  %nFrac = getelementptr inbounds %struct.Decimal, ptr %13, i32 0, i32 5
  store i32 0, ptr %nFrac, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %14 = load ptr, ptr %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @sqlite3_value_type(ptr noundef %15)
  %cmp12 = icmp eq i32 %call11, 5
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %return

if.end14:                                         ; preds = %if.end9
  %16 = load ptr, ptr %context.addr, align 8
  %17 = load ptr, ptr %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %17, i64 0
  %18 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr @decimal_new(ptr noundef %16, ptr noundef %18, i32 noundef 1)
  store ptr %call16, ptr %pArg, align 8
  %19 = load ptr, ptr %p, align 8
  %20 = load ptr, ptr %pArg, align 8
  call void @decimal_add(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %pArg, align 8
  call void @decimal_free(ptr noundef %21)
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalSumFinalize(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 0)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8
  %3 = load ptr, ptr %p, align 8
  call void @decimal_result(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %p, align 8
  call void @decimal_clear(ptr noundef %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalSumValue(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 0)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8
  %3 = load ptr, ptr %p, align 8
  call void @decimal_result(ptr noundef %2, ptr noundef %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalSumInverse(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pArg = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %1, i32 noundef 24)
  store ptr %call, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @sqlite3_value_type(ptr noundef %4)
  %cmp2 = icmp eq i32 %call1, 5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %context.addr, align 8
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx5, align 8
  %call6 = call ptr @decimal_new(ptr noundef %5, ptr noundef %7, i32 noundef 1)
  store ptr %call6, ptr %pArg, align 8
  %8 = load ptr, ptr %pArg, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %pArg, align 8
  %sign = getelementptr inbounds %struct.Decimal, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %sign, align 8
  %tobool8 = icmp ne i8 %10, 0
  %lnot = xor i1 %tobool8, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %11 = load ptr, ptr %pArg, align 8
  %sign9 = getelementptr inbounds %struct.Decimal, ptr %11, i32 0, i32 0
  store i8 %conv, ptr %sign9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4
  %12 = load ptr, ptr %p, align 8
  %13 = load ptr, ptr %pArg, align 8
  call void @decimal_add(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %pArg, align 8
  call void @decimal_free(ptr noundef %14)
  br label %return

return:                                           ; preds = %if.end10, %if.then3, %if.then
  ret void
}

declare i32 @sqlite3_create_collation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @decimalCollFunc(ptr noundef %notUsed, i32 noundef %nKey1, ptr noundef %pKey1, i32 noundef %nKey2, ptr noundef %pKey2) #0 {
entry:
  %notUsed.addr = alloca ptr, align 8
  %nKey1.addr = alloca i32, align 4
  %pKey1.addr = alloca ptr, align 8
  %nKey2.addr = alloca i32, align 4
  %pKey2.addr = alloca ptr, align 8
  %zA = alloca ptr, align 8
  %zB = alloca ptr, align 8
  %pA = alloca ptr, align 8
  %pB = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %notUsed, ptr %notUsed.addr, align 8
  store i32 %nKey1, ptr %nKey1.addr, align 4
  store ptr %pKey1, ptr %pKey1.addr, align 8
  store i32 %nKey2, ptr %nKey2.addr, align 4
  store ptr %pKey2, ptr %pKey2.addr, align 8
  %0 = load ptr, ptr %pKey1.addr, align 8
  store ptr %0, ptr %zA, align 8
  %1 = load ptr, ptr %pKey2.addr, align 8
  store ptr %1, ptr %zB, align 8
  %2 = load ptr, ptr %zA, align 8
  %3 = load i32, ptr %nKey1.addr, align 4
  %call = call ptr @decimalNewFromText(ptr noundef %2, i32 noundef %3)
  store ptr %call, ptr %pA, align 8
  %4 = load ptr, ptr %zB, align 8
  %5 = load i32, ptr %nKey2.addr, align 4
  %call1 = call ptr @decimalNewFromText(ptr noundef %4, i32 noundef %5)
  store ptr %call1, ptr %pB, align 8
  %6 = load ptr, ptr %notUsed.addr, align 8
  %7 = load ptr, ptr %pA, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %pB, align 8
  %cmp2 = icmp eq ptr %8, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %pA, align 8
  %10 = load ptr, ptr %pB, align 8
  %call3 = call i32 @decimal_cmp(ptr noundef %9, ptr noundef %10)
  store i32 %call3, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %pA, align 8
  call void @decimal_free(ptr noundef %11)
  %12 = load ptr, ptr %pB, align 8
  call void @decimal_free(ptr noundef %12)
  %13 = load i32, ptr %rc, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @decimal_new(ptr noundef %pCtx, ptr noundef %pIn, i32 noundef %bTextOnly) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %pIn.addr = alloca ptr, align 8
  %bTextOnly.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %eType = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %n = alloca i32, align 4
  %x = alloca ptr, align 8
  %i = alloca i32, align 4
  %v = alloca i64, align 8
  %r = alloca double, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pIn, ptr %pIn.addr, align 8
  store i32 %bTextOnly, ptr %bTextOnly.addr, align 4
  store ptr null, ptr %p, align 8
  %0 = load ptr, ptr %pIn.addr, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %0)
  store i32 %call, ptr %eType, align 4
  %1 = load i32, ptr %bTextOnly.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %eType, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %eType, align 4
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 3, ptr %eType, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %4 = load i32, ptr %eType, align 4
  switch i32 %4, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 4, label %sw.bb11
    i32 5, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %5 = load ptr, ptr %pIn.addr, align 8
  %call2 = call ptr @sqlite3_value_text(ptr noundef %5)
  store ptr %call2, ptr %zIn, align 8
  %6 = load ptr, ptr %pIn.addr, align 8
  %call3 = call i32 @sqlite3_value_bytes(ptr noundef %6)
  store i32 %call3, ptr %n, align 4
  %7 = load ptr, ptr %zIn, align 8
  %8 = load i32, ptr %n, align 4
  %call4 = call ptr @decimalNewFromText(ptr noundef %7, i32 noundef %8)
  store ptr %call4, ptr %p, align 8
  %9 = load ptr, ptr %p, align 8
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %sw.bb
  br label %new_failed

if.end7:                                          ; preds = %sw.bb
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %10 = load ptr, ptr %pIn.addr, align 8
  %call9 = call double @sqlite3_value_double(ptr noundef %10)
  %call10 = call ptr @decimalFromDouble(double noundef %call9)
  store ptr %call10, ptr %p, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  store i64 0, ptr %v, align 8
  %11 = load ptr, ptr %pIn.addr, align 8
  %call12 = call i32 @sqlite3_value_bytes(ptr noundef %11)
  %conv = sext i32 %call12 to i64
  %cmp13 = icmp ne i64 %conv, 8
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb11
  br label %sw.epilog

if.end16:                                         ; preds = %sw.bb11
  %12 = load ptr, ptr %pIn.addr, align 8
  %call17 = call ptr @sqlite3_value_blob(ptr noundef %12)
  store ptr %call17, ptr %x, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %13 = load i32, ptr %i, align 4
  %conv18 = zext i32 %13 to i64
  %cmp19 = icmp ult i64 %conv18, 8
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, ptr %v, align 8
  %shl = shl i64 %14, 8
  %15 = load ptr, ptr %x, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 %idxprom
  %17 = load i8, ptr %arrayidx, align 1
  %conv21 = zext i8 %17 to i64
  %or = or i64 %shl, %conv21
  store i64 %or, ptr %v, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %v, i64 8, i1 false)
  %19 = load double, ptr %r, align 8
  %call22 = call ptr @decimalFromDouble(double noundef %19)
  store ptr %call22, ptr %p, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb23, %for.end, %if.then15, %sw.bb8, %if.end7
  %20 = load ptr, ptr %p, align 8
  store ptr %20, ptr %retval, align 8
  br label %return

new_failed:                                       ; preds = %if.then6
  %21 = load ptr, ptr %pCtx.addr, align 8
  %tobool24 = icmp ne ptr %21, null
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %new_failed
  %22 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %22)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %new_failed
  %23 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %23)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end26, %sw.epilog
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

declare i32 @sqlite3_value_int(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimal_round(ptr noundef %p, i32 noundef %N) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nZero = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load i32, ptr %N.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %p.addr, align 8
  %nDigit = getelementptr inbounds %struct.Decimal, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %nDigit, align 4
  %4 = load i32, ptr %N.addr, align 4
  %cmp4 = icmp sle i32 %3, %4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %return

if.end6:                                          ; preds = %if.end3
  store i32 0, ptr %nZero, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %5 = load i32, ptr %nZero, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %nDigit7 = getelementptr inbounds %struct.Decimal, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %nDigit7, align 4
  %cmp8 = icmp slt i32 %5, %7
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds %struct.Decimal, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %a, align 8
  %10 = load i32, ptr %nZero, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %11 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %nZero, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %nZero, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.end
  %14 = load i32, ptr %nZero, align 4
  %15 = load i32, ptr %N.addr, align 4
  %add = add nsw i32 %15, %14
  store i32 %add, ptr %N.addr, align 4
  %16 = load ptr, ptr %p.addr, align 8
  %nDigit11 = getelementptr inbounds %struct.Decimal, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %nDigit11, align 4
  %18 = load i32, ptr %N.addr, align 4
  %cmp12 = icmp sle i32 %17, %18
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.end
  br label %return

if.end15:                                         ; preds = %for.end
  %19 = load ptr, ptr %p.addr, align 8
  %a16 = getelementptr inbounds %struct.Decimal, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %a16, align 8
  %21 = load i32, ptr %N.addr, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %20, i64 %idxprom17
  %22 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %22 to i32
  %cmp20 = icmp sgt i32 %conv19, 4
  br i1 %cmp20, label %if.then22, label %if.end60

if.then22:                                        ; preds = %if.end15
  %23 = load ptr, ptr %p.addr, align 8
  %a23 = getelementptr inbounds %struct.Decimal, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %a23, align 8
  %25 = load i32, ptr %N.addr, align 4
  %sub = sub nsw i32 %25, 1
  %idxprom24 = sext i32 %sub to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %24, i64 %idxprom24
  %26 = load i8, ptr %arrayidx25, align 1
  %inc26 = add i8 %26, 1
  store i8 %inc26, ptr %arrayidx25, align 1
  %27 = load i32, ptr %N.addr, align 4
  %sub27 = sub nsw i32 %27, 1
  store i32 %sub27, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc48, %if.then22
  %28 = load i32, ptr %i, align 4
  %cmp29 = icmp sgt i32 %28, 0
  br i1 %cmp29, label %land.rhs31, label %land.end38

land.rhs31:                                       ; preds = %for.cond28
  %29 = load ptr, ptr %p.addr, align 8
  %a32 = getelementptr inbounds %struct.Decimal, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %a32, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %30, i64 %idxprom33
  %32 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %32 to i32
  %cmp36 = icmp sgt i32 %conv35, 9
  br label %land.end38

land.end38:                                       ; preds = %land.rhs31, %for.cond28
  %33 = phi i1 [ false, %for.cond28 ], [ %cmp36, %land.rhs31 ]
  br i1 %33, label %for.body39, label %for.end49

for.body39:                                       ; preds = %land.end38
  %34 = load ptr, ptr %p.addr, align 8
  %a40 = getelementptr inbounds %struct.Decimal, ptr %34, i32 0, i32 6
  %35 = load ptr, ptr %a40, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %35, i64 %idxprom41
  store i8 0, ptr %arrayidx42, align 1
  %37 = load ptr, ptr %p.addr, align 8
  %a43 = getelementptr inbounds %struct.Decimal, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %a43, align 8
  %39 = load i32, ptr %i, align 4
  %sub44 = sub nsw i32 %39, 1
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %38, i64 %idxprom45
  %40 = load i8, ptr %arrayidx46, align 1
  %inc47 = add i8 %40, 1
  store i8 %inc47, ptr %arrayidx46, align 1
  br label %for.inc48

for.inc48:                                        ; preds = %for.body39
  %41 = load i32, ptr %i, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond28, !llvm.loop !10

for.end49:                                        ; preds = %land.end38
  %42 = load ptr, ptr %p.addr, align 8
  %a50 = getelementptr inbounds %struct.Decimal, ptr %42, i32 0, i32 6
  %43 = load ptr, ptr %a50, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %43, i64 0
  %44 = load i8, ptr %arrayidx51, align 1
  %conv52 = sext i8 %44 to i32
  %cmp53 = icmp sgt i32 %conv52, 9
  br i1 %cmp53, label %if.then55, label %if.end59

if.then55:                                        ; preds = %for.end49
  %45 = load ptr, ptr %p.addr, align 8
  %a56 = getelementptr inbounds %struct.Decimal, ptr %45, i32 0, i32 6
  %46 = load ptr, ptr %a56, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %46, i64 0
  store i8 1, ptr %arrayidx57, align 1
  %47 = load ptr, ptr %p.addr, align 8
  %nFrac = getelementptr inbounds %struct.Decimal, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %nFrac, align 8
  %dec58 = add nsw i32 %48, -1
  store i32 %dec58, ptr %nFrac, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %for.end49
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end15
  %49 = load ptr, ptr %p.addr, align 8
  %a61 = getelementptr inbounds %struct.Decimal, ptr %49, i32 0, i32 6
  %50 = load ptr, ptr %a61, align 8
  %51 = load i32, ptr %N.addr, align 4
  %idxprom62 = sext i32 %51 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %50, i64 %idxprom62
  %52 = load ptr, ptr %p.addr, align 8
  %nDigit64 = getelementptr inbounds %struct.Decimal, ptr %52, i32 0, i32 4
  %53 = load i32, ptr %nDigit64, align 4
  %54 = load i32, ptr %N.addr, align 4
  %sub65 = sub nsw i32 %53, %54
  %conv66 = sext i32 %sub65 to i64
  %55 = load ptr, ptr %p.addr, align 8
  %a67 = getelementptr inbounds %struct.Decimal, ptr %55, i32 0, i32 6
  %56 = load ptr, ptr %a67, align 8
  %57 = load i32, ptr %N.addr, align 4
  %idxprom68 = sext i32 %57 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %56, i64 %idxprom68
  %58 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx69, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %arrayidx63, i32 noundef 0, i64 noundef %conv66, i64 noundef %58) #6
  br label %return

return:                                           ; preds = %if.end60, %if.then14, %if.then5, %if.then2, %if.then
  ret void
}

declare ptr @sqlite3_user_data(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimal_result_sci(ptr noundef %pCtx, ptr noundef %p, i32 noundef %N) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %z = alloca ptr, align 8
  %i = alloca i32, align 4
  %nZero = alloca i32, align 4
  %nDigit = alloca i32, align 4
  %nFrac = alloca i32, align 4
  %exp = alloca i32, align 4
  %zero = alloca i8, align 1
  %a = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %oom = getelementptr inbounds %struct.Decimal, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %oom, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %3)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %p.addr, align 8
  %isNull = getelementptr inbounds %struct.Decimal, ptr %4, i32 0, i32 2
  %5 = load i8, ptr %isNull, align 2
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_null(ptr noundef %6)
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load i32, ptr %N.addr, align 4
  %cmp4 = icmp slt i32 %7, 1
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %N.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %8 = load ptr, ptr %p.addr, align 8
  %nDigit8 = getelementptr inbounds %struct.Decimal, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %nDigit8, align 4
  store i32 %9, ptr %nDigit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %10 = load i32, ptr %nDigit, align 4
  %11 = load i32, ptr %N.addr, align 4
  %cmp9 = icmp sgt i32 %10, %11
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load ptr, ptr %p.addr, align 8
  %a11 = getelementptr inbounds %struct.Decimal, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %a11, align 8
  %14 = load i32, ptr %nDigit, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1
  %conv12 = sext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %nDigit, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %nDigit, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %land.end
  store i32 0, ptr %nZero, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.end
  %18 = load i32, ptr %nZero, align 4
  %19 = load i32, ptr %nDigit, align 4
  %cmp16 = icmp slt i32 %18, %19
  br i1 %cmp16, label %land.rhs18, label %land.end25

land.rhs18:                                       ; preds = %for.cond15
  %20 = load ptr, ptr %p.addr, align 8
  %a19 = getelementptr inbounds %struct.Decimal, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %a19, align 8
  %22 = load i32, ptr %nZero, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %21, i64 %idxprom20
  %23 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %23 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br label %land.end25

land.end25:                                       ; preds = %land.rhs18, %for.cond15
  %24 = phi i1 [ false, %for.cond15 ], [ %cmp23, %land.rhs18 ]
  br i1 %24, label %for.body26, label %for.end28

for.body26:                                       ; preds = %land.end25
  br label %for.inc27

for.inc27:                                        ; preds = %for.body26
  %25 = load i32, ptr %nZero, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %nZero, align 4
  br label %for.cond15, !llvm.loop !12

for.end28:                                        ; preds = %land.end25
  %26 = load ptr, ptr %p.addr, align 8
  %nFrac29 = getelementptr inbounds %struct.Decimal, ptr %26, i32 0, i32 5
  %27 = load i32, ptr %nFrac29, align 8
  %28 = load i32, ptr %nDigit, align 4
  %29 = load ptr, ptr %p.addr, align 8
  %nDigit30 = getelementptr inbounds %struct.Decimal, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %nDigit30, align 4
  %sub31 = sub nsw i32 %28, %30
  %add = add nsw i32 %27, %sub31
  store i32 %add, ptr %nFrac, align 4
  %31 = load i32, ptr %nZero, align 4
  %32 = load i32, ptr %nDigit, align 4
  %sub32 = sub nsw i32 %32, %31
  store i32 %sub32, ptr %nDigit, align 4
  %33 = load i32, ptr %nDigit, align 4
  %conv33 = sext i32 %33 to i64
  %add34 = add nsw i64 %conv33, 20
  %call = call ptr @sqlite3_malloc64(i64 noundef %add34)
  store ptr %call, ptr %z, align 8
  %34 = load ptr, ptr %z, align 8
  %cmp35 = icmp eq ptr %34, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.end28
  %35 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %35)
  br label %return

if.end38:                                         ; preds = %for.end28
  %36 = load i32, ptr %nDigit, align 4
  %cmp39 = icmp eq i32 %36, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end38
  store i8 0, ptr %zero, align 1
  store ptr %zero, ptr %a, align 8
  store i32 1, ptr %nDigit, align 4
  store i32 0, ptr %nFrac, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end38
  %37 = load ptr, ptr %p.addr, align 8
  %a42 = getelementptr inbounds %struct.Decimal, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %a42, align 8
  %39 = load i32, ptr %nZero, align 4
  %idxprom43 = sext i32 %39 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %38, i64 %idxprom43
  store ptr %arrayidx44, ptr %a, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then41
  %40 = load ptr, ptr %p.addr, align 8
  %sign = getelementptr inbounds %struct.Decimal, ptr %40, i32 0, i32 0
  %41 = load i8, ptr %sign, align 8
  %conv46 = sext i8 %41 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %land.lhs.true, label %if.else52

land.lhs.true:                                    ; preds = %if.end45
  %42 = load i32, ptr %nDigit, align 4
  %cmp48 = icmp sgt i32 %42, 0
  br i1 %cmp48, label %if.then50, label %if.else52

if.then50:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %z, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %43, i64 0
  store i8 45, ptr %arrayidx51, align 1
  br label %if.end54

if.else52:                                        ; preds = %land.lhs.true, %if.end45
  %44 = load ptr, ptr %z, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %44, i64 0
  store i8 43, ptr %arrayidx53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then50
  %45 = load ptr, ptr %a, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %46 to i32
  %add57 = add nsw i32 %conv56, 48
  %conv58 = trunc i32 %add57 to i8
  %47 = load ptr, ptr %z, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %conv58, ptr %arrayidx59, align 1
  %48 = load ptr, ptr %z, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %48, i64 2
  store i8 46, ptr %arrayidx60, align 1
  %49 = load i32, ptr %nDigit, align 4
  %cmp61 = icmp eq i32 %49, 1
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.end54
  %50 = load ptr, ptr %z, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %50, i64 3
  store i8 48, ptr %arrayidx64, align 1
  store i32 4, ptr %i, align 4
  br label %if.end82

if.else65:                                        ; preds = %if.end54
  store i32 1, ptr %i, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc78, %if.else65
  %51 = load i32, ptr %i, align 4
  %52 = load i32, ptr %nDigit, align 4
  %cmp67 = icmp slt i32 %51, %52
  br i1 %cmp67, label %for.body69, label %for.end80

for.body69:                                       ; preds = %for.cond66
  %53 = load ptr, ptr %a, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %54 to i64
  %arrayidx71 = getelementptr inbounds i8, ptr %53, i64 %idxprom70
  %55 = load i8, ptr %arrayidx71, align 1
  %conv72 = sext i8 %55 to i32
  %add73 = add nsw i32 %conv72, 48
  %conv74 = trunc i32 %add73 to i8
  %56 = load ptr, ptr %z, align 8
  %57 = load i32, ptr %i, align 4
  %add75 = add nsw i32 2, %57
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds i8, ptr %56, i64 %idxprom76
  store i8 %conv74, ptr %arrayidx77, align 1
  br label %for.inc78

for.inc78:                                        ; preds = %for.body69
  %58 = load i32, ptr %i, align 4
  %inc79 = add nsw i32 %58, 1
  store i32 %inc79, ptr %i, align 4
  br label %for.cond66, !llvm.loop !13

for.end80:                                        ; preds = %for.cond66
  %59 = load i32, ptr %nDigit, align 4
  %add81 = add nsw i32 %59, 2
  store i32 %add81, ptr %i, align 4
  br label %if.end82

if.end82:                                         ; preds = %for.end80, %if.then63
  %60 = load i32, ptr %nDigit, align 4
  %61 = load i32, ptr %nFrac, align 4
  %sub83 = sub nsw i32 %60, %61
  %sub84 = sub nsw i32 %sub83, 1
  store i32 %sub84, ptr %exp, align 4
  %62 = load i32, ptr %nDigit, align 4
  %add85 = add nsw i32 %62, 20
  %63 = load i32, ptr %i, align 4
  %sub86 = sub nsw i32 %add85, %63
  %64 = load ptr, ptr %z, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom87 = sext i32 %65 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %64, i64 %idxprom87
  %66 = load i32, ptr %exp, align 4
  %call89 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub86, ptr noundef %arrayidx88, ptr noundef @.str.12, i32 noundef %66)
  %67 = load ptr, ptr %pCtx.addr, align 8
  %68 = load ptr, ptr %z, align 8
  call void @sqlite3_result_text(ptr noundef %67, ptr noundef %68, i32 noundef -1, ptr noundef @sqlite3_free)
  br label %return

return:                                           ; preds = %if.end82, %if.then37, %if.then2, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimal_result(ptr noundef %pCtx, ptr noundef %p) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %oom = getelementptr inbounds %struct.Decimal, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %oom, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %3)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %p.addr, align 8
  %isNull = getelementptr inbounds %struct.Decimal, ptr %4, i32 0, i32 2
  %5 = load i8, ptr %isNull, align 2
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_null(ptr noundef %6)
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %nDigit = getelementptr inbounds %struct.Decimal, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %nDigit, align 4
  %conv4 = sext i32 %8 to i64
  %add = add nsw i64 %conv4, 8
  %call = call ptr @sqlite3_malloc64(i64 noundef %add)
  store ptr %call, ptr %z, align 8
  %9 = load ptr, ptr %z, align 8
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  %10 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %10)
  br label %return

if.end8:                                          ; preds = %if.end3
  store i32 0, ptr %i, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %nDigit9 = getelementptr inbounds %struct.Decimal, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %nDigit9, align 4
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %if.then19, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end8
  %13 = load ptr, ptr %p.addr, align 8
  %nDigit13 = getelementptr inbounds %struct.Decimal, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %nDigit13, align 4
  %cmp14 = icmp eq i32 %14, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %15 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds %struct.Decimal, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %a, align 8
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx, align 1
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true, %if.end8
  %18 = load ptr, ptr %p.addr, align 8
  %sign = getelementptr inbounds %struct.Decimal, ptr %18, i32 0, i32 0
  store i8 0, ptr %sign, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true, %lor.lhs.false12
  %19 = load ptr, ptr %p.addr, align 8
  %sign21 = getelementptr inbounds %struct.Decimal, ptr %19, i32 0, i32 0
  %20 = load i8, ptr %sign21, align 8
  %tobool22 = icmp ne i8 %20, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %21 = load ptr, ptr %z, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %21, i64 0
  store i8 45, ptr %arrayidx24, align 1
  store i32 1, ptr %i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %22 = load ptr, ptr %p.addr, align 8
  %nDigit26 = getelementptr inbounds %struct.Decimal, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %nDigit26, align 4
  %24 = load ptr, ptr %p.addr, align 8
  %nFrac = getelementptr inbounds %struct.Decimal, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %nFrac, align 8
  %sub = sub nsw i32 %23, %25
  store i32 %sub, ptr %n, align 4
  %26 = load i32, ptr %n, align 4
  %cmp27 = icmp sle i32 %26, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  %27 = load ptr, ptr %z, align 8
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %27, i64 %idxprom
  store i8 48, ptr %arrayidx30, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25
  store i32 0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end31
  %29 = load i32, ptr %n, align 4
  %cmp32 = icmp sgt i32 %29, 1
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load ptr, ptr %p.addr, align 8
  %a34 = getelementptr inbounds %struct.Decimal, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %a34, align 8
  %32 = load i32, ptr %j, align 4
  %idxprom35 = sext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %31, i64 %idxprom35
  %33 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %33 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %34 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %35 = load i32, ptr %j, align 4
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, ptr %j, align 4
  %36 = load i32, ptr %n, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, ptr %n, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %land.end
  br label %while.cond41

while.cond41:                                     ; preds = %while.body44, %while.end
  %37 = load i32, ptr %n, align 4
  %cmp42 = icmp sgt i32 %37, 0
  br i1 %cmp42, label %while.body44, label %while.end56

while.body44:                                     ; preds = %while.cond41
  %38 = load ptr, ptr %p.addr, align 8
  %a45 = getelementptr inbounds %struct.Decimal, ptr %38, i32 0, i32 6
  %39 = load ptr, ptr %a45, align 8
  %40 = load i32, ptr %j, align 4
  %idxprom46 = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %39, i64 %idxprom46
  %41 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %41 to i32
  %add49 = add nsw i32 %conv48, 48
  %conv50 = trunc i32 %add49 to i8
  %42 = load ptr, ptr %z, align 8
  %43 = load i32, ptr %i, align 4
  %inc51 = add nsw i32 %43, 1
  store i32 %inc51, ptr %i, align 4
  %idxprom52 = sext i32 %43 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %42, i64 %idxprom52
  store i8 %conv50, ptr %arrayidx53, align 1
  %44 = load i32, ptr %j, align 4
  %inc54 = add nsw i32 %44, 1
  store i32 %inc54, ptr %j, align 4
  %45 = load i32, ptr %n, align 4
  %dec55 = add nsw i32 %45, -1
  store i32 %dec55, ptr %n, align 4
  br label %while.cond41, !llvm.loop !15

while.end56:                                      ; preds = %while.cond41
  %46 = load ptr, ptr %p.addr, align 8
  %nFrac57 = getelementptr inbounds %struct.Decimal, ptr %46, i32 0, i32 5
  %47 = load i32, ptr %nFrac57, align 8
  %tobool58 = icmp ne i32 %47, 0
  br i1 %tobool58, label %if.then59, label %if.end76

if.then59:                                        ; preds = %while.end56
  %48 = load ptr, ptr %z, align 8
  %49 = load i32, ptr %i, align 4
  %inc60 = add nsw i32 %49, 1
  store i32 %inc60, ptr %i, align 4
  %idxprom61 = sext i32 %49 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %48, i64 %idxprom61
  store i8 46, ptr %arrayidx62, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then59
  %50 = load ptr, ptr %p.addr, align 8
  %a63 = getelementptr inbounds %struct.Decimal, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %a63, align 8
  %52 = load i32, ptr %j, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %51, i64 %idxprom64
  %53 = load i8, ptr %arrayidx65, align 1
  %conv66 = sext i8 %53 to i32
  %add67 = add nsw i32 %conv66, 48
  %conv68 = trunc i32 %add67 to i8
  %54 = load ptr, ptr %z, align 8
  %55 = load i32, ptr %i, align 4
  %inc69 = add nsw i32 %55, 1
  store i32 %inc69, ptr %i, align 4
  %idxprom70 = sext i32 %55 to i64
  %arrayidx71 = getelementptr inbounds i8, ptr %54, i64 %idxprom70
  store i8 %conv68, ptr %arrayidx71, align 1
  %56 = load i32, ptr %j, align 4
  %inc72 = add nsw i32 %56, 1
  store i32 %inc72, ptr %j, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %57 = load i32, ptr %j, align 4
  %58 = load ptr, ptr %p.addr, align 8
  %nDigit73 = getelementptr inbounds %struct.Decimal, ptr %58, i32 0, i32 4
  %59 = load i32, ptr %nDigit73, align 4
  %cmp74 = icmp slt i32 %57, %59
  br i1 %cmp74, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond
  br label %if.end76

if.end76:                                         ; preds = %do.end, %while.end56
  %60 = load ptr, ptr %z, align 8
  %61 = load i32, ptr %i, align 4
  %idxprom77 = sext i32 %61 to i64
  %arrayidx78 = getelementptr inbounds i8, ptr %60, i64 %idxprom77
  store i8 0, ptr %arrayidx78, align 1
  %62 = load ptr, ptr %pCtx.addr, align 8
  %63 = load ptr, ptr %z, align 8
  %64 = load i32, ptr %i, align 4
  call void @sqlite3_result_text(ptr noundef %62, ptr noundef %63, i32 noundef %64, ptr noundef @sqlite3_free)
  br label %return

return:                                           ; preds = %if.end76, %if.then7, %if.then2, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimal_free(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  call void @decimal_clear(ptr noundef %1)
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @sqlite3_value_type(ptr noundef) #1

declare ptr @sqlite3_value_text(ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @decimalNewFromText(ptr noundef %zIn, i32 noundef %n) #0 {
entry:
  %retval = alloca ptr, align 8
  %zIn.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %iExp = alloca i32, align 4
  %c = alloca i8, align 1
  %j = alloca i32, align 4
  %neg = alloca i32, align 4
  %a163 = alloca ptr, align 8
  %nExtra = alloca i32, align 4
  %a213 = alloca ptr, align 8
  store ptr %zIn, ptr %zIn.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr null, ptr %p, align 8
  store i32 0, ptr %iExp, align 4
  %0 = load ptr, ptr %zIn.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %new_from_text_failed

if.end:                                           ; preds = %entry
  %call = call ptr @sqlite3_malloc64(i64 noundef 24)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %new_from_text_failed

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %p, align 8
  %sign = getelementptr inbounds %struct.Decimal, ptr %2, i32 0, i32 0
  store i8 0, ptr %sign, align 8
  %3 = load ptr, ptr %p, align 8
  %oom = getelementptr inbounds %struct.Decimal, ptr %3, i32 0, i32 1
  store i8 0, ptr %oom, align 1
  %4 = load ptr, ptr %p, align 8
  %isInit = getelementptr inbounds %struct.Decimal, ptr %4, i32 0, i32 3
  store i8 1, ptr %isInit, align 1
  %5 = load ptr, ptr %p, align 8
  %isNull = getelementptr inbounds %struct.Decimal, ptr %5, i32 0, i32 2
  store i8 0, ptr %isNull, align 2
  %6 = load ptr, ptr %p, align 8
  %nDigit = getelementptr inbounds %struct.Decimal, ptr %6, i32 0, i32 4
  store i32 0, ptr %nDigit, align 4
  %7 = load ptr, ptr %p, align 8
  %nFrac = getelementptr inbounds %struct.Decimal, ptr %7, i32 0, i32 5
  store i32 0, ptr %nFrac, align 8
  %8 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %8, 1
  %conv = sext i32 %add to i64
  %call4 = call ptr @sqlite3_malloc64(i64 noundef %conv)
  %9 = load ptr, ptr %p, align 8
  %a = getelementptr inbounds %struct.Decimal, ptr %9, i32 0, i32 6
  store ptr %call4, ptr %a, align 8
  %10 = load ptr, ptr %p, align 8
  %a5 = getelementptr inbounds %struct.Decimal, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %a5, align 8
  %cmp6 = icmp eq ptr %11, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  br label %new_from_text_failed

if.end9:                                          ; preds = %if.end3
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %12 = load ptr, ptr %zIn.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %14 to i32
  %call11 = call i32 @isspace(i32 noundef %conv10) #7
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %zIn.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %16, i64 %idxprom12
  %18 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.end
  %19 = load ptr, ptr %p, align 8
  %sign18 = getelementptr inbounds %struct.Decimal, ptr %19, i32 0, i32 0
  store i8 1, ptr %sign18, align 8
  %20 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, ptr %i, align 4
  br label %if.end28

if.else:                                          ; preds = %for.end
  %21 = load ptr, ptr %zIn.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %21, i64 %idxprom20
  %23 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %23 to i32
  %cmp23 = icmp eq i32 %conv22, 43
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.else
  %24 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %24, 1
  store i32 %inc26, ptr %i, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end28
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %n.addr, align 4
  %cmp29 = icmp slt i32 %25, %26
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load ptr, ptr %zIn.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %27, i64 %idxprom31
  %29 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %29 to i32
  %cmp34 = icmp eq i32 %conv33, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp34, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %31, 1
  store i32 %inc36, ptr %i, align 4
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %land.end
  br label %while.cond37

while.cond37:                                     ; preds = %if.end129, %while.end
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %n.addr, align 4
  %cmp38 = icmp slt i32 %32, %33
  br i1 %cmp38, label %while.body40, label %while.end131

while.body40:                                     ; preds = %while.cond37
  %34 = load ptr, ptr %zIn.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %34, i64 %idxprom41
  %36 = load i8, ptr %arrayidx42, align 1
  store i8 %36, ptr %c, align 1
  %37 = load i8, ptr %c, align 1
  %conv43 = sext i8 %37 to i32
  %cmp44 = icmp sge i32 %conv43, 48
  br i1 %cmp44, label %land.lhs.true, label %if.else57

land.lhs.true:                                    ; preds = %while.body40
  %38 = load i8, ptr %c, align 1
  %conv46 = sext i8 %38 to i32
  %cmp47 = icmp sle i32 %conv46, 57
  br i1 %cmp47, label %if.then49, label %if.else57

if.then49:                                        ; preds = %land.lhs.true
  %39 = load i8, ptr %c, align 1
  %conv50 = sext i8 %39 to i32
  %sub = sub nsw i32 %conv50, 48
  %conv51 = trunc i32 %sub to i8
  %40 = load ptr, ptr %p, align 8
  %a52 = getelementptr inbounds %struct.Decimal, ptr %40, i32 0, i32 6
  %41 = load ptr, ptr %a52, align 8
  %42 = load ptr, ptr %p, align 8
  %nDigit53 = getelementptr inbounds %struct.Decimal, ptr %42, i32 0, i32 4
  %43 = load i32, ptr %nDigit53, align 4
  %inc54 = add nsw i32 %43, 1
  store i32 %inc54, ptr %nDigit53, align 4
  %idxprom55 = sext i32 %43 to i64
  %arrayidx56 = getelementptr inbounds i8, ptr %41, i64 %idxprom55
  store i8 %conv51, ptr %arrayidx56, align 1
  br label %if.end129

if.else57:                                        ; preds = %land.lhs.true, %while.body40
  %44 = load i8, ptr %c, align 1
  %conv58 = sext i8 %44 to i32
  %cmp59 = icmp eq i32 %conv58, 46
  br i1 %cmp59, label %if.then61, label %if.else65

if.then61:                                        ; preds = %if.else57
  %45 = load ptr, ptr %p, align 8
  %nDigit62 = getelementptr inbounds %struct.Decimal, ptr %45, i32 0, i32 4
  %46 = load i32, ptr %nDigit62, align 4
  %add63 = add nsw i32 %46, 1
  %47 = load ptr, ptr %p, align 8
  %nFrac64 = getelementptr inbounds %struct.Decimal, ptr %47, i32 0, i32 5
  store i32 %add63, ptr %nFrac64, align 8
  br label %if.end128

if.else65:                                        ; preds = %if.else57
  %48 = load i8, ptr %c, align 1
  %conv66 = sext i8 %48 to i32
  %cmp67 = icmp eq i32 %conv66, 101
  br i1 %cmp67, label %if.then72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else65
  %49 = load i8, ptr %c, align 1
  %conv69 = sext i8 %49 to i32
  %cmp70 = icmp eq i32 %conv69, 69
  br i1 %cmp70, label %if.then72, label %if.end127

if.then72:                                        ; preds = %lor.lhs.false, %if.else65
  %50 = load i32, ptr %i, align 4
  %add73 = add nsw i32 %50, 1
  store i32 %add73, ptr %j, align 4
  store i32 0, ptr %neg, align 4
  %51 = load i32, ptr %j, align 4
  %52 = load i32, ptr %n.addr, align 4
  %cmp74 = icmp sge i32 %51, %52
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then72
  br label %while.end131

if.end77:                                         ; preds = %if.then72
  %53 = load ptr, ptr %zIn.addr, align 8
  %54 = load i32, ptr %j, align 4
  %idxprom78 = sext i32 %54 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %53, i64 %idxprom78
  %55 = load i8, ptr %arrayidx79, align 1
  %conv80 = sext i8 %55 to i32
  %cmp81 = icmp eq i32 %conv80, 45
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.end77
  store i32 1, ptr %neg, align 4
  %56 = load i32, ptr %j, align 4
  %inc84 = add nsw i32 %56, 1
  store i32 %inc84, ptr %j, align 4
  br label %if.end94

if.else85:                                        ; preds = %if.end77
  %57 = load ptr, ptr %zIn.addr, align 8
  %58 = load i32, ptr %j, align 4
  %idxprom86 = sext i32 %58 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %57, i64 %idxprom86
  %59 = load i8, ptr %arrayidx87, align 1
  %conv88 = sext i8 %59 to i32
  %cmp89 = icmp eq i32 %conv88, 43
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.else85
  %60 = load i32, ptr %j, align 4
  %inc92 = add nsw i32 %60, 1
  store i32 %inc92, ptr %j, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.else85
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then83
  br label %while.cond95

while.cond95:                                     ; preds = %if.end120, %if.end94
  %61 = load i32, ptr %j, align 4
  %62 = load i32, ptr %n.addr, align 4
  %cmp96 = icmp slt i32 %61, %62
  br i1 %cmp96, label %land.rhs98, label %land.end101

land.rhs98:                                       ; preds = %while.cond95
  %63 = load i32, ptr %iExp, align 4
  %cmp99 = icmp slt i32 %63, 1000000
  br label %land.end101

land.end101:                                      ; preds = %land.rhs98, %while.cond95
  %64 = phi i1 [ false, %while.cond95 ], [ %cmp99, %land.rhs98 ]
  br i1 %64, label %while.body102, label %while.end122

while.body102:                                    ; preds = %land.end101
  %65 = load ptr, ptr %zIn.addr, align 8
  %66 = load i32, ptr %j, align 4
  %idxprom103 = sext i32 %66 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %65, i64 %idxprom103
  %67 = load i8, ptr %arrayidx104, align 1
  %conv105 = sext i8 %67 to i32
  %cmp106 = icmp sge i32 %conv105, 48
  br i1 %cmp106, label %land.lhs.true108, label %if.end120

land.lhs.true108:                                 ; preds = %while.body102
  %68 = load ptr, ptr %zIn.addr, align 8
  %69 = load i32, ptr %j, align 4
  %idxprom109 = sext i32 %69 to i64
  %arrayidx110 = getelementptr inbounds i8, ptr %68, i64 %idxprom109
  %70 = load i8, ptr %arrayidx110, align 1
  %conv111 = sext i8 %70 to i32
  %cmp112 = icmp sle i32 %conv111, 57
  br i1 %cmp112, label %if.then114, label %if.end120

if.then114:                                       ; preds = %land.lhs.true108
  %71 = load i32, ptr %iExp, align 4
  %mul = mul nsw i32 %71, 10
  %72 = load ptr, ptr %zIn.addr, align 8
  %73 = load i32, ptr %j, align 4
  %idxprom115 = sext i32 %73 to i64
  %arrayidx116 = getelementptr inbounds i8, ptr %72, i64 %idxprom115
  %74 = load i8, ptr %arrayidx116, align 1
  %conv117 = sext i8 %74 to i32
  %add118 = add nsw i32 %mul, %conv117
  %sub119 = sub nsw i32 %add118, 48
  store i32 %sub119, ptr %iExp, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then114, %land.lhs.true108, %while.body102
  %75 = load i32, ptr %j, align 4
  %inc121 = add nsw i32 %75, 1
  store i32 %inc121, ptr %j, align 4
  br label %while.cond95, !llvm.loop !19

while.end122:                                     ; preds = %land.end101
  %76 = load i32, ptr %neg, align 4
  %tobool123 = icmp ne i32 %76, 0
  br i1 %tobool123, label %if.then124, label %if.end126

if.then124:                                       ; preds = %while.end122
  %77 = load i32, ptr %iExp, align 4
  %sub125 = sub nsw i32 0, %77
  store i32 %sub125, ptr %iExp, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %while.end122
  br label %while.end131

if.end127:                                        ; preds = %lor.lhs.false
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then61
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then49
  %78 = load i32, ptr %i, align 4
  %inc130 = add nsw i32 %78, 1
  store i32 %inc130, ptr %i, align 4
  br label %while.cond37, !llvm.loop !20

while.end131:                                     ; preds = %if.end126, %if.then76, %while.cond37
  %79 = load ptr, ptr %p, align 8
  %nFrac132 = getelementptr inbounds %struct.Decimal, ptr %79, i32 0, i32 5
  %80 = load i32, ptr %nFrac132, align 8
  %tobool133 = icmp ne i32 %80, 0
  br i1 %tobool133, label %if.then134, label %if.end140

if.then134:                                       ; preds = %while.end131
  %81 = load ptr, ptr %p, align 8
  %nDigit135 = getelementptr inbounds %struct.Decimal, ptr %81, i32 0, i32 4
  %82 = load i32, ptr %nDigit135, align 4
  %83 = load ptr, ptr %p, align 8
  %nFrac136 = getelementptr inbounds %struct.Decimal, ptr %83, i32 0, i32 5
  %84 = load i32, ptr %nFrac136, align 8
  %sub137 = sub nsw i32 %84, 1
  %sub138 = sub nsw i32 %82, %sub137
  %85 = load ptr, ptr %p, align 8
  %nFrac139 = getelementptr inbounds %struct.Decimal, ptr %85, i32 0, i32 5
  store i32 %sub138, ptr %nFrac139, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then134, %while.end131
  %86 = load i32, ptr %iExp, align 4
  %cmp141 = icmp sgt i32 %86, 0
  br i1 %cmp141, label %if.then143, label %if.else187

if.then143:                                       ; preds = %if.end140
  %87 = load ptr, ptr %p, align 8
  %nFrac144 = getelementptr inbounds %struct.Decimal, ptr %87, i32 0, i32 5
  %88 = load i32, ptr %nFrac144, align 8
  %cmp145 = icmp sgt i32 %88, 0
  br i1 %cmp145, label %if.then147, label %if.end159

if.then147:                                       ; preds = %if.then143
  %89 = load i32, ptr %iExp, align 4
  %90 = load ptr, ptr %p, align 8
  %nFrac148 = getelementptr inbounds %struct.Decimal, ptr %90, i32 0, i32 5
  %91 = load i32, ptr %nFrac148, align 8
  %cmp149 = icmp sle i32 %89, %91
  br i1 %cmp149, label %if.then151, label %if.else154

if.then151:                                       ; preds = %if.then147
  %92 = load i32, ptr %iExp, align 4
  %93 = load ptr, ptr %p, align 8
  %nFrac152 = getelementptr inbounds %struct.Decimal, ptr %93, i32 0, i32 5
  %94 = load i32, ptr %nFrac152, align 8
  %sub153 = sub nsw i32 %94, %92
  store i32 %sub153, ptr %nFrac152, align 8
  store i32 0, ptr %iExp, align 4
  br label %if.end158

if.else154:                                       ; preds = %if.then147
  %95 = load ptr, ptr %p, align 8
  %nFrac155 = getelementptr inbounds %struct.Decimal, ptr %95, i32 0, i32 5
  %96 = load i32, ptr %nFrac155, align 8
  %97 = load i32, ptr %iExp, align 4
  %sub156 = sub nsw i32 %97, %96
  store i32 %sub156, ptr %iExp, align 4
  %98 = load ptr, ptr %p, align 8
  %nFrac157 = getelementptr inbounds %struct.Decimal, ptr %98, i32 0, i32 5
  store i32 0, ptr %nFrac157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.else154, %if.then151
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then143
  %99 = load i32, ptr %iExp, align 4
  %cmp160 = icmp sgt i32 %99, 0
  br i1 %cmp160, label %if.then162, label %if.end186

if.then162:                                       ; preds = %if.end159
  %100 = load ptr, ptr %p, align 8
  %a164 = getelementptr inbounds %struct.Decimal, ptr %100, i32 0, i32 6
  %101 = load ptr, ptr %a164, align 8
  %102 = load ptr, ptr %p, align 8
  %nDigit165 = getelementptr inbounds %struct.Decimal, ptr %102, i32 0, i32 4
  %103 = load i32, ptr %nDigit165, align 4
  %conv166 = sext i32 %103 to i64
  %104 = load i32, ptr %iExp, align 4
  %conv167 = sext i32 %104 to i64
  %add168 = add nsw i64 %conv166, %conv167
  %add169 = add nsw i64 %add168, 1
  %call170 = call ptr @sqlite3_realloc64(ptr noundef %101, i64 noundef %add169)
  store ptr %call170, ptr %a163, align 8
  %105 = load ptr, ptr %a163, align 8
  %cmp171 = icmp eq ptr %105, null
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.then162
  br label %new_from_text_failed

if.end174:                                        ; preds = %if.then162
  %106 = load ptr, ptr %a163, align 8
  %107 = load ptr, ptr %p, align 8
  %a175 = getelementptr inbounds %struct.Decimal, ptr %107, i32 0, i32 6
  store ptr %106, ptr %a175, align 8
  %108 = load ptr, ptr %p, align 8
  %a176 = getelementptr inbounds %struct.Decimal, ptr %108, i32 0, i32 6
  %109 = load ptr, ptr %a176, align 8
  %110 = load ptr, ptr %p, align 8
  %nDigit177 = getelementptr inbounds %struct.Decimal, ptr %110, i32 0, i32 4
  %111 = load i32, ptr %nDigit177, align 4
  %idx.ext = sext i32 %111 to i64
  %add.ptr = getelementptr inbounds i8, ptr %109, i64 %idx.ext
  %112 = load i32, ptr %iExp, align 4
  %conv178 = sext i32 %112 to i64
  %113 = load ptr, ptr %p, align 8
  %a179 = getelementptr inbounds %struct.Decimal, ptr %113, i32 0, i32 6
  %114 = load ptr, ptr %a179, align 8
  %115 = load ptr, ptr %p, align 8
  %nDigit180 = getelementptr inbounds %struct.Decimal, ptr %115, i32 0, i32 4
  %116 = load i32, ptr %nDigit180, align 4
  %idx.ext181 = sext i32 %116 to i64
  %add.ptr182 = getelementptr inbounds i8, ptr %114, i64 %idx.ext181
  %117 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr182, i1 false, i1 true, i1 false)
  %call183 = call ptr @__memset_chk(ptr noundef %add.ptr, i32 noundef 0, i64 noundef %conv178, i64 noundef %117) #6
  %118 = load i32, ptr %iExp, align 4
  %119 = load ptr, ptr %p, align 8
  %nDigit184 = getelementptr inbounds %struct.Decimal, ptr %119, i32 0, i32 4
  %120 = load i32, ptr %nDigit184, align 4
  %add185 = add nsw i32 %120, %118
  store i32 %add185, ptr %nDigit184, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.end174, %if.end159
  br label %if.end246

if.else187:                                       ; preds = %if.end140
  %121 = load i32, ptr %iExp, align 4
  %cmp188 = icmp slt i32 %121, 0
  br i1 %cmp188, label %if.then190, label %if.end245

if.then190:                                       ; preds = %if.else187
  %122 = load i32, ptr %iExp, align 4
  %sub191 = sub nsw i32 0, %122
  store i32 %sub191, ptr %iExp, align 4
  %123 = load ptr, ptr %p, align 8
  %nDigit192 = getelementptr inbounds %struct.Decimal, ptr %123, i32 0, i32 4
  %124 = load i32, ptr %nDigit192, align 4
  %125 = load ptr, ptr %p, align 8
  %nFrac193 = getelementptr inbounds %struct.Decimal, ptr %125, i32 0, i32 5
  %126 = load i32, ptr %nFrac193, align 8
  %sub194 = sub nsw i32 %124, %126
  %sub195 = sub nsw i32 %sub194, 1
  store i32 %sub195, ptr %nExtra, align 4
  %127 = load i32, ptr %nExtra, align 4
  %tobool196 = icmp ne i32 %127, 0
  br i1 %tobool196, label %if.then197, label %if.end209

if.then197:                                       ; preds = %if.then190
  %128 = load i32, ptr %nExtra, align 4
  %129 = load i32, ptr %iExp, align 4
  %cmp198 = icmp sge i32 %128, %129
  br i1 %cmp198, label %if.then200, label %if.else203

if.then200:                                       ; preds = %if.then197
  %130 = load i32, ptr %iExp, align 4
  %131 = load ptr, ptr %p, align 8
  %nFrac201 = getelementptr inbounds %struct.Decimal, ptr %131, i32 0, i32 5
  %132 = load i32, ptr %nFrac201, align 8
  %add202 = add nsw i32 %132, %130
  store i32 %add202, ptr %nFrac201, align 8
  store i32 0, ptr %iExp, align 4
  br label %if.end208

if.else203:                                       ; preds = %if.then197
  %133 = load i32, ptr %nExtra, align 4
  %134 = load i32, ptr %iExp, align 4
  %sub204 = sub nsw i32 %134, %133
  store i32 %sub204, ptr %iExp, align 4
  %135 = load ptr, ptr %p, align 8
  %nDigit205 = getelementptr inbounds %struct.Decimal, ptr %135, i32 0, i32 4
  %136 = load i32, ptr %nDigit205, align 4
  %sub206 = sub nsw i32 %136, 1
  %137 = load ptr, ptr %p, align 8
  %nFrac207 = getelementptr inbounds %struct.Decimal, ptr %137, i32 0, i32 5
  store i32 %sub206, ptr %nFrac207, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.else203, %if.then200
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.then190
  %138 = load i32, ptr %iExp, align 4
  %cmp210 = icmp sgt i32 %138, 0
  br i1 %cmp210, label %if.then212, label %if.end244

if.then212:                                       ; preds = %if.end209
  %139 = load ptr, ptr %p, align 8
  %a214 = getelementptr inbounds %struct.Decimal, ptr %139, i32 0, i32 6
  %140 = load ptr, ptr %a214, align 8
  %141 = load ptr, ptr %p, align 8
  %nDigit215 = getelementptr inbounds %struct.Decimal, ptr %141, i32 0, i32 4
  %142 = load i32, ptr %nDigit215, align 4
  %conv216 = sext i32 %142 to i64
  %143 = load i32, ptr %iExp, align 4
  %conv217 = sext i32 %143 to i64
  %add218 = add nsw i64 %conv216, %conv217
  %add219 = add nsw i64 %add218, 1
  %call220 = call ptr @sqlite3_realloc64(ptr noundef %140, i64 noundef %add219)
  store ptr %call220, ptr %a213, align 8
  %144 = load ptr, ptr %a213, align 8
  %cmp221 = icmp eq ptr %144, null
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.then212
  br label %new_from_text_failed

if.end224:                                        ; preds = %if.then212
  %145 = load ptr, ptr %a213, align 8
  %146 = load ptr, ptr %p, align 8
  %a225 = getelementptr inbounds %struct.Decimal, ptr %146, i32 0, i32 6
  store ptr %145, ptr %a225, align 8
  %147 = load ptr, ptr %p, align 8
  %a226 = getelementptr inbounds %struct.Decimal, ptr %147, i32 0, i32 6
  %148 = load ptr, ptr %a226, align 8
  %149 = load i32, ptr %iExp, align 4
  %idx.ext227 = sext i32 %149 to i64
  %add.ptr228 = getelementptr inbounds i8, ptr %148, i64 %idx.ext227
  %150 = load ptr, ptr %p, align 8
  %a229 = getelementptr inbounds %struct.Decimal, ptr %150, i32 0, i32 6
  %151 = load ptr, ptr %a229, align 8
  %152 = load ptr, ptr %p, align 8
  %nDigit230 = getelementptr inbounds %struct.Decimal, ptr %152, i32 0, i32 4
  %153 = load i32, ptr %nDigit230, align 4
  %conv231 = sext i32 %153 to i64
  %154 = load ptr, ptr %p, align 8
  %a232 = getelementptr inbounds %struct.Decimal, ptr %154, i32 0, i32 6
  %155 = load ptr, ptr %a232, align 8
  %156 = load i32, ptr %iExp, align 4
  %idx.ext233 = sext i32 %156 to i64
  %add.ptr234 = getelementptr inbounds i8, ptr %155, i64 %idx.ext233
  %157 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr234, i1 false, i1 true, i1 false)
  %call235 = call ptr @__memmove_chk(ptr noundef %add.ptr228, ptr noundef %151, i64 noundef %conv231, i64 noundef %157) #6
  %158 = load ptr, ptr %p, align 8
  %a236 = getelementptr inbounds %struct.Decimal, ptr %158, i32 0, i32 6
  %159 = load ptr, ptr %a236, align 8
  %160 = load i32, ptr %iExp, align 4
  %conv237 = sext i32 %160 to i64
  %161 = load ptr, ptr %p, align 8
  %a238 = getelementptr inbounds %struct.Decimal, ptr %161, i32 0, i32 6
  %162 = load ptr, ptr %a238, align 8
  %163 = call i64 @llvm.objectsize.i64.p0(ptr %162, i1 false, i1 true, i1 false)
  %call239 = call ptr @__memset_chk(ptr noundef %159, i32 noundef 0, i64 noundef %conv237, i64 noundef %163) #6
  %164 = load i32, ptr %iExp, align 4
  %165 = load ptr, ptr %p, align 8
  %nDigit240 = getelementptr inbounds %struct.Decimal, ptr %165, i32 0, i32 4
  %166 = load i32, ptr %nDigit240, align 4
  %add241 = add nsw i32 %166, %164
  store i32 %add241, ptr %nDigit240, align 4
  %167 = load i32, ptr %iExp, align 4
  %168 = load ptr, ptr %p, align 8
  %nFrac242 = getelementptr inbounds %struct.Decimal, ptr %168, i32 0, i32 5
  %169 = load i32, ptr %nFrac242, align 8
  %add243 = add nsw i32 %169, %167
  store i32 %add243, ptr %nFrac242, align 8
  br label %if.end244

if.end244:                                        ; preds = %if.end224, %if.end209
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %if.else187
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.end186
  %170 = load ptr, ptr %p, align 8
  %sign247 = getelementptr inbounds %struct.Decimal, ptr %170, i32 0, i32 0
  %171 = load i8, ptr %sign247, align 8
  %tobool248 = icmp ne i8 %171, 0
  br i1 %tobool248, label %if.then249, label %if.end272

if.then249:                                       ; preds = %if.end246
  store i32 0, ptr %i, align 4
  br label %for.cond250

for.cond250:                                      ; preds = %for.inc263, %if.then249
  %172 = load i32, ptr %i, align 4
  %173 = load ptr, ptr %p, align 8
  %nDigit251 = getelementptr inbounds %struct.Decimal, ptr %173, i32 0, i32 4
  %174 = load i32, ptr %nDigit251, align 4
  %cmp252 = icmp slt i32 %172, %174
  br i1 %cmp252, label %land.rhs254, label %land.end261

land.rhs254:                                      ; preds = %for.cond250
  %175 = load ptr, ptr %p, align 8
  %a255 = getelementptr inbounds %struct.Decimal, ptr %175, i32 0, i32 6
  %176 = load ptr, ptr %a255, align 8
  %177 = load i32, ptr %i, align 4
  %idxprom256 = sext i32 %177 to i64
  %arrayidx257 = getelementptr inbounds i8, ptr %176, i64 %idxprom256
  %178 = load i8, ptr %arrayidx257, align 1
  %conv258 = sext i8 %178 to i32
  %cmp259 = icmp eq i32 %conv258, 0
  br label %land.end261

land.end261:                                      ; preds = %land.rhs254, %for.cond250
  %179 = phi i1 [ false, %for.cond250 ], [ %cmp259, %land.rhs254 ]
  br i1 %179, label %for.body262, label %for.end265

for.body262:                                      ; preds = %land.end261
  br label %for.inc263

for.inc263:                                       ; preds = %for.body262
  %180 = load i32, ptr %i, align 4
  %inc264 = add nsw i32 %180, 1
  store i32 %inc264, ptr %i, align 4
  br label %for.cond250, !llvm.loop !21

for.end265:                                       ; preds = %land.end261
  %181 = load i32, ptr %i, align 4
  %182 = load ptr, ptr %p, align 8
  %nDigit266 = getelementptr inbounds %struct.Decimal, ptr %182, i32 0, i32 4
  %183 = load i32, ptr %nDigit266, align 4
  %cmp267 = icmp sge i32 %181, %183
  br i1 %cmp267, label %if.then269, label %if.end271

if.then269:                                       ; preds = %for.end265
  %184 = load ptr, ptr %p, align 8
  %sign270 = getelementptr inbounds %struct.Decimal, ptr %184, i32 0, i32 0
  store i8 0, ptr %sign270, align 8
  br label %if.end271

if.end271:                                        ; preds = %if.then269, %for.end265
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.end246
  %185 = load ptr, ptr %p, align 8
  %nDigit273 = getelementptr inbounds %struct.Decimal, ptr %185, i32 0, i32 4
  %186 = load i32, ptr %nDigit273, align 4
  %cmp274 = icmp sgt i32 %186, 10000000
  br i1 %cmp274, label %if.then276, label %if.end277

if.then276:                                       ; preds = %if.end272
  br label %new_from_text_failed

if.end277:                                        ; preds = %if.end272
  %187 = load ptr, ptr %p, align 8
  store ptr %187, ptr %retval, align 8
  br label %return

new_from_text_failed:                             ; preds = %if.then276, %if.then223, %if.then173, %if.then8, %if.then2, %if.then
  %188 = load ptr, ptr %p, align 8
  %tobool278 = icmp ne ptr %188, null
  br i1 %tobool278, label %if.then279, label %if.end285

if.then279:                                       ; preds = %new_from_text_failed
  %189 = load ptr, ptr %p, align 8
  %a280 = getelementptr inbounds %struct.Decimal, ptr %189, i32 0, i32 6
  %190 = load ptr, ptr %a280, align 8
  %tobool281 = icmp ne ptr %190, null
  br i1 %tobool281, label %if.then282, label %if.end284

if.then282:                                       ; preds = %if.then279
  %191 = load ptr, ptr %p, align 8
  %a283 = getelementptr inbounds %struct.Decimal, ptr %191, i32 0, i32 6
  %192 = load ptr, ptr %a283, align 8
  call void @sqlite3_free(ptr noundef %192)
  br label %if.end284

if.end284:                                        ; preds = %if.then282, %if.then279
  %193 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %193)
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %new_from_text_failed
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end285, %if.end277
  %194 = load ptr, ptr %retval, align 8
  ret ptr %194
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @decimalFromDouble(double noundef %r) #0 {
entry:
  %retval = alloca ptr, align 8
  %r.addr = alloca double, align 8
  %m = alloca i64, align 8
  %a = alloca i64, align 8
  %e = alloca i32, align 4
  %isNeg = alloca i32, align 4
  %pA = alloca ptr, align 8
  %pX = alloca ptr, align 8
  %zNum = alloca [100 x i8], align 1
  store double %r, ptr %r.addr, align 8
  %0 = load double, ptr %r.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %isNeg, align 4
  %1 = load double, ptr %r.addr, align 8
  %fneg = fneg double %1
  store double %fneg, ptr %r.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %isNeg, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %a, ptr align 8 %r.addr, i64 8, i1 false)
  %2 = load i64, ptr %a, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, ptr %a, align 8
  %cmp2 = icmp eq i64 %3, -9223372036854775808
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %e, align 4
  store i64 0, ptr %m, align 8
  br label %if.end25

if.else4:                                         ; preds = %lor.lhs.false
  %4 = load i64, ptr %a, align 8
  %shr = ashr i64 %4, 52
  %conv = trunc i64 %shr to i32
  store i32 %conv, ptr %e, align 4
  %5 = load i64, ptr %a, align 8
  %and = and i64 %5, 4503599627370495
  store i64 %and, ptr %m, align 8
  %6 = load i32, ptr %e, align 4
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  %7 = load i64, ptr %m, align 8
  %shl = shl i64 %7, 1
  store i64 %shl, ptr %m, align 8
  br label %if.end9

if.else8:                                         ; preds = %if.else4
  %8 = load i64, ptr %m, align 8
  %or = or i64 %8, 4503599627370496
  store i64 %or, ptr %m, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end9
  %9 = load i32, ptr %e, align 4
  %cmp10 = icmp slt i32 %9, 1075
  br i1 %cmp10, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %10 = load i64, ptr %m, align 8
  %cmp12 = icmp sgt i64 %10, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load i64, ptr %m, align 8
  %and14 = and i64 %11, 1
  %cmp15 = icmp eq i64 %and14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i64, ptr %m, align 8
  %shr17 = ashr i64 %13, 1
  store i64 %shr17, ptr %m, align 8
  %14 = load i32, ptr %e, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %e, align 4
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %land.end
  %15 = load i32, ptr %isNeg, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.end
  %16 = load i64, ptr %m, align 8
  %sub = sub nsw i64 0, %16
  store i64 %sub, ptr %m, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %while.end
  %17 = load i32, ptr %e, align 4
  %sub20 = sub nsw i32 %17, 1075
  store i32 %sub20, ptr %e, align 4
  %18 = load i32, ptr %e, align 4
  %cmp21 = icmp sgt i32 %18, 971
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  store ptr null, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.end19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then3
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %19 = load i64, ptr %m, align 8
  %call = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef %arraydecay, ptr noundef @.str.8, i64 noundef %19)
  %arraydecay26 = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %call28 = call i64 @strlen(ptr noundef %arraydecay27)
  %conv29 = trunc i64 %call28 to i32
  %call30 = call ptr @decimalNewFromText(ptr noundef %arraydecay26, i32 noundef %conv29)
  store ptr %call30, ptr %pA, align 8
  %20 = load i32, ptr %e, align 4
  %call31 = call ptr @decimalPow2(i32 noundef %20)
  store ptr %call31, ptr %pX, align 8
  %21 = load ptr, ptr %pA, align 8
  %22 = load ptr, ptr %pX, align 8
  call void @decimalMul(ptr noundef %21, ptr noundef %22)
  %23 = load ptr, ptr %pX, align 8
  call void @decimal_free(ptr noundef %23)
  %24 = load ptr, ptr %pA, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end25, %if.then23
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

declare double @sqlite3_value_double(ptr noundef) #1

declare ptr @sqlite3_value_blob(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @sqlite3_result_error_nomem(ptr noundef) #1

declare void @sqlite3_free(ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #3

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

declare ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #1

declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @decimalPow2(i32 noundef %N) #0 {
entry:
  %retval = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %pA = alloca ptr, align 8
  %pX = alloca ptr, align 8
  store i32 %N, ptr %N.addr, align 4
  store ptr null, ptr %pA, align 8
  store ptr null, ptr %pX, align 8
  %0 = load i32, ptr %N.addr, align 4
  %cmp = icmp slt i32 %0, -20000
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %N.addr, align 4
  %cmp1 = icmp sgt i32 %1, 20000
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %pow2_fault

if.end:                                           ; preds = %lor.lhs.false
  %call = call ptr @decimalNewFromText(ptr noundef @.str.9, i32 noundef 3)
  store ptr %call, ptr %pA, align 8
  %2 = load ptr, ptr %pA, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then4, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %3 = load ptr, ptr %pA, align 8
  %oom = getelementptr inbounds %struct.Decimal, ptr %3, i32 0, i32 1
  %4 = load i8, ptr %oom, align 1
  %conv = sext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false3, %if.end
  br label %pow2_fault

if.end5:                                          ; preds = %lor.lhs.false3
  %5 = load i32, ptr %N.addr, align 4
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %6 = load ptr, ptr %pA, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end5
  %7 = load i32, ptr %N.addr, align 4
  %cmp10 = icmp sgt i32 %7, 0
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %call13 = call ptr @decimalNewFromText(ptr noundef @.str.10, i32 noundef 3)
  store ptr %call13, ptr %pX, align 8
  br label %if.end15

if.else:                                          ; preds = %if.end9
  %8 = load i32, ptr %N.addr, align 4
  %sub = sub nsw i32 0, %8
  store i32 %sub, ptr %N.addr, align 4
  %call14 = call ptr @decimalNewFromText(ptr noundef @.str.11, i32 noundef 3)
  store ptr %call14, ptr %pX, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %9 = load ptr, ptr %pX, align 8
  %cmp16 = icmp eq ptr %9, null
  br i1 %cmp16, label %if.then22, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end15
  %10 = load ptr, ptr %pX, align 8
  %oom19 = getelementptr inbounds %struct.Decimal, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %oom19, align 1
  %conv20 = sext i8 %11 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false18, %if.end15
  br label %pow2_fault

if.end23:                                         ; preds = %lor.lhs.false18
  br label %while.body

while.body:                                       ; preds = %if.end23, %if.end34
  %12 = load i32, ptr %N.addr, align 4
  %and = and i32 %12, 1
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %while.body
  %13 = load ptr, ptr %pA, align 8
  %14 = load ptr, ptr %pX, align 8
  call void @decimalMul(ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %pA, align 8
  %oom26 = getelementptr inbounds %struct.Decimal, ptr %15, i32 0, i32 1
  %16 = load i8, ptr %oom26, align 1
  %tobool27 = icmp ne i8 %16, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  br label %pow2_fault

if.end29:                                         ; preds = %if.then25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %while.body
  %17 = load i32, ptr %N.addr, align 4
  %shr = ashr i32 %17, 1
  store i32 %shr, ptr %N.addr, align 4
  %18 = load i32, ptr %N.addr, align 4
  %cmp31 = icmp eq i32 %18, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  br label %while.end

if.end34:                                         ; preds = %if.end30
  %19 = load ptr, ptr %pX, align 8
  %20 = load ptr, ptr %pX, align 8
  call void @decimalMul(ptr noundef %19, ptr noundef %20)
  br label %while.body

while.end:                                        ; preds = %if.then33
  %21 = load ptr, ptr %pX, align 8
  call void @decimal_free(ptr noundef %21)
  %22 = load ptr, ptr %pA, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

pow2_fault:                                       ; preds = %if.then28, %if.then22, %if.then4, %if.then
  %23 = load ptr, ptr %pA, align 8
  call void @decimal_free(ptr noundef %23)
  %24 = load ptr, ptr %pX, align 8
  call void @decimal_free(ptr noundef %24)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %pow2_fault, %while.end, %if.then8
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimalMul(ptr noundef %pA, ptr noundef %pB) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %acc = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %minFrac = alloca i32, align 4
  %sumDigit = alloca i64, align 8
  %f = alloca i8, align 1
  %carry = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr null, ptr %acc, align 8
  %0 = load ptr, ptr %pA.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pA.addr, align 8
  %oom = getelementptr inbounds %struct.Decimal, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %oom, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pA.addr, align 8
  %isNull = getelementptr inbounds %struct.Decimal, ptr %3, i32 0, i32 2
  %4 = load i8, ptr %isNull, align 2
  %conv2 = sext i8 %4 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false1
  %5 = load ptr, ptr %pB.addr, align 8
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %6 = load ptr, ptr %pB.addr, align 8
  %oom8 = getelementptr inbounds %struct.Decimal, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %oom8, align 1
  %conv9 = sext i8 %7 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %8 = load ptr, ptr %pB.addr, align 8
  %isNull12 = getelementptr inbounds %struct.Decimal, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %isNull12, align 2
  %conv13 = sext i8 %9 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false1, %lor.lhs.false, %entry
  br label %mul_end

if.end:                                           ; preds = %lor.lhs.false11
  %10 = load ptr, ptr %pA.addr, align 8
  %nDigit = getelementptr inbounds %struct.Decimal, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %nDigit, align 4
  %conv15 = sext i32 %11 to i64
  store i64 %conv15, ptr %sumDigit, align 8
  %12 = load ptr, ptr %pB.addr, align 8
  %nDigit16 = getelementptr inbounds %struct.Decimal, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %nDigit16, align 4
  %conv17 = sext i32 %13 to i64
  %14 = load i64, ptr %sumDigit, align 8
  %add = add nsw i64 %14, %conv17
  store i64 %add, ptr %sumDigit, align 8
  %15 = load i64, ptr %sumDigit, align 8
  %add18 = add nsw i64 %15, 2
  store i64 %add18, ptr %sumDigit, align 8
  %16 = load i64, ptr %sumDigit, align 8
  %cmp19 = icmp sgt i64 %16, 10000000
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  %17 = load ptr, ptr %pA.addr, align 8
  %oom22 = getelementptr inbounds %struct.Decimal, ptr %17, i32 0, i32 1
  store i8 1, ptr %oom22, align 1
  br label %return

if.end23:                                         ; preds = %if.end
  %18 = load i64, ptr %sumDigit, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef %18)
  store ptr %call, ptr %acc, align 8
  %19 = load ptr, ptr %acc, align 8
  %cmp24 = icmp eq ptr %19, null
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  %20 = load ptr, ptr %pA.addr, align 8
  %oom27 = getelementptr inbounds %struct.Decimal, ptr %20, i32 0, i32 1
  store i8 1, ptr %oom27, align 1
  br label %mul_end

if.end28:                                         ; preds = %if.end23
  %21 = load ptr, ptr %acc, align 8
  %22 = load ptr, ptr %pA.addr, align 8
  %nDigit29 = getelementptr inbounds %struct.Decimal, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %nDigit29, align 4
  %24 = load ptr, ptr %pB.addr, align 8
  %nDigit30 = getelementptr inbounds %struct.Decimal, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %nDigit30, align 4
  %add31 = add nsw i32 %23, %25
  %add32 = add nsw i32 %add31, 2
  %conv33 = sext i32 %add32 to i64
  %26 = load ptr, ptr %acc, align 8
  %27 = call i64 @llvm.objectsize.i64.p0(ptr %26, i1 false, i1 true, i1 false)
  %call34 = call ptr @__memset_chk(ptr noundef %21, i32 noundef 0, i64 noundef %conv33, i64 noundef %27) #6
  %28 = load ptr, ptr %pA.addr, align 8
  %nFrac = getelementptr inbounds %struct.Decimal, ptr %28, i32 0, i32 5
  %29 = load i32, ptr %nFrac, align 8
  store i32 %29, ptr %minFrac, align 4
  %30 = load ptr, ptr %pB.addr, align 8
  %nFrac35 = getelementptr inbounds %struct.Decimal, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %nFrac35, align 8
  %32 = load i32, ptr %minFrac, align 4
  %cmp36 = icmp slt i32 %31, %32
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end28
  %33 = load ptr, ptr %pB.addr, align 8
  %nFrac39 = getelementptr inbounds %struct.Decimal, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %nFrac39, align 8
  store i32 %34, ptr %minFrac, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end28
  %35 = load ptr, ptr %pA.addr, align 8
  %nDigit41 = getelementptr inbounds %struct.Decimal, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %nDigit41, align 4
  %sub = sub nsw i32 %36, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %if.end40
  %37 = load i32, ptr %i, align 4
  %cmp42 = icmp sge i32 %37, 0
  br i1 %cmp42, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %pA.addr, align 8
  %a = getelementptr inbounds %struct.Decimal, ptr %38, i32 0, i32 6
  %39 = load ptr, ptr %a, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds i8, ptr %39, i64 %idxprom
  %41 = load i8, ptr %arrayidx, align 1
  store i8 %41, ptr %f, align 1
  store i32 0, ptr %carry, align 4
  %42 = load ptr, ptr %pB.addr, align 8
  %nDigit44 = getelementptr inbounds %struct.Decimal, ptr %42, i32 0, i32 4
  %43 = load i32, ptr %nDigit44, align 4
  %sub45 = sub nsw i32 %43, 1
  store i32 %sub45, ptr %j, align 4
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %j, align 4
  %add46 = add nsw i32 %44, %45
  %add47 = add nsw i32 %add46, 3
  store i32 %add47, ptr %k, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc, %for.body
  %46 = load i32, ptr %j, align 4
  %cmp49 = icmp sge i32 %46, 0
  br i1 %cmp49, label %for.body51, label %for.end

for.body51:                                       ; preds = %for.cond48
  %47 = load ptr, ptr %acc, align 8
  %48 = load i32, ptr %k, align 4
  %idxprom52 = sext i32 %48 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %47, i64 %idxprom52
  %49 = load i8, ptr %arrayidx53, align 1
  %conv54 = sext i8 %49 to i32
  %50 = load i8, ptr %f, align 1
  %conv55 = sext i8 %50 to i32
  %51 = load ptr, ptr %pB.addr, align 8
  %a56 = getelementptr inbounds %struct.Decimal, ptr %51, i32 0, i32 6
  %52 = load ptr, ptr %a56, align 8
  %53 = load i32, ptr %j, align 4
  %idxprom57 = sext i32 %53 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %52, i64 %idxprom57
  %54 = load i8, ptr %arrayidx58, align 1
  %conv59 = sext i8 %54 to i32
  %mul = mul nsw i32 %conv55, %conv59
  %add60 = add nsw i32 %conv54, %mul
  %55 = load i32, ptr %carry, align 4
  %add61 = add nsw i32 %add60, %55
  store i32 %add61, ptr %x, align 4
  %56 = load i32, ptr %x, align 4
  %rem = srem i32 %56, 10
  %conv62 = trunc i32 %rem to i8
  %57 = load ptr, ptr %acc, align 8
  %58 = load i32, ptr %k, align 4
  %idxprom63 = sext i32 %58 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %57, i64 %idxprom63
  store i8 %conv62, ptr %arrayidx64, align 1
  %59 = load i32, ptr %x, align 4
  %div = sdiv i32 %59, 10
  store i32 %div, ptr %carry, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body51
  %60 = load i32, ptr %j, align 4
  %dec = add nsw i32 %60, -1
  store i32 %dec, ptr %j, align 4
  %61 = load i32, ptr %k, align 4
  %dec65 = add nsw i32 %61, -1
  store i32 %dec65, ptr %k, align 4
  br label %for.cond48, !llvm.loop !23

for.end:                                          ; preds = %for.cond48
  %62 = load ptr, ptr %acc, align 8
  %63 = load i32, ptr %k, align 4
  %idxprom66 = sext i32 %63 to i64
  %arrayidx67 = getelementptr inbounds i8, ptr %62, i64 %idxprom66
  %64 = load i8, ptr %arrayidx67, align 1
  %conv68 = sext i8 %64 to i32
  %65 = load i32, ptr %carry, align 4
  %add69 = add nsw i32 %conv68, %65
  store i32 %add69, ptr %x, align 4
  %66 = load i32, ptr %x, align 4
  %rem70 = srem i32 %66, 10
  %conv71 = trunc i32 %rem70 to i8
  %67 = load ptr, ptr %acc, align 8
  %68 = load i32, ptr %k, align 4
  %idxprom72 = sext i32 %68 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %67, i64 %idxprom72
  store i8 %conv71, ptr %arrayidx73, align 1
  %69 = load i32, ptr %x, align 4
  %div74 = sdiv i32 %69, 10
  %70 = load ptr, ptr %acc, align 8
  %71 = load i32, ptr %k, align 4
  %sub75 = sub nsw i32 %71, 1
  %idxprom76 = sext i32 %sub75 to i64
  %arrayidx77 = getelementptr inbounds i8, ptr %70, i64 %idxprom76
  %72 = load i8, ptr %arrayidx77, align 1
  %conv78 = sext i8 %72 to i32
  %add79 = add nsw i32 %conv78, %div74
  %conv80 = trunc i32 %add79 to i8
  store i8 %conv80, ptr %arrayidx77, align 1
  br label %for.inc81

for.inc81:                                        ; preds = %for.end
  %73 = load i32, ptr %i, align 4
  %dec82 = add nsw i32 %73, -1
  store i32 %dec82, ptr %i, align 4
  br label %for.cond, !llvm.loop !24

for.end83:                                        ; preds = %for.cond
  %74 = load ptr, ptr %pA.addr, align 8
  %a84 = getelementptr inbounds %struct.Decimal, ptr %74, i32 0, i32 6
  %75 = load ptr, ptr %a84, align 8
  call void @sqlite3_free(ptr noundef %75)
  %76 = load ptr, ptr %acc, align 8
  %77 = load ptr, ptr %pA.addr, align 8
  %a85 = getelementptr inbounds %struct.Decimal, ptr %77, i32 0, i32 6
  store ptr %76, ptr %a85, align 8
  store ptr null, ptr %acc, align 8
  %78 = load ptr, ptr %pB.addr, align 8
  %nDigit86 = getelementptr inbounds %struct.Decimal, ptr %78, i32 0, i32 4
  %79 = load i32, ptr %nDigit86, align 4
  %add87 = add nsw i32 %79, 2
  %80 = load ptr, ptr %pA.addr, align 8
  %nDigit88 = getelementptr inbounds %struct.Decimal, ptr %80, i32 0, i32 4
  %81 = load i32, ptr %nDigit88, align 4
  %add89 = add nsw i32 %81, %add87
  store i32 %add89, ptr %nDigit88, align 4
  %82 = load ptr, ptr %pB.addr, align 8
  %nFrac90 = getelementptr inbounds %struct.Decimal, ptr %82, i32 0, i32 5
  %83 = load i32, ptr %nFrac90, align 8
  %84 = load ptr, ptr %pA.addr, align 8
  %nFrac91 = getelementptr inbounds %struct.Decimal, ptr %84, i32 0, i32 5
  %85 = load i32, ptr %nFrac91, align 8
  %add92 = add nsw i32 %85, %83
  store i32 %add92, ptr %nFrac91, align 8
  %86 = load ptr, ptr %pB.addr, align 8
  %sign = getelementptr inbounds %struct.Decimal, ptr %86, i32 0, i32 0
  %87 = load i8, ptr %sign, align 8
  %conv93 = sext i8 %87 to i32
  %88 = load ptr, ptr %pA.addr, align 8
  %sign94 = getelementptr inbounds %struct.Decimal, ptr %88, i32 0, i32 0
  %89 = load i8, ptr %sign94, align 8
  %conv95 = sext i8 %89 to i32
  %xor = xor i32 %conv95, %conv93
  %conv96 = trunc i32 %xor to i8
  store i8 %conv96, ptr %sign94, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end83
  %90 = load ptr, ptr %pA.addr, align 8
  %nFrac97 = getelementptr inbounds %struct.Decimal, ptr %90, i32 0, i32 5
  %91 = load i32, ptr %nFrac97, align 8
  %92 = load i32, ptr %minFrac, align 4
  %cmp98 = icmp sgt i32 %91, %92
  br i1 %cmp98, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %93 = load ptr, ptr %pA.addr, align 8
  %a100 = getelementptr inbounds %struct.Decimal, ptr %93, i32 0, i32 6
  %94 = load ptr, ptr %a100, align 8
  %95 = load ptr, ptr %pA.addr, align 8
  %nDigit101 = getelementptr inbounds %struct.Decimal, ptr %95, i32 0, i32 4
  %96 = load i32, ptr %nDigit101, align 4
  %sub102 = sub nsw i32 %96, 1
  %idxprom103 = sext i32 %sub102 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %94, i64 %idxprom103
  %97 = load i8, ptr %arrayidx104, align 1
  %conv105 = sext i8 %97 to i32
  %cmp106 = icmp eq i32 %conv105, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %98 = phi i1 [ false, %while.cond ], [ %cmp106, %land.rhs ]
  br i1 %98, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %99 = load ptr, ptr %pA.addr, align 8
  %nFrac108 = getelementptr inbounds %struct.Decimal, ptr %99, i32 0, i32 5
  %100 = load i32, ptr %nFrac108, align 8
  %dec109 = add nsw i32 %100, -1
  store i32 %dec109, ptr %nFrac108, align 8
  %101 = load ptr, ptr %pA.addr, align 8
  %nDigit110 = getelementptr inbounds %struct.Decimal, ptr %101, i32 0, i32 4
  %102 = load i32, ptr %nDigit110, align 4
  %dec111 = add nsw i32 %102, -1
  store i32 %dec111, ptr %nDigit110, align 4
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %land.end
  br label %mul_end

mul_end:                                          ; preds = %while.end, %if.then26, %if.then
  %103 = load ptr, ptr %acc, align 8
  call void @sqlite3_free(ptr noundef %103)
  br label %return

return:                                           ; preds = %mul_end, %if.then21
  ret void
}

declare void @sqlite3_result_null(ptr noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimal_clear(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds %struct.Decimal, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %a, align 8
  call void @sqlite3_free(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @decimal_cmp(ptr noundef %pA, ptr noundef %pB) #0 {
entry:
  %retval = alloca i32, align 4
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %nASig = alloca i32, align 4
  %nBSig = alloca i32, align 4
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %pTemp = alloca ptr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %pA.addr, align 8
  %nFrac = getelementptr inbounds %struct.Decimal, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nFrac, align 8
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %pA.addr, align 8
  %a = getelementptr inbounds %struct.Decimal, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %a, align 8
  %4 = load ptr, ptr %pA.addr, align 8
  %nDigit = getelementptr inbounds %struct.Decimal, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %nDigit, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %pA.addr, align 8
  %nDigit3 = getelementptr inbounds %struct.Decimal, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %nDigit3, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %nDigit3, align 4
  %10 = load ptr, ptr %pA.addr, align 8
  %nFrac4 = getelementptr inbounds %struct.Decimal, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %nFrac4, align 8
  %dec5 = add nsw i32 %11, -1
  store i32 %dec5, ptr %nFrac4, align 8
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %land.end
  br label %while.cond6

while.cond6:                                      ; preds = %while.body20, %while.end
  %12 = load ptr, ptr %pB.addr, align 8
  %nFrac7 = getelementptr inbounds %struct.Decimal, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %nFrac7, align 8
  %cmp8 = icmp sgt i32 %13, 0
  br i1 %cmp8, label %land.rhs10, label %land.end19

land.rhs10:                                       ; preds = %while.cond6
  %14 = load ptr, ptr %pB.addr, align 8
  %a11 = getelementptr inbounds %struct.Decimal, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %a11, align 8
  %16 = load ptr, ptr %pB.addr, align 8
  %nDigit12 = getelementptr inbounds %struct.Decimal, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %nDigit12, align 4
  %sub13 = sub nsw i32 %17, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 %idxprom14
  %18 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %18 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br label %land.end19

land.end19:                                       ; preds = %land.rhs10, %while.cond6
  %19 = phi i1 [ false, %while.cond6 ], [ %cmp17, %land.rhs10 ]
  br i1 %19, label %while.body20, label %while.end25

while.body20:                                     ; preds = %land.end19
  %20 = load ptr, ptr %pB.addr, align 8
  %nDigit21 = getelementptr inbounds %struct.Decimal, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %nDigit21, align 4
  %dec22 = add nsw i32 %21, -1
  store i32 %dec22, ptr %nDigit21, align 4
  %22 = load ptr, ptr %pB.addr, align 8
  %nFrac23 = getelementptr inbounds %struct.Decimal, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %nFrac23, align 8
  %dec24 = add nsw i32 %23, -1
  store i32 %dec24, ptr %nFrac23, align 8
  br label %while.cond6, !llvm.loop !27

while.end25:                                      ; preds = %land.end19
  %24 = load ptr, ptr %pA.addr, align 8
  %sign = getelementptr inbounds %struct.Decimal, ptr %24, i32 0, i32 0
  %25 = load i8, ptr %sign, align 8
  %conv26 = sext i8 %25 to i32
  %26 = load ptr, ptr %pB.addr, align 8
  %sign27 = getelementptr inbounds %struct.Decimal, ptr %26, i32 0, i32 0
  %27 = load i8, ptr %sign27, align 8
  %conv28 = sext i8 %27 to i32
  %cmp29 = icmp ne i32 %conv26, %conv28
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %while.end25
  %28 = load ptr, ptr %pA.addr, align 8
  %sign31 = getelementptr inbounds %struct.Decimal, ptr %28, i32 0, i32 0
  %29 = load i8, ptr %sign31, align 8
  %conv32 = sext i8 %29 to i32
  %tobool = icmp ne i32 %conv32, 0
  %30 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 -1, i32 1
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end25
  %31 = load ptr, ptr %pA.addr, align 8
  %sign33 = getelementptr inbounds %struct.Decimal, ptr %31, i32 0, i32 0
  %32 = load i8, ptr %sign33, align 8
  %tobool34 = icmp ne i8 %32, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end
  %33 = load ptr, ptr %pA.addr, align 8
  store ptr %33, ptr %pTemp, align 8
  %34 = load ptr, ptr %pB.addr, align 8
  store ptr %34, ptr %pA.addr, align 8
  %35 = load ptr, ptr %pTemp, align 8
  store ptr %35, ptr %pB.addr, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end
  %36 = load ptr, ptr %pA.addr, align 8
  %nDigit37 = getelementptr inbounds %struct.Decimal, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %nDigit37, align 4
  %38 = load ptr, ptr %pA.addr, align 8
  %nFrac38 = getelementptr inbounds %struct.Decimal, ptr %38, i32 0, i32 5
  %39 = load i32, ptr %nFrac38, align 8
  %sub39 = sub nsw i32 %37, %39
  store i32 %sub39, ptr %nASig, align 4
  %40 = load ptr, ptr %pB.addr, align 8
  %nDigit40 = getelementptr inbounds %struct.Decimal, ptr %40, i32 0, i32 4
  %41 = load i32, ptr %nDigit40, align 4
  %42 = load ptr, ptr %pB.addr, align 8
  %nFrac41 = getelementptr inbounds %struct.Decimal, ptr %42, i32 0, i32 5
  %43 = load i32, ptr %nFrac41, align 8
  %sub42 = sub nsw i32 %41, %43
  store i32 %sub42, ptr %nBSig, align 4
  %44 = load i32, ptr %nASig, align 4
  %45 = load i32, ptr %nBSig, align 4
  %cmp43 = icmp ne i32 %44, %45
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end36
  %46 = load i32, ptr %nASig, align 4
  %47 = load i32, ptr %nBSig, align 4
  %sub46 = sub nsw i32 %46, %47
  store i32 %sub46, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end36
  %48 = load ptr, ptr %pA.addr, align 8
  %nDigit48 = getelementptr inbounds %struct.Decimal, ptr %48, i32 0, i32 4
  %49 = load i32, ptr %nDigit48, align 4
  store i32 %49, ptr %n, align 4
  %50 = load i32, ptr %n, align 4
  %51 = load ptr, ptr %pB.addr, align 8
  %nDigit49 = getelementptr inbounds %struct.Decimal, ptr %51, i32 0, i32 4
  %52 = load i32, ptr %nDigit49, align 4
  %cmp50 = icmp sgt i32 %50, %52
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end47
  %53 = load ptr, ptr %pB.addr, align 8
  %nDigit53 = getelementptr inbounds %struct.Decimal, ptr %53, i32 0, i32 4
  %54 = load i32, ptr %nDigit53, align 4
  store i32 %54, ptr %n, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end47
  %55 = load ptr, ptr %pA.addr, align 8
  %a55 = getelementptr inbounds %struct.Decimal, ptr %55, i32 0, i32 6
  %56 = load ptr, ptr %a55, align 8
  %57 = load ptr, ptr %pB.addr, align 8
  %a56 = getelementptr inbounds %struct.Decimal, ptr %57, i32 0, i32 6
  %58 = load ptr, ptr %a56, align 8
  %59 = load i32, ptr %n, align 4
  %conv57 = sext i32 %59 to i64
  %call = call i32 @memcmp(ptr noundef %56, ptr noundef %58, i64 noundef %conv57)
  store i32 %call, ptr %rc, align 4
  %60 = load i32, ptr %rc, align 4
  %cmp58 = icmp eq i32 %60, 0
  br i1 %cmp58, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.end54
  %61 = load ptr, ptr %pA.addr, align 8
  %nDigit61 = getelementptr inbounds %struct.Decimal, ptr %61, i32 0, i32 4
  %62 = load i32, ptr %nDigit61, align 4
  %63 = load ptr, ptr %pB.addr, align 8
  %nDigit62 = getelementptr inbounds %struct.Decimal, ptr %63, i32 0, i32 4
  %64 = load i32, ptr %nDigit62, align 4
  %sub63 = sub nsw i32 %62, %64
  store i32 %sub63, ptr %rc, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end54
  %65 = load i32, ptr %rc, align 4
  store i32 %65, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.then45, %if.then
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
}

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimal_add(ptr noundef %pA, ptr noundef %pB) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %nSig = alloca i32, align 4
  %nFrac = alloca i32, align 4
  %nDigit = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %carry = alloca i32, align 4
  %x = alloca i32, align 4
  %aA = alloca ptr, align 8
  %aB = alloca ptr, align 8
  %borrow = alloca i32, align 4
  %x109 = alloca i32, align 4
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  %0 = load ptr, ptr %pA.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end136

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pA.addr, align 8
  %oom = getelementptr inbounds %struct.Decimal, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %oom, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %pB.addr, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then7, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pB.addr, align 8
  %oom4 = getelementptr inbounds %struct.Decimal, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %oom4, align 1
  %conv5 = sext i8 %5 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  %6 = load ptr, ptr %pA.addr, align 8
  %oom8 = getelementptr inbounds %struct.Decimal, ptr %6, i32 0, i32 1
  store i8 1, ptr %oom8, align 1
  br label %if.end136

if.end9:                                          ; preds = %lor.lhs.false3
  %7 = load ptr, ptr %pA.addr, align 8
  %isNull = getelementptr inbounds %struct.Decimal, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %isNull, align 2
  %conv10 = sext i8 %8 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br i1 %tobool11, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end9
  %9 = load ptr, ptr %pB.addr, align 8
  %isNull13 = getelementptr inbounds %struct.Decimal, ptr %9, i32 0, i32 2
  %10 = load i8, ptr %isNull13, align 2
  %conv14 = sext i8 %10 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %lor.lhs.false12, %if.end9
  %11 = load ptr, ptr %pA.addr, align 8
  %isNull17 = getelementptr inbounds %struct.Decimal, ptr %11, i32 0, i32 2
  store i8 1, ptr %isNull17, align 2
  br label %if.end136

if.end18:                                         ; preds = %lor.lhs.false12
  %12 = load ptr, ptr %pA.addr, align 8
  %nDigit19 = getelementptr inbounds %struct.Decimal, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %nDigit19, align 4
  %14 = load ptr, ptr %pA.addr, align 8
  %nFrac20 = getelementptr inbounds %struct.Decimal, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %nFrac20, align 8
  %sub = sub nsw i32 %13, %15
  store i32 %sub, ptr %nSig, align 4
  %16 = load i32, ptr %nSig, align 4
  %tobool21 = icmp ne i32 %16, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end18
  %17 = load ptr, ptr %pA.addr, align 8
  %a = getelementptr inbounds %struct.Decimal, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %a, align 8
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  %20 = load i32, ptr %nSig, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %nSig, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true, %if.end18
  %21 = load i32, ptr %nSig, align 4
  %22 = load ptr, ptr %pB.addr, align 8
  %nDigit27 = getelementptr inbounds %struct.Decimal, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %nDigit27, align 4
  %24 = load ptr, ptr %pB.addr, align 8
  %nFrac28 = getelementptr inbounds %struct.Decimal, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %nFrac28, align 8
  %sub29 = sub nsw i32 %23, %25
  %cmp30 = icmp slt i32 %21, %sub29
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end26
  %26 = load ptr, ptr %pB.addr, align 8
  %nDigit33 = getelementptr inbounds %struct.Decimal, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %nDigit33, align 4
  %28 = load ptr, ptr %pB.addr, align 8
  %nFrac34 = getelementptr inbounds %struct.Decimal, ptr %28, i32 0, i32 5
  %29 = load i32, ptr %nFrac34, align 8
  %sub35 = sub nsw i32 %27, %29
  store i32 %sub35, ptr %nSig, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end26
  %30 = load ptr, ptr %pA.addr, align 8
  %nFrac37 = getelementptr inbounds %struct.Decimal, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %nFrac37, align 8
  store i32 %31, ptr %nFrac, align 4
  %32 = load i32, ptr %nFrac, align 4
  %33 = load ptr, ptr %pB.addr, align 8
  %nFrac38 = getelementptr inbounds %struct.Decimal, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %nFrac38, align 8
  %cmp39 = icmp slt i32 %32, %34
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end36
  %35 = load ptr, ptr %pB.addr, align 8
  %nFrac42 = getelementptr inbounds %struct.Decimal, ptr %35, i32 0, i32 5
  %36 = load i32, ptr %nFrac42, align 8
  store i32 %36, ptr %nFrac, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end36
  %37 = load i32, ptr %nSig, align 4
  %38 = load i32, ptr %nFrac, align 4
  %add = add nsw i32 %37, %38
  %add44 = add nsw i32 %add, 1
  store i32 %add44, ptr %nDigit, align 4
  %39 = load ptr, ptr %pA.addr, align 8
  %40 = load i32, ptr %nDigit, align 4
  %41 = load i32, ptr %nFrac, align 4
  call void @decimal_expand(ptr noundef %39, i32 noundef %40, i32 noundef %41)
  %42 = load ptr, ptr %pB.addr, align 8
  %43 = load i32, ptr %nDigit, align 4
  %44 = load i32, ptr %nFrac, align 4
  call void @decimal_expand(ptr noundef %42, i32 noundef %43, i32 noundef %44)
  %45 = load ptr, ptr %pA.addr, align 8
  %oom45 = getelementptr inbounds %struct.Decimal, ptr %45, i32 0, i32 1
  %46 = load i8, ptr %oom45, align 1
  %conv46 = sext i8 %46 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %if.then52, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end43
  %47 = load ptr, ptr %pB.addr, align 8
  %oom49 = getelementptr inbounds %struct.Decimal, ptr %47, i32 0, i32 1
  %48 = load i8, ptr %oom49, align 1
  %conv50 = sext i8 %48 to i32
  %tobool51 = icmp ne i32 %conv50, 0
  br i1 %tobool51, label %if.then52, label %if.else

if.then52:                                        ; preds = %lor.lhs.false48, %if.end43
  %49 = load ptr, ptr %pA.addr, align 8
  %oom53 = getelementptr inbounds %struct.Decimal, ptr %49, i32 0, i32 1
  store i8 1, ptr %oom53, align 1
  br label %if.end136

if.else:                                          ; preds = %lor.lhs.false48
  %50 = load ptr, ptr %pA.addr, align 8
  %sign = getelementptr inbounds %struct.Decimal, ptr %50, i32 0, i32 0
  %51 = load i8, ptr %sign, align 8
  %conv54 = sext i8 %51 to i32
  %52 = load ptr, ptr %pB.addr, align 8
  %sign55 = getelementptr inbounds %struct.Decimal, ptr %52, i32 0, i32 0
  %53 = load i8, ptr %sign55, align 8
  %conv56 = sext i8 %53 to i32
  %cmp57 = icmp eq i32 %conv54, %conv56
  br i1 %cmp57, label %if.then59, label %if.else87

if.then59:                                        ; preds = %if.else
  store i32 0, ptr %carry, align 4
  %54 = load i32, ptr %nDigit, align 4
  %sub60 = sub nsw i32 %54, 1
  store i32 %sub60, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then59
  %55 = load i32, ptr %i, align 4
  %cmp61 = icmp sge i32 %55, 0
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load ptr, ptr %pA.addr, align 8
  %a63 = getelementptr inbounds %struct.Decimal, ptr %56, i32 0, i32 6
  %57 = load ptr, ptr %a63, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom = sext i32 %58 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %57, i64 %idxprom
  %59 = load i8, ptr %arrayidx64, align 1
  %conv65 = sext i8 %59 to i32
  %60 = load ptr, ptr %pB.addr, align 8
  %a66 = getelementptr inbounds %struct.Decimal, ptr %60, i32 0, i32 6
  %61 = load ptr, ptr %a66, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %62 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %61, i64 %idxprom67
  %63 = load i8, ptr %arrayidx68, align 1
  %conv69 = sext i8 %63 to i32
  %add70 = add nsw i32 %conv65, %conv69
  %64 = load i32, ptr %carry, align 4
  %add71 = add nsw i32 %add70, %64
  store i32 %add71, ptr %x, align 4
  %65 = load i32, ptr %x, align 4
  %cmp72 = icmp sge i32 %65, 10
  br i1 %cmp72, label %if.then74, label %if.else80

if.then74:                                        ; preds = %for.body
  store i32 1, ptr %carry, align 4
  %66 = load i32, ptr %x, align 4
  %sub75 = sub nsw i32 %66, 10
  %conv76 = trunc i32 %sub75 to i8
  %67 = load ptr, ptr %pA.addr, align 8
  %a77 = getelementptr inbounds %struct.Decimal, ptr %67, i32 0, i32 6
  %68 = load ptr, ptr %a77, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom78 = sext i32 %69 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %68, i64 %idxprom78
  store i8 %conv76, ptr %arrayidx79, align 1
  br label %if.end85

if.else80:                                        ; preds = %for.body
  store i32 0, ptr %carry, align 4
  %70 = load i32, ptr %x, align 4
  %conv81 = trunc i32 %70 to i8
  %71 = load ptr, ptr %pA.addr, align 8
  %a82 = getelementptr inbounds %struct.Decimal, ptr %71, i32 0, i32 6
  %72 = load ptr, ptr %a82, align 8
  %73 = load i32, ptr %i, align 4
  %idxprom83 = sext i32 %73 to i64
  %arrayidx84 = getelementptr inbounds i8, ptr %72, i64 %idxprom83
  store i8 %conv81, ptr %arrayidx84, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.else80, %if.then74
  br label %for.inc

for.inc:                                          ; preds = %if.end85
  %74 = load i32, ptr %i, align 4
  %dec86 = add nsw i32 %74, -1
  store i32 %dec86, ptr %i, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %if.end135

if.else87:                                        ; preds = %if.else
  store i32 0, ptr %borrow, align 4
  %75 = load ptr, ptr %pA.addr, align 8
  %a88 = getelementptr inbounds %struct.Decimal, ptr %75, i32 0, i32 6
  %76 = load ptr, ptr %a88, align 8
  %77 = load ptr, ptr %pB.addr, align 8
  %a89 = getelementptr inbounds %struct.Decimal, ptr %77, i32 0, i32 6
  %78 = load ptr, ptr %a89, align 8
  %79 = load i32, ptr %nDigit, align 4
  %conv90 = sext i32 %79 to i64
  %call = call i32 @memcmp(ptr noundef %76, ptr noundef %78, i64 noundef %conv90)
  store i32 %call, ptr %rc, align 4
  %80 = load i32, ptr %rc, align 4
  %cmp91 = icmp slt i32 %80, 0
  br i1 %cmp91, label %if.then93, label %if.else100

if.then93:                                        ; preds = %if.else87
  %81 = load ptr, ptr %pB.addr, align 8
  %a94 = getelementptr inbounds %struct.Decimal, ptr %81, i32 0, i32 6
  %82 = load ptr, ptr %a94, align 8
  store ptr %82, ptr %aA, align 8
  %83 = load ptr, ptr %pA.addr, align 8
  %a95 = getelementptr inbounds %struct.Decimal, ptr %83, i32 0, i32 6
  %84 = load ptr, ptr %a95, align 8
  store ptr %84, ptr %aB, align 8
  %85 = load ptr, ptr %pA.addr, align 8
  %sign96 = getelementptr inbounds %struct.Decimal, ptr %85, i32 0, i32 0
  %86 = load i8, ptr %sign96, align 8
  %tobool97 = icmp ne i8 %86, 0
  %lnot = xor i1 %tobool97, true
  %lnot.ext = zext i1 %lnot to i32
  %conv98 = trunc i32 %lnot.ext to i8
  %87 = load ptr, ptr %pA.addr, align 8
  %sign99 = getelementptr inbounds %struct.Decimal, ptr %87, i32 0, i32 0
  store i8 %conv98, ptr %sign99, align 8
  br label %if.end103

if.else100:                                       ; preds = %if.else87
  %88 = load ptr, ptr %pA.addr, align 8
  %a101 = getelementptr inbounds %struct.Decimal, ptr %88, i32 0, i32 6
  %89 = load ptr, ptr %a101, align 8
  store ptr %89, ptr %aA, align 8
  %90 = load ptr, ptr %pB.addr, align 8
  %a102 = getelementptr inbounds %struct.Decimal, ptr %90, i32 0, i32 6
  %91 = load ptr, ptr %a102, align 8
  store ptr %91, ptr %aB, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then93
  %92 = load i32, ptr %nDigit, align 4
  %sub104 = sub nsw i32 %92, 1
  store i32 %sub104, ptr %i, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc132, %if.end103
  %93 = load i32, ptr %i, align 4
  %cmp106 = icmp sge i32 %93, 0
  br i1 %cmp106, label %for.body108, label %for.end134

for.body108:                                      ; preds = %for.cond105
  %94 = load ptr, ptr %aA, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %95 to i64
  %arrayidx111 = getelementptr inbounds i8, ptr %94, i64 %idxprom110
  %96 = load i8, ptr %arrayidx111, align 1
  %conv112 = sext i8 %96 to i32
  %97 = load ptr, ptr %aB, align 8
  %98 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %98 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %97, i64 %idxprom113
  %99 = load i8, ptr %arrayidx114, align 1
  %conv115 = sext i8 %99 to i32
  %sub116 = sub nsw i32 %conv112, %conv115
  %100 = load i32, ptr %borrow, align 4
  %sub117 = sub nsw i32 %sub116, %100
  store i32 %sub117, ptr %x109, align 4
  %101 = load i32, ptr %x109, align 4
  %cmp118 = icmp slt i32 %101, 0
  br i1 %cmp118, label %if.then120, label %if.else126

if.then120:                                       ; preds = %for.body108
  %102 = load i32, ptr %x109, align 4
  %add121 = add nsw i32 %102, 10
  %conv122 = trunc i32 %add121 to i8
  %103 = load ptr, ptr %pA.addr, align 8
  %a123 = getelementptr inbounds %struct.Decimal, ptr %103, i32 0, i32 6
  %104 = load ptr, ptr %a123, align 8
  %105 = load i32, ptr %i, align 4
  %idxprom124 = sext i32 %105 to i64
  %arrayidx125 = getelementptr inbounds i8, ptr %104, i64 %idxprom124
  store i8 %conv122, ptr %arrayidx125, align 1
  store i32 1, ptr %borrow, align 4
  br label %if.end131

if.else126:                                       ; preds = %for.body108
  %106 = load i32, ptr %x109, align 4
  %conv127 = trunc i32 %106 to i8
  %107 = load ptr, ptr %pA.addr, align 8
  %a128 = getelementptr inbounds %struct.Decimal, ptr %107, i32 0, i32 6
  %108 = load ptr, ptr %a128, align 8
  %109 = load i32, ptr %i, align 4
  %idxprom129 = sext i32 %109 to i64
  %arrayidx130 = getelementptr inbounds i8, ptr %108, i64 %idxprom129
  store i8 %conv127, ptr %arrayidx130, align 1
  store i32 0, ptr %borrow, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else126, %if.then120
  br label %for.inc132

for.inc132:                                       ; preds = %if.end131
  %110 = load i32, ptr %i, align 4
  %dec133 = add nsw i32 %110, -1
  store i32 %dec133, ptr %i, align 4
  br label %for.cond105, !llvm.loop !29

for.end134:                                       ; preds = %for.cond105
  br label %if.end135

if.end135:                                        ; preds = %for.end134, %for.end
  br label %if.end136

if.end136:                                        ; preds = %if.then, %if.then7, %if.then16, %if.end135, %if.then52
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @decimal_expand(ptr noundef %p, i32 noundef %nDigit, i32 noundef %nFrac) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %nDigit.addr = alloca i32, align 4
  %nFrac.addr = alloca i32, align 4
  %nAddSig = alloca i32, align 4
  %nAddFrac = alloca i32, align 4
  %a = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nDigit, ptr %nDigit.addr, align 4
  store i32 %nFrac, ptr %nFrac.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end52

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %nFrac.addr, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %nFrac1 = getelementptr inbounds %struct.Decimal, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nFrac1, align 8
  %sub = sub nsw i32 %1, %3
  store i32 %sub, ptr %nAddFrac, align 4
  %4 = load i32, ptr %nDigit.addr, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %nDigit2 = getelementptr inbounds %struct.Decimal, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %nDigit2, align 4
  %sub3 = sub nsw i32 %4, %6
  %7 = load i32, ptr %nAddFrac, align 4
  %sub4 = sub nsw i32 %sub3, %7
  store i32 %sub4, ptr %nAddSig, align 4
  %8 = load i32, ptr %nAddFrac, align 4
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, ptr %nAddSig, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  br label %if.end52

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %10 = load i32, ptr %nDigit.addr, align 4
  %add = add nsw i32 %10, 1
  %cmp9 = icmp sgt i32 %add, 10000000
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %11 = load ptr, ptr %p.addr, align 8
  %oom = getelementptr inbounds %struct.Decimal, ptr %11, i32 0, i32 1
  store i8 1, ptr %oom, align 1
  br label %if.end52

if.end11:                                         ; preds = %if.end8
  %12 = load ptr, ptr %p.addr, align 8
  %a12 = getelementptr inbounds %struct.Decimal, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %a12, align 8
  %14 = load i32, ptr %nDigit.addr, align 4
  %add13 = add nsw i32 %14, 1
  %conv = sext i32 %add13 to i64
  %call = call ptr @sqlite3_realloc64(ptr noundef %13, i64 noundef %conv)
  store ptr %call, ptr %a, align 8
  %15 = load ptr, ptr %a, align 8
  %cmp14 = icmp eq ptr %15, null
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  %16 = load ptr, ptr %p.addr, align 8
  %oom17 = getelementptr inbounds %struct.Decimal, ptr %16, i32 0, i32 1
  store i8 1, ptr %oom17, align 1
  br label %if.end52

if.end18:                                         ; preds = %if.end11
  %17 = load ptr, ptr %a, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %a19 = getelementptr inbounds %struct.Decimal, ptr %18, i32 0, i32 6
  store ptr %17, ptr %a19, align 8
  %19 = load i32, ptr %nAddSig, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then20, label %if.end35

if.then20:                                        ; preds = %if.end18
  %20 = load ptr, ptr %p.addr, align 8
  %a21 = getelementptr inbounds %struct.Decimal, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %a21, align 8
  %22 = load i32, ptr %nAddSig, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %idx.ext
  %23 = load ptr, ptr %p.addr, align 8
  %a22 = getelementptr inbounds %struct.Decimal, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %a22, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %nDigit23 = getelementptr inbounds %struct.Decimal, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %nDigit23, align 4
  %conv24 = sext i32 %26 to i64
  %27 = load ptr, ptr %p.addr, align 8
  %a25 = getelementptr inbounds %struct.Decimal, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %a25, align 8
  %29 = load i32, ptr %nAddSig, align 4
  %idx.ext26 = sext i32 %29 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %28, i64 %idx.ext26
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr27, i1 false, i1 true, i1 false)
  %call28 = call ptr @__memmove_chk(ptr noundef %add.ptr, ptr noundef %24, i64 noundef %conv24, i64 noundef %30) #6
  %31 = load ptr, ptr %p.addr, align 8
  %a29 = getelementptr inbounds %struct.Decimal, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %a29, align 8
  %33 = load i32, ptr %nAddSig, align 4
  %conv30 = sext i32 %33 to i64
  %34 = load ptr, ptr %p.addr, align 8
  %a31 = getelementptr inbounds %struct.Decimal, ptr %34, i32 0, i32 6
  %35 = load ptr, ptr %a31, align 8
  %36 = call i64 @llvm.objectsize.i64.p0(ptr %35, i1 false, i1 true, i1 false)
  %call32 = call ptr @__memset_chk(ptr noundef %32, i32 noundef 0, i64 noundef %conv30, i64 noundef %36) #6
  %37 = load i32, ptr %nAddSig, align 4
  %38 = load ptr, ptr %p.addr, align 8
  %nDigit33 = getelementptr inbounds %struct.Decimal, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %nDigit33, align 4
  %add34 = add nsw i32 %39, %37
  store i32 %add34, ptr %nDigit33, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then20, %if.end18
  %40 = load i32, ptr %nAddFrac, align 4
  %tobool36 = icmp ne i32 %40, 0
  br i1 %tobool36, label %if.then37, label %if.end52

if.then37:                                        ; preds = %if.end35
  %41 = load ptr, ptr %p.addr, align 8
  %a38 = getelementptr inbounds %struct.Decimal, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %a38, align 8
  %43 = load ptr, ptr %p.addr, align 8
  %nDigit39 = getelementptr inbounds %struct.Decimal, ptr %43, i32 0, i32 4
  %44 = load i32, ptr %nDigit39, align 4
  %idx.ext40 = sext i32 %44 to i64
  %add.ptr41 = getelementptr inbounds i8, ptr %42, i64 %idx.ext40
  %45 = load i32, ptr %nAddFrac, align 4
  %conv42 = sext i32 %45 to i64
  %46 = load ptr, ptr %p.addr, align 8
  %a43 = getelementptr inbounds %struct.Decimal, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %a43, align 8
  %48 = load ptr, ptr %p.addr, align 8
  %nDigit44 = getelementptr inbounds %struct.Decimal, ptr %48, i32 0, i32 4
  %49 = load i32, ptr %nDigit44, align 4
  %idx.ext45 = sext i32 %49 to i64
  %add.ptr46 = getelementptr inbounds i8, ptr %47, i64 %idx.ext45
  %50 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr46, i1 false, i1 true, i1 false)
  %call47 = call ptr @__memset_chk(ptr noundef %add.ptr41, i32 noundef 0, i64 noundef %conv42, i64 noundef %50) #6
  %51 = load i32, ptr %nAddFrac, align 4
  %52 = load ptr, ptr %p.addr, align 8
  %nDigit48 = getelementptr inbounds %struct.Decimal, ptr %52, i32 0, i32 4
  %53 = load i32, ptr %nDigit48, align 4
  %add49 = add nsw i32 %53, %51
  store i32 %add49, ptr %nDigit48, align 4
  %54 = load i32, ptr %nAddFrac, align 4
  %55 = load ptr, ptr %p.addr, align 8
  %nFrac50 = getelementptr inbounds %struct.Decimal, ptr %55, i32 0, i32 5
  %56 = load i32, ptr %nFrac50, align 8
  %add51 = add nsw i32 %56, %54
  store i32 %add51, ptr %nFrac50, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then, %if.then7, %if.then10, %if.then16, %if.then37, %if.end35
  ret void
}

declare ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
