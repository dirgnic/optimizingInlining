; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/cksumvfs.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/cksumvfs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_io_methods = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CksmFile = type { %struct.sqlite3_file, ptr, i8, i8, ptr }
%struct.sqlite3_file = type { ptr }

@.str = private unnamed_addr constant [16 x i8] c"verify_checksum\00", align 1
@__func__.cksmCompute = private unnamed_addr constant [12 x i8] c"cksmCompute\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"cksumvfs.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"nByte>=8\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"(nByte&0x00000007)==0\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nByte<=65536\00", align 1
@cksm_vfs = internal global %struct.sqlite3_vfs { i32 3, i32 0, i32 1024, ptr null, ptr @.str.5, ptr null, ptr @cksmOpen, ptr @cksmDelete, ptr @cksmAccess, ptr @cksmFullPathname, ptr @cksmDlOpen, ptr @cksmDlError, ptr @cksmDlSym, ptr @cksmDlClose, ptr @cksmRandomness, ptr @cksmSleep, ptr @cksmCurrentTime, ptr @cksmGetLastError, ptr @cksmCurrentTimeInt64, ptr @cksmSetSystemCall, ptr @cksmGetSystemCall, ptr @cksmNextSystemCall }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"cksmvfs\00", align 1
@cksm_io_methods = internal constant %struct.sqlite3_io_methods { i32 3, ptr @cksmClose, ptr @cksmRead, ptr @cksmWrite, ptr @cksmTruncate, ptr @cksmSync, ptr @cksmFileSize, ptr @cksmLock, ptr @cksmUnlock, ptr @cksmCheckReservedLock, ptr @cksmFileControl, ptr @cksmSectorSize, ptr @cksmDeviceCharacteristics, ptr @cksmShmMap, ptr @cksmShmLock, ptr @cksmShmBarrier, ptr @cksmShmUnmap, ptr @cksmFetch, ptr @cksmUnfetch }, align 8
@__func__.cksmClose = private unnamed_addr constant [10 x i8] c"cksmClose\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"p->pPartner->pPartner==p\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"SQLite format 3\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ZV-\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"checksum fault offset %lld of \22%s\22\00", align 1
@__func__.cksmFileControl = private unnamed_addr constant [16 x i8] c"cksmFileControl\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"azArg[1]!=0\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"checksum_verification\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"enable%\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"page_size\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"cksm/%z\00", align 1
@__func__.cksmCurrentTimeInt64 = private unnamed_addr constant [21 x i8] c"cksmCurrentTimeInt64\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"pOrig->iVersion>=2\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_cksumvfs_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %pzErrMsg.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %call = call i32 @cksmRegisterFunc(ptr noundef %2, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @cksmRegisterVfs()
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 256, ptr %rc, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %rc, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmRegisterFunc(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_function(ptr noundef %1, ptr noundef @.str, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef @cksmVerifyFunc, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmRegisterVfs() #0 {
entry:
  %retval = alloca i32, align 4
  %rc = alloca i32, align 4
  %pOrig = alloca ptr, align 8
  store i32 0, ptr %rc, align 4
  %call = call ptr @sqlite3_vfs_find(ptr noundef null)
  store ptr %call, ptr %pOrig, align 8
  %0 = load ptr, ptr %pOrig, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pOrig, align 8
  %iVersion = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %iVersion, align 8
  store i32 %2, ptr @cksm_vfs, align 8
  %3 = load ptr, ptr %pOrig, align 8
  store ptr %3, ptr getelementptr inbounds (%struct.sqlite3_vfs, ptr @cksm_vfs, i32 0, i32 5), align 8
  %4 = load ptr, ptr %pOrig, align 8
  %szOsFile = getelementptr inbounds %struct.sqlite3_vfs, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %szOsFile, align 4
  %conv = sext i32 %5 to i64
  %add = add i64 %conv, 32
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, ptr getelementptr inbounds (%struct.sqlite3_vfs, ptr @cksm_vfs, i32 0, i32 1), align 4
  %call2 = call i32 @sqlite3_vfs_register(ptr noundef @cksm_vfs, i32 noundef 1)
  store i32 %call2, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call i32 @sqlite3_auto_extension(ptr noundef @cksmRegisterFunc)
  store i32 %call6, ptr %rc, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %7 = load i32, ptr %rc, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cksmVerifyFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %data = alloca ptr, align 8
  %cksum = alloca [8 x i8], align 1
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_blob(ptr noundef %1)
  store ptr %call, ptr %data, align 8
  %2 = load ptr, ptr %data, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_type(ptr noundef %4)
  %cmp3 = icmp ne i32 %call2, 4
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @sqlite3_value_bytes(ptr noundef %6)
  store i32 %call7, ptr %nByte, align 4
  %7 = load i32, ptr %nByte, align 4
  %cmp8 = icmp slt i32 %7, 512
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %8 = load i32, ptr %nByte, align 4
  %cmp9 = icmp sgt i32 %8, 65536
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %9 = load i32, ptr %nByte, align 4
  %10 = load i32, ptr %nByte, align 4
  %sub = sub nsw i32 %10, 1
  %and = and i32 %9, %sub
  %cmp11 = icmp ne i32 %and, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end5
  br label %return

if.end13:                                         ; preds = %lor.lhs.false10
  %11 = load ptr, ptr %data, align 8
  %12 = load i32, ptr %nByte, align 4
  %sub14 = sub nsw i32 %12, 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %cksum, i64 0, i64 0
  call void @cksmCompute(ptr noundef %11, i32 noundef %sub14, ptr noundef %arraydecay)
  %13 = load ptr, ptr %context.addr, align 8
  %14 = load ptr, ptr %data, align 8
  %15 = load i32, ptr %nByte, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr, i64 -8
  %arraydecay16 = getelementptr inbounds [8 x i8], ptr %cksum, i64 0, i64 0
  %call17 = call i32 @memcmp(ptr noundef %add.ptr15, ptr noundef %arraydecay16, i64 noundef 8)
  %cmp18 = icmp eq i32 %call17, 0
  %conv = zext i1 %cmp18 to i32
  call void @sqlite3_result_int(ptr noundef %13, i32 noundef %conv)
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then4, %if.then
  ret void
}

declare ptr @sqlite3_value_blob(ptr noundef) #1

declare i32 @sqlite3_value_type(ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cksmCompute(ptr noundef %a, i32 noundef %nByte, ptr noundef %aOut) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %aOut.addr = alloca ptr, align 8
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %aData = alloca ptr, align 8
  %aEnd = alloca ptr, align 8
  %x = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %aOut, ptr %aOut.addr, align 8
  store i32 0, ptr %s1, align 4
  store i32 0, ptr %s2, align 4
  %0 = load ptr, ptr %a.addr, align 8
  store ptr %0, ptr %aData, align 8
  %1 = load ptr, ptr %a.addr, align 8
  %2 = load i32, ptr %nByte.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %aEnd, align 8
  store i32 1, ptr %x, align 4
  %3 = load i32, ptr %nByte.addr, align 4
  %cmp = icmp sge i32 %3, 8
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.cksmCompute, ptr noundef @.str.1, i32 noundef 309, ptr noundef @.str.2) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load i32, ptr %nByte.addr, align 4
  %and = and i32 %5, 7
  %cmp1 = icmp eq i32 %and, 0
  %lnot3 = xor i1 %cmp1, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  %conv5 = sext i32 %lnot.ext4 to i64
  %tobool6 = icmp ne i64 %conv5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.cksmCompute, ptr noundef @.str.1, i32 noundef 310, ptr noundef @.str.3) #5
  unreachable

6:                                                ; No predecessors!
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %6
  %7 = load i32, ptr %nByte.addr, align 4
  %cmp10 = icmp sle i32 %7, 65536
  %lnot12 = xor i1 %cmp10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv14 = sext i32 %lnot.ext13 to i64
  %tobool15 = icmp ne i64 %conv14, 0
  br i1 %tobool15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef @__func__.cksmCompute, ptr noundef @.str.1, i32 noundef 311, ptr noundef @.str.4) #5
  unreachable

8:                                                ; No predecessors!
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end9
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %8
  %9 = load i8, ptr %x, align 4
  %conv19 = zext i8 %9 to i32
  %cmp20 = icmp eq i32 1, %conv19
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %10 = load ptr, ptr %aData, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %aData, align 8
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %s2, align 4
  %add = add i32 %11, %12
  %13 = load i32, ptr %s1, align 4
  %add22 = add i32 %13, %add
  store i32 %add22, ptr %s1, align 4
  %14 = load ptr, ptr %aData, align 8
  %incdec.ptr23 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr23, ptr %aData, align 8
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %s1, align 4
  %add24 = add i32 %15, %16
  %17 = load i32, ptr %s2, align 4
  %add25 = add i32 %17, %add24
  store i32 %add25, ptr %s2, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load ptr, ptr %aData, align 8
  %19 = load ptr, ptr %aEnd, align 8
  %cmp26 = icmp ult ptr %18, %19
  br i1 %cmp26, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end

if.else:                                          ; preds = %cond.end18
  br label %do.body28

do.body28:                                        ; preds = %do.cond61, %if.else
  %20 = load ptr, ptr %aData, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %20, i64 0
  %21 = load i32, ptr %arrayidx29, align 4
  %and30 = and i32 %21, 255
  %shl = shl i32 %and30, 24
  %22 = load ptr, ptr %aData, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %22, i64 0
  %23 = load i32, ptr %arrayidx31, align 4
  %and32 = and i32 %23, 65280
  %shl33 = shl i32 %and32, 8
  %add34 = add i32 %shl, %shl33
  %24 = load ptr, ptr %aData, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %24, i64 0
  %25 = load i32, ptr %arrayidx35, align 4
  %and36 = and i32 %25, 16711680
  %shr = lshr i32 %and36, 8
  %add37 = add i32 %add34, %shr
  %26 = load ptr, ptr %aData, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %26, i64 0
  %27 = load i32, ptr %arrayidx38, align 4
  %and39 = and i32 %27, -16777216
  %shr40 = lshr i32 %and39, 24
  %add41 = add i32 %add37, %shr40
  %28 = load i32, ptr %s2, align 4
  %add42 = add i32 %add41, %28
  %29 = load i32, ptr %s1, align 4
  %add43 = add i32 %29, %add42
  store i32 %add43, ptr %s1, align 4
  %30 = load ptr, ptr %aData, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %30, i64 1
  %31 = load i32, ptr %arrayidx44, align 4
  %and45 = and i32 %31, 255
  %shl46 = shl i32 %and45, 24
  %32 = load ptr, ptr %aData, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %32, i64 1
  %33 = load i32, ptr %arrayidx47, align 4
  %and48 = and i32 %33, 65280
  %shl49 = shl i32 %and48, 8
  %add50 = add i32 %shl46, %shl49
  %34 = load ptr, ptr %aData, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %34, i64 1
  %35 = load i32, ptr %arrayidx51, align 4
  %and52 = and i32 %35, 16711680
  %shr53 = lshr i32 %and52, 8
  %add54 = add i32 %add50, %shr53
  %36 = load ptr, ptr %aData, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %36, i64 1
  %37 = load i32, ptr %arrayidx55, align 4
  %and56 = and i32 %37, -16777216
  %shr57 = lshr i32 %and56, 24
  %add58 = add i32 %add54, %shr57
  %38 = load i32, ptr %s1, align 4
  %add59 = add i32 %add58, %38
  %39 = load i32, ptr %s2, align 4
  %add60 = add i32 %39, %add59
  store i32 %add60, ptr %s2, align 4
  %40 = load ptr, ptr %aData, align 8
  %add.ptr = getelementptr inbounds i32, ptr %40, i64 2
  store ptr %add.ptr, ptr %aData, align 8
  br label %do.cond61

do.cond61:                                        ; preds = %do.body28
  %41 = load ptr, ptr %aData, align 8
  %42 = load ptr, ptr %aEnd, align 8
  %cmp62 = icmp ult ptr %41, %42
  br i1 %cmp62, label %do.body28, label %do.end64, !llvm.loop !8

do.end64:                                         ; preds = %do.cond61
  %43 = load i32, ptr %s1, align 4
  %and65 = and i32 %43, 255
  %shl66 = shl i32 %and65, 24
  %44 = load i32, ptr %s1, align 4
  %and67 = and i32 %44, 65280
  %shl68 = shl i32 %and67, 8
  %add69 = add i32 %shl66, %shl68
  %45 = load i32, ptr %s1, align 4
  %and70 = and i32 %45, 16711680
  %shr71 = lshr i32 %and70, 8
  %add72 = add i32 %add69, %shr71
  %46 = load i32, ptr %s1, align 4
  %and73 = and i32 %46, -16777216
  %shr74 = lshr i32 %and73, 24
  %add75 = add i32 %add72, %shr74
  store i32 %add75, ptr %s1, align 4
  %47 = load i32, ptr %s2, align 4
  %and76 = and i32 %47, 255
  %shl77 = shl i32 %and76, 24
  %48 = load i32, ptr %s2, align 4
  %and78 = and i32 %48, 65280
  %shl79 = shl i32 %and78, 8
  %add80 = add i32 %shl77, %shl79
  %49 = load i32, ptr %s2, align 4
  %and81 = and i32 %49, 16711680
  %shr82 = lshr i32 %and81, 8
  %add83 = add i32 %add80, %shr82
  %50 = load i32, ptr %s2, align 4
  %and84 = and i32 %50, -16777216
  %shr85 = lshr i32 %and84, 24
  %add86 = add i32 %add83, %shr85
  store i32 %add86, ptr %s2, align 4
  br label %if.end

if.end:                                           ; preds = %do.end64, %do.end
  %51 = load ptr, ptr %aOut.addr, align 8
  %52 = load ptr, ptr %aOut.addr, align 8
  %53 = call i64 @llvm.objectsize.i64.p0(ptr %52, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %51, ptr noundef %s1, i64 noundef 4, i64 noundef %53) #6
  %54 = load ptr, ptr %aOut.addr, align 8
  %add.ptr87 = getelementptr inbounds i8, ptr %54, i64 4
  %55 = load ptr, ptr %aOut.addr, align 8
  %add.ptr88 = getelementptr inbounds i8, ptr %55, i64 4
  %56 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr88, i1 false, i1 true, i1 false)
  %call89 = call ptr @__memcpy_chk(ptr noundef %add.ptr87, ptr noundef %s2, i64 noundef 4, i64 noundef %56) #6
  ret void
}

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare ptr @sqlite3_vfs_find(ptr noundef) #1

declare i32 @sqlite3_vfs_register(ptr noundef, i32 noundef) #1

declare i32 @sqlite3_auto_extension(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmOpen(ptr noundef %pVfs, ptr noundef %zName, ptr noundef %pFile, i32 noundef %flags, ptr noundef %pOutFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pVfs.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %pFile.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pOutFlags.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pSubFile = alloca ptr, align 8
  %pSubVfs = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %pOutFlags, ptr %pOutFlags.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  store ptr %1, ptr %pSubVfs, align 8
  %2 = load i32, ptr %flags.addr, align 4
  %and = and i32 %2, 256
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pSubVfs, align 8
  %xOpen = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %xOpen, align 8
  %5 = load ptr, ptr %pSubVfs, align 8
  %6 = load ptr, ptr %zName.addr, align 8
  %7 = load ptr, ptr %pFile.addr, align 8
  %8 = load i32, ptr %flags.addr, align 4
  %9 = load ptr, ptr %pOutFlags.addr, align 8
  %call = call i32 %4(ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %pFile.addr, align 8
  store ptr %10, ptr %p, align 8
  %11 = load ptr, ptr %p, align 8
  %12 = load ptr, ptr %p, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %11, i32 noundef 0, i64 noundef 32, i64 noundef %13) #6
  %14 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %14, i64 1
  store ptr %add.ptr, ptr %pSubFile, align 8
  %15 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %15, i32 0, i32 0
  store ptr @cksm_io_methods, ptr %pMethods, align 8
  %16 = load ptr, ptr %pSubVfs, align 8
  %xOpen2 = getelementptr inbounds %struct.sqlite3_vfs, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %xOpen2, align 8
  %18 = load ptr, ptr %pSubVfs, align 8
  %19 = load ptr, ptr %zName.addr, align 8
  %20 = load ptr, ptr %pSubFile, align 8
  %21 = load i32, ptr %flags.addr, align 4
  %22 = load ptr, ptr %pOutFlags.addr, align 8
  %call3 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %22)
  store i32 %call3, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %cksm_open_done

if.end5:                                          ; preds = %if.end
  %24 = load ptr, ptr %zName.addr, align 8
  %25 = load ptr, ptr %p, align 8
  %zFName = getelementptr inbounds %struct.CksmFile, ptr %25, i32 0, i32 1
  store ptr %24, ptr %zFName, align 8
  br label %cksm_open_done

cksm_open_done:                                   ; preds = %if.end5, %if.then4
  %26 = load i32, ptr %rc, align 4
  %tobool6 = icmp ne i32 %26, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %cksm_open_done
  %27 = load ptr, ptr %pFile.addr, align 8
  %pMethods8 = getelementptr inbounds %struct.sqlite3_file, ptr %27, i32 0, i32 0
  store ptr null, ptr %pMethods8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %cksm_open_done
  %28 = load i32, ptr %rc, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmDelete(ptr noundef %pVfs, ptr noundef %zPath, i32 noundef %dirSync) #0 {
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
define internal i32 @cksmAccess(ptr noundef %pVfs, ptr noundef %zPath, i32 noundef %flags, ptr noundef %pResOut) #0 {
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
define internal i32 @cksmFullPathname(ptr noundef %pVfs, ptr noundef %zPath, i32 noundef %nOut, ptr noundef %zOut) #0 {
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
define internal ptr @cksmDlOpen(ptr noundef %pVfs, ptr noundef %zPath) #0 {
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
define internal void @cksmDlError(ptr noundef %pVfs, i32 noundef %nByte, ptr noundef %zErrMsg) #0 {
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
define internal ptr @cksmDlSym(ptr noundef %pVfs, ptr noundef %p, ptr noundef %zSym) #0 {
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
define internal void @cksmDlClose(ptr noundef %pVfs, ptr noundef %pHandle) #0 {
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
define internal i32 @cksmRandomness(ptr noundef %pVfs, i32 noundef %nByte, ptr noundef %zBufOut) #0 {
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
define internal i32 @cksmSleep(ptr noundef %pVfs, i32 noundef %nMicro) #0 {
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
define internal i32 @cksmCurrentTime(ptr noundef %pVfs, ptr noundef %pTimeOut) #0 {
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
define internal i32 @cksmGetLastError(ptr noundef %pVfs, i32 noundef %a, ptr noundef %b) #0 {
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
define internal i32 @cksmCurrentTimeInt64(ptr noundef %pVfs, ptr noundef %p) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pOrig = alloca ptr, align 8
  %rc = alloca i32, align 4
  %r = alloca double, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds %struct.sqlite3_vfs, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pAppData, align 8
  store ptr %1, ptr %pOrig, align 8
  %2 = load ptr, ptr %pOrig, align 8
  %iVersion = getelementptr inbounds %struct.sqlite3_vfs, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %iVersion, align 8
  %cmp = icmp sge i32 %3, 2
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.cksmCurrentTimeInt64, ptr noundef @.str.1, i32 noundef 738, ptr noundef @.str.18) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load ptr, ptr %pOrig, align 8
  %xCurrentTimeInt64 = getelementptr inbounds %struct.sqlite3_vfs, ptr %5, i32 0, i32 18
  %6 = load ptr, ptr %xCurrentTimeInt64, align 8
  %tobool1 = icmp ne ptr %6, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %7 = load ptr, ptr %pOrig, align 8
  %xCurrentTimeInt642 = getelementptr inbounds %struct.sqlite3_vfs, ptr %7, i32 0, i32 18
  %8 = load ptr, ptr %xCurrentTimeInt642, align 8
  %9 = load ptr, ptr %pOrig, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %call = call i32 %8(ptr noundef %9, ptr noundef %10)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  %11 = load ptr, ptr %pOrig, align 8
  %xCurrentTime = getelementptr inbounds %struct.sqlite3_vfs, ptr %11, i32 0, i32 16
  %12 = load ptr, ptr %xCurrentTime, align 8
  %13 = load ptr, ptr %pOrig, align 8
  %call3 = call i32 %12(ptr noundef %13, ptr noundef %r)
  store i32 %call3, ptr %rc, align 4
  %14 = load double, ptr %r, align 8
  %mul = fmul double %14, 8.640000e+07
  %conv4 = fptosi double %mul to i64
  %15 = load ptr, ptr %p.addr, align 8
  store i64 %conv4, ptr %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, ptr %rc, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmSetSystemCall(ptr noundef %pVfs, ptr noundef %zName, ptr noundef %pCall) #0 {
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
define internal ptr @cksmGetSystemCall(ptr noundef %pVfs, ptr noundef %zName) #0 {
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
define internal ptr @cksmNextSystemCall(ptr noundef %pVfs, ptr noundef %zName) #0 {
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
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmClose(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %pPartner = getelementptr inbounds %struct.CksmFile, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pPartner, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %pPartner1 = getelementptr inbounds %struct.CksmFile, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pPartner1, align 8
  %pPartner2 = getelementptr inbounds %struct.CksmFile, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pPartner2, align 8
  %6 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %5, %6
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  call void @__assert_rtn(ptr noundef @__func__.cksmClose, ptr noundef @.str.1, i32 noundef 398, ptr noundef @.str.6) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %7
  %8 = load ptr, ptr %p, align 8
  %pPartner4 = getelementptr inbounds %struct.CksmFile, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pPartner4, align 8
  %pPartner5 = getelementptr inbounds %struct.CksmFile, ptr %9, i32 0, i32 4
  store ptr null, ptr %pPartner5, align 8
  %10 = load ptr, ptr %p, align 8
  %pPartner6 = getelementptr inbounds %struct.CksmFile, ptr %10, i32 0, i32 4
  store ptr null, ptr %pPartner6, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %11 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %11, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %12 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pMethods, align 8
  %xClose = getelementptr inbounds %struct.sqlite3_io_methods, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %xClose, align 8
  %15 = load ptr, ptr %pFile.addr, align 8
  %call = call i32 %14(ptr noundef %15)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmRead(ptr noundef %pFile, ptr noundef %zBuf, i32 noundef %iAmt, i64 noundef %iOfst) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %iAmt.addr = alloca i32, align 4
  %iOfst.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %p = alloca ptr, align 8
  %d = alloca ptr, align 8
  %hasCorrectReserveSize = alloca i8, align 1
  %cksum = alloca [8 x i8], align 1
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 %iAmt, ptr %iAmt.addr, align 4
  store i64 %iOfst, ptr %iOfst.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %1, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %2 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pMethods, align 8
  %xRead = getelementptr inbounds %struct.sqlite3_io_methods, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %xRead, align 8
  %5 = load ptr, ptr %pFile.addr, align 8
  %6 = load ptr, ptr %zBuf.addr, align 8
  %7 = load i32, ptr %iAmt.addr, align 4
  %8 = load i64, ptr %iOfst.addr, align 8
  %call = call i32 %4(ptr noundef %5, ptr noundef %6, i32 noundef %7, i64 noundef %8)
  store i32 %call, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end31

if.then:                                          ; preds = %entry
  %10 = load i64, ptr %iOfst.addr, align 8
  %cmp1 = icmp eq i64 %10, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %11 = load i32, ptr %iAmt.addr, align 4
  %cmp2 = icmp sge i32 %11, 100
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %zBuf.addr, align 8
  %call4 = call i32 @memcmp(ptr noundef %12, ptr noundef @.str.7, i64 noundef 16)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %13 = load ptr, ptr %zBuf.addr, align 8
  %call6 = call i32 @memcmp(ptr noundef %13, ptr noundef @.str.8, i64 noundef 3)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true3
  %14 = load ptr, ptr %zBuf.addr, align 8
  store ptr %14, ptr %d, align 8
  %15 = load ptr, ptr %d, align 8
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 20
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %cmp9 = icmp eq i32 %conv, 8
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = trunc i32 %conv10 to i8
  store i8 %conv11, ptr %hasCorrectReserveSize, align 1
  %17 = load ptr, ptr %p, align 8
  %18 = load i8, ptr %hasCorrectReserveSize, align 1
  %conv12 = sext i8 %18 to i32
  call void @cksmSetFlags(ptr noundef %17, i32 noundef %conv12)
  br label %if.end

if.end:                                           ; preds = %if.then8, %lor.lhs.false, %land.lhs.true, %if.then
  %19 = load i32, ptr %iAmt.addr, align 4
  %cmp13 = icmp sge i32 %19, 512
  br i1 %cmp13, label %land.lhs.true15, label %if.end30

land.lhs.true15:                                  ; preds = %if.end
  %20 = load i32, ptr %iAmt.addr, align 4
  %21 = load i32, ptr %iAmt.addr, align 4
  %sub = sub nsw i32 %21, 1
  %and = and i32 %20, %sub
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end30

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %22 = load ptr, ptr %p, align 8
  %verifyCksm = getelementptr inbounds %struct.CksmFile, ptr %22, i32 0, i32 3
  %23 = load i8, ptr %verifyCksm, align 1
  %conv19 = sext i8 %23 to i32
  %tobool = icmp ne i32 %conv19, 0
  br i1 %tobool, label %if.then20, label %if.end30

if.then20:                                        ; preds = %land.lhs.true18
  %24 = load ptr, ptr %zBuf.addr, align 8
  %25 = load i32, ptr %iAmt.addr, align 4
  %sub21 = sub nsw i32 %25, 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %cksum, i64 0, i64 0
  call void @cksmCompute(ptr noundef %24, i32 noundef %sub21, ptr noundef %arraydecay)
  %26 = load ptr, ptr %zBuf.addr, align 8
  %27 = load i32, ptr %iAmt.addr, align 4
  %idx.ext = sext i32 %27 to i64
  %add.ptr22 = getelementptr inbounds i8, ptr %26, i64 %idx.ext
  %add.ptr23 = getelementptr inbounds i8, ptr %add.ptr22, i64 -8
  %arraydecay24 = getelementptr inbounds [8 x i8], ptr %cksum, i64 0, i64 0
  %call25 = call i32 @memcmp(ptr noundef %add.ptr23, ptr noundef %arraydecay24, i64 noundef 8)
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then20
  %28 = load i64, ptr %iOfst.addr, align 8
  %29 = load ptr, ptr %p, align 8
  %zFName = getelementptr inbounds %struct.CksmFile, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %zFName, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 8202, ptr noundef @.str.9, i64 noundef %28, ptr noundef %30)
  store i32 8202, ptr %rc, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then20
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %land.lhs.true18, %land.lhs.true15, %if.end
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %entry
  %31 = load i32, ptr %rc, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmWrite(ptr noundef %pFile, ptr noundef %zBuf, i32 noundef %iAmt, i64 noundef %iOfst) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %iAmt.addr = alloca i32, align 4
  %iOfst.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %d = alloca ptr, align 8
  %hasCorrectReserveSize = alloca i8, align 1
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 %iAmt, ptr %iAmt.addr, align 4
  store i64 %iOfst, ptr %iOfst.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %1, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %2 = load i64, ptr %iOfst.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %iAmt.addr, align 4
  %cmp1 = icmp sge i32 %3, 100
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %zBuf.addr, align 8
  %call = call i32 @memcmp(ptr noundef %4, ptr noundef @.str.7, i64 noundef 16)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %5 = load ptr, ptr %zBuf.addr, align 8
  %call4 = call i32 @memcmp(ptr noundef %5, ptr noundef @.str.8, i64 noundef 3)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true2
  %6 = load ptr, ptr %zBuf.addr, align 8
  store ptr %6, ptr %d, align 8
  %7 = load ptr, ptr %d, align 8
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 20
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 8
  %conv7 = zext i1 %cmp6 to i32
  %conv8 = trunc i32 %conv7 to i8
  store i8 %conv8, ptr %hasCorrectReserveSize, align 1
  %9 = load ptr, ptr %p, align 8
  %10 = load i8, ptr %hasCorrectReserveSize, align 1
  %conv9 = sext i8 %10 to i32
  call void @cksmSetFlags(ptr noundef %9, i32 noundef %conv9)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true, %entry
  %11 = load i32, ptr %iAmt.addr, align 4
  %cmp10 = icmp sge i32 %11, 512
  br i1 %cmp10, label %land.lhs.true12, label %if.end17

land.lhs.true12:                                  ; preds = %if.end
  %12 = load ptr, ptr %p, align 8
  %computeCksm = getelementptr inbounds %struct.CksmFile, ptr %12, i32 0, i32 2
  %13 = load i8, ptr %computeCksm, align 8
  %conv13 = sext i8 %13 to i32
  %tobool = icmp ne i32 %conv13, 0
  br i1 %tobool, label %if.then14, label %if.end17

if.then14:                                        ; preds = %land.lhs.true12
  %14 = load ptr, ptr %zBuf.addr, align 8
  %15 = load i32, ptr %iAmt.addr, align 4
  %sub = sub nsw i32 %15, 8
  %16 = load ptr, ptr %zBuf.addr, align 8
  %17 = load i32, ptr %iAmt.addr, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr15 = getelementptr inbounds i8, ptr %16, i64 %idx.ext
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr15, i64 -8
  call void @cksmCompute(ptr noundef %14, i32 noundef %sub, ptr noundef %add.ptr16)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true12, %if.end
  %18 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pMethods, align 8
  %xWrite = getelementptr inbounds %struct.sqlite3_io_methods, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %xWrite, align 8
  %21 = load ptr, ptr %pFile.addr, align 8
  %22 = load ptr, ptr %zBuf.addr, align 8
  %23 = load i32, ptr %iAmt.addr, align 4
  %24 = load i64, ptr %iOfst.addr, align 8
  %call18 = call i32 %20(ptr noundef %21, ptr noundef %22, i32 noundef %23, i64 noundef %24)
  ret i32 %call18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmTruncate(ptr noundef %pFile, i64 noundef %size) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xTruncate = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %xTruncate, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %5 = load i64, ptr %size.addr, align 8
  %call = call i32 %3(ptr noundef %4, i64 noundef %5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmSync(ptr noundef %pFile, i32 noundef %flags) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
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
define internal i32 @cksmFileSize(ptr noundef %pFile, ptr noundef %pSize) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %pSize.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %pSize, ptr %pSize.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %1, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %2 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pMethods, align 8
  %xFileSize = getelementptr inbounds %struct.sqlite3_io_methods, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %xFileSize, align 8
  %5 = load ptr, ptr %pFile.addr, align 8
  %6 = load ptr, ptr %pSize.addr, align 8
  %call = call i32 %4(ptr noundef %5, ptr noundef %6)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmLock(ptr noundef %pFile, i32 noundef %eLock) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %eLock.addr = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %eLock, ptr %eLock.addr, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
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
define internal i32 @cksmUnlock(ptr noundef %pFile, i32 noundef %eLock) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %eLock.addr = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %eLock, ptr %eLock.addr, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
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
define internal i32 @cksmCheckReservedLock(ptr noundef %pFile, ptr noundef %pResOut) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %pResOut.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %pResOut, ptr %pResOut.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
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
define internal i32 @cksmFileControl(ptr noundef %pFile, i32 noundef %op, ptr noundef %pArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pFile.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pArg.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %p = alloca ptr, align 8
  %azArg = alloca ptr, align 8
  %zArg = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %1, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %2 = load i32, ptr %op.addr, align 4
  %cmp = icmp eq i32 %2, 14
  br i1 %cmp, label %if.then, label %if.end58

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pArg.addr, align 8
  store ptr %3, ptr %azArg, align 8
  %4 = load ptr, ptr %azArg, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx, align 8
  %cmp1 = icmp ne ptr %5, null
  %lnot = xor i1 %cmp1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  call void @__assert_rtn(ptr noundef @__func__.cksmFileControl, ptr noundef @.str.1, i32 noundef 552, ptr noundef @.str.10) #5
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %6
  %7 = load ptr, ptr %azArg, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx2, align 8
  %call = call i32 @sqlite3_stricmp(ptr noundef %8, ptr noundef @.str.11)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then5, label %if.else42

if.then5:                                         ; preds = %cond.end
  %9 = load ptr, ptr %azArg, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 2
  %10 = load ptr, ptr %arrayidx6, align 8
  store ptr %10, ptr %zArg, align 8
  %11 = load ptr, ptr %zArg, align 8
  %cmp7 = icmp ne ptr %11, null
  br i1 %cmp7, label %if.then9, label %if.end37

if.then9:                                         ; preds = %if.then5
  %12 = load ptr, ptr %zArg, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp sge i32 %conv11, 49
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then9
  %14 = load ptr, ptr %zArg, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp sle i32 %conv15, 57
  br i1 %cmp16, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then9
  %16 = load ptr, ptr %zArg, align 8
  %call18 = call i32 @sqlite3_strlike(ptr noundef @.str.12, ptr noundef %16, i32 noundef 0)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then29, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %17 = load ptr, ptr %zArg, align 8
  %call22 = call i32 @sqlite3_stricmp(ptr noundef @.str.13, ptr noundef %17)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then29, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %18 = load ptr, ptr %zArg, align 8
  %call26 = call i32 @sqlite3_stricmp(ptr noundef @.str.14, ptr noundef %18)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false, %land.lhs.true
  %19 = load ptr, ptr %p, align 8
  %computeCksm = getelementptr inbounds %struct.CksmFile, ptr %19, i32 0, i32 2
  %20 = load i8, ptr %computeCksm, align 8
  %21 = load ptr, ptr %p, align 8
  %verifyCksm = getelementptr inbounds %struct.CksmFile, ptr %21, i32 0, i32 3
  store i8 %20, ptr %verifyCksm, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false25
  %22 = load ptr, ptr %p, align 8
  %verifyCksm30 = getelementptr inbounds %struct.CksmFile, ptr %22, i32 0, i32 3
  store i8 0, ptr %verifyCksm30, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then29
  %23 = load ptr, ptr %p, align 8
  %pPartner = getelementptr inbounds %struct.CksmFile, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pPartner, align 8
  %tobool31 = icmp ne ptr %24, null
  br i1 %tobool31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end
  %25 = load ptr, ptr %p, align 8
  %verifyCksm33 = getelementptr inbounds %struct.CksmFile, ptr %25, i32 0, i32 3
  %26 = load i8, ptr %verifyCksm33, align 1
  %27 = load ptr, ptr %p, align 8
  %pPartner34 = getelementptr inbounds %struct.CksmFile, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %pPartner34, align 8
  %verifyCksm35 = getelementptr inbounds %struct.CksmFile, ptr %28, i32 0, i32 3
  store i8 %26, ptr %verifyCksm35, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then5
  %29 = load ptr, ptr %p, align 8
  %verifyCksm38 = getelementptr inbounds %struct.CksmFile, ptr %29, i32 0, i32 3
  %30 = load i8, ptr %verifyCksm38, align 1
  %conv39 = sext i8 %30 to i32
  %call40 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.15, i32 noundef %conv39)
  %31 = load ptr, ptr %azArg, align 8
  %arrayidx41 = getelementptr inbounds ptr, ptr %31, i64 0
  store ptr %call40, ptr %arrayidx41, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.else42:                                        ; preds = %cond.end
  %32 = load ptr, ptr %p, align 8
  %computeCksm43 = getelementptr inbounds %struct.CksmFile, ptr %32, i32 0, i32 2
  %33 = load i8, ptr %computeCksm43, align 8
  %conv44 = sext i8 %33 to i32
  %tobool45 = icmp ne i32 %conv44, 0
  br i1 %tobool45, label %land.lhs.true46, label %if.end56

land.lhs.true46:                                  ; preds = %if.else42
  %34 = load ptr, ptr %azArg, align 8
  %arrayidx47 = getelementptr inbounds ptr, ptr %34, i64 2
  %35 = load ptr, ptr %arrayidx47, align 8
  %cmp48 = icmp ne ptr %35, null
  br i1 %cmp48, label %land.lhs.true50, label %if.end56

land.lhs.true50:                                  ; preds = %land.lhs.true46
  %36 = load ptr, ptr %azArg, align 8
  %arrayidx51 = getelementptr inbounds ptr, ptr %36, i64 1
  %37 = load ptr, ptr %arrayidx51, align 8
  %call52 = call i32 @sqlite3_stricmp(ptr noundef %37, ptr noundef @.str.16)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true50
  store i32 0, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %land.lhs.true50, %land.lhs.true46, %if.else42
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %entry
  %38 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %pMethods, align 8
  %xFileControl = getelementptr inbounds %struct.sqlite3_io_methods, ptr %39, i32 0, i32 10
  %40 = load ptr, ptr %xFileControl, align 8
  %41 = load ptr, ptr %pFile.addr, align 8
  %42 = load i32, ptr %op.addr, align 4
  %43 = load ptr, ptr %pArg.addr, align 8
  %call59 = call i32 %40(ptr noundef %41, i32 noundef %42, ptr noundef %43)
  store i32 %call59, ptr %rc, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp60 = icmp eq i32 %44, 0
  br i1 %cmp60, label %land.lhs.true62, label %if.end67

land.lhs.true62:                                  ; preds = %if.end58
  %45 = load i32, ptr %op.addr, align 4
  %cmp63 = icmp eq i32 %45, 12
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %land.lhs.true62
  %46 = load ptr, ptr %pArg.addr, align 8
  %47 = load ptr, ptr %46, align 8
  %call66 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.17, ptr noundef %47)
  %48 = load ptr, ptr %pArg.addr, align 8
  store ptr %call66, ptr %48, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %land.lhs.true62, %if.end58
  %49 = load i32, ptr %rc, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end67, %if.then55, %if.end37
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmSectorSize(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
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
define internal i32 @cksmDeviceCharacteristics(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %devchar = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 0, ptr %devchar, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %xDeviceCharacteristics = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %xDeviceCharacteristics, align 8
  %4 = load ptr, ptr %pFile.addr, align 8
  %call = call i32 %3(ptr noundef %4)
  store i32 %call, ptr %devchar, align 4
  %5 = load i32, ptr %devchar, align 4
  %and = and i32 %5, -32769
  ret i32 %and
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmShmMap(ptr noundef %pFile, i32 noundef %iPg, i32 noundef %pgsz, i32 noundef %bExtend, ptr noundef %pp) #0 {
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
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
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
define internal i32 @cksmShmLock(ptr noundef %pFile, i32 noundef %offset, i32 noundef %n, i32 noundef %flags) #0 {
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
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
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
define internal void @cksmShmBarrier(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
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
define internal i32 @cksmShmUnmap(ptr noundef %pFile, i32 noundef %deleteFlag) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %deleteFlag.addr = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %deleteFlag, ptr %deleteFlag.addr, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
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
define internal i32 @cksmFetch(ptr noundef %pFile, i64 noundef %iOfst, i32 noundef %iAmt, ptr noundef %pp) #0 {
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
  %computeCksm = getelementptr inbounds %struct.CksmFile, ptr %1, i32 0, i32 2
  %2 = load i8, ptr %computeCksm, align 8
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pp.addr, align 8
  store ptr null, ptr %3, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %4, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %5 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pMethods, align 8
  %iVersion = getelementptr inbounds %struct.sqlite3_io_methods, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %iVersion, align 8
  %cmp = icmp sgt i32 %7, 2
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %pFile.addr, align 8
  %pMethods1 = getelementptr inbounds %struct.sqlite3_file, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pMethods1, align 8
  %xFetch = getelementptr inbounds %struct.sqlite3_io_methods, ptr %9, i32 0, i32 17
  %10 = load ptr, ptr %xFetch, align 8
  %tobool2 = icmp ne ptr %10, null
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %pFile.addr, align 8
  %pMethods4 = getelementptr inbounds %struct.sqlite3_file, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pMethods4, align 8
  %xFetch5 = getelementptr inbounds %struct.sqlite3_io_methods, ptr %12, i32 0, i32 17
  %13 = load ptr, ptr %xFetch5, align 8
  %14 = load ptr, ptr %pFile.addr, align 8
  %15 = load i64, ptr %iOfst.addr, align 8
  %16 = load i32, ptr %iAmt.addr, align 4
  %17 = load ptr, ptr %pp.addr, align 8
  %call = call i32 %13(ptr noundef %14, i64 noundef %15, i32 noundef %16, ptr noundef %17)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %18 = load ptr, ptr %pp.addr, align 8
  store ptr null, ptr %18, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cksmUnfetch(ptr noundef %pFile, i64 noundef %iOfst, ptr noundef %pPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pFile.addr = alloca ptr, align 8
  %iOfst.addr = alloca i64, align 8
  %pPage.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %iOfst, ptr %iOfst.addr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %add.ptr = getelementptr inbounds %struct.CksmFile, ptr %0, i64 1
  store ptr %add.ptr, ptr %pFile.addr, align 8
  %1 = load ptr, ptr %pFile.addr, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %iVersion = getelementptr inbounds %struct.sqlite3_io_methods, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %iVersion, align 8
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pFile.addr, align 8
  %pMethods1 = getelementptr inbounds %struct.sqlite3_file, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pMethods1, align 8
  %xUnfetch = getelementptr inbounds %struct.sqlite3_io_methods, ptr %5, i32 0, i32 18
  %6 = load ptr, ptr %xUnfetch, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %pFile.addr, align 8
  %pMethods2 = getelementptr inbounds %struct.sqlite3_file, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pMethods2, align 8
  %xUnfetch3 = getelementptr inbounds %struct.sqlite3_io_methods, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %xUnfetch3, align 8
  %10 = load ptr, ptr %pFile.addr, align 8
  %11 = load i64, ptr %iOfst.addr, align 8
  %12 = load ptr, ptr %pPage.addr, align 8
  %call = call i32 %9(ptr noundef %10, i64 noundef %11, ptr noundef %12)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cksmSetFlags(ptr noundef %p, i32 noundef %hasCorrectReserveSize) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %hasCorrectReserveSize.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %hasCorrectReserveSize, ptr %hasCorrectReserveSize.addr, align 4
  %0 = load i32, ptr %hasCorrectReserveSize.addr, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %computeCksm = getelementptr inbounds %struct.CksmFile, ptr %1, i32 0, i32 2
  %2 = load i8, ptr %computeCksm, align 8
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %0, %conv
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %hasCorrectReserveSize.addr, align 4
  %conv2 = trunc i32 %3 to i8
  %4 = load ptr, ptr %p.addr, align 8
  %verifyCksm = getelementptr inbounds %struct.CksmFile, ptr %4, i32 0, i32 3
  store i8 %conv2, ptr %verifyCksm, align 1
  %5 = load ptr, ptr %p.addr, align 8
  %computeCksm3 = getelementptr inbounds %struct.CksmFile, ptr %5, i32 0, i32 2
  store i8 %conv2, ptr %computeCksm3, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %pPartner = getelementptr inbounds %struct.CksmFile, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pPartner, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %8 = load i32, ptr %hasCorrectReserveSize.addr, align 4
  %conv5 = trunc i32 %8 to i8
  %9 = load ptr, ptr %p.addr, align 8
  %pPartner6 = getelementptr inbounds %struct.CksmFile, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pPartner6, align 8
  %verifyCksm7 = getelementptr inbounds %struct.CksmFile, ptr %10, i32 0, i32 3
  store i8 %conv5, ptr %verifyCksm7, align 1
  %11 = load i32, ptr %hasCorrectReserveSize.addr, align 4
  %conv8 = trunc i32 %11 to i8
  %12 = load ptr, ptr %p.addr, align 8
  %pPartner9 = getelementptr inbounds %struct.CksmFile, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %pPartner9, align 8
  %computeCksm10 = getelementptr inbounds %struct.CksmFile, ptr %13, i32 0, i32 2
  store i8 %conv8, ptr %computeCksm10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  ret void
}

declare void @sqlite3_log(i32 noundef, ptr noundef, ...) #1

declare i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #1

declare i32 @sqlite3_strlike(ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold noreturn }
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
