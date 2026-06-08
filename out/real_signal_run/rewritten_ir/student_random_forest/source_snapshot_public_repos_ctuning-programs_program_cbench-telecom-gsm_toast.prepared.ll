; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/toast.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/toast.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.fmtdesc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@f_decode = global i32 0, align 4
@f_cat = global i32 0, align 4
@f_force = global i32 0, align 4
@f_precious = global i32 0, align 4
@f_fast = global i32 0, align 4
@f_verbose = global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"8 kHz, 8 bit u-law encoding with Sun audio header\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".au\00", align 1
@f_audio = global %struct.fmtdesc { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @audio_init_input, ptr @audio_init_output, ptr @ulaw_input, ptr @ulaw_output }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"u-law\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"plain 8 kHz, 8 bit u-law encoding\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".u\00", align 1
@f_ulaw = global %struct.fmtdesc { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @generic_init, ptr @generic_init, ptr @ulaw_input, ptr @ulaw_output }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"A-law\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"8 kHz, 8 bit A-law encoding\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".A\00", align 1
@f_alaw = global %struct.fmtdesc { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @generic_init, ptr @generic_init, ptr @alaw_input, ptr @alaw_output }, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"16 bit (13 significant) signed 8 kHz signal\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".l\00", align 1
@f_linear = global %struct.fmtdesc { ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @generic_init, ptr @generic_init, ptr @linear_input, ptr @linear_output }, align 8
@alldescs = global [5 x ptr] [ptr @f_audio, ptr @f_alaw, ptr @f_ulaw, ptr @f_linear, ptr null], align 8
@f_format = global ptr null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"fcdpvhuaslVF\00", align 1
@__stderrp = external global ptr, align 8
@.str.13 = private unnamed_addr constant [51 x i8] c"Usage: %s [-fcpdhvuaslF] [files...] (-h for help)\0A\00", align 1
@progname = global ptr null, align 8
@optind = external global i32, align 4
@instat = global %struct.stat zeroinitializer, align 8
@in = global ptr null, align 8
@out = global ptr null, align 8
@inname = global ptr null, align 8
@outname = global ptr null, align 8
@output = global ptr null, align 8
@input = global ptr null, align 8
@init_input = global ptr null, align 8
@init_output = global ptr null, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"toast\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s: only one of -[uals] is possible (%s -h for help)\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%s 1.0, version %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"$Id: toast.c,v 1.1.1.1 2000/11/06 19:54:26 mguthaus Exp $\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Usage: %s [-fcpdhvaulsF] [files...]\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c" -f  force     Replace existing files without asking\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c" -c  cat       Write to stdout, do not remove source files\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c" -d  decode    Decode data (default is encode)\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c" -p  precious  Do not delete the source\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c" -u  u-law     Force 8 kHz/8 bit u-law in/output format\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c" -s  sun .au   Force Sun .au u-law in/output format\0A\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c" -a  A-law     Force 8 kHz/8 bit A-law in/output format\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c" -l  linear    Force 16 bit linear in/output format\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c" -F  fast      Sacrifice conformance to performance\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c" -v  version   Show version information\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c" -h  help      Print this text\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%s: error %s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"writing header to\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"reading header from\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"%s: error writing \22%s\22\0A\00", align 1
@__stdoutp = external global ptr, align 8
@__stdinp = external global ptr, align 8
@.str.39 = private unnamed_addr constant [30 x i8] c"%s: source \22%s\22 not deleted.\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"%s: could not unlink \22%s\22\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c".gsm\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"%s: %s already has \22%s\22 suffix -- unchanged.\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"%s: cannot open \22%s\22 for reading\0A\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"%s: failed to malloc %d bytes -- abort\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"%s: cannot stat \22%s\22\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"%s: \22%s\22 is not a regular file -- unchanged.\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"%s: \22%s\22 has %s other link%s -- unchanged.\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"%s: can't open \22%s\22 for writing\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"%s: filename \22%s\22 is too long (maximum is %ld)\0A\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"%s already exists; do you wish to overwrite %s (y or n)? \00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"\09not overwritten\0A\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"%s: incomplete frame (%d byte%s missing) from %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"%s: bad frame in %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"%s: error writing to %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"%s: error reading from %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"%s: could not change file mode of \22%s\22\0A\00", align 1

declare i32 @audio_init_input() #0

declare i32 @audio_init_output() #0

declare i32 @ulaw_input(ptr noundef) #0

declare i32 @ulaw_output(ptr noundef) #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @generic_init() #1 {
entry:
  ret i32 0
}

declare i32 @alaw_input(ptr noundef) #0

declare i32 @alaw_output(ptr noundef) #0

declare i32 @linear_input(ptr noundef) #0

declare i32 @linear_output(ptr noundef) #0

; Function Attrs: nounwind ssp uwtable
define i32 @main1(i32 noundef %ac, ptr noundef %av) #1 {
entry:
  %ac.addr = alloca i32, align 4
  %av.addr = alloca ptr, align 8
  %opt = alloca i32, align 4
  store i32 %ac, ptr %ac.addr, align 4
  store ptr %av, ptr %av.addr, align 8
  %0 = load ptr, ptr %av.addr, align 8
  %1 = load ptr, ptr %0, align 8
  call void @parse_argv0(ptr noundef %1)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, ptr %ac.addr, align 4
  %3 = load ptr, ptr %av.addr, align 8
  %call = call i32 @"\01_getopt"(i32 noundef %2, ptr noundef %3, ptr noundef @.str.12)
  store i32 %call, ptr %opt, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %opt, align 4
  switch i32 %4, label %sw.default [
    i32 100, label %sw.bb
    i32 102, label %sw.bb1
    i32 99, label %sw.bb2
    i32 112, label %sw.bb3
    i32 70, label %sw.bb4
    i32 86, label %sw.bb5
    i32 117, label %sw.bb6
    i32 108, label %sw.bb7
    i32 97, label %sw.bb8
    i32 115, label %sw.bb9
    i32 118, label %sw.bb10
    i32 104, label %sw.bb11
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, ptr @f_decode, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  store i32 1, ptr @f_force, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  store i32 1, ptr @f_cat, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %while.body
  store i32 1, ptr @f_precious, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  store i32 1, ptr @f_fast, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  store i32 1, ptr @f_verbose, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  call void @set_format(ptr noundef @f_ulaw)
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  call void @set_format(ptr noundef @f_linear)
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  call void @set_format(ptr noundef @f_alaw)
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  call void @set_format(ptr noundef @f_audio)
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_0()
  call void @exit(i32 noundef 0) #7
  unreachable

sw.bb11:                                          ; preds = %while.body
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_1()
  call void @exit(i32 noundef 0) #7
  unreachable

sw.default:                                       ; preds = %while.body
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr @progname, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.13, ptr noundef %6)
  call void @exit(i32 noundef 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr @f_cat, align 4
  %8 = load i32, ptr @f_precious, align 4
  %or = or i32 %8, %7
  store i32 %or, ptr @f_precious, align 4
  %9 = load i32, ptr @optind, align 4
  %10 = load ptr, ptr %av.addr, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr, ptr %av.addr, align 8
  %11 = load i32, ptr @optind, align 4
  %12 = load i32, ptr %ac.addr, align 4
  %sub = sub nsw i32 %12, %11
  store i32 %sub, ptr %ac.addr, align 4
  call void @catch_signals(ptr noundef @onintr)
  %13 = load i32, ptr %ac.addr, align 4
  %cmp13 = icmp sle i32 %13, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %call14 = call i32 @process(ptr noundef null)
  br label %if.end

if.else:                                          ; preds = %while.end
  br label %while.cond15

while.cond15:                                     ; preds = %while.body16, %if.else
  %14 = load i32, ptr %ac.addr, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %ac.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body16, label %while.end18

while.body16:                                     ; preds = %while.cond15
  %15 = load ptr, ptr %av.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %av.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %call17 = call i32 @process(ptr noundef %16)
  br label %while.cond15, !llvm.loop !8

while.end18:                                      ; preds = %while.cond15
  br label %if.end

if.end:                                           ; preds = %while.end18, %if.then
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal void @parse_argv0(ptr noundef %av0) #1 {
entry:
  %av0.addr = alloca ptr, align 8
  %l = alloca i32, align 4
  store ptr %av0, ptr %av0.addr, align 8
  %0 = load ptr, ptr %av0.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %av0.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ @.str.14, %cond.false ]
  %call = call ptr @endname(ptr noundef %cond)
  store ptr %call, ptr %av0.addr, align 8
  store ptr %call, ptr @progname, align 8
  %2 = load ptr, ptr %av0.addr, align 8
  %call1 = call i32 @strncmp(ptr noundef %2, ptr noundef @.str.15, i64 noundef 2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 1, ptr @f_decode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %3 = load ptr, ptr %av0.addr, align 8
  %call3 = call i64 @strlen(ptr noundef %3)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %l, align 4
  %cmp = icmp sge i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %av0.addr, align 8
  %5 = load i32, ptr %l, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 -3
  %call6 = call i32 @strcmp(ptr noundef %add.ptr5, ptr noundef @.str.16)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  store i32 1, ptr @f_decode, align 4
  store i32 1, ptr @f_cat, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end
  ret void
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind ssp uwtable
define internal void @set_format(ptr noundef %f) #1 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  %0 = load ptr, ptr @f_format, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @f_format, align 8
  %2 = load ptr, ptr %f.addr, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr @__stderrp, align 8
  %4 = load ptr, ptr @progname, align 8
  %5 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.17, ptr noundef %4, ptr noundef %5)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %f.addr, align 8
  store ptr %6, ptr @f_format, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @version() #1 {
entry:
  %0 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.18, ptr noundef %0, ptr noundef @.str.19)
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @help() #1 {
entry:
  %0 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.20, ptr noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.22)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.24)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.25)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.28)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.29)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.30)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.31)
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind ssp uwtable
define internal void @catch_signals(ptr noundef %fun) #1 {
entry:
  %fun.addr = alloca ptr, align 8
  store ptr %fun, ptr %fun.addr, align 8
  %0 = load ptr, ptr %fun.addr, align 8
  %call = call ptr @signal(i32 noundef 1, ptr noundef %0)
  %1 = load ptr, ptr %fun.addr, align 8
  %call1 = call ptr @signal(i32 noundef 2, ptr noundef %1)
  %2 = load ptr, ptr %fun.addr, align 8
  %call2 = call ptr @signal(i32 noundef 13, ptr noundef %2)
  %3 = load ptr, ptr %fun.addr, align 8
  %call3 = call ptr @signal(i32 noundef 15, ptr noundef %3)
  %4 = load ptr, ptr %fun.addr, align 8
  %call4 = call ptr @signal(i32 noundef 25, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @onintr() #1 {
entry:
  %tmp = alloca ptr, align 8
  %0 = load ptr, ptr @outname, align 8
  store ptr %0, ptr %tmp, align 8
  store ptr null, ptr @outname, align 8
  %1 = load ptr, ptr %tmp, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tmp, align 8
  %call = call i32 @unlink(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 noundef 1) #7
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process(ptr noundef %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %step = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i32 0, ptr %step, align 4
  store ptr null, ptr @out, align 8
  store ptr null, ptr @in, align 8
  store ptr null, ptr @outname, align 8
  store ptr null, ptr @inname, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i32 @open_input(ptr noundef %0, ptr noundef @instat)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %call1 = call i32 @open_output(ptr noundef %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr @f_decode, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr @init_output, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load ptr, ptr @init_input, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ]
  %call4 = call i32 %cond()
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end25

if.then6:                                         ; preds = %cond.end
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr @progname, align 8
  %7 = load i32, ptr @f_decode, align 4
  %tobool7 = icmp ne i32 %7, 0
  %8 = zext i1 %tobool7 to i64
  %cond8 = select i1 %tobool7, ptr @.str.34, ptr @.str.35
  %9 = load i32, ptr @f_decode, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %cond.true10, label %cond.false16

cond.true10:                                      ; preds = %if.then6
  %10 = load ptr, ptr @outname, align 8
  %tobool11 = icmp ne ptr %10, null
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.true10
  %11 = load ptr, ptr @outname, align 8
  br label %cond.end14

cond.false13:                                     ; preds = %cond.true10
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.true12
  %cond15 = phi ptr [ %11, %cond.true12 ], [ @.str.36, %cond.false13 ]
  br label %cond.end22

cond.false16:                                     ; preds = %if.then6
  %12 = load ptr, ptr @inname, align 8
  %tobool17 = icmp ne ptr %12, null
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.false16
  %13 = load ptr, ptr @inname, align 8
  br label %cond.end20

cond.false19:                                     ; preds = %cond.false16
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi ptr [ %13, %cond.true18 ], [ @.str.37, %cond.false19 ]
  br label %cond.end22

cond.end22:                                       ; preds = %cond.end20, %cond.end14
  %cond23 = phi ptr [ %cond15, %cond.end14 ], [ %cond21, %cond.end20 ]
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.33, ptr noundef %6, ptr noundef %cond8, ptr noundef %cond23)
  br label %err

if.end25:                                         ; preds = %cond.end
  %14 = load i32, ptr @f_decode, align 4
  %tobool26 = icmp ne i32 %14, 0
  %15 = zext i1 %tobool26 to i64
  %cond27 = select i1 %tobool26, ptr @process_decode, ptr @process_encode
  %call28 = call i32 %cond27()
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  br label %err

if.end31:                                         ; preds = %if.end25
  %16 = load ptr, ptr @out, align 8
  %call32 = call i32 @fflush(ptr noundef %16)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end31
  %17 = load ptr, ptr @out, align 8
  %call34 = call i32 @ferror(ptr noundef %17)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end48

if.then36:                                        ; preds = %lor.lhs.false33, %if.end31
  %18 = load ptr, ptr @outname, align 8
  %tobool37 = icmp ne ptr %18, null
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %if.then36
  %19 = load ptr, ptr @outname, align 8
  br label %cond.end40

cond.false39:                                     ; preds = %if.then36
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi ptr [ %19, %cond.true38 ], [ @.str.36, %cond.false39 ]
  call void @perror(ptr noundef %cond41) #8
  %20 = load ptr, ptr @__stderrp, align 8
  %21 = load ptr, ptr @progname, align 8
  %22 = load ptr, ptr @outname, align 8
  %tobool42 = icmp ne ptr %22, null
  br i1 %tobool42, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %cond.end40
  %23 = load ptr, ptr @outname, align 8
  br label %cond.end45

cond.false44:                                     ; preds = %cond.end40
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi ptr [ %23, %cond.true43 ], [ @.str.36, %cond.false44 ]
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.38, ptr noundef %21, ptr noundef %cond46)
  br label %err

if.end48:                                         ; preds = %lor.lhs.false33
  %24 = load ptr, ptr @out, align 8
  %25 = load ptr, ptr @__stdoutp, align 8
  %cmp49 = icmp ne ptr %24, %25
  br i1 %cmp49, label %if.then50, label %if.end59

if.then50:                                        ; preds = %if.end48
  call void @update_times()
  call void @update_mode()
  call void @update_own()
  %26 = load ptr, ptr @out, align 8
  %call51 = call i32 @fclose(ptr noundef %26)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.then50
  %27 = load ptr, ptr @outname, align 8
  call void @perror(ptr noundef %27) #8
  %28 = load ptr, ptr @__stderrp, align 8
  %29 = load ptr, ptr @progname, align 8
  %30 = load ptr, ptr @outname, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.38, ptr noundef %29, ptr noundef %30)
  br label %err

if.end55:                                         ; preds = %if.then50
  %31 = load ptr, ptr @outname, align 8
  %32 = load ptr, ptr %name.addr, align 8
  %cmp56 = icmp ne ptr %31, %32
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end55
  %33 = load ptr, ptr @outname, align 8
  call void @free(ptr noundef %33)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55
  store ptr null, ptr @outname, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end48
  store ptr null, ptr @out, align 8
  %34 = load ptr, ptr @in, align 8
  %35 = load ptr, ptr @__stdinp, align 8
  %cmp60 = icmp ne ptr %34, %35
  br i1 %cmp60, label %if.then61, label %if.end75

if.then61:                                        ; preds = %if.end59
  %36 = load ptr, ptr @in, align 8
  %call62 = call i32 @fclose(ptr noundef %36)
  store ptr null, ptr @in, align 8
  %37 = load i32, ptr @f_cat, align 4
  %tobool63 = icmp ne i32 %37, 0
  br i1 %tobool63, label %if.end71, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then61
  %38 = load i32, ptr @f_precious, align 4
  %tobool64 = icmp ne i32 %38, 0
  br i1 %tobool64, label %if.end71, label %if.then65

if.then65:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr @inname, align 8
  %call66 = call i32 @unlink(ptr noundef %39)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.then65
  %40 = load ptr, ptr @inname, align 8
  call void @perror(ptr noundef %40) #8
  %41 = load ptr, ptr @__stderrp, align 8
  %42 = load ptr, ptr @progname, align 8
  %43 = load ptr, ptr @inname, align 8
  %call69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.39, ptr noundef %42, ptr noundef %43)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.then65
  br label %err

if.end71:                                         ; preds = %land.lhs.true, %if.then61
  %44 = load ptr, ptr @inname, align 8
  %45 = load ptr, ptr %name.addr, align 8
  %cmp72 = icmp ne ptr %44, %45
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end71
  %46 = load ptr, ptr @inname, align 8
  call void @free(ptr noundef %46)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end71
  store ptr null, ptr @inname, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end59
  store i32 0, ptr %retval, align 4
  br label %return

err:                                              ; preds = %if.end70, %if.then53, %cond.end45, %if.then30, %cond.end22, %if.then
  %47 = load ptr, ptr @out, align 8
  %tobool76 = icmp ne ptr %47, null
  br i1 %tobool76, label %land.lhs.true77, label %if.end92

land.lhs.true77:                                  ; preds = %err
  %48 = load ptr, ptr @out, align 8
  %49 = load ptr, ptr @__stdoutp, align 8
  %cmp78 = icmp ne ptr %48, %49
  br i1 %cmp78, label %if.then79, label %if.end92

if.then79:                                        ; preds = %land.lhs.true77
  %50 = load ptr, ptr @out, align 8
  %call80 = call i32 @fclose(ptr noundef %50)
  store ptr null, ptr @out, align 8
  %51 = load ptr, ptr @outname, align 8
  %call81 = call i32 @unlink(ptr noundef %51)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %land.lhs.true83, label %if.end91

land.lhs.true83:                                  ; preds = %if.then79
  %call84 = call ptr @__error()
  %52 = load i32, ptr %call84, align 4
  %cmp85 = icmp ne i32 %52, 2
  br i1 %cmp85, label %land.lhs.true86, label %if.end91

land.lhs.true86:                                  ; preds = %land.lhs.true83
  %call87 = call ptr @__error()
  %53 = load i32, ptr %call87, align 4
  %cmp88 = icmp ne i32 %53, 4
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %land.lhs.true86
  %54 = load ptr, ptr @outname, align 8
  call void @perror(ptr noundef %54) #8
  %55 = load ptr, ptr @__stderrp, align 8
  %56 = load ptr, ptr @progname, align 8
  %57 = load ptr, ptr @outname, align 8
  %call90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.40, ptr noundef %56, ptr noundef %57)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %land.lhs.true86, %land.lhs.true83, %if.then79
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %land.lhs.true77, %err
  %58 = load ptr, ptr @in, align 8
  %tobool93 = icmp ne ptr %58, null
  br i1 %tobool93, label %land.lhs.true94, label %if.end98

land.lhs.true94:                                  ; preds = %if.end92
  %59 = load ptr, ptr @in, align 8
  %60 = load ptr, ptr @__stdinp, align 8
  %cmp95 = icmp ne ptr %59, %60
  br i1 %cmp95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %land.lhs.true94
  %61 = load ptr, ptr @in, align 8
  %call97 = call i32 @fclose(ptr noundef %61)
  store ptr null, ptr @in, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %land.lhs.true94, %if.end92
  %62 = load ptr, ptr @inname, align 8
  %tobool99 = icmp ne ptr %62, null
  br i1 %tobool99, label %land.lhs.true100, label %if.end103

land.lhs.true100:                                 ; preds = %if.end98
  %63 = load ptr, ptr @inname, align 8
  %64 = load ptr, ptr %name.addr, align 8
  %cmp101 = icmp ne ptr %63, %64
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %land.lhs.true100
  %65 = load ptr, ptr @inname, align 8
  call void @free(ptr noundef %65)
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %land.lhs.true100, %if.end98
  %66 = load ptr, ptr @outname, align 8
  %tobool104 = icmp ne ptr %66, null
  br i1 %tobool104, label %land.lhs.true105, label %if.end108

land.lhs.true105:                                 ; preds = %if.end103
  %67 = load ptr, ptr @outname, align 8
  %68 = load ptr, ptr %name.addr, align 8
  %cmp106 = icmp ne ptr %67, %68
  br i1 %cmp106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %land.lhs.true105
  %69 = load ptr, ptr @outname, align 8
  call void @free(ptr noundef %69)
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %land.lhs.true105, %if.end103
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end108, %if.end75
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @endname(ptr noundef %name) #1 {
entry:
  %name.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @strrchr(ptr noundef %1, i32 noundef 47)
  store ptr %call, ptr %s, align 8
  %2 = load ptr, ptr %s, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load ptr, ptr %s, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %add.ptr, ptr %name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %name.addr, align 8
  ret ptr %6
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #0

declare i64 @strlen(ptr noundef) #0

declare i32 @strcmp(ptr noundef, ptr noundef) #0

declare ptr @strrchr(ptr noundef, i32 noundef) #0

declare i32 @printf(ptr noundef, ...) #0

declare ptr @signal(i32 noundef, ptr noundef) #0

declare i32 @unlink(ptr noundef) #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @open_input(ptr noundef %name, ptr noundef %st) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %st, ptr %st.addr, align 8
  %0 = load ptr, ptr @f_format, align 8
  store ptr %0, ptr %f, align 8
  %1 = load ptr, ptr %st.addr, align 8
  %st_nlink = getelementptr inbounds %struct.stat, ptr %1, i32 0, i32 2
  store i16 0, ptr %st_nlink, align 2
  %2 = load ptr, ptr %name.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr @inname, align 8
  %3 = load ptr, ptr @__stdinp, align 8
  store ptr %3, ptr @in, align 8
  br label %if.end26

if.else:                                          ; preds = %entry
  %4 = load i32, ptr @f_decode, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %name.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_2(ptr noundef %5)
  store ptr %call, ptr @inname, align 8
  br label %if.end12

if.else3:                                         ; preds = %if.else
  %6 = load i32, ptr @f_cat, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else3
  %7 = load ptr, ptr %name.addr, align 8
  %call5 = call ptr @suffix(ptr noundef %7, ptr noundef @.str.41)
  %tobool6 = icmp ne ptr %call5, null
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = load ptr, ptr @progname, align 8
  %10 = load ptr, ptr %name.addr, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.42, ptr noundef %9, ptr noundef %10, ptr noundef @.str.41)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.else3
  %11 = load ptr, ptr %name.addr, align 8
  %call9 = call i64 @strlen(ptr noundef %11)
  %add = add i64 %call9, 1
  %call10 = call ptr @emalloc(i64 noundef %add)
  %12 = load ptr, ptr %name.addr, align 8
  %call11 = call ptr @__strcpy_chk(ptr noundef %call10, ptr noundef %12, i64 noundef -1) #9
  store ptr %call11, ptr @inname, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then2
  %13 = load ptr, ptr @inname, align 8
  %call13 = call ptr @"\01_fopen"(ptr noundef %13, ptr noundef @.str.43)
  store ptr %call13, ptr @in, align 8
  %tobool14 = icmp ne ptr %call13, null
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  %14 = load ptr, ptr @inname, align 8
  call void @perror(ptr noundef %14) #8
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = load ptr, ptr @progname, align 8
  %17 = load ptr, ptr @inname, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.44, ptr noundef %16, ptr noundef %17)
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  %18 = load ptr, ptr @inname, align 8
  %19 = load ptr, ptr @in, align 8
  %20 = load ptr, ptr %st.addr, align 8
  %call18 = call i32 @okay_as_input(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  %21 = load ptr, ptr %f, align 8
  %tobool22 = icmp ne ptr %21, null
  br i1 %tobool22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end21
  %22 = load ptr, ptr @inname, align 8
  %call24 = call ptr @grok_format(ptr noundef %22)
  store ptr %call24, ptr %f, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  %23 = load ptr, ptr %f, align 8
  %tobool27 = icmp ne ptr %23, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end26
  %24 = load ptr, ptr %f, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %24, %cond.true ], [ @f_ulaw, %cond.false ]
  call void @prepare_io(ptr noundef %cond)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then20, %if.then15, %if.then7
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @open_output(ptr noundef %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %outfd = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @f_cat, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr @__stdoutp, align 8
  store ptr %2, ptr @out, align 8
  store ptr null, ptr @outname, align 8
  br label %if.end30

if.else:                                          ; preds = %lor.lhs.false
  store i32 -1, ptr %outfd, align 4
  %3 = load i32, ptr @f_decode, align 4
  %tobool2 = icmp ne i32 %3, 0
  %4 = zext i1 %tobool2 to i64
  %cond = select i1 %tobool2, ptr @plainname, ptr @codename
  %5 = load ptr, ptr %name.addr, align 8
  %call = call ptr %cond(ptr noundef %5)
  store ptr %call, ptr %o, align 8
  %6 = load ptr, ptr %o, align 8
  %call3 = call i32 @length_okay(ptr noundef %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %7 = load ptr, ptr %o, align 8
  %call6 = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %7, i32 noundef 2561, i32 noundef 438)
  store i32 %call6, ptr %outfd, align 4
  %cmp = icmp sge i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  %8 = load i32, ptr %outfd, align 4
  %call8 = call ptr @"\01_fdopen"(i32 noundef %8, ptr noundef @.str.51)
  store ptr %call8, ptr @out, align 8
  br label %if.end21

if.else9:                                         ; preds = %if.end
  %call10 = call ptr @__error()
  %9 = load i32, ptr %call10, align 4
  %cmp11 = icmp ne i32 %9, 17
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else9
  store ptr null, ptr @out, align 8
  br label %if.end20

if.else13:                                        ; preds = %if.else9
  %10 = load ptr, ptr %o, align 8
  %call14 = call i32 @ok_to_replace(ptr noundef %10)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else13
  %11 = load ptr, ptr %o, align 8
  %call17 = call ptr @"\01_fopen"(ptr noundef %11, ptr noundef @.str.51)
  store ptr %call17, ptr @out, align 8
  br label %if.end19

if.else18:                                        ; preds = %if.else13
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then7
  %12 = load ptr, ptr @out, align 8
  %tobool22 = icmp ne ptr %12, null
  br i1 %tobool22, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.end21
  %13 = load ptr, ptr %o, align 8
  call void @perror(ptr noundef %13) #8
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = load ptr, ptr @progname, align 8
  %16 = load ptr, ptr %o, align 8
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.52, ptr noundef %15, ptr noundef %16)
  %17 = load i32, ptr %outfd, align 4
  %cmp25 = icmp sge i32 %17, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then23
  %18 = load i32, ptr %outfd, align 4
  %call27 = call i32 @"\01_close"(i32 noundef %18)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then23
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end21
  %19 = load ptr, ptr %o, align 8
  store ptr %19, ptr @outname, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.end28, %if.else18, %if.then5
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_decode() #1 {
entry:
  %retval = alloca i32, align 4
  %r = alloca ptr, align 8
  %s = alloca [33 x i8], align 1
  %d = alloca [160 x i16], align 2
  %cc = alloca i32, align 4
  %call = call ptr @gsm_create()
  store ptr %call, ptr %r, align 8
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @progname, align 8
  call void @perror(ptr noundef %0) #8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %r, align 8
  %call1 = call i32 @gsm_option(ptr noundef %1, i32 noundef 2, ptr noundef @f_fast)
  %2 = load ptr, ptr %r, align 8
  %call2 = call i32 @gsm_option(ptr noundef %2, i32 noundef 1, ptr noundef @f_verbose)
  br label %while.cond

while.cond:                                       ; preds = %if.end41, %if.end
  %arraydecay = getelementptr inbounds [33 x i8], ptr %s, i64 0, i64 0
  %3 = load ptr, ptr @in, align 8
  %call3 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 33, ptr noundef %3)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %cc, align 4
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %cc, align 4
  %conv5 = sext i32 %4 to i64
  %cmp6 = icmp ne i64 %conv5, 33
  br i1 %cmp6, label %if.then8, label %if.end21

if.then8:                                         ; preds = %while.body
  %5 = load i32, ptr %cc, align 4
  %cmp9 = icmp sge i32 %5, 0
  br i1 %cmp9, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.then8
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr @progname, align 8
  %8 = load i32, ptr %cc, align 4
  %conv12 = sext i32 %8 to i64
  %sub = sub i64 33, %conv12
  %9 = load i32, ptr %cc, align 4
  %conv13 = sext i32 %9 to i64
  %sub14 = sub i64 33, %conv13
  %cmp15 = icmp eq i64 %sub14, 1
  %conv16 = zext i1 %cmp15 to i32
  %idx.ext = sext i32 %conv16 to i64
  %add.ptr = getelementptr inbounds i8, ptr @.str.50, i64 %idx.ext
  %10 = load ptr, ptr @inname, align 8
  %tobool17 = icmp ne ptr %10, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then11
  %11 = load ptr, ptr @inname, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %11, %cond.true ], [ @.str.37, %cond.false ]
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.56, ptr noundef %7, i64 noundef %sub, ptr noundef %add.ptr, ptr noundef %cond)
  br label %if.end19

if.end19:                                         ; preds = %cond.end, %if.then8
  %12 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %12)
  %call20 = call ptr @__error()
  store i32 0, ptr %call20, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %while.body
  %13 = load ptr, ptr %r, align 8
  %arraydecay22 = getelementptr inbounds [33 x i8], ptr %s, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [160 x i16], ptr %d, i64 0, i64 0
  %call24 = call i32 @gsm_decode(ptr noundef %13, ptr noundef %arraydecay22, ptr noundef %arraydecay23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end34

if.then26:                                        ; preds = %if.end21
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = load ptr, ptr @progname, align 8
  %16 = load ptr, ptr @inname, align 8
  %tobool27 = icmp ne ptr %16, null
  br i1 %tobool27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %if.then26
  %17 = load ptr, ptr @inname, align 8
  br label %cond.end30

cond.false29:                                     ; preds = %if.then26
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %cond.true28
  %cond31 = phi ptr [ %17, %cond.true28 ], [ @.str.37, %cond.false29 ]
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.57, ptr noundef %15, ptr noundef %cond31)
  %18 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %18)
  %call33 = call ptr @__error()
  store i32 0, ptr %call33, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end21
  %19 = load ptr, ptr @output, align 8
  %arraydecay35 = getelementptr inbounds [160 x i16], ptr %d, i64 0, i64 0
  %call36 = call i32 %19(ptr noundef %arraydecay35)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end34
  %20 = load ptr, ptr @outname, align 8
  call void @perror(ptr noundef %20) #8
  %21 = load ptr, ptr @__stderrp, align 8
  %22 = load ptr, ptr @progname, align 8
  %23 = load ptr, ptr @outname, align 8
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.58, ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %24)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end34
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %25 = load i32, ptr %cc, align 4
  %cmp42 = icmp slt i32 %25, 0
  br i1 %cmp42, label %if.then44, label %if.end56

if.then44:                                        ; preds = %while.end
  %26 = load ptr, ptr @inname, align 8
  %tobool45 = icmp ne ptr %26, null
  br i1 %tobool45, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %if.then44
  %27 = load ptr, ptr @inname, align 8
  br label %cond.end48

cond.false47:                                     ; preds = %if.then44
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi ptr [ %27, %cond.true46 ], [ @.str.37, %cond.false47 ]
  call void @perror(ptr noundef %cond49) #8
  %28 = load ptr, ptr @__stderrp, align 8
  %29 = load ptr, ptr @progname, align 8
  %30 = load ptr, ptr @inname, align 8
  %tobool50 = icmp ne ptr %30, null
  br i1 %tobool50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %cond.end48
  %31 = load ptr, ptr @inname, align 8
  br label %cond.end53

cond.false52:                                     ; preds = %cond.end48
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi ptr [ %31, %cond.true51 ], [ @.str.37, %cond.false52 ]
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.59, ptr noundef %29, ptr noundef %cond54)
  %32 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %32)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %while.end
  %33 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %33)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %cond.end53, %if.then39, %cond.end30, %if.end19, %if.then
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_encode() #1 {
entry:
  %retval = alloca i32, align 4
  %r = alloca ptr, align 8
  %s = alloca [160 x i16], align 2
  %d = alloca [33 x i8], align 1
  %cc = alloca i32, align 4
  %call = call ptr @gsm_create()
  store ptr %call, ptr %r, align 8
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @progname, align 8
  call void @perror(ptr noundef %0) #8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %r, align 8
  %call1 = call i32 @gsm_option(ptr noundef %1, i32 noundef 2, ptr noundef @f_fast)
  %2 = load ptr, ptr %r, align 8
  %call2 = call i32 @gsm_option(ptr noundef %2, i32 noundef 1, ptr noundef @f_verbose)
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end
  %3 = load ptr, ptr @input, align 8
  %arraydecay = getelementptr inbounds [160 x i16], ptr %s, i64 0, i64 0
  %call3 = call i32 %3(ptr noundef %arraydecay)
  store i32 %call3, ptr %cc, align 4
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %cc, align 4
  %conv = sext i32 %4 to i64
  %cmp4 = icmp ult i64 %conv, 160
  br i1 %cmp4, label %if.then6, label %if.end13

if.then6:                                         ; preds = %while.body
  %arraydecay7 = getelementptr inbounds [160 x i16], ptr %s, i64 0, i64 0
  %5 = load i32, ptr %cc, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i16, ptr %arraydecay7, i64 %idx.ext
  %6 = load i32, ptr %cc, align 4
  %conv8 = sext i32 %6 to i64
  %mul = mul i64 %conv8, 2
  %sub = sub i64 320, %mul
  %arraydecay9 = getelementptr inbounds [160 x i16], ptr %s, i64 0, i64 0
  %7 = load i32, ptr %cc, align 4
  %idx.ext10 = sext i32 %7 to i64
  %add.ptr11 = getelementptr inbounds i16, ptr %arraydecay9, i64 %idx.ext10
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr11, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memset_chk(ptr noundef %add.ptr, i32 noundef 0, i64 noundef %sub, i64 noundef %8) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %while.body
  %9 = load ptr, ptr %r, align 8
  %arraydecay14 = getelementptr inbounds [160 x i16], ptr %s, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [33 x i8], ptr %d, i64 0, i64 0
  call void @gsm_encode(ptr noundef %9, ptr noundef %arraydecay14, ptr noundef %arraydecay15)
  %arraydecay16 = getelementptr inbounds [33 x i8], ptr %d, i64 0, i64 0
  %10 = load ptr, ptr @out, align 8
  %call17 = call i64 @"\01_fwrite"(ptr noundef %arraydecay16, i64 noundef 33, i64 noundef 1, ptr noundef %10)
  %cmp18 = icmp ne i64 %call17, 1
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.end13
  %11 = load ptr, ptr @outname, align 8
  %tobool21 = icmp ne ptr %11, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then20
  %12 = load ptr, ptr @outname, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ @.str.36, %cond.false ]
  call void @perror(ptr noundef %cond) #8
  %13 = load ptr, ptr @__stderrp, align 8
  %14 = load ptr, ptr @progname, align 8
  %15 = load ptr, ptr @outname, align 8
  %tobool22 = icmp ne ptr %15, null
  br i1 %tobool22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end
  %16 = load ptr, ptr @outname, align 8
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.true23
  %cond26 = phi ptr [ %16, %cond.true23 ], [ @.str.36, %cond.false24 ]
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.58, ptr noundef %14, ptr noundef %cond26)
  %17 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %17)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end13
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %18 = load i32, ptr %cc, align 4
  %cmp29 = icmp slt i32 %18, 0
  br i1 %cmp29, label %if.then31, label %if.end43

if.then31:                                        ; preds = %while.end
  %19 = load ptr, ptr @inname, align 8
  %tobool32 = icmp ne ptr %19, null
  br i1 %tobool32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %if.then31
  %20 = load ptr, ptr @inname, align 8
  br label %cond.end35

cond.false34:                                     ; preds = %if.then31
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.true33
  %cond36 = phi ptr [ %20, %cond.true33 ], [ @.str.37, %cond.false34 ]
  call void @perror(ptr noundef %cond36) #8
  %21 = load ptr, ptr @__stderrp, align 8
  %22 = load ptr, ptr @progname, align 8
  %23 = load ptr, ptr @inname, align 8
  %tobool37 = icmp ne ptr %23, null
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end35
  %24 = load ptr, ptr @inname, align 8
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end35
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi ptr [ %24, %cond.true38 ], [ @.str.37, %cond.false39 ]
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.59, ptr noundef %22, ptr noundef %cond41)
  %25 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %25)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %while.end
  %26 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %26)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %cond.end40, %cond.end25, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare i32 @fflush(ptr noundef) #0

declare i32 @ferror(ptr noundef) #0

; Function Attrs: cold
declare void @perror(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @update_times() #1 {
entry:
  %ut = alloca [2 x i64], align 8
  %0 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @instat, i32 0, i32 2), align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end4

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @outname, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i32 0, i32 7), align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ut, i64 0, i64 0
  store i64 %2, ptr %arrayidx, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i32 0, i32 8), align 8
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %ut, i64 0, i64 1
  store i64 %3, ptr %arrayidx3, align 8
  %4 = load ptr, ptr @outname, align 8
  %arraydecay = getelementptr inbounds [2 x i64], ptr %ut, i64 0, i64 0
  %call = call i32 @utime(ptr noundef %4, ptr noundef %arraydecay)
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then2, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @update_mode() #1 {
entry:
  %0 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @instat, i32 0, i32 2), align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end6

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @out, align 8
  %call = call i32 @fileno(ptr noundef %1)
  %2 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @instat, i32 0, i32 1), align 4
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 4095
  %conv1 = trunc i32 %and to i16
  %call2 = call i32 @"\01_fchmod"(i32 noundef %call, i16 noundef zeroext %conv1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr @outname, align 8
  call void @perror(ptr noundef %3) #8
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr @progname, align 8
  %6 = load ptr, ptr @outname, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.60, ptr noundef %5, ptr noundef %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then4, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @update_own() #1 {
entry:
  %0 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @instat, i32 0, i32 2), align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @out, align 8
  %call = call i32 @fileno(ptr noundef %1)
  %2 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i32 0, i32 4), align 8
  %3 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i32 0, i32 5), align 4
  %call1 = call i32 @fchown(i32 noundef %call, i32 noundef %2, i32 noundef %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @fclose(ptr noundef) #0

declare void @free(ptr noundef) #0

declare ptr @__error() #0

; Function Attrs: nounwind ssp uwtable
define internal ptr @codename(ptr noundef %name) #1 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @normalname(ptr noundef %0, ptr noundef @.str.41, ptr noundef @.str.45)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @suffix(ptr noundef %name, ptr noundef %suf) #1 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %suf.addr = alloca ptr, align 8
  %nlen = alloca i64, align 8
  %slen = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %suf, ptr %suf.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  store i64 %call, ptr %nlen, align 8
  %1 = load ptr, ptr %suf.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1)
  store i64 %call1, ptr %slen, align 8
  %2 = load i64, ptr %slen, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, ptr %nlen, align 8
  %4 = load i64, ptr %slen, align 8
  %cmp = icmp ule i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, ptr %nlen, align 8
  %6 = load i64, ptr %slen, align 8
  %sub = sub i64 %5, %6
  %7 = load ptr, ptr %name.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %sub
  store ptr %add.ptr, ptr %name.addr, align 8
  %8 = load ptr, ptr %name.addr, align 8
  %9 = load ptr, ptr %suf.addr, align 8
  %10 = load i64, ptr %slen, align 8
  %call2 = call i32 @memcmp(ptr noundef %8, ptr noundef %9, i64 noundef %10)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load ptr, ptr %name.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %11, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal ptr @emalloc(i64 noundef %len) #1 {
entry:
  %len.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  store i64 %len, ptr %len.addr, align 8
  %0 = load i64, ptr %len.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #10
  store ptr %call, ptr %s, align 8
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr @progname, align 8
  %3 = load i64, ptr %len.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.46, ptr noundef %2, i64 noundef %3)
  call void @onintr()
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s, align 8
  ret ptr %4
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @okay_as_input(ptr noundef %name, ptr noundef %f, ptr noundef %st) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %st, ptr %st.addr, align 8
  %0 = load ptr, ptr %f.addr, align 8
  %call = call i32 @fileno(ptr noundef %0)
  %1 = load ptr, ptr %st.addr, align 8
  %call1 = call i32 @"\01_fstat"(i32 noundef %call, ptr noundef %1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8
  call void @perror(ptr noundef %2) #8
  %3 = load ptr, ptr @__stderrp, align 8
  %4 = load ptr, ptr @progname, align 8
  %5 = load ptr, ptr %name.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.47, ptr noundef %4, ptr noundef %5)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %st.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 1
  %7 = load i16, ptr %st_mode, align 4
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 61440
  %cmp3 = icmp eq i32 %and, 32768
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = load ptr, ptr @progname, align 8
  %10 = load ptr, ptr %name.addr, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.48, ptr noundef %9, ptr noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %st.addr, align 8
  %st_nlink = getelementptr inbounds %struct.stat, ptr %11, i32 0, i32 2
  %12 = load i16, ptr %st_nlink, align 2
  %conv8 = zext i16 %12 to i32
  %cmp9 = icmp sgt i32 %conv8, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end7
  %13 = load i32, ptr @f_cat, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end21, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true
  %14 = load i32, ptr @f_precious, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.end21, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = load ptr, ptr @progname, align 8
  %17 = load ptr, ptr %name.addr, align 8
  %18 = load ptr, ptr %st.addr, align 8
  %st_nlink14 = getelementptr inbounds %struct.stat, ptr %18, i32 0, i32 2
  %19 = load i16, ptr %st_nlink14, align 2
  %conv15 = zext i16 %19 to i32
  %sub = sub nsw i32 %conv15, 1
  %20 = load ptr, ptr %st.addr, align 8
  %st_nlink16 = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 2
  %21 = load i16, ptr %st_nlink16, align 2
  %conv17 = zext i16 %21 to i32
  %cmp18 = icmp sle i32 %conv17, 2
  %conv19 = zext i1 %cmp18 to i32
  %idx.ext = sext i32 %conv19 to i64
  %add.ptr = getelementptr inbounds i8, ptr @.str.50, i64 %idx.ext
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.49, ptr noundef %16, ptr noundef %17, i32 noundef %sub, ptr noundef %add.ptr)
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %land.lhs.true11, %land.lhs.true, %if.end7
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then13, %if.then5, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @grok_format(ptr noundef %name) #1 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_3(ptr noundef %1)
  store ptr %call, ptr %c, align 8
  store ptr @alldescs, ptr %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load ptr, ptr %f, align 8
  %3 = load ptr, ptr %2, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %f, align 8
  %5 = load ptr, ptr %4, align 8
  %suffix = getelementptr inbounds %struct.fmtdesc, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %suffix, align 8
  %tobool2 = icmp ne ptr %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %f, align 8
  %8 = load ptr, ptr %7, align 8
  %suffix3 = getelementptr inbounds %struct.fmtdesc, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %suffix3, align 8
  %10 = load i8, ptr %9, align 1
  %conv = sext i8 %10 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %c, align 8
  %12 = load ptr, ptr %f, align 8
  %13 = load ptr, ptr %12, align 8
  %suffix6 = getelementptr inbounds %struct.fmtdesc, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %suffix6, align 8
  %call7 = call ptr @suffix(ptr noundef %11, ptr noundef %14)
  %tobool8 = icmp ne ptr %call7, null
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true5
  %15 = load ptr, ptr %c, align 8
  call void @free(ptr noundef %15)
  %16 = load ptr, ptr %f, align 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load ptr, ptr %f, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %f, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %c, align 8
  call void @free(ptr noundef %19)
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then9
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_io(ptr noundef %desc) #1 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  %0 = load ptr, ptr %desc.addr, align 8
  %output = getelementptr inbounds %struct.fmtdesc, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %output, align 8
  store ptr %1, ptr @output, align 8
  %2 = load ptr, ptr %desc.addr, align 8
  %input = getelementptr inbounds %struct.fmtdesc, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %input, align 8
  store ptr %3, ptr @input, align 8
  %4 = load ptr, ptr %desc.addr, align 8
  %init_input = getelementptr inbounds %struct.fmtdesc, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %init_input, align 8
  store ptr %5, ptr @init_input, align 8
  %6 = load ptr, ptr %desc.addr, align 8
  %init_output = getelementptr inbounds %struct.fmtdesc, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %init_output, align 8
  store ptr %7, ptr @init_output, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @normalname(ptr noundef %name, ptr noundef %want, ptr noundef %cut) #1 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %want.addr = alloca ptr, align 8
  %cut.addr = alloca ptr, align 8
  %maxlen = alloca i64, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %want, ptr %want.addr, align 8
  store ptr %cut, ptr %cut.addr, align 8
  store ptr null, ptr %p, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p, align 8
  store ptr %1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef %2)
  %add = add i64 %call, 1
  %3 = load ptr, ptr %want.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %3)
  %add2 = add i64 %add, %call1
  %4 = load ptr, ptr %cut.addr, align 8
  %call3 = call i64 @strlen(ptr noundef %4)
  %add4 = add i64 %add2, %call3
  store i64 %add4, ptr %maxlen, align 8
  %5 = load i64, ptr %maxlen, align 8
  %call5 = call ptr @emalloc(i64 noundef %5)
  %6 = load ptr, ptr %name.addr, align 8
  %call6 = call ptr @__strcpy_chk(ptr noundef %call5, ptr noundef %6, i64 noundef -1) #9
  store ptr %call6, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr %cut.addr, align 8
  %call7 = call ptr @suffix(ptr noundef %7, ptr noundef %8)
  store ptr %call7, ptr %s, align 8
  %tobool8 = icmp ne ptr %call7, null
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %9 = load ptr, ptr %s, align 8
  %10 = load ptr, ptr %want.addr, align 8
  %11 = load ptr, ptr %s, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %11, i1 false, i1 true, i1 false)
  %call10 = call ptr @__strcpy_chk(ptr noundef %9, ptr noundef %10, i64 noundef %12) #9
  br label %if.end17

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %want.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv = sext i8 %14 to i32
  %tobool11 = icmp ne i32 %conv, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.else
  %15 = load ptr, ptr %p, align 8
  %16 = load ptr, ptr %want.addr, align 8
  %call12 = call ptr @suffix(ptr noundef %15, ptr noundef %16)
  %tobool13 = icmp ne ptr %call12, null
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %p, align 8
  %18 = load ptr, ptr %want.addr, align 8
  %19 = load ptr, ptr %p, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call15 = call ptr @__strcat_chk(ptr noundef %17, ptr noundef %18, i64 noundef %20) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then9
  %21 = load ptr, ptr %p, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #6

declare i32 @"\01_fstat"(i32 noundef, ptr noundef) #0

declare i32 @fileno(ptr noundef) #0

; Function Attrs: nounwind ssp uwtable
define internal ptr @plainname(ptr noundef %name) #1 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @normalname(ptr noundef %0, ptr noundef @.str.45, ptr noundef @.str.41)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @length_okay(ptr noundef %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %max_filename_length = alloca i64, align 8
  %end = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i64 0, ptr %max_filename_length, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %call = call ptr @endname(ptr noundef %1)
  store ptr %call, ptr %end, align 8
  %2 = load i64, ptr %max_filename_length, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %end, align 8
  %call1 = call i64 @strlen(ptr noundef %3)
  %4 = load i64, ptr %max_filename_length, align 8
  %cmp2 = icmp ugt i64 %call1, %4
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr @progname, align 8
  %7 = load ptr, ptr %name.addr, align 8
  %call4 = call ptr @endname(ptr noundef %7)
  %8 = load i64, ptr %max_filename_length, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.53, ptr noundef %6, ptr noundef %call4, i64 noundef %8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @"\01_open"(ptr noundef, i32 noundef, ...) #0

declare ptr @"\01_fdopen"(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @ok_to_replace(ptr noundef %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %reply = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  %0 = load i32, ptr @f_force, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 @fileno(ptr noundef %1)
  %call1 = call i32 @isatty(i32 noundef %call)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %4 = load ptr, ptr %name.addr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.54, ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 @fflush(ptr noundef %5)
  %call7 = call i32 @getchar()
  store i32 %call7, ptr %reply, align 4
  store i32 %call7, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, ptr %c, align 4
  %cmp = icmp ne i32 %6, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, ptr %c, align 4
  %cmp8 = icmp ne i32 %7, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call9 = call i32 @getchar()
  store i32 %call9, ptr %c, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %land.end
  %9 = load i32, ptr %reply, align 4
  %cmp10 = icmp eq i32 %9, 121
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %for.end
  %10 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.55)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then3, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

declare i32 @"\01_close"(i32 noundef) #0

declare i32 @isatty(i32 noundef) #0

declare i32 @getchar() #0

declare ptr @gsm_create() #0

declare i32 @gsm_option(ptr noundef, i32 noundef, ptr noundef) #0

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #0

declare void @gsm_destroy(ptr noundef) #0

declare i32 @gsm_decode(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

declare void @gsm_encode(ptr noundef, ptr noundef, ptr noundef) #0

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #0

declare i32 @utime(ptr noundef, ptr noundef) #0

declare i32 @"\01_fchmod"(i32 noundef, i16 noundef zeroext) #0

declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) #0

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { noreturn }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_0()  alwaysinline#1 {
entry:
  %0 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.18, ptr noundef %0, ptr noundef @.str.19)
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_1()  alwaysinline#1 {
entry:
  %0 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.20, ptr noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.22)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.24)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.25)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.28)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.29)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.30)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.31)
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  ret void
}

define internal ptr @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_2(ptr noundef %name)  alwaysinline#1 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @normalname(ptr noundef %0, ptr noundef @.str.41, ptr noundef @.str.45)
  ret ptr %call
}

define internal ptr @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_3(ptr noundef %name)  alwaysinline#1 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @normalname(ptr noundef %0, ptr noundef @.str.45, ptr noundef @.str.41)
  ret ptr %call
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
