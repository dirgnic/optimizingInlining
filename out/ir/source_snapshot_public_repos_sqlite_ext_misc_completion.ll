; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/completion.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/completion.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.completion_vtab = type { %struct.sqlite3_vtab, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.completion_cursor = type { %struct.sqlite3_vtab_cursor, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, i64, i32, i32 }
%struct.sqlite3_vtab_cursor = type { ptr }

@.str = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@completionModule = internal global %struct.sqlite3_module { i32 0, ptr null, ptr @completionConnect, ptr @completionBestIndex, ptr @completionDisconnect, ptr null, ptr @completionOpen, ptr @completionClose, ptr @completionFilter, ptr @completionNext, ptr @completionEof, ptr @completionColumn, ptr @completionRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [97 x i8] c"CREATE TABLE x(  candidate TEXT,  prefix TEXT HIDDEN,  wholeline TEXT HIDDEN,  phase INT HIDDEN)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"PRAGMA database_list\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%sSELECT name FROM \22%w\22.sqlite_schema\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" UNION \00", align 1
@.str.8 = private unnamed_addr constant [113 x i8] c"%sSELECT pti.name FROM \22%w\22.sqlite_schema AS sm JOIN pragma_table_xinfo(sm.name,%Q) AS pti WHERE sm.type='table'\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3CompletionVtabInit(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_module(ptr noundef %0, ptr noundef @.str, ptr noundef @completionModule, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  ret i32 %1
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_completion_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3CompletionVtabInit(ptr noundef %2)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  %0 = load ptr, ptr %pAux.addr, align 8
  %1 = load i32, ptr %argc.addr, align 4
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load ptr, ptr %pzErr.addr, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %call = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %4, i32 noundef 2)
  %5 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_declare_vtab(ptr noundef %5, ptr noundef @.str.1)
  store i32 %call1, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call2 = call ptr @sqlite3_malloc64(i64 noundef 32)
  store ptr %call2, ptr %pNew, align 8
  %7 = load ptr, ptr %pNew, align 8
  %8 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %pNew, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %pNew, align 8
  %11 = load ptr, ptr %pNew, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %11, i1 false, i1 true, i1 false)
  %call5 = call ptr @__memset_chk(ptr noundef %10, i32 noundef 0, i64 noundef 32, i64 noundef %12) #5
  %13 = load ptr, ptr %db.addr, align 8
  %14 = load ptr, ptr %pNew, align 8
  %db6 = getelementptr inbounds %struct.completion_vtab, ptr %14, i32 0, i32 1
  store ptr %13, ptr %db6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %15 = load i32, ptr %rc, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then4
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %idxNum = alloca i32, align 4
  %prefixIdx = alloca i32, align 4
  %wholelineIdx = alloca i32, align 4
  %nArg = alloca i32, align 4
  %pConstraint = alloca ptr, align 8
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i32 0, ptr %idxNum, align 4
  store i32 -1, ptr %prefixIdx, align 4
  store i32 -1, ptr %wholelineIdx, align 4
  store i32 0, ptr %nArg, align 4
  %0 = load ptr, ptr %tab.addr, align 8
  %1 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %aConstraint, align 8
  store ptr %2, ptr %pConstraint, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nConstraint, align 8
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pConstraint, align 8
  %usable = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %6, i32 0, i32 2
  %7 = load i8, ptr %usable, align 1
  %conv = zext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %pConstraint, align 8
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %op, align 4
  %conv3 = zext i8 %9 to i32
  %cmp4 = icmp ne i32 %conv3, 2
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %pConstraint, align 8
  %iColumn = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %iColumn, align 4
  switch i32 %11, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end7
  %12 = load i32, ptr %i, align 4
  store i32 %12, ptr %prefixIdx, align 4
  %13 = load i32, ptr %idxNum, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %idxNum, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end7
  %14 = load i32, ptr %i, align 4
  store i32 %14, ptr %wholelineIdx, align 4
  %15 = load i32, ptr %idxNum, align 4
  %or9 = or i32 %15, 2
  store i32 %or9, ptr %idxNum, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end7, %sw.bb8, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then6, %if.then
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  %17 = load ptr, ptr %pConstraint, align 8
  %incdec.ptr = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %pConstraint, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %prefixIdx, align 4
  %cmp10 = icmp sge i32 %18, 0
  br i1 %cmp10, label %if.then12, label %if.end17

if.then12:                                        ; preds = %for.end
  %19 = load i32, ptr %nArg, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, ptr %nArg, align 4
  %20 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %aConstraintUsage, align 8
  %22 = load i32, ptr %prefixIdx, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %21, i64 %idxprom
  %argvIndex = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx, i32 0, i32 0
  store i32 %inc13, ptr %argvIndex, align 4
  %23 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage14 = getelementptr inbounds %struct.sqlite3_index_info, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %aConstraintUsage14, align 8
  %25 = load i32, ptr %prefixIdx, align 4
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %24, i64 %idxprom15
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx16, i32 0, i32 1
  store i8 1, ptr %omit, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %for.end
  %26 = load i32, ptr %wholelineIdx, align 4
  %cmp18 = icmp sge i32 %26, 0
  br i1 %cmp18, label %if.then20, label %if.end30

if.then20:                                        ; preds = %if.end17
  %27 = load i32, ptr %nArg, align 4
  %inc21 = add nsw i32 %27, 1
  store i32 %inc21, ptr %nArg, align 4
  %28 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage22 = getelementptr inbounds %struct.sqlite3_index_info, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %aConstraintUsage22, align 8
  %30 = load i32, ptr %wholelineIdx, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %29, i64 %idxprom23
  %argvIndex25 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx24, i32 0, i32 0
  store i32 %inc21, ptr %argvIndex25, align 4
  %31 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage26 = getelementptr inbounds %struct.sqlite3_index_info, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %aConstraintUsage26, align 8
  %33 = load i32, ptr %wholelineIdx, align 4
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %32, i64 %idxprom27
  %omit29 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx28, i32 0, i32 1
  store i8 1, ptr %omit29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then20, %if.end17
  %34 = load i32, ptr %idxNum, align 4
  %35 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum31 = getelementptr inbounds %struct.sqlite3_index_info, ptr %35, i32 0, i32 5
  store i32 %34, ptr %idxNum31, align 8
  %36 = load i32, ptr %nArg, align 4
  %mul = mul nsw i32 1000, %36
  %conv32 = sitofp i32 %mul to double
  %sub = fsub double 5.000000e+03, %conv32
  %37 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %37, i32 0, i32 9
  store double %sub, ptr %estimatedCost, align 8
  %38 = load i32, ptr %nArg, align 4
  %mul33 = mul nsw i32 100, %38
  %sub34 = sub nsw i32 500, %mul33
  %conv35 = sext i32 %sub34 to i64
  %39 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows = getelementptr inbounds %struct.sqlite3_index_info, ptr %39, i32 0, i32 10
  store i64 %conv35, ptr %estimatedRows, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  call void @sqlite3_free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionOpen(ptr noundef %p, ptr noundef %ppCursor) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %ppCursor.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 80)
  store ptr %call, ptr %pCur, align 8
  %0 = load ptr, ptr %pCur, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pCur, align 8
  %2 = load ptr, ptr %pCur, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 80, i64 noundef %3) #5
  %4 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.completion_vtab, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pCur, align 8
  %db2 = getelementptr inbounds %struct.completion_cursor, ptr %6, i32 0, i32 1
  store ptr %5, ptr %db2, align 8
  %7 = load ptr, ptr %pCur, align 8
  %base = getelementptr inbounds %struct.completion_cursor, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base, ptr %8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  call void @completionCursorReset(ptr noundef %0)
  %1 = load ptr, ptr %cur.addr, align 8
  call void @sqlite3_free(ptr noundef %1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %iArg = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store i32 0, ptr %iArg, align 4
  %1 = load ptr, ptr %idxStr.addr, align 8
  %2 = load i32, ptr %argc.addr, align 4
  %3 = load ptr, ptr %pCur, align 8
  call void @completionCursorReset(ptr noundef %3)
  %4 = load i32, ptr %idxNum.addr, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %argv.addr, align 8
  %6 = load i32, ptr %iArg, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_bytes(ptr noundef %7)
  %8 = load ptr, ptr %pCur, align 8
  %nPrefix = getelementptr inbounds %struct.completion_cursor, ptr %8, i32 0, i32 2
  store i32 %call, ptr %nPrefix, align 8
  %9 = load ptr, ptr %pCur, align 8
  %nPrefix1 = getelementptr inbounds %struct.completion_cursor, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %nPrefix1, align 8
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.then
  %11 = load ptr, ptr %argv.addr, align 8
  %12 = load i32, ptr %iArg, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %11, i64 %idxprom3
  %13 = load ptr, ptr %arrayidx4, align 8
  %call5 = call ptr @sqlite3_value_text(ptr noundef %13)
  %call6 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.2, ptr noundef %call5)
  %14 = load ptr, ptr %pCur, align 8
  %zPrefix = getelementptr inbounds %struct.completion_cursor, ptr %14, i32 0, i32 4
  store ptr %call6, ptr %zPrefix, align 8
  %15 = load ptr, ptr %pCur, align 8
  %zPrefix7 = getelementptr inbounds %struct.completion_cursor, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %zPrefix7, align 8
  %cmp8 = icmp eq ptr %16, null
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then2
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  %17 = load ptr, ptr %pCur, align 8
  %zPrefix10 = getelementptr inbounds %struct.completion_cursor, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %zPrefix10, align 8
  %call11 = call i64 @strlen(ptr noundef %18)
  %conv = trunc i64 %call11 to i32
  %19 = load ptr, ptr %pCur, align 8
  %nPrefix12 = getelementptr inbounds %struct.completion_cursor, ptr %19, i32 0, i32 2
  store i32 %conv, ptr %nPrefix12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  store i32 1, ptr %iArg, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  %20 = load i32, ptr %idxNum.addr, align 4
  %and15 = and i32 %20, 2
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.end39

if.then17:                                        ; preds = %if.end14
  %21 = load ptr, ptr %argv.addr, align 8
  %22 = load i32, ptr %iArg, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %21, i64 %idxprom18
  %23 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 @sqlite3_value_bytes(ptr noundef %23)
  %24 = load ptr, ptr %pCur, align 8
  %nLine = getelementptr inbounds %struct.completion_cursor, ptr %24, i32 0, i32 3
  store i32 %call20, ptr %nLine, align 4
  %25 = load ptr, ptr %pCur, align 8
  %nLine21 = getelementptr inbounds %struct.completion_cursor, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %nLine21, align 4
  %cmp22 = icmp sgt i32 %26, 0
  br i1 %cmp22, label %if.then24, label %if.end38

if.then24:                                        ; preds = %if.then17
  %27 = load ptr, ptr %argv.addr, align 8
  %28 = load i32, ptr %iArg, align 4
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %27, i64 %idxprom25
  %29 = load ptr, ptr %arrayidx26, align 8
  %call27 = call ptr @sqlite3_value_text(ptr noundef %29)
  %call28 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.2, ptr noundef %call27)
  %30 = load ptr, ptr %pCur, align 8
  %zLine = getelementptr inbounds %struct.completion_cursor, ptr %30, i32 0, i32 5
  store ptr %call28, ptr %zLine, align 8
  %31 = load ptr, ptr %pCur, align 8
  %zLine29 = getelementptr inbounds %struct.completion_cursor, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %zLine29, align 8
  %cmp30 = icmp eq ptr %32, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then24
  store i32 7, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.then24
  %33 = load ptr, ptr %pCur, align 8
  %zLine34 = getelementptr inbounds %struct.completion_cursor, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %zLine34, align 8
  %call35 = call i64 @strlen(ptr noundef %34)
  %conv36 = trunc i64 %call35 to i32
  %35 = load ptr, ptr %pCur, align 8
  %nLine37 = getelementptr inbounds %struct.completion_cursor, ptr %35, i32 0, i32 3
  store i32 %conv36, ptr %nLine37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end33, %if.then17
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end14
  %36 = load ptr, ptr %pCur, align 8
  %zLine40 = getelementptr inbounds %struct.completion_cursor, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %zLine40, align 8
  %cmp41 = icmp ne ptr %37, null
  br i1 %cmp41, label %land.lhs.true, label %if.end84

land.lhs.true:                                    ; preds = %if.end39
  %38 = load ptr, ptr %pCur, align 8
  %zPrefix43 = getelementptr inbounds %struct.completion_cursor, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %zPrefix43, align 8
  %cmp44 = icmp eq ptr %39, null
  br i1 %cmp44, label %if.then46, label %if.end84

if.then46:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr %pCur, align 8
  %nLine47 = getelementptr inbounds %struct.completion_cursor, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %nLine47, align 4
  store i32 %41, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then46
  %42 = load i32, ptr %i, align 4
  %cmp48 = icmp sgt i32 %42, 0
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %43 = load ptr, ptr %pCur, align 8
  %zLine50 = getelementptr inbounds %struct.completion_cursor, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %zLine50, align 8
  %45 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %45, 1
  %idxprom51 = sext i32 %sub to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %44, i64 %idxprom51
  %46 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %46 to i32
  %call54 = call i32 @isalnum(i32 noundef %conv53) #6
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %47 = load ptr, ptr %pCur, align 8
  %zLine56 = getelementptr inbounds %struct.completion_cursor, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %zLine56, align 8
  %49 = load i32, ptr %i, align 4
  %sub57 = sub nsw i32 %49, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %48, i64 %idxprom58
  %50 = load i8, ptr %arrayidx59, align 1
  %conv60 = sext i8 %50 to i32
  %cmp61 = icmp eq i32 %conv60, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %51 = phi i1 [ true, %land.rhs ], [ %cmp61, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %52 = phi i1 [ false, %while.cond ], [ %51, %lor.end ]
  br i1 %52, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %53 = load i32, ptr %i, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, ptr %i, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %54 = load ptr, ptr %pCur, align 8
  %nLine63 = getelementptr inbounds %struct.completion_cursor, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %nLine63, align 4
  %56 = load i32, ptr %i, align 4
  %sub64 = sub nsw i32 %55, %56
  %57 = load ptr, ptr %pCur, align 8
  %nPrefix65 = getelementptr inbounds %struct.completion_cursor, ptr %57, i32 0, i32 2
  store i32 %sub64, ptr %nPrefix65, align 8
  %58 = load ptr, ptr %pCur, align 8
  %nPrefix66 = getelementptr inbounds %struct.completion_cursor, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %nPrefix66, align 8
  %cmp67 = icmp sgt i32 %59, 0
  br i1 %cmp67, label %if.then69, label %if.end83

if.then69:                                        ; preds = %while.end
  %60 = load ptr, ptr %pCur, align 8
  %nPrefix70 = getelementptr inbounds %struct.completion_cursor, ptr %60, i32 0, i32 2
  %61 = load i32, ptr %nPrefix70, align 8
  %62 = load ptr, ptr %pCur, align 8
  %zLine71 = getelementptr inbounds %struct.completion_cursor, ptr %62, i32 0, i32 5
  %63 = load ptr, ptr %zLine71, align 8
  %64 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %64 to i64
  %add.ptr = getelementptr inbounds i8, ptr %63, i64 %idx.ext
  %call72 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.3, i32 noundef %61, ptr noundef %add.ptr)
  %65 = load ptr, ptr %pCur, align 8
  %zPrefix73 = getelementptr inbounds %struct.completion_cursor, ptr %65, i32 0, i32 4
  store ptr %call72, ptr %zPrefix73, align 8
  %66 = load ptr, ptr %pCur, align 8
  %zPrefix74 = getelementptr inbounds %struct.completion_cursor, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %zPrefix74, align 8
  %cmp75 = icmp eq ptr %67, null
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then69
  store i32 7, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.then69
  %68 = load ptr, ptr %pCur, align 8
  %zPrefix79 = getelementptr inbounds %struct.completion_cursor, ptr %68, i32 0, i32 4
  %69 = load ptr, ptr %zPrefix79, align 8
  %call80 = call i64 @strlen(ptr noundef %69)
  %conv81 = trunc i64 %call80 to i32
  %70 = load ptr, ptr %pCur, align 8
  %nPrefix82 = getelementptr inbounds %struct.completion_cursor, ptr %70, i32 0, i32 2
  store i32 %conv81, ptr %nPrefix82, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.end78, %while.end
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %land.lhs.true, %if.end39
  %71 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.completion_cursor, ptr %71, i32 0, i32 9
  store i64 0, ptr %iRowid, align 8
  %72 = load ptr, ptr %pCur, align 8
  %ePhase = getelementptr inbounds %struct.completion_cursor, ptr %72, i32 0, i32 10
  store i32 1, ptr %ePhase, align 8
  %73 = load ptr, ptr %pVtabCursor.addr, align 8
  %call85 = call i32 @completionNext(ptr noundef %73)
  store i32 %call85, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end84, %if.then77, %if.then32, %if.then9
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionNext(ptr noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %eNextPhase = alloca i32, align 4
  %iCol = alloca i32, align 4
  %rc = alloca i32, align 4
  %pS2 = alloca ptr, align 8
  %pStr = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %zSep = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %pS245 = alloca ptr, align 8
  %pStr46 = alloca ptr, align 8
  %zSql49 = alloca ptr, align 8
  %zSep50 = alloca ptr, align 8
  %zDb57 = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store i32 0, ptr %eNextPhase, align 4
  store i32 -1, ptr %iCol, align 4
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.completion_cursor, ptr %1, i32 0, i32 9
  %2 = load i64, ptr %iRowid, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, ptr %iRowid, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end113, %if.end99, %if.then79, %entry
  %3 = load ptr, ptr %pCur, align 8
  %ePhase = getelementptr inbounds %struct.completion_cursor, ptr %3, i32 0, i32 10
  %4 = load i32, ptr %ePhase, align 8
  %cmp = icmp ne i32 %4, 11
  br i1 %cmp, label %while.body, label %while.end114

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %pCur, align 8
  %ePhase1 = getelementptr inbounds %struct.completion_cursor, ptr %5, i32 0, i32 10
  %6 = load i32, ptr %ePhase1, align 8
  switch i32 %6, label %sw.epilog [
    i32 1, label %sw.bb
    i32 7, label %sw.bb8
    i32 8, label %sw.bb14
    i32 9, label %sw.bb41
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load ptr, ptr %pCur, align 8
  %j = getelementptr inbounds %struct.completion_cursor, ptr %7, i32 0, i32 11
  %8 = load i32, ptr %j, align 4
  %call = call i32 @sqlite3_keyword_count()
  %cmp2 = icmp sge i32 %8, %call
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %9 = load ptr, ptr %pCur, align 8
  %zCurrentRow = getelementptr inbounds %struct.completion_cursor, ptr %9, i32 0, i32 6
  store ptr null, ptr %zCurrentRow, align 8
  %10 = load ptr, ptr %pCur, align 8
  %ePhase3 = getelementptr inbounds %struct.completion_cursor, ptr %10, i32 0, i32 10
  store i32 7, ptr %ePhase3, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %pCur, align 8
  %j4 = getelementptr inbounds %struct.completion_cursor, ptr %11, i32 0, i32 11
  %12 = load i32, ptr %j4, align 4
  %inc5 = add nsw i32 %12, 1
  store i32 %inc5, ptr %j4, align 4
  %13 = load ptr, ptr %pCur, align 8
  %zCurrentRow6 = getelementptr inbounds %struct.completion_cursor, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %pCur, align 8
  %szRow = getelementptr inbounds %struct.completion_cursor, ptr %14, i32 0, i32 7
  %call7 = call i32 @sqlite3_keyword_name(i32 noundef %12, ptr noundef %zCurrentRow6, ptr noundef %szRow)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 -1, ptr %iCol, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  %15 = load ptr, ptr %pCur, align 8
  %pStmt = getelementptr inbounds %struct.completion_cursor, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %pStmt, align 8
  %cmp9 = icmp eq ptr %16, null
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %sw.bb8
  %17 = load ptr, ptr %pCur, align 8
  %db = getelementptr inbounds %struct.completion_cursor, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %db, align 8
  %19 = load ptr, ptr %pCur, align 8
  %pStmt11 = getelementptr inbounds %struct.completion_cursor, ptr %19, i32 0, i32 8
  %call12 = call i32 @sqlite3_prepare_v2(ptr noundef %18, ptr noundef @.str.4, i32 noundef -1, ptr noundef %pStmt11, ptr noundef null)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %sw.bb8
  store i32 1, ptr %iCol, align 4
  store i32 8, ptr %eNextPhase, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  %20 = load ptr, ptr %pCur, align 8
  %pStmt15 = getelementptr inbounds %struct.completion_cursor, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %pStmt15, align 8
  %cmp16 = icmp eq ptr %21, null
  br i1 %cmp16, label %if.then17, label %if.end40

if.then17:                                        ; preds = %sw.bb14
  %22 = load ptr, ptr %pCur, align 8
  %db18 = getelementptr inbounds %struct.completion_cursor, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %db18, align 8
  %call19 = call ptr @sqlite3_str_new(ptr noundef %23)
  store ptr %call19, ptr %pStr, align 8
  store ptr null, ptr %zSql, align 8
  store ptr @.str.5, ptr %zSep, align 8
  %24 = load ptr, ptr %pCur, align 8
  %db20 = getelementptr inbounds %struct.completion_cursor, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %db20, align 8
  %call21 = call i32 @sqlite3_prepare_v2(ptr noundef %25, ptr noundef @.str.4, i32 noundef -1, ptr noundef %pS2, ptr noundef null)
  br label %while.cond22

while.cond22:                                     ; preds = %while.body25, %if.then17
  %26 = load ptr, ptr %pS2, align 8
  %call23 = call i32 @sqlite3_step(ptr noundef %26)
  %cmp24 = icmp eq i32 %call23, 100
  br i1 %cmp24, label %while.body25, label %while.end

while.body25:                                     ; preds = %while.cond22
  %27 = load ptr, ptr %pS2, align 8
  %call26 = call ptr @sqlite3_column_text(ptr noundef %27, i32 noundef 1)
  store ptr %call26, ptr %zDb, align 8
  %28 = load ptr, ptr %pStr, align 8
  %29 = load ptr, ptr %zSep, align 8
  %30 = load ptr, ptr %zDb, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %28, ptr noundef @.str.6, ptr noundef %29, ptr noundef %30)
  store ptr @.str.7, ptr %zSep, align 8
  br label %while.cond22, !llvm.loop !9

while.end:                                        ; preds = %while.cond22
  %31 = load ptr, ptr %pS2, align 8
  %call27 = call i32 @sqlite3_finalize(ptr noundef %31)
  store i32 %call27, ptr %rc, align 4
  %32 = load ptr, ptr %pStr, align 8
  %call28 = call ptr @sqlite3_str_finish(ptr noundef %32)
  store ptr %call28, ptr %zSql, align 8
  %33 = load ptr, ptr %zSql, align 8
  %cmp29 = icmp eq ptr %33, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %while.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %while.end
  %34 = load i32, ptr %rc, align 4
  %cmp32 = icmp eq i32 %34, 0
  br i1 %cmp32, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end31
  %35 = load ptr, ptr %pCur, align 8
  %db34 = getelementptr inbounds %struct.completion_cursor, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %db34, align 8
  %37 = load ptr, ptr %zSql, align 8
  %38 = load ptr, ptr %pCur, align 8
  %pStmt35 = getelementptr inbounds %struct.completion_cursor, ptr %38, i32 0, i32 8
  %call36 = call i32 @sqlite3_prepare_v2(ptr noundef %36, ptr noundef %37, i32 noundef -1, ptr noundef %pStmt35, ptr noundef null)
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end31
  %39 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %39)
  %40 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end37
  %41 = load i32, ptr %rc, align 4
  store i32 %41, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end37
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %sw.bb14
  store i32 0, ptr %iCol, align 4
  store i32 9, ptr %eNextPhase, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %while.body
  %42 = load ptr, ptr %pCur, align 8
  %pStmt42 = getelementptr inbounds %struct.completion_cursor, ptr %42, i32 0, i32 8
  %43 = load ptr, ptr %pStmt42, align 8
  %cmp43 = icmp eq ptr %43, null
  br i1 %cmp43, label %if.then44, label %if.end74

if.then44:                                        ; preds = %sw.bb41
  %44 = load ptr, ptr %pCur, align 8
  %db47 = getelementptr inbounds %struct.completion_cursor, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %db47, align 8
  %call48 = call ptr @sqlite3_str_new(ptr noundef %45)
  store ptr %call48, ptr %pStr46, align 8
  store ptr null, ptr %zSql49, align 8
  store ptr @.str.5, ptr %zSep50, align 8
  %46 = load ptr, ptr %pCur, align 8
  %db51 = getelementptr inbounds %struct.completion_cursor, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %db51, align 8
  %call52 = call i32 @sqlite3_prepare_v2(ptr noundef %47, ptr noundef @.str.4, i32 noundef -1, ptr noundef %pS245, ptr noundef null)
  br label %while.cond53

while.cond53:                                     ; preds = %while.body56, %if.then44
  %48 = load ptr, ptr %pS245, align 8
  %call54 = call i32 @sqlite3_step(ptr noundef %48)
  %cmp55 = icmp eq i32 %call54, 100
  br i1 %cmp55, label %while.body56, label %while.end59

while.body56:                                     ; preds = %while.cond53
  %49 = load ptr, ptr %pS245, align 8
  %call58 = call ptr @sqlite3_column_text(ptr noundef %49, i32 noundef 1)
  store ptr %call58, ptr %zDb57, align 8
  %50 = load ptr, ptr %pStr46, align 8
  %51 = load ptr, ptr %zSep50, align 8
  %52 = load ptr, ptr %zDb57, align 8
  %53 = load ptr, ptr %zDb57, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %50, ptr noundef @.str.8, ptr noundef %51, ptr noundef %52, ptr noundef %53)
  store ptr @.str.7, ptr %zSep50, align 8
  br label %while.cond53, !llvm.loop !10

while.end59:                                      ; preds = %while.cond53
  %54 = load ptr, ptr %pS245, align 8
  %call60 = call i32 @sqlite3_finalize(ptr noundef %54)
  store i32 %call60, ptr %rc, align 4
  %55 = load ptr, ptr %pStr46, align 8
  %call61 = call ptr @sqlite3_str_finish(ptr noundef %55)
  store ptr %call61, ptr %zSql49, align 8
  %56 = load ptr, ptr %zSql49, align 8
  %cmp62 = icmp eq ptr %56, null
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %while.end59
  store i32 7, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %while.end59
  %57 = load i32, ptr %rc, align 4
  %cmp65 = icmp eq i32 %57, 0
  br i1 %cmp65, label %if.then66, label %if.end70

if.then66:                                        ; preds = %if.end64
  %58 = load ptr, ptr %pCur, align 8
  %db67 = getelementptr inbounds %struct.completion_cursor, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %db67, align 8
  %60 = load ptr, ptr %zSql49, align 8
  %61 = load ptr, ptr %pCur, align 8
  %pStmt68 = getelementptr inbounds %struct.completion_cursor, ptr %61, i32 0, i32 8
  %call69 = call i32 @sqlite3_prepare_v2(ptr noundef %59, ptr noundef %60, i32 noundef -1, ptr noundef %pStmt68, ptr noundef null)
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end64
  %62 = load ptr, ptr %zSql49, align 8
  call void @sqlite3_free(ptr noundef %62)
  %63 = load i32, ptr %rc, align 4
  %tobool71 = icmp ne i32 %63, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  %64 = load i32, ptr %rc, align 4
  store i32 %64, ptr %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.end70
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %sw.bb41
  store i32 0, ptr %iCol, align 4
  store i32 11, ptr %eNextPhase, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end74, %if.end40, %if.end13, %if.end
  %65 = load i32, ptr %iCol, align 4
  %cmp75 = icmp slt i32 %65, 0
  br i1 %cmp75, label %if.then76, label %if.else81

if.then76:                                        ; preds = %sw.epilog
  %66 = load ptr, ptr %pCur, align 8
  %zCurrentRow77 = getelementptr inbounds %struct.completion_cursor, ptr %66, i32 0, i32 6
  %67 = load ptr, ptr %zCurrentRow77, align 8
  %cmp78 = icmp eq ptr %67, null
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.then76
  br label %while.cond, !llvm.loop !11

if.end80:                                         ; preds = %if.then76
  br label %if.end101

if.else81:                                        ; preds = %sw.epilog
  %68 = load ptr, ptr %pCur, align 8
  %pStmt82 = getelementptr inbounds %struct.completion_cursor, ptr %68, i32 0, i32 8
  %69 = load ptr, ptr %pStmt82, align 8
  %call83 = call i32 @sqlite3_step(ptr noundef %69)
  %cmp84 = icmp eq i32 %call83, 100
  br i1 %cmp84, label %if.then85, label %if.else92

if.then85:                                        ; preds = %if.else81
  %70 = load ptr, ptr %pCur, align 8
  %pStmt86 = getelementptr inbounds %struct.completion_cursor, ptr %70, i32 0, i32 8
  %71 = load ptr, ptr %pStmt86, align 8
  %72 = load i32, ptr %iCol, align 4
  %call87 = call ptr @sqlite3_column_text(ptr noundef %71, i32 noundef %72)
  %73 = load ptr, ptr %pCur, align 8
  %zCurrentRow88 = getelementptr inbounds %struct.completion_cursor, ptr %73, i32 0, i32 6
  store ptr %call87, ptr %zCurrentRow88, align 8
  %74 = load ptr, ptr %pCur, align 8
  %pStmt89 = getelementptr inbounds %struct.completion_cursor, ptr %74, i32 0, i32 8
  %75 = load ptr, ptr %pStmt89, align 8
  %76 = load i32, ptr %iCol, align 4
  %call90 = call i32 @sqlite3_column_bytes(ptr noundef %75, i32 noundef %76)
  %77 = load ptr, ptr %pCur, align 8
  %szRow91 = getelementptr inbounds %struct.completion_cursor, ptr %77, i32 0, i32 7
  store i32 %call90, ptr %szRow91, align 8
  br label %if.end100

if.else92:                                        ; preds = %if.else81
  %78 = load ptr, ptr %pCur, align 8
  %pStmt93 = getelementptr inbounds %struct.completion_cursor, ptr %78, i32 0, i32 8
  %79 = load ptr, ptr %pStmt93, align 8
  %call94 = call i32 @sqlite3_finalize(ptr noundef %79)
  store i32 %call94, ptr %rc, align 4
  %80 = load ptr, ptr %pCur, align 8
  %pStmt95 = getelementptr inbounds %struct.completion_cursor, ptr %80, i32 0, i32 8
  store ptr null, ptr %pStmt95, align 8
  %81 = load i32, ptr %eNextPhase, align 4
  %82 = load ptr, ptr %pCur, align 8
  %ePhase96 = getelementptr inbounds %struct.completion_cursor, ptr %82, i32 0, i32 10
  store i32 %81, ptr %ePhase96, align 8
  %83 = load i32, ptr %rc, align 4
  %tobool97 = icmp ne i32 %83, 0
  br i1 %tobool97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.else92
  %84 = load i32, ptr %rc, align 4
  store i32 %84, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %if.else92
  br label %while.cond, !llvm.loop !11

if.end100:                                        ; preds = %if.then85
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end80
  %85 = load ptr, ptr %pCur, align 8
  %nPrefix = getelementptr inbounds %struct.completion_cursor, ptr %85, i32 0, i32 2
  %86 = load i32, ptr %nPrefix, align 8
  %cmp102 = icmp eq i32 %86, 0
  br i1 %cmp102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end101
  br label %while.end114

if.end104:                                        ; preds = %if.end101
  %87 = load ptr, ptr %pCur, align 8
  %nPrefix105 = getelementptr inbounds %struct.completion_cursor, ptr %87, i32 0, i32 2
  %88 = load i32, ptr %nPrefix105, align 8
  %89 = load ptr, ptr %pCur, align 8
  %szRow106 = getelementptr inbounds %struct.completion_cursor, ptr %89, i32 0, i32 7
  %90 = load i32, ptr %szRow106, align 8
  %cmp107 = icmp sle i32 %88, %90
  br i1 %cmp107, label %land.lhs.true, label %if.end113

land.lhs.true:                                    ; preds = %if.end104
  %91 = load ptr, ptr %pCur, align 8
  %zPrefix = getelementptr inbounds %struct.completion_cursor, ptr %91, i32 0, i32 4
  %92 = load ptr, ptr %zPrefix, align 8
  %93 = load ptr, ptr %pCur, align 8
  %zCurrentRow108 = getelementptr inbounds %struct.completion_cursor, ptr %93, i32 0, i32 6
  %94 = load ptr, ptr %zCurrentRow108, align 8
  %95 = load ptr, ptr %pCur, align 8
  %nPrefix109 = getelementptr inbounds %struct.completion_cursor, ptr %95, i32 0, i32 2
  %96 = load i32, ptr %nPrefix109, align 8
  %call110 = call i32 @sqlite3_strnicmp(ptr noundef %92, ptr noundef %94, i32 noundef %96)
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %land.lhs.true
  br label %while.end114

if.end113:                                        ; preds = %land.lhs.true, %if.end104
  br label %while.cond, !llvm.loop !11

while.end114:                                     ; preds = %if.then112, %if.then103, %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end114, %if.then98, %if.then72, %if.then63, %if.then38, %if.then30
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %ePhase = getelementptr inbounds %struct.completion_cursor, ptr %1, i32 0, i32 10
  %2 = load i32, ptr %ePhase, align 8
  %cmp = icmp sge i32 %2, 11
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load i32, ptr %i.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %pCur, align 8
  %zCurrentRow = getelementptr inbounds %struct.completion_cursor, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %zCurrentRow, align 8
  %5 = load ptr, ptr %pCur, align 8
  %szRow = getelementptr inbounds %struct.completion_cursor, ptr %5, i32 0, i32 7
  %6 = load i32, ptr %szRow, align 8
  call void @sqlite3_result_text(ptr noundef %2, ptr noundef %4, i32 noundef %6, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %7 = load ptr, ptr %ctx.addr, align 8
  %8 = load ptr, ptr %pCur, align 8
  %zPrefix = getelementptr inbounds %struct.completion_cursor, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %zPrefix, align 8
  call void @sqlite3_result_text(ptr noundef %7, ptr noundef %9, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %10 = load ptr, ptr %ctx.addr, align 8
  %11 = load ptr, ptr %pCur, align 8
  %zLine = getelementptr inbounds %struct.completion_cursor, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %zLine, align 8
  call void @sqlite3_result_text(ptr noundef %10, ptr noundef %12, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %13 = load ptr, ptr %ctx.addr, align 8
  %14 = load ptr, ptr %pCur, align 8
  %ePhase = getelementptr inbounds %struct.completion_cursor, ptr %14, i32 0, i32 10
  %15 = load i32, ptr %ePhase, align 8
  call void @sqlite3_result_int(ptr noundef %13, i32 noundef %15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @completionRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.completion_cursor, ptr %1, i32 0, i32 9
  %2 = load i64, ptr %iRowid, align 8
  %3 = load ptr, ptr %pRowid.addr, align 8
  store i64 %2, ptr %3, align 8
  ret i32 0
}

declare i32 @sqlite3_vtab_config(ptr noundef, i32 noundef, ...) #1

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare void @sqlite3_free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @completionCursorReset(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %zPrefix = getelementptr inbounds %struct.completion_cursor, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zPrefix, align 8
  call void @sqlite3_free(ptr noundef %1)
  %2 = load ptr, ptr %pCur.addr, align 8
  %zPrefix1 = getelementptr inbounds %struct.completion_cursor, ptr %2, i32 0, i32 4
  store ptr null, ptr %zPrefix1, align 8
  %3 = load ptr, ptr %pCur.addr, align 8
  %nPrefix = getelementptr inbounds %struct.completion_cursor, ptr %3, i32 0, i32 2
  store i32 0, ptr %nPrefix, align 8
  %4 = load ptr, ptr %pCur.addr, align 8
  %zLine = getelementptr inbounds %struct.completion_cursor, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %zLine, align 8
  call void @sqlite3_free(ptr noundef %5)
  %6 = load ptr, ptr %pCur.addr, align 8
  %zLine2 = getelementptr inbounds %struct.completion_cursor, ptr %6, i32 0, i32 5
  store ptr null, ptr %zLine2, align 8
  %7 = load ptr, ptr %pCur.addr, align 8
  %nLine = getelementptr inbounds %struct.completion_cursor, ptr %7, i32 0, i32 3
  store i32 0, ptr %nLine, align 4
  %8 = load ptr, ptr %pCur.addr, align 8
  %pStmt = getelementptr inbounds %struct.completion_cursor, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %pStmt, align 8
  %call = call i32 @sqlite3_finalize(ptr noundef %9)
  %10 = load ptr, ptr %pCur.addr, align 8
  %pStmt3 = getelementptr inbounds %struct.completion_cursor, ptr %10, i32 0, i32 8
  store ptr null, ptr %pStmt3, align 8
  %11 = load ptr, ptr %pCur.addr, align 8
  %j = getelementptr inbounds %struct.completion_cursor, ptr %11, i32 0, i32 11
  store i32 0, ptr %j, align 4
  ret void
}

declare i32 @sqlite3_finalize(ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare ptr @sqlite3_value_text(ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isalnum(i32 noundef) #4

declare i32 @sqlite3_keyword_count() #1

declare i32 @sqlite3_keyword_name(i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare ptr @sqlite3_str_new(ptr noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #1

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #1

declare ptr @sqlite3_str_finish(ptr noundef) #1

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) #1

declare i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
