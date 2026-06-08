; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/explain.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/explain.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.explain_vtab = type { %struct.sqlite3_vtab, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.explain_cursor = type { %struct.sqlite3_vtab_cursor, ptr, ptr, ptr, i32 }
%struct.sqlite3_vtab_cursor = type { ptr }

@.str = private unnamed_addr constant [8 x i8] c"explain\00", align 1
@explainModule = internal global %struct.sqlite3_module { i32 0, ptr null, ptr @explainConnect, ptr @explainBestIndex, ptr @explainDisconnect, ptr null, ptr @explainOpen, ptr @explainClose, ptr @explainFilter, ptr @explainNext, ptr @explainEof, ptr @explainColumn, ptr @explainRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"CREATE TABLE x(addr,opcode,p1,p2,p3,p4,p5,comment,sql HIDDEN)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"EXPLAIN %s\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3ExplainVtabInit(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_module(ptr noundef %0, ptr noundef @.str, ptr noundef @explainModule, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  ret i32 %1
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_explain_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3ExplainVtabInit(ptr noundef %1)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
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
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef @.str.1)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = call ptr @sqlite3_malloc64(i64 noundef 32)
  store ptr %call1, ptr %pNew, align 8
  %2 = load ptr, ptr %pNew, align 8
  %3 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %2, ptr %3, align 8
  %4 = load ptr, ptr %pNew, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %pNew, align 8
  %6 = load ptr, ptr %pNew, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memset_chk(ptr noundef %5, i32 noundef 0, i64 noundef 32, i64 noundef %7) #4
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %pNew, align 8
  %db5 = getelementptr inbounds %struct.explain_vtab, ptr %9, i32 0, i32 1
  store ptr %8, ptr %db5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %retval = alloca i32, align 4
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  %unusable = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i32 -1, ptr %idx, align 4
  store i32 0, ptr %unusable, align 4
  %0 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows = getelementptr inbounds %struct.sqlite3_index_info, ptr %0, i32 0, i32 10
  store i64 500, ptr %estimatedRows, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nConstraint, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %aConstraint, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %iColumn = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %iColumn, align 4
  %cmp1 = icmp ne i32 %8, 8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %p, align 8
  %usable = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %9, i32 0, i32 2
  %10 = load i8, ptr %usable, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %unusable, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %p, align 8
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %11, i32 0, i32 1
  %12 = load i8, ptr %op, align 4
  %conv = zext i8 %12 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  %13 = load i32, ptr %i, align 4
  store i32 %13, ptr %idx, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.then
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %idx, align 4
  %cmp8 = icmp sge i32 %15, 0
  br i1 %cmp8, label %if.then10, label %if.else16

if.then10:                                        ; preds = %for.end
  %16 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %16, i32 0, i32 9
  store double 1.000000e+01, ptr %estimatedCost, align 8
  %17 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %17, i32 0, i32 5
  store i32 1, ptr %idxNum, align 8
  %18 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %aConstraintUsage, align 8
  %20 = load i32, ptr %idx, align 4
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %19, i64 %idxprom11
  %argvIndex = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx12, i32 0, i32 0
  store i32 1, ptr %argvIndex, align 4
  %21 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage13 = getelementptr inbounds %struct.sqlite3_index_info, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %aConstraintUsage13, align 8
  %23 = load i32, ptr %idx, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %22, i64 %idxprom14
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx15, i32 0, i32 1
  store i8 1, ptr %omit, align 4
  br label %if.end20

if.else16:                                        ; preds = %for.end
  %24 = load i32, ptr %unusable, align 4
  %tobool17 = icmp ne i32 %24, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else16
  store i32 19, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.else16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then18
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  call void @sqlite3_free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainOpen(ptr noundef %p, ptr noundef %ppCursor) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %ppCursor.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 40)
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
  %call1 = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 40, i64 noundef %3) #4
  %4 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.explain_vtab, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pCur, align 8
  %db2 = getelementptr inbounds %struct.explain_cursor, ptr %6, i32 0, i32 1
  store ptr %5, ptr %db2, align 8
  %7 = load ptr, ptr %pCur, align 8
  %base = getelementptr inbounds %struct.explain_cursor, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base, ptr %8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %pExplain = getelementptr inbounds %struct.explain_cursor, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pExplain, align 8
  %call = call i32 @sqlite3_finalize(ptr noundef %2)
  %3 = load ptr, ptr %pCur, align 8
  %zSql = getelementptr inbounds %struct.explain_cursor, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %4)
  %5 = load ptr, ptr %pCur, align 8
  call void @sqlite3_free(ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store ptr null, ptr %zSql, align 8
  %1 = load ptr, ptr %pCur, align 8
  %pExplain = getelementptr inbounds %struct.explain_cursor, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pExplain, align 8
  %call = call i32 @sqlite3_finalize(ptr noundef %2)
  %3 = load ptr, ptr %pCur, align 8
  %pExplain1 = getelementptr inbounds %struct.explain_cursor, ptr %3, i32 0, i32 3
  store ptr null, ptr %pExplain1, align 8
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8
  %call2 = call i32 @sqlite3_value_type(ptr noundef %5)
  %cmp = icmp ne i32 %call2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pCur, align 8
  %rc3 = getelementptr inbounds %struct.explain_cursor, ptr %6, i32 0, i32 4
  store i32 101, ptr %rc3, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pCur, align 8
  %zSql4 = getelementptr inbounds %struct.explain_cursor, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %zSql4, align 8
  call void @sqlite3_free(ptr noundef %8)
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx5, align 8
  %call6 = call ptr @sqlite3_value_text(ptr noundef %10)
  %call7 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.2, ptr noundef %call6)
  %11 = load ptr, ptr %pCur, align 8
  %zSql8 = getelementptr inbounds %struct.explain_cursor, ptr %11, i32 0, i32 2
  store ptr %call7, ptr %zSql8, align 8
  %12 = load ptr, ptr %pCur, align 8
  %zSql9 = getelementptr inbounds %struct.explain_cursor, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %zSql9, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  %14 = load ptr, ptr %pCur, align 8
  %zSql11 = getelementptr inbounds %struct.explain_cursor, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %zSql11, align 8
  %call12 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.3, ptr noundef %15)
  store ptr %call12, ptr %zSql, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end
  %16 = load ptr, ptr %zSql, align 8
  %cmp14 = icmp eq ptr %16, null
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  store i32 7, ptr %rc, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end13
  %17 = load ptr, ptr %pCur, align 8
  %db = getelementptr inbounds %struct.explain_cursor, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %db, align 8
  %19 = load ptr, ptr %zSql, align 8
  %20 = load ptr, ptr %pCur, align 8
  %pExplain16 = getelementptr inbounds %struct.explain_cursor, ptr %20, i32 0, i32 3
  %call17 = call i32 @sqlite3_prepare_v2(ptr noundef %18, ptr noundef %19, i32 noundef -1, ptr noundef %pExplain16, ptr noundef null)
  store i32 %call17, ptr %rc, align 4
  %21 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %21)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  %22 = load i32, ptr %rc, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.end18
  %23 = load ptr, ptr %pCur, align 8
  %pExplain21 = getelementptr inbounds %struct.explain_cursor, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %pExplain21, align 8
  %call22 = call i32 @sqlite3_finalize(ptr noundef %24)
  %25 = load ptr, ptr %pCur, align 8
  %pExplain23 = getelementptr inbounds %struct.explain_cursor, ptr %25, i32 0, i32 3
  store ptr null, ptr %pExplain23, align 8
  %26 = load ptr, ptr %pCur, align 8
  %zSql24 = getelementptr inbounds %struct.explain_cursor, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %zSql24, align 8
  call void @sqlite3_free(ptr noundef %27)
  %28 = load ptr, ptr %pCur, align 8
  %zSql25 = getelementptr inbounds %struct.explain_cursor, ptr %28, i32 0, i32 2
  store ptr null, ptr %zSql25, align 8
  br label %if.end35

if.else26:                                        ; preds = %if.end18
  %29 = load ptr, ptr %pCur, align 8
  %pExplain27 = getelementptr inbounds %struct.explain_cursor, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %pExplain27, align 8
  %call28 = call i32 @sqlite3_step(ptr noundef %30)
  %31 = load ptr, ptr %pCur, align 8
  %rc29 = getelementptr inbounds %struct.explain_cursor, ptr %31, i32 0, i32 4
  store i32 %call28, ptr %rc29, align 8
  %32 = load ptr, ptr %pCur, align 8
  %rc30 = getelementptr inbounds %struct.explain_cursor, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %rc30, align 8
  %cmp31 = icmp eq i32 %33, 101
  br i1 %cmp31, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else26
  %34 = load ptr, ptr %pCur, align 8
  %rc32 = getelementptr inbounds %struct.explain_cursor, ptr %34, i32 0, i32 4
  %35 = load i32, ptr %rc32, align 8
  %cmp33 = icmp eq i32 %35, 100
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.else26
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %36 = load ptr, ptr %pCur, align 8
  %rc34 = getelementptr inbounds %struct.explain_cursor, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %rc34, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %37, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  br label %if.end35

if.end35:                                         ; preds = %cond.end, %if.then20
  %38 = load i32, ptr %rc, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainNext(ptr noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %pExplain = getelementptr inbounds %struct.explain_cursor, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pExplain, align 8
  %call = call i32 @sqlite3_step(ptr noundef %2)
  %3 = load ptr, ptr %pCur, align 8
  %rc = getelementptr inbounds %struct.explain_cursor, ptr %3, i32 0, i32 4
  store i32 %call, ptr %rc, align 8
  %4 = load ptr, ptr %pCur, align 8
  %rc1 = getelementptr inbounds %struct.explain_cursor, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %rc1, align 8
  %cmp = icmp ne i32 %5, 101
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %pCur, align 8
  %rc2 = getelementptr inbounds %struct.explain_cursor, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %rc2, align 8
  %cmp3 = icmp ne i32 %7, 100
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %pCur, align 8
  %rc4 = getelementptr inbounds %struct.explain_cursor, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %rc4, align 8
  store i32 %9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %rc = getelementptr inbounds %struct.explain_cursor, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %rc, align 8
  %cmp = icmp ne i32 %2, 100
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
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
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %pCur, align 8
  %zSql = getelementptr inbounds %struct.explain_cursor, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %zSql, align 8
  call void @sqlite3_result_text(ptr noundef %2, ptr noundef %4, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %ctx.addr, align 8
  %6 = load ptr, ptr %pCur, align 8
  %pExplain = getelementptr inbounds %struct.explain_cursor, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pExplain, align 8
  %8 = load i32, ptr %i.addr, align 4
  %call = call ptr @sqlite3_column_value(ptr noundef %7, i32 noundef %8)
  call void @sqlite3_result_value(ptr noundef %5, ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @explainRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %pExplain = getelementptr inbounds %struct.explain_cursor, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pExplain, align 8
  %call = call i64 @sqlite3_column_int64(ptr noundef %2, i32 noundef 0)
  %3 = load ptr, ptr %pRowid.addr, align 8
  store i64 %call, ptr %3, align 8
  ret i32 0
}

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare void @sqlite3_free(ptr noundef) #1

declare i32 @sqlite3_finalize(ptr noundef) #1

declare i32 @sqlite3_value_type(ptr noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare ptr @sqlite3_value_text(ptr noundef) #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_result_value(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_column_value(ptr noundef, i32 noundef) #1

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
