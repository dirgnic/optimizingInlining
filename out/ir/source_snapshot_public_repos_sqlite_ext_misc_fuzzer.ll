; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/fuzzer.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/fuzzer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fuzzer_vtab = type { %struct.sqlite3_vtab, ptr, ptr, i32 }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.sqlite3_index_orderby = type { i32, i8 }
%struct.fuzzer_rule = type { ptr, ptr, i32, i8, i8, i32, [4 x i8] }
%struct.fuzzer_cursor = type { %struct.sqlite3_vtab_cursor, i64, ptr, i32, ptr, ptr, [20 x ptr], i32, ptr, i32, i32, i32, %struct.fuzzer_rule, [4001 x ptr] }
%struct.sqlite3_vtab_cursor = type { ptr }
%struct.fuzzer_stem = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"fuzzer\00", align 1
@fuzzerModule = internal global %struct.sqlite3_module { i32 0, ptr @fuzzerConnect, ptr @fuzzerConnect, ptr @fuzzerBestIndex, ptr @fuzzerDisconnect, ptr @fuzzerDisconnect, ptr @fuzzerOpen, ptr @fuzzerClose, ptr @fuzzerFilter, ptr @fuzzerNext, ptr @fuzzerEof, ptr @fuzzerColumn, ptr @fuzzerRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: wrong number of CREATE VIRTUAL TABLE arguments\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"CREATE TABLE x(word,distance,ruleset)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SELECT * FROM %Q.%Q\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: %s has %d columns, expected 4\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%s: cost must be between 1 and %d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%s: maximum string length is %d\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"%s: ruleset must be between 0 and %d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_fuzzer_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3_create_module(ptr noundef %1, ptr noundef @.str, ptr noundef @fuzzerModule, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  ret i32 %2
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
entry:
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
  %nModule = alloca i64, align 8
  %zTab = alloca ptr, align 8
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
  %4 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ne i32 %4, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %zModule, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1, ptr noundef %5)
  %6 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call, ptr %6, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end31

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %zModule, align 8
  %call2 = call i64 @strlen(ptr noundef %7)
  store i64 %call2, ptr %nModule, align 8
  %8 = load i64, ptr %nModule, align 8
  %add = add i64 48, %8
  %add3 = add i64 %add, 1
  %call4 = call ptr @sqlite3_malloc64(i64 noundef %add3)
  store ptr %call4, ptr %pNew, align 8
  %9 = load ptr, ptr %pNew, align 8
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i32 7, ptr %rc, align 4
  br label %if.end30

if.else7:                                         ; preds = %if.else
  %10 = load ptr, ptr %pNew, align 8
  %11 = load ptr, ptr %pNew, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %11, i1 false, i1 true, i1 false)
  %call8 = call ptr @__memset_chk(ptr noundef %10, i32 noundef 0, i64 noundef 48, i64 noundef %12) #4
  %13 = load ptr, ptr %pNew, align 8
  %arrayidx9 = getelementptr inbounds %struct.fuzzer_vtab, ptr %13, i64 1
  %14 = load ptr, ptr %pNew, align 8
  %zClassName = getelementptr inbounds %struct.fuzzer_vtab, ptr %14, i32 0, i32 1
  store ptr %arrayidx9, ptr %zClassName, align 8
  %15 = load ptr, ptr %pNew, align 8
  %zClassName10 = getelementptr inbounds %struct.fuzzer_vtab, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %zClassName10, align 8
  %17 = load ptr, ptr %zModule, align 8
  %18 = load i64, ptr %nModule, align 8
  %add11 = add nsw i64 %18, 1
  %19 = load ptr, ptr %pNew, align 8
  %zClassName12 = getelementptr inbounds %struct.fuzzer_vtab, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %zClassName12, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call13 = call ptr @__memcpy_chk(ptr noundef %16, ptr noundef %17, i64 noundef %add11, i64 noundef %21) #4
  %22 = load ptr, ptr %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %22, i64 3
  %23 = load ptr, ptr %arrayidx14, align 8
  %call15 = call ptr @fuzzerDequote(ptr noundef %23)
  store ptr %call15, ptr %zTab, align 8
  %24 = load ptr, ptr %zTab, align 8
  %cmp16 = icmp eq ptr %24, null
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else7
  store i32 7, ptr %rc, align 4
  br label %if.end

if.else18:                                        ; preds = %if.else7
  %25 = load ptr, ptr %db.addr, align 8
  %26 = load ptr, ptr %pNew, align 8
  %27 = load ptr, ptr %zDb, align 8
  %28 = load ptr, ptr %zTab, align 8
  %29 = load ptr, ptr %pzErr.addr, align 8
  %call19 = call i32 @fuzzerLoadRules(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29)
  store i32 %call19, ptr %rc, align 4
  %30 = load ptr, ptr %zTab, align 8
  call void @sqlite3_free(ptr noundef %30)
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then17
  %31 = load i32, ptr %rc, align 4
  %cmp20 = icmp eq i32 %31, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  %32 = load ptr, ptr %db.addr, align 8
  %call22 = call i32 @sqlite3_declare_vtab(ptr noundef %32, ptr noundef @.str.2)
  store i32 %call22, ptr %rc, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end
  %33 = load i32, ptr %rc, align 4
  %cmp24 = icmp ne i32 %33, 0
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.end23
  %34 = load ptr, ptr %pNew, align 8
  %call26 = call i32 @fuzzerDisconnect(ptr noundef %34)
  store ptr null, ptr %pNew, align 8
  br label %if.end29

if.else27:                                        ; preds = %if.end23
  %35 = load ptr, ptr %db.addr, align 8
  %call28 = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %35, i32 noundef 2)
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then6
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  %36 = load ptr, ptr %pNew, align 8
  %37 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %36, ptr %37, align 8
  %38 = load i32, ptr %rc, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %iPlan = alloca i32, align 4
  %iDistTerm = alloca i32, align 4
  %iRulesetTerm = alloca i32, align 4
  %i = alloca i32, align 4
  %seenMatch = alloca i32, align 4
  %pConstraint = alloca ptr, align 8
  %rCost = alloca double, align 8
  %idx = alloca i32, align 4
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i32 0, ptr %iPlan, align 4
  store i32 -1, ptr %iDistTerm, align 4
  store i32 -1, ptr %iRulesetTerm, align 4
  store i32 0, ptr %seenMatch, align 4
  store double 1.000000e+12, ptr %rCost, align 8
  %0 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %aConstraint, align 8
  store ptr %1, ptr %pConstraint, align 8
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
  %5 = load ptr, ptr %pConstraint, align 8
  %iColumn = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %iColumn, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %pConstraint, align 8
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %op, align 4
  %conv = zext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 64
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %seenMatch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %9 = load ptr, ptr %pConstraint, align 8
  %usable = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %9, i32 0, i32 2
  %10 = load i8, ptr %usable, align 1
  %conv4 = zext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %11 = load i32, ptr %iPlan, align 4
  %and = and i32 %11, 1
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.end24

land.lhs.true11:                                  ; preds = %if.end8
  %12 = load ptr, ptr %pConstraint, align 8
  %iColumn12 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %iColumn12, align 4
  %cmp13 = icmp eq i32 %13, 0
  br i1 %cmp13, label %land.lhs.true15, label %if.end24

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %14 = load ptr, ptr %pConstraint, align 8
  %op16 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %14, i32 0, i32 1
  %15 = load i8, ptr %op16, align 4
  %conv17 = zext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 64
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %land.lhs.true15
  %16 = load i32, ptr %iPlan, align 4
  %or = or i32 %16, 1
  store i32 %or, ptr %iPlan, align 4
  %17 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %aConstraintUsage, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %18, i64 %idxprom
  %argvIndex = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx, i32 0, i32 0
  store i32 1, ptr %argvIndex, align 4
  %20 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage21 = getelementptr inbounds %struct.sqlite3_index_info, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %aConstraintUsage21, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %21, i64 %idxprom22
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx23, i32 0, i32 1
  store i8 1, ptr %omit, align 4
  %23 = load double, ptr %rCost, align 8
  %div = fdiv double %23, 1.000000e+06
  store double %div, ptr %rCost, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true15, %land.lhs.true11, %if.end8
  %24 = load i32, ptr %iPlan, align 4
  %and25 = and i32 %24, 2
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.end44

land.lhs.true28:                                  ; preds = %if.end24
  %25 = load ptr, ptr %pConstraint, align 8
  %iColumn29 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %iColumn29, align 4
  %cmp30 = icmp eq i32 %26, 1
  br i1 %cmp30, label %land.lhs.true32, label %if.end44

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %27 = load ptr, ptr %pConstraint, align 8
  %op33 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %27, i32 0, i32 1
  %28 = load i8, ptr %op33, align 4
  %conv34 = zext i8 %28 to i32
  %cmp35 = icmp eq i32 %conv34, 16
  br i1 %cmp35, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true32
  %29 = load ptr, ptr %pConstraint, align 8
  %op37 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %29, i32 0, i32 1
  %30 = load i8, ptr %op37, align 4
  %conv38 = zext i8 %30 to i32
  %cmp39 = icmp eq i32 %conv38, 8
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %lor.lhs.false, %land.lhs.true32
  %31 = load i32, ptr %iPlan, align 4
  %or42 = or i32 %31, 2
  store i32 %or42, ptr %iPlan, align 4
  %32 = load i32, ptr %i, align 4
  store i32 %32, ptr %iDistTerm, align 4
  %33 = load double, ptr %rCost, align 8
  %div43 = fdiv double %33, 1.000000e+01
  store double %div43, ptr %rCost, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %lor.lhs.false, %land.lhs.true28, %if.end24
  %34 = load i32, ptr %iPlan, align 4
  %and45 = and i32 %34, 4
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %land.lhs.true48, label %if.end64

land.lhs.true48:                                  ; preds = %if.end44
  %35 = load ptr, ptr %pConstraint, align 8
  %iColumn49 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %iColumn49, align 4
  %cmp50 = icmp eq i32 %36, 2
  br i1 %cmp50, label %land.lhs.true52, label %if.end64

land.lhs.true52:                                  ; preds = %land.lhs.true48
  %37 = load ptr, ptr %pConstraint, align 8
  %op53 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %37, i32 0, i32 1
  %38 = load i8, ptr %op53, align 4
  %conv54 = zext i8 %38 to i32
  %cmp55 = icmp eq i32 %conv54, 2
  br i1 %cmp55, label %if.then57, label %if.end64

if.then57:                                        ; preds = %land.lhs.true52
  %39 = load i32, ptr %iPlan, align 4
  %or58 = or i32 %39, 4
  store i32 %or58, ptr %iPlan, align 4
  %40 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage59 = getelementptr inbounds %struct.sqlite3_index_info, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %aConstraintUsage59, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %42 to i64
  %arrayidx61 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %41, i64 %idxprom60
  %omit62 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx61, i32 0, i32 1
  store i8 1, ptr %omit62, align 4
  %43 = load i32, ptr %i, align 4
  store i32 %43, ptr %iRulesetTerm, align 4
  %44 = load double, ptr %rCost, align 8
  %div63 = fdiv double %44, 1.000000e+01
  store double %div63, ptr %rCost, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %land.lhs.true52, %land.lhs.true48, %if.end44
  br label %for.inc

for.inc:                                          ; preds = %if.end64, %if.then7
  %45 = load i32, ptr %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %i, align 4
  %46 = load ptr, ptr %pConstraint, align 8
  %incdec.ptr = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %46, i32 1
  store ptr %incdec.ptr, ptr %pConstraint, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %47 = load i32, ptr %iPlan, align 4
  %and65 = and i32 %47, 2
  %tobool = icmp ne i32 %and65, 0
  br i1 %tobool, label %if.then66, label %if.end74

if.then66:                                        ; preds = %for.end
  %48 = load i32, ptr %iPlan, align 4
  %and67 = and i32 %48, 1
  %cmp68 = icmp ne i32 %and67, 0
  %conv69 = zext i1 %cmp68 to i32
  %add = add nsw i32 1, %conv69
  %49 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage70 = getelementptr inbounds %struct.sqlite3_index_info, ptr %49, i32 0, i32 4
  %50 = load ptr, ptr %aConstraintUsage70, align 8
  %51 = load i32, ptr %iDistTerm, align 4
  %idxprom71 = sext i32 %51 to i64
  %arrayidx72 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %50, i64 %idxprom71
  %argvIndex73 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx72, i32 0, i32 0
  store i32 %add, ptr %argvIndex73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then66, %for.end
  %52 = load i32, ptr %iPlan, align 4
  %and75 = and i32 %52, 4
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then77, label %if.end92

if.then77:                                        ; preds = %if.end74
  store i32 1, ptr %idx, align 4
  %53 = load i32, ptr %iPlan, align 4
  %and78 = and i32 %53, 1
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.then77
  %54 = load i32, ptr %idx, align 4
  %inc81 = add nsw i32 %54, 1
  store i32 %inc81, ptr %idx, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.then77
  %55 = load i32, ptr %iPlan, align 4
  %and83 = and i32 %55, 2
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end82
  %56 = load i32, ptr %idx, align 4
  %inc86 = add nsw i32 %56, 1
  store i32 %inc86, ptr %idx, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end82
  %57 = load i32, ptr %idx, align 4
  %58 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage88 = getelementptr inbounds %struct.sqlite3_index_info, ptr %58, i32 0, i32 4
  %59 = load ptr, ptr %aConstraintUsage88, align 8
  %60 = load i32, ptr %iRulesetTerm, align 4
  %idxprom89 = sext i32 %60 to i64
  %arrayidx90 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %59, i64 %idxprom89
  %argvIndex91 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx90, i32 0, i32 0
  store i32 %57, ptr %argvIndex91, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.end87, %if.end74
  %61 = load i32, ptr %iPlan, align 4
  %62 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %62, i32 0, i32 5
  store i32 %61, ptr %idxNum, align 8
  %63 = load ptr, ptr %pIdxInfo.addr, align 8
  %nOrderBy = getelementptr inbounds %struct.sqlite3_index_info, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %nOrderBy, align 8
  %cmp93 = icmp eq i32 %64, 1
  br i1 %cmp93, label %land.lhs.true95, label %if.end107

land.lhs.true95:                                  ; preds = %if.end92
  %65 = load ptr, ptr %pIdxInfo.addr, align 8
  %aOrderBy = getelementptr inbounds %struct.sqlite3_index_info, ptr %65, i32 0, i32 3
  %66 = load ptr, ptr %aOrderBy, align 8
  %arrayidx96 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %66, i64 0
  %iColumn97 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %arrayidx96, i32 0, i32 0
  %67 = load i32, ptr %iColumn97, align 4
  %cmp98 = icmp eq i32 %67, 1
  br i1 %cmp98, label %land.lhs.true100, label %if.end107

land.lhs.true100:                                 ; preds = %land.lhs.true95
  %68 = load ptr, ptr %pIdxInfo.addr, align 8
  %aOrderBy101 = getelementptr inbounds %struct.sqlite3_index_info, ptr %68, i32 0, i32 3
  %69 = load ptr, ptr %aOrderBy101, align 8
  %arrayidx102 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %69, i64 0
  %desc = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %arrayidx102, i32 0, i32 1
  %70 = load i8, ptr %desc, align 4
  %conv103 = zext i8 %70 to i32
  %cmp104 = icmp eq i32 %conv103, 0
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %land.lhs.true100
  %71 = load ptr, ptr %pIdxInfo.addr, align 8
  %orderByConsumed = getelementptr inbounds %struct.sqlite3_index_info, ptr %71, i32 0, i32 8
  store i32 1, ptr %orderByConsumed, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %land.lhs.true100, %land.lhs.true95, %if.end92
  %72 = load i32, ptr %seenMatch, align 4
  %tobool108 = icmp ne i32 %72, 0
  br i1 %tobool108, label %land.lhs.true109, label %if.end114

land.lhs.true109:                                 ; preds = %if.end107
  %73 = load i32, ptr %iPlan, align 4
  %and110 = and i32 %73, 1
  %cmp111 = icmp eq i32 %and110, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %land.lhs.true109
  store double 0x547D42AEA2879F2E, ptr %rCost, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %land.lhs.true109, %if.end107
  %74 = load double, ptr %rCost, align 8
  %75 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %75, i32 0, i32 9
  store double %74, ptr %estimatedCost, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pRule1 = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8
  %pRule = getelementptr inbounds %struct.fuzzer_vtab, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pRule, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8
  %pRule2 = getelementptr inbounds %struct.fuzzer_vtab, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pRule2, align 8
  store ptr %4, ptr %pRule1, align 8
  %5 = load ptr, ptr %pRule1, align 8
  %pNext = getelementptr inbounds %struct.fuzzer_rule, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pNext, align 8
  %7 = load ptr, ptr %p, align 8
  %pRule3 = getelementptr inbounds %struct.fuzzer_vtab, ptr %7, i32 0, i32 2
  store ptr %6, ptr %pRule3, align 8
  %8 = load ptr, ptr %pRule1, align 8
  call void @sqlite3_free(ptr noundef %8)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %9)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerOpen(ptr noundef %pVTab, ptr noundef %ppCursor) #0 {
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
  %call = call ptr @sqlite3_malloc64(i64 noundef 32280)
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
  %call1 = call ptr @__memset_chk(ptr noundef %2, i32 noundef 0, i64 noundef 32280, i64 noundef %4) #4
  %5 = load ptr, ptr %p, align 8
  %6 = load ptr, ptr %pCur, align 8
  %pVtab = getelementptr inbounds %struct.fuzzer_cursor, ptr %6, i32 0, i32 2
  store ptr %5, ptr %pVtab, align 8
  %7 = load ptr, ptr %pCur, align 8
  %base = getelementptr inbounds %struct.fuzzer_cursor, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base, ptr %8, align 8
  %9 = load ptr, ptr %p, align 8
  %nCursor = getelementptr inbounds %struct.fuzzer_vtab, ptr %9, i32 0, i32 3
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
define internal i32 @fuzzerClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  call void @fuzzerClearCursor(ptr noundef %1, i32 noundef 0)
  %2 = load ptr, ptr %pCur, align 8
  %zBuf = getelementptr inbounds %struct.fuzzer_cursor, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %zBuf, align 8
  call void @sqlite3_free(ptr noundef %3)
  %4 = load ptr, ptr %pCur, align 8
  %pVtab = getelementptr inbounds %struct.fuzzer_cursor, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pVtab, align 8
  %nCursor = getelementptr inbounds %struct.fuzzer_vtab, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %nCursor, align 8
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %nCursor, align 8
  %7 = load ptr, ptr %pCur, align 8
  call void @sqlite3_free(ptr noundef %7)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %zWord = alloca ptr, align 8
  %pStem = alloca ptr, align 8
  %idx = alloca i32, align 4
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store ptr @.str.6, ptr %zWord, align 8
  %1 = load ptr, ptr %pCur, align 8
  call void @fuzzerClearCursor(ptr noundef %1, i32 noundef 1)
  %2 = load ptr, ptr %pCur, align 8
  %rLimit = getelementptr inbounds %struct.fuzzer_cursor, ptr %2, i32 0, i32 3
  store i32 2147483647, ptr %rLimit, align 8
  store i32 0, ptr %idx, align 4
  %3 = load i32, ptr %idxNum.addr, align 4
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %5)
  store ptr %call, ptr %zWord, align 8
  %6 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %idxNum.addr, align 4
  %and1 = and i32 %7, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %argv.addr, align 8
  %9 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @sqlite3_value_int(ptr noundef %10)
  %11 = load ptr, ptr %pCur, align 8
  %rLimit6 = getelementptr inbounds %struct.fuzzer_cursor, ptr %11, i32 0, i32 3
  store i32 %call5, ptr %rLimit6, align 8
  %12 = load i32, ptr %idx, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, ptr %idx, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  %13 = load i32, ptr %idxNum.addr, align 4
  %and9 = and i32 %13, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  %14 = load ptr, ptr %argv.addr, align 8
  %15 = load i32, ptr %idx, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 %idxprom12
  %16 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @sqlite3_value_int(ptr noundef %16)
  %17 = load ptr, ptr %pCur, align 8
  %iRuleset = getelementptr inbounds %struct.fuzzer_cursor, ptr %17, i32 0, i32 11
  store i32 %call14, ptr %iRuleset, align 8
  %18 = load i32, ptr %idx, align 4
  %inc15 = add nsw i32 %18, 1
  store i32 %inc15, ptr %idx, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end8
  %19 = load ptr, ptr %pCur, align 8
  %pVtab = getelementptr inbounds %struct.fuzzer_cursor, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %pVtab, align 8
  %pRule = getelementptr inbounds %struct.fuzzer_vtab, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %pRule, align 8
  %22 = load ptr, ptr %pCur, align 8
  %nullRule = getelementptr inbounds %struct.fuzzer_cursor, ptr %22, i32 0, i32 12
  %pNext = getelementptr inbounds %struct.fuzzer_rule, ptr %nullRule, i32 0, i32 0
  store ptr %21, ptr %pNext, align 8
  %23 = load ptr, ptr %pCur, align 8
  %nullRule17 = getelementptr inbounds %struct.fuzzer_cursor, ptr %23, i32 0, i32 12
  %rCost = getelementptr inbounds %struct.fuzzer_rule, ptr %nullRule17, i32 0, i32 2
  store i32 0, ptr %rCost, align 8
  %24 = load ptr, ptr %pCur, align 8
  %nullRule18 = getelementptr inbounds %struct.fuzzer_cursor, ptr %24, i32 0, i32 12
  %nFrom = getelementptr inbounds %struct.fuzzer_rule, ptr %nullRule18, i32 0, i32 3
  store i8 0, ptr %nFrom, align 4
  %25 = load ptr, ptr %pCur, align 8
  %nullRule19 = getelementptr inbounds %struct.fuzzer_cursor, ptr %25, i32 0, i32 12
  %nTo = getelementptr inbounds %struct.fuzzer_rule, ptr %nullRule19, i32 0, i32 4
  store i8 0, ptr %nTo, align 1
  %26 = load ptr, ptr %pCur, align 8
  %nullRule20 = getelementptr inbounds %struct.fuzzer_cursor, ptr %26, i32 0, i32 12
  %zFrom = getelementptr inbounds %struct.fuzzer_rule, ptr %nullRule20, i32 0, i32 1
  store ptr @.str.6, ptr %zFrom, align 8
  %27 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.fuzzer_cursor, ptr %27, i32 0, i32 1
  store i64 1, ptr %iRowid, align 8
  %28 = load ptr, ptr %zWord, align 8
  %call21 = call i64 @strlen(ptr noundef %28)
  %conv = trunc i64 %call21 to i32
  %cmp = icmp slt i32 %conv, 100
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end16
  %29 = load ptr, ptr %pCur, align 8
  %30 = load ptr, ptr %zWord, align 8
  %call24 = call ptr @fuzzerNewStem(ptr noundef %29, ptr noundef %30, i32 noundef 0)
  store ptr %call24, ptr %pStem, align 8
  %31 = load ptr, ptr %pCur, align 8
  %pStem25 = getelementptr inbounds %struct.fuzzer_cursor, ptr %31, i32 0, i32 4
  store ptr %call24, ptr %pStem25, align 8
  %32 = load ptr, ptr %pStem, align 8
  %cmp26 = icmp eq ptr %32, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then23
  store i32 7, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then23
  %33 = load ptr, ptr %pCur, align 8
  %nullRule30 = getelementptr inbounds %struct.fuzzer_cursor, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %pStem, align 8
  %pRule31 = getelementptr inbounds %struct.fuzzer_stem, ptr %34, i32 0, i32 1
  store ptr %nullRule30, ptr %pRule31, align 8
  %35 = load ptr, ptr %pStem, align 8
  %nBasis = getelementptr inbounds %struct.fuzzer_stem, ptr %35, i32 0, i32 6
  %36 = load i8, ptr %nBasis, align 8
  %37 = load ptr, ptr %pStem, align 8
  %n = getelementptr inbounds %struct.fuzzer_stem, ptr %37, i32 0, i32 7
  store i8 %36, ptr %n, align 1
  br label %if.end33

if.else:                                          ; preds = %if.end16
  %38 = load ptr, ptr %pCur, align 8
  %rLimit32 = getelementptr inbounds %struct.fuzzer_cursor, ptr %38, i32 0, i32 3
  store i32 0, ptr %rLimit32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end29
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then28
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerNext(ptr noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pStem = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.fuzzer_cursor, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %iRowid, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, ptr %iRowid, align 8
  %3 = load ptr, ptr %pCur, align 8
  %pStem1 = getelementptr inbounds %struct.fuzzer_cursor, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pStem1, align 8
  store ptr %4, ptr %pStem, align 8
  %5 = load ptr, ptr %pStem, align 8
  %rCostX = getelementptr inbounds %struct.fuzzer_stem, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %rCostX, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pStem, align 8
  %8 = load ptr, ptr %pCur, align 8
  %zBuf = getelementptr inbounds %struct.fuzzer_cursor, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %pCur, align 8
  %nBuf = getelementptr inbounds %struct.fuzzer_cursor, ptr %9, i32 0, i32 9
  %call = call i32 @fuzzerRender(ptr noundef %7, ptr noundef %zBuf, ptr noundef %nBuf)
  store i32 %call, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %10, 7
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %pCur, align 8
  %12 = load ptr, ptr %pCur, align 8
  %zBuf4 = getelementptr inbounds %struct.fuzzer_cursor, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %zBuf4, align 8
  %14 = load ptr, ptr %pStem, align 8
  %rCostX5 = getelementptr inbounds %struct.fuzzer_stem, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %rCostX5, align 4
  %call6 = call ptr @fuzzerNewStem(ptr noundef %11, ptr noundef %13, i32 noundef %15)
  store ptr %call6, ptr %pNew, align 8
  %16 = load ptr, ptr %pNew, align 8
  %tobool = icmp ne ptr %16, null
  br i1 %tobool, label %if.then7, label %if.else17

if.then7:                                         ; preds = %if.end
  %17 = load ptr, ptr %pCur, align 8
  %18 = load ptr, ptr %pNew, align 8
  %call8 = call i32 @fuzzerAdvance(ptr noundef %17, ptr noundef %18)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  %19 = load ptr, ptr %pCur, align 8
  %pDone = getelementptr inbounds %struct.fuzzer_cursor, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %pDone, align 8
  %21 = load ptr, ptr %pNew, align 8
  %pNext = getelementptr inbounds %struct.fuzzer_stem, ptr %21, i32 0, i32 2
  store ptr %20, ptr %pNext, align 8
  %22 = load ptr, ptr %pNew, align 8
  %23 = load ptr, ptr %pCur, align 8
  %pDone11 = getelementptr inbounds %struct.fuzzer_cursor, ptr %23, i32 0, i32 5
  store ptr %22, ptr %pDone11, align 8
  br label %if.end16

if.else:                                          ; preds = %if.then7
  %24 = load ptr, ptr %pCur, align 8
  %25 = load ptr, ptr %pNew, align 8
  %call12 = call ptr @fuzzerInsert(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %pNew, align 8
  %cmp13 = icmp eq ptr %call12, %26
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then10
  br label %if.end18

if.else17:                                        ; preds = %if.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end16
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %if.end35, %if.end19
  %27 = load ptr, ptr %pCur, align 8
  %pStem20 = getelementptr inbounds %struct.fuzzer_cursor, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %pStem20, align 8
  store ptr %28, ptr %pStem, align 8
  %cmp21 = icmp ne ptr %28, null
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %pCur, align 8
  %30 = load ptr, ptr %pStem, align 8
  %call22 = call i32 @fuzzerAdvance(ptr noundef %29, ptr noundef %30)
  store i32 %call22, ptr %res, align 4
  %31 = load i32, ptr %res, align 4
  %cmp23 = icmp slt i32 %31, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %while.body
  store i32 7, ptr %retval, align 4
  br label %return

if.else25:                                        ; preds = %while.body
  %32 = load i32, ptr %res, align 4
  %cmp26 = icmp sgt i32 %32, 0
  br i1 %cmp26, label %if.then27, label %if.end37

if.then27:                                        ; preds = %if.else25
  %33 = load ptr, ptr %pCur, align 8
  %pStem28 = getelementptr inbounds %struct.fuzzer_cursor, ptr %33, i32 0, i32 4
  store ptr null, ptr %pStem28, align 8
  %34 = load ptr, ptr %pCur, align 8
  %35 = load ptr, ptr %pStem, align 8
  %call29 = call ptr @fuzzerInsert(ptr noundef %34, ptr noundef %35)
  store ptr %call29, ptr %pStem, align 8
  %36 = load ptr, ptr %pCur, align 8
  %37 = load ptr, ptr %pStem, align 8
  %call30 = call i32 @fuzzerSeen(ptr noundef %36, ptr noundef %37)
  store i32 %call30, ptr %rc, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.then27
  %38 = load i32, ptr %rc, align 4
  %cmp33 = icmp slt i32 %38, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then32
  store i32 7, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then32
  br label %while.cond, !llvm.loop !9

if.end36:                                         ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.else25
  br label %if.end38

if.end38:                                         ; preds = %if.end37
  %39 = load ptr, ptr %pCur, align 8
  %pStem39 = getelementptr inbounds %struct.fuzzer_cursor, ptr %39, i32 0, i32 4
  store ptr null, ptr %pStem39, align 8
  %40 = load ptr, ptr %pCur, align 8
  %pDone40 = getelementptr inbounds %struct.fuzzer_cursor, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %pDone40, align 8
  %42 = load ptr, ptr %pStem, align 8
  %pNext41 = getelementptr inbounds %struct.fuzzer_stem, ptr %42, i32 0, i32 2
  store ptr %41, ptr %pNext41, align 8
  %43 = load ptr, ptr %pStem, align 8
  %44 = load ptr, ptr %pCur, align 8
  %pDone42 = getelementptr inbounds %struct.fuzzer_cursor, ptr %44, i32 0, i32 5
  store ptr %43, ptr %pDone42, align 8
  %45 = load ptr, ptr %pCur, align 8
  %call43 = call ptr @fuzzerLowestCostStem(ptr noundef %45)
  %tobool44 = icmp ne ptr %call43, null
  br i1 %tobool44, label %if.then45, label %if.end54

if.then45:                                        ; preds = %if.end38
  %46 = load ptr, ptr %pCur, align 8
  %47 = load ptr, ptr %pCur, align 8
  %pStem46 = getelementptr inbounds %struct.fuzzer_cursor, ptr %47, i32 0, i32 4
  %48 = load ptr, ptr %pStem46, align 8
  %call47 = call i32 @fuzzerSeen(ptr noundef %46, ptr noundef %48)
  store i32 %call47, ptr %rc, align 4
  %49 = load i32, ptr %rc, align 4
  %cmp48 = icmp slt i32 %49, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then45
  store i32 7, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.then45
  %50 = load i32, ptr %rc, align 4
  %cmp51 = icmp eq i32 %50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end50
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end50
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end38
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %51 = load ptr, ptr %pCur, align 8
  %rLimit = getelementptr inbounds %struct.fuzzer_cursor, ptr %51, i32 0, i32 3
  store i32 0, ptr %rLimit, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then52, %if.then49, %if.end36, %if.then34, %if.then24, %if.else17, %if.then14, %if.then3
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %rLimit = getelementptr inbounds %struct.fuzzer_cursor, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %rLimit, align 8
  %cmp = icmp sle i32 %2, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
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
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCur, align 8
  %pStem = getelementptr inbounds %struct.fuzzer_cursor, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pStem, align 8
  %4 = load ptr, ptr %pCur, align 8
  %zBuf = getelementptr inbounds %struct.fuzzer_cursor, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %pCur, align 8
  %nBuf = getelementptr inbounds %struct.fuzzer_cursor, ptr %5, i32 0, i32 9
  %call = call i32 @fuzzerRender(ptr noundef %3, ptr noundef %zBuf, ptr noundef %nBuf)
  %cmp1 = icmp eq i32 %call, 7
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %ctx.addr, align 8
  %7 = load ptr, ptr %pCur, align 8
  %zBuf3 = getelementptr inbounds %struct.fuzzer_cursor, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %zBuf3, align 8
  call void @sqlite3_result_text(ptr noundef %6, ptr noundef %8, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end9

if.else:                                          ; preds = %entry
  %9 = load i32, ptr %i.addr, align 4
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  %10 = load ptr, ptr %ctx.addr, align 8
  %11 = load ptr, ptr %pCur, align 8
  %pStem6 = getelementptr inbounds %struct.fuzzer_cursor, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pStem6, align 8
  %rCostX = getelementptr inbounds %struct.fuzzer_stem, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %rCostX, align 4
  call void @sqlite3_result_int(ptr noundef %10, i32 noundef %13)
  br label %if.end8

if.else7:                                         ; preds = %if.else
  %14 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_null(ptr noundef %14)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then2
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.fuzzer_cursor, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %iRowid, align 8
  %3 = load ptr, ptr %pRowid.addr, align 8
  store i64 %2, ptr %3, align 8
  ret i32 0
}

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare i64 @strlen(ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @fuzzerDequote(ptr noundef %zIn) #0 {
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
  br i1 %tobool, label %if.then, label %if.end38

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
  %call16 = call ptr @__memcpy_chk(ptr noundef %9, ptr noundef %10, i64 noundef %add15, i64 noundef %13) #4
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
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.then14
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %entry
  %28 = load ptr, ptr %zOut, align 8
  ret ptr %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerLoadRules(ptr noundef %db, ptr noundef %p, ptr noundef %zDb, ptr noundef %zData, ptr noundef %pzErr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %zData.addr = alloca ptr, align 8
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
  store ptr %zDb, ptr %zDb.addr, align 8
  store ptr %zData, ptr %zData.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pHead, align 8
  %0 = load ptr, ptr %zDb.addr, align 8
  %1 = load ptr, ptr %zData.addr, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.3, ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zSql, align 8
  %2 = load ptr, ptr %zSql, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  store ptr null, ptr %pStmt, align 8
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %zSql, align 8
  %call1 = call i32 @sqlite3_prepare_v2(ptr noundef %3, ptr noundef %4, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.else
  %6 = load ptr, ptr %p.addr, align 8
  %zClassName = getelementptr inbounds %struct.fuzzer_vtab, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %zClassName, align 8
  %8 = load ptr, ptr %db.addr, align 8
  %call4 = call ptr @sqlite3_errmsg(ptr noundef %8)
  %call5 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.4, ptr noundef %7, ptr noundef %call4)
  %9 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call5, ptr %9, align 8
  br label %if.end20

if.else6:                                         ; preds = %if.else
  %10 = load ptr, ptr %pStmt, align 8
  %call7 = call i32 @sqlite3_column_count(ptr noundef %10)
  %cmp8 = icmp ne i32 %call7, 4
  br i1 %cmp8, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else6
  %11 = load ptr, ptr %p.addr, align 8
  %zClassName10 = getelementptr inbounds %struct.fuzzer_vtab, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %zClassName10, align 8
  %13 = load ptr, ptr %zData.addr, align 8
  %14 = load ptr, ptr %pStmt, align 8
  %call11 = call i32 @sqlite3_column_count(ptr noundef %14)
  %call12 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.5, ptr noundef %12, ptr noundef %13, i32 noundef %call11)
  %15 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call12, ptr %15, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end19

if.else13:                                        ; preds = %if.else6
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else13
  %16 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %16, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load ptr, ptr %pStmt, align 8
  %call15 = call i32 @sqlite3_step(ptr noundef %17)
  %cmp16 = icmp eq i32 100, %call15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store ptr null, ptr %pRule, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %20 = load ptr, ptr %pStmt, align 8
  %21 = load ptr, ptr %pzErr.addr, align 8
  %call17 = call i32 @fuzzerLoadOneRule(ptr noundef %19, ptr noundef %20, ptr noundef %pRule, ptr noundef %21)
  store i32 %call17, ptr %rc, align 4
  %22 = load ptr, ptr %pRule, align 8
  %tobool = icmp ne ptr %22, null
  br i1 %tobool, label %if.then18, label %if.end

if.then18:                                        ; preds = %while.body
  %23 = load ptr, ptr %pHead, align 8
  %24 = load ptr, ptr %pRule, align 8
  %pNext = getelementptr inbounds %struct.fuzzer_rule, ptr %24, i32 0, i32 0
  store ptr %23, ptr %pNext, align 8
  %25 = load ptr, ptr %pRule, align 8
  store ptr %25, ptr %pHead, align 8
  br label %if.end

if.end:                                           ; preds = %if.then18, %while.body
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %land.end
  br label %if.end19

if.end19:                                         ; preds = %while.end, %if.then9
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then3
  %26 = load ptr, ptr %pStmt, align 8
  %call21 = call i32 @sqlite3_finalize(ptr noundef %26)
  store i32 %call21, ptr %rc2, align 4
  %27 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %27, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %28 = load i32, ptr %rc2, align 4
  store i32 %28, ptr %rc, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %29 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %29)
  %30 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %30, 0
  br i1 %cmp26, label %if.then27, label %if.else75

if.then27:                                        ; preds = %if.end25
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then27
  %31 = load i32, ptr %i, align 4
  %conv = zext i32 %31 to i64
  %cmp28 = icmp ult i64 %conv, 15
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, ptr %i, align 4
  %idxprom = zext i32 %32 to i64
  %arrayidx = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %i, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %while.cond30

while.cond30:                                     ; preds = %for.end53, %for.end
  %34 = load ptr, ptr %pHead, align 8
  store ptr %34, ptr %pX, align 8
  %cmp31 = icmp ne ptr %34, null
  br i1 %cmp31, label %while.body33, label %while.end59

while.body33:                                     ; preds = %while.cond30
  %35 = load ptr, ptr %pX, align 8
  %pNext34 = getelementptr inbounds %struct.fuzzer_rule, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pNext34, align 8
  store ptr %36, ptr %pHead, align 8
  %37 = load ptr, ptr %pX, align 8
  %pNext35 = getelementptr inbounds %struct.fuzzer_rule, ptr %37, i32 0, i32 0
  store ptr null, ptr %pNext35, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc51, %while.body33
  %38 = load i32, ptr %i, align 4
  %idxprom37 = zext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom37
  %39 = load ptr, ptr %arrayidx38, align 8
  %tobool39 = icmp ne ptr %39, null
  br i1 %tobool39, label %land.rhs40, label %land.end44

land.rhs40:                                       ; preds = %for.cond36
  %40 = load i32, ptr %i, align 4
  %conv41 = zext i32 %40 to i64
  %cmp42 = icmp ult i64 %conv41, 14
  br label %land.end44

land.end44:                                       ; preds = %land.rhs40, %for.cond36
  %41 = phi i1 [ false, %for.cond36 ], [ %cmp42, %land.rhs40 ]
  br i1 %41, label %for.body45, label %for.end53

for.body45:                                       ; preds = %land.end44
  %42 = load i32, ptr %i, align 4
  %idxprom46 = zext i32 %42 to i64
  %arrayidx47 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom46
  %43 = load ptr, ptr %arrayidx47, align 8
  %44 = load ptr, ptr %pX, align 8
  %call48 = call ptr @fuzzerMergeRules(ptr noundef %43, ptr noundef %44)
  store ptr %call48, ptr %pX, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom49 = zext i32 %45 to i64
  %arrayidx50 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom49
  store ptr null, ptr %arrayidx50, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %for.body45
  %46 = load i32, ptr %i, align 4
  %inc52 = add i32 %46, 1
  store i32 %inc52, ptr %i, align 4
  br label %for.cond36, !llvm.loop !13

for.end53:                                        ; preds = %land.end44
  %47 = load i32, ptr %i, align 4
  %idxprom54 = zext i32 %47 to i64
  %arrayidx55 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom54
  %48 = load ptr, ptr %arrayidx55, align 8
  %49 = load ptr, ptr %pX, align 8
  %call56 = call ptr @fuzzerMergeRules(ptr noundef %48, ptr noundef %49)
  %50 = load i32, ptr %i, align 4
  %idxprom57 = zext i32 %50 to i64
  %arrayidx58 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom57
  store ptr %call56, ptr %arrayidx58, align 8
  br label %while.cond30, !llvm.loop !14

while.end59:                                      ; preds = %while.cond30
  %arrayidx60 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 0
  %51 = load ptr, ptr %arrayidx60, align 8
  store ptr %51, ptr %pX, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc69, %while.end59
  %52 = load i32, ptr %i, align 4
  %conv62 = zext i32 %52 to i64
  %cmp63 = icmp ult i64 %conv62, 15
  br i1 %cmp63, label %for.body65, label %for.end71

for.body65:                                       ; preds = %for.cond61
  %53 = load i32, ptr %i, align 4
  %idxprom66 = zext i32 %53 to i64
  %arrayidx67 = getelementptr inbounds [15 x ptr], ptr %a, i64 0, i64 %idxprom66
  %54 = load ptr, ptr %arrayidx67, align 8
  %55 = load ptr, ptr %pX, align 8
  %call68 = call ptr @fuzzerMergeRules(ptr noundef %54, ptr noundef %55)
  store ptr %call68, ptr %pX, align 8
  br label %for.inc69

for.inc69:                                        ; preds = %for.body65
  %56 = load i32, ptr %i, align 4
  %inc70 = add i32 %56, 1
  store i32 %inc70, ptr %i, align 4
  br label %for.cond61, !llvm.loop !15

for.end71:                                        ; preds = %for.cond61
  %57 = load ptr, ptr %p.addr, align 8
  %pRule72 = getelementptr inbounds %struct.fuzzer_vtab, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %pRule72, align 8
  %59 = load ptr, ptr %pX, align 8
  %call73 = call ptr @fuzzerMergeRules(ptr noundef %58, ptr noundef %59)
  %60 = load ptr, ptr %p.addr, align 8
  %pRule74 = getelementptr inbounds %struct.fuzzer_vtab, ptr %60, i32 0, i32 2
  store ptr %call73, ptr %pRule74, align 8
  br label %if.end77

if.else75:                                        ; preds = %if.end25
  %61 = load ptr, ptr %pHead, align 8
  %62 = load ptr, ptr %p.addr, align 8
  %pRule76 = getelementptr inbounds %struct.fuzzer_vtab, ptr %62, i32 0, i32 2
  store ptr %61, ptr %pRule76, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %for.end71
  %63 = load i32, ptr %rc, align 4
  ret i32 %63
}

declare void @sqlite3_free(ptr noundef) #1

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

declare i32 @sqlite3_vtab_config(ptr noundef, i32 noundef, ...) #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare ptr @sqlite3_errmsg(ptr noundef) #1

declare i32 @sqlite3_column_count(ptr noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerLoadOneRule(ptr noundef %p, ptr noundef %pStmt, ptr noundef %ppRule, ptr noundef %pzErr) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pStmt.addr = alloca ptr, align 8
  %ppRule.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %iRuleset = alloca i64, align 8
  %zFrom = alloca ptr, align 8
  %zTo = alloca ptr, align 8
  %nCost = alloca i32, align 4
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
  store i64 %call, ptr %iRuleset, align 8
  %1 = load ptr, ptr %pStmt.addr, align 8
  %call1 = call ptr @sqlite3_column_text(ptr noundef %1, i32 noundef 1)
  store ptr %call1, ptr %zFrom, align 8
  %2 = load ptr, ptr %pStmt.addr, align 8
  %call2 = call ptr @sqlite3_column_text(ptr noundef %2, i32 noundef 2)
  store ptr %call2, ptr %zTo, align 8
  %3 = load ptr, ptr %pStmt.addr, align 8
  %call3 = call i32 @sqlite3_column_int(ptr noundef %3, i32 noundef 3)
  store i32 %call3, ptr %nCost, align 4
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pRule, align 8
  %4 = load ptr, ptr %zFrom, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @.str.6, ptr %zFrom, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %zTo, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store ptr @.str.6, ptr %zTo, align 8
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
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end6
  %10 = load ptr, ptr %ppRule.addr, align 8
  store ptr null, ptr %10, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end6
  %11 = load i32, ptr %nCost, align 4
  %cmp15 = icmp sle i32 %11, 0
  br i1 %cmp15, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %12 = load i32, ptr %nCost, align 4
  %cmp17 = icmp sgt i32 %12, 1000
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %lor.lhs.false, %if.end14
  %13 = load ptr, ptr %p.addr, align 8
  %zClassName = getelementptr inbounds %struct.fuzzer_vtab, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %zClassName, align 8
  %call20 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.7, ptr noundef %14, i32 noundef 1000)
  %15 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call20, ptr %15, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end73

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i32, ptr %nFrom, align 4
  %cmp21 = icmp sgt i32 %16, 50
  br i1 %cmp21, label %if.then26, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.else
  %17 = load i32, ptr %nTo, align 4
  %cmp24 = icmp sgt i32 %17, 50
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %lor.lhs.false23, %if.else
  %18 = load ptr, ptr %p.addr, align 8
  %zClassName27 = getelementptr inbounds %struct.fuzzer_vtab, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %zClassName27, align 8
  %call28 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.8, ptr noundef %19, i32 noundef 50)
  %20 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call28, ptr %20, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end72

if.else29:                                        ; preds = %lor.lhs.false23
  %21 = load i64, ptr %iRuleset, align 8
  %cmp30 = icmp slt i64 %21, 0
  br i1 %cmp30, label %if.then35, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.else29
  %22 = load i64, ptr %iRuleset, align 8
  %cmp33 = icmp sgt i64 %22, 2147483647
  br i1 %cmp33, label %if.then35, label %if.else38

if.then35:                                        ; preds = %lor.lhs.false32, %if.else29
  %23 = load ptr, ptr %p.addr, align 8
  %zClassName36 = getelementptr inbounds %struct.fuzzer_vtab, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %zClassName36, align 8
  %call37 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.9, ptr noundef %24, i32 noundef 2147483647)
  %25 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call37, ptr %25, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end71

if.else38:                                        ; preds = %lor.lhs.false32
  %26 = load i32, ptr %nFrom, align 4
  %conv39 = sext i32 %26 to i64
  %add = add i64 32, %conv39
  %27 = load i32, ptr %nTo, align 4
  %conv40 = sext i32 %27 to i64
  %add41 = add i64 %add, %conv40
  %call42 = call ptr @sqlite3_malloc64(i64 noundef %add41)
  store ptr %call42, ptr %pRule, align 8
  %28 = load ptr, ptr %pRule, align 8
  %cmp43 = icmp eq ptr %28, null
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else38
  store i32 7, ptr %rc, align 4
  br label %if.end70

if.else46:                                        ; preds = %if.else38
  %29 = load ptr, ptr %pRule, align 8
  %30 = load ptr, ptr %pRule, align 8
  %31 = call i64 @llvm.objectsize.i64.p0(ptr %30, i1 false, i1 true, i1 false)
  %call47 = call ptr @__memset_chk(ptr noundef %29, i32 noundef 0, i64 noundef 32, i64 noundef %31) #4
  %32 = load ptr, ptr %pRule, align 8
  %zTo48 = getelementptr inbounds %struct.fuzzer_rule, ptr %32, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4 x i8], ptr %zTo48, i64 0, i64 0
  %33 = load ptr, ptr %pRule, align 8
  %zFrom49 = getelementptr inbounds %struct.fuzzer_rule, ptr %33, i32 0, i32 1
  store ptr %arraydecay, ptr %zFrom49, align 8
  %34 = load i32, ptr %nTo, align 4
  %add50 = add nsw i32 %34, 1
  %35 = load ptr, ptr %pRule, align 8
  %zFrom51 = getelementptr inbounds %struct.fuzzer_rule, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %zFrom51, align 8
  %idx.ext = sext i32 %add50 to i64
  %add.ptr = getelementptr inbounds i8, ptr %36, i64 %idx.ext
  store ptr %add.ptr, ptr %zFrom51, align 8
  %37 = load i32, ptr %nFrom, align 4
  %conv52 = trunc i32 %37 to i8
  %38 = load ptr, ptr %pRule, align 8
  %nFrom53 = getelementptr inbounds %struct.fuzzer_rule, ptr %38, i32 0, i32 3
  store i8 %conv52, ptr %nFrom53, align 4
  %39 = load ptr, ptr %pRule, align 8
  %zFrom54 = getelementptr inbounds %struct.fuzzer_rule, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %zFrom54, align 8
  %41 = load ptr, ptr %zFrom, align 8
  %42 = load i32, ptr %nFrom, align 4
  %add55 = add nsw i32 %42, 1
  %conv56 = sext i32 %add55 to i64
  %43 = load ptr, ptr %pRule, align 8
  %zFrom57 = getelementptr inbounds %struct.fuzzer_rule, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %zFrom57, align 8
  %45 = call i64 @llvm.objectsize.i64.p0(ptr %44, i1 false, i1 true, i1 false)
  %call58 = call ptr @__memcpy_chk(ptr noundef %40, ptr noundef %41, i64 noundef %conv56, i64 noundef %45) #4
  %46 = load ptr, ptr %pRule, align 8
  %zTo59 = getelementptr inbounds %struct.fuzzer_rule, ptr %46, i32 0, i32 6
  %arraydecay60 = getelementptr inbounds [4 x i8], ptr %zTo59, i64 0, i64 0
  %47 = load ptr, ptr %zTo, align 8
  %48 = load i32, ptr %nTo, align 4
  %add61 = add nsw i32 %48, 1
  %conv62 = sext i32 %add61 to i64
  %49 = load ptr, ptr %pRule, align 8
  %zTo63 = getelementptr inbounds %struct.fuzzer_rule, ptr %49, i32 0, i32 6
  %arraydecay64 = getelementptr inbounds [4 x i8], ptr %zTo63, i64 0, i64 0
  %50 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay64, i1 false, i1 true, i1 false)
  %call65 = call ptr @__memcpy_chk(ptr noundef %arraydecay60, ptr noundef %47, i64 noundef %conv62, i64 noundef %50) #4
  %51 = load i32, ptr %nTo, align 4
  %conv66 = trunc i32 %51 to i8
  %52 = load ptr, ptr %pRule, align 8
  %nTo67 = getelementptr inbounds %struct.fuzzer_rule, ptr %52, i32 0, i32 4
  store i8 %conv66, ptr %nTo67, align 1
  %53 = load i32, ptr %nCost, align 4
  %54 = load ptr, ptr %pRule, align 8
  %rCost = getelementptr inbounds %struct.fuzzer_rule, ptr %54, i32 0, i32 2
  store i32 %53, ptr %rCost, align 8
  %55 = load i64, ptr %iRuleset, align 8
  %conv68 = trunc i64 %55 to i32
  %56 = load ptr, ptr %pRule, align 8
  %iRuleset69 = getelementptr inbounds %struct.fuzzer_rule, ptr %56, i32 0, i32 5
  store i32 %conv68, ptr %iRuleset69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else46, %if.then45
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then35
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then26
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then19
  %57 = load ptr, ptr %pRule, align 8
  %58 = load ptr, ptr %ppRule.addr, align 8
  store ptr %57, ptr %58, align 8
  %59 = load i32, ptr %rc, align 4
  store i32 %59, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then13
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

declare i32 @sqlite3_finalize(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @fuzzerMergeRules(ptr noundef %pA, ptr noundef %pB) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %head = alloca %struct.fuzzer_rule, align 8
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
  %rCost = getelementptr inbounds %struct.fuzzer_rule, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %rCost, align 8
  %5 = load ptr, ptr %pB.addr, align 8
  %rCost2 = getelementptr inbounds %struct.fuzzer_rule, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %rCost2, align 8
  %cmp = icmp sle i32 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %pA.addr, align 8
  %8 = load ptr, ptr %pTail, align 8
  %pNext = getelementptr inbounds %struct.fuzzer_rule, ptr %8, i32 0, i32 0
  store ptr %7, ptr %pNext, align 8
  %9 = load ptr, ptr %pA.addr, align 8
  store ptr %9, ptr %pTail, align 8
  %10 = load ptr, ptr %pA.addr, align 8
  %pNext3 = getelementptr inbounds %struct.fuzzer_rule, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pNext3, align 8
  store ptr %11, ptr %pA.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %pB.addr, align 8
  %13 = load ptr, ptr %pTail, align 8
  %pNext4 = getelementptr inbounds %struct.fuzzer_rule, ptr %13, i32 0, i32 0
  store ptr %12, ptr %pNext4, align 8
  %14 = load ptr, ptr %pB.addr, align 8
  store ptr %14, ptr %pTail, align 8
  %15 = load ptr, ptr %pB.addr, align 8
  %pNext5 = getelementptr inbounds %struct.fuzzer_rule, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pNext5, align 8
  store ptr %16, ptr %pB.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %pA.addr, align 8
  %cmp6 = icmp eq ptr %17, null
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %while.end
  %18 = load ptr, ptr %pB.addr, align 8
  %19 = load ptr, ptr %pTail, align 8
  %pNext8 = getelementptr inbounds %struct.fuzzer_rule, ptr %19, i32 0, i32 0
  store ptr %18, ptr %pNext8, align 8
  br label %if.end11

if.else9:                                         ; preds = %while.end
  %20 = load ptr, ptr %pA.addr, align 8
  %21 = load ptr, ptr %pTail, align 8
  %pNext10 = getelementptr inbounds %struct.fuzzer_rule, ptr %21, i32 0, i32 0
  store ptr %20, ptr %pNext10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %pNext12 = getelementptr inbounds %struct.fuzzer_rule, ptr %head, i32 0, i32 0
  %22 = load ptr, ptr %pNext12, align 8
  ret ptr %22
}

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) #1

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #1

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fuzzerClearCursor(ptr noundef %pCur, i32 noundef %clearHash) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %clearHash.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %clearHash, ptr %clearHash.addr, align 4
  %0 = load ptr, ptr %pCur.addr, align 8
  %pStem = getelementptr inbounds %struct.fuzzer_cursor, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pStem, align 8
  call void @fuzzerClearStemList(ptr noundef %1)
  %2 = load ptr, ptr %pCur.addr, align 8
  %pDone = getelementptr inbounds %struct.fuzzer_cursor, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %pDone, align 8
  call void @fuzzerClearStemList(ptr noundef %3)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pCur.addr, align 8
  %aQueue = getelementptr inbounds %struct.fuzzer_cursor, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [20 x ptr], ptr %aQueue, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  call void @fuzzerClearStemList(ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %pCur.addr, align 8
  %rLimit = getelementptr inbounds %struct.fuzzer_cursor, ptr %9, i32 0, i32 3
  store i32 0, ptr %rLimit, align 8
  %10 = load i32, ptr %clearHash.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %11 = load ptr, ptr %pCur.addr, align 8
  %nStem = getelementptr inbounds %struct.fuzzer_cursor, ptr %11, i32 0, i32 10
  %12 = load i32, ptr %nStem, align 4
  %tobool1 = icmp ne i32 %12, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %pCur.addr, align 8
  %mxQueue = getelementptr inbounds %struct.fuzzer_cursor, ptr %13, i32 0, i32 7
  store i32 0, ptr %mxQueue, align 8
  %14 = load ptr, ptr %pCur.addr, align 8
  %pStem2 = getelementptr inbounds %struct.fuzzer_cursor, ptr %14, i32 0, i32 4
  store ptr null, ptr %pStem2, align 8
  %15 = load ptr, ptr %pCur.addr, align 8
  %pDone3 = getelementptr inbounds %struct.fuzzer_cursor, ptr %15, i32 0, i32 5
  store ptr null, ptr %pDone3, align 8
  %16 = load ptr, ptr %pCur.addr, align 8
  %aQueue4 = getelementptr inbounds %struct.fuzzer_cursor, ptr %16, i32 0, i32 6
  %arraydecay = getelementptr inbounds [20 x ptr], ptr %aQueue4, i64 0, i64 0
  %17 = load ptr, ptr %pCur.addr, align 8
  %aQueue5 = getelementptr inbounds %struct.fuzzer_cursor, ptr %17, i32 0, i32 6
  %arraydecay6 = getelementptr inbounds [20 x ptr], ptr %aQueue5, i64 0, i64 0
  %18 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay6, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 160, i64 noundef %18) #4
  %19 = load ptr, ptr %pCur.addr, align 8
  %apHash = getelementptr inbounds %struct.fuzzer_cursor, ptr %19, i32 0, i32 13
  %arraydecay7 = getelementptr inbounds [4001 x ptr], ptr %apHash, i64 0, i64 0
  %20 = load ptr, ptr %pCur.addr, align 8
  %apHash8 = getelementptr inbounds %struct.fuzzer_cursor, ptr %20, i32 0, i32 13
  %arraydecay9 = getelementptr inbounds [4001 x ptr], ptr %apHash8, i64 0, i64 0
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay9, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memset_chk(ptr noundef %arraydecay7, i32 noundef 0, i64 noundef 32008, i64 noundef %21) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  %22 = load ptr, ptr %pCur.addr, align 8
  %nStem11 = getelementptr inbounds %struct.fuzzer_cursor, ptr %22, i32 0, i32 10
  store i32 0, ptr %nStem11, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fuzzerClearStemList(ptr noundef %pStem) #0 {
entry:
  %pStem.addr = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %pStem, ptr %pStem.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %pStem.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pStem.addr, align 8
  %pNext1 = getelementptr inbounds %struct.fuzzer_stem, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pNext1, align 8
  store ptr %2, ptr %pNext, align 8
  %3 = load ptr, ptr %pStem.addr, align 8
  call void @sqlite3_free(ptr noundef %3)
  %4 = load ptr, ptr %pNext, align 8
  store ptr %4, ptr %pStem.addr, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  ret void
}

declare ptr @sqlite3_value_text(ptr noundef) #1

declare i32 @sqlite3_value_int(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @fuzzerNewStem(ptr noundef %pCur, ptr noundef %zWord, i32 noundef %rBaseCost) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCur.addr = alloca ptr, align 8
  %zWord.addr = alloca ptr, align 8
  %rBaseCost.addr = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %pRule = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %zWord, ptr %zWord.addr, align 8
  store i32 %rBaseCost, ptr %rBaseCost.addr, align 4
  %0 = load ptr, ptr %zWord.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %add = add i64 48, %call
  %add1 = add i64 %add, 1
  %call2 = call ptr @sqlite3_malloc64(i64 noundef %add1)
  store ptr %call2, ptr %pNew, align 8
  %1 = load ptr, ptr %pNew, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pNew, align 8
  %3 = load ptr, ptr %pNew, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call3 = call ptr @__memset_chk(ptr noundef %2, i32 noundef 0, i64 noundef 48, i64 noundef %4) #4
  %5 = load ptr, ptr %pNew, align 8
  %arrayidx = getelementptr inbounds %struct.fuzzer_stem, ptr %5, i64 1
  %6 = load ptr, ptr %pNew, align 8
  %zBasis = getelementptr inbounds %struct.fuzzer_stem, ptr %6, i32 0, i32 0
  store ptr %arrayidx, ptr %zBasis, align 8
  %7 = load ptr, ptr %zWord.addr, align 8
  %call4 = call i64 @strlen(ptr noundef %7)
  %conv = trunc i64 %call4 to i8
  %8 = load ptr, ptr %pNew, align 8
  %nBasis = getelementptr inbounds %struct.fuzzer_stem, ptr %8, i32 0, i32 6
  store i8 %conv, ptr %nBasis, align 8
  %9 = load ptr, ptr %pNew, align 8
  %zBasis5 = getelementptr inbounds %struct.fuzzer_stem, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zBasis5, align 8
  %11 = load ptr, ptr %zWord.addr, align 8
  %12 = load ptr, ptr %pNew, align 8
  %nBasis6 = getelementptr inbounds %struct.fuzzer_stem, ptr %12, i32 0, i32 6
  %13 = load i8, ptr %nBasis6, align 8
  %conv7 = sext i8 %13 to i32
  %add8 = add nsw i32 %conv7, 1
  %conv9 = sext i32 %add8 to i64
  %14 = load ptr, ptr %pNew, align 8
  %zBasis10 = getelementptr inbounds %struct.fuzzer_stem, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %zBasis10, align 8
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memcpy_chk(ptr noundef %10, ptr noundef %11, i64 noundef %conv9, i64 noundef %16) #4
  %17 = load ptr, ptr %pCur.addr, align 8
  %pVtab = getelementptr inbounds %struct.fuzzer_cursor, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pVtab, align 8
  %pRule12 = getelementptr inbounds %struct.fuzzer_vtab, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pRule12, align 8
  store ptr %19, ptr %pRule, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %20 = load ptr, ptr %pRule, align 8
  %21 = load ptr, ptr %pNew, align 8
  %22 = load ptr, ptr %pCur.addr, align 8
  %iRuleset = getelementptr inbounds %struct.fuzzer_cursor, ptr %22, i32 0, i32 11
  %23 = load i32, ptr %iRuleset, align 8
  %call13 = call i32 @fuzzerSkipRule(ptr noundef %20, ptr noundef %21, i32 noundef %23)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %pRule, align 8
  %pNext = getelementptr inbounds %struct.fuzzer_rule, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pNext, align 8
  store ptr %25, ptr %pRule, align 8
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %pRule, align 8
  %27 = load ptr, ptr %pNew, align 8
  %pRule14 = getelementptr inbounds %struct.fuzzer_stem, ptr %27, i32 0, i32 1
  store ptr %26, ptr %pRule14, align 8
  %28 = load ptr, ptr %pNew, align 8
  %n = getelementptr inbounds %struct.fuzzer_stem, ptr %28, i32 0, i32 7
  store i8 -1, ptr %n, align 1
  %29 = load i32, ptr %rBaseCost.addr, align 4
  %30 = load ptr, ptr %pNew, align 8
  %rCostX = getelementptr inbounds %struct.fuzzer_stem, ptr %30, i32 0, i32 5
  store i32 %29, ptr %rCostX, align 4
  %31 = load ptr, ptr %pNew, align 8
  %rBaseCost15 = getelementptr inbounds %struct.fuzzer_stem, ptr %31, i32 0, i32 4
  store i32 %29, ptr %rBaseCost15, align 8
  %32 = load ptr, ptr %pNew, align 8
  %zBasis16 = getelementptr inbounds %struct.fuzzer_stem, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %zBasis16, align 8
  %call17 = call i32 @fuzzerHash(ptr noundef %33)
  store i32 %call17, ptr %h, align 4
  %34 = load ptr, ptr %pCur.addr, align 8
  %apHash = getelementptr inbounds %struct.fuzzer_cursor, ptr %34, i32 0, i32 13
  %35 = load i32, ptr %h, align 4
  %idxprom = zext i32 %35 to i64
  %arrayidx18 = getelementptr inbounds [4001 x ptr], ptr %apHash, i64 0, i64 %idxprom
  %36 = load ptr, ptr %arrayidx18, align 8
  %37 = load ptr, ptr %pNew, align 8
  %pHash = getelementptr inbounds %struct.fuzzer_stem, ptr %37, i32 0, i32 3
  store ptr %36, ptr %pHash, align 8
  %38 = load ptr, ptr %pNew, align 8
  %39 = load ptr, ptr %pCur.addr, align 8
  %apHash19 = getelementptr inbounds %struct.fuzzer_cursor, ptr %39, i32 0, i32 13
  %40 = load i32, ptr %h, align 4
  %idxprom20 = zext i32 %40 to i64
  %arrayidx21 = getelementptr inbounds [4001 x ptr], ptr %apHash19, i64 0, i64 %idxprom20
  store ptr %38, ptr %arrayidx21, align 8
  %41 = load ptr, ptr %pCur.addr, align 8
  %nStem = getelementptr inbounds %struct.fuzzer_cursor, ptr %41, i32 0, i32 10
  %42 = load i32, ptr %nStem, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %nStem, align 4
  %43 = load ptr, ptr %pNew, align 8
  store ptr %43, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %44 = load ptr, ptr %retval, align 8
  ret ptr %44
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerSkipRule(ptr noundef %pRule, ptr noundef %pStem, i32 noundef %iRuleset) #0 {
entry:
  %pRule.addr = alloca ptr, align 8
  %pStem.addr = alloca ptr, align 8
  %iRuleset.addr = alloca i32, align 4
  store ptr %pRule, ptr %pRule.addr, align 8
  store ptr %pStem, ptr %pStem.addr, align 8
  store i32 %iRuleset, ptr %iRuleset.addr, align 4
  %0 = load ptr, ptr %pRule.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %pRule.addr, align 8
  %iRuleset1 = getelementptr inbounds %struct.fuzzer_rule, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %iRuleset1, align 8
  %3 = load i32, ptr %iRuleset.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %4 = load ptr, ptr %pStem.addr, align 8
  %nBasis = getelementptr inbounds %struct.fuzzer_stem, ptr %4, i32 0, i32 6
  %5 = load i8, ptr %nBasis, align 8
  %conv = sext i8 %5 to i32
  %6 = load ptr, ptr %pRule.addr, align 8
  %nTo = getelementptr inbounds %struct.fuzzer_rule, ptr %6, i32 0, i32 4
  %7 = load i8, ptr %nTo, align 1
  %conv2 = sext i8 %7 to i32
  %add = add nsw i32 %conv, %conv2
  %8 = load ptr, ptr %pRule.addr, align 8
  %nFrom = getelementptr inbounds %struct.fuzzer_rule, ptr %8, i32 0, i32 3
  %9 = load i8, ptr %nFrom, align 4
  %conv3 = sext i8 %9 to i32
  %sub = sub nsw i32 %add, %conv3
  %cmp4 = icmp sgt i32 %sub, 100
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %10 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %11 = phi i1 [ false, %entry ], [ %10, %lor.end ]
  %land.ext = zext i1 %11 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerHash(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store i32 0, ptr %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %z.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %h, align 4
  %shl = shl i32 %2, 3
  %3 = load i32, ptr %h, align 4
  %shr = lshr i32 %3, 29
  %xor = xor i32 %shl, %shr
  %4 = load ptr, ptr %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %z.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv = sext i8 %5 to i32
  %xor1 = xor i32 %xor, %conv
  store i32 %xor1, ptr %h, align 4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %h, align 4
  %rem = urem i32 %6, 4001
  ret i32 %rem
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerRender(ptr noundef %pStem, ptr noundef %pzBuf, ptr noundef %pnBuf) #0 {
entry:
  %retval = alloca i32, align 4
  %pStem.addr = alloca ptr, align 8
  %pzBuf.addr = alloca ptr, align 8
  %pnBuf.addr = alloca ptr, align 8
  %pRule = alloca ptr, align 8
  %n = alloca i64, align 8
  %z = alloca ptr, align 8
  store ptr %pStem, ptr %pStem.addr, align 8
  store ptr %pzBuf, ptr %pzBuf.addr, align 8
  store ptr %pnBuf, ptr %pnBuf.addr, align 8
  %0 = load ptr, ptr %pStem.addr, align 8
  %pRule1 = getelementptr inbounds %struct.fuzzer_stem, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pRule1, align 8
  store ptr %1, ptr %pRule, align 8
  %2 = load ptr, ptr %pStem.addr, align 8
  %nBasis = getelementptr inbounds %struct.fuzzer_stem, ptr %2, i32 0, i32 6
  %3 = load i8, ptr %nBasis, align 8
  %conv = sext i8 %3 to i32
  %4 = load ptr, ptr %pRule, align 8
  %nTo = getelementptr inbounds %struct.fuzzer_rule, ptr %4, i32 0, i32 4
  %5 = load i8, ptr %nTo, align 1
  %conv2 = sext i8 %5 to i32
  %add = add nsw i32 %conv, %conv2
  %6 = load ptr, ptr %pRule, align 8
  %nFrom = getelementptr inbounds %struct.fuzzer_rule, ptr %6, i32 0, i32 3
  %7 = load i8, ptr %nFrom, align 4
  %conv3 = sext i8 %7 to i32
  %sub = sub nsw i32 %add, %conv3
  %conv4 = sext i32 %sub to i64
  store i64 %conv4, ptr %n, align 8
  %8 = load ptr, ptr %pnBuf.addr, align 8
  %9 = load i32, ptr %8, align 4
  %conv5 = sext i32 %9 to i64
  %10 = load i64, ptr %n, align 8
  %add6 = add nsw i64 %10, 1
  %cmp = icmp slt i64 %conv5, %add6
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %pzBuf.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i64, ptr %n, align 8
  %add8 = add nsw i64 %13, 100
  %call = call ptr @sqlite3_realloc64(ptr noundef %12, i64 noundef %add8)
  %14 = load ptr, ptr %pzBuf.addr, align 8
  store ptr %call, ptr %14, align 8
  %15 = load ptr, ptr %pzBuf.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %cmp9 = icmp eq ptr %16, null
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %17 = load i64, ptr %n, align 8
  %add12 = add nsw i64 %17, 100
  %conv13 = trunc i64 %add12 to i32
  %18 = load ptr, ptr %pnBuf.addr, align 8
  store i32 %conv13, ptr %18, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %19 = load ptr, ptr %pStem.addr, align 8
  %n15 = getelementptr inbounds %struct.fuzzer_stem, ptr %19, i32 0, i32 7
  %20 = load i8, ptr %n15, align 1
  %conv16 = sext i8 %20 to i64
  store i64 %conv16, ptr %n, align 8
  %21 = load ptr, ptr %pzBuf.addr, align 8
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %z, align 8
  %23 = load i64, ptr %n, align 8
  %cmp17 = icmp slt i64 %23, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end14
  %24 = load ptr, ptr %z, align 8
  %25 = load ptr, ptr %pStem.addr, align 8
  %zBasis = getelementptr inbounds %struct.fuzzer_stem, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %zBasis, align 8
  %27 = load ptr, ptr %pStem.addr, align 8
  %nBasis20 = getelementptr inbounds %struct.fuzzer_stem, ptr %27, i32 0, i32 6
  %28 = load i8, ptr %nBasis20, align 8
  %conv21 = sext i8 %28 to i32
  %add22 = add nsw i32 %conv21, 1
  %conv23 = sext i32 %add22 to i64
  %29 = load ptr, ptr %z, align 8
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %29, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memcpy_chk(ptr noundef %24, ptr noundef %26, i64 noundef %conv23, i64 noundef %30) #4
  br label %if.end52

if.else:                                          ; preds = %if.end14
  %31 = load ptr, ptr %z, align 8
  %32 = load ptr, ptr %pStem.addr, align 8
  %zBasis25 = getelementptr inbounds %struct.fuzzer_stem, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %zBasis25, align 8
  %34 = load i64, ptr %n, align 8
  %35 = load ptr, ptr %z, align 8
  %36 = call i64 @llvm.objectsize.i64.p0(ptr %35, i1 false, i1 true, i1 false)
  %call26 = call ptr @__memcpy_chk(ptr noundef %31, ptr noundef %33, i64 noundef %34, i64 noundef %36) #4
  %37 = load ptr, ptr %z, align 8
  %38 = load i64, ptr %n, align 8
  %arrayidx = getelementptr inbounds i8, ptr %37, i64 %38
  %39 = load ptr, ptr %pRule, align 8
  %zTo = getelementptr inbounds %struct.fuzzer_rule, ptr %39, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4 x i8], ptr %zTo, i64 0, i64 0
  %40 = load ptr, ptr %pRule, align 8
  %nTo27 = getelementptr inbounds %struct.fuzzer_rule, ptr %40, i32 0, i32 4
  %41 = load i8, ptr %nTo27, align 1
  %conv28 = sext i8 %41 to i64
  %42 = load ptr, ptr %z, align 8
  %43 = load i64, ptr %n, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %42, i64 %43
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx29, i1 false, i1 true, i1 false)
  %call30 = call ptr @__memcpy_chk(ptr noundef %arrayidx, ptr noundef %arraydecay, i64 noundef %conv28, i64 noundef %44) #4
  %45 = load ptr, ptr %z, align 8
  %46 = load i64, ptr %n, align 8
  %47 = load ptr, ptr %pRule, align 8
  %nTo31 = getelementptr inbounds %struct.fuzzer_rule, ptr %47, i32 0, i32 4
  %48 = load i8, ptr %nTo31, align 1
  %conv32 = sext i8 %48 to i64
  %add33 = add nsw i64 %46, %conv32
  %arrayidx34 = getelementptr inbounds i8, ptr %45, i64 %add33
  %49 = load ptr, ptr %pStem.addr, align 8
  %zBasis35 = getelementptr inbounds %struct.fuzzer_stem, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %zBasis35, align 8
  %51 = load i64, ptr %n, align 8
  %52 = load ptr, ptr %pRule, align 8
  %nFrom36 = getelementptr inbounds %struct.fuzzer_rule, ptr %52, i32 0, i32 3
  %53 = load i8, ptr %nFrom36, align 4
  %conv37 = sext i8 %53 to i64
  %add38 = add nsw i64 %51, %conv37
  %arrayidx39 = getelementptr inbounds i8, ptr %50, i64 %add38
  %54 = load ptr, ptr %pStem.addr, align 8
  %nBasis40 = getelementptr inbounds %struct.fuzzer_stem, ptr %54, i32 0, i32 6
  %55 = load i8, ptr %nBasis40, align 8
  %conv41 = sext i8 %55 to i64
  %56 = load i64, ptr %n, align 8
  %sub42 = sub nsw i64 %conv41, %56
  %57 = load ptr, ptr %pRule, align 8
  %nFrom43 = getelementptr inbounds %struct.fuzzer_rule, ptr %57, i32 0, i32 3
  %58 = load i8, ptr %nFrom43, align 4
  %conv44 = sext i8 %58 to i64
  %sub45 = sub nsw i64 %sub42, %conv44
  %add46 = add nsw i64 %sub45, 1
  %59 = load ptr, ptr %z, align 8
  %60 = load i64, ptr %n, align 8
  %61 = load ptr, ptr %pRule, align 8
  %nTo47 = getelementptr inbounds %struct.fuzzer_rule, ptr %61, i32 0, i32 4
  %62 = load i8, ptr %nTo47, align 1
  %conv48 = sext i8 %62 to i64
  %add49 = add nsw i64 %60, %conv48
  %arrayidx50 = getelementptr inbounds i8, ptr %59, i64 %add49
  %63 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx50, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %arrayidx34, ptr noundef %arrayidx39, i64 noundef %add46, i64 noundef %63) #4
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then19
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end52, %if.then11
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerAdvance(ptr noundef %pCur, ptr noundef %pStem) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pStem.addr = alloca ptr, align 8
  %pRule = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pStem, ptr %pStem.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %entry
  %0 = load ptr, ptr %pStem.addr, align 8
  %pRule1 = getelementptr inbounds %struct.fuzzer_stem, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pRule1, align 8
  store ptr %1, ptr %pRule, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end38

while.body:                                       ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %if.end27, %while.body
  %2 = load ptr, ptr %pStem.addr, align 8
  %n = getelementptr inbounds %struct.fuzzer_stem, ptr %2, i32 0, i32 7
  %3 = load i8, ptr %n, align 1
  %conv = sext i8 %3 to i32
  %4 = load ptr, ptr %pStem.addr, align 8
  %nBasis = getelementptr inbounds %struct.fuzzer_stem, ptr %4, i32 0, i32 6
  %5 = load i8, ptr %nBasis, align 8
  %conv3 = sext i8 %5 to i32
  %6 = load ptr, ptr %pRule, align 8
  %nFrom = getelementptr inbounds %struct.fuzzer_rule, ptr %6, i32 0, i32 3
  %7 = load i8, ptr %nFrom, align 4
  %conv4 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv3, %conv4
  %cmp5 = icmp slt i32 %conv, %sub
  br i1 %cmp5, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond2
  %8 = load ptr, ptr %pStem.addr, align 8
  %n8 = getelementptr inbounds %struct.fuzzer_stem, ptr %8, i32 0, i32 7
  %9 = load i8, ptr %n8, align 1
  %inc = add i8 %9, 1
  store i8 %inc, ptr %n8, align 1
  %10 = load ptr, ptr %pRule, align 8
  %nFrom9 = getelementptr inbounds %struct.fuzzer_rule, ptr %10, i32 0, i32 3
  %11 = load i8, ptr %nFrom9, align 4
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body7
  %12 = load ptr, ptr %pStem.addr, align 8
  %zBasis = getelementptr inbounds %struct.fuzzer_stem, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %zBasis, align 8
  %14 = load ptr, ptr %pStem.addr, align 8
  %n13 = getelementptr inbounds %struct.fuzzer_stem, ptr %14, i32 0, i32 7
  %15 = load i8, ptr %n13, align 1
  %idxprom = sext i8 %15 to i64
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %idxprom
  %16 = load ptr, ptr %pRule, align 8
  %zFrom = getelementptr inbounds %struct.fuzzer_rule, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %zFrom, align 8
  %18 = load ptr, ptr %pRule, align 8
  %nFrom14 = getelementptr inbounds %struct.fuzzer_rule, ptr %18, i32 0, i32 3
  %19 = load i8, ptr %nFrom14, align 4
  %conv15 = sext i8 %19 to i64
  %call = call i32 @memcmp(ptr noundef %arrayidx, ptr noundef %17, i64 noundef %conv15)
  %cmp16 = icmp eq i32 %call, 0
  br i1 %cmp16, label %if.then, label %if.end27

if.then:                                          ; preds = %lor.lhs.false, %while.body7
  %20 = load ptr, ptr %pCur.addr, align 8
  %21 = load ptr, ptr %pStem.addr, align 8
  %call18 = call i32 @fuzzerSeen(ptr noundef %20, ptr noundef %21)
  store i32 %call18, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %cmp19 = icmp slt i32 %22, 0
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %23 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %23, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end
  %24 = load ptr, ptr %pStem.addr, align 8
  %call25 = call i32 @fuzzerCost(ptr noundef %24)
  store i32 1, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %lor.lhs.false
  br label %while.cond2, !llvm.loop !21

while.end:                                        ; preds = %while.cond2
  %25 = load ptr, ptr %pStem.addr, align 8
  %n28 = getelementptr inbounds %struct.fuzzer_stem, ptr %25, i32 0, i32 7
  store i8 -1, ptr %n28, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %26 = load ptr, ptr %pRule, align 8
  %pNext = getelementptr inbounds %struct.fuzzer_rule, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pNext, align 8
  store ptr %27, ptr %pRule, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load ptr, ptr %pRule, align 8
  %29 = load ptr, ptr %pStem.addr, align 8
  %30 = load ptr, ptr %pCur.addr, align 8
  %iRuleset = getelementptr inbounds %struct.fuzzer_cursor, ptr %30, i32 0, i32 11
  %31 = load i32, ptr %iRuleset, align 8
  %call29 = call i32 @fuzzerSkipRule(ptr noundef %28, ptr noundef %29, i32 noundef %31)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !22

do.end:                                           ; preds = %do.cond
  %32 = load ptr, ptr %pRule, align 8
  %33 = load ptr, ptr %pStem.addr, align 8
  %pRule30 = getelementptr inbounds %struct.fuzzer_stem, ptr %33, i32 0, i32 1
  store ptr %32, ptr %pRule30, align 8
  %34 = load ptr, ptr %pRule, align 8
  %tobool31 = icmp ne ptr %34, null
  br i1 %tobool31, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %do.end
  %35 = load ptr, ptr %pStem.addr, align 8
  %call32 = call i32 @fuzzerCost(ptr noundef %35)
  %36 = load ptr, ptr %pCur.addr, align 8
  %rLimit = getelementptr inbounds %struct.fuzzer_cursor, ptr %36, i32 0, i32 3
  %37 = load i32, ptr %rLimit, align 8
  %cmp33 = icmp sgt i32 %call32, %37
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %land.lhs.true
  %38 = load ptr, ptr %pStem.addr, align 8
  %pRule36 = getelementptr inbounds %struct.fuzzer_stem, ptr %38, i32 0, i32 1
  store ptr null, ptr %pRule36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %land.lhs.true, %do.end
  br label %while.cond, !llvm.loop !23

while.end38:                                      ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end38, %if.then24, %if.then21
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @fuzzerInsert(ptr noundef %pCur, ptr noundef %pNew) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pNew.addr = alloca ptr, align 8
  %pX = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pNew, ptr %pNew.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %pStem = getelementptr inbounds %struct.fuzzer_cursor, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pStem, align 8
  store ptr %1, ptr %pX, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pX, align 8
  %rCostX = getelementptr inbounds %struct.fuzzer_stem, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %rCostX, align 4
  %4 = load ptr, ptr %pNew.addr, align 8
  %rCostX1 = getelementptr inbounds %struct.fuzzer_stem, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %rCostX1, align 4
  %cmp2 = icmp sgt i32 %3, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %pNew.addr, align 8
  %pNext = getelementptr inbounds %struct.fuzzer_stem, ptr %6, i32 0, i32 2
  store ptr null, ptr %pNext, align 8
  %7 = load ptr, ptr %pNew.addr, align 8
  %8 = load ptr, ptr %pCur.addr, align 8
  %pStem3 = getelementptr inbounds %struct.fuzzer_cursor, ptr %8, i32 0, i32 4
  store ptr %7, ptr %pStem3, align 8
  %9 = load ptr, ptr %pX, align 8
  store ptr %9, ptr %pNew.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %pNew.addr, align 8
  %pNext4 = getelementptr inbounds %struct.fuzzer_stem, ptr %10, i32 0, i32 2
  store ptr null, ptr %pNext4, align 8
  %11 = load ptr, ptr %pNew.addr, align 8
  store ptr %11, ptr %pX, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %pCur.addr, align 8
  %mxQueue = getelementptr inbounds %struct.fuzzer_cursor, ptr %13, i32 0, i32 7
  %14 = load i32, ptr %mxQueue, align 8
  %cmp5 = icmp sle i32 %12, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pCur.addr, align 8
  %aQueue = getelementptr inbounds %struct.fuzzer_cursor, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [20 x ptr], ptr %aQueue, i64 0, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %18 = load ptr, ptr %pX, align 8
  %19 = load ptr, ptr %pCur.addr, align 8
  %aQueue7 = getelementptr inbounds %struct.fuzzer_cursor, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds [20 x ptr], ptr %aQueue7, i64 0, i64 %idxprom8
  %21 = load ptr, ptr %arrayidx9, align 8
  %call = call ptr @fuzzerMergeStems(ptr noundef %18, ptr noundef %21)
  store ptr %call, ptr %pX, align 8
  %22 = load ptr, ptr %pCur.addr, align 8
  %aQueue10 = getelementptr inbounds %struct.fuzzer_cursor, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds [20 x ptr], ptr %aQueue10, i64 0, i64 %idxprom11
  store ptr null, ptr %arrayidx12, align 8
  br label %if.end16

if.else:                                          ; preds = %for.body
  %24 = load ptr, ptr %pX, align 8
  %25 = load ptr, ptr %pCur.addr, align 8
  %aQueue13 = getelementptr inbounds %struct.fuzzer_cursor, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds [20 x ptr], ptr %aQueue13, i64 0, i64 %idxprom14
  store ptr %24, ptr %arrayidx15, align 8
  br label %for.end

if.end16:                                         ; preds = %if.then6
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %if.else, %for.cond
  %28 = load i32, ptr %i, align 4
  %29 = load ptr, ptr %pCur.addr, align 8
  %mxQueue17 = getelementptr inbounds %struct.fuzzer_cursor, ptr %29, i32 0, i32 7
  %30 = load i32, ptr %mxQueue17, align 8
  %cmp18 = icmp sgt i32 %28, %30
  br i1 %cmp18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %for.end
  %31 = load i32, ptr %i, align 4
  %cmp20 = icmp slt i32 %31, 20
  br i1 %cmp20, label %if.then21, label %if.else26

if.then21:                                        ; preds = %if.then19
  %32 = load i32, ptr %i, align 4
  %33 = load ptr, ptr %pCur.addr, align 8
  %mxQueue22 = getelementptr inbounds %struct.fuzzer_cursor, ptr %33, i32 0, i32 7
  store i32 %32, ptr %mxQueue22, align 8
  %34 = load ptr, ptr %pX, align 8
  %35 = load ptr, ptr %pCur.addr, align 8
  %aQueue23 = getelementptr inbounds %struct.fuzzer_cursor, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %36 to i64
  %arrayidx25 = getelementptr inbounds [20 x ptr], ptr %aQueue23, i64 0, i64 %idxprom24
  store ptr %34, ptr %arrayidx25, align 8
  br label %if.end32

if.else26:                                        ; preds = %if.then19
  %37 = load ptr, ptr %pX, align 8
  %38 = load ptr, ptr %pCur.addr, align 8
  %aQueue27 = getelementptr inbounds %struct.fuzzer_cursor, ptr %38, i32 0, i32 6
  %arrayidx28 = getelementptr inbounds [20 x ptr], ptr %aQueue27, i64 0, i64 19
  %39 = load ptr, ptr %arrayidx28, align 8
  %call29 = call ptr @fuzzerMergeStems(ptr noundef %37, ptr noundef %39)
  store ptr %call29, ptr %pX, align 8
  %40 = load ptr, ptr %pX, align 8
  %41 = load ptr, ptr %pCur.addr, align 8
  %aQueue30 = getelementptr inbounds %struct.fuzzer_cursor, ptr %41, i32 0, i32 6
  %arrayidx31 = getelementptr inbounds [20 x ptr], ptr %aQueue30, i64 0, i64 19
  store ptr %40, ptr %arrayidx31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else26, %if.then21
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %for.end
  %42 = load ptr, ptr %pCur.addr, align 8
  %call34 = call ptr @fuzzerLowestCostStem(ptr noundef %42)
  ret ptr %call34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerSeen(ptr noundef %pCur, ptr noundef %pStem) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pStem.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %pLookup = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pStem, ptr %pStem.addr, align 8
  %0 = load ptr, ptr %pStem.addr, align 8
  %1 = load ptr, ptr %pCur.addr, align 8
  %zBuf = getelementptr inbounds %struct.fuzzer_cursor, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %pCur.addr, align 8
  %nBuf = getelementptr inbounds %struct.fuzzer_cursor, ptr %2, i32 0, i32 9
  %call = call i32 @fuzzerRender(ptr noundef %0, ptr noundef %zBuf, ptr noundef %nBuf)
  %cmp = icmp eq i32 %call, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pCur.addr, align 8
  %zBuf1 = getelementptr inbounds %struct.fuzzer_cursor, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %zBuf1, align 8
  %call2 = call i32 @fuzzerHash(ptr noundef %4)
  store i32 %call2, ptr %h, align 4
  %5 = load ptr, ptr %pCur.addr, align 8
  %apHash = getelementptr inbounds %struct.fuzzer_cursor, ptr %5, i32 0, i32 13
  %6 = load i32, ptr %h, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4001 x ptr], ptr %apHash, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %pLookup, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load ptr, ptr %pLookup, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %pLookup, align 8
  %zBasis = getelementptr inbounds %struct.fuzzer_stem, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zBasis, align 8
  %11 = load ptr, ptr %pCur.addr, align 8
  %zBuf3 = getelementptr inbounds %struct.fuzzer_cursor, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %zBuf3, align 8
  %call4 = call i32 @strcmp(ptr noundef %10, ptr noundef %12)
  %cmp5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load ptr, ptr %pLookup, align 8
  %pHash = getelementptr inbounds %struct.fuzzer_stem, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %pHash, align 8
  store ptr %15, ptr %pLookup, align 8
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %land.end
  %16 = load ptr, ptr %pLookup, align 8
  %cmp6 = icmp ne ptr %16, null
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @fuzzerLowestCostStem(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pBest = alloca ptr, align 8
  %pX = alloca ptr, align 8
  %iBest = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %pStem = getelementptr inbounds %struct.fuzzer_cursor, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pStem, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  store i32 -1, ptr %iBest, align 4
  store ptr null, ptr %pBest, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pCur.addr, align 8
  %mxQueue = getelementptr inbounds %struct.fuzzer_cursor, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %mxQueue, align 8
  %cmp1 = icmp sle i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pCur.addr, align 8
  %aQueue = getelementptr inbounds %struct.fuzzer_cursor, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [20 x ptr], ptr %aQueue, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %pX, align 8
  %8 = load ptr, ptr %pX, align 8
  %cmp2 = icmp eq ptr %8, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %pBest, align 8
  %cmp4 = icmp eq ptr %9, null
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %pBest, align 8
  %rCostX = getelementptr inbounds %struct.fuzzer_stem, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %rCostX, align 4
  %12 = load ptr, ptr %pX, align 8
  %rCostX5 = getelementptr inbounds %struct.fuzzer_stem, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %rCostX5, align 4
  %cmp6 = icmp sgt i32 %11, %13
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %14 = load ptr, ptr %pX, align 8
  store ptr %14, ptr %pBest, align 8
  %15 = load i32, ptr %i, align 4
  store i32 %15, ptr %iBest, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %if.then3
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %pBest, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %if.then9, label %if.end15

if.then9:                                         ; preds = %for.end
  %18 = load ptr, ptr %pBest, align 8
  %pNext = getelementptr inbounds %struct.fuzzer_stem, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pNext, align 8
  %20 = load ptr, ptr %pCur.addr, align 8
  %aQueue10 = getelementptr inbounds %struct.fuzzer_cursor, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %iBest, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds [20 x ptr], ptr %aQueue10, i64 0, i64 %idxprom11
  store ptr %19, ptr %arrayidx12, align 8
  %22 = load ptr, ptr %pBest, align 8
  %pNext13 = getelementptr inbounds %struct.fuzzer_stem, ptr %22, i32 0, i32 2
  store ptr null, ptr %pNext13, align 8
  %23 = load ptr, ptr %pBest, align 8
  %24 = load ptr, ptr %pCur.addr, align 8
  %pStem14 = getelementptr inbounds %struct.fuzzer_cursor, ptr %24, i32 0, i32 4
  store ptr %23, ptr %pStem14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %for.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  %25 = load ptr, ptr %pCur.addr, align 8
  %pStem17 = getelementptr inbounds %struct.fuzzer_cursor, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %pStem17, align 8
  ret ptr %26
}

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fuzzerCost(ptr noundef %pStem) #0 {
entry:
  %pStem.addr = alloca ptr, align 8
  store ptr %pStem, ptr %pStem.addr, align 8
  %0 = load ptr, ptr %pStem.addr, align 8
  %rBaseCost = getelementptr inbounds %struct.fuzzer_stem, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %rBaseCost, align 8
  %2 = load ptr, ptr %pStem.addr, align 8
  %pRule = getelementptr inbounds %struct.fuzzer_stem, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pRule, align 8
  %rCost = getelementptr inbounds %struct.fuzzer_rule, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %rCost, align 8
  %add = add nsw i32 %1, %4
  %5 = load ptr, ptr %pStem.addr, align 8
  %rCostX = getelementptr inbounds %struct.fuzzer_stem, ptr %5, i32 0, i32 5
  store i32 %add, ptr %rCostX, align 4
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @fuzzerMergeStems(ptr noundef %pA, ptr noundef %pB) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %head = alloca %struct.fuzzer_stem, align 8
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
  %rCostX = getelementptr inbounds %struct.fuzzer_stem, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %rCostX, align 4
  %5 = load ptr, ptr %pB.addr, align 8
  %rCostX2 = getelementptr inbounds %struct.fuzzer_stem, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %rCostX2, align 4
  %cmp = icmp sle i32 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %pA.addr, align 8
  %8 = load ptr, ptr %pTail, align 8
  %pNext = getelementptr inbounds %struct.fuzzer_stem, ptr %8, i32 0, i32 2
  store ptr %7, ptr %pNext, align 8
  %9 = load ptr, ptr %pA.addr, align 8
  store ptr %9, ptr %pTail, align 8
  %10 = load ptr, ptr %pA.addr, align 8
  %pNext3 = getelementptr inbounds %struct.fuzzer_stem, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pNext3, align 8
  store ptr %11, ptr %pA.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %pB.addr, align 8
  %13 = load ptr, ptr %pTail, align 8
  %pNext4 = getelementptr inbounds %struct.fuzzer_stem, ptr %13, i32 0, i32 2
  store ptr %12, ptr %pNext4, align 8
  %14 = load ptr, ptr %pB.addr, align 8
  store ptr %14, ptr %pTail, align 8
  %15 = load ptr, ptr %pB.addr, align 8
  %pNext5 = getelementptr inbounds %struct.fuzzer_stem, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %pNext5, align 8
  store ptr %16, ptr %pB.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %pA.addr, align 8
  %cmp6 = icmp eq ptr %17, null
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %while.end
  %18 = load ptr, ptr %pB.addr, align 8
  %19 = load ptr, ptr %pTail, align 8
  %pNext8 = getelementptr inbounds %struct.fuzzer_stem, ptr %19, i32 0, i32 2
  store ptr %18, ptr %pNext8, align 8
  br label %if.end11

if.else9:                                         ; preds = %while.end
  %20 = load ptr, ptr %pA.addr, align 8
  %21 = load ptr, ptr %pTail, align 8
  %pNext10 = getelementptr inbounds %struct.fuzzer_stem, ptr %21, i32 0, i32 2
  store ptr %20, ptr %pNext10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %pNext12 = getelementptr inbounds %struct.fuzzer_stem, ptr %head, i32 0, i32 2
  %22 = load ptr, ptr %pNext12, align 8
  ret ptr %22
}

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

declare void @sqlite3_result_null(ptr noundef) #1

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
