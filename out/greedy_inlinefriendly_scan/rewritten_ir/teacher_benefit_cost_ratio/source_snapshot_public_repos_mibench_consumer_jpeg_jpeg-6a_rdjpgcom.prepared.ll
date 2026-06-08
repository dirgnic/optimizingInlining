; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdjpgcom.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdjpgcom.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@progname = internal global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"rdjpgcom\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@infile = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@__stdinp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"rdjpgcom displays any textual comments in a JPEG file.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Usage: %s [switches] [inputfile]\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"  -verbose    Also display dimensions of JPEG image\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Expected SOI marker first\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Not a JPEG file\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Warning: garbage data found in JPEG file\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Premature EOF in JPEG file\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Baseline\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Extended sequential\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Progressive\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Lossless\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Differential sequential\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Differential progressive\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Differential lossless\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Extended sequential, arithmetic coding\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Progressive, arithmetic coding\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Lossless, arithmetic coding\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"Differential sequential, arithmetic coding\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Differential progressive, arithmetic coding\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"Differential lossless, arithmetic coding\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"JPEG image is %uw * %uh, %d color components, %d bits per sample\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"JPEG process: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Bogus SOF marker length\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@__stdoutp = external global ptr, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %argn = alloca i32, align 4
  %arg = alloca ptr, align 8
  %verbose = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %verbose, align 4
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
  br i1 %cmp4, label %for.body, label %for.end

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
  br label %for.end

if.end12:                                         ; preds = %for.body
  %12 = load ptr, ptr %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %arg, align 8
  %13 = load ptr, ptr %arg, align 8
  %call = call i32 @keymatch(ptr noundef %13, ptr noundef @.str.1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end12
  %14 = load i32, ptr %verbose, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %verbose, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end12
  call void @usage()
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %15 = load i32, ptr %argn, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, ptr %argn, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then11, %for.cond
  %16 = load i32, ptr %argn, align 4
  %17 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %17, 1
  %cmp16 = icmp slt i32 %16, %sub
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %for.end
  %18 = load ptr, ptr @__stderrp, align 8
  %19 = load ptr, ptr @progname, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.2, ptr noundef %19)
  call void @usage()
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.end
  %20 = load i32, ptr %argn, align 4
  %21 = load i32, ptr %argc.addr, align 4
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %if.then23, label %if.else34

if.then23:                                        ; preds = %if.end20
  %22 = load ptr, ptr %argv.addr, align 8
  %23 = load i32, ptr %argn, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %22, i64 %idxprom24
  %24 = load ptr, ptr %arrayidx25, align 8
  %call26 = call ptr @"\01_fopen"(ptr noundef %24, ptr noundef @.str.3)
  store ptr %call26, ptr @infile, align 8
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.then23
  %25 = load ptr, ptr @__stderrp, align 8
  %26 = load ptr, ptr @progname, align 8
  %27 = load ptr, ptr %argv.addr, align 8
  %28 = load i32, ptr %argn, align 4
  %idxprom30 = sext i32 %28 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %27, i64 %idxprom30
  %29 = load ptr, ptr %arrayidx31, align 8
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.4, ptr noundef %26, ptr noundef %29)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end33:                                         ; preds = %if.then23
  br label %if.end35

if.else34:                                        ; preds = %if.end20
  %30 = load ptr, ptr @__stdinp, align 8
  store ptr %30, ptr @infile, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.end33
  %31 = load i32, ptr %verbose, align 4
  %call36 = call i32 @scan_JPEG_header(i32 noundef %31)
  call void @exit(i32 noundef 0) #4
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
  %call = call i32 @isupper(i32 noundef %4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %5 = load i32, ptr %ca, align 4
  %call7 = call i32 @tolower(i32 noundef %5) #5
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
  br label %while.cond, !llvm.loop !8

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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.5)
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr @progname, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.6, ptr noundef %2)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.7)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8)
  call void @exit(i32 noundef 1) #4
  unreachable
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @scan_JPEG_header(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %marker = alloca i32, align 4
  store i32 %verbose, ptr %verbose.addr, align 4
  %call = call i32 @first_marker()
  %cmp = icmp ne i32 %call, 216
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.9, ptr noundef @.str.10)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
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
    i32 218, label %sw.bb5
    i32 217, label %sw.bb6
    i32 254, label %sw.bb7
  ]

sw.bb:                                            ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %2 = load i32, ptr %verbose.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %sw.bb
  %3 = load i32, ptr %marker, align 4
  call void @process_SOFn(i32 noundef %3)
  br label %if.end4

if.else:                                          ; preds = %sw.bb
  call void @skip_variable()
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.cond
  %4 = load i32, ptr %marker, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %for.cond
  %5 = load i32, ptr %marker, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %for.cond
  call void @process_COM()
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  call void @skip_variable()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %if.end4
  br label %for.cond

return:                                           ; preds = %sw.bb6, %sw.bb5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isupper(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #3

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
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.9, ptr noundef @.str.11)
  call void @exit(i32 noundef 1) #4
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
  %call = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_0()
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
  %call1 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_1()
  store i32 %call1, ptr %c, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %call2 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_2()
  store i32 %call2, ptr %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i32, ptr %c, align 4
  %cmp3 = icmp eq i32 %2, 255
  br i1 %cmp3, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %discarded_bytes, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.12)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %5 = load i32, ptr %c, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define internal void @process_SOFn(i32 noundef %marker) #0 {
entry:
  %marker.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %image_height = alloca i32, align 4
  %image_width = alloca i32, align 4
  %data_precision = alloca i32, align 4
  %num_components = alloca i32, align 4
  %process = alloca ptr, align 8
  %ci = alloca i32, align 4
  store i32 %marker, ptr %marker.addr, align 4
  %call = call i32 @read_2_bytes()
  store i32 %call, ptr %length, align 4
  %call1 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_3()
  store i32 %call1, ptr %data_precision, align 4
  %call2 = call i32 @read_2_bytes()
  store i32 %call2, ptr %image_height, align 4
  %call3 = call i32 @read_2_bytes()
  store i32 %call3, ptr %image_width, align 4
  %call4 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_4()
  store i32 %call4, ptr %num_components, align 4
  %0 = load i32, ptr %marker.addr, align 4
  switch i32 %0, label %sw.default [
    i32 192, label %sw.bb
    i32 193, label %sw.bb5
    i32 194, label %sw.bb6
    i32 195, label %sw.bb7
    i32 197, label %sw.bb8
    i32 198, label %sw.bb9
    i32 199, label %sw.bb10
    i32 201, label %sw.bb11
    i32 202, label %sw.bb12
    i32 203, label %sw.bb13
    i32 205, label %sw.bb14
    i32 206, label %sw.bb15
    i32 207, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str.14, ptr %process, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store ptr @.str.15, ptr %process, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store ptr @.str.16, ptr %process, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store ptr @.str.17, ptr %process, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store ptr @.str.18, ptr %process, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store ptr @.str.19, ptr %process, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store ptr @.str.20, ptr %process, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store ptr @.str.21, ptr %process, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store ptr @.str.22, ptr %process, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store ptr @.str.23, ptr %process, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store ptr @.str.24, ptr %process, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  store ptr @.str.25, ptr %process, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  store ptr @.str.26, ptr %process, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store ptr @.str.27, ptr %process, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb
  %1 = load i32, ptr %image_width, align 4
  %2 = load i32, ptr %image_height, align 4
  %3 = load i32, ptr %num_components, align 4
  %4 = load i32, ptr %data_precision, align 4
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.28, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %5 = load ptr, ptr %process, align 8
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.29, ptr noundef %5)
  %6 = load i32, ptr %length, align 4
  %7 = load i32, ptr %num_components, align 4
  %mul = mul nsw i32 %7, 3
  %add = add nsw i32 8, %mul
  %cmp = icmp ne i32 %6, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %8 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.9, ptr noundef @.str.30)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %sw.epilog
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %ci, align 4
  %10 = load i32, ptr %num_components, align 4
  %cmp20 = icmp slt i32 %9, %10
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call21 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_5()
  %call22 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_6()
  %call23 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_7()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.9, ptr noundef @.str.31)
  call void @exit(i32 noundef 1) #4
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
  %call3 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_8()
  %4 = load i32, ptr %length, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %length, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @process_COM() #0 {
entry:
  %length = alloca i32, align 4
  %ch = alloca i32, align 4
  %lastch = alloca i32, align 4
  store i32 0, ptr %lastch, align 4
  %call = call i32 @read_2_bytes()
  store i32 %call, ptr %length, align 4
  %0 = load i32, ptr %length, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.9, ptr noundef @.str.31)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %length, align 4
  %sub = sub i32 %2, 2
  store i32 %sub, ptr %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end
  %3 = load i32, ptr %length, align 4
  %cmp2 = icmp ugt i32 %3, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_9()
  store i32 %call3, ptr %ch, align 4
  %4 = load i32, ptr %ch, align 4
  %cmp4 = icmp eq i32 %4, 13
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  br label %if.end26

if.else:                                          ; preds = %while.body
  %5 = load i32, ptr %ch, align 4
  %cmp7 = icmp eq i32 %5, 10
  br i1 %cmp7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else
  %6 = load i32, ptr %lastch, align 4
  %cmp9 = icmp ne i32 %6, 13
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  br label %if.end25

if.else13:                                        ; preds = %if.else
  %7 = load i32, ptr %ch, align 4
  %cmp14 = icmp eq i32 %7, 92
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else13
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.33)
  br label %if.end24

if.else17:                                        ; preds = %if.else13
  %8 = load i32, ptr %ch, align 4
  %call18 = call i32 @isprint(i32 noundef %8) #5
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else17
  %9 = load i32, ptr %ch, align 4
  %10 = load ptr, ptr @__stdoutp, align 8
  %call20 = call i32 @putc(i32 noundef %9, ptr noundef %10)
  br label %if.end23

if.else21:                                        ; preds = %if.else17
  %11 = load i32, ptr %ch, align 4
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, i32 noundef %11)
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end12
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then5
  %12 = load i32, ptr %ch, align 4
  store i32 %12, ptr %lastch, align 4
  %13 = load i32, ptr %length, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %length, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  ret void
}

declare i32 @getc(ptr noundef) #1

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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
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
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end6:                                          ; preds = %if.end
  %6 = load i32, ptr %c1, align 4
  %shl = shl i32 %6, 8
  %7 = load i32, ptr %c2, align 4
  %add = add i32 %shl, %7
  ret i32 %add
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isprint(i32 noundef) #3

declare i32 @putc(i32 noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_0()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_1()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_2()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_3()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_4()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_5()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_6()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_7()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_8()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
}

define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_rdjpgcom_9()  alwaysinline#0 {
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
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.9, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %c, align 4
  ret i32 %3
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
