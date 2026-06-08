; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_zlib_contrib_minizip_minizip.prepared.ll'
source_filename = "./source_snapshot/public_repos/zlib/contrib/minizip/minizip.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.zip_fileinfo = type { %struct.tm_zip_s, i64, i64, i64 }
%struct.tm_zip_s = type { i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [25 x i8] c"Error allocating memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"The file %s exists. Overwrite ? [y]es, [n]o, [a]ppend : \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%1s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"error opening %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"creating %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"error in opening %s in zipfile\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"error in opening %s for reading\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"error in reading %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"error in writing %s in the zipfile\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"error in closing %s in the zipfile\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"error in closing %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"MiniZip 1.1, demo of zLib + MiniZip64 package, written by Gilles Vollant\0A\00", align 1
@.str.14 = private unnamed_addr constant [72 x i8] c"more info on MiniZip at https://www.winimage.com/zLibDll/minizip.html\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [259 x i8] c"Usage : minizip [-o] [-a] [-0 to -9] [-p password] [-j] file.zip [files_to_add]\0A\0A  -o  Overwrite existing file.zip\0A  -a  Append to existing file.zip\0A  -0  Store only\0A  -1  Compress faster\0A  -9  Compress better\0A\0A  -j  exclude path. store only the file name.\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"file %s crc %lx\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"File : %s is %lu bytes\0A\00", align 1
@str = private unnamed_addr constant [73 x i8] c"MiniZip 1.1, demo of zLib + MiniZip64 package, written by Gilles Vollant\00", align 1
@str.1 = private unnamed_addr constant [71 x i8] c"more info on MiniZip at https://www.winimage.com/zLibDll/minizip.html\0A\00", align 1
@str.2 = private unnamed_addr constant [258 x i8] c"Usage : minizip [-o] [-a] [-0 to -9] [-p password] [-j] file.zip [files_to_add]\0A\0A  -o  Overwrite existing file.zip\0A  -a  Append to existing file.zip\0A  -0  Store only\0A  -1  Compress faster\0A  -9  Compress better\0A\0A  -j  exclude path. store only the file name.\0A\00", align 1
@str.3 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@str.4 = private unnamed_addr constant [258 x i8] c"Usage : minizip [-o] [-a] [-0 to -9] [-p password] [-j] file.zip [files_to_add]\0A\0A  -o  Overwrite existing file.zip\0A  -a  Append to existing file.zip\0A  -0  Store only\0A  -1  Compress faster\0A  -9  Compress better\0A\0A  -j  exclude path. store only the file name.\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %filename.addr.i23 = alloca ptr, align 8
  %largeFile.i = alloca i32, align 4
  %pFile.i = alloca ptr, align 8
  %filenameinzip.addr.i = alloca ptr, align 8
  %buf.addr.i = alloca ptr, align 8
  %size_buf.addr.i = alloca i64, align 8
  %result_crc.addr.i = alloca ptr, align 8
  %calculate_crc.i = alloca i64, align 8
  %err.i = alloca i32, align 4
  %fin.i = alloca ptr, align 8
  %size_read.i = alloca i64, align 8
  %f.addr.i = alloca ptr, align 8
  %tmzip.addr.i = alloca ptr, align 8
  %s.i = alloca %struct.stat, align 8
  %filedate.i = alloca ptr, align 8
  %tm_t.i = alloca i64, align 8
  %name.i = alloca [257 x i8], align 1
  %len.i = alloca i64, align 8
  %ftestexist.i5 = alloca ptr, align 8
  %ret.i6 = alloca i32, align 4
  %ftestexist.i = alloca ptr, align 8
  %ret.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %opt_overwrite = alloca i32, align 4
  %opt_compress_level = alloca i32, align 4
  %opt_exclude_path = alloca i32, align 4
  %zipfilenamearg = alloca i32, align 4
  %filename_try = alloca [272 x i8], align 1
  %zipok = alloca i32, align 4
  %err = alloca i32, align 4
  %size_buf = alloca i64, align 8
  %buf = alloca ptr, align 8
  %password = alloca ptr, align 8
  %p = alloca ptr, align 8
  %c = alloca i8, align 1
  %len = alloca i32, align 4
  %dot_found = alloca i32, align 4
  %rep = alloca i8, align 1
  %answer = alloca [128 x i8], align 1
  %zf = alloca ptr, align 8
  %fin = alloca ptr, align 8
  %size_read = alloca i64, align 8
  %filenameinzip = alloca ptr, align 8
  %savefilenameinzip = alloca ptr, align 8
  %zi = alloca %struct.zip_fileinfo, align 8
  %crcFile = alloca i64, align 8
  %zip64 = alloca i32, align 4
  %tmpptr = alloca ptr, align 8
  %lastslash = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %opt_overwrite, align 4
  store i32 -1, ptr %opt_compress_level, align 4
  store i32 0, ptr %opt_exclude_path, align 4
  store i32 0, ptr %zipfilenamearg, align 4
  store i32 0, ptr %err, align 4
  store i64 0, ptr %size_buf, align 8
  store ptr null, ptr %buf, align 8
  store ptr null, ptr %password, align 8
  %puts = call i32 @puts(ptr nonnull @str)
  %puts34 = call i32 @puts(ptr nonnull @str.1)
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  %puts43 = call i32 @puts(ptr nonnull @str.4)
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %entry, %for.inc
  %storemerge = phi i32 [ %inc65, %for.inc ], [ 1, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp slt i32 %storemerge, %1
  br i1 %cmp1, label %for.body, label %if.end66

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load i8, ptr %4, align 1
  %cmp2 = icmp eq i8 %5, 45
  br i1 %cmp2, label %if.then4, label %if.else59

if.then4:                                         ; preds = %for.body
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 %idxprom5
  %8 = load ptr, ptr %arrayidx6, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %add.ptr, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end58, %if.then4
  %9 = load ptr, ptr %p, align 8
  %10 = load i8, ptr %9, align 1
  %cmp8.not = icmp eq i8 %10, 0
  br i1 %cmp8.not, label %for.inc, label %while.body

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr %c, align 1
  %cmp11 = icmp eq i8 %12, 111
  %13 = load i8, ptr %c, align 1
  %cmp14 = icmp eq i8 %13, 79
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp14
  br i1 %or.cond, label %if.then16, label %if.end

if.then16:                                        ; preds = %while.body
  store i32 1, ptr %opt_overwrite, align 4
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then16
  %14 = load i8, ptr %c, align 1
  %cmp18 = icmp eq i8 %14, 97
  %15 = load i8, ptr %c, align 1
  %cmp22 = icmp eq i8 %15, 65
  %or.cond44 = select i1 %cmp18, i1 true, i1 %cmp22
  br i1 %or.cond44, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end
  store i32 2, ptr %opt_overwrite, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then24
  %16 = load i8, ptr %c, align 1
  %cmp27 = icmp sgt i8 %16, 47
  %17 = load i8, ptr %c, align 1
  %cmp30 = icmp slt i8 %17, 58
  %or.cond45 = select i1 %cmp27, i1 %cmp30, i1 false
  br i1 %or.cond45, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end25
  %18 = load i8, ptr %c, align 1
  %conv33 = sext i8 %18 to i32
  %sub = add nsw i32 %conv33, -48
  store i32 %sub, ptr %opt_compress_level, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end25
  %19 = load i8, ptr %c, align 1
  %cmp36 = icmp eq i8 %19, 106
  %20 = load i8, ptr %c, align 1
  %cmp40 = icmp eq i8 %20, 74
  %or.cond46 = select i1 %cmp36, i1 true, i1 %cmp40
  br i1 %or.cond46, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end34
  store i32 1, ptr %opt_exclude_path, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end34, %if.then42
  %21 = load i8, ptr %c, align 1
  %cmp45 = icmp eq i8 %21, 112
  %22 = load i8, ptr %c, align 1
  %cmp49 = icmp eq i8 %22, 80
  %or.cond47 = select i1 %cmp45, i1 true, i1 %cmp49
  br i1 %or.cond47, label %land.lhs.true51, label %if.end58

land.lhs.true51:                                  ; preds = %if.end43
  %23 = load i32, ptr %i, align 4
  %add = add nsw i32 %23, 1
  %24 = load i32, ptr %argc.addr, align 4
  %cmp52 = icmp slt i32 %add, %24
  br i1 %cmp52, label %if.then54, label %if.end58

if.then54:                                        ; preds = %land.lhs.true51
  %25 = load ptr, ptr %argv.addr, align 8
  %26 = load i32, ptr %i, align 4
  %add55 = add nsw i32 %26, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds ptr, ptr %25, i64 %idxprom56
  %27 = load ptr, ptr %arrayidx57, align 8
  store ptr %27, ptr %password, align 8
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end43, %if.then54, %land.lhs.true51
  br label %while.cond, !llvm.loop !6

if.else59:                                        ; preds = %for.body
  %28 = load i32, ptr %zipfilenamearg, align 4
  %cmp60 = icmp eq i32 %28, 0
  br i1 %cmp60, label %if.then62, label %for.inc

if.then62:                                        ; preds = %if.else59
  %29 = load i32, ptr %i, align 4
  store i32 %29, ptr %zipfilenamearg, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.cond, %if.then62, %if.else59
  %30 = load i32, ptr %i, align 4
  %inc65 = add nsw i32 %30, 1
  br label %for.cond, !llvm.loop !8

if.end66:                                         ; preds = %for.cond
  store i64 16384, ptr %size_buf, align 8
  %call = call dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #8
  store ptr %call, ptr %buf, align 8
  %cmp67 = icmp eq ptr %call, null
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  %puts42 = call i32 @puts(ptr nonnull @str.3)
  store i32 -104, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.end66
  %31 = load i32, ptr %zipfilenamearg, align 4
  %cmp72 = icmp eq i32 %31, 0
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.end71
  store i32 0, ptr %zipok, align 4
  br label %if.end165

if.else75:                                        ; preds = %if.end71
  store i32 0, ptr %dot_found, align 4
  store i32 1, ptr %zipok, align 4
  %32 = load ptr, ptr %argv.addr, align 8
  %33 = load i32, ptr %zipfilenamearg, align 4
  %idxprom76 = sext i32 %33 to i64
  %arrayidx77 = getelementptr inbounds ptr, ptr %32, i64 %idxprom76
  %34 = load ptr, ptr %arrayidx77, align 8
  %strncpy = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %filename_try, ptr noundef nonnull dereferenceable(1) %34, i64 255)
  %arrayidx79 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 256
  store i8 0, ptr %arrayidx79, align 1
  %call81 = call i64 @strlen(ptr noundef nonnull %filename_try) #9
  %conv82 = trunc i64 %call81 to i32
  store i32 %conv82, ptr %len, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc94, %if.else75
  %storemerge35 = phi i32 [ 0, %if.else75 ], [ %inc95, %for.inc94 ]
  store i32 %storemerge35, ptr %i, align 4
  %35 = load i32, ptr %len, align 4
  %cmp84 = icmp slt i32 %storemerge35, %35
  br i1 %cmp84, label %for.body86, label %for.end96

for.body86:                                       ; preds = %for.cond83
  %36 = load i32, ptr %i, align 4
  %idxprom87 = sext i32 %36 to i64
  %arrayidx88 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 %idxprom87
  %37 = load i8, ptr %arrayidx88, align 1
  %cmp90 = icmp eq i8 %37, 46
  br i1 %cmp90, label %if.then92, label %for.inc94

if.then92:                                        ; preds = %for.body86
  store i32 1, ptr %dot_found, align 4
  br label %for.inc94

for.inc94:                                        ; preds = %for.body86, %if.then92
  %38 = load i32, ptr %i, align 4
  %inc95 = add nsw i32 %38, 1
  br label %for.cond83, !llvm.loop !9

for.end96:                                        ; preds = %for.cond83
  %39 = load i32, ptr %dot_found, align 4
  %cmp97 = icmp eq i32 %39, 0
  br i1 %cmp97, label %if.then99, label %if.end102

if.then99:                                        ; preds = %for.end96
  %call101 = call ptr @__strcat_chk(ptr noundef nonnull %filename_try, ptr noundef nonnull @.str.1, i64 noundef 272) #9
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %for.end96
  %40 = load i32, ptr %opt_overwrite, align 4
  %cmp103 = icmp eq i32 %40, 2
  br i1 %cmp103, label %if.then105, label %if.else112

if.then105:                                       ; preds = %if.end102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ftestexist.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i)
  store i32 1, ptr %ret.i, align 4
  %call.i2 = call ptr @"\01_fopen"(ptr noundef nonnull %filename_try, ptr noundef nonnull @.str.7) #9
  store ptr %call.i2, ptr %ftestexist.i, align 8
  %cmp.i = icmp eq ptr %call.i2, null
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then105
  store i32 0, ptr %ret.i, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_2.exit

if.else.i:                                        ; preds = %if.then105
  %41 = load ptr, ptr %ftestexist.i, align 8
  %call1.i3 = call i32 @fclose(ptr noundef %41) #9
  br label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_2.exit

pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_2.exit: ; preds = %if.then.i, %if.else.i
  %42 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ftestexist.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i)
  %cmp108 = icmp eq i32 %42, 0
  br i1 %cmp108, label %if.then110, label %if.end165

if.then110:                                       ; preds = %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_2.exit
  store i32 1, ptr %opt_overwrite, align 4
  br label %if.end165

if.else112:                                       ; preds = %if.end102
  %43 = load i32, ptr %opt_overwrite, align 4
  %cmp113 = icmp eq i32 %43, 0
  br i1 %cmp113, label %if.then115, label %if.end165

if.then115:                                       ; preds = %if.else112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ftestexist.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i6)
  store i32 1, ptr %ret.i6, align 4
  %call.i7 = call ptr @"\01_fopen"(ptr noundef nonnull %filename_try, ptr noundef nonnull @.str.7) #9
  store ptr %call.i7, ptr %ftestexist.i5, align 8
  %cmp.i8 = icmp eq ptr %call.i7, null
  br i1 %cmp.i8, label %if.then.i9, label %if.else.i11

if.then.i9:                                       ; preds = %if.then115
  store i32 0, ptr %ret.i6, align 4
  br label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_3.exit

if.else.i11:                                      ; preds = %if.then115
  %44 = load ptr, ptr %ftestexist.i5, align 8
  %call1.i10 = call i32 @fclose(ptr noundef %44) #9
  br label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_3.exit

pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_3.exit: ; preds = %if.then.i9, %if.else.i11
  %45 = load i32, ptr %ret.i6, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ftestexist.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i6)
  %cmp118.not = icmp eq i32 %45, 0
  br i1 %cmp118.not, label %if.end165, label %if.then120

if.then120:                                       ; preds = %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_3.exit
  store i8 0, ptr %rep, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then120
  %call122 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef nonnull %filename_try) #9
  %call124 = call i32 (ptr, ...) @scanf(ptr noundef nonnull @.str.3, ptr noundef nonnull %answer) #9
  %cmp125.not = icmp eq i32 %call124, 1
  br i1 %cmp125.not, label %if.end128, label %if.then127

if.then127:                                       ; preds = %do.body
  call void @exit(i32 noundef 1) #10
  unreachable

if.end128:                                        ; preds = %do.body
  %46 = load i8, ptr %answer, align 1
  store i8 %46, ptr %rep, align 1
  %cmp131 = icmp sgt i8 %46, 96
  %47 = load i8, ptr %rep, align 1
  %cmp135 = icmp slt i8 %47, 123
  %or.cond48 = select i1 %cmp131, i1 %cmp135, i1 false
  br i1 %or.cond48, label %if.then137, label %do.cond

if.then137:                                       ; preds = %if.end128
  %48 = load i8, ptr %rep, align 1
  %sub139 = add i8 %48, -32
  store i8 %sub139, ptr %rep, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end128, %if.then137
  %49 = load i8, ptr %rep, align 1
  %cmp143.not = icmp eq i8 %49, 89
  %50 = load i8, ptr %rep, align 1
  %cmp147.not = icmp eq i8 %50, 78
  %or.cond49 = select i1 %cmp143.not, i1 true, i1 %cmp147.not
  %or.cond49.not = xor i1 %or.cond49, true
  %51 = load i8, ptr %rep, align 1
  %cmp150 = icmp ne i8 %51, 65
  %or.cond51 = select i1 %or.cond49.not, i1 %cmp150, i1 false
  br i1 %or.cond51, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %52 = load i8, ptr %rep, align 1
  %cmp153 = icmp eq i8 %52, 78
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %do.end
  store i32 0, ptr %zipok, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %do.end
  %53 = load i8, ptr %rep, align 1
  %cmp158 = icmp eq i8 %53, 65
  br i1 %cmp158, label %if.then160, label %if.end165

if.then160:                                       ; preds = %if.end156
  store i32 2, ptr %opt_overwrite, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then110, %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_2.exit, %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_3.exit, %if.then160, %if.end156, %if.else112, %if.then74
  %54 = load i32, ptr %zipok, align 4
  %cmp166 = icmp eq i32 %54, 1
  br i1 %cmp166, label %if.then168, label %if.else395

if.then168:                                       ; preds = %if.end165
  %55 = load i32, ptr %opt_overwrite, align 4
  %cmp170 = icmp eq i32 %55, 2
  %cond = select i1 %cmp170, i32 2, i32 0
  %call172 = call ptr @zipOpen64(ptr noundef nonnull %filename_try, i32 noundef %cond) #9
  store ptr %call172, ptr %zf, align 8
  %cmp173 = icmp eq ptr %call172, null
  br i1 %cmp173, label %if.then175, label %if.else178

if.then175:                                       ; preds = %if.then168
  %call177 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, ptr noundef nonnull %filename_try) #9
  store i32 -1, ptr %err, align 4
  br label %if.end181

if.else178:                                       ; preds = %if.then168
  %call180 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, ptr noundef nonnull %filename_try) #9
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %56 = load i32, ptr %zipfilenamearg, align 4
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc385, %if.end181
  %storemerge37.in = phi i32 [ %56, %if.end181 ], [ %196, %for.inc385 ]
  %storemerge37 = add nsw i32 %storemerge37.in, 1
  store i32 %storemerge37, ptr %i, align 4
  %57 = load i32, ptr %argc.addr, align 4
  %cmp184 = icmp slt i32 %storemerge37, %57
  %58 = load i32, ptr %err, align 4
  %cmp187 = icmp eq i32 %58, 0
  %59 = select i1 %cmp184, i1 %cmp187, i1 false
  br i1 %59, label %for.body190, label %for.end387

for.body190:                                      ; preds = %for.cond183
  %60 = load ptr, ptr %argv.addr, align 8
  %61 = load i32, ptr %i, align 4
  %idxprom191 = sext i32 %61 to i64
  %arrayidx192 = getelementptr inbounds ptr, ptr %60, i64 %idxprom191
  %62 = load ptr, ptr %arrayidx192, align 8
  %63 = load i8, ptr %62, align 1
  %cmp194 = icmp eq i8 %63, 45
  br i1 %cmp194, label %land.lhs.true202, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %for.body190
  %64 = load ptr, ptr %argv.addr, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom197 = sext i32 %65 to i64
  %arrayidx198 = getelementptr inbounds ptr, ptr %64, i64 %idxprom197
  %66 = load ptr, ptr %arrayidx198, align 8
  %67 = load i8, ptr %66, align 1
  %cmp200 = icmp eq i8 %67, 47
  br i1 %cmp200, label %land.lhs.true202, label %if.then264

land.lhs.true202:                                 ; preds = %lor.lhs.false196, %for.body190
  %68 = load ptr, ptr %argv.addr, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom203 = sext i32 %69 to i64
  %arrayidx204 = getelementptr inbounds ptr, ptr %68, i64 %idxprom203
  %70 = load ptr, ptr %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %70, i64 1
  %71 = load i8, ptr %arrayidx205, align 1
  %cmp207 = icmp eq i8 %71, 111
  br i1 %cmp207, label %land.lhs.true258, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %land.lhs.true202
  %72 = load ptr, ptr %argv.addr, align 8
  %73 = load i32, ptr %i, align 4
  %idxprom210 = sext i32 %73 to i64
  %arrayidx211 = getelementptr inbounds ptr, ptr %72, i64 %idxprom210
  %74 = load ptr, ptr %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i8, ptr %74, i64 1
  %75 = load i8, ptr %arrayidx212, align 1
  %cmp214 = icmp eq i8 %75, 79
  br i1 %cmp214, label %land.lhs.true258, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %lor.lhs.false209
  %76 = load ptr, ptr %argv.addr, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom217 = sext i32 %77 to i64
  %arrayidx218 = getelementptr inbounds ptr, ptr %76, i64 %idxprom217
  %78 = load ptr, ptr %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i8, ptr %78, i64 1
  %79 = load i8, ptr %arrayidx219, align 1
  %cmp221 = icmp eq i8 %79, 97
  br i1 %cmp221, label %land.lhs.true258, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false216
  %80 = load ptr, ptr %argv.addr, align 8
  %81 = load i32, ptr %i, align 4
  %idxprom224 = sext i32 %81 to i64
  %arrayidx225 = getelementptr inbounds ptr, ptr %80, i64 %idxprom224
  %82 = load ptr, ptr %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i8, ptr %82, i64 1
  %83 = load i8, ptr %arrayidx226, align 1
  %cmp228 = icmp eq i8 %83, 65
  br i1 %cmp228, label %land.lhs.true258, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %lor.lhs.false223
  %84 = load ptr, ptr %argv.addr, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom231 = sext i32 %85 to i64
  %arrayidx232 = getelementptr inbounds ptr, ptr %84, i64 %idxprom231
  %86 = load ptr, ptr %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i8, ptr %86, i64 1
  %87 = load i8, ptr %arrayidx233, align 1
  %cmp235 = icmp eq i8 %87, 112
  br i1 %cmp235, label %land.lhs.true258, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %lor.lhs.false230
  %88 = load ptr, ptr %argv.addr, align 8
  %89 = load i32, ptr %i, align 4
  %idxprom238 = sext i32 %89 to i64
  %arrayidx239 = getelementptr inbounds ptr, ptr %88, i64 %idxprom238
  %90 = load ptr, ptr %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i8, ptr %90, i64 1
  %91 = load i8, ptr %arrayidx240, align 1
  %cmp242 = icmp eq i8 %91, 80
  br i1 %cmp242, label %land.lhs.true258, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false237
  %92 = load ptr, ptr %argv.addr, align 8
  %93 = load i32, ptr %i, align 4
  %idxprom245 = sext i32 %93 to i64
  %arrayidx246 = getelementptr inbounds ptr, ptr %92, i64 %idxprom245
  %94 = load ptr, ptr %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i8, ptr %94, i64 1
  %95 = load i8, ptr %arrayidx247, align 1
  %cmp249 = icmp sgt i8 %95, 47
  br i1 %cmp249, label %land.lhs.true251, label %if.then264

land.lhs.true251:                                 ; preds = %lor.lhs.false244
  %96 = load ptr, ptr %argv.addr, align 8
  %97 = load i32, ptr %i, align 4
  %idxprom252 = sext i32 %97 to i64
  %arrayidx253 = getelementptr inbounds ptr, ptr %96, i64 %idxprom252
  %98 = load ptr, ptr %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i8, ptr %98, i64 1
  %99 = load i8, ptr %arrayidx254, align 1
  %cmp256 = icmp slt i8 %99, 58
  br i1 %cmp256, label %land.lhs.true258, label %if.then264

land.lhs.true258:                                 ; preds = %land.lhs.true251, %lor.lhs.false237, %lor.lhs.false230, %lor.lhs.false223, %lor.lhs.false216, %lor.lhs.false209, %land.lhs.true202
  %100 = load ptr, ptr %argv.addr, align 8
  %101 = load i32, ptr %i, align 4
  %idxprom259 = sext i32 %101 to i64
  %arrayidx260 = getelementptr inbounds ptr, ptr %100, i64 %idxprom259
  %102 = load ptr, ptr %arrayidx260, align 8
  %call261 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %102) #9
  %cmp262 = icmp eq i64 %call261, 2
  br i1 %cmp262, label %for.inc385, label %if.then264

if.then264:                                       ; preds = %land.lhs.true258, %land.lhs.true251, %lor.lhs.false244, %lor.lhs.false196
  store ptr null, ptr %fin, align 8
  %103 = load ptr, ptr %argv.addr, align 8
  %104 = load i32, ptr %i, align 4
  %idxprom265 = sext i32 %104 to i64
  %arrayidx266 = getelementptr inbounds ptr, ptr %103, i64 %idxprom265
  %105 = load ptr, ptr %arrayidx266, align 8
  store ptr %105, ptr %filenameinzip, align 8
  store i64 0, ptr %crcFile, align 8
  store i32 0, ptr %zip64, align 4
  %tm_year = getelementptr inbounds %struct.tm_zip_s, ptr %zi, i64 0, i32 5
  store i32 0, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.tm_zip_s, ptr %zi, i64 0, i32 4
  store i32 0, ptr %tm_mon, align 8
  %tm_mday = getelementptr inbounds %struct.tm_zip_s, ptr %zi, i64 0, i32 3
  store i32 0, ptr %tm_mday, align 4
  %tm_hour = getelementptr inbounds %struct.tm_zip_s, ptr %zi, i64 0, i32 2
  store i32 0, ptr %tm_hour, align 8
  %tm_min = getelementptr inbounds %struct.tm_zip_s, ptr %zi, i64 0, i32 1
  store i32 0, ptr %tm_min, align 4
  store i32 0, ptr %zi, align 8
  %dosDate = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i64 0, i32 1
  store i64 0, ptr %dosDate, align 8
  %internal_fa = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i64 0, i32 2
  store i64 0, ptr %internal_fa, align 8
  %external_fa = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i64 0, i32 3
  store i64 0, ptr %external_fa, align 8
  %106 = load ptr, ptr %filenameinzip, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmzip.addr.i)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %s.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filedate.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tm_t.i)
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %name.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i)
  store ptr %106, ptr %f.addr.i, align 8
  store ptr %zi, ptr %tmzip.addr.i, align 8
  store i64 0, ptr %tm_t.i, align 8
  %call.i13 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %106, ptr noundef nonnull dereferenceable(2) @.str.16) #9
  %cmp.i14.not = icmp eq i32 %call.i13, 0
  br i1 %cmp.i14.not, label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_4.exit, label %if.then.i16

if.then.i16:                                      ; preds = %if.then264
  %107 = load ptr, ptr %f.addr.i, align 8
  %call1.i15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %107) #9
  %cmp2.i = icmp ugt i64 %call1.i15, 256
  %spec.select = select i1 %cmp2.i, i64 256, i64 %call1.i15
  store i64 %spec.select, ptr %len.i, align 8
  %108 = load ptr, ptr %f.addr.i, align 8
  %strncpy40 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %name.i, ptr noundef nonnull dereferenceable(1) %108, i64 255)
  %arrayidx.i = getelementptr inbounds [257 x i8], ptr %name.i, i64 0, i64 256
  store i8 0, ptr %arrayidx.i, align 1
  %sub.i = add i64 %spec.select, -1
  %arrayidx5.i = getelementptr inbounds [257 x i8], ptr %name.i, i64 0, i64 %sub.i
  %109 = load i8, ptr %arrayidx5.i, align 1
  %cmp6.i = icmp eq i8 %109, 47
  br i1 %cmp6.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.then.i16
  %110 = load i64, ptr %len.i, align 8
  %sub9.i = add i64 %110, -1
  %arrayidx10.i = getelementptr inbounds [257 x i8], ptr %name.i, i64 0, i64 %sub9.i
  store i8 0, ptr %arrayidx10.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.then.i16
  %call13.i = call i32 @"\01_stat"(ptr noundef nonnull %name.i, ptr noundef nonnull %s.i) #9
  %cmp14.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then16.i, label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_4.exit

if.then16.i:                                      ; preds = %if.end11.i
  %st_mtimespec.i = getelementptr inbounds %struct.stat, ptr %s.i, i64 0, i32 8
  %111 = load i64, ptr %st_mtimespec.i, align 8
  store i64 %111, ptr %tm_t.i, align 8
  br label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_4.exit

pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_4.exit: ; preds = %if.end11.i, %if.then16.i, %if.then264
  %call19.i = call ptr @localtime(ptr noundef nonnull %tm_t.i) #9
  store ptr %call19.i, ptr %filedate.i, align 8
  %112 = load i32, ptr %call19.i, align 8
  %113 = load ptr, ptr %tmzip.addr.i, align 8
  store i32 %112, ptr %113, align 4
  %tm_min.i = getelementptr inbounds %struct.tm, ptr %call19.i, i64 0, i32 1
  %114 = load i32, ptr %tm_min.i, align 4
  %tm_min21.i = getelementptr inbounds %struct.tm_zip_s, ptr %113, i64 0, i32 1
  store i32 %114, ptr %tm_min21.i, align 4
  %115 = load ptr, ptr %filedate.i, align 8
  %tm_hour.i = getelementptr inbounds %struct.tm, ptr %115, i64 0, i32 2
  %116 = load i32, ptr %tm_hour.i, align 8
  %117 = load ptr, ptr %tmzip.addr.i, align 8
  %tm_hour22.i = getelementptr inbounds %struct.tm_zip_s, ptr %117, i64 0, i32 2
  store i32 %116, ptr %tm_hour22.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.tm, ptr %115, i64 0, i32 3
  %118 = load i32, ptr %tm_mday.i, align 4
  %tm_mday23.i = getelementptr inbounds %struct.tm_zip_s, ptr %117, i64 0, i32 3
  store i32 %118, ptr %tm_mday23.i, align 4
  %119 = load ptr, ptr %filedate.i, align 8
  %tm_mon.i = getelementptr inbounds %struct.tm, ptr %119, i64 0, i32 4
  %120 = load i32, ptr %tm_mon.i, align 8
  %121 = load ptr, ptr %tmzip.addr.i, align 8
  %tm_mon24.i = getelementptr inbounds %struct.tm_zip_s, ptr %121, i64 0, i32 4
  store i32 %120, ptr %tm_mon24.i, align 4
  %tm_year.i = getelementptr inbounds %struct.tm, ptr %119, i64 0, i32 5
  %122 = load i32, ptr %tm_year.i, align 4
  %tm_year25.i = getelementptr inbounds %struct.tm_zip_s, ptr %121, i64 0, i32 5
  store i32 %122, ptr %tm_year25.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmzip.addr.i)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %s.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filedate.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tm_t.i)
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %name.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i)
  %123 = load ptr, ptr %password, align 8
  %cmp275.not = icmp ne ptr %123, null
  %124 = load i32, ptr %err, align 4
  %cmp278 = icmp eq i32 %124, 0
  %or.cond50 = select i1 %cmp275.not, i1 %cmp278, i1 false
  br i1 %or.cond50, label %if.then280, label %if.end282

if.then280:                                       ; preds = %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_4.exit
  %125 = load ptr, ptr %filenameinzip, align 8
  %126 = load ptr, ptr %buf, align 8
  %127 = load i64, ptr %size_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filenameinzip.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size_buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result_crc.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %calculate_crc.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fin.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size_read.i)
  store ptr %125, ptr %filenameinzip.addr.i, align 8
  store ptr %126, ptr %buf.addr.i, align 8
  store i64 %127, ptr %size_buf.addr.i, align 8
  store ptr %crcFile, ptr %result_crc.addr.i, align 8
  store i64 0, ptr %calculate_crc.i, align 8
  store i32 0, ptr %err.i, align 4
  %call.i17 = call ptr @"\01_fopen"(ptr noundef %125, ptr noundef nonnull @.str.7) #9
  store ptr %call.i17, ptr %fin.i, align 8
  store i64 0, ptr %size_read.i, align 8
  %cmp.i18 = icmp eq ptr %call.i17, null
  br i1 %cmp.i18, label %if.then.i19, label %if.end.i20

if.then.i19:                                      ; preds = %if.then280
  store i32 -1, ptr %err.i, align 4
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then.i19, %if.then280
  %128 = load i32, ptr %err.i, align 4
  %cmp1.i = icmp eq i32 %128, 0
  br i1 %cmp1.i, label %do.body.i, label %if.end18.i

do.body.i:                                        ; preds = %if.end.i20, %if.end15.i
  store i32 0, ptr %err.i, align 4
  %129 = load ptr, ptr %buf.addr.i, align 8
  %130 = load i64, ptr %size_buf.addr.i, align 8
  %131 = load ptr, ptr %fin.i, align 8
  %call3.i = call i64 @fread(ptr noundef %129, i64 noundef 1, i64 noundef %130, ptr noundef %131) #9
  store i64 %call3.i, ptr %size_read.i, align 8
  %cmp4.i = icmp ult i64 %call3.i, %130
  br i1 %cmp4.i, label %if.then5.i, label %if.end11.i22

if.then5.i:                                       ; preds = %do.body.i
  %132 = load ptr, ptr %fin.i, align 8
  %call6.i = call i32 @feof(ptr noundef %132) #9
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then8.i21, label %if.end11.i22

if.then8.i21:                                     ; preds = %if.then5.i
  %133 = load ptr, ptr %filenameinzip.addr.i, align 8
  %call9.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef %133) #9
  store i32 -1, ptr %err.i, align 4
  br label %if.end11.i22

if.end11.i22:                                     ; preds = %if.then5.i, %if.then8.i21, %do.body.i
  %134 = load i64, ptr %size_read.i, align 8
  %cmp12.i.not = icmp eq i64 %134, 0
  br i1 %cmp12.i.not, label %if.end15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i22
  %135 = load i64, ptr %calculate_crc.i, align 8
  %136 = load ptr, ptr %buf.addr.i, align 8
  %137 = load i64, ptr %size_read.i, align 8
  %call14.i = call i64 @crc32_z(i64 noundef %135, ptr noundef %136, i64 noundef %137) #9
  store i64 %call14.i, ptr %calculate_crc.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end11.i22
  %138 = load i32, ptr %err.i, align 4
  %cmp16.i = icmp eq i32 %138, 0
  %139 = load i64, ptr %size_read.i, align 8
  %cmp17.i = icmp ne i64 %139, 0
  %140 = select i1 %cmp16.i, i1 %cmp17.i, i1 false
  br i1 %140, label %do.body.i, label %if.end18.i, !llvm.loop !11

if.end18.i:                                       ; preds = %if.end15.i, %if.end.i20
  %141 = load ptr, ptr %fin.i, align 8
  %tobool.i.not = icmp eq ptr %141, null
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_5.exit, label %if.then19.i

if.then19.i:                                      ; preds = %if.end18.i
  %142 = load ptr, ptr %fin.i, align 8
  %call20.i = call i32 @fclose(ptr noundef %142) #9
  br label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_5.exit

pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_5.exit: ; preds = %if.end18.i, %if.then19.i
  %143 = load i64, ptr %calculate_crc.i, align 8
  %144 = load ptr, ptr %result_crc.addr.i, align 8
  store i64 %143, ptr %144, align 8
  %145 = load ptr, ptr %filenameinzip.addr.i, align 8
  %call22.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.17, ptr noundef %145, i64 noundef %143) #9
  %146 = load i32, ptr %err.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filenameinzip.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size_buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result_crc.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %calculate_crc.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fin.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size_read.i)
  store i32 %146, ptr %err, align 4
  br label %if.end282

if.end282:                                        ; preds = %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_5.exit, %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_4.exit
  %147 = load ptr, ptr %filenameinzip, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filename.addr.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %largeFile.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pFile.i)
  store ptr %147, ptr %filename.addr.i23, align 8
  store i32 0, ptr %largeFile.i, align 4
  %call.i24 = call ptr @"\01_fopen"(ptr noundef %147, ptr noundef nonnull @.str.7) #9
  store ptr %call.i24, ptr %pFile.i, align 8
  %cmp.i25.not = icmp eq ptr %call.i24, null
  br i1 %cmp.i25.not, label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_6.exit, label %if.then.i29

if.then.i29:                                      ; preds = %if.end282
  %148 = load ptr, ptr %pFile.i, align 8
  %call1.i26 = call i32 @fseeko(ptr noundef %148, i64 noundef 0, i32 noundef 2) #9
  %call2.i = call i64 @ftello(ptr noundef %148) #9
  %149 = load ptr, ptr %filename.addr.i23, align 8
  %call3.i27 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, ptr noundef %149, i64 noundef %call2.i) #9
  %cmp4.i28 = icmp ugt i64 %call2.i, 4294967294
  br i1 %cmp4.i28, label %if.then5.i30, label %if.end.i32

if.then5.i30:                                     ; preds = %if.then.i29
  store i32 1, ptr %largeFile.i, align 4
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.then5.i30, %if.then.i29
  %150 = load ptr, ptr %pFile.i, align 8
  %call6.i31 = call i32 @fclose(ptr noundef %150) #9
  br label %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_6.exit

pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_6.exit: ; preds = %if.end282, %if.end.i32
  %151 = load i32, ptr %largeFile.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filename.addr.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %largeFile.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pFile.i)
  store i32 %151, ptr %zip64, align 4
  %152 = load ptr, ptr %filenameinzip, align 8
  br label %while.cond284

while.cond284:                                    ; preds = %while.body293, %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_6.exit
  %storemerge38 = phi ptr [ %152, %pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_minizip_6.exit ], [ %incdec.ptr294, %while.body293 ]
  store ptr %storemerge38, ptr %savefilenameinzip, align 8
  %153 = load i8, ptr %storemerge38, align 1
  %cmp287 = icmp eq i8 %153, 92
  br i1 %cmp287, label %while.body293, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond284
  %154 = load ptr, ptr %savefilenameinzip, align 8
  %155 = load i8, ptr %154, align 1
  %cmp291 = icmp eq i8 %155, 47
  br i1 %cmp291, label %while.body293, label %while.end295

while.body293:                                    ; preds = %while.cond284, %lor.rhs
  %156 = load ptr, ptr %savefilenameinzip, align 8
  %incdec.ptr294 = getelementptr inbounds i8, ptr %156, i64 1
  br label %while.cond284, !llvm.loop !12

while.end295:                                     ; preds = %lor.rhs
  %157 = load i32, ptr %opt_exclude_path, align 4
  %tobool.not = icmp eq i32 %157, 0
  br i1 %tobool.not, label %if.end317, label %if.then296

if.then296:                                       ; preds = %while.end295
  store ptr null, ptr %lastslash, align 8
  %158 = load ptr, ptr %savefilenameinzip, align 8
  br label %for.cond297

for.cond297:                                      ; preds = %for.inc309, %if.then296
  %storemerge39 = phi ptr [ %158, %if.then296 ], [ %incdec.ptr310, %for.inc309 ]
  store ptr %storemerge39, ptr %tmpptr, align 8
  %159 = load i8, ptr %storemerge39, align 1
  %tobool298.not = icmp eq i8 %159, 0
  br i1 %tobool298.not, label %for.end311, label %for.body299

for.body299:                                      ; preds = %for.cond297
  %160 = load ptr, ptr %tmpptr, align 8
  %161 = load i8, ptr %160, align 1
  %cmp301 = icmp eq i8 %161, 92
  br i1 %cmp301, label %if.then307, label %lor.lhs.false303

lor.lhs.false303:                                 ; preds = %for.body299
  %162 = load ptr, ptr %tmpptr, align 8
  %163 = load i8, ptr %162, align 1
  %cmp305 = icmp eq i8 %163, 47
  br i1 %cmp305, label %if.then307, label %for.inc309

if.then307:                                       ; preds = %lor.lhs.false303, %for.body299
  %164 = load ptr, ptr %tmpptr, align 8
  store ptr %164, ptr %lastslash, align 8
  br label %for.inc309

for.inc309:                                       ; preds = %lor.lhs.false303, %if.then307
  %165 = load ptr, ptr %tmpptr, align 8
  %incdec.ptr310 = getelementptr inbounds i8, ptr %165, i64 1
  br label %for.cond297, !llvm.loop !13

for.end311:                                       ; preds = %for.cond297
  %166 = load ptr, ptr %lastslash, align 8
  %cmp312.not = icmp eq ptr %166, null
  br i1 %cmp312.not, label %if.end317, label %if.then314

if.then314:                                       ; preds = %for.end311
  %167 = load ptr, ptr %lastslash, align 8
  %add.ptr315 = getelementptr inbounds i8, ptr %167, i64 1
  store ptr %add.ptr315, ptr %savefilenameinzip, align 8
  br label %if.end317

if.end317:                                        ; preds = %for.end311, %if.then314, %while.end295
  %168 = load ptr, ptr %zf, align 8
  %169 = load ptr, ptr %savefilenameinzip, align 8
  %170 = load i32, ptr %opt_compress_level, align 4
  %cmp318.not = icmp eq i32 %170, 0
  %cond320 = select i1 %cmp318.not, i32 0, i32 8
  %171 = load ptr, ptr %password, align 8
  %172 = load i64, ptr %crcFile, align 8
  %173 = load i32, ptr %zip64, align 4
  %call321 = call i32 @zipOpenNewFileInZip3_64(ptr noundef %168, ptr noundef %169, ptr noundef nonnull %zi, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef %cond320, i32 noundef %170, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef %171, i64 noundef %172, i32 noundef %173) #9
  store i32 %call321, ptr %err, align 4
  %cmp322.not = icmp eq i32 %call321, 0
  br i1 %cmp322.not, label %if.else326, label %if.then324

if.then324:                                       ; preds = %if.end317
  %174 = load ptr, ptr %filenameinzip, align 8
  %call325 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, ptr noundef %174) #9
  br label %if.end333

if.else326:                                       ; preds = %if.end317
  %175 = load ptr, ptr %filenameinzip, align 8
  %call327 = call ptr @"\01_fopen"(ptr noundef %175, ptr noundef nonnull @.str.7) #9
  store ptr %call327, ptr %fin, align 8
  %cmp328 = icmp eq ptr %call327, null
  br i1 %cmp328, label %if.then330, label %if.end333

if.then330:                                       ; preds = %if.else326
  store i32 -1, ptr %err, align 4
  %176 = load ptr, ptr %filenameinzip, align 8
  %call331 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, ptr noundef %176) #9
  br label %if.end333

if.end333:                                        ; preds = %if.else326, %if.then330, %if.then324
  %177 = load i32, ptr %err, align 4
  %cmp334 = icmp eq i32 %177, 0
  br i1 %cmp334, label %do.body337, label %if.end368

do.body337:                                       ; preds = %if.end333, %do.cond360
  store i32 0, ptr %err, align 4
  %178 = load ptr, ptr %buf, align 8
  %179 = load i64, ptr %size_buf, align 8
  %180 = load ptr, ptr %fin, align 8
  %call338 = call i64 @fread(ptr noundef %178, i64 noundef 1, i64 noundef %179, ptr noundef %180) #9
  store i64 %call338, ptr %size_read, align 8
  %cmp339 = icmp ult i64 %call338, %179
  br i1 %cmp339, label %if.then341, label %if.end348

if.then341:                                       ; preds = %do.body337
  %181 = load ptr, ptr %fin, align 8
  %call342 = call i32 @feof(ptr noundef %181) #9
  %cmp343 = icmp eq i32 %call342, 0
  br i1 %cmp343, label %if.then345, label %if.end348

if.then345:                                       ; preds = %if.then341
  %182 = load ptr, ptr %filenameinzip, align 8
  %call346 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef %182) #9
  store i32 -1, ptr %err, align 4
  br label %if.end348

if.end348:                                        ; preds = %if.then341, %if.then345, %do.body337
  %183 = load i64, ptr %size_read, align 8
  %cmp349.not = icmp eq i64 %183, 0
  br i1 %cmp349.not, label %do.cond360, label %if.then351

if.then351:                                       ; preds = %if.end348
  %184 = load ptr, ptr %zf, align 8
  %185 = load ptr, ptr %buf, align 8
  %186 = load i64, ptr %size_read, align 8
  %conv352 = trunc i64 %186 to i32
  %call353 = call i32 @zipWriteInFileInZip(ptr noundef %184, ptr noundef %185, i32 noundef %conv352) #9
  store i32 %call353, ptr %err, align 4
  %cmp354 = icmp slt i32 %call353, 0
  br i1 %cmp354, label %if.then356, label %do.cond360

if.then356:                                       ; preds = %if.then351
  %187 = load ptr, ptr %filenameinzip, align 8
  %call357 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef %187) #9
  br label %do.cond360

do.cond360:                                       ; preds = %if.end348, %if.then356, %if.then351
  %188 = load i32, ptr %err, align 4
  %cmp361 = icmp eq i32 %188, 0
  %189 = load i64, ptr %size_read, align 8
  %cmp364 = icmp ne i64 %189, 0
  %190 = select i1 %cmp361, i1 %cmp364, i1 false
  br i1 %190, label %do.body337, label %if.end368, !llvm.loop !14

if.end368:                                        ; preds = %do.cond360, %if.end333
  %191 = load ptr, ptr %fin, align 8
  %tobool369.not = icmp eq ptr %191, null
  br i1 %tobool369.not, label %if.end372, label %if.then370

if.then370:                                       ; preds = %if.end368
  %192 = load ptr, ptr %fin, align 8
  %call371 = call i32 @fclose(ptr noundef %192) #9
  br label %if.end372

if.end372:                                        ; preds = %if.then370, %if.end368
  %193 = load i32, ptr %err, align 4
  %cmp373 = icmp slt i32 %193, 0
  br i1 %cmp373, label %if.then375, label %if.else376

if.then375:                                       ; preds = %if.end372
  store i32 -1, ptr %err, align 4
  br label %for.inc385

if.else376:                                       ; preds = %if.end372
  %194 = load ptr, ptr %zf, align 8
  %call377 = call i32 @zipCloseFileInZip(ptr noundef %194) #9
  store i32 %call377, ptr %err, align 4
  %cmp378.not = icmp eq i32 %call377, 0
  br i1 %cmp378.not, label %for.inc385, label %if.then380

if.then380:                                       ; preds = %if.else376
  %195 = load ptr, ptr %filenameinzip, align 8
  %call381 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, ptr noundef %195) #9
  br label %for.inc385

for.inc385:                                       ; preds = %land.lhs.true258, %if.else376, %if.then380, %if.then375
  %196 = load i32, ptr %i, align 4
  br label %for.cond183, !llvm.loop !15

for.end387:                                       ; preds = %for.cond183
  %197 = load ptr, ptr %zf, align 8
  %call388 = call i32 @zipClose(ptr noundef %197, ptr noundef null) #9
  %cmp389.not = icmp eq i32 %call388, 0
  br i1 %cmp389.not, label %if.end396, label %if.then391

if.then391:                                       ; preds = %for.end387
  %call393 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, ptr noundef nonnull %filename_try) #9
  br label %if.end396

if.else395:                                       ; preds = %if.end165
  %puts36 = call i32 @puts(ptr nonnull @str.2)
  br label %if.end396

if.end396:                                        ; preds = %for.end387, %if.then391, %if.else395
  %198 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %198) #9
  %199 = load i32, ptr %err, align 4
  store i32 %199, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end396, %if.then69, %if.then
  %200 = load i32, ptr %retval, align 4
  ret i32 %200
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @scanf(ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

declare ptr @zipOpen64(ptr noundef, i32 noundef) #2

declare i32 @zipOpenNewFileInZip3_64(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @feof(ptr noundef) #2

declare i32 @zipWriteInFileInZip(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @fclose(ptr noundef) #2

declare i32 @zipCloseFileInZip(ptr noundef) #2

declare i32 @zipClose(ptr noundef, ptr noundef) #2

declare void @free(ptr noundef) #2

declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @"\01_stat"(ptr noundef, ptr noundef) #2

declare ptr @localtime(ptr noundef) #2

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) #2

declare i32 @fseeko(ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @ftello(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strncpy(ptr noalias returned writeonly, ptr noalias nocapture readonly, i64) #7

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
