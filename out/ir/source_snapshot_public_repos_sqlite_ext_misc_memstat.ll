; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/memstat.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/memstat.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MemstatColumns = type { ptr, i8, i8, i32 }
%struct.memstat_vtab = type { %struct.sqlite3_vtab, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.memstat_cursor = type { %struct.sqlite3_vtab_cursor, ptr, i32, i32, i32, ptr, [2 x i64] }
%struct.sqlite3_vtab_cursor = type { ptr }

@.str = private unnamed_addr constant [15 x i8] c"sqlite_memstat\00", align 1
@memstatModule = internal global %struct.sqlite3_module { i32 0, ptr null, ptr @memstatConnect, ptr @memstatBestIndex, ptr @memstatDisconnect, ptr null, ptr @memstatOpen, ptr @memstatClose, ptr @memstatFilter, ptr @memstatNext, ptr @memstatEof, ptr @memstatColumn, ptr @memstatRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"CREATE TABLE x(name,schema,value,hiwtr)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PRAGMA database_list\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.memstatNext = private unnamed_addr constant [12 x i8] c"memstatNext\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"memstat.c\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"pCur->iRowid<=MSV_NROW\00", align 1
@aMemstatColumn = internal constant [18 x %struct.MemstatColumns] [%struct.MemstatColumns { ptr @.str.6, i8 0, i8 2, i32 0 }, %struct.MemstatColumns { ptr @.str.7, i8 0, i8 6, i32 5 }, %struct.MemstatColumns { ptr @.str.8, i8 0, i8 2, i32 9 }, %struct.MemstatColumns { ptr @.str.9, i8 0, i8 2, i32 1 }, %struct.MemstatColumns { ptr @.str.10, i8 0, i8 2, i32 2 }, %struct.MemstatColumns { ptr @.str.11, i8 0, i8 6, i32 7 }, %struct.MemstatColumns { ptr @.str.12, i8 0, i8 6, i32 6 }, %struct.MemstatColumns { ptr @.str.13, i8 1, i8 2, i32 0 }, %struct.MemstatColumns { ptr @.str.14, i8 1, i8 6, i32 4 }, %struct.MemstatColumns { ptr @.str.15, i8 1, i8 6, i32 5 }, %struct.MemstatColumns { ptr @.str.16, i8 1, i8 6, i32 6 }, %struct.MemstatColumns { ptr @.str.17, i8 1, i8 10, i32 1 }, %struct.MemstatColumns { ptr @.str.18, i8 1, i8 10, i32 2 }, %struct.MemstatColumns { ptr @.str.19, i8 1, i8 10, i32 3 }, %struct.MemstatColumns { ptr @.str.20, i8 1, i8 10, i32 7 }, %struct.MemstatColumns { ptr @.str.21, i8 1, i8 10, i32 8 }, %struct.MemstatColumns { ptr @.str.22, i8 1, i8 10, i32 9 }, %struct.MemstatColumns { ptr @.str.23, i8 1, i8 10, i32 10 }], align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"MEMORY_USED\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"MALLOC_SIZE\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MALLOC_COUNT\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"PAGECACHE_USED\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"PAGECACHE_OVERFLOW\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"PAGECACHE_SIZE\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"PARSER_STACK\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"DB_LOOKASIDE_USED\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"DB_LOOKASIDE_HIT\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"DB_LOOKASIDE_MISS_SIZE\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"DB_LOOKASIDE_MISS_FULL\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"DB_CACHE_USED\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"DB_SCHEMA_USED\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"DB_STMT_USED\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"DB_CACHE_HIT\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"DB_CACHE_MISS\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"DB_CACHE_WRITE\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"DB_DEFERRED_FKS\00", align 1
@__func__.memstatColumn = private unnamed_addr constant [14 x i8] c"memstatColumn\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"pCur->iRowid>0 && pCur->iRowid<=MSV_NROW\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3MemstatVtabInit(ptr noundef %db, ptr noundef %NotUsed1, ptr noundef %NotUsed2) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %NotUsed1.addr = alloca ptr, align 8
  %NotUsed2.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %NotUsed1, ptr %NotUsed1.addr, align 8
  store ptr %NotUsed2, ptr %NotUsed2.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %NotUsed1.addr, align 8
  %1 = load ptr, ptr %NotUsed2.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_module(ptr noundef %2, ptr noundef @.str, ptr noundef @memstatModule, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  ret i32 %3
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_memstat_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3MemstatVtabInit(ptr noundef %1, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
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
  %call4 = call ptr @__memset_chk(ptr noundef %5, i32 noundef 0, i64 noundef 32, i64 noundef %7) #5
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %pNew, align 8
  %db5 = getelementptr inbounds %struct.memstat_vtab, ptr %9, i32 0, i32 1
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
define internal i32 @memstatBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  %0 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %0, i32 0, i32 9
  store double 5.000000e+02, ptr %estimatedCost, align 8
  %1 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows = getelementptr inbounds %struct.sqlite3_index_info, ptr %1, i32 0, i32 10
  store i64 500, ptr %estimatedRows, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  call void @sqlite3_free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatOpen(ptr noundef %p, ptr noundef %ppCursor) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %ppCursor.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 56)
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
  %call1 = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 56, i64 noundef %3) #5
  %4 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.memstat_vtab, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pCur, align 8
  %db2 = getelementptr inbounds %struct.memstat_cursor, ptr %6, i32 0, i32 1
  store ptr %5, ptr %db2, align 8
  %7 = load ptr, ptr %pCur, align 8
  %base = getelementptr inbounds %struct.memstat_cursor, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base, ptr %8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  call void @memstatClearSchema(ptr noundef %1)
  %2 = load ptr, ptr %cur.addr, align 8
  call void @sqlite3_free(ptr noundef %2)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %call = call i32 @memstatFindSchemas(ptr noundef %1)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rc, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.memstat_cursor, ptr %4, i32 0, i32 2
  store i32 0, ptr %iRowid, align 8
  %5 = load ptr, ptr %pCur, align 8
  %iDb = getelementptr inbounds %struct.memstat_cursor, ptr %5, i32 0, i32 3
  store i32 0, ptr %iDb, align 4
  %6 = load ptr, ptr %pVtabCursor.addr, align 8
  %call1 = call i32 @memstatNext(ptr noundef %6)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatNext(ptr noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %i = alloca i32, align 4
  %xCur = alloca i32, align 4
  %xHiwtr = alloca i32, align 4
  %xCur50 = alloca i32, align 4
  %xHiwtr51 = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.memstat_cursor, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %iRowid, align 8
  %conv = sext i32 %2 to i64
  %cmp = icmp ule i64 %conv, 18
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv2 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.memstatNext, ptr noundef @.str.4, i32 noundef 235, ptr noundef @.str.5) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  br label %while.body

while.body:                                       ; preds = %cond.end, %if.then75
  %4 = load ptr, ptr %pCur, align 8
  %iRowid3 = getelementptr inbounds %struct.memstat_cursor, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iRowid3, align 8
  %sub = sub nsw i32 %5, 1
  store i32 %sub, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [18 x %struct.MemstatColumns], ptr @aMemstatColumn, i64 0, i64 %idxprom
  %mNull = getelementptr inbounds %struct.MemstatColumns, ptr %arrayidx, i32 0, i32 2
  %8 = load i8, ptr %mNull, align 1
  %conv6 = zext i8 %8 to i32
  %and = and i32 %conv6, 2
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %9 = load ptr, ptr %pCur, align 8
  %iDb = getelementptr inbounds %struct.memstat_cursor, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %iDb, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %iDb, align 4
  %11 = load ptr, ptr %pCur, align 8
  %nDb = getelementptr inbounds %struct.memstat_cursor, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %nDb, align 8
  %cmp10 = icmp sge i32 %inc, %12
  br i1 %cmp10, label %if.then, label %if.end21

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false, %while.body
  %13 = load ptr, ptr %pCur, align 8
  %iRowid12 = getelementptr inbounds %struct.memstat_cursor, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %iRowid12, align 8
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, ptr %iRowid12, align 8
  %15 = load ptr, ptr %pCur, align 8
  %iRowid14 = getelementptr inbounds %struct.memstat_cursor, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %iRowid14, align 8
  %conv15 = sext i32 %16 to i64
  %cmp16 = icmp ugt i64 %conv15, 18
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %17 = load ptr, ptr %pCur, align 8
  %iDb19 = getelementptr inbounds %struct.memstat_cursor, ptr %17, i32 0, i32 3
  store i32 0, ptr %iDb19, align 4
  %18 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, ptr %i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end, %lor.lhs.false9
  %19 = load ptr, ptr %pCur, align 8
  %aVal = getelementptr inbounds %struct.memstat_cursor, ptr %19, i32 0, i32 6
  %arrayidx22 = getelementptr inbounds [2 x i64], ptr %aVal, i64 0, i64 0
  store i64 0, ptr %arrayidx22, align 8
  %20 = load ptr, ptr %pCur, align 8
  %aVal23 = getelementptr inbounds %struct.memstat_cursor, ptr %20, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [2 x i64], ptr %aVal23, i64 0, i64 1
  store i64 0, ptr %arrayidx24, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [18 x %struct.MemstatColumns], ptr @aMemstatColumn, i64 0, i64 %idxprom25
  %eType = getelementptr inbounds %struct.MemstatColumns, ptr %arrayidx26, i32 0, i32 1
  %22 = load i8, ptr %eType, align 8
  %conv27 = zext i8 %22 to i32
  switch i32 %conv27, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb49
    i32 2, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.end21
  %call = call i32 @sqlite3_libversion_number()
  %cmp28 = icmp sge i32 %call, 3010000
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.bb
  %23 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [18 x %struct.MemstatColumns], ptr @aMemstatColumn, i64 0, i64 %idxprom31
  %eOp = getelementptr inbounds %struct.MemstatColumns, ptr %arrayidx32, i32 0, i32 3
  %24 = load i32, ptr %eOp, align 4
  %25 = load ptr, ptr %pCur, align 8
  %aVal33 = getelementptr inbounds %struct.memstat_cursor, ptr %25, i32 0, i32 6
  %arrayidx34 = getelementptr inbounds [2 x i64], ptr %aVal33, i64 0, i64 0
  %26 = load ptr, ptr %pCur, align 8
  %aVal35 = getelementptr inbounds %struct.memstat_cursor, ptr %26, i32 0, i32 6
  %arrayidx36 = getelementptr inbounds [2 x i64], ptr %aVal35, i64 0, i64 1
  %call37 = call i32 @sqlite3_status64(i32 noundef %24, ptr noundef %arrayidx34, ptr noundef %arrayidx36, i32 noundef 0)
  br label %if.end48

if.else:                                          ; preds = %sw.bb
  %27 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [18 x %struct.MemstatColumns], ptr @aMemstatColumn, i64 0, i64 %idxprom38
  %eOp40 = getelementptr inbounds %struct.MemstatColumns, ptr %arrayidx39, i32 0, i32 3
  %28 = load i32, ptr %eOp40, align 4
  %call41 = call i32 @sqlite3_status(i32 noundef %28, ptr noundef %xCur, ptr noundef %xHiwtr, i32 noundef 0)
  %29 = load i32, ptr %xCur, align 4
  %conv42 = sext i32 %29 to i64
  %30 = load ptr, ptr %pCur, align 8
  %aVal43 = getelementptr inbounds %struct.memstat_cursor, ptr %30, i32 0, i32 6
  %arrayidx44 = getelementptr inbounds [2 x i64], ptr %aVal43, i64 0, i64 0
  store i64 %conv42, ptr %arrayidx44, align 8
  %31 = load i32, ptr %xHiwtr, align 4
  %conv45 = sext i32 %31 to i64
  %32 = load ptr, ptr %pCur, align 8
  %aVal46 = getelementptr inbounds %struct.memstat_cursor, ptr %32, i32 0, i32 6
  %arrayidx47 = getelementptr inbounds [2 x i64], ptr %aVal46, i64 0, i64 1
  store i64 %conv45, ptr %arrayidx47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then30
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end21
  %33 = load ptr, ptr %pCur, align 8
  %db = getelementptr inbounds %struct.memstat_cursor, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %db, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %35 to i64
  %arrayidx53 = getelementptr inbounds [18 x %struct.MemstatColumns], ptr @aMemstatColumn, i64 0, i64 %idxprom52
  %eOp54 = getelementptr inbounds %struct.MemstatColumns, ptr %arrayidx53, i32 0, i32 3
  %36 = load i32, ptr %eOp54, align 4
  %call55 = call i32 @sqlite3_db_status(ptr noundef %34, i32 noundef %36, ptr noundef %xCur50, ptr noundef %xHiwtr51, i32 noundef 0)
  %37 = load i32, ptr %xCur50, align 4
  %conv56 = sext i32 %37 to i64
  %38 = load ptr, ptr %pCur, align 8
  %aVal57 = getelementptr inbounds %struct.memstat_cursor, ptr %38, i32 0, i32 6
  %arrayidx58 = getelementptr inbounds [2 x i64], ptr %aVal57, i64 0, i64 0
  store i64 %conv56, ptr %arrayidx58, align 8
  %39 = load i32, ptr %xHiwtr51, align 4
  %conv59 = sext i32 %39 to i64
  %40 = load ptr, ptr %pCur, align 8
  %aVal60 = getelementptr inbounds %struct.memstat_cursor, ptr %40, i32 0, i32 6
  %arrayidx61 = getelementptr inbounds [2 x i64], ptr %aVal60, i64 0, i64 1
  store i64 %conv59, ptr %arrayidx61, align 8
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end21
  %41 = load ptr, ptr %pCur, align 8
  %db63 = getelementptr inbounds %struct.memstat_cursor, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %db63, align 8
  %43 = load ptr, ptr %pCur, align 8
  %azDb = getelementptr inbounds %struct.memstat_cursor, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %azDb, align 8
  %45 = load ptr, ptr %pCur, align 8
  %iDb64 = getelementptr inbounds %struct.memstat_cursor, ptr %45, i32 0, i32 3
  %46 = load i32, ptr %iDb64, align 4
  %idxprom65 = sext i32 %46 to i64
  %arrayidx66 = getelementptr inbounds ptr, ptr %44, i64 %idxprom65
  %47 = load ptr, ptr %arrayidx66, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %48 to i64
  %arrayidx68 = getelementptr inbounds [18 x %struct.MemstatColumns], ptr @aMemstatColumn, i64 0, i64 %idxprom67
  %eOp69 = getelementptr inbounds %struct.MemstatColumns, ptr %arrayidx68, i32 0, i32 3
  %49 = load i32, ptr %eOp69, align 4
  %50 = load ptr, ptr %pCur, align 8
  %aVal70 = getelementptr inbounds %struct.memstat_cursor, ptr %50, i32 0, i32 6
  %arrayidx71 = getelementptr inbounds [2 x i64], ptr %aVal70, i64 0, i64 0
  %call72 = call i32 @sqlite3_file_control(ptr noundef %42, ptr noundef %47, i32 noundef %49, ptr noundef %arrayidx71)
  store i32 %call72, ptr %rc, align 4
  %51 = load i32, ptr %rc, align 4
  %cmp73 = icmp ne i32 %51, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %sw.bb62
  br label %while.body

if.end76:                                         ; preds = %sw.bb62
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end21, %if.end76, %sw.bb49, %if.end48
  br label %while.end

while.end:                                        ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then18
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.memstat_cursor, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %iRowid, align 8
  %conv = sext i32 %2 to i64
  %cmp = icmp ugt i64 %conv, 18
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %iCol) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %iCol.addr = alloca i32, align 4
  %pCur = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %iCol, ptr %iCol.addr, align 4
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.memstat_cursor, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %iRowid, align 8
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %pCur, align 8
  %iRowid1 = getelementptr inbounds %struct.memstat_cursor, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %iRowid1, align 8
  %conv = sext i32 %4 to i64
  %cmp2 = icmp ule i64 %conv, 18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %lnot = xor i1 %5, true
  %lnot.ext = zext i1 %lnot to i32
  %conv4 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.memstatColumn, ptr noundef @.str.4, i32 noundef 291, ptr noundef @.str.24) #6
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %6
  %7 = load ptr, ptr %pCur, align 8
  %iRowid5 = getelementptr inbounds %struct.memstat_cursor, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iRowid5, align 8
  %sub = sub nsw i32 %8, 1
  store i32 %sub, ptr %i, align 4
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [18 x %struct.MemstatColumns], ptr @aMemstatColumn, i64 0, i64 %idxprom
  %mNull = getelementptr inbounds %struct.MemstatColumns, ptr %arrayidx, i32 0, i32 2
  %10 = load i8, ptr %mNull, align 1
  %conv6 = zext i8 %10 to i32
  %11 = load i32, ptr %iCol.addr, align 4
  %shl = shl i32 1, %11
  %and = and i32 %conv6, %shl
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %12 = load i32, ptr %iCol.addr, align 4
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
    i32 3, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load ptr, ptr %ctx.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [18 x %struct.MemstatColumns], ptr @aMemstatColumn, i64 0, i64 %idxprom9
  %zName = getelementptr inbounds %struct.MemstatColumns, ptr %arrayidx10, i32 0, i32 0
  %15 = load ptr, ptr %zName, align 8
  call void @sqlite3_result_text(ptr noundef %13, ptr noundef %15, i32 noundef -1, ptr noundef null)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %16 = load ptr, ptr %ctx.addr, align 8
  %17 = load ptr, ptr %pCur, align 8
  %azDb = getelementptr inbounds %struct.memstat_cursor, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %azDb, align 8
  %19 = load ptr, ptr %pCur, align 8
  %iDb = getelementptr inbounds %struct.memstat_cursor, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %iDb, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %18, i64 %idxprom12
  %21 = load ptr, ptr %arrayidx13, align 8
  call void @sqlite3_result_text(ptr noundef %16, ptr noundef %21, i32 noundef -1, ptr noundef null)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %22 = load ptr, ptr %ctx.addr, align 8
  %23 = load ptr, ptr %pCur, align 8
  %aVal = getelementptr inbounds %struct.memstat_cursor, ptr %23, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [2 x i64], ptr %aVal, i64 0, i64 0
  %24 = load i64, ptr %arrayidx15, align 8
  call void @sqlite3_result_int64(ptr noundef %22, i64 noundef %24)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %25 = load ptr, ptr %ctx.addr, align 8
  %26 = load ptr, ptr %pCur, align 8
  %aVal17 = getelementptr inbounds %struct.memstat_cursor, ptr %26, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [2 x i64], ptr %aVal17, i64 0, i64 1
  %27 = load i64, ptr %arrayidx18, align 8
  call void @sqlite3_result_int64(ptr noundef %25, i64 noundef %27)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb16, %sw.bb14, %sw.bb11, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.memstat_cursor, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %iRowid, align 8
  %mul = mul nsw i32 %2, 1000
  %3 = load ptr, ptr %pCur, align 8
  %iDb = getelementptr inbounds %struct.memstat_cursor, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %iDb, align 4
  %add = add nsw i32 %mul, %4
  %conv = sext i32 %add to i64
  %5 = load ptr, ptr %pRowid.addr, align 8
  store i64 %conv, ptr %5, align 8
  ret i32 0
}

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare void @sqlite3_free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @memstatClearSchema(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %azDb = getelementptr inbounds %struct.memstat_cursor, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %azDb, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pCur.addr, align 8
  %nDb = getelementptr inbounds %struct.memstat_cursor, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %nDb, align 8
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pCur.addr, align 8
  %azDb2 = getelementptr inbounds %struct.memstat_cursor, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %azDb2, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  call void @sqlite3_free(ptr noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %pCur.addr, align 8
  %azDb3 = getelementptr inbounds %struct.memstat_cursor, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %azDb3, align 8
  call void @sqlite3_free(ptr noundef %11)
  %12 = load ptr, ptr %pCur.addr, align 8
  %azDb4 = getelementptr inbounds %struct.memstat_cursor, ptr %12, i32 0, i32 5
  store ptr null, ptr %azDb4, align 8
  %13 = load ptr, ptr %pCur.addr, align 8
  %nDb5 = getelementptr inbounds %struct.memstat_cursor, ptr %13, i32 0, i32 4
  store i32 0, ptr %nDb5, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @memstatFindSchemas(ptr noundef %pCur) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  %rc = alloca i32, align 4
  %az = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr null, ptr %pStmt, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %nDb = getelementptr inbounds %struct.memstat_cursor, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %nDb, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %db = getelementptr inbounds %struct.memstat_cursor, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %db, align 8
  %call = call i32 @sqlite3_prepare_v2(ptr noundef %3, ptr noundef @.str.2, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %pStmt, align 8
  %call3 = call i32 @sqlite3_finalize(ptr noundef %5)
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end4
  %7 = load ptr, ptr %pStmt, align 8
  %call5 = call i32 @sqlite3_step(ptr noundef %7)
  %cmp = icmp eq i32 %call5, 100
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %pCur.addr, align 8
  %azDb = getelementptr inbounds %struct.memstat_cursor, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %azDb, align 8
  %10 = load ptr, ptr %pCur.addr, align 8
  %nDb6 = getelementptr inbounds %struct.memstat_cursor, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %nDb6, align 8
  %add = add nsw i32 %11, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call7 = call ptr @sqlite3_realloc64(ptr noundef %9, i64 noundef %mul)
  store ptr %call7, ptr %az, align 8
  %12 = load ptr, ptr %az, align 8
  %cmp8 = icmp eq ptr %12, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  %13 = load ptr, ptr %pCur.addr, align 8
  call void @memstatClearSchema(ptr noundef %13)
  store i32 7, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %14 = load ptr, ptr %az, align 8
  %15 = load ptr, ptr %pCur.addr, align 8
  %azDb12 = getelementptr inbounds %struct.memstat_cursor, ptr %15, i32 0, i32 5
  store ptr %14, ptr %azDb12, align 8
  %16 = load ptr, ptr %pStmt, align 8
  %call13 = call ptr @sqlite3_column_text(ptr noundef %16, i32 noundef 1)
  %call14 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.3, ptr noundef %call13)
  store ptr %call14, ptr %z, align 8
  %17 = load ptr, ptr %z, align 8
  %cmp15 = icmp eq ptr %17, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  %18 = load ptr, ptr %pCur.addr, align 8
  call void @memstatClearSchema(ptr noundef %18)
  store i32 7, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end11
  %19 = load ptr, ptr %z, align 8
  %20 = load ptr, ptr %pCur.addr, align 8
  %azDb19 = getelementptr inbounds %struct.memstat_cursor, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %azDb19, align 8
  %22 = load ptr, ptr %pCur.addr, align 8
  %nDb20 = getelementptr inbounds %struct.memstat_cursor, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %nDb20, align 8
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %21, i64 %idxprom
  store ptr %19, ptr %arrayidx, align 8
  %24 = load ptr, ptr %pCur.addr, align 8
  %nDb21 = getelementptr inbounds %struct.memstat_cursor, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %nDb21, align 8
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %nDb21, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %pStmt, align 8
  %call22 = call i32 @sqlite3_finalize(ptr noundef %26)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then17, %if.then10, %if.then2, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_finalize(ptr noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

declare i32 @sqlite3_libversion_number() #1

declare i32 @sqlite3_status64(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sqlite3_status(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sqlite3_db_status(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sqlite3_file_control(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_result_int64(ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { cold noreturn }

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
