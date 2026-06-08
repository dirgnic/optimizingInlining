; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_rl_value_proxy/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_wrjpgcom.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/wrjpgcom.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@progname = internal global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"wrjpgcom\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cfile\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__stderrp = external global ptr, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Insufficient memory\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Missing ending quote mark\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@infile = internal global ptr null, align 8
@__stdinp = external global ptr, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@__stdoutp = external global ptr, align 8
@outfile = internal global ptr null, align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"Comment text may not exceed %u bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"wrjpgcom inserts a textual comment in a JPEG file.\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"You can add to or replace any existing comment(s).\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Usage: %s [switches] \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"  -replace         Delete any existing comments\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"  -comment \22text\22  Insert comment with given text\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"  -cfile name      Read comment from named file\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Notice that you must put quotes around the comment text\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"when you use -comment.\0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"If you do not give either -comment or -cfile on the command line,\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"then the comment text is read from standard input.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"It can be multiple lines, up to %u characters total.\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"You must specify an input JPEG file name when supplying\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"comment text from standard input.\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Expected SOI marker first\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"SOS without prior SOFn\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Not a JPEG file\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Warning: garbage data found in JPEG file\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Premature EOF in JPEG file\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %argn = alloca i32, align 4
  %arg = alloca ptr, align 8
  %keep_COM = alloca i32, align 4
  %comment_arg = alloca ptr, align 8
  %comment_file = alloca ptr, align 8
  %comment_length = alloca i32, align 4
  %marker = alloca i32, align 4
  %src_file = alloca ptr, align 8
  %c = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %keep_COM, align 4
  store ptr null, ptr %comment_arg, align 8
  store ptr null, ptr %comment_file, align 8
  store i32 0, ptr %comment_length, align 4
  %0 = load ptr, ptr %argv, align 8
  store ptr %0, ptr @progname, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @progname, align 8
  %2 = load i8, ptr %1, align 1
  %cmp2 = icmp eq i8 %2, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr @.str, ptr @progname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ %inc88, %for.inc ]
  store i32 %storemerge, ptr %argn, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp4 = icmp slt i32 %storemerge, %3
  br i1 %cmp4, label %for.body, label %for.end89

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load i32, ptr %argn, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx6, align 8
  store ptr %6, ptr %arg, align 8
  %7 = load i8, ptr %6, align 1
  %cmp9.not = icmp eq i8 %7, 45
  br i1 %cmp9.not, label %if.end12, label %for.end89

if.end12:                                         ; preds = %for.body
  %8 = load ptr, ptr %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr, ptr %arg, align 8
  %call = call i32 @keymatch(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.1, i32 noundef 1)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end12
  store i32 0, ptr %keep_COM, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end12
  %9 = load ptr, ptr %arg, align 8
  %call14 = call i32 @keymatch(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef 2)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else31, label %if.then16

if.then16:                                        ; preds = %if.else
  %10 = load i32, ptr %argn, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %argn, align 4
  %11 = load i32, ptr %argc.addr, align 4
  %cmp17.not = icmp slt i32 %inc, %11
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then16
  call void @usage()
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then16
  %12 = load ptr, ptr %argv.addr, align 8
  %13 = load i32, ptr %argn, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %12, i64 %idxprom21
  %14 = load ptr, ptr %arrayidx22, align 8
  %call23 = call ptr @"\01_fopen"(ptr noundef %14, ptr noundef nonnull @.str.3) #9
  store ptr %call23, ptr %comment_file, align 8
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %if.then26, label %for.inc

if.then26:                                        ; preds = %if.end20
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = load ptr, ptr @progname, align 8
  %17 = load ptr, ptr %argv.addr, align 8
  %18 = load i32, ptr %argn, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %17, i64 %idxprom27
  %19 = load ptr, ptr %arrayidx28, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef %16, ptr noundef %19) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.else31:                                        ; preds = %if.else
  %20 = load ptr, ptr %arg, align 8
  %call32 = call i32 @keymatch(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef 1)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else84, label %if.then34

if.then34:                                        ; preds = %if.else31
  %21 = load i32, ptr %argn, align 4
  %inc35 = add nsw i32 %21, 1
  store i32 %inc35, ptr %argn, align 4
  %22 = load i32, ptr %argc.addr, align 4
  %cmp36.not = icmp slt i32 %inc35, %22
  br i1 %cmp36.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.then34
  call void @usage()
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then34
  %23 = load ptr, ptr %argv.addr, align 8
  %24 = load i32, ptr %argn, align 4
  %idxprom40 = sext i32 %24 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %23, i64 %idxprom40
  %25 = load ptr, ptr %arrayidx41, align 8
  store ptr %25, ptr %comment_arg, align 8
  %26 = load i8, ptr %25, align 1
  %cmp44 = icmp eq i8 %26, 34
  br i1 %cmp44, label %if.then46, label %if.end81

if.then46:                                        ; preds = %if.end39
  %call47 = call dereferenceable_or_null(65000) ptr @malloc(i64 noundef 65000) #11
  store ptr %call47, ptr %comment_arg, align 8
  %cmp48 = icmp eq ptr %call47, null
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then46
  %27 = load ptr, ptr @__stderrp, align 8
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end52:                                         ; preds = %if.then46
  %28 = load ptr, ptr %comment_arg, align 8
  %29 = load ptr, ptr %argv.addr, align 8
  %30 = load i32, ptr %argn, align 4
  %idxprom53 = sext i32 %30 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %29, i64 %idxprom53
  %31 = load ptr, ptr %arrayidx54, align 8
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 1
  %call55 = call ptr @__strcpy_chk(ptr noundef %28, ptr noundef nonnull %add.ptr, i64 noundef 65000) #9
  br label %for.cond56

for.cond56:                                       ; preds = %if.end76, %if.end52
  %32 = load ptr, ptr %comment_arg, align 8
  %call57 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #9
  %conv58 = trunc i64 %call57 to i32
  store i32 %conv58, ptr %comment_length, align 4
  %cmp59.not = icmp eq i32 %conv58, 0
  br i1 %cmp59.not, label %if.end70, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond56
  %33 = load ptr, ptr %comment_arg, align 8
  %34 = load i32, ptr %comment_length, align 4
  %sub = add i32 %34, -1
  %idxprom61 = zext i32 %sub to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %33, i64 %idxprom61
  %35 = load i8, ptr %arrayidx62, align 1
  %cmp64 = icmp eq i8 %35, 34
  br i1 %cmp64, label %if.then66, label %if.end70

if.then66:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr %comment_arg, align 8
  %37 = load i32, ptr %comment_length, align 4
  %sub67 = add i32 %37, -1
  %idxprom68 = zext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %36, i64 %idxprom68
  store i8 0, ptr %arrayidx69, align 1
  br label %if.end81

if.end70:                                         ; preds = %land.lhs.true, %for.cond56
  %38 = load i32, ptr %argn, align 4
  %inc71 = add nsw i32 %38, 1
  store i32 %inc71, ptr %argn, align 4
  %39 = load i32, ptr %argc.addr, align 4
  %cmp72.not = icmp slt i32 %inc71, %39
  br i1 %cmp72.not, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.end70
  %40 = load ptr, ptr @__stderrp, align 8
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end76:                                         ; preds = %if.end70
  %41 = load ptr, ptr %comment_arg, align 8
  %42 = call i64 @llvm.objectsize.i64.p0(ptr %41, i1 false, i1 true, i1 false)
  %call77 = call ptr @__strcat_chk(ptr noundef %41, ptr noundef nonnull @.str.9, i64 noundef %42) #9
  %43 = load ptr, ptr %argv.addr, align 8
  %44 = load i32, ptr %argn, align 4
  %idxprom78 = sext i32 %44 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %43, i64 %idxprom78
  %45 = load ptr, ptr %arrayidx79, align 8
  %46 = load ptr, ptr %comment_arg, align 8
  %47 = call i64 @llvm.objectsize.i64.p0(ptr %46, i1 false, i1 true, i1 false)
  %call80 = call ptr @__strcat_chk(ptr noundef %41, ptr noundef %45, i64 noundef %47) #9
  br label %for.cond56

if.end81:                                         ; preds = %if.then66, %if.end39
  %48 = load ptr, ptr %comment_arg, align 8
  %call82 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #9
  %conv83 = trunc i64 %call82 to i32
  store i32 %conv83, ptr %comment_length, align 4
  br label %for.inc

if.else84:                                        ; preds = %if.else31
  call void @usage()
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end81, %if.else84, %if.end20
  %49 = load i32, ptr %argn, align 4
  %inc88 = add nsw i32 %49, 1
  br label %for.cond, !llvm.loop !6

for.end89:                                        ; preds = %for.body, %for.cond
  %50 = load ptr, ptr %comment_arg, align 8
  %cmp90.not = icmp eq ptr %50, null
  %51 = load ptr, ptr %comment_file, align 8
  %cmp93.not = icmp eq ptr %51, null
  %or.cond = select i1 %cmp90.not, i1 true, i1 %cmp93.not
  br i1 %or.cond, label %if.end96, label %if.then95

if.then95:                                        ; preds = %for.end89
  call void @usage()
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %for.end89
  %52 = load ptr, ptr %comment_arg, align 8
  %cmp97 = icmp eq ptr %52, null
  %53 = load ptr, ptr %comment_file, align 8
  %cmp100 = icmp eq ptr %53, null
  %or.cond1 = select i1 %cmp97, i1 %cmp100, i1 false
  br i1 %or.cond1, label %land.lhs.true102, label %if.end106

land.lhs.true102:                                 ; preds = %if.end96
  %54 = load i32, ptr %argn, align 4
  %55 = load i32, ptr %argc.addr, align 4
  %cmp103.not = icmp slt i32 %54, %55
  br i1 %cmp103.not, label %if.end106, label %if.then105

if.then105:                                       ; preds = %land.lhs.true102
  call void @usage()
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %land.lhs.true102, %if.end96
  %56 = load i32, ptr %argn, align 4
  %57 = load i32, ptr %argc.addr, align 4
  %cmp107 = icmp slt i32 %56, %57
  br i1 %cmp107, label %if.then109, label %if.else120

if.then109:                                       ; preds = %if.end106
  %58 = load ptr, ptr %argv.addr, align 8
  %59 = load i32, ptr %argn, align 4
  %idxprom110 = sext i32 %59 to i64
  %arrayidx111 = getelementptr inbounds ptr, ptr %58, i64 %idxprom110
  %60 = load ptr, ptr %arrayidx111, align 8
  %call112 = call ptr @"\01_fopen"(ptr noundef %60, ptr noundef nonnull @.str.10) #9
  store ptr %call112, ptr @infile, align 8
  %cmp113 = icmp eq ptr %call112, null
  br i1 %cmp113, label %if.then115, label %if.end121

if.then115:                                       ; preds = %if.then109
  %61 = load ptr, ptr @__stderrp, align 8
  %62 = load ptr, ptr @progname, align 8
  %63 = load ptr, ptr %argv.addr, align 8
  %64 = load i32, ptr %argn, align 4
  %idxprom116 = sext i32 %64 to i64
  %arrayidx117 = getelementptr inbounds ptr, ptr %63, i64 %idxprom116
  %65 = load ptr, ptr %arrayidx117, align 8
  %call118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.4, ptr noundef %62, ptr noundef %65) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.else120:                                       ; preds = %if.end106
  %66 = load ptr, ptr @__stdinp, align 8
  store ptr %66, ptr @infile, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then109, %if.else120
  %67 = load i32, ptr %argn, align 4
  %68 = load i32, ptr %argc.addr, align 4
  %sub122 = add nsw i32 %68, -1
  %cmp123 = icmp slt i32 %67, %sub122
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end121
  %69 = load ptr, ptr @__stderrp, align 8
  %70 = load ptr, ptr @progname, align 8
  %call126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.11, ptr noundef %70) #9
  call void @usage()
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end121
  %71 = load ptr, ptr @__stdoutp, align 8
  store ptr %71, ptr @outfile, align 8
  %72 = load ptr, ptr %comment_arg, align 8
  %cmp128 = icmp eq ptr %72, null
  br i1 %cmp128, label %if.then130, label %if.end156

if.then130:                                       ; preds = %if.end127
  %call131 = call dereferenceable_or_null(65000) ptr @malloc(i64 noundef 65000) #11
  store ptr %call131, ptr %comment_arg, align 8
  %cmp132 = icmp eq ptr %call131, null
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.then130
  %73 = load ptr, ptr @__stderrp, align 8
  %call135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end136:                                        ; preds = %if.then130
  store i32 0, ptr %comment_length, align 4
  %74 = load ptr, ptr %comment_file, align 8
  %cmp137.not = icmp eq ptr %74, null
  %75 = load ptr, ptr %comment_file, align 8
  %76 = load ptr, ptr @__stdinp, align 8
  %cond = select i1 %cmp137.not, ptr %76, ptr %75
  store ptr %cond, ptr %src_file, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end146, %if.end136
  %77 = load ptr, ptr %src_file, align 8
  %call139 = call i32 @getc(ptr noundef %77) #9
  store i32 %call139, ptr %c, align 4
  %cmp140.not = icmp eq i32 %call139, -1
  br i1 %cmp140.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %78 = load i32, ptr %comment_length, align 4
  %cmp142 = icmp ugt i32 %78, 64999
  br i1 %cmp142, label %if.then144, label %if.end146

if.then144:                                       ; preds = %while.body
  %79 = load ptr, ptr @__stderrp, align 8
  %call145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.12, i32 noundef 65000) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end146:                                        ; preds = %while.body
  %80 = load i32, ptr %c, align 4
  %conv147 = trunc i32 %80 to i8
  %81 = load ptr, ptr %comment_arg, align 8
  %82 = load i32, ptr %comment_length, align 4
  %inc148 = add i32 %82, 1
  store i32 %inc148, ptr %comment_length, align 4
  %idxprom149 = zext i32 %82 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %81, i64 %idxprom149
  store i8 %conv147, ptr %arrayidx150, align 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %83 = load ptr, ptr %comment_file, align 8
  %cmp151.not = icmp eq ptr %83, null
  br i1 %cmp151.not, label %if.end156, label %if.then153

if.then153:                                       ; preds = %while.end
  %84 = load ptr, ptr %comment_file, align 8
  %call154 = call i32 @fclose(ptr noundef %84) #9
  br label %if.end156

if.end156:                                        ; preds = %while.end, %if.then153, %if.end127
  %85 = load i32, ptr %keep_COM, align 4
  %call157 = call i32 @scan_JPEG_header(i32 noundef %85)
  store i32 %call157, ptr %marker, align 4
  %86 = load i32, ptr %comment_length, align 4
  %cmp158.not = icmp eq i32 %86, 0
  br i1 %cmp158.not, label %if.end168, label %if.then160

if.then160:                                       ; preds = %if.end156
  call void @write_marker(i32 noundef 254)
  %87 = load i32, ptr %comment_length, align 4
  %add = add i32 %87, 2
  call void @write_2_bytes(i32 noundef %add)
  br label %while.cond161

while.cond161:                                    ; preds = %while.body164, %if.then160
  %88 = load i32, ptr %comment_length, align 4
  %cmp162.not = icmp eq i32 %88, 0
  br i1 %cmp162.not, label %if.end168, label %while.body164

while.body164:                                    ; preds = %while.cond161
  %89 = load ptr, ptr %comment_arg, align 8
  %incdec.ptr165 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %incdec.ptr165, ptr %comment_arg, align 8
  %90 = load i8, ptr %89, align 1
  %conv166 = sext i8 %90 to i32
  call void @write_1_byte(i32 noundef %conv166)
  %91 = load i32, ptr %comment_length, align 4
  %dec = add i32 %91, -1
  store i32 %dec, ptr %comment_length, align 4
  br label %while.cond161, !llvm.loop !9

if.end168:                                        ; preds = %while.cond161, %if.end156
  %92 = load i32, ptr %marker, align 4
  call void @write_marker(i32 noundef %92)
  call void @copy_rest_of_file()
  call void @exit(i32 noundef 0) #10
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @keymatch(ptr noundef %arg, ptr noundef %keyword, i32 noundef %minchars) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %keyword.addr = alloca ptr, align 8
  %minchars.addr = alloca i32, align 4
  %ca = alloca i32, align 4
  %ck = alloca i32, align 4
  %nmatched = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store ptr %keyword, ptr %keyword.addr, align 8
  store i32 %minchars, ptr %minchars.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.end12 ]
  store i32 %storemerge, ptr %nmatched, align 4
  %0 = load ptr, ptr %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %arg.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, ptr %ca, align 4
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %keyword.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr2, ptr %keyword.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv3 = sext i8 %3 to i32
  store i32 %conv3, ptr %ck, align 4
  %cmp4 = icmp eq i8 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load i32, ptr %ca, align 4
  %call = call i32 @isupper(i32 noundef %4) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %5 = load i32, ptr %ca, align 4
  %call7 = call i32 @tolower(i32 noundef %5) #12
  store i32 %call7, ptr %ca, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %6 = load i32, ptr %ca, align 4
  %7 = load i32, ptr %ck, align 4
  %cmp9.not = icmp eq i32 %6, %7
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %8 = load i32, ptr %nmatched, align 4
  %inc = add nsw i32 %8, 1
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %nmatched, align 4
  %10 = load i32, ptr %minchars.addr, align 4
  %cmp13 = icmp slt i32 %9, %10
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then11, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str.13, i64 51, i64 1, ptr %0)
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = call i64 @fwrite(ptr nonnull @.str.14, i64 51, i64 1, ptr %2)
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr @progname, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.15, ptr noundef %5) #9
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr %6)
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr %8)
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = call i64 @fwrite(ptr nonnull @.str.18, i64 48, i64 1, ptr %10)
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %12)
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = call i64 @fwrite(ptr nonnull @.str.20, i64 48, i64 1, ptr %14)
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = call i64 @fwrite(ptr nonnull @.str.21, i64 56, i64 1, ptr %16)
  %18 = load ptr, ptr @__stderrp, align 8
  %19 = call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr %18)
  %20 = load ptr, ptr @__stderrp, align 8
  %21 = call i64 @fwrite(ptr nonnull @.str.23, i64 66, i64 1, ptr %20)
  %22 = load ptr, ptr @__stderrp, align 8
  %23 = call i64 @fwrite(ptr nonnull @.str.24, i64 51, i64 1, ptr %22)
  %24 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.25, i32 noundef 65000) #9
  %25 = load ptr, ptr @__stderrp, align 8
  %26 = call i64 @fwrite(ptr nonnull @.str.26, i64 56, i64 1, ptr %25)
  %27 = load ptr, ptr @__stderrp, align 8
  %28 = call i64 @fwrite(ptr nonnull @.str.27, i64 34, i64 1, ptr %27)
  call void @exit(i32 noundef 1) #10
  unreachable
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @getc(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @scan_JPEG_header(i32 noundef %keep_COM) #0 {
entry:
  %keep_COM.addr = alloca i32, align 4
  %marker = alloca i32, align 4
  store i32 %keep_COM, ptr %keep_COM.addr, align 4
  %call = call i32 @first_marker()
  %cmp.not = icmp eq i32 %call, 216
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @outfile, align 8
  %call.i = call i32 @putc(i32 noundef 255, ptr noundef %1) #9
  %2 = load ptr, ptr @outfile, align 8
  %call1.i = call i32 @putc(i32 noundef 216, ptr noundef %2) #9
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end
  %call2 = call i32 @next_marker()
  store i32 %call2, ptr %marker, align 4
  switch i32 %call2, label %sw.default [
    i32 192, label %sw.bb
    i32 193, label %sw.bb
    i32 194, label %sw.bb
    i32 195, label %sw.bb
    i32 197, label %sw.bb
    i32 198, label %sw.bb
    i32 199, label %sw.bb
    i32 201, label %sw.bb
    i32 202, label %sw.bb
    i32 203, label %sw.bb
    i32 205, label %sw.bb
    i32 206, label %sw.bb
    i32 207, label %sw.bb
    i32 218, label %sw.bb3
    i32 217, label %sw.bb5
    i32 254, label %sw.bb6
  ]

sw.bb:                                            ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %3 = load i32, ptr %marker, align 4
  br label %return

sw.bb3:                                           ; preds = %for.cond
  %4 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #9
  call void @exit(i32 noundef 1) #10
  unreachable

sw.bb5:                                           ; preds = %for.cond
  %5 = load i32, ptr %marker, align 4
  br label %return

sw.bb6:                                           ; preds = %for.cond
  %6 = load i32, ptr %keep_COM.addr, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %sw.bb6
  %7 = load i32, ptr %marker, align 4
  call void @write_marker(i32 noundef %7)
  call void @copy_variable()
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb6
  call void @skip_variable()
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %8 = load i32, ptr %marker, align 4
  call void @write_marker(i32 noundef %8)
  call void @copy_variable()
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7, %if.else, %sw.default
  br label %for.cond

return:                                           ; preds = %sw.bb5, %sw.bb
  %storemerge = phi i32 [ %5, %sw.bb5 ], [ %3, %sw.bb ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_marker(i32 noundef %marker) #0 {
entry:
  %0 = load ptr, ptr @outfile, align 8
  %call = call i32 @putc(i32 noundef 255, ptr noundef %0) #9
  %1 = load ptr, ptr @outfile, align 8
  %call1 = call i32 @putc(i32 noundef %marker, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_2_bytes(i32 noundef %val) #0 {
entry:
  %shr = lshr i32 %val, 8
  %and = and i32 %shr, 255
  %0 = load ptr, ptr @outfile, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %0) #9
  %and1 = and i32 %val, 255
  %1 = load ptr, ptr @outfile, align 8
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_1_byte(i32 noundef %c) #0 {
entry:
  %0 = load ptr, ptr @outfile, align 8
  %call = call i32 @putc(i32 noundef %c, ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @copy_rest_of_file() #0 {
entry:
  %c = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @infile, align 8
  %call = call i32 @getc(ptr noundef %0) #9
  store i32 %call, ptr %c, align 4
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %c, align 4
  %2 = load ptr, ptr @outfile, align 8
  %call1 = call i32 @putc(i32 noundef %1, ptr noundef %2) #9
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isupper(i32 noundef) #6

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #6

; Function Attrs: nounwind ssp uwtable
define internal i32 @first_marker() #0 {
entry:
  %c2 = alloca i32, align 4
  %0 = load ptr, ptr @infile, align 8
  %call = call i32 @getc(ptr noundef %0) #9
  %1 = load ptr, ptr @infile, align 8
  %call1 = call i32 @getc(ptr noundef %1) #9
  store i32 %call1, ptr %c2, align 4
  %cmp.not = icmp eq i32 %call, 255
  %2 = load i32, ptr %c2, align 4
  %cmp2.not = icmp eq i32 %2, 216
  %or.cond = select i1 %cmp.not, i1 %cmp2.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %c2, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @next_marker() #0 {
entry:
  %c.i6 = alloca i32, align 4
  %c.i1 = alloca i32, align 4
  %c.i = alloca i32, align 4
  %c = alloca i32, align 4
  %discarded_bytes = alloca i32, align 4
  store i32 0, ptr %discarded_bytes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i)
  %0 = load ptr, ptr @infile, align 8
  %call.i = call i32 @getc(ptr noundef %0) #9
  store i32 %call.i, ptr %c.i, align 4
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  call void @exit(i32 noundef 1) #10
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit: ; preds = %entry
  %2 = load i32, ptr %c.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i)
  br label %while.cond

while.cond:                                       ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_2.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit
  %storemerge = phi i32 [ %2, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit ], [ %6, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_2.exit ]
  store i32 %storemerge, ptr %c, align 4
  %cmp.not = icmp eq i32 %storemerge, 255
  br i1 %cmp.not, label %do.body, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %discarded_bytes, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %discarded_bytes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i1)
  %4 = load ptr, ptr @infile, align 8
  %call.i2 = call i32 @getc(ptr noundef %4) #9
  store i32 %call.i2, ptr %c.i1, align 4
  %cmp.i3 = icmp eq i32 %call.i2, -1
  br i1 %cmp.i3, label %if.then.i5, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_2.exit

if.then.i5:                                       ; preds = %while.body
  %5 = load ptr, ptr @__stderrp, align 8
  %call1.i4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  call void @exit(i32 noundef 1) #10
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_2.exit: ; preds = %while.body
  %6 = load i32, ptr %c.i1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i1)
  br label %while.cond, !llvm.loop !12

do.body:                                          ; preds = %while.cond, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i6)
  %7 = load ptr, ptr @infile, align 8
  %call.i7 = call i32 @getc(ptr noundef %7) #9
  store i32 %call.i7, ptr %c.i6, align 4
  %cmp.i8 = icmp eq i32 %call.i7, -1
  br i1 %cmp.i8, label %if.then.i10, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit

if.then.i10:                                      ; preds = %do.body
  %8 = load ptr, ptr @__stderrp, align 8
  %call1.i9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  call void @exit(i32 noundef 1) #10
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit: ; preds = %do.body
  %9 = load i32, ptr %c.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i6)
  store i32 %9, ptr %c, align 4
  %10 = load i32, ptr %c, align 4
  %cmp3 = icmp eq i32 %10, 255
  br i1 %cmp3, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit
  %11 = load i32, ptr %discarded_bytes, align 4
  %cmp4.not = icmp eq i32 %11, 0
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = call i64 @fwrite(ptr nonnull @.str.31, i64 41, i64 1, ptr %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %14 = load i32, ptr %c, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define internal void @copy_variable() #0 {
entry:
  %c.i = alloca i32, align 4
  %length = alloca i32, align 4
  %call = call i32 @read_2_bytes()
  store i32 %call, ptr %length, align 4
  %shr.i = lshr i32 %call, 8
  %and.i = and i32 %shr.i, 255
  %0 = load ptr, ptr @outfile, align 8
  %call.i = call i32 @putc(i32 noundef %and.i, ptr noundef %0) #9
  %and1.i = and i32 %call, 255
  %1 = load ptr, ptr @outfile, align 8
  %call2.i = call i32 @putc(i32 noundef %and1.i, ptr noundef %1) #9
  %2 = load i32, ptr %length, align 4
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.33) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %length, align 4
  %sub = add i32 %4, -2
  br label %while.cond

while.cond:                                       ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_5.exit, %if.end
  %storemerge = phi i32 [ %sub, %if.end ], [ %dec, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_5.exit ]
  store i32 %storemerge, ptr %length, align 4
  %cmp2.not = icmp eq i32 %storemerge, 0
  br i1 %cmp2.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i)
  %5 = load ptr, ptr @infile, align 8
  %call.i1 = call i32 @getc(ptr noundef %5) #9
  store i32 %call.i1, ptr %c.i, align 4
  %cmp.i = icmp eq i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_5.exit

if.then.i:                                        ; preds = %while.body
  %6 = load ptr, ptr @__stderrp, align 8
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  call void @exit(i32 noundef 1) #10
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_5.exit: ; preds = %while.body
  %7 = load i32, ptr %c.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i)
  %8 = load ptr, ptr @outfile, align 8
  %call.i2 = call i32 @putc(i32 noundef %7, ptr noundef %8) #9
  %9 = load i32, ptr %length, align 4
  %dec = add i32 %9, -1
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @skip_variable() #0 {
entry:
  %length = alloca i32, align 4
  %call = call i32 @read_2_bytes()
  store i32 %call, ptr %length, align 4
  %cmp = icmp ult i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.33) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %length, align 4
  %sub = add i32 %1, -2
  br label %while.cond

while.cond:                                       ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_7.exit, %if.end
  %storemerge = phi i32 [ %sub, %if.end ], [ %dec, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_7.exit ]
  store i32 %storemerge, ptr %length, align 4
  %cmp2.not = icmp eq i32 %storemerge, 0
  br i1 %cmp2.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr @infile, align 8
  %call.i = call i32 @getc(ptr noundef %2) #9
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_7.exit

if.then.i:                                        ; preds = %while.body
  %3 = load ptr, ptr @__stderrp, align 8
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  call void @exit(i32 noundef 1) #10
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_7.exit: ; preds = %while.body
  %4 = load i32, ptr %length, align 4
  %dec = add i32 %4, -1
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_2_bytes() #0 {
entry:
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %0 = load ptr, ptr @infile, align 8
  %call = call i32 @getc(ptr noundef %0) #9
  store i32 %call, ptr %c1, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @infile, align 8
  %call2 = call i32 @getc(ptr noundef %2) #9
  store i32 %call2, ptr %c2, align 4
  %cmp3 = icmp eq i32 %call2, -1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end6:                                          ; preds = %if.end
  %4 = load i32, ptr %c1, align 4
  %shl = shl i32 %4, 8
  %5 = load i32, ptr %c2, align 4
  %add = add i32 %shl, %5
  ret i32 %add
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #8

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }

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
