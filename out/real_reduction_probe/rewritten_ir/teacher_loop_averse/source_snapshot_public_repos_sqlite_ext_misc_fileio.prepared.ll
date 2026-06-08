; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/fileio.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/fileio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i32 }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.fsdir_cursor = type { %struct.sqlite3_vtab_cursor, i32, i32, i32, ptr, ptr, i32, %struct.stat, ptr, i64 }
%struct.sqlite3_vtab_cursor = type { ptr }
%struct.FsdirLevel = type { ptr, ptr }
%struct.dirent = type { i64, i64, i16, i16, i8, [1024 x i8] }
%struct.sqlite3_vtab = type { ptr, i32, ptr }

@.str = private unnamed_addr constant [9 x i8] c"readfile\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"writefile\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"lsmode\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"realpath\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"wrong number of arguments to function writefile()\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to create symlink: %s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to create directory: %s\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to write file: %s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fsdirRegister.fsdirModule = internal global %struct.sqlite3_module { i32 0, ptr null, ptr @fsdirConnect, ptr @fsdirBestIndex, ptr @fsdirDisconnect, ptr null, ptr @fsdirOpen, ptr @fsdirClose, ptr @fsdirFilter, ptr @fsdirNext, ptr @fsdirEof, ptr @fsdirColumn, ptr @fsdirRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"fsdir\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"CREATE TABLE x(name,mode,mtime,data,level,path HIDDEN,dir HIDDEN)\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"table function fsdir requires an argument\00", align 1
@__func__.fsdirFilter = private unnamed_addr constant [12 x i8] c"fsdirFilter\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"fileio.c\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"(idxNum & 0x01)!=0 && argc>0\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"table function fsdir requires a non-NULL argument\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"argc>i\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"cannot stat file: %s\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"cannot read directory: %s\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%z%s\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%z/%s\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @sqlite3_fileio_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str, i32 noundef 1, i32 noundef 524289, ptr noundef null, ptr noundef @readfileFunc, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %4, ptr noundef @.str.1, i32 noundef -1, i32 noundef 524289, ptr noundef null, ptr noundef @writefileFunc, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %db.addr, align 8
  %call4 = call i32 @sqlite3_create_function(ptr noundef %6, ptr noundef @.str.2, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef @lsModeFunc, ptr noundef null, ptr noundef null)
  store i32 %call4, ptr %rc, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %7 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %8 = load ptr, ptr %db.addr, align 8
  %call8 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_0(ptr noundef %8)
  store i32 %call8, ptr %rc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %9 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %10 = load ptr, ptr %db.addr, align 8
  %call12 = call i32 @sqlite3_create_function(ptr noundef %10, ptr noundef @.str.3, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef @realpathFunc, ptr noundef null, ptr noundef null)
  store i32 %call12, ptr %rc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %11 = load i32, ptr %rc, align 4
  ret i32 %11
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @readfileFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %2)
  store ptr %call, ptr %zName, align 8
  %3 = load ptr, ptr %zName, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %context.addr, align 8
  %5 = load ptr, ptr %zName, align 8
  call void @readFileContents(ptr noundef %4, ptr noundef %5)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @writefileFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zFile = alloca ptr, align 8
  %mode = alloca i16, align 2
  %res = alloca i32, align 4
  %mtime = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i16 0, ptr %mode, align 2
  store i64 -1, ptr %mtime, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %2, ptr noundef @.str.5, i32 noundef -1)
  br label %if.end50

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %4)
  store ptr %call, ptr %zFile, align 8
  %5 = load ptr, ptr %zFile, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %if.end50

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %argc.addr, align 4
  %cmp5 = icmp sge i32 %6, 3
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 2
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @sqlite3_value_int(ptr noundef %8)
  %conv = trunc i32 %call8 to i16
  store i16 %conv, ptr %mode, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4
  %9 = load i32, ptr %argc.addr, align 4
  %cmp10 = icmp eq i32 %9, 4
  br i1 %cmp10, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %10, i64 3
  %11 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i64 @sqlite3_value_int64(ptr noundef %11)
  store i64 %call14, ptr %mtime, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9
  %12 = load ptr, ptr %context.addr, align 8
  %13 = load ptr, ptr %zFile, align 8
  %14 = load ptr, ptr %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx16, align 8
  %16 = load i16, ptr %mode, align 2
  %17 = load i64, ptr %mtime, align 8
  %call17 = call i32 @writeFile(ptr noundef %12, ptr noundef %13, ptr noundef %15, i16 noundef zeroext %16, i64 noundef %17)
  store i32 %call17, ptr %res, align 4
  %18 = load i32, ptr %res, align 4
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end15
  %call20 = call ptr @__error()
  %19 = load i32, ptr %call20, align 4
  %cmp21 = icmp eq i32 %19, 2
  br i1 %cmp21, label %if.then23, label %if.end31

if.then23:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %zFile, align 8
  %call24 = call i32 @makeDirectory(ptr noundef %20)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.then23
  %21 = load ptr, ptr %context.addr, align 8
  %22 = load ptr, ptr %zFile, align 8
  %23 = load ptr, ptr %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %23, i64 1
  %24 = load ptr, ptr %arrayidx28, align 8
  %25 = load i16, ptr %mode, align 2
  %26 = load i64, ptr %mtime, align 8
  %call29 = call i32 @writeFile(ptr noundef %21, ptr noundef %22, ptr noundef %24, i16 noundef zeroext %25, i64 noundef %26)
  store i32 %call29, ptr %res, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then23
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true, %if.end15
  %27 = load i32, ptr %argc.addr, align 4
  %cmp32 = icmp sgt i32 %27, 2
  br i1 %cmp32, label %land.lhs.true34, label %if.end50

land.lhs.true34:                                  ; preds = %if.end31
  %28 = load i32, ptr %res, align 4
  %cmp35 = icmp ne i32 %28, 0
  br i1 %cmp35, label %if.then37, label %if.end50

if.then37:                                        ; preds = %land.lhs.true34
  %29 = load i16, ptr %mode, align 2
  %conv38 = zext i16 %29 to i32
  %and = and i32 %conv38, 61440
  %cmp39 = icmp eq i32 %and, 40960
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then37
  %30 = load ptr, ptr %context.addr, align 8
  %31 = load ptr, ptr %zFile, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_1(ptr noundef %30, ptr noundef @.str.6, ptr noundef %31)
  br label %if.end49

if.else:                                          ; preds = %if.then37
  %32 = load i16, ptr %mode, align 2
  %conv42 = zext i16 %32 to i32
  %and43 = and i32 %conv42, 61440
  %cmp44 = icmp eq i32 %and43, 16384
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.else
  %33 = load ptr, ptr %context.addr, align 8
  %34 = load ptr, ptr %zFile, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_2(ptr noundef %33, ptr noundef @.str.7, ptr noundef %34)
  br label %if.end48

if.else47:                                        ; preds = %if.else
  %35 = load ptr, ptr %context.addr, align 8
  %36 = load ptr, ptr %zFile, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_3(ptr noundef %35, ptr noundef @.str.8, ptr noundef %36)
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then41
  br label %if.end50

if.end50:                                         ; preds = %if.then, %if.then3, %if.end49, %land.lhs.true34, %if.end31
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @lsModeFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %iMode = alloca i32, align 4
  %z = alloca [16 x i8], align 1
  %m = alloca i32, align 4
  %a = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_int(ptr noundef %1)
  store i32 %call, ptr %iMode, align 4
  %2 = load i32, ptr %argc.addr, align 4
  %3 = load i32, ptr %iMode, align 4
  %and = and i32 %3, 61440
  %cmp = icmp eq i32 %and, 40960
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 0
  store i8 108, ptr %arrayidx1, align 1
  br label %if.end14

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %iMode, align 4
  %and2 = and i32 %4, 61440
  %cmp3 = icmp eq i32 %and2, 32768
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %arrayidx5 = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 0
  store i8 45, ptr %arrayidx5, align 1
  br label %if.end13

if.else6:                                         ; preds = %if.else
  %5 = load i32, ptr %iMode, align 4
  %and7 = and i32 %5, 61440
  %cmp8 = icmp eq i32 %and7, 16384
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else6
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 0
  store i8 100, ptr %arrayidx10, align 1
  br label %if.end

if.else11:                                        ; preds = %if.else6
  %arrayidx12 = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 0
  store i8 63, ptr %arrayidx12, align 1
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then9
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %6 = load i32, ptr %i, align 4
  %cmp15 = icmp slt i32 %6, 3
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %iMode, align 4
  %8 = load i32, ptr %i, align 4
  %sub = sub nsw i32 2, %8
  %mul = mul nsw i32 %sub, 3
  %shr = ashr i32 %7, %mul
  store i32 %shr, ptr %m, align 4
  %9 = load i32, ptr %i, align 4
  %mul16 = mul nsw i32 %9, 3
  %add = add nsw i32 1, %mul16
  %idxprom = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 %idxprom
  store ptr %arrayidx17, ptr %a, align 8
  %10 = load i32, ptr %m, align 4
  %and18 = and i32 %10, 4
  %tobool = icmp ne i32 %and18, 0
  %11 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 114, i32 45
  %conv = trunc i32 %cond to i8
  %12 = load ptr, ptr %a, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %12, i64 0
  store i8 %conv, ptr %arrayidx19, align 1
  %13 = load i32, ptr %m, align 4
  %and20 = and i32 %13, 2
  %tobool21 = icmp ne i32 %and20, 0
  %14 = zext i1 %tobool21 to i64
  %cond22 = select i1 %tobool21, i32 119, i32 45
  %conv23 = trunc i32 %cond22 to i8
  %15 = load ptr, ptr %a, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %conv23, ptr %arrayidx24, align 1
  %16 = load i32, ptr %m, align 4
  %and25 = and i32 %16, 1
  %tobool26 = icmp ne i32 %and25, 0
  %17 = zext i1 %tobool26 to i64
  %cond27 = select i1 %tobool26, i32 120, i32 45
  %conv28 = trunc i32 %cond27 to i8
  %18 = load ptr, ptr %a, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %18, i64 2
  store i8 %conv28, ptr %arrayidx29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx30 = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 10
  store i8 0, ptr %arrayidx30, align 1
  %20 = load ptr, ptr %context.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 0
  call void @sqlite3_result_text(ptr noundef %20, ptr noundef %arraydecay, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirRegister(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_module(ptr noundef %0, ptr noundef @.str.11, ptr noundef @fsdirRegister.fsdirModule, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  ret i32 %1
}

; Function Attrs: nounwind ssp uwtable
define internal void @realpathFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zPath = alloca ptr, align 8
  %zCopy = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %cSep = alloca i8, align 1
  %len = alloca i64, align 8
  %isWin = alloca i32, align 4
  %i = alloca i64, align 8
  %i61 = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i8 0, ptr %cSep, align 1
  store i32 0, ptr %isWin, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %2)
  store ptr %call, ptr %zPath, align 8
  %3 = load ptr, ptr %zPath, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end140

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %zPath, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr @.str.21, ptr %zPath, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load ptr, ptr %zPath, align 8
  %call6 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.10, ptr noundef %6)
  store ptr %call6, ptr %zCopy, align 8
  %7 = load ptr, ptr %zCopy, align 8
  %call7 = call i64 @strlen(ptr noundef %7)
  store i64 %call7, ptr %len, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %8 = load i64, ptr %len, align 8
  %cmp8 = icmp ugt i64 %8, 1
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %zCopy, align 8
  %10 = load i64, ptr %len, align 8
  %sub = sub i64 %10, 1
  %arrayidx10 = getelementptr inbounds i8, ptr %9, i64 %sub
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 47
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ false, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %12, %lor.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i64, ptr %len, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %len, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %15 = load ptr, ptr %zCopy, align 8
  %16 = load i64, ptr %len, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %15, i64 %16
  store i8 0, ptr %arrayidx14, align 1
  br label %while.body16

while.body16:                                     ; preds = %while.end, %if.end57
  %17 = load ptr, ptr %zCopy, align 8
  %call17 = call ptr @portable_realpath(ptr noundef %17)
  store ptr %call17, ptr %zOut, align 8
  %18 = load i8, ptr %cSep, align 1
  %19 = load ptr, ptr %zCopy, align 8
  %20 = load i64, ptr %len, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %19, i64 %20
  store i8 %18, ptr %arrayidx18, align 1
  %21 = load ptr, ptr %zOut, align 8
  %tobool = icmp ne ptr %21, null
  br i1 %tobool, label %if.then19, label %if.else

if.then19:                                        ; preds = %while.body16
  %22 = load i8, ptr %cSep, align 1
  %tobool20 = icmp ne i8 %22, 0
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then19
  %23 = load ptr, ptr %zOut, align 8
  %24 = load ptr, ptr %zCopy, align 8
  %25 = load i64, ptr %len, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %24, i64 %25
  %call23 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.22, ptr noundef %23, ptr noundef %arrayidx22)
  store ptr %call23, ptr %zOut, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then19
  br label %while.end58

if.else:                                          ; preds = %while.body16
  %26 = load i64, ptr %len, align 8
  %sub25 = sub i64 %26, 1
  store i64 %sub25, ptr %i, align 8
  br label %while.cond26

while.cond26:                                     ; preds = %if.end35, %if.else
  %27 = load i64, ptr %i, align 8
  %cmp27 = icmp ugt i64 %27, 0
  br i1 %cmp27, label %while.body29, label %while.end37

while.body29:                                     ; preds = %while.cond26
  %28 = load ptr, ptr %zCopy, align 8
  %29 = load i64, ptr %i, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %28, i64 %29
  %30 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %30 to i32
  %cmp32 = icmp eq i32 %conv31, 47
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %while.body29
  br label %while.end37

if.end35:                                         ; preds = %while.body29
  %31 = load i64, ptr %i, align 8
  %dec36 = add i64 %31, -1
  store i64 %dec36, ptr %i, align 8
  br label %while.cond26, !llvm.loop !9

while.end37:                                      ; preds = %if.then34, %while.cond26
  %32 = load i64, ptr %i, align 8
  %cmp38 = icmp ule i64 %32, 0
  br i1 %cmp38, label %if.then40, label %if.end54

if.then40:                                        ; preds = %while.end37
  %33 = load ptr, ptr %zCopy, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx41, align 1
  %conv42 = sext i8 %34 to i32
  %cmp43 = icmp eq i32 %conv42, 47
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.then40
  %35 = load ptr, ptr %zCopy, align 8
  store ptr %35, ptr %zOut, align 8
  store ptr null, ptr %zCopy, align 8
  br label %if.end53

if.else46:                                        ; preds = %if.then40
  %call47 = call ptr @portable_realpath(ptr noundef @.str.21)
  store ptr %call47, ptr %zOut, align 8
  %cmp48 = icmp ne ptr %call47, null
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.else46
  %36 = load ptr, ptr %zOut, align 8
  %37 = load ptr, ptr %zCopy, align 8
  %call51 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.23, ptr noundef %36, ptr noundef %37)
  store ptr %call51, ptr %zOut, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.else46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then45
  br label %while.end58

if.end54:                                         ; preds = %while.end37
  %38 = load ptr, ptr %zCopy, align 8
  %39 = load i64, ptr %i, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %38, i64 %39
  %40 = load i8, ptr %arrayidx55, align 1
  store i8 %40, ptr %cSep, align 1
  %41 = load ptr, ptr %zCopy, align 8
  %42 = load i64, ptr %i, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %41, i64 %42
  store i8 0, ptr %arrayidx56, align 1
  %43 = load i64, ptr %i, align 8
  store i64 %43, ptr %len, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end54
  br label %while.body16

while.end58:                                      ; preds = %if.end53, %if.end24
  %44 = load ptr, ptr %zCopy, align 8
  call void @sqlite3_free(ptr noundef %44)
  %45 = load ptr, ptr %zOut, align 8
  %tobool59 = icmp ne ptr %45, null
  br i1 %tobool59, label %if.then60, label %if.end140

if.then60:                                        ; preds = %while.end58
  %46 = load ptr, ptr %zOut, align 8
  %call62 = call i64 @strlen(ptr noundef %46)
  store i64 %call62, ptr %n, align 8
  store i64 0, ptr %j, align 8
  store i64 0, ptr %i61, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then60
  %47 = load i64, ptr %i61, align 8
  %48 = load i64, ptr %n, align 8
  %cmp63 = icmp ult i64 %47, %48
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %zOut, align 8
  %50 = load i64, ptr %i61, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %49, i64 %50
  %51 = load i8, ptr %arrayidx65, align 1
  %conv66 = sext i8 %51 to i32
  %cmp67 = icmp eq i32 %conv66, 47
  br i1 %cmp67, label %if.then69, label %if.end135

if.then69:                                        ; preds = %for.body
  %52 = load ptr, ptr %zOut, align 8
  %53 = load i64, ptr %i61, align 8
  %add = add i64 %53, 1
  %arrayidx70 = getelementptr inbounds i8, ptr %52, i64 %add
  %54 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %54 to i32
  %cmp72 = icmp eq i32 %conv71, 47
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then69
  br label %for.inc

if.end75:                                         ; preds = %if.then69
  %55 = load ptr, ptr %zOut, align 8
  %56 = load i64, ptr %i61, align 8
  %add76 = add i64 %56, 1
  %arrayidx77 = getelementptr inbounds i8, ptr %55, i64 %add76
  %57 = load i8, ptr %arrayidx77, align 1
  %conv78 = sext i8 %57 to i32
  %cmp79 = icmp eq i32 %conv78, 46
  br i1 %cmp79, label %land.lhs.true, label %if.end92

land.lhs.true:                                    ; preds = %if.end75
  %58 = load i64, ptr %i61, align 8
  %add81 = add i64 %58, 2
  %59 = load i64, ptr %n, align 8
  %cmp82 = icmp ult i64 %add81, %59
  br i1 %cmp82, label %land.lhs.true84, label %if.end92

land.lhs.true84:                                  ; preds = %land.lhs.true
  %60 = load ptr, ptr %zOut, align 8
  %61 = load i64, ptr %i61, align 8
  %add85 = add i64 %61, 2
  %arrayidx86 = getelementptr inbounds i8, ptr %60, i64 %add85
  %62 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %62 to i32
  %cmp88 = icmp eq i32 %conv87, 47
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %land.lhs.true84
  %63 = load i64, ptr %i61, align 8
  %add91 = add i64 %63, 1
  store i64 %add91, ptr %i61, align 8
  br label %for.inc

if.end92:                                         ; preds = %land.lhs.true84, %land.lhs.true, %if.end75
  %64 = load ptr, ptr %zOut, align 8
  %65 = load i64, ptr %i61, align 8
  %add93 = add i64 %65, 1
  %arrayidx94 = getelementptr inbounds i8, ptr %64, i64 %add93
  %66 = load i8, ptr %arrayidx94, align 1
  %conv95 = sext i8 %66 to i32
  %cmp96 = icmp eq i32 %conv95, 46
  br i1 %cmp96, label %land.lhs.true98, label %if.end134

land.lhs.true98:                                  ; preds = %if.end92
  %67 = load i64, ptr %i61, align 8
  %add99 = add i64 %67, 3
  %68 = load i64, ptr %n, align 8
  %cmp100 = icmp ult i64 %add99, %68
  br i1 %cmp100, label %land.lhs.true102, label %if.end134

land.lhs.true102:                                 ; preds = %land.lhs.true98
  %69 = load ptr, ptr %zOut, align 8
  %70 = load i64, ptr %i61, align 8
  %add103 = add i64 %70, 2
  %arrayidx104 = getelementptr inbounds i8, ptr %69, i64 %add103
  %71 = load i8, ptr %arrayidx104, align 1
  %conv105 = sext i8 %71 to i32
  %cmp106 = icmp eq i32 %conv105, 46
  br i1 %cmp106, label %land.lhs.true108, label %if.end134

land.lhs.true108:                                 ; preds = %land.lhs.true102
  %72 = load ptr, ptr %zOut, align 8
  %73 = load i64, ptr %i61, align 8
  %add109 = add i64 %73, 3
  %arrayidx110 = getelementptr inbounds i8, ptr %72, i64 %add109
  %74 = load i8, ptr %arrayidx110, align 1
  %conv111 = sext i8 %74 to i32
  %cmp112 = icmp eq i32 %conv111, 47
  br i1 %cmp112, label %if.then114, label %if.end134

if.then114:                                       ; preds = %land.lhs.true108
  br label %while.cond115

while.cond115:                                    ; preds = %while.body125, %if.then114
  %75 = load i64, ptr %j, align 8
  %cmp116 = icmp ugt i64 %75, 0
  br i1 %cmp116, label %land.rhs118, label %land.end124

land.rhs118:                                      ; preds = %while.cond115
  %76 = load ptr, ptr %zOut, align 8
  %77 = load i64, ptr %j, align 8
  %sub119 = sub i64 %77, 1
  %arrayidx120 = getelementptr inbounds i8, ptr %76, i64 %sub119
  %78 = load i8, ptr %arrayidx120, align 1
  %conv121 = sext i8 %78 to i32
  %cmp122 = icmp ne i32 %conv121, 47
  br label %land.end124

land.end124:                                      ; preds = %land.rhs118, %while.cond115
  %79 = phi i1 [ false, %while.cond115 ], [ %cmp122, %land.rhs118 ]
  br i1 %79, label %while.body125, label %while.end127

while.body125:                                    ; preds = %land.end124
  %80 = load i64, ptr %j, align 8
  %dec126 = add i64 %80, -1
  store i64 %dec126, ptr %j, align 8
  br label %while.cond115, !llvm.loop !10

while.end127:                                     ; preds = %land.end124
  %81 = load i64, ptr %j, align 8
  %cmp128 = icmp ugt i64 %81, 0
  br i1 %cmp128, label %if.then130, label %if.end132

if.then130:                                       ; preds = %while.end127
  %82 = load i64, ptr %j, align 8
  %dec131 = add i64 %82, -1
  store i64 %dec131, ptr %j, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %while.end127
  %83 = load i64, ptr %i61, align 8
  %add133 = add i64 %83, 2
  store i64 %add133, ptr %i61, align 8
  br label %for.inc

if.end134:                                        ; preds = %land.lhs.true108, %land.lhs.true102, %land.lhs.true98, %if.end92
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %for.body
  %84 = load ptr, ptr %zOut, align 8
  %85 = load i64, ptr %i61, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %84, i64 %85
  %86 = load i8, ptr %arrayidx136, align 1
  %87 = load ptr, ptr %zOut, align 8
  %88 = load i64, ptr %j, align 8
  %inc = add i64 %88, 1
  store i64 %inc, ptr %j, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %87, i64 %88
  store i8 %86, ptr %arrayidx137, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end135, %if.end132, %if.then90, %if.then74
  %89 = load i64, ptr %i61, align 8
  %inc138 = add i64 %89, 1
  store i64 %inc138, ptr %i61, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %90 = load ptr, ptr %zOut, align 8
  %91 = load i64, ptr %j, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %90, i64 %91
  store i8 0, ptr %arrayidx139, align 1
  %92 = load ptr, ptr %context.addr, align 8
  %93 = load ptr, ptr %zOut, align 8
  call void @sqlite3_result_text(ptr noundef %92, ptr noundef %93, i32 noundef -1, ptr noundef @sqlite3_free)
  br label %if.end140

if.end140:                                        ; preds = %if.then, %for.end, %while.end58
  ret void
}

declare ptr @sqlite3_value_text(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @readFileContents(ptr noundef %ctx, ptr noundef %zName) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %in = alloca ptr, align 8
  %nIn = alloca i64, align 8
  %pBuf = alloca ptr, align 8
  %db = alloca ptr, align 8
  %mxBlob = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %zName.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.4)
  store ptr %call, ptr %in, align 8
  %1 = load ptr, ptr %in, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %in, align 8
  %call1 = call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 2)
  %3 = load ptr, ptr %in, align 8
  %call2 = call i64 @ftell(ptr noundef %3)
  store i64 %call2, ptr %nIn, align 8
  %4 = load ptr, ptr %in, align 8
  call void @rewind(ptr noundef %4)
  %5 = load ptr, ptr %ctx.addr, align 8
  %call3 = call ptr @sqlite3_context_db_handle(ptr noundef %5)
  store ptr %call3, ptr %db, align 8
  %6 = load ptr, ptr %db, align 8
  %call4 = call i32 @sqlite3_limit(ptr noundef %6, i32 noundef 0, i32 noundef -1)
  store i32 %call4, ptr %mxBlob, align 4
  %7 = load i64, ptr %nIn, align 8
  %8 = load i32, ptr %mxBlob, align 4
  %conv = sext i32 %8 to i64
  %cmp5 = icmp sgt i64 %7, %conv
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_code(ptr noundef %9, i32 noundef 18)
  %10 = load ptr, ptr %in, align 8
  %call8 = call i32 @fclose(ptr noundef %10)
  br label %return

if.end9:                                          ; preds = %if.end
  %11 = load i64, ptr %nIn, align 8
  %tobool = icmp ne i64 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end9
  %12 = load i64, ptr %nIn, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ 1, %cond.false ]
  %call10 = call ptr @sqlite3_malloc64(i64 noundef %cond)
  store ptr %call10, ptr %pBuf, align 8
  %13 = load ptr, ptr %pBuf, align 8
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %cond.end
  %14 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %14)
  %15 = load ptr, ptr %in, align 8
  %call14 = call i32 @fclose(ptr noundef %15)
  br label %return

if.end15:                                         ; preds = %cond.end
  %16 = load i64, ptr %nIn, align 8
  %17 = load ptr, ptr %pBuf, align 8
  %18 = load i64, ptr %nIn, align 8
  %19 = load ptr, ptr %in, align 8
  %call16 = call i64 @fread(ptr noundef %17, i64 noundef 1, i64 noundef %18, ptr noundef %19)
  %cmp17 = icmp eq i64 %16, %call16
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  %20 = load ptr, ptr %ctx.addr, align 8
  %21 = load ptr, ptr %pBuf, align 8
  %22 = load i64, ptr %nIn, align 8
  call void @sqlite3_result_blob64(ptr noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef @sqlite3_free)
  br label %if.end20

if.else:                                          ; preds = %if.end15
  %23 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_code(ptr noundef %23, i32 noundef 10)
  %24 = load ptr, ptr %pBuf, align 8
  call void @sqlite3_free(ptr noundef %24)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  %25 = load ptr, ptr %in, align 8
  %call21 = call i32 @fclose(ptr noundef %25)
  br label %return

return:                                           ; preds = %if.end20, %if.then13, %if.then7, %if.then
  ret void
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @ftell(ptr noundef) #1

declare void @rewind(ptr noundef) #1

declare ptr @sqlite3_context_db_handle(ptr noundef) #1

declare i32 @sqlite3_limit(ptr noundef, i32 noundef, i32 noundef) #1

declare void @sqlite3_result_error_code(ptr noundef, i32 noundef) #1

declare i32 @fclose(ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

declare void @sqlite3_result_error_nomem(ptr noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare void @sqlite3_result_blob64(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare void @sqlite3_free(ptr noundef) #1

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sqlite3_value_int(ptr noundef) #1

declare i64 @sqlite3_value_int64(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @writeFile(ptr noundef %pCtx, ptr noundef %zFile, ptr noundef %pData, i16 noundef zeroext %mode, i64 noundef %mtime) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %zFile.addr = alloca ptr, align 8
  %pData.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %mtime.addr = alloca i64, align 8
  %zTo = alloca ptr, align 8
  %sStat = alloca %struct.stat, align 8
  %nWrite = alloca i64, align 8
  %z = alloca ptr, align 8
  %rc = alloca i32, align 4
  %out = alloca ptr, align 8
  %n = alloca i64, align 8
  %times = alloca [2 x %struct.timeval], align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zFile, ptr %zFile.addr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  store i16 %mode, ptr %mode.addr, align 2
  store i64 %mtime, ptr %mtime.addr, align 8
  %0 = load ptr, ptr %zFile.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, ptr %mode.addr, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 61440
  %cmp1 = icmp eq i32 %and, 40960
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %pData.addr, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %2)
  store ptr %call, ptr %zTo, align 8
  %3 = load ptr, ptr %zTo, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then3
  %4 = load ptr, ptr %zFile.addr, align 8
  %call8 = call i32 @unlink(ptr noundef %4)
  %5 = load ptr, ptr %zTo, align 8
  %6 = load ptr, ptr %zFile.addr, align 8
  %call9 = call i32 @symlink(ptr noundef %5, ptr noundef %6)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end7
  br label %if.end86

if.else:                                          ; preds = %if.end
  %7 = load i16, ptr %mode.addr, align 2
  %conv14 = zext i16 %7 to i32
  %and15 = and i32 %conv14, 61440
  %cmp16 = icmp eq i32 %and15, 16384
  br i1 %cmp16, label %if.then18, label %if.else49

if.then18:                                        ; preds = %if.else
  %8 = load ptr, ptr %zFile.addr, align 8
  %9 = load i16, ptr %mode.addr, align 2
  %call19 = call i32 @mkdir(ptr noundef %8, i16 noundef zeroext %9)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then20, label %if.end48

if.then20:                                        ; preds = %if.then18
  %call21 = call ptr @__error()
  %10 = load i32, ptr %call21, align 4
  %cmp22 = icmp ne i32 %10, 17
  br i1 %cmp22, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %11 = load ptr, ptr %zFile.addr, align 8
  %call24 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_4(ptr noundef %11, ptr noundef %sStat)
  %cmp25 = icmp ne i32 0, %call24
  br i1 %cmp25, label %if.then46, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat, ptr %sStat, i32 0, i32 1
  %12 = load i16, ptr %st_mode, align 4
  %conv28 = zext i16 %12 to i32
  %and29 = and i32 %conv28, 61440
  %cmp30 = icmp eq i32 %and29, 16384
  br i1 %cmp30, label %lor.lhs.false32, label %if.then46

lor.lhs.false32:                                  ; preds = %lor.lhs.false27
  %st_mode33 = getelementptr inbounds %struct.stat, ptr %sStat, i32 0, i32 1
  %13 = load i16, ptr %st_mode33, align 4
  %conv34 = zext i16 %13 to i32
  %and35 = and i32 %conv34, 511
  %14 = load i16, ptr %mode.addr, align 2
  %conv36 = zext i16 %14 to i32
  %and37 = and i32 %conv36, 511
  %cmp38 = icmp ne i32 %and35, %and37
  br i1 %cmp38, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %lor.lhs.false32
  %15 = load ptr, ptr %zFile.addr, align 8
  %16 = load i16, ptr %mode.addr, align 2
  %conv40 = zext i16 %16 to i32
  %and41 = and i32 %conv40, 511
  %conv42 = trunc i32 %and41 to i16
  %call43 = call i32 @"\01_chmod"(ptr noundef %15, i16 noundef zeroext %conv42)
  %cmp44 = icmp ne i32 0, %call43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true, %lor.lhs.false27, %lor.lhs.false, %if.then20
  store i32 1, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %land.lhs.true, %lor.lhs.false32
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then18
  br label %if.end85

if.else49:                                        ; preds = %if.else
  store i64 0, ptr %nWrite, align 8
  store i32 0, ptr %rc, align 4
  %17 = load ptr, ptr %zFile.addr, align 8
  %call50 = call ptr @"\01_fopen"(ptr noundef %17, ptr noundef @.str.9)
  store ptr %call50, ptr %out, align 8
  %18 = load ptr, ptr %out, align 8
  %cmp51 = icmp eq ptr %18, null
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.else49
  store i32 1, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.else49
  %19 = load ptr, ptr %pData.addr, align 8
  %call55 = call ptr @sqlite3_value_blob(ptr noundef %19)
  store ptr %call55, ptr %z, align 8
  %20 = load ptr, ptr %z, align 8
  %tobool56 = icmp ne ptr %20, null
  br i1 %tobool56, label %if.then57, label %if.end67

if.then57:                                        ; preds = %if.end54
  %21 = load ptr, ptr %z, align 8
  %22 = load ptr, ptr %pData.addr, align 8
  %call58 = call i32 @sqlite3_value_bytes(ptr noundef %22)
  %conv59 = sext i32 %call58 to i64
  %23 = load ptr, ptr %out, align 8
  %call60 = call i64 @"\01_fwrite"(ptr noundef %21, i64 noundef 1, i64 noundef %conv59, ptr noundef %23)
  store i64 %call60, ptr %n, align 8
  %24 = load ptr, ptr %pData.addr, align 8
  %call61 = call i32 @sqlite3_value_bytes(ptr noundef %24)
  %conv62 = sext i32 %call61 to i64
  store i64 %conv62, ptr %nWrite, align 8
  %25 = load i64, ptr %nWrite, align 8
  %26 = load i64, ptr %n, align 8
  %cmp63 = icmp ne i64 %25, %26
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then57
  store i32 1, ptr %rc, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.then57
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end54
  %27 = load ptr, ptr %out, align 8
  %call68 = call i32 @fclose(ptr noundef %27)
  %28 = load i32, ptr %rc, align 4
  %cmp69 = icmp eq i32 %28, 0
  br i1 %cmp69, label %land.lhs.true71, label %if.end81

land.lhs.true71:                                  ; preds = %if.end67
  %29 = load i16, ptr %mode.addr, align 2
  %conv72 = zext i16 %29 to i32
  %tobool73 = icmp ne i32 %conv72, 0
  br i1 %tobool73, label %land.lhs.true74, label %if.end81

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %30 = load ptr, ptr %zFile.addr, align 8
  %31 = load i16, ptr %mode.addr, align 2
  %conv75 = zext i16 %31 to i32
  %and76 = and i32 %conv75, 511
  %conv77 = trunc i32 %and76 to i16
  %call78 = call i32 @"\01_chmod"(ptr noundef %30, i16 noundef zeroext %conv77)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %land.lhs.true74
  store i32 1, ptr %rc, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %land.lhs.true74, %land.lhs.true71, %if.end67
  %32 = load i32, ptr %rc, align 4
  %tobool82 = icmp ne i32 %32, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end81
  store i32 2, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end81
  %33 = load ptr, ptr %pCtx.addr, align 8
  %34 = load i64, ptr %nWrite, align 8
  call void @sqlite3_result_int64(ptr noundef %33, i64 noundef %34)
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end48
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end13
  %35 = load i64, ptr %mtime.addr, align 8
  %cmp87 = icmp sge i64 %35, 0
  br i1 %cmp87, label %if.then89, label %if.end108

if.then89:                                        ; preds = %if.end86
  %36 = load i16, ptr %mode.addr, align 2
  %conv90 = zext i16 %36 to i32
  %and91 = and i32 %conv90, 61440
  %cmp92 = icmp eq i32 %and91, 40960
  %conv93 = zext i1 %cmp92 to i32
  %cmp94 = icmp eq i32 0, %conv93
  br i1 %cmp94, label %if.then96, label %if.end107

if.then96:                                        ; preds = %if.then89
  %arrayidx = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 1
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %arrayidx, i32 0, i32 1
  store i32 0, ptr %tv_usec, align 8
  %arrayidx97 = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 0
  %tv_usec98 = getelementptr inbounds %struct.timeval, ptr %arrayidx97, i32 0, i32 1
  store i32 0, ptr %tv_usec98, align 8
  %call99 = call i64 @time(ptr noundef null)
  %arrayidx100 = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 0
  %tv_sec = getelementptr inbounds %struct.timeval, ptr %arrayidx100, i32 0, i32 0
  store i64 %call99, ptr %tv_sec, align 8
  %37 = load i64, ptr %mtime.addr, align 8
  %arrayidx101 = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 1
  %tv_sec102 = getelementptr inbounds %struct.timeval, ptr %arrayidx101, i32 0, i32 0
  store i64 %37, ptr %tv_sec102, align 8
  %38 = load ptr, ptr %zFile.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 0
  %call103 = call i32 @utimes(ptr noundef %38, ptr noundef %arraydecay)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.then96
  store i32 1, ptr %retval, align 4
  br label %return

if.end106:                                        ; preds = %if.then96
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then89
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end86
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end108, %if.then105, %if.then83, %if.then53, %if.then46, %if.then12, %if.then6, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

declare ptr @__error() #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @makeDirectory(ptr noundef %zFile) #0 {
entry:
  %zFile.addr = alloca ptr, align 8
  %zCopy = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nCopy = alloca i32, align 4
  %i = alloca i32, align 4
  %sStat = alloca %struct.stat, align 8
  %rc2 = alloca i32, align 4
  store ptr %zFile, ptr %zFile.addr, align 8
  %0 = load ptr, ptr %zFile.addr, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.10, ptr noundef %0)
  store ptr %call, ptr %zCopy, align 8
  store i32 0, ptr %rc, align 4
  %1 = load ptr, ptr %zCopy, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %if.end31

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %zCopy, align 8
  %call1 = call i64 @strlen(ptr noundef %2)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %nCopy, align 4
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.else
  %3 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load ptr, ptr %zCopy, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv4, 47
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %nCopy, align 4
  %cmp7 = icmp slt i32 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %land.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %nCopy, align 4
  %cmp9 = icmp eq i32 %11, %12
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.end
  br label %while.end

if.end:                                           ; preds = %for.end
  %13 = load ptr, ptr %zCopy, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %13, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1
  %15 = load ptr, ptr %zCopy, align 8
  %call14 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_5(ptr noundef %15, ptr noundef %sStat)
  store i32 %call14, ptr %rc2, align 4
  %16 = load i32, ptr %rc2, align 4
  %cmp15 = icmp ne i32 %16, 0
  br i1 %cmp15, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.end
  %17 = load ptr, ptr %zCopy, align 8
  %call18 = call i32 @mkdir(ptr noundef %17, i16 noundef zeroext 511)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  store i32 1, ptr %rc, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  br label %if.end27

if.else21:                                        ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, ptr %sStat, i32 0, i32 1
  %18 = load i16, ptr %st_mode, align 4
  %conv22 = zext i16 %18 to i32
  %and = and i32 %conv22, 61440
  %cmp23 = icmp eq i32 %and, 16384
  br i1 %cmp23, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.else21
  store i32 1, ptr %rc, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.else21
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end20
  %19 = load ptr, ptr %zCopy, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %19, i64 %idxprom28
  store i8 47, ptr %arrayidx29, align 1
  %21 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, ptr %i, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %if.then11, %while.cond
  %22 = load ptr, ptr %zCopy, align 8
  call void @sqlite3_free(ptr noundef %22)
  br label %if.end31

if.end31:                                         ; preds = %while.end, %if.then
  %23 = load i32, ptr %rc, align 4
  ret i32 %23
}

; Function Attrs: nounwind ssp uwtable
define internal void @ctxErrorMsg(ptr noundef %ctx, ptr noundef %zFmt, ...) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %zMsg = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  store ptr null, ptr %zMsg, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zMsg, align 8
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %zMsg, align 8
  call void @sqlite3_result_error(ptr noundef %2, ptr noundef %3, i32 noundef -1)
  %4 = load ptr, ptr %zMsg, align 8
  call void @sqlite3_free(ptr noundef %4)
  call void @llvm.va_end(ptr %ap)
  ret void
}

declare i32 @unlink(ptr noundef) #1

declare i32 @symlink(ptr noundef, ptr noundef) #1

declare i32 @mkdir(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @fileStat(ptr noundef %zPath, ptr noundef %pStatBuf) #0 {
entry:
  %zPath.addr = alloca ptr, align 8
  %pStatBuf.addr = alloca ptr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pStatBuf, ptr %pStatBuf.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %1 = load ptr, ptr %pStatBuf.addr, align 8
  %call = call i32 @"\01_stat"(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @"\01_chmod"(ptr noundef, i16 noundef zeroext) #1

declare ptr @sqlite3_value_blob(ptr noundef) #1

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

declare void @sqlite3_result_int64(ptr noundef, i64 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @utimes(ptr noundef, ptr noundef) #1

declare i32 @"\01_stat"(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

declare ptr @sqlite3_vmprintf(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirConnect(ptr noundef %db, ptr noundef %pAux, i32 noundef %argc, ptr noundef %argv, ptr noundef %ppVtab, ptr noundef %pzErr) #0 {
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
  store ptr null, ptr %pNew, align 8
  %0 = load ptr, ptr %pAux.addr, align 8
  %1 = load i32, ptr %argc.addr, align 4
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load ptr, ptr %pzErr.addr, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_declare_vtab(ptr noundef %4, ptr noundef @.str.12)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = call ptr @sqlite3_malloc64(i64 noundef 24)
  store ptr %call1, ptr %pNew, align 8
  %6 = load ptr, ptr %pNew, align 8
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %pNew, align 8
  %8 = load ptr, ptr %pNew, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memset_chk(ptr noundef %7, i32 noundef 0, i64 noundef 24, i64 noundef %9) #6
  %10 = load ptr, ptr %db.addr, align 8
  %call5 = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %10, i32 noundef 3)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %pNew, align 8
  %12 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %11, ptr %12, align 8
  %13 = load i32, ptr %rc, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
  %retval = alloca i32, align 4
  %tab.addr = alloca ptr, align 8
  %pIdxInfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %idxPath = alloca i32, align 4
  %idxDir = alloca i32, align 4
  %idxLevel = alloca i32, align 4
  %idxLevelEQ = alloca i32, align 4
  %omitLevel = alloca i32, align 4
  %seenPath = alloca i32, align 4
  %seenDir = alloca i32, align 4
  %pConstraint = alloca ptr, align 8
  store ptr %tab, ptr %tab.addr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i32 -1, ptr %idxPath, align 4
  store i32 -1, ptr %idxDir, align 4
  store i32 -1, ptr %idxLevel, align 4
  store i32 0, ptr %idxLevelEQ, align 4
  store i32 0, ptr %omitLevel, align 4
  store i32 0, ptr %seenPath, align 4
  store i32 0, ptr %seenDir, align 4
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
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %op, align 4
  %conv = zext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.then, label %if.else26

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %pConstraint, align 8
  %iColumn = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %iColumn, align 4
  switch i32 %9, label %sw.epilog [
    i32 5, label %sw.bb
    i32 6, label %sw.bb8
    i32 4, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.then
  %10 = load ptr, ptr %pConstraint, align 8
  %usable = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %usable, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %sw.bb
  %12 = load i32, ptr %i, align 4
  store i32 %12, ptr %idxPath, align 4
  store i32 0, ptr %seenPath, align 4
  br label %if.end7

if.else:                                          ; preds = %sw.bb
  %13 = load i32, ptr %idxPath, align 4
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  store i32 1, ptr %seenPath, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then3
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  %14 = load ptr, ptr %pConstraint, align 8
  %usable9 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %14, i32 0, i32 2
  %15 = load i8, ptr %usable9, align 1
  %tobool10 = icmp ne i8 %15, 0
  br i1 %tobool10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %sw.bb8
  %16 = load i32, ptr %i, align 4
  store i32 %16, ptr %idxDir, align 4
  store i32 0, ptr %seenDir, align 4
  br label %if.end17

if.else12:                                        ; preds = %sw.bb8
  %17 = load i32, ptr %idxDir, align 4
  %cmp13 = icmp slt i32 %17, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.else12
  store i32 1, ptr %seenDir, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.else12
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then11
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then
  %18 = load ptr, ptr %pConstraint, align 8
  %usable19 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %18, i32 0, i32 2
  %19 = load i8, ptr %usable19, align 1
  %conv20 = zext i8 %19 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %sw.bb18
  %20 = load i32, ptr %idxLevel, align 4
  %cmp22 = icmp slt i32 %20, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  %21 = load i32, ptr %i, align 4
  store i32 %21, ptr %idxLevel, align 4
  store i32 8, ptr %idxLevelEQ, align 4
  store i32 0, ptr %omitLevel, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true, %sw.bb18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end25, %if.end17, %if.end7
  br label %if.end52

if.else26:                                        ; preds = %for.body
  %22 = load ptr, ptr %pConstraint, align 8
  %iColumn27 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %iColumn27, align 4
  %cmp28 = icmp eq i32 %23, 4
  br i1 %cmp28, label %land.lhs.true30, label %if.end51

land.lhs.true30:                                  ; preds = %if.else26
  %24 = load ptr, ptr %pConstraint, align 8
  %usable31 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %24, i32 0, i32 2
  %25 = load i8, ptr %usable31, align 1
  %conv32 = zext i8 %25 to i32
  %tobool33 = icmp ne i32 %conv32, 0
  br i1 %tobool33, label %land.lhs.true34, label %if.end51

land.lhs.true34:                                  ; preds = %land.lhs.true30
  %26 = load i32, ptr %idxLevel, align 4
  %cmp35 = icmp slt i32 %26, 0
  br i1 %cmp35, label %if.then37, label %if.end51

if.then37:                                        ; preds = %land.lhs.true34
  %27 = load ptr, ptr %pConstraint, align 8
  %op38 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %27, i32 0, i32 1
  %28 = load i8, ptr %op38, align 4
  %conv39 = zext i8 %28 to i32
  %cmp40 = icmp eq i32 %conv39, 8
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.then37
  %29 = load i32, ptr %i, align 4
  store i32 %29, ptr %idxLevel, align 4
  store i32 8, ptr %idxLevelEQ, align 4
  store i32 1, ptr %omitLevel, align 4
  br label %if.end50

if.else43:                                        ; preds = %if.then37
  %30 = load ptr, ptr %pConstraint, align 8
  %op44 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %30, i32 0, i32 1
  %31 = load i8, ptr %op44, align 4
  %conv45 = zext i8 %31 to i32
  %cmp46 = icmp eq i32 %conv45, 16
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else43
  %32 = load i32, ptr %i, align 4
  store i32 %32, ptr %idxLevel, align 4
  store i32 4, ptr %idxLevelEQ, align 4
  store i32 1, ptr %omitLevel, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.else43
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then42
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true34, %land.lhs.true30, %if.else26
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %33 = load i32, ptr %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4
  %34 = load ptr, ptr %pConstraint, align 8
  %incdec.ptr = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %pConstraint, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %35 = load i32, ptr %seenPath, align 4
  %tobool53 = icmp ne i32 %35, 0
  br i1 %tobool53, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %36 = load i32, ptr %seenDir, align 4
  %tobool54 = icmp ne i32 %36, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %lor.lhs.false, %for.end
  store i32 19, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %lor.lhs.false
  %37 = load i32, ptr %idxPath, align 4
  %cmp57 = icmp slt i32 %37, 0
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.end56
  %38 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %38, i32 0, i32 5
  store i32 0, ptr %idxNum, align 8
  %39 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows = getelementptr inbounds %struct.sqlite3_index_info, ptr %39, i32 0, i32 10
  store i64 2147483647, ptr %estimatedRows, align 8
  br label %if.end98

if.else60:                                        ; preds = %if.end56
  %40 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %aConstraintUsage, align 8
  %42 = load i32, ptr %idxPath, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %41, i64 %idxprom
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx, i32 0, i32 1
  store i8 1, ptr %omit, align 4
  %43 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage61 = getelementptr inbounds %struct.sqlite3_index_info, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %aConstraintUsage61, align 8
  %45 = load i32, ptr %idxPath, align 4
  %idxprom62 = sext i32 %45 to i64
  %arrayidx63 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %44, i64 %idxprom62
  %argvIndex = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx63, i32 0, i32 0
  store i32 1, ptr %argvIndex, align 4
  %46 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum64 = getelementptr inbounds %struct.sqlite3_index_info, ptr %46, i32 0, i32 5
  store i32 1, ptr %idxNum64, align 8
  %47 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %47, i32 0, i32 9
  store double 1.000000e+09, ptr %estimatedCost, align 8
  store i32 2, ptr %i, align 4
  %48 = load i32, ptr %idxDir, align 4
  %cmp65 = icmp sge i32 %48, 0
  br i1 %cmp65, label %if.then67, label %if.end79

if.then67:                                        ; preds = %if.else60
  %49 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage68 = getelementptr inbounds %struct.sqlite3_index_info, ptr %49, i32 0, i32 4
  %50 = load ptr, ptr %aConstraintUsage68, align 8
  %51 = load i32, ptr %idxDir, align 4
  %idxprom69 = sext i32 %51 to i64
  %arrayidx70 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %50, i64 %idxprom69
  %omit71 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx70, i32 0, i32 1
  store i8 1, ptr %omit71, align 4
  %52 = load i32, ptr %i, align 4
  %inc72 = add nsw i32 %52, 1
  store i32 %inc72, ptr %i, align 4
  %53 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage73 = getelementptr inbounds %struct.sqlite3_index_info, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %aConstraintUsage73, align 8
  %55 = load i32, ptr %idxDir, align 4
  %idxprom74 = sext i32 %55 to i64
  %arrayidx75 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %54, i64 %idxprom74
  %argvIndex76 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx75, i32 0, i32 0
  store i32 %52, ptr %argvIndex76, align 4
  %56 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum77 = getelementptr inbounds %struct.sqlite3_index_info, ptr %56, i32 0, i32 5
  %57 = load i32, ptr %idxNum77, align 8
  %or = or i32 %57, 2
  store i32 %or, ptr %idxNum77, align 8
  %58 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost78 = getelementptr inbounds %struct.sqlite3_index_info, ptr %58, i32 0, i32 9
  %59 = load double, ptr %estimatedCost78, align 8
  %div = fdiv double %59, 1.000000e+04
  store double %div, ptr %estimatedCost78, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then67, %if.else60
  %60 = load i32, ptr %idxLevel, align 4
  %cmp80 = icmp sge i32 %60, 0
  br i1 %cmp80, label %if.then82, label %if.end97

if.then82:                                        ; preds = %if.end79
  %61 = load i32, ptr %omitLevel, align 4
  %conv83 = trunc i32 %61 to i8
  %62 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage84 = getelementptr inbounds %struct.sqlite3_index_info, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %aConstraintUsage84, align 8
  %64 = load i32, ptr %idxLevel, align 4
  %idxprom85 = sext i32 %64 to i64
  %arrayidx86 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %63, i64 %idxprom85
  %omit87 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx86, i32 0, i32 1
  store i8 %conv83, ptr %omit87, align 4
  %65 = load i32, ptr %i, align 4
  %inc88 = add nsw i32 %65, 1
  store i32 %inc88, ptr %i, align 4
  %66 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage89 = getelementptr inbounds %struct.sqlite3_index_info, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %aConstraintUsage89, align 8
  %68 = load i32, ptr %idxLevel, align 4
  %idxprom90 = sext i32 %68 to i64
  %arrayidx91 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %67, i64 %idxprom90
  %argvIndex92 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %arrayidx91, i32 0, i32 0
  store i32 %65, ptr %argvIndex92, align 4
  %69 = load i32, ptr %idxLevelEQ, align 4
  %70 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum93 = getelementptr inbounds %struct.sqlite3_index_info, ptr %70, i32 0, i32 5
  %71 = load i32, ptr %idxNum93, align 8
  %or94 = or i32 %71, %69
  store i32 %or94, ptr %idxNum93, align 8
  %72 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost95 = getelementptr inbounds %struct.sqlite3_index_info, ptr %72, i32 0, i32 9
  %73 = load double, ptr %estimatedCost95, align 8
  %div96 = fdiv double %73, 1.000000e+04
  store double %div96, ptr %estimatedCost95, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then82, %if.end79
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then59
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end98, %if.then55
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirDisconnect(ptr noundef %pVtab) #0 {
entry:
  %pVtab.addr = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  %0 = load ptr, ptr %pVtab.addr, align 8
  call void @sqlite3_free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirOpen(ptr noundef %p, ptr noundef %ppCursor) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %ppCursor.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 208)
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
  %call1 = call ptr @__memset_chk(ptr noundef %2, i32 noundef 0, i64 noundef 208, i64 noundef %4) #6
  %5 = load ptr, ptr %pCur, align 8
  %iLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %5, i32 0, i32 3
  store i32 -1, ptr %iLvl, align 8
  %6 = load ptr, ptr %pCur, align 8
  %base = getelementptr inbounds %struct.fsdir_cursor, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base, ptr %7, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirClose(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  call void @fsdirResetCursor(ptr noundef %1)
  %2 = load ptr, ptr %pCur, align 8
  call void @sqlite3_free(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirFilter(ptr noundef %cur, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zDir = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cur, ptr %cur.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %zDir, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %idxStr.addr, align 8
  %2 = load ptr, ptr %pCur, align 8
  call void @fsdirResetCursor(ptr noundef %2)
  %3 = load i32, ptr %idxNum.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pCur, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_6(ptr noundef %4, ptr noundef @.str.13)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %idxNum.addr, align 4
  %and = and i32 %5, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %6 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp sgt i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %7 = phi i1 [ false, %if.end ], [ %cmp2, %land.rhs ]
  %lnot = xor i1 %7, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.fsdirFilter, ptr noundef @.str.14, i32 noundef 921, ptr noundef @.str.15) #7
  unreachable

8:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %8
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %10)
  store ptr %call, ptr %zDir, align 8
  %11 = load ptr, ptr %zDir, align 8
  %cmp3 = icmp eq ptr %11, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %cond.end
  %12 = load ptr, ptr %pCur, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_7(ptr noundef %12, ptr noundef @.str.16)
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %cond.end
  store i32 1, ptr %i, align 4
  %13 = load i32, ptr %idxNum.addr, align 4
  %and7 = and i32 %13, 2
  %cmp8 = icmp ne i32 %and7, 0
  br i1 %cmp8, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.end6
  %14 = load i32, ptr %argc.addr, align 4
  %15 = load i32, ptr %i, align 4
  %cmp11 = icmp sgt i32 %14, %15
  %lnot13 = xor i1 %cmp11, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  %conv15 = sext i32 %lnot.ext14 to i64
  %tobool16 = icmp ne i64 %conv15, 0
  br i1 %tobool16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %if.then10
  call void @__assert_rtn(ptr noundef @__func__.fsdirFilter, ptr noundef @.str.14, i32 noundef 929, ptr noundef @.str.17) #7
  unreachable

16:                                               ; No predecessors!
  br label %cond.end19

cond.false18:                                     ; preds = %if.then10
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %16
  %17 = load ptr, ptr %argv.addr, align 8
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %17, i64 %idxprom
  %19 = load ptr, ptr %arrayidx20, align 8
  %call21 = call ptr @sqlite3_value_text(ptr noundef %19)
  %20 = load ptr, ptr %pCur, align 8
  %zBase = getelementptr inbounds %struct.fsdir_cursor, ptr %20, i32 0, i32 5
  store ptr %call21, ptr %zBase, align 8
  br label %if.end22

if.end22:                                         ; preds = %cond.end19, %if.end6
  %21 = load i32, ptr %idxNum.addr, align 4
  %and23 = and i32 %21, 12
  %cmp24 = icmp ne i32 %and23, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end22
  %22 = load i32, ptr %argc.addr, align 4
  %23 = load i32, ptr %i, align 4
  %cmp27 = icmp sgt i32 %22, %23
  %lnot29 = xor i1 %cmp27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %tobool32 = icmp ne i64 %conv31, 0
  br i1 %tobool32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %if.then26
  call void @__assert_rtn(ptr noundef @__func__.fsdirFilter, ptr noundef @.str.14, i32 noundef 933, ptr noundef @.str.17) #7
  unreachable

24:                                               ; No predecessors!
  br label %cond.end35

cond.false34:                                     ; preds = %if.then26
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %24
  %25 = load ptr, ptr %argv.addr, align 8
  %26 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %26, 1
  store i32 %inc36, ptr %i, align 4
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %25, i64 %idxprom37
  %27 = load ptr, ptr %arrayidx38, align 8
  %call39 = call i32 @sqlite3_value_int(ptr noundef %27)
  %28 = load ptr, ptr %pCur, align 8
  %mxLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %28, i32 0, i32 2
  store i32 %call39, ptr %mxLvl, align 4
  %29 = load i32, ptr %idxNum.addr, align 4
  %and40 = and i32 %29, 8
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %cond.end35
  %30 = load ptr, ptr %pCur, align 8
  %mxLvl43 = getelementptr inbounds %struct.fsdir_cursor, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %mxLvl43, align 4
  %inc44 = add nsw i32 %31, 1
  store i32 %inc44, ptr %mxLvl43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %cond.end35
  %32 = load ptr, ptr %pCur, align 8
  %mxLvl46 = getelementptr inbounds %struct.fsdir_cursor, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %mxLvl46, align 4
  %cmp47 = icmp sle i32 %33, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end45
  %34 = load ptr, ptr %pCur, align 8
  %mxLvl50 = getelementptr inbounds %struct.fsdir_cursor, ptr %34, i32 0, i32 2
  store i32 1000000000, ptr %mxLvl50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end45
  br label %if.end53

if.else:                                          ; preds = %if.end22
  %35 = load ptr, ptr %pCur, align 8
  %mxLvl52 = getelementptr inbounds %struct.fsdir_cursor, ptr %35, i32 0, i32 2
  store i32 1000000000, ptr %mxLvl52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.end51
  %36 = load ptr, ptr %pCur, align 8
  %zBase54 = getelementptr inbounds %struct.fsdir_cursor, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %zBase54, align 8
  %tobool55 = icmp ne ptr %37, null
  br i1 %tobool55, label %if.then56, label %if.else62

if.then56:                                        ; preds = %if.end53
  %38 = load ptr, ptr %pCur, align 8
  %zBase57 = getelementptr inbounds %struct.fsdir_cursor, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %zBase57, align 8
  %call58 = call i64 @strlen(ptr noundef %39)
  %conv59 = trunc i64 %call58 to i32
  %add = add nsw i32 %conv59, 1
  %40 = load ptr, ptr %pCur, align 8
  %nBase = getelementptr inbounds %struct.fsdir_cursor, ptr %40, i32 0, i32 6
  store i32 %add, ptr %nBase, align 8
  %41 = load ptr, ptr %pCur, align 8
  %zBase60 = getelementptr inbounds %struct.fsdir_cursor, ptr %41, i32 0, i32 5
  %42 = load ptr, ptr %zBase60, align 8
  %43 = load ptr, ptr %zDir, align 8
  %call61 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.18, ptr noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %pCur, align 8
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %44, i32 0, i32 8
  store ptr %call61, ptr %zPath, align 8
  br label %if.end65

if.else62:                                        ; preds = %if.end53
  %45 = load ptr, ptr %zDir, align 8
  %call63 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.10, ptr noundef %45)
  %46 = load ptr, ptr %pCur, align 8
  %zPath64 = getelementptr inbounds %struct.fsdir_cursor, ptr %46, i32 0, i32 8
  store ptr %call63, ptr %zPath64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then56
  %47 = load ptr, ptr %pCur, align 8
  %zPath66 = getelementptr inbounds %struct.fsdir_cursor, ptr %47, i32 0, i32 8
  %48 = load ptr, ptr %zPath66, align 8
  %cmp67 = icmp eq ptr %48, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  store i32 7, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end65
  %49 = load ptr, ptr %pCur, align 8
  %zPath71 = getelementptr inbounds %struct.fsdir_cursor, ptr %49, i32 0, i32 8
  %50 = load ptr, ptr %zPath71, align 8
  %51 = load ptr, ptr %pCur, align 8
  %sStat = getelementptr inbounds %struct.fsdir_cursor, ptr %51, i32 0, i32 7
  %call72 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_8(ptr noundef %50, ptr noundef %sStat)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end70
  %52 = load ptr, ptr %pCur, align 8
  %53 = load ptr, ptr %pCur, align 8
  %zPath75 = getelementptr inbounds %struct.fsdir_cursor, ptr %53, i32 0, i32 8
  %54 = load ptr, ptr %zPath75, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_9(ptr noundef %52, ptr noundef @.str.19, ptr noundef %54)
  store i32 1, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end70
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then74, %if.then69, %if.then5, %if.then
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirNext(ptr noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %m = alloca i16, align 2
  %iNew = alloca i32, align 4
  %pLvl = alloca ptr, align 8
  %nNew = alloca i32, align 4
  %nByte = alloca i64, align 8
  %aNew = alloca ptr, align 8
  %pLvl42 = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %sStat = getelementptr inbounds %struct.fsdir_cursor, ptr %1, i32 0, i32 7
  %st_mode = getelementptr inbounds %struct.stat, ptr %sStat, i32 0, i32 1
  %2 = load i16, ptr %st_mode, align 4
  store i16 %2, ptr %m, align 2
  %3 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.fsdir_cursor, ptr %3, i32 0, i32 9
  %4 = load i64, ptr %iRowid, align 8
  %inc = add nsw i64 %4, 1
  store i64 %inc, ptr %iRowid, align 8
  %5 = load i16, ptr %m, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 61440
  %cmp = icmp eq i32 %and, 16384
  br i1 %cmp, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %pCur, align 8
  %iLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %iLvl, align 8
  %add = add nsw i32 %7, 3
  %8 = load ptr, ptr %pCur, align 8
  %mxLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %mxLvl, align 4
  %cmp2 = icmp slt i32 %add, %9
  br i1 %cmp2, label %if.then, label %if.end38

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %pCur, align 8
  %iLvl4 = getelementptr inbounds %struct.fsdir_cursor, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %iLvl4, align 8
  %add5 = add nsw i32 %11, 1
  store i32 %add5, ptr %iNew, align 4
  %12 = load i32, ptr %iNew, align 4
  %13 = load ptr, ptr %pCur, align 8
  %nLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nLvl, align 8
  %cmp6 = icmp sge i32 %12, %14
  br i1 %cmp6, label %if.then8, label %if.end24

if.then8:                                         ; preds = %if.then
  %15 = load i32, ptr %iNew, align 4
  %add9 = add nsw i32 %15, 1
  store i32 %add9, ptr %nNew, align 4
  %16 = load i32, ptr %nNew, align 4
  %conv10 = sext i32 %16 to i64
  %mul = mul i64 %conv10, 16
  store i64 %mul, ptr %nByte, align 8
  %17 = load ptr, ptr %pCur, align 8
  %aLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %aLvl, align 8
  %19 = load i64, ptr %nByte, align 8
  %call = call ptr @sqlite3_realloc64(ptr noundef %18, i64 noundef %19)
  store ptr %call, ptr %aNew, align 8
  %20 = load ptr, ptr %aNew, align 8
  %cmp11 = icmp eq ptr %20, null
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then8
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then8
  %21 = load ptr, ptr %aNew, align 8
  %22 = load ptr, ptr %pCur, align 8
  %nLvl14 = getelementptr inbounds %struct.fsdir_cursor, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nLvl14, align 8
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds %struct.FsdirLevel, ptr %21, i64 %idxprom
  %24 = load i32, ptr %nNew, align 4
  %25 = load ptr, ptr %pCur, align 8
  %nLvl15 = getelementptr inbounds %struct.fsdir_cursor, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %nLvl15, align 8
  %sub = sub nsw i32 %24, %26
  %conv16 = sext i32 %sub to i64
  %mul17 = mul i64 16, %conv16
  %27 = load ptr, ptr %aNew, align 8
  %28 = load ptr, ptr %pCur, align 8
  %nLvl18 = getelementptr inbounds %struct.fsdir_cursor, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nLvl18, align 8
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds %struct.FsdirLevel, ptr %27, i64 %idxprom19
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx20, i1 false, i1 true, i1 false)
  %call21 = call ptr @__memset_chk(ptr noundef %arrayidx, i32 noundef 0, i64 noundef %mul17, i64 noundef %30) #6
  %31 = load ptr, ptr %aNew, align 8
  %32 = load ptr, ptr %pCur, align 8
  %aLvl22 = getelementptr inbounds %struct.fsdir_cursor, ptr %32, i32 0, i32 4
  store ptr %31, ptr %aLvl22, align 8
  %33 = load i32, ptr %nNew, align 4
  %34 = load ptr, ptr %pCur, align 8
  %nLvl23 = getelementptr inbounds %struct.fsdir_cursor, ptr %34, i32 0, i32 1
  store i32 %33, ptr %nLvl23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then
  %35 = load i32, ptr %iNew, align 4
  %36 = load ptr, ptr %pCur, align 8
  %iLvl25 = getelementptr inbounds %struct.fsdir_cursor, ptr %36, i32 0, i32 3
  store i32 %35, ptr %iLvl25, align 8
  %37 = load ptr, ptr %pCur, align 8
  %aLvl26 = getelementptr inbounds %struct.fsdir_cursor, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %aLvl26, align 8
  %39 = load i32, ptr %iNew, align 4
  %idxprom27 = sext i32 %39 to i64
  %arrayidx28 = getelementptr inbounds %struct.FsdirLevel, ptr %38, i64 %idxprom27
  store ptr %arrayidx28, ptr %pLvl, align 8
  %40 = load ptr, ptr %pCur, align 8
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %40, i32 0, i32 8
  %41 = load ptr, ptr %zPath, align 8
  %42 = load ptr, ptr %pLvl, align 8
  %zDir = getelementptr inbounds %struct.FsdirLevel, ptr %42, i32 0, i32 1
  store ptr %41, ptr %zDir, align 8
  %43 = load ptr, ptr %pCur, align 8
  %zPath29 = getelementptr inbounds %struct.fsdir_cursor, ptr %43, i32 0, i32 8
  store ptr null, ptr %zPath29, align 8
  %44 = load ptr, ptr %pLvl, align 8
  %zDir30 = getelementptr inbounds %struct.FsdirLevel, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %zDir30, align 8
  %call31 = call ptr @"\01_opendir"(ptr noundef %45)
  %46 = load ptr, ptr %pLvl, align 8
  %pDir = getelementptr inbounds %struct.FsdirLevel, ptr %46, i32 0, i32 0
  store ptr %call31, ptr %pDir, align 8
  %47 = load ptr, ptr %pLvl, align 8
  %pDir32 = getelementptr inbounds %struct.FsdirLevel, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pDir32, align 8
  %cmp33 = icmp eq ptr %48, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end24
  %49 = load ptr, ptr %pCur, align 8
  %50 = load ptr, ptr %pLvl, align 8
  %zDir36 = getelementptr inbounds %struct.FsdirLevel, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %zDir36, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_10(ptr noundef %49, ptr noundef @.str.20, ptr noundef %51)
  store i32 1, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end24
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end93, %if.then73, %if.then66, %if.end38
  %52 = load ptr, ptr %pCur, align 8
  %iLvl39 = getelementptr inbounds %struct.fsdir_cursor, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %iLvl39, align 8
  %cmp40 = icmp sge i32 %53, 0
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %54 = load ptr, ptr %pCur, align 8
  %aLvl43 = getelementptr inbounds %struct.fsdir_cursor, ptr %54, i32 0, i32 4
  %55 = load ptr, ptr %aLvl43, align 8
  %56 = load ptr, ptr %pCur, align 8
  %iLvl44 = getelementptr inbounds %struct.fsdir_cursor, ptr %56, i32 0, i32 3
  %57 = load i32, ptr %iLvl44, align 8
  %idxprom45 = sext i32 %57 to i64
  %arrayidx46 = getelementptr inbounds %struct.FsdirLevel, ptr %55, i64 %idxprom45
  store ptr %arrayidx46, ptr %pLvl42, align 8
  %58 = load ptr, ptr %pLvl42, align 8
  %pDir47 = getelementptr inbounds %struct.FsdirLevel, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %pDir47, align 8
  %call48 = call ptr @"\01_readdir"(ptr noundef %59)
  store ptr %call48, ptr %pEntry, align 8
  %60 = load ptr, ptr %pEntry, align 8
  %tobool = icmp ne ptr %60, null
  br i1 %tobool, label %if.then49, label %if.end93

if.then49:                                        ; preds = %while.body
  %61 = load ptr, ptr %pEntry, align 8
  %d_name = getelementptr inbounds %struct.dirent, ptr %61, i32 0, i32 5
  %arrayidx50 = getelementptr inbounds [1024 x i8], ptr %d_name, i64 0, i64 0
  %62 = load i8, ptr %arrayidx50, align 1
  %conv51 = sext i8 %62 to i32
  %cmp52 = icmp eq i32 %conv51, 46
  br i1 %cmp52, label %if.then54, label %if.end75

if.then54:                                        ; preds = %if.then49
  %63 = load ptr, ptr %pEntry, align 8
  %d_name55 = getelementptr inbounds %struct.dirent, ptr %63, i32 0, i32 5
  %arrayidx56 = getelementptr inbounds [1024 x i8], ptr %d_name55, i64 0, i64 1
  %64 = load i8, ptr %arrayidx56, align 1
  %conv57 = sext i8 %64 to i32
  %cmp58 = icmp eq i32 %conv57, 46
  br i1 %cmp58, label %land.lhs.true60, label %if.end67

land.lhs.true60:                                  ; preds = %if.then54
  %65 = load ptr, ptr %pEntry, align 8
  %d_name61 = getelementptr inbounds %struct.dirent, ptr %65, i32 0, i32 5
  %arrayidx62 = getelementptr inbounds [1024 x i8], ptr %d_name61, i64 0, i64 2
  %66 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %66 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %land.lhs.true60
  br label %while.cond, !llvm.loop !15

if.end67:                                         ; preds = %land.lhs.true60, %if.then54
  %67 = load ptr, ptr %pEntry, align 8
  %d_name68 = getelementptr inbounds %struct.dirent, ptr %67, i32 0, i32 5
  %arrayidx69 = getelementptr inbounds [1024 x i8], ptr %d_name68, i64 0, i64 1
  %68 = load i8, ptr %arrayidx69, align 1
  %conv70 = sext i8 %68 to i32
  %cmp71 = icmp eq i32 %conv70, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end67
  br label %while.cond, !llvm.loop !15

if.end74:                                         ; preds = %if.end67
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then49
  %69 = load ptr, ptr %pCur, align 8
  %zPath76 = getelementptr inbounds %struct.fsdir_cursor, ptr %69, i32 0, i32 8
  %70 = load ptr, ptr %zPath76, align 8
  call void @sqlite3_free(ptr noundef %70)
  %71 = load ptr, ptr %pLvl42, align 8
  %zDir77 = getelementptr inbounds %struct.FsdirLevel, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %zDir77, align 8
  %73 = load ptr, ptr %pEntry, align 8
  %d_name78 = getelementptr inbounds %struct.dirent, ptr %73, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %d_name78, i64 0, i64 0
  %call79 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.18, ptr noundef %72, ptr noundef %arraydecay)
  %74 = load ptr, ptr %pCur, align 8
  %zPath80 = getelementptr inbounds %struct.fsdir_cursor, ptr %74, i32 0, i32 8
  store ptr %call79, ptr %zPath80, align 8
  %75 = load ptr, ptr %pCur, align 8
  %zPath81 = getelementptr inbounds %struct.fsdir_cursor, ptr %75, i32 0, i32 8
  %76 = load ptr, ptr %zPath81, align 8
  %cmp82 = icmp eq ptr %76, null
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end75
  store i32 7, ptr %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end75
  %77 = load ptr, ptr %pCur, align 8
  %zPath86 = getelementptr inbounds %struct.fsdir_cursor, ptr %77, i32 0, i32 8
  %78 = load ptr, ptr %zPath86, align 8
  %79 = load ptr, ptr %pCur, align 8
  %sStat87 = getelementptr inbounds %struct.fsdir_cursor, ptr %79, i32 0, i32 7
  %call88 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_11(ptr noundef %78, ptr noundef %sStat87)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end85
  %80 = load ptr, ptr %pCur, align 8
  %81 = load ptr, ptr %pCur, align 8
  %zPath91 = getelementptr inbounds %struct.fsdir_cursor, ptr %81, i32 0, i32 8
  %82 = load ptr, ptr %zPath91, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_12(ptr noundef %80, ptr noundef @.str.19, ptr noundef %82)
  store i32 1, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.end85
  store i32 0, ptr %retval, align 4
  br label %return

if.end93:                                         ; preds = %while.body
  %83 = load ptr, ptr %pLvl42, align 8
  %pDir94 = getelementptr inbounds %struct.FsdirLevel, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %pDir94, align 8
  %call95 = call i32 @"\01_closedir"(ptr noundef %84)
  %85 = load ptr, ptr %pLvl42, align 8
  %zDir96 = getelementptr inbounds %struct.FsdirLevel, ptr %85, i32 0, i32 1
  %86 = load ptr, ptr %zDir96, align 8
  call void @sqlite3_free(ptr noundef %86)
  %87 = load ptr, ptr %pLvl42, align 8
  %pDir97 = getelementptr inbounds %struct.FsdirLevel, ptr %87, i32 0, i32 0
  store ptr null, ptr %pDir97, align 8
  %88 = load ptr, ptr %pLvl42, align 8
  %zDir98 = getelementptr inbounds %struct.FsdirLevel, ptr %88, i32 0, i32 1
  store ptr null, ptr %zDir98, align 8
  %89 = load ptr, ptr %pCur, align 8
  %iLvl99 = getelementptr inbounds %struct.fsdir_cursor, ptr %89, i32 0, i32 3
  %90 = load i32, ptr %iLvl99, align 8
  %dec = add nsw i32 %90, -1
  store i32 %dec, ptr %iLvl99, align 8
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %91 = load ptr, ptr %pCur, align 8
  %zPath100 = getelementptr inbounds %struct.fsdir_cursor, ptr %91, i32 0, i32 8
  %92 = load ptr, ptr %zPath100, align 8
  call void @sqlite3_free(ptr noundef %92)
  %93 = load ptr, ptr %pCur, align 8
  %zPath101 = getelementptr inbounds %struct.fsdir_cursor, ptr %93, i32 0, i32 8
  store ptr null, ptr %zPath101, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end92, %if.then90, %if.then84, %if.then35, %if.then13
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirEof(ptr noundef %cur) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %zPath, align 8
  %cmp = icmp eq ptr %2, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pCur = alloca ptr, align 8
  %m = alloca i16, align 2
  %aStatic = alloca [64 x i8], align 1
  %aBuf = alloca ptr, align 8
  %nBuf = alloca i64, align 8
  %n = alloca i32, align 4
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load i32, ptr %i.addr, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb39
    i32 5, label %sw.bb40
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %pCur, align 8
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %zPath, align 8
  %5 = load ptr, ptr %pCur, align 8
  %nBase = getelementptr inbounds %struct.fsdir_cursor, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %nBase, align 8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  call void @sqlite3_result_text(ptr noundef %2, ptr noundef %arrayidx, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %7 = load ptr, ptr %ctx.addr, align 8
  %8 = load ptr, ptr %pCur, align 8
  %sStat = getelementptr inbounds %struct.fsdir_cursor, ptr %8, i32 0, i32 7
  %st_mode = getelementptr inbounds %struct.stat, ptr %sStat, i32 0, i32 1
  %9 = load i16, ptr %st_mode, align 4
  %conv = zext i16 %9 to i64
  call void @sqlite3_result_int64(ptr noundef %7, i64 noundef %conv)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %10 = load ptr, ptr %ctx.addr, align 8
  %11 = load ptr, ptr %pCur, align 8
  %sStat3 = getelementptr inbounds %struct.fsdir_cursor, ptr %11, i32 0, i32 7
  %st_mtimespec = getelementptr inbounds %struct.stat, ptr %sStat3, i32 0, i32 8
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %st_mtimespec, i32 0, i32 0
  %12 = load i64, ptr %tv_sec, align 8
  call void @sqlite3_result_int64(ptr noundef %10, i64 noundef %12)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %13 = load ptr, ptr %pCur, align 8
  %sStat5 = getelementptr inbounds %struct.fsdir_cursor, ptr %13, i32 0, i32 7
  %st_mode6 = getelementptr inbounds %struct.stat, ptr %sStat5, i32 0, i32 1
  %14 = load i16, ptr %st_mode6, align 4
  store i16 %14, ptr %m, align 2
  %15 = load i16, ptr %m, align 2
  %conv7 = zext i16 %15 to i32
  %and = and i32 %conv7, 61440
  %cmp = icmp eq i32 %and, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb4
  %16 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_null(ptr noundef %16)
  br label %if.end38

if.else:                                          ; preds = %sw.bb4
  %17 = load i16, ptr %m, align 2
  %conv9 = zext i16 %17 to i32
  %and10 = and i32 %conv9, 61440
  %cmp11 = icmp eq i32 %and10, 40960
  br i1 %cmp11, label %if.then13, label %if.else35

if.then13:                                        ; preds = %if.else
  %arraydecay = getelementptr inbounds [64 x i8], ptr %aStatic, i64 0, i64 0
  store ptr %arraydecay, ptr %aBuf, align 8
  store i64 64, ptr %nBuf, align 8
  br label %while.body

while.body:                                       ; preds = %if.then13, %if.end29
  %18 = load ptr, ptr %pCur, align 8
  %zPath14 = getelementptr inbounds %struct.fsdir_cursor, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %zPath14, align 8
  %20 = load ptr, ptr %aBuf, align 8
  %21 = load i64, ptr %nBuf, align 8
  %call = call i64 @readlink(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  %conv15 = trunc i64 %call to i32
  store i32 %conv15, ptr %n, align 4
  %22 = load i32, ptr %n, align 4
  %conv16 = sext i32 %22 to i64
  %23 = load i64, ptr %nBuf, align 8
  %cmp17 = icmp slt i64 %conv16, %23
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %24 = load ptr, ptr %aBuf, align 8
  %arraydecay20 = getelementptr inbounds [64 x i8], ptr %aStatic, i64 0, i64 0
  %cmp21 = icmp ne ptr %24, %arraydecay20
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end
  %25 = load ptr, ptr %aBuf, align 8
  call void @sqlite3_free(ptr noundef %25)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end
  %26 = load i64, ptr %nBuf, align 8
  %mul = mul nsw i64 %26, 2
  store i64 %mul, ptr %nBuf, align 8
  %27 = load i64, ptr %nBuf, align 8
  %call25 = call ptr @sqlite3_malloc64(i64 noundef %27)
  store ptr %call25, ptr %aBuf, align 8
  %28 = load ptr, ptr %aBuf, align 8
  %cmp26 = icmp eq ptr %28, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  %29 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %29)
  store i32 7, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end24
  br label %while.body

while.end:                                        ; preds = %if.then19
  %30 = load ptr, ptr %ctx.addr, align 8
  %31 = load ptr, ptr %aBuf, align 8
  %32 = load i32, ptr %n, align 4
  call void @sqlite3_result_text(ptr noundef %30, ptr noundef %31, i32 noundef %32, ptr noundef inttoptr (i64 -1 to ptr))
  %33 = load ptr, ptr %aBuf, align 8
  %arraydecay30 = getelementptr inbounds [64 x i8], ptr %aStatic, i64 0, i64 0
  %cmp31 = icmp ne ptr %33, %arraydecay30
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %while.end
  %34 = load ptr, ptr %aBuf, align 8
  call void @sqlite3_free(ptr noundef %34)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %while.end
  br label %if.end37

if.else35:                                        ; preds = %if.else
  %35 = load ptr, ptr %ctx.addr, align 8
  %36 = load ptr, ptr %pCur, align 8
  %zPath36 = getelementptr inbounds %struct.fsdir_cursor, ptr %36, i32 0, i32 8
  %37 = load ptr, ptr %zPath36, align 8
  call void @readFileContents(ptr noundef %35, ptr noundef %37)
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.end34
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %38 = load ptr, ptr %ctx.addr, align 8
  %39 = load ptr, ptr %pCur, align 8
  %iLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %39, i32 0, i32 3
  %40 = load i32, ptr %iLvl, align 8
  %add = add nsw i32 %40, 2
  call void @sqlite3_result_int(ptr noundef %38, i32 noundef %add)
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb40
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb39, %if.end38, %sw.bb2, %sw.bb1, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then28
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  %0 = load ptr, ptr %cur.addr, align 8
  store ptr %0, ptr %pCur, align 8
  %1 = load ptr, ptr %pCur, align 8
  %iRowid = getelementptr inbounds %struct.fsdir_cursor, ptr %1, i32 0, i32 9
  %2 = load i64, ptr %iRowid, align 8
  %3 = load ptr, ptr %pRowid.addr, align 8
  store i64 %2, ptr %3, align 8
  ret i32 0
}

declare i32 @sqlite3_create_module(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_declare_vtab(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare i32 @sqlite3_vtab_config(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @fsdirResetCursor(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pLvl = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %pCur.addr, align 8
  %iLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %iLvl, align 8
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pCur.addr, align 8
  %aLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %aLvl, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.FsdirLevel, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %pLvl, align 8
  %6 = load ptr, ptr %pLvl, align 8
  %pDir = getelementptr inbounds %struct.FsdirLevel, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pDir, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %pLvl, align 8
  %pDir1 = getelementptr inbounds %struct.FsdirLevel, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pDir1, align 8
  %call = call i32 @"\01_closedir"(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load ptr, ptr %pLvl, align 8
  %zDir = getelementptr inbounds %struct.FsdirLevel, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %zDir, align 8
  call void @sqlite3_free(ptr noundef %11)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %pCur.addr, align 8
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %zPath, align 8
  call void @sqlite3_free(ptr noundef %14)
  %15 = load ptr, ptr %pCur.addr, align 8
  %aLvl2 = getelementptr inbounds %struct.fsdir_cursor, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %aLvl2, align 8
  call void @sqlite3_free(ptr noundef %16)
  %17 = load ptr, ptr %pCur.addr, align 8
  %aLvl3 = getelementptr inbounds %struct.fsdir_cursor, ptr %17, i32 0, i32 4
  store ptr null, ptr %aLvl3, align 8
  %18 = load ptr, ptr %pCur.addr, align 8
  %zPath4 = getelementptr inbounds %struct.fsdir_cursor, ptr %18, i32 0, i32 8
  store ptr null, ptr %zPath4, align 8
  %19 = load ptr, ptr %pCur.addr, align 8
  %zBase = getelementptr inbounds %struct.fsdir_cursor, ptr %19, i32 0, i32 5
  store ptr null, ptr %zBase, align 8
  %20 = load ptr, ptr %pCur.addr, align 8
  %nBase = getelementptr inbounds %struct.fsdir_cursor, ptr %20, i32 0, i32 6
  store i32 0, ptr %nBase, align 8
  %21 = load ptr, ptr %pCur.addr, align 8
  %nLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %21, i32 0, i32 1
  store i32 0, ptr %nLvl, align 8
  %22 = load ptr, ptr %pCur.addr, align 8
  %iLvl5 = getelementptr inbounds %struct.fsdir_cursor, ptr %22, i32 0, i32 3
  store i32 -1, ptr %iLvl5, align 8
  %23 = load ptr, ptr %pCur.addr, align 8
  %iRowid = getelementptr inbounds %struct.fsdir_cursor, ptr %23, i32 0, i32 9
  store i64 1, ptr %iRowid, align 8
  ret void
}

declare i32 @"\01_closedir"(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @fsdirSetErrmsg(ptr noundef %pCur, ptr noundef %zFmt, ...) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.fsdir_cursor, ptr %2, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %3 = load ptr, ptr %pVtab, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %3, i32 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind ssp uwtable
define internal i32 @fileLinkStat(ptr noundef %zPath, ptr noundef %pStatBuf) #0 {
entry:
  %zPath.addr = alloca ptr, align 8
  %pStatBuf.addr = alloca ptr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pStatBuf, ptr %pStatBuf.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %1 = load ptr, ptr %pStatBuf.addr, align 8
  %call = call i32 @"\01_lstat"(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @"\01_lstat"(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

declare ptr @"\01_opendir"(ptr noundef) #1

declare ptr @"\01_readdir"(ptr noundef) #1

declare void @sqlite3_result_null(ptr noundef) #1

declare i64 @readlink(ptr noundef, ptr noundef, i64 noundef) #1

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @portable_realpath(ptr noundef %zPath) #0 {
entry:
  %retval = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %z = alloca ptr, align 8
  %zBuf = alloca [1025 x i8], align 1
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr null, ptr %zOut, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zPath.addr, align 8
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %zBuf, i64 0, i64 0
  %call = call ptr @"\01_realpath$DARWIN_EXTSN"(ptr noundef %1, ptr noundef %arraydecay)
  store ptr %call, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %arraydecay2 = getelementptr inbounds [1025 x i8], ptr %zBuf, i64 0, i64 0
  %call3 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.10, ptr noundef %arraydecay2)
  store ptr %call3, ptr %zOut, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %3 = load ptr, ptr %zOut, align 8
  %cmp5 = icmp eq ptr %3, null
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %4 = load ptr, ptr %zPath.addr, align 8
  %call7 = call ptr @"\01_realpath$DARWIN_EXTSN"(ptr noundef %4, ptr noundef null)
  store ptr %call7, ptr %z, align 8
  %5 = load ptr, ptr %z, align 8
  %tobool8 = icmp ne ptr %5, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then6
  %6 = load ptr, ptr %z, align 8
  %call10 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.10, ptr noundef %6)
  store ptr %call10, ptr %zOut, align 8
  %7 = load ptr, ptr %z, align 8
  call void @free(ptr noundef %7)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end4
  %8 = load ptr, ptr %zOut, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

declare ptr @"\01_realpath$DARWIN_EXTSN"(ptr noundef, ptr noundef) #1

declare void @free(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_0(ptr noundef %db)  alwaysinline#0 {
entry:
  %db.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_module(ptr noundef %0, ptr noundef @.str.11, ptr noundef @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_0.fsdirModule, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  ret i32 %1
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_1(ptr noundef %ctx, ptr noundef %zFmt, ...)  alwaysinline#0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %zMsg = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  store ptr null, ptr %zMsg, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zMsg, align 8
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %zMsg, align 8
  call void @sqlite3_result_error(ptr noundef %2, ptr noundef %3, i32 noundef -1)
  %4 = load ptr, ptr %zMsg, align 8
  call void @sqlite3_free(ptr noundef %4)
  call void @llvm.va_end(ptr %ap)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_2(ptr noundef %ctx, ptr noundef %zFmt, ...)  alwaysinline#0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %zMsg = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  store ptr null, ptr %zMsg, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zMsg, align 8
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %zMsg, align 8
  call void @sqlite3_result_error(ptr noundef %2, ptr noundef %3, i32 noundef -1)
  %4 = load ptr, ptr %zMsg, align 8
  call void @sqlite3_free(ptr noundef %4)
  call void @llvm.va_end(ptr %ap)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_3(ptr noundef %ctx, ptr noundef %zFmt, ...)  alwaysinline#0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %zMsg = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  store ptr null, ptr %zMsg, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zMsg, align 8
  %2 = load ptr, ptr %ctx.addr, align 8
  %3 = load ptr, ptr %zMsg, align 8
  call void @sqlite3_result_error(ptr noundef %2, ptr noundef %3, i32 noundef -1)
  %4 = load ptr, ptr %zMsg, align 8
  call void @sqlite3_free(ptr noundef %4)
  call void @llvm.va_end(ptr %ap)
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_4(ptr noundef %zPath, ptr noundef %pStatBuf)  alwaysinline#0 {
entry:
  %zPath.addr = alloca ptr, align 8
  %pStatBuf.addr = alloca ptr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pStatBuf, ptr %pStatBuf.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %1 = load ptr, ptr %pStatBuf.addr, align 8
  %call = call i32 @"\01_stat"(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_5(ptr noundef %zPath, ptr noundef %pStatBuf)  alwaysinline#0 {
entry:
  %zPath.addr = alloca ptr, align 8
  %pStatBuf.addr = alloca ptr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pStatBuf, ptr %pStatBuf.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %1 = load ptr, ptr %pStatBuf.addr, align 8
  %call = call i32 @"\01_stat"(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_6(ptr noundef %pCur, ptr noundef %zFmt, ...)  alwaysinline#0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.fsdir_cursor, ptr %2, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %3 = load ptr, ptr %pVtab, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %3, i32 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_7(ptr noundef %pCur, ptr noundef %zFmt, ...)  alwaysinline#0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.fsdir_cursor, ptr %2, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %3 = load ptr, ptr %pVtab, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %3, i32 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_8(ptr noundef %zPath, ptr noundef %pStatBuf)  alwaysinline#0 {
entry:
  %zPath.addr = alloca ptr, align 8
  %pStatBuf.addr = alloca ptr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pStatBuf, ptr %pStatBuf.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %1 = load ptr, ptr %pStatBuf.addr, align 8
  %call = call i32 @"\01_lstat"(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_9(ptr noundef %pCur, ptr noundef %zFmt, ...)  alwaysinline#0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.fsdir_cursor, ptr %2, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %3 = load ptr, ptr %pVtab, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %3, i32 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_10(ptr noundef %pCur, ptr noundef %zFmt, ...)  alwaysinline#0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.fsdir_cursor, ptr %2, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %3 = load ptr, ptr %pVtab, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %3, i32 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_11(ptr noundef %zPath, ptr noundef %pStatBuf)  alwaysinline#0 {
entry:
  %zPath.addr = alloca ptr, align 8
  %pStatBuf.addr = alloca ptr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pStatBuf, ptr %pStatBuf.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %1 = load ptr, ptr %pStatBuf.addr, align 8
  %call = call i32 @"\01_lstat"(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_12(ptr noundef %pCur, ptr noundef %zFmt, ...)  alwaysinline#0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %zFmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %zFmt, ptr %zFmt.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFmt.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %pCur.addr, align 8
  %base = getelementptr inbounds %struct.fsdir_cursor, ptr %2, i32 0, i32 0
  %pVtab = getelementptr inbounds %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  %3 = load ptr, ptr %pVtab, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %3, i32 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
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
