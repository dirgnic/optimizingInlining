; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/closure.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/closure.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.closure_avl = type { i64, i32, ptr, ptr, ptr, ptr, i16, i16 }
%struct.closure_vtab = type { %struct.sqlite3_vtab, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.sqlite3_index_orderby = type { i32, i8 }
%struct.closure_cursor = type { %struct.sqlite3_vtab_cursor, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_vtab_cursor = type { ptr }
%struct.closure_queue = type { ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"transitive_closure\00", align 1
@closureModule = internal global %struct.sqlite3_module { i32 0, ptr @closureConnect, ptr @closureConnect, ptr @closureBestIndex, ptr @closureDisconnect, ptr @closureDisconnect, ptr @closureOpen, ptr @closureClose, ptr @closureFilter, ptr @closureNext, ptr @closureEof, ptr @closureColumn, ptr @closureRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tablename\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"idcolumn\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"parentcolumn\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"unrecognized argument: [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"CREATE TABLE x(id,depth,root HIDDEN,tablename HIDDEN,idcolumn HIDDEN,parentcolumn HIDDEN)\00", align 1
@__func__.closureDequote = private unnamed_addr constant [15 x i8] c"closureDequote\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"closure.c\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"(int)strlen(zOut)<=nIn\00", align 1
@__func__.closureDisconnect = private unnamed_addr constant [18 x i8] c"closureDisconnect\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"p->nCursor==0\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"SELECT \22%w\22.\22%w\22 FROM \22%w\22 WHERE \22%w\22.\22%w\22=?1\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @closureAvlNext(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pPrev = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr null, ptr %pPrev, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8
  %pAfter = getelementptr inbounds %struct.closure_avl, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pAfter, align 8
  %3 = load ptr, ptr %pPrev, align 8
  %cmp = icmp eq ptr %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %p.addr, align 8
  store ptr %5, ptr %pPrev, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %pUp = getelementptr inbounds %struct.closure_avl, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %pUp, align 8
  store ptr %7, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %8 = load ptr, ptr %p.addr, align 8
  %tobool1 = icmp ne ptr %8, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %9 = load ptr, ptr %pPrev, align 8
  %cmp2 = icmp eq ptr %9, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %p.addr, align 8
  %pAfter3 = getelementptr inbounds %struct.closure_avl, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pAfter3, align 8
  %call = call ptr @closureAvlFirst(ptr noundef %11)
  store ptr %call, ptr %p.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  %12 = load ptr, ptr %p.addr, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @closureAvlFirst(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load ptr, ptr %p.addr, align 8
  %pBefore = getelementptr inbounds %struct.closure_avl, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pBefore, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p.addr, align 8
  %pBefore2 = getelementptr inbounds %struct.closure_avl, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %pBefore2, align 8
  store ptr %4, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %5 = load ptr, ptr %p.addr, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_closure_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3_create_module(ptr noundef %2, ptr noundef @.str, ptr noundef @closureModule, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  ret i32 %3
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %zVal = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pNew, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1
  %1 = load ptr, ptr %arrayidx, align 8
  store ptr %1, ptr %zDb, align 8
  %2 = load ptr, ptr %pAux.addr, align 8
  %3 = load ptr, ptr %ppVtab.addr, align 8
  store ptr null, ptr %3, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 80)
  store ptr %call, ptr %pNew, align 8
  %4 = load ptr, ptr %pNew, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 7, ptr %rc, align 4
  %5 = load ptr, ptr %pNew, align 8
  %6 = load ptr, ptr %pNew, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %5, i32 noundef 0, i64 noundef 80, i64 noundef %7) #7
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %pNew, align 8
  %db2 = getelementptr inbounds %struct.closure_vtab, ptr %9, i32 0, i32 6
  store ptr %8, ptr %db2, align 8
  %10 = load ptr, ptr %zDb, align 8
  %call3 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %10)
  %11 = load ptr, ptr %pNew, align 8
  %zDb4 = getelementptr inbounds %struct.closure_vtab, ptr %11, i32 0, i32 1
  store ptr %call3, ptr %zDb4, align 8
  %12 = load ptr, ptr %pNew, align 8
  %zDb5 = getelementptr inbounds %struct.closure_vtab, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %zDb5, align 8
  %cmp6 = icmp eq ptr %13, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %closureConnectError

if.end8:                                          ; preds = %if.end
  %14 = load ptr, ptr %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %14, i64 2
  %15 = load ptr, ptr %arrayidx9, align 8
  %call10 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %15)
  %16 = load ptr, ptr %pNew, align 8
  %zSelf = getelementptr inbounds %struct.closure_vtab, ptr %16, i32 0, i32 2
  store ptr %call10, ptr %zSelf, align 8
  %17 = load ptr, ptr %pNew, align 8
  %zSelf11 = getelementptr inbounds %struct.closure_vtab, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %zSelf11, align 8
  %cmp12 = icmp eq ptr %18, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  br label %closureConnectError

if.end14:                                         ; preds = %if.end8
  store i32 3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %argc.addr, align 4
  %cmp15 = icmp slt i32 %19, %20
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %argv.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %21, i64 %idxprom
  %23 = load ptr, ptr %arrayidx16, align 8
  %call17 = call ptr @closureValueOfKey(ptr noundef @.str.2, ptr noundef %23)
  store ptr %call17, ptr %zVal, align 8
  %24 = load ptr, ptr %zVal, align 8
  %tobool = icmp ne ptr %24, null
  br i1 %tobool, label %if.then18, label %if.end25

if.then18:                                        ; preds = %for.body
  %25 = load ptr, ptr %pNew, align 8
  %zTableName = getelementptr inbounds %struct.closure_vtab, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %zTableName, align 8
  call void @sqlite3_free(ptr noundef %26)
  %27 = load ptr, ptr %zVal, align 8
  %call19 = call ptr @closureDequote(ptr noundef %27)
  %28 = load ptr, ptr %pNew, align 8
  %zTableName20 = getelementptr inbounds %struct.closure_vtab, ptr %28, i32 0, i32 3
  store ptr %call19, ptr %zTableName20, align 8
  %29 = load ptr, ptr %pNew, align 8
  %zTableName21 = getelementptr inbounds %struct.closure_vtab, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %zTableName21, align 8
  %cmp22 = icmp eq ptr %30, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then18
  br label %closureConnectError

if.end24:                                         ; preds = %if.then18
  br label %for.inc

if.end25:                                         ; preds = %for.body
  %31 = load ptr, ptr %argv.addr, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %31, i64 %idxprom26
  %33 = load ptr, ptr %arrayidx27, align 8
  %call28 = call ptr @closureValueOfKey(ptr noundef @.str.3, ptr noundef %33)
  store ptr %call28, ptr %zVal, align 8
  %34 = load ptr, ptr %zVal, align 8
  %tobool29 = icmp ne ptr %34, null
  br i1 %tobool29, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end25
  %35 = load ptr, ptr %pNew, align 8
  %zIdColumn = getelementptr inbounds %struct.closure_vtab, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %zIdColumn, align 8
  call void @sqlite3_free(ptr noundef %36)
  %37 = load ptr, ptr %zVal, align 8
  %call31 = call ptr @closureDequote(ptr noundef %37)
  %38 = load ptr, ptr %pNew, align 8
  %zIdColumn32 = getelementptr inbounds %struct.closure_vtab, ptr %38, i32 0, i32 4
  store ptr %call31, ptr %zIdColumn32, align 8
  %39 = load ptr, ptr %pNew, align 8
  %zIdColumn33 = getelementptr inbounds %struct.closure_vtab, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %zIdColumn33, align 8
  %cmp34 = icmp eq ptr %40, null
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  br label %closureConnectError

if.end36:                                         ; preds = %if.then30
  br label %for.inc

if.end37:                                         ; preds = %if.end25
  %41 = load ptr, ptr %argv.addr, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %42 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %41, i64 %idxprom38
  %43 = load ptr, ptr %arrayidx39, align 8
  %call40 = call ptr @closureValueOfKey(ptr noundef @.str.4, ptr noundef %43)
  store ptr %call40, ptr %zVal, align 8
  %44 = load ptr, ptr %zVal, align 8
  %tobool41 = icmp ne ptr %44, null
  br i1 %tobool41, label %if.then42, label %if.end49

if.then42:                                        ; preds = %if.end37
  %45 = load ptr, ptr %pNew, align 8
  %zParentColumn = getelementptr inbounds %struct.closure_vtab, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %zParentColumn, align 8
  call void @sqlite3_free(ptr noundef %46)
  %47 = load ptr, ptr %zVal, align 8
  %call43 = call ptr @closureDequote(ptr noundef %47)
  %48 = load ptr, ptr %pNew, align 8
  %zParentColumn44 = getelementptr inbounds %struct.closure_vtab, ptr %48, i32 0, i32 5
  store ptr %call43, ptr %zParentColumn44, align 8
  %49 = load ptr, ptr %pNew, align 8
  %zParentColumn45 = getelementptr inbounds %struct.closure_vtab, ptr %49, i32 0, i32 5
  %50 = load ptr, ptr %zParentColumn45, align 8
  %cmp46 = icmp eq ptr %50, null
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then42
  br label %closureConnectError

if.end48:                                         ; preds = %if.then42
  br label %for.inc

if.end49:                                         ; preds = %if.end37
  %51 = load ptr, ptr %argv.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %52 to i64
  %arrayidx51 = getelementptr inbounds ptr, ptr %51, i64 %idxprom50
  %53 = load ptr, ptr %arrayidx51, align 8
  %call52 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.5, ptr noundef %53)
  %54 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call52, ptr %54, align 8
  %55 = load ptr, ptr %pNew, align 8
  call void @closureFree(ptr noundef %55)
  %56 = load ptr, ptr %ppVtab.addr, align 8
  store ptr null, ptr %56, align 8
  store i32 1, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %if.end48, %if.end36, %if.end24
  %57 = load i32, ptr %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %58 = load ptr, ptr %db.addr, align 8
  %call53 = call i32 @sqlite3_declare_vtab(ptr noundef %58, ptr noundef @.str.6)
  store i32 %call53, ptr %rc, align 4
  %59 = load i32, ptr %rc, align 4
  %cmp54 = icmp ne i32 %59, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.end
  %60 = load ptr, ptr %pNew, align 8
  call void @closureFree(ptr noundef %60)
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %for.end
  %61 = load ptr, ptr %pNew, align 8
  %base = getelementptr inbounds %struct.closure_vtab, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %base, ptr %62, align 8
  %63 = load i32, ptr %rc, align 4
  store i32 %63, ptr %retval, align 4
  br label %return

closureConnectError:                              ; preds = %if.then47, %if.then35, %if.then23, %if.then13, %if.then7
  %64 = load ptr, ptr %pNew, align 8
  call void @closureFree(ptr noundef %64)
  %65 = load i32, ptr %rc, align 4
  store i32 %65, ptr %retval, align 4
  br label %return

return:                                           ; preds = %closureConnectError, %if.end56, %if.end49, %if.then
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureBestIndex(ptr noundef %pTab, ptr noundef %pIdxInfo) #0 {
entry:
  %pTab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %iPlan = alloca i32, align 4
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  %pConstraint = alloca ptr, align 8
  %pVtab = alloca ptr, align 8
  %rCost = alloca double, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i32 0, ptr %iPlan, align 4
  store i32 1, ptr %idx, align 4
  %0 = load ptr, ptr %pTab.addr, align 8
  store ptr %0, ptr %pVtab, align 8
  store double 1.000000e+07, ptr %rCost, align 8
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
  %8 = load i32, ptr %iPlan, align 4
  %and = and i32 %8, 1
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %pConstraint, align 8
  %iColumn = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %iColumn, align 4
  %cmp5 = icmp eq i32 %10, 2
  br i1 %cmp5, label %land.lhs.true7, label %if.end15

land.lhs.true7:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %pConstraint, align 8
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %11, i32 0, i32 1
  %12 = load i8, ptr %op, align 4
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 2
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %land.lhs.true7
  %13 = load i32, ptr %iPlan, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %iPlan, align 4
  %14 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %aConstraintUsage, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %15, i64 %idxprom
  %argvIndex = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx, i32 0, i32 0
  store i32 1, ptr %argvIndex, align 4
  %17 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage12 = getelementptr inbounds %struct.sqlite3_index_info, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %aConstraintUsage12, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %18, i64 %idxprom13
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx14, i32 0, i32 1
  store i8 1, ptr %omit, align 4
  %20 = load double, ptr %rCost, align 8
  %div = fdiv double %20, 1.000000e+02
  store double %div, ptr %rCost, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %land.lhs.true7, %land.lhs.true, %if.end
  %21 = load i32, ptr %iPlan, align 4
  %and16 = and i32 %21, 240
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.end51

land.lhs.true19:                                  ; preds = %if.end15
  %22 = load ptr, ptr %pConstraint, align 8
  %iColumn20 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %iColumn20, align 4
  %cmp21 = icmp eq i32 %23, 1
  br i1 %cmp21, label %land.lhs.true23, label %if.end51

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %24 = load ptr, ptr %pConstraint, align 8
  %op24 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %24, i32 0, i32 1
  %25 = load i8, ptr %op24, align 4
  %conv25 = zext i8 %25 to i32
  %cmp26 = icmp eq i32 %conv25, 16
  br i1 %cmp26, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true23
  %26 = load ptr, ptr %pConstraint, align 8
  %op28 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %26, i32 0, i32 1
  %27 = load i8, ptr %op28, align 4
  %conv29 = zext i8 %27 to i32
  %cmp30 = icmp eq i32 %conv29, 8
  br i1 %cmp30, label %if.then37, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %28 = load ptr, ptr %pConstraint, align 8
  %op33 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %28, i32 0, i32 1
  %29 = load i8, ptr %op33, align 4
  %conv34 = zext i8 %29 to i32
  %cmp35 = icmp eq i32 %conv34, 2
  br i1 %cmp35, label %if.then37, label %if.end51

if.then37:                                        ; preds = %lor.lhs.false32, %lor.lhs.false, %land.lhs.true23
  %30 = load i32, ptr %idx, align 4
  %shl = shl i32 %30, 4
  %31 = load i32, ptr %iPlan, align 4
  %or38 = or i32 %31, %shl
  store i32 %or38, ptr %iPlan, align 4
  %32 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %idx, align 4
  %33 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage39 = getelementptr inbounds %struct.sqlite3_index_info, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %aConstraintUsage39, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %35 to i64
  %arrayidx41 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %34, i64 %idxprom40
  %argvIndex42 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx41, i32 0, i32 0
  store i32 %inc, ptr %argvIndex42, align 4
  %36 = load ptr, ptr %pConstraint, align 8
  %op43 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %36, i32 0, i32 1
  %37 = load i8, ptr %op43, align 4
  %conv44 = zext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv44, 16
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then37
  %38 = load i32, ptr %iPlan, align 4
  %or48 = or i32 %38, 2
  store i32 %or48, ptr %iPlan, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then37
  %39 = load double, ptr %rCost, align 8
  %div50 = fdiv double %39, 5.000000e+00
  store double %div50, ptr %rCost, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %lor.lhs.false32, %land.lhs.true19, %if.end15
  %40 = load i32, ptr %iPlan, align 4
  %and52 = and i32 %40, 3840
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %land.lhs.true55, label %if.end77

land.lhs.true55:                                  ; preds = %if.end51
  %41 = load ptr, ptr %pConstraint, align 8
  %iColumn56 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %41, i32 0, i32 0
  %42 = load i32, ptr %iColumn56, align 4
  %cmp57 = icmp eq i32 %42, 3
  br i1 %cmp57, label %land.lhs.true59, label %if.end77

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %43 = load ptr, ptr %pConstraint, align 8
  %op60 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %43, i32 0, i32 1
  %44 = load i8, ptr %op60, align 4
  %conv61 = zext i8 %44 to i32
  %cmp62 = icmp eq i32 %conv61, 2
  br i1 %cmp62, label %if.then64, label %if.end77

if.then64:                                        ; preds = %land.lhs.true59
  %45 = load i32, ptr %idx, align 4
  %shl65 = shl i32 %45, 8
  %46 = load i32, ptr %iPlan, align 4
  %or66 = or i32 %46, %shl65
  store i32 %or66, ptr %iPlan, align 4
  %47 = load i32, ptr %idx, align 4
  %inc67 = add nsw i32 %47, 1
  store i32 %inc67, ptr %idx, align 4
  %48 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage68 = getelementptr inbounds %struct.sqlite3_index_info, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %aConstraintUsage68, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %50 to i64
  %arrayidx70 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %49, i64 %idxprom69
  %argvIndex71 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx70, i32 0, i32 0
  store i32 %inc67, ptr %argvIndex71, align 4
  %51 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage72 = getelementptr inbounds %struct.sqlite3_index_info, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %aConstraintUsage72, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %53 to i64
  %arrayidx74 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %52, i64 %idxprom73
  %omit75 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx74, i32 0, i32 1
  store i8 1, ptr %omit75, align 4
  %54 = load double, ptr %rCost, align 8
  %div76 = fdiv double %54, 5.000000e+00
  store double %div76, ptr %rCost, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then64, %land.lhs.true59, %land.lhs.true55, %if.end51
  %55 = load i32, ptr %iPlan, align 4
  %and78 = and i32 %55, 61440
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end102

land.lhs.true81:                                  ; preds = %if.end77
  %56 = load ptr, ptr %pConstraint, align 8
  %iColumn82 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %56, i32 0, i32 0
  %57 = load i32, ptr %iColumn82, align 4
  %cmp83 = icmp eq i32 %57, 4
  br i1 %cmp83, label %land.lhs.true85, label %if.end102

land.lhs.true85:                                  ; preds = %land.lhs.true81
  %58 = load ptr, ptr %pConstraint, align 8
  %op86 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %58, i32 0, i32 1
  %59 = load i8, ptr %op86, align 4
  %conv87 = zext i8 %59 to i32
  %cmp88 = icmp eq i32 %conv87, 2
  br i1 %cmp88, label %if.then90, label %if.end102

if.then90:                                        ; preds = %land.lhs.true85
  %60 = load i32, ptr %idx, align 4
  %shl91 = shl i32 %60, 12
  %61 = load i32, ptr %iPlan, align 4
  %or92 = or i32 %61, %shl91
  store i32 %or92, ptr %iPlan, align 4
  %62 = load i32, ptr %idx, align 4
  %inc93 = add nsw i32 %62, 1
  store i32 %inc93, ptr %idx, align 4
  %63 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage94 = getelementptr inbounds %struct.sqlite3_index_info, ptr %63, i32 0, i32 4
  %64 = load ptr, ptr %aConstraintUsage94, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom95 = sext i32 %65 to i64
  %arrayidx96 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %64, i64 %idxprom95
  %argvIndex97 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx96, i32 0, i32 0
  store i32 %inc93, ptr %argvIndex97, align 4
  %66 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage98 = getelementptr inbounds %struct.sqlite3_index_info, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %aConstraintUsage98, align 8
  %68 = load i32, ptr %i, align 4
  %idxprom99 = sext i32 %68 to i64
  %arrayidx100 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %67, i64 %idxprom99
  %omit101 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx100, i32 0, i32 1
  store i8 1, ptr %omit101, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then90, %land.lhs.true85, %land.lhs.true81, %if.end77
  %69 = load i32, ptr %iPlan, align 4
  %and103 = and i32 %69, 983040
  %cmp104 = icmp eq i32 %and103, 0
  br i1 %cmp104, label %land.lhs.true106, label %if.end127

land.lhs.true106:                                 ; preds = %if.end102
  %70 = load ptr, ptr %pConstraint, align 8
  %iColumn107 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %70, i32 0, i32 0
  %71 = load i32, ptr %iColumn107, align 4
  %cmp108 = icmp eq i32 %71, 5
  br i1 %cmp108, label %land.lhs.true110, label %if.end127

land.lhs.true110:                                 ; preds = %land.lhs.true106
  %72 = load ptr, ptr %pConstraint, align 8
  %op111 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %72, i32 0, i32 1
  %73 = load i8, ptr %op111, align 4
  %conv112 = zext i8 %73 to i32
  %cmp113 = icmp eq i32 %conv112, 2
  br i1 %cmp113, label %if.then115, label %if.end127

if.then115:                                       ; preds = %land.lhs.true110
  %74 = load i32, ptr %idx, align 4
  %shl116 = shl i32 %74, 16
  %75 = load i32, ptr %iPlan, align 4
  %or117 = or i32 %75, %shl116
  store i32 %or117, ptr %iPlan, align 4
  %76 = load i32, ptr %idx, align 4
  %inc118 = add nsw i32 %76, 1
  store i32 %inc118, ptr %idx, align 4
  %77 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage119 = getelementptr inbounds %struct.sqlite3_index_info, ptr %77, i32 0, i32 4
  %78 = load ptr, ptr %aConstraintUsage119, align 8
  %79 = load i32, ptr %i, align 4
  %idxprom120 = sext i32 %79 to i64
  %arrayidx121 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %78, i64 %idxprom120
  %argvIndex122 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx121, i32 0, i32 0
  store i32 %inc118, ptr %argvIndex122, align 4
  %80 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage123 = getelementptr inbounds %struct.sqlite3_index_info, ptr %80, i32 0, i32 4
  %81 = load ptr, ptr %aConstraintUsage123, align 8
  %82 = load i32, ptr %i, align 4
  %idxprom124 = sext i32 %82 to i64
  %arrayidx125 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %81, i64 %idxprom124
  %omit126 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx125, i32 0, i32 1
  store i8 1, ptr %omit126, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then115, %land.lhs.true110, %land.lhs.true106, %if.end102
  br label %for.inc

for.inc:                                          ; preds = %if.end127, %if.then
  %83 = load i32, ptr %i, align 4
  %inc128 = add nsw i32 %83, 1
  store i32 %inc128, ptr %i, align 4
  %84 = load ptr, ptr %pConstraint, align 8
  %incdec.ptr = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %84, i32 1
  store ptr %incdec.ptr, ptr %pConstraint, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %85 = load ptr, ptr %pVtab, align 8
  %zTableName = getelementptr inbounds %struct.closure_vtab, ptr %85, i32 0, i32 3
  %86 = load ptr, ptr %zTableName, align 8
  %cmp129 = icmp eq ptr %86, null
  br i1 %cmp129, label %land.lhs.true131, label %lor.lhs.false135

land.lhs.true131:                                 ; preds = %for.end
  %87 = load i32, ptr %iPlan, align 4
  %and132 = and i32 %87, 3840
  %cmp133 = icmp eq i32 %and132, 0
  br i1 %cmp133, label %if.then149, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %land.lhs.true131, %for.end
  %88 = load ptr, ptr %pVtab, align 8
  %zIdColumn = getelementptr inbounds %struct.closure_vtab, ptr %88, i32 0, i32 4
  %89 = load ptr, ptr %zIdColumn, align 8
  %cmp136 = icmp eq ptr %89, null
  br i1 %cmp136, label %land.lhs.true138, label %lor.lhs.false142

land.lhs.true138:                                 ; preds = %lor.lhs.false135
  %90 = load i32, ptr %iPlan, align 4
  %and139 = and i32 %90, 61440
  %cmp140 = icmp eq i32 %and139, 0
  br i1 %cmp140, label %if.then149, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %land.lhs.true138, %lor.lhs.false135
  %91 = load ptr, ptr %pVtab, align 8
  %zParentColumn = getelementptr inbounds %struct.closure_vtab, ptr %91, i32 0, i32 5
  %92 = load ptr, ptr %zParentColumn, align 8
  %cmp143 = icmp eq ptr %92, null
  br i1 %cmp143, label %land.lhs.true145, label %if.end150

land.lhs.true145:                                 ; preds = %lor.lhs.false142
  %93 = load i32, ptr %iPlan, align 4
  %and146 = and i32 %93, 983040
  %cmp147 = icmp eq i32 %and146, 0
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %land.lhs.true145, %land.lhs.true138, %land.lhs.true131
  store i32 0, ptr %iPlan, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %land.lhs.true145, %lor.lhs.false142
  %94 = load i32, ptr %iPlan, align 4
  %and151 = and i32 %94, 1
  %cmp152 = icmp eq i32 %and151, 0
  br i1 %cmp152, label %if.then154, label %if.end168

if.then154:                                       ; preds = %if.end150
  %95 = load double, ptr %rCost, align 8
  %mul = fmul double %95, 1.000000e+30
  store double %mul, ptr %rCost, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc164, %if.then154
  %96 = load i32, ptr %i, align 4
  %97 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint156 = getelementptr inbounds %struct.sqlite3_index_info, ptr %97, i32 0, i32 0
  %98 = load i32, ptr %nConstraint156, align 8
  %cmp157 = icmp slt i32 %96, %98
  br i1 %cmp157, label %for.body159, label %for.end167

for.body159:                                      ; preds = %for.cond155
  %99 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage160 = getelementptr inbounds %struct.sqlite3_index_info, ptr %99, i32 0, i32 4
  %100 = load ptr, ptr %aConstraintUsage160, align 8
  %101 = load i32, ptr %i, align 4
  %idxprom161 = sext i32 %101 to i64
  %arrayidx162 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %100, i64 %idxprom161
  %argvIndex163 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx162, i32 0, i32 0
  store i32 0, ptr %argvIndex163, align 4
  br label %for.inc164

for.inc164:                                       ; preds = %for.body159
  %102 = load i32, ptr %i, align 4
  %inc165 = add nsw i32 %102, 1
  store i32 %inc165, ptr %i, align 4
  %103 = load ptr, ptr %pConstraint, align 8
  %incdec.ptr166 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %103, i32 1
  store ptr %incdec.ptr166, ptr %pConstraint, align 8
  br label %for.cond155, !llvm.loop !11

for.end167:                                       ; preds = %for.cond155
  store i32 0, ptr %iPlan, align 4
  br label %if.end168

if.end168:                                        ; preds = %for.end167, %if.end150
  %104 = load i32, ptr %iPlan, align 4
  %105 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %105, i32 0, i32 5
  store i32 %104, ptr %idxNum, align 8
  %106 = load ptr, ptr %pIdxInfo.addr, align 8
  %nOrderBy = getelementptr inbounds %struct.sqlite3_index_info, ptr %106, i32 0, i32 2
  %107 = load i32, ptr %nOrderBy, align 8
  %cmp169 = icmp eq i32 %107, 1
  br i1 %cmp169, label %land.lhs.true171, label %if.end183

land.lhs.true171:                                 ; preds = %if.end168
  %108 = load ptr, ptr %pIdxInfo.addr, align 8
  %aOrderBy = getelementptr inbounds %struct.sqlite3_index_info, ptr %108, i32 0, i32 3
  %109 = load ptr, ptr %aOrderBy, align 8
  %arrayidx172 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %109, i64 0
  %iColumn173 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %arrayidx172, i32 0, i32 0
  %110 = load i32, ptr %iColumn173, align 4
  %cmp174 = icmp eq i32 %110, 0
  br i1 %cmp174, label %land.lhs.true176, label %if.end183

land.lhs.true176:                                 ; preds = %land.lhs.true171
  %111 = load ptr, ptr %pIdxInfo.addr, align 8
  %aOrderBy177 = getelementptr inbounds %struct.sqlite3_index_info, ptr %111, i32 0, i32 3
  %112 = load ptr, ptr %aOrderBy177, align 8
  %arrayidx178 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %112, i64 0
  %desc = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %arrayidx178, i32 0, i32 1
  %113 = load i8, ptr %desc, align 4
  %conv179 = zext i8 %113 to i32
  %cmp180 = icmp eq i32 %conv179, 0
  br i1 %cmp180, label %if.then182, label %if.end183

if.then182:                                       ; preds = %land.lhs.true176
  %114 = load ptr, ptr %pIdxInfo.addr, align 8
  %orderByConsumed = getelementptr inbounds %struct.sqlite3_index_info, ptr %114, i32 0, i32 8
  store i32 1, ptr %orderByConsumed, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %land.lhs.true176, %land.lhs.true171, %if.end168
  %115 = load double, ptr %rCost, align 8
  %116 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %116, i32 0, i32 9
  store double %115, ptr %estimatedCost, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %nCursor = getelementptr inbounds %struct.closure_vtab, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %nCursor, align 8
  %cmp = icmp eq i32 %2, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.closureDisconnect, ptr noundef @.str.7, i32 noundef 470, ptr noundef @.str.9) #8
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %p, align 8
  call void @closureFree(ptr noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureOpen(ptr noundef %pVTab, ptr noundef %ppCursor) #0 {
entry:
  %retval = alloca i32, align 4
  %pVTab.addr = alloca ptr, align 8
  %ppCursor.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %pVTab, ptr %pVTab.addr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %0 = load ptr, ptr %pVTab.addr, align 8
  store ptr %0, ptr %p, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 56)
  store ptr %call, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCur, align 8
  %3 = load ptr, ptr %pCur, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %2, i32 noundef 0, i64 noundef 56, i64 noundef %4) #7
  %5 = load ptr, ptr %p, align 8
  %6 = load ptr, ptr %pCur, align 8
  %pVtab = getelementptr inbounds %struct.closure_cursor, ptr %6, i32 0, i32 1
  store ptr %5, ptr %pVtab, align 8
  %7 = load ptr, ptr %pCur, align 8
  %base = getelementptr inbounds %struct.closure_cursor, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base, ptr %8, align 8
  %9 = load ptr, ptr %p, align 8
  %nCursor = getelementptr inbounds %struct.closure_vtab, ptr %9, i32 0, i32 7
  %10 = load i32, ptr %nCursor, align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %nCursor, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  call void @closureClearCursor(ptr noundef %1)
  %2 = load ptr, ptr %pCur, align 8
  %pVtab = getelementptr inbounds %struct.closure_cursor, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pVtab, align 8
  %nCursor = getelementptr inbounds %struct.closure_vtab, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %nCursor, align 8
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %nCursor, align 8
  %5 = load ptr, ptr %pCur, align 8
  call void @sqlite3_free(ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pVtab = alloca ptr, align 8
  %iRoot = alloca i64, align 8
  %mxGen = alloca i32, align 4
  %zSql = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  %pAvl = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zTableName = alloca ptr, align 8
  %zIdColumn = alloca ptr, align 8
  %zParentColumn = alloca ptr, align 8
  %sQueue = alloca %struct.closure_queue, align 8
  %iNew = alloca i64, align 8
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %pVtab1 = getelementptr inbounds %struct.closure_cursor, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pVtab1, align 8
  store ptr %2, ptr %pVtab, align 8
  store i32 999999999, ptr %mxGen, align 4
  store i32 0, ptr %rc, align 4
  %3 = load ptr, ptr %pVtab, align 8
  %zTableName2 = getelementptr inbounds %struct.closure_vtab, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %zTableName2, align 8
  store ptr %4, ptr %zTableName, align 8
  %5 = load ptr, ptr %pVtab, align 8
  %zIdColumn3 = getelementptr inbounds %struct.closure_vtab, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %zIdColumn3, align 8
  store ptr %6, ptr %zIdColumn, align 8
  %7 = load ptr, ptr %pVtab, align 8
  %zParentColumn4 = getelementptr inbounds %struct.closure_vtab, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %zParentColumn4, align 8
  store ptr %8, ptr %zParentColumn, align 8
  %9 = load ptr, ptr %idxStr.addr, align 8
  %10 = load i32, ptr %argc.addr, align 4
  %11 = load ptr, ptr %pCur, align 8
  call void @closureClearCursor(ptr noundef %11)
  call void @llvm.memset.p0.i64(ptr align 8 %sQueue, i8 0, i64 16, i1 false)
  %12 = load i32, ptr %idxNum.addr, align 4
  %and = and i32 %12, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @sqlite3_value_int64(ptr noundef %14)
  store i64 %call, ptr %iRoot, align 8
  %15 = load i32, ptr %idxNum.addr, align 4
  %and5 = and i32 %15, 240
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end
  %16 = load ptr, ptr %argv.addr, align 8
  %17 = load i32, ptr %idxNum.addr, align 4
  %shr = ashr i32 %17, 4
  %and8 = and i32 %shr, 15
  %idxprom = sext i32 %and8 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @sqlite3_value_int(ptr noundef %18)
  store i32 %call10, ptr %mxGen, align 4
  %19 = load i32, ptr %idxNum.addr, align 4
  %and11 = and i32 %19, 2
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then7
  %20 = load i32, ptr %mxGen, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %mxGen, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %21 = load i32, ptr %idxNum.addr, align 4
  %and16 = and i32 %21, 3840
  %cmp17 = icmp ne i32 %and16, 0
  br i1 %cmp17, label %if.then18, label %if.end26

if.then18:                                        ; preds = %if.end15
  %22 = load ptr, ptr %argv.addr, align 8
  %23 = load i32, ptr %idxNum.addr, align 4
  %shr19 = ashr i32 %23, 8
  %and20 = and i32 %shr19, 15
  %idxprom21 = sext i32 %and20 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %22, i64 %idxprom21
  %24 = load ptr, ptr %arrayidx22, align 8
  %call23 = call ptr @sqlite3_value_text(ptr noundef %24)
  store ptr %call23, ptr %zTableName, align 8
  %25 = load ptr, ptr %zTableName, align 8
  %call24 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %25)
  %26 = load ptr, ptr %pCur, align 8
  %zTableName25 = getelementptr inbounds %struct.closure_cursor, ptr %26, i32 0, i32 2
  store ptr %call24, ptr %zTableName25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.end15
  %27 = load i32, ptr %idxNum.addr, align 4
  %and27 = and i32 %27, 61440
  %cmp28 = icmp ne i32 %and27, 0
  br i1 %cmp28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.end26
  %28 = load ptr, ptr %argv.addr, align 8
  %29 = load i32, ptr %idxNum.addr, align 4
  %shr30 = ashr i32 %29, 12
  %and31 = and i32 %shr30, 15
  %idxprom32 = sext i32 %and31 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %28, i64 %idxprom32
  %30 = load ptr, ptr %arrayidx33, align 8
  %call34 = call ptr @sqlite3_value_text(ptr noundef %30)
  store ptr %call34, ptr %zIdColumn, align 8
  %31 = load ptr, ptr %zIdColumn, align 8
  %call35 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %31)
  %32 = load ptr, ptr %pCur, align 8
  %zIdColumn36 = getelementptr inbounds %struct.closure_cursor, ptr %32, i32 0, i32 3
  store ptr %call35, ptr %zIdColumn36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end26
  %33 = load i32, ptr %idxNum.addr, align 4
  %and38 = and i32 %33, 983040
  %cmp39 = icmp ne i32 %and38, 0
  br i1 %cmp39, label %if.then40, label %if.end48

if.then40:                                        ; preds = %if.end37
  %34 = load ptr, ptr %argv.addr, align 8
  %35 = load i32, ptr %idxNum.addr, align 4
  %shr41 = ashr i32 %35, 16
  %and42 = and i32 %shr41, 15
  %idxprom43 = sext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds ptr, ptr %34, i64 %idxprom43
  %36 = load ptr, ptr %arrayidx44, align 8
  %call45 = call ptr @sqlite3_value_text(ptr noundef %36)
  store ptr %call45, ptr %zParentColumn, align 8
  %37 = load ptr, ptr %zParentColumn, align 8
  %call46 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %37)
  %38 = load ptr, ptr %pCur, align 8
  %zParentColumn47 = getelementptr inbounds %struct.closure_cursor, ptr %38, i32 0, i32 4
  store ptr %call46, ptr %zParentColumn47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then40, %if.end37
  %39 = load ptr, ptr %zTableName, align 8
  %40 = load ptr, ptr %zIdColumn, align 8
  %41 = load ptr, ptr %zTableName, align 8
  %42 = load ptr, ptr %zTableName, align 8
  %43 = load ptr, ptr %zParentColumn, align 8
  %call49 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.10, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43)
  store ptr %call49, ptr %zSql, align 8
  %44 = load ptr, ptr %zSql, align 8
  %cmp50 = icmp eq ptr %44, null
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end48
  store i32 7, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end48
  %45 = load ptr, ptr %pVtab, align 8
  %db = getelementptr inbounds %struct.closure_vtab, ptr %45, i32 0, i32 6
  %46 = load ptr, ptr %db, align 8
  %47 = load ptr, ptr %zSql, align 8
  %call52 = call i32 @sqlite3_prepare_v2(ptr noundef %46, ptr noundef %47, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call52, ptr %rc, align 4
  %48 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %48)
  %49 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.else
  %50 = load ptr, ptr %pVtab, align 8
  %base = getelementptr inbounds %struct.closure_vtab, ptr %50, i32 0, i32 0
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %base, i32 0, i32 2
  %51 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3_free(ptr noundef %51)
  %52 = load ptr, ptr %pVtab, align 8
  %db54 = getelementptr inbounds %struct.closure_vtab, ptr %52, i32 0, i32 6
  %53 = load ptr, ptr %db54, align 8
  %call55 = call ptr @sqlite3_errmsg(ptr noundef %53)
  %call56 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %call55)
  %54 = load ptr, ptr %pVtab, align 8
  %base57 = getelementptr inbounds %struct.closure_vtab, ptr %54, i32 0, i32 0
  %zErrMsg58 = getelementptr inbounds %struct.sqlite3_vtab, ptr %base57, i32 0, i32 2
  store ptr %call56, ptr %zErrMsg58, align 8
  %55 = load i32, ptr %rc, align 4
  store i32 %55, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59
  %56 = load i32, ptr %rc, align 4
  %cmp61 = icmp eq i32 %56, 0
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end60
  %57 = load ptr, ptr %pCur, align 8
  %58 = load i64, ptr %iRoot, align 8
  %call63 = call i32 @closureInsertNode(ptr noundef %sQueue, ptr noundef %57, i64 noundef %58, i32 noundef 0)
  store i32 %call63, ptr %rc, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then68, %if.end64
  %call65 = call ptr @queuePull(ptr noundef %sQueue)
  store ptr %call65, ptr %pAvl, align 8
  %cmp66 = icmp ne ptr %call65, null
  br i1 %cmp66, label %while.body, label %while.end88

while.body:                                       ; preds = %while.cond
  %59 = load ptr, ptr %pAvl, align 8
  %iGeneration = getelementptr inbounds %struct.closure_avl, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %iGeneration, align 8
  %61 = load i32, ptr %mxGen, align 4
  %cmp67 = icmp sge i32 %60, %61
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !12

if.end69:                                         ; preds = %while.body
  %62 = load ptr, ptr %pStmt, align 8
  %63 = load ptr, ptr %pAvl, align 8
  %id = getelementptr inbounds %struct.closure_avl, ptr %63, i32 0, i32 0
  %64 = load i64, ptr %id, align 8
  %call70 = call i32 @sqlite3_bind_int64(ptr noundef %62, i32 noundef 1, i64 noundef %64)
  br label %while.cond71

while.cond71:                                     ; preds = %if.end86, %if.end69
  %65 = load i32, ptr %rc, align 4
  %cmp72 = icmp eq i32 %65, 0
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond71
  %66 = load ptr, ptr %pStmt, align 8
  %call73 = call i32 @sqlite3_step(ptr noundef %66)
  %cmp74 = icmp eq i32 %call73, 100
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond71
  %67 = phi i1 [ false, %while.cond71 ], [ %cmp74, %land.rhs ]
  br i1 %67, label %while.body75, label %while.end

while.body75:                                     ; preds = %land.end
  %68 = load ptr, ptr %pStmt, align 8
  %call76 = call i32 @sqlite3_column_type(ptr noundef %68, i32 noundef 0)
  %cmp77 = icmp eq i32 %call76, 1
  br i1 %cmp77, label %if.then78, label %if.end86

if.then78:                                        ; preds = %while.body75
  %69 = load ptr, ptr %pStmt, align 8
  %call79 = call i64 @sqlite3_column_int64(ptr noundef %69, i32 noundef 0)
  store i64 %call79, ptr %iNew, align 8
  %70 = load ptr, ptr %pCur, align 8
  %pClosure = getelementptr inbounds %struct.closure_cursor, ptr %70, i32 0, i32 6
  %71 = load ptr, ptr %pClosure, align 8
  %72 = load i64, ptr %iNew, align 8
  %call80 = call ptr @closureAvlSearch(ptr noundef %71, i64 noundef %72)
  %cmp81 = icmp eq ptr %call80, null
  br i1 %cmp81, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.then78
  %73 = load ptr, ptr %pCur, align 8
  %74 = load i64, ptr %iNew, align 8
  %75 = load ptr, ptr %pAvl, align 8
  %iGeneration83 = getelementptr inbounds %struct.closure_avl, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %iGeneration83, align 8
  %add = add nsw i32 %76, 1
  %call84 = call i32 @closureInsertNode(ptr noundef %sQueue, ptr noundef %73, i64 noundef %74, i32 noundef %add)
  store i32 %call84, ptr %rc, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.then78
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %while.body75
  br label %while.cond71, !llvm.loop !13

while.end:                                        ; preds = %land.end
  %77 = load ptr, ptr %pStmt, align 8
  %call87 = call i32 @sqlite3_reset(ptr noundef %77)
  br label %while.cond, !llvm.loop !12

while.end88:                                      ; preds = %while.cond
  %78 = load ptr, ptr %pStmt, align 8
  %call89 = call i32 @sqlite3_finalize(ptr noundef %78)
  %79 = load i32, ptr %rc, align 4
  %cmp90 = icmp eq i32 %79, 0
  br i1 %cmp90, label %if.then91, label %if.end94

if.then91:                                        ; preds = %while.end88
  %80 = load ptr, ptr %pCur, align 8
  %pClosure92 = getelementptr inbounds %struct.closure_cursor, ptr %80, i32 0, i32 6
  %81 = load ptr, ptr %pClosure92, align 8
  %call93 = call ptr @closureAvlFirst(ptr noundef %81)
  %82 = load ptr, ptr %pCur, align 8
  %pCurrent = getelementptr inbounds %struct.closure_cursor, ptr %82, i32 0, i32 5
  store ptr %call93, ptr %pCurrent, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %while.end88
  %83 = load i32, ptr %rc, align 4
  store i32 %83, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end94, %if.then53, %if.then51, %if.then
  %84 = load i32, ptr %retval, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureNext(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %pCurrent = getelementptr inbounds %struct.closure_cursor, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %pCurrent, align 8
  %call = call ptr @closureAvlNext(ptr noundef %2)
  %3 = load ptr, ptr %pCur, align 8
  %pCurrent1 = getelementptr inbounds %struct.closure_cursor, ptr %3, i32 0, i32 5
  store ptr %call, ptr %pCurrent1, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %pCurrent = getelementptr inbounds %struct.closure_cursor, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %pCurrent, align 8
  %cmp = icmp eq ptr %2, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
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
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb7
    i32 5, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %pCur, align 8
  %pCurrent = getelementptr inbounds %struct.closure_cursor, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pCurrent, align 8
  %id = getelementptr inbounds %struct.closure_avl, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %id, align 8
  call void @sqlite3_result_int64(ptr noundef %2, i64 noundef %5)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %6 = load ptr, ptr %ctx.addr, align 8
  %7 = load ptr, ptr %pCur, align 8
  %pCurrent2 = getelementptr inbounds %struct.closure_cursor, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %pCurrent2, align 8
  %iGeneration = getelementptr inbounds %struct.closure_avl, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %iGeneration, align 8
  call void @sqlite3_result_int(ptr noundef %6, i32 noundef %9)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %10 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_null(ptr noundef %10)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %11 = load ptr, ptr %ctx.addr, align 8
  %12 = load ptr, ptr %pCur, align 8
  %zTableName = getelementptr inbounds %struct.closure_cursor, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %zTableName, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb4
  %14 = load ptr, ptr %pCur, align 8
  %zTableName5 = getelementptr inbounds %struct.closure_cursor, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %zTableName5, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb4
  %16 = load ptr, ptr %pCur, align 8
  %pVtab = getelementptr inbounds %struct.closure_cursor, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %pVtab, align 8
  %zTableName6 = getelementptr inbounds %struct.closure_vtab, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %zTableName6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %15, %cond.true ], [ %18, %cond.false ]
  call void @sqlite3_result_text(ptr noundef %11, ptr noundef %cond, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %19 = load ptr, ptr %ctx.addr, align 8
  %20 = load ptr, ptr %pCur, align 8
  %zIdColumn = getelementptr inbounds %struct.closure_cursor, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %zIdColumn, align 8
  %tobool8 = icmp ne ptr %21, null
  br i1 %tobool8, label %cond.true9, label %cond.false11

cond.true9:                                       ; preds = %sw.bb7
  %22 = load ptr, ptr %pCur, align 8
  %zIdColumn10 = getelementptr inbounds %struct.closure_cursor, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %zIdColumn10, align 8
  br label %cond.end14

cond.false11:                                     ; preds = %sw.bb7
  %24 = load ptr, ptr %pCur, align 8
  %pVtab12 = getelementptr inbounds %struct.closure_cursor, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %pVtab12, align 8
  %zIdColumn13 = getelementptr inbounds %struct.closure_vtab, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %zIdColumn13, align 8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false11, %cond.true9
  %cond15 = phi ptr [ %23, %cond.true9 ], [ %26, %cond.false11 ]
  call void @sqlite3_result_text(ptr noundef %19, ptr noundef %cond15, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %27 = load ptr, ptr %ctx.addr, align 8
  %28 = load ptr, ptr %pCur, align 8
  %zParentColumn = getelementptr inbounds %struct.closure_cursor, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %zParentColumn, align 8
  %tobool17 = icmp ne ptr %29, null
  br i1 %tobool17, label %cond.true18, label %cond.false20

cond.true18:                                      ; preds = %sw.bb16
  %30 = load ptr, ptr %pCur, align 8
  %zParentColumn19 = getelementptr inbounds %struct.closure_cursor, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %zParentColumn19, align 8
  br label %cond.end23

cond.false20:                                     ; preds = %sw.bb16
  %32 = load ptr, ptr %pCur, align 8
  %pVtab21 = getelementptr inbounds %struct.closure_cursor, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %pVtab21, align 8
  %zParentColumn22 = getelementptr inbounds %struct.closure_vtab, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %zParentColumn22, align 8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false20, %cond.true18
  %cond24 = phi ptr [ %31, %cond.true18 ], [ %34, %cond.false20 ]
  call void @sqlite3_result_text(ptr noundef %27, ptr noundef %cond24, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end23, %cond.end14, %cond.end, %sw.bb3, %sw.bb1, %sw.bb
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %pCurrent = getelementptr inbounds %struct.closure_cursor, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %pCurrent, align 8
  %id = getelementptr inbounds %struct.closure_avl, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %id, align 8
  %4 = load ptr, ptr %pRowid.addr, align 8
  store i64 %3, ptr %4, align 8
  ret i32 0
}

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @closureValueOfKey(ptr noundef %zKey, ptr noundef %zStr) #0 {
entry:
  %retval = alloca ptr, align 8
  %zKey.addr = alloca ptr, align 8
  %zStr.addr = alloca ptr, align 8
  %nKey = alloca i32, align 4
  %nStr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %zKey, ptr %zKey.addr, align 8
  store ptr %zStr, ptr %zStr.addr, align 8
  %0 = load ptr, ptr %zKey.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %nKey, align 4
  %1 = load ptr, ptr %zStr.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1)
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, ptr %nStr, align 4
  %2 = load i32, ptr %nStr, align 4
  %3 = load i32, ptr %nKey, align 4
  %add = add nsw i32 %3, 1
  %cmp = icmp slt i32 %2, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %zStr.addr, align 8
  %5 = load ptr, ptr %zKey.addr, align 8
  %6 = load i32, ptr %nKey, align 4
  %conv4 = sext i32 %6 to i64
  %call5 = call i32 @memcmp(ptr noundef %4, ptr noundef %5, i64 noundef %conv4)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %7 = load i32, ptr %nKey, align 4
  store i32 %7, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %8 = load ptr, ptr %zStr.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %10 to i32
  %call11 = call i32 @isspace(i32 noundef %conv10) #9
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %zStr.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %12, i64 %idxprom12
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp ne i32 %conv14, 61
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %for.end
  %15 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end18
  %16 = load ptr, ptr %zStr.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %16, i64 %idxprom20
  %18 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %18 to i32
  %call23 = call i32 @isspace(i32 noundef %conv22) #9
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, ptr %i, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %zStr.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %idx.ext
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then17, %if.then8, %if.then
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

declare void @sqlite3_free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @closureDequote(ptr noundef %zIn) #0 {
entry:
  %zIn.addr = alloca ptr, align 8
  %nIn = alloca i64, align 8
  %zOut = alloca ptr, align 8
  %q = alloca i8, align 1
  %iOut = alloca i32, align 4
  %iIn = alloca i32, align 4
  store ptr %zIn, ptr %zIn.addr, align 8
  %0 = load ptr, ptr %zIn.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  store i64 %call, ptr %nIn, align 8
  %1 = load i64, ptr %nIn, align 8
  %add = add nsw i64 %1, 1
  %call1 = call ptr @sqlite3_malloc64(i64 noundef %add)
  store ptr %call1, ptr %zOut, align 8
  %2 = load ptr, ptr %zOut, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end45

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %zIn.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  store i8 %4, ptr %q, align 1
  %5 = load i8, ptr %q, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 91
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load i8, ptr %q, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv3, 39
  br i1 %cmp4, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load i8, ptr %q, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv7, 34
  br i1 %cmp8, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %8 = load i8, ptr %q, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp ne i32 %conv11, 96
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %land.lhs.true10
  %9 = load ptr, ptr %zOut, align 8
  %10 = load ptr, ptr %zIn.addr, align 8
  %11 = load i64, ptr %nIn, align 8
  %add15 = add nsw i64 %11, 1
  %12 = load ptr, ptr %zOut, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call16 = call ptr @__memcpy_chk(ptr noundef %9, ptr noundef %10, i64 noundef %add15, i64 noundef %13) #7
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true, %if.then
  store i32 0, ptr %iOut, align 4
  %14 = load i8, ptr %q, align 1
  %conv17 = sext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 91
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.else
  store i8 93, ptr %q, align 1
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.else
  store i32 1, ptr %iIn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %iIn, align 4
  %conv21 = sext i32 %15 to i64
  %16 = load i64, ptr %nIn, align 8
  %cmp22 = icmp slt i64 %conv21, %16
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %zIn.addr, align 8
  %18 = load i32, ptr %iIn, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %17, i64 %idxprom
  %19 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %19 to i32
  %20 = load i8, ptr %q, align 1
  %conv26 = sext i8 %20 to i32
  %cmp27 = icmp eq i32 %conv25, %conv26
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body
  %21 = load i32, ptr %iIn, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %iIn, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.body
  %22 = load ptr, ptr %zIn.addr, align 8
  %23 = load i32, ptr %iIn, align 4
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %22, i64 %idxprom31
  %24 = load i8, ptr %arrayidx32, align 1
  %25 = load ptr, ptr %zOut, align 8
  %26 = load i32, ptr %iOut, align 4
  %inc33 = add nsw i32 %26, 1
  store i32 %inc33, ptr %iOut, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %25, i64 %idxprom34
  store i8 %24, ptr %arrayidx35, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %27 = load i32, ptr %iIn, align 4
  %inc36 = add nsw i32 %27, 1
  store i32 %inc36, ptr %iIn, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.then14
  %28 = load ptr, ptr %zOut, align 8
  %call38 = call i64 @strlen(ptr noundef %28)
  %conv39 = trunc i64 %call38 to i32
  %conv40 = sext i32 %conv39 to i64
  %29 = load i64, ptr %nIn, align 8
  %cmp41 = icmp sle i64 %conv40, %29
  %lnot = xor i1 %cmp41, true
  %lnot.ext = zext i1 %lnot to i32
  %conv43 = sext i32 %lnot.ext to i64
  %tobool44 = icmp ne i64 %conv43, 0
  br i1 %tobool44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end37
  call void @__assert_rtn(ptr noundef @__func__.closureDequote, ptr noundef @.str.7, i32 noundef 445, ptr noundef @.str.8) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %30
  br label %if.end45

if.end45:                                         ; preds = %cond.end, %entry
  %31 = load ptr, ptr %zOut, align 8
  ret ptr %31
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @closureFree(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %zDb = getelementptr inbounds %struct.closure_vtab, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %zDb, align 8
  call void @sqlite3_free(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %zSelf = getelementptr inbounds %struct.closure_vtab, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %zSelf, align 8
  call void @sqlite3_free(ptr noundef %4)
  %5 = load ptr, ptr %p.addr, align 8
  %zTableName = getelementptr inbounds %struct.closure_vtab, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %zTableName, align 8
  call void @sqlite3_free(ptr noundef %6)
  %7 = load ptr, ptr %p.addr, align 8
  %zIdColumn = getelementptr inbounds %struct.closure_vtab, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %zIdColumn, align 8
  call void @sqlite3_free(ptr noundef %8)
  %9 = load ptr, ptr %p.addr, align 8
  %zParentColumn = getelementptr inbounds %struct.closure_vtab, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %zParentColumn, align 8
  call void @sqlite3_free(ptr noundef %10)
  %11 = load ptr, ptr %p.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %11, i32 noundef 0, i64 noundef 80, i64 noundef %13) #7
  %14 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #4

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @closureClearCursor(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %pClosure = getelementptr inbounds %struct.closure_cursor, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %pClosure, align 8
  call void @closureAvlDestroy(ptr noundef %1, ptr noundef @closureMemFree)
  %2 = load ptr, ptr %pCur.addr, align 8
  %zTableName = getelementptr inbounds %struct.closure_cursor, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %zTableName, align 8
  call void @sqlite3_free(ptr noundef %3)
  %4 = load ptr, ptr %pCur.addr, align 8
  %zIdColumn = getelementptr inbounds %struct.closure_cursor, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %zIdColumn, align 8
  call void @sqlite3_free(ptr noundef %5)
  %6 = load ptr, ptr %pCur.addr, align 8
  %zParentColumn = getelementptr inbounds %struct.closure_cursor, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %zParentColumn, align 8
  call void @sqlite3_free(ptr noundef %7)
  %8 = load ptr, ptr %pCur.addr, align 8
  %zTableName1 = getelementptr inbounds %struct.closure_cursor, ptr %8, i32 0, i32 2
  store ptr null, ptr %zTableName1, align 8
  %9 = load ptr, ptr %pCur.addr, align 8
  %zIdColumn2 = getelementptr inbounds %struct.closure_cursor, ptr %9, i32 0, i32 3
  store ptr null, ptr %zIdColumn2, align 8
  %10 = load ptr, ptr %pCur.addr, align 8
  %zParentColumn3 = getelementptr inbounds %struct.closure_cursor, ptr %10, i32 0, i32 4
  store ptr null, ptr %zParentColumn3, align 8
  %11 = load ptr, ptr %pCur.addr, align 8
  %pCurrent = getelementptr inbounds %struct.closure_cursor, ptr %11, i32 0, i32 5
  store ptr null, ptr %pCurrent, align 8
  %12 = load ptr, ptr %pCur.addr, align 8
  %pClosure4 = getelementptr inbounds %struct.closure_cursor, ptr %12, i32 0, i32 6
  store ptr null, ptr %pClosure4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @closureAvlDestroy(ptr noundef %p, ptr noundef %xDestroy) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %xDestroy.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %xDestroy, ptr %xDestroy.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %pBefore = getelementptr inbounds %struct.closure_avl, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pBefore, align 8
  %3 = load ptr, ptr %xDestroy.addr, align 8
  call void @closureAvlDestroy(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %p.addr, align 8
  %pAfter = getelementptr inbounds %struct.closure_avl, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pAfter, align 8
  %6 = load ptr, ptr %xDestroy.addr, align 8
  call void @closureAvlDestroy(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %xDestroy.addr, align 8
  %8 = load ptr, ptr %p.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @closureMemFree(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare i64 @sqlite3_value_int64(ptr noundef) #1

declare i32 @sqlite3_value_int(ptr noundef) #1

declare ptr @sqlite3_value_text(ptr noundef) #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare ptr @sqlite3_errmsg(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @closureInsertNode(ptr noundef %pQueue, ptr noundef %pCur, i64 noundef %id, i32 noundef %iGeneration) #0 {
entry:
  %retval = alloca i32, align 4
  %pQueue.addr = alloca ptr, align 8
  %pCur.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %iGeneration.addr = alloca i32, align 4
  %pNew = alloca ptr, align 8
  store ptr %pQueue, ptr %pQueue.addr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i64 %id, ptr %id.addr, align 8
  store i32 %iGeneration, ptr %iGeneration.addr, align 4
  %call = call ptr @sqlite3_malloc64(i64 noundef 56)
  store ptr %call, ptr %pNew, align 8
  %0 = load ptr, ptr %pNew, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pNew, align 8
  %2 = load ptr, ptr %pNew, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 56, i64 noundef %3) #7
  %4 = load i64, ptr %id.addr, align 8
  %5 = load ptr, ptr %pNew, align 8
  %id2 = getelementptr inbounds %struct.closure_avl, ptr %5, i32 0, i32 0
  store i64 %4, ptr %id2, align 8
  %6 = load i32, ptr %iGeneration.addr, align 4
  %7 = load ptr, ptr %pNew, align 8
  %iGeneration3 = getelementptr inbounds %struct.closure_avl, ptr %7, i32 0, i32 1
  store i32 %6, ptr %iGeneration3, align 8
  %8 = load ptr, ptr %pCur.addr, align 8
  %pClosure = getelementptr inbounds %struct.closure_cursor, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %pNew, align 8
  %call4 = call ptr @closureAvlInsert(ptr noundef %pClosure, ptr noundef %9)
  %10 = load ptr, ptr %pQueue.addr, align 8
  %11 = load ptr, ptr %pNew, align 8
  call void @queuePush(ptr noundef %10, ptr noundef %11)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @queuePull(ptr noundef %pQueue) #0 {
entry:
  %pQueue.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pQueue, ptr %pQueue.addr, align 8
  %0 = load ptr, ptr %pQueue.addr, align 8
  %pFirst = getelementptr inbounds %struct.closure_queue, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pFirst, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %pList = getelementptr inbounds %struct.closure_avl, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pList, align 8
  %5 = load ptr, ptr %pQueue.addr, align 8
  %pFirst1 = getelementptr inbounds %struct.closure_queue, ptr %5, i32 0, i32 0
  store ptr %4, ptr %pFirst1, align 8
  %6 = load ptr, ptr %pQueue.addr, align 8
  %pFirst2 = getelementptr inbounds %struct.closure_queue, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pFirst2, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %pQueue.addr, align 8
  %pLast = getelementptr inbounds %struct.closure_queue, ptr %8, i32 0, i32 1
  store ptr null, ptr %pLast, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %p, align 8
  ret ptr %9
}

declare i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

declare i32 @sqlite3_column_type(ptr noundef, i32 noundef) #1

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @closureAvlSearch(ptr noundef %p, i64 noundef %id) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 %id, ptr %id.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i64, ptr %id.addr, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %id1 = getelementptr inbounds %struct.closure_avl, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %id1, align 8
  %cmp = icmp ne i64 %1, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i64, ptr %id.addr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %id2 = getelementptr inbounds %struct.closure_avl, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %id2, align 8
  %cmp3 = icmp slt i64 %5, %7
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %8 = load ptr, ptr %p.addr, align 8
  %pBefore = getelementptr inbounds %struct.closure_avl, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %pBefore, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %10 = load ptr, ptr %p.addr, align 8
  %pAfter = getelementptr inbounds %struct.closure_avl, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pAfter, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ %11, %cond.false ]
  store ptr %cond, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %p.addr, align 8
  ret ptr %12
}

declare i32 @sqlite3_reset(ptr noundef) #1

declare i32 @sqlite3_finalize(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @closureAvlInsert(ptr noundef %ppHead, ptr noundef %pNew) #0 {
entry:
  %retval = alloca ptr, align 8
  %ppHead.addr = alloca ptr, align 8
  %pNew.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %ppHead, ptr %ppHead.addr, align 8
  store ptr %pNew, ptr %pNew.addr, align 8
  %0 = load ptr, ptr %ppHead.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pNew.addr, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %pNew.addr, align 8
  %pUp = getelementptr inbounds %struct.closure_avl, ptr %4, i32 0, i32 5
  store ptr null, ptr %pUp, align 8
  br label %if.end25

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.else
  %5 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %pNew.addr, align 8
  %id = getelementptr inbounds %struct.closure_avl, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %id, align 8
  %8 = load ptr, ptr %p, align 8
  %id1 = getelementptr inbounds %struct.closure_avl, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %id1, align 8
  %cmp2 = icmp slt i64 %7, %9
  br i1 %cmp2, label %if.then3, label %if.else10

if.then3:                                         ; preds = %while.body
  %10 = load ptr, ptr %p, align 8
  %pBefore = getelementptr inbounds %struct.closure_avl, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pBefore, align 8
  %tobool4 = icmp ne ptr %11, null
  br i1 %tobool4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.then3
  %12 = load ptr, ptr %p, align 8
  %pBefore6 = getelementptr inbounds %struct.closure_avl, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pBefore6, align 8
  store ptr %13, ptr %p, align 8
  br label %if.end

if.else7:                                         ; preds = %if.then3
  %14 = load ptr, ptr %pNew.addr, align 8
  %15 = load ptr, ptr %p, align 8
  %pBefore8 = getelementptr inbounds %struct.closure_avl, ptr %15, i32 0, i32 3
  store ptr %14, ptr %pBefore8, align 8
  %16 = load ptr, ptr %p, align 8
  %17 = load ptr, ptr %pNew.addr, align 8
  %pUp9 = getelementptr inbounds %struct.closure_avl, ptr %17, i32 0, i32 5
  store ptr %16, ptr %pUp9, align 8
  br label %while.end

if.end:                                           ; preds = %if.then5
  br label %if.end24

if.else10:                                        ; preds = %while.body
  %18 = load ptr, ptr %pNew.addr, align 8
  %id11 = getelementptr inbounds %struct.closure_avl, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %id11, align 8
  %20 = load ptr, ptr %p, align 8
  %id12 = getelementptr inbounds %struct.closure_avl, ptr %20, i32 0, i32 0
  %21 = load i64, ptr %id12, align 8
  %cmp13 = icmp sgt i64 %19, %21
  br i1 %cmp13, label %if.then14, label %if.else22

if.then14:                                        ; preds = %if.else10
  %22 = load ptr, ptr %p, align 8
  %pAfter = getelementptr inbounds %struct.closure_avl, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %pAfter, align 8
  %tobool15 = icmp ne ptr %23, null
  br i1 %tobool15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.then14
  %24 = load ptr, ptr %p, align 8
  %pAfter17 = getelementptr inbounds %struct.closure_avl, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %pAfter17, align 8
  store ptr %25, ptr %p, align 8
  br label %if.end21

if.else18:                                        ; preds = %if.then14
  %26 = load ptr, ptr %pNew.addr, align 8
  %27 = load ptr, ptr %p, align 8
  %pAfter19 = getelementptr inbounds %struct.closure_avl, ptr %27, i32 0, i32 4
  store ptr %26, ptr %pAfter19, align 8
  %28 = load ptr, ptr %p, align 8
  %29 = load ptr, ptr %pNew.addr, align 8
  %pUp20 = getelementptr inbounds %struct.closure_avl, ptr %29, i32 0, i32 5
  store ptr %28, ptr %pUp20, align 8
  br label %while.end

if.end21:                                         ; preds = %if.then16
  br label %if.end23

if.else22:                                        ; preds = %if.else10
  %30 = load ptr, ptr %p, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

if.end23:                                         ; preds = %if.end21
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %if.else18, %if.else7, %while.cond
  br label %if.end25

if.end25:                                         ; preds = %while.end, %if.then
  %31 = load ptr, ptr %pNew.addr, align 8
  %pBefore26 = getelementptr inbounds %struct.closure_avl, ptr %31, i32 0, i32 3
  store ptr null, ptr %pBefore26, align 8
  %32 = load ptr, ptr %pNew.addr, align 8
  %pAfter27 = getelementptr inbounds %struct.closure_avl, ptr %32, i32 0, i32 4
  store ptr null, ptr %pAfter27, align 8
  %33 = load ptr, ptr %pNew.addr, align 8
  %height = getelementptr inbounds %struct.closure_avl, ptr %33, i32 0, i32 6
  store i16 1, ptr %height, align 8
  %34 = load ptr, ptr %pNew.addr, align 8
  %imbalance = getelementptr inbounds %struct.closure_avl, ptr %34, i32 0, i32 7
  store i16 0, ptr %imbalance, align 2
  %35 = load ptr, ptr %p, align 8
  %call = call ptr @closureAvlBalance(ptr noundef %35)
  %36 = load ptr, ptr %ppHead.addr, align 8
  store ptr %call, ptr %36, align 8
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end25, %if.else22
  %37 = load ptr, ptr %retval, align 8
  ret ptr %37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @queuePush(ptr noundef %pQueue, ptr noundef %pNode) #0 {
entry:
  %pQueue.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  store ptr %pQueue, ptr %pQueue.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %pList = getelementptr inbounds %struct.closure_avl, ptr %0, i32 0, i32 2
  store ptr null, ptr %pList, align 8
  %1 = load ptr, ptr %pQueue.addr, align 8
  %pLast = getelementptr inbounds %struct.closure_queue, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pLast, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pNode.addr, align 8
  %4 = load ptr, ptr %pQueue.addr, align 8
  %pLast1 = getelementptr inbounds %struct.closure_queue, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pLast1, align 8
  %pList2 = getelementptr inbounds %struct.closure_avl, ptr %5, i32 0, i32 2
  store ptr %3, ptr %pList2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %pNode.addr, align 8
  %7 = load ptr, ptr %pQueue.addr, align 8
  %pFirst = getelementptr inbounds %struct.closure_queue, ptr %7, i32 0, i32 0
  store ptr %6, ptr %pFirst, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %pNode.addr, align 8
  %9 = load ptr, ptr %pQueue.addr, align 8
  %pLast3 = getelementptr inbounds %struct.closure_queue, ptr %9, i32 0, i32 1
  store ptr %8, ptr %pLast3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @closureAvlBalance(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pTop = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %pB = alloca ptr, align 8
  %pA = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pTop, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %entry
  %1 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p.addr, align 8
  call void @closureAvlRecomputeHeight(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %imbalance = getelementptr inbounds %struct.closure_avl, ptr %3, i32 0, i32 7
  %4 = load i16, ptr %imbalance, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %p.addr, align 8
  %pBefore = getelementptr inbounds %struct.closure_avl, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %pBefore, align 8
  store ptr %6, ptr %pB, align 8
  %7 = load ptr, ptr %pB, align 8
  %imbalance2 = getelementptr inbounds %struct.closure_avl, ptr %7, i32 0, i32 7
  %8 = load i16, ptr %imbalance2, align 2
  %conv3 = sext i16 %8 to i32
  %cmp4 = icmp slt i32 %conv3, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load ptr, ptr %pB, align 8
  %call = call ptr @closureAvlRotateAfter(ptr noundef %9)
  %10 = load ptr, ptr %p.addr, align 8
  %pBefore7 = getelementptr inbounds %struct.closure_avl, ptr %10, i32 0, i32 3
  store ptr %call, ptr %pBefore7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %11 = load ptr, ptr %p.addr, align 8
  %call8 = call ptr @closureAvlFromPtr(ptr noundef %11, ptr noundef %p.addr)
  store ptr %call8, ptr %pp, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %call9 = call ptr @closureAvlRotateBefore(ptr noundef %12)
  %13 = load ptr, ptr %pp, align 8
  store ptr %call9, ptr %13, align 8
  store ptr %call9, ptr %p.addr, align 8
  br label %if.end26

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %p.addr, align 8
  %imbalance10 = getelementptr inbounds %struct.closure_avl, ptr %14, i32 0, i32 7
  %15 = load i16, ptr %imbalance10, align 2
  %conv11 = sext i16 %15 to i32
  %cmp12 = icmp sle i32 %conv11, -2
  br i1 %cmp12, label %if.then14, label %if.end25

if.then14:                                        ; preds = %if.else
  %16 = load ptr, ptr %p.addr, align 8
  %pAfter = getelementptr inbounds %struct.closure_avl, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pAfter, align 8
  store ptr %17, ptr %pA, align 8
  %18 = load ptr, ptr %pA, align 8
  %imbalance15 = getelementptr inbounds %struct.closure_avl, ptr %18, i32 0, i32 7
  %19 = load i16, ptr %imbalance15, align 2
  %conv16 = sext i16 %19 to i32
  %cmp17 = icmp sgt i32 %conv16, 0
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then14
  %20 = load ptr, ptr %pA, align 8
  %call20 = call ptr @closureAvlRotateBefore(ptr noundef %20)
  %21 = load ptr, ptr %p.addr, align 8
  %pAfter21 = getelementptr inbounds %struct.closure_avl, ptr %21, i32 0, i32 4
  store ptr %call20, ptr %pAfter21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then14
  %22 = load ptr, ptr %p.addr, align 8
  %call23 = call ptr @closureAvlFromPtr(ptr noundef %22, ptr noundef %p.addr)
  store ptr %call23, ptr %pp, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %call24 = call ptr @closureAvlRotateAfter(ptr noundef %23)
  %24 = load ptr, ptr %pp, align 8
  store ptr %call24, ptr %24, align 8
  store ptr %call24, ptr %p.addr, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end
  %25 = load ptr, ptr %p.addr, align 8
  store ptr %25, ptr %pTop, align 8
  %26 = load ptr, ptr %p.addr, align 8
  %pUp = getelementptr inbounds %struct.closure_avl, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pUp, align 8
  store ptr %27, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %pTop, align 8
  ret ptr %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @closureAvlRecomputeHeight(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %hBefore = alloca i16, align 2
  %hAfter = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBefore = getelementptr inbounds %struct.closure_avl, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pBefore, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pBefore1 = getelementptr inbounds %struct.closure_avl, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pBefore1, align 8
  %height = getelementptr inbounds %struct.closure_avl, ptr %3, i32 0, i32 6
  %4 = load i16, ptr %height, align 8
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  %conv2 = trunc i32 %cond to i16
  store i16 %conv2, ptr %hBefore, align 2
  %5 = load ptr, ptr %p.addr, align 8
  %pAfter = getelementptr inbounds %struct.closure_avl, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pAfter, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %cond.true4, label %cond.false8

cond.true4:                                       ; preds = %cond.end
  %7 = load ptr, ptr %p.addr, align 8
  %pAfter5 = getelementptr inbounds %struct.closure_avl, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pAfter5, align 8
  %height6 = getelementptr inbounds %struct.closure_avl, ptr %8, i32 0, i32 6
  %9 = load i16, ptr %height6, align 8
  %conv7 = sext i16 %9 to i32
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %cond.true4
  %cond10 = phi i32 [ %conv7, %cond.true4 ], [ 0, %cond.false8 ]
  %conv11 = trunc i32 %cond10 to i16
  store i16 %conv11, ptr %hAfter, align 2
  %10 = load i16, ptr %hBefore, align 2
  %conv12 = sext i16 %10 to i32
  %11 = load i16, ptr %hAfter, align 2
  %conv13 = sext i16 %11 to i32
  %sub = sub nsw i32 %conv12, %conv13
  %conv14 = trunc i32 %sub to i16
  %12 = load ptr, ptr %p.addr, align 8
  %imbalance = getelementptr inbounds %struct.closure_avl, ptr %12, i32 0, i32 7
  store i16 %conv14, ptr %imbalance, align 2
  %13 = load i16, ptr %hBefore, align 2
  %conv15 = sext i16 %13 to i32
  %14 = load i16, ptr %hAfter, align 2
  %conv16 = sext i16 %14 to i32
  %cmp = icmp sgt i32 %conv15, %conv16
  br i1 %cmp, label %cond.true18, label %cond.false20

cond.true18:                                      ; preds = %cond.end9
  %15 = load i16, ptr %hBefore, align 2
  %conv19 = sext i16 %15 to i32
  br label %cond.end22

cond.false20:                                     ; preds = %cond.end9
  %16 = load i16, ptr %hAfter, align 2
  %conv21 = sext i16 %16 to i32
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false20, %cond.true18
  %cond23 = phi i32 [ %conv19, %cond.true18 ], [ %conv21, %cond.false20 ]
  %add = add nsw i32 %cond23, 1
  %conv24 = trunc i32 %add to i16
  %17 = load ptr, ptr %p.addr, align 8
  %height25 = getelementptr inbounds %struct.closure_avl, ptr %17, i32 0, i32 6
  store i16 %conv24, ptr %height25, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @closureAvlRotateAfter(ptr noundef %pP) #0 {
entry:
  %pP.addr = alloca ptr, align 8
  %pA = alloca ptr, align 8
  %pY = alloca ptr, align 8
  store ptr %pP, ptr %pP.addr, align 8
  %0 = load ptr, ptr %pP.addr, align 8
  %pAfter = getelementptr inbounds %struct.closure_avl, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pAfter, align 8
  store ptr %1, ptr %pA, align 8
  %2 = load ptr, ptr %pA, align 8
  %pBefore = getelementptr inbounds %struct.closure_avl, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pBefore, align 8
  store ptr %3, ptr %pY, align 8
  %4 = load ptr, ptr %pP.addr, align 8
  %pUp = getelementptr inbounds %struct.closure_avl, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %pUp, align 8
  %6 = load ptr, ptr %pA, align 8
  %pUp1 = getelementptr inbounds %struct.closure_avl, ptr %6, i32 0, i32 5
  store ptr %5, ptr %pUp1, align 8
  %7 = load ptr, ptr %pP.addr, align 8
  %8 = load ptr, ptr %pA, align 8
  %pBefore2 = getelementptr inbounds %struct.closure_avl, ptr %8, i32 0, i32 3
  store ptr %7, ptr %pBefore2, align 8
  %9 = load ptr, ptr %pA, align 8
  %10 = load ptr, ptr %pP.addr, align 8
  %pUp3 = getelementptr inbounds %struct.closure_avl, ptr %10, i32 0, i32 5
  store ptr %9, ptr %pUp3, align 8
  %11 = load ptr, ptr %pY, align 8
  %12 = load ptr, ptr %pP.addr, align 8
  %pAfter4 = getelementptr inbounds %struct.closure_avl, ptr %12, i32 0, i32 4
  store ptr %11, ptr %pAfter4, align 8
  %13 = load ptr, ptr %pY, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %pP.addr, align 8
  %15 = load ptr, ptr %pY, align 8
  %pUp5 = getelementptr inbounds %struct.closure_avl, ptr %15, i32 0, i32 5
  store ptr %14, ptr %pUp5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %pP.addr, align 8
  call void @closureAvlRecomputeHeight(ptr noundef %16)
  %17 = load ptr, ptr %pA, align 8
  call void @closureAvlRecomputeHeight(ptr noundef %17)
  %18 = load ptr, ptr %pA, align 8
  ret ptr %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @closureAvlFromPtr(ptr noundef %p, ptr noundef %pp) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %pUp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pUp1 = getelementptr inbounds %struct.closure_avl, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pUp1, align 8
  store ptr %1, ptr %pUp, align 8
  %2 = load ptr, ptr %pUp, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pp.addr, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pUp, align 8
  %pAfter = getelementptr inbounds %struct.closure_avl, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pAfter, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %cmp2 = icmp eq ptr %5, %6
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %pUp, align 8
  %pAfter4 = getelementptr inbounds %struct.closure_avl, ptr %7, i32 0, i32 4
  store ptr %pAfter4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %pUp, align 8
  %pBefore = getelementptr inbounds %struct.closure_avl, ptr %8, i32 0, i32 3
  store ptr %pBefore, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @closureAvlRotateBefore(ptr noundef %pP) #0 {
entry:
  %pP.addr = alloca ptr, align 8
  %pB = alloca ptr, align 8
  %pY = alloca ptr, align 8
  store ptr %pP, ptr %pP.addr, align 8
  %0 = load ptr, ptr %pP.addr, align 8
  %pBefore = getelementptr inbounds %struct.closure_avl, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pBefore, align 8
  store ptr %1, ptr %pB, align 8
  %2 = load ptr, ptr %pB, align 8
  %pAfter = getelementptr inbounds %struct.closure_avl, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pAfter, align 8
  store ptr %3, ptr %pY, align 8
  %4 = load ptr, ptr %pP.addr, align 8
  %pUp = getelementptr inbounds %struct.closure_avl, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %pUp, align 8
  %6 = load ptr, ptr %pB, align 8
  %pUp1 = getelementptr inbounds %struct.closure_avl, ptr %6, i32 0, i32 5
  store ptr %5, ptr %pUp1, align 8
  %7 = load ptr, ptr %pP.addr, align 8
  %8 = load ptr, ptr %pB, align 8
  %pAfter2 = getelementptr inbounds %struct.closure_avl, ptr %8, i32 0, i32 4
  store ptr %7, ptr %pAfter2, align 8
  %9 = load ptr, ptr %pB, align 8
  %10 = load ptr, ptr %pP.addr, align 8
  %pUp3 = getelementptr inbounds %struct.closure_avl, ptr %10, i32 0, i32 5
  store ptr %9, ptr %pUp3, align 8
  %11 = load ptr, ptr %pY, align 8
  %12 = load ptr, ptr %pP.addr, align 8
  %pBefore4 = getelementptr inbounds %struct.closure_avl, ptr %12, i32 0, i32 3
  store ptr %11, ptr %pBefore4, align 8
  %13 = load ptr, ptr %pY, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %pP.addr, align 8
  %15 = load ptr, ptr %pY, align 8
  %pUp5 = getelementptr inbounds %struct.closure_avl, ptr %15, i32 0, i32 5
  store ptr %14, ptr %pUp5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %pP.addr, align 8
  call void @closureAvlRecomputeHeight(ptr noundef %16)
  %17 = load ptr, ptr %pB, align 8
  call void @closureAvlRecomputeHeight(ptr noundef %17)
  %18 = load ptr, ptr %pB, align 8
  ret ptr %18
}

declare void @sqlite3_result_int64(ptr noundef, i64 noundef) #1

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

declare void @sqlite3_result_null(ptr noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn }
attributes #9 = { nounwind readonly willreturn }

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
