; ModuleID = './source_snapshot/public_repos/zlib/contrib/minizip/minizip.c'
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %ret = alloca i32, align 4
  %zf = alloca ptr, align 8
  %errclose = alloca i32, align 4
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
  call void @do_banner()
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @do_help()
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %6 = load i8, ptr %5, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br i1 %cmp2, label %if.then4, label %if.else59

if.then4:                                         ; preds = %for.body
  %7 = load ptr, ptr %argv.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 %idxprom5
  %9 = load ptr, ptr %arrayidx6, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %add.ptr, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end58, %if.then4
  %10 = load ptr, ptr %p, align 8
  %11 = load i8, ptr %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr %c, align 1
  %14 = load i8, ptr %c, align 1
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp eq i32 %conv10, 111
  br i1 %cmp11, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %15 = load i8, ptr %c, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 79
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %lor.lhs.false, %while.body
  store i32 1, ptr %opt_overwrite, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16, %lor.lhs.false
  %16 = load i8, ptr %c, align 1
  %conv17 = sext i8 %16 to i32
  %cmp18 = icmp eq i32 %conv17, 97
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %17 = load i8, ptr %c, align 1
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp eq i32 %conv21, 65
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false20, %if.end
  store i32 2, ptr %opt_overwrite, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %lor.lhs.false20
  %18 = load i8, ptr %c, align 1
  %conv26 = sext i8 %18 to i32
  %cmp27 = icmp sge i32 %conv26, 48
  br i1 %cmp27, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end25
  %19 = load i8, ptr %c, align 1
  %conv29 = sext i8 %19 to i32
  %cmp30 = icmp sle i32 %conv29, 57
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %land.lhs.true
  %20 = load i8, ptr %c, align 1
  %conv33 = sext i8 %20 to i32
  %sub = sub nsw i32 %conv33, 48
  store i32 %sub, ptr %opt_compress_level, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true, %if.end25
  %21 = load i8, ptr %c, align 1
  %conv35 = sext i8 %21 to i32
  %cmp36 = icmp eq i32 %conv35, 106
  br i1 %cmp36, label %if.then42, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end34
  %22 = load i8, ptr %c, align 1
  %conv39 = sext i8 %22 to i32
  %cmp40 = icmp eq i32 %conv39, 74
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false38, %if.end34
  store i32 1, ptr %opt_exclude_path, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %lor.lhs.false38
  %23 = load i8, ptr %c, align 1
  %conv44 = sext i8 %23 to i32
  %cmp45 = icmp eq i32 %conv44, 112
  br i1 %cmp45, label %land.lhs.true51, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end43
  %24 = load i8, ptr %c, align 1
  %conv48 = sext i8 %24 to i32
  %cmp49 = icmp eq i32 %conv48, 80
  br i1 %cmp49, label %land.lhs.true51, label %if.end58

land.lhs.true51:                                  ; preds = %lor.lhs.false47, %if.end43
  %25 = load i32, ptr %i, align 4
  %add = add nsw i32 %25, 1
  %26 = load i32, ptr %argc.addr, align 4
  %cmp52 = icmp slt i32 %add, %26
  br i1 %cmp52, label %if.then54, label %if.end58

if.then54:                                        ; preds = %land.lhs.true51
  %27 = load ptr, ptr %argv.addr, align 8
  %28 = load i32, ptr %i, align 4
  %add55 = add nsw i32 %28, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds ptr, ptr %27, i64 %idxprom56
  %29 = load ptr, ptr %arrayidx57, align 8
  store ptr %29, ptr %password, align 8
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %land.lhs.true51, %lor.lhs.false47
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end64

if.else59:                                        ; preds = %for.body
  %31 = load i32, ptr %zipfilenamearg, align 4
  %cmp60 = icmp eq i32 %31, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.else59
  %32 = load i32, ptr %i, align 4
  store i32 %32, ptr %zipfilenamearg, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.else59
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end64
  %33 = load i32, ptr %i, align 4
  %inc65 = add nsw i32 %33, 1
  store i32 %inc65, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %if.end66

if.end66:                                         ; preds = %for.end
  store i64 16384, ptr %size_buf, align 8
  %34 = load i64, ptr %size_buf, align 8
  %call = call ptr @malloc(i64 noundef %34) #5
  store ptr %call, ptr %buf, align 8
  %35 = load ptr, ptr %buf, align 8
  %cmp67 = icmp eq ptr %35, null
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 -104, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.end66
  %36 = load i32, ptr %zipfilenamearg, align 4
  %cmp72 = icmp eq i32 %36, 0
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.end71
  store i32 0, ptr %zipok, align 4
  br label %if.end165

if.else75:                                        ; preds = %if.end71
  store i32 0, ptr %dot_found, align 4
  store i32 1, ptr %zipok, align 4
  %arraydecay = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %37 = load ptr, ptr %argv.addr, align 8
  %38 = load i32, ptr %zipfilenamearg, align 4
  %idxprom76 = sext i32 %38 to i64
  %arrayidx77 = getelementptr inbounds ptr, ptr %37, i64 %idxprom76
  %39 = load ptr, ptr %arrayidx77, align 8
  %call78 = call ptr @__strncpy_chk(ptr noundef %arraydecay, ptr noundef %39, i64 noundef 255, i64 noundef 272) #6
  %arrayidx79 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 256
  store i8 0, ptr %arrayidx79, align 1
  %arraydecay80 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call81 = call i64 @strlen(ptr noundef %arraydecay80)
  %conv82 = trunc i64 %call81 to i32
  store i32 %conv82, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc94, %if.else75
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %len, align 4
  %cmp84 = icmp slt i32 %40, %41
  br i1 %cmp84, label %for.body86, label %for.end96

for.body86:                                       ; preds = %for.cond83
  %42 = load i32, ptr %i, align 4
  %idxprom87 = sext i32 %42 to i64
  %arrayidx88 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 %idxprom87
  %43 = load i8, ptr %arrayidx88, align 1
  %conv89 = sext i8 %43 to i32
  %cmp90 = icmp eq i32 %conv89, 46
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %for.body86
  store i32 1, ptr %dot_found, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %for.body86
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %44 = load i32, ptr %i, align 4
  %inc95 = add nsw i32 %44, 1
  store i32 %inc95, ptr %i, align 4
  br label %for.cond83, !llvm.loop !9

for.end96:                                        ; preds = %for.cond83
  %45 = load i32, ptr %dot_found, align 4
  %cmp97 = icmp eq i32 %45, 0
  br i1 %cmp97, label %if.then99, label %if.end102

if.then99:                                        ; preds = %for.end96
  %arraydecay100 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call101 = call ptr @__strcat_chk(ptr noundef %arraydecay100, ptr noundef @.str.1, i64 noundef 272) #6
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %for.end96
  %46 = load i32, ptr %opt_overwrite, align 4
  %cmp103 = icmp eq i32 %46, 2
  br i1 %cmp103, label %if.then105, label %if.else112

if.then105:                                       ; preds = %if.end102
  %arraydecay106 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call107 = call i32 @check_exist_file(ptr noundef %arraydecay106)
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.then105
  store i32 1, ptr %opt_overwrite, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.then105
  br label %if.end164

if.else112:                                       ; preds = %if.end102
  %47 = load i32, ptr %opt_overwrite, align 4
  %cmp113 = icmp eq i32 %47, 0
  br i1 %cmp113, label %if.then115, label %if.end163

if.then115:                                       ; preds = %if.else112
  %arraydecay116 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call117 = call i32 @check_exist_file(ptr noundef %arraydecay116)
  %cmp118 = icmp ne i32 %call117, 0
  br i1 %cmp118, label %if.then120, label %if.end162

if.then120:                                       ; preds = %if.then115
  store i8 0, ptr %rep, align 1
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then120
  %arraydecay121 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call122 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay121)
  %arraydecay123 = getelementptr inbounds [128 x i8], ptr %answer, i64 0, i64 0
  %call124 = call i32 (ptr, ...) @scanf(ptr noundef @.str.3, ptr noundef %arraydecay123)
  store i32 %call124, ptr %ret, align 4
  %48 = load i32, ptr %ret, align 4
  %cmp125 = icmp ne i32 %48, 1
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %do.body
  call void @exit(i32 noundef 1) #7
  unreachable

if.end128:                                        ; preds = %do.body
  %arrayidx129 = getelementptr inbounds [128 x i8], ptr %answer, i64 0, i64 0
  %49 = load i8, ptr %arrayidx129, align 1
  store i8 %49, ptr %rep, align 1
  %50 = load i8, ptr %rep, align 1
  %conv130 = sext i8 %50 to i32
  %cmp131 = icmp sge i32 %conv130, 97
  br i1 %cmp131, label %land.lhs.true133, label %if.end141

land.lhs.true133:                                 ; preds = %if.end128
  %51 = load i8, ptr %rep, align 1
  %conv134 = sext i8 %51 to i32
  %cmp135 = icmp sle i32 %conv134, 122
  br i1 %cmp135, label %if.then137, label %if.end141

if.then137:                                       ; preds = %land.lhs.true133
  %52 = load i8, ptr %rep, align 1
  %conv138 = sext i8 %52 to i32
  %sub139 = sub nsw i32 %conv138, 32
  %conv140 = trunc i32 %sub139 to i8
  store i8 %conv140, ptr %rep, align 1
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %land.lhs.true133, %if.end128
  br label %do.cond

do.cond:                                          ; preds = %if.end141
  %53 = load i8, ptr %rep, align 1
  %conv142 = sext i8 %53 to i32
  %cmp143 = icmp ne i32 %conv142, 89
  br i1 %cmp143, label %land.lhs.true145, label %land.end

land.lhs.true145:                                 ; preds = %do.cond
  %54 = load i8, ptr %rep, align 1
  %conv146 = sext i8 %54 to i32
  %cmp147 = icmp ne i32 %conv146, 78
  br i1 %cmp147, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true145
  %55 = load i8, ptr %rep, align 1
  %conv149 = sext i8 %55 to i32
  %cmp150 = icmp ne i32 %conv149, 65
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true145, %do.cond
  %56 = phi i1 [ false, %land.lhs.true145 ], [ false, %do.cond ], [ %cmp150, %land.rhs ]
  br i1 %56, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %land.end
  %57 = load i8, ptr %rep, align 1
  %conv152 = sext i8 %57 to i32
  %cmp153 = icmp eq i32 %conv152, 78
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %do.end
  store i32 0, ptr %zipok, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %do.end
  %58 = load i8, ptr %rep, align 1
  %conv157 = sext i8 %58 to i32
  %cmp158 = icmp eq i32 %conv157, 65
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end156
  store i32 2, ptr %opt_overwrite, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end156
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then115
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.else112
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end111
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.then74
  %59 = load i32, ptr %zipok, align 4
  %cmp166 = icmp eq i32 %59, 1
  br i1 %cmp166, label %if.then168, label %if.else395

if.then168:                                       ; preds = %if.end165
  %arraydecay169 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %60 = load i32, ptr %opt_overwrite, align 4
  %cmp170 = icmp eq i32 %60, 2
  %61 = zext i1 %cmp170 to i64
  %cond = select i1 %cmp170, i32 2, i32 0
  %call172 = call ptr @zipOpen64(ptr noundef %arraydecay169, i32 noundef %cond)
  store ptr %call172, ptr %zf, align 8
  %62 = load ptr, ptr %zf, align 8
  %cmp173 = icmp eq ptr %62, null
  br i1 %cmp173, label %if.then175, label %if.else178

if.then175:                                       ; preds = %if.then168
  %arraydecay176 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call177 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay176)
  store i32 -1, ptr %err, align 4
  br label %if.end181

if.else178:                                       ; preds = %if.then168
  %arraydecay179 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call180 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %arraydecay179)
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %63 = load i32, ptr %zipfilenamearg, align 4
  %add182 = add nsw i32 %63, 1
  store i32 %add182, ptr %i, align 4
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc385, %if.end181
  %64 = load i32, ptr %i, align 4
  %65 = load i32, ptr %argc.addr, align 4
  %cmp184 = icmp slt i32 %64, %65
  br i1 %cmp184, label %land.rhs186, label %land.end189

land.rhs186:                                      ; preds = %for.cond183
  %66 = load i32, ptr %err, align 4
  %cmp187 = icmp eq i32 %66, 0
  br label %land.end189

land.end189:                                      ; preds = %land.rhs186, %for.cond183
  %67 = phi i1 [ false, %for.cond183 ], [ %cmp187, %land.rhs186 ]
  br i1 %67, label %for.body190, label %for.end387

for.body190:                                      ; preds = %land.end189
  %68 = load ptr, ptr %argv.addr, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom191 = sext i32 %69 to i64
  %arrayidx192 = getelementptr inbounds ptr, ptr %68, i64 %idxprom191
  %70 = load ptr, ptr %arrayidx192, align 8
  %71 = load i8, ptr %70, align 1
  %conv193 = sext i8 %71 to i32
  %cmp194 = icmp eq i32 %conv193, 45
  br i1 %cmp194, label %land.lhs.true202, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %for.body190
  %72 = load ptr, ptr %argv.addr, align 8
  %73 = load i32, ptr %i, align 4
  %idxprom197 = sext i32 %73 to i64
  %arrayidx198 = getelementptr inbounds ptr, ptr %72, i64 %idxprom197
  %74 = load ptr, ptr %arrayidx198, align 8
  %75 = load i8, ptr %74, align 1
  %conv199 = sext i8 %75 to i32
  %cmp200 = icmp eq i32 %conv199, 47
  br i1 %cmp200, label %land.lhs.true202, label %if.then264

land.lhs.true202:                                 ; preds = %lor.lhs.false196, %for.body190
  %76 = load ptr, ptr %argv.addr, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom203 = sext i32 %77 to i64
  %arrayidx204 = getelementptr inbounds ptr, ptr %76, i64 %idxprom203
  %78 = load ptr, ptr %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %78, i64 1
  %79 = load i8, ptr %arrayidx205, align 1
  %conv206 = sext i8 %79 to i32
  %cmp207 = icmp eq i32 %conv206, 111
  br i1 %cmp207, label %land.lhs.true258, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %land.lhs.true202
  %80 = load ptr, ptr %argv.addr, align 8
  %81 = load i32, ptr %i, align 4
  %idxprom210 = sext i32 %81 to i64
  %arrayidx211 = getelementptr inbounds ptr, ptr %80, i64 %idxprom210
  %82 = load ptr, ptr %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i8, ptr %82, i64 1
  %83 = load i8, ptr %arrayidx212, align 1
  %conv213 = sext i8 %83 to i32
  %cmp214 = icmp eq i32 %conv213, 79
  br i1 %cmp214, label %land.lhs.true258, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %lor.lhs.false209
  %84 = load ptr, ptr %argv.addr, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom217 = sext i32 %85 to i64
  %arrayidx218 = getelementptr inbounds ptr, ptr %84, i64 %idxprom217
  %86 = load ptr, ptr %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i8, ptr %86, i64 1
  %87 = load i8, ptr %arrayidx219, align 1
  %conv220 = sext i8 %87 to i32
  %cmp221 = icmp eq i32 %conv220, 97
  br i1 %cmp221, label %land.lhs.true258, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false216
  %88 = load ptr, ptr %argv.addr, align 8
  %89 = load i32, ptr %i, align 4
  %idxprom224 = sext i32 %89 to i64
  %arrayidx225 = getelementptr inbounds ptr, ptr %88, i64 %idxprom224
  %90 = load ptr, ptr %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i8, ptr %90, i64 1
  %91 = load i8, ptr %arrayidx226, align 1
  %conv227 = sext i8 %91 to i32
  %cmp228 = icmp eq i32 %conv227, 65
  br i1 %cmp228, label %land.lhs.true258, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %lor.lhs.false223
  %92 = load ptr, ptr %argv.addr, align 8
  %93 = load i32, ptr %i, align 4
  %idxprom231 = sext i32 %93 to i64
  %arrayidx232 = getelementptr inbounds ptr, ptr %92, i64 %idxprom231
  %94 = load ptr, ptr %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i8, ptr %94, i64 1
  %95 = load i8, ptr %arrayidx233, align 1
  %conv234 = sext i8 %95 to i32
  %cmp235 = icmp eq i32 %conv234, 112
  br i1 %cmp235, label %land.lhs.true258, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %lor.lhs.false230
  %96 = load ptr, ptr %argv.addr, align 8
  %97 = load i32, ptr %i, align 4
  %idxprom238 = sext i32 %97 to i64
  %arrayidx239 = getelementptr inbounds ptr, ptr %96, i64 %idxprom238
  %98 = load ptr, ptr %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i8, ptr %98, i64 1
  %99 = load i8, ptr %arrayidx240, align 1
  %conv241 = sext i8 %99 to i32
  %cmp242 = icmp eq i32 %conv241, 80
  br i1 %cmp242, label %land.lhs.true258, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false237
  %100 = load ptr, ptr %argv.addr, align 8
  %101 = load i32, ptr %i, align 4
  %idxprom245 = sext i32 %101 to i64
  %arrayidx246 = getelementptr inbounds ptr, ptr %100, i64 %idxprom245
  %102 = load ptr, ptr %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i8, ptr %102, i64 1
  %103 = load i8, ptr %arrayidx247, align 1
  %conv248 = sext i8 %103 to i32
  %cmp249 = icmp sge i32 %conv248, 48
  br i1 %cmp249, label %land.lhs.true251, label %if.then264

land.lhs.true251:                                 ; preds = %lor.lhs.false244
  %104 = load ptr, ptr %argv.addr, align 8
  %105 = load i32, ptr %i, align 4
  %idxprom252 = sext i32 %105 to i64
  %arrayidx253 = getelementptr inbounds ptr, ptr %104, i64 %idxprom252
  %106 = load ptr, ptr %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i8, ptr %106, i64 1
  %107 = load i8, ptr %arrayidx254, align 1
  %conv255 = sext i8 %107 to i32
  %cmp256 = icmp sle i32 %conv255, 57
  br i1 %cmp256, label %land.lhs.true258, label %if.then264

land.lhs.true258:                                 ; preds = %land.lhs.true251, %lor.lhs.false237, %lor.lhs.false230, %lor.lhs.false223, %lor.lhs.false216, %lor.lhs.false209, %land.lhs.true202
  %108 = load ptr, ptr %argv.addr, align 8
  %109 = load i32, ptr %i, align 4
  %idxprom259 = sext i32 %109 to i64
  %arrayidx260 = getelementptr inbounds ptr, ptr %108, i64 %idxprom259
  %110 = load ptr, ptr %arrayidx260, align 8
  %call261 = call i64 @strlen(ptr noundef %110)
  %cmp262 = icmp eq i64 %call261, 2
  br i1 %cmp262, label %if.end384, label %if.then264

if.then264:                                       ; preds = %land.lhs.true258, %land.lhs.true251, %lor.lhs.false244, %lor.lhs.false196
  store ptr null, ptr %fin, align 8
  %111 = load ptr, ptr %argv.addr, align 8
  %112 = load i32, ptr %i, align 4
  %idxprom265 = sext i32 %112 to i64
  %arrayidx266 = getelementptr inbounds ptr, ptr %111, i64 %idxprom265
  %113 = load ptr, ptr %arrayidx266, align 8
  store ptr %113, ptr %filenameinzip, align 8
  store i64 0, ptr %crcFile, align 8
  store i32 0, ptr %zip64, align 4
  %tmz_date = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 0
  %tm_year = getelementptr inbounds %struct.tm_zip_s, ptr %tmz_date, i32 0, i32 5
  store i32 0, ptr %tm_year, align 4
  %tmz_date267 = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 0
  %tm_mon = getelementptr inbounds %struct.tm_zip_s, ptr %tmz_date267, i32 0, i32 4
  store i32 0, ptr %tm_mon, align 8
  %tmz_date268 = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 0
  %tm_mday = getelementptr inbounds %struct.tm_zip_s, ptr %tmz_date268, i32 0, i32 3
  store i32 0, ptr %tm_mday, align 4
  %tmz_date269 = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 0
  %tm_hour = getelementptr inbounds %struct.tm_zip_s, ptr %tmz_date269, i32 0, i32 2
  store i32 0, ptr %tm_hour, align 8
  %tmz_date270 = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 0
  %tm_min = getelementptr inbounds %struct.tm_zip_s, ptr %tmz_date270, i32 0, i32 1
  store i32 0, ptr %tm_min, align 4
  %tmz_date271 = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 0
  %tm_sec = getelementptr inbounds %struct.tm_zip_s, ptr %tmz_date271, i32 0, i32 0
  store i32 0, ptr %tm_sec, align 8
  %dosDate = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 1
  store i64 0, ptr %dosDate, align 8
  %internal_fa = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 2
  store i64 0, ptr %internal_fa, align 8
  %external_fa = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 3
  store i64 0, ptr %external_fa, align 8
  %114 = load ptr, ptr %filenameinzip, align 8
  %tmz_date272 = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 0
  %dosDate273 = getelementptr inbounds %struct.zip_fileinfo, ptr %zi, i32 0, i32 1
  %call274 = call i32 @filetime(ptr noundef %114, ptr noundef %tmz_date272, ptr noundef %dosDate273)
  %115 = load ptr, ptr %password, align 8
  %cmp275 = icmp ne ptr %115, null
  br i1 %cmp275, label %land.lhs.true277, label %if.end282

land.lhs.true277:                                 ; preds = %if.then264
  %116 = load i32, ptr %err, align 4
  %cmp278 = icmp eq i32 %116, 0
  br i1 %cmp278, label %if.then280, label %if.end282

if.then280:                                       ; preds = %land.lhs.true277
  %117 = load ptr, ptr %filenameinzip, align 8
  %118 = load ptr, ptr %buf, align 8
  %119 = load i64, ptr %size_buf, align 8
  %call281 = call i32 @getFileCrc(ptr noundef %117, ptr noundef %118, i64 noundef %119, ptr noundef %crcFile)
  store i32 %call281, ptr %err, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.then280, %land.lhs.true277, %if.then264
  %120 = load ptr, ptr %filenameinzip, align 8
  %call283 = call i32 @isLargeFile(ptr noundef %120)
  store i32 %call283, ptr %zip64, align 4
  %121 = load ptr, ptr %filenameinzip, align 8
  store ptr %121, ptr %savefilenameinzip, align 8
  br label %while.cond284

while.cond284:                                    ; preds = %while.body293, %if.end282
  %122 = load ptr, ptr %savefilenameinzip, align 8
  %arrayidx285 = getelementptr inbounds i8, ptr %122, i64 0
  %123 = load i8, ptr %arrayidx285, align 1
  %conv286 = sext i8 %123 to i32
  %cmp287 = icmp eq i32 %conv286, 92
  br i1 %cmp287, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond284
  %124 = load ptr, ptr %savefilenameinzip, align 8
  %arrayidx289 = getelementptr inbounds i8, ptr %124, i64 0
  %125 = load i8, ptr %arrayidx289, align 1
  %conv290 = sext i8 %125 to i32
  %cmp291 = icmp eq i32 %conv290, 47
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond284
  %126 = phi i1 [ true, %while.cond284 ], [ %cmp291, %lor.rhs ]
  br i1 %126, label %while.body293, label %while.end295

while.body293:                                    ; preds = %lor.end
  %127 = load ptr, ptr %savefilenameinzip, align 8
  %incdec.ptr294 = getelementptr inbounds i8, ptr %127, i32 1
  store ptr %incdec.ptr294, ptr %savefilenameinzip, align 8
  br label %while.cond284, !llvm.loop !11

while.end295:                                     ; preds = %lor.end
  %128 = load i32, ptr %opt_exclude_path, align 4
  %tobool = icmp ne i32 %128, 0
  br i1 %tobool, label %if.then296, label %if.end317

if.then296:                                       ; preds = %while.end295
  store ptr null, ptr %lastslash, align 8
  %129 = load ptr, ptr %savefilenameinzip, align 8
  store ptr %129, ptr %tmpptr, align 8
  br label %for.cond297

for.cond297:                                      ; preds = %for.inc309, %if.then296
  %130 = load ptr, ptr %tmpptr, align 8
  %131 = load i8, ptr %130, align 1
  %tobool298 = icmp ne i8 %131, 0
  br i1 %tobool298, label %for.body299, label %for.end311

for.body299:                                      ; preds = %for.cond297
  %132 = load ptr, ptr %tmpptr, align 8
  %133 = load i8, ptr %132, align 1
  %conv300 = sext i8 %133 to i32
  %cmp301 = icmp eq i32 %conv300, 92
  br i1 %cmp301, label %if.then307, label %lor.lhs.false303

lor.lhs.false303:                                 ; preds = %for.body299
  %134 = load ptr, ptr %tmpptr, align 8
  %135 = load i8, ptr %134, align 1
  %conv304 = sext i8 %135 to i32
  %cmp305 = icmp eq i32 %conv304, 47
  br i1 %cmp305, label %if.then307, label %if.end308

if.then307:                                       ; preds = %lor.lhs.false303, %for.body299
  %136 = load ptr, ptr %tmpptr, align 8
  store ptr %136, ptr %lastslash, align 8
  br label %if.end308

if.end308:                                        ; preds = %if.then307, %lor.lhs.false303
  br label %for.inc309

for.inc309:                                       ; preds = %if.end308
  %137 = load ptr, ptr %tmpptr, align 8
  %incdec.ptr310 = getelementptr inbounds i8, ptr %137, i32 1
  store ptr %incdec.ptr310, ptr %tmpptr, align 8
  br label %for.cond297, !llvm.loop !12

for.end311:                                       ; preds = %for.cond297
  %138 = load ptr, ptr %lastslash, align 8
  %cmp312 = icmp ne ptr %138, null
  br i1 %cmp312, label %if.then314, label %if.end316

if.then314:                                       ; preds = %for.end311
  %139 = load ptr, ptr %lastslash, align 8
  %add.ptr315 = getelementptr inbounds i8, ptr %139, i64 1
  store ptr %add.ptr315, ptr %savefilenameinzip, align 8
  br label %if.end316

if.end316:                                        ; preds = %if.then314, %for.end311
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %while.end295
  %140 = load ptr, ptr %zf, align 8
  %141 = load ptr, ptr %savefilenameinzip, align 8
  %142 = load i32, ptr %opt_compress_level, align 4
  %cmp318 = icmp ne i32 %142, 0
  %143 = zext i1 %cmp318 to i64
  %cond320 = select i1 %cmp318, i32 8, i32 0
  %144 = load i32, ptr %opt_compress_level, align 4
  %145 = load ptr, ptr %password, align 8
  %146 = load i64, ptr %crcFile, align 8
  %147 = load i32, ptr %zip64, align 4
  %call321 = call i32 @zipOpenNewFileInZip3_64(ptr noundef %140, ptr noundef %141, ptr noundef %zi, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef %cond320, i32 noundef %144, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef %145, i64 noundef %146, i32 noundef %147)
  store i32 %call321, ptr %err, align 4
  %148 = load i32, ptr %err, align 4
  %cmp322 = icmp ne i32 %148, 0
  br i1 %cmp322, label %if.then324, label %if.else326

if.then324:                                       ; preds = %if.end317
  %149 = load ptr, ptr %filenameinzip, align 8
  %call325 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %149)
  br label %if.end333

if.else326:                                       ; preds = %if.end317
  %150 = load ptr, ptr %filenameinzip, align 8
  %call327 = call ptr @"\01_fopen"(ptr noundef %150, ptr noundef @.str.7)
  store ptr %call327, ptr %fin, align 8
  %151 = load ptr, ptr %fin, align 8
  %cmp328 = icmp eq ptr %151, null
  br i1 %cmp328, label %if.then330, label %if.end332

if.then330:                                       ; preds = %if.else326
  store i32 -1, ptr %err, align 4
  %152 = load ptr, ptr %filenameinzip, align 8
  %call331 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %152)
  br label %if.end332

if.end332:                                        ; preds = %if.then330, %if.else326
  br label %if.end333

if.end333:                                        ; preds = %if.end332, %if.then324
  %153 = load i32, ptr %err, align 4
  %cmp334 = icmp eq i32 %153, 0
  br i1 %cmp334, label %if.then336, label %if.end368

if.then336:                                       ; preds = %if.end333
  br label %do.body337

do.body337:                                       ; preds = %land.end366, %if.then336
  store i32 0, ptr %err, align 4
  %154 = load ptr, ptr %buf, align 8
  %155 = load i64, ptr %size_buf, align 8
  %156 = load ptr, ptr %fin, align 8
  %call338 = call i64 @fread(ptr noundef %154, i64 noundef 1, i64 noundef %155, ptr noundef %156)
  store i64 %call338, ptr %size_read, align 8
  %157 = load i64, ptr %size_read, align 8
  %158 = load i64, ptr %size_buf, align 8
  %cmp339 = icmp ult i64 %157, %158
  br i1 %cmp339, label %if.then341, label %if.end348

if.then341:                                       ; preds = %do.body337
  %159 = load ptr, ptr %fin, align 8
  %call342 = call i32 @feof(ptr noundef %159)
  %cmp343 = icmp eq i32 %call342, 0
  br i1 %cmp343, label %if.then345, label %if.end347

if.then345:                                       ; preds = %if.then341
  %160 = load ptr, ptr %filenameinzip, align 8
  %call346 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %160)
  store i32 -1, ptr %err, align 4
  br label %if.end347

if.end347:                                        ; preds = %if.then345, %if.then341
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %do.body337
  %161 = load i64, ptr %size_read, align 8
  %cmp349 = icmp ugt i64 %161, 0
  br i1 %cmp349, label %if.then351, label %if.end359

if.then351:                                       ; preds = %if.end348
  %162 = load ptr, ptr %zf, align 8
  %163 = load ptr, ptr %buf, align 8
  %164 = load i64, ptr %size_read, align 8
  %conv352 = trunc i64 %164 to i32
  %call353 = call i32 @zipWriteInFileInZip(ptr noundef %162, ptr noundef %163, i32 noundef %conv352)
  store i32 %call353, ptr %err, align 4
  %165 = load i32, ptr %err, align 4
  %cmp354 = icmp slt i32 %165, 0
  br i1 %cmp354, label %if.then356, label %if.end358

if.then356:                                       ; preds = %if.then351
  %166 = load ptr, ptr %filenameinzip, align 8
  %call357 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %166)
  br label %if.end358

if.end358:                                        ; preds = %if.then356, %if.then351
  br label %if.end359

if.end359:                                        ; preds = %if.end358, %if.end348
  br label %do.cond360

do.cond360:                                       ; preds = %if.end359
  %167 = load i32, ptr %err, align 4
  %cmp361 = icmp eq i32 %167, 0
  br i1 %cmp361, label %land.rhs363, label %land.end366

land.rhs363:                                      ; preds = %do.cond360
  %168 = load i64, ptr %size_read, align 8
  %cmp364 = icmp ugt i64 %168, 0
  br label %land.end366

land.end366:                                      ; preds = %land.rhs363, %do.cond360
  %169 = phi i1 [ false, %do.cond360 ], [ %cmp364, %land.rhs363 ]
  br i1 %169, label %do.body337, label %do.end367, !llvm.loop !13

do.end367:                                        ; preds = %land.end366
  br label %if.end368

if.end368:                                        ; preds = %do.end367, %if.end333
  %170 = load ptr, ptr %fin, align 8
  %tobool369 = icmp ne ptr %170, null
  br i1 %tobool369, label %if.then370, label %if.end372

if.then370:                                       ; preds = %if.end368
  %171 = load ptr, ptr %fin, align 8
  %call371 = call i32 @fclose(ptr noundef %171)
  br label %if.end372

if.end372:                                        ; preds = %if.then370, %if.end368
  %172 = load i32, ptr %err, align 4
  %cmp373 = icmp slt i32 %172, 0
  br i1 %cmp373, label %if.then375, label %if.else376

if.then375:                                       ; preds = %if.end372
  store i32 -1, ptr %err, align 4
  br label %if.end383

if.else376:                                       ; preds = %if.end372
  %173 = load ptr, ptr %zf, align 8
  %call377 = call i32 @zipCloseFileInZip(ptr noundef %173)
  store i32 %call377, ptr %err, align 4
  %174 = load i32, ptr %err, align 4
  %cmp378 = icmp ne i32 %174, 0
  br i1 %cmp378, label %if.then380, label %if.end382

if.then380:                                       ; preds = %if.else376
  %175 = load ptr, ptr %filenameinzip, align 8
  %call381 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, ptr noundef %175)
  br label %if.end382

if.end382:                                        ; preds = %if.then380, %if.else376
  br label %if.end383

if.end383:                                        ; preds = %if.end382, %if.then375
  br label %if.end384

if.end384:                                        ; preds = %if.end383, %land.lhs.true258
  br label %for.inc385

for.inc385:                                       ; preds = %if.end384
  %176 = load i32, ptr %i, align 4
  %inc386 = add nsw i32 %176, 1
  store i32 %inc386, ptr %i, align 4
  br label %for.cond183, !llvm.loop !14

for.end387:                                       ; preds = %land.end189
  %177 = load ptr, ptr %zf, align 8
  %call388 = call i32 @zipClose(ptr noundef %177, ptr noundef null)
  store i32 %call388, ptr %errclose, align 4
  %178 = load i32, ptr %errclose, align 4
  %cmp389 = icmp ne i32 %178, 0
  br i1 %cmp389, label %if.then391, label %if.end394

if.then391:                                       ; preds = %for.end387
  %arraydecay392 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call393 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, ptr noundef %arraydecay392)
  br label %if.end394

if.end394:                                        ; preds = %if.then391, %for.end387
  br label %if.end396

if.else395:                                       ; preds = %if.end165
  call void @do_help()
  br label %if.end396

if.end396:                                        ; preds = %if.else395, %if.end394
  %179 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %179)
  %180 = load i32, ptr %err, align 4
  store i32 %180, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end396, %if.then69, %if.then
  %181 = load i32, ptr %retval, align 4
  ret i32 %181
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @do_banner() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @do_help() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @check_exist_file(ptr noundef %filename) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %ftestexist = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  store i32 1, ptr %ret, align 4
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.7)
  store ptr %call, ptr %ftestexist, align 8
  %1 = load ptr, ptr %ftestexist, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %ftestexist, align 8
  %call1 = call i32 @fclose(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %ret, align 4
  ret i32 %3
}

declare i32 @scanf(ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

declare ptr @zipOpen64(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @filetime(ptr noundef %f, ptr noundef %tmzip, ptr noundef %dt) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %tmzip.addr = alloca ptr, align 8
  %dt.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %s = alloca %struct.stat, align 8
  %filedate = alloca ptr, align 8
  %tm_t = alloca i64, align 8
  %name = alloca [257 x i8], align 1
  %len = alloca i64, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %tmzip, ptr %tmzip.addr, align 8
  store ptr %dt, ptr %dt.addr, align 8
  %0 = load ptr, ptr %dt.addr, align 8
  store i32 0, ptr %ret, align 4
  store i64 0, ptr %tm_t, align 8
  %1 = load ptr, ptr %f.addr, align 8
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.16)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %f.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %2)
  store i64 %call1, ptr %len, align 8
  %3 = load i64, ptr %len, align 8
  %cmp2 = icmp ugt i64 %3, 256
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i64 256, ptr %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %arraydecay = getelementptr inbounds [257 x i8], ptr %name, i64 0, i64 0
  %4 = load ptr, ptr %f.addr, align 8
  %call4 = call ptr @__strncpy_chk(ptr noundef %arraydecay, ptr noundef %4, i64 noundef 255, i64 noundef 257) #6
  %arrayidx = getelementptr inbounds [257 x i8], ptr %name, i64 0, i64 256
  store i8 0, ptr %arrayidx, align 1
  %5 = load i64, ptr %len, align 8
  %sub = sub i64 %5, 1
  %arrayidx5 = getelementptr inbounds [257 x i8], ptr %name, i64 0, i64 %sub
  %6 = load i8, ptr %arrayidx5, align 1
  %conv = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv, 47
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %7 = load i64, ptr %len, align 8
  %sub9 = sub i64 %7, 1
  %arrayidx10 = getelementptr inbounds [257 x i8], ptr %name, i64 0, i64 %sub9
  store i8 0, ptr %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  %arraydecay12 = getelementptr inbounds [257 x i8], ptr %name, i64 0, i64 0
  %call13 = call i32 @"\01_stat"(ptr noundef %arraydecay12, ptr noundef %s)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  %st_mtimespec = getelementptr inbounds %struct.stat, ptr %s, i32 0, i32 8
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %st_mtimespec, i32 0, i32 0
  %8 = load i64, ptr %tv_sec, align 8
  store i64 %8, ptr %tm_t, align 8
  store i32 1, ptr %ret, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry
  %call19 = call ptr @localtime(ptr noundef %tm_t)
  store ptr %call19, ptr %filedate, align 8
  %9 = load ptr, ptr %filedate, align 8
  %tm_sec = getelementptr inbounds %struct.tm, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %tm_sec, align 8
  %11 = load ptr, ptr %tmzip.addr, align 8
  %tm_sec20 = getelementptr inbounds %struct.tm_zip_s, ptr %11, i32 0, i32 0
  store i32 %10, ptr %tm_sec20, align 4
  %12 = load ptr, ptr %filedate, align 8
  %tm_min = getelementptr inbounds %struct.tm, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %tm_min, align 4
  %14 = load ptr, ptr %tmzip.addr, align 8
  %tm_min21 = getelementptr inbounds %struct.tm_zip_s, ptr %14, i32 0, i32 1
  store i32 %13, ptr %tm_min21, align 4
  %15 = load ptr, ptr %filedate, align 8
  %tm_hour = getelementptr inbounds %struct.tm, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %tm_hour, align 8
  %17 = load ptr, ptr %tmzip.addr, align 8
  %tm_hour22 = getelementptr inbounds %struct.tm_zip_s, ptr %17, i32 0, i32 2
  store i32 %16, ptr %tm_hour22, align 4
  %18 = load ptr, ptr %filedate, align 8
  %tm_mday = getelementptr inbounds %struct.tm, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %tm_mday, align 4
  %20 = load ptr, ptr %tmzip.addr, align 8
  %tm_mday23 = getelementptr inbounds %struct.tm_zip_s, ptr %20, i32 0, i32 3
  store i32 %19, ptr %tm_mday23, align 4
  %21 = load ptr, ptr %filedate, align 8
  %tm_mon = getelementptr inbounds %struct.tm, ptr %21, i32 0, i32 4
  %22 = load i32, ptr %tm_mon, align 8
  %23 = load ptr, ptr %tmzip.addr, align 8
  %tm_mon24 = getelementptr inbounds %struct.tm_zip_s, ptr %23, i32 0, i32 4
  store i32 %22, ptr %tm_mon24, align 4
  %24 = load ptr, ptr %filedate, align 8
  %tm_year = getelementptr inbounds %struct.tm, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %tm_year, align 4
  %26 = load ptr, ptr %tmzip.addr, align 8
  %tm_year25 = getelementptr inbounds %struct.tm_zip_s, ptr %26, i32 0, i32 5
  store i32 %25, ptr %tm_year25, align 4
  %27 = load i32, ptr %ret, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %filenameinzip.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.7)
  store ptr %call, ptr %fin, align 8
  store i64 0, ptr %size_read, align 8
  %1 = load ptr, ptr %fin, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %err, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end18

if.then2:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then2
  store i32 0, ptr %err, align 4
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load i64, ptr %size_buf.addr, align 8
  %5 = load ptr, ptr %fin, align 8
  %call3 = call i64 @fread(ptr noundef %3, i64 noundef 1, i64 noundef %4, ptr noundef %5)
  store i64 %call3, ptr %size_read, align 8
  %6 = load i64, ptr %size_read, align 8
  %7 = load i64, ptr %size_buf.addr, align 8
  %cmp4 = icmp ult i64 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %do.body
  %8 = load ptr, ptr %fin, align 8
  %call6 = call i32 @feof(ptr noundef %8)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  %9 = load ptr, ptr %filenameinzip.addr, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %9)
  store i32 -1, ptr %err, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %do.body
  %10 = load i64, ptr %size_read, align 8
  %cmp12 = icmp ugt i64 %10, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %11 = load i64, ptr %calculate_crc, align 8
  %12 = load ptr, ptr %buf.addr, align 8
  %13 = load i64, ptr %size_read, align 8
  %call14 = call i64 @crc32_z(i64 noundef %11, ptr noundef %12, i64 noundef %13)
  store i64 %call14, ptr %calculate_crc, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  br label %do.cond

do.cond:                                          ; preds = %if.end15
  %14 = load i32, ptr %err, align 4
  %cmp16 = icmp eq i32 %14, 0
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %15 = load i64, ptr %size_read, align 8
  %cmp17 = icmp ugt i64 %15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %16 = phi i1 [ false, %do.cond ], [ %cmp17, %land.rhs ]
  br i1 %16, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %land.end
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end
  %17 = load ptr, ptr %fin, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end18
  %18 = load ptr, ptr %fin, align 8
  %call20 = call i32 @fclose(ptr noundef %18)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end18
  %19 = load i64, ptr %calculate_crc, align 8
  %20 = load ptr, ptr %result_crc.addr, align 8
  store i64 %19, ptr %20, align 8
  %21 = load ptr, ptr %filenameinzip.addr, align 8
  %22 = load i64, ptr %calculate_crc, align 8
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, ptr noundef %21, i64 noundef %22)
  %23 = load i32, ptr %err, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @isLargeFile(ptr noundef %filename) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %largeFile = alloca i32, align 4
  %pos = alloca i64, align 8
  %pFile = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 0, ptr %largeFile, align 4
  store i64 0, ptr %pos, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.7)
  store ptr %call, ptr %pFile, align 8
  %1 = load ptr, ptr %pFile, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pFile, align 8
  %call1 = call i32 @fseeko(ptr noundef %2, i64 noundef 0, i32 noundef 2)
  %3 = load ptr, ptr %pFile, align 8
  %call2 = call i64 @ftello(ptr noundef %3)
  store i64 %call2, ptr %pos, align 8
  %4 = load ptr, ptr %filename.addr, align 8
  %5 = load i64, ptr %pos, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, ptr noundef %4, i64 noundef %5)
  %6 = load i64, ptr %pos, align 8
  %cmp4 = icmp uge i64 %6, 4294967295
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %largeFile, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %7 = load ptr, ptr %pFile, align 8
  %call6 = call i32 @fclose(ptr noundef %7)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %8 = load i32, ptr %largeFile, align 4
  ret i32 %8
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

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
