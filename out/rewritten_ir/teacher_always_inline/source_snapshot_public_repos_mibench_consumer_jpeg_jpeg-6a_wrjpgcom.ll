; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_wrjpgcom.prepared.ll'
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
  %c.i = alloca i32, align 4
  %keep_COM.addr.i = alloca i32, align 4
  %marker.i = alloca i32, align 4
  %retval.i33 = alloca i32, align 4
  %arg.addr.i34 = alloca ptr, align 8
  %keyword.addr.i35 = alloca ptr, align 8
  %minchars.addr.i36 = alloca i32, align 4
  %ca.i37 = alloca i32, align 4
  %ck.i38 = alloca i32, align 4
  %nmatched.i39 = alloca i32, align 4
  %retval.i1 = alloca i32, align 4
  %arg.addr.i2 = alloca ptr, align 8
  %keyword.addr.i3 = alloca ptr, align 8
  %minchars.addr.i4 = alloca i32, align 4
  %ca.i5 = alloca i32, align 4
  %ck.i6 = alloca i32, align 4
  %nmatched.i7 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %arg.addr.i = alloca ptr, align 8
  %keyword.addr.i = alloca ptr, align 8
  %minchars.addr.i = alloca i32, align 4
  %ca.i = alloca i32, align 4
  %ck.i = alloca i32, align 4
  %nmatched.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keyword.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minchars.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ca.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ck.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmatched.i)
  store ptr %incdec.ptr, ptr %arg.addr.i, align 8
  store ptr @.str.1, ptr %keyword.addr.i, align 8
  store i32 1, ptr %minchars.addr.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end12.i, %if.end12
  %storemerge163 = phi i32 [ 0, %if.end12 ], [ %inc.i, %if.end12.i ]
  store i32 %storemerge163, ptr %nmatched.i, align 4
  %9 = load ptr, ptr %arg.addr.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr.i, ptr %arg.addr.i, align 8
  %10 = load i8, ptr %9, align 1
  %conv.i = sext i8 %10 to i32
  store i32 %conv.i, ptr %ca.i, align 4
  %cmp.i.not = icmp eq i8 %10, 0
  br i1 %cmp.i.not, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %11 = load ptr, ptr %keyword.addr.i, align 8
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr2.i, ptr %keyword.addr.i, align 8
  %12 = load i8, ptr %11, align 1
  %conv3.i = sext i8 %12 to i32
  store i32 %conv3.i, ptr %ck.i, align 4
  %cmp4.i = icmp eq i8 %12, 0
  br i1 %cmp4.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_0.exit

if.end.i:                                         ; preds = %while.body.i
  %13 = load i32, ptr %ca.i, align 4
  %call.i = call i32 @isupper(i32 noundef %13) #9
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %14 = load i32, ptr %ca.i, align 4
  %call7.i = call i32 @tolower(i32 noundef %14) #9
  store i32 %call7.i, ptr %ca.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i
  %15 = load i32, ptr %ca.i, align 4
  %16 = load i32, ptr %ck.i, align 4
  %cmp9.i.not = icmp eq i32 %15, %16
  br i1 %cmp9.i.not, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_0.exit

if.end12.i:                                       ; preds = %if.end8.i
  %17 = load i32, ptr %nmatched.i, align 4
  %inc.i = add nsw i32 %17, 1
  br label %while.cond.i, !llvm.loop !6

while.end.i:                                      ; preds = %while.cond.i
  %18 = load i32, ptr %nmatched.i, align 4
  %19 = load i32, ptr %minchars.addr.i, align 4
  %cmp13.i = icmp slt i32 %18, %19
  br i1 %cmp13.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %while.end.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_0.exit

if.end16.i:                                       ; preds = %while.end.i
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_0.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_0.exit: ; preds = %if.then.i, %if.then11.i, %if.then15.i, %if.end16.i
  %20 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keyword.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minchars.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ca.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ck.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmatched.i)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_0.exit
  store i32 0, ptr %keep_COM, align 4
  br label %for.inc

if.else:                                          ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_0.exit
  %21 = load ptr, ptr %arg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.addr.i2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keyword.addr.i3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minchars.addr.i4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ca.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ck.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmatched.i7)
  store ptr %21, ptr %arg.addr.i2, align 8
  store ptr @.str.2, ptr %keyword.addr.i3, align 8
  store i32 2, ptr %minchars.addr.i4, align 4
  br label %while.cond.i11

while.cond.i11:                                   ; preds = %if.end12.i26, %if.else
  %storemerge164 = phi i32 [ 0, %if.else ], [ %inc.i25, %if.end12.i26 ]
  store i32 %storemerge164, ptr %nmatched.i7, align 4
  %22 = load ptr, ptr %arg.addr.i2, align 8
  %incdec.ptr.i8 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr.i8, ptr %arg.addr.i2, align 8
  %23 = load i8, ptr %22, align 1
  %conv.i9 = sext i8 %23 to i32
  store i32 %conv.i9, ptr %ca.i5, align 4
  %cmp.i10.not = icmp eq i8 %23, 0
  br i1 %cmp.i10.not, label %while.end.i28, label %while.body.i15

while.body.i15:                                   ; preds = %while.cond.i11
  %24 = load ptr, ptr %keyword.addr.i3, align 8
  %incdec.ptr2.i12 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr2.i12, ptr %keyword.addr.i3, align 8
  %25 = load i8, ptr %24, align 1
  %conv3.i13 = sext i8 %25 to i32
  store i32 %conv3.i13, ptr %ck.i6, align 4
  %cmp4.i14 = icmp eq i8 %25, 0
  br i1 %cmp4.i14, label %if.then.i16, label %if.end.i19

if.then.i16:                                      ; preds = %while.body.i15
  store i32 0, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit

if.end.i19:                                       ; preds = %while.body.i15
  %26 = load i32, ptr %ca.i5, align 4
  %call.i17 = call i32 @isupper(i32 noundef %26) #9
  %tobool.i18.not = icmp eq i32 %call.i17, 0
  br i1 %tobool.i18.not, label %if.end8.i23, label %if.then6.i21

if.then6.i21:                                     ; preds = %if.end.i19
  %27 = load i32, ptr %ca.i5, align 4
  %call7.i20 = call i32 @tolower(i32 noundef %27) #9
  store i32 %call7.i20, ptr %ca.i5, align 4
  br label %if.end8.i23

if.end8.i23:                                      ; preds = %if.then6.i21, %if.end.i19
  %28 = load i32, ptr %ca.i5, align 4
  %29 = load i32, ptr %ck.i6, align 4
  %cmp9.i22.not = icmp eq i32 %28, %29
  br i1 %cmp9.i22.not, label %if.end12.i26, label %if.then11.i24

if.then11.i24:                                    ; preds = %if.end8.i23
  store i32 0, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit

if.end12.i26:                                     ; preds = %if.end8.i23
  %30 = load i32, ptr %nmatched.i7, align 4
  %inc.i25 = add nsw i32 %30, 1
  br label %while.cond.i11, !llvm.loop !6

while.end.i28:                                    ; preds = %while.cond.i11
  %31 = load i32, ptr %nmatched.i7, align 4
  %32 = load i32, ptr %minchars.addr.i4, align 4
  %cmp13.i27 = icmp slt i32 %31, %32
  br i1 %cmp13.i27, label %if.then15.i29, label %if.end16.i30

if.then15.i29:                                    ; preds = %while.end.i28
  store i32 0, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit

if.end16.i30:                                     ; preds = %while.end.i28
  store i32 1, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit: ; preds = %if.then.i16, %if.then11.i24, %if.then15.i29, %if.end16.i30
  %33 = load i32, ptr %retval.i1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.addr.i2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keyword.addr.i3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minchars.addr.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ca.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ck.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmatched.i7)
  %tobool15.not = icmp eq i32 %33, 0
  br i1 %tobool15.not, label %if.else31, label %if.then16

if.then16:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit
  %34 = load i32, ptr %argn, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %argn, align 4
  %35 = load i32, ptr %argc.addr, align 4
  %cmp17.not = icmp slt i32 %inc, %35
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then16
  %36 = load ptr, ptr @__stderrp, align 8
  %37 = call i64 @fwrite(ptr nonnull @.str.13, i64 51, i64 1, ptr %36)
  %38 = load ptr, ptr @__stderrp, align 8
  %39 = call i64 @fwrite(ptr nonnull @.str.14, i64 51, i64 1, ptr %38)
  %40 = load ptr, ptr @__stderrp, align 8
  %41 = load ptr, ptr @progname, align 8
  %call2.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.15, ptr noundef %41) #10
  %42 = load ptr, ptr @__stderrp, align 8
  %43 = call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr %42)
  %44 = load ptr, ptr @__stderrp, align 8
  %45 = call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr %44)
  %46 = load ptr, ptr @__stderrp, align 8
  %47 = call i64 @fwrite(ptr nonnull @.str.18, i64 48, i64 1, ptr %46)
  %48 = load ptr, ptr @__stderrp, align 8
  %49 = call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %48)
  %50 = load ptr, ptr @__stderrp, align 8
  %51 = call i64 @fwrite(ptr nonnull @.str.20, i64 48, i64 1, ptr %50)
  %52 = load ptr, ptr @__stderrp, align 8
  %53 = call i64 @fwrite(ptr nonnull @.str.21, i64 56, i64 1, ptr %52)
  %54 = load ptr, ptr @__stderrp, align 8
  %55 = call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr %54)
  %56 = load ptr, ptr @__stderrp, align 8
  %57 = call i64 @fwrite(ptr nonnull @.str.23, i64 66, i64 1, ptr %56)
  %58 = load ptr, ptr @__stderrp, align 8
  %59 = call i64 @fwrite(ptr nonnull @.str.24, i64 51, i64 1, ptr %58)
  %60 = load ptr, ptr @__stderrp, align 8
  %call12.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.25, i32 noundef 65000) #10
  %61 = load ptr, ptr @__stderrp, align 8
  %62 = call i64 @fwrite(ptr nonnull @.str.26, i64 56, i64 1, ptr %61)
  %63 = load ptr, ptr @__stderrp, align 8
  %64 = call i64 @fwrite(ptr nonnull @.str.27, i64 34, i64 1, ptr %63)
  call void @exit(i32 noundef 1) #11
  unreachable

if.end20:                                         ; preds = %if.then16
  %65 = load ptr, ptr %argv.addr, align 8
  %66 = load i32, ptr %argn, align 4
  %idxprom21 = sext i32 %66 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %65, i64 %idxprom21
  %67 = load ptr, ptr %arrayidx22, align 8
  %call23 = call ptr @"\01_fopen"(ptr noundef %67, ptr noundef nonnull @.str.3) #10
  store ptr %call23, ptr %comment_file, align 8
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %if.then26, label %for.inc

if.then26:                                        ; preds = %if.end20
  %68 = load ptr, ptr @__stderrp, align 8
  %69 = load ptr, ptr @progname, align 8
  %70 = load ptr, ptr %argv.addr, align 8
  %71 = load i32, ptr %argn, align 4
  %idxprom27 = sext i32 %71 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %70, i64 %idxprom27
  %72 = load ptr, ptr %arrayidx28, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.4, ptr noundef %69, ptr noundef %72) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.else31:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_1.exit
  %73 = load ptr, ptr %arg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i33)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.addr.i34)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keyword.addr.i35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minchars.addr.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ca.i37)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ck.i38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmatched.i39)
  store ptr %73, ptr %arg.addr.i34, align 8
  store ptr @.str.5, ptr %keyword.addr.i35, align 8
  store i32 1, ptr %minchars.addr.i36, align 4
  br label %while.cond.i43

while.cond.i43:                                   ; preds = %if.end12.i58, %if.else31
  %storemerge165 = phi i32 [ 0, %if.else31 ], [ %inc.i57, %if.end12.i58 ]
  store i32 %storemerge165, ptr %nmatched.i39, align 4
  %74 = load ptr, ptr %arg.addr.i34, align 8
  %incdec.ptr.i40 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr.i40, ptr %arg.addr.i34, align 8
  %75 = load i8, ptr %74, align 1
  %conv.i41 = sext i8 %75 to i32
  store i32 %conv.i41, ptr %ca.i37, align 4
  %cmp.i42.not = icmp eq i8 %75, 0
  br i1 %cmp.i42.not, label %while.end.i60, label %while.body.i47

while.body.i47:                                   ; preds = %while.cond.i43
  %76 = load ptr, ptr %keyword.addr.i35, align 8
  %incdec.ptr2.i44 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr2.i44, ptr %keyword.addr.i35, align 8
  %77 = load i8, ptr %76, align 1
  %conv3.i45 = sext i8 %77 to i32
  store i32 %conv3.i45, ptr %ck.i38, align 4
  %cmp4.i46 = icmp eq i8 %77, 0
  br i1 %cmp4.i46, label %if.then.i48, label %if.end.i51

if.then.i48:                                      ; preds = %while.body.i47
  store i32 0, ptr %retval.i33, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit

if.end.i51:                                       ; preds = %while.body.i47
  %78 = load i32, ptr %ca.i37, align 4
  %call.i49 = call i32 @isupper(i32 noundef %78) #9
  %tobool.i50.not = icmp eq i32 %call.i49, 0
  br i1 %tobool.i50.not, label %if.end8.i55, label %if.then6.i53

if.then6.i53:                                     ; preds = %if.end.i51
  %79 = load i32, ptr %ca.i37, align 4
  %call7.i52 = call i32 @tolower(i32 noundef %79) #9
  store i32 %call7.i52, ptr %ca.i37, align 4
  br label %if.end8.i55

if.end8.i55:                                      ; preds = %if.then6.i53, %if.end.i51
  %80 = load i32, ptr %ca.i37, align 4
  %81 = load i32, ptr %ck.i38, align 4
  %cmp9.i54.not = icmp eq i32 %80, %81
  br i1 %cmp9.i54.not, label %if.end12.i58, label %if.then11.i56

if.then11.i56:                                    ; preds = %if.end8.i55
  store i32 0, ptr %retval.i33, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit

if.end12.i58:                                     ; preds = %if.end8.i55
  %82 = load i32, ptr %nmatched.i39, align 4
  %inc.i57 = add nsw i32 %82, 1
  br label %while.cond.i43, !llvm.loop !6

while.end.i60:                                    ; preds = %while.cond.i43
  %83 = load i32, ptr %nmatched.i39, align 4
  %84 = load i32, ptr %minchars.addr.i36, align 4
  %cmp13.i59 = icmp slt i32 %83, %84
  br i1 %cmp13.i59, label %if.then15.i61, label %if.end16.i62

if.then15.i61:                                    ; preds = %while.end.i60
  store i32 0, ptr %retval.i33, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit

if.end16.i62:                                     ; preds = %while.end.i60
  store i32 1, ptr %retval.i33, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit: ; preds = %if.then.i48, %if.then11.i56, %if.then15.i61, %if.end16.i62
  %85 = load i32, ptr %retval.i33, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i33)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.addr.i34)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keyword.addr.i35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minchars.addr.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ca.i37)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ck.i38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmatched.i39)
  %tobool33.not = icmp eq i32 %85, 0
  br i1 %tobool33.not, label %if.else84, label %if.then34

if.then34:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit
  %86 = load i32, ptr %argn, align 4
  %inc35 = add nsw i32 %86, 1
  store i32 %inc35, ptr %argn, align 4
  %87 = load i32, ptr %argc.addr, align 4
  %cmp36.not = icmp slt i32 %inc35, %87
  br i1 %cmp36.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.then34
  %88 = load ptr, ptr @__stderrp, align 8
  %89 = call i64 @fwrite(ptr nonnull @.str.13, i64 51, i64 1, ptr %88)
  %90 = load ptr, ptr @__stderrp, align 8
  %91 = call i64 @fwrite(ptr nonnull @.str.14, i64 51, i64 1, ptr %90)
  %92 = load ptr, ptr @__stderrp, align 8
  %93 = load ptr, ptr @progname, align 8
  %call2.i65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.15, ptr noundef %93) #10
  %94 = load ptr, ptr @__stderrp, align 8
  %95 = call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr %94)
  %96 = load ptr, ptr @__stderrp, align 8
  %97 = call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr %96)
  %98 = load ptr, ptr @__stderrp, align 8
  %99 = call i64 @fwrite(ptr nonnull @.str.18, i64 48, i64 1, ptr %98)
  %100 = load ptr, ptr @__stderrp, align 8
  %101 = call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %100)
  %102 = load ptr, ptr @__stderrp, align 8
  %103 = call i64 @fwrite(ptr nonnull @.str.20, i64 48, i64 1, ptr %102)
  %104 = load ptr, ptr @__stderrp, align 8
  %105 = call i64 @fwrite(ptr nonnull @.str.21, i64 56, i64 1, ptr %104)
  %106 = load ptr, ptr @__stderrp, align 8
  %107 = call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr %106)
  %108 = load ptr, ptr @__stderrp, align 8
  %109 = call i64 @fwrite(ptr nonnull @.str.23, i64 66, i64 1, ptr %108)
  %110 = load ptr, ptr @__stderrp, align 8
  %111 = call i64 @fwrite(ptr nonnull @.str.24, i64 51, i64 1, ptr %110)
  %112 = load ptr, ptr @__stderrp, align 8
  %call12.i75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.25, i32 noundef 65000) #10
  %113 = load ptr, ptr @__stderrp, align 8
  %114 = call i64 @fwrite(ptr nonnull @.str.26, i64 56, i64 1, ptr %113)
  %115 = load ptr, ptr @__stderrp, align 8
  %116 = call i64 @fwrite(ptr nonnull @.str.27, i64 34, i64 1, ptr %115)
  call void @exit(i32 noundef 1) #11
  unreachable

if.end39:                                         ; preds = %if.then34
  %117 = load ptr, ptr %argv.addr, align 8
  %118 = load i32, ptr %argn, align 4
  %idxprom40 = sext i32 %118 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %117, i64 %idxprom40
  %119 = load ptr, ptr %arrayidx41, align 8
  store ptr %119, ptr %comment_arg, align 8
  %120 = load i8, ptr %119, align 1
  %cmp44 = icmp eq i8 %120, 34
  br i1 %cmp44, label %if.then46, label %if.end81

if.then46:                                        ; preds = %if.end39
  %call47 = call dereferenceable_or_null(65000) ptr @malloc(i64 noundef 65000) #12
  store ptr %call47, ptr %comment_arg, align 8
  %cmp48 = icmp eq ptr %call47, null
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then46
  %121 = load ptr, ptr @__stderrp, align 8
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end52:                                         ; preds = %if.then46
  %122 = load ptr, ptr %comment_arg, align 8
  %123 = load ptr, ptr %argv.addr, align 8
  %124 = load i32, ptr %argn, align 4
  %idxprom53 = sext i32 %124 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %123, i64 %idxprom53
  %125 = load ptr, ptr %arrayidx54, align 8
  %add.ptr = getelementptr inbounds i8, ptr %125, i64 1
  %call55 = call ptr @__strcpy_chk(ptr noundef %122, ptr noundef nonnull %add.ptr, i64 noundef 65000) #10
  br label %for.cond56

for.cond56:                                       ; preds = %if.end76, %if.end52
  %126 = load ptr, ptr %comment_arg, align 8
  %call57 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %126) #10
  %conv58 = trunc i64 %call57 to i32
  store i32 %conv58, ptr %comment_length, align 4
  %cmp59.not = icmp eq i32 %conv58, 0
  br i1 %cmp59.not, label %if.end70, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond56
  %127 = load ptr, ptr %comment_arg, align 8
  %128 = load i32, ptr %comment_length, align 4
  %sub = add i32 %128, -1
  %idxprom61 = zext i32 %sub to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %127, i64 %idxprom61
  %129 = load i8, ptr %arrayidx62, align 1
  %cmp64 = icmp eq i8 %129, 34
  br i1 %cmp64, label %if.then66, label %if.end70

if.then66:                                        ; preds = %land.lhs.true
  %130 = load ptr, ptr %comment_arg, align 8
  %131 = load i32, ptr %comment_length, align 4
  %sub67 = add i32 %131, -1
  %idxprom68 = zext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %130, i64 %idxprom68
  store i8 0, ptr %arrayidx69, align 1
  br label %if.end81

if.end70:                                         ; preds = %land.lhs.true, %for.cond56
  %132 = load i32, ptr %argn, align 4
  %inc71 = add nsw i32 %132, 1
  store i32 %inc71, ptr %argn, align 4
  %133 = load i32, ptr %argc.addr, align 4
  %cmp72.not = icmp slt i32 %inc71, %133
  br i1 %cmp72.not, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.end70
  %134 = load ptr, ptr @__stderrp, align 8
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end76:                                         ; preds = %if.end70
  %135 = load ptr, ptr %comment_arg, align 8
  %136 = call i64 @llvm.objectsize.i64.p0(ptr %135, i1 false, i1 true, i1 false)
  %call77 = call ptr @__strcat_chk(ptr noundef %135, ptr noundef nonnull @.str.9, i64 noundef %136) #10
  %137 = load ptr, ptr %argv.addr, align 8
  %138 = load i32, ptr %argn, align 4
  %idxprom78 = sext i32 %138 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %137, i64 %idxprom78
  %139 = load ptr, ptr %arrayidx79, align 8
  %140 = load ptr, ptr %comment_arg, align 8
  %141 = call i64 @llvm.objectsize.i64.p0(ptr %140, i1 false, i1 true, i1 false)
  %call80 = call ptr @__strcat_chk(ptr noundef %135, ptr noundef %139, i64 noundef %141) #10
  br label %for.cond56

if.end81:                                         ; preds = %if.then66, %if.end39
  %142 = load ptr, ptr %comment_arg, align 8
  %call82 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %142) #10
  %conv83 = trunc i64 %call82 to i32
  store i32 %conv83, ptr %comment_length, align 4
  br label %for.inc

if.else84:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_3.exit
  %143 = load ptr, ptr @__stderrp, align 8
  %144 = call i64 @fwrite(ptr nonnull @.str.13, i64 51, i64 1, ptr %143)
  %145 = load ptr, ptr @__stderrp, align 8
  %146 = call i64 @fwrite(ptr nonnull @.str.14, i64 51, i64 1, ptr %145)
  %147 = load ptr, ptr @__stderrp, align 8
  %148 = load ptr, ptr @progname, align 8
  %call2.i80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef nonnull @.str.15, ptr noundef %148) #10
  %149 = load ptr, ptr @__stderrp, align 8
  %150 = call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr %149)
  %151 = load ptr, ptr @__stderrp, align 8
  %152 = call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr %151)
  %153 = load ptr, ptr @__stderrp, align 8
  %154 = call i64 @fwrite(ptr nonnull @.str.18, i64 48, i64 1, ptr %153)
  %155 = load ptr, ptr @__stderrp, align 8
  %156 = call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %155)
  %157 = load ptr, ptr @__stderrp, align 8
  %158 = call i64 @fwrite(ptr nonnull @.str.20, i64 48, i64 1, ptr %157)
  %159 = load ptr, ptr @__stderrp, align 8
  %160 = call i64 @fwrite(ptr nonnull @.str.21, i64 56, i64 1, ptr %159)
  %161 = load ptr, ptr @__stderrp, align 8
  %162 = call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr %161)
  %163 = load ptr, ptr @__stderrp, align 8
  %164 = call i64 @fwrite(ptr nonnull @.str.23, i64 66, i64 1, ptr %163)
  %165 = load ptr, ptr @__stderrp, align 8
  %166 = call i64 @fwrite(ptr nonnull @.str.24, i64 51, i64 1, ptr %165)
  %167 = load ptr, ptr @__stderrp, align 8
  %call12.i90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.25, i32 noundef 65000) #10
  %168 = load ptr, ptr @__stderrp, align 8
  %169 = call i64 @fwrite(ptr nonnull @.str.26, i64 56, i64 1, ptr %168)
  %170 = load ptr, ptr @__stderrp, align 8
  %171 = call i64 @fwrite(ptr nonnull @.str.27, i64 34, i64 1, ptr %170)
  call void @exit(i32 noundef 1) #11
  unreachable

for.inc:                                          ; preds = %if.then13, %if.end20, %if.end81
  %172 = load i32, ptr %argn, align 4
  %inc88 = add nsw i32 %172, 1
  br label %for.cond, !llvm.loop !8

for.end89:                                        ; preds = %for.body, %for.cond
  %173 = load ptr, ptr %comment_arg, align 8
  %cmp90.not = icmp eq ptr %173, null
  %174 = load ptr, ptr %comment_file, align 8
  %cmp93.not = icmp eq ptr %174, null
  %or.cond = select i1 %cmp90.not, i1 true, i1 %cmp93.not
  br i1 %or.cond, label %if.end96, label %if.then95

if.then95:                                        ; preds = %for.end89
  %175 = load ptr, ptr @__stderrp, align 8
  %176 = call i64 @fwrite(ptr nonnull @.str.13, i64 51, i64 1, ptr %175)
  %177 = load ptr, ptr @__stderrp, align 8
  %178 = call i64 @fwrite(ptr nonnull @.str.14, i64 51, i64 1, ptr %177)
  %179 = load ptr, ptr @__stderrp, align 8
  %180 = load ptr, ptr @progname, align 8
  %call2.i95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef nonnull @.str.15, ptr noundef %180) #10
  %181 = load ptr, ptr @__stderrp, align 8
  %182 = call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr %181)
  %183 = load ptr, ptr @__stderrp, align 8
  %184 = call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr %183)
  %185 = load ptr, ptr @__stderrp, align 8
  %186 = call i64 @fwrite(ptr nonnull @.str.18, i64 48, i64 1, ptr %185)
  %187 = load ptr, ptr @__stderrp, align 8
  %188 = call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %187)
  %189 = load ptr, ptr @__stderrp, align 8
  %190 = call i64 @fwrite(ptr nonnull @.str.20, i64 48, i64 1, ptr %189)
  %191 = load ptr, ptr @__stderrp, align 8
  %192 = call i64 @fwrite(ptr nonnull @.str.21, i64 56, i64 1, ptr %191)
  %193 = load ptr, ptr @__stderrp, align 8
  %194 = call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr %193)
  %195 = load ptr, ptr @__stderrp, align 8
  %196 = call i64 @fwrite(ptr nonnull @.str.23, i64 66, i64 1, ptr %195)
  %197 = load ptr, ptr @__stderrp, align 8
  %198 = call i64 @fwrite(ptr nonnull @.str.24, i64 51, i64 1, ptr %197)
  %199 = load ptr, ptr @__stderrp, align 8
  %call12.i105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %199, ptr noundef nonnull @.str.25, i32 noundef 65000) #10
  %200 = load ptr, ptr @__stderrp, align 8
  %201 = call i64 @fwrite(ptr nonnull @.str.26, i64 56, i64 1, ptr %200)
  %202 = load ptr, ptr @__stderrp, align 8
  %203 = call i64 @fwrite(ptr nonnull @.str.27, i64 34, i64 1, ptr %202)
  call void @exit(i32 noundef 1) #11
  unreachable

if.end96:                                         ; preds = %for.end89
  %204 = load ptr, ptr %comment_arg, align 8
  %cmp97 = icmp eq ptr %204, null
  %205 = load ptr, ptr %comment_file, align 8
  %cmp100 = icmp eq ptr %205, null
  %or.cond166 = select i1 %cmp97, i1 %cmp100, i1 false
  br i1 %or.cond166, label %land.lhs.true102, label %if.end106

land.lhs.true102:                                 ; preds = %if.end96
  %206 = load i32, ptr %argn, align 4
  %207 = load i32, ptr %argc.addr, align 4
  %cmp103.not = icmp slt i32 %206, %207
  br i1 %cmp103.not, label %if.end106, label %if.then105

if.then105:                                       ; preds = %land.lhs.true102
  %208 = load ptr, ptr @__stderrp, align 8
  %209 = call i64 @fwrite(ptr nonnull @.str.13, i64 51, i64 1, ptr %208)
  %210 = load ptr, ptr @__stderrp, align 8
  %211 = call i64 @fwrite(ptr nonnull @.str.14, i64 51, i64 1, ptr %210)
  %212 = load ptr, ptr @__stderrp, align 8
  %213 = load ptr, ptr @progname, align 8
  %call2.i110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.15, ptr noundef %213) #10
  %214 = load ptr, ptr @__stderrp, align 8
  %215 = call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr %214)
  %216 = load ptr, ptr @__stderrp, align 8
  %217 = call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr %216)
  %218 = load ptr, ptr @__stderrp, align 8
  %219 = call i64 @fwrite(ptr nonnull @.str.18, i64 48, i64 1, ptr %218)
  %220 = load ptr, ptr @__stderrp, align 8
  %221 = call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %220)
  %222 = load ptr, ptr @__stderrp, align 8
  %223 = call i64 @fwrite(ptr nonnull @.str.20, i64 48, i64 1, ptr %222)
  %224 = load ptr, ptr @__stderrp, align 8
  %225 = call i64 @fwrite(ptr nonnull @.str.21, i64 56, i64 1, ptr %224)
  %226 = load ptr, ptr @__stderrp, align 8
  %227 = call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr %226)
  %228 = load ptr, ptr @__stderrp, align 8
  %229 = call i64 @fwrite(ptr nonnull @.str.23, i64 66, i64 1, ptr %228)
  %230 = load ptr, ptr @__stderrp, align 8
  %231 = call i64 @fwrite(ptr nonnull @.str.24, i64 51, i64 1, ptr %230)
  %232 = load ptr, ptr @__stderrp, align 8
  %call12.i120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef nonnull @.str.25, i32 noundef 65000) #10
  %233 = load ptr, ptr @__stderrp, align 8
  %234 = call i64 @fwrite(ptr nonnull @.str.26, i64 56, i64 1, ptr %233)
  %235 = load ptr, ptr @__stderrp, align 8
  %236 = call i64 @fwrite(ptr nonnull @.str.27, i64 34, i64 1, ptr %235)
  call void @exit(i32 noundef 1) #11
  unreachable

if.end106:                                        ; preds = %land.lhs.true102, %if.end96
  %237 = load i32, ptr %argn, align 4
  %238 = load i32, ptr %argc.addr, align 4
  %cmp107 = icmp slt i32 %237, %238
  br i1 %cmp107, label %if.then109, label %if.else120

if.then109:                                       ; preds = %if.end106
  %239 = load ptr, ptr %argv.addr, align 8
  %240 = load i32, ptr %argn, align 4
  %idxprom110 = sext i32 %240 to i64
  %arrayidx111 = getelementptr inbounds ptr, ptr %239, i64 %idxprom110
  %241 = load ptr, ptr %arrayidx111, align 8
  %call112 = call ptr @"\01_fopen"(ptr noundef %241, ptr noundef nonnull @.str.10) #10
  store ptr %call112, ptr @infile, align 8
  %cmp113 = icmp eq ptr %call112, null
  br i1 %cmp113, label %if.then115, label %if.end121

if.then115:                                       ; preds = %if.then109
  %242 = load ptr, ptr @__stderrp, align 8
  %243 = load ptr, ptr @progname, align 8
  %244 = load ptr, ptr %argv.addr, align 8
  %245 = load i32, ptr %argn, align 4
  %idxprom116 = sext i32 %245 to i64
  %arrayidx117 = getelementptr inbounds ptr, ptr %244, i64 %idxprom116
  %246 = load ptr, ptr %arrayidx117, align 8
  %call118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef nonnull @.str.4, ptr noundef %243, ptr noundef %246) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.else120:                                       ; preds = %if.end106
  %247 = load ptr, ptr @__stdinp, align 8
  store ptr %247, ptr @infile, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then109, %if.else120
  %248 = load i32, ptr %argn, align 4
  %249 = load i32, ptr %argc.addr, align 4
  %sub122 = add nsw i32 %249, -1
  %cmp123 = icmp slt i32 %248, %sub122
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end121
  %250 = load ptr, ptr @__stderrp, align 8
  %251 = load ptr, ptr @progname, align 8
  %call126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %250, ptr noundef nonnull @.str.11, ptr noundef %251) #10
  %252 = load ptr, ptr @__stderrp, align 8
  %253 = call i64 @fwrite(ptr nonnull @.str.13, i64 51, i64 1, ptr %252)
  %254 = load ptr, ptr @__stderrp, align 8
  %255 = call i64 @fwrite(ptr nonnull @.str.14, i64 51, i64 1, ptr %254)
  %256 = load ptr, ptr @__stderrp, align 8
  %257 = load ptr, ptr @progname, align 8
  %call2.i125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %256, ptr noundef nonnull @.str.15, ptr noundef %257) #10
  %258 = load ptr, ptr @__stderrp, align 8
  %259 = call i64 @fwrite(ptr nonnull @.str.16, i64 12, i64 1, ptr %258)
  %260 = load ptr, ptr @__stderrp, align 8
  %261 = call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr %260)
  %262 = load ptr, ptr @__stderrp, align 8
  %263 = call i64 @fwrite(ptr nonnull @.str.18, i64 48, i64 1, ptr %262)
  %264 = load ptr, ptr @__stderrp, align 8
  %265 = call i64 @fwrite(ptr nonnull @.str.19, i64 50, i64 1, ptr %264)
  %266 = load ptr, ptr @__stderrp, align 8
  %267 = call i64 @fwrite(ptr nonnull @.str.20, i64 48, i64 1, ptr %266)
  %268 = load ptr, ptr @__stderrp, align 8
  %269 = call i64 @fwrite(ptr nonnull @.str.21, i64 56, i64 1, ptr %268)
  %270 = load ptr, ptr @__stderrp, align 8
  %271 = call i64 @fwrite(ptr nonnull @.str.22, i64 23, i64 1, ptr %270)
  %272 = load ptr, ptr @__stderrp, align 8
  %273 = call i64 @fwrite(ptr nonnull @.str.23, i64 66, i64 1, ptr %272)
  %274 = load ptr, ptr @__stderrp, align 8
  %275 = call i64 @fwrite(ptr nonnull @.str.24, i64 51, i64 1, ptr %274)
  %276 = load ptr, ptr @__stderrp, align 8
  %call12.i135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %276, ptr noundef nonnull @.str.25, i32 noundef 65000) #10
  %277 = load ptr, ptr @__stderrp, align 8
  %278 = call i64 @fwrite(ptr nonnull @.str.26, i64 56, i64 1, ptr %277)
  %279 = load ptr, ptr @__stderrp, align 8
  %280 = call i64 @fwrite(ptr nonnull @.str.27, i64 34, i64 1, ptr %279)
  call void @exit(i32 noundef 1) #11
  unreachable

if.end127:                                        ; preds = %if.end121
  %281 = load ptr, ptr @__stdoutp, align 8
  store ptr %281, ptr @outfile, align 8
  %282 = load ptr, ptr %comment_arg, align 8
  %cmp128 = icmp eq ptr %282, null
  br i1 %cmp128, label %if.then130, label %if.end156

if.then130:                                       ; preds = %if.end127
  %call131 = call dereferenceable_or_null(65000) ptr @malloc(i64 noundef 65000) #12
  store ptr %call131, ptr %comment_arg, align 8
  %cmp132 = icmp eq ptr %call131, null
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.then130
  %283 = load ptr, ptr @__stderrp, align 8
  %call135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end136:                                        ; preds = %if.then130
  store i32 0, ptr %comment_length, align 4
  %284 = load ptr, ptr %comment_file, align 8
  %cmp137.not = icmp eq ptr %284, null
  %285 = load ptr, ptr %comment_file, align 8
  %286 = load ptr, ptr @__stdinp, align 8
  %cond = select i1 %cmp137.not, ptr %286, ptr %285
  store ptr %cond, ptr %src_file, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end146, %if.end136
  %287 = load ptr, ptr %src_file, align 8
  %call139 = call i32 @getc(ptr noundef %287) #10
  store i32 %call139, ptr %c, align 4
  %cmp140.not = icmp eq i32 %call139, -1
  br i1 %cmp140.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %288 = load i32, ptr %comment_length, align 4
  %cmp142 = icmp ugt i32 %288, 64999
  br i1 %cmp142, label %if.then144, label %if.end146

if.then144:                                       ; preds = %while.body
  %289 = load ptr, ptr @__stderrp, align 8
  %call145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef nonnull @.str.12, i32 noundef 65000) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end146:                                        ; preds = %while.body
  %290 = load i32, ptr %c, align 4
  %conv147 = trunc i32 %290 to i8
  %291 = load ptr, ptr %comment_arg, align 8
  %292 = load i32, ptr %comment_length, align 4
  %inc148 = add i32 %292, 1
  store i32 %inc148, ptr %comment_length, align 4
  %idxprom149 = zext i32 %292 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %291, i64 %idxprom149
  store i8 %conv147, ptr %arrayidx150, align 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %293 = load ptr, ptr %comment_file, align 8
  %cmp151.not = icmp eq ptr %293, null
  br i1 %cmp151.not, label %if.end156, label %if.then153

if.then153:                                       ; preds = %while.end
  %294 = load ptr, ptr %comment_file, align 8
  %call154 = call i32 @fclose(ptr noundef %294) #10
  br label %if.end156

if.end156:                                        ; preds = %while.end, %if.then153, %if.end127
  %295 = load i32, ptr %keep_COM, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %keep_COM.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %marker.i)
  store i32 %295, ptr %keep_COM.addr.i, align 4
  %call.i139 = call i32 @first_marker()
  %cmp.i140.not = icmp eq i32 %call.i139, 216
  br i1 %cmp.i140.not, label %if.end.i143, label %if.then.i142

if.then.i142:                                     ; preds = %if.end156
  %296 = load ptr, ptr @__stderrp, align 8
  %call1.i141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %296, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end.i143:                                      ; preds = %if.end156
  call void @write_marker(i32 noundef 216)
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog.i, %if.end.i143
  %call2.i144 = call i32 @next_marker()
  store i32 %call2.i144, ptr %marker.i, align 4
  switch i32 %call2.i144, label %sw.default.i [
    i32 192, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 193, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 194, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 195, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 197, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 198, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 199, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 201, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 202, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 203, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 205, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 206, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 207, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 218, label %sw.bb3.i
    i32 217, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
    i32 254, label %sw.bb6.i
  ]

sw.bb3.i:                                         ; preds = %for.cond.i
  %297 = load ptr, ptr @__stderrp, align 8
  %call4.i145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %297, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #10
  call void @exit(i32 noundef 1) #11
  unreachable

sw.bb6.i:                                         ; preds = %for.cond.i
  %298 = load i32, ptr %keep_COM.addr.i, align 4
  %tobool.i146.not = icmp eq i32 %298, 0
  br i1 %tobool.i146.not, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %sw.bb6.i
  %299 = load i32, ptr %marker.i, align 4
  call void @write_marker(i32 noundef %299)
  call void @copy_variable()
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb6.i
  call void @skip_variable()
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.cond.i
  %300 = load i32, ptr %marker.i, align 4
  call void @write_marker(i32 noundef %300)
  call void @copy_variable()
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then7.i, %if.else.i, %sw.default.i
  br label %for.cond.i

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit: ; preds = %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i
  %storemerge162 = load i32, ptr %marker.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %keep_COM.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %marker.i)
  store i32 %storemerge162, ptr %marker, align 4
  %301 = load i32, ptr %comment_length, align 4
  %cmp158.not = icmp eq i32 %301, 0
  br i1 %cmp158.not, label %if.end168, label %if.then160

if.then160:                                       ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
  %302 = load ptr, ptr @outfile, align 8
  %call.i148 = call i32 @putc(i32 noundef 255, ptr noundef %302) #10
  %303 = load ptr, ptr @outfile, align 8
  %call1.i149 = call i32 @putc(i32 noundef 254, ptr noundef %303) #10
  %304 = load i32, ptr %comment_length, align 4
  %add = add i32 %304, 2
  %shr.i = lshr i32 %add, 8
  %and.i = and i32 %shr.i, 255
  %305 = load ptr, ptr @outfile, align 8
  %call.i150 = call i32 @putc(i32 noundef %and.i, ptr noundef %305) #10
  %and1.i = and i32 %add, 255
  %306 = load ptr, ptr @outfile, align 8
  %call2.i151 = call i32 @putc(i32 noundef %and1.i, ptr noundef %306) #10
  br label %while.cond161

while.cond161:                                    ; preds = %while.body164, %if.then160
  %307 = load i32, ptr %comment_length, align 4
  %cmp162.not = icmp eq i32 %307, 0
  br i1 %cmp162.not, label %if.end168, label %while.body164

while.body164:                                    ; preds = %while.cond161
  %308 = load ptr, ptr %comment_arg, align 8
  %incdec.ptr165 = getelementptr inbounds i8, ptr %308, i64 1
  store ptr %incdec.ptr165, ptr %comment_arg, align 8
  %309 = load i8, ptr %308, align 1
  %conv166 = sext i8 %309 to i32
  %310 = load ptr, ptr @outfile, align 8
  %call.i152 = call i32 @putc(i32 noundef %conv166, ptr noundef %310) #10
  %311 = load i32, ptr %comment_length, align 4
  %dec = add i32 %311, -1
  store i32 %dec, ptr %comment_length, align 4
  br label %while.cond161, !llvm.loop !10

if.end168:                                        ; preds = %while.cond161, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_9.exit
  %312 = load i32, ptr %marker, align 4
  %313 = load ptr, ptr @outfile, align 8
  %call.i154 = call i32 @putc(i32 noundef 255, ptr noundef %313) #10
  %314 = load ptr, ptr @outfile, align 8
  %call1.i155 = call i32 @putc(i32 noundef %312, ptr noundef %314) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i)
  br label %while.cond.i158

while.cond.i158:                                  ; preds = %while.body.i160, %if.end168
  %315 = load ptr, ptr @infile, align 8
  %call.i156 = call i32 @getc(ptr noundef %315) #10
  store i32 %call.i156, ptr %c.i, align 4
  %cmp.i157.not = icmp eq i32 %call.i156, -1
  br i1 %cmp.i157.not, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_14.exit, label %while.body.i160

while.body.i160:                                  ; preds = %while.cond.i158
  %316 = load i32, ptr %c.i, align 4
  %317 = load ptr, ptr @outfile, align 8
  %call1.i159 = call i32 @putc(i32 noundef %316, ptr noundef %317) #10
  br label %while.cond.i158, !llvm.loop !11

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_14.exit: ; preds = %while.cond.i158
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i)
  call void @exit(i32 noundef 0) #11
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
define internal void @write_marker(i32 noundef %marker) #0 {
entry:
  %0 = load ptr, ptr @outfile, align 8
  %call = call i32 @putc(i32 noundef 255, ptr noundef %0) #10
  %1 = load ptr, ptr @outfile, align 8
  %call1 = call i32 @putc(i32 noundef %marker, ptr noundef %1) #10
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
  %call = call i32 @getc(ptr noundef %0) #10
  %1 = load ptr, ptr @infile, align 8
  %call1 = call i32 @getc(ptr noundef %1) #10
  store i32 %call1, ptr %c2, align 4
  %cmp.not = icmp eq i32 %call, 255
  %2 = load i32, ptr %c2, align 4
  %cmp2.not = icmp eq i32 %2, 216
  %or.cond = select i1 %cmp.not, i1 %cmp2.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30) #10
  call void @exit(i32 noundef 1) #11
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
  %call.i = call i32 @getc(ptr noundef %0) #10
  store i32 %call.i, ptr %c.i, align 4
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_23.exit

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #10
  call void @exit(i32 noundef 1) #11
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_23.exit: ; preds = %entry
  %2 = load i32, ptr %c.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i)
  br label %while.cond

while.cond:                                       ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_24.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_23.exit
  %storemerge = phi i32 [ %2, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_23.exit ], [ %6, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_24.exit ]
  store i32 %storemerge, ptr %c, align 4
  %cmp.not = icmp eq i32 %storemerge, 255
  br i1 %cmp.not, label %do.body, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %discarded_bytes, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %discarded_bytes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i1)
  %4 = load ptr, ptr @infile, align 8
  %call.i2 = call i32 @getc(ptr noundef %4) #10
  store i32 %call.i2, ptr %c.i1, align 4
  %cmp.i3 = icmp eq i32 %call.i2, -1
  br i1 %cmp.i3, label %if.then.i5, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_24.exit

if.then.i5:                                       ; preds = %while.body
  %5 = load ptr, ptr @__stderrp, align 8
  %call1.i4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #10
  call void @exit(i32 noundef 1) #11
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_24.exit: ; preds = %while.body
  %6 = load i32, ptr %c.i1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i1)
  br label %while.cond, !llvm.loop !12

do.body:                                          ; preds = %while.cond, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_25.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i6)
  %7 = load ptr, ptr @infile, align 8
  %call.i7 = call i32 @getc(ptr noundef %7) #10
  store i32 %call.i7, ptr %c.i6, align 4
  %cmp.i8 = icmp eq i32 %call.i7, -1
  br i1 %cmp.i8, label %if.then.i10, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_25.exit

if.then.i10:                                      ; preds = %do.body
  %8 = load ptr, ptr @__stderrp, align 8
  %call1.i9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #10
  call void @exit(i32 noundef 1) #11
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_25.exit: ; preds = %do.body
  %9 = load i32, ptr %c.i6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i6)
  store i32 %9, ptr %c, align 4
  %10 = load i32, ptr %c, align 4
  %cmp3 = icmp eq i32 %10, 255
  br i1 %cmp3, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_25.exit
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
  %c1.i = alloca i32, align 4
  %c2.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2.i)
  %0 = load ptr, ptr @infile, align 8
  %call.i = call i32 @getc(ptr noundef %0) #10
  store i32 %call.i, ptr %c1.i, align 4
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end.i:                                         ; preds = %entry
  %2 = load ptr, ptr @infile, align 8
  %call2.i = call i32 @getc(ptr noundef %2) #10
  store i32 %call2.i, ptr %c2.i, align 4
  %cmp3.i = icmp eq i32 %call2.i, -1
  br i1 %cmp3.i, label %if.then4.i, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_26.exit

if.then4.i:                                       ; preds = %if.end.i
  %3 = load ptr, ptr @__stderrp, align 8
  %call5.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #10
  call void @exit(i32 noundef 1) #11
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_26.exit: ; preds = %if.end.i
  %4 = load i32, ptr %c1.i, align 4
  %shl.i = shl i32 %4, 8
  %5 = load i32, ptr %c2.i, align 4
  %add.i = add i32 %shl.i, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2.i)
  store i32 %add.i, ptr %length, align 4
  %shr.i = lshr i32 %add.i, 8
  %and.i = and i32 %shr.i, 255
  %6 = load ptr, ptr @outfile, align 8
  %call.i1 = call i32 @putc(i32 noundef %and.i, ptr noundef %6) #10
  %and1.i = and i32 %add.i, 255
  %7 = load ptr, ptr @outfile, align 8
  %call2.i2 = call i32 @putc(i32 noundef %and1.i, ptr noundef %7) #10
  %8 = load i32, ptr %length, align 4
  %cmp = icmp ult i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_26.exit
  %9 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.33) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_26.exit
  %10 = load i32, ptr %length, align 4
  %sub = add i32 %10, -2
  br label %while.cond

while.cond:                                       ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_28.exit, %if.end
  %storemerge = phi i32 [ %sub, %if.end ], [ %dec, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_28.exit ]
  store i32 %storemerge, ptr %length, align 4
  %cmp2.not = icmp eq i32 %storemerge, 0
  br i1 %cmp2.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i)
  %11 = load ptr, ptr @infile, align 8
  %call.i3 = call i32 @getc(ptr noundef %11) #10
  store i32 %call.i3, ptr %c.i, align 4
  %cmp.i4 = icmp eq i32 %call.i3, -1
  br i1 %cmp.i4, label %if.then.i6, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_28.exit

if.then.i6:                                       ; preds = %while.body
  %12 = load ptr, ptr @__stderrp, align 8
  %call1.i5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #10
  call void @exit(i32 noundef 1) #11
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_28.exit: ; preds = %while.body
  %13 = load i32, ptr %c.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i)
  %14 = load ptr, ptr @outfile, align 8
  %call.i8 = call i32 @putc(i32 noundef %13, ptr noundef %14) #10
  %15 = load i32, ptr %length, align 4
  %dec = add i32 %15, -1
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @skip_variable() #0 {
entry:
  %c1.i = alloca i32, align 4
  %c2.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2.i)
  %0 = load ptr, ptr @infile, align 8
  %call.i = call i32 @getc(ptr noundef %0) #10
  store i32 %call.i, ptr %c1.i, align 4
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end.i:                                         ; preds = %entry
  %2 = load ptr, ptr @infile, align 8
  %call2.i = call i32 @getc(ptr noundef %2) #10
  store i32 %call2.i, ptr %c2.i, align 4
  %cmp3.i = icmp eq i32 %call2.i, -1
  br i1 %cmp3.i, label %if.then4.i, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_30.exit

if.then4.i:                                       ; preds = %if.end.i
  %3 = load ptr, ptr @__stderrp, align 8
  %call5.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #10
  call void @exit(i32 noundef 1) #11
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_30.exit: ; preds = %if.end.i
  %4 = load i32, ptr %c1.i, align 4
  %shl.i = shl i32 %4, 8
  %5 = load i32, ptr %c2.i, align 4
  %add.i = add i32 %shl.i, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2.i)
  store i32 %add.i, ptr %length, align 4
  %cmp = icmp ult i32 %add.i, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_30.exit
  %6 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.33) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_30.exit
  %7 = load i32, ptr %length, align 4
  %sub = add i32 %7, -2
  br label %while.cond

while.cond:                                       ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_31.exit, %if.end
  %storemerge = phi i32 [ %sub, %if.end ], [ %dec, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_31.exit ]
  store i32 %storemerge, ptr %length, align 4
  %cmp2.not = icmp eq i32 %storemerge, 0
  br i1 %cmp2.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr @infile, align 8
  %call.i1 = call i32 @getc(ptr noundef %8) #10
  %cmp.i2 = icmp eq i32 %call.i1, -1
  br i1 %cmp.i2, label %if.then.i4, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_31.exit

if.then.i4:                                       ; preds = %while.body
  %9 = load ptr, ptr @__stderrp, align 8
  %call1.i3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #10
  call void @exit(i32 noundef 1) #11
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_wrjpgcom_31.exit: ; preds = %while.body
  %10 = load i32, ptr %length, align 4
  %dec = add i32 %10, -1
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret void
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
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }

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
