; ModuleID = './out/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_zlib_contrib_minizip_minizip.prepared.ll'
source_filename = "./source_snapshot/public_repos/zlib/contrib/minizip/minizip.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.zip_fileinfo = type { %struct.tm_zip_s, i64, i64, i64 }
%struct.tm_zip_s = type { i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
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
  %puts3 = call i32 @puts(ptr nonnull @str.1)
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  %puts10 = call i32 @puts(ptr nonnull @str.4)
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
  %or.cond11 = select i1 %cmp18, i1 true, i1 %cmp22
  br i1 %or.cond11, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end
  store i32 2, ptr %opt_overwrite, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then24
  %16 = load i8, ptr %c, align 1
  %cmp27 = icmp sgt i8 %16, 47
  %17 = load i8, ptr %c, align 1
  %cmp30 = icmp slt i8 %17, 58
  %or.cond12 = select i1 %cmp27, i1 %cmp30, i1 false
  br i1 %or.cond12, label %if.then32, label %if.end34

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
  %or.cond13 = select i1 %cmp36, i1 true, i1 %cmp40
  br i1 %or.cond13, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end34
  store i32 1, ptr %opt_exclude_path, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end34, %if.then42
  %21 = load i8, ptr %c, align 1
  %cmp45 = icmp eq i8 %21, 112
  %22 = load i8, ptr %c, align 1
  %cmp49 = icmp eq i8 %22, 80
  %or.cond14 = select i1 %cmp45, i1 true, i1 %cmp49
  br i1 %or.cond14, label %land.lhs.true51, label %if.end58

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
  %call = call dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #7
  store ptr %call, ptr %buf, align 8
  %cmp67 = icmp eq ptr %call, null
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  %puts9 = call i32 @puts(ptr nonnull @str.3)
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
  %call81 = call i64 @strlen(ptr noundef nonnull %filename_try) #8
  %conv82 = trunc i64 %call81 to i32
  store i32 %conv82, ptr %len, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc94, %if.else75
  %storemerge4 = phi i32 [ 0, %if.else75 ], [ %inc95, %for.inc94 ]
  store i32 %storemerge4, ptr %i, align 4
  %35 = load i32, ptr %len, align 4
  %cmp84 = icmp slt i32 %storemerge4, %35
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
  %call101 = call ptr @__strcat_chk(ptr noundef nonnull %filename_try, ptr noundef nonnull @.str.1, i64 noundef 272) #8
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %for.end96
  %40 = load i32, ptr %opt_overwrite, align 4
  %cmp103 = icmp eq i32 %40, 2
  br i1 %cmp103, label %if.then105, label %if.else112

if.then105:                                       ; preds = %if.end102
  %call107 = call i32 @check_exist_file(ptr noundef nonnull %filename_try)
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.end165

if.then110:                                       ; preds = %if.then105
  store i32 1, ptr %opt_overwrite, align 4
  br label %if.end165

if.else112:                                       ; preds = %if.end102
  %41 = load i32, ptr %opt_overwrite, align 4
  %cmp113 = icmp eq i32 %41, 0
  br i1 %cmp113, label %if.then115, label %if.end165

if.then115:                                       ; preds = %if.else112
  %call117 = call i32 @check_exist_file(ptr noundef nonnull %filename_try)
  %cmp118.not = icmp eq i32 %call117, 0
  br i1 %cmp118.not, label %if.end165, label %if.then120

if.then120:                                       ; preds = %if.then115
  store i8 0, ptr %rep, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then120
  %call122 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef nonnull %filename_try) #8
  %call124 = call i32 (ptr, ...) @scanf(ptr noundef nonnull @.str.3, ptr noundef nonnull %answer) #8
  %cmp125.not = icmp eq i32 %call124, 1
  br i1 %cmp125.not, label %if.end128, label %if.then127

if.then127:                                       ; preds = %do.body
  call void @exit(i32 noundef 1) #9
  unreachable

if.end128:                                        ; preds = %do.body
  %42 = load i8, ptr %answer, align 1
  store i8 %42, ptr %rep, align 1
  %cmp131 = icmp sgt i8 %42, 96
  %43 = load i8, ptr %rep, align 1
  %cmp135 = icmp slt i8 %43, 123
  %or.cond15 = select i1 %cmp131, i1 %cmp135, i1 false
  br i1 %or.cond15, label %if.then137, label %do.cond

if.then137:                                       ; preds = %if.end128
  %44 = load i8, ptr %rep, align 1
  %sub139 = add i8 %44, -32
  store i8 %sub139, ptr %rep, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end128, %if.then137
  %45 = load i8, ptr %rep, align 1
  %cmp143.not = icmp eq i8 %45, 89
  %46 = load i8, ptr %rep, align 1
  %cmp147.not = icmp eq i8 %46, 78
  %or.cond16 = select i1 %cmp143.not, i1 true, i1 %cmp147.not
  %or.cond16.not = xor i1 %or.cond16, true
  %47 = load i8, ptr %rep, align 1
  %cmp150 = icmp ne i8 %47, 65
  %or.cond18 = select i1 %or.cond16.not, i1 %cmp150, i1 false
  br i1 %or.cond18, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %48 = load i8, ptr %rep, align 1
  %cmp153 = icmp eq i8 %48, 78
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %do.end
  store i32 0, ptr %zipok, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %do.end
  %49 = load i8, ptr %rep, align 1
  %cmp158 = icmp eq i8 %49, 65
  br i1 %cmp158, label %if.then160, label %if.end165

if.then160:                                       ; preds = %if.end156
  store i32 2, ptr %opt_overwrite, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then110, %if.then105, %if.then115, %if.then160, %if.end156, %if.else112, %if.then74
  %50 = load i32, ptr %zipok, align 4
  %cmp166 = icmp eq i32 %50, 1
  br i1 %cmp166, label %if.then168, label %if.else395

if.then168:                                       ; preds = %if.end165
  %51 = load i32, ptr %opt_overwrite, align 4
  %cmp170 = icmp eq i32 %51, 2
  %cond = select i1 %cmp170, i32 2, i32 0
  %call172 = call ptr @zipOpen64(ptr noundef nonnull %filename_try, i32 noundef %cond) #8
  store ptr %call172, ptr %zf, align 8
  %cmp173 = icmp eq ptr %call172, null
  br i1 %cmp173, label %if.then175, label %if.else178

if.then175:                                       ; preds = %if.then168
  %call177 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, ptr noundef nonnull %filename_try) #8
  store i32 -1, ptr %err, align 4
  br label %if.end181

if.else178:                                       ; preds = %if.then168
  %call180 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, ptr noundef nonnull %filename_try) #8
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %52 = load i32, ptr %zipfilenamearg, align 4
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc385, %if.end181
  %storemerge6.in = phi i32 [ %52, %if.end181 ], [ %152, %for.inc385 ]
  %storemerge6 = add nsw i32 %storemerge6.in, 1
  store i32 %storemerge6, ptr %i, align 4
  %53 = load i32, ptr %argc.addr, align 4
  %cmp184 = icmp slt i32 %storemerge6, %53
  %54 = load i32, ptr %err, align 4
  %cmp187 = icmp eq i32 %54, 0
  %55 = select i1 %cmp184, i1 %cmp187, i1 false
  br i1 %55, label %for.body190, label %for.end387

for.body190:                                      ; preds = %for.cond183
  %56 = load ptr, ptr %argv.addr, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom191 = sext i32 %57 to i64
  %arrayidx192 = getelementptr inbounds ptr, ptr %56, i64 %idxprom191
  %58 = load ptr, ptr %arrayidx192, align 8
  %59 = load i8, ptr %58, align 1
  %cmp194 = icmp eq i8 %59, 45
  br i1 %cmp194, label %land.lhs.true202, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %for.body190
  %60 = load ptr, ptr %argv.addr, align 8
  %61 = load i32, ptr %i, align 4
  %idxprom197 = sext i32 %61 to i64
  %arrayidx198 = getelementptr inbounds ptr, ptr %60, i64 %idxprom197
  %62 = load ptr, ptr %arrayidx198, align 8
  %63 = load i8, ptr %62, align 1
  %cmp200 = icmp eq i8 %63, 47
  br i1 %cmp200, label %land.lhs.true202, label %if.then264

land.lhs.true202:                                 ; preds = %lor.lhs.false196, %for.body190
  %64 = load ptr, ptr %argv.addr, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom203 = sext i32 %65 to i64
  %arrayidx204 = getelementptr inbounds ptr, ptr %64, i64 %idxprom203
  %66 = load ptr, ptr %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %66, i64 1
  %67 = load i8, ptr %arrayidx205, align 1
  %cmp207 = icmp eq i8 %67, 111
  br i1 %cmp207, label %land.lhs.true258, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %land.lhs.true202
  %68 = load ptr, ptr %argv.addr, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom210 = sext i32 %69 to i64
  %arrayidx211 = getelementptr inbounds ptr, ptr %68, i64 %idxprom210
  %70 = load ptr, ptr %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i8, ptr %70, i64 1
  %71 = load i8, ptr %arrayidx212, align 1
  %cmp214 = icmp eq i8 %71, 79
  br i1 %cmp214, label %land.lhs.true258, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %lor.lhs.false209
  %72 = load ptr, ptr %argv.addr, align 8
  %73 = load i32, ptr %i, align 4
  %idxprom217 = sext i32 %73 to i64
  %arrayidx218 = getelementptr inbounds ptr, ptr %72, i64 %idxprom217
  %74 = load ptr, ptr %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i8, ptr %74, i64 1
  %75 = load i8, ptr %arrayidx219, align 1
  %cmp221 = icmp eq i8 %75, 97
  br i1 %cmp221, label %land.lhs.true258, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false216
  %76 = load ptr, ptr %argv.addr, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom224 = sext i32 %77 to i64
  %arrayidx225 = getelementptr inbounds ptr, ptr %76, i64 %idxprom224
  %78 = load ptr, ptr %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i8, ptr %78, i64 1
  %79 = load i8, ptr %arrayidx226, align 1
  %cmp228 = icmp eq i8 %79, 65
  br i1 %cmp228, label %land.lhs.true258, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %lor.lhs.false223
  %80 = load ptr, ptr %argv.addr, align 8
  %81 = load i32, ptr %i, align 4
  %idxprom231 = sext i32 %81 to i64
  %arrayidx232 = getelementptr inbounds ptr, ptr %80, i64 %idxprom231
  %82 = load ptr, ptr %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i8, ptr %82, i64 1
  %83 = load i8, ptr %arrayidx233, align 1
  %cmp235 = icmp eq i8 %83, 112
  br i1 %cmp235, label %land.lhs.true258, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %lor.lhs.false230
  %84 = load ptr, ptr %argv.addr, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom238 = sext i32 %85 to i64
  %arrayidx239 = getelementptr inbounds ptr, ptr %84, i64 %idxprom238
  %86 = load ptr, ptr %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i8, ptr %86, i64 1
  %87 = load i8, ptr %arrayidx240, align 1
  %cmp242 = icmp eq i8 %87, 80
  br i1 %cmp242, label %land.lhs.true258, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false237
  %88 = load ptr, ptr %argv.addr, align 8
  %89 = load i32, ptr %i, align 4
  %idxprom245 = sext i32 %89 to i64
  %arrayidx246 = getelementptr inbounds ptr, ptr %88, i64 %idxprom245
  %90 = load ptr, ptr %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i8, ptr %90, i64 1
  %91 = load i8, ptr %arrayidx247, align 1
  %cmp249 = icmp sgt i8 %91, 47
  br i1 %cmp249, label %land.lhs.true251, label %if.then264

land.lhs.true251:                                 ; preds = %lor.lhs.false244
  %92 = load ptr, ptr %argv.addr, align 8
  %93 = load i32, ptr %i, align 4
  %idxprom252 = sext i32 %93 to i64
  %arrayidx253 = getelementptr inbounds ptr, ptr %92, i64 %idxprom252
  %94 = load ptr, ptr %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i8, ptr %94, i64 1
  %95 = load i8, ptr %arrayidx254, align 1
  %cmp256 = icmp slt i8 %95, 58
  br i1 %cmp256, label %land.lhs.true258, label %if.then264

land.lhs.true258:                                 ; preds = %land.lhs.true251, %lor.lhs.false237, %lor.lhs.false230, %lor.lhs.false223, %lor.lhs.false216, %lor.lhs.false209, %land.lhs.true202
  %96 = load ptr, ptr %argv.addr, align 8
  %97 = load i32, ptr %i, align 4
  %idxprom259 = sext i32 %97 to i64
  %arrayidx260 = getelementptr inbounds ptr, ptr %96, i64 %idxprom259
  %98 = load ptr, ptr %arrayidx260, align 8
  %call261 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %98) #8
  %cmp262 = icmp eq i64 %call261, 2
  br i1 %cmp262, label %for.inc385, label %if.then264

if.then264:                                       ; preds = %land.lhs.true258, %land.lhs.true251, %lor.lhs.false244, %lor.lhs.false196
  store ptr null, ptr %fin, align 8
  %99 = load ptr, ptr %argv.addr, align 8
  %100 = load i32, ptr %i, align 4
  %idxprom265 = sext i32 %100 to i64
  %arrayidx266 = getelementptr inbounds ptr, ptr %99, i64 %idxprom265
  %101 = load ptr, ptr %arrayidx266, align 8
  store ptr %101, ptr %filenameinzip, align 8
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
  %102 = load ptr, ptr %filenameinzip, align 8
  %dosDate273 = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i64 0, i32 1
  %call274 = call i32 @filetime(ptr noundef %102, ptr noundef nonnull %zi, ptr noundef nonnull %dosDate273)
  %103 = load ptr, ptr %password, align 8
  %cmp275.not = icmp ne ptr %103, null
  %104 = load i32, ptr %err, align 4
  %cmp278 = icmp eq i32 %104, 0
  %or.cond17 = select i1 %cmp275.not, i1 %cmp278, i1 false
  br i1 %or.cond17, label %if.then280, label %if.end282

if.then280:                                       ; preds = %if.then264
  %105 = load ptr, ptr %filenameinzip, align 8
  %106 = load ptr, ptr %buf, align 8
  %107 = load i64, ptr %size_buf, align 8
  %call281 = call i32 @getFileCrc(ptr noundef %105, ptr noundef %106, i64 noundef %107, ptr noundef nonnull %crcFile)
  store i32 %call281, ptr %err, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.then280, %if.then264
  %108 = load ptr, ptr %filenameinzip, align 8
  %call283 = call i32 @isLargeFile(ptr noundef %108)
  store i32 %call283, ptr %zip64, align 4
  br label %while.cond284

while.cond284:                                    ; preds = %while.body293, %if.end282
  %storemerge7 = phi ptr [ %108, %if.end282 ], [ %incdec.ptr294, %while.body293 ]
  store ptr %storemerge7, ptr %savefilenameinzip, align 8
  %109 = load i8, ptr %storemerge7, align 1
  %cmp287 = icmp eq i8 %109, 92
  br i1 %cmp287, label %while.body293, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond284
  %110 = load ptr, ptr %savefilenameinzip, align 8
  %111 = load i8, ptr %110, align 1
  %cmp291 = icmp eq i8 %111, 47
  br i1 %cmp291, label %while.body293, label %while.end295

while.body293:                                    ; preds = %while.cond284, %lor.rhs
  %112 = load ptr, ptr %savefilenameinzip, align 8
  %incdec.ptr294 = getelementptr inbounds i8, ptr %112, i64 1
  br label %while.cond284, !llvm.loop !11

while.end295:                                     ; preds = %lor.rhs
  %113 = load i32, ptr %opt_exclude_path, align 4
  %tobool.not = icmp eq i32 %113, 0
  br i1 %tobool.not, label %if.end317, label %if.then296

if.then296:                                       ; preds = %while.end295
  store ptr null, ptr %lastslash, align 8
  %114 = load ptr, ptr %savefilenameinzip, align 8
  br label %for.cond297

for.cond297:                                      ; preds = %for.inc309, %if.then296
  %storemerge8 = phi ptr [ %114, %if.then296 ], [ %incdec.ptr310, %for.inc309 ]
  store ptr %storemerge8, ptr %tmpptr, align 8
  %115 = load i8, ptr %storemerge8, align 1
  %tobool298.not = icmp eq i8 %115, 0
  br i1 %tobool298.not, label %for.end311, label %for.body299

for.body299:                                      ; preds = %for.cond297
  %116 = load ptr, ptr %tmpptr, align 8
  %117 = load i8, ptr %116, align 1
  %cmp301 = icmp eq i8 %117, 92
  br i1 %cmp301, label %if.then307, label %lor.lhs.false303

lor.lhs.false303:                                 ; preds = %for.body299
  %118 = load ptr, ptr %tmpptr, align 8
  %119 = load i8, ptr %118, align 1
  %cmp305 = icmp eq i8 %119, 47
  br i1 %cmp305, label %if.then307, label %for.inc309

if.then307:                                       ; preds = %lor.lhs.false303, %for.body299
  %120 = load ptr, ptr %tmpptr, align 8
  store ptr %120, ptr %lastslash, align 8
  br label %for.inc309

for.inc309:                                       ; preds = %lor.lhs.false303, %if.then307
  %121 = load ptr, ptr %tmpptr, align 8
  %incdec.ptr310 = getelementptr inbounds i8, ptr %121, i64 1
  br label %for.cond297, !llvm.loop !12

for.end311:                                       ; preds = %for.cond297
  %122 = load ptr, ptr %lastslash, align 8
  %cmp312.not = icmp eq ptr %122, null
  br i1 %cmp312.not, label %if.end317, label %if.then314

if.then314:                                       ; preds = %for.end311
  %123 = load ptr, ptr %lastslash, align 8
  %add.ptr315 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %add.ptr315, ptr %savefilenameinzip, align 8
  br label %if.end317

if.end317:                                        ; preds = %for.end311, %if.then314, %while.end295
  %124 = load ptr, ptr %zf, align 8
  %125 = load ptr, ptr %savefilenameinzip, align 8
  %126 = load i32, ptr %opt_compress_level, align 4
  %cmp318.not = icmp eq i32 %126, 0
  %cond320 = select i1 %cmp318.not, i32 0, i32 8
  %127 = load ptr, ptr %password, align 8
  %128 = load i64, ptr %crcFile, align 8
  %129 = load i32, ptr %zip64, align 4
  %call321 = call i32 @zipOpenNewFileInZip3_64(ptr noundef %124, ptr noundef %125, ptr noundef nonnull %zi, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef %cond320, i32 noundef %126, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef %127, i64 noundef %128, i32 noundef %129) #8
  store i32 %call321, ptr %err, align 4
  %cmp322.not = icmp eq i32 %call321, 0
  br i1 %cmp322.not, label %if.else326, label %if.then324

if.then324:                                       ; preds = %if.end317
  %130 = load ptr, ptr %filenameinzip, align 8
  %call325 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, ptr noundef %130) #8
  br label %if.end333

if.else326:                                       ; preds = %if.end317
  %131 = load ptr, ptr %filenameinzip, align 8
  %call327 = call ptr @"\01_fopen"(ptr noundef %131, ptr noundef nonnull @.str.7) #8
  store ptr %call327, ptr %fin, align 8
  %cmp328 = icmp eq ptr %call327, null
  br i1 %cmp328, label %if.then330, label %if.end333

if.then330:                                       ; preds = %if.else326
  store i32 -1, ptr %err, align 4
  %132 = load ptr, ptr %filenameinzip, align 8
  %call331 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, ptr noundef %132) #8
  br label %if.end333

if.end333:                                        ; preds = %if.else326, %if.then330, %if.then324
  %133 = load i32, ptr %err, align 4
  %cmp334 = icmp eq i32 %133, 0
  br i1 %cmp334, label %do.body337, label %if.end368

do.body337:                                       ; preds = %if.end333, %do.cond360
  store i32 0, ptr %err, align 4
  %134 = load ptr, ptr %buf, align 8
  %135 = load i64, ptr %size_buf, align 8
  %136 = load ptr, ptr %fin, align 8
  %call338 = call i64 @fread(ptr noundef %134, i64 noundef 1, i64 noundef %135, ptr noundef %136) #8
  store i64 %call338, ptr %size_read, align 8
  %cmp339 = icmp ult i64 %call338, %135
  br i1 %cmp339, label %if.then341, label %if.end348

if.then341:                                       ; preds = %do.body337
  %137 = load ptr, ptr %fin, align 8
  %call342 = call i32 @feof(ptr noundef %137) #8
  %cmp343 = icmp eq i32 %call342, 0
  br i1 %cmp343, label %if.then345, label %if.end348

if.then345:                                       ; preds = %if.then341
  %138 = load ptr, ptr %filenameinzip, align 8
  %call346 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef %138) #8
  store i32 -1, ptr %err, align 4
  br label %if.end348

if.end348:                                        ; preds = %if.then341, %if.then345, %do.body337
  %139 = load i64, ptr %size_read, align 8
  %cmp349.not = icmp eq i64 %139, 0
  br i1 %cmp349.not, label %do.cond360, label %if.then351

if.then351:                                       ; preds = %if.end348
  %140 = load ptr, ptr %zf, align 8
  %141 = load ptr, ptr %buf, align 8
  %142 = load i64, ptr %size_read, align 8
  %conv352 = trunc i64 %142 to i32
  %call353 = call i32 @zipWriteInFileInZip(ptr noundef %140, ptr noundef %141, i32 noundef %conv352) #8
  store i32 %call353, ptr %err, align 4
  %cmp354 = icmp slt i32 %call353, 0
  br i1 %cmp354, label %if.then356, label %do.cond360

if.then356:                                       ; preds = %if.then351
  %143 = load ptr, ptr %filenameinzip, align 8
  %call357 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef %143) #8
  br label %do.cond360

do.cond360:                                       ; preds = %if.end348, %if.then356, %if.then351
  %144 = load i32, ptr %err, align 4
  %cmp361 = icmp eq i32 %144, 0
  %145 = load i64, ptr %size_read, align 8
  %cmp364 = icmp ne i64 %145, 0
  %146 = select i1 %cmp361, i1 %cmp364, i1 false
  br i1 %146, label %do.body337, label %if.end368, !llvm.loop !13

if.end368:                                        ; preds = %do.cond360, %if.end333
  %147 = load ptr, ptr %fin, align 8
  %tobool369.not = icmp eq ptr %147, null
  br i1 %tobool369.not, label %if.end372, label %if.then370

if.then370:                                       ; preds = %if.end368
  %148 = load ptr, ptr %fin, align 8
  %call371 = call i32 @fclose(ptr noundef %148) #8
  br label %if.end372

if.end372:                                        ; preds = %if.then370, %if.end368
  %149 = load i32, ptr %err, align 4
  %cmp373 = icmp slt i32 %149, 0
  br i1 %cmp373, label %if.then375, label %if.else376

if.then375:                                       ; preds = %if.end372
  store i32 -1, ptr %err, align 4
  br label %for.inc385

if.else376:                                       ; preds = %if.end372
  %150 = load ptr, ptr %zf, align 8
  %call377 = call i32 @zipCloseFileInZip(ptr noundef %150) #8
  store i32 %call377, ptr %err, align 4
  %cmp378.not = icmp eq i32 %call377, 0
  br i1 %cmp378.not, label %for.inc385, label %if.then380

if.then380:                                       ; preds = %if.else376
  %151 = load ptr, ptr %filenameinzip, align 8
  %call381 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, ptr noundef %151) #8
  br label %for.inc385

for.inc385:                                       ; preds = %land.lhs.true258, %if.else376, %if.then380, %if.then375
  %152 = load i32, ptr %i, align 4
  br label %for.cond183, !llvm.loop !14

for.end387:                                       ; preds = %for.cond183
  %153 = load ptr, ptr %zf, align 8
  %call388 = call i32 @zipClose(ptr noundef %153, ptr noundef null) #8
  %cmp389.not = icmp eq i32 %call388, 0
  br i1 %cmp389.not, label %if.end396, label %if.then391

if.then391:                                       ; preds = %for.end387
  %call393 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, ptr noundef nonnull %filename_try) #8
  br label %if.end396

if.else395:                                       ; preds = %if.end165
  %puts5 = call i32 @puts(ptr nonnull @str.2)
  br label %if.end396

if.end396:                                        ; preds = %for.end387, %if.then391, %if.else395
  %154 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %154) #8
  %155 = load i32, ptr %err, align 4
  store i32 %155, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end396, %if.then69, %if.then
  %156 = load i32, ptr %retval, align 4
  ret i32 %156
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @check_exist_file(ptr noundef %filename) #0 {
entry:
  %ftestexist = alloca ptr, align 8
  %ret = alloca i32, align 4
  store i32 1, ptr %ret, align 4
  %call = call ptr @"\01_fopen"(ptr noundef %filename, ptr noundef nonnull @.str.7) #8
  store ptr %call, ptr %ftestexist, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr %ftestexist, align 8
  %call1 = call i32 @fclose(ptr noundef %0) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %ret, align 4
  ret i32 %1
}

declare i32 @scanf(ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

declare ptr @zipOpen64(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @filetime(ptr noundef %f, ptr noundef %tmzip, ptr noundef %dt) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %tmzip.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %s = alloca %struct.stat, align 8
  %filedate = alloca ptr, align 8
  %tm_t = alloca i64, align 8
  %name = alloca [257 x i8], align 1
  %len = alloca i64, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %tmzip, ptr %tmzip.addr, align 8
  store i32 0, ptr %ret, align 4
  store i64 0, ptr %tm_t, align 8
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %f, ptr noundef nonnull dereferenceable(2) @.str.16) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %f.addr, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %cmp2 = icmp ugt i64 %call1, 256
  %spec.select = select i1 %cmp2, i64 256, i64 %call1
  store i64 %spec.select, ptr %len, align 8
  %1 = load ptr, ptr %f.addr, align 8
  %strncpy = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(1) %1, i64 255)
  %arrayidx = getelementptr inbounds [257 x i8], ptr %name, i64 0, i64 256
  store i8 0, ptr %arrayidx, align 1
  %sub = add i64 %spec.select, -1
  %arrayidx5 = getelementptr inbounds [257 x i8], ptr %name, i64 0, i64 %sub
  %2 = load i8, ptr %arrayidx5, align 1
  %cmp6 = icmp eq i8 %2, 47
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then
  %3 = load i64, ptr %len, align 8
  %sub9 = add i64 %3, -1
  %arrayidx10 = getelementptr inbounds [257 x i8], ptr %name, i64 0, i64 %sub9
  store i8 0, ptr %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then
  %call13 = call i32 @"\01_stat"(ptr noundef nonnull %name, ptr noundef nonnull %s) #8
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  %st_mtimespec = getelementptr inbounds %struct.stat, ptr %s, i64 0, i32 8
  %4 = load i64, ptr %st_mtimespec, align 8
  store i64 %4, ptr %tm_t, align 8
  store i32 1, ptr %ret, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end11, %if.then16, %entry
  %call19 = call ptr @localtime(ptr noundef nonnull %tm_t) #8
  store ptr %call19, ptr %filedate, align 8
  %5 = load i32, ptr %call19, align 8
  %6 = load ptr, ptr %tmzip.addr, align 8
  store i32 %5, ptr %6, align 4
  %tm_min = getelementptr inbounds %struct.tm, ptr %call19, i64 0, i32 1
  %7 = load i32, ptr %tm_min, align 4
  %tm_min21 = getelementptr inbounds %struct.tm_zip_s, ptr %6, i64 0, i32 1
  store i32 %7, ptr %tm_min21, align 4
  %8 = load ptr, ptr %filedate, align 8
  %tm_hour = getelementptr inbounds %struct.tm, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %tm_hour, align 8
  %10 = load ptr, ptr %tmzip.addr, align 8
  %tm_hour22 = getelementptr inbounds %struct.tm_zip_s, ptr %10, i64 0, i32 2
  store i32 %9, ptr %tm_hour22, align 4
  %tm_mday = getelementptr inbounds %struct.tm, ptr %8, i64 0, i32 3
  %11 = load i32, ptr %tm_mday, align 4
  %tm_mday23 = getelementptr inbounds %struct.tm_zip_s, ptr %10, i64 0, i32 3
  store i32 %11, ptr %tm_mday23, align 4
  %12 = load ptr, ptr %filedate, align 8
  %tm_mon = getelementptr inbounds %struct.tm, ptr %12, i64 0, i32 4
  %13 = load i32, ptr %tm_mon, align 8
  %14 = load ptr, ptr %tmzip.addr, align 8
  %tm_mon24 = getelementptr inbounds %struct.tm_zip_s, ptr %14, i64 0, i32 4
  store i32 %13, ptr %tm_mon24, align 4
  %tm_year = getelementptr inbounds %struct.tm, ptr %12, i64 0, i32 5
  %15 = load i32, ptr %tm_year, align 4
  %tm_year25 = getelementptr inbounds %struct.tm_zip_s, ptr %14, i64 0, i32 5
  store i32 %15, ptr %tm_year25, align 4
  %16 = load i32, ptr %ret, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @getFileCrc(ptr noundef %filenameinzip, ptr noundef %buf, i64 noundef %size_buf, ptr noundef %result_crc) #0 {
entry:
  %filenameinzip.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size_buf.addr = alloca i64, align 8
  %result_crc.addr = alloca ptr, align 8
  %calculate_crc = alloca i64, align 8
  %err = alloca i32, align 4
  %fin = alloca ptr, align 8
  %size_read = alloca i64, align 8
  store ptr %filenameinzip, ptr %filenameinzip.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size_buf, ptr %size_buf.addr, align 8
  store ptr %result_crc, ptr %result_crc.addr, align 8
  store i64 0, ptr %calculate_crc, align 8
  store i32 0, ptr %err, align 4
  %call = call ptr @"\01_fopen"(ptr noundef %filenameinzip, ptr noundef nonnull @.str.7) #8
  store ptr %call, ptr %fin, align 8
  store i64 0, ptr %size_read, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %err, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end, %do.cond
  store i32 0, ptr %err, align 4
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i64, ptr %size_buf.addr, align 8
  %3 = load ptr, ptr %fin, align 8
  %call3 = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %3) #8
  store i64 %call3, ptr %size_read, align 8
  %cmp4 = icmp ult i64 %call3, %2
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %do.body
  %4 = load ptr, ptr %fin, align 8
  %call6 = call i32 @feof(ptr noundef %4) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then5
  %5 = load ptr, ptr %filenameinzip.addr, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef %5) #8
  store i32 -1, ptr %err, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.then8, %do.body
  %6 = load i64, ptr %size_read, align 8
  %cmp12.not = icmp eq i64 %6, 0
  br i1 %cmp12.not, label %do.cond, label %if.then13

if.then13:                                        ; preds = %if.end11
  %7 = load i64, ptr %calculate_crc, align 8
  %8 = load ptr, ptr %buf.addr, align 8
  %9 = load i64, ptr %size_read, align 8
  %call14 = call i64 @crc32_z(i64 noundef %7, ptr noundef %8, i64 noundef %9) #8
  store i64 %call14, ptr %calculate_crc, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end11, %if.then13
  %10 = load i32, ptr %err, align 4
  %cmp16 = icmp eq i32 %10, 0
  %11 = load i64, ptr %size_read, align 8
  %cmp17 = icmp ne i64 %11, 0
  %12 = select i1 %cmp16, i1 %cmp17, i1 false
  br i1 %12, label %do.body, label %if.end18, !llvm.loop !15

if.end18:                                         ; preds = %do.cond, %if.end
  %13 = load ptr, ptr %fin, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end18
  %14 = load ptr, ptr %fin, align 8
  %call20 = call i32 @fclose(ptr noundef %14) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end18
  %15 = load i64, ptr %calculate_crc, align 8
  %16 = load ptr, ptr %result_crc.addr, align 8
  store i64 %15, ptr %16, align 8
  %17 = load ptr, ptr %filenameinzip.addr, align 8
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.17, ptr noundef %17, i64 noundef %15) #8
  %18 = load i32, ptr %err, align 4
  ret i32 %18
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @isLargeFile(ptr noundef %filename) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %largeFile = alloca i32, align 4
  %pFile = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 0, ptr %largeFile, align 4
  %call = call ptr @"\01_fopen"(ptr noundef %filename, ptr noundef nonnull @.str.7) #8
  store ptr %call, ptr %pFile, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %pFile, align 8
  %call1 = call i32 @fseeko(ptr noundef %0, i64 noundef 0, i32 noundef 2) #8
  %call2 = call i64 @ftello(ptr noundef %0) #8
  %1 = load ptr, ptr %filename.addr, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, ptr noundef %1, i64 noundef %call2) #8
  %cmp4 = icmp ugt i64 %call2, 4294967294
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %largeFile, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %2 = load ptr, ptr %pFile, align 8
  %call6 = call i32 @fclose(ptr noundef %2) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %3 = load i32, ptr %largeFile, align 4
  ret i32 %3
}

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

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strncpy(ptr noalias returned writeonly, ptr noalias nocapture readonly, i64) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
