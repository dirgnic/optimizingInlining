; ModuleID = './out/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_zlib_contrib_minizip_miniunz.prepared.ll'
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
@str = private unnamed_addr constant [66 x i8] c"MiniUnz 1.1, demo of zLib + Unz package written by Gilles Vollant\00", align 1
@str.1 = private unnamed_addr constant [58 x i8] c"more info at https://www.winimage.com/zLibDll/unzip.html\0A\00", align 1
@str.2 = private unnamed_addr constant [320 x i8] c"Usage : miniunz [-e] [-x] [-v] [-l] [-o] [-p password] file.zip [file_to_extr.] [-d extractdir]\0A\0A  -e  Extract without pathname (junk paths)\0A  -x  Extract with pathname\0A  -v  list files\0A  -l  list files\0A  -d  directory to extract into\0A  -o  overwrite files without prompting\0A  -p  extract encrypted file using password\0A\00", align 1
@str.3 = private unnamed_addr constant [65 x i8] c"  Length  Method     Size Ratio   Date    Time   CRC-32     Name\00", align 1
@str.4 = private unnamed_addr constant [65 x i8] c"  ------  ------     ---- -----   ----    ----   ------     ----\00", align 1
@str.5 = private unnamed_addr constant [32 x i8] c"error in writing extracted file\00", align 1
@str.6 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@str.7 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1

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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %filename_try, i8 0, i64 272, i1 false)
  store i32 0, ptr %ret_value, align 4
  store i32 0, ptr %opt_do_list, align 4
  store i32 1, ptr %opt_do_extract, align 4
  store i32 0, ptr %opt_do_extract_withoutpath, align 4
  store i32 0, ptr %opt_overwrite, align 4
  store i32 0, ptr %opt_extractdir, align 4
  store ptr null, ptr %dirname, align 8
  store ptr null, ptr %uf, align 8
  call void @do_banner()
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  call void @do_help()
  store i32 0, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %entry, %for.inc
  %storemerge = phi i32 [ %inc95, %for.inc ], [ 1, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp slt i32 %storemerge, %1
  br i1 %cmp1, label %for.body, label %if.end96

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load i8, ptr %4, align 1
  %cmp2 = icmp eq i8 %5, 45
  br i1 %cmp2, label %if.then4, label %if.else79

if.then4:                                         ; preds = %for.body
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 %idxprom5
  %8 = load ptr, ptr %arrayidx6, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %add.ptr, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end78, %if.then4
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
  %cmp11 = icmp eq i8 %12, 108
  %13 = load i8, ptr %c, align 1
  %cmp14 = icmp eq i8 %13, 76
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp14
  br i1 %or.cond, label %if.then16, label %if.end

if.then16:                                        ; preds = %while.body
  store i32 1, ptr %opt_do_list, align 4
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then16
  %14 = load i8, ptr %c, align 1
  %cmp18 = icmp eq i8 %14, 118
  %15 = load i8, ptr %c, align 1
  %cmp22 = icmp eq i8 %15, 86
  %or.cond2 = select i1 %cmp18, i1 true, i1 %cmp22
  br i1 %or.cond2, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end
  store i32 1, ptr %opt_do_list, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then24
  %16 = load i8, ptr %c, align 1
  %cmp27 = icmp eq i8 %16, 120
  %17 = load i8, ptr %c, align 1
  %cmp31 = icmp eq i8 %17, 88
  %or.cond3 = select i1 %cmp27, i1 true, i1 %cmp31
  br i1 %or.cond3, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end25
  store i32 1, ptr %opt_do_extract, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end25, %if.then33
  %18 = load i8, ptr %c, align 1
  %cmp36 = icmp eq i8 %18, 101
  %19 = load i8, ptr %c, align 1
  %cmp40 = icmp eq i8 %19, 69
  %or.cond4 = select i1 %cmp36, i1 true, i1 %cmp40
  br i1 %or.cond4, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end34
  store i32 1, ptr %opt_do_extract_withoutpath, align 4
  store i32 1, ptr %opt_do_extract, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end34, %if.then42
  %20 = load i8, ptr %c, align 1
  %cmp45 = icmp eq i8 %20, 111
  %21 = load i8, ptr %c, align 1
  %cmp49 = icmp eq i8 %21, 79
  %or.cond5 = select i1 %cmp45, i1 true, i1 %cmp49
  br i1 %or.cond5, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end43
  store i32 1, ptr %opt_overwrite, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end43, %if.then51
  %22 = load i8, ptr %c, align 1
  %cmp54 = icmp eq i8 %22, 100
  %23 = load i8, ptr %c, align 1
  %cmp58 = icmp eq i8 %23, 68
  %or.cond6 = select i1 %cmp54, i1 true, i1 %cmp58
  br i1 %or.cond6, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end52
  store i32 1, ptr %opt_extractdir, align 4
  %24 = load ptr, ptr %argv.addr, align 8
  %25 = load i32, ptr %i, align 4
  %add = add nsw i32 %25, 1
  %idxprom61 = sext i32 %add to i64
  %arrayidx62 = getelementptr inbounds ptr, ptr %24, i64 %idxprom61
  %26 = load ptr, ptr %arrayidx62, align 8
  store ptr %26, ptr %dirname, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.end52, %if.then60
  %27 = load i8, ptr %c, align 1
  %cmp65 = icmp eq i8 %27, 112
  %28 = load i8, ptr %c, align 1
  %cmp69 = icmp eq i8 %28, 80
  %or.cond7 = select i1 %cmp65, i1 true, i1 %cmp69
  br i1 %or.cond7, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %if.end63
  %29 = load i32, ptr %i, align 4
  %add71 = add nsw i32 %29, 1
  %30 = load i32, ptr %argc.addr, align 4
  %cmp72 = icmp slt i32 %add71, %30
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %argv.addr, align 8
  %32 = load i32, ptr %i, align 4
  %add75 = add nsw i32 %32, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds ptr, ptr %31, i64 %idxprom76
  %33 = load ptr, ptr %arrayidx77, align 8
  store ptr %33, ptr %password, align 8
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end63, %if.then74, %land.lhs.true
  br label %while.cond, !llvm.loop !6

if.else79:                                        ; preds = %for.body
  %34 = load ptr, ptr %zipfilename, align 8
  %cmp80 = icmp eq ptr %34, null
  br i1 %cmp80, label %if.then82, label %if.else85

if.then82:                                        ; preds = %if.else79
  %35 = load ptr, ptr %argv.addr, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom83 = sext i32 %36 to i64
  %arrayidx84 = getelementptr inbounds ptr, ptr %35, i64 %idxprom83
  %37 = load ptr, ptr %arrayidx84, align 8
  store ptr %37, ptr %zipfilename, align 8
  br label %for.inc

if.else85:                                        ; preds = %if.else79
  %38 = load ptr, ptr %filename_to_extract, align 8
  %cmp86 = icmp eq ptr %38, null
  %39 = load i32, ptr %opt_extractdir, align 4
  %tobool.not = icmp eq i32 %39, 0
  %or.cond8 = select i1 %cmp86, i1 %tobool.not, i1 false
  br i1 %or.cond8, label %if.then89, label %for.inc

if.then89:                                        ; preds = %if.else85
  %40 = load ptr, ptr %argv.addr, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %41 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %40, i64 %idxprom90
  %42 = load ptr, ptr %arrayidx91, align 8
  store ptr %42, ptr %filename_to_extract, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.cond, %if.else85, %if.then89, %if.then82
  %43 = load i32, ptr %i, align 4
  %inc95 = add nsw i32 %43, 1
  br label %for.cond, !llvm.loop !8

if.end96:                                         ; preds = %for.cond
  %44 = load ptr, ptr %zipfilename, align 8
  %cmp97.not = icmp eq ptr %44, null
  br i1 %cmp97.not, label %if.end110, label %if.then99

if.then99:                                        ; preds = %if.end96
  %45 = load ptr, ptr %zipfilename, align 8
  %strncpy = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %filename_try, ptr noundef nonnull dereferenceable(1) %45, i64 255)
  %arrayidx100 = getelementptr inbounds [272 x i8], ptr %filename_try, i64 0, i64 256
  store i8 0, ptr %arrayidx100, align 1
  %call101 = call ptr @unzOpen64(ptr noundef %45) #11
  store ptr %call101, ptr %uf, align 8
  %cmp102 = icmp eq ptr %call101, null
  br i1 %cmp102, label %if.then104, label %if.end110

if.then104:                                       ; preds = %if.then99
  %call106 = call ptr @__strcat_chk(ptr noundef nonnull %filename_try, ptr noundef nonnull @.str, i64 noundef 272) #11
  %call108 = call ptr @unzOpen64(ptr noundef nonnull %filename_try) #11
  store ptr %call108, ptr %uf, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then99, %if.then104, %if.end96
  %46 = load ptr, ptr %uf, align 8
  %cmp111 = icmp eq ptr %46, null
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end110
  %47 = load ptr, ptr %zipfilename, align 8
  %call114 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, ptr noundef %47, ptr noundef %47) #11
  store i32 1, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.end110
  %call117 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef nonnull %filename_try) #11
  %48 = load i32, ptr %opt_do_list, align 4
  %cmp118 = icmp eq i32 %48, 1
  br i1 %cmp118, label %if.then120, label %if.else122

if.then120:                                       ; preds = %if.end115
  %49 = load ptr, ptr %uf, align 8
  %call121 = call i32 @do_list(ptr noundef %49)
  store i32 %call121, ptr %ret_value, align 4
  br label %if.end141

if.else122:                                       ; preds = %if.end115
  %50 = load i32, ptr %opt_do_extract, align 4
  %cmp123 = icmp eq i32 %50, 1
  br i1 %cmp123, label %if.then125, label %if.end141

if.then125:                                       ; preds = %if.else122
  %51 = load i32, ptr %opt_extractdir, align 4
  %tobool126.not = icmp eq i32 %51, 0
  br i1 %tobool126.not, label %if.end132, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %if.then125
  %52 = load ptr, ptr %dirname, align 8
  %call128 = call i32 @chdir(ptr noundef %52) #11
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end132, label %if.then130

if.then130:                                       ; preds = %land.lhs.true127
  %53 = load ptr, ptr %dirname, align 8
  %call131 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, ptr noundef %53) #11
  call void @exit(i32 noundef -1) #12
  unreachable

if.end132:                                        ; preds = %land.lhs.true127, %if.then125
  %54 = load ptr, ptr %filename_to_extract, align 8
  %cmp133 = icmp eq ptr %54, null
  br i1 %cmp133, label %if.then135, label %if.else137

if.then135:                                       ; preds = %if.end132
  %55 = load ptr, ptr %uf, align 8
  %56 = load i32, ptr %opt_do_extract_withoutpath, align 4
  %57 = load i32, ptr %opt_overwrite, align 4
  %58 = load ptr, ptr %password, align 8
  %call136 = call i32 @do_extract(ptr noundef %55, i32 noundef %56, i32 noundef %57, ptr noundef %58)
  br label %if.end139

if.else137:                                       ; preds = %if.end132
  %59 = load ptr, ptr %uf, align 8
  %60 = load ptr, ptr %filename_to_extract, align 8
  %61 = load i32, ptr %opt_do_extract_withoutpath, align 4
  %62 = load i32, ptr %opt_overwrite, align 4
  %63 = load ptr, ptr %password, align 8
  %call138 = call i32 @do_extract_onefile(ptr noundef %59, ptr noundef %60, i32 noundef %61, i32 noundef %62, ptr noundef %63)
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.then135
  %storemerge1 = phi i32 [ %call138, %if.else137 ], [ %call136, %if.then135 ]
  store i32 %storemerge1, ptr %ret_value, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.else122, %if.end139, %if.then120
  %64 = load ptr, ptr %uf, align 8
  %call142 = call i32 @unzClose(ptr noundef %64) #11
  %65 = load i32, ptr %ret_value, align 4
  store i32 %65, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end141, %if.then113, %if.then
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind ssp uwtable
define internal void @do_banner() #0 {
entry:
  %puts = call i32 @puts(ptr nonnull @str)
  %puts1 = call i32 @puts(ptr nonnull @str.1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @do_help() #0 {
entry:
  %puts = call i32 @puts(ptr nonnull @str.2)
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
  %call = call i32 @unzGetGlobalInfo64(ptr noundef %uf, ptr noundef nonnull %gi) #11
  store i32 %call, ptr %err, align 4
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i32 noundef %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %puts = call i32 @puts(ptr nonnull @str.3)
  %puts1 = call i32 @puts(ptr nonnull @str.4)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i64 [ 0, %if.end ], [ %inc, %for.inc ]
  store i64 %storemerge, ptr %i, align 8
  %1 = load i64, ptr %gi, align 8
  %cmp4 = icmp ult i64 %storemerge, %1
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %ratio, align 8
  store ptr @.str.10, ptr %string_method, align 8
  store i8 32, ptr %charCrypt, align 1
  %2 = load ptr, ptr %uf.addr, align 8
  %call5 = call i32 @unzGetCurrentFileInfo64(ptr noundef %2, ptr noundef nonnull %file_info, ptr noundef nonnull %filename_inzip, i64 noundef 65537, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #11
  store i32 %call5, ptr %err, align 4
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %for.body
  %3 = load i32, ptr %err, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i32 noundef %3) #11
  br label %for.end

if.end9:                                          ; preds = %for.body
  %uncompressed_size = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 7
  %4 = load i64, ptr %uncompressed_size, align 8
  %cmp10.not = icmp eq i64 %4, 0
  br i1 %cmp10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  %compressed_size = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 6
  %5 = load i64, ptr %compressed_size, align 8
  %mul = mul i64 %5, 100
  %uncompressed_size12 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 7
  %6 = load i64, ptr %uncompressed_size12, align 8
  %div = udiv i64 %mul, %6
  store i64 %div, ptr %ratio, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %flag = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 2
  %7 = load i64, ptr %flag, align 8
  %and = and i64 %7, 1
  %cmp14.not = icmp eq i64 %and, 0
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  store i8 42, ptr %charCrypt, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %compression_method = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 3
  %8 = load i64, ptr %compression_method, align 8
  %cmp17 = icmp eq i64 %8, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  store ptr @.str.12, ptr %string_method, align 8
  br label %if.end49

if.else:                                          ; preds = %if.end16
  %compression_method19 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 3
  %9 = load i64, ptr %compression_method19, align 8
  %cmp20 = icmp eq i64 %9, 8
  br i1 %cmp20, label %if.then21, label %if.else41

if.then21:                                        ; preds = %if.else
  %flag22 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 2
  %10 = load i64, ptr %flag22, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 1
  %conv = and i32 %12, 3
  store i32 %conv, ptr %iLevel, align 4
  %cmp25 = icmp eq i32 %conv, 0
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.then21
  store ptr @.str.13, ptr %string_method, align 8
  br label %if.end49

if.else28:                                        ; preds = %if.then21
  %13 = load i32, ptr %iLevel, align 4
  %cmp29 = icmp eq i32 %13, 1
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else28
  store ptr @.str.14, ptr %string_method, align 8
  br label %if.end49

if.else32:                                        ; preds = %if.else28
  %14 = load i32, ptr %iLevel, align 4
  %cmp33 = icmp eq i32 %14, 2
  %15 = load i32, ptr %iLevel, align 4
  %cmp35 = icmp eq i32 %15, 3
  %or.cond = select i1 %cmp33, i1 true, i1 %cmp35
  br i1 %or.cond, label %if.then37, label %if.end49

if.then37:                                        ; preds = %if.else32
  store ptr @.str.15, ptr %string_method, align 8
  br label %if.end49

if.else41:                                        ; preds = %if.else
  %compression_method42 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 3
  %16 = load i64, ptr %compression_method42, align 8
  %cmp43 = icmp eq i64 %16, 12
  %.str.16..str.17 = select i1 %cmp43, ptr @.str.16, ptr @.str.17
  store ptr %.str.16..str.17, ptr %string_method, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.else41, %if.then31, %if.else32, %if.then37, %if.then27, %if.then18
  %uncompressed_size50 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 7
  %17 = load i64, ptr %uncompressed_size50, align 8
  call void @Display64BitsSize(i64 noundef %17, i32 noundef 7)
  %18 = load ptr, ptr %string_method, align 8
  %19 = load i8, ptr %charCrypt, align 1
  %conv51 = sext i8 %19 to i32
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, ptr noundef %18, i32 noundef %conv51) #11
  %compressed_size53 = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 6
  %20 = load i64, ptr %compressed_size53, align 8
  call void @Display64BitsSize(i64 noundef %20, i32 noundef 7)
  %21 = load i64, ptr %ratio, align 8
  %tm_mon = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 14, i32 4
  %22 = load i32, ptr %tm_mon, align 8
  %conv54 = sext i32 %22 to i64
  %add = add nsw i64 %conv54, 1
  %tm_mday = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 14, i32 3
  %23 = load i32, ptr %tm_mday, align 4
  %conv56 = sext i32 %23 to i64
  %tm_year = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 14, i32 5
  %24 = load i32, ptr %tm_year, align 4
  %conv58 = sext i32 %24 to i64
  %rem = urem i64 %conv58, 100
  %tm_hour = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 14, i32 2
  %25 = load i32, ptr %tm_hour, align 8
  %conv60 = sext i32 %25 to i64
  %tm_min = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 14, i32 1
  %26 = load i32, ptr %tm_min, align 4
  %conv62 = sext i32 %26 to i64
  %crc = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 5
  %27 = load i64, ptr %crc, align 8
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, i64 noundef %21, i64 noundef %add, i64 noundef %conv56, i64 noundef %rem, i64 noundef %conv60, i64 noundef %conv62, i64 noundef %27, ptr noundef nonnull %filename_inzip) #11
  %28 = load i64, ptr %i, align 8
  %add65 = add i64 %28, 1
  %29 = load i64, ptr %gi, align 8
  %cmp67 = icmp ult i64 %add65, %29
  br i1 %cmp67, label %if.then69, label %for.inc

if.then69:                                        ; preds = %if.end49
  %30 = load ptr, ptr %uf.addr, align 8
  %call70 = call i32 @unzGoToNextFile(ptr noundef %30) #11
  store i32 %call70, ptr %err, align 4
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %for.inc, label %if.then73

if.then73:                                        ; preds = %if.then69
  %31 = load i32, ptr %err, align 4
  %call74 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.20, i32 noundef %31) #11
  br label %for.end

for.inc:                                          ; preds = %if.end49, %if.then69
  %32 = load i64, ptr %i, align 8
  %inc = add i64 %32, 1
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
  %call = call i32 @unzGetGlobalInfo64(ptr noundef %uf, ptr noundef nonnull %gi) #11
  store i32 %call, ptr %err, align 4
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i32 noundef %0) #11
  br label %return

for.cond:                                         ; preds = %entry, %for.inc
  %storemerge = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  store i64 %storemerge, ptr %i, align 8
  %1 = load i64, ptr %gi, align 8
  %cmp2 = icmp ult i64 %storemerge, %1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %uf.addr, align 8
  %3 = load ptr, ptr %password.addr, align 8
  %call3 = call i32 @do_extract_currentfile(ptr noundef %2, ptr noundef nonnull %opt_extract_without_path.addr, ptr noundef nonnull %opt_overwrite.addr, ptr noundef %3)
  store i32 %call3, ptr %err, align 4
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %for.end

if.end6:                                          ; preds = %for.body
  %4 = load i64, ptr %i, align 8
  %add = add i64 %4, 1
  %5 = load i64, ptr %gi, align 8
  %cmp8 = icmp ult i64 %add, %5
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %if.end6
  %6 = load ptr, ptr %uf.addr, align 8
  %call10 = call i32 @unzGoToNextFile(ptr noundef %6) #11
  store i32 %call10, ptr %err, align 4
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %for.inc, label %if.then12

if.then12:                                        ; preds = %if.then9
  %7 = load i32, ptr %err, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.20, i32 noundef %7) #11
  br label %for.end

for.inc:                                          ; preds = %if.end6, %if.then9
  %8 = load i64, ptr %i, align 8
  %inc = add i64 %8, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.body, %if.then12, %for.cond
  %9 = load i32, ptr %err, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %storemerge1 = phi i32 [ %9, %for.end ], [ %0, %if.then ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @do_extract_onefile(ptr noundef %uf, ptr noundef %filename, i32 noundef %opt_extract_without_path, i32 noundef %opt_overwrite, ptr noundef %password) #0 {
entry:
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
  %call = call i32 @unzLocateFile(ptr noundef %uf, ptr noundef %filename, i32 noundef 0) #11
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.36, ptr noundef %0) #11
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %uf.addr, align 8
  %2 = load ptr, ptr %password.addr, align 8
  %call2 = call i32 @do_extract_currentfile(ptr noundef %1, ptr noundef nonnull %opt_extract_without_path.addr, ptr noundef nonnull %opt_overwrite.addr, ptr noundef %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %storemerge
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
  %1 = trunc i64 %rem to i8
  %conv = or i8 %1, 48
  %2 = load i32, ptr %offset, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx1, align 1
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom2
  %3 = load i8, ptr %arrayidx3, align 1
  %cmp.not = icmp eq i8 %3, 48
  br i1 %cmp.not, label %if.end, label %if.then

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
  br i1 %cmp6, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end
  %7 = load i32, ptr %offset, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end
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
  %putchar = call i32 @putchar(i32 32)
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %pos_string, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [21 x i8], ptr %number, i64 0, i64 %idxprom13
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.22, ptr noundef nonnull %arrayidx14) #11
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
  %byval-temp = alloca %struct.tm_unz_s, align 4
  store ptr %uf, ptr %uf.addr, align 8
  store ptr %popt_extract_without_path, ptr %popt_extract_without_path.addr, align 8
  store ptr %popt_overwrite, ptr %popt_overwrite.addr, align 8
  store ptr %password, ptr %password.addr, align 8
  store i32 0, ptr %err, align 4
  store ptr null, ptr %fout, align 8
  %call = call i32 @unzGetCurrentFileInfo64(ptr noundef %uf, ptr noundef nonnull %file_info, ptr noundef nonnull %filename_inzip, i64 noundef 65537, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #11
  store i32 %call, ptr %err, align 4
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i32 noundef %0) #11
  store i32 %0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 8192, ptr %size_buf, align 4
  %call2 = call dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #13
  store ptr %call2, ptr %buf, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %puts3 = call i32 @puts(ptr nonnull @str.6)
  store i32 -104, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  store ptr %filename_inzip, ptr %filename_withoutpath, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end7
  %storemerge = phi ptr [ %filename_inzip, %if.end7 ], [ %incdec.ptr, %if.end19 ]
  store ptr %storemerge, ptr %p, align 8
  %1 = load i8, ptr %storemerge, align 1
  %cmp10.not = icmp eq i8 %1, 0
  br i1 %cmp10.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8
  %3 = load i8, ptr %2, align 1
  %cmp13 = icmp eq i8 %3, 47
  br i1 %cmp13, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load ptr, ptr %p, align 8
  %5 = load i8, ptr %4, align 1
  %cmp16 = icmp eq i8 %5, 92
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false, %while.body
  %6 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %add.ptr, ptr %filename_withoutpath, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false
  %7 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i64 1
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %filename_withoutpath, align 8
  %9 = load i8, ptr %8, align 1
  %cmp21 = icmp eq i8 %9, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.end
  %10 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %11 = load i32, ptr %10, align 4
  %cmp24 = icmp eq i32 %11, 0
  br i1 %cmp24, label %if.then26, label %if.end206

if.then26:                                        ; preds = %if.then23
  %call28 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.24, ptr noundef nonnull %filename_inzip) #11
  %call30 = call i32 @mymkdir(ptr noundef nonnull %filename_inzip)
  br label %if.end206

if.else:                                          ; preds = %while.end
  store i32 0, ptr %skip, align 4
  %12 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %13 = load i32, ptr %12, align 4
  %cmp32 = icmp eq i32 %13, 0
  %14 = load ptr, ptr %filename_withoutpath, align 8
  %storemerge1 = select i1 %cmp32, ptr %filename_inzip, ptr %14
  store ptr %storemerge1, ptr %write_filename, align 8
  %15 = load i8, ptr %storemerge1, align 1
  %cmp39.not = icmp eq i8 %15, 0
  br i1 %cmp39.not, label %if.end60, label %if.then41

if.then41:                                        ; preds = %if.else
  %16 = load ptr, ptr %write_filename, align 8
  br label %while.cond42

while.cond42:                                     ; preds = %if.end57, %if.then41
  %storemerge2 = phi ptr [ %16, %if.then41 ], [ %incdec.ptr58, %if.end57 ]
  store ptr %storemerge2, ptr %relative_check, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %storemerge2, i64 1
  %17 = load i8, ptr %arrayidx43, align 1
  %cmp45.not = icmp eq i8 %17, 0
  br i1 %cmp45.not, label %if.end60, label %while.body47

while.body47:                                     ; preds = %while.cond42
  %18 = load ptr, ptr %relative_check, align 8
  %19 = load i8, ptr %18, align 1
  %cmp50 = icmp eq i8 %19, 46
  br i1 %cmp50, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %while.body47
  %20 = load ptr, ptr %relative_check, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx52, align 1
  %cmp54 = icmp eq i8 %21, 46
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %relative_check, align 8
  store ptr %22, ptr %write_filename, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %land.lhs.true, %while.body47
  %23 = load ptr, ptr %relative_check, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %23, i64 1
  br label %while.cond42, !llvm.loop !13

if.end60:                                         ; preds = %while.cond42, %if.else
  br label %while.cond61

while.cond61:                                     ; preds = %while.body70, %if.end60
  %24 = load ptr, ptr %write_filename, align 8
  %25 = load i8, ptr %24, align 1
  %cmp64 = icmp eq i8 %25, 47
  br i1 %cmp64, label %while.body70, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond61
  %26 = load ptr, ptr %write_filename, align 8
  %27 = load i8, ptr %26, align 1
  %cmp68 = icmp eq i8 %27, 46
  br i1 %cmp68, label %while.body70, label %while.end72

while.body70:                                     ; preds = %while.cond61, %lor.rhs
  %28 = load ptr, ptr %write_filename, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr71, ptr %write_filename, align 8
  br label %while.cond61, !llvm.loop !14

while.end72:                                      ; preds = %lor.rhs
  %29 = load ptr, ptr %uf.addr, align 8
  %30 = load ptr, ptr %password.addr, align 8
  %call73 = call i32 @unzOpenCurrentFilePassword(ptr noundef %29, ptr noundef %30) #11
  store i32 %call73, ptr %err, align 4
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %while.end72
  %31 = load i32, ptr %err, align 4
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.25, i32 noundef %31) #11
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %while.end72
  %32 = load ptr, ptr %popt_overwrite.addr, align 8
  %33 = load i32, ptr %32, align 4
  %cmp79 = icmp eq i32 %33, 0
  %34 = load i32, ptr %err, align 4
  %cmp82 = icmp eq i32 %34, 0
  %or.cond = select i1 %cmp79, i1 %cmp82, i1 false
  br i1 %or.cond, label %if.then84, label %if.end130

if.then84:                                        ; preds = %if.end78
  store i8 0, ptr %rep, align 1
  %35 = load ptr, ptr %write_filename, align 8
  %call85 = call ptr @"\01_fopen"(ptr noundef %35, ptr noundef nonnull @.str.26) #11
  store ptr %call85, ptr %ftestexist, align 8
  %cmp86.not = icmp eq ptr %call85, null
  br i1 %cmp86.not, label %if.end119, label %if.then88

if.then88:                                        ; preds = %if.then84
  %36 = load ptr, ptr %ftestexist, align 8
  %call89 = call i32 @fclose(ptr noundef %36) #11
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then88
  %37 = load ptr, ptr %write_filename, align 8
  %call90 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.27, ptr noundef %37) #11
  %call92 = call i32 (ptr, ...) @scanf(ptr noundef nonnull @.str.28, ptr noundef nonnull %answer) #11
  %cmp93.not = icmp eq i32 %call92, 1
  br i1 %cmp93.not, label %if.end96, label %if.then95

if.then95:                                        ; preds = %do.body
  call void @exit(i32 noundef 1) #12
  unreachable

if.end96:                                         ; preds = %do.body
  %38 = load i8, ptr %answer, align 1
  store i8 %38, ptr %rep, align 1
  %cmp99 = icmp sgt i8 %38, 96
  %39 = load i8, ptr %rep, align 1
  %cmp103 = icmp slt i8 %39, 123
  %or.cond4 = select i1 %cmp99, i1 %cmp103, i1 false
  br i1 %or.cond4, label %if.then105, label %do.cond

if.then105:                                       ; preds = %if.end96
  %40 = load i8, ptr %rep, align 1
  %sub = add i8 %40, -32
  store i8 %sub, ptr %rep, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end96, %if.then105
  %41 = load i8, ptr %rep, align 1
  %cmp110.not = icmp eq i8 %41, 89
  %42 = load i8, ptr %rep, align 1
  %cmp114.not = icmp eq i8 %42, 78
  %or.cond5 = select i1 %cmp110.not, i1 true, i1 %cmp114.not
  %or.cond5.not = xor i1 %or.cond5, true
  %43 = load i8, ptr %rep, align 1
  %cmp117 = icmp ne i8 %43, 65
  %or.cond8 = select i1 %or.cond5.not, i1 %cmp117, i1 false
  br i1 %or.cond8, label %do.body, label %if.end119, !llvm.loop !15

if.end119:                                        ; preds = %do.cond, %if.then84
  %44 = load i8, ptr %rep, align 1
  %cmp121 = icmp eq i8 %44, 78
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end119
  store i32 1, ptr %skip, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end119
  %45 = load i8, ptr %rep, align 1
  %cmp126 = icmp eq i8 %45, 65
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.end124
  %46 = load ptr, ptr %popt_overwrite.addr, align 8
  store i32 1, ptr %46, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end124, %if.then128, %if.end78
  %47 = load i32, ptr %skip, align 4
  %cmp131 = icmp eq i32 %47, 0
  %48 = load i32, ptr %err, align 4
  %cmp134 = icmp eq i32 %48, 0
  %or.cond6 = select i1 %cmp131, i1 %cmp134, i1 false
  br i1 %or.cond6, label %if.then136, label %if.end159

if.then136:                                       ; preds = %if.end130
  %49 = load ptr, ptr %write_filename, align 8
  %call137 = call ptr @"\01_fopen"(ptr noundef %49, ptr noundef nonnull @.str.29) #11
  store ptr %call137, ptr %fout, align 8
  %cmp138 = icmp eq ptr %call137, null
  br i1 %cmp138, label %land.lhs.true140, label %if.end153

land.lhs.true140:                                 ; preds = %if.then136
  %50 = load ptr, ptr %popt_extract_without_path.addr, align 8
  %51 = load i32, ptr %50, align 4
  %cmp141 = icmp ne i32 %51, 0
  %52 = load ptr, ptr %filename_withoutpath, align 8
  %cmp145.not = icmp eq ptr %52, %filename_inzip
  %or.cond7 = select i1 %cmp141, i1 true, i1 %cmp145.not
  br i1 %or.cond7, label %if.end153, label %if.then147

if.then147:                                       ; preds = %land.lhs.true140
  %53 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %53, i64 -1
  %54 = load i8, ptr %add.ptr148, align 1
  %add.ptr149 = getelementptr inbounds i8, ptr %53, i64 -1
  store i8 0, ptr %add.ptr149, align 1
  %55 = load ptr, ptr %write_filename, align 8
  %call150 = call i32 @makedir(ptr noundef %55)
  %56 = load ptr, ptr %filename_withoutpath, align 8
  %add.ptr151 = getelementptr inbounds i8, ptr %56, i64 -1
  store i8 %54, ptr %add.ptr151, align 1
  %call152 = call ptr @"\01_fopen"(ptr noundef %55, ptr noundef nonnull @.str.29) #11
  store ptr %call152, ptr %fout, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then147, %land.lhs.true140, %if.then136
  %57 = load ptr, ptr %fout, align 8
  %cmp154 = icmp eq ptr %57, null
  br i1 %cmp154, label %if.then156, label %if.end159

if.then156:                                       ; preds = %if.end153
  %58 = load ptr, ptr %write_filename, align 8
  %call157 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.30, ptr noundef %58) #11
  br label %if.end159

if.end159:                                        ; preds = %if.end153, %if.then156, %if.end130
  %59 = load ptr, ptr %fout, align 8
  %cmp160.not = icmp eq ptr %59, null
  br i1 %cmp160.not, label %if.end193, label %if.then162

if.then162:                                       ; preds = %if.end159
  %60 = load ptr, ptr %write_filename, align 8
  %call163 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.31, ptr noundef %60) #11
  br label %do.body164

do.body164:                                       ; preds = %do.cond182, %if.then162
  %61 = load ptr, ptr %uf.addr, align 8
  %62 = load ptr, ptr %buf, align 8
  %63 = load i32, ptr %size_buf, align 4
  %call165 = call i32 @unzReadCurrentFile(ptr noundef %61, ptr noundef %62, i32 noundef %63) #11
  store i32 %call165, ptr %err, align 4
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then168, label %if.end170

if.then168:                                       ; preds = %do.body164
  %64 = load i32, ptr %err, align 4
  %call169 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.32, i32 noundef %64) #11
  br label %do.end185

if.end170:                                        ; preds = %do.body164
  %65 = load i32, ptr %err, align 4
  %cmp171 = icmp sgt i32 %65, 0
  br i1 %cmp171, label %if.then173, label %do.cond182

if.then173:                                       ; preds = %if.end170
  %66 = load ptr, ptr %buf, align 8
  %67 = load i32, ptr %err, align 4
  %conv174 = zext i32 %67 to i64
  %68 = load ptr, ptr %fout, align 8
  %call175 = call i64 @"\01_fwrite"(ptr noundef %66, i64 noundef %conv174, i64 noundef 1, ptr noundef %68) #11
  %cmp176.not = icmp eq i64 %call175, 1
  br i1 %cmp176.not, label %do.cond182, label %if.then178

if.then178:                                       ; preds = %if.then173
  %puts = call i32 @puts(ptr nonnull @str.5)
  store i32 -1, ptr %err, align 4
  br label %do.end185

do.cond182:                                       ; preds = %if.end170, %if.then173
  %69 = load i32, ptr %err, align 4
  %cmp183 = icmp sgt i32 %69, 0
  br i1 %cmp183, label %do.body164, label %do.end185, !llvm.loop !16

do.end185:                                        ; preds = %do.cond182, %if.then178, %if.then168
  %70 = load ptr, ptr %fout, align 8
  %tobool.not = icmp eq ptr %70, null
  br i1 %tobool.not, label %if.end188, label %if.then186

if.then186:                                       ; preds = %do.end185
  %71 = load ptr, ptr %fout, align 8
  %call187 = call i32 @fclose(ptr noundef %71) #11
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %do.end185
  %72 = load i32, ptr %err, align 4
  %cmp189 = icmp eq i32 %72, 0
  br i1 %cmp189, label %if.then191, label %if.end193

if.then191:                                       ; preds = %if.end188
  %73 = load ptr, ptr %write_filename, align 8
  %dosDate = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 4
  %74 = load i64, ptr %dosDate, align 8
  %tmu_date = getelementptr inbounds %struct.unz_file_info64_s, ptr %file_info, i64 0, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %byval-temp, ptr noundef nonnull align 8 dereferenceable(24) %tmu_date, i64 24, i1 false)
  call void @change_file_date(ptr noundef %73, i64 noundef %74, ptr noundef nonnull %byval-temp)
  br label %if.end193

if.end193:                                        ; preds = %if.end188, %if.then191, %if.end159
  %75 = load i32, ptr %err, align 4
  %cmp194 = icmp eq i32 %75, 0
  br i1 %cmp194, label %if.then196, label %if.else203

if.then196:                                       ; preds = %if.end193
  %76 = load ptr, ptr %uf.addr, align 8
  %call197 = call i32 @unzCloseCurrentFile(ptr noundef %76) #11
  store i32 %call197, ptr %err, align 4
  %cmp198.not = icmp eq i32 %call197, 0
  br i1 %cmp198.not, label %if.end206, label %if.then200

if.then200:                                       ; preds = %if.then196
  %77 = load i32, ptr %err, align 4
  %call201 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.34, i32 noundef %77) #11
  br label %if.end206

if.else203:                                       ; preds = %if.end193
  %78 = load ptr, ptr %uf.addr, align 8
  %call204 = call i32 @unzCloseCurrentFile(ptr noundef %78) #11
  br label %if.end206

if.end206:                                        ; preds = %if.else203, %if.then200, %if.then196, %if.then23, %if.then26
  %79 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %79) #11
  %80 = load i32, ptr %err, align 4
  store i32 %80, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end206, %if.then5, %if.then
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind ssp uwtable
define internal i32 @mymkdir(ptr noundef %dirname) #0 {
entry:
  %call = call i32 @mkdir(ptr noundef %dirname, i16 noundef zeroext 509) #11
  ret i32 %call
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
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %newdir) #11
  store i64 %call, ptr %len, align 8
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %len, align 8
  %add = add i64 %0, 1
  %call1 = call ptr @malloc(i64 noundef %add) #13
  store ptr %call1, ptr %buffer, align 8
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %puts = call i32 @puts(ptr nonnull @str.7)
  store i32 -104, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %1 = load ptr, ptr %buffer, align 8
  %2 = load ptr, ptr %newdir.addr, align 8
  %3 = load i64, ptr %len, align 8
  %add6 = add i64 %3, 1
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %call7 = call ptr @__memcpy_chk(ptr noundef %1, ptr noundef %2, i64 noundef %add6, i64 noundef %4) #11
  %sub = add i64 %3, -1
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %sub
  %5 = load i8, ptr %arrayidx, align 1
  %cmp8 = icmp eq i8 %5, 47
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  %6 = load ptr, ptr %buffer, align 8
  %7 = load i64, ptr %len, align 8
  %sub11 = add i64 %7, -1
  %arrayidx12 = getelementptr inbounds i8, ptr %6, i64 %sub11
  store i8 0, ptr %arrayidx12, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end5
  %8 = load ptr, ptr %buffer, align 8
  %call.i = call i32 @mkdir(ptr noundef %8, i16 noundef zeroext 509) #11
  %cmp15 = icmp eq i32 %call.i, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %9 = load ptr, ptr %buffer, align 8
  call void @free(ptr noundef %9) #11
  store i32 1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %10 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %add.ptr, ptr %p, align 8
  br label %while.body

while.body:                                       ; preds = %if.end42, %if.end18
  br label %while.cond19

while.cond19:                                     ; preds = %while.body27, %while.body
  %11 = load ptr, ptr %p, align 8
  %12 = load i8, ptr %11, align 1
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %while.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond19
  %13 = load ptr, ptr %p, align 8
  %14 = load i8, ptr %13, align 1
  %cmp22.not = icmp eq i8 %14, 92
  br i1 %cmp22.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %p, align 8
  %16 = load i8, ptr %15, align 1
  %cmp25 = icmp ne i8 %16, 47
  br i1 %cmp25, label %while.body27, label %while.end

while.body27:                                     ; preds = %land.rhs
  %17 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond19, !llvm.loop !17

while.end:                                        ; preds = %land.lhs.true, %while.cond19, %land.rhs
  %18 = load ptr, ptr %p, align 8
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %hold, align 1
  store i8 0, ptr %18, align 1
  %20 = load ptr, ptr %buffer, align 8
  %call.i3 = call i32 @mkdir(ptr noundef %20, i16 noundef zeroext 509) #11
  %cmp29 = icmp eq i32 %call.i3, -1
  br i1 %cmp29, label %land.lhs.true31, label %if.end37

land.lhs.true31:                                  ; preds = %while.end
  %call32 = call ptr @__error() #11
  %21 = load i32, ptr %call32, align 4
  %cmp33 = icmp eq i32 %21, 2
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %land.lhs.true31
  %22 = load ptr, ptr %buffer, align 8
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.35, ptr noundef %22) #11
  call void @free(ptr noundef %22) #11
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %land.lhs.true31, %while.end
  %23 = load i8, ptr %hold, align 1
  %cmp39 = icmp eq i8 %23, 0
  br i1 %cmp39, label %while.end44, label %if.end42

if.end42:                                         ; preds = %if.end37
  %24 = load i8, ptr %hold, align 1
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr43, ptr %p, align 8
  store i8 %24, ptr %25, align 1
  br label %while.body

while.end44:                                      ; preds = %if.end37
  %26 = load ptr, ptr %buffer, align 8
  call void @free(ptr noundef %26) #11
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end44, %if.then35, %if.then17, %if.then3, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare i32 @unzReadCurrentFile(ptr noundef, ptr noundef, i32 noundef) #3

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @change_file_date(ptr noundef %filename, i64 noundef %dosdate, ptr noundef %tmu_date) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %ut = alloca %struct.utimbuf, align 8
  %newdate = alloca %struct.tm, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load i32, ptr %tmu_date, align 4
  store i32 %0, ptr %newdate, align 8
  %tm_min = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i64 0, i32 1
  %1 = load i32, ptr %tm_min, align 4
  %tm_min2 = getelementptr inbounds %struct.tm, ptr %newdate, i64 0, i32 1
  store i32 %1, ptr %tm_min2, align 4
  %tm_hour = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i64 0, i32 2
  %2 = load i32, ptr %tm_hour, align 4
  %tm_hour3 = getelementptr inbounds %struct.tm, ptr %newdate, i64 0, i32 2
  store i32 %2, ptr %tm_hour3, align 8
  %tm_mday = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i64 0, i32 3
  %3 = load i32, ptr %tm_mday, align 4
  %tm_mday4 = getelementptr inbounds %struct.tm, ptr %newdate, i64 0, i32 3
  store i32 %3, ptr %tm_mday4, align 4
  %tm_mon = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i64 0, i32 4
  %4 = load i32, ptr %tm_mon, align 4
  %tm_mon5 = getelementptr inbounds %struct.tm, ptr %newdate, i64 0, i32 4
  store i32 %4, ptr %tm_mon5, align 8
  %tm_year = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i64 0, i32 5
  %5 = load i32, ptr %tm_year, align 4
  %cmp = icmp sgt i32 %5, 1900
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tm_year6 = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i64 0, i32 5
  %6 = load i32, ptr %tm_year6, align 4
  %sub = add nsw i32 %6, -1900
  %tm_year7 = getelementptr inbounds %struct.tm, ptr %newdate, i64 0, i32 5
  store i32 %sub, ptr %tm_year7, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %tm_year8 = getelementptr inbounds %struct.tm_unz_s, ptr %tmu_date, i64 0, i32 5
  %7 = load i32, ptr %tm_year8, align 4
  %tm_year9 = getelementptr inbounds %struct.tm, ptr %newdate, i64 0, i32 5
  store i32 %7, ptr %tm_year9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tm_isdst = getelementptr inbounds %struct.tm, ptr %newdate, i64 0, i32 8
  store i32 -1, ptr %tm_isdst, align 8
  %call = call i64 @"\01_mktime"(ptr noundef nonnull %newdate) #11
  %modtime = getelementptr inbounds %struct.utimbuf, ptr %ut, i64 0, i32 1
  store i64 %call, ptr %modtime, align 8
  store i64 %call, ptr %ut, align 8
  %8 = load ptr, ptr %filename.addr, align 8
  %call10 = call i32 @utime(ptr noundef %8, ptr noundef nonnull %ut) #11
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strncpy(ptr noalias returned writeonly, ptr noalias nocapture readonly, i64) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #10

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }

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
