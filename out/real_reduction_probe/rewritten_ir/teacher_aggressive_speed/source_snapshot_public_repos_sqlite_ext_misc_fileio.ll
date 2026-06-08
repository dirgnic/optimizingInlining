; ModuleID = './out/real_reduction_probe/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_sqlite_ext_misc_fileio.prepared.ll'
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
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 0, ptr %rc, align 4
  %call = call i32 @sqlite3_create_function(ptr noundef %db, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 524289, ptr noundef null, ptr noundef nonnull @readfileFunc, ptr noundef null, ptr noundef null) #8
  store i32 %call, ptr %rc, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 524289, ptr noundef null, ptr noundef nonnull @writefileFunc, ptr noundef null, ptr noundef null) #8
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %db.addr, align 8
  %call4 = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @lsModeFunc, ptr noundef null, ptr noundef null) #8
  store i32 %call4, ptr %rc, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %4 = load ptr, ptr %db.addr, align 8
  %call8 = call i32 @fsdirRegister(ptr noundef %4)
  store i32 %call8, ptr %rc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %5 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %6 = load ptr, ptr %db.addr, align 8
  %call12 = call i32 @sqlite3_create_function(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @realpathFunc, ptr noundef null, ptr noundef null) #8
  store i32 %call12, ptr %rc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %7 = load i32, ptr %rc, align 4
  ret i32 %7
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @readfileFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %argv, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %0) #8
  store ptr %call, ptr %zName, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %context.addr, align 8
  %2 = load ptr, ptr %zName, align 8
  call void @readFileContents(ptr noundef %1, ptr noundef %2)
  br label %return

return:                                           ; preds = %entry, %if.end
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
  %cmp = icmp slt i32 %argc, 2
  %0 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %0, 4
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef -1) #8
  br label %if.end50

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %3) #8
  store ptr %call, ptr %zFile, align 8
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.end50, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load i32, ptr %argc.addr, align 4
  %cmp5 = icmp sgt i32 %4, 2
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 2
  %6 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @sqlite3_value_int(ptr noundef %6) #8
  %conv = trunc i32 %call8 to i16
  store i16 %conv, ptr %mode, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4
  %7 = load i32, ptr %argc.addr, align 4
  %cmp10 = icmp eq i32 %7, 4
  br i1 %cmp10, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end9
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %8, i64 3
  %9 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i64 @sqlite3_value_int64(ptr noundef %9) #8
  store i64 %call14, ptr %mtime, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9
  %10 = load ptr, ptr %context.addr, align 8
  %11 = load ptr, ptr %zFile, align 8
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx16, align 8
  %14 = load i16, ptr %mode, align 2
  %15 = load i64, ptr %mtime, align 8
  %call17 = call i32 @writeFile(ptr noundef %10, ptr noundef %11, ptr noundef %13, i16 noundef zeroext %14, i64 noundef %15)
  store i32 %call17, ptr %res, align 4
  %cmp18 = icmp eq i32 %call17, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end15
  %call20 = call ptr @__error() #8
  %16 = load i32, ptr %call20, align 4
  %cmp21 = icmp eq i32 %16, 2
  br i1 %cmp21, label %if.then23, label %if.end31

if.then23:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %zFile, align 8
  %call24 = call i32 @makeDirectory(ptr noundef %17)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.then23
  %18 = load ptr, ptr %context.addr, align 8
  %19 = load ptr, ptr %zFile, align 8
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %20, i64 1
  %21 = load ptr, ptr %arrayidx28, align 8
  %22 = load i16, ptr %mode, align 2
  %23 = load i64, ptr %mtime, align 8
  %call29 = call i32 @writeFile(ptr noundef %18, ptr noundef %19, ptr noundef %21, i16 noundef zeroext %22, i64 noundef %23)
  store i32 %call29, ptr %res, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.then27, %land.lhs.true, %if.end15
  %24 = load i32, ptr %argc.addr, align 4
  %cmp32 = icmp sle i32 %24, 2
  %25 = load i32, ptr %res, align 4
  %cmp35.not = icmp eq i32 %25, 0
  %or.cond1 = select i1 %cmp32, i1 true, i1 %cmp35.not
  br i1 %or.cond1, label %if.end50, label %if.then37

if.then37:                                        ; preds = %if.end31
  %26 = load i16, ptr %mode, align 2
  %27 = and i16 %26, -4096
  %cmp39 = icmp eq i16 %27, -24576
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then37
  %28 = load ptr, ptr %context.addr, align 8
  %29 = load ptr, ptr %zFile, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_0(ptr noundef %28, ptr noundef nonnull @.str.6, ptr noundef %29)
  br label %if.end50

if.else:                                          ; preds = %if.then37
  %30 = load i16, ptr %mode, align 2
  %31 = and i16 %30, -4096
  %cmp44 = icmp eq i16 %31, 16384
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.else
  %32 = load ptr, ptr %context.addr, align 8
  %33 = load ptr, ptr %zFile, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_1(ptr noundef %32, ptr noundef nonnull @.str.7, ptr noundef %33)
  br label %if.end50

if.else47:                                        ; preds = %if.else
  %34 = load ptr, ptr %context.addr, align 8
  %35 = load ptr, ptr %zFile, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_2(ptr noundef %34, ptr noundef nonnull @.str.8, ptr noundef %35)
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %if.else47, %if.then46, %if.end, %if.end31, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @lsModeFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %iMode = alloca i32, align 4
  %z = alloca [16 x i8], align 1
  %m = alloca i32, align 4
  %a = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %argv, align 8
  %call = call i32 @sqlite3_value_int(ptr noundef %0) #8
  store i32 %call, ptr %iMode, align 4
  %and = and i32 %call, 61440
  %cmp = icmp eq i32 %and, 40960
  br i1 %cmp, label %if.end14, label %if.else

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %iMode, align 4
  %and2 = and i32 %1, 61440
  %cmp3 = icmp eq i32 %and2, 32768
  %2 = load i32, ptr %iMode, align 4
  %and7 = and i32 %2, 61440
  %cmp8 = icmp eq i32 %and7, 16384
  %. = select i1 %cmp8, i8 100, i8 63
  %storemerge2 = select i1 %cmp3, i8 45, i8 %.
  br label %if.end14

if.end14:                                         ; preds = %entry, %if.else
  %storemerge3 = phi i8 [ %storemerge2, %if.else ], [ 108, %entry ]
  store i8 %storemerge3, ptr %z, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end14
  %storemerge = phi i32 [ 0, %if.end14 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp15 = icmp slt i32 %storemerge, 3
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %iMode, align 4
  %4 = load i32, ptr %i, align 4
  %sub = sub nsw i32 2, %4
  %mul = mul nsw i32 %sub, 3
  %shr = ashr i32 %3, %mul
  store i32 %shr, ptr %m, align 4
  %mul16 = mul nsw i32 %4, 3
  %add = add nsw i32 %mul16, 1
  %idxprom = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 %idxprom
  store ptr %arrayidx17, ptr %a, align 8
  %and18 = and i32 %shr, 4
  %tobool.not = icmp eq i32 %and18, 0
  %conv = select i1 %tobool.not, i8 45, i8 114
  store i8 %conv, ptr %arrayidx17, align 1
  %5 = load i32, ptr %m, align 4
  %and20 = and i32 %5, 2
  %tobool21.not = icmp eq i32 %and20, 0
  %conv23 = select i1 %tobool21.not, i8 45, i8 119
  %6 = load ptr, ptr %a, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %conv23, ptr %arrayidx24, align 1
  %7 = load i32, ptr %m, align 4
  %and25 = and i32 %7, 1
  %tobool26.not = icmp eq i32 %and25, 0
  %conv28 = select i1 %tobool26.not, i8 45, i8 120
  %8 = load ptr, ptr %a, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %8, i64 2
  store i8 %conv28, ptr %arrayidx29, align 1
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx30 = getelementptr inbounds [16 x i8], ptr %z, i64 0, i64 10
  store i8 0, ptr %arrayidx30, align 1
  %10 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %10, ptr noundef nonnull %z, i32 noundef -1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirRegister(ptr noundef %db) #0 {
entry:
  %call = call i32 @sqlite3_create_module(ptr noundef %db, ptr noundef nonnull @.str.11, ptr noundef nonnull @fsdirRegister.fsdirModule, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal void @realpathFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %zPath = alloca ptr, align 8
  %zCopy = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %cSep = alloca i8, align 1
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %i61 = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  store i8 0, ptr %cSep, align 1
  %0 = load ptr, ptr %argv, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %0) #8
  store ptr %call, ptr %zPath, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end140, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zPath, align 8
  %2 = load i8, ptr %1, align 1
  %cmp2 = icmp eq i8 %2, 0
  %spec.store.select = select i1 %cmp2, ptr @.str.21, ptr %1
  store ptr %spec.store.select, ptr %zPath, align 8
  %3 = load ptr, ptr %zPath, align 8
  %call6 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.10, ptr noundef %3) #8
  store ptr %call6, ptr %zCopy, align 8
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call6) #8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %storemerge = phi i64 [ %call7, %if.end ], [ %dec, %while.body ]
  store i64 %storemerge, ptr %len, align 8
  %cmp8 = icmp ugt i64 %storemerge, 1
  br i1 %cmp8, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %zCopy, align 8
  %5 = load i64, ptr %len, align 8
  %sub = add i64 %5, -1
  %arrayidx10 = getelementptr inbounds i8, ptr %4, i64 %sub
  %6 = load i8, ptr %arrayidx10, align 1
  %cmp12 = icmp eq i8 %6, 47
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %7 = load i64, ptr %len, align 8
  %dec = add i64 %7, -1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond, %land.rhs
  %8 = load ptr, ptr %zCopy, align 8
  %9 = load i64, ptr %len, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 0, ptr %arrayidx14, align 1
  br label %while.body16

while.body16:                                     ; preds = %if.end54, %while.end
  %10 = load ptr, ptr %zCopy, align 8
  %call17 = call ptr @portable_realpath(ptr noundef %10)
  store ptr %call17, ptr %zOut, align 8
  %11 = load i8, ptr %cSep, align 1
  %12 = load i64, ptr %len, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %10, i64 %12
  store i8 %11, ptr %arrayidx18, align 1
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %while.body16
  %13 = load i8, ptr %cSep, align 1
  %tobool20.not = icmp eq i8 %13, 0
  br i1 %tobool20.not, label %while.end58, label %if.then21

if.then21:                                        ; preds = %if.then19
  %14 = load ptr, ptr %zOut, align 8
  %15 = load ptr, ptr %zCopy, align 8
  %16 = load i64, ptr %len, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 %16
  %call23 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.22, ptr noundef %14, ptr noundef %arrayidx22) #8
  store ptr %call23, ptr %zOut, align 8
  br label %while.end58

if.else:                                          ; preds = %while.body16
  %17 = load i64, ptr %len, align 8
  br label %while.cond26

while.cond26:                                     ; preds = %if.end35, %if.else
  %storemerge1.in = phi i64 [ %17, %if.else ], [ %21, %if.end35 ]
  %storemerge1 = add i64 %storemerge1.in, -1
  store i64 %storemerge1, ptr %i, align 8
  %cmp27.not = icmp eq i64 %storemerge1, 0
  br i1 %cmp27.not, label %while.end37, label %while.body29

while.body29:                                     ; preds = %while.cond26
  %18 = load ptr, ptr %zCopy, align 8
  %19 = load i64, ptr %i, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %18, i64 %19
  %20 = load i8, ptr %arrayidx30, align 1
  %cmp32 = icmp eq i8 %20, 47
  br i1 %cmp32, label %while.end37, label %if.end35

if.end35:                                         ; preds = %while.body29
  %21 = load i64, ptr %i, align 8
  br label %while.cond26, !llvm.loop !9

while.end37:                                      ; preds = %while.body29, %while.cond26
  %22 = load i64, ptr %i, align 8
  %cmp38 = icmp eq i64 %22, 0
  br i1 %cmp38, label %if.then40, label %if.end54

if.then40:                                        ; preds = %while.end37
  %23 = load ptr, ptr %zCopy, align 8
  %24 = load i8, ptr %23, align 1
  %cmp43 = icmp eq i8 %24, 47
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.then40
  %25 = load ptr, ptr %zCopy, align 8
  store ptr %25, ptr %zOut, align 8
  store ptr null, ptr %zCopy, align 8
  br label %while.end58

if.else46:                                        ; preds = %if.then40
  %call47 = call ptr @portable_realpath(ptr noundef nonnull @.str.21)
  store ptr %call47, ptr %zOut, align 8
  %cmp48.not = icmp eq ptr %call47, null
  br i1 %cmp48.not, label %while.end58, label %if.then50

if.then50:                                        ; preds = %if.else46
  %26 = load ptr, ptr %zOut, align 8
  %27 = load ptr, ptr %zCopy, align 8
  %call51 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.23, ptr noundef %26, ptr noundef %27) #8
  store ptr %call51, ptr %zOut, align 8
  br label %while.end58

if.end54:                                         ; preds = %while.end37
  %28 = load ptr, ptr %zCopy, align 8
  %29 = load i64, ptr %i, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %28, i64 %29
  %30 = load i8, ptr %arrayidx55, align 1
  store i8 %30, ptr %cSep, align 1
  %arrayidx56 = getelementptr inbounds i8, ptr %28, i64 %29
  store i8 0, ptr %arrayidx56, align 1
  store i64 %29, ptr %len, align 8
  br label %while.body16

while.end58:                                      ; preds = %if.then45, %if.then50, %if.else46, %if.then19, %if.then21
  %31 = load ptr, ptr %zCopy, align 8
  call void @sqlite3_free(ptr noundef %31) #8
  %32 = load ptr, ptr %zOut, align 8
  %tobool59.not = icmp eq ptr %32, null
  br i1 %tobool59.not, label %if.end140, label %if.then60

if.then60:                                        ; preds = %while.end58
  %33 = load ptr, ptr %zOut, align 8
  %call62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #8
  store i64 %call62, ptr %n, align 8
  store i64 0, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then60
  %storemerge2 = phi i64 [ 0, %if.then60 ], [ %inc138, %for.inc ]
  store i64 %storemerge2, ptr %i61, align 8
  %34 = load i64, ptr %n, align 8
  %cmp63 = icmp ult i64 %storemerge2, %34
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %zOut, align 8
  %36 = load i64, ptr %i61, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %35, i64 %36
  %37 = load i8, ptr %arrayidx65, align 1
  %cmp67 = icmp eq i8 %37, 47
  br i1 %cmp67, label %if.then69, label %if.end135

if.then69:                                        ; preds = %for.body
  %38 = load ptr, ptr %zOut, align 8
  %39 = load i64, ptr %i61, align 8
  %add = add i64 %39, 1
  %arrayidx70 = getelementptr inbounds i8, ptr %38, i64 %add
  %40 = load i8, ptr %arrayidx70, align 1
  %cmp72 = icmp eq i8 %40, 47
  br i1 %cmp72, label %for.inc, label %if.end75

if.end75:                                         ; preds = %if.then69
  %41 = load ptr, ptr %zOut, align 8
  %42 = load i64, ptr %i61, align 8
  %add76 = add i64 %42, 1
  %arrayidx77 = getelementptr inbounds i8, ptr %41, i64 %add76
  %43 = load i8, ptr %arrayidx77, align 1
  %cmp79 = icmp eq i8 %43, 46
  br i1 %cmp79, label %land.lhs.true, label %if.end92

land.lhs.true:                                    ; preds = %if.end75
  %44 = load i64, ptr %i61, align 8
  %add81 = add i64 %44, 2
  %45 = load i64, ptr %n, align 8
  %cmp82 = icmp ult i64 %add81, %45
  br i1 %cmp82, label %land.lhs.true84, label %if.end92

land.lhs.true84:                                  ; preds = %land.lhs.true
  %46 = load ptr, ptr %zOut, align 8
  %47 = load i64, ptr %i61, align 8
  %add85 = add i64 %47, 2
  %arrayidx86 = getelementptr inbounds i8, ptr %46, i64 %add85
  %48 = load i8, ptr %arrayidx86, align 1
  %cmp88 = icmp eq i8 %48, 47
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %land.lhs.true84
  %49 = load i64, ptr %i61, align 8
  %add91 = add i64 %49, 1
  store i64 %add91, ptr %i61, align 8
  br label %for.inc

if.end92:                                         ; preds = %land.lhs.true84, %land.lhs.true, %if.end75
  %50 = load ptr, ptr %zOut, align 8
  %51 = load i64, ptr %i61, align 8
  %add93 = add i64 %51, 1
  %arrayidx94 = getelementptr inbounds i8, ptr %50, i64 %add93
  %52 = load i8, ptr %arrayidx94, align 1
  %cmp96 = icmp eq i8 %52, 46
  br i1 %cmp96, label %land.lhs.true98, label %if.end135

land.lhs.true98:                                  ; preds = %if.end92
  %53 = load i64, ptr %i61, align 8
  %add99 = add i64 %53, 3
  %54 = load i64, ptr %n, align 8
  %cmp100 = icmp ult i64 %add99, %54
  br i1 %cmp100, label %land.lhs.true102, label %if.end135

land.lhs.true102:                                 ; preds = %land.lhs.true98
  %55 = load ptr, ptr %zOut, align 8
  %56 = load i64, ptr %i61, align 8
  %add103 = add i64 %56, 2
  %arrayidx104 = getelementptr inbounds i8, ptr %55, i64 %add103
  %57 = load i8, ptr %arrayidx104, align 1
  %cmp106 = icmp eq i8 %57, 46
  br i1 %cmp106, label %land.lhs.true108, label %if.end135

land.lhs.true108:                                 ; preds = %land.lhs.true102
  %58 = load ptr, ptr %zOut, align 8
  %59 = load i64, ptr %i61, align 8
  %add109 = add i64 %59, 3
  %arrayidx110 = getelementptr inbounds i8, ptr %58, i64 %add109
  %60 = load i8, ptr %arrayidx110, align 1
  %cmp112 = icmp eq i8 %60, 47
  br i1 %cmp112, label %while.cond115, label %if.end135

while.cond115:                                    ; preds = %land.lhs.true108, %while.body125
  %61 = load i64, ptr %j, align 8
  %cmp116.not = icmp eq i64 %61, 0
  br i1 %cmp116.not, label %while.end127, label %land.rhs118

land.rhs118:                                      ; preds = %while.cond115
  %62 = load ptr, ptr %zOut, align 8
  %63 = load i64, ptr %j, align 8
  %sub119 = add i64 %63, -1
  %arrayidx120 = getelementptr inbounds i8, ptr %62, i64 %sub119
  %64 = load i8, ptr %arrayidx120, align 1
  %cmp122 = icmp ne i8 %64, 47
  br i1 %cmp122, label %while.body125, label %while.end127

while.body125:                                    ; preds = %land.rhs118
  %65 = load i64, ptr %j, align 8
  %dec126 = add i64 %65, -1
  store i64 %dec126, ptr %j, align 8
  br label %while.cond115, !llvm.loop !10

while.end127:                                     ; preds = %while.cond115, %land.rhs118
  %66 = load i64, ptr %j, align 8
  %cmp128.not = icmp eq i64 %66, 0
  br i1 %cmp128.not, label %if.end132, label %if.then130

if.then130:                                       ; preds = %while.end127
  %67 = load i64, ptr %j, align 8
  %dec131 = add i64 %67, -1
  store i64 %dec131, ptr %j, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %while.end127
  %68 = load i64, ptr %i61, align 8
  %add133 = add i64 %68, 2
  store i64 %add133, ptr %i61, align 8
  br label %for.inc

if.end135:                                        ; preds = %if.end92, %land.lhs.true98, %land.lhs.true102, %land.lhs.true108, %for.body
  %69 = load ptr, ptr %zOut, align 8
  %70 = load i64, ptr %i61, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %69, i64 %70
  %71 = load i8, ptr %arrayidx136, align 1
  %72 = load i64, ptr %j, align 8
  %inc = add i64 %72, 1
  store i64 %inc, ptr %j, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %69, i64 %72
  store i8 %71, ptr %arrayidx137, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %if.end135, %if.end132, %if.then90
  %73 = load i64, ptr %i61, align 8
  %inc138 = add i64 %73, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %74 = load ptr, ptr %zOut, align 8
  %75 = load i64, ptr %j, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %74, i64 %75
  store i8 0, ptr %arrayidx139, align 1
  %76 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %76, ptr noundef %74, i32 noundef -1, ptr noundef nonnull @sqlite3_free) #8
  br label %if.end140

if.end140:                                        ; preds = %entry, %for.end, %while.end58
  ret void
}

declare ptr @sqlite3_value_text(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @readFileContents(ptr noundef %ctx, ptr noundef %zName) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %in = alloca ptr, align 8
  %nIn = alloca i64, align 8
  %pBuf = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %zName, ptr noundef nonnull @.str.4) #8
  store ptr %call, ptr %in, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %in, align 8
  %call1 = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2) #8
  %call2 = call i64 @ftell(ptr noundef %0) #8
  store i64 %call2, ptr %nIn, align 8
  call void @rewind(ptr noundef %0) #8
  %1 = load ptr, ptr %ctx.addr, align 8
  %call3 = call ptr @sqlite3_context_db_handle(ptr noundef %1) #8
  %call4 = call i32 @sqlite3_limit(ptr noundef %call3, i32 noundef 0, i32 noundef -1) #8
  %conv = sext i32 %call4 to i64
  %cmp5 = icmp sgt i64 %call2, %conv
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %2 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_code(ptr noundef %2, i32 noundef 18) #8
  %3 = load ptr, ptr %in, align 8
  %call8 = call i32 @fclose(ptr noundef %3) #8
  br label %return

if.end9:                                          ; preds = %if.end
  %4 = load i64, ptr %nIn, align 8
  %tobool.not = icmp eq i64 %4, 0
  %5 = load i64, ptr %nIn, align 8
  %cond = select i1 %tobool.not, i64 1, i64 %5
  %call10 = call ptr @sqlite3_malloc64(i64 noundef %cond) #8
  store ptr %call10, ptr %pBuf, align 8
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  %6 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %6) #8
  %7 = load ptr, ptr %in, align 8
  %call14 = call i32 @fclose(ptr noundef %7) #8
  br label %return

if.end15:                                         ; preds = %if.end9
  %8 = load i64, ptr %nIn, align 8
  %9 = load ptr, ptr %pBuf, align 8
  %10 = load ptr, ptr %in, align 8
  %call16 = call i64 @fread(ptr noundef %9, i64 noundef 1, i64 noundef %8, ptr noundef %10) #8
  %cmp17 = icmp eq i64 %8, %call16
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  %11 = load ptr, ptr %ctx.addr, align 8
  %12 = load ptr, ptr %pBuf, align 8
  %13 = load i64, ptr %nIn, align 8
  call void @sqlite3_result_blob64(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef nonnull @sqlite3_free) #8
  br label %if.end20

if.else:                                          ; preds = %if.end15
  %14 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_code(ptr noundef %14, i32 noundef 10) #8
  %15 = load ptr, ptr %pBuf, align 8
  call void @sqlite3_free(ptr noundef %15) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  %16 = load ptr, ptr %in, align 8
  %call21 = call i32 @fclose(ptr noundef %16) #8
  br label %return

return:                                           ; preds = %entry, %if.end20, %if.then13, %if.then7
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
  %times = alloca [2 x %struct.timeval], align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zFile, ptr %zFile.addr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  store i16 %mode, ptr %mode.addr, align 2
  store i64 %mtime, ptr %mtime.addr, align 8
  %cmp = icmp eq ptr %zFile, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i16, ptr %mode.addr, align 2
  %1 = and i16 %0, -4096
  %cmp1 = icmp eq i16 %1, -24576
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %pData.addr, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %2) #8
  store ptr %call, ptr %zTo, align 8
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then3
  %3 = load ptr, ptr %zFile.addr, align 8
  %call8 = call i32 @unlink(ptr noundef %3) #8
  %4 = load ptr, ptr %zTo, align 8
  %call9 = call i32 @symlink(ptr noundef %4, ptr noundef %3) #8
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end86

if.then12:                                        ; preds = %if.end7
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i16, ptr %mode.addr, align 2
  %6 = and i16 %5, -4096
  %cmp16 = icmp eq i16 %6, 16384
  br i1 %cmp16, label %if.then18, label %if.else49

if.then18:                                        ; preds = %if.else
  %7 = load ptr, ptr %zFile.addr, align 8
  %8 = load i16, ptr %mode.addr, align 2
  %call19 = call i32 @mkdir(ptr noundef %7, i16 noundef zeroext %8) #8
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end86, label %if.then20

if.then20:                                        ; preds = %if.then18
  %call21 = call ptr @__error() #8
  %9 = load i32, ptr %call21, align 4
  %cmp22.not = icmp eq i32 %9, 17
  br i1 %cmp22.not, label %lor.lhs.false, label %if.then46

lor.lhs.false:                                    ; preds = %if.then20
  %10 = load ptr, ptr %zFile.addr, align 8
  %call.i = call i32 @"\01_stat"(ptr noundef %10, ptr noundef nonnull %sStat) #8
  %cmp25.not = icmp eq i32 %call.i, 0
  br i1 %cmp25.not, label %lor.lhs.false27, label %if.then46

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat, ptr %sStat, i64 0, i32 1
  %11 = load i16, ptr %st_mode, align 4
  %12 = and i16 %11, -4096
  %cmp30 = icmp eq i16 %12, 16384
  br i1 %cmp30, label %lor.lhs.false32, label %if.then46

lor.lhs.false32:                                  ; preds = %lor.lhs.false27
  %st_mode33 = getelementptr inbounds %struct.stat, ptr %sStat, i64 0, i32 1
  %13 = load i16, ptr %st_mode33, align 4
  %14 = load i16, ptr %mode.addr, align 2
  %15 = xor i16 %13, %14
  %16 = and i16 %15, 511
  %cmp38.not = icmp eq i16 %16, 0
  br i1 %cmp38.not, label %if.end86, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false32
  %17 = load ptr, ptr %zFile.addr, align 8
  %18 = load i16, ptr %mode.addr, align 2
  %19 = and i16 %18, 511
  %call43 = call i32 @"\01_chmod"(ptr noundef %17, i16 noundef zeroext %19) #8
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end86, label %if.then46

if.then46:                                        ; preds = %land.lhs.true, %lor.lhs.false27, %lor.lhs.false, %if.then20
  store i32 1, ptr %retval, align 4
  br label %return

if.else49:                                        ; preds = %if.else
  store i64 0, ptr %nWrite, align 8
  store i32 0, ptr %rc, align 4
  %20 = load ptr, ptr %zFile.addr, align 8
  %call50 = call ptr @"\01_fopen"(ptr noundef %20, ptr noundef nonnull @.str.9) #8
  store ptr %call50, ptr %out, align 8
  %cmp51 = icmp eq ptr %call50, null
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.else49
  store i32 1, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.else49
  %21 = load ptr, ptr %pData.addr, align 8
  %call55 = call ptr @sqlite3_value_blob(ptr noundef %21) #8
  store ptr %call55, ptr %z, align 8
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.end67, label %if.then57

if.then57:                                        ; preds = %if.end54
  %22 = load ptr, ptr %z, align 8
  %23 = load ptr, ptr %pData.addr, align 8
  %call58 = call i32 @sqlite3_value_bytes(ptr noundef %23) #8
  %conv59 = sext i32 %call58 to i64
  %24 = load ptr, ptr %out, align 8
  %call60 = call i64 @"\01_fwrite"(ptr noundef %22, i64 noundef 1, i64 noundef %conv59, ptr noundef %24) #8
  %call61 = call i32 @sqlite3_value_bytes(ptr noundef %23) #8
  %conv62 = sext i32 %call61 to i64
  store i64 %conv62, ptr %nWrite, align 8
  %cmp63.not = icmp eq i64 %call60, %conv62
  br i1 %cmp63.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.then57
  store i32 1, ptr %rc, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then57, %if.then65, %if.end54
  %25 = load ptr, ptr %out, align 8
  %call68 = call i32 @fclose(ptr noundef %25) #8
  %26 = load i32, ptr %rc, align 4
  %cmp69 = icmp ne i32 %26, 0
  %27 = load i16, ptr %mode.addr, align 2
  %tobool73.not = icmp eq i16 %27, 0
  %or.cond = select i1 %cmp69, i1 true, i1 %tobool73.not
  br i1 %or.cond, label %if.end81, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %if.end67
  %28 = load ptr, ptr %zFile.addr, align 8
  %29 = load i16, ptr %mode.addr, align 2
  %30 = and i16 %29, 511
  %call78 = call i32 @"\01_chmod"(ptr noundef %28, i16 noundef zeroext %30) #8
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %land.lhs.true74
  store i32 1, ptr %rc, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %land.lhs.true74, %if.end67
  %31 = load i32, ptr %rc, align 4
  %tobool82.not = icmp eq i32 %31, 0
  br i1 %tobool82.not, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.end81
  store i32 2, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end81
  %32 = load ptr, ptr %pCtx.addr, align 8
  %33 = load i64, ptr %nWrite, align 8
  call void @sqlite3_result_int64(ptr noundef %32, i64 noundef %33) #8
  br label %if.end86

if.end86:                                         ; preds = %if.end84, %lor.lhs.false32, %land.lhs.true, %if.then18, %if.end7
  %34 = load i64, ptr %mtime.addr, align 8
  %cmp87 = icmp sgt i64 %34, -1
  br i1 %cmp87, label %if.then89, label %if.end108

if.then89:                                        ; preds = %if.end86
  %35 = load i16, ptr %mode.addr, align 2
  %36 = and i16 %35, -4096
  %cmp92.not = icmp eq i16 %36, -24576
  br i1 %cmp92.not, label %if.end108, label %if.then96

if.then96:                                        ; preds = %if.then89
  %tv_usec = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 1, i32 1
  store i32 0, ptr %tv_usec, align 8
  %tv_usec98 = getelementptr inbounds %struct.timeval, ptr %times, i64 0, i32 1
  store i32 0, ptr %tv_usec98, align 8
  %call99 = call i64 @time(ptr noundef null) #8
  store i64 %call99, ptr %times, align 8
  %37 = load i64, ptr %mtime.addr, align 8
  %arrayidx101 = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 1
  store i64 %37, ptr %arrayidx101, align 8
  %38 = load ptr, ptr %zFile.addr, align 8
  %call103 = call i32 @utimes(ptr noundef %38, ptr noundef nonnull %times) #8
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end108, label %if.then105

if.then105:                                       ; preds = %if.then96
  store i32 1, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.then89, %if.then96, %if.end86
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
  %zCopy = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nCopy = alloca i32, align 4
  %i = alloca i32, align 4
  %sStat = alloca %struct.stat, align 8
  %call = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.10, ptr noundef %zFile) #8
  store ptr %call, ptr %zCopy, align 8
  store i32 0, ptr %rc, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %if.end31

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr %zCopy, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %nCopy, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.else
  %storemerge = phi i32 [ 1, %if.else ], [ %inc30, %if.end27 ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %for.cond, label %while.end

for.cond:                                         ; preds = %while.cond, %for.inc
  %2 = load ptr, ptr %zCopy, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %cmp5.not = icmp eq i8 %4, 47
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %nCopy, align 4
  %cmp7 = icmp slt i32 %5, %6
  %7 = select i1 %cmp5.not, i1 false, i1 %cmp7
  br i1 %7, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %nCopy, align 4
  %cmp9 = icmp eq i32 %9, %10
  br i1 %cmp9, label %while.end, label %if.end

if.end:                                           ; preds = %for.end
  %11 = load ptr, ptr %zCopy, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %11, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1
  %call.i = call i32 @"\01_stat"(ptr noundef %11, ptr noundef nonnull %sStat) #8
  %cmp15.not = icmp eq i32 %call.i, 0
  br i1 %cmp15.not, label %if.else21, label %if.then17

if.then17:                                        ; preds = %if.end
  %13 = load ptr, ptr %zCopy, align 8
  %call18 = call i32 @mkdir(ptr noundef %13, i16 noundef zeroext 511) #8
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end27, label %if.then19

if.then19:                                        ; preds = %if.then17
  store i32 1, ptr %rc, align 4
  br label %if.end27

if.else21:                                        ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, ptr %sStat, i64 0, i32 1
  %14 = load i16, ptr %st_mode, align 4
  %15 = and i16 %14, -4096
  %cmp23 = icmp eq i16 %15, 16384
  br i1 %cmp23, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.else21
  store i32 1, ptr %rc, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %if.then25, %if.then17, %if.then19
  %16 = load ptr, ptr %zCopy, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %16, i64 %idxprom28
  store i8 47, ptr %arrayidx29, align 1
  %inc30 = add nsw i32 %17, 1
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %for.end, %while.cond
  %18 = load ptr, ptr %zCopy, align 8
  call void @sqlite3_free(ptr noundef %18) #8
  br label %if.end31

if.end31:                                         ; preds = %while.end, %if.then
  %19 = load i32, ptr %rc, align 4
  ret i32 %19
}

declare i32 @unlink(ptr noundef) #1

declare i32 @symlink(ptr noundef, ptr noundef) #1

declare i32 @mkdir(ptr noundef, i16 noundef zeroext) #1

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
  %db.addr = alloca ptr, align 8
  %ppVtab.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %ppVtab, ptr %ppVtab.addr, align 8
  store ptr null, ptr %pNew, align 8
  %call = call i32 @sqlite3_declare_vtab(ptr noundef %db, ptr noundef nonnull @.str.12) #8
  store i32 %call, ptr %rc, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = call ptr @sqlite3_malloc64(i64 noundef 24) #8
  store ptr %call1, ptr %pNew, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %0 = load ptr, ptr %pNew, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call4 = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef 24, i64 noundef %1) #8
  %2 = load ptr, ptr %db.addr, align 8
  %call5 = call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %2, i32 noundef 3) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %3 = load ptr, ptr %pNew, align 8
  %4 = load ptr, ptr %ppVtab.addr, align 8
  store ptr %3, ptr %4, align 8
  %5 = load i32, ptr %rc, align 4
  br label %return

return:                                           ; preds = %if.then, %if.end6
  %storemerge = phi i32 [ %5, %if.end6 ], [ 7, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirBestIndex(ptr noundef %tab, ptr noundef %pIdxInfo) #0 {
entry:
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
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i32 -1, ptr %idxPath, align 4
  store i32 -1, ptr %idxDir, align 4
  store i32 -1, ptr %idxLevel, align 4
  store i32 0, ptr %idxLevelEQ, align 4
  store i32 0, ptr %omitLevel, align 4
  store i32 0, ptr %seenPath, align 4
  store i32 0, ptr %seenDir, align 4
  %0 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds %struct.sqlite3_index_info, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %aConstraint, align 8
  store ptr %1, ptr %pConstraint, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pIdxInfo.addr, align 8
  %4 = load i32, ptr %3, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pConstraint, align 8
  %op = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %5, i64 0, i32 1
  %6 = load i8, ptr %op, align 4
  %cmp1 = icmp eq i8 %6, 2
  br i1 %cmp1, label %if.then, label %if.else26

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %pConstraint, align 8
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %for.inc [
    i32 5, label %sw.bb
    i32 6, label %sw.bb8
    i32 4, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.then
  %9 = load ptr, ptr %pConstraint, align 8
  %usable = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %9, i64 0, i32 2
  %10 = load i8, ptr %usable, align 1
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %sw.bb
  %11 = load i32, ptr %i, align 4
  store i32 %11, ptr %idxPath, align 4
  store i32 0, ptr %seenPath, align 4
  br label %for.inc

if.else:                                          ; preds = %sw.bb
  %12 = load i32, ptr %idxPath, align 4
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then6, label %for.inc

if.then6:                                         ; preds = %if.else
  store i32 1, ptr %seenPath, align 4
  br label %for.inc

sw.bb8:                                           ; preds = %if.then
  %13 = load ptr, ptr %pConstraint, align 8
  %usable9 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %13, i64 0, i32 2
  %14 = load i8, ptr %usable9, align 1
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %sw.bb8
  %15 = load i32, ptr %i, align 4
  store i32 %15, ptr %idxDir, align 4
  store i32 0, ptr %seenDir, align 4
  br label %for.inc

if.else12:                                        ; preds = %sw.bb8
  %16 = load i32, ptr %idxDir, align 4
  %cmp13 = icmp slt i32 %16, 0
  br i1 %cmp13, label %if.then15, label %for.inc

if.then15:                                        ; preds = %if.else12
  store i32 1, ptr %seenDir, align 4
  br label %for.inc

sw.bb18:                                          ; preds = %if.then
  %17 = load ptr, ptr %pConstraint, align 8
  %usable19 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %17, i64 0, i32 2
  %18 = load i8, ptr %usable19, align 1
  %tobool21.not = icmp ne i8 %18, 0
  %19 = load i32, ptr %idxLevel, align 4
  %cmp22 = icmp slt i32 %19, 0
  %or.cond = select i1 %tobool21.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then24, label %for.inc

if.then24:                                        ; preds = %sw.bb18
  %20 = load i32, ptr %i, align 4
  store i32 %20, ptr %idxLevel, align 4
  store i32 8, ptr %idxLevelEQ, align 4
  store i32 0, ptr %omitLevel, align 4
  br label %for.inc

if.else26:                                        ; preds = %for.body
  %21 = load ptr, ptr %pConstraint, align 8
  %22 = load i32, ptr %21, align 4
  %cmp28 = icmp eq i32 %22, 4
  br i1 %cmp28, label %land.lhs.true30, label %for.inc

land.lhs.true30:                                  ; preds = %if.else26
  %23 = load ptr, ptr %pConstraint, align 8
  %usable31 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %23, i64 0, i32 2
  %24 = load i8, ptr %usable31, align 1
  %tobool33.not = icmp ne i8 %24, 0
  %25 = load i32, ptr %idxLevel, align 4
  %cmp35 = icmp slt i32 %25, 0
  %or.cond1 = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %or.cond1, label %if.then37, label %for.inc

if.then37:                                        ; preds = %land.lhs.true30
  %26 = load ptr, ptr %pConstraint, align 8
  %op38 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %26, i64 0, i32 1
  %27 = load i8, ptr %op38, align 4
  %cmp40 = icmp eq i8 %27, 8
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.then37
  %28 = load i32, ptr %i, align 4
  store i32 %28, ptr %idxLevel, align 4
  store i32 8, ptr %idxLevelEQ, align 4
  store i32 1, ptr %omitLevel, align 4
  br label %for.inc

if.else43:                                        ; preds = %if.then37
  %29 = load ptr, ptr %pConstraint, align 8
  %op44 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %29, i64 0, i32 1
  %30 = load i8, ptr %op44, align 4
  %cmp46 = icmp eq i8 %30, 16
  br i1 %cmp46, label %if.then48, label %for.inc

if.then48:                                        ; preds = %if.else43
  %31 = load i32, ptr %i, align 4
  store i32 %31, ptr %idxLevel, align 4
  store i32 4, ptr %idxLevelEQ, align 4
  store i32 1, ptr %omitLevel, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb18, %if.then24, %if.then11, %if.then15, %if.else12, %if.then3, %if.then6, %if.else, %if.then, %if.then42, %if.then48, %if.else43, %land.lhs.true30, %if.else26
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  %33 = load ptr, ptr %pConstraint, align 8
  %incdec.ptr = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %33, i64 1
  store ptr %incdec.ptr, ptr %pConstraint, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %34 = load i32, ptr %seenPath, align 4
  %tobool53.not = icmp eq i32 %34, 0
  %35 = load i32, ptr %seenDir, align 4
  %tobool54.not = icmp eq i32 %35, 0
  %or.cond2 = select i1 %tobool53.not, i1 %tobool54.not, i1 false
  br i1 %or.cond2, label %if.end56, label %return

if.end56:                                         ; preds = %for.end
  %36 = load i32, ptr %idxPath, align 4
  %cmp57 = icmp slt i32 %36, 0
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.end56
  %37 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds %struct.sqlite3_index_info, ptr %37, i64 0, i32 5
  store i32 0, ptr %idxNum, align 8
  %estimatedRows = getelementptr inbounds %struct.sqlite3_index_info, ptr %37, i64 0, i32 10
  store i64 2147483647, ptr %estimatedRows, align 8
  br label %return

if.else60:                                        ; preds = %if.end56
  %38 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds %struct.sqlite3_index_info, ptr %38, i64 0, i32 4
  %39 = load ptr, ptr %aConstraintUsage, align 8
  %40 = load i32, ptr %idxPath, align 4
  %idxprom = sext i32 %40 to i64
  %omit = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %39, i64 %idxprom, i32 1
  store i8 1, ptr %omit, align 4
  %41 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage61 = getelementptr inbounds %struct.sqlite3_index_info, ptr %41, i64 0, i32 4
  %42 = load ptr, ptr %aConstraintUsage61, align 8
  %43 = load i32, ptr %idxPath, align 4
  %idxprom62 = sext i32 %43 to i64
  %arrayidx63 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %42, i64 %idxprom62
  store i32 1, ptr %arrayidx63, align 4
  %44 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum64 = getelementptr inbounds %struct.sqlite3_index_info, ptr %44, i64 0, i32 5
  store i32 1, ptr %idxNum64, align 8
  %estimatedCost = getelementptr inbounds %struct.sqlite3_index_info, ptr %44, i64 0, i32 9
  store double 1.000000e+09, ptr %estimatedCost, align 8
  store i32 2, ptr %i, align 4
  %45 = load i32, ptr %idxDir, align 4
  %cmp65 = icmp sgt i32 %45, -1
  br i1 %cmp65, label %if.then67, label %if.end79

if.then67:                                        ; preds = %if.else60
  %46 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage68 = getelementptr inbounds %struct.sqlite3_index_info, ptr %46, i64 0, i32 4
  %47 = load ptr, ptr %aConstraintUsage68, align 8
  %48 = load i32, ptr %idxDir, align 4
  %idxprom69 = sext i32 %48 to i64
  %omit71 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %47, i64 %idxprom69, i32 1
  store i8 1, ptr %omit71, align 4
  %49 = load i32, ptr %i, align 4
  %inc72 = add nsw i32 %49, 1
  store i32 %inc72, ptr %i, align 4
  %50 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage73 = getelementptr inbounds %struct.sqlite3_index_info, ptr %50, i64 0, i32 4
  %51 = load ptr, ptr %aConstraintUsage73, align 8
  %52 = load i32, ptr %idxDir, align 4
  %idxprom74 = sext i32 %52 to i64
  %arrayidx75 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %51, i64 %idxprom74
  store i32 %49, ptr %arrayidx75, align 4
  %53 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum77 = getelementptr inbounds %struct.sqlite3_index_info, ptr %53, i64 0, i32 5
  %54 = load i32, ptr %idxNum77, align 8
  %or = or i32 %54, 2
  store i32 %or, ptr %idxNum77, align 8
  %estimatedCost78 = getelementptr inbounds %struct.sqlite3_index_info, ptr %53, i64 0, i32 9
  %55 = load double, ptr %estimatedCost78, align 8
  %div = fdiv double %55, 1.000000e+04
  store double %div, ptr %estimatedCost78, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then67, %if.else60
  %56 = load i32, ptr %idxLevel, align 4
  %cmp80 = icmp sgt i32 %56, -1
  br i1 %cmp80, label %if.then82, label %return

if.then82:                                        ; preds = %if.end79
  %57 = load i32, ptr %omitLevel, align 4
  %conv83 = trunc i32 %57 to i8
  %58 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage84 = getelementptr inbounds %struct.sqlite3_index_info, ptr %58, i64 0, i32 4
  %59 = load ptr, ptr %aConstraintUsage84, align 8
  %60 = load i32, ptr %idxLevel, align 4
  %idxprom85 = sext i32 %60 to i64
  %omit87 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %59, i64 %idxprom85, i32 1
  store i8 %conv83, ptr %omit87, align 4
  %61 = load i32, ptr %i, align 4
  %inc88 = add nsw i32 %61, 1
  store i32 %inc88, ptr %i, align 4
  %62 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage89 = getelementptr inbounds %struct.sqlite3_index_info, ptr %62, i64 0, i32 4
  %63 = load ptr, ptr %aConstraintUsage89, align 8
  %64 = load i32, ptr %idxLevel, align 4
  %idxprom90 = sext i32 %64 to i64
  %arrayidx91 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %63, i64 %idxprom90
  store i32 %61, ptr %arrayidx91, align 4
  %65 = load i32, ptr %idxLevelEQ, align 4
  %66 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum93 = getelementptr inbounds %struct.sqlite3_index_info, ptr %66, i64 0, i32 5
  %67 = load i32, ptr %idxNum93, align 8
  %or94 = or i32 %67, %65
  store i32 %or94, ptr %idxNum93, align 8
  %estimatedCost95 = getelementptr inbounds %struct.sqlite3_index_info, ptr %66, i64 0, i32 9
  %68 = load double, ptr %estimatedCost95, align 8
  %div96 = fdiv double %68, 1.000000e+04
  store double %div96, ptr %estimatedCost95, align 8
  br label %return

return:                                           ; preds = %if.then59, %if.then82, %if.end79, %for.end
  %storemerge = phi i32 [ 19, %for.end ], [ 0, %if.end79 ], [ 0, %if.then82 ], [ 0, %if.then59 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirDisconnect(ptr noundef %pVtab) #0 {
entry:
  call void @sqlite3_free(ptr noundef %pVtab) #8
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirOpen(ptr noundef %p, ptr noundef %ppCursor) #0 {
entry:
  %ppCursor.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %call = call ptr @sqlite3_malloc64(i64 noundef 208) #8
  store ptr %call, ptr %pCur, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %pCur, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef 208, i64 noundef %1) #8
  %iLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %0, i64 0, i32 3
  store i32 -1, ptr %iLvl, align 8
  %2 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %0, ptr %2, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ 7, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirClose(ptr noundef %cur) #0 {
entry:
  call void @fsdirResetCursor(ptr noundef %cur)
  call void @sqlite3_free(ptr noundef %cur) #8
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirFilter(ptr noundef %cur, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %idxNum.addr = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zDir = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %zDir, align 8
  store ptr %cur, ptr %pCur, align 8
  call void @fsdirResetCursor(ptr noundef %cur)
  %cmp = icmp eq i32 %idxNum, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %pCur, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_5(ptr noundef %0, ptr noundef nonnull @.str.13)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %idxNum.addr, align 4
  %and = and i32 %1, 1
  %cmp1.not = icmp eq i32 %and, 0
  %2 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp sgt i32 %2, 0
  %3 = select i1 %cmp1.not, i1 false, i1 %cmp2
  br i1 %3, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.fsdirFilter, ptr noundef nonnull @.str.14, i32 noundef 921, ptr noundef nonnull @.str.15) #9
  unreachable

cond.end:                                         ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %5) #8
  store ptr %call, ptr %zDir, align 8
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %cond.end
  %6 = load ptr, ptr %pCur, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_6(ptr noundef %6, ptr noundef nonnull @.str.16)
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %cond.end
  store i32 1, ptr %i, align 4
  %7 = load i32, ptr %idxNum.addr, align 4
  %and7 = and i32 %7, 2
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end22, label %if.then10

if.then10:                                        ; preds = %if.end6
  %8 = load i32, ptr %argc.addr, align 4
  %9 = load i32, ptr %i, align 4
  %cmp11.not = icmp sgt i32 %8, %9
  br i1 %cmp11.not, label %cond.end19, label %cond.true17

cond.true17:                                      ; preds = %if.then10
  call void @__assert_rtn(ptr noundef nonnull @__func__.fsdirFilter, ptr noundef nonnull @.str.14, i32 noundef 929, ptr noundef nonnull @.str.17) #9
  unreachable

cond.end19:                                       ; preds = %if.then10
  %10 = load ptr, ptr %argv.addr, align 8
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx20, align 8
  %call21 = call ptr @sqlite3_value_text(ptr noundef %12) #8
  %13 = load ptr, ptr %pCur, align 8
  %zBase = getelementptr inbounds %struct.fsdir_cursor, ptr %13, i64 0, i32 5
  store ptr %call21, ptr %zBase, align 8
  br label %if.end22

if.end22:                                         ; preds = %cond.end19, %if.end6
  %14 = load i32, ptr %idxNum.addr, align 4
  %and23 = and i32 %14, 12
  %cmp24.not = icmp eq i32 %and23, 0
  br i1 %cmp24.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end22
  %15 = load i32, ptr %argc.addr, align 4
  %16 = load i32, ptr %i, align 4
  %cmp27.not = icmp sgt i32 %15, %16
  br i1 %cmp27.not, label %cond.end35, label %cond.true33

cond.true33:                                      ; preds = %if.then26
  call void @__assert_rtn(ptr noundef nonnull @__func__.fsdirFilter, ptr noundef nonnull @.str.14, i32 noundef 933, ptr noundef nonnull @.str.17) #9
  unreachable

cond.end35:                                       ; preds = %if.then26
  %17 = load ptr, ptr %argv.addr, align 8
  %18 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %18, 1
  store i32 %inc36, ptr %i, align 4
  %idxprom37 = sext i32 %18 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %17, i64 %idxprom37
  %19 = load ptr, ptr %arrayidx38, align 8
  %call39 = call i32 @sqlite3_value_int(ptr noundef %19) #8
  %20 = load ptr, ptr %pCur, align 8
  %mxLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %20, i64 0, i32 2
  store i32 %call39, ptr %mxLvl, align 4
  %21 = load i32, ptr %idxNum.addr, align 4
  %and40 = and i32 %21, 8
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end45, label %if.then42

if.then42:                                        ; preds = %cond.end35
  %22 = load ptr, ptr %pCur, align 8
  %mxLvl43 = getelementptr inbounds %struct.fsdir_cursor, ptr %22, i64 0, i32 2
  %23 = load i32, ptr %mxLvl43, align 4
  %inc44 = add nsw i32 %23, 1
  store i32 %inc44, ptr %mxLvl43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %cond.end35
  %24 = load ptr, ptr %pCur, align 8
  %mxLvl46 = getelementptr inbounds %struct.fsdir_cursor, ptr %24, i64 0, i32 2
  %25 = load i32, ptr %mxLvl46, align 4
  %cmp47 = icmp slt i32 %25, 1
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end45
  %26 = load ptr, ptr %pCur, align 8
  %mxLvl50 = getelementptr inbounds %struct.fsdir_cursor, ptr %26, i64 0, i32 2
  store i32 1000000000, ptr %mxLvl50, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end22
  %27 = load ptr, ptr %pCur, align 8
  %mxLvl52 = getelementptr inbounds %struct.fsdir_cursor, ptr %27, i64 0, i32 2
  store i32 1000000000, ptr %mxLvl52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end45, %if.then49, %if.else
  %28 = load ptr, ptr %pCur, align 8
  %zBase54 = getelementptr inbounds %struct.fsdir_cursor, ptr %28, i64 0, i32 5
  %29 = load ptr, ptr %zBase54, align 8
  %tobool55.not = icmp eq ptr %29, null
  br i1 %tobool55.not, label %if.else62, label %if.then56

if.then56:                                        ; preds = %if.end53
  %30 = load ptr, ptr %pCur, align 8
  %zBase57 = getelementptr inbounds %struct.fsdir_cursor, ptr %30, i64 0, i32 5
  %31 = load ptr, ptr %zBase57, align 8
  %call58 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #8
  %conv59 = trunc i64 %call58 to i32
  %add = add nsw i32 %conv59, 1
  %nBase = getelementptr inbounds %struct.fsdir_cursor, ptr %30, i64 0, i32 6
  store i32 %add, ptr %nBase, align 8
  %32 = load ptr, ptr %pCur, align 8
  %zBase60 = getelementptr inbounds %struct.fsdir_cursor, ptr %32, i64 0, i32 5
  %33 = load ptr, ptr %zBase60, align 8
  %34 = load ptr, ptr %zDir, align 8
  %call61 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.18, ptr noundef %33, ptr noundef %34) #8
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %32, i64 0, i32 8
  store ptr %call61, ptr %zPath, align 8
  br label %if.end65

if.else62:                                        ; preds = %if.end53
  %35 = load ptr, ptr %zDir, align 8
  %call63 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.10, ptr noundef %35) #8
  %36 = load ptr, ptr %pCur, align 8
  %zPath64 = getelementptr inbounds %struct.fsdir_cursor, ptr %36, i64 0, i32 8
  store ptr %call63, ptr %zPath64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then56
  %37 = load ptr, ptr %pCur, align 8
  %zPath66 = getelementptr inbounds %struct.fsdir_cursor, ptr %37, i64 0, i32 8
  %38 = load ptr, ptr %zPath66, align 8
  %cmp67 = icmp eq ptr %38, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  store i32 7, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end65
  %39 = load ptr, ptr %pCur, align 8
  %zPath71 = getelementptr inbounds %struct.fsdir_cursor, ptr %39, i64 0, i32 8
  %40 = load ptr, ptr %zPath71, align 8
  %sStat = getelementptr inbounds %struct.fsdir_cursor, ptr %39, i64 0, i32 7
  %call.i = call i32 @"\01_lstat"(ptr noundef %40, ptr noundef nonnull %sStat) #8
  %tobool73.not = icmp eq i32 %call.i, 0
  br i1 %tobool73.not, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.end70
  %41 = load ptr, ptr %pCur, align 8
  %zPath75 = getelementptr inbounds %struct.fsdir_cursor, ptr %41, i64 0, i32 8
  %42 = load ptr, ptr %zPath75, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_8(ptr noundef %41, ptr noundef nonnull @.str.19, ptr noundef %42)
  store i32 1, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end70
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then74, %if.then69, %if.then5, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirNext(ptr noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur = alloca ptr, align 8
  %iNew = alloca i32, align 4
  %pLvl = alloca ptr, align 8
  %nNew = alloca i32, align 4
  %aNew = alloca ptr, align 8
  %pLvl42 = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  store ptr %cur, ptr %pCur, align 8
  %st_mode = getelementptr inbounds %struct.fsdir_cursor, ptr %cur, i64 0, i32 7, i32 1
  %0 = load i16, ptr %st_mode, align 4
  %iRowid = getelementptr inbounds %struct.fsdir_cursor, ptr %cur, i64 0, i32 9
  %1 = load i64, ptr %iRowid, align 8
  %inc = add nsw i64 %1, 1
  store i64 %inc, ptr %iRowid, align 8
  %2 = and i16 %0, -4096
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pCur, align 8
  %iLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %iLvl, align 8
  %add = add nsw i32 %4, 3
  %mxLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %mxLvl, align 4
  %cmp2 = icmp slt i32 %add, %5
  br i1 %cmp2, label %if.then, label %if.end38

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %pCur, align 8
  %iLvl4 = getelementptr inbounds %struct.fsdir_cursor, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %iLvl4, align 8
  %add5 = add nsw i32 %7, 1
  store i32 %add5, ptr %iNew, align 4
  %nLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %nLvl, align 8
  %cmp6.not = icmp slt i32 %add5, %8
  br i1 %cmp6.not, label %if.end24, label %if.then8

if.then8:                                         ; preds = %if.then
  %9 = load i32, ptr %iNew, align 4
  %add9 = add nsw i32 %9, 1
  store i32 %add9, ptr %nNew, align 4
  %conv10 = sext i32 %add9 to i64
  %mul = shl nsw i64 %conv10, 4
  %10 = load ptr, ptr %pCur, align 8
  %aLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %aLvl, align 8
  %call = call ptr @sqlite3_realloc64(ptr noundef %11, i64 noundef %mul) #8
  store ptr %call, ptr %aNew, align 8
  %cmp11 = icmp eq ptr %call, null
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then8
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then8
  %12 = load ptr, ptr %aNew, align 8
  %13 = load ptr, ptr %pCur, align 8
  %nLvl14 = getelementptr inbounds %struct.fsdir_cursor, ptr %13, i64 0, i32 1
  %14 = load i32, ptr %nLvl14, align 8
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.FsdirLevel, ptr %12, i64 %idxprom
  %15 = load i32, ptr %nNew, align 4
  %sub = sub nsw i32 %15, %14
  %conv16 = sext i32 %sub to i64
  %mul17 = shl nsw i64 %conv16, 4
  %16 = load ptr, ptr %aNew, align 8
  %17 = load ptr, ptr %pCur, align 8
  %nLvl18 = getelementptr inbounds %struct.fsdir_cursor, ptr %17, i64 0, i32 1
  %18 = load i32, ptr %nLvl18, align 8
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds %struct.FsdirLevel, ptr %16, i64 %idxprom19
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx20, i1 false, i1 true, i1 false)
  %call21 = call ptr @__memset_chk(ptr noundef %arrayidx, i32 noundef 0, i64 noundef %mul17, i64 noundef %19) #8
  %20 = load ptr, ptr %aNew, align 8
  %21 = load ptr, ptr %pCur, align 8
  %aLvl22 = getelementptr inbounds %struct.fsdir_cursor, ptr %21, i64 0, i32 4
  store ptr %20, ptr %aLvl22, align 8
  %22 = load i32, ptr %nNew, align 4
  %nLvl23 = getelementptr inbounds %struct.fsdir_cursor, ptr %21, i64 0, i32 1
  store i32 %22, ptr %nLvl23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then
  %23 = load i32, ptr %iNew, align 4
  %24 = load ptr, ptr %pCur, align 8
  %iLvl25 = getelementptr inbounds %struct.fsdir_cursor, ptr %24, i64 0, i32 3
  store i32 %23, ptr %iLvl25, align 8
  %aLvl26 = getelementptr inbounds %struct.fsdir_cursor, ptr %24, i64 0, i32 4
  %25 = load ptr, ptr %aLvl26, align 8
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds %struct.FsdirLevel, ptr %25, i64 %idxprom27
  store ptr %arrayidx28, ptr %pLvl, align 8
  %26 = load ptr, ptr %pCur, align 8
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %26, i64 0, i32 8
  %27 = load ptr, ptr %zPath, align 8
  %zDir = getelementptr inbounds %struct.FsdirLevel, ptr %25, i64 %idxprom27, i32 1
  store ptr %27, ptr %zDir, align 8
  %zPath29 = getelementptr inbounds %struct.fsdir_cursor, ptr %26, i64 0, i32 8
  store ptr null, ptr %zPath29, align 8
  %28 = load ptr, ptr %pLvl, align 8
  %zDir30 = getelementptr inbounds %struct.FsdirLevel, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %zDir30, align 8
  %call31 = call ptr @"\01_opendir"(ptr noundef %29) #8
  store ptr %call31, ptr %28, align 8
  %cmp33 = icmp eq ptr %call31, null
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end24
  %30 = load ptr, ptr %pCur, align 8
  %31 = load ptr, ptr %pLvl, align 8
  %zDir36 = getelementptr inbounds %struct.FsdirLevel, ptr %31, i64 0, i32 1
  %32 = load ptr, ptr %zDir36, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_9(ptr noundef %30, ptr noundef nonnull @.str.20, ptr noundef %32)
  store i32 1, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end24, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end67, %land.lhs.true60, %if.end93, %if.end38
  %33 = load ptr, ptr %pCur, align 8
  %iLvl39 = getelementptr inbounds %struct.fsdir_cursor, ptr %33, i64 0, i32 3
  %34 = load i32, ptr %iLvl39, align 8
  %cmp40 = icmp sgt i32 %34, -1
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load ptr, ptr %pCur, align 8
  %aLvl43 = getelementptr inbounds %struct.fsdir_cursor, ptr %35, i64 0, i32 4
  %36 = load ptr, ptr %aLvl43, align 8
  %iLvl44 = getelementptr inbounds %struct.fsdir_cursor, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %iLvl44, align 8
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds %struct.FsdirLevel, ptr %36, i64 %idxprom45
  store ptr %arrayidx46, ptr %pLvl42, align 8
  %38 = load ptr, ptr %arrayidx46, align 8
  %call48 = call ptr @"\01_readdir"(ptr noundef %38) #8
  store ptr %call48, ptr %pEntry, align 8
  %tobool.not = icmp eq ptr %call48, null
  br i1 %tobool.not, label %if.end93, label %if.then49

if.then49:                                        ; preds = %while.body
  %39 = load ptr, ptr %pEntry, align 8
  %d_name = getelementptr inbounds %struct.dirent, ptr %39, i64 0, i32 5
  %40 = load i8, ptr %d_name, align 1
  %cmp52 = icmp eq i8 %40, 46
  br i1 %cmp52, label %if.then54, label %if.end75

if.then54:                                        ; preds = %if.then49
  %41 = load ptr, ptr %pEntry, align 8
  %arrayidx56 = getelementptr inbounds %struct.dirent, ptr %41, i64 0, i32 5, i64 1
  %42 = load i8, ptr %arrayidx56, align 1
  %cmp58 = icmp eq i8 %42, 46
  br i1 %cmp58, label %land.lhs.true60, label %if.end67

land.lhs.true60:                                  ; preds = %if.then54
  %43 = load ptr, ptr %pEntry, align 8
  %arrayidx62 = getelementptr inbounds %struct.dirent, ptr %43, i64 0, i32 5, i64 2
  %44 = load i8, ptr %arrayidx62, align 1
  %cmp64 = icmp eq i8 %44, 0
  br i1 %cmp64, label %while.cond, label %if.end67, !llvm.loop !15

if.end67:                                         ; preds = %land.lhs.true60, %if.then54
  %45 = load ptr, ptr %pEntry, align 8
  %arrayidx69 = getelementptr inbounds %struct.dirent, ptr %45, i64 0, i32 5, i64 1
  %46 = load i8, ptr %arrayidx69, align 1
  %cmp71 = icmp eq i8 %46, 0
  br i1 %cmp71, label %while.cond, label %if.end75, !llvm.loop !15

if.end75:                                         ; preds = %if.end67, %if.then49
  %47 = load ptr, ptr %pCur, align 8
  %zPath76 = getelementptr inbounds %struct.fsdir_cursor, ptr %47, i64 0, i32 8
  %48 = load ptr, ptr %zPath76, align 8
  call void @sqlite3_free(ptr noundef %48) #8
  %49 = load ptr, ptr %pLvl42, align 8
  %zDir77 = getelementptr inbounds %struct.FsdirLevel, ptr %49, i64 0, i32 1
  %50 = load ptr, ptr %zDir77, align 8
  %51 = load ptr, ptr %pEntry, align 8
  %d_name78 = getelementptr inbounds %struct.dirent, ptr %51, i64 0, i32 5
  %call79 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.18, ptr noundef %50, ptr noundef nonnull %d_name78) #8
  %52 = load ptr, ptr %pCur, align 8
  %zPath80 = getelementptr inbounds %struct.fsdir_cursor, ptr %52, i64 0, i32 8
  store ptr %call79, ptr %zPath80, align 8
  %cmp82 = icmp eq ptr %call79, null
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end75
  store i32 7, ptr %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end75
  %53 = load ptr, ptr %pCur, align 8
  %zPath86 = getelementptr inbounds %struct.fsdir_cursor, ptr %53, i64 0, i32 8
  %54 = load ptr, ptr %zPath86, align 8
  %sStat87 = getelementptr inbounds %struct.fsdir_cursor, ptr %53, i64 0, i32 7
  %call.i = call i32 @"\01_lstat"(ptr noundef %54, ptr noundef nonnull %sStat87) #8
  %tobool89.not = icmp eq i32 %call.i, 0
  br i1 %tobool89.not, label %if.end92, label %if.then90

if.then90:                                        ; preds = %if.end85
  %55 = load ptr, ptr %pCur, align 8
  %zPath91 = getelementptr inbounds %struct.fsdir_cursor, ptr %55, i64 0, i32 8
  %56 = load ptr, ptr %zPath91, align 8
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_11(ptr noundef %55, ptr noundef nonnull @.str.19, ptr noundef %56)
  store i32 1, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.end85
  store i32 0, ptr %retval, align 4
  br label %return

if.end93:                                         ; preds = %while.body
  %57 = load ptr, ptr %pLvl42, align 8
  %58 = load ptr, ptr %57, align 8
  %call95 = call i32 @"\01_closedir"(ptr noundef %58) #8
  %zDir96 = getelementptr inbounds %struct.FsdirLevel, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %zDir96, align 8
  call void @sqlite3_free(ptr noundef %59) #8
  store ptr null, ptr %57, align 8
  %60 = load ptr, ptr %pLvl42, align 8
  %zDir98 = getelementptr inbounds %struct.FsdirLevel, ptr %60, i64 0, i32 1
  store ptr null, ptr %zDir98, align 8
  %61 = load ptr, ptr %pCur, align 8
  %iLvl99 = getelementptr inbounds %struct.fsdir_cursor, ptr %61, i64 0, i32 3
  %62 = load i32, ptr %iLvl99, align 8
  %dec = add nsw i32 %62, -1
  store i32 %dec, ptr %iLvl99, align 8
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %63 = load ptr, ptr %pCur, align 8
  %zPath100 = getelementptr inbounds %struct.fsdir_cursor, ptr %63, i64 0, i32 8
  %64 = load ptr, ptr %zPath100, align 8
  call void @sqlite3_free(ptr noundef %64) #8
  %zPath101 = getelementptr inbounds %struct.fsdir_cursor, ptr %63, i64 0, i32 8
  store ptr null, ptr %zPath101, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end92, %if.then90, %if.then84, %if.then35, %if.then13
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirEof(ptr noundef %cur) #0 {
entry:
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %cur, i64 0, i32 8
  %0 = load ptr, ptr %zPath, align 8
  %cmp = icmp eq ptr %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirColumn(ptr noundef %cur, ptr noundef %ctx, i32 noundef %i) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %m = alloca i16, align 2
  %aStatic = alloca [64 x i8], align 1
  %aBuf = alloca ptr, align 8
  %nBuf = alloca i64, align 8
  %n = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %cur, ptr %pCur, align 8
  switch i32 %i, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb39
  ]

sw.bb:                                            ; preds = %entry
  %0 = load ptr, ptr %ctx.addr, align 8
  %1 = load ptr, ptr %pCur, align 8
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %1, i64 0, i32 8
  %2 = load ptr, ptr %zPath, align 8
  %nBase = getelementptr inbounds %struct.fsdir_cursor, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %nBase, align 8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  call void @sqlite3_result_text(ptr noundef %0, ptr noundef %arrayidx, i32 noundef -1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8
  %5 = load ptr, ptr %pCur, align 8
  %st_mode = getelementptr inbounds %struct.fsdir_cursor, ptr %5, i64 0, i32 7, i32 1
  %6 = load i16, ptr %st_mode, align 4
  %conv = zext i16 %6 to i64
  call void @sqlite3_result_int64(ptr noundef %4, i64 noundef %conv) #8
  br label %return

sw.bb2:                                           ; preds = %entry
  %7 = load ptr, ptr %ctx.addr, align 8
  %8 = load ptr, ptr %pCur, align 8
  %st_mtimespec = getelementptr inbounds %struct.fsdir_cursor, ptr %8, i64 0, i32 7, i32 8
  %9 = load i64, ptr %st_mtimespec, align 8
  call void @sqlite3_result_int64(ptr noundef %7, i64 noundef %9) #8
  br label %return

sw.bb4:                                           ; preds = %entry
  %10 = load ptr, ptr %pCur, align 8
  %st_mode6 = getelementptr inbounds %struct.fsdir_cursor, ptr %10, i64 0, i32 7, i32 1
  %11 = load i16, ptr %st_mode6, align 4
  store i16 %11, ptr %m, align 2
  %12 = and i16 %11, -4096
  %cmp = icmp eq i16 %12, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb4
  %13 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_null(ptr noundef %13) #8
  br label %return

if.else:                                          ; preds = %sw.bb4
  %14 = load i16, ptr %m, align 2
  %15 = and i16 %14, -4096
  %cmp11 = icmp eq i16 %15, -24576
  br i1 %cmp11, label %if.then13, label %if.else35

if.then13:                                        ; preds = %if.else
  store ptr %aStatic, ptr %aBuf, align 8
  store i64 64, ptr %nBuf, align 8
  br label %while.body

while.body:                                       ; preds = %if.end24, %if.then13
  %16 = load ptr, ptr %pCur, align 8
  %zPath14 = getelementptr inbounds %struct.fsdir_cursor, ptr %16, i64 0, i32 8
  %17 = load ptr, ptr %zPath14, align 8
  %18 = load ptr, ptr %aBuf, align 8
  %19 = load i64, ptr %nBuf, align 8
  %call = call i64 @readlink(ptr noundef %17, ptr noundef %18, i64 noundef %19) #8
  %conv15 = trunc i64 %call to i32
  store i32 %conv15, ptr %n, align 4
  %sext = shl i64 %call, 32
  %conv16 = ashr exact i64 %sext, 32
  %cmp17 = icmp slt i64 %conv16, %19
  br i1 %cmp17, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %20 = load ptr, ptr %aBuf, align 8
  %cmp21.not = icmp eq ptr %20, %aStatic
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end
  %21 = load ptr, ptr %aBuf, align 8
  call void @sqlite3_free(ptr noundef %21) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end
  %22 = load i64, ptr %nBuf, align 8
  %mul = shl nsw i64 %22, 1
  store i64 %mul, ptr %nBuf, align 8
  %call25 = call ptr @sqlite3_malloc64(i64 noundef %mul) #8
  store ptr %call25, ptr %aBuf, align 8
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.then28, label %while.body

if.then28:                                        ; preds = %if.end24
  %23 = load ptr, ptr %ctx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %23) #8
  br label %return

while.end:                                        ; preds = %while.body
  %24 = load ptr, ptr %ctx.addr, align 8
  %25 = load ptr, ptr %aBuf, align 8
  %26 = load i32, ptr %n, align 4
  call void @sqlite3_result_text(ptr noundef %24, ptr noundef %25, i32 noundef %26, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #8
  %cmp31.not = icmp eq ptr %25, %aStatic
  br i1 %cmp31.not, label %return, label %if.then33

if.then33:                                        ; preds = %while.end
  %27 = load ptr, ptr %aBuf, align 8
  call void @sqlite3_free(ptr noundef %27) #8
  br label %return

if.else35:                                        ; preds = %if.else
  %28 = load ptr, ptr %ctx.addr, align 8
  %29 = load ptr, ptr %pCur, align 8
  %zPath36 = getelementptr inbounds %struct.fsdir_cursor, ptr %29, i64 0, i32 8
  %30 = load ptr, ptr %zPath36, align 8
  call void @readFileContents(ptr noundef %28, ptr noundef %30)
  br label %return

sw.bb39:                                          ; preds = %entry
  %31 = load ptr, ptr %ctx.addr, align 8
  %32 = load ptr, ptr %pCur, align 8
  %iLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %32, i64 0, i32 3
  %33 = load i32, ptr %iLvl, align 8
  %add = add nsw i32 %33, 2
  call void @sqlite3_result_int(ptr noundef %31, i32 noundef %add) #8
  br label %return

return:                                           ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb39, %if.else35, %if.then33, %while.end, %if.then, %entry, %if.then28
  %storemerge = phi i32 [ 7, %if.then28 ], [ 0, %entry ], [ 0, %if.then ], [ 0, %while.end ], [ 0, %if.then33 ], [ 0, %if.else35 ], [ 0, %sw.bb39 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fsdirRowid(ptr noundef %cur, ptr noundef %pRowid) #0 {
entry:
  %iRowid = getelementptr inbounds %struct.fsdir_cursor, ptr %cur, i64 0, i32 9
  %0 = load i64, ptr %iRowid, align 8
  store i64 %0, ptr %pRowid, align 8
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
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load ptr, ptr %pCur.addr, align 8
  %iLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %iLvl, align 8
  %cmp.not = icmp sgt i32 %storemerge, %1
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pCur.addr, align 8
  %aLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %2, i64 0, i32 4
  %3 = load ptr, ptr %aLvl, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.FsdirLevel, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %pLvl, align 8
  %5 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %pLvl, align 8
  %7 = load ptr, ptr %6, align 8
  %call = call i32 @"\01_closedir"(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load ptr, ptr %pLvl, align 8
  %zDir = getelementptr inbounds %struct.FsdirLevel, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %zDir, align 8
  call void @sqlite3_free(ptr noundef %9) #8
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %pCur.addr, align 8
  %zPath = getelementptr inbounds %struct.fsdir_cursor, ptr %11, i64 0, i32 8
  %12 = load ptr, ptr %zPath, align 8
  call void @sqlite3_free(ptr noundef %12) #8
  %aLvl2 = getelementptr inbounds %struct.fsdir_cursor, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %aLvl2, align 8
  call void @sqlite3_free(ptr noundef %13) #8
  %14 = load ptr, ptr %pCur.addr, align 8
  %aLvl3 = getelementptr inbounds %struct.fsdir_cursor, ptr %14, i64 0, i32 4
  store ptr null, ptr %aLvl3, align 8
  %zPath4 = getelementptr inbounds %struct.fsdir_cursor, ptr %14, i64 0, i32 8
  store ptr null, ptr %zPath4, align 8
  %zBase = getelementptr inbounds %struct.fsdir_cursor, ptr %14, i64 0, i32 5
  store ptr null, ptr %zBase, align 8
  %15 = load ptr, ptr %pCur.addr, align 8
  %nBase = getelementptr inbounds %struct.fsdir_cursor, ptr %15, i64 0, i32 6
  store i32 0, ptr %nBase, align 8
  %nLvl = getelementptr inbounds %struct.fsdir_cursor, ptr %15, i64 0, i32 1
  store i32 0, ptr %nLvl, align 8
  %iLvl5 = getelementptr inbounds %struct.fsdir_cursor, ptr %15, i64 0, i32 3
  store i32 -1, ptr %iLvl5, align 8
  %16 = load ptr, ptr %pCur.addr, align 8
  %iRowid = getelementptr inbounds %struct.fsdir_cursor, ptr %16, i64 0, i32 9
  store i64 1, ptr %iRowid, align 8
  ret void
}

declare i32 @"\01_closedir"(ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

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
  %zPath.addr = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %z = alloca ptr, align 8
  %zBuf = alloca [1025 x i8], align 1
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr null, ptr %zOut, align 8
  %cmp = icmp eq ptr %zPath, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %zPath.addr, align 8
  %call = call ptr @"\01_realpath$DARWIN_EXTSN"(ptr noundef %0, ptr noundef nonnull %zBuf) #8
  store ptr %call, ptr %z, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  %call3 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.10, ptr noundef nonnull %zBuf) #8
  store ptr %call3, ptr %zOut, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %1 = load ptr, ptr %zOut, align 8
  %cmp5 = icmp eq ptr %1, null
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %2 = load ptr, ptr %zPath.addr, align 8
  %call7 = call ptr @"\01_realpath$DARWIN_EXTSN"(ptr noundef %2, ptr noundef null) #8
  store ptr %call7, ptr %z, align 8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.then6
  %3 = load ptr, ptr %z, align 8
  %call10 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.10, ptr noundef %3) #8
  store ptr %call10, ptr %zOut, align 8
  call void @free(ptr noundef %3) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.then9, %if.end4
  %4 = load ptr, ptr %zOut, align 8
  br label %return

return:                                           ; preds = %entry, %if.end12
  %storemerge = phi ptr [ %4, %if.end12 ], [ null, %entry ]
  ret ptr %storemerge
}

declare ptr @"\01_realpath$DARWIN_EXTSN"(ptr noundef, ptr noundef) #1

declare void @free(ptr noundef) #1

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_0(ptr noundef %ctx, ptr noundef %zFmt, ...) #6 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %zFmt, ptr noundef %0) #8
  call void @sqlite3_result_error(ptr noundef %ctx, ptr noundef %call, i32 noundef -1) #8
  call void @sqlite3_free(ptr noundef %call) #8
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_1(ptr noundef %ctx, ptr noundef %zFmt, ...) #6 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %zFmt, ptr noundef %0) #8
  call void @sqlite3_result_error(ptr noundef %ctx, ptr noundef %call, i32 noundef -1) #8
  call void @sqlite3_free(ptr noundef %call) #8
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_2(ptr noundef %ctx, ptr noundef %zFmt, ...) #6 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %zFmt, ptr noundef %0) #8
  call void @sqlite3_result_error(ptr noundef %ctx, ptr noundef %call, i32 noundef -1) #8
  call void @sqlite3_free(ptr noundef %call) #8
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_5(ptr noundef %pCur, ptr noundef %zFmt, ...) #6 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %zFmt, ptr noundef %0) #8
  %1 = load ptr, ptr %pCur, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %1, i64 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_6(ptr noundef %pCur, ptr noundef %zFmt, ...) #6 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %zFmt, ptr noundef %0) #8
  %1 = load ptr, ptr %pCur, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %1, i64 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_8(ptr noundef %pCur, ptr noundef %zFmt, ...) #6 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %zFmt, ptr noundef %0) #8
  %1 = load ptr, ptr %pCur, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %1, i64 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_9(ptr noundef %pCur, ptr noundef %zFmt, ...) #6 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %zFmt, ptr noundef %0) #8
  %1 = load ptr, ptr %pCur, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %1, i64 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_fileio_11(ptr noundef %pCur, ptr noundef %zFmt, ...) #6 {
entry:
  %ap = alloca ptr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %zFmt, ptr noundef %0) #8
  %1 = load ptr, ptr %pCur, align 8
  %zErrMsg = getelementptr inbounds %struct.sqlite3_vtab, ptr %1, i64 0, i32 2
  store ptr %call, ptr %zErrMsg, align 8
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
