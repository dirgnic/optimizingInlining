; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/fossildelta.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/fossildelta.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hash = type { i16, i16, i16, [16 x i8] }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.deltaparsevtab_cursor = type { %struct.sqlite3_vtab_cursor, ptr, i64, i64, i64, i32, i32, i32 }
%struct.sqlite3_vtab_cursor = type { ptr }

@sqlite3_fossildelta_init.enc = internal constant i32 2097153, align 4
@.str = private unnamed_addr constant [13 x i8] c"delta_create\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"delta_apply\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"delta_output_size\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"delta_parse\00", align 1
@deltaparsevtabModule = internal global %struct.sqlite3_module { i32 0, ptr null, ptr @deltaparsevtabConnect, ptr @deltaparsevtabBestIndex, ptr @deltaparsevtabDisconnect, ptr null, ptr @deltaparsevtabOpen, ptr @deltaparsevtabClose, ptr @deltaparsevtabFilter, ptr @deltaparsevtabNext, ptr @deltaparsevtabEof, ptr @deltaparsevtabColumn, ptr @deltaparsevtabRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@__func__.deltaCreateFunc = private unnamed_addr constant [16 x i8] c"deltaCreateFunc\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"fossildelta.c\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"argc==2\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"cannot create fossil delta\00", align 1
@putInt.zDigits = internal constant [65 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz~\00", align 1
@checksum.byteOrderTest = internal constant i32 1, align 4
@__func__.checksum = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"(z - (const unsigned char*)0)%4==0\00", align 1
@__func__.deltaApplyFunc = private unnamed_addr constant [15 x i8] c"deltaApplyFunc\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"corrupt fossil delta\00", align 1
@deltaGetInt.zValue = internal constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF$\FF%&'()*+,-./0123456789:;<=>\FF\FF\FF?\FF", align 1
@__func__.deltaOutputSizeFunc = private unnamed_addr constant [20 x i8] c"deltaOutputSizeFunc\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"argc==1\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"CREATE TABLE x(op,a1,a2,delta HIDDEN)\00", align 1
@azOp = internal global [6 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"CHECKSUM\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @sqlite3_fossildelta_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str, i32 noundef 2, i32 noundef 2097153, ptr noundef null, ptr noundef @deltaCreateFunc, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %4, ptr noundef @.str.1, i32 noundef 2, i32 noundef 2097153, ptr noundef null, ptr noundef @deltaApplyFunc, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %db.addr, align 8
  %call4 = call i32 @sqlite3_create_function(ptr noundef %6, ptr noundef @.str.2, i32 noundef 1, i32 noundef 2097153, ptr noundef null, ptr noundef @deltaOutputSizeFunc, ptr noundef null, ptr noundef null)
  store i32 %call4, ptr %rc, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %7 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %8 = load ptr, ptr %db.addr, align 8
  %call8 = call i32 @sqlite3_create_module(ptr noundef %8, ptr noundef @.str.3, ptr noundef @deltaparsevtabModule, ptr noundef null)
  store i32 %call8, ptr %rc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %9 = load i32, ptr %rc, align 4
  ret i32 %9
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @deltaCreateFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %aOrig = alloca ptr, align 8
  %nOrig = alloca i32, align 4
  %aNew = alloca ptr, align 8
  %nNew = alloca i32, align 4
  %aOut = alloca ptr, align 8
  %nOut = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.deltaCreateFunc, ptr noundef @.str.4, i32 noundef 651, ptr noundef @.str.5) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %3)
  %cmp1 = icmp eq i32 %call, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %if.end28

if.end:                                           ; preds = %cond.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @sqlite3_value_type(ptr noundef %5)
  %cmp5 = icmp eq i32 %call4, 5
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %if.end28

if.end8:                                          ; preds = %if.end
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @sqlite3_value_bytes(ptr noundef %7)
  store i32 %call10, ptr %nOrig, align 4
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx11, align 8
  %call12 = call ptr @sqlite3_value_blob(ptr noundef %9)
  store ptr %call12, ptr %aOrig, align 8
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @sqlite3_value_bytes(ptr noundef %11)
  store i32 %call14, ptr %nNew, align 4
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr @sqlite3_value_blob(ptr noundef %13)
  store ptr %call16, ptr %aNew, align 8
  %14 = load i32, ptr %nNew, align 4
  %add = add nsw i32 %14, 70
  %conv17 = sext i32 %add to i64
  %call18 = call ptr @sqlite3_malloc64(i64 noundef %conv17)
  store ptr %call18, ptr %aOut, align 8
  %15 = load ptr, ptr %aOut, align 8
  %cmp19 = icmp eq ptr %15, null
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end8
  %16 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %16)
  br label %if.end28

if.else:                                          ; preds = %if.end8
  %17 = load ptr, ptr %aOrig, align 8
  %18 = load i32, ptr %nOrig, align 4
  %19 = load ptr, ptr %aNew, align 8
  %20 = load i32, ptr %nNew, align 4
  %21 = load ptr, ptr %aOut, align 8
  %call22 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_0(ptr noundef %17, i32 noundef %18, ptr noundef %19, i32 noundef %20, ptr noundef %21)
  store i32 %call22, ptr %nOut, align 4
  %22 = load i32, ptr %nOut, align 4
  %cmp23 = icmp slt i32 %22, 0
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else
  %23 = load ptr, ptr %aOut, align 8
  call void @sqlite3_free(ptr noundef %23)
  %24 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %24, ptr noundef @.str.6, i32 noundef -1)
  br label %if.end27

if.else26:                                        ; preds = %if.else
  %25 = load ptr, ptr %context.addr, align 8
  %26 = load ptr, ptr %aOut, align 8
  %27 = load i32, ptr %nOut, align 4
  call void @sqlite3_result_blob(ptr noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef @sqlite3_free)
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
  br label %if.end28

if.end28:                                         ; preds = %if.then, %if.then7, %if.end27, %if.then21
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @deltaApplyFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %aOrig = alloca ptr, align 8
  %nOrig = alloca i32, align 4
  %aDelta = alloca ptr, align 8
  %nDelta = alloca i32, align 4
  %aOut = alloca ptr, align 8
  %nOut = alloca i32, align 4
  %nOut2 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.deltaApplyFunc, ptr noundef @.str.4, i32 noundef 686, ptr noundef @.str.5) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %3)
  %cmp1 = icmp eq i32 %call, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %if.end33

if.end:                                           ; preds = %cond.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @sqlite3_value_type(ptr noundef %5)
  %cmp5 = icmp eq i32 %call4, 5
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %if.end33

if.end8:                                          ; preds = %if.end
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @sqlite3_value_bytes(ptr noundef %7)
  store i32 %call10, ptr %nOrig, align 4
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx11, align 8
  %call12 = call ptr @sqlite3_value_blob(ptr noundef %9)
  store ptr %call12, ptr %aOrig, align 8
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @sqlite3_value_bytes(ptr noundef %11)
  store i32 %call14, ptr %nDelta, align 4
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr @sqlite3_value_blob(ptr noundef %13)
  store ptr %call16, ptr %aDelta, align 8
  %14 = load ptr, ptr %aDelta, align 8
  %15 = load i32, ptr %nDelta, align 4
  %call17 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_1(ptr noundef %14, i32 noundef %15)
  store i32 %call17, ptr %nOut, align 4
  %16 = load i32, ptr %nOut, align 4
  %cmp18 = icmp slt i32 %16, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end8
  %17 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %17, ptr noundef @.str.8, i32 noundef -1)
  br label %if.end33

if.end21:                                         ; preds = %if.end8
  %18 = load i32, ptr %nOut, align 4
  %conv22 = sext i32 %18 to i64
  %add = add nsw i64 %conv22, 1
  %call23 = call ptr @sqlite3_malloc64(i64 noundef %add)
  store ptr %call23, ptr %aOut, align 8
  %19 = load ptr, ptr %aOut, align 8
  %cmp24 = icmp eq ptr %19, null
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end21
  %20 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %20)
  br label %if.end33

if.else:                                          ; preds = %if.end21
  %21 = load ptr, ptr %aOrig, align 8
  %22 = load i32, ptr %nOrig, align 4
  %23 = load ptr, ptr %aDelta, align 8
  %24 = load i32, ptr %nDelta, align 4
  %25 = load ptr, ptr %aOut, align 8
  %call27 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_2(ptr noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, ptr noundef %25)
  store i32 %call27, ptr %nOut2, align 4
  %26 = load i32, ptr %nOut2, align 4
  %27 = load i32, ptr %nOut, align 4
  %cmp28 = icmp ne i32 %26, %27
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else
  %28 = load ptr, ptr %aOut, align 8
  call void @sqlite3_free(ptr noundef %28)
  %29 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %29, ptr noundef @.str.8, i32 noundef -1)
  br label %if.end32

if.else31:                                        ; preds = %if.else
  %30 = load ptr, ptr %context.addr, align 8
  %31 = load ptr, ptr %aOut, align 8
  %32 = load i32, ptr %nOut, align 4
  call void @sqlite3_result_blob(ptr noundef %30, ptr noundef %31, i32 noundef %32, ptr noundef @sqlite3_free)
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  br label %if.end33

if.end33:                                         ; preds = %if.then, %if.then7, %if.then20, %if.end32, %if.then26
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @deltaOutputSizeFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %aDelta = alloca ptr, align 8
  %nDelta = alloca i32, align 4
  %nOut = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.deltaOutputSizeFunc, ptr noundef @.str.4, i32 noundef 727, ptr noundef @.str.9) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %3)
  %cmp1 = icmp eq i32 %call, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %if.end11

if.end:                                           ; preds = %cond.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @sqlite3_value_bytes(ptr noundef %5)
  store i32 %call4, ptr %nDelta, align 4
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx5, align 8
  %call6 = call ptr @sqlite3_value_blob(ptr noundef %7)
  store ptr %call6, ptr %aDelta, align 8
  %8 = load ptr, ptr %aDelta, align 8
  %9 = load i32, ptr %nDelta, align 4
  %call7 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_3(ptr noundef %8, i32 noundef %9)
  store i32 %call7, ptr %nOut, align 4
  %10 = load i32, ptr %nOut, align 4
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %11 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %11, ptr noundef @.str.8, i32 noundef -1)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %context.addr, align 8
  %13 = load i32, ptr %nOut, align 4
  call void @sqlite3_result_int(ptr noundef %12, i32 noundef %13)
  br label %if.end11

if.end11:                                         ; preds = %if.then, %if.then10, %if.else
  ret void
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @sqlite3_value_type(ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

declare ptr @sqlite3_value_blob(ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

declare void @sqlite3_result_error_nomem(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @delta_create(ptr noundef %zSrc, i32 noundef %lenSrc, ptr noundef %zOut, i32 noundef %lenOut, ptr noundef %zDelta) #0 {
entry:
  %retval = alloca i32, align 4
  %zSrc.addr = alloca ptr, align 8
  %lenSrc.addr = alloca i32, align 4
  %zOut.addr = alloca ptr, align 8
  %lenOut.addr = alloca i32, align 4
  %zDelta.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  %zOrigDelta = alloca ptr, align 8
  %h = alloca %struct.hash, align 2
  %nHash = alloca i32, align 4
  %landmark = alloca ptr, align 8
  %collide = alloca ptr, align 8
  %lastRead = alloca i32, align 4
  %hv = alloca i32, align 4
  %iSrc = alloca i32, align 4
  %iBlock = alloca i32, align 4
  %bestCnt = alloca i32, align 4
  %bestOfst = alloca i32, align 4
  %bestLitsz = alloca i32, align 4
  %hv33 = alloca i32, align 4
  %limit = alloca i32, align 4
  %cnt = alloca i32, align 4
  %ofst = alloca i32, align 4
  %litsz = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sz = alloca i32, align 4
  %limitX = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %lenSrc, ptr %lenSrc.addr, align 4
  store ptr %zOut, ptr %zOut.addr, align 8
  store i32 %lenOut, ptr %lenOut.addr, align 4
  store ptr %zDelta, ptr %zDelta.addr, align 8
  %0 = load ptr, ptr %zDelta.addr, align 8
  store ptr %0, ptr %zOrigDelta, align 8
  store i32 -1, ptr %lastRead, align 4
  %1 = load i32, ptr %lenOut.addr, align 4
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_4(i32 noundef %1, ptr noundef %zDelta.addr)
  %2 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %zDelta.addr, align 8
  store i8 10, ptr %2, align 1
  %3 = load i32, ptr %lenSrc.addr, align 4
  %cmp = icmp ule i32 %3, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %lenOut.addr, align 4
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_5(i32 noundef %4, ptr noundef %zDelta.addr)
  %5 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr1, ptr %zDelta.addr, align 8
  store i8 58, ptr %5, align 1
  %6 = load ptr, ptr %zDelta.addr, align 8
  %7 = load ptr, ptr %zOut.addr, align 8
  %8 = load i32, ptr %lenOut.addr, align 4
  %conv = zext i32 %8 to i64
  %9 = load ptr, ptr %zDelta.addr, align 8
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %7, i64 noundef %conv, i64 noundef %10) #6
  %11 = load i32, ptr %lenOut.addr, align 4
  %12 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  store ptr %add.ptr, ptr %zDelta.addr, align 8
  %13 = load ptr, ptr %zOut.addr, align 8
  %14 = load i32, ptr %lenOut.addr, align 4
  %conv2 = zext i32 %14 to i64
  %call3 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_6(ptr noundef %13, i64 noundef %conv2)
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_7(i32 noundef %call3, ptr noundef %zDelta.addr)
  %15 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr4, ptr %zDelta.addr, align 8
  store i8 59, ptr %15, align 1
  %16 = load ptr, ptr %zDelta.addr, align 8
  %17 = load ptr, ptr %zOrigDelta, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv5 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %18 = load i32, ptr %lenSrc.addr, align 4
  %div = udiv i32 %18, 16
  store i32 %div, ptr %nHash, align 4
  %19 = load i32, ptr %nHash, align 4
  %conv6 = sext i32 %19 to i64
  %mul = mul nsw i64 %conv6, 2
  %mul7 = mul i64 %mul, 4
  %call8 = call ptr @sqlite3_malloc64(i64 noundef %mul7)
  store ptr %call8, ptr %collide, align 8
  %20 = load ptr, ptr %collide, align 8
  %21 = load i32, ptr %nHash, align 4
  %mul9 = mul nsw i32 %21, 2
  %conv10 = sext i32 %mul9 to i64
  %mul11 = mul i64 %conv10, 4
  %22 = load ptr, ptr %collide, align 8
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memset_chk(ptr noundef %20, i32 noundef -1, i64 noundef %mul11, i64 noundef %23) #6
  %24 = load ptr, ptr %collide, align 8
  %25 = load i32, ptr %nHash, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds i32, ptr %24, i64 %idxprom
  store ptr %arrayidx, ptr %landmark, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %lenSrc.addr, align 4
  %sub = sub i32 %27, 16
  %cmp13 = icmp ult i32 %26, %sub
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %zSrc.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %28, i64 %idxprom15
  %call17 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_8(ptr noundef %arrayidx16)
  %30 = load i32, ptr %nHash, align 4
  %rem = urem i32 %call17, %30
  store i32 %rem, ptr %hv, align 4
  %31 = load ptr, ptr %landmark, align 8
  %32 = load i32, ptr %hv, align 4
  %idxprom18 = sext i32 %32 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %31, i64 %idxprom18
  %33 = load i32, ptr %arrayidx19, align 4
  %34 = load ptr, ptr %collide, align 8
  %35 = load i32, ptr %i, align 4
  %div20 = sdiv i32 %35, 16
  %idxprom21 = sext i32 %div20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %34, i64 %idxprom21
  store i32 %33, ptr %arrayidx22, align 4
  %36 = load i32, ptr %i, align 4
  %div23 = sdiv i32 %36, 16
  %37 = load ptr, ptr %landmark, align 8
  %38 = load i32, ptr %hv, align 4
  %idxprom24 = sext i32 %38 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %37, i64 %idxprom24
  store i32 %div23, ptr %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %add = add nsw i32 %39, 16
  store i32 %add, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %base, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end165, %for.end
  %40 = load i32, ptr %base, align 4
  %add26 = add nsw i32 %40, 16
  %41 = load i32, ptr %lenOut.addr, align 4
  %cmp27 = icmp ult i32 %add26, %41
  br i1 %cmp27, label %while.body, label %while.end166

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %bestOfst, align 4
  store i32 0, ptr %bestLitsz, align 4
  %42 = load ptr, ptr %zOut.addr, align 8
  %43 = load i32, ptr %base, align 4
  %idxprom29 = sext i32 %43 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %42, i64 %idxprom29
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_9(ptr noundef %h, ptr noundef %arrayidx30)
  store i32 0, ptr %i, align 4
  store i32 0, ptr %bestCnt, align 4
  br label %while.body32

while.body32:                                     ; preds = %while.body, %if.end158
  store i32 250, ptr %limit, align 4
  %call34 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_10(ptr noundef %h)
  %44 = load i32, ptr %nHash, align 4
  %rem35 = urem i32 %call34, %44
  store i32 %rem35, ptr %hv33, align 4
  %45 = load ptr, ptr %landmark, align 8
  %46 = load i32, ptr %hv33, align 4
  %idxprom36 = sext i32 %46 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %45, i64 %idxprom36
  %47 = load i32, ptr %arrayidx37, align 4
  store i32 %47, ptr %iBlock, align 4
  br label %while.cond38

while.cond38:                                     ; preds = %if.end113, %while.body32
  %48 = load i32, ptr %iBlock, align 4
  %cmp39 = icmp sge i32 %48, 0
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond38
  %49 = load i32, ptr %limit, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, ptr %limit, align 4
  %cmp41 = icmp sgt i32 %49, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond38
  %50 = phi i1 [ false, %while.cond38 ], [ %cmp41, %land.rhs ]
  br i1 %50, label %while.body43, label %while.end

while.body43:                                     ; preds = %land.end
  %51 = load i32, ptr %iBlock, align 4
  %mul44 = mul nsw i32 %51, 16
  store i32 %mul44, ptr %iSrc, align 4
  %52 = load i32, ptr %base, align 4
  %53 = load i32, ptr %i, align 4
  %add45 = add nsw i32 %52, %53
  store i32 %add45, ptr %y, align 4
  %54 = load i32, ptr %lenSrc.addr, align 4
  %55 = load i32, ptr %iSrc, align 4
  %sub46 = sub i32 %54, %55
  %56 = load i32, ptr %lenOut.addr, align 4
  %57 = load i32, ptr %y, align 4
  %sub47 = sub i32 %56, %57
  %cmp48 = icmp ule i32 %sub46, %sub47
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body43
  %58 = load i32, ptr %lenSrc.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body43
  %59 = load i32, ptr %iSrc, align 4
  %60 = load i32, ptr %lenOut.addr, align 4
  %add50 = add i32 %59, %60
  %61 = load i32, ptr %y, align 4
  %sub51 = sub i32 %add50, %61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %58, %cond.true ], [ %sub51, %cond.false ]
  store i32 %cond, ptr %limitX, align 4
  %62 = load i32, ptr %iSrc, align 4
  store i32 %62, ptr %x, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc66, %cond.end
  %63 = load i32, ptr %x, align 4
  %64 = load i32, ptr %limitX, align 4
  %cmp53 = icmp slt i32 %63, %64
  br i1 %cmp53, label %for.body55, label %for.end68

for.body55:                                       ; preds = %for.cond52
  %65 = load ptr, ptr %zSrc.addr, align 8
  %66 = load i32, ptr %x, align 4
  %idxprom56 = sext i32 %66 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %65, i64 %idxprom56
  %67 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %67 to i32
  %68 = load ptr, ptr %zOut.addr, align 8
  %69 = load i32, ptr %y, align 4
  %idxprom59 = sext i32 %69 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %68, i64 %idxprom59
  %70 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %70 to i32
  %cmp62 = icmp ne i32 %conv58, %conv61
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %for.body55
  br label %for.end68

if.end65:                                         ; preds = %for.body55
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %71 = load i32, ptr %x, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, ptr %x, align 4
  %72 = load i32, ptr %y, align 4
  %inc67 = add nsw i32 %72, 1
  store i32 %inc67, ptr %y, align 4
  br label %for.cond52, !llvm.loop !8

for.end68:                                        ; preds = %if.then64, %for.cond52
  %73 = load i32, ptr %x, align 4
  %74 = load i32, ptr %iSrc, align 4
  %sub69 = sub nsw i32 %73, %74
  %sub70 = sub nsw i32 %sub69, 1
  store i32 %sub70, ptr %j, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc92, %for.end68
  %75 = load i32, ptr %k, align 4
  %76 = load i32, ptr %iSrc, align 4
  %cmp72 = icmp slt i32 %75, %76
  br i1 %cmp72, label %land.rhs74, label %land.end77

land.rhs74:                                       ; preds = %for.cond71
  %77 = load i32, ptr %k, align 4
  %78 = load i32, ptr %i, align 4
  %cmp75 = icmp sle i32 %77, %78
  br label %land.end77

land.end77:                                       ; preds = %land.rhs74, %for.cond71
  %79 = phi i1 [ false, %for.cond71 ], [ %cmp75, %land.rhs74 ]
  br i1 %79, label %for.body78, label %for.end94

for.body78:                                       ; preds = %land.end77
  %80 = load ptr, ptr %zSrc.addr, align 8
  %81 = load i32, ptr %iSrc, align 4
  %82 = load i32, ptr %k, align 4
  %sub79 = sub nsw i32 %81, %82
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %80, i64 %idxprom80
  %83 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %83 to i32
  %84 = load ptr, ptr %zOut.addr, align 8
  %85 = load i32, ptr %base, align 4
  %86 = load i32, ptr %i, align 4
  %add83 = add nsw i32 %85, %86
  %87 = load i32, ptr %k, align 4
  %sub84 = sub nsw i32 %add83, %87
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %84, i64 %idxprom85
  %88 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %88 to i32
  %cmp88 = icmp ne i32 %conv82, %conv87
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %for.body78
  br label %for.end94

if.end91:                                         ; preds = %for.body78
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %89 = load i32, ptr %k, align 4
  %inc93 = add nsw i32 %89, 1
  store i32 %inc93, ptr %k, align 4
  br label %for.cond71, !llvm.loop !9

for.end94:                                        ; preds = %if.then90, %land.end77
  %90 = load i32, ptr %k, align 4
  %dec95 = add nsw i32 %90, -1
  store i32 %dec95, ptr %k, align 4
  %91 = load i32, ptr %iSrc, align 4
  %92 = load i32, ptr %k, align 4
  %sub96 = sub nsw i32 %91, %92
  store i32 %sub96, ptr %ofst, align 4
  %93 = load i32, ptr %j, align 4
  %94 = load i32, ptr %k, align 4
  %add97 = add nsw i32 %93, %94
  %add98 = add nsw i32 %add97, 1
  store i32 %add98, ptr %cnt, align 4
  %95 = load i32, ptr %i, align 4
  %96 = load i32, ptr %k, align 4
  %sub99 = sub nsw i32 %95, %96
  store i32 %sub99, ptr %litsz, align 4
  %97 = load i32, ptr %i, align 4
  %98 = load i32, ptr %k, align 4
  %sub100 = sub nsw i32 %97, %98
  %call101 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_11(i32 noundef %sub100)
  %99 = load i32, ptr %cnt, align 4
  %call102 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_12(i32 noundef %99)
  %add103 = add nsw i32 %call101, %call102
  %100 = load i32, ptr %ofst, align 4
  %call104 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_13(i32 noundef %100)
  %add105 = add nsw i32 %add103, %call104
  %add106 = add nsw i32 %add105, 3
  store i32 %add106, ptr %sz, align 4
  %101 = load i32, ptr %cnt, align 4
  %102 = load i32, ptr %sz, align 4
  %cmp107 = icmp sge i32 %101, %102
  br i1 %cmp107, label %land.lhs.true, label %if.end113

land.lhs.true:                                    ; preds = %for.end94
  %103 = load i32, ptr %cnt, align 4
  %104 = load i32, ptr %bestCnt, align 4
  %cmp109 = icmp ugt i32 %103, %104
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %land.lhs.true
  %105 = load i32, ptr %cnt, align 4
  store i32 %105, ptr %bestCnt, align 4
  %106 = load i32, ptr %iSrc, align 4
  %107 = load i32, ptr %k, align 4
  %sub112 = sub nsw i32 %106, %107
  store i32 %sub112, ptr %bestOfst, align 4
  %108 = load i32, ptr %litsz, align 4
  store i32 %108, ptr %bestLitsz, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %land.lhs.true, %for.end94
  %109 = load ptr, ptr %collide, align 8
  %110 = load i32, ptr %iBlock, align 4
  %idxprom114 = sext i32 %110 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %109, i64 %idxprom114
  %111 = load i32, ptr %arrayidx115, align 4
  store i32 %111, ptr %iBlock, align 4
  br label %while.cond38, !llvm.loop !10

while.end:                                        ; preds = %land.end
  %112 = load i32, ptr %bestCnt, align 4
  %cmp116 = icmp ugt i32 %112, 0
  br i1 %cmp116, label %if.then118, label %if.end142

if.then118:                                       ; preds = %while.end
  %113 = load i32, ptr %bestLitsz, align 4
  %cmp119 = icmp ugt i32 %113, 0
  br i1 %cmp119, label %if.then121, label %if.end130

if.then121:                                       ; preds = %if.then118
  %114 = load i32, ptr %bestLitsz, align 4
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_14(i32 noundef %114, ptr noundef %zDelta.addr)
  %115 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %115, i32 1
  store ptr %incdec.ptr122, ptr %zDelta.addr, align 8
  store i8 58, ptr %115, align 1
  %116 = load ptr, ptr %zDelta.addr, align 8
  %117 = load ptr, ptr %zOut.addr, align 8
  %118 = load i32, ptr %base, align 4
  %idxprom123 = sext i32 %118 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %117, i64 %idxprom123
  %119 = load i32, ptr %bestLitsz, align 4
  %conv125 = zext i32 %119 to i64
  %120 = load ptr, ptr %zDelta.addr, align 8
  %121 = call i64 @llvm.objectsize.i64.p0(ptr %120, i1 false, i1 true, i1 false)
  %call126 = call ptr @__memcpy_chk(ptr noundef %116, ptr noundef %arrayidx124, i64 noundef %conv125, i64 noundef %121) #6
  %122 = load i32, ptr %bestLitsz, align 4
  %123 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext127 = zext i32 %122 to i64
  %add.ptr128 = getelementptr inbounds i8, ptr %123, i64 %idx.ext127
  store ptr %add.ptr128, ptr %zDelta.addr, align 8
  %124 = load i32, ptr %bestLitsz, align 4
  %125 = load i32, ptr %base, align 4
  %add129 = add i32 %125, %124
  store i32 %add129, ptr %base, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then121, %if.then118
  %126 = load i32, ptr %bestCnt, align 4
  %127 = load i32, ptr %base, align 4
  %add131 = add i32 %127, %126
  store i32 %add131, ptr %base, align 4
  %128 = load i32, ptr %bestCnt, align 4
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_15(i32 noundef %128, ptr noundef %zDelta.addr)
  %129 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr132 = getelementptr inbounds i8, ptr %129, i32 1
  store ptr %incdec.ptr132, ptr %zDelta.addr, align 8
  store i8 64, ptr %129, align 1
  %130 = load i32, ptr %bestOfst, align 4
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_16(i32 noundef %130, ptr noundef %zDelta.addr)
  %131 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %131, i32 1
  store ptr %incdec.ptr133, ptr %zDelta.addr, align 8
  store i8 44, ptr %131, align 1
  %132 = load i32, ptr %bestOfst, align 4
  %133 = load i32, ptr %bestCnt, align 4
  %add134 = add i32 %132, %133
  %sub135 = sub i32 %add134, 1
  %134 = load i32, ptr %lastRead, align 4
  %cmp136 = icmp ugt i32 %sub135, %134
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end130
  %135 = load i32, ptr %bestOfst, align 4
  %136 = load i32, ptr %bestCnt, align 4
  %add139 = add i32 %135, %136
  %sub140 = sub i32 %add139, 1
  store i32 %sub140, ptr %lastRead, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end130
  store i32 0, ptr %bestCnt, align 4
  br label %while.end165

if.end142:                                        ; preds = %while.end
  %137 = load i32, ptr %base, align 4
  %138 = load i32, ptr %i, align 4
  %add143 = add nsw i32 %137, %138
  %add144 = add nsw i32 %add143, 16
  %139 = load i32, ptr %lenOut.addr, align 4
  %cmp145 = icmp uge i32 %add144, %139
  br i1 %cmp145, label %if.then147, label %if.end158

if.then147:                                       ; preds = %if.end142
  %140 = load i32, ptr %lenOut.addr, align 4
  %141 = load i32, ptr %base, align 4
  %sub148 = sub i32 %140, %141
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_17(i32 noundef %sub148, ptr noundef %zDelta.addr)
  %142 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr149 = getelementptr inbounds i8, ptr %142, i32 1
  store ptr %incdec.ptr149, ptr %zDelta.addr, align 8
  store i8 58, ptr %142, align 1
  %143 = load ptr, ptr %zDelta.addr, align 8
  %144 = load ptr, ptr %zOut.addr, align 8
  %145 = load i32, ptr %base, align 4
  %idxprom150 = sext i32 %145 to i64
  %arrayidx151 = getelementptr inbounds i8, ptr %144, i64 %idxprom150
  %146 = load i32, ptr %lenOut.addr, align 4
  %147 = load i32, ptr %base, align 4
  %sub152 = sub i32 %146, %147
  %conv153 = zext i32 %sub152 to i64
  %148 = load ptr, ptr %zDelta.addr, align 8
  %149 = call i64 @llvm.objectsize.i64.p0(ptr %148, i1 false, i1 true, i1 false)
  %call154 = call ptr @__memcpy_chk(ptr noundef %143, ptr noundef %arrayidx151, i64 noundef %conv153, i64 noundef %149) #6
  %150 = load i32, ptr %lenOut.addr, align 4
  %151 = load i32, ptr %base, align 4
  %sub155 = sub i32 %150, %151
  %152 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext156 = zext i32 %sub155 to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %152, i64 %idx.ext156
  store ptr %add.ptr157, ptr %zDelta.addr, align 8
  %153 = load i32, ptr %lenOut.addr, align 4
  store i32 %153, ptr %base, align 4
  br label %while.end165

if.end158:                                        ; preds = %if.end142
  %154 = load ptr, ptr %zOut.addr, align 8
  %155 = load i32, ptr %base, align 4
  %156 = load i32, ptr %i, align 4
  %add159 = add nsw i32 %155, %156
  %add160 = add nsw i32 %add159, 16
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds i8, ptr %154, i64 %idxprom161
  %157 = load i8, ptr %arrayidx162, align 1
  %conv163 = sext i8 %157 to i32
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_18(ptr noundef %h, i32 noundef %conv163)
  %158 = load i32, ptr %i, align 4
  %inc164 = add nsw i32 %158, 1
  store i32 %inc164, ptr %i, align 4
  br label %while.body32

while.end165:                                     ; preds = %if.then147, %if.end141
  br label %while.cond, !llvm.loop !11

while.end166:                                     ; preds = %while.cond
  %159 = load i32, ptr %base, align 4
  %160 = load i32, ptr %lenOut.addr, align 4
  %cmp167 = icmp ult i32 %159, %160
  br i1 %cmp167, label %if.then169, label %if.end180

if.then169:                                       ; preds = %while.end166
  %161 = load i32, ptr %lenOut.addr, align 4
  %162 = load i32, ptr %base, align 4
  %sub170 = sub i32 %161, %162
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_19(i32 noundef %sub170, ptr noundef %zDelta.addr)
  %163 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr171 = getelementptr inbounds i8, ptr %163, i32 1
  store ptr %incdec.ptr171, ptr %zDelta.addr, align 8
  store i8 58, ptr %163, align 1
  %164 = load ptr, ptr %zDelta.addr, align 8
  %165 = load ptr, ptr %zOut.addr, align 8
  %166 = load i32, ptr %base, align 4
  %idxprom172 = sext i32 %166 to i64
  %arrayidx173 = getelementptr inbounds i8, ptr %165, i64 %idxprom172
  %167 = load i32, ptr %lenOut.addr, align 4
  %168 = load i32, ptr %base, align 4
  %sub174 = sub i32 %167, %168
  %conv175 = zext i32 %sub174 to i64
  %169 = load ptr, ptr %zDelta.addr, align 8
  %170 = call i64 @llvm.objectsize.i64.p0(ptr %169, i1 false, i1 true, i1 false)
  %call176 = call ptr @__memcpy_chk(ptr noundef %164, ptr noundef %arrayidx173, i64 noundef %conv175, i64 noundef %170) #6
  %171 = load i32, ptr %lenOut.addr, align 4
  %172 = load i32, ptr %base, align 4
  %sub177 = sub i32 %171, %172
  %173 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext178 = zext i32 %sub177 to i64
  %add.ptr179 = getelementptr inbounds i8, ptr %173, i64 %idx.ext178
  store ptr %add.ptr179, ptr %zDelta.addr, align 8
  br label %if.end180

if.end180:                                        ; preds = %if.then169, %while.end166
  %174 = load ptr, ptr %zOut.addr, align 8
  %175 = load i32, ptr %lenOut.addr, align 4
  %conv181 = zext i32 %175 to i64
  %call182 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_20(ptr noundef %174, i64 noundef %conv181)
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_21(i32 noundef %call182, ptr noundef %zDelta.addr)
  %176 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr183 = getelementptr inbounds i8, ptr %176, i32 1
  store ptr %incdec.ptr183, ptr %zDelta.addr, align 8
  store i8 59, ptr %176, align 1
  %177 = load ptr, ptr %collide, align 8
  call void @sqlite3_free(ptr noundef %177)
  %178 = load ptr, ptr %zDelta.addr, align 8
  %179 = load ptr, ptr %zOrigDelta, align 8
  %sub.ptr.lhs.cast184 = ptrtoint ptr %178 to i64
  %sub.ptr.rhs.cast185 = ptrtoint ptr %179 to i64
  %sub.ptr.sub186 = sub i64 %sub.ptr.lhs.cast184, %sub.ptr.rhs.cast185
  %conv187 = trunc i64 %sub.ptr.sub186 to i32
  store i32 %conv187, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end180, %if.then
  %180 = load i32, ptr %retval, align 4
  ret i32 %180
}

declare void @sqlite3_free(ptr noundef) #1

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #1

declare void @sqlite3_result_blob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @putInt(i32 noundef %v, ptr noundef %pz) #0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @putInt.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @checksum(ptr noundef %zIn, i64 noundef %N) #0 {
entry:
  %zIn.addr = alloca ptr, align 8
  %N.addr = alloca i64, align 8
  %z = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %sum = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  store ptr %zIn, ptr %zIn.addr, align 8
  store i64 %N, ptr %N.addr, align 8
  %0 = load ptr, ptr %zIn.addr, align 8
  store ptr %0, ptr %z, align 8
  %1 = load ptr, ptr %zIn.addr, align 8
  %2 = load i64, ptr %N.addr, align 8
  %and = and i64 %2, -4
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %and
  store ptr %arrayidx, ptr %zEnd, align 8
  store i32 0, ptr %sum, align 4
  %3 = load ptr, ptr %z, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %rem = srem i64 %sub.ptr.sub, 4
  %cmp = icmp eq i64 %rem, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.checksum, ptr noundef @.str.4, i32 noundef 222, ptr noundef @.str.7) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load i8, ptr @checksum.byteOrderTest, align 4
  %conv1 = sext i8 %5 to i32
  %cmp2 = icmp eq i32 0, %conv1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load ptr, ptr %z, align 8
  %7 = load ptr, ptr %zEnd, align 8
  %cmp4 = icmp ult ptr %6, %7
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %sum, align 4
  %add = add i32 %10, %9
  store i32 %add, ptr %sum, align 4
  %11 = load ptr, ptr %z, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 4
  store ptr %add.ptr, ptr %z, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, ptr %sum0, align 4
  store i32 0, ptr %sum1, align 4
  store i32 0, ptr %sum2, align 4
  br label %while.cond6

while.cond6:                                      ; preds = %while.body9, %if.else
  %12 = load i64, ptr %N.addr, align 8
  %cmp7 = icmp uge i64 %12, 16
  br i1 %cmp7, label %while.body9, label %while.end59

while.body9:                                      ; preds = %while.cond6
  %13 = load ptr, ptr %z, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %15 = load ptr, ptr %z, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 4
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %add14 = add i32 %conv11, %conv13
  %17 = load ptr, ptr %z, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %17, i64 8
  %18 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %18 to i32
  %add17 = add i32 %add14, %conv16
  %19 = load ptr, ptr %z, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %19, i64 12
  %20 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %20 to i32
  %add20 = add i32 %add17, %conv19
  %21 = load i32, ptr %sum0, align 4
  %add21 = add i32 %21, %add20
  store i32 %add21, ptr %sum0, align 4
  %22 = load ptr, ptr %z, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %23 to i32
  %24 = load ptr, ptr %z, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %24, i64 5
  %25 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %25 to i32
  %add26 = add i32 %conv23, %conv25
  %26 = load ptr, ptr %z, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %26, i64 9
  %27 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %27 to i32
  %add29 = add i32 %add26, %conv28
  %28 = load ptr, ptr %z, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %28, i64 13
  %29 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %29 to i32
  %add32 = add i32 %add29, %conv31
  %30 = load i32, ptr %sum1, align 4
  %add33 = add i32 %30, %add32
  store i32 %add33, ptr %sum1, align 4
  %31 = load ptr, ptr %z, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %32 to i32
  %33 = load ptr, ptr %z, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %33, i64 6
  %34 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %34 to i32
  %add38 = add i32 %conv35, %conv37
  %35 = load ptr, ptr %z, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %35, i64 10
  %36 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %36 to i32
  %add41 = add i32 %add38, %conv40
  %37 = load ptr, ptr %z, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %37, i64 14
  %38 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %38 to i32
  %add44 = add i32 %add41, %conv43
  %39 = load i32, ptr %sum2, align 4
  %add45 = add i32 %39, %add44
  store i32 %add45, ptr %sum2, align 4
  %40 = load ptr, ptr %z, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %40, i64 3
  %41 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %41 to i32
  %42 = load ptr, ptr %z, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %42, i64 7
  %43 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %add50 = add i32 %conv47, %conv49
  %44 = load ptr, ptr %z, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %44, i64 11
  %45 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %45 to i32
  %add53 = add i32 %add50, %conv52
  %46 = load ptr, ptr %z, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %46, i64 15
  %47 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %47 to i32
  %add56 = add i32 %add53, %conv55
  %48 = load i32, ptr %sum, align 4
  %add57 = add i32 %48, %add56
  store i32 %add57, ptr %sum, align 4
  %49 = load ptr, ptr %z, align 8
  %add.ptr58 = getelementptr inbounds i8, ptr %49, i64 16
  store ptr %add.ptr58, ptr %z, align 8
  %50 = load i64, ptr %N.addr, align 8
  %sub = sub i64 %50, 16
  store i64 %sub, ptr %N.addr, align 8
  br label %while.cond6, !llvm.loop !15

while.end59:                                      ; preds = %while.cond6
  br label %while.cond60

while.cond60:                                     ; preds = %while.body63, %while.end59
  %51 = load i64, ptr %N.addr, align 8
  %cmp61 = icmp uge i64 %51, 4
  br i1 %cmp61, label %while.body63, label %while.end78

while.body63:                                     ; preds = %while.cond60
  %52 = load ptr, ptr %z, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %52, i64 0
  %53 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %53 to i32
  %54 = load i32, ptr %sum0, align 4
  %add66 = add i32 %54, %conv65
  store i32 %add66, ptr %sum0, align 4
  %55 = load ptr, ptr %z, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %55, i64 1
  %56 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %56 to i32
  %57 = load i32, ptr %sum1, align 4
  %add69 = add i32 %57, %conv68
  store i32 %add69, ptr %sum1, align 4
  %58 = load ptr, ptr %z, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %59 to i32
  %60 = load i32, ptr %sum2, align 4
  %add72 = add i32 %60, %conv71
  store i32 %add72, ptr %sum2, align 4
  %61 = load ptr, ptr %z, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %61, i64 3
  %62 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %62 to i32
  %63 = load i32, ptr %sum, align 4
  %add75 = add i32 %63, %conv74
  store i32 %add75, ptr %sum, align 4
  %64 = load ptr, ptr %z, align 8
  %add.ptr76 = getelementptr inbounds i8, ptr %64, i64 4
  store ptr %add.ptr76, ptr %z, align 8
  %65 = load i64, ptr %N.addr, align 8
  %sub77 = sub i64 %65, 4
  store i64 %sub77, ptr %N.addr, align 8
  br label %while.cond60, !llvm.loop !16

while.end78:                                      ; preds = %while.cond60
  %66 = load i32, ptr %sum2, align 4
  %shl = shl i32 %66, 8
  %67 = load i32, ptr %sum1, align 4
  %shl79 = shl i32 %67, 16
  %add80 = add i32 %shl, %shl79
  %68 = load i32, ptr %sum0, align 4
  %shl81 = shl i32 %68, 24
  %add82 = add i32 %add80, %shl81
  %69 = load i32, ptr %sum, align 4
  %add83 = add i32 %69, %add82
  store i32 %add83, ptr %sum, align 4
  br label %if.end

if.end:                                           ; preds = %while.end78, %while.end
  %70 = load i64, ptr %N.addr, align 8
  %and84 = and i64 %70, 3
  switch i64 %and84, label %sw.default [
    i64 3, label %sw.bb
    i64 2, label %sw.bb89
    i64 1, label %sw.bb94
  ]

sw.bb:                                            ; preds = %if.end
  %71 = load ptr, ptr %z, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %71, i64 2
  %72 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %72 to i32
  %shl87 = shl i32 %conv86, 8
  %73 = load i32, ptr %sum, align 4
  %add88 = add i32 %73, %shl87
  store i32 %add88, ptr %sum, align 4
  br label %sw.bb89

sw.bb89:                                          ; preds = %if.end, %sw.bb
  %74 = load ptr, ptr %z, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %74, i64 1
  %75 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %75 to i32
  %shl92 = shl i32 %conv91, 16
  %76 = load i32, ptr %sum, align 4
  %add93 = add i32 %76, %shl92
  store i32 %add93, ptr %sum, align 4
  br label %sw.bb94

sw.bb94:                                          ; preds = %if.end, %sw.bb89
  %77 = load ptr, ptr %z, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %77, i64 0
  %78 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %78 to i32
  %shl97 = shl i32 %conv96, 24
  %79 = load i32, ptr %sum, align 4
  %add98 = add i32 %79, %shl97
  store i32 %add98, ptr %sum, align 4
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb94
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %80 = load i32, ptr %sum, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @hash_once(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %a = alloca i16, align 2
  %b = alloca i16, align 2
  %i = alloca i16, align 2
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i16
  store i16 %conv, ptr %b, align 2
  store i16 %conv, ptr %a, align 2
  store i16 1, ptr %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i16, ptr %i, align 2
  %conv1 = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %z.addr, align 8
  %4 = load i16, ptr %i, align 2
  %idxprom = zext i16 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %6 = load i16, ptr %a, align 2
  %conv5 = zext i16 %6 to i32
  %add = add nsw i32 %conv5, %conv4
  %conv6 = trunc i32 %add to i16
  store i16 %conv6, ptr %a, align 2
  %7 = load i16, ptr %a, align 2
  %conv7 = zext i16 %7 to i32
  %8 = load i16, ptr %b, align 2
  %conv8 = zext i16 %8 to i32
  %add9 = add nsw i32 %conv8, %conv7
  %conv10 = trunc i32 %add9 to i16
  store i16 %conv10, ptr %b, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i16, ptr %i, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr %i, align 2
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %10 = load i16, ptr %a, align 2
  %conv11 = zext i16 %10 to i32
  %11 = load i16, ptr %b, align 2
  %conv12 = zext i16 %11 to i32
  %shl = shl i32 %conv12, 16
  %or = or i32 %conv11, %shl
  ret i32 %or
}

; Function Attrs: nounwind ssp uwtable
define internal void @hash_init(ptr noundef %pHash, ptr noundef %z) #0 {
entry:
  %pHash.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %a = alloca i16, align 2
  %b = alloca i16, align 2
  %i = alloca i16, align 2
  store ptr %pHash, ptr %pHash.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i16
  store i16 %conv, ptr %b, align 2
  store i16 %conv, ptr %a, align 2
  store i16 1, ptr %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i16, ptr %i, align 2
  %conv1 = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %z.addr, align 8
  %4 = load i16, ptr %i, align 2
  %idxprom = zext i16 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %6 = load i16, ptr %a, align 2
  %conv5 = zext i16 %6 to i32
  %add = add nsw i32 %conv5, %conv4
  %conv6 = trunc i32 %add to i16
  store i16 %conv6, ptr %a, align 2
  %7 = load i16, ptr %a, align 2
  %conv7 = zext i16 %7 to i32
  %8 = load i16, ptr %b, align 2
  %conv8 = zext i16 %8 to i32
  %add9 = add nsw i32 %conv8, %conv7
  %conv10 = trunc i32 %add9 to i16
  store i16 %conv10, ptr %b, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i16, ptr %i, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr %i, align 2
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %pHash.addr, align 8
  %z11 = getelementptr inbounds %struct.hash, ptr %10, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i8], ptr %z11, i64 0, i64 0
  %11 = load ptr, ptr %z.addr, align 8
  %12 = load ptr, ptr %pHash.addr, align 8
  %z12 = getelementptr inbounds %struct.hash, ptr %12, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [16 x i8], ptr %z12, i64 0, i64 0
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay13, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %arraydecay, ptr noundef %11, i64 noundef 16, i64 noundef %13) #6
  %14 = load i16, ptr %a, align 2
  %conv14 = zext i16 %14 to i32
  %and = and i32 %conv14, 65535
  %conv15 = trunc i32 %and to i16
  %15 = load ptr, ptr %pHash.addr, align 8
  %a16 = getelementptr inbounds %struct.hash, ptr %15, i32 0, i32 0
  store i16 %conv15, ptr %a16, align 2
  %16 = load i16, ptr %b, align 2
  %conv17 = zext i16 %16 to i32
  %and18 = and i32 %conv17, 65535
  %conv19 = trunc i32 %and18 to i16
  %17 = load ptr, ptr %pHash.addr, align 8
  %b20 = getelementptr inbounds %struct.hash, ptr %17, i32 0, i32 1
  store i16 %conv19, ptr %b20, align 2
  %18 = load ptr, ptr %pHash.addr, align 8
  %i21 = getelementptr inbounds %struct.hash, ptr %18, i32 0, i32 2
  store i16 0, ptr %i21, align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @hash_32bit(ptr noundef %pHash) #0 {
entry:
  %pHash.addr = alloca ptr, align 8
  store ptr %pHash, ptr %pHash.addr, align 8
  %0 = load ptr, ptr %pHash.addr, align 8
  %a = getelementptr inbounds %struct.hash, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %a, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 65535
  %2 = load ptr, ptr %pHash.addr, align 8
  %b = getelementptr inbounds %struct.hash, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %b, align 2
  %conv1 = zext i16 %3 to i32
  %and2 = and i32 %conv1, 65535
  %shl = shl i32 %and2, 16
  %or = or i32 %and, %shl
  ret i32 %or
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @digit_count(i32 noundef %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  store i32 1, ptr %i, align 4
  store i32 64, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %v.addr, align 4
  %1 = load i32, ptr %x, align 4
  %cmp = icmp uge i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  %3 = load i32, ptr %x, align 4
  %shl = shl i32 %3, 6
  store i32 %shl, ptr %x, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define internal void @hash_next(ptr noundef %pHash, i32 noundef %c) #0 {
entry:
  %pHash.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %old = alloca i16, align 2
  store ptr %pHash, ptr %pHash.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load ptr, ptr %pHash.addr, align 8
  %z = getelementptr inbounds %struct.hash, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pHash.addr, align 8
  %i = getelementptr inbounds %struct.hash, ptr %1, i32 0, i32 2
  %2 = load i16, ptr %i, align 2
  %idxprom = zext i16 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i16
  store i16 %conv, ptr %old, align 2
  %4 = load i32, ptr %c.addr, align 4
  %conv1 = trunc i32 %4 to i8
  %5 = load ptr, ptr %pHash.addr, align 8
  %z2 = getelementptr inbounds %struct.hash, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %pHash.addr, align 8
  %i3 = getelementptr inbounds %struct.hash, ptr %6, i32 0, i32 2
  %7 = load i16, ptr %i3, align 2
  %idxprom4 = zext i16 %7 to i64
  %arrayidx5 = getelementptr inbounds [16 x i8], ptr %z2, i64 0, i64 %idxprom4
  store i8 %conv1, ptr %arrayidx5, align 1
  %8 = load ptr, ptr %pHash.addr, align 8
  %i6 = getelementptr inbounds %struct.hash, ptr %8, i32 0, i32 2
  %9 = load i16, ptr %i6, align 2
  %conv7 = zext i16 %9 to i32
  %add = add nsw i32 %conv7, 1
  %and = and i32 %add, 15
  %conv8 = trunc i32 %and to i16
  %10 = load ptr, ptr %pHash.addr, align 8
  %i9 = getelementptr inbounds %struct.hash, ptr %10, i32 0, i32 2
  store i16 %conv8, ptr %i9, align 2
  %11 = load ptr, ptr %pHash.addr, align 8
  %a = getelementptr inbounds %struct.hash, ptr %11, i32 0, i32 0
  %12 = load i16, ptr %a, align 2
  %conv10 = zext i16 %12 to i32
  %13 = load i16, ptr %old, align 2
  %conv11 = zext i16 %13 to i32
  %sub = sub nsw i32 %conv10, %conv11
  %14 = load i32, ptr %c.addr, align 4
  %add12 = add nsw i32 %sub, %14
  %conv13 = trunc i32 %add12 to i16
  %15 = load ptr, ptr %pHash.addr, align 8
  %a14 = getelementptr inbounds %struct.hash, ptr %15, i32 0, i32 0
  store i16 %conv13, ptr %a14, align 2
  %16 = load ptr, ptr %pHash.addr, align 8
  %b = getelementptr inbounds %struct.hash, ptr %16, i32 0, i32 1
  %17 = load i16, ptr %b, align 2
  %conv15 = zext i16 %17 to i32
  %18 = load i16, ptr %old, align 2
  %conv16 = zext i16 %18 to i32
  %mul = mul nsw i32 16, %conv16
  %sub17 = sub nsw i32 %conv15, %mul
  %19 = load ptr, ptr %pHash.addr, align 8
  %a18 = getelementptr inbounds %struct.hash, ptr %19, i32 0, i32 0
  %20 = load i16, ptr %a18, align 2
  %conv19 = zext i16 %20 to i32
  %add20 = add nsw i32 %sub17, %conv19
  %conv21 = trunc i32 %add20 to i16
  %21 = load ptr, ptr %pHash.addr, align 8
  %b22 = getelementptr inbounds %struct.hash, ptr %21, i32 0, i32 1
  store i16 %conv21, ptr %b22, align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @delta_output_size(ptr noundef %zDelta, i32 noundef %lenDelta) #0 {
entry:
  %retval = alloca i32, align 4
  %zDelta.addr = alloca ptr, align 8
  %lenDelta.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store ptr %zDelta, ptr %zDelta.addr, align 8
  store i32 %lenDelta, ptr %lenDelta.addr, align 4
  %call = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_22(ptr noundef %zDelta.addr, ptr noundef %lenDelta.addr)
  store i32 %call, ptr %size, align 4
  %0 = load ptr, ptr %zDelta.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %size, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @delta_apply(ptr noundef %zSrc, i32 noundef %lenSrc, ptr noundef %zDelta, i32 noundef %lenDelta, ptr noundef %zOut) #0 {
entry:
  %retval = alloca i32, align 4
  %zSrc.addr = alloca ptr, align 8
  %lenSrc.addr = alloca i32, align 4
  %zDelta.addr = alloca ptr, align 8
  %lenDelta.addr = alloca i32, align 4
  %zOut.addr = alloca ptr, align 8
  %limit = alloca i64, align 8
  %total = alloca i64, align 8
  %cnt = alloca i32, align 4
  %ofst = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %lenSrc, ptr %lenSrc.addr, align 4
  store ptr %zDelta, ptr %zDelta.addr, align 8
  store i32 %lenDelta, ptr %lenDelta.addr, align 4
  store ptr %zOut, ptr %zOut.addr, align 8
  store i64 0, ptr %total, align 8
  %call = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_23(ptr noundef %zDelta.addr, ptr noundef %lenDelta.addr)
  %conv = zext i32 %call to i64
  store i64 %conv, ptr %limit, align 8
  %0 = load ptr, ptr %zDelta.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %zDelta.addr, align 8
  %3 = load i32, ptr %lenDelta.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %lenDelta.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load ptr, ptr %zDelta.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %lenDelta.addr, align 4
  %cmp4 = icmp sgt i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call6 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_24(ptr noundef %zDelta.addr, ptr noundef %lenDelta.addr)
  store i32 %call6, ptr %cnt, align 4
  %8 = load ptr, ptr %zDelta.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx, align 1
  %conv7 = sext i8 %9 to i32
  switch i32 %conv7, label %sw.default [
    i32 64, label %sw.bb
    i32 58, label %sw.bb37
    i32 59, label %sw.bb56
  ]

sw.bb:                                            ; preds = %while.body
  %10 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr8, ptr %zDelta.addr, align 8
  %11 = load i32, ptr %lenDelta.addr, align 4
  %dec9 = add nsw i32 %11, -1
  store i32 %dec9, ptr %lenDelta.addr, align 4
  %call10 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_25(ptr noundef %zDelta.addr, ptr noundef %lenDelta.addr)
  store i32 %call10, ptr %ofst, align 4
  %12 = load i32, ptr %lenDelta.addr, align 4
  %cmp11 = icmp sgt i32 %12, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %sw.bb
  %13 = load ptr, ptr %zDelta.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp ne i32 %conv14, 44
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %land.lhs.true, %sw.bb
  %15 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr19, ptr %zDelta.addr, align 8
  %16 = load i32, ptr %lenDelta.addr, align 4
  %dec20 = add nsw i32 %16, -1
  store i32 %dec20, ptr %lenDelta.addr, align 4
  %17 = load i32, ptr %cnt, align 4
  %conv21 = zext i32 %17 to i64
  %18 = load i64, ptr %total, align 8
  %add = add i64 %18, %conv21
  store i64 %add, ptr %total, align 8
  %19 = load i64, ptr %total, align 8
  %20 = load i64, ptr %limit, align 8
  %cmp22 = icmp ugt i64 %19, %20
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  store i32 -1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end18
  %21 = load i32, ptr %ofst, align 4
  %conv26 = zext i32 %21 to i64
  %22 = load i32, ptr %cnt, align 4
  %conv27 = zext i32 %22 to i64
  %add28 = add i64 %conv26, %conv27
  %23 = load i32, ptr %lenSrc.addr, align 4
  %conv29 = sext i32 %23 to i64
  %cmp30 = icmp ugt i64 %add28, %conv29
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end25
  store i32 -1, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end25
  %24 = load ptr, ptr %zOut.addr, align 8
  %25 = load ptr, ptr %zSrc.addr, align 8
  %26 = load i32, ptr %ofst, align 4
  %idxprom = zext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %25, i64 %idxprom
  %27 = load i32, ptr %cnt, align 4
  %conv35 = zext i32 %27 to i64
  %28 = load ptr, ptr %zOut.addr, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call36 = call ptr @__memcpy_chk(ptr noundef %24, ptr noundef %arrayidx34, i64 noundef %conv35, i64 noundef %29) #6
  %30 = load i32, ptr %cnt, align 4
  %31 = load ptr, ptr %zOut.addr, align 8
  %idx.ext = zext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %idx.ext
  store ptr %add.ptr, ptr %zOut.addr, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %while.body
  %32 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr38, ptr %zDelta.addr, align 8
  %33 = load i32, ptr %lenDelta.addr, align 4
  %dec39 = add nsw i32 %33, -1
  store i32 %dec39, ptr %lenDelta.addr, align 4
  %34 = load i32, ptr %cnt, align 4
  %conv40 = zext i32 %34 to i64
  %35 = load i64, ptr %total, align 8
  %add41 = add i64 %35, %conv40
  store i64 %add41, ptr %total, align 8
  %36 = load i64, ptr %total, align 8
  %37 = load i64, ptr %limit, align 8
  %cmp42 = icmp ugt i64 %36, %37
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %sw.bb37
  store i32 -1, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %sw.bb37
  %38 = load i32, ptr %cnt, align 4
  %39 = load i32, ptr %lenDelta.addr, align 4
  %cmp46 = icmp ugt i32 %38, %39
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  store i32 -1, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end45
  %40 = load ptr, ptr %zOut.addr, align 8
  %41 = load ptr, ptr %zDelta.addr, align 8
  %42 = load i32, ptr %cnt, align 4
  %conv50 = zext i32 %42 to i64
  %43 = load ptr, ptr %zOut.addr, align 8
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %43, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %40, ptr noundef %41, i64 noundef %conv50, i64 noundef %44) #6
  %45 = load i32, ptr %cnt, align 4
  %46 = load ptr, ptr %zOut.addr, align 8
  %idx.ext52 = zext i32 %45 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %46, i64 %idx.ext52
  store ptr %add.ptr53, ptr %zOut.addr, align 8
  %47 = load i32, ptr %cnt, align 4
  %48 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext54 = zext i32 %47 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %48, i64 %idx.ext54
  store ptr %add.ptr55, ptr %zDelta.addr, align 8
  %49 = load i32, ptr %cnt, align 4
  %50 = load i32, ptr %lenDelta.addr, align 4
  %sub = sub i32 %50, %49
  store i32 %sub, ptr %lenDelta.addr, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %while.body
  %51 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr57, ptr %zDelta.addr, align 8
  %52 = load i32, ptr %lenDelta.addr, align 4
  %dec58 = add nsw i32 %52, -1
  store i32 %dec58, ptr %lenDelta.addr, align 4
  %53 = load ptr, ptr %zOut.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %53, i64 0
  store i8 0, ptr %arrayidx59, align 1
  %54 = load i64, ptr %total, align 8
  %55 = load i64, ptr %limit, align 8
  %cmp60 = icmp ne i64 %54, %55
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %sw.bb56
  store i32 -1, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %sw.bb56
  %56 = load i64, ptr %total, align 8
  %conv64 = trunc i64 %56 to i32
  store i32 %conv64, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end49, %if.end33
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %land.end
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %sw.default, %if.end63, %if.then62, %if.then48, %if.then44, %if.then32, %if.then24, %if.then17, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaGetInt(ptr noundef %pz, ptr noundef %pLen) #0 {
entry:
  %pz.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  %z = alloca ptr, align 8
  %zStart = alloca ptr, align 8
  store ptr %pz, ptr %pz.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  store i32 0, ptr %v, align 4
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  store ptr %2, ptr %zStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 127, %conv
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @deltaGetInt.zValue, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  store i32 %conv1, ptr %c, align 4
  %cmp = icmp sge i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %v, align 4
  %shl = shl i32 %6, 6
  %7 = load i32, ptr %c, align 4
  %add = add i32 %shl, %7
  store i32 %add, ptr %v, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %z, align 8
  %9 = load ptr, ptr %z, align 8
  %10 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load ptr, ptr %pLen.addr, align 8
  %12 = load i32, ptr %11, align 4
  %conv4 = sext i32 %12 to i64
  %sub = sub nsw i64 %conv4, %sub.ptr.sub
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %11, align 4
  %13 = load ptr, ptr %z, align 8
  %14 = load ptr, ptr %pz.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load i32, ptr %v, align 4
  ret i32 %15
}

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
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
  %call = call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef @.str.10)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = call ptr @sqlite3_malloc64(i64 noundef 24)
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
  %call4 = call ptr @__memset_chk(ptr noundef %5, i32 noundef 0, i64 noundef 24, i64 noundef %7) #6
  %8 = load ptr, ptr %db.addr, align 8
  %call5 = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %8, i32 noundef 2)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %9 = load i32, ptr %rc, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %retval = alloca i32, align 4
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %nConstraint, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %aConstraint, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %4, i64 %idxprom
  %iColumn = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %arrayidx, i32 0, i32 0
  %6 = load i32, ptr %iColumn, align 4
  %cmp1 = icmp ne i32 %6, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint2 = getelementptr inbounds %struct.sqlite3_index_info, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %aConstraint2, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %8, i64 %idxprom3
  %usable = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %arrayidx4, i32 0, i32 2
  %10 = load i8, ptr %usable, align 1
  %conv = zext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint9 = getelementptr inbounds %struct.sqlite3_index_info, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %aConstraint9, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %12, i64 %idxprom10
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %arrayidx11, i32 0, i32 1
  %14 = load i8, ptr %op, align 4
  %conv12 = zext i8 %14 to i32
  %cmp13 = icmp ne i32 %conv12, 2
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end8
  br label %for.inc

if.end16:                                         ; preds = %if.end8
  %15 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %aConstraintUsage, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %16, i64 %idxprom17
  %argvIndex = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx18, i32 0, i32 0
  store i32 1, ptr %argvIndex, align 4
  %18 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage19 = getelementptr inbounds %struct.sqlite3_index_info, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %aConstraintUsage19, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %19, i64 %idxprom20
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx21, i32 0, i32 1
  store i8 1, ptr %omit, align 4
  %21 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %21, i32 0, i32 9
  store double 1.000000e+00, ptr %estimatedCost, align 8
  %22 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows = getelementptr inbounds %struct.sqlite3_index_info, ptr %22, i32 0, i32 10
  store i64 10, ptr %estimatedRows, align 8
  %23 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %23, i32 0, i32 5
  store i32 1, ptr %idxNum, align 8
  store i32 0, ptr %retval, align 4
  br label %return

for.inc:                                          ; preds = %if.then15, %if.then7, %if.then
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum22 = getelementptr inbounds %struct.sqlite3_index_info, ptr %25, i32 0, i32 5
  store i32 0, ptr %idxNum22, align 8
  %26 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost23 = getelementptr inbounds %struct.sqlite3_index_info, ptr %26, i32 0, i32 9
  store double 0x41DFFFFFFFC00000, ptr %estimatedCost23, align 8
  %27 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows24 = getelementptr inbounds %struct.sqlite3_index_info, ptr %27, i32 0, i32 10
  store i64 2147483647, ptr %estimatedRows24, align 8
  store i32 19, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end16
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabOpen(ptr noundef %p, ptr noundef %ppCursor) #0 {
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
  %call1 = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 56, i64 noundef %3) #6
  %4 = load ptr, ptr %pCur, align 8
  %base = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base, ptr %5, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %aDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %aDelta, align 8
  call void @sqlite3_free(ptr noundef %2)
  %3 = load ptr, ptr %pCur, align 8
  call void @sqlite3_free(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %a = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store i32 0, ptr %i, align 4
  %1 = load ptr, ptr %pCur, align 8
  %eOp = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %1, i32 0, i32 5
  store i32 4, ptr %eOp, align 8
  %2 = load i32, ptr %idxNum.addr, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_bytes(ptr noundef %4)
  %conv = sext i32 %call to i64
  %5 = load ptr, ptr %pCur, align 8
  %nDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %5, i32 0, i32 4
  store i64 %conv, ptr %nDelta, align 8
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @sqlite3_value_blob(ptr noundef %7)
  store ptr %call2, ptr %a, align 8
  %8 = load ptr, ptr %pCur, align 8
  %nDelta3 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %8, i32 0, i32 4
  %9 = load i64, ptr %nDelta3, align 8
  %cmp4 = icmp eq i64 %9, 0
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %a, align 8
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %pCur, align 8
  %nDelta10 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %nDelta10, align 8
  %add = add nsw i64 %12, 1
  %call11 = call ptr @sqlite3_malloc64(i64 noundef %add)
  %13 = load ptr, ptr %pCur, align 8
  %aDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %13, i32 0, i32 1
  store ptr %call11, ptr %aDelta, align 8
  %14 = load ptr, ptr %pCur, align 8
  %aDelta12 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %aDelta12, align 8
  %cmp13 = icmp eq ptr %15, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  %16 = load ptr, ptr %pCur, align 8
  %nDelta16 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %16, i32 0, i32 4
  store i64 0, ptr %nDelta16, align 8
  store i32 7, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end9
  %17 = load ptr, ptr %pCur, align 8
  %aDelta18 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %aDelta18, align 8
  %19 = load ptr, ptr %a, align 8
  %20 = load ptr, ptr %pCur, align 8
  %nDelta19 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %20, i32 0, i32 4
  %21 = load i64, ptr %nDelta19, align 8
  %22 = load ptr, ptr %pCur, align 8
  %aDelta20 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %aDelta20, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %23, i1 false, i1 true, i1 false)
  %call21 = call ptr @__memcpy_chk(ptr noundef %18, ptr noundef %19, i64 noundef %21, i64 noundef %24) #6
  %25 = load ptr, ptr %pCur, align 8
  %aDelta22 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %aDelta22, align 8
  %27 = load ptr, ptr %pCur, align 8
  %nDelta23 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %27, i32 0, i32 4
  %28 = load i64, ptr %nDelta23, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 0, ptr %arrayidx24, align 1
  %29 = load ptr, ptr %pCur, align 8
  %aDelta25 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %aDelta25, align 8
  store ptr %30, ptr %a, align 8
  %31 = load ptr, ptr %pCur, align 8
  %eOp26 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %31, i32 0, i32 5
  store i32 0, ptr %eOp26, align 8
  %call27 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_26(ptr noundef %a, ptr noundef %i)
  %32 = load ptr, ptr %pCur, align 8
  %a1 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %32, i32 0, i32 6
  store i32 %call27, ptr %a1, align 4
  %33 = load ptr, ptr %a, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx28, align 1
  %conv29 = sext i8 %34 to i32
  %cmp30 = icmp ne i32 %conv29, 10
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end17
  %35 = load ptr, ptr %pCur, align 8
  %eOp33 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %35, i32 0, i32 5
  store i32 4, ptr %eOp33, align 8
  %36 = load ptr, ptr %pCur, align 8
  %a2 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %36, i32 0, i32 7
  store i32 0, ptr %a2, align 8
  %37 = load ptr, ptr %pCur, align 8
  %a134 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %37, i32 0, i32 6
  store i32 0, ptr %a134, align 4
  %38 = load ptr, ptr %pCur, align 8
  %nDelta35 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %38, i32 0, i32 4
  %39 = load i64, ptr %nDelta35, align 8
  %40 = load ptr, ptr %pCur, align 8
  %iNext = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %40, i32 0, i32 3
  store i64 %39, ptr %iNext, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end17
  %41 = load ptr, ptr %a, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %a, align 8
  %42 = load ptr, ptr %a, align 8
  %43 = load ptr, ptr %pCur, align 8
  %aDelta37 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %aDelta37, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %42 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %45 = load ptr, ptr %pCur, align 8
  %iNext38 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %45, i32 0, i32 3
  store i64 %sub.ptr.sub, ptr %iNext38, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then32, %if.then15, %if.then8, %if.then
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabNext(ptr noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %z = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store i32 0, ptr %i, align 4
  %1 = load ptr, ptr %pCur, align 8
  %iNext = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %iNext, align 8
  %3 = load ptr, ptr %pCur, align 8
  %iCursor = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %3, i32 0, i32 2
  store i64 %2, ptr %iCursor, align 8
  %4 = load ptr, ptr %pCur, align 8
  %iCursor1 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %iCursor1, align 8
  %6 = load ptr, ptr %pCur, align 8
  %nDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %6, i32 0, i32 4
  %7 = load i64, ptr %nDelta, align 8
  %cmp = icmp sge i64 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pCur, align 8
  %eOp = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %8, i32 0, i32 5
  store i32 4, ptr %eOp, align 8
  %9 = load ptr, ptr %pCur, align 8
  %nDelta2 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %9, i32 0, i32 4
  %10 = load i64, ptr %nDelta2, align 8
  %11 = load ptr, ptr %pCur, align 8
  %iNext3 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %11, i32 0, i32 3
  store i64 %10, ptr %iNext3, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %pCur, align 8
  %aDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %aDelta, align 8
  %14 = load ptr, ptr %pCur, align 8
  %iCursor4 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %iCursor4, align 8
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %15
  store ptr %add.ptr, ptr %z, align 8
  %call = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_27(ptr noundef %z, ptr noundef %i)
  %16 = load ptr, ptr %pCur, align 8
  %a1 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %16, i32 0, i32 6
  store i32 %call, ptr %a1, align 4
  %17 = load ptr, ptr %z, align 8
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %18 to i32
  switch i32 %conv, label %sw.default [
    i32 64, label %sw.bb
    i32 58, label %sw.bb19
    i32 59, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end
  %19 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %20 = load ptr, ptr %pCur, align 8
  %iNext5 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %20, i32 0, i32 3
  %21 = load i64, ptr %iNext5, align 8
  %22 = load ptr, ptr %pCur, align 8
  %nDelta6 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %nDelta6, align 8
  %cmp7 = icmp sge i64 %21, %23
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %sw.bb
  %24 = load ptr, ptr %pCur, align 8
  %eOp10 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %24, i32 0, i32 5
  store i32 4, ptr %eOp10, align 8
  %25 = load ptr, ptr %pCur, align 8
  %nDelta11 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %25, i32 0, i32 4
  %26 = load i64, ptr %nDelta11, align 8
  %27 = load ptr, ptr %pCur, align 8
  %iNext12 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %27, i32 0, i32 3
  store i64 %26, ptr %iNext12, align 8
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb
  %call14 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_28(ptr noundef %z, ptr noundef %i)
  %28 = load ptr, ptr %pCur, align 8
  %a2 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %28, i32 0, i32 7
  store i32 %call14, ptr %a2, align 8
  %29 = load ptr, ptr %pCur, align 8
  %eOp15 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %29, i32 0, i32 5
  store i32 1, ptr %eOp15, align 8
  %30 = load ptr, ptr %z, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load ptr, ptr %pCur, align 8
  %aDelta17 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %aDelta17, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %33 = load ptr, ptr %pCur, align 8
  %iNext18 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %33, i32 0, i32 3
  store i64 %sub.ptr.sub, ptr %iNext18, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %34 = load ptr, ptr %z, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr20, ptr %z, align 8
  %35 = load ptr, ptr %z, align 8
  %36 = load ptr, ptr %pCur, align 8
  %aDelta21 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %aDelta21, align 8
  %sub.ptr.lhs.cast22 = ptrtoint ptr %35 to i64
  %sub.ptr.rhs.cast23 = ptrtoint ptr %37 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %conv25 = trunc i64 %sub.ptr.sub24 to i32
  %38 = load ptr, ptr %pCur, align 8
  %a226 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %38, i32 0, i32 7
  store i32 %conv25, ptr %a226, align 8
  %39 = load ptr, ptr %pCur, align 8
  %eOp27 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %39, i32 0, i32 5
  store i32 2, ptr %eOp27, align 8
  %40 = load ptr, ptr %z, align 8
  %41 = load ptr, ptr %pCur, align 8
  %a128 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %41, i32 0, i32 6
  %42 = load i32, ptr %a128, align 4
  %idxprom = zext i32 %42 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %40, i64 %idxprom
  %43 = load ptr, ptr %pCur, align 8
  %aDelta30 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %aDelta30, align 8
  %sub.ptr.lhs.cast31 = ptrtoint ptr %arrayidx29 to i64
  %sub.ptr.rhs.cast32 = ptrtoint ptr %44 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %45 = load ptr, ptr %pCur, align 8
  %iNext34 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %45, i32 0, i32 3
  store i64 %sub.ptr.sub33, ptr %iNext34, align 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %46 = load ptr, ptr %pCur, align 8
  %eOp36 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %46, i32 0, i32 5
  store i32 3, ptr %eOp36, align 8
  %47 = load ptr, ptr %pCur, align 8
  %nDelta37 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %47, i32 0, i32 4
  %48 = load i64, ptr %nDelta37, align 8
  %49 = load ptr, ptr %pCur, align 8
  %iNext38 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %49, i32 0, i32 3
  store i64 %48, ptr %iNext38, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %50 = load ptr, ptr %pCur, align 8
  %iNext39 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %50, i32 0, i32 3
  %51 = load i64, ptr %iNext39, align 8
  %52 = load ptr, ptr %pCur, align 8
  %nDelta40 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %52, i32 0, i32 4
  %53 = load i64, ptr %nDelta40, align 8
  %cmp41 = icmp eq i64 %51, %53
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %sw.default
  %54 = load ptr, ptr %pCur, align 8
  %eOp44 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %54, i32 0, i32 5
  store i32 5, ptr %eOp44, align 8
  br label %if.end48

if.else:                                          ; preds = %sw.default
  %55 = load ptr, ptr %pCur, align 8
  %eOp45 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %55, i32 0, i32 5
  store i32 4, ptr %eOp45, align 8
  %56 = load ptr, ptr %pCur, align 8
  %nDelta46 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %56, i32 0, i32 4
  %57 = load i64, ptr %nDelta46, align 8
  %58 = load ptr, ptr %pCur, align 8
  %iNext47 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %58, i32 0, i32 3
  store i64 %57, ptr %iNext47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then43
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end48, %sw.bb35, %sw.bb19, %if.end13, %if.then9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %eOp = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %eOp, align 8
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %pCur, align 8
  %iCursor = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %iCursor, align 8
  %5 = load ptr, ptr %pCur, align 8
  %nDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %5, i32 0, i32 4
  %6 = load i64, ptr %nDelta, align 8
  %cmp1 = icmp sge i64 %4, %6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
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
    i32 2, label %sw.bb2
    i32 3, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %pCur, align 8
  %eOp = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %eOp, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [6 x ptr], ptr @azOp, i64 0, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  call void @sqlite3_result_text(ptr noundef %2, ptr noundef %5, i32 noundef -1, ptr noundef null)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %6 = load ptr, ptr %ctx.addr, align 8
  %7 = load ptr, ptr %pCur, align 8
  %a1 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %a1, align 4
  call void @sqlite3_result_int(ptr noundef %6, i32 noundef %8)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %9 = load ptr, ptr %pCur, align 8
  %eOp3 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %eOp3, align 8
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb2
  %11 = load ptr, ptr %ctx.addr, align 8
  %12 = load ptr, ptr %pCur, align 8
  %a2 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %12, i32 0, i32 7
  %13 = load i32, ptr %a2, align 8
  call void @sqlite3_result_int(ptr noundef %11, i32 noundef %13)
  br label %if.end18

if.else:                                          ; preds = %sw.bb2
  %14 = load ptr, ptr %pCur, align 8
  %eOp4 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %eOp4, align 8
  %cmp5 = icmp eq i32 %15, 2
  br i1 %cmp5, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.else
  %16 = load ptr, ptr %pCur, align 8
  %a27 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %16, i32 0, i32 7
  %17 = load i32, ptr %a27, align 8
  %conv = zext i32 %17 to i64
  %18 = load ptr, ptr %pCur, align 8
  %a18 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %a18, align 4
  %conv9 = zext i32 %19 to i64
  %add = add nsw i64 %conv, %conv9
  %20 = load ptr, ptr %pCur, align 8
  %nDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %20, i32 0, i32 4
  %21 = load i64, ptr %nDelta, align 8
  %cmp10 = icmp sgt i64 %add, %21
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.then6
  %22 = load ptr, ptr %ctx.addr, align 8
  %23 = load ptr, ptr %pCur, align 8
  %a113 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %23, i32 0, i32 6
  %24 = load i32, ptr %a113, align 4
  call void @sqlite3_result_zeroblob(ptr noundef %22, i32 noundef %24)
  br label %if.end

if.else14:                                        ; preds = %if.then6
  %25 = load ptr, ptr %ctx.addr, align 8
  %26 = load ptr, ptr %pCur, align 8
  %aDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %aDelta, align 8
  %28 = load ptr, ptr %pCur, align 8
  %a215 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %a215, align 8
  %idx.ext = zext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %idx.ext
  %30 = load ptr, ptr %pCur, align 8
  %a116 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %30, i32 0, i32 6
  %31 = load i32, ptr %a116, align 4
  call void @sqlite3_result_blob(ptr noundef %25, ptr noundef %add.ptr, i32 noundef %31, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %32 = load ptr, ptr %ctx.addr, align 8
  %33 = load ptr, ptr %pCur, align 8
  %aDelta20 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %aDelta20, align 8
  %35 = load ptr, ptr %pCur, align 8
  %nDelta21 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %nDelta21, align 8
  %conv22 = trunc i64 %36 to i32
  call void @sqlite3_result_blob(ptr noundef %32, ptr noundef %34, i32 noundef %conv22, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb19, %if.end18, %sw.bb1, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iCursor = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %iCursor, align 8
  %3 = load ptr, ptr %pRowid.addr, align 8
  store i64 %2, ptr %3, align 8
  ret i32 0
}

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

declare i32 @sqlite3_vtab_config(ptr noundef, i32 noundef, ...) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_result_zeroblob(ptr noundef, i32 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_0(ptr noundef %zSrc, i32 noundef %lenSrc, ptr noundef %zOut, i32 noundef %lenOut, ptr noundef %zDelta)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %zSrc.addr = alloca ptr, align 8
  %lenSrc.addr = alloca i32, align 4
  %zOut.addr = alloca ptr, align 8
  %lenOut.addr = alloca i32, align 4
  %zDelta.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  %zOrigDelta = alloca ptr, align 8
  %h = alloca %struct.hash, align 2
  %nHash = alloca i32, align 4
  %landmark = alloca ptr, align 8
  %collide = alloca ptr, align 8
  %lastRead = alloca i32, align 4
  %hv = alloca i32, align 4
  %iSrc = alloca i32, align 4
  %iBlock = alloca i32, align 4
  %bestCnt = alloca i32, align 4
  %bestOfst = alloca i32, align 4
  %bestLitsz = alloca i32, align 4
  %hv33 = alloca i32, align 4
  %limit = alloca i32, align 4
  %cnt = alloca i32, align 4
  %ofst = alloca i32, align 4
  %litsz = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sz = alloca i32, align 4
  %limitX = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %lenSrc, ptr %lenSrc.addr, align 4
  store ptr %zOut, ptr %zOut.addr, align 8
  store i32 %lenOut, ptr %lenOut.addr, align 4
  store ptr %zDelta, ptr %zDelta.addr, align 8
  %0 = load ptr, ptr %zDelta.addr, align 8
  store ptr %0, ptr %zOrigDelta, align 8
  store i32 -1, ptr %lastRead, align 4
  %1 = load i32, ptr %lenOut.addr, align 4
  call void @putInt(i32 noundef %1, ptr noundef %zDelta.addr)
  %2 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %zDelta.addr, align 8
  store i8 10, ptr %2, align 1
  %3 = load i32, ptr %lenSrc.addr, align 4
  %cmp = icmp ule i32 %3, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %lenOut.addr, align 4
  call void @putInt(i32 noundef %4, ptr noundef %zDelta.addr)
  %5 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr1, ptr %zDelta.addr, align 8
  store i8 58, ptr %5, align 1
  %6 = load ptr, ptr %zDelta.addr, align 8
  %7 = load ptr, ptr %zOut.addr, align 8
  %8 = load i32, ptr %lenOut.addr, align 4
  %conv = zext i32 %8 to i64
  %9 = load ptr, ptr %zDelta.addr, align 8
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %7, i64 noundef %conv, i64 noundef %10) #6
  %11 = load i32, ptr %lenOut.addr, align 4
  %12 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  store ptr %add.ptr, ptr %zDelta.addr, align 8
  %13 = load ptr, ptr %zOut.addr, align 8
  %14 = load i32, ptr %lenOut.addr, align 4
  %conv2 = zext i32 %14 to i64
  %call3 = call i32 @checksum(ptr noundef %13, i64 noundef %conv2)
  call void @putInt(i32 noundef %call3, ptr noundef %zDelta.addr)
  %15 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr4, ptr %zDelta.addr, align 8
  store i8 59, ptr %15, align 1
  %16 = load ptr, ptr %zDelta.addr, align 8
  %17 = load ptr, ptr %zOrigDelta, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv5 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %18 = load i32, ptr %lenSrc.addr, align 4
  %div = udiv i32 %18, 16
  store i32 %div, ptr %nHash, align 4
  %19 = load i32, ptr %nHash, align 4
  %conv6 = sext i32 %19 to i64
  %mul = mul nsw i64 %conv6, 2
  %mul7 = mul i64 %mul, 4
  %call8 = call ptr @sqlite3_malloc64(i64 noundef %mul7)
  store ptr %call8, ptr %collide, align 8
  %20 = load ptr, ptr %collide, align 8
  %21 = load i32, ptr %nHash, align 4
  %mul9 = mul nsw i32 %21, 2
  %conv10 = sext i32 %mul9 to i64
  %mul11 = mul i64 %conv10, 4
  %22 = load ptr, ptr %collide, align 8
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memset_chk(ptr noundef %20, i32 noundef -1, i64 noundef %mul11, i64 noundef %23) #6
  %24 = load ptr, ptr %collide, align 8
  %25 = load i32, ptr %nHash, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds i32, ptr %24, i64 %idxprom
  store ptr %arrayidx, ptr %landmark, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %lenSrc.addr, align 4
  %sub = sub i32 %27, 16
  %cmp13 = icmp ult i32 %26, %sub
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %zSrc.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %28, i64 %idxprom15
  %call17 = call i32 @hash_once(ptr noundef %arrayidx16)
  %30 = load i32, ptr %nHash, align 4
  %rem = urem i32 %call17, %30
  store i32 %rem, ptr %hv, align 4
  %31 = load ptr, ptr %landmark, align 8
  %32 = load i32, ptr %hv, align 4
  %idxprom18 = sext i32 %32 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %31, i64 %idxprom18
  %33 = load i32, ptr %arrayidx19, align 4
  %34 = load ptr, ptr %collide, align 8
  %35 = load i32, ptr %i, align 4
  %div20 = sdiv i32 %35, 16
  %idxprom21 = sext i32 %div20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %34, i64 %idxprom21
  store i32 %33, ptr %arrayidx22, align 4
  %36 = load i32, ptr %i, align 4
  %div23 = sdiv i32 %36, 16
  %37 = load ptr, ptr %landmark, align 8
  %38 = load i32, ptr %hv, align 4
  %idxprom24 = sext i32 %38 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %37, i64 %idxprom24
  store i32 %div23, ptr %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %add = add nsw i32 %39, 16
  store i32 %add, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %base, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end165, %for.end
  %40 = load i32, ptr %base, align 4
  %add26 = add nsw i32 %40, 16
  %41 = load i32, ptr %lenOut.addr, align 4
  %cmp27 = icmp ult i32 %add26, %41
  br i1 %cmp27, label %while.body, label %while.end166

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %bestOfst, align 4
  store i32 0, ptr %bestLitsz, align 4
  %42 = load ptr, ptr %zOut.addr, align 8
  %43 = load i32, ptr %base, align 4
  %idxprom29 = sext i32 %43 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %42, i64 %idxprom29
  call void @hash_init(ptr noundef %h, ptr noundef %arrayidx30)
  store i32 0, ptr %i, align 4
  store i32 0, ptr %bestCnt, align 4
  br label %while.body32

while.body32:                                     ; preds = %while.body, %if.end158
  store i32 250, ptr %limit, align 4
  %call34 = call i32 @hash_32bit(ptr noundef %h)
  %44 = load i32, ptr %nHash, align 4
  %rem35 = urem i32 %call34, %44
  store i32 %rem35, ptr %hv33, align 4
  %45 = load ptr, ptr %landmark, align 8
  %46 = load i32, ptr %hv33, align 4
  %idxprom36 = sext i32 %46 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %45, i64 %idxprom36
  %47 = load i32, ptr %arrayidx37, align 4
  store i32 %47, ptr %iBlock, align 4
  br label %while.cond38

while.cond38:                                     ; preds = %if.end113, %while.body32
  %48 = load i32, ptr %iBlock, align 4
  %cmp39 = icmp sge i32 %48, 0
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond38
  %49 = load i32, ptr %limit, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, ptr %limit, align 4
  %cmp41 = icmp sgt i32 %49, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond38
  %50 = phi i1 [ false, %while.cond38 ], [ %cmp41, %land.rhs ]
  br i1 %50, label %while.body43, label %while.end

while.body43:                                     ; preds = %land.end
  %51 = load i32, ptr %iBlock, align 4
  %mul44 = mul nsw i32 %51, 16
  store i32 %mul44, ptr %iSrc, align 4
  %52 = load i32, ptr %base, align 4
  %53 = load i32, ptr %i, align 4
  %add45 = add nsw i32 %52, %53
  store i32 %add45, ptr %y, align 4
  %54 = load i32, ptr %lenSrc.addr, align 4
  %55 = load i32, ptr %iSrc, align 4
  %sub46 = sub i32 %54, %55
  %56 = load i32, ptr %lenOut.addr, align 4
  %57 = load i32, ptr %y, align 4
  %sub47 = sub i32 %56, %57
  %cmp48 = icmp ule i32 %sub46, %sub47
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body43
  %58 = load i32, ptr %lenSrc.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body43
  %59 = load i32, ptr %iSrc, align 4
  %60 = load i32, ptr %lenOut.addr, align 4
  %add50 = add i32 %59, %60
  %61 = load i32, ptr %y, align 4
  %sub51 = sub i32 %add50, %61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %58, %cond.true ], [ %sub51, %cond.false ]
  store i32 %cond, ptr %limitX, align 4
  %62 = load i32, ptr %iSrc, align 4
  store i32 %62, ptr %x, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc66, %cond.end
  %63 = load i32, ptr %x, align 4
  %64 = load i32, ptr %limitX, align 4
  %cmp53 = icmp slt i32 %63, %64
  br i1 %cmp53, label %for.body55, label %for.end68

for.body55:                                       ; preds = %for.cond52
  %65 = load ptr, ptr %zSrc.addr, align 8
  %66 = load i32, ptr %x, align 4
  %idxprom56 = sext i32 %66 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %65, i64 %idxprom56
  %67 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %67 to i32
  %68 = load ptr, ptr %zOut.addr, align 8
  %69 = load i32, ptr %y, align 4
  %idxprom59 = sext i32 %69 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %68, i64 %idxprom59
  %70 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %70 to i32
  %cmp62 = icmp ne i32 %conv58, %conv61
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %for.body55
  br label %for.end68

if.end65:                                         ; preds = %for.body55
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %71 = load i32, ptr %x, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, ptr %x, align 4
  %72 = load i32, ptr %y, align 4
  %inc67 = add nsw i32 %72, 1
  store i32 %inc67, ptr %y, align 4
  br label %for.cond52, !llvm.loop !8

for.end68:                                        ; preds = %if.then64, %for.cond52
  %73 = load i32, ptr %x, align 4
  %74 = load i32, ptr %iSrc, align 4
  %sub69 = sub nsw i32 %73, %74
  %sub70 = sub nsw i32 %sub69, 1
  store i32 %sub70, ptr %j, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc92, %for.end68
  %75 = load i32, ptr %k, align 4
  %76 = load i32, ptr %iSrc, align 4
  %cmp72 = icmp slt i32 %75, %76
  br i1 %cmp72, label %land.rhs74, label %land.end77

land.rhs74:                                       ; preds = %for.cond71
  %77 = load i32, ptr %k, align 4
  %78 = load i32, ptr %i, align 4
  %cmp75 = icmp sle i32 %77, %78
  br label %land.end77

land.end77:                                       ; preds = %land.rhs74, %for.cond71
  %79 = phi i1 [ false, %for.cond71 ], [ %cmp75, %land.rhs74 ]
  br i1 %79, label %for.body78, label %for.end94

for.body78:                                       ; preds = %land.end77
  %80 = load ptr, ptr %zSrc.addr, align 8
  %81 = load i32, ptr %iSrc, align 4
  %82 = load i32, ptr %k, align 4
  %sub79 = sub nsw i32 %81, %82
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %80, i64 %idxprom80
  %83 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %83 to i32
  %84 = load ptr, ptr %zOut.addr, align 8
  %85 = load i32, ptr %base, align 4
  %86 = load i32, ptr %i, align 4
  %add83 = add nsw i32 %85, %86
  %87 = load i32, ptr %k, align 4
  %sub84 = sub nsw i32 %add83, %87
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %84, i64 %idxprom85
  %88 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %88 to i32
  %cmp88 = icmp ne i32 %conv82, %conv87
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %for.body78
  br label %for.end94

if.end91:                                         ; preds = %for.body78
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %89 = load i32, ptr %k, align 4
  %inc93 = add nsw i32 %89, 1
  store i32 %inc93, ptr %k, align 4
  br label %for.cond71, !llvm.loop !9

for.end94:                                        ; preds = %if.then90, %land.end77
  %90 = load i32, ptr %k, align 4
  %dec95 = add nsw i32 %90, -1
  store i32 %dec95, ptr %k, align 4
  %91 = load i32, ptr %iSrc, align 4
  %92 = load i32, ptr %k, align 4
  %sub96 = sub nsw i32 %91, %92
  store i32 %sub96, ptr %ofst, align 4
  %93 = load i32, ptr %j, align 4
  %94 = load i32, ptr %k, align 4
  %add97 = add nsw i32 %93, %94
  %add98 = add nsw i32 %add97, 1
  store i32 %add98, ptr %cnt, align 4
  %95 = load i32, ptr %i, align 4
  %96 = load i32, ptr %k, align 4
  %sub99 = sub nsw i32 %95, %96
  store i32 %sub99, ptr %litsz, align 4
  %97 = load i32, ptr %i, align 4
  %98 = load i32, ptr %k, align 4
  %sub100 = sub nsw i32 %97, %98
  %call101 = call i32 @digit_count(i32 noundef %sub100)
  %99 = load i32, ptr %cnt, align 4
  %call102 = call i32 @digit_count(i32 noundef %99)
  %add103 = add nsw i32 %call101, %call102
  %100 = load i32, ptr %ofst, align 4
  %call104 = call i32 @digit_count(i32 noundef %100)
  %add105 = add nsw i32 %add103, %call104
  %add106 = add nsw i32 %add105, 3
  store i32 %add106, ptr %sz, align 4
  %101 = load i32, ptr %cnt, align 4
  %102 = load i32, ptr %sz, align 4
  %cmp107 = icmp sge i32 %101, %102
  br i1 %cmp107, label %land.lhs.true, label %if.end113

land.lhs.true:                                    ; preds = %for.end94
  %103 = load i32, ptr %cnt, align 4
  %104 = load i32, ptr %bestCnt, align 4
  %cmp109 = icmp ugt i32 %103, %104
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %land.lhs.true
  %105 = load i32, ptr %cnt, align 4
  store i32 %105, ptr %bestCnt, align 4
  %106 = load i32, ptr %iSrc, align 4
  %107 = load i32, ptr %k, align 4
  %sub112 = sub nsw i32 %106, %107
  store i32 %sub112, ptr %bestOfst, align 4
  %108 = load i32, ptr %litsz, align 4
  store i32 %108, ptr %bestLitsz, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %land.lhs.true, %for.end94
  %109 = load ptr, ptr %collide, align 8
  %110 = load i32, ptr %iBlock, align 4
  %idxprom114 = sext i32 %110 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %109, i64 %idxprom114
  %111 = load i32, ptr %arrayidx115, align 4
  store i32 %111, ptr %iBlock, align 4
  br label %while.cond38, !llvm.loop !10

while.end:                                        ; preds = %land.end
  %112 = load i32, ptr %bestCnt, align 4
  %cmp116 = icmp ugt i32 %112, 0
  br i1 %cmp116, label %if.then118, label %if.end142

if.then118:                                       ; preds = %while.end
  %113 = load i32, ptr %bestLitsz, align 4
  %cmp119 = icmp ugt i32 %113, 0
  br i1 %cmp119, label %if.then121, label %if.end130

if.then121:                                       ; preds = %if.then118
  %114 = load i32, ptr %bestLitsz, align 4
  call void @putInt(i32 noundef %114, ptr noundef %zDelta.addr)
  %115 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %115, i32 1
  store ptr %incdec.ptr122, ptr %zDelta.addr, align 8
  store i8 58, ptr %115, align 1
  %116 = load ptr, ptr %zDelta.addr, align 8
  %117 = load ptr, ptr %zOut.addr, align 8
  %118 = load i32, ptr %base, align 4
  %idxprom123 = sext i32 %118 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %117, i64 %idxprom123
  %119 = load i32, ptr %bestLitsz, align 4
  %conv125 = zext i32 %119 to i64
  %120 = load ptr, ptr %zDelta.addr, align 8
  %121 = call i64 @llvm.objectsize.i64.p0(ptr %120, i1 false, i1 true, i1 false)
  %call126 = call ptr @__memcpy_chk(ptr noundef %116, ptr noundef %arrayidx124, i64 noundef %conv125, i64 noundef %121) #6
  %122 = load i32, ptr %bestLitsz, align 4
  %123 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext127 = zext i32 %122 to i64
  %add.ptr128 = getelementptr inbounds i8, ptr %123, i64 %idx.ext127
  store ptr %add.ptr128, ptr %zDelta.addr, align 8
  %124 = load i32, ptr %bestLitsz, align 4
  %125 = load i32, ptr %base, align 4
  %add129 = add i32 %125, %124
  store i32 %add129, ptr %base, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then121, %if.then118
  %126 = load i32, ptr %bestCnt, align 4
  %127 = load i32, ptr %base, align 4
  %add131 = add i32 %127, %126
  store i32 %add131, ptr %base, align 4
  %128 = load i32, ptr %bestCnt, align 4
  call void @putInt(i32 noundef %128, ptr noundef %zDelta.addr)
  %129 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr132 = getelementptr inbounds i8, ptr %129, i32 1
  store ptr %incdec.ptr132, ptr %zDelta.addr, align 8
  store i8 64, ptr %129, align 1
  %130 = load i32, ptr %bestOfst, align 4
  call void @putInt(i32 noundef %130, ptr noundef %zDelta.addr)
  %131 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %131, i32 1
  store ptr %incdec.ptr133, ptr %zDelta.addr, align 8
  store i8 44, ptr %131, align 1
  %132 = load i32, ptr %bestOfst, align 4
  %133 = load i32, ptr %bestCnt, align 4
  %add134 = add i32 %132, %133
  %sub135 = sub i32 %add134, 1
  %134 = load i32, ptr %lastRead, align 4
  %cmp136 = icmp ugt i32 %sub135, %134
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end130
  %135 = load i32, ptr %bestOfst, align 4
  %136 = load i32, ptr %bestCnt, align 4
  %add139 = add i32 %135, %136
  %sub140 = sub i32 %add139, 1
  store i32 %sub140, ptr %lastRead, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end130
  store i32 0, ptr %bestCnt, align 4
  br label %while.end165

if.end142:                                        ; preds = %while.end
  %137 = load i32, ptr %base, align 4
  %138 = load i32, ptr %i, align 4
  %add143 = add nsw i32 %137, %138
  %add144 = add nsw i32 %add143, 16
  %139 = load i32, ptr %lenOut.addr, align 4
  %cmp145 = icmp uge i32 %add144, %139
  br i1 %cmp145, label %if.then147, label %if.end158

if.then147:                                       ; preds = %if.end142
  %140 = load i32, ptr %lenOut.addr, align 4
  %141 = load i32, ptr %base, align 4
  %sub148 = sub i32 %140, %141
  call void @putInt(i32 noundef %sub148, ptr noundef %zDelta.addr)
  %142 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr149 = getelementptr inbounds i8, ptr %142, i32 1
  store ptr %incdec.ptr149, ptr %zDelta.addr, align 8
  store i8 58, ptr %142, align 1
  %143 = load ptr, ptr %zDelta.addr, align 8
  %144 = load ptr, ptr %zOut.addr, align 8
  %145 = load i32, ptr %base, align 4
  %idxprom150 = sext i32 %145 to i64
  %arrayidx151 = getelementptr inbounds i8, ptr %144, i64 %idxprom150
  %146 = load i32, ptr %lenOut.addr, align 4
  %147 = load i32, ptr %base, align 4
  %sub152 = sub i32 %146, %147
  %conv153 = zext i32 %sub152 to i64
  %148 = load ptr, ptr %zDelta.addr, align 8
  %149 = call i64 @llvm.objectsize.i64.p0(ptr %148, i1 false, i1 true, i1 false)
  %call154 = call ptr @__memcpy_chk(ptr noundef %143, ptr noundef %arrayidx151, i64 noundef %conv153, i64 noundef %149) #6
  %150 = load i32, ptr %lenOut.addr, align 4
  %151 = load i32, ptr %base, align 4
  %sub155 = sub i32 %150, %151
  %152 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext156 = zext i32 %sub155 to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %152, i64 %idx.ext156
  store ptr %add.ptr157, ptr %zDelta.addr, align 8
  %153 = load i32, ptr %lenOut.addr, align 4
  store i32 %153, ptr %base, align 4
  br label %while.end165

if.end158:                                        ; preds = %if.end142
  %154 = load ptr, ptr %zOut.addr, align 8
  %155 = load i32, ptr %base, align 4
  %156 = load i32, ptr %i, align 4
  %add159 = add nsw i32 %155, %156
  %add160 = add nsw i32 %add159, 16
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds i8, ptr %154, i64 %idxprom161
  %157 = load i8, ptr %arrayidx162, align 1
  %conv163 = sext i8 %157 to i32
  call void @hash_next(ptr noundef %h, i32 noundef %conv163)
  %158 = load i32, ptr %i, align 4
  %inc164 = add nsw i32 %158, 1
  store i32 %inc164, ptr %i, align 4
  br label %while.body32

while.end165:                                     ; preds = %if.then147, %if.end141
  br label %while.cond, !llvm.loop !11

while.end166:                                     ; preds = %while.cond
  %159 = load i32, ptr %base, align 4
  %160 = load i32, ptr %lenOut.addr, align 4
  %cmp167 = icmp ult i32 %159, %160
  br i1 %cmp167, label %if.then169, label %if.end180

if.then169:                                       ; preds = %while.end166
  %161 = load i32, ptr %lenOut.addr, align 4
  %162 = load i32, ptr %base, align 4
  %sub170 = sub i32 %161, %162
  call void @putInt(i32 noundef %sub170, ptr noundef %zDelta.addr)
  %163 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr171 = getelementptr inbounds i8, ptr %163, i32 1
  store ptr %incdec.ptr171, ptr %zDelta.addr, align 8
  store i8 58, ptr %163, align 1
  %164 = load ptr, ptr %zDelta.addr, align 8
  %165 = load ptr, ptr %zOut.addr, align 8
  %166 = load i32, ptr %base, align 4
  %idxprom172 = sext i32 %166 to i64
  %arrayidx173 = getelementptr inbounds i8, ptr %165, i64 %idxprom172
  %167 = load i32, ptr %lenOut.addr, align 4
  %168 = load i32, ptr %base, align 4
  %sub174 = sub i32 %167, %168
  %conv175 = zext i32 %sub174 to i64
  %169 = load ptr, ptr %zDelta.addr, align 8
  %170 = call i64 @llvm.objectsize.i64.p0(ptr %169, i1 false, i1 true, i1 false)
  %call176 = call ptr @__memcpy_chk(ptr noundef %164, ptr noundef %arrayidx173, i64 noundef %conv175, i64 noundef %170) #6
  %171 = load i32, ptr %lenOut.addr, align 4
  %172 = load i32, ptr %base, align 4
  %sub177 = sub i32 %171, %172
  %173 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext178 = zext i32 %sub177 to i64
  %add.ptr179 = getelementptr inbounds i8, ptr %173, i64 %idx.ext178
  store ptr %add.ptr179, ptr %zDelta.addr, align 8
  br label %if.end180

if.end180:                                        ; preds = %if.then169, %while.end166
  %174 = load ptr, ptr %zOut.addr, align 8
  %175 = load i32, ptr %lenOut.addr, align 4
  %conv181 = zext i32 %175 to i64
  %call182 = call i32 @checksum(ptr noundef %174, i64 noundef %conv181)
  call void @putInt(i32 noundef %call182, ptr noundef %zDelta.addr)
  %176 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr183 = getelementptr inbounds i8, ptr %176, i32 1
  store ptr %incdec.ptr183, ptr %zDelta.addr, align 8
  store i8 59, ptr %176, align 1
  %177 = load ptr, ptr %collide, align 8
  call void @sqlite3_free(ptr noundef %177)
  %178 = load ptr, ptr %zDelta.addr, align 8
  %179 = load ptr, ptr %zOrigDelta, align 8
  %sub.ptr.lhs.cast184 = ptrtoint ptr %178 to i64
  %sub.ptr.rhs.cast185 = ptrtoint ptr %179 to i64
  %sub.ptr.sub186 = sub i64 %sub.ptr.lhs.cast184, %sub.ptr.rhs.cast185
  %conv187 = trunc i64 %sub.ptr.sub186 to i32
  store i32 %conv187, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end180, %if.then
  %180 = load i32, ptr %retval, align 4
  ret i32 %180
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_1(ptr noundef %zDelta, i32 noundef %lenDelta)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %zDelta.addr = alloca ptr, align 8
  %lenDelta.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store ptr %zDelta, ptr %zDelta.addr, align 8
  store i32 %lenDelta, ptr %lenDelta.addr, align 4
  %call = call i32 @deltaGetInt(ptr noundef %zDelta.addr, ptr noundef %lenDelta.addr)
  store i32 %call, ptr %size, align 4
  %0 = load ptr, ptr %zDelta.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %size, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_2(ptr noundef %zSrc, i32 noundef %lenSrc, ptr noundef %zDelta, i32 noundef %lenDelta, ptr noundef %zOut)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %zSrc.addr = alloca ptr, align 8
  %lenSrc.addr = alloca i32, align 4
  %zDelta.addr = alloca ptr, align 8
  %lenDelta.addr = alloca i32, align 4
  %zOut.addr = alloca ptr, align 8
  %limit = alloca i64, align 8
  %total = alloca i64, align 8
  %cnt = alloca i32, align 4
  %ofst = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %lenSrc, ptr %lenSrc.addr, align 4
  store ptr %zDelta, ptr %zDelta.addr, align 8
  store i32 %lenDelta, ptr %lenDelta.addr, align 4
  store ptr %zOut, ptr %zOut.addr, align 8
  store i64 0, ptr %total, align 8
  %call = call i32 @deltaGetInt(ptr noundef %zDelta.addr, ptr noundef %lenDelta.addr)
  %conv = zext i32 %call to i64
  store i64 %conv, ptr %limit, align 8
  %0 = load ptr, ptr %zDelta.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %zDelta.addr, align 8
  %3 = load i32, ptr %lenDelta.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %lenDelta.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load ptr, ptr %zDelta.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %lenDelta.addr, align 4
  %cmp4 = icmp sgt i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call6 = call i32 @deltaGetInt(ptr noundef %zDelta.addr, ptr noundef %lenDelta.addr)
  store i32 %call6, ptr %cnt, align 4
  %8 = load ptr, ptr %zDelta.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx, align 1
  %conv7 = sext i8 %9 to i32
  switch i32 %conv7, label %sw.default [
    i32 64, label %sw.bb
    i32 58, label %sw.bb37
    i32 59, label %sw.bb56
  ]

sw.bb:                                            ; preds = %while.body
  %10 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr8, ptr %zDelta.addr, align 8
  %11 = load i32, ptr %lenDelta.addr, align 4
  %dec9 = add nsw i32 %11, -1
  store i32 %dec9, ptr %lenDelta.addr, align 4
  %call10 = call i32 @deltaGetInt(ptr noundef %zDelta.addr, ptr noundef %lenDelta.addr)
  store i32 %call10, ptr %ofst, align 4
  %12 = load i32, ptr %lenDelta.addr, align 4
  %cmp11 = icmp sgt i32 %12, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %sw.bb
  %13 = load ptr, ptr %zDelta.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp ne i32 %conv14, 44
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %land.lhs.true, %sw.bb
  %15 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr19, ptr %zDelta.addr, align 8
  %16 = load i32, ptr %lenDelta.addr, align 4
  %dec20 = add nsw i32 %16, -1
  store i32 %dec20, ptr %lenDelta.addr, align 4
  %17 = load i32, ptr %cnt, align 4
  %conv21 = zext i32 %17 to i64
  %18 = load i64, ptr %total, align 8
  %add = add i64 %18, %conv21
  store i64 %add, ptr %total, align 8
  %19 = load i64, ptr %total, align 8
  %20 = load i64, ptr %limit, align 8
  %cmp22 = icmp ugt i64 %19, %20
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  store i32 -1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end18
  %21 = load i32, ptr %ofst, align 4
  %conv26 = zext i32 %21 to i64
  %22 = load i32, ptr %cnt, align 4
  %conv27 = zext i32 %22 to i64
  %add28 = add i64 %conv26, %conv27
  %23 = load i32, ptr %lenSrc.addr, align 4
  %conv29 = sext i32 %23 to i64
  %cmp30 = icmp ugt i64 %add28, %conv29
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end25
  store i32 -1, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end25
  %24 = load ptr, ptr %zOut.addr, align 8
  %25 = load ptr, ptr %zSrc.addr, align 8
  %26 = load i32, ptr %ofst, align 4
  %idxprom = zext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %25, i64 %idxprom
  %27 = load i32, ptr %cnt, align 4
  %conv35 = zext i32 %27 to i64
  %28 = load ptr, ptr %zOut.addr, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call36 = call ptr @__memcpy_chk(ptr noundef %24, ptr noundef %arrayidx34, i64 noundef %conv35, i64 noundef %29) #6
  %30 = load i32, ptr %cnt, align 4
  %31 = load ptr, ptr %zOut.addr, align 8
  %idx.ext = zext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %idx.ext
  store ptr %add.ptr, ptr %zOut.addr, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %while.body
  %32 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr38, ptr %zDelta.addr, align 8
  %33 = load i32, ptr %lenDelta.addr, align 4
  %dec39 = add nsw i32 %33, -1
  store i32 %dec39, ptr %lenDelta.addr, align 4
  %34 = load i32, ptr %cnt, align 4
  %conv40 = zext i32 %34 to i64
  %35 = load i64, ptr %total, align 8
  %add41 = add i64 %35, %conv40
  store i64 %add41, ptr %total, align 8
  %36 = load i64, ptr %total, align 8
  %37 = load i64, ptr %limit, align 8
  %cmp42 = icmp ugt i64 %36, %37
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %sw.bb37
  store i32 -1, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %sw.bb37
  %38 = load i32, ptr %cnt, align 4
  %39 = load i32, ptr %lenDelta.addr, align 4
  %cmp46 = icmp ugt i32 %38, %39
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  store i32 -1, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end45
  %40 = load ptr, ptr %zOut.addr, align 8
  %41 = load ptr, ptr %zDelta.addr, align 8
  %42 = load i32, ptr %cnt, align 4
  %conv50 = zext i32 %42 to i64
  %43 = load ptr, ptr %zOut.addr, align 8
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %43, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %40, ptr noundef %41, i64 noundef %conv50, i64 noundef %44) #6
  %45 = load i32, ptr %cnt, align 4
  %46 = load ptr, ptr %zOut.addr, align 8
  %idx.ext52 = zext i32 %45 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %46, i64 %idx.ext52
  store ptr %add.ptr53, ptr %zOut.addr, align 8
  %47 = load i32, ptr %cnt, align 4
  %48 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext54 = zext i32 %47 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %48, i64 %idx.ext54
  store ptr %add.ptr55, ptr %zDelta.addr, align 8
  %49 = load i32, ptr %cnt, align 4
  %50 = load i32, ptr %lenDelta.addr, align 4
  %sub = sub i32 %50, %49
  store i32 %sub, ptr %lenDelta.addr, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %while.body
  %51 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr57, ptr %zDelta.addr, align 8
  %52 = load i32, ptr %lenDelta.addr, align 4
  %dec58 = add nsw i32 %52, -1
  store i32 %dec58, ptr %lenDelta.addr, align 4
  %53 = load ptr, ptr %zOut.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %53, i64 0
  store i8 0, ptr %arrayidx59, align 1
  %54 = load i64, ptr %total, align 8
  %55 = load i64, ptr %limit, align 8
  %cmp60 = icmp ne i64 %54, %55
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %sw.bb56
  store i32 -1, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %sw.bb56
  %56 = load i64, ptr %total, align 8
  %conv64 = trunc i64 %56 to i32
  store i32 %conv64, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end49, %if.end33
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %land.end
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %sw.default, %if.end63, %if.then62, %if.then48, %if.then44, %if.then32, %if.then24, %if.then17, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_3(ptr noundef %zDelta, i32 noundef %lenDelta)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %zDelta.addr = alloca ptr, align 8
  %lenDelta.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store ptr %zDelta, ptr %zDelta.addr, align 8
  store i32 %lenDelta, ptr %lenDelta.addr, align 4
  %call = call i32 @deltaGetInt(ptr noundef %zDelta.addr, ptr noundef %lenDelta.addr)
  store i32 %call, ptr %size, align 4
  %0 = load ptr, ptr %zDelta.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %size, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_4(i32 noundef %v, ptr noundef %pz)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_4.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_5(i32 noundef %v, ptr noundef %pz)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_5.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_6(ptr noundef %zIn, i64 noundef %N)  alwaysinline#0 {
entry:
  %zIn.addr = alloca ptr, align 8
  %N.addr = alloca i64, align 8
  %z = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %sum = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  store ptr %zIn, ptr %zIn.addr, align 8
  store i64 %N, ptr %N.addr, align 8
  %0 = load ptr, ptr %zIn.addr, align 8
  store ptr %0, ptr %z, align 8
  %1 = load ptr, ptr %zIn.addr, align 8
  %2 = load i64, ptr %N.addr, align 8
  %and = and i64 %2, -4
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %and
  store ptr %arrayidx, ptr %zEnd, align 8
  store i32 0, ptr %sum, align 4
  %3 = load ptr, ptr %z, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %rem = srem i64 %sub.ptr.sub, 4
  %cmp = icmp eq i64 %rem, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.checksum, ptr noundef @.str.4, i32 noundef 222, ptr noundef @.str.7) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load i8, ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_6.byteOrderTest, align 4
  %conv1 = sext i8 %5 to i32
  %cmp2 = icmp eq i32 0, %conv1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load ptr, ptr %z, align 8
  %7 = load ptr, ptr %zEnd, align 8
  %cmp4 = icmp ult ptr %6, %7
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %sum, align 4
  %add = add i32 %10, %9
  store i32 %add, ptr %sum, align 4
  %11 = load ptr, ptr %z, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 4
  store ptr %add.ptr, ptr %z, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, ptr %sum0, align 4
  store i32 0, ptr %sum1, align 4
  store i32 0, ptr %sum2, align 4
  br label %while.cond6

while.cond6:                                      ; preds = %while.body9, %if.else
  %12 = load i64, ptr %N.addr, align 8
  %cmp7 = icmp uge i64 %12, 16
  br i1 %cmp7, label %while.body9, label %while.end59

while.body9:                                      ; preds = %while.cond6
  %13 = load ptr, ptr %z, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %15 = load ptr, ptr %z, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 4
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %add14 = add i32 %conv11, %conv13
  %17 = load ptr, ptr %z, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %17, i64 8
  %18 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %18 to i32
  %add17 = add i32 %add14, %conv16
  %19 = load ptr, ptr %z, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %19, i64 12
  %20 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %20 to i32
  %add20 = add i32 %add17, %conv19
  %21 = load i32, ptr %sum0, align 4
  %add21 = add i32 %21, %add20
  store i32 %add21, ptr %sum0, align 4
  %22 = load ptr, ptr %z, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %23 to i32
  %24 = load ptr, ptr %z, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %24, i64 5
  %25 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %25 to i32
  %add26 = add i32 %conv23, %conv25
  %26 = load ptr, ptr %z, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %26, i64 9
  %27 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %27 to i32
  %add29 = add i32 %add26, %conv28
  %28 = load ptr, ptr %z, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %28, i64 13
  %29 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %29 to i32
  %add32 = add i32 %add29, %conv31
  %30 = load i32, ptr %sum1, align 4
  %add33 = add i32 %30, %add32
  store i32 %add33, ptr %sum1, align 4
  %31 = load ptr, ptr %z, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %32 to i32
  %33 = load ptr, ptr %z, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %33, i64 6
  %34 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %34 to i32
  %add38 = add i32 %conv35, %conv37
  %35 = load ptr, ptr %z, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %35, i64 10
  %36 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %36 to i32
  %add41 = add i32 %add38, %conv40
  %37 = load ptr, ptr %z, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %37, i64 14
  %38 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %38 to i32
  %add44 = add i32 %add41, %conv43
  %39 = load i32, ptr %sum2, align 4
  %add45 = add i32 %39, %add44
  store i32 %add45, ptr %sum2, align 4
  %40 = load ptr, ptr %z, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %40, i64 3
  %41 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %41 to i32
  %42 = load ptr, ptr %z, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %42, i64 7
  %43 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %add50 = add i32 %conv47, %conv49
  %44 = load ptr, ptr %z, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %44, i64 11
  %45 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %45 to i32
  %add53 = add i32 %add50, %conv52
  %46 = load ptr, ptr %z, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %46, i64 15
  %47 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %47 to i32
  %add56 = add i32 %add53, %conv55
  %48 = load i32, ptr %sum, align 4
  %add57 = add i32 %48, %add56
  store i32 %add57, ptr %sum, align 4
  %49 = load ptr, ptr %z, align 8
  %add.ptr58 = getelementptr inbounds i8, ptr %49, i64 16
  store ptr %add.ptr58, ptr %z, align 8
  %50 = load i64, ptr %N.addr, align 8
  %sub = sub i64 %50, 16
  store i64 %sub, ptr %N.addr, align 8
  br label %while.cond6, !llvm.loop !15

while.end59:                                      ; preds = %while.cond6
  br label %while.cond60

while.cond60:                                     ; preds = %while.body63, %while.end59
  %51 = load i64, ptr %N.addr, align 8
  %cmp61 = icmp uge i64 %51, 4
  br i1 %cmp61, label %while.body63, label %while.end78

while.body63:                                     ; preds = %while.cond60
  %52 = load ptr, ptr %z, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %52, i64 0
  %53 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %53 to i32
  %54 = load i32, ptr %sum0, align 4
  %add66 = add i32 %54, %conv65
  store i32 %add66, ptr %sum0, align 4
  %55 = load ptr, ptr %z, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %55, i64 1
  %56 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %56 to i32
  %57 = load i32, ptr %sum1, align 4
  %add69 = add i32 %57, %conv68
  store i32 %add69, ptr %sum1, align 4
  %58 = load ptr, ptr %z, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %59 to i32
  %60 = load i32, ptr %sum2, align 4
  %add72 = add i32 %60, %conv71
  store i32 %add72, ptr %sum2, align 4
  %61 = load ptr, ptr %z, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %61, i64 3
  %62 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %62 to i32
  %63 = load i32, ptr %sum, align 4
  %add75 = add i32 %63, %conv74
  store i32 %add75, ptr %sum, align 4
  %64 = load ptr, ptr %z, align 8
  %add.ptr76 = getelementptr inbounds i8, ptr %64, i64 4
  store ptr %add.ptr76, ptr %z, align 8
  %65 = load i64, ptr %N.addr, align 8
  %sub77 = sub i64 %65, 4
  store i64 %sub77, ptr %N.addr, align 8
  br label %while.cond60, !llvm.loop !16

while.end78:                                      ; preds = %while.cond60
  %66 = load i32, ptr %sum2, align 4
  %shl = shl i32 %66, 8
  %67 = load i32, ptr %sum1, align 4
  %shl79 = shl i32 %67, 16
  %add80 = add i32 %shl, %shl79
  %68 = load i32, ptr %sum0, align 4
  %shl81 = shl i32 %68, 24
  %add82 = add i32 %add80, %shl81
  %69 = load i32, ptr %sum, align 4
  %add83 = add i32 %69, %add82
  store i32 %add83, ptr %sum, align 4
  br label %if.end

if.end:                                           ; preds = %while.end78, %while.end
  %70 = load i64, ptr %N.addr, align 8
  %and84 = and i64 %70, 3
  switch i64 %and84, label %sw.default [
    i64 3, label %sw.bb
    i64 2, label %sw.bb89
    i64 1, label %sw.bb94
  ]

sw.bb:                                            ; preds = %if.end
  %71 = load ptr, ptr %z, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %71, i64 2
  %72 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %72 to i32
  %shl87 = shl i32 %conv86, 8
  %73 = load i32, ptr %sum, align 4
  %add88 = add i32 %73, %shl87
  store i32 %add88, ptr %sum, align 4
  br label %sw.bb89

sw.bb89:                                          ; preds = %if.end, %sw.bb
  %74 = load ptr, ptr %z, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %74, i64 1
  %75 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %75 to i32
  %shl92 = shl i32 %conv91, 16
  %76 = load i32, ptr %sum, align 4
  %add93 = add i32 %76, %shl92
  store i32 %add93, ptr %sum, align 4
  br label %sw.bb94

sw.bb94:                                          ; preds = %if.end, %sw.bb89
  %77 = load ptr, ptr %z, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %77, i64 0
  %78 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %78 to i32
  %shl97 = shl i32 %conv96, 24
  %79 = load i32, ptr %sum, align 4
  %add98 = add i32 %79, %shl97
  store i32 %add98, ptr %sum, align 4
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb94
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %80 = load i32, ptr %sum, align 4
  ret i32 %80
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_7(i32 noundef %v, ptr noundef %pz)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_7.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_8(ptr noundef %z)  alwaysinline#0 {
entry:
  %z.addr = alloca ptr, align 8
  %a = alloca i16, align 2
  %b = alloca i16, align 2
  %i = alloca i16, align 2
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i16
  store i16 %conv, ptr %b, align 2
  store i16 %conv, ptr %a, align 2
  store i16 1, ptr %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i16, ptr %i, align 2
  %conv1 = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %z.addr, align 8
  %4 = load i16, ptr %i, align 2
  %idxprom = zext i16 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %6 = load i16, ptr %a, align 2
  %conv5 = zext i16 %6 to i32
  %add = add nsw i32 %conv5, %conv4
  %conv6 = trunc i32 %add to i16
  store i16 %conv6, ptr %a, align 2
  %7 = load i16, ptr %a, align 2
  %conv7 = zext i16 %7 to i32
  %8 = load i16, ptr %b, align 2
  %conv8 = zext i16 %8 to i32
  %add9 = add nsw i32 %conv8, %conv7
  %conv10 = trunc i32 %add9 to i16
  store i16 %conv10, ptr %b, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i16, ptr %i, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr %i, align 2
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %10 = load i16, ptr %a, align 2
  %conv11 = zext i16 %10 to i32
  %11 = load i16, ptr %b, align 2
  %conv12 = zext i16 %11 to i32
  %shl = shl i32 %conv12, 16
  %or = or i32 %conv11, %shl
  ret i32 %or
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_9(ptr noundef %pHash, ptr noundef %z)  alwaysinline#0 {
entry:
  %pHash.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %a = alloca i16, align 2
  %b = alloca i16, align 2
  %i = alloca i16, align 2
  store ptr %pHash, ptr %pHash.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i16
  store i16 %conv, ptr %b, align 2
  store i16 %conv, ptr %a, align 2
  store i16 1, ptr %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i16, ptr %i, align 2
  %conv1 = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %z.addr, align 8
  %4 = load i16, ptr %i, align 2
  %idxprom = zext i16 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %6 = load i16, ptr %a, align 2
  %conv5 = zext i16 %6 to i32
  %add = add nsw i32 %conv5, %conv4
  %conv6 = trunc i32 %add to i16
  store i16 %conv6, ptr %a, align 2
  %7 = load i16, ptr %a, align 2
  %conv7 = zext i16 %7 to i32
  %8 = load i16, ptr %b, align 2
  %conv8 = zext i16 %8 to i32
  %add9 = add nsw i32 %conv8, %conv7
  %conv10 = trunc i32 %add9 to i16
  store i16 %conv10, ptr %b, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i16, ptr %i, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr %i, align 2
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %pHash.addr, align 8
  %z11 = getelementptr inbounds %struct.hash, ptr %10, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i8], ptr %z11, i64 0, i64 0
  %11 = load ptr, ptr %z.addr, align 8
  %12 = load ptr, ptr %pHash.addr, align 8
  %z12 = getelementptr inbounds %struct.hash, ptr %12, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [16 x i8], ptr %z12, i64 0, i64 0
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay13, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %arraydecay, ptr noundef %11, i64 noundef 16, i64 noundef %13) #6
  %14 = load i16, ptr %a, align 2
  %conv14 = zext i16 %14 to i32
  %and = and i32 %conv14, 65535
  %conv15 = trunc i32 %and to i16
  %15 = load ptr, ptr %pHash.addr, align 8
  %a16 = getelementptr inbounds %struct.hash, ptr %15, i32 0, i32 0
  store i16 %conv15, ptr %a16, align 2
  %16 = load i16, ptr %b, align 2
  %conv17 = zext i16 %16 to i32
  %and18 = and i32 %conv17, 65535
  %conv19 = trunc i32 %and18 to i16
  %17 = load ptr, ptr %pHash.addr, align 8
  %b20 = getelementptr inbounds %struct.hash, ptr %17, i32 0, i32 1
  store i16 %conv19, ptr %b20, align 2
  %18 = load ptr, ptr %pHash.addr, align 8
  %i21 = getelementptr inbounds %struct.hash, ptr %18, i32 0, i32 2
  store i16 0, ptr %i21, align 2
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_10(ptr noundef %pHash)  alwaysinline#0 {
entry:
  %pHash.addr = alloca ptr, align 8
  store ptr %pHash, ptr %pHash.addr, align 8
  %0 = load ptr, ptr %pHash.addr, align 8
  %a = getelementptr inbounds %struct.hash, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %a, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 65535
  %2 = load ptr, ptr %pHash.addr, align 8
  %b = getelementptr inbounds %struct.hash, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %b, align 2
  %conv1 = zext i16 %3 to i32
  %and2 = and i32 %conv1, 65535
  %shl = shl i32 %and2, 16
  %or = or i32 %and, %shl
  ret i32 %or
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_11(i32 noundef %v)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  store i32 1, ptr %i, align 4
  store i32 64, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %v.addr, align 4
  %1 = load i32, ptr %x, align 4
  %cmp = icmp uge i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  %3 = load i32, ptr %x, align 4
  %shl = shl i32 %3, 6
  store i32 %shl, ptr %x, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  ret i32 %4
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_12(i32 noundef %v)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  store i32 1, ptr %i, align 4
  store i32 64, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %v.addr, align 4
  %1 = load i32, ptr %x, align 4
  %cmp = icmp uge i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  %3 = load i32, ptr %x, align 4
  %shl = shl i32 %3, 6
  store i32 %shl, ptr %x, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  ret i32 %4
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_13(i32 noundef %v)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  store i32 1, ptr %i, align 4
  store i32 64, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %v.addr, align 4
  %1 = load i32, ptr %x, align 4
  %cmp = icmp uge i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  %3 = load i32, ptr %x, align 4
  %shl = shl i32 %3, 6
  store i32 %shl, ptr %x, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  ret i32 %4
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_14(i32 noundef %v, ptr noundef %pz)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_14.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_15(i32 noundef %v, ptr noundef %pz)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_15.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_16(i32 noundef %v, ptr noundef %pz)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_16.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_17(i32 noundef %v, ptr noundef %pz)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_17.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_18(ptr noundef %pHash, i32 noundef %c)  alwaysinline#0 {
entry:
  %pHash.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %old = alloca i16, align 2
  store ptr %pHash, ptr %pHash.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load ptr, ptr %pHash.addr, align 8
  %z = getelementptr inbounds %struct.hash, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pHash.addr, align 8
  %i = getelementptr inbounds %struct.hash, ptr %1, i32 0, i32 2
  %2 = load i16, ptr %i, align 2
  %idxprom = zext i16 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i16
  store i16 %conv, ptr %old, align 2
  %4 = load i32, ptr %c.addr, align 4
  %conv1 = trunc i32 %4 to i8
  %5 = load ptr, ptr %pHash.addr, align 8
  %z2 = getelementptr inbounds %struct.hash, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %pHash.addr, align 8
  %i3 = getelementptr inbounds %struct.hash, ptr %6, i32 0, i32 2
  %7 = load i16, ptr %i3, align 2
  %idxprom4 = zext i16 %7 to i64
  %arrayidx5 = getelementptr inbounds [16 x i8], ptr %z2, i64 0, i64 %idxprom4
  store i8 %conv1, ptr %arrayidx5, align 1
  %8 = load ptr, ptr %pHash.addr, align 8
  %i6 = getelementptr inbounds %struct.hash, ptr %8, i32 0, i32 2
  %9 = load i16, ptr %i6, align 2
  %conv7 = zext i16 %9 to i32
  %add = add nsw i32 %conv7, 1
  %and = and i32 %add, 15
  %conv8 = trunc i32 %and to i16
  %10 = load ptr, ptr %pHash.addr, align 8
  %i9 = getelementptr inbounds %struct.hash, ptr %10, i32 0, i32 2
  store i16 %conv8, ptr %i9, align 2
  %11 = load ptr, ptr %pHash.addr, align 8
  %a = getelementptr inbounds %struct.hash, ptr %11, i32 0, i32 0
  %12 = load i16, ptr %a, align 2
  %conv10 = zext i16 %12 to i32
  %13 = load i16, ptr %old, align 2
  %conv11 = zext i16 %13 to i32
  %sub = sub nsw i32 %conv10, %conv11
  %14 = load i32, ptr %c.addr, align 4
  %add12 = add nsw i32 %sub, %14
  %conv13 = trunc i32 %add12 to i16
  %15 = load ptr, ptr %pHash.addr, align 8
  %a14 = getelementptr inbounds %struct.hash, ptr %15, i32 0, i32 0
  store i16 %conv13, ptr %a14, align 2
  %16 = load ptr, ptr %pHash.addr, align 8
  %b = getelementptr inbounds %struct.hash, ptr %16, i32 0, i32 1
  %17 = load i16, ptr %b, align 2
  %conv15 = zext i16 %17 to i32
  %18 = load i16, ptr %old, align 2
  %conv16 = zext i16 %18 to i32
  %mul = mul nsw i32 16, %conv16
  %sub17 = sub nsw i32 %conv15, %mul
  %19 = load ptr, ptr %pHash.addr, align 8
  %a18 = getelementptr inbounds %struct.hash, ptr %19, i32 0, i32 0
  %20 = load i16, ptr %a18, align 2
  %conv19 = zext i16 %20 to i32
  %add20 = add nsw i32 %sub17, %conv19
  %conv21 = trunc i32 %add20 to i16
  %21 = load ptr, ptr %pHash.addr, align 8
  %b22 = getelementptr inbounds %struct.hash, ptr %21, i32 0, i32 1
  store i16 %conv21, ptr %b22, align 2
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_19(i32 noundef %v, ptr noundef %pz)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_19.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_20(ptr noundef %zIn, i64 noundef %N)  alwaysinline#0 {
entry:
  %zIn.addr = alloca ptr, align 8
  %N.addr = alloca i64, align 8
  %z = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %sum = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  store ptr %zIn, ptr %zIn.addr, align 8
  store i64 %N, ptr %N.addr, align 8
  %0 = load ptr, ptr %zIn.addr, align 8
  store ptr %0, ptr %z, align 8
  %1 = load ptr, ptr %zIn.addr, align 8
  %2 = load i64, ptr %N.addr, align 8
  %and = and i64 %2, -4
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %and
  store ptr %arrayidx, ptr %zEnd, align 8
  store i32 0, ptr %sum, align 4
  %3 = load ptr, ptr %z, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %rem = srem i64 %sub.ptr.sub, 4
  %cmp = icmp eq i64 %rem, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.checksum, ptr noundef @.str.4, i32 noundef 222, ptr noundef @.str.7) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load i8, ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_20.byteOrderTest, align 4
  %conv1 = sext i8 %5 to i32
  %cmp2 = icmp eq i32 0, %conv1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load ptr, ptr %z, align 8
  %7 = load ptr, ptr %zEnd, align 8
  %cmp4 = icmp ult ptr %6, %7
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %sum, align 4
  %add = add i32 %10, %9
  store i32 %add, ptr %sum, align 4
  %11 = load ptr, ptr %z, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 4
  store ptr %add.ptr, ptr %z, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, ptr %sum0, align 4
  store i32 0, ptr %sum1, align 4
  store i32 0, ptr %sum2, align 4
  br label %while.cond6

while.cond6:                                      ; preds = %while.body9, %if.else
  %12 = load i64, ptr %N.addr, align 8
  %cmp7 = icmp uge i64 %12, 16
  br i1 %cmp7, label %while.body9, label %while.end59

while.body9:                                      ; preds = %while.cond6
  %13 = load ptr, ptr %z, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %15 = load ptr, ptr %z, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 4
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %add14 = add i32 %conv11, %conv13
  %17 = load ptr, ptr %z, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %17, i64 8
  %18 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %18 to i32
  %add17 = add i32 %add14, %conv16
  %19 = load ptr, ptr %z, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %19, i64 12
  %20 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %20 to i32
  %add20 = add i32 %add17, %conv19
  %21 = load i32, ptr %sum0, align 4
  %add21 = add i32 %21, %add20
  store i32 %add21, ptr %sum0, align 4
  %22 = load ptr, ptr %z, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %23 to i32
  %24 = load ptr, ptr %z, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %24, i64 5
  %25 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %25 to i32
  %add26 = add i32 %conv23, %conv25
  %26 = load ptr, ptr %z, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %26, i64 9
  %27 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %27 to i32
  %add29 = add i32 %add26, %conv28
  %28 = load ptr, ptr %z, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %28, i64 13
  %29 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %29 to i32
  %add32 = add i32 %add29, %conv31
  %30 = load i32, ptr %sum1, align 4
  %add33 = add i32 %30, %add32
  store i32 %add33, ptr %sum1, align 4
  %31 = load ptr, ptr %z, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %32 to i32
  %33 = load ptr, ptr %z, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %33, i64 6
  %34 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %34 to i32
  %add38 = add i32 %conv35, %conv37
  %35 = load ptr, ptr %z, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %35, i64 10
  %36 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %36 to i32
  %add41 = add i32 %add38, %conv40
  %37 = load ptr, ptr %z, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %37, i64 14
  %38 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %38 to i32
  %add44 = add i32 %add41, %conv43
  %39 = load i32, ptr %sum2, align 4
  %add45 = add i32 %39, %add44
  store i32 %add45, ptr %sum2, align 4
  %40 = load ptr, ptr %z, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %40, i64 3
  %41 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %41 to i32
  %42 = load ptr, ptr %z, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %42, i64 7
  %43 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %add50 = add i32 %conv47, %conv49
  %44 = load ptr, ptr %z, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %44, i64 11
  %45 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %45 to i32
  %add53 = add i32 %add50, %conv52
  %46 = load ptr, ptr %z, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %46, i64 15
  %47 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %47 to i32
  %add56 = add i32 %add53, %conv55
  %48 = load i32, ptr %sum, align 4
  %add57 = add i32 %48, %add56
  store i32 %add57, ptr %sum, align 4
  %49 = load ptr, ptr %z, align 8
  %add.ptr58 = getelementptr inbounds i8, ptr %49, i64 16
  store ptr %add.ptr58, ptr %z, align 8
  %50 = load i64, ptr %N.addr, align 8
  %sub = sub i64 %50, 16
  store i64 %sub, ptr %N.addr, align 8
  br label %while.cond6, !llvm.loop !15

while.end59:                                      ; preds = %while.cond6
  br label %while.cond60

while.cond60:                                     ; preds = %while.body63, %while.end59
  %51 = load i64, ptr %N.addr, align 8
  %cmp61 = icmp uge i64 %51, 4
  br i1 %cmp61, label %while.body63, label %while.end78

while.body63:                                     ; preds = %while.cond60
  %52 = load ptr, ptr %z, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %52, i64 0
  %53 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %53 to i32
  %54 = load i32, ptr %sum0, align 4
  %add66 = add i32 %54, %conv65
  store i32 %add66, ptr %sum0, align 4
  %55 = load ptr, ptr %z, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %55, i64 1
  %56 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %56 to i32
  %57 = load i32, ptr %sum1, align 4
  %add69 = add i32 %57, %conv68
  store i32 %add69, ptr %sum1, align 4
  %58 = load ptr, ptr %z, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %59 to i32
  %60 = load i32, ptr %sum2, align 4
  %add72 = add i32 %60, %conv71
  store i32 %add72, ptr %sum2, align 4
  %61 = load ptr, ptr %z, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %61, i64 3
  %62 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %62 to i32
  %63 = load i32, ptr %sum, align 4
  %add75 = add i32 %63, %conv74
  store i32 %add75, ptr %sum, align 4
  %64 = load ptr, ptr %z, align 8
  %add.ptr76 = getelementptr inbounds i8, ptr %64, i64 4
  store ptr %add.ptr76, ptr %z, align 8
  %65 = load i64, ptr %N.addr, align 8
  %sub77 = sub i64 %65, 4
  store i64 %sub77, ptr %N.addr, align 8
  br label %while.cond60, !llvm.loop !16

while.end78:                                      ; preds = %while.cond60
  %66 = load i32, ptr %sum2, align 4
  %shl = shl i32 %66, 8
  %67 = load i32, ptr %sum1, align 4
  %shl79 = shl i32 %67, 16
  %add80 = add i32 %shl, %shl79
  %68 = load i32, ptr %sum0, align 4
  %shl81 = shl i32 %68, 24
  %add82 = add i32 %add80, %shl81
  %69 = load i32, ptr %sum, align 4
  %add83 = add i32 %69, %add82
  store i32 %add83, ptr %sum, align 4
  br label %if.end

if.end:                                           ; preds = %while.end78, %while.end
  %70 = load i64, ptr %N.addr, align 8
  %and84 = and i64 %70, 3
  switch i64 %and84, label %sw.default [
    i64 3, label %sw.bb
    i64 2, label %sw.bb89
    i64 1, label %sw.bb94
  ]

sw.bb:                                            ; preds = %if.end
  %71 = load ptr, ptr %z, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %71, i64 2
  %72 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %72 to i32
  %shl87 = shl i32 %conv86, 8
  %73 = load i32, ptr %sum, align 4
  %add88 = add i32 %73, %shl87
  store i32 %add88, ptr %sum, align 4
  br label %sw.bb89

sw.bb89:                                          ; preds = %if.end, %sw.bb
  %74 = load ptr, ptr %z, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %74, i64 1
  %75 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %75 to i32
  %shl92 = shl i32 %conv91, 16
  %76 = load i32, ptr %sum, align 4
  %add93 = add i32 %76, %shl92
  store i32 %add93, ptr %sum, align 4
  br label %sw.bb94

sw.bb94:                                          ; preds = %if.end, %sw.bb89
  %77 = load ptr, ptr %z, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %77, i64 0
  %78 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %78 to i32
  %shl97 = shl i32 %conv96, 24
  %79 = load i32, ptr %sum, align 4
  %add98 = add i32 %79, %shl97
  store i32 %add98, ptr %sum, align 4
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb94
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %80 = load i32, ptr %sum, align 4
  ret i32 %80
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_21(i32 noundef %v, ptr noundef %pz)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  %pz.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zBuf = alloca [20 x i8], align 1
  store i32 %v, ptr %v.addr, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load i32, ptr %v.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pz.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 48, ptr %2, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %v.addr, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %v.addr, align 4
  %and = and i32 %4, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_21.zDigits, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %5, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %8 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %8, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %10, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = load ptr, ptr %pz.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr9, ptr %13, align 8
  store i8 %12, ptr %14, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %if.then, %for.cond4
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_22(ptr noundef %pz, ptr noundef %pLen)  alwaysinline#0 {
entry:
  %pz.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  %z = alloca ptr, align 8
  %zStart = alloca ptr, align 8
  store ptr %pz, ptr %pz.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  store i32 0, ptr %v, align 4
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  store ptr %2, ptr %zStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 127, %conv
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_22.zValue, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  store i32 %conv1, ptr %c, align 4
  %cmp = icmp sge i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %v, align 4
  %shl = shl i32 %6, 6
  %7 = load i32, ptr %c, align 4
  %add = add i32 %shl, %7
  store i32 %add, ptr %v, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %z, align 8
  %9 = load ptr, ptr %z, align 8
  %10 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load ptr, ptr %pLen.addr, align 8
  %12 = load i32, ptr %11, align 4
  %conv4 = sext i32 %12 to i64
  %sub = sub nsw i64 %conv4, %sub.ptr.sub
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %11, align 4
  %13 = load ptr, ptr %z, align 8
  %14 = load ptr, ptr %pz.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load i32, ptr %v, align 4
  ret i32 %15
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_23(ptr noundef %pz, ptr noundef %pLen)  alwaysinline#0 {
entry:
  %pz.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  %z = alloca ptr, align 8
  %zStart = alloca ptr, align 8
  store ptr %pz, ptr %pz.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  store i32 0, ptr %v, align 4
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  store ptr %2, ptr %zStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 127, %conv
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_23.zValue, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  store i32 %conv1, ptr %c, align 4
  %cmp = icmp sge i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %v, align 4
  %shl = shl i32 %6, 6
  %7 = load i32, ptr %c, align 4
  %add = add i32 %shl, %7
  store i32 %add, ptr %v, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %z, align 8
  %9 = load ptr, ptr %z, align 8
  %10 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load ptr, ptr %pLen.addr, align 8
  %12 = load i32, ptr %11, align 4
  %conv4 = sext i32 %12 to i64
  %sub = sub nsw i64 %conv4, %sub.ptr.sub
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %11, align 4
  %13 = load ptr, ptr %z, align 8
  %14 = load ptr, ptr %pz.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load i32, ptr %v, align 4
  ret i32 %15
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_24(ptr noundef %pz, ptr noundef %pLen)  alwaysinline#0 {
entry:
  %pz.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  %z = alloca ptr, align 8
  %zStart = alloca ptr, align 8
  store ptr %pz, ptr %pz.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  store i32 0, ptr %v, align 4
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  store ptr %2, ptr %zStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 127, %conv
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_24.zValue, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  store i32 %conv1, ptr %c, align 4
  %cmp = icmp sge i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %v, align 4
  %shl = shl i32 %6, 6
  %7 = load i32, ptr %c, align 4
  %add = add i32 %shl, %7
  store i32 %add, ptr %v, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %z, align 8
  %9 = load ptr, ptr %z, align 8
  %10 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load ptr, ptr %pLen.addr, align 8
  %12 = load i32, ptr %11, align 4
  %conv4 = sext i32 %12 to i64
  %sub = sub nsw i64 %conv4, %sub.ptr.sub
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %11, align 4
  %13 = load ptr, ptr %z, align 8
  %14 = load ptr, ptr %pz.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load i32, ptr %v, align 4
  ret i32 %15
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_25(ptr noundef %pz, ptr noundef %pLen)  alwaysinline#0 {
entry:
  %pz.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  %z = alloca ptr, align 8
  %zStart = alloca ptr, align 8
  store ptr %pz, ptr %pz.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  store i32 0, ptr %v, align 4
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  store ptr %2, ptr %zStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 127, %conv
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_25.zValue, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  store i32 %conv1, ptr %c, align 4
  %cmp = icmp sge i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %v, align 4
  %shl = shl i32 %6, 6
  %7 = load i32, ptr %c, align 4
  %add = add i32 %shl, %7
  store i32 %add, ptr %v, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %z, align 8
  %9 = load ptr, ptr %z, align 8
  %10 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load ptr, ptr %pLen.addr, align 8
  %12 = load i32, ptr %11, align 4
  %conv4 = sext i32 %12 to i64
  %sub = sub nsw i64 %conv4, %sub.ptr.sub
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %11, align 4
  %13 = load ptr, ptr %z, align 8
  %14 = load ptr, ptr %pz.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load i32, ptr %v, align 4
  ret i32 %15
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_26(ptr noundef %pz, ptr noundef %pLen)  alwaysinline#0 {
entry:
  %pz.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  %z = alloca ptr, align 8
  %zStart = alloca ptr, align 8
  store ptr %pz, ptr %pz.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  store i32 0, ptr %v, align 4
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  store ptr %2, ptr %zStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 127, %conv
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_26.zValue, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  store i32 %conv1, ptr %c, align 4
  %cmp = icmp sge i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %v, align 4
  %shl = shl i32 %6, 6
  %7 = load i32, ptr %c, align 4
  %add = add i32 %shl, %7
  store i32 %add, ptr %v, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %z, align 8
  %9 = load ptr, ptr %z, align 8
  %10 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load ptr, ptr %pLen.addr, align 8
  %12 = load i32, ptr %11, align 4
  %conv4 = sext i32 %12 to i64
  %sub = sub nsw i64 %conv4, %sub.ptr.sub
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %11, align 4
  %13 = load ptr, ptr %z, align 8
  %14 = load ptr, ptr %pz.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load i32, ptr %v, align 4
  ret i32 %15
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_27(ptr noundef %pz, ptr noundef %pLen)  alwaysinline#0 {
entry:
  %pz.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  %z = alloca ptr, align 8
  %zStart = alloca ptr, align 8
  store ptr %pz, ptr %pz.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  store i32 0, ptr %v, align 4
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  store ptr %2, ptr %zStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 127, %conv
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_27.zValue, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  store i32 %conv1, ptr %c, align 4
  %cmp = icmp sge i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %v, align 4
  %shl = shl i32 %6, 6
  %7 = load i32, ptr %c, align 4
  %add = add i32 %shl, %7
  store i32 %add, ptr %v, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %z, align 8
  %9 = load ptr, ptr %z, align 8
  %10 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load ptr, ptr %pLen.addr, align 8
  %12 = load i32, ptr %11, align 4
  %conv4 = sext i32 %12 to i64
  %sub = sub nsw i64 %conv4, %sub.ptr.sub
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %11, align 4
  %13 = load ptr, ptr %z, align 8
  %14 = load ptr, ptr %pz.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load i32, ptr %v, align 4
  ret i32 %15
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_28(ptr noundef %pz, ptr noundef %pLen)  alwaysinline#0 {
entry:
  %pz.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  %z = alloca ptr, align 8
  %zStart = alloca ptr, align 8
  store ptr %pz, ptr %pz.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  store i32 0, ptr %v, align 4
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  store ptr %2, ptr %zStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 127, %conv
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fossildelta_28.zValue, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %5 to i32
  store i32 %conv1, ptr %c, align 4
  %cmp = icmp sge i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %v, align 4
  %shl = shl i32 %6, 6
  %7 = load i32, ptr %c, align 4
  %add = add i32 %shl, %7
  store i32 %add, ptr %v, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %z, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %z, align 8
  %9 = load ptr, ptr %z, align 8
  %10 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load ptr, ptr %pLen.addr, align 8
  %12 = load i32, ptr %11, align 4
  %conv4 = sext i32 %12 to i64
  %sub = sub nsw i64 %conv4, %sub.ptr.sub
  %conv5 = trunc i64 %sub to i32
  store i32 %conv5, ptr %11, align 4
  %13 = load ptr, ptr %z, align 8
  %14 = load ptr, ptr %pz.addr, align 8
  store ptr %13, ptr %14, align 8
  %15 = load i32, ptr %v, align 4
  ret i32 %15
}

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
