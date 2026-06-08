; ModuleID = './out/rewritten_ir/student_random_forest/source_snapshot_public_repos_sqlite_ext_misc_fossildelta.prepared.ll'
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
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 0, ptr %rc, align 4
  %call = call i32 @sqlite3_create_function(ptr noundef %db, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 2097153, ptr noundef null, ptr noundef nonnull @deltaCreateFunc, ptr noundef null, ptr noundef null) #5
  store i32 %call, ptr %rc, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef 2097153, ptr noundef null, ptr noundef nonnull @deltaApplyFunc, ptr noundef null, ptr noundef null) #5
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %db.addr, align 8
  %call4 = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 2097153, ptr noundef null, ptr noundef nonnull @deltaOutputSizeFunc, ptr noundef null, ptr noundef null) #5
  store i32 %call4, ptr %rc, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %4 = load ptr, ptr %db.addr, align 8
  %call8 = call i32 @sqlite3_create_module(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @deltaparsevtabModule, ptr noundef null) #5
  store i32 %call8, ptr %rc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %5 = load i32, ptr %rc, align 4
  ret i32 %5
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @deltaCreateFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %aOrig = alloca ptr, align 8
  %nOrig = alloca i32, align 4
  %aNew = alloca ptr, align 8
  %nNew = alloca i32, align 4
  %aOut = alloca ptr, align 8
  %nOut = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store ptr %argv, ptr %argv.addr, align 8
  %cmp.not = icmp eq i32 %argc, 2
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.deltaCreateFunc, ptr noundef nonnull @.str.4, i32 noundef 651, ptr noundef nonnull @.str.5) #6
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %argv.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %1) #5
  %cmp1 = icmp eq i32 %call, 5
  br i1 %cmp1, label %if.end28, label %if.end

if.end:                                           ; preds = %cond.end
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @sqlite3_value_type(ptr noundef %3) #5
  %cmp5 = icmp eq i32 %call4, 5
  br i1 %cmp5, label %if.end28, label %if.end8

if.end8:                                          ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %call10 = call i32 @sqlite3_value_bytes(ptr noundef %5) #5
  store i32 %call10, ptr %nOrig, align 4
  %6 = load ptr, ptr %4, align 8
  %call12 = call ptr @sqlite3_value_blob(ptr noundef %6) #5
  store ptr %call12, ptr %aOrig, align 8
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @sqlite3_value_bytes(ptr noundef %8) #5
  store i32 %call14, ptr %nNew, align 4
  %arrayidx15 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr @sqlite3_value_blob(ptr noundef %9) #5
  store ptr %call16, ptr %aNew, align 8
  %add = add nsw i32 %call14, 70
  %conv17 = sext i32 %add to i64
  %call18 = call ptr @sqlite3_malloc64(i64 noundef %conv17) #5
  store ptr %call18, ptr %aOut, align 8
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end8
  %10 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %10) #5
  br label %if.end28

if.else:                                          ; preds = %if.end8
  %11 = load ptr, ptr %aOrig, align 8
  %12 = load i32, ptr %nOrig, align 4
  %13 = load ptr, ptr %aNew, align 8
  %14 = load i32, ptr %nNew, align 4
  %15 = load ptr, ptr %aOut, align 8
  %call22 = call i32 @delta_create(ptr noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef %14, ptr noundef %15)
  store i32 %call22, ptr %nOut, align 4
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else
  %16 = load ptr, ptr %aOut, align 8
  call void @sqlite3_free(ptr noundef %16) #5
  %17 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef -1) #5
  br label %if.end28

if.else26:                                        ; preds = %if.else
  %18 = load ptr, ptr %context.addr, align 8
  %19 = load ptr, ptr %aOut, align 8
  %20 = load i32, ptr %nOut, align 4
  call void @sqlite3_result_blob(ptr noundef %18, ptr noundef %19, i32 noundef %20, ptr noundef nonnull @sqlite3_free) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.else26, %if.end, %cond.end, %if.then21
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @deltaApplyFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %aOrig = alloca ptr, align 8
  %nOrig = alloca i32, align 4
  %aDelta = alloca ptr, align 8
  %nDelta = alloca i32, align 4
  %aOut = alloca ptr, align 8
  %nOut = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store ptr %argv, ptr %argv.addr, align 8
  %cmp.not = icmp eq i32 %argc, 2
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.deltaApplyFunc, ptr noundef nonnull @.str.4, i32 noundef 686, ptr noundef nonnull @.str.5) #6
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %argv.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %1) #5
  %cmp1 = icmp eq i32 %call, 5
  br i1 %cmp1, label %if.end33, label %if.end

if.end:                                           ; preds = %cond.end
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @sqlite3_value_type(ptr noundef %3) #5
  %cmp5 = icmp eq i32 %call4, 5
  br i1 %cmp5, label %if.end33, label %if.end8

if.end8:                                          ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %call10 = call i32 @sqlite3_value_bytes(ptr noundef %5) #5
  store i32 %call10, ptr %nOrig, align 4
  %6 = load ptr, ptr %4, align 8
  %call12 = call ptr @sqlite3_value_blob(ptr noundef %6) #5
  store ptr %call12, ptr %aOrig, align 8
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @sqlite3_value_bytes(ptr noundef %8) #5
  store i32 %call14, ptr %nDelta, align 4
  %arrayidx15 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr @sqlite3_value_blob(ptr noundef %9) #5
  store ptr %call16, ptr %aDelta, align 8
  %call17 = call i32 @delta_output_size(ptr noundef %call16, i32 noundef %call14)
  store i32 %call17, ptr %nOut, align 4
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end8
  %10 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef -1) #5
  br label %if.end33

if.end21:                                         ; preds = %if.end8
  %11 = load i32, ptr %nOut, align 4
  %conv22 = sext i32 %11 to i64
  %add = add nsw i64 %conv22, 1
  %call23 = call ptr @sqlite3_malloc64(i64 noundef %add) #5
  store ptr %call23, ptr %aOut, align 8
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end21
  %12 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %12) #5
  br label %if.end33

if.else:                                          ; preds = %if.end21
  %13 = load ptr, ptr %aOrig, align 8
  %14 = load i32, ptr %nOrig, align 4
  %15 = load ptr, ptr %aDelta, align 8
  %16 = load i32, ptr %nDelta, align 4
  %17 = load ptr, ptr %aOut, align 8
  %call27 = call i32 @delta_apply(ptr noundef %13, i32 noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %17)
  %18 = load i32, ptr %nOut, align 4
  %cmp28.not = icmp eq i32 %call27, %18
  br i1 %cmp28.not, label %if.else31, label %if.then30

if.then30:                                        ; preds = %if.else
  %19 = load ptr, ptr %aOut, align 8
  call void @sqlite3_free(ptr noundef %19) #5
  %20 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef -1) #5
  br label %if.end33

if.else31:                                        ; preds = %if.else
  %21 = load ptr, ptr %context.addr, align 8
  %22 = load ptr, ptr %aOut, align 8
  %23 = load i32, ptr %nOut, align 4
  call void @sqlite3_result_blob(ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef nonnull @sqlite3_free) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.else31, %if.end, %cond.end, %if.then26, %if.then20
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @deltaOutputSizeFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %nOut = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store ptr %argv, ptr %argv.addr, align 8
  %cmp.not = icmp eq i32 %argc, 1
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.deltaOutputSizeFunc, ptr noundef nonnull @.str.4, i32 noundef 727, ptr noundef nonnull @.str.9) #6
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %argv.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %1) #5
  %cmp1 = icmp eq i32 %call, 5
  br i1 %cmp1, label %if.end11, label %if.end

if.end:                                           ; preds = %cond.end
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %call4 = call i32 @sqlite3_value_bytes(ptr noundef %3) #5
  %4 = load ptr, ptr %2, align 8
  %call6 = call ptr @sqlite3_value_blob(ptr noundef %4) #5
  %call7 = call i32 @delta_output_size(ptr noundef %call6, i32 noundef %call4)
  store i32 %call7, ptr %nOut, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %5 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef -1) #5
  br label %if.end11

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %context.addr, align 8
  %7 = load i32, ptr %nOut, align 4
  call void @sqlite3_result_int(ptr noundef %6, i32 noundef %7) #5
  br label %if.end11

if.end11:                                         ; preds = %cond.end, %if.else, %if.then10
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
  %limit = alloca i32, align 4
  %cnt = alloca i32, align 4
  %ofst = alloca i32, align 4
  %litsz = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %limitX = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %lenSrc, ptr %lenSrc.addr, align 4
  store ptr %zOut, ptr %zOut.addr, align 8
  store i32 %lenOut, ptr %lenOut.addr, align 4
  store ptr %zDelta, ptr %zDelta.addr, align 8
  store ptr %zDelta, ptr %zOrigDelta, align 8
  store i32 -1, ptr %lastRead, align 4
  call void @putInt(i32 noundef %lenOut, ptr noundef nonnull %zDelta.addr)
  %0 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %zDelta.addr, align 8
  store i8 10, ptr %0, align 1
  %1 = load i32, ptr %lenSrc.addr, align 4
  %cmp = icmp ult i32 %1, 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %lenOut.addr, align 4
  call void @putInt(i32 noundef %2, ptr noundef nonnull %zDelta.addr)
  %3 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr1, ptr %zDelta.addr, align 8
  store i8 58, ptr %3, align 1
  %4 = load ptr, ptr %zDelta.addr, align 8
  %5 = load ptr, ptr %zOut.addr, align 8
  %6 = load i32, ptr %lenOut.addr, align 4
  %conv = zext i32 %6 to i64
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef %conv, i64 noundef %7) #5
  %8 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  store ptr %add.ptr, ptr %zDelta.addr, align 8
  %9 = load ptr, ptr %zOut.addr, align 8
  %10 = load i32, ptr %lenOut.addr, align 4
  %conv2 = zext i32 %10 to i64
  %call3 = call i32 @checksum(ptr noundef %9, i64 noundef %conv2)
  call void @putInt(i32 noundef %call3, ptr noundef nonnull %zDelta.addr)
  %11 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr4, ptr %zDelta.addr, align 8
  store i8 59, ptr %11, align 1
  %12 = load ptr, ptr %zDelta.addr, align 8
  %13 = load ptr, ptr %zOrigDelta, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i32, ptr %lenSrc.addr, align 4
  %div1 = lshr i32 %14, 4
  store i32 %div1, ptr %nHash, align 4
  %15 = shl nuw nsw i32 %div1, 3
  %mul7 = zext i32 %15 to i64
  %call8 = call ptr @sqlite3_malloc64(i64 noundef %mul7) #5
  store ptr %call8, ptr %collide, align 8
  %mul9 = shl nuw nsw i32 %div1, 3
  %mul11 = zext i32 %mul9 to i64
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %call8, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memset_chk(ptr noundef %call8, i32 noundef -1, i64 noundef %mul11, i64 noundef %16) #5
  %17 = load i32, ptr %nHash, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i32, ptr %call8, i64 %idxprom
  store ptr %arrayidx, ptr %landmark, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %add, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %18 = load i32, ptr %lenSrc.addr, align 4
  %sub = add i32 %18, -16
  %cmp13 = icmp ult i32 %storemerge, %sub
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %zSrc.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %19, i64 %idxprom15
  %call17 = call i32 @hash_once(ptr noundef %arrayidx16)
  %21 = load i32, ptr %nHash, align 4
  %rem = urem i32 %call17, %21
  store i32 %rem, ptr %hv, align 4
  %22 = load ptr, ptr %landmark, align 8
  %idxprom18 = sext i32 %rem to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %22, i64 %idxprom18
  %23 = load i32, ptr %arrayidx19, align 4
  %24 = load ptr, ptr %collide, align 8
  %25 = load i32, ptr %i, align 4
  %div20 = sdiv i32 %25, 16
  %idxprom21 = sext i32 %div20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %24, i64 %idxprom21
  store i32 %23, ptr %arrayidx22, align 4
  %div23 = sdiv i32 %25, 16
  %26 = load ptr, ptr %landmark, align 8
  %27 = load i32, ptr %hv, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %26, i64 %idxprom24
  store i32 %div23, ptr %arrayidx25, align 4
  %28 = load i32, ptr %i, align 4
  %add = add nsw i32 %28, 16
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %base, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end165, %for.end
  %29 = load i32, ptr %base, align 4
  %add26 = add nsw i32 %29, 16
  %30 = load i32, ptr %lenOut.addr, align 4
  %cmp27 = icmp ult i32 %add26, %30
  br i1 %cmp27, label %while.body, label %while.end166

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %bestOfst, align 4
  store i32 0, ptr %bestLitsz, align 4
  %31 = load ptr, ptr %zOut.addr, align 8
  %32 = load i32, ptr %base, align 4
  %idxprom29 = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %31, i64 %idxprom29
  call void @hash_init(ptr noundef nonnull %h, ptr noundef %arrayidx30)
  store i32 0, ptr %i, align 4
  store i32 0, ptr %bestCnt, align 4
  br label %while.body32

while.body32:                                     ; preds = %if.end158, %while.body
  store i32 250, ptr %limit, align 4
  %call34 = call i32 @hash_32bit(ptr noundef nonnull %h)
  %33 = load i32, ptr %nHash, align 4
  %rem35 = urem i32 %call34, %33
  %34 = load ptr, ptr %landmark, align 8
  %idxprom36 = sext i32 %rem35 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %34, i64 %idxprom36
  br label %while.cond38

while.cond38:                                     ; preds = %if.end113, %while.body32
  %storemerge3.in = phi ptr [ %arrayidx37, %while.body32 ], [ %arrayidx115, %if.end113 ]
  %storemerge3 = load i32, ptr %storemerge3.in, align 4
  store i32 %storemerge3, ptr %iBlock, align 4
  %cmp39 = icmp sgt i32 %storemerge3, -1
  br i1 %cmp39, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond38
  %35 = load i32, ptr %limit, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, ptr %limit, align 4
  %cmp41 = icmp sgt i32 %35, 0
  br i1 %cmp41, label %while.body43, label %while.end

while.body43:                                     ; preds = %land.rhs
  %36 = load i32, ptr %iBlock, align 4
  %mul44 = shl nsw i32 %36, 4
  store i32 %mul44, ptr %iSrc, align 4
  %37 = load i32, ptr %base, align 4
  %38 = load i32, ptr %i, align 4
  %add45 = add nsw i32 %37, %38
  store i32 %add45, ptr %y, align 4
  %39 = load i32, ptr %lenSrc.addr, align 4
  %sub46 = sub i32 %39, %mul44
  %40 = load i32, ptr %lenOut.addr, align 4
  %sub47 = sub i32 %40, %add45
  %cmp48.not = icmp ugt i32 %sub46, %sub47
  br i1 %cmp48.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body43
  %41 = load i32, ptr %lenSrc.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body43
  %42 = load i32, ptr %iSrc, align 4
  %43 = load i32, ptr %lenOut.addr, align 4
  %add50 = add i32 %42, %43
  %44 = load i32, ptr %y, align 4
  %sub51 = sub i32 %add50, %44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %41, %cond.true ], [ %sub51, %cond.false ]
  store i32 %cond, ptr %limitX, align 4
  %45 = load i32, ptr %iSrc, align 4
  store i32 %45, ptr %x, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc66, %cond.end
  %46 = load i32, ptr %x, align 4
  %47 = load i32, ptr %limitX, align 4
  %cmp53 = icmp slt i32 %46, %47
  br i1 %cmp53, label %for.body55, label %for.end68

for.body55:                                       ; preds = %for.cond52
  %48 = load ptr, ptr %zSrc.addr, align 8
  %49 = load i32, ptr %x, align 4
  %idxprom56 = sext i32 %49 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %48, i64 %idxprom56
  %50 = load i8, ptr %arrayidx57, align 1
  %51 = load ptr, ptr %zOut.addr, align 8
  %52 = load i32, ptr %y, align 4
  %idxprom59 = sext i32 %52 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %51, i64 %idxprom59
  %53 = load i8, ptr %arrayidx60, align 1
  %cmp62.not = icmp eq i8 %50, %53
  br i1 %cmp62.not, label %for.inc66, label %for.end68

for.inc66:                                        ; preds = %for.body55
  %54 = load i32, ptr %x, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %x, align 4
  %55 = load i32, ptr %y, align 4
  %inc67 = add nsw i32 %55, 1
  store i32 %inc67, ptr %y, align 4
  br label %for.cond52, !llvm.loop !8

for.end68:                                        ; preds = %for.body55, %for.cond52
  %56 = load i32, ptr %x, align 4
  %57 = load i32, ptr %iSrc, align 4
  %58 = xor i32 %57, -1
  %sub70 = add i32 %56, %58
  store i32 %sub70, ptr %j, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc92, %for.end68
  %storemerge4 = phi i32 [ 1, %for.end68 ], [ %inc93, %for.inc92 ]
  store i32 %storemerge4, ptr %k, align 4
  %59 = load i32, ptr %iSrc, align 4
  %cmp72 = icmp slt i32 %storemerge4, %59
  %60 = load i32, ptr %k, align 4
  %61 = load i32, ptr %i, align 4
  %cmp75 = icmp sle i32 %60, %61
  %62 = select i1 %cmp72, i1 %cmp75, i1 false
  br i1 %62, label %for.body78, label %for.end94

for.body78:                                       ; preds = %for.cond71
  %63 = load ptr, ptr %zSrc.addr, align 8
  %64 = load i32, ptr %iSrc, align 4
  %65 = load i32, ptr %k, align 4
  %sub79 = sub nsw i32 %64, %65
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %63, i64 %idxprom80
  %66 = load i8, ptr %arrayidx81, align 1
  %67 = load ptr, ptr %zOut.addr, align 8
  %68 = load i32, ptr %base, align 4
  %69 = load i32, ptr %i, align 4
  %add83 = add nsw i32 %68, %69
  %70 = load i32, ptr %k, align 4
  %sub84 = sub nsw i32 %add83, %70
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %67, i64 %idxprom85
  %71 = load i8, ptr %arrayidx86, align 1
  %cmp88.not = icmp eq i8 %66, %71
  br i1 %cmp88.not, label %for.inc92, label %for.end94

for.inc92:                                        ; preds = %for.body78
  %72 = load i32, ptr %k, align 4
  %inc93 = add nsw i32 %72, 1
  br label %for.cond71, !llvm.loop !9

for.end94:                                        ; preds = %for.body78, %for.cond71
  %73 = load i32, ptr %k, align 4
  %dec95 = add nsw i32 %73, -1
  store i32 %dec95, ptr %k, align 4
  %74 = load i32, ptr %iSrc, align 4
  %sub96 = sub nsw i32 %74, %dec95
  store i32 %sub96, ptr %ofst, align 4
  %75 = load i32, ptr %j, align 4
  %add98 = add i32 %75, %73
  store i32 %add98, ptr %cnt, align 4
  %76 = load i32, ptr %i, align 4
  %77 = load i32, ptr %k, align 4
  %sub99 = sub nsw i32 %76, %77
  store i32 %sub99, ptr %litsz, align 4
  %sub100 = sub nsw i32 %76, %77
  %call101 = call i32 @digit_count(i32 noundef %sub100)
  %78 = load i32, ptr %cnt, align 4
  %call102 = call i32 @digit_count(i32 noundef %78)
  %add103 = add nsw i32 %call101, %call102
  %79 = load i32, ptr %ofst, align 4
  %call104 = call i32 @digit_count(i32 noundef %79)
  %add105 = add nsw i32 %add103, %call104
  %add106 = add nsw i32 %add105, 3
  %80 = load i32, ptr %cnt, align 4
  %cmp107.not = icmp slt i32 %80, %add106
  br i1 %cmp107.not, label %if.end113, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end94
  %81 = load i32, ptr %cnt, align 4
  %82 = load i32, ptr %bestCnt, align 4
  %cmp109 = icmp ugt i32 %81, %82
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %land.lhs.true
  %83 = load i32, ptr %cnt, align 4
  store i32 %83, ptr %bestCnt, align 4
  %84 = load i32, ptr %iSrc, align 4
  %85 = load i32, ptr %k, align 4
  %sub112 = sub nsw i32 %84, %85
  store i32 %sub112, ptr %bestOfst, align 4
  %86 = load i32, ptr %litsz, align 4
  store i32 %86, ptr %bestLitsz, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %land.lhs.true, %for.end94
  %87 = load ptr, ptr %collide, align 8
  %88 = load i32, ptr %iBlock, align 4
  %idxprom114 = sext i32 %88 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %87, i64 %idxprom114
  br label %while.cond38, !llvm.loop !10

while.end:                                        ; preds = %while.cond38, %land.rhs
  %89 = load i32, ptr %bestCnt, align 4
  %cmp116.not = icmp eq i32 %89, 0
  br i1 %cmp116.not, label %if.end142, label %if.then118

if.then118:                                       ; preds = %while.end
  %90 = load i32, ptr %bestLitsz, align 4
  %cmp119.not = icmp eq i32 %90, 0
  br i1 %cmp119.not, label %if.end130, label %if.then121

if.then121:                                       ; preds = %if.then118
  %91 = load i32, ptr %bestLitsz, align 4
  call void @putInt(i32 noundef %91, ptr noundef nonnull %zDelta.addr)
  %92 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %incdec.ptr122, ptr %zDelta.addr, align 8
  store i8 58, ptr %92, align 1
  %93 = load ptr, ptr %zDelta.addr, align 8
  %94 = load ptr, ptr %zOut.addr, align 8
  %95 = load i32, ptr %base, align 4
  %idxprom123 = sext i32 %95 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %94, i64 %idxprom123
  %96 = load i32, ptr %bestLitsz, align 4
  %conv125 = zext i32 %96 to i64
  %97 = load ptr, ptr %zDelta.addr, align 8
  %98 = call i64 @llvm.objectsize.i64.p0(ptr %97, i1 false, i1 true, i1 false)
  %call126 = call ptr @__memcpy_chk(ptr noundef %93, ptr noundef %arrayidx124, i64 noundef %conv125, i64 noundef %98) #5
  %99 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext127 = zext i32 %96 to i64
  %add.ptr128 = getelementptr inbounds i8, ptr %99, i64 %idx.ext127
  store ptr %add.ptr128, ptr %zDelta.addr, align 8
  %100 = load i32, ptr %bestLitsz, align 4
  %101 = load i32, ptr %base, align 4
  %add129 = add i32 %101, %100
  store i32 %add129, ptr %base, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then121, %if.then118
  %102 = load i32, ptr %bestCnt, align 4
  %103 = load i32, ptr %base, align 4
  %add131 = add i32 %103, %102
  store i32 %add131, ptr %base, align 4
  call void @putInt(i32 noundef %102, ptr noundef nonnull %zDelta.addr)
  %104 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr132 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %incdec.ptr132, ptr %zDelta.addr, align 8
  store i8 64, ptr %104, align 1
  %105 = load i32, ptr %bestOfst, align 4
  call void @putInt(i32 noundef %105, ptr noundef nonnull %zDelta.addr)
  %106 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %106, i64 1
  store ptr %incdec.ptr133, ptr %zDelta.addr, align 8
  store i8 44, ptr %106, align 1
  %107 = load i32, ptr %bestCnt, align 4
  %add134 = add i32 %105, %107
  %sub135 = add i32 %add134, -1
  %108 = load i32, ptr %lastRead, align 4
  %cmp136 = icmp ugt i32 %sub135, %108
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end130
  %109 = load i32, ptr %bestOfst, align 4
  %110 = load i32, ptr %bestCnt, align 4
  %add139 = add i32 %109, %110
  %sub140 = add i32 %add139, -1
  store i32 %sub140, ptr %lastRead, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end130
  store i32 0, ptr %bestCnt, align 4
  br label %while.end165

if.end142:                                        ; preds = %while.end
  %111 = load i32, ptr %base, align 4
  %112 = load i32, ptr %i, align 4
  %add143 = add nsw i32 %111, %112
  %add144 = add nsw i32 %add143, 16
  %113 = load i32, ptr %lenOut.addr, align 4
  %cmp145.not = icmp ult i32 %add144, %113
  br i1 %cmp145.not, label %if.end158, label %if.then147

if.then147:                                       ; preds = %if.end142
  %114 = load i32, ptr %lenOut.addr, align 4
  %115 = load i32, ptr %base, align 4
  %sub148 = sub i32 %114, %115
  call void @putInt(i32 noundef %sub148, ptr noundef nonnull %zDelta.addr)
  %116 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr149 = getelementptr inbounds i8, ptr %116, i64 1
  store ptr %incdec.ptr149, ptr %zDelta.addr, align 8
  store i8 58, ptr %116, align 1
  %117 = load ptr, ptr %zDelta.addr, align 8
  %118 = load ptr, ptr %zOut.addr, align 8
  %119 = load i32, ptr %base, align 4
  %idxprom150 = sext i32 %119 to i64
  %arrayidx151 = getelementptr inbounds i8, ptr %118, i64 %idxprom150
  %120 = load i32, ptr %lenOut.addr, align 4
  %sub152 = sub i32 %120, %119
  %conv153 = zext i32 %sub152 to i64
  %121 = load ptr, ptr %zDelta.addr, align 8
  %122 = call i64 @llvm.objectsize.i64.p0(ptr %121, i1 false, i1 true, i1 false)
  %call154 = call ptr @__memcpy_chk(ptr noundef %117, ptr noundef %arrayidx151, i64 noundef %conv153, i64 noundef %122) #5
  %123 = load i32, ptr %base, align 4
  %sub155 = sub i32 %120, %123
  %124 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext156 = zext i32 %sub155 to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %124, i64 %idx.ext156
  store ptr %add.ptr157, ptr %zDelta.addr, align 8
  %125 = load i32, ptr %lenOut.addr, align 4
  store i32 %125, ptr %base, align 4
  br label %while.end165

if.end158:                                        ; preds = %if.end142
  %126 = load ptr, ptr %zOut.addr, align 8
  %127 = load i32, ptr %base, align 4
  %128 = load i32, ptr %i, align 4
  %add159 = add nsw i32 %127, %128
  %add160 = add nsw i32 %add159, 16
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds i8, ptr %126, i64 %idxprom161
  %129 = load i8, ptr %arrayidx162, align 1
  %conv163 = sext i8 %129 to i32
  call void @hash_next(ptr noundef nonnull %h, i32 noundef %conv163)
  %130 = load i32, ptr %i, align 4
  %inc164 = add nsw i32 %130, 1
  store i32 %inc164, ptr %i, align 4
  br label %while.body32

while.end165:                                     ; preds = %if.then147, %if.end141
  br label %while.cond, !llvm.loop !11

while.end166:                                     ; preds = %while.cond
  %131 = load i32, ptr %base, align 4
  %132 = load i32, ptr %lenOut.addr, align 4
  %cmp167 = icmp ult i32 %131, %132
  br i1 %cmp167, label %if.then169, label %if.end180

if.then169:                                       ; preds = %while.end166
  %133 = load i32, ptr %lenOut.addr, align 4
  %134 = load i32, ptr %base, align 4
  %sub170 = sub i32 %133, %134
  call void @putInt(i32 noundef %sub170, ptr noundef nonnull %zDelta.addr)
  %135 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr171 = getelementptr inbounds i8, ptr %135, i64 1
  store ptr %incdec.ptr171, ptr %zDelta.addr, align 8
  store i8 58, ptr %135, align 1
  %136 = load ptr, ptr %zDelta.addr, align 8
  %137 = load ptr, ptr %zOut.addr, align 8
  %138 = load i32, ptr %base, align 4
  %idxprom172 = sext i32 %138 to i64
  %arrayidx173 = getelementptr inbounds i8, ptr %137, i64 %idxprom172
  %139 = load i32, ptr %lenOut.addr, align 4
  %sub174 = sub i32 %139, %138
  %conv175 = zext i32 %sub174 to i64
  %140 = load ptr, ptr %zDelta.addr, align 8
  %141 = call i64 @llvm.objectsize.i64.p0(ptr %140, i1 false, i1 true, i1 false)
  %call176 = call ptr @__memcpy_chk(ptr noundef %136, ptr noundef %arrayidx173, i64 noundef %conv175, i64 noundef %141) #5
  %142 = load i32, ptr %base, align 4
  %sub177 = sub i32 %139, %142
  %143 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext178 = zext i32 %sub177 to i64
  %add.ptr179 = getelementptr inbounds i8, ptr %143, i64 %idx.ext178
  store ptr %add.ptr179, ptr %zDelta.addr, align 8
  br label %if.end180

if.end180:                                        ; preds = %if.then169, %while.end166
  %144 = load ptr, ptr %zOut.addr, align 8
  %145 = load i32, ptr %lenOut.addr, align 4
  %conv181 = zext i32 %145 to i64
  %call182 = call i32 @checksum(ptr noundef %144, i64 noundef %conv181)
  call void @putInt(i32 noundef %call182, ptr noundef nonnull %zDelta.addr)
  %146 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr183 = getelementptr inbounds i8, ptr %146, i64 1
  store ptr %incdec.ptr183, ptr %zDelta.addr, align 8
  store i8 59, ptr %146, align 1
  %147 = load ptr, ptr %collide, align 8
  call void @sqlite3_free(ptr noundef %147) #5
  %148 = load ptr, ptr %zDelta.addr, align 8
  %149 = load ptr, ptr %zOrigDelta, align 8
  %sub.ptr.lhs.cast184 = ptrtoint ptr %148 to i64
  %sub.ptr.rhs.cast185 = ptrtoint ptr %149 to i64
  %sub.ptr.sub186 = sub i64 %sub.ptr.lhs.cast184, %sub.ptr.rhs.cast185
  br label %return

return:                                           ; preds = %if.end180, %if.then
  %storemerge2.in = phi i64 [ %sub.ptr.sub186, %if.end180 ], [ %sub.ptr.sub, %if.then ]
  %storemerge2 = trunc i64 %storemerge2.in to i32
  ret i32 %storemerge2
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
  %cmp = icmp eq i32 %v, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %0, align 8
  store i8 48, ptr %1, align 1
  br label %for.end11

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %2 = load i32, ptr %v.addr, align 4
  %cmp1.not = icmp eq i32 %2, 0
  br i1 %cmp1.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %v.addr, align 4
  %and = and i32 %3, 63
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @putInt.zDigits, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %5 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom2
  store i8 %4, ptr %arrayidx3, align 1
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  %7 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %7, 6
  store i32 %shr, ptr %v.addr, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.body6, %for.end
  %storemerge.in = phi i32 [ %8, %for.end ], [ %13, %for.body6 ]
  %storemerge = add nsw i32 %storemerge.in, -1
  store i32 %storemerge, ptr %j, align 4
  %cmp5 = icmp sgt i32 %storemerge.in, 0
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], ptr %zBuf, i64 0, i64 %idxprom7
  %10 = load i8, ptr %arrayidx8, align 1
  %11 = load ptr, ptr %pz.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr9, ptr %11, align 8
  store i8 %10, ptr %12, align 1
  %13 = load i32, ptr %j, align 4
  br label %for.cond4, !llvm.loop !13

for.end11:                                        ; preds = %for.cond4, %if.then
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @checksum(ptr noundef %zIn, i64 noundef %N) #0 {
entry:
  %N.addr = alloca i64, align 8
  %z = alloca ptr, align 8
  %sum = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  store i64 %N, ptr %N.addr, align 8
  store ptr %zIn, ptr %z, align 8
  store i32 0, ptr %sum, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %zIn to i64
  %0 = and i64 %sub.ptr.lhs.cast, 3
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.else, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.checksum, ptr noundef nonnull @.str.4, i32 noundef 222, ptr noundef nonnull @.str.7) #6
  unreachable

if.else:                                          ; preds = %entry
  store i32 0, ptr %sum0, align 4
  store i32 0, ptr %sum1, align 4
  store i32 0, ptr %sum2, align 4
  br label %while.cond6

while.cond6:                                      ; preds = %while.body9, %if.else
  %1 = load i64, ptr %N.addr, align 8
  %cmp7 = icmp ugt i64 %1, 15
  br i1 %cmp7, label %while.body9, label %while.cond60

while.body9:                                      ; preds = %while.cond6
  %2 = load ptr, ptr %z, align 8
  %3 = load i8, ptr %2, align 1
  %conv11 = zext i8 %3 to i32
  %arrayidx12 = getelementptr inbounds i8, ptr %2, i64 4
  %4 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %4 to i32
  %add14 = add nuw nsw i32 %conv11, %conv13
  %5 = load ptr, ptr %z, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %5, i64 8
  %6 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %6 to i32
  %add17 = add nuw nsw i32 %add14, %conv16
  %arrayidx18 = getelementptr inbounds i8, ptr %5, i64 12
  %7 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %7 to i32
  %add20 = add nuw nsw i32 %add17, %conv19
  %8 = load i32, ptr %sum0, align 4
  %add21 = add i32 %8, %add20
  store i32 %add21, ptr %sum0, align 4
  %9 = load ptr, ptr %z, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %10 to i32
  %arrayidx24 = getelementptr inbounds i8, ptr %9, i64 5
  %11 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %11 to i32
  %add26 = add nuw nsw i32 %conv23, %conv25
  %12 = load ptr, ptr %z, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %12, i64 9
  %13 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %13 to i32
  %add29 = add nuw nsw i32 %add26, %conv28
  %arrayidx30 = getelementptr inbounds i8, ptr %12, i64 13
  %14 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %14 to i32
  %add32 = add nuw nsw i32 %add29, %conv31
  %15 = load i32, ptr %sum1, align 4
  %add33 = add i32 %15, %add32
  store i32 %add33, ptr %sum1, align 4
  %16 = load ptr, ptr %z, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %17 to i32
  %arrayidx36 = getelementptr inbounds i8, ptr %16, i64 6
  %18 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %18 to i32
  %add38 = add nuw nsw i32 %conv35, %conv37
  %19 = load ptr, ptr %z, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %19, i64 10
  %20 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %20 to i32
  %add41 = add nuw nsw i32 %add38, %conv40
  %arrayidx42 = getelementptr inbounds i8, ptr %19, i64 14
  %21 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %21 to i32
  %add44 = add nuw nsw i32 %add41, %conv43
  %22 = load i32, ptr %sum2, align 4
  %add45 = add i32 %22, %add44
  store i32 %add45, ptr %sum2, align 4
  %23 = load ptr, ptr %z, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %23, i64 3
  %24 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %24 to i32
  %arrayidx48 = getelementptr inbounds i8, ptr %23, i64 7
  %25 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %25 to i32
  %add50 = add nuw nsw i32 %conv47, %conv49
  %26 = load ptr, ptr %z, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %26, i64 11
  %27 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %27 to i32
  %add53 = add nuw nsw i32 %add50, %conv52
  %arrayidx54 = getelementptr inbounds i8, ptr %26, i64 15
  %28 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %28 to i32
  %add56 = add nuw nsw i32 %add53, %conv55
  %29 = load i32, ptr %sum, align 4
  %add57 = add i32 %29, %add56
  store i32 %add57, ptr %sum, align 4
  %30 = load ptr, ptr %z, align 8
  %add.ptr58 = getelementptr inbounds i8, ptr %30, i64 16
  store ptr %add.ptr58, ptr %z, align 8
  %31 = load i64, ptr %N.addr, align 8
  %sub = add i64 %31, -16
  store i64 %sub, ptr %N.addr, align 8
  br label %while.cond6, !llvm.loop !14

while.cond60:                                     ; preds = %while.cond6, %while.body63
  %32 = load i64, ptr %N.addr, align 8
  %cmp61 = icmp ugt i64 %32, 3
  br i1 %cmp61, label %while.body63, label %while.end78

while.body63:                                     ; preds = %while.cond60
  %33 = load ptr, ptr %z, align 8
  %34 = load i8, ptr %33, align 1
  %conv65 = zext i8 %34 to i32
  %35 = load i32, ptr %sum0, align 4
  %add66 = add i32 %35, %conv65
  store i32 %add66, ptr %sum0, align 4
  %arrayidx67 = getelementptr inbounds i8, ptr %33, i64 1
  %36 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %36 to i32
  %37 = load i32, ptr %sum1, align 4
  %add69 = add i32 %37, %conv68
  store i32 %add69, ptr %sum1, align 4
  %38 = load ptr, ptr %z, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %38, i64 2
  %39 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %39 to i32
  %40 = load i32, ptr %sum2, align 4
  %add72 = add i32 %40, %conv71
  store i32 %add72, ptr %sum2, align 4
  %41 = load ptr, ptr %z, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %41, i64 3
  %42 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %42 to i32
  %43 = load i32, ptr %sum, align 4
  %add75 = add i32 %43, %conv74
  store i32 %add75, ptr %sum, align 4
  %44 = load ptr, ptr %z, align 8
  %add.ptr76 = getelementptr inbounds i8, ptr %44, i64 4
  store ptr %add.ptr76, ptr %z, align 8
  %45 = load i64, ptr %N.addr, align 8
  %sub77 = add i64 %45, -4
  store i64 %sub77, ptr %N.addr, align 8
  br label %while.cond60, !llvm.loop !15

while.end78:                                      ; preds = %while.cond60
  %46 = load i32, ptr %sum2, align 4
  %shl = shl i32 %46, 8
  %47 = load i32, ptr %sum1, align 4
  %shl79 = shl i32 %47, 16
  %add80 = add i32 %shl, %shl79
  %48 = load i32, ptr %sum0, align 4
  %shl81 = shl i32 %48, 24
  %add82 = add i32 %add80, %shl81
  %49 = load i32, ptr %sum, align 4
  %add83 = add i32 %49, %add82
  store i32 %add83, ptr %sum, align 4
  %50 = load i64, ptr %N.addr, align 8
  %and84 = and i64 %50, 3
  switch i64 %and84, label %sw.epilog [
    i64 3, label %sw.bb
    i64 2, label %sw.bb89
    i64 1, label %sw.bb94
  ]

sw.bb:                                            ; preds = %while.end78
  %51 = load ptr, ptr %z, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %51, i64 2
  %52 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %52 to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %53 = load i32, ptr %sum, align 4
  %add88 = add i32 %53, %shl87
  store i32 %add88, ptr %sum, align 4
  br label %sw.bb89

sw.bb89:                                          ; preds = %sw.bb, %while.end78
  %54 = load ptr, ptr %z, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %54, i64 1
  %55 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %55 to i32
  %shl92 = shl nuw nsw i32 %conv91, 16
  %56 = load i32, ptr %sum, align 4
  %add93 = add i32 %56, %shl92
  store i32 %add93, ptr %sum, align 4
  br label %sw.bb94

sw.bb94:                                          ; preds = %sw.bb89, %while.end78
  %57 = load ptr, ptr %z, align 8
  %58 = load i8, ptr %57, align 1
  %conv96 = zext i8 %58 to i32
  %shl97 = shl nuw i32 %conv96, 24
  %59 = load i32, ptr %sum, align 4
  %add98 = add i32 %59, %shl97
  store i32 %add98, ptr %sum, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end78, %sw.bb94
  %60 = load i32, ptr %sum, align 4
  ret i32 %60
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
  %0 = load i8, ptr %z, align 1
  %conv = sext i8 %0 to i16
  store i16 %conv, ptr %b, align 2
  store i16 %conv, ptr %a, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i16 [ 1, %entry ], [ %inc, %for.body ]
  store i16 %storemerge, ptr %i, align 2
  %cmp = icmp ult i16 %storemerge, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %z.addr, align 8
  %2 = load i16, ptr %i, align 2
  %idxprom = zext i16 %2 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %3 to i16
  %4 = load i16, ptr %a, align 2
  %add = add i16 %4, %conv4
  store i16 %add, ptr %a, align 2
  %5 = load i16, ptr %b, align 2
  %add9 = add i16 %5, %add
  store i16 %add9, ptr %b, align 2
  %6 = load i16, ptr %i, align 2
  %inc = add i16 %6, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %7 = load i16, ptr %a, align 2
  %conv11 = zext i16 %7 to i32
  %8 = load i16, ptr %b, align 2
  %conv12 = zext i16 %8 to i32
  %shl = shl nuw i32 %conv12, 16
  %or = or i32 %shl, %conv11
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
  %0 = load i8, ptr %z, align 1
  %conv = sext i8 %0 to i16
  store i16 %conv, ptr %b, align 2
  store i16 %conv, ptr %a, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i16 [ 1, %entry ], [ %inc, %for.body ]
  store i16 %storemerge, ptr %i, align 2
  %cmp = icmp ult i16 %storemerge, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %z.addr, align 8
  %2 = load i16, ptr %i, align 2
  %idxprom = zext i16 %2 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %3 to i16
  %4 = load i16, ptr %a, align 2
  %add = add i16 %4, %conv4
  store i16 %add, ptr %a, align 2
  %5 = load i16, ptr %b, align 2
  %add9 = add i16 %5, %add
  store i16 %add9, ptr %b, align 2
  %6 = load i16, ptr %i, align 2
  %inc = add i16 %6, 1
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %pHash.addr, align 8
  %z11 = getelementptr inbounds %struct.hash, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %z.addr, align 8
  %z12 = getelementptr inbounds %struct.hash, ptr %7, i64 0, i32 3
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %z12, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef nonnull %z11, ptr noundef %8, i64 noundef 16, i64 noundef %9) #5
  %10 = load i16, ptr %a, align 2
  %11 = load ptr, ptr %pHash.addr, align 8
  store i16 %10, ptr %11, align 2
  %12 = load i16, ptr %b, align 2
  %b20 = getelementptr inbounds %struct.hash, ptr %11, i64 0, i32 1
  store i16 %12, ptr %b20, align 2
  %i21 = getelementptr inbounds %struct.hash, ptr %11, i64 0, i32 2
  store i16 0, ptr %i21, align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @hash_32bit(ptr noundef %pHash) #0 {
entry:
  %0 = load i16, ptr %pHash, align 2
  %conv = zext i16 %0 to i32
  %b = getelementptr inbounds %struct.hash, ptr %pHash, i64 0, i32 1
  %1 = load i16, ptr %b, align 2
  %conv1 = zext i16 %1 to i32
  %shl = shl nuw i32 %conv1, 16
  %or = or i32 %shl, %conv
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 64, %entry ], [ %shl, %for.inc ]
  store i32 %storemerge, ptr %x, align 4
  %0 = load i32, ptr %v.addr, align 4
  %cmp.not = icmp ult i32 %0, %storemerge
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %i, align 4
  %2 = load i32, ptr %x, align 4
  %shl = shl i32 %2, 6
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal void @hash_next(ptr noundef %pHash, i32 noundef %c) #0 {
entry:
  %pHash.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %old = alloca i16, align 2
  store ptr %pHash, ptr %pHash.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %i = getelementptr inbounds %struct.hash, ptr %pHash, i64 0, i32 2
  %0 = load i16, ptr %i, align 2
  %idxprom = zext i16 %0 to i64
  %arrayidx = getelementptr inbounds %struct.hash, ptr %pHash, i64 0, i32 3, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i16
  store i16 %conv, ptr %old, align 2
  %2 = load i32, ptr %c.addr, align 4
  %conv1 = trunc i32 %2 to i8
  %3 = load ptr, ptr %pHash.addr, align 8
  %i3 = getelementptr inbounds %struct.hash, ptr %3, i64 0, i32 2
  %4 = load i16, ptr %i3, align 2
  %idxprom4 = zext i16 %4 to i64
  %arrayidx5 = getelementptr inbounds %struct.hash, ptr %3, i64 0, i32 3, i64 %idxprom4
  store i8 %conv1, ptr %arrayidx5, align 1
  %5 = add i16 %4, 1
  %6 = and i16 %5, 15
  %7 = load ptr, ptr %pHash.addr, align 8
  %i9 = getelementptr inbounds %struct.hash, ptr %7, i64 0, i32 2
  store i16 %6, ptr %i9, align 2
  %8 = load i16, ptr %7, align 2
  %conv10 = zext i16 %8 to i32
  %9 = load i16, ptr %old, align 2
  %conv11 = zext i16 %9 to i32
  %sub = sub nsw i32 %conv10, %conv11
  %10 = load i32, ptr %c.addr, align 4
  %add12 = add nsw i32 %sub, %10
  %conv13 = trunc i32 %add12 to i16
  %11 = load ptr, ptr %pHash.addr, align 8
  store i16 %conv13, ptr %11, align 2
  %b = getelementptr inbounds %struct.hash, ptr %11, i64 0, i32 1
  %12 = load i16, ptr %b, align 2
  %13 = load i16, ptr %old, align 2
  %mul.neg = mul i16 %13, -16
  %sub17 = add i16 %mul.neg, %12
  %14 = load ptr, ptr %pHash.addr, align 8
  %15 = load i16, ptr %14, align 2
  %add20 = add i16 %sub17, %15
  %b22 = getelementptr inbounds %struct.hash, ptr %14, i64 0, i32 1
  store i16 %add20, ptr %b22, align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @delta_output_size(ptr noundef %zDelta, i32 noundef %lenDelta) #0 {
entry:
  %zDelta.addr = alloca ptr, align 8
  %lenDelta.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store ptr %zDelta, ptr %zDelta.addr, align 8
  store i32 %lenDelta, ptr %lenDelta.addr, align 4
  %call = call i32 @deltaGetInt(ptr noundef nonnull %zDelta.addr, ptr noundef nonnull %lenDelta.addr)
  store i32 %call, ptr %size, align 4
  %0 = load ptr, ptr %zDelta.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp.not = icmp eq i8 %1, 10
  %2 = load i32, ptr %size, align 4
  %storemerge = select i1 %cmp.not, i32 %2, i32 -1
  ret i32 %storemerge
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
  %call = call i32 @deltaGetInt(ptr noundef nonnull %zDelta.addr, ptr noundef nonnull %lenDelta.addr)
  %conv = zext i32 %call to i64
  store i64 %conv, ptr %limit, align 8
  %0 = load ptr, ptr %zDelta.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp.not = icmp eq i8 %1, 10
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %zDelta.addr, align 8
  %3 = load i32, ptr %lenDelta.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %lenDelta.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load ptr, ptr %zDelta.addr, align 8
  %5 = load i8, ptr %4, align 1
  %tobool.not = icmp eq i8 %5, 0
  %6 = load i32, ptr %lenDelta.addr, align 4
  %cmp4 = icmp sgt i32 %6, 0
  %7 = select i1 %tobool.not, i1 false, i1 %cmp4
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call6 = call i32 @deltaGetInt(ptr noundef nonnull %zDelta.addr, ptr noundef nonnull %lenDelta.addr)
  store i32 %call6, ptr %cnt, align 4
  %8 = load ptr, ptr %zDelta.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv7 = sext i8 %9 to i32
  switch i32 %conv7, label %sw.default [
    i32 64, label %sw.bb
    i32 58, label %sw.bb37
    i32 59, label %sw.bb56
  ]

sw.bb:                                            ; preds = %while.body
  %10 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr8, ptr %zDelta.addr, align 8
  %11 = load i32, ptr %lenDelta.addr, align 4
  %dec9 = add nsw i32 %11, -1
  store i32 %dec9, ptr %lenDelta.addr, align 4
  %call10 = call i32 @deltaGetInt(ptr noundef nonnull %zDelta.addr, ptr noundef nonnull %lenDelta.addr)
  store i32 %call10, ptr %ofst, align 4
  %12 = load i32, ptr %lenDelta.addr, align 4
  %cmp11 = icmp sgt i32 %12, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %sw.bb
  %13 = load ptr, ptr %zDelta.addr, align 8
  %14 = load i8, ptr %13, align 1
  %cmp15.not = icmp eq i8 %14, 44
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %land.lhs.true, %sw.bb
  %15 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %incdec.ptr19, ptr %zDelta.addr, align 8
  %16 = load i32, ptr %lenDelta.addr, align 4
  %dec20 = add nsw i32 %16, -1
  store i32 %dec20, ptr %lenDelta.addr, align 4
  %17 = load i32, ptr %cnt, align 4
  %conv21 = zext i32 %17 to i64
  %18 = load i64, ptr %total, align 8
  %add = add i64 %18, %conv21
  store i64 %add, ptr %total, align 8
  %19 = load i64, ptr %limit, align 8
  %cmp22 = icmp ugt i64 %add, %19
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  store i32 -1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end18
  %20 = load i32, ptr %ofst, align 4
  %conv26 = zext i32 %20 to i64
  %21 = load i32, ptr %cnt, align 4
  %conv27 = zext i32 %21 to i64
  %add28 = add nuw nsw i64 %conv26, %conv27
  %22 = load i32, ptr %lenSrc.addr, align 4
  %conv29 = sext i32 %22 to i64
  %cmp30 = icmp ugt i64 %add28, %conv29
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end25
  store i32 -1, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end25
  %23 = load ptr, ptr %zOut.addr, align 8
  %24 = load ptr, ptr %zSrc.addr, align 8
  %25 = load i32, ptr %ofst, align 4
  %idxprom = zext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %24, i64 %idxprom
  %26 = load i32, ptr %cnt, align 4
  %conv35 = zext i32 %26 to i64
  %27 = load ptr, ptr %zOut.addr, align 8
  %28 = call i64 @llvm.objectsize.i64.p0(ptr %27, i1 false, i1 true, i1 false)
  %call36 = call ptr @__memcpy_chk(ptr noundef %23, ptr noundef %arrayidx34, i64 noundef %conv35, i64 noundef %28) #5
  %idx.ext = zext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %idx.ext
  store ptr %add.ptr, ptr %zOut.addr, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %while.body
  %29 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr38, ptr %zDelta.addr, align 8
  %30 = load i32, ptr %lenDelta.addr, align 4
  %dec39 = add nsw i32 %30, -1
  store i32 %dec39, ptr %lenDelta.addr, align 4
  %31 = load i32, ptr %cnt, align 4
  %conv40 = zext i32 %31 to i64
  %32 = load i64, ptr %total, align 8
  %add41 = add i64 %32, %conv40
  store i64 %add41, ptr %total, align 8
  %33 = load i64, ptr %limit, align 8
  %cmp42 = icmp ugt i64 %add41, %33
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %sw.bb37
  store i32 -1, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %sw.bb37
  %34 = load i32, ptr %cnt, align 4
  %35 = load i32, ptr %lenDelta.addr, align 4
  %cmp46 = icmp ugt i32 %34, %35
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  store i32 -1, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end45
  %36 = load ptr, ptr %zOut.addr, align 8
  %37 = load ptr, ptr %zDelta.addr, align 8
  %38 = load i32, ptr %cnt, align 4
  %conv50 = zext i32 %38 to i64
  %39 = call i64 @llvm.objectsize.i64.p0(ptr %36, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %36, ptr noundef %37, i64 noundef %conv50, i64 noundef %39) #5
  %idx.ext52 = zext i32 %38 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %36, i64 %idx.ext52
  store ptr %add.ptr53, ptr %zOut.addr, align 8
  %40 = load i32, ptr %cnt, align 4
  %41 = load ptr, ptr %zDelta.addr, align 8
  %idx.ext54 = zext i32 %40 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %41, i64 %idx.ext54
  store ptr %add.ptr55, ptr %zDelta.addr, align 8
  %42 = load i32, ptr %lenDelta.addr, align 4
  %sub = sub i32 %42, %40
  store i32 %sub, ptr %lenDelta.addr, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %while.body
  %43 = load ptr, ptr %zDelta.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %incdec.ptr57, ptr %zDelta.addr, align 8
  %44 = load i32, ptr %lenDelta.addr, align 4
  %dec58 = add nsw i32 %44, -1
  store i32 %dec58, ptr %lenDelta.addr, align 4
  %45 = load ptr, ptr %zOut.addr, align 8
  store i8 0, ptr %45, align 1
  %46 = load i64, ptr %total, align 8
  %47 = load i64, ptr %limit, align 8
  %cmp60.not = icmp eq i64 %46, %47
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %sw.bb56
  store i32 -1, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %sw.bb56
  %48 = load i64, ptr %total, align 8
  %conv64 = trunc i64 %48 to i32
  store i32 %conv64, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end49, %if.end33
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %sw.default, %if.end63, %if.then62, %if.then48, %if.then44, %if.then32, %if.then24, %if.then17, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
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
  %0 = load ptr, ptr %pz, align 8
  store ptr %0, ptr %z, align 8
  store ptr %0, ptr %zStart, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %z, align 8
  %2 = load i8, ptr %1, align 1
  %3 = and i8 %2, 127
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @deltaGetInt.zValue, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %4 to i32
  store i32 %conv1, ptr %c, align 4
  %cmp = icmp sgt i8 %4, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %v, align 4
  %shl = shl i32 %5, 6
  %6 = load i32, ptr %c, align 4
  %add = add i32 %shl, %6
  store i32 %add, ptr %v, align 4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %z, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %7, i64 -1
  store ptr %incdec.ptr3, ptr %z, align 8
  %8 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %9 = load ptr, ptr %pLen.addr, align 8
  %10 = load i32, ptr %9, align 4
  %11 = trunc i64 %sub.ptr.sub.neg to i32
  %conv5 = add i32 %10, %11
  store i32 %conv5, ptr %9, align 4
  %12 = load ptr, ptr %z, align 8
  %13 = load ptr, ptr %pz.addr, align 8
  store ptr %12, ptr %13, align 8
  %14 = load i32, ptr %v, align 4
  ret i32 %14
}

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  %call = call i32 @sqlite3_declare_vtab(ptr noundef %db, ptr noundef nonnull @.str.10) #5
  store i32 %call, ptr %rc, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = call ptr @sqlite3_malloc64(i64 noundef 24) #5
  store ptr %call1, ptr %pNew, align 8
  %0 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %call1, ptr %0, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %pNew, align 8
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 24, i64 noundef %2) #5
  %3 = load ptr, ptr %db.addr, align 8
  %call5 = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %3, i32 noundef 2) #5
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %4 = load i32, ptr %rc, align 4
  br label %return

return:                                           ; preds = %if.then, %if.end6
  %storemerge = phi i32 [ %4, %if.end6 ], [ 7, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %pIdxInfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load ptr, ptr %pIdxInfo.addr, align 8
  %1 = load i32, ptr %0, align 8
  %cmp = icmp slt i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %aConstraint, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %cmp1.not = icmp eq i32 %5, 3
  br i1 %cmp1.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint2 = getelementptr inbounds %struct.sqlite3_index_info, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %aConstraint2, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %usable = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %7, i64 %idxprom3, i32 2
  %9 = load i8, ptr %usable, align 1
  %cmp5 = icmp eq i8 %9, 0
  br i1 %cmp5, label %for.inc, label %if.end8

if.end8:                                          ; preds = %if.end
  %10 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint9 = getelementptr inbounds %struct.sqlite3_index_info, ptr %10, i64 0, i32 1
  %11 = load ptr, ptr %aConstraint9, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %11, i64 %idxprom10, i32 1
  %13 = load i8, ptr %op, align 4
  %cmp13.not = icmp eq i8 %13, 2
  br i1 %cmp13.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %if.end8
  %14 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %14, i64 0, i32 4
  %15 = load ptr, ptr %aConstraintUsage, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %15, i64 %idxprom17
  store i32 1, ptr %arrayidx18, align 4
  %17 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage19 = getelementptr inbounds %struct.sqlite3_index_info, ptr %17, i64 0, i32 4
  %18 = load ptr, ptr %aConstraintUsage19, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %18, i64 %idxprom20, i32 1
  store i8 1, ptr %omit, align 4
  %20 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %20, i64 0, i32 9
  store double 1.000000e+00, ptr %estimatedCost, align 8
  %estimatedRows = getelementptr inbounds %struct.sqlite3_index_info, ptr %20, i64 0, i32 10
  store i64 10, ptr %estimatedRows, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %20, i64 0, i32 5
  store i32 1, ptr %idxNum, align 8
  br label %return

for.inc:                                          ; preds = %if.end8, %if.end, %for.body
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum22 = getelementptr inbounds %struct.sqlite3_index_info, ptr %22, i64 0, i32 5
  store i32 0, ptr %idxNum22, align 8
  %estimatedCost23 = getelementptr inbounds %struct.sqlite3_index_info, ptr %22, i64 0, i32 9
  store double 0x41DFFFFFFFC00000, ptr %estimatedCost23, align 8
  %estimatedRows24 = getelementptr inbounds %struct.sqlite3_index_info, ptr %22, i64 0, i32 10
  store i64 2147483647, ptr %estimatedRows24, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end16
  %storemerge1 = phi i32 [ 19, %for.end ], [ 0, %if.end16 ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabDisconnect(ptr noundef %pVtab) #0 {
entry:
  call void @sqlite3_free(ptr noundef %pVtab) #5
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabOpen(ptr noundef %p, ptr noundef %ppCursor) #0 {
entry:
  %ppCursor.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 56) #5
  store ptr %call, ptr %pCur, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %pCur, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef 56, i64 noundef %1) #5
  %2 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %0, ptr %2, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ 7, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabClose(ptr noundef %cur) #0 {
entry:
  %aDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %cur, i64 0, i32 1
  %0 = load ptr, ptr %aDelta, align 8
  call void @sqlite3_free(ptr noundef %0) #5
  call void @sqlite3_free(ptr noundef %cur) #5
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %a = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %pVtabCursor, ptr %pCur, align 8
  store i32 0, ptr %i, align 4
  %eOp = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %pVtabCursor, i64 0, i32 5
  store i32 4, ptr %eOp, align 8
  %cmp.not = icmp eq i32 %idxNum, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %argv.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call i32 @sqlite3_value_bytes(ptr noundef %1) #5
  %conv = sext i32 %call to i64
  %2 = load ptr, ptr %pCur, align 8
  %nDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %2, i64 0, i32 4
  store i64 %conv, ptr %nDelta, align 8
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %call2 = call ptr @sqlite3_value_blob(ptr noundef %4) #5
  store ptr %call2, ptr %a, align 8
  %5 = load ptr, ptr %pCur, align 8
  %nDelta3 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %5, i64 0, i32 4
  %6 = load i64, ptr %nDelta3, align 8
  %cmp4 = icmp eq i64 %6, 0
  %7 = load ptr, ptr %a, align 8
  %cmp6 = icmp eq ptr %7, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %8 = load ptr, ptr %pCur, align 8
  %nDelta10 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %8, i64 0, i32 4
  %9 = load i64, ptr %nDelta10, align 8
  %add = add nsw i64 %9, 1
  %call11 = call ptr @sqlite3_malloc64(i64 noundef %add) #5
  %aDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %8, i64 0, i32 1
  store ptr %call11, ptr %aDelta, align 8
  %10 = load ptr, ptr %pCur, align 8
  %aDelta12 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %10, i64 0, i32 1
  %11 = load ptr, ptr %aDelta12, align 8
  %cmp13 = icmp eq ptr %11, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  %12 = load ptr, ptr %pCur, align 8
  %nDelta16 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %12, i64 0, i32 4
  store i64 0, ptr %nDelta16, align 8
  store i32 7, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end9
  %13 = load ptr, ptr %pCur, align 8
  %aDelta18 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %aDelta18, align 8
  %15 = load ptr, ptr %a, align 8
  %nDelta19 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %13, i64 0, i32 4
  %16 = load i64, ptr %nDelta19, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call21 = call ptr @__memcpy_chk(ptr noundef %14, ptr noundef %15, i64 noundef %16, i64 noundef %17) #5
  %18 = load ptr, ptr %pCur, align 8
  %aDelta22 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %aDelta22, align 8
  %nDelta23 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %nDelta23, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %19, i64 %20
  store i8 0, ptr %arrayidx24, align 1
  %21 = load ptr, ptr %pCur, align 8
  %aDelta25 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %aDelta25, align 8
  store ptr %22, ptr %a, align 8
  %eOp26 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %21, i64 0, i32 5
  store i32 0, ptr %eOp26, align 8
  %call27 = call i32 @deltaGetInt(ptr noundef nonnull %a, ptr noundef nonnull %i)
  %23 = load ptr, ptr %pCur, align 8
  %a1 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %23, i64 0, i32 6
  store i32 %call27, ptr %a1, align 4
  %24 = load ptr, ptr %a, align 8
  %25 = load i8, ptr %24, align 1
  %cmp30.not = icmp eq i8 %25, 10
  br i1 %cmp30.not, label %if.end36, label %if.then32

if.then32:                                        ; preds = %if.end17
  %26 = load ptr, ptr %pCur, align 8
  %eOp33 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %26, i64 0, i32 5
  store i32 4, ptr %eOp33, align 8
  %a2 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %26, i64 0, i32 7
  store i32 0, ptr %a2, align 8
  %a134 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %26, i64 0, i32 6
  store i32 0, ptr %a134, align 4
  %27 = load ptr, ptr %pCur, align 8
  %nDelta35 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %27, i64 0, i32 4
  %28 = load i64, ptr %nDelta35, align 8
  %iNext = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %27, i64 0, i32 3
  store i64 %28, ptr %iNext, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end17
  %29 = load ptr, ptr %a, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr, ptr %a, align 8
  %30 = load ptr, ptr %pCur, align 8
  %aDelta37 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %30, i64 0, i32 1
  %31 = load ptr, ptr %aDelta37, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %iNext38 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %30, i64 0, i32 3
  store i64 %sub.ptr.sub, ptr %iNext38, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.then32, %if.then15, %if.then8, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabNext(ptr noundef %cur) #0 {
entry:
  %pCur = alloca ptr, align 8
  %z = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cur, ptr %pCur, align 8
  store i32 0, ptr %i, align 4
  %iNext = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %cur, i64 0, i32 3
  %0 = load i64, ptr %iNext, align 8
  %iCursor = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %cur, i64 0, i32 2
  store i64 %0, ptr %iCursor, align 8
  %nDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %cur, i64 0, i32 4
  %1 = load i64, ptr %nDelta, align 8
  %cmp.not = icmp slt i64 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCur, align 8
  %eOp = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %2, i64 0, i32 5
  store i32 4, ptr %eOp, align 8
  %nDelta2 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %2, i64 0, i32 4
  %3 = load i64, ptr %nDelta2, align 8
  %iNext3 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %2, i64 0, i32 3
  store i64 %3, ptr %iNext3, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pCur, align 8
  %aDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %aDelta, align 8
  %iCursor4 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %4, i64 0, i32 2
  %6 = load i64, ptr %iCursor4, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %6
  store ptr %add.ptr, ptr %z, align 8
  %call = call i32 @deltaGetInt(ptr noundef nonnull %z, ptr noundef nonnull %i)
  %7 = load ptr, ptr %pCur, align 8
  %a1 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %7, i64 0, i32 6
  store i32 %call, ptr %a1, align 4
  %8 = load ptr, ptr %z, align 8
  %9 = load i8, ptr %8, align 1
  %conv = sext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 64, label %sw.bb
    i32 58, label %sw.bb19
    i32 59, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr, ptr %z, align 8
  %11 = load ptr, ptr %pCur, align 8
  %iNext5 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %11, i64 0, i32 3
  %12 = load i64, ptr %iNext5, align 8
  %nDelta6 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %11, i64 0, i32 4
  %13 = load i64, ptr %nDelta6, align 8
  %cmp7.not = icmp slt i64 %12, %13
  br i1 %cmp7.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %sw.bb
  %14 = load ptr, ptr %pCur, align 8
  %eOp10 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %14, i64 0, i32 5
  store i32 4, ptr %eOp10, align 8
  %nDelta11 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %14, i64 0, i32 4
  %15 = load i64, ptr %nDelta11, align 8
  %iNext12 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %14, i64 0, i32 3
  store i64 %15, ptr %iNext12, align 8
  br label %return

if.end13:                                         ; preds = %sw.bb
  %call14 = call i32 @deltaGetInt(ptr noundef nonnull %z, ptr noundef nonnull %i)
  %16 = load ptr, ptr %pCur, align 8
  %a2 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %16, i64 0, i32 7
  store i32 %call14, ptr %a2, align 8
  %eOp15 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %16, i64 0, i32 5
  store i32 1, ptr %eOp15, align 8
  %17 = load ptr, ptr %z, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load ptr, ptr %pCur, align 8
  %aDelta17 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %aDelta17, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %iNext18 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %18, i64 0, i32 3
  store i64 %sub.ptr.sub, ptr %iNext18, align 8
  br label %return

sw.bb19:                                          ; preds = %if.end
  %20 = load ptr, ptr %z, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr20, ptr %z, align 8
  %21 = load ptr, ptr %pCur, align 8
  %aDelta21 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %aDelta21, align 8
  %sub.ptr.lhs.cast22 = ptrtoint ptr %incdec.ptr20 to i64
  %sub.ptr.rhs.cast23 = ptrtoint ptr %22 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %conv25 = trunc i64 %sub.ptr.sub24 to i32
  %23 = load ptr, ptr %pCur, align 8
  %a226 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %23, i64 0, i32 7
  store i32 %conv25, ptr %a226, align 8
  %eOp27 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %23, i64 0, i32 5
  store i32 2, ptr %eOp27, align 8
  %24 = load ptr, ptr %z, align 8
  %a128 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %a128, align 4
  %idxprom = zext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %24, i64 %idxprom
  %26 = load ptr, ptr %pCur, align 8
  %aDelta30 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %26, i64 0, i32 1
  %27 = load ptr, ptr %aDelta30, align 8
  %sub.ptr.lhs.cast31 = ptrtoint ptr %arrayidx29 to i64
  %sub.ptr.rhs.cast32 = ptrtoint ptr %27 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %iNext34 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %26, i64 0, i32 3
  store i64 %sub.ptr.sub33, ptr %iNext34, align 8
  br label %return

sw.bb35:                                          ; preds = %if.end
  %28 = load ptr, ptr %pCur, align 8
  %eOp36 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %28, i64 0, i32 5
  store i32 3, ptr %eOp36, align 8
  %nDelta37 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %28, i64 0, i32 4
  %29 = load i64, ptr %nDelta37, align 8
  %iNext38 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %28, i64 0, i32 3
  store i64 %29, ptr %iNext38, align 8
  br label %return

sw.default:                                       ; preds = %if.end
  %30 = load ptr, ptr %pCur, align 8
  %iNext39 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %30, i64 0, i32 3
  %31 = load i64, ptr %iNext39, align 8
  %nDelta40 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %30, i64 0, i32 4
  %32 = load i64, ptr %nDelta40, align 8
  %cmp41 = icmp eq i64 %31, %32
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %sw.default
  %33 = load ptr, ptr %pCur, align 8
  %eOp44 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %33, i64 0, i32 5
  store i32 5, ptr %eOp44, align 8
  br label %return

if.else:                                          ; preds = %sw.default
  %34 = load ptr, ptr %pCur, align 8
  %eOp45 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %34, i64 0, i32 5
  store i32 4, ptr %eOp45, align 8
  %nDelta46 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %34, i64 0, i32 4
  %35 = load i64, ptr %nDelta46, align 8
  %iNext47 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %34, i64 0, i32 3
  store i64 %35, ptr %iNext47, align 8
  br label %return

return:                                           ; preds = %if.then9, %if.end13, %sw.bb19, %sw.bb35, %if.else, %if.then43, %if.then
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabEof(ptr noundef %cur) #0 {
entry:
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %pCur, align 8
  %eOp = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %cur, i64 0, i32 5
  %0 = load i32, ptr %eOp, align 8
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %pCur, align 8
  %iCursor = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %1, i64 0, i32 2
  %2 = load i64, ptr %iCursor, align 8
  %nDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %1, i64 0, i32 4
  %3 = load i64, ptr %nDelta, align 8
  %cmp1 = icmp sge i64 %2, %3
  %phi.cast = zext i1 %cmp1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %cur, ptr %pCur, align 8
  switch i32 %i, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %0 = load ptr, ptr %ctx.addr, align 8
  %1 = load ptr, ptr %pCur, align 8
  %eOp = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %1, i64 0, i32 5
  %2 = load i32, ptr %eOp, align 8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [6 x ptr], ptr @azOp, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  call void @sqlite3_result_text(ptr noundef %0, ptr noundef %3, i32 noundef -1, ptr noundef null) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8
  %5 = load ptr, ptr %pCur, align 8
  %a1 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %5, i64 0, i32 6
  %6 = load i32, ptr %a1, align 4
  call void @sqlite3_result_int(ptr noundef %4, i32 noundef %6) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %7 = load ptr, ptr %pCur, align 8
  %eOp3 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %7, i64 0, i32 5
  %8 = load i32, ptr %eOp3, align 8
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb2
  %9 = load ptr, ptr %ctx.addr, align 8
  %10 = load ptr, ptr %pCur, align 8
  %a2 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %10, i64 0, i32 7
  %11 = load i32, ptr %a2, align 8
  call void @sqlite3_result_int(ptr noundef %9, i32 noundef %11) #5
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb2
  %12 = load ptr, ptr %pCur, align 8
  %eOp4 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %12, i64 0, i32 5
  %13 = load i32, ptr %eOp4, align 8
  %cmp5 = icmp eq i32 %13, 2
  br i1 %cmp5, label %if.then6, label %sw.epilog

if.then6:                                         ; preds = %if.else
  %14 = load ptr, ptr %pCur, align 8
  %a27 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %14, i64 0, i32 7
  %15 = load i32, ptr %a27, align 8
  %conv = zext i32 %15 to i64
  %a18 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %a18, align 4
  %conv9 = zext i32 %16 to i64
  %add = add nuw nsw i64 %conv, %conv9
  %17 = load ptr, ptr %pCur, align 8
  %nDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %17, i64 0, i32 4
  %18 = load i64, ptr %nDelta, align 8
  %cmp10 = icmp sgt i64 %add, %18
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.then6
  %19 = load ptr, ptr %ctx.addr, align 8
  %20 = load ptr, ptr %pCur, align 8
  %a113 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %20, i64 0, i32 6
  %21 = load i32, ptr %a113, align 4
  call void @sqlite3_result_zeroblob(ptr noundef %19, i32 noundef %21) #5
  br label %sw.epilog

if.else14:                                        ; preds = %if.then6
  %22 = load ptr, ptr %ctx.addr, align 8
  %23 = load ptr, ptr %pCur, align 8
  %aDelta = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %23, i64 0, i32 1
  %24 = load ptr, ptr %aDelta, align 8
  %a215 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %23, i64 0, i32 7
  %25 = load i32, ptr %a215, align 8
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  %26 = load ptr, ptr %pCur, align 8
  %a116 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %26, i64 0, i32 6
  %27 = load i32, ptr %a116, align 4
  call void @sqlite3_result_blob(ptr noundef %22, ptr noundef %add.ptr, i32 noundef %27, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #5
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %28 = load ptr, ptr %ctx.addr, align 8
  %29 = load ptr, ptr %pCur, align 8
  %aDelta20 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %29, i64 0, i32 1
  %30 = load ptr, ptr %aDelta20, align 8
  %nDelta21 = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %29, i64 0, i32 4
  %31 = load i64, ptr %nDelta21, align 8
  %conv22 = trunc i64 %31 to i32
  call void @sqlite3_result_blob(ptr noundef %28, ptr noundef %30, i32 noundef %conv22, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then12, %if.else14, %if.else, %sw.bb19, %sw.bb1, %sw.bb, %entry
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deltaparsevtabRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %iCursor = getelementptr inbounds %struct.deltaparsevtab_cursor, ptr %cur, i64 0, i32 2
  %0 = load i64, ptr %iCursor, align 8
  store i64 %0, ptr %pRowid, align 8
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
attributes #5 = { nounwind }
attributes #6 = { cold noreturn nounwind }

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
