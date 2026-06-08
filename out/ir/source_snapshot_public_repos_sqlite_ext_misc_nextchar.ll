; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/nextchar.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/nextchar.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.nextCharContext = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"next_char\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"AND (%s)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"collate \22%w\22\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"SELECT %s FROM %s WHERE %s>=(?1 || ?2) %s   AND %s<=(?1 || char(1114111)) %s   %s ORDER BY 1 %s ASC LIMIT 1\00", align 1
@readUtf8.validBits = internal constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\00\01\02\03\04\05\06\07\00\01\02\03\00\01\00\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_nextchar_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %pzErrMsg.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str, i32 noundef 3, i32 noundef 2097153, ptr noundef null, ptr noundef @nextCharFunc, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %4, ptr noundef @.str, i32 noundef 4, i32 noundef 2097153, ptr noundef null, ptr noundef @nextCharFunc, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %db.addr, align 8
  %call4 = call i32 @sqlite3_create_function(ptr noundef %6, ptr noundef @.str, i32 noundef 5, i32 noundef 2097153, ptr noundef null, ptr noundef @nextCharFunc, ptr noundef null, ptr noundef null)
  store i32 %call4, ptr %rc, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %7 = load i32, ptr %rc, align 4
  ret i32 %7
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nextCharFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca %struct.nextCharContext, align 8
  %zTable = alloca ptr, align 8
  %zField = alloca ptr, align 8
  %zWhere = alloca ptr, align 8
  %zCollName = alloca ptr, align 8
  %zWhereClause = alloca ptr, align 8
  %zColl = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pRes = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %1)
  store ptr %call, ptr %zTable, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 2
  %3 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @sqlite3_value_text(ptr noundef %3)
  store ptr %call2, ptr %zField, align 8
  store ptr null, ptr %zWhereClause, align 8
  store ptr null, ptr %zColl, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %c, i8 0, i64 56, i1 false)
  %4 = load ptr, ptr %context.addr, align 8
  %call3 = call ptr @sqlite3_context_db_handle(ptr noundef %4)
  %db = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 0
  store ptr %call3, ptr %db, align 8
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx4, align 8
  %call5 = call ptr @sqlite3_value_text(ptr noundef %6)
  %zPrefix = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 2
  store ptr %call5, ptr %zPrefix, align 8
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @sqlite3_value_bytes(ptr noundef %8)
  %nPrefix = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 3
  store i32 %call7, ptr %nPrefix, align 8
  %9 = load ptr, ptr %zTable, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load ptr, ptr %zField, align 8
  %cmp8 = icmp eq ptr %10, null
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %zPrefix10 = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 2
  %11 = load ptr, ptr %zPrefix10, align 8
  %cmp11 = icmp eq ptr %11, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false9
  %12 = load i32, ptr %argc.addr, align 4
  %cmp12 = icmp sge i32 %12, 4
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %13, i64 3
  %14 = load ptr, ptr %arrayidx13, align 8
  %call14 = call ptr @sqlite3_value_text(ptr noundef %14)
  store ptr %call14, ptr %zWhere, align 8
  %cmp15 = icmp ne ptr %call14, null
  br i1 %cmp15, label %land.lhs.true16, label %if.else

land.lhs.true16:                                  ; preds = %land.lhs.true
  %15 = load ptr, ptr %zWhere, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx17, align 1
  %conv = zext i8 %16 to i32
  %cmp18 = icmp ne i32 %conv, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %land.lhs.true16
  %17 = load ptr, ptr %zWhere, align 8
  %call21 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %17)
  store ptr %call21, ptr %zWhereClause, align 8
  %18 = load ptr, ptr %zWhereClause, align 8
  %cmp22 = icmp eq ptr %18, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  %19 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %19)
  br label %return

if.end25:                                         ; preds = %if.then20
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true16, %land.lhs.true, %if.end
  store ptr @.str.2, ptr %zWhereClause, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end25
  %20 = load i32, ptr %argc.addr, align 4
  %cmp27 = icmp sge i32 %20, 5
  br i1 %cmp27, label %land.lhs.true29, label %if.else48

land.lhs.true29:                                  ; preds = %if.end26
  %21 = load ptr, ptr %argv.addr, align 8
  %arrayidx30 = getelementptr inbounds ptr, ptr %21, i64 4
  %22 = load ptr, ptr %arrayidx30, align 8
  %call31 = call ptr @sqlite3_value_text(ptr noundef %22)
  store ptr %call31, ptr %zCollName, align 8
  %cmp32 = icmp ne ptr %call31, null
  br i1 %cmp32, label %land.lhs.true34, label %if.else48

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %23 = load ptr, ptr %zCollName, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %24 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.else48

if.then39:                                        ; preds = %land.lhs.true34
  %25 = load ptr, ptr %zCollName, align 8
  %call40 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.3, ptr noundef %25)
  store ptr %call40, ptr %zColl, align 8
  %26 = load ptr, ptr %zColl, align 8
  %cmp41 = icmp eq ptr %26, null
  br i1 %cmp41, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.then39
  %27 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %27)
  %28 = load ptr, ptr %zWhereClause, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx44, align 1
  %tobool = icmp ne i8 %29, 0
  br i1 %tobool, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then43
  %30 = load ptr, ptr %zWhereClause, align 8
  call void @sqlite3_free(ptr noundef %30)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.then43
  br label %return

if.end47:                                         ; preds = %if.then39
  br label %if.end49

if.else48:                                        ; preds = %land.lhs.true34, %land.lhs.true29, %if.end26
  store ptr @.str.2, ptr %zColl, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.end47
  %31 = load ptr, ptr %zField, align 8
  %32 = load ptr, ptr %zTable, align 8
  %33 = load ptr, ptr %zField, align 8
  %34 = load ptr, ptr %zColl, align 8
  %35 = load ptr, ptr %zField, align 8
  %36 = load ptr, ptr %zColl, align 8
  %37 = load ptr, ptr %zWhereClause, align 8
  %38 = load ptr, ptr %zColl, align 8
  %call50 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.4, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38)
  store ptr %call50, ptr %zSql, align 8
  %39 = load ptr, ptr %zWhereClause, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx51, align 1
  %tobool52 = icmp ne i8 %40, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end49
  %41 = load ptr, ptr %zWhereClause, align 8
  call void @sqlite3_free(ptr noundef %41)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49
  %42 = load ptr, ptr %zColl, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx55, align 1
  %tobool56 = icmp ne i8 %43, 0
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end54
  %44 = load ptr, ptr %zColl, align 8
  call void @sqlite3_free(ptr noundef %44)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54
  %45 = load ptr, ptr %zSql, align 8
  %cmp59 = icmp eq ptr %45, null
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end58
  %46 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %46)
  br label %return

if.end62:                                         ; preds = %if.end58
  %db63 = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 0
  %47 = load ptr, ptr %db63, align 8
  %48 = load ptr, ptr %zSql, align 8
  %pStmt = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 1
  %call64 = call i32 @sqlite3_prepare_v2(ptr noundef %47, ptr noundef %48, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call64, ptr %rc, align 4
  %49 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %49)
  %50 = load i32, ptr %rc, align 4
  %tobool65 = icmp ne i32 %50, 0
  br i1 %tobool65, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end62
  %51 = load ptr, ptr %context.addr, align 8
  %db67 = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 0
  %52 = load ptr, ptr %db67, align 8
  %call68 = call ptr @sqlite3_errmsg(ptr noundef %52)
  call void @sqlite3_result_error(ptr noundef %51, ptr noundef %call68, i32 noundef -1)
  br label %return

if.end69:                                         ; preds = %if.end62
  call void @findNextChars(ptr noundef %c)
  %mallocFailed = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 7
  %53 = load i32, ptr %mallocFailed, align 8
  %tobool70 = icmp ne i32 %53, 0
  br i1 %tobool70, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.end69
  %54 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %54)
  br label %if.end88

if.else72:                                        ; preds = %if.end69
  %nUsed = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 5
  %55 = load i32, ptr %nUsed, align 8
  %mul = mul nsw i32 %55, 4
  %add = add nsw i32 %mul, 1
  %conv73 = sext i32 %add to i64
  %call74 = call ptr @sqlite3_malloc64(i64 noundef %conv73)
  store ptr %call74, ptr %pRes, align 8
  %56 = load ptr, ptr %pRes, align 8
  %cmp75 = icmp eq ptr %56, null
  br i1 %cmp75, label %if.then77, label %if.else78

if.then77:                                        ; preds = %if.else72
  %57 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %57)
  br label %if.end87

if.else78:                                        ; preds = %if.else72
  store i32 0, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else78
  %58 = load i32, ptr %i, align 4
  %nUsed79 = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 5
  %59 = load i32, ptr %nUsed79, align 8
  %cmp80 = icmp slt i32 %58, %59
  br i1 %cmp80, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load ptr, ptr %pRes, align 8
  %61 = load i32, ptr %n, align 4
  %idx.ext = sext i32 %61 to i64
  %add.ptr = getelementptr inbounds i8, ptr %60, i64 %idx.ext
  %aResult = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 6
  %62 = load ptr, ptr %aResult, align 8
  %63 = load i32, ptr %i, align 4
  %idxprom = sext i32 %63 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %62, i64 %idxprom
  %64 = load i32, ptr %arrayidx82, align 4
  %call83 = call i32 @writeUtf8(ptr noundef %add.ptr, i32 noundef %64)
  %65 = load i32, ptr %n, align 4
  %add84 = add nsw i32 %65, %call83
  store i32 %add84, ptr %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i32, ptr %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %67 = load ptr, ptr %pRes, align 8
  %68 = load i32, ptr %n, align 4
  %idxprom85 = sext i32 %68 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %67, i64 %idxprom85
  store i8 0, ptr %arrayidx86, align 1
  %69 = load ptr, ptr %context.addr, align 8
  %70 = load ptr, ptr %pRes, align 8
  %71 = load i32, ptr %n, align 4
  call void @sqlite3_result_text(ptr noundef %69, ptr noundef %70, i32 noundef %71, ptr noundef @sqlite3_free)
  br label %if.end87

if.end87:                                         ; preds = %for.end, %if.then77
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then71
  %pStmt89 = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 1
  %72 = load ptr, ptr %pStmt89, align 8
  %call90 = call i32 @sqlite3_finalize(ptr noundef %72)
  %aResult91 = getelementptr inbounds %struct.nextCharContext, ptr %c, i32 0, i32 6
  %73 = load ptr, ptr %aResult91, align 8
  call void @sqlite3_free(ptr noundef %73)
  br label %return

return:                                           ; preds = %if.end88, %if.then66, %if.then61, %if.end46, %if.then24, %if.then
  ret void
}

declare ptr @sqlite3_value_text(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @sqlite3_context_db_handle(ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare void @sqlite3_result_error_nomem(ptr noundef) #1

declare void @sqlite3_free(ptr noundef) #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @sqlite3_errmsg(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findNextChars(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %cPrev = alloca i32, align 4
  %zPrev = alloca [8 x i8], align 1
  %n = alloca i32, align 4
  %rc = alloca i32, align 4
  %zOut = alloca ptr, align 8
  %cNext = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %cPrev, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end20, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %pStmt = getelementptr inbounds %struct.nextCharContext, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pStmt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %zPrefix = getelementptr inbounds %struct.nextCharContext, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %zPrefix, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %nPrefix = getelementptr inbounds %struct.nextCharContext, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %nPrefix, align 8
  %call = call i32 @sqlite3_bind_text(ptr noundef %1, i32 noundef 1, ptr noundef %3, i32 noundef %5, ptr noundef null)
  %arraydecay = getelementptr inbounds [8 x i8], ptr %zPrev, i64 0, i64 0
  %6 = load i32, ptr %cPrev, align 4
  %add = add i32 %6, 1
  %call1 = call i32 @writeUtf8(ptr noundef %arraydecay, i32 noundef %add)
  store i32 %call1, ptr %n, align 4
  %7 = load ptr, ptr %p.addr, align 8
  %pStmt2 = getelementptr inbounds %struct.nextCharContext, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pStmt2, align 8
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %zPrev, i64 0, i64 0
  %9 = load i32, ptr %n, align 4
  %call4 = call i32 @sqlite3_bind_text(ptr noundef %8, i32 noundef 2, ptr noundef %arraydecay3, i32 noundef %9, ptr noundef null)
  %10 = load ptr, ptr %p.addr, align 8
  %pStmt5 = getelementptr inbounds %struct.nextCharContext, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pStmt5, align 8
  %call6 = call i32 @sqlite3_step(ptr noundef %11)
  store i32 %call6, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %12, 101
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %13 = load ptr, ptr %p.addr, align 8
  %pStmt7 = getelementptr inbounds %struct.nextCharContext, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %pStmt7, align 8
  %call8 = call i32 @sqlite3_reset(ptr noundef %14)
  br label %return

if.else:                                          ; preds = %for.cond
  %15 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 %15, 100
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %16 = load i32, ptr %rc, align 4
  %17 = load ptr, ptr %p.addr, align 8
  %otherError = getelementptr inbounds %struct.nextCharContext, ptr %17, i32 0, i32 8
  store i32 %16, ptr %otherError, align 4
  br label %return

if.else11:                                        ; preds = %if.else
  %18 = load ptr, ptr %p.addr, align 8
  %pStmt12 = getelementptr inbounds %struct.nextCharContext, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %pStmt12, align 8
  %call13 = call ptr @sqlite3_column_text(ptr noundef %19, i32 noundef 0)
  store ptr %call13, ptr %zOut, align 8
  %20 = load ptr, ptr %zOut, align 8
  %21 = load ptr, ptr %p.addr, align 8
  %nPrefix14 = getelementptr inbounds %struct.nextCharContext, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %nPrefix14, align 8
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %idx.ext
  %call15 = call i32 @readUtf8(ptr noundef %add.ptr, ptr noundef %cNext)
  store i32 %call15, ptr %n, align 4
  %23 = load ptr, ptr %p.addr, align 8
  %pStmt16 = getelementptr inbounds %struct.nextCharContext, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pStmt16, align 8
  %call17 = call i32 @sqlite3_reset(ptr noundef %24)
  %25 = load ptr, ptr %p.addr, align 8
  %26 = load i32, ptr %cNext, align 4
  call void @nextCharAppend(ptr noundef %25, i32 noundef %26)
  %27 = load i32, ptr %cNext, align 4
  store i32 %27, ptr %cPrev, align 4
  %28 = load ptr, ptr %p.addr, align 8
  %mallocFailed = getelementptr inbounds %struct.nextCharContext, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %mallocFailed, align 8
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.else11
  br label %return

if.end:                                           ; preds = %if.else11
  br label %if.end19

if.end19:                                         ; preds = %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19
  br label %for.cond

return:                                           ; preds = %if.then18, %if.then10, %if.then
  ret void
}

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @writeUtf8(ptr noundef %z, i32 noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %cmp = icmp ult i32 %0, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4
  %and = and i32 %1, 255
  %conv = trunc i32 %and to i8
  %2 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c.addr, align 4
  %cmp1 = icmp ult i32 %3, 2048
  br i1 %cmp1, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %c.addr, align 4
  %shr = lshr i32 %4, 6
  %and4 = and i32 %shr, 31
  %conv5 = trunc i32 %and4 to i8
  %conv6 = zext i8 %conv5 to i32
  %add = add nsw i32 192, %conv6
  %conv7 = trunc i32 %add to i8
  %5 = load ptr, ptr %z.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %5, i64 0
  store i8 %conv7, ptr %arrayidx8, align 1
  %6 = load i32, ptr %c.addr, align 4
  %and9 = and i32 %6, 63
  %conv10 = trunc i32 %and9 to i8
  %conv11 = zext i8 %conv10 to i32
  %add12 = add nsw i32 128, %conv11
  %conv13 = trunc i32 %add12 to i8
  %7 = load ptr, ptr %z.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %conv13, ptr %arrayidx14, align 1
  store i32 2, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  %8 = load i32, ptr %c.addr, align 4
  %cmp16 = icmp ult i32 %8, 65536
  br i1 %cmp16, label %if.then18, label %if.end39

if.then18:                                        ; preds = %if.end15
  %9 = load i32, ptr %c.addr, align 4
  %shr19 = lshr i32 %9, 12
  %and20 = and i32 %shr19, 15
  %conv21 = trunc i32 %and20 to i8
  %conv22 = zext i8 %conv21 to i32
  %add23 = add nsw i32 224, %conv22
  %conv24 = trunc i32 %add23 to i8
  %10 = load ptr, ptr %z.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %10, i64 0
  store i8 %conv24, ptr %arrayidx25, align 1
  %11 = load i32, ptr %c.addr, align 4
  %shr26 = lshr i32 %11, 6
  %and27 = and i32 %shr26, 63
  %conv28 = trunc i32 %and27 to i8
  %conv29 = zext i8 %conv28 to i32
  %add30 = add nsw i32 128, %conv29
  %conv31 = trunc i32 %add30 to i8
  %12 = load ptr, ptr %z.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %conv31, ptr %arrayidx32, align 1
  %13 = load i32, ptr %c.addr, align 4
  %and33 = and i32 %13, 63
  %conv34 = trunc i32 %and33 to i8
  %conv35 = zext i8 %conv34 to i32
  %add36 = add nsw i32 128, %conv35
  %conv37 = trunc i32 %add36 to i8
  %14 = load ptr, ptr %z.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 %conv37, ptr %arrayidx38, align 1
  store i32 3, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end15
  %15 = load i32, ptr %c.addr, align 4
  %shr40 = lshr i32 %15, 18
  %and41 = and i32 %shr40, 7
  %conv42 = trunc i32 %and41 to i8
  %conv43 = zext i8 %conv42 to i32
  %add44 = add nsw i32 240, %conv43
  %conv45 = trunc i32 %add44 to i8
  %16 = load ptr, ptr %z.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %16, i64 0
  store i8 %conv45, ptr %arrayidx46, align 1
  %17 = load i32, ptr %c.addr, align 4
  %shr47 = lshr i32 %17, 12
  %and48 = and i32 %shr47, 63
  %conv49 = trunc i32 %and48 to i8
  %conv50 = zext i8 %conv49 to i32
  %add51 = add nsw i32 128, %conv50
  %conv52 = trunc i32 %add51 to i8
  %18 = load ptr, ptr %z.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 %conv52, ptr %arrayidx53, align 1
  %19 = load i32, ptr %c.addr, align 4
  %shr54 = lshr i32 %19, 6
  %and55 = and i32 %shr54, 63
  %conv56 = trunc i32 %and55 to i8
  %conv57 = zext i8 %conv56 to i32
  %add58 = add nsw i32 128, %conv57
  %conv59 = trunc i32 %add58 to i8
  %20 = load ptr, ptr %z.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %20, i64 2
  store i8 %conv59, ptr %arrayidx60, align 1
  %21 = load i32, ptr %c.addr, align 4
  %and61 = and i32 %21, 63
  %conv62 = trunc i32 %and61 to i8
  %conv63 = zext i8 %conv62 to i32
  %add64 = add nsw i32 128, %conv63
  %conv65 = trunc i32 %add64 to i8
  %22 = load ptr, ptr %z.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %22, i64 3
  store i8 %conv65, ptr %arrayidx66, align 1
  store i32 4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then18, %if.then3, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @sqlite3_finalize(ptr noundef) #1

declare i32 @sqlite3_bind_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

declare i32 @sqlite3_reset(ptr noundef) #1

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @readUtf8(ptr noundef %z, ptr noundef %pOut) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %cmp = icmp ult i32 %2, 192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %c, align 4
  %4 = load ptr, ptr %pOut.addr, align 8
  store i32 %3, ptr %4, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, ptr %n, align 4
  %5 = load i32, ptr %c, align 4
  %sub = sub i32 %5, 192
  %idxprom = zext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds [64 x i8], ptr @readUtf8.validBits, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  store i32 %conv3, ptr %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %7 = load ptr, ptr %z.addr, align 8
  %8 = load i32, ptr %n, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 %idxprom4
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %and = and i32 %conv6, 192
  %cmp7 = icmp eq i32 %and, 128
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, ptr %c, align 4
  %shl = shl i32 %10, 6
  %11 = load ptr, ptr %z.addr, align 8
  %12 = load i32, ptr %n, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %n, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 %idxprom9
  %13 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %and12 = and i32 63, %conv11
  %add = add i32 %shl, %and12
  store i32 %add, ptr %c, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %14 = load i32, ptr %c, align 4
  %cmp13 = icmp ult i32 %14, 128
  br i1 %cmp13, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %15 = load i32, ptr %c, align 4
  %and15 = and i32 %15, -2048
  %cmp16 = icmp eq i32 %and15, 55296
  br i1 %cmp16, label %if.then22, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %16 = load i32, ptr %c, align 4
  %and19 = and i32 %16, -2
  %cmp20 = icmp eq i32 %and19, 65534
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %while.end
  store i32 65533, ptr %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then22, %lor.lhs.false18
  %17 = load i32, ptr %c, align 4
  %18 = load ptr, ptr %pOut.addr, align 8
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %n, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nextCharAppend(ptr noundef %p, i32 noundef %c) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %aNew = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %nUsed = getelementptr inbounds %struct.nextCharContext, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %nUsed, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p.addr, align 8
  %aResult = getelementptr inbounds %struct.nextCharContext, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %aResult, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %7 = load i32, ptr %c.addr, align 4
  %cmp1 = icmp eq i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %p.addr, align 8
  %nUsed2 = getelementptr inbounds %struct.nextCharContext, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %nUsed2, align 8
  %add = add nsw i32 %10, 1
  %11 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds %struct.nextCharContext, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %nAlloc, align 4
  %cmp3 = icmp sgt i32 %add, %12
  br i1 %cmp3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %for.end
  %13 = load ptr, ptr %p.addr, align 8
  %nAlloc5 = getelementptr inbounds %struct.nextCharContext, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %nAlloc5, align 4
  %mul = mul nsw i32 %14, 2
  %add6 = add nsw i32 %mul, 30
  store i32 %add6, ptr %n, align 4
  %15 = load ptr, ptr %p.addr, align 8
  %aResult7 = getelementptr inbounds %struct.nextCharContext, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %aResult7, align 8
  %17 = load i32, ptr %n, align 4
  %conv = sext i32 %17 to i64
  %mul8 = mul i64 %conv, 4
  %call = call ptr @sqlite3_realloc64(ptr noundef %16, i64 noundef %mul8)
  store ptr %call, ptr %aNew, align 8
  %18 = load ptr, ptr %aNew, align 8
  %cmp9 = icmp eq ptr %18, null
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then4
  %19 = load ptr, ptr %p.addr, align 8
  %mallocFailed = getelementptr inbounds %struct.nextCharContext, ptr %19, i32 0, i32 7
  store i32 1, ptr %mallocFailed, align 8
  br label %return

if.else:                                          ; preds = %if.then4
  %20 = load ptr, ptr %aNew, align 8
  %21 = load ptr, ptr %p.addr, align 8
  %aResult12 = getelementptr inbounds %struct.nextCharContext, ptr %21, i32 0, i32 6
  store ptr %20, ptr %aResult12, align 8
  %22 = load i32, ptr %n, align 4
  %23 = load ptr, ptr %p.addr, align 8
  %nAlloc13 = getelementptr inbounds %struct.nextCharContext, ptr %23, i32 0, i32 4
  store i32 %22, ptr %nAlloc13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %for.end
  %24 = load i32, ptr %c.addr, align 4
  %25 = load ptr, ptr %p.addr, align 8
  %aResult16 = getelementptr inbounds %struct.nextCharContext, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %aResult16, align 8
  %27 = load ptr, ptr %p.addr, align 8
  %nUsed17 = getelementptr inbounds %struct.nextCharContext, ptr %27, i32 0, i32 5
  %28 = load i32, ptr %nUsed17, align 8
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, ptr %nUsed17, align 8
  %idxprom19 = sext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %26, i64 %idxprom19
  store i32 %24, ptr %arrayidx20, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then11, %if.then
  ret void
}

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

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
