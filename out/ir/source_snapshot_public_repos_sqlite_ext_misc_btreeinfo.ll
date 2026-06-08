; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/btreeinfo.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/btreeinfo.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BinfoTable = type { %struct.sqlite3_vtab, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.BinfoCursor = type { %struct.sqlite3_vtab_cursor, ptr, i32, i32, i64, i32, i32, i32, ptr }
%struct.sqlite3_vtab_cursor = type { ptr }

@sqlite3BinfoRegister.binfo_module = internal global %struct.sqlite3_module { i32 0, ptr null, ptr @binfoConnect, ptr @binfoBestIndex, ptr @binfoDisconnect, ptr null, ptr @binfoOpen, ptr @binfoClose, ptr @binfoFilter, ptr @binfoNext, ptr @binfoEof, ptr @binfoColumn, ptr @binfoRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [17 x i8] c"sqlite_btreeinfo\00", align 1
@.str.1 = private unnamed_addr constant [174 x i8] c"CREATE TABLE x(\0A type TEXT,\0A name TEXT,\0A tbl_name TEXT,\0A rootpage INT,\0A sql TEXT,\0A hasRowid BOOLEAN,\0A nEntry INT,\0A nPage INT,\0A depth INT,\0A szPage INT,\0A zSchema TEXT HIDDEN\0A)\00", align 1
@__func__.binfoConnect = private unnamed_addr constant [13 x i8] c"binfoConnect\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"btreeinfo.c\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"rc==SQLITE_OK || pTab==0\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.6 = private unnamed_addr constant [159 x i8] c"SELECT 0, 'table','sqlite_schema','sqlite_schema',1,NULL UNION ALL SELECT rowid, type, name, tbl_name, rootpage, sql FROM \22%w\22.sqlite_schema WHERE rootpage>=1\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"SELECT data FROM sqlite_dbpage('main') WHERE pgno=?1\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"btree nested too deep\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3BinfoRegister(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_module(ptr noundef %0, ptr noundef @.str, ptr noundef @sqlite3BinfoRegister.binfo_module, ptr noundef null)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store ptr null, ptr %pTab, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef @.str.1)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call1 = call ptr @sqlite3_malloc64(i64 noundef 32)
  store ptr %call1, ptr %pTab, align 8
  %2 = load ptr, ptr %pTab, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 7, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end4
  %4 = load ptr, ptr %pTab, align 8
  %cmp6 = icmp eq ptr %4, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %5 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot = xor i1 %5, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  call void @__assert_rtn(ptr noundef @__func__.binfoConnect, ptr noundef @.str.2, i32 noundef 144, ptr noundef @.str.3) #5
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %6
  %7 = load ptr, ptr %pTab, align 8
  %tobool7 = icmp ne ptr %7, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %cond.end
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %pTab, align 8
  %db9 = getelementptr inbounds %struct.BinfoTable, ptr %9, i32 0, i32 1
  store ptr %8, ptr %db9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %cond.end
  %10 = load ptr, ptr %pTab, align 8
  %11 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %10, ptr %11, align 8
  %12 = load i32, ptr %rc, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  %0 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %0, i32 0, i32 9
  store double 1.000000e+04, ptr %estimatedCost, align 8
  %1 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows = getelementptr inbounds %struct.sqlite3_index_info, ptr %1, i32 0, i32 10
  store i64 100, ptr %estimatedRows, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nConstraint, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %aConstraint, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %8 = load ptr, ptr %p, align 8
  %usable = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %usable, align 1
  %conv = zext i8 %9 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %p, align 8
  %iColumn = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %iColumn, align 4
  %cmp1 = icmp eq i32 %11, 10
  br i1 %cmp1, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %p, align 8
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %12, i32 0, i32 1
  %13 = load i8, ptr %op, align 4
  %conv4 = zext i8 %13 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %14 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost7 = getelementptr inbounds %struct.sqlite3_index_info, ptr %14, i32 0, i32 9
  store double 1.000000e+03, ptr %estimatedCost7, align 8
  %15 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %15, i32 0, i32 5
  store i32 1, ptr %idxNum, align 8
  %16 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %aConstraintUsage, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %17, i64 %idxprom8
  %argvIndex = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx9, i32 0, i32 0
  store i32 1, ptr %argvIndex, align 4
  %19 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage10 = getelementptr inbounds %struct.sqlite3_index_info, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %aConstraintUsage10, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %20, i64 %idxprom11
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx12, i32 0, i32 1
  store i8 1, ptr %omit, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  call void @sqlite3_free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoOpen(ptr noundef %pVTab, ptr noundef %ppCursor) #0 {
entry:
  %retval = alloca i32, align 4
  %pVTab.addr = alloca ptr, align 8
  %ppCursor.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  store ptr %pVTab, ptr %pVTab.addr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 56)
  store ptr %call, ptr %pCsr, align 8
  %0 = load ptr, ptr %pCsr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %pCsr, align 8
  %2 = load ptr, ptr %pCsr, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 56, i64 noundef %3) #6
  %4 = load ptr, ptr %pVTab.addr, align 8
  %5 = load ptr, ptr %pCsr, align 8
  %base = getelementptr inbounds %struct.BinfoCursor, ptr %5, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  store ptr %4, ptr %pVtab, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %6 = load ptr, ptr %pCsr, align 8
  %7 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %6, ptr %7, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoClose(ptr noundef %pCursor) #0 {
entry:
  %pCursor.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  store ptr %pCursor, ptr %pCursor.addr, align 8
  %0 = load ptr, ptr %pCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load ptr, ptr %pCsr, align 8
  %pStmt = getelementptr inbounds %struct.BinfoCursor, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pStmt, align 8
  %call = call i32 @sqlite3_finalize(ptr noundef %2)
  %3 = load ptr, ptr %pCsr, align 8
  %zSchema = getelementptr inbounds %struct.BinfoCursor, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %zSchema, align 8
  call void @sqlite3_free(ptr noundef %4)
  %5 = load ptr, ptr %pCsr, align 8
  call void @sqlite3_free(ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoFilter(ptr noundef %pCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %pCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCursor, ptr %pCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load ptr, ptr %pCursor.addr, align 8
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVtab, align 8
  store ptr %2, ptr %pTab, align 8
  %3 = load ptr, ptr %pCsr, align 8
  %zSchema = getelementptr inbounds %struct.BinfoCursor, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %zSchema, align 8
  call void @sqlite3_free(ptr noundef %4)
  %5 = load i32, ptr %idxNum.addr, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %7)
  %cmp1 = icmp ne i32 %call, 5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @sqlite3_value_text(ptr noundef %9)
  %call4 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.4, ptr noundef %call3)
  %10 = load ptr, ptr %pCsr, align 8
  %zSchema5 = getelementptr inbounds %struct.BinfoCursor, ptr %10, i32 0, i32 8
  store ptr %call4, ptr %zSchema5, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call6 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.5)
  %11 = load ptr, ptr %pCsr, align 8
  %zSchema7 = getelementptr inbounds %struct.BinfoCursor, ptr %11, i32 0, i32 8
  store ptr %call6, ptr %zSchema7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %pCsr, align 8
  %zSchema8 = getelementptr inbounds %struct.BinfoCursor, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %zSchema8, align 8
  %call9 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.6, ptr noundef %13)
  store ptr %call9, ptr %zSql, align 8
  %14 = load ptr, ptr %pCsr, align 8
  %pStmt = getelementptr inbounds %struct.BinfoCursor, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %pStmt, align 8
  %call10 = call i32 @sqlite3_finalize(ptr noundef %15)
  %16 = load ptr, ptr %pCsr, align 8
  %pStmt11 = getelementptr inbounds %struct.BinfoCursor, ptr %16, i32 0, i32 1
  store ptr null, ptr %pStmt11, align 8
  %17 = load ptr, ptr %pCsr, align 8
  %hasRowid = getelementptr inbounds %struct.BinfoCursor, ptr %17, i32 0, i32 3
  store i32 -1, ptr %hasRowid, align 4
  %18 = load ptr, ptr %pTab, align 8
  %db = getelementptr inbounds %struct.BinfoTable, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %zSql, align 8
  %21 = load ptr, ptr %pCsr, align 8
  %pStmt12 = getelementptr inbounds %struct.BinfoCursor, ptr %21, i32 0, i32 1
  %call13 = call i32 @sqlite3_prepare_v2(ptr noundef %19, ptr noundef %20, i32 noundef -1, ptr noundef %pStmt12, ptr noundef null)
  store i32 %call13, ptr %rc, align 4
  %22 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %22)
  %23 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %23, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  %24 = load ptr, ptr %pCursor.addr, align 8
  %call16 = call i32 @binfoNext(ptr noundef %24)
  store i32 %call16, ptr %rc, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end
  %25 = load i32, ptr %rc, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoNext(ptr noundef %pCursor) #0 {
entry:
  %pCursor.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  store ptr %pCursor, ptr %pCursor.addr, align 8
  %0 = load ptr, ptr %pCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load ptr, ptr %pCsr, align 8
  %pStmt = getelementptr inbounds %struct.BinfoCursor, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pStmt, align 8
  %call = call i32 @sqlite3_step(ptr noundef %2)
  %3 = load ptr, ptr %pCsr, align 8
  %rc = getelementptr inbounds %struct.BinfoCursor, ptr %3, i32 0, i32 2
  store i32 %call, ptr %rc, align 8
  %4 = load ptr, ptr %pCsr, align 8
  %hasRowid = getelementptr inbounds %struct.BinfoCursor, ptr %4, i32 0, i32 3
  store i32 -1, ptr %hasRowid, align 4
  %5 = load ptr, ptr %pCsr, align 8
  %rc1 = getelementptr inbounds %struct.BinfoCursor, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %rc1, align 8
  %cmp = icmp eq i32 %6, 1
  %7 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoEof(ptr noundef %pCursor) #0 {
entry:
  %pCursor.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  store ptr %pCursor, ptr %pCursor.addr, align 8
  %0 = load ptr, ptr %pCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load ptr, ptr %pCsr, align 8
  %rc = getelementptr inbounds %struct.BinfoCursor, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %rc, align 8
  %cmp = icmp ne i32 %2, 100
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoColumn(ptr noundef %pCursor, ptr noundef %ctx, i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %pCursor.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pCsr = alloca ptr, align 8
  %pgno = alloca i32, align 4
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCursor, ptr %pCursor.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %pCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %cmp = icmp sge i32 %1, 5
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %i.addr, align 4
  %cmp1 = icmp sle i32 %2, 9
  br i1 %cmp1, label %land.lhs.true2, label %if.end9

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %pCsr, align 8
  %hasRowid = getelementptr inbounds %struct.BinfoCursor, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %hasRowid, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end9

if.then:                                          ; preds = %land.lhs.true2
  %5 = load ptr, ptr %pCsr, align 8
  %pStmt = getelementptr inbounds %struct.BinfoCursor, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pStmt, align 8
  %call = call i32 @sqlite3_column_int(ptr noundef %6, i32 noundef 4)
  store i32 %call, ptr %pgno, align 4
  %7 = load ptr, ptr %ctx.addr, align 8
  %call4 = call ptr @sqlite3_context_db_handle(ptr noundef %7)
  store ptr %call4, ptr %db, align 8
  %8 = load ptr, ptr %db, align 8
  %9 = load i32, ptr %pgno, align 4
  %10 = load ptr, ptr %pCsr, align 8
  %call5 = call i32 @binfoCompute(ptr noundef %8, i32 noundef %9, ptr noundef %10)
  store i32 %call5, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %12 = load i32, ptr %rc, align 4
  %call7 = call ptr @sqlite3_errstr(i32 noundef %12)
  %call8 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.4, ptr noundef %call7)
  %13 = load ptr, ptr %pCursor.addr, align 8
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pVtab, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %14, i32 0, i32 2
  store ptr %call8, ptr %zErrMsg, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true2, %land.lhs.true, %entry
  %15 = load i32, ptr %i.addr, align 4
  switch i32 %15, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb12
    i32 6, label %sw.bb14
    i32 7, label %sw.bb15
    i32 8, label %sw.bb16
    i32 10, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %16 = load ptr, ptr %ctx.addr, align 8
  %17 = load ptr, ptr %pCsr, align 8
  %pStmt10 = getelementptr inbounds %struct.BinfoCursor, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %pStmt10, align 8
  %19 = load i32, ptr %i.addr, align 4
  %add = add nsw i32 %19, 1
  %call11 = call ptr @sqlite3_column_value(ptr noundef %18, i32 noundef %add)
  call void @sqlite3_result_value(ptr noundef %16, ptr noundef %call11)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  %20 = load ptr, ptr %ctx.addr, align 8
  %21 = load ptr, ptr %pCsr, align 8
  %hasRowid13 = getelementptr inbounds %struct.BinfoCursor, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %hasRowid13, align 4
  call void @sqlite3_result_int(ptr noundef %20, i32 noundef %22)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end9
  %23 = load ptr, ptr %ctx.addr, align 8
  %24 = load ptr, ptr %pCsr, align 8
  %nEntry = getelementptr inbounds %struct.BinfoCursor, ptr %24, i32 0, i32 4
  %25 = load i64, ptr %nEntry, align 8
  call void @sqlite3_result_int64(ptr noundef %23, i64 noundef %25)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end9
  %26 = load ptr, ptr %ctx.addr, align 8
  %27 = load ptr, ptr %pCsr, align 8
  %nPage = getelementptr inbounds %struct.BinfoCursor, ptr %27, i32 0, i32 5
  %28 = load i32, ptr %nPage, align 8
  call void @sqlite3_result_int(ptr noundef %26, i32 noundef %28)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end9
  %29 = load ptr, ptr %ctx.addr, align 8
  %30 = load ptr, ptr %pCsr, align 8
  %depth = getelementptr inbounds %struct.BinfoCursor, ptr %30, i32 0, i32 6
  %31 = load i32, ptr %depth, align 4
  call void @sqlite3_result_int(ptr noundef %29, i32 noundef %31)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end9
  %32 = load ptr, ptr %ctx.addr, align 8
  %33 = load ptr, ptr %pCsr, align 8
  %zSchema = getelementptr inbounds %struct.BinfoCursor, ptr %33, i32 0, i32 8
  %34 = load ptr, ptr %zSchema, align 8
  call void @sqlite3_result_text(ptr noundef %32, ptr noundef %34, i32 noundef -1, ptr noundef null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end9, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb12, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then6
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoRowid(ptr noundef %pCursor, ptr noundef %pRowid) #0 {
entry:
  %pCursor.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  store ptr %pCursor, ptr %pCursor.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %pCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load ptr, ptr %pCsr, align 8
  %pStmt = getelementptr inbounds %struct.BinfoCursor, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pStmt, align 8
  %call = call i64 @sqlite3_column_int64(ptr noundef %2, i32 noundef 0)
  %3 = load ptr, ptr %pRowid.addr, align 8
  store i64 %call, ptr %3, align 8
  ret i32 0
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_btreeinfo_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3BinfoRegister(ptr noundef %1)
  ret i32 %call
}

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @sqlite3_free(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare i32 @sqlite3_finalize(ptr noundef) #1

declare i32 @sqlite3_value_type(ptr noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare ptr @sqlite3_value_text(ptr noundef) #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) #1

declare ptr @sqlite3_context_db_handle(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @binfoCompute(ptr noundef %db, i32 noundef %pgno, ptr noundef %pCsr) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %pCsr.addr = alloca ptr, align 8
  %nEntry = alloca i64, align 8
  %nPage = alloca i32, align 4
  %aData = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pgsz = alloca i32, align 4
  %nCell = alloca i32, align 4
  %iCell = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %pCsr, ptr %pCsr.addr, align 8
  store i64 1, ptr %nEntry, align 8
  store i32 1, ptr %nPage, align 4
  store ptr null, ptr %pStmt, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %pgsz, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef @.str.7, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pCsr.addr, align 8
  %depth = getelementptr inbounds %struct.BinfoCursor, ptr %3, i32 0, i32 6
  store i32 1, ptr %depth, align 4
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end71
  %4 = load ptr, ptr %pStmt, align 8
  %5 = load i32, ptr %pgno.addr, align 4
  %call1 = call i32 @sqlite3_bind_int(ptr noundef %4, i32 noundef 1, i32 noundef %5)
  %6 = load ptr, ptr %pCsr.addr, align 8
  %depth2 = getelementptr inbounds %struct.BinfoCursor, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %depth2, align 4
  %cmp = icmp sgt i32 %7, 25
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %while.body
  %8 = load ptr, ptr %db.addr, align 8
  %call4 = call i32 @sqlite3_set_errmsg(ptr noundef %8, i32 noundef 11, ptr noundef @.str.8)
  store i32 1, ptr %rc, align 4
  br label %while.end

if.end5:                                          ; preds = %while.body
  %9 = load ptr, ptr %pStmt, align 8
  %call6 = call i32 @sqlite3_step(ptr noundef %9)
  store i32 %call6, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp7 = icmp ne i32 %10, 100
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 1, ptr %rc, align 4
  br label %while.end

if.end9:                                          ; preds = %if.end5
  %11 = load ptr, ptr %pStmt, align 8
  %call10 = call i32 @sqlite3_column_bytes(ptr noundef %11, i32 noundef 0)
  store i32 %call10, ptr %pgsz, align 4
  %12 = load ptr, ptr %pCsr.addr, align 8
  %szPage = getelementptr inbounds %struct.BinfoCursor, ptr %12, i32 0, i32 7
  store i32 %call10, ptr %szPage, align 8
  %13 = load ptr, ptr %pStmt, align 8
  %call11 = call ptr @sqlite3_column_blob(ptr noundef %13, i32 noundef 0)
  store ptr %call11, ptr %aData, align 8
  %14 = load ptr, ptr %aData, align 8
  %cmp12 = icmp eq ptr %14, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  store i32 7, ptr %rc, align 4
  br label %while.end

if.end14:                                         ; preds = %if.end9
  %15 = load i32, ptr %pgno.addr, align 4
  %cmp15 = icmp eq i32 %15, 1
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %16 = load ptr, ptr %aData, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 100
  store ptr %add.ptr, ptr %aData, align 8
  %17 = load i32, ptr %pgsz, align 4
  %sub = sub nsw i32 %17, 100
  store i32 %sub, ptr %pgsz, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %18 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %cmp18 = icmp ne i32 %conv, 2
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end17
  %20 = load ptr, ptr %aData, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %cmp22 = icmp ne i32 %conv21, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end17
  %22 = phi i1 [ false, %if.end17 ], [ %cmp22, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  %23 = load ptr, ptr %pCsr.addr, align 8
  %hasRowid = getelementptr inbounds %struct.BinfoCursor, ptr %23, i32 0, i32 3
  store i32 %land.ext, ptr %hasRowid, align 4
  %24 = load ptr, ptr %aData, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %24, i64 3
  %call25 = call i32 @get_uint16(ptr noundef %add.ptr24)
  store i32 %call25, ptr %nCell, align 4
  %25 = load i32, ptr %nCell, align 4
  %add = add nsw i32 %25, 1
  %conv26 = sext i32 %add to i64
  %26 = load i64, ptr %nEntry, align 8
  %mul = mul nsw i64 %26, %conv26
  store i64 %mul, ptr %nEntry, align 8
  %27 = load ptr, ptr %aData, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %28 to i32
  %cmp29 = icmp eq i32 %conv28, 10
  br i1 %cmp29, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %29 = load ptr, ptr %aData, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %30 to i32
  %cmp33 = icmp eq i32 %conv32, 13
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %lor.lhs.false, %land.end
  br label %while.end

if.end36:                                         ; preds = %lor.lhs.false
  %31 = load i32, ptr %nCell, align 4
  %add37 = add nsw i32 %31, 1
  %32 = load i32, ptr %nPage, align 4
  %mul38 = mul nsw i32 %32, %add37
  store i32 %mul38, ptr %nPage, align 4
  %33 = load i32, ptr %nCell, align 4
  %div = sdiv i32 %33, 2
  %mul39 = mul nsw i32 2, %div
  %add40 = add nsw i32 14, %mul39
  %34 = load i32, ptr %pgsz, align 4
  %cmp41 = icmp sge i32 %add40, %34
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end36
  store i32 11, ptr %rc, align 4
  br label %while.end

if.end44:                                         ; preds = %if.end36
  %35 = load i32, ptr %nCell, align 4
  %cmp45 = icmp sle i32 %35, 1
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end44
  %36 = load ptr, ptr %aData, align 8
  %add.ptr48 = getelementptr inbounds i8, ptr %36, i64 8
  %call49 = call i32 @get_uint32(ptr noundef %add.ptr48)
  store i32 %call49, ptr %pgno.addr, align 4
  br label %if.end71

if.else:                                          ; preds = %if.end44
  %37 = load ptr, ptr %aData, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %37, i64 12
  %38 = load i32, ptr %nCell, align 4
  %div51 = sdiv i32 %38, 2
  %mul52 = mul nsw i32 2, %div51
  %idx.ext = sext i32 %mul52 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idx.ext
  %call54 = call i32 @get_uint16(ptr noundef %add.ptr53)
  store i32 %call54, ptr %iCell, align 4
  %39 = load i32, ptr %pgno.addr, align 4
  %cmp55 = icmp eq i32 %39, 1
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.else
  %40 = load i32, ptr %iCell, align 4
  %sub58 = sub nsw i32 %40, 100
  store i32 %sub58, ptr %iCell, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.else
  %41 = load i32, ptr %iCell, align 4
  %cmp60 = icmp sle i32 %41, 12
  br i1 %cmp60, label %if.then66, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.end59
  %42 = load i32, ptr %iCell, align 4
  %43 = load i32, ptr %pgsz, align 4
  %sub63 = sub nsw i32 %43, 4
  %cmp64 = icmp sge i32 %42, %sub63
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %lor.lhs.false62, %if.end59
  store i32 11, ptr %rc, align 4
  br label %while.end

if.end67:                                         ; preds = %lor.lhs.false62
  %44 = load ptr, ptr %aData, align 8
  %45 = load i32, ptr %iCell, align 4
  %idx.ext68 = sext i32 %45 to i64
  %add.ptr69 = getelementptr inbounds i8, ptr %44, i64 %idx.ext68
  %call70 = call i32 @get_uint32(ptr noundef %add.ptr69)
  store i32 %call70, ptr %pgno.addr, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end67, %if.then47
  %46 = load ptr, ptr %pCsr.addr, align 8
  %depth72 = getelementptr inbounds %struct.BinfoCursor, ptr %46, i32 0, i32 6
  %47 = load i32, ptr %depth72, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %depth72, align 4
  %48 = load ptr, ptr %pStmt, align 8
  %call73 = call i32 @sqlite3_reset(ptr noundef %48)
  br label %while.body

while.end:                                        ; preds = %if.then66, %if.then43, %if.then35, %if.then13, %if.then8, %if.then3
  %49 = load ptr, ptr %pStmt, align 8
  %call74 = call i32 @sqlite3_finalize(ptr noundef %49)
  %50 = load i32, ptr %nPage, align 4
  %51 = load ptr, ptr %pCsr.addr, align 8
  %nPage75 = getelementptr inbounds %struct.BinfoCursor, ptr %51, i32 0, i32 5
  store i32 %50, ptr %nPage75, align 8
  %52 = load i64, ptr %nEntry, align 8
  %53 = load ptr, ptr %pCsr.addr, align 8
  %nEntry76 = getelementptr inbounds %struct.BinfoCursor, ptr %53, i32 0, i32 4
  store i64 %52, ptr %nEntry76, align 8
  %54 = load i32, ptr %rc, align 4
  %cmp77 = icmp eq i32 %54, 100
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %while.end
  store i32 0, ptr %rc, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %while.end
  %55 = load i32, ptr %rc, align 4
  store i32 %55, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end80, %if.then
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

declare ptr @sqlite3_errstr(i32 noundef) #1

declare void @sqlite3_result_value(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_column_value(ptr noundef, i32 noundef) #1

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

declare void @sqlite3_result_int64(ptr noundef, i64 noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @sqlite3_bind_int(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @sqlite3_set_errmsg(...) #1

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) #1

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @get_uint16(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %2 = load ptr, ptr %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  ret i32 %or
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @get_uint32(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load ptr, ptr %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %4 = load ptr, ptr %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %6 = load ptr, ptr %a.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  ret i32 %or10
}

declare i32 @sqlite3_reset(ptr noundef) #1

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold noreturn }
attributes #6 = { nounwind }

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
