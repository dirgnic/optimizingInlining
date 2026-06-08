; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/wrjpgcom.c'
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
  %retval = alloca i32, align 4
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
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %keep_COM, align 4
  store ptr null, ptr %comment_arg, align 8
  store ptr null, ptr %comment_file, align 8
  store i32 0, ptr %comment_length, align 4
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  store ptr %1, ptr @progname, align 8
  %2 = load ptr, ptr @progname, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr @progname, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr @.str, ptr @progname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  store i32 1, ptr %argn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %argn, align 4
  %6 = load i32, ptr %argc.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body, label %for.end89

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %argv.addr, align 8
  %8 = load i32, ptr %argn, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx6, align 8
  store ptr %9, ptr %arg, align 8
  %10 = load ptr, ptr %arg, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp ne i32 %conv8, 45
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  br label %for.end89

if.end12:                                         ; preds = %for.body
  %12 = load ptr, ptr %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %arg, align 8
  %13 = load ptr, ptr %arg, align 8
  %call = call i32 @keymatch(ptr noundef %13, ptr noundef @.str.1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end12
  store i32 0, ptr %keep_COM, align 4
  br label %if.end87

if.else:                                          ; preds = %if.end12
  %14 = load ptr, ptr %arg, align 8
  %call14 = call i32 @keymatch(ptr noundef %14, ptr noundef @.str.2, i32 noundef 2)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.else31

if.then16:                                        ; preds = %if.else
  %15 = load i32, ptr %argn, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %argn, align 4
  %16 = load i32, ptr %argc.addr, align 4
  %cmp17 = icmp sge i32 %inc, %16
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  call void @usage()
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then16
  %17 = load ptr, ptr %argv.addr, align 8
  %18 = load i32, ptr %argn, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %17, i64 %idxprom21
  %19 = load ptr, ptr %arrayidx22, align 8
  %call23 = call ptr @"\01_fopen"(ptr noundef %19, ptr noundef @.str.3)
  store ptr %call23, ptr %comment_file, align 8
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end20
  %20 = load ptr, ptr @__stderrp, align 8
  %21 = load ptr, ptr @progname, align 8
  %22 = load ptr, ptr %argv.addr, align 8
  %23 = load i32, ptr %argn, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %22, i64 %idxprom27
  %24 = load ptr, ptr %arrayidx28, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.4, ptr noundef %21, ptr noundef %24)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end30:                                         ; preds = %if.end20
  br label %if.end86

if.else31:                                        ; preds = %if.else
  %25 = load ptr, ptr %arg, align 8
  %call32 = call i32 @keymatch(ptr noundef %25, ptr noundef @.str.5, i32 noundef 1)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.else84

if.then34:                                        ; preds = %if.else31
  %26 = load i32, ptr %argn, align 4
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, ptr %argn, align 4
  %27 = load i32, ptr %argc.addr, align 4
  %cmp36 = icmp sge i32 %inc35, %27
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then34
  call void @usage()
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then34
  %28 = load ptr, ptr %argv.addr, align 8
  %29 = load i32, ptr %argn, align 4
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %28, i64 %idxprom40
  %30 = load ptr, ptr %arrayidx41, align 8
  store ptr %30, ptr %comment_arg, align 8
  %31 = load ptr, ptr %comment_arg, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx42, align 1
  %conv43 = sext i8 %32 to i32
  %cmp44 = icmp eq i32 %conv43, 34
  br i1 %cmp44, label %if.then46, label %if.end81

if.then46:                                        ; preds = %if.end39
  %call47 = call ptr @malloc(i64 noundef 65000) #8
  store ptr %call47, ptr %comment_arg, align 8
  %33 = load ptr, ptr %comment_arg, align 8
  %cmp48 = icmp eq ptr %33, null
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then46
  %34 = load ptr, ptr @__stderrp, align 8
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.6, ptr noundef @.str.7)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end52:                                         ; preds = %if.then46
  %35 = load ptr, ptr %comment_arg, align 8
  %36 = load ptr, ptr %argv.addr, align 8
  %37 = load i32, ptr %argn, align 4
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %36, i64 %idxprom53
  %38 = load ptr, ptr %arrayidx54, align 8
  %add.ptr = getelementptr inbounds i8, ptr %38, i64 1
  %39 = load ptr, ptr %comment_arg, align 8
  %40 = call i64 @llvm.objectsize.i64.p0(ptr %39, i1 false, i1 true, i1 false)
  %call55 = call ptr @__strcpy_chk(ptr noundef %35, ptr noundef %add.ptr, i64 noundef %40) #9
  br label %for.cond56

for.cond56:                                       ; preds = %if.end76, %if.end52
  %41 = load ptr, ptr %comment_arg, align 8
  %call57 = call i64 @strlen(ptr noundef %41)
  %conv58 = trunc i64 %call57 to i32
  store i32 %conv58, ptr %comment_length, align 4
  %42 = load i32, ptr %comment_length, align 4
  %cmp59 = icmp ugt i32 %42, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %for.cond56
  %43 = load ptr, ptr %comment_arg, align 8
  %44 = load i32, ptr %comment_length, align 4
  %sub = sub i32 %44, 1
  %idxprom61 = zext i32 %sub to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %43, i64 %idxprom61
  %45 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %45 to i32
  %cmp64 = icmp eq i32 %conv63, 34
  br i1 %cmp64, label %if.then66, label %if.end70

if.then66:                                        ; preds = %land.lhs.true
  %46 = load ptr, ptr %comment_arg, align 8
  %47 = load i32, ptr %comment_length, align 4
  %sub67 = sub i32 %47, 1
  %idxprom68 = zext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %46, i64 %idxprom68
  store i8 0, ptr %arrayidx69, align 1
  br label %for.end

if.end70:                                         ; preds = %land.lhs.true, %for.cond56
  %48 = load i32, ptr %argn, align 4
  %inc71 = add nsw i32 %48, 1
  store i32 %inc71, ptr %argn, align 4
  %49 = load i32, ptr %argc.addr, align 4
  %cmp72 = icmp sge i32 %inc71, %49
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end70
  %50 = load ptr, ptr @__stderrp, align 8
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.6, ptr noundef @.str.8)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end76:                                         ; preds = %if.end70
  %51 = load ptr, ptr %comment_arg, align 8
  %52 = load ptr, ptr %comment_arg, align 8
  %53 = call i64 @llvm.objectsize.i64.p0(ptr %52, i1 false, i1 true, i1 false)
  %call77 = call ptr @__strcat_chk(ptr noundef %51, ptr noundef @.str.9, i64 noundef %53) #9
  %54 = load ptr, ptr %comment_arg, align 8
  %55 = load ptr, ptr %argv.addr, align 8
  %56 = load i32, ptr %argn, align 4
  %idxprom78 = sext i32 %56 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %55, i64 %idxprom78
  %57 = load ptr, ptr %arrayidx79, align 8
  %58 = load ptr, ptr %comment_arg, align 8
  %59 = call i64 @llvm.objectsize.i64.p0(ptr %58, i1 false, i1 true, i1 false)
  %call80 = call ptr @__strcat_chk(ptr noundef %54, ptr noundef %57, i64 noundef %59) #9
  br label %for.cond56

for.end:                                          ; preds = %if.then66
  br label %if.end81

if.end81:                                         ; preds = %for.end, %if.end39
  %60 = load ptr, ptr %comment_arg, align 8
  %call82 = call i64 @strlen(ptr noundef %60)
  %conv83 = trunc i64 %call82 to i32
  store i32 %conv83, ptr %comment_length, align 4
  br label %if.end85

if.else84:                                        ; preds = %if.else31
  call void @usage()
  br label %if.end85

if.end85:                                         ; preds = %if.else84, %if.end81
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end30
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then13
  br label %for.inc

for.inc:                                          ; preds = %if.end87
  %61 = load i32, ptr %argn, align 4
  %inc88 = add nsw i32 %61, 1
  store i32 %inc88, ptr %argn, align 4
  br label %for.cond, !llvm.loop !6

for.end89:                                        ; preds = %if.then11, %for.cond
  %62 = load ptr, ptr %comment_arg, align 8
  %cmp90 = icmp ne ptr %62, null
  br i1 %cmp90, label %land.lhs.true92, label %if.end96

land.lhs.true92:                                  ; preds = %for.end89
  %63 = load ptr, ptr %comment_file, align 8
  %cmp93 = icmp ne ptr %63, null
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %land.lhs.true92
  call void @usage()
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %land.lhs.true92, %for.end89
  %64 = load ptr, ptr %comment_arg, align 8
  %cmp97 = icmp eq ptr %64, null
  br i1 %cmp97, label %land.lhs.true99, label %if.end106

land.lhs.true99:                                  ; preds = %if.end96
  %65 = load ptr, ptr %comment_file, align 8
  %cmp100 = icmp eq ptr %65, null
  br i1 %cmp100, label %land.lhs.true102, label %if.end106

land.lhs.true102:                                 ; preds = %land.lhs.true99
  %66 = load i32, ptr %argn, align 4
  %67 = load i32, ptr %argc.addr, align 4
  %cmp103 = icmp sge i32 %66, %67
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %land.lhs.true102
  call void @usage()
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %land.lhs.true102, %land.lhs.true99, %if.end96
  %68 = load i32, ptr %argn, align 4
  %69 = load i32, ptr %argc.addr, align 4
  %cmp107 = icmp slt i32 %68, %69
  br i1 %cmp107, label %if.then109, label %if.else120

if.then109:                                       ; preds = %if.end106
  %70 = load ptr, ptr %argv.addr, align 8
  %71 = load i32, ptr %argn, align 4
  %idxprom110 = sext i32 %71 to i64
  %arrayidx111 = getelementptr inbounds ptr, ptr %70, i64 %idxprom110
  %72 = load ptr, ptr %arrayidx111, align 8
  %call112 = call ptr @"\01_fopen"(ptr noundef %72, ptr noundef @.str.10)
  store ptr %call112, ptr @infile, align 8
  %cmp113 = icmp eq ptr %call112, null
  br i1 %cmp113, label %if.then115, label %if.end119

if.then115:                                       ; preds = %if.then109
  %73 = load ptr, ptr @__stderrp, align 8
  %74 = load ptr, ptr @progname, align 8
  %75 = load ptr, ptr %argv.addr, align 8
  %76 = load i32, ptr %argn, align 4
  %idxprom116 = sext i32 %76 to i64
  %arrayidx117 = getelementptr inbounds ptr, ptr %75, i64 %idxprom116
  %77 = load ptr, ptr %arrayidx117, align 8
  %call118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.4, ptr noundef %74, ptr noundef %77)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end119:                                        ; preds = %if.then109
  br label %if.end121

if.else120:                                       ; preds = %if.end106
  %78 = load ptr, ptr @__stdinp, align 8
  store ptr %78, ptr @infile, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %if.end119
  %79 = load i32, ptr %argn, align 4
  %80 = load i32, ptr %argc.addr, align 4
  %sub122 = sub nsw i32 %80, 1
  %cmp123 = icmp slt i32 %79, %sub122
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end121
  %81 = load ptr, ptr @__stderrp, align 8
  %82 = load ptr, ptr @progname, align 8
  %call126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.11, ptr noundef %82)
  call void @usage()
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end121
  %83 = load ptr, ptr @__stdoutp, align 8
  store ptr %83, ptr @outfile, align 8
  %84 = load ptr, ptr %comment_arg, align 8
  %cmp128 = icmp eq ptr %84, null
  br i1 %cmp128, label %if.then130, label %if.end156

if.then130:                                       ; preds = %if.end127
  %call131 = call ptr @malloc(i64 noundef 65000) #8
  store ptr %call131, ptr %comment_arg, align 8
  %85 = load ptr, ptr %comment_arg, align 8
  %cmp132 = icmp eq ptr %85, null
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.then130
  %86 = load ptr, ptr @__stderrp, align 8
  %call135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.6, ptr noundef @.str.7)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end136:                                        ; preds = %if.then130
  store i32 0, ptr %comment_length, align 4
  %87 = load ptr, ptr %comment_file, align 8
  %cmp137 = icmp ne ptr %87, null
  br i1 %cmp137, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end136
  %88 = load ptr, ptr %comment_file, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end136
  %89 = load ptr, ptr @__stdinp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %88, %cond.true ], [ %89, %cond.false ]
  store ptr %cond, ptr %src_file, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end146, %cond.end
  %90 = load ptr, ptr %src_file, align 8
  %call139 = call i32 @getc(ptr noundef %90)
  store i32 %call139, ptr %c, align 4
  %cmp140 = icmp ne i32 %call139, -1
  br i1 %cmp140, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %91 = load i32, ptr %comment_length, align 4
  %cmp142 = icmp uge i32 %91, 65000
  br i1 %cmp142, label %if.then144, label %if.end146

if.then144:                                       ; preds = %while.body
  %92 = load ptr, ptr @__stderrp, align 8
  %call145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.12, i32 noundef 65000)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end146:                                        ; preds = %while.body
  %93 = load i32, ptr %c, align 4
  %conv147 = trunc i32 %93 to i8
  %94 = load ptr, ptr %comment_arg, align 8
  %95 = load i32, ptr %comment_length, align 4
  %inc148 = add i32 %95, 1
  store i32 %inc148, ptr %comment_length, align 4
  %idxprom149 = zext i32 %95 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %94, i64 %idxprom149
  store i8 %conv147, ptr %arrayidx150, align 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %96 = load ptr, ptr %comment_file, align 8
  %cmp151 = icmp ne ptr %96, null
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %while.end
  %97 = load ptr, ptr %comment_file, align 8
  %call154 = call i32 @fclose(ptr noundef %97)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %while.end
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.end127
  %98 = load i32, ptr %keep_COM, align 4
  %call157 = call i32 @scan_JPEG_header(i32 noundef %98)
  store i32 %call157, ptr %marker, align 4
  %99 = load i32, ptr %comment_length, align 4
  %cmp158 = icmp ugt i32 %99, 0
  br i1 %cmp158, label %if.then160, label %if.end168

if.then160:                                       ; preds = %if.end156
  call void @write_marker(i32 noundef 254)
  %100 = load i32, ptr %comment_length, align 4
  %add = add i32 %100, 2
  call void @write_2_bytes(i32 noundef %add)
  br label %while.cond161

while.cond161:                                    ; preds = %while.body164, %if.then160
  %101 = load i32, ptr %comment_length, align 4
  %cmp162 = icmp ugt i32 %101, 0
  br i1 %cmp162, label %while.body164, label %while.end167

while.body164:                                    ; preds = %while.cond161
  %102 = load ptr, ptr %comment_arg, align 8
  %incdec.ptr165 = getelementptr inbounds i8, ptr %102, i32 1
  store ptr %incdec.ptr165, ptr %comment_arg, align 8
  %103 = load i8, ptr %102, align 1
  %conv166 = sext i8 %103 to i32
  call void @write_1_byte(i32 noundef %conv166)
  %104 = load i32, ptr %comment_length, align 4
  %dec = add i32 %104, -1
  store i32 %dec, ptr %comment_length, align 4
  br label %while.cond161, !llvm.loop !9

while.end167:                                     ; preds = %while.cond161
  br label %if.end168

if.end168:                                        ; preds = %while.end167, %if.end156
  %105 = load i32, ptr %marker, align 4
  call void @write_marker(i32 noundef %105)
  call void @copy_rest_of_file()
  call void @exit(i32 noundef 0) #7
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
  store i32 0, ptr %nmatched, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %0 = load ptr, ptr %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %arg.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, ptr %ca, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %keyword.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr2, ptr %keyword.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv3 = sext i8 %3 to i32
  store i32 %conv3, ptr %ck, align 4
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load i32, ptr %ca, align 4
  %call = call i32 @isupper(i32 noundef %4) #10
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %5 = load i32, ptr %ca, align 4
  %call7 = call i32 @tolower(i32 noundef %5) #10
  store i32 %call7, ptr %ca, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %6 = load i32, ptr %ca, align 4
  %7 = load i32, ptr %ck, align 4
  %cmp9 = icmp ne i32 %6, %7
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %8 = load i32, ptr %nmatched, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %nmatched, align 4
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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.13)
  %1 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.14)
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = load ptr, ptr @progname, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.15, ptr noundef %3)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.16)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.17)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.18)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.19)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.20)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.21)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.22)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.23)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.24)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.25, i32 noundef 65000)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.26)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.27)
  call void @exit(i32 noundef 1) #7
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
  %retval = alloca i32, align 4
  %keep_COM.addr = alloca i32, align 4
  %marker = alloca i32, align 4
  store i32 %keep_COM, ptr %keep_COM.addr, align 4
  %call = call i32 @first_marker()
  %cmp = icmp ne i32 %call, 216
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.6, ptr noundef @.str.28)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %entry
  call void @write_marker(i32 noundef 216)
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end
  %call2 = call i32 @next_marker()
  store i32 %call2, ptr %marker, align 4
  %1 = load i32, ptr %marker, align 4
  switch i32 %1, label %sw.default [
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
  %2 = load i32, ptr %marker, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %for.cond
  %3 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.6, ptr noundef @.str.29)
  call void @exit(i32 noundef 1) #7
  unreachable

sw.bb5:                                           ; preds = %for.cond
  %4 = load i32, ptr %marker, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %for.cond
  %5 = load i32, ptr %keep_COM.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb6
  %6 = load i32, ptr %marker, align 4
  call void @write_marker(i32 noundef %6)
  call void @copy_variable()
  br label %if.end8

if.else:                                          ; preds = %sw.bb6
  call void @skip_variable()
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %7 = load i32, ptr %marker, align 4
  call void @write_marker(i32 noundef %7)
  call void @copy_variable()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end8
  br label %for.cond

return:                                           ; preds = %sw.bb5, %sw.bb
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_marker(i32 noundef %marker) #0 {
entry:
  %marker.addr = alloca i32, align 4
  store i32 %marker, ptr %marker.addr, align 4
  %0 = load ptr, ptr @outfile, align 8
  %call = call i32 @putc(i32 noundef 255, ptr noundef %0)
  %1 = load i32, ptr %marker.addr, align 4
  %2 = load ptr, ptr @outfile, align 8
  %call1 = call i32 @putc(i32 noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_2_bytes(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  %shr = lshr i32 %0, 8
  %and = and i32 %shr, 255
  %1 = load ptr, ptr @outfile, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %1)
  %2 = load i32, ptr %val.addr, align 4
  %and1 = and i32 %2, 255
  %3 = load ptr, ptr @outfile, align 8
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_1_byte(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %1 = load ptr, ptr @outfile, align 8
  %call = call i32 @putc(i32 noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @copy_rest_of_file() #0 {
entry:
  %c = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @infile, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %c, align 4
  %2 = load ptr, ptr @outfile, align 8
  %call1 = call i32 @putc(i32 noundef %1, ptr noundef %2)
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
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %0 = load ptr, ptr @infile, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %c1, align 4
  %1 = load ptr, ptr @infile, align 8
  %call1 = call i32 @getc(ptr noundef %1)
  store i32 %call1, ptr %c2, align 4
  %2 = load i32, ptr %c1, align 4
  %cmp = icmp ne i32 %2, 255
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %c2, align 4
  %cmp2 = icmp ne i32 %3, 216
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.6, ptr noundef @.str.30)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %c2, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @next_marker() #0 {
entry:
  %c = alloca i32, align 4
  %discarded_bytes = alloca i32, align 4
  store i32 0, ptr %discarded_bytes, align 4
  %call = call i32 @read_1_byte()
  store i32 %call, ptr %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %c, align 4
  %cmp = icmp ne i32 %0, 255
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %discarded_bytes, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %discarded_bytes, align 4
  %call1 = call i32 @read_1_byte()
  store i32 %call1, ptr %c, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %call2 = call i32 @read_1_byte()
  store i32 %call2, ptr %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i32, ptr %c, align 4
  %cmp3 = icmp eq i32 %2, 255
  br i1 %cmp3, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %discarded_bytes, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.31)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %5 = load i32, ptr %c, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define internal void @copy_variable() #0 {
entry:
  %length = alloca i32, align 4
  %call = call i32 @read_2_bytes()
  store i32 %call, ptr %length, align 4
  %0 = load i32, ptr %length, align 4
  call void @write_2_bytes(i32 noundef %0)
  %1 = load i32, ptr %length, align 4
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.6, ptr noundef @.str.33)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %length, align 4
  %sub = sub i32 %3, 2
  store i32 %sub, ptr %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, ptr %length, align 4
  %cmp2 = icmp ugt i32 %4, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 @read_1_byte()
  call void @write_1_byte(i32 noundef %call3)
  %5 = load i32, ptr %length, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %length, align 4
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
  %0 = load i32, ptr %length, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.6, ptr noundef @.str.33)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %length, align 4
  %sub = sub i32 %2, 2
  store i32 %sub, ptr %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, ptr %length, align 4
  %cmp2 = icmp ugt i32 %3, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 @read_1_byte()
  %4 = load i32, ptr %length, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %length, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_1_byte() #0 {
entry:
  %c = alloca i32, align 4
  %0 = load ptr, ptr @infile, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %c, align 4
  %1 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.6, ptr noundef @.str.32)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_2_bytes() #0 {
entry:
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %0 = load ptr, ptr @infile, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %c1, align 4
  %1 = load i32, ptr %c1, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.6, ptr noundef @.str.32)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @infile, align 8
  %call2 = call i32 @getc(ptr noundef %3)
  store i32 %call2, ptr %c2, align 4
  %4 = load i32, ptr %c2, align 4
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.6, ptr noundef @.str.32)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end6:                                          ; preds = %if.end
  %6 = load i32, ptr %c1, align 4
  %shl = shl i32 %6, 8
  %7 = load i32, ptr %c2, align 4
  %add = add i32 %shl, %7
  ret i32 %add
}

declare i32 @putc(i32 noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { noreturn }
attributes #8 = { allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

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
