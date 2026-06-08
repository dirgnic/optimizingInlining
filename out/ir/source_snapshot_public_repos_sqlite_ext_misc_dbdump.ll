; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/dbdump.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/dbdump.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.DState = type { ptr, i32, i32, i32, ptr, ptr }
%struct.DText = type { ptr, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"PRAGMA foreign_keys=OFF;\0ABEGIN TRANSACTION;\0A\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"SELECT name, type, sql FROM \22%w\22.sqlite_schema WHERE sql NOT NULL AND type=='table' AND name!='sqlite_sequence'\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"SELECT name, type, sql FROM \22%w\22.sqlite_schema WHERE name=='sqlite_sequence'\00", align 1
@.str.4 = private unnamed_addr constant [88 x i8] c"SELECT sql FROM sqlite_schema WHERE sql NOT NULL AND type IN ('index','trigger','view')\00", align 1
@.str.5 = private unnamed_addr constant [116 x i8] c"SELECT name, type, sql FROM \22%w\22.sqlite_schema WHERE tbl_name=%Q COLLATE nocase AND type=='table'  AND sql NOT NULL\00", align 1
@.str.6 = private unnamed_addr constant [126 x i8] c"SELECT sql FROM \22%w\22.sqlite_schema WHERE sql NOT NULL  AND type IN ('index','trigger','view')  AND tbl_name=%Q COLLATE nocase\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"PRAGMA writable_schema=OFF;\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ROLLBACK; -- due to errors\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"COMMIT;\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"/****** %s ******/\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"sqlite_sequence\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"DELETE FROM sqlite_sequence;\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"sqlite_stat?\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"ANALYZE sqlite_schema;\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"sqlite_\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"CREATE VIRTUAL TABLE\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"PRAGMA writable_schema=ON;\0A\00", align 1
@.str.19 = private unnamed_addr constant [92 x i8] c"INSERT INTO sqlite_schema(type,name,tbl_name,rootpage,sql)VALUES('table','%q','%q',0,'%q');\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"CREATE TABLE ['\22]*\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"CREATE TABLE IF NOT EXISTS \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"INSERT INTO \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c" VALUES(\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c" FROM \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"1e999\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"-1e999\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%!.20g\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"x'\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"PRAGMA table_info=%Q\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.43 = private unnamed_addr constant [54 x i8] c"SELECT 1 FROM pragma_index_list(%Q) WHERE origin='pk'\00", align 1
@tableColumnList.azRowid = internal global [3 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46], align 8
@.str.44 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"_rowid_\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"replace(\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"\\012\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\\015\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c",'%s',char(13))\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c",'%s',char(10))\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"(%s%u)\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"/**** ERROR: (%d) %s *****/\0A\00", align 1
@.str.58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"\0A;\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_db_dump(ptr noundef %db, ptr noundef %zSchema, ptr noundef %zTable, ptr noundef %xCallback, ptr noundef %pArg) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zSchema.addr = alloca ptr, align 8
  %zTable.addr = alloca ptr, align 8
  %xCallback.addr = alloca ptr, align 8
  %pArg.addr = alloca ptr, align 8
  %x = alloca %struct.DState, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zSchema, ptr %zSchema.addr, align 8
  store ptr %zTable, ptr %zTable.addr, align 8
  store ptr %xCallback, ptr %xCallback.addr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %x, i8 0, i64 40, i1 false)
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_exec(ptr noundef %0, ptr noundef @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  %rc = getelementptr inbounds %struct.DState, ptr %x, i32 0, i32 2
  store i32 %call, ptr %rc, align 4
  %rc1 = getelementptr inbounds %struct.DState, ptr %x, i32 0, i32 2
  %1 = load i32, ptr %rc1, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rc2 = getelementptr inbounds %struct.DState, ptr %x, i32 0, i32 2
  %2 = load i32, ptr %rc2, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %db.addr, align 8
  %db3 = getelementptr inbounds %struct.DState, ptr %x, i32 0, i32 0
  store ptr %3, ptr %db3, align 8
  %4 = load ptr, ptr %xCallback.addr, align 8
  %xCallback4 = getelementptr inbounds %struct.DState, ptr %x, i32 0, i32 4
  store ptr %4, ptr %xCallback4, align 8
  %5 = load ptr, ptr %pArg.addr, align 8
  %pArg5 = getelementptr inbounds %struct.DState, ptr %x, i32 0, i32 5
  store ptr %5, ptr %pArg5, align 8
  %6 = load ptr, ptr %xCallback.addr, align 8
  %7 = load ptr, ptr %pArg.addr, align 8
  %call6 = call i32 %6(ptr noundef @.str.1, ptr noundef %7)
  %8 = load ptr, ptr %zTable.addr, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %zSchema.addr, align 8
  call void (ptr, ptr, ...) @run_schema_dump_query(ptr noundef %x, ptr noundef @.str.2, ptr noundef %9)
  %10 = load ptr, ptr %zSchema.addr, align 8
  call void (ptr, ptr, ...) @run_schema_dump_query(ptr noundef %x, ptr noundef @.str.3, ptr noundef %10)
  call void (ptr, ptr, ...) @output_sql_from_query(ptr noundef %x, ptr noundef @.str.4, i32 noundef 0)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %zSchema.addr, align 8
  %12 = load ptr, ptr %zTable.addr, align 8
  call void (ptr, ptr, ...) @run_schema_dump_query(ptr noundef %x, ptr noundef @.str.5, ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %zSchema.addr, align 8
  %14 = load ptr, ptr %zTable.addr, align 8
  call void (ptr, ptr, ...) @output_sql_from_query(ptr noundef %x, ptr noundef @.str.6, ptr noundef %13, ptr noundef %14)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %writableSchema = getelementptr inbounds %struct.DState, ptr %x, i32 0, i32 3
  %15 = load i32, ptr %writableSchema, align 8
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %16 = load ptr, ptr %xCallback.addr, align 8
  %17 = load ptr, ptr %pArg.addr, align 8
  %call11 = call i32 %16(ptr noundef @.str.7, ptr noundef %17)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %18 = load ptr, ptr %xCallback.addr, align 8
  %nErr = getelementptr inbounds %struct.DState, ptr %x, i32 0, i32 1
  %19 = load i32, ptr %nErr, align 8
  %tobool13 = icmp ne i32 %19, 0
  %20 = zext i1 %tobool13 to i64
  %cond = select i1 %tobool13, ptr @.str.8, ptr @.str.9
  %21 = load ptr, ptr %pArg.addr, align 8
  %call14 = call i32 %18(ptr noundef %cond, ptr noundef %21)
  %22 = load ptr, ptr %db.addr, align 8
  %call15 = call i32 @sqlite3_exec(ptr noundef %22, ptr noundef @.str.10, ptr noundef null, ptr noundef null, ptr noundef null)
  %rc16 = getelementptr inbounds %struct.DState, ptr %x, i32 0, i32 2
  %23 = load i32, ptr %rc16, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @run_schema_dump_query(ptr noundef %p, ptr noundef %zQuery, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zQuery.addr = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zQuery, ptr %zQuery.addr, align 8
  store ptr null, ptr %zErr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zQuery.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %z, align 8
  call void @llvm.va_end(ptr %ap)
  %2 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.DState, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %z, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %call1 = call i32 @sqlite3_exec(ptr noundef %3, ptr noundef %4, ptr noundef @dump_callback, ptr noundef %5, ptr noundef %zErr)
  %6 = load ptr, ptr %z, align 8
  call void @sqlite3_free(ptr noundef %6)
  %7 = load ptr, ptr %zErr, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load ptr, ptr %zErr, align 8
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %8, ptr noundef @.str.11, ptr noundef %9)
  %10 = load ptr, ptr %zErr, align 8
  call void @sqlite3_free(ptr noundef %10)
  %11 = load ptr, ptr %p.addr, align 8
  %nErr = getelementptr inbounds %struct.DState, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %nErr, align 8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %nErr, align 8
  store ptr null, ptr %zErr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @output_sql_from_query(ptr noundef %p, ptr noundef %zSelect, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zSelect.addr = alloca ptr, align 8
  %pSelect = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nResult = alloca i32, align 4
  %i = alloca i32, align 4
  %z = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zSelect, ptr %zSelect.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zSelect.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zSql, align 8
  call void @llvm.va_end(ptr %ap)
  %2 = load ptr, ptr %zSql, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %rc1 = getelementptr inbounds %struct.DState, ptr %3, i32 0, i32 2
  store i32 7, ptr %rc1, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %nErr = getelementptr inbounds %struct.DState, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nErr, align 8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %nErr, align 8
  br label %if.end62

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.DState, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db, align 8
  %8 = load ptr, ptr %zSql, align 8
  %call2 = call i32 @sqlite3_prepare_v2(ptr noundef %7, ptr noundef %8, i32 noundef -1, ptr noundef %pSelect, ptr noundef null)
  store i32 %call2, ptr %rc, align 4
  %9 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %9)
  %10 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %10, 0
  br i1 %cmp3, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load ptr, ptr %pSelect, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.end9, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %12 = load ptr, ptr %p.addr, align 8
  %13 = load i32, ptr %rc, align 4
  %14 = load ptr, ptr %p.addr, align 8
  %db5 = getelementptr inbounds %struct.DState, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %db5, align 8
  %call6 = call ptr @sqlite3_errmsg(ptr noundef %15)
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %12, ptr noundef @.str.57, i32 noundef %13, ptr noundef %call6)
  %16 = load ptr, ptr %p.addr, align 8
  %nErr7 = getelementptr inbounds %struct.DState, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %nErr7, align 8
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, ptr %nErr7, align 8
  br label %if.end62

if.end9:                                          ; preds = %lor.lhs.false
  %18 = load ptr, ptr %pSelect, align 8
  %call10 = call i32 @sqlite3_step(ptr noundef %18)
  store i32 %call10, ptr %rc, align 4
  %19 = load ptr, ptr %pSelect, align 8
  %call11 = call i32 @sqlite3_column_count(ptr noundef %19)
  store i32 %call11, ptr %nResult, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end47, %if.end9
  %20 = load i32, ptr %rc, align 4
  %cmp12 = icmp eq i32 %20, 100
  br i1 %cmp12, label %while.body, label %while.end49

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %pSelect, align 8
  %call13 = call ptr @sqlite3_column_text(ptr noundef %21, i32 noundef 0)
  store ptr %call13, ptr %z, align 8
  %22 = load ptr, ptr %p.addr, align 8
  %xCallback = getelementptr inbounds %struct.DState, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %xCallback, align 8
  %24 = load ptr, ptr %z, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %pArg = getelementptr inbounds %struct.DState, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %pArg, align 8
  %call14 = call i32 %23(ptr noundef %24, ptr noundef %26)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %27 = load i32, ptr %i, align 4
  %28 = load i32, ptr %nResult, align 4
  %cmp15 = icmp slt i32 %27, %28
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %p.addr, align 8
  %xCallback16 = getelementptr inbounds %struct.DState, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %xCallback16, align 8
  %31 = load ptr, ptr %p.addr, align 8
  %pArg17 = getelementptr inbounds %struct.DState, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %pArg17, align 8
  %call18 = call i32 %30(ptr noundef @.str.26, ptr noundef %32)
  %33 = load ptr, ptr %p.addr, align 8
  %xCallback19 = getelementptr inbounds %struct.DState, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %xCallback19, align 8
  %35 = load ptr, ptr %pSelect, align 8
  %36 = load i32, ptr %i, align 4
  %call20 = call ptr @sqlite3_column_text(ptr noundef %35, i32 noundef %36)
  %37 = load ptr, ptr %p.addr, align 8
  %pArg21 = getelementptr inbounds %struct.DState, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %pArg21, align 8
  %call22 = call i32 %34(ptr noundef %call20, ptr noundef %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %inc23 = add nsw i32 %39, 1
  store i32 %inc23, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %40 = load ptr, ptr %z, align 8
  %cmp24 = icmp eq ptr %40, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.end
  store ptr @.str.58, ptr %z, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.end
  br label %while.cond27

while.cond27:                                     ; preds = %while.body37, %if.end26
  %41 = load ptr, ptr %z, align 8
  %arrayidx = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %42 to i32
  %tobool28 = icmp ne i32 %conv, 0
  br i1 %tobool28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond27
  %43 = load ptr, ptr %z, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %43, i64 0
  %44 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %44 to i32
  %cmp31 = icmp ne i32 %conv30, 45
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %45 = load ptr, ptr %z, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %45, i64 1
  %46 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %46 to i32
  %cmp35 = icmp ne i32 %conv34, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %47 = phi i1 [ true, %land.rhs ], [ %cmp35, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond27
  %48 = phi i1 [ false, %while.cond27 ], [ %47, %lor.end ]
  br i1 %48, label %while.body37, label %while.end

while.body37:                                     ; preds = %land.end
  %49 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  br label %while.cond27, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %50 = load ptr, ptr %z, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx38, align 1
  %tobool39 = icmp ne i8 %51, 0
  br i1 %tobool39, label %if.then40, label %if.else

if.then40:                                        ; preds = %while.end
  %52 = load ptr, ptr %p.addr, align 8
  %xCallback41 = getelementptr inbounds %struct.DState, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %xCallback41, align 8
  %54 = load ptr, ptr %p.addr, align 8
  %pArg42 = getelementptr inbounds %struct.DState, ptr %54, i32 0, i32 5
  %55 = load ptr, ptr %pArg42, align 8
  %call43 = call i32 %53(ptr noundef @.str.59, ptr noundef %55)
  br label %if.end47

if.else:                                          ; preds = %while.end
  %56 = load ptr, ptr %p.addr, align 8
  %xCallback44 = getelementptr inbounds %struct.DState, ptr %56, i32 0, i32 4
  %57 = load ptr, ptr %xCallback44, align 8
  %58 = load ptr, ptr %p.addr, align 8
  %pArg45 = getelementptr inbounds %struct.DState, ptr %58, i32 0, i32 5
  %59 = load ptr, ptr %pArg45, align 8
  %call46 = call i32 %57(ptr noundef @.str.22, ptr noundef %59)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then40
  %60 = load ptr, ptr %pSelect, align 8
  %call48 = call i32 @sqlite3_step(ptr noundef %60)
  store i32 %call48, ptr %rc, align 4
  br label %while.cond, !llvm.loop !9

while.end49:                                      ; preds = %while.cond
  %61 = load ptr, ptr %pSelect, align 8
  %call50 = call i32 @sqlite3_finalize(ptr noundef %61)
  store i32 %call50, ptr %rc, align 4
  %62 = load i32, ptr %rc, align 4
  %cmp51 = icmp ne i32 %62, 0
  br i1 %cmp51, label %if.then53, label %if.end62

if.then53:                                        ; preds = %while.end49
  %63 = load ptr, ptr %p.addr, align 8
  %64 = load i32, ptr %rc, align 4
  %65 = load ptr, ptr %p.addr, align 8
  %db54 = getelementptr inbounds %struct.DState, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %db54, align 8
  %call55 = call ptr @sqlite3_errmsg(ptr noundef %66)
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %63, ptr noundef @.str.57, i32 noundef %64, ptr noundef %call55)
  %67 = load i32, ptr %rc, align 4
  %and = and i32 %67, 255
  %cmp56 = icmp ne i32 %and, 11
  br i1 %cmp56, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.then53
  %68 = load ptr, ptr %p.addr, align 8
  %nErr59 = getelementptr inbounds %struct.DState, ptr %68, i32 0, i32 1
  %69 = load i32, ptr %nErr59, align 8
  %inc60 = add nsw i32 %69, 1
  store i32 %inc60, ptr %nErr59, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.then53
  br label %if.end62

if.end62:                                         ; preds = %if.then, %if.then4, %if.end61, %while.end49
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

declare ptr @sqlite3_vmprintf(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @dump_callback(ptr noundef %pArg, i32 noundef %nArg, ptr noundef %azArg, ptr noundef %azCol) #0 {
entry:
  %retval = alloca i32, align 4
  %pArg.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %azArg.addr = alloca ptr, align 8
  %azCol.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zTable = alloca ptr, align 8
  %zType = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  %sSelect = alloca %struct.DText, align 8
  %sTable = alloca %struct.DText, align 8
  %azTCol = alloca ptr, align 8
  %i = alloca i32, align 4
  %nCol = alloca i32, align 4
  %r = alloca double, align 8
  %ur = alloca i64, align 8
  %nByte = alloca i32, align 4
  %a = alloca ptr, align 8
  %j = alloca i32, align 4
  %zWord = alloca [3 x i8], align 1
  store ptr %pArg, ptr %pArg.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %azArg, ptr %azArg.addr, align 8
  store ptr %azCol, ptr %azCol.addr, align 8
  %0 = load ptr, ptr %pArg.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %azCol.addr, align 8
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp ne i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %azArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %zTable, align 8
  %5 = load ptr, ptr %azArg.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx1, align 8
  store ptr %6, ptr %zType, align 8
  %7 = load ptr, ptr %azArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %7, i64 2
  %8 = load ptr, ptr %arrayidx2, align 8
  store ptr %8, ptr %zSql, align 8
  %9 = load ptr, ptr %zTable, align 8
  %call = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.12)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %p, align 8
  %xCallback = getelementptr inbounds %struct.DState, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %xCallback, align 8
  %12 = load ptr, ptr %p, align 8
  %pArg5 = getelementptr inbounds %struct.DState, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %pArg5, align 8
  %call6 = call i32 %11(ptr noundef @.str.13, ptr noundef %13)
  br label %if.end48

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %zTable, align 8
  %call7 = call i32 @sqlite3_strglob(ptr noundef @.str.14, ptr noundef %14)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  %15 = load ptr, ptr %p, align 8
  %xCallback10 = getelementptr inbounds %struct.DState, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %xCallback10, align 8
  %17 = load ptr, ptr %p, align 8
  %pArg11 = getelementptr inbounds %struct.DState, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %pArg11, align 8
  %call12 = call i32 %16(ptr noundef @.str.15, ptr noundef %18)
  br label %if.end47

if.else13:                                        ; preds = %if.else
  %19 = load ptr, ptr %zTable, align 8
  %call14 = call i32 @strncmp(ptr noundef %19, ptr noundef @.str.16, i64 noundef 7)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else13
  store i32 0, ptr %retval, align 4
  br label %return

if.else17:                                        ; preds = %if.else13
  %20 = load ptr, ptr %zSql, align 8
  %call18 = call i32 @strncmp(ptr noundef %20, ptr noundef @.str.17, i64 noundef 20)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.else27

if.then20:                                        ; preds = %if.else17
  %21 = load ptr, ptr %p, align 8
  %writableSchema = getelementptr inbounds %struct.DState, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %writableSchema, align 8
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.then20
  %23 = load ptr, ptr %p, align 8
  %xCallback22 = getelementptr inbounds %struct.DState, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %xCallback22, align 8
  %25 = load ptr, ptr %p, align 8
  %pArg23 = getelementptr inbounds %struct.DState, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %pArg23, align 8
  %call24 = call i32 %24(ptr noundef @.str.18, ptr noundef %26)
  %27 = load ptr, ptr %p, align 8
  %writableSchema25 = getelementptr inbounds %struct.DState, ptr %27, i32 0, i32 3
  store i32 1, ptr %writableSchema25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then20
  %28 = load ptr, ptr %p, align 8
  %29 = load ptr, ptr %zTable, align 8
  %30 = load ptr, ptr %zTable, align 8
  %31 = load ptr, ptr %zSql, align 8
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %28, ptr noundef @.str.19, ptr noundef %29, ptr noundef %30, ptr noundef %31)
  store i32 0, ptr %retval, align 4
  br label %return

if.else27:                                        ; preds = %if.else17
  %32 = load ptr, ptr %zSql, align 8
  %call28 = call i32 @sqlite3_strglob(ptr noundef @.str.20, ptr noundef %32)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else37

if.then30:                                        ; preds = %if.else27
  %33 = load ptr, ptr %p, align 8
  %xCallback31 = getelementptr inbounds %struct.DState, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %xCallback31, align 8
  %35 = load ptr, ptr %p, align 8
  %pArg32 = getelementptr inbounds %struct.DState, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %pArg32, align 8
  %call33 = call i32 %34(ptr noundef @.str.21, ptr noundef %36)
  %37 = load ptr, ptr %p, align 8
  %xCallback34 = getelementptr inbounds %struct.DState, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %xCallback34, align 8
  %39 = load ptr, ptr %zSql, align 8
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 13
  %40 = load ptr, ptr %p, align 8
  %pArg35 = getelementptr inbounds %struct.DState, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %pArg35, align 8
  %call36 = call i32 %38(ptr noundef %add.ptr, ptr noundef %41)
  br label %if.end41

if.else37:                                        ; preds = %if.else27
  %42 = load ptr, ptr %p, align 8
  %xCallback38 = getelementptr inbounds %struct.DState, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %xCallback38, align 8
  %44 = load ptr, ptr %zSql, align 8
  %45 = load ptr, ptr %p, align 8
  %pArg39 = getelementptr inbounds %struct.DState, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %pArg39, align 8
  %call40 = call i32 %43(ptr noundef %44, ptr noundef %46)
  br label %if.end41

if.end41:                                         ; preds = %if.else37, %if.then30
  %47 = load ptr, ptr %p, align 8
  %xCallback42 = getelementptr inbounds %struct.DState, ptr %47, i32 0, i32 4
  %48 = load ptr, ptr %xCallback42, align 8
  %49 = load ptr, ptr %p, align 8
  %pArg43 = getelementptr inbounds %struct.DState, ptr %49, i32 0, i32 5
  %50 = load ptr, ptr %pArg43, align 8
  %call44 = call i32 %48(ptr noundef @.str.22, ptr noundef %50)
  br label %if.end45

if.end45:                                         ; preds = %if.end41
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then9
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then4
  %51 = load ptr, ptr %zType, align 8
  %call49 = call i32 @strcmp(ptr noundef %51, ptr noundef @.str.23)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end185

if.then51:                                        ; preds = %if.end48
  %52 = load ptr, ptr %p, align 8
  %53 = load ptr, ptr %zTable, align 8
  %call52 = call ptr @tableColumnList(ptr noundef %52, ptr noundef %53)
  store ptr %call52, ptr %azTCol, align 8
  %54 = load ptr, ptr %azTCol, align 8
  %cmp53 = icmp eq ptr %54, null
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then51
  store i32 0, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.then51
  call void @initText(ptr noundef %sTable)
  call void @appendText(ptr noundef %sTable, ptr noundef @.str.24, i8 noundef signext 0)
  %55 = load ptr, ptr %zTable, align 8
  %56 = load ptr, ptr %zTable, align 8
  %call56 = call signext i8 @quoteChar(ptr noundef %56)
  call void @appendText(ptr noundef %sTable, ptr noundef %55, i8 noundef signext %call56)
  %57 = load ptr, ptr %azTCol, align 8
  %arrayidx57 = getelementptr inbounds ptr, ptr %57, i64 0
  %58 = load ptr, ptr %arrayidx57, align 8
  %tobool58 = icmp ne ptr %58, null
  br i1 %tobool58, label %if.then59, label %if.end68

if.then59:                                        ; preds = %if.end55
  call void @appendText(ptr noundef %sTable, ptr noundef @.str.25, i8 noundef signext 0)
  %59 = load ptr, ptr %azTCol, align 8
  %arrayidx60 = getelementptr inbounds ptr, ptr %59, i64 0
  %60 = load ptr, ptr %arrayidx60, align 8
  call void @appendText(ptr noundef %sTable, ptr noundef %60, i8 noundef signext 0)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then59
  %61 = load ptr, ptr %azTCol, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom = sext i32 %62 to i64
  %arrayidx61 = getelementptr inbounds ptr, ptr %61, i64 %idxprom
  %63 = load ptr, ptr %arrayidx61, align 8
  %tobool62 = icmp ne ptr %63, null
  br i1 %tobool62, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @appendText(ptr noundef %sTable, ptr noundef @.str.26, i8 noundef signext 0)
  %64 = load ptr, ptr %azTCol, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %65 to i64
  %arrayidx64 = getelementptr inbounds ptr, ptr %64, i64 %idxprom63
  %66 = load ptr, ptr %arrayidx64, align 8
  %67 = load ptr, ptr %azTCol, align 8
  %68 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %68 to i64
  %arrayidx66 = getelementptr inbounds ptr, ptr %67, i64 %idxprom65
  %69 = load ptr, ptr %arrayidx66, align 8
  %call67 = call signext i8 @quoteChar(ptr noundef %69)
  call void @appendText(ptr noundef %sTable, ptr noundef %66, i8 noundef signext %call67)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load i32, ptr %i, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @appendText(ptr noundef %sTable, ptr noundef @.str.27, i8 noundef signext 0)
  br label %if.end68

if.end68:                                         ; preds = %for.end, %if.end55
  call void @appendText(ptr noundef %sTable, ptr noundef @.str.28, i8 noundef signext 0)
  call void @initText(ptr noundef %sSelect)
  call void @appendText(ptr noundef %sSelect, ptr noundef @.str.29, i8 noundef signext 0)
  %71 = load ptr, ptr %azTCol, align 8
  %arrayidx69 = getelementptr inbounds ptr, ptr %71, i64 0
  %72 = load ptr, ptr %arrayidx69, align 8
  %tobool70 = icmp ne ptr %72, null
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end68
  %73 = load ptr, ptr %azTCol, align 8
  %arrayidx72 = getelementptr inbounds ptr, ptr %73, i64 0
  %74 = load ptr, ptr %arrayidx72, align 8
  call void @appendText(ptr noundef %sSelect, ptr noundef %74, i8 noundef signext 0)
  call void @appendText(ptr noundef %sSelect, ptr noundef @.str.26, i8 noundef signext 0)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end68
  store i32 1, ptr %i, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc89, %if.end73
  %75 = load ptr, ptr %azTCol, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom75 = sext i32 %76 to i64
  %arrayidx76 = getelementptr inbounds ptr, ptr %75, i64 %idxprom75
  %77 = load ptr, ptr %arrayidx76, align 8
  %tobool77 = icmp ne ptr %77, null
  br i1 %tobool77, label %for.body78, label %for.end91

for.body78:                                       ; preds = %for.cond74
  %78 = load ptr, ptr %azTCol, align 8
  %79 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %79 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %78, i64 %idxprom79
  %80 = load ptr, ptr %arrayidx80, align 8
  %81 = load ptr, ptr %azTCol, align 8
  %82 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %82 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %81, i64 %idxprom81
  %83 = load ptr, ptr %arrayidx82, align 8
  %call83 = call signext i8 @quoteChar(ptr noundef %83)
  call void @appendText(ptr noundef %sSelect, ptr noundef %80, i8 noundef signext %call83)
  %84 = load ptr, ptr %azTCol, align 8
  %85 = load i32, ptr %i, align 4
  %add = add nsw i32 %85, 1
  %idxprom84 = sext i32 %add to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %84, i64 %idxprom84
  %86 = load ptr, ptr %arrayidx85, align 8
  %tobool86 = icmp ne ptr %86, null
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %for.body78
  call void @appendText(ptr noundef %sSelect, ptr noundef @.str.26, i8 noundef signext 0)
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %for.body78
  br label %for.inc89

for.inc89:                                        ; preds = %if.end88
  %87 = load i32, ptr %i, align 4
  %inc90 = add nsw i32 %87, 1
  store i32 %inc90, ptr %i, align 4
  br label %for.cond74, !llvm.loop !11

for.end91:                                        ; preds = %for.cond74
  %88 = load i32, ptr %i, align 4
  store i32 %88, ptr %nCol, align 4
  %89 = load ptr, ptr %azTCol, align 8
  %arrayidx92 = getelementptr inbounds ptr, ptr %89, i64 0
  %90 = load ptr, ptr %arrayidx92, align 8
  %cmp93 = icmp eq ptr %90, null
  br i1 %cmp93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %for.end91
  %91 = load i32, ptr %nCol, align 4
  %dec = add nsw i32 %91, -1
  store i32 %dec, ptr %nCol, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %for.end91
  %92 = load ptr, ptr %azTCol, align 8
  call void @freeColumnList(ptr noundef %92)
  call void @appendText(ptr noundef %sSelect, ptr noundef @.str.30, i8 noundef signext 0)
  %93 = load ptr, ptr %zTable, align 8
  %94 = load ptr, ptr %zTable, align 8
  %call96 = call signext i8 @quoteChar(ptr noundef %94)
  call void @appendText(ptr noundef %sSelect, ptr noundef %93, i8 noundef signext %call96)
  %95 = load ptr, ptr %p, align 8
  %db = getelementptr inbounds %struct.DState, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %db, align 8
  %z = getelementptr inbounds %struct.DText, ptr %sSelect, i32 0, i32 0
  %97 = load ptr, ptr %z, align 8
  %call97 = call i32 @sqlite3_prepare_v2(ptr noundef %96, ptr noundef %97, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call97, ptr %rc, align 4
  %98 = load i32, ptr %rc, align 4
  %cmp98 = icmp ne i32 %98, 0
  br i1 %cmp98, label %if.then99, label %if.else106

if.then99:                                        ; preds = %if.end95
  %99 = load ptr, ptr %p, align 8
  %nErr = getelementptr inbounds %struct.DState, ptr %99, i32 0, i32 1
  %100 = load i32, ptr %nErr, align 8
  %inc100 = add nsw i32 %100, 1
  store i32 %inc100, ptr %nErr, align 8
  %101 = load ptr, ptr %p, align 8
  %rc101 = getelementptr inbounds %struct.DState, ptr %101, i32 0, i32 2
  %102 = load i32, ptr %rc101, align 4
  %cmp102 = icmp eq i32 %102, 0
  br i1 %cmp102, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.then99
  %103 = load i32, ptr %rc, align 4
  %104 = load ptr, ptr %p, align 8
  %rc104 = getelementptr inbounds %struct.DState, ptr %104, i32 0, i32 2
  store i32 %103, ptr %rc104, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.then99
  br label %if.end183

if.else106:                                       ; preds = %if.end95
  br label %while.cond

while.cond:                                       ; preds = %for.end179, %if.else106
  %105 = load ptr, ptr %pStmt, align 8
  %call107 = call i32 @sqlite3_step(ptr noundef %105)
  %cmp108 = icmp eq i32 100, %call107
  br i1 %cmp108, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %106 = load ptr, ptr %p, align 8
  %xCallback109 = getelementptr inbounds %struct.DState, ptr %106, i32 0, i32 4
  %107 = load ptr, ptr %xCallback109, align 8
  %z110 = getelementptr inbounds %struct.DText, ptr %sTable, i32 0, i32 0
  %108 = load ptr, ptr %z110, align 8
  %109 = load ptr, ptr %p, align 8
  %pArg111 = getelementptr inbounds %struct.DState, ptr %109, i32 0, i32 5
  %110 = load ptr, ptr %pArg111, align 8
  %call112 = call i32 %107(ptr noundef %108, ptr noundef %110)
  store i32 0, ptr %i, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc177, %while.body
  %111 = load i32, ptr %i, align 4
  %112 = load i32, ptr %nCol, align 4
  %cmp114 = icmp slt i32 %111, %112
  br i1 %cmp114, label %for.body115, label %for.end179

for.body115:                                      ; preds = %for.cond113
  %113 = load i32, ptr %i, align 4
  %tobool116 = icmp ne i32 %113, 0
  br i1 %tobool116, label %if.then117, label %if.end121

if.then117:                                       ; preds = %for.body115
  %114 = load ptr, ptr %p, align 8
  %xCallback118 = getelementptr inbounds %struct.DState, ptr %114, i32 0, i32 4
  %115 = load ptr, ptr %xCallback118, align 8
  %116 = load ptr, ptr %p, align 8
  %pArg119 = getelementptr inbounds %struct.DState, ptr %116, i32 0, i32 5
  %117 = load ptr, ptr %pArg119, align 8
  %call120 = call i32 %115(ptr noundef @.str.26, ptr noundef %117)
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %for.body115
  %118 = load ptr, ptr %pStmt, align 8
  %119 = load i32, ptr %i, align 4
  %call122 = call i32 @sqlite3_column_type(ptr noundef %118, i32 noundef %119)
  switch i32 %call122, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb124
    i32 5, label %sw.bb140
    i32 3, label %sw.bb144
    i32 4, label %sw.bb146
  ]

sw.bb:                                            ; preds = %if.end121
  %120 = load ptr, ptr %p, align 8
  %121 = load ptr, ptr %pStmt, align 8
  %122 = load i32, ptr %i, align 4
  %call123 = call i64 @sqlite3_column_int64(ptr noundef %121, i32 noundef %122)
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %120, ptr noundef @.str.31, i64 noundef %call123)
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end121
  %123 = load ptr, ptr %pStmt, align 8
  %124 = load i32, ptr %i, align 4
  %call125 = call double @sqlite3_column_double(ptr noundef %123, i32 noundef %124)
  store double %call125, ptr %r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ur, ptr align 8 %r, i64 8, i1 false)
  %125 = load i64, ptr %ur, align 8
  %cmp126 = icmp eq i64 %125, 9218868437227405312
  br i1 %cmp126, label %if.then127, label %if.else131

if.then127:                                       ; preds = %sw.bb124
  %126 = load ptr, ptr %p, align 8
  %xCallback128 = getelementptr inbounds %struct.DState, ptr %126, i32 0, i32 4
  %127 = load ptr, ptr %xCallback128, align 8
  %128 = load ptr, ptr %p, align 8
  %pArg129 = getelementptr inbounds %struct.DState, ptr %128, i32 0, i32 5
  %129 = load ptr, ptr %pArg129, align 8
  %call130 = call i32 %127(ptr noundef @.str.32, ptr noundef %129)
  br label %if.end139

if.else131:                                       ; preds = %sw.bb124
  %130 = load i64, ptr %ur, align 8
  %cmp132 = icmp eq i64 %130, -4503599627370496
  br i1 %cmp132, label %if.then133, label %if.else137

if.then133:                                       ; preds = %if.else131
  %131 = load ptr, ptr %p, align 8
  %xCallback134 = getelementptr inbounds %struct.DState, ptr %131, i32 0, i32 4
  %132 = load ptr, ptr %xCallback134, align 8
  %133 = load ptr, ptr %p, align 8
  %pArg135 = getelementptr inbounds %struct.DState, ptr %133, i32 0, i32 5
  %134 = load ptr, ptr %pArg135, align 8
  %call136 = call i32 %132(ptr noundef @.str.33, ptr noundef %134)
  br label %if.end138

if.else137:                                       ; preds = %if.else131
  %135 = load ptr, ptr %p, align 8
  %136 = load double, ptr %r, align 8
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %135, ptr noundef @.str.34, double noundef %136)
  br label %if.end138

if.end138:                                        ; preds = %if.else137, %if.then133
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then127
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.end121
  %137 = load ptr, ptr %p, align 8
  %xCallback141 = getelementptr inbounds %struct.DState, ptr %137, i32 0, i32 4
  %138 = load ptr, ptr %xCallback141, align 8
  %139 = load ptr, ptr %p, align 8
  %pArg142 = getelementptr inbounds %struct.DState, ptr %139, i32 0, i32 5
  %140 = load ptr, ptr %pArg142, align 8
  %call143 = call i32 %138(ptr noundef @.str.35, ptr noundef %140)
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end121
  %141 = load ptr, ptr %p, align 8
  %142 = load ptr, ptr %pStmt, align 8
  %143 = load i32, ptr %i, align 4
  %call145 = call ptr @sqlite3_column_text(ptr noundef %142, i32 noundef %143)
  call void @output_quoted_escaped_string(ptr noundef %141, ptr noundef %call145)
  br label %sw.epilog

sw.bb146:                                         ; preds = %if.end121
  %144 = load ptr, ptr %pStmt, align 8
  %145 = load i32, ptr %i, align 4
  %call147 = call i32 @sqlite3_column_bytes(ptr noundef %144, i32 noundef %145)
  store i32 %call147, ptr %nByte, align 4
  %146 = load ptr, ptr %pStmt, align 8
  %147 = load i32, ptr %i, align 4
  %call148 = call ptr @sqlite3_column_blob(ptr noundef %146, i32 noundef %147)
  store ptr %call148, ptr %a, align 8
  %148 = load ptr, ptr %p, align 8
  %xCallback149 = getelementptr inbounds %struct.DState, ptr %148, i32 0, i32 4
  %149 = load ptr, ptr %xCallback149, align 8
  %150 = load ptr, ptr %p, align 8
  %pArg150 = getelementptr inbounds %struct.DState, ptr %150, i32 0, i32 5
  %151 = load ptr, ptr %pArg150, align 8
  %call151 = call i32 %149(ptr noundef @.str.36, ptr noundef %151)
  store i32 0, ptr %j, align 4
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc171, %sw.bb146
  %152 = load i32, ptr %j, align 4
  %153 = load i32, ptr %nByte, align 4
  %cmp153 = icmp slt i32 %152, %153
  br i1 %cmp153, label %for.body154, label %for.end173

for.body154:                                      ; preds = %for.cond152
  %154 = load ptr, ptr %a, align 8
  %155 = load i32, ptr %j, align 4
  %idxprom155 = sext i32 %155 to i64
  %arrayidx156 = getelementptr inbounds i8, ptr %154, i64 %idxprom155
  %156 = load i8, ptr %arrayidx156, align 1
  %conv = zext i8 %156 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 15
  %idxprom157 = sext i32 %and to i64
  %arrayidx158 = getelementptr inbounds [17 x i8], ptr @.str.37, i64 0, i64 %idxprom157
  %157 = load i8, ptr %arrayidx158, align 1
  %arrayidx159 = getelementptr inbounds [3 x i8], ptr %zWord, i64 0, i64 0
  store i8 %157, ptr %arrayidx159, align 1
  %158 = load ptr, ptr %a, align 8
  %159 = load i32, ptr %j, align 4
  %idxprom160 = sext i32 %159 to i64
  %arrayidx161 = getelementptr inbounds i8, ptr %158, i64 %idxprom160
  %160 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %160 to i32
  %and163 = and i32 %conv162, 15
  %idxprom164 = sext i32 %and163 to i64
  %arrayidx165 = getelementptr inbounds [17 x i8], ptr @.str.37, i64 0, i64 %idxprom164
  %161 = load i8, ptr %arrayidx165, align 1
  %arrayidx166 = getelementptr inbounds [3 x i8], ptr %zWord, i64 0, i64 1
  store i8 %161, ptr %arrayidx166, align 1
  %arrayidx167 = getelementptr inbounds [3 x i8], ptr %zWord, i64 0, i64 2
  store i8 0, ptr %arrayidx167, align 1
  %162 = load ptr, ptr %p, align 8
  %xCallback168 = getelementptr inbounds %struct.DState, ptr %162, i32 0, i32 4
  %163 = load ptr, ptr %xCallback168, align 8
  %arraydecay = getelementptr inbounds [3 x i8], ptr %zWord, i64 0, i64 0
  %164 = load ptr, ptr %p, align 8
  %pArg169 = getelementptr inbounds %struct.DState, ptr %164, i32 0, i32 5
  %165 = load ptr, ptr %pArg169, align 8
  %call170 = call i32 %163(ptr noundef %arraydecay, ptr noundef %165)
  br label %for.inc171

for.inc171:                                       ; preds = %for.body154
  %166 = load i32, ptr %j, align 4
  %inc172 = add nsw i32 %166, 1
  store i32 %inc172, ptr %j, align 4
  br label %for.cond152, !llvm.loop !12

for.end173:                                       ; preds = %for.cond152
  %167 = load ptr, ptr %p, align 8
  %xCallback174 = getelementptr inbounds %struct.DState, ptr %167, i32 0, i32 4
  %168 = load ptr, ptr %xCallback174, align 8
  %169 = load ptr, ptr %p, align 8
  %pArg175 = getelementptr inbounds %struct.DState, ptr %169, i32 0, i32 5
  %170 = load ptr, ptr %pArg175, align 8
  %call176 = call i32 %168(ptr noundef @.str.38, ptr noundef %170)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end121, %for.end173, %sw.bb144, %sw.bb140, %if.end139, %sw.bb
  br label %for.inc177

for.inc177:                                       ; preds = %sw.epilog
  %171 = load i32, ptr %i, align 4
  %inc178 = add nsw i32 %171, 1
  store i32 %inc178, ptr %i, align 4
  br label %for.cond113, !llvm.loop !13

for.end179:                                       ; preds = %for.cond113
  %172 = load ptr, ptr %p, align 8
  %xCallback180 = getelementptr inbounds %struct.DState, ptr %172, i32 0, i32 4
  %173 = load ptr, ptr %xCallback180, align 8
  %174 = load ptr, ptr %p, align 8
  %pArg181 = getelementptr inbounds %struct.DState, ptr %174, i32 0, i32 5
  %175 = load ptr, ptr %pArg181, align 8
  %call182 = call i32 %173(ptr noundef @.str.39, ptr noundef %175)
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %if.end183

if.end183:                                        ; preds = %while.end, %if.end105
  %176 = load ptr, ptr %pStmt, align 8
  %call184 = call i32 @sqlite3_finalize(ptr noundef %176)
  call void @freeText(ptr noundef %sTable)
  call void @freeText(ptr noundef %sSelect)
  br label %if.end185

if.end185:                                        ; preds = %if.end183, %if.end48
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end185, %if.then54, %if.end26, %if.then16, %if.then
  %177 = load i32, ptr %retval, align 4
  ret i32 %177
}

declare void @sqlite3_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @output_formatted(ptr noundef %p, ptr noundef %zFormat, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFormat.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %z, align 8
  call void @llvm.va_end(ptr %ap)
  %2 = load ptr, ptr %p.addr, align 8
  %xCallback = getelementptr inbounds %struct.DState, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %xCallback, align 8
  %4 = load ptr, ptr %z, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %pArg = getelementptr inbounds %struct.DState, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %pArg, align 8
  %call1 = call i32 %3(ptr noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %z, align 8
  call void @sqlite3_free(ptr noundef %7)
  ret void
}

declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @sqlite3_strglob(ptr noundef, ptr noundef) #2

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @tableColumnList(ptr noundef %p, ptr noundef %zTab) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %zTab.addr = alloca ptr, align 8
  %azCol = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %nCol = alloca i64, align 8
  %nAlloc = alloca i64, align 8
  %nPK = alloca i32, align 4
  %isIPK = alloca i32, align 4
  %preserveRowid = alloca i32, align 4
  %rc = alloca i32, align 4
  %azNew = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %zTab, ptr %zTab.addr, align 8
  store ptr null, ptr %azCol, align 8
  store ptr null, ptr %pStmt, align 8
  store i64 0, ptr %nCol, align 8
  store i64 0, ptr %nAlloc, align 8
  store i32 0, ptr %nPK, align 4
  store i32 0, ptr %isIPK, align 4
  store i32 1, ptr %preserveRowid, align 4
  %0 = load ptr, ptr %zTab.addr, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.40, ptr noundef %0)
  store ptr %call, ptr %zSql, align 8
  %1 = load ptr, ptr %zSql, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.DState, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %zSql, align 8
  %call1 = call i32 @sqlite3_prepare_v2(ptr noundef %3, ptr noundef %4, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  %5 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %5)
  %6 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.end3
  %7 = load ptr, ptr %pStmt, align 8
  %call4 = call i32 @sqlite3_step(ptr noundef %7)
  %cmp5 = icmp eq i32 %call4, 100
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i64, ptr %nCol, align 8
  %9 = load i64, ptr %nAlloc, align 8
  %sub = sub nsw i64 %9, 2
  %cmp6 = icmp sge i64 %8, %sub
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %while.body
  %10 = load i64, ptr %nAlloc, align 8
  %mul = mul nsw i64 %10, 2
  %11 = load i64, ptr %nCol, align 8
  %add = add nsw i64 %mul, %11
  %add8 = add nsw i64 %add, 10
  store i64 %add8, ptr %nAlloc, align 8
  %12 = load ptr, ptr %azCol, align 8
  %13 = load i64, ptr %nAlloc, align 8
  %mul9 = mul i64 %13, 8
  %call10 = call ptr @sqlite3_realloc64(ptr noundef %12, i64 noundef %mul9)
  store ptr %call10, ptr %azNew, align 8
  %14 = load ptr, ptr %azNew, align 8
  %cmp11 = icmp eq ptr %14, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  br label %col_oom

if.end13:                                         ; preds = %if.then7
  %15 = load ptr, ptr %azNew, align 8
  store ptr %15, ptr %azCol, align 8
  %16 = load ptr, ptr %azCol, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 0
  store ptr null, ptr %arrayidx, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %while.body
  %17 = load ptr, ptr %pStmt, align 8
  %call15 = call ptr @sqlite3_column_text(ptr noundef %17, i32 noundef 1)
  %call16 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.41, ptr noundef %call15)
  %18 = load ptr, ptr %azCol, align 8
  %19 = load i64, ptr %nCol, align 8
  %inc = add nsw i64 %19, 1
  store i64 %inc, ptr %nCol, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %18, i64 %inc
  store ptr %call16, ptr %arrayidx17, align 8
  %20 = load ptr, ptr %azCol, align 8
  %21 = load i64, ptr %nCol, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %20, i64 %21
  %22 = load ptr, ptr %arrayidx18, align 8
  %cmp19 = icmp eq ptr %22, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end14
  br label %col_oom

if.end21:                                         ; preds = %if.end14
  %23 = load ptr, ptr %pStmt, align 8
  %call22 = call i32 @sqlite3_column_int(ptr noundef %23, i32 noundef 5)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end21
  %24 = load i32, ptr %nPK, align 4
  %inc25 = add nsw i32 %24, 1
  store i32 %inc25, ptr %nPK, align 4
  %25 = load i32, ptr %nPK, align 4
  %cmp26 = icmp eq i32 %25, 1
  br i1 %cmp26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then24
  %26 = load ptr, ptr %pStmt, align 8
  %call27 = call ptr @sqlite3_column_text(ptr noundef %26, i32 noundef 2)
  %call28 = call i32 @sqlite3_stricmp(ptr noundef %call27, ptr noundef @.str.42)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %land.lhs.true
  store i32 1, ptr %isIPK, align 4
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true, %if.then24
  store i32 0, ptr %isIPK, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then30
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end21
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %27 = load ptr, ptr %pStmt, align 8
  %call33 = call i32 @sqlite3_finalize(ptr noundef %27)
  store ptr null, ptr %pStmt, align 8
  %28 = load ptr, ptr %azCol, align 8
  %29 = load i64, ptr %nCol, align 8
  %add34 = add nsw i64 %29, 1
  %arrayidx35 = getelementptr inbounds ptr, ptr %28, i64 %add34
  store ptr null, ptr %arrayidx35, align 8
  %30 = load i32, ptr %isIPK, align 4
  %tobool36 = icmp ne i32 %30, 0
  br i1 %tobool36, label %if.then37, label %if.end50

if.then37:                                        ; preds = %while.end
  %31 = load ptr, ptr %zTab.addr, align 8
  %call38 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.43, ptr noundef %31)
  store ptr %call38, ptr %zSql, align 8
  %32 = load ptr, ptr %zSql, align 8
  %cmp39 = icmp eq ptr %32, null
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then37
  br label %col_oom

if.end41:                                         ; preds = %if.then37
  %33 = load ptr, ptr %p.addr, align 8
  %db42 = getelementptr inbounds %struct.DState, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %db42, align 8
  %35 = load ptr, ptr %zSql, align 8
  %call43 = call i32 @sqlite3_prepare_v2(ptr noundef %34, ptr noundef %35, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call43, ptr %rc, align 4
  %36 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %36)
  %37 = load i32, ptr %rc, align 4
  %tobool44 = icmp ne i32 %37, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  %38 = load ptr, ptr %azCol, align 8
  call void @freeColumnList(ptr noundef %38)
  store ptr null, ptr %retval, align 8
  br label %return

if.end46:                                         ; preds = %if.end41
  %39 = load ptr, ptr %pStmt, align 8
  %call47 = call i32 @sqlite3_step(ptr noundef %39)
  store i32 %call47, ptr %rc, align 4
  %40 = load ptr, ptr %pStmt, align 8
  %call48 = call i32 @sqlite3_finalize(ptr noundef %40)
  store ptr null, ptr %pStmt, align 8
  %41 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %41, 100
  %conv = zext i1 %cmp49 to i32
  store i32 %conv, ptr %preserveRowid, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end46, %while.end
  %42 = load i32, ptr %preserveRowid, align 4
  %tobool51 = icmp ne i32 %42, 0
  br i1 %tobool51, label %if.then52, label %if.end88

if.then52:                                        ; preds = %if.end50
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc85, %if.then52
  %43 = load i32, ptr %j, align 4
  %cmp53 = icmp slt i32 %43, 3
  br i1 %cmp53, label %for.body, label %for.end87

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc, %for.body
  %44 = load i32, ptr %i, align 4
  %conv56 = sext i32 %44 to i64
  %45 = load i64, ptr %nCol, align 8
  %cmp57 = icmp sle i64 %conv56, %45
  br i1 %cmp57, label %for.body59, label %for.end

for.body59:                                       ; preds = %for.cond55
  %46 = load i32, ptr %j, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx60 = getelementptr inbounds [3 x ptr], ptr @tableColumnList.azRowid, i64 0, i64 %idxprom
  %47 = load ptr, ptr %arrayidx60, align 8
  %48 = load ptr, ptr %azCol, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %49 to i64
  %arrayidx62 = getelementptr inbounds ptr, ptr %48, i64 %idxprom61
  %50 = load ptr, ptr %arrayidx62, align 8
  %call63 = call i32 @sqlite3_stricmp(ptr noundef %47, ptr noundef %50)
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %for.body59
  br label %for.end

if.end67:                                         ; preds = %for.body59
  br label %for.inc

for.inc:                                          ; preds = %if.end67
  %51 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %51, 1
  store i32 %inc68, ptr %i, align 4
  br label %for.cond55, !llvm.loop !16

for.end:                                          ; preds = %if.then66, %for.cond55
  %52 = load i32, ptr %i, align 4
  %conv69 = sext i32 %52 to i64
  %53 = load i64, ptr %nCol, align 8
  %cmp70 = icmp sgt i64 %conv69, %53
  br i1 %cmp70, label %if.then72, label %if.end84

if.then72:                                        ; preds = %for.end
  %54 = load ptr, ptr %p.addr, align 8
  %db73 = getelementptr inbounds %struct.DState, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %db73, align 8
  %56 = load ptr, ptr %zTab.addr, align 8
  %57 = load i32, ptr %j, align 4
  %idxprom74 = sext i32 %57 to i64
  %arrayidx75 = getelementptr inbounds [3 x ptr], ptr @tableColumnList.azRowid, i64 0, i64 %idxprom74
  %58 = load ptr, ptr %arrayidx75, align 8
  %call76 = call i32 @sqlite3_table_column_metadata(ptr noundef %55, ptr noundef null, ptr noundef %56, ptr noundef %58, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call76, ptr %rc, align 4
  %59 = load i32, ptr %rc, align 4
  %cmp77 = icmp eq i32 %59, 0
  br i1 %cmp77, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.then72
  %60 = load i32, ptr %j, align 4
  %idxprom80 = sext i32 %60 to i64
  %arrayidx81 = getelementptr inbounds [3 x ptr], ptr @tableColumnList.azRowid, i64 0, i64 %idxprom80
  %61 = load ptr, ptr %arrayidx81, align 8
  %62 = load ptr, ptr %azCol, align 8
  %arrayidx82 = getelementptr inbounds ptr, ptr %62, i64 0
  store ptr %61, ptr %arrayidx82, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.then72
  br label %for.end87

if.end84:                                         ; preds = %for.end
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %63 = load i32, ptr %j, align 4
  %inc86 = add nsw i32 %63, 1
  store i32 %inc86, ptr %j, align 4
  br label %for.cond, !llvm.loop !17

for.end87:                                        ; preds = %if.end83, %for.cond
  br label %if.end88

if.end88:                                         ; preds = %for.end87, %if.end50
  %64 = load ptr, ptr %azCol, align 8
  store ptr %64, ptr %retval, align 8
  br label %return

col_oom:                                          ; preds = %if.then40, %if.then20, %if.then12
  %65 = load ptr, ptr %pStmt, align 8
  %call89 = call i32 @sqlite3_finalize(ptr noundef %65)
  %66 = load ptr, ptr %azCol, align 8
  call void @freeColumnList(ptr noundef %66)
  %67 = load ptr, ptr %p.addr, align 8
  %nErr = getelementptr inbounds %struct.DState, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %nErr, align 8
  %inc90 = add nsw i32 %68, 1
  store i32 %inc90, ptr %nErr, align 8
  %69 = load ptr, ptr %p.addr, align 8
  %rc91 = getelementptr inbounds %struct.DState, ptr %69, i32 0, i32 2
  store i32 7, ptr %rc91, align 4
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %col_oom, %if.end88, %if.then45, %if.then2, %if.then
  %70 = load ptr, ptr %retval, align 8
  ret ptr %70
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initText(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef 24, i64 noundef %2) #8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @appendText(ptr noundef %p, ptr noundef %zAppend, i8 noundef signext %quote) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zAppend.addr = alloca ptr, align 8
  %quote.addr = alloca i8, align 1
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %nAppend = alloca i32, align 4
  %zNew = alloca ptr, align 8
  %zCsr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zAppend, ptr %zAppend.addr, align 8
  store i8 %quote, ptr %quote.addr, align 1
  %0 = load ptr, ptr %zAppend.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %and = and i64 %call, 1073741823
  %conv = trunc i64 %and to i32
  store i32 %conv, ptr %nAppend, align 4
  %1 = load i32, ptr %nAppend, align 4
  %conv1 = sext i32 %1 to i64
  %2 = load ptr, ptr %p.addr, align 8
  %n = getelementptr inbounds %struct.DText, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %n, align 8
  %add = add nsw i64 %conv1, %3
  %add2 = add nsw i64 %add, 1
  %conv3 = trunc i64 %add2 to i32
  store i32 %conv3, ptr %len, align 4
  %4 = load i8, ptr %quote.addr, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %len, align 4
  %add4 = add nsw i32 %5, 2
  store i32 %add4, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %nAppend, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %zAppend.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1
  %conv6 = sext i8 %10 to i32
  %11 = load i8, ptr %quote.addr, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %for.body
  %12 = load i32, ptr %len, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  br label %if.end12

if.end12:                                         ; preds = %for.end, %entry
  %14 = load ptr, ptr %p.addr, align 8
  %n13 = getelementptr inbounds %struct.DText, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %n13, align 8
  %16 = load i32, ptr %len, align 4
  %conv14 = sext i32 %16 to i64
  %add15 = add nsw i64 %15, %conv14
  %17 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds %struct.DText, ptr %17, i32 0, i32 2
  %18 = load i64, ptr %nAlloc, align 8
  %cmp16 = icmp sge i64 %add15, %18
  br i1 %cmp16, label %if.then18, label %if.end31

if.then18:                                        ; preds = %if.end12
  %19 = load ptr, ptr %p.addr, align 8
  %nAlloc19 = getelementptr inbounds %struct.DText, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %nAlloc19, align 8
  %mul = mul nsw i64 %20, 2
  %21 = load i32, ptr %len, align 4
  %conv20 = sext i32 %21 to i64
  %add21 = add nsw i64 %mul, %conv20
  %add22 = add nsw i64 %add21, 20
  %22 = load ptr, ptr %p.addr, align 8
  %nAlloc23 = getelementptr inbounds %struct.DText, ptr %22, i32 0, i32 2
  store i64 %add22, ptr %nAlloc23, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %z = getelementptr inbounds %struct.DText, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %z, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %nAlloc24 = getelementptr inbounds %struct.DText, ptr %25, i32 0, i32 2
  %26 = load i64, ptr %nAlloc24, align 8
  %call25 = call ptr @sqlite3_realloc64(ptr noundef %24, i64 noundef %26)
  store ptr %call25, ptr %zNew, align 8
  %27 = load ptr, ptr %zNew, align 8
  %cmp26 = icmp eq ptr %27, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then18
  %28 = load ptr, ptr %p.addr, align 8
  call void @freeText(ptr noundef %28)
  br label %if.end74

if.end29:                                         ; preds = %if.then18
  %29 = load ptr, ptr %zNew, align 8
  %30 = load ptr, ptr %p.addr, align 8
  %z30 = getelementptr inbounds %struct.DText, ptr %30, i32 0, i32 0
  store ptr %29, ptr %z30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end12
  %31 = load i8, ptr %quote.addr, align 1
  %tobool32 = icmp ne i8 %31, 0
  br i1 %tobool32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  %32 = load ptr, ptr %p.addr, align 8
  %z34 = getelementptr inbounds %struct.DText, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %z34, align 8
  %34 = load ptr, ptr %p.addr, align 8
  %n35 = getelementptr inbounds %struct.DText, ptr %34, i32 0, i32 1
  %35 = load i64, ptr %n35, align 8
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %35
  store ptr %add.ptr, ptr %zCsr, align 8
  %36 = load i8, ptr %quote.addr, align 1
  %37 = load ptr, ptr %zCsr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %zCsr, align 8
  store i8 %36, ptr %37, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc52, %if.then33
  %38 = load i32, ptr %i, align 4
  %39 = load i32, ptr %nAppend, align 4
  %cmp37 = icmp slt i32 %38, %39
  br i1 %cmp37, label %for.body39, label %for.end54

for.body39:                                       ; preds = %for.cond36
  %40 = load ptr, ptr %zAppend.addr, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %40, i64 %idxprom40
  %42 = load i8, ptr %arrayidx41, align 1
  %43 = load ptr, ptr %zCsr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr42, ptr %zCsr, align 8
  store i8 %42, ptr %43, align 1
  %44 = load ptr, ptr %zAppend.addr, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %45 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %44, i64 %idxprom43
  %46 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %46 to i32
  %47 = load i8, ptr %quote.addr, align 1
  %conv46 = sext i8 %47 to i32
  %cmp47 = icmp eq i32 %conv45, %conv46
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body39
  %48 = load i8, ptr %quote.addr, align 1
  %49 = load ptr, ptr %zCsr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr50, ptr %zCsr, align 8
  store i8 %48, ptr %49, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.body39
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %50 = load i32, ptr %i, align 4
  %inc53 = add nsw i32 %50, 1
  store i32 %inc53, ptr %i, align 4
  br label %for.cond36, !llvm.loop !19

for.end54:                                        ; preds = %for.cond36
  %51 = load i8, ptr %quote.addr, align 1
  %52 = load ptr, ptr %zCsr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr55, ptr %zCsr, align 8
  store i8 %51, ptr %52, align 1
  %53 = load ptr, ptr %zCsr, align 8
  %54 = load ptr, ptr %p.addr, align 8
  %z56 = getelementptr inbounds %struct.DText, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %z56, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %53 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %55 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv57 = trunc i64 %sub.ptr.sub to i32
  %conv58 = sext i32 %conv57 to i64
  %56 = load ptr, ptr %p.addr, align 8
  %n59 = getelementptr inbounds %struct.DText, ptr %56, i32 0, i32 1
  store i64 %conv58, ptr %n59, align 8
  %57 = load ptr, ptr %zCsr, align 8
  store i8 0, ptr %57, align 1
  br label %if.end74

if.else:                                          ; preds = %if.end31
  %58 = load ptr, ptr %p.addr, align 8
  %z60 = getelementptr inbounds %struct.DText, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %z60, align 8
  %60 = load ptr, ptr %p.addr, align 8
  %n61 = getelementptr inbounds %struct.DText, ptr %60, i32 0, i32 1
  %61 = load i64, ptr %n61, align 8
  %add.ptr62 = getelementptr inbounds i8, ptr %59, i64 %61
  %62 = load ptr, ptr %zAppend.addr, align 8
  %63 = load i32, ptr %nAppend, align 4
  %conv63 = sext i32 %63 to i64
  %64 = load ptr, ptr %p.addr, align 8
  %z64 = getelementptr inbounds %struct.DText, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %z64, align 8
  %66 = load ptr, ptr %p.addr, align 8
  %n65 = getelementptr inbounds %struct.DText, ptr %66, i32 0, i32 1
  %67 = load i64, ptr %n65, align 8
  %add.ptr66 = getelementptr inbounds i8, ptr %65, i64 %67
  %68 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr66, i1 false, i1 true, i1 false)
  %call67 = call ptr @__memcpy_chk(ptr noundef %add.ptr62, ptr noundef %62, i64 noundef %conv63, i64 noundef %68) #8
  %69 = load i32, ptr %nAppend, align 4
  %conv68 = sext i32 %69 to i64
  %70 = load ptr, ptr %p.addr, align 8
  %n69 = getelementptr inbounds %struct.DText, ptr %70, i32 0, i32 1
  %71 = load i64, ptr %n69, align 8
  %add70 = add nsw i64 %71, %conv68
  store i64 %add70, ptr %n69, align 8
  %72 = load ptr, ptr %p.addr, align 8
  %z71 = getelementptr inbounds %struct.DText, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %z71, align 8
  %74 = load ptr, ptr %p.addr, align 8
  %n72 = getelementptr inbounds %struct.DText, ptr %74, i32 0, i32 1
  %75 = load i64, ptr %n72, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %73, i64 %75
  store i8 0, ptr %arrayidx73, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.then28, %if.else, %for.end54
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal signext i8 @quoteChar(ptr noundef %zName) #0 {
entry:
  %retval = alloca i8, align 1
  %zName.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %zName.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %call = call i32 @isalpha(i32 noundef %conv) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %zName.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv2, 95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8 34, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %zName.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx4, align 1
  %tobool5 = icmp ne i8 %6, 0
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %zName.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %7, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %call9 = call i32 @isalnum(i32 noundef %conv8) #9
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end18, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %for.body
  %10 = load ptr, ptr %zName.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 %idxprom12
  %12 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %cmp15 = icmp ne i32 %conv14, 95
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true11
  store i8 34, ptr %retval, align 1
  br label %return

if.end18:                                         ; preds = %land.lhs.true11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %zName.addr, align 8
  %15 = load i32, ptr %i, align 4
  %call19 = call i32 @sqlite3_keyword_check(ptr noundef %14, i32 noundef %15)
  %tobool20 = icmp ne i32 %call19, 0
  %16 = zext i1 %tobool20 to i64
  %cond = select i1 %tobool20, i32 34, i32 0
  %conv21 = trunc i32 %cond to i8
  store i8 %conv21, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then17, %if.then
  %17 = load i8, ptr %retval, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeColumnList(ptr noundef %azCol) #0 {
entry:
  %azCol.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %azCol, ptr %azCol.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %azCol.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %azCol.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 %idxprom1
  %5 = load ptr, ptr %arrayidx2, align 8
  call void @sqlite3_free(ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %azCol.addr, align 8
  call void @sqlite3_free(ptr noundef %7)
  ret void
}

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @sqlite3_step(ptr noundef) #2

declare i32 @sqlite3_column_type(ptr noundef, i32 noundef) #2

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) #2

declare double @sqlite3_column_double(ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @output_quoted_escaped_string(ptr noundef %p, ptr noundef %z) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  %zNL = alloca ptr, align 8
  %zCR = alloca ptr, align 8
  %nNL = alloca i32, align 4
  %nCR = alloca i32, align 4
  %zBuf1 = alloca [20 x i8], align 1
  %zBuf2 = alloca [20 x i8], align 1
  store ptr %p, ptr %p.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %z.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  store i8 %2, ptr %c, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %3 = load i8, ptr %c, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 39
  br i1 %cmp3, label %land.lhs.true5, label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %4 = load i8, ptr %c, align 1
  %conv6 = sext i8 %4 to i32
  %cmp7 = icmp ne i32 %conv6, 10
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true5
  %5 = load i8, ptr %c, align 1
  %conv9 = sext i8 %5 to i32
  %cmp10 = icmp ne i32 %conv9, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %for.cond
  %6 = phi i1 [ false, %land.lhs.true5 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp10, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %land.end
  %8 = load i8, ptr %c, align 1
  %conv12 = sext i8 %8 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %9 = load ptr, ptr %p.addr, align 8
  %10 = load ptr, ptr %z.addr, align 8
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %9, ptr noundef @.str.47, ptr noundef %10)
  br label %if.end118

if.else:                                          ; preds = %for.end
  store ptr null, ptr %zNL, align 8
  store ptr null, ptr %zCR, align 8
  store i32 0, ptr %nNL, align 4
  store i32 0, ptr %nCR, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc34, %if.else
  %11 = load ptr, ptr %z.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %11, i64 %idxprom16
  %13 = load i8, ptr %arrayidx17, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %for.body18, label %for.end36

for.body18:                                       ; preds = %for.cond15
  %14 = load ptr, ptr %z.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %14, i64 %idxprom19
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv21, 10
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %for.body18
  %17 = load i32, ptr %nNL, align 4
  %inc25 = add nsw i32 %17, 1
  store i32 %inc25, ptr %nNL, align 4
  br label %if.end

if.end:                                           ; preds = %if.then24, %for.body18
  %18 = load ptr, ptr %z.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %18, i64 %idxprom26
  %20 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %20 to i32
  %cmp29 = icmp eq i32 %conv28, 13
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end
  %21 = load i32, ptr %nCR, align 4
  %inc32 = add nsw i32 %21, 1
  store i32 %inc32, ptr %nCR, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %22 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %22, 1
  store i32 %inc35, ptr %i, align 4
  br label %for.cond15, !llvm.loop !23

for.end36:                                        ; preds = %for.cond15
  %23 = load i32, ptr %nNL, align 4
  %tobool37 = icmp ne i32 %23, 0
  br i1 %tobool37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %for.end36
  %24 = load ptr, ptr %p.addr, align 8
  %xCallback = getelementptr inbounds %struct.DState, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %xCallback, align 8
  %26 = load ptr, ptr %p.addr, align 8
  %pArg = getelementptr inbounds %struct.DState, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pArg, align 8
  %call = call i32 %25(ptr noundef @.str.48, ptr noundef %27)
  %28 = load ptr, ptr %z.addr, align 8
  %arraydecay = getelementptr inbounds [20 x i8], ptr %zBuf1, i64 0, i64 0
  %call39 = call ptr @unused_string(ptr noundef %28, ptr noundef @.str.49, ptr noundef @.str.50, ptr noundef %arraydecay)
  store ptr %call39, ptr %zNL, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.end36
  %29 = load i32, ptr %nCR, align 4
  %tobool41 = icmp ne i32 %29, 0
  br i1 %tobool41, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.end40
  %30 = load ptr, ptr %p.addr, align 8
  %xCallback43 = getelementptr inbounds %struct.DState, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %xCallback43, align 8
  %32 = load ptr, ptr %p.addr, align 8
  %pArg44 = getelementptr inbounds %struct.DState, ptr %32, i32 0, i32 5
  %33 = load ptr, ptr %pArg44, align 8
  %call45 = call i32 %31(ptr noundef @.str.48, ptr noundef %33)
  %34 = load ptr, ptr %z.addr, align 8
  %arraydecay46 = getelementptr inbounds [20 x i8], ptr %zBuf2, i64 0, i64 0
  %call47 = call ptr @unused_string(ptr noundef %34, ptr noundef @.str.51, ptr noundef @.str.52, ptr noundef %arraydecay46)
  store ptr %call47, ptr %zCR, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.end40
  %35 = load ptr, ptr %p.addr, align 8
  %xCallback49 = getelementptr inbounds %struct.DState, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %xCallback49, align 8
  %37 = load ptr, ptr %p.addr, align 8
  %pArg50 = getelementptr inbounds %struct.DState, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %pArg50, align 8
  %call51 = call i32 %36(ptr noundef @.str.38, ptr noundef %38)
  br label %while.cond

while.cond:                                       ; preds = %if.end105, %if.then101, %if.then88, %if.end48
  %39 = load ptr, ptr %z.addr, align 8
  %40 = load i8, ptr %39, align 1
  %tobool52 = icmp ne i8 %40, 0
  br i1 %tobool52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc73, %while.body
  %41 = load ptr, ptr %z.addr, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %42 to i64
  %arrayidx55 = getelementptr inbounds i8, ptr %41, i64 %idxprom54
  %43 = load i8, ptr %arrayidx55, align 1
  store i8 %43, ptr %c, align 1
  %conv56 = sext i8 %43 to i32
  %cmp57 = icmp ne i32 %conv56, 0
  br i1 %cmp57, label %land.lhs.true59, label %land.end71

land.lhs.true59:                                  ; preds = %for.cond53
  %44 = load i8, ptr %c, align 1
  %conv60 = sext i8 %44 to i32
  %cmp61 = icmp ne i32 %conv60, 10
  br i1 %cmp61, label %land.lhs.true63, label %land.end71

land.lhs.true63:                                  ; preds = %land.lhs.true59
  %45 = load i8, ptr %c, align 1
  %conv64 = sext i8 %45 to i32
  %cmp65 = icmp ne i32 %conv64, 13
  br i1 %cmp65, label %land.rhs67, label %land.end71

land.rhs67:                                       ; preds = %land.lhs.true63
  %46 = load i8, ptr %c, align 1
  %conv68 = sext i8 %46 to i32
  %cmp69 = icmp ne i32 %conv68, 39
  br label %land.end71

land.end71:                                       ; preds = %land.rhs67, %land.lhs.true63, %land.lhs.true59, %for.cond53
  %47 = phi i1 [ false, %land.lhs.true63 ], [ false, %land.lhs.true59 ], [ false, %for.cond53 ], [ %cmp69, %land.rhs67 ]
  br i1 %47, label %for.body72, label %for.end75

for.body72:                                       ; preds = %land.end71
  br label %for.inc73

for.inc73:                                        ; preds = %for.body72
  %48 = load i32, ptr %i, align 4
  %inc74 = add nsw i32 %48, 1
  store i32 %inc74, ptr %i, align 4
  br label %for.cond53, !llvm.loop !24

for.end75:                                        ; preds = %land.end71
  %49 = load i8, ptr %c, align 1
  %conv76 = sext i8 %49 to i32
  %cmp77 = icmp eq i32 %conv76, 39
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %for.end75
  %50 = load i32, ptr %i, align 4
  %inc80 = add nsw i32 %50, 1
  store i32 %inc80, ptr %i, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %for.end75
  %51 = load i32, ptr %i, align 4
  %tobool82 = icmp ne i32 %51, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end81
  %52 = load ptr, ptr %p.addr, align 8
  %53 = load i32, ptr %i, align 4
  %54 = load ptr, ptr %z.addr, align 8
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %52, ptr noundef @.str.53, i32 noundef %53, ptr noundef %54)
  %55 = load i32, ptr %i, align 4
  %56 = load ptr, ptr %z.addr, align 8
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, ptr %56, i64 %idx.ext
  store ptr %add.ptr, ptr %z.addr, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end81
  %57 = load i8, ptr %c, align 1
  %conv85 = sext i8 %57 to i32
  %cmp86 = icmp eq i32 %conv85, 39
  br i1 %cmp86, label %if.then88, label %if.end92

if.then88:                                        ; preds = %if.end84
  %58 = load ptr, ptr %p.addr, align 8
  %xCallback89 = getelementptr inbounds %struct.DState, ptr %58, i32 0, i32 4
  %59 = load ptr, ptr %xCallback89, align 8
  %60 = load ptr, ptr %p.addr, align 8
  %pArg90 = getelementptr inbounds %struct.DState, ptr %60, i32 0, i32 5
  %61 = load ptr, ptr %pArg90, align 8
  %call91 = call i32 %59(ptr noundef @.str.38, ptr noundef %61)
  br label %while.cond, !llvm.loop !25

if.end92:                                         ; preds = %if.end84
  %62 = load i8, ptr %c, align 1
  %conv93 = sext i8 %62 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end92
  br label %while.end

if.end97:                                         ; preds = %if.end92
  %63 = load ptr, ptr %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr, ptr %z.addr, align 8
  %64 = load i8, ptr %c, align 1
  %conv98 = sext i8 %64 to i32
  %cmp99 = icmp eq i32 %conv98, 10
  br i1 %cmp99, label %if.then101, label %if.end105

if.then101:                                       ; preds = %if.end97
  %65 = load ptr, ptr %p.addr, align 8
  %xCallback102 = getelementptr inbounds %struct.DState, ptr %65, i32 0, i32 4
  %66 = load ptr, ptr %xCallback102, align 8
  %67 = load ptr, ptr %zNL, align 8
  %68 = load ptr, ptr %p.addr, align 8
  %pArg103 = getelementptr inbounds %struct.DState, ptr %68, i32 0, i32 5
  %69 = load ptr, ptr %pArg103, align 8
  %call104 = call i32 %66(ptr noundef %67, ptr noundef %69)
  br label %while.cond, !llvm.loop !25

if.end105:                                        ; preds = %if.end97
  %70 = load ptr, ptr %p.addr, align 8
  %xCallback106 = getelementptr inbounds %struct.DState, ptr %70, i32 0, i32 4
  %71 = load ptr, ptr %xCallback106, align 8
  %72 = load ptr, ptr %zCR, align 8
  %73 = load ptr, ptr %p.addr, align 8
  %pArg107 = getelementptr inbounds %struct.DState, ptr %73, i32 0, i32 5
  %74 = load ptr, ptr %pArg107, align 8
  %call108 = call i32 %71(ptr noundef %72, ptr noundef %74)
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %if.then96, %while.cond
  %75 = load ptr, ptr %p.addr, align 8
  %xCallback109 = getelementptr inbounds %struct.DState, ptr %75, i32 0, i32 4
  %76 = load ptr, ptr %xCallback109, align 8
  %77 = load ptr, ptr %p.addr, align 8
  %pArg110 = getelementptr inbounds %struct.DState, ptr %77, i32 0, i32 5
  %78 = load ptr, ptr %pArg110, align 8
  %call111 = call i32 %76(ptr noundef @.str.38, ptr noundef %78)
  %79 = load i32, ptr %nCR, align 4
  %tobool112 = icmp ne i32 %79, 0
  br i1 %tobool112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %while.end
  %80 = load ptr, ptr %p.addr, align 8
  %81 = load ptr, ptr %zCR, align 8
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %80, ptr noundef @.str.54, ptr noundef %81)
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %while.end
  %82 = load i32, ptr %nNL, align 4
  %tobool115 = icmp ne i32 %82, 0
  br i1 %tobool115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end114
  %83 = load ptr, ptr %p.addr, align 8
  %84 = load ptr, ptr %zNL, align 8
  call void (ptr, ptr, ...) @output_formatted(ptr noundef %83, ptr noundef @.str.55, ptr noundef %84)
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end114
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then
  ret void
}

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #2

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) #2

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) #2

declare i32 @sqlite3_finalize(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeText(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %z = getelementptr inbounds %struct.DText, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %z, align 8
  call void @sqlite3_free(ptr noundef %1)
  %2 = load ptr, ptr %p.addr, align 8
  call void @initText(ptr noundef %2)
  ret void
}

declare ptr @sqlite3_mprintf(ptr noundef, ...) #2

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #2

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) #2

declare i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #2

declare i32 @sqlite3_table_column_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @isalpha(i32 noundef) #7

; Function Attrs: nounwind readonly willreturn
declare i32 @isalnum(i32 noundef) #7

declare i32 @sqlite3_keyword_check(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @unused_string(ptr noundef %z, ptr noundef %zA, ptr noundef %zB, ptr noundef %zBuf) #0 {
entry:
  %retval = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %zA.addr = alloca ptr, align 8
  %zB.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %zA, ptr %zA.addr, align 8
  store ptr %zB, ptr %zB.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %z.addr, align 8
  %1 = load ptr, ptr %zA.addr, align 8
  %call = call ptr @strstr(ptr noundef %0, ptr noundef %1)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %zA.addr, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %z.addr, align 8
  %4 = load ptr, ptr %zB.addr, align 8
  %call1 = call ptr @strstr(ptr noundef %3, ptr noundef %4)
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %zB.addr, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end4
  %6 = load ptr, ptr %zBuf.addr, align 8
  %7 = load ptr, ptr %zA.addr, align 8
  %8 = load i32, ptr %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %i, align 4
  %call5 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 20, ptr noundef %6, ptr noundef @.str.56, ptr noundef %7, i32 noundef %8)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load ptr, ptr %z.addr, align 8
  %10 = load ptr, ptr %zBuf.addr, align 8
  %call6 = call ptr @strstr(ptr noundef %9, ptr noundef %10)
  %cmp7 = icmp ne ptr %call6, null
  br i1 %cmp7, label %do.body, label %do.end, !llvm.loop !26

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %zBuf.addr, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %do.end, %if.then3, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

declare ptr @strstr(ptr noundef, ptr noundef) #2

declare ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @sqlite3_errmsg(ptr noundef) #2

declare i32 @sqlite3_column_count(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind }
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
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
