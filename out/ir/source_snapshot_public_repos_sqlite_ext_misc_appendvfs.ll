; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/appendvfs.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/appendvfs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_io_methods = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ApndFile = type { %struct.sqlite3_file, i64, i64 }
%struct.sqlite3_file = type { ptr }

@apnd_vfs = internal global %struct.sqlite3_vfs { i32 3, i32 0, i32 1024, ptr null, ptr @.str, ptr null, ptr @apndOpen, ptr @apndDelete, ptr @apndAccess, ptr @apndFullPathname, ptr @apndDlOpen, ptr @apndDlError, ptr @apndDlSym, ptr @apndDlClose, ptr @apndRandomness, ptr @apndSleep, ptr @apndCurrentTime, ptr @apndGetLastError, ptr @apndCurrentTimeInt64, ptr @apndSetSystemCall, ptr @apndGetSystemCall, ptr @apndNextSystemCall }, align 8
@.str = private unnamed_addr constant [8 x i8] c"apndvfs\00", align 1
@apnd_io_methods = internal constant %struct.sqlite3_io_methods { i32 3, ptr @apndClose, ptr @apndRead, ptr @apndWrite, ptr @apndTruncate, ptr @apndSync, ptr @apndFileSize, ptr @apndLock, ptr @apndUnlock, ptr @apndCheckReservedLock, ptr @apndFileControl, ptr @apndSectorSize, ptr @apndDeviceCharacteristics, ptr @apndShmMap, ptr @apndShmLock, ptr @apndShmBarrier, ptr @apndShmUnmap, ptr @apndFetch, ptr @apndUnfetch }, align 8
@__func__.apndWriteMark = private unnamed_addr constant [14 x i8] c"apndWriteMark\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"appendvfs.c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pFile == ORIGFILE(paf)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Start-Of-SQLite3-\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"apnd(%lld)/%z\00", align 1
@apvfsSqliteHdr = internal constant [16 x i8] c"SQLite format 3\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_appendvfs_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pOrig = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %pzErrMsg.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3_vfs_find(ptr noundef null)
  store ptr %call, ptr %pOrig, align 8
  %3 = load ptr, ptr %pOrig, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pOrig, align 8
  %iVersion = getelementptr inbounds %struct.sqlite3_vfs, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %iVersion, align 8
  store i32 %5, ptr @apnd_vfs, align 8
  %6 = load ptr, ptr %pOrig, align 8
  store ptr %6, ptr getelementptr inbounds (%struct.sqlite3_vfs, ptr @apnd_vfs, i32 0, i32 5), align 8
  %7 = load ptr, ptr %pOrig, align 8
  %szOsFile = getelementptr inbounds %struct.sqlite3_vfs, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %szOsFile, align 4
  %conv = sext i32 %8 to i64
  %add = add i64 %conv, 24
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, ptr getelementptr inbounds (%struct.sqlite3_vfs, ptr @apnd_vfs, i32 0, i32 1), align 4
  %call2 = call i32 @sqlite3_vfs_register(ptr noundef @apnd_vfs, i32 noundef 0)
  store i32 %call2, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 256, ptr %rc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

declare ptr @sqlite3_vfs_find(ptr noundef) #1

declare i32 @sqlite3_vfs_register(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndOpen(ptr noundef %pApndVfs, ptr noundef %zName, ptr noundef %pFile, i32 noundef %flags, ptr noundef %pOutFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pApndVfs.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %pFile.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pOutFlags.addr = alloca ptr, align 8
  %pApndFile = alloca ptr, align 8
  %pBaseFile = alloca ptr, align 8
  %pBaseVfs = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sz = alloca i64, align 8
  store ptr %pApndVfs, ptr %pApndVfs.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %pOutFlags, ptr %pOutFlags.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %pApndFile, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %1, i64 1
  store ptr %add.ptr, ptr %pBaseFile, align 8
  %2 = load ptr, ptr %pApndVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %pAppData, align 8
  store ptr %3, ptr %pBaseVfs, align 8
  store i64 0, ptr %sz, align 8
  %4 = load i32, ptr %flags.addr, align 4
  %and = and i32 %4, 256
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pBaseVfs, align 8
  %xOpen = getelementptr inbounds %struct.sqlite3_vfs, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %xOpen, align 8
  %7 = load ptr, ptr %pBaseVfs, align 8
  %8 = load ptr, ptr %zName.addr, align 8
  %9 = load ptr, ptr %pFile.addr, align 8
  %10 = load i32, ptr %flags.addr, align 4
  %11 = load ptr, ptr %pOutFlags.addr, align 8
  %call = call i32 %6(ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %pApndFile, align 8
  %13 = load ptr, ptr %pApndFile, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %12, i32 noundef 0, i64 noundef 24, i64 noundef %14) #6
  %15 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %15, i32 0, i32 0
  store ptr @apnd_io_methods, ptr %pMethods, align 8
  %16 = load ptr, ptr %pApndFile, align 8
  %iMark = getelementptr inbounds %struct.ApndFile, ptr %16, i32 0, i32 2
  store i64 -1, ptr %iMark, align 8
  %17 = load ptr, ptr %pBaseVfs, align 8
  %xOpen2 = getelementptr inbounds %struct.sqlite3_vfs, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %xOpen2, align 8
  %19 = load ptr, ptr %pBaseVfs, align 8
  %20 = load ptr, ptr %zName.addr, align 8
  %21 = load ptr, ptr %pBaseFile, align 8
  %22 = load i32, ptr %flags.addr, align 4
  %23 = load ptr, ptr %pOutFlags.addr, align 8
  %call3 = call i32 %18(ptr noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22, ptr noundef %23)
  store i32 %call3, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %24, 0
  br i1 %cmp4, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  %25 = load ptr, ptr %pBaseFile, align 8
  %pMethods6 = getelementptr inbounds %struct.sqlite3_file, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pMethods6, align 8
  %xFileSize = getelementptr inbounds %struct.sqlite3_io_methods, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %xFileSize, align 8
  %28 = load ptr, ptr %pBaseFile, align 8
  %call7 = call i32 %27(ptr noundef %28, ptr noundef %sz)
  store i32 %call7, ptr %rc, align 4
  %29 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then5
  %30 = load ptr, ptr %pBaseFile, align 8
  %pMethods9 = getelementptr inbounds %struct.sqlite3_file, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %pMethods9, align 8
  %xClose = getelementptr inbounds %struct.sqlite3_io_methods, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %xClose, align 8
  %33 = load ptr, ptr %pBaseFile, align 8
  %call10 = call i32 %32(ptr noundef %33)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %34 = load i32, ptr %rc, align 4
  %tobool13 = icmp ne i32 %34, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %35 = load ptr, ptr %pFile.addr, align 8
  %pMethods15 = getelementptr inbounds %struct.sqlite3_file, ptr %35, i32 0, i32 0
  store ptr null, ptr %pMethods15, align 8
  %36 = load i32, ptr %rc, align 4
  store i32 %36, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %37 = load i64, ptr %sz, align 8
  %38 = load ptr, ptr %pBaseFile, align 8
  %call17 = call i32 @apndIsOrdinaryDatabaseFile(i64 noundef %37, ptr noundef %38)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %39 = load ptr, ptr %pApndFile, align 8
  %40 = load ptr, ptr %pBaseFile, align 8
  %41 = load ptr, ptr %pBaseVfs, align 8
  %szOsFile = getelementptr inbounds %struct.sqlite3_vfs, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %szOsFile, align 4
  %conv = sext i32 %42 to i64
  %43 = load ptr, ptr %pApndFile, align 8
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %43, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memmove_chk(ptr noundef %39, ptr noundef %40, i64 noundef %conv, i64 noundef %44) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  %45 = load i64, ptr %sz, align 8
  %46 = load ptr, ptr %pFile.addr, align 8
  %call22 = call i64 @apndReadMark(i64 noundef %45, ptr noundef %46)
  %47 = load ptr, ptr %pApndFile, align 8
  %iPgOne = getelementptr inbounds %struct.ApndFile, ptr %47, i32 0, i32 1
  store i64 %call22, ptr %iPgOne, align 8
  %48 = load ptr, ptr %pApndFile, align 8
  %iPgOne23 = getelementptr inbounds %struct.ApndFile, ptr %48, i32 0, i32 1
  %49 = load i64, ptr %iPgOne23, align 8
  %cmp24 = icmp sge i64 %49, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  %50 = load i64, ptr %sz, align 8
  %sub = sub nsw i64 %50, 25
  %51 = load ptr, ptr %pApndFile, align 8
  %iMark27 = getelementptr inbounds %struct.ApndFile, ptr %51, i32 0, i32 2
  store i64 %sub, ptr %iMark27, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end21
  %52 = load i32, ptr %flags.addr, align 4
  %and29 = and i32 %52, 4
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end28
  %53 = load ptr, ptr %pBaseFile, align 8
  %pMethods33 = getelementptr inbounds %struct.sqlite3_file, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %pMethods33, align 8
  %xClose34 = getelementptr inbounds %struct.sqlite3_io_methods, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %xClose34, align 8
  %56 = load ptr, ptr %pBaseFile, align 8
  %call35 = call i32 %55(ptr noundef %56)
  store i32 14, ptr %rc, align 4
  %57 = load ptr, ptr %pFile.addr, align 8
  %pMethods36 = getelementptr inbounds %struct.sqlite3_file, ptr %57, i32 0, i32 0
  store ptr null, ptr %pMethods36, align 8
  br label %if.end39

if.else:                                          ; preds = %if.end28
  %58 = load i64, ptr %sz, align 8
  %add = add nsw i64 %58, 4095
  %and37 = and i64 %add, -4096
  %59 = load ptr, ptr %pApndFile, align 8
  %iPgOne38 = getelementptr inbounds %struct.ApndFile, ptr %59, i32 0, i32 1
  store i64 %and37, ptr %iPgOne38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then32
  %60 = load i32, ptr %rc, align 4
  store i32 %60, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then26, %if.then19, %if.then14, %if.then
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndDelete(ptr noundef %pVfs, ptr noundef %zPath, i32 noundef %dirSync) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %dirSync.addr = alloca i32, align 4
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %dirSync, ptr %dirSync.addr, align 4
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xDelete = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %xDelete, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %zPath.addr, align 8
  %6 = load i32, ptr %dirSync.addr, align 4
  %call = call i32 %2(ptr noundef %4, ptr noundef %5, i32 noundef %6)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndAccess(ptr noundef %pVfs, ptr noundef %zPath, i32 noundef %flags, ptr noundef %pResOut) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pResOut.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %pResOut, ptr %pResOut.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xAccess = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %xAccess, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %zPath.addr, align 8
  %6 = load i32, ptr %flags.addr, align 4
  %7 = load ptr, ptr %pResOut.addr, align 8
  %call = call i32 %2(ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndFullPathname(ptr noundef %pVfs, ptr noundef %zPath, i32 noundef %nOut, ptr noundef %zOut) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %nOut.addr = alloca i32, align 4
  %zOut.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %nOut, ptr %nOut.addr, align 4
  store ptr %zOut, ptr %zOut.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xFullPathname = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 9
  %2 = load ptr, ptr %xFullPathname, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %zPath.addr, align 8
  %6 = load i32, ptr %nOut.addr, align 4
  %7 = load ptr, ptr %zOut.addr, align 8
  %call = call i32 %2(ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @apndDlOpen(ptr noundef %pVfs, ptr noundef %zPath) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xDlOpen = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %xDlOpen, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %zPath.addr, align 8
  %call = call ptr %2(ptr noundef %4, ptr noundef %5)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @apndDlError(ptr noundef %pVfs, i32 noundef %nByte, ptr noundef %zErrMsg) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %zErrMsg.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %zErrMsg, ptr %zErrMsg.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xDlError = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 11
  %2 = load ptr, ptr %xDlError, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load i32, ptr %nByte.addr, align 4
  %6 = load ptr, ptr %zErrMsg.addr, align 8
  call void %2(ptr noundef %4, i32 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @apndDlSym(ptr noundef %pVfs, ptr noundef %p, ptr noundef %zSym) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %zSym.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zSym, ptr %zSym.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xDlSym = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 12
  %2 = load ptr, ptr %xDlSym, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %6 = load ptr, ptr %zSym.addr, align 8
  %call = call ptr %2(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @apndDlClose(ptr noundef %pVfs, ptr noundef %pHandle) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %pHandle.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %pHandle, ptr %pHandle.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xDlClose = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 13
  %2 = load ptr, ptr %xDlClose, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %pHandle.addr, align 8
  call void %2(ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndRandomness(ptr noundef %pVfs, i32 noundef %nByte, ptr noundef %zBufOut) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %zBufOut.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %zBufOut, ptr %zBufOut.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xRandomness = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 14
  %2 = load ptr, ptr %xRandomness, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load i32, ptr %nByte.addr, align 4
  %6 = load ptr, ptr %zBufOut.addr, align 8
  %call = call i32 %2(ptr noundef %4, i32 noundef %5, ptr noundef %6)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndSleep(ptr noundef %pVfs, i32 noundef %nMicro) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %nMicro.addr = alloca i32, align 4
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store i32 %nMicro, ptr %nMicro.addr, align 4
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xSleep = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 15
  %2 = load ptr, ptr %xSleep, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load i32, ptr %nMicro.addr, align 4
  %call = call i32 %2(ptr noundef %4, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndCurrentTime(ptr noundef %pVfs, ptr noundef %pTimeOut) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %pTimeOut.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %pTimeOut, ptr %pTimeOut.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xCurrentTime = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 16
  %2 = load ptr, ptr %xCurrentTime, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %pTimeOut.addr, align 8
  %call = call i32 %2(ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndGetLastError(ptr noundef %pVfs, i32 noundef %a, ptr noundef %b) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store i32 %a, ptr %a.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xGetLastError = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 17
  %2 = load ptr, ptr %xGetLastError, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load i32, ptr %a.addr, align 4
  %6 = load ptr, ptr %b.addr, align 8
  %call = call i32 %2(ptr noundef %4, i32 noundef %5, ptr noundef %6)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndCurrentTimeInt64(ptr noundef %pVfs, ptr noundef %p) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xCurrentTimeInt64 = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 18
  %2 = load ptr, ptr %xCurrentTimeInt64, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %call = call i32 %2(ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndSetSystemCall(ptr noundef %pVfs, ptr noundef %zName, ptr noundef %pCall) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %pCall.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %pCall, ptr %pCall.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xSetSystemCall = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 19
  %2 = load ptr, ptr %xSetSystemCall, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %zName.addr, align 8
  %6 = load ptr, ptr %pCall.addr, align 8
  %call = call i32 %2(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @apndGetSystemCall(ptr noundef %pVfs, ptr noundef %zName) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xGetSystemCall = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 20
  %2 = load ptr, ptr %xGetSystemCall, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %zName.addr, align 8
  %call = call ptr %2(ptr noundef %4, ptr noundef %5)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @apndNextSystemCall(ptr noundef %pVfs, ptr noundef %zName) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  %xNextSystemCall = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 21
  %2 = load ptr, ptr %xNextSystemCall, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pAppData1 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pAppData1, align 8
  %5 = load ptr, ptr %zName.addr, align 8
  %call = call ptr %2(ptr noundef %4, ptr noundef %5)
  ret ptr %call
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndIsOrdinaryDatabaseFile(i64 noundef %sz, ptr noundef %pFile) #0 {
entry:
  %retval = alloca i32, align 4
  %sz.addr = alloca i64, align 8
  %pFile.addr = alloca ptr, align 8
  %zHdr = alloca [16 x i8], align 1
  store i64 %sz, ptr %sz.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load i64, ptr %sz.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %call = call i32 @apndIsAppendvfsDatabase(i64 noundef %0, ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %sz.addr, align 8
  %and = and i64 %2, 511
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pMethods, align 8
  %xRead = getelementptr inbounds %struct.sqlite3_io_methods, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %xRead, align 8
  %6 = load ptr, ptr %pFile.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], ptr %zHdr, i64 0, i64 0
  %call2 = call i32 %5(ptr noundef %6, ptr noundef %arraydecay, i32 noundef 16, i64 noundef 0)
  %cmp3 = icmp ne i32 0, %call2
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false1
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %zHdr, i64 0, i64 0
  %call6 = call i32 @memcmp(ptr noundef %arraydecay5, ptr noundef @apvfsSqliteHdr, i64 noundef 16)
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @apndReadMark(i64 noundef %sz, ptr noundef %pFile) #0 {
entry:
  %retval = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %pFile.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %iMark = alloca i64, align 8
  %msbs = alloca i32, align 4
  %a = alloca [25 x i8], align 1
  store i64 %sz, ptr %sz.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 56, ptr %msbs, align 4
  %0 = load i64, ptr %sz.addr, align 8
  %and = and i64 %0, 511
  %cmp = icmp ne i64 25, %and
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xRead = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %xRead, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %arraydecay = getelementptr inbounds [25 x i8], ptr %a, i64 0, i64 0
  %5 = load i64, ptr %sz.addr, align 8
  %sub = sub nsw i64 %5, 25
  %call = call i32 %3(ptr noundef %4, ptr noundef %arraydecay, i32 noundef 25, i64 noundef %sub)
  store i32 %call, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [25 x i8], ptr %a, i64 0, i64 0
  %call4 = call i32 @memcmp(ptr noundef %arraydecay3, ptr noundef @.str.3, i64 noundef 17)
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end2
  store i64 -1, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end2
  %arrayidx = getelementptr inbounds [25 x i8], ptr %a, i64 0, i64 17
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %and8 = and i32 %conv, 127
  %conv9 = sext i32 %and8 to i64
  %8 = load i32, ptr %msbs, align 4
  %sh_prom = zext i32 %8 to i64
  %shl = shl i64 %conv9, %sh_prom
  store i64 %shl, ptr %iMark, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %9, 8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %msbs, align 4
  %sub12 = sub nsw i32 %10, 8
  store i32 %sub12, ptr %msbs, align 4
  %11 = load i32, ptr %i, align 4
  %add = add nsw i32 17, %11
  %idxprom = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [25 x i8], ptr %a, i64 0, i64 %idxprom
  %12 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %12 to i64
  %13 = load i32, ptr %msbs, align 4
  %sh_prom15 = zext i32 %13 to i64
  %shl16 = shl i64 %conv14, %sh_prom15
  %14 = load i64, ptr %iMark, align 8
  %or = or i64 %14, %shl16
  store i64 %or, ptr %iMark, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %iMark, align 8
  %17 = load i64, ptr %sz.addr, align 8
  %sub17 = sub nsw i64 %17, 25
  %sub18 = sub nsw i64 %sub17, 512
  %cmp19 = icmp sgt i64 %16, %sub18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.end
  store i64 -1, ptr %retval, align 8
  br label %return

if.end22:                                         ; preds = %for.end
  %18 = load i64, ptr %iMark, align 8
  %and23 = and i64 %18, 511
  %tobool24 = icmp ne i64 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  store i64 -1, ptr %retval, align 8
  br label %return

if.end26:                                         ; preds = %if.end22
  %19 = load i64, ptr %iMark, align 8
  store i64 %19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.then25, %if.then21, %if.then6, %if.then1, %if.then
  %20 = load i64, ptr %retval, align 8
  ret i64 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndClose(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xClose = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %xClose, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %call = call i32 %3(ptr noundef %4)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndRead(ptr noundef %pFile, ptr noundef %zBuf, i32 noundef %iAmt, i64 noundef %iOfst) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %iAmt.addr = alloca i32, align 4
  %iOfst.addr = alloca i64, align 8
  %paf = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 %iAmt, ptr %iAmt.addr, align 4
  store i64 %iOfst, ptr %iOfst.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %paf, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %1, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %2 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pMethods, align 8
  %xRead = getelementptr inbounds %struct.sqlite3_io_methods, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %xRead, align 8
  %5 = load ptr, ptr %pFile.addr, align 8
  %6 = load ptr, ptr %zBuf.addr, align 8
  %7 = load i32, ptr %iAmt.addr, align 4
  %8 = load ptr, ptr %paf, align 8
  %iPgOne = getelementptr inbounds %struct.ApndFile, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %iPgOne, align 8
  %10 = load i64, ptr %iOfst.addr, align 8
  %add = add nsw i64 %9, %10
  %call = call i32 %4(ptr noundef %5, ptr noundef %6, i32 noundef %7, i64 noundef %add)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndWrite(ptr noundef %pFile, ptr noundef %zBuf, i32 noundef %iAmt, i64 noundef %iOfst) #0 {
entry:
  %retval = alloca i32, align 4
  %pFile.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %iAmt.addr = alloca i32, align 4
  %iOfst.addr = alloca i64, align 8
  %paf = alloca ptr, align 8
  %iWriteEnd = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 %iAmt, ptr %iAmt.addr, align 4
  store i64 %iOfst, ptr %iOfst.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %paf, align 8
  %1 = load i64, ptr %iOfst.addr, align 8
  %2 = load i32, ptr %iAmt.addr, align 4
  %conv = sext i32 %2 to i64
  %add = add nsw i64 %1, %conv
  store i64 %add, ptr %iWriteEnd, align 8
  %3 = load i64, ptr %iWriteEnd, align 8
  %cmp = icmp sge i64 %3, 1073741824
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 13, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %4, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %5 = load ptr, ptr %paf, align 8
  %iMark = getelementptr inbounds %struct.ApndFile, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %iMark, align 8
  %cmp2 = icmp slt i64 %6, 0
  br i1 %cmp2, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %paf, align 8
  %iPgOne = getelementptr inbounds %struct.ApndFile, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %iPgOne, align 8
  %9 = load i64, ptr %iWriteEnd, align 8
  %add4 = add nsw i64 %8, %9
  %10 = load ptr, ptr %paf, align 8
  %iMark5 = getelementptr inbounds %struct.ApndFile, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %iMark5, align 8
  %cmp6 = icmp sgt i64 %add4, %11
  br i1 %cmp6, label %if.then8, label %if.end13

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %12 = load ptr, ptr %paf, align 8
  %13 = load ptr, ptr %pFile.addr, align 8
  %14 = load i64, ptr %iWriteEnd, align 8
  %call = call i32 @apndWriteMark(ptr noundef %12, ptr noundef %13, i64 noundef %14)
  store i32 %call, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 0, %15
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %lor.lhs.false
  %17 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pMethods, align 8
  %xWrite = getelementptr inbounds %struct.sqlite3_io_methods, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %xWrite, align 8
  %20 = load ptr, ptr %pFile.addr, align 8
  %21 = load ptr, ptr %zBuf.addr, align 8
  %22 = load i32, ptr %iAmt.addr, align 4
  %23 = load ptr, ptr %paf, align 8
  %iPgOne14 = getelementptr inbounds %struct.ApndFile, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %iPgOne14, align 8
  %25 = load i64, ptr %iOfst.addr, align 8
  %add15 = add nsw i64 %24, %25
  %call16 = call i32 %19(ptr noundef %20, ptr noundef %21, i32 noundef %22, i64 noundef %add15)
  store i32 %call16, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndTruncate(ptr noundef %pFile, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pFile.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %paf = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %paf, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %1, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %2 = load ptr, ptr %paf, align 8
  %3 = load ptr, ptr %pFile.addr, align 8
  %4 = load i64, ptr %size.addr, align 8
  %call = call i32 @apndWriteMark(ptr noundef %2, ptr noundef %3, i64 noundef %4)
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pMethods, align 8
  %xTruncate = getelementptr inbounds %struct.sqlite3_io_methods, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %xTruncate, align 8
  %8 = load ptr, ptr %pFile.addr, align 8
  %9 = load ptr, ptr %paf, align 8
  %iMark = getelementptr inbounds %struct.ApndFile, ptr %9, i32 0, i32 2
  %10 = load i64, ptr %iMark, align 8
  %add = add nsw i64 %10, 25
  %call1 = call i32 %7(ptr noundef %8, i64 noundef %add)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndSync(ptr noundef %pFile, i32 noundef %flags) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xSync = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %xSync, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %5 = load i32, ptr %flags.addr, align 4
  %call = call i32 %3(ptr noundef %4, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndFileSize(ptr noundef %pFile, ptr noundef %pSize) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %pSize.addr = alloca ptr, align 8
  %paf = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %pSize, ptr %pSize.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %paf, align 8
  %1 = load ptr, ptr %paf, align 8
  %iMark = getelementptr inbounds %struct.ApndFile, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %iMark, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %paf, align 8
  %iMark1 = getelementptr inbounds %struct.ApndFile, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %iMark1, align 8
  %5 = load ptr, ptr %paf, align 8
  %iPgOne = getelementptr inbounds %struct.ApndFile, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %iPgOne, align 8
  %sub = sub nsw i64 %4, %6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %7 = load ptr, ptr %pSize.addr, align 8
  store i64 %cond, ptr %7, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndLock(ptr noundef %pFile, i32 noundef %eLock) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %eLock.addr = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %eLock, ptr %eLock.addr, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xLock = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %xLock, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %5 = load i32, ptr %eLock.addr, align 4
  %call = call i32 %3(ptr noundef %4, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndUnlock(ptr noundef %pFile, i32 noundef %eLock) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %eLock.addr = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %eLock, ptr %eLock.addr, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xUnlock = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %xUnlock, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %5 = load i32, ptr %eLock.addr, align 4
  %call = call i32 %3(ptr noundef %4, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndCheckReservedLock(ptr noundef %pFile, ptr noundef %pResOut) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %pResOut.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %pResOut, ptr %pResOut.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xCheckReservedLock = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %xCheckReservedLock, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %5 = load ptr, ptr %pResOut.addr, align 8
  %call = call i32 %3(ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndFileControl(ptr noundef %pFile, i32 noundef %op, ptr noundef %pArg) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pArg.addr = alloca ptr, align 8
  %paf = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %paf, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %1, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %2 = load i32, ptr %op.addr, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %paf, align 8
  %iPgOne = getelementptr inbounds %struct.ApndFile, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %iPgOne, align 8
  %5 = load ptr, ptr %pArg.addr, align 8
  %6 = load i64, ptr %5, align 8
  %add = add nsw i64 %6, %4
  store i64 %add, ptr %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pMethods, align 8
  %xFileControl = getelementptr inbounds %struct.sqlite3_io_methods, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %xFileControl, align 8
  %10 = load ptr, ptr %pFile.addr, align 8
  %11 = load i32, ptr %op.addr, align 4
  %12 = load ptr, ptr %pArg.addr, align 8
  %call = call i32 %9(ptr noundef %10, i32 noundef %11, ptr noundef %12)
  store i32 %call, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %13, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, ptr %op.addr, align 4
  %cmp2 = icmp eq i32 %14, 12
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %paf, align 8
  %iPgOne4 = getelementptr inbounds %struct.ApndFile, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %iPgOne4, align 8
  %17 = load ptr, ptr %pArg.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %call5 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.4, i64 noundef %16, ptr noundef %18)
  %19 = load ptr, ptr %pArg.addr, align 8
  store ptr %call5, ptr %19, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %20 = load i32, ptr %rc, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndSectorSize(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xSectorSize = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %xSectorSize, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %call = call i32 %3(ptr noundef %4)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndDeviceCharacteristics(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xDeviceCharacteristics = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %xDeviceCharacteristics, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %call = call i32 %3(ptr noundef %4)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndShmMap(ptr noundef %pFile, i32 noundef %iPg, i32 noundef %pgsz, i32 noundef %bExtend, ptr noundef %pp) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %iPg.addr = alloca i32, align 4
  %pgsz.addr = alloca i32, align 4
  %bExtend.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %iPg, ptr %iPg.addr, align 4
  store i32 %pgsz, ptr %pgsz.addr, align 4
  store i32 %bExtend, ptr %bExtend.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xShmMap = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %xShmMap, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %5 = load i32, ptr %iPg.addr, align 4
  %6 = load i32, ptr %pgsz.addr, align 4
  %7 = load i32, ptr %bExtend.addr, align 4
  %8 = load ptr, ptr %pp.addr, align 8
  %call = call i32 %3(ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndShmLock(ptr noundef %pFile, i32 noundef %offset, i32 noundef %n, i32 noundef %flags) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xShmLock = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %xShmLock, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %5 = load i32, ptr %offset.addr, align 4
  %6 = load i32, ptr %n.addr, align 4
  %7 = load i32, ptr %flags.addr, align 4
  %call = call i32 %3(ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @apndShmBarrier(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xShmBarrier = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 15
  %3 = load ptr, ptr %xShmBarrier, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  call void %3(ptr noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndShmUnmap(ptr noundef %pFile, i32 noundef %deleteFlag) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %deleteFlag.addr = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %deleteFlag, ptr %deleteFlag.addr, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xShmUnmap = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 16
  %3 = load ptr, ptr %xShmUnmap, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %5 = load i32, ptr %deleteFlag.addr, align 4
  %call = call i32 %3(ptr noundef %4, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndFetch(ptr noundef %pFile, i64 noundef %iOfst, i32 noundef %iAmt, ptr noundef %pp) #0 {
entry:
  %retval = alloca i32, align 4
  %pFile.addr = alloca ptr, align 8
  %iOfst.addr = alloca i64, align 8
  %iAmt.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %iOfst, ptr %iOfst.addr, align 8
  store i32 %iAmt, ptr %iAmt.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %iMark = getelementptr inbounds %struct.ApndFile, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %iMark, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, ptr %iOfst.addr, align 8
  %4 = load i32, ptr %iAmt.addr, align 4
  %conv = sext i32 %4 to i64
  %add = add nsw i64 %3, %conv
  %5 = load ptr, ptr %p, align 8
  %iMark1 = getelementptr inbounds %struct.ApndFile, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %iMark1, align 8
  %cmp2 = icmp sgt i64 %add, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %7, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %8 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pMethods, align 8
  %xFetch = getelementptr inbounds %struct.sqlite3_io_methods, ptr %9, i32 0, i32 17
  %10 = load ptr, ptr %xFetch, align 8
  %11 = load ptr, ptr %pFile.addr, align 8
  %12 = load i64, ptr %iOfst.addr, align 8
  %13 = load ptr, ptr %p, align 8
  %iPgOne = getelementptr inbounds %struct.ApndFile, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %iPgOne, align 8
  %add4 = add nsw i64 %12, %14
  %15 = load i32, ptr %iAmt.addr, align 4
  %16 = load ptr, ptr %pp.addr, align 8
  %call = call i32 %10(ptr noundef %11, i64 noundef %add4, i32 noundef %15, ptr noundef %16)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndUnfetch(ptr noundef %pFile, i64 noundef %iOfst, ptr noundef %pPage) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %iOfst.addr = alloca i64, align 8
  %pPage.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %iOfst, ptr %iOfst.addr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %1, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %2 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pMethods, align 8
  %xUnfetch = getelementptr inbounds %struct.sqlite3_io_methods, ptr %3, i32 0, i32 18
  %4 = load ptr, ptr %xUnfetch, align 8
  %5 = load ptr, ptr %pFile.addr, align 8
  %6 = load i64, ptr %iOfst.addr, align 8
  %7 = load ptr, ptr %p, align 8
  %iPgOne = getelementptr inbounds %struct.ApndFile, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %iPgOne, align 8
  %add = add nsw i64 %6, %8
  %9 = load ptr, ptr %pPage.addr, align 8
  %call = call i32 %4(ptr noundef %5, i64 noundef %add, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndWriteMark(ptr noundef %paf, ptr noundef %pFile, i64 noundef %iWriteEnd) #0 {
entry:
  %paf.addr = alloca ptr, align 8
  %pFile.addr = alloca ptr, align 8
  %iWriteEnd.addr = alloca i64, align 8
  %iPgOne = alloca i64, align 8
  %a = alloca [25 x i8], align 1
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %paf, ptr %paf.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %iWriteEnd, ptr %iWriteEnd.addr, align 8
  %0 = load ptr, ptr %paf.addr, align 8
  %iPgOne1 = getelementptr inbounds %struct.ApndFile, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %iPgOne1, align 8
  store i64 %1, ptr %iPgOne, align 8
  store i32 8, ptr %i, align 4
  %2 = load ptr, ptr %pFile.addr, align 8
  %3 = load ptr, ptr %paf.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ApndFile, ptr %3, i64 1
  %cmp = icmp eq ptr %2, %add.ptr
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.apndWriteMark, ptr noundef @.str.1, i32 noundef 260, ptr noundef @.str.2) #7
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %arraydecay = getelementptr inbounds [25 x i8], ptr %a, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 @.str.3, i64 17, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %5 = load i32, ptr %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %i, align 4
  %cmp2 = icmp sge i32 %dec, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %iPgOne, align 8
  %and = and i64 %6, 255
  %conv4 = trunc i64 %and to i8
  %7 = load i32, ptr %i, align 4
  %add = add nsw i32 17, %7
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [25 x i8], ptr %a, i64 0, i64 %idxprom
  store i8 %conv4, ptr %arrayidx, align 1
  %8 = load i64, ptr %iPgOne, align 8
  %shr = ashr i64 %8, 8
  store i64 %shr, ptr %iPgOne, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %paf.addr, align 8
  %iPgOne5 = getelementptr inbounds %struct.ApndFile, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %iPgOne5, align 8
  %11 = load i64, ptr %iWriteEnd.addr, align 8
  %add6 = add nsw i64 %11, %10
  store i64 %add6, ptr %iWriteEnd.addr, align 8
  %12 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pMethods, align 8
  %xWrite = getelementptr inbounds %struct.sqlite3_io_methods, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %xWrite, align 8
  %15 = load ptr, ptr %pFile.addr, align 8
  %arraydecay7 = getelementptr inbounds [25 x i8], ptr %a, i64 0, i64 0
  %16 = load i64, ptr %iWriteEnd.addr, align 8
  %call = call i32 %14(ptr noundef %15, ptr noundef %arraydecay7, i32 noundef 25, i64 noundef %16)
  store i32 %call, ptr %rc, align 4
  %cmp8 = icmp eq i32 0, %call
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %17 = load i64, ptr %iWriteEnd.addr, align 8
  %18 = load ptr, ptr %paf.addr, align 8
  %iMark = getelementptr inbounds %struct.ApndFile, ptr %18, i32 0, i32 2
  store i64 %17, ptr %iMark, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %19 = load i32, ptr %rc, align 4
  ret i32 %19
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @apndIsAppendvfsDatabase(i64 noundef %sz, ptr noundef %pFile) #0 {
entry:
  %retval = alloca i32, align 4
  %sz.addr = alloca i64, align 8
  %pFile.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zHdr = alloca [16 x i8], align 1
  %iMark = alloca i64, align 8
  store i64 %sz, ptr %sz.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load i64, ptr %sz.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %call = call i64 @apndReadMark(i64 noundef %0, ptr noundef %1)
  store i64 %call, ptr %iMark, align 8
  %2 = load i64, ptr %iMark, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pMethods, align 8
  %xRead = getelementptr inbounds %struct.sqlite3_io_methods, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %xRead, align 8
  %6 = load ptr, ptr %pFile.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], ptr %zHdr, i64 0, i64 0
  %7 = load i64, ptr %iMark, align 8
  %call1 = call i32 %5(ptr noundef %6, ptr noundef %arraydecay, i32 noundef 16, i64 noundef %7)
  store i32 %call1, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 0, %8
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %zHdr, i64 0, i64 0
  %call4 = call i32 @memcmp(ptr noundef %arraydecay3, ptr noundef @apvfsSqliteHdr, i64 noundef 16)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %9 = load i64, ptr %sz.addr, align 8
  %and = and i64 %9, 511
  %cmp7 = icmp eq i64 %and, 25
  br i1 %cmp7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %10 = load i64, ptr %sz.addr, align 8
  %cmp9 = icmp sge i64 %10, 537
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %land.lhs.true8
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true6, %land.lhs.true, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn }

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
