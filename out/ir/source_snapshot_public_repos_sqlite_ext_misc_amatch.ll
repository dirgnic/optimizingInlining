; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/amatch.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/amatch.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amatch_vtab = type { %struct.sqlite3_vtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32 }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.sqlite3_index_orderby = type { i32, i8 }
%struct.amatch_cursor = type { %struct.sqlite3_vtab_cursor, i64, i32, i32, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_vtab_cursor = type { ptr }
%struct.amatch_avl = type { ptr, ptr, ptr, ptr, ptr, i16, i16 }
%struct.amatch_word = type { ptr, %struct.amatch_avl, %struct.amatch_avl, i32, i32, [10 x i8], i16, [4 x i8] }
%struct.amatch_rule = type { ptr, ptr, i32, i32, i8, i8, [4 x i8] }

@.str = private unnamed_addr constant [18 x i8] c"approximate_match\00", align 1
@amatchModule = internal global %struct.sqlite3_module { i32 0, ptr @amatchConnect, ptr @amatchConnect, ptr @amatchBestIndex, ptr @amatchDisconnect, ptr @amatchDisconnect, ptr @amatchOpen, ptr @amatchClose, ptr @amatchFilter, ptr @amatchNext, ptr @amatchEof, ptr @amatchColumn, ptr @amatchRowid, ptr @amatchUpdate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"vocabulary_table\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"vocabulary_word\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"vocabulary_language\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"edit_distances\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unrecognized argument: [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"no edit_distances table specified\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"CREATE TABLE x(word,distance,language,command HIDDEN,nword HIDDEN)\00", align 1
@__func__.amatchDequote = private unnamed_addr constant [14 x i8] c"amatchDequote\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"amatch.c\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"(int)strlen(zOut)<=nIn\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"SELECT * FROM %Q.%Q\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%s: %s has %d columns, expected 4\00", align 1
@__func__.amatchLoadRules = private unnamed_addr constant [16 x i8] c"amatchLoadRules\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"p->pRule==0\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%s: cost must be between 1 and %d\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s: maximum string length is %d\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"%s: iLang must be between 0 and %d\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@__func__.amatchDisconnect = private unnamed_addr constant [17 x i8] c"amatchDisconnect\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"p->nCursor==0\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__func__.amatchAddWord = private unnamed_addr constant [14 x i8] c"amatchAddWord\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"pOther==0\00", align 1
@amatchEncodeInt.a = internal constant [65 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ^abcdefghijklmnopqrstuvwxyz~\00", align 1
@__func__.amatchAvlRemove = private unnamed_addr constant [16 x i8] c"amatchAvlRemove\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"pBalance==pOld\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"SELECT \22%w\22 FROM \22%w\22\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c" WHERE \22%w\22>=?1 AND \22%w\22=?2 ORDER BY 1\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"SELECT \22%w\22 FROM \22%w\22 WHERE \22%w\22>=?1 ORDER BY 1\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"DELETE from %s is not allowed\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"UPDATE of %s is not allowed\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"INSERT INTO %s allowed for column [command] only\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_amatch_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3_create_module(ptr noundef %2, ptr noundef @.str, ptr noundef @amatchModule, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  ret i32 %3
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
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
  %zModule = alloca ptr, align 8
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
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  store ptr %1, ptr %zModule, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx1, align 8
  store ptr %3, ptr %zDb, align 8
  %4 = load ptr, ptr %pAux.addr, align 8
  %5 = load ptr, ptr %ppVtab.addr, align 8
  store ptr null, ptr %5, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 128)
  store ptr %call, ptr %pNew, align 8
  %6 = load ptr, ptr %pNew, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 7, ptr %rc, align 4
  %7 = load ptr, ptr %pNew, align 8
  %8 = load ptr, ptr %pNew, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %call2 = call ptr @__memset_chk(ptr noundef %7, i32 noundef 0, i64 noundef 128, i64 noundef %9) #6
  %10 = load ptr, ptr %db.addr, align 8
  %11 = load ptr, ptr %pNew, align 8
  %db3 = getelementptr inbounds %struct.amatch_vtab, ptr %11, i32 0, i32 12
  store ptr %10, ptr %db3, align 8
  %12 = load ptr, ptr %zModule, align 8
  %call4 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %12)
  %13 = load ptr, ptr %pNew, align 8
  %zClassName = getelementptr inbounds %struct.amatch_vtab, ptr %13, i32 0, i32 1
  store ptr %call4, ptr %zClassName, align 8
  %14 = load ptr, ptr %pNew, align 8
  %zClassName5 = getelementptr inbounds %struct.amatch_vtab, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %zClassName5, align 8
  %cmp6 = icmp eq ptr %15, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %amatchConnectError

if.end8:                                          ; preds = %if.end
  %16 = load ptr, ptr %zDb, align 8
  %call9 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %16)
  %17 = load ptr, ptr %pNew, align 8
  %zDb10 = getelementptr inbounds %struct.amatch_vtab, ptr %17, i32 0, i32 2
  store ptr %call9, ptr %zDb10, align 8
  %18 = load ptr, ptr %pNew, align 8
  %zDb11 = getelementptr inbounds %struct.amatch_vtab, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %zDb11, align 8
  %cmp12 = icmp eq ptr %19, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  br label %amatchConnectError

if.end14:                                         ; preds = %if.end8
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %20, i64 2
  %21 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %21)
  %22 = load ptr, ptr %pNew, align 8
  %zSelf = getelementptr inbounds %struct.amatch_vtab, ptr %22, i32 0, i32 3
  store ptr %call16, ptr %zSelf, align 8
  %23 = load ptr, ptr %pNew, align 8
  %zSelf17 = getelementptr inbounds %struct.amatch_vtab, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %zSelf17, align 8
  %cmp18 = icmp eq ptr %24, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  br label %amatchConnectError

if.end20:                                         ; preds = %if.end14
  store i32 3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end20
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %argc.addr, align 4
  %cmp21 = icmp slt i32 %25, %26
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %argv.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %27, i64 %idxprom
  %29 = load ptr, ptr %arrayidx22, align 8
  %call23 = call ptr @amatchValueOfKey(ptr noundef @.str.2, ptr noundef %29)
  store ptr %call23, ptr %zVal, align 8
  %30 = load ptr, ptr %zVal, align 8
  %tobool = icmp ne ptr %30, null
  br i1 %tobool, label %if.then24, label %if.end31

if.then24:                                        ; preds = %for.body
  %31 = load ptr, ptr %pNew, align 8
  %zVocabTab = getelementptr inbounds %struct.amatch_vtab, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %zVocabTab, align 8
  call void @sqlite3_free(ptr noundef %32)
  %33 = load ptr, ptr %zVal, align 8
  %call25 = call ptr @amatchDequote(ptr noundef %33)
  %34 = load ptr, ptr %pNew, align 8
  %zVocabTab26 = getelementptr inbounds %struct.amatch_vtab, ptr %34, i32 0, i32 5
  store ptr %call25, ptr %zVocabTab26, align 8
  %35 = load ptr, ptr %pNew, align 8
  %zVocabTab27 = getelementptr inbounds %struct.amatch_vtab, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %zVocabTab27, align 8
  %cmp28 = icmp eq ptr %36, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then24
  br label %amatchConnectError

if.end30:                                         ; preds = %if.then24
  br label %for.inc

if.end31:                                         ; preds = %for.body
  %37 = load ptr, ptr %argv.addr, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %37, i64 %idxprom32
  %39 = load ptr, ptr %arrayidx33, align 8
  %call34 = call ptr @amatchValueOfKey(ptr noundef @.str.3, ptr noundef %39)
  store ptr %call34, ptr %zVal, align 8
  %40 = load ptr, ptr %zVal, align 8
  %tobool35 = icmp ne ptr %40, null
  br i1 %tobool35, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.end31
  %41 = load ptr, ptr %pNew, align 8
  %zVocabWord = getelementptr inbounds %struct.amatch_vtab, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %zVocabWord, align 8
  call void @sqlite3_free(ptr noundef %42)
  %43 = load ptr, ptr %zVal, align 8
  %call37 = call ptr @amatchDequote(ptr noundef %43)
  %44 = load ptr, ptr %pNew, align 8
  %zVocabWord38 = getelementptr inbounds %struct.amatch_vtab, ptr %44, i32 0, i32 6
  store ptr %call37, ptr %zVocabWord38, align 8
  %45 = load ptr, ptr %pNew, align 8
  %zVocabWord39 = getelementptr inbounds %struct.amatch_vtab, ptr %45, i32 0, i32 6
  %46 = load ptr, ptr %zVocabWord39, align 8
  %cmp40 = icmp eq ptr %46, null
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then36
  br label %amatchConnectError

if.end42:                                         ; preds = %if.then36
  br label %for.inc

if.end43:                                         ; preds = %if.end31
  %47 = load ptr, ptr %argv.addr, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %48 to i64
  %arrayidx45 = getelementptr inbounds ptr, ptr %47, i64 %idxprom44
  %49 = load ptr, ptr %arrayidx45, align 8
  %call46 = call ptr @amatchValueOfKey(ptr noundef @.str.4, ptr noundef %49)
  store ptr %call46, ptr %zVal, align 8
  %50 = load ptr, ptr %zVal, align 8
  %tobool47 = icmp ne ptr %50, null
  br i1 %tobool47, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end43
  %51 = load ptr, ptr %pNew, align 8
  %zVocabLang = getelementptr inbounds %struct.amatch_vtab, ptr %51, i32 0, i32 7
  %52 = load ptr, ptr %zVocabLang, align 8
  call void @sqlite3_free(ptr noundef %52)
  %53 = load ptr, ptr %zVal, align 8
  %call49 = call ptr @amatchDequote(ptr noundef %53)
  %54 = load ptr, ptr %pNew, align 8
  %zVocabLang50 = getelementptr inbounds %struct.amatch_vtab, ptr %54, i32 0, i32 7
  store ptr %call49, ptr %zVocabLang50, align 8
  %55 = load ptr, ptr %pNew, align 8
  %zVocabLang51 = getelementptr inbounds %struct.amatch_vtab, ptr %55, i32 0, i32 7
  %56 = load ptr, ptr %zVocabLang51, align 8
  %cmp52 = icmp eq ptr %56, null
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then48
  br label %amatchConnectError

if.end54:                                         ; preds = %if.then48
  br label %for.inc

if.end55:                                         ; preds = %if.end43
  %57 = load ptr, ptr %argv.addr, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %58 to i64
  %arrayidx57 = getelementptr inbounds ptr, ptr %57, i64 %idxprom56
  %59 = load ptr, ptr %arrayidx57, align 8
  %call58 = call ptr @amatchValueOfKey(ptr noundef @.str.5, ptr noundef %59)
  store ptr %call58, ptr %zVal, align 8
  %60 = load ptr, ptr %zVal, align 8
  %tobool59 = icmp ne ptr %60, null
  br i1 %tobool59, label %if.then60, label %if.end67

if.then60:                                        ; preds = %if.end55
  %61 = load ptr, ptr %pNew, align 8
  %zCostTab = getelementptr inbounds %struct.amatch_vtab, ptr %61, i32 0, i32 4
  %62 = load ptr, ptr %zCostTab, align 8
  call void @sqlite3_free(ptr noundef %62)
  %63 = load ptr, ptr %zVal, align 8
  %call61 = call ptr @amatchDequote(ptr noundef %63)
  %64 = load ptr, ptr %pNew, align 8
  %zCostTab62 = getelementptr inbounds %struct.amatch_vtab, ptr %64, i32 0, i32 4
  store ptr %call61, ptr %zCostTab62, align 8
  %65 = load ptr, ptr %pNew, align 8
  %zCostTab63 = getelementptr inbounds %struct.amatch_vtab, ptr %65, i32 0, i32 4
  %66 = load ptr, ptr %zCostTab63, align 8
  %cmp64 = icmp eq ptr %66, null
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then60
  br label %amatchConnectError

if.end66:                                         ; preds = %if.then60
  br label %for.inc

if.end67:                                         ; preds = %if.end55
  %67 = load ptr, ptr %argv.addr, align 8
  %68 = load i32, ptr %i, align 4
  %idxprom68 = sext i32 %68 to i64
  %arrayidx69 = getelementptr inbounds ptr, ptr %67, i64 %idxprom68
  %69 = load ptr, ptr %arrayidx69, align 8
  %call70 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.6, ptr noundef %69)
  %70 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call70, ptr %70, align 8
  %71 = load ptr, ptr %pNew, align 8
  call void @amatchFree(ptr noundef %71)
  %72 = load ptr, ptr %ppVtab.addr, align 8
  store ptr null, ptr %72, align 8
  store i32 1, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %if.end66, %if.end54, %if.end42, %if.end30
  %73 = load i32, ptr %i, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %rc, align 4
  %74 = load ptr, ptr %pNew, align 8
  %zCostTab71 = getelementptr inbounds %struct.amatch_vtab, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %zCostTab71, align 8
  %cmp72 = icmp eq ptr %75, null
  br i1 %cmp72, label %if.then73, label %if.else

if.then73:                                        ; preds = %for.end
  %call74 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.7)
  %76 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call74, ptr %76, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end76

if.else:                                          ; preds = %for.end
  %77 = load ptr, ptr %db.addr, align 8
  %78 = load ptr, ptr %pNew, align 8
  %79 = load ptr, ptr %pzErr.addr, align 8
  %call75 = call i32 @amatchLoadRules(ptr noundef %77, ptr noundef %78, ptr noundef %79)
  store i32 %call75, ptr %rc, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then73
  %80 = load i32, ptr %rc, align 4
  %cmp77 = icmp eq i32 %80, 0
  br i1 %cmp77, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.end76
  %81 = load ptr, ptr %db.addr, align 8
  %call79 = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %81, i32 noundef 2)
  %82 = load ptr, ptr %db.addr, align 8
  %call80 = call i32 @sqlite3_declare_vtab(ptr noundef %82, ptr noundef @.str.8)
  store i32 %call80, ptr %rc, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end76
  %83 = load i32, ptr %rc, align 4
  %cmp82 = icmp ne i32 %83, 0
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end81
  %84 = load ptr, ptr %pNew, align 8
  call void @amatchFree(ptr noundef %84)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end81
  %85 = load ptr, ptr %pNew, align 8
  %base = getelementptr inbounds %struct.amatch_vtab, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %base, ptr %86, align 8
  %87 = load i32, ptr %rc, align 4
  store i32 %87, ptr %retval, align 4
  br label %return

amatchConnectError:                               ; preds = %if.then65, %if.then53, %if.then41, %if.then29, %if.then19, %if.then13, %if.then7
  %88 = load ptr, ptr %pNew, align 8
  call void @amatchFree(ptr noundef %88)
  %89 = load i32, ptr %rc, align 4
  store i32 %89, ptr %retval, align 4
  br label %return

return:                                           ; preds = %amatchConnectError, %if.end84, %if.end67, %if.then
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %iPlan = alloca i32, align 4
  %iDistTerm = alloca i32, align 4
  %iLangTerm = alloca i32, align 4
  %i = alloca i32, align 4
  %pConstraint = alloca ptr, align 8
  %idx = alloca i32, align 4
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i32 0, ptr %iPlan, align 4
  store i32 -1, ptr %iDistTerm, align 4
  store i32 -1, ptr %iLangTerm, align 4
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
  %8 = load i32, ptr %iPlan, align 4
  %and = and i32 %8, 1
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %pConstraint, align 8
  %iColumn = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %iColumn, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %land.lhs.true7, label %if.end15

land.lhs.true7:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %pConstraint, align 8
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %11, i32 0, i32 1
  %12 = load i8, ptr %op, align 4
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 64
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
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %land.lhs.true7, %land.lhs.true, %if.end
  %20 = load i32, ptr %iPlan, align 4
  %and16 = and i32 %20, 2
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.end34

land.lhs.true19:                                  ; preds = %if.end15
  %21 = load ptr, ptr %pConstraint, align 8
  %iColumn20 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %iColumn20, align 4
  %cmp21 = icmp eq i32 %22, 1
  br i1 %cmp21, label %land.lhs.true23, label %if.end34

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %23 = load ptr, ptr %pConstraint, align 8
  %op24 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %23, i32 0, i32 1
  %24 = load i8, ptr %op24, align 4
  %conv25 = zext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 16
  br i1 %cmp26, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true23
  %25 = load ptr, ptr %pConstraint, align 8
  %op28 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %25, i32 0, i32 1
  %26 = load i8, ptr %op28, align 4
  %conv29 = zext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv29, 8
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %lor.lhs.false, %land.lhs.true23
  %27 = load i32, ptr %iPlan, align 4
  %or33 = or i32 %27, 2
  store i32 %or33, ptr %iPlan, align 4
  %28 = load i32, ptr %i, align 4
  store i32 %28, ptr %iDistTerm, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %lor.lhs.false, %land.lhs.true19, %if.end15
  %29 = load i32, ptr %iPlan, align 4
  %and35 = and i32 %29, 4
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %land.lhs.true38, label %if.end53

land.lhs.true38:                                  ; preds = %if.end34
  %30 = load ptr, ptr %pConstraint, align 8
  %iColumn39 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %iColumn39, align 4
  %cmp40 = icmp eq i32 %31, 2
  br i1 %cmp40, label %land.lhs.true42, label %if.end53

land.lhs.true42:                                  ; preds = %land.lhs.true38
  %32 = load ptr, ptr %pConstraint, align 8
  %op43 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %32, i32 0, i32 1
  %33 = load i8, ptr %op43, align 4
  %conv44 = zext i8 %33 to i32
  %cmp45 = icmp eq i32 %conv44, 2
  br i1 %cmp45, label %if.then47, label %if.end53

if.then47:                                        ; preds = %land.lhs.true42
  %34 = load i32, ptr %iPlan, align 4
  %or48 = or i32 %34, 4
  store i32 %or48, ptr %iPlan, align 4
  %35 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage49 = getelementptr inbounds %struct.sqlite3_index_info, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %aConstraintUsage49, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %36, i64 %idxprom50
  %omit52 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx51, i32 0, i32 1
  store i8 1, ptr %omit52, align 4
  %38 = load i32, ptr %i, align 4
  store i32 %38, ptr %iLangTerm, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %land.lhs.true42, %land.lhs.true38, %if.end34
  br label %for.inc

for.inc:                                          ; preds = %if.end53, %if.then
  %39 = load i32, ptr %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4
  %40 = load ptr, ptr %pConstraint, align 8
  %incdec.ptr = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %pConstraint, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %41 = load i32, ptr %iPlan, align 4
  %and54 = and i32 %41, 2
  %tobool = icmp ne i32 %and54, 0
  br i1 %tobool, label %if.then55, label %if.end63

if.then55:                                        ; preds = %for.end
  %42 = load i32, ptr %iPlan, align 4
  %and56 = and i32 %42, 1
  %cmp57 = icmp ne i32 %and56, 0
  %conv58 = zext i1 %cmp57 to i32
  %add = add nsw i32 1, %conv58
  %43 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage59 = getelementptr inbounds %struct.sqlite3_index_info, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %aConstraintUsage59, align 8
  %45 = load i32, ptr %iDistTerm, align 4
  %idxprom60 = sext i32 %45 to i64
  %arrayidx61 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %44, i64 %idxprom60
  %argvIndex62 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx61, i32 0, i32 0
  store i32 %add, ptr %argvIndex62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %for.end
  %46 = load i32, ptr %iPlan, align 4
  %and64 = and i32 %46, 4
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end81

if.then66:                                        ; preds = %if.end63
  store i32 1, ptr %idx, align 4
  %47 = load i32, ptr %iPlan, align 4
  %and67 = and i32 %47, 1
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.then66
  %48 = load i32, ptr %idx, align 4
  %inc70 = add nsw i32 %48, 1
  store i32 %inc70, ptr %idx, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then66
  %49 = load i32, ptr %iPlan, align 4
  %and72 = and i32 %49, 2
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end71
  %50 = load i32, ptr %idx, align 4
  %inc75 = add nsw i32 %50, 1
  store i32 %inc75, ptr %idx, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end71
  %51 = load i32, ptr %idx, align 4
  %52 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage77 = getelementptr inbounds %struct.sqlite3_index_info, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %aConstraintUsage77, align 8
  %54 = load i32, ptr %iLangTerm, align 4
  %idxprom78 = sext i32 %54 to i64
  %arrayidx79 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %53, i64 %idxprom78
  %argvIndex80 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx79, i32 0, i32 0
  store i32 %51, ptr %argvIndex80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end76, %if.end63
  %55 = load i32, ptr %iPlan, align 4
  %56 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %56, i32 0, i32 5
  store i32 %55, ptr %idxNum, align 8
  %57 = load ptr, ptr %pIdxInfo.addr, align 8
  %nOrderBy = getelementptr inbounds %struct.sqlite3_index_info, ptr %57, i32 0, i32 2
  %58 = load i32, ptr %nOrderBy, align 8
  %cmp82 = icmp eq i32 %58, 1
  br i1 %cmp82, label %land.lhs.true84, label %if.end96

land.lhs.true84:                                  ; preds = %if.end81
  %59 = load ptr, ptr %pIdxInfo.addr, align 8
  %aOrderBy = getelementptr inbounds %struct.sqlite3_index_info, ptr %59, i32 0, i32 3
  %60 = load ptr, ptr %aOrderBy, align 8
  %arrayidx85 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %60, i64 0
  %iColumn86 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %arrayidx85, i32 0, i32 0
  %61 = load i32, ptr %iColumn86, align 4
  %cmp87 = icmp eq i32 %61, 1
  br i1 %cmp87, label %land.lhs.true89, label %if.end96

land.lhs.true89:                                  ; preds = %land.lhs.true84
  %62 = load ptr, ptr %pIdxInfo.addr, align 8
  %aOrderBy90 = getelementptr inbounds %struct.sqlite3_index_info, ptr %62, i32 0, i32 3
  %63 = load ptr, ptr %aOrderBy90, align 8
  %arrayidx91 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %63, i64 0
  %desc = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %arrayidx91, i32 0, i32 1
  %64 = load i8, ptr %desc, align 4
  %conv92 = zext i8 %64 to i32
  %cmp93 = icmp eq i32 %conv92, 0
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %land.lhs.true89
  %65 = load ptr, ptr %pIdxInfo.addr, align 8
  %orderByConsumed = getelementptr inbounds %struct.sqlite3_index_info, ptr %65, i32 0, i32 8
  store i32 1, ptr %orderByConsumed, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %land.lhs.true89, %land.lhs.true84, %if.end81
  %66 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %66, i32 0, i32 9
  store double 1.000000e+04, ptr %estimatedCost, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %nCursor = getelementptr inbounds %struct.amatch_vtab, ptr %1, i32 0, i32 14
  %2 = load i32, ptr %nCursor, align 8
  %cmp = icmp eq i32 %2, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.amatchDisconnect, ptr noundef @.str.9, i32 noundef 800, ptr noundef @.str.20) #7
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %p, align 8
  call void @amatchFree(ptr noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchOpen(ptr noundef %pVTab, ptr noundef %ppCursor) #0 {
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
  %call = call ptr @sqlite3_malloc64(i64 noundef 96)
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
  %call1 = call ptr @__memset_chk(ptr noundef %2, i32 noundef 0, i64 noundef 96, i64 noundef %4) #6
  %5 = load ptr, ptr %p, align 8
  %6 = load ptr, ptr %pCur, align 8
  %pVtab = getelementptr inbounds %struct.amatch_cursor, ptr %6, i32 0, i32 9
  store ptr %5, ptr %pVtab, align 8
  %7 = load ptr, ptr %pCur, align 8
  %base = getelementptr inbounds %struct.amatch_cursor, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base, ptr %8, align 8
  %9 = load ptr, ptr %p, align 8
  %nCursor = getelementptr inbounds %struct.amatch_vtab, ptr %9, i32 0, i32 14
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
define internal i32 @amatchClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  call void @amatchClearCursor(ptr noundef %1)
  %2 = load ptr, ptr %pCur, align 8
  %pVtab = getelementptr inbounds %struct.amatch_cursor, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %pVtab, align 8
  %nCursor = getelementptr inbounds %struct.amatch_vtab, ptr %3, i32 0, i32 14
  %4 = load i32, ptr %nCursor, align 8
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %nCursor, align 8
  %5 = load ptr, ptr %pCur, align 8
  call void @sqlite3_free(ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %zWord = alloca ptr, align 8
  %idx = alloca i32, align 4
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store ptr @.str.21, ptr %zWord, align 8
  %1 = load ptr, ptr %pCur, align 8
  call void @amatchClearCursor(ptr noundef %1)
  store i32 0, ptr %idx, align 4
  %2 = load i32, ptr %idxNum.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %4)
  store ptr %call, ptr %zWord, align 8
  %5 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %idxNum.addr, align 4
  %and1 = and i32 %6, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %argv.addr, align 8
  %8 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @sqlite3_value_int(ptr noundef %9)
  %10 = load ptr, ptr %pCur, align 8
  %rLimit = getelementptr inbounds %struct.amatch_cursor, ptr %10, i32 0, i32 3
  store i32 %call5, ptr %rLimit, align 4
  %11 = load i32, ptr %idx, align 4
  %inc6 = add nsw i32 %11, 1
  store i32 %inc6, ptr %idx, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %12 = load i32, ptr %idxNum.addr, align 4
  %and8 = and i32 %12, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr %argv.addr, align 8
  %14 = load i32, ptr %idx, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %13, i64 %idxprom11
  %15 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @sqlite3_value_int(ptr noundef %15)
  %16 = load ptr, ptr %pCur, align 8
  %iLang = getelementptr inbounds %struct.amatch_cursor, ptr %16, i32 0, i32 2
  store i32 %call13, ptr %iLang, align 8
  %17 = load i32, ptr %idx, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, ptr %idx, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end7
  %18 = load ptr, ptr %zWord, align 8
  %call16 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %18)
  %19 = load ptr, ptr %pCur, align 8
  %zInput = getelementptr inbounds %struct.amatch_cursor, ptr %19, i32 0, i32 8
  store ptr %call16, ptr %zInput, align 8
  %20 = load ptr, ptr %pCur, align 8
  %zInput17 = getelementptr inbounds %struct.amatch_cursor, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %zInput17, align 8
  %cmp = icmp eq ptr %21, null
  br i1 %cmp, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  store i32 7, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %22 = load ptr, ptr %pCur, align 8
  call void @amatchAddWord(ptr noundef %22, i32 noundef 0, i32 noundef 0, ptr noundef @.str.15, ptr noundef @.str.15)
  %23 = load ptr, ptr %pVtabCursor.addr, align 8
  %call20 = call i32 @amatchNext(ptr noundef %23)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then18
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchNext(ptr noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pWord = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %isMatch = alloca i32, align 4
  %p = alloca ptr, align 8
  %nWord = alloca i64, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %zW = alloca ptr, align 8
  %pRule = alloca ptr, align 8
  %zBuf = alloca ptr, align 8
  %nBuf = alloca i64, align 8
  %zNext = alloca [8 x i8], align 1
  %zNextIn = alloca [8 x i8], align 1
  %nNextIn = alloca i32, align 4
  %zSql = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store ptr null, ptr %pWord, align 8
  store i32 0, ptr %isMatch, align 4
  %1 = load ptr, ptr %pCur, align 8
  %pVtab = getelementptr inbounds %struct.amatch_cursor, ptr %1, i32 0, i32 9
  %2 = load ptr, ptr %pVtab, align 8
  store ptr %2, ptr %p, align 8
  store ptr null, ptr %zBuf, align 8
  store i64 0, ptr %nBuf, align 8
  %3 = load ptr, ptr %p, align 8
  %pVCheck = getelementptr inbounds %struct.amatch_vtab, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %pVCheck, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p, align 8
  %zVocabLang = getelementptr inbounds %struct.amatch_vtab, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %zVocabLang, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load ptr, ptr %p, align 8
  %zVocabLang1 = getelementptr inbounds %struct.amatch_vtab, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %zVocabLang1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %p, align 8
  %zVocabWord = getelementptr inbounds %struct.amatch_vtab, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %zVocabWord, align 8
  %12 = load ptr, ptr %p, align 8
  %zVocabTab = getelementptr inbounds %struct.amatch_vtab, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %zVocabTab, align 8
  %14 = load ptr, ptr %p, align 8
  %zVocabWord4 = getelementptr inbounds %struct.amatch_vtab, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %zVocabWord4, align 8
  %16 = load ptr, ptr %p, align 8
  %zVocabLang5 = getelementptr inbounds %struct.amatch_vtab, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %zVocabLang5, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.24, ptr noundef @.str.25, ptr noundef %11, ptr noundef %13, ptr noundef %15, ptr noundef %17)
  store ptr %call, ptr %zSql, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %18 = load ptr, ptr %p, align 8
  %zVocabWord6 = getelementptr inbounds %struct.amatch_vtab, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %zVocabWord6, align 8
  %20 = load ptr, ptr %p, align 8
  %zVocabTab7 = getelementptr inbounds %struct.amatch_vtab, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %zVocabTab7, align 8
  %22 = load ptr, ptr %p, align 8
  %zVocabWord8 = getelementptr inbounds %struct.amatch_vtab, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %zVocabWord8, align 8
  %call9 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.26, ptr noundef %19, ptr noundef %21, ptr noundef %23)
  store ptr %call9, ptr %zSql, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %24 = load ptr, ptr %p, align 8
  %db = getelementptr inbounds %struct.amatch_vtab, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %db, align 8
  %26 = load ptr, ptr %zSql, align 8
  %27 = load ptr, ptr %p, align 8
  %pVCheck10 = getelementptr inbounds %struct.amatch_vtab, ptr %27, i32 0, i32 13
  %call11 = call i32 @sqlite3_prepare_v2(ptr noundef %25, ptr noundef %26, i32 noundef -1, ptr noundef %pVCheck10, ptr noundef null)
  store i32 %call11, ptr %rc, align 4
  %28 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %28)
  %29 = load i32, ptr %rc, align 4
  %tobool12 = icmp ne i32 %29, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %30 = load i32, ptr %rc, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %31 = load ptr, ptr %p, align 8
  %pVCheck16 = getelementptr inbounds %struct.amatch_vtab, ptr %31, i32 0, i32 13
  %32 = load ptr, ptr %pVCheck16, align 8
  %33 = load ptr, ptr %pCur, align 8
  %iLang = getelementptr inbounds %struct.amatch_cursor, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %iLang, align 8
  %call17 = call i32 @sqlite3_bind_int(ptr noundef %32, i32 noundef 2, i32 noundef %34)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end15
  %35 = load ptr, ptr %pCur, align 8
  %pCost = getelementptr inbounds %struct.amatch_cursor, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pCost, align 8
  %call18 = call ptr @amatchAvlFirst(ptr noundef %36)
  store ptr %call18, ptr %pNode, align 8
  %37 = load ptr, ptr %pNode, align 8
  %cmp19 = icmp eq ptr %37, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body
  store ptr null, ptr %pWord, align 8
  br label %do.end

if.end22:                                         ; preds = %do.body
  %38 = load ptr, ptr %pNode, align 8
  %pWord23 = getelementptr inbounds %struct.amatch_avl, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %pWord23, align 8
  store ptr %39, ptr %pWord, align 8
  %40 = load ptr, ptr %pCur, align 8
  %pCost24 = getelementptr inbounds %struct.amatch_cursor, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %pWord, align 8
  %sCost = getelementptr inbounds %struct.amatch_word, ptr %41, i32 0, i32 1
  call void @amatchAvlRemove(ptr noundef %pCost24, ptr noundef %sCost)
  %42 = load ptr, ptr %pWord, align 8
  %zWord = getelementptr inbounds %struct.amatch_word, ptr %42, i32 0, i32 7
  %arraydecay = getelementptr inbounds [4 x i8], ptr %zWord, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 2
  %call25 = call i64 @strlen(ptr noundef %add.ptr)
  %conv26 = trunc i64 %call25 to i32
  %conv27 = sext i32 %conv26 to i64
  store i64 %conv27, ptr %nWord, align 8
  %43 = load i64, ptr %nWord, align 8
  %add = add nsw i64 %43, 20
  %44 = load i64, ptr %nBuf, align 8
  %cmp28 = icmp sgt i64 %add, %44
  br i1 %cmp28, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end22
  %45 = load i64, ptr %nWord, align 8
  %add31 = add nsw i64 %45, 100
  store i64 %add31, ptr %nBuf, align 8
  %46 = load ptr, ptr %zBuf, align 8
  %47 = load i64, ptr %nBuf, align 8
  %call32 = call ptr @sqlite3_realloc64(ptr noundef %46, i64 noundef %47)
  store ptr %call32, ptr %zBuf, align 8
  %48 = load ptr, ptr %zBuf, align 8
  %cmp33 = icmp eq ptr %48, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  store i32 7, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end22
  %49 = load ptr, ptr %zBuf, align 8
  %50 = load ptr, ptr %pWord, align 8
  %zWord38 = getelementptr inbounds %struct.amatch_word, ptr %50, i32 0, i32 7
  %arraydecay39 = getelementptr inbounds [4 x i8], ptr %zWord38, i64 0, i64 0
  %add.ptr40 = getelementptr inbounds i8, ptr %arraydecay39, i64 2
  call void @amatchStrcpy(ptr noundef %49, ptr noundef %add.ptr40)
  %arrayidx41 = getelementptr inbounds [8 x i8], ptr %zNext, i64 0, i64 0
  store i8 0, ptr %arrayidx41, align 1
  %51 = load ptr, ptr %pCur, align 8
  %zInput = getelementptr inbounds %struct.amatch_cursor, ptr %51, i32 0, i32 8
  %52 = load ptr, ptr %zInput, align 8
  %53 = load ptr, ptr %pWord, align 8
  %nMatch = getelementptr inbounds %struct.amatch_word, ptr %53, i32 0, i32 6
  %54 = load i16, ptr %nMatch, align 2
  %idxprom = sext i16 %54 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %52, i64 %idxprom
  %55 = load i8, ptr %arrayidx42, align 1
  %arrayidx43 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 0
  store i8 %55, ptr %arrayidx43, align 1
  %arrayidx44 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 0
  %56 = load i8, ptr %arrayidx44, align 1
  %tobool45 = icmp ne i8 %56, 0
  br i1 %tobool45, label %if.then46, label %if.else68

if.then46:                                        ; preds = %if.end37
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then46
  %57 = load i32, ptr %i, align 4
  %cmp47 = icmp sle i32 %57, 4
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %58 = load ptr, ptr %pCur, align 8
  %zInput49 = getelementptr inbounds %struct.amatch_cursor, ptr %58, i32 0, i32 8
  %59 = load ptr, ptr %zInput49, align 8
  %60 = load ptr, ptr %pWord, align 8
  %nMatch50 = getelementptr inbounds %struct.amatch_word, ptr %60, i32 0, i32 6
  %61 = load i16, ptr %nMatch50, align 2
  %conv51 = sext i16 %61 to i32
  %62 = load i32, ptr %i, align 4
  %add52 = add nsw i32 %conv51, %62
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %59, i64 %idxprom53
  %63 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %63 to i32
  %and = and i32 %conv55, 192
  %cmp56 = icmp eq i32 %and, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %64 = phi i1 [ false, %for.cond ], [ %cmp56, %land.rhs ]
  br i1 %64, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %65 = load ptr, ptr %pCur, align 8
  %zInput58 = getelementptr inbounds %struct.amatch_cursor, ptr %65, i32 0, i32 8
  %66 = load ptr, ptr %zInput58, align 8
  %67 = load ptr, ptr %pWord, align 8
  %nMatch59 = getelementptr inbounds %struct.amatch_word, ptr %67, i32 0, i32 6
  %68 = load i16, ptr %nMatch59, align 2
  %conv60 = sext i16 %68 to i32
  %69 = load i32, ptr %i, align 4
  %add61 = add nsw i32 %conv60, %69
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %66, i64 %idxprom62
  %70 = load i8, ptr %arrayidx63, align 1
  %71 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %71 to i64
  %arrayidx65 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 %idxprom64
  store i8 %70, ptr %arrayidx65, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %72 = load i32, ptr %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.end
  %73 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %73 to i64
  %arrayidx67 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 %idxprom66
  store i8 0, ptr %arrayidx67, align 1
  %74 = load i32, ptr %i, align 4
  store i32 %74, ptr %nNextIn, align 4
  br label %if.end69

if.else68:                                        ; preds = %if.end37
  store i32 0, ptr %nNextIn, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %for.end
  %arrayidx70 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 0
  %75 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %75 to i32
  %tobool72 = icmp ne i32 %conv71, 0
  br i1 %tobool72, label %land.lhs.true73, label %if.end106

land.lhs.true73:                                  ; preds = %if.end69
  %arrayidx74 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 0
  %76 = load i8, ptr %arrayidx74, align 1
  %conv75 = sext i8 %76 to i32
  %cmp76 = icmp ne i32 %conv75, 42
  br i1 %cmp76, label %if.then78, label %if.end106

if.then78:                                        ; preds = %land.lhs.true73
  %77 = load ptr, ptr %p, align 8
  %pVCheck79 = getelementptr inbounds %struct.amatch_vtab, ptr %77, i32 0, i32 13
  %78 = load ptr, ptr %pVCheck79, align 8
  %call80 = call i32 @sqlite3_reset(ptr noundef %78)
  %79 = load ptr, ptr %zBuf, align 8
  %arraydecay81 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 0
  call void @amatchStrcat(ptr noundef %79, ptr noundef %arraydecay81)
  %80 = load ptr, ptr %p, align 8
  %pVCheck82 = getelementptr inbounds %struct.amatch_vtab, ptr %80, i32 0, i32 13
  %81 = load ptr, ptr %pVCheck82, align 8
  %82 = load ptr, ptr %zBuf, align 8
  %83 = load i64, ptr %nWord, align 8
  %84 = load i32, ptr %nNextIn, align 4
  %conv83 = sext i32 %84 to i64
  %add84 = add nsw i64 %83, %conv83
  %conv85 = trunc i64 %add84 to i32
  %call86 = call i32 @sqlite3_bind_text(ptr noundef %81, i32 noundef 1, ptr noundef %82, i32 noundef %conv85, ptr noundef null)
  %85 = load ptr, ptr %p, align 8
  %pVCheck87 = getelementptr inbounds %struct.amatch_vtab, ptr %85, i32 0, i32 13
  %86 = load ptr, ptr %pVCheck87, align 8
  %call88 = call i32 @sqlite3_step(ptr noundef %86)
  store i32 %call88, ptr %rc, align 4
  %87 = load i32, ptr %rc, align 4
  %cmp89 = icmp eq i32 %87, 100
  br i1 %cmp89, label %if.then91, label %if.end104

if.then91:                                        ; preds = %if.then78
  %88 = load ptr, ptr %p, align 8
  %pVCheck92 = getelementptr inbounds %struct.amatch_vtab, ptr %88, i32 0, i32 13
  %89 = load ptr, ptr %pVCheck92, align 8
  %call93 = call ptr @sqlite3_column_text(ptr noundef %89, i32 noundef 0)
  store ptr %call93, ptr %zW, align 8
  %90 = load ptr, ptr %zBuf, align 8
  %91 = load ptr, ptr %zW, align 8
  %92 = load i64, ptr %nWord, align 8
  %93 = load i32, ptr %nNextIn, align 4
  %conv94 = sext i32 %93 to i64
  %add95 = add nsw i64 %92, %conv94
  %call96 = call i32 @strncmp(ptr noundef %90, ptr noundef %91, i64 noundef %add95)
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %if.end103

if.then99:                                        ; preds = %if.then91
  %94 = load ptr, ptr %pCur, align 8
  %95 = load ptr, ptr %pWord, align 8
  %rCost = getelementptr inbounds %struct.amatch_word, ptr %95, i32 0, i32 3
  %96 = load i32, ptr %rCost, align 8
  %97 = load ptr, ptr %pWord, align 8
  %nMatch100 = getelementptr inbounds %struct.amatch_word, ptr %97, i32 0, i32 6
  %98 = load i16, ptr %nMatch100, align 2
  %conv101 = sext i16 %98 to i32
  %99 = load i32, ptr %nNextIn, align 4
  %add102 = add nsw i32 %conv101, %99
  %100 = load ptr, ptr %zBuf, align 8
  call void @amatchAddWord(ptr noundef %94, i32 noundef %96, i32 noundef %add102, ptr noundef %100, ptr noundef @.str.15)
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.then91
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then78
  %101 = load ptr, ptr %zBuf, align 8
  %102 = load i64, ptr %nWord, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %101, i64 %102
  store i8 0, ptr %arrayidx105, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.end104, %land.lhs.true73, %if.end69
  br label %while.body

while.body:                                       ; preds = %if.end106, %if.end204
  %103 = load ptr, ptr %zBuf, align 8
  %104 = load i64, ptr %nWord, align 8
  %add.ptr107 = getelementptr inbounds i8, ptr %103, i64 %104
  %arraydecay108 = getelementptr inbounds [8 x i8], ptr %zNext, i64 0, i64 0
  call void @amatchStrcpy(ptr noundef %add.ptr107, ptr noundef %arraydecay108)
  %105 = load ptr, ptr %p, align 8
  %pVCheck109 = getelementptr inbounds %struct.amatch_vtab, ptr %105, i32 0, i32 13
  %106 = load ptr, ptr %pVCheck109, align 8
  %call110 = call i32 @sqlite3_reset(ptr noundef %106)
  %107 = load ptr, ptr %p, align 8
  %pVCheck111 = getelementptr inbounds %struct.amatch_vtab, ptr %107, i32 0, i32 13
  %108 = load ptr, ptr %pVCheck111, align 8
  %109 = load ptr, ptr %zBuf, align 8
  %call112 = call i32 @sqlite3_bind_text(ptr noundef %108, i32 noundef 1, ptr noundef %109, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  %110 = load ptr, ptr %p, align 8
  %pVCheck113 = getelementptr inbounds %struct.amatch_vtab, ptr %110, i32 0, i32 13
  %111 = load ptr, ptr %pVCheck113, align 8
  %call114 = call i32 @sqlite3_step(ptr noundef %111)
  store i32 %call114, ptr %rc, align 4
  %112 = load i32, ptr %rc, align 4
  %cmp115 = icmp ne i32 %112, 100
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %while.body
  br label %while.end

if.end118:                                        ; preds = %while.body
  %113 = load ptr, ptr %p, align 8
  %pVCheck119 = getelementptr inbounds %struct.amatch_vtab, ptr %113, i32 0, i32 13
  %114 = load ptr, ptr %pVCheck119, align 8
  %call120 = call ptr @sqlite3_column_text(ptr noundef %114, i32 noundef 0)
  store ptr %call120, ptr %zW, align 8
  %115 = load ptr, ptr %zBuf, align 8
  %116 = load i64, ptr %nWord, align 8
  %add.ptr121 = getelementptr inbounds i8, ptr %115, i64 %116
  %arraydecay122 = getelementptr inbounds [8 x i8], ptr %zNext, i64 0, i64 0
  call void @amatchStrcpy(ptr noundef %add.ptr121, ptr noundef %arraydecay122)
  %117 = load ptr, ptr %zW, align 8
  %118 = load ptr, ptr %zBuf, align 8
  %119 = load i64, ptr %nWord, align 8
  %call123 = call i32 @strncmp(ptr noundef %117, ptr noundef %118, i64 noundef %119)
  %cmp124 = icmp ne i32 %call123, 0
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end118
  br label %while.end

if.end127:                                        ; preds = %if.end118
  %arrayidx128 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 0
  %120 = load i8, ptr %arrayidx128, align 1
  %conv129 = sext i8 %120 to i32
  %cmp130 = icmp eq i32 %conv129, 42
  br i1 %cmp130, label %land.lhs.true132, label %lor.lhs.false

land.lhs.true132:                                 ; preds = %if.end127
  %arrayidx133 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 1
  %121 = load i8, ptr %arrayidx133, align 1
  %conv134 = sext i8 %121 to i32
  %cmp135 = icmp eq i32 %conv134, 0
  br i1 %cmp135, label %if.then146, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true132, %if.end127
  %arrayidx137 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 0
  %122 = load i8, ptr %arrayidx137, align 1
  %conv138 = sext i8 %122 to i32
  %cmp139 = icmp eq i32 %conv138, 0
  br i1 %cmp139, label %land.lhs.true141, label %if.end148

land.lhs.true141:                                 ; preds = %lor.lhs.false
  %123 = load ptr, ptr %zW, align 8
  %124 = load i64, ptr %nWord, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %123, i64 %124
  %125 = load i8, ptr %arrayidx142, align 1
  %conv143 = sext i8 %125 to i32
  %cmp144 = icmp eq i32 %conv143, 0
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %land.lhs.true141, %land.lhs.true132
  store i32 1, ptr %isMatch, align 4
  %arrayidx147 = getelementptr inbounds [8 x i8], ptr %zNextIn, i64 0, i64 0
  store i8 0, ptr %arrayidx147, align 1
  store i32 0, ptr %nNextIn, align 4
  br label %while.end

if.end148:                                        ; preds = %land.lhs.true141, %lor.lhs.false
  %126 = load ptr, ptr %zW, align 8
  %127 = load i64, ptr %nWord, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %126, i64 %127
  %128 = load i8, ptr %arrayidx149, align 1
  %arrayidx150 = getelementptr inbounds [8 x i8], ptr %zNext, i64 0, i64 0
  store i8 %128, ptr %arrayidx150, align 1
  store i32 1, ptr %i, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc169, %if.end148
  %129 = load i32, ptr %i, align 4
  %cmp152 = icmp sle i32 %129, 4
  br i1 %cmp152, label %land.rhs154, label %land.end162

land.rhs154:                                      ; preds = %for.cond151
  %130 = load ptr, ptr %zW, align 8
  %131 = load i64, ptr %nWord, align 8
  %132 = load i32, ptr %i, align 4
  %conv155 = sext i32 %132 to i64
  %add156 = add nsw i64 %131, %conv155
  %arrayidx157 = getelementptr inbounds i8, ptr %130, i64 %add156
  %133 = load i8, ptr %arrayidx157, align 1
  %conv158 = sext i8 %133 to i32
  %and159 = and i32 %conv158, 192
  %cmp160 = icmp eq i32 %and159, 128
  br label %land.end162

land.end162:                                      ; preds = %land.rhs154, %for.cond151
  %134 = phi i1 [ false, %for.cond151 ], [ %cmp160, %land.rhs154 ]
  br i1 %134, label %for.body163, label %for.end171

for.body163:                                      ; preds = %land.end162
  %135 = load ptr, ptr %zW, align 8
  %136 = load i64, ptr %nWord, align 8
  %137 = load i32, ptr %i, align 4
  %conv164 = sext i32 %137 to i64
  %add165 = add nsw i64 %136, %conv164
  %arrayidx166 = getelementptr inbounds i8, ptr %135, i64 %add165
  %138 = load i8, ptr %arrayidx166, align 1
  %139 = load i32, ptr %i, align 4
  %idxprom167 = sext i32 %139 to i64
  %arrayidx168 = getelementptr inbounds [8 x i8], ptr %zNext, i64 0, i64 %idxprom167
  store i8 %138, ptr %arrayidx168, align 1
  br label %for.inc169

for.inc169:                                       ; preds = %for.body163
  %140 = load i32, ptr %i, align 4
  %inc170 = add nsw i32 %140, 1
  store i32 %inc170, ptr %i, align 4
  br label %for.cond151, !llvm.loop !10

for.end171:                                       ; preds = %land.end162
  %141 = load i32, ptr %i, align 4
  %idxprom172 = sext i32 %141 to i64
  %arrayidx173 = getelementptr inbounds [8 x i8], ptr %zNext, i64 0, i64 %idxprom172
  store i8 0, ptr %arrayidx173, align 1
  %142 = load ptr, ptr %zBuf, align 8
  %143 = load i64, ptr %nWord, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %142, i64 %143
  store i8 0, ptr %arrayidx174, align 1
  %144 = load ptr, ptr %p, align 8
  %rIns = getelementptr inbounds %struct.amatch_vtab, ptr %144, i32 0, i32 9
  %145 = load i32, ptr %rIns, align 8
  %cmp175 = icmp sgt i32 %145, 0
  br i1 %cmp175, label %if.then177, label %if.end184

if.then177:                                       ; preds = %for.end171
  %146 = load ptr, ptr %pCur, align 8
  %147 = load ptr, ptr %pWord, align 8
  %rCost178 = getelementptr inbounds %struct.amatch_word, ptr %147, i32 0, i32 3
  %148 = load i32, ptr %rCost178, align 8
  %149 = load ptr, ptr %p, align 8
  %rIns179 = getelementptr inbounds %struct.amatch_vtab, ptr %149, i32 0, i32 9
  %150 = load i32, ptr %rIns179, align 8
  %add180 = add nsw i32 %148, %150
  %151 = load ptr, ptr %pWord, align 8
  %nMatch181 = getelementptr inbounds %struct.amatch_word, ptr %151, i32 0, i32 6
  %152 = load i16, ptr %nMatch181, align 2
  %conv182 = sext i16 %152 to i32
  %153 = load ptr, ptr %zBuf, align 8
  %arraydecay183 = getelementptr inbounds [8 x i8], ptr %zNext, i64 0, i64 0
  call void @amatchAddWord(ptr noundef %146, i32 noundef %add180, i32 noundef %conv182, ptr noundef %153, ptr noundef %arraydecay183)
  br label %if.end184

if.end184:                                        ; preds = %if.then177, %for.end171
  %154 = load ptr, ptr %p, align 8
  %rSub = getelementptr inbounds %struct.amatch_vtab, ptr %154, i32 0, i32 11
  %155 = load i32, ptr %rSub, align 8
  %cmp185 = icmp sgt i32 %155, 0
  br i1 %cmp185, label %if.then187, label %if.end195

if.then187:                                       ; preds = %if.end184
  %156 = load ptr, ptr %pCur, align 8
  %157 = load ptr, ptr %pWord, align 8
  %rCost188 = getelementptr inbounds %struct.amatch_word, ptr %157, i32 0, i32 3
  %158 = load i32, ptr %rCost188, align 8
  %159 = load ptr, ptr %p, align 8
  %rSub189 = getelementptr inbounds %struct.amatch_vtab, ptr %159, i32 0, i32 11
  %160 = load i32, ptr %rSub189, align 8
  %add190 = add nsw i32 %158, %160
  %161 = load ptr, ptr %pWord, align 8
  %nMatch191 = getelementptr inbounds %struct.amatch_word, ptr %161, i32 0, i32 6
  %162 = load i16, ptr %nMatch191, align 2
  %conv192 = sext i16 %162 to i32
  %163 = load i32, ptr %nNextIn, align 4
  %add193 = add nsw i32 %conv192, %163
  %164 = load ptr, ptr %zBuf, align 8
  %arraydecay194 = getelementptr inbounds [8 x i8], ptr %zNext, i64 0, i64 0
  call void @amatchAddWord(ptr noundef %156, i32 noundef %add190, i32 noundef %add193, ptr noundef %164, ptr noundef %arraydecay194)
  br label %if.end195

if.end195:                                        ; preds = %if.then187, %if.end184
  %165 = load ptr, ptr %p, align 8
  %rIns196 = getelementptr inbounds %struct.amatch_vtab, ptr %165, i32 0, i32 9
  %166 = load i32, ptr %rIns196, align 8
  %cmp197 = icmp slt i32 %166, 0
  br i1 %cmp197, label %land.lhs.true199, label %if.end204

land.lhs.true199:                                 ; preds = %if.end195
  %167 = load ptr, ptr %p, align 8
  %rSub200 = getelementptr inbounds %struct.amatch_vtab, ptr %167, i32 0, i32 11
  %168 = load i32, ptr %rSub200, align 8
  %cmp201 = icmp slt i32 %168, 0
  br i1 %cmp201, label %if.then203, label %if.end204

if.then203:                                       ; preds = %land.lhs.true199
  br label %while.end

if.end204:                                        ; preds = %land.lhs.true199, %if.end195
  %169 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %169, 1
  %idxprom205 = sext i32 %sub to i64
  %arrayidx206 = getelementptr inbounds [8 x i8], ptr %zNext, i64 0, i64 %idxprom205
  %170 = load i8, ptr %arrayidx206, align 1
  %inc207 = add i8 %170, 1
  store i8 %inc207, ptr %arrayidx206, align 1
  br label %while.body

while.end:                                        ; preds = %if.then203, %if.then146, %if.then126, %if.then117
  %171 = load ptr, ptr %p, align 8
  %pVCheck208 = getelementptr inbounds %struct.amatch_vtab, ptr %171, i32 0, i32 13
  %172 = load ptr, ptr %pVCheck208, align 8
  %call209 = call i32 @sqlite3_reset(ptr noundef %172)
  %173 = load ptr, ptr %p, align 8
  %rDel = getelementptr inbounds %struct.amatch_vtab, ptr %173, i32 0, i32 10
  %174 = load i32, ptr %rDel, align 4
  %cmp210 = icmp sgt i32 %174, 0
  br i1 %cmp210, label %if.then212, label %if.end220

if.then212:                                       ; preds = %while.end
  %175 = load ptr, ptr %zBuf, align 8
  %176 = load i64, ptr %nWord, align 8
  %arrayidx213 = getelementptr inbounds i8, ptr %175, i64 %176
  store i8 0, ptr %arrayidx213, align 1
  %177 = load ptr, ptr %pCur, align 8
  %178 = load ptr, ptr %pWord, align 8
  %rCost214 = getelementptr inbounds %struct.amatch_word, ptr %178, i32 0, i32 3
  %179 = load i32, ptr %rCost214, align 8
  %180 = load ptr, ptr %p, align 8
  %rDel215 = getelementptr inbounds %struct.amatch_vtab, ptr %180, i32 0, i32 10
  %181 = load i32, ptr %rDel215, align 4
  %add216 = add nsw i32 %179, %181
  %182 = load ptr, ptr %pWord, align 8
  %nMatch217 = getelementptr inbounds %struct.amatch_word, ptr %182, i32 0, i32 6
  %183 = load i16, ptr %nMatch217, align 2
  %conv218 = sext i16 %183 to i32
  %184 = load i32, ptr %nNextIn, align 4
  %add219 = add nsw i32 %conv218, %184
  %185 = load ptr, ptr %zBuf, align 8
  call void @amatchAddWord(ptr noundef %177, i32 noundef %add216, i32 noundef %add219, ptr noundef %185, ptr noundef @.str.15)
  br label %if.end220

if.end220:                                        ; preds = %if.then212, %while.end
  %186 = load ptr, ptr %p, align 8
  %pRule221 = getelementptr inbounds %struct.amatch_vtab, ptr %186, i32 0, i32 8
  %187 = load ptr, ptr %pRule221, align 8
  store ptr %187, ptr %pRule, align 8
  br label %for.cond222

for.cond222:                                      ; preds = %for.inc253, %if.end220
  %188 = load ptr, ptr %pRule, align 8
  %tobool223 = icmp ne ptr %188, null
  br i1 %tobool223, label %for.body224, label %for.end254

for.body224:                                      ; preds = %for.cond222
  %189 = load ptr, ptr %pRule, align 8
  %iLang225 = getelementptr inbounds %struct.amatch_rule, ptr %189, i32 0, i32 3
  %190 = load i32, ptr %iLang225, align 4
  %191 = load ptr, ptr %pCur, align 8
  %iLang226 = getelementptr inbounds %struct.amatch_cursor, ptr %191, i32 0, i32 2
  %192 = load i32, ptr %iLang226, align 8
  %cmp227 = icmp ne i32 %190, %192
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %for.body224
  br label %for.inc253

if.end230:                                        ; preds = %for.body224
  %193 = load ptr, ptr %pRule, align 8
  %zFrom = getelementptr inbounds %struct.amatch_rule, ptr %193, i32 0, i32 1
  %194 = load ptr, ptr %zFrom, align 8
  %195 = load ptr, ptr %pCur, align 8
  %zInput231 = getelementptr inbounds %struct.amatch_cursor, ptr %195, i32 0, i32 8
  %196 = load ptr, ptr %zInput231, align 8
  %197 = load ptr, ptr %pWord, align 8
  %nMatch232 = getelementptr inbounds %struct.amatch_word, ptr %197, i32 0, i32 6
  %198 = load i16, ptr %nMatch232, align 2
  %conv233 = sext i16 %198 to i32
  %idx.ext = sext i32 %conv233 to i64
  %add.ptr234 = getelementptr inbounds i8, ptr %196, i64 %idx.ext
  %199 = load ptr, ptr %pRule, align 8
  %nFrom = getelementptr inbounds %struct.amatch_rule, ptr %199, i32 0, i32 4
  %200 = load i8, ptr %nFrom, align 8
  %conv235 = sext i8 %200 to i64
  %call236 = call i32 @strncmp(ptr noundef %194, ptr noundef %add.ptr234, i64 noundef %conv235)
  %cmp237 = icmp eq i32 %call236, 0
  br i1 %cmp237, label %if.then239, label %if.end252

if.then239:                                       ; preds = %if.end230
  %201 = load ptr, ptr %pCur, align 8
  %202 = load ptr, ptr %pWord, align 8
  %rCost240 = getelementptr inbounds %struct.amatch_word, ptr %202, i32 0, i32 3
  %203 = load i32, ptr %rCost240, align 8
  %204 = load ptr, ptr %pRule, align 8
  %rCost241 = getelementptr inbounds %struct.amatch_rule, ptr %204, i32 0, i32 2
  %205 = load i32, ptr %rCost241, align 8
  %add242 = add nsw i32 %203, %205
  %206 = load ptr, ptr %pWord, align 8
  %nMatch243 = getelementptr inbounds %struct.amatch_word, ptr %206, i32 0, i32 6
  %207 = load i16, ptr %nMatch243, align 2
  %conv244 = sext i16 %207 to i32
  %208 = load ptr, ptr %pRule, align 8
  %nFrom245 = getelementptr inbounds %struct.amatch_rule, ptr %208, i32 0, i32 4
  %209 = load i8, ptr %nFrom245, align 8
  %conv246 = sext i8 %209 to i32
  %add247 = add nsw i32 %conv244, %conv246
  %210 = load ptr, ptr %pWord, align 8
  %zWord248 = getelementptr inbounds %struct.amatch_word, ptr %210, i32 0, i32 7
  %arraydecay249 = getelementptr inbounds [4 x i8], ptr %zWord248, i64 0, i64 0
  %add.ptr250 = getelementptr inbounds i8, ptr %arraydecay249, i64 2
  %211 = load ptr, ptr %pRule, align 8
  %zTo = getelementptr inbounds %struct.amatch_rule, ptr %211, i32 0, i32 6
  %arraydecay251 = getelementptr inbounds [4 x i8], ptr %zTo, i64 0, i64 0
  call void @amatchAddWord(ptr noundef %201, i32 noundef %add242, i32 noundef %add247, ptr noundef %add.ptr250, ptr noundef %arraydecay251)
  br label %if.end252

if.end252:                                        ; preds = %if.then239, %if.end230
  br label %for.inc253

for.inc253:                                       ; preds = %if.end252, %if.then229
  %212 = load ptr, ptr %pRule, align 8
  %pNext = getelementptr inbounds %struct.amatch_rule, ptr %212, i32 0, i32 0
  %213 = load ptr, ptr %pNext, align 8
  store ptr %213, ptr %pRule, align 8
  br label %for.cond222, !llvm.loop !11

for.end254:                                       ; preds = %for.cond222
  br label %do.cond

do.cond:                                          ; preds = %for.end254
  %214 = load i32, ptr %isMatch, align 4
  %tobool255 = icmp ne i32 %214, 0
  %lnot = xor i1 %tobool255, true
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.cond, %if.then21
  %215 = load ptr, ptr %pWord, align 8
  %216 = load ptr, ptr %pCur, align 8
  %pCurrent = getelementptr inbounds %struct.amatch_cursor, ptr %216, i32 0, i32 11
  store ptr %215, ptr %pCurrent, align 8
  %217 = load ptr, ptr %zBuf, align 8
  call void @sqlite3_free(ptr noundef %217)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then35, %if.then13
  %218 = load i32, ptr %retval, align 4
  ret i32 %218
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %pCurrent = getelementptr inbounds %struct.amatch_cursor, ptr %1, i32 0, i32 11
  %2 = load ptr, ptr %pCurrent, align 8
  %cmp = icmp eq ptr %2, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
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
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %pCur, align 8
  %pCurrent = getelementptr inbounds %struct.amatch_cursor, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %pCurrent, align 8
  %zWord = getelementptr inbounds %struct.amatch_word, ptr %4, i32 0, i32 7
  %arraydecay = getelementptr inbounds [4 x i8], ptr %zWord, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 2
  call void @sqlite3_result_text(ptr noundef %2, ptr noundef %add.ptr, i32 noundef -1, ptr noundef null)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %ctx.addr, align 8
  %6 = load ptr, ptr %pCur, align 8
  %pCurrent2 = getelementptr inbounds %struct.amatch_cursor, ptr %6, i32 0, i32 11
  %7 = load ptr, ptr %pCurrent2, align 8
  %rCost = getelementptr inbounds %struct.amatch_word, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %rCost, align 8
  call void @sqlite3_result_int(ptr noundef %5, i32 noundef %8)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %9 = load ptr, ptr %ctx.addr, align 8
  %10 = load ptr, ptr %pCur, align 8
  %iLang = getelementptr inbounds %struct.amatch_cursor, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iLang, align 8
  call void @sqlite3_result_int(ptr noundef %9, i32 noundef %11)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %12 = load ptr, ptr %ctx.addr, align 8
  %13 = load ptr, ptr %pCur, align 8
  %nWord = getelementptr inbounds %struct.amatch_cursor, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %nWord, align 4
  call void @sqlite3_result_int(ptr noundef %12, i32 noundef %14)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_null(ptr noundef %15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb1, %sw.bb
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.amatch_cursor, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %iRowid, align 8
  %3 = load ptr, ptr %pRowid.addr, align 8
  store i64 %2, ptr %3, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchUpdate(ptr noundef %pVTab, i32 noundef %argc, ptr noundef %argv, ptr noundef %pRowid) #0 {
entry:
  %retval = alloca i32, align 4
  %pVTab.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %zCmd = alloca ptr, align 8
  store ptr %pVTab, ptr %pVTab.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %pVTab.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %pRowid.addr, align 8
  %2 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %zSelf = getelementptr inbounds %struct.amatch_vtab, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %zSelf, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.27, ptr noundef %4)
  %5 = load ptr, ptr %pVTab.addr, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %5, i32 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @sqlite3_value_type(ptr noundef %7)
  %cmp2 = icmp ne i32 %call1, 5
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %p, align 8
  %zSelf4 = getelementptr inbounds %struct.amatch_vtab, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %zSelf4, align 8
  %call5 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.28, ptr noundef %9)
  %10 = load ptr, ptr %pVTab.addr, align 8
  %zErrMsg6 = getelementptr inbounds %struct.sqlite3_vtab, ptr %10, i32 0, i32 2
  store ptr %call5, ptr %zErrMsg6, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %11, i64 2
  %12 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @sqlite3_value_type(ptr noundef %12)
  %cmp10 = icmp ne i32 %call9, 5
  br i1 %cmp10, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %13 = load ptr, ptr %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %13, i64 3
  %14 = load ptr, ptr %arrayidx11, align 8
  %call12 = call i32 @sqlite3_value_type(ptr noundef %14)
  %cmp13 = icmp ne i32 %call12, 5
  br i1 %cmp13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %15 = load ptr, ptr %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %15, i64 4
  %16 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @sqlite3_value_type(ptr noundef %16)
  %cmp17 = icmp ne i32 %call16, 5
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %if.end7
  %17 = load ptr, ptr %p, align 8
  %zSelf19 = getelementptr inbounds %struct.amatch_vtab, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %zSelf19, align 8
  %call20 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.29, ptr noundef %18)
  %19 = load ptr, ptr %pVTab.addr, align 8
  %zErrMsg21 = getelementptr inbounds %struct.sqlite3_vtab, ptr %19, i32 0, i32 2
  store ptr %call20, ptr %zErrMsg21, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false14
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %20, i64 5
  %21 = load ptr, ptr %arrayidx23, align 8
  %call24 = call ptr @sqlite3_value_text(ptr noundef %21)
  store ptr %call24, ptr %zCmd, align 8
  %22 = load ptr, ptr %zCmd, align 8
  %cmp25 = icmp eq ptr %22, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then26, %if.then18, %if.then3, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @amatchValueOfKey(ptr noundef %zKey, ptr noundef %zStr) #0 {
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
  %call11 = call i32 @isspace(i32 noundef %conv10) #8
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

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
  %call23 = call i32 @isspace(i32 noundef %conv22) #8
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, ptr %i, align 4
  br label %while.cond, !llvm.loop !14

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
define internal ptr @amatchDequote(ptr noundef %zIn) #0 {
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
  %call16 = call ptr @__memcpy_chk(ptr noundef %9, ptr noundef %10, i64 noundef %add15, i64 noundef %13) #6
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
  br label %for.cond, !llvm.loop !15

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
  call void @__assert_rtn(ptr noundef @__func__.amatchDequote, ptr noundef @.str.9, i32 noundef 761, ptr noundef @.str.10) #7
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
define internal void @amatchFree(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  call void @amatchFreeRules(ptr noundef %1)
  %2 = load ptr, ptr %p.addr, align 8
  call void @amatchVCheckClear(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %zClassName = getelementptr inbounds %struct.amatch_vtab, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %zClassName, align 8
  call void @sqlite3_free(ptr noundef %4)
  %5 = load ptr, ptr %p.addr, align 8
  %zDb = getelementptr inbounds %struct.amatch_vtab, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %zDb, align 8
  call void @sqlite3_free(ptr noundef %6)
  %7 = load ptr, ptr %p.addr, align 8
  %zCostTab = getelementptr inbounds %struct.amatch_vtab, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %zCostTab, align 8
  call void @sqlite3_free(ptr noundef %8)
  %9 = load ptr, ptr %p.addr, align 8
  %zVocabTab = getelementptr inbounds %struct.amatch_vtab, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %zVocabTab, align 8
  call void @sqlite3_free(ptr noundef %10)
  %11 = load ptr, ptr %p.addr, align 8
  %zVocabWord = getelementptr inbounds %struct.amatch_vtab, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %zVocabWord, align 8
  call void @sqlite3_free(ptr noundef %12)
  %13 = load ptr, ptr %p.addr, align 8
  %zVocabLang = getelementptr inbounds %struct.amatch_vtab, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %zVocabLang, align 8
  call void @sqlite3_free(ptr noundef %14)
  %15 = load ptr, ptr %p.addr, align 8
  %zSelf = getelementptr inbounds %struct.amatch_vtab, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %zSelf, align 8
  call void @sqlite3_free(ptr noundef %16)
  %17 = load ptr, ptr %p.addr, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %18, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %17, i32 noundef 0, i64 noundef 128, i64 noundef %19) #6
  %20 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchLoadRules(ptr noundef %db, ptr noundef %p, ptr noundef %pzErr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zSql = alloca ptr, align 8
  %pHead = alloca ptr, align 8
  %rc2 = alloca i32, align 4
  %pStmt = alloca ptr, align 8
  %pRule = alloca ptr, align 8
  %i = alloca i32, align 4
  %pX = alloca ptr, align 8
  %a = alloca [15 x ptr], align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pHead, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %zDb = getelementptr inbounds %struct.amatch_vtab, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %zDb, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %zCostTab = getelementptr inbounds %struct.amatch_vtab, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %zCostTab, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.11, ptr noundef %1, ptr noundef %3)
  store ptr %call, ptr %zSql, align 8
  %4 = load ptr, ptr %zSql, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %if.end26

if.else:                                          ; preds = %entry
  store ptr null, ptr %pStmt, align 8
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %zSql, align 8
  %call1 = call i32 @sqlite3_prepare_v2(ptr noundef %5, ptr noundef %6, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.else
  %8 = load ptr, ptr %p.addr, align 8
  %zClassName = getelementptr inbounds %struct.amatch_vtab, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %zClassName, align 8
  %10 = load ptr, ptr %db.addr, align 8
  %call4 = call ptr @sqlite3_errmsg(ptr noundef %10)
  %call5 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.12, ptr noundef %9, ptr noundef %call4)
  %11 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call5, ptr %11, align 8
  br label %if.end21

if.else6:                                         ; preds = %if.else
  %12 = load ptr, ptr %pStmt, align 8
  %call7 = call i32 @sqlite3_column_count(ptr noundef %12)
  %cmp8 = icmp ne i32 %call7, 4
  br i1 %cmp8, label %if.then9, label %if.else14

if.then9:                                         ; preds = %if.else6
  %13 = load ptr, ptr %p.addr, align 8
  %zClassName10 = getelementptr inbounds %struct.amatch_vtab, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %zClassName10, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %zCostTab11 = getelementptr inbounds %struct.amatch_vtab, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %zCostTab11, align 8
  %17 = load ptr, ptr %pStmt, align 8
  %call12 = call i32 @sqlite3_column_count(ptr noundef %17)
  %call13 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.13, ptr noundef %14, ptr noundef %16, i32 noundef %call12)
  %18 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call13, ptr %18, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end20

if.else14:                                        ; preds = %if.else6
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else14
  %19 = load i32, ptr %rc, align 4
  %cmp15 = icmp eq i32 %19, 0
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %20 = load ptr, ptr %pStmt, align 8
  %call16 = call i32 @sqlite3_step(ptr noundef %20)
  %cmp17 = icmp eq i32 100, %call16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store ptr null, ptr %pRule, align 8
  %22 = load ptr, ptr %p.addr, align 8
  %23 = load ptr, ptr %pStmt, align 8
  %24 = load ptr, ptr %pzErr.addr, align 8
  %call18 = call i32 @amatchLoadOneRule(ptr noundef %22, ptr noundef %23, ptr noundef %pRule, ptr noundef %24)
  store i32 %call18, ptr %rc, align 4
  %25 = load ptr, ptr %pRule, align 8
  %tobool = icmp ne ptr %25, null
  br i1 %tobool, label %if.then19, label %if.end

if.then19:                                        ; preds = %while.body
  %26 = load ptr, ptr %pHead, align 8
  %27 = load ptr, ptr %pRule, align 8
  %pNext = getelementptr inbounds %struct.amatch_rule, ptr %27, i32 0, i32 0
  store ptr %26, ptr %pNext, align 8
  %28 = load ptr, ptr %pRule, align 8
  store ptr %28, ptr %pHead, align 8
  br label %if.end

if.end:                                           ; preds = %if.then19, %while.body
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %land.end
  br label %if.end20

if.end20:                                         ; preds = %while.end, %if.then9
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then3
  %29 = load ptr, ptr %pStmt, align 8
  %call22 = call i32 @sqlite3_finalize(ptr noundef %29)
  store i32 %call22, ptr %rc2, align 4
  %30 = load i32, ptr %rc, align 4
  %cmp23 = icmp eq i32 %30, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  %31 = load i32, ptr %rc2, align 4
  store i32 %31, ptr %rc, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  %32 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %32)
  %33 = load i32, ptr %rc, align 4
  %cmp27 = icmp eq i32 %33, 0
  br i1 %cmp27, label %if.then28, label %if.else76

if.then28:                                        ; preds = %if.end26
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then28
  %34 = load i32, ptr %i, align 4
  %conv = zext i32 %34 to i64
  %cmp29 = icmp ult i64 %conv, 15
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, ptr %i, align 4
  %idxprom = zext i32 %35 to i64
  %arrayidx = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %i, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  br label %while.cond31

while.cond31:                                     ; preds = %for.end54, %for.end
  %37 = load ptr, ptr %pHead, align 8
  store ptr %37, ptr %pX, align 8
  %cmp32 = icmp ne ptr %37, null
  br i1 %cmp32, label %while.body34, label %while.end60

while.body34:                                     ; preds = %while.cond31
  %38 = load ptr, ptr %pX, align 8
  %pNext35 = getelementptr inbounds %struct.amatch_rule, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %pNext35, align 8
  store ptr %39, ptr %pHead, align 8
  %40 = load ptr, ptr %pX, align 8
  %pNext36 = getelementptr inbounds %struct.amatch_rule, ptr %40, i32 0, i32 0
  store ptr null, ptr %pNext36, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc52, %while.body34
  %41 = load i32, ptr %i, align 4
  %idxprom38 = zext i32 %41 to i64
  %arrayidx39 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom38
  %42 = load ptr, ptr %arrayidx39, align 8
  %tobool40 = icmp ne ptr %42, null
  br i1 %tobool40, label %land.rhs41, label %land.end45

land.rhs41:                                       ; preds = %for.cond37
  %43 = load i32, ptr %i, align 4
  %conv42 = zext i32 %43 to i64
  %cmp43 = icmp ult i64 %conv42, 14
  br label %land.end45

land.end45:                                       ; preds = %land.rhs41, %for.cond37
  %44 = phi i1 [ false, %for.cond37 ], [ %cmp43, %land.rhs41 ]
  br i1 %44, label %for.body46, label %for.end54

for.body46:                                       ; preds = %land.end45
  %45 = load i32, ptr %i, align 4
  %idxprom47 = zext i32 %45 to i64
  %arrayidx48 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom47
  %46 = load ptr, ptr %arrayidx48, align 8
  %47 = load ptr, ptr %pX, align 8
  %call49 = call ptr @amatchMergeRules(ptr noundef %46, ptr noundef %47)
  store ptr %call49, ptr %pX, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom50 = zext i32 %48 to i64
  %arrayidx51 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom50
  store ptr null, ptr %arrayidx51, align 8
  br label %for.inc52

for.inc52:                                        ; preds = %for.body46
  %49 = load i32, ptr %i, align 4
  %inc53 = add i32 %49, 1
  store i32 %inc53, ptr %i, align 4
  br label %for.cond37, !llvm.loop !18

for.end54:                                        ; preds = %land.end45
  %50 = load i32, ptr %i, align 4
  %idxprom55 = zext i32 %50 to i64
  %arrayidx56 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom55
  %51 = load ptr, ptr %arrayidx56, align 8
  %52 = load ptr, ptr %pX, align 8
  %call57 = call ptr @amatchMergeRules(ptr noundef %51, ptr noundef %52)
  %53 = load i32, ptr %i, align 4
  %idxprom58 = zext i32 %53 to i64
  %arrayidx59 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom58
  store ptr %call57, ptr %arrayidx59, align 8
  br label %while.cond31, !llvm.loop !19

while.end60:                                      ; preds = %while.cond31
  %arrayidx61 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 0
  %54 = load ptr, ptr %arrayidx61, align 8
  store ptr %54, ptr %pX, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc70, %while.end60
  %55 = load i32, ptr %i, align 4
  %conv63 = zext i32 %55 to i64
  %cmp64 = icmp ult i64 %conv63, 15
  br i1 %cmp64, label %for.body66, label %for.end72

for.body66:                                       ; preds = %for.cond62
  %56 = load i32, ptr %i, align 4
  %idxprom67 = zext i32 %56 to i64
  %arrayidx68 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom67
  %57 = load ptr, ptr %arrayidx68, align 8
  %58 = load ptr, ptr %pX, align 8
  %call69 = call ptr @amatchMergeRules(ptr noundef %57, ptr noundef %58)
  store ptr %call69, ptr %pX, align 8
  br label %for.inc70

for.inc70:                                        ; preds = %for.body66
  %59 = load i32, ptr %i, align 4
  %inc71 = add i32 %59, 1
  store i32 %inc71, ptr %i, align 4
  br label %for.cond62, !llvm.loop !20

for.end72:                                        ; preds = %for.cond62
  %60 = load ptr, ptr %p.addr, align 8
  %pRule73 = getelementptr inbounds %struct.amatch_vtab, ptr %60, i32 0, i32 8
  %61 = load ptr, ptr %pRule73, align 8
  %62 = load ptr, ptr %pX, align 8
  %call74 = call ptr @amatchMergeRules(ptr noundef %61, ptr noundef %62)
  %63 = load ptr, ptr %p.addr, align 8
  %pRule75 = getelementptr inbounds %struct.amatch_vtab, ptr %63, i32 0, i32 8
  store ptr %call74, ptr %pRule75, align 8
  br label %if.end83

if.else76:                                        ; preds = %if.end26
  %64 = load ptr, ptr %p.addr, align 8
  %pRule77 = getelementptr inbounds %struct.amatch_vtab, ptr %64, i32 0, i32 8
  %65 = load ptr, ptr %pRule77, align 8
  %cmp78 = icmp eq ptr %65, null
  %lnot = xor i1 %cmp78, true
  %lnot.ext = zext i1 %lnot to i32
  %conv80 = sext i32 %lnot.ext to i64
  %tobool81 = icmp ne i64 %conv80, 0
  br i1 %tobool81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else76
  call void @__assert_rtn(ptr noundef @__func__.amatchLoadRules, ptr noundef @.str.9, i32 noundef 720, ptr noundef @.str.14) #7
  unreachable

66:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.else76
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %66
  %67 = load ptr, ptr %pHead, align 8
  %68 = load ptr, ptr %p.addr, align 8
  %pRule82 = getelementptr inbounds %struct.amatch_vtab, ptr %68, i32 0, i32 8
  store ptr %67, ptr %pRule82, align 8
  br label %if.end83

if.end83:                                         ; preds = %cond.end, %for.end72
  %69 = load i32, ptr %rc, align 4
  ret i32 %69
}

declare i32 @sqlite3_vtab_config(ptr noundef, i32 noundef, ...) #1

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
define internal void @amatchFreeRules(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pRule1 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %pRule = getelementptr inbounds %struct.amatch_vtab, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %pRule, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p.addr, align 8
  %pRule2 = getelementptr inbounds %struct.amatch_vtab, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %pRule2, align 8
  store ptr %3, ptr %pRule1, align 8
  %4 = load ptr, ptr %pRule1, align 8
  %pNext = getelementptr inbounds %struct.amatch_rule, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pNext, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %pRule3 = getelementptr inbounds %struct.amatch_vtab, ptr %6, i32 0, i32 8
  store ptr %5, ptr %pRule3, align 8
  %7 = load ptr, ptr %pRule1, align 8
  call void @sqlite3_free(ptr noundef %7)
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %p.addr, align 8
  %pRule4 = getelementptr inbounds %struct.amatch_vtab, ptr %8, i32 0, i32 8
  store ptr null, ptr %pRule4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @amatchVCheckClear(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pVCheck = getelementptr inbounds %struct.amatch_vtab, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %pVCheck, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pVCheck1 = getelementptr inbounds %struct.amatch_vtab, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pVCheck1, align 8
  %call = call i32 @sqlite3_finalize(ptr noundef %3)
  %4 = load ptr, ptr %p.addr, align 8
  %pVCheck2 = getelementptr inbounds %struct.amatch_vtab, ptr %4, i32 0, i32 13
  store ptr null, ptr %pVCheck2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @sqlite3_finalize(ptr noundef) #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare ptr @sqlite3_errmsg(ptr noundef) #1

declare i32 @sqlite3_column_count(ptr noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @amatchLoadOneRule(ptr noundef %p, ptr noundef %pStmt, ptr noundef %ppRule, ptr noundef %pzErr) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pStmt.addr = alloca ptr, align 8
  %ppRule.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %iLang = alloca i64, align 8
  %zFrom = alloca ptr, align 8
  %zTo = alloca ptr, align 8
  %rCost = alloca i32, align 4
  %rc = alloca i32, align 4
  %nFrom = alloca i32, align 4
  %nTo = alloca i32, align 4
  %pRule = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store ptr %ppRule, ptr %ppRule.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  %0 = load ptr, ptr %pStmt.addr, align 8
  %call = call i64 @sqlite3_column_int64(ptr noundef %0, i32 noundef 0)
  store i64 %call, ptr %iLang, align 8
  %1 = load ptr, ptr %pStmt.addr, align 8
  %call1 = call ptr @sqlite3_column_text(ptr noundef %1, i32 noundef 1)
  store ptr %call1, ptr %zFrom, align 8
  %2 = load ptr, ptr %pStmt.addr, align 8
  %call2 = call ptr @sqlite3_column_text(ptr noundef %2, i32 noundef 2)
  store ptr %call2, ptr %zTo, align 8
  %3 = load ptr, ptr %pStmt.addr, align 8
  %call3 = call i32 @sqlite3_column_int(ptr noundef %3, i32 noundef 3)
  store i32 %call3, ptr %rCost, align 4
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pRule, align 8
  %4 = load ptr, ptr %zFrom, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @.str.15, ptr %zFrom, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %zTo, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store ptr @.str.15, ptr %zTo, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %6 = load ptr, ptr %zFrom, align 8
  %call7 = call i64 @strlen(ptr noundef %6)
  %conv = trunc i64 %call7 to i32
  store i32 %conv, ptr %nFrom, align 4
  %7 = load ptr, ptr %zTo, align 8
  %call8 = call i64 @strlen(ptr noundef %7)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %nTo, align 4
  %8 = load ptr, ptr %zFrom, align 8
  %9 = load ptr, ptr %zTo, align 8
  %call10 = call i32 @strcmp(ptr noundef %8, ptr noundef %9)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end31

if.then13:                                        ; preds = %if.end6
  %10 = load ptr, ptr %zFrom, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx, align 1
  %conv14 = sext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 63
  br i1 %cmp15, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.then13
  %12 = load ptr, ptr %zFrom, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %13 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then21, label %if.end30

if.then21:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %p.addr, align 8
  %rSub = getelementptr inbounds %struct.amatch_vtab, ptr %14, i32 0, i32 11
  %15 = load i32, ptr %rSub, align 8
  %cmp22 = icmp eq i32 %15, 0
  br i1 %cmp22, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %16 = load ptr, ptr %p.addr, align 8
  %rSub24 = getelementptr inbounds %struct.amatch_vtab, ptr %16, i32 0, i32 11
  %17 = load i32, ptr %rSub24, align 8
  %18 = load i32, ptr %rCost, align 4
  %cmp25 = icmp sgt i32 %17, %18
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %lor.lhs.false, %if.then21
  %19 = load i32, ptr %rCost, align 4
  %20 = load ptr, ptr %p.addr, align 8
  %rSub28 = getelementptr inbounds %struct.amatch_vtab, ptr %20, i32 0, i32 11
  store i32 %19, ptr %rSub28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %lor.lhs.false
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %land.lhs.true, %if.then13
  %21 = load ptr, ptr %ppRule.addr, align 8
  store ptr null, ptr %21, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end6
  %22 = load i32, ptr %rCost, align 4
  %cmp32 = icmp sle i32 %22, 0
  br i1 %cmp32, label %if.then37, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end31
  %23 = load i32, ptr %rCost, align 4
  %cmp35 = icmp sgt i32 %23, 1000
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %lor.lhs.false34, %if.end31
  %24 = load ptr, ptr %p.addr, align 8
  %zClassName = getelementptr inbounds %struct.amatch_vtab, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %zClassName, align 8
  %call38 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.16, ptr noundef %25, i32 noundef 1000)
  %26 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call38, ptr %26, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end129

if.else:                                          ; preds = %lor.lhs.false34
  %27 = load i32, ptr %nFrom, align 4
  %cmp39 = icmp sgt i32 %27, 50
  br i1 %cmp39, label %if.then44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.else
  %28 = load i32, ptr %nTo, align 4
  %cmp42 = icmp sgt i32 %28, 50
  br i1 %cmp42, label %if.then44, label %if.else47

if.then44:                                        ; preds = %lor.lhs.false41, %if.else
  %29 = load ptr, ptr %p.addr, align 8
  %zClassName45 = getelementptr inbounds %struct.amatch_vtab, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %zClassName45, align 8
  %call46 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.17, ptr noundef %30, i32 noundef 50)
  %31 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call46, ptr %31, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end128

if.else47:                                        ; preds = %lor.lhs.false41
  %32 = load i64, ptr %iLang, align 8
  %cmp48 = icmp slt i64 %32, 0
  br i1 %cmp48, label %if.then53, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.else47
  %33 = load i64, ptr %iLang, align 8
  %cmp51 = icmp sgt i64 %33, 2147483647
  br i1 %cmp51, label %if.then53, label %if.else56

if.then53:                                        ; preds = %lor.lhs.false50, %if.else47
  %34 = load ptr, ptr %p.addr, align 8
  %zClassName54 = getelementptr inbounds %struct.amatch_vtab, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %zClassName54, align 8
  %call55 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.18, ptr noundef %35, i32 noundef 2147483647)
  %36 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call55, ptr %36, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end127

if.else56:                                        ; preds = %lor.lhs.false50
  %37 = load ptr, ptr %zFrom, align 8
  %call57 = call i32 @strcmp(ptr noundef %37, ptr noundef @.str.15)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.else74

land.lhs.true60:                                  ; preds = %if.else56
  %38 = load ptr, ptr %zTo, align 8
  %call61 = call i32 @strcmp(ptr noundef %38, ptr noundef @.str.19)
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.else74

if.then64:                                        ; preds = %land.lhs.true60
  %39 = load ptr, ptr %p.addr, align 8
  %rIns = getelementptr inbounds %struct.amatch_vtab, ptr %39, i32 0, i32 9
  %40 = load i32, ptr %rIns, align 8
  %cmp65 = icmp eq i32 %40, 0
  br i1 %cmp65, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.then64
  %41 = load ptr, ptr %p.addr, align 8
  %rIns68 = getelementptr inbounds %struct.amatch_vtab, ptr %41, i32 0, i32 9
  %42 = load i32, ptr %rIns68, align 8
  %43 = load i32, ptr %rCost, align 4
  %cmp69 = icmp sgt i32 %42, %43
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %lor.lhs.false67, %if.then64
  %44 = load i32, ptr %rCost, align 4
  %45 = load ptr, ptr %p.addr, align 8
  %rIns72 = getelementptr inbounds %struct.amatch_vtab, ptr %45, i32 0, i32 9
  store i32 %44, ptr %rIns72, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %lor.lhs.false67
  br label %if.end126

if.else74:                                        ; preds = %land.lhs.true60, %if.else56
  %46 = load ptr, ptr %zFrom, align 8
  %call75 = call i32 @strcmp(ptr noundef %46, ptr noundef @.str.19)
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %land.lhs.true78, label %if.else92

land.lhs.true78:                                  ; preds = %if.else74
  %47 = load ptr, ptr %zTo, align 8
  %call79 = call i32 @strcmp(ptr noundef %47, ptr noundef @.str.15)
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.else92

if.then82:                                        ; preds = %land.lhs.true78
  %48 = load ptr, ptr %p.addr, align 8
  %rDel = getelementptr inbounds %struct.amatch_vtab, ptr %48, i32 0, i32 10
  %49 = load i32, ptr %rDel, align 4
  %cmp83 = icmp eq i32 %49, 0
  br i1 %cmp83, label %if.then89, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.then82
  %50 = load ptr, ptr %p.addr, align 8
  %rDel86 = getelementptr inbounds %struct.amatch_vtab, ptr %50, i32 0, i32 10
  %51 = load i32, ptr %rDel86, align 4
  %52 = load i32, ptr %rCost, align 4
  %cmp87 = icmp sgt i32 %51, %52
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %lor.lhs.false85, %if.then82
  %53 = load i32, ptr %rCost, align 4
  %54 = load ptr, ptr %p.addr, align 8
  %rDel90 = getelementptr inbounds %struct.amatch_vtab, ptr %54, i32 0, i32 10
  store i32 %53, ptr %rDel90, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %lor.lhs.false85
  br label %if.end125

if.else92:                                        ; preds = %land.lhs.true78, %if.else74
  %55 = load i32, ptr %nFrom, align 4
  %conv93 = sext i32 %55 to i64
  %add = add i64 32, %conv93
  %56 = load i32, ptr %nTo, align 4
  %conv94 = sext i32 %56 to i64
  %add95 = add i64 %add, %conv94
  %call96 = call ptr @sqlite3_malloc64(i64 noundef %add95)
  store ptr %call96, ptr %pRule, align 8
  %57 = load ptr, ptr %pRule, align 8
  %cmp97 = icmp eq ptr %57, null
  br i1 %cmp97, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.else92
  store i32 7, ptr %rc, align 4
  br label %if.end124

if.else100:                                       ; preds = %if.else92
  %58 = load ptr, ptr %pRule, align 8
  %59 = load ptr, ptr %pRule, align 8
  %60 = call i64 @llvm.objectsize.i64.p0(ptr %59, i1 false, i1 true, i1 false)
  %call101 = call ptr @__memset_chk(ptr noundef %58, i32 noundef 0, i64 noundef 32, i64 noundef %60) #6
  %61 = load ptr, ptr %pRule, align 8
  %zTo102 = getelementptr inbounds %struct.amatch_rule, ptr %61, i32 0, i32 6
  %62 = load i32, ptr %nTo, align 4
  %add103 = add nsw i32 %62, 1
  %idxprom = sext i32 %add103 to i64
  %arrayidx104 = getelementptr inbounds [4 x i8], ptr %zTo102, i64 0, i64 %idxprom
  %63 = load ptr, ptr %pRule, align 8
  %zFrom105 = getelementptr inbounds %struct.amatch_rule, ptr %63, i32 0, i32 1
  store ptr %arrayidx104, ptr %zFrom105, align 8
  %64 = load i32, ptr %nFrom, align 4
  %conv106 = trunc i32 %64 to i8
  %65 = load ptr, ptr %pRule, align 8
  %nFrom107 = getelementptr inbounds %struct.amatch_rule, ptr %65, i32 0, i32 4
  store i8 %conv106, ptr %nFrom107, align 8
  %66 = load ptr, ptr %pRule, align 8
  %zFrom108 = getelementptr inbounds %struct.amatch_rule, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %zFrom108, align 8
  %68 = load ptr, ptr %zFrom, align 8
  %69 = load i32, ptr %nFrom, align 4
  %add109 = add nsw i32 %69, 1
  %conv110 = sext i32 %add109 to i64
  %70 = load ptr, ptr %pRule, align 8
  %zFrom111 = getelementptr inbounds %struct.amatch_rule, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %zFrom111, align 8
  %72 = call i64 @llvm.objectsize.i64.p0(ptr %71, i1 false, i1 true, i1 false)
  %call112 = call ptr @__memcpy_chk(ptr noundef %67, ptr noundef %68, i64 noundef %conv110, i64 noundef %72) #6
  %73 = load ptr, ptr %pRule, align 8
  %zTo113 = getelementptr inbounds %struct.amatch_rule, ptr %73, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4 x i8], ptr %zTo113, i64 0, i64 0
  %74 = load ptr, ptr %zTo, align 8
  %75 = load i32, ptr %nTo, align 4
  %add114 = add nsw i32 %75, 1
  %conv115 = sext i32 %add114 to i64
  %76 = load ptr, ptr %pRule, align 8
  %zTo116 = getelementptr inbounds %struct.amatch_rule, ptr %76, i32 0, i32 6
  %arraydecay117 = getelementptr inbounds [4 x i8], ptr %zTo116, i64 0, i64 0
  %77 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay117, i1 false, i1 true, i1 false)
  %call118 = call ptr @__memcpy_chk(ptr noundef %arraydecay, ptr noundef %74, i64 noundef %conv115, i64 noundef %77) #6
  %78 = load i32, ptr %nTo, align 4
  %conv119 = trunc i32 %78 to i8
  %79 = load ptr, ptr %pRule, align 8
  %nTo120 = getelementptr inbounds %struct.amatch_rule, ptr %79, i32 0, i32 5
  store i8 %conv119, ptr %nTo120, align 1
  %80 = load i32, ptr %rCost, align 4
  %81 = load ptr, ptr %pRule, align 8
  %rCost121 = getelementptr inbounds %struct.amatch_rule, ptr %81, i32 0, i32 2
  store i32 %80, ptr %rCost121, align 8
  %82 = load i64, ptr %iLang, align 8
  %conv122 = trunc i64 %82 to i32
  %83 = load ptr, ptr %pRule, align 8
  %iLang123 = getelementptr inbounds %struct.amatch_rule, ptr %83, i32 0, i32 3
  store i32 %conv122, ptr %iLang123, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else100, %if.then99
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end91
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end73
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then53
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then44
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then37
  %84 = load ptr, ptr %pRule, align 8
  %85 = load ptr, ptr %ppRule.addr, align 8
  store ptr %84, ptr %85, align 8
  %86 = load i32, ptr %rc, align 4
  store i32 %86, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end129, %if.end30
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @amatchMergeRules(ptr noundef %pA, ptr noundef %pB) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %head = alloca %struct.amatch_rule, align 8
  %pTail = alloca ptr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr %head, ptr %pTail, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %pA.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %pB.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load ptr, ptr %pA.addr, align 8
  %rCost = getelementptr inbounds %struct.amatch_rule, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %rCost, align 8
  %5 = load ptr, ptr %pB.addr, align 8
  %rCost2 = getelementptr inbounds %struct.amatch_rule, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %rCost2, align 8
  %cmp = icmp sle i32 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %pA.addr, align 8
  %8 = load ptr, ptr %pTail, align 8
  %pNext = getelementptr inbounds %struct.amatch_rule, ptr %8, i32 0, i32 0
  store ptr %7, ptr %pNext, align 8
  %9 = load ptr, ptr %pA.addr, align 8
  store ptr %9, ptr %pTail, align 8
  %10 = load ptr, ptr %pA.addr, align 8
  %pNext3 = getelementptr inbounds %struct.amatch_rule, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pNext3, align 8
  store ptr %11, ptr %pA.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %pB.addr, align 8
  %13 = load ptr, ptr %pTail, align 8
  %pNext4 = getelementptr inbounds %struct.amatch_rule, ptr %13, i32 0, i32 0
  store ptr %12, ptr %pNext4, align 8
  %14 = load ptr, ptr %pB.addr, align 8
  store ptr %14, ptr %pTail, align 8
  %15 = load ptr, ptr %pB.addr, align 8
  %pNext5 = getelementptr inbounds %struct.amatch_rule, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pNext5, align 8
  store ptr %16, ptr %pB.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %pA.addr, align 8
  %cmp6 = icmp eq ptr %17, null
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %while.end
  %18 = load ptr, ptr %pB.addr, align 8
  %19 = load ptr, ptr %pTail, align 8
  %pNext8 = getelementptr inbounds %struct.amatch_rule, ptr %19, i32 0, i32 0
  store ptr %18, ptr %pNext8, align 8
  br label %if.end11

if.else9:                                         ; preds = %while.end
  %20 = load ptr, ptr %pA.addr, align 8
  %21 = load ptr, ptr %pTail, align 8
  %pNext10 = getelementptr inbounds %struct.amatch_rule, ptr %21, i32 0, i32 0
  store ptr %20, ptr %pNext10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %pNext12 = getelementptr inbounds %struct.amatch_rule, ptr %head, i32 0, i32 0
  %22 = load ptr, ptr %pNext12, align 8
  ret ptr %22
}

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) #1

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #1

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @amatchClearCursor(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pWord = alloca ptr, align 8
  %pNextWord = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %pAllWords = getelementptr inbounds %struct.amatch_cursor, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %pAllWords, align 8
  store ptr %1, ptr %pWord, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %pWord, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pWord, align 8
  %pNext = getelementptr inbounds %struct.amatch_word, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pNext, align 8
  store ptr %4, ptr %pNextWord, align 8
  %5 = load ptr, ptr %pWord, align 8
  call void @sqlite3_free(ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %pNextWord, align 8
  store ptr %6, ptr %pWord, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %pCur.addr, align 8
  %pAllWords1 = getelementptr inbounds %struct.amatch_cursor, ptr %7, i32 0, i32 10
  store ptr null, ptr %pAllWords1, align 8
  %8 = load ptr, ptr %pCur.addr, align 8
  %zInput = getelementptr inbounds %struct.amatch_cursor, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %zInput, align 8
  call void @sqlite3_free(ptr noundef %9)
  %10 = load ptr, ptr %pCur.addr, align 8
  %zInput2 = getelementptr inbounds %struct.amatch_cursor, ptr %10, i32 0, i32 8
  store ptr null, ptr %zInput2, align 8
  %11 = load ptr, ptr %pCur.addr, align 8
  %zBuf = getelementptr inbounds %struct.amatch_cursor, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %zBuf, align 8
  call void @sqlite3_free(ptr noundef %12)
  %13 = load ptr, ptr %pCur.addr, align 8
  %zBuf3 = getelementptr inbounds %struct.amatch_cursor, ptr %13, i32 0, i32 7
  store ptr null, ptr %zBuf3, align 8
  %14 = load ptr, ptr %pCur.addr, align 8
  %nBuf = getelementptr inbounds %struct.amatch_cursor, ptr %14, i32 0, i32 4
  store i64 0, ptr %nBuf, align 8
  %15 = load ptr, ptr %pCur.addr, align 8
  %pCost = getelementptr inbounds %struct.amatch_cursor, ptr %15, i32 0, i32 12
  store ptr null, ptr %pCost, align 8
  %16 = load ptr, ptr %pCur.addr, align 8
  %pWord4 = getelementptr inbounds %struct.amatch_cursor, ptr %16, i32 0, i32 13
  store ptr null, ptr %pWord4, align 8
  %17 = load ptr, ptr %pCur.addr, align 8
  %pCurrent = getelementptr inbounds %struct.amatch_cursor, ptr %17, i32 0, i32 11
  store ptr null, ptr %pCurrent, align 8
  %18 = load ptr, ptr %pCur.addr, align 8
  %rLimit = getelementptr inbounds %struct.amatch_cursor, ptr %18, i32 0, i32 3
  store i32 1000000, ptr %rLimit, align 4
  %19 = load ptr, ptr %pCur.addr, align 8
  %iLang = getelementptr inbounds %struct.amatch_cursor, ptr %19, i32 0, i32 2
  store i32 0, ptr %iLang, align 8
  %20 = load ptr, ptr %pCur.addr, align 8
  %nWord = getelementptr inbounds %struct.amatch_cursor, ptr %20, i32 0, i32 6
  store i32 0, ptr %nWord, align 4
  ret void
}

declare ptr @sqlite3_value_text(ptr noundef) #1

declare i32 @sqlite3_value_int(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @amatchAddWord(ptr noundef %pCur, i32 noundef %rCost, i32 noundef %nMatch, ptr noundef %zWordBase, ptr noundef %zWordTail) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %rCost.addr = alloca i32, align 4
  %nMatch.addr = alloca i32, align 4
  %zWordBase.addr = alloca ptr, align 8
  %zWordTail.addr = alloca ptr, align 8
  %pWord = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %pOther = alloca ptr, align 8
  %nBase = alloca i32, align 4
  %nTail = alloca i32, align 4
  %zBuf = alloca [4 x i8], align 1
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %rCost, ptr %rCost.addr, align 4
  store i32 %nMatch, ptr %nMatch.addr, align 4
  store ptr %zWordBase, ptr %zWordBase.addr, align 8
  store ptr %zWordTail, ptr %zWordTail.addr, align 8
  %0 = load i32, ptr %rCost.addr, align 4
  %1 = load ptr, ptr %pCur.addr, align 8
  %rLimit = getelementptr inbounds %struct.amatch_cursor, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %rLimit, align 4
  %cmp = icmp sgt i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %zWordBase.addr, align 8
  %call = call i64 @strlen(ptr noundef %3)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %nBase, align 4
  %4 = load ptr, ptr %zWordTail.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %4)
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, ptr %nTail, align 4
  %5 = load i32, ptr %nBase, align 4
  %6 = load i32, ptr %nTail, align 4
  %add = add nsw i32 %5, %6
  %add3 = add nsw i32 %add, 3
  %conv4 = sext i32 %add3 to i64
  %7 = load ptr, ptr %pCur.addr, align 8
  %nBuf = getelementptr inbounds %struct.amatch_cursor, ptr %7, i32 0, i32 4
  %8 = load i64, ptr %nBuf, align 8
  %cmp5 = icmp sgt i64 %conv4, %8
  br i1 %cmp5, label %if.then7, label %if.end22

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %nBase, align 4
  %10 = load i32, ptr %nTail, align 4
  %add8 = add nsw i32 %9, %10
  %add9 = add nsw i32 %add8, 100
  %conv10 = sext i32 %add9 to i64
  %11 = load ptr, ptr %pCur.addr, align 8
  %nBuf11 = getelementptr inbounds %struct.amatch_cursor, ptr %11, i32 0, i32 4
  store i64 %conv10, ptr %nBuf11, align 8
  %12 = load ptr, ptr %pCur.addr, align 8
  %zBuf12 = getelementptr inbounds %struct.amatch_cursor, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %zBuf12, align 8
  %14 = load ptr, ptr %pCur.addr, align 8
  %nBuf13 = getelementptr inbounds %struct.amatch_cursor, ptr %14, i32 0, i32 4
  %15 = load i64, ptr %nBuf13, align 8
  %call14 = call ptr @sqlite3_realloc64(ptr noundef %13, i64 noundef %15)
  %16 = load ptr, ptr %pCur.addr, align 8
  %zBuf15 = getelementptr inbounds %struct.amatch_cursor, ptr %16, i32 0, i32 7
  store ptr %call14, ptr %zBuf15, align 8
  %17 = load ptr, ptr %pCur.addr, align 8
  %zBuf16 = getelementptr inbounds %struct.amatch_cursor, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %zBuf16, align 8
  %cmp17 = icmp eq ptr %18, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then7
  %19 = load ptr, ptr %pCur.addr, align 8
  %nBuf20 = getelementptr inbounds %struct.amatch_cursor, ptr %19, i32 0, i32 4
  store i64 0, ptr %nBuf20, align 8
  br label %return

if.end21:                                         ; preds = %if.then7
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end
  %20 = load i32, ptr %nMatch.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], ptr %zBuf, i64 0, i64 0
  call void @amatchEncodeInt(i32 noundef %20, ptr noundef %arraydecay)
  %21 = load ptr, ptr %pCur.addr, align 8
  %zBuf23 = getelementptr inbounds %struct.amatch_cursor, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %zBuf23, align 8
  %arraydecay24 = getelementptr inbounds [4 x i8], ptr %zBuf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay24, i64 2
  %23 = load ptr, ptr %pCur.addr, align 8
  %zBuf25 = getelementptr inbounds %struct.amatch_cursor, ptr %23, i32 0, i32 7
  %24 = load ptr, ptr %zBuf25, align 8
  %25 = call i64 @llvm.objectsize.i64.p0(ptr %24, i1 false, i1 true, i1 false)
  %call26 = call ptr @__memcpy_chk(ptr noundef %22, ptr noundef %add.ptr, i64 noundef 2, i64 noundef %25) #6
  %26 = load ptr, ptr %pCur.addr, align 8
  %zBuf27 = getelementptr inbounds %struct.amatch_cursor, ptr %26, i32 0, i32 7
  %27 = load ptr, ptr %zBuf27, align 8
  %add.ptr28 = getelementptr inbounds i8, ptr %27, i64 2
  %28 = load ptr, ptr %zWordBase.addr, align 8
  %29 = load i32, ptr %nBase, align 4
  %conv29 = sext i32 %29 to i64
  %30 = load ptr, ptr %pCur.addr, align 8
  %zBuf30 = getelementptr inbounds %struct.amatch_cursor, ptr %30, i32 0, i32 7
  %31 = load ptr, ptr %zBuf30, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr31, i1 false, i1 true, i1 false)
  %call32 = call ptr @__memcpy_chk(ptr noundef %add.ptr28, ptr noundef %28, i64 noundef %conv29, i64 noundef %32) #6
  %33 = load ptr, ptr %pCur.addr, align 8
  %zBuf33 = getelementptr inbounds %struct.amatch_cursor, ptr %33, i32 0, i32 7
  %34 = load ptr, ptr %zBuf33, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %34, i64 2
  %35 = load i32, ptr %nBase, align 4
  %idx.ext = sext i32 %35 to i64
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr34, i64 %idx.ext
  %36 = load ptr, ptr %zWordTail.addr, align 8
  %37 = load i32, ptr %nTail, align 4
  %add36 = add nsw i32 %37, 1
  %conv37 = sext i32 %add36 to i64
  %38 = load ptr, ptr %pCur.addr, align 8
  %zBuf38 = getelementptr inbounds %struct.amatch_cursor, ptr %38, i32 0, i32 7
  %39 = load ptr, ptr %zBuf38, align 8
  %add.ptr39 = getelementptr inbounds i8, ptr %39, i64 2
  %40 = load i32, ptr %nBase, align 4
  %idx.ext40 = sext i32 %40 to i64
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr39, i64 %idx.ext40
  %41 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr41, i1 false, i1 true, i1 false)
  %call42 = call ptr @__memcpy_chk(ptr noundef %add.ptr35, ptr noundef %36, i64 noundef %conv37, i64 noundef %41) #6
  %42 = load ptr, ptr %pCur.addr, align 8
  %pWord43 = getelementptr inbounds %struct.amatch_cursor, ptr %42, i32 0, i32 13
  %43 = load ptr, ptr %pWord43, align 8
  %44 = load ptr, ptr %pCur.addr, align 8
  %zBuf44 = getelementptr inbounds %struct.amatch_cursor, ptr %44, i32 0, i32 7
  %45 = load ptr, ptr %zBuf44, align 8
  %call45 = call ptr @amatchAvlSearch(ptr noundef %43, ptr noundef %45)
  store ptr %call45, ptr %pNode, align 8
  %46 = load ptr, ptr %pNode, align 8
  %tobool = icmp ne ptr %46, null
  br i1 %tobool, label %if.then46, label %if.end61

if.then46:                                        ; preds = %if.end22
  %47 = load ptr, ptr %pNode, align 8
  %pWord47 = getelementptr inbounds %struct.amatch_avl, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pWord47, align 8
  store ptr %48, ptr %pWord, align 8
  %49 = load ptr, ptr %pWord, align 8
  %rCost48 = getelementptr inbounds %struct.amatch_word, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %rCost48, align 8
  %51 = load i32, ptr %rCost.addr, align 4
  %cmp49 = icmp sgt i32 %50, %51
  br i1 %cmp49, label %if.then51, label %if.end60

if.then51:                                        ; preds = %if.then46
  %52 = load ptr, ptr %pCur.addr, align 8
  %pCost = getelementptr inbounds %struct.amatch_cursor, ptr %52, i32 0, i32 12
  %53 = load ptr, ptr %pWord, align 8
  %sCost = getelementptr inbounds %struct.amatch_word, ptr %53, i32 0, i32 1
  call void @amatchAvlRemove(ptr noundef %pCost, ptr noundef %sCost)
  %54 = load i32, ptr %rCost.addr, align 4
  %55 = load ptr, ptr %pWord, align 8
  %rCost52 = getelementptr inbounds %struct.amatch_word, ptr %55, i32 0, i32 3
  store i32 %54, ptr %rCost52, align 8
  %56 = load ptr, ptr %pWord, align 8
  call void @amatchWriteCost(ptr noundef %56)
  %57 = load ptr, ptr %pCur.addr, align 8
  %pCost53 = getelementptr inbounds %struct.amatch_cursor, ptr %57, i32 0, i32 12
  %58 = load ptr, ptr %pWord, align 8
  %sCost54 = getelementptr inbounds %struct.amatch_word, ptr %58, i32 0, i32 1
  %call55 = call ptr @amatchAvlInsert(ptr noundef %pCost53, ptr noundef %sCost54)
  store ptr %call55, ptr %pOther, align 8
  %59 = load ptr, ptr %pOther, align 8
  %cmp56 = icmp eq ptr %59, null
  %lnot = xor i1 %cmp56, true
  %lnot.ext = zext i1 %lnot to i32
  %conv58 = sext i32 %lnot.ext to i64
  %tobool59 = icmp ne i64 %conv58, 0
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then51
  call void @__assert_rtn(ptr noundef @__func__.amatchAddWord, ptr noundef @.str.9, i32 noundef 1069, ptr noundef @.str.22) #7
  unreachable

60:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then51
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %60
  %61 = load ptr, ptr %pOther, align 8
  br label %if.end60

if.end60:                                         ; preds = %cond.end, %if.then46
  br label %return

if.end61:                                         ; preds = %if.end22
  %62 = load i32, ptr %nBase, align 4
  %conv62 = sext i32 %62 to i64
  %add63 = add i64 128, %conv62
  %63 = load i32, ptr %nTail, align 4
  %conv64 = sext i32 %63 to i64
  %add65 = add i64 %add63, %conv64
  %sub = sub i64 %add65, 1
  %call66 = call ptr @sqlite3_malloc64(i64 noundef %sub)
  store ptr %call66, ptr %pWord, align 8
  %64 = load ptr, ptr %pWord, align 8
  %cmp67 = icmp eq ptr %64, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end61
  br label %return

if.end70:                                         ; preds = %if.end61
  %65 = load ptr, ptr %pWord, align 8
  %66 = load ptr, ptr %pWord, align 8
  %67 = call i64 @llvm.objectsize.i64.p0(ptr %66, i1 false, i1 true, i1 false)
  %call71 = call ptr @__memset_chk(ptr noundef %65, i32 noundef 0, i64 noundef 128, i64 noundef %67) #6
  %68 = load i32, ptr %rCost.addr, align 4
  %69 = load ptr, ptr %pWord, align 8
  %rCost72 = getelementptr inbounds %struct.amatch_word, ptr %69, i32 0, i32 3
  store i32 %68, ptr %rCost72, align 8
  %70 = load ptr, ptr %pCur.addr, align 8
  %nWord = getelementptr inbounds %struct.amatch_cursor, ptr %70, i32 0, i32 6
  %71 = load i32, ptr %nWord, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, ptr %nWord, align 4
  %72 = load ptr, ptr %pWord, align 8
  %iSeq = getelementptr inbounds %struct.amatch_word, ptr %72, i32 0, i32 4
  store i32 %71, ptr %iSeq, align 4
  %73 = load ptr, ptr %pWord, align 8
  call void @amatchWriteCost(ptr noundef %73)
  %74 = load i32, ptr %nMatch.addr, align 4
  %conv73 = trunc i32 %74 to i16
  %75 = load ptr, ptr %pWord, align 8
  %nMatch74 = getelementptr inbounds %struct.amatch_word, ptr %75, i32 0, i32 6
  store i16 %conv73, ptr %nMatch74, align 2
  %76 = load ptr, ptr %pCur.addr, align 8
  %pAllWords = getelementptr inbounds %struct.amatch_cursor, ptr %76, i32 0, i32 10
  %77 = load ptr, ptr %pAllWords, align 8
  %78 = load ptr, ptr %pWord, align 8
  %pNext = getelementptr inbounds %struct.amatch_word, ptr %78, i32 0, i32 0
  store ptr %77, ptr %pNext, align 8
  %79 = load ptr, ptr %pWord, align 8
  %80 = load ptr, ptr %pCur.addr, align 8
  %pAllWords75 = getelementptr inbounds %struct.amatch_cursor, ptr %80, i32 0, i32 10
  store ptr %79, ptr %pAllWords75, align 8
  %81 = load ptr, ptr %pWord, align 8
  %zCost = getelementptr inbounds %struct.amatch_word, ptr %81, i32 0, i32 5
  %arraydecay76 = getelementptr inbounds [10 x i8], ptr %zCost, i64 0, i64 0
  %82 = load ptr, ptr %pWord, align 8
  %sCost77 = getelementptr inbounds %struct.amatch_word, ptr %82, i32 0, i32 1
  %zKey = getelementptr inbounds %struct.amatch_avl, ptr %sCost77, i32 0, i32 1
  store ptr %arraydecay76, ptr %zKey, align 8
  %83 = load ptr, ptr %pWord, align 8
  %84 = load ptr, ptr %pWord, align 8
  %sCost78 = getelementptr inbounds %struct.amatch_word, ptr %84, i32 0, i32 1
  %pWord79 = getelementptr inbounds %struct.amatch_avl, ptr %sCost78, i32 0, i32 0
  store ptr %83, ptr %pWord79, align 8
  %85 = load ptr, ptr %pCur.addr, align 8
  %pCost80 = getelementptr inbounds %struct.amatch_cursor, ptr %85, i32 0, i32 12
  %86 = load ptr, ptr %pWord, align 8
  %sCost81 = getelementptr inbounds %struct.amatch_word, ptr %86, i32 0, i32 1
  %call82 = call ptr @amatchAvlInsert(ptr noundef %pCost80, ptr noundef %sCost81)
  store ptr %call82, ptr %pOther, align 8
  %87 = load ptr, ptr %pOther, align 8
  %cmp83 = icmp eq ptr %87, null
  %lnot85 = xor i1 %cmp83, true
  %lnot.ext86 = zext i1 %lnot85 to i32
  %conv87 = sext i32 %lnot.ext86 to i64
  %tobool88 = icmp ne i64 %conv87, 0
  br i1 %tobool88, label %cond.true89, label %cond.false90

cond.true89:                                      ; preds = %if.end70
  call void @__assert_rtn(ptr noundef @__func__.amatchAddWord, ptr noundef @.str.9, i32 noundef 1085, ptr noundef @.str.22) #7
  unreachable

88:                                               ; No predecessors!
  br label %cond.end91

cond.false90:                                     ; preds = %if.end70
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false90, %88
  %89 = load ptr, ptr %pOther, align 8
  %90 = load ptr, ptr %pWord, align 8
  %zWord = getelementptr inbounds %struct.amatch_word, ptr %90, i32 0, i32 7
  %arraydecay92 = getelementptr inbounds [4 x i8], ptr %zWord, i64 0, i64 0
  %91 = load ptr, ptr %pWord, align 8
  %sWord = getelementptr inbounds %struct.amatch_word, ptr %91, i32 0, i32 2
  %zKey93 = getelementptr inbounds %struct.amatch_avl, ptr %sWord, i32 0, i32 1
  store ptr %arraydecay92, ptr %zKey93, align 8
  %92 = load ptr, ptr %pWord, align 8
  %93 = load ptr, ptr %pWord, align 8
  %sWord94 = getelementptr inbounds %struct.amatch_word, ptr %93, i32 0, i32 2
  %pWord95 = getelementptr inbounds %struct.amatch_avl, ptr %sWord94, i32 0, i32 0
  store ptr %92, ptr %pWord95, align 8
  %94 = load ptr, ptr %pWord, align 8
  %zWord96 = getelementptr inbounds %struct.amatch_word, ptr %94, i32 0, i32 7
  %arraydecay97 = getelementptr inbounds [4 x i8], ptr %zWord96, i64 0, i64 0
  %95 = load ptr, ptr %pCur.addr, align 8
  %zBuf98 = getelementptr inbounds %struct.amatch_cursor, ptr %95, i32 0, i32 7
  %96 = load ptr, ptr %zBuf98, align 8
  call void @amatchStrcpy(ptr noundef %arraydecay97, ptr noundef %96)
  %97 = load ptr, ptr %pCur.addr, align 8
  %pWord99 = getelementptr inbounds %struct.amatch_cursor, ptr %97, i32 0, i32 13
  %98 = load ptr, ptr %pWord, align 8
  %sWord100 = getelementptr inbounds %struct.amatch_word, ptr %98, i32 0, i32 2
  %call101 = call ptr @amatchAvlInsert(ptr noundef %pWord99, ptr noundef %sWord100)
  store ptr %call101, ptr %pOther, align 8
  %99 = load ptr, ptr %pOther, align 8
  %cmp102 = icmp eq ptr %99, null
  %lnot104 = xor i1 %cmp102, true
  %lnot.ext105 = zext i1 %lnot104 to i32
  %conv106 = sext i32 %lnot.ext105 to i64
  %tobool107 = icmp ne i64 %conv106, 0
  br i1 %tobool107, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %cond.end91
  call void @__assert_rtn(ptr noundef @__func__.amatchAddWord, ptr noundef @.str.9, i32 noundef 1090, ptr noundef @.str.22) #7
  unreachable

100:                                              ; No predecessors!
  br label %cond.end110

cond.false109:                                    ; preds = %cond.end91
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %100
  %101 = load ptr, ptr %pOther, align 8
  br label %return

return:                                           ; preds = %cond.end110, %if.then69, %if.end60, %if.then19, %if.then
  ret void
}

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @amatchEncodeInt(i32 noundef %x, ptr noundef %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  store i32 %x, ptr %x.addr, align 4
  store ptr %z, ptr %z.addr, align 8
  %0 = load i32, ptr %x.addr, align 4
  %shr = ashr i32 %0, 18
  %and = and i32 %shr, 63
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @amatchEncodeInt.a, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %2 = load ptr, ptr %z.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %1, ptr %arrayidx1, align 1
  %3 = load i32, ptr %x.addr, align 4
  %shr2 = ashr i32 %3, 12
  %and3 = and i32 %shr2, 63
  %idxprom4 = sext i32 %and3 to i64
  %arrayidx5 = getelementptr inbounds [65 x i8], ptr @amatchEncodeInt.a, i64 0, i64 %idxprom4
  %4 = load i8, ptr %arrayidx5, align 1
  %5 = load ptr, ptr %z.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %4, ptr %arrayidx6, align 1
  %6 = load i32, ptr %x.addr, align 4
  %shr7 = ashr i32 %6, 6
  %and8 = and i32 %shr7, 63
  %idxprom9 = sext i32 %and8 to i64
  %arrayidx10 = getelementptr inbounds [65 x i8], ptr @amatchEncodeInt.a, i64 0, i64 %idxprom9
  %7 = load i8, ptr %arrayidx10, align 1
  %8 = load ptr, ptr %z.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %8, i64 2
  store i8 %7, ptr %arrayidx11, align 1
  %9 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %9, 63
  %idxprom13 = sext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [65 x i8], ptr @amatchEncodeInt.a, i64 0, i64 %idxprom13
  %10 = load i8, ptr %arrayidx14, align 1
  %11 = load ptr, ptr %z.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %11, i64 3
  store i8 %10, ptr %arrayidx15, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @amatchAvlSearch(ptr noundef %p, ptr noundef %zKey) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %zKey.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %zKey, ptr %zKey.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %zKey.addr, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %zKey1 = getelementptr inbounds %struct.amatch_avl, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %zKey1, align 8
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef %3)
  store i32 %call, ptr %c, align 4
  %cmp = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %c, align 4
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load ptr, ptr %p.addr, align 8
  %pBefore = getelementptr inbounds %struct.amatch_avl, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pBefore, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %8 = load ptr, ptr %p.addr, align 8
  %pAfter = getelementptr inbounds %struct.amatch_avl, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %pAfter, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ %9, %cond.false ]
  store ptr %cond, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %land.end
  %10 = load ptr, ptr %p.addr, align 8
  ret ptr %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @amatchAvlRemove(ptr noundef %ppHead, ptr noundef %pOld) #0 {
entry:
  %ppHead.addr = alloca ptr, align 8
  %pOld.addr = alloca ptr, align 8
  %ppParent = alloca ptr, align 8
  %pBalance = alloca ptr, align 8
  %pX = alloca ptr, align 8
  %pY = alloca ptr, align 8
  store ptr %ppHead, ptr %ppHead.addr, align 8
  store ptr %pOld, ptr %pOld.addr, align 8
  store ptr null, ptr %pBalance, align 8
  %0 = load ptr, ptr %pOld.addr, align 8
  %1 = load ptr, ptr %ppHead.addr, align 8
  %call = call ptr @amatchAvlFromPtr(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %ppParent, align 8
  %2 = load ptr, ptr %pOld.addr, align 8
  %pBefore = getelementptr inbounds %struct.amatch_avl, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pBefore, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pOld.addr, align 8
  %pAfter = getelementptr inbounds %struct.amatch_avl, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pAfter, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %ppParent, align 8
  store ptr null, ptr %6, align 8
  %7 = load ptr, ptr %pOld.addr, align 8
  %pUp = getelementptr inbounds %struct.amatch_avl, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pUp, align 8
  store ptr %8, ptr %pBalance, align 8
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %pOld.addr, align 8
  %pBefore2 = getelementptr inbounds %struct.amatch_avl, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pBefore2, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %land.lhs.true3, label %if.else37

land.lhs.true3:                                   ; preds = %if.else
  %11 = load ptr, ptr %pOld.addr, align 8
  %pAfter4 = getelementptr inbounds %struct.amatch_avl, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %pAfter4, align 8
  %tobool5 = icmp ne ptr %12, null
  br i1 %tobool5, label %if.then6, label %if.else37

if.then6:                                         ; preds = %land.lhs.true3
  %13 = load ptr, ptr %pOld.addr, align 8
  %pAfter7 = getelementptr inbounds %struct.amatch_avl, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pAfter7, align 8
  %call8 = call ptr @amatchAvlFirst(ptr noundef %14)
  store ptr %call8, ptr %pX, align 8
  %15 = load ptr, ptr %pX, align 8
  %pAfter9 = getelementptr inbounds %struct.amatch_avl, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %pAfter9, align 8
  %17 = load ptr, ptr %pX, align 8
  %call10 = call ptr @amatchAvlFromPtr(ptr noundef %17, ptr noundef null)
  store ptr %16, ptr %call10, align 8
  %18 = load ptr, ptr %pX, align 8
  %pAfter11 = getelementptr inbounds %struct.amatch_avl, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %pAfter11, align 8
  %tobool12 = icmp ne ptr %19, null
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then6
  %20 = load ptr, ptr %pX, align 8
  %pUp14 = getelementptr inbounds %struct.amatch_avl, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %pUp14, align 8
  %22 = load ptr, ptr %pX, align 8
  %pAfter15 = getelementptr inbounds %struct.amatch_avl, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %pAfter15, align 8
  %pUp16 = getelementptr inbounds %struct.amatch_avl, ptr %23, i32 0, i32 4
  store ptr %21, ptr %pUp16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then6
  %24 = load ptr, ptr %pX, align 8
  %pUp17 = getelementptr inbounds %struct.amatch_avl, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %pUp17, align 8
  store ptr %25, ptr %pBalance, align 8
  %26 = load ptr, ptr %pOld.addr, align 8
  %pAfter18 = getelementptr inbounds %struct.amatch_avl, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pAfter18, align 8
  %28 = load ptr, ptr %pX, align 8
  %pAfter19 = getelementptr inbounds %struct.amatch_avl, ptr %28, i32 0, i32 3
  store ptr %27, ptr %pAfter19, align 8
  %29 = load ptr, ptr %pX, align 8
  %pAfter20 = getelementptr inbounds %struct.amatch_avl, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %pAfter20, align 8
  %tobool21 = icmp ne ptr %30, null
  br i1 %tobool21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.end
  %31 = load ptr, ptr %pX, align 8
  %32 = load ptr, ptr %pX, align 8
  %pAfter23 = getelementptr inbounds %struct.amatch_avl, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %pAfter23, align 8
  %pUp24 = getelementptr inbounds %struct.amatch_avl, ptr %33, i32 0, i32 4
  store ptr %31, ptr %pUp24, align 8
  br label %if.end28

if.else25:                                        ; preds = %if.end
  %34 = load ptr, ptr %pBalance, align 8
  %35 = load ptr, ptr %pOld.addr, align 8
  %cmp26 = icmp eq ptr %34, %35
  %lnot = xor i1 %cmp26, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool27 = icmp ne i64 %conv, 0
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else25
  call void @__assert_rtn(ptr noundef @__func__.amatchAvlRemove, ptr noundef @.str.9, i32 noundef 417, ptr noundef @.str.23) #7
  unreachable

36:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.else25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %36
  %37 = load ptr, ptr %pX, align 8
  store ptr %37, ptr %pBalance, align 8
  br label %if.end28

if.end28:                                         ; preds = %cond.end, %if.then22
  %38 = load ptr, ptr %pOld.addr, align 8
  %pBefore29 = getelementptr inbounds %struct.amatch_avl, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %pBefore29, align 8
  store ptr %39, ptr %pY, align 8
  %40 = load ptr, ptr %pX, align 8
  %pBefore30 = getelementptr inbounds %struct.amatch_avl, ptr %40, i32 0, i32 2
  store ptr %39, ptr %pBefore30, align 8
  %41 = load ptr, ptr %pY, align 8
  %tobool31 = icmp ne ptr %41, null
  br i1 %tobool31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  %42 = load ptr, ptr %pX, align 8
  %43 = load ptr, ptr %pY, align 8
  %pUp33 = getelementptr inbounds %struct.amatch_avl, ptr %43, i32 0, i32 4
  store ptr %42, ptr %pUp33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28
  %44 = load ptr, ptr %pOld.addr, align 8
  %pUp35 = getelementptr inbounds %struct.amatch_avl, ptr %44, i32 0, i32 4
  %45 = load ptr, ptr %pUp35, align 8
  %46 = load ptr, ptr %pX, align 8
  %pUp36 = getelementptr inbounds %struct.amatch_avl, ptr %46, i32 0, i32 4
  store ptr %45, ptr %pUp36, align 8
  %47 = load ptr, ptr %pX, align 8
  %48 = load ptr, ptr %ppParent, align 8
  store ptr %47, ptr %48, align 8
  br label %if.end55

if.else37:                                        ; preds = %land.lhs.true3, %if.else
  %49 = load ptr, ptr %pOld.addr, align 8
  %pBefore38 = getelementptr inbounds %struct.amatch_avl, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %pBefore38, align 8
  %cmp39 = icmp eq ptr %50, null
  br i1 %cmp39, label %if.then41, label %if.else45

if.then41:                                        ; preds = %if.else37
  %51 = load ptr, ptr %pOld.addr, align 8
  %pAfter42 = getelementptr inbounds %struct.amatch_avl, ptr %51, i32 0, i32 3
  %52 = load ptr, ptr %pAfter42, align 8
  store ptr %52, ptr %pBalance, align 8
  %53 = load ptr, ptr %ppParent, align 8
  store ptr %52, ptr %53, align 8
  %54 = load ptr, ptr %pOld.addr, align 8
  %pUp43 = getelementptr inbounds %struct.amatch_avl, ptr %54, i32 0, i32 4
  %55 = load ptr, ptr %pUp43, align 8
  %56 = load ptr, ptr %pBalance, align 8
  %pUp44 = getelementptr inbounds %struct.amatch_avl, ptr %56, i32 0, i32 4
  store ptr %55, ptr %pUp44, align 8
  br label %if.end54

if.else45:                                        ; preds = %if.else37
  %57 = load ptr, ptr %pOld.addr, align 8
  %pAfter46 = getelementptr inbounds %struct.amatch_avl, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %pAfter46, align 8
  %cmp47 = icmp eq ptr %58, null
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.else45
  %59 = load ptr, ptr %pOld.addr, align 8
  %pBefore50 = getelementptr inbounds %struct.amatch_avl, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %pBefore50, align 8
  store ptr %60, ptr %pBalance, align 8
  %61 = load ptr, ptr %ppParent, align 8
  store ptr %60, ptr %61, align 8
  %62 = load ptr, ptr %pOld.addr, align 8
  %pUp51 = getelementptr inbounds %struct.amatch_avl, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %pUp51, align 8
  %64 = load ptr, ptr %pBalance, align 8
  %pUp52 = getelementptr inbounds %struct.amatch_avl, ptr %64, i32 0, i32 4
  store ptr %63, ptr %pUp52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.else45
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then41
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end34
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then
  %65 = load ptr, ptr %pBalance, align 8
  %call57 = call ptr @amatchAvlBalance(ptr noundef %65)
  %66 = load ptr, ptr %ppHead.addr, align 8
  store ptr %call57, ptr %66, align 8
  %67 = load ptr, ptr %pOld.addr, align 8
  %pUp58 = getelementptr inbounds %struct.amatch_avl, ptr %67, i32 0, i32 4
  store ptr null, ptr %pUp58, align 8
  %68 = load ptr, ptr %pOld.addr, align 8
  %pBefore59 = getelementptr inbounds %struct.amatch_avl, ptr %68, i32 0, i32 2
  store ptr null, ptr %pBefore59, align 8
  %69 = load ptr, ptr %pOld.addr, align 8
  %pAfter60 = getelementptr inbounds %struct.amatch_avl, ptr %69, i32 0, i32 3
  store ptr null, ptr %pAfter60, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @amatchWriteCost(ptr noundef %pWord) #0 {
entry:
  %pWord.addr = alloca ptr, align 8
  store ptr %pWord, ptr %pWord.addr, align 8
  %0 = load ptr, ptr %pWord.addr, align 8
  %rCost = getelementptr inbounds %struct.amatch_word, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %rCost, align 8
  %2 = load ptr, ptr %pWord.addr, align 8
  %zCost = getelementptr inbounds %struct.amatch_word, ptr %2, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x i8], ptr %zCost, i64 0, i64 0
  call void @amatchEncodeInt(i32 noundef %1, ptr noundef %arraydecay)
  %3 = load ptr, ptr %pWord.addr, align 8
  %iSeq = getelementptr inbounds %struct.amatch_word, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %iSeq, align 4
  %5 = load ptr, ptr %pWord.addr, align 8
  %zCost1 = getelementptr inbounds %struct.amatch_word, ptr %5, i32 0, i32 5
  %arraydecay2 = getelementptr inbounds [10 x i8], ptr %zCost1, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay2, i64 4
  call void @amatchEncodeInt(i32 noundef %4, ptr noundef %add.ptr)
  %6 = load ptr, ptr %pWord.addr, align 8
  %zCost3 = getelementptr inbounds %struct.amatch_word, ptr %6, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x i8], ptr %zCost3, i64 0, i64 8
  store i8 0, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @amatchAvlInsert(ptr noundef %ppHead, ptr noundef %pNew) #0 {
entry:
  %retval = alloca ptr, align 8
  %ppHead.addr = alloca ptr, align 8
  %pNew.addr = alloca ptr, align 8
  %c = alloca i32, align 4
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
  %pUp = getelementptr inbounds %struct.amatch_avl, ptr %4, i32 0, i32 4
  store ptr null, ptr %pUp, align 8
  br label %if.end23

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.else
  %5 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %pNew.addr, align 8
  %zKey = getelementptr inbounds %struct.amatch_avl, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %zKey, align 8
  %8 = load ptr, ptr %p, align 8
  %zKey1 = getelementptr inbounds %struct.amatch_avl, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %zKey1, align 8
  %call = call i32 @strcmp(ptr noundef %7, ptr noundef %9)
  store i32 %call, ptr %c, align 4
  %10 = load i32, ptr %c, align 4
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then3, label %if.else10

if.then3:                                         ; preds = %while.body
  %11 = load ptr, ptr %p, align 8
  %pBefore = getelementptr inbounds %struct.amatch_avl, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pBefore, align 8
  %tobool4 = icmp ne ptr %12, null
  br i1 %tobool4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.then3
  %13 = load ptr, ptr %p, align 8
  %pBefore6 = getelementptr inbounds %struct.amatch_avl, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %pBefore6, align 8
  store ptr %14, ptr %p, align 8
  br label %if.end

if.else7:                                         ; preds = %if.then3
  %15 = load ptr, ptr %pNew.addr, align 8
  %16 = load ptr, ptr %p, align 8
  %pBefore8 = getelementptr inbounds %struct.amatch_avl, ptr %16, i32 0, i32 2
  store ptr %15, ptr %pBefore8, align 8
  %17 = load ptr, ptr %p, align 8
  %18 = load ptr, ptr %pNew.addr, align 8
  %pUp9 = getelementptr inbounds %struct.amatch_avl, ptr %18, i32 0, i32 4
  store ptr %17, ptr %pUp9, align 8
  br label %while.end

if.end:                                           ; preds = %if.then5
  br label %if.end22

if.else10:                                        ; preds = %while.body
  %19 = load i32, ptr %c, align 4
  %cmp11 = icmp sgt i32 %19, 0
  br i1 %cmp11, label %if.then12, label %if.else20

if.then12:                                        ; preds = %if.else10
  %20 = load ptr, ptr %p, align 8
  %pAfter = getelementptr inbounds %struct.amatch_avl, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %pAfter, align 8
  %tobool13 = icmp ne ptr %21, null
  br i1 %tobool13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.then12
  %22 = load ptr, ptr %p, align 8
  %pAfter15 = getelementptr inbounds %struct.amatch_avl, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %pAfter15, align 8
  store ptr %23, ptr %p, align 8
  br label %if.end19

if.else16:                                        ; preds = %if.then12
  %24 = load ptr, ptr %pNew.addr, align 8
  %25 = load ptr, ptr %p, align 8
  %pAfter17 = getelementptr inbounds %struct.amatch_avl, ptr %25, i32 0, i32 3
  store ptr %24, ptr %pAfter17, align 8
  %26 = load ptr, ptr %p, align 8
  %27 = load ptr, ptr %pNew.addr, align 8
  %pUp18 = getelementptr inbounds %struct.amatch_avl, ptr %27, i32 0, i32 4
  store ptr %26, ptr %pUp18, align 8
  br label %while.end

if.end19:                                         ; preds = %if.then14
  br label %if.end21

if.else20:                                        ; preds = %if.else10
  %28 = load ptr, ptr %p, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.end19
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %if.else16, %if.else7, %while.cond
  br label %if.end23

if.end23:                                         ; preds = %while.end, %if.then
  %29 = load ptr, ptr %pNew.addr, align 8
  %pBefore24 = getelementptr inbounds %struct.amatch_avl, ptr %29, i32 0, i32 2
  store ptr null, ptr %pBefore24, align 8
  %30 = load ptr, ptr %pNew.addr, align 8
  %pAfter25 = getelementptr inbounds %struct.amatch_avl, ptr %30, i32 0, i32 3
  store ptr null, ptr %pAfter25, align 8
  %31 = load ptr, ptr %pNew.addr, align 8
  %height = getelementptr inbounds %struct.amatch_avl, ptr %31, i32 0, i32 5
  store i16 1, ptr %height, align 8
  %32 = load ptr, ptr %pNew.addr, align 8
  %imbalance = getelementptr inbounds %struct.amatch_avl, ptr %32, i32 0, i32 6
  store i16 0, ptr %imbalance, align 2
  %33 = load ptr, ptr %p, align 8
  %call26 = call ptr @amatchAvlBalance(ptr noundef %33)
  %34 = load ptr, ptr %ppHead.addr, align 8
  store ptr %call26, ptr %34, align 8
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.else20
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @amatchStrcpy(ptr noundef %dest, ptr noundef %src) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %src.addr, align 8
  %1 = load i8, ptr %0, align 1
  %2 = load ptr, ptr %dest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr1, ptr %dest.addr, align 8
  store i8 %1, ptr %2, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @amatchAvlFromPtr(ptr noundef %p, ptr noundef %pp) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %pUp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pUp1 = getelementptr inbounds %struct.amatch_avl, ptr %0, i32 0, i32 4
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
  %pAfter = getelementptr inbounds %struct.amatch_avl, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pAfter, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %cmp2 = icmp eq ptr %5, %6
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %pUp, align 8
  %pAfter4 = getelementptr inbounds %struct.amatch_avl, ptr %7, i32 0, i32 3
  store ptr %pAfter4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %pUp, align 8
  %pBefore = getelementptr inbounds %struct.amatch_avl, ptr %8, i32 0, i32 2
  store ptr %pBefore, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @amatchAvlFirst(ptr noundef %p) #0 {
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
  %pBefore = getelementptr inbounds %struct.amatch_avl, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pBefore, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p.addr, align 8
  %pBefore2 = getelementptr inbounds %struct.amatch_avl, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pBefore2, align 8
  store ptr %4, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %5 = load ptr, ptr %p.addr, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @amatchAvlBalance(ptr noundef %p) #0 {
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
  call void @amatchAvlRecomputeHeight(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %imbalance = getelementptr inbounds %struct.amatch_avl, ptr %3, i32 0, i32 6
  %4 = load i16, ptr %imbalance, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %p.addr, align 8
  %pBefore = getelementptr inbounds %struct.amatch_avl, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pBefore, align 8
  store ptr %6, ptr %pB, align 8
  %7 = load ptr, ptr %pB, align 8
  %imbalance2 = getelementptr inbounds %struct.amatch_avl, ptr %7, i32 0, i32 6
  %8 = load i16, ptr %imbalance2, align 2
  %conv3 = sext i16 %8 to i32
  %cmp4 = icmp slt i32 %conv3, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load ptr, ptr %pB, align 8
  %call = call ptr @amatchAvlRotateAfter(ptr noundef %9)
  %10 = load ptr, ptr %p.addr, align 8
  %pBefore7 = getelementptr inbounds %struct.amatch_avl, ptr %10, i32 0, i32 2
  store ptr %call, ptr %pBefore7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %11 = load ptr, ptr %p.addr, align 8
  %call8 = call ptr @amatchAvlFromPtr(ptr noundef %11, ptr noundef %p.addr)
  store ptr %call8, ptr %pp, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %call9 = call ptr @amatchAvlRotateBefore(ptr noundef %12)
  %13 = load ptr, ptr %pp, align 8
  store ptr %call9, ptr %13, align 8
  store ptr %call9, ptr %p.addr, align 8
  br label %if.end26

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %p.addr, align 8
  %imbalance10 = getelementptr inbounds %struct.amatch_avl, ptr %14, i32 0, i32 6
  %15 = load i16, ptr %imbalance10, align 2
  %conv11 = sext i16 %15 to i32
  %cmp12 = icmp sle i32 %conv11, -2
  br i1 %cmp12, label %if.then14, label %if.end25

if.then14:                                        ; preds = %if.else
  %16 = load ptr, ptr %p.addr, align 8
  %pAfter = getelementptr inbounds %struct.amatch_avl, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %pAfter, align 8
  store ptr %17, ptr %pA, align 8
  %18 = load ptr, ptr %pA, align 8
  %imbalance15 = getelementptr inbounds %struct.amatch_avl, ptr %18, i32 0, i32 6
  %19 = load i16, ptr %imbalance15, align 2
  %conv16 = sext i16 %19 to i32
  %cmp17 = icmp sgt i32 %conv16, 0
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then14
  %20 = load ptr, ptr %pA, align 8
  %call20 = call ptr @amatchAvlRotateBefore(ptr noundef %20)
  %21 = load ptr, ptr %p.addr, align 8
  %pAfter21 = getelementptr inbounds %struct.amatch_avl, ptr %21, i32 0, i32 3
  store ptr %call20, ptr %pAfter21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then14
  %22 = load ptr, ptr %p.addr, align 8
  %call23 = call ptr @amatchAvlFromPtr(ptr noundef %22, ptr noundef %p.addr)
  store ptr %call23, ptr %pp, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %call24 = call ptr @amatchAvlRotateAfter(ptr noundef %23)
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
  %pUp = getelementptr inbounds %struct.amatch_avl, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pUp, align 8
  store ptr %27, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %pTop, align 8
  ret ptr %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @amatchAvlRecomputeHeight(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %hBefore = alloca i16, align 2
  %hAfter = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBefore = getelementptr inbounds %struct.amatch_avl, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pBefore, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pBefore1 = getelementptr inbounds %struct.amatch_avl, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pBefore1, align 8
  %height = getelementptr inbounds %struct.amatch_avl, ptr %3, i32 0, i32 5
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
  %pAfter = getelementptr inbounds %struct.amatch_avl, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %pAfter, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %cond.true4, label %cond.false8

cond.true4:                                       ; preds = %cond.end
  %7 = load ptr, ptr %p.addr, align 8
  %pAfter5 = getelementptr inbounds %struct.amatch_avl, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %pAfter5, align 8
  %height6 = getelementptr inbounds %struct.amatch_avl, ptr %8, i32 0, i32 5
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
  %imbalance = getelementptr inbounds %struct.amatch_avl, ptr %12, i32 0, i32 6
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
  %height25 = getelementptr inbounds %struct.amatch_avl, ptr %17, i32 0, i32 5
  store i16 %conv24, ptr %height25, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @amatchAvlRotateAfter(ptr noundef %pP) #0 {
entry:
  %pP.addr = alloca ptr, align 8
  %pA = alloca ptr, align 8
  %pY = alloca ptr, align 8
  store ptr %pP, ptr %pP.addr, align 8
  %0 = load ptr, ptr %pP.addr, align 8
  %pAfter = getelementptr inbounds %struct.amatch_avl, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pAfter, align 8
  store ptr %1, ptr %pA, align 8
  %2 = load ptr, ptr %pA, align 8
  %pBefore = getelementptr inbounds %struct.amatch_avl, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pBefore, align 8
  store ptr %3, ptr %pY, align 8
  %4 = load ptr, ptr %pP.addr, align 8
  %pUp = getelementptr inbounds %struct.amatch_avl, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pUp, align 8
  %6 = load ptr, ptr %pA, align 8
  %pUp1 = getelementptr inbounds %struct.amatch_avl, ptr %6, i32 0, i32 4
  store ptr %5, ptr %pUp1, align 8
  %7 = load ptr, ptr %pP.addr, align 8
  %8 = load ptr, ptr %pA, align 8
  %pBefore2 = getelementptr inbounds %struct.amatch_avl, ptr %8, i32 0, i32 2
  store ptr %7, ptr %pBefore2, align 8
  %9 = load ptr, ptr %pA, align 8
  %10 = load ptr, ptr %pP.addr, align 8
  %pUp3 = getelementptr inbounds %struct.amatch_avl, ptr %10, i32 0, i32 4
  store ptr %9, ptr %pUp3, align 8
  %11 = load ptr, ptr %pY, align 8
  %12 = load ptr, ptr %pP.addr, align 8
  %pAfter4 = getelementptr inbounds %struct.amatch_avl, ptr %12, i32 0, i32 3
  store ptr %11, ptr %pAfter4, align 8
  %13 = load ptr, ptr %pY, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %pP.addr, align 8
  %15 = load ptr, ptr %pY, align 8
  %pUp5 = getelementptr inbounds %struct.amatch_avl, ptr %15, i32 0, i32 4
  store ptr %14, ptr %pUp5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %pP.addr, align 8
  call void @amatchAvlRecomputeHeight(ptr noundef %16)
  %17 = load ptr, ptr %pA, align 8
  call void @amatchAvlRecomputeHeight(ptr noundef %17)
  %18 = load ptr, ptr %pA, align 8
  ret ptr %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @amatchAvlRotateBefore(ptr noundef %pP) #0 {
entry:
  %pP.addr = alloca ptr, align 8
  %pB = alloca ptr, align 8
  %pY = alloca ptr, align 8
  store ptr %pP, ptr %pP.addr, align 8
  %0 = load ptr, ptr %pP.addr, align 8
  %pBefore = getelementptr inbounds %struct.amatch_avl, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pBefore, align 8
  store ptr %1, ptr %pB, align 8
  %2 = load ptr, ptr %pB, align 8
  %pAfter = getelementptr inbounds %struct.amatch_avl, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pAfter, align 8
  store ptr %3, ptr %pY, align 8
  %4 = load ptr, ptr %pP.addr, align 8
  %pUp = getelementptr inbounds %struct.amatch_avl, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pUp, align 8
  %6 = load ptr, ptr %pB, align 8
  %pUp1 = getelementptr inbounds %struct.amatch_avl, ptr %6, i32 0, i32 4
  store ptr %5, ptr %pUp1, align 8
  %7 = load ptr, ptr %pP.addr, align 8
  %8 = load ptr, ptr %pB, align 8
  %pAfter2 = getelementptr inbounds %struct.amatch_avl, ptr %8, i32 0, i32 3
  store ptr %7, ptr %pAfter2, align 8
  %9 = load ptr, ptr %pB, align 8
  %10 = load ptr, ptr %pP.addr, align 8
  %pUp3 = getelementptr inbounds %struct.amatch_avl, ptr %10, i32 0, i32 4
  store ptr %9, ptr %pUp3, align 8
  %11 = load ptr, ptr %pY, align 8
  %12 = load ptr, ptr %pP.addr, align 8
  %pBefore4 = getelementptr inbounds %struct.amatch_avl, ptr %12, i32 0, i32 2
  store ptr %11, ptr %pBefore4, align 8
  %13 = load ptr, ptr %pY, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %pP.addr, align 8
  %15 = load ptr, ptr %pY, align 8
  %pUp5 = getelementptr inbounds %struct.amatch_avl, ptr %15, i32 0, i32 4
  store ptr %14, ptr %pUp5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %pP.addr, align 8
  call void @amatchAvlRecomputeHeight(ptr noundef %16)
  %17 = load ptr, ptr %pB, align 8
  call void @amatchAvlRecomputeHeight(ptr noundef %17)
  %18 = load ptr, ptr %pB, align 8
  ret ptr %18
}

declare i32 @sqlite3_bind_int(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @sqlite3_reset(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @amatchStrcat(ptr noundef %dest, ptr noundef %src) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %dest.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %dest.addr, align 8
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  %3 = load ptr, ptr %dest.addr, align 8
  %4 = load ptr, ptr %src.addr, align 8
  call void @amatchStrcpy(ptr noundef %3, ptr noundef %4)
  ret void
}

declare i32 @sqlite3_bind_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

declare void @sqlite3_result_null(ptr noundef) #1

declare i32 @sqlite3_value_type(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn }
attributes #8 = { nounwind readonly willreturn }

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
