; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/csv.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/csv.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CsvReader = type { ptr, ptr, i64, i64, i64, i32, i32, i64, i64, ptr, [200 x i8] }
%struct.CsvTable = type { %struct.sqlite3_vtab, ptr, ptr, i64, i32, i32 }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.CsvCursor = type { %struct.sqlite3_vtab_cursor, %struct.CsvReader, ptr, ptr, i64 }
%struct.sqlite3_vtab_cursor = type { ptr }

@.str = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@CsvModule = internal global %struct.sqlite3_module { i32 0, ptr @csvtabCreate, ptr @csvtabConnect, ptr @csvtabBestIndex, ptr @csvtabDisconnect, ptr @csvtabDisconnect, ptr @csvtabOpen, ptr @csvtabClose, ptr @csvtabFilter, ptr @csvtabNext, ptr @csvtabEof, ptr @csvtabColumn, ptr @csvtabRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@csvtabConnect.azParam = internal global [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"more than one 'header' parameter\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"more than one 'columns' parameter\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"column= value must be positive\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"bad parameter: '%s'\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"must specify either filename= or data= but not both\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"CREATE TABLE x(\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%sc%d TEXT\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"%s\22%w\22 TEXT\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"bad schema: '%s' - %s\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"more than one '%s' parameter\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"cannot open '%s' for reading\00", align 1
@__func__.csv_reader_open = private unnamed_addr constant [16 x i8] c"csv_reader_open\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"csv.c\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"p->in==0\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"line %d: unescaped %c character\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"line %d: unterminated %c-quoted field\0A\00", align 1
@__func__.csv_read_one_field = private unnamed_addr constant [19 x i8] c"csv_read_one_field\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"p->z==0 || p->n<p->nAlloc\00", align 1
@__func__.csv_getc_refill = private unnamed_addr constant [16 x i8] c"csv_getc_refill\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"p->iIn>=p->nIn\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"p->in!=0\00", align 1
@__func__.csvtabFilter = private unnamed_addr constant [13 x i8] c"csvtabFilter\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"pCur->rdr.zIn==pTab->zData\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"pTab->iStart>=0\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"(size_t)pTab->iStart<=pCur->rdr.nIn\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_csv_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_module(ptr noundef %1, ptr noundef @.str, ptr noundef @CsvModule, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  ret i32 %2
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabCreate(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
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
  %call = call i32 @csvtabConnect(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %bHeader = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %b = alloca i32, align 4
  %nCol = alloca i32, align 4
  %sRdr = alloca %struct.CsvReader, align 8
  %azPValue = alloca [3 x ptr], align 8
  %z = alloca ptr, align 8
  %zValue = alloca ptr, align 8
  %pStr = alloca ptr, align 8
  %zSep = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %z100 = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store ptr null, ptr %pNew, align 8
  store i32 -1, ptr %bHeader, align 4
  store i32 0, ptr %rc, align 4
  store i32 -99, ptr %nCol, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %sRdr, i8 0, i64 272, i1 false)
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 0, i64 24, i1 false)
  store i64 3, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i32, ptr %argc.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %0, %conv
  br i1 %cmp, label %for.body, label %for.end42

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %z, align 8
  store i64 0, ptr %j, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i64, ptr %j, align 8
  %cmp3 = icmp ult i64 %5, 3
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %6 = load i64, ptr %j, align 8
  %arrayidx6 = getelementptr inbounds [3 x ptr], ptr @csvtabConnect.azParam, i64 0, i64 %6
  %7 = load ptr, ptr %arrayidx6, align 8
  %8 = load ptr, ptr %z, align 8
  %9 = load i64, ptr %j, align 8
  %arrayidx7 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 %9
  %call = call i32 @csv_string_parameter(ptr noundef %sRdr, ptr noundef %7, ptr noundef %8, ptr noundef %arrayidx7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  br label %for.end

if.end:                                           ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, ptr %j, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond2
  %11 = load i64, ptr %j, align 8
  %cmp8 = icmp ult i64 %11, 3
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.end
  %zErr = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 10
  %arrayidx11 = getelementptr inbounds [200 x i8], ptr %zErr, i64 0, i64 0
  %12 = load i8, ptr %arrayidx11, align 8
  %tobool12 = icmp ne i8 %12, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  br label %csvtab_connect_error

if.end14:                                         ; preds = %if.then10
  br label %if.end39

if.else:                                          ; preds = %for.end
  %13 = load ptr, ptr %z, align 8
  %call15 = call i32 @csv_boolean_parameter(ptr noundef @.str.4, i32 noundef 6, ptr noundef %13, ptr noundef %b)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.else
  %14 = load i32, ptr %bHeader, align 4
  %cmp18 = icmp sge i32 %14, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %sRdr, ptr noundef @.str.5)
  br label %csvtab_connect_error

if.end21:                                         ; preds = %if.then17
  %15 = load i32, ptr %b, align 4
  store i32 %15, ptr %bHeader, align 4
  br label %if.end38

if.else22:                                        ; preds = %if.else
  %16 = load ptr, ptr %z, align 8
  %call23 = call ptr @csv_parameter(ptr noundef @.str.6, i32 noundef 7, ptr noundef %16)
  store ptr %call23, ptr %zValue, align 8
  %cmp24 = icmp ne ptr %call23, null
  br i1 %cmp24, label %if.then26, label %if.else36

if.then26:                                        ; preds = %if.else22
  %17 = load i32, ptr %nCol, align 4
  %cmp27 = icmp sgt i32 %17, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %sRdr, ptr noundef @.str.7)
  br label %csvtab_connect_error

if.end30:                                         ; preds = %if.then26
  %18 = load ptr, ptr %zValue, align 8
  %call31 = call i32 @atoi(ptr noundef %18)
  store i32 %call31, ptr %nCol, align 4
  %19 = load i32, ptr %nCol, align 4
  %cmp32 = icmp sle i32 %19, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %sRdr, ptr noundef @.str.8)
  br label %csvtab_connect_error

if.end35:                                         ; preds = %if.end30
  br label %if.end37

if.else36:                                        ; preds = %if.else22
  %20 = load ptr, ptr %z, align 8
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %sRdr, ptr noundef @.str.9, ptr noundef %20)
  br label %csvtab_connect_error

if.end37:                                         ; preds = %if.end35
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end21
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end14
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %21 = load i64, ptr %i, align 8
  %inc41 = add i64 %21, 1
  store i64 %inc41, ptr %i, align 8
  br label %for.cond, !llvm.loop !8

for.end42:                                        ; preds = %for.cond
  %arrayidx43 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 0
  %22 = load ptr, ptr %arrayidx43, align 8
  %cmp44 = icmp eq ptr %22, null
  %conv45 = zext i1 %cmp44 to i32
  %arrayidx46 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 1
  %23 = load ptr, ptr %arrayidx46, align 8
  %cmp47 = icmp eq ptr %23, null
  %conv48 = zext i1 %cmp47 to i32
  %cmp49 = icmp eq i32 %conv45, %conv48
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.end42
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %sRdr, ptr noundef @.str.10)
  br label %csvtab_connect_error

if.end52:                                         ; preds = %for.end42
  %24 = load i32, ptr %nCol, align 4
  %cmp53 = icmp sle i32 %24, 0
  br i1 %cmp53, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end52
  %25 = load i32, ptr %bHeader, align 4
  %cmp55 = icmp eq i32 %25, 1
  br i1 %cmp55, label %land.lhs.true, label %if.end62

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end52
  %arrayidx57 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 0
  %26 = load ptr, ptr %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 1
  %27 = load ptr, ptr %arrayidx58, align 8
  %call59 = call i32 @csv_reader_open(ptr noundef %sRdr, ptr noundef %26, ptr noundef %27)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %land.lhs.true
  br label %csvtab_connect_error

if.end62:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call63 = call ptr @sqlite3_malloc64(i64 noundef 56)
  store ptr %call63, ptr %pNew, align 8
  %28 = load ptr, ptr %pNew, align 8
  %29 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %28, ptr %29, align 8
  %30 = load ptr, ptr %pNew, align 8
  %cmp64 = icmp eq ptr %30, null
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end62
  br label %csvtab_connect_oom

if.end67:                                         ; preds = %if.end62
  %31 = load ptr, ptr %pNew, align 8
  %32 = load ptr, ptr %pNew, align 8
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %32, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memset_chk(ptr noundef %31, i32 noundef 0, i64 noundef 56, i64 noundef %33) #8
  %arrayidx69 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 2
  %34 = load ptr, ptr %arrayidx69, align 8
  %cmp70 = icmp eq ptr %34, null
  br i1 %cmp70, label %if.then72, label %if.else137

if.then72:                                        ; preds = %if.end67
  %call73 = call ptr @sqlite3_str_new(ptr noundef null)
  store ptr %call73, ptr %pStr, align 8
  store ptr @.str.11, ptr %zSep, align 8
  store i32 0, ptr %iCol, align 4
  %35 = load ptr, ptr %pStr, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %35, ptr noundef @.str.12)
  %36 = load i32, ptr %nCol, align 4
  %cmp74 = icmp slt i32 %36, 0
  br i1 %cmp74, label %land.lhs.true76, label %if.end84

land.lhs.true76:                                  ; preds = %if.then72
  %37 = load i32, ptr %bHeader, align 4
  %cmp77 = icmp slt i32 %37, 1
  br i1 %cmp77, label %if.then79, label %if.end84

if.then79:                                        ; preds = %land.lhs.true76
  store i32 0, ptr %nCol, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then79
  %call80 = call ptr @csv_read_one_field(ptr noundef %sRdr)
  %38 = load i32, ptr %nCol, align 4
  %inc81 = add nsw i32 %38, 1
  store i32 %inc81, ptr %nCol, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %cTerm = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 6
  %39 = load i32, ptr %cTerm, align 4
  %cmp82 = icmp eq i32 %39, 44
  br i1 %cmp82, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  br label %if.end84

if.end84:                                         ; preds = %do.end, %land.lhs.true76, %if.then72
  %40 = load i32, ptr %nCol, align 4
  %cmp85 = icmp sgt i32 %40, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.else98

land.lhs.true87:                                  ; preds = %if.end84
  %41 = load i32, ptr %bHeader, align 4
  %cmp88 = icmp slt i32 %41, 1
  br i1 %cmp88, label %if.then90, label %if.else98

if.then90:                                        ; preds = %land.lhs.true87
  store i32 0, ptr %iCol, align 4
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc95, %if.then90
  %42 = load i32, ptr %iCol, align 4
  %43 = load i32, ptr %nCol, align 4
  %cmp92 = icmp slt i32 %42, %43
  br i1 %cmp92, label %for.body94, label %for.end97

for.body94:                                       ; preds = %for.cond91
  %44 = load ptr, ptr %pStr, align 8
  %45 = load ptr, ptr %zSep, align 8
  %46 = load i32, ptr %iCol, align 4
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %44, ptr noundef @.str.13, ptr noundef %45, i32 noundef %46)
  store ptr @.str.14, ptr %zSep, align 8
  br label %for.inc95

for.inc95:                                        ; preds = %for.body94
  %47 = load i32, ptr %iCol, align 4
  %inc96 = add nsw i32 %47, 1
  store i32 %inc96, ptr %iCol, align 4
  br label %for.cond91, !llvm.loop !10

for.end97:                                        ; preds = %for.cond91
  br label %if.end128

if.else98:                                        ; preds = %land.lhs.true87, %if.end84
  br label %do.body99

do.body99:                                        ; preds = %do.cond115, %if.else98
  %call101 = call ptr @csv_read_one_field(ptr noundef %sRdr)
  store ptr %call101, ptr %z100, align 8
  %48 = load i32, ptr %nCol, align 4
  %cmp102 = icmp sgt i32 %48, 0
  br i1 %cmp102, label %land.lhs.true104, label %lor.lhs.false107

land.lhs.true104:                                 ; preds = %do.body99
  %49 = load i32, ptr %iCol, align 4
  %50 = load i32, ptr %nCol, align 4
  %cmp105 = icmp slt i32 %49, %50
  br i1 %cmp105, label %if.then112, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %land.lhs.true104, %do.body99
  %51 = load i32, ptr %nCol, align 4
  %cmp108 = icmp slt i32 %51, 0
  br i1 %cmp108, label %land.lhs.true110, label %if.end114

land.lhs.true110:                                 ; preds = %lor.lhs.false107
  %52 = load i32, ptr %bHeader, align 4
  %tobool111 = icmp ne i32 %52, 0
  br i1 %tobool111, label %if.then112, label %if.end114

if.then112:                                       ; preds = %land.lhs.true110, %land.lhs.true104
  %53 = load ptr, ptr %pStr, align 8
  %54 = load ptr, ptr %zSep, align 8
  %55 = load ptr, ptr %z100, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %53, ptr noundef @.str.15, ptr noundef %54, ptr noundef %55)
  store ptr @.str.14, ptr %zSep, align 8
  %56 = load i32, ptr %iCol, align 4
  %inc113 = add nsw i32 %56, 1
  store i32 %inc113, ptr %iCol, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %land.lhs.true110, %lor.lhs.false107
  br label %do.cond115

do.cond115:                                       ; preds = %if.end114
  %cTerm116 = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 6
  %57 = load i32, ptr %cTerm116, align 4
  %cmp117 = icmp eq i32 %57, 44
  br i1 %cmp117, label %do.body99, label %do.end119, !llvm.loop !11

do.end119:                                        ; preds = %do.cond115
  %58 = load i32, ptr %nCol, align 4
  %cmp120 = icmp slt i32 %58, 0
  br i1 %cmp120, label %if.then122, label %if.else123

if.then122:                                       ; preds = %do.end119
  %59 = load i32, ptr %iCol, align 4
  store i32 %59, ptr %nCol, align 4
  br label %if.end127

if.else123:                                       ; preds = %do.end119
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else123
  %60 = load i32, ptr %iCol, align 4
  %61 = load i32, ptr %nCol, align 4
  %cmp124 = icmp slt i32 %60, %61
  br i1 %cmp124, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load ptr, ptr %pStr, align 8
  %63 = load ptr, ptr %zSep, align 8
  %64 = load i32, ptr %iCol, align 4
  %inc126 = add nsw i32 %64, 1
  store i32 %inc126, ptr %iCol, align 4
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %62, ptr noundef @.str.13, ptr noundef %63, i32 noundef %inc126)
  store ptr @.str.14, ptr %zSep, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  br label %if.end127

if.end127:                                        ; preds = %while.end, %if.then122
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %for.end97
  %65 = load i32, ptr %nCol, align 4
  %66 = load ptr, ptr %pNew, align 8
  %nCol129 = getelementptr inbounds %struct.CsvTable, ptr %66, i32 0, i32 4
  store i32 %65, ptr %nCol129, align 8
  %67 = load ptr, ptr %pStr, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %67, ptr noundef @.str.16)
  %68 = load ptr, ptr %pStr, align 8
  %call130 = call ptr @sqlite3_str_finish(ptr noundef %68)
  %arrayidx131 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 2
  store ptr %call130, ptr %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 2
  %69 = load ptr, ptr %arrayidx132, align 8
  %cmp133 = icmp eq ptr %69, null
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end128
  br label %csvtab_connect_oom

if.end136:                                        ; preds = %if.end128
  br label %if.end153

if.else137:                                       ; preds = %if.end67
  %70 = load i32, ptr %nCol, align 4
  %cmp138 = icmp slt i32 %70, 0
  br i1 %cmp138, label %if.then140, label %if.else150

if.then140:                                       ; preds = %if.else137
  br label %do.body141

do.body141:                                       ; preds = %do.cond145, %if.then140
  %call142 = call ptr @csv_read_one_field(ptr noundef %sRdr)
  %71 = load ptr, ptr %pNew, align 8
  %nCol143 = getelementptr inbounds %struct.CsvTable, ptr %71, i32 0, i32 4
  %72 = load i32, ptr %nCol143, align 8
  %inc144 = add nsw i32 %72, 1
  store i32 %inc144, ptr %nCol143, align 8
  br label %do.cond145

do.cond145:                                       ; preds = %do.body141
  %cTerm146 = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 6
  %73 = load i32, ptr %cTerm146, align 4
  %cmp147 = icmp eq i32 %73, 44
  br i1 %cmp147, label %do.body141, label %do.end149, !llvm.loop !13

do.end149:                                        ; preds = %do.cond145
  br label %if.end152

if.else150:                                       ; preds = %if.else137
  %74 = load i32, ptr %nCol, align 4
  %75 = load ptr, ptr %pNew, align 8
  %nCol151 = getelementptr inbounds %struct.CsvTable, ptr %75, i32 0, i32 4
  store i32 %74, ptr %nCol151, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.else150, %do.end149
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end136
  %arrayidx154 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 0
  %76 = load ptr, ptr %arrayidx154, align 8
  %77 = load ptr, ptr %pNew, align 8
  %zFilename = getelementptr inbounds %struct.CsvTable, ptr %77, i32 0, i32 1
  store ptr %76, ptr %zFilename, align 8
  %arrayidx155 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 0
  store ptr null, ptr %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 1
  %78 = load ptr, ptr %arrayidx156, align 8
  %79 = load ptr, ptr %pNew, align 8
  %zData = getelementptr inbounds %struct.CsvTable, ptr %79, i32 0, i32 2
  store ptr %78, ptr %zData, align 8
  %arrayidx157 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 1
  store ptr null, ptr %arrayidx157, align 8
  %80 = load i32, ptr %bHeader, align 4
  %cmp158 = icmp ne i32 %80, 1
  br i1 %cmp158, label %if.then160, label %if.else161

if.then160:                                       ; preds = %if.end153
  %81 = load ptr, ptr %pNew, align 8
  %iStart = getelementptr inbounds %struct.CsvTable, ptr %81, i32 0, i32 3
  store i64 0, ptr %iStart, align 8
  br label %if.end175

if.else161:                                       ; preds = %if.end153
  %82 = load ptr, ptr %pNew, align 8
  %zData162 = getelementptr inbounds %struct.CsvTable, ptr %82, i32 0, i32 2
  %83 = load ptr, ptr %zData162, align 8
  %tobool163 = icmp ne ptr %83, null
  br i1 %tobool163, label %if.then164, label %if.else168

if.then164:                                       ; preds = %if.else161
  %iIn = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 7
  %84 = load i64, ptr %iIn, align 8
  %conv165 = trunc i64 %84 to i32
  %conv166 = sext i32 %conv165 to i64
  %85 = load ptr, ptr %pNew, align 8
  %iStart167 = getelementptr inbounds %struct.CsvTable, ptr %85, i32 0, i32 3
  store i64 %conv166, ptr %iStart167, align 8
  br label %if.end174

if.else168:                                       ; preds = %if.else161
  %in = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 0
  %86 = load ptr, ptr %in, align 8
  %call169 = call i64 @ftell(ptr noundef %86)
  %nIn = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 8
  %87 = load i64, ptr %nIn, align 8
  %sub = sub i64 %call169, %87
  %iIn170 = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 7
  %88 = load i64, ptr %iIn170, align 8
  %add = add i64 %sub, %88
  %conv171 = trunc i64 %add to i32
  %conv172 = sext i32 %conv171 to i64
  %89 = load ptr, ptr %pNew, align 8
  %iStart173 = getelementptr inbounds %struct.CsvTable, ptr %89, i32 0, i32 3
  store i64 %conv172, ptr %iStart173, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.else168, %if.then164
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.then160
  call void @csv_reader_reset(ptr noundef %sRdr)
  %90 = load ptr, ptr %db.addr, align 8
  %arrayidx176 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 2
  %91 = load ptr, ptr %arrayidx176, align 8
  %call177 = call i32 @sqlite3_declare_vtab(ptr noundef %90, ptr noundef %91)
  store i32 %call177, ptr %rc, align 4
  %92 = load i32, ptr %rc, align 4
  %tobool178 = icmp ne i32 %92, 0
  br i1 %tobool178, label %if.then179, label %if.end182

if.then179:                                       ; preds = %if.end175
  %arrayidx180 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 2
  %93 = load ptr, ptr %arrayidx180, align 8
  %94 = load ptr, ptr %db.addr, align 8
  %call181 = call ptr @sqlite3_errmsg(ptr noundef %94)
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %sRdr, ptr noundef @.str.17, ptr noundef %93, ptr noundef %call181)
  br label %csvtab_connect_error

if.end182:                                        ; preds = %if.end175
  store i64 0, ptr %i, align 8
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc188, %if.end182
  %95 = load i64, ptr %i, align 8
  %cmp184 = icmp ult i64 %95, 3
  br i1 %cmp184, label %for.body186, label %for.end190

for.body186:                                      ; preds = %for.cond183
  %96 = load i64, ptr %i, align 8
  %arrayidx187 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 %96
  %97 = load ptr, ptr %arrayidx187, align 8
  call void @sqlite3_free(ptr noundef %97)
  br label %for.inc188

for.inc188:                                       ; preds = %for.body186
  %98 = load i64, ptr %i, align 8
  %inc189 = add i64 %98, 1
  store i64 %inc189, ptr %i, align 8
  br label %for.cond183, !llvm.loop !14

for.end190:                                       ; preds = %for.cond183
  %99 = load ptr, ptr %db.addr, align 8
  %call191 = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %99, i32 noundef 3)
  store i32 0, ptr %retval, align 4
  br label %return

csvtab_connect_oom:                               ; preds = %if.then135, %if.then66
  store i32 7, ptr %rc, align 4
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %sRdr, ptr noundef @.str.18)
  br label %csvtab_connect_error

csvtab_connect_error:                             ; preds = %csvtab_connect_oom, %if.then179, %if.then61, %if.then51, %if.else36, %if.then34, %if.then29, %if.then20, %if.then13
  %100 = load ptr, ptr %pNew, align 8
  %tobool192 = icmp ne ptr %100, null
  br i1 %tobool192, label %if.then193, label %if.end195

if.then193:                                       ; preds = %csvtab_connect_error
  %101 = load ptr, ptr %pNew, align 8
  %base = getelementptr inbounds %struct.CsvTable, ptr %101, i32 0, i32 0
  %call194 = call i32 @csvtabDisconnect(ptr noundef %base)
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %csvtab_connect_error
  store i64 0, ptr %i, align 8
  br label %for.cond196

for.cond196:                                      ; preds = %for.inc201, %if.end195
  %102 = load i64, ptr %i, align 8
  %cmp197 = icmp ult i64 %102, 3
  br i1 %cmp197, label %for.body199, label %for.end203

for.body199:                                      ; preds = %for.cond196
  %103 = load i64, ptr %i, align 8
  %arrayidx200 = getelementptr inbounds [3 x ptr], ptr %azPValue, i64 0, i64 %103
  %104 = load ptr, ptr %arrayidx200, align 8
  call void @sqlite3_free(ptr noundef %104)
  br label %for.inc201

for.inc201:                                       ; preds = %for.body199
  %105 = load i64, ptr %i, align 8
  %inc202 = add i64 %105, 1
  store i64 %inc202, ptr %i, align 8
  br label %for.cond196, !llvm.loop !15

for.end203:                                       ; preds = %for.cond196
  %zErr204 = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 10
  %arrayidx205 = getelementptr inbounds [200 x i8], ptr %zErr204, i64 0, i64 0
  %106 = load i8, ptr %arrayidx205, align 8
  %tobool206 = icmp ne i8 %106, 0
  br i1 %tobool206, label %if.then207, label %if.end211

if.then207:                                       ; preds = %for.end203
  %107 = load ptr, ptr %pzErr.addr, align 8
  %108 = load ptr, ptr %107, align 8
  call void @sqlite3_free(ptr noundef %108)
  %zErr208 = getelementptr inbounds %struct.CsvReader, ptr %sRdr, i32 0, i32 10
  %arraydecay209 = getelementptr inbounds [200 x i8], ptr %zErr208, i64 0, i64 0
  %call210 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.19, ptr noundef %arraydecay209)
  %109 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call210, ptr %109, align 8
  br label %if.end211

if.end211:                                        ; preds = %if.then207, %for.end203
  call void @csv_reader_reset(ptr noundef %sRdr)
  %110 = load i32, ptr %rc, align 4
  %cmp212 = icmp eq i32 %110, 0
  br i1 %cmp212, label %if.then214, label %if.end215

if.then214:                                       ; preds = %if.end211
  store i32 1, ptr %rc, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then214, %if.end211
  %111 = load i32, ptr %rc, align 4
  store i32 %111, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end215, %for.end190
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  %0 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %0, i32 0, i32 9
  store double 1.000000e+06, ptr %estimatedCost, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %zFilename = getelementptr inbounds %struct.CsvTable, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %zFilename, align 8
  call void @sqlite3_free(ptr noundef %2)
  %3 = load ptr, ptr %p, align 8
  %zData = getelementptr inbounds %struct.CsvTable, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %zData, align 8
  call void @sqlite3_free(ptr noundef %4)
  %5 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabOpen(ptr noundef %p, ptr noundef %ppCursor) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %ppCursor.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %nByte = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pTab, align 8
  %1 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds %struct.CsvTable, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %nCol, align 8
  %conv = sext i32 %2 to i64
  %mul = mul i64 16, %conv
  %add = add i64 304, %mul
  store i64 %add, ptr %nByte, align 8
  %3 = load i64, ptr %nByte, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef %3)
  store ptr %call, ptr %pCur, align 8
  %4 = load ptr, ptr %pCur, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pCur, align 8
  %6 = load i64, ptr %nByte, align 8
  %7 = load ptr, ptr %pCur, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call2 = call ptr @__memset_chk(ptr noundef %5, i32 noundef 0, i64 noundef %6, i64 noundef %8) #8
  %9 = load ptr, ptr %pCur, align 8
  %arrayidx = getelementptr inbounds %struct.CsvCursor, ptr %9, i64 1
  %10 = load ptr, ptr %pCur, align 8
  %azVal = getelementptr inbounds %struct.CsvCursor, ptr %10, i32 0, i32 2
  store ptr %arrayidx, ptr %azVal, align 8
  %11 = load ptr, ptr %pCur, align 8
  %azVal3 = getelementptr inbounds %struct.CsvCursor, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %azVal3, align 8
  %13 = load ptr, ptr %pTab, align 8
  %nCol4 = getelementptr inbounds %struct.CsvTable, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %nCol4, align 8
  %idxprom = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %15 = load ptr, ptr %pCur, align 8
  %aLen = getelementptr inbounds %struct.CsvCursor, ptr %15, i32 0, i32 3
  store ptr %arrayidx5, ptr %aLen, align 8
  %16 = load ptr, ptr %pCur, align 8
  %base = getelementptr inbounds %struct.CsvCursor, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base, ptr %17, align 8
  %18 = load ptr, ptr %pCur, align 8
  %rdr = getelementptr inbounds %struct.CsvCursor, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %pTab, align 8
  %zFilename = getelementptr inbounds %struct.CsvTable, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %zFilename, align 8
  %21 = load ptr, ptr %pTab, align 8
  %zData = getelementptr inbounds %struct.CsvTable, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %zData, align 8
  %call6 = call i32 @csv_reader_open(ptr noundef %rdr, ptr noundef %20, ptr noundef %22)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %23 = load ptr, ptr %pTab, align 8
  %24 = load ptr, ptr %pCur, align 8
  %rdr8 = getelementptr inbounds %struct.CsvCursor, ptr %24, i32 0, i32 1
  call void @csv_xfer_error(ptr noundef %23, ptr noundef %rdr8)
  store i32 1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  call void @csvtabCursorRowReset(ptr noundef %1)
  %2 = load ptr, ptr %pCur, align 8
  %rdr = getelementptr inbounds %struct.CsvCursor, ptr %2, i32 0, i32 1
  call void @csv_reader_reset(ptr noundef %rdr)
  %3 = load ptr, ptr %cur.addr, align 8
  call void @sqlite3_free(ptr noundef %3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pVtabCursor.addr, align 8
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVtab, align 8
  store ptr %2, ptr %pTab, align 8
  %3 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.CsvCursor, ptr %3, i32 0, i32 4
  store i64 0, ptr %iRowid, align 8
  %4 = load ptr, ptr %pCur, align 8
  %rdr = getelementptr inbounds %struct.CsvCursor, ptr %4, i32 0, i32 1
  %call = call i32 @csv_append(ptr noundef %rdr, i8 noundef signext 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pCur, align 8
  %rdr1 = getelementptr inbounds %struct.CsvCursor, ptr %5, i32 0, i32 1
  %in = getelementptr inbounds %struct.CsvReader, ptr %rdr1, i32 0, i32 0
  %6 = load ptr, ptr %in, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCur, align 8
  %rdr3 = getelementptr inbounds %struct.CsvCursor, ptr %7, i32 0, i32 1
  %zIn = getelementptr inbounds %struct.CsvReader, ptr %rdr3, i32 0, i32 9
  %8 = load ptr, ptr %zIn, align 8
  %9 = load ptr, ptr %pTab, align 8
  %zData = getelementptr inbounds %struct.CsvTable, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %zData, align 8
  %cmp4 = icmp eq ptr %8, %10
  %lnot = xor i1 %cmp4, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool5 = icmp ne i64 %conv, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  call void @__assert_rtn(ptr noundef @__func__.csvtabFilter, ptr noundef @.str.29, i32 noundef 825, ptr noundef @.str.36) #9
  unreachable

11:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %11
  %12 = load ptr, ptr %pTab, align 8
  %iStart = getelementptr inbounds %struct.CsvTable, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %iStart, align 8
  %cmp6 = icmp sge i64 %13, 0
  %lnot8 = xor i1 %cmp6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.csvtabFilter, ptr noundef @.str.29, i32 noundef 826, ptr noundef @.str.37) #9
  unreachable

14:                                               ; No predecessors!
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %14
  %15 = load ptr, ptr %pTab, align 8
  %iStart15 = getelementptr inbounds %struct.CsvTable, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %iStart15, align 8
  %17 = load ptr, ptr %pCur, align 8
  %rdr16 = getelementptr inbounds %struct.CsvCursor, ptr %17, i32 0, i32 1
  %nIn = getelementptr inbounds %struct.CsvReader, ptr %rdr16, i32 0, i32 8
  %18 = load i64, ptr %nIn, align 8
  %cmp17 = icmp ule i64 %16, %18
  %lnot19 = xor i1 %cmp17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end14
  call void @__assert_rtn(ptr noundef @__func__.csvtabFilter, ptr noundef @.str.29, i32 noundef 827, ptr noundef @.str.38) #9
  unreachable

19:                                               ; No predecessors!
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end14
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %19
  %20 = load ptr, ptr %pTab, align 8
  %iStart26 = getelementptr inbounds %struct.CsvTable, ptr %20, i32 0, i32 3
  %21 = load i64, ptr %iStart26, align 8
  %22 = load ptr, ptr %pCur, align 8
  %rdr27 = getelementptr inbounds %struct.CsvCursor, ptr %22, i32 0, i32 1
  %iIn = getelementptr inbounds %struct.CsvReader, ptr %rdr27, i32 0, i32 7
  store i64 %21, ptr %iIn, align 8
  br label %if.end36

if.else:                                          ; preds = %if.end
  %23 = load ptr, ptr %pCur, align 8
  %rdr28 = getelementptr inbounds %struct.CsvCursor, ptr %23, i32 0, i32 1
  %in29 = getelementptr inbounds %struct.CsvReader, ptr %rdr28, i32 0, i32 0
  %24 = load ptr, ptr %in29, align 8
  %25 = load ptr, ptr %pTab, align 8
  %iStart30 = getelementptr inbounds %struct.CsvTable, ptr %25, i32 0, i32 3
  %26 = load i64, ptr %iStart30, align 8
  %call31 = call i32 @fseek(ptr noundef %24, i64 noundef %26, i32 noundef 0)
  %27 = load ptr, ptr %pCur, align 8
  %rdr32 = getelementptr inbounds %struct.CsvCursor, ptr %27, i32 0, i32 1
  %iIn33 = getelementptr inbounds %struct.CsvReader, ptr %rdr32, i32 0, i32 7
  store i64 0, ptr %iIn33, align 8
  %28 = load ptr, ptr %pCur, align 8
  %rdr34 = getelementptr inbounds %struct.CsvCursor, ptr %28, i32 0, i32 1
  %nIn35 = getelementptr inbounds %struct.CsvReader, ptr %rdr34, i32 0, i32 8
  store i64 0, ptr %nIn35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %cond.end25
  %29 = load ptr, ptr %pVtabCursor.addr, align 8
  %call37 = call i32 @csvtabNext(ptr noundef %29)
  store i32 %call37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabNext(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %i = alloca i32, align 4
  %z = alloca ptr, align 8
  %zNew = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %cur.addr, align 8
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVtab, align 8
  store ptr %2, ptr %pTab, align 8
  store i32 0, ptr %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load ptr, ptr %pCur, align 8
  %rdr = getelementptr inbounds %struct.CsvCursor, ptr %3, i32 0, i32 1
  %call = call ptr @csv_read_one_field(ptr noundef %rdr)
  store ptr %call, ptr %z, align 8
  %4 = load ptr, ptr %z, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds %struct.CsvTable, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %nCol, align 8
  %cmp1 = icmp slt i32 %5, %7
  br i1 %cmp1, label %if.then2, label %if.end37

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %pCur, align 8
  %aLen = getelementptr inbounds %struct.CsvCursor, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %aLen, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i64, ptr %9, i64 %idxprom
  %11 = load i64, ptr %arrayidx, align 8
  %12 = load ptr, ptr %pCur, align 8
  %rdr3 = getelementptr inbounds %struct.CsvCursor, ptr %12, i32 0, i32 1
  %n = getelementptr inbounds %struct.CsvReader, ptr %rdr3, i32 0, i32 2
  %13 = load i64, ptr %n, align 8
  %add = add nsw i64 %13, 1
  %cmp4 = icmp slt i64 %11, %add
  br i1 %cmp4, label %if.then5, label %if.end26

if.then5:                                         ; preds = %if.then2
  %14 = load ptr, ptr %pCur, align 8
  %azVal = getelementptr inbounds %struct.CsvCursor, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %azVal, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %15, i64 %idxprom6
  %17 = load ptr, ptr %arrayidx7, align 8
  %18 = load ptr, ptr %pCur, align 8
  %rdr8 = getelementptr inbounds %struct.CsvCursor, ptr %18, i32 0, i32 1
  %n9 = getelementptr inbounds %struct.CsvReader, ptr %rdr8, i32 0, i32 2
  %19 = load i64, ptr %n9, align 8
  %add10 = add nsw i64 %19, 1
  %call11 = call ptr @sqlite3_realloc64(ptr noundef %17, i64 noundef %add10)
  store ptr %call11, ptr %zNew, align 8
  %20 = load ptr, ptr %zNew, align 8
  %cmp12 = icmp eq ptr %20, null
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then5
  %21 = load ptr, ptr %pCur, align 8
  %rdr14 = getelementptr inbounds %struct.CsvCursor, ptr %21, i32 0, i32 1
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %rdr14, ptr noundef @.str.18)
  %22 = load ptr, ptr %pTab, align 8
  %23 = load ptr, ptr %pCur, align 8
  %rdr15 = getelementptr inbounds %struct.CsvCursor, ptr %23, i32 0, i32 1
  call void @csv_xfer_error(ptr noundef %22, ptr noundef %rdr15)
  br label %do.end

if.end16:                                         ; preds = %if.then5
  %24 = load ptr, ptr %zNew, align 8
  %25 = load ptr, ptr %pCur, align 8
  %azVal17 = getelementptr inbounds %struct.CsvCursor, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %azVal17, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %27 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %26, i64 %idxprom18
  store ptr %24, ptr %arrayidx19, align 8
  %28 = load ptr, ptr %pCur, align 8
  %rdr20 = getelementptr inbounds %struct.CsvCursor, ptr %28, i32 0, i32 1
  %n21 = getelementptr inbounds %struct.CsvReader, ptr %rdr20, i32 0, i32 2
  %29 = load i64, ptr %n21, align 8
  %add22 = add nsw i64 %29, 1
  %30 = load ptr, ptr %pCur, align 8
  %aLen23 = getelementptr inbounds %struct.CsvCursor, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %aLen23, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds i64, ptr %31, i64 %idxprom24
  store i64 %add22, ptr %arrayidx25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end16, %if.then2
  %33 = load ptr, ptr %pCur, align 8
  %azVal27 = getelementptr inbounds %struct.CsvCursor, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %azVal27, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %34, i64 %idxprom28
  %36 = load ptr, ptr %arrayidx29, align 8
  %37 = load ptr, ptr %z, align 8
  %38 = load ptr, ptr %pCur, align 8
  %rdr30 = getelementptr inbounds %struct.CsvCursor, ptr %38, i32 0, i32 1
  %n31 = getelementptr inbounds %struct.CsvReader, ptr %rdr30, i32 0, i32 2
  %39 = load i64, ptr %n31, align 8
  %add32 = add nsw i64 %39, 1
  %40 = load ptr, ptr %pCur, align 8
  %azVal33 = getelementptr inbounds %struct.CsvCursor, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %azVal33, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %42 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %41, i64 %idxprom34
  %43 = load ptr, ptr %arrayidx35, align 8
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %43, i1 false, i1 true, i1 false)
  %call36 = call ptr @__memcpy_chk(ptr noundef %36, ptr noundef %37, i64 noundef %add32, i64 noundef %44) #8
  %45 = load i32, ptr %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %i, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end26, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end37
  %46 = load ptr, ptr %pCur, align 8
  %rdr38 = getelementptr inbounds %struct.CsvCursor, ptr %46, i32 0, i32 1
  %cTerm = getelementptr inbounds %struct.CsvReader, ptr %rdr38, i32 0, i32 6
  %47 = load i32, ptr %cTerm, align 4
  %cmp39 = icmp eq i32 %47, 44
  br i1 %cmp39, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond, %if.then13, %if.then
  %48 = load ptr, ptr %z, align 8
  %cmp40 = icmp eq ptr %48, null
  br i1 %cmp40, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end
  %49 = load i32, ptr %i, align 4
  %cmp41 = icmp eq i32 %49, 0
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %land.lhs.true
  %50 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.CsvCursor, ptr %50, i32 0, i32 4
  store i64 -1, ptr %iRowid, align 8
  br label %if.end57

if.else:                                          ; preds = %land.lhs.true, %do.end
  %51 = load ptr, ptr %pCur, align 8
  %iRowid43 = getelementptr inbounds %struct.CsvCursor, ptr %51, i32 0, i32 4
  %52 = load i64, ptr %iRowid43, align 8
  %inc44 = add nsw i64 %52, 1
  store i64 %inc44, ptr %iRowid43, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %53 = load i32, ptr %i, align 4
  %54 = load ptr, ptr %pTab, align 8
  %nCol45 = getelementptr inbounds %struct.CsvTable, ptr %54, i32 0, i32 4
  %55 = load i32, ptr %nCol45, align 8
  %cmp46 = icmp slt i32 %53, %55
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = load ptr, ptr %pCur, align 8
  %azVal47 = getelementptr inbounds %struct.CsvCursor, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %azVal47, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %58 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %57, i64 %idxprom48
  %59 = load ptr, ptr %arrayidx49, align 8
  call void @sqlite3_free(ptr noundef %59)
  %60 = load ptr, ptr %pCur, align 8
  %azVal50 = getelementptr inbounds %struct.CsvCursor, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %azVal50, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %62 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %61, i64 %idxprom51
  store ptr null, ptr %arrayidx52, align 8
  %63 = load ptr, ptr %pCur, align 8
  %aLen53 = getelementptr inbounds %struct.CsvCursor, ptr %63, i32 0, i32 3
  %64 = load ptr, ptr %aLen53, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %65 to i64
  %arrayidx55 = getelementptr inbounds i64, ptr %64, i64 %idxprom54
  store i64 0, ptr %arrayidx55, align 8
  %66 = load i32, ptr %i, align 4
  %inc56 = add nsw i32 %66, 1
  store i32 %inc56, ptr %i, align 4
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  br label %if.end57

if.end57:                                         ; preds = %while.end, %if.then42
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.CsvCursor, ptr %1, i32 0, i32 4
  %2 = load i64, ptr %iRowid, align 8
  %cmp = icmp slt i64 %2, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pCur = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %cur.addr, align 8
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVtab, align 8
  store ptr %2, ptr %pTab, align 8
  %3 = load i32, ptr %i.addr, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %i.addr, align 4
  %5 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds %struct.CsvTable, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %nCol, align 8
  %cmp1 = icmp slt i32 %4, %6
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %pCur, align 8
  %azVal = getelementptr inbounds %struct.CsvCursor, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %azVal, align 8
  %9 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %11 = load ptr, ptr %ctx.addr, align 8
  %12 = load ptr, ptr %pCur, align 8
  %azVal4 = getelementptr inbounds %struct.CsvCursor, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %azVal4, align 8
  %14 = load i32, ptr %i.addr, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %13, i64 %idxprom5
  %15 = load ptr, ptr %arrayidx6, align 8
  call void @sqlite3_result_text(ptr noundef %11, ptr noundef %15, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csvtabRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.CsvCursor, ptr %1, i32 0, i32 4
  %2 = load i64, ptr %iRowid, align 8
  %3 = load ptr, ptr %pRowid.addr, align 8
  store i64 %2, ptr %3, align 8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csv_string_parameter(ptr noundef %p, ptr noundef %zParam, ptr noundef %zArg, ptr noundef %pzVal) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %zParam.addr = alloca ptr, align 8
  %zArg.addr = alloca ptr, align 8
  %pzVal.addr = alloca ptr, align 8
  %zValue = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zParam, ptr %zParam.addr, align 8
  store ptr %zArg, ptr %zArg.addr, align 8
  store ptr %pzVal, ptr %pzVal.addr, align 8
  %0 = load ptr, ptr %zParam.addr, align 8
  %1 = load ptr, ptr %zParam.addr, align 8
  %call = call i64 @strlen(ptr noundef %1)
  %conv = trunc i64 %call to i32
  %2 = load ptr, ptr %zArg.addr, align 8
  %call1 = call ptr @csv_parameter(ptr noundef %0, i32 noundef %conv, ptr noundef %2)
  store ptr %call1, ptr %zValue, align 8
  %3 = load ptr, ptr %zValue, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %zErr = getelementptr inbounds %struct.CsvReader, ptr %4, i32 0, i32 10
  %arrayidx = getelementptr inbounds [200 x i8], ptr %zErr, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 8
  %5 = load ptr, ptr %pzVal.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %8 = load ptr, ptr %zParam.addr, align 8
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %7, ptr noundef @.str.20, ptr noundef %8)
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %zValue, align 8
  %call5 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.19, ptr noundef %9)
  %10 = load ptr, ptr %pzVal.addr, align 8
  store ptr %call5, ptr %10, align 8
  %11 = load ptr, ptr %pzVal.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %cmp6 = icmp eq ptr %12, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  %13 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %13, ptr noundef @.str.18)
  store i32 1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %14 = load ptr, ptr %pzVal.addr, align 8
  %15 = load ptr, ptr %14, align 8
  call void @csv_trim_whitespace(ptr noundef %15)
  %16 = load ptr, ptr %pzVal.addr, align 8
  %17 = load ptr, ptr %16, align 8
  call void @csv_dequote(ptr noundef %17)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then3, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csv_boolean_parameter(ptr noundef %zTag, i32 noundef %nTag, ptr noundef %z, ptr noundef %pValue) #0 {
entry:
  %retval = alloca i32, align 4
  %zTag.addr = alloca ptr, align 8
  %nTag.addr = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  store ptr %zTag, ptr %zTag.addr, align 8
  store i32 %nTag, ptr %nTag.addr, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %call = call ptr @csv_skip_whitespace(ptr noundef %0)
  store ptr %call, ptr %z.addr, align 8
  %1 = load ptr, ptr %zTag.addr, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %3 = load i32, ptr %nTag.addr, align 4
  %conv = sext i32 %3 to i64
  %call1 = call i32 @strncmp(ptr noundef %1, ptr noundef %2, i64 noundef %conv)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %z.addr, align 8
  %5 = load i32, ptr %nTag.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %call3 = call ptr @csv_skip_whitespace(ptr noundef %add.ptr)
  store ptr %call3, ptr %z.addr, align 8
  %6 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %pValue.addr, align 8
  store i32 1, ptr %8, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %z.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv10, 61
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %11 = load ptr, ptr %z.addr, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %11, i64 1
  %call16 = call ptr @csv_skip_whitespace(ptr noundef %add.ptr15)
  store ptr %call16, ptr %z.addr, align 8
  %12 = load ptr, ptr %z.addr, align 8
  %call17 = call i32 @csv_boolean(ptr noundef %12)
  store i32 %call17, ptr %b, align 4
  %13 = load i32, ptr %b, align 4
  %cmp18 = icmp sge i32 %13, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end14
  %14 = load i32, ptr %b, align 4
  %15 = load ptr, ptr %pValue.addr, align 8
  store i32 %14, ptr %15, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then13, %if.then7, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @csv_errmsg(ptr noundef %p, ptr noundef %zFormat, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %p.addr, align 8
  %zErr = getelementptr inbounds %struct.CsvReader, ptr %0, i32 0, i32 10
  %arraydecay = getelementptr inbounds [200 x i8], ptr %zErr, i64 0, i64 0
  %1 = load ptr, ptr %zFormat.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vsnprintf(i32 noundef 200, ptr noundef %arraydecay, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @csv_parameter(ptr noundef %zTag, i32 noundef %nTag, ptr noundef %z) #0 {
entry:
  %retval = alloca ptr, align 8
  %zTag.addr = alloca ptr, align 8
  %nTag.addr = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  store ptr %zTag, ptr %zTag.addr, align 8
  store i32 %nTag, ptr %nTag.addr, align 4
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %call = call ptr @csv_skip_whitespace(ptr noundef %0)
  store ptr %call, ptr %z.addr, align 8
  %1 = load ptr, ptr %zTag.addr, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %3 = load i32, ptr %nTag.addr, align 4
  %conv = sext i32 %3 to i64
  %call1 = call i32 @strncmp(ptr noundef %1, ptr noundef %2, i64 noundef %conv)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %z.addr, align 8
  %5 = load i32, ptr %nTag.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %call3 = call ptr @csv_skip_whitespace(ptr noundef %add.ptr)
  store ptr %call3, ptr %z.addr, align 8
  %6 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv4, 61
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end
  %8 = load ptr, ptr %z.addr, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %8, i64 1
  %call10 = call ptr @csv_skip_whitespace(ptr noundef %add.ptr9)
  store ptr %call10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

declare i32 @atoi(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csv_reader_open(ptr noundef %p, ptr noundef %zFilename, ptr noundef %zData) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %zFilename.addr = alloca ptr, align 8
  %zData.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store ptr %zData, ptr %zData.addr, align 8
  %0 = load ptr, ptr %zFilename.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @sqlite3_malloc64(i64 noundef 1024)
  %1 = load ptr, ptr %p.addr, align 8
  %zIn = getelementptr inbounds %struct.CsvReader, ptr %1, i32 0, i32 9
  store ptr %call, ptr %zIn, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %zIn1 = getelementptr inbounds %struct.CsvReader, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %zIn1, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %4, ptr noundef @.str.18)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %zFilename.addr, align 8
  %call3 = call ptr @"\01_fopen"(ptr noundef %5, ptr noundef @.str.27)
  %6 = load ptr, ptr %p.addr, align 8
  %in = getelementptr inbounds %struct.CsvReader, ptr %6, i32 0, i32 0
  store ptr %call3, ptr %in, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %in4 = getelementptr inbounds %struct.CsvReader, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %in4, align 8
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %p.addr, align 8
  %zIn7 = getelementptr inbounds %struct.CsvReader, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %zIn7, align 8
  call void @sqlite3_free(ptr noundef %10)
  %11 = load ptr, ptr %p.addr, align 8
  call void @csv_reader_reset(ptr noundef %11)
  %12 = load ptr, ptr %p.addr, align 8
  %13 = load ptr, ptr %zFilename.addr, align 8
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %12, ptr noundef @.str.28, ptr noundef %13)
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  br label %if.end14

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %p.addr, align 8
  %in9 = getelementptr inbounds %struct.CsvReader, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %in9, align 8
  %cmp10 = icmp eq ptr %15, null
  %lnot = xor i1 %cmp10, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool11 = icmp ne i64 %conv, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  call void @__assert_rtn(ptr noundef @__func__.csv_reader_open, ptr noundef @.str.29, i32 noundef 145, ptr noundef @.str.30) #9
  unreachable

16:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %16
  %17 = load ptr, ptr %zData.addr, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %zIn12 = getelementptr inbounds %struct.CsvReader, ptr %18, i32 0, i32 9
  store ptr %17, ptr %zIn12, align 8
  %19 = load ptr, ptr %zData.addr, align 8
  %call13 = call i64 @strlen(ptr noundef %19)
  %20 = load ptr, ptr %p.addr, align 8
  %nIn = getelementptr inbounds %struct.CsvReader, ptr %20, i32 0, i32 8
  store i64 %call13, ptr %nIn, align 8
  br label %if.end14

if.end14:                                         ; preds = %cond.end, %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then6, %if.then2
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare ptr @sqlite3_str_new(ptr noundef) #1

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @csv_read_one_field(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %pc = alloca i32, align 4
  %ppc = alloca i32, align 4
  %startLine = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %n = getelementptr inbounds %struct.CsvReader, ptr %0, i32 0, i32 2
  store i64 0, ptr %n, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %call = call i32 @csv_getc(ptr noundef %1)
  store i32 %call, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %cTerm = getelementptr inbounds %struct.CsvReader, ptr %3, i32 0, i32 6
  store i32 -1, ptr %cTerm, align 4
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %c, align 4
  %cmp1 = icmp eq i32 %4, 34
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8
  %nLine = getelementptr inbounds %struct.CsvReader, ptr %5, i32 0, i32 4
  %6 = load i64, ptr %nLine, align 8
  store i64 %6, ptr %startLine, align 8
  store i32 0, ptr %ppc, align 4
  store i32 0, ptr %pc, align 4
  br label %while.body

while.body:                                       ; preds = %if.then2, %if.then14, %if.end61
  %7 = load ptr, ptr %p.addr, align 8
  %call3 = call i32 @csv_getc(ptr noundef %7)
  store i32 %call3, ptr %c, align 4
  %8 = load i32, ptr %c, align 4
  %cmp4 = icmp sle i32 %8, 34
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %9 = load i32, ptr %pc, align 4
  %cmp5 = icmp eq i32 %9, 34
  br i1 %cmp5, label %if.then6, label %if.end57

if.then6:                                         ; preds = %lor.lhs.false, %while.body
  %10 = load i32, ptr %c, align 4
  %cmp7 = icmp eq i32 %10, 10
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %11 = load ptr, ptr %p.addr, align 8
  %nLine9 = getelementptr inbounds %struct.CsvReader, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %nLine9, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, ptr %nLine9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6
  %13 = load i32, ptr %c, align 4
  %cmp11 = icmp eq i32 %13, 34
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end10
  %14 = load i32, ptr %pc, align 4
  %cmp13 = icmp eq i32 %14, 34
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  store i32 0, ptr %pc, align 4
  br label %while.body

if.end15:                                         ; preds = %if.then12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end10
  %15 = load i32, ptr %c, align 4
  %cmp17 = icmp eq i32 %15, 44
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false19

land.lhs.true:                                    ; preds = %if.end16
  %16 = load i32, ptr %pc, align 4
  %cmp18 = icmp eq i32 %16, 34
  br i1 %cmp18, label %if.then33, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true, %if.end16
  %17 = load i32, ptr %c, align 4
  %cmp20 = icmp eq i32 %17, 10
  br i1 %cmp20, label %land.lhs.true21, label %lor.lhs.false23

land.lhs.true21:                                  ; preds = %lor.lhs.false19
  %18 = load i32, ptr %pc, align 4
  %cmp22 = icmp eq i32 %18, 34
  br i1 %cmp22, label %if.then33, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %land.lhs.true21, %lor.lhs.false19
  %19 = load i32, ptr %c, align 4
  %cmp24 = icmp eq i32 %19, 10
  br i1 %cmp24, label %land.lhs.true25, label %lor.lhs.false29

land.lhs.true25:                                  ; preds = %lor.lhs.false23
  %20 = load i32, ptr %pc, align 4
  %cmp26 = icmp eq i32 %20, 13
  br i1 %cmp26, label %land.lhs.true27, label %lor.lhs.false29

land.lhs.true27:                                  ; preds = %land.lhs.true25
  %21 = load i32, ptr %ppc, align 4
  %cmp28 = icmp eq i32 %21, 34
  br i1 %cmp28, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %land.lhs.true27, %land.lhs.true25, %lor.lhs.false23
  %22 = load i32, ptr %c, align 4
  %cmp30 = icmp eq i32 %22, -1
  br i1 %cmp30, label %land.lhs.true31, label %if.end41

land.lhs.true31:                                  ; preds = %lor.lhs.false29
  %23 = load i32, ptr %pc, align 4
  %cmp32 = icmp eq i32 %23, 34
  br i1 %cmp32, label %if.then33, label %if.end41

if.then33:                                        ; preds = %land.lhs.true31, %land.lhs.true27, %land.lhs.true21, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then33
  %24 = load ptr, ptr %p.addr, align 8
  %n34 = getelementptr inbounds %struct.CsvReader, ptr %24, i32 0, i32 2
  %25 = load i64, ptr %n34, align 8
  %dec = add nsw i64 %25, -1
  store i64 %dec, ptr %n34, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %26 = load ptr, ptr %p.addr, align 8
  %z = getelementptr inbounds %struct.CsvReader, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %z, align 8
  %28 = load ptr, ptr %p.addr, align 8
  %n35 = getelementptr inbounds %struct.CsvReader, ptr %28, i32 0, i32 2
  %29 = load i64, ptr %n35, align 8
  %arrayidx = getelementptr inbounds i8, ptr %27, i64 %29
  %30 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %30 to i32
  %cmp36 = icmp ne i32 %conv, 34
  br i1 %cmp36, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %do.cond
  %31 = load i32, ptr %c, align 4
  %conv38 = trunc i32 %31 to i8
  %conv39 = sext i8 %conv38 to i32
  %32 = load ptr, ptr %p.addr, align 8
  %cTerm40 = getelementptr inbounds %struct.CsvReader, ptr %32, i32 0, i32 6
  store i32 %conv39, ptr %cTerm40, align 4
  br label %while.end

if.end41:                                         ; preds = %land.lhs.true31, %lor.lhs.false29
  %33 = load i32, ptr %pc, align 4
  %cmp42 = icmp eq i32 %33, 34
  br i1 %cmp42, label %land.lhs.true44, label %if.end49

land.lhs.true44:                                  ; preds = %if.end41
  %34 = load i32, ptr %c, align 4
  %cmp45 = icmp ne i32 %34, 13
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %land.lhs.true44
  %35 = load ptr, ptr %p.addr, align 8
  %36 = load ptr, ptr %p.addr, align 8
  %nLine48 = getelementptr inbounds %struct.CsvReader, ptr %36, i32 0, i32 4
  %37 = load i64, ptr %nLine48, align 8
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %35, ptr noundef @.str.31, i64 noundef %37, i32 noundef 34)
  br label %while.end

if.end49:                                         ; preds = %land.lhs.true44, %if.end41
  %38 = load i32, ptr %c, align 4
  %cmp50 = icmp eq i32 %38, -1
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.end49
  %39 = load ptr, ptr %p.addr, align 8
  %40 = load i64, ptr %startLine, align 8
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %39, ptr noundef @.str.32, i64 noundef %40, i32 noundef 34)
  %41 = load i32, ptr %c, align 4
  %conv53 = trunc i32 %41 to i8
  %conv54 = sext i8 %conv53 to i32
  %42 = load ptr, ptr %p.addr, align 8
  %cTerm55 = getelementptr inbounds %struct.CsvReader, ptr %42, i32 0, i32 6
  store i32 %conv54, ptr %cTerm55, align 4
  br label %while.end

if.end56:                                         ; preds = %if.end49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %lor.lhs.false
  %43 = load ptr, ptr %p.addr, align 8
  %44 = load i32, ptr %c, align 4
  %conv58 = trunc i32 %44 to i8
  %call59 = call i32 @csv_append(ptr noundef %43, i8 noundef signext %conv58)
  %tobool = icmp ne i32 %call59, 0
  br i1 %tobool, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  store ptr null, ptr %retval, align 8
  br label %return

if.end61:                                         ; preds = %if.end57
  %45 = load i32, ptr %pc, align 4
  store i32 %45, ptr %ppc, align 4
  %46 = load i32, ptr %c, align 4
  store i32 %46, ptr %pc, align 4
  br label %while.body

while.end:                                        ; preds = %if.then52, %if.then47, %do.end
  br label %if.end128

if.else:                                          ; preds = %if.end
  %47 = load i32, ptr %c, align 4
  %and = and i32 %47, 255
  %cmp62 = icmp eq i32 %and, 239
  br i1 %cmp62, label %land.lhs.true64, label %if.end87

land.lhs.true64:                                  ; preds = %if.else
  %48 = load ptr, ptr %p.addr, align 8
  %bNotFirst = getelementptr inbounds %struct.CsvReader, ptr %48, i32 0, i32 5
  %49 = load i32, ptr %bNotFirst, align 8
  %cmp65 = icmp eq i32 %49, 0
  br i1 %cmp65, label %if.then67, label %if.end87

if.then67:                                        ; preds = %land.lhs.true64
  %50 = load ptr, ptr %p.addr, align 8
  %51 = load i32, ptr %c, align 4
  %conv68 = trunc i32 %51 to i8
  %call69 = call i32 @csv_append(ptr noundef %50, i8 noundef signext %conv68)
  %52 = load ptr, ptr %p.addr, align 8
  %call70 = call i32 @csv_getc(ptr noundef %52)
  store i32 %call70, ptr %c, align 4
  %53 = load i32, ptr %c, align 4
  %and71 = and i32 %53, 255
  %cmp72 = icmp eq i32 %and71, 187
  br i1 %cmp72, label %if.then74, label %if.end86

if.then74:                                        ; preds = %if.then67
  %54 = load ptr, ptr %p.addr, align 8
  %55 = load i32, ptr %c, align 4
  %conv75 = trunc i32 %55 to i8
  %call76 = call i32 @csv_append(ptr noundef %54, i8 noundef signext %conv75)
  %56 = load ptr, ptr %p.addr, align 8
  %call77 = call i32 @csv_getc(ptr noundef %56)
  store i32 %call77, ptr %c, align 4
  %57 = load i32, ptr %c, align 4
  %and78 = and i32 %57, 255
  %cmp79 = icmp eq i32 %and78, 191
  br i1 %cmp79, label %if.then81, label %if.end85

if.then81:                                        ; preds = %if.then74
  %58 = load ptr, ptr %p.addr, align 8
  %bNotFirst82 = getelementptr inbounds %struct.CsvReader, ptr %58, i32 0, i32 5
  store i32 1, ptr %bNotFirst82, align 8
  %59 = load ptr, ptr %p.addr, align 8
  %n83 = getelementptr inbounds %struct.CsvReader, ptr %59, i32 0, i32 2
  store i64 0, ptr %n83, align 8
  %60 = load ptr, ptr %p.addr, align 8
  %call84 = call ptr @csv_read_one_field(ptr noundef %60)
  store ptr %call84, ptr %retval, align 8
  br label %return

if.end85:                                         ; preds = %if.then74
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then67
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %land.lhs.true64, %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end102, %if.end87
  %61 = load i32, ptr %c, align 4
  %cmp88 = icmp sgt i32 %61, 44
  br i1 %cmp88, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %62 = load i32, ptr %c, align 4
  %cmp90 = icmp ne i32 %62, -1
  br i1 %cmp90, label %land.lhs.true92, label %land.end

land.lhs.true92:                                  ; preds = %lor.rhs
  %63 = load i32, ptr %c, align 4
  %cmp93 = icmp ne i32 %63, 44
  br i1 %cmp93, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true92
  %64 = load i32, ptr %c, align 4
  %cmp95 = icmp ne i32 %64, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true92, %lor.rhs
  %65 = phi i1 [ false, %land.lhs.true92 ], [ false, %lor.rhs ], [ %cmp95, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %66 = phi i1 [ true, %while.cond ], [ %65, %land.end ]
  br i1 %66, label %while.body97, label %while.end104

while.body97:                                     ; preds = %lor.end
  %67 = load ptr, ptr %p.addr, align 8
  %68 = load i32, ptr %c, align 4
  %conv98 = trunc i32 %68 to i8
  %call99 = call i32 @csv_append(ptr noundef %67, i8 noundef signext %conv98)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %while.body97
  store ptr null, ptr %retval, align 8
  br label %return

if.end102:                                        ; preds = %while.body97
  %69 = load ptr, ptr %p.addr, align 8
  %call103 = call i32 @csv_getc(ptr noundef %69)
  store i32 %call103, ptr %c, align 4
  br label %while.cond, !llvm.loop !19

while.end104:                                     ; preds = %lor.end
  %70 = load i32, ptr %c, align 4
  %cmp105 = icmp eq i32 %70, 10
  br i1 %cmp105, label %if.then107, label %if.end124

if.then107:                                       ; preds = %while.end104
  %71 = load ptr, ptr %p.addr, align 8
  %nLine108 = getelementptr inbounds %struct.CsvReader, ptr %71, i32 0, i32 4
  %72 = load i64, ptr %nLine108, align 8
  %inc109 = add nsw i64 %72, 1
  store i64 %inc109, ptr %nLine108, align 8
  %73 = load ptr, ptr %p.addr, align 8
  %n110 = getelementptr inbounds %struct.CsvReader, ptr %73, i32 0, i32 2
  %74 = load i64, ptr %n110, align 8
  %cmp111 = icmp sgt i64 %74, 0
  br i1 %cmp111, label %land.lhs.true113, label %if.end123

land.lhs.true113:                                 ; preds = %if.then107
  %75 = load ptr, ptr %p.addr, align 8
  %z114 = getelementptr inbounds %struct.CsvReader, ptr %75, i32 0, i32 1
  %76 = load ptr, ptr %z114, align 8
  %77 = load ptr, ptr %p.addr, align 8
  %n115 = getelementptr inbounds %struct.CsvReader, ptr %77, i32 0, i32 2
  %78 = load i64, ptr %n115, align 8
  %sub = sub nsw i64 %78, 1
  %arrayidx116 = getelementptr inbounds i8, ptr %76, i64 %sub
  %79 = load i8, ptr %arrayidx116, align 1
  %conv117 = sext i8 %79 to i32
  %cmp118 = icmp eq i32 %conv117, 13
  br i1 %cmp118, label %if.then120, label %if.end123

if.then120:                                       ; preds = %land.lhs.true113
  %80 = load ptr, ptr %p.addr, align 8
  %n121 = getelementptr inbounds %struct.CsvReader, ptr %80, i32 0, i32 2
  %81 = load i64, ptr %n121, align 8
  %dec122 = add nsw i64 %81, -1
  store i64 %dec122, ptr %n121, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %land.lhs.true113, %if.then107
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %while.end104
  %82 = load i32, ptr %c, align 4
  %conv125 = trunc i32 %82 to i8
  %conv126 = sext i8 %conv125 to i32
  %83 = load ptr, ptr %p.addr, align 8
  %cTerm127 = getelementptr inbounds %struct.CsvReader, ptr %83, i32 0, i32 6
  store i32 %conv126, ptr %cTerm127, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end124, %while.end
  %84 = load ptr, ptr %p.addr, align 8
  %z129 = getelementptr inbounds %struct.CsvReader, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %z129, align 8
  %cmp130 = icmp eq ptr %85, null
  br i1 %cmp130, label %lor.end136, label %lor.rhs132

lor.rhs132:                                       ; preds = %if.end128
  %86 = load ptr, ptr %p.addr, align 8
  %n133 = getelementptr inbounds %struct.CsvReader, ptr %86, i32 0, i32 2
  %87 = load i64, ptr %n133, align 8
  %88 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds %struct.CsvReader, ptr %88, i32 0, i32 3
  %89 = load i64, ptr %nAlloc, align 8
  %cmp134 = icmp slt i64 %87, %89
  br label %lor.end136

lor.end136:                                       ; preds = %lor.rhs132, %if.end128
  %90 = phi i1 [ true, %if.end128 ], [ %cmp134, %lor.rhs132 ]
  %lnot = xor i1 %90, true
  %lnot.ext = zext i1 %lnot to i32
  %conv137 = sext i32 %lnot.ext to i64
  %tobool138 = icmp ne i64 %conv137, 0
  br i1 %tobool138, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end136
  call void @__assert_rtn(ptr noundef @__func__.csv_read_one_field, ptr noundef @.str.29, i32 noundef 287, ptr noundef @.str.33) #9
  unreachable

91:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %lor.end136
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %91
  %92 = load ptr, ptr %p.addr, align 8
  %z139 = getelementptr inbounds %struct.CsvReader, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %z139, align 8
  %tobool140 = icmp ne ptr %93, null
  br i1 %tobool140, label %if.then141, label %if.end145

if.then141:                                       ; preds = %cond.end
  %94 = load ptr, ptr %p.addr, align 8
  %z142 = getelementptr inbounds %struct.CsvReader, ptr %94, i32 0, i32 1
  %95 = load ptr, ptr %z142, align 8
  %96 = load ptr, ptr %p.addr, align 8
  %n143 = getelementptr inbounds %struct.CsvReader, ptr %96, i32 0, i32 2
  %97 = load i64, ptr %n143, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %95, i64 %97
  store i8 0, ptr %arrayidx144, align 1
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %cond.end
  %98 = load ptr, ptr %p.addr, align 8
  %bNotFirst146 = getelementptr inbounds %struct.CsvReader, ptr %98, i32 0, i32 5
  store i32 1, ptr %bNotFirst146, align 8
  %99 = load ptr, ptr %p.addr, align 8
  %z147 = getelementptr inbounds %struct.CsvReader, ptr %99, i32 0, i32 1
  %100 = load ptr, ptr %z147, align 8
  store ptr %100, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end145, %if.then101, %if.then81, %if.then60, %if.then
  %101 = load ptr, ptr %retval, align 8
  ret ptr %101
}

declare ptr @sqlite3_str_finish(ptr noundef) #1

declare i64 @ftell(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @csv_reader_reset(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %in = getelementptr inbounds %struct.CsvReader, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %in, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %in1 = getelementptr inbounds %struct.CsvReader, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %in1, align 8
  %call = call i32 @fclose(ptr noundef %3)
  %4 = load ptr, ptr %p.addr, align 8
  %zIn = getelementptr inbounds %struct.CsvReader, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %zIn, align 8
  call void @sqlite3_free(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %p.addr, align 8
  %z = getelementptr inbounds %struct.CsvReader, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %z, align 8
  call void @sqlite3_free(ptr noundef %7)
  %8 = load ptr, ptr %p.addr, align 8
  call void @csv_reader_init(ptr noundef %8)
  ret void
}

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_errmsg(ptr noundef) #1

declare void @sqlite3_free(ptr noundef) #1

declare i32 @sqlite3_vtab_config(ptr noundef, i32 noundef, ...) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @csv_trim_whitespace(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  store i64 %call, ptr %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, ptr %n, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %z.addr, align 8
  %3 = load i64, ptr %n, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call1 = call i32 @isspace(i32 noundef %conv) #10
  %tobool = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, ptr %n, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %n, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %land.end
  %7 = load ptr, ptr %z.addr, align 8
  %8 = load i64, ptr %n, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 %8
  store i8 0, ptr %arrayidx2, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @csv_dequote(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %cQuote = alloca i8, align 1
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  store i8 %1, ptr %cQuote, align 1
  %2 = load i8, ptr %cQuote, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 39
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8, ptr %cQuote, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 34
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %z.addr, align 8
  %call = call i64 @strlen(ptr noundef %4)
  store i64 %call, ptr %n, align 8
  %5 = load i64, ptr %n, align 8
  %cmp5 = icmp ult i64 %5, 2
  br i1 %cmp5, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %z.addr, align 8
  %7 = load i64, ptr %n, align 8
  %sub = sub i64 %7, 1
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 %sub
  %8 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  %9 = load ptr, ptr %z.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv8, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  store i64 1, ptr %i, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %11 = load i64, ptr %i, align 8
  %12 = load i64, ptr %n, align 8
  %sub15 = sub i64 %12, 1
  %cmp16 = icmp ult i64 %11, %sub15
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %z.addr, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i64 %14
  %15 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %15 to i32
  %16 = load i8, ptr %cQuote, align 1
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp eq i32 %conv19, %conv20
  br i1 %cmp21, label %land.lhs.true23, label %if.end30

land.lhs.true23:                                  ; preds = %for.body
  %17 = load ptr, ptr %z.addr, align 8
  %18 = load i64, ptr %i, align 8
  %add = add i64 %18, 1
  %arrayidx24 = getelementptr inbounds i8, ptr %17, i64 %add
  %19 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %19 to i32
  %20 = load i8, ptr %cQuote, align 1
  %conv26 = sext i8 %20 to i32
  %cmp27 = icmp eq i32 %conv25, %conv26
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true23
  %21 = load i64, ptr %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %i, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true23, %for.body
  %22 = load ptr, ptr %z.addr, align 8
  %23 = load i64, ptr %i, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %22, i64 %23
  %24 = load i8, ptr %arrayidx31, align 1
  %25 = load ptr, ptr %z.addr, align 8
  %26 = load i32, ptr %j, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, ptr %j, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %25, i64 %idxprom
  store i8 %24, ptr %arrayidx33, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %27 = load i64, ptr %i, align 8
  %inc34 = add i64 %27, 1
  store i64 %inc34, ptr %i, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %z.addr, align 8
  %29 = load i32, ptr %j, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %28, i64 %idxprom35
  store i8 0, ptr %arrayidx36, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then13, %if.then
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @csv_skip_whitespace(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %call = call i32 @isspace(i32 noundef %conv) #10
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %z.addr, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %3 = load ptr, ptr %z.addr, align 8
  ret ptr %3
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csv_boolean(ptr noundef %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %call = call i32 @sqlite3_stricmp(ptr noundef @.str.21, ptr noundef %0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %call1 = call i32 @sqlite3_stricmp(ptr noundef @.str.22, ptr noundef %1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %z.addr, align 8
  %call4 = call i32 @sqlite3_stricmp(ptr noundef @.str.23, ptr noundef %2)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp7 = icmp eq i32 %conv, 49
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false6
  %5 = load ptr, ptr %z.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false6
  %7 = load ptr, ptr %z.addr, align 8
  %call13 = call i32 @sqlite3_stricmp(ptr noundef @.str.24, ptr noundef %7)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then34, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end
  %8 = load ptr, ptr %z.addr, align 8
  %call17 = call i32 @sqlite3_stricmp(ptr noundef @.str.25, ptr noundef %8)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then34, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %9 = load ptr, ptr %z.addr, align 8
  %call21 = call i32 @sqlite3_stricmp(ptr noundef @.str.26, ptr noundef %9)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then34, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %10 = load ptr, ptr %z.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %11 to i32
  %cmp27 = icmp eq i32 %conv26, 48
  br i1 %cmp27, label %land.lhs.true29, label %if.end35

land.lhs.true29:                                  ; preds = %lor.lhs.false24
  %12 = load ptr, ptr %z.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %13 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true29, %lor.lhs.false20, %lor.lhs.false16, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %land.lhs.true29, %lor.lhs.false24
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then34, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

declare ptr @sqlite3_vsnprintf(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csv_getc(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %iIn = getelementptr inbounds %struct.CsvReader, ptr %0, i32 0, i32 7
  %1 = load i64, ptr %iIn, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %nIn = getelementptr inbounds %struct.CsvReader, ptr %2, i32 0, i32 8
  %3 = load i64, ptr %nIn, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %in = getelementptr inbounds %struct.CsvReader, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %in, align 8
  %cmp1 = icmp ne ptr %5, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %p.addr, align 8
  %call = call i32 @csv_getc_refill(ptr noundef %6)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %7 = load ptr, ptr %p.addr, align 8
  %zIn = getelementptr inbounds %struct.CsvReader, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %zIn, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %iIn4 = getelementptr inbounds %struct.CsvReader, ptr %9, i32 0, i32 7
  %10 = load i64, ptr %iIn4, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %iIn4, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %10
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end, %if.then2
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csv_append(ptr noundef %p, i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  store i8 %c, ptr %c.addr, align 1
  %0 = load ptr, ptr %p.addr, align 8
  %n = getelementptr inbounds %struct.CsvReader, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %n, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds %struct.CsvReader, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %nAlloc, align 8
  %sub = sub nsw i64 %3, 1
  %cmp = icmp sge i64 %1, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %5 = load i8, ptr %c.addr, align 1
  %call = call i32 @csv_resize_and_append(ptr noundef %4, i8 noundef signext %5)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8, ptr %c.addr, align 1
  %7 = load ptr, ptr %p.addr, align 8
  %z = getelementptr inbounds %struct.CsvReader, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %z, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %n1 = getelementptr inbounds %struct.CsvReader, ptr %9, i32 0, i32 2
  %10 = load i64, ptr %n1, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %n1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %10
  store i8 %6, ptr %arrayidx, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csv_getc_refill(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %got = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %iIn = getelementptr inbounds %struct.CsvReader, ptr %0, i32 0, i32 7
  %1 = load i64, ptr %iIn, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %nIn = getelementptr inbounds %struct.CsvReader, ptr %2, i32 0, i32 8
  %3 = load i64, ptr %nIn, align 8
  %cmp = icmp uge i64 %1, %3
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.csv_getc_refill, ptr noundef @.str.29, i32 noundef 158, ptr noundef @.str.34) #9
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load ptr, ptr %p.addr, align 8
  %in = getelementptr inbounds %struct.CsvReader, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %in, align 8
  %cmp1 = icmp ne ptr %6, null
  %lnot3 = xor i1 %cmp1, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  %conv5 = sext i32 %lnot.ext4 to i64
  %tobool6 = icmp ne i64 %conv5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.csv_getc_refill, ptr noundef @.str.29, i32 noundef 159, ptr noundef @.str.35) #9
  unreachable

7:                                                ; No predecessors!
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %7
  %8 = load ptr, ptr %p.addr, align 8
  %zIn = getelementptr inbounds %struct.CsvReader, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %zIn, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %in10 = getelementptr inbounds %struct.CsvReader, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %in10, align 8
  %call = call i64 @fread(ptr noundef %9, i64 noundef 1, i64 noundef 1024, ptr noundef %11)
  store i64 %call, ptr %got, align 8
  %12 = load i64, ptr %got, align 8
  %cmp11 = icmp eq i64 %12, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end9
  %13 = load i64, ptr %got, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %nIn13 = getelementptr inbounds %struct.CsvReader, ptr %14, i32 0, i32 8
  store i64 %13, ptr %nIn13, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %iIn14 = getelementptr inbounds %struct.CsvReader, ptr %15, i32 0, i32 7
  store i64 1, ptr %iIn14, align 8
  %16 = load ptr, ptr %p.addr, align 8
  %zIn15 = getelementptr inbounds %struct.CsvReader, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %zIn15, align 8
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx, align 1
  %conv16 = sext i8 %18 to i32
  store i32 %conv16, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csv_resize_and_append(ptr noundef %p, i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  %zNew = alloca ptr, align 8
  %nNew = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store i8 %c, ptr %c.addr, align 1
  %0 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds %struct.CsvReader, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %nAlloc, align 8
  %mul = mul nsw i64 %1, 2
  %add = add nsw i64 %mul, 100
  store i64 %add, ptr %nNew, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %z = getelementptr inbounds %struct.CsvReader, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %z, align 8
  %4 = load i64, ptr %nNew, align 8
  %call = call ptr @sqlite3_realloc64(ptr noundef %3, i64 noundef %4)
  store ptr %call, ptr %zNew, align 8
  %5 = load ptr, ptr %zNew, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %zNew, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %z1 = getelementptr inbounds %struct.CsvReader, ptr %7, i32 0, i32 1
  store ptr %6, ptr %z1, align 8
  %8 = load i64, ptr %nNew, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %nAlloc2 = getelementptr inbounds %struct.CsvReader, ptr %9, i32 0, i32 3
  store i64 %8, ptr %nAlloc2, align 8
  %10 = load i8, ptr %c.addr, align 1
  %11 = load ptr, ptr %p.addr, align 8
  %z3 = getelementptr inbounds %struct.CsvReader, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %z3, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %n = getelementptr inbounds %struct.CsvReader, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %n, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %n, align 8
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %14
  store i8 %10, ptr %arrayidx, align 1
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @csv_errmsg(ptr noundef %15, ptr noundef @.str.18)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @csv_reader_init(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %in = getelementptr inbounds %struct.CsvReader, ptr %0, i32 0, i32 0
  store ptr null, ptr %in, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %z = getelementptr inbounds %struct.CsvReader, ptr %1, i32 0, i32 1
  store ptr null, ptr %z, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %n = getelementptr inbounds %struct.CsvReader, ptr %2, i32 0, i32 2
  store i64 0, ptr %n, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds %struct.CsvReader, ptr %3, i32 0, i32 3
  store i64 0, ptr %nAlloc, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %nLine = getelementptr inbounds %struct.CsvReader, ptr %4, i32 0, i32 4
  store i64 0, ptr %nLine, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %bNotFirst = getelementptr inbounds %struct.CsvReader, ptr %5, i32 0, i32 5
  store i32 0, ptr %bNotFirst, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %nIn = getelementptr inbounds %struct.CsvReader, ptr %6, i32 0, i32 8
  store i64 0, ptr %nIn, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %zIn = getelementptr inbounds %struct.CsvReader, ptr %7, i32 0, i32 9
  store ptr null, ptr %zIn, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %zErr = getelementptr inbounds %struct.CsvReader, ptr %8, i32 0, i32 10
  %arrayidx = getelementptr inbounds [200 x i8], ptr %zErr, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @csv_xfer_error(ptr noundef %pTab, ptr noundef %pRdr) #0 {
entry:
  %pTab.addr = alloca ptr, align 8
  %pRdr.addr = alloca ptr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pRdr, ptr %pRdr.addr, align 8
  %0 = load ptr, ptr %pTab.addr, align 8
  %base = getelementptr inbounds %struct.CsvTable, ptr %0, i32 0, i32 0
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %base, i32 0, i32 2
  %1 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3_free(ptr noundef %1)
  %2 = load ptr, ptr %pRdr.addr, align 8
  %zErr = getelementptr inbounds %struct.CsvReader, ptr %2, i32 0, i32 10
  %arraydecay = getelementptr inbounds [200 x i8], ptr %zErr, i64 0, i64 0
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.19, ptr noundef %arraydecay)
  %3 = load ptr, ptr %pTab.addr, align 8
  %base1 = getelementptr inbounds %struct.CsvTable, ptr %3, i32 0, i32 0
  %zErrMsg2 = getelementptr inbounds %struct.sqlite3_vtab, ptr %base1, i32 0, i32 2
  store ptr %call, ptr %zErrMsg2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @csvtabCursorRowReset(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.CsvCursor, ptr %0, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %1 = load ptr, ptr %pVtab, align 8
  store ptr %1, ptr %pTab, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds %struct.CsvTable, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %nCol, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pCur.addr, align 8
  %azVal = getelementptr inbounds %struct.CsvCursor, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %azVal, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  call void @sqlite3_free(ptr noundef %8)
  %9 = load ptr, ptr %pCur.addr, align 8
  %azVal1 = getelementptr inbounds %struct.CsvCursor, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %azVal1, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %10, i64 %idxprom2
  store ptr null, ptr %arrayidx3, align 8
  %12 = load ptr, ptr %pCur.addr, align 8
  %aLen = getelementptr inbounds %struct.CsvCursor, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %aLen, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds i64, ptr %13, i64 %idxprom4
  store i64 0, ptr %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn }
attributes #10 = { nounwind readonly willreturn }

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
