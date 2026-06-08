; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/diskused.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/diskused.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.DiskUsed = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"diskused\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot analyze \22temp\22\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"SELECT 1 FROM pragma_database_list WHERE name=%Q COLLATE nocase\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no such database\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"diskused%016llx%016llx\00", align 1
@.str.7 = private unnamed_addr constant [1073 x i8] c"CREATE TABLE temp.%s(\0A   name text,                -- A table or index\0A   tblname text,             -- Table that owns name\0A   is_index boolean,         -- TRUE if it is an index\0A   is_without_rowid boolean, -- TRUE if WITHOUT ROWID table\0A   nentry int,               -- Number of entries in the BTree\0A   leaf_entries int,         -- Number of leaf entries\0A   depth int,                -- Depth of the b-tree\0A   payload int,              -- Total data stored in this table/index\0A   ovfl_payload int,         -- Total data stored on overflow pages\0A   ovfl_cnt int,             -- Number of entries that use overflow\0A   mx_payload int,           -- Maximum payload size\0A   int_pages int,            -- Interior pages used\0A   leaf_pages int,           -- Leaf pages used\0A   ovfl_pages int,           -- Overflow pages used\0A   int_unused int,           -- Unused bytes on interior pages\0A   leaf_unused int,          -- Unused bytes on primary pages\0A   ovfl_unused int,          -- Unused bytes on overflow pages\0A   int_entries int           -- Btree cells on internal pages\0A);\00", align 1
@.str.8 = private unnamed_addr constant [1168 x i8] c"WITH\0A  allidx(idxname) AS (\0A    SELECT name FROM \22%w\22.sqlite_schema WHERE type='index'\0A  ),\0A  allobj(allname,tblname,isidx,isworowid) AS (\0A    SELECT 'sqlite_schema',\0A           'sqlite_schema',\0A           0,\0A           0\0A    UNION ALL\0A    SELECT name,\0A           tbl_name,\0A           type='index',\0A           EXISTS(SELECT 1\0A                    FROM pragma_index_list(sqlite_schema.name,%Q)\0A                   WHERE pragma_index_list.origin='pk'\0A                     AND pragma_index_list.name NOT IN allidx)\0A      FROM \22%w\22.sqlite_schema\0A  )\0AINSERT INTO temp.%s\0A  SELECT\0A    allname,\0A    tblname,\0A    isidx,\0A    isworowid,\0A    sum(ncell),\0A    sum((pagetype='leaf')*ncell),\0A    max((length(if(path GLOB '*+*','',path))+3)/4),\0A    sum(payload),\0A    sum((pagetype='overflow')*payload),\0A    sum(path GLOB '*+000000'),\0A    max(mx_payload),\0A    sum(pagetype='internal'),\0A    sum(pagetype='leaf'),\0A    sum(pagetype='overflow'),\0A    sum((pagetype='internal')*unused),\0A    sum((pagetype='leaf')*unused),\0A    sum((pagetype='overflow')*unused),\0A    sum(if(pagetype='internal',ncell))\0A  FROM allobj CROSS JOIN dbstat(%Q) \0A  WHERE dbstat.name=allobj.allname\0A  GROUP BY allname;\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"PRAGMA \22%w\22.page_count\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"empty database\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Database storage utilization report\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"PRAGMA \22%w\22.page_size\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Page size in bytes\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Pages in the database\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"SELECT sum(leaf_pages+int_pages+ovfl_pages) FROM temp.%s\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Pages that store data\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"%-11lld \00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"PRAGMA \22%w\22.freelist_count\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Pages on the freelist\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"PRAGMA \22%w\22.auto_vacuum\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Pages of auto-vacuum overhead\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"SELECT count(*)+1 FROM \22%w\22.sqlite_schema WHERE type='table'\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Number of tables\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"SELECT count(*) FROM \22%w\22.pragma_table_list WHERE wr\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Number of WITHOUT ROWID tables\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Number of rowid tables\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"SELECT count(*) FROM \22%w\22.sqlite_schema WHERE type='index'\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Number of indexes\00", align 1
@.str.30 = private unnamed_addr constant [94 x i8] c"SELECT count(*) FROM \22%w\22.sqlite_schema WHERE name GLOB 'sqlite_autoindex_*' AND type='index'\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Number of defined indexes\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Number of implied indexes\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Size of the database in bytes\00", align 1
@.str.34 = private unnamed_addr constant [86 x i8] c"SELECT sum(payload) FROM temp.%s WHERE NOT is_index AND name NOT LIKE 'sqlite_schema'\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Bytes of payload\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"Page counts for all tables with their indexes\00", align 1
@.str.37 = private unnamed_addr constant [142 x i8] c"SELECT upper(tblname),\0A       sum(int_pages+leaf_pages+ovfl_pages)\0A  FROM temp.%s\0A WHERE tblname IS NOT NULL\0A GROUP BY 1\0A ORDER BY 2 DESC, 1;\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"Page counts for all tables and indexes separately\00", align 1
@.str.39 = private unnamed_addr constant [136 x i8] c"SELECT upper(name),\0A       sum(int_pages+leaf_pages+ovfl_pages)\0A  FROM temp.%s\0A WHERE name IS NOT NULL\0A GROUP BY 1\0A ORDER BY 2 DESC, 1;\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"All tables and indexes\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"All tables\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"NOT is_index\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"All WITHOUT ROWID tables\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"is_without_rowid\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"All rowid tables\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"NOT is_without_rowid AND NOT is_index\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"All indexes\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"is_index\00", align 1
@.str.50 = private unnamed_addr constant [81 x i8] c"SELECT upper(tblname), tblname, sum(is_index) FROM temp.%s GROUP BY 1 ORDER BY 1\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Table %s\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"name=%Q\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"Table %s and all its indexes\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"tblname=%Q\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"Table %s w/o any indexes\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"All indexes of table %s\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"tblname=%Q AND is_index\00", align 1
@.str.58 = private unnamed_addr constant [68 x i8] c"SELECT name, upper(name) FROM temp.%s WHERE is_index AND tblname=%Q\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"Index %s\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"Raw data used to generate this report\00", align 1
@.str.61 = private unnamed_addr constant [135 x i8] c"The following SQL will create a table named \22space_used\22 which\0Acontains most of the information used to generate the report above.\0A*/\0A\00", align 1
@.str.62 = private unnamed_addr constant [1093 x i8] c"BEGIN;\0ACREATE TABLE space_used(\0A   name text,                -- A table or index\0A   tblname text,             -- Table that owns name\0A   is_index boolean,         -- TRUE if it is an index\0A   is_without_rowid boolean, -- TRUE if WITHOUT ROWID table\0A   nentry int,               -- Number of entries in the BTree\0A   leaf_entries int,         -- Number of leaf entries\0A   depth int,                -- Depth of the b-tree\0A   payload int,              -- Total data in this table/index\0A   ovfl_payload int,         -- Total data on overflow pages\0A   ovfl_cnt int,             -- Entries that use overflow\0A   mx_payload int,           -- Maximum payload size\0A   int_pages int,            -- Interior pages used\0A   leaf_pages int,           -- Leaf pages used\0A   ovfl_pages int,           -- Overflow pages used\0A   int_unused int,           -- Unused bytes on interior pages\0A   leaf_unused int,          -- Unused bytes on primary pages\0A   ovfl_unused int,          -- Unused bytes on overflow pages\0A   int_entries int           -- B-tree entries on internal pages\0A);\0AINSERT INTO space_used VALUES\0A\00", align 1
@.str.63 = private unnamed_addr constant [267 x i8] c"SELECT quote(name), quote(tblname),\0A       is_index, is_without_rowid, nentry, leaf_entries,\0A       depth, payload, ovfl_payload, ovfl_cnt, mx_payload,\0A       int_pages, leaf_pages, ovfl_pages, int_unused,\0A       leaf_unused, ovfl_unused, int_entries\0A  FROM temp.%s;\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.65 = private unnamed_addr constant [89 x i8] c" (%s,%s,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld)\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"SQL run-time error: %s\0ASQL: %s\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c";\0ACOMMIT;\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"DROP TABLE temp.%s;\00", align 1
@.str.69 = private unnamed_addr constant [40 x i8] c"SQL run-time error: %s\0AOriginal SQL: %s\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"SQL parse error: %s\0AOriginal SQL: %s\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"\0A*\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"%s** %z\0A\0A\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"%s** %z %.*c\0A\0A\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"%s %z\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"%s%.*c %z\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"%.3g\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"%.2g\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"%\0A\00", align 1
@.str.81 = private unnamed_addr constant [324 x i8] c"SELECT\0A  sum(if(is_without_rowid OR is_index,nentry,leaf_entries)),\0A  sum(payload),\0A  sum(ovfl_payload),\0A  max(mx_payload),\0A  sum(ovfl_cnt),\0A  sum(leaf_pages),\0A  sum(int_pages),\0A  sum(ovfl_pages),\0A  sum(leaf_unused),\0A  sum(int_unused),\0A  sum(ovfl_unused),\0A  max(depth),\0A  count(*),\0A  sum(int_entries)\0A FROM temp.%s WHERE %s\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"Percentage of total database\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"%.3g%%\0A\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"Number of entries\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"Bytes of storage consumed\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"Bytes of payload in overflow\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"Bytes of metadata\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"B-tree depth\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"Average fanout\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"%.1f\0A\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"Average payload per entry\00", align 1
@.str.93 = private unnamed_addr constant [31 x i8] c"Average unused bytes per entry\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"Average metadata per entry\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"Maximum single-entry payload\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"Entries that use overflow\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"Index pages used\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"Primary pages used\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"Overflow pages used\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"Total pages used\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"Unused bytes on index pages\00", align 1
@.str.102 = private unnamed_addr constant [30 x i8] c"Unused bytes on primary pages\00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"Unused bytes on overflow pages\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"Unused bytes on all pages\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_diskused_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str, i32 noundef 1, i32 noundef 2097153, ptr noundef null, ptr noundef @diskusedFunc, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  ret i32 %3
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @diskusedFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pStmt = alloca ptr, align 8
  %n = alloca i32, align 4
  %ii = alloca i64, align 8
  %pgsz = alloca i64, align 8
  %nPage = alloca i64, align 8
  %nPageInUse = alloca i64, align 8
  %nFreeList = alloca i64, align 8
  %nIndex = alloca i64, align 8
  %nWORowid = alloca i64, align 8
  %s = alloca %struct.DiskUsed, align 8
  %r = alloca [2 x i64], align 8
  %rPtrsPerPage = alloca double, align 8
  %rAvPage = alloca double, align 8
  %nn = alloca i64, align 8
  %nn159 = alloca i64, align 8
  %zUpper = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %nSubIndex = alloca i32, align 4
  %zTitle = alloca ptr, align 8
  %zWhere = alloca ptr, align 8
  %pS2 = alloca ptr, align 8
  %zTitle219 = alloca ptr, align 8
  %zWhere221 = alloca ptr, align 8
  %zU = alloca ptr, align 8
  %zN = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %s, i8 0, i64 40, i1 false)
  %1 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_context_db_handle(ptr noundef %1)
  %db = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 0
  store ptr %call, ptr %db, align 8
  %2 = load ptr, ptr %context.addr, align 8
  %context1 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 1
  store ptr %2, ptr %context1, align 8
  %call2 = call ptr @sqlite3_str_new(ptr noundef null)
  %pOut = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  store ptr %call2, ptr %pOut, align 8
  %pOut3 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  %3 = load ptr, ptr %pOut3, align 8
  %call4 = call i32 @sqlite3_str_errcode(ptr noundef %3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %s, ptr noundef null)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8
  %call5 = call ptr @sqlite3_value_text(ptr noundef %5)
  %zSchema = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  store ptr %call5, ptr %zSchema, align 8
  %zSchema6 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %6 = load ptr, ptr %zSchema6, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %zSchema8 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  store ptr @.str.1, ptr %zSchema8, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  %zSchema9 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %7 = load ptr, ptr %zSchema9, align 8
  %call10 = call i32 @sqlite3_strlike(ptr noundef @.str.2, ptr noundef %7, i32 noundef 0)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.else
  call void @diskusedReset(ptr noundef %s)
  %8 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %8, ptr noundef @.str.3, i32 noundef -1, ptr noundef null)
  br label %return

if.end13:                                         ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then7
  store i64 0, ptr %ii, align 8
  %zSchema15 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %9 = load ptr, ptr %zSchema15, align 8
  %call16 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %ii, ptr noundef @.str.4, ptr noundef %9)
  store i32 %call16, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %tobool17 = icmp ne i32 %10, 0
  br i1 %tobool17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %11 = load i64, ptr %ii, align 8
  %cmp18 = icmp eq i64 %11, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false, %if.end14
  call void @diskusedReset(ptr noundef %s)
  %12 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %12, ptr noundef @.str.5, i32 noundef -1, ptr noundef null)
  br label %return

if.end20:                                         ; preds = %lor.lhs.false
  call void @sqlite3_randomness(i32 noundef 16, ptr noundef %r)
  %arrayidx21 = getelementptr inbounds [2 x i64], ptr %r, i64 0, i64 0
  %13 = load i64, ptr %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds [2 x i64], ptr %r, i64 0, i64 1
  %14 = load i64, ptr %arrayidx22, align 8
  %call23 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.6, i64 noundef %13, i64 noundef %14)
  %zSU = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  store ptr %call23, ptr %zSU, align 8
  %zSU24 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %15 = load ptr, ptr %zSU24, align 8
  %cmp25 = icmp eq ptr %15, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end20
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %s, ptr noundef null)
  br label %return

if.end27:                                         ; preds = %if.end20
  %zSU28 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %16 = load ptr, ptr %zSU28, align 8
  %call29 = call i32 (ptr, ptr, ...) @diskusedSql(ptr noundef %s, ptr noundef @.str.7, ptr noundef %16)
  store i32 %call29, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %tobool30 = icmp ne i32 %17, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  br label %return

if.end32:                                         ; preds = %if.end27
  %zSchema33 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %18 = load ptr, ptr %zSchema33, align 8
  %zSchema34 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %19 = load ptr, ptr %zSchema34, align 8
  %zSchema35 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %20 = load ptr, ptr %zSchema35, align 8
  %zSU36 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %21 = load ptr, ptr %zSU36, align 8
  %zSchema37 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %22 = load ptr, ptr %zSchema37, align 8
  %call38 = call i32 (ptr, ptr, ...) @diskusedSql(ptr noundef %s, ptr noundef @.str.8, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22)
  store i32 %call38, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %tobool39 = icmp ne i32 %23, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end32
  br label %return

if.end41:                                         ; preds = %if.end32
  store i64 0, ptr %nPage, align 8
  %zSchema42 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %24 = load ptr, ptr %zSchema42, align 8
  %call43 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %nPage, ptr noundef @.str.9, ptr noundef %24)
  store i32 %call43, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %tobool44 = icmp ne i32 %25, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  br label %return

if.end46:                                         ; preds = %if.end41
  %26 = load i64, ptr %nPage, align 8
  %cmp47 = icmp sle i64 %26, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end46
  call void @diskusedReset(ptr noundef %s)
  %27 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %27, ptr noundef @.str.10, i32 noundef -1, ptr noundef null)
  br label %return

if.end49:                                         ; preds = %if.end46
  call void (ptr, ptr, ...) @diskusedTitle(ptr noundef %s, ptr noundef @.str.11)
  store i64 0, ptr %pgsz, align 8
  %zSchema50 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %28 = load ptr, ptr %zSchema50, align 8
  %call51 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %pgsz, ptr noundef @.str.12, ptr noundef %28)
  store i32 %call51, ptr %rc, align 4
  %29 = load i32, ptr %rc, align 4
  %tobool52 = icmp ne i32 %29, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end49
  br label %return

if.end54:                                         ; preds = %if.end49
  %30 = load i64, ptr %pgsz, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.13, ptr noundef @.str.14, i64 noundef %30)
  %31 = load i64, ptr %nPage, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.15, ptr noundef @.str.14, i64 noundef %31)
  store i64 0, ptr %nPageInUse, align 8
  %zSU55 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %32 = load ptr, ptr %zSU55, align 8
  %call56 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %nPageInUse, ptr noundef @.str.16, ptr noundef %32)
  store i32 %call56, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %tobool57 = icmp ne i32 %33, 0
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  br label %return

if.end59:                                         ; preds = %if.end54
  %34 = load i64, ptr %nPageInUse, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.17, ptr noundef @.str.18, i64 noundef %34)
  %35 = load i64, ptr %nPageInUse, align 8
  %conv = sitofp i64 %35 to double
  %mul = fmul double %conv, 1.000000e+02
  %36 = load i64, ptr %nPage, align 8
  %conv60 = sitofp i64 %36 to double
  %div = fdiv double %mul, %conv60
  call void @diskusedPercent(ptr noundef %s, double noundef %div)
  store i64 0, ptr %nFreeList, align 8
  %zSchema61 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %37 = load ptr, ptr %zSchema61, align 8
  %call62 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %nFreeList, ptr noundef @.str.19, ptr noundef %37)
  store i32 %call62, ptr %rc, align 4
  %38 = load i32, ptr %rc, align 4
  %tobool63 = icmp ne i32 %38, 0
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end59
  br label %return

if.end65:                                         ; preds = %if.end59
  %39 = load i64, ptr %nFreeList, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.20, ptr noundef @.str.18, i64 noundef %39)
  %40 = load i64, ptr %nFreeList, align 8
  %conv66 = sitofp i64 %40 to double
  %mul67 = fmul double %conv66, 1.000000e+02
  %41 = load i64, ptr %nPage, align 8
  %conv68 = sitofp i64 %41 to double
  %div69 = fdiv double %mul67, %conv68
  call void @diskusedPercent(ptr noundef %s, double noundef %div69)
  store i64 0, ptr %ii, align 8
  %zSchema70 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %42 = load ptr, ptr %zSchema70, align 8
  %call71 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %ii, ptr noundef @.str.21, ptr noundef %42)
  store i32 %call71, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %tobool72 = icmp ne i32 %43, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end65
  br label %return

if.end74:                                         ; preds = %if.end65
  %44 = load i64, ptr %ii, align 8
  %cmp75 = icmp eq i64 %44, 0
  br i1 %cmp75, label %if.then80, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %if.end74
  %45 = load i64, ptr %nPage, align 8
  %cmp78 = icmp sle i64 %45, 1
  br i1 %cmp78, label %if.then80, label %if.else81

if.then80:                                        ; preds = %lor.lhs.false77, %if.end74
  store i64 0, ptr %ii, align 8
  br label %if.end87

if.else81:                                        ; preds = %lor.lhs.false77
  %46 = load i64, ptr %pgsz, align 8
  %div82 = sdiv i64 %46, 5
  %conv83 = sitofp i64 %div82 to double
  store double %conv83, ptr %rPtrsPerPage, align 8
  %47 = load i64, ptr %nPage, align 8
  %conv84 = sitofp i64 %47 to double
  %sub = fsub double %conv84, 1.000000e+00
  %48 = load double, ptr %rPtrsPerPage, align 8
  %add = fadd double %48, 1.000000e+00
  %div85 = fdiv double %sub, %add
  store double %div85, ptr %rAvPage, align 8
  %49 = load double, ptr %rAvPage, align 8
  %50 = call double @llvm.ceil.f64(double %49)
  %conv86 = fptosi double %50 to i64
  store i64 %conv86, ptr %ii, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else81, %if.then80
  %51 = load i64, ptr %ii, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.22, ptr noundef @.str.18, i64 noundef %51)
  %52 = load i64, ptr %ii, align 8
  %conv88 = sitofp i64 %52 to double
  %mul89 = fmul double %conv88, 1.000000e+02
  %53 = load i64, ptr %nPage, align 8
  %conv90 = sitofp i64 %53 to double
  %div91 = fdiv double %mul89, %conv90
  call void @diskusedPercent(ptr noundef %s, double noundef %div91)
  store i64 0, ptr %ii, align 8
  %zSchema92 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %54 = load ptr, ptr %zSchema92, align 8
  %call93 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %ii, ptr noundef @.str.23, ptr noundef %54)
  store i32 %call93, ptr %rc, align 4
  %55 = load i32, ptr %rc, align 4
  %tobool94 = icmp ne i32 %55, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end87
  br label %return

if.end96:                                         ; preds = %if.end87
  %56 = load i64, ptr %ii, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.24, ptr noundef @.str.14, i64 noundef %56)
  store i64 0, ptr %nWORowid, align 8
  %zSchema97 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %57 = load ptr, ptr %zSchema97, align 8
  %call98 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %nWORowid, ptr noundef @.str.25, ptr noundef %57)
  store i32 %call98, ptr %rc, align 4
  %58 = load i32, ptr %rc, align 4
  %tobool99 = icmp ne i32 %58, 0
  br i1 %tobool99, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end96
  br label %return

if.end101:                                        ; preds = %if.end96
  %59 = load i64, ptr %nWORowid, align 8
  %cmp102 = icmp sgt i64 %59, 0
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.end101
  %60 = load i64, ptr %nWORowid, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.26, ptr noundef @.str.14, i64 noundef %60)
  %61 = load i64, ptr %ii, align 8
  %62 = load i64, ptr %nWORowid, align 8
  %sub105 = sub nsw i64 %61, %62
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.27, ptr noundef @.str.14, i64 noundef %sub105)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end101
  store i64 0, ptr %nIndex, align 8
  %zSchema107 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %63 = load ptr, ptr %zSchema107, align 8
  %call108 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %nIndex, ptr noundef @.str.28, ptr noundef %63)
  store i32 %call108, ptr %rc, align 4
  %64 = load i32, ptr %rc, align 4
  %tobool109 = icmp ne i32 %64, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end106
  br label %return

if.end111:                                        ; preds = %if.end106
  %65 = load i64, ptr %nIndex, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.29, ptr noundef @.str.14, i64 noundef %65)
  store i64 0, ptr %ii, align 8
  %zSchema112 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 4
  %66 = load ptr, ptr %zSchema112, align 8
  %call113 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %ii, ptr noundef @.str.30, ptr noundef %66)
  store i32 %call113, ptr %rc, align 4
  %67 = load i32, ptr %rc, align 4
  %tobool114 = icmp ne i32 %67, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end111
  br label %return

if.end116:                                        ; preds = %if.end111
  %68 = load i64, ptr %nIndex, align 8
  %69 = load i64, ptr %ii, align 8
  %sub117 = sub nsw i64 %68, %69
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.31, ptr noundef @.str.14, i64 noundef %sub117)
  %70 = load i64, ptr %ii, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.32, ptr noundef @.str.14, i64 noundef %70)
  %71 = load i64, ptr %pgsz, align 8
  %72 = load i64, ptr %nPage, align 8
  %mul118 = mul nsw i64 %71, %72
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.33, ptr noundef @.str.14, i64 noundef %mul118)
  store i64 0, ptr %ii, align 8
  %zSU119 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %73 = load ptr, ptr %zSU119, align 8
  %call120 = call i32 (ptr, ptr, ptr, ...) @diskusedSqlInt(ptr noundef %s, ptr noundef %ii, ptr noundef @.str.34, ptr noundef %73)
  store i32 %call120, ptr %rc, align 4
  %74 = load i32, ptr %rc, align 4
  %tobool121 = icmp ne i32 %74, 0
  br i1 %tobool121, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.end116
  br label %return

if.end123:                                        ; preds = %if.end116
  %75 = load i64, ptr %ii, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef @.str.35, ptr noundef @.str.18, i64 noundef %75)
  %76 = load i64, ptr %ii, align 8
  %conv124 = sitofp i64 %76 to double
  %mul125 = fmul double %conv124, 1.000000e+02
  %77 = load i64, ptr %pgsz, align 8
  %78 = load i64, ptr %nPage, align 8
  %mul126 = mul nsw i64 %77, %78
  %conv127 = sitofp i64 %mul126 to double
  %div128 = fdiv double %mul125, %conv127
  call void @diskusedPercent(ptr noundef %s, double noundef %div128)
  call void (ptr, ptr, ...) @diskusedTitle(ptr noundef %s, ptr noundef @.str.36)
  %zSU129 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %79 = load ptr, ptr %zSU129, align 8
  %call130 = call ptr (ptr, ptr, ...) @diskusedPrepare(ptr noundef %s, ptr noundef @.str.37, ptr noundef %79)
  store ptr %call130, ptr %pStmt, align 8
  %80 = load ptr, ptr %pStmt, align 8
  %cmp131 = icmp eq ptr %80, null
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end123
  br label %return

if.end134:                                        ; preds = %if.end123
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end134
  %81 = load ptr, ptr %pStmt, align 8
  %call135 = call i32 @sqlite3_step(ptr noundef %81)
  store i32 %call135, ptr %rc, align 4
  %cmp136 = icmp eq i32 %call135, 100
  br i1 %cmp136, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %82 = load ptr, ptr %pStmt, align 8
  %call138 = call i64 @sqlite3_column_int64(ptr noundef %82, i32 noundef 1)
  store i64 %call138, ptr %nn, align 8
  %83 = load ptr, ptr %pStmt, align 8
  %call139 = call ptr @sqlite3_column_text(ptr noundef %83, i32 noundef 0)
  %84 = load i64, ptr %nn, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef %call139, ptr noundef @.str.18, i64 noundef %84)
  %85 = load i64, ptr %nn, align 8
  %conv140 = sitofp i64 %85 to double
  %mul141 = fmul double %conv140, 1.000000e+02
  %86 = load i64, ptr %nPage, align 8
  %conv142 = sitofp i64 %86 to double
  %div143 = fdiv double %mul141, %conv142
  call void @diskusedPercent(ptr noundef %s, double noundef %div143)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %87 = load i32, ptr %rc, align 4
  %88 = load ptr, ptr %pStmt, align 8
  %call144 = call i32 @diskusedStmtFinish(ptr noundef %s, i32 noundef %87, ptr noundef %88)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.then146, label %if.end147

if.then146:                                       ; preds = %while.end
  br label %return

if.end147:                                        ; preds = %while.end
  call void (ptr, ptr, ...) @diskusedTitle(ptr noundef %s, ptr noundef @.str.38)
  %zSU148 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %89 = load ptr, ptr %zSU148, align 8
  %call149 = call ptr (ptr, ptr, ...) @diskusedPrepare(ptr noundef %s, ptr noundef @.str.39, ptr noundef %89)
  store ptr %call149, ptr %pStmt, align 8
  %90 = load ptr, ptr %pStmt, align 8
  %cmp150 = icmp eq ptr %90, null
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.end147
  br label %return

if.end153:                                        ; preds = %if.end147
  br label %while.cond154

while.cond154:                                    ; preds = %while.body158, %if.end153
  %91 = load ptr, ptr %pStmt, align 8
  %call155 = call i32 @sqlite3_step(ptr noundef %91)
  store i32 %call155, ptr %rc, align 4
  %cmp156 = icmp eq i32 %call155, 100
  br i1 %cmp156, label %while.body158, label %while.end166

while.body158:                                    ; preds = %while.cond154
  %92 = load ptr, ptr %pStmt, align 8
  %call160 = call i64 @sqlite3_column_int64(ptr noundef %92, i32 noundef 1)
  store i64 %call160, ptr %nn159, align 8
  %93 = load ptr, ptr %pStmt, align 8
  %call161 = call ptr @sqlite3_column_text(ptr noundef %93, i32 noundef 0)
  %94 = load i64, ptr %nn159, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %s, ptr noundef %call161, ptr noundef @.str.18, i64 noundef %94)
  %95 = load i64, ptr %nn159, align 8
  %conv162 = sitofp i64 %95 to double
  %mul163 = fmul double %conv162, 1.000000e+02
  %96 = load i64, ptr %nPage, align 8
  %conv164 = sitofp i64 %96 to double
  %div165 = fdiv double %mul163, %conv164
  call void @diskusedPercent(ptr noundef %s, double noundef %div165)
  br label %while.cond154, !llvm.loop !8

while.end166:                                     ; preds = %while.cond154
  %97 = load i32, ptr %rc, align 4
  %98 = load ptr, ptr %pStmt, align 8
  %call167 = call i32 @diskusedStmtFinish(ptr noundef %s, i32 noundef %97, ptr noundef %98)
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %while.end166
  br label %return

if.end170:                                        ; preds = %while.end166
  %99 = load i64, ptr %pgsz, align 8
  %100 = load i64, ptr %nPage, align 8
  %call171 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef @.str.40, ptr noundef @.str.41, i64 noundef %99, i64 noundef %100)
  store i32 %call171, ptr %rc, align 4
  %101 = load i32, ptr %rc, align 4
  %tobool172 = icmp ne i32 %101, 0
  br i1 %tobool172, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.end170
  br label %return

if.end174:                                        ; preds = %if.end170
  %102 = load i64, ptr %pgsz, align 8
  %103 = load i64, ptr %nPage, align 8
  %call175 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef @.str.42, ptr noundef @.str.43, i64 noundef %102, i64 noundef %103)
  store i32 %call175, ptr %rc, align 4
  %104 = load i32, ptr %rc, align 4
  %tobool176 = icmp ne i32 %104, 0
  br i1 %tobool176, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.end174
  br label %return

if.end178:                                        ; preds = %if.end174
  %105 = load i64, ptr %nWORowid, align 8
  %cmp179 = icmp sgt i64 %105, 0
  br i1 %cmp179, label %if.then181, label %if.end190

if.then181:                                       ; preds = %if.end178
  %106 = load i64, ptr %pgsz, align 8
  %107 = load i64, ptr %nPage, align 8
  %call182 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef @.str.44, ptr noundef @.str.45, i64 noundef %106, i64 noundef %107)
  store i32 %call182, ptr %rc, align 4
  %108 = load i32, ptr %rc, align 4
  %tobool183 = icmp ne i32 %108, 0
  br i1 %tobool183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.then181
  br label %return

if.end185:                                        ; preds = %if.then181
  %109 = load i64, ptr %pgsz, align 8
  %110 = load i64, ptr %nPage, align 8
  %call186 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef @.str.46, ptr noundef @.str.47, i64 noundef %109, i64 noundef %110)
  store i32 %call186, ptr %rc, align 4
  %111 = load i32, ptr %rc, align 4
  %tobool187 = icmp ne i32 %111, 0
  br i1 %tobool187, label %if.then188, label %if.end189

if.then188:                                       ; preds = %if.end185
  br label %return

if.end189:                                        ; preds = %if.end185
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.end178
  %112 = load i64, ptr %pgsz, align 8
  %113 = load i64, ptr %nPage, align 8
  %call191 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef @.str.48, ptr noundef @.str.49, i64 noundef %112, i64 noundef %113)
  store i32 %call191, ptr %rc, align 4
  %114 = load i32, ptr %rc, align 4
  %tobool192 = icmp ne i32 %114, 0
  br i1 %tobool192, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.end190
  br label %return

if.end194:                                        ; preds = %if.end190
  %zSU195 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %115 = load ptr, ptr %zSU195, align 8
  %call196 = call ptr (ptr, ptr, ...) @diskusedPrepare(ptr noundef %s, ptr noundef @.str.50, ptr noundef %115)
  store ptr %call196, ptr %pStmt, align 8
  %116 = load ptr, ptr %pStmt, align 8
  %cmp197 = icmp eq ptr %116, null
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.end194
  br label %return

if.end200:                                        ; preds = %if.end194
  br label %while.cond201

while.cond201:                                    ; preds = %if.end267, %if.end200
  %117 = load ptr, ptr %pStmt, align 8
  %call202 = call i32 @sqlite3_step(ptr noundef %117)
  store i32 %call202, ptr %rc, align 4
  %cmp203 = icmp eq i32 %call202, 100
  br i1 %cmp203, label %while.body205, label %while.end268

while.body205:                                    ; preds = %while.cond201
  %118 = load ptr, ptr %pStmt, align 8
  %call206 = call ptr @sqlite3_column_text(ptr noundef %118, i32 noundef 0)
  store ptr %call206, ptr %zUpper, align 8
  %119 = load ptr, ptr %pStmt, align 8
  %call207 = call ptr @sqlite3_column_text(ptr noundef %119, i32 noundef 1)
  store ptr %call207, ptr %zName, align 8
  %120 = load ptr, ptr %pStmt, align 8
  %call208 = call i32 @sqlite3_column_int(ptr noundef %120, i32 noundef 2)
  store i32 %call208, ptr %nSubIndex, align 4
  %121 = load i32, ptr %nSubIndex, align 4
  %cmp209 = icmp eq i32 %121, 0
  br i1 %cmp209, label %if.then211, label %if.else218

if.then211:                                       ; preds = %while.body205
  %122 = load ptr, ptr %zUpper, align 8
  %call212 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.51, ptr noundef %122)
  store ptr %call212, ptr %zTitle, align 8
  %123 = load ptr, ptr %zName, align 8
  %call213 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.52, ptr noundef %123)
  store ptr %call213, ptr %zWhere, align 8
  %124 = load ptr, ptr %zTitle, align 8
  %125 = load ptr, ptr %zWhere, align 8
  %126 = load i64, ptr %pgsz, align 8
  %127 = load i64, ptr %nPage, align 8
  %call214 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef %124, ptr noundef %125, i64 noundef %126, i64 noundef %127)
  store i32 %call214, ptr %rc, align 4
  %128 = load ptr, ptr %zTitle, align 8
  call void @sqlite3_free(ptr noundef %128)
  %129 = load ptr, ptr %zWhere, align 8
  call void @sqlite3_free(ptr noundef %129)
  %130 = load i32, ptr %rc, align 4
  %tobool215 = icmp ne i32 %130, 0
  br i1 %tobool215, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.then211
  br label %while.end268

if.end217:                                        ; preds = %if.then211
  br label %if.end267

if.else218:                                       ; preds = %while.body205
  %131 = load ptr, ptr %zUpper, align 8
  %call220 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.53, ptr noundef %131)
  store ptr %call220, ptr %zTitle219, align 8
  %132 = load ptr, ptr %zName, align 8
  %call222 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.54, ptr noundef %132)
  store ptr %call222, ptr %zWhere221, align 8
  %133 = load ptr, ptr %zTitle219, align 8
  %134 = load ptr, ptr %zWhere221, align 8
  %135 = load i64, ptr %pgsz, align 8
  %136 = load i64, ptr %nPage, align 8
  %call223 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef %133, ptr noundef %134, i64 noundef %135, i64 noundef %136)
  store i32 %call223, ptr %rc, align 4
  %137 = load ptr, ptr %zTitle219, align 8
  call void @sqlite3_free(ptr noundef %137)
  %138 = load ptr, ptr %zWhere221, align 8
  call void @sqlite3_free(ptr noundef %138)
  %139 = load i32, ptr %rc, align 4
  %tobool224 = icmp ne i32 %139, 0
  br i1 %tobool224, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.else218
  br label %while.end268

if.end226:                                        ; preds = %if.else218
  %140 = load ptr, ptr %zUpper, align 8
  %call227 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.55, ptr noundef %140)
  store ptr %call227, ptr %zTitle219, align 8
  %141 = load ptr, ptr %zName, align 8
  %call228 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.52, ptr noundef %141)
  store ptr %call228, ptr %zWhere221, align 8
  %142 = load ptr, ptr %zTitle219, align 8
  %143 = load ptr, ptr %zWhere221, align 8
  %144 = load i64, ptr %pgsz, align 8
  %145 = load i64, ptr %nPage, align 8
  %call229 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef %142, ptr noundef %143, i64 noundef %144, i64 noundef %145)
  store i32 %call229, ptr %rc, align 4
  %146 = load ptr, ptr %zTitle219, align 8
  call void @sqlite3_free(ptr noundef %146)
  %147 = load ptr, ptr %zWhere221, align 8
  call void @sqlite3_free(ptr noundef %147)
  %148 = load i32, ptr %rc, align 4
  %tobool230 = icmp ne i32 %148, 0
  br i1 %tobool230, label %if.then231, label %if.end232

if.then231:                                       ; preds = %if.end226
  br label %while.end268

if.end232:                                        ; preds = %if.end226
  %149 = load i32, ptr %nSubIndex, align 4
  %cmp233 = icmp sgt i32 %149, 1
  br i1 %cmp233, label %if.then235, label %if.end242

if.then235:                                       ; preds = %if.end232
  %150 = load ptr, ptr %zUpper, align 8
  %call236 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.56, ptr noundef %150)
  store ptr %call236, ptr %zTitle219, align 8
  %151 = load ptr, ptr %zName, align 8
  %call237 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.57, ptr noundef %151)
  store ptr %call237, ptr %zWhere221, align 8
  %152 = load ptr, ptr %zTitle219, align 8
  %153 = load ptr, ptr %zWhere221, align 8
  %154 = load i64, ptr %pgsz, align 8
  %155 = load i64, ptr %nPage, align 8
  %call238 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef %152, ptr noundef %153, i64 noundef %154, i64 noundef %155)
  store i32 %call238, ptr %rc, align 4
  %156 = load ptr, ptr %zTitle219, align 8
  call void @sqlite3_free(ptr noundef %156)
  %157 = load ptr, ptr %zWhere221, align 8
  call void @sqlite3_free(ptr noundef %157)
  %158 = load i32, ptr %rc, align 4
  %tobool239 = icmp ne i32 %158, 0
  br i1 %tobool239, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.then235
  br label %while.end268

if.end241:                                        ; preds = %if.then235
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.end232
  %zSU243 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %159 = load ptr, ptr %zSU243, align 8
  %160 = load ptr, ptr %zName, align 8
  %call244 = call ptr (ptr, ptr, ...) @diskusedPrepare(ptr noundef %s, ptr noundef @.str.58, ptr noundef %159, ptr noundef %160)
  store ptr %call244, ptr %pS2, align 8
  %161 = load ptr, ptr %pS2, align 8
  %cmp245 = icmp eq ptr %161, null
  br i1 %cmp245, label %if.then247, label %if.end248

if.then247:                                       ; preds = %if.end242
  store i32 7, ptr %rc, align 4
  br label %while.end268

if.end248:                                        ; preds = %if.end242
  br label %while.cond249

while.cond249:                                    ; preds = %if.end261, %if.end248
  %162 = load ptr, ptr %pS2, align 8
  %call250 = call i32 @sqlite3_step(ptr noundef %162)
  store i32 %call250, ptr %rc, align 4
  %cmp251 = icmp eq i32 %call250, 100
  br i1 %cmp251, label %while.body253, label %while.end262

while.body253:                                    ; preds = %while.cond249
  %163 = load ptr, ptr %pS2, align 8
  %call254 = call ptr @sqlite3_column_text(ptr noundef %163, i32 noundef 1)
  store ptr %call254, ptr %zU, align 8
  %164 = load ptr, ptr %pS2, align 8
  %call255 = call ptr @sqlite3_column_text(ptr noundef %164, i32 noundef 0)
  store ptr %call255, ptr %zN, align 8
  %165 = load ptr, ptr %zU, align 8
  %call256 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.59, ptr noundef %165)
  store ptr %call256, ptr %zTitle219, align 8
  %166 = load ptr, ptr %zN, align 8
  %call257 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.52, ptr noundef %166)
  store ptr %call257, ptr %zWhere221, align 8
  %167 = load ptr, ptr %zTitle219, align 8
  %168 = load ptr, ptr %zWhere221, align 8
  %169 = load i64, ptr %pgsz, align 8
  %170 = load i64, ptr %nPage, align 8
  %call258 = call i32 @diskusedSubreport(ptr noundef %s, ptr noundef %167, ptr noundef %168, i64 noundef %169, i64 noundef %170)
  store i32 %call258, ptr %rc, align 4
  %171 = load ptr, ptr %zTitle219, align 8
  call void @sqlite3_free(ptr noundef %171)
  %172 = load ptr, ptr %zWhere221, align 8
  call void @sqlite3_free(ptr noundef %172)
  %173 = load i32, ptr %rc, align 4
  %tobool259 = icmp ne i32 %173, 0
  br i1 %tobool259, label %if.then260, label %if.end261

if.then260:                                       ; preds = %while.body253
  br label %while.end262

if.end261:                                        ; preds = %while.body253
  br label %while.cond249, !llvm.loop !9

while.end262:                                     ; preds = %if.then260, %while.cond249
  %174 = load i32, ptr %rc, align 4
  %175 = load ptr, ptr %pS2, align 8
  %call263 = call i32 @diskusedStmtFinish(ptr noundef %s, i32 noundef %174, ptr noundef %175)
  store i32 %call263, ptr %rc, align 4
  %176 = load i32, ptr %rc, align 4
  %tobool264 = icmp ne i32 %176, 0
  br i1 %tobool264, label %if.then265, label %if.end266

if.then265:                                       ; preds = %while.end262
  br label %while.end268

if.end266:                                        ; preds = %while.end262
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.end217
  br label %while.cond201, !llvm.loop !10

while.end268:                                     ; preds = %if.then265, %if.then247, %if.then240, %if.then231, %if.then225, %if.then216, %while.cond201
  %177 = load i32, ptr %rc, align 4
  %178 = load ptr, ptr %pStmt, align 8
  %call269 = call i32 @diskusedStmtFinish(ptr noundef %s, i32 noundef %177, ptr noundef %178)
  %tobool270 = icmp ne i32 %call269, 0
  br i1 %tobool270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %while.end268
  br label %return

if.end272:                                        ; preds = %while.end268
  call void (ptr, ptr, ...) @diskusedTitle(ptr noundef %s, ptr noundef @.str.60)
  %pOut273 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  %179 = load ptr, ptr %pOut273, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %179, ptr noundef @.str.61)
  %pOut274 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  %180 = load ptr, ptr %pOut274, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %180, ptr noundef @.str.62)
  %zSU275 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 3
  %181 = load ptr, ptr %zSU275, align 8
  %call276 = call ptr (ptr, ptr, ...) @diskusedPrepare(ptr noundef %s, ptr noundef @.str.63, ptr noundef %181)
  store ptr %call276, ptr %pStmt, align 8
  %182 = load ptr, ptr %pStmt, align 8
  %cmp277 = icmp eq ptr %182, null
  br i1 %cmp277, label %if.then279, label %if.end280

if.then279:                                       ; preds = %if.end272
  br label %return

if.end280:                                        ; preds = %if.end272
  store i32 0, ptr %n, align 4
  br label %while.cond281

while.cond281:                                    ; preds = %if.end289, %if.end280
  %183 = load ptr, ptr %pStmt, align 8
  %call282 = call i32 @sqlite3_step(ptr noundef %183)
  store i32 %call282, ptr %rc, align 4
  %cmp283 = icmp eq i32 %call282, 100
  br i1 %cmp283, label %while.body285, label %while.end309

while.body285:                                    ; preds = %while.cond281
  %184 = load i32, ptr %n, align 4
  %inc = add nsw i32 %184, 1
  store i32 %inc, ptr %n, align 4
  %tobool286 = icmp ne i32 %184, 0
  br i1 %tobool286, label %if.then287, label %if.end289

if.then287:                                       ; preds = %while.body285
  %pOut288 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  %185 = load ptr, ptr %pOut288, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %185, ptr noundef @.str.64)
  br label %if.end289

if.end289:                                        ; preds = %if.then287, %while.body285
  %pOut290 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  %186 = load ptr, ptr %pOut290, align 8
  %187 = load ptr, ptr %pStmt, align 8
  %call291 = call ptr @sqlite3_column_text(ptr noundef %187, i32 noundef 0)
  %188 = load ptr, ptr %pStmt, align 8
  %call292 = call ptr @sqlite3_column_text(ptr noundef %188, i32 noundef 1)
  %189 = load ptr, ptr %pStmt, align 8
  %call293 = call i64 @sqlite3_column_int64(ptr noundef %189, i32 noundef 2)
  %190 = load ptr, ptr %pStmt, align 8
  %call294 = call i64 @sqlite3_column_int64(ptr noundef %190, i32 noundef 3)
  %191 = load ptr, ptr %pStmt, align 8
  %call295 = call i64 @sqlite3_column_int64(ptr noundef %191, i32 noundef 4)
  %192 = load ptr, ptr %pStmt, align 8
  %call296 = call i64 @sqlite3_column_int64(ptr noundef %192, i32 noundef 5)
  %193 = load ptr, ptr %pStmt, align 8
  %call297 = call i64 @sqlite3_column_int64(ptr noundef %193, i32 noundef 6)
  %194 = load ptr, ptr %pStmt, align 8
  %call298 = call i64 @sqlite3_column_int64(ptr noundef %194, i32 noundef 7)
  %195 = load ptr, ptr %pStmt, align 8
  %call299 = call i64 @sqlite3_column_int64(ptr noundef %195, i32 noundef 8)
  %196 = load ptr, ptr %pStmt, align 8
  %call300 = call i64 @sqlite3_column_int64(ptr noundef %196, i32 noundef 9)
  %197 = load ptr, ptr %pStmt, align 8
  %call301 = call i64 @sqlite3_column_int64(ptr noundef %197, i32 noundef 10)
  %198 = load ptr, ptr %pStmt, align 8
  %call302 = call i64 @sqlite3_column_int64(ptr noundef %198, i32 noundef 11)
  %199 = load ptr, ptr %pStmt, align 8
  %call303 = call i64 @sqlite3_column_int64(ptr noundef %199, i32 noundef 12)
  %200 = load ptr, ptr %pStmt, align 8
  %call304 = call i64 @sqlite3_column_int64(ptr noundef %200, i32 noundef 13)
  %201 = load ptr, ptr %pStmt, align 8
  %call305 = call i64 @sqlite3_column_int64(ptr noundef %201, i32 noundef 14)
  %202 = load ptr, ptr %pStmt, align 8
  %call306 = call i64 @sqlite3_column_int64(ptr noundef %202, i32 noundef 15)
  %203 = load ptr, ptr %pStmt, align 8
  %call307 = call i64 @sqlite3_column_int64(ptr noundef %203, i32 noundef 16)
  %204 = load ptr, ptr %pStmt, align 8
  %call308 = call i64 @sqlite3_column_int64(ptr noundef %204, i32 noundef 17)
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %186, ptr noundef @.str.65, ptr noundef %call291, ptr noundef %call292, i64 noundef %call293, i64 noundef %call294, i64 noundef %call295, i64 noundef %call296, i64 noundef %call297, i64 noundef %call298, i64 noundef %call299, i64 noundef %call300, i64 noundef %call301, i64 noundef %call302, i64 noundef %call303, i64 noundef %call304, i64 noundef %call305, i64 noundef %call306, i64 noundef %call307, i64 noundef %call308)
  br label %while.cond281, !llvm.loop !11

while.end309:                                     ; preds = %while.cond281
  %205 = load i32, ptr %rc, align 4
  %cmp310 = icmp ne i32 %205, 101
  br i1 %cmp310, label %if.then312, label %if.end317

if.then312:                                       ; preds = %while.end309
  %db313 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 0
  %206 = load ptr, ptr %db313, align 8
  %call314 = call ptr @sqlite3_errmsg(ptr noundef %206)
  %207 = load ptr, ptr %pStmt, align 8
  %call315 = call ptr @sqlite3_sql(ptr noundef %207)
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %s, ptr noundef @.str.66, ptr noundef %call314, ptr noundef %call315)
  %208 = load ptr, ptr %pStmt, align 8
  %call316 = call i32 @sqlite3_finalize(ptr noundef %208)
  br label %return

if.end317:                                        ; preds = %while.end309
  %pOut318 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  %209 = load ptr, ptr %pOut318, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %209, ptr noundef @.str.67)
  %210 = load ptr, ptr %pStmt, align 8
  %call319 = call i32 @sqlite3_finalize(ptr noundef %210)
  %pOut320 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  %211 = load ptr, ptr %pOut320, align 8
  %call321 = call i32 @sqlite3_str_length(ptr noundef %211)
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %if.then323, label %if.end327

if.then323:                                       ; preds = %if.end317
  %212 = load ptr, ptr %context.addr, align 8
  %pOut324 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  %213 = load ptr, ptr %pOut324, align 8
  %call325 = call ptr @sqlite3_str_finish(ptr noundef %213)
  call void @sqlite3_result_text(ptr noundef %212, ptr noundef %call325, i32 noundef -1, ptr noundef @sqlite3_free)
  %pOut326 = getelementptr inbounds %struct.DiskUsed, ptr %s, i32 0, i32 2
  store ptr null, ptr %pOut326, align 8
  br label %if.end327

if.end327:                                        ; preds = %if.then323, %if.end317
  call void @diskusedReset(ptr noundef %s)
  br label %return

return:                                           ; preds = %if.end327, %if.then312, %if.then279, %if.then271, %if.then199, %if.then193, %if.then188, %if.then184, %if.then177, %if.then173, %if.then169, %if.then152, %if.then146, %if.then133, %if.then122, %if.then115, %if.then110, %if.then100, %if.then95, %if.then73, %if.then64, %if.then58, %if.then53, %if.then48, %if.then45, %if.then40, %if.then31, %if.then26, %if.then19, %if.then12, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @sqlite3_context_db_handle(ptr noundef) #1

declare ptr @sqlite3_str_new(ptr noundef) #1

declare i32 @sqlite3_str_errcode(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @diskusedError(ptr noundef %p, ptr noundef %zFormat, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  %0 = load ptr, ptr %zFormat.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.va_start(ptr %ap)
  %1 = load ptr, ptr %zFormat.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %zErr, align 8
  call void @llvm.va_end(ptr %ap)
  br label %if.end

if.else:                                          ; preds = %entry
  store ptr null, ptr %zErr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %zErr, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8
  %context = getelementptr inbounds %struct.DiskUsed, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %context, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %5)
  br label %if.end4

if.else2:                                         ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8
  %context3 = getelementptr inbounds %struct.DiskUsed, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %context3, align 8
  %8 = load ptr, ptr %zErr, align 8
  call void @sqlite3_result_error(ptr noundef %7, ptr noundef %8, i32 noundef -1)
  %9 = load ptr, ptr %zErr, align 8
  call void @sqlite3_free(ptr noundef %9)
  br label %if.end4

if.end4:                                          ; preds = %if.else2, %if.then1
  %10 = load ptr, ptr %p.addr, align 8
  call void @diskusedReset(ptr noundef %10)
  ret void
}

declare ptr @sqlite3_value_text(ptr noundef) #1

declare i32 @sqlite3_strlike(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @diskusedReset(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %zSU = getelementptr inbounds %struct.DiskUsed, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %zSU, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %zSU1 = getelementptr inbounds %struct.DiskUsed, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %zSU1, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.68, ptr noundef %3)
  store ptr %call, ptr %zSql, align 8
  %4 = load ptr, ptr %zSql, align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.DiskUsed, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db, align 8
  %7 = load ptr, ptr %zSql, align 8
  %call4 = call i32 @sqlite3_exec(ptr noundef %6, ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null)
  %8 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %p.addr, align 8
  %pOut = getelementptr inbounds %struct.DiskUsed, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pOut, align 8
  %call6 = call i32 @sqlite3_str_free(ptr noundef %10)
  %11 = load ptr, ptr %p.addr, align 8
  %zSU7 = getelementptr inbounds %struct.DiskUsed, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %zSU7, align 8
  call void @sqlite3_free(ptr noundef %12)
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call8 = call ptr @__memset_chk(ptr noundef %13, i32 noundef 0, i64 noundef 40, i64 noundef %15) #6
  ret void
}

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @diskusedSqlInt(ptr noundef %p, ptr noundef %piRes, ptr noundef %zFormat, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %piRes.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pStmt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %piRes, ptr %piRes.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr null, ptr %pStmt, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load ptr, ptr %zFormat.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call ptr @diskusedVPrep(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %pStmt, align 8
  call void @llvm.va_end(ptr %ap)
  %3 = load ptr, ptr %pStmt, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pStmt, align 8
  %call1 = call i32 @sqlite3_step(ptr noundef %4)
  store i32 %call1, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %5, 100
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %pStmt, align 8
  %call4 = call i64 @sqlite3_column_int64(ptr noundef %6, i32 noundef 0)
  %7 = load ptr, ptr %piRes.addr, align 8
  store i64 %call4, ptr %7, align 8
  store i32 0, ptr %rc, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end
  %8 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %8, 101
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i32 0, ptr %rc, align 4
  br label %if.end13

if.else7:                                         ; preds = %if.else
  %9 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.DiskUsed, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %db, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.else7
  %11 = load ptr, ptr %p.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %db9 = getelementptr inbounds %struct.DiskUsed, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %db9, align 8
  %call10 = call ptr @sqlite3_errmsg(ptr noundef %13)
  %14 = load ptr, ptr %pStmt, align 8
  %call11 = call ptr @sqlite3_sql(ptr noundef %14)
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %11, ptr noundef @.str.69, ptr noundef %call10, ptr noundef %call11)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.else7
  %15 = load ptr, ptr %p.addr, align 8
  call void @diskusedReset(ptr noundef %15)
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then3
  %16 = load ptr, ptr %pStmt, align 8
  %call15 = call i32 @sqlite3_finalize(ptr noundef %16)
  %17 = load i32, ptr %rc, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare void @sqlite3_randomness(i32 noundef, ptr noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @diskusedSql(ptr noundef %p, ptr noundef %zFormat, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pStmt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr null, ptr %pStmt, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load ptr, ptr %zFormat.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call ptr @diskusedVPrep(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %pStmt, align 8
  call void @llvm.va_end(ptr %ap)
  %3 = load ptr, ptr %pStmt, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr %pStmt, align 8
  %call1 = call i32 @sqlite3_step(ptr noundef %4)
  store i32 %call1, ptr %rc, align 4
  %cmp2 = icmp eq i32 %call1, 100
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %5, 101
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.end
  store i32 0, ptr %rc, align 4
  br label %if.end7

if.else:                                          ; preds = %while.end
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.DiskUsed, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db, align 8
  %call5 = call ptr @sqlite3_errmsg(ptr noundef %8)
  %9 = load ptr, ptr %pStmt, align 8
  %call6 = call ptr @sqlite3_sql(ptr noundef %9)
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %6, ptr noundef @.str.69, ptr noundef %call5, ptr noundef %call6)
  %10 = load ptr, ptr %p.addr, align 8
  call void @diskusedReset(ptr noundef %10)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %11 = load ptr, ptr %pStmt, align 8
  %call8 = call i32 @sqlite3_finalize(ptr noundef %11)
  %12 = load i32, ptr %rc, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @diskusedTitle(ptr noundef %p, ptr noundef %zFormat, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %zFirst = alloca ptr, align 8
  %zTitle = alloca ptr, align 8
  %nTitle = alloca i64, align 8
  %ap = alloca ptr, align 8
  %nExtra = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFormat.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zTitle, align 8
  call void @llvm.va_end(ptr %ap)
  %2 = load ptr, ptr %zTitle, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %3, ptr noundef null)
  br label %if.end8

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %pOut = getelementptr inbounds %struct.DiskUsed, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pOut, align 8
  %call1 = call i32 @sqlite3_str_length(ptr noundef %5)
  %cmp2 = icmp eq i32 %call1, 0
  %6 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, ptr @.str.71, ptr @.str.72
  store ptr %cond, ptr %zFirst, align 8
  %7 = load ptr, ptr %zTitle, align 8
  %call3 = call i64 @strlen(ptr noundef %7)
  store i64 %call3, ptr %nTitle, align 8
  %8 = load i64, ptr %nTitle, align 8
  %cmp4 = icmp uge i64 %8, 75
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %p.addr, align 8
  %pOut6 = getelementptr inbounds %struct.DiskUsed, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pOut6, align 8
  %11 = load ptr, ptr %zFirst, align 8
  %12 = load ptr, ptr %zTitle, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %10, ptr noundef @.str.73, ptr noundef %11, ptr noundef %12)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %13 = load i64, ptr %nTitle, align 8
  %conv = trunc i64 %13 to i32
  %sub = sub nsw i32 74, %conv
  store i32 %sub, ptr %nExtra, align 4
  %14 = load ptr, ptr %p.addr, align 8
  %pOut7 = getelementptr inbounds %struct.DiskUsed, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pOut7, align 8
  %16 = load ptr, ptr %zFirst, align 8
  %17 = load ptr, ptr %zTitle, align 8
  %18 = load i32, ptr %nExtra, align 4
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %15, ptr noundef @.str.74, ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef 42)
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.else, %if.then5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @diskusedLine(ptr noundef %p, ptr noundef %zDesc, ptr noundef %zFormat, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zDesc.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %zTxt = alloca ptr, align 8
  %nDesc = alloca i64, align 8
  %ap = alloca ptr, align 8
  %nExtra = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %zDesc, ptr %zDesc.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFormat.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zTxt, align 8
  call void @llvm.va_end(ptr %ap)
  %2 = load ptr, ptr %zTxt, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %3, ptr noundef null)
  br label %if.end5

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %zDesc.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load ptr, ptr %zDesc.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %5)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, ptr %nDesc, align 8
  %6 = load i64, ptr %nDesc, align 8
  %cmp2 = icmp uge i64 %6, 50
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %cond.end
  %7 = load ptr, ptr %p.addr, align 8
  %pOut = getelementptr inbounds %struct.DiskUsed, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %pOut, align 8
  %9 = load ptr, ptr %zDesc.addr, align 8
  %10 = load ptr, ptr %zTxt, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %8, ptr noundef @.str.75, ptr noundef %9, ptr noundef %10)
  br label %if.end5

if.else:                                          ; preds = %cond.end
  %11 = load i64, ptr %nDesc, align 8
  %conv = trunc i64 %11 to i32
  %sub = sub nsw i32 50, %conv
  store i32 %sub, ptr %nExtra, align 4
  %12 = load ptr, ptr %p.addr, align 8
  %pOut4 = getelementptr inbounds %struct.DiskUsed, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pOut4, align 8
  %14 = load ptr, ptr %zDesc.addr, align 8
  %15 = load i32, ptr %nExtra, align 4
  %16 = load ptr, ptr %zTxt, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %13, ptr noundef @.str.76, ptr noundef %14, i32 noundef %15, i32 noundef 46, ptr noundef %16)
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.else, %if.then3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @diskusedPercent(ptr noundef %p, double noundef %r) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %r.addr = alloca double, align 8
  %zNum = alloca [100 x i8], align 1
  %zDP = alloca ptr, align 8
  %nLeadingDigit = alloca i32, align 4
  %sz = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store double %r, ptr %r.addr, align 8
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %0 = load double, ptr %r.addr, align 8
  %cmp = fcmp oge double %0, 1.000000e+01
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.77, ptr @.str.78
  %2 = load double, ptr %r.addr, align 8
  %call = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 95, ptr noundef %arraydecay, ptr noundef %cond, double noundef %2)
  %arraydecay1 = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1)
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %sz, align 4
  %arraydecay3 = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %call4 = call ptr @strchr(ptr noundef %arraydecay3, i32 noundef 46)
  store ptr %call4, ptr %zDP, align 8
  %3 = load ptr, ptr %zDP, align 8
  %cmp5 = icmp eq ptr %3, null
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay7 = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %4 = load i32, ptr %sz, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay7, i64 %idx.ext
  %arraydecay8 = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %5 = load i32, ptr %sz, align 4
  %idx.ext9 = sext i32 %5 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %arraydecay8, i64 %idx.ext9
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr10, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef @.str.79, i64 noundef 3, i64 noundef %6) #6
  %7 = load i32, ptr %sz, align 4
  store i32 %7, ptr %nLeadingDigit, align 4
  %8 = load i32, ptr %sz, align 4
  %add = add nsw i32 %8, 2
  store i32 %add, ptr %sz, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %zDP, align 8
  %arraydecay12 = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv13 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv13, ptr %nLeadingDigit, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, ptr %nLeadingDigit, align 4
  %cmp14 = icmp slt i32 %10, 3
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  %11 = load ptr, ptr %p.addr, align 8
  %pOut = getelementptr inbounds %struct.DiskUsed, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pOut, align 8
  %13 = load i32, ptr %nLeadingDigit, align 4
  %sub = sub nsw i32 3, %13
  call void @sqlite3_str_appendchar(ptr noundef %12, i32 noundef %sub, i8 noundef signext 32)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end
  %14 = load ptr, ptr %p.addr, align 8
  %pOut18 = getelementptr inbounds %struct.DiskUsed, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pOut18, align 8
  %arraydecay19 = getelementptr inbounds [100 x i8], ptr %zNum, i64 0, i64 0
  %16 = load i32, ptr %sz, align 4
  call void @sqlite3_str_append(ptr noundef %15, ptr noundef %arraydecay19, i32 noundef %16)
  %17 = load ptr, ptr %p.addr, align 8
  %pOut20 = getelementptr inbounds %struct.DiskUsed, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pOut20, align 8
  call void @sqlite3_str_append(ptr noundef %18, ptr noundef @.str.80, i32 noundef 2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @diskusedPrepare(ptr noundef %p, ptr noundef %zFormat, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr null, ptr %pStmt, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load ptr, ptr %zFormat.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call ptr @diskusedVPrep(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %pStmt, align 8
  call void @llvm.va_end(ptr %ap)
  %3 = load ptr, ptr %pStmt, align 8
  ret ptr %3
}

declare i32 @sqlite3_step(ptr noundef) #1

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) #1

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @diskusedStmtFinish(ptr noundef %p, i32 noundef %rc, ptr noundef %pStmt) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %rc.addr = alloca i32, align 4
  %pStmt.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %rc, ptr %rc.addr, align 4
  store ptr %pStmt, ptr %pStmt.addr, align 8
  %0 = load i32, ptr %rc.addr, align 4
  %cmp = icmp eq i32 %0, 101
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %rc.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %rc.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %pStmt.addr, align 8
  %call = call i32 @sqlite3_reset(ptr noundef %2)
  store i32 %call, ptr %rc.addr, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load ptr, ptr %p.addr, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.DiskUsed, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db, align 8
  %call4 = call ptr @sqlite3_errmsg(ptr noundef %5)
  %6 = load ptr, ptr %pStmt.addr, align 8
  %call5 = call ptr @sqlite3_sql(ptr noundef %6)
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %3, ptr noundef @.str.69, ptr noundef %call4, ptr noundef %call5)
  %7 = load ptr, ptr %p.addr, align 8
  call void @diskusedReset(ptr noundef %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %lor.lhs.false
  %8 = load ptr, ptr %pStmt.addr, align 8
  %call7 = call i32 @sqlite3_finalize(ptr noundef %8)
  %9 = load i32, ptr %rc.addr, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @diskusedSubreport(ptr noundef %p, ptr noundef %zTitle, ptr noundef %zWhere, i64 noundef %pgsz, i64 noundef %nPage) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %zTitle.addr = alloca ptr, align 8
  %zWhere.addr = alloca ptr, align 8
  %pgsz.addr = alloca i64, align 8
  %nPage.addr = alloca i64, align 8
  %pStmt = alloca ptr, align 8
  %nentry = alloca i64, align 8
  %payload = alloca i64, align 8
  %ovfl_payload = alloca i64, align 8
  %mx_payload = alloca i64, align 8
  %ovfl_cnt = alloca i64, align 8
  %leaf_pages = alloca i64, align 8
  %int_pages = alloca i64, align 8
  %ovfl_pages = alloca i64, align 8
  %leaf_unused = alloca i64, align 8
  %int_unused = alloca i64, align 8
  %ovfl_unused = alloca i64, align 8
  %int_cell = alloca i64, align 8
  %depth = alloca i64, align 8
  %cnt = alloca i64, align 8
  %storage = alloca i64, align 8
  %total_pages = alloca i64, align 8
  %total_unused = alloca i64, align 8
  %total_meta = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %zTitle, ptr %zTitle.addr, align 8
  store ptr %zWhere, ptr %zWhere.addr, align 8
  store i64 %pgsz, ptr %pgsz.addr, align 8
  store i64 %nPage, ptr %nPage.addr, align 8
  %0 = load ptr, ptr %zTitle.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %zWhere.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %2, ptr noundef null)
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %p.addr, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %zSU = getelementptr inbounds %struct.DiskUsed, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %zSU, align 8
  %6 = load ptr, ptr %zWhere.addr, align 8
  %call = call ptr (ptr, ptr, ...) @diskusedPrepare(ptr noundef %3, ptr noundef @.str.81, ptr noundef %5, ptr noundef %6)
  store ptr %call, ptr %pStmt, align 8
  %7 = load ptr, ptr %pStmt, align 8
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %pStmt, align 8
  %call5 = call i32 @sqlite3_step(ptr noundef %8)
  store i32 %call5, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %9, 100
  br i1 %cmp6, label %if.then7, label %if.end94

if.then7:                                         ; preds = %if.end4
  %10 = load ptr, ptr %p.addr, align 8
  %11 = load ptr, ptr %zTitle.addr, align 8
  call void (ptr, ptr, ...) @diskusedTitle(ptr noundef %10, ptr noundef @.str.82, ptr noundef %11)
  %12 = load ptr, ptr %pStmt, align 8
  %call8 = call i64 @sqlite3_column_int64(ptr noundef %12, i32 noundef 0)
  store i64 %call8, ptr %nentry, align 8
  %13 = load ptr, ptr %pStmt, align 8
  %call9 = call i64 @sqlite3_column_int64(ptr noundef %13, i32 noundef 1)
  store i64 %call9, ptr %payload, align 8
  %14 = load ptr, ptr %pStmt, align 8
  %call10 = call i64 @sqlite3_column_int64(ptr noundef %14, i32 noundef 2)
  store i64 %call10, ptr %ovfl_payload, align 8
  %15 = load ptr, ptr %pStmt, align 8
  %call11 = call i64 @sqlite3_column_int64(ptr noundef %15, i32 noundef 3)
  store i64 %call11, ptr %mx_payload, align 8
  %16 = load ptr, ptr %pStmt, align 8
  %call12 = call i64 @sqlite3_column_int64(ptr noundef %16, i32 noundef 4)
  store i64 %call12, ptr %ovfl_cnt, align 8
  %17 = load ptr, ptr %pStmt, align 8
  %call13 = call i64 @sqlite3_column_int64(ptr noundef %17, i32 noundef 5)
  store i64 %call13, ptr %leaf_pages, align 8
  %18 = load ptr, ptr %pStmt, align 8
  %call14 = call i64 @sqlite3_column_int64(ptr noundef %18, i32 noundef 6)
  store i64 %call14, ptr %int_pages, align 8
  %19 = load ptr, ptr %pStmt, align 8
  %call15 = call i64 @sqlite3_column_int64(ptr noundef %19, i32 noundef 7)
  store i64 %call15, ptr %ovfl_pages, align 8
  %20 = load ptr, ptr %pStmt, align 8
  %call16 = call i64 @sqlite3_column_int64(ptr noundef %20, i32 noundef 8)
  store i64 %call16, ptr %leaf_unused, align 8
  %21 = load ptr, ptr %pStmt, align 8
  %call17 = call i64 @sqlite3_column_int64(ptr noundef %21, i32 noundef 9)
  store i64 %call17, ptr %int_unused, align 8
  %22 = load ptr, ptr %pStmt, align 8
  %call18 = call i64 @sqlite3_column_int64(ptr noundef %22, i32 noundef 10)
  store i64 %call18, ptr %ovfl_unused, align 8
  %23 = load ptr, ptr %pStmt, align 8
  %call19 = call i64 @sqlite3_column_int64(ptr noundef %23, i32 noundef 11)
  store i64 %call19, ptr %depth, align 8
  %24 = load ptr, ptr %pStmt, align 8
  %call20 = call i64 @sqlite3_column_int64(ptr noundef %24, i32 noundef 12)
  store i64 %call20, ptr %cnt, align 8
  %25 = load ptr, ptr %pStmt, align 8
  %call21 = call i64 @sqlite3_column_int64(ptr noundef %25, i32 noundef 13)
  store i64 %call21, ptr %int_cell, align 8
  store i32 101, ptr %rc, align 4
  %26 = load i64, ptr %leaf_pages, align 8
  %27 = load i64, ptr %int_pages, align 8
  %add = add nsw i64 %26, %27
  %28 = load i64, ptr %ovfl_pages, align 8
  %add22 = add nsw i64 %add, %28
  store i64 %add22, ptr %total_pages, align 8
  %29 = load ptr, ptr %p.addr, align 8
  %30 = load i64, ptr %total_pages, align 8
  %conv = sitofp i64 %30 to double
  %mul = fmul double %conv, 1.000000e+02
  %31 = load i64, ptr %nPage.addr, align 8
  %conv23 = sitofp i64 %31 to double
  %div = fdiv double %mul, %conv23
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %29, ptr noundef @.str.83, ptr noundef @.str.84, double noundef %div)
  %32 = load ptr, ptr %p.addr, align 8
  %33 = load i64, ptr %nentry, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %32, ptr noundef @.str.85, ptr noundef @.str.14, i64 noundef %33)
  %34 = load i64, ptr %total_pages, align 8
  %35 = load i64, ptr %pgsz.addr, align 8
  %mul24 = mul nsw i64 %34, %35
  store i64 %mul24, ptr %storage, align 8
  %36 = load ptr, ptr %p.addr, align 8
  %37 = load i64, ptr %storage, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %36, ptr noundef @.str.86, ptr noundef @.str.14, i64 noundef %37)
  %38 = load ptr, ptr %p.addr, align 8
  %39 = load i64, ptr %payload, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %38, ptr noundef @.str.35, ptr noundef @.str.18, i64 noundef %39)
  %40 = load ptr, ptr %p.addr, align 8
  %41 = load i64, ptr %payload, align 8
  %conv25 = sitofp i64 %41 to double
  %mul26 = fmul double %conv25, 1.000000e+02
  %42 = load i64, ptr %storage, align 8
  %conv27 = sitofp i64 %42 to double
  %div28 = fdiv double %mul26, %conv27
  call void @diskusedPercent(ptr noundef %40, double noundef %div28)
  %43 = load i64, ptr %ovfl_cnt, align 8
  %cmp29 = icmp sgt i64 %43, 0
  br i1 %cmp29, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.then7
  %44 = load ptr, ptr %p.addr, align 8
  %45 = load i64, ptr %ovfl_payload, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %44, ptr noundef @.str.87, ptr noundef @.str.18, i64 noundef %45)
  %46 = load ptr, ptr %p.addr, align 8
  %47 = load i64, ptr %ovfl_payload, align 8
  %conv32 = sitofp i64 %47 to double
  %mul33 = fmul double %conv32, 1.000000e+02
  %48 = load i64, ptr %payload, align 8
  %conv34 = sitofp i64 %48 to double
  %div35 = fdiv double %mul33, %conv34
  call void @diskusedPercent(ptr noundef %46, double noundef %div35)
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.then7
  %49 = load i64, ptr %leaf_unused, align 8
  %50 = load i64, ptr %int_unused, align 8
  %add37 = add nsw i64 %49, %50
  %51 = load i64, ptr %ovfl_unused, align 8
  %add38 = add nsw i64 %add37, %51
  store i64 %add38, ptr %total_unused, align 8
  %52 = load i64, ptr %storage, align 8
  %53 = load i64, ptr %payload, align 8
  %sub = sub nsw i64 %52, %53
  %54 = load i64, ptr %total_unused, align 8
  %sub39 = sub nsw i64 %sub, %54
  store i64 %sub39, ptr %total_meta, align 8
  %55 = load ptr, ptr %p.addr, align 8
  %56 = load i64, ptr %total_meta, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %55, ptr noundef @.str.88, ptr noundef @.str.18, i64 noundef %56)
  %57 = load ptr, ptr %p.addr, align 8
  %58 = load i64, ptr %total_meta, align 8
  %conv40 = sitofp i64 %58 to double
  %mul41 = fmul double %conv40, 1.000000e+02
  %59 = load i64, ptr %storage, align 8
  %conv42 = sitofp i64 %59 to double
  %div43 = fdiv double %mul41, %conv42
  call void @diskusedPercent(ptr noundef %57, double noundef %div43)
  %60 = load i64, ptr %cnt, align 8
  %cmp44 = icmp eq i64 %60, 1
  br i1 %cmp44, label %if.then46, label %if.end55

if.then46:                                        ; preds = %if.end36
  %61 = load ptr, ptr %p.addr, align 8
  %62 = load i64, ptr %depth, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %61, ptr noundef @.str.89, ptr noundef @.str.14, i64 noundef %62)
  %63 = load i64, ptr %int_cell, align 8
  %cmp47 = icmp sgt i64 %63, 1
  br i1 %cmp47, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.then46
  %64 = load ptr, ptr %p.addr, align 8
  %65 = load i64, ptr %int_cell, align 8
  %66 = load i64, ptr %int_pages, align 8
  %add50 = add nsw i64 %65, %66
  %conv51 = sitofp i64 %add50 to double
  %67 = load i64, ptr %int_pages, align 8
  %conv52 = sitofp i64 %67 to double
  %div53 = fdiv double %conv51, %conv52
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %64, ptr noundef @.str.90, ptr noundef @.str.91, double noundef %div53)
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.then46
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end36
  %68 = load i64, ptr %nentry, align 8
  %cmp56 = icmp sgt i64 %68, 0
  br i1 %cmp56, label %if.then58, label %if.end68

if.then58:                                        ; preds = %if.end55
  %69 = load ptr, ptr %p.addr, align 8
  %70 = load i64, ptr %payload, align 8
  %conv59 = sitofp i64 %70 to double
  %71 = load i64, ptr %nentry, align 8
  %conv60 = sitofp i64 %71 to double
  %div61 = fdiv double %conv59, %conv60
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %69, ptr noundef @.str.92, ptr noundef @.str.91, double noundef %div61)
  %72 = load ptr, ptr %p.addr, align 8
  %73 = load i64, ptr %total_unused, align 8
  %conv62 = sitofp i64 %73 to double
  %74 = load i64, ptr %nentry, align 8
  %conv63 = sitofp i64 %74 to double
  %div64 = fdiv double %conv62, %conv63
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %72, ptr noundef @.str.93, ptr noundef @.str.91, double noundef %div64)
  %75 = load ptr, ptr %p.addr, align 8
  %76 = load i64, ptr %total_meta, align 8
  %conv65 = sitofp i64 %76 to double
  %77 = load i64, ptr %nentry, align 8
  %conv66 = sitofp i64 %77 to double
  %div67 = fdiv double %conv65, %conv66
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %75, ptr noundef @.str.94, ptr noundef @.str.91, double noundef %div67)
  br label %if.end68

if.end68:                                         ; preds = %if.then58, %if.end55
  %78 = load ptr, ptr %p.addr, align 8
  %79 = load i64, ptr %mx_payload, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %78, ptr noundef @.str.95, ptr noundef @.str.14, i64 noundef %79)
  %80 = load i64, ptr %nentry, align 8
  %cmp69 = icmp sgt i64 %80, 0
  br i1 %cmp69, label %if.then71, label %if.end76

if.then71:                                        ; preds = %if.end68
  %81 = load ptr, ptr %p.addr, align 8
  %82 = load i64, ptr %ovfl_cnt, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %81, ptr noundef @.str.96, ptr noundef @.str.18, i64 noundef %82)
  %83 = load ptr, ptr %p.addr, align 8
  %84 = load i64, ptr %ovfl_cnt, align 8
  %conv72 = sitofp i64 %84 to double
  %mul73 = fmul double %conv72, 1.000000e+02
  %85 = load i64, ptr %nentry, align 8
  %conv74 = sitofp i64 %85 to double
  %div75 = fdiv double %mul73, %conv74
  call void @diskusedPercent(ptr noundef %83, double noundef %div75)
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end68
  %86 = load i64, ptr %int_pages, align 8
  %cmp77 = icmp sgt i64 %86, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  %87 = load ptr, ptr %p.addr, align 8
  %88 = load i64, ptr %int_pages, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %87, ptr noundef @.str.97, ptr noundef @.str.14, i64 noundef %88)
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end76
  %89 = load ptr, ptr %p.addr, align 8
  %90 = load i64, ptr %leaf_pages, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %89, ptr noundef @.str.98, ptr noundef @.str.14, i64 noundef %90)
  %91 = load i64, ptr %ovfl_cnt, align 8
  %tobool = icmp ne i64 %91, 0
  br i1 %tobool, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end80
  %92 = load ptr, ptr %p.addr, align 8
  %93 = load i64, ptr %ovfl_pages, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %92, ptr noundef @.str.99, ptr noundef @.str.14, i64 noundef %93)
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end80
  %94 = load ptr, ptr %p.addr, align 8
  %95 = load i64, ptr %total_pages, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %94, ptr noundef @.str.100, ptr noundef @.str.14, i64 noundef %95)
  %96 = load i64, ptr %int_pages, align 8
  %cmp83 = icmp sgt i64 %96, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end82
  %97 = load ptr, ptr %p.addr, align 8
  %98 = load i64, ptr %int_unused, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %97, ptr noundef @.str.101, ptr noundef @.str.14, i64 noundef %98)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end82
  %99 = load ptr, ptr %p.addr, align 8
  %100 = load i64, ptr %leaf_unused, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %99, ptr noundef @.str.102, ptr noundef @.str.14, i64 noundef %100)
  %101 = load i64, ptr %ovfl_cnt, align 8
  %tobool87 = icmp ne i64 %101, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end86
  %102 = load ptr, ptr %p.addr, align 8
  %103 = load i64, ptr %ovfl_unused, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %102, ptr noundef @.str.103, ptr noundef @.str.14, i64 noundef %103)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end86
  %104 = load ptr, ptr %p.addr, align 8
  %105 = load i64, ptr %total_unused, align 8
  call void (ptr, ptr, ptr, ...) @diskusedLine(ptr noundef %104, ptr noundef @.str.104, ptr noundef @.str.18, i64 noundef %105)
  %106 = load ptr, ptr %p.addr, align 8
  %107 = load i64, ptr %total_unused, align 8
  %conv90 = sitofp i64 %107 to double
  %mul91 = fmul double %conv90, 1.000000e+02
  %108 = load i64, ptr %storage, align 8
  %conv92 = sitofp i64 %108 to double
  %div93 = fdiv double %mul91, %conv92
  call void @diskusedPercent(ptr noundef %106, double noundef %div93)
  br label %if.end94

if.end94:                                         ; preds = %if.end89, %if.end4
  %109 = load ptr, ptr %p.addr, align 8
  %110 = load i32, ptr %rc, align 4
  %111 = load ptr, ptr %pStmt, align 8
  %call95 = call i32 @diskusedStmtFinish(ptr noundef %109, i32 noundef %110, ptr noundef %111)
  store i32 %call95, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end94, %if.then3, %if.then
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) #1

declare void @sqlite3_free(ptr noundef) #1

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #1

declare ptr @sqlite3_errmsg(ptr noundef) #1

declare ptr @sqlite3_sql(ptr noundef) #1

declare i32 @sqlite3_finalize(ptr noundef) #1

declare i32 @sqlite3_str_length(ptr noundef) #1

declare ptr @sqlite3_str_finish(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

declare ptr @sqlite3_vmprintf(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

declare void @sqlite3_result_error_nomem(ptr noundef) #1

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_str_free(...) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @diskusedVPrep(ptr noundef %p, ptr noundef %zFmt, ptr noundef %ap) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pStmt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  store ptr null, ptr %pStmt, align 8
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap.addr, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zSql, align 8
  %2 = load ptr, ptr %zSql, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %3, ptr noundef null)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds %struct.DiskUsed, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %zSql, align 8
  %call1 = call i32 @sqlite3_prepare_v2(ptr noundef %5, ptr noundef %6, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %db3 = getelementptr inbounds %struct.DiskUsed, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %db3, align 8
  %call4 = call ptr @sqlite3_errmsg(ptr noundef %10)
  %11 = load ptr, ptr %zSql, align 8
  call void (ptr, ptr, ...) @diskusedError(ptr noundef %8, ptr noundef @.str.70, ptr noundef %call4, ptr noundef %11)
  %12 = load ptr, ptr %pStmt, align 8
  %call5 = call i32 @sqlite3_finalize(ptr noundef %12)
  %13 = load ptr, ptr %p.addr, align 8
  call void @diskusedReset(ptr noundef %13)
  store ptr null, ptr %pStmt, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %14 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %14)
  %15 = load ptr, ptr %pStmt, align 8
  store ptr %15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

declare ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #1

declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #5

declare void @sqlite3_str_appendchar(ptr noundef, i32 noundef, i8 noundef signext) #1

declare void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sqlite3_reset(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
