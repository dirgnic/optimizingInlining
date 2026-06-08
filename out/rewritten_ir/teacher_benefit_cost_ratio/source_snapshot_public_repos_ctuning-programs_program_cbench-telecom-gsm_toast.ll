; ModuleID = './out/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_public_repos_ctuning-programs_program_cbench-telecom-gsm_toast.prepared.ll'
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
@str = private unnamed_addr constant [53 x i8] c" -f  force     Replace existing files without asking\00", align 1
@str.1 = private unnamed_addr constant [59 x i8] c" -c  cat       Write to stdout, do not remove source files\00", align 1
@str.2 = private unnamed_addr constant [47 x i8] c" -d  decode    Decode data (default is encode)\00", align 1
@str.3 = private unnamed_addr constant [40 x i8] c" -p  precious  Do not delete the source\00", align 1
@str.4 = private unnamed_addr constant [56 x i8] c" -u  u-law     Force 8 kHz/8 bit u-law in/output format\00", align 1
@str.5 = private unnamed_addr constant [52 x i8] c" -s  sun .au   Force Sun .au u-law in/output format\00", align 1
@str.6 = private unnamed_addr constant [56 x i8] c" -a  A-law     Force 8 kHz/8 bit A-law in/output format\00", align 1
@str.7 = private unnamed_addr constant [52 x i8] c" -l  linear    Force 16 bit linear in/output format\00", align 1
@str.8 = private unnamed_addr constant [52 x i8] c" -F  fast      Sacrifice conformance to performance\00", align 1
@str.9 = private unnamed_addr constant [40 x i8] c" -v  version   Show version information\00", align 1
@str.10 = private unnamed_addr constant [31 x i8] c" -h  help      Print this text\00", align 1

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
  %0 = load ptr, ptr %av, align 8
  call void @parse_argv0(ptr noundef %0)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, ptr %ac.addr, align 4
  %2 = load ptr, ptr %av.addr, align 8
  %call = call i32 @"\01_getopt"(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.12) #10
  store i32 %call, ptr %opt, align 4
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %opt, align 4
  switch i32 %3, label %sw.default [
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
  call void @set_format(ptr noundef nonnull @f_ulaw)
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  call void @set_format(ptr noundef nonnull @f_linear)
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  call void @set_format(ptr noundef nonnull @f_alaw)
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  call void @set_format(ptr noundef nonnull @f_audio)
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %4 = load ptr, ptr @progname, align 8
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, ptr noundef %4, ptr noundef nonnull @.str.19) #10
  call void @exit(i32 noundef 0) #11
  unreachable

sw.bb11:                                          ; preds = %while.body
  %5 = load ptr, ptr @progname, align 8
  %call.i1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.20, ptr noundef %5) #10
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull @str)
  %puts7 = call i32 @puts(ptr nonnull @str.1)
  %puts8 = call i32 @puts(ptr nonnull @str.2)
  %puts9 = call i32 @puts(ptr nonnull @str.3)
  %putchar10 = call i32 @putchar(i32 10)
  %puts11 = call i32 @puts(ptr nonnull @str.4)
  %puts12 = call i32 @puts(ptr nonnull @str.5)
  %puts13 = call i32 @puts(ptr nonnull @str.6)
  %puts14 = call i32 @puts(ptr nonnull @str.7)
  %putchar15 = call i32 @putchar(i32 10)
  %puts16 = call i32 @puts(ptr nonnull @str.8)
  %puts17 = call i32 @puts(ptr nonnull @str.9)
  %puts18 = call i32 @puts(ptr nonnull @str.10)
  %putchar19 = call i32 @putchar(i32 10)
  call void @exit(i32 noundef 0) #11
  unreachable

sw.default:                                       ; preds = %while.body
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr @progname, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef %7) #10
  call void @exit(i32 noundef 1) #11
  unreachable

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr @f_cat, align 4
  %9 = load i32, ptr @f_precious, align 4
  %or = or i32 %9, %8
  store i32 %or, ptr @f_precious, align 4
  %10 = load i32, ptr @optind, align 4
  %11 = load ptr, ptr %av.addr, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %av.addr, align 8
  %12 = load i32, ptr %ac.addr, align 4
  %sub = sub nsw i32 %12, %10
  store i32 %sub, ptr %ac.addr, align 4
  %call.i2 = call ptr @signal(i32 noundef 1, ptr noundef nonnull @onintr) #10
  %call1.i3 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @onintr) #10
  %call2.i4 = call ptr @signal(i32 noundef 13, ptr noundef nonnull @onintr) #10
  %call3.i5 = call ptr @signal(i32 noundef 15, ptr noundef nonnull @onintr) #10
  %call4.i6 = call ptr @signal(i32 noundef 25, ptr noundef nonnull @onintr) #10
  %cmp13 = icmp slt i32 %sub, 1
  br i1 %cmp13, label %if.then, label %while.cond15

if.then:                                          ; preds = %while.end
  %call14 = call i32 @process(ptr noundef null)
  br label %if.end

while.cond15:                                     ; preds = %while.end, %while.body16
  %13 = load i32, ptr %ac.addr, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %ac.addr, align 4
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %while.body16

while.body16:                                     ; preds = %while.cond15
  %14 = load ptr, ptr %av.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %av.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %call17 = call i32 @process(ptr noundef %15)
  br label %while.cond15, !llvm.loop !8

if.end:                                           ; preds = %while.cond15, %if.then
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal void @parse_argv0(ptr noundef %av0) #1 {
entry:
  %av0.addr = alloca ptr, align 8
  %l = alloca i32, align 4
  store ptr %av0, ptr %av0.addr, align 8
  %tobool.not = icmp eq ptr %av0, null
  %0 = load ptr, ptr %av0.addr, align 8
  %cond = select i1 %tobool.not, ptr @.str.14, ptr %0
  %call = call ptr @endname(ptr noundef %cond)
  store ptr %call, ptr %av0.addr, align 8
  store ptr %call, ptr @progname, align 8
  %call1 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %call, ptr noundef nonnull dereferenceable(3) @.str.15, i64 noundef 2) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr @f_decode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %av0.addr, align 8
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %l, align 4
  %cmp = icmp sgt i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %av0.addr, align 8
  %3 = load i32, ptr %l, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 -3
  %call6 = call i32 @strcmp(ptr noundef nonnull %add.ptr5, ptr noundef nonnull dereferenceable(4) @.str.16) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

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
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @f_format, align 8
  %2 = load ptr, ptr %f.addr, align 8
  %cmp.not = icmp eq ptr %1, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr @__stderrp, align 8
  %4 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef %4, ptr noundef %4) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %f.addr, align 8
  store ptr %5, ptr @f_format, align 8
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind ssp uwtable
define internal void @onintr() #1 {
entry:
  %tmp = alloca ptr, align 8
  %0 = load ptr, ptr @outname, align 8
  store ptr %0, ptr %tmp, align 8
  store ptr null, ptr @outname, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tmp, align 8
  %call = call i32 @unlink(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 noundef 1) #11
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process(ptr noundef %name) #1 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr null, ptr @out, align 8
  store ptr null, ptr @in, align 8
  store ptr null, ptr @outname, align 8
  store ptr null, ptr @inname, align 8
  %call = call i32 @open_input(ptr noundef %name, ptr noundef nonnull @instat)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8
  %call1 = call i32 @open_output(ptr noundef %0)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i32, ptr @f_decode, align 4
  %tobool3.not = icmp eq i32 %1, 0
  %init_input.init_output = select i1 %tobool3.not, ptr @init_input, ptr @init_output
  %cond = load ptr, ptr %init_input.init_output, align 8
  %call4 = call i32 %cond() #10
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end25, label %if.then6

if.then6:                                         ; preds = %if.end
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = load ptr, ptr @progname, align 8
  %4 = load i32, ptr @f_decode, align 4
  %tobool7.not = icmp eq i32 %4, 0
  %cond8 = select i1 %tobool7.not, ptr @.str.35, ptr @.str.34
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %cond.false16, label %cond.true10

cond.true10:                                      ; preds = %if.then6
  %5 = load ptr, ptr @outname, align 8
  %tobool11.not = icmp eq ptr %5, null
  %6 = load ptr, ptr @outname, align 8
  %cond15 = select i1 %tobool11.not, ptr @.str.36, ptr %6
  br label %cond.end22

cond.false16:                                     ; preds = %if.then6
  %7 = load ptr, ptr @inname, align 8
  %tobool17.not = icmp eq ptr %7, null
  %8 = load ptr, ptr @inname, align 8
  %cond21 = select i1 %tobool17.not, ptr @.str.37, ptr %8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false16, %cond.true10
  %cond23 = phi ptr [ %cond15, %cond.true10 ], [ %cond21, %cond.false16 ]
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef %3, ptr noundef nonnull %cond8, ptr noundef %cond23) #10
  br label %err

if.end25:                                         ; preds = %if.end
  %9 = load i32, ptr @f_decode, align 4
  %tobool26.not = icmp eq i32 %9, 0
  %cond27 = select i1 %tobool26.not, ptr @process_encode, ptr @process_decode
  %call28 = call i32 %cond27() #10
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %err

if.end31:                                         ; preds = %if.end25
  %10 = load ptr, ptr @out, align 8
  %call32 = call i32 @fflush(ptr noundef %10) #10
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end31
  %11 = load ptr, ptr @out, align 8
  %call34 = call i32 @ferror(ptr noundef %11) #10
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end48, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false33, %if.end31
  %12 = load ptr, ptr @outname, align 8
  %tobool37.not = icmp eq ptr %12, null
  %13 = load ptr, ptr @outname, align 8
  %cond41 = select i1 %tobool37.not, ptr @.str.36, ptr %13
  call void @perror(ptr noundef %cond41) #12
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = load ptr, ptr @progname, align 8
  %16 = load ptr, ptr @outname, align 8
  %tobool42.not = icmp eq ptr %16, null
  %17 = load ptr, ptr @outname, align 8
  %cond46 = select i1 %tobool42.not, ptr @.str.36, ptr %17
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.38, ptr noundef %15, ptr noundef %cond46) #10
  br label %err

if.end48:                                         ; preds = %lor.lhs.false33
  %18 = load ptr, ptr @out, align 8
  %19 = load ptr, ptr @__stdoutp, align 8
  %cmp49.not = icmp eq ptr %18, %19
  br i1 %cmp49.not, label %if.end59, label %if.then50

if.then50:                                        ; preds = %if.end48
  call void @update_times()
  call void @update_mode()
  %20 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 2
  %tobool.i.not = icmp eq i16 %20, 0
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_3.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then50
  %21 = load ptr, ptr @out, align 8
  %call.i = call i32 @fileno(ptr noundef %21) #10
  %22 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 4), align 8
  %23 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 5), align 4
  %call1.i = call i32 @fchown(i32 noundef %call.i, i32 noundef %22, i32 noundef %23) #10
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_3.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_3.exit: ; preds = %if.then50, %if.end.i
  %24 = load ptr, ptr @out, align 8
  %call51 = call i32 @fclose(ptr noundef %24) #10
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_3.exit
  %25 = load ptr, ptr @outname, align 8
  call void @perror(ptr noundef %25) #12
  %26 = load ptr, ptr @__stderrp, align 8
  %27 = load ptr, ptr @progname, align 8
  %28 = load ptr, ptr @outname, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.38, ptr noundef %27, ptr noundef %28) #10
  br label %err

if.end55:                                         ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_3.exit
  %29 = load ptr, ptr @outname, align 8
  %30 = load ptr, ptr %name.addr, align 8
  %cmp56.not = icmp eq ptr %29, %30
  br i1 %cmp56.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end55
  %31 = load ptr, ptr @outname, align 8
  call void @free(ptr noundef %31) #10
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55
  store ptr null, ptr @outname, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end48
  store ptr null, ptr @out, align 8
  %32 = load ptr, ptr @in, align 8
  %33 = load ptr, ptr @__stdinp, align 8
  %cmp60.not = icmp eq ptr %32, %33
  br i1 %cmp60.not, label %return, label %if.then61

if.then61:                                        ; preds = %if.end59
  %34 = load ptr, ptr @in, align 8
  %call62 = call i32 @fclose(ptr noundef %34) #10
  store ptr null, ptr @in, align 8
  %35 = load i32, ptr @f_cat, align 4
  %tobool63.not = icmp eq i32 %35, 0
  %36 = load i32, ptr @f_precious, align 4
  %tobool64.not = icmp eq i32 %36, 0
  %or.cond = select i1 %tobool63.not, i1 %tobool64.not, i1 false
  br i1 %or.cond, label %if.then65, label %if.end71

if.then65:                                        ; preds = %if.then61
  %37 = load ptr, ptr @inname, align 8
  %call66 = call i32 @unlink(ptr noundef %37) #10
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %err

if.then68:                                        ; preds = %if.then65
  %38 = load ptr, ptr @inname, align 8
  call void @perror(ptr noundef %38) #12
  %39 = load ptr, ptr @__stderrp, align 8
  %40 = load ptr, ptr @progname, align 8
  %41 = load ptr, ptr @inname, align 8
  %call69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.39, ptr noundef %40, ptr noundef %41) #10
  br label %err

if.end71:                                         ; preds = %if.then61
  %42 = load ptr, ptr @inname, align 8
  %43 = load ptr, ptr %name.addr, align 8
  %cmp72.not = icmp eq ptr %42, %43
  br i1 %cmp72.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end71
  %44 = load ptr, ptr @inname, align 8
  call void @free(ptr noundef %44) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end71
  store ptr null, ptr @inname, align 8
  br label %return

err:                                              ; preds = %if.then65, %if.then68, %if.end25, %entry, %lor.lhs.false, %if.then53, %if.then36, %cond.end22
  %45 = load ptr, ptr @out, align 8
  %tobool76.not = icmp eq ptr %45, null
  br i1 %tobool76.not, label %if.end92, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %err
  %46 = load ptr, ptr @out, align 8
  %47 = load ptr, ptr @__stdoutp, align 8
  %cmp78.not = icmp eq ptr %46, %47
  br i1 %cmp78.not, label %if.end92, label %if.then79

if.then79:                                        ; preds = %land.lhs.true77
  %48 = load ptr, ptr @out, align 8
  %call80 = call i32 @fclose(ptr noundef %48) #10
  store ptr null, ptr @out, align 8
  %49 = load ptr, ptr @outname, align 8
  %call81 = call i32 @unlink(ptr noundef %49) #10
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %land.lhs.true83, label %if.end92

land.lhs.true83:                                  ; preds = %if.then79
  %call84 = call ptr @__error() #10
  %50 = load i32, ptr %call84, align 4
  %cmp85.not = icmp eq i32 %50, 2
  br i1 %cmp85.not, label %if.end92, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %land.lhs.true83
  %call87 = call ptr @__error() #10
  %51 = load i32, ptr %call87, align 4
  %cmp88.not = icmp eq i32 %51, 4
  br i1 %cmp88.not, label %if.end92, label %if.then89

if.then89:                                        ; preds = %land.lhs.true86
  %52 = load ptr, ptr @outname, align 8
  call void @perror(ptr noundef %52) #12
  %53 = load ptr, ptr @__stderrp, align 8
  %54 = load ptr, ptr @progname, align 8
  %55 = load ptr, ptr @outname, align 8
  %call90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.40, ptr noundef %54, ptr noundef %55) #10
  br label %if.end92

if.end92:                                         ; preds = %if.then79, %land.lhs.true83, %land.lhs.true86, %if.then89, %land.lhs.true77, %err
  %56 = load ptr, ptr @in, align 8
  %tobool93.not = icmp eq ptr %56, null
  br i1 %tobool93.not, label %if.end98, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %if.end92
  %57 = load ptr, ptr @in, align 8
  %58 = load ptr, ptr @__stdinp, align 8
  %cmp95.not = icmp eq ptr %57, %58
  br i1 %cmp95.not, label %if.end98, label %if.then96

if.then96:                                        ; preds = %land.lhs.true94
  %59 = load ptr, ptr @in, align 8
  %call97 = call i32 @fclose(ptr noundef %59) #10
  store ptr null, ptr @in, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %land.lhs.true94, %if.end92
  %60 = load ptr, ptr @inname, align 8
  %tobool99.not = icmp eq ptr %60, null
  br i1 %tobool99.not, label %if.end103, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %if.end98
  %61 = load ptr, ptr @inname, align 8
  %62 = load ptr, ptr %name.addr, align 8
  %cmp101.not = icmp eq ptr %61, %62
  br i1 %cmp101.not, label %if.end103, label %if.then102

if.then102:                                       ; preds = %land.lhs.true100
  %63 = load ptr, ptr @inname, align 8
  call void @free(ptr noundef %63) #10
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %land.lhs.true100, %if.end98
  %64 = load ptr, ptr @outname, align 8
  %tobool104.not = icmp eq ptr %64, null
  br i1 %tobool104.not, label %return, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.end103
  %65 = load ptr, ptr @outname, align 8
  %66 = load ptr, ptr %name.addr, align 8
  %cmp106.not = icmp eq ptr %65, %66
  br i1 %cmp106.not, label %return, label %if.then107

if.then107:                                       ; preds = %land.lhs.true105
  %67 = load ptr, ptr @outname, align 8
  call void @free(ptr noundef %67) #10
  br label %return

return:                                           ; preds = %if.end103, %land.lhs.true105, %if.then107, %if.end59, %if.end74
  %storemerge = phi i32 [ 0, %if.end74 ], [ 0, %if.end59 ], [ -1, %if.then107 ], [ -1, %land.lhs.true105 ], [ -1, %if.end103 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @endname(ptr noundef %name) #1 {
entry:
  %name.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #10
  store ptr %call, ptr %s, align 8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %1 = load ptr, ptr %s, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 1
  %2 = load i8, ptr %arrayidx, align 1
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %add.ptr, ptr %name.addr, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then, %land.lhs.true, %if.then3, %entry
  %4 = load ptr, ptr %name.addr, align 8
  ret ptr %4
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
  %desc.addr.i = alloca ptr, align 8
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %st, ptr %st.addr, align 8
  %0 = load ptr, ptr @f_format, align 8
  store ptr %0, ptr %f, align 8
  %st_nlink = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 2
  store i16 0, ptr %st_nlink, align 2
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr @inname, align 8
  %1 = load ptr, ptr @__stdinp, align 8
  store ptr %1, ptr @in, align 8
  br label %if.end26

if.else:                                          ; preds = %entry
  %2 = load i32, ptr @f_decode, align 4
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.else3, label %if.then2

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %name.addr, align 8
  %call.i = call ptr @normalname(ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45)
  br label %if.end12

if.else3:                                         ; preds = %if.else
  %4 = load i32, ptr @f_cat, align 4
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else3
  %5 = load ptr, ptr %name.addr, align 8
  %call5 = call ptr @suffix(ptr noundef %5, ptr noundef nonnull @.str.41)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr @progname, align 8
  %8 = load ptr, ptr %name.addr, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.42, ptr noundef %7, ptr noundef %8, ptr noundef nonnull @.str.41) #10
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.else3
  %9 = load ptr, ptr %name.addr, align 8
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #10
  %add = add i64 %call9, 1
  %call10 = call ptr @emalloc(i64 noundef %add)
  %strcpy = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %call10, ptr noundef nonnull dereferenceable(1) %9)
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then2
  %storemerge = phi ptr [ %call10, %if.end ], [ %call.i, %if.then2 ]
  store ptr %storemerge, ptr @inname, align 8
  %call13 = call ptr @"\01_fopen"(ptr noundef %storemerge, ptr noundef nonnull @.str.43) #10
  store ptr %call13, ptr @in, align 8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %10 = load ptr, ptr @inname, align 8
  call void @perror(ptr noundef %10) #12
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load ptr, ptr @progname, align 8
  %13 = load ptr, ptr @inname, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.44, ptr noundef %12, ptr noundef %13) #10
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  %14 = load ptr, ptr @inname, align 8
  %15 = load ptr, ptr @in, align 8
  %16 = load ptr, ptr %st.addr, align 8
  %call18 = call i32 @okay_as_input(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  %17 = load ptr, ptr %f, align 8
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end21
  %18 = load ptr, ptr @inname, align 8
  %call24 = call ptr @grok_format(ptr noundef %18)
  store ptr %call24, ptr %f, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %if.then23, %if.then
  %19 = load ptr, ptr %f, align 8
  %tobool27.not = icmp eq ptr %19, null
  %20 = load ptr, ptr %f, align 8
  %cond = select i1 %tobool27.not, ptr @f_ulaw, ptr %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.addr.i)
  store ptr %cond, ptr %desc.addr.i, align 8
  %output.i = getelementptr inbounds %struct.fmtdesc, ptr %cond, i64 0, i32 6
  %21 = load ptr, ptr %output.i, align 8
  store ptr %21, ptr @output, align 8
  %input.i = getelementptr inbounds %struct.fmtdesc, ptr %cond, i64 0, i32 5
  %22 = load ptr, ptr %input.i, align 8
  store ptr %22, ptr @input, align 8
  %23 = load ptr, ptr %desc.addr.i, align 8
  %init_input.i = getelementptr inbounds %struct.fmtdesc, ptr %23, i64 0, i32 3
  %24 = load ptr, ptr %init_input.i, align 8
  store ptr %24, ptr @init_input, align 8
  %init_output.i = getelementptr inbounds %struct.fmtdesc, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %init_output.i, align 8
  store ptr %25, ptr @init_output, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.addr.i)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then20, %if.then15, %if.then7
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @open_output(ptr noundef %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %outfd = alloca i32, align 4
  %o = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %tobool.not = icmp ne ptr %name, null
  %0 = load i32, ptr @f_cat, align 4
  %tobool1.not = icmp eq i32 %0, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stdoutp, align 8
  store ptr %1, ptr @out, align 8
  br label %if.end30

if.else:                                          ; preds = %entry
  store i32 -1, ptr %outfd, align 4
  %2 = load i32, ptr @f_decode, align 4
  %tobool2.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool2.not, ptr @codename, ptr @plainname
  %3 = load ptr, ptr %name.addr, align 8
  %call = call ptr %cond(ptr noundef %3) #10
  store ptr %call, ptr %o, align 8
  %call3 = call i32 @length_okay(ptr noundef %call)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %4 = load ptr, ptr %o, align 8
  %call6 = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %4, i32 noundef 2561, i32 noundef 438) #10
  store i32 %call6, ptr %outfd, align 4
  %cmp = icmp sgt i32 %call6, -1
  br i1 %cmp, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  %5 = load i32, ptr %outfd, align 4
  %call8 = call ptr @"\01_fdopen"(i32 noundef %5, ptr noundef nonnull @.str.51) #10
  store ptr %call8, ptr @out, align 8
  br label %if.end21

if.else9:                                         ; preds = %if.end
  %call10 = call ptr @__error() #10
  %6 = load i32, ptr %call10, align 4
  %cmp11.not = icmp eq i32 %6, 17
  br i1 %cmp11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.else9
  store ptr null, ptr @out, align 8
  br label %if.end21

if.else13:                                        ; preds = %if.else9
  %7 = load ptr, ptr %o, align 8
  %call14 = call i32 @ok_to_replace(ptr noundef %7)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else13
  %8 = load ptr, ptr %o, align 8
  %call17 = call ptr @"\01_fopen"(ptr noundef %8, ptr noundef nonnull @.str.51) #10
  store ptr %call17, ptr @out, align 8
  br label %if.end21

if.else18:                                        ; preds = %if.else13
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then12, %if.then16, %if.then7
  %9 = load ptr, ptr @out, align 8
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end21
  %10 = load ptr, ptr %o, align 8
  call void @perror(ptr noundef %10) #12
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load ptr, ptr @progname, align 8
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.52, ptr noundef %12, ptr noundef %10) #10
  %13 = load i32, ptr %outfd, align 4
  %cmp25 = icmp sgt i32 %13, -1
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then23
  %14 = load i32, ptr %outfd, align 4
  %call27 = call i32 @"\01_close"(i32 noundef %14) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then23
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end21
  %15 = load ptr, ptr %o, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  %storemerge = phi ptr [ null, %if.then ], [ %15, %if.end29 ]
  store ptr %storemerge, ptr @outname, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.end28, %if.else18, %if.then5
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_decode() #1 {
entry:
  %retval = alloca i32, align 4
  %r = alloca ptr, align 8
  %s = alloca [33 x i8], align 1
  %d = alloca [160 x i16], align 2
  %cc = alloca i32, align 4
  %call = call ptr @gsm_create() #10
  store ptr %call, ptr %r, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @progname, align 8
  call void @perror(ptr noundef %0) #12
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %r, align 8
  %call1 = call i32 @gsm_option(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @f_fast) #10
  %call2 = call i32 @gsm_option(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @f_verbose) #10
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %if.end
  %2 = load ptr, ptr @in, align 8
  %call3 = call i64 @fread(ptr noundef nonnull %s, i64 noundef 1, i64 noundef 33, ptr noundef %2) #10
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %cc, align 4
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %cc, align 4
  %cmp6.not = icmp eq i32 %3, 33
  br i1 %cmp6.not, label %if.end21, label %if.then8

if.then8:                                         ; preds = %while.body
  %4 = load i32, ptr %cc, align 4
  %cmp9 = icmp sgt i32 %4, -1
  br i1 %cmp9, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.then8
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr @progname, align 8
  %7 = load i32, ptr %cc, align 4
  %conv12 = sext i32 %7 to i64
  %sub = sub nsw i64 33, %conv12
  %cmp15 = icmp eq i32 %7, 32
  %idx.ext = zext i1 %cmp15 to i64
  %add.ptr = getelementptr inbounds i8, ptr @.str.50, i64 %idx.ext
  %8 = load ptr, ptr @inname, align 8
  %tobool17.not = icmp eq ptr %8, null
  %9 = load ptr, ptr @inname, align 8
  %cond = select i1 %tobool17.not, ptr @.str.37, ptr %9
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.56, ptr noundef %6, i64 noundef %sub, ptr noundef nonnull %add.ptr, ptr noundef %cond) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %if.then8
  %10 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %10) #10
  %call20 = call ptr @__error() #10
  store i32 0, ptr %call20, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %while.body
  %11 = load ptr, ptr %r, align 8
  %call24 = call i32 @gsm_decode(ptr noundef %11, ptr noundef nonnull %s, ptr noundef nonnull %d) #10
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end34, label %if.then26

if.then26:                                        ; preds = %if.end21
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = load ptr, ptr @progname, align 8
  %14 = load ptr, ptr @inname, align 8
  %tobool27.not = icmp eq ptr %14, null
  %15 = load ptr, ptr @inname, align 8
  %cond31 = select i1 %tobool27.not, ptr @.str.37, ptr %15
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.57, ptr noundef %13, ptr noundef %cond31) #10
  %16 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %16) #10
  %call33 = call ptr @__error() #10
  store i32 0, ptr %call33, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end21
  %17 = load ptr, ptr @output, align 8
  %call36 = call i32 %17(ptr noundef nonnull %d) #10
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %while.cond, !llvm.loop !9

if.then39:                                        ; preds = %if.end34
  %18 = load ptr, ptr @outname, align 8
  call void @perror(ptr noundef %18) #12
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = load ptr, ptr @progname, align 8
  %21 = load ptr, ptr @outname, align 8
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.58, ptr noundef %20, ptr noundef %21) #10
  %22 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %22) #10
  store i32 -1, ptr %retval, align 4
  br label %return

while.end:                                        ; preds = %while.cond
  %23 = load i32, ptr %cc, align 4
  %cmp42 = icmp slt i32 %23, 0
  br i1 %cmp42, label %if.then44, label %if.end56

if.then44:                                        ; preds = %while.end
  %24 = load ptr, ptr @inname, align 8
  %tobool45.not = icmp eq ptr %24, null
  %25 = load ptr, ptr @inname, align 8
  %cond49 = select i1 %tobool45.not, ptr @.str.37, ptr %25
  call void @perror(ptr noundef %cond49) #12
  %26 = load ptr, ptr @__stderrp, align 8
  %27 = load ptr, ptr @progname, align 8
  %28 = load ptr, ptr @inname, align 8
  %tobool50.not = icmp eq ptr %28, null
  %29 = load ptr, ptr @inname, align 8
  %cond54 = select i1 %tobool50.not, ptr @.str.37, ptr %29
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.59, ptr noundef %27, ptr noundef %cond54) #10
  %30 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %30) #10
  store i32 -1, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %while.end
  %31 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %31) #10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.then44, %if.then39, %if.then26, %if.end19, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_encode() #1 {
entry:
  %retval = alloca i32, align 4
  %r = alloca ptr, align 8
  %s = alloca [160 x i16], align 2
  %d = alloca [33 x i8], align 1
  %cc = alloca i32, align 4
  %call = call ptr @gsm_create() #10
  store ptr %call, ptr %r, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @progname, align 8
  call void @perror(ptr noundef %0) #12
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %r, align 8
  %call1 = call i32 @gsm_option(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @f_fast) #10
  %call2 = call i32 @gsm_option(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @f_verbose) #10
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end
  %2 = load ptr, ptr @input, align 8
  %call3 = call i32 %2(ptr noundef nonnull %s) #10
  store i32 %call3, ptr %cc, align 4
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %cc, align 4
  %cmp4 = icmp ult i32 %3, 160
  br i1 %cmp4, label %if.then6, label %if.end13

if.then6:                                         ; preds = %while.body
  %4 = load i32, ptr %cc, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i16, ptr %s, i64 %idx.ext
  %conv8 = sext i32 %4 to i64
  %mul.neg = mul nsw i64 %conv8, -2
  %sub = add nsw i64 %mul.neg, 320
  %idx.ext10 = sext i32 %4 to i64
  %add.ptr11 = getelementptr inbounds i16, ptr %s, i64 %idx.ext10
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr11, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memset_chk(ptr noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub, i64 noundef %5) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %while.body
  %6 = load ptr, ptr %r, align 8
  call void @gsm_encode(ptr noundef %6, ptr noundef nonnull %s, ptr noundef nonnull %d) #10
  %7 = load ptr, ptr @out, align 8
  %call17 = call i64 @"\01_fwrite"(ptr noundef nonnull %d, i64 noundef 33, i64 noundef 1, ptr noundef %7) #10
  %cmp18.not = icmp eq i64 %call17, 1
  br i1 %cmp18.not, label %while.cond, label %if.then20, !llvm.loop !10

if.then20:                                        ; preds = %if.end13
  %8 = load ptr, ptr @outname, align 8
  %tobool21.not = icmp eq ptr %8, null
  %9 = load ptr, ptr @outname, align 8
  %cond = select i1 %tobool21.not, ptr @.str.36, ptr %9
  call void @perror(ptr noundef %cond) #12
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load ptr, ptr @progname, align 8
  %12 = load ptr, ptr @outname, align 8
  %tobool22.not = icmp eq ptr %12, null
  %13 = load ptr, ptr @outname, align 8
  %cond26 = select i1 %tobool22.not, ptr @.str.36, ptr %13
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.58, ptr noundef %11, ptr noundef %cond26) #10
  %14 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %14) #10
  store i32 -1, ptr %retval, align 4
  br label %return

while.end:                                        ; preds = %while.cond
  %15 = load i32, ptr %cc, align 4
  %cmp29 = icmp slt i32 %15, 0
  br i1 %cmp29, label %if.then31, label %if.end43

if.then31:                                        ; preds = %while.end
  %16 = load ptr, ptr @inname, align 8
  %tobool32.not = icmp eq ptr %16, null
  %17 = load ptr, ptr @inname, align 8
  %cond36 = select i1 %tobool32.not, ptr @.str.37, ptr %17
  call void @perror(ptr noundef %cond36) #12
  %18 = load ptr, ptr @__stderrp, align 8
  %19 = load ptr, ptr @progname, align 8
  %20 = load ptr, ptr @inname, align 8
  %tobool37.not = icmp eq ptr %20, null
  %21 = load ptr, ptr @inname, align 8
  %cond41 = select i1 %tobool37.not, ptr @.str.37, ptr %21
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.59, ptr noundef %19, ptr noundef %cond41) #10
  %22 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %22) #10
  store i32 -1, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %while.end
  %23 = load ptr, ptr %r, align 8
  call void @gsm_destroy(ptr noundef %23) #10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.then31, %if.then20, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare i32 @fflush(ptr noundef) #0

declare i32 @ferror(ptr noundef) #0

; Function Attrs: cold
declare void @perror(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @update_times() #1 {
entry:
  %ut = alloca [2 x i64], align 8
  %0 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 2
  %tobool.not = icmp eq i16 %0, 0
  %1 = load ptr, ptr @outname, align 8
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.end4, label %if.then2

if.then2:                                         ; preds = %entry
  %2 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 7), align 8
  store i64 %2, ptr %ut, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 8), align 8
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %ut, i64 0, i64 1
  store i64 %3, ptr %arrayidx3, align 8
  %4 = load ptr, ptr @outname, align 8
  %call = call i32 @utime(ptr noundef %4, ptr noundef nonnull %ut) #10
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.then2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @update_mode() #1 {
entry:
  %0 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.end6, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @out, align 8
  %call = call i32 @fileno(ptr noundef %1) #10
  %2 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 1), align 4
  %3 = and i16 %2, 4095
  %call2 = call i32 @"\01_fchmod"(i32 noundef %call, i16 noundef zeroext %3) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr @outname, align 8
  call void @perror(ptr noundef %4) #12
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr @progname, align 8
  %7 = load ptr, ptr @outname, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.60, ptr noundef %6, ptr noundef %7) #10
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then4, %if.end
  ret void
}

declare i32 @fclose(ptr noundef) #0

declare void @free(ptr noundef) #0

declare ptr @__error() #0

; Function Attrs: nounwind ssp uwtable
define internal ptr @codename(ptr noundef %name) #1 {
entry:
  %call = call ptr @normalname(ptr noundef %name, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @suffix(ptr noundef %name, ptr noundef %suf) #1 {
entry:
  %name.addr = alloca ptr, align 8
  %suf.addr = alloca ptr, align 8
  %nlen = alloca i64, align 8
  %slen = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %suf, ptr %suf.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  store i64 %call, ptr %nlen, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %suf) #10
  store i64 %call1, ptr %slen, align 8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i64, ptr %nlen, align 8
  %1 = load i64, ptr %slen, align 8
  %cmp.not = icmp ugt i64 %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, ptr %nlen, align 8
  %3 = load i64, ptr %slen, align 8
  %sub = sub i64 %2, %3
  %4 = load ptr, ptr %name.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %sub
  store ptr %add.ptr, ptr %name.addr, align 8
  %5 = load ptr, ptr %suf.addr, align 8
  %call2 = call i32 @memcmp(ptr noundef %add.ptr, ptr noundef %5, i64 noundef %3) #10
  %tobool3.not = icmp eq i32 %call2, 0
  %6 = load ptr, ptr %name.addr, align 8
  %cond = select i1 %tobool3.not, ptr %6, ptr null
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %storemerge = phi ptr [ %cond, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal ptr @emalloc(i64 noundef %len) #1 {
entry:
  %tmp.i = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  store i64 %len, ptr %len.addr, align 8
  %call = call ptr @malloc(i64 noundef %len) #13
  store ptr %call, ptr %s, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %2 = load i64, ptr %len.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef %1, i64 noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i)
  %3 = load ptr, ptr @outname, align 8
  store ptr %3, ptr %tmp.i, align 8
  store ptr null, ptr @outname, align 8
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %4 = load ptr, ptr %tmp.i, align 8
  %call.i = call i32 @unlink(ptr noundef %4) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then
  call void @exit(i32 noundef 1) #11
  unreachable

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %s, align 8
  ret ptr %5
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @okay_as_input(ptr noundef %name, ptr noundef %f, ptr noundef %st) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %st, ptr %st.addr, align 8
  %call = call i32 @fileno(ptr noundef %f) #10
  %call1 = call i32 @"\01_fstat"(i32 noundef %call, ptr noundef %st) #10
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8
  call void @perror(ptr noundef %0) #12
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr @progname, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef %2, ptr noundef %0) #10
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %st.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 1
  %4 = load i16, ptr %st_mode, align 4
  %5 = and i16 %4, -4096
  %cmp3 = icmp eq i16 %5, -32768
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr @progname, align 8
  %8 = load ptr, ptr %name.addr, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.48, ptr noundef %7, ptr noundef %8) #10
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %st.addr, align 8
  %st_nlink = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 2
  %10 = load i16, ptr %st_nlink, align 2
  %cmp9 = icmp ugt i16 %10, 1
  %11 = load i32, ptr @f_cat, align 4
  %tobool.not = icmp eq i32 %11, 0
  %or.cond = select i1 %cmp9, i1 %tobool.not, i1 false
  %12 = load i32, ptr @f_precious, align 4
  %tobool12.not = icmp eq i32 %12, 0
  %or.cond1 = select i1 %or.cond, i1 %tobool12.not, i1 false
  br i1 %or.cond1, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end7
  %13 = load ptr, ptr @__stderrp, align 8
  %14 = load ptr, ptr @progname, align 8
  %15 = load ptr, ptr %name.addr, align 8
  %16 = load ptr, ptr %st.addr, align 8
  %st_nlink14 = getelementptr inbounds %struct.stat, ptr %16, i64 0, i32 2
  %17 = load i16, ptr %st_nlink14, align 2
  %conv15 = zext i16 %17 to i32
  %sub = add nsw i32 %conv15, -1
  %cmp18 = icmp ult i16 %17, 3
  %idx.ext = zext i1 %cmp18 to i64
  %add.ptr = getelementptr inbounds i8, ptr @.str.50, i64 %idx.ext
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.49, ptr noundef %14, ptr noundef %15, i32 noundef %sub, ptr noundef nonnull %add.ptr) #10
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end7
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then13, %if.then5, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @grok_format(ptr noundef %name) #1 {
entry:
  %name.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8
  %call.i = call ptr @normalname(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41)
  store ptr %call.i, ptr %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %storemerge1 = phi ptr [ @alldescs, %if.then ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge1, ptr %f, align 8
  %1 = load ptr, ptr %storemerge1, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %f, align 8
  %3 = load ptr, ptr %2, align 8
  %suffix = getelementptr inbounds %struct.fmtdesc, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %suffix, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %f, align 8
  %6 = load ptr, ptr %5, align 8
  %suffix3 = getelementptr inbounds %struct.fmtdesc, ptr %6, i64 0, i32 2
  %7 = load ptr, ptr %suffix3, align 8
  %8 = load i8, ptr %7, align 1
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %for.inc, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %c, align 8
  %10 = load ptr, ptr %f, align 8
  %11 = load ptr, ptr %10, align 8
  %suffix6 = getelementptr inbounds %struct.fmtdesc, ptr %11, i64 0, i32 2
  %12 = load ptr, ptr %suffix6, align 8
  %call7 = call ptr @suffix(ptr noundef %9, ptr noundef %12)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %for.inc, label %if.then9

if.then9:                                         ; preds = %land.lhs.true5
  %13 = load ptr, ptr %c, align 8
  call void @free(ptr noundef %13) #10
  %14 = load ptr, ptr %f, align 8
  %15 = load ptr, ptr %14, align 8
  br label %return

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true5
  %16 = load ptr, ptr %f, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %16, i64 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %c, align 8
  call void @free(ptr noundef %17) #10
  br label %return

return:                                           ; preds = %entry, %for.end, %if.then9
  %storemerge = phi ptr [ %15, %if.then9 ], [ null, %for.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @normalname(ptr noundef %name, ptr noundef %want, ptr noundef %cut) #1 {
entry:
  %len.addr.i = alloca i64, align 8
  %s.i = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %want.addr = alloca ptr, align 8
  %cut.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %want, ptr %want.addr, align 8
  store ptr %cut, ptr %cut.addr, align 8
  store ptr null, ptr %p, align 8
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %p, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %add = add i64 %call, 1
  %2 = load ptr, ptr %want.addr, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %add2 = add i64 %add, %call1
  %3 = load ptr, ptr %cut.addr, align 8
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #10
  %add4 = add i64 %add2, %call3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.i)
  store i64 %add4, ptr %len.addr.i, align 8
  %call.i = call ptr @malloc(i64 noundef %add4) #13
  store ptr %call.i, ptr %s.i, align 8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_8.exit

if.then.i:                                        ; preds = %if.end
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr @progname, align 8
  %6 = load i64, ptr %len.addr.i, align 8
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.46, ptr noundef %5, i64 noundef %6) #10
  call void @onintr()
  call void @exit(i32 noundef 1) #11
  unreachable

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_8.exit: ; preds = %if.end
  %7 = load ptr, ptr %s.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.i)
  %8 = load ptr, ptr %name.addr, align 8
  %strcpy = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %8)
  store ptr %7, ptr %p, align 8
  %9 = load ptr, ptr %cut.addr, align 8
  %call7 = call ptr @suffix(ptr noundef %7, ptr noundef %9)
  store ptr %call7, ptr %s, align 8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_8.exit
  %10 = load ptr, ptr %s, align 8
  %11 = load ptr, ptr %want.addr, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call10 = call ptr @__strcpy_chk(ptr noundef %10, ptr noundef %11, i64 noundef %12) #10
  br label %if.end17

if.else:                                          ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_telecom_gsm_toast_8.exit
  %13 = load ptr, ptr %want.addr, align 8
  %14 = load i8, ptr %13, align 1
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %15 = load ptr, ptr %p, align 8
  %16 = load ptr, ptr %want.addr, align 8
  %call12 = call ptr @suffix(ptr noundef %15, ptr noundef %16)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %p, align 8
  %18 = load ptr, ptr %want.addr, align 8
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %17, i1 false, i1 true, i1 false)
  %call15 = call ptr @__strcat_chk(ptr noundef %17, ptr noundef %18, i64 noundef %19) #10
  br label %if.end17

if.end17:                                         ; preds = %if.else, %land.lhs.true, %if.then14, %if.then9
  %20 = load ptr, ptr %p, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then
  %storemerge = phi ptr [ %0, %if.then ], [ %20, %if.end17 ]
  ret ptr %storemerge
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
  %call = call ptr @normalname(ptr noundef %name, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41)
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
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @endname(ptr noundef %0)
  store ptr %call, ptr %end, align 8
  %1 = load i64, ptr %max_filename_length, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %end, align 8
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %3 = load i64, ptr %max_filename_length, align 8
  %cmp2 = icmp ugt i64 %call1, %3
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr @progname, align 8
  %6 = load ptr, ptr %name.addr, align 8
  %call4 = call ptr @endname(ptr noundef %6)
  %7 = load i64, ptr %max_filename_length, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.53, ptr noundef %5, ptr noundef %call4, i64 noundef %7) #10
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 @fileno(ptr noundef %1) #10
  %call1 = call i32 @isatty(i32 noundef %call) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.54, ptr noundef %3, ptr noundef %3) #10
  %4 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 @fflush(ptr noundef %4) #10
  %call7 = call i32 @getchar() #10
  store i32 %call7, ptr %reply, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %storemerge = phi i32 [ %call7, %if.end4 ], [ %call9, %for.inc ]
  store i32 %storemerge, ptr %c, align 4
  %cmp.not = icmp eq i32 %storemerge, 10
  %5 = load i32, ptr %c, align 4
  %cmp8 = icmp ne i32 %5, -1
  %6 = select i1 %cmp.not, i1 false, i1 %cmp8
  br i1 %6, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %call9 = call i32 @getchar() #10
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %reply, align 4
  %cmp10 = icmp eq i32 %7, 121
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %for.end
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = call i64 @fwrite(ptr nonnull @.str.55, i64 17, i64 1, ptr %8)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then3, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #8

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold nounwind }
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
