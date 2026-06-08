; ModuleID = './source_snapshot/public_repos/sqlite/ext/rtree/rtree.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/rtree/rtree.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.RtreeNode = type { ptr, i64, i32, i32, ptr, ptr }
%struct.Rtree = type { %struct.sqlite3_vtab, ptr, i32, i8, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr, i32, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [97 x ptr] }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.RtreeCell = type { i64, [10 x %union.RtreeCoord] }
%union.RtreeCoord = type { float }
%struct.RtreeGeomCallback = type { ptr, ptr, ptr, ptr }
%struct.RtreeMatchArg = type { i32, %struct.RtreeGeomCallback, i32, ptr, [0 x double] }
%struct.RtreeCheck = type { ptr, ptr, ptr, i32, i32, ptr, [2 x ptr], i32, i32, i32, ptr, i32 }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.RtreeCursor = type { %struct.sqlite3_vtab_cursor, i8, i8, i8, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.RtreeSearchPoint, [5 x ptr], [41 x i32] }
%struct.sqlite3_vtab_cursor = type { ptr }
%struct.RtreeSearchPoint = type { double, i64, i8, i8, i8 }
%struct.RtreeConstraint = type { i32, i32, %union.anon, ptr }
%union.anon = type { double }
%struct.sqlite3_rtree_query_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i64, double, i32, i32, double, ptr }

@.str = private unnamed_addr constant [10 x i8] c"rtreenode\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rtreedepth\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"rtreecheck\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rtree\00", align 1
@rtreeModule = internal global %struct.sqlite3_module { i32 4, ptr @rtreeCreate, ptr @rtreeConnect, ptr @rtreeBestIndex, ptr @rtreeDisconnect, ptr @rtreeDestroy, ptr @rtreeOpen, ptr @rtreeClose, ptr @rtreeFilter, ptr @rtreeNext, ptr @rtreeEof, ptr @rtreeColumn, ptr @rtreeRowid, ptr @rtreeUpdate, ptr @rtreeBeginTransaction, ptr @rtreeEndTransaction, ptr @rtreeEndTransaction, ptr @rtreeRollback, ptr null, ptr @rtreeRename, ptr @rtreeSavepoint, ptr null, ptr null, ptr @rtreeShadowName, ptr @rtreeIntegrity }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"rtree_i32\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"{%lld\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Invalid argument to rtreedepth()\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"wrong number of arguments to function rtreecheck()\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"SELECT * FROM %Q.'%q_rowid'\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"SELECT * FROM %Q.%Q\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Schema corrupt or not an rtree\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"_rowid\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"_parent\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%z%s%z\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Node %lld is too small (%d bytes)\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Rtree depth out of range (%d)\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"Node %lld is too small for cell count of %d (%d bytes)\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"SELECT data FROM %Q.'%q_node' WHERE nodeno=?\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Node %lld missing from database\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"Dimension %d of cell %d on node %lld is corrupt\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"Dimension %d of cell %d on node %lld is corrupt relative to parent\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"SELECT parentnode FROM %Q.'%q_parent' WHERE nodeno=?1\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"SELECT nodeno FROM %Q.'%q_rowid' WHERE rowid=?1\00", align 1
@__const.rtreeCheckMapping.azSql = private unnamed_addr constant [2 x ptr] [ptr @.str.28, ptr @.str.29], align 8
@.str.30 = private unnamed_addr constant [45 x i8] c"Mapping (%lld -> %lld) missing from %s table\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"%_rowid\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"%_parent\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"Found (%lld -> %lld) in %s table, expected (%lld -> %lld)\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"SELECT count(*) FROM %Q.'%q%s'\00", align 1
@.str.35 = private unnamed_addr constant [67 x i8] c"Wrong number of entries in %%%s table - expected %lld, actual %lld\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"Wrong number of columns for an rtree table\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"Too few columns for an rtree table\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"Too many columns for an rtree table\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"Auxiliary rtree columns must be last\00", align 1
@__const.rtreeInit.aErrMsg = private unnamed_addr constant [5 x ptr] [ptr null, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 8
@.str.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"_node\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"CREATE TABLE x(%.*s INT\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c",%.*s\00", align 1
@rtreeInit.azFormat = internal global [2 x ptr] [ptr @.str.44, ptr @.str.45], align 8
@.str.44 = private unnamed_addr constant [11 x i8] c",%.*s REAL\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c",%.*s INT\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"PRAGMA %Q.page_size\00", align 1
@.str.48 = private unnamed_addr constant [57 x i8] c"SELECT length(data) FROM '%q'.'%q_node' WHERE nodeno = 1\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"undersize RTree blobs in \22%q_node\22\00", align 1
@rtreeSqlInit.azSql = internal global [8 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], align 8
@.str.50 = private unnamed_addr constant [53 x i8] c"INSERT OR REPLACE INTO '%q'.'%q_node' VALUES(?1, ?2)\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"DELETE FROM '%q'.'%q_node' WHERE nodeno = ?1\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"SELECT nodeno FROM '%q'.'%q_rowid' WHERE rowid = ?1\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"INSERT OR REPLACE INTO '%q'.'%q_rowid' VALUES(?1, ?2)\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"DELETE FROM '%q'.'%q_rowid' WHERE rowid = ?1\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"SELECT parentnode FROM '%q'.'%q_parent' WHERE nodeno = ?1\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"INSERT OR REPLACE INTO '%q'.'%q_parent' VALUES(?1, ?2)\00", align 1
@.str.57 = private unnamed_addr constant [47 x i8] c"DELETE FROM '%q'.'%q_parent' WHERE nodeno = ?1\00", align 1
@.str.58 = private unnamed_addr constant [62 x i8] c"CREATE TABLE \22%w\22.\22%w_rowid\22(rowid INTEGER PRIMARY KEY,nodeno\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c",a%d\00", align 1
@.str.60 = private unnamed_addr constant [64 x i8] c");CREATE TABLE \22%w\22.\22%w_node\22(nodeno INTEGER PRIMARY KEY,data);\00", align 1
@.str.61 = private unnamed_addr constant [70 x i8] c"CREATE TABLE \22%w\22.\22%w_parent\22(nodeno INTEGER PRIMARY KEY,parentnode);\00", align 1
@.str.62 = private unnamed_addr constant [49 x i8] c"INSERT INTO \22%w\22.\22%w_node\22VALUES(1,zeroblob(%d))\00", align 1
@.str.63 = private unnamed_addr constant [108 x i8] c"INSERT INTO\22%w\22.\22%w_rowid\22(rowid,nodeno)VALUES(?1,?2)ON CONFLICT(rowid)DO UPDATE SET nodeno=excluded.nodeno\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"SELECT * FROM \22%w\22.\22%w_rowid\22 WHERE rowid=?1\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"UPDATE \22%w\22.\22%w_rowid\22SET \00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"a%d=?%d\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c" WHERE rowid=?1\00", align 1
@.str.69 = private unnamed_addr constant [56 x i8] c"SELECT stat FROM %Q.sqlite_stat1 WHERE tbl = '%q_rowid'\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"sqlite_stat1\00", align 1
@.str.71 = private unnamed_addr constant [82 x i8] c"DROP TABLE '%q'.'%q_node';DROP TABLE '%q'.'%q_rowid';DROP TABLE '%q'.'%q_parent';\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"RtreeMatchArg\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"UNIQUE constraint failed: %s.%s\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"rtree constraint failed: %s.(%s<=%s)\00", align 1
@.str.76 = private unnamed_addr constant [145 x i8] c"ALTER TABLE %Q.'%q_node'   RENAME TO \22%w_node\22;ALTER TABLE %Q.'%q_parent' RENAME TO \22%w_parent\22;ALTER TABLE %Q.'%q_rowid'  RENAME TO \22%w_rowid\22;\00", align 1
@rtreeShadowName.azName = internal global [3 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79], align 8
@.str.77 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"In RTree %s.%s:\0A%z\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3RtreeInit(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %utf8 = alloca i32, align 4
  %rc = alloca i32, align 4
  %c = alloca ptr, align 8
  %c12 = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 1, ptr %utf8, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef @.str, i32 noundef 2, i32 noundef 1, ptr noundef null, ptr noundef @rtreenode, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str.1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef @rtreedepth, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %db.addr, align 8
  %call4 = call i32 @sqlite3_create_function(ptr noundef %4, ptr noundef @.str.2, i32 noundef -1, i32 noundef 1, ptr noundef null, ptr noundef @rtreecheck, ptr noundef null, ptr noundef null)
  store i32 %call4, ptr %rc, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  store ptr null, ptr %c, align 8
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %c, align 8
  %call8 = call i32 @sqlite3_create_module_v2(ptr noundef %6, ptr noundef @.str.3, ptr noundef @rtreeModule, ptr noundef %7, ptr noundef null)
  store i32 %call8, ptr %rc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %8 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  store ptr inttoptr (i64 1 to ptr), ptr %c12, align 8
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load ptr, ptr %c12, align 8
  %call13 = call i32 @sqlite3_create_module_v2(ptr noundef %9, ptr noundef @.str.4, ptr noundef @rtreeModule, ptr noundef %10, ptr noundef null)
  store i32 %call13, ptr %rc, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %11 = load i32, ptr %rc, align 4
  ret i32 %11
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreenode(ptr noundef %ctx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %node = alloca %struct.RtreeNode, align 8
  %tree = alloca %struct.Rtree, align 8
  %ii = alloca i32, align 4
  %nData = alloca i32, align 4
  %errCode = alloca i32, align 4
  %pOut = alloca ptr, align 8
  %cell = alloca %struct.RtreeCell, align 8
  %jj = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %node, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %tree, i8 0, i64 968, i1 false)
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_int(ptr noundef %2)
  %conv = trunc i32 %call to i8
  %nDim = getelementptr inbounds %struct.Rtree, ptr %tree, i32 0, i32 3
  store i8 %conv, ptr %nDim, align 4
  %nDim1 = getelementptr inbounds %struct.Rtree, ptr %tree, i32 0, i32 3
  %3 = load i8, ptr %nDim1, align 4
  %conv2 = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nDim4 = getelementptr inbounds %struct.Rtree, ptr %tree, i32 0, i32 3
  %4 = load i8, ptr %nDim4, align 4
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp sgt i32 %conv5, 5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %nDim8 = getelementptr inbounds %struct.Rtree, ptr %tree, i32 0, i32 3
  %5 = load i8, ptr %nDim8, align 4
  %conv9 = zext i8 %5 to i32
  %mul = mul nsw i32 %conv9, 2
  %conv10 = trunc i32 %mul to i8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %tree, i32 0, i32 4
  store i8 %conv10, ptr %nDim2, align 1
  %nDim11 = getelementptr inbounds %struct.Rtree, ptr %tree, i32 0, i32 3
  %6 = load i8, ptr %nDim11, align 4
  %conv12 = zext i8 %6 to i32
  %mul13 = mul nsw i32 8, %conv12
  %add = add nsw i32 8, %mul13
  %conv14 = trunc i32 %add to i8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %tree, i32 0, i32 6
  store i8 %conv14, ptr %nBytesPerCell, align 1
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr @sqlite3_value_blob(ptr noundef %8)
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %node, i32 0, i32 4
  store ptr %call16, ptr %zData, align 8
  %zData17 = getelementptr inbounds %struct.RtreeNode, ptr %node, i32 0, i32 4
  %9 = load ptr, ptr %zData17, align 8
  %cmp18 = icmp eq ptr %9, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end
  br label %return

if.end21:                                         ; preds = %if.end
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx22, align 8
  %call23 = call i32 @sqlite3_value_bytes(ptr noundef %11)
  store i32 %call23, ptr %nData, align 4
  %12 = load i32, ptr %nData, align 4
  %cmp24 = icmp slt i32 %12, 4
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  br label %return

if.end27:                                         ; preds = %if.end21
  %13 = load i32, ptr %nData, align 4
  %zData28 = getelementptr inbounds %struct.RtreeNode, ptr %node, i32 0, i32 4
  %14 = load ptr, ptr %zData28, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %14, i64 2
  %call30 = call i32 @readInt16(ptr noundef %arrayidx29)
  %nBytesPerCell31 = getelementptr inbounds %struct.Rtree, ptr %tree, i32 0, i32 6
  %15 = load i8, ptr %nBytesPerCell31, align 1
  %conv32 = zext i8 %15 to i32
  %mul33 = mul nsw i32 %call30, %conv32
  %add34 = add nsw i32 4, %mul33
  %cmp35 = icmp slt i32 %13, %add34
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end27
  br label %return

if.end38:                                         ; preds = %if.end27
  %call39 = call ptr @sqlite3_str_new(ptr noundef null)
  store ptr %call39, ptr %pOut, align 8
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %if.end38
  %16 = load i32, ptr %ii, align 4
  %zData40 = getelementptr inbounds %struct.RtreeNode, ptr %node, i32 0, i32 4
  %17 = load ptr, ptr %zData40, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %17, i64 2
  %call42 = call i32 @readInt16(ptr noundef %arrayidx41)
  %cmp43 = icmp slt i32 %16, %call42
  br i1 %cmp43, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  %18 = load i32, ptr %ii, align 4
  call void @nodeGetCell(ptr noundef %tree, ptr noundef %node, i32 noundef %18, ptr noundef %cell)
  %19 = load i32, ptr %ii, align 4
  %cmp45 = icmp sgt i32 %19, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.body
  %20 = load ptr, ptr %pOut, align 8
  call void @sqlite3_str_append(ptr noundef %20, ptr noundef @.str.5, i32 noundef 1)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %for.body
  %21 = load ptr, ptr %pOut, align 8
  %iRowid = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 0
  %22 = load i64, ptr %iRowid, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %21, ptr noundef @.str.6, i64 noundef %22)
  store i32 0, ptr %jj, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc, %if.end48
  %23 = load i32, ptr %jj, align 4
  %nDim250 = getelementptr inbounds %struct.Rtree, ptr %tree, i32 0, i32 4
  %24 = load i8, ptr %nDim250, align 1
  %conv51 = zext i8 %24 to i32
  %cmp52 = icmp slt i32 %23, %conv51
  br i1 %cmp52, label %for.body54, label %for.end

for.body54:                                       ; preds = %for.cond49
  %25 = load ptr, ptr %pOut, align 8
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 1
  %26 = load i32, ptr %jj, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx55 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 %idxprom
  %27 = load float, ptr %arrayidx55, align 4
  %conv56 = fpext float %27 to double
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %25, ptr noundef @.str.7, double noundef %conv56)
  br label %for.inc

for.inc:                                          ; preds = %for.body54
  %28 = load i32, ptr %jj, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %jj, align 4
  br label %for.cond49, !llvm.loop !6

for.end:                                          ; preds = %for.cond49
  %29 = load ptr, ptr %pOut, align 8
  call void @sqlite3_str_append(ptr noundef %29, ptr noundef @.str.8, i32 noundef 1)
  br label %for.inc57

for.inc57:                                        ; preds = %for.end
  %30 = load i32, ptr %ii, align 4
  %inc58 = add nsw i32 %30, 1
  store i32 %inc58, ptr %ii, align 4
  br label %for.cond, !llvm.loop !8

for.end59:                                        ; preds = %for.cond
  %31 = load ptr, ptr %pOut, align 8
  %call60 = call i32 @sqlite3_str_errcode(ptr noundef %31)
  store i32 %call60, ptr %errCode, align 4
  %32 = load ptr, ptr %ctx.addr, align 8
  %33 = load i32, ptr %errCode, align 4
  call void @sqlite3_result_error_code(ptr noundef %32, i32 noundef %33)
  %34 = load ptr, ptr %ctx.addr, align 8
  %35 = load ptr, ptr %pOut, align 8
  %call61 = call ptr @sqlite3_str_finish(ptr noundef %35)
  call void @sqlite3_result_text(ptr noundef %34, ptr noundef %call61, i32 noundef -1, ptr noundef @sqlite3_free)
  br label %return

return:                                           ; preds = %for.end59, %if.then37, %if.then26, %if.then20, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreedepth(ptr noundef %ctx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zBlob = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  %cmp = icmp ne i32 %call, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_bytes(ptr noundef %4)
  %cmp3 = icmp slt i32 %call2, 2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error(ptr noundef %5, ptr noundef @.str.9, i32 noundef -1)
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx4, align 8
  %call5 = call ptr @sqlite3_value_blob(ptr noundef %7)
  store ptr %call5, ptr %zBlob, align 8
  %8 = load ptr, ptr %zBlob, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  %9 = load ptr, ptr %ctx.addr, align 8
  %10 = load ptr, ptr %zBlob, align 8
  %call7 = call i32 @readInt16(ptr noundef %10)
  call void @sqlite3_result_int(ptr noundef %9, i32 noundef %call7)
  br label %if.end

if.else8:                                         ; preds = %if.else
  %11 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreecheck(ptr noundef %ctx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zReport = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %zTab = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %nArg.addr, align 4
  %cmp1 = icmp ne i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error(ptr noundef %2, ptr noundef @.str.10, i32 noundef -1)
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true, %entry
  store ptr null, ptr %zReport, align 8
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %4)
  store ptr %call, ptr %zDb, align 8
  %5 = load i32, ptr %nArg.addr, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %6 = load ptr, ptr %zDb, align 8
  store ptr %6, ptr %zTab, align 8
  store ptr @.str.11, ptr %zDb, align 8
  br label %if.end

if.else4:                                         ; preds = %if.else
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx5, align 8
  %call6 = call ptr @sqlite3_value_text(ptr noundef %8)
  store ptr %call6, ptr %zTab, align 8
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  %9 = load ptr, ptr %ctx.addr, align 8
  %call7 = call ptr @sqlite3_context_db_handle(ptr noundef %9)
  %10 = load ptr, ptr %zDb, align 8
  %11 = load ptr, ptr %zTab, align 8
  %call8 = call i32 @rtreeCheckTable(ptr noundef %call7, ptr noundef %10, ptr noundef %11, ptr noundef %zReport)
  store i32 %call8, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %ctx.addr, align 8
  %14 = load ptr, ptr %zReport, align 8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %15 = load ptr, ptr %zReport, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %15, %cond.true ], [ @.str.12, %cond.false ]
  call void @sqlite3_result_text(ptr noundef %13, ptr noundef %cond, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end12

if.else11:                                        ; preds = %if.end
  %16 = load ptr, ptr %ctx.addr, align 8
  %17 = load i32, ptr %rc, align 4
  call void @sqlite3_result_error_code(ptr noundef %16, i32 noundef %17)
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %cond.end
  %18 = load ptr, ptr %zReport, align 8
  call void @sqlite3_free(ptr noundef %18)
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  ret void
}

declare i32 @sqlite3_create_module_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_rtree_geometry_callback(ptr noundef %db, ptr noundef %zGeom, ptr noundef %xGeom, ptr noundef %pContext) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zGeom.addr = alloca ptr, align 8
  %xGeom.addr = alloca ptr, align 8
  %pContext.addr = alloca ptr, align 8
  %pGeomCtx = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zGeom, ptr %zGeom.addr, align 8
  store ptr %xGeom, ptr %xGeom.addr, align 8
  store ptr %pContext, ptr %pContext.addr, align 8
  %call = call ptr @sqlite3_malloc(i32 noundef 32)
  store ptr %call, ptr %pGeomCtx, align 8
  %0 = load ptr, ptr %pGeomCtx, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %xGeom.addr, align 8
  %2 = load ptr, ptr %pGeomCtx, align 8
  %xGeom1 = getelementptr inbounds %struct.RtreeGeomCallback, ptr %2, i32 0, i32 0
  store ptr %1, ptr %xGeom1, align 8
  %3 = load ptr, ptr %pGeomCtx, align 8
  %xQueryFunc = getelementptr inbounds %struct.RtreeGeomCallback, ptr %3, i32 0, i32 1
  store ptr null, ptr %xQueryFunc, align 8
  %4 = load ptr, ptr %pGeomCtx, align 8
  %xDestructor = getelementptr inbounds %struct.RtreeGeomCallback, ptr %4, i32 0, i32 2
  store ptr null, ptr %xDestructor, align 8
  %5 = load ptr, ptr %pContext.addr, align 8
  %6 = load ptr, ptr %pGeomCtx, align 8
  %pContext2 = getelementptr inbounds %struct.RtreeGeomCallback, ptr %6, i32 0, i32 3
  store ptr %5, ptr %pContext2, align 8
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %zGeom.addr, align 8
  %9 = load ptr, ptr %pGeomCtx, align 8
  %call3 = call i32 @sqlite3_create_function_v2(ptr noundef %7, ptr noundef %8, i32 noundef -1, i32 noundef 5, ptr noundef %9, ptr noundef @geomCallback, ptr noundef null, ptr noundef null, ptr noundef @rtreeFreeCallback)
  store i32 %call3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare ptr @sqlite3_malloc(i32 noundef) #1

declare i32 @sqlite3_create_function_v2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @geomCallback(ptr noundef %ctx, i32 noundef %nArg, ptr noundef %aArg) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %aArg.addr = alloca ptr, align 8
  %pGeomCtx = alloca ptr, align 8
  %pBlob = alloca ptr, align 8
  %nBlob = alloca i64, align 8
  %memErr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %aArg, ptr %aArg.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %call = call ptr @sqlite3_user_data(ptr noundef %0)
  store ptr %call, ptr %pGeomCtx, align 8
  store i32 0, ptr %memErr, align 4
  %1 = load i32, ptr %nArg.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %add = add i64 56, %mul
  %2 = load i32, ptr %nArg.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 %conv1, 8
  %add3 = add i64 %add, %mul2
  store i64 %add3, ptr %nBlob, align 8
  %3 = load i64, ptr %nBlob, align 8
  %call4 = call ptr @sqlite3_malloc64(i64 noundef %3)
  store ptr %call4, ptr %pBlob, align 8
  %4 = load ptr, ptr %pBlob, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %5)
  br label %if.end30

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %nBlob, align 8
  %conv5 = trunc i64 %6 to i32
  %7 = load ptr, ptr %pBlob, align 8
  %iSize = getelementptr inbounds %struct.RtreeMatchArg, ptr %7, i32 0, i32 0
  store i32 %conv5, ptr %iSize, align 8
  %8 = load ptr, ptr %pBlob, align 8
  %cb = getelementptr inbounds %struct.RtreeMatchArg, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pGeomCtx, align 8
  %arrayidx = getelementptr inbounds %struct.RtreeGeomCallback, ptr %9, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cb, ptr align 8 %arrayidx, i64 32, i1 false)
  %10 = load ptr, ptr %pBlob, align 8
  %aParam = getelementptr inbounds %struct.RtreeMatchArg, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %nArg.addr, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [0 x double], ptr %aParam, i64 0, i64 %idxprom
  %12 = load ptr, ptr %pBlob, align 8
  %apSqlParam = getelementptr inbounds %struct.RtreeMatchArg, ptr %12, i32 0, i32 3
  store ptr %arrayidx6, ptr %apSqlParam, align 8
  %13 = load i32, ptr %nArg.addr, align 4
  %14 = load ptr, ptr %pBlob, align 8
  %nParam = getelementptr inbounds %struct.RtreeMatchArg, ptr %14, i32 0, i32 2
  store i32 %13, ptr %nParam, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %aArg.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %17, i64 %idxprom8
  %19 = load ptr, ptr %arrayidx9, align 8
  %call10 = call ptr @sqlite3_value_dup(ptr noundef %19)
  %20 = load ptr, ptr %pBlob, align 8
  %apSqlParam11 = getelementptr inbounds %struct.RtreeMatchArg, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %apSqlParam11, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %21, i64 %idxprom12
  store ptr %call10, ptr %arrayidx13, align 8
  %23 = load ptr, ptr %pBlob, align 8
  %apSqlParam14 = getelementptr inbounds %struct.RtreeMatchArg, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %apSqlParam14, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %24, i64 %idxprom15
  %26 = load ptr, ptr %arrayidx16, align 8
  %cmp17 = icmp eq ptr %26, null
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %for.body
  store i32 1, ptr %memErr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then19, %for.body
  %27 = load ptr, ptr %aArg.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %27, i64 %idxprom20
  %29 = load ptr, ptr %arrayidx21, align 8
  %call22 = call double @sqlite3_value_double(ptr noundef %29)
  %30 = load ptr, ptr %pBlob, align 8
  %aParam23 = getelementptr inbounds %struct.RtreeMatchArg, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds [0 x double], ptr %aParam23, i64 0, i64 %idxprom24
  store double %call22, ptr %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %memErr, align 4
  %tobool26 = icmp ne i32 %33, 0
  br i1 %tobool26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %for.end
  %34 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %34)
  %35 = load ptr, ptr %pBlob, align 8
  call void @rtreeMatchArgFree(ptr noundef %35)
  br label %if.end29

if.else28:                                        ; preds = %for.end
  %36 = load ptr, ptr %ctx.addr, align 8
  %37 = load ptr, ptr %pBlob, align 8
  call void @sqlite3_result_pointer(ptr noundef %36, ptr noundef %37, ptr noundef @.str.73, ptr noundef @rtreeMatchArgFree)
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeFreeCallback(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pInfo = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pInfo, align 8
  %1 = load ptr, ptr %pInfo, align 8
  %xDestructor = getelementptr inbounds %struct.RtreeGeomCallback, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %xDestructor, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pInfo, align 8
  %xDestructor1 = getelementptr inbounds %struct.RtreeGeomCallback, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %xDestructor1, align 8
  %5 = load ptr, ptr %pInfo, align 8
  %pContext = getelementptr inbounds %struct.RtreeGeomCallback, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %pContext, align 8
  call void %4(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_rtree_query_callback(ptr noundef %db, ptr noundef %zQueryFunc, ptr noundef %xQueryFunc, ptr noundef %pContext, ptr noundef %xDestructor) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zQueryFunc.addr = alloca ptr, align 8
  %xQueryFunc.addr = alloca ptr, align 8
  %pContext.addr = alloca ptr, align 8
  %xDestructor.addr = alloca ptr, align 8
  %pGeomCtx = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zQueryFunc, ptr %zQueryFunc.addr, align 8
  store ptr %xQueryFunc, ptr %xQueryFunc.addr, align 8
  store ptr %pContext, ptr %pContext.addr, align 8
  store ptr %xDestructor, ptr %xDestructor.addr, align 8
  %call = call ptr @sqlite3_malloc(i32 noundef 32)
  store ptr %call, ptr %pGeomCtx, align 8
  %0 = load ptr, ptr %pGeomCtx, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %xDestructor.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %2 = load ptr, ptr %xDestructor.addr, align 8
  %3 = load ptr, ptr %pContext.addr, align 8
  call void %2(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %4 = load ptr, ptr %pGeomCtx, align 8
  %xGeom = getelementptr inbounds %struct.RtreeGeomCallback, ptr %4, i32 0, i32 0
  store ptr null, ptr %xGeom, align 8
  %5 = load ptr, ptr %xQueryFunc.addr, align 8
  %6 = load ptr, ptr %pGeomCtx, align 8
  %xQueryFunc4 = getelementptr inbounds %struct.RtreeGeomCallback, ptr %6, i32 0, i32 1
  store ptr %5, ptr %xQueryFunc4, align 8
  %7 = load ptr, ptr %xDestructor.addr, align 8
  %8 = load ptr, ptr %pGeomCtx, align 8
  %xDestructor5 = getelementptr inbounds %struct.RtreeGeomCallback, ptr %8, i32 0, i32 2
  store ptr %7, ptr %xDestructor5, align 8
  %9 = load ptr, ptr %pContext.addr, align 8
  %10 = load ptr, ptr %pGeomCtx, align 8
  %pContext6 = getelementptr inbounds %struct.RtreeGeomCallback, ptr %10, i32 0, i32 3
  store ptr %9, ptr %pContext6, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %zQueryFunc.addr, align 8
  %13 = load ptr, ptr %pGeomCtx, align 8
  %call7 = call i32 @sqlite3_create_function_v2(ptr noundef %11, ptr noundef %12, i32 noundef -1, i32 noundef 5, ptr noundef %13, ptr noundef @geomCallback, ptr noundef null, ptr noundef null, ptr noundef @rtreeFreeCallback)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_rtree_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3RtreeInit(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @sqlite3_value_int(ptr noundef) #1

declare ptr @sqlite3_value_blob(ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @readInt16(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %2 = load ptr, ptr %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %add = add nsw i32 %shl, %conv2
  ret i32 %add
}

declare ptr @sqlite3_str_new(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nodeGetCell(ptr noundef %pRtree, ptr noundef %pNode, i32 noundef %iCell, ptr noundef %pCell) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %iCell.addr = alloca i32, align 4
  %pCell.addr = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %pCoord = alloca ptr, align 8
  %ii = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %iCell, ptr %iCell.addr, align 4
  store ptr %pCell, ptr %pCell.addr, align 8
  store i32 0, ptr %ii, align 4
  %0 = load ptr, ptr %pRtree.addr, align 8
  %1 = load ptr, ptr %pNode.addr, align 8
  %2 = load i32, ptr %iCell.addr, align 4
  %call = call i64 @nodeGetRowid(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %3 = load ptr, ptr %pCell.addr, align 8
  %iRowid = getelementptr inbounds %struct.RtreeCell, ptr %3, i32 0, i32 0
  store i64 %call, ptr %iRowid, align 8
  %4 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %zData, align 8
  %6 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 6
  %7 = load i8, ptr %nBytesPerCell, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr %iCell.addr, align 4
  %mul = mul nsw i32 %conv, %8
  %add = add nsw i32 12, %mul
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %pData, align 8
  %9 = load ptr, ptr %pCell.addr, align 8
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %9, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 0
  store ptr %arraydecay, ptr %pCoord, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %10 = load ptr, ptr %pData, align 8
  %11 = load ptr, ptr %pCoord, align 8
  %12 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %union.RtreeCoord, ptr %11, i64 %idxprom
  call void @readCoord(ptr noundef %10, ptr noundef %arrayidx)
  %13 = load ptr, ptr %pData, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %13, i64 4
  %14 = load ptr, ptr %pCoord, align 8
  %15 = load i32, ptr %ii, align 4
  %add2 = add nsw i32 %15, 1
  %idxprom3 = sext i32 %add2 to i64
  %arrayidx4 = getelementptr inbounds %union.RtreeCoord, ptr %14, i64 %idxprom3
  call void @readCoord(ptr noundef %add.ptr1, ptr noundef %arrayidx4)
  %16 = load ptr, ptr %pData, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %16, i64 8
  store ptr %add.ptr5, ptr %pData, align 8
  %17 = load i32, ptr %ii, align 4
  %add6 = add nsw i32 %17, 2
  store i32 %add6, ptr %ii, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load i32, ptr %ii, align 4
  %19 = load ptr, ptr %pRtree.addr, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %19, i32 0, i32 4
  %20 = load i8, ptr %nDim2, align 1
  %conv7 = zext i8 %20 to i32
  %cmp = icmp slt i32 %18, %conv7
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  ret void
}

declare void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #1

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #1

declare i32 @sqlite3_str_errcode(ptr noundef) #1

declare void @sqlite3_result_error_code(ptr noundef, i32 noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @sqlite3_str_finish(ptr noundef) #1

declare void @sqlite3_free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @nodeGetRowid(ptr noundef %pRtree, ptr noundef %pNode, i32 noundef %iCell) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %iCell.addr = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %iCell, ptr %iCell.addr, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zData, align 8
  %2 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 6
  %3 = load i8, ptr %nBytesPerCell, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, ptr %iCell.addr, align 4
  %mul = mul nsw i32 %conv, %4
  %add = add nsw i32 4, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %call = call i64 @readInt64(ptr noundef %arrayidx)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readCoord(ptr noundef %p, ptr noundef %pCoord) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pCoord.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pCoord, ptr %pCoord.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load ptr, ptr %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %add = add i32 %shl, %shl3
  %4 = load ptr, ptr %p.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %add7 = add i32 %add, %shl6
  %6 = load ptr, ptr %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %shl10 = shl i32 %conv9, 0
  %add11 = add i32 %add7, %shl10
  %8 = load ptr, ptr %pCoord.addr, align 8
  store i32 %add11, ptr %8, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @readInt64(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 56
  %2 = load ptr, ptr %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 48
  %add = add i64 %shl, %shl3
  %4 = load ptr, ptr %p.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 40
  %add7 = add i64 %add, %shl6
  %6 = load ptr, ptr %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i64
  %shl10 = shl i64 %conv9, 32
  %add11 = add i64 %add7, %shl10
  %8 = load ptr, ptr %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %8, i64 4
  %9 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %9 to i64
  %shl14 = shl i64 %conv13, 24
  %add15 = add i64 %add11, %shl14
  %10 = load ptr, ptr %p.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %10, i64 5
  %11 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %11 to i64
  %shl18 = shl i64 %conv17, 16
  %add19 = add i64 %add15, %shl18
  %12 = load ptr, ptr %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %12, i64 6
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i64
  %shl22 = shl i64 %conv21, 8
  %add23 = add i64 %add19, %shl22
  %14 = load ptr, ptr %p.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %14, i64 7
  %15 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %15 to i64
  %shl26 = shl i64 %conv25, 0
  %add27 = add i64 %add23, %shl26
  ret i64 %add27
}

declare i32 @sqlite3_value_type(ptr noundef) #1

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #1

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

declare void @sqlite3_result_error_nomem(ptr noundef) #1

declare ptr @sqlite3_value_text(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeCheckTable(ptr noundef %db, ptr noundef %zDb, ptr noundef %zTab, ptr noundef %pzReport) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %zTab.addr = alloca ptr, align 8
  %pzReport.addr = alloca ptr, align 8
  %check = alloca %struct.RtreeCheck, align 8
  %pStmt = alloca ptr, align 8
  %nAux = alloca i32, align 4
  %rc12 = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  store ptr %zTab, ptr %zTab.addr, align 8
  store ptr %pzReport, ptr %pzReport.addr, align 8
  store ptr null, ptr %pStmt, align 8
  store i32 0, ptr %nAux, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %check, i8 0, i64 88, i1 false)
  %0 = load ptr, ptr %db.addr, align 8
  %db1 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 0
  store ptr %0, ptr %db1, align 8
  %1 = load ptr, ptr %zDb.addr, align 8
  %zDb2 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 1
  store ptr %1, ptr %zDb2, align 8
  %2 = load ptr, ptr %zTab.addr, align 8
  %zTab3 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 2
  store ptr %2, ptr %zTab3, align 8
  %3 = load ptr, ptr %zDb.addr, align 8
  %4 = load ptr, ptr %zTab.addr, align 8
  %call = call ptr (ptr, ptr, ...) @rtreeCheckPrepare(ptr noundef %check, ptr noundef @.str.13, ptr noundef %3, ptr noundef %4)
  store ptr %call, ptr %pStmt, align 8
  %5 = load ptr, ptr %pStmt, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pStmt, align 8
  %call4 = call i32 @sqlite3_column_count(ptr noundef %6)
  %sub = sub nsw i32 %call4, 2
  store i32 %sub, ptr %nAux, align 4
  %7 = load ptr, ptr %pStmt, align 8
  %call5 = call i32 @sqlite3_finalize(ptr noundef %7)
  br label %if.end8

if.else:                                          ; preds = %entry
  %rc = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 9
  %8 = load i32, ptr %rc, align 8
  %cmp = icmp ne i32 %8, 7
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %rc7 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 9
  store i32 0, ptr %rc7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %9 = load ptr, ptr %zDb.addr, align 8
  %10 = load ptr, ptr %zTab.addr, align 8
  %call9 = call ptr (ptr, ptr, ...) @rtreeCheckPrepare(ptr noundef %check, ptr noundef @.str.14, ptr noundef %9, ptr noundef %10)
  store ptr %call9, ptr %pStmt, align 8
  %11 = load ptr, ptr %pStmt, align 8
  %tobool10 = icmp ne ptr %11, null
  br i1 %tobool10, label %if.then11, label %if.end33

if.then11:                                        ; preds = %if.end8
  %12 = load ptr, ptr %pStmt, align 8
  %call13 = call i32 @sqlite3_column_count(ptr noundef %12)
  %sub14 = sub nsw i32 %call13, 1
  %13 = load i32, ptr %nAux, align 4
  %sub15 = sub nsw i32 %sub14, %13
  %div = sdiv i32 %sub15, 2
  %nDim = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 4
  store i32 %div, ptr %nDim, align 4
  %nDim16 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 4
  %14 = load i32, ptr %nDim16, align 4
  %cmp17 = icmp slt i32 %14, 1
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.then11
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %check, ptr noundef @.str.15)
  br label %if.end26

if.else19:                                        ; preds = %if.then11
  %15 = load ptr, ptr %pStmt, align 8
  %call20 = call i32 @sqlite3_step(ptr noundef %15)
  %cmp21 = icmp eq i32 100, %call20
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.else19
  %16 = load ptr, ptr %pStmt, align 8
  %call23 = call i32 @sqlite3_column_type(ptr noundef %16, i32 noundef 1)
  %cmp24 = icmp eq i32 %call23, 1
  %conv = zext i1 %cmp24 to i32
  %bInt = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 3
  store i32 %conv, ptr %bInt, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.else19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then18
  %17 = load ptr, ptr %pStmt, align 8
  %call27 = call i32 @sqlite3_finalize(ptr noundef %17)
  store i32 %call27, ptr %rc12, align 4
  %18 = load i32, ptr %rc12, align 4
  %cmp28 = icmp ne i32 %18, 11
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  %19 = load i32, ptr %rc12, align 4
  %rc31 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 9
  store i32 %19, ptr %rc31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end8
  %nDim34 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 4
  %20 = load i32, ptr %nDim34, align 4
  %cmp35 = icmp sge i32 %20, 1
  br i1 %cmp35, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end33
  %rc38 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 9
  %21 = load i32, ptr %rc38, align 8
  %cmp39 = icmp eq i32 %21, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then37
  call void @rtreeCheckNode(ptr noundef %check, i32 noundef 0, ptr noundef null, i64 noundef 1)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then37
  %nLeaf = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 7
  %22 = load i32, ptr %nLeaf, align 8
  %conv43 = sext i32 %22 to i64
  call void @rtreeCheckCount(ptr noundef %check, ptr noundef @.str.16, i64 noundef %conv43)
  %nNonLeaf = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 8
  %23 = load i32, ptr %nNonLeaf, align 4
  %conv44 = sext i32 %23 to i64
  call void @rtreeCheckCount(ptr noundef %check, ptr noundef @.str.17, i64 noundef %conv44)
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.end33
  %pGetNode = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 5
  %24 = load ptr, ptr %pGetNode, align 8
  %call46 = call i32 @sqlite3_finalize(ptr noundef %24)
  %aCheckMapping = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %aCheckMapping, i64 0, i64 0
  %25 = load ptr, ptr %arrayidx, align 8
  %call47 = call i32 @sqlite3_finalize(ptr noundef %25)
  %aCheckMapping48 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 6
  %arrayidx49 = getelementptr inbounds [2 x ptr], ptr %aCheckMapping48, i64 0, i64 1
  %26 = load ptr, ptr %arrayidx49, align 8
  %call50 = call i32 @sqlite3_finalize(ptr noundef %26)
  %zReport = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 10
  %27 = load ptr, ptr %zReport, align 8
  %28 = load ptr, ptr %pzReport.addr, align 8
  store ptr %27, ptr %28, align 8
  %rc51 = getelementptr inbounds %struct.RtreeCheck, ptr %check, i32 0, i32 9
  %29 = load i32, ptr %rc51, align 8
  ret i32 %29
}

declare ptr @sqlite3_context_db_handle(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @rtreeCheckPrepare(ptr noundef %pCheck, ptr noundef %zFmt, ...) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %z = alloca ptr, align 8
  %pRet = alloca ptr, align 8
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  store ptr null, ptr %pRet, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %z, align 8
  %2 = load ptr, ptr %pCheck.addr, align 8
  %rc = getelementptr inbounds %struct.RtreeCheck, ptr %2, i32 0, i32 9
  %3 = load i32, ptr %rc, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %z, align 8
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %pCheck.addr, align 8
  %rc3 = getelementptr inbounds %struct.RtreeCheck, ptr %5, i32 0, i32 9
  store i32 7, ptr %rc3, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %pCheck.addr, align 8
  %db = getelementptr inbounds %struct.RtreeCheck, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db, align 8
  %8 = load ptr, ptr %z, align 8
  %call4 = call i32 @sqlite3_prepare_v2(ptr noundef %7, ptr noundef %8, i32 noundef -1, ptr noundef %pRet, ptr noundef null)
  %9 = load ptr, ptr %pCheck.addr, align 8
  %rc5 = getelementptr inbounds %struct.RtreeCheck, ptr %9, i32 0, i32 9
  store i32 %call4, ptr %rc5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %z, align 8
  call void @sqlite3_free(ptr noundef %10)
  call void @llvm.va_end(ptr %ap)
  %11 = load ptr, ptr %pRet, align 8
  ret ptr %11
}

declare i32 @sqlite3_column_count(ptr noundef) #1

declare i32 @sqlite3_finalize(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeCheckAppendMsg(ptr noundef %pCheck, ptr noundef %zFmt, ...) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %pCheck.addr, align 8
  %rc = getelementptr inbounds %struct.RtreeCheck, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %rc, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pCheck.addr, align 8
  %nErr = getelementptr inbounds %struct.RtreeCheck, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %nErr, align 8
  %cmp1 = icmp slt i32 %3, 100
  br i1 %cmp1, label %if.then, label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %zFmt.addr, align 8
  %5 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %4, ptr noundef %5)
  store ptr %call, ptr %z, align 8
  %6 = load ptr, ptr %z, align 8
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %pCheck.addr, align 8
  %rc4 = getelementptr inbounds %struct.RtreeCheck, ptr %7, i32 0, i32 9
  store i32 7, ptr %rc4, align 8
  br label %if.end12

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %pCheck.addr, align 8
  %zReport = getelementptr inbounds %struct.RtreeCheck, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %zReport, align 8
  %10 = load ptr, ptr %pCheck.addr, align 8
  %zReport5 = getelementptr inbounds %struct.RtreeCheck, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %zReport5, align 8
  %tobool = icmp ne ptr %11, null
  %12 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.19, ptr @.str.20
  %13 = load ptr, ptr %z, align 8
  %call6 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.18, ptr noundef %9, ptr noundef %cond, ptr noundef %13)
  %14 = load ptr, ptr %pCheck.addr, align 8
  %zReport7 = getelementptr inbounds %struct.RtreeCheck, ptr %14, i32 0, i32 10
  store ptr %call6, ptr %zReport7, align 8
  %15 = load ptr, ptr %pCheck.addr, align 8
  %zReport8 = getelementptr inbounds %struct.RtreeCheck, ptr %15, i32 0, i32 10
  %16 = load ptr, ptr %zReport8, align 8
  %cmp9 = icmp eq ptr %16, null
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %17 = load ptr, ptr %pCheck.addr, align 8
  %rc11 = getelementptr inbounds %struct.RtreeCheck, ptr %17, i32 0, i32 9
  store i32 7, ptr %rc11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then3
  %18 = load ptr, ptr %pCheck.addr, align 8
  %nErr13 = getelementptr inbounds %struct.RtreeCheck, ptr %18, i32 0, i32 11
  %19 = load i32, ptr %nErr13, align 8
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %nErr13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %land.lhs.true, %entry
  call void @llvm.va_end(ptr %ap)
  ret void
}

declare i32 @sqlite3_step(ptr noundef) #1

declare i32 @sqlite3_column_type(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeCheckNode(ptr noundef %pCheck, i32 noundef %iDepth, ptr noundef %aParent, i64 noundef %iNode) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %iDepth.addr = alloca i32, align 4
  %aParent.addr = alloca ptr, align 8
  %iNode.addr = alloca i64, align 8
  %aNode = alloca ptr, align 8
  %nNode = alloca i32, align 4
  %nCell = alloca i32, align 4
  %i = alloca i32, align 4
  %pCell = alloca ptr, align 8
  %iVal = alloca i64, align 8
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store i32 %iDepth, ptr %iDepth.addr, align 4
  store ptr %aParent, ptr %aParent.addr, align 8
  store i64 %iNode, ptr %iNode.addr, align 8
  store ptr null, ptr %aNode, align 8
  store i32 0, ptr %nNode, align 4
  %0 = load ptr, ptr %pCheck.addr, align 8
  %1 = load i64, ptr %iNode.addr, align 8
  %call = call ptr @rtreeCheckGetNode(ptr noundef %0, i64 noundef %1, ptr noundef %nNode)
  store ptr %call, ptr %aNode, align 8
  %2 = load ptr, ptr %aNode, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end34

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %nNode, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %pCheck.addr, align 8
  %5 = load i64, ptr %iNode.addr, align 8
  %6 = load i32, ptr %nNode, align 4
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %4, ptr noundef @.str.21, i64 noundef %5, i32 noundef %6)
  br label %if.end33

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr %aParent.addr, align 8
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.else
  %8 = load ptr, ptr %aNode, align 8
  %call4 = call i32 @readInt16(ptr noundef %8)
  store i32 %call4, ptr %iDepth.addr, align 4
  %9 = load i32, ptr %iDepth.addr, align 4
  %cmp5 = icmp sgt i32 %9, 40
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %10 = load ptr, ptr %pCheck.addr, align 8
  %11 = load i32, ptr %iDepth.addr, align 4
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %10, ptr noundef @.str.22, i32 noundef %11)
  %12 = load ptr, ptr %aNode, align 8
  call void @sqlite3_free(ptr noundef %12)
  br label %if.end34

if.end:                                           ; preds = %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.else
  %13 = load ptr, ptr %aNode, align 8
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 2
  %call8 = call i32 @readInt16(ptr noundef %arrayidx)
  store i32 %call8, ptr %nCell, align 4
  %14 = load i32, ptr %nCell, align 4
  %15 = load ptr, ptr %pCheck.addr, align 8
  %nDim = getelementptr inbounds %struct.RtreeCheck, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %nDim, align 4
  %mul = mul nsw i32 %16, 2
  %mul9 = mul nsw i32 %mul, 4
  %add = add nsw i32 8, %mul9
  %mul10 = mul nsw i32 %14, %add
  %add11 = add nsw i32 4, %mul10
  %17 = load i32, ptr %nNode, align 4
  %cmp12 = icmp sgt i32 %add11, %17
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end7
  %18 = load ptr, ptr %pCheck.addr, align 8
  %19 = load i64, ptr %iNode.addr, align 8
  %20 = load i32, ptr %nCell, align 4
  %21 = load i32, ptr %nNode, align 4
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %18, ptr noundef @.str.23, i64 noundef %19, i32 noundef %20, i32 noundef %21)
  br label %if.end32

if.else14:                                        ; preds = %if.end7
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else14
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %nCell, align 4
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %aNode, align 8
  %25 = load i32, ptr %i, align 4
  %26 = load ptr, ptr %pCheck.addr, align 8
  %nDim16 = getelementptr inbounds %struct.RtreeCheck, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %nDim16, align 4
  %mul17 = mul nsw i32 %27, 2
  %mul18 = mul nsw i32 %mul17, 4
  %add19 = add nsw i32 8, %mul18
  %mul20 = mul nsw i32 %25, %add19
  %add21 = add nsw i32 4, %mul20
  %idxprom = sext i32 %add21 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %24, i64 %idxprom
  store ptr %arrayidx22, ptr %pCell, align 8
  %28 = load ptr, ptr %pCell, align 8
  %call23 = call i64 @readInt64(ptr noundef %28)
  store i64 %call23, ptr %iVal, align 8
  %29 = load ptr, ptr %pCheck.addr, align 8
  %30 = load i64, ptr %iNode.addr, align 8
  %31 = load i32, ptr %i, align 4
  %32 = load ptr, ptr %pCell, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %32, i64 8
  %33 = load ptr, ptr %aParent.addr, align 8
  call void @rtreeCheckCellCoord(ptr noundef %29, i64 noundef %30, i32 noundef %31, ptr noundef %arrayidx24, ptr noundef %33)
  %34 = load i32, ptr %iDepth.addr, align 4
  %cmp25 = icmp sgt i32 %34, 0
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %for.body
  %35 = load ptr, ptr %pCheck.addr, align 8
  %36 = load i64, ptr %iVal, align 8
  %37 = load i64, ptr %iNode.addr, align 8
  call void @rtreeCheckMapping(ptr noundef %35, i32 noundef 0, i64 noundef %36, i64 noundef %37)
  %38 = load ptr, ptr %pCheck.addr, align 8
  %39 = load i32, ptr %iDepth.addr, align 4
  %sub = sub nsw i32 %39, 1
  %40 = load ptr, ptr %pCell, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %40, i64 8
  %41 = load i64, ptr %iVal, align 8
  call void @rtreeCheckNode(ptr noundef %38, i32 noundef %sub, ptr noundef %arrayidx27, i64 noundef %41)
  %42 = load ptr, ptr %pCheck.addr, align 8
  %nNonLeaf = getelementptr inbounds %struct.RtreeCheck, ptr %42, i32 0, i32 8
  %43 = load i32, ptr %nNonLeaf, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %nNonLeaf, align 4
  br label %if.end30

if.else28:                                        ; preds = %for.body
  %44 = load ptr, ptr %pCheck.addr, align 8
  %45 = load i64, ptr %iVal, align 8
  %46 = load i64, ptr %iNode.addr, align 8
  call void @rtreeCheckMapping(ptr noundef %44, i32 noundef 1, i64 noundef %45, i64 noundef %46)
  %47 = load ptr, ptr %pCheck.addr, align 8
  %nLeaf = getelementptr inbounds %struct.RtreeCheck, ptr %47, i32 0, i32 7
  %48 = load i32, ptr %nLeaf, align 8
  %inc29 = add nsw i32 %48, 1
  store i32 %inc29, ptr %nLeaf, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %49 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %49, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %if.end32

if.end32:                                         ; preds = %for.end, %if.then13
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then1
  %50 = load ptr, ptr %aNode, align 8
  call void @sqlite3_free(ptr noundef %50)
  br label %if.end34

if.end34:                                         ; preds = %if.then6, %if.end33, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeCheckCount(ptr noundef %pCheck, ptr noundef %zTbl, i64 noundef %nExpect) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %zTbl.addr = alloca ptr, align 8
  %nExpect.addr = alloca i64, align 8
  %pCount = alloca ptr, align 8
  %nActual = alloca i64, align 8
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store ptr %zTbl, ptr %zTbl.addr, align 8
  store i64 %nExpect, ptr %nExpect.addr, align 8
  %0 = load ptr, ptr %pCheck.addr, align 8
  %rc = getelementptr inbounds %struct.RtreeCheck, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %rc, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCheck.addr, align 8
  %3 = load ptr, ptr %pCheck.addr, align 8
  %zDb = getelementptr inbounds %struct.RtreeCheck, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %zDb, align 8
  %5 = load ptr, ptr %pCheck.addr, align 8
  %zTab = getelementptr inbounds %struct.RtreeCheck, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %zTab, align 8
  %7 = load ptr, ptr %zTbl.addr, align 8
  %call = call ptr (ptr, ptr, ...) @rtreeCheckPrepare(ptr noundef %2, ptr noundef @.str.34, ptr noundef %4, ptr noundef %6, ptr noundef %7)
  store ptr %call, ptr %pCount, align 8
  %8 = load ptr, ptr %pCount, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then1, label %if.end11

if.then1:                                         ; preds = %if.then
  %9 = load ptr, ptr %pCount, align 8
  %call2 = call i32 @sqlite3_step(ptr noundef %9)
  %cmp3 = icmp eq i32 %call2, 100
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.then1
  %10 = load ptr, ptr %pCount, align 8
  %call5 = call i64 @sqlite3_column_int64(ptr noundef %10, i32 noundef 0)
  store i64 %call5, ptr %nActual, align 8
  %11 = load i64, ptr %nActual, align 8
  %12 = load i64, ptr %nExpect.addr, align 8
  %cmp6 = icmp ne i64 %11, %12
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then4
  %13 = load ptr, ptr %pCheck.addr, align 8
  %14 = load ptr, ptr %zTbl.addr, align 8
  %15 = load i64, ptr %nExpect.addr, align 8
  %16 = load i64, ptr %nActual, align 8
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %13, ptr noundef @.str.35, ptr noundef %14, i64 noundef %15, i64 noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then1
  %17 = load ptr, ptr %pCount, align 8
  %call9 = call i32 @sqlite3_finalize(ptr noundef %17)
  %18 = load ptr, ptr %pCheck.addr, align 8
  %rc10 = getelementptr inbounds %struct.RtreeCheck, ptr %18, i32 0, i32 9
  store i32 %call9, ptr %rc10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

declare ptr @sqlite3_vmprintf(ptr noundef, ptr noundef) #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @rtreeCheckGetNode(ptr noundef %pCheck, i64 noundef %iNode, ptr noundef %pnNode) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %iNode.addr = alloca i64, align 8
  %pnNode.addr = alloca ptr, align 8
  %pRet = alloca ptr, align 8
  %nNode = alloca i32, align 4
  %pNode = alloca ptr, align 8
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store i64 %iNode, ptr %iNode.addr, align 8
  store ptr %pnNode, ptr %pnNode.addr, align 8
  store ptr null, ptr %pRet, align 8
  %0 = load ptr, ptr %pCheck.addr, align 8
  %rc = getelementptr inbounds %struct.RtreeCheck, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %rc, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pCheck.addr, align 8
  %pGetNode = getelementptr inbounds %struct.RtreeCheck, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %pGetNode, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pCheck.addr, align 8
  %5 = load ptr, ptr %pCheck.addr, align 8
  %zDb = getelementptr inbounds %struct.RtreeCheck, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %zDb, align 8
  %7 = load ptr, ptr %pCheck.addr, align 8
  %zTab = getelementptr inbounds %struct.RtreeCheck, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %zTab, align 8
  %call = call ptr (ptr, ptr, ...) @rtreeCheckPrepare(ptr noundef %4, ptr noundef @.str.24, ptr noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %pCheck.addr, align 8
  %pGetNode2 = getelementptr inbounds %struct.RtreeCheck, ptr %9, i32 0, i32 5
  store ptr %call, ptr %pGetNode2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %pCheck.addr, align 8
  %rc3 = getelementptr inbounds %struct.RtreeCheck, ptr %10, i32 0, i32 9
  %11 = load i32, ptr %rc3, align 8
  %cmp4 = icmp eq i32 %11, 0
  br i1 %cmp4, label %if.then5, label %if.end34

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %pCheck.addr, align 8
  %pGetNode6 = getelementptr inbounds %struct.RtreeCheck, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %pGetNode6, align 8
  %14 = load i64, ptr %iNode.addr, align 8
  %call7 = call i32 @sqlite3_bind_int64(ptr noundef %13, i32 noundef 1, i64 noundef %14)
  %15 = load ptr, ptr %pCheck.addr, align 8
  %pGetNode8 = getelementptr inbounds %struct.RtreeCheck, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %pGetNode8, align 8
  %call9 = call i32 @sqlite3_step(ptr noundef %16)
  %cmp10 = icmp eq i32 %call9, 100
  br i1 %cmp10, label %if.then11, label %if.end24

if.then11:                                        ; preds = %if.then5
  %17 = load ptr, ptr %pCheck.addr, align 8
  %pGetNode12 = getelementptr inbounds %struct.RtreeCheck, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %pGetNode12, align 8
  %call13 = call i32 @sqlite3_column_bytes(ptr noundef %18, i32 noundef 0)
  store i32 %call13, ptr %nNode, align 4
  %19 = load ptr, ptr %pCheck.addr, align 8
  %pGetNode14 = getelementptr inbounds %struct.RtreeCheck, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %pGetNode14, align 8
  %call15 = call ptr @sqlite3_column_blob(ptr noundef %20, i32 noundef 0)
  store ptr %call15, ptr %pNode, align 8
  %21 = load i32, ptr %nNode, align 4
  %conv = sext i32 %21 to i64
  %call16 = call ptr @sqlite3_malloc64(i64 noundef %conv)
  store ptr %call16, ptr %pRet, align 8
  %22 = load ptr, ptr %pRet, align 8
  %cmp17 = icmp eq ptr %22, null
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then11
  %23 = load ptr, ptr %pCheck.addr, align 8
  %rc20 = getelementptr inbounds %struct.RtreeCheck, ptr %23, i32 0, i32 9
  store i32 7, ptr %rc20, align 8
  br label %if.end23

if.else:                                          ; preds = %if.then11
  %24 = load ptr, ptr %pRet, align 8
  %25 = load ptr, ptr %pNode, align 8
  %26 = load i32, ptr %nNode, align 4
  %conv21 = sext i32 %26 to i64
  %27 = load ptr, ptr %pRet, align 8
  %28 = call i64 @llvm.objectsize.i64.p0(ptr %27, i1 false, i1 true, i1 false)
  %call22 = call ptr @__memcpy_chk(ptr noundef %24, ptr noundef %25, i64 noundef %conv21, i64 noundef %28) #7
  %29 = load i32, ptr %nNode, align 4
  %30 = load ptr, ptr %pnNode.addr, align 8
  store i32 %29, ptr %30, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then5
  %31 = load ptr, ptr %pCheck.addr, align 8
  %32 = load ptr, ptr %pCheck.addr, align 8
  %pGetNode25 = getelementptr inbounds %struct.RtreeCheck, ptr %32, i32 0, i32 5
  %33 = load ptr, ptr %pGetNode25, align 8
  call void @rtreeCheckReset(ptr noundef %31, ptr noundef %33)
  %34 = load ptr, ptr %pCheck.addr, align 8
  %rc26 = getelementptr inbounds %struct.RtreeCheck, ptr %34, i32 0, i32 9
  %35 = load i32, ptr %rc26, align 8
  %cmp27 = icmp eq i32 %35, 0
  br i1 %cmp27, label %land.lhs.true29, label %if.end33

land.lhs.true29:                                  ; preds = %if.end24
  %36 = load ptr, ptr %pRet, align 8
  %cmp30 = icmp eq ptr %36, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true29
  %37 = load ptr, ptr %pCheck.addr, align 8
  %38 = load i64, ptr %iNode.addr, align 8
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %37, ptr noundef @.str.25, i64 noundef %38)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %land.lhs.true29, %if.end24
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end
  %39 = load ptr, ptr %pRet, align 8
  ret ptr %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeCheckCellCoord(ptr noundef %pCheck, i64 noundef %iNode, i32 noundef %iCell, ptr noundef %pCell, ptr noundef %pParent) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %iNode.addr = alloca i64, align 8
  %iCell.addr = alloca i32, align 4
  %pCell.addr = alloca ptr, align 8
  %pParent.addr = alloca ptr, align 8
  %c1 = alloca %union.RtreeCoord, align 4
  %c2 = alloca %union.RtreeCoord, align 4
  %p1 = alloca %union.RtreeCoord, align 4
  %p2 = alloca %union.RtreeCoord, align 4
  %i = alloca i32, align 4
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store i64 %iNode, ptr %iNode.addr, align 8
  store i32 %iCell, ptr %iCell.addr, align 4
  store ptr %pCell, ptr %pCell.addr, align 8
  store ptr %pParent, ptr %pParent.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %pCheck.addr, align 8
  %nDim = getelementptr inbounds %struct.RtreeCheck, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %nDim, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pCell.addr, align 8
  %4 = load i32, ptr %i, align 4
  %mul = mul nsw i32 8, %4
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  call void @readCoord(ptr noundef %arrayidx, ptr noundef %c1)
  %5 = load ptr, ptr %pCell.addr, align 8
  %6 = load i32, ptr %i, align 4
  %mul1 = mul nsw i32 2, %6
  %add = add nsw i32 %mul1, 1
  %mul2 = mul nsw i32 4, %add
  %idxprom3 = sext i32 %mul2 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 %idxprom3
  call void @readCoord(ptr noundef %arrayidx4, ptr noundef %c2)
  %7 = load ptr, ptr %pCheck.addr, align 8
  %bInt = getelementptr inbounds %struct.RtreeCheck, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %bInt, align 8
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load i32, ptr %c1, align 4
  %10 = load i32, ptr %c2, align 4
  %cmp5 = icmp sgt i32 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

cond.false:                                       ; preds = %for.body
  %11 = load float, ptr %c1, align 4
  %12 = load float, ptr %c2, align 4
  %cmp6 = fcmp ogt float %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %13 = load ptr, ptr %pCheck.addr, align 8
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %iCell.addr, align 4
  %16 = load i64, ptr %iNode.addr, align 8
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %13, ptr noundef @.str.26, i32 noundef %14, i32 noundef %15, i64 noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %17 = load ptr, ptr %pParent.addr, align 8
  %tobool7 = icmp ne ptr %17, null
  br i1 %tobool7, label %if.then8, label %if.end31

if.then8:                                         ; preds = %if.end
  %18 = load ptr, ptr %pParent.addr, align 8
  %19 = load i32, ptr %i, align 4
  %mul9 = mul nsw i32 8, %19
  %idxprom10 = sext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %18, i64 %idxprom10
  call void @readCoord(ptr noundef %arrayidx11, ptr noundef %p1)
  %20 = load ptr, ptr %pParent.addr, align 8
  %21 = load i32, ptr %i, align 4
  %mul12 = mul nsw i32 2, %21
  %add13 = add nsw i32 %mul12, 1
  %mul14 = mul nsw i32 4, %add13
  %idxprom15 = sext i32 %mul14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %20, i64 %idxprom15
  call void @readCoord(ptr noundef %arrayidx16, ptr noundef %p2)
  %22 = load ptr, ptr %pCheck.addr, align 8
  %bInt17 = getelementptr inbounds %struct.RtreeCheck, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %bInt17, align 8
  %tobool18 = icmp ne i32 %23, 0
  br i1 %tobool18, label %cond.true19, label %cond.false21

cond.true19:                                      ; preds = %if.then8
  %24 = load i32, ptr %c1, align 4
  %25 = load i32, ptr %p1, align 4
  %cmp20 = icmp slt i32 %24, %25
  br i1 %cmp20, label %if.then29, label %lor.lhs.false

cond.false21:                                     ; preds = %if.then8
  %26 = load float, ptr %c1, align 4
  %27 = load float, ptr %p1, align 4
  %cmp22 = fcmp olt float %26, %27
  br i1 %cmp22, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false21, %cond.true19
  %28 = load ptr, ptr %pCheck.addr, align 8
  %bInt23 = getelementptr inbounds %struct.RtreeCheck, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %bInt23, align 8
  %tobool24 = icmp ne i32 %29, 0
  br i1 %tobool24, label %cond.true25, label %cond.false27

cond.true25:                                      ; preds = %lor.lhs.false
  %30 = load i32, ptr %c2, align 4
  %31 = load i32, ptr %p2, align 4
  %cmp26 = icmp sgt i32 %30, %31
  br i1 %cmp26, label %if.then29, label %if.end30

cond.false27:                                     ; preds = %lor.lhs.false
  %32 = load float, ptr %c2, align 4
  %33 = load float, ptr %p2, align 4
  %cmp28 = fcmp ogt float %32, %33
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %cond.false27, %cond.true25, %cond.false21, %cond.true19
  %34 = load ptr, ptr %pCheck.addr, align 8
  %35 = load i32, ptr %i, align 4
  %36 = load i32, ptr %iCell.addr, align 4
  %37 = load i64, ptr %iNode.addr, align 8
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %34, ptr noundef @.str.27, i32 noundef %35, i32 noundef %36, i64 noundef %37)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %cond.false27, %cond.true25
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeCheckMapping(ptr noundef %pCheck, i32 noundef %bLeaf, i64 noundef %iKey, i64 noundef %iVal) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %bLeaf.addr = alloca i32, align 4
  %iKey.addr = alloca i64, align 8
  %iVal.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %pStmt = alloca ptr, align 8
  %azSql = alloca [2 x ptr], align 8
  %ii = alloca i64, align 8
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store i32 %bLeaf, ptr %bLeaf.addr, align 4
  store i64 %iKey, ptr %iKey.addr, align 8
  store i64 %iVal, ptr %iVal.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %azSql, ptr align 8 @__const.rtreeCheckMapping.azSql, i64 16, i1 false)
  %0 = load ptr, ptr %pCheck.addr, align 8
  %aCheckMapping = getelementptr inbounds %struct.RtreeCheck, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %bLeaf.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %aCheckMapping, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pCheck.addr, align 8
  %4 = load i32, ptr %bLeaf.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [2 x ptr], ptr %azSql, i64 0, i64 %idxprom1
  %5 = load ptr, ptr %arrayidx2, align 8
  %6 = load ptr, ptr %pCheck.addr, align 8
  %zDb = getelementptr inbounds %struct.RtreeCheck, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %zDb, align 8
  %8 = load ptr, ptr %pCheck.addr, align 8
  %zTab = getelementptr inbounds %struct.RtreeCheck, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %zTab, align 8
  %call = call ptr (ptr, ptr, ...) @rtreeCheckPrepare(ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9)
  %10 = load ptr, ptr %pCheck.addr, align 8
  %aCheckMapping3 = getelementptr inbounds %struct.RtreeCheck, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %bLeaf.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds [2 x ptr], ptr %aCheckMapping3, i64 0, i64 %idxprom4
  store ptr %call, ptr %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %pCheck.addr, align 8
  %rc6 = getelementptr inbounds %struct.RtreeCheck, ptr %12, i32 0, i32 9
  %13 = load i32, ptr %rc6, align 8
  %cmp7 = icmp ne i32 %13, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %return

if.end9:                                          ; preds = %if.end
  %14 = load ptr, ptr %pCheck.addr, align 8
  %aCheckMapping10 = getelementptr inbounds %struct.RtreeCheck, ptr %14, i32 0, i32 6
  %15 = load i32, ptr %bLeaf.addr, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [2 x ptr], ptr %aCheckMapping10, i64 0, i64 %idxprom11
  %16 = load ptr, ptr %arrayidx12, align 8
  store ptr %16, ptr %pStmt, align 8
  %17 = load ptr, ptr %pStmt, align 8
  %18 = load i64, ptr %iKey.addr, align 8
  %call13 = call i32 @sqlite3_bind_int64(ptr noundef %17, i32 noundef 1, i64 noundef %18)
  %19 = load ptr, ptr %pStmt, align 8
  %call14 = call i32 @sqlite3_step(ptr noundef %19)
  store i32 %call14, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp15 = icmp eq i32 %20, 101
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end9
  %21 = load ptr, ptr %pCheck.addr, align 8
  %22 = load i64, ptr %iKey.addr, align 8
  %23 = load i64, ptr %iVal.addr, align 8
  %24 = load i32, ptr %bLeaf.addr, align 4
  %tobool = icmp ne i32 %24, 0
  %25 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.31, ptr @.str.32
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %21, ptr noundef @.str.30, i64 noundef %22, i64 noundef %23, ptr noundef %cond)
  br label %if.end26

if.else:                                          ; preds = %if.end9
  %26 = load i32, ptr %rc, align 4
  %cmp17 = icmp eq i32 %26, 100
  br i1 %cmp17, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.else
  %27 = load ptr, ptr %pStmt, align 8
  %call19 = call i64 @sqlite3_column_int64(ptr noundef %27, i32 noundef 0)
  store i64 %call19, ptr %ii, align 8
  %28 = load i64, ptr %ii, align 8
  %29 = load i64, ptr %iVal.addr, align 8
  %cmp20 = icmp ne i64 %28, %29
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then18
  %30 = load ptr, ptr %pCheck.addr, align 8
  %31 = load i64, ptr %iKey.addr, align 8
  %32 = load i64, ptr %ii, align 8
  %33 = load i32, ptr %bLeaf.addr, align 4
  %tobool22 = icmp ne i32 %33, 0
  %34 = zext i1 %tobool22 to i64
  %cond23 = select i1 %tobool22, ptr @.str.31, ptr @.str.32
  %35 = load i64, ptr %iKey.addr, align 8
  %36 = load i64, ptr %iVal.addr, align 8
  call void (ptr, ptr, ...) @rtreeCheckAppendMsg(ptr noundef %30, ptr noundef @.str.33, i64 noundef %31, i64 noundef %32, ptr noundef %cond23, i64 noundef %35, i64 noundef %36)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then18
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then16
  %37 = load ptr, ptr %pCheck.addr, align 8
  %38 = load ptr, ptr %pStmt, align 8
  call void @rtreeCheckReset(ptr noundef %37, ptr noundef %38)
  br label %return

return:                                           ; preds = %if.end26, %if.then8
  ret void
}

declare i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) #1

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) #1

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeCheckReset(ptr noundef %pCheck, ptr noundef %pStmt) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %pStmt.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  %0 = load ptr, ptr %pStmt.addr, align 8
  %call = call i32 @sqlite3_reset(ptr noundef %0)
  store i32 %call, ptr %rc, align 4
  %1 = load ptr, ptr %pCheck.addr, align 8
  %rc1 = getelementptr inbounds %struct.RtreeCheck, ptr %1, i32 0, i32 9
  %2 = load i32, ptr %rc1, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rc, align 4
  %4 = load ptr, ptr %pCheck.addr, align 8
  %rc2 = getelementptr inbounds %struct.RtreeCheck, ptr %4, i32 0, i32 9
  store i32 %3, ptr %rc2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @sqlite3_reset(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeCreate(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %pAux.addr, align 8
  %2 = load i32, ptr %argc.addr, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load ptr, ptr %ppVtab.addr, align 8
  %5 = load ptr, ptr %pzErr.addr, align 8
  %call = call i32 @rtreeInit(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %pAux.addr, align 8
  %2 = load i32, ptr %argc.addr, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load ptr, ptr %ppVtab.addr, align 8
  %5 = load ptr, ptr %pzErr.addr, align 8
  %call = call i32 @rtreeInit(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %retval = alloca i32, align 4
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  %rc = alloca i32, align 4
  %ii = alloca i32, align 4
  %bMatch = alloca i32, align 4
  %nRow = alloca i64, align 8
  %iIdx = alloca i32, align 4
  %zIdxStr = alloca [41 x i8], align 1
  %p = alloca ptr, align 8
  %jj = alloca i32, align 4
  %op63 = alloca i8, align 1
  %doOmit = alloca i8, align 1
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  %0 = load ptr, ptr %tab.addr, align 8
  store ptr %0, ptr %pRtree, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %bMatch, align 4
  store i32 0, ptr %iIdx, align 4
  %arraydecay = getelementptr inbounds [41 x i8], ptr %zIdxStr, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 41, i1 false)
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %ii, align 4
  %2 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nConstraint, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %aConstraint, align 8
  %6 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %5, i64 %idxprom
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %arrayidx, i32 0, i32 1
  %7 = load i8, ptr %op, align 4
  %conv = zext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 64
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %bMatch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ii, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc91, %for.end
  %9 = load i32, ptr %ii, align 4
  %10 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint4 = getelementptr inbounds %struct.sqlite3_index_info, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %nConstraint4, align 8
  %cmp5 = icmp slt i32 %9, %11
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond3
  %12 = load i32, ptr %iIdx, align 4
  %cmp7 = icmp slt i32 %12, 40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond3
  %13 = phi i1 [ false, %for.cond3 ], [ %cmp7, %land.rhs ]
  br i1 %13, label %for.body9, label %for.end93

for.body9:                                        ; preds = %land.end
  %14 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint10 = getelementptr inbounds %struct.sqlite3_index_info, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %aConstraint10, align 8
  %16 = load i32, ptr %ii, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %15, i64 %idxprom11
  store ptr %arrayidx12, ptr %p, align 8
  %17 = load i32, ptr %bMatch, align 4
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %for.body9
  %18 = load ptr, ptr %p, align 8
  %usable = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %18, i32 0, i32 2
  %19 = load i8, ptr %usable, align 1
  %conv15 = zext i8 %19 to i32
  %tobool = icmp ne i32 %conv15, 0
  br i1 %tobool, label %land.lhs.true16, label %if.end45

land.lhs.true16:                                  ; preds = %land.lhs.true
  %20 = load ptr, ptr %p, align 8
  %iColumn = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %iColumn, align 4
  %cmp17 = icmp sle i32 %21, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.end45

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %22 = load ptr, ptr %p, align 8
  %op20 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %22, i32 0, i32 1
  %23 = load i8, ptr %op20, align 4
  %conv21 = zext i8 %23 to i32
  %cmp22 = icmp eq i32 %conv21, 2
  br i1 %cmp22, label %if.then24, label %if.end45

if.then24:                                        ; preds = %land.lhs.true19
  store i32 0, ptr %jj, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %if.then24
  %24 = load i32, ptr %jj, align 4
  %25 = load i32, ptr %ii, align 4
  %cmp26 = icmp slt i32 %24, %25
  br i1 %cmp26, label %for.body28, label %for.end36

for.body28:                                       ; preds = %for.cond25
  %26 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %aConstraintUsage, align 8
  %28 = load i32, ptr %jj, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %27, i64 %idxprom29
  %argvIndex = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx30, i32 0, i32 0
  store i32 0, ptr %argvIndex, align 4
  %29 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage31 = getelementptr inbounds %struct.sqlite3_index_info, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %aConstraintUsage31, align 8
  %31 = load i32, ptr %jj, align 4
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %30, i64 %idxprom32
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx33, i32 0, i32 1
  store i8 0, ptr %omit, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body28
  %32 = load i32, ptr %jj, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, ptr %jj, align 4
  br label %for.cond25, !llvm.loop !14

for.end36:                                        ; preds = %for.cond25
  %33 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %33, i32 0, i32 5
  store i32 1, ptr %idxNum, align 8
  %34 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage37 = getelementptr inbounds %struct.sqlite3_index_info, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %aConstraintUsage37, align 8
  %36 = load i32, ptr %ii, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %35, i64 %idxprom38
  %argvIndex40 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx39, i32 0, i32 0
  store i32 1, ptr %argvIndex40, align 4
  %37 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage41 = getelementptr inbounds %struct.sqlite3_index_info, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %aConstraintUsage41, align 8
  %39 = load i32, ptr %jj, align 4
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %38, i64 %idxprom42
  %omit44 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx43, i32 0, i32 1
  store i8 1, ptr %omit44, align 4
  %40 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %40, i32 0, i32 9
  store double 3.000000e+01, ptr %estimatedCost, align 8
  %41 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows = getelementptr inbounds %struct.sqlite3_index_info, ptr %41, i32 0, i32 10
  store i64 1, ptr %estimatedRows, align 8
  %42 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxFlags = getelementptr inbounds %struct.sqlite3_index_info, ptr %42, i32 0, i32 11
  store i32 1, ptr %idxFlags, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %land.lhs.true19, %land.lhs.true16, %land.lhs.true, %for.body9
  %43 = load ptr, ptr %p, align 8
  %usable46 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %43, i32 0, i32 2
  %44 = load i8, ptr %usable46, align 1
  %conv47 = zext i8 %44 to i32
  %tobool48 = icmp ne i32 %conv47, 0
  br i1 %tobool48, label %land.lhs.true49, label %if.end90

land.lhs.true49:                                  ; preds = %if.end45
  %45 = load ptr, ptr %p, align 8
  %iColumn50 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %45, i32 0, i32 0
  %46 = load i32, ptr %iColumn50, align 4
  %cmp51 = icmp sgt i32 %46, 0
  br i1 %cmp51, label %land.lhs.true53, label %lor.lhs.false

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %47 = load ptr, ptr %p, align 8
  %iColumn54 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %47, i32 0, i32 0
  %48 = load i32, ptr %iColumn54, align 4
  %49 = load ptr, ptr %pRtree, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %49, i32 0, i32 4
  %50 = load i8, ptr %nDim2, align 1
  %conv55 = zext i8 %50 to i32
  %cmp56 = icmp sle i32 %48, %conv55
  br i1 %cmp56, label %if.then62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true53, %land.lhs.true49
  %51 = load ptr, ptr %p, align 8
  %op58 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %51, i32 0, i32 1
  %52 = load i8, ptr %op58, align 4
  %conv59 = zext i8 %52 to i32
  %cmp60 = icmp eq i32 %conv59, 64
  br i1 %cmp60, label %if.then62, label %if.end90

if.then62:                                        ; preds = %lor.lhs.false, %land.lhs.true53
  store i8 1, ptr %doOmit, align 1
  %53 = load ptr, ptr %p, align 8
  %op64 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %53, i32 0, i32 1
  %54 = load i8, ptr %op64, align 4
  %conv65 = zext i8 %54 to i32
  switch i32 %conv65, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb66
    i32 8, label %sw.bb67
    i32 16, label %sw.bb68
    i32 32, label %sw.bb69
    i32 64, label %sw.bb70
  ]

sw.bb:                                            ; preds = %if.then62
  store i8 65, ptr %op63, align 1
  store i8 0, ptr %doOmit, align 1
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.then62
  store i8 69, ptr %op63, align 1
  store i8 0, ptr %doOmit, align 1
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then62
  store i8 66, ptr %op63, align 1
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.then62
  store i8 67, ptr %op63, align 1
  store i8 0, ptr %doOmit, align 1
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.then62
  store i8 68, ptr %op63, align 1
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.then62
  store i8 70, ptr %op63, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then62
  store i8 0, ptr %op63, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb
  %55 = load i8, ptr %op63, align 1
  %tobool71 = icmp ne i8 %55, 0
  br i1 %tobool71, label %if.then72, label %if.end89

if.then72:                                        ; preds = %sw.epilog
  %56 = load i8, ptr %op63, align 1
  %57 = load i32, ptr %iIdx, align 4
  %inc73 = add nsw i32 %57, 1
  store i32 %inc73, ptr %iIdx, align 4
  %idxprom74 = sext i32 %57 to i64
  %arrayidx75 = getelementptr inbounds [41 x i8], ptr %zIdxStr, i64 0, i64 %idxprom74
  store i8 %56, ptr %arrayidx75, align 1
  %58 = load ptr, ptr %p, align 8
  %iColumn76 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %iColumn76, align 4
  %sub = sub nsw i32 %59, 1
  %add = add nsw i32 %sub, 48
  %conv77 = trunc i32 %add to i8
  %60 = load i32, ptr %iIdx, align 4
  %inc78 = add nsw i32 %60, 1
  store i32 %inc78, ptr %iIdx, align 4
  %idxprom79 = sext i32 %60 to i64
  %arrayidx80 = getelementptr inbounds [41 x i8], ptr %zIdxStr, i64 0, i64 %idxprom79
  store i8 %conv77, ptr %arrayidx80, align 1
  %61 = load i32, ptr %iIdx, align 4
  %div = sdiv i32 %61, 2
  %62 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage81 = getelementptr inbounds %struct.sqlite3_index_info, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %aConstraintUsage81, align 8
  %64 = load i32, ptr %ii, align 4
  %idxprom82 = sext i32 %64 to i64
  %arrayidx83 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %63, i64 %idxprom82
  %argvIndex84 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx83, i32 0, i32 0
  store i32 %div, ptr %argvIndex84, align 4
  %65 = load i8, ptr %doOmit, align 1
  %66 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage85 = getelementptr inbounds %struct.sqlite3_index_info, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %aConstraintUsage85, align 8
  %68 = load i32, ptr %ii, align 4
  %idxprom86 = sext i32 %68 to i64
  %arrayidx87 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %67, i64 %idxprom86
  %omit88 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx87, i32 0, i32 1
  store i8 %65, ptr %omit88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then72, %sw.epilog
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %lor.lhs.false, %if.end45
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %69 = load i32, ptr %ii, align 4
  %inc92 = add nsw i32 %69, 1
  store i32 %inc92, ptr %ii, align 4
  br label %for.cond3, !llvm.loop !15

for.end93:                                        ; preds = %land.end
  %70 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum94 = getelementptr inbounds %struct.sqlite3_index_info, ptr %70, i32 0, i32 5
  store i32 2, ptr %idxNum94, align 8
  %71 = load ptr, ptr %pIdxInfo.addr, align 8
  %needToFreeIdxStr = getelementptr inbounds %struct.sqlite3_index_info, ptr %71, i32 0, i32 7
  store i32 1, ptr %needToFreeIdxStr, align 8
  %72 = load i32, ptr %iIdx, align 4
  %cmp95 = icmp sgt i32 %72, 0
  br i1 %cmp95, label %if.then97, label %if.end110

if.then97:                                        ; preds = %for.end93
  %73 = load i32, ptr %iIdx, align 4
  %add98 = add nsw i32 %73, 1
  %call = call ptr @sqlite3_malloc(i32 noundef %add98)
  %74 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxStr = getelementptr inbounds %struct.sqlite3_index_info, ptr %74, i32 0, i32 6
  store ptr %call, ptr %idxStr, align 8
  %75 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxStr99 = getelementptr inbounds %struct.sqlite3_index_info, ptr %75, i32 0, i32 6
  %76 = load ptr, ptr %idxStr99, align 8
  %cmp100 = icmp eq ptr %76, null
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then97
  store i32 7, ptr %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.then97
  %77 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxStr104 = getelementptr inbounds %struct.sqlite3_index_info, ptr %77, i32 0, i32 6
  %78 = load ptr, ptr %idxStr104, align 8
  %arraydecay105 = getelementptr inbounds [41 x i8], ptr %zIdxStr, i64 0, i64 0
  %79 = load i32, ptr %iIdx, align 4
  %add106 = add nsw i32 %79, 1
  %conv107 = sext i32 %add106 to i64
  %80 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxStr108 = getelementptr inbounds %struct.sqlite3_index_info, ptr %80, i32 0, i32 6
  %81 = load ptr, ptr %idxStr108, align 8
  %82 = call i64 @llvm.objectsize.i64.p0(ptr %81, i1 false, i1 true, i1 false)
  %call109 = call ptr @__memcpy_chk(ptr noundef %78, ptr noundef %arraydecay105, i64 noundef %conv107, i64 noundef %82) #7
  br label %if.end110

if.end110:                                        ; preds = %if.end103, %for.end93
  %83 = load ptr, ptr %pRtree, align 8
  %nRowEst = getelementptr inbounds %struct.Rtree, ptr %83, i32 0, i32 14
  %84 = load i64, ptr %nRowEst, align 8
  %85 = load i32, ptr %iIdx, align 4
  %div111 = sdiv i32 %85, 2
  %sh_prom = zext i32 %div111 to i64
  %shr = ashr i64 %84, %sh_prom
  store i64 %shr, ptr %nRow, align 8
  %86 = load i64, ptr %nRow, align 8
  %conv112 = sitofp i64 %86 to double
  %mul = fmul double 6.000000e+00, %conv112
  %87 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost113 = getelementptr inbounds %struct.sqlite3_index_info, ptr %87, i32 0, i32 9
  store double %mul, ptr %estimatedCost113, align 8
  %88 = load i64, ptr %nRow, align 8
  %89 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows114 = getelementptr inbounds %struct.sqlite3_index_info, ptr %89, i32 0, i32 10
  store i64 %88, ptr %estimatedRows114, align 8
  %90 = load i32, ptr %rc, align 4
  store i32 %90, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end110, %if.then102, %for.end36
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  call void @rtreeRelease(ptr noundef %0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeDestroy(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zCreate = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %pRtree, align 8
  %1 = load ptr, ptr %pRtree, align 8
  %zDb = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %zDb, align 8
  %3 = load ptr, ptr %pRtree, align 8
  %zName = getelementptr inbounds %struct.Rtree, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %zName, align 8
  %5 = load ptr, ptr %pRtree, align 8
  %zDb1 = getelementptr inbounds %struct.Rtree, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %zDb1, align 8
  %7 = load ptr, ptr %pRtree, align 8
  %zName2 = getelementptr inbounds %struct.Rtree, ptr %7, i32 0, i32 11
  %8 = load ptr, ptr %zName2, align 8
  %9 = load ptr, ptr %pRtree, align 8
  %zDb3 = getelementptr inbounds %struct.Rtree, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %zDb3, align 8
  %11 = load ptr, ptr %pRtree, align 8
  %zName4 = getelementptr inbounds %struct.Rtree, ptr %11, i32 0, i32 11
  %12 = load ptr, ptr %zName4, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.71, ptr noundef %2, ptr noundef %4, ptr noundef %6, ptr noundef %8, ptr noundef %10, ptr noundef %12)
  store ptr %call, ptr %zCreate, align 8
  %13 = load ptr, ptr %zCreate, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %pRtree, align 8
  call void @nodeBlobReset(ptr noundef %14)
  %15 = load ptr, ptr %pRtree, align 8
  %db = getelementptr inbounds %struct.Rtree, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %db, align 8
  %17 = load ptr, ptr %zCreate, align 8
  %call5 = call i32 @sqlite3_exec(ptr noundef %16, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call5, ptr %rc, align 4
  %18 = load ptr, ptr %zCreate, align 8
  call void @sqlite3_free(ptr noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %20 = load ptr, ptr %pRtree, align 8
  call void @rtreeRelease(ptr noundef %20)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %21 = load i32, ptr %rc, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeOpen(ptr noundef %pVTab, ptr noundef %ppCursor) #0 {
entry:
  %pVTab.addr = alloca ptr, align 8
  %ppCursor.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pRtree = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  store ptr %pVTab, ptr %pVTab.addr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  store i32 7, ptr %rc, align 4
  %0 = load ptr, ptr %pVTab.addr, align 8
  store ptr %0, ptr %pRtree, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 296)
  store ptr %call, ptr %pCsr, align 8
  %1 = load ptr, ptr %pCsr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCsr, align 8
  %3 = load ptr, ptr %pCsr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %2, i32 noundef 0, i64 noundef 296, i64 noundef %4) #7
  %5 = load ptr, ptr %pVTab.addr, align 8
  %6 = load ptr, ptr %pCsr, align 8
  %base = getelementptr inbounds %struct.RtreeCursor, ptr %6, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  store ptr %5, ptr %pVtab, align 8
  store i32 0, ptr %rc, align 4
  %7 = load ptr, ptr %pRtree, align 8
  %nCursor = getelementptr inbounds %struct.Rtree, ptr %7, i32 0, i32 15
  %8 = load i32, ptr %nCursor, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %nCursor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %pCsr, align 8
  %10 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %9, ptr %10, align 8
  %11 = load i32, ptr %rc, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVtab, align 8
  store ptr %1, ptr %pRtree, align 8
  %2 = load ptr, ptr %cur.addr, align 8
  store ptr %2, ptr %pCsr, align 8
  %3 = load ptr, ptr %pCsr, align 8
  call void @resetCursor(ptr noundef %3)
  %4 = load ptr, ptr %pCsr, align 8
  %pReadAux = getelementptr inbounds %struct.RtreeCursor, ptr %4, i32 0, i32 11
  %5 = load ptr, ptr %pReadAux, align 8
  %call = call i32 @sqlite3_finalize(ptr noundef %5)
  %6 = load ptr, ptr %pCsr, align 8
  call void @sqlite3_free(ptr noundef %6)
  %7 = load ptr, ptr %pRtree, align 8
  %nCursor = getelementptr inbounds %struct.Rtree, ptr %7, i32 0, i32 15
  %8 = load i32, ptr %nCursor, align 8
  %dec = add i32 %8, -1
  store i32 %dec, ptr %nCursor, align 8
  %9 = load ptr, ptr %pRtree, align 8
  %nCursor1 = getelementptr inbounds %struct.Rtree, ptr %9, i32 0, i32 15
  %10 = load i32, ptr %nCursor1, align 8
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %pRtree, align 8
  %inWrTrans = getelementptr inbounds %struct.Rtree, ptr %11, i32 0, i32 7
  %12 = load i8, ptr %inWrTrans, align 8
  %conv = zext i8 %12 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %pRtree, align 8
  call void @nodeBlobReset(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  %pRoot = alloca ptr, align 8
  %ii = alloca i32, align 4
  %rc = alloca i32, align 4
  %iCell = alloca i32, align 4
  %pLeaf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %iRowid = alloca i64, align 8
  %iNode = alloca i64, align 8
  %eType = alloca i32, align 4
  %p46 = alloca ptr, align 8
  %eType49 = alloca i32, align 4
  %iVal = alloca i64, align 8
  %pNew = alloca ptr, align 8
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVtab, align 8
  store ptr %1, ptr %pRtree, align 8
  %2 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %2, ptr %pCsr, align 8
  store ptr null, ptr %pRoot, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %iCell, align 4
  %3 = load ptr, ptr %pRtree, align 8
  call void @rtreeReference(ptr noundef %3)
  %4 = load ptr, ptr %pCsr, align 8
  call void @resetCursor(ptr noundef %4)
  %5 = load i32, ptr %idxNum.addr, align 4
  %6 = load ptr, ptr %pCsr, align 8
  %iStrategy = getelementptr inbounds %struct.RtreeCursor, ptr %6, i32 0, i32 4
  store i32 %5, ptr %iStrategy, align 4
  %7 = load i32, ptr %idxNum.addr, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @sqlite3_value_int64(ptr noundef %9)
  store i64 %call, ptr %iRowid, align 8
  store i64 0, ptr %iNode, align 8
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %10, i64 0
  %11 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_numeric_type(ptr noundef %11)
  store i32 %call2, ptr %eType, align 4
  %12 = load i32, ptr %eType, align 4
  %cmp3 = icmp eq i32 %12, 1
  br i1 %cmp3, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %13 = load i32, ptr %eType, align 4
  %cmp4 = icmp eq i32 %13, 2
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load i64, ptr %iRowid, align 8
  %15 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx5, align 8
  %call6 = call double @sqlite3_value_double(ptr noundef %16)
  %call7 = call i32 @sqlite3IntFloatCompare(i64 noundef %14, double noundef %call6)
  %cmp8 = icmp eq i32 0, %call7
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true, %if.then
  %17 = load ptr, ptr %pRtree, align 8
  %18 = load i64, ptr %iRowid, align 8
  %call10 = call i32 @findLeafNode(ptr noundef %17, i64 noundef %18, ptr noundef %pLeaf, ptr noundef %iNode)
  store i32 %call10, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pLeaf, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %19 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %19, 0
  br i1 %cmp11, label %land.lhs.true12, label %if.else19

land.lhs.true12:                                  ; preds = %if.end
  %20 = load ptr, ptr %pLeaf, align 8
  %cmp13 = icmp ne ptr %20, null
  br i1 %cmp13, label %if.then14, label %if.else19

if.then14:                                        ; preds = %land.lhs.true12
  %21 = load ptr, ptr %pCsr, align 8
  %call15 = call ptr @rtreeSearchPointNew(ptr noundef %21, double noundef 0.000000e+00, i8 noundef zeroext 0)
  store ptr %call15, ptr %p, align 8
  %22 = load ptr, ptr %pLeaf, align 8
  %23 = load ptr, ptr %pCsr, align 8
  %aNode = getelementptr inbounds %struct.RtreeCursor, ptr %23, i32 0, i32 13
  %arrayidx16 = getelementptr inbounds [5 x ptr], ptr %aNode, i64 0, i64 0
  store ptr %22, ptr %arrayidx16, align 8
  %24 = load i64, ptr %iNode, align 8
  %25 = load ptr, ptr %p, align 8
  %id = getelementptr inbounds %struct.RtreeSearchPoint, ptr %25, i32 0, i32 1
  store i64 %24, ptr %id, align 8
  %26 = load ptr, ptr %p, align 8
  %eWithin = getelementptr inbounds %struct.RtreeSearchPoint, ptr %26, i32 0, i32 3
  store i8 1, ptr %eWithin, align 1
  %27 = load ptr, ptr %pRtree, align 8
  %28 = load ptr, ptr %pLeaf, align 8
  %29 = load i64, ptr %iRowid, align 8
  %call17 = call i32 @nodeRowidIndex(ptr noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %iCell)
  store i32 %call17, ptr %rc, align 4
  %30 = load i32, ptr %iCell, align 4
  %conv = trunc i32 %30 to i8
  %31 = load ptr, ptr %p, align 8
  %iCell18 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %31, i32 0, i32 4
  store i8 %conv, ptr %iCell18, align 2
  br label %if.end20

if.else19:                                        ; preds = %land.lhs.true12, %if.end
  %32 = load ptr, ptr %pCsr, align 8
  %atEOF = getelementptr inbounds %struct.RtreeCursor, ptr %32, i32 0, i32 1
  store i8 1, ptr %atEOF, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then14
  br label %if.end159

if.else21:                                        ; preds = %entry
  %33 = load ptr, ptr %pRtree, align 8
  %call22 = call i32 @nodeAcquire(ptr noundef %33, i64 noundef 1, ptr noundef null, ptr noundef %pRoot)
  store i32 %call22, ptr %rc, align 4
  %34 = load i32, ptr %rc, align 4
  %cmp23 = icmp eq i32 %34, 0
  br i1 %cmp23, label %land.lhs.true25, label %if.end140

land.lhs.true25:                                  ; preds = %if.else21
  %35 = load i32, ptr %argc.addr, align 4
  %cmp26 = icmp sgt i32 %35, 0
  br i1 %cmp26, label %if.then28, label %if.end140

if.then28:                                        ; preds = %land.lhs.true25
  %36 = load i32, ptr %argc.addr, align 4
  %conv29 = sext i32 %36 to i64
  %mul = mul i64 24, %conv29
  %call30 = call ptr @sqlite3_malloc64(i64 noundef %mul)
  %37 = load ptr, ptr %pCsr, align 8
  %aConstraint = getelementptr inbounds %struct.RtreeCursor, ptr %37, i32 0, i32 6
  store ptr %call30, ptr %aConstraint, align 8
  %38 = load i32, ptr %argc.addr, align 4
  %39 = load ptr, ptr %pCsr, align 8
  %nConstraint = getelementptr inbounds %struct.RtreeCursor, ptr %39, i32 0, i32 5
  store i32 %38, ptr %nConstraint, align 8
  %40 = load ptr, ptr %pCsr, align 8
  %aConstraint31 = getelementptr inbounds %struct.RtreeCursor, ptr %40, i32 0, i32 6
  %41 = load ptr, ptr %aConstraint31, align 8
  %tobool = icmp ne ptr %41, null
  br i1 %tobool, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.then28
  store i32 7, ptr %rc, align 4
  br label %if.end139

if.else33:                                        ; preds = %if.then28
  %42 = load ptr, ptr %pCsr, align 8
  %aConstraint34 = getelementptr inbounds %struct.RtreeCursor, ptr %42, i32 0, i32 6
  %43 = load ptr, ptr %aConstraint34, align 8
  %44 = load i32, ptr %argc.addr, align 4
  %conv35 = sext i32 %44 to i64
  %mul36 = mul i64 24, %conv35
  %45 = load ptr, ptr %pCsr, align 8
  %aConstraint37 = getelementptr inbounds %struct.RtreeCursor, ptr %45, i32 0, i32 6
  %46 = load ptr, ptr %aConstraint37, align 8
  %47 = call i64 @llvm.objectsize.i64.p0(ptr %46, i1 false, i1 true, i1 false)
  %call38 = call ptr @__memset_chk(ptr noundef %43, i32 noundef 0, i64 noundef %mul36, i64 noundef %47) #7
  %48 = load ptr, ptr %pCsr, align 8
  %anQueue = getelementptr inbounds %struct.RtreeCursor, ptr %48, i32 0, i32 14
  %arraydecay = getelementptr inbounds [41 x i32], ptr %anQueue, i64 0, i64 0
  %49 = load ptr, ptr %pRtree, align 8
  %iDepth = getelementptr inbounds %struct.Rtree, ptr %49, i32 0, i32 9
  %50 = load i32, ptr %iDepth, align 4
  %add = add nsw i32 %50, 1
  %conv39 = sext i32 %add to i64
  %mul40 = mul i64 4, %conv39
  %51 = load ptr, ptr %pCsr, align 8
  %anQueue41 = getelementptr inbounds %struct.RtreeCursor, ptr %51, i32 0, i32 14
  %arraydecay42 = getelementptr inbounds [41 x i32], ptr %anQueue41, i64 0, i64 0
  %52 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay42, i1 false, i1 true, i1 false)
  %call43 = call ptr @__memset_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef %mul40, i64 noundef %52) #7
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else33
  %53 = load i32, ptr %ii, align 4
  %54 = load i32, ptr %argc.addr, align 4
  %cmp44 = icmp slt i32 %53, %54
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load ptr, ptr %pCsr, align 8
  %aConstraint47 = getelementptr inbounds %struct.RtreeCursor, ptr %55, i32 0, i32 6
  %56 = load ptr, ptr %aConstraint47, align 8
  %57 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %57 to i64
  %arrayidx48 = getelementptr inbounds %struct.RtreeConstraint, ptr %56, i64 %idxprom
  store ptr %arrayidx48, ptr %p46, align 8
  %58 = load ptr, ptr %argv.addr, align 8
  %59 = load i32, ptr %ii, align 4
  %idxprom50 = sext i32 %59 to i64
  %arrayidx51 = getelementptr inbounds ptr, ptr %58, i64 %idxprom50
  %60 = load ptr, ptr %arrayidx51, align 8
  %call52 = call i32 @sqlite3_value_numeric_type(ptr noundef %60)
  store i32 %call52, ptr %eType49, align 4
  %61 = load ptr, ptr %idxStr.addr, align 8
  %62 = load i32, ptr %ii, align 4
  %mul53 = mul nsw i32 %62, 2
  %idxprom54 = sext i32 %mul53 to i64
  %arrayidx55 = getelementptr inbounds i8, ptr %61, i64 %idxprom54
  %63 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %63 to i32
  %64 = load ptr, ptr %p46, align 8
  %op = getelementptr inbounds %struct.RtreeConstraint, ptr %64, i32 0, i32 1
  store i32 %conv56, ptr %op, align 4
  %65 = load ptr, ptr %idxStr.addr, align 8
  %66 = load i32, ptr %ii, align 4
  %mul57 = mul nsw i32 %66, 2
  %add58 = add nsw i32 %mul57, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %65, i64 %idxprom59
  %67 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %67 to i32
  %sub = sub nsw i32 %conv61, 48
  %68 = load ptr, ptr %p46, align 8
  %iCoord = getelementptr inbounds %struct.RtreeConstraint, ptr %68, i32 0, i32 0
  store i32 %sub, ptr %iCoord, align 8
  %69 = load ptr, ptr %p46, align 8
  %op62 = getelementptr inbounds %struct.RtreeConstraint, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %op62, align 4
  %cmp63 = icmp sge i32 %70, 70
  br i1 %cmp63, label %if.then65, label %if.else81

if.then65:                                        ; preds = %for.body
  %71 = load ptr, ptr %argv.addr, align 8
  %72 = load i32, ptr %ii, align 4
  %idxprom66 = sext i32 %72 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %71, i64 %idxprom66
  %73 = load ptr, ptr %arrayidx67, align 8
  %74 = load ptr, ptr %p46, align 8
  %call68 = call i32 @deserializeGeometry(ptr noundef %73, ptr noundef %74)
  store i32 %call68, ptr %rc, align 4
  %75 = load i32, ptr %rc, align 4
  %cmp69 = icmp ne i32 %75, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.then65
  br label %for.end

if.end72:                                         ; preds = %if.then65
  %76 = load ptr, ptr %pRtree, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %76, i32 0, i32 4
  %77 = load i8, ptr %nDim2, align 1
  %conv73 = zext i8 %77 to i32
  %78 = load ptr, ptr %p46, align 8
  %pInfo = getelementptr inbounds %struct.RtreeConstraint, ptr %78, i32 0, i32 3
  %79 = load ptr, ptr %pInfo, align 8
  %nCoord = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %79, i32 0, i32 7
  store i32 %conv73, ptr %nCoord, align 8
  %80 = load ptr, ptr %pCsr, align 8
  %anQueue74 = getelementptr inbounds %struct.RtreeCursor, ptr %80, i32 0, i32 14
  %arraydecay75 = getelementptr inbounds [41 x i32], ptr %anQueue74, i64 0, i64 0
  %81 = load ptr, ptr %p46, align 8
  %pInfo76 = getelementptr inbounds %struct.RtreeConstraint, ptr %81, i32 0, i32 3
  %82 = load ptr, ptr %pInfo76, align 8
  %anQueue77 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %82, i32 0, i32 6
  store ptr %arraydecay75, ptr %anQueue77, align 8
  %83 = load ptr, ptr %pRtree, align 8
  %iDepth78 = getelementptr inbounds %struct.Rtree, ptr %83, i32 0, i32 9
  %84 = load i32, ptr %iDepth78, align 4
  %add79 = add nsw i32 %84, 1
  %85 = load ptr, ptr %p46, align 8
  %pInfo80 = getelementptr inbounds %struct.RtreeConstraint, ptr %85, i32 0, i32 3
  %86 = load ptr, ptr %pInfo80, align 8
  %mxLevel = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %86, i32 0, i32 9
  store i32 %add79, ptr %mxLevel, align 8
  br label %if.end138

if.else81:                                        ; preds = %for.body
  %87 = load i32, ptr %eType49, align 4
  %cmp82 = icmp eq i32 %87, 1
  br i1 %cmp82, label %if.then84, label %if.else108

if.then84:                                        ; preds = %if.else81
  %88 = load ptr, ptr %argv.addr, align 8
  %89 = load i32, ptr %ii, align 4
  %idxprom85 = sext i32 %89 to i64
  %arrayidx86 = getelementptr inbounds ptr, ptr %88, i64 %idxprom85
  %90 = load ptr, ptr %arrayidx86, align 8
  %call87 = call i64 @sqlite3_value_int64(ptr noundef %90)
  store i64 %call87, ptr %iVal, align 8
  %91 = load i64, ptr %iVal, align 8
  %conv88 = sitofp i64 %91 to double
  %92 = load ptr, ptr %p46, align 8
  %u = getelementptr inbounds %struct.RtreeConstraint, ptr %92, i32 0, i32 2
  store double %conv88, ptr %u, align 8
  %93 = load i64, ptr %iVal, align 8
  %cmp89 = icmp sge i64 %93, 281474976710656
  br i1 %cmp89, label %if.then94, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.then84
  %94 = load i64, ptr %iVal, align 8
  %cmp92 = icmp sle i64 %94, -281474976710656
  br i1 %cmp92, label %if.then94, label %if.end107

if.then94:                                        ; preds = %lor.lhs.false91, %if.then84
  %95 = load ptr, ptr %p46, align 8
  %op95 = getelementptr inbounds %struct.RtreeConstraint, ptr %95, i32 0, i32 1
  %96 = load i32, ptr %op95, align 4
  %cmp96 = icmp eq i32 %96, 67
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.then94
  %97 = load ptr, ptr %p46, align 8
  %op99 = getelementptr inbounds %struct.RtreeConstraint, ptr %97, i32 0, i32 1
  store i32 66, ptr %op99, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.then94
  %98 = load ptr, ptr %p46, align 8
  %op101 = getelementptr inbounds %struct.RtreeConstraint, ptr %98, i32 0, i32 1
  %99 = load i32, ptr %op101, align 4
  %cmp102 = icmp eq i32 %99, 69
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.end100
  %100 = load ptr, ptr %p46, align 8
  %op105 = getelementptr inbounds %struct.RtreeConstraint, ptr %100, i32 0, i32 1
  store i32 68, ptr %op105, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end100
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %lor.lhs.false91
  br label %if.end137

if.else108:                                       ; preds = %if.else81
  %101 = load i32, ptr %eType49, align 4
  %cmp109 = icmp eq i32 %101, 2
  br i1 %cmp109, label %if.then111, label %if.else116

if.then111:                                       ; preds = %if.else108
  %102 = load ptr, ptr %argv.addr, align 8
  %103 = load i32, ptr %ii, align 4
  %idxprom112 = sext i32 %103 to i64
  %arrayidx113 = getelementptr inbounds ptr, ptr %102, i64 %idxprom112
  %104 = load ptr, ptr %arrayidx113, align 8
  %call114 = call double @sqlite3_value_double(ptr noundef %104)
  %105 = load ptr, ptr %p46, align 8
  %u115 = getelementptr inbounds %struct.RtreeConstraint, ptr %105, i32 0, i32 2
  store double %call114, ptr %u115, align 8
  br label %if.end136

if.else116:                                       ; preds = %if.else108
  %106 = load ptr, ptr %p46, align 8
  %u117 = getelementptr inbounds %struct.RtreeConstraint, ptr %106, i32 0, i32 2
  store double 0.000000e+00, ptr %u117, align 8
  %107 = load i32, ptr %eType49, align 4
  %cmp118 = icmp eq i32 %107, 5
  br i1 %cmp118, label %if.then120, label %if.else122

if.then120:                                       ; preds = %if.else116
  %108 = load ptr, ptr %p46, align 8
  %op121 = getelementptr inbounds %struct.RtreeConstraint, ptr %108, i32 0, i32 1
  store i32 64, ptr %op121, align 4
  br label %if.end135

if.else122:                                       ; preds = %if.else116
  %109 = load ptr, ptr %p46, align 8
  %op123 = getelementptr inbounds %struct.RtreeConstraint, ptr %109, i32 0, i32 1
  %110 = load i32, ptr %op123, align 4
  %cmp124 = icmp eq i32 %110, 67
  br i1 %cmp124, label %if.then130, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %if.else122
  %111 = load ptr, ptr %p46, align 8
  %op127 = getelementptr inbounds %struct.RtreeConstraint, ptr %111, i32 0, i32 1
  %112 = load i32, ptr %op127, align 4
  %cmp128 = icmp eq i32 %112, 66
  br i1 %cmp128, label %if.then130, label %if.else132

if.then130:                                       ; preds = %lor.lhs.false126, %if.else122
  %113 = load ptr, ptr %p46, align 8
  %op131 = getelementptr inbounds %struct.RtreeConstraint, ptr %113, i32 0, i32 1
  store i32 63, ptr %op131, align 4
  br label %if.end134

if.else132:                                       ; preds = %lor.lhs.false126
  %114 = load ptr, ptr %p46, align 8
  %op133 = getelementptr inbounds %struct.RtreeConstraint, ptr %114, i32 0, i32 1
  store i32 64, ptr %op133, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.else132, %if.then130
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then120
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then111
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end107
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end72
  br label %for.inc

for.inc:                                          ; preds = %if.end138
  %115 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %115, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %if.then71, %for.cond
  br label %if.end139

if.end139:                                        ; preds = %for.end, %if.then32
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %land.lhs.true25, %if.else21
  %116 = load i32, ptr %rc, align 4
  %cmp141 = icmp eq i32 %116, 0
  br i1 %cmp141, label %if.then143, label %if.end158

if.then143:                                       ; preds = %if.end140
  %117 = load ptr, ptr %pCsr, align 8
  %118 = load ptr, ptr %pRtree, align 8
  %iDepth144 = getelementptr inbounds %struct.Rtree, ptr %118, i32 0, i32 9
  %119 = load i32, ptr %iDepth144, align 4
  %add145 = add nsw i32 %119, 1
  %conv146 = trunc i32 %add145 to i8
  %call147 = call ptr @rtreeSearchPointNew(ptr noundef %117, double noundef 0.000000e+00, i8 noundef zeroext %conv146)
  store ptr %call147, ptr %pNew, align 8
  %120 = load ptr, ptr %pNew, align 8
  %cmp148 = icmp eq ptr %120, null
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %if.then143
  store i32 7, ptr %retval, align 4
  br label %return

if.end151:                                        ; preds = %if.then143
  %121 = load ptr, ptr %pNew, align 8
  %id152 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %121, i32 0, i32 1
  store i64 1, ptr %id152, align 8
  %122 = load ptr, ptr %pNew, align 8
  %iCell153 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %122, i32 0, i32 4
  store i8 0, ptr %iCell153, align 2
  %123 = load ptr, ptr %pNew, align 8
  %eWithin154 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %123, i32 0, i32 3
  store i8 1, ptr %eWithin154, align 1
  %124 = load ptr, ptr %pRoot, align 8
  %125 = load ptr, ptr %pCsr, align 8
  %aNode155 = getelementptr inbounds %struct.RtreeCursor, ptr %125, i32 0, i32 13
  %arrayidx156 = getelementptr inbounds [5 x ptr], ptr %aNode155, i64 0, i64 0
  store ptr %124, ptr %arrayidx156, align 8
  store ptr null, ptr %pRoot, align 8
  %126 = load ptr, ptr %pCsr, align 8
  %call157 = call i32 @rtreeStepToLeaf(ptr noundef %126)
  store i32 %call157, ptr %rc, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.end151, %if.end140
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.end20
  %127 = load ptr, ptr %pRtree, align 8
  %128 = load ptr, ptr %pRoot, align 8
  %call160 = call i32 @nodeRelease(ptr noundef %127, ptr noundef %128)
  %129 = load ptr, ptr %pRtree, align 8
  call void @rtreeRelease(ptr noundef %129)
  %130 = load i32, ptr %rc, align 4
  store i32 %130, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end159, %if.then150
  %131 = load i32, ptr %retval, align 4
  ret i32 %131
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeNext(ptr noundef %pVtabCursor) #0 {
entry:
  %pVtabCursor.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  store i32 0, ptr %rc, align 4
  %1 = load ptr, ptr %pCsr, align 8
  %bAuxValid = getelementptr inbounds %struct.RtreeCursor, ptr %1, i32 0, i32 3
  %2 = load i8, ptr %bAuxValid, align 2
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pCsr, align 8
  %bAuxValid1 = getelementptr inbounds %struct.RtreeCursor, ptr %3, i32 0, i32 3
  store i8 0, ptr %bAuxValid1, align 2
  %4 = load ptr, ptr %pCsr, align 8
  %pReadAux = getelementptr inbounds %struct.RtreeCursor, ptr %4, i32 0, i32 11
  %5 = load ptr, ptr %pReadAux, align 8
  %call = call i32 @sqlite3_reset(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %pCsr, align 8
  call void @rtreeSearchPointPop(ptr noundef %6)
  %7 = load ptr, ptr %pCsr, align 8
  %call2 = call i32 @rtreeStepToLeaf(ptr noundef %7)
  store i32 %call2, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load ptr, ptr %pCsr, align 8
  %atEOF = getelementptr inbounds %struct.RtreeCursor, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %atEOF, align 8
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pRtree = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %c = alloca %union.RtreeCoord, align 4
  %rc = alloca i32, align 4
  %pNode = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %cur.addr, align 8
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVtab, align 8
  store ptr %1, ptr %pRtree, align 8
  %2 = load ptr, ptr %cur.addr, align 8
  store ptr %2, ptr %pCsr, align 8
  %3 = load ptr, ptr %pCsr, align 8
  %call = call ptr @rtreeSearchPointFirst(ptr noundef %3)
  store ptr %call, ptr %p, align 8
  store i32 0, ptr %rc, align 4
  %4 = load ptr, ptr %pCsr, align 8
  %call1 = call ptr @rtreeNodeOfFirstSearchPoint(ptr noundef %4, ptr noundef %rc)
  store ptr %call1, ptr %pNode, align 8
  %5 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %p, align 8
  %iCell = getelementptr inbounds %struct.RtreeSearchPoint, ptr %8, i32 0, i32 4
  %9 = load i8, ptr %iCell, align 2
  %conv = zext i8 %9 to i32
  %10 = load ptr, ptr %pNode, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 2
  %call4 = call i32 @readInt16(ptr noundef %arrayidx)
  %cmp5 = icmp sge i32 %conv, %call4
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  store i32 4, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end3
  %12 = load i32, ptr %i.addr, align 4
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %13 = load ptr, ptr %ctx.addr, align 8
  %14 = load ptr, ptr %pRtree, align 8
  %15 = load ptr, ptr %pNode, align 8
  %16 = load ptr, ptr %p, align 8
  %iCell12 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %16, i32 0, i32 4
  %17 = load i8, ptr %iCell12, align 2
  %conv13 = zext i8 %17 to i32
  %call14 = call i64 @nodeGetRowid(ptr noundef %14, ptr noundef %15, i32 noundef %conv13)
  call void @sqlite3_result_int64(ptr noundef %13, i64 noundef %call14)
  br label %if.end66

if.else:                                          ; preds = %if.end8
  %18 = load i32, ptr %i.addr, align 4
  %19 = load ptr, ptr %pRtree, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %19, i32 0, i32 4
  %20 = load i8, ptr %nDim2, align 1
  %conv15 = zext i8 %20 to i32
  %cmp16 = icmp sle i32 %18, %conv15
  br i1 %cmp16, label %if.then18, label %if.else28

if.then18:                                        ; preds = %if.else
  %21 = load ptr, ptr %pRtree, align 8
  %22 = load ptr, ptr %pNode, align 8
  %23 = load ptr, ptr %p, align 8
  %iCell19 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %23, i32 0, i32 4
  %24 = load i8, ptr %iCell19, align 2
  %conv20 = zext i8 %24 to i32
  %25 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %25, 1
  call void @nodeGetCoord(ptr noundef %21, ptr noundef %22, i32 noundef %conv20, i32 noundef %sub, ptr noundef %c)
  %26 = load ptr, ptr %pRtree, align 8
  %eCoordType = getelementptr inbounds %struct.Rtree, ptr %26, i32 0, i32 5
  %27 = load i8, ptr %eCoordType, align 2
  %conv21 = zext i8 %27 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.then18
  %28 = load ptr, ptr %ctx.addr, align 8
  %29 = load float, ptr %c, align 4
  %conv25 = fpext float %29 to double
  call void @sqlite3_result_double(ptr noundef %28, double noundef %conv25)
  br label %if.end27

if.else26:                                        ; preds = %if.then18
  %30 = load ptr, ptr %ctx.addr, align 8
  %31 = load i32, ptr %c, align 4
  call void @sqlite3_result_int(ptr noundef %30, i32 noundef %31)
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then24
  br label %if.end65

if.else28:                                        ; preds = %if.else
  %32 = load ptr, ptr %pCsr, align 8
  %bAuxValid = getelementptr inbounds %struct.RtreeCursor, ptr %32, i32 0, i32 3
  %33 = load i8, ptr %bAuxValid, align 2
  %tobool29 = icmp ne i8 %33, 0
  br i1 %tobool29, label %if.end59, label %if.then30

if.then30:                                        ; preds = %if.else28
  %34 = load ptr, ptr %pCsr, align 8
  %pReadAux = getelementptr inbounds %struct.RtreeCursor, ptr %34, i32 0, i32 11
  %35 = load ptr, ptr %pReadAux, align 8
  %cmp31 = icmp eq ptr %35, null
  br i1 %cmp31, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.then30
  %36 = load ptr, ptr %pRtree, align 8
  %db = getelementptr inbounds %struct.Rtree, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %db, align 8
  %38 = load ptr, ptr %pRtree, align 8
  %zReadAuxSql = getelementptr inbounds %struct.Rtree, ptr %38, i32 0, i32 17
  %39 = load ptr, ptr %zReadAuxSql, align 8
  %40 = load ptr, ptr %pCsr, align 8
  %pReadAux34 = getelementptr inbounds %struct.RtreeCursor, ptr %40, i32 0, i32 11
  %call35 = call i32 @sqlite3_prepare_v3(ptr noundef %37, ptr noundef %39, i32 noundef -1, i32 noundef 0, ptr noundef %pReadAux34, ptr noundef null)
  store i32 %call35, ptr %rc, align 4
  %41 = load i32, ptr %rc, align 4
  %tobool36 = icmp ne i32 %41, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then33
  %42 = load i32, ptr %rc, align 4
  store i32 %42, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.then33
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then30
  %43 = load ptr, ptr %pCsr, align 8
  %pReadAux40 = getelementptr inbounds %struct.RtreeCursor, ptr %43, i32 0, i32 11
  %44 = load ptr, ptr %pReadAux40, align 8
  %45 = load ptr, ptr %pRtree, align 8
  %46 = load ptr, ptr %pNode, align 8
  %47 = load ptr, ptr %p, align 8
  %iCell41 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %47, i32 0, i32 4
  %48 = load i8, ptr %iCell41, align 2
  %conv42 = zext i8 %48 to i32
  %call43 = call i64 @nodeGetRowid(ptr noundef %45, ptr noundef %46, i32 noundef %conv42)
  %call44 = call i32 @sqlite3_bind_int64(ptr noundef %44, i32 noundef 1, i64 noundef %call43)
  %49 = load ptr, ptr %pCsr, align 8
  %pReadAux45 = getelementptr inbounds %struct.RtreeCursor, ptr %49, i32 0, i32 11
  %50 = load ptr, ptr %pReadAux45, align 8
  %call46 = call i32 @sqlite3_step(ptr noundef %50)
  store i32 %call46, ptr %rc, align 4
  %51 = load i32, ptr %rc, align 4
  %cmp47 = icmp eq i32 %51, 100
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.end39
  %52 = load ptr, ptr %pCsr, align 8
  %bAuxValid50 = getelementptr inbounds %struct.RtreeCursor, ptr %52, i32 0, i32 3
  store i8 1, ptr %bAuxValid50, align 2
  br label %if.end58

if.else51:                                        ; preds = %if.end39
  %53 = load ptr, ptr %pCsr, align 8
  %pReadAux52 = getelementptr inbounds %struct.RtreeCursor, ptr %53, i32 0, i32 11
  %54 = load ptr, ptr %pReadAux52, align 8
  %call53 = call i32 @sqlite3_reset(ptr noundef %54)
  %55 = load i32, ptr %rc, align 4
  %cmp54 = icmp eq i32 %55, 101
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.else51
  store i32 0, ptr %rc, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.else51
  %56 = load i32, ptr %rc, align 4
  store i32 %56, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.then49
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.else28
  %57 = load ptr, ptr %ctx.addr, align 8
  %58 = load ptr, ptr %pCsr, align 8
  %pReadAux60 = getelementptr inbounds %struct.RtreeCursor, ptr %58, i32 0, i32 11
  %59 = load ptr, ptr %pReadAux60, align 8
  %60 = load i32, ptr %i.addr, align 4
  %61 = load ptr, ptr %pRtree, align 8
  %nDim261 = getelementptr inbounds %struct.Rtree, ptr %61, i32 0, i32 4
  %62 = load i8, ptr %nDim261, align 1
  %conv62 = zext i8 %62 to i32
  %sub63 = sub nsw i32 %60, %conv62
  %add = add nsw i32 %sub63, 1
  %call64 = call ptr @sqlite3_column_value(ptr noundef %59, i32 noundef %add)
  call void @sqlite3_result_value(ptr noundef %57, ptr noundef %call64)
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %if.end27
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end66, %if.end57, %if.then37, %if.then7, %if.then2, %if.then
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeRowid(ptr noundef %pVtabCursor, ptr noundef %pRowid) #0 {
entry:
  %pVtabCursor.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pNode = alloca ptr, align 8
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load ptr, ptr %pCsr, align 8
  %call = call ptr @rtreeSearchPointFirst(ptr noundef %1)
  store ptr %call, ptr %p, align 8
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %pCsr, align 8
  %call1 = call ptr @rtreeNodeOfFirstSearchPoint(ptr noundef %2, ptr noundef %rc)
  store ptr %call1, ptr %pNode, align 8
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %p, align 8
  %iCell = getelementptr inbounds %struct.RtreeSearchPoint, ptr %5, i32 0, i32 4
  %6 = load i8, ptr %iCell, align 2
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %pNode, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 2
  %call2 = call i32 @readInt16(ptr noundef %arrayidx)
  %cmp3 = icmp sge i32 %conv, %call2
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  store i32 4, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %pCsr, align 8
  %base = getelementptr inbounds %struct.RtreeCursor, ptr %9, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %10 = load ptr, ptr %pVtab, align 8
  %11 = load ptr, ptr %pNode, align 8
  %12 = load ptr, ptr %p, align 8
  %iCell6 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %12, i32 0, i32 4
  %13 = load i8, ptr %iCell6, align 2
  %conv7 = zext i8 %13 to i32
  %call8 = call i64 @nodeGetRowid(ptr noundef %10, ptr noundef %11, i32 noundef %conv7)
  %14 = load ptr, ptr %pRowid.addr, align 8
  store i64 %call8, ptr %14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true, %entry
  %15 = load i32, ptr %rc, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeUpdate(ptr noundef %pVtab, i32 noundef %nData, ptr noundef %aData, ptr noundef %pRowid) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtab.addr = alloca ptr, align 8
  %nData.addr = alloca i32, align 4
  %aData.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cell = alloca %struct.RtreeCell, align 8
  %bHaveRowid = alloca i32, align 4
  %ii = alloca i32, align 4
  %nn = alloca i32, align 4
  %steprc = alloca i32, align 4
  %pLeaf = alloca ptr, align 8
  %rc2 = alloca i32, align 4
  %pUp = alloca ptr, align 8
  %jj = alloca i32, align 4
  store ptr %pVtab, ptr %pVtab.addr, align 8
  store i32 %nData, ptr %nData.addr, align 4
  store ptr %aData, ptr %aData.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %pRtree, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %bHaveRowid, align 4
  %1 = load ptr, ptr %pRtree, align 8
  %nNodeRef = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 16
  %2 = load i32, ptr %nNodeRef, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 518, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pRtree, align 8
  call void @rtreeReference(ptr noundef %3)
  call void @llvm.memset.p0.i64(ptr align 8 %cell, i8 0, i64 48, i1 false)
  %4 = load i32, ptr %nData.addr, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then1, label %if.end112

if.then1:                                         ; preds = %if.end
  %5 = load i32, ptr %nData.addr, align 4
  %sub = sub nsw i32 %5, 4
  store i32 %sub, ptr %nn, align 4
  %6 = load i32, ptr %nn, align 4
  %7 = load ptr, ptr %pRtree, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %7, i32 0, i32 4
  %8 = load i8, ptr %nDim2, align 1
  %conv = zext i8 %8 to i32
  %cmp2 = icmp sgt i32 %6, %conv
  br i1 %cmp2, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.then1
  %9 = load ptr, ptr %pRtree, align 8
  %nDim25 = getelementptr inbounds %struct.Rtree, ptr %9, i32 0, i32 4
  %10 = load i8, ptr %nDim25, align 1
  %conv6 = zext i8 %10 to i32
  store i32 %conv6, ptr %nn, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then1
  %11 = load ptr, ptr %pRtree, align 8
  %eCoordType = getelementptr inbounds %struct.Rtree, ptr %11, i32 0, i32 5
  %12 = load i8, ptr %eCoordType, align 2
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then11
  %13 = load i32, ptr %ii, align 4
  %14 = load i32, ptr %nn, align 4
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %aData.addr, align 8
  %16 = load i32, ptr %ii, align 4
  %add = add nsw i32 %16, 3
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  %call = call float @rtreeValueDown(ptr noundef %17)
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 1
  %18 = load i32, ptr %ii, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 %idxprom14
  store float %call, ptr %arrayidx15, align 4
  %19 = load ptr, ptr %aData.addr, align 8
  %20 = load i32, ptr %ii, align 4
  %add16 = add nsw i32 %20, 4
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %19, i64 %idxprom17
  %21 = load ptr, ptr %arrayidx18, align 8
  %call19 = call float @rtreeValueUp(ptr noundef %21)
  %aCoord20 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 1
  %22 = load i32, ptr %ii, align 4
  %add21 = add nsw i32 %22, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord20, i64 0, i64 %idxprom22
  store float %call19, ptr %arrayidx23, align 4
  %aCoord24 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 1
  %23 = load i32, ptr %ii, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord24, i64 0, i64 %idxprom25
  %24 = load float, ptr %arrayidx26, align 4
  %aCoord27 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 1
  %25 = load i32, ptr %ii, align 4
  %add28 = add nsw i32 %25, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord27, i64 0, i64 %idxprom29
  %26 = load float, ptr %arrayidx30, align 4
  %cmp31 = fcmp ogt float %24, %26
  br i1 %cmp31, label %if.then33, label %if.end36

if.then33:                                        ; preds = %for.body
  %27 = load ptr, ptr %pRtree, align 8
  %28 = load i32, ptr %ii, align 4
  %add34 = add nsw i32 %28, 1
  %call35 = call i32 @rtreeConstraintError(ptr noundef %27, i32 noundef %add34)
  store i32 %call35, ptr %rc, align 4
  br label %constraint

if.end36:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %29 = load i32, ptr %ii, align 4
  %add37 = add nsw i32 %29, 2
  store i32 %add37, ptr %ii, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  br label %if.end73

if.else:                                          ; preds = %if.end7
  store i32 0, ptr %ii, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc70, %if.else
  %30 = load i32, ptr %ii, align 4
  %31 = load i32, ptr %nn, align 4
  %cmp39 = icmp slt i32 %30, %31
  br i1 %cmp39, label %for.body41, label %for.end72

for.body41:                                       ; preds = %for.cond38
  %32 = load ptr, ptr %aData.addr, align 8
  %33 = load i32, ptr %ii, align 4
  %add42 = add nsw i32 %33, 3
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds ptr, ptr %32, i64 %idxprom43
  %34 = load ptr, ptr %arrayidx44, align 8
  %call45 = call i32 @sqlite3_value_int(ptr noundef %34)
  %aCoord46 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 1
  %35 = load i32, ptr %ii, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord46, i64 0, i64 %idxprom47
  store i32 %call45, ptr %arrayidx48, align 4
  %36 = load ptr, ptr %aData.addr, align 8
  %37 = load i32, ptr %ii, align 4
  %add49 = add nsw i32 %37, 4
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds ptr, ptr %36, i64 %idxprom50
  %38 = load ptr, ptr %arrayidx51, align 8
  %call52 = call i32 @sqlite3_value_int(ptr noundef %38)
  %aCoord53 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 1
  %39 = load i32, ptr %ii, align 4
  %add54 = add nsw i32 %39, 1
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord53, i64 0, i64 %idxprom55
  store i32 %call52, ptr %arrayidx56, align 4
  %aCoord57 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 1
  %40 = load i32, ptr %ii, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord57, i64 0, i64 %idxprom58
  %41 = load i32, ptr %arrayidx59, align 4
  %aCoord60 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 1
  %42 = load i32, ptr %ii, align 4
  %add61 = add nsw i32 %42, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord60, i64 0, i64 %idxprom62
  %43 = load i32, ptr %arrayidx63, align 4
  %cmp64 = icmp sgt i32 %41, %43
  br i1 %cmp64, label %if.then66, label %if.end69

if.then66:                                        ; preds = %for.body41
  %44 = load ptr, ptr %pRtree, align 8
  %45 = load i32, ptr %ii, align 4
  %add67 = add nsw i32 %45, 1
  %call68 = call i32 @rtreeConstraintError(ptr noundef %44, i32 noundef %add67)
  store i32 %call68, ptr %rc, align 4
  br label %constraint

if.end69:                                         ; preds = %for.body41
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %46 = load i32, ptr %ii, align 4
  %add71 = add nsw i32 %46, 2
  store i32 %add71, ptr %ii, align 4
  br label %for.cond38, !llvm.loop !18

for.end72:                                        ; preds = %for.cond38
  br label %if.end73

if.end73:                                         ; preds = %for.end72, %for.end
  %47 = load ptr, ptr %aData.addr, align 8
  %arrayidx74 = getelementptr inbounds ptr, ptr %47, i64 2
  %48 = load ptr, ptr %arrayidx74, align 8
  %call75 = call i32 @sqlite3_value_type(ptr noundef %48)
  %cmp76 = icmp ne i32 %call75, 5
  br i1 %cmp76, label %if.then78, label %if.end111

if.then78:                                        ; preds = %if.end73
  %49 = load ptr, ptr %aData.addr, align 8
  %arrayidx79 = getelementptr inbounds ptr, ptr %49, i64 2
  %50 = load ptr, ptr %arrayidx79, align 8
  %call80 = call i64 @sqlite3_value_int64(ptr noundef %50)
  %iRowid = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 0
  store i64 %call80, ptr %iRowid, align 8
  %51 = load ptr, ptr %aData.addr, align 8
  %arrayidx81 = getelementptr inbounds ptr, ptr %51, i64 0
  %52 = load ptr, ptr %arrayidx81, align 8
  %call82 = call i32 @sqlite3_value_type(ptr noundef %52)
  %cmp83 = icmp eq i32 %call82, 5
  br i1 %cmp83, label %if.then90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then78
  %53 = load ptr, ptr %aData.addr, align 8
  %arrayidx85 = getelementptr inbounds ptr, ptr %53, i64 0
  %54 = load ptr, ptr %arrayidx85, align 8
  %call86 = call i64 @sqlite3_value_int64(ptr noundef %54)
  %iRowid87 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 0
  %55 = load i64, ptr %iRowid87, align 8
  %cmp88 = icmp ne i64 %call86, %55
  br i1 %cmp88, label %if.then90, label %if.end110

if.then90:                                        ; preds = %lor.lhs.false, %if.then78
  %56 = load ptr, ptr %pRtree, align 8
  %pReadRowid = getelementptr inbounds %struct.Rtree, ptr %56, i32 0, i32 22
  %57 = load ptr, ptr %pReadRowid, align 8
  %iRowid91 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 0
  %58 = load i64, ptr %iRowid91, align 8
  %call92 = call i32 @sqlite3_bind_int64(ptr noundef %57, i32 noundef 1, i64 noundef %58)
  %59 = load ptr, ptr %pRtree, align 8
  %pReadRowid93 = getelementptr inbounds %struct.Rtree, ptr %59, i32 0, i32 22
  %60 = load ptr, ptr %pReadRowid93, align 8
  %call94 = call i32 @sqlite3_step(ptr noundef %60)
  store i32 %call94, ptr %steprc, align 4
  %61 = load ptr, ptr %pRtree, align 8
  %pReadRowid95 = getelementptr inbounds %struct.Rtree, ptr %61, i32 0, i32 22
  %62 = load ptr, ptr %pReadRowid95, align 8
  %call96 = call i32 @sqlite3_reset(ptr noundef %62)
  store i32 %call96, ptr %rc, align 4
  %63 = load i32, ptr %steprc, align 4
  %cmp97 = icmp eq i32 100, %63
  br i1 %cmp97, label %if.then99, label %if.end109

if.then99:                                        ; preds = %if.then90
  %64 = load ptr, ptr %pRtree, align 8
  %db = getelementptr inbounds %struct.Rtree, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %db, align 8
  %call100 = call i32 @sqlite3_vtab_on_conflict(ptr noundef %65)
  %cmp101 = icmp eq i32 %call100, 5
  br i1 %cmp101, label %if.then103, label %if.else106

if.then103:                                       ; preds = %if.then99
  %66 = load ptr, ptr %pRtree, align 8
  %iRowid104 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 0
  %67 = load i64, ptr %iRowid104, align 8
  %call105 = call i32 @rtreeDeleteRowid(ptr noundef %66, i64 noundef %67)
  store i32 %call105, ptr %rc, align 4
  br label %if.end108

if.else106:                                       ; preds = %if.then99
  %68 = load ptr, ptr %pRtree, align 8
  %call107 = call i32 @rtreeConstraintError(ptr noundef %68, i32 noundef 0)
  store i32 %call107, ptr %rc, align 4
  br label %constraint

if.end108:                                        ; preds = %if.then103
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then90
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %lor.lhs.false
  store i32 1, ptr %bHaveRowid, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end73
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end
  %69 = load ptr, ptr %aData.addr, align 8
  %arrayidx113 = getelementptr inbounds ptr, ptr %69, i64 0
  %70 = load ptr, ptr %arrayidx113, align 8
  %call114 = call i32 @sqlite3_value_type(ptr noundef %70)
  %cmp115 = icmp ne i32 %call114, 5
  br i1 %cmp115, label %if.then117, label %if.end121

if.then117:                                       ; preds = %if.end112
  %71 = load ptr, ptr %pRtree, align 8
  %72 = load ptr, ptr %aData.addr, align 8
  %arrayidx118 = getelementptr inbounds ptr, ptr %72, i64 0
  %73 = load ptr, ptr %arrayidx118, align 8
  %call119 = call i64 @sqlite3_value_int64(ptr noundef %73)
  %call120 = call i32 @rtreeDeleteRowid(ptr noundef %71, i64 noundef %call119)
  store i32 %call120, ptr %rc, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.end112
  %74 = load i32, ptr %rc, align 4
  %cmp122 = icmp eq i32 %74, 0
  br i1 %cmp122, label %land.lhs.true, label %if.end175

land.lhs.true:                                    ; preds = %if.end121
  %75 = load i32, ptr %nData.addr, align 4
  %cmp124 = icmp sgt i32 %75, 1
  br i1 %cmp124, label %if.then126, label %if.end175

if.then126:                                       ; preds = %land.lhs.true
  store ptr null, ptr %pLeaf, align 8
  %76 = load i32, ptr %bHaveRowid, align 4
  %cmp127 = icmp eq i32 %76, 0
  br i1 %cmp127, label %if.then129, label %if.end132

if.then129:                                       ; preds = %if.then126
  %77 = load ptr, ptr %pRtree, align 8
  %iRowid130 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 0
  %call131 = call i32 @rtreeNewRowid(ptr noundef %77, ptr noundef %iRowid130)
  store i32 %call131, ptr %rc, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.then126
  %iRowid133 = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 0
  %78 = load i64, ptr %iRowid133, align 8
  %79 = load ptr, ptr %pRowid.addr, align 8
  store i64 %78, ptr %79, align 8
  %80 = load i32, ptr %rc, align 4
  %cmp134 = icmp eq i32 %80, 0
  br i1 %cmp134, label %if.then136, label %if.end138

if.then136:                                       ; preds = %if.end132
  %81 = load ptr, ptr %pRtree, align 8
  %call137 = call i32 @ChooseLeaf(ptr noundef %81, ptr noundef %cell, i32 noundef 0, ptr noundef %pLeaf)
  store i32 %call137, ptr %rc, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end132
  %82 = load i32, ptr %rc, align 4
  %cmp139 = icmp eq i32 %82, 0
  br i1 %cmp139, label %if.then141, label %if.end148

if.then141:                                       ; preds = %if.end138
  %83 = load ptr, ptr %pRtree, align 8
  %84 = load ptr, ptr %pLeaf, align 8
  %call142 = call i32 @rtreeInsertCell(ptr noundef %83, ptr noundef %84, ptr noundef %cell, i32 noundef 0)
  store i32 %call142, ptr %rc, align 4
  %85 = load ptr, ptr %pRtree, align 8
  %86 = load ptr, ptr %pLeaf, align 8
  %call143 = call i32 @nodeRelease(ptr noundef %85, ptr noundef %86)
  store i32 %call143, ptr %rc2, align 4
  %87 = load i32, ptr %rc, align 4
  %cmp144 = icmp eq i32 %87, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.then141
  %88 = load i32, ptr %rc2, align 4
  store i32 %88, ptr %rc, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.then141
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.end138
  %89 = load i32, ptr %rc, align 4
  %cmp149 = icmp eq i32 %89, 0
  br i1 %cmp149, label %land.lhs.true151, label %if.end174

land.lhs.true151:                                 ; preds = %if.end148
  %90 = load ptr, ptr %pRtree, align 8
  %nAux = getelementptr inbounds %struct.Rtree, ptr %90, i32 0, i32 8
  %91 = load i16, ptr %nAux, align 2
  %conv152 = zext i16 %91 to i32
  %tobool153 = icmp ne i32 %conv152, 0
  br i1 %tobool153, label %if.then154, label %if.end174

if.then154:                                       ; preds = %land.lhs.true151
  %92 = load ptr, ptr %pRtree, align 8
  %pWriteAux = getelementptr inbounds %struct.Rtree, ptr %92, i32 0, i32 28
  %93 = load ptr, ptr %pWriteAux, align 8
  store ptr %93, ptr %pUp, align 8
  %94 = load ptr, ptr %pUp, align 8
  %95 = load ptr, ptr %pRowid.addr, align 8
  %96 = load i64, ptr %95, align 8
  %call155 = call i32 @sqlite3_bind_int64(ptr noundef %94, i32 noundef 1, i64 noundef %96)
  store i32 0, ptr %jj, align 4
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc170, %if.then154
  %97 = load i32, ptr %jj, align 4
  %98 = load ptr, ptr %pRtree, align 8
  %nAux157 = getelementptr inbounds %struct.Rtree, ptr %98, i32 0, i32 8
  %99 = load i16, ptr %nAux157, align 2
  %conv158 = zext i16 %99 to i32
  %cmp159 = icmp slt i32 %97, %conv158
  br i1 %cmp159, label %for.body161, label %for.end171

for.body161:                                      ; preds = %for.cond156
  %100 = load ptr, ptr %pUp, align 8
  %101 = load i32, ptr %jj, align 4
  %add162 = add nsw i32 %101, 2
  %102 = load ptr, ptr %aData.addr, align 8
  %103 = load ptr, ptr %pRtree, align 8
  %nDim2163 = getelementptr inbounds %struct.Rtree, ptr %103, i32 0, i32 4
  %104 = load i8, ptr %nDim2163, align 1
  %conv164 = zext i8 %104 to i32
  %add165 = add nsw i32 %conv164, 3
  %105 = load i32, ptr %jj, align 4
  %add166 = add nsw i32 %add165, %105
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds ptr, ptr %102, i64 %idxprom167
  %106 = load ptr, ptr %arrayidx168, align 8
  %call169 = call i32 @sqlite3_bind_value(ptr noundef %100, i32 noundef %add162, ptr noundef %106)
  br label %for.inc170

for.inc170:                                       ; preds = %for.body161
  %107 = load i32, ptr %jj, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, ptr %jj, align 4
  br label %for.cond156, !llvm.loop !19

for.end171:                                       ; preds = %for.cond156
  %108 = load ptr, ptr %pUp, align 8
  %call172 = call i32 @sqlite3_step(ptr noundef %108)
  %109 = load ptr, ptr %pUp, align 8
  %call173 = call i32 @sqlite3_reset(ptr noundef %109)
  store i32 %call173, ptr %rc, align 4
  br label %if.end174

if.end174:                                        ; preds = %for.end171, %land.lhs.true151, %if.end148
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %land.lhs.true, %if.end121
  br label %constraint

constraint:                                       ; preds = %if.end175, %if.else106, %if.then66, %if.then33
  %110 = load ptr, ptr %pRtree, align 8
  call void @rtreeRelease(ptr noundef %110)
  %111 = load i32, ptr %rc, align 4
  store i32 %111, ptr %retval, align 4
  br label %return

return:                                           ; preds = %constraint, %if.then
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeBeginTransaction(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %pRtree, align 8
  %1 = load ptr, ptr %pRtree, align 8
  %inWrTrans = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 7
  store i8 1, ptr %inWrTrans, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeEndTransaction(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %pRtree, align 8
  %1 = load ptr, ptr %pRtree, align 8
  %inWrTrans = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 7
  store i8 0, ptr %inWrTrans, align 8
  %2 = load ptr, ptr %pRtree, align 8
  call void @nodeBlobReset(ptr noundef %2)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeRollback(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  %call = call i32 @rtreeEndTransaction(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeRename(ptr noundef %pVtab, ptr noundef %zNewName) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %zNewName.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zSql = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  store ptr %zNewName, ptr %zNewName.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %pRtree, align 8
  store i32 7, ptr %rc, align 4
  %1 = load ptr, ptr %pRtree, align 8
  %zDb = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %zDb, align 8
  %3 = load ptr, ptr %pRtree, align 8
  %zName = getelementptr inbounds %struct.Rtree, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %zName, align 8
  %5 = load ptr, ptr %zNewName.addr, align 8
  %6 = load ptr, ptr %pRtree, align 8
  %zDb1 = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %zDb1, align 8
  %8 = load ptr, ptr %pRtree, align 8
  %zName2 = getelementptr inbounds %struct.Rtree, ptr %8, i32 0, i32 11
  %9 = load ptr, ptr %zName2, align 8
  %10 = load ptr, ptr %zNewName.addr, align 8
  %11 = load ptr, ptr %pRtree, align 8
  %zDb3 = getelementptr inbounds %struct.Rtree, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %zDb3, align 8
  %13 = load ptr, ptr %pRtree, align 8
  %zName4 = getelementptr inbounds %struct.Rtree, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %zName4, align 8
  %15 = load ptr, ptr %zNewName.addr, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.76, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15)
  store ptr %call, ptr %zSql, align 8
  %16 = load ptr, ptr %zSql, align 8
  %tobool = icmp ne ptr %16, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %pRtree, align 8
  call void @nodeBlobReset(ptr noundef %17)
  %18 = load ptr, ptr %pRtree, align 8
  %db = getelementptr inbounds %struct.Rtree, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %zSql, align 8
  %call5 = call i32 @sqlite3_exec(ptr noundef %19, ptr noundef %20, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call5, ptr %rc, align 4
  %21 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, ptr %rc, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeSavepoint(ptr noundef %pVtab, i32 noundef %iSavepoint) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %iSavepoint.addr = alloca i32, align 4
  %pRtree = alloca ptr, align 8
  %iwt = alloca i8, align 1
  store ptr %pVtab, ptr %pVtab.addr, align 8
  store i32 %iSavepoint, ptr %iSavepoint.addr, align 4
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %pRtree, align 8
  %1 = load ptr, ptr %pRtree, align 8
  %inWrTrans = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 7
  %2 = load i8, ptr %inWrTrans, align 8
  store i8 %2, ptr %iwt, align 1
  %3 = load i32, ptr %iSavepoint.addr, align 4
  %4 = load ptr, ptr %pRtree, align 8
  %inWrTrans1 = getelementptr inbounds %struct.Rtree, ptr %4, i32 0, i32 7
  store i8 0, ptr %inWrTrans1, align 8
  %5 = load ptr, ptr %pRtree, align 8
  call void @nodeBlobReset(ptr noundef %5)
  %6 = load i8, ptr %iwt, align 1
  %7 = load ptr, ptr %pRtree, align 8
  %inWrTrans2 = getelementptr inbounds %struct.Rtree, ptr %7, i32 0, i32 7
  store i8 %6, ptr %inWrTrans2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeShadowName(ptr noundef %zName) #0 {
entry:
  %retval = alloca i32, align 4
  %zName.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %zName, ptr %zName.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %zName.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x ptr], ptr @rtreeShadowName.azName, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_stricmp(ptr noundef %1, ptr noundef %3)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeIntegrity(ptr noundef %pVtab, ptr noundef %zSchema, ptr noundef %zName, i32 noundef %isQuick, ptr noundef %pzErr) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %zSchema.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %isQuick.addr = alloca i32, align 4
  %pzErr.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVtab, ptr %pVtab.addr, align 8
  store ptr %zSchema, ptr %zSchema.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %isQuick, ptr %isQuick.addr, align 4
  store ptr %pzErr, ptr %pzErr.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %pRtree, align 8
  %1 = load ptr, ptr %zSchema.addr, align 8
  %2 = load ptr, ptr %zName.addr, align 8
  %3 = load i32, ptr %isQuick.addr, align 4
  %4 = load ptr, ptr %pRtree, align 8
  %db = getelementptr inbounds %struct.Rtree, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pRtree, align 8
  %zDb = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %zDb, align 8
  %8 = load ptr, ptr %pRtree, align 8
  %zName1 = getelementptr inbounds %struct.Rtree, ptr %8, i32 0, i32 11
  %9 = load ptr, ptr %zName1, align 8
  %10 = load ptr, ptr %pzErr.addr, align 8
  %call = call i32 @rtreeCheckTable(ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %10)
  store i32 %call, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %pzErr.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %pRtree, align 8
  %zDb2 = getelementptr inbounds %struct.Rtree, ptr %14, i32 0, i32 10
  %15 = load ptr, ptr %zDb2, align 8
  %16 = load ptr, ptr %pRtree, align 8
  %zName3 = getelementptr inbounds %struct.Rtree, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %zName3, align 8
  %18 = load ptr, ptr %pzErr.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %call4 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.80, ptr noundef %15, ptr noundef %17, ptr noundef %19)
  %20 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call4, ptr %20, align 8
  %21 = load ptr, ptr %pzErr.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %cmp5 = icmp eq ptr %22, null
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 7, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %land.lhs.true, %entry
  %23 = load i32, ptr %rc, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeInit(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr, i32 noundef %isCreate) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %isCreate.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pRtree = alloca ptr, align 8
  %nDb = alloca i32, align 4
  %nName = alloca i32, align 4
  %eCoordType = alloca i32, align 4
  %pSql = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %ii = alloca i32, align 4
  %iErr = alloca i32, align 4
  %aErrMsg = alloca [5 x ptr], align 8
  %zArg = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store i32 %isCreate, ptr %isCreate.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pAux.addr, align 8
  %tobool = icmp ne ptr %0, null
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, ptr %eCoordType, align 4
  store i32 4, ptr %ii, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %aErrMsg, ptr align 8 @__const.rtreeInit.aErrMsg, i64 40, i1 false)
  %2 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %2, 6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 103
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp sge i32 %4, 6
  %conv = zext i1 %cmp2 to i32
  %add = add nsw i32 2, %conv
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %aErrMsg, i64 0, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.40, ptr noundef %5)
  %6 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call, ptr %6, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %db.addr, align 8
  %call3 = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %7, i32 noundef 1, i32 noundef 1)
  %8 = load ptr, ptr %db.addr, align 8
  %call4 = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %8, i32 noundef 2)
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i64 @strlen(ptr noundef %10)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %nDb, align 4
  %11 = load ptr, ptr %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %11, i64 2
  %12 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i64 @strlen(ptr noundef %12)
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %nName, align 4
  %13 = load i32, ptr %nDb, align 4
  %conv11 = sext i32 %13 to i64
  %add12 = add i64 968, %conv11
  %14 = load i32, ptr %nName, align 4
  %mul = mul nsw i32 %14, 2
  %conv13 = sext i32 %mul to i64
  %add14 = add i64 %add12, %conv13
  %add15 = add i64 %add14, 8
  %call16 = call ptr @sqlite3_malloc64(i64 noundef %add15)
  store ptr %call16, ptr %pRtree, align 8
  %15 = load ptr, ptr %pRtree, align 8
  %tobool17 = icmp ne ptr %15, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end
  %16 = load ptr, ptr %pRtree, align 8
  %17 = load i32, ptr %nDb, align 4
  %conv20 = sext i32 %17 to i64
  %add21 = add i64 968, %conv20
  %18 = load i32, ptr %nName, align 4
  %mul22 = mul nsw i32 %18, 2
  %conv23 = sext i32 %mul22 to i64
  %add24 = add i64 %add21, %conv23
  %add25 = add i64 %add24, 8
  %19 = load ptr, ptr %pRtree, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call26 = call ptr @__memset_chk(ptr noundef %16, i32 noundef 0, i64 noundef %add25, i64 noundef %20) #7
  %21 = load ptr, ptr %pRtree, align 8
  %nBusy = getelementptr inbounds %struct.Rtree, ptr %21, i32 0, i32 13
  store i32 1, ptr %nBusy, align 8
  %22 = load ptr, ptr %pRtree, align 8
  %base = getelementptr inbounds %struct.Rtree, ptr %22, i32 0, i32 0
  %pModule = getelementptr inbounds %struct.sqlite3_vtab, ptr %base, i32 0, i32 0
  store ptr @rtreeModule, ptr %pModule, align 8
  %23 = load ptr, ptr %pRtree, align 8
  %arrayidx27 = getelementptr inbounds %struct.Rtree, ptr %23, i64 1
  %24 = load ptr, ptr %pRtree, align 8
  %zDb = getelementptr inbounds %struct.Rtree, ptr %24, i32 0, i32 10
  store ptr %arrayidx27, ptr %zDb, align 8
  %25 = load ptr, ptr %pRtree, align 8
  %zDb28 = getelementptr inbounds %struct.Rtree, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %zDb28, align 8
  %27 = load i32, ptr %nDb, align 4
  %add29 = add nsw i32 %27, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %26, i64 %idxprom30
  %28 = load ptr, ptr %pRtree, align 8
  %zName = getelementptr inbounds %struct.Rtree, ptr %28, i32 0, i32 11
  store ptr %arrayidx31, ptr %zName, align 8
  %29 = load ptr, ptr %pRtree, align 8
  %zName32 = getelementptr inbounds %struct.Rtree, ptr %29, i32 0, i32 11
  %30 = load ptr, ptr %zName32, align 8
  %31 = load i32, ptr %nName, align 4
  %add33 = add nsw i32 %31, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %30, i64 %idxprom34
  %32 = load ptr, ptr %pRtree, align 8
  %zNodeName = getelementptr inbounds %struct.Rtree, ptr %32, i32 0, i32 12
  store ptr %arrayidx35, ptr %zNodeName, align 8
  %33 = load i32, ptr %eCoordType, align 4
  %conv36 = trunc i32 %33 to i8
  %34 = load ptr, ptr %pRtree, align 8
  %eCoordType37 = getelementptr inbounds %struct.Rtree, ptr %34, i32 0, i32 5
  store i8 %conv36, ptr %eCoordType37, align 2
  %35 = load ptr, ptr %pRtree, align 8
  %zDb38 = getelementptr inbounds %struct.Rtree, ptr %35, i32 0, i32 10
  %36 = load ptr, ptr %zDb38, align 8
  %37 = load ptr, ptr %argv.addr, align 8
  %arrayidx39 = getelementptr inbounds ptr, ptr %37, i64 1
  %38 = load ptr, ptr %arrayidx39, align 8
  %39 = load i32, ptr %nDb, align 4
  %conv40 = sext i32 %39 to i64
  %40 = load ptr, ptr %pRtree, align 8
  %zDb41 = getelementptr inbounds %struct.Rtree, ptr %40, i32 0, i32 10
  %41 = load ptr, ptr %zDb41, align 8
  %42 = call i64 @llvm.objectsize.i64.p0(ptr %41, i1 false, i1 true, i1 false)
  %call42 = call ptr @__memcpy_chk(ptr noundef %36, ptr noundef %38, i64 noundef %conv40, i64 noundef %42) #7
  %43 = load ptr, ptr %pRtree, align 8
  %zName43 = getelementptr inbounds %struct.Rtree, ptr %43, i32 0, i32 11
  %44 = load ptr, ptr %zName43, align 8
  %45 = load ptr, ptr %argv.addr, align 8
  %arrayidx44 = getelementptr inbounds ptr, ptr %45, i64 2
  %46 = load ptr, ptr %arrayidx44, align 8
  %47 = load i32, ptr %nName, align 4
  %conv45 = sext i32 %47 to i64
  %48 = load ptr, ptr %pRtree, align 8
  %zName46 = getelementptr inbounds %struct.Rtree, ptr %48, i32 0, i32 11
  %49 = load ptr, ptr %zName46, align 8
  %50 = call i64 @llvm.objectsize.i64.p0(ptr %49, i1 false, i1 true, i1 false)
  %call47 = call ptr @__memcpy_chk(ptr noundef %44, ptr noundef %46, i64 noundef %conv45, i64 noundef %50) #7
  %51 = load ptr, ptr %pRtree, align 8
  %zNodeName48 = getelementptr inbounds %struct.Rtree, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %zNodeName48, align 8
  %53 = load ptr, ptr %argv.addr, align 8
  %arrayidx49 = getelementptr inbounds ptr, ptr %53, i64 2
  %54 = load ptr, ptr %arrayidx49, align 8
  %55 = load i32, ptr %nName, align 4
  %conv50 = sext i32 %55 to i64
  %56 = load ptr, ptr %pRtree, align 8
  %zNodeName51 = getelementptr inbounds %struct.Rtree, ptr %56, i32 0, i32 12
  %57 = load ptr, ptr %zNodeName51, align 8
  %58 = call i64 @llvm.objectsize.i64.p0(ptr %57, i1 false, i1 true, i1 false)
  %call52 = call ptr @__memcpy_chk(ptr noundef %52, ptr noundef %54, i64 noundef %conv50, i64 noundef %58) #7
  %59 = load ptr, ptr %pRtree, align 8
  %zNodeName53 = getelementptr inbounds %struct.Rtree, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %zNodeName53, align 8
  %61 = load i32, ptr %nName, align 4
  %idxprom54 = sext i32 %61 to i64
  %arrayidx55 = getelementptr inbounds i8, ptr %60, i64 %idxprom54
  %62 = load ptr, ptr %pRtree, align 8
  %zNodeName56 = getelementptr inbounds %struct.Rtree, ptr %62, i32 0, i32 12
  %63 = load ptr, ptr %zNodeName56, align 8
  %64 = load i32, ptr %nName, align 4
  %idxprom57 = sext i32 %64 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %63, i64 %idxprom57
  %65 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx58, i1 false, i1 true, i1 false)
  %call59 = call ptr @__memcpy_chk(ptr noundef %arrayidx55, ptr noundef @.str.41, i64 noundef 6, i64 noundef %65) #7
  %66 = load ptr, ptr %db.addr, align 8
  %call60 = call ptr @sqlite3_str_new(ptr noundef %66)
  store ptr %call60, ptr %pSql, align 8
  %67 = load ptr, ptr %pSql, align 8
  %68 = load ptr, ptr %argv.addr, align 8
  %arrayidx61 = getelementptr inbounds ptr, ptr %68, i64 3
  %69 = load ptr, ptr %arrayidx61, align 8
  %call62 = call i32 @rtreeTokenLength(ptr noundef %69)
  %70 = load ptr, ptr %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds ptr, ptr %70, i64 3
  %71 = load ptr, ptr %arrayidx63, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %67, ptr noundef @.str.42, i32 noundef %call62, ptr noundef %71)
  store i32 4, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end19
  %72 = load i32, ptr %ii, align 4
  %73 = load i32, ptr %argc.addr, align 4
  %cmp64 = icmp slt i32 %72, %73
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load ptr, ptr %argv.addr, align 8
  %75 = load i32, ptr %ii, align 4
  %idxprom66 = sext i32 %75 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %74, i64 %idxprom66
  %76 = load ptr, ptr %arrayidx67, align 8
  store ptr %76, ptr %zArg, align 8
  %77 = load ptr, ptr %zArg, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %77, i64 0
  %78 = load i8, ptr %arrayidx68, align 1
  %conv69 = sext i8 %78 to i32
  %cmp70 = icmp eq i32 %conv69, 43
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %for.body
  %79 = load ptr, ptr %pRtree, align 8
  %nAux = getelementptr inbounds %struct.Rtree, ptr %79, i32 0, i32 8
  %80 = load i16, ptr %nAux, align 2
  %inc = add i16 %80, 1
  store i16 %inc, ptr %nAux, align 2
  %81 = load ptr, ptr %pSql, align 8
  %82 = load ptr, ptr %zArg, align 8
  %add.ptr = getelementptr inbounds i8, ptr %82, i64 1
  %call73 = call i32 @rtreeTokenLength(ptr noundef %add.ptr)
  %83 = load ptr, ptr %zArg, align 8
  %add.ptr74 = getelementptr inbounds i8, ptr %83, i64 1
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %81, ptr noundef @.str.43, i32 noundef %call73, ptr noundef %add.ptr74)
  br label %if.end86

if.else:                                          ; preds = %for.body
  %84 = load ptr, ptr %pRtree, align 8
  %nAux75 = getelementptr inbounds %struct.Rtree, ptr %84, i32 0, i32 8
  %85 = load i16, ptr %nAux75, align 2
  %conv76 = zext i16 %85 to i32
  %cmp77 = icmp sgt i32 %conv76, 0
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.else
  br label %for.end

if.else80:                                        ; preds = %if.else
  %86 = load ptr, ptr %pRtree, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %86, i32 0, i32 4
  %87 = load i8, ptr %nDim2, align 1
  %inc81 = add i8 %87, 1
  store i8 %inc81, ptr %nDim2, align 1
  %88 = load ptr, ptr %pSql, align 8
  %89 = load i32, ptr %eCoordType, align 4
  %idxprom82 = sext i32 %89 to i64
  %arrayidx83 = getelementptr inbounds [2 x ptr], ptr @rtreeInit.azFormat, i64 0, i64 %idxprom82
  %90 = load ptr, ptr %arrayidx83, align 8
  %91 = load ptr, ptr %zArg, align 8
  %call84 = call i32 @rtreeTokenLength(ptr noundef %91)
  %92 = load ptr, ptr %zArg, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %88, ptr noundef %90, i32 noundef %call84, ptr noundef %92)
  br label %if.end85

if.end85:                                         ; preds = %if.else80
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then72
  br label %for.inc

for.inc:                                          ; preds = %if.end86
  %93 = load i32, ptr %ii, align 4
  %inc87 = add nsw i32 %93, 1
  store i32 %inc87, ptr %ii, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %if.then79, %for.cond
  %94 = load ptr, ptr %pSql, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %94, ptr noundef @.str.46)
  %95 = load ptr, ptr %pSql, align 8
  %call88 = call ptr @sqlite3_str_finish(ptr noundef %95)
  store ptr %call88, ptr %zSql, align 8
  %96 = load ptr, ptr %zSql, align 8
  %tobool89 = icmp ne ptr %96, null
  br i1 %tobool89, label %if.else91, label %if.then90

if.then90:                                        ; preds = %for.end
  store i32 7, ptr %rc, align 4
  br label %if.end106

if.else91:                                        ; preds = %for.end
  %97 = load i32, ptr %ii, align 4
  %98 = load i32, ptr %argc.addr, align 4
  %cmp92 = icmp slt i32 %97, %98
  br i1 %cmp92, label %if.then94, label %if.else97

if.then94:                                        ; preds = %if.else91
  %arrayidx95 = getelementptr inbounds [5 x ptr], ptr %aErrMsg, i64 0, i64 4
  %99 = load ptr, ptr %arrayidx95, align 8
  %call96 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.40, ptr noundef %99)
  %100 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call96, ptr %100, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end105

if.else97:                                        ; preds = %if.else91
  %101 = load ptr, ptr %db.addr, align 8
  %102 = load ptr, ptr %zSql, align 8
  %call98 = call i32 @sqlite3_declare_vtab(ptr noundef %101, ptr noundef %102)
  store i32 %call98, ptr %rc, align 4
  %cmp99 = icmp ne i32 0, %call98
  br i1 %cmp99, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.else97
  %103 = load ptr, ptr %db.addr, align 8
  %call102 = call ptr @sqlite3_errmsg(ptr noundef %103)
  %call103 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.40, ptr noundef %call102)
  %104 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call103, ptr %104, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.else97
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then94
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then90
  %105 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %105)
  %106 = load i32, ptr %rc, align 4
  %tobool107 = icmp ne i32 %106, 0
  br i1 %tobool107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end106
  br label %rtreeInit_fail

if.end109:                                        ; preds = %if.end106
  %107 = load ptr, ptr %pRtree, align 8
  %nDim2110 = getelementptr inbounds %struct.Rtree, ptr %107, i32 0, i32 4
  %108 = load i8, ptr %nDim2110, align 1
  %conv111 = zext i8 %108 to i32
  %div = sdiv i32 %conv111, 2
  %conv112 = trunc i32 %div to i8
  %109 = load ptr, ptr %pRtree, align 8
  %nDim = getelementptr inbounds %struct.Rtree, ptr %109, i32 0, i32 3
  store i8 %conv112, ptr %nDim, align 4
  %110 = load ptr, ptr %pRtree, align 8
  %nDim113 = getelementptr inbounds %struct.Rtree, ptr %110, i32 0, i32 3
  %111 = load i8, ptr %nDim113, align 4
  %conv114 = zext i8 %111 to i32
  %cmp115 = icmp slt i32 %conv114, 1
  br i1 %cmp115, label %if.then117, label %if.else118

if.then117:                                       ; preds = %if.end109
  store i32 2, ptr %iErr, align 4
  br label %if.end132

if.else118:                                       ; preds = %if.end109
  %112 = load ptr, ptr %pRtree, align 8
  %nDim2119 = getelementptr inbounds %struct.Rtree, ptr %112, i32 0, i32 4
  %113 = load i8, ptr %nDim2119, align 1
  %conv120 = zext i8 %113 to i32
  %cmp121 = icmp sgt i32 %conv120, 10
  br i1 %cmp121, label %if.then123, label %if.else124

if.then123:                                       ; preds = %if.else118
  store i32 3, ptr %iErr, align 4
  br label %if.end131

if.else124:                                       ; preds = %if.else118
  %114 = load ptr, ptr %pRtree, align 8
  %nDim2125 = getelementptr inbounds %struct.Rtree, ptr %114, i32 0, i32 4
  %115 = load i8, ptr %nDim2125, align 1
  %conv126 = zext i8 %115 to i32
  %rem = srem i32 %conv126, 2
  %tobool127 = icmp ne i32 %rem, 0
  br i1 %tobool127, label %if.then128, label %if.else129

if.then128:                                       ; preds = %if.else124
  store i32 1, ptr %iErr, align 4
  br label %if.end130

if.else129:                                       ; preds = %if.else124
  store i32 0, ptr %iErr, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.else129, %if.then128
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.then123
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then117
  %116 = load i32, ptr %iErr, align 4
  %tobool133 = icmp ne i32 %116, 0
  br i1 %tobool133, label %if.then134, label %if.end138

if.then134:                                       ; preds = %if.end132
  %117 = load i32, ptr %iErr, align 4
  %idxprom135 = sext i32 %117 to i64
  %arrayidx136 = getelementptr inbounds [5 x ptr], ptr %aErrMsg, i64 0, i64 %idxprom135
  %118 = load ptr, ptr %arrayidx136, align 8
  %call137 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.40, ptr noundef %118)
  %119 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call137, ptr %119, align 8
  br label %rtreeInit_fail

if.end138:                                        ; preds = %if.end132
  %120 = load ptr, ptr %pRtree, align 8
  %nDim2139 = getelementptr inbounds %struct.Rtree, ptr %120, i32 0, i32 4
  %121 = load i8, ptr %nDim2139, align 1
  %conv140 = zext i8 %121 to i32
  %mul141 = mul nsw i32 %conv140, 4
  %add142 = add nsw i32 8, %mul141
  %conv143 = trunc i32 %add142 to i8
  %122 = load ptr, ptr %pRtree, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %122, i32 0, i32 6
  store i8 %conv143, ptr %nBytesPerCell, align 1
  %123 = load ptr, ptr %db.addr, align 8
  %124 = load ptr, ptr %pRtree, align 8
  %125 = load i32, ptr %isCreate.addr, align 4
  %126 = load ptr, ptr %pzErr.addr, align 8
  %call144 = call i32 @getNodeSize(ptr noundef %123, ptr noundef %124, i32 noundef %125, ptr noundef %126)
  store i32 %call144, ptr %rc, align 4
  %127 = load i32, ptr %rc, align 4
  %tobool145 = icmp ne i32 %127, 0
  br i1 %tobool145, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end138
  br label %rtreeInit_fail

if.end147:                                        ; preds = %if.end138
  %128 = load ptr, ptr %pRtree, align 8
  %129 = load ptr, ptr %db.addr, align 8
  %130 = load ptr, ptr %argv.addr, align 8
  %arrayidx148 = getelementptr inbounds ptr, ptr %130, i64 1
  %131 = load ptr, ptr %arrayidx148, align 8
  %132 = load ptr, ptr %argv.addr, align 8
  %arrayidx149 = getelementptr inbounds ptr, ptr %132, i64 2
  %133 = load ptr, ptr %arrayidx149, align 8
  %134 = load i32, ptr %isCreate.addr, align 4
  %call150 = call i32 @rtreeSqlInit(ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, i32 noundef %134)
  store i32 %call150, ptr %rc, align 4
  %135 = load i32, ptr %rc, align 4
  %tobool151 = icmp ne i32 %135, 0
  br i1 %tobool151, label %if.then152, label %if.end155

if.then152:                                       ; preds = %if.end147
  %136 = load ptr, ptr %db.addr, align 8
  %call153 = call ptr @sqlite3_errmsg(ptr noundef %136)
  %call154 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.40, ptr noundef %call153)
  %137 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call154, ptr %137, align 8
  br label %rtreeInit_fail

if.end155:                                        ; preds = %if.end147
  %138 = load ptr, ptr %pRtree, align 8
  %139 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %138, ptr %139, align 8
  store i32 0, ptr %retval, align 4
  br label %return

rtreeInit_fail:                                   ; preds = %if.then152, %if.then146, %if.then134, %if.then108
  %140 = load i32, ptr %rc, align 4
  %cmp156 = icmp eq i32 %140, 0
  br i1 %cmp156, label %if.then158, label %if.end159

if.then158:                                       ; preds = %rtreeInit_fail
  store i32 1, ptr %rc, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %rtreeInit_fail
  %141 = load ptr, ptr %pRtree, align 8
  call void @rtreeRelease(ptr noundef %141)
  %142 = load i32, ptr %rc, align 4
  store i32 %142, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end159, %if.end155, %if.then18, %if.then
  %143 = load i32, ptr %retval, align 4
  ret i32 %143
}

declare i32 @sqlite3_vtab_config(ptr noundef, i32 noundef, ...) #1

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeTokenLength(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %dummy = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store i32 0, ptr %dummy, align 4
  %0 = load ptr, ptr %z.addr, align 8
  %call = call i64 @sqlite3GetToken(ptr noundef %0, ptr noundef %dummy)
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_errmsg(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getNodeSize(ptr noundef %db, ptr noundef %pRtree, i32 noundef %isCreate, ptr noundef %pzErr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pRtree.addr = alloca ptr, align 8
  %isCreate.addr = alloca i32, align 4
  %pzErr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zSql = alloca ptr, align 8
  %iPageSize = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store i32 %isCreate, ptr %isCreate.addr, align 4
  store ptr %pzErr, ptr %pzErr.addr, align 8
  %0 = load i32, ptr %isCreate.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  store i32 0, ptr %iPageSize, align 4
  %1 = load ptr, ptr %pRtree.addr, align 8
  %zDb = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %zDb, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.47, ptr noundef %2)
  store ptr %call, ptr %zSql, align 8
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %zSql, align 8
  %call1 = call i32 @getIntFromStmt(ptr noundef %3, ptr noundef %4, ptr noundef %iPageSize)
  store i32 %call1, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load i32, ptr %iPageSize, align 4
  %sub = sub nsw i32 %6, 64
  %7 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %7, i32 0, i32 2
  store i32 %sub, ptr %iNodeSize, align 8
  %8 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %8, i32 0, i32 6
  %9 = load i8, ptr %nBytesPerCell, align 1
  %conv = zext i8 %9 to i32
  %mul = mul nsw i32 %conv, 51
  %add = add nsw i32 4, %mul
  %10 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize3 = getelementptr inbounds %struct.Rtree, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iNodeSize3, align 8
  %cmp4 = icmp slt i32 %add, %11
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then2
  %12 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell7 = getelementptr inbounds %struct.Rtree, ptr %12, i32 0, i32 6
  %13 = load i8, ptr %nBytesPerCell7, align 1
  %conv8 = zext i8 %13 to i32
  %mul9 = mul nsw i32 %conv8, 51
  %add10 = add nsw i32 4, %mul9
  %14 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize11 = getelementptr inbounds %struct.Rtree, ptr %14, i32 0, i32 2
  store i32 %add10, ptr %iNodeSize11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then2
  br label %if.end14

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %db.addr, align 8
  %call12 = call ptr @sqlite3_errmsg(ptr noundef %15)
  %call13 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.40, ptr noundef %call12)
  %16 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call13, ptr %16, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  br label %if.end34

if.else15:                                        ; preds = %entry
  %17 = load ptr, ptr %pRtree.addr, align 8
  %zDb16 = getelementptr inbounds %struct.Rtree, ptr %17, i32 0, i32 10
  %18 = load ptr, ptr %zDb16, align 8
  %19 = load ptr, ptr %pRtree.addr, align 8
  %zName = getelementptr inbounds %struct.Rtree, ptr %19, i32 0, i32 11
  %20 = load ptr, ptr %zName, align 8
  %call17 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.48, ptr noundef %18, ptr noundef %20)
  store ptr %call17, ptr %zSql, align 8
  %21 = load ptr, ptr %db.addr, align 8
  %22 = load ptr, ptr %zSql, align 8
  %23 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize18 = getelementptr inbounds %struct.Rtree, ptr %23, i32 0, i32 2
  %call19 = call i32 @getIntFromStmt(ptr noundef %21, ptr noundef %22, ptr noundef %iNodeSize18)
  store i32 %call19, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp20 = icmp ne i32 %24, 0
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.else15
  %25 = load ptr, ptr %db.addr, align 8
  %call23 = call ptr @sqlite3_errmsg(ptr noundef %25)
  %call24 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.40, ptr noundef %call23)
  %26 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call24, ptr %26, align 8
  br label %if.end33

if.else25:                                        ; preds = %if.else15
  %27 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize26 = getelementptr inbounds %struct.Rtree, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %iNodeSize26, align 8
  %cmp27 = icmp slt i32 %28, 448
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.else25
  store i32 267, ptr %rc, align 4
  %29 = load ptr, ptr %pRtree.addr, align 8
  %zName30 = getelementptr inbounds %struct.Rtree, ptr %29, i32 0, i32 11
  %30 = load ptr, ptr %zName30, align 8
  %call31 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.49, ptr noundef %30)
  %31 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call31, ptr %31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.else25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then22
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end14
  %32 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %32)
  %33 = load i32, ptr %rc, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeSqlInit(ptr noundef %pRtree, ptr noundef %db, ptr noundef %zDb, ptr noundef %zPrefix, i32 noundef %isCreate) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %zPrefix.addr = alloca ptr, align 8
  %isCreate.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %appStmt = alloca [8 x ptr], align 8
  %i = alloca i32, align 4
  %f = alloca i32, align 4
  %zCreate = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ii = alloca i32, align 4
  %zSql = alloca ptr, align 8
  %zFormat = alloca ptr, align 8
  %p58 = alloca ptr, align 8
  %ii60 = alloca i32, align 4
  %zSql61 = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  store ptr %zPrefix, ptr %zPrefix.addr, align 8
  store i32 %isCreate, ptr %isCreate.addr, align 4
  store i32 0, ptr %rc, align 4
  store i32 5, ptr %f, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %pRtree.addr, align 8
  %db1 = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 1
  store ptr %0, ptr %db1, align 8
  %2 = load i32, ptr %isCreate.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3_str_new(ptr noundef %3)
  store ptr %call, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %5 = load ptr, ptr %zDb.addr, align 8
  %6 = load ptr, ptr %zPrefix.addr, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %4, ptr noundef @.str.58, ptr noundef %5, ptr noundef %6)
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %ii, align 4
  %8 = load ptr, ptr %pRtree.addr, align 8
  %nAux = getelementptr inbounds %struct.Rtree, ptr %8, i32 0, i32 8
  %9 = load i16, ptr %nAux, align 2
  %conv = zext i16 %9 to i32
  %cmp = icmp slt i32 %7, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %p, align 8
  %11 = load i32, ptr %ii, align 4
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %10, ptr noundef @.str.59, i32 noundef %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %p, align 8
  %14 = load ptr, ptr %zDb.addr, align 8
  %15 = load ptr, ptr %zPrefix.addr, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %13, ptr noundef @.str.60, ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %p, align 8
  %17 = load ptr, ptr %zDb.addr, align 8
  %18 = load ptr, ptr %zPrefix.addr, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %16, ptr noundef @.str.61, ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %p, align 8
  %20 = load ptr, ptr %zDb.addr, align 8
  %21 = load ptr, ptr %zPrefix.addr, align 8
  %22 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %iNodeSize, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %19, ptr noundef @.str.62, ptr noundef %20, ptr noundef %21, i32 noundef %23)
  %24 = load ptr, ptr %p, align 8
  %call3 = call ptr @sqlite3_str_finish(ptr noundef %24)
  store ptr %call3, ptr %zCreate, align 8
  %25 = load ptr, ptr %zCreate, align 8
  %tobool4 = icmp ne ptr %25, null
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %for.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %26 = load ptr, ptr %db.addr, align 8
  %27 = load ptr, ptr %zCreate, align 8
  %call6 = call i32 @sqlite3_exec(ptr noundef %26, ptr noundef %27, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call6, ptr %rc, align 4
  %28 = load ptr, ptr %zCreate, align 8
  call void @sqlite3_free(ptr noundef %28)
  %29 = load i32, ptr %rc, align 4
  %cmp7 = icmp ne i32 %29, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %30 = load i32, ptr %rc, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  %31 = load ptr, ptr %pRtree.addr, align 8
  %pWriteNode = getelementptr inbounds %struct.Rtree, ptr %31, i32 0, i32 20
  %arrayidx = getelementptr inbounds [8 x ptr], ptr %appStmt, i64 0, i64 0
  store ptr %pWriteNode, ptr %arrayidx, align 8
  %32 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteNode = getelementptr inbounds %struct.Rtree, ptr %32, i32 0, i32 21
  %arrayidx12 = getelementptr inbounds [8 x ptr], ptr %appStmt, i64 0, i64 1
  store ptr %pDeleteNode, ptr %arrayidx12, align 8
  %33 = load ptr, ptr %pRtree.addr, align 8
  %pReadRowid = getelementptr inbounds %struct.Rtree, ptr %33, i32 0, i32 22
  %arrayidx13 = getelementptr inbounds [8 x ptr], ptr %appStmt, i64 0, i64 2
  store ptr %pReadRowid, ptr %arrayidx13, align 8
  %34 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid = getelementptr inbounds %struct.Rtree, ptr %34, i32 0, i32 23
  %arrayidx14 = getelementptr inbounds [8 x ptr], ptr %appStmt, i64 0, i64 3
  store ptr %pWriteRowid, ptr %arrayidx14, align 8
  %35 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteRowid = getelementptr inbounds %struct.Rtree, ptr %35, i32 0, i32 24
  %arrayidx15 = getelementptr inbounds [8 x ptr], ptr %appStmt, i64 0, i64 4
  store ptr %pDeleteRowid, ptr %arrayidx15, align 8
  %36 = load ptr, ptr %pRtree.addr, align 8
  %pReadParent = getelementptr inbounds %struct.Rtree, ptr %36, i32 0, i32 25
  %arrayidx16 = getelementptr inbounds [8 x ptr], ptr %appStmt, i64 0, i64 5
  store ptr %pReadParent, ptr %arrayidx16, align 8
  %37 = load ptr, ptr %pRtree.addr, align 8
  %pWriteParent = getelementptr inbounds %struct.Rtree, ptr %37, i32 0, i32 26
  %arrayidx17 = getelementptr inbounds [8 x ptr], ptr %appStmt, i64 0, i64 6
  store ptr %pWriteParent, ptr %arrayidx17, align 8
  %38 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteParent = getelementptr inbounds %struct.Rtree, ptr %38, i32 0, i32 27
  %arrayidx18 = getelementptr inbounds [8 x ptr], ptr %appStmt, i64 0, i64 7
  store ptr %pDeleteParent, ptr %arrayidx18, align 8
  %39 = load ptr, ptr %db.addr, align 8
  %40 = load ptr, ptr %pRtree.addr, align 8
  %call19 = call i32 @rtreeQueryStat1(ptr noundef %39, ptr noundef %40)
  store i32 %call19, ptr %rc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc43, %if.end11
  %41 = load i32, ptr %i, align 4
  %cmp21 = icmp slt i32 %41, 8
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond20
  %42 = load i32, ptr %rc, align 4
  %cmp23 = icmp eq i32 %42, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond20
  %43 = phi i1 [ false, %for.cond20 ], [ %cmp23, %land.rhs ]
  br i1 %43, label %for.body25, label %for.end45

for.body25:                                       ; preds = %land.end
  %44 = load i32, ptr %i, align 4
  %cmp26 = icmp ne i32 %44, 3
  br i1 %cmp26, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body25
  %45 = load ptr, ptr %pRtree.addr, align 8
  %nAux28 = getelementptr inbounds %struct.Rtree, ptr %45, i32 0, i32 8
  %46 = load i16, ptr %nAux28, align 2
  %conv29 = zext i16 %46 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %lor.lhs.false, %for.body25
  %47 = load i32, ptr %i, align 4
  %idxprom = sext i32 %47 to i64
  %arrayidx33 = getelementptr inbounds [8 x ptr], ptr @rtreeSqlInit.azSql, i64 0, i64 %idxprom
  %48 = load ptr, ptr %arrayidx33, align 8
  store ptr %48, ptr %zFormat, align 8
  br label %if.end34

if.else:                                          ; preds = %lor.lhs.false
  store ptr @.str.63, ptr %zFormat, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then32
  %49 = load ptr, ptr %zFormat, align 8
  %50 = load ptr, ptr %zDb.addr, align 8
  %51 = load ptr, ptr %zPrefix.addr, align 8
  %call35 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef %49, ptr noundef %50, ptr noundef %51)
  store ptr %call35, ptr %zSql, align 8
  %52 = load ptr, ptr %zSql, align 8
  %tobool36 = icmp ne ptr %52, null
  br i1 %tobool36, label %if.then37, label %if.else41

if.then37:                                        ; preds = %if.end34
  %53 = load ptr, ptr %db.addr, align 8
  %54 = load ptr, ptr %zSql, align 8
  %55 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %55 to i64
  %arrayidx39 = getelementptr inbounds [8 x ptr], ptr %appStmt, i64 0, i64 %idxprom38
  %56 = load ptr, ptr %arrayidx39, align 8
  %call40 = call i32 @sqlite3_prepare_v3(ptr noundef %53, ptr noundef %54, i32 noundef -1, i32 noundef 5, ptr noundef %56, ptr noundef null)
  store i32 %call40, ptr %rc, align 4
  br label %if.end42

if.else41:                                        ; preds = %if.end34
  store i32 7, ptr %rc, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then37
  %57 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %57)
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %58 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %58, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond20, !llvm.loop !23

for.end45:                                        ; preds = %land.end
  %59 = load ptr, ptr %pRtree.addr, align 8
  %nAux46 = getelementptr inbounds %struct.Rtree, ptr %59, i32 0, i32 8
  %60 = load i16, ptr %nAux46, align 2
  %conv47 = zext i16 %60 to i32
  %tobool48 = icmp ne i32 %conv47, 0
  br i1 %tobool48, label %land.lhs.true, label %if.end82

land.lhs.true:                                    ; preds = %for.end45
  %61 = load i32, ptr %rc, align 4
  %cmp49 = icmp ne i32 %61, 7
  br i1 %cmp49, label %if.then51, label %if.end82

if.then51:                                        ; preds = %land.lhs.true
  %62 = load ptr, ptr %zDb.addr, align 8
  %63 = load ptr, ptr %zPrefix.addr, align 8
  %call52 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.64, ptr noundef %62, ptr noundef %63)
  %64 = load ptr, ptr %pRtree.addr, align 8
  %zReadAuxSql = getelementptr inbounds %struct.Rtree, ptr %64, i32 0, i32 17
  store ptr %call52, ptr %zReadAuxSql, align 8
  %65 = load ptr, ptr %pRtree.addr, align 8
  %zReadAuxSql53 = getelementptr inbounds %struct.Rtree, ptr %65, i32 0, i32 17
  %66 = load ptr, ptr %zReadAuxSql53, align 8
  %cmp54 = icmp eq ptr %66, null
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.then51
  store i32 7, ptr %rc, align 4
  br label %if.end81

if.else57:                                        ; preds = %if.then51
  %67 = load ptr, ptr %db.addr, align 8
  %call59 = call ptr @sqlite3_str_new(ptr noundef %67)
  store ptr %call59, ptr %p58, align 8
  %68 = load ptr, ptr %p58, align 8
  %69 = load ptr, ptr %zDb.addr, align 8
  %70 = load ptr, ptr %zPrefix.addr, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %68, ptr noundef @.str.65, ptr noundef %69, ptr noundef %70)
  store i32 0, ptr %ii60, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc71, %if.else57
  %71 = load i32, ptr %ii60, align 4
  %72 = load ptr, ptr %pRtree.addr, align 8
  %nAux63 = getelementptr inbounds %struct.Rtree, ptr %72, i32 0, i32 8
  %73 = load i16, ptr %nAux63, align 2
  %conv64 = zext i16 %73 to i32
  %cmp65 = icmp slt i32 %71, %conv64
  br i1 %cmp65, label %for.body67, label %for.end73

for.body67:                                       ; preds = %for.cond62
  %74 = load i32, ptr %ii60, align 4
  %tobool68 = icmp ne i32 %74, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %for.body67
  %75 = load ptr, ptr %p58, align 8
  call void @sqlite3_str_append(ptr noundef %75, ptr noundef @.str.66, i32 noundef 1)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %for.body67
  %76 = load ptr, ptr %p58, align 8
  %77 = load i32, ptr %ii60, align 4
  %78 = load i32, ptr %ii60, align 4
  %add = add nsw i32 %78, 2
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %76, ptr noundef @.str.67, i32 noundef %77, i32 noundef %add)
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %79 = load i32, ptr %ii60, align 4
  %inc72 = add nsw i32 %79, 1
  store i32 %inc72, ptr %ii60, align 4
  br label %for.cond62, !llvm.loop !24

for.end73:                                        ; preds = %for.cond62
  %80 = load ptr, ptr %p58, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %80, ptr noundef @.str.68)
  %81 = load ptr, ptr %p58, align 8
  %call74 = call ptr @sqlite3_str_finish(ptr noundef %81)
  store ptr %call74, ptr %zSql61, align 8
  %82 = load ptr, ptr %zSql61, align 8
  %cmp75 = icmp eq ptr %82, null
  br i1 %cmp75, label %if.then77, label %if.else78

if.then77:                                        ; preds = %for.end73
  store i32 7, ptr %rc, align 4
  br label %if.end80

if.else78:                                        ; preds = %for.end73
  %83 = load ptr, ptr %db.addr, align 8
  %84 = load ptr, ptr %zSql61, align 8
  %85 = load ptr, ptr %pRtree.addr, align 8
  %pWriteAux = getelementptr inbounds %struct.Rtree, ptr %85, i32 0, i32 28
  %call79 = call i32 @sqlite3_prepare_v3(ptr noundef %83, ptr noundef %84, i32 noundef -1, i32 noundef 5, ptr noundef %pWriteAux, ptr noundef null)
  store i32 %call79, ptr %rc, align 4
  %86 = load ptr, ptr %zSql61, align 8
  call void @sqlite3_free(ptr noundef %86)
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then77
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then56
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %land.lhs.true, %for.end45
  %87 = load i32, ptr %rc, align 4
  store i32 %87, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end82, %if.then9, %if.then5
  %88 = load i32, ptr %retval, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeRelease(ptr noundef %pRtree) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pNext = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %nBusy = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %nBusy, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %nBusy, align 8
  %2 = load ptr, ptr %pRtree.addr, align 8
  %nBusy1 = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %nBusy1, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pRtree.addr, align 8
  %inWrTrans = getelementptr inbounds %struct.Rtree, ptr %4, i32 0, i32 7
  store i8 0, ptr %inWrTrans, align 8
  %5 = load ptr, ptr %pRtree.addr, align 8
  call void @nodeBlobReset(ptr noundef %5)
  %6 = load ptr, ptr %pRtree.addr, align 8
  %nNodeRef = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 16
  %7 = load i32, ptr %nNodeRef, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %8 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %8, 97
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %9 = load ptr, ptr %pRtree.addr, align 8
  %aHash = getelementptr inbounds %struct.Rtree, ptr %9, i32 0, i32 29
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [97 x ptr], ptr %aHash, i64 0, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %tobool4 = icmp ne ptr %11, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %pRtree.addr, align 8
  %aHash5 = getelementptr inbounds %struct.Rtree, ptr %12, i32 0, i32 29
  %13 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [97 x ptr], ptr %aHash5, i64 0, i64 %idxprom6
  %14 = load ptr, ptr %arrayidx7, align 8
  %pNext8 = getelementptr inbounds %struct.RtreeNode, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %pNext8, align 8
  store ptr %15, ptr %pNext, align 8
  %16 = load ptr, ptr %pRtree.addr, align 8
  %aHash9 = getelementptr inbounds %struct.Rtree, ptr %16, i32 0, i32 29
  %17 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds [97 x ptr], ptr %aHash9, i64 0, i64 %idxprom10
  %18 = load ptr, ptr %arrayidx11, align 8
  call void @sqlite3_free(ptr noundef %18)
  %19 = load ptr, ptr %pNext, align 8
  %20 = load ptr, ptr %pRtree.addr, align 8
  %aHash12 = getelementptr inbounds %struct.Rtree, ptr %20, i32 0, i32 29
  %21 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds [97 x ptr], ptr %aHash12, i64 0, i64 %idxprom13
  store ptr %19, ptr %arrayidx14, align 8
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %23 = load ptr, ptr %pRtree.addr, align 8
  %pWriteNode = getelementptr inbounds %struct.Rtree, ptr %23, i32 0, i32 20
  %24 = load ptr, ptr %pWriteNode, align 8
  %call = call i32 @sqlite3_finalize(ptr noundef %24)
  %25 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteNode = getelementptr inbounds %struct.Rtree, ptr %25, i32 0, i32 21
  %26 = load ptr, ptr %pDeleteNode, align 8
  %call15 = call i32 @sqlite3_finalize(ptr noundef %26)
  %27 = load ptr, ptr %pRtree.addr, align 8
  %pReadRowid = getelementptr inbounds %struct.Rtree, ptr %27, i32 0, i32 22
  %28 = load ptr, ptr %pReadRowid, align 8
  %call16 = call i32 @sqlite3_finalize(ptr noundef %28)
  %29 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid = getelementptr inbounds %struct.Rtree, ptr %29, i32 0, i32 23
  %30 = load ptr, ptr %pWriteRowid, align 8
  %call17 = call i32 @sqlite3_finalize(ptr noundef %30)
  %31 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteRowid = getelementptr inbounds %struct.Rtree, ptr %31, i32 0, i32 24
  %32 = load ptr, ptr %pDeleteRowid, align 8
  %call18 = call i32 @sqlite3_finalize(ptr noundef %32)
  %33 = load ptr, ptr %pRtree.addr, align 8
  %pReadParent = getelementptr inbounds %struct.Rtree, ptr %33, i32 0, i32 25
  %34 = load ptr, ptr %pReadParent, align 8
  %call19 = call i32 @sqlite3_finalize(ptr noundef %34)
  %35 = load ptr, ptr %pRtree.addr, align 8
  %pWriteParent = getelementptr inbounds %struct.Rtree, ptr %35, i32 0, i32 26
  %36 = load ptr, ptr %pWriteParent, align 8
  %call20 = call i32 @sqlite3_finalize(ptr noundef %36)
  %37 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteParent = getelementptr inbounds %struct.Rtree, ptr %37, i32 0, i32 27
  %38 = load ptr, ptr %pDeleteParent, align 8
  %call21 = call i32 @sqlite3_finalize(ptr noundef %38)
  %39 = load ptr, ptr %pRtree.addr, align 8
  %pWriteAux = getelementptr inbounds %struct.Rtree, ptr %39, i32 0, i32 28
  %40 = load ptr, ptr %pWriteAux, align 8
  %call22 = call i32 @sqlite3_finalize(ptr noundef %40)
  %41 = load ptr, ptr %pRtree.addr, align 8
  %zReadAuxSql = getelementptr inbounds %struct.Rtree, ptr %41, i32 0, i32 17
  %42 = load ptr, ptr %zReadAuxSql, align 8
  call void @sqlite3_free(ptr noundef %42)
  %43 = load ptr, ptr %pRtree.addr, align 8
  call void @sqlite3_free(ptr noundef %43)
  br label %if.end23

if.end23:                                         ; preds = %if.end, %entry
  ret void
}

declare i64 @sqlite3GetToken(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getIntFromStmt(ptr noundef %db, ptr noundef %zSql, ptr noundef %piVal) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %piVal.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pStmt = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  store ptr %piVal, ptr %piVal.addr, align 8
  store i32 7, ptr %rc, align 4
  %0 = load ptr, ptr %zSql.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  store ptr null, ptr %pStmt, align 8
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %zSql.addr, align 8
  %call = call i32 @sqlite3_prepare_v2(ptr noundef %1, ptr noundef %2, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %pStmt, align 8
  %call2 = call i32 @sqlite3_step(ptr noundef %4)
  %cmp3 = icmp eq i32 100, %call2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then1
  %5 = load ptr, ptr %pStmt, align 8
  %call5 = call i32 @sqlite3_column_int(ptr noundef %5, i32 noundef 0)
  %6 = load ptr, ptr %piVal.addr, align 8
  store i32 %call5, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then1
  %7 = load ptr, ptr %pStmt, align 8
  %call6 = call i32 @sqlite3_finalize(ptr noundef %7)
  store i32 %call6, ptr %rc, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %8 = load i32, ptr %rc, align 4
  ret i32 %8
}

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) #1

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeQueryStat1(ptr noundef %db, ptr noundef %pRtree) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pRtree.addr = alloca ptr, align 8
  %zFmt = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nRow = alloca i64, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr @.str.69, ptr %zFmt, align 8
  store i64 100, ptr %nRow, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %pRtree.addr, align 8
  %zDb = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %zDb, align 8
  %call = call i32 @sqlite3_table_column_metadata(ptr noundef %0, ptr noundef %2, ptr noundef @.str.70, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pRtree.addr, align 8
  %nRowEst = getelementptr inbounds %struct.Rtree, ptr %4, i32 0, i32 14
  store i64 1048576, ptr %nRowEst, align 8
  %5 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load i32, ptr %rc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %zFmt, align 8
  %8 = load ptr, ptr %pRtree.addr, align 8
  %zDb2 = getelementptr inbounds %struct.Rtree, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %zDb2, align 8
  %10 = load ptr, ptr %pRtree.addr, align 8
  %zName = getelementptr inbounds %struct.Rtree, ptr %10, i32 0, i32 11
  %11 = load ptr, ptr %zName, align 8
  %call3 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef %7, ptr noundef %9, ptr noundef %11)
  store ptr %call3, ptr %zSql, align 8
  %12 = load ptr, ptr %zSql, align 8
  %cmp4 = icmp eq ptr %12, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i32 7, ptr %rc, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %db.addr, align 8
  %14 = load ptr, ptr %zSql, align 8
  %call6 = call i32 @sqlite3_prepare_v2(ptr noundef %13, ptr noundef %14, i32 noundef -1, ptr noundef %p, ptr noundef null)
  store i32 %call6, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %15, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.else
  %16 = load ptr, ptr %p, align 8
  %call9 = call i32 @sqlite3_step(ptr noundef %16)
  %cmp10 = icmp eq i32 %call9, 100
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then8
  %17 = load ptr, ptr %p, align 8
  %call12 = call i64 @sqlite3_column_int64(ptr noundef %17, i32 noundef 0)
  store i64 %call12, ptr %nRow, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8
  %18 = load ptr, ptr %p, align 8
  %call14 = call i32 @sqlite3_finalize(ptr noundef %18)
  store i32 %call14, ptr %rc, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.else
  %19 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %19)
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then5
  %20 = load i64, ptr %nRow, align 8
  %cmp17 = icmp slt i64 %20, 100
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %if.end16
  br label %cond.end20

cond.false19:                                     ; preds = %if.end16
  %21 = load i64, ptr %nRow, align 8
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i64 [ 100, %cond.true18 ], [ %21, %cond.false19 ]
  %22 = load ptr, ptr %pRtree.addr, align 8
  %nRowEst22 = getelementptr inbounds %struct.Rtree, ptr %22, i32 0, i32 14
  store i64 %cond21, ptr %nRowEst22, align 8
  %23 = load i32, ptr %rc, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end20, %cond.end
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare i32 @sqlite3_prepare_v3(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_table_column_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nodeBlobReset(ptr noundef %pRtree) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pBlob = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %pNodeBlob, align 8
  store ptr %1, ptr %pBlob, align 8
  %2 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob1 = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 19
  store ptr null, ptr %pNodeBlob1, align 8
  %3 = load ptr, ptr %pBlob, align 8
  %call = call i32 @sqlite3_blob_close(ptr noundef %3)
  ret void
}

declare i32 @sqlite3_blob_close(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @resetCursor(ptr noundef %pCsr) #0 {
entry:
  %pCsr.addr = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  %ii = alloca i32, align 4
  %pStmt = alloca ptr, align 8
  %i = alloca i32, align 4
  %pInfo = alloca ptr, align 8
  store ptr %pCsr, ptr %pCsr.addr, align 8
  %0 = load ptr, ptr %pCsr.addr, align 8
  %base = getelementptr inbounds %struct.RtreeCursor, ptr %0, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %1 = load ptr, ptr %pVtab, align 8
  store ptr %1, ptr %pRtree, align 8
  %2 = load ptr, ptr %pCsr.addr, align 8
  %aConstraint = getelementptr inbounds %struct.RtreeCursor, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %aConstraint, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %pCsr.addr, align 8
  %nConstraint = getelementptr inbounds %struct.RtreeCursor, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %nConstraint, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pCsr.addr, align 8
  %aConstraint1 = getelementptr inbounds %struct.RtreeCursor, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %aConstraint1, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.RtreeConstraint, ptr %8, i64 %idxprom
  %pInfo2 = getelementptr inbounds %struct.RtreeConstraint, ptr %arrayidx, i32 0, i32 3
  %10 = load ptr, ptr %pInfo2, align 8
  store ptr %10, ptr %pInfo, align 8
  %11 = load ptr, ptr %pInfo, align 8
  %tobool3 = icmp ne ptr %11, null
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %for.body
  %12 = load ptr, ptr %pInfo, align 8
  %xDelUser = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %xDelUser, align 8
  %tobool5 = icmp ne ptr %13, null
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  %14 = load ptr, ptr %pInfo, align 8
  %xDelUser7 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %xDelUser7, align 8
  %16 = load ptr, ptr %pInfo, align 8
  %pUser = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %pUser, align 8
  call void %15(ptr noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then4
  %18 = load ptr, ptr %pInfo, align 8
  call void @sqlite3_free(ptr noundef %18)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %pCsr.addr, align 8
  %aConstraint9 = getelementptr inbounds %struct.RtreeCursor, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %aConstraint9, align 8
  call void @sqlite3_free(ptr noundef %21)
  %22 = load ptr, ptr %pCsr.addr, align 8
  %aConstraint10 = getelementptr inbounds %struct.RtreeCursor, ptr %22, i32 0, i32 6
  store ptr null, ptr %aConstraint10, align 8
  br label %if.end11

if.end11:                                         ; preds = %for.end, %entry
  store i32 0, ptr %ii, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc17, %if.end11
  %23 = load i32, ptr %ii, align 4
  %cmp13 = icmp slt i32 %23, 5
  br i1 %cmp13, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond12
  %24 = load ptr, ptr %pRtree, align 8
  %25 = load ptr, ptr %pCsr.addr, align 8
  %aNode = getelementptr inbounds %struct.RtreeCursor, ptr %25, i32 0, i32 13
  %26 = load i32, ptr %ii, align 4
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds [5 x ptr], ptr %aNode, i64 0, i64 %idxprom15
  %27 = load ptr, ptr %arrayidx16, align 8
  %call = call i32 @nodeRelease(ptr noundef %24, ptr noundef %27)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %28 = load i32, ptr %ii, align 4
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, ptr %ii, align 4
  br label %for.cond12, !llvm.loop !28

for.end19:                                        ; preds = %for.cond12
  %29 = load ptr, ptr %pCsr.addr, align 8
  %aPoint = getelementptr inbounds %struct.RtreeCursor, ptr %29, i32 0, i32 10
  %30 = load ptr, ptr %aPoint, align 8
  call void @sqlite3_free(ptr noundef %30)
  %31 = load ptr, ptr %pCsr.addr, align 8
  %pReadAux = getelementptr inbounds %struct.RtreeCursor, ptr %31, i32 0, i32 11
  %32 = load ptr, ptr %pReadAux, align 8
  store ptr %32, ptr %pStmt, align 8
  %33 = load ptr, ptr %pCsr.addr, align 8
  %34 = load ptr, ptr %pCsr.addr, align 8
  %35 = call i64 @llvm.objectsize.i64.p0(ptr %34, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memset_chk(ptr noundef %33, i32 noundef 0, i64 noundef 296, i64 noundef %35) #7
  %36 = load ptr, ptr %pRtree, align 8
  %37 = load ptr, ptr %pCsr.addr, align 8
  %base21 = getelementptr inbounds %struct.RtreeCursor, ptr %37, i32 0, i32 0
  %pVtab22 = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base21, i32 0, i32 0
  store ptr %36, ptr %pVtab22, align 8
  %38 = load ptr, ptr %pStmt, align 8
  %39 = load ptr, ptr %pCsr.addr, align 8
  %pReadAux23 = getelementptr inbounds %struct.RtreeCursor, ptr %39, i32 0, i32 11
  store ptr %38, ptr %pReadAux23, align 8
  %40 = load ptr, ptr %pStmt, align 8
  %call24 = call i32 @sqlite3_reset(ptr noundef %40)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nodeRelease(ptr noundef %pRtree, ptr noundef %pNode) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pNode.addr, align 8
  %nRef = getelementptr inbounds %struct.RtreeNode, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nRef, align 8
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %nRef, align 8
  %3 = load ptr, ptr %pNode.addr, align 8
  %nRef1 = getelementptr inbounds %struct.RtreeNode, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nRef1, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end14

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %pRtree.addr, align 8
  %nNodeRef = getelementptr inbounds %struct.Rtree, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %nNodeRef, align 4
  %dec3 = add i32 %6, -1
  store i32 %dec3, ptr %nNodeRef, align 4
  %7 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %iNode, align 8
  %cmp4 = icmp eq i64 %8, 1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  %9 = load ptr, ptr %pRtree.addr, align 8
  %iDepth = getelementptr inbounds %struct.Rtree, ptr %9, i32 0, i32 9
  store i32 -1, ptr %iDepth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then2
  %10 = load ptr, ptr %pNode.addr, align 8
  %pParent = getelementptr inbounds %struct.RtreeNode, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pParent, align 8
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %12 = load ptr, ptr %pRtree.addr, align 8
  %13 = load ptr, ptr %pNode.addr, align 8
  %pParent8 = getelementptr inbounds %struct.RtreeNode, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pParent8, align 8
  %call = call i32 @nodeRelease(ptr noundef %12, ptr noundef %14)
  store i32 %call, ptr %rc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %15 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %pRtree.addr, align 8
  %17 = load ptr, ptr %pNode.addr, align 8
  %call12 = call i32 @nodeWrite(ptr noundef %16, ptr noundef %17)
  store i32 %call12, ptr %rc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %18 = load ptr, ptr %pRtree.addr, align 8
  %19 = load ptr, ptr %pNode.addr, align 8
  call void @nodeHashDelete(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %pNode.addr, align 8
  call void @sqlite3_free(ptr noundef %20)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %21 = load i32, ptr %rc, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nodeWrite(ptr noundef %pRtree, ptr noundef %pNode) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %isDirty = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %isDirty, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pRtree.addr, align 8
  %pWriteNode = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 20
  %3 = load ptr, ptr %pWriteNode, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %iNode, align 8
  %tobool1 = icmp ne i64 %5, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %p, align 8
  %7 = load ptr, ptr %pNode.addr, align 8
  %iNode3 = getelementptr inbounds %struct.RtreeNode, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %iNode3, align 8
  %call = call i32 @sqlite3_bind_int64(ptr noundef %6, i32 noundef 1, i64 noundef %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %p, align 8
  %call4 = call i32 @sqlite3_bind_null(ptr noundef %9, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %10 = load ptr, ptr %p, align 8
  %11 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %zData, align 8
  %13 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %iNodeSize, align 8
  %call5 = call i32 @sqlite3_bind_blob(ptr noundef %10, i32 noundef 2, ptr noundef %12, i32 noundef %14, ptr noundef null)
  %15 = load ptr, ptr %p, align 8
  %call6 = call i32 @sqlite3_step(ptr noundef %15)
  %16 = load ptr, ptr %pNode.addr, align 8
  %isDirty7 = getelementptr inbounds %struct.RtreeNode, ptr %16, i32 0, i32 3
  store i32 0, ptr %isDirty7, align 4
  %17 = load ptr, ptr %p, align 8
  %call8 = call i32 @sqlite3_reset(ptr noundef %17)
  store i32 %call8, ptr %rc, align 4
  %18 = load ptr, ptr %p, align 8
  %call9 = call i32 @sqlite3_bind_null(ptr noundef %18, i32 noundef 2)
  %19 = load ptr, ptr %pNode.addr, align 8
  %iNode10 = getelementptr inbounds %struct.RtreeNode, ptr %19, i32 0, i32 1
  %20 = load i64, ptr %iNode10, align 8
  %cmp = icmp eq i64 %20, 0
  br i1 %cmp, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %21 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %21, 0
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %pRtree.addr, align 8
  %db = getelementptr inbounds %struct.Rtree, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %db, align 8
  %call13 = call i64 @sqlite3_last_insert_rowid(ptr noundef %23)
  %24 = load ptr, ptr %pNode.addr, align 8
  %iNode14 = getelementptr inbounds %struct.RtreeNode, ptr %24, i32 0, i32 1
  store i64 %call13, ptr %iNode14, align 8
  %25 = load ptr, ptr %pRtree.addr, align 8
  %26 = load ptr, ptr %pNode.addr, align 8
  call void @nodeHashInsert(ptr noundef %25, ptr noundef %26)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  %27 = load i32, ptr %rc, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nodeHashDelete(ptr noundef %pRtree, ptr noundef %pNode) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %pp = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %iNode, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pRtree.addr, align 8
  %aHash = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 29
  %3 = load ptr, ptr %pNode.addr, align 8
  %iNode1 = getelementptr inbounds %struct.RtreeNode, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %iNode1, align 8
  %call = call i32 @nodeHash(i64 noundef %4)
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr inbounds [97 x ptr], ptr %aHash, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load ptr, ptr %pp, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %pNode.addr, align 8
  %cmp2 = icmp ne ptr %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %pp, align 8
  %9 = load ptr, ptr %8, align 8
  %pNext = getelementptr inbounds %struct.RtreeNode, ptr %9, i32 0, i32 5
  store ptr %pNext, ptr %pp, align 8
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %pNode.addr, align 8
  %pNext3 = getelementptr inbounds %struct.RtreeNode, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %pNext3, align 8
  %12 = load ptr, ptr %pp, align 8
  store ptr %11, ptr %12, align 8
  %13 = load ptr, ptr %pNode.addr, align 8
  %pNext4 = getelementptr inbounds %struct.RtreeNode, ptr %13, i32 0, i32 5
  store ptr null, ptr %pNext4, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare i32 @sqlite3_bind_null(ptr noundef, i32 noundef) #1

declare i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i64 @sqlite3_last_insert_rowid(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nodeHashInsert(ptr noundef %pRtree, ptr noundef %pNode) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %iHash = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %iNode, align 8
  %call = call i32 @nodeHash(i64 noundef %1)
  store i32 %call, ptr %iHash, align 4
  %2 = load ptr, ptr %pRtree.addr, align 8
  %aHash = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 29
  %3 = load i32, ptr %iHash, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [97 x ptr], ptr %aHash, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load ptr, ptr %pNode.addr, align 8
  %pNext = getelementptr inbounds %struct.RtreeNode, ptr %5, i32 0, i32 5
  store ptr %4, ptr %pNext, align 8
  %6 = load ptr, ptr %pNode.addr, align 8
  %7 = load ptr, ptr %pRtree.addr, align 8
  %aHash1 = getelementptr inbounds %struct.Rtree, ptr %7, i32 0, i32 29
  %8 = load i32, ptr %iHash, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [97 x ptr], ptr %aHash1, i64 0, i64 %idxprom2
  store ptr %6, ptr %arrayidx3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nodeHash(i64 noundef %iNode) #0 {
entry:
  %iNode.addr = alloca i64, align 8
  store i64 %iNode, ptr %iNode.addr, align 8
  %0 = load i64, ptr %iNode.addr, align 8
  %conv = trunc i64 %0 to i32
  %rem = urem i32 %conv, 97
  ret i32 %rem
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeReference(ptr noundef %pRtree) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %nBusy = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %nBusy, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %nBusy, align 8
  ret void
}

declare i64 @sqlite3_value_int64(ptr noundef) #1

declare i32 @sqlite3_value_numeric_type(ptr noundef) #1

declare i32 @sqlite3IntFloatCompare(i64 noundef, double noundef) #1

declare double @sqlite3_value_double(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @findLeafNode(ptr noundef %pRtree, i64 noundef %iRowid, ptr noundef %ppLeaf, ptr noundef %piNode) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %iRowid.addr = alloca i64, align 8
  %ppLeaf.addr = alloca ptr, align 8
  %piNode.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iNode = alloca i64, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store i64 %iRowid, ptr %iRowid.addr, align 8
  store ptr %ppLeaf, ptr %ppLeaf.addr, align 8
  store ptr %piNode, ptr %piNode.addr, align 8
  %0 = load ptr, ptr %ppLeaf.addr, align 8
  store ptr null, ptr %0, align 8
  %1 = load ptr, ptr %pRtree.addr, align 8
  %pReadRowid = getelementptr inbounds %struct.Rtree, ptr %1, i32 0, i32 22
  %2 = load ptr, ptr %pReadRowid, align 8
  %3 = load i64, ptr %iRowid.addr, align 8
  %call = call i32 @sqlite3_bind_int64(ptr noundef %2, i32 noundef 1, i64 noundef %3)
  %4 = load ptr, ptr %pRtree.addr, align 8
  %pReadRowid1 = getelementptr inbounds %struct.Rtree, ptr %4, i32 0, i32 22
  %5 = load ptr, ptr %pReadRowid1, align 8
  %call2 = call i32 @sqlite3_step(ptr noundef %5)
  %cmp = icmp eq i32 %call2, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pRtree.addr, align 8
  %pReadRowid3 = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 22
  %7 = load ptr, ptr %pReadRowid3, align 8
  %call4 = call i64 @sqlite3_column_int64(ptr noundef %7, i32 noundef 0)
  store i64 %call4, ptr %iNode, align 8
  %8 = load ptr, ptr %piNode.addr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %9 = load i64, ptr %iNode, align 8
  %10 = load ptr, ptr %piNode.addr, align 8
  store i64 %9, ptr %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %11 = load ptr, ptr %pRtree.addr, align 8
  %12 = load i64, ptr %iNode, align 8
  %13 = load ptr, ptr %ppLeaf.addr, align 8
  %call6 = call i32 @nodeAcquire(ptr noundef %11, i64 noundef %12, ptr noundef null, ptr noundef %13)
  store i32 %call6, ptr %rc, align 4
  %14 = load ptr, ptr %pRtree.addr, align 8
  %pReadRowid7 = getelementptr inbounds %struct.Rtree, ptr %14, i32 0, i32 22
  %15 = load ptr, ptr %pReadRowid7, align 8
  %call8 = call i32 @sqlite3_reset(ptr noundef %15)
  br label %if.end11

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %pRtree.addr, align 8
  %pReadRowid9 = getelementptr inbounds %struct.Rtree, ptr %16, i32 0, i32 22
  %17 = load ptr, ptr %pReadRowid9, align 8
  %call10 = call i32 @sqlite3_reset(ptr noundef %17)
  store i32 %call10, ptr %rc, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end
  %18 = load i32, ptr %rc, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @rtreeSearchPointNew(ptr noundef %pCur, double noundef %rScore, i8 noundef zeroext %iLevel) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCur.addr = alloca ptr, align 8
  %rScore.addr = alloca double, align 8
  %iLevel.addr = alloca i8, align 1
  %pNew = alloca ptr, align 8
  %pFirst = alloca ptr, align 8
  %ii = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store double %rScore, ptr %rScore.addr, align 8
  store i8 %iLevel, ptr %iLevel.addr, align 1
  %0 = load ptr, ptr %pCur.addr, align 8
  %call = call ptr @rtreeSearchPointFirst(ptr noundef %0)
  store ptr %call, ptr %pFirst, align 8
  %1 = load ptr, ptr %pCur.addr, align 8
  %anQueue = getelementptr inbounds %struct.RtreeCursor, ptr %1, i32 0, i32 14
  %2 = load i8, ptr %iLevel.addr, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [41 x i32], ptr %anQueue, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  %4 = load ptr, ptr %pFirst, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %pFirst, align 8
  %rScore1 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %5, i32 0, i32 0
  %6 = load double, ptr %rScore1, align 8
  %7 = load double, ptr %rScore.addr, align 8
  %cmp2 = fcmp ogt double %6, %7
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %pFirst, align 8
  %rScore4 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %8, i32 0, i32 0
  %9 = load double, ptr %rScore4, align 8
  %10 = load double, ptr %rScore.addr, align 8
  %cmp5 = fcmp oeq double %9, %10
  br i1 %cmp5, label %land.lhs.true, label %if.else36

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %11 = load ptr, ptr %pFirst, align 8
  %iLevel6 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %11, i32 0, i32 2
  %12 = load i8, ptr %iLevel6, align 8
  %conv = zext i8 %12 to i32
  %13 = load i8, ptr %iLevel.addr, align 1
  %conv7 = zext i8 %13 to i32
  %cmp8 = icmp sgt i32 %conv, %conv7
  br i1 %cmp8, label %if.then, label %if.else36

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  %14 = load ptr, ptr %pCur.addr, align 8
  %bPoint = getelementptr inbounds %struct.RtreeCursor, ptr %14, i32 0, i32 2
  %15 = load i8, ptr %bPoint, align 1
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %if.then10, label %if.end29

if.then10:                                        ; preds = %if.then
  %16 = load ptr, ptr %pCur.addr, align 8
  %17 = load double, ptr %rScore.addr, align 8
  %18 = load i8, ptr %iLevel.addr, align 1
  %call11 = call ptr @rtreeEnqueue(ptr noundef %16, double noundef %17, i8 noundef zeroext %18)
  store ptr %call11, ptr %pNew, align 8
  %19 = load ptr, ptr %pNew, align 8
  %cmp12 = icmp eq ptr %19, null
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then10
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then10
  %20 = load ptr, ptr %pNew, align 8
  %21 = load ptr, ptr %pCur.addr, align 8
  %aPoint = getelementptr inbounds %struct.RtreeCursor, ptr %21, i32 0, i32 10
  %22 = load ptr, ptr %aPoint, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %conv15 = trunc i64 %sub.ptr.div to i32
  %add = add nsw i32 %conv15, 1
  store i32 %add, ptr %ii, align 4
  %23 = load i32, ptr %ii, align 4
  %cmp16 = icmp slt i32 %23, 5
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  %24 = load ptr, ptr %pCur.addr, align 8
  %aNode = getelementptr inbounds %struct.RtreeCursor, ptr %24, i32 0, i32 13
  %arrayidx19 = getelementptr inbounds [5 x ptr], ptr %aNode, i64 0, i64 0
  %25 = load ptr, ptr %arrayidx19, align 8
  %26 = load ptr, ptr %pCur.addr, align 8
  %aNode20 = getelementptr inbounds %struct.RtreeCursor, ptr %26, i32 0, i32 13
  %27 = load i32, ptr %ii, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [5 x ptr], ptr %aNode20, i64 0, i64 %idxprom21
  store ptr %25, ptr %arrayidx22, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end
  %28 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.RtreeCursor, ptr %28, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %29 = load ptr, ptr %pVtab, align 8
  %30 = load ptr, ptr %pCur.addr, align 8
  %aNode23 = getelementptr inbounds %struct.RtreeCursor, ptr %30, i32 0, i32 13
  %arrayidx24 = getelementptr inbounds [5 x ptr], ptr %aNode23, i64 0, i64 0
  %31 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 @nodeRelease(ptr noundef %29, ptr noundef %31)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then18
  %32 = load ptr, ptr %pCur.addr, align 8
  %aNode27 = getelementptr inbounds %struct.RtreeCursor, ptr %32, i32 0, i32 13
  %arrayidx28 = getelementptr inbounds [5 x ptr], ptr %aNode27, i64 0, i64 0
  store ptr null, ptr %arrayidx28, align 8
  %33 = load ptr, ptr %pNew, align 8
  %34 = load ptr, ptr %pCur.addr, align 8
  %sPoint = getelementptr inbounds %struct.RtreeCursor, ptr %34, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %sPoint, i64 24, i1 false)
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.then
  %35 = load double, ptr %rScore.addr, align 8
  %36 = load ptr, ptr %pCur.addr, align 8
  %sPoint30 = getelementptr inbounds %struct.RtreeCursor, ptr %36, i32 0, i32 12
  %rScore31 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %sPoint30, i32 0, i32 0
  store double %35, ptr %rScore31, align 8
  %37 = load i8, ptr %iLevel.addr, align 1
  %38 = load ptr, ptr %pCur.addr, align 8
  %sPoint32 = getelementptr inbounds %struct.RtreeCursor, ptr %38, i32 0, i32 12
  %iLevel33 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %sPoint32, i32 0, i32 2
  store i8 %37, ptr %iLevel33, align 8
  %39 = load ptr, ptr %pCur.addr, align 8
  %bPoint34 = getelementptr inbounds %struct.RtreeCursor, ptr %39, i32 0, i32 2
  store i8 1, ptr %bPoint34, align 1
  %40 = load ptr, ptr %pCur.addr, align 8
  %sPoint35 = getelementptr inbounds %struct.RtreeCursor, ptr %40, i32 0, i32 12
  store ptr %sPoint35, ptr %retval, align 8
  br label %return

if.else36:                                        ; preds = %land.lhs.true, %lor.lhs.false3
  %41 = load ptr, ptr %pCur.addr, align 8
  %42 = load double, ptr %rScore.addr, align 8
  %43 = load i8, ptr %iLevel.addr, align 1
  %call37 = call ptr @rtreeEnqueue(ptr noundef %41, double noundef %42, i8 noundef zeroext %43)
  store ptr %call37, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else36, %if.end29, %if.then14
  %44 = load ptr, ptr %retval, align 8
  ret ptr %44
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nodeRowidIndex(ptr noundef %pRtree, ptr noundef %pNode, i64 noundef %iRowid, ptr noundef %piIndex) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %iRowid.addr = alloca i64, align 8
  %piIndex.addr = alloca ptr, align 8
  %ii = alloca i32, align 4
  %nCell = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i64 %iRowid, ptr %iRowid.addr, align 8
  store ptr %piIndex, ptr %piIndex.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 2
  %call = call i32 @readInt16(ptr noundef %arrayidx)
  store i32 %call, ptr %nCell, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %ii, align 4
  %3 = load i32, ptr %nCell, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pRtree.addr, align 8
  %5 = load ptr, ptr %pNode.addr, align 8
  %6 = load i32, ptr %ii, align 4
  %call1 = call i64 @nodeGetRowid(ptr noundef %4, ptr noundef %5, i32 noundef %6)
  %7 = load i64, ptr %iRowid.addr, align 8
  %cmp2 = icmp eq i64 %call1, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %ii, align 4
  %9 = load ptr, ptr %piIndex.addr, align 8
  store i32 %8, ptr %9, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  store i32 267, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nodeAcquire(ptr noundef %pRtree, i64 noundef %iNode, ptr noundef %pParent, ptr noundef %ppNode) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %iNode.addr = alloca i64, align 8
  %pParent.addr = alloca ptr, align 8
  %ppNode.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pNode = alloca ptr, align 8
  %pBlob = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store i64 %iNode, ptr %iNode.addr, align 8
  store ptr %pParent, ptr %pParent.addr, align 8
  store ptr %ppNode, ptr %ppNode.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pNode, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %1 = load i64, ptr %iNode.addr, align 8
  %call = call ptr @nodeHashLookup(ptr noundef %0, i64 noundef %1)
  store ptr %call, ptr %pNode, align 8
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParent.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load ptr, ptr %pParent.addr, align 8
  %4 = load ptr, ptr %pNode, align 8
  %pParent1 = getelementptr inbounds %struct.RtreeNode, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pParent1, align 8
  %cmp2 = icmp ne ptr %3, %5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  store i32 267, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %6 = load ptr, ptr %pNode, align 8
  %nRef = getelementptr inbounds %struct.RtreeNode, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %nRef, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %nRef, align 8
  %8 = load ptr, ptr %pNode, align 8
  %9 = load ptr, ptr %ppNode.addr, align 8
  store ptr %8, ptr %9, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  %10 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob = getelementptr inbounds %struct.Rtree, ptr %10, i32 0, i32 19
  %11 = load ptr, ptr %pNodeBlob, align 8
  %tobool5 = icmp ne ptr %11, null
  br i1 %tobool5, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.end4
  %12 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob7 = getelementptr inbounds %struct.Rtree, ptr %12, i32 0, i32 19
  %13 = load ptr, ptr %pNodeBlob7, align 8
  store ptr %13, ptr %pBlob, align 8
  %14 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob8 = getelementptr inbounds %struct.Rtree, ptr %14, i32 0, i32 19
  store ptr null, ptr %pNodeBlob8, align 8
  %15 = load ptr, ptr %pBlob, align 8
  %16 = load i64, ptr %iNode.addr, align 8
  %call9 = call i32 @sqlite3_blob_reopen(ptr noundef %15, i64 noundef %16)
  store i32 %call9, ptr %rc, align 4
  %17 = load ptr, ptr %pBlob, align 8
  %18 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob10 = getelementptr inbounds %struct.Rtree, ptr %18, i32 0, i32 19
  store ptr %17, ptr %pNodeBlob10, align 8
  %19 = load i32, ptr %rc, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.then6
  %20 = load ptr, ptr %pRtree.addr, align 8
  call void @nodeBlobReset(ptr noundef %20)
  %21 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %21, 7
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  store i32 7, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end4
  %22 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob18 = getelementptr inbounds %struct.Rtree, ptr %22, i32 0, i32 19
  %23 = load ptr, ptr %pNodeBlob18, align 8
  %cmp19 = icmp eq ptr %23, null
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  %24 = load ptr, ptr %pRtree.addr, align 8
  %db = getelementptr inbounds %struct.Rtree, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %db, align 8
  %26 = load ptr, ptr %pRtree.addr, align 8
  %zDb = getelementptr inbounds %struct.Rtree, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %zDb, align 8
  %28 = load ptr, ptr %pRtree.addr, align 8
  %zNodeName = getelementptr inbounds %struct.Rtree, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %zNodeName, align 8
  %30 = load i64, ptr %iNode.addr, align 8
  %31 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob21 = getelementptr inbounds %struct.Rtree, ptr %31, i32 0, i32 19
  %call22 = call i32 @sqlite3_blob_open(ptr noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef @.str.72, i64 noundef %30, i32 noundef 0, ptr noundef %pNodeBlob21)
  store i32 %call22, ptr %rc, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17
  %32 = load i32, ptr %rc, align 4
  %tobool24 = icmp ne i32 %32, 0
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  %33 = load ptr, ptr %ppNode.addr, align 8
  store ptr null, ptr %33, align 8
  %34 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %34, 1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then25
  store i32 267, ptr %rc, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25
  br label %if.end48

if.else:                                          ; preds = %if.end23
  %35 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %iNodeSize, align 8
  %37 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob29 = getelementptr inbounds %struct.Rtree, ptr %37, i32 0, i32 19
  %38 = load ptr, ptr %pNodeBlob29, align 8
  %call30 = call i32 @sqlite3_blob_bytes(ptr noundef %38)
  %cmp31 = icmp eq i32 %36, %call30
  br i1 %cmp31, label %if.then32, label %if.end47

if.then32:                                        ; preds = %if.else
  %39 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize33 = getelementptr inbounds %struct.Rtree, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %iNodeSize33, align 8
  %conv = sext i32 %40 to i64
  %add = add i64 40, %conv
  %call34 = call ptr @sqlite3_malloc64(i64 noundef %add)
  store ptr %call34, ptr %pNode, align 8
  %41 = load ptr, ptr %pNode, align 8
  %tobool35 = icmp ne ptr %41, null
  br i1 %tobool35, label %if.else37, label %if.then36

if.then36:                                        ; preds = %if.then32
  store i32 7, ptr %rc, align 4
  br label %if.end46

if.else37:                                        ; preds = %if.then32
  %42 = load ptr, ptr %pParent.addr, align 8
  %43 = load ptr, ptr %pNode, align 8
  %pParent38 = getelementptr inbounds %struct.RtreeNode, ptr %43, i32 0, i32 0
  store ptr %42, ptr %pParent38, align 8
  %44 = load ptr, ptr %pNode, align 8
  %arrayidx = getelementptr inbounds %struct.RtreeNode, ptr %44, i64 1
  %45 = load ptr, ptr %pNode, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %45, i32 0, i32 4
  store ptr %arrayidx, ptr %zData, align 8
  %46 = load ptr, ptr %pNode, align 8
  %nRef39 = getelementptr inbounds %struct.RtreeNode, ptr %46, i32 0, i32 2
  store i32 1, ptr %nRef39, align 8
  %47 = load ptr, ptr %pRtree.addr, align 8
  %nNodeRef = getelementptr inbounds %struct.Rtree, ptr %47, i32 0, i32 16
  %48 = load i32, ptr %nNodeRef, align 4
  %inc40 = add i32 %48, 1
  store i32 %inc40, ptr %nNodeRef, align 4
  %49 = load i64, ptr %iNode.addr, align 8
  %50 = load ptr, ptr %pNode, align 8
  %iNode41 = getelementptr inbounds %struct.RtreeNode, ptr %50, i32 0, i32 1
  store i64 %49, ptr %iNode41, align 8
  %51 = load ptr, ptr %pNode, align 8
  %isDirty = getelementptr inbounds %struct.RtreeNode, ptr %51, i32 0, i32 3
  store i32 0, ptr %isDirty, align 4
  %52 = load ptr, ptr %pNode, align 8
  %pNext = getelementptr inbounds %struct.RtreeNode, ptr %52, i32 0, i32 5
  store ptr null, ptr %pNext, align 8
  %53 = load ptr, ptr %pRtree.addr, align 8
  %pNodeBlob42 = getelementptr inbounds %struct.Rtree, ptr %53, i32 0, i32 19
  %54 = load ptr, ptr %pNodeBlob42, align 8
  %55 = load ptr, ptr %pNode, align 8
  %zData43 = getelementptr inbounds %struct.RtreeNode, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %zData43, align 8
  %57 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize44 = getelementptr inbounds %struct.Rtree, ptr %57, i32 0, i32 2
  %58 = load i32, ptr %iNodeSize44, align 8
  %call45 = call i32 @sqlite3_blob_read(ptr noundef %54, ptr noundef %56, i32 noundef %58, i32 noundef 0)
  store i32 %call45, ptr %rc, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else37, %if.then36
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end28
  %59 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %59, 0
  br i1 %cmp49, label %land.lhs.true51, label %if.end64

land.lhs.true51:                                  ; preds = %if.end48
  %60 = load ptr, ptr %pNode, align 8
  %tobool52 = icmp ne ptr %60, null
  br i1 %tobool52, label %land.lhs.true53, label %if.end64

land.lhs.true53:                                  ; preds = %land.lhs.true51
  %61 = load i64, ptr %iNode.addr, align 8
  %cmp54 = icmp eq i64 %61, 1
  br i1 %cmp54, label %if.then56, label %if.end64

if.then56:                                        ; preds = %land.lhs.true53
  %62 = load ptr, ptr %pNode, align 8
  %zData57 = getelementptr inbounds %struct.RtreeNode, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %zData57, align 8
  %call58 = call i32 @readInt16(ptr noundef %63)
  %64 = load ptr, ptr %pRtree.addr, align 8
  %iDepth = getelementptr inbounds %struct.Rtree, ptr %64, i32 0, i32 9
  store i32 %call58, ptr %iDepth, align 4
  %65 = load ptr, ptr %pRtree.addr, align 8
  %iDepth59 = getelementptr inbounds %struct.Rtree, ptr %65, i32 0, i32 9
  %66 = load i32, ptr %iDepth59, align 4
  %cmp60 = icmp sgt i32 %66, 40
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then56
  store i32 267, ptr %rc, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then56
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %land.lhs.true53, %land.lhs.true51, %if.end48
  %67 = load ptr, ptr %pNode, align 8
  %tobool65 = icmp ne ptr %67, null
  br i1 %tobool65, label %land.lhs.true66, label %if.end79

land.lhs.true66:                                  ; preds = %if.end64
  %68 = load i32, ptr %rc, align 4
  %cmp67 = icmp eq i32 %68, 0
  br i1 %cmp67, label %if.then69, label %if.end79

if.then69:                                        ; preds = %land.lhs.true66
  %69 = load ptr, ptr %pNode, align 8
  %zData70 = getelementptr inbounds %struct.RtreeNode, ptr %69, i32 0, i32 4
  %70 = load ptr, ptr %zData70, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %70, i64 2
  %call72 = call i32 @readInt16(ptr noundef %arrayidx71)
  %71 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize73 = getelementptr inbounds %struct.Rtree, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %iNodeSize73, align 8
  %sub = sub nsw i32 %72, 4
  %73 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %73, i32 0, i32 6
  %74 = load i8, ptr %nBytesPerCell, align 1
  %conv74 = zext i8 %74 to i32
  %div = sdiv i32 %sub, %conv74
  %cmp75 = icmp sgt i32 %call72, %div
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then69
  store i32 267, ptr %rc, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.then69
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %land.lhs.true66, %if.end64
  %75 = load i32, ptr %rc, align 4
  %cmp80 = icmp eq i32 %75, 0
  br i1 %cmp80, label %if.then82, label %if.else88

if.then82:                                        ; preds = %if.end79
  %76 = load ptr, ptr %pNode, align 8
  %cmp83 = icmp ne ptr %76, null
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.then82
  %77 = load ptr, ptr %pParent.addr, align 8
  call void @nodeReference(ptr noundef %77)
  %78 = load ptr, ptr %pRtree.addr, align 8
  %79 = load ptr, ptr %pNode, align 8
  call void @nodeHashInsert(ptr noundef %78, ptr noundef %79)
  br label %if.end87

if.else86:                                        ; preds = %if.then82
  store i32 267, ptr %rc, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then85
  %80 = load ptr, ptr %pNode, align 8
  %81 = load ptr, ptr %ppNode.addr, align 8
  store ptr %80, ptr %81, align 8
  br label %if.end93

if.else88:                                        ; preds = %if.end79
  %82 = load ptr, ptr %pRtree.addr, align 8
  call void @nodeBlobReset(ptr noundef %82)
  %83 = load ptr, ptr %pNode, align 8
  %tobool89 = icmp ne ptr %83, null
  br i1 %tobool89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.else88
  %84 = load ptr, ptr %pRtree.addr, align 8
  %nNodeRef91 = getelementptr inbounds %struct.Rtree, ptr %84, i32 0, i32 16
  %85 = load i32, ptr %nNodeRef91, align 4
  %dec = add i32 %85, -1
  store i32 %dec, ptr %nNodeRef91, align 4
  %86 = load ptr, ptr %pNode, align 8
  call void @sqlite3_free(ptr noundef %86)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.else88
  %87 = load ptr, ptr %ppNode.addr, align 8
  store ptr null, ptr %87, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end87
  %88 = load i32, ptr %rc, align 4
  store i32 %88, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end93, %if.then14, %if.end, %if.then3
  %89 = load i32, ptr %retval, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @deserializeGeometry(ptr noundef %pValue, ptr noundef %pCons) #0 {
entry:
  %retval = alloca i32, align 4
  %pValue.addr = alloca ptr, align 8
  %pCons.addr = alloca ptr, align 8
  %pBlob = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pInfo = alloca ptr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pCons, ptr %pCons.addr, align 8
  %0 = load ptr, ptr %pValue.addr, align 8
  %call = call ptr @sqlite3_value_pointer(ptr noundef %0, ptr noundef @.str.73)
  store ptr %call, ptr %pSrc, align 8
  %1 = load ptr, ptr %pSrc, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pSrc, align 8
  %iSize = getelementptr inbounds %struct.RtreeMatchArg, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %iSize, align 8
  %conv = zext i32 %3 to i64
  %add = add i64 112, %conv
  %call1 = call ptr @sqlite3_malloc64(i64 noundef %add)
  store ptr %call1, ptr %pInfo, align 8
  %4 = load ptr, ptr %pInfo, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pInfo, align 8
  %6 = load ptr, ptr %pInfo, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memset_chk(ptr noundef %5, i32 noundef 0, i64 noundef 112, i64 noundef %7) #7
  %8 = load ptr, ptr %pInfo, align 8
  %arrayidx = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %8, i64 1
  store ptr %arrayidx, ptr %pBlob, align 8
  %9 = load ptr, ptr %pBlob, align 8
  %10 = load ptr, ptr %pSrc, align 8
  %11 = load ptr, ptr %pSrc, align 8
  %iSize5 = getelementptr inbounds %struct.RtreeMatchArg, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %iSize5, align 8
  %conv6 = zext i32 %12 to i64
  %13 = load ptr, ptr %pBlob, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call7 = call ptr @__memcpy_chk(ptr noundef %9, ptr noundef %10, i64 noundef %conv6, i64 noundef %14) #7
  %15 = load ptr, ptr %pBlob, align 8
  %cb = getelementptr inbounds %struct.RtreeMatchArg, ptr %15, i32 0, i32 1
  %pContext = getelementptr inbounds %struct.RtreeGeomCallback, ptr %cb, i32 0, i32 3
  %16 = load ptr, ptr %pContext, align 8
  %17 = load ptr, ptr %pInfo, align 8
  %pContext8 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %17, i32 0, i32 0
  store ptr %16, ptr %pContext8, align 8
  %18 = load ptr, ptr %pBlob, align 8
  %nParam = getelementptr inbounds %struct.RtreeMatchArg, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %nParam, align 8
  %20 = load ptr, ptr %pInfo, align 8
  %nParam9 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %20, i32 0, i32 1
  store i32 %19, ptr %nParam9, align 8
  %21 = load ptr, ptr %pBlob, align 8
  %aParam = getelementptr inbounds %struct.RtreeMatchArg, ptr %21, i32 0, i32 4
  %arraydecay = getelementptr inbounds [0 x double], ptr %aParam, i64 0, i64 0
  %22 = load ptr, ptr %pInfo, align 8
  %aParam10 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %22, i32 0, i32 2
  store ptr %arraydecay, ptr %aParam10, align 8
  %23 = load ptr, ptr %pBlob, align 8
  %apSqlParam = getelementptr inbounds %struct.RtreeMatchArg, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %apSqlParam, align 8
  %25 = load ptr, ptr %pInfo, align 8
  %apSqlParam11 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %25, i32 0, i32 15
  store ptr %24, ptr %apSqlParam11, align 8
  %26 = load ptr, ptr %pBlob, align 8
  %cb12 = getelementptr inbounds %struct.RtreeMatchArg, ptr %26, i32 0, i32 1
  %xGeom = getelementptr inbounds %struct.RtreeGeomCallback, ptr %cb12, i32 0, i32 0
  %27 = load ptr, ptr %xGeom, align 8
  %tobool13 = icmp ne ptr %27, null
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end3
  %28 = load ptr, ptr %pBlob, align 8
  %cb15 = getelementptr inbounds %struct.RtreeMatchArg, ptr %28, i32 0, i32 1
  %xGeom16 = getelementptr inbounds %struct.RtreeGeomCallback, ptr %cb15, i32 0, i32 0
  %29 = load ptr, ptr %xGeom16, align 8
  %30 = load ptr, ptr %pCons.addr, align 8
  %u = getelementptr inbounds %struct.RtreeConstraint, ptr %30, i32 0, i32 2
  store ptr %29, ptr %u, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end3
  %31 = load ptr, ptr %pCons.addr, align 8
  %op = getelementptr inbounds %struct.RtreeConstraint, ptr %31, i32 0, i32 1
  store i32 71, ptr %op, align 4
  %32 = load ptr, ptr %pBlob, align 8
  %cb17 = getelementptr inbounds %struct.RtreeMatchArg, ptr %32, i32 0, i32 1
  %xQueryFunc = getelementptr inbounds %struct.RtreeGeomCallback, ptr %cb17, i32 0, i32 1
  %33 = load ptr, ptr %xQueryFunc, align 8
  %34 = load ptr, ptr %pCons.addr, align 8
  %u18 = getelementptr inbounds %struct.RtreeConstraint, ptr %34, i32 0, i32 2
  store ptr %33, ptr %u18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %35 = load ptr, ptr %pInfo, align 8
  %36 = load ptr, ptr %pCons.addr, align 8
  %pInfo20 = getelementptr inbounds %struct.RtreeConstraint, ptr %36, i32 0, i32 3
  store ptr %35, ptr %pInfo20, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then2, %if.then
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeStepToLeaf(ptr noundef %pCur) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pRtree = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %eWithin = alloca i32, align 4
  %rc = alloca i32, align 4
  %nCell = alloca i32, align 4
  %nConstraint = alloca i32, align 4
  %ii = alloca i32, align 4
  %eInt = alloca i32, align 4
  %x = alloca %struct.RtreeSearchPoint, align 8
  %pCellData = alloca ptr, align 8
  %rScore = alloca double, align 8
  %pConstraint = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.RtreeCursor, ptr %0, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %1 = load ptr, ptr %pVtab, align 8
  store ptr %1, ptr %pRtree, align 8
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %pCur.addr, align 8
  %nConstraint1 = getelementptr inbounds %struct.RtreeCursor, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nConstraint1, align 8
  store i32 %3, ptr %nConstraint, align 4
  %4 = load ptr, ptr %pRtree, align 8
  %eCoordType = getelementptr inbounds %struct.Rtree, ptr %4, i32 0, i32 5
  %5 = load i8, ptr %eCoordType, align 2
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, ptr %eInt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end117, %entry
  %6 = load ptr, ptr %pCur.addr, align 8
  %call = call ptr @rtreeSearchPointFirst(ptr noundef %6)
  store ptr %call, ptr %p, align 8
  %cmp3 = icmp ne ptr %call, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %p, align 8
  %iLevel = getelementptr inbounds %struct.RtreeSearchPoint, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %iLevel, align 8
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp sgt i32 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %9, label %while.body, label %while.end118

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %pCur.addr, align 8
  %call8 = call ptr @rtreeNodeOfFirstSearchPoint(ptr noundef %10, ptr noundef %rc)
  store ptr %call8, ptr %pNode, align 8
  %11 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load i32, ptr %rc, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %13 = load ptr, ptr %pNode, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 2
  %call9 = call i32 @readInt16(ptr noundef %arrayidx)
  store i32 %call9, ptr %nCell, align 4
  %15 = load i32, ptr %nCell, align 4
  %cmp10 = icmp sgt i32 %15, 51
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 267, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %16 = load ptr, ptr %pNode, align 8
  %zData14 = getelementptr inbounds %struct.RtreeNode, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %zData14, align 8
  %18 = load ptr, ptr %pRtree, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %18, i32 0, i32 6
  %19 = load i8, ptr %nBytesPerCell, align 1
  %conv15 = zext i8 %19 to i32
  %20 = load ptr, ptr %p, align 8
  %iCell = getelementptr inbounds %struct.RtreeSearchPoint, ptr %20, i32 0, i32 4
  %21 = load i8, ptr %iCell, align 2
  %conv16 = zext i8 %21 to i32
  %mul = mul nsw i32 %conv15, %conv16
  %add = add nsw i32 4, %mul
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %pCellData, align 8
  br label %while.cond17

while.cond17:                                     ; preds = %if.then54, %if.end13
  %22 = load ptr, ptr %p, align 8
  %iCell18 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %22, i32 0, i32 4
  %23 = load i8, ptr %iCell18, align 2
  %conv19 = zext i8 %23 to i32
  %24 = load i32, ptr %nCell, align 4
  %cmp20 = icmp slt i32 %conv19, %24
  br i1 %cmp20, label %while.body22, label %while.end

while.body22:                                     ; preds = %while.cond17
  store double -1.000000e+00, ptr %rScore, align 8
  store i32 2, ptr %eWithin, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body22
  %25 = load i32, ptr %ii, align 4
  %26 = load i32, ptr %nConstraint, align 4
  %cmp23 = icmp slt i32 %25, %26
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %pCur.addr, align 8
  %aConstraint = getelementptr inbounds %struct.RtreeCursor, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %aConstraint, align 8
  %29 = load i32, ptr %ii, align 4
  %idx.ext25 = sext i32 %29 to i64
  %add.ptr26 = getelementptr inbounds %struct.RtreeConstraint, ptr %28, i64 %idx.ext25
  store ptr %add.ptr26, ptr %pConstraint, align 8
  %30 = load ptr, ptr %pConstraint, align 8
  %op = getelementptr inbounds %struct.RtreeConstraint, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %op, align 4
  %cmp27 = icmp sge i32 %31, 70
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %for.body
  %32 = load ptr, ptr %pConstraint, align 8
  %33 = load i32, ptr %eInt, align 4
  %34 = load ptr, ptr %pCellData, align 8
  %35 = load ptr, ptr %p, align 8
  %call30 = call i32 @rtreeCallbackConstraint(ptr noundef %32, i32 noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %rScore, ptr noundef %eWithin)
  store i32 %call30, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %tobool31 = icmp ne i32 %36, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then29
  %37 = load i32, ptr %rc, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.then29
  br label %if.end41

if.else:                                          ; preds = %for.body
  %38 = load ptr, ptr %p, align 8
  %iLevel34 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %38, i32 0, i32 2
  %39 = load i8, ptr %iLevel34, align 8
  %conv35 = zext i8 %39 to i32
  %cmp36 = icmp eq i32 %conv35, 1
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else
  %40 = load ptr, ptr %pConstraint, align 8
  %41 = load i32, ptr %eInt, align 4
  %42 = load ptr, ptr %pCellData, align 8
  call void @rtreeLeafConstraint(ptr noundef %40, i32 noundef %41, ptr noundef %42, ptr noundef %eWithin)
  br label %if.end40

if.else39:                                        ; preds = %if.else
  %43 = load ptr, ptr %pConstraint, align 8
  %44 = load i32, ptr %eInt, align 4
  %45 = load ptr, ptr %pCellData, align 8
  call void @rtreeNonleafConstraint(ptr noundef %43, i32 noundef %44, ptr noundef %45, ptr noundef %eWithin)
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then38
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end33
  %46 = load i32, ptr %eWithin, align 4
  %cmp42 = icmp eq i32 %46, 0
  br i1 %cmp42, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.end41
  %47 = load ptr, ptr %p, align 8
  %iCell45 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %47, i32 0, i32 4
  %48 = load i8, ptr %iCell45, align 2
  %inc = add i8 %48, 1
  store i8 %inc, ptr %iCell45, align 2
  %49 = load ptr, ptr %pRtree, align 8
  %nBytesPerCell46 = getelementptr inbounds %struct.Rtree, ptr %49, i32 0, i32 6
  %50 = load i8, ptr %nBytesPerCell46, align 1
  %conv47 = zext i8 %50 to i32
  %51 = load ptr, ptr %pCellData, align 8
  %idx.ext48 = sext i32 %conv47 to i64
  %add.ptr49 = getelementptr inbounds i8, ptr %51, i64 %idx.ext48
  store ptr %add.ptr49, ptr %pCellData, align 8
  br label %for.end

if.end50:                                         ; preds = %if.end41
  br label %for.inc

for.inc:                                          ; preds = %if.end50
  %52 = load i32, ptr %ii, align 4
  %inc51 = add nsw i32 %52, 1
  store i32 %inc51, ptr %ii, align 4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %if.then44, %for.cond
  %53 = load i32, ptr %eWithin, align 4
  %cmp52 = icmp eq i32 %53, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.end
  br label %while.cond17, !llvm.loop !32

if.end55:                                         ; preds = %for.end
  %54 = load ptr, ptr %p, align 8
  %iCell56 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %54, i32 0, i32 4
  %55 = load i8, ptr %iCell56, align 2
  %inc57 = add i8 %55, 1
  store i8 %inc57, ptr %iCell56, align 2
  %56 = load ptr, ptr %p, align 8
  %iLevel58 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %56, i32 0, i32 2
  %57 = load i8, ptr %iLevel58, align 8
  %conv59 = zext i8 %57 to i32
  %sub = sub nsw i32 %conv59, 1
  %conv60 = trunc i32 %sub to i8
  %iLevel61 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 2
  store i8 %conv60, ptr %iLevel61, align 8
  %iLevel62 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 2
  %58 = load i8, ptr %iLevel62, align 8
  %tobool63 = icmp ne i8 %58, 0
  br i1 %tobool63, label %if.then64, label %if.else81

if.then64:                                        ; preds = %if.end55
  %59 = load ptr, ptr %pCellData, align 8
  %call65 = call i64 @readInt64(ptr noundef %59)
  %id = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 1
  store i64 %call65, ptr %id, align 8
  store i32 0, ptr %ii, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc77, %if.then64
  %60 = load i32, ptr %ii, align 4
  %61 = load ptr, ptr %pCur.addr, align 8
  %nPoint = getelementptr inbounds %struct.RtreeCursor, ptr %61, i32 0, i32 8
  %62 = load i32, ptr %nPoint, align 4
  %cmp67 = icmp slt i32 %60, %62
  br i1 %cmp67, label %for.body69, label %for.end79

for.body69:                                       ; preds = %for.cond66
  %63 = load ptr, ptr %pCur.addr, align 8
  %aPoint = getelementptr inbounds %struct.RtreeCursor, ptr %63, i32 0, i32 10
  %64 = load ptr, ptr %aPoint, align 8
  %65 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %65 to i64
  %arrayidx70 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %64, i64 %idxprom
  %id71 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %arrayidx70, i32 0, i32 1
  %66 = load i64, ptr %id71, align 8
  %id72 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 1
  %67 = load i64, ptr %id72, align 8
  %cmp73 = icmp eq i64 %66, %67
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %for.body69
  store i32 267, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %for.body69
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %68 = load i32, ptr %ii, align 4
  %inc78 = add nsw i32 %68, 1
  store i32 %inc78, ptr %ii, align 4
  br label %for.cond66, !llvm.loop !33

for.end79:                                        ; preds = %for.cond66
  %iCell80 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 4
  store i8 0, ptr %iCell80, align 2
  br label %if.end89

if.else81:                                        ; preds = %if.end55
  %69 = load ptr, ptr %p, align 8
  %id82 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %69, i32 0, i32 1
  %70 = load i64, ptr %id82, align 8
  %id83 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 1
  store i64 %70, ptr %id83, align 8
  %71 = load ptr, ptr %p, align 8
  %iCell84 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %71, i32 0, i32 4
  %72 = load i8, ptr %iCell84, align 2
  %conv85 = zext i8 %72 to i32
  %sub86 = sub nsw i32 %conv85, 1
  %conv87 = trunc i32 %sub86 to i8
  %iCell88 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 4
  store i8 %conv87, ptr %iCell88, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.else81, %for.end79
  %73 = load ptr, ptr %p, align 8
  %iCell90 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %73, i32 0, i32 4
  %74 = load i8, ptr %iCell90, align 2
  %conv91 = zext i8 %74 to i32
  %75 = load i32, ptr %nCell, align 4
  %cmp92 = icmp sge i32 %conv91, %75
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end89
  %76 = load ptr, ptr %pCur.addr, align 8
  call void @rtreeSearchPointPop(ptr noundef %76)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end89
  %77 = load double, ptr %rScore, align 8
  %cmp96 = fcmp olt double %77, 0.000000e+00
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end95
  store double 0.000000e+00, ptr %rScore, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end95
  %78 = load ptr, ptr %pCur.addr, align 8
  %79 = load double, ptr %rScore, align 8
  %iLevel100 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 2
  %80 = load i8, ptr %iLevel100, align 8
  %call101 = call ptr @rtreeSearchPointNew(ptr noundef %78, double noundef %79, i8 noundef zeroext %80)
  store ptr %call101, ptr %p, align 8
  %81 = load ptr, ptr %p, align 8
  %cmp102 = icmp eq ptr %81, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end99
  store i32 7, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %if.end99
  %82 = load i32, ptr %eWithin, align 4
  %conv106 = trunc i32 %82 to i8
  %83 = load ptr, ptr %p, align 8
  %eWithin107 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %83, i32 0, i32 3
  store i8 %conv106, ptr %eWithin107, align 1
  %id108 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 1
  %84 = load i64, ptr %id108, align 8
  %85 = load ptr, ptr %p, align 8
  %id109 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %85, i32 0, i32 1
  store i64 %84, ptr %id109, align 8
  %iCell110 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %x, i32 0, i32 4
  %86 = load i8, ptr %iCell110, align 2
  %87 = load ptr, ptr %p, align 8
  %iCell111 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %87, i32 0, i32 4
  store i8 %86, ptr %iCell111, align 2
  br label %while.end

while.end:                                        ; preds = %if.end105, %while.cond17
  %88 = load ptr, ptr %p, align 8
  %iCell112 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %88, i32 0, i32 4
  %89 = load i8, ptr %iCell112, align 2
  %conv113 = zext i8 %89 to i32
  %90 = load i32, ptr %nCell, align 4
  %cmp114 = icmp sge i32 %conv113, %90
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %while.end
  %91 = load ptr, ptr %pCur.addr, align 8
  call void @rtreeSearchPointPop(ptr noundef %91)
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %while.end
  br label %while.cond, !llvm.loop !34

while.end118:                                     ; preds = %land.end
  %92 = load ptr, ptr %p, align 8
  %cmp119 = icmp eq ptr %92, null
  %conv120 = zext i1 %cmp119 to i32
  %conv121 = trunc i32 %conv120 to i8
  %93 = load ptr, ptr %pCur.addr, align 8
  %atEOF = getelementptr inbounds %struct.RtreeCursor, ptr %93, i32 0, i32 1
  store i8 %conv121, ptr %atEOF, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end118, %if.then104, %if.then75, %if.then32, %if.then12, %if.then
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @rtreeSearchPointFirst(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %bPoint = getelementptr inbounds %struct.RtreeCursor, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %bPoint, align 1
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %sPoint = getelementptr inbounds %struct.RtreeCursor, ptr %2, i32 0, i32 12
  br label %cond.end4

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %pCur.addr, align 8
  %nPoint = getelementptr inbounds %struct.RtreeCursor, ptr %3, i32 0, i32 8
  %4 = load i32, ptr %nPoint, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.false
  %5 = load ptr, ptr %pCur.addr, align 8
  %aPoint = getelementptr inbounds %struct.RtreeCursor, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %aPoint, align 8
  br label %cond.end

cond.false3:                                      ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false3, %cond.true2
  %cond = phi ptr [ %6, %cond.true2 ], [ null, %cond.false3 ]
  br label %cond.end4

cond.end4:                                        ; preds = %cond.end, %cond.true
  %cond5 = phi ptr [ %sPoint, %cond.true ], [ %cond, %cond.end ]
  ret ptr %cond5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @rtreeEnqueue(ptr noundef %pCur, double noundef %rScore, i8 noundef zeroext %iLevel) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCur.addr = alloca ptr, align 8
  %rScore.addr = alloca double, align 8
  %iLevel.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %nNew = alloca i32, align 4
  %pParent = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store double %rScore, ptr %rScore.addr, align 8
  store i8 %iLevel, ptr %iLevel.addr, align 1
  %0 = load ptr, ptr %pCur.addr, align 8
  %nPoint = getelementptr inbounds %struct.RtreeCursor, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %nPoint, align 4
  %2 = load ptr, ptr %pCur.addr, align 8
  %nPointAlloc = getelementptr inbounds %struct.RtreeCursor, ptr %2, i32 0, i32 7
  %3 = load i32, ptr %nPointAlloc, align 8
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pCur.addr, align 8
  %nPointAlloc1 = getelementptr inbounds %struct.RtreeCursor, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %nPointAlloc1, align 8
  %mul = mul nsw i32 %5, 2
  %add = add nsw i32 %mul, 8
  store i32 %add, ptr %nNew, align 4
  %6 = load ptr, ptr %pCur.addr, align 8
  %aPoint = getelementptr inbounds %struct.RtreeCursor, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %aPoint, align 8
  %8 = load i32, ptr %nNew, align 4
  %conv = sext i32 %8 to i64
  %mul2 = mul i64 %conv, 24
  %call = call ptr @sqlite3_realloc64(ptr noundef %7, i64 noundef %mul2)
  store ptr %call, ptr %pNew, align 8
  %9 = load ptr, ptr %pNew, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %pNew, align 8
  %11 = load ptr, ptr %pCur.addr, align 8
  %aPoint6 = getelementptr inbounds %struct.RtreeCursor, ptr %11, i32 0, i32 10
  store ptr %10, ptr %aPoint6, align 8
  %12 = load i32, ptr %nNew, align 4
  %13 = load ptr, ptr %pCur.addr, align 8
  %nPointAlloc7 = getelementptr inbounds %struct.RtreeCursor, ptr %13, i32 0, i32 7
  store i32 %12, ptr %nPointAlloc7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %14 = load ptr, ptr %pCur.addr, align 8
  %nPoint9 = getelementptr inbounds %struct.RtreeCursor, ptr %14, i32 0, i32 8
  %15 = load i32, ptr %nPoint9, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %nPoint9, align 4
  store i32 %15, ptr %i, align 4
  %16 = load ptr, ptr %pCur.addr, align 8
  %aPoint10 = getelementptr inbounds %struct.RtreeCursor, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %aPoint10, align 8
  %18 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds %struct.RtreeSearchPoint, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %pNew, align 8
  %19 = load double, ptr %rScore.addr, align 8
  %20 = load ptr, ptr %pNew, align 8
  %rScore11 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %20, i32 0, i32 0
  store double %19, ptr %rScore11, align 8
  %21 = load i8, ptr %iLevel.addr, align 1
  %22 = load ptr, ptr %pNew, align 8
  %iLevel12 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %22, i32 0, i32 2
  store i8 %21, ptr %iLevel12, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.end8
  %23 = load i32, ptr %i, align 4
  %cmp13 = icmp sgt i32 %23, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %24, 1
  %div = sdiv i32 %sub, 2
  store i32 %div, ptr %j, align 4
  %25 = load ptr, ptr %pCur.addr, align 8
  %aPoint15 = getelementptr inbounds %struct.RtreeCursor, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %aPoint15, align 8
  %27 = load i32, ptr %j, align 4
  %idx.ext16 = sext i32 %27 to i64
  %add.ptr17 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %26, i64 %idx.ext16
  store ptr %add.ptr17, ptr %pParent, align 8
  %28 = load ptr, ptr %pNew, align 8
  %29 = load ptr, ptr %pParent, align 8
  %call18 = call i32 @rtreeSearchPointCompare(ptr noundef %28, ptr noundef %29)
  %cmp19 = icmp sge i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %while.body
  br label %while.end

if.end22:                                         ; preds = %while.body
  %30 = load ptr, ptr %pCur.addr, align 8
  %31 = load i32, ptr %j, align 4
  %32 = load i32, ptr %i, align 4
  call void @rtreeSearchPointSwap(ptr noundef %30, i32 noundef %31, i32 noundef %32)
  %33 = load i32, ptr %j, align 4
  store i32 %33, ptr %i, align 4
  %34 = load ptr, ptr %pParent, align 8
  store ptr %34, ptr %pNew, align 8
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %if.then21, %while.cond
  %35 = load ptr, ptr %pNew, align 8
  store ptr %35, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then5
  %36 = load ptr, ptr %retval, align 8
  ret ptr %36
}

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeSearchPointCompare(ptr noundef %pA, ptr noundef %pB) #0 {
entry:
  %retval = alloca i32, align 4
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  %0 = load ptr, ptr %pA.addr, align 8
  %rScore = getelementptr inbounds %struct.RtreeSearchPoint, ptr %0, i32 0, i32 0
  %1 = load double, ptr %rScore, align 8
  %2 = load ptr, ptr %pB.addr, align 8
  %rScore1 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %2, i32 0, i32 0
  %3 = load double, ptr %rScore1, align 8
  %cmp = fcmp olt double %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pA.addr, align 8
  %rScore2 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %4, i32 0, i32 0
  %5 = load double, ptr %rScore2, align 8
  %6 = load ptr, ptr %pB.addr, align 8
  %rScore3 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %6, i32 0, i32 0
  %7 = load double, ptr %rScore3, align 8
  %cmp4 = fcmp ogt double %5, %7
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %pA.addr, align 8
  %iLevel = getelementptr inbounds %struct.RtreeSearchPoint, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %iLevel, align 8
  %conv = zext i8 %9 to i32
  %10 = load ptr, ptr %pB.addr, align 8
  %iLevel7 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %iLevel7, align 8
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp slt i32 %conv, %conv8
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  store i32 -1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end6
  %12 = load ptr, ptr %pA.addr, align 8
  %iLevel13 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %12, i32 0, i32 2
  %13 = load i8, ptr %iLevel13, align 8
  %conv14 = zext i8 %13 to i32
  %14 = load ptr, ptr %pB.addr, align 8
  %iLevel15 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %14, i32 0, i32 2
  %15 = load i8, ptr %iLevel15, align 8
  %conv16 = zext i8 %15 to i32
  %cmp17 = icmp sgt i32 %conv14, %conv16
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end12
  store i32 1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.then11, %if.then5, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeSearchPointSwap(ptr noundef %p, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %t = alloca %struct.RtreeSearchPoint, align 8
  %pTemp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %aPoint = getelementptr inbounds %struct.RtreeCursor, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %aPoint, align 8
  %2 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.RtreeSearchPoint, ptr %1, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t, ptr align 8 %arrayidx, i64 24, i1 false)
  %3 = load ptr, ptr %p.addr, align 8
  %aPoint1 = getelementptr inbounds %struct.RtreeCursor, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %aPoint1, align 8
  %5 = load i32, ptr %i.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %4, i64 %idxprom2
  %6 = load ptr, ptr %p.addr, align 8
  %aPoint4 = getelementptr inbounds %struct.RtreeCursor, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %aPoint4, align 8
  %8 = load i32, ptr %j.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %7, i64 %idxprom5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx3, ptr align 8 %arrayidx6, i64 24, i1 false)
  %9 = load ptr, ptr %p.addr, align 8
  %aPoint7 = getelementptr inbounds %struct.RtreeCursor, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %aPoint7, align 8
  %11 = load i32, ptr %j.addr, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %10, i64 %idxprom8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx9, ptr align 8 %t, i64 24, i1 false)
  %12 = load i32, ptr %i.addr, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i.addr, align 4
  %13 = load i32, ptr %j.addr, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, ptr %j.addr, align 4
  %14 = load i32, ptr %i.addr, align 4
  %cmp = icmp slt i32 %14, 5
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  %15 = load i32, ptr %j.addr, align 4
  %cmp11 = icmp sge i32 %15, 5
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %16 = load ptr, ptr %p.addr, align 8
  %base = getelementptr inbounds %struct.RtreeCursor, ptr %16, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %17 = load ptr, ptr %pVtab, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %aNode = getelementptr inbounds %struct.RtreeCursor, ptr %18, i32 0, i32 13
  %19 = load i32, ptr %i.addr, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [5 x ptr], ptr %aNode, i64 0, i64 %idxprom13
  %20 = load ptr, ptr %arrayidx14, align 8
  %call = call i32 @nodeRelease(ptr noundef %17, ptr noundef %20)
  %21 = load ptr, ptr %p.addr, align 8
  %aNode15 = getelementptr inbounds %struct.RtreeCursor, ptr %21, i32 0, i32 13
  %22 = load i32, ptr %i.addr, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds [5 x ptr], ptr %aNode15, i64 0, i64 %idxprom16
  store ptr null, ptr %arrayidx17, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %23 = load ptr, ptr %p.addr, align 8
  %aNode18 = getelementptr inbounds %struct.RtreeCursor, ptr %23, i32 0, i32 13
  %24 = load i32, ptr %i.addr, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [5 x ptr], ptr %aNode18, i64 0, i64 %idxprom19
  %25 = load ptr, ptr %arrayidx20, align 8
  store ptr %25, ptr %pTemp, align 8
  %26 = load ptr, ptr %p.addr, align 8
  %aNode21 = getelementptr inbounds %struct.RtreeCursor, ptr %26, i32 0, i32 13
  %27 = load i32, ptr %j.addr, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds [5 x ptr], ptr %aNode21, i64 0, i64 %idxprom22
  %28 = load ptr, ptr %arrayidx23, align 8
  %29 = load ptr, ptr %p.addr, align 8
  %aNode24 = getelementptr inbounds %struct.RtreeCursor, ptr %29, i32 0, i32 13
  %30 = load i32, ptr %i.addr, align 4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds [5 x ptr], ptr %aNode24, i64 0, i64 %idxprom25
  store ptr %28, ptr %arrayidx26, align 8
  %31 = load ptr, ptr %pTemp, align 8
  %32 = load ptr, ptr %p.addr, align 8
  %aNode27 = getelementptr inbounds %struct.RtreeCursor, ptr %32, i32 0, i32 13
  %33 = load i32, ptr %j.addr, align 4
  %idxprom28 = sext i32 %33 to i64
  %arrayidx29 = getelementptr inbounds [5 x ptr], ptr %aNode27, i64 0, i64 %idxprom28
  store ptr %31, ptr %arrayidx29, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  br label %if.end30

if.end30:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @nodeHashLookup(ptr noundef %pRtree, i64 noundef %iNode) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %iNode.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store i64 %iNode, ptr %iNode.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %aHash = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 29
  %1 = load i64, ptr %iNode.addr, align 8
  %call = call i32 @nodeHash(i64 noundef %1)
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr inbounds [97 x ptr], ptr %aHash, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  store ptr %2, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8
  %iNode1 = getelementptr inbounds %struct.RtreeNode, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %iNode1, align 8
  %6 = load i64, ptr %iNode.addr, align 8
  %cmp = icmp ne i64 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds %struct.RtreeNode, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %pNext, align 8
  store ptr %9, ptr %p, align 8
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %land.end
  %10 = load ptr, ptr %p, align 8
  ret ptr %10
}

declare i32 @sqlite3_blob_reopen(ptr noundef, i64 noundef) #1

declare i32 @sqlite3_blob_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #1

declare i32 @sqlite3_blob_bytes(ptr noundef) #1

declare i32 @sqlite3_blob_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nodeReference(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %nRef = getelementptr inbounds %struct.RtreeNode, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nRef, align 8
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %nRef, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare ptr @sqlite3_value_pointer(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @rtreeNodeOfFirstSearchPoint(ptr noundef %pCur, ptr noundef %pRC) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pRC.addr = alloca ptr, align 8
  %id = alloca i64, align 8
  %ii = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pRC, ptr %pRC.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %bPoint = getelementptr inbounds %struct.RtreeCursor, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %bPoint, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 1, %conv
  store i32 %sub, ptr %ii, align 4
  %2 = load ptr, ptr %pCur.addr, align 8
  %aNode = getelementptr inbounds %struct.RtreeCursor, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %aNode, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ii, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load ptr, ptr %pCur.addr, align 8
  %aPoint = getelementptr inbounds %struct.RtreeCursor, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %aPoint, align 8
  %arrayidx2 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %7, i64 0
  %id3 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %arrayidx2, i32 0, i32 1
  %8 = load i64, ptr %id3, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load ptr, ptr %pCur.addr, align 8
  %sPoint = getelementptr inbounds %struct.RtreeCursor, ptr %9, i32 0, i32 12
  %id4 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %sPoint, i32 0, i32 1
  %10 = load i64, ptr %id4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %10, %cond.false ]
  store i64 %cond, ptr %id, align 8
  %11 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.RtreeCursor, ptr %11, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %12 = load ptr, ptr %pVtab, align 8
  %13 = load i64, ptr %id, align 8
  %14 = load ptr, ptr %pCur.addr, align 8
  %aNode5 = getelementptr inbounds %struct.RtreeCursor, ptr %14, i32 0, i32 13
  %15 = load i32, ptr %ii, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [5 x ptr], ptr %aNode5, i64 0, i64 %idxprom6
  %call = call i32 @nodeAcquire(ptr noundef %12, i64 noundef %13, ptr noundef null, ptr noundef %arrayidx7)
  %16 = load ptr, ptr %pRC.addr, align 8
  store i32 %call, ptr %16, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %17 = load ptr, ptr %pCur.addr, align 8
  %aNode8 = getelementptr inbounds %struct.RtreeCursor, ptr %17, i32 0, i32 13
  %18 = load i32, ptr %ii, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds [5 x ptr], ptr %aNode8, i64 0, i64 %idxprom9
  %19 = load ptr, ptr %arrayidx10, align 8
  ret ptr %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeCallbackConstraint(ptr noundef %pConstraint, i32 noundef %eInt, ptr noundef %pCellData, ptr noundef %pSearch, ptr noundef %prScore, ptr noundef %peWithin) #0 {
entry:
  %pConstraint.addr = alloca ptr, align 8
  %eInt.addr = alloca i32, align 4
  %pCellData.addr = alloca ptr, align 8
  %pSearch.addr = alloca ptr, align 8
  %prScore.addr = alloca ptr, align 8
  %peWithin.addr = alloca ptr, align 8
  %pInfo = alloca ptr, align 8
  %nCoord = alloca i32, align 4
  %rc = alloca i32, align 4
  %c = alloca %union.RtreeCoord, align 4
  %aCoord = alloca [10 x double], align 8
  %eWithin = alloca i32, align 4
  store ptr %pConstraint, ptr %pConstraint.addr, align 8
  store i32 %eInt, ptr %eInt.addr, align 4
  store ptr %pCellData, ptr %pCellData.addr, align 8
  store ptr %pSearch, ptr %pSearch.addr, align 8
  store ptr %prScore, ptr %prScore.addr, align 8
  store ptr %peWithin, ptr %peWithin.addr, align 8
  %0 = load ptr, ptr %pConstraint.addr, align 8
  %pInfo1 = getelementptr inbounds %struct.RtreeConstraint, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pInfo1, align 8
  store ptr %1, ptr %pInfo, align 8
  %2 = load ptr, ptr %pInfo, align 8
  %nCoord2 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %2, i32 0, i32 7
  %3 = load i32, ptr %nCoord2, align 8
  store i32 %3, ptr %nCoord, align 4
  %4 = load ptr, ptr %pConstraint.addr, align 8
  %op = getelementptr inbounds %struct.RtreeConstraint, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %op, align 4
  %cmp = icmp eq i32 %5, 71
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %pSearch.addr, align 8
  %iLevel = getelementptr inbounds %struct.RtreeSearchPoint, ptr %6, i32 0, i32 2
  %7 = load i8, ptr %iLevel, align 8
  %conv = zext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %pCellData.addr, align 8
  %call = call i64 @readInt64(ptr noundef %8)
  %9 = load ptr, ptr %pInfo, align 8
  %iRowid = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %9, i32 0, i32 10
  store i64 %call, ptr %iRowid, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %add.ptr, ptr %pCellData.addr, align 8
  %11 = load i32, ptr %eInt.addr, align 4
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %12 = load i32, ptr %nCoord, align 4
  switch i32 %12, label %sw.default [
    i32 10, label %sw.bb
    i32 8, label %sw.bb13
    i32 6, label %sw.bb20
    i32 4, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.then7
  %13 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %13, i64 36
  call void @readCoord(ptr noundef %add.ptr8, ptr noundef %c)
  %14 = load float, ptr %c, align 4
  %conv9 = fpext float %14 to double
  %arrayidx = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 9
  store double %conv9, ptr %arrayidx, align 8
  %15 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %15, i64 32
  call void @readCoord(ptr noundef %add.ptr10, ptr noundef %c)
  %16 = load float, ptr %c, align 4
  %conv11 = fpext float %16 to double
  %arrayidx12 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 8
  store double %conv11, ptr %arrayidx12, align 8
  br label %sw.bb13

sw.bb13:                                          ; preds = %if.then7, %sw.bb
  %17 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr14 = getelementptr inbounds i8, ptr %17, i64 28
  call void @readCoord(ptr noundef %add.ptr14, ptr noundef %c)
  %18 = load float, ptr %c, align 4
  %conv15 = fpext float %18 to double
  %arrayidx16 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 7
  store double %conv15, ptr %arrayidx16, align 8
  %19 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %19, i64 24
  call void @readCoord(ptr noundef %add.ptr17, ptr noundef %c)
  %20 = load float, ptr %c, align 4
  %conv18 = fpext float %20 to double
  %arrayidx19 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 6
  store double %conv18, ptr %arrayidx19, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.then7, %sw.bb13
  %21 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %21, i64 20
  call void @readCoord(ptr noundef %add.ptr21, ptr noundef %c)
  %22 = load float, ptr %c, align 4
  %conv22 = fpext float %22 to double
  %arrayidx23 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 5
  store double %conv22, ptr %arrayidx23, align 8
  %23 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %23, i64 16
  call void @readCoord(ptr noundef %add.ptr24, ptr noundef %c)
  %24 = load float, ptr %c, align 4
  %conv25 = fpext float %24 to double
  %arrayidx26 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 4
  store double %conv25, ptr %arrayidx26, align 8
  br label %sw.bb27

sw.bb27:                                          ; preds = %if.then7, %sw.bb20
  %25 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr28 = getelementptr inbounds i8, ptr %25, i64 12
  call void @readCoord(ptr noundef %add.ptr28, ptr noundef %c)
  %26 = load float, ptr %c, align 4
  %conv29 = fpext float %26 to double
  %arrayidx30 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 3
  store double %conv29, ptr %arrayidx30, align 8
  %27 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %27, i64 8
  call void @readCoord(ptr noundef %add.ptr31, ptr noundef %c)
  %28 = load float, ptr %c, align 4
  %conv32 = fpext float %28 to double
  %arrayidx33 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 2
  store double %conv32, ptr %arrayidx33, align 8
  br label %sw.default

sw.default:                                       ; preds = %if.then7, %sw.bb27
  %29 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %29, i64 4
  call void @readCoord(ptr noundef %add.ptr34, ptr noundef %c)
  %30 = load float, ptr %c, align 4
  %conv35 = fpext float %30 to double
  %arrayidx36 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 1
  store double %conv35, ptr %arrayidx36, align 8
  %31 = load ptr, ptr %pCellData.addr, align 8
  call void @readCoord(ptr noundef %31, ptr noundef %c)
  %32 = load float, ptr %c, align 4
  %conv37 = fpext float %32 to double
  %arrayidx38 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 0
  store double %conv37, ptr %arrayidx38, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end74

if.else:                                          ; preds = %if.end
  %33 = load i32, ptr %nCoord, align 4
  switch i32 %33, label %sw.default67 [
    i32 10, label %sw.bb39
    i32 8, label %sw.bb46
    i32 6, label %sw.bb53
    i32 4, label %sw.bb60
  ]

sw.bb39:                                          ; preds = %if.else
  %34 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr40 = getelementptr inbounds i8, ptr %34, i64 36
  call void @readCoord(ptr noundef %add.ptr40, ptr noundef %c)
  %35 = load i32, ptr %c, align 4
  %conv41 = sitofp i32 %35 to double
  %arrayidx42 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 9
  store double %conv41, ptr %arrayidx42, align 8
  %36 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %36, i64 32
  call void @readCoord(ptr noundef %add.ptr43, ptr noundef %c)
  %37 = load i32, ptr %c, align 4
  %conv44 = sitofp i32 %37 to double
  %arrayidx45 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 8
  store double %conv44, ptr %arrayidx45, align 8
  br label %sw.bb46

sw.bb46:                                          ; preds = %if.else, %sw.bb39
  %38 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %38, i64 28
  call void @readCoord(ptr noundef %add.ptr47, ptr noundef %c)
  %39 = load i32, ptr %c, align 4
  %conv48 = sitofp i32 %39 to double
  %arrayidx49 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 7
  store double %conv48, ptr %arrayidx49, align 8
  %40 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %40, i64 24
  call void @readCoord(ptr noundef %add.ptr50, ptr noundef %c)
  %41 = load i32, ptr %c, align 4
  %conv51 = sitofp i32 %41 to double
  %arrayidx52 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 6
  store double %conv51, ptr %arrayidx52, align 8
  br label %sw.bb53

sw.bb53:                                          ; preds = %if.else, %sw.bb46
  %42 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr54 = getelementptr inbounds i8, ptr %42, i64 20
  call void @readCoord(ptr noundef %add.ptr54, ptr noundef %c)
  %43 = load i32, ptr %c, align 4
  %conv55 = sitofp i32 %43 to double
  %arrayidx56 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 5
  store double %conv55, ptr %arrayidx56, align 8
  %44 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr57 = getelementptr inbounds i8, ptr %44, i64 16
  call void @readCoord(ptr noundef %add.ptr57, ptr noundef %c)
  %45 = load i32, ptr %c, align 4
  %conv58 = sitofp i32 %45 to double
  %arrayidx59 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 4
  store double %conv58, ptr %arrayidx59, align 8
  br label %sw.bb60

sw.bb60:                                          ; preds = %if.else, %sw.bb53
  %46 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr61 = getelementptr inbounds i8, ptr %46, i64 12
  call void @readCoord(ptr noundef %add.ptr61, ptr noundef %c)
  %47 = load i32, ptr %c, align 4
  %conv62 = sitofp i32 %47 to double
  %arrayidx63 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 3
  store double %conv62, ptr %arrayidx63, align 8
  %48 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr64 = getelementptr inbounds i8, ptr %48, i64 8
  call void @readCoord(ptr noundef %add.ptr64, ptr noundef %c)
  %49 = load i32, ptr %c, align 4
  %conv65 = sitofp i32 %49 to double
  %arrayidx66 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 2
  store double %conv65, ptr %arrayidx66, align 8
  br label %sw.default67

sw.default67:                                     ; preds = %if.else, %sw.bb60
  %50 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr68 = getelementptr inbounds i8, ptr %50, i64 4
  call void @readCoord(ptr noundef %add.ptr68, ptr noundef %c)
  %51 = load i32, ptr %c, align 4
  %conv69 = sitofp i32 %51 to double
  %arrayidx70 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 1
  store double %conv69, ptr %arrayidx70, align 8
  %52 = load ptr, ptr %pCellData.addr, align 8
  call void @readCoord(ptr noundef %52, ptr noundef %c)
  %53 = load i32, ptr %c, align 4
  %conv71 = sitofp i32 %53 to double
  %arrayidx72 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 0
  store double %conv71, ptr %arrayidx72, align 8
  br label %sw.epilog73

sw.epilog73:                                      ; preds = %sw.default67
  br label %if.end74

if.end74:                                         ; preds = %sw.epilog73, %sw.epilog
  %54 = load ptr, ptr %pConstraint.addr, align 8
  %op75 = getelementptr inbounds %struct.RtreeConstraint, ptr %54, i32 0, i32 1
  %55 = load i32, ptr %op75, align 4
  %cmp76 = icmp eq i32 %55, 70
  br i1 %cmp76, label %if.then78, label %if.else84

if.then78:                                        ; preds = %if.end74
  store i32 0, ptr %eWithin, align 4
  %56 = load ptr, ptr %pConstraint.addr, align 8
  %u = getelementptr inbounds %struct.RtreeConstraint, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %u, align 8
  %58 = load ptr, ptr %pInfo, align 8
  %59 = load i32, ptr %nCoord, align 4
  %arraydecay = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 0
  %call79 = call i32 %57(ptr noundef %58, i32 noundef %59, ptr noundef %arraydecay, ptr noundef %eWithin)
  store i32 %call79, ptr %rc, align 4
  %60 = load i32, ptr %eWithin, align 4
  %cmp80 = icmp eq i32 %60, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then78
  %61 = load ptr, ptr %peWithin.addr, align 8
  store i32 0, ptr %61, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then78
  %62 = load ptr, ptr %prScore.addr, align 8
  store double 0.000000e+00, ptr %62, align 8
  br label %if.end110

if.else84:                                        ; preds = %if.end74
  %arraydecay85 = getelementptr inbounds [10 x double], ptr %aCoord, i64 0, i64 0
  %63 = load ptr, ptr %pInfo, align 8
  %aCoord86 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %63, i32 0, i32 5
  store ptr %arraydecay85, ptr %aCoord86, align 8
  %64 = load ptr, ptr %pSearch.addr, align 8
  %iLevel87 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %64, i32 0, i32 2
  %65 = load i8, ptr %iLevel87, align 8
  %conv88 = zext i8 %65 to i32
  %sub = sub nsw i32 %conv88, 1
  %66 = load ptr, ptr %pInfo, align 8
  %iLevel89 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %66, i32 0, i32 8
  store i32 %sub, ptr %iLevel89, align 4
  %67 = load ptr, ptr %pSearch.addr, align 8
  %rScore = getelementptr inbounds %struct.RtreeSearchPoint, ptr %67, i32 0, i32 0
  %68 = load double, ptr %rScore, align 8
  %69 = load ptr, ptr %pInfo, align 8
  %rParentScore = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %69, i32 0, i32 11
  store double %68, ptr %rParentScore, align 8
  %70 = load ptr, ptr %pInfo, align 8
  %rScore90 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %70, i32 0, i32 14
  store double %68, ptr %rScore90, align 8
  %71 = load ptr, ptr %pSearch.addr, align 8
  %eWithin91 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %71, i32 0, i32 3
  %72 = load i8, ptr %eWithin91, align 1
  %conv92 = zext i8 %72 to i32
  %73 = load ptr, ptr %pInfo, align 8
  %eParentWithin = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %73, i32 0, i32 12
  store i32 %conv92, ptr %eParentWithin, align 8
  %74 = load ptr, ptr %pInfo, align 8
  %eWithin93 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %74, i32 0, i32 13
  store i32 %conv92, ptr %eWithin93, align 4
  %75 = load ptr, ptr %pConstraint.addr, align 8
  %u94 = getelementptr inbounds %struct.RtreeConstraint, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %u94, align 8
  %77 = load ptr, ptr %pInfo, align 8
  %call95 = call i32 %76(ptr noundef %77)
  store i32 %call95, ptr %rc, align 4
  %78 = load ptr, ptr %pInfo, align 8
  %eWithin96 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %78, i32 0, i32 13
  %79 = load i32, ptr %eWithin96, align 4
  %80 = load ptr, ptr %peWithin.addr, align 8
  %81 = load i32, ptr %80, align 4
  %cmp97 = icmp slt i32 %79, %81
  br i1 %cmp97, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.else84
  %82 = load ptr, ptr %pInfo, align 8
  %eWithin100 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %82, i32 0, i32 13
  %83 = load i32, ptr %eWithin100, align 4
  %84 = load ptr, ptr %peWithin.addr, align 8
  store i32 %83, ptr %84, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.else84
  %85 = load ptr, ptr %pInfo, align 8
  %rScore102 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %85, i32 0, i32 14
  %86 = load double, ptr %rScore102, align 8
  %87 = load ptr, ptr %prScore.addr, align 8
  %88 = load double, ptr %87, align 8
  %cmp103 = fcmp olt double %86, %88
  br i1 %cmp103, label %if.then107, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end101
  %89 = load ptr, ptr %prScore.addr, align 8
  %90 = load double, ptr %89, align 8
  %cmp105 = fcmp olt double %90, 0.000000e+00
  br i1 %cmp105, label %if.then107, label %if.end109

if.then107:                                       ; preds = %lor.lhs.false, %if.end101
  %91 = load ptr, ptr %pInfo, align 8
  %rScore108 = getelementptr inbounds %struct.sqlite3_rtree_query_info, ptr %91, i32 0, i32 14
  %92 = load double, ptr %rScore108, align 8
  %93 = load ptr, ptr %prScore.addr, align 8
  store double %92, ptr %93, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %lor.lhs.false
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end83
  %94 = load i32, ptr %rc, align 4
  ret i32 %94
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeLeafConstraint(ptr noundef %p, i32 noundef %eInt, ptr noundef %pCellData, ptr noundef %peWithin) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %eInt.addr = alloca i32, align 4
  %pCellData.addr = alloca ptr, align 8
  %peWithin.addr = alloca ptr, align 8
  %xN = alloca double, align 8
  %c = alloca %union.RtreeCoord, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %eInt, ptr %eInt.addr, align 4
  store ptr %pCellData, ptr %pCellData.addr, align 8
  store ptr %peWithin, ptr %peWithin.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %iCoord = getelementptr inbounds %struct.RtreeConstraint, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %iCoord, align 8
  %mul = mul nsw i32 %1, 4
  %add = add nsw i32 8, %mul
  %2 = load ptr, ptr %pCellData.addr, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %pCellData.addr, align 8
  %3 = load ptr, ptr %pCellData.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c, ptr align 1 %3, i64 4, i1 false)
  %4 = load i32, ptr %c, align 4
  %shr = lshr i32 %4, 24
  %and = and i32 %shr, 255
  %5 = load i32, ptr %c, align 4
  %shr1 = lshr i32 %5, 8
  %and2 = and i32 %shr1, 65280
  %or = or i32 %and, %and2
  %6 = load i32, ptr %c, align 4
  %and3 = and i32 %6, 255
  %shl = shl i32 %and3, 24
  %or4 = or i32 %or, %shl
  %7 = load i32, ptr %c, align 4
  %and5 = and i32 %7, 65280
  %shl6 = shl i32 %and5, 8
  %or7 = or i32 %or4, %shl6
  store i32 %or7, ptr %c, align 4
  %8 = load i32, ptr %eInt.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, ptr %c, align 4
  %conv = sitofp i32 %9 to double
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load float, ptr %c, align 4
  %conv8 = fpext float %10 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv, %cond.true ], [ %conv8, %cond.false ]
  store double %cond, ptr %xN, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds %struct.RtreeConstraint, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %op, align 4
  switch i32 %12, label %sw.default [
    i32 63, label %sw.bb
    i32 64, label %sw.bb9
    i32 66, label %sw.bb10
    i32 67, label %sw.bb12
    i32 68, label %sw.bb18
    i32 69, label %sw.bb24
  ]

sw.bb:                                            ; preds = %cond.end
  br label %return

sw.bb9:                                           ; preds = %cond.end
  br label %sw.epilog

sw.bb10:                                          ; preds = %cond.end
  %13 = load double, ptr %xN, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds %struct.RtreeConstraint, ptr %14, i32 0, i32 2
  %15 = load double, ptr %u, align 8
  %cmp = fcmp ole double %13, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb10
  br label %return

if.end:                                           ; preds = %sw.bb10
  br label %sw.epilog

sw.bb12:                                          ; preds = %cond.end
  %16 = load double, ptr %xN, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %u13 = getelementptr inbounds %struct.RtreeConstraint, ptr %17, i32 0, i32 2
  %18 = load double, ptr %u13, align 8
  %cmp14 = fcmp olt double %16, %18
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %sw.bb12
  br label %return

if.end17:                                         ; preds = %sw.bb12
  br label %sw.epilog

sw.bb18:                                          ; preds = %cond.end
  %19 = load double, ptr %xN, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %u19 = getelementptr inbounds %struct.RtreeConstraint, ptr %20, i32 0, i32 2
  %21 = load double, ptr %u19, align 8
  %cmp20 = fcmp oge double %19, %21
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %sw.bb18
  br label %return

if.end23:                                         ; preds = %sw.bb18
  br label %sw.epilog

sw.bb24:                                          ; preds = %cond.end
  %22 = load double, ptr %xN, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %u25 = getelementptr inbounds %struct.RtreeConstraint, ptr %23, i32 0, i32 2
  %24 = load double, ptr %u25, align 8
  %cmp26 = fcmp ogt double %22, %24
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %sw.bb24
  br label %return

if.end29:                                         ; preds = %sw.bb24
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %25 = load double, ptr %xN, align 8
  %26 = load ptr, ptr %p.addr, align 8
  %u30 = getelementptr inbounds %struct.RtreeConstraint, ptr %26, i32 0, i32 2
  %27 = load double, ptr %u30, align 8
  %cmp31 = fcmp oeq double %25, %27
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %sw.default
  br label %return

if.end34:                                         ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end34, %if.end29, %if.end23, %if.end17, %if.end, %sw.bb9
  %28 = load ptr, ptr %peWithin.addr, align 8
  store i32 0, ptr %28, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then33, %if.then28, %if.then22, %if.then16, %if.then, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeNonleafConstraint(ptr noundef %p, i32 noundef %eInt, ptr noundef %pCellData, ptr noundef %peWithin) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %eInt.addr = alloca i32, align 4
  %pCellData.addr = alloca ptr, align 8
  %peWithin.addr = alloca ptr, align 8
  %val = alloca double, align 8
  %c = alloca %union.RtreeCoord, align 4
  %c14 = alloca %union.RtreeCoord, align 4
  %c39 = alloca %union.RtreeCoord, align 4
  %c64 = alloca %union.RtreeCoord, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %eInt, ptr %eInt.addr, align 4
  store ptr %pCellData, ptr %pCellData.addr, align 8
  store ptr %peWithin, ptr %peWithin.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %iCoord = getelementptr inbounds %struct.RtreeConstraint, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %iCoord, align 8
  %and = and i32 %1, 254
  %mul = mul nsw i32 4, %and
  %add = add nsw i32 8, %mul
  %2 = load ptr, ptr %pCellData.addr, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %pCellData.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds %struct.RtreeConstraint, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %op, align 4
  switch i32 %4, label %sw.default [
    i32 63, label %sw.bb
    i32 64, label %sw.bb1
    i32 65, label %sw.bb2
    i32 66, label %sw.bb38
    i32 67, label %sw.bb38
  ]

sw.bb:                                            ; preds = %entry
  br label %return

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %pCellData.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c, ptr align 1 %5, i64 4, i1 false)
  %6 = load i32, ptr %c, align 4
  %shr = lshr i32 %6, 24
  %and3 = and i32 %shr, 255
  %7 = load i32, ptr %c, align 4
  %shr4 = lshr i32 %7, 8
  %and5 = and i32 %shr4, 65280
  %or = or i32 %and3, %and5
  %8 = load i32, ptr %c, align 4
  %and6 = and i32 %8, 255
  %shl = shl i32 %and6, 24
  %or7 = or i32 %or, %shl
  %9 = load i32, ptr %c, align 4
  %and8 = and i32 %9, 65280
  %shl9 = shl i32 %and8, 8
  %or10 = or i32 %or7, %shl9
  store i32 %or10, ptr %c, align 4
  %10 = load i32, ptr %eInt.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb2
  %11 = load i32, ptr %c, align 4
  %conv = sitofp i32 %11 to double
  br label %cond.end

cond.false:                                       ; preds = %sw.bb2
  %12 = load float, ptr %c, align 4
  %conv11 = fpext float %12 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv, %cond.true ], [ %conv11, %cond.false ]
  store double %cond, ptr %val, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds %struct.RtreeConstraint, ptr %13, i32 0, i32 2
  %14 = load double, ptr %u, align 8
  %15 = load double, ptr %val, align 8
  %cmp = fcmp oge double %14, %15
  br i1 %cmp, label %if.then, label %if.end37

if.then:                                          ; preds = %cond.end
  %16 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, ptr %16, i64 4
  store ptr %add.ptr13, ptr %pCellData.addr, align 8
  %17 = load ptr, ptr %pCellData.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c14, ptr align 1 %17, i64 4, i1 false)
  %18 = load i32, ptr %c14, align 4
  %shr15 = lshr i32 %18, 24
  %and16 = and i32 %shr15, 255
  %19 = load i32, ptr %c14, align 4
  %shr17 = lshr i32 %19, 8
  %and18 = and i32 %shr17, 65280
  %or19 = or i32 %and16, %and18
  %20 = load i32, ptr %c14, align 4
  %and20 = and i32 %20, 255
  %shl21 = shl i32 %and20, 24
  %or22 = or i32 %or19, %shl21
  %21 = load i32, ptr %c14, align 4
  %and23 = and i32 %21, 65280
  %shl24 = shl i32 %and23, 8
  %or25 = or i32 %or22, %shl24
  store i32 %or25, ptr %c14, align 4
  %22 = load i32, ptr %eInt.addr, align 4
  %tobool26 = icmp ne i32 %22, 0
  br i1 %tobool26, label %cond.true27, label %cond.false29

cond.true27:                                      ; preds = %if.then
  %23 = load i32, ptr %c14, align 4
  %conv28 = sitofp i32 %23 to double
  br label %cond.end31

cond.false29:                                     ; preds = %if.then
  %24 = load float, ptr %c14, align 4
  %conv30 = fpext float %24 to double
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false29, %cond.true27
  %cond32 = phi double [ %conv28, %cond.true27 ], [ %conv30, %cond.false29 ]
  store double %cond32, ptr %val, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %u33 = getelementptr inbounds %struct.RtreeConstraint, ptr %25, i32 0, i32 2
  %26 = load double, ptr %u33, align 8
  %27 = load double, ptr %val, align 8
  %cmp34 = fcmp ole double %26, %27
  br i1 %cmp34, label %if.then36, label %if.end

if.then36:                                        ; preds = %cond.end31
  br label %return

if.end:                                           ; preds = %cond.end31
  br label %if.end37

if.end37:                                         ; preds = %if.end, %cond.end
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry, %entry
  %28 = load ptr, ptr %pCellData.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c39, ptr align 1 %28, i64 4, i1 false)
  %29 = load i32, ptr %c39, align 4
  %shr40 = lshr i32 %29, 24
  %and41 = and i32 %shr40, 255
  %30 = load i32, ptr %c39, align 4
  %shr42 = lshr i32 %30, 8
  %and43 = and i32 %shr42, 65280
  %or44 = or i32 %and41, %and43
  %31 = load i32, ptr %c39, align 4
  %and45 = and i32 %31, 255
  %shl46 = shl i32 %and45, 24
  %or47 = or i32 %or44, %shl46
  %32 = load i32, ptr %c39, align 4
  %and48 = and i32 %32, 65280
  %shl49 = shl i32 %and48, 8
  %or50 = or i32 %or47, %shl49
  store i32 %or50, ptr %c39, align 4
  %33 = load i32, ptr %eInt.addr, align 4
  %tobool51 = icmp ne i32 %33, 0
  br i1 %tobool51, label %cond.true52, label %cond.false54

cond.true52:                                      ; preds = %sw.bb38
  %34 = load i32, ptr %c39, align 4
  %conv53 = sitofp i32 %34 to double
  br label %cond.end56

cond.false54:                                     ; preds = %sw.bb38
  %35 = load float, ptr %c39, align 4
  %conv55 = fpext float %35 to double
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false54, %cond.true52
  %cond57 = phi double [ %conv53, %cond.true52 ], [ %conv55, %cond.false54 ]
  store double %cond57, ptr %val, align 8
  %36 = load ptr, ptr %p.addr, align 8
  %u58 = getelementptr inbounds %struct.RtreeConstraint, ptr %36, i32 0, i32 2
  %37 = load double, ptr %u58, align 8
  %38 = load double, ptr %val, align 8
  %cmp59 = fcmp oge double %37, %38
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %cond.end56
  br label %return

if.end62:                                         ; preds = %cond.end56
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %39 = load ptr, ptr %pCellData.addr, align 8
  %add.ptr63 = getelementptr inbounds i8, ptr %39, i64 4
  store ptr %add.ptr63, ptr %pCellData.addr, align 8
  %40 = load ptr, ptr %pCellData.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c64, ptr align 1 %40, i64 4, i1 false)
  %41 = load i32, ptr %c64, align 4
  %shr65 = lshr i32 %41, 24
  %and66 = and i32 %shr65, 255
  %42 = load i32, ptr %c64, align 4
  %shr67 = lshr i32 %42, 8
  %and68 = and i32 %shr67, 65280
  %or69 = or i32 %and66, %and68
  %43 = load i32, ptr %c64, align 4
  %and70 = and i32 %43, 255
  %shl71 = shl i32 %and70, 24
  %or72 = or i32 %or69, %shl71
  %44 = load i32, ptr %c64, align 4
  %and73 = and i32 %44, 65280
  %shl74 = shl i32 %and73, 8
  %or75 = or i32 %or72, %shl74
  store i32 %or75, ptr %c64, align 4
  %45 = load i32, ptr %eInt.addr, align 4
  %tobool76 = icmp ne i32 %45, 0
  br i1 %tobool76, label %cond.true77, label %cond.false79

cond.true77:                                      ; preds = %sw.default
  %46 = load i32, ptr %c64, align 4
  %conv78 = sitofp i32 %46 to double
  br label %cond.end81

cond.false79:                                     ; preds = %sw.default
  %47 = load float, ptr %c64, align 4
  %conv80 = fpext float %47 to double
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false79, %cond.true77
  %cond82 = phi double [ %conv78, %cond.true77 ], [ %conv80, %cond.false79 ]
  store double %cond82, ptr %val, align 8
  %48 = load ptr, ptr %p.addr, align 8
  %u83 = getelementptr inbounds %struct.RtreeConstraint, ptr %48, i32 0, i32 2
  %49 = load double, ptr %u83, align 8
  %50 = load double, ptr %val, align 8
  %cmp84 = fcmp ole double %49, %50
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %cond.end81
  br label %return

if.end87:                                         ; preds = %cond.end81
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end87, %if.end62, %if.end37, %sw.bb1
  %51 = load ptr, ptr %peWithin.addr, align 8
  store i32 0, ptr %51, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then86, %if.then61, %if.then36, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeSearchPointPop(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %bPoint = getelementptr inbounds %struct.RtreeCursor, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %bPoint, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 1, %conv
  store i32 %sub, ptr %i, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %aNode = getelementptr inbounds %struct.RtreeCursor, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %aNode, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %base = getelementptr inbounds %struct.RtreeCursor, ptr %5, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %6 = load ptr, ptr %pVtab, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %aNode1 = getelementptr inbounds %struct.RtreeCursor, ptr %7, i32 0, i32 13
  %8 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [5 x ptr], ptr %aNode1, i64 0, i64 %idxprom2
  %9 = load ptr, ptr %arrayidx3, align 8
  %call = call i32 @nodeRelease(ptr noundef %6, ptr noundef %9)
  %10 = load ptr, ptr %p.addr, align 8
  %aNode4 = getelementptr inbounds %struct.RtreeCursor, ptr %10, i32 0, i32 13
  %11 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [5 x ptr], ptr %aNode4, i64 0, i64 %idxprom5
  store ptr null, ptr %arrayidx6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %p.addr, align 8
  %bPoint7 = getelementptr inbounds %struct.RtreeCursor, ptr %12, i32 0, i32 2
  %13 = load i8, ptr %bPoint7, align 1
  %tobool8 = icmp ne i8 %13, 0
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %14 = load ptr, ptr %p.addr, align 8
  %anQueue = getelementptr inbounds %struct.RtreeCursor, ptr %14, i32 0, i32 14
  %15 = load ptr, ptr %p.addr, align 8
  %sPoint = getelementptr inbounds %struct.RtreeCursor, ptr %15, i32 0, i32 12
  %iLevel = getelementptr inbounds %struct.RtreeSearchPoint, ptr %sPoint, i32 0, i32 2
  %16 = load i8, ptr %iLevel, align 8
  %idxprom10 = zext i8 %16 to i64
  %arrayidx11 = getelementptr inbounds [41 x i32], ptr %anQueue, i64 0, i64 %idxprom10
  %17 = load i32, ptr %arrayidx11, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %arrayidx11, align 4
  %18 = load ptr, ptr %p.addr, align 8
  %bPoint12 = getelementptr inbounds %struct.RtreeCursor, ptr %18, i32 0, i32 2
  store i8 0, ptr %bPoint12, align 1
  br label %if.end83

if.else:                                          ; preds = %if.end
  %19 = load ptr, ptr %p.addr, align 8
  %nPoint = getelementptr inbounds %struct.RtreeCursor, ptr %19, i32 0, i32 8
  %20 = load i32, ptr %nPoint, align 4
  %tobool13 = icmp ne i32 %20, 0
  br i1 %tobool13, label %if.then14, label %if.end82

if.then14:                                        ; preds = %if.else
  %21 = load ptr, ptr %p.addr, align 8
  %anQueue15 = getelementptr inbounds %struct.RtreeCursor, ptr %21, i32 0, i32 14
  %22 = load ptr, ptr %p.addr, align 8
  %aPoint = getelementptr inbounds %struct.RtreeCursor, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %aPoint, align 8
  %arrayidx16 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %23, i64 0
  %iLevel17 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %arrayidx16, i32 0, i32 2
  %24 = load i8, ptr %iLevel17, align 8
  %idxprom18 = zext i8 %24 to i64
  %arrayidx19 = getelementptr inbounds [41 x i32], ptr %anQueue15, i64 0, i64 %idxprom18
  %25 = load i32, ptr %arrayidx19, align 4
  %dec20 = add i32 %25, -1
  store i32 %dec20, ptr %arrayidx19, align 4
  %26 = load ptr, ptr %p.addr, align 8
  %nPoint21 = getelementptr inbounds %struct.RtreeCursor, ptr %26, i32 0, i32 8
  %27 = load i32, ptr %nPoint21, align 4
  %dec22 = add nsw i32 %27, -1
  store i32 %dec22, ptr %nPoint21, align 4
  store i32 %dec22, ptr %n, align 4
  %28 = load ptr, ptr %p.addr, align 8
  %aPoint23 = getelementptr inbounds %struct.RtreeCursor, ptr %28, i32 0, i32 10
  %29 = load ptr, ptr %aPoint23, align 8
  %arrayidx24 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %29, i64 0
  %30 = load ptr, ptr %p.addr, align 8
  %aPoint25 = getelementptr inbounds %struct.RtreeCursor, ptr %30, i32 0, i32 10
  %31 = load ptr, ptr %aPoint25, align 8
  %32 = load i32, ptr %n, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %31, i64 %idxprom26
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx24, ptr align 8 %arrayidx27, i64 24, i1 false)
  %33 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %33, 4
  br i1 %cmp, label %if.then29, label %if.end39

if.then29:                                        ; preds = %if.then14
  %34 = load ptr, ptr %p.addr, align 8
  %aNode30 = getelementptr inbounds %struct.RtreeCursor, ptr %34, i32 0, i32 13
  %35 = load i32, ptr %n, align 4
  %add = add nsw i32 %35, 1
  %idxprom31 = sext i32 %add to i64
  %arrayidx32 = getelementptr inbounds [5 x ptr], ptr %aNode30, i64 0, i64 %idxprom31
  %36 = load ptr, ptr %arrayidx32, align 8
  %37 = load ptr, ptr %p.addr, align 8
  %aNode33 = getelementptr inbounds %struct.RtreeCursor, ptr %37, i32 0, i32 13
  %arrayidx34 = getelementptr inbounds [5 x ptr], ptr %aNode33, i64 0, i64 1
  store ptr %36, ptr %arrayidx34, align 8
  %38 = load ptr, ptr %p.addr, align 8
  %aNode35 = getelementptr inbounds %struct.RtreeCursor, ptr %38, i32 0, i32 13
  %39 = load i32, ptr %n, align 4
  %add36 = add nsw i32 %39, 1
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [5 x ptr], ptr %aNode35, i64 0, i64 %idxprom37
  store ptr null, ptr %arrayidx38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %if.then14
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end81, %if.end39
  %40 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %40, 2
  %add40 = add nsw i32 %mul, 1
  store i32 %add40, ptr %j, align 4
  %41 = load i32, ptr %n, align 4
  %cmp41 = icmp slt i32 %add40, %41
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i32, ptr %j, align 4
  %add43 = add nsw i32 %42, 1
  store i32 %add43, ptr %k, align 4
  %43 = load i32, ptr %k, align 4
  %44 = load i32, ptr %n, align 4
  %cmp44 = icmp slt i32 %43, %44
  br i1 %cmp44, label %land.lhs.true, label %if.else68

land.lhs.true:                                    ; preds = %while.body
  %45 = load ptr, ptr %p.addr, align 8
  %aPoint46 = getelementptr inbounds %struct.RtreeCursor, ptr %45, i32 0, i32 10
  %46 = load ptr, ptr %aPoint46, align 8
  %47 = load i32, ptr %k, align 4
  %idxprom47 = sext i32 %47 to i64
  %arrayidx48 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %46, i64 %idxprom47
  %48 = load ptr, ptr %p.addr, align 8
  %aPoint49 = getelementptr inbounds %struct.RtreeCursor, ptr %48, i32 0, i32 10
  %49 = load ptr, ptr %aPoint49, align 8
  %50 = load i32, ptr %j, align 4
  %idxprom50 = sext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %49, i64 %idxprom50
  %call52 = call i32 @rtreeSearchPointCompare(ptr noundef %arrayidx48, ptr noundef %arrayidx51)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.else68

if.then55:                                        ; preds = %land.lhs.true
  %51 = load ptr, ptr %p.addr, align 8
  %aPoint56 = getelementptr inbounds %struct.RtreeCursor, ptr %51, i32 0, i32 10
  %52 = load ptr, ptr %aPoint56, align 8
  %53 = load i32, ptr %k, align 4
  %idxprom57 = sext i32 %53 to i64
  %arrayidx58 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %52, i64 %idxprom57
  %54 = load ptr, ptr %p.addr, align 8
  %aPoint59 = getelementptr inbounds %struct.RtreeCursor, ptr %54, i32 0, i32 10
  %55 = load ptr, ptr %aPoint59, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %56 to i64
  %arrayidx61 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %55, i64 %idxprom60
  %call62 = call i32 @rtreeSearchPointCompare(ptr noundef %arrayidx58, ptr noundef %arrayidx61)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.then55
  %57 = load ptr, ptr %p.addr, align 8
  %58 = load i32, ptr %i, align 4
  %59 = load i32, ptr %k, align 4
  call void @rtreeSearchPointSwap(ptr noundef %57, i32 noundef %58, i32 noundef %59)
  %60 = load i32, ptr %k, align 4
  store i32 %60, ptr %i, align 4
  br label %if.end67

if.else66:                                        ; preds = %if.then55
  br label %while.end

if.end67:                                         ; preds = %if.then65
  br label %if.end81

if.else68:                                        ; preds = %land.lhs.true, %while.body
  %61 = load ptr, ptr %p.addr, align 8
  %aPoint69 = getelementptr inbounds %struct.RtreeCursor, ptr %61, i32 0, i32 10
  %62 = load ptr, ptr %aPoint69, align 8
  %63 = load i32, ptr %j, align 4
  %idxprom70 = sext i32 %63 to i64
  %arrayidx71 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %62, i64 %idxprom70
  %64 = load ptr, ptr %p.addr, align 8
  %aPoint72 = getelementptr inbounds %struct.RtreeCursor, ptr %64, i32 0, i32 10
  %65 = load ptr, ptr %aPoint72, align 8
  %66 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %66 to i64
  %arrayidx74 = getelementptr inbounds %struct.RtreeSearchPoint, ptr %65, i64 %idxprom73
  %call75 = call i32 @rtreeSearchPointCompare(ptr noundef %arrayidx71, ptr noundef %arrayidx74)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.else68
  %67 = load ptr, ptr %p.addr, align 8
  %68 = load i32, ptr %i, align 4
  %69 = load i32, ptr %j, align 4
  call void @rtreeSearchPointSwap(ptr noundef %67, i32 noundef %68, i32 noundef %69)
  %70 = load i32, ptr %j, align 4
  store i32 %70, ptr %i, align 4
  br label %if.end80

if.else79:                                        ; preds = %if.else68
  br label %while.end

if.end80:                                         ; preds = %if.then78
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end67
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %if.else79, %if.else66, %while.cond
  br label %if.end82

if.end82:                                         ; preds = %while.end, %if.else
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then9
  ret void
}

declare void @sqlite3_result_int64(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nodeGetCoord(ptr noundef %pRtree, ptr noundef %pNode, i32 noundef %iCell, i32 noundef %iCoord, ptr noundef %pCoord) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %iCell.addr = alloca i32, align 4
  %iCoord.addr = alloca i32, align 4
  %pCoord.addr = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %iCell, ptr %iCell.addr, align 4
  store i32 %iCoord, ptr %iCoord.addr, align 4
  store ptr %pCoord, ptr %pCoord.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zData, align 8
  %2 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 6
  %3 = load i8, ptr %nBytesPerCell, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, ptr %iCell.addr, align 4
  %mul = mul nsw i32 %conv, %4
  %add = add nsw i32 12, %mul
  %5 = load i32, ptr %iCoord.addr, align 4
  %mul1 = mul nsw i32 4, %5
  %add2 = add nsw i32 %add, %mul1
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %6 = load ptr, ptr %pCoord.addr, align 8
  call void @readCoord(ptr noundef %arrayidx, ptr noundef %6)
  ret void
}

declare void @sqlite3_result_double(ptr noundef, double noundef) #1

declare void @sqlite3_result_value(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_column_value(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal float @rtreeValueDown(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %d = alloca double, align 8
  %f = alloca float, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %call = call double @sqlite3_value_double(ptr noundef %0)
  store double %call, ptr %d, align 8
  %1 = load double, ptr %d, align 8
  %conv = fptrunc double %1 to float
  store float %conv, ptr %f, align 4
  %2 = load float, ptr %f, align 4
  %conv1 = fpext float %2 to double
  %3 = load double, ptr %d, align 8
  %cmp = fcmp ogt double %conv1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, ptr %d, align 8
  %5 = load double, ptr %d, align 8
  %cmp3 = fcmp olt double %5, 0.000000e+00
  %6 = zext i1 %cmp3 to i64
  %cond = select i1 %cmp3, double 0x3FF0000020000000, double 0x3FEFFFFFC0000000
  %mul = fmul double %4, %cond
  %conv5 = fptrunc double %mul to float
  store float %conv5, ptr %f, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load float, ptr %f, align 4
  ret float %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal float @rtreeValueUp(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %d = alloca double, align 8
  %f = alloca float, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %call = call double @sqlite3_value_double(ptr noundef %0)
  store double %call, ptr %d, align 8
  %1 = load double, ptr %d, align 8
  %conv = fptrunc double %1 to float
  store float %conv, ptr %f, align 4
  %2 = load float, ptr %f, align 4
  %conv1 = fpext float %2 to double
  %3 = load double, ptr %d, align 8
  %cmp = fcmp olt double %conv1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, ptr %d, align 8
  %5 = load double, ptr %d, align 8
  %cmp3 = fcmp olt double %5, 0.000000e+00
  %6 = zext i1 %cmp3 to i64
  %cond = select i1 %cmp3, double 0x3FEFFFFFC0000000, double 0x3FF0000020000000
  %mul = fmul double %4, %cond
  %conv5 = fptrunc double %mul to float
  store float %conv5, ptr %f, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load float, ptr %f, align 4
  ret float %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeConstraintError(ptr noundef %pRtree, i32 noundef %iCol) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %iCol.addr = alloca i32, align 4
  %pStmt = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zCol = alloca ptr, align 8
  %zCol1 = alloca ptr, align 8
  %zCol2 = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store i32 %iCol, ptr %iCol.addr, align 4
  store ptr null, ptr %pStmt, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %zDb = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %zDb, align 8
  %2 = load ptr, ptr %pRtree.addr, align 8
  %zName = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %zName, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.14, ptr noundef %1, ptr noundef %3)
  store ptr %call, ptr %zSql, align 8
  %4 = load ptr, ptr %zSql, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pRtree.addr, align 8
  %db = getelementptr inbounds %struct.Rtree, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %db, align 8
  %7 = load ptr, ptr %zSql, align 8
  %call1 = call i32 @sqlite3_prepare_v2(ptr noundef %6, ptr noundef %7, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %8)
  %9 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then2, label %if.end16

if.then2:                                         ; preds = %if.end
  %10 = load i32, ptr %iCol.addr, align 4
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.then2
  %11 = load ptr, ptr %pStmt, align 8
  %call5 = call ptr @sqlite3_column_name(ptr noundef %11, i32 noundef 0)
  store ptr %call5, ptr %zCol, align 8
  %12 = load ptr, ptr %pRtree.addr, align 8
  %zName6 = getelementptr inbounds %struct.Rtree, ptr %12, i32 0, i32 11
  %13 = load ptr, ptr %zName6, align 8
  %14 = load ptr, ptr %zCol, align 8
  %call7 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.74, ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %pRtree.addr, align 8
  %base = getelementptr inbounds %struct.Rtree, ptr %15, i32 0, i32 0
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %base, i32 0, i32 2
  store ptr %call7, ptr %zErrMsg, align 8
  br label %if.end15

if.else8:                                         ; preds = %if.then2
  %16 = load ptr, ptr %pStmt, align 8
  %17 = load i32, ptr %iCol.addr, align 4
  %call9 = call ptr @sqlite3_column_name(ptr noundef %16, i32 noundef %17)
  store ptr %call9, ptr %zCol1, align 8
  %18 = load ptr, ptr %pStmt, align 8
  %19 = load i32, ptr %iCol.addr, align 4
  %add = add nsw i32 %19, 1
  %call10 = call ptr @sqlite3_column_name(ptr noundef %18, i32 noundef %add)
  store ptr %call10, ptr %zCol2, align 8
  %20 = load ptr, ptr %pRtree.addr, align 8
  %zName11 = getelementptr inbounds %struct.Rtree, ptr %20, i32 0, i32 11
  %21 = load ptr, ptr %zName11, align 8
  %22 = load ptr, ptr %zCol1, align 8
  %23 = load ptr, ptr %zCol2, align 8
  %call12 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.75, ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %pRtree.addr, align 8
  %base13 = getelementptr inbounds %struct.Rtree, ptr %24, i32 0, i32 0
  %zErrMsg14 = getelementptr inbounds %struct.sqlite3_vtab, ptr %base13, i32 0, i32 2
  store ptr %call12, ptr %zErrMsg14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else8, %if.then4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %25 = load ptr, ptr %pStmt, align 8
  %call17 = call i32 @sqlite3_finalize(ptr noundef %25)
  %26 = load i32, ptr %rc, align 4
  %cmp18 = icmp eq i32 %26, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end16
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  %27 = load i32, ptr %rc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %27, %cond.false ]
  ret i32 %cond
}

declare i32 @sqlite3_vtab_on_conflict(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeDeleteRowid(ptr noundef %pRtree, i64 noundef %iDelete) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %iDelete.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %pLeaf = alloca ptr, align 8
  %iCell = alloca i32, align 4
  %pRoot = alloca ptr, align 8
  %rc2 = alloca i32, align 4
  %rc229 = alloca i32, align 4
  %pChild = alloca ptr, align 8
  %iChild = alloca i64, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store i64 %iDelete, ptr %iDelete.addr, align 8
  store ptr null, ptr %pLeaf, align 8
  store ptr null, ptr %pRoot, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %call = call i32 @nodeAcquire(ptr noundef %0, i64 noundef 1, ptr noundef null, ptr noundef %pRoot)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pRtree.addr, align 8
  %3 = load i64, ptr %iDelete.addr, align 8
  %call1 = call i32 @findLeafNode(ptr noundef %2, i64 noundef %3, ptr noundef %pLeaf, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %pLeaf, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then3, label %if.end13

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %pRtree.addr, align 8
  %7 = load ptr, ptr %pLeaf, align 8
  %8 = load i64, ptr %iDelete.addr, align 8
  %call4 = call i32 @nodeRowidIndex(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %iCell)
  store i32 %call4, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then3
  %10 = load ptr, ptr %pRtree.addr, align 8
  %11 = load ptr, ptr %pLeaf, align 8
  %12 = load i32, ptr %iCell, align 4
  %call7 = call i32 @deleteCell(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef 0)
  store i32 %call7, ptr %rc, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3
  %13 = load ptr, ptr %pRtree.addr, align 8
  %14 = load ptr, ptr %pLeaf, align 8
  %call9 = call i32 @nodeRelease(ptr noundef %13, ptr noundef %14)
  store i32 %call9, ptr %rc2, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %16 = load i32, ptr %rc2, align 4
  store i32 %16, ptr %rc, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %if.end
  %17 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end13
  %18 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteRowid = getelementptr inbounds %struct.Rtree, ptr %18, i32 0, i32 24
  %19 = load ptr, ptr %pDeleteRowid, align 8
  %20 = load i64, ptr %iDelete.addr, align 8
  %call16 = call i32 @sqlite3_bind_int64(ptr noundef %19, i32 noundef 1, i64 noundef %20)
  %21 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteRowid17 = getelementptr inbounds %struct.Rtree, ptr %21, i32 0, i32 24
  %22 = load ptr, ptr %pDeleteRowid17, align 8
  %call18 = call i32 @sqlite3_step(ptr noundef %22)
  %23 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteRowid19 = getelementptr inbounds %struct.Rtree, ptr %23, i32 0, i32 24
  %24 = load ptr, ptr %pDeleteRowid19, align 8
  %call20 = call i32 @sqlite3_reset(ptr noundef %24)
  store i32 %call20, ptr %rc, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13
  %25 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %25, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.end47

land.lhs.true23:                                  ; preds = %if.end21
  %26 = load ptr, ptr %pRtree.addr, align 8
  %iDepth = getelementptr inbounds %struct.Rtree, ptr %26, i32 0, i32 9
  %27 = load i32, ptr %iDepth, align 4
  %cmp24 = icmp sgt i32 %27, 0
  br i1 %cmp24, label %land.lhs.true25, label %if.end47

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %28 = load ptr, ptr %pRoot, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %29, i64 2
  %call26 = call i32 @readInt16(ptr noundef %arrayidx)
  %cmp27 = icmp eq i32 %call26, 1
  br i1 %cmp27, label %if.then28, label %if.end47

if.then28:                                        ; preds = %land.lhs.true25
  store ptr null, ptr %pChild, align 8
  %30 = load ptr, ptr %pRtree.addr, align 8
  %31 = load ptr, ptr %pRoot, align 8
  %call30 = call i64 @nodeGetRowid(ptr noundef %30, ptr noundef %31, i32 noundef 0)
  store i64 %call30, ptr %iChild, align 8
  %32 = load ptr, ptr %pRtree.addr, align 8
  %33 = load i64, ptr %iChild, align 8
  %34 = load ptr, ptr %pRoot, align 8
  %call31 = call i32 @nodeAcquire(ptr noundef %32, i64 noundef %33, ptr noundef %34, ptr noundef %pChild)
  store i32 %call31, ptr %rc, align 4
  %35 = load i32, ptr %rc, align 4
  %cmp32 = icmp eq i32 %35, 0
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.then28
  %36 = load ptr, ptr %pRtree.addr, align 8
  %37 = load ptr, ptr %pChild, align 8
  %38 = load ptr, ptr %pRtree.addr, align 8
  %iDepth34 = getelementptr inbounds %struct.Rtree, ptr %38, i32 0, i32 9
  %39 = load i32, ptr %iDepth34, align 4
  %sub = sub nsw i32 %39, 1
  %call35 = call i32 @removeNode(ptr noundef %36, ptr noundef %37, i32 noundef %sub)
  store i32 %call35, ptr %rc, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then28
  %40 = load ptr, ptr %pRtree.addr, align 8
  %41 = load ptr, ptr %pChild, align 8
  %call37 = call i32 @nodeRelease(ptr noundef %40, ptr noundef %41)
  store i32 %call37, ptr %rc229, align 4
  %42 = load i32, ptr %rc, align 4
  %cmp38 = icmp eq i32 %42, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  %43 = load i32, ptr %rc229, align 4
  store i32 %43, ptr %rc, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36
  %44 = load i32, ptr %rc, align 4
  %cmp41 = icmp eq i32 %44, 0
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end40
  %45 = load ptr, ptr %pRtree.addr, align 8
  %iDepth43 = getelementptr inbounds %struct.Rtree, ptr %45, i32 0, i32 9
  %46 = load i32, ptr %iDepth43, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, ptr %iDepth43, align 4
  %47 = load ptr, ptr %pRoot, align 8
  %zData44 = getelementptr inbounds %struct.RtreeNode, ptr %47, i32 0, i32 4
  %48 = load ptr, ptr %zData44, align 8
  %49 = load ptr, ptr %pRtree.addr, align 8
  %iDepth45 = getelementptr inbounds %struct.Rtree, ptr %49, i32 0, i32 9
  %50 = load i32, ptr %iDepth45, align 4
  call void @writeInt16(ptr noundef %48, i32 noundef %50)
  %51 = load ptr, ptr %pRoot, align 8
  %isDirty = getelementptr inbounds %struct.RtreeNode, ptr %51, i32 0, i32 3
  store i32 1, ptr %isDirty, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end40
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %land.lhs.true25, %land.lhs.true23, %if.end21
  %52 = load ptr, ptr %pRtree.addr, align 8
  %pDeleted = getelementptr inbounds %struct.Rtree, ptr %52, i32 0, i32 18
  %53 = load ptr, ptr %pDeleted, align 8
  store ptr %53, ptr %pLeaf, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end47
  %54 = load ptr, ptr %pLeaf, align 8
  %tobool48 = icmp ne ptr %54, null
  br i1 %tobool48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %55, 0
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.body
  %56 = load ptr, ptr %pRtree.addr, align 8
  %57 = load ptr, ptr %pLeaf, align 8
  %call51 = call i32 @reinsertNodeContent(ptr noundef %56, ptr noundef %57)
  store i32 %call51, ptr %rc, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.body
  %58 = load ptr, ptr %pLeaf, align 8
  %pNext = getelementptr inbounds %struct.RtreeNode, ptr %58, i32 0, i32 5
  %59 = load ptr, ptr %pNext, align 8
  %60 = load ptr, ptr %pRtree.addr, align 8
  %pDeleted53 = getelementptr inbounds %struct.Rtree, ptr %60, i32 0, i32 18
  store ptr %59, ptr %pDeleted53, align 8
  %61 = load ptr, ptr %pRtree.addr, align 8
  %nNodeRef = getelementptr inbounds %struct.Rtree, ptr %61, i32 0, i32 16
  %62 = load i32, ptr %nNodeRef, align 4
  %dec54 = add i32 %62, -1
  store i32 %dec54, ptr %nNodeRef, align 4
  %63 = load ptr, ptr %pLeaf, align 8
  call void @sqlite3_free(ptr noundef %63)
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %64 = load ptr, ptr %pRtree.addr, align 8
  %pDeleted55 = getelementptr inbounds %struct.Rtree, ptr %64, i32 0, i32 18
  %65 = load ptr, ptr %pDeleted55, align 8
  store ptr %65, ptr %pLeaf, align 8
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %66 = load i32, ptr %rc, align 4
  %cmp56 = icmp eq i32 %66, 0
  br i1 %cmp56, label %if.then57, label %if.else

if.then57:                                        ; preds = %for.end
  %67 = load ptr, ptr %pRtree.addr, align 8
  %68 = load ptr, ptr %pRoot, align 8
  %call58 = call i32 @nodeRelease(ptr noundef %67, ptr noundef %68)
  store i32 %call58, ptr %rc, align 4
  br label %if.end60

if.else:                                          ; preds = %for.end
  %69 = load ptr, ptr %pRtree.addr, align 8
  %70 = load ptr, ptr %pRoot, align 8
  %call59 = call i32 @nodeRelease(ptr noundef %69, ptr noundef %70)
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then57
  %71 = load i32, ptr %rc, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeNewRowid(ptr noundef %pRtree, ptr noundef %piRowid) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %piRowid.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %piRowid, ptr %piRowid.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 23
  %1 = load ptr, ptr %pWriteRowid, align 8
  %call = call i32 @sqlite3_bind_null(ptr noundef %1, i32 noundef 1)
  %2 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid1 = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 23
  %3 = load ptr, ptr %pWriteRowid1, align 8
  %call2 = call i32 @sqlite3_bind_null(ptr noundef %3, i32 noundef 2)
  %4 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid3 = getelementptr inbounds %struct.Rtree, ptr %4, i32 0, i32 23
  %5 = load ptr, ptr %pWriteRowid3, align 8
  %call4 = call i32 @sqlite3_step(ptr noundef %5)
  %6 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid5 = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 23
  %7 = load ptr, ptr %pWriteRowid5, align 8
  %call6 = call i32 @sqlite3_reset(ptr noundef %7)
  store i32 %call6, ptr %rc, align 4
  %8 = load ptr, ptr %pRtree.addr, align 8
  %db = getelementptr inbounds %struct.Rtree, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %db, align 8
  %call7 = call i64 @sqlite3_last_insert_rowid(ptr noundef %9)
  %10 = load ptr, ptr %piRowid.addr, align 8
  store i64 %call7, ptr %10, align 8
  %11 = load i32, ptr %rc, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @ChooseLeaf(ptr noundef %pRtree, ptr noundef %pCell, i32 noundef %iHeight, ptr noundef %ppLeaf) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %iHeight.addr = alloca i32, align 4
  %ppLeaf.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %ii = alloca i32, align 4
  %pNode = alloca ptr, align 8
  %iCell = alloca i32, align 4
  %iBest = alloca i64, align 8
  %bFound = alloca i32, align 4
  %fMinGrowth = alloca double, align 8
  %fMinArea = alloca double, align 8
  %nCell = alloca i32, align 4
  %pChild = alloca ptr, align 8
  %cell = alloca %struct.RtreeCell, align 8
  %area = alloca double, align 8
  %cell17 = alloca %struct.RtreeCell, align 8
  %growth = alloca double, align 8
  %area18 = alloca double, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store i32 %iHeight, ptr %iHeight.addr, align 4
  store ptr %ppLeaf, ptr %ppLeaf.addr, align 8
  store ptr null, ptr %pNode, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %call = call i32 @nodeAcquire(ptr noundef %0, i64 noundef 1, ptr noundef null, ptr noundef %pNode)
  store i32 %call, ptr %rc, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, ptr %ii, align 4
  %3 = load ptr, ptr %pRtree.addr, align 8
  %iDepth = getelementptr inbounds %struct.Rtree, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %iDepth, align 4
  %5 = load i32, ptr %iHeight.addr, align 4
  %sub = sub nsw i32 %4, %5
  %cmp1 = icmp slt i32 %2, %sub
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end39

for.body:                                         ; preds = %land.end
  store i64 0, ptr %iBest, align 8
  store i32 0, ptr %bFound, align 4
  store double 0.000000e+00, ptr %fMinGrowth, align 8
  store double 0.000000e+00, ptr %fMinArea, align 8
  %7 = load ptr, ptr %pNode, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 2
  %call2 = call i32 @readInt16(ptr noundef %arrayidx)
  store i32 %call2, ptr %nCell, align 4
  store ptr null, ptr %pChild, align 8
  store i32 0, ptr %iCell, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %iCell, align 4
  %10 = load i32, ptr %nCell, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %pRtree.addr, align 8
  %12 = load ptr, ptr %pNode, align 8
  %13 = load i32, ptr %iCell, align 4
  call void @nodeGetCell(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %cell)
  %14 = load ptr, ptr %pRtree.addr, align 8
  %15 = load ptr, ptr %pCell.addr, align 8
  %call6 = call i32 @cellContains(ptr noundef %14, ptr noundef %cell, ptr noundef %15)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body5
  %16 = load ptr, ptr %pRtree.addr, align 8
  %call7 = call double @cellArea(ptr noundef %16, ptr noundef %cell)
  store double %call7, ptr %area, align 8
  %17 = load i32, ptr %bFound, align 4
  %cmp8 = icmp eq i32 %17, 0
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %18 = load double, ptr %area, align 8
  %19 = load double, ptr %fMinArea, align 8
  %cmp9 = fcmp olt double %18, %19
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %if.then
  %iRowid = getelementptr inbounds %struct.RtreeCell, ptr %cell, i32 0, i32 0
  %20 = load i64, ptr %iRowid, align 8
  store i64 %20, ptr %iBest, align 8
  %21 = load double, ptr %area, align 8
  store double %21, ptr %fMinArea, align 8
  store i32 1, ptr %bFound, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %lor.lhs.false
  br label %if.end11

if.end11:                                         ; preds = %if.end, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %22 = load i32, ptr %iCell, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %iCell, align 4
  br label %for.cond3, !llvm.loop !39

for.end:                                          ; preds = %for.cond3
  %23 = load i32, ptr %bFound, align 4
  %tobool12 = icmp ne i32 %23, 0
  br i1 %tobool12, label %if.end34, label %if.then13

if.then13:                                        ; preds = %for.end
  store i32 0, ptr %iCell, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc31, %if.then13
  %24 = load i32, ptr %iCell, align 4
  %25 = load i32, ptr %nCell, align 4
  %cmp15 = icmp slt i32 %24, %25
  br i1 %cmp15, label %for.body16, label %for.end33

for.body16:                                       ; preds = %for.cond14
  %26 = load ptr, ptr %pRtree.addr, align 8
  %27 = load ptr, ptr %pNode, align 8
  %28 = load i32, ptr %iCell, align 4
  call void @nodeGetCell(ptr noundef %26, ptr noundef %27, i32 noundef %28, ptr noundef %cell17)
  %29 = load ptr, ptr %pRtree.addr, align 8
  %call19 = call double @cellArea(ptr noundef %29, ptr noundef %cell17)
  store double %call19, ptr %area18, align 8
  %30 = load ptr, ptr %pRtree.addr, align 8
  %31 = load ptr, ptr %pCell.addr, align 8
  call void @cellUnion(ptr noundef %30, ptr noundef %cell17, ptr noundef %31)
  %32 = load ptr, ptr %pRtree.addr, align 8
  %call20 = call double @cellArea(ptr noundef %32, ptr noundef %cell17)
  %33 = load double, ptr %area18, align 8
  %sub21 = fsub double %call20, %33
  store double %sub21, ptr %growth, align 8
  %34 = load i32, ptr %iCell, align 4
  %cmp22 = icmp eq i32 %34, 0
  br i1 %cmp22, label %if.then28, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %for.body16
  %35 = load double, ptr %growth, align 8
  %36 = load double, ptr %fMinGrowth, align 8
  %cmp24 = fcmp olt double %35, %36
  br i1 %cmp24, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false23
  %37 = load double, ptr %growth, align 8
  %38 = load double, ptr %fMinGrowth, align 8
  %cmp26 = fcmp oeq double %37, %38
  br i1 %cmp26, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %lor.lhs.false25
  %39 = load double, ptr %area18, align 8
  %40 = load double, ptr %fMinArea, align 8
  %cmp27 = fcmp olt double %39, %40
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %land.lhs.true, %lor.lhs.false23, %for.body16
  %41 = load double, ptr %growth, align 8
  store double %41, ptr %fMinGrowth, align 8
  %42 = load double, ptr %area18, align 8
  store double %42, ptr %fMinArea, align 8
  %iRowid29 = getelementptr inbounds %struct.RtreeCell, ptr %cell17, i32 0, i32 0
  %43 = load i64, ptr %iRowid29, align 8
  store i64 %43, ptr %iBest, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true, %lor.lhs.false25
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %44 = load i32, ptr %iCell, align 4
  %inc32 = add nsw i32 %44, 1
  store i32 %inc32, ptr %iCell, align 4
  br label %for.cond14, !llvm.loop !40

for.end33:                                        ; preds = %for.cond14
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %for.end
  %45 = load ptr, ptr %pRtree.addr, align 8
  %46 = load i64, ptr %iBest, align 8
  %47 = load ptr, ptr %pNode, align 8
  %call35 = call i32 @nodeAcquire(ptr noundef %45, i64 noundef %46, ptr noundef %47, ptr noundef %pChild)
  store i32 %call35, ptr %rc, align 4
  %48 = load ptr, ptr %pRtree.addr, align 8
  %49 = load ptr, ptr %pNode, align 8
  %call36 = call i32 @nodeRelease(ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %pChild, align 8
  store ptr %50, ptr %pNode, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %if.end34
  %51 = load i32, ptr %ii, align 4
  %inc38 = add nsw i32 %51, 1
  store i32 %inc38, ptr %ii, align 4
  br label %for.cond, !llvm.loop !41

for.end39:                                        ; preds = %land.end
  %52 = load ptr, ptr %pNode, align 8
  %53 = load ptr, ptr %ppLeaf.addr, align 8
  store ptr %52, ptr %53, align 8
  %54 = load i32, ptr %rc, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rtreeInsertCell(ptr noundef %pRtree, ptr noundef %pNode, ptr noundef %pCell, i32 noundef %iHeight) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %iHeight.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pChild = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store i32 %iHeight, ptr %iHeight.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load i32, ptr %iHeight.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pRtree.addr, align 8
  %2 = load ptr, ptr %pCell.addr, align 8
  %iRowid = getelementptr inbounds %struct.RtreeCell, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %iRowid, align 8
  %call = call ptr @nodeHashLookup(ptr noundef %1, i64 noundef %3)
  store ptr %call, ptr %pChild, align 8
  %4 = load ptr, ptr %pChild, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %pRtree.addr, align 8
  %6 = load ptr, ptr %pChild, align 8
  %pParent = getelementptr inbounds %struct.RtreeNode, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pParent, align 8
  %call2 = call i32 @nodeRelease(ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %pNode.addr, align 8
  call void @nodeReference(ptr noundef %8)
  %9 = load ptr, ptr %pNode.addr, align 8
  %10 = load ptr, ptr %pChild, align 8
  %pParent3 = getelementptr inbounds %struct.RtreeNode, ptr %10, i32 0, i32 0
  store ptr %9, ptr %pParent3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %pRtree.addr, align 8
  %12 = load ptr, ptr %pNode.addr, align 8
  %13 = load ptr, ptr %pCell.addr, align 8
  %call5 = call i32 @nodeInsertCell(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %14 = load ptr, ptr %pRtree.addr, align 8
  %15 = load ptr, ptr %pNode.addr, align 8
  %16 = load ptr, ptr %pCell.addr, align 8
  %17 = load i32, ptr %iHeight.addr, align 4
  %call8 = call i32 @SplitNode(ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17)
  store i32 %call8, ptr %rc, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end4
  %18 = load ptr, ptr %pRtree.addr, align 8
  %19 = load ptr, ptr %pNode.addr, align 8
  %20 = load ptr, ptr %pCell.addr, align 8
  %call9 = call i32 @AdjustTree(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  store i32 %call9, ptr %rc, align 4
  %21 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %21, 0
  br i1 %cmp10, label %if.then11, label %if.end21

if.then11:                                        ; preds = %if.else
  %22 = load i32, ptr %iHeight.addr, align 4
  %cmp12 = icmp eq i32 %22, 0
  br i1 %cmp12, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.then11
  %23 = load ptr, ptr %pRtree.addr, align 8
  %24 = load ptr, ptr %pCell.addr, align 8
  %iRowid14 = getelementptr inbounds %struct.RtreeCell, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %iRowid14, align 8
  %26 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %26, i32 0, i32 1
  %27 = load i64, ptr %iNode, align 8
  %call15 = call i32 @rowidWrite(ptr noundef %23, i64 noundef %25, i64 noundef %27)
  store i32 %call15, ptr %rc, align 4
  br label %if.end20

if.else16:                                        ; preds = %if.then11
  %28 = load ptr, ptr %pRtree.addr, align 8
  %29 = load ptr, ptr %pCell.addr, align 8
  %iRowid17 = getelementptr inbounds %struct.RtreeCell, ptr %29, i32 0, i32 0
  %30 = load i64, ptr %iRowid17, align 8
  %31 = load ptr, ptr %pNode.addr, align 8
  %iNode18 = getelementptr inbounds %struct.RtreeNode, ptr %31, i32 0, i32 1
  %32 = load i64, ptr %iNode18, align 8
  %call19 = call i32 @parentWrite(ptr noundef %28, i64 noundef %30, i64 noundef %32)
  store i32 %call19, ptr %rc, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then13
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then7
  %33 = load i32, ptr %rc, align 4
  ret i32 %33
}

declare i32 @sqlite3_bind_value(ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @sqlite3_column_name(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @deleteCell(ptr noundef %pRtree, ptr noundef %pNode, i32 noundef %iCell, i32 noundef %iHeight) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %iCell.addr = alloca i32, align 4
  %iHeight.addr = alloca i32, align 4
  %pParent = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %iCell, ptr %iCell.addr, align 4
  store i32 %iHeight, ptr %iHeight.addr, align 4
  %0 = load ptr, ptr %pRtree.addr, align 8
  %1 = load ptr, ptr %pNode.addr, align 8
  %call = call i32 @fixLeafParent(ptr noundef %0, ptr noundef %1)
  store i32 %call, ptr %rc, align 4
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pRtree.addr, align 8
  %4 = load ptr, ptr %pNode.addr, align 8
  %5 = load i32, ptr %iCell.addr, align 4
  call void @nodeDeleteCell(ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %6 = load ptr, ptr %pNode.addr, align 8
  %pParent1 = getelementptr inbounds %struct.RtreeNode, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pParent1, align 8
  store ptr %7, ptr %pParent, align 8
  %8 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 2
  %call3 = call i32 @readInt16(ptr noundef %arrayidx)
  %11 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %iNodeSize, align 8
  %sub = sub nsw i32 %12, 4
  %13 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %13, i32 0, i32 6
  %14 = load i8, ptr %nBytesPerCell, align 1
  %conv = zext i8 %14 to i32
  %div = sdiv i32 %sub, %conv
  %div4 = sdiv i32 %div, 3
  %cmp5 = icmp slt i32 %call3, %div4
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then2
  %15 = load ptr, ptr %pRtree.addr, align 8
  %16 = load ptr, ptr %pNode.addr, align 8
  %17 = load i32, ptr %iHeight.addr, align 4
  %call8 = call i32 @removeNode(ptr noundef %15, ptr noundef %16, i32 noundef %17)
  store i32 %call8, ptr %rc, align 4
  br label %if.end10

if.else:                                          ; preds = %if.then2
  %18 = load ptr, ptr %pRtree.addr, align 8
  %19 = load ptr, ptr %pNode.addr, align 8
  %call9 = call i32 @fixBoundingBox(ptr noundef %18, ptr noundef %19)
  store i32 %call9, ptr %rc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %20 = load i32, ptr %rc, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @removeNode(ptr noundef %pRtree, ptr noundef %pNode, i32 noundef %iHeight) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %iHeight.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %rc2 = alloca i32, align 4
  %pParent = alloca ptr, align 8
  %iCell = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %iHeight, ptr %iHeight.addr, align 4
  store ptr null, ptr %pParent, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %1 = load ptr, ptr %pNode.addr, align 8
  %call = call i32 @nodeParentIndex(ptr noundef %0, ptr noundef %1, ptr noundef %iCell)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pNode.addr, align 8
  %pParent1 = getelementptr inbounds %struct.RtreeNode, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pParent1, align 8
  store ptr %4, ptr %pParent, align 8
  %5 = load ptr, ptr %pNode.addr, align 8
  %pParent2 = getelementptr inbounds %struct.RtreeNode, ptr %5, i32 0, i32 0
  store ptr null, ptr %pParent2, align 8
  %6 = load ptr, ptr %pRtree.addr, align 8
  %7 = load ptr, ptr %pParent, align 8
  %8 = load i32, ptr %iCell, align 4
  %9 = load i32, ptr %iHeight.addr, align 4
  %add = add nsw i32 %9, 1
  %call3 = call i32 @deleteCell(ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %add)
  store i32 %call3, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %pRtree.addr, align 8
  %11 = load ptr, ptr %pParent, align 8
  %call4 = call i32 @nodeRelease(ptr noundef %10, ptr noundef %11)
  store i32 %call4, ptr %rc2, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %13 = load i32, ptr %rc2, align 4
  store i32 %13, ptr %rc, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %14 = load i32, ptr %rc, align 4
  %cmp8 = icmp ne i32 %14, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %15 = load i32, ptr %rc, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end7
  %16 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteNode = getelementptr inbounds %struct.Rtree, ptr %16, i32 0, i32 21
  %17 = load ptr, ptr %pDeleteNode, align 8
  %18 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %iNode, align 8
  %call11 = call i32 @sqlite3_bind_int64(ptr noundef %17, i32 noundef 1, i64 noundef %19)
  %20 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteNode12 = getelementptr inbounds %struct.Rtree, ptr %20, i32 0, i32 21
  %21 = load ptr, ptr %pDeleteNode12, align 8
  %call13 = call i32 @sqlite3_step(ptr noundef %21)
  %22 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteNode14 = getelementptr inbounds %struct.Rtree, ptr %22, i32 0, i32 21
  %23 = load ptr, ptr %pDeleteNode14, align 8
  %call15 = call i32 @sqlite3_reset(ptr noundef %23)
  store i32 %call15, ptr %rc, align 4
  %cmp16 = icmp ne i32 0, %call15
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end10
  %24 = load i32, ptr %rc, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end10
  %25 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteParent = getelementptr inbounds %struct.Rtree, ptr %25, i32 0, i32 27
  %26 = load ptr, ptr %pDeleteParent, align 8
  %27 = load ptr, ptr %pNode.addr, align 8
  %iNode19 = getelementptr inbounds %struct.RtreeNode, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %iNode19, align 8
  %call20 = call i32 @sqlite3_bind_int64(ptr noundef %26, i32 noundef 1, i64 noundef %28)
  %29 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteParent21 = getelementptr inbounds %struct.Rtree, ptr %29, i32 0, i32 27
  %30 = load ptr, ptr %pDeleteParent21, align 8
  %call22 = call i32 @sqlite3_step(ptr noundef %30)
  %31 = load ptr, ptr %pRtree.addr, align 8
  %pDeleteParent23 = getelementptr inbounds %struct.Rtree, ptr %31, i32 0, i32 27
  %32 = load ptr, ptr %pDeleteParent23, align 8
  %call24 = call i32 @sqlite3_reset(ptr noundef %32)
  store i32 %call24, ptr %rc, align 4
  %cmp25 = icmp ne i32 0, %call24
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end18
  %33 = load i32, ptr %rc, align 4
  store i32 %33, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end18
  %34 = load ptr, ptr %pRtree.addr, align 8
  %35 = load ptr, ptr %pNode.addr, align 8
  call void @nodeHashDelete(ptr noundef %34, ptr noundef %35)
  %36 = load i32, ptr %iHeight.addr, align 4
  %conv = sext i32 %36 to i64
  %37 = load ptr, ptr %pNode.addr, align 8
  %iNode28 = getelementptr inbounds %struct.RtreeNode, ptr %37, i32 0, i32 1
  store i64 %conv, ptr %iNode28, align 8
  %38 = load ptr, ptr %pRtree.addr, align 8
  %pDeleted = getelementptr inbounds %struct.Rtree, ptr %38, i32 0, i32 18
  %39 = load ptr, ptr %pDeleted, align 8
  %40 = load ptr, ptr %pNode.addr, align 8
  %pNext = getelementptr inbounds %struct.RtreeNode, ptr %40, i32 0, i32 5
  store ptr %39, ptr %pNext, align 8
  %41 = load ptr, ptr %pNode.addr, align 8
  %nRef = getelementptr inbounds %struct.RtreeNode, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %nRef, align 8
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %nRef, align 8
  %43 = load ptr, ptr %pNode.addr, align 8
  %44 = load ptr, ptr %pRtree.addr, align 8
  %pDeleted29 = getelementptr inbounds %struct.Rtree, ptr %44, i32 0, i32 18
  store ptr %43, ptr %pDeleted29, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then26, %if.then17, %if.then9
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @writeInt16(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %shr = ashr i32 %0, 8
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %1 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i32, ptr %i.addr, align 4
  %shr1 = ashr i32 %2, 0
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %3 = load ptr, ptr %p.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %conv3, ptr %arrayidx4, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @reinsertNodeContent(ptr noundef %pRtree, ptr noundef %pNode) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %ii = alloca i32, align 4
  %rc = alloca i32, align 4
  %nCell = alloca i32, align 4
  %pInsert = alloca ptr, align 8
  %cell = alloca %struct.RtreeCell, align 8
  %rc2 = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 2
  %call = call i32 @readInt16(ptr noundef %arrayidx)
  store i32 %call, ptr %nCell, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %ii, align 4
  %4 = load i32, ptr %nCell, align 4
  %cmp1 = icmp slt i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load ptr, ptr %pRtree.addr, align 8
  %7 = load ptr, ptr %pNode.addr, align 8
  %8 = load i32, ptr %ii, align 4
  call void @nodeGetCell(ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %cell)
  %9 = load ptr, ptr %pRtree.addr, align 8
  %10 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %iNode, align 8
  %conv = trunc i64 %11 to i32
  %call2 = call i32 @ChooseLeaf(ptr noundef %9, ptr noundef %cell, i32 noundef %conv, ptr noundef %pInsert)
  store i32 %call2, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr %pRtree.addr, align 8
  %14 = load ptr, ptr %pInsert, align 8
  %15 = load ptr, ptr %pNode.addr, align 8
  %iNode5 = getelementptr inbounds %struct.RtreeNode, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %iNode5, align 8
  %conv6 = trunc i64 %16 to i32
  %call7 = call i32 @rtreeInsertCell(ptr noundef %13, ptr noundef %14, ptr noundef %cell, i32 noundef %conv6)
  store i32 %call7, ptr %rc, align 4
  %17 = load ptr, ptr %pRtree.addr, align 8
  %18 = load ptr, ptr %pInsert, align 8
  %call8 = call i32 @nodeRelease(ptr noundef %17, ptr noundef %18)
  store i32 %call8, ptr %rc2, align 4
  %19 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %19, 0
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %20 = load i32, ptr %rc2, align 4
  store i32 %20, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %21 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %land.end
  %22 = load i32, ptr %rc, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fixLeafParent(ptr noundef %pRtree, ptr noundef %pLeaf) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pLeaf.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pChild = alloca ptr, align 8
  %rc2 = alloca i32, align 4
  %pTest = alloca ptr, align 8
  %iNode7 = alloca i64, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pLeaf, ptr %pLeaf.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pLeaf.addr, align 8
  store ptr %0, ptr %pChild, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %entry
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load ptr, ptr %pChild, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %iNode, align 8
  %cmp1 = icmp ne i64 %3, 1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr %pChild, align 8
  %pParent = getelementptr inbounds %struct.RtreeNode, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pParent, align 8
  %cmp2 = icmp eq ptr %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i32 0, ptr %rc2, align 4
  %7 = load ptr, ptr %pRtree.addr, align 8
  %pReadParent = getelementptr inbounds %struct.Rtree, ptr %7, i32 0, i32 25
  %8 = load ptr, ptr %pReadParent, align 8
  %9 = load ptr, ptr %pChild, align 8
  %iNode3 = getelementptr inbounds %struct.RtreeNode, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %iNode3, align 8
  %call = call i32 @sqlite3_bind_int64(ptr noundef %8, i32 noundef 1, i64 noundef %10)
  %11 = load ptr, ptr %pRtree.addr, align 8
  %pReadParent4 = getelementptr inbounds %struct.Rtree, ptr %11, i32 0, i32 25
  %12 = load ptr, ptr %pReadParent4, align 8
  %call5 = call i32 @sqlite3_step(ptr noundef %12)
  store i32 %call5, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %13, 100
  br i1 %cmp6, label %if.then, label %if.end19

if.then:                                          ; preds = %while.body
  %14 = load ptr, ptr %pRtree.addr, align 8
  %pReadParent8 = getelementptr inbounds %struct.Rtree, ptr %14, i32 0, i32 25
  %15 = load ptr, ptr %pReadParent8, align 8
  %call9 = call i64 @sqlite3_column_int64(ptr noundef %15, i32 noundef 0)
  store i64 %call9, ptr %iNode7, align 8
  %16 = load ptr, ptr %pLeaf.addr, align 8
  store ptr %16, ptr %pTest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %17 = load ptr, ptr %pTest, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %land.rhs10, label %land.end13

land.rhs10:                                       ; preds = %for.cond
  %18 = load ptr, ptr %pTest, align 8
  %iNode11 = getelementptr inbounds %struct.RtreeNode, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %iNode11, align 8
  %20 = load i64, ptr %iNode7, align 8
  %cmp12 = icmp ne i64 %19, %20
  br label %land.end13

land.end13:                                       ; preds = %land.rhs10, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp12, %land.rhs10 ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load ptr, ptr %pTest, align 8
  %pParent14 = getelementptr inbounds %struct.RtreeNode, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %pParent14, align 8
  store ptr %23, ptr %pTest, align 8
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %land.end13
  %24 = load ptr, ptr %pTest, align 8
  %cmp15 = icmp eq ptr %24, null
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %for.end
  %25 = load ptr, ptr %pRtree.addr, align 8
  %26 = load i64, ptr %iNode7, align 8
  %27 = load ptr, ptr %pChild, align 8
  %pParent17 = getelementptr inbounds %struct.RtreeNode, ptr %27, i32 0, i32 0
  %call18 = call i32 @nodeAcquire(ptr noundef %25, i64 noundef %26, ptr noundef null, ptr noundef %pParent17)
  store i32 %call18, ptr %rc2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16, %for.end
  br label %if.end19

if.end19:                                         ; preds = %if.end, %while.body
  %28 = load ptr, ptr %pRtree.addr, align 8
  %pReadParent20 = getelementptr inbounds %struct.Rtree, ptr %28, i32 0, i32 25
  %29 = load ptr, ptr %pReadParent20, align 8
  %call21 = call i32 @sqlite3_reset(ptr noundef %29)
  store i32 %call21, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %30, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  %31 = load i32, ptr %rc2, align 4
  store i32 %31, ptr %rc, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %32 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %32, 0
  br i1 %cmp25, label %land.lhs.true26, label %if.end30

land.lhs.true26:                                  ; preds = %if.end24
  %33 = load ptr, ptr %pChild, align 8
  %pParent27 = getelementptr inbounds %struct.RtreeNode, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %pParent27, align 8
  %tobool28 = icmp ne ptr %34, null
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %land.lhs.true26
  store i32 267, ptr %rc, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true26, %if.end24
  %35 = load ptr, ptr %pChild, align 8
  %pParent31 = getelementptr inbounds %struct.RtreeNode, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pParent31, align 8
  store ptr %36, ptr %pChild, align 8
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %land.end
  %37 = load i32, ptr %rc, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nodeDeleteCell(ptr noundef %pRtree, ptr noundef %pNode, i32 noundef %iCell) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %iCell.addr = alloca i32, align 4
  %pDst = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %nByte = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %iCell, ptr %iCell.addr, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zData, align 8
  %2 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 6
  %3 = load i8, ptr %nBytesPerCell, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, ptr %iCell.addr, align 4
  %mul = mul nsw i32 %conv, %4
  %add = add nsw i32 4, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %pDst, align 8
  %5 = load ptr, ptr %pDst, align 8
  %6 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell1 = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 6
  %7 = load i8, ptr %nBytesPerCell1, align 1
  %idxprom2 = zext i8 %7 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 %idxprom2
  store ptr %arrayidx3, ptr %pSrc, align 8
  %8 = load ptr, ptr %pNode.addr, align 8
  %zData4 = getelementptr inbounds %struct.RtreeNode, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %zData4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 2
  %call = call i32 @readInt16(ptr noundef %arrayidx5)
  %10 = load i32, ptr %iCell.addr, align 4
  %sub = sub nsw i32 %call, %10
  %sub6 = sub nsw i32 %sub, 1
  %11 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell7 = getelementptr inbounds %struct.Rtree, ptr %11, i32 0, i32 6
  %12 = load i8, ptr %nBytesPerCell7, align 1
  %conv8 = zext i8 %12 to i32
  %mul9 = mul nsw i32 %sub6, %conv8
  store i32 %mul9, ptr %nByte, align 4
  %13 = load ptr, ptr %pDst, align 8
  %14 = load ptr, ptr %pSrc, align 8
  %15 = load i32, ptr %nByte, align 4
  %conv10 = sext i32 %15 to i64
  %16 = load ptr, ptr %pDst, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %16, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memmove_chk(ptr noundef %13, ptr noundef %14, i64 noundef %conv10, i64 noundef %17) #7
  %18 = load ptr, ptr %pNode.addr, align 8
  %zData12 = getelementptr inbounds %struct.RtreeNode, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %zData12, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load ptr, ptr %pNode.addr, align 8
  %zData14 = getelementptr inbounds %struct.RtreeNode, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %zData14, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %21, i64 2
  %call16 = call i32 @readInt16(ptr noundef %arrayidx15)
  %sub17 = sub nsw i32 %call16, 1
  call void @writeInt16(ptr noundef %arrayidx13, i32 noundef %sub17)
  %22 = load ptr, ptr %pNode.addr, align 8
  %isDirty = getelementptr inbounds %struct.RtreeNode, ptr %22, i32 0, i32 3
  store i32 1, ptr %isDirty, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fixBoundingBox(ptr noundef %pRtree, ptr noundef %pNode) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %pParent = alloca ptr, align 8
  %rc = alloca i32, align 4
  %ii = alloca i32, align 4
  %nCell = alloca i32, align 4
  %box = alloca %struct.RtreeCell, align 8
  %cell = alloca %struct.RtreeCell, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %pParent1 = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParent1, align 8
  store ptr %1, ptr %pParent, align 8
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 2
  %call = call i32 @readInt16(ptr noundef %arrayidx)
  store i32 %call, ptr %nCell, align 4
  %5 = load ptr, ptr %pRtree.addr, align 8
  %6 = load ptr, ptr %pNode.addr, align 8
  call void @nodeGetCell(ptr noundef %5, ptr noundef %6, i32 noundef 0, ptr noundef %box)
  store i32 1, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %ii, align 4
  %8 = load i32, ptr %nCell, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pRtree.addr, align 8
  %10 = load ptr, ptr %pNode.addr, align 8
  %11 = load i32, ptr %ii, align 4
  call void @nodeGetCell(ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %cell)
  %12 = load ptr, ptr %pRtree.addr, align 8
  call void @cellUnion(ptr noundef %12, ptr noundef %box, ptr noundef %cell)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %iNode, align 8
  %iRowid = getelementptr inbounds %struct.RtreeCell, ptr %box, i32 0, i32 0
  store i64 %15, ptr %iRowid, align 8
  %16 = load ptr, ptr %pRtree.addr, align 8
  %17 = load ptr, ptr %pNode.addr, align 8
  %call2 = call i32 @nodeParentIndex(ptr noundef %16, ptr noundef %17, ptr noundef %ii)
  store i32 %call2, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %18, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.end
  %19 = load ptr, ptr %pRtree.addr, align 8
  %20 = load ptr, ptr %pParent, align 8
  %21 = load i32, ptr %ii, align 4
  call void @nodeOverwriteCell(ptr noundef %19, ptr noundef %20, ptr noundef %box, i32 noundef %21)
  %22 = load ptr, ptr %pRtree.addr, align 8
  %23 = load ptr, ptr %pParent, align 8
  %call5 = call i32 @fixBoundingBox(ptr noundef %22, ptr noundef %23)
  store i32 %call5, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.end
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %24 = load i32, ptr %rc, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cellUnion(ptr noundef %pRtree, ptr noundef %p1, ptr noundef %p2) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %ii = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %p1, ptr %p1.addr, align 8
  store ptr %p2, ptr %p2.addr, align 8
  store i32 0, ptr %ii, align 4
  %0 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %eCoordType, align 2
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %2 = load ptr, ptr %p1.addr, align 8
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 %idxprom
  %4 = load float, ptr %arrayidx, align 4
  %5 = load ptr, ptr %p2.addr, align 8
  %aCoord2 = getelementptr inbounds %struct.RtreeCell, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %ii, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord2, i64 0, i64 %idxprom3
  %7 = load float, ptr %arrayidx4, align 4
  %cmp5 = fcmp ogt float %4, %7
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %8 = load ptr, ptr %p2.addr, align 8
  %aCoord7 = getelementptr inbounds %struct.RtreeCell, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %ii, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord7, i64 0, i64 %idxprom8
  %10 = load float, ptr %arrayidx9, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %11 = load ptr, ptr %p1.addr, align 8
  %aCoord10 = getelementptr inbounds %struct.RtreeCell, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %ii, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord10, i64 0, i64 %idxprom11
  %13 = load float, ptr %arrayidx12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %10, %cond.true ], [ %13, %cond.false ]
  %14 = load ptr, ptr %p1.addr, align 8
  %aCoord13 = getelementptr inbounds %struct.RtreeCell, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %ii, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord13, i64 0, i64 %idxprom14
  store float %cond, ptr %arrayidx15, align 4
  %16 = load ptr, ptr %p1.addr, align 8
  %aCoord16 = getelementptr inbounds %struct.RtreeCell, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %ii, align 4
  %add = add nsw i32 %17, 1
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord16, i64 0, i64 %idxprom17
  %18 = load float, ptr %arrayidx18, align 4
  %19 = load ptr, ptr %p2.addr, align 8
  %aCoord19 = getelementptr inbounds %struct.RtreeCell, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %ii, align 4
  %add20 = add nsw i32 %20, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord19, i64 0, i64 %idxprom21
  %21 = load float, ptr %arrayidx22, align 4
  %cmp23 = fcmp olt float %18, %21
  br i1 %cmp23, label %cond.true25, label %cond.false30

cond.true25:                                      ; preds = %cond.end
  %22 = load ptr, ptr %p2.addr, align 8
  %aCoord26 = getelementptr inbounds %struct.RtreeCell, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %ii, align 4
  %add27 = add nsw i32 %23, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord26, i64 0, i64 %idxprom28
  %24 = load float, ptr %arrayidx29, align 4
  br label %cond.end35

cond.false30:                                     ; preds = %cond.end
  %25 = load ptr, ptr %p1.addr, align 8
  %aCoord31 = getelementptr inbounds %struct.RtreeCell, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %ii, align 4
  %add32 = add nsw i32 %26, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord31, i64 0, i64 %idxprom33
  %27 = load float, ptr %arrayidx34, align 4
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false30, %cond.true25
  %cond36 = phi float [ %24, %cond.true25 ], [ %27, %cond.false30 ]
  %28 = load ptr, ptr %p1.addr, align 8
  %aCoord37 = getelementptr inbounds %struct.RtreeCell, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %ii, align 4
  %add38 = add nsw i32 %29, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord37, i64 0, i64 %idxprom39
  store float %cond36, ptr %arrayidx40, align 4
  %30 = load i32, ptr %ii, align 4
  %add41 = add nsw i32 %30, 2
  store i32 %add41, ptr %ii, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end35
  %31 = load i32, ptr %ii, align 4
  %32 = load ptr, ptr %pRtree.addr, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %32, i32 0, i32 4
  %33 = load i8, ptr %nDim2, align 1
  %conv42 = zext i8 %33 to i32
  %cmp43 = icmp slt i32 %31, %conv42
  br i1 %cmp43, label %do.body, label %do.end, !llvm.loop !46

do.end:                                           ; preds = %do.cond
  br label %if.end

if.else:                                          ; preds = %entry
  br label %do.body45

do.body45:                                        ; preds = %do.cond94, %if.else
  %34 = load ptr, ptr %p1.addr, align 8
  %aCoord46 = getelementptr inbounds %struct.RtreeCell, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %ii, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord46, i64 0, i64 %idxprom47
  %36 = load i32, ptr %arrayidx48, align 4
  %37 = load ptr, ptr %p2.addr, align 8
  %aCoord49 = getelementptr inbounds %struct.RtreeCell, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %ii, align 4
  %idxprom50 = sext i32 %38 to i64
  %arrayidx51 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord49, i64 0, i64 %idxprom50
  %39 = load i32, ptr %arrayidx51, align 4
  %cmp52 = icmp sgt i32 %36, %39
  br i1 %cmp52, label %cond.true54, label %cond.false58

cond.true54:                                      ; preds = %do.body45
  %40 = load ptr, ptr %p2.addr, align 8
  %aCoord55 = getelementptr inbounds %struct.RtreeCell, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %ii, align 4
  %idxprom56 = sext i32 %41 to i64
  %arrayidx57 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord55, i64 0, i64 %idxprom56
  %42 = load i32, ptr %arrayidx57, align 4
  br label %cond.end62

cond.false58:                                     ; preds = %do.body45
  %43 = load ptr, ptr %p1.addr, align 8
  %aCoord59 = getelementptr inbounds %struct.RtreeCell, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %ii, align 4
  %idxprom60 = sext i32 %44 to i64
  %arrayidx61 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord59, i64 0, i64 %idxprom60
  %45 = load i32, ptr %arrayidx61, align 4
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false58, %cond.true54
  %cond63 = phi i32 [ %42, %cond.true54 ], [ %45, %cond.false58 ]
  %46 = load ptr, ptr %p1.addr, align 8
  %aCoord64 = getelementptr inbounds %struct.RtreeCell, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %ii, align 4
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord64, i64 0, i64 %idxprom65
  store i32 %cond63, ptr %arrayidx66, align 4
  %48 = load ptr, ptr %p1.addr, align 8
  %aCoord67 = getelementptr inbounds %struct.RtreeCell, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %ii, align 4
  %add68 = add nsw i32 %49, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord67, i64 0, i64 %idxprom69
  %50 = load i32, ptr %arrayidx70, align 4
  %51 = load ptr, ptr %p2.addr, align 8
  %aCoord71 = getelementptr inbounds %struct.RtreeCell, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %ii, align 4
  %add72 = add nsw i32 %52, 1
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord71, i64 0, i64 %idxprom73
  %53 = load i32, ptr %arrayidx74, align 4
  %cmp75 = icmp slt i32 %50, %53
  br i1 %cmp75, label %cond.true77, label %cond.false82

cond.true77:                                      ; preds = %cond.end62
  %54 = load ptr, ptr %p2.addr, align 8
  %aCoord78 = getelementptr inbounds %struct.RtreeCell, ptr %54, i32 0, i32 1
  %55 = load i32, ptr %ii, align 4
  %add79 = add nsw i32 %55, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord78, i64 0, i64 %idxprom80
  %56 = load i32, ptr %arrayidx81, align 4
  br label %cond.end87

cond.false82:                                     ; preds = %cond.end62
  %57 = load ptr, ptr %p1.addr, align 8
  %aCoord83 = getelementptr inbounds %struct.RtreeCell, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %ii, align 4
  %add84 = add nsw i32 %58, 1
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord83, i64 0, i64 %idxprom85
  %59 = load i32, ptr %arrayidx86, align 4
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false82, %cond.true77
  %cond88 = phi i32 [ %56, %cond.true77 ], [ %59, %cond.false82 ]
  %60 = load ptr, ptr %p1.addr, align 8
  %aCoord89 = getelementptr inbounds %struct.RtreeCell, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %ii, align 4
  %add90 = add nsw i32 %61, 1
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord89, i64 0, i64 %idxprom91
  store i32 %cond88, ptr %arrayidx92, align 4
  %62 = load i32, ptr %ii, align 4
  %add93 = add nsw i32 %62, 2
  store i32 %add93, ptr %ii, align 4
  br label %do.cond94

do.cond94:                                        ; preds = %cond.end87
  %63 = load i32, ptr %ii, align 4
  %64 = load ptr, ptr %pRtree.addr, align 8
  %nDim295 = getelementptr inbounds %struct.Rtree, ptr %64, i32 0, i32 4
  %65 = load i8, ptr %nDim295, align 1
  %conv96 = zext i8 %65 to i32
  %cmp97 = icmp slt i32 %63, %conv96
  br i1 %cmp97, label %do.body45, label %do.end99, !llvm.loop !47

do.end99:                                         ; preds = %do.cond94
  br label %if.end

if.end:                                           ; preds = %do.end99, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nodeParentIndex(ptr noundef %pRtree, ptr noundef %pNode, ptr noundef %piIndex) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %piIndex.addr = alloca ptr, align 8
  %pParent = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store ptr %piIndex, ptr %piIndex.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %pParent1 = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParent1, align 8
  store ptr %1, ptr %pParent, align 8
  %2 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pRtree.addr, align 8
  %4 = load ptr, ptr %pParent, align 8
  %5 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %iNode, align 8
  %7 = load ptr, ptr %piIndex.addr, align 8
  %call = call i32 @nodeRowidIndex(ptr noundef %3, ptr noundef %4, i64 noundef %6, ptr noundef %7)
  store i32 %call, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %piIndex.addr, align 8
  store i32 -1, ptr %8, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nodeOverwriteCell(ptr noundef %pRtree, ptr noundef %pNode, ptr noundef %pCell, i32 noundef %iCell) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %iCell.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store i32 %iCell, ptr %iCell.addr, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zData, align 8
  %2 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 6
  %3 = load i8, ptr %nBytesPerCell, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, ptr %iCell.addr, align 4
  %mul = mul nsw i32 %conv, %4
  %add = add nsw i32 4, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %5 = load ptr, ptr %p, align 8
  %6 = load ptr, ptr %pCell.addr, align 8
  %iRowid = getelementptr inbounds %struct.RtreeCell, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %iRowid, align 8
  %call = call i32 @writeInt64(ptr noundef %5, i64 noundef %7)
  %8 = load ptr, ptr %p, align 8
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %ii, align 4
  %10 = load ptr, ptr %pRtree.addr, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %10, i32 0, i32 4
  %11 = load i8, ptr %nDim2, align 1
  %conv1 = zext i8 %11 to i32
  %cmp = icmp slt i32 %9, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %p, align 8
  %13 = load ptr, ptr %pCell.addr, align 8
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %ii, align 4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 %idxprom3
  %call5 = call i32 @writeCoord(ptr noundef %12, ptr noundef %arrayidx4)
  %15 = load ptr, ptr %p, align 8
  %idx.ext6 = sext i32 %call5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %15, i64 %idx.ext6
  store ptr %add.ptr7, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %pNode.addr, align 8
  %isDirty = getelementptr inbounds %struct.RtreeNode, ptr %17, i32 0, i32 3
  store i32 1, ptr %isDirty, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @writeInt64(ptr noundef %p, i64 noundef %i) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  %0 = load i64, ptr %i.addr, align 8
  %shr = ashr i64 %0, 56
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %1 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i64, ptr %i.addr, align 8
  %shr1 = ashr i64 %2, 48
  %and2 = and i64 %shr1, 255
  %conv3 = trunc i64 %and2 to i8
  %3 = load ptr, ptr %p.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %conv3, ptr %arrayidx4, align 1
  %4 = load i64, ptr %i.addr, align 8
  %shr5 = ashr i64 %4, 40
  %and6 = and i64 %shr5, 255
  %conv7 = trunc i64 %and6 to i8
  %5 = load ptr, ptr %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %conv7, ptr %arrayidx8, align 1
  %6 = load i64, ptr %i.addr, align 8
  %shr9 = ashr i64 %6, 32
  %and10 = and i64 %shr9, 255
  %conv11 = trunc i64 %and10 to i8
  %7 = load ptr, ptr %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %conv11, ptr %arrayidx12, align 1
  %8 = load i64, ptr %i.addr, align 8
  %shr13 = ashr i64 %8, 24
  %and14 = and i64 %shr13, 255
  %conv15 = trunc i64 %and14 to i8
  %9 = load ptr, ptr %p.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %9, i64 4
  store i8 %conv15, ptr %arrayidx16, align 1
  %10 = load i64, ptr %i.addr, align 8
  %shr17 = ashr i64 %10, 16
  %and18 = and i64 %shr17, 255
  %conv19 = trunc i64 %and18 to i8
  %11 = load ptr, ptr %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %11, i64 5
  store i8 %conv19, ptr %arrayidx20, align 1
  %12 = load i64, ptr %i.addr, align 8
  %shr21 = ashr i64 %12, 8
  %and22 = and i64 %shr21, 255
  %conv23 = trunc i64 %and22 to i8
  %13 = load ptr, ptr %p.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %13, i64 6
  store i8 %conv23, ptr %arrayidx24, align 1
  %14 = load i64, ptr %i.addr, align 8
  %shr25 = ashr i64 %14, 0
  %and26 = and i64 %shr25, 255
  %conv27 = trunc i64 %and26 to i8
  %15 = load ptr, ptr %p.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %15, i64 7
  store i8 %conv27, ptr %arrayidx28, align 1
  ret i32 8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @writeCoord(ptr noundef %p, ptr noundef %pCoord) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pCoord.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pCoord, ptr %pCoord.addr, align 8
  %0 = load ptr, ptr %pCoord.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %shr = lshr i32 %2, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %3 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %4 = load i32, ptr %i, align 4
  %shr1 = lshr i32 %4, 16
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %5 = load ptr, ptr %p.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %conv3, ptr %arrayidx4, align 1
  %6 = load i32, ptr %i, align 4
  %shr5 = lshr i32 %6, 8
  %and6 = and i32 %shr5, 255
  %conv7 = trunc i32 %and6 to i8
  %7 = load ptr, ptr %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 %conv7, ptr %arrayidx8, align 1
  %8 = load i32, ptr %i, align 4
  %shr9 = lshr i32 %8, 0
  %and10 = and i32 %shr9, 255
  %conv11 = trunc i32 %and10 to i8
  %9 = load ptr, ptr %p.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %9, i64 3
  store i8 %conv11, ptr %arrayidx12, align 1
  ret i32 4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cellContains(ptr noundef %pRtree, ptr noundef %p1, ptr noundef %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %ii = alloca i32, align 4
  %a1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %a123 = alloca ptr, align 8
  %a227 = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %p1, ptr %p1.addr, align 8
  store ptr %p2, ptr %p2.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %eCoordType, align 2
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %ii, align 4
  %3 = load ptr, ptr %pRtree.addr, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %3, i32 0, i32 4
  %4 = load i8, ptr %nDim2, align 1
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp slt i32 %2, %conv2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %p1.addr, align 8
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %a1, align 8
  %7 = load ptr, ptr %p2.addr, align 8
  %aCoord5 = getelementptr inbounds %struct.RtreeCell, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %ii, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord5, i64 0, i64 %idxprom6
  store ptr %arrayidx7, ptr %a2, align 8
  %9 = load ptr, ptr %a2, align 8
  %arrayidx8 = getelementptr inbounds %union.RtreeCoord, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx8, align 4
  %11 = load ptr, ptr %a1, align 8
  %arrayidx9 = getelementptr inbounds %union.RtreeCoord, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx9, align 4
  %cmp10 = icmp slt i32 %10, %12
  br i1 %cmp10, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load ptr, ptr %a2, align 8
  %arrayidx12 = getelementptr inbounds %union.RtreeCoord, ptr %13, i64 1
  %14 = load i32, ptr %arrayidx12, align 4
  %15 = load ptr, ptr %a1, align 8
  %arrayidx13 = getelementptr inbounds %union.RtreeCoord, ptr %15, i64 1
  %16 = load i32, ptr %arrayidx13, align 4
  %cmp14 = icmp sgt i32 %14, %16
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %ii, align 4
  %add = add nsw i32 %17, 2
  store i32 %add, ptr %ii, align 4
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  br label %if.end45

if.else:                                          ; preds = %entry
  store i32 0, ptr %ii, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc42, %if.else
  %18 = load i32, ptr %ii, align 4
  %19 = load ptr, ptr %pRtree.addr, align 8
  %nDim218 = getelementptr inbounds %struct.Rtree, ptr %19, i32 0, i32 4
  %20 = load i8, ptr %nDim218, align 1
  %conv19 = zext i8 %20 to i32
  %cmp20 = icmp slt i32 %18, %conv19
  br i1 %cmp20, label %for.body22, label %for.end44

for.body22:                                       ; preds = %for.cond17
  %21 = load ptr, ptr %p1.addr, align 8
  %aCoord24 = getelementptr inbounds %struct.RtreeCell, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %ii, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord24, i64 0, i64 %idxprom25
  store ptr %arrayidx26, ptr %a123, align 8
  %23 = load ptr, ptr %p2.addr, align 8
  %aCoord28 = getelementptr inbounds %struct.RtreeCell, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %ii, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord28, i64 0, i64 %idxprom29
  store ptr %arrayidx30, ptr %a227, align 8
  %25 = load ptr, ptr %a227, align 8
  %arrayidx31 = getelementptr inbounds %union.RtreeCoord, ptr %25, i64 0
  %26 = load float, ptr %arrayidx31, align 4
  %27 = load ptr, ptr %a123, align 8
  %arrayidx32 = getelementptr inbounds %union.RtreeCoord, ptr %27, i64 0
  %28 = load float, ptr %arrayidx32, align 4
  %cmp33 = fcmp olt float %26, %28
  br i1 %cmp33, label %if.then40, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %for.body22
  %29 = load ptr, ptr %a227, align 8
  %arrayidx36 = getelementptr inbounds %union.RtreeCoord, ptr %29, i64 1
  %30 = load float, ptr %arrayidx36, align 4
  %31 = load ptr, ptr %a123, align 8
  %arrayidx37 = getelementptr inbounds %union.RtreeCoord, ptr %31, i64 1
  %32 = load float, ptr %arrayidx37, align 4
  %cmp38 = fcmp ogt float %30, %32
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false35, %for.body22
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %lor.lhs.false35
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %33 = load i32, ptr %ii, align 4
  %add43 = add nsw i32 %33, 2
  store i32 %add43, ptr %ii, align 4
  br label %for.cond17, !llvm.loop !50

for.end44:                                        ; preds = %for.cond17
  br label %if.end45

if.end45:                                         ; preds = %for.end44, %for.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then40, %if.then16
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal double @cellArea(ptr noundef %pRtree, ptr noundef %p) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %area = alloca double, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store double 1.000000e+00, ptr %area, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %eCoordType, align 2
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pRtree.addr, align 8
  %nDim = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 3
  %3 = load i8, ptr %nDim, align 4
  %conv2 = zext i8 %3 to i32
  switch i32 %conv2, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb6
    i32 3, label %sw.bb13
    i32 2, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.then
  %4 = load ptr, ptr %p.addr, align 8
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 9
  %5 = load float, ptr %arrayidx, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %aCoord3 = getelementptr inbounds %struct.RtreeCell, ptr %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord3, i64 0, i64 8
  %7 = load float, ptr %arrayidx4, align 8
  %sub = fsub float %5, %7
  %conv5 = fpext float %sub to double
  store double %conv5, ptr %area, align 8
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.then, %sw.bb
  %8 = load ptr, ptr %p.addr, align 8
  %aCoord7 = getelementptr inbounds %struct.RtreeCell, ptr %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord7, i64 0, i64 7
  %9 = load float, ptr %arrayidx8, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %aCoord9 = getelementptr inbounds %struct.RtreeCell, ptr %10, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord9, i64 0, i64 6
  %11 = load float, ptr %arrayidx10, align 8
  %sub11 = fsub float %9, %11
  %conv12 = fpext float %sub11 to double
  %12 = load double, ptr %area, align 8
  %mul = fmul double %12, %conv12
  store double %mul, ptr %area, align 8
  br label %sw.bb13

sw.bb13:                                          ; preds = %if.then, %sw.bb6
  %13 = load ptr, ptr %p.addr, align 8
  %aCoord14 = getelementptr inbounds %struct.RtreeCell, ptr %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord14, i64 0, i64 5
  %14 = load float, ptr %arrayidx15, align 4
  %15 = load ptr, ptr %p.addr, align 8
  %aCoord16 = getelementptr inbounds %struct.RtreeCell, ptr %15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord16, i64 0, i64 4
  %16 = load float, ptr %arrayidx17, align 8
  %sub18 = fsub float %14, %16
  %conv19 = fpext float %sub18 to double
  %17 = load double, ptr %area, align 8
  %mul20 = fmul double %17, %conv19
  store double %mul20, ptr %area, align 8
  br label %sw.bb21

sw.bb21:                                          ; preds = %if.then, %sw.bb13
  %18 = load ptr, ptr %p.addr, align 8
  %aCoord22 = getelementptr inbounds %struct.RtreeCell, ptr %18, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord22, i64 0, i64 3
  %19 = load float, ptr %arrayidx23, align 4
  %20 = load ptr, ptr %p.addr, align 8
  %aCoord24 = getelementptr inbounds %struct.RtreeCell, ptr %20, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord24, i64 0, i64 2
  %21 = load float, ptr %arrayidx25, align 8
  %sub26 = fsub float %19, %21
  %conv27 = fpext float %sub26 to double
  %22 = load double, ptr %area, align 8
  %mul28 = fmul double %22, %conv27
  store double %mul28, ptr %area, align 8
  br label %sw.default

sw.default:                                       ; preds = %if.then, %sw.bb21
  %23 = load ptr, ptr %p.addr, align 8
  %aCoord29 = getelementptr inbounds %struct.RtreeCell, ptr %23, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord29, i64 0, i64 1
  %24 = load float, ptr %arrayidx30, align 4
  %25 = load ptr, ptr %p.addr, align 8
  %aCoord31 = getelementptr inbounds %struct.RtreeCell, ptr %25, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord31, i64 0, i64 0
  %26 = load float, ptr %arrayidx32, align 8
  %sub33 = fsub float %24, %26
  %conv34 = fpext float %sub33 to double
  %27 = load double, ptr %area, align 8
  %mul35 = fmul double %27, %conv34
  store double %mul35, ptr %area, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load ptr, ptr %pRtree.addr, align 8
  %nDim36 = getelementptr inbounds %struct.Rtree, ptr %28, i32 0, i32 3
  %29 = load i8, ptr %nDim36, align 4
  %conv37 = zext i8 %29 to i32
  switch i32 %conv37, label %sw.default77 [
    i32 5, label %sw.bb38
    i32 4, label %sw.bb47
    i32 3, label %sw.bb57
    i32 2, label %sw.bb67
  ]

sw.bb38:                                          ; preds = %if.else
  %30 = load ptr, ptr %p.addr, align 8
  %aCoord39 = getelementptr inbounds %struct.RtreeCell, ptr %30, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord39, i64 0, i64 9
  %31 = load i32, ptr %arrayidx40, align 4
  %conv41 = sext i32 %31 to i64
  %32 = load ptr, ptr %p.addr, align 8
  %aCoord42 = getelementptr inbounds %struct.RtreeCell, ptr %32, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord42, i64 0, i64 8
  %33 = load i32, ptr %arrayidx43, align 8
  %conv44 = sext i32 %33 to i64
  %sub45 = sub nsw i64 %conv41, %conv44
  %conv46 = sitofp i64 %sub45 to double
  store double %conv46, ptr %area, align 8
  br label %sw.bb47

sw.bb47:                                          ; preds = %if.else, %sw.bb38
  %34 = load ptr, ptr %p.addr, align 8
  %aCoord48 = getelementptr inbounds %struct.RtreeCell, ptr %34, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord48, i64 0, i64 7
  %35 = load i32, ptr %arrayidx49, align 4
  %conv50 = sext i32 %35 to i64
  %36 = load ptr, ptr %p.addr, align 8
  %aCoord51 = getelementptr inbounds %struct.RtreeCell, ptr %36, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord51, i64 0, i64 6
  %37 = load i32, ptr %arrayidx52, align 8
  %conv53 = sext i32 %37 to i64
  %sub54 = sub nsw i64 %conv50, %conv53
  %conv55 = sitofp i64 %sub54 to double
  %38 = load double, ptr %area, align 8
  %mul56 = fmul double %38, %conv55
  store double %mul56, ptr %area, align 8
  br label %sw.bb57

sw.bb57:                                          ; preds = %if.else, %sw.bb47
  %39 = load ptr, ptr %p.addr, align 8
  %aCoord58 = getelementptr inbounds %struct.RtreeCell, ptr %39, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord58, i64 0, i64 5
  %40 = load i32, ptr %arrayidx59, align 4
  %conv60 = sext i32 %40 to i64
  %41 = load ptr, ptr %p.addr, align 8
  %aCoord61 = getelementptr inbounds %struct.RtreeCell, ptr %41, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord61, i64 0, i64 4
  %42 = load i32, ptr %arrayidx62, align 8
  %conv63 = sext i32 %42 to i64
  %sub64 = sub nsw i64 %conv60, %conv63
  %conv65 = sitofp i64 %sub64 to double
  %43 = load double, ptr %area, align 8
  %mul66 = fmul double %43, %conv65
  store double %mul66, ptr %area, align 8
  br label %sw.bb67

sw.bb67:                                          ; preds = %if.else, %sw.bb57
  %44 = load ptr, ptr %p.addr, align 8
  %aCoord68 = getelementptr inbounds %struct.RtreeCell, ptr %44, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord68, i64 0, i64 3
  %45 = load i32, ptr %arrayidx69, align 4
  %conv70 = sext i32 %45 to i64
  %46 = load ptr, ptr %p.addr, align 8
  %aCoord71 = getelementptr inbounds %struct.RtreeCell, ptr %46, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord71, i64 0, i64 2
  %47 = load i32, ptr %arrayidx72, align 8
  %conv73 = sext i32 %47 to i64
  %sub74 = sub nsw i64 %conv70, %conv73
  %conv75 = sitofp i64 %sub74 to double
  %48 = load double, ptr %area, align 8
  %mul76 = fmul double %48, %conv75
  store double %mul76, ptr %area, align 8
  br label %sw.default77

sw.default77:                                     ; preds = %if.else, %sw.bb67
  %49 = load ptr, ptr %p.addr, align 8
  %aCoord78 = getelementptr inbounds %struct.RtreeCell, ptr %49, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord78, i64 0, i64 1
  %50 = load i32, ptr %arrayidx79, align 4
  %conv80 = sext i32 %50 to i64
  %51 = load ptr, ptr %p.addr, align 8
  %aCoord81 = getelementptr inbounds %struct.RtreeCell, ptr %51, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord81, i64 0, i64 0
  %52 = load i32, ptr %arrayidx82, align 8
  %conv83 = sext i32 %52 to i64
  %sub84 = sub nsw i64 %conv80, %conv83
  %conv85 = sitofp i64 %sub84 to double
  %53 = load double, ptr %area, align 8
  %mul86 = fmul double %53, %conv85
  store double %mul86, ptr %area, align 8
  br label %sw.epilog87

sw.epilog87:                                      ; preds = %sw.default77
  br label %if.end

if.end:                                           ; preds = %sw.epilog87, %sw.epilog
  %54 = load double, ptr %area, align 8
  ret double %54
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nodeInsertCell(ptr noundef %pRtree, ptr noundef %pNode, ptr noundef %pCell) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %nCell = alloca i32, align 4
  %nMaxCell = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iNodeSize, align 8
  %sub = sub nsw i32 %1, 4
  %2 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 6
  %3 = load i8, ptr %nBytesPerCell, align 1
  %conv = zext i8 %3 to i32
  %div = sdiv i32 %sub, %conv
  store i32 %div, ptr %nMaxCell, align 4
  %4 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 2
  %call = call i32 @readInt16(ptr noundef %arrayidx)
  store i32 %call, ptr %nCell, align 4
  %6 = load i32, ptr %nCell, align 4
  %7 = load i32, ptr %nMaxCell, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pRtree.addr, align 8
  %9 = load ptr, ptr %pNode.addr, align 8
  %10 = load ptr, ptr %pCell.addr, align 8
  %11 = load i32, ptr %nCell, align 4
  call void @nodeOverwriteCell(ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11)
  %12 = load ptr, ptr %pNode.addr, align 8
  %zData2 = getelementptr inbounds %struct.RtreeNode, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %zData2, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %13, i64 2
  %14 = load i32, ptr %nCell, align 4
  %add = add nsw i32 %14, 1
  call void @writeInt16(ptr noundef %arrayidx3, i32 noundef %add)
  %15 = load ptr, ptr %pNode.addr, align 8
  %isDirty = getelementptr inbounds %struct.RtreeNode, ptr %15, i32 0, i32 3
  store i32 1, ptr %isDirty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, ptr %nCell, align 4
  %17 = load i32, ptr %nMaxCell, align 4
  %cmp4 = icmp eq i32 %16, %17
  %conv5 = zext i1 %cmp4 to i32
  ret i32 %conv5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @SplitNode(ptr noundef %pRtree, ptr noundef %pNode, ptr noundef %pCell, i32 noundef %iHeight) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %iHeight.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %newCellIsRight = alloca i32, align 4
  %rc = alloca i32, align 4
  %nCell = alloca i32, align 4
  %aCell = alloca ptr, align 8
  %aiUsed = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %leftbbox = alloca %struct.RtreeCell, align 8
  %rightbbox = alloca %struct.RtreeCell, align 8
  %pParent73 = alloca ptr, align 8
  %iCell = alloca i32, align 4
  %iRowid99 = alloca i64, align 8
  %iRowid125 = alloca i64, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store i32 %iHeight, ptr %iHeight.addr, align 4
  store i32 0, ptr %newCellIsRight, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 2
  %call = call i32 @readInt16(ptr noundef %arrayidx)
  store i32 %call, ptr %nCell, align 4
  store ptr null, ptr %pLeft, align 8
  store ptr null, ptr %pRight, align 8
  %2 = load i32, ptr %nCell, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 52, %conv
  %call1 = call ptr @sqlite3_malloc64(i64 noundef %mul)
  store ptr %call1, ptr %aCell, align 8
  %3 = load ptr, ptr %aCell, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %splitnode_out

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %aCell, align 8
  %5 = load i32, ptr %nCell, align 4
  %add2 = add nsw i32 %5, 1
  %idxprom = sext i32 %add2 to i64
  %arrayidx3 = getelementptr inbounds %struct.RtreeCell, ptr %4, i64 %idxprom
  store ptr %arrayidx3, ptr %aiUsed, align 8
  %6 = load ptr, ptr %aiUsed, align 8
  %7 = load i32, ptr %nCell, align 4
  %add4 = add nsw i32 %7, 1
  %conv5 = sext i32 %add4 to i64
  %mul6 = mul i64 4, %conv5
  %8 = load ptr, ptr %aiUsed, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %call7 = call ptr @__memset_chk(ptr noundef %6, i32 noundef 0, i64 noundef %mul6, i64 noundef %9) #7
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %nCell, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %pRtree.addr, align 8
  %13 = load ptr, ptr %pNode.addr, align 8
  %14 = load i32, ptr %i, align 4
  %15 = load ptr, ptr %aCell, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds %struct.RtreeCell, ptr %15, i64 %idxprom9
  call void @nodeGetCell(ptr noundef %12, ptr noundef %13, i32 noundef %14, ptr noundef %arrayidx10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %pRtree.addr, align 8
  %19 = load ptr, ptr %pNode.addr, align 8
  call void @nodeZero(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %aCell, align 8
  %21 = load i32, ptr %nCell, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds %struct.RtreeCell, ptr %20, i64 %idxprom11
  %22 = load ptr, ptr %pCell.addr, align 8
  %23 = load ptr, ptr %aCell, align 8
  %24 = load i32, ptr %nCell, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds %struct.RtreeCell, ptr %23, i64 %idxprom13
  %25 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx14, i1 false, i1 true, i1 false)
  %call15 = call ptr @__memcpy_chk(ptr noundef %arrayidx12, ptr noundef %22, i64 noundef 48, i64 noundef %25) #7
  %26 = load i32, ptr %nCell, align 4
  %inc16 = add nsw i32 %26, 1
  store i32 %inc16, ptr %nCell, align 4
  %27 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %iNode, align 8
  %cmp17 = icmp eq i64 %28, 1
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.end
  %29 = load ptr, ptr %pRtree.addr, align 8
  %30 = load ptr, ptr %pNode.addr, align 8
  %call20 = call ptr @nodeNew(ptr noundef %29, ptr noundef %30)
  store ptr %call20, ptr %pRight, align 8
  %31 = load ptr, ptr %pRtree.addr, align 8
  %32 = load ptr, ptr %pNode.addr, align 8
  %call21 = call ptr @nodeNew(ptr noundef %31, ptr noundef %32)
  store ptr %call21, ptr %pLeft, align 8
  %33 = load ptr, ptr %pRtree.addr, align 8
  %iDepth = getelementptr inbounds %struct.Rtree, ptr %33, i32 0, i32 9
  %34 = load i32, ptr %iDepth, align 4
  %inc22 = add nsw i32 %34, 1
  store i32 %inc22, ptr %iDepth, align 4
  %35 = load ptr, ptr %pNode.addr, align 8
  %isDirty = getelementptr inbounds %struct.RtreeNode, ptr %35, i32 0, i32 3
  store i32 1, ptr %isDirty, align 4
  %36 = load ptr, ptr %pNode.addr, align 8
  %zData23 = getelementptr inbounds %struct.RtreeNode, ptr %36, i32 0, i32 4
  %37 = load ptr, ptr %zData23, align 8
  %38 = load ptr, ptr %pRtree.addr, align 8
  %iDepth24 = getelementptr inbounds %struct.Rtree, ptr %38, i32 0, i32 9
  %39 = load i32, ptr %iDepth24, align 4
  call void @writeInt16(ptr noundef %37, i32 noundef %39)
  br label %if.end27

if.else:                                          ; preds = %for.end
  %40 = load ptr, ptr %pNode.addr, align 8
  store ptr %40, ptr %pLeft, align 8
  %41 = load ptr, ptr %pRtree.addr, align 8
  %42 = load ptr, ptr %pLeft, align 8
  %pParent = getelementptr inbounds %struct.RtreeNode, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %pParent, align 8
  %call25 = call ptr @nodeNew(ptr noundef %41, ptr noundef %43)
  store ptr %call25, ptr %pRight, align 8
  %44 = load ptr, ptr %pLeft, align 8
  %nRef = getelementptr inbounds %struct.RtreeNode, ptr %44, i32 0, i32 2
  %45 = load i32, ptr %nRef, align 8
  %inc26 = add nsw i32 %45, 1
  store i32 %inc26, ptr %nRef, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then19
  %46 = load ptr, ptr %pLeft, align 8
  %tobool28 = icmp ne ptr %46, null
  br i1 %tobool28, label %lor.lhs.false, label %if.then30

lor.lhs.false:                                    ; preds = %if.end27
  %47 = load ptr, ptr %pRight, align 8
  %tobool29 = icmp ne ptr %47, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false, %if.end27
  store i32 7, ptr %rc, align 4
  br label %splitnode_out

if.end31:                                         ; preds = %lor.lhs.false
  %48 = load ptr, ptr %pLeft, align 8
  %zData32 = getelementptr inbounds %struct.RtreeNode, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %zData32, align 8
  %50 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %iNodeSize, align 8
  %conv33 = sext i32 %51 to i64
  %52 = load ptr, ptr %pLeft, align 8
  %zData34 = getelementptr inbounds %struct.RtreeNode, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %zData34, align 8
  %54 = call i64 @llvm.objectsize.i64.p0(ptr %53, i1 false, i1 true, i1 false)
  %call35 = call ptr @__memset_chk(ptr noundef %49, i32 noundef 0, i64 noundef %conv33, i64 noundef %54) #7
  %55 = load ptr, ptr %pRight, align 8
  %zData36 = getelementptr inbounds %struct.RtreeNode, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %zData36, align 8
  %57 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize37 = getelementptr inbounds %struct.Rtree, ptr %57, i32 0, i32 2
  %58 = load i32, ptr %iNodeSize37, align 8
  %conv38 = sext i32 %58 to i64
  %59 = load ptr, ptr %pRight, align 8
  %zData39 = getelementptr inbounds %struct.RtreeNode, ptr %59, i32 0, i32 4
  %60 = load ptr, ptr %zData39, align 8
  %61 = call i64 @llvm.objectsize.i64.p0(ptr %60, i1 false, i1 true, i1 false)
  %call40 = call ptr @__memset_chk(ptr noundef %56, i32 noundef 0, i64 noundef %conv38, i64 noundef %61) #7
  %62 = load ptr, ptr %pRtree.addr, align 8
  %63 = load ptr, ptr %aCell, align 8
  %64 = load i32, ptr %nCell, align 4
  %65 = load ptr, ptr %pLeft, align 8
  %66 = load ptr, ptr %pRight, align 8
  %call41 = call i32 @splitNodeStartree(ptr noundef %62, ptr noundef %63, i32 noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %leftbbox, ptr noundef %rightbbox)
  store i32 %call41, ptr %rc, align 4
  %67 = load i32, ptr %rc, align 4
  %cmp42 = icmp ne i32 %67, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end31
  br label %splitnode_out

if.end45:                                         ; preds = %if.end31
  %68 = load ptr, ptr %pRtree.addr, align 8
  %69 = load ptr, ptr %pRight, align 8
  %call46 = call i32 @nodeWrite(ptr noundef %68, ptr noundef %69)
  store i32 %call46, ptr %rc, align 4
  %cmp47 = icmp ne i32 0, %call46
  br i1 %cmp47, label %if.then56, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end45
  %70 = load ptr, ptr %pLeft, align 8
  %iNode50 = getelementptr inbounds %struct.RtreeNode, ptr %70, i32 0, i32 1
  %71 = load i64, ptr %iNode50, align 8
  %cmp51 = icmp eq i64 0, %71
  br i1 %cmp51, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %lor.lhs.false49
  %72 = load ptr, ptr %pRtree.addr, align 8
  %73 = load ptr, ptr %pLeft, align 8
  %call53 = call i32 @nodeWrite(ptr noundef %72, ptr noundef %73)
  store i32 %call53, ptr %rc, align 4
  %cmp54 = icmp ne i32 0, %call53
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true, %if.end45
  br label %splitnode_out

if.end57:                                         ; preds = %land.lhs.true, %lor.lhs.false49
  %74 = load ptr, ptr %pRight, align 8
  %iNode58 = getelementptr inbounds %struct.RtreeNode, ptr %74, i32 0, i32 1
  %75 = load i64, ptr %iNode58, align 8
  %iRowid = getelementptr inbounds %struct.RtreeCell, ptr %rightbbox, i32 0, i32 0
  store i64 %75, ptr %iRowid, align 8
  %76 = load ptr, ptr %pLeft, align 8
  %iNode59 = getelementptr inbounds %struct.RtreeNode, ptr %76, i32 0, i32 1
  %77 = load i64, ptr %iNode59, align 8
  %iRowid60 = getelementptr inbounds %struct.RtreeCell, ptr %leftbbox, i32 0, i32 0
  store i64 %77, ptr %iRowid60, align 8
  %78 = load ptr, ptr %pNode.addr, align 8
  %iNode61 = getelementptr inbounds %struct.RtreeNode, ptr %78, i32 0, i32 1
  %79 = load i64, ptr %iNode61, align 8
  %cmp62 = icmp eq i64 %79, 1
  br i1 %cmp62, label %if.then64, label %if.else72

if.then64:                                        ; preds = %if.end57
  %80 = load ptr, ptr %pRtree.addr, align 8
  %81 = load ptr, ptr %pLeft, align 8
  %pParent65 = getelementptr inbounds %struct.RtreeNode, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %pParent65, align 8
  %83 = load i32, ptr %iHeight.addr, align 4
  %add66 = add nsw i32 %83, 1
  %call67 = call i32 @rtreeInsertCell(ptr noundef %80, ptr noundef %82, ptr noundef %leftbbox, i32 noundef %add66)
  store i32 %call67, ptr %rc, align 4
  %84 = load i32, ptr %rc, align 4
  %cmp68 = icmp ne i32 %84, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then64
  br label %splitnode_out

if.end71:                                         ; preds = %if.then64
  br label %if.end85

if.else72:                                        ; preds = %if.end57
  %85 = load ptr, ptr %pLeft, align 8
  %pParent74 = getelementptr inbounds %struct.RtreeNode, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %pParent74, align 8
  store ptr %86, ptr %pParent73, align 8
  %87 = load ptr, ptr %pRtree.addr, align 8
  %88 = load ptr, ptr %pLeft, align 8
  %call75 = call i32 @nodeParentIndex(ptr noundef %87, ptr noundef %88, ptr noundef %iCell)
  store i32 %call75, ptr %rc, align 4
  %89 = load i32, ptr %rc, align 4
  %cmp76 = icmp eq i32 %89, 0
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.else72
  %90 = load ptr, ptr %pRtree.addr, align 8
  %91 = load ptr, ptr %pParent73, align 8
  %92 = load i32, ptr %iCell, align 4
  call void @nodeOverwriteCell(ptr noundef %90, ptr noundef %91, ptr noundef %leftbbox, i32 noundef %92)
  %93 = load ptr, ptr %pRtree.addr, align 8
  %94 = load ptr, ptr %pParent73, align 8
  %call79 = call i32 @AdjustTree(ptr noundef %93, ptr noundef %94, ptr noundef %leftbbox)
  store i32 %call79, ptr %rc, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.else72
  %95 = load i32, ptr %rc, align 4
  %cmp81 = icmp ne i32 %95, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  br label %splitnode_out

if.end84:                                         ; preds = %if.end80
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end71
  %96 = load ptr, ptr %pRtree.addr, align 8
  %97 = load ptr, ptr %pRight, align 8
  %pParent86 = getelementptr inbounds %struct.RtreeNode, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %pParent86, align 8
  %99 = load i32, ptr %iHeight.addr, align 4
  %add87 = add nsw i32 %99, 1
  %call88 = call i32 @rtreeInsertCell(ptr noundef %96, ptr noundef %98, ptr noundef %rightbbox, i32 noundef %add87)
  store i32 %call88, ptr %rc, align 4
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end85
  br label %splitnode_out

if.end91:                                         ; preds = %if.end85
  store i32 0, ptr %i, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc111, %if.end91
  %100 = load i32, ptr %i, align 4
  %101 = load ptr, ptr %pRight, align 8
  %zData93 = getelementptr inbounds %struct.RtreeNode, ptr %101, i32 0, i32 4
  %102 = load ptr, ptr %zData93, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %102, i64 2
  %call95 = call i32 @readInt16(ptr noundef %arrayidx94)
  %cmp96 = icmp slt i32 %100, %call95
  br i1 %cmp96, label %for.body98, label %for.end113

for.body98:                                       ; preds = %for.cond92
  %103 = load ptr, ptr %pRtree.addr, align 8
  %104 = load ptr, ptr %pRight, align 8
  %105 = load i32, ptr %i, align 4
  %call100 = call i64 @nodeGetRowid(ptr noundef %103, ptr noundef %104, i32 noundef %105)
  store i64 %call100, ptr %iRowid99, align 8
  %106 = load ptr, ptr %pRtree.addr, align 8
  %107 = load i64, ptr %iRowid99, align 8
  %108 = load ptr, ptr %pRight, align 8
  %109 = load i32, ptr %iHeight.addr, align 4
  %call101 = call i32 @updateMapping(ptr noundef %106, i64 noundef %107, ptr noundef %108, i32 noundef %109)
  store i32 %call101, ptr %rc, align 4
  %110 = load i64, ptr %iRowid99, align 8
  %111 = load ptr, ptr %pCell.addr, align 8
  %iRowid102 = getelementptr inbounds %struct.RtreeCell, ptr %111, i32 0, i32 0
  %112 = load i64, ptr %iRowid102, align 8
  %cmp103 = icmp eq i64 %110, %112
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %for.body98
  store i32 1, ptr %newCellIsRight, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %for.body98
  %113 = load i32, ptr %rc, align 4
  %cmp107 = icmp ne i32 %113, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end106
  br label %splitnode_out

if.end110:                                        ; preds = %if.end106
  br label %for.inc111

for.inc111:                                       ; preds = %if.end110
  %114 = load i32, ptr %i, align 4
  %inc112 = add nsw i32 %114, 1
  store i32 %inc112, ptr %i, align 4
  br label %for.cond92, !llvm.loop !52

for.end113:                                       ; preds = %for.cond92
  %115 = load ptr, ptr %pNode.addr, align 8
  %iNode114 = getelementptr inbounds %struct.RtreeNode, ptr %115, i32 0, i32 1
  %116 = load i64, ptr %iNode114, align 8
  %cmp115 = icmp eq i64 %116, 1
  br i1 %cmp115, label %if.then117, label %if.else135

if.then117:                                       ; preds = %for.end113
  store i32 0, ptr %i, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc132, %if.then117
  %117 = load i32, ptr %i, align 4
  %118 = load ptr, ptr %pLeft, align 8
  %zData119 = getelementptr inbounds %struct.RtreeNode, ptr %118, i32 0, i32 4
  %119 = load ptr, ptr %zData119, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %119, i64 2
  %call121 = call i32 @readInt16(ptr noundef %arrayidx120)
  %cmp122 = icmp slt i32 %117, %call121
  br i1 %cmp122, label %for.body124, label %for.end134

for.body124:                                      ; preds = %for.cond118
  %120 = load ptr, ptr %pRtree.addr, align 8
  %121 = load ptr, ptr %pLeft, align 8
  %122 = load i32, ptr %i, align 4
  %call126 = call i64 @nodeGetRowid(ptr noundef %120, ptr noundef %121, i32 noundef %122)
  store i64 %call126, ptr %iRowid125, align 8
  %123 = load ptr, ptr %pRtree.addr, align 8
  %124 = load i64, ptr %iRowid125, align 8
  %125 = load ptr, ptr %pLeft, align 8
  %126 = load i32, ptr %iHeight.addr, align 4
  %call127 = call i32 @updateMapping(ptr noundef %123, i64 noundef %124, ptr noundef %125, i32 noundef %126)
  store i32 %call127, ptr %rc, align 4
  %127 = load i32, ptr %rc, align 4
  %cmp128 = icmp ne i32 %127, 0
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %for.body124
  br label %splitnode_out

if.end131:                                        ; preds = %for.body124
  br label %for.inc132

for.inc132:                                       ; preds = %if.end131
  %128 = load i32, ptr %i, align 4
  %inc133 = add nsw i32 %128, 1
  store i32 %inc133, ptr %i, align 4
  br label %for.cond118, !llvm.loop !53

for.end134:                                       ; preds = %for.cond118
  br label %if.end142

if.else135:                                       ; preds = %for.end113
  %129 = load i32, ptr %newCellIsRight, align 4
  %cmp136 = icmp eq i32 %129, 0
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.else135
  %130 = load ptr, ptr %pRtree.addr, align 8
  %131 = load ptr, ptr %pCell.addr, align 8
  %iRowid139 = getelementptr inbounds %struct.RtreeCell, ptr %131, i32 0, i32 0
  %132 = load i64, ptr %iRowid139, align 8
  %133 = load ptr, ptr %pLeft, align 8
  %134 = load i32, ptr %iHeight.addr, align 4
  %call140 = call i32 @updateMapping(ptr noundef %130, i64 noundef %132, ptr noundef %133, i32 noundef %134)
  store i32 %call140, ptr %rc, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.else135
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %for.end134
  br label %splitnode_out

splitnode_out:                                    ; preds = %if.end142, %if.then130, %if.then109, %if.then90, %if.then83, %if.then70, %if.then56, %if.then44, %if.then30, %if.then
  %135 = load ptr, ptr %pRtree.addr, align 8
  %136 = load ptr, ptr %pRight, align 8
  %call143 = call i32 @nodeRelease(ptr noundef %135, ptr noundef %136)
  %137 = load ptr, ptr %pRtree.addr, align 8
  %138 = load ptr, ptr %pLeft, align 8
  %call144 = call i32 @nodeRelease(ptr noundef %137, ptr noundef %138)
  %139 = load ptr, ptr %aCell, align 8
  call void @sqlite3_free(ptr noundef %139)
  %140 = load i32, ptr %rc, align 4
  ret i32 %140
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @AdjustTree(ptr noundef %pRtree, ptr noundef %pNode, ptr noundef %pCell) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cnt = alloca i32, align 4
  %rc = alloca i32, align 4
  %pParent1 = alloca ptr, align 8
  %cell = alloca %struct.RtreeCell, align 8
  %iCell = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  store ptr %0, ptr %p, align 8
  store i32 0, ptr %cnt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %1 = load ptr, ptr %p, align 8
  %pParent = getelementptr inbounds %struct.RtreeNode, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8
  %pParent2 = getelementptr inbounds %struct.RtreeNode, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pParent2, align 8
  store ptr %4, ptr %pParent1, align 8
  %5 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %cnt, align 4
  %6 = load i32, ptr %cnt, align 4
  %cmp = icmp sgt i32 %6, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 267, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %pRtree.addr, align 8
  %8 = load ptr, ptr %p, align 8
  %call = call i32 @nodeParentIndex(ptr noundef %7, ptr noundef %8, ptr noundef %iCell)
  store i32 %call, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 267, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %pRtree.addr, align 8
  %11 = load ptr, ptr %pParent1, align 8
  %12 = load i32, ptr %iCell, align 4
  call void @nodeGetCell(ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %cell)
  %13 = load ptr, ptr %pRtree.addr, align 8
  %14 = load ptr, ptr %pCell.addr, align 8
  %call6 = call i32 @cellContains(ptr noundef %13, ptr noundef %cell, ptr noundef %14)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  %15 = load ptr, ptr %pRtree.addr, align 8
  %16 = load ptr, ptr %pCell.addr, align 8
  call void @cellUnion(ptr noundef %15, ptr noundef %cell, ptr noundef %16)
  %17 = load ptr, ptr %pRtree.addr, align 8
  %18 = load ptr, ptr %pParent1, align 8
  %19 = load i32, ptr %iCell, align 4
  call void @nodeOverwriteCell(ptr noundef %17, ptr noundef %18, ptr noundef %cell, i32 noundef %19)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %20 = load ptr, ptr %pParent1, align 8
  store ptr %20, ptr %p, align 8
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then4, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @rowidWrite(ptr noundef %pRtree, i64 noundef %iRowid, i64 noundef %iNode) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %iRowid.addr = alloca i64, align 8
  %iNode.addr = alloca i64, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store i64 %iRowid, ptr %iRowid.addr, align 8
  store i64 %iNode, ptr %iNode.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 23
  %1 = load ptr, ptr %pWriteRowid, align 8
  %2 = load i64, ptr %iRowid.addr, align 8
  %call = call i32 @sqlite3_bind_int64(ptr noundef %1, i32 noundef 1, i64 noundef %2)
  %3 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid1 = getelementptr inbounds %struct.Rtree, ptr %3, i32 0, i32 23
  %4 = load ptr, ptr %pWriteRowid1, align 8
  %5 = load i64, ptr %iNode.addr, align 8
  %call2 = call i32 @sqlite3_bind_int64(ptr noundef %4, i32 noundef 2, i64 noundef %5)
  %6 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid3 = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 23
  %7 = load ptr, ptr %pWriteRowid3, align 8
  %call4 = call i32 @sqlite3_step(ptr noundef %7)
  %8 = load ptr, ptr %pRtree.addr, align 8
  %pWriteRowid5 = getelementptr inbounds %struct.Rtree, ptr %8, i32 0, i32 23
  %9 = load ptr, ptr %pWriteRowid5, align 8
  %call6 = call i32 @sqlite3_reset(ptr noundef %9)
  ret i32 %call6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parentWrite(ptr noundef %pRtree, i64 noundef %iNode, i64 noundef %iPar) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %iNode.addr = alloca i64, align 8
  %iPar.addr = alloca i64, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store i64 %iNode, ptr %iNode.addr, align 8
  store i64 %iPar, ptr %iPar.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %pWriteParent = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 26
  %1 = load ptr, ptr %pWriteParent, align 8
  %2 = load i64, ptr %iNode.addr, align 8
  %call = call i32 @sqlite3_bind_int64(ptr noundef %1, i32 noundef 1, i64 noundef %2)
  %3 = load ptr, ptr %pRtree.addr, align 8
  %pWriteParent1 = getelementptr inbounds %struct.Rtree, ptr %3, i32 0, i32 26
  %4 = load ptr, ptr %pWriteParent1, align 8
  %5 = load i64, ptr %iPar.addr, align 8
  %call2 = call i32 @sqlite3_bind_int64(ptr noundef %4, i32 noundef 2, i64 noundef %5)
  %6 = load ptr, ptr %pRtree.addr, align 8
  %pWriteParent3 = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 26
  %7 = load ptr, ptr %pWriteParent3, align 8
  %call4 = call i32 @sqlite3_step(ptr noundef %7)
  %8 = load ptr, ptr %pRtree.addr, align 8
  %pWriteParent5 = getelementptr inbounds %struct.Rtree, ptr %8, i32 0, i32 26
  %9 = load ptr, ptr %pWriteParent5, align 8
  %call6 = call i32 @sqlite3_reset(ptr noundef %9)
  ret i32 %call6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nodeZero(ptr noundef %pRtree, ptr noundef %p) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %zData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 2
  %2 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iNodeSize, align 8
  %sub = sub nsw i32 %3, 2
  %conv = sext i32 %sub to i64
  %4 = load ptr, ptr %p.addr, align 8
  %zData1 = getelementptr inbounds %struct.RtreeNode, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %zData1, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx2, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %arrayidx, i32 noundef 0, i64 noundef %conv, i64 noundef %6) #7
  %7 = load ptr, ptr %p.addr, align 8
  %isDirty = getelementptr inbounds %struct.RtreeNode, ptr %7, i32 0, i32 3
  store i32 1, ptr %isDirty, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @nodeNew(ptr noundef %pRtree, ptr noundef %pParent) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %pParent.addr = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %pParent, ptr %pParent.addr, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iNodeSize, align 8
  %conv = sext i32 %1 to i64
  %add = add i64 40, %conv
  %call = call ptr @sqlite3_malloc64(i64 noundef %add)
  store ptr %call, ptr %pNode, align 8
  %2 = load ptr, ptr %pNode, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pNode, align 8
  %4 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize1 = getelementptr inbounds %struct.Rtree, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iNodeSize1, align 8
  %conv2 = sext i32 %5 to i64
  %add3 = add i64 40, %conv2
  %6 = load ptr, ptr %pNode, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memset_chk(ptr noundef %3, i32 noundef 0, i64 noundef %add3, i64 noundef %7) #7
  %8 = load ptr, ptr %pNode, align 8
  %arrayidx = getelementptr inbounds %struct.RtreeNode, ptr %8, i64 1
  %9 = load ptr, ptr %pNode, align 8
  %zData = getelementptr inbounds %struct.RtreeNode, ptr %9, i32 0, i32 4
  store ptr %arrayidx, ptr %zData, align 8
  %10 = load ptr, ptr %pNode, align 8
  %nRef = getelementptr inbounds %struct.RtreeNode, ptr %10, i32 0, i32 2
  store i32 1, ptr %nRef, align 8
  %11 = load ptr, ptr %pRtree.addr, align 8
  %nNodeRef = getelementptr inbounds %struct.Rtree, ptr %11, i32 0, i32 16
  %12 = load i32, ptr %nNodeRef, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %nNodeRef, align 4
  %13 = load ptr, ptr %pParent.addr, align 8
  %14 = load ptr, ptr %pNode, align 8
  %pParent5 = getelementptr inbounds %struct.RtreeNode, ptr %14, i32 0, i32 0
  store ptr %13, ptr %pParent5, align 8
  %15 = load ptr, ptr %pNode, align 8
  %isDirty = getelementptr inbounds %struct.RtreeNode, ptr %15, i32 0, i32 3
  store i32 1, ptr %isDirty, align 4
  %16 = load ptr, ptr %pParent.addr, align 8
  call void @nodeReference(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %pNode, align 8
  ret ptr %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @splitNodeStartree(ptr noundef %pRtree, ptr noundef %aCell, i32 noundef %nCell, ptr noundef %pLeft, ptr noundef %pRight, ptr noundef %pBboxLeft, ptr noundef %pBboxRight) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %aCell.addr = alloca ptr, align 8
  %nCell.addr = alloca i32, align 4
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %pBboxLeft.addr = alloca ptr, align 8
  %pBboxRight.addr = alloca ptr, align 8
  %aaSorted = alloca ptr, align 8
  %aSpare = alloca ptr, align 8
  %ii = alloca i32, align 4
  %iBestDim = alloca i32, align 4
  %iBestSplit = alloca i32, align 4
  %fBestMargin = alloca double, align 8
  %nByte = alloca i64, align 8
  %jj = alloca i32, align 4
  %margin = alloca double, align 8
  %fBestOverlap = alloca double, align 8
  %fBestArea = alloca double, align 8
  %iBestLeft = alloca i32, align 4
  %nLeft = alloca i32, align 4
  %left = alloca %struct.RtreeCell, align 8
  %right = alloca %struct.RtreeCell, align 8
  %kk = alloca i32, align 4
  %overlap = alloca double, align 8
  %area = alloca double, align 8
  %pTarget = alloca ptr, align 8
  %pBbox = alloca ptr, align 8
  %pCell = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %aCell, ptr %aCell.addr, align 8
  store i32 %nCell, ptr %nCell.addr, align 4
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  store ptr %pBboxLeft, ptr %pBboxLeft.addr, align 8
  store ptr %pBboxRight, ptr %pBboxRight.addr, align 8
  store i32 0, ptr %iBestDim, align 4
  store i32 0, ptr %iBestSplit, align 4
  store double 0.000000e+00, ptr %fBestMargin, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %nDim = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 3
  %1 = load i8, ptr %nDim, align 4
  %conv = zext i8 %1 to i32
  %add = add nsw i32 %conv, 1
  %conv1 = sext i32 %add to i64
  %2 = load i32, ptr %nCell.addr, align 4
  %conv2 = sext i32 %2 to i64
  %mul = mul i64 %conv2, 4
  %add3 = add i64 8, %mul
  %mul4 = mul i64 %conv1, %add3
  store i64 %mul4, ptr %nByte, align 8
  %3 = load i64, ptr %nByte, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef %3)
  store ptr %call, ptr %aaSorted, align 8
  %4 = load ptr, ptr %aaSorted, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %aaSorted, align 8
  %6 = load ptr, ptr %pRtree.addr, align 8
  %nDim5 = getelementptr inbounds %struct.Rtree, ptr %6, i32 0, i32 3
  %7 = load i8, ptr %nDim5, align 4
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %8 = load ptr, ptr %pRtree.addr, align 8
  %nDim6 = getelementptr inbounds %struct.Rtree, ptr %8, i32 0, i32 3
  %9 = load i8, ptr %nDim6, align 4
  %conv7 = zext i8 %9 to i32
  %10 = load i32, ptr %nCell.addr, align 4
  %mul8 = mul nsw i32 %conv7, %10
  %idxprom9 = sext i32 %mul8 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom9
  store ptr %arrayidx10, ptr %aSpare, align 8
  %11 = load ptr, ptr %aaSorted, align 8
  %12 = load i64, ptr %nByte, align 8
  %13 = load ptr, ptr %aaSorted, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memset_chk(ptr noundef %11, i32 noundef 0, i64 noundef %12, i64 noundef %14) #7
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %if.end
  %15 = load i32, ptr %ii, align 4
  %16 = load ptr, ptr %pRtree.addr, align 8
  %nDim12 = getelementptr inbounds %struct.Rtree, ptr %16, i32 0, i32 3
  %17 = load i8, ptr %nDim12, align 4
  %conv13 = zext i8 %17 to i32
  %cmp = icmp slt i32 %15, %conv13
  br i1 %cmp, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %aaSorted, align 8
  %19 = load ptr, ptr %pRtree.addr, align 8
  %nDim15 = getelementptr inbounds %struct.Rtree, ptr %19, i32 0, i32 3
  %20 = load i8, ptr %nDim15, align 4
  %idxprom16 = zext i8 %20 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %18, i64 %idxprom16
  %21 = load i32, ptr %ii, align 4
  %22 = load i32, ptr %nCell.addr, align 4
  %mul18 = mul nsw i32 %21, %22
  %idxprom19 = sext i32 %mul18 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %arrayidx17, i64 %idxprom19
  %23 = load ptr, ptr %aaSorted, align 8
  %24 = load i32, ptr %ii, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %23, i64 %idxprom21
  store ptr %arrayidx20, ptr %arrayidx22, align 8
  store i32 0, ptr %jj, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %for.body
  %25 = load i32, ptr %jj, align 4
  %26 = load i32, ptr %nCell.addr, align 4
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond23
  %27 = load i32, ptr %jj, align 4
  %28 = load ptr, ptr %aaSorted, align 8
  %29 = load i32, ptr %ii, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %28, i64 %idxprom27
  %30 = load ptr, ptr %arrayidx28, align 8
  %31 = load i32, ptr %jj, align 4
  %idxprom29 = sext i32 %31 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %30, i64 %idxprom29
  store i32 %27, ptr %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body26
  %32 = load i32, ptr %jj, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %jj, align 4
  br label %for.cond23, !llvm.loop !55

for.end:                                          ; preds = %for.cond23
  %33 = load ptr, ptr %pRtree.addr, align 8
  %34 = load ptr, ptr %aaSorted, align 8
  %35 = load i32, ptr %ii, align 4
  %idxprom31 = sext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %34, i64 %idxprom31
  %36 = load ptr, ptr %arrayidx32, align 8
  %37 = load i32, ptr %nCell.addr, align 4
  %38 = load i32, ptr %ii, align 4
  %39 = load ptr, ptr %aCell.addr, align 8
  %40 = load ptr, ptr %aSpare, align 8
  call void @SortByDimension(ptr noundef %33, ptr noundef %36, i32 noundef %37, i32 noundef %38, ptr noundef %39, ptr noundef %40)
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %41 = load i32, ptr %ii, align 4
  %inc34 = add nsw i32 %41, 1
  store i32 %inc34, ptr %ii, align 4
  br label %for.cond, !llvm.loop !56

for.end35:                                        ; preds = %for.cond
  store i32 0, ptr %ii, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc126, %for.end35
  %42 = load i32, ptr %ii, align 4
  %43 = load ptr, ptr %pRtree.addr, align 8
  %nDim37 = getelementptr inbounds %struct.Rtree, ptr %43, i32 0, i32 3
  %44 = load i8, ptr %nDim37, align 4
  %conv38 = zext i8 %44 to i32
  %cmp39 = icmp slt i32 %42, %conv38
  br i1 %cmp39, label %for.body41, label %for.end128

for.body41:                                       ; preds = %for.cond36
  store double 0.000000e+00, ptr %margin, align 8
  store double 0.000000e+00, ptr %fBestOverlap, align 8
  store double 0.000000e+00, ptr %fBestArea, align 8
  store i32 0, ptr %iBestLeft, align 4
  %45 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize = getelementptr inbounds %struct.Rtree, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %iNodeSize, align 8
  %sub = sub nsw i32 %46, 4
  %47 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell = getelementptr inbounds %struct.Rtree, ptr %47, i32 0, i32 6
  %48 = load i8, ptr %nBytesPerCell, align 1
  %conv42 = zext i8 %48 to i32
  %div = sdiv i32 %sub, %conv42
  %div43 = sdiv i32 %div, 3
  store i32 %div43, ptr %nLeft, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc116, %for.body41
  %49 = load i32, ptr %nLeft, align 4
  %50 = load i32, ptr %nCell.addr, align 4
  %51 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize45 = getelementptr inbounds %struct.Rtree, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %iNodeSize45, align 8
  %sub46 = sub nsw i32 %52, 4
  %53 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell47 = getelementptr inbounds %struct.Rtree, ptr %53, i32 0, i32 6
  %54 = load i8, ptr %nBytesPerCell47, align 1
  %conv48 = zext i8 %54 to i32
  %div49 = sdiv i32 %sub46, %conv48
  %div50 = sdiv i32 %div49, 3
  %sub51 = sub nsw i32 %50, %div50
  %cmp52 = icmp sle i32 %49, %sub51
  br i1 %cmp52, label %for.body54, label %for.end118

for.body54:                                       ; preds = %for.cond44
  %55 = load ptr, ptr %aCell.addr, align 8
  %56 = load ptr, ptr %aaSorted, align 8
  %57 = load i32, ptr %ii, align 4
  %idxprom55 = sext i32 %57 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %56, i64 %idxprom55
  %58 = load ptr, ptr %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %58, i64 0
  %59 = load i32, ptr %arrayidx57, align 4
  %idxprom58 = sext i32 %59 to i64
  %arrayidx59 = getelementptr inbounds %struct.RtreeCell, ptr %55, i64 %idxprom58
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %left, ptr align 8 %arrayidx59, i64 48, i1 false)
  %60 = load ptr, ptr %aCell.addr, align 8
  %61 = load ptr, ptr %aaSorted, align 8
  %62 = load i32, ptr %ii, align 4
  %idxprom60 = sext i32 %62 to i64
  %arrayidx61 = getelementptr inbounds ptr, ptr %61, i64 %idxprom60
  %63 = load ptr, ptr %arrayidx61, align 8
  %64 = load i32, ptr %nCell.addr, align 4
  %sub62 = sub nsw i32 %64, 1
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %63, i64 %idxprom63
  %65 = load i32, ptr %arrayidx64, align 4
  %idxprom65 = sext i32 %65 to i64
  %arrayidx66 = getelementptr inbounds %struct.RtreeCell, ptr %60, i64 %idxprom65
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %right, ptr align 8 %arrayidx66, i64 48, i1 false)
  store i32 1, ptr %kk, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc88, %for.body54
  %66 = load i32, ptr %kk, align 4
  %67 = load i32, ptr %nCell.addr, align 4
  %sub68 = sub nsw i32 %67, 1
  %cmp69 = icmp slt i32 %66, %sub68
  br i1 %cmp69, label %for.body71, label %for.end90

for.body71:                                       ; preds = %for.cond67
  %68 = load i32, ptr %kk, align 4
  %69 = load i32, ptr %nLeft, align 4
  %cmp72 = icmp slt i32 %68, %69
  br i1 %cmp72, label %if.then74, label %if.else

if.then74:                                        ; preds = %for.body71
  %70 = load ptr, ptr %pRtree.addr, align 8
  %71 = load ptr, ptr %aCell.addr, align 8
  %72 = load ptr, ptr %aaSorted, align 8
  %73 = load i32, ptr %ii, align 4
  %idxprom75 = sext i32 %73 to i64
  %arrayidx76 = getelementptr inbounds ptr, ptr %72, i64 %idxprom75
  %74 = load ptr, ptr %arrayidx76, align 8
  %75 = load i32, ptr %kk, align 4
  %idxprom77 = sext i32 %75 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %74, i64 %idxprom77
  %76 = load i32, ptr %arrayidx78, align 4
  %idxprom79 = sext i32 %76 to i64
  %arrayidx80 = getelementptr inbounds %struct.RtreeCell, ptr %71, i64 %idxprom79
  call void @cellUnion(ptr noundef %70, ptr noundef %left, ptr noundef %arrayidx80)
  br label %if.end87

if.else:                                          ; preds = %for.body71
  %77 = load ptr, ptr %pRtree.addr, align 8
  %78 = load ptr, ptr %aCell.addr, align 8
  %79 = load ptr, ptr %aaSorted, align 8
  %80 = load i32, ptr %ii, align 4
  %idxprom81 = sext i32 %80 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %79, i64 %idxprom81
  %81 = load ptr, ptr %arrayidx82, align 8
  %82 = load i32, ptr %kk, align 4
  %idxprom83 = sext i32 %82 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %81, i64 %idxprom83
  %83 = load i32, ptr %arrayidx84, align 4
  %idxprom85 = sext i32 %83 to i64
  %arrayidx86 = getelementptr inbounds %struct.RtreeCell, ptr %78, i64 %idxprom85
  call void @cellUnion(ptr noundef %77, ptr noundef %right, ptr noundef %arrayidx86)
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then74
  br label %for.inc88

for.inc88:                                        ; preds = %if.end87
  %84 = load i32, ptr %kk, align 4
  %inc89 = add nsw i32 %84, 1
  store i32 %inc89, ptr %kk, align 4
  br label %for.cond67, !llvm.loop !57

for.end90:                                        ; preds = %for.cond67
  %85 = load ptr, ptr %pRtree.addr, align 8
  %call91 = call double @cellMargin(ptr noundef %85, ptr noundef %left)
  %86 = load double, ptr %margin, align 8
  %add92 = fadd double %86, %call91
  store double %add92, ptr %margin, align 8
  %87 = load ptr, ptr %pRtree.addr, align 8
  %call93 = call double @cellMargin(ptr noundef %87, ptr noundef %right)
  %88 = load double, ptr %margin, align 8
  %add94 = fadd double %88, %call93
  store double %add94, ptr %margin, align 8
  %89 = load ptr, ptr %pRtree.addr, align 8
  %call95 = call double @cellOverlap(ptr noundef %89, ptr noundef %left, ptr noundef %right, i32 noundef 1)
  store double %call95, ptr %overlap, align 8
  %90 = load ptr, ptr %pRtree.addr, align 8
  %call96 = call double @cellArea(ptr noundef %90, ptr noundef %left)
  %91 = load ptr, ptr %pRtree.addr, align 8
  %call97 = call double @cellArea(ptr noundef %91, ptr noundef %right)
  %add98 = fadd double %call96, %call97
  store double %add98, ptr %area, align 8
  %92 = load i32, ptr %nLeft, align 4
  %93 = load ptr, ptr %pRtree.addr, align 8
  %iNodeSize99 = getelementptr inbounds %struct.Rtree, ptr %93, i32 0, i32 2
  %94 = load i32, ptr %iNodeSize99, align 8
  %sub100 = sub nsw i32 %94, 4
  %95 = load ptr, ptr %pRtree.addr, align 8
  %nBytesPerCell101 = getelementptr inbounds %struct.Rtree, ptr %95, i32 0, i32 6
  %96 = load i8, ptr %nBytesPerCell101, align 1
  %conv102 = zext i8 %96 to i32
  %div103 = sdiv i32 %sub100, %conv102
  %div104 = sdiv i32 %div103, 3
  %cmp105 = icmp eq i32 %92, %div104
  br i1 %cmp105, label %if.then114, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end90
  %97 = load double, ptr %overlap, align 8
  %98 = load double, ptr %fBestOverlap, align 8
  %cmp107 = fcmp olt double %97, %98
  br i1 %cmp107, label %if.then114, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false
  %99 = load double, ptr %overlap, align 8
  %100 = load double, ptr %fBestOverlap, align 8
  %cmp110 = fcmp oeq double %99, %100
  br i1 %cmp110, label %land.lhs.true, label %if.end115

land.lhs.true:                                    ; preds = %lor.lhs.false109
  %101 = load double, ptr %area, align 8
  %102 = load double, ptr %fBestArea, align 8
  %cmp112 = fcmp olt double %101, %102
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %land.lhs.true, %lor.lhs.false, %for.end90
  %103 = load i32, ptr %nLeft, align 4
  store i32 %103, ptr %iBestLeft, align 4
  %104 = load double, ptr %overlap, align 8
  store double %104, ptr %fBestOverlap, align 8
  %105 = load double, ptr %area, align 8
  store double %105, ptr %fBestArea, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %land.lhs.true, %lor.lhs.false109
  br label %for.inc116

for.inc116:                                       ; preds = %if.end115
  %106 = load i32, ptr %nLeft, align 4
  %inc117 = add nsw i32 %106, 1
  store i32 %inc117, ptr %nLeft, align 4
  br label %for.cond44, !llvm.loop !58

for.end118:                                       ; preds = %for.cond44
  %107 = load i32, ptr %ii, align 4
  %cmp119 = icmp eq i32 %107, 0
  br i1 %cmp119, label %if.then124, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %for.end118
  %108 = load double, ptr %margin, align 8
  %109 = load double, ptr %fBestMargin, align 8
  %cmp122 = fcmp olt double %108, %109
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %lor.lhs.false121, %for.end118
  %110 = load i32, ptr %ii, align 4
  store i32 %110, ptr %iBestDim, align 4
  %111 = load double, ptr %margin, align 8
  store double %111, ptr %fBestMargin, align 8
  %112 = load i32, ptr %iBestLeft, align 4
  store i32 %112, ptr %iBestSplit, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %lor.lhs.false121
  br label %for.inc126

for.inc126:                                       ; preds = %if.end125
  %113 = load i32, ptr %ii, align 4
  %inc127 = add nsw i32 %113, 1
  store i32 %inc127, ptr %ii, align 4
  br label %for.cond36, !llvm.loop !59

for.end128:                                       ; preds = %for.cond36
  %114 = load ptr, ptr %pBboxLeft.addr, align 8
  %115 = load ptr, ptr %aCell.addr, align 8
  %116 = load ptr, ptr %aaSorted, align 8
  %117 = load i32, ptr %iBestDim, align 4
  %idxprom129 = sext i32 %117 to i64
  %arrayidx130 = getelementptr inbounds ptr, ptr %116, i64 %idxprom129
  %118 = load ptr, ptr %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %118, i64 0
  %119 = load i32, ptr %arrayidx131, align 4
  %idxprom132 = sext i32 %119 to i64
  %arrayidx133 = getelementptr inbounds %struct.RtreeCell, ptr %115, i64 %idxprom132
  %120 = load ptr, ptr %pBboxLeft.addr, align 8
  %121 = call i64 @llvm.objectsize.i64.p0(ptr %120, i1 false, i1 true, i1 false)
  %call134 = call ptr @__memcpy_chk(ptr noundef %114, ptr noundef %arrayidx133, i64 noundef 48, i64 noundef %121) #7
  %122 = load ptr, ptr %pBboxRight.addr, align 8
  %123 = load ptr, ptr %aCell.addr, align 8
  %124 = load ptr, ptr %aaSorted, align 8
  %125 = load i32, ptr %iBestDim, align 4
  %idxprom135 = sext i32 %125 to i64
  %arrayidx136 = getelementptr inbounds ptr, ptr %124, i64 %idxprom135
  %126 = load ptr, ptr %arrayidx136, align 8
  %127 = load i32, ptr %iBestSplit, align 4
  %idxprom137 = sext i32 %127 to i64
  %arrayidx138 = getelementptr inbounds i32, ptr %126, i64 %idxprom137
  %128 = load i32, ptr %arrayidx138, align 4
  %idxprom139 = sext i32 %128 to i64
  %arrayidx140 = getelementptr inbounds %struct.RtreeCell, ptr %123, i64 %idxprom139
  %129 = load ptr, ptr %pBboxRight.addr, align 8
  %130 = call i64 @llvm.objectsize.i64.p0(ptr %129, i1 false, i1 true, i1 false)
  %call141 = call ptr @__memcpy_chk(ptr noundef %122, ptr noundef %arrayidx140, i64 noundef 48, i64 noundef %130) #7
  store i32 0, ptr %ii, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc161, %for.end128
  %131 = load i32, ptr %ii, align 4
  %132 = load i32, ptr %nCell.addr, align 4
  %cmp143 = icmp slt i32 %131, %132
  br i1 %cmp143, label %for.body145, label %for.end163

for.body145:                                      ; preds = %for.cond142
  %133 = load i32, ptr %ii, align 4
  %134 = load i32, ptr %iBestSplit, align 4
  %cmp146 = icmp slt i32 %133, %134
  br i1 %cmp146, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body145
  %135 = load ptr, ptr %pLeft.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body145
  %136 = load ptr, ptr %pRight.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %135, %cond.true ], [ %136, %cond.false ]
  store ptr %cond, ptr %pTarget, align 8
  %137 = load i32, ptr %ii, align 4
  %138 = load i32, ptr %iBestSplit, align 4
  %cmp148 = icmp slt i32 %137, %138
  br i1 %cmp148, label %cond.true150, label %cond.false151

cond.true150:                                     ; preds = %cond.end
  %139 = load ptr, ptr %pBboxLeft.addr, align 8
  br label %cond.end152

cond.false151:                                    ; preds = %cond.end
  %140 = load ptr, ptr %pBboxRight.addr, align 8
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false151, %cond.true150
  %cond153 = phi ptr [ %139, %cond.true150 ], [ %140, %cond.false151 ]
  store ptr %cond153, ptr %pBbox, align 8
  %141 = load ptr, ptr %aCell.addr, align 8
  %142 = load ptr, ptr %aaSorted, align 8
  %143 = load i32, ptr %iBestDim, align 4
  %idxprom154 = sext i32 %143 to i64
  %arrayidx155 = getelementptr inbounds ptr, ptr %142, i64 %idxprom154
  %144 = load ptr, ptr %arrayidx155, align 8
  %145 = load i32, ptr %ii, align 4
  %idxprom156 = sext i32 %145 to i64
  %arrayidx157 = getelementptr inbounds i32, ptr %144, i64 %idxprom156
  %146 = load i32, ptr %arrayidx157, align 4
  %idxprom158 = sext i32 %146 to i64
  %arrayidx159 = getelementptr inbounds %struct.RtreeCell, ptr %141, i64 %idxprom158
  store ptr %arrayidx159, ptr %pCell, align 8
  %147 = load ptr, ptr %pRtree.addr, align 8
  %148 = load ptr, ptr %pTarget, align 8
  %149 = load ptr, ptr %pCell, align 8
  %call160 = call i32 @nodeInsertCell(ptr noundef %147, ptr noundef %148, ptr noundef %149)
  %150 = load ptr, ptr %pRtree.addr, align 8
  %151 = load ptr, ptr %pBbox, align 8
  %152 = load ptr, ptr %pCell, align 8
  call void @cellUnion(ptr noundef %150, ptr noundef %151, ptr noundef %152)
  br label %for.inc161

for.inc161:                                       ; preds = %cond.end152
  %153 = load i32, ptr %ii, align 4
  %inc162 = add nsw i32 %153, 1
  store i32 %inc162, ptr %ii, align 4
  br label %for.cond142, !llvm.loop !60

for.end163:                                       ; preds = %for.cond142
  %154 = load ptr, ptr %aaSorted, align 8
  call void @sqlite3_free(ptr noundef %154)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end163, %if.then
  %155 = load i32, ptr %retval, align 4
  ret i32 %155
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @updateMapping(ptr noundef %pRtree, i64 noundef %iRowid, ptr noundef %pNode, i32 noundef %iHeight) #0 {
entry:
  %retval = alloca i32, align 4
  %pRtree.addr = alloca ptr, align 8
  %iRowid.addr = alloca i64, align 8
  %pNode.addr = alloca ptr, align 8
  %iHeight.addr = alloca i32, align 4
  %xSetMapping = alloca ptr, align 8
  %pChild = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store i64 %iRowid, ptr %iRowid.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %iHeight, ptr %iHeight.addr, align 4
  %0 = load i32, ptr %iHeight.addr, align 4
  %cmp = icmp eq i32 %0, 0
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @rowidWrite, ptr @parentWrite
  store ptr %cond, ptr %xSetMapping, align 8
  %2 = load i32, ptr %iHeight.addr, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pRtree.addr, align 8
  %4 = load i64, ptr %iRowid.addr, align 8
  %call = call ptr @nodeHashLookup(ptr noundef %3, i64 noundef %4)
  store ptr %call, ptr %pChild, align 8
  %5 = load ptr, ptr %pNode.addr, align 8
  store ptr %5, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr %pChild, align 8
  %cmp2 = icmp eq ptr %7, %8
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  store i32 267, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %p, align 8
  %pParent = getelementptr inbounds %struct.RtreeNode, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pParent, align 8
  store ptr %10, ptr %p, align 8
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %pChild, align 8
  %tobool4 = icmp ne ptr %11, null
  br i1 %tobool4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.end
  %12 = load ptr, ptr %pRtree.addr, align 8
  %13 = load ptr, ptr %pChild, align 8
  %pParent6 = getelementptr inbounds %struct.RtreeNode, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pParent6, align 8
  %call7 = call i32 @nodeRelease(ptr noundef %12, ptr noundef %14)
  %15 = load ptr, ptr %pNode.addr, align 8
  call void @nodeReference(ptr noundef %15)
  %16 = load ptr, ptr %pNode.addr, align 8
  %17 = load ptr, ptr %pChild, align 8
  %pParent8 = getelementptr inbounds %struct.RtreeNode, ptr %17, i32 0, i32 0
  store ptr %16, ptr %pParent8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %18 = load ptr, ptr %pNode.addr, align 8
  %cmp11 = icmp eq ptr %18, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end10
  %19 = load ptr, ptr %xSetMapping, align 8
  %20 = load ptr, ptr %pRtree.addr, align 8
  %21 = load i64, ptr %iRowid.addr, align 8
  %22 = load ptr, ptr %pNode.addr, align 8
  %iNode = getelementptr inbounds %struct.RtreeNode, ptr %22, i32 0, i32 1
  %23 = load i64, ptr %iNode, align 8
  %call14 = call i32 %19(ptr noundef %20, i64 noundef %21, i64 noundef %23)
  store i32 %call14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then3
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @SortByDimension(ptr noundef %pRtree, ptr noundef %aIdx, i32 noundef %nIdx, i32 noundef %iDim, ptr noundef %aCell, ptr noundef %aSpare) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %aIdx.addr = alloca ptr, align 8
  %nIdx.addr = alloca i32, align 4
  %iDim.addr = alloca i32, align 4
  %aCell.addr = alloca ptr, align 8
  %aSpare.addr = alloca ptr, align 8
  %iLeft = alloca i32, align 4
  %iRight = alloca i32, align 4
  %nLeft = alloca i32, align 4
  %nRight = alloca i32, align 4
  %aLeft = alloca ptr, align 8
  %aRight = alloca ptr, align 8
  %xleft1 = alloca double, align 8
  %xleft2 = alloca double, align 8
  %xright1 = alloca double, align 8
  %xright2 = alloca double, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %aIdx, ptr %aIdx.addr, align 8
  store i32 %nIdx, ptr %nIdx.addr, align 4
  store i32 %iDim, ptr %iDim.addr, align 4
  store ptr %aCell, ptr %aCell.addr, align 8
  store ptr %aSpare, ptr %aSpare.addr, align 8
  %0 = load i32, ptr %nIdx.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end130

if.then:                                          ; preds = %entry
  store i32 0, ptr %iLeft, align 4
  store i32 0, ptr %iRight, align 4
  %1 = load i32, ptr %nIdx.addr, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, ptr %nLeft, align 4
  %2 = load i32, ptr %nIdx.addr, align 4
  %3 = load i32, ptr %nLeft, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, ptr %nRight, align 4
  %4 = load ptr, ptr %aIdx.addr, align 8
  store ptr %4, ptr %aLeft, align 8
  %5 = load ptr, ptr %aIdx.addr, align 8
  %6 = load i32, ptr %nLeft, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %aRight, align 8
  %7 = load ptr, ptr %pRtree.addr, align 8
  %8 = load ptr, ptr %aLeft, align 8
  %9 = load i32, ptr %nLeft, align 4
  %10 = load i32, ptr %iDim.addr, align 4
  %11 = load ptr, ptr %aCell.addr, align 8
  %12 = load ptr, ptr %aSpare.addr, align 8
  call void @SortByDimension(ptr noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %pRtree.addr, align 8
  %14 = load ptr, ptr %aRight, align 8
  %15 = load i32, ptr %nRight, align 4
  %16 = load i32, ptr %iDim.addr, align 4
  %17 = load ptr, ptr %aCell.addr, align 8
  %18 = load ptr, ptr %aSpare.addr, align 8
  call void @SortByDimension(ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %aSpare.addr, align 8
  %20 = load ptr, ptr %aLeft, align 8
  %21 = load i32, ptr %nLeft, align 4
  %conv = sext i32 %21 to i64
  %mul = mul i64 4, %conv
  %22 = load ptr, ptr %aSpare.addr, align 8
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %19, ptr noundef %20, i64 noundef %mul, i64 noundef %23) #7
  %24 = load ptr, ptr %aSpare.addr, align 8
  store ptr %24, ptr %aLeft, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %25 = load i32, ptr %iLeft, align 4
  %26 = load i32, ptr %nLeft, align 4
  %cmp1 = icmp slt i32 %25, %26
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %27 = load i32, ptr %iRight, align 4
  %28 = load i32, ptr %nRight, align 4
  %cmp3 = icmp slt i32 %27, %28
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %29 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %30 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType = getelementptr inbounds %struct.Rtree, ptr %30, i32 0, i32 5
  %31 = load i8, ptr %eCoordType, align 2
  %conv5 = zext i8 %31 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %32 = load ptr, ptr %aCell.addr, align 8
  %33 = load ptr, ptr %aLeft, align 8
  %34 = load i32, ptr %iLeft, align 4
  %idxprom8 = sext i32 %34 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %33, i64 %idxprom8
  %35 = load i32, ptr %arrayidx9, align 4
  %idxprom10 = sext i32 %35 to i64
  %arrayidx11 = getelementptr inbounds %struct.RtreeCell, ptr %32, i64 %idxprom10
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx11, i32 0, i32 1
  %36 = load i32, ptr %iDim.addr, align 4
  %mul12 = mul nsw i32 %36, 2
  %idxprom13 = sext i32 %mul12 to i64
  %arrayidx14 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 %idxprom13
  %37 = load float, ptr %arrayidx14, align 4
  %conv15 = fpext float %37 to double
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %38 = load ptr, ptr %aCell.addr, align 8
  %39 = load ptr, ptr %aLeft, align 8
  %40 = load i32, ptr %iLeft, align 4
  %idxprom16 = sext i32 %40 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %39, i64 %idxprom16
  %41 = load i32, ptr %arrayidx17, align 4
  %idxprom18 = sext i32 %41 to i64
  %arrayidx19 = getelementptr inbounds %struct.RtreeCell, ptr %38, i64 %idxprom18
  %aCoord20 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx19, i32 0, i32 1
  %42 = load i32, ptr %iDim.addr, align 4
  %mul21 = mul nsw i32 %42, 2
  %idxprom22 = sext i32 %mul21 to i64
  %arrayidx23 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord20, i64 0, i64 %idxprom22
  %43 = load i32, ptr %arrayidx23, align 4
  %conv24 = sitofp i32 %43 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv15, %cond.true ], [ %conv24, %cond.false ]
  store double %cond, ptr %xleft1, align 8
  %44 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType25 = getelementptr inbounds %struct.Rtree, ptr %44, i32 0, i32 5
  %45 = load i8, ptr %eCoordType25, align 2
  %conv26 = zext i8 %45 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %cond.true29, label %cond.false39

cond.true29:                                      ; preds = %cond.end
  %46 = load ptr, ptr %aCell.addr, align 8
  %47 = load ptr, ptr %aLeft, align 8
  %48 = load i32, ptr %iLeft, align 4
  %idxprom30 = sext i32 %48 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %47, i64 %idxprom30
  %49 = load i32, ptr %arrayidx31, align 4
  %idxprom32 = sext i32 %49 to i64
  %arrayidx33 = getelementptr inbounds %struct.RtreeCell, ptr %46, i64 %idxprom32
  %aCoord34 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx33, i32 0, i32 1
  %50 = load i32, ptr %iDim.addr, align 4
  %mul35 = mul nsw i32 %50, 2
  %add = add nsw i32 %mul35, 1
  %idxprom36 = sext i32 %add to i64
  %arrayidx37 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord34, i64 0, i64 %idxprom36
  %51 = load float, ptr %arrayidx37, align 4
  %conv38 = fpext float %51 to double
  br label %cond.end50

cond.false39:                                     ; preds = %cond.end
  %52 = load ptr, ptr %aCell.addr, align 8
  %53 = load ptr, ptr %aLeft, align 8
  %54 = load i32, ptr %iLeft, align 4
  %idxprom40 = sext i32 %54 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %53, i64 %idxprom40
  %55 = load i32, ptr %arrayidx41, align 4
  %idxprom42 = sext i32 %55 to i64
  %arrayidx43 = getelementptr inbounds %struct.RtreeCell, ptr %52, i64 %idxprom42
  %aCoord44 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx43, i32 0, i32 1
  %56 = load i32, ptr %iDim.addr, align 4
  %mul45 = mul nsw i32 %56, 2
  %add46 = add nsw i32 %mul45, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord44, i64 0, i64 %idxprom47
  %57 = load i32, ptr %arrayidx48, align 4
  %conv49 = sitofp i32 %57 to double
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false39, %cond.true29
  %cond51 = phi double [ %conv38, %cond.true29 ], [ %conv49, %cond.false39 ]
  store double %cond51, ptr %xleft2, align 8
  %58 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType52 = getelementptr inbounds %struct.Rtree, ptr %58, i32 0, i32 5
  %59 = load i8, ptr %eCoordType52, align 2
  %conv53 = zext i8 %59 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %cond.true56, label %cond.false66

cond.true56:                                      ; preds = %cond.end50
  %60 = load ptr, ptr %aCell.addr, align 8
  %61 = load ptr, ptr %aRight, align 8
  %62 = load i32, ptr %iRight, align 4
  %idxprom57 = sext i32 %62 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %61, i64 %idxprom57
  %63 = load i32, ptr %arrayidx58, align 4
  %idxprom59 = sext i32 %63 to i64
  %arrayidx60 = getelementptr inbounds %struct.RtreeCell, ptr %60, i64 %idxprom59
  %aCoord61 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx60, i32 0, i32 1
  %64 = load i32, ptr %iDim.addr, align 4
  %mul62 = mul nsw i32 %64, 2
  %idxprom63 = sext i32 %mul62 to i64
  %arrayidx64 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord61, i64 0, i64 %idxprom63
  %65 = load float, ptr %arrayidx64, align 4
  %conv65 = fpext float %65 to double
  br label %cond.end76

cond.false66:                                     ; preds = %cond.end50
  %66 = load ptr, ptr %aCell.addr, align 8
  %67 = load ptr, ptr %aRight, align 8
  %68 = load i32, ptr %iRight, align 4
  %idxprom67 = sext i32 %68 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %67, i64 %idxprom67
  %69 = load i32, ptr %arrayidx68, align 4
  %idxprom69 = sext i32 %69 to i64
  %arrayidx70 = getelementptr inbounds %struct.RtreeCell, ptr %66, i64 %idxprom69
  %aCoord71 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx70, i32 0, i32 1
  %70 = load i32, ptr %iDim.addr, align 4
  %mul72 = mul nsw i32 %70, 2
  %idxprom73 = sext i32 %mul72 to i64
  %arrayidx74 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord71, i64 0, i64 %idxprom73
  %71 = load i32, ptr %arrayidx74, align 4
  %conv75 = sitofp i32 %71 to double
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false66, %cond.true56
  %cond77 = phi double [ %conv65, %cond.true56 ], [ %conv75, %cond.false66 ]
  store double %cond77, ptr %xright1, align 8
  %72 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType78 = getelementptr inbounds %struct.Rtree, ptr %72, i32 0, i32 5
  %73 = load i8, ptr %eCoordType78, align 2
  %conv79 = zext i8 %73 to i32
  %cmp80 = icmp eq i32 %conv79, 0
  br i1 %cmp80, label %cond.true82, label %cond.false93

cond.true82:                                      ; preds = %cond.end76
  %74 = load ptr, ptr %aCell.addr, align 8
  %75 = load ptr, ptr %aRight, align 8
  %76 = load i32, ptr %iRight, align 4
  %idxprom83 = sext i32 %76 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %75, i64 %idxprom83
  %77 = load i32, ptr %arrayidx84, align 4
  %idxprom85 = sext i32 %77 to i64
  %arrayidx86 = getelementptr inbounds %struct.RtreeCell, ptr %74, i64 %idxprom85
  %aCoord87 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx86, i32 0, i32 1
  %78 = load i32, ptr %iDim.addr, align 4
  %mul88 = mul nsw i32 %78, 2
  %add89 = add nsw i32 %mul88, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord87, i64 0, i64 %idxprom90
  %79 = load float, ptr %arrayidx91, align 4
  %conv92 = fpext float %79 to double
  br label %cond.end104

cond.false93:                                     ; preds = %cond.end76
  %80 = load ptr, ptr %aCell.addr, align 8
  %81 = load ptr, ptr %aRight, align 8
  %82 = load i32, ptr %iRight, align 4
  %idxprom94 = sext i32 %82 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %81, i64 %idxprom94
  %83 = load i32, ptr %arrayidx95, align 4
  %idxprom96 = sext i32 %83 to i64
  %arrayidx97 = getelementptr inbounds %struct.RtreeCell, ptr %80, i64 %idxprom96
  %aCoord98 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx97, i32 0, i32 1
  %84 = load i32, ptr %iDim.addr, align 4
  %mul99 = mul nsw i32 %84, 2
  %add100 = add nsw i32 %mul99, 1
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord98, i64 0, i64 %idxprom101
  %85 = load i32, ptr %arrayidx102, align 4
  %conv103 = sitofp i32 %85 to double
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false93, %cond.true82
  %cond105 = phi double [ %conv92, %cond.true82 ], [ %conv103, %cond.false93 ]
  store double %cond105, ptr %xright2, align 8
  %86 = load i32, ptr %iLeft, align 4
  %87 = load i32, ptr %nLeft, align 4
  %cmp106 = icmp ne i32 %86, %87
  br i1 %cmp106, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end104
  %88 = load i32, ptr %iRight, align 4
  %89 = load i32, ptr %nRight, align 4
  %cmp108 = icmp eq i32 %88, %89
  br i1 %cmp108, label %if.then118, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %90 = load double, ptr %xleft1, align 8
  %91 = load double, ptr %xright1, align 8
  %cmp110 = fcmp olt double %90, %91
  br i1 %cmp110, label %if.then118, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false
  %92 = load double, ptr %xleft1, align 8
  %93 = load double, ptr %xright1, align 8
  %cmp113 = fcmp oeq double %92, %93
  br i1 %cmp113, label %land.lhs.true115, label %if.else

land.lhs.true115:                                 ; preds = %lor.lhs.false112
  %94 = load double, ptr %xleft2, align 8
  %95 = load double, ptr %xright2, align 8
  %cmp116 = fcmp olt double %94, %95
  br i1 %cmp116, label %if.then118, label %if.else

if.then118:                                       ; preds = %land.lhs.true115, %lor.lhs.false, %land.lhs.true
  %96 = load ptr, ptr %aLeft, align 8
  %97 = load i32, ptr %iLeft, align 4
  %idxprom119 = sext i32 %97 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %96, i64 %idxprom119
  %98 = load i32, ptr %arrayidx120, align 4
  %99 = load ptr, ptr %aIdx.addr, align 8
  %100 = load i32, ptr %iLeft, align 4
  %101 = load i32, ptr %iRight, align 4
  %add121 = add nsw i32 %100, %101
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %99, i64 %idxprom122
  store i32 %98, ptr %arrayidx123, align 4
  %102 = load i32, ptr %iLeft, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, ptr %iLeft, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true115, %lor.lhs.false112, %cond.end104
  %103 = load ptr, ptr %aRight, align 8
  %104 = load i32, ptr %iRight, align 4
  %idxprom124 = sext i32 %104 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %103, i64 %idxprom124
  %105 = load i32, ptr %arrayidx125, align 4
  %106 = load ptr, ptr %aIdx.addr, align 8
  %107 = load i32, ptr %iLeft, align 4
  %108 = load i32, ptr %iRight, align 4
  %add126 = add nsw i32 %107, %108
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %106, i64 %idxprom127
  store i32 %105, ptr %arrayidx128, align 4
  %109 = load i32, ptr %iRight, align 4
  %inc129 = add nsw i32 %109, 1
  store i32 %inc129, ptr %iRight, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then118
  br label %while.cond, !llvm.loop !62

while.end:                                        ; preds = %lor.end
  br label %if.end130

if.end130:                                        ; preds = %while.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal double @cellMargin(ptr noundef %pRtree, ptr noundef %p) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %margin = alloca double, align 8
  %ii = alloca i32, align 4
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store double 0.000000e+00, ptr %margin, align 8
  %0 = load ptr, ptr %pRtree.addr, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %0, i32 0, i32 4
  %1 = load i8, ptr %nDim2, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, 2
  store i32 %sub, ptr %ii, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType = getelementptr inbounds %struct.Rtree, ptr %2, i32 0, i32 5
  %3 = load i8, ptr %eCoordType, align 2
  %conv1 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %4 = load ptr, ptr %p.addr, align 8
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %ii, align 4
  %add = add nsw i32 %5, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 %idxprom
  %6 = load float, ptr %arrayidx, align 4
  %conv3 = fpext float %6 to double
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %7 = load ptr, ptr %p.addr, align 8
  %aCoord4 = getelementptr inbounds %struct.RtreeCell, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %ii, align 4
  %add5 = add nsw i32 %8, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord4, i64 0, i64 %idxprom6
  %9 = load i32, ptr %arrayidx7, align 4
  %conv8 = sitofp i32 %9 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv3, %cond.true ], [ %conv8, %cond.false ]
  %10 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType9 = getelementptr inbounds %struct.Rtree, ptr %10, i32 0, i32 5
  %11 = load i8, ptr %eCoordType9, align 2
  %conv10 = zext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %cond.true13, label %cond.false18

cond.true13:                                      ; preds = %cond.end
  %12 = load ptr, ptr %p.addr, align 8
  %aCoord14 = getelementptr inbounds %struct.RtreeCell, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %ii, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord14, i64 0, i64 %idxprom15
  %14 = load float, ptr %arrayidx16, align 4
  %conv17 = fpext float %14 to double
  br label %cond.end23

cond.false18:                                     ; preds = %cond.end
  %15 = load ptr, ptr %p.addr, align 8
  %aCoord19 = getelementptr inbounds %struct.RtreeCell, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %ii, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord19, i64 0, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4
  %conv22 = sitofp i32 %17 to double
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false18, %cond.true13
  %cond24 = phi double [ %conv17, %cond.true13 ], [ %conv22, %cond.false18 ]
  %sub25 = fsub double %cond, %cond24
  %18 = load double, ptr %margin, align 8
  %add26 = fadd double %18, %sub25
  store double %add26, ptr %margin, align 8
  %19 = load i32, ptr %ii, align 4
  %sub27 = sub nsw i32 %19, 2
  store i32 %sub27, ptr %ii, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end23
  %20 = load i32, ptr %ii, align 4
  %cmp28 = icmp sge i32 %20, 0
  br i1 %cmp28, label %do.body, label %do.end, !llvm.loop !63

do.end:                                           ; preds = %do.cond
  %21 = load double, ptr %margin, align 8
  ret double %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal double @cellOverlap(ptr noundef %pRtree, ptr noundef %p, ptr noundef %aCell, i32 noundef %nCell) #0 {
entry:
  %pRtree.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %aCell.addr = alloca ptr, align 8
  %nCell.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %overlap = alloca double, align 8
  %jj = alloca i32, align 4
  %o = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  store ptr %pRtree, ptr %pRtree.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %aCell, ptr %aCell.addr, align 8
  store i32 %nCell, ptr %nCell.addr, align 4
  store double 0.000000e+00, ptr %overlap, align 8
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc164, %entry
  %0 = load i32, ptr %ii, align 4
  %1 = load i32, ptr %nCell.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end165

for.body:                                         ; preds = %for.cond
  store double 1.000000e+00, ptr %o, align 8
  store i32 0, ptr %jj, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %jj, align 4
  %3 = load ptr, ptr %pRtree.addr, align 8
  %nDim2 = getelementptr inbounds %struct.Rtree, ptr %3, i32 0, i32 4
  %4 = load i8, ptr %nDim2, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp slt i32 %2, %conv
  br i1 %cmp2, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType = getelementptr inbounds %struct.Rtree, ptr %5, i32 0, i32 5
  %6 = load i8, ptr %eCoordType, align 2
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body4
  %7 = load ptr, ptr %p.addr, align 8
  %aCoord = getelementptr inbounds %struct.RtreeCell, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %jj, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord, i64 0, i64 %idxprom
  %9 = load float, ptr %arrayidx, align 4
  %conv8 = fpext float %9 to double
  br label %cond.end

cond.false:                                       ; preds = %for.body4
  %10 = load ptr, ptr %p.addr, align 8
  %aCoord9 = getelementptr inbounds %struct.RtreeCell, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %jj, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord9, i64 0, i64 %idxprom10
  %12 = load i32, ptr %arrayidx11, align 4
  %conv12 = sitofp i32 %12 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv8, %cond.true ], [ %conv12, %cond.false ]
  %13 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType13 = getelementptr inbounds %struct.Rtree, ptr %13, i32 0, i32 5
  %14 = load i8, ptr %eCoordType13, align 2
  %conv14 = zext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %cond.true17, label %cond.false24

cond.true17:                                      ; preds = %cond.end
  %15 = load ptr, ptr %aCell.addr, align 8
  %16 = load i32, ptr %ii, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds %struct.RtreeCell, ptr %15, i64 %idxprom18
  %aCoord20 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx19, i32 0, i32 1
  %17 = load i32, ptr %jj, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord20, i64 0, i64 %idxprom21
  %18 = load float, ptr %arrayidx22, align 4
  %conv23 = fpext float %18 to double
  br label %cond.end31

cond.false24:                                     ; preds = %cond.end
  %19 = load ptr, ptr %aCell.addr, align 8
  %20 = load i32, ptr %ii, align 4
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds %struct.RtreeCell, ptr %19, i64 %idxprom25
  %aCoord27 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx26, i32 0, i32 1
  %21 = load i32, ptr %jj, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord27, i64 0, i64 %idxprom28
  %22 = load i32, ptr %arrayidx29, align 4
  %conv30 = sitofp i32 %22 to double
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false24, %cond.true17
  %cond32 = phi double [ %conv23, %cond.true17 ], [ %conv30, %cond.false24 ]
  %cmp33 = fcmp olt double %cond, %cond32
  br i1 %cmp33, label %cond.true35, label %cond.false56

cond.true35:                                      ; preds = %cond.end31
  %23 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType36 = getelementptr inbounds %struct.Rtree, ptr %23, i32 0, i32 5
  %24 = load i8, ptr %eCoordType36, align 2
  %conv37 = zext i8 %24 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %cond.true40, label %cond.false47

cond.true40:                                      ; preds = %cond.true35
  %25 = load ptr, ptr %aCell.addr, align 8
  %26 = load i32, ptr %ii, align 4
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds %struct.RtreeCell, ptr %25, i64 %idxprom41
  %aCoord43 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx42, i32 0, i32 1
  %27 = load i32, ptr %jj, align 4
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord43, i64 0, i64 %idxprom44
  %28 = load float, ptr %arrayidx45, align 4
  %conv46 = fpext float %28 to double
  br label %cond.end54

cond.false47:                                     ; preds = %cond.true35
  %29 = load ptr, ptr %aCell.addr, align 8
  %30 = load i32, ptr %ii, align 4
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds %struct.RtreeCell, ptr %29, i64 %idxprom48
  %aCoord50 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx49, i32 0, i32 1
  %31 = load i32, ptr %jj, align 4
  %idxprom51 = sext i32 %31 to i64
  %arrayidx52 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord50, i64 0, i64 %idxprom51
  %32 = load i32, ptr %arrayidx52, align 4
  %conv53 = sitofp i32 %32 to double
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true40
  %cond55 = phi double [ %conv46, %cond.true40 ], [ %conv53, %cond.false47 ]
  br label %cond.end73

cond.false56:                                     ; preds = %cond.end31
  %33 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType57 = getelementptr inbounds %struct.Rtree, ptr %33, i32 0, i32 5
  %34 = load i8, ptr %eCoordType57, align 2
  %conv58 = zext i8 %34 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %cond.true61, label %cond.false66

cond.true61:                                      ; preds = %cond.false56
  %35 = load ptr, ptr %p.addr, align 8
  %aCoord62 = getelementptr inbounds %struct.RtreeCell, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %jj, align 4
  %idxprom63 = sext i32 %36 to i64
  %arrayidx64 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord62, i64 0, i64 %idxprom63
  %37 = load float, ptr %arrayidx64, align 4
  %conv65 = fpext float %37 to double
  br label %cond.end71

cond.false66:                                     ; preds = %cond.false56
  %38 = load ptr, ptr %p.addr, align 8
  %aCoord67 = getelementptr inbounds %struct.RtreeCell, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %jj, align 4
  %idxprom68 = sext i32 %39 to i64
  %arrayidx69 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord67, i64 0, i64 %idxprom68
  %40 = load i32, ptr %arrayidx69, align 4
  %conv70 = sitofp i32 %40 to double
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false66, %cond.true61
  %cond72 = phi double [ %conv65, %cond.true61 ], [ %conv70, %cond.false66 ]
  br label %cond.end73

cond.end73:                                       ; preds = %cond.end71, %cond.end54
  %cond74 = phi double [ %cond55, %cond.end54 ], [ %cond72, %cond.end71 ]
  store double %cond74, ptr %x1, align 8
  %41 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType75 = getelementptr inbounds %struct.Rtree, ptr %41, i32 0, i32 5
  %42 = load i8, ptr %eCoordType75, align 2
  %conv76 = zext i8 %42 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %cond.true79, label %cond.false84

cond.true79:                                      ; preds = %cond.end73
  %43 = load ptr, ptr %p.addr, align 8
  %aCoord80 = getelementptr inbounds %struct.RtreeCell, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %jj, align 4
  %add = add nsw i32 %44, 1
  %idxprom81 = sext i32 %add to i64
  %arrayidx82 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord80, i64 0, i64 %idxprom81
  %45 = load float, ptr %arrayidx82, align 4
  %conv83 = fpext float %45 to double
  br label %cond.end90

cond.false84:                                     ; preds = %cond.end73
  %46 = load ptr, ptr %p.addr, align 8
  %aCoord85 = getelementptr inbounds %struct.RtreeCell, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %jj, align 4
  %add86 = add nsw i32 %47, 1
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord85, i64 0, i64 %idxprom87
  %48 = load i32, ptr %arrayidx88, align 4
  %conv89 = sitofp i32 %48 to double
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false84, %cond.true79
  %cond91 = phi double [ %conv83, %cond.true79 ], [ %conv89, %cond.false84 ]
  %49 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType92 = getelementptr inbounds %struct.Rtree, ptr %49, i32 0, i32 5
  %50 = load i8, ptr %eCoordType92, align 2
  %conv93 = zext i8 %50 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  br i1 %cmp94, label %cond.true96, label %cond.false104

cond.true96:                                      ; preds = %cond.end90
  %51 = load ptr, ptr %aCell.addr, align 8
  %52 = load i32, ptr %ii, align 4
  %idxprom97 = sext i32 %52 to i64
  %arrayidx98 = getelementptr inbounds %struct.RtreeCell, ptr %51, i64 %idxprom97
  %aCoord99 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx98, i32 0, i32 1
  %53 = load i32, ptr %jj, align 4
  %add100 = add nsw i32 %53, 1
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord99, i64 0, i64 %idxprom101
  %54 = load float, ptr %arrayidx102, align 4
  %conv103 = fpext float %54 to double
  br label %cond.end112

cond.false104:                                    ; preds = %cond.end90
  %55 = load ptr, ptr %aCell.addr, align 8
  %56 = load i32, ptr %ii, align 4
  %idxprom105 = sext i32 %56 to i64
  %arrayidx106 = getelementptr inbounds %struct.RtreeCell, ptr %55, i64 %idxprom105
  %aCoord107 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx106, i32 0, i32 1
  %57 = load i32, ptr %jj, align 4
  %add108 = add nsw i32 %57, 1
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord107, i64 0, i64 %idxprom109
  %58 = load i32, ptr %arrayidx110, align 4
  %conv111 = sitofp i32 %58 to double
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false104, %cond.true96
  %cond113 = phi double [ %conv103, %cond.true96 ], [ %conv111, %cond.false104 ]
  %cmp114 = fcmp ogt double %cond91, %cond113
  br i1 %cmp114, label %cond.true116, label %cond.false139

cond.true116:                                     ; preds = %cond.end112
  %59 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType117 = getelementptr inbounds %struct.Rtree, ptr %59, i32 0, i32 5
  %60 = load i8, ptr %eCoordType117, align 2
  %conv118 = zext i8 %60 to i32
  %cmp119 = icmp eq i32 %conv118, 0
  br i1 %cmp119, label %cond.true121, label %cond.false129

cond.true121:                                     ; preds = %cond.true116
  %61 = load ptr, ptr %aCell.addr, align 8
  %62 = load i32, ptr %ii, align 4
  %idxprom122 = sext i32 %62 to i64
  %arrayidx123 = getelementptr inbounds %struct.RtreeCell, ptr %61, i64 %idxprom122
  %aCoord124 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx123, i32 0, i32 1
  %63 = load i32, ptr %jj, align 4
  %add125 = add nsw i32 %63, 1
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord124, i64 0, i64 %idxprom126
  %64 = load float, ptr %arrayidx127, align 4
  %conv128 = fpext float %64 to double
  br label %cond.end137

cond.false129:                                    ; preds = %cond.true116
  %65 = load ptr, ptr %aCell.addr, align 8
  %66 = load i32, ptr %ii, align 4
  %idxprom130 = sext i32 %66 to i64
  %arrayidx131 = getelementptr inbounds %struct.RtreeCell, ptr %65, i64 %idxprom130
  %aCoord132 = getelementptr inbounds %struct.RtreeCell, ptr %arrayidx131, i32 0, i32 1
  %67 = load i32, ptr %jj, align 4
  %add133 = add nsw i32 %67, 1
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord132, i64 0, i64 %idxprom134
  %68 = load i32, ptr %arrayidx135, align 4
  %conv136 = sitofp i32 %68 to double
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false129, %cond.true121
  %cond138 = phi double [ %conv128, %cond.true121 ], [ %conv136, %cond.false129 ]
  br label %cond.end158

cond.false139:                                    ; preds = %cond.end112
  %69 = load ptr, ptr %pRtree.addr, align 8
  %eCoordType140 = getelementptr inbounds %struct.Rtree, ptr %69, i32 0, i32 5
  %70 = load i8, ptr %eCoordType140, align 2
  %conv141 = zext i8 %70 to i32
  %cmp142 = icmp eq i32 %conv141, 0
  br i1 %cmp142, label %cond.true144, label %cond.false150

cond.true144:                                     ; preds = %cond.false139
  %71 = load ptr, ptr %p.addr, align 8
  %aCoord145 = getelementptr inbounds %struct.RtreeCell, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %jj, align 4
  %add146 = add nsw i32 %72, 1
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord145, i64 0, i64 %idxprom147
  %73 = load float, ptr %arrayidx148, align 4
  %conv149 = fpext float %73 to double
  br label %cond.end156

cond.false150:                                    ; preds = %cond.false139
  %74 = load ptr, ptr %p.addr, align 8
  %aCoord151 = getelementptr inbounds %struct.RtreeCell, ptr %74, i32 0, i32 1
  %75 = load i32, ptr %jj, align 4
  %add152 = add nsw i32 %75, 1
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds [10 x %union.RtreeCoord], ptr %aCoord151, i64 0, i64 %idxprom153
  %76 = load i32, ptr %arrayidx154, align 4
  %conv155 = sitofp i32 %76 to double
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false150, %cond.true144
  %cond157 = phi double [ %conv149, %cond.true144 ], [ %conv155, %cond.false150 ]
  br label %cond.end158

cond.end158:                                      ; preds = %cond.end156, %cond.end137
  %cond159 = phi double [ %cond138, %cond.end137 ], [ %cond157, %cond.end156 ]
  store double %cond159, ptr %x2, align 8
  %77 = load double, ptr %x2, align 8
  %78 = load double, ptr %x1, align 8
  %cmp160 = fcmp olt double %77, %78
  br i1 %cmp160, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end158
  store double 0.000000e+00, ptr %o, align 8
  br label %for.end

if.else:                                          ; preds = %cond.end158
  %79 = load double, ptr %o, align 8
  %80 = load double, ptr %x2, align 8
  %81 = load double, ptr %x1, align 8
  %sub = fsub double %80, %81
  %mul = fmul double %79, %sub
  store double %mul, ptr %o, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %82 = load i32, ptr %jj, align 4
  %add162 = add nsw i32 %82, 2
  store i32 %add162, ptr %jj, align 4
  br label %for.cond1, !llvm.loop !64

for.end:                                          ; preds = %if.then, %for.cond1
  %83 = load double, ptr %o, align 8
  %84 = load double, ptr %overlap, align 8
  %add163 = fadd double %84, %83
  store double %add163, ptr %overlap, align 8
  br label %for.inc164

for.inc164:                                       ; preds = %for.end
  %85 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %85, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !65

for.end165:                                       ; preds = %for.cond
  %86 = load double, ptr %overlap, align 8
  ret double %86
}

declare i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_user_data(ptr noundef) #1

declare ptr @sqlite3_value_dup(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @rtreeMatchArgFree(ptr noundef %pArg) #0 {
entry:
  %pArg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %pArg.addr, align 8
  store ptr %0, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %p, align 8
  %nParam = getelementptr inbounds %struct.RtreeMatchArg, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %nParam, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8
  %apSqlParam = getelementptr inbounds %struct.RtreeMatchArg, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %apSqlParam, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  call void @sqlite3_value_free(ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %9)
  ret void
}

declare void @sqlite3_result_pointer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @sqlite3_value_free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn }
attributes #7 = { nounwind }

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
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
