; ModuleID = './source_snapshot/public_repos/zlib/contrib/minizip/miniunz.c'
source_filename = "./source_snapshot/public_repos/zlib/contrib/minizip/miniunz.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.unz_global_info64_s = type { i64, i64 }
%struct.unz_file_info64_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.tm_unz_s }
%struct.tm_unz_s = type { i32, i32, i32, i32, i32, i32 }
%struct.utimbuf = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot open %s or %s.zip\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s opened\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Error changing into %s, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"MiniUnz 1.1, demo of zLib + Unz package written by Gilles Vollant\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"more info at https://www.winimage.com/zLibDll/unzip.html\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [321 x i8] c"Usage : miniunz [-e] [-x] [-v] [-l] [-o] [-p password] file.zip [file_to_extr.] [-d extractdir]\0A\0A  -e  Extract without pathname (junk paths)\0A  -x  Extract with pathname\0A  -v  list files\0A  -l  list files\0A  -d  directory to extract into\0A  -o  overwrite files without prompting\0A  -p  extract encrypted file using password\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"error %d with zipfile in unzGetGlobalInfo\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"  Length  Method     Size Ratio   Date    Time   CRC-32     Name\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"  ------  ------     ---- -----   ----    ----   ------     ----\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"error %d with zipfile in unzGetCurrentFileInfo\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Stored\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Defl:N\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Defl:X\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Defl:F\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"BZip2 \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Unkn. \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"  %6s%c\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c" %3lu%%  %2.2lu-%2.2lu-%2.2lu  %2.2lu:%2.2lu  %8.8lx   %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"error %d with zipfile in unzGoToNextFile\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Error allocating memory\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"creating directory: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"error %d with zipfile in unzOpenCurrentFilePassword\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"The file %s exists. Overwrite ? [y]es, [n]o, [A]ll: \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%1s\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"error opening %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c" extracting: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"error %d with zipfile in unzReadCurrentFile\0A\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"error in writing extracted file\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"error %d with zipfile in unzCloseCurrentFile\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"couldn't create directory %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"file %s not found in the zipfile\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zipfilename = alloca ptr, align 8
  %filename_to_extract = alloca ptr, align 8
  %password = alloca ptr, align 8
  %filename_try = alloca [272 x i8], align 1
  %i = alloca i32, align 4
  %ret_value = alloca i32, align 4
  %opt_do_list = alloca i32, align 4
  %opt_do_extract = alloca i32, align 4
  %opt_do_extract_withoutpath = alloca i32, align 4
  %opt_overwrite = alloca i32, align 4
  %opt_extractdir = alloca i32, align 4
  %dirname = alloca ptr, align 8
  %uf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %c = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %zipfilename, align 8
  store ptr null, ptr %filename_to_extract, align 8
  store ptr null, ptr %password, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %filename_try, i8 0, i64 272, i1 false)
  store i32 0, ptr %ret_value, align 4
  store i32 0, ptr %opt_do_list, align 4
  store i32 1, ptr %opt_do_extract, align 4
  store i32 0, ptr %opt_do_extract_withoutpath, align 4
  store i32 0, ptr %opt_overwrite, align 4
  store i32 0, ptr %opt_extractdir, align 4
  store ptr null, ptr %dirname, align 8
  store ptr null, ptr %uf, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_0()
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_1()
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
  br i1 %cmp2, label %if.then4, label %if.else79

if.then4:                                         ; preds = %for.body
  %7 = load ptr, ptr %argv.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 %idxprom5
  %9 = load ptr, ptr %arrayidx6, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %add.ptr, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end78, %if.then4
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
  %cmp11 = icmp eq i32 %conv10, 108
  br i1 %cmp11, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %15 = load i8, ptr %c, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 76
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %lor.lhs.false, %while.body
  store i32 1, ptr %opt_do_list, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16, %lor.lhs.false
  %16 = load i8, ptr %c, align 1
  %conv17 = sext i8 %16 to i32
  %cmp18 = icmp eq i32 %conv17, 118
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %17 = load i8, ptr %c, align 1
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp eq i32 %conv21, 86
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false20, %if.end
  store i32 1, ptr %opt_do_list, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %lor.lhs.false20
  %18 = load i8, ptr %c, align 1
  %conv26 = sext i8 %18 to i32
  %cmp27 = icmp eq i32 %conv26, 120
  br i1 %cmp27, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end25
  %19 = load i8, ptr %c, align 1
  %conv30 = sext i8 %19 to i32
  %cmp31 = icmp eq i32 %conv30, 88
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false29, %if.end25
  store i32 1, ptr %opt_do_extract, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %lor.lhs.false29
  %20 = load i8, ptr %c, align 1
  %conv35 = sext i8 %20 to i32
  %cmp36 = icmp eq i32 %conv35, 101
  br i1 %cmp36, label %if.then42, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end34
  %21 = load i8, ptr %c, align 1
  %conv39 = sext i8 %21 to i32
  %cmp40 = icmp eq i32 %conv39, 69
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false38, %if.end34
  store i32 1, ptr %opt_do_extract_withoutpath, align 4
  store i32 1, ptr %opt_do_extract, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %lor.lhs.false38
  %22 = load i8, ptr %c, align 1
  %conv44 = sext i8 %22 to i32
  %cmp45 = icmp eq i32 %conv44, 111
  br i1 %cmp45, label %if.then51, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end43
  %23 = load i8, ptr %c, align 1
  %conv48 = sext i8 %23 to i32
  %cmp49 = icmp eq i32 %conv48, 79
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false47, %if.end43
  store i32 1, ptr %opt_overwrite, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false47
  %24 = load i8, ptr %c, align 1
  %conv53 = sext i8 %24 to i32
  %cmp54 = icmp eq i32 %conv53, 100
  br i1 %cmp54, label %if.then60, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end52
  %25 = load i8, ptr %c, align 1
  %conv57 = sext i8 %25 to i32
  %cmp58 = icmp eq i32 %conv57, 68
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %lor.lhs.false56, %if.end52
  store i32 1, ptr %opt_extractdir, align 4
  %26 = load ptr, ptr %argv.addr, align 8
  %27 = load i32, ptr %i, align 4
  %add = add nsw i32 %27, 1
  %idxprom61 = sext i32 %add to i64
  %arrayidx62 = getelementptr inbounds ptr, ptr %26, i64 %idxprom61
  %28 = load ptr, ptr %arrayidx62, align 8
  store ptr %28, ptr %dirname, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %lor.lhs.false56
  %29 = load i8, ptr %c, align 1
  %conv64 = sext i8 %29 to i32
  %cmp65 = icmp eq i32 %conv64, 112
  br i1 %cmp65, label %land.lhs.true, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end63
  %30 = load i8, ptr %c, align 1
  %conv68 = sext i8 %30 to i32
  %cmp69 = icmp eq i32 %conv68, 80
  br i1 %cmp69, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %lor.lhs.false67, %if.end63
  %31 = load i32, ptr %i, align 4
  %add71 = add nsw i32 %31, 1
  %32 = load i32, ptr %argc.addr, align 4
  %cmp72 = icmp slt i32 %add71, %32
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %argv.addr, align 8
  %34 = load i32, ptr %i, align 4
  %add75 = add nsw i32 %34, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds ptr, ptr %33, i64 %idxprom76
  %35 = load ptr, ptr %arrayidx77, align 8
  store ptr %35, ptr %password, align 8
  %36 = load i32, ptr %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %land.lhs.true, %lor.lhs.false67
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end94

if.else79:                                        ; preds = %for.body
  %37 = load ptr, ptr %zipfilename, align 8
  %cmp80 = icmp eq ptr %37, null
  br i1 %cmp80, label %if.then82, label %if.else85

if.then82:                                        ; preds = %if.else79
  %38 = load ptr, ptr %argv.addr, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom83 = sext i32 %39 to i64
  %arrayidx84 = getelementptr inbounds ptr, ptr %38, i64 %idxprom83
  %40 = load ptr, ptr %arrayidx84, align 8
  store ptr %40, ptr %zipfilename, align 8
  br label %if.end93

if.else85:                                        ; preds = %if.else79
  %41 = load ptr, ptr %filename_to_extract, align 8
  %cmp86 = icmp eq ptr %41, null
  br i1 %cmp86, label %land.lhs.true88, label %if.end92

land.lhs.true88:                                  ; preds = %if.else85
  %42 = load i32, ptr %opt_extractdir, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.end92, label %if.then89

if.then89:                                        ; preds = %land.lhs.true88
  %43 = load ptr, ptr %argv.addr, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %44 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %43, i64 %idxprom90
  %45 = load ptr, ptr %arrayidx91, align 8
  store ptr %45, ptr %filename_to_extract, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %land.lhs.true88, %if.else85
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then82
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end94
  %46 = load i32, ptr %i, align 4
  %inc95 = add nsw i32 %46, 1
  store i32 %inc95, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %if.end96

if.end96:                                         ; preds = %for.end
  %47 = load ptr, ptr %zipfilename, align 8
  %cmp97 = icmp ne ptr %47, null
  br i1 %cmp97, label %if.then99, label %if.end110

if.then99:                                        ; preds = %if.end96
  %arraydecay = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %48 = load ptr, ptr %zipfilename, align 8
  %call = call ptr @__strncpy_chk(ptr noundef %arraydecay, ptr noundef %48, i64 noundef 255, i64 noundef 272) #8
  %arrayidx100 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 256
  store i8 0, ptr %arrayidx100, align 1
  %49 = load ptr, ptr %zipfilename, align 8
  %call101 = call ptr @unzOpen64(ptr noundef %49)
  store ptr %call101, ptr %uf, align 8
  %50 = load ptr, ptr %uf, align 8
  %cmp102 = icmp eq ptr %50, null
  br i1 %cmp102, label %if.then104, label %if.end109

if.then104:                                       ; preds = %if.then99
  %arraydecay105 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call106 = call ptr @__strcat_chk(ptr noundef %arraydecay105, ptr noundef @.str, i64 noundef 272) #8
  %arraydecay107 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call108 = call ptr @unzOpen64(ptr noundef %arraydecay107)
  store ptr %call108, ptr %uf, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.then99
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end96
  %51 = load ptr, ptr %uf, align 8
  %cmp111 = icmp eq ptr %51, null
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end110
  %52 = load ptr, ptr %zipfilename, align 8
  %53 = load ptr, ptr %zipfilename, align 8
  %call114 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %52, ptr noundef %53)
  store i32 1, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.end110
  %arraydecay116 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 0
  %call117 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay116)
  %54 = load i32, ptr %opt_do_list, align 4
  %cmp118 = icmp eq i32 %54, 1
  br i1 %cmp118, label %if.then120, label %if.else122

if.then120:                                       ; preds = %if.end115
  %55 = load ptr, ptr %uf, align 8
  %call121 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_2(ptr noundef %55)
  store i32 %call121, ptr %ret_value, align 4
  br label %if.end141

if.else122:                                       ; preds = %if.end115
  %56 = load i32, ptr %opt_do_extract, align 4
  %cmp123 = icmp eq i32 %56, 1
  br i1 %cmp123, label %if.then125, label %if.end140

if.then125:                                       ; preds = %if.else122
  %57 = load i32, ptr %opt_extractdir, align 4
  %tobool126 = icmp ne i32 %57, 0
  br i1 %tobool126, label %land.lhs.true127, label %if.end132

land.lhs.true127:                                 ; preds = %if.then125
  %58 = load ptr, ptr %dirname, align 8
  %call128 = call i32 @chdir(ptr noundef %58)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then130, label %if.end132

if.then130:                                       ; preds = %land.lhs.true127
  %59 = load ptr, ptr %dirname, align 8
  %call131 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %59)
  call void @exit(i32 noundef -1) #9
  unreachable

if.end132:                                        ; preds = %land.lhs.true127, %if.then125
  %60 = load ptr, ptr %filename_to_extract, align 8
  %cmp133 = icmp eq ptr %60, null
  br i1 %cmp133, label %if.then135, label %if.else137

if.then135:                                       ; preds = %if.end132
  %61 = load ptr, ptr %uf, align 8
  %62 = load i32, ptr %opt_do_extract_withoutpath, align 4
  %63 = load i32, ptr %opt_overwrite, align 4
  %64 = load ptr, ptr %password, align 8
  %call136 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_3(ptr noundef %61, i32 noundef %62, i32 noundef %63, ptr noundef %64)
  store i32 %call136, ptr %ret_value, align 4
  br label %if.end139

if.else137:                                       ; preds = %if.end132
  %65 = load ptr, ptr %uf, align 8
  %66 = load ptr, ptr %filename_to_extract, align 8
  %67 = load i32, ptr %opt_do_extract_withoutpath, align 4
  %68 = load i32, ptr %opt_overwrite, align 4
  %69 = load ptr, ptr %password, align 8
  %call138 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_4(ptr noundef %65, ptr noundef %66, i32 noundef %67, i32 noundef %68, ptr noundef %69)
  store i32 %call138, ptr %ret_value, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.then135
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.else122
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then120
  %70 = load ptr, ptr %uf, align 8
  %call142 = call i32 @unzClose(ptr noundef %70)
  %71 = load i32, ptr %ret_value, align 4
  store i32 %71, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end141, %if.then113, %if.then
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind ssp uwtable
define internal void @do_banner() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @do_help() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  ret void
}

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare ptr @unzOpen64(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @do_list(ptr noundef %uf) #0 {
entry:
  %uf.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %gi = alloca %struct.unz_global_info64_s, align 8
  %err = alloca i32, align 4
  %filename_inzip = alloca [65537 x i8], align 1
  %file_info = alloca %struct.unz_file_info64_s, align 8
  %ratio = alloca i64, align 8
  %string_method = alloca ptr, align 8
  %charCrypt = alloca i8, align 1
  %iLevel = alloca i32, align 4
  store ptr %uf, ptr %uf.addr, align 8
  %0 = load ptr, ptr %uf.addr, align 8
  %call = call i32 @unzGetGlobalInfo64(ptr noundef %0, ptr noundef %gi)
  store i32 %call, ptr %err, align 4
  %1 = load i32, ptr %err, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %i, align 8
  %number_entry = getelementptr inbounds %struct.unz_global_info64_s, ptr %gi, i32 0, i32 0
  %4 = load i64, ptr %number_entry, align 8
  %cmp4 = icmp ult i64 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %ratio, align 8
  store ptr @.str.10, ptr %string_method, align 8
  store i8 32, ptr %charCrypt, align 1
  %5 = load ptr, ptr %uf.addr, align 8
  %arraydecay = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call5 = call i32 @unzGetCurrentFileInfo64(ptr noundef %5, ptr noundef %file_info, ptr noundef %arraydecay, i64 noundef 65537, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  store i32 %call5, ptr %err, align 4
  %6 = load i32, ptr %err, align 4
  %cmp6 = icmp ne i32 %6, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  %7 = load i32, ptr %err, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %7)
  br label %for.end

if.end9:                                          ; preds = %for.body
  %uncompressed_size = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 7
  %8 = load i64, ptr %uncompressed_size, align 8
  %cmp10 = icmp ugt i64 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %compressed_size = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 6
  %9 = load i64, ptr %compressed_size, align 8
  %mul = mul i64 %9, 100
  %uncompressed_size12 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 7
  %10 = load i64, ptr %uncompressed_size12, align 8
  %div = udiv i64 %mul, %10
  store i64 %div, ptr %ratio, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %flag = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 2
  %11 = load i64, ptr %flag, align 8
  %and = and i64 %11, 1
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  store i8 42, ptr %charCrypt, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %compression_method = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 3
  %12 = load i64, ptr %compression_method, align 8
  %cmp17 = icmp eq i64 %12, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  store ptr @.str.12, ptr %string_method, align 8
  br label %if.end49

if.else:                                          ; preds = %if.end16
  %compression_method19 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 3
  %13 = load i64, ptr %compression_method19, align 8
  %cmp20 = icmp eq i64 %13, 8
  br i1 %cmp20, label %if.then21, label %if.else41

if.then21:                                        ; preds = %if.else
  %flag22 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 2
  %14 = load i64, ptr %flag22, align 8
  %and23 = and i64 %14, 6
  %div24 = udiv i64 %and23, 2
  %conv = trunc i64 %div24 to i32
  store i32 %conv, ptr %iLevel, align 4
  %15 = load i32, ptr %iLevel, align 4
  %cmp25 = icmp eq i32 %15, 0
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.then21
  store ptr @.str.13, ptr %string_method, align 8
  br label %if.end40

if.else28:                                        ; preds = %if.then21
  %16 = load i32, ptr %iLevel, align 4
  %cmp29 = icmp eq i32 %16, 1
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else28
  store ptr @.str.14, ptr %string_method, align 8
  br label %if.end39

if.else32:                                        ; preds = %if.else28
  %17 = load i32, ptr %iLevel, align 4
  %cmp33 = icmp eq i32 %17, 2
  br i1 %cmp33, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else32
  %18 = load i32, ptr %iLevel, align 4
  %cmp35 = icmp eq i32 %18, 3
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false, %if.else32
  store ptr @.str.15, ptr %string_method, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %lor.lhs.false
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then31
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then27
  br label %if.end48

if.else41:                                        ; preds = %if.else
  %compression_method42 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 3
  %19 = load i64, ptr %compression_method42, align 8
  %cmp43 = icmp eq i64 %19, 12
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else41
  store ptr @.str.16, ptr %string_method, align 8
  br label %if.end47

if.else46:                                        ; preds = %if.else41
  store ptr @.str.17, ptr %string_method, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then45
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end40
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then18
  %uncompressed_size50 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 7
  %20 = load i64, ptr %uncompressed_size50, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_5(i64 noundef %20, i32 noundef 7)
  %21 = load ptr, ptr %string_method, align 8
  %22 = load i8, ptr %charCrypt, align 1
  %conv51 = sext i8 %22 to i32
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, ptr noundef %21, i32 noundef %conv51)
  %compressed_size53 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 6
  %23 = load i64, ptr %compressed_size53, align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_6(i64 noundef %23, i32 noundef 7)
  %24 = load i64, ptr %ratio, align 8
  %tmu_date = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_mon = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 4
  %25 = load i32, ptr %tm_mon, align 8
  %conv54 = sext i32 %25 to i64
  %add = add i64 %conv54, 1
  %tmu_date55 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_mday = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date55, i32 0, i32 3
  %26 = load i32, ptr %tm_mday, align 4
  %conv56 = sext i32 %26 to i64
  %tmu_date57 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_year = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date57, i32 0, i32 5
  %27 = load i32, ptr %tm_year, align 4
  %conv58 = sext i32 %27 to i64
  %rem = urem i64 %conv58, 100
  %tmu_date59 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_hour = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date59, i32 0, i32 2
  %28 = load i32, ptr %tm_hour, align 8
  %conv60 = sext i32 %28 to i64
  %tmu_date61 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_min = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date61, i32 0, i32 1
  %29 = load i32, ptr %tm_min, align 4
  %conv62 = sext i32 %29 to i64
  %crc = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 5
  %30 = load i64, ptr %crc, align 8
  %arraydecay63 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, i64 noundef %24, i64 noundef %add, i64 noundef %conv56, i64 noundef %rem, i64 noundef %conv60, i64 noundef %conv62, i64 noundef %30, ptr noundef %arraydecay63)
  %31 = load i64, ptr %i, align 8
  %add65 = add i64 %31, 1
  %number_entry66 = getelementptr inbounds %struct.unz_global_info64_s, ptr %gi, i32 0, i32 0
  %32 = load i64, ptr %number_entry66, align 8
  %cmp67 = icmp ult i64 %add65, %32
  br i1 %cmp67, label %if.then69, label %if.end76

if.then69:                                        ; preds = %if.end49
  %33 = load ptr, ptr %uf.addr, align 8
  %call70 = call i32 @unzGoToNextFile(ptr noundef %33)
  store i32 %call70, ptr %err, align 4
  %34 = load i32, ptr %err, align 4
  %cmp71 = icmp ne i32 %34, 0
  br i1 %cmp71, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.then69
  %35 = load i32, ptr %err, align 4
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i32 noundef %35)
  br label %for.end

if.end75:                                         ; preds = %if.then69
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end49
  br label %for.inc

for.inc:                                          ; preds = %if.end76
  %36 = load i64, ptr %i, align 8
  %inc = add i64 %36, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then73, %if.then7, %for.cond
  ret i32 0
}

declare i32 @chdir(ptr noundef) #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @do_extract(ptr noundef %uf, i32 noundef %opt_extract_without_path, i32 noundef %opt_overwrite, ptr noundef %password) #0 {
entry:
  %retval = alloca i32, align 4
  %uf.addr = alloca ptr, align 8
  %opt_extract_without_path.addr = alloca i32, align 4
  %opt_overwrite.addr = alloca i32, align 4
  %password.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %gi = alloca %struct.unz_global_info64_s, align 8
  %err = alloca i32, align 4
  store ptr %uf, ptr %uf.addr, align 8
  store i32 %opt_extract_without_path, ptr %opt_extract_without_path.addr, align 4
  store i32 %opt_overwrite, ptr %opt_overwrite.addr, align 4
  store ptr %password, ptr %password.addr, align 8
  %0 = load ptr, ptr %uf.addr, align 8
  %call = call i32 @unzGetGlobalInfo64(ptr noundef %0, ptr noundef %gi)
  store i32 %call, ptr %err, align 4
  %1 = load i32, ptr %err, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %2)
  %3 = load i32, ptr %err, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8
  %number_entry = getelementptr inbounds %struct.unz_global_info64_s, ptr %gi, i32 0, i32 0
  %5 = load i64, ptr %number_entry, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %uf.addr, align 8
  %7 = load ptr, ptr %password.addr, align 8
  %call3 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_7(ptr noundef %6, ptr noundef %opt_extract_without_path.addr, ptr noundef %opt_overwrite.addr, ptr noundef %7)
  store i32 %call3, ptr %err, align 4
  %8 = load i32, ptr %err, align 4
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %for.end

if.end6:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  %add = add i64 %9, 1
  %number_entry7 = getelementptr inbounds %struct.unz_global_info64_s, ptr %gi, i32 0, i32 0
  %10 = load i64, ptr %number_entry7, align 8
  %cmp8 = icmp ult i64 %add, %10
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end6
  %11 = load ptr, ptr %uf.addr, align 8
  %call10 = call i32 @unzGoToNextFile(ptr noundef %11)
  store i32 %call10, ptr %err, align 4
  %12 = load i32, ptr %err, align 4
  %cmp11 = icmp ne i32 %12, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then9
  %13 = load i32, ptr %err, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i32 noundef %13)
  br label %for.end

if.end14:                                         ; preds = %if.then9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end6
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %14 = load i64, ptr %i, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then12, %if.then5, %for.cond
  %15 = load i32, ptr %err, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @do_extract_onefile(ptr noundef %uf, ptr noundef %filename, i32 noundef %opt_extract_without_path, i32 noundef %opt_overwrite, ptr noundef %password) #0 {
entry:
  %retval = alloca i32, align 4
  %uf.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %opt_extract_without_path.addr = alloca i32, align 4
  %opt_overwrite.addr = alloca i32, align 4
  %password.addr = alloca ptr, align 8
  store ptr %uf, ptr %uf.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 %opt_extract_without_path, ptr %opt_extract_without_path.addr, align 4
  store i32 %opt_overwrite, ptr %opt_overwrite.addr, align 4
  store ptr %password, ptr %password.addr, align 8
  %0 = load ptr, ptr %uf.addr, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %call = call i32 @unzLocateFile(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef %2)
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %uf.addr, align 8
  %4 = load ptr, ptr %password.addr, align 8
  %call2 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_8(ptr noundef %3, ptr noundef %opt_extract_without_path.addr, ptr noundef %opt_overwrite.addr, ptr noundef %4)
  store i32 %call2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare i32 @unzClose(ptr noundef) #3

declare i32 @unzGetGlobalInfo64(ptr noundef, ptr noundef) #3

declare i32 @unzGetCurrentFileInfo64(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @Display64BitsSize(i64 noundef %n, i32 noundef %size_char) #0 {
entry:
  %n.addr = alloca i64, align 8
  %size_char.addr = alloca i32, align 4
  %number = alloca [21 x i8], align 1
  %offset = alloca i32, align 4
  %pos_string = alloca i32, align 4
  %size_display_string = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  store i32 %size_char, ptr %size_char.addr, align 4
  store i32 19, ptr %offset, align 4
  store i32 19, ptr %pos_string, align 4
  %arrayidx = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 20
  store i8 0, ptr %arrayidx, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end9, %entry
  %0 = load i64, ptr %n.addr, align 8
  %rem = urem i64 %0, 10
  %add = add i64 %rem, 48
  %conv = trunc i64 %add to i8
  %1 = load i32, ptr %offset, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx1, align 1
  %2 = load i32, ptr %offset, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom2
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv4, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %4 = load i32, ptr %offset, align 4
  store i32 %4, ptr %pos_string, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %5 = load i64, ptr %n.addr, align 8
  %div = udiv i64 %5, 10
  store i64 %div, ptr %n.addr, align 8
  %6 = load i32, ptr %offset, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %for.end

if.end9:                                          ; preds = %if.end
  %7 = load i32, ptr %offset, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then8
  %8 = load i32, ptr %pos_string, align 4
  %sub = sub nsw i32 19, %8
  store i32 %sub, ptr %size_display_string, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load i32, ptr %size_char.addr, align 4
  %10 = load i32, ptr %size_display_string, align 4
  %cmp10 = icmp sgt i32 %9, %10
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, ptr %size_char.addr, align 4
  %dec12 = add nsw i32 %11, -1
  store i32 %dec12, ptr %size_char.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %pos_string, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom13
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, ptr noundef %arrayidx14)
  ret void
}

declare i32 @unzGoToNextFile(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @do_extract_currentfile(ptr noundef %uf, ptr noundef %popt_extract_without_path, ptr noundef %popt_overwrite, ptr noundef %password) #0 {
entry:
  %retval = alloca i32, align 4
  %uf.addr = alloca ptr, align 8
  %popt_extract_without_path.addr = alloca ptr, align 8
  %popt_overwrite.addr = alloca ptr, align 8
  %password.addr = alloca ptr, align 8
  %filename_inzip = alloca [65537 x i8], align 1
  %filename_withoutpath = alloca ptr, align 8
  %p = alloca ptr, align 8
  %err = alloca i32, align 4
  %fout = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %size_buf = alloca i32, align 4
  %file_info = alloca %struct.unz_file_info64_s, align 8
  %write_filename = alloca ptr, align 8
  %skip = alloca i32, align 4
  %relative_check = alloca ptr, align 8
  %rep = alloca i8, align 1
  %ftestexist = alloca ptr, align 8
  %answer = alloca [128 x i8], align 1
  %ret = alloca i32, align 4
  %c = alloca i8, align 1
  %byval-temp = alloca %struct.tm_unz_s, align 4
  store ptr %uf, ptr %uf.addr, align 8
  store ptr %popt_extract_without_path, ptr %popt_extract_without_path.addr, align 8
  store ptr %popt_overwrite, ptr %popt_overwrite.addr, align 8
  store ptr %password, ptr %password.addr, align 8
  store i32 0, ptr %err, align 4
  store ptr null, ptr %fout, align 8
  %0 = load ptr, ptr %uf.addr, align 8
  %arraydecay = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call = call i32 @unzGetCurrentFileInfo64(ptr noundef %0, ptr noundef %file_info, ptr noundef %arraydecay, i64 noundef 65537, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  store i32 %call, ptr %err, align 4
  %1 = load i32, ptr %err, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %2)
  %3 = load i32, ptr %err, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 8192, ptr %size_buf, align 4
  %4 = load i32, ptr %size_buf, align 4
  %conv = zext i32 %4 to i64
  %call2 = call ptr @malloc(i64 noundef %conv) #10
  store ptr %call2, ptr %buf, align 8
  %5 = load ptr, ptr %buf, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  store i32 -104, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  store ptr %arraydecay8, ptr %filename_withoutpath, align 8
  store ptr %arraydecay8, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end7
  %6 = load ptr, ptr %p, align 8
  %7 = load i8, ptr %6, align 1
  %conv9 = sext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %p, align 8
  %9 = load i8, ptr %8, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 47
  br i1 %cmp13, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %10 = load ptr, ptr %p, align 8
  %11 = load i8, ptr %10, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 92
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false, %while.body
  %12 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %add.ptr, ptr %filename_withoutpath, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false
  %13 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %filename_withoutpath, align 8
  %15 = load i8, ptr %14, align 1
  %conv20 = sext i8 %15 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.end
  %16 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp24 = icmp eq i32 %17, 0
  br i1 %cmp24, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.then23
  %arraydecay27 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %arraydecay27)
  %arraydecay29 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call30 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_9(ptr noundef %arraydecay29)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then23
  br label %if.end206

if.else:                                          ; preds = %while.end
  store i32 0, ptr %skip, align 4
  %18 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %19 = load i32, ptr %18, align 4
  %cmp32 = icmp eq i32 %19, 0
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else
  %arraydecay35 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  store ptr %arraydecay35, ptr %write_filename, align 8
  br label %if.end37

if.else36:                                        ; preds = %if.else
  %20 = load ptr, ptr %filename_withoutpath, align 8
  store ptr %20, ptr %write_filename, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then34
  %21 = load ptr, ptr %write_filename, align 8
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx, align 1
  %conv38 = sext i8 %22 to i32
  %cmp39 = icmp ne i32 %conv38, 0
  br i1 %cmp39, label %if.then41, label %if.end60

if.then41:                                        ; preds = %if.end37
  %23 = load ptr, ptr %write_filename, align 8
  store ptr %23, ptr %relative_check, align 8
  br label %while.cond42

while.cond42:                                     ; preds = %if.end57, %if.then41
  %24 = load ptr, ptr %relative_check, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %24, i64 1
  %25 = load i8, ptr %arrayidx43, align 1
  %conv44 = sext i8 %25 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %while.body47, label %while.end59

while.body47:                                     ; preds = %while.cond42
  %26 = load ptr, ptr %relative_check, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %27 to i32
  %cmp50 = icmp eq i32 %conv49, 46
  br i1 %cmp50, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %while.body47
  %28 = load ptr, ptr %relative_check, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %29 to i32
  %cmp54 = icmp eq i32 %conv53, 46
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %relative_check, align 8
  store ptr %30, ptr %write_filename, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %land.lhs.true, %while.body47
  %31 = load ptr, ptr %relative_check, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr58, ptr %relative_check, align 8
  br label %while.cond42, !llvm.loop !13

while.end59:                                      ; preds = %while.cond42
  br label %if.end60

if.end60:                                         ; preds = %while.end59, %if.end37
  br label %while.cond61

while.cond61:                                     ; preds = %while.body70, %if.end60
  %32 = load ptr, ptr %write_filename, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %33 to i32
  %cmp64 = icmp eq i32 %conv63, 47
  br i1 %cmp64, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond61
  %34 = load ptr, ptr %write_filename, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx66, align 1
  %conv67 = sext i8 %35 to i32
  %cmp68 = icmp eq i32 %conv67, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond61
  %36 = phi i1 [ true, %while.cond61 ], [ %cmp68, %lor.rhs ]
  br i1 %36, label %while.body70, label %while.end72

while.body70:                                     ; preds = %lor.end
  %37 = load ptr, ptr %write_filename, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr71, ptr %write_filename, align 8
  br label %while.cond61, !llvm.loop !14

while.end72:                                      ; preds = %lor.end
  %38 = load ptr, ptr %uf.addr, align 8
  %39 = load ptr, ptr %password.addr, align 8
  %call73 = call i32 @unzOpenCurrentFilePassword(ptr noundef %38, ptr noundef %39)
  store i32 %call73, ptr %err, align 4
  %40 = load i32, ptr %err, align 4
  %cmp74 = icmp ne i32 %40, 0
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %while.end72
  %41 = load i32, ptr %err, align 4
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef %41)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %while.end72
  %42 = load ptr, ptr %popt_overwrite.addr, align 8
  %43 = load i32, ptr %42, align 4
  %cmp79 = icmp eq i32 %43, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end130

land.lhs.true81:                                  ; preds = %if.end78
  %44 = load i32, ptr %err, align 4
  %cmp82 = icmp eq i32 %44, 0
  br i1 %cmp82, label %if.then84, label %if.end130

if.then84:                                        ; preds = %land.lhs.true81
  store i8 0, ptr %rep, align 1
  %45 = load ptr, ptr %write_filename, align 8
  %call85 = call ptr @"\01_fopen"(ptr noundef %45, ptr noundef @.str.26)
  store ptr %call85, ptr %ftestexist, align 8
  %46 = load ptr, ptr %ftestexist, align 8
  %cmp86 = icmp ne ptr %46, null
  br i1 %cmp86, label %if.then88, label %if.end119

if.then88:                                        ; preds = %if.then84
  %47 = load ptr, ptr %ftestexist, align 8
  %call89 = call i32 @fclose(ptr noundef %47)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then88
  %48 = load ptr, ptr %write_filename, align 8
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, ptr noundef %48)
  %arraydecay91 = getelementptr inbounds [128 x i8], ptr %answer, i64 0, i64 0
  %call92 = call i32 (ptr, ...) @scanf(ptr noundef @.str.28, ptr noundef %arraydecay91)
  store i32 %call92, ptr %ret, align 4
  %49 = load i32, ptr %ret, align 4
  %cmp93 = icmp ne i32 %49, 1
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.body
  call void @exit(i32 noundef 1) #9
  unreachable

if.end96:                                         ; preds = %do.body
  %arrayidx97 = getelementptr inbounds [128 x i8], ptr %answer, i64 0, i64 0
  %50 = load i8, ptr %arrayidx97, align 1
  store i8 %50, ptr %rep, align 1
  %51 = load i8, ptr %rep, align 1
  %conv98 = sext i8 %51 to i32
  %cmp99 = icmp sge i32 %conv98, 97
  br i1 %cmp99, label %land.lhs.true101, label %if.end108

land.lhs.true101:                                 ; preds = %if.end96
  %52 = load i8, ptr %rep, align 1
  %conv102 = sext i8 %52 to i32
  %cmp103 = icmp sle i32 %conv102, 122
  br i1 %cmp103, label %if.then105, label %if.end108

if.then105:                                       ; preds = %land.lhs.true101
  %53 = load i8, ptr %rep, align 1
  %conv106 = sext i8 %53 to i32
  %sub = sub nsw i32 %conv106, 32
  %conv107 = trunc i32 %sub to i8
  store i8 %conv107, ptr %rep, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %land.lhs.true101, %if.end96
  br label %do.cond

do.cond:                                          ; preds = %if.end108
  %54 = load i8, ptr %rep, align 1
  %conv109 = sext i8 %54 to i32
  %cmp110 = icmp ne i32 %conv109, 89
  br i1 %cmp110, label %land.lhs.true112, label %land.end

land.lhs.true112:                                 ; preds = %do.cond
  %55 = load i8, ptr %rep, align 1
  %conv113 = sext i8 %55 to i32
  %cmp114 = icmp ne i32 %conv113, 78
  br i1 %cmp114, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true112
  %56 = load i8, ptr %rep, align 1
  %conv116 = sext i8 %56 to i32
  %cmp117 = icmp ne i32 %conv116, 65
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true112, %do.cond
  %57 = phi i1 [ false, %land.lhs.true112 ], [ false, %do.cond ], [ %cmp117, %land.rhs ]
  br i1 %57, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %land.end
  br label %if.end119

if.end119:                                        ; preds = %do.end, %if.then84
  %58 = load i8, ptr %rep, align 1
  %conv120 = sext i8 %58 to i32
  %cmp121 = icmp eq i32 %conv120, 78
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end119
  store i32 1, ptr %skip, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end119
  %59 = load i8, ptr %rep, align 1
  %conv125 = sext i8 %59 to i32
  %cmp126 = icmp eq i32 %conv125, 65
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end124
  %60 = load ptr, ptr %popt_overwrite.addr, align 8
  store i32 1, ptr %60, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end124
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %land.lhs.true81, %if.end78
  %61 = load i32, ptr %skip, align 4
  %cmp131 = icmp eq i32 %61, 0
  br i1 %cmp131, label %land.lhs.true133, label %if.end159

land.lhs.true133:                                 ; preds = %if.end130
  %62 = load i32, ptr %err, align 4
  %cmp134 = icmp eq i32 %62, 0
  br i1 %cmp134, label %if.then136, label %if.end159

if.then136:                                       ; preds = %land.lhs.true133
  %63 = load ptr, ptr %write_filename, align 8
  %call137 = call ptr @"\01_fopen"(ptr noundef %63, ptr noundef @.str.29)
  store ptr %call137, ptr %fout, align 8
  %64 = load ptr, ptr %fout, align 8
  %cmp138 = icmp eq ptr %64, null
  br i1 %cmp138, label %land.lhs.true140, label %if.end153

land.lhs.true140:                                 ; preds = %if.then136
  %65 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %66 = load i32, ptr %65, align 4
  %cmp141 = icmp eq i32 %66, 0
  br i1 %cmp141, label %land.lhs.true143, label %if.end153

land.lhs.true143:                                 ; preds = %land.lhs.true140
  %67 = load ptr, ptr %filename_withoutpath, align 8
  %arraydecay144 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %cmp145 = icmp ne ptr %67, %arraydecay144
  br i1 %cmp145, label %if.then147, label %if.end153

if.then147:                                       ; preds = %land.lhs.true143
  %68 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %68, i64 -1
  %69 = load i8, ptr %add.ptr148, align 1
  store i8 %69, ptr %c, align 1
  %70 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr149 = getelementptr inbounds i8, ptr %70, i64 -1
  store i8 0, ptr %add.ptr149, align 1
  %71 = load ptr, ptr %write_filename, align 8
  %call150 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_10(ptr noundef %71)
  %72 = load i8, ptr %c, align 1
  %73 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr151 = getelementptr inbounds i8, ptr %73, i64 -1
  store i8 %72, ptr %add.ptr151, align 1
  %74 = load ptr, ptr %write_filename, align 8
  %call152 = call ptr @"\01_fopen"(ptr noundef %74, ptr noundef @.str.29)
  store ptr %call152, ptr %fout, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then147, %land.lhs.true143, %land.lhs.true140, %if.then136
  %75 = load ptr, ptr %fout, align 8
  %cmp154 = icmp eq ptr %75, null
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.end153
  %76 = load ptr, ptr %write_filename, align 8
  %call157 = call i32 (ptr, ...) @printf(ptr noundef @.str.30, ptr noundef %76)
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end153
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %land.lhs.true133, %if.end130
  %77 = load ptr, ptr %fout, align 8
  %cmp160 = icmp ne ptr %77, null
  br i1 %cmp160, label %if.then162, label %if.end193

if.then162:                                       ; preds = %if.end159
  %78 = load ptr, ptr %write_filename, align 8
  %call163 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef %78)
  br label %do.body164

do.body164:                                       ; preds = %do.cond182, %if.then162
  %79 = load ptr, ptr %uf.addr, align 8
  %80 = load ptr, ptr %buf, align 8
  %81 = load i32, ptr %size_buf, align 4
  %call165 = call i32 @unzReadCurrentFile(ptr noundef %79, ptr noundef %80, i32 noundef %81)
  store i32 %call165, ptr %err, align 4
  %82 = load i32, ptr %err, align 4
  %cmp166 = icmp slt i32 %82, 0
  br i1 %cmp166, label %if.then168, label %if.end170

if.then168:                                       ; preds = %do.body164
  %83 = load i32, ptr %err, align 4
  %call169 = call i32 (ptr, ...) @printf(ptr noundef @.str.32, i32 noundef %83)
  br label %do.end185

if.end170:                                        ; preds = %do.body164
  %84 = load i32, ptr %err, align 4
  %cmp171 = icmp sgt i32 %84, 0
  br i1 %cmp171, label %if.then173, label %if.end181

if.then173:                                       ; preds = %if.end170
  %85 = load ptr, ptr %buf, align 8
  %86 = load i32, ptr %err, align 4
  %conv174 = zext i32 %86 to i64
  %87 = load ptr, ptr %fout, align 8
  %call175 = call i64 @"\01_fwrite"(ptr noundef %85, i64 noundef %conv174, i64 noundef 1, ptr noundef %87)
  %cmp176 = icmp ne i64 %call175, 1
  br i1 %cmp176, label %if.then178, label %if.end180

if.then178:                                       ; preds = %if.then173
  %call179 = call i32 (ptr, ...) @printf(ptr noundef @.str.33)
  store i32 -1, ptr %err, align 4
  br label %do.end185

if.end180:                                        ; preds = %if.then173
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end170
  br label %do.cond182

do.cond182:                                       ; preds = %if.end181
  %88 = load i32, ptr %err, align 4
  %cmp183 = icmp sgt i32 %88, 0
  br i1 %cmp183, label %do.body164, label %do.end185, !llvm.loop !16

do.end185:                                        ; preds = %do.cond182, %if.then178, %if.then168
  %89 = load ptr, ptr %fout, align 8
  %tobool = icmp ne ptr %89, null
  br i1 %tobool, label %if.then186, label %if.end188

if.then186:                                       ; preds = %do.end185
  %90 = load ptr, ptr %fout, align 8
  %call187 = call i32 @fclose(ptr noundef %90)
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %do.end185
  %91 = load i32, ptr %err, align 4
  %cmp189 = icmp eq i32 %91, 0
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end188
  %92 = load ptr, ptr %write_filename, align 8
  %dosDate = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 4
  %93 = load i64, ptr %dosDate, align 8
  %tmu_date = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp, ptr align 8 %tmu_date, i64 24, i1 false)
  call void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_11(ptr noundef %92, i64 noundef %93, ptr noundef %byval-temp)
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %if.end188
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.end159
  %94 = load i32, ptr %err, align 4
  %cmp194 = icmp eq i32 %94, 0
  br i1 %cmp194, label %if.then196, label %if.else203

if.then196:                                       ; preds = %if.end193
  %95 = load ptr, ptr %uf.addr, align 8
  %call197 = call i32 @unzCloseCurrentFile(ptr noundef %95)
  store i32 %call197, ptr %err, align 4
  %96 = load i32, ptr %err, align 4
  %cmp198 = icmp ne i32 %96, 0
  br i1 %cmp198, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.then196
  %97 = load i32, ptr %err, align 4
  %call201 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, i32 noundef %97)
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.then196
  br label %if.end205

if.else203:                                       ; preds = %if.end193
  %98 = load ptr, ptr %uf.addr, align 8
  %call204 = call i32 @unzCloseCurrentFile(ptr noundef %98)
  br label %if.end205

if.end205:                                        ; preds = %if.else203, %if.end202
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end31
  %99 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %99)
  %100 = load i32, ptr %err, align 4
  store i32 %100, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end206, %if.then5, %if.then
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind ssp uwtable
define internal i32 @mymkdir(ptr noundef %dirname) #0 {
entry:
  %dirname.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dirname, ptr %dirname.addr, align 8
  store i32 0, ptr %ret, align 4
  %0 = load ptr, ptr %dirname.addr, align 8
  %call = call i32 @mkdir(ptr noundef %0, i16 noundef zeroext 509)
  store i32 %call, ptr %ret, align 4
  %1 = load i32, ptr %ret, align 4
  ret i32 %1
}

declare i32 @unzOpenCurrentFilePassword(ptr noundef, ptr noundef) #3

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

declare i32 @scanf(ptr noundef, ...) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @makedir(ptr noundef %newdir) #0 {
entry:
  %retval = alloca i32, align 4
  %newdir.addr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %p = alloca ptr, align 8
  %len = alloca i64, align 8
  %hold = alloca i8, align 1
  store ptr %newdir, ptr %newdir.addr, align 8
  %0 = load ptr, ptr %newdir.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  store i64 %call, ptr %len, align 8
  %1 = load i64, ptr %len, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %len, align 8
  %add = add i64 %2, 1
  %call1 = call ptr @malloc(i64 noundef %add) #10
  store ptr %call1, ptr %buffer, align 8
  %3 = load ptr, ptr %buffer, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  store i32 -104, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %buffer, align 8
  %5 = load ptr, ptr %newdir.addr, align 8
  %6 = load i64, ptr %len, align 8
  %add6 = add i64 %6, 1
  %7 = load ptr, ptr %buffer, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call7 = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef %add6, i64 noundef %8) #8
  %9 = load ptr, ptr %buffer, align 8
  %10 = load i64, ptr %len, align 8
  %sub = sub i64 %10, 1
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %sub
  %11 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv, 47
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  %12 = load ptr, ptr %buffer, align 8
  %13 = load i64, ptr %len, align 8
  %sub11 = sub i64 %13, 1
  %arrayidx12 = getelementptr inbounds i8, ptr %12, i64 %sub11
  store i8 0, ptr %arrayidx12, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end5
  %14 = load ptr, ptr %buffer, align 8
  %call14 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_12(ptr noundef %14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %15 = load ptr, ptr %buffer, align 8
  call void @free(ptr noundef %15)
  store i32 1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %16 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %add.ptr, ptr %p, align 8
  br label %while.body

while.body:                                       ; preds = %if.end18, %if.end42
  br label %while.cond19

while.cond19:                                     ; preds = %while.body27, %while.body
  %17 = load ptr, ptr %p, align 8
  %18 = load i8, ptr %17, align 1
  %conv20 = sext i8 %18 to i32
  %tobool = icmp ne i32 %conv20, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond19
  %19 = load ptr, ptr %p, align 8
  %20 = load i8, ptr %19, align 1
  %conv21 = sext i8 %20 to i32
  %cmp22 = icmp ne i32 %conv21, 92
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %21 = load ptr, ptr %p, align 8
  %22 = load i8, ptr %21, align 1
  %conv24 = sext i8 %22 to i32
  %cmp25 = icmp ne i32 %conv24, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond19
  %23 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond19 ], [ %cmp25, %land.rhs ]
  br i1 %23, label %while.body27, label %while.end

while.body27:                                     ; preds = %land.end
  %24 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond19, !llvm.loop !17

while.end:                                        ; preds = %land.end
  %25 = load ptr, ptr %p, align 8
  %26 = load i8, ptr %25, align 1
  store i8 %26, ptr %hold, align 1
  %27 = load ptr, ptr %p, align 8
  store i8 0, ptr %27, align 1
  %28 = load ptr, ptr %buffer, align 8
  %call28 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_13(ptr noundef %28)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %land.lhs.true31, label %if.end37

land.lhs.true31:                                  ; preds = %while.end
  %call32 = call ptr @__error()
  %29 = load i32, ptr %call32, align 4
  %cmp33 = icmp eq i32 %29, 2
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %land.lhs.true31
  %30 = load ptr, ptr %buffer, align 8
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, ptr noundef %30)
  %31 = load ptr, ptr %buffer, align 8
  call void @free(ptr noundef %31)
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %land.lhs.true31, %while.end
  %32 = load i8, ptr %hold, align 1
  %conv38 = sext i8 %32 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  br label %while.end44

if.end42:                                         ; preds = %if.end37
  %33 = load i8, ptr %hold, align 1
  %34 = load ptr, ptr %p, align 8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr43, ptr %p, align 8
  store i8 %33, ptr %34, align 1
  br label %while.body

while.end44:                                      ; preds = %if.then41
  %35 = load ptr, ptr %buffer, align 8
  call void @free(ptr noundef %35)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end44, %if.then35, %if.then17, %if.then3, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

declare i32 @unzReadCurrentFile(ptr noundef, ptr noundef, i32 noundef) #3

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @change_file_date(ptr noundef %filename, i64 noundef %dosdate, ptr noundef %tmu_date) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %dosdate.addr = alloca i64, align 8
  %ut = alloca %struct.utimbuf, align 8
  %newdate = alloca %struct.tm, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i64 %dosdate, ptr %dosdate.addr, align 8
  %0 = load i64, ptr %dosdate.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 0
  %1 = load i32, ptr %tm_sec, align 4
  %tm_sec1 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 0
  store i32 %1, ptr %tm_sec1, align 8
  %tm_min = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 1
  %2 = load i32, ptr %tm_min, align 4
  %tm_min2 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 1
  store i32 %2, ptr %tm_min2, align 4
  %tm_hour = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 2
  %3 = load i32, ptr %tm_hour, align 4
  %tm_hour3 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 2
  store i32 %3, ptr %tm_hour3, align 8
  %tm_mday = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 3
  %4 = load i32, ptr %tm_mday, align 4
  %tm_mday4 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 3
  store i32 %4, ptr %tm_mday4, align 4
  %tm_mon = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 4
  %5 = load i32, ptr %tm_mon, align 4
  %tm_mon5 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 4
  store i32 %5, ptr %tm_mon5, align 8
  %tm_year = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 5
  %6 = load i32, ptr %tm_year, align 4
  %cmp = icmp sgt i32 %6, 1900
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tm_year6 = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 5
  %7 = load i32, ptr %tm_year6, align 4
  %sub = sub nsw i32 %7, 1900
  %tm_year7 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 5
  store i32 %sub, ptr %tm_year7, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %tm_year8 = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 5
  %8 = load i32, ptr %tm_year8, align 4
  %tm_year9 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 5
  store i32 %8, ptr %tm_year9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tm_isdst = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 8
  store i32 -1, ptr %tm_isdst, align 8
  %call = call i64 @"\01_mktime"(ptr noundef %newdate)
  %modtime = getelementptr inbounds %struct.utimbuf, ptr %ut, i32 0, i32 1
  store i64 %call, ptr %modtime, align 8
  %actime = getelementptr inbounds %struct.utimbuf, ptr %ut, i32 0, i32 0
  store i64 %call, ptr %actime, align 8
  %9 = load ptr, ptr %filename.addr, align 8
  %call10 = call i32 @utime(ptr noundef %9, ptr noundef %ut)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @unzCloseCurrentFile(ptr noundef) #3

declare void @free(ptr noundef) #3

declare i32 @mkdir(ptr noundef, i16 noundef zeroext) #3

declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #7

declare ptr @__error() #3

declare i64 @"\01_mktime"(ptr noundef) #3

declare i32 @utime(ptr noundef, ptr noundef) #3

declare i32 @unzLocateFile(ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_0()  alwaysinline#0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_1()  alwaysinline#0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_2(ptr noundef %uf)  alwaysinline#0 {
entry:
  %uf.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %gi = alloca %struct.unz_global_info64_s, align 8
  %err = alloca i32, align 4
  %filename_inzip = alloca [65537 x i8], align 1
  %file_info = alloca %struct.unz_file_info64_s, align 8
  %ratio = alloca i64, align 8
  %string_method = alloca ptr, align 8
  %charCrypt = alloca i8, align 1
  %iLevel = alloca i32, align 4
  store ptr %uf, ptr %uf.addr, align 8
  %0 = load ptr, ptr %uf.addr, align 8
  %call = call i32 @unzGetGlobalInfo64(ptr noundef %0, ptr noundef %gi)
  store i32 %call, ptr %err, align 4
  %1 = load i32, ptr %err, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %i, align 8
  %number_entry = getelementptr inbounds %struct.unz_global_info64_s, ptr %gi, i32 0, i32 0
  %4 = load i64, ptr %number_entry, align 8
  %cmp4 = icmp ult i64 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %ratio, align 8
  store ptr @.str.10, ptr %string_method, align 8
  store i8 32, ptr %charCrypt, align 1
  %5 = load ptr, ptr %uf.addr, align 8
  %arraydecay = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call5 = call i32 @unzGetCurrentFileInfo64(ptr noundef %5, ptr noundef %file_info, ptr noundef %arraydecay, i64 noundef 65537, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  store i32 %call5, ptr %err, align 4
  %6 = load i32, ptr %err, align 4
  %cmp6 = icmp ne i32 %6, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  %7 = load i32, ptr %err, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %7)
  br label %for.end

if.end9:                                          ; preds = %for.body
  %uncompressed_size = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 7
  %8 = load i64, ptr %uncompressed_size, align 8
  %cmp10 = icmp ugt i64 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %compressed_size = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 6
  %9 = load i64, ptr %compressed_size, align 8
  %mul = mul i64 %9, 100
  %uncompressed_size12 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 7
  %10 = load i64, ptr %uncompressed_size12, align 8
  %div = udiv i64 %mul, %10
  store i64 %div, ptr %ratio, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %flag = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 2
  %11 = load i64, ptr %flag, align 8
  %and = and i64 %11, 1
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  store i8 42, ptr %charCrypt, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %compression_method = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 3
  %12 = load i64, ptr %compression_method, align 8
  %cmp17 = icmp eq i64 %12, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  store ptr @.str.12, ptr %string_method, align 8
  br label %if.end49

if.else:                                          ; preds = %if.end16
  %compression_method19 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 3
  %13 = load i64, ptr %compression_method19, align 8
  %cmp20 = icmp eq i64 %13, 8
  br i1 %cmp20, label %if.then21, label %if.else41

if.then21:                                        ; preds = %if.else
  %flag22 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 2
  %14 = load i64, ptr %flag22, align 8
  %and23 = and i64 %14, 6
  %div24 = udiv i64 %and23, 2
  %conv = trunc i64 %div24 to i32
  store i32 %conv, ptr %iLevel, align 4
  %15 = load i32, ptr %iLevel, align 4
  %cmp25 = icmp eq i32 %15, 0
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.then21
  store ptr @.str.13, ptr %string_method, align 8
  br label %if.end40

if.else28:                                        ; preds = %if.then21
  %16 = load i32, ptr %iLevel, align 4
  %cmp29 = icmp eq i32 %16, 1
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else28
  store ptr @.str.14, ptr %string_method, align 8
  br label %if.end39

if.else32:                                        ; preds = %if.else28
  %17 = load i32, ptr %iLevel, align 4
  %cmp33 = icmp eq i32 %17, 2
  br i1 %cmp33, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else32
  %18 = load i32, ptr %iLevel, align 4
  %cmp35 = icmp eq i32 %18, 3
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false, %if.else32
  store ptr @.str.15, ptr %string_method, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %lor.lhs.false
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then31
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then27
  br label %if.end48

if.else41:                                        ; preds = %if.else
  %compression_method42 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 3
  %19 = load i64, ptr %compression_method42, align 8
  %cmp43 = icmp eq i64 %19, 12
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else41
  store ptr @.str.16, ptr %string_method, align 8
  br label %if.end47

if.else46:                                        ; preds = %if.else41
  store ptr @.str.17, ptr %string_method, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then45
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end40
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then18
  %uncompressed_size50 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 7
  %20 = load i64, ptr %uncompressed_size50, align 8
  call void @Display64BitsSize(i64 noundef %20, i32 noundef 7)
  %21 = load ptr, ptr %string_method, align 8
  %22 = load i8, ptr %charCrypt, align 1
  %conv51 = sext i8 %22 to i32
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, ptr noundef %21, i32 noundef %conv51)
  %compressed_size53 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 6
  %23 = load i64, ptr %compressed_size53, align 8
  call void @Display64BitsSize(i64 noundef %23, i32 noundef 7)
  %24 = load i64, ptr %ratio, align 8
  %tmu_date = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_mon = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 4
  %25 = load i32, ptr %tm_mon, align 8
  %conv54 = sext i32 %25 to i64
  %add = add i64 %conv54, 1
  %tmu_date55 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_mday = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date55, i32 0, i32 3
  %26 = load i32, ptr %tm_mday, align 4
  %conv56 = sext i32 %26 to i64
  %tmu_date57 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_year = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date57, i32 0, i32 5
  %27 = load i32, ptr %tm_year, align 4
  %conv58 = sext i32 %27 to i64
  %rem = urem i64 %conv58, 100
  %tmu_date59 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_hour = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date59, i32 0, i32 2
  %28 = load i32, ptr %tm_hour, align 8
  %conv60 = sext i32 %28 to i64
  %tmu_date61 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  %tm_min = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date61, i32 0, i32 1
  %29 = load i32, ptr %tm_min, align 4
  %conv62 = sext i32 %29 to i64
  %crc = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 5
  %30 = load i64, ptr %crc, align 8
  %arraydecay63 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, i64 noundef %24, i64 noundef %add, i64 noundef %conv56, i64 noundef %rem, i64 noundef %conv60, i64 noundef %conv62, i64 noundef %30, ptr noundef %arraydecay63)
  %31 = load i64, ptr %i, align 8
  %add65 = add i64 %31, 1
  %number_entry66 = getelementptr inbounds %struct.unz_global_info64_s, ptr %gi, i32 0, i32 0
  %32 = load i64, ptr %number_entry66, align 8
  %cmp67 = icmp ult i64 %add65, %32
  br i1 %cmp67, label %if.then69, label %if.end76

if.then69:                                        ; preds = %if.end49
  %33 = load ptr, ptr %uf.addr, align 8
  %call70 = call i32 @unzGoToNextFile(ptr noundef %33)
  store i32 %call70, ptr %err, align 4
  %34 = load i32, ptr %err, align 4
  %cmp71 = icmp ne i32 %34, 0
  br i1 %cmp71, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.then69
  %35 = load i32, ptr %err, align 4
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i32 noundef %35)
  br label %for.end

if.end75:                                         ; preds = %if.then69
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end49
  br label %for.inc

for.inc:                                          ; preds = %if.end76
  %36 = load i64, ptr %i, align 8
  %inc = add i64 %36, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then73, %if.then7, %for.cond
  ret i32 0
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_3(ptr noundef %uf, i32 noundef %opt_extract_without_path, i32 noundef %opt_overwrite, ptr noundef %password)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %uf.addr = alloca ptr, align 8
  %opt_extract_without_path.addr = alloca i32, align 4
  %opt_overwrite.addr = alloca i32, align 4
  %password.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %gi = alloca %struct.unz_global_info64_s, align 8
  %err = alloca i32, align 4
  store ptr %uf, ptr %uf.addr, align 8
  store i32 %opt_extract_without_path, ptr %opt_extract_without_path.addr, align 4
  store i32 %opt_overwrite, ptr %opt_overwrite.addr, align 4
  store ptr %password, ptr %password.addr, align 8
  %0 = load ptr, ptr %uf.addr, align 8
  %call = call i32 @unzGetGlobalInfo64(ptr noundef %0, ptr noundef %gi)
  store i32 %call, ptr %err, align 4
  %1 = load i32, ptr %err, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %2)
  %3 = load i32, ptr %err, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8
  %number_entry = getelementptr inbounds %struct.unz_global_info64_s, ptr %gi, i32 0, i32 0
  %5 = load i64, ptr %number_entry, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %uf.addr, align 8
  %7 = load ptr, ptr %password.addr, align 8
  %call3 = call i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_3_currentfile(ptr noundef %6, ptr noundef %opt_extract_without_path.addr, ptr noundef %opt_overwrite.addr, ptr noundef %7)
  store i32 %call3, ptr %err, align 4
  %8 = load i32, ptr %err, align 4
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %for.end

if.end6:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  %add = add i64 %9, 1
  %number_entry7 = getelementptr inbounds %struct.unz_global_info64_s, ptr %gi, i32 0, i32 0
  %10 = load i64, ptr %number_entry7, align 8
  %cmp8 = icmp ult i64 %add, %10
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end6
  %11 = load ptr, ptr %uf.addr, align 8
  %call10 = call i32 @unzGoToNextFile(ptr noundef %11)
  store i32 %call10, ptr %err, align 4
  %12 = load i32, ptr %err, align 4
  %cmp11 = icmp ne i32 %12, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then9
  %13 = load i32, ptr %err, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i32 noundef %13)
  br label %for.end

if.end14:                                         ; preds = %if.then9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end6
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %14 = load i64, ptr %i, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then12, %if.then5, %for.cond
  %15 = load i32, ptr %err, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_4(ptr noundef %uf, ptr noundef %filename, i32 noundef %opt_extract_without_path, i32 noundef %opt_overwrite, ptr noundef %password)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %uf.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %opt_extract_without_path.addr = alloca i32, align 4
  %opt_overwrite.addr = alloca i32, align 4
  %password.addr = alloca ptr, align 8
  store ptr %uf, ptr %uf.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 %opt_extract_without_path, ptr %opt_extract_without_path.addr, align 4
  store i32 %opt_overwrite, ptr %opt_overwrite.addr, align 4
  store ptr %password, ptr %password.addr, align 8
  %0 = load ptr, ptr %uf.addr, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %call = call i32 @unzLocateFile(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef %2)
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %uf.addr, align 8
  %4 = load ptr, ptr %password.addr, align 8
  %call2 = call i32 @do_extract_currentfile(ptr noundef %3, ptr noundef %opt_extract_without_path.addr, ptr noundef %opt_overwrite.addr, ptr noundef %4)
  store i32 %call2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_5(i64 noundef %n, i32 noundef %size_char)  alwaysinline#0 {
entry:
  %n.addr = alloca i64, align 8
  %size_char.addr = alloca i32, align 4
  %number = alloca [21 x i8], align 1
  %offset = alloca i32, align 4
  %pos_string = alloca i32, align 4
  %size_display_string = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  store i32 %size_char, ptr %size_char.addr, align 4
  store i32 19, ptr %offset, align 4
  store i32 19, ptr %pos_string, align 4
  %arrayidx = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 20
  store i8 0, ptr %arrayidx, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end9, %entry
  %0 = load i64, ptr %n.addr, align 8
  %rem = urem i64 %0, 10
  %add = add i64 %rem, 48
  %conv = trunc i64 %add to i8
  %1 = load i32, ptr %offset, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx1, align 1
  %2 = load i32, ptr %offset, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom2
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv4, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %4 = load i32, ptr %offset, align 4
  store i32 %4, ptr %pos_string, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %5 = load i64, ptr %n.addr, align 8
  %div = udiv i64 %5, 10
  store i64 %div, ptr %n.addr, align 8
  %6 = load i32, ptr %offset, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %for.end

if.end9:                                          ; preds = %if.end
  %7 = load i32, ptr %offset, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then8
  %8 = load i32, ptr %pos_string, align 4
  %sub = sub nsw i32 19, %8
  store i32 %sub, ptr %size_display_string, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load i32, ptr %size_char.addr, align 4
  %10 = load i32, ptr %size_display_string, align 4
  %cmp10 = icmp sgt i32 %9, %10
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, ptr %size_char.addr, align 4
  %dec12 = add nsw i32 %11, -1
  store i32 %dec12, ptr %size_char.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %pos_string, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom13
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, ptr noundef %arrayidx14)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_6(i64 noundef %n, i32 noundef %size_char)  alwaysinline#0 {
entry:
  %n.addr = alloca i64, align 8
  %size_char.addr = alloca i32, align 4
  %number = alloca [21 x i8], align 1
  %offset = alloca i32, align 4
  %pos_string = alloca i32, align 4
  %size_display_string = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  store i32 %size_char, ptr %size_char.addr, align 4
  store i32 19, ptr %offset, align 4
  store i32 19, ptr %pos_string, align 4
  %arrayidx = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 20
  store i8 0, ptr %arrayidx, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end9, %entry
  %0 = load i64, ptr %n.addr, align 8
  %rem = urem i64 %0, 10
  %add = add i64 %rem, 48
  %conv = trunc i64 %add to i8
  %1 = load i32, ptr %offset, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx1, align 1
  %2 = load i32, ptr %offset, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom2
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv4, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %4 = load i32, ptr %offset, align 4
  store i32 %4, ptr %pos_string, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %5 = load i64, ptr %n.addr, align 8
  %div = udiv i64 %5, 10
  store i64 %div, ptr %n.addr, align 8
  %6 = load i32, ptr %offset, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %for.end

if.end9:                                          ; preds = %if.end
  %7 = load i32, ptr %offset, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then8
  %8 = load i32, ptr %pos_string, align 4
  %sub = sub nsw i32 19, %8
  store i32 %sub, ptr %size_display_string, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load i32, ptr %size_char.addr, align 4
  %10 = load i32, ptr %size_display_string, align 4
  %cmp10 = icmp sgt i32 %9, %10
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, ptr %size_char.addr, align 4
  %dec12 = add nsw i32 %11, -1
  store i32 %dec12, ptr %size_char.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %pos_string, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom13
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, ptr noundef %arrayidx14)
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_7(ptr noundef %uf, ptr noundef %popt_extract_without_path, ptr noundef %popt_overwrite, ptr noundef %password)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %uf.addr = alloca ptr, align 8
  %popt_extract_without_path.addr = alloca ptr, align 8
  %popt_overwrite.addr = alloca ptr, align 8
  %password.addr = alloca ptr, align 8
  %filename_inzip = alloca [65537 x i8], align 1
  %filename_withoutpath = alloca ptr, align 8
  %p = alloca ptr, align 8
  %err = alloca i32, align 4
  %fout = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %size_buf = alloca i32, align 4
  %file_info = alloca %struct.unz_file_info64_s, align 8
  %write_filename = alloca ptr, align 8
  %skip = alloca i32, align 4
  %relative_check = alloca ptr, align 8
  %rep = alloca i8, align 1
  %ftestexist = alloca ptr, align 8
  %answer = alloca [128 x i8], align 1
  %ret = alloca i32, align 4
  %c = alloca i8, align 1
  %byval-temp = alloca %struct.tm_unz_s, align 4
  store ptr %uf, ptr %uf.addr, align 8
  store ptr %popt_extract_without_path, ptr %popt_extract_without_path.addr, align 8
  store ptr %popt_overwrite, ptr %popt_overwrite.addr, align 8
  store ptr %password, ptr %password.addr, align 8
  store i32 0, ptr %err, align 4
  store ptr null, ptr %fout, align 8
  %0 = load ptr, ptr %uf.addr, align 8
  %arraydecay = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call = call i32 @unzGetCurrentFileInfo64(ptr noundef %0, ptr noundef %file_info, ptr noundef %arraydecay, i64 noundef 65537, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  store i32 %call, ptr %err, align 4
  %1 = load i32, ptr %err, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %2)
  %3 = load i32, ptr %err, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 8192, ptr %size_buf, align 4
  %4 = load i32, ptr %size_buf, align 4
  %conv = zext i32 %4 to i64
  %call2 = call ptr @malloc(i64 noundef %conv) #10
  store ptr %call2, ptr %buf, align 8
  %5 = load ptr, ptr %buf, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  store i32 -104, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  store ptr %arraydecay8, ptr %filename_withoutpath, align 8
  store ptr %arraydecay8, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end7
  %6 = load ptr, ptr %p, align 8
  %7 = load i8, ptr %6, align 1
  %conv9 = sext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %p, align 8
  %9 = load i8, ptr %8, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 47
  br i1 %cmp13, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %10 = load ptr, ptr %p, align 8
  %11 = load i8, ptr %10, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 92
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false, %while.body
  %12 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %add.ptr, ptr %filename_withoutpath, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false
  %13 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %filename_withoutpath, align 8
  %15 = load i8, ptr %14, align 1
  %conv20 = sext i8 %15 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.end
  %16 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp24 = icmp eq i32 %17, 0
  br i1 %cmp24, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.then23
  %arraydecay27 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %arraydecay27)
  %arraydecay29 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call30 = call i32 @mymkdir(ptr noundef %arraydecay29)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then23
  br label %if.end206

if.else:                                          ; preds = %while.end
  store i32 0, ptr %skip, align 4
  %18 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %19 = load i32, ptr %18, align 4
  %cmp32 = icmp eq i32 %19, 0
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else
  %arraydecay35 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  store ptr %arraydecay35, ptr %write_filename, align 8
  br label %if.end37

if.else36:                                        ; preds = %if.else
  %20 = load ptr, ptr %filename_withoutpath, align 8
  store ptr %20, ptr %write_filename, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then34
  %21 = load ptr, ptr %write_filename, align 8
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx, align 1
  %conv38 = sext i8 %22 to i32
  %cmp39 = icmp ne i32 %conv38, 0
  br i1 %cmp39, label %if.then41, label %if.end60

if.then41:                                        ; preds = %if.end37
  %23 = load ptr, ptr %write_filename, align 8
  store ptr %23, ptr %relative_check, align 8
  br label %while.cond42

while.cond42:                                     ; preds = %if.end57, %if.then41
  %24 = load ptr, ptr %relative_check, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %24, i64 1
  %25 = load i8, ptr %arrayidx43, align 1
  %conv44 = sext i8 %25 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %while.body47, label %while.end59

while.body47:                                     ; preds = %while.cond42
  %26 = load ptr, ptr %relative_check, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %27 to i32
  %cmp50 = icmp eq i32 %conv49, 46
  br i1 %cmp50, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %while.body47
  %28 = load ptr, ptr %relative_check, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %29 to i32
  %cmp54 = icmp eq i32 %conv53, 46
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %relative_check, align 8
  store ptr %30, ptr %write_filename, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %land.lhs.true, %while.body47
  %31 = load ptr, ptr %relative_check, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr58, ptr %relative_check, align 8
  br label %while.cond42, !llvm.loop !13

while.end59:                                      ; preds = %while.cond42
  br label %if.end60

if.end60:                                         ; preds = %while.end59, %if.end37
  br label %while.cond61

while.cond61:                                     ; preds = %while.body70, %if.end60
  %32 = load ptr, ptr %write_filename, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %33 to i32
  %cmp64 = icmp eq i32 %conv63, 47
  br i1 %cmp64, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond61
  %34 = load ptr, ptr %write_filename, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx66, align 1
  %conv67 = sext i8 %35 to i32
  %cmp68 = icmp eq i32 %conv67, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond61
  %36 = phi i1 [ true, %while.cond61 ], [ %cmp68, %lor.rhs ]
  br i1 %36, label %while.body70, label %while.end72

while.body70:                                     ; preds = %lor.end
  %37 = load ptr, ptr %write_filename, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr71, ptr %write_filename, align 8
  br label %while.cond61, !llvm.loop !14

while.end72:                                      ; preds = %lor.end
  %38 = load ptr, ptr %uf.addr, align 8
  %39 = load ptr, ptr %password.addr, align 8
  %call73 = call i32 @unzOpenCurrentFilePassword(ptr noundef %38, ptr noundef %39)
  store i32 %call73, ptr %err, align 4
  %40 = load i32, ptr %err, align 4
  %cmp74 = icmp ne i32 %40, 0
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %while.end72
  %41 = load i32, ptr %err, align 4
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef %41)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %while.end72
  %42 = load ptr, ptr %popt_overwrite.addr, align 8
  %43 = load i32, ptr %42, align 4
  %cmp79 = icmp eq i32 %43, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end130

land.lhs.true81:                                  ; preds = %if.end78
  %44 = load i32, ptr %err, align 4
  %cmp82 = icmp eq i32 %44, 0
  br i1 %cmp82, label %if.then84, label %if.end130

if.then84:                                        ; preds = %land.lhs.true81
  store i8 0, ptr %rep, align 1
  %45 = load ptr, ptr %write_filename, align 8
  %call85 = call ptr @"\01_fopen"(ptr noundef %45, ptr noundef @.str.26)
  store ptr %call85, ptr %ftestexist, align 8
  %46 = load ptr, ptr %ftestexist, align 8
  %cmp86 = icmp ne ptr %46, null
  br i1 %cmp86, label %if.then88, label %if.end119

if.then88:                                        ; preds = %if.then84
  %47 = load ptr, ptr %ftestexist, align 8
  %call89 = call i32 @fclose(ptr noundef %47)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then88
  %48 = load ptr, ptr %write_filename, align 8
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, ptr noundef %48)
  %arraydecay91 = getelementptr inbounds [128 x i8], ptr %answer, i64 0, i64 0
  %call92 = call i32 (ptr, ...) @scanf(ptr noundef @.str.28, ptr noundef %arraydecay91)
  store i32 %call92, ptr %ret, align 4
  %49 = load i32, ptr %ret, align 4
  %cmp93 = icmp ne i32 %49, 1
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.body
  call void @exit(i32 noundef 1) #9
  unreachable

if.end96:                                         ; preds = %do.body
  %arrayidx97 = getelementptr inbounds [128 x i8], ptr %answer, i64 0, i64 0
  %50 = load i8, ptr %arrayidx97, align 1
  store i8 %50, ptr %rep, align 1
  %51 = load i8, ptr %rep, align 1
  %conv98 = sext i8 %51 to i32
  %cmp99 = icmp sge i32 %conv98, 97
  br i1 %cmp99, label %land.lhs.true101, label %if.end108

land.lhs.true101:                                 ; preds = %if.end96
  %52 = load i8, ptr %rep, align 1
  %conv102 = sext i8 %52 to i32
  %cmp103 = icmp sle i32 %conv102, 122
  br i1 %cmp103, label %if.then105, label %if.end108

if.then105:                                       ; preds = %land.lhs.true101
  %53 = load i8, ptr %rep, align 1
  %conv106 = sext i8 %53 to i32
  %sub = sub nsw i32 %conv106, 32
  %conv107 = trunc i32 %sub to i8
  store i8 %conv107, ptr %rep, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %land.lhs.true101, %if.end96
  br label %do.cond

do.cond:                                          ; preds = %if.end108
  %54 = load i8, ptr %rep, align 1
  %conv109 = sext i8 %54 to i32
  %cmp110 = icmp ne i32 %conv109, 89
  br i1 %cmp110, label %land.lhs.true112, label %land.end

land.lhs.true112:                                 ; preds = %do.cond
  %55 = load i8, ptr %rep, align 1
  %conv113 = sext i8 %55 to i32
  %cmp114 = icmp ne i32 %conv113, 78
  br i1 %cmp114, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true112
  %56 = load i8, ptr %rep, align 1
  %conv116 = sext i8 %56 to i32
  %cmp117 = icmp ne i32 %conv116, 65
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true112, %do.cond
  %57 = phi i1 [ false, %land.lhs.true112 ], [ false, %do.cond ], [ %cmp117, %land.rhs ]
  br i1 %57, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %land.end
  br label %if.end119

if.end119:                                        ; preds = %do.end, %if.then84
  %58 = load i8, ptr %rep, align 1
  %conv120 = sext i8 %58 to i32
  %cmp121 = icmp eq i32 %conv120, 78
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end119
  store i32 1, ptr %skip, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end119
  %59 = load i8, ptr %rep, align 1
  %conv125 = sext i8 %59 to i32
  %cmp126 = icmp eq i32 %conv125, 65
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end124
  %60 = load ptr, ptr %popt_overwrite.addr, align 8
  store i32 1, ptr %60, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end124
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %land.lhs.true81, %if.end78
  %61 = load i32, ptr %skip, align 4
  %cmp131 = icmp eq i32 %61, 0
  br i1 %cmp131, label %land.lhs.true133, label %if.end159

land.lhs.true133:                                 ; preds = %if.end130
  %62 = load i32, ptr %err, align 4
  %cmp134 = icmp eq i32 %62, 0
  br i1 %cmp134, label %if.then136, label %if.end159

if.then136:                                       ; preds = %land.lhs.true133
  %63 = load ptr, ptr %write_filename, align 8
  %call137 = call ptr @"\01_fopen"(ptr noundef %63, ptr noundef @.str.29)
  store ptr %call137, ptr %fout, align 8
  %64 = load ptr, ptr %fout, align 8
  %cmp138 = icmp eq ptr %64, null
  br i1 %cmp138, label %land.lhs.true140, label %if.end153

land.lhs.true140:                                 ; preds = %if.then136
  %65 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %66 = load i32, ptr %65, align 4
  %cmp141 = icmp eq i32 %66, 0
  br i1 %cmp141, label %land.lhs.true143, label %if.end153

land.lhs.true143:                                 ; preds = %land.lhs.true140
  %67 = load ptr, ptr %filename_withoutpath, align 8
  %arraydecay144 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %cmp145 = icmp ne ptr %67, %arraydecay144
  br i1 %cmp145, label %if.then147, label %if.end153

if.then147:                                       ; preds = %land.lhs.true143
  %68 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %68, i64 -1
  %69 = load i8, ptr %add.ptr148, align 1
  store i8 %69, ptr %c, align 1
  %70 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr149 = getelementptr inbounds i8, ptr %70, i64 -1
  store i8 0, ptr %add.ptr149, align 1
  %71 = load ptr, ptr %write_filename, align 8
  %call150 = call i32 @makedir(ptr noundef %71)
  %72 = load i8, ptr %c, align 1
  %73 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr151 = getelementptr inbounds i8, ptr %73, i64 -1
  store i8 %72, ptr %add.ptr151, align 1
  %74 = load ptr, ptr %write_filename, align 8
  %call152 = call ptr @"\01_fopen"(ptr noundef %74, ptr noundef @.str.29)
  store ptr %call152, ptr %fout, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then147, %land.lhs.true143, %land.lhs.true140, %if.then136
  %75 = load ptr, ptr %fout, align 8
  %cmp154 = icmp eq ptr %75, null
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.end153
  %76 = load ptr, ptr %write_filename, align 8
  %call157 = call i32 (ptr, ...) @printf(ptr noundef @.str.30, ptr noundef %76)
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end153
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %land.lhs.true133, %if.end130
  %77 = load ptr, ptr %fout, align 8
  %cmp160 = icmp ne ptr %77, null
  br i1 %cmp160, label %if.then162, label %if.end193

if.then162:                                       ; preds = %if.end159
  %78 = load ptr, ptr %write_filename, align 8
  %call163 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef %78)
  br label %do.body164

do.body164:                                       ; preds = %do.cond182, %if.then162
  %79 = load ptr, ptr %uf.addr, align 8
  %80 = load ptr, ptr %buf, align 8
  %81 = load i32, ptr %size_buf, align 4
  %call165 = call i32 @unzReadCurrentFile(ptr noundef %79, ptr noundef %80, i32 noundef %81)
  store i32 %call165, ptr %err, align 4
  %82 = load i32, ptr %err, align 4
  %cmp166 = icmp slt i32 %82, 0
  br i1 %cmp166, label %if.then168, label %if.end170

if.then168:                                       ; preds = %do.body164
  %83 = load i32, ptr %err, align 4
  %call169 = call i32 (ptr, ...) @printf(ptr noundef @.str.32, i32 noundef %83)
  br label %do.end185

if.end170:                                        ; preds = %do.body164
  %84 = load i32, ptr %err, align 4
  %cmp171 = icmp sgt i32 %84, 0
  br i1 %cmp171, label %if.then173, label %if.end181

if.then173:                                       ; preds = %if.end170
  %85 = load ptr, ptr %buf, align 8
  %86 = load i32, ptr %err, align 4
  %conv174 = zext i32 %86 to i64
  %87 = load ptr, ptr %fout, align 8
  %call175 = call i64 @"\01_fwrite"(ptr noundef %85, i64 noundef %conv174, i64 noundef 1, ptr noundef %87)
  %cmp176 = icmp ne i64 %call175, 1
  br i1 %cmp176, label %if.then178, label %if.end180

if.then178:                                       ; preds = %if.then173
  %call179 = call i32 (ptr, ...) @printf(ptr noundef @.str.33)
  store i32 -1, ptr %err, align 4
  br label %do.end185

if.end180:                                        ; preds = %if.then173
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end170
  br label %do.cond182

do.cond182:                                       ; preds = %if.end181
  %88 = load i32, ptr %err, align 4
  %cmp183 = icmp sgt i32 %88, 0
  br i1 %cmp183, label %do.body164, label %do.end185, !llvm.loop !16

do.end185:                                        ; preds = %do.cond182, %if.then178, %if.then168
  %89 = load ptr, ptr %fout, align 8
  %tobool = icmp ne ptr %89, null
  br i1 %tobool, label %if.then186, label %if.end188

if.then186:                                       ; preds = %do.end185
  %90 = load ptr, ptr %fout, align 8
  %call187 = call i32 @fclose(ptr noundef %90)
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %do.end185
  %91 = load i32, ptr %err, align 4
  %cmp189 = icmp eq i32 %91, 0
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end188
  %92 = load ptr, ptr %write_filename, align 8
  %dosDate = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 4
  %93 = load i64, ptr %dosDate, align 8
  %tmu_date = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp, ptr align 8 %tmu_date, i64 24, i1 false)
  call void @change_file_date(ptr noundef %92, i64 noundef %93, ptr noundef %byval-temp)
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %if.end188
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.end159
  %94 = load i32, ptr %err, align 4
  %cmp194 = icmp eq i32 %94, 0
  br i1 %cmp194, label %if.then196, label %if.else203

if.then196:                                       ; preds = %if.end193
  %95 = load ptr, ptr %uf.addr, align 8
  %call197 = call i32 @unzCloseCurrentFile(ptr noundef %95)
  store i32 %call197, ptr %err, align 4
  %96 = load i32, ptr %err, align 4
  %cmp198 = icmp ne i32 %96, 0
  br i1 %cmp198, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.then196
  %97 = load i32, ptr %err, align 4
  %call201 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, i32 noundef %97)
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.then196
  br label %if.end205

if.else203:                                       ; preds = %if.end193
  %98 = load ptr, ptr %uf.addr, align 8
  %call204 = call i32 @unzCloseCurrentFile(ptr noundef %98)
  br label %if.end205

if.end205:                                        ; preds = %if.else203, %if.end202
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end31
  %99 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %99)
  %100 = load i32, ptr %err, align 4
  store i32 %100, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end206, %if.then5, %if.then
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_8(ptr noundef %uf, ptr noundef %popt_extract_without_path, ptr noundef %popt_overwrite, ptr noundef %password)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %uf.addr = alloca ptr, align 8
  %popt_extract_without_path.addr = alloca ptr, align 8
  %popt_overwrite.addr = alloca ptr, align 8
  %password.addr = alloca ptr, align 8
  %filename_inzip = alloca [65537 x i8], align 1
  %filename_withoutpath = alloca ptr, align 8
  %p = alloca ptr, align 8
  %err = alloca i32, align 4
  %fout = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %size_buf = alloca i32, align 4
  %file_info = alloca %struct.unz_file_info64_s, align 8
  %write_filename = alloca ptr, align 8
  %skip = alloca i32, align 4
  %relative_check = alloca ptr, align 8
  %rep = alloca i8, align 1
  %ftestexist = alloca ptr, align 8
  %answer = alloca [128 x i8], align 1
  %ret = alloca i32, align 4
  %c = alloca i8, align 1
  %byval-temp = alloca %struct.tm_unz_s, align 4
  store ptr %uf, ptr %uf.addr, align 8
  store ptr %popt_extract_without_path, ptr %popt_extract_without_path.addr, align 8
  store ptr %popt_overwrite, ptr %popt_overwrite.addr, align 8
  store ptr %password, ptr %password.addr, align 8
  store i32 0, ptr %err, align 4
  store ptr null, ptr %fout, align 8
  %0 = load ptr, ptr %uf.addr, align 8
  %arraydecay = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call = call i32 @unzGetCurrentFileInfo64(ptr noundef %0, ptr noundef %file_info, ptr noundef %arraydecay, i64 noundef 65537, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0)
  store i32 %call, ptr %err, align 4
  %1 = load i32, ptr %err, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %2)
  %3 = load i32, ptr %err, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 8192, ptr %size_buf, align 4
  %4 = load i32, ptr %size_buf, align 4
  %conv = zext i32 %4 to i64
  %call2 = call ptr @malloc(i64 noundef %conv) #10
  store ptr %call2, ptr %buf, align 8
  %5 = load ptr, ptr %buf, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  store i32 -104, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  store ptr %arraydecay8, ptr %filename_withoutpath, align 8
  store ptr %arraydecay8, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end7
  %6 = load ptr, ptr %p, align 8
  %7 = load i8, ptr %6, align 1
  %conv9 = sext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %p, align 8
  %9 = load i8, ptr %8, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 47
  br i1 %cmp13, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %10 = load ptr, ptr %p, align 8
  %11 = load i8, ptr %10, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 92
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false, %while.body
  %12 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %add.ptr, ptr %filename_withoutpath, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false
  %13 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %filename_withoutpath, align 8
  %15 = load i8, ptr %14, align 1
  %conv20 = sext i8 %15 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.end
  %16 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp24 = icmp eq i32 %17, 0
  br i1 %cmp24, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.then23
  %arraydecay27 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %arraydecay27)
  %arraydecay29 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %call30 = call i32 @mymkdir(ptr noundef %arraydecay29)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then23
  br label %if.end206

if.else:                                          ; preds = %while.end
  store i32 0, ptr %skip, align 4
  %18 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %19 = load i32, ptr %18, align 4
  %cmp32 = icmp eq i32 %19, 0
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else
  %arraydecay35 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  store ptr %arraydecay35, ptr %write_filename, align 8
  br label %if.end37

if.else36:                                        ; preds = %if.else
  %20 = load ptr, ptr %filename_withoutpath, align 8
  store ptr %20, ptr %write_filename, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then34
  %21 = load ptr, ptr %write_filename, align 8
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx, align 1
  %conv38 = sext i8 %22 to i32
  %cmp39 = icmp ne i32 %conv38, 0
  br i1 %cmp39, label %if.then41, label %if.end60

if.then41:                                        ; preds = %if.end37
  %23 = load ptr, ptr %write_filename, align 8
  store ptr %23, ptr %relative_check, align 8
  br label %while.cond42

while.cond42:                                     ; preds = %if.end57, %if.then41
  %24 = load ptr, ptr %relative_check, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %24, i64 1
  %25 = load i8, ptr %arrayidx43, align 1
  %conv44 = sext i8 %25 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %while.body47, label %while.end59

while.body47:                                     ; preds = %while.cond42
  %26 = load ptr, ptr %relative_check, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %27 to i32
  %cmp50 = icmp eq i32 %conv49, 46
  br i1 %cmp50, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %while.body47
  %28 = load ptr, ptr %relative_check, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %29 to i32
  %cmp54 = icmp eq i32 %conv53, 46
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %relative_check, align 8
  store ptr %30, ptr %write_filename, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %land.lhs.true, %while.body47
  %31 = load ptr, ptr %relative_check, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr58, ptr %relative_check, align 8
  br label %while.cond42, !llvm.loop !13

while.end59:                                      ; preds = %while.cond42
  br label %if.end60

if.end60:                                         ; preds = %while.end59, %if.end37
  br label %while.cond61

while.cond61:                                     ; preds = %while.body70, %if.end60
  %32 = load ptr, ptr %write_filename, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %33 to i32
  %cmp64 = icmp eq i32 %conv63, 47
  br i1 %cmp64, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond61
  %34 = load ptr, ptr %write_filename, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx66, align 1
  %conv67 = sext i8 %35 to i32
  %cmp68 = icmp eq i32 %conv67, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond61
  %36 = phi i1 [ true, %while.cond61 ], [ %cmp68, %lor.rhs ]
  br i1 %36, label %while.body70, label %while.end72

while.body70:                                     ; preds = %lor.end
  %37 = load ptr, ptr %write_filename, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr71, ptr %write_filename, align 8
  br label %while.cond61, !llvm.loop !14

while.end72:                                      ; preds = %lor.end
  %38 = load ptr, ptr %uf.addr, align 8
  %39 = load ptr, ptr %password.addr, align 8
  %call73 = call i32 @unzOpenCurrentFilePassword(ptr noundef %38, ptr noundef %39)
  store i32 %call73, ptr %err, align 4
  %40 = load i32, ptr %err, align 4
  %cmp74 = icmp ne i32 %40, 0
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %while.end72
  %41 = load i32, ptr %err, align 4
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef %41)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %while.end72
  %42 = load ptr, ptr %popt_overwrite.addr, align 8
  %43 = load i32, ptr %42, align 4
  %cmp79 = icmp eq i32 %43, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end130

land.lhs.true81:                                  ; preds = %if.end78
  %44 = load i32, ptr %err, align 4
  %cmp82 = icmp eq i32 %44, 0
  br i1 %cmp82, label %if.then84, label %if.end130

if.then84:                                        ; preds = %land.lhs.true81
  store i8 0, ptr %rep, align 1
  %45 = load ptr, ptr %write_filename, align 8
  %call85 = call ptr @"\01_fopen"(ptr noundef %45, ptr noundef @.str.26)
  store ptr %call85, ptr %ftestexist, align 8
  %46 = load ptr, ptr %ftestexist, align 8
  %cmp86 = icmp ne ptr %46, null
  br i1 %cmp86, label %if.then88, label %if.end119

if.then88:                                        ; preds = %if.then84
  %47 = load ptr, ptr %ftestexist, align 8
  %call89 = call i32 @fclose(ptr noundef %47)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then88
  %48 = load ptr, ptr %write_filename, align 8
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, ptr noundef %48)
  %arraydecay91 = getelementptr inbounds [128 x i8], ptr %answer, i64 0, i64 0
  %call92 = call i32 (ptr, ...) @scanf(ptr noundef @.str.28, ptr noundef %arraydecay91)
  store i32 %call92, ptr %ret, align 4
  %49 = load i32, ptr %ret, align 4
  %cmp93 = icmp ne i32 %49, 1
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.body
  call void @exit(i32 noundef 1) #9
  unreachable

if.end96:                                         ; preds = %do.body
  %arrayidx97 = getelementptr inbounds [128 x i8], ptr %answer, i64 0, i64 0
  %50 = load i8, ptr %arrayidx97, align 1
  store i8 %50, ptr %rep, align 1
  %51 = load i8, ptr %rep, align 1
  %conv98 = sext i8 %51 to i32
  %cmp99 = icmp sge i32 %conv98, 97
  br i1 %cmp99, label %land.lhs.true101, label %if.end108

land.lhs.true101:                                 ; preds = %if.end96
  %52 = load i8, ptr %rep, align 1
  %conv102 = sext i8 %52 to i32
  %cmp103 = icmp sle i32 %conv102, 122
  br i1 %cmp103, label %if.then105, label %if.end108

if.then105:                                       ; preds = %land.lhs.true101
  %53 = load i8, ptr %rep, align 1
  %conv106 = sext i8 %53 to i32
  %sub = sub nsw i32 %conv106, 32
  %conv107 = trunc i32 %sub to i8
  store i8 %conv107, ptr %rep, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %land.lhs.true101, %if.end96
  br label %do.cond

do.cond:                                          ; preds = %if.end108
  %54 = load i8, ptr %rep, align 1
  %conv109 = sext i8 %54 to i32
  %cmp110 = icmp ne i32 %conv109, 89
  br i1 %cmp110, label %land.lhs.true112, label %land.end

land.lhs.true112:                                 ; preds = %do.cond
  %55 = load i8, ptr %rep, align 1
  %conv113 = sext i8 %55 to i32
  %cmp114 = icmp ne i32 %conv113, 78
  br i1 %cmp114, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true112
  %56 = load i8, ptr %rep, align 1
  %conv116 = sext i8 %56 to i32
  %cmp117 = icmp ne i32 %conv116, 65
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true112, %do.cond
  %57 = phi i1 [ false, %land.lhs.true112 ], [ false, %do.cond ], [ %cmp117, %land.rhs ]
  br i1 %57, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %land.end
  br label %if.end119

if.end119:                                        ; preds = %do.end, %if.then84
  %58 = load i8, ptr %rep, align 1
  %conv120 = sext i8 %58 to i32
  %cmp121 = icmp eq i32 %conv120, 78
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end119
  store i32 1, ptr %skip, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end119
  %59 = load i8, ptr %rep, align 1
  %conv125 = sext i8 %59 to i32
  %cmp126 = icmp eq i32 %conv125, 65
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end124
  %60 = load ptr, ptr %popt_overwrite.addr, align 8
  store i32 1, ptr %60, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end124
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %land.lhs.true81, %if.end78
  %61 = load i32, ptr %skip, align 4
  %cmp131 = icmp eq i32 %61, 0
  br i1 %cmp131, label %land.lhs.true133, label %if.end159

land.lhs.true133:                                 ; preds = %if.end130
  %62 = load i32, ptr %err, align 4
  %cmp134 = icmp eq i32 %62, 0
  br i1 %cmp134, label %if.then136, label %if.end159

if.then136:                                       ; preds = %land.lhs.true133
  %63 = load ptr, ptr %write_filename, align 8
  %call137 = call ptr @"\01_fopen"(ptr noundef %63, ptr noundef @.str.29)
  store ptr %call137, ptr %fout, align 8
  %64 = load ptr, ptr %fout, align 8
  %cmp138 = icmp eq ptr %64, null
  br i1 %cmp138, label %land.lhs.true140, label %if.end153

land.lhs.true140:                                 ; preds = %if.then136
  %65 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %66 = load i32, ptr %65, align 4
  %cmp141 = icmp eq i32 %66, 0
  br i1 %cmp141, label %land.lhs.true143, label %if.end153

land.lhs.true143:                                 ; preds = %land.lhs.true140
  %67 = load ptr, ptr %filename_withoutpath, align 8
  %arraydecay144 = getelementptr inbounds [65537 x i8], ptr %filename_inzip, i64 0, i64 0
  %cmp145 = icmp ne ptr %67, %arraydecay144
  br i1 %cmp145, label %if.then147, label %if.end153

if.then147:                                       ; preds = %land.lhs.true143
  %68 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %68, i64 -1
  %69 = load i8, ptr %add.ptr148, align 1
  store i8 %69, ptr %c, align 1
  %70 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr149 = getelementptr inbounds i8, ptr %70, i64 -1
  store i8 0, ptr %add.ptr149, align 1
  %71 = load ptr, ptr %write_filename, align 8
  %call150 = call i32 @makedir(ptr noundef %71)
  %72 = load i8, ptr %c, align 1
  %73 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr151 = getelementptr inbounds i8, ptr %73, i64 -1
  store i8 %72, ptr %add.ptr151, align 1
  %74 = load ptr, ptr %write_filename, align 8
  %call152 = call ptr @"\01_fopen"(ptr noundef %74, ptr noundef @.str.29)
  store ptr %call152, ptr %fout, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then147, %land.lhs.true143, %land.lhs.true140, %if.then136
  %75 = load ptr, ptr %fout, align 8
  %cmp154 = icmp eq ptr %75, null
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.end153
  %76 = load ptr, ptr %write_filename, align 8
  %call157 = call i32 (ptr, ...) @printf(ptr noundef @.str.30, ptr noundef %76)
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end153
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %land.lhs.true133, %if.end130
  %77 = load ptr, ptr %fout, align 8
  %cmp160 = icmp ne ptr %77, null
  br i1 %cmp160, label %if.then162, label %if.end193

if.then162:                                       ; preds = %if.end159
  %78 = load ptr, ptr %write_filename, align 8
  %call163 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef %78)
  br label %do.body164

do.body164:                                       ; preds = %do.cond182, %if.then162
  %79 = load ptr, ptr %uf.addr, align 8
  %80 = load ptr, ptr %buf, align 8
  %81 = load i32, ptr %size_buf, align 4
  %call165 = call i32 @unzReadCurrentFile(ptr noundef %79, ptr noundef %80, i32 noundef %81)
  store i32 %call165, ptr %err, align 4
  %82 = load i32, ptr %err, align 4
  %cmp166 = icmp slt i32 %82, 0
  br i1 %cmp166, label %if.then168, label %if.end170

if.then168:                                       ; preds = %do.body164
  %83 = load i32, ptr %err, align 4
  %call169 = call i32 (ptr, ...) @printf(ptr noundef @.str.32, i32 noundef %83)
  br label %do.end185

if.end170:                                        ; preds = %do.body164
  %84 = load i32, ptr %err, align 4
  %cmp171 = icmp sgt i32 %84, 0
  br i1 %cmp171, label %if.then173, label %if.end181

if.then173:                                       ; preds = %if.end170
  %85 = load ptr, ptr %buf, align 8
  %86 = load i32, ptr %err, align 4
  %conv174 = zext i32 %86 to i64
  %87 = load ptr, ptr %fout, align 8
  %call175 = call i64 @"\01_fwrite"(ptr noundef %85, i64 noundef %conv174, i64 noundef 1, ptr noundef %87)
  %cmp176 = icmp ne i64 %call175, 1
  br i1 %cmp176, label %if.then178, label %if.end180

if.then178:                                       ; preds = %if.then173
  %call179 = call i32 (ptr, ...) @printf(ptr noundef @.str.33)
  store i32 -1, ptr %err, align 4
  br label %do.end185

if.end180:                                        ; preds = %if.then173
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end170
  br label %do.cond182

do.cond182:                                       ; preds = %if.end181
  %88 = load i32, ptr %err, align 4
  %cmp183 = icmp sgt i32 %88, 0
  br i1 %cmp183, label %do.body164, label %do.end185, !llvm.loop !16

do.end185:                                        ; preds = %do.cond182, %if.then178, %if.then168
  %89 = load ptr, ptr %fout, align 8
  %tobool = icmp ne ptr %89, null
  br i1 %tobool, label %if.then186, label %if.end188

if.then186:                                       ; preds = %do.end185
  %90 = load ptr, ptr %fout, align 8
  %call187 = call i32 @fclose(ptr noundef %90)
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %do.end185
  %91 = load i32, ptr %err, align 4
  %cmp189 = icmp eq i32 %91, 0
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end188
  %92 = load ptr, ptr %write_filename, align 8
  %dosDate = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 4
  %93 = load i64, ptr %dosDate, align 8
  %tmu_date = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp, ptr align 8 %tmu_date, i64 24, i1 false)
  call void @change_file_date(ptr noundef %92, i64 noundef %93, ptr noundef %byval-temp)
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %if.end188
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.end159
  %94 = load i32, ptr %err, align 4
  %cmp194 = icmp eq i32 %94, 0
  br i1 %cmp194, label %if.then196, label %if.else203

if.then196:                                       ; preds = %if.end193
  %95 = load ptr, ptr %uf.addr, align 8
  %call197 = call i32 @unzCloseCurrentFile(ptr noundef %95)
  store i32 %call197, ptr %err, align 4
  %96 = load i32, ptr %err, align 4
  %cmp198 = icmp ne i32 %96, 0
  br i1 %cmp198, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.then196
  %97 = load i32, ptr %err, align 4
  %call201 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, i32 noundef %97)
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.then196
  br label %if.end205

if.else203:                                       ; preds = %if.end193
  %98 = load ptr, ptr %uf.addr, align 8
  %call204 = call i32 @unzCloseCurrentFile(ptr noundef %98)
  br label %if.end205

if.end205:                                        ; preds = %if.else203, %if.end202
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end31
  %99 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %99)
  %100 = load i32, ptr %err, align 4
  store i32 %100, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end206, %if.then5, %if.then
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_9(ptr noundef %dirname)  alwaysinline#0 {
entry:
  %dirname.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dirname, ptr %dirname.addr, align 8
  store i32 0, ptr %ret, align 4
  %0 = load ptr, ptr %dirname.addr, align 8
  %call = call i32 @mkdir(ptr noundef %0, i16 noundef zeroext 509)
  store i32 %call, ptr %ret, align 4
  %1 = load i32, ptr %ret, align 4
  ret i32 %1
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_10(ptr noundef %newdir)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %newdir.addr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %p = alloca ptr, align 8
  %len = alloca i64, align 8
  %hold = alloca i8, align 1
  store ptr %newdir, ptr %newdir.addr, align 8
  %0 = load ptr, ptr %newdir.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  store i64 %call, ptr %len, align 8
  %1 = load i64, ptr %len, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %len, align 8
  %add = add i64 %2, 1
  %call1 = call ptr @malloc(i64 noundef %add) #10
  store ptr %call1, ptr %buffer, align 8
  %3 = load ptr, ptr %buffer, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  store i32 -104, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %buffer, align 8
  %5 = load ptr, ptr %newdir.addr, align 8
  %6 = load i64, ptr %len, align 8
  %add6 = add i64 %6, 1
  %7 = load ptr, ptr %buffer, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call7 = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef %add6, i64 noundef %8) #8
  %9 = load ptr, ptr %buffer, align 8
  %10 = load i64, ptr %len, align 8
  %sub = sub i64 %10, 1
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %sub
  %11 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv, 47
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  %12 = load ptr, ptr %buffer, align 8
  %13 = load i64, ptr %len, align 8
  %sub11 = sub i64 %13, 1
  %arrayidx12 = getelementptr inbounds i8, ptr %12, i64 %sub11
  store i8 0, ptr %arrayidx12, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end5
  %14 = load ptr, ptr %buffer, align 8
  %call14 = call i32 @mymkdir(ptr noundef %14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %15 = load ptr, ptr %buffer, align 8
  call void @free(ptr noundef %15)
  store i32 1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %16 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %add.ptr, ptr %p, align 8
  br label %while.body

while.body:                                       ; preds = %if.end18, %if.end42
  br label %while.cond19

while.cond19:                                     ; preds = %while.body27, %while.body
  %17 = load ptr, ptr %p, align 8
  %18 = load i8, ptr %17, align 1
  %conv20 = sext i8 %18 to i32
  %tobool = icmp ne i32 %conv20, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond19
  %19 = load ptr, ptr %p, align 8
  %20 = load i8, ptr %19, align 1
  %conv21 = sext i8 %20 to i32
  %cmp22 = icmp ne i32 %conv21, 92
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %21 = load ptr, ptr %p, align 8
  %22 = load i8, ptr %21, align 1
  %conv24 = sext i8 %22 to i32
  %cmp25 = icmp ne i32 %conv24, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond19
  %23 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond19 ], [ %cmp25, %land.rhs ]
  br i1 %23, label %while.body27, label %while.end

while.body27:                                     ; preds = %land.end
  %24 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond19, !llvm.loop !17

while.end:                                        ; preds = %land.end
  %25 = load ptr, ptr %p, align 8
  %26 = load i8, ptr %25, align 1
  store i8 %26, ptr %hold, align 1
  %27 = load ptr, ptr %p, align 8
  store i8 0, ptr %27, align 1
  %28 = load ptr, ptr %buffer, align 8
  %call28 = call i32 @mymkdir(ptr noundef %28)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %land.lhs.true31, label %if.end37

land.lhs.true31:                                  ; preds = %while.end
  %call32 = call ptr @__error()
  %29 = load i32, ptr %call32, align 4
  %cmp33 = icmp eq i32 %29, 2
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %land.lhs.true31
  %30 = load ptr, ptr %buffer, align 8
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, ptr noundef %30)
  %31 = load ptr, ptr %buffer, align 8
  call void @free(ptr noundef %31)
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %land.lhs.true31, %while.end
  %32 = load i8, ptr %hold, align 1
  %conv38 = sext i8 %32 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  br label %while.end44

if.end42:                                         ; preds = %if.end37
  %33 = load i8, ptr %hold, align 1
  %34 = load ptr, ptr %p, align 8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr43, ptr %p, align 8
  store i8 %33, ptr %34, align 1
  br label %while.body

while.end44:                                      ; preds = %if.then41
  %35 = load ptr, ptr %buffer, align 8
  call void @free(ptr noundef %35)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end44, %if.then35, %if.then17, %if.then3, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_11(ptr noundef %filename, i64 noundef %dosdate, ptr noundef %tmu_date)  alwaysinline#0 {
entry:
  %filename.addr = alloca ptr, align 8
  %dosdate.addr = alloca i64, align 8
  %ut = alloca %struct.utimbuf, align 8
  %newdate = alloca %struct.tm, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i64 %dosdate, ptr %dosdate.addr, align 8
  %0 = load i64, ptr %dosdate.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 0
  %1 = load i32, ptr %tm_sec, align 4
  %tm_sec1 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 0
  store i32 %1, ptr %tm_sec1, align 8
  %tm_min = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 1
  %2 = load i32, ptr %tm_min, align 4
  %tm_min2 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 1
  store i32 %2, ptr %tm_min2, align 4
  %tm_hour = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 2
  %3 = load i32, ptr %tm_hour, align 4
  %tm_hour3 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 2
  store i32 %3, ptr %tm_hour3, align 8
  %tm_mday = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 3
  %4 = load i32, ptr %tm_mday, align 4
  %tm_mday4 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 3
  store i32 %4, ptr %tm_mday4, align 4
  %tm_mon = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 4
  %5 = load i32, ptr %tm_mon, align 4
  %tm_mon5 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 4
  store i32 %5, ptr %tm_mon5, align 8
  %tm_year = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 5
  %6 = load i32, ptr %tm_year, align 4
  %cmp = icmp sgt i32 %6, 1900
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tm_year6 = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 5
  %7 = load i32, ptr %tm_year6, align 4
  %sub = sub nsw i32 %7, 1900
  %tm_year7 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 5
  store i32 %sub, ptr %tm_year7, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %tm_year8 = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i32 0, i32 5
  %8 = load i32, ptr %tm_year8, align 4
  %tm_year9 = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 5
  store i32 %8, ptr %tm_year9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tm_isdst = getelementptr inbounds %struct.tm, ptr %newdate, i32 0, i32 8
  store i32 -1, ptr %tm_isdst, align 8
  %call = call i64 @"\01_mktime"(ptr noundef %newdate)
  %modtime = getelementptr inbounds %struct.utimbuf, ptr %ut, i32 0, i32 1
  store i64 %call, ptr %modtime, align 8
  %actime = getelementptr inbounds %struct.utimbuf, ptr %ut, i32 0, i32 0
  store i64 %call, ptr %actime, align 8
  %9 = load ptr, ptr %filename.addr, align 8
  %call10 = call i32 @utime(ptr noundef %9, ptr noundef %ut)
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_12(ptr noundef %dirname)  alwaysinline#0 {
entry:
  %dirname.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dirname, ptr %dirname.addr, align 8
  store i32 0, ptr %ret, align 4
  %0 = load ptr, ptr %dirname.addr, align 8
  %call = call i32 @mkdir(ptr noundef %0, i16 noundef zeroext 509)
  store i32 %call, ptr %ret, align 4
  %1 = load i32, ptr %ret, align 4
  ret i32 %1
}

define internal i32 @pc_inline_source_snapshot_public_repos_zlib_contrib_minizip_miniunz_13(ptr noundef %dirname)  alwaysinline#0 {
entry:
  %dirname.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dirname, ptr %dirname.addr, align 8
  store i32 0, ptr %ret, align 4
  %0 = load ptr, ptr %dirname.addr, align 8
  %call = call i32 @mkdir(ptr noundef %0, i16 noundef zeroext 509)
  store i32 %call, ptr %ret, align 4
  %1 = load i32, ptr %ret, align 4
  ret i32 %1
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
