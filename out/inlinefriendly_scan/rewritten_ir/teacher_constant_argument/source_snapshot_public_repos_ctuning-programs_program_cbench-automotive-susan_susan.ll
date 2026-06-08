; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_ctuning-programs_program_cbench-automotive-susan_susan.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-susan/susan.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"-s : Smoothing mode (default)\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"-e : Edges mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"-c : Corners mode\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"See source code for more information about setting the thresholds\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\0A\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [111 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [108 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [91 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\0A\00", align 1
@__stderrp = external global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"as a float: see top \22defines\22 section.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"CT_REPEAT_MAIN\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"No argument following -d\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"No argument following -t\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\00", align 1
@str.1 = private unnamed_addr constant [30 x i8] c"-s : Smoothing mode (default)\00", align 1
@str.2 = private unnamed_addr constant [16 x i8] c"-e : Edges mode\00", align 1
@str.3 = private unnamed_addr constant [19 x i8] c"-c : Corners mode\0A\00", align 1
@str.4 = private unnamed_addr constant [66 x i8] c"See source code for more information about setting the thresholds\00", align 1
@str.5 = private unnamed_addr constant [59 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\00", align 1
@str.6 = private unnamed_addr constant [106 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\00", align 1
@str.7 = private unnamed_addr constant [48 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\00", align 1
@str.8 = private unnamed_addr constant [78 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\00", align 1
@str.9 = private unnamed_addr constant [110 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\00", align 1
@str.10 = private unnamed_addr constant [107 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\00", align 1
@str.11 = private unnamed_addr constant [90 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\00", align 1
@str.12 = private unnamed_addr constant [76 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\00", align 1
@str.13 = private unnamed_addr constant [60 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\00", align 1
@str.14 = private unnamed_addr constant [39 x i8] c"as a float: see top \22defines\22 section.\00", align 1
@str.15 = private unnamed_addr constant [25 x i8] c"No argument following -t\00", align 1
@str.16 = private unnamed_addr constant [25 x i8] c"No argument following -d\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @usage() #0 {
entry:
  %puts = call i32 @puts(ptr nonnull @str)
  %puts1 = call i32 @puts(ptr nonnull @str.1)
  %puts2 = call i32 @puts(ptr nonnull @str.2)
  %puts3 = call i32 @puts(ptr nonnull @str.3)
  %puts4 = call i32 @puts(ptr nonnull @str.4)
  %puts5 = call i32 @puts(ptr nonnull @str.5)
  %puts6 = call i32 @puts(ptr nonnull @str.6)
  %puts7 = call i32 @puts(ptr nonnull @str.7)
  %puts8 = call i32 @puts(ptr nonnull @str.8)
  %puts9 = call i32 @puts(ptr nonnull @str.9)
  %puts10 = call i32 @puts(ptr nonnull @str.10)
  %puts11 = call i32 @puts(ptr nonnull @str.11)
  %puts12 = call i32 @puts(ptr nonnull @str.12)
  call void @exit(i32 noundef 0) #8
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @getint(ptr noundef %fd) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %dummy = alloca [10000 x i8], align 1
  store ptr %fd, ptr %fd.addr, align 8
  %call = call i32 @getc(ptr noundef %fd) #9
  br label %while.body

while.body:                                       ; preds = %if.end9, %entry
  %storemerge = phi i32 [ %call, %entry ], [ %call10, %if.end9 ]
  store i32 %storemerge, ptr %c, align 4
  %cmp = icmp eq i32 %storemerge, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %0 = load ptr, ptr %fd.addr, align 8
  %call1 = call ptr @fgets(ptr noundef nonnull %dummy, i32 noundef 9000, ptr noundef %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %1 = load i32, ptr %c, align 4
  %cmp2 = icmp eq i32 %1, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #9
  call void @exit(i32 noundef 0) #8
  unreachable

if.end5:                                          ; preds = %if.end
  %3 = load i32, ptr %c, align 4
  %cmp6 = icmp sgt i32 %3, 47
  %4 = load i32, ptr %c, align 4
  %cmp7 = icmp slt i32 %4, 58
  %or.cond = select i1 %cmp6, i1 %cmp7, i1 false
  br i1 %or.cond, label %while.end, label %if.end9

if.end9:                                          ; preds = %if.end5
  %5 = load ptr, ptr %fd.addr, align 8
  %call10 = call i32 @getc(ptr noundef %5) #9
  br label %while.body

while.end:                                        ; preds = %if.end5
  store i32 0, ptr %i, align 4
  br label %while.body11

while.body11:                                     ; preds = %if.end15, %while.end
  %6 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %6, 10
  %7 = load i32, ptr %c, align 4
  %sub = add nsw i32 %7, -48
  %add = add nsw i32 %mul, %sub
  store i32 %add, ptr %i, align 4
  %8 = load ptr, ptr %fd.addr, align 8
  %call12 = call i32 @getc(ptr noundef %8) #9
  store i32 %call12, ptr %c, align 4
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body11
  %9 = load i32, ptr %i, align 4
  br label %return

if.end15:                                         ; preds = %while.body11
  %10 = load i32, ptr %c, align 4
  %cmp16 = icmp slt i32 %10, 48
  %11 = load i32, ptr %c, align 4
  %cmp17 = icmp sgt i32 %11, 57
  %or.cond2 = select i1 %cmp16, i1 true, i1 %cmp17
  br i1 %or.cond2, label %while.end20, label %while.body11

while.end20:                                      ; preds = %if.end15
  %12 = load i32, ptr %i, align 4
  br label %return

return:                                           ; preds = %while.end20, %if.then14
  %storemerge1 = phi i32 [ %12, %while.end20 ], [ %9, %if.then14 ]
  ret i32 %storemerge1
}

declare i32 @getc(ptr noundef) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @get_image(ptr noundef %filename, ptr noundef %in, ptr noundef %x_size, ptr noundef %y_size) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %x_size.addr = alloca ptr, align 8
  %y_size.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %header = alloca [100 x i8], align 1
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %x_size, ptr %x_size.addr, align 8
  store ptr %y_size, ptr %y_size.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %filename, ptr noundef nonnull @.str.15) #9
  store ptr %call, ptr %fd, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %1) #9
  call void @exit(i32 noundef 0) #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %fd, align 8
  %call2 = call i32 @fgetc(ptr noundef %2) #9
  %conv = trunc i32 %call2 to i8
  store i8 %conv, ptr %header, align 1
  %call3 = call i32 @fgetc(ptr noundef %2) #9
  %conv4 = trunc i32 %call3 to i8
  %arrayidx5 = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 1
  store i8 %conv4, ptr %arrayidx5, align 1
  %sext.mask = and i32 %call2, 255
  %cmp8 = icmp eq i32 %sext.mask, 80
  %arrayidx10 = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 1
  %3 = load i8, ptr %arrayidx10, align 1
  %cmp12 = icmp eq i8 %3, 53
  %or.cond = select i1 %cmp8, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr %filename.addr, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef %5) #9
  call void @exit(i32 noundef 0) #8
  unreachable

if.end16:                                         ; preds = %if.end
  %6 = load ptr, ptr %fd, align 8
  %call17 = call i32 @getint(ptr noundef %6)
  %7 = load ptr, ptr %x_size.addr, align 8
  store i32 %call17, ptr %7, align 4
  %call18 = call i32 @getint(ptr noundef %6)
  %8 = load ptr, ptr %y_size.addr, align 8
  store i32 %call18, ptr %8, align 4
  %9 = load ptr, ptr %fd, align 8
  %call19 = call i32 @getint(ptr noundef %9)
  %10 = load ptr, ptr %x_size.addr, align 8
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %8, align 4
  %mul = mul nsw i32 %11, %12
  %conv20 = sext i32 %mul to i64
  %call21 = call ptr @malloc(i64 noundef %conv20) #10
  %13 = load ptr, ptr %in.addr, align 8
  store ptr %call21, ptr %13, align 8
  %14 = load ptr, ptr %x_size.addr, align 8
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %y_size.addr, align 8
  %17 = load i32, ptr %16, align 4
  %mul22 = mul nsw i32 %15, %17
  %conv23 = sext i32 %mul22 to i64
  %18 = load ptr, ptr %fd, align 8
  %call24 = call i64 @fread(ptr noundef %call21, i64 noundef 1, i64 noundef %conv23, ptr noundef %18) #9
  %cmp25 = icmp eq i64 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end16
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = load ptr, ptr %filename.addr, align 8
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef %20) #9
  call void @exit(i32 noundef 0) #8
  unreachable

if.end29:                                         ; preds = %if.end16
  %21 = load ptr, ptr %fd, align 8
  %call30 = call i32 @fclose(ptr noundef %21) #9
  ret void
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fgetc(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @put_image(ptr noundef %filename, ptr noundef %in, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %fd = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  %call = call ptr @"\01_fopen"(ptr noundef %filename, ptr noundef nonnull @.str.19) #9
  store ptr %call, ptr %fd, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %1) #9
  call void @exit(i32 noundef 0) #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %fd, align 8
  %3 = call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %2)
  %4 = load i32, ptr %x_size.addr, align 4
  %5 = load i32, ptr %y_size.addr, align 4
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %4, i32 noundef %5) #9
  %6 = call i64 @fwrite(ptr nonnull @.str.23, i64 4, i64 1, ptr %2)
  %7 = load ptr, ptr %in.addr, align 8
  %mul = mul nsw i32 %4, %5
  %conv = sext i32 %mul to i64
  %8 = load ptr, ptr %fd, align 8
  %call5 = call i64 @"\01_fwrite"(ptr noundef %7, i64 noundef %conv, i64 noundef 1, ptr noundef %8) #9
  %cmp6.not = icmp eq i64 %call5, 1
  br i1 %cmp6.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %9 = load ptr, ptr @__stderrp, align 8
  %10 = load ptr, ptr %filename.addr, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.24, ptr noundef %10) #9
  call void @exit(i32 noundef 0) #8
  unreachable

if.end10:                                         ; preds = %if.end
  %11 = load ptr, ptr %fd, align 8
  %call11 = call i32 @fclose(ptr noundef %11) #9
  ret void
}

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @int_to_uchar(ptr noundef %r, ptr noundef %in, i32 noundef %size) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %max_r = alloca i32, align 4
  %min_r = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr %r, align 4
  store i32 %0, ptr %max_r, align 4
  store i32 %0, ptr %min_r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %r.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx2, align 4
  %5 = load i32, ptr %max_r, align 4
  %cmp3 = icmp sgt i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %r.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 %idxprom4
  %8 = load i32, ptr %arrayidx5, align 4
  store i32 %8, ptr %max_r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load ptr, ptr %r.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %9, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4
  %12 = load i32, ptr %min_r, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %if.end
  %13 = load ptr, ptr %r.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %13, i64 %idxprom10
  %15 = load i32, ptr %arrayidx11, align 4
  store i32 %15, ptr %min_r, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then9
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr %min_r, align 4
  %18 = load i32, ptr %max_r, align 4
  %sub = sub nsw i32 %18, %17
  store i32 %sub, ptr %max_r, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.body15, %for.end
  %storemerge1 = phi i32 [ 0, %for.end ], [ %inc22, %for.body15 ]
  store i32 %storemerge1, ptr %i, align 4
  %19 = load i32, ptr %size.addr, align 4
  %cmp14 = icmp slt i32 %storemerge1, %19
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %20 = load ptr, ptr %r.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %20, i64 %idxprom16
  %22 = load i32, ptr %arrayidx17, align 4
  %23 = load i32, ptr %min_r, align 4
  %sub18 = sub nsw i32 %22, %23
  %mul = mul nsw i32 %sub18, 255
  %24 = load i32, ptr %max_r, align 4
  %div = sdiv i32 %mul, %24
  %conv = trunc i32 %div to i8
  %25 = load ptr, ptr %in.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %26 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %25, i64 %idxprom19
  store i8 %conv, ptr %arrayidx20, align 1
  %27 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %27, 1
  br label %for.cond13, !llvm.loop !8

for.end23:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @setup_brightness_lut(ptr noundef %bp, i32 noundef %thresh, i32 noundef %form) #0 {
entry:
  %bp.addr = alloca ptr, align 8
  %thresh.addr = alloca i32, align 4
  %form.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca double, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %thresh, ptr %thresh.addr, align 4
  store i32 %form, ptr %form.addr, align 4
  %call = call dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #10
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 258
  store ptr %add.ptr, ptr %bp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %storemerge = phi i32 [ -256, %entry ], [ %inc, %if.end ]
  store i32 %storemerge, ptr %k, align 4
  %cmp = icmp slt i32 %storemerge, 257
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %k, align 4
  %conv = sitofp i32 %0 to float
  %1 = load i32, ptr %thresh.addr, align 4
  %conv1 = sitofp i32 %1 to float
  %div = fdiv float %conv, %conv1
  %conv2 = fpext float %div to double
  %mul = fmul double %conv2, %conv2
  store double %mul, ptr %temp, align 8
  %2 = load i32, ptr %form.addr, align 4
  %cmp3 = icmp eq i32 %2, 6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load double, ptr %temp, align 8
  %mul5 = fmul double %3, %3
  %mul6 = fmul double %mul5, %3
  store double %mul6, ptr %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load double, ptr %temp, align 8
  %fneg = fneg double %4
  %5 = call double @llvm.exp.f64(double %fneg)
  %mul7 = fmul double %5, 1.000000e+02
  store double %mul7, ptr %temp, align 8
  %conv8 = fptoui double %mul7 to i8
  %6 = load ptr, ptr %bp.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %k, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store i8 %conv8, ptr %add.ptr9, align 1
  %9 = load i32, ptr %k, align 4
  %inc = add nsw i32 %9, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #4

; Function Attrs: nounwind ssp uwtable
define void @free_brightness_lut(ptr noundef %bp) #0 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %bp, i64 -258
  call void @free(ptr noundef nonnull %add.ptr) #9
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @susan_principle(ptr noundef %in, ptr noundef %r, ptr noundef %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %max_no, ptr %max_no.addr, align 4
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %x_size, %y_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %0 = load ptr, ptr %r.addr, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %r, i32 noundef 0, i64 noundef %mul1, i64 noundef %1) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc285, %entry
  %storemerge = phi i32 [ 3, %entry ], [ %inc286, %for.inc285 ]
  store i32 %storemerge, ptr %i, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %sub = add nsw i32 %2, -3
  %cmp = icmp slt i32 %storemerge, %sub
  br i1 %cmp, label %for.cond3, label %for.end287

for.cond3:                                        ; preds = %for.cond, %for.inc
  %storemerge1 = phi i32 [ %inc, %for.inc ], [ 3, %for.cond ]
  store i32 %storemerge1, ptr %j, align 4
  %3 = load i32, ptr %x_size.addr, align 4
  %sub4 = add nsw i32 %3, -3
  %cmp5 = icmp slt i32 %storemerge1, %sub4
  br i1 %cmp5, label %for.body7, label %for.inc285

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load i32, ptr %i, align 4
  %sub8 = add nsw i32 %5, -3
  %6 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %6
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %7 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %7 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %10, %11
  %12 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %12
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  %idx.ext15 = zext i8 %13 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %8, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %15 = load i8, ptr %14, align 1
  %idx.ext18 = zext i8 %15 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %16 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %16 to i32
  %17 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %17, %conv20
  store i32 %add21, ptr %n, align 4
  %18 = load ptr, ptr %cp, align 8
  %19 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %20 = load i8, ptr %19, align 1
  %idx.ext24 = zext i8 %20 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %18, i64 %idx.neg25
  %21 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %21 to i32
  %22 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %22, %conv27
  store i32 %add28, ptr %n, align 4
  %23 = load ptr, ptr %cp, align 8
  %24 = load ptr, ptr %p, align 8
  %25 = load i8, ptr %24, align 1
  %idx.ext30 = zext i8 %25 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %23, i64 %idx.neg31
  %26 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %26 to i32
  %27 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %27, %conv33
  store i32 %add34, ptr %n, align 4
  %28 = load i32, ptr %x_size.addr, align 4
  %sub35 = add nsw i32 %28, -3
  %29 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %29, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %30 = load ptr, ptr %cp, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 1
  store ptr %incdec.ptr38, ptr %p, align 8
  %31 = load i8, ptr %add.ptr37, align 1
  %idx.ext40 = zext i8 %31 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %30, i64 %idx.neg41
  %32 = load i8, ptr %add.ptr42, align 1
  %conv43 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add44 = add nsw i32 %33, %conv43
  store i32 %add44, ptr %n, align 4
  %34 = load ptr, ptr %cp, align 8
  %35 = load ptr, ptr %p, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr45, ptr %p, align 8
  %36 = load i8, ptr %35, align 1
  %idx.ext47 = zext i8 %36 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %34, i64 %idx.neg48
  %37 = load i8, ptr %add.ptr49, align 1
  %conv50 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4
  %add51 = add nsw i32 %38, %conv50
  store i32 %add51, ptr %n, align 4
  %39 = load ptr, ptr %cp, align 8
  %40 = load ptr, ptr %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %incdec.ptr52, ptr %p, align 8
  %41 = load i8, ptr %40, align 1
  %idx.ext54 = zext i8 %41 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %39, i64 %idx.neg55
  %42 = load i8, ptr %add.ptr56, align 1
  %conv57 = zext i8 %42 to i32
  %43 = load i32, ptr %n, align 4
  %add58 = add nsw i32 %43, %conv57
  store i32 %add58, ptr %n, align 4
  %44 = load ptr, ptr %cp, align 8
  %45 = load ptr, ptr %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr59, ptr %p, align 8
  %46 = load i8, ptr %45, align 1
  %idx.ext61 = zext i8 %46 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %44, i64 %idx.neg62
  %47 = load i8, ptr %add.ptr63, align 1
  %conv64 = zext i8 %47 to i32
  %48 = load i32, ptr %n, align 4
  %add65 = add nsw i32 %48, %conv64
  store i32 %add65, ptr %n, align 4
  %49 = load ptr, ptr %cp, align 8
  %50 = load ptr, ptr %p, align 8
  %51 = load i8, ptr %50, align 1
  %idx.ext67 = zext i8 %51 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %49, i64 %idx.neg68
  %52 = load i8, ptr %add.ptr69, align 1
  %conv70 = zext i8 %52 to i32
  %53 = load i32, ptr %n, align 4
  %add71 = add nsw i32 %53, %conv70
  store i32 %add71, ptr %n, align 4
  %54 = load i32, ptr %x_size.addr, align 4
  %sub72 = add nsw i32 %54, -5
  %55 = load ptr, ptr %p, align 8
  %idx.ext73 = sext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %55, i64 %idx.ext73
  store ptr %add.ptr74, ptr %p, align 8
  %56 = load ptr, ptr %cp, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %add.ptr74, i64 1
  store ptr %incdec.ptr75, ptr %p, align 8
  %57 = load i8, ptr %add.ptr74, align 1
  %idx.ext77 = zext i8 %57 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %56, i64 %idx.neg78
  %58 = load i8, ptr %add.ptr79, align 1
  %conv80 = zext i8 %58 to i32
  %59 = load i32, ptr %n, align 4
  %add81 = add nsw i32 %59, %conv80
  store i32 %add81, ptr %n, align 4
  %60 = load ptr, ptr %cp, align 8
  %61 = load ptr, ptr %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr82, ptr %p, align 8
  %62 = load i8, ptr %61, align 1
  %idx.ext84 = zext i8 %62 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %60, i64 %idx.neg85
  %63 = load i8, ptr %add.ptr86, align 1
  %conv87 = zext i8 %63 to i32
  %64 = load i32, ptr %n, align 4
  %add88 = add nsw i32 %64, %conv87
  store i32 %add88, ptr %n, align 4
  %65 = load ptr, ptr %cp, align 8
  %66 = load ptr, ptr %p, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr89, ptr %p, align 8
  %67 = load i8, ptr %66, align 1
  %idx.ext91 = zext i8 %67 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %65, i64 %idx.neg92
  %68 = load i8, ptr %add.ptr93, align 1
  %conv94 = zext i8 %68 to i32
  %69 = load i32, ptr %n, align 4
  %add95 = add nsw i32 %69, %conv94
  store i32 %add95, ptr %n, align 4
  %70 = load ptr, ptr %cp, align 8
  %71 = load ptr, ptr %p, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %incdec.ptr96, ptr %p, align 8
  %72 = load i8, ptr %71, align 1
  %idx.ext98 = zext i8 %72 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %70, i64 %idx.neg99
  %73 = load i8, ptr %add.ptr100, align 1
  %conv101 = zext i8 %73 to i32
  %74 = load i32, ptr %n, align 4
  %add102 = add nsw i32 %74, %conv101
  store i32 %add102, ptr %n, align 4
  %75 = load ptr, ptr %cp, align 8
  %76 = load ptr, ptr %p, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr103, ptr %p, align 8
  %77 = load i8, ptr %76, align 1
  %idx.ext105 = zext i8 %77 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %75, i64 %idx.neg106
  %78 = load i8, ptr %add.ptr107, align 1
  %conv108 = zext i8 %78 to i32
  %79 = load i32, ptr %n, align 4
  %add109 = add nsw i32 %79, %conv108
  store i32 %add109, ptr %n, align 4
  %80 = load ptr, ptr %cp, align 8
  %81 = load ptr, ptr %p, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %incdec.ptr110, ptr %p, align 8
  %82 = load i8, ptr %81, align 1
  %idx.ext112 = zext i8 %82 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %80, i64 %idx.neg113
  %83 = load i8, ptr %add.ptr114, align 1
  %conv115 = zext i8 %83 to i32
  %84 = load i32, ptr %n, align 4
  %add116 = add nsw i32 %84, %conv115
  store i32 %add116, ptr %n, align 4
  %85 = load ptr, ptr %cp, align 8
  %86 = load ptr, ptr %p, align 8
  %87 = load i8, ptr %86, align 1
  %idx.ext118 = zext i8 %87 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %85, i64 %idx.neg119
  %88 = load i8, ptr %add.ptr120, align 1
  %conv121 = zext i8 %88 to i32
  %89 = load i32, ptr %n, align 4
  %add122 = add nsw i32 %89, %conv121
  store i32 %add122, ptr %n, align 4
  %90 = load i32, ptr %x_size.addr, align 4
  %sub123 = add nsw i32 %90, -6
  %91 = load ptr, ptr %p, align 8
  %idx.ext124 = sext i32 %sub123 to i64
  %add.ptr125 = getelementptr inbounds i8, ptr %91, i64 %idx.ext124
  store ptr %add.ptr125, ptr %p, align 8
  %92 = load ptr, ptr %cp, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %add.ptr125, i64 1
  store ptr %incdec.ptr126, ptr %p, align 8
  %93 = load i8, ptr %add.ptr125, align 1
  %idx.ext128 = zext i8 %93 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %92, i64 %idx.neg129
  %94 = load i8, ptr %add.ptr130, align 1
  %conv131 = zext i8 %94 to i32
  %95 = load i32, ptr %n, align 4
  %add132 = add nsw i32 %95, %conv131
  store i32 %add132, ptr %n, align 4
  %96 = load ptr, ptr %cp, align 8
  %97 = load ptr, ptr %p, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %incdec.ptr133, ptr %p, align 8
  %98 = load i8, ptr %97, align 1
  %idx.ext135 = zext i8 %98 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %96, i64 %idx.neg136
  %99 = load i8, ptr %add.ptr137, align 1
  %conv138 = zext i8 %99 to i32
  %100 = load i32, ptr %n, align 4
  %add139 = add nsw i32 %100, %conv138
  store i32 %add139, ptr %n, align 4
  %101 = load ptr, ptr %cp, align 8
  %102 = load ptr, ptr %p, align 8
  %103 = load i8, ptr %102, align 1
  %idx.ext141 = zext i8 %103 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %101, i64 %idx.neg142
  %104 = load i8, ptr %add.ptr143, align 1
  %conv144 = zext i8 %104 to i32
  %105 = load i32, ptr %n, align 4
  %add145 = add nsw i32 %105, %conv144
  store i32 %add145, ptr %n, align 4
  %106 = load ptr, ptr %p, align 8
  %add.ptr146 = getelementptr inbounds i8, ptr %106, i64 2
  store ptr %add.ptr146, ptr %p, align 8
  %107 = load ptr, ptr %cp, align 8
  %incdec.ptr147 = getelementptr inbounds i8, ptr %106, i64 3
  store ptr %incdec.ptr147, ptr %p, align 8
  %108 = load i8, ptr %add.ptr146, align 1
  %idx.ext149 = zext i8 %108 to i64
  %idx.neg150 = sub nsw i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %107, i64 %idx.neg150
  %109 = load i8, ptr %add.ptr151, align 1
  %conv152 = zext i8 %109 to i32
  %110 = load i32, ptr %n, align 4
  %add153 = add nsw i32 %110, %conv152
  store i32 %add153, ptr %n, align 4
  %111 = load ptr, ptr %cp, align 8
  %112 = load ptr, ptr %p, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %incdec.ptr154, ptr %p, align 8
  %113 = load i8, ptr %112, align 1
  %idx.ext156 = zext i8 %113 to i64
  %idx.neg157 = sub nsw i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, ptr %111, i64 %idx.neg157
  %114 = load i8, ptr %add.ptr158, align 1
  %conv159 = zext i8 %114 to i32
  %115 = load i32, ptr %n, align 4
  %add160 = add nsw i32 %115, %conv159
  store i32 %add160, ptr %n, align 4
  %116 = load ptr, ptr %cp, align 8
  %117 = load ptr, ptr %p, align 8
  %118 = load i8, ptr %117, align 1
  %idx.ext162 = zext i8 %118 to i64
  %idx.neg163 = sub nsw i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, ptr %116, i64 %idx.neg163
  %119 = load i8, ptr %add.ptr164, align 1
  %conv165 = zext i8 %119 to i32
  %120 = load i32, ptr %n, align 4
  %add166 = add nsw i32 %120, %conv165
  store i32 %add166, ptr %n, align 4
  %121 = load i32, ptr %x_size.addr, align 4
  %sub167 = add nsw i32 %121, -6
  %122 = load ptr, ptr %p, align 8
  %idx.ext168 = sext i32 %sub167 to i64
  %add.ptr169 = getelementptr inbounds i8, ptr %122, i64 %idx.ext168
  store ptr %add.ptr169, ptr %p, align 8
  %123 = load ptr, ptr %cp, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %add.ptr169, i64 1
  store ptr %incdec.ptr170, ptr %p, align 8
  %124 = load i8, ptr %add.ptr169, align 1
  %idx.ext172 = zext i8 %124 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %123, i64 %idx.neg173
  %125 = load i8, ptr %add.ptr174, align 1
  %conv175 = zext i8 %125 to i32
  %126 = load i32, ptr %n, align 4
  %add176 = add nsw i32 %126, %conv175
  store i32 %add176, ptr %n, align 4
  %127 = load ptr, ptr %cp, align 8
  %128 = load ptr, ptr %p, align 8
  %incdec.ptr177 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %incdec.ptr177, ptr %p, align 8
  %129 = load i8, ptr %128, align 1
  %idx.ext179 = zext i8 %129 to i64
  %idx.neg180 = sub nsw i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, ptr %127, i64 %idx.neg180
  %130 = load i8, ptr %add.ptr181, align 1
  %conv182 = zext i8 %130 to i32
  %131 = load i32, ptr %n, align 4
  %add183 = add nsw i32 %131, %conv182
  store i32 %add183, ptr %n, align 4
  %132 = load ptr, ptr %cp, align 8
  %133 = load ptr, ptr %p, align 8
  %incdec.ptr184 = getelementptr inbounds i8, ptr %133, i64 1
  store ptr %incdec.ptr184, ptr %p, align 8
  %134 = load i8, ptr %133, align 1
  %idx.ext186 = zext i8 %134 to i64
  %idx.neg187 = sub nsw i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, ptr %132, i64 %idx.neg187
  %135 = load i8, ptr %add.ptr188, align 1
  %conv189 = zext i8 %135 to i32
  %136 = load i32, ptr %n, align 4
  %add190 = add nsw i32 %136, %conv189
  store i32 %add190, ptr %n, align 4
  %137 = load ptr, ptr %cp, align 8
  %138 = load ptr, ptr %p, align 8
  %incdec.ptr191 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %incdec.ptr191, ptr %p, align 8
  %139 = load i8, ptr %138, align 1
  %idx.ext193 = zext i8 %139 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %137, i64 %idx.neg194
  %140 = load i8, ptr %add.ptr195, align 1
  %conv196 = zext i8 %140 to i32
  %141 = load i32, ptr %n, align 4
  %add197 = add nsw i32 %141, %conv196
  store i32 %add197, ptr %n, align 4
  %142 = load ptr, ptr %cp, align 8
  %143 = load ptr, ptr %p, align 8
  %incdec.ptr198 = getelementptr inbounds i8, ptr %143, i64 1
  store ptr %incdec.ptr198, ptr %p, align 8
  %144 = load i8, ptr %143, align 1
  %idx.ext200 = zext i8 %144 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %142, i64 %idx.neg201
  %145 = load i8, ptr %add.ptr202, align 1
  %conv203 = zext i8 %145 to i32
  %146 = load i32, ptr %n, align 4
  %add204 = add nsw i32 %146, %conv203
  store i32 %add204, ptr %n, align 4
  %147 = load ptr, ptr %cp, align 8
  %148 = load ptr, ptr %p, align 8
  %incdec.ptr205 = getelementptr inbounds i8, ptr %148, i64 1
  store ptr %incdec.ptr205, ptr %p, align 8
  %149 = load i8, ptr %148, align 1
  %idx.ext207 = zext i8 %149 to i64
  %idx.neg208 = sub nsw i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, ptr %147, i64 %idx.neg208
  %150 = load i8, ptr %add.ptr209, align 1
  %conv210 = zext i8 %150 to i32
  %151 = load i32, ptr %n, align 4
  %add211 = add nsw i32 %151, %conv210
  store i32 %add211, ptr %n, align 4
  %152 = load ptr, ptr %cp, align 8
  %153 = load ptr, ptr %p, align 8
  %154 = load i8, ptr %153, align 1
  %idx.ext213 = zext i8 %154 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %152, i64 %idx.neg214
  %155 = load i8, ptr %add.ptr215, align 1
  %conv216 = zext i8 %155 to i32
  %156 = load i32, ptr %n, align 4
  %add217 = add nsw i32 %156, %conv216
  store i32 %add217, ptr %n, align 4
  %157 = load i32, ptr %x_size.addr, align 4
  %sub218 = add nsw i32 %157, -5
  %158 = load ptr, ptr %p, align 8
  %idx.ext219 = sext i32 %sub218 to i64
  %add.ptr220 = getelementptr inbounds i8, ptr %158, i64 %idx.ext219
  store ptr %add.ptr220, ptr %p, align 8
  %159 = load ptr, ptr %cp, align 8
  %incdec.ptr221 = getelementptr inbounds i8, ptr %add.ptr220, i64 1
  store ptr %incdec.ptr221, ptr %p, align 8
  %160 = load i8, ptr %add.ptr220, align 1
  %idx.ext223 = zext i8 %160 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %159, i64 %idx.neg224
  %161 = load i8, ptr %add.ptr225, align 1
  %conv226 = zext i8 %161 to i32
  %162 = load i32, ptr %n, align 4
  %add227 = add nsw i32 %162, %conv226
  store i32 %add227, ptr %n, align 4
  %163 = load ptr, ptr %cp, align 8
  %164 = load ptr, ptr %p, align 8
  %incdec.ptr228 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %incdec.ptr228, ptr %p, align 8
  %165 = load i8, ptr %164, align 1
  %idx.ext230 = zext i8 %165 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %163, i64 %idx.neg231
  %166 = load i8, ptr %add.ptr232, align 1
  %conv233 = zext i8 %166 to i32
  %167 = load i32, ptr %n, align 4
  %add234 = add nsw i32 %167, %conv233
  store i32 %add234, ptr %n, align 4
  %168 = load ptr, ptr %cp, align 8
  %169 = load ptr, ptr %p, align 8
  %incdec.ptr235 = getelementptr inbounds i8, ptr %169, i64 1
  store ptr %incdec.ptr235, ptr %p, align 8
  %170 = load i8, ptr %169, align 1
  %idx.ext237 = zext i8 %170 to i64
  %idx.neg238 = sub nsw i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, ptr %168, i64 %idx.neg238
  %171 = load i8, ptr %add.ptr239, align 1
  %conv240 = zext i8 %171 to i32
  %172 = load i32, ptr %n, align 4
  %add241 = add nsw i32 %172, %conv240
  store i32 %add241, ptr %n, align 4
  %173 = load ptr, ptr %cp, align 8
  %174 = load ptr, ptr %p, align 8
  %incdec.ptr242 = getelementptr inbounds i8, ptr %174, i64 1
  store ptr %incdec.ptr242, ptr %p, align 8
  %175 = load i8, ptr %174, align 1
  %idx.ext244 = zext i8 %175 to i64
  %idx.neg245 = sub nsw i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, ptr %173, i64 %idx.neg245
  %176 = load i8, ptr %add.ptr246, align 1
  %conv247 = zext i8 %176 to i32
  %177 = load i32, ptr %n, align 4
  %add248 = add nsw i32 %177, %conv247
  store i32 %add248, ptr %n, align 4
  %178 = load ptr, ptr %cp, align 8
  %179 = load ptr, ptr %p, align 8
  %180 = load i8, ptr %179, align 1
  %idx.ext250 = zext i8 %180 to i64
  %idx.neg251 = sub nsw i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %178, i64 %idx.neg251
  %181 = load i8, ptr %add.ptr252, align 1
  %conv253 = zext i8 %181 to i32
  %182 = load i32, ptr %n, align 4
  %add254 = add nsw i32 %182, %conv253
  store i32 %add254, ptr %n, align 4
  %183 = load i32, ptr %x_size.addr, align 4
  %sub255 = add nsw i32 %183, -3
  %184 = load ptr, ptr %p, align 8
  %idx.ext256 = sext i32 %sub255 to i64
  %add.ptr257 = getelementptr inbounds i8, ptr %184, i64 %idx.ext256
  store ptr %add.ptr257, ptr %p, align 8
  %185 = load ptr, ptr %cp, align 8
  %incdec.ptr258 = getelementptr inbounds i8, ptr %add.ptr257, i64 1
  store ptr %incdec.ptr258, ptr %p, align 8
  %186 = load i8, ptr %add.ptr257, align 1
  %idx.ext260 = zext i8 %186 to i64
  %idx.neg261 = sub nsw i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, ptr %185, i64 %idx.neg261
  %187 = load i8, ptr %add.ptr262, align 1
  %conv263 = zext i8 %187 to i32
  %188 = load i32, ptr %n, align 4
  %add264 = add nsw i32 %188, %conv263
  store i32 %add264, ptr %n, align 4
  %189 = load ptr, ptr %cp, align 8
  %190 = load ptr, ptr %p, align 8
  %incdec.ptr265 = getelementptr inbounds i8, ptr %190, i64 1
  store ptr %incdec.ptr265, ptr %p, align 8
  %191 = load i8, ptr %190, align 1
  %idx.ext267 = zext i8 %191 to i64
  %idx.neg268 = sub nsw i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, ptr %189, i64 %idx.neg268
  %192 = load i8, ptr %add.ptr269, align 1
  %conv270 = zext i8 %192 to i32
  %193 = load i32, ptr %n, align 4
  %add271 = add nsw i32 %193, %conv270
  store i32 %add271, ptr %n, align 4
  %194 = load ptr, ptr %cp, align 8
  %195 = load ptr, ptr %p, align 8
  %196 = load i8, ptr %195, align 1
  %idx.ext273 = zext i8 %196 to i64
  %idx.neg274 = sub nsw i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %194, i64 %idx.neg274
  %197 = load i8, ptr %add.ptr275, align 1
  %conv276 = zext i8 %197 to i32
  %198 = load i32, ptr %n, align 4
  %add277 = add nsw i32 %198, %conv276
  store i32 %add277, ptr %n, align 4
  %199 = load i32, ptr %max_no.addr, align 4
  %cmp278.not = icmp sgt i32 %add277, %199
  br i1 %cmp278.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body7
  %200 = load i32, ptr %max_no.addr, align 4
  %201 = load i32, ptr %n, align 4
  %sub280 = sub nsw i32 %200, %201
  %202 = load ptr, ptr %r.addr, align 8
  %203 = load i32, ptr %i, align 4
  %204 = load i32, ptr %x_size.addr, align 4
  %mul281 = mul nsw i32 %203, %204
  %205 = load i32, ptr %j, align 4
  %add282 = add nsw i32 %mul281, %205
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds i32, ptr %202, i64 %idxprom283
  store i32 %sub280, ptr %arrayidx284, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %206 = load i32, ptr %j, align 4
  %inc = add nsw i32 %206, 1
  br label %for.cond3, !llvm.loop !10

for.inc285:                                       ; preds = %for.cond3
  %207 = load i32, ptr %i, align 4
  %inc286 = add nsw i32 %207, 1
  br label %for.cond, !llvm.loop !11

for.end287:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind ssp uwtable
define void @susan_principle_small(ptr noundef %in, ptr noundef %r, ptr noundef %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %max_no, ptr %max_no.addr, align 4
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %x_size, %y_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %0 = load ptr, ptr %r.addr, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %r, i32 noundef 0, i64 noundef %mul1, i64 noundef %1) #9
  store i32 730, ptr %max_no.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc82, %for.inc81 ]
  store i32 %storemerge, ptr %i, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %sub = add nsw i32 %2, -1
  %cmp = icmp slt i32 %storemerge, %sub
  br i1 %cmp, label %for.cond3, label %for.end83

for.cond3:                                        ; preds = %for.cond, %for.inc
  %storemerge1 = phi i32 [ %inc, %for.inc ], [ 1, %for.cond ]
  store i32 %storemerge1, ptr %j, align 4
  %3 = load i32, ptr %x_size.addr, align 4
  %sub4 = add nsw i32 %3, -1
  %cmp5 = icmp slt i32 %storemerge1, %sub4
  br i1 %cmp5, label %for.body7, label %for.inc81

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load i32, ptr %i, align 4
  %sub8 = add nsw i32 %5, -1
  %6 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %6
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %7 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %7 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %10, %11
  %12 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %12
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  %idx.ext15 = zext i8 %13 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %8, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %15 = load i8, ptr %14, align 1
  %idx.ext18 = zext i8 %15 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %16 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %16 to i32
  %17 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %17, %conv20
  store i32 %add21, ptr %n, align 4
  %18 = load ptr, ptr %cp, align 8
  %19 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %20 = load i8, ptr %19, align 1
  %idx.ext24 = zext i8 %20 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %18, i64 %idx.neg25
  %21 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %21 to i32
  %22 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %22, %conv27
  store i32 %add28, ptr %n, align 4
  %23 = load ptr, ptr %cp, align 8
  %24 = load ptr, ptr %p, align 8
  %25 = load i8, ptr %24, align 1
  %idx.ext30 = zext i8 %25 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %23, i64 %idx.neg31
  %26 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %26 to i32
  %27 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %27, %conv33
  store i32 %add34, ptr %n, align 4
  %28 = load i32, ptr %x_size.addr, align 4
  %sub35 = add nsw i32 %28, -2
  %29 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %29, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %30 = load ptr, ptr %cp, align 8
  %31 = load i8, ptr %add.ptr37, align 1
  %idx.ext39 = zext i8 %31 to i64
  %idx.neg40 = sub nsw i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %30, i64 %idx.neg40
  %32 = load i8, ptr %add.ptr41, align 1
  %conv42 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add43 = add nsw i32 %33, %conv42
  store i32 %add43, ptr %n, align 4
  %34 = load ptr, ptr %p, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %34, i64 2
  store ptr %add.ptr44, ptr %p, align 8
  %35 = load ptr, ptr %cp, align 8
  %36 = load i8, ptr %add.ptr44, align 1
  %idx.ext46 = zext i8 %36 to i64
  %idx.neg47 = sub nsw i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %35, i64 %idx.neg47
  %37 = load i8, ptr %add.ptr48, align 1
  %conv49 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4
  %add50 = add nsw i32 %38, %conv49
  store i32 %add50, ptr %n, align 4
  %39 = load i32, ptr %x_size.addr, align 4
  %sub51 = add nsw i32 %39, -2
  %40 = load ptr, ptr %p, align 8
  %idx.ext52 = sext i32 %sub51 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %40, i64 %idx.ext52
  store ptr %add.ptr53, ptr %p, align 8
  %41 = load ptr, ptr %cp, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %add.ptr53, i64 1
  store ptr %incdec.ptr54, ptr %p, align 8
  %42 = load i8, ptr %add.ptr53, align 1
  %idx.ext56 = zext i8 %42 to i64
  %idx.neg57 = sub nsw i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, ptr %41, i64 %idx.neg57
  %43 = load i8, ptr %add.ptr58, align 1
  %conv59 = zext i8 %43 to i32
  %44 = load i32, ptr %n, align 4
  %add60 = add nsw i32 %44, %conv59
  store i32 %add60, ptr %n, align 4
  %45 = load ptr, ptr %cp, align 8
  %46 = load ptr, ptr %p, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %incdec.ptr61, ptr %p, align 8
  %47 = load i8, ptr %46, align 1
  %idx.ext63 = zext i8 %47 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %45, i64 %idx.neg64
  %48 = load i8, ptr %add.ptr65, align 1
  %conv66 = zext i8 %48 to i32
  %49 = load i32, ptr %n, align 4
  %add67 = add nsw i32 %49, %conv66
  store i32 %add67, ptr %n, align 4
  %50 = load ptr, ptr %cp, align 8
  %51 = load ptr, ptr %p, align 8
  %52 = load i8, ptr %51, align 1
  %idx.ext69 = zext i8 %52 to i64
  %idx.neg70 = sub nsw i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %50, i64 %idx.neg70
  %53 = load i8, ptr %add.ptr71, align 1
  %conv72 = zext i8 %53 to i32
  %54 = load i32, ptr %n, align 4
  %add73 = add nsw i32 %54, %conv72
  store i32 %add73, ptr %n, align 4
  %55 = load i32, ptr %max_no.addr, align 4
  %cmp74.not = icmp sgt i32 %add73, %55
  br i1 %cmp74.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body7
  %56 = load i32, ptr %max_no.addr, align 4
  %57 = load i32, ptr %n, align 4
  %sub76 = sub nsw i32 %56, %57
  %58 = load ptr, ptr %r.addr, align 8
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %x_size.addr, align 4
  %mul77 = mul nsw i32 %59, %60
  %61 = load i32, ptr %j, align 4
  %add78 = add nsw i32 %mul77, %61
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %58, i64 %idxprom79
  store i32 %sub76, ptr %arrayidx80, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %62 = load i32, ptr %j, align 4
  %inc = add nsw i32 %62, 1
  br label %for.cond3, !llvm.loop !12

for.inc81:                                        ; preds = %for.cond3
  %63 = load i32, ptr %i, align 4
  %inc82 = add nsw i32 %63, 1
  br label %for.cond, !llvm.loop !13

for.end83:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @median(ptr noundef %in, i32 noundef %i, i32 noundef %j, i32 noundef %x_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %p = alloca [8 x i32], align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %x_size, ptr %x_size.addr, align 4
  %sub = add nsw i32 %i, -1
  %mul = mul nsw i32 %sub, %x_size
  %add = add nsw i32 %mul, %j
  %sub1 = add nsw i32 %add, -1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %p, align 4
  %1 = load ptr, ptr %in.addr, align 8
  %2 = load i32, ptr %i.addr, align 4
  %sub3 = add nsw i32 %2, -1
  %3 = load i32, ptr %x_size.addr, align 4
  %mul4 = mul nsw i32 %sub3, %3
  %4 = load i32, ptr %j.addr, align 4
  %add5 = add nsw i32 %mul4, %4
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %1, i64 %idxprom6
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %5 to i32
  %arrayidx9 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 1
  store i32 %conv8, ptr %arrayidx9, align 4
  %6 = load ptr, ptr %in.addr, align 8
  %7 = load i32, ptr %i.addr, align 4
  %sub10 = add nsw i32 %7, -1
  %8 = load i32, ptr %x_size.addr, align 4
  %mul11 = mul nsw i32 %sub10, %8
  %9 = load i32, ptr %j.addr, align 4
  %add12 = add nsw i32 %mul11, %9
  %add13 = add nsw i32 %add12, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %6, i64 %idxprom14
  %10 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %10 to i32
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 2
  store i32 %conv16, ptr %arrayidx17, align 4
  %11 = load ptr, ptr %in.addr, align 8
  %12 = load i32, ptr %i.addr, align 4
  %13 = load i32, ptr %x_size.addr, align 4
  %mul18 = mul nsw i32 %12, %13
  %14 = load i32, ptr %j.addr, align 4
  %add19 = add nsw i32 %mul18, %14
  %sub20 = add nsw i32 %add19, -1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %11, i64 %idxprom21
  %15 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %15 to i32
  %arrayidx24 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 3
  store i32 %conv23, ptr %arrayidx24, align 4
  %16 = load ptr, ptr %in.addr, align 8
  %17 = load i32, ptr %i.addr, align 4
  %18 = load i32, ptr %x_size.addr, align 4
  %mul25 = mul nsw i32 %17, %18
  %19 = load i32, ptr %j.addr, align 4
  %add26 = add nsw i32 %mul25, %19
  %add27 = add nsw i32 %add26, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %16, i64 %idxprom28
  %20 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %20 to i32
  %arrayidx31 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 4
  store i32 %conv30, ptr %arrayidx31, align 4
  %21 = load ptr, ptr %in.addr, align 8
  %22 = load i32, ptr %i.addr, align 4
  %add32 = add nsw i32 %22, 1
  %23 = load i32, ptr %x_size.addr, align 4
  %mul33 = mul nsw i32 %add32, %23
  %24 = load i32, ptr %j.addr, align 4
  %add34 = add nsw i32 %mul33, %24
  %sub35 = add nsw i32 %add34, -1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %21, i64 %idxprom36
  %25 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %25 to i32
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 5
  store i32 %conv38, ptr %arrayidx39, align 4
  %26 = load ptr, ptr %in.addr, align 8
  %27 = load i32, ptr %i.addr, align 4
  %add40 = add nsw i32 %27, 1
  %28 = load i32, ptr %x_size.addr, align 4
  %mul41 = mul nsw i32 %add40, %28
  %29 = load i32, ptr %j.addr, align 4
  %add42 = add nsw i32 %mul41, %29
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %26, i64 %idxprom43
  %30 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %30 to i32
  %arrayidx46 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 6
  store i32 %conv45, ptr %arrayidx46, align 4
  %31 = load ptr, ptr %in.addr, align 8
  %32 = load i32, ptr %i.addr, align 4
  %add47 = add nsw i32 %32, 1
  %33 = load i32, ptr %x_size.addr, align 4
  %mul48 = mul nsw i32 %add47, %33
  %34 = load i32, ptr %j.addr, align 4
  %add49 = add nsw i32 %mul48, %34
  %add50 = add nsw i32 %add49, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %31, i64 %idxprom51
  %35 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %35 to i32
  %arrayidx54 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 7
  store i32 %conv53, ptr %arrayidx54, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc78, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc79, %for.inc78 ]
  store i32 %storemerge, ptr %k, align 4
  %cmp = icmp slt i32 %storemerge, 7
  br i1 %cmp, label %for.cond56, label %for.end80

for.cond56:                                       ; preds = %for.cond, %for.inc
  %storemerge1 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %l, align 4
  %36 = load i32, ptr %k, align 4
  %sub57 = sub nsw i32 7, %36
  %cmp58 = icmp slt i32 %storemerge1, %sub57
  br i1 %cmp58, label %for.body60, label %for.inc78

for.body60:                                       ; preds = %for.cond56
  %37 = load i32, ptr %l, align 4
  %idxprom61 = sext i32 %37 to i64
  %arrayidx62 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom61
  %38 = load i32, ptr %arrayidx62, align 4
  %add63 = add nsw i32 %37, 1
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom64
  %39 = load i32, ptr %arrayidx65, align 4
  %cmp66 = icmp sgt i32 %38, %39
  br i1 %cmp66, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body60
  %40 = load i32, ptr %l, align 4
  %idxprom68 = sext i32 %40 to i64
  %arrayidx69 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom68
  %41 = load i32, ptr %arrayidx69, align 4
  store i32 %41, ptr %tmp, align 4
  %add70 = add nsw i32 %40, 1
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom71
  %42 = load i32, ptr %arrayidx72, align 4
  %43 = load i32, ptr %l, align 4
  %idxprom73 = sext i32 %43 to i64
  %arrayidx74 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom73
  store i32 %42, ptr %arrayidx74, align 4
  %44 = load i32, ptr %tmp, align 4
  %add75 = add nsw i32 %43, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom76
  store i32 %44, ptr %arrayidx77, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body60, %if.then
  %45 = load i32, ptr %l, align 4
  %inc = add nsw i32 %45, 1
  br label %for.cond56, !llvm.loop !14

for.inc78:                                        ; preds = %for.cond56
  %46 = load i32, ptr %k, align 4
  %inc79 = add nsw i32 %46, 1
  br label %for.cond, !llvm.loop !15

for.end80:                                        ; preds = %for.cond
  %arrayidx81 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 3
  %47 = load i32, ptr %arrayidx81, align 4
  %arrayidx82 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 4
  %48 = load i32, ptr %arrayidx82, align 4
  %add83 = add nsw i32 %47, %48
  %div = sdiv i32 %add83, 2
  %conv84 = trunc i32 %div to i8
  ret i8 %conv84
}

; Function Attrs: nounwind ssp uwtable
define void @enlarge(ptr noundef %in, ptr noundef %tmp_image, ptr noundef %x_size, ptr noundef %y_size, i32 noundef %border) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %tmp_image.addr = alloca ptr, align 8
  %x_size.addr = alloca ptr, align 8
  %y_size.addr = alloca ptr, align 8
  %border.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store ptr %tmp_image, ptr %tmp_image.addr, align 8
  store ptr %x_size, ptr %x_size.addr, align 8
  store ptr %y_size, ptr %y_size.addr, align 8
  store i32 %border, ptr %border.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load ptr, ptr %y_size.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp slt i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.cond16

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %tmp_image.addr, align 8
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %border.addr, align 4
  %add = add nsw i32 %3, %4
  %5 = load ptr, ptr %x_size.addr, align 8
  %6 = load i32, ptr %5, align 4
  %mul = shl nsw i32 %4, 1
  %add1 = add nsw i32 %6, %mul
  %mul2 = mul nsw i32 %add, %add1
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %7 = load i32, ptr %border.addr, align 4
  %idx.ext3 = sext i32 %7 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext3
  %8 = load ptr, ptr %in.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %x_size.addr, align 8
  %12 = load i32, ptr %11, align 4
  %mul5 = mul nsw i32 %10, %12
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %9, i64 %idx.ext6
  %conv = sext i32 %12 to i64
  %13 = load ptr, ptr %tmp_image.addr, align 8
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %border.addr, align 4
  %add8 = add nsw i32 %14, %15
  %16 = load ptr, ptr %x_size.addr, align 8
  %17 = load i32, ptr %16, align 4
  %mul9 = shl nsw i32 %15, 1
  %add10 = add nsw i32 %17, %mul9
  %mul11 = mul nsw i32 %add8, %add10
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %13, i64 %idx.ext12
  %18 = load i32, ptr %border.addr, align 4
  %idx.ext14 = sext i32 %18 to i64
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr13, i64 %idx.ext14
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr15, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %add.ptr4, ptr noundef %add.ptr7, i64 noundef %conv, i64 noundef %19) #9
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  br label %for.cond, !llvm.loop !16

for.cond16:                                       ; preds = %for.cond, %for.body19
  %storemerge1 = phi i32 [ %inc68, %for.body19 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %21 = load i32, ptr %border.addr, align 4
  %cmp17 = icmp slt i32 %storemerge1, %21
  br i1 %cmp17, label %for.body19, label %for.cond70

for.body19:                                       ; preds = %for.cond16
  %22 = load ptr, ptr %tmp_image.addr, align 8
  %23 = load i32, ptr %border.addr, align 4
  %24 = load i32, ptr %i, align 4
  %25 = xor i32 %24, -1
  %sub20 = add i32 %23, %25
  %26 = load ptr, ptr %x_size.addr, align 8
  %27 = load i32, ptr %26, align 4
  %mul21 = shl nsw i32 %23, 1
  %add22 = add nsw i32 %27, %mul21
  %mul23 = mul nsw i32 %sub20, %add22
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %22, i64 %idx.ext24
  %28 = load i32, ptr %border.addr, align 4
  %idx.ext26 = sext i32 %28 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idx.ext26
  %29 = load ptr, ptr %in.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = load i32, ptr %i, align 4
  %32 = load ptr, ptr %x_size.addr, align 8
  %33 = load i32, ptr %32, align 4
  %mul28 = mul nsw i32 %31, %33
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %30, i64 %idx.ext29
  %conv31 = sext i32 %33 to i64
  %34 = load ptr, ptr %tmp_image.addr, align 8
  %35 = load i32, ptr %border.addr, align 4
  %36 = load i32, ptr %i, align 4
  %37 = xor i32 %36, -1
  %sub33 = add i32 %35, %37
  %38 = load ptr, ptr %x_size.addr, align 8
  %39 = load i32, ptr %38, align 4
  %mul34 = shl nsw i32 %35, 1
  %add35 = add nsw i32 %39, %mul34
  %mul36 = mul nsw i32 %sub33, %add35
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i8, ptr %34, i64 %idx.ext37
  %40 = load i32, ptr %border.addr, align 4
  %idx.ext39 = sext i32 %40 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %add.ptr38, i64 %idx.ext39
  %41 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr40, i1 false, i1 true, i1 false)
  %call41 = call ptr @__memcpy_chk(ptr noundef %add.ptr27, ptr noundef %add.ptr30, i64 noundef %conv31, i64 noundef %41) #9
  %42 = load ptr, ptr %tmp_image.addr, align 8
  %43 = load ptr, ptr %y_size.addr, align 8
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %border.addr, align 4
  %add42 = add nsw i32 %44, %45
  %46 = load i32, ptr %i, align 4
  %add43 = add nsw i32 %add42, %46
  %47 = load ptr, ptr %x_size.addr, align 8
  %48 = load i32, ptr %47, align 4
  %mul44 = shl nsw i32 %45, 1
  %add45 = add nsw i32 %48, %mul44
  %mul46 = mul nsw i32 %add43, %add45
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds i8, ptr %42, i64 %idx.ext47
  %49 = load i32, ptr %border.addr, align 4
  %idx.ext49 = sext i32 %49 to i64
  %add.ptr50 = getelementptr inbounds i8, ptr %add.ptr48, i64 %idx.ext49
  %50 = load ptr, ptr %in.addr, align 8
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %y_size.addr, align 8
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %i, align 4
  %55 = xor i32 %54, -1
  %sub52 = add i32 %53, %55
  %56 = load ptr, ptr %x_size.addr, align 8
  %57 = load i32, ptr %56, align 4
  %mul53 = mul nsw i32 %sub52, %57
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %51, i64 %idx.ext54
  %conv56 = sext i32 %57 to i64
  %58 = load ptr, ptr %tmp_image.addr, align 8
  %59 = load ptr, ptr %y_size.addr, align 8
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %border.addr, align 4
  %add57 = add nsw i32 %60, %61
  %62 = load i32, ptr %i, align 4
  %add58 = add nsw i32 %add57, %62
  %63 = load ptr, ptr %x_size.addr, align 8
  %64 = load i32, ptr %63, align 4
  %mul59 = shl nsw i32 %61, 1
  %add60 = add nsw i32 %64, %mul59
  %mul61 = mul nsw i32 %add58, %add60
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds i8, ptr %58, i64 %idx.ext62
  %65 = load i32, ptr %border.addr, align 4
  %idx.ext64 = sext i32 %65 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr63, i64 %idx.ext64
  %66 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr65, i1 false, i1 true, i1 false)
  %call66 = call ptr @__memcpy_chk(ptr noundef %add.ptr50, ptr noundef %add.ptr55, i64 noundef %conv56, i64 noundef %66) #9
  %67 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %67, 1
  br label %for.cond16, !llvm.loop !17

for.cond70:                                       ; preds = %for.cond16, %for.inc113
  %storemerge2 = phi i32 [ %inc114, %for.inc113 ], [ 0, %for.cond16 ]
  store i32 %storemerge2, ptr %i, align 4
  %68 = load i32, ptr %border.addr, align 4
  %cmp71 = icmp slt i32 %storemerge2, %68
  br i1 %cmp71, label %for.cond74, label %for.end115

for.cond74:                                       ; preds = %for.cond70, %for.body79
  %storemerge3 = phi i32 [ %inc111, %for.body79 ], [ 0, %for.cond70 ]
  store i32 %storemerge3, ptr %j, align 4
  %69 = load ptr, ptr %y_size.addr, align 8
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %border.addr, align 4
  %mul75 = shl nsw i32 %71, 1
  %add76 = add nsw i32 %70, %mul75
  %cmp77 = icmp slt i32 %storemerge3, %add76
  br i1 %cmp77, label %for.body79, label %for.inc113

for.body79:                                       ; preds = %for.cond74
  %72 = load ptr, ptr %tmp_image.addr, align 8
  %73 = load i32, ptr %j, align 4
  %74 = load ptr, ptr %x_size.addr, align 8
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %border.addr, align 4
  %mul80 = shl nsw i32 %76, 1
  %add81 = add nsw i32 %75, %mul80
  %mul82 = mul nsw i32 %73, %add81
  %add83 = add nsw i32 %mul82, %76
  %77 = load i32, ptr %i, align 4
  %add84 = add nsw i32 %add83, %77
  %idxprom = sext i32 %add84 to i64
  %arrayidx = getelementptr inbounds i8, ptr %72, i64 %idxprom
  %78 = load i8, ptr %arrayidx, align 1
  %79 = load ptr, ptr %tmp_image.addr, align 8
  %80 = load i32, ptr %j, align 4
  %81 = load ptr, ptr %x_size.addr, align 8
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %border.addr, align 4
  %mul85 = shl nsw i32 %83, 1
  %add86 = add nsw i32 %82, %mul85
  %mul87 = mul nsw i32 %80, %add86
  %add88 = add nsw i32 %mul87, %83
  %84 = load i32, ptr %i, align 4
  %85 = xor i32 %84, -1
  %sub90 = add i32 %add88, %85
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %79, i64 %idxprom91
  store i8 %78, ptr %arrayidx92, align 1
  %86 = load ptr, ptr %tmp_image.addr, align 8
  %87 = load i32, ptr %j, align 4
  %88 = load ptr, ptr %x_size.addr, align 8
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %border.addr, align 4
  %mul93 = shl nsw i32 %90, 1
  %add94 = add nsw i32 %89, %mul93
  %mul95 = mul nsw i32 %87, %add94
  %add96 = add nsw i32 %mul95, %89
  %add97 = add nsw i32 %add96, %90
  %91 = load i32, ptr %i, align 4
  %92 = xor i32 %91, -1
  %sub99 = add i32 %add97, %92
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds i8, ptr %86, i64 %idxprom100
  %93 = load i8, ptr %arrayidx101, align 1
  %94 = load ptr, ptr %tmp_image.addr, align 8
  %95 = load i32, ptr %j, align 4
  %96 = load ptr, ptr %x_size.addr, align 8
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %border.addr, align 4
  %mul102 = shl nsw i32 %98, 1
  %add103 = add nsw i32 %97, %mul102
  %mul104 = mul nsw i32 %95, %add103
  %add105 = add nsw i32 %mul104, %97
  %add106 = add nsw i32 %add105, %98
  %99 = load i32, ptr %i, align 4
  %add107 = add nsw i32 %add106, %99
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %94, i64 %idxprom108
  store i8 %93, ptr %arrayidx109, align 1
  %100 = load i32, ptr %j, align 4
  %inc111 = add nsw i32 %100, 1
  br label %for.cond74, !llvm.loop !18

for.inc113:                                       ; preds = %for.cond74
  %101 = load i32, ptr %i, align 4
  %inc114 = add nsw i32 %101, 1
  br label %for.cond70, !llvm.loop !19

for.end115:                                       ; preds = %for.cond70
  %102 = load i32, ptr %border.addr, align 4
  %mul116 = shl nsw i32 %102, 1
  %103 = load ptr, ptr %x_size.addr, align 8
  %104 = load i32, ptr %103, align 4
  %add117 = add nsw i32 %104, %mul116
  store i32 %add117, ptr %103, align 4
  %mul118 = shl nsw i32 %102, 1
  %105 = load ptr, ptr %y_size.addr, align 8
  %106 = load i32, ptr %105, align 4
  %add119 = add nsw i32 %106, %mul118
  store i32 %add119, ptr %105, align 4
  %107 = load ptr, ptr %tmp_image.addr, align 8
  %108 = load ptr, ptr %in.addr, align 8
  store ptr %107, ptr %108, align 8
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nounwind ssp uwtable
define void @susan_smoothing(i32 noundef %three_by_three, ptr noundef %in, float noundef %dt, i32 noundef %x_size, i32 noundef %y_size, ptr noundef %bp) #0 {
entry:
  %three_by_three.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %dt.addr = alloca float, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %temp = alloca float, align 4
  %increment = alloca i32, align 4
  %mask_size = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %area = alloca i32, align 4
  %brightness = alloca i32, align 4
  %tmp = alloca i32, align 4
  %centre = alloca i32, align 4
  %ip = alloca ptr, align 8
  %dp = alloca ptr, align 8
  %dpt = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %out = alloca ptr, align 8
  %total = alloca i32, align 4
  store i32 %three_by_three, ptr %three_by_three.addr, align 4
  store ptr %in, ptr %in.addr, align 8
  store float %dt, ptr %dt.addr, align 4
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  store ptr %bp, ptr %bp.addr, align 8
  store ptr %in, ptr %out, align 8
  %0 = load i32, ptr %three_by_three.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float, ptr %dt.addr, align 4
  %conv = fpext float %1 to double
  %mul = fmul double %conv, 1.500000e+00
  %conv1 = fptosi double %mul to i32
  %add = add nsw i32 %conv1, 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %add, %if.then ], [ 1, %entry ]
  store i32 %storemerge, ptr %mask_size, align 4
  store i32 0, ptr %total, align 4
  %2 = load float, ptr %dt.addr, align 4
  %cmp2 = fcmp ogt float %2, 1.500000e+01
  %3 = load i32, ptr %total, align 4
  %cmp4 = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp2, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %4 = load float, ptr %dt.addr, align 4
  %conv7 = fpext float %4 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.25, double noundef %conv7) #9
  %puts = call i32 @puts(ptr nonnull @str.13)
  %puts9 = call i32 @puts(ptr nonnull @str.14)
  call void @exit(i32 noundef 0) #8
  unreachable

if.end10:                                         ; preds = %if.end
  %5 = load i32, ptr %mask_size, align 4
  %mul11 = shl nsw i32 %5, 1
  %add12 = or i32 %mul11, 1
  %6 = load i32, ptr %x_size.addr, align 4
  %cmp13 = icmp sgt i32 %add12, %6
  br i1 %cmp13, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %7 = load i32, ptr %mask_size, align 4
  %mul15 = shl nsw i32 %7, 1
  %add16 = or i32 %mul15, 1
  %8 = load i32, ptr %y_size.addr, align 4
  %cmp17 = icmp sgt i32 %add16, %8
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %lor.lhs.false, %if.end10
  %9 = load i32, ptr %mask_size, align 4
  %10 = load i32, ptr %x_size.addr, align 4
  %11 = load i32, ptr %y_size.addr, align 4
  %call20 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.28, i32 noundef %9, i32 noundef %10, i32 noundef %11) #9
  call void @exit(i32 noundef 0) #8
  unreachable

if.end21:                                         ; preds = %lor.lhs.false
  %12 = load i32, ptr %x_size.addr, align 4
  %13 = load i32, ptr %mask_size, align 4
  %mul22 = shl nsw i32 %13, 1
  %add23 = add nsw i32 %12, %mul22
  %14 = load i32, ptr %y_size.addr, align 4
  %mul24 = shl nsw i32 %13, 1
  %add25 = add nsw i32 %14, %mul24
  %mul26 = mul nsw i32 %add23, %add25
  %conv27 = sext i32 %mul26 to i64
  %call28 = call ptr @malloc(i64 noundef %conv27) #10
  %15 = load i32, ptr %mask_size, align 4
  call void @enlarge(ptr noundef nonnull %in.addr, ptr noundef %call28, ptr noundef nonnull %x_size.addr, ptr noundef nonnull %y_size.addr, i32 noundef %15)
  %16 = load i32, ptr %three_by_three.addr, align 4
  %cmp29 = icmp eq i32 %16, 0
  br i1 %cmp29, label %if.then31, label %for.cond128

if.then31:                                        ; preds = %if.end21
  %17 = load i32, ptr %mask_size, align 4
  %mul32 = shl nsw i32 %17, 1
  %add33 = or i32 %mul32, 1
  %18 = load i32, ptr %x_size.addr, align 4
  %sub = sub nsw i32 %18, %add33
  store i32 %sub, ptr %increment, align 4
  %mul34 = mul nsw i32 %add33, %add33
  %conv35 = zext i32 %mul34 to i64
  %call36 = call ptr @malloc(i64 noundef %conv35) #10
  store ptr %call36, ptr %dp, align 8
  store ptr %call36, ptr %dpt, align 8
  %19 = load float, ptr %dt.addr, align 4
  %20 = fneg float %19
  %fneg = fmul float %19, %20
  store float %fneg, ptr %temp, align 4
  %21 = load i32, ptr %mask_size, align 4
  %sub38 = sub nsw i32 0, %21
  br label %for.cond

for.cond:                                         ; preds = %for.inc54, %if.then31
  %storemerge3 = phi i32 [ %sub38, %if.then31 ], [ %inc55, %for.inc54 ]
  store i32 %storemerge3, ptr %i, align 4
  %22 = load i32, ptr %mask_size, align 4
  %cmp39.not = icmp sgt i32 %storemerge3, %22
  br i1 %cmp39.not, label %for.end56, label %for.body

for.body:                                         ; preds = %for.cond
  %23 = load i32, ptr %mask_size, align 4
  %sub41 = sub nsw i32 0, %23
  br label %for.cond42

for.cond42:                                       ; preds = %for.body45, %for.body
  %storemerge8 = phi i32 [ %sub41, %for.body ], [ %inc, %for.body45 ]
  store i32 %storemerge8, ptr %j, align 4
  %24 = load i32, ptr %mask_size, align 4
  %cmp43.not = icmp sgt i32 %storemerge8, %24
  br i1 %cmp43.not, label %for.inc54, label %for.body45

for.body45:                                       ; preds = %for.cond42
  %25 = load i32, ptr %i, align 4
  %mul46 = mul nsw i32 %25, %25
  %26 = load i32, ptr %j, align 4
  %mul47 = mul nsw i32 %26, %26
  %add48 = add nuw nsw i32 %mul46, %mul47
  %conv49 = sitofp i32 %add48 to float
  %27 = load float, ptr %temp, align 4
  %div = fdiv float %conv49, %27
  %conv50 = fpext float %div to double
  %28 = call double @llvm.exp.f64(double %conv50)
  %mul51 = fmul double %28, 1.000000e+02
  %conv52 = fptosi double %mul51 to i32
  store i32 %conv52, ptr %x, align 4
  %conv53 = trunc i32 %conv52 to i8
  %29 = load ptr, ptr %dpt, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr, ptr %dpt, align 8
  store i8 %conv53, ptr %29, align 1
  %30 = load i32, ptr %j, align 4
  %inc = add nsw i32 %30, 1
  br label %for.cond42, !llvm.loop !20

for.inc54:                                        ; preds = %for.cond42
  %31 = load i32, ptr %i, align 4
  %inc55 = add nsw i32 %31, 1
  br label %for.cond, !llvm.loop !21

for.end56:                                        ; preds = %for.cond
  %32 = load i32, ptr %mask_size, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc124, %for.end56
  %storemerge4 = phi i32 [ %32, %for.end56 ], [ %inc125, %for.inc124 ]
  store i32 %storemerge4, ptr %i, align 4
  %33 = load i32, ptr %y_size.addr, align 4
  %34 = load i32, ptr %mask_size, align 4
  %sub58 = sub nsw i32 %33, %34
  %cmp59 = icmp slt i32 %storemerge4, %sub58
  br i1 %cmp59, label %for.body61, label %for.end126

for.body61:                                       ; preds = %for.cond57
  %35 = load i32, ptr %mask_size, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc121, %for.body61
  %storemerge5 = phi i32 [ %35, %for.body61 ], [ %inc122, %for.inc121 ]
  store i32 %storemerge5, ptr %j, align 4
  %36 = load i32, ptr %x_size.addr, align 4
  %37 = load i32, ptr %mask_size, align 4
  %sub63 = sub nsw i32 %36, %37
  %cmp64 = icmp slt i32 %storemerge5, %sub63
  br i1 %cmp64, label %for.body66, label %for.inc124

for.body66:                                       ; preds = %for.cond62
  store i32 0, ptr %area, align 4
  store i32 0, ptr %total, align 4
  %38 = load ptr, ptr %dp, align 8
  store ptr %38, ptr %dpt, align 8
  %39 = load ptr, ptr %in.addr, align 8
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %mask_size, align 4
  %sub67 = sub nsw i32 %40, %41
  %42 = load i32, ptr %x_size.addr, align 4
  %mul68 = mul nsw i32 %sub67, %42
  %idx.ext = sext i32 %mul68 to i64
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 %idx.ext
  %43 = load i32, ptr %j, align 4
  %idx.ext69 = sext i32 %43 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext69
  %44 = load i32, ptr %mask_size, align 4
  %idx.ext71 = sext i32 %44 to i64
  %idx.neg = sub nsw i64 0, %idx.ext71
  %add.ptr72 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.neg
  store ptr %add.ptr72, ptr %ip, align 8
  %45 = load ptr, ptr %in.addr, align 8
  %46 = load i32, ptr %i, align 4
  %47 = load i32, ptr %x_size.addr, align 4
  %mul73 = mul nsw i32 %46, %47
  %48 = load i32, ptr %j, align 4
  %add74 = add nsw i32 %mul73, %48
  %idxprom = sext i32 %add74 to i64
  %arrayidx = getelementptr inbounds i8, ptr %45, i64 %idxprom
  %49 = load i8, ptr %arrayidx, align 1
  %conv75 = zext i8 %49 to i32
  store i32 %conv75, ptr %centre, align 4
  %50 = load ptr, ptr %bp.addr, align 8
  %idx.ext76 = zext i8 %49 to i64
  %add.ptr77 = getelementptr inbounds i8, ptr %50, i64 %idx.ext76
  store ptr %add.ptr77, ptr %cp, align 8
  %51 = load i32, ptr %mask_size, align 4
  %sub78 = sub nsw i32 0, %51
  br label %for.cond79

for.cond79:                                       ; preds = %for.end102, %for.body66
  %storemerge6 = phi i32 [ %sub78, %for.body66 ], [ %inc106, %for.end102 ]
  store i32 %storemerge6, ptr %y, align 4
  %52 = load i32, ptr %mask_size, align 4
  %cmp80.not = icmp sgt i32 %storemerge6, %52
  br i1 %cmp80.not, label %for.end107, label %for.body82

for.body82:                                       ; preds = %for.cond79
  %53 = load i32, ptr %mask_size, align 4
  %sub83 = sub nsw i32 0, %53
  br label %for.cond84

for.cond84:                                       ; preds = %for.body87, %for.body82
  %storemerge7 = phi i32 [ %sub83, %for.body82 ], [ %inc101, %for.body87 ]
  store i32 %storemerge7, ptr %x, align 4
  %54 = load i32, ptr %mask_size, align 4
  %cmp85.not = icmp sgt i32 %storemerge7, %54
  br i1 %cmp85.not, label %for.end102, label %for.body87

for.body87:                                       ; preds = %for.cond84
  %55 = load ptr, ptr %ip, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %incdec.ptr88, ptr %ip, align 8
  %56 = load i8, ptr %55, align 1
  %conv89 = zext i8 %56 to i32
  store i32 %conv89, ptr %brightness, align 4
  %57 = load ptr, ptr %dpt, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %incdec.ptr90, ptr %dpt, align 8
  %58 = load i8, ptr %57, align 1
  %conv91 = zext i8 %58 to i32
  %59 = load ptr, ptr %cp, align 8
  %60 = load i32, ptr %brightness, align 4
  %idx.ext92 = sext i32 %60 to i64
  %idx.neg93 = sub nsw i64 0, %idx.ext92
  %add.ptr94 = getelementptr inbounds i8, ptr %59, i64 %idx.neg93
  %61 = load i8, ptr %add.ptr94, align 1
  %conv95 = zext i8 %61 to i32
  %mul96 = mul nuw nsw i32 %conv91, %conv95
  store i32 %mul96, ptr %tmp, align 4
  %62 = load i32, ptr %area, align 4
  %add97 = add nsw i32 %62, %mul96
  store i32 %add97, ptr %area, align 4
  %63 = load i32, ptr %brightness, align 4
  %mul98 = mul nsw i32 %mul96, %63
  %64 = load i32, ptr %total, align 4
  %add99 = add nsw i32 %64, %mul98
  store i32 %add99, ptr %total, align 4
  %65 = load i32, ptr %x, align 4
  %inc101 = add nsw i32 %65, 1
  br label %for.cond84, !llvm.loop !22

for.end102:                                       ; preds = %for.cond84
  %66 = load i32, ptr %increment, align 4
  %67 = load ptr, ptr %ip, align 8
  %idx.ext103 = sext i32 %66 to i64
  %add.ptr104 = getelementptr inbounds i8, ptr %67, i64 %idx.ext103
  store ptr %add.ptr104, ptr %ip, align 8
  %68 = load i32, ptr %y, align 4
  %inc106 = add nsw i32 %68, 1
  br label %for.cond79, !llvm.loop !23

for.end107:                                       ; preds = %for.cond79
  %69 = load i32, ptr %area, align 4
  %sub108 = add nsw i32 %69, -10000
  store i32 %sub108, ptr %tmp, align 4
  %cmp109 = icmp eq i32 %sub108, 0
  br i1 %cmp109, label %if.then111, label %if.else114

if.then111:                                       ; preds = %for.end107
  %70 = load ptr, ptr %in.addr, align 8
  %71 = load i32, ptr %i, align 4
  %72 = load i32, ptr %j, align 4
  %73 = load i32, ptr %x_size.addr, align 4
  %call112 = call zeroext i8 @median(ptr noundef %70, i32 noundef %71, i32 noundef %72, i32 noundef %73)
  %74 = load ptr, ptr %out, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %incdec.ptr113, ptr %out, align 8
  store i8 %call112, ptr %74, align 1
  br label %for.inc121

if.else114:                                       ; preds = %for.end107
  %75 = load i32, ptr %total, align 4
  %76 = load i32, ptr %centre, align 4
  %mul115.neg = mul i32 %76, -10000
  %sub116 = add i32 %mul115.neg, %75
  %77 = load i32, ptr %tmp, align 4
  %div117 = sdiv i32 %sub116, %77
  %conv118 = trunc i32 %div117 to i8
  %78 = load ptr, ptr %out, align 8
  %incdec.ptr119 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %incdec.ptr119, ptr %out, align 8
  store i8 %conv118, ptr %78, align 1
  br label %for.inc121

for.inc121:                                       ; preds = %if.then111, %if.else114
  %79 = load i32, ptr %j, align 4
  %inc122 = add nsw i32 %79, 1
  br label %for.cond62, !llvm.loop !24

for.inc124:                                       ; preds = %for.cond62
  %80 = load i32, ptr %i, align 4
  %inc125 = add nsw i32 %80, 1
  br label %for.cond57, !llvm.loop !25

for.end126:                                       ; preds = %for.cond57
  %81 = load ptr, ptr %dp, align 8
  call void @free(ptr noundef %81) #9
  br label %if.end255

for.cond128:                                      ; preds = %if.end21, %for.inc252
  %storemerge1 = phi i32 [ %inc253, %for.inc252 ], [ 1, %if.end21 ]
  store i32 %storemerge1, ptr %i, align 4
  %82 = load i32, ptr %y_size.addr, align 4
  %sub129 = add nsw i32 %82, -1
  %cmp130 = icmp slt i32 %storemerge1, %sub129
  br i1 %cmp130, label %for.cond133, label %if.end255

for.cond133:                                      ; preds = %for.cond128, %for.inc249
  %storemerge2 = phi i32 [ %inc250, %for.inc249 ], [ 1, %for.cond128 ]
  store i32 %storemerge2, ptr %j, align 4
  %83 = load i32, ptr %x_size.addr, align 4
  %sub134 = add nsw i32 %83, -1
  %cmp135 = icmp slt i32 %storemerge2, %sub134
  br i1 %cmp135, label %for.body137, label %for.inc252

for.body137:                                      ; preds = %for.cond133
  store i32 0, ptr %area, align 4
  store i32 0, ptr %total, align 4
  %84 = load ptr, ptr %in.addr, align 8
  %85 = load i32, ptr %i, align 4
  %sub138 = add nsw i32 %85, -1
  %86 = load i32, ptr %x_size.addr, align 4
  %mul139 = mul nsw i32 %sub138, %86
  %idx.ext140 = sext i32 %mul139 to i64
  %add.ptr141 = getelementptr inbounds i8, ptr %84, i64 %idx.ext140
  %87 = load i32, ptr %j, align 4
  %idx.ext142 = sext i32 %87 to i64
  %add.ptr143 = getelementptr inbounds i8, ptr %add.ptr141, i64 %idx.ext142
  %add.ptr144 = getelementptr inbounds i8, ptr %add.ptr143, i64 -1
  store ptr %add.ptr144, ptr %ip, align 8
  %88 = load ptr, ptr %in.addr, align 8
  %89 = load i32, ptr %i, align 4
  %90 = load i32, ptr %x_size.addr, align 4
  %mul145 = mul nsw i32 %89, %90
  %91 = load i32, ptr %j, align 4
  %add146 = add nsw i32 %mul145, %91
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %88, i64 %idxprom147
  %92 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %92 to i32
  store i32 %conv149, ptr %centre, align 4
  %93 = load ptr, ptr %bp.addr, align 8
  %idx.ext150 = zext i8 %92 to i64
  %add.ptr151 = getelementptr inbounds i8, ptr %93, i64 %idx.ext150
  store ptr %add.ptr151, ptr %cp, align 8
  %94 = load ptr, ptr %ip, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %incdec.ptr152, ptr %ip, align 8
  %95 = load i8, ptr %94, align 1
  %conv153 = zext i8 %95 to i32
  store i32 %conv153, ptr %brightness, align 4
  %96 = load ptr, ptr %cp, align 8
  %idx.ext154 = zext i8 %95 to i64
  %idx.neg155 = sub nsw i64 0, %idx.ext154
  %add.ptr156 = getelementptr inbounds i8, ptr %96, i64 %idx.neg155
  %97 = load i8, ptr %add.ptr156, align 1
  %conv157 = zext i8 %97 to i32
  store i32 %conv157, ptr %tmp, align 4
  %98 = load i32, ptr %area, align 4
  %add158 = add nsw i32 %98, %conv157
  store i32 %add158, ptr %area, align 4
  %99 = load i32, ptr %brightness, align 4
  %mul159 = mul nsw i32 %99, %conv157
  %100 = load i32, ptr %total, align 4
  %add160 = add nsw i32 %100, %mul159
  store i32 %add160, ptr %total, align 4
  %101 = load ptr, ptr %ip, align 8
  %incdec.ptr161 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %incdec.ptr161, ptr %ip, align 8
  %102 = load i8, ptr %101, align 1
  %conv162 = zext i8 %102 to i32
  store i32 %conv162, ptr %brightness, align 4
  %103 = load ptr, ptr %cp, align 8
  %idx.ext163 = zext i8 %102 to i64
  %idx.neg164 = sub nsw i64 0, %idx.ext163
  %add.ptr165 = getelementptr inbounds i8, ptr %103, i64 %idx.neg164
  %104 = load i8, ptr %add.ptr165, align 1
  %conv166 = zext i8 %104 to i32
  store i32 %conv166, ptr %tmp, align 4
  %105 = load i32, ptr %area, align 4
  %add167 = add nsw i32 %105, %conv166
  store i32 %add167, ptr %area, align 4
  %106 = load i32, ptr %brightness, align 4
  %mul168 = mul nsw i32 %106, %conv166
  %107 = load i32, ptr %total, align 4
  %add169 = add nsw i32 %107, %mul168
  store i32 %add169, ptr %total, align 4
  %108 = load ptr, ptr %ip, align 8
  %109 = load i8, ptr %108, align 1
  %conv170 = zext i8 %109 to i32
  store i32 %conv170, ptr %brightness, align 4
  %110 = load ptr, ptr %cp, align 8
  %idx.ext171 = zext i8 %109 to i64
  %idx.neg172 = sub nsw i64 0, %idx.ext171
  %add.ptr173 = getelementptr inbounds i8, ptr %110, i64 %idx.neg172
  %111 = load i8, ptr %add.ptr173, align 1
  %conv174 = zext i8 %111 to i32
  store i32 %conv174, ptr %tmp, align 4
  %112 = load i32, ptr %area, align 4
  %add175 = add nsw i32 %112, %conv174
  store i32 %add175, ptr %area, align 4
  %113 = load i32, ptr %brightness, align 4
  %mul176 = mul nsw i32 %113, %conv174
  %114 = load i32, ptr %total, align 4
  %add177 = add nsw i32 %114, %mul176
  store i32 %add177, ptr %total, align 4
  %115 = load i32, ptr %x_size.addr, align 4
  %sub178 = add nsw i32 %115, -2
  %116 = load ptr, ptr %ip, align 8
  %idx.ext179 = sext i32 %sub178 to i64
  %add.ptr180 = getelementptr inbounds i8, ptr %116, i64 %idx.ext179
  %incdec.ptr181 = getelementptr inbounds i8, ptr %add.ptr180, i64 1
  store ptr %incdec.ptr181, ptr %ip, align 8
  %117 = load i8, ptr %add.ptr180, align 1
  %conv182 = zext i8 %117 to i32
  store i32 %conv182, ptr %brightness, align 4
  %118 = load ptr, ptr %cp, align 8
  %idx.ext183 = zext i8 %117 to i64
  %idx.neg184 = sub nsw i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %118, i64 %idx.neg184
  %119 = load i8, ptr %add.ptr185, align 1
  %conv186 = zext i8 %119 to i32
  store i32 %conv186, ptr %tmp, align 4
  %120 = load i32, ptr %area, align 4
  %add187 = add nsw i32 %120, %conv186
  store i32 %add187, ptr %area, align 4
  %121 = load i32, ptr %brightness, align 4
  %mul188 = mul nsw i32 %121, %conv186
  %122 = load i32, ptr %total, align 4
  %add189 = add nsw i32 %122, %mul188
  store i32 %add189, ptr %total, align 4
  %123 = load ptr, ptr %ip, align 8
  %incdec.ptr190 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %incdec.ptr190, ptr %ip, align 8
  %124 = load i8, ptr %123, align 1
  %conv191 = zext i8 %124 to i32
  store i32 %conv191, ptr %brightness, align 4
  %125 = load ptr, ptr %cp, align 8
  %idx.ext192 = zext i8 %124 to i64
  %idx.neg193 = sub nsw i64 0, %idx.ext192
  %add.ptr194 = getelementptr inbounds i8, ptr %125, i64 %idx.neg193
  %126 = load i8, ptr %add.ptr194, align 1
  %conv195 = zext i8 %126 to i32
  store i32 %conv195, ptr %tmp, align 4
  %127 = load i32, ptr %area, align 4
  %add196 = add nsw i32 %127, %conv195
  store i32 %add196, ptr %area, align 4
  %128 = load i32, ptr %brightness, align 4
  %mul197 = mul nsw i32 %128, %conv195
  %129 = load i32, ptr %total, align 4
  %add198 = add nsw i32 %129, %mul197
  store i32 %add198, ptr %total, align 4
  %130 = load ptr, ptr %ip, align 8
  %131 = load i8, ptr %130, align 1
  %conv199 = zext i8 %131 to i32
  store i32 %conv199, ptr %brightness, align 4
  %132 = load ptr, ptr %cp, align 8
  %idx.ext200 = zext i8 %131 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %132, i64 %idx.neg201
  %133 = load i8, ptr %add.ptr202, align 1
  %conv203 = zext i8 %133 to i32
  store i32 %conv203, ptr %tmp, align 4
  %134 = load i32, ptr %area, align 4
  %add204 = add nsw i32 %134, %conv203
  store i32 %add204, ptr %area, align 4
  %135 = load i32, ptr %brightness, align 4
  %mul205 = mul nsw i32 %135, %conv203
  %136 = load i32, ptr %total, align 4
  %add206 = add nsw i32 %136, %mul205
  store i32 %add206, ptr %total, align 4
  %137 = load i32, ptr %x_size.addr, align 4
  %sub207 = add nsw i32 %137, -2
  %138 = load ptr, ptr %ip, align 8
  %idx.ext208 = sext i32 %sub207 to i64
  %add.ptr209 = getelementptr inbounds i8, ptr %138, i64 %idx.ext208
  %incdec.ptr210 = getelementptr inbounds i8, ptr %add.ptr209, i64 1
  store ptr %incdec.ptr210, ptr %ip, align 8
  %139 = load i8, ptr %add.ptr209, align 1
  %conv211 = zext i8 %139 to i32
  store i32 %conv211, ptr %brightness, align 4
  %140 = load ptr, ptr %cp, align 8
  %idx.ext212 = zext i8 %139 to i64
  %idx.neg213 = sub nsw i64 0, %idx.ext212
  %add.ptr214 = getelementptr inbounds i8, ptr %140, i64 %idx.neg213
  %141 = load i8, ptr %add.ptr214, align 1
  %conv215 = zext i8 %141 to i32
  store i32 %conv215, ptr %tmp, align 4
  %142 = load i32, ptr %area, align 4
  %add216 = add nsw i32 %142, %conv215
  store i32 %add216, ptr %area, align 4
  %143 = load i32, ptr %brightness, align 4
  %mul217 = mul nsw i32 %143, %conv215
  %144 = load i32, ptr %total, align 4
  %add218 = add nsw i32 %144, %mul217
  store i32 %add218, ptr %total, align 4
  %145 = load ptr, ptr %ip, align 8
  %incdec.ptr219 = getelementptr inbounds i8, ptr %145, i64 1
  store ptr %incdec.ptr219, ptr %ip, align 8
  %146 = load i8, ptr %145, align 1
  %conv220 = zext i8 %146 to i32
  store i32 %conv220, ptr %brightness, align 4
  %147 = load ptr, ptr %cp, align 8
  %idx.ext221 = zext i8 %146 to i64
  %idx.neg222 = sub nsw i64 0, %idx.ext221
  %add.ptr223 = getelementptr inbounds i8, ptr %147, i64 %idx.neg222
  %148 = load i8, ptr %add.ptr223, align 1
  %conv224 = zext i8 %148 to i32
  store i32 %conv224, ptr %tmp, align 4
  %149 = load i32, ptr %area, align 4
  %add225 = add nsw i32 %149, %conv224
  store i32 %add225, ptr %area, align 4
  %150 = load i32, ptr %brightness, align 4
  %mul226 = mul nsw i32 %150, %conv224
  %151 = load i32, ptr %total, align 4
  %add227 = add nsw i32 %151, %mul226
  store i32 %add227, ptr %total, align 4
  %152 = load ptr, ptr %ip, align 8
  %153 = load i8, ptr %152, align 1
  %conv228 = zext i8 %153 to i32
  store i32 %conv228, ptr %brightness, align 4
  %154 = load ptr, ptr %cp, align 8
  %idx.ext229 = zext i8 %153 to i64
  %idx.neg230 = sub nsw i64 0, %idx.ext229
  %add.ptr231 = getelementptr inbounds i8, ptr %154, i64 %idx.neg230
  %155 = load i8, ptr %add.ptr231, align 1
  %conv232 = zext i8 %155 to i32
  store i32 %conv232, ptr %tmp, align 4
  %156 = load i32, ptr %area, align 4
  %add233 = add nsw i32 %156, %conv232
  store i32 %add233, ptr %area, align 4
  %157 = load i32, ptr %brightness, align 4
  %mul234 = mul nsw i32 %157, %conv232
  %158 = load i32, ptr %total, align 4
  %add235 = add nsw i32 %158, %mul234
  store i32 %add235, ptr %total, align 4
  %sub236 = add nsw i32 %add233, -100
  store i32 %sub236, ptr %tmp, align 4
  %cmp237 = icmp eq i32 %sub236, 0
  br i1 %cmp237, label %if.then239, label %if.else242

if.then239:                                       ; preds = %for.body137
  %159 = load ptr, ptr %in.addr, align 8
  %160 = load i32, ptr %i, align 4
  %161 = load i32, ptr %j, align 4
  %162 = load i32, ptr %x_size.addr, align 4
  %call240 = call zeroext i8 @median(ptr noundef %159, i32 noundef %160, i32 noundef %161, i32 noundef %162)
  %163 = load ptr, ptr %out, align 8
  %incdec.ptr241 = getelementptr inbounds i8, ptr %163, i64 1
  store ptr %incdec.ptr241, ptr %out, align 8
  store i8 %call240, ptr %163, align 1
  br label %for.inc249

if.else242:                                       ; preds = %for.body137
  %164 = load i32, ptr %total, align 4
  %165 = load i32, ptr %centre, align 4
  %mul243.neg = mul i32 %165, -100
  %sub244 = add i32 %mul243.neg, %164
  %166 = load i32, ptr %tmp, align 4
  %div245 = sdiv i32 %sub244, %166
  %conv246 = trunc i32 %div245 to i8
  %167 = load ptr, ptr %out, align 8
  %incdec.ptr247 = getelementptr inbounds i8, ptr %167, i64 1
  store ptr %incdec.ptr247, ptr %out, align 8
  store i8 %conv246, ptr %167, align 1
  br label %for.inc249

for.inc249:                                       ; preds = %if.then239, %if.else242
  %168 = load i32, ptr %j, align 4
  %inc250 = add nsw i32 %168, 1
  br label %for.cond133, !llvm.loop !26

for.inc252:                                       ; preds = %for.cond133
  %169 = load i32, ptr %i, align 4
  %inc253 = add nsw i32 %169, 1
  br label %for.cond128, !llvm.loop !27

if.end255:                                        ; preds = %for.cond128, %for.end126
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @edge_draw(ptr noundef %in, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size, i32 noundef %drawing_mode) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %midp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %mid, ptr %mid.addr, align 8
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  %cmp = icmp eq i32 %drawing_mode, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %mid.addr, align 8
  store ptr %0, ptr %midp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.then
  %storemerge1 = phi i32 [ 0, %if.then ], [ %inc, %if.end ]
  store i32 %storemerge1, ptr %i, align 4
  %1 = load i32, ptr %x_size.addr, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %1, %2
  %cmp1 = icmp slt i32 %storemerge1, %mul
  br i1 %cmp1, label %for.body, label %if.end18

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %midp, align 8
  %4 = load i8, ptr %3, align 1
  %cmp2 = icmp ult i8 %4, 8
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %5 = load ptr, ptr %in.addr, align 8
  %6 = load ptr, ptr %midp, align 8
  %7 = load ptr, ptr %mid.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %sub.ptr.sub
  %8 = load i32, ptr %x_size.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr5, i64 -1
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr6, i64 1
  store i8 -1, ptr %add.ptr6, align 1
  %incdec.ptr7 = getelementptr inbounds i8, ptr %incdec.ptr, i64 1
  store i8 -1, ptr %incdec.ptr, align 1
  store i8 -1, ptr %incdec.ptr7, align 1
  %9 = load i32, ptr %x_size.addr, align 4
  %sub = add nsw i32 %9, -2
  %idx.ext8 = sext i32 %sub to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %incdec.ptr7, i64 %idx.ext8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %add.ptr9, i64 1
  store i8 -1, ptr %add.ptr9, align 1
  %incdec.ptr11 = getelementptr inbounds i8, ptr %incdec.ptr10, i64 1
  store i8 -1, ptr %incdec.ptr11, align 1
  %10 = load i32, ptr %x_size.addr, align 4
  %sub12 = add nsw i32 %10, -2
  %idx.ext13 = sext i32 %sub12 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %incdec.ptr11, i64 %idx.ext13
  %incdec.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 1
  store i8 -1, ptr %add.ptr14, align 1
  %incdec.ptr16 = getelementptr inbounds i8, ptr %incdec.ptr15, i64 1
  store i8 -1, ptr %incdec.ptr15, align 1
  store i8 -1, ptr %incdec.ptr16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %11 = load ptr, ptr %midp, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr17, ptr %midp, align 8
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  br label %for.cond, !llvm.loop !28

if.end18:                                         ; preds = %for.cond, %entry
  %13 = load ptr, ptr %mid.addr, align 8
  store ptr %13, ptr %midp, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %if.end32, %if.end18
  %storemerge = phi i32 [ 0, %if.end18 ], [ %inc35, %if.end32 ]
  store i32 %storemerge, ptr %i, align 4
  %14 = load i32, ptr %x_size.addr, align 4
  %15 = load i32, ptr %y_size.addr, align 4
  %mul20 = mul nsw i32 %14, %15
  %cmp21 = icmp slt i32 %storemerge, %mul20
  br i1 %cmp21, label %for.body23, label %for.end36

for.body23:                                       ; preds = %for.cond19
  %16 = load ptr, ptr %midp, align 8
  %17 = load i8, ptr %16, align 1
  %cmp25 = icmp ult i8 %17, 8
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %for.body23
  %18 = load ptr, ptr %in.addr, align 8
  %19 = load ptr, ptr %midp, align 8
  %20 = load ptr, ptr %mid.addr, align 8
  %sub.ptr.lhs.cast28 = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast29 = ptrtoint ptr %20 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %add.ptr31 = getelementptr inbounds i8, ptr %18, i64 %sub.ptr.sub30
  store i8 0, ptr %add.ptr31, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %for.body23
  %21 = load ptr, ptr %midp, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr33, ptr %midp, align 8
  %22 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %22, 1
  br label %for.cond19, !llvm.loop !29

for.end36:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @susan_thin(ptr noundef %r, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %l = alloca [9 x i32], align 4
  %centre = alloca i32, align 4
  %b01 = alloca i32, align 4
  %b12 = alloca i32, align 4
  %b21 = alloca i32, align 4
  %b10 = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %p3 = alloca i32, align 4
  %p4 = alloca i32, align 4
  %b00 = alloca i32, align 4
  %b02 = alloca i32, align 4
  %b20 = alloca i32, align 4
  %b22 = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mp = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %mid, ptr %mid.addr, align 8
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  store i32 0, ptr %a, align 4
  store i32 0, ptr %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc826, %entry
  %storemerge = phi i32 [ 4, %entry ], [ %inc827, %for.inc826 ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %y_size.addr, align 4
  %sub = add nsw i32 %0, -4
  %cmp = icmp slt i32 %storemerge, %sub
  br i1 %cmp, label %for.cond1, label %for.end828

for.cond1:                                        ; preds = %for.cond, %for.inc823
  %storemerge1 = phi i32 [ %inc824, %for.inc823 ], [ 4, %for.cond ]
  store i32 %storemerge1, ptr %j, align 4
  %1 = load i32, ptr %x_size.addr, align 4
  %sub2 = add nsw i32 %1, -4
  %cmp3 = icmp slt i32 %storemerge1, %sub2
  br i1 %cmp3, label %for.body4, label %for.inc826

for.body4:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %mid.addr, align 8
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %x_size.addr, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %cmp5 = icmp ult i8 %6, 8
  br i1 %cmp5, label %if.then, label %for.inc823

if.then:                                          ; preds = %for.body4
  %7 = load ptr, ptr %r.addr, align 8
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %x_size.addr, align 4
  %mul7 = mul nsw i32 %8, %9
  %10 = load i32, ptr %j, align 4
  %add8 = add nsw i32 %mul7, %10
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %7, i64 %idxprom9
  %11 = load i32, ptr %arrayidx10, align 4
  store i32 %11, ptr %centre, align 4
  %12 = load ptr, ptr %mid.addr, align 8
  %13 = load i32, ptr %i, align 4
  %sub11 = add nsw i32 %13, -1
  %14 = load i32, ptr %x_size.addr, align 4
  %mul12 = mul nsw i32 %sub11, %14
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  %15 = load i32, ptr %j, align 4
  %idx.ext13 = sext i32 %15 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext13
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 -1
  store ptr %add.ptr15, ptr %mp, align 8
  %16 = load i8, ptr %add.ptr15, align 1
  %cmp17 = icmp ult i8 %16, 8
  %conv18 = zext i1 %cmp17 to i32
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr15, i64 1
  %17 = load i8, ptr %add.ptr19, align 1
  %cmp21 = icmp ult i8 %17, 8
  %conv22 = zext i1 %cmp21 to i32
  %add23 = add nuw nsw i32 %conv18, %conv22
  %18 = load ptr, ptr %mp, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %18, i64 2
  %19 = load i8, ptr %add.ptr24, align 1
  %cmp26 = icmp ult i8 %19, 8
  %conv27 = zext i1 %cmp26 to i32
  %add28 = add nuw nsw i32 %add23, %conv27
  %20 = load i32, ptr %x_size.addr, align 4
  %idx.ext29 = sext i32 %20 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %18, i64 %idx.ext29
  %21 = load i8, ptr %add.ptr30, align 1
  %cmp32 = icmp ult i8 %21, 8
  %conv33 = zext i1 %cmp32 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %22 = load ptr, ptr %mp, align 8
  %23 = load i32, ptr %x_size.addr, align 4
  %idx.ext35 = sext i32 %23 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %22, i64 %idx.ext35
  %add.ptr37 = getelementptr inbounds i8, ptr %add.ptr36, i64 2
  %24 = load i8, ptr %add.ptr37, align 1
  %cmp39 = icmp ult i8 %24, 8
  %conv40 = zext i1 %cmp39 to i32
  %add41 = add nuw nsw i32 %add34, %conv40
  %25 = load ptr, ptr %mp, align 8
  %26 = load i32, ptr %x_size.addr, align 4
  %idx.ext42 = sext i32 %26 to i64
  %add.ptr43 = getelementptr inbounds i8, ptr %25, i64 %idx.ext42
  %idx.ext44 = sext i32 %26 to i64
  %add.ptr45 = getelementptr inbounds i8, ptr %add.ptr43, i64 %idx.ext44
  %27 = load i8, ptr %add.ptr45, align 1
  %cmp47 = icmp ult i8 %27, 8
  %conv48 = zext i1 %cmp47 to i32
  %add49 = add nuw nsw i32 %add41, %conv48
  %28 = load ptr, ptr %mp, align 8
  %29 = load i32, ptr %x_size.addr, align 4
  %idx.ext50 = sext i32 %29 to i64
  %add.ptr51 = getelementptr inbounds i8, ptr %28, i64 %idx.ext50
  %idx.ext52 = sext i32 %29 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %add.ptr51, i64 %idx.ext52
  %add.ptr54 = getelementptr inbounds i8, ptr %add.ptr53, i64 1
  %30 = load i8, ptr %add.ptr54, align 1
  %cmp56 = icmp ult i8 %30, 8
  %conv57 = zext i1 %cmp56 to i32
  %add58 = add nuw nsw i32 %add49, %conv57
  %31 = load ptr, ptr %mp, align 8
  %32 = load i32, ptr %x_size.addr, align 4
  %idx.ext59 = sext i32 %32 to i64
  %add.ptr60 = getelementptr inbounds i8, ptr %31, i64 %idx.ext59
  %idx.ext61 = sext i32 %32 to i64
  %add.ptr62 = getelementptr inbounds i8, ptr %add.ptr60, i64 %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr62, i64 2
  %33 = load i8, ptr %add.ptr63, align 1
  %cmp65 = icmp ult i8 %33, 8
  %conv66 = zext i1 %cmp65 to i32
  %add67 = add nsw i32 %add58, %conv66
  store i32 %add67, ptr %n, align 4
  %cmp68 = icmp eq i32 %add67, 0
  br i1 %cmp68, label %if.then70, label %if.end

if.then70:                                        ; preds = %if.then
  %34 = load ptr, ptr %mid.addr, align 8
  %35 = load i32, ptr %i, align 4
  %36 = load i32, ptr %x_size.addr, align 4
  %mul71 = mul nsw i32 %35, %36
  %37 = load i32, ptr %j, align 4
  %add72 = add nsw i32 %mul71, %37
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %34, i64 %idxprom73
  store i8 100, ptr %arrayidx74, align 1
  br label %if.end

if.end:                                           ; preds = %if.then70, %if.then
  %38 = load i32, ptr %n, align 4
  %cmp75 = icmp eq i32 %38, 1
  br i1 %cmp75, label %land.lhs.true, label %if.end412

land.lhs.true:                                    ; preds = %if.end
  %39 = load ptr, ptr %mid.addr, align 8
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %x_size.addr, align 4
  %mul77 = mul nsw i32 %40, %41
  %42 = load i32, ptr %j, align 4
  %add78 = add nsw i32 %mul77, %42
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %39, i64 %idxprom79
  %43 = load i8, ptr %arrayidx80, align 1
  %cmp82 = icmp ult i8 %43, 6
  br i1 %cmp82, label %if.then84, label %if.end412

if.then84:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %r.addr, align 8
  %45 = load i32, ptr %i, align 4
  %sub85 = add nsw i32 %45, -1
  %46 = load i32, ptr %x_size.addr, align 4
  %mul86 = mul nsw i32 %sub85, %46
  %47 = load i32, ptr %j, align 4
  %add87 = add nsw i32 %mul86, %47
  %sub88 = add nsw i32 %add87, -1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %44, i64 %idxprom89
  %48 = load i32, ptr %arrayidx90, align 4
  store i32 %48, ptr %l, align 4
  %49 = load ptr, ptr %r.addr, align 8
  %50 = load i32, ptr %i, align 4
  %sub92 = add nsw i32 %50, -1
  %51 = load i32, ptr %x_size.addr, align 4
  %mul93 = mul nsw i32 %sub92, %51
  %52 = load i32, ptr %j, align 4
  %add94 = add nsw i32 %mul93, %52
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %49, i64 %idxprom95
  %53 = load i32, ptr %arrayidx96, align 4
  %arrayidx97 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 %53, ptr %arrayidx97, align 4
  %54 = load ptr, ptr %r.addr, align 8
  %55 = load i32, ptr %i, align 4
  %sub98 = add nsw i32 %55, -1
  %56 = load i32, ptr %x_size.addr, align 4
  %mul99 = mul nsw i32 %sub98, %56
  %57 = load i32, ptr %j, align 4
  %add100 = add nsw i32 %mul99, %57
  %add101 = add nsw i32 %add100, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %54, i64 %idxprom102
  %58 = load i32, ptr %arrayidx103, align 4
  %arrayidx104 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 %58, ptr %arrayidx104, align 4
  %59 = load ptr, ptr %r.addr, align 8
  %60 = load i32, ptr %i, align 4
  %61 = load i32, ptr %x_size.addr, align 4
  %mul105 = mul nsw i32 %60, %61
  %62 = load i32, ptr %j, align 4
  %add106 = add nsw i32 %mul105, %62
  %sub107 = add nsw i32 %add106, -1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %59, i64 %idxprom108
  %63 = load i32, ptr %arrayidx109, align 4
  %arrayidx110 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 %63, ptr %arrayidx110, align 4
  %arrayidx111 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 4
  store i32 0, ptr %arrayidx111, align 4
  %64 = load ptr, ptr %r.addr, align 8
  %65 = load i32, ptr %i, align 4
  %66 = load i32, ptr %x_size.addr, align 4
  %mul112 = mul nsw i32 %65, %66
  %67 = load i32, ptr %j, align 4
  %add113 = add nsw i32 %mul112, %67
  %add114 = add nsw i32 %add113, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %64, i64 %idxprom115
  %68 = load i32, ptr %arrayidx116, align 4
  %arrayidx117 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 %68, ptr %arrayidx117, align 4
  %69 = load ptr, ptr %r.addr, align 8
  %70 = load i32, ptr %i, align 4
  %add118 = add nsw i32 %70, 1
  %71 = load i32, ptr %x_size.addr, align 4
  %mul119 = mul nsw i32 %add118, %71
  %72 = load i32, ptr %j, align 4
  %add120 = add nsw i32 %mul119, %72
  %sub121 = add nsw i32 %add120, -1
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %69, i64 %idxprom122
  %73 = load i32, ptr %arrayidx123, align 4
  %arrayidx124 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 %73, ptr %arrayidx124, align 4
  %74 = load ptr, ptr %r.addr, align 8
  %75 = load i32, ptr %i, align 4
  %add125 = add nsw i32 %75, 1
  %76 = load i32, ptr %x_size.addr, align 4
  %mul126 = mul nsw i32 %add125, %76
  %77 = load i32, ptr %j, align 4
  %add127 = add nsw i32 %mul126, %77
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds i32, ptr %74, i64 %idxprom128
  %78 = load i32, ptr %arrayidx129, align 4
  %arrayidx130 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 %78, ptr %arrayidx130, align 4
  %79 = load ptr, ptr %r.addr, align 8
  %80 = load i32, ptr %i, align 4
  %add131 = add nsw i32 %80, 1
  %81 = load i32, ptr %x_size.addr, align 4
  %mul132 = mul nsw i32 %add131, %81
  %82 = load i32, ptr %j, align 4
  %add133 = add nsw i32 %mul132, %82
  %add134 = add nsw i32 %add133, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds i32, ptr %79, i64 %idxprom135
  %83 = load i32, ptr %arrayidx136, align 4
  %arrayidx137 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 %83, ptr %arrayidx137, align 4
  %84 = load ptr, ptr %mid.addr, align 8
  %85 = load i32, ptr %i, align 4
  %sub138 = add nsw i32 %85, -1
  %86 = load i32, ptr %x_size.addr, align 4
  %mul139 = mul nsw i32 %sub138, %86
  %87 = load i32, ptr %j, align 4
  %add140 = add nsw i32 %mul139, %87
  %sub141 = add nsw i32 %add140, -1
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds i8, ptr %84, i64 %idxprom142
  %88 = load i8, ptr %arrayidx143, align 1
  %cmp145 = icmp ult i8 %88, 8
  br i1 %cmp145, label %if.then147, label %if.else

if.then147:                                       ; preds = %if.then84
  store i32 0, ptr %l, align 4
  %arrayidx149 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx149, align 4
  %arrayidx150 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 0, ptr %arrayidx150, align 4
  %arrayidx151 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %89 = load i32, ptr %arrayidx151, align 4
  %mul152 = shl nsw i32 %89, 1
  store i32 %mul152, ptr %arrayidx151, align 4
  %arrayidx153 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %90 = load i32, ptr %arrayidx153, align 4
  %mul154 = shl nsw i32 %90, 1
  store i32 %mul154, ptr %arrayidx153, align 4
  %arrayidx155 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %91 = load i32, ptr %arrayidx155, align 4
  %mul156 = mul nsw i32 %91, 3
  store i32 %mul156, ptr %arrayidx155, align 4
  %arrayidx157 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %92 = load i32, ptr %arrayidx157, align 4
  %mul158 = mul nsw i32 %92, 3
  store i32 %mul158, ptr %arrayidx157, align 4
  %arrayidx159 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %93 = load i32, ptr %arrayidx159, align 4
  %mul160 = shl nsw i32 %93, 2
  store i32 %mul160, ptr %arrayidx159, align 4
  br label %if.end331

if.else:                                          ; preds = %if.then84
  %94 = load ptr, ptr %mid.addr, align 8
  %95 = load i32, ptr %i, align 4
  %sub161 = add nsw i32 %95, -1
  %96 = load i32, ptr %x_size.addr, align 4
  %mul162 = mul nsw i32 %sub161, %96
  %97 = load i32, ptr %j, align 4
  %add163 = add nsw i32 %mul162, %97
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds i8, ptr %94, i64 %idxprom164
  %98 = load i8, ptr %arrayidx165, align 1
  %cmp167 = icmp ult i8 %98, 8
  br i1 %cmp167, label %if.then169, label %if.else183

if.then169:                                       ; preds = %if.else
  %arrayidx170 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx170, align 4
  store i32 0, ptr %l, align 4
  %arrayidx172 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 0, ptr %arrayidx172, align 4
  %arrayidx173 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %99 = load i32, ptr %arrayidx173, align 4
  %mul174 = shl nsw i32 %99, 1
  store i32 %mul174, ptr %arrayidx173, align 4
  %arrayidx175 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %100 = load i32, ptr %arrayidx175, align 4
  %mul176 = shl nsw i32 %100, 1
  store i32 %mul176, ptr %arrayidx175, align 4
  %arrayidx177 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %101 = load i32, ptr %arrayidx177, align 4
  %mul178 = mul nsw i32 %101, 3
  store i32 %mul178, ptr %arrayidx177, align 4
  %arrayidx179 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %102 = load i32, ptr %arrayidx179, align 4
  %mul180 = mul nsw i32 %102, 3
  store i32 %mul180, ptr %arrayidx179, align 4
  %arrayidx181 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %103 = load i32, ptr %arrayidx181, align 4
  %mul182 = shl nsw i32 %103, 2
  store i32 %mul182, ptr %arrayidx181, align 4
  br label %if.end331

if.else183:                                       ; preds = %if.else
  %104 = load ptr, ptr %mid.addr, align 8
  %105 = load i32, ptr %i, align 4
  %sub184 = add nsw i32 %105, -1
  %106 = load i32, ptr %x_size.addr, align 4
  %mul185 = mul nsw i32 %sub184, %106
  %107 = load i32, ptr %j, align 4
  %add186 = add nsw i32 %mul185, %107
  %add187 = add nsw i32 %add186, 1
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %104, i64 %idxprom188
  %108 = load i8, ptr %arrayidx189, align 1
  %cmp191 = icmp ult i8 %108, 8
  br i1 %cmp191, label %if.then193, label %if.else207

if.then193:                                       ; preds = %if.else183
  %arrayidx194 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 0, ptr %arrayidx194, align 4
  %arrayidx195 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx195, align 4
  %arrayidx196 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 0, ptr %arrayidx196, align 4
  %109 = load i32, ptr %l, align 4
  %mul198 = shl nsw i32 %109, 1
  store i32 %mul198, ptr %l, align 4
  %arrayidx199 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %110 = load i32, ptr %arrayidx199, align 4
  %mul200 = shl nsw i32 %110, 1
  store i32 %mul200, ptr %arrayidx199, align 4
  %arrayidx201 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %111 = load i32, ptr %arrayidx201, align 4
  %mul202 = mul nsw i32 %111, 3
  store i32 %mul202, ptr %arrayidx201, align 4
  %arrayidx203 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %112 = load i32, ptr %arrayidx203, align 4
  %mul204 = mul nsw i32 %112, 3
  store i32 %mul204, ptr %arrayidx203, align 4
  %arrayidx205 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %113 = load i32, ptr %arrayidx205, align 4
  %mul206 = shl nsw i32 %113, 2
  store i32 %mul206, ptr %arrayidx205, align 4
  br label %if.end331

if.else207:                                       ; preds = %if.else183
  %114 = load ptr, ptr %mid.addr, align 8
  %115 = load i32, ptr %i, align 4
  %116 = load i32, ptr %x_size.addr, align 4
  %mul208 = mul nsw i32 %115, %116
  %117 = load i32, ptr %j, align 4
  %add209 = add nsw i32 %mul208, %117
  %sub210 = add nsw i32 %add209, -1
  %idxprom211 = sext i32 %sub210 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %114, i64 %idxprom211
  %118 = load i8, ptr %arrayidx212, align 1
  %cmp214 = icmp ult i8 %118, 8
  br i1 %cmp214, label %if.then216, label %if.else230

if.then216:                                       ; preds = %if.else207
  %arrayidx217 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 0, ptr %arrayidx217, align 4
  store i32 0, ptr %l, align 4
  %arrayidx219 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 0, ptr %arrayidx219, align 4
  %arrayidx220 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %119 = load i32, ptr %arrayidx220, align 4
  %mul221 = shl nsw i32 %119, 1
  store i32 %mul221, ptr %arrayidx220, align 4
  %arrayidx222 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %120 = load i32, ptr %arrayidx222, align 4
  %mul223 = shl nsw i32 %120, 1
  store i32 %mul223, ptr %arrayidx222, align 4
  %arrayidx224 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %121 = load i32, ptr %arrayidx224, align 4
  %mul225 = mul nsw i32 %121, 3
  store i32 %mul225, ptr %arrayidx224, align 4
  %arrayidx226 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %122 = load i32, ptr %arrayidx226, align 4
  %mul227 = mul nsw i32 %122, 3
  store i32 %mul227, ptr %arrayidx226, align 4
  %arrayidx228 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %123 = load i32, ptr %arrayidx228, align 4
  %mul229 = shl nsw i32 %123, 2
  store i32 %mul229, ptr %arrayidx228, align 4
  br label %if.end331

if.else230:                                       ; preds = %if.else207
  %124 = load ptr, ptr %mid.addr, align 8
  %125 = load i32, ptr %i, align 4
  %126 = load i32, ptr %x_size.addr, align 4
  %mul231 = mul nsw i32 %125, %126
  %127 = load i32, ptr %j, align 4
  %add232 = add nsw i32 %mul231, %127
  %add233 = add nsw i32 %add232, 1
  %idxprom234 = sext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %124, i64 %idxprom234
  %128 = load i8, ptr %arrayidx235, align 1
  %cmp237 = icmp ult i8 %128, 8
  br i1 %cmp237, label %if.then239, label %if.else253

if.then239:                                       ; preds = %if.else230
  %arrayidx240 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 0, ptr %arrayidx240, align 4
  %arrayidx241 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 0, ptr %arrayidx241, align 4
  %arrayidx242 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 0, ptr %arrayidx242, align 4
  %arrayidx243 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %129 = load i32, ptr %arrayidx243, align 4
  %mul244 = shl nsw i32 %129, 1
  store i32 %mul244, ptr %arrayidx243, align 4
  %arrayidx245 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %130 = load i32, ptr %arrayidx245, align 4
  %mul246 = shl nsw i32 %130, 1
  store i32 %mul246, ptr %arrayidx245, align 4
  %131 = load i32, ptr %l, align 4
  %mul248 = mul nsw i32 %131, 3
  store i32 %mul248, ptr %l, align 4
  %arrayidx249 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %132 = load i32, ptr %arrayidx249, align 4
  %mul250 = mul nsw i32 %132, 3
  store i32 %mul250, ptr %arrayidx249, align 4
  %arrayidx251 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %133 = load i32, ptr %arrayidx251, align 4
  %mul252 = shl nsw i32 %133, 2
  store i32 %mul252, ptr %arrayidx251, align 4
  br label %if.end331

if.else253:                                       ; preds = %if.else230
  %134 = load ptr, ptr %mid.addr, align 8
  %135 = load i32, ptr %i, align 4
  %add254 = add nsw i32 %135, 1
  %136 = load i32, ptr %x_size.addr, align 4
  %mul255 = mul nsw i32 %add254, %136
  %137 = load i32, ptr %j, align 4
  %add256 = add nsw i32 %mul255, %137
  %sub257 = add nsw i32 %add256, -1
  %idxprom258 = sext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds i8, ptr %134, i64 %idxprom258
  %138 = load i8, ptr %arrayidx259, align 1
  %cmp261 = icmp ult i8 %138, 8
  br i1 %cmp261, label %if.then263, label %if.else277

if.then263:                                       ; preds = %if.else253
  %arrayidx264 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 0, ptr %arrayidx264, align 4
  %arrayidx265 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 0, ptr %arrayidx265, align 4
  %arrayidx266 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 0, ptr %arrayidx266, align 4
  %139 = load i32, ptr %l, align 4
  %mul268 = shl nsw i32 %139, 1
  store i32 %mul268, ptr %l, align 4
  %arrayidx269 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %140 = load i32, ptr %arrayidx269, align 4
  %mul270 = shl nsw i32 %140, 1
  store i32 %mul270, ptr %arrayidx269, align 4
  %arrayidx271 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %141 = load i32, ptr %arrayidx271, align 4
  %mul272 = mul nsw i32 %141, 3
  store i32 %mul272, ptr %arrayidx271, align 4
  %arrayidx273 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %142 = load i32, ptr %arrayidx273, align 4
  %mul274 = mul nsw i32 %142, 3
  store i32 %mul274, ptr %arrayidx273, align 4
  %arrayidx275 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %143 = load i32, ptr %arrayidx275, align 4
  %mul276 = shl nsw i32 %143, 2
  store i32 %mul276, ptr %arrayidx275, align 4
  br label %if.end331

if.else277:                                       ; preds = %if.else253
  %144 = load ptr, ptr %mid.addr, align 8
  %145 = load i32, ptr %i, align 4
  %add278 = add nsw i32 %145, 1
  %146 = load i32, ptr %x_size.addr, align 4
  %mul279 = mul nsw i32 %add278, %146
  %147 = load i32, ptr %j, align 4
  %add280 = add nsw i32 %mul279, %147
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds i8, ptr %144, i64 %idxprom281
  %148 = load i8, ptr %arrayidx282, align 1
  %cmp284 = icmp ult i8 %148, 8
  br i1 %cmp284, label %if.then286, label %if.else300

if.then286:                                       ; preds = %if.else277
  %arrayidx287 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 0, ptr %arrayidx287, align 4
  %arrayidx288 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 0, ptr %arrayidx288, align 4
  %arrayidx289 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 0, ptr %arrayidx289, align 4
  %arrayidx290 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %149 = load i32, ptr %arrayidx290, align 4
  %mul291 = shl nsw i32 %149, 1
  store i32 %mul291, ptr %arrayidx290, align 4
  %arrayidx292 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %150 = load i32, ptr %arrayidx292, align 4
  %mul293 = shl nsw i32 %150, 1
  store i32 %mul293, ptr %arrayidx292, align 4
  %151 = load i32, ptr %l, align 4
  %mul295 = mul nsw i32 %151, 3
  store i32 %mul295, ptr %l, align 4
  %arrayidx296 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %152 = load i32, ptr %arrayidx296, align 4
  %mul297 = mul nsw i32 %152, 3
  store i32 %mul297, ptr %arrayidx296, align 4
  %arrayidx298 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %153 = load i32, ptr %arrayidx298, align 4
  %mul299 = shl nsw i32 %153, 2
  store i32 %mul299, ptr %arrayidx298, align 4
  br label %if.end331

if.else300:                                       ; preds = %if.else277
  %154 = load ptr, ptr %mid.addr, align 8
  %155 = load i32, ptr %i, align 4
  %add301 = add nsw i32 %155, 1
  %156 = load i32, ptr %x_size.addr, align 4
  %mul302 = mul nsw i32 %add301, %156
  %157 = load i32, ptr %j, align 4
  %add303 = add nsw i32 %mul302, %157
  %add304 = add nsw i32 %add303, 1
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds i8, ptr %154, i64 %idxprom305
  %158 = load i8, ptr %arrayidx306, align 1
  %cmp308 = icmp ult i8 %158, 8
  br i1 %cmp308, label %if.then310, label %if.end331

if.then310:                                       ; preds = %if.else300
  %arrayidx311 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 0, ptr %arrayidx311, align 4
  %arrayidx312 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 0, ptr %arrayidx312, align 4
  %arrayidx313 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 0, ptr %arrayidx313, align 4
  %arrayidx314 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %159 = load i32, ptr %arrayidx314, align 4
  %mul315 = shl nsw i32 %159, 1
  store i32 %mul315, ptr %arrayidx314, align 4
  %arrayidx316 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %160 = load i32, ptr %arrayidx316, align 4
  %mul317 = shl nsw i32 %160, 1
  store i32 %mul317, ptr %arrayidx316, align 4
  %arrayidx318 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %161 = load i32, ptr %arrayidx318, align 4
  %mul319 = mul nsw i32 %161, 3
  store i32 %mul319, ptr %arrayidx318, align 4
  %arrayidx320 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %162 = load i32, ptr %arrayidx320, align 4
  %mul321 = mul nsw i32 %162, 3
  store i32 %mul321, ptr %arrayidx320, align 4
  %163 = load i32, ptr %l, align 4
  %mul323 = shl nsw i32 %163, 2
  store i32 %mul323, ptr %l, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.then169, %if.then216, %if.then263, %if.else300, %if.then310, %if.then286, %if.then239, %if.then193, %if.then147
  store i32 0, ptr %m, align 4
  br label %for.cond332

for.cond332:                                      ; preds = %for.inc354, %if.end331
  %storemerge12 = phi i32 [ 0, %if.end331 ], [ %inc355, %for.inc354 ]
  store i32 %storemerge12, ptr %y, align 4
  %cmp333 = icmp slt i32 %storemerge12, 3
  br i1 %cmp333, label %for.cond336, label %for.end356

for.cond336:                                      ; preds = %for.cond332, %for.inc
  %storemerge13 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond332 ]
  store i32 %storemerge13, ptr %x, align 4
  %cmp337 = icmp slt i32 %storemerge13, 3
  br i1 %cmp337, label %for.body339, label %for.inc354

for.body339:                                      ; preds = %for.cond336
  %164 = load i32, ptr %y, align 4
  %add341 = mul nsw i32 %164, 3
  %165 = load i32, ptr %x, align 4
  %add342 = add nsw i32 %add341, %165
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 %idxprom343
  %166 = load i32, ptr %arrayidx344, align 4
  %167 = load i32, ptr %m, align 4
  %cmp345 = icmp sgt i32 %166, %167
  br i1 %cmp345, label %if.then347, label %for.inc

if.then347:                                       ; preds = %for.body339
  %168 = load i32, ptr %y, align 4
  %add349 = mul nsw i32 %168, 3
  %169 = load i32, ptr %x, align 4
  %add350 = add nsw i32 %add349, %169
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 %idxprom351
  %170 = load i32, ptr %arrayidx352, align 4
  store i32 %170, ptr %m, align 4
  %171 = load i32, ptr %y, align 4
  store i32 %171, ptr %a, align 4
  %172 = load i32, ptr %x, align 4
  store i32 %172, ptr %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body339, %if.then347
  %173 = load i32, ptr %x, align 4
  %inc = add nsw i32 %173, 1
  br label %for.cond336, !llvm.loop !30

for.inc354:                                       ; preds = %for.cond336
  %174 = load i32, ptr %y, align 4
  %inc355 = add nsw i32 %174, 1
  br label %for.cond332, !llvm.loop !31

for.end356:                                       ; preds = %for.cond332
  %175 = load i32, ptr %m, align 4
  %cmp357 = icmp sgt i32 %175, 0
  br i1 %cmp357, label %if.then359, label %if.end412

if.then359:                                       ; preds = %for.end356
  %176 = load ptr, ptr %mid.addr, align 8
  %177 = load i32, ptr %i, align 4
  %178 = load i32, ptr %x_size.addr, align 4
  %mul360 = mul nsw i32 %177, %178
  %179 = load i32, ptr %j, align 4
  %add361 = add nsw i32 %mul360, %179
  %idxprom362 = sext i32 %add361 to i64
  %arrayidx363 = getelementptr inbounds i8, ptr %176, i64 %idxprom362
  %180 = load i8, ptr %arrayidx363, align 1
  %cmp365 = icmp ult i8 %180, 4
  br i1 %cmp365, label %if.then367, label %if.else376

if.then367:                                       ; preds = %if.then359
  %181 = load ptr, ptr %mid.addr, align 8
  %182 = load i32, ptr %i, align 4
  %183 = load i32, ptr %a, align 4
  %add368 = add nsw i32 %182, %183
  %sub369 = add nsw i32 %add368, -1
  %184 = load i32, ptr %x_size.addr, align 4
  %mul370 = mul nsw i32 %sub369, %184
  %185 = load i32, ptr %j, align 4
  %add371 = add nsw i32 %mul370, %185
  %186 = load i32, ptr %b, align 4
  %add372 = add nsw i32 %add371, %186
  %sub373 = add nsw i32 %add372, -1
  %idxprom374 = sext i32 %sub373 to i64
  %arrayidx375 = getelementptr inbounds i8, ptr %181, i64 %idxprom374
  store i8 4, ptr %arrayidx375, align 1
  br label %if.end392

if.else376:                                       ; preds = %if.then359
  %187 = load ptr, ptr %mid.addr, align 8
  %188 = load i32, ptr %i, align 4
  %189 = load i32, ptr %x_size.addr, align 4
  %mul377 = mul nsw i32 %188, %189
  %190 = load i32, ptr %j, align 4
  %add378 = add nsw i32 %mul377, %190
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds i8, ptr %187, i64 %idxprom379
  %191 = load i8, ptr %arrayidx380, align 1
  %add382 = add i8 %191, 1
  %192 = load ptr, ptr %mid.addr, align 8
  %193 = load i32, ptr %i, align 4
  %194 = load i32, ptr %a, align 4
  %add384 = add nsw i32 %193, %194
  %sub385 = add nsw i32 %add384, -1
  %195 = load i32, ptr %x_size.addr, align 4
  %mul386 = mul nsw i32 %sub385, %195
  %196 = load i32, ptr %j, align 4
  %add387 = add nsw i32 %mul386, %196
  %197 = load i32, ptr %b, align 4
  %add388 = add nsw i32 %add387, %197
  %sub389 = add nsw i32 %add388, -1
  %idxprom390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds i8, ptr %192, i64 %idxprom390
  store i8 %add382, ptr %arrayidx391, align 1
  br label %if.end392

if.end392:                                        ; preds = %if.else376, %if.then367
  %198 = load i32, ptr %a, align 4
  %add393 = shl nsw i32 %198, 1
  %199 = load i32, ptr %b, align 4
  %add394 = add nsw i32 %add393, %199
  %cmp395 = icmp slt i32 %add394, 3
  br i1 %cmp395, label %if.then397, label %if.end412

if.then397:                                       ; preds = %if.end392
  %200 = load i32, ptr %a, align 4
  %sub398 = add nsw i32 %200, -1
  %201 = load i32, ptr %i, align 4
  %add399 = add nsw i32 %201, %sub398
  store i32 %add399, ptr %i, align 4
  %202 = load i32, ptr %b, align 4
  %sub400 = add nsw i32 %202, -2
  %203 = load i32, ptr %j, align 4
  %add401 = add nsw i32 %203, %sub400
  store i32 %add401, ptr %j, align 4
  %cmp402 = icmp slt i32 %add399, 4
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %if.then397
  store i32 4, ptr %i, align 4
  br label %if.end405

if.end405:                                        ; preds = %if.then404, %if.then397
  %204 = load i32, ptr %j, align 4
  %cmp406 = icmp slt i32 %204, 4
  %spec.store.select = select i1 %cmp406, i32 4, i32 %204
  store i32 %spec.store.select, ptr %j, align 4
  br label %if.end412

if.end412:                                        ; preds = %for.end356, %if.end405, %if.end392, %land.lhs.true, %if.end
  %205 = load i32, ptr %n, align 4
  %cmp413 = icmp eq i32 %205, 2
  br i1 %cmp413, label %if.then415, label %if.end709

if.then415:                                       ; preds = %if.end412
  %206 = load ptr, ptr %mid.addr, align 8
  %207 = load i32, ptr %i, align 4
  %sub416 = add nsw i32 %207, -1
  %208 = load i32, ptr %x_size.addr, align 4
  %mul417 = mul nsw i32 %sub416, %208
  %209 = load i32, ptr %j, align 4
  %add418 = add nsw i32 %mul417, %209
  %sub419 = add nsw i32 %add418, -1
  %idxprom420 = sext i32 %sub419 to i64
  %arrayidx421 = getelementptr inbounds i8, ptr %206, i64 %idxprom420
  %210 = load i8, ptr %arrayidx421, align 1
  %cmp423 = icmp ult i8 %210, 8
  %conv424 = zext i1 %cmp423 to i32
  store i32 %conv424, ptr %b00, align 4
  %211 = load ptr, ptr %mid.addr, align 8
  %212 = load i32, ptr %i, align 4
  %sub425 = add nsw i32 %212, -1
  %213 = load i32, ptr %x_size.addr, align 4
  %mul426 = mul nsw i32 %sub425, %213
  %214 = load i32, ptr %j, align 4
  %add427 = add nsw i32 %mul426, %214
  %add428 = add nsw i32 %add427, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds i8, ptr %211, i64 %idxprom429
  %215 = load i8, ptr %arrayidx430, align 1
  %cmp432 = icmp ult i8 %215, 8
  %conv433 = zext i1 %cmp432 to i32
  store i32 %conv433, ptr %b02, align 4
  %216 = load ptr, ptr %mid.addr, align 8
  %217 = load i32, ptr %i, align 4
  %add434 = add nsw i32 %217, 1
  %218 = load i32, ptr %x_size.addr, align 4
  %mul435 = mul nsw i32 %add434, %218
  %219 = load i32, ptr %j, align 4
  %add436 = add nsw i32 %mul435, %219
  %sub437 = add nsw i32 %add436, -1
  %idxprom438 = sext i32 %sub437 to i64
  %arrayidx439 = getelementptr inbounds i8, ptr %216, i64 %idxprom438
  %220 = load i8, ptr %arrayidx439, align 1
  %cmp441 = icmp ult i8 %220, 8
  %conv442 = zext i1 %cmp441 to i32
  store i32 %conv442, ptr %b20, align 4
  %221 = load ptr, ptr %mid.addr, align 8
  %222 = load i32, ptr %i, align 4
  %add443 = add nsw i32 %222, 1
  %223 = load i32, ptr %x_size.addr, align 4
  %mul444 = mul nsw i32 %add443, %223
  %224 = load i32, ptr %j, align 4
  %add445 = add nsw i32 %mul444, %224
  %add446 = add nsw i32 %add445, 1
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds i8, ptr %221, i64 %idxprom447
  %225 = load i8, ptr %arrayidx448, align 1
  %cmp450 = icmp ult i8 %225, 8
  %conv451 = zext i1 %cmp450 to i32
  store i32 %conv451, ptr %b22, align 4
  %226 = load i32, ptr %b00, align 4
  %227 = load i32, ptr %b02, align 4
  %add452 = add nsw i32 %226, %227
  %228 = load i32, ptr %b20, align 4
  %add453 = add nsw i32 %add452, %228
  %add454 = add nsw i32 %add453, %conv451
  %cmp455 = icmp eq i32 %add454, 2
  br i1 %cmp455, label %land.lhs.true457, label %if.else565

land.lhs.true457:                                 ; preds = %if.then415
  %229 = load i32, ptr %b00, align 4
  %230 = load i32, ptr %b22, align 4
  %or = or i32 %229, %230
  %231 = load i32, ptr %b02, align 4
  %232 = load i32, ptr %b20, align 4
  %or458 = or i32 %231, %232
  %and = and i32 %or, %or458
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else565, label %if.then459

if.then459:                                       ; preds = %land.lhs.true457
  %233 = load i32, ptr %b00, align 4
  %tobool460.not = icmp eq i32 %233, 0
  br i1 %tobool460.not, label %if.else466, label %if.then461

if.then461:                                       ; preds = %if.then459
  %234 = load i32, ptr %b02, align 4
  %tobool462.not = icmp eq i32 %234, 0
  %. = select i1 %tobool462.not, i32 -1, i32 0
  %.14 = select i1 %tobool462.not, i32 0, i32 -1
  br label %if.end471

if.else466:                                       ; preds = %if.then459
  %235 = load i32, ptr %b02, align 4
  %tobool467.not = icmp eq i32 %235, 0
  %.15 = select i1 %tobool467.not, i32 0, i32 1
  %.16 = select i1 %tobool467.not, i32 1, i32 0
  br label %if.end471

if.end471:                                        ; preds = %if.else466, %if.then461
  %storemerge11 = phi i32 [ %., %if.then461 ], [ %.15, %if.else466 ]
  %storemerge10 = phi i32 [ %.14, %if.then461 ], [ %.16, %if.else466 ]
  store i32 %storemerge11, ptr %x, align 4
  store i32 %storemerge10, ptr %y, align 4
  %236 = load ptr, ptr %r.addr, align 8
  %237 = load i32, ptr %i, align 4
  %add472 = add nsw i32 %237, %storemerge10
  %238 = load i32, ptr %x_size.addr, align 4
  %mul473 = mul nsw i32 %add472, %238
  %239 = load i32, ptr %j, align 4
  %add474 = add nsw i32 %mul473, %239
  %240 = load i32, ptr %x, align 4
  %add475 = add nsw i32 %add474, %240
  %idxprom476 = sext i32 %add475 to i64
  %arrayidx477 = getelementptr inbounds i32, ptr %236, i64 %idxprom476
  %241 = load i32, ptr %arrayidx477, align 4
  %conv478 = sitofp i32 %241 to float
  %242 = load i32, ptr %centre, align 4
  %conv479 = sitofp i32 %242 to float
  %div = fdiv float %conv478, %conv479
  %conv480 = fpext float %div to double
  %cmp481 = fcmp ogt double %conv480, 0x3FE6666666666666
  br i1 %cmp481, label %if.then483, label %if.end709

if.then483:                                       ; preds = %if.end471
  %243 = load i32, ptr %x, align 4
  %cmp484 = icmp eq i32 %243, 0
  br i1 %cmp484, label %land.lhs.true486, label %lor.lhs.false

land.lhs.true486:                                 ; preds = %if.then483
  %244 = load ptr, ptr %mid.addr, align 8
  %245 = load i32, ptr %i, align 4
  %246 = load i32, ptr %y, align 4
  %mul487 = shl nsw i32 %246, 1
  %add488 = add nsw i32 %245, %mul487
  %247 = load i32, ptr %x_size.addr, align 4
  %mul489 = mul nsw i32 %add488, %247
  %248 = load i32, ptr %j, align 4
  %add490 = add nsw i32 %mul489, %248
  %idxprom491 = sext i32 %add490 to i64
  %arrayidx492 = getelementptr inbounds i8, ptr %244, i64 %idxprom491
  %249 = load i8, ptr %arrayidx492, align 1
  %cmp494 = icmp ugt i8 %249, 7
  br i1 %cmp494, label %land.lhs.true496, label %lor.lhs.false

land.lhs.true496:                                 ; preds = %land.lhs.true486
  %250 = load ptr, ptr %mid.addr, align 8
  %251 = load i32, ptr %i, align 4
  %252 = load i32, ptr %y, align 4
  %mul497 = shl nsw i32 %252, 1
  %add498 = add nsw i32 %251, %mul497
  %253 = load i32, ptr %x_size.addr, align 4
  %mul499 = mul nsw i32 %add498, %253
  %254 = load i32, ptr %j, align 4
  %add500 = add nsw i32 %mul499, %254
  %sub501 = add nsw i32 %add500, -1
  %idxprom502 = sext i32 %sub501 to i64
  %arrayidx503 = getelementptr inbounds i8, ptr %250, i64 %idxprom502
  %255 = load i8, ptr %arrayidx503, align 1
  %cmp505 = icmp ugt i8 %255, 7
  br i1 %cmp505, label %land.lhs.true507, label %lor.lhs.false

land.lhs.true507:                                 ; preds = %land.lhs.true496
  %256 = load ptr, ptr %mid.addr, align 8
  %257 = load i32, ptr %i, align 4
  %258 = load i32, ptr %y, align 4
  %mul508 = shl nsw i32 %258, 1
  %add509 = add nsw i32 %257, %mul508
  %259 = load i32, ptr %x_size.addr, align 4
  %mul510 = mul nsw i32 %add509, %259
  %260 = load i32, ptr %j, align 4
  %add511 = add nsw i32 %mul510, %260
  %add512 = add nsw i32 %add511, 1
  %idxprom513 = sext i32 %add512 to i64
  %arrayidx514 = getelementptr inbounds i8, ptr %256, i64 %idxprom513
  %261 = load i8, ptr %arrayidx514, align 1
  %cmp516 = icmp ugt i8 %261, 7
  br i1 %cmp516, label %if.then552, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true507, %land.lhs.true496, %land.lhs.true486, %if.then483
  %262 = load i32, ptr %y, align 4
  %cmp518 = icmp eq i32 %262, 0
  br i1 %cmp518, label %land.lhs.true520, label %if.end709

land.lhs.true520:                                 ; preds = %lor.lhs.false
  %263 = load ptr, ptr %mid.addr, align 8
  %264 = load i32, ptr %i, align 4
  %265 = load i32, ptr %x_size.addr, align 4
  %mul521 = mul nsw i32 %264, %265
  %266 = load i32, ptr %j, align 4
  %add522 = add nsw i32 %mul521, %266
  %267 = load i32, ptr %x, align 4
  %mul523 = shl nsw i32 %267, 1
  %add524 = add nsw i32 %add522, %mul523
  %idxprom525 = sext i32 %add524 to i64
  %arrayidx526 = getelementptr inbounds i8, ptr %263, i64 %idxprom525
  %268 = load i8, ptr %arrayidx526, align 1
  %cmp528 = icmp ugt i8 %268, 7
  br i1 %cmp528, label %land.lhs.true530, label %if.end709

land.lhs.true530:                                 ; preds = %land.lhs.true520
  %269 = load ptr, ptr %mid.addr, align 8
  %270 = load i32, ptr %i, align 4
  %add531 = add nsw i32 %270, 1
  %271 = load i32, ptr %x_size.addr, align 4
  %mul532 = mul nsw i32 %add531, %271
  %272 = load i32, ptr %j, align 4
  %add533 = add nsw i32 %mul532, %272
  %273 = load i32, ptr %x, align 4
  %mul534 = shl nsw i32 %273, 1
  %add535 = add nsw i32 %add533, %mul534
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds i8, ptr %269, i64 %idxprom536
  %274 = load i8, ptr %arrayidx537, align 1
  %cmp539 = icmp ugt i8 %274, 7
  br i1 %cmp539, label %land.lhs.true541, label %if.end709

land.lhs.true541:                                 ; preds = %land.lhs.true530
  %275 = load ptr, ptr %mid.addr, align 8
  %276 = load i32, ptr %i, align 4
  %sub542 = add nsw i32 %276, -1
  %277 = load i32, ptr %x_size.addr, align 4
  %mul543 = mul nsw i32 %sub542, %277
  %278 = load i32, ptr %j, align 4
  %add544 = add nsw i32 %mul543, %278
  %279 = load i32, ptr %x, align 4
  %mul545 = shl nsw i32 %279, 1
  %add546 = add nsw i32 %add544, %mul545
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds i8, ptr %275, i64 %idxprom547
  %280 = load i8, ptr %arrayidx548, align 1
  %cmp550 = icmp ugt i8 %280, 7
  br i1 %cmp550, label %if.then552, label %if.end709

if.then552:                                       ; preds = %land.lhs.true541, %land.lhs.true507
  %281 = load ptr, ptr %mid.addr, align 8
  %282 = load i32, ptr %i, align 4
  %283 = load i32, ptr %x_size.addr, align 4
  %mul553 = mul nsw i32 %282, %283
  %284 = load i32, ptr %j, align 4
  %add554 = add nsw i32 %mul553, %284
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds i8, ptr %281, i64 %idxprom555
  store i8 100, ptr %arrayidx556, align 1
  %285 = load ptr, ptr %mid.addr, align 8
  %286 = load i32, ptr %i, align 4
  %287 = load i32, ptr %y, align 4
  %add557 = add nsw i32 %286, %287
  %288 = load i32, ptr %x_size.addr, align 4
  %mul558 = mul nsw i32 %add557, %288
  %289 = load i32, ptr %j, align 4
  %add559 = add nsw i32 %mul558, %289
  %290 = load i32, ptr %x, align 4
  %add560 = add nsw i32 %add559, %290
  %idxprom561 = sext i32 %add560 to i64
  %arrayidx562 = getelementptr inbounds i8, ptr %285, i64 %idxprom561
  store i8 3, ptr %arrayidx562, align 1
  br label %if.end709

if.else565:                                       ; preds = %land.lhs.true457, %if.then415
  %291 = load ptr, ptr %mid.addr, align 8
  %292 = load i32, ptr %i, align 4
  %sub566 = add nsw i32 %292, -1
  %293 = load i32, ptr %x_size.addr, align 4
  %mul567 = mul nsw i32 %sub566, %293
  %294 = load i32, ptr %j, align 4
  %add568 = add nsw i32 %mul567, %294
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds i8, ptr %291, i64 %idxprom569
  %295 = load i8, ptr %arrayidx570, align 1
  %cmp572 = icmp ult i8 %295, 8
  %conv573 = zext i1 %cmp572 to i32
  store i32 %conv573, ptr %b01, align 4
  %296 = load ptr, ptr %mid.addr, align 8
  %297 = load i32, ptr %i, align 4
  %298 = load i32, ptr %x_size.addr, align 4
  %mul574 = mul nsw i32 %297, %298
  %299 = load i32, ptr %j, align 4
  %add575 = add nsw i32 %mul574, %299
  %add576 = add nsw i32 %add575, 1
  %idxprom577 = sext i32 %add576 to i64
  %arrayidx578 = getelementptr inbounds i8, ptr %296, i64 %idxprom577
  %300 = load i8, ptr %arrayidx578, align 1
  %cmp580 = icmp ult i8 %300, 8
  %conv581 = zext i1 %cmp580 to i32
  store i32 %conv581, ptr %b12, align 4
  %301 = load ptr, ptr %mid.addr, align 8
  %302 = load i32, ptr %i, align 4
  %add582 = add nsw i32 %302, 1
  %303 = load i32, ptr %x_size.addr, align 4
  %mul583 = mul nsw i32 %add582, %303
  %304 = load i32, ptr %j, align 4
  %add584 = add nsw i32 %mul583, %304
  %idxprom585 = sext i32 %add584 to i64
  %arrayidx586 = getelementptr inbounds i8, ptr %301, i64 %idxprom585
  %305 = load i8, ptr %arrayidx586, align 1
  %cmp588 = icmp ult i8 %305, 8
  %conv589 = zext i1 %cmp588 to i32
  store i32 %conv589, ptr %b21, align 4
  %306 = load ptr, ptr %mid.addr, align 8
  %307 = load i32, ptr %i, align 4
  %308 = load i32, ptr %x_size.addr, align 4
  %mul590 = mul nsw i32 %307, %308
  %309 = load i32, ptr %j, align 4
  %add591 = add nsw i32 %mul590, %309
  %sub592 = add nsw i32 %add591, -1
  %idxprom593 = sext i32 %sub592 to i64
  %arrayidx594 = getelementptr inbounds i8, ptr %306, i64 %idxprom593
  %310 = load i8, ptr %arrayidx594, align 1
  %cmp596 = icmp ult i8 %310, 8
  %conv597 = zext i1 %cmp596 to i32
  store i32 %conv597, ptr %b10, align 4
  %311 = load i32, ptr %b01, align 4
  %312 = load i32, ptr %b12, align 4
  %add598 = add nsw i32 %311, %312
  %313 = load i32, ptr %b21, align 4
  %add599 = add nsw i32 %add598, %313
  %add600 = add nsw i32 %add599, %conv597
  %cmp601 = icmp eq i32 %add600, 2
  br i1 %cmp601, label %land.lhs.true603, label %if.end709

land.lhs.true603:                                 ; preds = %if.else565
  %314 = load i32, ptr %b10, align 4
  %315 = load i32, ptr %b12, align 4
  %or604 = or i32 %314, %315
  %316 = load i32, ptr %b01, align 4
  %317 = load i32, ptr %b21, align 4
  %or605 = or i32 %316, %317
  %and606 = and i32 %or604, %or605
  %tobool607.not = icmp eq i32 %and606, 0
  br i1 %tobool607.not, label %if.end709, label %land.lhs.true608

land.lhs.true608:                                 ; preds = %land.lhs.true603
  %318 = load i32, ptr %b01, align 4
  %319 = load ptr, ptr %mid.addr, align 8
  %320 = load i32, ptr %i, align 4
  %sub609 = add nsw i32 %320, -2
  %321 = load i32, ptr %x_size.addr, align 4
  %mul610 = mul nsw i32 %sub609, %321
  %322 = load i32, ptr %j, align 4
  %add611 = add nsw i32 %mul610, %322
  %sub612 = add nsw i32 %add611, -1
  %idxprom613 = sext i32 %sub612 to i64
  %arrayidx614 = getelementptr inbounds i8, ptr %319, i64 %idxprom613
  %323 = load i8, ptr %arrayidx614, align 1
  %cmp616 = icmp ult i8 %323, 8
  %324 = load ptr, ptr %mid.addr, align 8
  %325 = load i32, ptr %i, align 4
  %sub618 = add nsw i32 %325, -2
  %326 = load i32, ptr %x_size.addr, align 4
  %mul619 = mul nsw i32 %sub618, %326
  %327 = load i32, ptr %j, align 4
  %add620 = add nsw i32 %mul619, %327
  %add621 = add nsw i32 %add620, 1
  %idxprom622 = sext i32 %add621 to i64
  %arrayidx623 = getelementptr inbounds i8, ptr %324, i64 %idxprom622
  %328 = load i8, ptr %arrayidx623, align 1
  %cmp625 = icmp ult i8 %328, 8
  %or6272 = or i1 %cmp616, %cmp625
  %or627 = zext i1 %or6272 to i32
  %and628 = and i32 %318, %or627
  %329 = load i32, ptr %b10, align 4
  %330 = load ptr, ptr %mid.addr, align 8
  %331 = load i32, ptr %i, align 4
  %sub629 = add nsw i32 %331, -1
  %332 = load i32, ptr %x_size.addr, align 4
  %mul630 = mul nsw i32 %sub629, %332
  %333 = load i32, ptr %j, align 4
  %add631 = add nsw i32 %mul630, %333
  %sub632 = add nsw i32 %add631, -2
  %idxprom633 = sext i32 %sub632 to i64
  %arrayidx634 = getelementptr inbounds i8, ptr %330, i64 %idxprom633
  %334 = load i8, ptr %arrayidx634, align 1
  %cmp636 = icmp ult i8 %334, 8
  %335 = load ptr, ptr %mid.addr, align 8
  %336 = load i32, ptr %i, align 4
  %add638 = add nsw i32 %336, 1
  %337 = load i32, ptr %x_size.addr, align 4
  %mul639 = mul nsw i32 %add638, %337
  %338 = load i32, ptr %j, align 4
  %add640 = add nsw i32 %mul639, %338
  %sub641 = add nsw i32 %add640, -2
  %idxprom642 = sext i32 %sub641 to i64
  %arrayidx643 = getelementptr inbounds i8, ptr %335, i64 %idxprom642
  %339 = load i8, ptr %arrayidx643, align 1
  %cmp645 = icmp ult i8 %339, 8
  %or6473 = or i1 %cmp636, %cmp645
  %or647 = zext i1 %or6473 to i32
  %and648 = and i32 %329, %or647
  %or649 = or i32 %and628, %and648
  %340 = load i32, ptr %b12, align 4
  %341 = load ptr, ptr %mid.addr, align 8
  %342 = load i32, ptr %i, align 4
  %sub650 = add nsw i32 %342, -1
  %343 = load i32, ptr %x_size.addr, align 4
  %mul651 = mul nsw i32 %sub650, %343
  %344 = load i32, ptr %j, align 4
  %add652 = add nsw i32 %mul651, %344
  %add653 = add nsw i32 %add652, 2
  %idxprom654 = sext i32 %add653 to i64
  %arrayidx655 = getelementptr inbounds i8, ptr %341, i64 %idxprom654
  %345 = load i8, ptr %arrayidx655, align 1
  %cmp657 = icmp ult i8 %345, 8
  %346 = load ptr, ptr %mid.addr, align 8
  %347 = load i32, ptr %i, align 4
  %add659 = add nsw i32 %347, 1
  %348 = load i32, ptr %x_size.addr, align 4
  %mul660 = mul nsw i32 %add659, %348
  %349 = load i32, ptr %j, align 4
  %add661 = add nsw i32 %mul660, %349
  %add662 = add nsw i32 %add661, 2
  %idxprom663 = sext i32 %add662 to i64
  %arrayidx664 = getelementptr inbounds i8, ptr %346, i64 %idxprom663
  %350 = load i8, ptr %arrayidx664, align 1
  %cmp666 = icmp ult i8 %350, 8
  %or6684 = or i1 %cmp657, %cmp666
  %or668 = zext i1 %or6684 to i32
  %and669 = and i32 %340, %or668
  %or670 = or i32 %or649, %and669
  %351 = load i32, ptr %b21, align 4
  %352 = load ptr, ptr %mid.addr, align 8
  %353 = load i32, ptr %i, align 4
  %add671 = add nsw i32 %353, 2
  %354 = load i32, ptr %x_size.addr, align 4
  %mul672 = mul nsw i32 %add671, %354
  %355 = load i32, ptr %j, align 4
  %add673 = add nsw i32 %mul672, %355
  %sub674 = add nsw i32 %add673, -1
  %idxprom675 = sext i32 %sub674 to i64
  %arrayidx676 = getelementptr inbounds i8, ptr %352, i64 %idxprom675
  %356 = load i8, ptr %arrayidx676, align 1
  %cmp678 = icmp ult i8 %356, 8
  %357 = load ptr, ptr %mid.addr, align 8
  %358 = load i32, ptr %i, align 4
  %add680 = add nsw i32 %358, 2
  %359 = load i32, ptr %x_size.addr, align 4
  %mul681 = mul nsw i32 %add680, %359
  %360 = load i32, ptr %j, align 4
  %add682 = add nsw i32 %mul681, %360
  %add683 = add nsw i32 %add682, 1
  %idxprom684 = sext i32 %add683 to i64
  %arrayidx685 = getelementptr inbounds i8, ptr %357, i64 %idxprom684
  %361 = load i8, ptr %arrayidx685, align 1
  %cmp687 = icmp ult i8 %361, 8
  %or6895 = or i1 %cmp678, %cmp687
  %or689 = zext i1 %or6895 to i32
  %and690 = and i32 %351, %or689
  %or691 = or i32 %or670, %and690
  %tobool692.not = icmp eq i32 %or691, 0
  br i1 %tobool692.not, label %if.end709, label %if.then693

if.then693:                                       ; preds = %land.lhs.true608
  %362 = load ptr, ptr %mid.addr, align 8
  %363 = load i32, ptr %i, align 4
  %364 = load i32, ptr %x_size.addr, align 4
  %mul694 = mul nsw i32 %363, %364
  %365 = load i32, ptr %j, align 4
  %add695 = add nsw i32 %mul694, %365
  %idxprom696 = sext i32 %add695 to i64
  %arrayidx697 = getelementptr inbounds i8, ptr %362, i64 %idxprom696
  store i8 100, ptr %arrayidx697, align 1
  %366 = load i32, ptr %i, align 4
  %dec = add nsw i32 %366, -1
  store i32 %dec, ptr %i, align 4
  %367 = load i32, ptr %j, align 4
  %sub698 = add nsw i32 %367, -2
  store i32 %sub698, ptr %j, align 4
  %cmp699 = icmp slt i32 %366, 5
  br i1 %cmp699, label %if.then701, label %if.end702

if.then701:                                       ; preds = %if.then693
  store i32 4, ptr %i, align 4
  br label %if.end702

if.end702:                                        ; preds = %if.then701, %if.then693
  %368 = load i32, ptr %j, align 4
  %cmp703 = icmp slt i32 %368, 4
  %spec.store.select17 = select i1 %cmp703, i32 4, i32 %368
  store i32 %spec.store.select17, ptr %j, align 4
  br label %if.end709

if.end709:                                        ; preds = %lor.lhs.false, %land.lhs.true520, %land.lhs.true530, %land.lhs.true541, %if.then552, %if.end471, %if.end702, %land.lhs.true608, %land.lhs.true603, %if.else565, %if.end412
  %369 = load i32, ptr %n, align 4
  %cmp710 = icmp sgt i32 %369, 2
  br i1 %cmp710, label %if.then712, label %for.inc823

if.then712:                                       ; preds = %if.end709
  %370 = load ptr, ptr %mid.addr, align 8
  %371 = load i32, ptr %i, align 4
  %sub713 = add nsw i32 %371, -1
  %372 = load i32, ptr %x_size.addr, align 4
  %mul714 = mul nsw i32 %sub713, %372
  %373 = load i32, ptr %j, align 4
  %add715 = add nsw i32 %mul714, %373
  %idxprom716 = sext i32 %add715 to i64
  %arrayidx717 = getelementptr inbounds i8, ptr %370, i64 %idxprom716
  %374 = load i8, ptr %arrayidx717, align 1
  %cmp719 = icmp ult i8 %374, 8
  %conv720 = zext i1 %cmp719 to i32
  store i32 %conv720, ptr %b01, align 4
  %375 = load ptr, ptr %mid.addr, align 8
  %376 = load i32, ptr %i, align 4
  %377 = load i32, ptr %x_size.addr, align 4
  %mul721 = mul nsw i32 %376, %377
  %378 = load i32, ptr %j, align 4
  %add722 = add nsw i32 %mul721, %378
  %add723 = add nsw i32 %add722, 1
  %idxprom724 = sext i32 %add723 to i64
  %arrayidx725 = getelementptr inbounds i8, ptr %375, i64 %idxprom724
  %379 = load i8, ptr %arrayidx725, align 1
  %cmp727 = icmp ult i8 %379, 8
  %conv728 = zext i1 %cmp727 to i32
  store i32 %conv728, ptr %b12, align 4
  %380 = load ptr, ptr %mid.addr, align 8
  %381 = load i32, ptr %i, align 4
  %add729 = add nsw i32 %381, 1
  %382 = load i32, ptr %x_size.addr, align 4
  %mul730 = mul nsw i32 %add729, %382
  %383 = load i32, ptr %j, align 4
  %add731 = add nsw i32 %mul730, %383
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds i8, ptr %380, i64 %idxprom732
  %384 = load i8, ptr %arrayidx733, align 1
  %cmp735 = icmp ult i8 %384, 8
  %conv736 = zext i1 %cmp735 to i32
  store i32 %conv736, ptr %b21, align 4
  %385 = load ptr, ptr %mid.addr, align 8
  %386 = load i32, ptr %i, align 4
  %387 = load i32, ptr %x_size.addr, align 4
  %mul737 = mul nsw i32 %386, %387
  %388 = load i32, ptr %j, align 4
  %add738 = add nsw i32 %mul737, %388
  %sub739 = add nsw i32 %add738, -1
  %idxprom740 = sext i32 %sub739 to i64
  %arrayidx741 = getelementptr inbounds i8, ptr %385, i64 %idxprom740
  %389 = load i8, ptr %arrayidx741, align 1
  %cmp743 = icmp ult i8 %389, 8
  %conv744 = zext i1 %cmp743 to i32
  store i32 %conv744, ptr %b10, align 4
  %390 = load i32, ptr %b01, align 4
  %391 = load i32, ptr %b12, align 4
  %add745 = add nsw i32 %390, %391
  %392 = load i32, ptr %b21, align 4
  %add746 = add nsw i32 %add745, %392
  %add747 = add nsw i32 %add746, %conv744
  %cmp748 = icmp sgt i32 %add747, 1
  br i1 %cmp748, label %if.then750, label %for.inc823

if.then750:                                       ; preds = %if.then712
  %393 = load ptr, ptr %mid.addr, align 8
  %394 = load i32, ptr %i, align 4
  %sub751 = add nsw i32 %394, -1
  %395 = load i32, ptr %x_size.addr, align 4
  %mul752 = mul nsw i32 %sub751, %395
  %396 = load i32, ptr %j, align 4
  %add753 = add nsw i32 %mul752, %396
  %sub754 = add nsw i32 %add753, -1
  %idxprom755 = sext i32 %sub754 to i64
  %arrayidx756 = getelementptr inbounds i8, ptr %393, i64 %idxprom755
  %397 = load i8, ptr %arrayidx756, align 1
  %cmp758 = icmp ult i8 %397, 8
  %conv759 = zext i1 %cmp758 to i32
  store i32 %conv759, ptr %b00, align 4
  %398 = load ptr, ptr %mid.addr, align 8
  %399 = load i32, ptr %i, align 4
  %sub760 = add nsw i32 %399, -1
  %400 = load i32, ptr %x_size.addr, align 4
  %mul761 = mul nsw i32 %sub760, %400
  %401 = load i32, ptr %j, align 4
  %add762 = add nsw i32 %mul761, %401
  %add763 = add nsw i32 %add762, 1
  %idxprom764 = sext i32 %add763 to i64
  %arrayidx765 = getelementptr inbounds i8, ptr %398, i64 %idxprom764
  %402 = load i8, ptr %arrayidx765, align 1
  %cmp767 = icmp ult i8 %402, 8
  %conv768 = zext i1 %cmp767 to i32
  store i32 %conv768, ptr %b02, align 4
  %403 = load ptr, ptr %mid.addr, align 8
  %404 = load i32, ptr %i, align 4
  %add769 = add nsw i32 %404, 1
  %405 = load i32, ptr %x_size.addr, align 4
  %mul770 = mul nsw i32 %add769, %405
  %406 = load i32, ptr %j, align 4
  %add771 = add nsw i32 %mul770, %406
  %sub772 = add nsw i32 %add771, -1
  %idxprom773 = sext i32 %sub772 to i64
  %arrayidx774 = getelementptr inbounds i8, ptr %403, i64 %idxprom773
  %407 = load i8, ptr %arrayidx774, align 1
  %cmp776 = icmp ult i8 %407, 8
  %conv777 = zext i1 %cmp776 to i32
  store i32 %conv777, ptr %b20, align 4
  %408 = load ptr, ptr %mid.addr, align 8
  %409 = load i32, ptr %i, align 4
  %add778 = add nsw i32 %409, 1
  %410 = load i32, ptr %x_size.addr, align 4
  %mul779 = mul nsw i32 %add778, %410
  %411 = load i32, ptr %j, align 4
  %add780 = add nsw i32 %mul779, %411
  %add781 = add nsw i32 %add780, 1
  %idxprom782 = sext i32 %add781 to i64
  %arrayidx783 = getelementptr inbounds i8, ptr %408, i64 %idxprom782
  %412 = load i8, ptr %arrayidx783, align 1
  %cmp785 = icmp ult i8 %412, 8
  %conv786 = zext i1 %cmp785 to i32
  store i32 %conv786, ptr %b22, align 4
  %413 = load i32, ptr %b00, align 4
  %414 = load i32, ptr %b01, align 4
  %or787 = or i32 %413, %414
  store i32 %or787, ptr %p1, align 4
  %415 = load i32, ptr %b02, align 4
  %416 = load i32, ptr %b12, align 4
  %or788 = or i32 %415, %416
  store i32 %or788, ptr %p2, align 4
  %417 = load i32, ptr %b22, align 4
  %418 = load i32, ptr %b21, align 4
  %or789 = or i32 %417, %418
  store i32 %or789, ptr %p3, align 4
  %419 = load i32, ptr %b20, align 4
  %420 = load i32, ptr %b10, align 4
  %or790 = or i32 %419, %420
  store i32 %or790, ptr %p4, align 4
  %421 = load i32, ptr %p1, align 4
  %422 = load i32, ptr %p2, align 4
  %add791 = add nsw i32 %421, %422
  %423 = load i32, ptr %p3, align 4
  %add792 = add nsw i32 %add791, %423
  %add793 = add nsw i32 %add792, %or790
  %424 = load i32, ptr %b01, align 4
  %and794 = and i32 %424, %422
  %425 = load i32, ptr %b12, align 4
  %and795 = and i32 %425, %423
  %add796 = add nsw i32 %and794, %and795
  %426 = load i32, ptr %b21, align 4
  %427 = load i32, ptr %p4, align 4
  %and797 = and i32 %426, %427
  %add798 = add nsw i32 %add796, %and797
  %428 = load i32, ptr %b10, align 4
  %429 = load i32, ptr %p1, align 4
  %and799 = and i32 %428, %429
  %add800 = add nsw i32 %add798, %and799
  %sub801 = sub nsw i32 %add793, %add800
  %cmp802 = icmp slt i32 %sub801, 2
  br i1 %cmp802, label %if.then804, label %for.inc823

if.then804:                                       ; preds = %if.then750
  %430 = load ptr, ptr %mid.addr, align 8
  %431 = load i32, ptr %i, align 4
  %432 = load i32, ptr %x_size.addr, align 4
  %mul805 = mul nsw i32 %431, %432
  %433 = load i32, ptr %j, align 4
  %add806 = add nsw i32 %mul805, %433
  %idxprom807 = sext i32 %add806 to i64
  %arrayidx808 = getelementptr inbounds i8, ptr %430, i64 %idxprom807
  store i8 100, ptr %arrayidx808, align 1
  %434 = load i32, ptr %i, align 4
  %dec809 = add nsw i32 %434, -1
  store i32 %dec809, ptr %i, align 4
  %435 = load i32, ptr %j, align 4
  %sub810 = add nsw i32 %435, -2
  store i32 %sub810, ptr %j, align 4
  %cmp811 = icmp slt i32 %434, 5
  br i1 %cmp811, label %if.then813, label %if.end814

if.then813:                                       ; preds = %if.then804
  store i32 4, ptr %i, align 4
  br label %if.end814

if.end814:                                        ; preds = %if.then813, %if.then804
  %436 = load i32, ptr %j, align 4
  %cmp815 = icmp slt i32 %436, 4
  %spec.store.select18 = select i1 %cmp815, i32 4, i32 %436
  store i32 %spec.store.select18, ptr %j, align 4
  br label %for.inc823

for.inc823:                                       ; preds = %for.body4, %if.then712, %if.end814, %if.then750, %if.end709
  %437 = load i32, ptr %j, align 4
  %inc824 = add nsw i32 %437, 1
  br label %for.cond1, !llvm.loop !32

for.inc826:                                       ; preds = %for.cond1
  %438 = load i32, ptr %i, align 4
  %inc827 = add nsw i32 %438, 1
  br label %for.cond, !llvm.loop !33

for.end828:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @susan_edges(ptr noundef %in, ptr noundef %r, ptr noundef %mid, ptr noundef %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %z = alloca float, align 4
  %do_symmetry = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %c = alloca i8, align 1
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %mid, ptr %mid.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %max_no, ptr %max_no.addr, align 4
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %x_size, %y_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %0 = load ptr, ptr %r.addr, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %r, i32 noundef 0, i64 noundef %mul1, i64 noundef %1) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc285, %entry
  %storemerge = phi i32 [ 3, %entry ], [ %inc286, %for.inc285 ]
  store i32 %storemerge, ptr %i, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %sub = add nsw i32 %2, -3
  %cmp = icmp slt i32 %storemerge, %sub
  br i1 %cmp, label %for.cond3, label %for.cond288

for.cond3:                                        ; preds = %for.cond, %for.inc
  %storemerge16 = phi i32 [ %inc, %for.inc ], [ 3, %for.cond ]
  store i32 %storemerge16, ptr %j, align 4
  %3 = load i32, ptr %x_size.addr, align 4
  %sub4 = add nsw i32 %3, -3
  %cmp5 = icmp slt i32 %storemerge16, %sub4
  br i1 %cmp5, label %for.body7, label %for.inc285

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load i32, ptr %i, align 4
  %sub8 = add nsw i32 %5, -3
  %6 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %6
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %7 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %7 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %10, %11
  %12 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %12
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  %idx.ext15 = zext i8 %13 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %8, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %15 = load i8, ptr %14, align 1
  %idx.ext18 = zext i8 %15 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %16 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %16 to i32
  %17 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %17, %conv20
  store i32 %add21, ptr %n, align 4
  %18 = load ptr, ptr %cp, align 8
  %19 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %20 = load i8, ptr %19, align 1
  %idx.ext24 = zext i8 %20 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %18, i64 %idx.neg25
  %21 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %21 to i32
  %22 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %22, %conv27
  store i32 %add28, ptr %n, align 4
  %23 = load ptr, ptr %cp, align 8
  %24 = load ptr, ptr %p, align 8
  %25 = load i8, ptr %24, align 1
  %idx.ext30 = zext i8 %25 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %23, i64 %idx.neg31
  %26 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %26 to i32
  %27 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %27, %conv33
  store i32 %add34, ptr %n, align 4
  %28 = load i32, ptr %x_size.addr, align 4
  %sub35 = add nsw i32 %28, -3
  %29 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %29, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %30 = load ptr, ptr %cp, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 1
  store ptr %incdec.ptr38, ptr %p, align 8
  %31 = load i8, ptr %add.ptr37, align 1
  %idx.ext40 = zext i8 %31 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %30, i64 %idx.neg41
  %32 = load i8, ptr %add.ptr42, align 1
  %conv43 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add44 = add nsw i32 %33, %conv43
  store i32 %add44, ptr %n, align 4
  %34 = load ptr, ptr %cp, align 8
  %35 = load ptr, ptr %p, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr45, ptr %p, align 8
  %36 = load i8, ptr %35, align 1
  %idx.ext47 = zext i8 %36 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %34, i64 %idx.neg48
  %37 = load i8, ptr %add.ptr49, align 1
  %conv50 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4
  %add51 = add nsw i32 %38, %conv50
  store i32 %add51, ptr %n, align 4
  %39 = load ptr, ptr %cp, align 8
  %40 = load ptr, ptr %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %incdec.ptr52, ptr %p, align 8
  %41 = load i8, ptr %40, align 1
  %idx.ext54 = zext i8 %41 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %39, i64 %idx.neg55
  %42 = load i8, ptr %add.ptr56, align 1
  %conv57 = zext i8 %42 to i32
  %43 = load i32, ptr %n, align 4
  %add58 = add nsw i32 %43, %conv57
  store i32 %add58, ptr %n, align 4
  %44 = load ptr, ptr %cp, align 8
  %45 = load ptr, ptr %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr59, ptr %p, align 8
  %46 = load i8, ptr %45, align 1
  %idx.ext61 = zext i8 %46 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %44, i64 %idx.neg62
  %47 = load i8, ptr %add.ptr63, align 1
  %conv64 = zext i8 %47 to i32
  %48 = load i32, ptr %n, align 4
  %add65 = add nsw i32 %48, %conv64
  store i32 %add65, ptr %n, align 4
  %49 = load ptr, ptr %cp, align 8
  %50 = load ptr, ptr %p, align 8
  %51 = load i8, ptr %50, align 1
  %idx.ext67 = zext i8 %51 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %49, i64 %idx.neg68
  %52 = load i8, ptr %add.ptr69, align 1
  %conv70 = zext i8 %52 to i32
  %53 = load i32, ptr %n, align 4
  %add71 = add nsw i32 %53, %conv70
  store i32 %add71, ptr %n, align 4
  %54 = load i32, ptr %x_size.addr, align 4
  %sub72 = add nsw i32 %54, -5
  %55 = load ptr, ptr %p, align 8
  %idx.ext73 = sext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %55, i64 %idx.ext73
  store ptr %add.ptr74, ptr %p, align 8
  %56 = load ptr, ptr %cp, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %add.ptr74, i64 1
  store ptr %incdec.ptr75, ptr %p, align 8
  %57 = load i8, ptr %add.ptr74, align 1
  %idx.ext77 = zext i8 %57 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %56, i64 %idx.neg78
  %58 = load i8, ptr %add.ptr79, align 1
  %conv80 = zext i8 %58 to i32
  %59 = load i32, ptr %n, align 4
  %add81 = add nsw i32 %59, %conv80
  store i32 %add81, ptr %n, align 4
  %60 = load ptr, ptr %cp, align 8
  %61 = load ptr, ptr %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr82, ptr %p, align 8
  %62 = load i8, ptr %61, align 1
  %idx.ext84 = zext i8 %62 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %60, i64 %idx.neg85
  %63 = load i8, ptr %add.ptr86, align 1
  %conv87 = zext i8 %63 to i32
  %64 = load i32, ptr %n, align 4
  %add88 = add nsw i32 %64, %conv87
  store i32 %add88, ptr %n, align 4
  %65 = load ptr, ptr %cp, align 8
  %66 = load ptr, ptr %p, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr89, ptr %p, align 8
  %67 = load i8, ptr %66, align 1
  %idx.ext91 = zext i8 %67 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %65, i64 %idx.neg92
  %68 = load i8, ptr %add.ptr93, align 1
  %conv94 = zext i8 %68 to i32
  %69 = load i32, ptr %n, align 4
  %add95 = add nsw i32 %69, %conv94
  store i32 %add95, ptr %n, align 4
  %70 = load ptr, ptr %cp, align 8
  %71 = load ptr, ptr %p, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %incdec.ptr96, ptr %p, align 8
  %72 = load i8, ptr %71, align 1
  %idx.ext98 = zext i8 %72 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %70, i64 %idx.neg99
  %73 = load i8, ptr %add.ptr100, align 1
  %conv101 = zext i8 %73 to i32
  %74 = load i32, ptr %n, align 4
  %add102 = add nsw i32 %74, %conv101
  store i32 %add102, ptr %n, align 4
  %75 = load ptr, ptr %cp, align 8
  %76 = load ptr, ptr %p, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr103, ptr %p, align 8
  %77 = load i8, ptr %76, align 1
  %idx.ext105 = zext i8 %77 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %75, i64 %idx.neg106
  %78 = load i8, ptr %add.ptr107, align 1
  %conv108 = zext i8 %78 to i32
  %79 = load i32, ptr %n, align 4
  %add109 = add nsw i32 %79, %conv108
  store i32 %add109, ptr %n, align 4
  %80 = load ptr, ptr %cp, align 8
  %81 = load ptr, ptr %p, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %incdec.ptr110, ptr %p, align 8
  %82 = load i8, ptr %81, align 1
  %idx.ext112 = zext i8 %82 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %80, i64 %idx.neg113
  %83 = load i8, ptr %add.ptr114, align 1
  %conv115 = zext i8 %83 to i32
  %84 = load i32, ptr %n, align 4
  %add116 = add nsw i32 %84, %conv115
  store i32 %add116, ptr %n, align 4
  %85 = load ptr, ptr %cp, align 8
  %86 = load ptr, ptr %p, align 8
  %87 = load i8, ptr %86, align 1
  %idx.ext118 = zext i8 %87 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %85, i64 %idx.neg119
  %88 = load i8, ptr %add.ptr120, align 1
  %conv121 = zext i8 %88 to i32
  %89 = load i32, ptr %n, align 4
  %add122 = add nsw i32 %89, %conv121
  store i32 %add122, ptr %n, align 4
  %90 = load i32, ptr %x_size.addr, align 4
  %sub123 = add nsw i32 %90, -6
  %91 = load ptr, ptr %p, align 8
  %idx.ext124 = sext i32 %sub123 to i64
  %add.ptr125 = getelementptr inbounds i8, ptr %91, i64 %idx.ext124
  store ptr %add.ptr125, ptr %p, align 8
  %92 = load ptr, ptr %cp, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %add.ptr125, i64 1
  store ptr %incdec.ptr126, ptr %p, align 8
  %93 = load i8, ptr %add.ptr125, align 1
  %idx.ext128 = zext i8 %93 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %92, i64 %idx.neg129
  %94 = load i8, ptr %add.ptr130, align 1
  %conv131 = zext i8 %94 to i32
  %95 = load i32, ptr %n, align 4
  %add132 = add nsw i32 %95, %conv131
  store i32 %add132, ptr %n, align 4
  %96 = load ptr, ptr %cp, align 8
  %97 = load ptr, ptr %p, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %incdec.ptr133, ptr %p, align 8
  %98 = load i8, ptr %97, align 1
  %idx.ext135 = zext i8 %98 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %96, i64 %idx.neg136
  %99 = load i8, ptr %add.ptr137, align 1
  %conv138 = zext i8 %99 to i32
  %100 = load i32, ptr %n, align 4
  %add139 = add nsw i32 %100, %conv138
  store i32 %add139, ptr %n, align 4
  %101 = load ptr, ptr %cp, align 8
  %102 = load ptr, ptr %p, align 8
  %103 = load i8, ptr %102, align 1
  %idx.ext141 = zext i8 %103 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %101, i64 %idx.neg142
  %104 = load i8, ptr %add.ptr143, align 1
  %conv144 = zext i8 %104 to i32
  %105 = load i32, ptr %n, align 4
  %add145 = add nsw i32 %105, %conv144
  store i32 %add145, ptr %n, align 4
  %106 = load ptr, ptr %p, align 8
  %add.ptr146 = getelementptr inbounds i8, ptr %106, i64 2
  store ptr %add.ptr146, ptr %p, align 8
  %107 = load ptr, ptr %cp, align 8
  %incdec.ptr147 = getelementptr inbounds i8, ptr %106, i64 3
  store ptr %incdec.ptr147, ptr %p, align 8
  %108 = load i8, ptr %add.ptr146, align 1
  %idx.ext149 = zext i8 %108 to i64
  %idx.neg150 = sub nsw i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %107, i64 %idx.neg150
  %109 = load i8, ptr %add.ptr151, align 1
  %conv152 = zext i8 %109 to i32
  %110 = load i32, ptr %n, align 4
  %add153 = add nsw i32 %110, %conv152
  store i32 %add153, ptr %n, align 4
  %111 = load ptr, ptr %cp, align 8
  %112 = load ptr, ptr %p, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %incdec.ptr154, ptr %p, align 8
  %113 = load i8, ptr %112, align 1
  %idx.ext156 = zext i8 %113 to i64
  %idx.neg157 = sub nsw i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, ptr %111, i64 %idx.neg157
  %114 = load i8, ptr %add.ptr158, align 1
  %conv159 = zext i8 %114 to i32
  %115 = load i32, ptr %n, align 4
  %add160 = add nsw i32 %115, %conv159
  store i32 %add160, ptr %n, align 4
  %116 = load ptr, ptr %cp, align 8
  %117 = load ptr, ptr %p, align 8
  %118 = load i8, ptr %117, align 1
  %idx.ext162 = zext i8 %118 to i64
  %idx.neg163 = sub nsw i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, ptr %116, i64 %idx.neg163
  %119 = load i8, ptr %add.ptr164, align 1
  %conv165 = zext i8 %119 to i32
  %120 = load i32, ptr %n, align 4
  %add166 = add nsw i32 %120, %conv165
  store i32 %add166, ptr %n, align 4
  %121 = load i32, ptr %x_size.addr, align 4
  %sub167 = add nsw i32 %121, -6
  %122 = load ptr, ptr %p, align 8
  %idx.ext168 = sext i32 %sub167 to i64
  %add.ptr169 = getelementptr inbounds i8, ptr %122, i64 %idx.ext168
  store ptr %add.ptr169, ptr %p, align 8
  %123 = load ptr, ptr %cp, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %add.ptr169, i64 1
  store ptr %incdec.ptr170, ptr %p, align 8
  %124 = load i8, ptr %add.ptr169, align 1
  %idx.ext172 = zext i8 %124 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %123, i64 %idx.neg173
  %125 = load i8, ptr %add.ptr174, align 1
  %conv175 = zext i8 %125 to i32
  %126 = load i32, ptr %n, align 4
  %add176 = add nsw i32 %126, %conv175
  store i32 %add176, ptr %n, align 4
  %127 = load ptr, ptr %cp, align 8
  %128 = load ptr, ptr %p, align 8
  %incdec.ptr177 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %incdec.ptr177, ptr %p, align 8
  %129 = load i8, ptr %128, align 1
  %idx.ext179 = zext i8 %129 to i64
  %idx.neg180 = sub nsw i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, ptr %127, i64 %idx.neg180
  %130 = load i8, ptr %add.ptr181, align 1
  %conv182 = zext i8 %130 to i32
  %131 = load i32, ptr %n, align 4
  %add183 = add nsw i32 %131, %conv182
  store i32 %add183, ptr %n, align 4
  %132 = load ptr, ptr %cp, align 8
  %133 = load ptr, ptr %p, align 8
  %incdec.ptr184 = getelementptr inbounds i8, ptr %133, i64 1
  store ptr %incdec.ptr184, ptr %p, align 8
  %134 = load i8, ptr %133, align 1
  %idx.ext186 = zext i8 %134 to i64
  %idx.neg187 = sub nsw i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, ptr %132, i64 %idx.neg187
  %135 = load i8, ptr %add.ptr188, align 1
  %conv189 = zext i8 %135 to i32
  %136 = load i32, ptr %n, align 4
  %add190 = add nsw i32 %136, %conv189
  store i32 %add190, ptr %n, align 4
  %137 = load ptr, ptr %cp, align 8
  %138 = load ptr, ptr %p, align 8
  %incdec.ptr191 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %incdec.ptr191, ptr %p, align 8
  %139 = load i8, ptr %138, align 1
  %idx.ext193 = zext i8 %139 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %137, i64 %idx.neg194
  %140 = load i8, ptr %add.ptr195, align 1
  %conv196 = zext i8 %140 to i32
  %141 = load i32, ptr %n, align 4
  %add197 = add nsw i32 %141, %conv196
  store i32 %add197, ptr %n, align 4
  %142 = load ptr, ptr %cp, align 8
  %143 = load ptr, ptr %p, align 8
  %incdec.ptr198 = getelementptr inbounds i8, ptr %143, i64 1
  store ptr %incdec.ptr198, ptr %p, align 8
  %144 = load i8, ptr %143, align 1
  %idx.ext200 = zext i8 %144 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %142, i64 %idx.neg201
  %145 = load i8, ptr %add.ptr202, align 1
  %conv203 = zext i8 %145 to i32
  %146 = load i32, ptr %n, align 4
  %add204 = add nsw i32 %146, %conv203
  store i32 %add204, ptr %n, align 4
  %147 = load ptr, ptr %cp, align 8
  %148 = load ptr, ptr %p, align 8
  %incdec.ptr205 = getelementptr inbounds i8, ptr %148, i64 1
  store ptr %incdec.ptr205, ptr %p, align 8
  %149 = load i8, ptr %148, align 1
  %idx.ext207 = zext i8 %149 to i64
  %idx.neg208 = sub nsw i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, ptr %147, i64 %idx.neg208
  %150 = load i8, ptr %add.ptr209, align 1
  %conv210 = zext i8 %150 to i32
  %151 = load i32, ptr %n, align 4
  %add211 = add nsw i32 %151, %conv210
  store i32 %add211, ptr %n, align 4
  %152 = load ptr, ptr %cp, align 8
  %153 = load ptr, ptr %p, align 8
  %154 = load i8, ptr %153, align 1
  %idx.ext213 = zext i8 %154 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %152, i64 %idx.neg214
  %155 = load i8, ptr %add.ptr215, align 1
  %conv216 = zext i8 %155 to i32
  %156 = load i32, ptr %n, align 4
  %add217 = add nsw i32 %156, %conv216
  store i32 %add217, ptr %n, align 4
  %157 = load i32, ptr %x_size.addr, align 4
  %sub218 = add nsw i32 %157, -5
  %158 = load ptr, ptr %p, align 8
  %idx.ext219 = sext i32 %sub218 to i64
  %add.ptr220 = getelementptr inbounds i8, ptr %158, i64 %idx.ext219
  store ptr %add.ptr220, ptr %p, align 8
  %159 = load ptr, ptr %cp, align 8
  %incdec.ptr221 = getelementptr inbounds i8, ptr %add.ptr220, i64 1
  store ptr %incdec.ptr221, ptr %p, align 8
  %160 = load i8, ptr %add.ptr220, align 1
  %idx.ext223 = zext i8 %160 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %159, i64 %idx.neg224
  %161 = load i8, ptr %add.ptr225, align 1
  %conv226 = zext i8 %161 to i32
  %162 = load i32, ptr %n, align 4
  %add227 = add nsw i32 %162, %conv226
  store i32 %add227, ptr %n, align 4
  %163 = load ptr, ptr %cp, align 8
  %164 = load ptr, ptr %p, align 8
  %incdec.ptr228 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %incdec.ptr228, ptr %p, align 8
  %165 = load i8, ptr %164, align 1
  %idx.ext230 = zext i8 %165 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %163, i64 %idx.neg231
  %166 = load i8, ptr %add.ptr232, align 1
  %conv233 = zext i8 %166 to i32
  %167 = load i32, ptr %n, align 4
  %add234 = add nsw i32 %167, %conv233
  store i32 %add234, ptr %n, align 4
  %168 = load ptr, ptr %cp, align 8
  %169 = load ptr, ptr %p, align 8
  %incdec.ptr235 = getelementptr inbounds i8, ptr %169, i64 1
  store ptr %incdec.ptr235, ptr %p, align 8
  %170 = load i8, ptr %169, align 1
  %idx.ext237 = zext i8 %170 to i64
  %idx.neg238 = sub nsw i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, ptr %168, i64 %idx.neg238
  %171 = load i8, ptr %add.ptr239, align 1
  %conv240 = zext i8 %171 to i32
  %172 = load i32, ptr %n, align 4
  %add241 = add nsw i32 %172, %conv240
  store i32 %add241, ptr %n, align 4
  %173 = load ptr, ptr %cp, align 8
  %174 = load ptr, ptr %p, align 8
  %incdec.ptr242 = getelementptr inbounds i8, ptr %174, i64 1
  store ptr %incdec.ptr242, ptr %p, align 8
  %175 = load i8, ptr %174, align 1
  %idx.ext244 = zext i8 %175 to i64
  %idx.neg245 = sub nsw i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, ptr %173, i64 %idx.neg245
  %176 = load i8, ptr %add.ptr246, align 1
  %conv247 = zext i8 %176 to i32
  %177 = load i32, ptr %n, align 4
  %add248 = add nsw i32 %177, %conv247
  store i32 %add248, ptr %n, align 4
  %178 = load ptr, ptr %cp, align 8
  %179 = load ptr, ptr %p, align 8
  %180 = load i8, ptr %179, align 1
  %idx.ext250 = zext i8 %180 to i64
  %idx.neg251 = sub nsw i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %178, i64 %idx.neg251
  %181 = load i8, ptr %add.ptr252, align 1
  %conv253 = zext i8 %181 to i32
  %182 = load i32, ptr %n, align 4
  %add254 = add nsw i32 %182, %conv253
  store i32 %add254, ptr %n, align 4
  %183 = load i32, ptr %x_size.addr, align 4
  %sub255 = add nsw i32 %183, -3
  %184 = load ptr, ptr %p, align 8
  %idx.ext256 = sext i32 %sub255 to i64
  %add.ptr257 = getelementptr inbounds i8, ptr %184, i64 %idx.ext256
  store ptr %add.ptr257, ptr %p, align 8
  %185 = load ptr, ptr %cp, align 8
  %incdec.ptr258 = getelementptr inbounds i8, ptr %add.ptr257, i64 1
  store ptr %incdec.ptr258, ptr %p, align 8
  %186 = load i8, ptr %add.ptr257, align 1
  %idx.ext260 = zext i8 %186 to i64
  %idx.neg261 = sub nsw i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, ptr %185, i64 %idx.neg261
  %187 = load i8, ptr %add.ptr262, align 1
  %conv263 = zext i8 %187 to i32
  %188 = load i32, ptr %n, align 4
  %add264 = add nsw i32 %188, %conv263
  store i32 %add264, ptr %n, align 4
  %189 = load ptr, ptr %cp, align 8
  %190 = load ptr, ptr %p, align 8
  %incdec.ptr265 = getelementptr inbounds i8, ptr %190, i64 1
  store ptr %incdec.ptr265, ptr %p, align 8
  %191 = load i8, ptr %190, align 1
  %idx.ext267 = zext i8 %191 to i64
  %idx.neg268 = sub nsw i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, ptr %189, i64 %idx.neg268
  %192 = load i8, ptr %add.ptr269, align 1
  %conv270 = zext i8 %192 to i32
  %193 = load i32, ptr %n, align 4
  %add271 = add nsw i32 %193, %conv270
  store i32 %add271, ptr %n, align 4
  %194 = load ptr, ptr %cp, align 8
  %195 = load ptr, ptr %p, align 8
  %196 = load i8, ptr %195, align 1
  %idx.ext273 = zext i8 %196 to i64
  %idx.neg274 = sub nsw i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %194, i64 %idx.neg274
  %197 = load i8, ptr %add.ptr275, align 1
  %conv276 = zext i8 %197 to i32
  %198 = load i32, ptr %n, align 4
  %add277 = add nsw i32 %198, %conv276
  store i32 %add277, ptr %n, align 4
  %199 = load i32, ptr %max_no.addr, align 4
  %cmp278.not = icmp sgt i32 %add277, %199
  br i1 %cmp278.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body7
  %200 = load i32, ptr %max_no.addr, align 4
  %201 = load i32, ptr %n, align 4
  %sub280 = sub nsw i32 %200, %201
  %202 = load ptr, ptr %r.addr, align 8
  %203 = load i32, ptr %i, align 4
  %204 = load i32, ptr %x_size.addr, align 4
  %mul281 = mul nsw i32 %203, %204
  %205 = load i32, ptr %j, align 4
  %add282 = add nsw i32 %mul281, %205
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds i32, ptr %202, i64 %idxprom283
  store i32 %sub280, ptr %arrayidx284, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %206 = load i32, ptr %j, align 4
  %inc = add nsw i32 %206, 1
  br label %for.cond3, !llvm.loop !34

for.inc285:                                       ; preds = %for.cond3
  %207 = load i32, ptr %i, align 4
  %inc286 = add nsw i32 %207, 1
  br label %for.cond, !llvm.loop !35

for.cond288:                                      ; preds = %for.cond, %for.inc1255
  %storemerge1 = phi i32 [ %inc1256, %for.inc1255 ], [ 4, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %208 = load i32, ptr %y_size.addr, align 4
  %sub289 = add nsw i32 %208, -4
  %cmp290 = icmp slt i32 %storemerge1, %sub289
  br i1 %cmp290, label %for.cond293, label %for.end1257

for.cond293:                                      ; preds = %for.cond288, %for.inc1252
  %storemerge2 = phi i32 [ %inc1253, %for.inc1252 ], [ 4, %for.cond288 ]
  store i32 %storemerge2, ptr %j, align 4
  %209 = load i32, ptr %x_size.addr, align 4
  %sub294 = add nsw i32 %209, -4
  %cmp295 = icmp slt i32 %storemerge2, %sub294
  br i1 %cmp295, label %for.body297, label %for.inc1255

for.body297:                                      ; preds = %for.cond293
  %210 = load ptr, ptr %r.addr, align 8
  %211 = load i32, ptr %i, align 4
  %212 = load i32, ptr %x_size.addr, align 4
  %mul298 = mul nsw i32 %211, %212
  %213 = load i32, ptr %j, align 4
  %add299 = add nsw i32 %mul298, %213
  %idxprom300 = sext i32 %add299 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %210, i64 %idxprom300
  %214 = load i32, ptr %arrayidx301, align 4
  %cmp302 = icmp sgt i32 %214, 0
  br i1 %cmp302, label %if.then304, label %for.inc1252

if.then304:                                       ; preds = %for.body297
  %215 = load ptr, ptr %r.addr, align 8
  %216 = load i32, ptr %i, align 4
  %217 = load i32, ptr %x_size.addr, align 4
  %mul305 = mul nsw i32 %216, %217
  %218 = load i32, ptr %j, align 4
  %add306 = add nsw i32 %mul305, %218
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds i32, ptr %215, i64 %idxprom307
  %219 = load i32, ptr %arrayidx308, align 4
  store i32 %219, ptr %m, align 4
  %220 = load i32, ptr %max_no.addr, align 4
  %sub309 = sub nsw i32 %220, %219
  store i32 %sub309, ptr %n, align 4
  %221 = load ptr, ptr %bp.addr, align 8
  %222 = load ptr, ptr %in.addr, align 8
  %223 = load i32, ptr %i, align 4
  %224 = load i32, ptr %x_size.addr, align 4
  %mul310 = mul nsw i32 %223, %224
  %225 = load i32, ptr %j, align 4
  %add311 = add nsw i32 %mul310, %225
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds i8, ptr %222, i64 %idxprom312
  %226 = load i8, ptr %arrayidx313, align 1
  %idx.ext315 = zext i8 %226 to i64
  %add.ptr316 = getelementptr inbounds i8, ptr %221, i64 %idx.ext315
  store ptr %add.ptr316, ptr %cp, align 8
  %227 = load i32, ptr %n, align 4
  %cmp317 = icmp sgt i32 %227, 600
  br i1 %cmp317, label %if.then319, label %if.else757

if.then319:                                       ; preds = %if.then304
  %228 = load ptr, ptr %in.addr, align 8
  %229 = load i32, ptr %i, align 4
  %sub320 = add nsw i32 %229, -3
  %230 = load i32, ptr %x_size.addr, align 4
  %mul321 = mul nsw i32 %sub320, %230
  %idx.ext322 = sext i32 %mul321 to i64
  %add.ptr323 = getelementptr inbounds i8, ptr %228, i64 %idx.ext322
  %231 = load i32, ptr %j, align 4
  %idx.ext324 = sext i32 %231 to i64
  %add.ptr325 = getelementptr inbounds i8, ptr %add.ptr323, i64 %idx.ext324
  %add.ptr326 = getelementptr inbounds i8, ptr %add.ptr325, i64 -1
  store ptr %add.ptr326, ptr %p, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  %232 = load ptr, ptr %cp, align 8
  %incdec.ptr327 = getelementptr inbounds i8, ptr %add.ptr326, i64 1
  store ptr %incdec.ptr327, ptr %p, align 8
  %233 = load i8, ptr %add.ptr326, align 1
  %idx.ext329 = zext i8 %233 to i64
  %idx.neg330 = sub nsw i64 0, %idx.ext329
  %add.ptr331 = getelementptr inbounds i8, ptr %232, i64 %idx.neg330
  %234 = load i8, ptr %add.ptr331, align 1
  store i8 %234, ptr %c, align 1
  %conv332 = zext i8 %234 to i32
  %235 = load i32, ptr %x, align 4
  %sub333 = sub nsw i32 %235, %conv332
  store i32 %sub333, ptr %x, align 4
  %conv334 = zext i8 %234 to i32
  %mul335.neg = mul nsw i32 %conv334, -3
  %236 = load i32, ptr %y, align 4
  %sub336 = add i32 %mul335.neg, %236
  store i32 %sub336, ptr %y, align 4
  %237 = load ptr, ptr %cp, align 8
  %238 = load ptr, ptr %p, align 8
  %incdec.ptr337 = getelementptr inbounds i8, ptr %238, i64 1
  store ptr %incdec.ptr337, ptr %p, align 8
  %239 = load i8, ptr %238, align 1
  %idx.ext339 = zext i8 %239 to i64
  %idx.neg340 = sub nsw i64 0, %idx.ext339
  %add.ptr341 = getelementptr inbounds i8, ptr %237, i64 %idx.neg340
  %240 = load i8, ptr %add.ptr341, align 1
  store i8 %240, ptr %c, align 1
  %conv342 = zext i8 %240 to i32
  %mul343.neg = mul nsw i32 %conv342, -3
  %241 = load i32, ptr %y, align 4
  %sub344 = add i32 %mul343.neg, %241
  store i32 %sub344, ptr %y, align 4
  %242 = load ptr, ptr %cp, align 8
  %243 = load ptr, ptr %p, align 8
  %244 = load i8, ptr %243, align 1
  %idx.ext346 = zext i8 %244 to i64
  %idx.neg347 = sub nsw i64 0, %idx.ext346
  %add.ptr348 = getelementptr inbounds i8, ptr %242, i64 %idx.neg347
  %245 = load i8, ptr %add.ptr348, align 1
  store i8 %245, ptr %c, align 1
  %conv349 = zext i8 %245 to i32
  %246 = load i32, ptr %x, align 4
  %add350 = add nsw i32 %246, %conv349
  store i32 %add350, ptr %x, align 4
  %conv351 = zext i8 %245 to i32
  %mul352.neg = mul nsw i32 %conv351, -3
  %247 = load i32, ptr %y, align 4
  %sub353 = add i32 %mul352.neg, %247
  store i32 %sub353, ptr %y, align 4
  %248 = load i32, ptr %x_size.addr, align 4
  %sub354 = add nsw i32 %248, -3
  %249 = load ptr, ptr %p, align 8
  %idx.ext355 = sext i32 %sub354 to i64
  %add.ptr356 = getelementptr inbounds i8, ptr %249, i64 %idx.ext355
  store ptr %add.ptr356, ptr %p, align 8
  %250 = load ptr, ptr %cp, align 8
  %incdec.ptr357 = getelementptr inbounds i8, ptr %add.ptr356, i64 1
  store ptr %incdec.ptr357, ptr %p, align 8
  %251 = load i8, ptr %add.ptr356, align 1
  %idx.ext359 = zext i8 %251 to i64
  %idx.neg360 = sub nsw i64 0, %idx.ext359
  %add.ptr361 = getelementptr inbounds i8, ptr %250, i64 %idx.neg360
  %252 = load i8, ptr %add.ptr361, align 1
  store i8 %252, ptr %c, align 1
  %conv362 = zext i8 %252 to i32
  %mul363.neg = mul nsw i32 %conv362, -2
  %253 = load i32, ptr %x, align 4
  %sub364 = add i32 %mul363.neg, %253
  store i32 %sub364, ptr %x, align 4
  %conv365 = zext i8 %252 to i32
  %mul366.neg = mul nsw i32 %conv365, -2
  %254 = load i32, ptr %y, align 4
  %sub367 = add i32 %mul366.neg, %254
  store i32 %sub367, ptr %y, align 4
  %255 = load ptr, ptr %cp, align 8
  %256 = load ptr, ptr %p, align 8
  %incdec.ptr368 = getelementptr inbounds i8, ptr %256, i64 1
  store ptr %incdec.ptr368, ptr %p, align 8
  %257 = load i8, ptr %256, align 1
  %idx.ext370 = zext i8 %257 to i64
  %idx.neg371 = sub nsw i64 0, %idx.ext370
  %add.ptr372 = getelementptr inbounds i8, ptr %255, i64 %idx.neg371
  %258 = load i8, ptr %add.ptr372, align 1
  store i8 %258, ptr %c, align 1
  %conv373 = zext i8 %258 to i32
  %259 = load i32, ptr %x, align 4
  %sub374 = sub nsw i32 %259, %conv373
  store i32 %sub374, ptr %x, align 4
  %conv375 = zext i8 %258 to i32
  %mul376.neg = mul nsw i32 %conv375, -2
  %260 = load i32, ptr %y, align 4
  %sub377 = add i32 %mul376.neg, %260
  store i32 %sub377, ptr %y, align 4
  %261 = load ptr, ptr %cp, align 8
  %262 = load ptr, ptr %p, align 8
  %incdec.ptr378 = getelementptr inbounds i8, ptr %262, i64 1
  store ptr %incdec.ptr378, ptr %p, align 8
  %263 = load i8, ptr %262, align 1
  %idx.ext380 = zext i8 %263 to i64
  %idx.neg381 = sub nsw i64 0, %idx.ext380
  %add.ptr382 = getelementptr inbounds i8, ptr %261, i64 %idx.neg381
  %264 = load i8, ptr %add.ptr382, align 1
  store i8 %264, ptr %c, align 1
  %conv383 = zext i8 %264 to i32
  %mul384.neg = mul nsw i32 %conv383, -2
  %265 = load i32, ptr %y, align 4
  %sub385 = add i32 %mul384.neg, %265
  store i32 %sub385, ptr %y, align 4
  %266 = load ptr, ptr %cp, align 8
  %267 = load ptr, ptr %p, align 8
  %incdec.ptr386 = getelementptr inbounds i8, ptr %267, i64 1
  store ptr %incdec.ptr386, ptr %p, align 8
  %268 = load i8, ptr %267, align 1
  %idx.ext388 = zext i8 %268 to i64
  %idx.neg389 = sub nsw i64 0, %idx.ext388
  %add.ptr390 = getelementptr inbounds i8, ptr %266, i64 %idx.neg389
  %269 = load i8, ptr %add.ptr390, align 1
  store i8 %269, ptr %c, align 1
  %conv391 = zext i8 %269 to i32
  %270 = load i32, ptr %x, align 4
  %add392 = add nsw i32 %270, %conv391
  store i32 %add392, ptr %x, align 4
  %conv393 = zext i8 %269 to i32
  %mul394.neg = mul nsw i32 %conv393, -2
  %271 = load i32, ptr %y, align 4
  %sub395 = add i32 %mul394.neg, %271
  store i32 %sub395, ptr %y, align 4
  %272 = load ptr, ptr %cp, align 8
  %273 = load ptr, ptr %p, align 8
  %274 = load i8, ptr %273, align 1
  %idx.ext397 = zext i8 %274 to i64
  %idx.neg398 = sub nsw i64 0, %idx.ext397
  %add.ptr399 = getelementptr inbounds i8, ptr %272, i64 %idx.neg398
  %275 = load i8, ptr %add.ptr399, align 1
  store i8 %275, ptr %c, align 1
  %conv400 = zext i8 %275 to i32
  %mul401 = shl nuw nsw i32 %conv400, 1
  %276 = load i32, ptr %x, align 4
  %add402 = add nsw i32 %276, %mul401
  store i32 %add402, ptr %x, align 4
  %conv403 = zext i8 %275 to i32
  %mul404.neg = mul nsw i32 %conv403, -2
  %277 = load i32, ptr %y, align 4
  %sub405 = add i32 %mul404.neg, %277
  store i32 %sub405, ptr %y, align 4
  %278 = load i32, ptr %x_size.addr, align 4
  %sub406 = add nsw i32 %278, -5
  %279 = load ptr, ptr %p, align 8
  %idx.ext407 = sext i32 %sub406 to i64
  %add.ptr408 = getelementptr inbounds i8, ptr %279, i64 %idx.ext407
  store ptr %add.ptr408, ptr %p, align 8
  %280 = load ptr, ptr %cp, align 8
  %incdec.ptr409 = getelementptr inbounds i8, ptr %add.ptr408, i64 1
  store ptr %incdec.ptr409, ptr %p, align 8
  %281 = load i8, ptr %add.ptr408, align 1
  %idx.ext411 = zext i8 %281 to i64
  %idx.neg412 = sub nsw i64 0, %idx.ext411
  %add.ptr413 = getelementptr inbounds i8, ptr %280, i64 %idx.neg412
  %282 = load i8, ptr %add.ptr413, align 1
  store i8 %282, ptr %c, align 1
  %conv414 = zext i8 %282 to i32
  %mul415.neg = mul nsw i32 %conv414, -3
  %283 = load i32, ptr %x, align 4
  %sub416 = add i32 %mul415.neg, %283
  store i32 %sub416, ptr %x, align 4
  %conv417 = zext i8 %282 to i32
  %284 = load i32, ptr %y, align 4
  %sub418 = sub nsw i32 %284, %conv417
  store i32 %sub418, ptr %y, align 4
  %285 = load ptr, ptr %cp, align 8
  %286 = load ptr, ptr %p, align 8
  %incdec.ptr419 = getelementptr inbounds i8, ptr %286, i64 1
  store ptr %incdec.ptr419, ptr %p, align 8
  %287 = load i8, ptr %286, align 1
  %idx.ext421 = zext i8 %287 to i64
  %idx.neg422 = sub nsw i64 0, %idx.ext421
  %add.ptr423 = getelementptr inbounds i8, ptr %285, i64 %idx.neg422
  %288 = load i8, ptr %add.ptr423, align 1
  store i8 %288, ptr %c, align 1
  %conv424 = zext i8 %288 to i32
  %mul425.neg = mul nsw i32 %conv424, -2
  %289 = load i32, ptr %x, align 4
  %sub426 = add i32 %mul425.neg, %289
  store i32 %sub426, ptr %x, align 4
  %conv427 = zext i8 %288 to i32
  %290 = load i32, ptr %y, align 4
  %sub428 = sub nsw i32 %290, %conv427
  store i32 %sub428, ptr %y, align 4
  %291 = load ptr, ptr %cp, align 8
  %292 = load ptr, ptr %p, align 8
  %incdec.ptr429 = getelementptr inbounds i8, ptr %292, i64 1
  store ptr %incdec.ptr429, ptr %p, align 8
  %293 = load i8, ptr %292, align 1
  %idx.ext431 = zext i8 %293 to i64
  %idx.neg432 = sub nsw i64 0, %idx.ext431
  %add.ptr433 = getelementptr inbounds i8, ptr %291, i64 %idx.neg432
  %294 = load i8, ptr %add.ptr433, align 1
  store i8 %294, ptr %c, align 1
  %conv434 = zext i8 %294 to i32
  %295 = load i32, ptr %x, align 4
  %sub435 = sub nsw i32 %295, %conv434
  store i32 %sub435, ptr %x, align 4
  %conv436 = zext i8 %294 to i32
  %296 = load i32, ptr %y, align 4
  %sub437 = sub nsw i32 %296, %conv436
  store i32 %sub437, ptr %y, align 4
  %297 = load ptr, ptr %cp, align 8
  %298 = load ptr, ptr %p, align 8
  %incdec.ptr438 = getelementptr inbounds i8, ptr %298, i64 1
  store ptr %incdec.ptr438, ptr %p, align 8
  %299 = load i8, ptr %298, align 1
  %idx.ext440 = zext i8 %299 to i64
  %idx.neg441 = sub nsw i64 0, %idx.ext440
  %add.ptr442 = getelementptr inbounds i8, ptr %297, i64 %idx.neg441
  %300 = load i8, ptr %add.ptr442, align 1
  store i8 %300, ptr %c, align 1
  %conv443 = zext i8 %300 to i32
  %301 = load i32, ptr %y, align 4
  %sub444 = sub nsw i32 %301, %conv443
  store i32 %sub444, ptr %y, align 4
  %302 = load ptr, ptr %cp, align 8
  %303 = load ptr, ptr %p, align 8
  %incdec.ptr445 = getelementptr inbounds i8, ptr %303, i64 1
  store ptr %incdec.ptr445, ptr %p, align 8
  %304 = load i8, ptr %303, align 1
  %idx.ext447 = zext i8 %304 to i64
  %idx.neg448 = sub nsw i64 0, %idx.ext447
  %add.ptr449 = getelementptr inbounds i8, ptr %302, i64 %idx.neg448
  %305 = load i8, ptr %add.ptr449, align 1
  store i8 %305, ptr %c, align 1
  %conv450 = zext i8 %305 to i32
  %306 = load i32, ptr %x, align 4
  %add451 = add nsw i32 %306, %conv450
  store i32 %add451, ptr %x, align 4
  %conv452 = zext i8 %305 to i32
  %307 = load i32, ptr %y, align 4
  %sub453 = sub nsw i32 %307, %conv452
  store i32 %sub453, ptr %y, align 4
  %308 = load ptr, ptr %cp, align 8
  %309 = load ptr, ptr %p, align 8
  %incdec.ptr454 = getelementptr inbounds i8, ptr %309, i64 1
  store ptr %incdec.ptr454, ptr %p, align 8
  %310 = load i8, ptr %309, align 1
  %idx.ext456 = zext i8 %310 to i64
  %idx.neg457 = sub nsw i64 0, %idx.ext456
  %add.ptr458 = getelementptr inbounds i8, ptr %308, i64 %idx.neg457
  %311 = load i8, ptr %add.ptr458, align 1
  store i8 %311, ptr %c, align 1
  %conv459 = zext i8 %311 to i32
  %mul460 = shl nuw nsw i32 %conv459, 1
  %312 = load i32, ptr %x, align 4
  %add461 = add nsw i32 %312, %mul460
  store i32 %add461, ptr %x, align 4
  %conv462 = zext i8 %311 to i32
  %313 = load i32, ptr %y, align 4
  %sub463 = sub nsw i32 %313, %conv462
  store i32 %sub463, ptr %y, align 4
  %314 = load ptr, ptr %cp, align 8
  %315 = load ptr, ptr %p, align 8
  %316 = load i8, ptr %315, align 1
  %idx.ext465 = zext i8 %316 to i64
  %idx.neg466 = sub nsw i64 0, %idx.ext465
  %add.ptr467 = getelementptr inbounds i8, ptr %314, i64 %idx.neg466
  %317 = load i8, ptr %add.ptr467, align 1
  store i8 %317, ptr %c, align 1
  %conv468 = zext i8 %317 to i32
  %mul469 = mul nuw nsw i32 %conv468, 3
  %318 = load i32, ptr %x, align 4
  %add470 = add nsw i32 %318, %mul469
  store i32 %add470, ptr %x, align 4
  %conv471 = zext i8 %317 to i32
  %319 = load i32, ptr %y, align 4
  %sub472 = sub nsw i32 %319, %conv471
  store i32 %sub472, ptr %y, align 4
  %320 = load i32, ptr %x_size.addr, align 4
  %sub473 = add nsw i32 %320, -6
  %321 = load ptr, ptr %p, align 8
  %idx.ext474 = sext i32 %sub473 to i64
  %add.ptr475 = getelementptr inbounds i8, ptr %321, i64 %idx.ext474
  store ptr %add.ptr475, ptr %p, align 8
  %322 = load ptr, ptr %cp, align 8
  %incdec.ptr476 = getelementptr inbounds i8, ptr %add.ptr475, i64 1
  store ptr %incdec.ptr476, ptr %p, align 8
  %323 = load i8, ptr %add.ptr475, align 1
  %idx.ext478 = zext i8 %323 to i64
  %idx.neg479 = sub nsw i64 0, %idx.ext478
  %add.ptr480 = getelementptr inbounds i8, ptr %322, i64 %idx.neg479
  %324 = load i8, ptr %add.ptr480, align 1
  store i8 %324, ptr %c, align 1
  %conv481 = zext i8 %324 to i32
  %mul482.neg = mul nsw i32 %conv481, -3
  %325 = load i32, ptr %x, align 4
  %sub483 = add i32 %mul482.neg, %325
  store i32 %sub483, ptr %x, align 4
  %326 = load ptr, ptr %cp, align 8
  %327 = load ptr, ptr %p, align 8
  %incdec.ptr484 = getelementptr inbounds i8, ptr %327, i64 1
  store ptr %incdec.ptr484, ptr %p, align 8
  %328 = load i8, ptr %327, align 1
  %idx.ext486 = zext i8 %328 to i64
  %idx.neg487 = sub nsw i64 0, %idx.ext486
  %add.ptr488 = getelementptr inbounds i8, ptr %326, i64 %idx.neg487
  %329 = load i8, ptr %add.ptr488, align 1
  store i8 %329, ptr %c, align 1
  %conv489 = zext i8 %329 to i32
  %mul490.neg = mul nsw i32 %conv489, -2
  %330 = load i32, ptr %x, align 4
  %sub491 = add i32 %mul490.neg, %330
  store i32 %sub491, ptr %x, align 4
  %331 = load ptr, ptr %cp, align 8
  %332 = load ptr, ptr %p, align 8
  %333 = load i8, ptr %332, align 1
  %idx.ext493 = zext i8 %333 to i64
  %idx.neg494 = sub nsw i64 0, %idx.ext493
  %add.ptr495 = getelementptr inbounds i8, ptr %331, i64 %idx.neg494
  %334 = load i8, ptr %add.ptr495, align 1
  store i8 %334, ptr %c, align 1
  %conv496 = zext i8 %334 to i32
  %335 = load i32, ptr %x, align 4
  %sub497 = sub nsw i32 %335, %conv496
  store i32 %sub497, ptr %x, align 4
  %336 = load ptr, ptr %p, align 8
  %add.ptr498 = getelementptr inbounds i8, ptr %336, i64 2
  store ptr %add.ptr498, ptr %p, align 8
  %337 = load ptr, ptr %cp, align 8
  %incdec.ptr499 = getelementptr inbounds i8, ptr %336, i64 3
  store ptr %incdec.ptr499, ptr %p, align 8
  %338 = load i8, ptr %add.ptr498, align 1
  %idx.ext501 = zext i8 %338 to i64
  %idx.neg502 = sub nsw i64 0, %idx.ext501
  %add.ptr503 = getelementptr inbounds i8, ptr %337, i64 %idx.neg502
  %339 = load i8, ptr %add.ptr503, align 1
  store i8 %339, ptr %c, align 1
  %conv504 = zext i8 %339 to i32
  %340 = load i32, ptr %x, align 4
  %add505 = add nsw i32 %340, %conv504
  store i32 %add505, ptr %x, align 4
  %341 = load ptr, ptr %cp, align 8
  %342 = load ptr, ptr %p, align 8
  %incdec.ptr506 = getelementptr inbounds i8, ptr %342, i64 1
  store ptr %incdec.ptr506, ptr %p, align 8
  %343 = load i8, ptr %342, align 1
  %idx.ext508 = zext i8 %343 to i64
  %idx.neg509 = sub nsw i64 0, %idx.ext508
  %add.ptr510 = getelementptr inbounds i8, ptr %341, i64 %idx.neg509
  %344 = load i8, ptr %add.ptr510, align 1
  store i8 %344, ptr %c, align 1
  %conv511 = zext i8 %344 to i32
  %mul512 = shl nuw nsw i32 %conv511, 1
  %345 = load i32, ptr %x, align 4
  %add513 = add nsw i32 %345, %mul512
  store i32 %add513, ptr %x, align 4
  %346 = load ptr, ptr %cp, align 8
  %347 = load ptr, ptr %p, align 8
  %348 = load i8, ptr %347, align 1
  %idx.ext515 = zext i8 %348 to i64
  %idx.neg516 = sub nsw i64 0, %idx.ext515
  %add.ptr517 = getelementptr inbounds i8, ptr %346, i64 %idx.neg516
  %349 = load i8, ptr %add.ptr517, align 1
  store i8 %349, ptr %c, align 1
  %conv518 = zext i8 %349 to i32
  %mul519 = mul nuw nsw i32 %conv518, 3
  %350 = load i32, ptr %x, align 4
  %add520 = add nsw i32 %350, %mul519
  store i32 %add520, ptr %x, align 4
  %351 = load i32, ptr %x_size.addr, align 4
  %sub521 = add nsw i32 %351, -6
  %352 = load ptr, ptr %p, align 8
  %idx.ext522 = sext i32 %sub521 to i64
  %add.ptr523 = getelementptr inbounds i8, ptr %352, i64 %idx.ext522
  store ptr %add.ptr523, ptr %p, align 8
  %353 = load ptr, ptr %cp, align 8
  %incdec.ptr524 = getelementptr inbounds i8, ptr %add.ptr523, i64 1
  store ptr %incdec.ptr524, ptr %p, align 8
  %354 = load i8, ptr %add.ptr523, align 1
  %idx.ext526 = zext i8 %354 to i64
  %idx.neg527 = sub nsw i64 0, %idx.ext526
  %add.ptr528 = getelementptr inbounds i8, ptr %353, i64 %idx.neg527
  %355 = load i8, ptr %add.ptr528, align 1
  store i8 %355, ptr %c, align 1
  %conv529 = zext i8 %355 to i32
  %mul530.neg = mul nsw i32 %conv529, -3
  %356 = load i32, ptr %x, align 4
  %sub531 = add i32 %mul530.neg, %356
  store i32 %sub531, ptr %x, align 4
  %conv532 = zext i8 %355 to i32
  %357 = load i32, ptr %y, align 4
  %add533 = add nsw i32 %357, %conv532
  store i32 %add533, ptr %y, align 4
  %358 = load ptr, ptr %cp, align 8
  %359 = load ptr, ptr %p, align 8
  %incdec.ptr534 = getelementptr inbounds i8, ptr %359, i64 1
  store ptr %incdec.ptr534, ptr %p, align 8
  %360 = load i8, ptr %359, align 1
  %idx.ext536 = zext i8 %360 to i64
  %idx.neg537 = sub nsw i64 0, %idx.ext536
  %add.ptr538 = getelementptr inbounds i8, ptr %358, i64 %idx.neg537
  %361 = load i8, ptr %add.ptr538, align 1
  store i8 %361, ptr %c, align 1
  %conv539 = zext i8 %361 to i32
  %mul540.neg = mul nsw i32 %conv539, -2
  %362 = load i32, ptr %x, align 4
  %sub541 = add i32 %mul540.neg, %362
  store i32 %sub541, ptr %x, align 4
  %conv542 = zext i8 %361 to i32
  %363 = load i32, ptr %y, align 4
  %add543 = add nsw i32 %363, %conv542
  store i32 %add543, ptr %y, align 4
  %364 = load ptr, ptr %cp, align 8
  %365 = load ptr, ptr %p, align 8
  %incdec.ptr544 = getelementptr inbounds i8, ptr %365, i64 1
  store ptr %incdec.ptr544, ptr %p, align 8
  %366 = load i8, ptr %365, align 1
  %idx.ext546 = zext i8 %366 to i64
  %idx.neg547 = sub nsw i64 0, %idx.ext546
  %add.ptr548 = getelementptr inbounds i8, ptr %364, i64 %idx.neg547
  %367 = load i8, ptr %add.ptr548, align 1
  store i8 %367, ptr %c, align 1
  %conv549 = zext i8 %367 to i32
  %368 = load i32, ptr %x, align 4
  %sub550 = sub nsw i32 %368, %conv549
  store i32 %sub550, ptr %x, align 4
  %conv551 = zext i8 %367 to i32
  %369 = load i32, ptr %y, align 4
  %add552 = add nsw i32 %369, %conv551
  store i32 %add552, ptr %y, align 4
  %370 = load ptr, ptr %cp, align 8
  %371 = load ptr, ptr %p, align 8
  %incdec.ptr553 = getelementptr inbounds i8, ptr %371, i64 1
  store ptr %incdec.ptr553, ptr %p, align 8
  %372 = load i8, ptr %371, align 1
  %idx.ext555 = zext i8 %372 to i64
  %idx.neg556 = sub nsw i64 0, %idx.ext555
  %add.ptr557 = getelementptr inbounds i8, ptr %370, i64 %idx.neg556
  %373 = load i8, ptr %add.ptr557, align 1
  store i8 %373, ptr %c, align 1
  %conv558 = zext i8 %373 to i32
  %374 = load i32, ptr %y, align 4
  %add559 = add nsw i32 %374, %conv558
  store i32 %add559, ptr %y, align 4
  %375 = load ptr, ptr %cp, align 8
  %376 = load ptr, ptr %p, align 8
  %incdec.ptr560 = getelementptr inbounds i8, ptr %376, i64 1
  store ptr %incdec.ptr560, ptr %p, align 8
  %377 = load i8, ptr %376, align 1
  %idx.ext562 = zext i8 %377 to i64
  %idx.neg563 = sub nsw i64 0, %idx.ext562
  %add.ptr564 = getelementptr inbounds i8, ptr %375, i64 %idx.neg563
  %378 = load i8, ptr %add.ptr564, align 1
  store i8 %378, ptr %c, align 1
  %conv565 = zext i8 %378 to i32
  %379 = load i32, ptr %x, align 4
  %add566 = add nsw i32 %379, %conv565
  store i32 %add566, ptr %x, align 4
  %conv567 = zext i8 %378 to i32
  %380 = load i32, ptr %y, align 4
  %add568 = add nsw i32 %380, %conv567
  store i32 %add568, ptr %y, align 4
  %381 = load ptr, ptr %cp, align 8
  %382 = load ptr, ptr %p, align 8
  %incdec.ptr569 = getelementptr inbounds i8, ptr %382, i64 1
  store ptr %incdec.ptr569, ptr %p, align 8
  %383 = load i8, ptr %382, align 1
  %idx.ext571 = zext i8 %383 to i64
  %idx.neg572 = sub nsw i64 0, %idx.ext571
  %add.ptr573 = getelementptr inbounds i8, ptr %381, i64 %idx.neg572
  %384 = load i8, ptr %add.ptr573, align 1
  store i8 %384, ptr %c, align 1
  %conv574 = zext i8 %384 to i32
  %mul575 = shl nuw nsw i32 %conv574, 1
  %385 = load i32, ptr %x, align 4
  %add576 = add nsw i32 %385, %mul575
  store i32 %add576, ptr %x, align 4
  %conv577 = zext i8 %384 to i32
  %386 = load i32, ptr %y, align 4
  %add578 = add nsw i32 %386, %conv577
  store i32 %add578, ptr %y, align 4
  %387 = load ptr, ptr %cp, align 8
  %388 = load ptr, ptr %p, align 8
  %389 = load i8, ptr %388, align 1
  %idx.ext580 = zext i8 %389 to i64
  %idx.neg581 = sub nsw i64 0, %idx.ext580
  %add.ptr582 = getelementptr inbounds i8, ptr %387, i64 %idx.neg581
  %390 = load i8, ptr %add.ptr582, align 1
  store i8 %390, ptr %c, align 1
  %conv583 = zext i8 %390 to i32
  %mul584 = mul nuw nsw i32 %conv583, 3
  %391 = load i32, ptr %x, align 4
  %add585 = add nsw i32 %391, %mul584
  store i32 %add585, ptr %x, align 4
  %conv586 = zext i8 %390 to i32
  %392 = load i32, ptr %y, align 4
  %add587 = add nsw i32 %392, %conv586
  store i32 %add587, ptr %y, align 4
  %393 = load i32, ptr %x_size.addr, align 4
  %sub588 = add nsw i32 %393, -5
  %394 = load ptr, ptr %p, align 8
  %idx.ext589 = sext i32 %sub588 to i64
  %add.ptr590 = getelementptr inbounds i8, ptr %394, i64 %idx.ext589
  store ptr %add.ptr590, ptr %p, align 8
  %395 = load ptr, ptr %cp, align 8
  %incdec.ptr591 = getelementptr inbounds i8, ptr %add.ptr590, i64 1
  store ptr %incdec.ptr591, ptr %p, align 8
  %396 = load i8, ptr %add.ptr590, align 1
  %idx.ext593 = zext i8 %396 to i64
  %idx.neg594 = sub nsw i64 0, %idx.ext593
  %add.ptr595 = getelementptr inbounds i8, ptr %395, i64 %idx.neg594
  %397 = load i8, ptr %add.ptr595, align 1
  store i8 %397, ptr %c, align 1
  %conv596 = zext i8 %397 to i32
  %mul597.neg = mul nsw i32 %conv596, -2
  %398 = load i32, ptr %x, align 4
  %sub598 = add i32 %mul597.neg, %398
  store i32 %sub598, ptr %x, align 4
  %conv599 = zext i8 %397 to i32
  %mul600 = shl nuw nsw i32 %conv599, 1
  %399 = load i32, ptr %y, align 4
  %add601 = add nsw i32 %399, %mul600
  store i32 %add601, ptr %y, align 4
  %400 = load ptr, ptr %cp, align 8
  %401 = load ptr, ptr %p, align 8
  %incdec.ptr602 = getelementptr inbounds i8, ptr %401, i64 1
  store ptr %incdec.ptr602, ptr %p, align 8
  %402 = load i8, ptr %401, align 1
  %idx.ext604 = zext i8 %402 to i64
  %idx.neg605 = sub nsw i64 0, %idx.ext604
  %add.ptr606 = getelementptr inbounds i8, ptr %400, i64 %idx.neg605
  %403 = load i8, ptr %add.ptr606, align 1
  store i8 %403, ptr %c, align 1
  %conv607 = zext i8 %403 to i32
  %404 = load i32, ptr %x, align 4
  %sub608 = sub nsw i32 %404, %conv607
  store i32 %sub608, ptr %x, align 4
  %conv609 = zext i8 %403 to i32
  %mul610 = shl nuw nsw i32 %conv609, 1
  %405 = load i32, ptr %y, align 4
  %add611 = add nsw i32 %405, %mul610
  store i32 %add611, ptr %y, align 4
  %406 = load ptr, ptr %cp, align 8
  %407 = load ptr, ptr %p, align 8
  %incdec.ptr612 = getelementptr inbounds i8, ptr %407, i64 1
  store ptr %incdec.ptr612, ptr %p, align 8
  %408 = load i8, ptr %407, align 1
  %idx.ext614 = zext i8 %408 to i64
  %idx.neg615 = sub nsw i64 0, %idx.ext614
  %add.ptr616 = getelementptr inbounds i8, ptr %406, i64 %idx.neg615
  %409 = load i8, ptr %add.ptr616, align 1
  store i8 %409, ptr %c, align 1
  %conv617 = zext i8 %409 to i32
  %mul618 = shl nuw nsw i32 %conv617, 1
  %410 = load i32, ptr %y, align 4
  %add619 = add nsw i32 %410, %mul618
  store i32 %add619, ptr %y, align 4
  %411 = load ptr, ptr %cp, align 8
  %412 = load ptr, ptr %p, align 8
  %incdec.ptr620 = getelementptr inbounds i8, ptr %412, i64 1
  store ptr %incdec.ptr620, ptr %p, align 8
  %413 = load i8, ptr %412, align 1
  %idx.ext622 = zext i8 %413 to i64
  %idx.neg623 = sub nsw i64 0, %idx.ext622
  %add.ptr624 = getelementptr inbounds i8, ptr %411, i64 %idx.neg623
  %414 = load i8, ptr %add.ptr624, align 1
  store i8 %414, ptr %c, align 1
  %conv625 = zext i8 %414 to i32
  %415 = load i32, ptr %x, align 4
  %add626 = add nsw i32 %415, %conv625
  store i32 %add626, ptr %x, align 4
  %conv627 = zext i8 %414 to i32
  %mul628 = shl nuw nsw i32 %conv627, 1
  %416 = load i32, ptr %y, align 4
  %add629 = add nsw i32 %416, %mul628
  store i32 %add629, ptr %y, align 4
  %417 = load ptr, ptr %cp, align 8
  %418 = load ptr, ptr %p, align 8
  %419 = load i8, ptr %418, align 1
  %idx.ext631 = zext i8 %419 to i64
  %idx.neg632 = sub nsw i64 0, %idx.ext631
  %add.ptr633 = getelementptr inbounds i8, ptr %417, i64 %idx.neg632
  %420 = load i8, ptr %add.ptr633, align 1
  store i8 %420, ptr %c, align 1
  %conv634 = zext i8 %420 to i32
  %mul635 = shl nuw nsw i32 %conv634, 1
  %421 = load i32, ptr %x, align 4
  %add636 = add nsw i32 %421, %mul635
  store i32 %add636, ptr %x, align 4
  %conv637 = zext i8 %420 to i32
  %mul638 = shl nuw nsw i32 %conv637, 1
  %422 = load i32, ptr %y, align 4
  %add639 = add nsw i32 %422, %mul638
  store i32 %add639, ptr %y, align 4
  %423 = load i32, ptr %x_size.addr, align 4
  %sub640 = add nsw i32 %423, -3
  %424 = load ptr, ptr %p, align 8
  %idx.ext641 = sext i32 %sub640 to i64
  %add.ptr642 = getelementptr inbounds i8, ptr %424, i64 %idx.ext641
  store ptr %add.ptr642, ptr %p, align 8
  %425 = load ptr, ptr %cp, align 8
  %incdec.ptr643 = getelementptr inbounds i8, ptr %add.ptr642, i64 1
  store ptr %incdec.ptr643, ptr %p, align 8
  %426 = load i8, ptr %add.ptr642, align 1
  %idx.ext645 = zext i8 %426 to i64
  %idx.neg646 = sub nsw i64 0, %idx.ext645
  %add.ptr647 = getelementptr inbounds i8, ptr %425, i64 %idx.neg646
  %427 = load i8, ptr %add.ptr647, align 1
  store i8 %427, ptr %c, align 1
  %conv648 = zext i8 %427 to i32
  %428 = load i32, ptr %x, align 4
  %sub649 = sub nsw i32 %428, %conv648
  store i32 %sub649, ptr %x, align 4
  %conv650 = zext i8 %427 to i32
  %mul651 = mul nuw nsw i32 %conv650, 3
  %429 = load i32, ptr %y, align 4
  %add652 = add nsw i32 %429, %mul651
  store i32 %add652, ptr %y, align 4
  %430 = load ptr, ptr %cp, align 8
  %431 = load ptr, ptr %p, align 8
  %incdec.ptr653 = getelementptr inbounds i8, ptr %431, i64 1
  store ptr %incdec.ptr653, ptr %p, align 8
  %432 = load i8, ptr %431, align 1
  %idx.ext655 = zext i8 %432 to i64
  %idx.neg656 = sub nsw i64 0, %idx.ext655
  %add.ptr657 = getelementptr inbounds i8, ptr %430, i64 %idx.neg656
  %433 = load i8, ptr %add.ptr657, align 1
  store i8 %433, ptr %c, align 1
  %conv658 = zext i8 %433 to i32
  %mul659 = mul nuw nsw i32 %conv658, 3
  %434 = load i32, ptr %y, align 4
  %add660 = add nsw i32 %434, %mul659
  store i32 %add660, ptr %y, align 4
  %435 = load ptr, ptr %cp, align 8
  %436 = load ptr, ptr %p, align 8
  %437 = load i8, ptr %436, align 1
  %idx.ext662 = zext i8 %437 to i64
  %idx.neg663 = sub nsw i64 0, %idx.ext662
  %add.ptr664 = getelementptr inbounds i8, ptr %435, i64 %idx.neg663
  %438 = load i8, ptr %add.ptr664, align 1
  store i8 %438, ptr %c, align 1
  %conv665 = zext i8 %438 to i32
  %439 = load i32, ptr %x, align 4
  %add666 = add nsw i32 %439, %conv665
  store i32 %add666, ptr %x, align 4
  %conv667 = zext i8 %438 to i32
  %mul668 = mul nuw nsw i32 %conv667, 3
  %440 = load i32, ptr %y, align 4
  %add669 = add nsw i32 %440, %mul668
  store i32 %add669, ptr %y, align 4
  %mul670 = mul nsw i32 %add666, %add666
  %mul671 = mul nsw i32 %add669, %add669
  %add672 = add nuw nsw i32 %mul670, %mul671
  %conv673 = sitofp i32 %add672 to float
  %441 = call float @llvm.sqrt.f32(float %conv673)
  store float %441, ptr %z, align 4
  %conv676 = fpext float %441 to double
  %442 = load i32, ptr %n, align 4
  %conv677 = sitofp i32 %442 to float
  %conv678 = fpext float %conv677 to double
  %mul679 = fmul double %conv678, 9.000000e-01
  %cmp680 = fcmp olt double %mul679, %conv676
  br i1 %cmp680, label %if.then682, label %if.else755

if.then682:                                       ; preds = %if.then319
  store i32 0, ptr %do_symmetry, align 4
  %443 = load i32, ptr %x, align 4
  %cmp683 = icmp eq i32 %443, 0
  br i1 %cmp683, label %if.end688, label %if.else

if.else:                                          ; preds = %if.then682
  %444 = load i32, ptr %y, align 4
  %conv686 = sitofp i32 %444 to float
  %445 = load i32, ptr %x, align 4
  %conv687 = sitofp i32 %445 to float
  %div = fdiv float %conv686, %conv687
  br label %if.end688

if.end688:                                        ; preds = %if.then682, %if.else
  %storemerge9 = phi float [ %div, %if.else ], [ 1.000000e+06, %if.then682 ]
  store float %storemerge9, ptr %z, align 4
  %cmp689 = fcmp olt float %storemerge9, 0.000000e+00
  br i1 %cmp689, label %if.then691, label %if.end693

if.then691:                                       ; preds = %if.end688
  %446 = load float, ptr %z, align 4
  %fneg = fneg float %446
  store float %fneg, ptr %z, align 4
  br label %if.end693

if.end693:                                        ; preds = %if.end688, %if.then691
  %storemerge10 = phi i32 [ -1, %if.then691 ], [ 1, %if.end688 ]
  store i32 %storemerge10, ptr %w, align 4
  %447 = load float, ptr %z, align 4
  %cmp695 = fcmp olt float %447, 5.000000e-01
  br i1 %cmp695, label %if.end710, label %if.else698

if.else698:                                       ; preds = %if.end693
  %448 = load float, ptr %z, align 4
  %cmp700 = fcmp ogt float %448, 2.000000e+00
  %449 = load i32, ptr %w, align 4
  %cmp704 = icmp sgt i32 %449, 0
  %. = select i1 %cmp704, i32 1, i32 -1
  %storemerge13 = select i1 %cmp700, i32 1, i32 %.
  %storemerge12 = select i1 %cmp700, i32 0, i32 1
  br label %if.end710

if.end710:                                        ; preds = %if.end693, %if.else698
  %storemerge15 = phi i32 [ %storemerge13, %if.else698 ], [ 0, %if.end693 ]
  %storemerge14 = phi i32 [ %storemerge12, %if.else698 ], [ 1, %if.end693 ]
  store i32 %storemerge15, ptr %a, align 4
  store i32 %storemerge14, ptr %b, align 4
  %450 = load i32, ptr %m, align 4
  %451 = load ptr, ptr %r.addr, align 8
  %452 = load i32, ptr %i, align 4
  %add711 = add nsw i32 %452, %storemerge15
  %453 = load i32, ptr %x_size.addr, align 4
  %mul712 = mul nsw i32 %add711, %453
  %454 = load i32, ptr %j, align 4
  %add713 = add nsw i32 %mul712, %454
  %455 = load i32, ptr %b, align 4
  %add714 = add nsw i32 %add713, %455
  %idxprom715 = sext i32 %add714 to i64
  %arrayidx716 = getelementptr inbounds i32, ptr %451, i64 %idxprom715
  %456 = load i32, ptr %arrayidx716, align 4
  %cmp717 = icmp sgt i32 %450, %456
  br i1 %cmp717, label %land.lhs.true, label %if.end758

land.lhs.true:                                    ; preds = %if.end710
  %457 = load i32, ptr %m, align 4
  %458 = load ptr, ptr %r.addr, align 8
  %459 = load i32, ptr %i, align 4
  %460 = load i32, ptr %a, align 4
  %sub719 = sub nsw i32 %459, %460
  %461 = load i32, ptr %x_size.addr, align 4
  %mul720 = mul nsw i32 %sub719, %461
  %462 = load i32, ptr %j, align 4
  %add721 = add nsw i32 %mul720, %462
  %463 = load i32, ptr %b, align 4
  %sub722 = sub nsw i32 %add721, %463
  %idxprom723 = sext i32 %sub722 to i64
  %arrayidx724 = getelementptr inbounds i32, ptr %458, i64 %idxprom723
  %464 = load i32, ptr %arrayidx724, align 4
  %cmp725.not = icmp slt i32 %457, %464
  br i1 %cmp725.not, label %if.end758, label %land.lhs.true727

land.lhs.true727:                                 ; preds = %land.lhs.true
  %465 = load i32, ptr %m, align 4
  %466 = load ptr, ptr %r.addr, align 8
  %467 = load i32, ptr %i, align 4
  %468 = load i32, ptr %a, align 4
  %mul728 = shl nsw i32 %468, 1
  %add729 = add nsw i32 %467, %mul728
  %469 = load i32, ptr %x_size.addr, align 4
  %mul730 = mul nsw i32 %add729, %469
  %470 = load i32, ptr %j, align 4
  %add731 = add nsw i32 %mul730, %470
  %471 = load i32, ptr %b, align 4
  %mul732 = shl nsw i32 %471, 1
  %add733 = add nsw i32 %add731, %mul732
  %idxprom734 = sext i32 %add733 to i64
  %arrayidx735 = getelementptr inbounds i32, ptr %466, i64 %idxprom734
  %472 = load i32, ptr %arrayidx735, align 4
  %cmp736 = icmp sgt i32 %465, %472
  br i1 %cmp736, label %land.lhs.true738, label %if.end758

land.lhs.true738:                                 ; preds = %land.lhs.true727
  %473 = load i32, ptr %m, align 4
  %474 = load ptr, ptr %r.addr, align 8
  %475 = load i32, ptr %i, align 4
  %476 = load i32, ptr %a, align 4
  %mul739.neg = mul i32 %476, -2
  %sub740 = add i32 %mul739.neg, %475
  %477 = load i32, ptr %x_size.addr, align 4
  %mul741 = mul nsw i32 %sub740, %477
  %478 = load i32, ptr %j, align 4
  %add742 = add nsw i32 %mul741, %478
  %479 = load i32, ptr %b, align 4
  %mul743.neg = mul i32 %479, -2
  %sub744 = add i32 %mul743.neg, %add742
  %idxprom745 = sext i32 %sub744 to i64
  %arrayidx746 = getelementptr inbounds i32, ptr %474, i64 %idxprom745
  %480 = load i32, ptr %arrayidx746, align 4
  %cmp747.not = icmp slt i32 %473, %480
  br i1 %cmp747.not, label %if.end758, label %if.then749

if.then749:                                       ; preds = %land.lhs.true738
  %481 = load ptr, ptr %mid.addr, align 8
  %482 = load i32, ptr %i, align 4
  %483 = load i32, ptr %x_size.addr, align 4
  %mul750 = mul nsw i32 %482, %483
  %484 = load i32, ptr %j, align 4
  %add751 = add nsw i32 %mul750, %484
  %idxprom752 = sext i32 %add751 to i64
  %arrayidx753 = getelementptr inbounds i8, ptr %481, i64 %idxprom752
  store i8 1, ptr %arrayidx753, align 1
  br label %if.end758

if.else755:                                       ; preds = %if.then319
  store i32 1, ptr %do_symmetry, align 4
  br label %if.end758

if.else757:                                       ; preds = %if.then304
  store i32 1, ptr %do_symmetry, align 4
  br label %if.end758

if.end758:                                        ; preds = %if.else755, %if.then749, %land.lhs.true738, %land.lhs.true727, %land.lhs.true, %if.end710, %if.else757
  %485 = load i32, ptr %do_symmetry, align 4
  %cmp759 = icmp eq i32 %485, 1
  br i1 %cmp759, label %if.then761, label %for.inc1252

if.then761:                                       ; preds = %if.end758
  %486 = load ptr, ptr %in.addr, align 8
  %487 = load i32, ptr %i, align 4
  %sub762 = add nsw i32 %487, -3
  %488 = load i32, ptr %x_size.addr, align 4
  %mul763 = mul nsw i32 %sub762, %488
  %idx.ext764 = sext i32 %mul763 to i64
  %add.ptr765 = getelementptr inbounds i8, ptr %486, i64 %idx.ext764
  %489 = load i32, ptr %j, align 4
  %idx.ext766 = sext i32 %489 to i64
  %add.ptr767 = getelementptr inbounds i8, ptr %add.ptr765, i64 %idx.ext766
  %add.ptr768 = getelementptr inbounds i8, ptr %add.ptr767, i64 -1
  store ptr %add.ptr768, ptr %p, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  store i32 0, ptr %w, align 4
  %490 = load ptr, ptr %cp, align 8
  %incdec.ptr769 = getelementptr inbounds i8, ptr %add.ptr768, i64 1
  store ptr %incdec.ptr769, ptr %p, align 8
  %491 = load i8, ptr %add.ptr768, align 1
  %idx.ext771 = zext i8 %491 to i64
  %idx.neg772 = sub nsw i64 0, %idx.ext771
  %add.ptr773 = getelementptr inbounds i8, ptr %490, i64 %idx.neg772
  %492 = load i8, ptr %add.ptr773, align 1
  store i8 %492, ptr %c, align 1
  %conv774 = zext i8 %492 to i32
  %493 = load i32, ptr %x, align 4
  %add775 = add nsw i32 %493, %conv774
  store i32 %add775, ptr %x, align 4
  %conv776 = zext i8 %492 to i32
  %mul777 = mul nuw nsw i32 %conv776, 9
  %494 = load i32, ptr %y, align 4
  %add778 = add nsw i32 %494, %mul777
  store i32 %add778, ptr %y, align 4
  %495 = load i8, ptr %c, align 1
  %conv779 = zext i8 %495 to i32
  %mul780 = mul nuw nsw i32 %conv779, 3
  %496 = load i32, ptr %w, align 4
  %add781 = add nsw i32 %496, %mul780
  store i32 %add781, ptr %w, align 4
  %497 = load ptr, ptr %cp, align 8
  %498 = load ptr, ptr %p, align 8
  %incdec.ptr782 = getelementptr inbounds i8, ptr %498, i64 1
  store ptr %incdec.ptr782, ptr %p, align 8
  %499 = load i8, ptr %498, align 1
  %idx.ext784 = zext i8 %499 to i64
  %idx.neg785 = sub nsw i64 0, %idx.ext784
  %add.ptr786 = getelementptr inbounds i8, ptr %497, i64 %idx.neg785
  %500 = load i8, ptr %add.ptr786, align 1
  store i8 %500, ptr %c, align 1
  %conv787 = zext i8 %500 to i32
  %mul788 = mul nuw nsw i32 %conv787, 9
  %501 = load i32, ptr %y, align 4
  %add789 = add nsw i32 %501, %mul788
  store i32 %add789, ptr %y, align 4
  %502 = load ptr, ptr %cp, align 8
  %503 = load ptr, ptr %p, align 8
  %504 = load i8, ptr %503, align 1
  %idx.ext791 = zext i8 %504 to i64
  %idx.neg792 = sub nsw i64 0, %idx.ext791
  %add.ptr793 = getelementptr inbounds i8, ptr %502, i64 %idx.neg792
  %505 = load i8, ptr %add.ptr793, align 1
  store i8 %505, ptr %c, align 1
  %conv794 = zext i8 %505 to i32
  %506 = load i32, ptr %x, align 4
  %add795 = add nsw i32 %506, %conv794
  store i32 %add795, ptr %x, align 4
  %conv796 = zext i8 %505 to i32
  %mul797 = mul nuw nsw i32 %conv796, 9
  %507 = load i32, ptr %y, align 4
  %add798 = add nsw i32 %507, %mul797
  store i32 %add798, ptr %y, align 4
  %508 = load i8, ptr %c, align 1
  %conv799 = zext i8 %508 to i32
  %mul800.neg = mul nsw i32 %conv799, -3
  %509 = load i32, ptr %w, align 4
  %sub801 = add i32 %mul800.neg, %509
  store i32 %sub801, ptr %w, align 4
  %510 = load i32, ptr %x_size.addr, align 4
  %sub802 = add nsw i32 %510, -3
  %511 = load ptr, ptr %p, align 8
  %idx.ext803 = sext i32 %sub802 to i64
  %add.ptr804 = getelementptr inbounds i8, ptr %511, i64 %idx.ext803
  store ptr %add.ptr804, ptr %p, align 8
  %512 = load ptr, ptr %cp, align 8
  %incdec.ptr805 = getelementptr inbounds i8, ptr %add.ptr804, i64 1
  store ptr %incdec.ptr805, ptr %p, align 8
  %513 = load i8, ptr %add.ptr804, align 1
  %idx.ext807 = zext i8 %513 to i64
  %idx.neg808 = sub nsw i64 0, %idx.ext807
  %add.ptr809 = getelementptr inbounds i8, ptr %512, i64 %idx.neg808
  %514 = load i8, ptr %add.ptr809, align 1
  store i8 %514, ptr %c, align 1
  %conv810 = zext i8 %514 to i32
  %mul811 = shl nuw nsw i32 %conv810, 2
  %515 = load i32, ptr %x, align 4
  %add812 = add nsw i32 %515, %mul811
  store i32 %add812, ptr %x, align 4
  %conv813 = zext i8 %514 to i32
  %mul814 = shl nuw nsw i32 %conv813, 2
  %516 = load i32, ptr %y, align 4
  %add815 = add nsw i32 %516, %mul814
  store i32 %add815, ptr %y, align 4
  %517 = load i8, ptr %c, align 1
  %conv816 = zext i8 %517 to i32
  %mul817 = shl nuw nsw i32 %conv816, 2
  %518 = load i32, ptr %w, align 4
  %add818 = add nsw i32 %518, %mul817
  store i32 %add818, ptr %w, align 4
  %519 = load ptr, ptr %cp, align 8
  %520 = load ptr, ptr %p, align 8
  %incdec.ptr819 = getelementptr inbounds i8, ptr %520, i64 1
  store ptr %incdec.ptr819, ptr %p, align 8
  %521 = load i8, ptr %520, align 1
  %idx.ext821 = zext i8 %521 to i64
  %idx.neg822 = sub nsw i64 0, %idx.ext821
  %add.ptr823 = getelementptr inbounds i8, ptr %519, i64 %idx.neg822
  %522 = load i8, ptr %add.ptr823, align 1
  store i8 %522, ptr %c, align 1
  %conv824 = zext i8 %522 to i32
  %523 = load i32, ptr %x, align 4
  %add825 = add nsw i32 %523, %conv824
  store i32 %add825, ptr %x, align 4
  %conv826 = zext i8 %522 to i32
  %mul827 = shl nuw nsw i32 %conv826, 2
  %524 = load i32, ptr %y, align 4
  %add828 = add nsw i32 %524, %mul827
  store i32 %add828, ptr %y, align 4
  %525 = load i8, ptr %c, align 1
  %conv829 = zext i8 %525 to i32
  %mul830 = shl nuw nsw i32 %conv829, 1
  %526 = load i32, ptr %w, align 4
  %add831 = add nsw i32 %526, %mul830
  store i32 %add831, ptr %w, align 4
  %527 = load ptr, ptr %cp, align 8
  %528 = load ptr, ptr %p, align 8
  %incdec.ptr832 = getelementptr inbounds i8, ptr %528, i64 1
  store ptr %incdec.ptr832, ptr %p, align 8
  %529 = load i8, ptr %528, align 1
  %idx.ext834 = zext i8 %529 to i64
  %idx.neg835 = sub nsw i64 0, %idx.ext834
  %add.ptr836 = getelementptr inbounds i8, ptr %527, i64 %idx.neg835
  %530 = load i8, ptr %add.ptr836, align 1
  store i8 %530, ptr %c, align 1
  %conv837 = zext i8 %530 to i32
  %mul838 = shl nuw nsw i32 %conv837, 2
  %531 = load i32, ptr %y, align 4
  %add839 = add nsw i32 %531, %mul838
  store i32 %add839, ptr %y, align 4
  %532 = load ptr, ptr %cp, align 8
  %533 = load ptr, ptr %p, align 8
  %incdec.ptr840 = getelementptr inbounds i8, ptr %533, i64 1
  store ptr %incdec.ptr840, ptr %p, align 8
  %534 = load i8, ptr %533, align 1
  %idx.ext842 = zext i8 %534 to i64
  %idx.neg843 = sub nsw i64 0, %idx.ext842
  %add.ptr844 = getelementptr inbounds i8, ptr %532, i64 %idx.neg843
  %535 = load i8, ptr %add.ptr844, align 1
  store i8 %535, ptr %c, align 1
  %conv845 = zext i8 %535 to i32
  %536 = load i32, ptr %x, align 4
  %add846 = add nsw i32 %536, %conv845
  store i32 %add846, ptr %x, align 4
  %conv847 = zext i8 %535 to i32
  %mul848 = shl nuw nsw i32 %conv847, 2
  %537 = load i32, ptr %y, align 4
  %add849 = add nsw i32 %537, %mul848
  store i32 %add849, ptr %y, align 4
  %538 = load i8, ptr %c, align 1
  %conv850 = zext i8 %538 to i32
  %mul851.neg = mul nsw i32 %conv850, -2
  %539 = load i32, ptr %w, align 4
  %sub852 = add i32 %mul851.neg, %539
  store i32 %sub852, ptr %w, align 4
  %540 = load ptr, ptr %cp, align 8
  %541 = load ptr, ptr %p, align 8
  %542 = load i8, ptr %541, align 1
  %idx.ext854 = zext i8 %542 to i64
  %idx.neg855 = sub nsw i64 0, %idx.ext854
  %add.ptr856 = getelementptr inbounds i8, ptr %540, i64 %idx.neg855
  %543 = load i8, ptr %add.ptr856, align 1
  store i8 %543, ptr %c, align 1
  %conv857 = zext i8 %543 to i32
  %mul858 = shl nuw nsw i32 %conv857, 2
  %544 = load i32, ptr %x, align 4
  %add859 = add nsw i32 %544, %mul858
  store i32 %add859, ptr %x, align 4
  %conv860 = zext i8 %543 to i32
  %mul861 = shl nuw nsw i32 %conv860, 2
  %545 = load i32, ptr %y, align 4
  %add862 = add nsw i32 %545, %mul861
  store i32 %add862, ptr %y, align 4
  %546 = load i8, ptr %c, align 1
  %conv863 = zext i8 %546 to i32
  %mul864.neg = mul nsw i32 %conv863, -4
  %547 = load i32, ptr %w, align 4
  %sub865 = add i32 %mul864.neg, %547
  store i32 %sub865, ptr %w, align 4
  %548 = load i32, ptr %x_size.addr, align 4
  %sub866 = add nsw i32 %548, -5
  %549 = load ptr, ptr %p, align 8
  %idx.ext867 = sext i32 %sub866 to i64
  %add.ptr868 = getelementptr inbounds i8, ptr %549, i64 %idx.ext867
  store ptr %add.ptr868, ptr %p, align 8
  %550 = load ptr, ptr %cp, align 8
  %incdec.ptr869 = getelementptr inbounds i8, ptr %add.ptr868, i64 1
  store ptr %incdec.ptr869, ptr %p, align 8
  %551 = load i8, ptr %add.ptr868, align 1
  %idx.ext871 = zext i8 %551 to i64
  %idx.neg872 = sub nsw i64 0, %idx.ext871
  %add.ptr873 = getelementptr inbounds i8, ptr %550, i64 %idx.neg872
  %552 = load i8, ptr %add.ptr873, align 1
  store i8 %552, ptr %c, align 1
  %conv874 = zext i8 %552 to i32
  %mul875 = mul nuw nsw i32 %conv874, 9
  %553 = load i32, ptr %x, align 4
  %add876 = add nsw i32 %553, %mul875
  store i32 %add876, ptr %x, align 4
  %conv877 = zext i8 %552 to i32
  %554 = load i32, ptr %y, align 4
  %add878 = add nsw i32 %554, %conv877
  store i32 %add878, ptr %y, align 4
  %555 = load i8, ptr %c, align 1
  %conv879 = zext i8 %555 to i32
  %mul880 = mul nuw nsw i32 %conv879, 3
  %556 = load i32, ptr %w, align 4
  %add881 = add nsw i32 %556, %mul880
  store i32 %add881, ptr %w, align 4
  %557 = load ptr, ptr %cp, align 8
  %558 = load ptr, ptr %p, align 8
  %incdec.ptr882 = getelementptr inbounds i8, ptr %558, i64 1
  store ptr %incdec.ptr882, ptr %p, align 8
  %559 = load i8, ptr %558, align 1
  %idx.ext884 = zext i8 %559 to i64
  %idx.neg885 = sub nsw i64 0, %idx.ext884
  %add.ptr886 = getelementptr inbounds i8, ptr %557, i64 %idx.neg885
  %560 = load i8, ptr %add.ptr886, align 1
  store i8 %560, ptr %c, align 1
  %conv887 = zext i8 %560 to i32
  %mul888 = shl nuw nsw i32 %conv887, 2
  %561 = load i32, ptr %x, align 4
  %add889 = add nsw i32 %561, %mul888
  store i32 %add889, ptr %x, align 4
  %conv890 = zext i8 %560 to i32
  %562 = load i32, ptr %y, align 4
  %add891 = add nsw i32 %562, %conv890
  store i32 %add891, ptr %y, align 4
  %563 = load i8, ptr %c, align 1
  %conv892 = zext i8 %563 to i32
  %mul893 = shl nuw nsw i32 %conv892, 1
  %564 = load i32, ptr %w, align 4
  %add894 = add nsw i32 %564, %mul893
  store i32 %add894, ptr %w, align 4
  %565 = load ptr, ptr %cp, align 8
  %566 = load ptr, ptr %p, align 8
  %incdec.ptr895 = getelementptr inbounds i8, ptr %566, i64 1
  store ptr %incdec.ptr895, ptr %p, align 8
  %567 = load i8, ptr %566, align 1
  %idx.ext897 = zext i8 %567 to i64
  %idx.neg898 = sub nsw i64 0, %idx.ext897
  %add.ptr899 = getelementptr inbounds i8, ptr %565, i64 %idx.neg898
  %568 = load i8, ptr %add.ptr899, align 1
  store i8 %568, ptr %c, align 1
  %conv900 = zext i8 %568 to i32
  %569 = load i32, ptr %x, align 4
  %add901 = add nsw i32 %569, %conv900
  store i32 %add901, ptr %x, align 4
  %conv902 = zext i8 %568 to i32
  %570 = load i32, ptr %y, align 4
  %add903 = add nsw i32 %570, %conv902
  store i32 %add903, ptr %y, align 4
  %571 = load i8, ptr %c, align 1
  %conv904 = zext i8 %571 to i32
  %572 = load i32, ptr %w, align 4
  %add905 = add nsw i32 %572, %conv904
  store i32 %add905, ptr %w, align 4
  %573 = load ptr, ptr %cp, align 8
  %574 = load ptr, ptr %p, align 8
  %incdec.ptr906 = getelementptr inbounds i8, ptr %574, i64 1
  store ptr %incdec.ptr906, ptr %p, align 8
  %575 = load i8, ptr %574, align 1
  %idx.ext908 = zext i8 %575 to i64
  %idx.neg909 = sub nsw i64 0, %idx.ext908
  %add.ptr910 = getelementptr inbounds i8, ptr %573, i64 %idx.neg909
  %576 = load i8, ptr %add.ptr910, align 1
  store i8 %576, ptr %c, align 1
  %conv911 = zext i8 %576 to i32
  %577 = load i32, ptr %y, align 4
  %add912 = add nsw i32 %577, %conv911
  store i32 %add912, ptr %y, align 4
  %578 = load ptr, ptr %cp, align 8
  %579 = load ptr, ptr %p, align 8
  %incdec.ptr913 = getelementptr inbounds i8, ptr %579, i64 1
  store ptr %incdec.ptr913, ptr %p, align 8
  %580 = load i8, ptr %579, align 1
  %idx.ext915 = zext i8 %580 to i64
  %idx.neg916 = sub nsw i64 0, %idx.ext915
  %add.ptr917 = getelementptr inbounds i8, ptr %578, i64 %idx.neg916
  %581 = load i8, ptr %add.ptr917, align 1
  store i8 %581, ptr %c, align 1
  %conv918 = zext i8 %581 to i32
  %582 = load i32, ptr %x, align 4
  %add919 = add nsw i32 %582, %conv918
  store i32 %add919, ptr %x, align 4
  %conv920 = zext i8 %581 to i32
  %583 = load i32, ptr %y, align 4
  %add921 = add nsw i32 %583, %conv920
  store i32 %add921, ptr %y, align 4
  %584 = load i8, ptr %c, align 1
  %conv922 = zext i8 %584 to i32
  %585 = load i32, ptr %w, align 4
  %sub923 = sub nsw i32 %585, %conv922
  store i32 %sub923, ptr %w, align 4
  %586 = load ptr, ptr %cp, align 8
  %587 = load ptr, ptr %p, align 8
  %incdec.ptr924 = getelementptr inbounds i8, ptr %587, i64 1
  store ptr %incdec.ptr924, ptr %p, align 8
  %588 = load i8, ptr %587, align 1
  %idx.ext926 = zext i8 %588 to i64
  %idx.neg927 = sub nsw i64 0, %idx.ext926
  %add.ptr928 = getelementptr inbounds i8, ptr %586, i64 %idx.neg927
  %589 = load i8, ptr %add.ptr928, align 1
  store i8 %589, ptr %c, align 1
  %conv929 = zext i8 %589 to i32
  %mul930 = shl nuw nsw i32 %conv929, 2
  %590 = load i32, ptr %x, align 4
  %add931 = add nsw i32 %590, %mul930
  store i32 %add931, ptr %x, align 4
  %conv932 = zext i8 %589 to i32
  %591 = load i32, ptr %y, align 4
  %add933 = add nsw i32 %591, %conv932
  store i32 %add933, ptr %y, align 4
  %592 = load i8, ptr %c, align 1
  %conv934 = zext i8 %592 to i32
  %mul935.neg = mul nsw i32 %conv934, -2
  %593 = load i32, ptr %w, align 4
  %sub936 = add i32 %mul935.neg, %593
  store i32 %sub936, ptr %w, align 4
  %594 = load ptr, ptr %cp, align 8
  %595 = load ptr, ptr %p, align 8
  %596 = load i8, ptr %595, align 1
  %idx.ext938 = zext i8 %596 to i64
  %idx.neg939 = sub nsw i64 0, %idx.ext938
  %add.ptr940 = getelementptr inbounds i8, ptr %594, i64 %idx.neg939
  %597 = load i8, ptr %add.ptr940, align 1
  store i8 %597, ptr %c, align 1
  %conv941 = zext i8 %597 to i32
  %mul942 = mul nuw nsw i32 %conv941, 9
  %598 = load i32, ptr %x, align 4
  %add943 = add nsw i32 %598, %mul942
  store i32 %add943, ptr %x, align 4
  %conv944 = zext i8 %597 to i32
  %599 = load i32, ptr %y, align 4
  %add945 = add nsw i32 %599, %conv944
  store i32 %add945, ptr %y, align 4
  %600 = load i8, ptr %c, align 1
  %conv946 = zext i8 %600 to i32
  %mul947.neg = mul nsw i32 %conv946, -3
  %601 = load i32, ptr %w, align 4
  %sub948 = add i32 %mul947.neg, %601
  store i32 %sub948, ptr %w, align 4
  %602 = load i32, ptr %x_size.addr, align 4
  %sub949 = add nsw i32 %602, -6
  %603 = load ptr, ptr %p, align 8
  %idx.ext950 = sext i32 %sub949 to i64
  %add.ptr951 = getelementptr inbounds i8, ptr %603, i64 %idx.ext950
  store ptr %add.ptr951, ptr %p, align 8
  %604 = load ptr, ptr %cp, align 8
  %incdec.ptr952 = getelementptr inbounds i8, ptr %add.ptr951, i64 1
  store ptr %incdec.ptr952, ptr %p, align 8
  %605 = load i8, ptr %add.ptr951, align 1
  %idx.ext954 = zext i8 %605 to i64
  %idx.neg955 = sub nsw i64 0, %idx.ext954
  %add.ptr956 = getelementptr inbounds i8, ptr %604, i64 %idx.neg955
  %606 = load i8, ptr %add.ptr956, align 1
  store i8 %606, ptr %c, align 1
  %conv957 = zext i8 %606 to i32
  %mul958 = mul nuw nsw i32 %conv957, 9
  %607 = load i32, ptr %x, align 4
  %add959 = add nsw i32 %607, %mul958
  store i32 %add959, ptr %x, align 4
  %608 = load ptr, ptr %cp, align 8
  %609 = load ptr, ptr %p, align 8
  %incdec.ptr960 = getelementptr inbounds i8, ptr %609, i64 1
  store ptr %incdec.ptr960, ptr %p, align 8
  %610 = load i8, ptr %609, align 1
  %idx.ext962 = zext i8 %610 to i64
  %idx.neg963 = sub nsw i64 0, %idx.ext962
  %add.ptr964 = getelementptr inbounds i8, ptr %608, i64 %idx.neg963
  %611 = load i8, ptr %add.ptr964, align 1
  store i8 %611, ptr %c, align 1
  %conv965 = zext i8 %611 to i32
  %mul966 = shl nuw nsw i32 %conv965, 2
  %612 = load i32, ptr %x, align 4
  %add967 = add nsw i32 %612, %mul966
  store i32 %add967, ptr %x, align 4
  %613 = load ptr, ptr %cp, align 8
  %614 = load ptr, ptr %p, align 8
  %615 = load i8, ptr %614, align 1
  %idx.ext969 = zext i8 %615 to i64
  %idx.neg970 = sub nsw i64 0, %idx.ext969
  %add.ptr971 = getelementptr inbounds i8, ptr %613, i64 %idx.neg970
  %616 = load i8, ptr %add.ptr971, align 1
  store i8 %616, ptr %c, align 1
  %conv972 = zext i8 %616 to i32
  %617 = load i32, ptr %x, align 4
  %add973 = add nsw i32 %617, %conv972
  store i32 %add973, ptr %x, align 4
  %618 = load ptr, ptr %p, align 8
  %add.ptr974 = getelementptr inbounds i8, ptr %618, i64 2
  store ptr %add.ptr974, ptr %p, align 8
  %619 = load ptr, ptr %cp, align 8
  %incdec.ptr975 = getelementptr inbounds i8, ptr %618, i64 3
  store ptr %incdec.ptr975, ptr %p, align 8
  %620 = load i8, ptr %add.ptr974, align 1
  %idx.ext977 = zext i8 %620 to i64
  %idx.neg978 = sub nsw i64 0, %idx.ext977
  %add.ptr979 = getelementptr inbounds i8, ptr %619, i64 %idx.neg978
  %621 = load i8, ptr %add.ptr979, align 1
  store i8 %621, ptr %c, align 1
  %conv980 = zext i8 %621 to i32
  %622 = load i32, ptr %x, align 4
  %add981 = add nsw i32 %622, %conv980
  store i32 %add981, ptr %x, align 4
  %623 = load ptr, ptr %cp, align 8
  %624 = load ptr, ptr %p, align 8
  %incdec.ptr982 = getelementptr inbounds i8, ptr %624, i64 1
  store ptr %incdec.ptr982, ptr %p, align 8
  %625 = load i8, ptr %624, align 1
  %idx.ext984 = zext i8 %625 to i64
  %idx.neg985 = sub nsw i64 0, %idx.ext984
  %add.ptr986 = getelementptr inbounds i8, ptr %623, i64 %idx.neg985
  %626 = load i8, ptr %add.ptr986, align 1
  store i8 %626, ptr %c, align 1
  %conv987 = zext i8 %626 to i32
  %mul988 = shl nuw nsw i32 %conv987, 2
  %627 = load i32, ptr %x, align 4
  %add989 = add nsw i32 %627, %mul988
  store i32 %add989, ptr %x, align 4
  %628 = load ptr, ptr %cp, align 8
  %629 = load ptr, ptr %p, align 8
  %630 = load i8, ptr %629, align 1
  %idx.ext991 = zext i8 %630 to i64
  %idx.neg992 = sub nsw i64 0, %idx.ext991
  %add.ptr993 = getelementptr inbounds i8, ptr %628, i64 %idx.neg992
  %631 = load i8, ptr %add.ptr993, align 1
  store i8 %631, ptr %c, align 1
  %conv994 = zext i8 %631 to i32
  %mul995 = mul nuw nsw i32 %conv994, 9
  %632 = load i32, ptr %x, align 4
  %add996 = add nsw i32 %632, %mul995
  store i32 %add996, ptr %x, align 4
  %633 = load i32, ptr %x_size.addr, align 4
  %sub997 = add nsw i32 %633, -6
  %634 = load ptr, ptr %p, align 8
  %idx.ext998 = sext i32 %sub997 to i64
  %add.ptr999 = getelementptr inbounds i8, ptr %634, i64 %idx.ext998
  store ptr %add.ptr999, ptr %p, align 8
  %635 = load ptr, ptr %cp, align 8
  %incdec.ptr1000 = getelementptr inbounds i8, ptr %add.ptr999, i64 1
  store ptr %incdec.ptr1000, ptr %p, align 8
  %636 = load i8, ptr %add.ptr999, align 1
  %idx.ext1002 = zext i8 %636 to i64
  %idx.neg1003 = sub nsw i64 0, %idx.ext1002
  %add.ptr1004 = getelementptr inbounds i8, ptr %635, i64 %idx.neg1003
  %637 = load i8, ptr %add.ptr1004, align 1
  store i8 %637, ptr %c, align 1
  %conv1005 = zext i8 %637 to i32
  %mul1006 = mul nuw nsw i32 %conv1005, 9
  %638 = load i32, ptr %x, align 4
  %add1007 = add nsw i32 %638, %mul1006
  store i32 %add1007, ptr %x, align 4
  %conv1008 = zext i8 %637 to i32
  %639 = load i32, ptr %y, align 4
  %add1009 = add nsw i32 %639, %conv1008
  store i32 %add1009, ptr %y, align 4
  %640 = load i8, ptr %c, align 1
  %conv1010 = zext i8 %640 to i32
  %mul1011.neg = mul nsw i32 %conv1010, -3
  %641 = load i32, ptr %w, align 4
  %sub1012 = add i32 %mul1011.neg, %641
  store i32 %sub1012, ptr %w, align 4
  %642 = load ptr, ptr %cp, align 8
  %643 = load ptr, ptr %p, align 8
  %incdec.ptr1013 = getelementptr inbounds i8, ptr %643, i64 1
  store ptr %incdec.ptr1013, ptr %p, align 8
  %644 = load i8, ptr %643, align 1
  %idx.ext1015 = zext i8 %644 to i64
  %idx.neg1016 = sub nsw i64 0, %idx.ext1015
  %add.ptr1017 = getelementptr inbounds i8, ptr %642, i64 %idx.neg1016
  %645 = load i8, ptr %add.ptr1017, align 1
  store i8 %645, ptr %c, align 1
  %conv1018 = zext i8 %645 to i32
  %mul1019 = shl nuw nsw i32 %conv1018, 2
  %646 = load i32, ptr %x, align 4
  %add1020 = add nsw i32 %646, %mul1019
  store i32 %add1020, ptr %x, align 4
  %conv1021 = zext i8 %645 to i32
  %647 = load i32, ptr %y, align 4
  %add1022 = add nsw i32 %647, %conv1021
  store i32 %add1022, ptr %y, align 4
  %648 = load i8, ptr %c, align 1
  %conv1023 = zext i8 %648 to i32
  %mul1024.neg = mul nsw i32 %conv1023, -2
  %649 = load i32, ptr %w, align 4
  %sub1025 = add i32 %mul1024.neg, %649
  store i32 %sub1025, ptr %w, align 4
  %650 = load ptr, ptr %cp, align 8
  %651 = load ptr, ptr %p, align 8
  %incdec.ptr1026 = getelementptr inbounds i8, ptr %651, i64 1
  store ptr %incdec.ptr1026, ptr %p, align 8
  %652 = load i8, ptr %651, align 1
  %idx.ext1028 = zext i8 %652 to i64
  %idx.neg1029 = sub nsw i64 0, %idx.ext1028
  %add.ptr1030 = getelementptr inbounds i8, ptr %650, i64 %idx.neg1029
  %653 = load i8, ptr %add.ptr1030, align 1
  store i8 %653, ptr %c, align 1
  %conv1031 = zext i8 %653 to i32
  %654 = load i32, ptr %x, align 4
  %add1032 = add nsw i32 %654, %conv1031
  store i32 %add1032, ptr %x, align 4
  %conv1033 = zext i8 %653 to i32
  %655 = load i32, ptr %y, align 4
  %add1034 = add nsw i32 %655, %conv1033
  store i32 %add1034, ptr %y, align 4
  %656 = load i8, ptr %c, align 1
  %conv1035 = zext i8 %656 to i32
  %657 = load i32, ptr %w, align 4
  %sub1036 = sub nsw i32 %657, %conv1035
  store i32 %sub1036, ptr %w, align 4
  %658 = load ptr, ptr %cp, align 8
  %659 = load ptr, ptr %p, align 8
  %incdec.ptr1037 = getelementptr inbounds i8, ptr %659, i64 1
  store ptr %incdec.ptr1037, ptr %p, align 8
  %660 = load i8, ptr %659, align 1
  %idx.ext1039 = zext i8 %660 to i64
  %idx.neg1040 = sub nsw i64 0, %idx.ext1039
  %add.ptr1041 = getelementptr inbounds i8, ptr %658, i64 %idx.neg1040
  %661 = load i8, ptr %add.ptr1041, align 1
  store i8 %661, ptr %c, align 1
  %conv1042 = zext i8 %661 to i32
  %662 = load i32, ptr %y, align 4
  %add1043 = add nsw i32 %662, %conv1042
  store i32 %add1043, ptr %y, align 4
  %663 = load ptr, ptr %cp, align 8
  %664 = load ptr, ptr %p, align 8
  %incdec.ptr1044 = getelementptr inbounds i8, ptr %664, i64 1
  store ptr %incdec.ptr1044, ptr %p, align 8
  %665 = load i8, ptr %664, align 1
  %idx.ext1046 = zext i8 %665 to i64
  %idx.neg1047 = sub nsw i64 0, %idx.ext1046
  %add.ptr1048 = getelementptr inbounds i8, ptr %663, i64 %idx.neg1047
  %666 = load i8, ptr %add.ptr1048, align 1
  store i8 %666, ptr %c, align 1
  %conv1049 = zext i8 %666 to i32
  %667 = load i32, ptr %x, align 4
  %add1050 = add nsw i32 %667, %conv1049
  store i32 %add1050, ptr %x, align 4
  %conv1051 = zext i8 %666 to i32
  %668 = load i32, ptr %y, align 4
  %add1052 = add nsw i32 %668, %conv1051
  store i32 %add1052, ptr %y, align 4
  %669 = load i8, ptr %c, align 1
  %conv1053 = zext i8 %669 to i32
  %670 = load i32, ptr %w, align 4
  %add1054 = add nsw i32 %670, %conv1053
  store i32 %add1054, ptr %w, align 4
  %671 = load ptr, ptr %cp, align 8
  %672 = load ptr, ptr %p, align 8
  %incdec.ptr1055 = getelementptr inbounds i8, ptr %672, i64 1
  store ptr %incdec.ptr1055, ptr %p, align 8
  %673 = load i8, ptr %672, align 1
  %idx.ext1057 = zext i8 %673 to i64
  %idx.neg1058 = sub nsw i64 0, %idx.ext1057
  %add.ptr1059 = getelementptr inbounds i8, ptr %671, i64 %idx.neg1058
  %674 = load i8, ptr %add.ptr1059, align 1
  store i8 %674, ptr %c, align 1
  %conv1060 = zext i8 %674 to i32
  %mul1061 = shl nuw nsw i32 %conv1060, 2
  %675 = load i32, ptr %x, align 4
  %add1062 = add nsw i32 %675, %mul1061
  store i32 %add1062, ptr %x, align 4
  %conv1063 = zext i8 %674 to i32
  %676 = load i32, ptr %y, align 4
  %add1064 = add nsw i32 %676, %conv1063
  store i32 %add1064, ptr %y, align 4
  %677 = load i8, ptr %c, align 1
  %conv1065 = zext i8 %677 to i32
  %mul1066 = shl nuw nsw i32 %conv1065, 1
  %678 = load i32, ptr %w, align 4
  %add1067 = add nsw i32 %678, %mul1066
  store i32 %add1067, ptr %w, align 4
  %679 = load ptr, ptr %cp, align 8
  %680 = load ptr, ptr %p, align 8
  %681 = load i8, ptr %680, align 1
  %idx.ext1069 = zext i8 %681 to i64
  %idx.neg1070 = sub nsw i64 0, %idx.ext1069
  %add.ptr1071 = getelementptr inbounds i8, ptr %679, i64 %idx.neg1070
  %682 = load i8, ptr %add.ptr1071, align 1
  store i8 %682, ptr %c, align 1
  %conv1072 = zext i8 %682 to i32
  %mul1073 = mul nuw nsw i32 %conv1072, 9
  %683 = load i32, ptr %x, align 4
  %add1074 = add nsw i32 %683, %mul1073
  store i32 %add1074, ptr %x, align 4
  %conv1075 = zext i8 %682 to i32
  %684 = load i32, ptr %y, align 4
  %add1076 = add nsw i32 %684, %conv1075
  store i32 %add1076, ptr %y, align 4
  %685 = load i8, ptr %c, align 1
  %conv1077 = zext i8 %685 to i32
  %mul1078 = mul nuw nsw i32 %conv1077, 3
  %686 = load i32, ptr %w, align 4
  %add1079 = add nsw i32 %686, %mul1078
  store i32 %add1079, ptr %w, align 4
  %687 = load i32, ptr %x_size.addr, align 4
  %sub1080 = add nsw i32 %687, -5
  %688 = load ptr, ptr %p, align 8
  %idx.ext1081 = sext i32 %sub1080 to i64
  %add.ptr1082 = getelementptr inbounds i8, ptr %688, i64 %idx.ext1081
  store ptr %add.ptr1082, ptr %p, align 8
  %689 = load ptr, ptr %cp, align 8
  %incdec.ptr1083 = getelementptr inbounds i8, ptr %add.ptr1082, i64 1
  store ptr %incdec.ptr1083, ptr %p, align 8
  %690 = load i8, ptr %add.ptr1082, align 1
  %idx.ext1085 = zext i8 %690 to i64
  %idx.neg1086 = sub nsw i64 0, %idx.ext1085
  %add.ptr1087 = getelementptr inbounds i8, ptr %689, i64 %idx.neg1086
  %691 = load i8, ptr %add.ptr1087, align 1
  store i8 %691, ptr %c, align 1
  %conv1088 = zext i8 %691 to i32
  %mul1089 = shl nuw nsw i32 %conv1088, 2
  %692 = load i32, ptr %x, align 4
  %add1090 = add nsw i32 %692, %mul1089
  store i32 %add1090, ptr %x, align 4
  %conv1091 = zext i8 %691 to i32
  %mul1092 = shl nuw nsw i32 %conv1091, 2
  %693 = load i32, ptr %y, align 4
  %add1093 = add nsw i32 %693, %mul1092
  store i32 %add1093, ptr %y, align 4
  %694 = load i8, ptr %c, align 1
  %conv1094 = zext i8 %694 to i32
  %mul1095.neg = mul nsw i32 %conv1094, -4
  %695 = load i32, ptr %w, align 4
  %sub1096 = add i32 %mul1095.neg, %695
  store i32 %sub1096, ptr %w, align 4
  %696 = load ptr, ptr %cp, align 8
  %697 = load ptr, ptr %p, align 8
  %incdec.ptr1097 = getelementptr inbounds i8, ptr %697, i64 1
  store ptr %incdec.ptr1097, ptr %p, align 8
  %698 = load i8, ptr %697, align 1
  %idx.ext1099 = zext i8 %698 to i64
  %idx.neg1100 = sub nsw i64 0, %idx.ext1099
  %add.ptr1101 = getelementptr inbounds i8, ptr %696, i64 %idx.neg1100
  %699 = load i8, ptr %add.ptr1101, align 1
  store i8 %699, ptr %c, align 1
  %conv1102 = zext i8 %699 to i32
  %700 = load i32, ptr %x, align 4
  %add1103 = add nsw i32 %700, %conv1102
  store i32 %add1103, ptr %x, align 4
  %conv1104 = zext i8 %699 to i32
  %mul1105 = shl nuw nsw i32 %conv1104, 2
  %701 = load i32, ptr %y, align 4
  %add1106 = add nsw i32 %701, %mul1105
  store i32 %add1106, ptr %y, align 4
  %702 = load i8, ptr %c, align 1
  %conv1107 = zext i8 %702 to i32
  %mul1108.neg = mul nsw i32 %conv1107, -2
  %703 = load i32, ptr %w, align 4
  %sub1109 = add i32 %mul1108.neg, %703
  store i32 %sub1109, ptr %w, align 4
  %704 = load ptr, ptr %cp, align 8
  %705 = load ptr, ptr %p, align 8
  %incdec.ptr1110 = getelementptr inbounds i8, ptr %705, i64 1
  store ptr %incdec.ptr1110, ptr %p, align 8
  %706 = load i8, ptr %705, align 1
  %idx.ext1112 = zext i8 %706 to i64
  %idx.neg1113 = sub nsw i64 0, %idx.ext1112
  %add.ptr1114 = getelementptr inbounds i8, ptr %704, i64 %idx.neg1113
  %707 = load i8, ptr %add.ptr1114, align 1
  store i8 %707, ptr %c, align 1
  %conv1115 = zext i8 %707 to i32
  %mul1116 = shl nuw nsw i32 %conv1115, 2
  %708 = load i32, ptr %y, align 4
  %add1117 = add nsw i32 %708, %mul1116
  store i32 %add1117, ptr %y, align 4
  %709 = load ptr, ptr %cp, align 8
  %710 = load ptr, ptr %p, align 8
  %incdec.ptr1118 = getelementptr inbounds i8, ptr %710, i64 1
  store ptr %incdec.ptr1118, ptr %p, align 8
  %711 = load i8, ptr %710, align 1
  %idx.ext1120 = zext i8 %711 to i64
  %idx.neg1121 = sub nsw i64 0, %idx.ext1120
  %add.ptr1122 = getelementptr inbounds i8, ptr %709, i64 %idx.neg1121
  %712 = load i8, ptr %add.ptr1122, align 1
  store i8 %712, ptr %c, align 1
  %conv1123 = zext i8 %712 to i32
  %713 = load i32, ptr %x, align 4
  %add1124 = add nsw i32 %713, %conv1123
  store i32 %add1124, ptr %x, align 4
  %conv1125 = zext i8 %712 to i32
  %mul1126 = shl nuw nsw i32 %conv1125, 2
  %714 = load i32, ptr %y, align 4
  %add1127 = add nsw i32 %714, %mul1126
  store i32 %add1127, ptr %y, align 4
  %715 = load i8, ptr %c, align 1
  %conv1128 = zext i8 %715 to i32
  %mul1129 = shl nuw nsw i32 %conv1128, 1
  %716 = load i32, ptr %w, align 4
  %add1130 = add nsw i32 %716, %mul1129
  store i32 %add1130, ptr %w, align 4
  %717 = load ptr, ptr %cp, align 8
  %718 = load ptr, ptr %p, align 8
  %719 = load i8, ptr %718, align 1
  %idx.ext1132 = zext i8 %719 to i64
  %idx.neg1133 = sub nsw i64 0, %idx.ext1132
  %add.ptr1134 = getelementptr inbounds i8, ptr %717, i64 %idx.neg1133
  %720 = load i8, ptr %add.ptr1134, align 1
  store i8 %720, ptr %c, align 1
  %conv1135 = zext i8 %720 to i32
  %mul1136 = shl nuw nsw i32 %conv1135, 2
  %721 = load i32, ptr %x, align 4
  %add1137 = add nsw i32 %721, %mul1136
  store i32 %add1137, ptr %x, align 4
  %conv1138 = zext i8 %720 to i32
  %mul1139 = shl nuw nsw i32 %conv1138, 2
  %722 = load i32, ptr %y, align 4
  %add1140 = add nsw i32 %722, %mul1139
  store i32 %add1140, ptr %y, align 4
  %723 = load i8, ptr %c, align 1
  %conv1141 = zext i8 %723 to i32
  %mul1142 = shl nuw nsw i32 %conv1141, 2
  %724 = load i32, ptr %w, align 4
  %add1143 = add nsw i32 %724, %mul1142
  store i32 %add1143, ptr %w, align 4
  %725 = load i32, ptr %x_size.addr, align 4
  %sub1144 = add nsw i32 %725, -3
  %726 = load ptr, ptr %p, align 8
  %idx.ext1145 = sext i32 %sub1144 to i64
  %add.ptr1146 = getelementptr inbounds i8, ptr %726, i64 %idx.ext1145
  store ptr %add.ptr1146, ptr %p, align 8
  %727 = load ptr, ptr %cp, align 8
  %incdec.ptr1147 = getelementptr inbounds i8, ptr %add.ptr1146, i64 1
  store ptr %incdec.ptr1147, ptr %p, align 8
  %728 = load i8, ptr %add.ptr1146, align 1
  %idx.ext1149 = zext i8 %728 to i64
  %idx.neg1150 = sub nsw i64 0, %idx.ext1149
  %add.ptr1151 = getelementptr inbounds i8, ptr %727, i64 %idx.neg1150
  %729 = load i8, ptr %add.ptr1151, align 1
  store i8 %729, ptr %c, align 1
  %conv1152 = zext i8 %729 to i32
  %730 = load i32, ptr %x, align 4
  %add1153 = add nsw i32 %730, %conv1152
  store i32 %add1153, ptr %x, align 4
  %conv1154 = zext i8 %729 to i32
  %mul1155 = mul nuw nsw i32 %conv1154, 9
  %731 = load i32, ptr %y, align 4
  %add1156 = add nsw i32 %731, %mul1155
  store i32 %add1156, ptr %y, align 4
  %732 = load i8, ptr %c, align 1
  %conv1157 = zext i8 %732 to i32
  %mul1158.neg = mul nsw i32 %conv1157, -3
  %733 = load i32, ptr %w, align 4
  %sub1159 = add i32 %mul1158.neg, %733
  store i32 %sub1159, ptr %w, align 4
  %734 = load ptr, ptr %cp, align 8
  %735 = load ptr, ptr %p, align 8
  %incdec.ptr1160 = getelementptr inbounds i8, ptr %735, i64 1
  store ptr %incdec.ptr1160, ptr %p, align 8
  %736 = load i8, ptr %735, align 1
  %idx.ext1162 = zext i8 %736 to i64
  %idx.neg1163 = sub nsw i64 0, %idx.ext1162
  %add.ptr1164 = getelementptr inbounds i8, ptr %734, i64 %idx.neg1163
  %737 = load i8, ptr %add.ptr1164, align 1
  store i8 %737, ptr %c, align 1
  %conv1165 = zext i8 %737 to i32
  %mul1166 = mul nuw nsw i32 %conv1165, 9
  %738 = load i32, ptr %y, align 4
  %add1167 = add nsw i32 %738, %mul1166
  store i32 %add1167, ptr %y, align 4
  %739 = load ptr, ptr %cp, align 8
  %740 = load ptr, ptr %p, align 8
  %741 = load i8, ptr %740, align 1
  %idx.ext1169 = zext i8 %741 to i64
  %idx.neg1170 = sub nsw i64 0, %idx.ext1169
  %add.ptr1171 = getelementptr inbounds i8, ptr %739, i64 %idx.neg1170
  %742 = load i8, ptr %add.ptr1171, align 1
  store i8 %742, ptr %c, align 1
  %conv1172 = zext i8 %742 to i32
  %743 = load i32, ptr %x, align 4
  %add1173 = add nsw i32 %743, %conv1172
  store i32 %add1173, ptr %x, align 4
  %conv1174 = zext i8 %742 to i32
  %mul1175 = mul nuw nsw i32 %conv1174, 9
  %744 = load i32, ptr %y, align 4
  %add1176 = add nsw i32 %744, %mul1175
  store i32 %add1176, ptr %y, align 4
  %745 = load i8, ptr %c, align 1
  %conv1177 = zext i8 %745 to i32
  %mul1178 = mul nuw nsw i32 %conv1177, 3
  %746 = load i32, ptr %w, align 4
  %add1179 = add nsw i32 %746, %mul1178
  store i32 %add1179, ptr %w, align 4
  %747 = load i32, ptr %y, align 4
  %cmp1180 = icmp eq i32 %747, 0
  br i1 %cmp1180, label %if.end1187, label %if.else1183

if.else1183:                                      ; preds = %if.then761
  %748 = load i32, ptr %x, align 4
  %conv1184 = sitofp i32 %748 to float
  %749 = load i32, ptr %y, align 4
  %conv1185 = sitofp i32 %749 to float
  %div1186 = fdiv float %conv1184, %conv1185
  br label %if.end1187

if.end1187:                                       ; preds = %if.then761, %if.else1183
  %storemerge3 = phi float [ %div1186, %if.else1183 ], [ 1.000000e+06, %if.then761 ]
  store float %storemerge3, ptr %z, align 4
  %cmp1189 = fcmp olt float %storemerge3, 5.000000e-01
  br i1 %cmp1189, label %if.end1204, label %if.else1192

if.else1192:                                      ; preds = %if.end1187
  %750 = load float, ptr %z, align 4
  %cmp1194 = fcmp ogt float %750, 2.000000e+00
  %751 = load i32, ptr %w, align 4
  %cmp1198 = icmp sgt i32 %751, 0
  %.17 = select i1 %cmp1198, i32 -1, i32 1
  %storemerge6 = select i1 %cmp1194, i32 1, i32 %.17
  %storemerge5 = select i1 %cmp1194, i32 0, i32 1
  br label %if.end1204

if.end1204:                                       ; preds = %if.end1187, %if.else1192
  %storemerge8 = phi i32 [ %storemerge6, %if.else1192 ], [ 0, %if.end1187 ]
  %storemerge7 = phi i32 [ %storemerge5, %if.else1192 ], [ 1, %if.end1187 ]
  store i32 %storemerge8, ptr %a, align 4
  store i32 %storemerge7, ptr %b, align 4
  %752 = load i32, ptr %m, align 4
  %753 = load ptr, ptr %r.addr, align 8
  %754 = load i32, ptr %i, align 4
  %add1205 = add nsw i32 %754, %storemerge8
  %755 = load i32, ptr %x_size.addr, align 4
  %mul1206 = mul nsw i32 %add1205, %755
  %756 = load i32, ptr %j, align 4
  %add1207 = add nsw i32 %mul1206, %756
  %757 = load i32, ptr %b, align 4
  %add1208 = add nsw i32 %add1207, %757
  %idxprom1209 = sext i32 %add1208 to i64
  %arrayidx1210 = getelementptr inbounds i32, ptr %753, i64 %idxprom1209
  %758 = load i32, ptr %arrayidx1210, align 4
  %cmp1211 = icmp sgt i32 %752, %758
  br i1 %cmp1211, label %land.lhs.true1213, label %for.inc1252

land.lhs.true1213:                                ; preds = %if.end1204
  %759 = load i32, ptr %m, align 4
  %760 = load ptr, ptr %r.addr, align 8
  %761 = load i32, ptr %i, align 4
  %762 = load i32, ptr %a, align 4
  %sub1214 = sub nsw i32 %761, %762
  %763 = load i32, ptr %x_size.addr, align 4
  %mul1215 = mul nsw i32 %sub1214, %763
  %764 = load i32, ptr %j, align 4
  %add1216 = add nsw i32 %mul1215, %764
  %765 = load i32, ptr %b, align 4
  %sub1217 = sub nsw i32 %add1216, %765
  %idxprom1218 = sext i32 %sub1217 to i64
  %arrayidx1219 = getelementptr inbounds i32, ptr %760, i64 %idxprom1218
  %766 = load i32, ptr %arrayidx1219, align 4
  %cmp1220.not = icmp slt i32 %759, %766
  br i1 %cmp1220.not, label %for.inc1252, label %land.lhs.true1222

land.lhs.true1222:                                ; preds = %land.lhs.true1213
  %767 = load i32, ptr %m, align 4
  %768 = load ptr, ptr %r.addr, align 8
  %769 = load i32, ptr %i, align 4
  %770 = load i32, ptr %a, align 4
  %mul1223 = shl nsw i32 %770, 1
  %add1224 = add nsw i32 %769, %mul1223
  %771 = load i32, ptr %x_size.addr, align 4
  %mul1225 = mul nsw i32 %add1224, %771
  %772 = load i32, ptr %j, align 4
  %add1226 = add nsw i32 %mul1225, %772
  %773 = load i32, ptr %b, align 4
  %mul1227 = shl nsw i32 %773, 1
  %add1228 = add nsw i32 %add1226, %mul1227
  %idxprom1229 = sext i32 %add1228 to i64
  %arrayidx1230 = getelementptr inbounds i32, ptr %768, i64 %idxprom1229
  %774 = load i32, ptr %arrayidx1230, align 4
  %cmp1231 = icmp sgt i32 %767, %774
  br i1 %cmp1231, label %land.lhs.true1233, label %for.inc1252

land.lhs.true1233:                                ; preds = %land.lhs.true1222
  %775 = load i32, ptr %m, align 4
  %776 = load ptr, ptr %r.addr, align 8
  %777 = load i32, ptr %i, align 4
  %778 = load i32, ptr %a, align 4
  %mul1234.neg = mul i32 %778, -2
  %sub1235 = add i32 %mul1234.neg, %777
  %779 = load i32, ptr %x_size.addr, align 4
  %mul1236 = mul nsw i32 %sub1235, %779
  %780 = load i32, ptr %j, align 4
  %add1237 = add nsw i32 %mul1236, %780
  %781 = load i32, ptr %b, align 4
  %mul1238.neg = mul i32 %781, -2
  %sub1239 = add i32 %mul1238.neg, %add1237
  %idxprom1240 = sext i32 %sub1239 to i64
  %arrayidx1241 = getelementptr inbounds i32, ptr %776, i64 %idxprom1240
  %782 = load i32, ptr %arrayidx1241, align 4
  %cmp1242.not = icmp slt i32 %775, %782
  br i1 %cmp1242.not, label %for.inc1252, label %if.then1244

if.then1244:                                      ; preds = %land.lhs.true1233
  %783 = load ptr, ptr %mid.addr, align 8
  %784 = load i32, ptr %i, align 4
  %785 = load i32, ptr %x_size.addr, align 4
  %mul1245 = mul nsw i32 %784, %785
  %786 = load i32, ptr %j, align 4
  %add1246 = add nsw i32 %mul1245, %786
  %idxprom1247 = sext i32 %add1246 to i64
  %arrayidx1248 = getelementptr inbounds i8, ptr %783, i64 %idxprom1247
  store i8 2, ptr %arrayidx1248, align 1
  br label %for.inc1252

for.inc1252:                                      ; preds = %for.body297, %if.end1204, %land.lhs.true1213, %land.lhs.true1222, %land.lhs.true1233, %if.then1244, %if.end758
  %787 = load i32, ptr %j, align 4
  %inc1253 = add nsw i32 %787, 1
  br label %for.cond293, !llvm.loop !36

for.inc1255:                                      ; preds = %for.cond293
  %788 = load i32, ptr %i, align 4
  %inc1256 = add nsw i32 %788, 1
  br label %for.cond288, !llvm.loop !37

for.end1257:                                      ; preds = %for.cond288
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nounwind ssp uwtable
define void @susan_edges_small(ptr noundef %in, ptr noundef %r, ptr noundef %mid, ptr noundef %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %z = alloca float, align 4
  %do_symmetry = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %c = alloca i8, align 1
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %mid, ptr %mid.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %max_no, ptr %max_no.addr, align 4
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %x_size, %y_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %0 = load ptr, ptr %r.addr, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %r, i32 noundef 0, i64 noundef %mul1, i64 noundef %1) #9
  store i32 730, ptr %max_no.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc82, %for.inc81 ]
  store i32 %storemerge, ptr %i, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %sub = add nsw i32 %2, -1
  %cmp = icmp slt i32 %storemerge, %sub
  br i1 %cmp, label %for.cond3, label %for.cond84

for.cond3:                                        ; preds = %for.cond, %for.inc
  %storemerge16 = phi i32 [ %inc, %for.inc ], [ 1, %for.cond ]
  store i32 %storemerge16, ptr %j, align 4
  %3 = load i32, ptr %x_size.addr, align 4
  %sub4 = add nsw i32 %3, -1
  %cmp5 = icmp slt i32 %storemerge16, %sub4
  br i1 %cmp5, label %for.body7, label %for.inc81

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load i32, ptr %i, align 4
  %sub8 = add nsw i32 %5, -1
  %6 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %6
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %7 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %7 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %10, %11
  %12 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %12
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  %idx.ext15 = zext i8 %13 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %8, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %15 = load i8, ptr %14, align 1
  %idx.ext18 = zext i8 %15 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %16 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %16 to i32
  %17 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %17, %conv20
  store i32 %add21, ptr %n, align 4
  %18 = load ptr, ptr %cp, align 8
  %19 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %20 = load i8, ptr %19, align 1
  %idx.ext24 = zext i8 %20 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %18, i64 %idx.neg25
  %21 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %21 to i32
  %22 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %22, %conv27
  store i32 %add28, ptr %n, align 4
  %23 = load ptr, ptr %cp, align 8
  %24 = load ptr, ptr %p, align 8
  %25 = load i8, ptr %24, align 1
  %idx.ext30 = zext i8 %25 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %23, i64 %idx.neg31
  %26 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %26 to i32
  %27 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %27, %conv33
  store i32 %add34, ptr %n, align 4
  %28 = load i32, ptr %x_size.addr, align 4
  %sub35 = add nsw i32 %28, -2
  %29 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %29, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %30 = load ptr, ptr %cp, align 8
  %31 = load i8, ptr %add.ptr37, align 1
  %idx.ext39 = zext i8 %31 to i64
  %idx.neg40 = sub nsw i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %30, i64 %idx.neg40
  %32 = load i8, ptr %add.ptr41, align 1
  %conv42 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add43 = add nsw i32 %33, %conv42
  store i32 %add43, ptr %n, align 4
  %34 = load ptr, ptr %p, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %34, i64 2
  store ptr %add.ptr44, ptr %p, align 8
  %35 = load ptr, ptr %cp, align 8
  %36 = load i8, ptr %add.ptr44, align 1
  %idx.ext46 = zext i8 %36 to i64
  %idx.neg47 = sub nsw i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %35, i64 %idx.neg47
  %37 = load i8, ptr %add.ptr48, align 1
  %conv49 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4
  %add50 = add nsw i32 %38, %conv49
  store i32 %add50, ptr %n, align 4
  %39 = load i32, ptr %x_size.addr, align 4
  %sub51 = add nsw i32 %39, -2
  %40 = load ptr, ptr %p, align 8
  %idx.ext52 = sext i32 %sub51 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %40, i64 %idx.ext52
  store ptr %add.ptr53, ptr %p, align 8
  %41 = load ptr, ptr %cp, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %add.ptr53, i64 1
  store ptr %incdec.ptr54, ptr %p, align 8
  %42 = load i8, ptr %add.ptr53, align 1
  %idx.ext56 = zext i8 %42 to i64
  %idx.neg57 = sub nsw i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, ptr %41, i64 %idx.neg57
  %43 = load i8, ptr %add.ptr58, align 1
  %conv59 = zext i8 %43 to i32
  %44 = load i32, ptr %n, align 4
  %add60 = add nsw i32 %44, %conv59
  store i32 %add60, ptr %n, align 4
  %45 = load ptr, ptr %cp, align 8
  %46 = load ptr, ptr %p, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %incdec.ptr61, ptr %p, align 8
  %47 = load i8, ptr %46, align 1
  %idx.ext63 = zext i8 %47 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %45, i64 %idx.neg64
  %48 = load i8, ptr %add.ptr65, align 1
  %conv66 = zext i8 %48 to i32
  %49 = load i32, ptr %n, align 4
  %add67 = add nsw i32 %49, %conv66
  store i32 %add67, ptr %n, align 4
  %50 = load ptr, ptr %cp, align 8
  %51 = load ptr, ptr %p, align 8
  %52 = load i8, ptr %51, align 1
  %idx.ext69 = zext i8 %52 to i64
  %idx.neg70 = sub nsw i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %50, i64 %idx.neg70
  %53 = load i8, ptr %add.ptr71, align 1
  %conv72 = zext i8 %53 to i32
  %54 = load i32, ptr %n, align 4
  %add73 = add nsw i32 %54, %conv72
  store i32 %add73, ptr %n, align 4
  %55 = load i32, ptr %max_no.addr, align 4
  %cmp74.not = icmp sgt i32 %add73, %55
  br i1 %cmp74.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body7
  %56 = load i32, ptr %max_no.addr, align 4
  %57 = load i32, ptr %n, align 4
  %sub76 = sub nsw i32 %56, %57
  %58 = load ptr, ptr %r.addr, align 8
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %x_size.addr, align 4
  %mul77 = mul nsw i32 %59, %60
  %61 = load i32, ptr %j, align 4
  %add78 = add nsw i32 %mul77, %61
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %58, i64 %idxprom79
  store i32 %sub76, ptr %arrayidx80, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %62 = load i32, ptr %j, align 4
  %inc = add nsw i32 %62, 1
  br label %for.cond3, !llvm.loop !38

for.inc81:                                        ; preds = %for.cond3
  %63 = load i32, ptr %i, align 4
  %inc82 = add nsw i32 %63, 1
  br label %for.cond, !llvm.loop !39

for.cond84:                                       ; preds = %for.cond, %for.inc395
  %storemerge1 = phi i32 [ %inc396, %for.inc395 ], [ 2, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %64 = load i32, ptr %y_size.addr, align 4
  %sub85 = add nsw i32 %64, -2
  %cmp86 = icmp slt i32 %storemerge1, %sub85
  br i1 %cmp86, label %for.cond89, label %for.end397

for.cond89:                                       ; preds = %for.cond84, %for.inc392
  %storemerge2 = phi i32 [ %inc393, %for.inc392 ], [ 2, %for.cond84 ]
  store i32 %storemerge2, ptr %j, align 4
  %65 = load i32, ptr %x_size.addr, align 4
  %sub90 = add nsw i32 %65, -2
  %cmp91 = icmp slt i32 %storemerge2, %sub90
  br i1 %cmp91, label %for.body93, label %for.inc395

for.body93:                                       ; preds = %for.cond89
  %66 = load ptr, ptr %r.addr, align 8
  %67 = load i32, ptr %i, align 4
  %68 = load i32, ptr %x_size.addr, align 4
  %mul94 = mul nsw i32 %67, %68
  %69 = load i32, ptr %j, align 4
  %add95 = add nsw i32 %mul94, %69
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %66, i64 %idxprom96
  %70 = load i32, ptr %arrayidx97, align 4
  %cmp98 = icmp sgt i32 %70, 0
  br i1 %cmp98, label %if.then100, label %for.inc392

if.then100:                                       ; preds = %for.body93
  %71 = load ptr, ptr %r.addr, align 8
  %72 = load i32, ptr %i, align 4
  %73 = load i32, ptr %x_size.addr, align 4
  %mul101 = mul nsw i32 %72, %73
  %74 = load i32, ptr %j, align 4
  %add102 = add nsw i32 %mul101, %74
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %71, i64 %idxprom103
  %75 = load i32, ptr %arrayidx104, align 4
  store i32 %75, ptr %m, align 4
  %76 = load i32, ptr %max_no.addr, align 4
  %sub105 = sub nsw i32 %76, %75
  store i32 %sub105, ptr %n, align 4
  %77 = load ptr, ptr %bp.addr, align 8
  %78 = load ptr, ptr %in.addr, align 8
  %79 = load i32, ptr %i, align 4
  %80 = load i32, ptr %x_size.addr, align 4
  %mul106 = mul nsw i32 %79, %80
  %81 = load i32, ptr %j, align 4
  %add107 = add nsw i32 %mul106, %81
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %78, i64 %idxprom108
  %82 = load i8, ptr %arrayidx109, align 1
  %idx.ext111 = zext i8 %82 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %77, i64 %idx.ext111
  store ptr %add.ptr112, ptr %cp, align 8
  %83 = load i32, ptr %n, align 4
  %cmp113 = icmp sgt i32 %83, 250
  br i1 %cmp113, label %if.then115, label %if.else255

if.then115:                                       ; preds = %if.then100
  %84 = load ptr, ptr %in.addr, align 8
  %85 = load i32, ptr %i, align 4
  %sub116 = add nsw i32 %85, -1
  %86 = load i32, ptr %x_size.addr, align 4
  %mul117 = mul nsw i32 %sub116, %86
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds i8, ptr %84, i64 %idx.ext118
  %87 = load i32, ptr %j, align 4
  %idx.ext120 = sext i32 %87 to i64
  %add.ptr121 = getelementptr inbounds i8, ptr %add.ptr119, i64 %idx.ext120
  %add.ptr122 = getelementptr inbounds i8, ptr %add.ptr121, i64 -1
  store ptr %add.ptr122, ptr %p, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  %88 = load ptr, ptr %cp, align 8
  %incdec.ptr123 = getelementptr inbounds i8, ptr %add.ptr122, i64 1
  store ptr %incdec.ptr123, ptr %p, align 8
  %89 = load i8, ptr %add.ptr122, align 1
  %idx.ext125 = zext i8 %89 to i64
  %idx.neg126 = sub nsw i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, ptr %88, i64 %idx.neg126
  %90 = load i8, ptr %add.ptr127, align 1
  store i8 %90, ptr %c, align 1
  %conv128 = zext i8 %90 to i32
  %91 = load i32, ptr %x, align 4
  %sub129 = sub nsw i32 %91, %conv128
  store i32 %sub129, ptr %x, align 4
  %conv130 = zext i8 %90 to i32
  %92 = load i32, ptr %y, align 4
  %sub131 = sub nsw i32 %92, %conv130
  store i32 %sub131, ptr %y, align 4
  %93 = load ptr, ptr %cp, align 8
  %94 = load ptr, ptr %p, align 8
  %incdec.ptr132 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %incdec.ptr132, ptr %p, align 8
  %95 = load i8, ptr %94, align 1
  %idx.ext134 = zext i8 %95 to i64
  %idx.neg135 = sub nsw i64 0, %idx.ext134
  %add.ptr136 = getelementptr inbounds i8, ptr %93, i64 %idx.neg135
  %96 = load i8, ptr %add.ptr136, align 1
  store i8 %96, ptr %c, align 1
  %conv137 = zext i8 %96 to i32
  %97 = load i32, ptr %y, align 4
  %sub138 = sub nsw i32 %97, %conv137
  store i32 %sub138, ptr %y, align 4
  %98 = load ptr, ptr %cp, align 8
  %99 = load ptr, ptr %p, align 8
  %100 = load i8, ptr %99, align 1
  %idx.ext140 = zext i8 %100 to i64
  %idx.neg141 = sub nsw i64 0, %idx.ext140
  %add.ptr142 = getelementptr inbounds i8, ptr %98, i64 %idx.neg141
  %101 = load i8, ptr %add.ptr142, align 1
  store i8 %101, ptr %c, align 1
  %conv143 = zext i8 %101 to i32
  %102 = load i32, ptr %x, align 4
  %add144 = add nsw i32 %102, %conv143
  store i32 %add144, ptr %x, align 4
  %conv145 = zext i8 %101 to i32
  %103 = load i32, ptr %y, align 4
  %sub146 = sub nsw i32 %103, %conv145
  store i32 %sub146, ptr %y, align 4
  %104 = load i32, ptr %x_size.addr, align 4
  %sub147 = add nsw i32 %104, -2
  %105 = load ptr, ptr %p, align 8
  %idx.ext148 = sext i32 %sub147 to i64
  %add.ptr149 = getelementptr inbounds i8, ptr %105, i64 %idx.ext148
  store ptr %add.ptr149, ptr %p, align 8
  %106 = load ptr, ptr %cp, align 8
  %107 = load i8, ptr %add.ptr149, align 1
  %idx.ext151 = zext i8 %107 to i64
  %idx.neg152 = sub nsw i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, ptr %106, i64 %idx.neg152
  %108 = load i8, ptr %add.ptr153, align 1
  store i8 %108, ptr %c, align 1
  %conv154 = zext i8 %108 to i32
  %109 = load i32, ptr %x, align 4
  %sub155 = sub nsw i32 %109, %conv154
  store i32 %sub155, ptr %x, align 4
  %110 = load ptr, ptr %p, align 8
  %add.ptr156 = getelementptr inbounds i8, ptr %110, i64 2
  store ptr %add.ptr156, ptr %p, align 8
  %111 = load ptr, ptr %cp, align 8
  %112 = load i8, ptr %add.ptr156, align 1
  %idx.ext158 = zext i8 %112 to i64
  %idx.neg159 = sub nsw i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, ptr %111, i64 %idx.neg159
  %113 = load i8, ptr %add.ptr160, align 1
  store i8 %113, ptr %c, align 1
  %conv161 = zext i8 %113 to i32
  %114 = load i32, ptr %x, align 4
  %add162 = add nsw i32 %114, %conv161
  store i32 %add162, ptr %x, align 4
  %115 = load i32, ptr %x_size.addr, align 4
  %sub163 = add nsw i32 %115, -2
  %116 = load ptr, ptr %p, align 8
  %idx.ext164 = sext i32 %sub163 to i64
  %add.ptr165 = getelementptr inbounds i8, ptr %116, i64 %idx.ext164
  store ptr %add.ptr165, ptr %p, align 8
  %117 = load ptr, ptr %cp, align 8
  %incdec.ptr166 = getelementptr inbounds i8, ptr %add.ptr165, i64 1
  store ptr %incdec.ptr166, ptr %p, align 8
  %118 = load i8, ptr %add.ptr165, align 1
  %idx.ext168 = zext i8 %118 to i64
  %idx.neg169 = sub nsw i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, ptr %117, i64 %idx.neg169
  %119 = load i8, ptr %add.ptr170, align 1
  store i8 %119, ptr %c, align 1
  %conv171 = zext i8 %119 to i32
  %120 = load i32, ptr %x, align 4
  %sub172 = sub nsw i32 %120, %conv171
  store i32 %sub172, ptr %x, align 4
  %conv173 = zext i8 %119 to i32
  %121 = load i32, ptr %y, align 4
  %add174 = add nsw i32 %121, %conv173
  store i32 %add174, ptr %y, align 4
  %122 = load ptr, ptr %cp, align 8
  %123 = load ptr, ptr %p, align 8
  %incdec.ptr175 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %incdec.ptr175, ptr %p, align 8
  %124 = load i8, ptr %123, align 1
  %idx.ext177 = zext i8 %124 to i64
  %idx.neg178 = sub nsw i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, ptr %122, i64 %idx.neg178
  %125 = load i8, ptr %add.ptr179, align 1
  store i8 %125, ptr %c, align 1
  %conv180 = zext i8 %125 to i32
  %126 = load i32, ptr %y, align 4
  %add181 = add nsw i32 %126, %conv180
  store i32 %add181, ptr %y, align 4
  %127 = load ptr, ptr %cp, align 8
  %128 = load ptr, ptr %p, align 8
  %129 = load i8, ptr %128, align 1
  %idx.ext183 = zext i8 %129 to i64
  %idx.neg184 = sub nsw i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %127, i64 %idx.neg184
  %130 = load i8, ptr %add.ptr185, align 1
  store i8 %130, ptr %c, align 1
  %conv186 = zext i8 %130 to i32
  %131 = load i32, ptr %x, align 4
  %add187 = add nsw i32 %131, %conv186
  store i32 %add187, ptr %x, align 4
  %conv188 = zext i8 %130 to i32
  %132 = load i32, ptr %y, align 4
  %add189 = add nsw i32 %132, %conv188
  store i32 %add189, ptr %y, align 4
  %mul190 = mul nsw i32 %add187, %add187
  %mul191 = mul nsw i32 %add189, %add189
  %add192 = add nuw nsw i32 %mul190, %mul191
  %conv193 = sitofp i32 %add192 to float
  %133 = call float @llvm.sqrt.f32(float %conv193)
  store float %133, ptr %z, align 4
  %conv196 = fpext float %133 to double
  %134 = load i32, ptr %n, align 4
  %conv197 = sitofp i32 %134 to float
  %conv198 = fpext float %conv197 to double
  %mul199 = fmul double %conv198, 4.000000e-01
  %cmp200 = fcmp olt double %mul199, %conv196
  br i1 %cmp200, label %if.then202, label %if.else253

if.then202:                                       ; preds = %if.then115
  store i32 0, ptr %do_symmetry, align 4
  %135 = load i32, ptr %x, align 4
  %cmp203 = icmp eq i32 %135, 0
  br i1 %cmp203, label %if.end208, label %if.else

if.else:                                          ; preds = %if.then202
  %136 = load i32, ptr %y, align 4
  %conv206 = sitofp i32 %136 to float
  %137 = load i32, ptr %x, align 4
  %conv207 = sitofp i32 %137 to float
  %div = fdiv float %conv206, %conv207
  br label %if.end208

if.end208:                                        ; preds = %if.then202, %if.else
  %storemerge9 = phi float [ %div, %if.else ], [ 1.000000e+06, %if.then202 ]
  store float %storemerge9, ptr %z, align 4
  %cmp209 = fcmp olt float %storemerge9, 0.000000e+00
  br i1 %cmp209, label %if.then211, label %if.end213

if.then211:                                       ; preds = %if.end208
  %138 = load float, ptr %z, align 4
  %fneg = fneg float %138
  store float %fneg, ptr %z, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.end208, %if.then211
  %storemerge10 = phi i32 [ -1, %if.then211 ], [ 1, %if.end208 ]
  store i32 %storemerge10, ptr %w, align 4
  %139 = load float, ptr %z, align 4
  %cmp215 = fcmp olt float %139, 5.000000e-01
  br i1 %cmp215, label %if.end230, label %if.else218

if.else218:                                       ; preds = %if.end213
  %140 = load float, ptr %z, align 4
  %cmp220 = fcmp ogt float %140, 2.000000e+00
  %141 = load i32, ptr %w, align 4
  %cmp224 = icmp sgt i32 %141, 0
  %. = select i1 %cmp224, i32 1, i32 -1
  %storemerge13 = select i1 %cmp220, i32 1, i32 %.
  %storemerge12 = select i1 %cmp220, i32 0, i32 1
  br label %if.end230

if.end230:                                        ; preds = %if.end213, %if.else218
  %storemerge15 = phi i32 [ %storemerge13, %if.else218 ], [ 0, %if.end213 ]
  %storemerge14 = phi i32 [ %storemerge12, %if.else218 ], [ 1, %if.end213 ]
  store i32 %storemerge15, ptr %a, align 4
  store i32 %storemerge14, ptr %b, align 4
  %142 = load i32, ptr %m, align 4
  %143 = load ptr, ptr %r.addr, align 8
  %144 = load i32, ptr %i, align 4
  %add231 = add nsw i32 %144, %storemerge15
  %145 = load i32, ptr %x_size.addr, align 4
  %mul232 = mul nsw i32 %add231, %145
  %146 = load i32, ptr %j, align 4
  %add233 = add nsw i32 %mul232, %146
  %147 = load i32, ptr %b, align 4
  %add234 = add nsw i32 %add233, %147
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %143, i64 %idxprom235
  %148 = load i32, ptr %arrayidx236, align 4
  %cmp237 = icmp sgt i32 %142, %148
  br i1 %cmp237, label %land.lhs.true, label %if.end256

land.lhs.true:                                    ; preds = %if.end230
  %149 = load i32, ptr %m, align 4
  %150 = load ptr, ptr %r.addr, align 8
  %151 = load i32, ptr %i, align 4
  %152 = load i32, ptr %a, align 4
  %sub239 = sub nsw i32 %151, %152
  %153 = load i32, ptr %x_size.addr, align 4
  %mul240 = mul nsw i32 %sub239, %153
  %154 = load i32, ptr %j, align 4
  %add241 = add nsw i32 %mul240, %154
  %155 = load i32, ptr %b, align 4
  %sub242 = sub nsw i32 %add241, %155
  %idxprom243 = sext i32 %sub242 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %150, i64 %idxprom243
  %156 = load i32, ptr %arrayidx244, align 4
  %cmp245.not = icmp slt i32 %149, %156
  br i1 %cmp245.not, label %if.end256, label %if.then247

if.then247:                                       ; preds = %land.lhs.true
  %157 = load ptr, ptr %mid.addr, align 8
  %158 = load i32, ptr %i, align 4
  %159 = load i32, ptr %x_size.addr, align 4
  %mul248 = mul nsw i32 %158, %159
  %160 = load i32, ptr %j, align 4
  %add249 = add nsw i32 %mul248, %160
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds i8, ptr %157, i64 %idxprom250
  store i8 1, ptr %arrayidx251, align 1
  br label %if.end256

if.else253:                                       ; preds = %if.then115
  store i32 1, ptr %do_symmetry, align 4
  br label %if.end256

if.else255:                                       ; preds = %if.then100
  store i32 1, ptr %do_symmetry, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.else253, %if.then247, %land.lhs.true, %if.end230, %if.else255
  %161 = load i32, ptr %do_symmetry, align 4
  %cmp257 = icmp eq i32 %161, 1
  br i1 %cmp257, label %if.then259, label %for.inc392

if.then259:                                       ; preds = %if.end256
  %162 = load ptr, ptr %in.addr, align 8
  %163 = load i32, ptr %i, align 4
  %sub260 = add nsw i32 %163, -1
  %164 = load i32, ptr %x_size.addr, align 4
  %mul261 = mul nsw i32 %sub260, %164
  %idx.ext262 = sext i32 %mul261 to i64
  %add.ptr263 = getelementptr inbounds i8, ptr %162, i64 %idx.ext262
  %165 = load i32, ptr %j, align 4
  %idx.ext264 = sext i32 %165 to i64
  %add.ptr265 = getelementptr inbounds i8, ptr %add.ptr263, i64 %idx.ext264
  %add.ptr266 = getelementptr inbounds i8, ptr %add.ptr265, i64 -1
  store ptr %add.ptr266, ptr %p, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  store i32 0, ptr %w, align 4
  %166 = load ptr, ptr %cp, align 8
  %incdec.ptr267 = getelementptr inbounds i8, ptr %add.ptr266, i64 1
  store ptr %incdec.ptr267, ptr %p, align 8
  %167 = load i8, ptr %add.ptr266, align 1
  %idx.ext269 = zext i8 %167 to i64
  %idx.neg270 = sub nsw i64 0, %idx.ext269
  %add.ptr271 = getelementptr inbounds i8, ptr %166, i64 %idx.neg270
  %168 = load i8, ptr %add.ptr271, align 1
  store i8 %168, ptr %c, align 1
  %conv272 = zext i8 %168 to i32
  %169 = load i32, ptr %x, align 4
  %add273 = add nsw i32 %169, %conv272
  store i32 %add273, ptr %x, align 4
  %conv274 = zext i8 %168 to i32
  %170 = load i32, ptr %y, align 4
  %add275 = add nsw i32 %170, %conv274
  store i32 %add275, ptr %y, align 4
  %171 = load i8, ptr %c, align 1
  %conv276 = zext i8 %171 to i32
  %172 = load i32, ptr %w, align 4
  %add277 = add nsw i32 %172, %conv276
  store i32 %add277, ptr %w, align 4
  %173 = load ptr, ptr %cp, align 8
  %174 = load ptr, ptr %p, align 8
  %incdec.ptr278 = getelementptr inbounds i8, ptr %174, i64 1
  store ptr %incdec.ptr278, ptr %p, align 8
  %175 = load i8, ptr %174, align 1
  %idx.ext280 = zext i8 %175 to i64
  %idx.neg281 = sub nsw i64 0, %idx.ext280
  %add.ptr282 = getelementptr inbounds i8, ptr %173, i64 %idx.neg281
  %176 = load i8, ptr %add.ptr282, align 1
  store i8 %176, ptr %c, align 1
  %conv283 = zext i8 %176 to i32
  %177 = load i32, ptr %y, align 4
  %add284 = add nsw i32 %177, %conv283
  store i32 %add284, ptr %y, align 4
  %178 = load ptr, ptr %cp, align 8
  %179 = load ptr, ptr %p, align 8
  %180 = load i8, ptr %179, align 1
  %idx.ext286 = zext i8 %180 to i64
  %idx.neg287 = sub nsw i64 0, %idx.ext286
  %add.ptr288 = getelementptr inbounds i8, ptr %178, i64 %idx.neg287
  %181 = load i8, ptr %add.ptr288, align 1
  store i8 %181, ptr %c, align 1
  %conv289 = zext i8 %181 to i32
  %182 = load i32, ptr %x, align 4
  %add290 = add nsw i32 %182, %conv289
  store i32 %add290, ptr %x, align 4
  %conv291 = zext i8 %181 to i32
  %183 = load i32, ptr %y, align 4
  %add292 = add nsw i32 %183, %conv291
  store i32 %add292, ptr %y, align 4
  %184 = load i8, ptr %c, align 1
  %conv293 = zext i8 %184 to i32
  %185 = load i32, ptr %w, align 4
  %sub294 = sub nsw i32 %185, %conv293
  store i32 %sub294, ptr %w, align 4
  %186 = load i32, ptr %x_size.addr, align 4
  %sub295 = add nsw i32 %186, -2
  %187 = load ptr, ptr %p, align 8
  %idx.ext296 = sext i32 %sub295 to i64
  %add.ptr297 = getelementptr inbounds i8, ptr %187, i64 %idx.ext296
  store ptr %add.ptr297, ptr %p, align 8
  %188 = load ptr, ptr %cp, align 8
  %189 = load i8, ptr %add.ptr297, align 1
  %idx.ext299 = zext i8 %189 to i64
  %idx.neg300 = sub nsw i64 0, %idx.ext299
  %add.ptr301 = getelementptr inbounds i8, ptr %188, i64 %idx.neg300
  %190 = load i8, ptr %add.ptr301, align 1
  store i8 %190, ptr %c, align 1
  %conv302 = zext i8 %190 to i32
  %191 = load i32, ptr %x, align 4
  %add303 = add nsw i32 %191, %conv302
  store i32 %add303, ptr %x, align 4
  %192 = load ptr, ptr %p, align 8
  %add.ptr304 = getelementptr inbounds i8, ptr %192, i64 2
  store ptr %add.ptr304, ptr %p, align 8
  %193 = load ptr, ptr %cp, align 8
  %194 = load i8, ptr %add.ptr304, align 1
  %idx.ext306 = zext i8 %194 to i64
  %idx.neg307 = sub nsw i64 0, %idx.ext306
  %add.ptr308 = getelementptr inbounds i8, ptr %193, i64 %idx.neg307
  %195 = load i8, ptr %add.ptr308, align 1
  store i8 %195, ptr %c, align 1
  %conv309 = zext i8 %195 to i32
  %196 = load i32, ptr %x, align 4
  %add310 = add nsw i32 %196, %conv309
  store i32 %add310, ptr %x, align 4
  %197 = load i32, ptr %x_size.addr, align 4
  %sub311 = add nsw i32 %197, -2
  %198 = load ptr, ptr %p, align 8
  %idx.ext312 = sext i32 %sub311 to i64
  %add.ptr313 = getelementptr inbounds i8, ptr %198, i64 %idx.ext312
  store ptr %add.ptr313, ptr %p, align 8
  %199 = load ptr, ptr %cp, align 8
  %incdec.ptr314 = getelementptr inbounds i8, ptr %add.ptr313, i64 1
  store ptr %incdec.ptr314, ptr %p, align 8
  %200 = load i8, ptr %add.ptr313, align 1
  %idx.ext316 = zext i8 %200 to i64
  %idx.neg317 = sub nsw i64 0, %idx.ext316
  %add.ptr318 = getelementptr inbounds i8, ptr %199, i64 %idx.neg317
  %201 = load i8, ptr %add.ptr318, align 1
  store i8 %201, ptr %c, align 1
  %conv319 = zext i8 %201 to i32
  %202 = load i32, ptr %x, align 4
  %add320 = add nsw i32 %202, %conv319
  store i32 %add320, ptr %x, align 4
  %conv321 = zext i8 %201 to i32
  %203 = load i32, ptr %y, align 4
  %add322 = add nsw i32 %203, %conv321
  store i32 %add322, ptr %y, align 4
  %204 = load i8, ptr %c, align 1
  %conv323 = zext i8 %204 to i32
  %205 = load i32, ptr %w, align 4
  %sub324 = sub nsw i32 %205, %conv323
  store i32 %sub324, ptr %w, align 4
  %206 = load ptr, ptr %cp, align 8
  %207 = load ptr, ptr %p, align 8
  %incdec.ptr325 = getelementptr inbounds i8, ptr %207, i64 1
  store ptr %incdec.ptr325, ptr %p, align 8
  %208 = load i8, ptr %207, align 1
  %idx.ext327 = zext i8 %208 to i64
  %idx.neg328 = sub nsw i64 0, %idx.ext327
  %add.ptr329 = getelementptr inbounds i8, ptr %206, i64 %idx.neg328
  %209 = load i8, ptr %add.ptr329, align 1
  store i8 %209, ptr %c, align 1
  %conv330 = zext i8 %209 to i32
  %210 = load i32, ptr %y, align 4
  %add331 = add nsw i32 %210, %conv330
  store i32 %add331, ptr %y, align 4
  %211 = load ptr, ptr %cp, align 8
  %212 = load ptr, ptr %p, align 8
  %213 = load i8, ptr %212, align 1
  %idx.ext333 = zext i8 %213 to i64
  %idx.neg334 = sub nsw i64 0, %idx.ext333
  %add.ptr335 = getelementptr inbounds i8, ptr %211, i64 %idx.neg334
  %214 = load i8, ptr %add.ptr335, align 1
  store i8 %214, ptr %c, align 1
  %conv336 = zext i8 %214 to i32
  %215 = load i32, ptr %x, align 4
  %add337 = add nsw i32 %215, %conv336
  store i32 %add337, ptr %x, align 4
  %conv338 = zext i8 %214 to i32
  %216 = load i32, ptr %y, align 4
  %add339 = add nsw i32 %216, %conv338
  store i32 %add339, ptr %y, align 4
  %217 = load i8, ptr %c, align 1
  %conv340 = zext i8 %217 to i32
  %218 = load i32, ptr %w, align 4
  %add341 = add nsw i32 %218, %conv340
  store i32 %add341, ptr %w, align 4
  %cmp342 = icmp eq i32 %add339, 0
  br i1 %cmp342, label %if.end349, label %if.else345

if.else345:                                       ; preds = %if.then259
  %219 = load i32, ptr %x, align 4
  %conv346 = sitofp i32 %219 to float
  %220 = load i32, ptr %y, align 4
  %conv347 = sitofp i32 %220 to float
  %div348 = fdiv float %conv346, %conv347
  br label %if.end349

if.end349:                                        ; preds = %if.then259, %if.else345
  %storemerge3 = phi float [ %div348, %if.else345 ], [ 1.000000e+06, %if.then259 ]
  store float %storemerge3, ptr %z, align 4
  %cmp351 = fcmp olt float %storemerge3, 5.000000e-01
  br i1 %cmp351, label %if.end366, label %if.else354

if.else354:                                       ; preds = %if.end349
  %221 = load float, ptr %z, align 4
  %cmp356 = fcmp ogt float %221, 2.000000e+00
  %222 = load i32, ptr %w, align 4
  %cmp360 = icmp sgt i32 %222, 0
  %.17 = select i1 %cmp360, i32 -1, i32 1
  %storemerge6 = select i1 %cmp356, i32 1, i32 %.17
  %storemerge5 = select i1 %cmp356, i32 0, i32 1
  br label %if.end366

if.end366:                                        ; preds = %if.end349, %if.else354
  %storemerge8 = phi i32 [ %storemerge6, %if.else354 ], [ 0, %if.end349 ]
  %storemerge7 = phi i32 [ %storemerge5, %if.else354 ], [ 1, %if.end349 ]
  store i32 %storemerge8, ptr %a, align 4
  store i32 %storemerge7, ptr %b, align 4
  %223 = load i32, ptr %m, align 4
  %224 = load ptr, ptr %r.addr, align 8
  %225 = load i32, ptr %i, align 4
  %add367 = add nsw i32 %225, %storemerge8
  %226 = load i32, ptr %x_size.addr, align 4
  %mul368 = mul nsw i32 %add367, %226
  %227 = load i32, ptr %j, align 4
  %add369 = add nsw i32 %mul368, %227
  %228 = load i32, ptr %b, align 4
  %add370 = add nsw i32 %add369, %228
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds i32, ptr %224, i64 %idxprom371
  %229 = load i32, ptr %arrayidx372, align 4
  %cmp373 = icmp sgt i32 %223, %229
  br i1 %cmp373, label %land.lhs.true375, label %for.inc392

land.lhs.true375:                                 ; preds = %if.end366
  %230 = load i32, ptr %m, align 4
  %231 = load ptr, ptr %r.addr, align 8
  %232 = load i32, ptr %i, align 4
  %233 = load i32, ptr %a, align 4
  %sub376 = sub nsw i32 %232, %233
  %234 = load i32, ptr %x_size.addr, align 4
  %mul377 = mul nsw i32 %sub376, %234
  %235 = load i32, ptr %j, align 4
  %add378 = add nsw i32 %mul377, %235
  %236 = load i32, ptr %b, align 4
  %sub379 = sub nsw i32 %add378, %236
  %idxprom380 = sext i32 %sub379 to i64
  %arrayidx381 = getelementptr inbounds i32, ptr %231, i64 %idxprom380
  %237 = load i32, ptr %arrayidx381, align 4
  %cmp382.not = icmp slt i32 %230, %237
  br i1 %cmp382.not, label %for.inc392, label %if.then384

if.then384:                                       ; preds = %land.lhs.true375
  %238 = load ptr, ptr %mid.addr, align 8
  %239 = load i32, ptr %i, align 4
  %240 = load i32, ptr %x_size.addr, align 4
  %mul385 = mul nsw i32 %239, %240
  %241 = load i32, ptr %j, align 4
  %add386 = add nsw i32 %mul385, %241
  %idxprom387 = sext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds i8, ptr %238, i64 %idxprom387
  store i8 2, ptr %arrayidx388, align 1
  br label %for.inc392

for.inc392:                                       ; preds = %for.body93, %if.end366, %land.lhs.true375, %if.then384, %if.end256
  %242 = load i32, ptr %j, align 4
  %inc393 = add nsw i32 %242, 1
  br label %for.cond89, !llvm.loop !40

for.inc395:                                       ; preds = %for.cond89
  %243 = load i32, ptr %i, align 4
  %inc396 = add nsw i32 %243, 1
  br label %for.cond84, !llvm.loop !41

for.end397:                                       ; preds = %for.cond84
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @corner_draw(ptr noundef %in, ptr noundef %corner_list, i32 noundef %x_size, i32 noundef %drawing_mode) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %corner_list.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %drawing_mode.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store ptr %corner_list, ptr %corner_list.addr, align 8
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %drawing_mode, ptr %drawing_mode.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %storemerge1 = phi i32 [ %storemerge, %if.end ], [ 0, %entry ]
  store i32 %storemerge1, ptr %n, align 4
  %0 = load ptr, ptr %corner_list.addr, align 8
  %idxprom = sext i32 %storemerge1 to i64
  %info = getelementptr inbounds %struct.anon, ptr %0, i64 %idxprom, i32 2
  %1 = load i32, ptr %info, align 4
  %cmp.not = icmp eq i32 %1, 7
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %drawing_mode.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %in.addr, align 8
  %4 = load ptr, ptr %corner_list.addr, align 8
  %5 = load i32, ptr %n, align 4
  %idxprom2 = sext i32 %5 to i64
  %y = getelementptr inbounds %struct.anon, ptr %4, i64 %idxprom2, i32 1
  %6 = load i32, ptr %y, align 4
  %sub = add nsw i32 %6, -1
  %7 = load i32, ptr %x_size.addr, align 4
  %mul = mul nsw i32 %sub, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %8 = load ptr, ptr %corner_list.addr, align 8
  %9 = load i32, ptr %n, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds %struct.anon, ptr %8, i64 %idxprom4
  %10 = load i32, ptr %arrayidx5, align 4
  %idx.ext6 = sext i32 %10 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr7, i64 -1
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr8, i64 1
  store i8 -1, ptr %add.ptr8, align 1
  %incdec.ptr9 = getelementptr inbounds i8, ptr %incdec.ptr, i64 1
  store i8 -1, ptr %incdec.ptr, align 1
  store i8 -1, ptr %incdec.ptr9, align 1
  %11 = load i32, ptr %x_size.addr, align 4
  %sub10 = add nsw i32 %11, -2
  %idx.ext11 = sext i32 %sub10 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %incdec.ptr9, i64 %idx.ext11
  %incdec.ptr13 = getelementptr inbounds i8, ptr %add.ptr12, i64 1
  store i8 -1, ptr %add.ptr12, align 1
  %incdec.ptr14 = getelementptr inbounds i8, ptr %incdec.ptr13, i64 1
  store i8 0, ptr %incdec.ptr13, align 1
  store i8 -1, ptr %incdec.ptr14, align 1
  %12 = load i32, ptr %x_size.addr, align 4
  %sub15 = add nsw i32 %12, -2
  %idx.ext16 = sext i32 %sub15 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %incdec.ptr14, i64 %idx.ext16
  %incdec.ptr18 = getelementptr inbounds i8, ptr %add.ptr17, i64 1
  store i8 -1, ptr %add.ptr17, align 1
  %incdec.ptr19 = getelementptr inbounds i8, ptr %incdec.ptr18, i64 1
  store i8 -1, ptr %incdec.ptr18, align 1
  store i8 -1, ptr %incdec.ptr19, align 1
  %13 = load i32, ptr %n, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %in.addr, align 8
  %15 = load ptr, ptr %corner_list.addr, align 8
  %16 = load i32, ptr %n, align 4
  %idxprom20 = sext i32 %16 to i64
  %y22 = getelementptr inbounds %struct.anon, ptr %15, i64 %idxprom20, i32 1
  %17 = load i32, ptr %y22, align 4
  %18 = load i32, ptr %x_size.addr, align 4
  %mul23 = mul nsw i32 %17, %18
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %14, i64 %idx.ext24
  %19 = load ptr, ptr %corner_list.addr, align 8
  %20 = load i32, ptr %n, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds %struct.anon, ptr %19, i64 %idxprom26
  %21 = load i32, ptr %arrayidx27, align 4
  %idx.ext29 = sext i32 %21 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idx.ext29
  store i8 0, ptr %add.ptr30, align 1
  %22 = load i32, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi i32 [ %22, %if.else ], [ %13, %if.then ]
  %storemerge = add nsw i32 %storemerge.in, 1
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @susan_corners(ptr noundef %in, ptr noundef %r, ptr noundef %bp, i32 noundef %max_no, ptr noundef %corner_list, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %corner_list.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sq = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cgx = alloca ptr, align 8
  %cgy = alloca ptr, align 8
  %divide = alloca float, align 4
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %max_no, ptr %max_no.addr, align 4
  store ptr %corner_list, ptr %corner_list.addr, align 8
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %x_size, %y_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %0 = load ptr, ptr %r.addr, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %r, i32 noundef 0, i64 noundef %mul1, i64 noundef %1) #9
  %2 = load i32, ptr %x_size.addr, align 4
  %3 = load i32, ptr %y_size.addr, align 4
  %mul2 = mul nsw i32 %2, %3
  %conv3 = sext i32 %mul2 to i64
  %mul4 = shl nsw i64 %conv3, 2
  %call5 = call ptr @malloc(i64 noundef %mul4) #10
  store ptr %call5, ptr %cgx, align 8
  %4 = load i32, ptr %x_size.addr, align 4
  %5 = load i32, ptr %y_size.addr, align 4
  %mul6 = mul nsw i32 %4, %5
  %conv7 = sext i32 %mul6 to i64
  %mul8 = shl nsw i64 %conv7, 2
  %call9 = call ptr @malloc(i64 noundef %mul8) #10
  store ptr %call9, ptr %cgy, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc909, %entry
  %storemerge = phi i32 [ 5, %entry ], [ %inc910, %for.inc909 ]
  store i32 %storemerge, ptr %i, align 4
  %6 = load i32, ptr %y_size.addr, align 4
  %sub = add nsw i32 %6, -5
  %cmp = icmp slt i32 %storemerge, %sub
  br i1 %cmp, label %for.cond11, label %for.end911

for.cond11:                                       ; preds = %for.cond, %for.inc
  %storemerge3 = phi i32 [ %inc, %for.inc ], [ 5, %for.cond ]
  store i32 %storemerge3, ptr %j, align 4
  %7 = load i32, ptr %x_size.addr, align 4
  %sub12 = add nsw i32 %7, -5
  %cmp13 = icmp slt i32 %storemerge3, %sub12
  br i1 %cmp13, label %for.body15, label %for.inc909

for.body15:                                       ; preds = %for.cond11
  store i32 100, ptr %n, align 4
  %8 = load ptr, ptr %in.addr, align 8
  %9 = load i32, ptr %i, align 4
  %sub16 = add nsw i32 %9, -3
  %10 = load i32, ptr %x_size.addr, align 4
  %mul17 = mul nsw i32 %sub16, %10
  %idx.ext = sext i32 %mul17 to i64
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  %11 = load i32, ptr %j, align 4
  %idx.ext18 = sext i32 %11 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext18
  %add.ptr20 = getelementptr inbounds i8, ptr %add.ptr19, i64 -1
  store ptr %add.ptr20, ptr %p, align 8
  %12 = load ptr, ptr %bp.addr, align 8
  %13 = load ptr, ptr %in.addr, align 8
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %x_size.addr, align 4
  %mul21 = mul nsw i32 %14, %15
  %16 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul21, %16
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %idxprom
  %17 = load i8, ptr %arrayidx, align 1
  %idx.ext23 = zext i8 %17 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %12, i64 %idx.ext23
  store ptr %add.ptr24, ptr %cp, align 8
  %18 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %19 = load i8, ptr %18, align 1
  %idx.ext26 = zext i8 %19 to i64
  %idx.neg = sub nsw i64 0, %idx.ext26
  %add.ptr27 = getelementptr inbounds i8, ptr %add.ptr24, i64 %idx.neg
  %20 = load i8, ptr %add.ptr27, align 1
  %conv28 = zext i8 %20 to i32
  %21 = load i32, ptr %n, align 4
  %add29 = add nsw i32 %21, %conv28
  store i32 %add29, ptr %n, align 4
  %22 = load ptr, ptr %cp, align 8
  %23 = load ptr, ptr %p, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr30, ptr %p, align 8
  %24 = load i8, ptr %23, align 1
  %idx.ext32 = zext i8 %24 to i64
  %idx.neg33 = sub nsw i64 0, %idx.ext32
  %add.ptr34 = getelementptr inbounds i8, ptr %22, i64 %idx.neg33
  %25 = load i8, ptr %add.ptr34, align 1
  %conv35 = zext i8 %25 to i32
  %26 = load i32, ptr %n, align 4
  %add36 = add nsw i32 %26, %conv35
  store i32 %add36, ptr %n, align 4
  %27 = load ptr, ptr %cp, align 8
  %28 = load ptr, ptr %p, align 8
  %29 = load i8, ptr %28, align 1
  %idx.ext38 = zext i8 %29 to i64
  %idx.neg39 = sub nsw i64 0, %idx.ext38
  %add.ptr40 = getelementptr inbounds i8, ptr %27, i64 %idx.neg39
  %30 = load i8, ptr %add.ptr40, align 1
  %conv41 = zext i8 %30 to i32
  %31 = load i32, ptr %n, align 4
  %add42 = add nsw i32 %31, %conv41
  store i32 %add42, ptr %n, align 4
  %32 = load i32, ptr %x_size.addr, align 4
  %sub43 = add nsw i32 %32, -3
  %33 = load ptr, ptr %p, align 8
  %idx.ext44 = sext i32 %sub43 to i64
  %add.ptr45 = getelementptr inbounds i8, ptr %33, i64 %idx.ext44
  store ptr %add.ptr45, ptr %p, align 8
  %34 = load ptr, ptr %cp, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %add.ptr45, i64 1
  store ptr %incdec.ptr46, ptr %p, align 8
  %35 = load i8, ptr %add.ptr45, align 1
  %idx.ext48 = zext i8 %35 to i64
  %idx.neg49 = sub nsw i64 0, %idx.ext48
  %add.ptr50 = getelementptr inbounds i8, ptr %34, i64 %idx.neg49
  %36 = load i8, ptr %add.ptr50, align 1
  %conv51 = zext i8 %36 to i32
  %37 = load i32, ptr %n, align 4
  %add52 = add nsw i32 %37, %conv51
  store i32 %add52, ptr %n, align 4
  %38 = load ptr, ptr %cp, align 8
  %39 = load ptr, ptr %p, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr53, ptr %p, align 8
  %40 = load i8, ptr %39, align 1
  %idx.ext55 = zext i8 %40 to i64
  %idx.neg56 = sub nsw i64 0, %idx.ext55
  %add.ptr57 = getelementptr inbounds i8, ptr %38, i64 %idx.neg56
  %41 = load i8, ptr %add.ptr57, align 1
  %conv58 = zext i8 %41 to i32
  %42 = load i32, ptr %n, align 4
  %add59 = add nsw i32 %42, %conv58
  store i32 %add59, ptr %n, align 4
  %43 = load ptr, ptr %cp, align 8
  %44 = load ptr, ptr %p, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr60, ptr %p, align 8
  %45 = load i8, ptr %44, align 1
  %idx.ext62 = zext i8 %45 to i64
  %idx.neg63 = sub nsw i64 0, %idx.ext62
  %add.ptr64 = getelementptr inbounds i8, ptr %43, i64 %idx.neg63
  %46 = load i8, ptr %add.ptr64, align 1
  %conv65 = zext i8 %46 to i32
  %47 = load i32, ptr %n, align 4
  %add66 = add nsw i32 %47, %conv65
  store i32 %add66, ptr %n, align 4
  %48 = load ptr, ptr %cp, align 8
  %49 = load ptr, ptr %p, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %incdec.ptr67, ptr %p, align 8
  %50 = load i8, ptr %49, align 1
  %idx.ext69 = zext i8 %50 to i64
  %idx.neg70 = sub nsw i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %48, i64 %idx.neg70
  %51 = load i8, ptr %add.ptr71, align 1
  %conv72 = zext i8 %51 to i32
  %52 = load i32, ptr %n, align 4
  %add73 = add nsw i32 %52, %conv72
  store i32 %add73, ptr %n, align 4
  %53 = load ptr, ptr %cp, align 8
  %54 = load ptr, ptr %p, align 8
  %55 = load i8, ptr %54, align 1
  %idx.ext75 = zext i8 %55 to i64
  %idx.neg76 = sub nsw i64 0, %idx.ext75
  %add.ptr77 = getelementptr inbounds i8, ptr %53, i64 %idx.neg76
  %56 = load i8, ptr %add.ptr77, align 1
  %conv78 = zext i8 %56 to i32
  %57 = load i32, ptr %n, align 4
  %add79 = add nsw i32 %57, %conv78
  store i32 %add79, ptr %n, align 4
  %58 = load i32, ptr %x_size.addr, align 4
  %sub80 = add nsw i32 %58, -5
  %59 = load ptr, ptr %p, align 8
  %idx.ext81 = sext i32 %sub80 to i64
  %add.ptr82 = getelementptr inbounds i8, ptr %59, i64 %idx.ext81
  store ptr %add.ptr82, ptr %p, align 8
  %60 = load ptr, ptr %cp, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %add.ptr82, i64 1
  store ptr %incdec.ptr83, ptr %p, align 8
  %61 = load i8, ptr %add.ptr82, align 1
  %idx.ext85 = zext i8 %61 to i64
  %idx.neg86 = sub nsw i64 0, %idx.ext85
  %add.ptr87 = getelementptr inbounds i8, ptr %60, i64 %idx.neg86
  %62 = load i8, ptr %add.ptr87, align 1
  %conv88 = zext i8 %62 to i32
  %63 = load i32, ptr %n, align 4
  %add89 = add nsw i32 %63, %conv88
  store i32 %add89, ptr %n, align 4
  %64 = load ptr, ptr %cp, align 8
  %65 = load ptr, ptr %p, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %incdec.ptr90, ptr %p, align 8
  %66 = load i8, ptr %65, align 1
  %idx.ext92 = zext i8 %66 to i64
  %idx.neg93 = sub nsw i64 0, %idx.ext92
  %add.ptr94 = getelementptr inbounds i8, ptr %64, i64 %idx.neg93
  %67 = load i8, ptr %add.ptr94, align 1
  %conv95 = zext i8 %67 to i32
  %68 = load i32, ptr %n, align 4
  %add96 = add nsw i32 %68, %conv95
  store i32 %add96, ptr %n, align 4
  %69 = load ptr, ptr %cp, align 8
  %70 = load ptr, ptr %p, align 8
  %incdec.ptr97 = getelementptr inbounds i8, ptr %70, i64 1
  store ptr %incdec.ptr97, ptr %p, align 8
  %71 = load i8, ptr %70, align 1
  %idx.ext99 = zext i8 %71 to i64
  %idx.neg100 = sub nsw i64 0, %idx.ext99
  %add.ptr101 = getelementptr inbounds i8, ptr %69, i64 %idx.neg100
  %72 = load i8, ptr %add.ptr101, align 1
  %conv102 = zext i8 %72 to i32
  %73 = load i32, ptr %n, align 4
  %add103 = add nsw i32 %73, %conv102
  store i32 %add103, ptr %n, align 4
  %74 = load ptr, ptr %cp, align 8
  %75 = load ptr, ptr %p, align 8
  %incdec.ptr104 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %incdec.ptr104, ptr %p, align 8
  %76 = load i8, ptr %75, align 1
  %idx.ext106 = zext i8 %76 to i64
  %idx.neg107 = sub nsw i64 0, %idx.ext106
  %add.ptr108 = getelementptr inbounds i8, ptr %74, i64 %idx.neg107
  %77 = load i8, ptr %add.ptr108, align 1
  %conv109 = zext i8 %77 to i32
  %78 = load i32, ptr %n, align 4
  %add110 = add nsw i32 %78, %conv109
  store i32 %add110, ptr %n, align 4
  %79 = load ptr, ptr %cp, align 8
  %80 = load ptr, ptr %p, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %80, i64 1
  store ptr %incdec.ptr111, ptr %p, align 8
  %81 = load i8, ptr %80, align 1
  %idx.ext113 = zext i8 %81 to i64
  %idx.neg114 = sub nsw i64 0, %idx.ext113
  %add.ptr115 = getelementptr inbounds i8, ptr %79, i64 %idx.neg114
  %82 = load i8, ptr %add.ptr115, align 1
  %conv116 = zext i8 %82 to i32
  %83 = load i32, ptr %n, align 4
  %add117 = add nsw i32 %83, %conv116
  store i32 %add117, ptr %n, align 4
  %84 = load ptr, ptr %cp, align 8
  %85 = load ptr, ptr %p, align 8
  %incdec.ptr118 = getelementptr inbounds i8, ptr %85, i64 1
  store ptr %incdec.ptr118, ptr %p, align 8
  %86 = load i8, ptr %85, align 1
  %idx.ext120 = zext i8 %86 to i64
  %idx.neg121 = sub nsw i64 0, %idx.ext120
  %add.ptr122 = getelementptr inbounds i8, ptr %84, i64 %idx.neg121
  %87 = load i8, ptr %add.ptr122, align 1
  %conv123 = zext i8 %87 to i32
  %88 = load i32, ptr %n, align 4
  %add124 = add nsw i32 %88, %conv123
  store i32 %add124, ptr %n, align 4
  %89 = load ptr, ptr %cp, align 8
  %90 = load ptr, ptr %p, align 8
  %91 = load i8, ptr %90, align 1
  %idx.ext126 = zext i8 %91 to i64
  %idx.neg127 = sub nsw i64 0, %idx.ext126
  %add.ptr128 = getelementptr inbounds i8, ptr %89, i64 %idx.neg127
  %92 = load i8, ptr %add.ptr128, align 1
  %conv129 = zext i8 %92 to i32
  %93 = load i32, ptr %n, align 4
  %add130 = add nsw i32 %93, %conv129
  store i32 %add130, ptr %n, align 4
  %94 = load i32, ptr %x_size.addr, align 4
  %sub131 = add nsw i32 %94, -6
  %95 = load ptr, ptr %p, align 8
  %idx.ext132 = sext i32 %sub131 to i64
  %add.ptr133 = getelementptr inbounds i8, ptr %95, i64 %idx.ext132
  store ptr %add.ptr133, ptr %p, align 8
  %96 = load ptr, ptr %cp, align 8
  %incdec.ptr134 = getelementptr inbounds i8, ptr %add.ptr133, i64 1
  store ptr %incdec.ptr134, ptr %p, align 8
  %97 = load i8, ptr %add.ptr133, align 1
  %idx.ext136 = zext i8 %97 to i64
  %idx.neg137 = sub nsw i64 0, %idx.ext136
  %add.ptr138 = getelementptr inbounds i8, ptr %96, i64 %idx.neg137
  %98 = load i8, ptr %add.ptr138, align 1
  %conv139 = zext i8 %98 to i32
  %99 = load i32, ptr %n, align 4
  %add140 = add nsw i32 %99, %conv139
  store i32 %add140, ptr %n, align 4
  %100 = load ptr, ptr %cp, align 8
  %101 = load ptr, ptr %p, align 8
  %incdec.ptr141 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %incdec.ptr141, ptr %p, align 8
  %102 = load i8, ptr %101, align 1
  %idx.ext143 = zext i8 %102 to i64
  %idx.neg144 = sub nsw i64 0, %idx.ext143
  %add.ptr145 = getelementptr inbounds i8, ptr %100, i64 %idx.neg144
  %103 = load i8, ptr %add.ptr145, align 1
  %conv146 = zext i8 %103 to i32
  %104 = load i32, ptr %n, align 4
  %add147 = add nsw i32 %104, %conv146
  store i32 %add147, ptr %n, align 4
  %105 = load ptr, ptr %cp, align 8
  %106 = load ptr, ptr %p, align 8
  %107 = load i8, ptr %106, align 1
  %idx.ext149 = zext i8 %107 to i64
  %idx.neg150 = sub nsw i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %105, i64 %idx.neg150
  %108 = load i8, ptr %add.ptr151, align 1
  %conv152 = zext i8 %108 to i32
  %109 = load i32, ptr %n, align 4
  %add153 = add nsw i32 %109, %conv152
  store i32 %add153, ptr %n, align 4
  %110 = load i32, ptr %max_no.addr, align 4
  %cmp154 = icmp slt i32 %add153, %110
  br i1 %cmp154, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body15
  %111 = load ptr, ptr %p, align 8
  %add.ptr156 = getelementptr inbounds i8, ptr %111, i64 2
  store ptr %add.ptr156, ptr %p, align 8
  %112 = load ptr, ptr %cp, align 8
  %incdec.ptr157 = getelementptr inbounds i8, ptr %111, i64 3
  store ptr %incdec.ptr157, ptr %p, align 8
  %113 = load i8, ptr %add.ptr156, align 1
  %idx.ext159 = zext i8 %113 to i64
  %idx.neg160 = sub nsw i64 0, %idx.ext159
  %add.ptr161 = getelementptr inbounds i8, ptr %112, i64 %idx.neg160
  %114 = load i8, ptr %add.ptr161, align 1
  %conv162 = zext i8 %114 to i32
  %115 = load i32, ptr %n, align 4
  %add163 = add nsw i32 %115, %conv162
  store i32 %add163, ptr %n, align 4
  %116 = load i32, ptr %max_no.addr, align 4
  %cmp164 = icmp slt i32 %add163, %116
  br i1 %cmp164, label %if.then166, label %for.inc

if.then166:                                       ; preds = %if.then
  %117 = load ptr, ptr %cp, align 8
  %118 = load ptr, ptr %p, align 8
  %incdec.ptr167 = getelementptr inbounds i8, ptr %118, i64 1
  store ptr %incdec.ptr167, ptr %p, align 8
  %119 = load i8, ptr %118, align 1
  %idx.ext169 = zext i8 %119 to i64
  %idx.neg170 = sub nsw i64 0, %idx.ext169
  %add.ptr171 = getelementptr inbounds i8, ptr %117, i64 %idx.neg170
  %120 = load i8, ptr %add.ptr171, align 1
  %conv172 = zext i8 %120 to i32
  %121 = load i32, ptr %n, align 4
  %add173 = add nsw i32 %121, %conv172
  store i32 %add173, ptr %n, align 4
  %122 = load i32, ptr %max_no.addr, align 4
  %cmp174 = icmp slt i32 %add173, %122
  br i1 %cmp174, label %if.then176, label %for.inc

if.then176:                                       ; preds = %if.then166
  %123 = load ptr, ptr %cp, align 8
  %124 = load ptr, ptr %p, align 8
  %125 = load i8, ptr %124, align 1
  %idx.ext178 = zext i8 %125 to i64
  %idx.neg179 = sub nsw i64 0, %idx.ext178
  %add.ptr180 = getelementptr inbounds i8, ptr %123, i64 %idx.neg179
  %126 = load i8, ptr %add.ptr180, align 1
  %conv181 = zext i8 %126 to i32
  %127 = load i32, ptr %n, align 4
  %add182 = add nsw i32 %127, %conv181
  store i32 %add182, ptr %n, align 4
  %128 = load i32, ptr %max_no.addr, align 4
  %cmp183 = icmp slt i32 %add182, %128
  br i1 %cmp183, label %if.then185, label %for.inc

if.then185:                                       ; preds = %if.then176
  %129 = load i32, ptr %x_size.addr, align 4
  %sub186 = add nsw i32 %129, -6
  %130 = load ptr, ptr %p, align 8
  %idx.ext187 = sext i32 %sub186 to i64
  %add.ptr188 = getelementptr inbounds i8, ptr %130, i64 %idx.ext187
  store ptr %add.ptr188, ptr %p, align 8
  %131 = load ptr, ptr %cp, align 8
  %incdec.ptr189 = getelementptr inbounds i8, ptr %add.ptr188, i64 1
  store ptr %incdec.ptr189, ptr %p, align 8
  %132 = load i8, ptr %add.ptr188, align 1
  %idx.ext191 = zext i8 %132 to i64
  %idx.neg192 = sub nsw i64 0, %idx.ext191
  %add.ptr193 = getelementptr inbounds i8, ptr %131, i64 %idx.neg192
  %133 = load i8, ptr %add.ptr193, align 1
  %conv194 = zext i8 %133 to i32
  %134 = load i32, ptr %n, align 4
  %add195 = add nsw i32 %134, %conv194
  store i32 %add195, ptr %n, align 4
  %135 = load i32, ptr %max_no.addr, align 4
  %cmp196 = icmp slt i32 %add195, %135
  br i1 %cmp196, label %if.then198, label %for.inc

if.then198:                                       ; preds = %if.then185
  %136 = load ptr, ptr %cp, align 8
  %137 = load ptr, ptr %p, align 8
  %incdec.ptr199 = getelementptr inbounds i8, ptr %137, i64 1
  store ptr %incdec.ptr199, ptr %p, align 8
  %138 = load i8, ptr %137, align 1
  %idx.ext201 = zext i8 %138 to i64
  %idx.neg202 = sub nsw i64 0, %idx.ext201
  %add.ptr203 = getelementptr inbounds i8, ptr %136, i64 %idx.neg202
  %139 = load i8, ptr %add.ptr203, align 1
  %conv204 = zext i8 %139 to i32
  %140 = load i32, ptr %n, align 4
  %add205 = add nsw i32 %140, %conv204
  store i32 %add205, ptr %n, align 4
  %141 = load i32, ptr %max_no.addr, align 4
  %cmp206 = icmp slt i32 %add205, %141
  br i1 %cmp206, label %if.then208, label %for.inc

if.then208:                                       ; preds = %if.then198
  %142 = load ptr, ptr %cp, align 8
  %143 = load ptr, ptr %p, align 8
  %incdec.ptr209 = getelementptr inbounds i8, ptr %143, i64 1
  store ptr %incdec.ptr209, ptr %p, align 8
  %144 = load i8, ptr %143, align 1
  %idx.ext211 = zext i8 %144 to i64
  %idx.neg212 = sub nsw i64 0, %idx.ext211
  %add.ptr213 = getelementptr inbounds i8, ptr %142, i64 %idx.neg212
  %145 = load i8, ptr %add.ptr213, align 1
  %conv214 = zext i8 %145 to i32
  %146 = load i32, ptr %n, align 4
  %add215 = add nsw i32 %146, %conv214
  store i32 %add215, ptr %n, align 4
  %147 = load i32, ptr %max_no.addr, align 4
  %cmp216 = icmp slt i32 %add215, %147
  br i1 %cmp216, label %if.then218, label %for.inc

if.then218:                                       ; preds = %if.then208
  %148 = load ptr, ptr %cp, align 8
  %149 = load ptr, ptr %p, align 8
  %incdec.ptr219 = getelementptr inbounds i8, ptr %149, i64 1
  store ptr %incdec.ptr219, ptr %p, align 8
  %150 = load i8, ptr %149, align 1
  %idx.ext221 = zext i8 %150 to i64
  %idx.neg222 = sub nsw i64 0, %idx.ext221
  %add.ptr223 = getelementptr inbounds i8, ptr %148, i64 %idx.neg222
  %151 = load i8, ptr %add.ptr223, align 1
  %conv224 = zext i8 %151 to i32
  %152 = load i32, ptr %n, align 4
  %add225 = add nsw i32 %152, %conv224
  store i32 %add225, ptr %n, align 4
  %153 = load i32, ptr %max_no.addr, align 4
  %cmp226 = icmp slt i32 %add225, %153
  br i1 %cmp226, label %if.then228, label %for.inc

if.then228:                                       ; preds = %if.then218
  %154 = load ptr, ptr %cp, align 8
  %155 = load ptr, ptr %p, align 8
  %incdec.ptr229 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %incdec.ptr229, ptr %p, align 8
  %156 = load i8, ptr %155, align 1
  %idx.ext231 = zext i8 %156 to i64
  %idx.neg232 = sub nsw i64 0, %idx.ext231
  %add.ptr233 = getelementptr inbounds i8, ptr %154, i64 %idx.neg232
  %157 = load i8, ptr %add.ptr233, align 1
  %conv234 = zext i8 %157 to i32
  %158 = load i32, ptr %n, align 4
  %add235 = add nsw i32 %158, %conv234
  store i32 %add235, ptr %n, align 4
  %159 = load i32, ptr %max_no.addr, align 4
  %cmp236 = icmp slt i32 %add235, %159
  br i1 %cmp236, label %if.then238, label %for.inc

if.then238:                                       ; preds = %if.then228
  %160 = load ptr, ptr %cp, align 8
  %161 = load ptr, ptr %p, align 8
  %incdec.ptr239 = getelementptr inbounds i8, ptr %161, i64 1
  store ptr %incdec.ptr239, ptr %p, align 8
  %162 = load i8, ptr %161, align 1
  %idx.ext241 = zext i8 %162 to i64
  %idx.neg242 = sub nsw i64 0, %idx.ext241
  %add.ptr243 = getelementptr inbounds i8, ptr %160, i64 %idx.neg242
  %163 = load i8, ptr %add.ptr243, align 1
  %conv244 = zext i8 %163 to i32
  %164 = load i32, ptr %n, align 4
  %add245 = add nsw i32 %164, %conv244
  store i32 %add245, ptr %n, align 4
  %165 = load i32, ptr %max_no.addr, align 4
  %cmp246 = icmp slt i32 %add245, %165
  br i1 %cmp246, label %if.then248, label %for.inc

if.then248:                                       ; preds = %if.then238
  %166 = load ptr, ptr %cp, align 8
  %167 = load ptr, ptr %p, align 8
  %168 = load i8, ptr %167, align 1
  %idx.ext250 = zext i8 %168 to i64
  %idx.neg251 = sub nsw i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %166, i64 %idx.neg251
  %169 = load i8, ptr %add.ptr252, align 1
  %conv253 = zext i8 %169 to i32
  %170 = load i32, ptr %n, align 4
  %add254 = add nsw i32 %170, %conv253
  store i32 %add254, ptr %n, align 4
  %171 = load i32, ptr %max_no.addr, align 4
  %cmp255 = icmp slt i32 %add254, %171
  br i1 %cmp255, label %if.then257, label %for.inc

if.then257:                                       ; preds = %if.then248
  %172 = load i32, ptr %x_size.addr, align 4
  %sub258 = add nsw i32 %172, -5
  %173 = load ptr, ptr %p, align 8
  %idx.ext259 = sext i32 %sub258 to i64
  %add.ptr260 = getelementptr inbounds i8, ptr %173, i64 %idx.ext259
  store ptr %add.ptr260, ptr %p, align 8
  %174 = load ptr, ptr %cp, align 8
  %incdec.ptr261 = getelementptr inbounds i8, ptr %add.ptr260, i64 1
  store ptr %incdec.ptr261, ptr %p, align 8
  %175 = load i8, ptr %add.ptr260, align 1
  %idx.ext263 = zext i8 %175 to i64
  %idx.neg264 = sub nsw i64 0, %idx.ext263
  %add.ptr265 = getelementptr inbounds i8, ptr %174, i64 %idx.neg264
  %176 = load i8, ptr %add.ptr265, align 1
  %conv266 = zext i8 %176 to i32
  %177 = load i32, ptr %n, align 4
  %add267 = add nsw i32 %177, %conv266
  store i32 %add267, ptr %n, align 4
  %178 = load i32, ptr %max_no.addr, align 4
  %cmp268 = icmp slt i32 %add267, %178
  br i1 %cmp268, label %if.then270, label %for.inc

if.then270:                                       ; preds = %if.then257
  %179 = load ptr, ptr %cp, align 8
  %180 = load ptr, ptr %p, align 8
  %incdec.ptr271 = getelementptr inbounds i8, ptr %180, i64 1
  store ptr %incdec.ptr271, ptr %p, align 8
  %181 = load i8, ptr %180, align 1
  %idx.ext273 = zext i8 %181 to i64
  %idx.neg274 = sub nsw i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %179, i64 %idx.neg274
  %182 = load i8, ptr %add.ptr275, align 1
  %conv276 = zext i8 %182 to i32
  %183 = load i32, ptr %n, align 4
  %add277 = add nsw i32 %183, %conv276
  store i32 %add277, ptr %n, align 4
  %184 = load i32, ptr %max_no.addr, align 4
  %cmp278 = icmp slt i32 %add277, %184
  br i1 %cmp278, label %if.then280, label %for.inc

if.then280:                                       ; preds = %if.then270
  %185 = load ptr, ptr %cp, align 8
  %186 = load ptr, ptr %p, align 8
  %incdec.ptr281 = getelementptr inbounds i8, ptr %186, i64 1
  store ptr %incdec.ptr281, ptr %p, align 8
  %187 = load i8, ptr %186, align 1
  %idx.ext283 = zext i8 %187 to i64
  %idx.neg284 = sub nsw i64 0, %idx.ext283
  %add.ptr285 = getelementptr inbounds i8, ptr %185, i64 %idx.neg284
  %188 = load i8, ptr %add.ptr285, align 1
  %conv286 = zext i8 %188 to i32
  %189 = load i32, ptr %n, align 4
  %add287 = add nsw i32 %189, %conv286
  store i32 %add287, ptr %n, align 4
  %190 = load i32, ptr %max_no.addr, align 4
  %cmp288 = icmp slt i32 %add287, %190
  br i1 %cmp288, label %if.then290, label %for.inc

if.then290:                                       ; preds = %if.then280
  %191 = load ptr, ptr %cp, align 8
  %192 = load ptr, ptr %p, align 8
  %incdec.ptr291 = getelementptr inbounds i8, ptr %192, i64 1
  store ptr %incdec.ptr291, ptr %p, align 8
  %193 = load i8, ptr %192, align 1
  %idx.ext293 = zext i8 %193 to i64
  %idx.neg294 = sub nsw i64 0, %idx.ext293
  %add.ptr295 = getelementptr inbounds i8, ptr %191, i64 %idx.neg294
  %194 = load i8, ptr %add.ptr295, align 1
  %conv296 = zext i8 %194 to i32
  %195 = load i32, ptr %n, align 4
  %add297 = add nsw i32 %195, %conv296
  store i32 %add297, ptr %n, align 4
  %196 = load i32, ptr %max_no.addr, align 4
  %cmp298 = icmp slt i32 %add297, %196
  br i1 %cmp298, label %if.then300, label %for.inc

if.then300:                                       ; preds = %if.then290
  %197 = load ptr, ptr %cp, align 8
  %198 = load ptr, ptr %p, align 8
  %199 = load i8, ptr %198, align 1
  %idx.ext302 = zext i8 %199 to i64
  %idx.neg303 = sub nsw i64 0, %idx.ext302
  %add.ptr304 = getelementptr inbounds i8, ptr %197, i64 %idx.neg303
  %200 = load i8, ptr %add.ptr304, align 1
  %conv305 = zext i8 %200 to i32
  %201 = load i32, ptr %n, align 4
  %add306 = add nsw i32 %201, %conv305
  store i32 %add306, ptr %n, align 4
  %202 = load i32, ptr %max_no.addr, align 4
  %cmp307 = icmp slt i32 %add306, %202
  br i1 %cmp307, label %if.then309, label %for.inc

if.then309:                                       ; preds = %if.then300
  %203 = load i32, ptr %x_size.addr, align 4
  %sub310 = add nsw i32 %203, -3
  %204 = load ptr, ptr %p, align 8
  %idx.ext311 = sext i32 %sub310 to i64
  %add.ptr312 = getelementptr inbounds i8, ptr %204, i64 %idx.ext311
  store ptr %add.ptr312, ptr %p, align 8
  %205 = load ptr, ptr %cp, align 8
  %incdec.ptr313 = getelementptr inbounds i8, ptr %add.ptr312, i64 1
  store ptr %incdec.ptr313, ptr %p, align 8
  %206 = load i8, ptr %add.ptr312, align 1
  %idx.ext315 = zext i8 %206 to i64
  %idx.neg316 = sub nsw i64 0, %idx.ext315
  %add.ptr317 = getelementptr inbounds i8, ptr %205, i64 %idx.neg316
  %207 = load i8, ptr %add.ptr317, align 1
  %conv318 = zext i8 %207 to i32
  %208 = load i32, ptr %n, align 4
  %add319 = add nsw i32 %208, %conv318
  store i32 %add319, ptr %n, align 4
  %209 = load i32, ptr %max_no.addr, align 4
  %cmp320 = icmp slt i32 %add319, %209
  br i1 %cmp320, label %if.then322, label %for.inc

if.then322:                                       ; preds = %if.then309
  %210 = load ptr, ptr %cp, align 8
  %211 = load ptr, ptr %p, align 8
  %incdec.ptr323 = getelementptr inbounds i8, ptr %211, i64 1
  store ptr %incdec.ptr323, ptr %p, align 8
  %212 = load i8, ptr %211, align 1
  %idx.ext325 = zext i8 %212 to i64
  %idx.neg326 = sub nsw i64 0, %idx.ext325
  %add.ptr327 = getelementptr inbounds i8, ptr %210, i64 %idx.neg326
  %213 = load i8, ptr %add.ptr327, align 1
  %conv328 = zext i8 %213 to i32
  %214 = load i32, ptr %n, align 4
  %add329 = add nsw i32 %214, %conv328
  store i32 %add329, ptr %n, align 4
  %215 = load i32, ptr %max_no.addr, align 4
  %cmp330 = icmp slt i32 %add329, %215
  br i1 %cmp330, label %if.then332, label %for.inc

if.then332:                                       ; preds = %if.then322
  %216 = load ptr, ptr %cp, align 8
  %217 = load ptr, ptr %p, align 8
  %218 = load i8, ptr %217, align 1
  %idx.ext334 = zext i8 %218 to i64
  %idx.neg335 = sub nsw i64 0, %idx.ext334
  %add.ptr336 = getelementptr inbounds i8, ptr %216, i64 %idx.neg335
  %219 = load i8, ptr %add.ptr336, align 1
  %conv337 = zext i8 %219 to i32
  %220 = load i32, ptr %n, align 4
  %add338 = add nsw i32 %220, %conv337
  store i32 %add338, ptr %n, align 4
  %221 = load i32, ptr %max_no.addr, align 4
  %cmp339 = icmp slt i32 %add338, %221
  br i1 %cmp339, label %if.then341, label %for.inc

if.then341:                                       ; preds = %if.then332
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  %222 = load ptr, ptr %in.addr, align 8
  %223 = load i32, ptr %i, align 4
  %sub342 = add nsw i32 %223, -3
  %224 = load i32, ptr %x_size.addr, align 4
  %mul343 = mul nsw i32 %sub342, %224
  %idx.ext344 = sext i32 %mul343 to i64
  %add.ptr345 = getelementptr inbounds i8, ptr %222, i64 %idx.ext344
  %225 = load i32, ptr %j, align 4
  %idx.ext346 = sext i32 %225 to i64
  %add.ptr347 = getelementptr inbounds i8, ptr %add.ptr345, i64 %idx.ext346
  %add.ptr348 = getelementptr inbounds i8, ptr %add.ptr347, i64 -1
  store ptr %add.ptr348, ptr %p, align 8
  %226 = load ptr, ptr %cp, align 8
  %incdec.ptr349 = getelementptr inbounds i8, ptr %add.ptr348, i64 1
  store ptr %incdec.ptr349, ptr %p, align 8
  %227 = load i8, ptr %add.ptr348, align 1
  %idx.ext351 = zext i8 %227 to i64
  %idx.neg352 = sub nsw i64 0, %idx.ext351
  %add.ptr353 = getelementptr inbounds i8, ptr %226, i64 %idx.neg352
  %228 = load i8, ptr %add.ptr353, align 1
  %conv354 = zext i8 %228 to i32
  %229 = load i32, ptr %x, align 4
  %sub355 = sub nsw i32 %229, %conv354
  store i32 %sub355, ptr %x, align 4
  %conv356 = zext i8 %228 to i32
  %mul357.neg = mul nsw i32 %conv356, -3
  %230 = load i32, ptr %y, align 4
  %sub358 = add i32 %mul357.neg, %230
  store i32 %sub358, ptr %y, align 4
  %231 = load ptr, ptr %cp, align 8
  %232 = load ptr, ptr %p, align 8
  %incdec.ptr359 = getelementptr inbounds i8, ptr %232, i64 1
  store ptr %incdec.ptr359, ptr %p, align 8
  %233 = load i8, ptr %232, align 1
  %idx.ext361 = zext i8 %233 to i64
  %idx.neg362 = sub nsw i64 0, %idx.ext361
  %add.ptr363 = getelementptr inbounds i8, ptr %231, i64 %idx.neg362
  %234 = load i8, ptr %add.ptr363, align 1
  %conv364 = zext i8 %234 to i32
  %mul365.neg = mul nsw i32 %conv364, -3
  %235 = load i32, ptr %y, align 4
  %sub366 = add i32 %mul365.neg, %235
  store i32 %sub366, ptr %y, align 4
  %236 = load ptr, ptr %cp, align 8
  %237 = load ptr, ptr %p, align 8
  %238 = load i8, ptr %237, align 1
  %idx.ext368 = zext i8 %238 to i64
  %idx.neg369 = sub nsw i64 0, %idx.ext368
  %add.ptr370 = getelementptr inbounds i8, ptr %236, i64 %idx.neg369
  %239 = load i8, ptr %add.ptr370, align 1
  %conv371 = zext i8 %239 to i32
  %240 = load i32, ptr %x, align 4
  %add372 = add nsw i32 %240, %conv371
  store i32 %add372, ptr %x, align 4
  %conv373 = zext i8 %239 to i32
  %mul374.neg = mul nsw i32 %conv373, -3
  %241 = load i32, ptr %y, align 4
  %sub375 = add i32 %mul374.neg, %241
  store i32 %sub375, ptr %y, align 4
  %242 = load i32, ptr %x_size.addr, align 4
  %sub376 = add nsw i32 %242, -3
  %243 = load ptr, ptr %p, align 8
  %idx.ext377 = sext i32 %sub376 to i64
  %add.ptr378 = getelementptr inbounds i8, ptr %243, i64 %idx.ext377
  store ptr %add.ptr378, ptr %p, align 8
  %244 = load ptr, ptr %cp, align 8
  %incdec.ptr379 = getelementptr inbounds i8, ptr %add.ptr378, i64 1
  store ptr %incdec.ptr379, ptr %p, align 8
  %245 = load i8, ptr %add.ptr378, align 1
  %idx.ext381 = zext i8 %245 to i64
  %idx.neg382 = sub nsw i64 0, %idx.ext381
  %add.ptr383 = getelementptr inbounds i8, ptr %244, i64 %idx.neg382
  %246 = load i8, ptr %add.ptr383, align 1
  %conv384 = zext i8 %246 to i32
  %mul385.neg = mul nsw i32 %conv384, -2
  %247 = load i32, ptr %x, align 4
  %sub386 = add i32 %mul385.neg, %247
  store i32 %sub386, ptr %x, align 4
  %conv387 = zext i8 %246 to i32
  %mul388.neg = mul nsw i32 %conv387, -2
  %248 = load i32, ptr %y, align 4
  %sub389 = add i32 %mul388.neg, %248
  store i32 %sub389, ptr %y, align 4
  %249 = load ptr, ptr %cp, align 8
  %250 = load ptr, ptr %p, align 8
  %incdec.ptr390 = getelementptr inbounds i8, ptr %250, i64 1
  store ptr %incdec.ptr390, ptr %p, align 8
  %251 = load i8, ptr %250, align 1
  %idx.ext392 = zext i8 %251 to i64
  %idx.neg393 = sub nsw i64 0, %idx.ext392
  %add.ptr394 = getelementptr inbounds i8, ptr %249, i64 %idx.neg393
  %252 = load i8, ptr %add.ptr394, align 1
  %conv395 = zext i8 %252 to i32
  %253 = load i32, ptr %x, align 4
  %sub396 = sub nsw i32 %253, %conv395
  store i32 %sub396, ptr %x, align 4
  %conv397 = zext i8 %252 to i32
  %mul398.neg = mul nsw i32 %conv397, -2
  %254 = load i32, ptr %y, align 4
  %sub399 = add i32 %mul398.neg, %254
  store i32 %sub399, ptr %y, align 4
  %255 = load ptr, ptr %cp, align 8
  %256 = load ptr, ptr %p, align 8
  %incdec.ptr400 = getelementptr inbounds i8, ptr %256, i64 1
  store ptr %incdec.ptr400, ptr %p, align 8
  %257 = load i8, ptr %256, align 1
  %idx.ext402 = zext i8 %257 to i64
  %idx.neg403 = sub nsw i64 0, %idx.ext402
  %add.ptr404 = getelementptr inbounds i8, ptr %255, i64 %idx.neg403
  %258 = load i8, ptr %add.ptr404, align 1
  %conv405 = zext i8 %258 to i32
  %mul406.neg = mul nsw i32 %conv405, -2
  %259 = load i32, ptr %y, align 4
  %sub407 = add i32 %mul406.neg, %259
  store i32 %sub407, ptr %y, align 4
  %260 = load ptr, ptr %cp, align 8
  %261 = load ptr, ptr %p, align 8
  %incdec.ptr408 = getelementptr inbounds i8, ptr %261, i64 1
  store ptr %incdec.ptr408, ptr %p, align 8
  %262 = load i8, ptr %261, align 1
  %idx.ext410 = zext i8 %262 to i64
  %idx.neg411 = sub nsw i64 0, %idx.ext410
  %add.ptr412 = getelementptr inbounds i8, ptr %260, i64 %idx.neg411
  %263 = load i8, ptr %add.ptr412, align 1
  %conv413 = zext i8 %263 to i32
  %264 = load i32, ptr %x, align 4
  %add414 = add nsw i32 %264, %conv413
  store i32 %add414, ptr %x, align 4
  %conv415 = zext i8 %263 to i32
  %mul416.neg = mul nsw i32 %conv415, -2
  %265 = load i32, ptr %y, align 4
  %sub417 = add i32 %mul416.neg, %265
  store i32 %sub417, ptr %y, align 4
  %266 = load ptr, ptr %cp, align 8
  %267 = load ptr, ptr %p, align 8
  %268 = load i8, ptr %267, align 1
  %idx.ext419 = zext i8 %268 to i64
  %idx.neg420 = sub nsw i64 0, %idx.ext419
  %add.ptr421 = getelementptr inbounds i8, ptr %266, i64 %idx.neg420
  %269 = load i8, ptr %add.ptr421, align 1
  %conv422 = zext i8 %269 to i32
  %mul423 = shl nuw nsw i32 %conv422, 1
  %270 = load i32, ptr %x, align 4
  %add424 = add nsw i32 %270, %mul423
  store i32 %add424, ptr %x, align 4
  %conv425 = zext i8 %269 to i32
  %mul426.neg = mul nsw i32 %conv425, -2
  %271 = load i32, ptr %y, align 4
  %sub427 = add i32 %mul426.neg, %271
  store i32 %sub427, ptr %y, align 4
  %272 = load i32, ptr %x_size.addr, align 4
  %sub428 = add nsw i32 %272, -5
  %273 = load ptr, ptr %p, align 8
  %idx.ext429 = sext i32 %sub428 to i64
  %add.ptr430 = getelementptr inbounds i8, ptr %273, i64 %idx.ext429
  store ptr %add.ptr430, ptr %p, align 8
  %274 = load ptr, ptr %cp, align 8
  %incdec.ptr431 = getelementptr inbounds i8, ptr %add.ptr430, i64 1
  store ptr %incdec.ptr431, ptr %p, align 8
  %275 = load i8, ptr %add.ptr430, align 1
  %idx.ext433 = zext i8 %275 to i64
  %idx.neg434 = sub nsw i64 0, %idx.ext433
  %add.ptr435 = getelementptr inbounds i8, ptr %274, i64 %idx.neg434
  %276 = load i8, ptr %add.ptr435, align 1
  %conv436 = zext i8 %276 to i32
  %mul437.neg = mul nsw i32 %conv436, -3
  %277 = load i32, ptr %x, align 4
  %sub438 = add i32 %mul437.neg, %277
  store i32 %sub438, ptr %x, align 4
  %conv439 = zext i8 %276 to i32
  %278 = load i32, ptr %y, align 4
  %sub440 = sub nsw i32 %278, %conv439
  store i32 %sub440, ptr %y, align 4
  %279 = load ptr, ptr %cp, align 8
  %280 = load ptr, ptr %p, align 8
  %incdec.ptr441 = getelementptr inbounds i8, ptr %280, i64 1
  store ptr %incdec.ptr441, ptr %p, align 8
  %281 = load i8, ptr %280, align 1
  %idx.ext443 = zext i8 %281 to i64
  %idx.neg444 = sub nsw i64 0, %idx.ext443
  %add.ptr445 = getelementptr inbounds i8, ptr %279, i64 %idx.neg444
  %282 = load i8, ptr %add.ptr445, align 1
  %conv446 = zext i8 %282 to i32
  %mul447.neg = mul nsw i32 %conv446, -2
  %283 = load i32, ptr %x, align 4
  %sub448 = add i32 %mul447.neg, %283
  store i32 %sub448, ptr %x, align 4
  %conv449 = zext i8 %282 to i32
  %284 = load i32, ptr %y, align 4
  %sub450 = sub nsw i32 %284, %conv449
  store i32 %sub450, ptr %y, align 4
  %285 = load ptr, ptr %cp, align 8
  %286 = load ptr, ptr %p, align 8
  %incdec.ptr451 = getelementptr inbounds i8, ptr %286, i64 1
  store ptr %incdec.ptr451, ptr %p, align 8
  %287 = load i8, ptr %286, align 1
  %idx.ext453 = zext i8 %287 to i64
  %idx.neg454 = sub nsw i64 0, %idx.ext453
  %add.ptr455 = getelementptr inbounds i8, ptr %285, i64 %idx.neg454
  %288 = load i8, ptr %add.ptr455, align 1
  %conv456 = zext i8 %288 to i32
  %289 = load i32, ptr %x, align 4
  %sub457 = sub nsw i32 %289, %conv456
  store i32 %sub457, ptr %x, align 4
  %conv458 = zext i8 %288 to i32
  %290 = load i32, ptr %y, align 4
  %sub459 = sub nsw i32 %290, %conv458
  store i32 %sub459, ptr %y, align 4
  %291 = load ptr, ptr %cp, align 8
  %292 = load ptr, ptr %p, align 8
  %incdec.ptr460 = getelementptr inbounds i8, ptr %292, i64 1
  store ptr %incdec.ptr460, ptr %p, align 8
  %293 = load i8, ptr %292, align 1
  %idx.ext462 = zext i8 %293 to i64
  %idx.neg463 = sub nsw i64 0, %idx.ext462
  %add.ptr464 = getelementptr inbounds i8, ptr %291, i64 %idx.neg463
  %294 = load i8, ptr %add.ptr464, align 1
  %conv465 = zext i8 %294 to i32
  %295 = load i32, ptr %y, align 4
  %sub466 = sub nsw i32 %295, %conv465
  store i32 %sub466, ptr %y, align 4
  %296 = load ptr, ptr %cp, align 8
  %297 = load ptr, ptr %p, align 8
  %incdec.ptr467 = getelementptr inbounds i8, ptr %297, i64 1
  store ptr %incdec.ptr467, ptr %p, align 8
  %298 = load i8, ptr %297, align 1
  %idx.ext469 = zext i8 %298 to i64
  %idx.neg470 = sub nsw i64 0, %idx.ext469
  %add.ptr471 = getelementptr inbounds i8, ptr %296, i64 %idx.neg470
  %299 = load i8, ptr %add.ptr471, align 1
  %conv472 = zext i8 %299 to i32
  %300 = load i32, ptr %x, align 4
  %add473 = add nsw i32 %300, %conv472
  store i32 %add473, ptr %x, align 4
  %conv474 = zext i8 %299 to i32
  %301 = load i32, ptr %y, align 4
  %sub475 = sub nsw i32 %301, %conv474
  store i32 %sub475, ptr %y, align 4
  %302 = load ptr, ptr %cp, align 8
  %303 = load ptr, ptr %p, align 8
  %incdec.ptr476 = getelementptr inbounds i8, ptr %303, i64 1
  store ptr %incdec.ptr476, ptr %p, align 8
  %304 = load i8, ptr %303, align 1
  %idx.ext478 = zext i8 %304 to i64
  %idx.neg479 = sub nsw i64 0, %idx.ext478
  %add.ptr480 = getelementptr inbounds i8, ptr %302, i64 %idx.neg479
  %305 = load i8, ptr %add.ptr480, align 1
  %conv481 = zext i8 %305 to i32
  %mul482 = shl nuw nsw i32 %conv481, 1
  %306 = load i32, ptr %x, align 4
  %add483 = add nsw i32 %306, %mul482
  store i32 %add483, ptr %x, align 4
  %conv484 = zext i8 %305 to i32
  %307 = load i32, ptr %y, align 4
  %sub485 = sub nsw i32 %307, %conv484
  store i32 %sub485, ptr %y, align 4
  %308 = load ptr, ptr %cp, align 8
  %309 = load ptr, ptr %p, align 8
  %310 = load i8, ptr %309, align 1
  %idx.ext487 = zext i8 %310 to i64
  %idx.neg488 = sub nsw i64 0, %idx.ext487
  %add.ptr489 = getelementptr inbounds i8, ptr %308, i64 %idx.neg488
  %311 = load i8, ptr %add.ptr489, align 1
  %conv490 = zext i8 %311 to i32
  %mul491 = mul nuw nsw i32 %conv490, 3
  %312 = load i32, ptr %x, align 4
  %add492 = add nsw i32 %312, %mul491
  store i32 %add492, ptr %x, align 4
  %conv493 = zext i8 %311 to i32
  %313 = load i32, ptr %y, align 4
  %sub494 = sub nsw i32 %313, %conv493
  store i32 %sub494, ptr %y, align 4
  %314 = load i32, ptr %x_size.addr, align 4
  %sub495 = add nsw i32 %314, -6
  %315 = load ptr, ptr %p, align 8
  %idx.ext496 = sext i32 %sub495 to i64
  %add.ptr497 = getelementptr inbounds i8, ptr %315, i64 %idx.ext496
  store ptr %add.ptr497, ptr %p, align 8
  %316 = load ptr, ptr %cp, align 8
  %incdec.ptr498 = getelementptr inbounds i8, ptr %add.ptr497, i64 1
  store ptr %incdec.ptr498, ptr %p, align 8
  %317 = load i8, ptr %add.ptr497, align 1
  %idx.ext500 = zext i8 %317 to i64
  %idx.neg501 = sub nsw i64 0, %idx.ext500
  %add.ptr502 = getelementptr inbounds i8, ptr %316, i64 %idx.neg501
  %318 = load i8, ptr %add.ptr502, align 1
  %conv503 = zext i8 %318 to i32
  %mul504.neg = mul nsw i32 %conv503, -3
  %319 = load i32, ptr %x, align 4
  %sub505 = add i32 %mul504.neg, %319
  store i32 %sub505, ptr %x, align 4
  %320 = load ptr, ptr %cp, align 8
  %321 = load ptr, ptr %p, align 8
  %incdec.ptr506 = getelementptr inbounds i8, ptr %321, i64 1
  store ptr %incdec.ptr506, ptr %p, align 8
  %322 = load i8, ptr %321, align 1
  %idx.ext508 = zext i8 %322 to i64
  %idx.neg509 = sub nsw i64 0, %idx.ext508
  %add.ptr510 = getelementptr inbounds i8, ptr %320, i64 %idx.neg509
  %323 = load i8, ptr %add.ptr510, align 1
  %conv511 = zext i8 %323 to i32
  %mul512.neg = mul nsw i32 %conv511, -2
  %324 = load i32, ptr %x, align 4
  %sub513 = add i32 %mul512.neg, %324
  store i32 %sub513, ptr %x, align 4
  %325 = load ptr, ptr %cp, align 8
  %326 = load ptr, ptr %p, align 8
  %327 = load i8, ptr %326, align 1
  %idx.ext515 = zext i8 %327 to i64
  %idx.neg516 = sub nsw i64 0, %idx.ext515
  %add.ptr517 = getelementptr inbounds i8, ptr %325, i64 %idx.neg516
  %328 = load i8, ptr %add.ptr517, align 1
  %conv518 = zext i8 %328 to i32
  %329 = load i32, ptr %x, align 4
  %sub519 = sub nsw i32 %329, %conv518
  store i32 %sub519, ptr %x, align 4
  %330 = load ptr, ptr %p, align 8
  %add.ptr520 = getelementptr inbounds i8, ptr %330, i64 2
  store ptr %add.ptr520, ptr %p, align 8
  %331 = load ptr, ptr %cp, align 8
  %incdec.ptr521 = getelementptr inbounds i8, ptr %330, i64 3
  store ptr %incdec.ptr521, ptr %p, align 8
  %332 = load i8, ptr %add.ptr520, align 1
  %idx.ext523 = zext i8 %332 to i64
  %idx.neg524 = sub nsw i64 0, %idx.ext523
  %add.ptr525 = getelementptr inbounds i8, ptr %331, i64 %idx.neg524
  %333 = load i8, ptr %add.ptr525, align 1
  %conv526 = zext i8 %333 to i32
  %334 = load i32, ptr %x, align 4
  %add527 = add nsw i32 %334, %conv526
  store i32 %add527, ptr %x, align 4
  %335 = load ptr, ptr %cp, align 8
  %336 = load ptr, ptr %p, align 8
  %incdec.ptr528 = getelementptr inbounds i8, ptr %336, i64 1
  store ptr %incdec.ptr528, ptr %p, align 8
  %337 = load i8, ptr %336, align 1
  %idx.ext530 = zext i8 %337 to i64
  %idx.neg531 = sub nsw i64 0, %idx.ext530
  %add.ptr532 = getelementptr inbounds i8, ptr %335, i64 %idx.neg531
  %338 = load i8, ptr %add.ptr532, align 1
  %conv533 = zext i8 %338 to i32
  %mul534 = shl nuw nsw i32 %conv533, 1
  %339 = load i32, ptr %x, align 4
  %add535 = add nsw i32 %339, %mul534
  store i32 %add535, ptr %x, align 4
  %340 = load ptr, ptr %cp, align 8
  %341 = load ptr, ptr %p, align 8
  %342 = load i8, ptr %341, align 1
  %idx.ext537 = zext i8 %342 to i64
  %idx.neg538 = sub nsw i64 0, %idx.ext537
  %add.ptr539 = getelementptr inbounds i8, ptr %340, i64 %idx.neg538
  %343 = load i8, ptr %add.ptr539, align 1
  %conv540 = zext i8 %343 to i32
  %mul541 = mul nuw nsw i32 %conv540, 3
  %344 = load i32, ptr %x, align 4
  %add542 = add nsw i32 %344, %mul541
  store i32 %add542, ptr %x, align 4
  %345 = load i32, ptr %x_size.addr, align 4
  %sub543 = add nsw i32 %345, -6
  %346 = load ptr, ptr %p, align 8
  %idx.ext544 = sext i32 %sub543 to i64
  %add.ptr545 = getelementptr inbounds i8, ptr %346, i64 %idx.ext544
  store ptr %add.ptr545, ptr %p, align 8
  %347 = load ptr, ptr %cp, align 8
  %incdec.ptr546 = getelementptr inbounds i8, ptr %add.ptr545, i64 1
  store ptr %incdec.ptr546, ptr %p, align 8
  %348 = load i8, ptr %add.ptr545, align 1
  %idx.ext548 = zext i8 %348 to i64
  %idx.neg549 = sub nsw i64 0, %idx.ext548
  %add.ptr550 = getelementptr inbounds i8, ptr %347, i64 %idx.neg549
  %349 = load i8, ptr %add.ptr550, align 1
  %conv551 = zext i8 %349 to i32
  %mul552.neg = mul nsw i32 %conv551, -3
  %350 = load i32, ptr %x, align 4
  %sub553 = add i32 %mul552.neg, %350
  store i32 %sub553, ptr %x, align 4
  %conv554 = zext i8 %349 to i32
  %351 = load i32, ptr %y, align 4
  %add555 = add nsw i32 %351, %conv554
  store i32 %add555, ptr %y, align 4
  %352 = load ptr, ptr %cp, align 8
  %353 = load ptr, ptr %p, align 8
  %incdec.ptr556 = getelementptr inbounds i8, ptr %353, i64 1
  store ptr %incdec.ptr556, ptr %p, align 8
  %354 = load i8, ptr %353, align 1
  %idx.ext558 = zext i8 %354 to i64
  %idx.neg559 = sub nsw i64 0, %idx.ext558
  %add.ptr560 = getelementptr inbounds i8, ptr %352, i64 %idx.neg559
  %355 = load i8, ptr %add.ptr560, align 1
  %conv561 = zext i8 %355 to i32
  %mul562.neg = mul nsw i32 %conv561, -2
  %356 = load i32, ptr %x, align 4
  %sub563 = add i32 %mul562.neg, %356
  store i32 %sub563, ptr %x, align 4
  %conv564 = zext i8 %355 to i32
  %357 = load i32, ptr %y, align 4
  %add565 = add nsw i32 %357, %conv564
  store i32 %add565, ptr %y, align 4
  %358 = load ptr, ptr %cp, align 8
  %359 = load ptr, ptr %p, align 8
  %incdec.ptr566 = getelementptr inbounds i8, ptr %359, i64 1
  store ptr %incdec.ptr566, ptr %p, align 8
  %360 = load i8, ptr %359, align 1
  %idx.ext568 = zext i8 %360 to i64
  %idx.neg569 = sub nsw i64 0, %idx.ext568
  %add.ptr570 = getelementptr inbounds i8, ptr %358, i64 %idx.neg569
  %361 = load i8, ptr %add.ptr570, align 1
  %conv571 = zext i8 %361 to i32
  %362 = load i32, ptr %x, align 4
  %sub572 = sub nsw i32 %362, %conv571
  store i32 %sub572, ptr %x, align 4
  %conv573 = zext i8 %361 to i32
  %363 = load i32, ptr %y, align 4
  %add574 = add nsw i32 %363, %conv573
  store i32 %add574, ptr %y, align 4
  %364 = load ptr, ptr %cp, align 8
  %365 = load ptr, ptr %p, align 8
  %incdec.ptr575 = getelementptr inbounds i8, ptr %365, i64 1
  store ptr %incdec.ptr575, ptr %p, align 8
  %366 = load i8, ptr %365, align 1
  %idx.ext577 = zext i8 %366 to i64
  %idx.neg578 = sub nsw i64 0, %idx.ext577
  %add.ptr579 = getelementptr inbounds i8, ptr %364, i64 %idx.neg578
  %367 = load i8, ptr %add.ptr579, align 1
  %conv580 = zext i8 %367 to i32
  %368 = load i32, ptr %y, align 4
  %add581 = add nsw i32 %368, %conv580
  store i32 %add581, ptr %y, align 4
  %369 = load ptr, ptr %cp, align 8
  %370 = load ptr, ptr %p, align 8
  %incdec.ptr582 = getelementptr inbounds i8, ptr %370, i64 1
  store ptr %incdec.ptr582, ptr %p, align 8
  %371 = load i8, ptr %370, align 1
  %idx.ext584 = zext i8 %371 to i64
  %idx.neg585 = sub nsw i64 0, %idx.ext584
  %add.ptr586 = getelementptr inbounds i8, ptr %369, i64 %idx.neg585
  %372 = load i8, ptr %add.ptr586, align 1
  %conv587 = zext i8 %372 to i32
  %373 = load i32, ptr %x, align 4
  %add588 = add nsw i32 %373, %conv587
  store i32 %add588, ptr %x, align 4
  %conv589 = zext i8 %372 to i32
  %374 = load i32, ptr %y, align 4
  %add590 = add nsw i32 %374, %conv589
  store i32 %add590, ptr %y, align 4
  %375 = load ptr, ptr %cp, align 8
  %376 = load ptr, ptr %p, align 8
  %incdec.ptr591 = getelementptr inbounds i8, ptr %376, i64 1
  store ptr %incdec.ptr591, ptr %p, align 8
  %377 = load i8, ptr %376, align 1
  %idx.ext593 = zext i8 %377 to i64
  %idx.neg594 = sub nsw i64 0, %idx.ext593
  %add.ptr595 = getelementptr inbounds i8, ptr %375, i64 %idx.neg594
  %378 = load i8, ptr %add.ptr595, align 1
  %conv596 = zext i8 %378 to i32
  %mul597 = shl nuw nsw i32 %conv596, 1
  %379 = load i32, ptr %x, align 4
  %add598 = add nsw i32 %379, %mul597
  store i32 %add598, ptr %x, align 4
  %conv599 = zext i8 %378 to i32
  %380 = load i32, ptr %y, align 4
  %add600 = add nsw i32 %380, %conv599
  store i32 %add600, ptr %y, align 4
  %381 = load ptr, ptr %cp, align 8
  %382 = load ptr, ptr %p, align 8
  %383 = load i8, ptr %382, align 1
  %idx.ext602 = zext i8 %383 to i64
  %idx.neg603 = sub nsw i64 0, %idx.ext602
  %add.ptr604 = getelementptr inbounds i8, ptr %381, i64 %idx.neg603
  %384 = load i8, ptr %add.ptr604, align 1
  %conv605 = zext i8 %384 to i32
  %mul606 = mul nuw nsw i32 %conv605, 3
  %385 = load i32, ptr %x, align 4
  %add607 = add nsw i32 %385, %mul606
  store i32 %add607, ptr %x, align 4
  %conv608 = zext i8 %384 to i32
  %386 = load i32, ptr %y, align 4
  %add609 = add nsw i32 %386, %conv608
  store i32 %add609, ptr %y, align 4
  %387 = load i32, ptr %x_size.addr, align 4
  %sub610 = add nsw i32 %387, -5
  %388 = load ptr, ptr %p, align 8
  %idx.ext611 = sext i32 %sub610 to i64
  %add.ptr612 = getelementptr inbounds i8, ptr %388, i64 %idx.ext611
  store ptr %add.ptr612, ptr %p, align 8
  %389 = load ptr, ptr %cp, align 8
  %incdec.ptr613 = getelementptr inbounds i8, ptr %add.ptr612, i64 1
  store ptr %incdec.ptr613, ptr %p, align 8
  %390 = load i8, ptr %add.ptr612, align 1
  %idx.ext615 = zext i8 %390 to i64
  %idx.neg616 = sub nsw i64 0, %idx.ext615
  %add.ptr617 = getelementptr inbounds i8, ptr %389, i64 %idx.neg616
  %391 = load i8, ptr %add.ptr617, align 1
  %conv618 = zext i8 %391 to i32
  %mul619.neg = mul nsw i32 %conv618, -2
  %392 = load i32, ptr %x, align 4
  %sub620 = add i32 %mul619.neg, %392
  store i32 %sub620, ptr %x, align 4
  %conv621 = zext i8 %391 to i32
  %mul622 = shl nuw nsw i32 %conv621, 1
  %393 = load i32, ptr %y, align 4
  %add623 = add nsw i32 %393, %mul622
  store i32 %add623, ptr %y, align 4
  %394 = load ptr, ptr %cp, align 8
  %395 = load ptr, ptr %p, align 8
  %incdec.ptr624 = getelementptr inbounds i8, ptr %395, i64 1
  store ptr %incdec.ptr624, ptr %p, align 8
  %396 = load i8, ptr %395, align 1
  %idx.ext626 = zext i8 %396 to i64
  %idx.neg627 = sub nsw i64 0, %idx.ext626
  %add.ptr628 = getelementptr inbounds i8, ptr %394, i64 %idx.neg627
  %397 = load i8, ptr %add.ptr628, align 1
  %conv629 = zext i8 %397 to i32
  %398 = load i32, ptr %x, align 4
  %sub630 = sub nsw i32 %398, %conv629
  store i32 %sub630, ptr %x, align 4
  %conv631 = zext i8 %397 to i32
  %mul632 = shl nuw nsw i32 %conv631, 1
  %399 = load i32, ptr %y, align 4
  %add633 = add nsw i32 %399, %mul632
  store i32 %add633, ptr %y, align 4
  %400 = load ptr, ptr %cp, align 8
  %401 = load ptr, ptr %p, align 8
  %incdec.ptr634 = getelementptr inbounds i8, ptr %401, i64 1
  store ptr %incdec.ptr634, ptr %p, align 8
  %402 = load i8, ptr %401, align 1
  %idx.ext636 = zext i8 %402 to i64
  %idx.neg637 = sub nsw i64 0, %idx.ext636
  %add.ptr638 = getelementptr inbounds i8, ptr %400, i64 %idx.neg637
  %403 = load i8, ptr %add.ptr638, align 1
  %conv639 = zext i8 %403 to i32
  %mul640 = shl nuw nsw i32 %conv639, 1
  %404 = load i32, ptr %y, align 4
  %add641 = add nsw i32 %404, %mul640
  store i32 %add641, ptr %y, align 4
  %405 = load ptr, ptr %cp, align 8
  %406 = load ptr, ptr %p, align 8
  %incdec.ptr642 = getelementptr inbounds i8, ptr %406, i64 1
  store ptr %incdec.ptr642, ptr %p, align 8
  %407 = load i8, ptr %406, align 1
  %idx.ext644 = zext i8 %407 to i64
  %idx.neg645 = sub nsw i64 0, %idx.ext644
  %add.ptr646 = getelementptr inbounds i8, ptr %405, i64 %idx.neg645
  %408 = load i8, ptr %add.ptr646, align 1
  %conv647 = zext i8 %408 to i32
  %409 = load i32, ptr %x, align 4
  %add648 = add nsw i32 %409, %conv647
  store i32 %add648, ptr %x, align 4
  %conv649 = zext i8 %408 to i32
  %mul650 = shl nuw nsw i32 %conv649, 1
  %410 = load i32, ptr %y, align 4
  %add651 = add nsw i32 %410, %mul650
  store i32 %add651, ptr %y, align 4
  %411 = load ptr, ptr %cp, align 8
  %412 = load ptr, ptr %p, align 8
  %413 = load i8, ptr %412, align 1
  %idx.ext653 = zext i8 %413 to i64
  %idx.neg654 = sub nsw i64 0, %idx.ext653
  %add.ptr655 = getelementptr inbounds i8, ptr %411, i64 %idx.neg654
  %414 = load i8, ptr %add.ptr655, align 1
  %conv656 = zext i8 %414 to i32
  %mul657 = shl nuw nsw i32 %conv656, 1
  %415 = load i32, ptr %x, align 4
  %add658 = add nsw i32 %415, %mul657
  store i32 %add658, ptr %x, align 4
  %conv659 = zext i8 %414 to i32
  %mul660 = shl nuw nsw i32 %conv659, 1
  %416 = load i32, ptr %y, align 4
  %add661 = add nsw i32 %416, %mul660
  store i32 %add661, ptr %y, align 4
  %417 = load i32, ptr %x_size.addr, align 4
  %sub662 = add nsw i32 %417, -3
  %418 = load ptr, ptr %p, align 8
  %idx.ext663 = sext i32 %sub662 to i64
  %add.ptr664 = getelementptr inbounds i8, ptr %418, i64 %idx.ext663
  store ptr %add.ptr664, ptr %p, align 8
  %419 = load ptr, ptr %cp, align 8
  %incdec.ptr665 = getelementptr inbounds i8, ptr %add.ptr664, i64 1
  store ptr %incdec.ptr665, ptr %p, align 8
  %420 = load i8, ptr %add.ptr664, align 1
  %idx.ext667 = zext i8 %420 to i64
  %idx.neg668 = sub nsw i64 0, %idx.ext667
  %add.ptr669 = getelementptr inbounds i8, ptr %419, i64 %idx.neg668
  %421 = load i8, ptr %add.ptr669, align 1
  %conv670 = zext i8 %421 to i32
  %422 = load i32, ptr %x, align 4
  %sub671 = sub nsw i32 %422, %conv670
  store i32 %sub671, ptr %x, align 4
  %conv672 = zext i8 %421 to i32
  %mul673 = mul nuw nsw i32 %conv672, 3
  %423 = load i32, ptr %y, align 4
  %add674 = add nsw i32 %423, %mul673
  store i32 %add674, ptr %y, align 4
  %424 = load ptr, ptr %cp, align 8
  %425 = load ptr, ptr %p, align 8
  %incdec.ptr675 = getelementptr inbounds i8, ptr %425, i64 1
  store ptr %incdec.ptr675, ptr %p, align 8
  %426 = load i8, ptr %425, align 1
  %idx.ext677 = zext i8 %426 to i64
  %idx.neg678 = sub nsw i64 0, %idx.ext677
  %add.ptr679 = getelementptr inbounds i8, ptr %424, i64 %idx.neg678
  %427 = load i8, ptr %add.ptr679, align 1
  %conv680 = zext i8 %427 to i32
  %mul681 = mul nuw nsw i32 %conv680, 3
  %428 = load i32, ptr %y, align 4
  %add682 = add nsw i32 %428, %mul681
  store i32 %add682, ptr %y, align 4
  %429 = load ptr, ptr %cp, align 8
  %430 = load ptr, ptr %p, align 8
  %431 = load i8, ptr %430, align 1
  %idx.ext684 = zext i8 %431 to i64
  %idx.neg685 = sub nsw i64 0, %idx.ext684
  %add.ptr686 = getelementptr inbounds i8, ptr %429, i64 %idx.neg685
  %432 = load i8, ptr %add.ptr686, align 1
  %conv687 = zext i8 %432 to i32
  %433 = load i32, ptr %x, align 4
  %add688 = add nsw i32 %433, %conv687
  store i32 %add688, ptr %x, align 4
  %conv689 = zext i8 %432 to i32
  %mul690 = mul nuw nsw i32 %conv689, 3
  %434 = load i32, ptr %y, align 4
  %add691 = add nsw i32 %434, %mul690
  store i32 %add691, ptr %y, align 4
  %mul692 = mul nsw i32 %add688, %add688
  store i32 %mul692, ptr %xx, align 4
  %mul693 = mul nsw i32 %add691, %add691
  store i32 %mul693, ptr %yy, align 4
  %add694 = add nuw nsw i32 %mul692, %mul693
  store i32 %add694, ptr %sq, align 4
  %435 = load i32, ptr %n, align 4
  %mul695 = mul nsw i32 %435, %435
  %div4 = lshr i32 %mul695, 1
  %cmp696 = icmp ugt i32 %add694, %div4
  br i1 %cmp696, label %if.then698, label %for.inc

if.then698:                                       ; preds = %if.then341
  %436 = load i32, ptr %yy, align 4
  %437 = load i32, ptr %xx, align 4
  %cmp699 = icmp slt i32 %436, %437
  br i1 %cmp699, label %if.then701, label %if.else

if.then701:                                       ; preds = %if.then698
  %438 = load i32, ptr %y, align 4
  %conv702 = sitofp i32 %438 to float
  %439 = load i32, ptr %x, align 4
  %440 = call i32 @llvm.abs.i32(i32 %439, i1 true)
  %conv704 = sitofp i32 %440 to float
  %div705 = fdiv float %conv702, %conv704
  store float %div705, ptr %divide, align 4
  %441 = icmp sgt i32 %439, -1
  %div707 = select i1 %441, i32 1, i32 -1
  store i32 %div707, ptr %sq, align 4
  %442 = load ptr, ptr %cp, align 8
  %443 = load ptr, ptr %in.addr, align 8
  %444 = load i32, ptr %i, align 4
  %445 = load float, ptr %divide, align 4
  %cmp708 = fcmp olt float %445, 0.000000e+00
  br i1 %cmp708, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then701
  %446 = load float, ptr %divide, align 4
  %conv710 = fpext float %446 to double
  %sub711 = fadd double %conv710, -5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %if.then701
  %447 = load float, ptr %divide, align 4
  %conv713 = fpext float %447 to double
  %add714 = fadd double %conv713, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi double [ %sub711, %cond.true ], [ %add714, %cond.false ]
  %cond = fptosi double %cond.in to i32
  %add716 = add nsw i32 %444, %cond
  %448 = load i32, ptr %x_size.addr, align 4
  %mul717 = mul nsw i32 %add716, %448
  %449 = load i32, ptr %j, align 4
  %add718 = add nsw i32 %mul717, %449
  %450 = load i32, ptr %sq, align 4
  %add719 = add nsw i32 %add718, %450
  %idxprom720 = sext i32 %add719 to i64
  %arrayidx721 = getelementptr inbounds i8, ptr %443, i64 %idxprom720
  %451 = load i8, ptr %arrayidx721, align 1
  %idx.ext723 = zext i8 %451 to i64
  %idx.neg724 = sub nsw i64 0, %idx.ext723
  %add.ptr725 = getelementptr inbounds i8, ptr %442, i64 %idx.neg724
  %452 = load i8, ptr %add.ptr725, align 1
  %conv726 = zext i8 %452 to i32
  %453 = load ptr, ptr %cp, align 8
  %454 = load ptr, ptr %in.addr, align 8
  %455 = load i32, ptr %i, align 4
  %456 = load float, ptr %divide, align 4
  %mul727 = fmul float %456, 2.000000e+00
  %cmp728 = fcmp olt float %mul727, 0.000000e+00
  br i1 %cmp728, label %cond.true730, label %cond.false735

cond.true730:                                     ; preds = %cond.end
  %457 = load float, ptr %divide, align 4
  %mul731 = fmul float %457, 2.000000e+00
  %conv732 = fpext float %mul731 to double
  %sub733 = fadd double %conv732, -5.000000e-01
  br label %cond.end740

cond.false735:                                    ; preds = %cond.end
  %458 = load float, ptr %divide, align 4
  %mul736 = fmul float %458, 2.000000e+00
  %conv737 = fpext float %mul736 to double
  %add738 = fadd double %conv737, 5.000000e-01
  br label %cond.end740

cond.end740:                                      ; preds = %cond.false735, %cond.true730
  %cond741.in = phi double [ %sub733, %cond.true730 ], [ %add738, %cond.false735 ]
  %cond741 = fptosi double %cond741.in to i32
  %add742 = add nsw i32 %455, %cond741
  %459 = load i32, ptr %x_size.addr, align 4
  %mul743 = mul nsw i32 %add742, %459
  %460 = load i32, ptr %j, align 4
  %add744 = add nsw i32 %mul743, %460
  %461 = load i32, ptr %sq, align 4
  %mul745 = shl nsw i32 %461, 1
  %add746 = add nsw i32 %add744, %mul745
  %idxprom747 = sext i32 %add746 to i64
  %arrayidx748 = getelementptr inbounds i8, ptr %454, i64 %idxprom747
  %462 = load i8, ptr %arrayidx748, align 1
  %idx.ext750 = zext i8 %462 to i64
  %idx.neg751 = sub nsw i64 0, %idx.ext750
  %add.ptr752 = getelementptr inbounds i8, ptr %453, i64 %idx.neg751
  %463 = load i8, ptr %add.ptr752, align 1
  %conv753 = zext i8 %463 to i32
  %add754 = add nuw nsw i32 %conv726, %conv753
  %464 = load ptr, ptr %cp, align 8
  %465 = load ptr, ptr %in.addr, align 8
  %466 = load i32, ptr %i, align 4
  %467 = load float, ptr %divide, align 4
  %mul755 = fmul float %467, 3.000000e+00
  %cmp756 = fcmp olt float %mul755, 0.000000e+00
  br i1 %cmp756, label %cond.true758, label %cond.false763

cond.true758:                                     ; preds = %cond.end740
  %468 = load float, ptr %divide, align 4
  %mul759 = fmul float %468, 3.000000e+00
  %conv760 = fpext float %mul759 to double
  %sub761 = fadd double %conv760, -5.000000e-01
  br label %cond.end768

cond.false763:                                    ; preds = %cond.end740
  %469 = load float, ptr %divide, align 4
  %mul764 = fmul float %469, 3.000000e+00
  %conv765 = fpext float %mul764 to double
  %add766 = fadd double %conv765, 5.000000e-01
  br label %cond.end768

cond.end768:                                      ; preds = %cond.false763, %cond.true758
  %cond769.in = phi double [ %sub761, %cond.true758 ], [ %add766, %cond.false763 ]
  %cond769 = fptosi double %cond769.in to i32
  %add770 = add nsw i32 %466, %cond769
  %470 = load i32, ptr %x_size.addr, align 4
  %mul771 = mul nsw i32 %add770, %470
  %471 = load i32, ptr %j, align 4
  %add772 = add nsw i32 %mul771, %471
  %472 = load i32, ptr %sq, align 4
  %mul773 = mul nsw i32 %472, 3
  %add774 = add nsw i32 %add772, %mul773
  %idxprom775 = sext i32 %add774 to i64
  %arrayidx776 = getelementptr inbounds i8, ptr %465, i64 %idxprom775
  %473 = load i8, ptr %arrayidx776, align 1
  %idx.ext778 = zext i8 %473 to i64
  %idx.neg779 = sub nsw i64 0, %idx.ext778
  %add.ptr780 = getelementptr inbounds i8, ptr %464, i64 %idx.neg779
  %474 = load i8, ptr %add.ptr780, align 1
  %conv781 = zext i8 %474 to i32
  %add782 = add nuw nsw i32 %add754, %conv781
  br label %if.end

if.else:                                          ; preds = %if.then698
  %475 = load i32, ptr %x, align 4
  %conv783 = sitofp i32 %475 to float
  %476 = load i32, ptr %y, align 4
  %477 = call i32 @llvm.abs.i32(i32 %476, i1 true)
  %conv785 = sitofp i32 %477 to float
  %div786 = fdiv float %conv783, %conv785
  store float %div786, ptr %divide, align 4
  %478 = icmp sgt i32 %476, -1
  %div788 = select i1 %478, i32 1, i32 -1
  store i32 %div788, ptr %sq, align 4
  %479 = load ptr, ptr %cp, align 8
  %480 = load ptr, ptr %in.addr, align 8
  %481 = load i32, ptr %i, align 4
  %add789 = add nsw i32 %481, %div788
  %482 = load i32, ptr %x_size.addr, align 4
  %mul790 = mul nsw i32 %add789, %482
  %483 = load i32, ptr %j, align 4
  %add791 = add nsw i32 %mul790, %483
  %484 = load float, ptr %divide, align 4
  %cmp792 = fcmp olt float %484, 0.000000e+00
  br i1 %cmp792, label %cond.true794, label %cond.false798

cond.true794:                                     ; preds = %if.else
  %485 = load float, ptr %divide, align 4
  %conv795 = fpext float %485 to double
  %sub796 = fadd double %conv795, -5.000000e-01
  br label %cond.end802

cond.false798:                                    ; preds = %if.else
  %486 = load float, ptr %divide, align 4
  %conv799 = fpext float %486 to double
  %add800 = fadd double %conv799, 5.000000e-01
  br label %cond.end802

cond.end802:                                      ; preds = %cond.false798, %cond.true794
  %cond803.in = phi double [ %sub796, %cond.true794 ], [ %add800, %cond.false798 ]
  %cond803 = fptosi double %cond803.in to i32
  %add804 = add nsw i32 %add791, %cond803
  %idxprom805 = sext i32 %add804 to i64
  %arrayidx806 = getelementptr inbounds i8, ptr %480, i64 %idxprom805
  %487 = load i8, ptr %arrayidx806, align 1
  %idx.ext808 = zext i8 %487 to i64
  %idx.neg809 = sub nsw i64 0, %idx.ext808
  %add.ptr810 = getelementptr inbounds i8, ptr %479, i64 %idx.neg809
  %488 = load i8, ptr %add.ptr810, align 1
  %conv811 = zext i8 %488 to i32
  %489 = load ptr, ptr %cp, align 8
  %490 = load ptr, ptr %in.addr, align 8
  %491 = load i32, ptr %i, align 4
  %492 = load i32, ptr %sq, align 4
  %mul812 = shl nsw i32 %492, 1
  %add813 = add nsw i32 %491, %mul812
  %493 = load i32, ptr %x_size.addr, align 4
  %mul814 = mul nsw i32 %add813, %493
  %494 = load i32, ptr %j, align 4
  %add815 = add nsw i32 %mul814, %494
  %495 = load float, ptr %divide, align 4
  %mul816 = fmul float %495, 2.000000e+00
  %cmp817 = fcmp olt float %mul816, 0.000000e+00
  br i1 %cmp817, label %cond.true819, label %cond.false824

cond.true819:                                     ; preds = %cond.end802
  %496 = load float, ptr %divide, align 4
  %mul820 = fmul float %496, 2.000000e+00
  %conv821 = fpext float %mul820 to double
  %sub822 = fadd double %conv821, -5.000000e-01
  br label %cond.end829

cond.false824:                                    ; preds = %cond.end802
  %497 = load float, ptr %divide, align 4
  %mul825 = fmul float %497, 2.000000e+00
  %conv826 = fpext float %mul825 to double
  %add827 = fadd double %conv826, 5.000000e-01
  br label %cond.end829

cond.end829:                                      ; preds = %cond.false824, %cond.true819
  %cond830.in = phi double [ %sub822, %cond.true819 ], [ %add827, %cond.false824 ]
  %cond830 = fptosi double %cond830.in to i32
  %add831 = add nsw i32 %add815, %cond830
  %idxprom832 = sext i32 %add831 to i64
  %arrayidx833 = getelementptr inbounds i8, ptr %490, i64 %idxprom832
  %498 = load i8, ptr %arrayidx833, align 1
  %idx.ext835 = zext i8 %498 to i64
  %idx.neg836 = sub nsw i64 0, %idx.ext835
  %add.ptr837 = getelementptr inbounds i8, ptr %489, i64 %idx.neg836
  %499 = load i8, ptr %add.ptr837, align 1
  %conv838 = zext i8 %499 to i32
  %add839 = add nuw nsw i32 %conv811, %conv838
  %500 = load ptr, ptr %cp, align 8
  %501 = load ptr, ptr %in.addr, align 8
  %502 = load i32, ptr %i, align 4
  %503 = load i32, ptr %sq, align 4
  %mul840 = mul nsw i32 %503, 3
  %add841 = add nsw i32 %502, %mul840
  %504 = load i32, ptr %x_size.addr, align 4
  %mul842 = mul nsw i32 %add841, %504
  %505 = load i32, ptr %j, align 4
  %add843 = add nsw i32 %mul842, %505
  %506 = load float, ptr %divide, align 4
  %mul844 = fmul float %506, 3.000000e+00
  %cmp845 = fcmp olt float %mul844, 0.000000e+00
  br i1 %cmp845, label %cond.true847, label %cond.false852

cond.true847:                                     ; preds = %cond.end829
  %507 = load float, ptr %divide, align 4
  %mul848 = fmul float %507, 3.000000e+00
  %conv849 = fpext float %mul848 to double
  %sub850 = fadd double %conv849, -5.000000e-01
  br label %cond.end857

cond.false852:                                    ; preds = %cond.end829
  %508 = load float, ptr %divide, align 4
  %mul853 = fmul float %508, 3.000000e+00
  %conv854 = fpext float %mul853 to double
  %add855 = fadd double %conv854, 5.000000e-01
  br label %cond.end857

cond.end857:                                      ; preds = %cond.false852, %cond.true847
  %cond858.in = phi double [ %sub850, %cond.true847 ], [ %add855, %cond.false852 ]
  %cond858 = fptosi double %cond858.in to i32
  %add859 = add nsw i32 %add843, %cond858
  %idxprom860 = sext i32 %add859 to i64
  %arrayidx861 = getelementptr inbounds i8, ptr %501, i64 %idxprom860
  %509 = load i8, ptr %arrayidx861, align 1
  %idx.ext863 = zext i8 %509 to i64
  %idx.neg864 = sub nsw i64 0, %idx.ext863
  %add.ptr865 = getelementptr inbounds i8, ptr %500, i64 %idx.neg864
  %510 = load i8, ptr %add.ptr865, align 1
  %conv866 = zext i8 %510 to i32
  %add867 = add nuw nsw i32 %add839, %conv866
  br label %if.end

if.end:                                           ; preds = %cond.end857, %cond.end768
  %storemerge5 = phi i32 [ %add867, %cond.end857 ], [ %add782, %cond.end768 ]
  store i32 %storemerge5, ptr %sq, align 4
  %cmp868 = icmp sgt i32 %storemerge5, 290
  br i1 %cmp868, label %if.then870, label %for.inc

if.then870:                                       ; preds = %if.end
  %511 = load i32, ptr %max_no.addr, align 4
  %512 = load i32, ptr %n, align 4
  %sub871 = sub nsw i32 %511, %512
  %513 = load ptr, ptr %r.addr, align 8
  %514 = load i32, ptr %i, align 4
  %515 = load i32, ptr %x_size.addr, align 4
  %mul872 = mul nsw i32 %514, %515
  %516 = load i32, ptr %j, align 4
  %add873 = add nsw i32 %mul872, %516
  %idxprom874 = sext i32 %add873 to i64
  %arrayidx875 = getelementptr inbounds i32, ptr %513, i64 %idxprom874
  store i32 %sub871, ptr %arrayidx875, align 4
  %517 = load i32, ptr %x, align 4
  %mul876 = mul nsw i32 %517, 51
  %518 = load i32, ptr %n, align 4
  %div877 = sdiv i32 %mul876, %518
  %519 = load ptr, ptr %cgx, align 8
  %520 = load i32, ptr %i, align 4
  %521 = load i32, ptr %x_size.addr, align 4
  %mul878 = mul nsw i32 %520, %521
  %522 = load i32, ptr %j, align 4
  %add879 = add nsw i32 %mul878, %522
  %idxprom880 = sext i32 %add879 to i64
  %arrayidx881 = getelementptr inbounds i32, ptr %519, i64 %idxprom880
  store i32 %div877, ptr %arrayidx881, align 4
  %523 = load i32, ptr %y, align 4
  %mul882 = mul nsw i32 %523, 51
  %524 = load i32, ptr %n, align 4
  %div883 = sdiv i32 %mul882, %524
  %525 = load ptr, ptr %cgy, align 8
  %526 = load i32, ptr %i, align 4
  %527 = load i32, ptr %x_size.addr, align 4
  %mul884 = mul nsw i32 %526, %527
  %528 = load i32, ptr %j, align 4
  %add885 = add nsw i32 %mul884, %528
  %idxprom886 = sext i32 %add885 to i64
  %arrayidx887 = getelementptr inbounds i32, ptr %525, i64 %idxprom886
  store i32 %div883, ptr %arrayidx887, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body15, %if.then166, %if.then185, %if.then208, %if.then228, %if.then248, %if.then270, %if.then290, %if.then309, %if.then332, %if.end, %if.then870, %if.then341, %if.then322, %if.then300, %if.then280, %if.then257, %if.then238, %if.then218, %if.then198, %if.then176, %if.then
  %529 = load i32, ptr %j, align 4
  %inc = add nsw i32 %529, 1
  br label %for.cond11, !llvm.loop !43

for.inc909:                                       ; preds = %for.cond11
  %530 = load i32, ptr %i, align 4
  %inc910 = add nsw i32 %530, 1
  br label %for.cond, !llvm.loop !44

for.end911:                                       ; preds = %for.cond
  store i32 0, ptr %n, align 4
  br label %for.cond912

for.cond912:                                      ; preds = %for.inc1386, %for.end911
  %storemerge1 = phi i32 [ 5, %for.end911 ], [ %inc1387, %for.inc1386 ]
  store i32 %storemerge1, ptr %i, align 4
  %531 = load i32, ptr %y_size.addr, align 4
  %sub913 = add nsw i32 %531, -5
  %cmp914 = icmp slt i32 %storemerge1, %sub913
  br i1 %cmp914, label %for.cond917, label %for.end1388

for.cond917:                                      ; preds = %for.cond912, %for.inc1383
  %storemerge2 = phi i32 [ %inc1384, %for.inc1383 ], [ 5, %for.cond912 ]
  store i32 %storemerge2, ptr %j, align 4
  %532 = load i32, ptr %x_size.addr, align 4
  %sub918 = add nsw i32 %532, -5
  %cmp919 = icmp slt i32 %storemerge2, %sub918
  br i1 %cmp919, label %for.body921, label %for.inc1386

for.body921:                                      ; preds = %for.cond917
  %533 = load ptr, ptr %r.addr, align 8
  %534 = load i32, ptr %i, align 4
  %535 = load i32, ptr %x_size.addr, align 4
  %mul922 = mul nsw i32 %534, %535
  %536 = load i32, ptr %j, align 4
  %add923 = add nsw i32 %mul922, %536
  %idxprom924 = sext i32 %add923 to i64
  %arrayidx925 = getelementptr inbounds i32, ptr %533, i64 %idxprom924
  %537 = load i32, ptr %arrayidx925, align 4
  store i32 %537, ptr %x, align 4
  %cmp926 = icmp sgt i32 %537, 0
  br i1 %cmp926, label %if.then928, label %for.inc1383

if.then928:                                       ; preds = %for.body921
  %538 = load i32, ptr %x, align 4
  %539 = load ptr, ptr %r.addr, align 8
  %540 = load i32, ptr %i, align 4
  %sub929 = add nsw i32 %540, -3
  %541 = load i32, ptr %x_size.addr, align 4
  %mul930 = mul nsw i32 %sub929, %541
  %542 = load i32, ptr %j, align 4
  %add931 = add nsw i32 %mul930, %542
  %sub932 = add nsw i32 %add931, -3
  %idxprom933 = sext i32 %sub932 to i64
  %arrayidx934 = getelementptr inbounds i32, ptr %539, i64 %idxprom933
  %543 = load i32, ptr %arrayidx934, align 4
  %cmp935 = icmp sgt i32 %538, %543
  br i1 %cmp935, label %land.lhs.true, label %for.inc1383

land.lhs.true:                                    ; preds = %if.then928
  %544 = load i32, ptr %x, align 4
  %545 = load ptr, ptr %r.addr, align 8
  %546 = load i32, ptr %i, align 4
  %sub937 = add nsw i32 %546, -3
  %547 = load i32, ptr %x_size.addr, align 4
  %mul938 = mul nsw i32 %sub937, %547
  %548 = load i32, ptr %j, align 4
  %add939 = add nsw i32 %mul938, %548
  %sub940 = add nsw i32 %add939, -2
  %idxprom941 = sext i32 %sub940 to i64
  %arrayidx942 = getelementptr inbounds i32, ptr %545, i64 %idxprom941
  %549 = load i32, ptr %arrayidx942, align 4
  %cmp943 = icmp sgt i32 %544, %549
  br i1 %cmp943, label %land.lhs.true945, label %for.inc1383

land.lhs.true945:                                 ; preds = %land.lhs.true
  %550 = load i32, ptr %x, align 4
  %551 = load ptr, ptr %r.addr, align 8
  %552 = load i32, ptr %i, align 4
  %sub946 = add nsw i32 %552, -3
  %553 = load i32, ptr %x_size.addr, align 4
  %mul947 = mul nsw i32 %sub946, %553
  %554 = load i32, ptr %j, align 4
  %add948 = add nsw i32 %mul947, %554
  %sub949 = add nsw i32 %add948, -1
  %idxprom950 = sext i32 %sub949 to i64
  %arrayidx951 = getelementptr inbounds i32, ptr %551, i64 %idxprom950
  %555 = load i32, ptr %arrayidx951, align 4
  %cmp952 = icmp sgt i32 %550, %555
  br i1 %cmp952, label %land.lhs.true954, label %for.inc1383

land.lhs.true954:                                 ; preds = %land.lhs.true945
  %556 = load i32, ptr %x, align 4
  %557 = load ptr, ptr %r.addr, align 8
  %558 = load i32, ptr %i, align 4
  %sub955 = add nsw i32 %558, -3
  %559 = load i32, ptr %x_size.addr, align 4
  %mul956 = mul nsw i32 %sub955, %559
  %560 = load i32, ptr %j, align 4
  %add957 = add nsw i32 %mul956, %560
  %idxprom958 = sext i32 %add957 to i64
  %arrayidx959 = getelementptr inbounds i32, ptr %557, i64 %idxprom958
  %561 = load i32, ptr %arrayidx959, align 4
  %cmp960 = icmp sgt i32 %556, %561
  br i1 %cmp960, label %land.lhs.true962, label %for.inc1383

land.lhs.true962:                                 ; preds = %land.lhs.true954
  %562 = load i32, ptr %x, align 4
  %563 = load ptr, ptr %r.addr, align 8
  %564 = load i32, ptr %i, align 4
  %sub963 = add nsw i32 %564, -3
  %565 = load i32, ptr %x_size.addr, align 4
  %mul964 = mul nsw i32 %sub963, %565
  %566 = load i32, ptr %j, align 4
  %add965 = add nsw i32 %mul964, %566
  %add966 = add nsw i32 %add965, 1
  %idxprom967 = sext i32 %add966 to i64
  %arrayidx968 = getelementptr inbounds i32, ptr %563, i64 %idxprom967
  %567 = load i32, ptr %arrayidx968, align 4
  %cmp969 = icmp sgt i32 %562, %567
  br i1 %cmp969, label %land.lhs.true971, label %for.inc1383

land.lhs.true971:                                 ; preds = %land.lhs.true962
  %568 = load i32, ptr %x, align 4
  %569 = load ptr, ptr %r.addr, align 8
  %570 = load i32, ptr %i, align 4
  %sub972 = add nsw i32 %570, -3
  %571 = load i32, ptr %x_size.addr, align 4
  %mul973 = mul nsw i32 %sub972, %571
  %572 = load i32, ptr %j, align 4
  %add974 = add nsw i32 %mul973, %572
  %add975 = add nsw i32 %add974, 2
  %idxprom976 = sext i32 %add975 to i64
  %arrayidx977 = getelementptr inbounds i32, ptr %569, i64 %idxprom976
  %573 = load i32, ptr %arrayidx977, align 4
  %cmp978 = icmp sgt i32 %568, %573
  br i1 %cmp978, label %land.lhs.true980, label %for.inc1383

land.lhs.true980:                                 ; preds = %land.lhs.true971
  %574 = load i32, ptr %x, align 4
  %575 = load ptr, ptr %r.addr, align 8
  %576 = load i32, ptr %i, align 4
  %sub981 = add nsw i32 %576, -3
  %577 = load i32, ptr %x_size.addr, align 4
  %mul982 = mul nsw i32 %sub981, %577
  %578 = load i32, ptr %j, align 4
  %add983 = add nsw i32 %mul982, %578
  %add984 = add nsw i32 %add983, 3
  %idxprom985 = sext i32 %add984 to i64
  %arrayidx986 = getelementptr inbounds i32, ptr %575, i64 %idxprom985
  %579 = load i32, ptr %arrayidx986, align 4
  %cmp987 = icmp sgt i32 %574, %579
  br i1 %cmp987, label %land.lhs.true989, label %for.inc1383

land.lhs.true989:                                 ; preds = %land.lhs.true980
  %580 = load i32, ptr %x, align 4
  %581 = load ptr, ptr %r.addr, align 8
  %582 = load i32, ptr %i, align 4
  %sub990 = add nsw i32 %582, -2
  %583 = load i32, ptr %x_size.addr, align 4
  %mul991 = mul nsw i32 %sub990, %583
  %584 = load i32, ptr %j, align 4
  %add992 = add nsw i32 %mul991, %584
  %sub993 = add nsw i32 %add992, -3
  %idxprom994 = sext i32 %sub993 to i64
  %arrayidx995 = getelementptr inbounds i32, ptr %581, i64 %idxprom994
  %585 = load i32, ptr %arrayidx995, align 4
  %cmp996 = icmp sgt i32 %580, %585
  br i1 %cmp996, label %land.lhs.true998, label %for.inc1383

land.lhs.true998:                                 ; preds = %land.lhs.true989
  %586 = load i32, ptr %x, align 4
  %587 = load ptr, ptr %r.addr, align 8
  %588 = load i32, ptr %i, align 4
  %sub999 = add nsw i32 %588, -2
  %589 = load i32, ptr %x_size.addr, align 4
  %mul1000 = mul nsw i32 %sub999, %589
  %590 = load i32, ptr %j, align 4
  %add1001 = add nsw i32 %mul1000, %590
  %sub1002 = add nsw i32 %add1001, -2
  %idxprom1003 = sext i32 %sub1002 to i64
  %arrayidx1004 = getelementptr inbounds i32, ptr %587, i64 %idxprom1003
  %591 = load i32, ptr %arrayidx1004, align 4
  %cmp1005 = icmp sgt i32 %586, %591
  br i1 %cmp1005, label %land.lhs.true1007, label %for.inc1383

land.lhs.true1007:                                ; preds = %land.lhs.true998
  %592 = load i32, ptr %x, align 4
  %593 = load ptr, ptr %r.addr, align 8
  %594 = load i32, ptr %i, align 4
  %sub1008 = add nsw i32 %594, -2
  %595 = load i32, ptr %x_size.addr, align 4
  %mul1009 = mul nsw i32 %sub1008, %595
  %596 = load i32, ptr %j, align 4
  %add1010 = add nsw i32 %mul1009, %596
  %sub1011 = add nsw i32 %add1010, -1
  %idxprom1012 = sext i32 %sub1011 to i64
  %arrayidx1013 = getelementptr inbounds i32, ptr %593, i64 %idxprom1012
  %597 = load i32, ptr %arrayidx1013, align 4
  %cmp1014 = icmp sgt i32 %592, %597
  br i1 %cmp1014, label %land.lhs.true1016, label %for.inc1383

land.lhs.true1016:                                ; preds = %land.lhs.true1007
  %598 = load i32, ptr %x, align 4
  %599 = load ptr, ptr %r.addr, align 8
  %600 = load i32, ptr %i, align 4
  %sub1017 = add nsw i32 %600, -2
  %601 = load i32, ptr %x_size.addr, align 4
  %mul1018 = mul nsw i32 %sub1017, %601
  %602 = load i32, ptr %j, align 4
  %add1019 = add nsw i32 %mul1018, %602
  %idxprom1020 = sext i32 %add1019 to i64
  %arrayidx1021 = getelementptr inbounds i32, ptr %599, i64 %idxprom1020
  %603 = load i32, ptr %arrayidx1021, align 4
  %cmp1022 = icmp sgt i32 %598, %603
  br i1 %cmp1022, label %land.lhs.true1024, label %for.inc1383

land.lhs.true1024:                                ; preds = %land.lhs.true1016
  %604 = load i32, ptr %x, align 4
  %605 = load ptr, ptr %r.addr, align 8
  %606 = load i32, ptr %i, align 4
  %sub1025 = add nsw i32 %606, -2
  %607 = load i32, ptr %x_size.addr, align 4
  %mul1026 = mul nsw i32 %sub1025, %607
  %608 = load i32, ptr %j, align 4
  %add1027 = add nsw i32 %mul1026, %608
  %add1028 = add nsw i32 %add1027, 1
  %idxprom1029 = sext i32 %add1028 to i64
  %arrayidx1030 = getelementptr inbounds i32, ptr %605, i64 %idxprom1029
  %609 = load i32, ptr %arrayidx1030, align 4
  %cmp1031 = icmp sgt i32 %604, %609
  br i1 %cmp1031, label %land.lhs.true1033, label %for.inc1383

land.lhs.true1033:                                ; preds = %land.lhs.true1024
  %610 = load i32, ptr %x, align 4
  %611 = load ptr, ptr %r.addr, align 8
  %612 = load i32, ptr %i, align 4
  %sub1034 = add nsw i32 %612, -2
  %613 = load i32, ptr %x_size.addr, align 4
  %mul1035 = mul nsw i32 %sub1034, %613
  %614 = load i32, ptr %j, align 4
  %add1036 = add nsw i32 %mul1035, %614
  %add1037 = add nsw i32 %add1036, 2
  %idxprom1038 = sext i32 %add1037 to i64
  %arrayidx1039 = getelementptr inbounds i32, ptr %611, i64 %idxprom1038
  %615 = load i32, ptr %arrayidx1039, align 4
  %cmp1040 = icmp sgt i32 %610, %615
  br i1 %cmp1040, label %land.lhs.true1042, label %for.inc1383

land.lhs.true1042:                                ; preds = %land.lhs.true1033
  %616 = load i32, ptr %x, align 4
  %617 = load ptr, ptr %r.addr, align 8
  %618 = load i32, ptr %i, align 4
  %sub1043 = add nsw i32 %618, -2
  %619 = load i32, ptr %x_size.addr, align 4
  %mul1044 = mul nsw i32 %sub1043, %619
  %620 = load i32, ptr %j, align 4
  %add1045 = add nsw i32 %mul1044, %620
  %add1046 = add nsw i32 %add1045, 3
  %idxprom1047 = sext i32 %add1046 to i64
  %arrayidx1048 = getelementptr inbounds i32, ptr %617, i64 %idxprom1047
  %621 = load i32, ptr %arrayidx1048, align 4
  %cmp1049 = icmp sgt i32 %616, %621
  br i1 %cmp1049, label %land.lhs.true1051, label %for.inc1383

land.lhs.true1051:                                ; preds = %land.lhs.true1042
  %622 = load i32, ptr %x, align 4
  %623 = load ptr, ptr %r.addr, align 8
  %624 = load i32, ptr %i, align 4
  %sub1052 = add nsw i32 %624, -1
  %625 = load i32, ptr %x_size.addr, align 4
  %mul1053 = mul nsw i32 %sub1052, %625
  %626 = load i32, ptr %j, align 4
  %add1054 = add nsw i32 %mul1053, %626
  %sub1055 = add nsw i32 %add1054, -3
  %idxprom1056 = sext i32 %sub1055 to i64
  %arrayidx1057 = getelementptr inbounds i32, ptr %623, i64 %idxprom1056
  %627 = load i32, ptr %arrayidx1057, align 4
  %cmp1058 = icmp sgt i32 %622, %627
  br i1 %cmp1058, label %land.lhs.true1060, label %for.inc1383

land.lhs.true1060:                                ; preds = %land.lhs.true1051
  %628 = load i32, ptr %x, align 4
  %629 = load ptr, ptr %r.addr, align 8
  %630 = load i32, ptr %i, align 4
  %sub1061 = add nsw i32 %630, -1
  %631 = load i32, ptr %x_size.addr, align 4
  %mul1062 = mul nsw i32 %sub1061, %631
  %632 = load i32, ptr %j, align 4
  %add1063 = add nsw i32 %mul1062, %632
  %sub1064 = add nsw i32 %add1063, -2
  %idxprom1065 = sext i32 %sub1064 to i64
  %arrayidx1066 = getelementptr inbounds i32, ptr %629, i64 %idxprom1065
  %633 = load i32, ptr %arrayidx1066, align 4
  %cmp1067 = icmp sgt i32 %628, %633
  br i1 %cmp1067, label %land.lhs.true1069, label %for.inc1383

land.lhs.true1069:                                ; preds = %land.lhs.true1060
  %634 = load i32, ptr %x, align 4
  %635 = load ptr, ptr %r.addr, align 8
  %636 = load i32, ptr %i, align 4
  %sub1070 = add nsw i32 %636, -1
  %637 = load i32, ptr %x_size.addr, align 4
  %mul1071 = mul nsw i32 %sub1070, %637
  %638 = load i32, ptr %j, align 4
  %add1072 = add nsw i32 %mul1071, %638
  %sub1073 = add nsw i32 %add1072, -1
  %idxprom1074 = sext i32 %sub1073 to i64
  %arrayidx1075 = getelementptr inbounds i32, ptr %635, i64 %idxprom1074
  %639 = load i32, ptr %arrayidx1075, align 4
  %cmp1076 = icmp sgt i32 %634, %639
  br i1 %cmp1076, label %land.lhs.true1078, label %for.inc1383

land.lhs.true1078:                                ; preds = %land.lhs.true1069
  %640 = load i32, ptr %x, align 4
  %641 = load ptr, ptr %r.addr, align 8
  %642 = load i32, ptr %i, align 4
  %sub1079 = add nsw i32 %642, -1
  %643 = load i32, ptr %x_size.addr, align 4
  %mul1080 = mul nsw i32 %sub1079, %643
  %644 = load i32, ptr %j, align 4
  %add1081 = add nsw i32 %mul1080, %644
  %idxprom1082 = sext i32 %add1081 to i64
  %arrayidx1083 = getelementptr inbounds i32, ptr %641, i64 %idxprom1082
  %645 = load i32, ptr %arrayidx1083, align 4
  %cmp1084 = icmp sgt i32 %640, %645
  br i1 %cmp1084, label %land.lhs.true1086, label %for.inc1383

land.lhs.true1086:                                ; preds = %land.lhs.true1078
  %646 = load i32, ptr %x, align 4
  %647 = load ptr, ptr %r.addr, align 8
  %648 = load i32, ptr %i, align 4
  %sub1087 = add nsw i32 %648, -1
  %649 = load i32, ptr %x_size.addr, align 4
  %mul1088 = mul nsw i32 %sub1087, %649
  %650 = load i32, ptr %j, align 4
  %add1089 = add nsw i32 %mul1088, %650
  %add1090 = add nsw i32 %add1089, 1
  %idxprom1091 = sext i32 %add1090 to i64
  %arrayidx1092 = getelementptr inbounds i32, ptr %647, i64 %idxprom1091
  %651 = load i32, ptr %arrayidx1092, align 4
  %cmp1093 = icmp sgt i32 %646, %651
  br i1 %cmp1093, label %land.lhs.true1095, label %for.inc1383

land.lhs.true1095:                                ; preds = %land.lhs.true1086
  %652 = load i32, ptr %x, align 4
  %653 = load ptr, ptr %r.addr, align 8
  %654 = load i32, ptr %i, align 4
  %sub1096 = add nsw i32 %654, -1
  %655 = load i32, ptr %x_size.addr, align 4
  %mul1097 = mul nsw i32 %sub1096, %655
  %656 = load i32, ptr %j, align 4
  %add1098 = add nsw i32 %mul1097, %656
  %add1099 = add nsw i32 %add1098, 2
  %idxprom1100 = sext i32 %add1099 to i64
  %arrayidx1101 = getelementptr inbounds i32, ptr %653, i64 %idxprom1100
  %657 = load i32, ptr %arrayidx1101, align 4
  %cmp1102 = icmp sgt i32 %652, %657
  br i1 %cmp1102, label %land.lhs.true1104, label %for.inc1383

land.lhs.true1104:                                ; preds = %land.lhs.true1095
  %658 = load i32, ptr %x, align 4
  %659 = load ptr, ptr %r.addr, align 8
  %660 = load i32, ptr %i, align 4
  %sub1105 = add nsw i32 %660, -1
  %661 = load i32, ptr %x_size.addr, align 4
  %mul1106 = mul nsw i32 %sub1105, %661
  %662 = load i32, ptr %j, align 4
  %add1107 = add nsw i32 %mul1106, %662
  %add1108 = add nsw i32 %add1107, 3
  %idxprom1109 = sext i32 %add1108 to i64
  %arrayidx1110 = getelementptr inbounds i32, ptr %659, i64 %idxprom1109
  %663 = load i32, ptr %arrayidx1110, align 4
  %cmp1111 = icmp sgt i32 %658, %663
  br i1 %cmp1111, label %land.lhs.true1113, label %for.inc1383

land.lhs.true1113:                                ; preds = %land.lhs.true1104
  %664 = load i32, ptr %x, align 4
  %665 = load ptr, ptr %r.addr, align 8
  %666 = load i32, ptr %i, align 4
  %667 = load i32, ptr %x_size.addr, align 4
  %mul1114 = mul nsw i32 %666, %667
  %668 = load i32, ptr %j, align 4
  %add1115 = add nsw i32 %mul1114, %668
  %sub1116 = add nsw i32 %add1115, -3
  %idxprom1117 = sext i32 %sub1116 to i64
  %arrayidx1118 = getelementptr inbounds i32, ptr %665, i64 %idxprom1117
  %669 = load i32, ptr %arrayidx1118, align 4
  %cmp1119 = icmp sgt i32 %664, %669
  br i1 %cmp1119, label %land.lhs.true1121, label %for.inc1383

land.lhs.true1121:                                ; preds = %land.lhs.true1113
  %670 = load i32, ptr %x, align 4
  %671 = load ptr, ptr %r.addr, align 8
  %672 = load i32, ptr %i, align 4
  %673 = load i32, ptr %x_size.addr, align 4
  %mul1122 = mul nsw i32 %672, %673
  %674 = load i32, ptr %j, align 4
  %add1123 = add nsw i32 %mul1122, %674
  %sub1124 = add nsw i32 %add1123, -2
  %idxprom1125 = sext i32 %sub1124 to i64
  %arrayidx1126 = getelementptr inbounds i32, ptr %671, i64 %idxprom1125
  %675 = load i32, ptr %arrayidx1126, align 4
  %cmp1127 = icmp sgt i32 %670, %675
  br i1 %cmp1127, label %land.lhs.true1129, label %for.inc1383

land.lhs.true1129:                                ; preds = %land.lhs.true1121
  %676 = load i32, ptr %x, align 4
  %677 = load ptr, ptr %r.addr, align 8
  %678 = load i32, ptr %i, align 4
  %679 = load i32, ptr %x_size.addr, align 4
  %mul1130 = mul nsw i32 %678, %679
  %680 = load i32, ptr %j, align 4
  %add1131 = add nsw i32 %mul1130, %680
  %sub1132 = add nsw i32 %add1131, -1
  %idxprom1133 = sext i32 %sub1132 to i64
  %arrayidx1134 = getelementptr inbounds i32, ptr %677, i64 %idxprom1133
  %681 = load i32, ptr %arrayidx1134, align 4
  %cmp1135 = icmp sgt i32 %676, %681
  br i1 %cmp1135, label %land.lhs.true1137, label %for.inc1383

land.lhs.true1137:                                ; preds = %land.lhs.true1129
  %682 = load i32, ptr %x, align 4
  %683 = load ptr, ptr %r.addr, align 8
  %684 = load i32, ptr %i, align 4
  %685 = load i32, ptr %x_size.addr, align 4
  %mul1138 = mul nsw i32 %684, %685
  %686 = load i32, ptr %j, align 4
  %add1139 = add nsw i32 %mul1138, %686
  %add1140 = add nsw i32 %add1139, 1
  %idxprom1141 = sext i32 %add1140 to i64
  %arrayidx1142 = getelementptr inbounds i32, ptr %683, i64 %idxprom1141
  %687 = load i32, ptr %arrayidx1142, align 4
  %cmp1143.not = icmp slt i32 %682, %687
  br i1 %cmp1143.not, label %for.inc1383, label %land.lhs.true1145

land.lhs.true1145:                                ; preds = %land.lhs.true1137
  %688 = load i32, ptr %x, align 4
  %689 = load ptr, ptr %r.addr, align 8
  %690 = load i32, ptr %i, align 4
  %691 = load i32, ptr %x_size.addr, align 4
  %mul1146 = mul nsw i32 %690, %691
  %692 = load i32, ptr %j, align 4
  %add1147 = add nsw i32 %mul1146, %692
  %add1148 = add nsw i32 %add1147, 2
  %idxprom1149 = sext i32 %add1148 to i64
  %arrayidx1150 = getelementptr inbounds i32, ptr %689, i64 %idxprom1149
  %693 = load i32, ptr %arrayidx1150, align 4
  %cmp1151.not = icmp slt i32 %688, %693
  br i1 %cmp1151.not, label %for.inc1383, label %land.lhs.true1153

land.lhs.true1153:                                ; preds = %land.lhs.true1145
  %694 = load i32, ptr %x, align 4
  %695 = load ptr, ptr %r.addr, align 8
  %696 = load i32, ptr %i, align 4
  %697 = load i32, ptr %x_size.addr, align 4
  %mul1154 = mul nsw i32 %696, %697
  %698 = load i32, ptr %j, align 4
  %add1155 = add nsw i32 %mul1154, %698
  %add1156 = add nsw i32 %add1155, 3
  %idxprom1157 = sext i32 %add1156 to i64
  %arrayidx1158 = getelementptr inbounds i32, ptr %695, i64 %idxprom1157
  %699 = load i32, ptr %arrayidx1158, align 4
  %cmp1159.not = icmp slt i32 %694, %699
  br i1 %cmp1159.not, label %for.inc1383, label %land.lhs.true1161

land.lhs.true1161:                                ; preds = %land.lhs.true1153
  %700 = load i32, ptr %x, align 4
  %701 = load ptr, ptr %r.addr, align 8
  %702 = load i32, ptr %i, align 4
  %add1162 = add nsw i32 %702, 1
  %703 = load i32, ptr %x_size.addr, align 4
  %mul1163 = mul nsw i32 %add1162, %703
  %704 = load i32, ptr %j, align 4
  %add1164 = add nsw i32 %mul1163, %704
  %sub1165 = add nsw i32 %add1164, -3
  %idxprom1166 = sext i32 %sub1165 to i64
  %arrayidx1167 = getelementptr inbounds i32, ptr %701, i64 %idxprom1166
  %705 = load i32, ptr %arrayidx1167, align 4
  %cmp1168.not = icmp slt i32 %700, %705
  br i1 %cmp1168.not, label %for.inc1383, label %land.lhs.true1170

land.lhs.true1170:                                ; preds = %land.lhs.true1161
  %706 = load i32, ptr %x, align 4
  %707 = load ptr, ptr %r.addr, align 8
  %708 = load i32, ptr %i, align 4
  %add1171 = add nsw i32 %708, 1
  %709 = load i32, ptr %x_size.addr, align 4
  %mul1172 = mul nsw i32 %add1171, %709
  %710 = load i32, ptr %j, align 4
  %add1173 = add nsw i32 %mul1172, %710
  %sub1174 = add nsw i32 %add1173, -2
  %idxprom1175 = sext i32 %sub1174 to i64
  %arrayidx1176 = getelementptr inbounds i32, ptr %707, i64 %idxprom1175
  %711 = load i32, ptr %arrayidx1176, align 4
  %cmp1177.not = icmp slt i32 %706, %711
  br i1 %cmp1177.not, label %for.inc1383, label %land.lhs.true1179

land.lhs.true1179:                                ; preds = %land.lhs.true1170
  %712 = load i32, ptr %x, align 4
  %713 = load ptr, ptr %r.addr, align 8
  %714 = load i32, ptr %i, align 4
  %add1180 = add nsw i32 %714, 1
  %715 = load i32, ptr %x_size.addr, align 4
  %mul1181 = mul nsw i32 %add1180, %715
  %716 = load i32, ptr %j, align 4
  %add1182 = add nsw i32 %mul1181, %716
  %sub1183 = add nsw i32 %add1182, -1
  %idxprom1184 = sext i32 %sub1183 to i64
  %arrayidx1185 = getelementptr inbounds i32, ptr %713, i64 %idxprom1184
  %717 = load i32, ptr %arrayidx1185, align 4
  %cmp1186.not = icmp slt i32 %712, %717
  br i1 %cmp1186.not, label %for.inc1383, label %land.lhs.true1188

land.lhs.true1188:                                ; preds = %land.lhs.true1179
  %718 = load i32, ptr %x, align 4
  %719 = load ptr, ptr %r.addr, align 8
  %720 = load i32, ptr %i, align 4
  %add1189 = add nsw i32 %720, 1
  %721 = load i32, ptr %x_size.addr, align 4
  %mul1190 = mul nsw i32 %add1189, %721
  %722 = load i32, ptr %j, align 4
  %add1191 = add nsw i32 %mul1190, %722
  %idxprom1192 = sext i32 %add1191 to i64
  %arrayidx1193 = getelementptr inbounds i32, ptr %719, i64 %idxprom1192
  %723 = load i32, ptr %arrayidx1193, align 4
  %cmp1194.not = icmp slt i32 %718, %723
  br i1 %cmp1194.not, label %for.inc1383, label %land.lhs.true1196

land.lhs.true1196:                                ; preds = %land.lhs.true1188
  %724 = load i32, ptr %x, align 4
  %725 = load ptr, ptr %r.addr, align 8
  %726 = load i32, ptr %i, align 4
  %add1197 = add nsw i32 %726, 1
  %727 = load i32, ptr %x_size.addr, align 4
  %mul1198 = mul nsw i32 %add1197, %727
  %728 = load i32, ptr %j, align 4
  %add1199 = add nsw i32 %mul1198, %728
  %add1200 = add nsw i32 %add1199, 1
  %idxprom1201 = sext i32 %add1200 to i64
  %arrayidx1202 = getelementptr inbounds i32, ptr %725, i64 %idxprom1201
  %729 = load i32, ptr %arrayidx1202, align 4
  %cmp1203.not = icmp slt i32 %724, %729
  br i1 %cmp1203.not, label %for.inc1383, label %land.lhs.true1205

land.lhs.true1205:                                ; preds = %land.lhs.true1196
  %730 = load i32, ptr %x, align 4
  %731 = load ptr, ptr %r.addr, align 8
  %732 = load i32, ptr %i, align 4
  %add1206 = add nsw i32 %732, 1
  %733 = load i32, ptr %x_size.addr, align 4
  %mul1207 = mul nsw i32 %add1206, %733
  %734 = load i32, ptr %j, align 4
  %add1208 = add nsw i32 %mul1207, %734
  %add1209 = add nsw i32 %add1208, 2
  %idxprom1210 = sext i32 %add1209 to i64
  %arrayidx1211 = getelementptr inbounds i32, ptr %731, i64 %idxprom1210
  %735 = load i32, ptr %arrayidx1211, align 4
  %cmp1212.not = icmp slt i32 %730, %735
  br i1 %cmp1212.not, label %for.inc1383, label %land.lhs.true1214

land.lhs.true1214:                                ; preds = %land.lhs.true1205
  %736 = load i32, ptr %x, align 4
  %737 = load ptr, ptr %r.addr, align 8
  %738 = load i32, ptr %i, align 4
  %add1215 = add nsw i32 %738, 1
  %739 = load i32, ptr %x_size.addr, align 4
  %mul1216 = mul nsw i32 %add1215, %739
  %740 = load i32, ptr %j, align 4
  %add1217 = add nsw i32 %mul1216, %740
  %add1218 = add nsw i32 %add1217, 3
  %idxprom1219 = sext i32 %add1218 to i64
  %arrayidx1220 = getelementptr inbounds i32, ptr %737, i64 %idxprom1219
  %741 = load i32, ptr %arrayidx1220, align 4
  %cmp1221.not = icmp slt i32 %736, %741
  br i1 %cmp1221.not, label %for.inc1383, label %land.lhs.true1223

land.lhs.true1223:                                ; preds = %land.lhs.true1214
  %742 = load i32, ptr %x, align 4
  %743 = load ptr, ptr %r.addr, align 8
  %744 = load i32, ptr %i, align 4
  %add1224 = add nsw i32 %744, 2
  %745 = load i32, ptr %x_size.addr, align 4
  %mul1225 = mul nsw i32 %add1224, %745
  %746 = load i32, ptr %j, align 4
  %add1226 = add nsw i32 %mul1225, %746
  %sub1227 = add nsw i32 %add1226, -3
  %idxprom1228 = sext i32 %sub1227 to i64
  %arrayidx1229 = getelementptr inbounds i32, ptr %743, i64 %idxprom1228
  %747 = load i32, ptr %arrayidx1229, align 4
  %cmp1230.not = icmp slt i32 %742, %747
  br i1 %cmp1230.not, label %for.inc1383, label %land.lhs.true1232

land.lhs.true1232:                                ; preds = %land.lhs.true1223
  %748 = load i32, ptr %x, align 4
  %749 = load ptr, ptr %r.addr, align 8
  %750 = load i32, ptr %i, align 4
  %add1233 = add nsw i32 %750, 2
  %751 = load i32, ptr %x_size.addr, align 4
  %mul1234 = mul nsw i32 %add1233, %751
  %752 = load i32, ptr %j, align 4
  %add1235 = add nsw i32 %mul1234, %752
  %sub1236 = add nsw i32 %add1235, -2
  %idxprom1237 = sext i32 %sub1236 to i64
  %arrayidx1238 = getelementptr inbounds i32, ptr %749, i64 %idxprom1237
  %753 = load i32, ptr %arrayidx1238, align 4
  %cmp1239.not = icmp slt i32 %748, %753
  br i1 %cmp1239.not, label %for.inc1383, label %land.lhs.true1241

land.lhs.true1241:                                ; preds = %land.lhs.true1232
  %754 = load i32, ptr %x, align 4
  %755 = load ptr, ptr %r.addr, align 8
  %756 = load i32, ptr %i, align 4
  %add1242 = add nsw i32 %756, 2
  %757 = load i32, ptr %x_size.addr, align 4
  %mul1243 = mul nsw i32 %add1242, %757
  %758 = load i32, ptr %j, align 4
  %add1244 = add nsw i32 %mul1243, %758
  %sub1245 = add nsw i32 %add1244, -1
  %idxprom1246 = sext i32 %sub1245 to i64
  %arrayidx1247 = getelementptr inbounds i32, ptr %755, i64 %idxprom1246
  %759 = load i32, ptr %arrayidx1247, align 4
  %cmp1248.not = icmp slt i32 %754, %759
  br i1 %cmp1248.not, label %for.inc1383, label %land.lhs.true1250

land.lhs.true1250:                                ; preds = %land.lhs.true1241
  %760 = load i32, ptr %x, align 4
  %761 = load ptr, ptr %r.addr, align 8
  %762 = load i32, ptr %i, align 4
  %add1251 = add nsw i32 %762, 2
  %763 = load i32, ptr %x_size.addr, align 4
  %mul1252 = mul nsw i32 %add1251, %763
  %764 = load i32, ptr %j, align 4
  %add1253 = add nsw i32 %mul1252, %764
  %idxprom1254 = sext i32 %add1253 to i64
  %arrayidx1255 = getelementptr inbounds i32, ptr %761, i64 %idxprom1254
  %765 = load i32, ptr %arrayidx1255, align 4
  %cmp1256.not = icmp slt i32 %760, %765
  br i1 %cmp1256.not, label %for.inc1383, label %land.lhs.true1258

land.lhs.true1258:                                ; preds = %land.lhs.true1250
  %766 = load i32, ptr %x, align 4
  %767 = load ptr, ptr %r.addr, align 8
  %768 = load i32, ptr %i, align 4
  %add1259 = add nsw i32 %768, 2
  %769 = load i32, ptr %x_size.addr, align 4
  %mul1260 = mul nsw i32 %add1259, %769
  %770 = load i32, ptr %j, align 4
  %add1261 = add nsw i32 %mul1260, %770
  %add1262 = add nsw i32 %add1261, 1
  %idxprom1263 = sext i32 %add1262 to i64
  %arrayidx1264 = getelementptr inbounds i32, ptr %767, i64 %idxprom1263
  %771 = load i32, ptr %arrayidx1264, align 4
  %cmp1265.not = icmp slt i32 %766, %771
  br i1 %cmp1265.not, label %for.inc1383, label %land.lhs.true1267

land.lhs.true1267:                                ; preds = %land.lhs.true1258
  %772 = load i32, ptr %x, align 4
  %773 = load ptr, ptr %r.addr, align 8
  %774 = load i32, ptr %i, align 4
  %add1268 = add nsw i32 %774, 2
  %775 = load i32, ptr %x_size.addr, align 4
  %mul1269 = mul nsw i32 %add1268, %775
  %776 = load i32, ptr %j, align 4
  %add1270 = add nsw i32 %mul1269, %776
  %add1271 = add nsw i32 %add1270, 2
  %idxprom1272 = sext i32 %add1271 to i64
  %arrayidx1273 = getelementptr inbounds i32, ptr %773, i64 %idxprom1272
  %777 = load i32, ptr %arrayidx1273, align 4
  %cmp1274.not = icmp slt i32 %772, %777
  br i1 %cmp1274.not, label %for.inc1383, label %land.lhs.true1276

land.lhs.true1276:                                ; preds = %land.lhs.true1267
  %778 = load i32, ptr %x, align 4
  %779 = load ptr, ptr %r.addr, align 8
  %780 = load i32, ptr %i, align 4
  %add1277 = add nsw i32 %780, 2
  %781 = load i32, ptr %x_size.addr, align 4
  %mul1278 = mul nsw i32 %add1277, %781
  %782 = load i32, ptr %j, align 4
  %add1279 = add nsw i32 %mul1278, %782
  %add1280 = add nsw i32 %add1279, 3
  %idxprom1281 = sext i32 %add1280 to i64
  %arrayidx1282 = getelementptr inbounds i32, ptr %779, i64 %idxprom1281
  %783 = load i32, ptr %arrayidx1282, align 4
  %cmp1283.not = icmp slt i32 %778, %783
  br i1 %cmp1283.not, label %for.inc1383, label %land.lhs.true1285

land.lhs.true1285:                                ; preds = %land.lhs.true1276
  %784 = load i32, ptr %x, align 4
  %785 = load ptr, ptr %r.addr, align 8
  %786 = load i32, ptr %i, align 4
  %add1286 = add nsw i32 %786, 3
  %787 = load i32, ptr %x_size.addr, align 4
  %mul1287 = mul nsw i32 %add1286, %787
  %788 = load i32, ptr %j, align 4
  %add1288 = add nsw i32 %mul1287, %788
  %sub1289 = add nsw i32 %add1288, -3
  %idxprom1290 = sext i32 %sub1289 to i64
  %arrayidx1291 = getelementptr inbounds i32, ptr %785, i64 %idxprom1290
  %789 = load i32, ptr %arrayidx1291, align 4
  %cmp1292.not = icmp slt i32 %784, %789
  br i1 %cmp1292.not, label %for.inc1383, label %land.lhs.true1294

land.lhs.true1294:                                ; preds = %land.lhs.true1285
  %790 = load i32, ptr %x, align 4
  %791 = load ptr, ptr %r.addr, align 8
  %792 = load i32, ptr %i, align 4
  %add1295 = add nsw i32 %792, 3
  %793 = load i32, ptr %x_size.addr, align 4
  %mul1296 = mul nsw i32 %add1295, %793
  %794 = load i32, ptr %j, align 4
  %add1297 = add nsw i32 %mul1296, %794
  %sub1298 = add nsw i32 %add1297, -2
  %idxprom1299 = sext i32 %sub1298 to i64
  %arrayidx1300 = getelementptr inbounds i32, ptr %791, i64 %idxprom1299
  %795 = load i32, ptr %arrayidx1300, align 4
  %cmp1301.not = icmp slt i32 %790, %795
  br i1 %cmp1301.not, label %for.inc1383, label %land.lhs.true1303

land.lhs.true1303:                                ; preds = %land.lhs.true1294
  %796 = load i32, ptr %x, align 4
  %797 = load ptr, ptr %r.addr, align 8
  %798 = load i32, ptr %i, align 4
  %add1304 = add nsw i32 %798, 3
  %799 = load i32, ptr %x_size.addr, align 4
  %mul1305 = mul nsw i32 %add1304, %799
  %800 = load i32, ptr %j, align 4
  %add1306 = add nsw i32 %mul1305, %800
  %sub1307 = add nsw i32 %add1306, -1
  %idxprom1308 = sext i32 %sub1307 to i64
  %arrayidx1309 = getelementptr inbounds i32, ptr %797, i64 %idxprom1308
  %801 = load i32, ptr %arrayidx1309, align 4
  %cmp1310.not = icmp slt i32 %796, %801
  br i1 %cmp1310.not, label %for.inc1383, label %land.lhs.true1312

land.lhs.true1312:                                ; preds = %land.lhs.true1303
  %802 = load i32, ptr %x, align 4
  %803 = load ptr, ptr %r.addr, align 8
  %804 = load i32, ptr %i, align 4
  %add1313 = add nsw i32 %804, 3
  %805 = load i32, ptr %x_size.addr, align 4
  %mul1314 = mul nsw i32 %add1313, %805
  %806 = load i32, ptr %j, align 4
  %add1315 = add nsw i32 %mul1314, %806
  %idxprom1316 = sext i32 %add1315 to i64
  %arrayidx1317 = getelementptr inbounds i32, ptr %803, i64 %idxprom1316
  %807 = load i32, ptr %arrayidx1317, align 4
  %cmp1318.not = icmp slt i32 %802, %807
  br i1 %cmp1318.not, label %for.inc1383, label %land.lhs.true1320

land.lhs.true1320:                                ; preds = %land.lhs.true1312
  %808 = load i32, ptr %x, align 4
  %809 = load ptr, ptr %r.addr, align 8
  %810 = load i32, ptr %i, align 4
  %add1321 = add nsw i32 %810, 3
  %811 = load i32, ptr %x_size.addr, align 4
  %mul1322 = mul nsw i32 %add1321, %811
  %812 = load i32, ptr %j, align 4
  %add1323 = add nsw i32 %mul1322, %812
  %add1324 = add nsw i32 %add1323, 1
  %idxprom1325 = sext i32 %add1324 to i64
  %arrayidx1326 = getelementptr inbounds i32, ptr %809, i64 %idxprom1325
  %813 = load i32, ptr %arrayidx1326, align 4
  %cmp1327.not = icmp slt i32 %808, %813
  br i1 %cmp1327.not, label %for.inc1383, label %land.lhs.true1329

land.lhs.true1329:                                ; preds = %land.lhs.true1320
  %814 = load i32, ptr %x, align 4
  %815 = load ptr, ptr %r.addr, align 8
  %816 = load i32, ptr %i, align 4
  %add1330 = add nsw i32 %816, 3
  %817 = load i32, ptr %x_size.addr, align 4
  %mul1331 = mul nsw i32 %add1330, %817
  %818 = load i32, ptr %j, align 4
  %add1332 = add nsw i32 %mul1331, %818
  %add1333 = add nsw i32 %add1332, 2
  %idxprom1334 = sext i32 %add1333 to i64
  %arrayidx1335 = getelementptr inbounds i32, ptr %815, i64 %idxprom1334
  %819 = load i32, ptr %arrayidx1335, align 4
  %cmp1336.not = icmp slt i32 %814, %819
  br i1 %cmp1336.not, label %for.inc1383, label %land.lhs.true1338

land.lhs.true1338:                                ; preds = %land.lhs.true1329
  %820 = load i32, ptr %x, align 4
  %821 = load ptr, ptr %r.addr, align 8
  %822 = load i32, ptr %i, align 4
  %add1339 = add nsw i32 %822, 3
  %823 = load i32, ptr %x_size.addr, align 4
  %mul1340 = mul nsw i32 %add1339, %823
  %824 = load i32, ptr %j, align 4
  %add1341 = add nsw i32 %mul1340, %824
  %add1342 = add nsw i32 %add1341, 3
  %idxprom1343 = sext i32 %add1342 to i64
  %arrayidx1344 = getelementptr inbounds i32, ptr %821, i64 %idxprom1343
  %825 = load i32, ptr %arrayidx1344, align 4
  %cmp1345.not = icmp slt i32 %820, %825
  br i1 %cmp1345.not, label %for.inc1383, label %if.then1347

if.then1347:                                      ; preds = %land.lhs.true1338
  %826 = load ptr, ptr %corner_list.addr, align 8
  %827 = load i32, ptr %n, align 4
  %idxprom1348 = sext i32 %827 to i64
  %info = getelementptr inbounds %struct.anon, ptr %826, i64 %idxprom1348, i32 2
  store i32 0, ptr %info, align 4
  %828 = load i32, ptr %j, align 4
  %idxprom1350 = sext i32 %827 to i64
  %arrayidx1351 = getelementptr inbounds %struct.anon, ptr %826, i64 %idxprom1350
  store i32 %828, ptr %arrayidx1351, align 4
  %829 = load i32, ptr %i, align 4
  %830 = load ptr, ptr %corner_list.addr, align 8
  %831 = load i32, ptr %n, align 4
  %idxprom1353 = sext i32 %831 to i64
  %y1355 = getelementptr inbounds %struct.anon, ptr %830, i64 %idxprom1353, i32 1
  store i32 %829, ptr %y1355, align 4
  %832 = load ptr, ptr %cgx, align 8
  %833 = load i32, ptr %i, align 4
  %834 = load i32, ptr %x_size.addr, align 4
  %mul1356 = mul nsw i32 %833, %834
  %835 = load i32, ptr %j, align 4
  %add1357 = add nsw i32 %mul1356, %835
  %idxprom1358 = sext i32 %add1357 to i64
  %arrayidx1359 = getelementptr inbounds i32, ptr %832, i64 %idxprom1358
  %836 = load i32, ptr %arrayidx1359, align 4
  %837 = load ptr, ptr %corner_list.addr, align 8
  %838 = load i32, ptr %n, align 4
  %idxprom1360 = sext i32 %838 to i64
  %dx = getelementptr inbounds %struct.anon, ptr %837, i64 %idxprom1360, i32 3
  store i32 %836, ptr %dx, align 4
  %839 = load ptr, ptr %cgy, align 8
  %840 = load i32, ptr %i, align 4
  %841 = load i32, ptr %x_size.addr, align 4
  %mul1362 = mul nsw i32 %840, %841
  %842 = load i32, ptr %j, align 4
  %add1363 = add nsw i32 %mul1362, %842
  %idxprom1364 = sext i32 %add1363 to i64
  %arrayidx1365 = getelementptr inbounds i32, ptr %839, i64 %idxprom1364
  %843 = load i32, ptr %arrayidx1365, align 4
  %844 = load ptr, ptr %corner_list.addr, align 8
  %845 = load i32, ptr %n, align 4
  %idxprom1366 = sext i32 %845 to i64
  %dy = getelementptr inbounds %struct.anon, ptr %844, i64 %idxprom1366, i32 4
  store i32 %843, ptr %dy, align 4
  %846 = load ptr, ptr %in.addr, align 8
  %847 = load i32, ptr %i, align 4
  %848 = load i32, ptr %x_size.addr, align 4
  %mul1368 = mul nsw i32 %847, %848
  %849 = load i32, ptr %j, align 4
  %add1369 = add nsw i32 %mul1368, %849
  %idxprom1370 = sext i32 %add1369 to i64
  %arrayidx1371 = getelementptr inbounds i8, ptr %846, i64 %idxprom1370
  %850 = load i8, ptr %arrayidx1371, align 1
  %conv1372 = zext i8 %850 to i32
  %851 = load ptr, ptr %corner_list.addr, align 8
  %852 = load i32, ptr %n, align 4
  %idxprom1373 = sext i32 %852 to i64
  %I = getelementptr inbounds %struct.anon, ptr %851, i64 %idxprom1373, i32 5
  store i32 %conv1372, ptr %I, align 4
  %inc1375 = add nsw i32 %852, 1
  store i32 %inc1375, ptr %n, align 4
  %cmp1376 = icmp eq i32 %inc1375, 15000
  br i1 %cmp1376, label %if.then1378, label %for.inc1383

if.then1378:                                      ; preds = %if.then1347
  %853 = load ptr, ptr @__stderrp, align 8
  %854 = call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %853)
  call void @exit(i32 noundef 1) #8
  unreachable

for.inc1383:                                      ; preds = %for.body921, %if.then1347, %land.lhs.true1338, %land.lhs.true1329, %land.lhs.true1320, %land.lhs.true1312, %land.lhs.true1303, %land.lhs.true1294, %land.lhs.true1285, %land.lhs.true1276, %land.lhs.true1267, %land.lhs.true1258, %land.lhs.true1250, %land.lhs.true1241, %land.lhs.true1232, %land.lhs.true1223, %land.lhs.true1214, %land.lhs.true1205, %land.lhs.true1196, %land.lhs.true1188, %land.lhs.true1179, %land.lhs.true1170, %land.lhs.true1161, %land.lhs.true1153, %land.lhs.true1145, %land.lhs.true1137, %land.lhs.true1129, %land.lhs.true1121, %land.lhs.true1113, %land.lhs.true1104, %land.lhs.true1095, %land.lhs.true1086, %land.lhs.true1078, %land.lhs.true1069, %land.lhs.true1060, %land.lhs.true1051, %land.lhs.true1042, %land.lhs.true1033, %land.lhs.true1024, %land.lhs.true1016, %land.lhs.true1007, %land.lhs.true998, %land.lhs.true989, %land.lhs.true980, %land.lhs.true971, %land.lhs.true962, %land.lhs.true954, %land.lhs.true945, %land.lhs.true, %if.then928
  %855 = load i32, ptr %j, align 4
  %inc1384 = add nsw i32 %855, 1
  br label %for.cond917, !llvm.loop !45

for.inc1386:                                      ; preds = %for.cond917
  %856 = load i32, ptr %i, align 4
  %inc1387 = add nsw i32 %856, 1
  br label %for.cond912, !llvm.loop !46

for.end1388:                                      ; preds = %for.cond912
  %857 = load ptr, ptr %corner_list.addr, align 8
  %858 = load i32, ptr %n, align 4
  %idxprom1389 = sext i32 %858 to i64
  %info1391 = getelementptr inbounds %struct.anon, ptr %857, i64 %idxprom1389, i32 2
  store i32 7, ptr %info1391, align 4
  %859 = load ptr, ptr %cgx, align 8
  call void @free(ptr noundef %859) #9
  %860 = load ptr, ptr %cgy, align 8
  call void @free(ptr noundef %860) #9
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #6

; Function Attrs: nounwind ssp uwtable
define void @susan_corners_quick(ptr noundef %in, ptr noundef %r, ptr noundef %bp, i32 noundef %max_no, ptr noundef %corner_list, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %corner_list.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %max_no, ptr %max_no.addr, align 4
  store ptr %corner_list, ptr %corner_list.addr, align 8
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %x_size, %y_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %0 = load ptr, ptr %r.addr, align 8
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %r, i32 noundef 0, i64 noundef %mul1, i64 noundef %1) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc357, %entry
  %storemerge = phi i32 [ 7, %entry ], [ %inc358, %for.inc357 ]
  store i32 %storemerge, ptr %i, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %sub = add nsw i32 %2, -7
  %cmp = icmp slt i32 %storemerge, %sub
  br i1 %cmp, label %for.cond3, label %for.end359

for.cond3:                                        ; preds = %for.cond, %for.inc
  %storemerge3 = phi i32 [ %inc, %for.inc ], [ 7, %for.cond ]
  store i32 %storemerge3, ptr %j, align 4
  %3 = load i32, ptr %x_size.addr, align 4
  %sub4 = add nsw i32 %3, -7
  %cmp5 = icmp slt i32 %storemerge3, %sub4
  br i1 %cmp5, label %for.body7, label %for.inc357

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load i32, ptr %i, align 4
  %sub8 = add nsw i32 %5, -3
  %6 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %6
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %7 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %7 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %8 = load ptr, ptr %bp.addr, align 8
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %10, %11
  %12 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %12
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  %idx.ext15 = zext i8 %13 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %8, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %15 = load i8, ptr %14, align 1
  %idx.ext18 = zext i8 %15 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %16 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %16 to i32
  %17 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %17, %conv20
  store i32 %add21, ptr %n, align 4
  %18 = load ptr, ptr %cp, align 8
  %19 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %20 = load i8, ptr %19, align 1
  %idx.ext24 = zext i8 %20 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %18, i64 %idx.neg25
  %21 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %21 to i32
  %22 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %22, %conv27
  store i32 %add28, ptr %n, align 4
  %23 = load ptr, ptr %cp, align 8
  %24 = load ptr, ptr %p, align 8
  %25 = load i8, ptr %24, align 1
  %idx.ext30 = zext i8 %25 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %23, i64 %idx.neg31
  %26 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %26 to i32
  %27 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %27, %conv33
  store i32 %add34, ptr %n, align 4
  %28 = load i32, ptr %x_size.addr, align 4
  %sub35 = add nsw i32 %28, -3
  %29 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %29, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %30 = load ptr, ptr %cp, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 1
  store ptr %incdec.ptr38, ptr %p, align 8
  %31 = load i8, ptr %add.ptr37, align 1
  %idx.ext40 = zext i8 %31 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %30, i64 %idx.neg41
  %32 = load i8, ptr %add.ptr42, align 1
  %conv43 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add44 = add nsw i32 %33, %conv43
  store i32 %add44, ptr %n, align 4
  %34 = load ptr, ptr %cp, align 8
  %35 = load ptr, ptr %p, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr45, ptr %p, align 8
  %36 = load i8, ptr %35, align 1
  %idx.ext47 = zext i8 %36 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %34, i64 %idx.neg48
  %37 = load i8, ptr %add.ptr49, align 1
  %conv50 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4
  %add51 = add nsw i32 %38, %conv50
  store i32 %add51, ptr %n, align 4
  %39 = load ptr, ptr %cp, align 8
  %40 = load ptr, ptr %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %incdec.ptr52, ptr %p, align 8
  %41 = load i8, ptr %40, align 1
  %idx.ext54 = zext i8 %41 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %39, i64 %idx.neg55
  %42 = load i8, ptr %add.ptr56, align 1
  %conv57 = zext i8 %42 to i32
  %43 = load i32, ptr %n, align 4
  %add58 = add nsw i32 %43, %conv57
  store i32 %add58, ptr %n, align 4
  %44 = load ptr, ptr %cp, align 8
  %45 = load ptr, ptr %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr59, ptr %p, align 8
  %46 = load i8, ptr %45, align 1
  %idx.ext61 = zext i8 %46 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %44, i64 %idx.neg62
  %47 = load i8, ptr %add.ptr63, align 1
  %conv64 = zext i8 %47 to i32
  %48 = load i32, ptr %n, align 4
  %add65 = add nsw i32 %48, %conv64
  store i32 %add65, ptr %n, align 4
  %49 = load ptr, ptr %cp, align 8
  %50 = load ptr, ptr %p, align 8
  %51 = load i8, ptr %50, align 1
  %idx.ext67 = zext i8 %51 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %49, i64 %idx.neg68
  %52 = load i8, ptr %add.ptr69, align 1
  %conv70 = zext i8 %52 to i32
  %53 = load i32, ptr %n, align 4
  %add71 = add nsw i32 %53, %conv70
  store i32 %add71, ptr %n, align 4
  %54 = load i32, ptr %x_size.addr, align 4
  %sub72 = add nsw i32 %54, -5
  %55 = load ptr, ptr %p, align 8
  %idx.ext73 = sext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %55, i64 %idx.ext73
  store ptr %add.ptr74, ptr %p, align 8
  %56 = load ptr, ptr %cp, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %add.ptr74, i64 1
  store ptr %incdec.ptr75, ptr %p, align 8
  %57 = load i8, ptr %add.ptr74, align 1
  %idx.ext77 = zext i8 %57 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %56, i64 %idx.neg78
  %58 = load i8, ptr %add.ptr79, align 1
  %conv80 = zext i8 %58 to i32
  %59 = load i32, ptr %n, align 4
  %add81 = add nsw i32 %59, %conv80
  store i32 %add81, ptr %n, align 4
  %60 = load ptr, ptr %cp, align 8
  %61 = load ptr, ptr %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr82, ptr %p, align 8
  %62 = load i8, ptr %61, align 1
  %idx.ext84 = zext i8 %62 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %60, i64 %idx.neg85
  %63 = load i8, ptr %add.ptr86, align 1
  %conv87 = zext i8 %63 to i32
  %64 = load i32, ptr %n, align 4
  %add88 = add nsw i32 %64, %conv87
  store i32 %add88, ptr %n, align 4
  %65 = load ptr, ptr %cp, align 8
  %66 = load ptr, ptr %p, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr89, ptr %p, align 8
  %67 = load i8, ptr %66, align 1
  %idx.ext91 = zext i8 %67 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %65, i64 %idx.neg92
  %68 = load i8, ptr %add.ptr93, align 1
  %conv94 = zext i8 %68 to i32
  %69 = load i32, ptr %n, align 4
  %add95 = add nsw i32 %69, %conv94
  store i32 %add95, ptr %n, align 4
  %70 = load ptr, ptr %cp, align 8
  %71 = load ptr, ptr %p, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %incdec.ptr96, ptr %p, align 8
  %72 = load i8, ptr %71, align 1
  %idx.ext98 = zext i8 %72 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %70, i64 %idx.neg99
  %73 = load i8, ptr %add.ptr100, align 1
  %conv101 = zext i8 %73 to i32
  %74 = load i32, ptr %n, align 4
  %add102 = add nsw i32 %74, %conv101
  store i32 %add102, ptr %n, align 4
  %75 = load ptr, ptr %cp, align 8
  %76 = load ptr, ptr %p, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr103, ptr %p, align 8
  %77 = load i8, ptr %76, align 1
  %idx.ext105 = zext i8 %77 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %75, i64 %idx.neg106
  %78 = load i8, ptr %add.ptr107, align 1
  %conv108 = zext i8 %78 to i32
  %79 = load i32, ptr %n, align 4
  %add109 = add nsw i32 %79, %conv108
  store i32 %add109, ptr %n, align 4
  %80 = load ptr, ptr %cp, align 8
  %81 = load ptr, ptr %p, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %incdec.ptr110, ptr %p, align 8
  %82 = load i8, ptr %81, align 1
  %idx.ext112 = zext i8 %82 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %80, i64 %idx.neg113
  %83 = load i8, ptr %add.ptr114, align 1
  %conv115 = zext i8 %83 to i32
  %84 = load i32, ptr %n, align 4
  %add116 = add nsw i32 %84, %conv115
  store i32 %add116, ptr %n, align 4
  %85 = load ptr, ptr %cp, align 8
  %86 = load ptr, ptr %p, align 8
  %87 = load i8, ptr %86, align 1
  %idx.ext118 = zext i8 %87 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %85, i64 %idx.neg119
  %88 = load i8, ptr %add.ptr120, align 1
  %conv121 = zext i8 %88 to i32
  %89 = load i32, ptr %n, align 4
  %add122 = add nsw i32 %89, %conv121
  store i32 %add122, ptr %n, align 4
  %90 = load i32, ptr %x_size.addr, align 4
  %sub123 = add nsw i32 %90, -6
  %91 = load ptr, ptr %p, align 8
  %idx.ext124 = sext i32 %sub123 to i64
  %add.ptr125 = getelementptr inbounds i8, ptr %91, i64 %idx.ext124
  store ptr %add.ptr125, ptr %p, align 8
  %92 = load ptr, ptr %cp, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %add.ptr125, i64 1
  store ptr %incdec.ptr126, ptr %p, align 8
  %93 = load i8, ptr %add.ptr125, align 1
  %idx.ext128 = zext i8 %93 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %92, i64 %idx.neg129
  %94 = load i8, ptr %add.ptr130, align 1
  %conv131 = zext i8 %94 to i32
  %95 = load i32, ptr %n, align 4
  %add132 = add nsw i32 %95, %conv131
  store i32 %add132, ptr %n, align 4
  %96 = load ptr, ptr %cp, align 8
  %97 = load ptr, ptr %p, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %incdec.ptr133, ptr %p, align 8
  %98 = load i8, ptr %97, align 1
  %idx.ext135 = zext i8 %98 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %96, i64 %idx.neg136
  %99 = load i8, ptr %add.ptr137, align 1
  %conv138 = zext i8 %99 to i32
  %100 = load i32, ptr %n, align 4
  %add139 = add nsw i32 %100, %conv138
  store i32 %add139, ptr %n, align 4
  %101 = load ptr, ptr %cp, align 8
  %102 = load ptr, ptr %p, align 8
  %103 = load i8, ptr %102, align 1
  %idx.ext141 = zext i8 %103 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %101, i64 %idx.neg142
  %104 = load i8, ptr %add.ptr143, align 1
  %conv144 = zext i8 %104 to i32
  %105 = load i32, ptr %n, align 4
  %add145 = add nsw i32 %105, %conv144
  store i32 %add145, ptr %n, align 4
  %106 = load i32, ptr %max_no.addr, align 4
  %cmp146 = icmp slt i32 %add145, %106
  br i1 %cmp146, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %107 = load ptr, ptr %p, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %107, i64 2
  store ptr %add.ptr148, ptr %p, align 8
  %108 = load ptr, ptr %cp, align 8
  %incdec.ptr149 = getelementptr inbounds i8, ptr %107, i64 3
  store ptr %incdec.ptr149, ptr %p, align 8
  %109 = load i8, ptr %add.ptr148, align 1
  %idx.ext151 = zext i8 %109 to i64
  %idx.neg152 = sub nsw i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, ptr %108, i64 %idx.neg152
  %110 = load i8, ptr %add.ptr153, align 1
  %conv154 = zext i8 %110 to i32
  %111 = load i32, ptr %n, align 4
  %add155 = add nsw i32 %111, %conv154
  store i32 %add155, ptr %n, align 4
  %112 = load i32, ptr %max_no.addr, align 4
  %cmp156 = icmp slt i32 %add155, %112
  br i1 %cmp156, label %if.then158, label %for.inc

if.then158:                                       ; preds = %if.then
  %113 = load ptr, ptr %cp, align 8
  %114 = load ptr, ptr %p, align 8
  %incdec.ptr159 = getelementptr inbounds i8, ptr %114, i64 1
  store ptr %incdec.ptr159, ptr %p, align 8
  %115 = load i8, ptr %114, align 1
  %idx.ext161 = zext i8 %115 to i64
  %idx.neg162 = sub nsw i64 0, %idx.ext161
  %add.ptr163 = getelementptr inbounds i8, ptr %113, i64 %idx.neg162
  %116 = load i8, ptr %add.ptr163, align 1
  %conv164 = zext i8 %116 to i32
  %117 = load i32, ptr %n, align 4
  %add165 = add nsw i32 %117, %conv164
  store i32 %add165, ptr %n, align 4
  %118 = load i32, ptr %max_no.addr, align 4
  %cmp166 = icmp slt i32 %add165, %118
  br i1 %cmp166, label %if.then168, label %for.inc

if.then168:                                       ; preds = %if.then158
  %119 = load ptr, ptr %cp, align 8
  %120 = load ptr, ptr %p, align 8
  %121 = load i8, ptr %120, align 1
  %idx.ext170 = zext i8 %121 to i64
  %idx.neg171 = sub nsw i64 0, %idx.ext170
  %add.ptr172 = getelementptr inbounds i8, ptr %119, i64 %idx.neg171
  %122 = load i8, ptr %add.ptr172, align 1
  %conv173 = zext i8 %122 to i32
  %123 = load i32, ptr %n, align 4
  %add174 = add nsw i32 %123, %conv173
  store i32 %add174, ptr %n, align 4
  %124 = load i32, ptr %max_no.addr, align 4
  %cmp175 = icmp slt i32 %add174, %124
  br i1 %cmp175, label %if.then177, label %for.inc

if.then177:                                       ; preds = %if.then168
  %125 = load i32, ptr %x_size.addr, align 4
  %sub178 = add nsw i32 %125, -6
  %126 = load ptr, ptr %p, align 8
  %idx.ext179 = sext i32 %sub178 to i64
  %add.ptr180 = getelementptr inbounds i8, ptr %126, i64 %idx.ext179
  store ptr %add.ptr180, ptr %p, align 8
  %127 = load ptr, ptr %cp, align 8
  %incdec.ptr181 = getelementptr inbounds i8, ptr %add.ptr180, i64 1
  store ptr %incdec.ptr181, ptr %p, align 8
  %128 = load i8, ptr %add.ptr180, align 1
  %idx.ext183 = zext i8 %128 to i64
  %idx.neg184 = sub nsw i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %127, i64 %idx.neg184
  %129 = load i8, ptr %add.ptr185, align 1
  %conv186 = zext i8 %129 to i32
  %130 = load i32, ptr %n, align 4
  %add187 = add nsw i32 %130, %conv186
  store i32 %add187, ptr %n, align 4
  %131 = load i32, ptr %max_no.addr, align 4
  %cmp188 = icmp slt i32 %add187, %131
  br i1 %cmp188, label %if.then190, label %for.inc

if.then190:                                       ; preds = %if.then177
  %132 = load ptr, ptr %cp, align 8
  %133 = load ptr, ptr %p, align 8
  %incdec.ptr191 = getelementptr inbounds i8, ptr %133, i64 1
  store ptr %incdec.ptr191, ptr %p, align 8
  %134 = load i8, ptr %133, align 1
  %idx.ext193 = zext i8 %134 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %132, i64 %idx.neg194
  %135 = load i8, ptr %add.ptr195, align 1
  %conv196 = zext i8 %135 to i32
  %136 = load i32, ptr %n, align 4
  %add197 = add nsw i32 %136, %conv196
  store i32 %add197, ptr %n, align 4
  %137 = load i32, ptr %max_no.addr, align 4
  %cmp198 = icmp slt i32 %add197, %137
  br i1 %cmp198, label %if.then200, label %for.inc

if.then200:                                       ; preds = %if.then190
  %138 = load ptr, ptr %cp, align 8
  %139 = load ptr, ptr %p, align 8
  %incdec.ptr201 = getelementptr inbounds i8, ptr %139, i64 1
  store ptr %incdec.ptr201, ptr %p, align 8
  %140 = load i8, ptr %139, align 1
  %idx.ext203 = zext i8 %140 to i64
  %idx.neg204 = sub nsw i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i8, ptr %138, i64 %idx.neg204
  %141 = load i8, ptr %add.ptr205, align 1
  %conv206 = zext i8 %141 to i32
  %142 = load i32, ptr %n, align 4
  %add207 = add nsw i32 %142, %conv206
  store i32 %add207, ptr %n, align 4
  %143 = load i32, ptr %max_no.addr, align 4
  %cmp208 = icmp slt i32 %add207, %143
  br i1 %cmp208, label %if.then210, label %for.inc

if.then210:                                       ; preds = %if.then200
  %144 = load ptr, ptr %cp, align 8
  %145 = load ptr, ptr %p, align 8
  %incdec.ptr211 = getelementptr inbounds i8, ptr %145, i64 1
  store ptr %incdec.ptr211, ptr %p, align 8
  %146 = load i8, ptr %145, align 1
  %idx.ext213 = zext i8 %146 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %144, i64 %idx.neg214
  %147 = load i8, ptr %add.ptr215, align 1
  %conv216 = zext i8 %147 to i32
  %148 = load i32, ptr %n, align 4
  %add217 = add nsw i32 %148, %conv216
  store i32 %add217, ptr %n, align 4
  %149 = load i32, ptr %max_no.addr, align 4
  %cmp218 = icmp slt i32 %add217, %149
  br i1 %cmp218, label %if.then220, label %for.inc

if.then220:                                       ; preds = %if.then210
  %150 = load ptr, ptr %cp, align 8
  %151 = load ptr, ptr %p, align 8
  %incdec.ptr221 = getelementptr inbounds i8, ptr %151, i64 1
  store ptr %incdec.ptr221, ptr %p, align 8
  %152 = load i8, ptr %151, align 1
  %idx.ext223 = zext i8 %152 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %150, i64 %idx.neg224
  %153 = load i8, ptr %add.ptr225, align 1
  %conv226 = zext i8 %153 to i32
  %154 = load i32, ptr %n, align 4
  %add227 = add nsw i32 %154, %conv226
  store i32 %add227, ptr %n, align 4
  %155 = load i32, ptr %max_no.addr, align 4
  %cmp228 = icmp slt i32 %add227, %155
  br i1 %cmp228, label %if.then230, label %for.inc

if.then230:                                       ; preds = %if.then220
  %156 = load ptr, ptr %cp, align 8
  %157 = load ptr, ptr %p, align 8
  %incdec.ptr231 = getelementptr inbounds i8, ptr %157, i64 1
  store ptr %incdec.ptr231, ptr %p, align 8
  %158 = load i8, ptr %157, align 1
  %idx.ext233 = zext i8 %158 to i64
  %idx.neg234 = sub nsw i64 0, %idx.ext233
  %add.ptr235 = getelementptr inbounds i8, ptr %156, i64 %idx.neg234
  %159 = load i8, ptr %add.ptr235, align 1
  %conv236 = zext i8 %159 to i32
  %160 = load i32, ptr %n, align 4
  %add237 = add nsw i32 %160, %conv236
  store i32 %add237, ptr %n, align 4
  %161 = load i32, ptr %max_no.addr, align 4
  %cmp238 = icmp slt i32 %add237, %161
  br i1 %cmp238, label %if.then240, label %for.inc

if.then240:                                       ; preds = %if.then230
  %162 = load ptr, ptr %cp, align 8
  %163 = load ptr, ptr %p, align 8
  %164 = load i8, ptr %163, align 1
  %idx.ext242 = zext i8 %164 to i64
  %idx.neg243 = sub nsw i64 0, %idx.ext242
  %add.ptr244 = getelementptr inbounds i8, ptr %162, i64 %idx.neg243
  %165 = load i8, ptr %add.ptr244, align 1
  %conv245 = zext i8 %165 to i32
  %166 = load i32, ptr %n, align 4
  %add246 = add nsw i32 %166, %conv245
  store i32 %add246, ptr %n, align 4
  %167 = load i32, ptr %max_no.addr, align 4
  %cmp247 = icmp slt i32 %add246, %167
  br i1 %cmp247, label %if.then249, label %for.inc

if.then249:                                       ; preds = %if.then240
  %168 = load i32, ptr %x_size.addr, align 4
  %sub250 = add nsw i32 %168, -5
  %169 = load ptr, ptr %p, align 8
  %idx.ext251 = sext i32 %sub250 to i64
  %add.ptr252 = getelementptr inbounds i8, ptr %169, i64 %idx.ext251
  store ptr %add.ptr252, ptr %p, align 8
  %170 = load ptr, ptr %cp, align 8
  %incdec.ptr253 = getelementptr inbounds i8, ptr %add.ptr252, i64 1
  store ptr %incdec.ptr253, ptr %p, align 8
  %171 = load i8, ptr %add.ptr252, align 1
  %idx.ext255 = zext i8 %171 to i64
  %idx.neg256 = sub nsw i64 0, %idx.ext255
  %add.ptr257 = getelementptr inbounds i8, ptr %170, i64 %idx.neg256
  %172 = load i8, ptr %add.ptr257, align 1
  %conv258 = zext i8 %172 to i32
  %173 = load i32, ptr %n, align 4
  %add259 = add nsw i32 %173, %conv258
  store i32 %add259, ptr %n, align 4
  %174 = load i32, ptr %max_no.addr, align 4
  %cmp260 = icmp slt i32 %add259, %174
  br i1 %cmp260, label %if.then262, label %for.inc

if.then262:                                       ; preds = %if.then249
  %175 = load ptr, ptr %cp, align 8
  %176 = load ptr, ptr %p, align 8
  %incdec.ptr263 = getelementptr inbounds i8, ptr %176, i64 1
  store ptr %incdec.ptr263, ptr %p, align 8
  %177 = load i8, ptr %176, align 1
  %idx.ext265 = zext i8 %177 to i64
  %idx.neg266 = sub nsw i64 0, %idx.ext265
  %add.ptr267 = getelementptr inbounds i8, ptr %175, i64 %idx.neg266
  %178 = load i8, ptr %add.ptr267, align 1
  %conv268 = zext i8 %178 to i32
  %179 = load i32, ptr %n, align 4
  %add269 = add nsw i32 %179, %conv268
  store i32 %add269, ptr %n, align 4
  %180 = load i32, ptr %max_no.addr, align 4
  %cmp270 = icmp slt i32 %add269, %180
  br i1 %cmp270, label %if.then272, label %for.inc

if.then272:                                       ; preds = %if.then262
  %181 = load ptr, ptr %cp, align 8
  %182 = load ptr, ptr %p, align 8
  %incdec.ptr273 = getelementptr inbounds i8, ptr %182, i64 1
  store ptr %incdec.ptr273, ptr %p, align 8
  %183 = load i8, ptr %182, align 1
  %idx.ext275 = zext i8 %183 to i64
  %idx.neg276 = sub nsw i64 0, %idx.ext275
  %add.ptr277 = getelementptr inbounds i8, ptr %181, i64 %idx.neg276
  %184 = load i8, ptr %add.ptr277, align 1
  %conv278 = zext i8 %184 to i32
  %185 = load i32, ptr %n, align 4
  %add279 = add nsw i32 %185, %conv278
  store i32 %add279, ptr %n, align 4
  %186 = load i32, ptr %max_no.addr, align 4
  %cmp280 = icmp slt i32 %add279, %186
  br i1 %cmp280, label %if.then282, label %for.inc

if.then282:                                       ; preds = %if.then272
  %187 = load ptr, ptr %cp, align 8
  %188 = load ptr, ptr %p, align 8
  %incdec.ptr283 = getelementptr inbounds i8, ptr %188, i64 1
  store ptr %incdec.ptr283, ptr %p, align 8
  %189 = load i8, ptr %188, align 1
  %idx.ext285 = zext i8 %189 to i64
  %idx.neg286 = sub nsw i64 0, %idx.ext285
  %add.ptr287 = getelementptr inbounds i8, ptr %187, i64 %idx.neg286
  %190 = load i8, ptr %add.ptr287, align 1
  %conv288 = zext i8 %190 to i32
  %191 = load i32, ptr %n, align 4
  %add289 = add nsw i32 %191, %conv288
  store i32 %add289, ptr %n, align 4
  %192 = load i32, ptr %max_no.addr, align 4
  %cmp290 = icmp slt i32 %add289, %192
  br i1 %cmp290, label %if.then292, label %for.inc

if.then292:                                       ; preds = %if.then282
  %193 = load ptr, ptr %cp, align 8
  %194 = load ptr, ptr %p, align 8
  %195 = load i8, ptr %194, align 1
  %idx.ext294 = zext i8 %195 to i64
  %idx.neg295 = sub nsw i64 0, %idx.ext294
  %add.ptr296 = getelementptr inbounds i8, ptr %193, i64 %idx.neg295
  %196 = load i8, ptr %add.ptr296, align 1
  %conv297 = zext i8 %196 to i32
  %197 = load i32, ptr %n, align 4
  %add298 = add nsw i32 %197, %conv297
  store i32 %add298, ptr %n, align 4
  %198 = load i32, ptr %max_no.addr, align 4
  %cmp299 = icmp slt i32 %add298, %198
  br i1 %cmp299, label %if.then301, label %for.inc

if.then301:                                       ; preds = %if.then292
  %199 = load i32, ptr %x_size.addr, align 4
  %sub302 = add nsw i32 %199, -3
  %200 = load ptr, ptr %p, align 8
  %idx.ext303 = sext i32 %sub302 to i64
  %add.ptr304 = getelementptr inbounds i8, ptr %200, i64 %idx.ext303
  store ptr %add.ptr304, ptr %p, align 8
  %201 = load ptr, ptr %cp, align 8
  %incdec.ptr305 = getelementptr inbounds i8, ptr %add.ptr304, i64 1
  store ptr %incdec.ptr305, ptr %p, align 8
  %202 = load i8, ptr %add.ptr304, align 1
  %idx.ext307 = zext i8 %202 to i64
  %idx.neg308 = sub nsw i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, ptr %201, i64 %idx.neg308
  %203 = load i8, ptr %add.ptr309, align 1
  %conv310 = zext i8 %203 to i32
  %204 = load i32, ptr %n, align 4
  %add311 = add nsw i32 %204, %conv310
  store i32 %add311, ptr %n, align 4
  %205 = load i32, ptr %max_no.addr, align 4
  %cmp312 = icmp slt i32 %add311, %205
  br i1 %cmp312, label %if.then314, label %for.inc

if.then314:                                       ; preds = %if.then301
  %206 = load ptr, ptr %cp, align 8
  %207 = load ptr, ptr %p, align 8
  %incdec.ptr315 = getelementptr inbounds i8, ptr %207, i64 1
  store ptr %incdec.ptr315, ptr %p, align 8
  %208 = load i8, ptr %207, align 1
  %idx.ext317 = zext i8 %208 to i64
  %idx.neg318 = sub nsw i64 0, %idx.ext317
  %add.ptr319 = getelementptr inbounds i8, ptr %206, i64 %idx.neg318
  %209 = load i8, ptr %add.ptr319, align 1
  %conv320 = zext i8 %209 to i32
  %210 = load i32, ptr %n, align 4
  %add321 = add nsw i32 %210, %conv320
  store i32 %add321, ptr %n, align 4
  %211 = load i32, ptr %max_no.addr, align 4
  %cmp322 = icmp slt i32 %add321, %211
  br i1 %cmp322, label %if.then324, label %for.inc

if.then324:                                       ; preds = %if.then314
  %212 = load ptr, ptr %cp, align 8
  %213 = load ptr, ptr %p, align 8
  %214 = load i8, ptr %213, align 1
  %idx.ext326 = zext i8 %214 to i64
  %idx.neg327 = sub nsw i64 0, %idx.ext326
  %add.ptr328 = getelementptr inbounds i8, ptr %212, i64 %idx.neg327
  %215 = load i8, ptr %add.ptr328, align 1
  %conv329 = zext i8 %215 to i32
  %216 = load i32, ptr %n, align 4
  %add330 = add nsw i32 %216, %conv329
  store i32 %add330, ptr %n, align 4
  %217 = load i32, ptr %max_no.addr, align 4
  %cmp331 = icmp slt i32 %add330, %217
  br i1 %cmp331, label %if.then333, label %for.inc

if.then333:                                       ; preds = %if.then324
  %218 = load i32, ptr %max_no.addr, align 4
  %219 = load i32, ptr %n, align 4
  %sub334 = sub nsw i32 %218, %219
  %220 = load ptr, ptr %r.addr, align 8
  %221 = load i32, ptr %i, align 4
  %222 = load i32, ptr %x_size.addr, align 4
  %mul335 = mul nsw i32 %221, %222
  %223 = load i32, ptr %j, align 4
  %add336 = add nsw i32 %mul335, %223
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %220, i64 %idxprom337
  store i32 %sub334, ptr %arrayidx338, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then158, %if.then177, %if.then200, %if.then220, %if.then240, %if.then262, %if.then282, %if.then301, %if.then324, %if.then333, %if.then314, %if.then292, %if.then272, %if.then249, %if.then230, %if.then210, %if.then190, %if.then168, %if.then
  %224 = load i32, ptr %j, align 4
  %inc = add nsw i32 %224, 1
  br label %for.cond3, !llvm.loop !47

for.inc357:                                       ; preds = %for.cond3
  %225 = load i32, ptr %i, align 4
  %inc358 = add nsw i32 %225, 1
  br label %for.cond, !llvm.loop !48

for.end359:                                       ; preds = %for.cond
  store i32 0, ptr %n, align 4
  br label %for.cond360

for.cond360:                                      ; preds = %for.inc1324, %for.end359
  %storemerge1 = phi i32 [ 7, %for.end359 ], [ %inc1325, %for.inc1324 ]
  store i32 %storemerge1, ptr %i, align 4
  %226 = load i32, ptr %y_size.addr, align 4
  %sub361 = add nsw i32 %226, -7
  %cmp362 = icmp slt i32 %storemerge1, %sub361
  br i1 %cmp362, label %for.cond365, label %for.end1326

for.cond365:                                      ; preds = %for.cond360, %for.inc1321
  %storemerge2 = phi i32 [ %inc1322, %for.inc1321 ], [ 7, %for.cond360 ]
  store i32 %storemerge2, ptr %j, align 4
  %227 = load i32, ptr %x_size.addr, align 4
  %sub366 = add nsw i32 %227, -7
  %cmp367 = icmp slt i32 %storemerge2, %sub366
  br i1 %cmp367, label %for.body369, label %for.inc1324

for.body369:                                      ; preds = %for.cond365
  %228 = load ptr, ptr %r.addr, align 8
  %229 = load i32, ptr %i, align 4
  %230 = load i32, ptr %x_size.addr, align 4
  %mul370 = mul nsw i32 %229, %230
  %231 = load i32, ptr %j, align 4
  %add371 = add nsw i32 %mul370, %231
  %idxprom372 = sext i32 %add371 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %228, i64 %idxprom372
  %232 = load i32, ptr %arrayidx373, align 4
  store i32 %232, ptr %x, align 4
  %cmp374 = icmp sgt i32 %232, 0
  br i1 %cmp374, label %if.then376, label %for.inc1321

if.then376:                                       ; preds = %for.body369
  %233 = load i32, ptr %x, align 4
  %234 = load ptr, ptr %r.addr, align 8
  %235 = load i32, ptr %i, align 4
  %sub377 = add nsw i32 %235, -3
  %236 = load i32, ptr %x_size.addr, align 4
  %mul378 = mul nsw i32 %sub377, %236
  %237 = load i32, ptr %j, align 4
  %add379 = add nsw i32 %mul378, %237
  %sub380 = add nsw i32 %add379, -3
  %idxprom381 = sext i32 %sub380 to i64
  %arrayidx382 = getelementptr inbounds i32, ptr %234, i64 %idxprom381
  %238 = load i32, ptr %arrayidx382, align 4
  %cmp383 = icmp sgt i32 %233, %238
  br i1 %cmp383, label %land.lhs.true, label %for.inc1321

land.lhs.true:                                    ; preds = %if.then376
  %239 = load i32, ptr %x, align 4
  %240 = load ptr, ptr %r.addr, align 8
  %241 = load i32, ptr %i, align 4
  %sub385 = add nsw i32 %241, -3
  %242 = load i32, ptr %x_size.addr, align 4
  %mul386 = mul nsw i32 %sub385, %242
  %243 = load i32, ptr %j, align 4
  %add387 = add nsw i32 %mul386, %243
  %sub388 = add nsw i32 %add387, -2
  %idxprom389 = sext i32 %sub388 to i64
  %arrayidx390 = getelementptr inbounds i32, ptr %240, i64 %idxprom389
  %244 = load i32, ptr %arrayidx390, align 4
  %cmp391 = icmp sgt i32 %239, %244
  br i1 %cmp391, label %land.lhs.true393, label %for.inc1321

land.lhs.true393:                                 ; preds = %land.lhs.true
  %245 = load i32, ptr %x, align 4
  %246 = load ptr, ptr %r.addr, align 8
  %247 = load i32, ptr %i, align 4
  %sub394 = add nsw i32 %247, -3
  %248 = load i32, ptr %x_size.addr, align 4
  %mul395 = mul nsw i32 %sub394, %248
  %249 = load i32, ptr %j, align 4
  %add396 = add nsw i32 %mul395, %249
  %sub397 = add nsw i32 %add396, -1
  %idxprom398 = sext i32 %sub397 to i64
  %arrayidx399 = getelementptr inbounds i32, ptr %246, i64 %idxprom398
  %250 = load i32, ptr %arrayidx399, align 4
  %cmp400 = icmp sgt i32 %245, %250
  br i1 %cmp400, label %land.lhs.true402, label %for.inc1321

land.lhs.true402:                                 ; preds = %land.lhs.true393
  %251 = load i32, ptr %x, align 4
  %252 = load ptr, ptr %r.addr, align 8
  %253 = load i32, ptr %i, align 4
  %sub403 = add nsw i32 %253, -3
  %254 = load i32, ptr %x_size.addr, align 4
  %mul404 = mul nsw i32 %sub403, %254
  %255 = load i32, ptr %j, align 4
  %add405 = add nsw i32 %mul404, %255
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds i32, ptr %252, i64 %idxprom406
  %256 = load i32, ptr %arrayidx407, align 4
  %cmp408 = icmp sgt i32 %251, %256
  br i1 %cmp408, label %land.lhs.true410, label %for.inc1321

land.lhs.true410:                                 ; preds = %land.lhs.true402
  %257 = load i32, ptr %x, align 4
  %258 = load ptr, ptr %r.addr, align 8
  %259 = load i32, ptr %i, align 4
  %sub411 = add nsw i32 %259, -3
  %260 = load i32, ptr %x_size.addr, align 4
  %mul412 = mul nsw i32 %sub411, %260
  %261 = load i32, ptr %j, align 4
  %add413 = add nsw i32 %mul412, %261
  %add414 = add nsw i32 %add413, 1
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds i32, ptr %258, i64 %idxprom415
  %262 = load i32, ptr %arrayidx416, align 4
  %cmp417 = icmp sgt i32 %257, %262
  br i1 %cmp417, label %land.lhs.true419, label %for.inc1321

land.lhs.true419:                                 ; preds = %land.lhs.true410
  %263 = load i32, ptr %x, align 4
  %264 = load ptr, ptr %r.addr, align 8
  %265 = load i32, ptr %i, align 4
  %sub420 = add nsw i32 %265, -3
  %266 = load i32, ptr %x_size.addr, align 4
  %mul421 = mul nsw i32 %sub420, %266
  %267 = load i32, ptr %j, align 4
  %add422 = add nsw i32 %mul421, %267
  %add423 = add nsw i32 %add422, 2
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds i32, ptr %264, i64 %idxprom424
  %268 = load i32, ptr %arrayidx425, align 4
  %cmp426 = icmp sgt i32 %263, %268
  br i1 %cmp426, label %land.lhs.true428, label %for.inc1321

land.lhs.true428:                                 ; preds = %land.lhs.true419
  %269 = load i32, ptr %x, align 4
  %270 = load ptr, ptr %r.addr, align 8
  %271 = load i32, ptr %i, align 4
  %sub429 = add nsw i32 %271, -3
  %272 = load i32, ptr %x_size.addr, align 4
  %mul430 = mul nsw i32 %sub429, %272
  %273 = load i32, ptr %j, align 4
  %add431 = add nsw i32 %mul430, %273
  %add432 = add nsw i32 %add431, 3
  %idxprom433 = sext i32 %add432 to i64
  %arrayidx434 = getelementptr inbounds i32, ptr %270, i64 %idxprom433
  %274 = load i32, ptr %arrayidx434, align 4
  %cmp435 = icmp sgt i32 %269, %274
  br i1 %cmp435, label %land.lhs.true437, label %for.inc1321

land.lhs.true437:                                 ; preds = %land.lhs.true428
  %275 = load i32, ptr %x, align 4
  %276 = load ptr, ptr %r.addr, align 8
  %277 = load i32, ptr %i, align 4
  %sub438 = add nsw i32 %277, -2
  %278 = load i32, ptr %x_size.addr, align 4
  %mul439 = mul nsw i32 %sub438, %278
  %279 = load i32, ptr %j, align 4
  %add440 = add nsw i32 %mul439, %279
  %sub441 = add nsw i32 %add440, -3
  %idxprom442 = sext i32 %sub441 to i64
  %arrayidx443 = getelementptr inbounds i32, ptr %276, i64 %idxprom442
  %280 = load i32, ptr %arrayidx443, align 4
  %cmp444 = icmp sgt i32 %275, %280
  br i1 %cmp444, label %land.lhs.true446, label %for.inc1321

land.lhs.true446:                                 ; preds = %land.lhs.true437
  %281 = load i32, ptr %x, align 4
  %282 = load ptr, ptr %r.addr, align 8
  %283 = load i32, ptr %i, align 4
  %sub447 = add nsw i32 %283, -2
  %284 = load i32, ptr %x_size.addr, align 4
  %mul448 = mul nsw i32 %sub447, %284
  %285 = load i32, ptr %j, align 4
  %add449 = add nsw i32 %mul448, %285
  %sub450 = add nsw i32 %add449, -2
  %idxprom451 = sext i32 %sub450 to i64
  %arrayidx452 = getelementptr inbounds i32, ptr %282, i64 %idxprom451
  %286 = load i32, ptr %arrayidx452, align 4
  %cmp453 = icmp sgt i32 %281, %286
  br i1 %cmp453, label %land.lhs.true455, label %for.inc1321

land.lhs.true455:                                 ; preds = %land.lhs.true446
  %287 = load i32, ptr %x, align 4
  %288 = load ptr, ptr %r.addr, align 8
  %289 = load i32, ptr %i, align 4
  %sub456 = add nsw i32 %289, -2
  %290 = load i32, ptr %x_size.addr, align 4
  %mul457 = mul nsw i32 %sub456, %290
  %291 = load i32, ptr %j, align 4
  %add458 = add nsw i32 %mul457, %291
  %sub459 = add nsw i32 %add458, -1
  %idxprom460 = sext i32 %sub459 to i64
  %arrayidx461 = getelementptr inbounds i32, ptr %288, i64 %idxprom460
  %292 = load i32, ptr %arrayidx461, align 4
  %cmp462 = icmp sgt i32 %287, %292
  br i1 %cmp462, label %land.lhs.true464, label %for.inc1321

land.lhs.true464:                                 ; preds = %land.lhs.true455
  %293 = load i32, ptr %x, align 4
  %294 = load ptr, ptr %r.addr, align 8
  %295 = load i32, ptr %i, align 4
  %sub465 = add nsw i32 %295, -2
  %296 = load i32, ptr %x_size.addr, align 4
  %mul466 = mul nsw i32 %sub465, %296
  %297 = load i32, ptr %j, align 4
  %add467 = add nsw i32 %mul466, %297
  %idxprom468 = sext i32 %add467 to i64
  %arrayidx469 = getelementptr inbounds i32, ptr %294, i64 %idxprom468
  %298 = load i32, ptr %arrayidx469, align 4
  %cmp470 = icmp sgt i32 %293, %298
  br i1 %cmp470, label %land.lhs.true472, label %for.inc1321

land.lhs.true472:                                 ; preds = %land.lhs.true464
  %299 = load i32, ptr %x, align 4
  %300 = load ptr, ptr %r.addr, align 8
  %301 = load i32, ptr %i, align 4
  %sub473 = add nsw i32 %301, -2
  %302 = load i32, ptr %x_size.addr, align 4
  %mul474 = mul nsw i32 %sub473, %302
  %303 = load i32, ptr %j, align 4
  %add475 = add nsw i32 %mul474, %303
  %add476 = add nsw i32 %add475, 1
  %idxprom477 = sext i32 %add476 to i64
  %arrayidx478 = getelementptr inbounds i32, ptr %300, i64 %idxprom477
  %304 = load i32, ptr %arrayidx478, align 4
  %cmp479 = icmp sgt i32 %299, %304
  br i1 %cmp479, label %land.lhs.true481, label %for.inc1321

land.lhs.true481:                                 ; preds = %land.lhs.true472
  %305 = load i32, ptr %x, align 4
  %306 = load ptr, ptr %r.addr, align 8
  %307 = load i32, ptr %i, align 4
  %sub482 = add nsw i32 %307, -2
  %308 = load i32, ptr %x_size.addr, align 4
  %mul483 = mul nsw i32 %sub482, %308
  %309 = load i32, ptr %j, align 4
  %add484 = add nsw i32 %mul483, %309
  %add485 = add nsw i32 %add484, 2
  %idxprom486 = sext i32 %add485 to i64
  %arrayidx487 = getelementptr inbounds i32, ptr %306, i64 %idxprom486
  %310 = load i32, ptr %arrayidx487, align 4
  %cmp488 = icmp sgt i32 %305, %310
  br i1 %cmp488, label %land.lhs.true490, label %for.inc1321

land.lhs.true490:                                 ; preds = %land.lhs.true481
  %311 = load i32, ptr %x, align 4
  %312 = load ptr, ptr %r.addr, align 8
  %313 = load i32, ptr %i, align 4
  %sub491 = add nsw i32 %313, -2
  %314 = load i32, ptr %x_size.addr, align 4
  %mul492 = mul nsw i32 %sub491, %314
  %315 = load i32, ptr %j, align 4
  %add493 = add nsw i32 %mul492, %315
  %add494 = add nsw i32 %add493, 3
  %idxprom495 = sext i32 %add494 to i64
  %arrayidx496 = getelementptr inbounds i32, ptr %312, i64 %idxprom495
  %316 = load i32, ptr %arrayidx496, align 4
  %cmp497 = icmp sgt i32 %311, %316
  br i1 %cmp497, label %land.lhs.true499, label %for.inc1321

land.lhs.true499:                                 ; preds = %land.lhs.true490
  %317 = load i32, ptr %x, align 4
  %318 = load ptr, ptr %r.addr, align 8
  %319 = load i32, ptr %i, align 4
  %sub500 = add nsw i32 %319, -1
  %320 = load i32, ptr %x_size.addr, align 4
  %mul501 = mul nsw i32 %sub500, %320
  %321 = load i32, ptr %j, align 4
  %add502 = add nsw i32 %mul501, %321
  %sub503 = add nsw i32 %add502, -3
  %idxprom504 = sext i32 %sub503 to i64
  %arrayidx505 = getelementptr inbounds i32, ptr %318, i64 %idxprom504
  %322 = load i32, ptr %arrayidx505, align 4
  %cmp506 = icmp sgt i32 %317, %322
  br i1 %cmp506, label %land.lhs.true508, label %for.inc1321

land.lhs.true508:                                 ; preds = %land.lhs.true499
  %323 = load i32, ptr %x, align 4
  %324 = load ptr, ptr %r.addr, align 8
  %325 = load i32, ptr %i, align 4
  %sub509 = add nsw i32 %325, -1
  %326 = load i32, ptr %x_size.addr, align 4
  %mul510 = mul nsw i32 %sub509, %326
  %327 = load i32, ptr %j, align 4
  %add511 = add nsw i32 %mul510, %327
  %sub512 = add nsw i32 %add511, -2
  %idxprom513 = sext i32 %sub512 to i64
  %arrayidx514 = getelementptr inbounds i32, ptr %324, i64 %idxprom513
  %328 = load i32, ptr %arrayidx514, align 4
  %cmp515 = icmp sgt i32 %323, %328
  br i1 %cmp515, label %land.lhs.true517, label %for.inc1321

land.lhs.true517:                                 ; preds = %land.lhs.true508
  %329 = load i32, ptr %x, align 4
  %330 = load ptr, ptr %r.addr, align 8
  %331 = load i32, ptr %i, align 4
  %sub518 = add nsw i32 %331, -1
  %332 = load i32, ptr %x_size.addr, align 4
  %mul519 = mul nsw i32 %sub518, %332
  %333 = load i32, ptr %j, align 4
  %add520 = add nsw i32 %mul519, %333
  %sub521 = add nsw i32 %add520, -1
  %idxprom522 = sext i32 %sub521 to i64
  %arrayidx523 = getelementptr inbounds i32, ptr %330, i64 %idxprom522
  %334 = load i32, ptr %arrayidx523, align 4
  %cmp524 = icmp sgt i32 %329, %334
  br i1 %cmp524, label %land.lhs.true526, label %for.inc1321

land.lhs.true526:                                 ; preds = %land.lhs.true517
  %335 = load i32, ptr %x, align 4
  %336 = load ptr, ptr %r.addr, align 8
  %337 = load i32, ptr %i, align 4
  %sub527 = add nsw i32 %337, -1
  %338 = load i32, ptr %x_size.addr, align 4
  %mul528 = mul nsw i32 %sub527, %338
  %339 = load i32, ptr %j, align 4
  %add529 = add nsw i32 %mul528, %339
  %idxprom530 = sext i32 %add529 to i64
  %arrayidx531 = getelementptr inbounds i32, ptr %336, i64 %idxprom530
  %340 = load i32, ptr %arrayidx531, align 4
  %cmp532 = icmp sgt i32 %335, %340
  br i1 %cmp532, label %land.lhs.true534, label %for.inc1321

land.lhs.true534:                                 ; preds = %land.lhs.true526
  %341 = load i32, ptr %x, align 4
  %342 = load ptr, ptr %r.addr, align 8
  %343 = load i32, ptr %i, align 4
  %sub535 = add nsw i32 %343, -1
  %344 = load i32, ptr %x_size.addr, align 4
  %mul536 = mul nsw i32 %sub535, %344
  %345 = load i32, ptr %j, align 4
  %add537 = add nsw i32 %mul536, %345
  %add538 = add nsw i32 %add537, 1
  %idxprom539 = sext i32 %add538 to i64
  %arrayidx540 = getelementptr inbounds i32, ptr %342, i64 %idxprom539
  %346 = load i32, ptr %arrayidx540, align 4
  %cmp541 = icmp sgt i32 %341, %346
  br i1 %cmp541, label %land.lhs.true543, label %for.inc1321

land.lhs.true543:                                 ; preds = %land.lhs.true534
  %347 = load i32, ptr %x, align 4
  %348 = load ptr, ptr %r.addr, align 8
  %349 = load i32, ptr %i, align 4
  %sub544 = add nsw i32 %349, -1
  %350 = load i32, ptr %x_size.addr, align 4
  %mul545 = mul nsw i32 %sub544, %350
  %351 = load i32, ptr %j, align 4
  %add546 = add nsw i32 %mul545, %351
  %add547 = add nsw i32 %add546, 2
  %idxprom548 = sext i32 %add547 to i64
  %arrayidx549 = getelementptr inbounds i32, ptr %348, i64 %idxprom548
  %352 = load i32, ptr %arrayidx549, align 4
  %cmp550 = icmp sgt i32 %347, %352
  br i1 %cmp550, label %land.lhs.true552, label %for.inc1321

land.lhs.true552:                                 ; preds = %land.lhs.true543
  %353 = load i32, ptr %x, align 4
  %354 = load ptr, ptr %r.addr, align 8
  %355 = load i32, ptr %i, align 4
  %sub553 = add nsw i32 %355, -1
  %356 = load i32, ptr %x_size.addr, align 4
  %mul554 = mul nsw i32 %sub553, %356
  %357 = load i32, ptr %j, align 4
  %add555 = add nsw i32 %mul554, %357
  %add556 = add nsw i32 %add555, 3
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds i32, ptr %354, i64 %idxprom557
  %358 = load i32, ptr %arrayidx558, align 4
  %cmp559 = icmp sgt i32 %353, %358
  br i1 %cmp559, label %land.lhs.true561, label %for.inc1321

land.lhs.true561:                                 ; preds = %land.lhs.true552
  %359 = load i32, ptr %x, align 4
  %360 = load ptr, ptr %r.addr, align 8
  %361 = load i32, ptr %i, align 4
  %362 = load i32, ptr %x_size.addr, align 4
  %mul562 = mul nsw i32 %361, %362
  %363 = load i32, ptr %j, align 4
  %add563 = add nsw i32 %mul562, %363
  %sub564 = add nsw i32 %add563, -3
  %idxprom565 = sext i32 %sub564 to i64
  %arrayidx566 = getelementptr inbounds i32, ptr %360, i64 %idxprom565
  %364 = load i32, ptr %arrayidx566, align 4
  %cmp567 = icmp sgt i32 %359, %364
  br i1 %cmp567, label %land.lhs.true569, label %for.inc1321

land.lhs.true569:                                 ; preds = %land.lhs.true561
  %365 = load i32, ptr %x, align 4
  %366 = load ptr, ptr %r.addr, align 8
  %367 = load i32, ptr %i, align 4
  %368 = load i32, ptr %x_size.addr, align 4
  %mul570 = mul nsw i32 %367, %368
  %369 = load i32, ptr %j, align 4
  %add571 = add nsw i32 %mul570, %369
  %sub572 = add nsw i32 %add571, -2
  %idxprom573 = sext i32 %sub572 to i64
  %arrayidx574 = getelementptr inbounds i32, ptr %366, i64 %idxprom573
  %370 = load i32, ptr %arrayidx574, align 4
  %cmp575 = icmp sgt i32 %365, %370
  br i1 %cmp575, label %land.lhs.true577, label %for.inc1321

land.lhs.true577:                                 ; preds = %land.lhs.true569
  %371 = load i32, ptr %x, align 4
  %372 = load ptr, ptr %r.addr, align 8
  %373 = load i32, ptr %i, align 4
  %374 = load i32, ptr %x_size.addr, align 4
  %mul578 = mul nsw i32 %373, %374
  %375 = load i32, ptr %j, align 4
  %add579 = add nsw i32 %mul578, %375
  %sub580 = add nsw i32 %add579, -1
  %idxprom581 = sext i32 %sub580 to i64
  %arrayidx582 = getelementptr inbounds i32, ptr %372, i64 %idxprom581
  %376 = load i32, ptr %arrayidx582, align 4
  %cmp583 = icmp sgt i32 %371, %376
  br i1 %cmp583, label %land.lhs.true585, label %for.inc1321

land.lhs.true585:                                 ; preds = %land.lhs.true577
  %377 = load i32, ptr %x, align 4
  %378 = load ptr, ptr %r.addr, align 8
  %379 = load i32, ptr %i, align 4
  %380 = load i32, ptr %x_size.addr, align 4
  %mul586 = mul nsw i32 %379, %380
  %381 = load i32, ptr %j, align 4
  %add587 = add nsw i32 %mul586, %381
  %add588 = add nsw i32 %add587, 1
  %idxprom589 = sext i32 %add588 to i64
  %arrayidx590 = getelementptr inbounds i32, ptr %378, i64 %idxprom589
  %382 = load i32, ptr %arrayidx590, align 4
  %cmp591.not = icmp slt i32 %377, %382
  br i1 %cmp591.not, label %for.inc1321, label %land.lhs.true593

land.lhs.true593:                                 ; preds = %land.lhs.true585
  %383 = load i32, ptr %x, align 4
  %384 = load ptr, ptr %r.addr, align 8
  %385 = load i32, ptr %i, align 4
  %386 = load i32, ptr %x_size.addr, align 4
  %mul594 = mul nsw i32 %385, %386
  %387 = load i32, ptr %j, align 4
  %add595 = add nsw i32 %mul594, %387
  %add596 = add nsw i32 %add595, 2
  %idxprom597 = sext i32 %add596 to i64
  %arrayidx598 = getelementptr inbounds i32, ptr %384, i64 %idxprom597
  %388 = load i32, ptr %arrayidx598, align 4
  %cmp599.not = icmp slt i32 %383, %388
  br i1 %cmp599.not, label %for.inc1321, label %land.lhs.true601

land.lhs.true601:                                 ; preds = %land.lhs.true593
  %389 = load i32, ptr %x, align 4
  %390 = load ptr, ptr %r.addr, align 8
  %391 = load i32, ptr %i, align 4
  %392 = load i32, ptr %x_size.addr, align 4
  %mul602 = mul nsw i32 %391, %392
  %393 = load i32, ptr %j, align 4
  %add603 = add nsw i32 %mul602, %393
  %add604 = add nsw i32 %add603, 3
  %idxprom605 = sext i32 %add604 to i64
  %arrayidx606 = getelementptr inbounds i32, ptr %390, i64 %idxprom605
  %394 = load i32, ptr %arrayidx606, align 4
  %cmp607.not = icmp slt i32 %389, %394
  br i1 %cmp607.not, label %for.inc1321, label %land.lhs.true609

land.lhs.true609:                                 ; preds = %land.lhs.true601
  %395 = load i32, ptr %x, align 4
  %396 = load ptr, ptr %r.addr, align 8
  %397 = load i32, ptr %i, align 4
  %add610 = add nsw i32 %397, 1
  %398 = load i32, ptr %x_size.addr, align 4
  %mul611 = mul nsw i32 %add610, %398
  %399 = load i32, ptr %j, align 4
  %add612 = add nsw i32 %mul611, %399
  %sub613 = add nsw i32 %add612, -3
  %idxprom614 = sext i32 %sub613 to i64
  %arrayidx615 = getelementptr inbounds i32, ptr %396, i64 %idxprom614
  %400 = load i32, ptr %arrayidx615, align 4
  %cmp616.not = icmp slt i32 %395, %400
  br i1 %cmp616.not, label %for.inc1321, label %land.lhs.true618

land.lhs.true618:                                 ; preds = %land.lhs.true609
  %401 = load i32, ptr %x, align 4
  %402 = load ptr, ptr %r.addr, align 8
  %403 = load i32, ptr %i, align 4
  %add619 = add nsw i32 %403, 1
  %404 = load i32, ptr %x_size.addr, align 4
  %mul620 = mul nsw i32 %add619, %404
  %405 = load i32, ptr %j, align 4
  %add621 = add nsw i32 %mul620, %405
  %sub622 = add nsw i32 %add621, -2
  %idxprom623 = sext i32 %sub622 to i64
  %arrayidx624 = getelementptr inbounds i32, ptr %402, i64 %idxprom623
  %406 = load i32, ptr %arrayidx624, align 4
  %cmp625.not = icmp slt i32 %401, %406
  br i1 %cmp625.not, label %for.inc1321, label %land.lhs.true627

land.lhs.true627:                                 ; preds = %land.lhs.true618
  %407 = load i32, ptr %x, align 4
  %408 = load ptr, ptr %r.addr, align 8
  %409 = load i32, ptr %i, align 4
  %add628 = add nsw i32 %409, 1
  %410 = load i32, ptr %x_size.addr, align 4
  %mul629 = mul nsw i32 %add628, %410
  %411 = load i32, ptr %j, align 4
  %add630 = add nsw i32 %mul629, %411
  %sub631 = add nsw i32 %add630, -1
  %idxprom632 = sext i32 %sub631 to i64
  %arrayidx633 = getelementptr inbounds i32, ptr %408, i64 %idxprom632
  %412 = load i32, ptr %arrayidx633, align 4
  %cmp634.not = icmp slt i32 %407, %412
  br i1 %cmp634.not, label %for.inc1321, label %land.lhs.true636

land.lhs.true636:                                 ; preds = %land.lhs.true627
  %413 = load i32, ptr %x, align 4
  %414 = load ptr, ptr %r.addr, align 8
  %415 = load i32, ptr %i, align 4
  %add637 = add nsw i32 %415, 1
  %416 = load i32, ptr %x_size.addr, align 4
  %mul638 = mul nsw i32 %add637, %416
  %417 = load i32, ptr %j, align 4
  %add639 = add nsw i32 %mul638, %417
  %idxprom640 = sext i32 %add639 to i64
  %arrayidx641 = getelementptr inbounds i32, ptr %414, i64 %idxprom640
  %418 = load i32, ptr %arrayidx641, align 4
  %cmp642.not = icmp slt i32 %413, %418
  br i1 %cmp642.not, label %for.inc1321, label %land.lhs.true644

land.lhs.true644:                                 ; preds = %land.lhs.true636
  %419 = load i32, ptr %x, align 4
  %420 = load ptr, ptr %r.addr, align 8
  %421 = load i32, ptr %i, align 4
  %add645 = add nsw i32 %421, 1
  %422 = load i32, ptr %x_size.addr, align 4
  %mul646 = mul nsw i32 %add645, %422
  %423 = load i32, ptr %j, align 4
  %add647 = add nsw i32 %mul646, %423
  %add648 = add nsw i32 %add647, 1
  %idxprom649 = sext i32 %add648 to i64
  %arrayidx650 = getelementptr inbounds i32, ptr %420, i64 %idxprom649
  %424 = load i32, ptr %arrayidx650, align 4
  %cmp651.not = icmp slt i32 %419, %424
  br i1 %cmp651.not, label %for.inc1321, label %land.lhs.true653

land.lhs.true653:                                 ; preds = %land.lhs.true644
  %425 = load i32, ptr %x, align 4
  %426 = load ptr, ptr %r.addr, align 8
  %427 = load i32, ptr %i, align 4
  %add654 = add nsw i32 %427, 1
  %428 = load i32, ptr %x_size.addr, align 4
  %mul655 = mul nsw i32 %add654, %428
  %429 = load i32, ptr %j, align 4
  %add656 = add nsw i32 %mul655, %429
  %add657 = add nsw i32 %add656, 2
  %idxprom658 = sext i32 %add657 to i64
  %arrayidx659 = getelementptr inbounds i32, ptr %426, i64 %idxprom658
  %430 = load i32, ptr %arrayidx659, align 4
  %cmp660.not = icmp slt i32 %425, %430
  br i1 %cmp660.not, label %for.inc1321, label %land.lhs.true662

land.lhs.true662:                                 ; preds = %land.lhs.true653
  %431 = load i32, ptr %x, align 4
  %432 = load ptr, ptr %r.addr, align 8
  %433 = load i32, ptr %i, align 4
  %add663 = add nsw i32 %433, 1
  %434 = load i32, ptr %x_size.addr, align 4
  %mul664 = mul nsw i32 %add663, %434
  %435 = load i32, ptr %j, align 4
  %add665 = add nsw i32 %mul664, %435
  %add666 = add nsw i32 %add665, 3
  %idxprom667 = sext i32 %add666 to i64
  %arrayidx668 = getelementptr inbounds i32, ptr %432, i64 %idxprom667
  %436 = load i32, ptr %arrayidx668, align 4
  %cmp669.not = icmp slt i32 %431, %436
  br i1 %cmp669.not, label %for.inc1321, label %land.lhs.true671

land.lhs.true671:                                 ; preds = %land.lhs.true662
  %437 = load i32, ptr %x, align 4
  %438 = load ptr, ptr %r.addr, align 8
  %439 = load i32, ptr %i, align 4
  %add672 = add nsw i32 %439, 2
  %440 = load i32, ptr %x_size.addr, align 4
  %mul673 = mul nsw i32 %add672, %440
  %441 = load i32, ptr %j, align 4
  %add674 = add nsw i32 %mul673, %441
  %sub675 = add nsw i32 %add674, -3
  %idxprom676 = sext i32 %sub675 to i64
  %arrayidx677 = getelementptr inbounds i32, ptr %438, i64 %idxprom676
  %442 = load i32, ptr %arrayidx677, align 4
  %cmp678.not = icmp slt i32 %437, %442
  br i1 %cmp678.not, label %for.inc1321, label %land.lhs.true680

land.lhs.true680:                                 ; preds = %land.lhs.true671
  %443 = load i32, ptr %x, align 4
  %444 = load ptr, ptr %r.addr, align 8
  %445 = load i32, ptr %i, align 4
  %add681 = add nsw i32 %445, 2
  %446 = load i32, ptr %x_size.addr, align 4
  %mul682 = mul nsw i32 %add681, %446
  %447 = load i32, ptr %j, align 4
  %add683 = add nsw i32 %mul682, %447
  %sub684 = add nsw i32 %add683, -2
  %idxprom685 = sext i32 %sub684 to i64
  %arrayidx686 = getelementptr inbounds i32, ptr %444, i64 %idxprom685
  %448 = load i32, ptr %arrayidx686, align 4
  %cmp687.not = icmp slt i32 %443, %448
  br i1 %cmp687.not, label %for.inc1321, label %land.lhs.true689

land.lhs.true689:                                 ; preds = %land.lhs.true680
  %449 = load i32, ptr %x, align 4
  %450 = load ptr, ptr %r.addr, align 8
  %451 = load i32, ptr %i, align 4
  %add690 = add nsw i32 %451, 2
  %452 = load i32, ptr %x_size.addr, align 4
  %mul691 = mul nsw i32 %add690, %452
  %453 = load i32, ptr %j, align 4
  %add692 = add nsw i32 %mul691, %453
  %sub693 = add nsw i32 %add692, -1
  %idxprom694 = sext i32 %sub693 to i64
  %arrayidx695 = getelementptr inbounds i32, ptr %450, i64 %idxprom694
  %454 = load i32, ptr %arrayidx695, align 4
  %cmp696.not = icmp slt i32 %449, %454
  br i1 %cmp696.not, label %for.inc1321, label %land.lhs.true698

land.lhs.true698:                                 ; preds = %land.lhs.true689
  %455 = load i32, ptr %x, align 4
  %456 = load ptr, ptr %r.addr, align 8
  %457 = load i32, ptr %i, align 4
  %add699 = add nsw i32 %457, 2
  %458 = load i32, ptr %x_size.addr, align 4
  %mul700 = mul nsw i32 %add699, %458
  %459 = load i32, ptr %j, align 4
  %add701 = add nsw i32 %mul700, %459
  %idxprom702 = sext i32 %add701 to i64
  %arrayidx703 = getelementptr inbounds i32, ptr %456, i64 %idxprom702
  %460 = load i32, ptr %arrayidx703, align 4
  %cmp704.not = icmp slt i32 %455, %460
  br i1 %cmp704.not, label %for.inc1321, label %land.lhs.true706

land.lhs.true706:                                 ; preds = %land.lhs.true698
  %461 = load i32, ptr %x, align 4
  %462 = load ptr, ptr %r.addr, align 8
  %463 = load i32, ptr %i, align 4
  %add707 = add nsw i32 %463, 2
  %464 = load i32, ptr %x_size.addr, align 4
  %mul708 = mul nsw i32 %add707, %464
  %465 = load i32, ptr %j, align 4
  %add709 = add nsw i32 %mul708, %465
  %add710 = add nsw i32 %add709, 1
  %idxprom711 = sext i32 %add710 to i64
  %arrayidx712 = getelementptr inbounds i32, ptr %462, i64 %idxprom711
  %466 = load i32, ptr %arrayidx712, align 4
  %cmp713.not = icmp slt i32 %461, %466
  br i1 %cmp713.not, label %for.inc1321, label %land.lhs.true715

land.lhs.true715:                                 ; preds = %land.lhs.true706
  %467 = load i32, ptr %x, align 4
  %468 = load ptr, ptr %r.addr, align 8
  %469 = load i32, ptr %i, align 4
  %add716 = add nsw i32 %469, 2
  %470 = load i32, ptr %x_size.addr, align 4
  %mul717 = mul nsw i32 %add716, %470
  %471 = load i32, ptr %j, align 4
  %add718 = add nsw i32 %mul717, %471
  %add719 = add nsw i32 %add718, 2
  %idxprom720 = sext i32 %add719 to i64
  %arrayidx721 = getelementptr inbounds i32, ptr %468, i64 %idxprom720
  %472 = load i32, ptr %arrayidx721, align 4
  %cmp722.not = icmp slt i32 %467, %472
  br i1 %cmp722.not, label %for.inc1321, label %land.lhs.true724

land.lhs.true724:                                 ; preds = %land.lhs.true715
  %473 = load i32, ptr %x, align 4
  %474 = load ptr, ptr %r.addr, align 8
  %475 = load i32, ptr %i, align 4
  %add725 = add nsw i32 %475, 2
  %476 = load i32, ptr %x_size.addr, align 4
  %mul726 = mul nsw i32 %add725, %476
  %477 = load i32, ptr %j, align 4
  %add727 = add nsw i32 %mul726, %477
  %add728 = add nsw i32 %add727, 3
  %idxprom729 = sext i32 %add728 to i64
  %arrayidx730 = getelementptr inbounds i32, ptr %474, i64 %idxprom729
  %478 = load i32, ptr %arrayidx730, align 4
  %cmp731.not = icmp slt i32 %473, %478
  br i1 %cmp731.not, label %for.inc1321, label %land.lhs.true733

land.lhs.true733:                                 ; preds = %land.lhs.true724
  %479 = load i32, ptr %x, align 4
  %480 = load ptr, ptr %r.addr, align 8
  %481 = load i32, ptr %i, align 4
  %add734 = add nsw i32 %481, 3
  %482 = load i32, ptr %x_size.addr, align 4
  %mul735 = mul nsw i32 %add734, %482
  %483 = load i32, ptr %j, align 4
  %add736 = add nsw i32 %mul735, %483
  %sub737 = add nsw i32 %add736, -3
  %idxprom738 = sext i32 %sub737 to i64
  %arrayidx739 = getelementptr inbounds i32, ptr %480, i64 %idxprom738
  %484 = load i32, ptr %arrayidx739, align 4
  %cmp740.not = icmp slt i32 %479, %484
  br i1 %cmp740.not, label %for.inc1321, label %land.lhs.true742

land.lhs.true742:                                 ; preds = %land.lhs.true733
  %485 = load i32, ptr %x, align 4
  %486 = load ptr, ptr %r.addr, align 8
  %487 = load i32, ptr %i, align 4
  %add743 = add nsw i32 %487, 3
  %488 = load i32, ptr %x_size.addr, align 4
  %mul744 = mul nsw i32 %add743, %488
  %489 = load i32, ptr %j, align 4
  %add745 = add nsw i32 %mul744, %489
  %sub746 = add nsw i32 %add745, -2
  %idxprom747 = sext i32 %sub746 to i64
  %arrayidx748 = getelementptr inbounds i32, ptr %486, i64 %idxprom747
  %490 = load i32, ptr %arrayidx748, align 4
  %cmp749.not = icmp slt i32 %485, %490
  br i1 %cmp749.not, label %for.inc1321, label %land.lhs.true751

land.lhs.true751:                                 ; preds = %land.lhs.true742
  %491 = load i32, ptr %x, align 4
  %492 = load ptr, ptr %r.addr, align 8
  %493 = load i32, ptr %i, align 4
  %add752 = add nsw i32 %493, 3
  %494 = load i32, ptr %x_size.addr, align 4
  %mul753 = mul nsw i32 %add752, %494
  %495 = load i32, ptr %j, align 4
  %add754 = add nsw i32 %mul753, %495
  %sub755 = add nsw i32 %add754, -1
  %idxprom756 = sext i32 %sub755 to i64
  %arrayidx757 = getelementptr inbounds i32, ptr %492, i64 %idxprom756
  %496 = load i32, ptr %arrayidx757, align 4
  %cmp758.not = icmp slt i32 %491, %496
  br i1 %cmp758.not, label %for.inc1321, label %land.lhs.true760

land.lhs.true760:                                 ; preds = %land.lhs.true751
  %497 = load i32, ptr %x, align 4
  %498 = load ptr, ptr %r.addr, align 8
  %499 = load i32, ptr %i, align 4
  %add761 = add nsw i32 %499, 3
  %500 = load i32, ptr %x_size.addr, align 4
  %mul762 = mul nsw i32 %add761, %500
  %501 = load i32, ptr %j, align 4
  %add763 = add nsw i32 %mul762, %501
  %idxprom764 = sext i32 %add763 to i64
  %arrayidx765 = getelementptr inbounds i32, ptr %498, i64 %idxprom764
  %502 = load i32, ptr %arrayidx765, align 4
  %cmp766.not = icmp slt i32 %497, %502
  br i1 %cmp766.not, label %for.inc1321, label %land.lhs.true768

land.lhs.true768:                                 ; preds = %land.lhs.true760
  %503 = load i32, ptr %x, align 4
  %504 = load ptr, ptr %r.addr, align 8
  %505 = load i32, ptr %i, align 4
  %add769 = add nsw i32 %505, 3
  %506 = load i32, ptr %x_size.addr, align 4
  %mul770 = mul nsw i32 %add769, %506
  %507 = load i32, ptr %j, align 4
  %add771 = add nsw i32 %mul770, %507
  %add772 = add nsw i32 %add771, 1
  %idxprom773 = sext i32 %add772 to i64
  %arrayidx774 = getelementptr inbounds i32, ptr %504, i64 %idxprom773
  %508 = load i32, ptr %arrayidx774, align 4
  %cmp775.not = icmp slt i32 %503, %508
  br i1 %cmp775.not, label %for.inc1321, label %land.lhs.true777

land.lhs.true777:                                 ; preds = %land.lhs.true768
  %509 = load i32, ptr %x, align 4
  %510 = load ptr, ptr %r.addr, align 8
  %511 = load i32, ptr %i, align 4
  %add778 = add nsw i32 %511, 3
  %512 = load i32, ptr %x_size.addr, align 4
  %mul779 = mul nsw i32 %add778, %512
  %513 = load i32, ptr %j, align 4
  %add780 = add nsw i32 %mul779, %513
  %add781 = add nsw i32 %add780, 2
  %idxprom782 = sext i32 %add781 to i64
  %arrayidx783 = getelementptr inbounds i32, ptr %510, i64 %idxprom782
  %514 = load i32, ptr %arrayidx783, align 4
  %cmp784.not = icmp slt i32 %509, %514
  br i1 %cmp784.not, label %for.inc1321, label %land.lhs.true786

land.lhs.true786:                                 ; preds = %land.lhs.true777
  %515 = load i32, ptr %x, align 4
  %516 = load ptr, ptr %r.addr, align 8
  %517 = load i32, ptr %i, align 4
  %add787 = add nsw i32 %517, 3
  %518 = load i32, ptr %x_size.addr, align 4
  %mul788 = mul nsw i32 %add787, %518
  %519 = load i32, ptr %j, align 4
  %add789 = add nsw i32 %mul788, %519
  %add790 = add nsw i32 %add789, 3
  %idxprom791 = sext i32 %add790 to i64
  %arrayidx792 = getelementptr inbounds i32, ptr %516, i64 %idxprom791
  %520 = load i32, ptr %arrayidx792, align 4
  %cmp793.not = icmp slt i32 %515, %520
  br i1 %cmp793.not, label %for.inc1321, label %if.then795

if.then795:                                       ; preds = %land.lhs.true786
  %521 = load ptr, ptr %corner_list.addr, align 8
  %522 = load i32, ptr %n, align 4
  %idxprom796 = sext i32 %522 to i64
  %info = getelementptr inbounds %struct.anon, ptr %521, i64 %idxprom796, i32 2
  store i32 0, ptr %info, align 4
  %523 = load i32, ptr %j, align 4
  %idxprom798 = sext i32 %522 to i64
  %arrayidx799 = getelementptr inbounds %struct.anon, ptr %521, i64 %idxprom798
  store i32 %523, ptr %arrayidx799, align 4
  %524 = load i32, ptr %i, align 4
  %525 = load ptr, ptr %corner_list.addr, align 8
  %526 = load i32, ptr %n, align 4
  %idxprom801 = sext i32 %526 to i64
  %y803 = getelementptr inbounds %struct.anon, ptr %525, i64 %idxprom801, i32 1
  store i32 %524, ptr %y803, align 4
  %527 = load ptr, ptr %in.addr, align 8
  %528 = load i32, ptr %i, align 4
  %sub804 = add nsw i32 %528, -2
  %529 = load i32, ptr %x_size.addr, align 4
  %mul805 = mul nsw i32 %sub804, %529
  %530 = load i32, ptr %j, align 4
  %add806 = add nsw i32 %mul805, %530
  %sub807 = add nsw i32 %add806, -2
  %idxprom808 = sext i32 %sub807 to i64
  %arrayidx809 = getelementptr inbounds i8, ptr %527, i64 %idxprom808
  %531 = load i8, ptr %arrayidx809, align 1
  %conv810 = zext i8 %531 to i32
  %532 = load ptr, ptr %in.addr, align 8
  %533 = load i32, ptr %i, align 4
  %sub811 = add nsw i32 %533, -2
  %534 = load i32, ptr %x_size.addr, align 4
  %mul812 = mul nsw i32 %sub811, %534
  %535 = load i32, ptr %j, align 4
  %add813 = add nsw i32 %mul812, %535
  %sub814 = add nsw i32 %add813, -1
  %idxprom815 = sext i32 %sub814 to i64
  %arrayidx816 = getelementptr inbounds i8, ptr %532, i64 %idxprom815
  %536 = load i8, ptr %arrayidx816, align 1
  %conv817 = zext i8 %536 to i32
  %add818 = add nuw nsw i32 %conv810, %conv817
  %537 = load ptr, ptr %in.addr, align 8
  %538 = load i32, ptr %i, align 4
  %sub819 = add nsw i32 %538, -2
  %539 = load i32, ptr %x_size.addr, align 4
  %mul820 = mul nsw i32 %sub819, %539
  %540 = load i32, ptr %j, align 4
  %add821 = add nsw i32 %mul820, %540
  %idxprom822 = sext i32 %add821 to i64
  %arrayidx823 = getelementptr inbounds i8, ptr %537, i64 %idxprom822
  %541 = load i8, ptr %arrayidx823, align 1
  %conv824 = zext i8 %541 to i32
  %add825 = add nuw nsw i32 %add818, %conv824
  %542 = load ptr, ptr %in.addr, align 8
  %543 = load i32, ptr %i, align 4
  %sub826 = add nsw i32 %543, -2
  %544 = load i32, ptr %x_size.addr, align 4
  %mul827 = mul nsw i32 %sub826, %544
  %545 = load i32, ptr %j, align 4
  %add828 = add nsw i32 %mul827, %545
  %add829 = add nsw i32 %add828, 1
  %idxprom830 = sext i32 %add829 to i64
  %arrayidx831 = getelementptr inbounds i8, ptr %542, i64 %idxprom830
  %546 = load i8, ptr %arrayidx831, align 1
  %conv832 = zext i8 %546 to i32
  %add833 = add nuw nsw i32 %add825, %conv832
  %547 = load ptr, ptr %in.addr, align 8
  %548 = load i32, ptr %i, align 4
  %sub834 = add nsw i32 %548, -2
  %549 = load i32, ptr %x_size.addr, align 4
  %mul835 = mul nsw i32 %sub834, %549
  %550 = load i32, ptr %j, align 4
  %add836 = add nsw i32 %mul835, %550
  %add837 = add nsw i32 %add836, 2
  %idxprom838 = sext i32 %add837 to i64
  %arrayidx839 = getelementptr inbounds i8, ptr %547, i64 %idxprom838
  %551 = load i8, ptr %arrayidx839, align 1
  %conv840 = zext i8 %551 to i32
  %add841 = add nuw nsw i32 %add833, %conv840
  %552 = load ptr, ptr %in.addr, align 8
  %553 = load i32, ptr %i, align 4
  %sub842 = add nsw i32 %553, -1
  %554 = load i32, ptr %x_size.addr, align 4
  %mul843 = mul nsw i32 %sub842, %554
  %555 = load i32, ptr %j, align 4
  %add844 = add nsw i32 %mul843, %555
  %sub845 = add nsw i32 %add844, -2
  %idxprom846 = sext i32 %sub845 to i64
  %arrayidx847 = getelementptr inbounds i8, ptr %552, i64 %idxprom846
  %556 = load i8, ptr %arrayidx847, align 1
  %conv848 = zext i8 %556 to i32
  %add849 = add nuw nsw i32 %add841, %conv848
  %557 = load ptr, ptr %in.addr, align 8
  %558 = load i32, ptr %i, align 4
  %sub850 = add nsw i32 %558, -1
  %559 = load i32, ptr %x_size.addr, align 4
  %mul851 = mul nsw i32 %sub850, %559
  %560 = load i32, ptr %j, align 4
  %add852 = add nsw i32 %mul851, %560
  %sub853 = add nsw i32 %add852, -1
  %idxprom854 = sext i32 %sub853 to i64
  %arrayidx855 = getelementptr inbounds i8, ptr %557, i64 %idxprom854
  %561 = load i8, ptr %arrayidx855, align 1
  %conv856 = zext i8 %561 to i32
  %add857 = add nuw nsw i32 %add849, %conv856
  %562 = load ptr, ptr %in.addr, align 8
  %563 = load i32, ptr %i, align 4
  %sub858 = add nsw i32 %563, -1
  %564 = load i32, ptr %x_size.addr, align 4
  %mul859 = mul nsw i32 %sub858, %564
  %565 = load i32, ptr %j, align 4
  %add860 = add nsw i32 %mul859, %565
  %idxprom861 = sext i32 %add860 to i64
  %arrayidx862 = getelementptr inbounds i8, ptr %562, i64 %idxprom861
  %566 = load i8, ptr %arrayidx862, align 1
  %conv863 = zext i8 %566 to i32
  %add864 = add nsw i32 %add857, %conv863
  %567 = load ptr, ptr %in.addr, align 8
  %568 = load i32, ptr %i, align 4
  %sub865 = add nsw i32 %568, -1
  %569 = load i32, ptr %x_size.addr, align 4
  %mul866 = mul nsw i32 %sub865, %569
  %570 = load i32, ptr %j, align 4
  %add867 = add nsw i32 %mul866, %570
  %add868 = add nsw i32 %add867, 1
  %idxprom869 = sext i32 %add868 to i64
  %arrayidx870 = getelementptr inbounds i8, ptr %567, i64 %idxprom869
  %571 = load i8, ptr %arrayidx870, align 1
  %conv871 = zext i8 %571 to i32
  %add872 = add nsw i32 %add864, %conv871
  %572 = load ptr, ptr %in.addr, align 8
  %573 = load i32, ptr %i, align 4
  %sub873 = add nsw i32 %573, -1
  %574 = load i32, ptr %x_size.addr, align 4
  %mul874 = mul nsw i32 %sub873, %574
  %575 = load i32, ptr %j, align 4
  %add875 = add nsw i32 %mul874, %575
  %add876 = add nsw i32 %add875, 2
  %idxprom877 = sext i32 %add876 to i64
  %arrayidx878 = getelementptr inbounds i8, ptr %572, i64 %idxprom877
  %576 = load i8, ptr %arrayidx878, align 1
  %conv879 = zext i8 %576 to i32
  %add880 = add nsw i32 %add872, %conv879
  %577 = load ptr, ptr %in.addr, align 8
  %578 = load i32, ptr %i, align 4
  %579 = load i32, ptr %x_size.addr, align 4
  %mul881 = mul nsw i32 %578, %579
  %580 = load i32, ptr %j, align 4
  %add882 = add nsw i32 %mul881, %580
  %sub883 = add nsw i32 %add882, -2
  %idxprom884 = sext i32 %sub883 to i64
  %arrayidx885 = getelementptr inbounds i8, ptr %577, i64 %idxprom884
  %581 = load i8, ptr %arrayidx885, align 1
  %conv886 = zext i8 %581 to i32
  %add887 = add nsw i32 %add880, %conv886
  %582 = load ptr, ptr %in.addr, align 8
  %583 = load i32, ptr %i, align 4
  %584 = load i32, ptr %x_size.addr, align 4
  %mul888 = mul nsw i32 %583, %584
  %585 = load i32, ptr %j, align 4
  %add889 = add nsw i32 %mul888, %585
  %sub890 = add nsw i32 %add889, -1
  %idxprom891 = sext i32 %sub890 to i64
  %arrayidx892 = getelementptr inbounds i8, ptr %582, i64 %idxprom891
  %586 = load i8, ptr %arrayidx892, align 1
  %conv893 = zext i8 %586 to i32
  %add894 = add nsw i32 %add887, %conv893
  %587 = load ptr, ptr %in.addr, align 8
  %588 = load i32, ptr %i, align 4
  %589 = load i32, ptr %x_size.addr, align 4
  %mul895 = mul nsw i32 %588, %589
  %590 = load i32, ptr %j, align 4
  %add896 = add nsw i32 %mul895, %590
  %idxprom897 = sext i32 %add896 to i64
  %arrayidx898 = getelementptr inbounds i8, ptr %587, i64 %idxprom897
  %591 = load i8, ptr %arrayidx898, align 1
  %conv899 = zext i8 %591 to i32
  %add900 = add nsw i32 %add894, %conv899
  %592 = load ptr, ptr %in.addr, align 8
  %593 = load i32, ptr %i, align 4
  %594 = load i32, ptr %x_size.addr, align 4
  %mul901 = mul nsw i32 %593, %594
  %595 = load i32, ptr %j, align 4
  %add902 = add nsw i32 %mul901, %595
  %add903 = add nsw i32 %add902, 1
  %idxprom904 = sext i32 %add903 to i64
  %arrayidx905 = getelementptr inbounds i8, ptr %592, i64 %idxprom904
  %596 = load i8, ptr %arrayidx905, align 1
  %conv906 = zext i8 %596 to i32
  %add907 = add nsw i32 %add900, %conv906
  %597 = load ptr, ptr %in.addr, align 8
  %598 = load i32, ptr %i, align 4
  %599 = load i32, ptr %x_size.addr, align 4
  %mul908 = mul nsw i32 %598, %599
  %600 = load i32, ptr %j, align 4
  %add909 = add nsw i32 %mul908, %600
  %add910 = add nsw i32 %add909, 2
  %idxprom911 = sext i32 %add910 to i64
  %arrayidx912 = getelementptr inbounds i8, ptr %597, i64 %idxprom911
  %601 = load i8, ptr %arrayidx912, align 1
  %conv913 = zext i8 %601 to i32
  %add914 = add nsw i32 %add907, %conv913
  %602 = load ptr, ptr %in.addr, align 8
  %603 = load i32, ptr %i, align 4
  %add915 = add nsw i32 %603, 1
  %604 = load i32, ptr %x_size.addr, align 4
  %mul916 = mul nsw i32 %add915, %604
  %605 = load i32, ptr %j, align 4
  %add917 = add nsw i32 %mul916, %605
  %sub918 = add nsw i32 %add917, -2
  %idxprom919 = sext i32 %sub918 to i64
  %arrayidx920 = getelementptr inbounds i8, ptr %602, i64 %idxprom919
  %606 = load i8, ptr %arrayidx920, align 1
  %conv921 = zext i8 %606 to i32
  %add922 = add nsw i32 %add914, %conv921
  %607 = load ptr, ptr %in.addr, align 8
  %608 = load i32, ptr %i, align 4
  %add923 = add nsw i32 %608, 1
  %609 = load i32, ptr %x_size.addr, align 4
  %mul924 = mul nsw i32 %add923, %609
  %610 = load i32, ptr %j, align 4
  %add925 = add nsw i32 %mul924, %610
  %sub926 = add nsw i32 %add925, -1
  %idxprom927 = sext i32 %sub926 to i64
  %arrayidx928 = getelementptr inbounds i8, ptr %607, i64 %idxprom927
  %611 = load i8, ptr %arrayidx928, align 1
  %conv929 = zext i8 %611 to i32
  %add930 = add nsw i32 %add922, %conv929
  %612 = load ptr, ptr %in.addr, align 8
  %613 = load i32, ptr %i, align 4
  %add931 = add nsw i32 %613, 1
  %614 = load i32, ptr %x_size.addr, align 4
  %mul932 = mul nsw i32 %add931, %614
  %615 = load i32, ptr %j, align 4
  %add933 = add nsw i32 %mul932, %615
  %idxprom934 = sext i32 %add933 to i64
  %arrayidx935 = getelementptr inbounds i8, ptr %612, i64 %idxprom934
  %616 = load i8, ptr %arrayidx935, align 1
  %conv936 = zext i8 %616 to i32
  %add937 = add nsw i32 %add930, %conv936
  %617 = load ptr, ptr %in.addr, align 8
  %618 = load i32, ptr %i, align 4
  %add938 = add nsw i32 %618, 1
  %619 = load i32, ptr %x_size.addr, align 4
  %mul939 = mul nsw i32 %add938, %619
  %620 = load i32, ptr %j, align 4
  %add940 = add nsw i32 %mul939, %620
  %add941 = add nsw i32 %add940, 1
  %idxprom942 = sext i32 %add941 to i64
  %arrayidx943 = getelementptr inbounds i8, ptr %617, i64 %idxprom942
  %621 = load i8, ptr %arrayidx943, align 1
  %conv944 = zext i8 %621 to i32
  %add945 = add nsw i32 %add937, %conv944
  %622 = load ptr, ptr %in.addr, align 8
  %623 = load i32, ptr %i, align 4
  %add946 = add nsw i32 %623, 1
  %624 = load i32, ptr %x_size.addr, align 4
  %mul947 = mul nsw i32 %add946, %624
  %625 = load i32, ptr %j, align 4
  %add948 = add nsw i32 %mul947, %625
  %add949 = add nsw i32 %add948, 2
  %idxprom950 = sext i32 %add949 to i64
  %arrayidx951 = getelementptr inbounds i8, ptr %622, i64 %idxprom950
  %626 = load i8, ptr %arrayidx951, align 1
  %conv952 = zext i8 %626 to i32
  %add953 = add nsw i32 %add945, %conv952
  %627 = load ptr, ptr %in.addr, align 8
  %628 = load i32, ptr %i, align 4
  %add954 = add nsw i32 %628, 2
  %629 = load i32, ptr %x_size.addr, align 4
  %mul955 = mul nsw i32 %add954, %629
  %630 = load i32, ptr %j, align 4
  %add956 = add nsw i32 %mul955, %630
  %sub957 = add nsw i32 %add956, -2
  %idxprom958 = sext i32 %sub957 to i64
  %arrayidx959 = getelementptr inbounds i8, ptr %627, i64 %idxprom958
  %631 = load i8, ptr %arrayidx959, align 1
  %conv960 = zext i8 %631 to i32
  %add961 = add nsw i32 %add953, %conv960
  %632 = load ptr, ptr %in.addr, align 8
  %633 = load i32, ptr %i, align 4
  %add962 = add nsw i32 %633, 2
  %634 = load i32, ptr %x_size.addr, align 4
  %mul963 = mul nsw i32 %add962, %634
  %635 = load i32, ptr %j, align 4
  %add964 = add nsw i32 %mul963, %635
  %sub965 = add nsw i32 %add964, -1
  %idxprom966 = sext i32 %sub965 to i64
  %arrayidx967 = getelementptr inbounds i8, ptr %632, i64 %idxprom966
  %636 = load i8, ptr %arrayidx967, align 1
  %conv968 = zext i8 %636 to i32
  %add969 = add nsw i32 %add961, %conv968
  %637 = load ptr, ptr %in.addr, align 8
  %638 = load i32, ptr %i, align 4
  %add970 = add nsw i32 %638, 2
  %639 = load i32, ptr %x_size.addr, align 4
  %mul971 = mul nsw i32 %add970, %639
  %640 = load i32, ptr %j, align 4
  %add972 = add nsw i32 %mul971, %640
  %idxprom973 = sext i32 %add972 to i64
  %arrayidx974 = getelementptr inbounds i8, ptr %637, i64 %idxprom973
  %641 = load i8, ptr %arrayidx974, align 1
  %conv975 = zext i8 %641 to i32
  %add976 = add nsw i32 %add969, %conv975
  %642 = load ptr, ptr %in.addr, align 8
  %643 = load i32, ptr %i, align 4
  %add977 = add nsw i32 %643, 2
  %644 = load i32, ptr %x_size.addr, align 4
  %mul978 = mul nsw i32 %add977, %644
  %645 = load i32, ptr %j, align 4
  %add979 = add nsw i32 %mul978, %645
  %add980 = add nsw i32 %add979, 1
  %idxprom981 = sext i32 %add980 to i64
  %arrayidx982 = getelementptr inbounds i8, ptr %642, i64 %idxprom981
  %646 = load i8, ptr %arrayidx982, align 1
  %conv983 = zext i8 %646 to i32
  %add984 = add nsw i32 %add976, %conv983
  %647 = load ptr, ptr %in.addr, align 8
  %648 = load i32, ptr %i, align 4
  %add985 = add nsw i32 %648, 2
  %649 = load i32, ptr %x_size.addr, align 4
  %mul986 = mul nsw i32 %add985, %649
  %650 = load i32, ptr %j, align 4
  %add987 = add nsw i32 %mul986, %650
  %add988 = add nsw i32 %add987, 2
  %idxprom989 = sext i32 %add988 to i64
  %arrayidx990 = getelementptr inbounds i8, ptr %647, i64 %idxprom989
  %651 = load i8, ptr %arrayidx990, align 1
  %conv991 = zext i8 %651 to i32
  %add992 = add nsw i32 %add984, %conv991
  store i32 %add992, ptr %x, align 4
  %div = sdiv i32 %add992, 25
  %652 = load ptr, ptr %corner_list.addr, align 8
  %653 = load i32, ptr %n, align 4
  %idxprom993 = sext i32 %653 to i64
  %I = getelementptr inbounds %struct.anon, ptr %652, i64 %idxprom993, i32 5
  store i32 %div, ptr %I, align 4
  %654 = load ptr, ptr %in.addr, align 8
  %655 = load i32, ptr %i, align 4
  %sub995 = add nsw i32 %655, -2
  %656 = load i32, ptr %x_size.addr, align 4
  %mul996 = mul nsw i32 %sub995, %656
  %657 = load i32, ptr %j, align 4
  %add997 = add nsw i32 %mul996, %657
  %add998 = add nsw i32 %add997, 2
  %idxprom999 = sext i32 %add998 to i64
  %arrayidx1000 = getelementptr inbounds i8, ptr %654, i64 %idxprom999
  %658 = load i8, ptr %arrayidx1000, align 1
  %conv1001 = zext i8 %658 to i32
  %659 = load ptr, ptr %in.addr, align 8
  %660 = load i32, ptr %i, align 4
  %sub1002 = add nsw i32 %660, -1
  %661 = load i32, ptr %x_size.addr, align 4
  %mul1003 = mul nsw i32 %sub1002, %661
  %662 = load i32, ptr %j, align 4
  %add1004 = add nsw i32 %mul1003, %662
  %add1005 = add nsw i32 %add1004, 2
  %idxprom1006 = sext i32 %add1005 to i64
  %arrayidx1007 = getelementptr inbounds i8, ptr %659, i64 %idxprom1006
  %663 = load i8, ptr %arrayidx1007, align 1
  %conv1008 = zext i8 %663 to i32
  %add1009 = add nuw nsw i32 %conv1001, %conv1008
  %664 = load ptr, ptr %in.addr, align 8
  %665 = load i32, ptr %i, align 4
  %666 = load i32, ptr %x_size.addr, align 4
  %mul1010 = mul nsw i32 %665, %666
  %667 = load i32, ptr %j, align 4
  %add1011 = add nsw i32 %mul1010, %667
  %add1012 = add nsw i32 %add1011, 2
  %idxprom1013 = sext i32 %add1012 to i64
  %arrayidx1014 = getelementptr inbounds i8, ptr %664, i64 %idxprom1013
  %668 = load i8, ptr %arrayidx1014, align 1
  %conv1015 = zext i8 %668 to i32
  %add1016 = add nuw nsw i32 %add1009, %conv1015
  %669 = load ptr, ptr %in.addr, align 8
  %670 = load i32, ptr %i, align 4
  %add1017 = add nsw i32 %670, 1
  %671 = load i32, ptr %x_size.addr, align 4
  %mul1018 = mul nsw i32 %add1017, %671
  %672 = load i32, ptr %j, align 4
  %add1019 = add nsw i32 %mul1018, %672
  %add1020 = add nsw i32 %add1019, 2
  %idxprom1021 = sext i32 %add1020 to i64
  %arrayidx1022 = getelementptr inbounds i8, ptr %669, i64 %idxprom1021
  %673 = load i8, ptr %arrayidx1022, align 1
  %conv1023 = zext i8 %673 to i32
  %add1024 = add nuw nsw i32 %add1016, %conv1023
  %674 = load ptr, ptr %in.addr, align 8
  %675 = load i32, ptr %i, align 4
  %add1025 = add nsw i32 %675, 2
  %676 = load i32, ptr %x_size.addr, align 4
  %mul1026 = mul nsw i32 %add1025, %676
  %677 = load i32, ptr %j, align 4
  %add1027 = add nsw i32 %mul1026, %677
  %add1028 = add nsw i32 %add1027, 2
  %idxprom1029 = sext i32 %add1028 to i64
  %arrayidx1030 = getelementptr inbounds i8, ptr %674, i64 %idxprom1029
  %678 = load i8, ptr %arrayidx1030, align 1
  %conv1031 = zext i8 %678 to i32
  %add1032 = add nuw nsw i32 %add1024, %conv1031
  %679 = load ptr, ptr %in.addr, align 8
  %680 = load i32, ptr %i, align 4
  %sub1033 = add nsw i32 %680, -2
  %681 = load i32, ptr %x_size.addr, align 4
  %mul1034 = mul nsw i32 %sub1033, %681
  %682 = load i32, ptr %j, align 4
  %add1035 = add nsw i32 %mul1034, %682
  %sub1036 = add nsw i32 %add1035, -2
  %idxprom1037 = sext i32 %sub1036 to i64
  %arrayidx1038 = getelementptr inbounds i8, ptr %679, i64 %idxprom1037
  %683 = load i8, ptr %arrayidx1038, align 1
  %conv1039 = zext i8 %683 to i32
  %684 = load ptr, ptr %in.addr, align 8
  %685 = load i32, ptr %i, align 4
  %sub1040 = add nsw i32 %685, -1
  %686 = load i32, ptr %x_size.addr, align 4
  %mul1041 = mul nsw i32 %sub1040, %686
  %687 = load i32, ptr %j, align 4
  %add1042 = add nsw i32 %mul1041, %687
  %sub1043 = add nsw i32 %add1042, -2
  %idxprom1044 = sext i32 %sub1043 to i64
  %arrayidx1045 = getelementptr inbounds i8, ptr %684, i64 %idxprom1044
  %688 = load i8, ptr %arrayidx1045, align 1
  %conv1046 = zext i8 %688 to i32
  %add1047 = add nuw nsw i32 %conv1039, %conv1046
  %689 = load ptr, ptr %in.addr, align 8
  %690 = load i32, ptr %i, align 4
  %691 = load i32, ptr %x_size.addr, align 4
  %mul1048 = mul nsw i32 %690, %691
  %692 = load i32, ptr %j, align 4
  %add1049 = add nsw i32 %mul1048, %692
  %sub1050 = add nsw i32 %add1049, -2
  %idxprom1051 = sext i32 %sub1050 to i64
  %arrayidx1052 = getelementptr inbounds i8, ptr %689, i64 %idxprom1051
  %693 = load i8, ptr %arrayidx1052, align 1
  %conv1053 = zext i8 %693 to i32
  %add1054 = add nuw nsw i32 %add1047, %conv1053
  %694 = load ptr, ptr %in.addr, align 8
  %695 = load i32, ptr %i, align 4
  %add1055 = add nsw i32 %695, 1
  %696 = load i32, ptr %x_size.addr, align 4
  %mul1056 = mul nsw i32 %add1055, %696
  %697 = load i32, ptr %j, align 4
  %add1057 = add nsw i32 %mul1056, %697
  %sub1058 = add nsw i32 %add1057, -2
  %idxprom1059 = sext i32 %sub1058 to i64
  %arrayidx1060 = getelementptr inbounds i8, ptr %694, i64 %idxprom1059
  %698 = load i8, ptr %arrayidx1060, align 1
  %conv1061 = zext i8 %698 to i32
  %add1062 = add nuw nsw i32 %add1054, %conv1061
  %699 = load ptr, ptr %in.addr, align 8
  %700 = load i32, ptr %i, align 4
  %add1063 = add nsw i32 %700, 2
  %701 = load i32, ptr %x_size.addr, align 4
  %mul1064 = mul nsw i32 %add1063, %701
  %702 = load i32, ptr %j, align 4
  %add1065 = add nsw i32 %mul1064, %702
  %sub1066 = add nsw i32 %add1065, -2
  %idxprom1067 = sext i32 %sub1066 to i64
  %arrayidx1068 = getelementptr inbounds i8, ptr %699, i64 %idxprom1067
  %703 = load i8, ptr %arrayidx1068, align 1
  %conv1069 = zext i8 %703 to i32
  %add1070 = add nuw nsw i32 %add1062, %conv1069
  %sub1071 = sub nsw i32 %add1032, %add1070
  store i32 %sub1071, ptr %x, align 4
  %704 = load ptr, ptr %in.addr, align 8
  %705 = load i32, ptr %i, align 4
  %sub1072 = add nsw i32 %705, -2
  %706 = load i32, ptr %x_size.addr, align 4
  %mul1073 = mul nsw i32 %sub1072, %706
  %707 = load i32, ptr %j, align 4
  %add1074 = add nsw i32 %mul1073, %707
  %add1075 = add nsw i32 %add1074, 1
  %idxprom1076 = sext i32 %add1075 to i64
  %arrayidx1077 = getelementptr inbounds i8, ptr %704, i64 %idxprom1076
  %708 = load i8, ptr %arrayidx1077, align 1
  %conv1078 = zext i8 %708 to i32
  %add1079 = add nsw i32 %sub1071, %conv1078
  %709 = load ptr, ptr %in.addr, align 8
  %710 = load i32, ptr %i, align 4
  %sub1080 = add nsw i32 %710, -1
  %711 = load i32, ptr %x_size.addr, align 4
  %mul1081 = mul nsw i32 %sub1080, %711
  %712 = load i32, ptr %j, align 4
  %add1082 = add nsw i32 %mul1081, %712
  %add1083 = add nsw i32 %add1082, 1
  %idxprom1084 = sext i32 %add1083 to i64
  %arrayidx1085 = getelementptr inbounds i8, ptr %709, i64 %idxprom1084
  %713 = load i8, ptr %arrayidx1085, align 1
  %conv1086 = zext i8 %713 to i32
  %add1087 = add nsw i32 %add1079, %conv1086
  %714 = load ptr, ptr %in.addr, align 8
  %715 = load i32, ptr %i, align 4
  %716 = load i32, ptr %x_size.addr, align 4
  %mul1088 = mul nsw i32 %715, %716
  %717 = load i32, ptr %j, align 4
  %add1089 = add nsw i32 %mul1088, %717
  %add1090 = add nsw i32 %add1089, 1
  %idxprom1091 = sext i32 %add1090 to i64
  %arrayidx1092 = getelementptr inbounds i8, ptr %714, i64 %idxprom1091
  %718 = load i8, ptr %arrayidx1092, align 1
  %conv1093 = zext i8 %718 to i32
  %add1094 = add nsw i32 %add1087, %conv1093
  %719 = load ptr, ptr %in.addr, align 8
  %720 = load i32, ptr %i, align 4
  %add1095 = add nsw i32 %720, 1
  %721 = load i32, ptr %x_size.addr, align 4
  %mul1096 = mul nsw i32 %add1095, %721
  %722 = load i32, ptr %j, align 4
  %add1097 = add nsw i32 %mul1096, %722
  %add1098 = add nsw i32 %add1097, 1
  %idxprom1099 = sext i32 %add1098 to i64
  %arrayidx1100 = getelementptr inbounds i8, ptr %719, i64 %idxprom1099
  %723 = load i8, ptr %arrayidx1100, align 1
  %conv1101 = zext i8 %723 to i32
  %add1102 = add nsw i32 %add1094, %conv1101
  %724 = load ptr, ptr %in.addr, align 8
  %725 = load i32, ptr %i, align 4
  %add1103 = add nsw i32 %725, 2
  %726 = load i32, ptr %x_size.addr, align 4
  %mul1104 = mul nsw i32 %add1103, %726
  %727 = load i32, ptr %j, align 4
  %add1105 = add nsw i32 %mul1104, %727
  %add1106 = add nsw i32 %add1105, 1
  %idxprom1107 = sext i32 %add1106 to i64
  %arrayidx1108 = getelementptr inbounds i8, ptr %724, i64 %idxprom1107
  %728 = load i8, ptr %arrayidx1108, align 1
  %conv1109 = zext i8 %728 to i32
  %add1110 = add nsw i32 %add1102, %conv1109
  %729 = load ptr, ptr %in.addr, align 8
  %730 = load i32, ptr %i, align 4
  %sub1111 = add nsw i32 %730, -2
  %731 = load i32, ptr %x_size.addr, align 4
  %mul1112 = mul nsw i32 %sub1111, %731
  %732 = load i32, ptr %j, align 4
  %add1113 = add nsw i32 %mul1112, %732
  %sub1114 = add nsw i32 %add1113, -1
  %idxprom1115 = sext i32 %sub1114 to i64
  %arrayidx1116 = getelementptr inbounds i8, ptr %729, i64 %idxprom1115
  %733 = load i8, ptr %arrayidx1116, align 1
  %conv1117 = zext i8 %733 to i32
  %734 = load ptr, ptr %in.addr, align 8
  %735 = load i32, ptr %i, align 4
  %sub1118 = add nsw i32 %735, -1
  %736 = load i32, ptr %x_size.addr, align 4
  %mul1119 = mul nsw i32 %sub1118, %736
  %737 = load i32, ptr %j, align 4
  %add1120 = add nsw i32 %mul1119, %737
  %sub1121 = add nsw i32 %add1120, -1
  %idxprom1122 = sext i32 %sub1121 to i64
  %arrayidx1123 = getelementptr inbounds i8, ptr %734, i64 %idxprom1122
  %738 = load i8, ptr %arrayidx1123, align 1
  %conv1124 = zext i8 %738 to i32
  %add1125 = add nuw nsw i32 %conv1117, %conv1124
  %739 = load ptr, ptr %in.addr, align 8
  %740 = load i32, ptr %i, align 4
  %741 = load i32, ptr %x_size.addr, align 4
  %mul1126 = mul nsw i32 %740, %741
  %742 = load i32, ptr %j, align 4
  %add1127 = add nsw i32 %mul1126, %742
  %sub1128 = add nsw i32 %add1127, -1
  %idxprom1129 = sext i32 %sub1128 to i64
  %arrayidx1130 = getelementptr inbounds i8, ptr %739, i64 %idxprom1129
  %743 = load i8, ptr %arrayidx1130, align 1
  %conv1131 = zext i8 %743 to i32
  %add1132 = add nuw nsw i32 %add1125, %conv1131
  %744 = load ptr, ptr %in.addr, align 8
  %745 = load i32, ptr %i, align 4
  %add1133 = add nsw i32 %745, 1
  %746 = load i32, ptr %x_size.addr, align 4
  %mul1134 = mul nsw i32 %add1133, %746
  %747 = load i32, ptr %j, align 4
  %add1135 = add nsw i32 %mul1134, %747
  %sub1136 = add nsw i32 %add1135, -1
  %idxprom1137 = sext i32 %sub1136 to i64
  %arrayidx1138 = getelementptr inbounds i8, ptr %744, i64 %idxprom1137
  %748 = load i8, ptr %arrayidx1138, align 1
  %conv1139 = zext i8 %748 to i32
  %add1140 = add nuw nsw i32 %add1132, %conv1139
  %749 = load ptr, ptr %in.addr, align 8
  %750 = load i32, ptr %i, align 4
  %add1141 = add nsw i32 %750, 2
  %751 = load i32, ptr %x_size.addr, align 4
  %mul1142 = mul nsw i32 %add1141, %751
  %752 = load i32, ptr %j, align 4
  %add1143 = add nsw i32 %mul1142, %752
  %sub1144 = add nsw i32 %add1143, -1
  %idxprom1145 = sext i32 %sub1144 to i64
  %arrayidx1146 = getelementptr inbounds i8, ptr %749, i64 %idxprom1145
  %753 = load i8, ptr %arrayidx1146, align 1
  %conv1147 = zext i8 %753 to i32
  %add1148 = add nuw nsw i32 %add1140, %conv1147
  %sub1149 = sub nsw i32 %add1110, %add1148
  %754 = load i32, ptr %x, align 4
  %add1150 = add nsw i32 %754, %sub1149
  store i32 %add1150, ptr %x, align 4
  %755 = load ptr, ptr %in.addr, align 8
  %756 = load i32, ptr %i, align 4
  %add1151 = add nsw i32 %756, 2
  %757 = load i32, ptr %x_size.addr, align 4
  %mul1152 = mul nsw i32 %add1151, %757
  %758 = load i32, ptr %j, align 4
  %add1153 = add nsw i32 %mul1152, %758
  %sub1154 = add nsw i32 %add1153, -2
  %idxprom1155 = sext i32 %sub1154 to i64
  %arrayidx1156 = getelementptr inbounds i8, ptr %755, i64 %idxprom1155
  %759 = load i8, ptr %arrayidx1156, align 1
  %conv1157 = zext i8 %759 to i32
  %760 = load ptr, ptr %in.addr, align 8
  %761 = load i32, ptr %i, align 4
  %add1158 = add nsw i32 %761, 2
  %762 = load i32, ptr %x_size.addr, align 4
  %mul1159 = mul nsw i32 %add1158, %762
  %763 = load i32, ptr %j, align 4
  %add1160 = add nsw i32 %mul1159, %763
  %sub1161 = add nsw i32 %add1160, -1
  %idxprom1162 = sext i32 %sub1161 to i64
  %arrayidx1163 = getelementptr inbounds i8, ptr %760, i64 %idxprom1162
  %764 = load i8, ptr %arrayidx1163, align 1
  %conv1164 = zext i8 %764 to i32
  %add1165 = add nuw nsw i32 %conv1157, %conv1164
  %765 = load ptr, ptr %in.addr, align 8
  %766 = load i32, ptr %i, align 4
  %add1166 = add nsw i32 %766, 2
  %767 = load i32, ptr %x_size.addr, align 4
  %mul1167 = mul nsw i32 %add1166, %767
  %768 = load i32, ptr %j, align 4
  %add1168 = add nsw i32 %mul1167, %768
  %idxprom1169 = sext i32 %add1168 to i64
  %arrayidx1170 = getelementptr inbounds i8, ptr %765, i64 %idxprom1169
  %769 = load i8, ptr %arrayidx1170, align 1
  %conv1171 = zext i8 %769 to i32
  %add1172 = add nuw nsw i32 %add1165, %conv1171
  %770 = load ptr, ptr %in.addr, align 8
  %771 = load i32, ptr %i, align 4
  %add1173 = add nsw i32 %771, 2
  %772 = load i32, ptr %x_size.addr, align 4
  %mul1174 = mul nsw i32 %add1173, %772
  %773 = load i32, ptr %j, align 4
  %add1175 = add nsw i32 %mul1174, %773
  %add1176 = add nsw i32 %add1175, 1
  %idxprom1177 = sext i32 %add1176 to i64
  %arrayidx1178 = getelementptr inbounds i8, ptr %770, i64 %idxprom1177
  %774 = load i8, ptr %arrayidx1178, align 1
  %conv1179 = zext i8 %774 to i32
  %add1180 = add nuw nsw i32 %add1172, %conv1179
  %775 = load ptr, ptr %in.addr, align 8
  %776 = load i32, ptr %i, align 4
  %add1181 = add nsw i32 %776, 2
  %777 = load i32, ptr %x_size.addr, align 4
  %mul1182 = mul nsw i32 %add1181, %777
  %778 = load i32, ptr %j, align 4
  %add1183 = add nsw i32 %mul1182, %778
  %add1184 = add nsw i32 %add1183, 2
  %idxprom1185 = sext i32 %add1184 to i64
  %arrayidx1186 = getelementptr inbounds i8, ptr %775, i64 %idxprom1185
  %779 = load i8, ptr %arrayidx1186, align 1
  %conv1187 = zext i8 %779 to i32
  %add1188 = add nuw nsw i32 %add1180, %conv1187
  %780 = load ptr, ptr %in.addr, align 8
  %781 = load i32, ptr %i, align 4
  %sub1189 = add nsw i32 %781, -2
  %782 = load i32, ptr %x_size.addr, align 4
  %mul1190 = mul nsw i32 %sub1189, %782
  %783 = load i32, ptr %j, align 4
  %add1191 = add nsw i32 %mul1190, %783
  %sub1192 = add nsw i32 %add1191, -2
  %idxprom1193 = sext i32 %sub1192 to i64
  %arrayidx1194 = getelementptr inbounds i8, ptr %780, i64 %idxprom1193
  %784 = load i8, ptr %arrayidx1194, align 1
  %conv1195 = zext i8 %784 to i32
  %785 = load ptr, ptr %in.addr, align 8
  %786 = load i32, ptr %i, align 4
  %sub1196 = add nsw i32 %786, -2
  %787 = load i32, ptr %x_size.addr, align 4
  %mul1197 = mul nsw i32 %sub1196, %787
  %788 = load i32, ptr %j, align 4
  %add1198 = add nsw i32 %mul1197, %788
  %sub1199 = add nsw i32 %add1198, -1
  %idxprom1200 = sext i32 %sub1199 to i64
  %arrayidx1201 = getelementptr inbounds i8, ptr %785, i64 %idxprom1200
  %789 = load i8, ptr %arrayidx1201, align 1
  %conv1202 = zext i8 %789 to i32
  %add1203 = add nuw nsw i32 %conv1195, %conv1202
  %790 = load ptr, ptr %in.addr, align 8
  %791 = load i32, ptr %i, align 4
  %sub1204 = add nsw i32 %791, -2
  %792 = load i32, ptr %x_size.addr, align 4
  %mul1205 = mul nsw i32 %sub1204, %792
  %793 = load i32, ptr %j, align 4
  %add1206 = add nsw i32 %mul1205, %793
  %idxprom1207 = sext i32 %add1206 to i64
  %arrayidx1208 = getelementptr inbounds i8, ptr %790, i64 %idxprom1207
  %794 = load i8, ptr %arrayidx1208, align 1
  %conv1209 = zext i8 %794 to i32
  %add1210 = add nuw nsw i32 %add1203, %conv1209
  %795 = load ptr, ptr %in.addr, align 8
  %796 = load i32, ptr %i, align 4
  %sub1211 = add nsw i32 %796, -2
  %797 = load i32, ptr %x_size.addr, align 4
  %mul1212 = mul nsw i32 %sub1211, %797
  %798 = load i32, ptr %j, align 4
  %add1213 = add nsw i32 %mul1212, %798
  %add1214 = add nsw i32 %add1213, 1
  %idxprom1215 = sext i32 %add1214 to i64
  %arrayidx1216 = getelementptr inbounds i8, ptr %795, i64 %idxprom1215
  %799 = load i8, ptr %arrayidx1216, align 1
  %conv1217 = zext i8 %799 to i32
  %add1218 = add nuw nsw i32 %add1210, %conv1217
  %800 = load ptr, ptr %in.addr, align 8
  %801 = load i32, ptr %i, align 4
  %sub1219 = add nsw i32 %801, -2
  %802 = load i32, ptr %x_size.addr, align 4
  %mul1220 = mul nsw i32 %sub1219, %802
  %803 = load i32, ptr %j, align 4
  %add1221 = add nsw i32 %mul1220, %803
  %add1222 = add nsw i32 %add1221, 2
  %idxprom1223 = sext i32 %add1222 to i64
  %arrayidx1224 = getelementptr inbounds i8, ptr %800, i64 %idxprom1223
  %804 = load i8, ptr %arrayidx1224, align 1
  %conv1225 = zext i8 %804 to i32
  %add1226 = add nuw nsw i32 %add1218, %conv1225
  %sub1227 = sub nsw i32 %add1188, %add1226
  store i32 %sub1227, ptr %y, align 4
  %805 = load ptr, ptr %in.addr, align 8
  %806 = load i32, ptr %i, align 4
  %add1228 = add nsw i32 %806, 1
  %807 = load i32, ptr %x_size.addr, align 4
  %mul1229 = mul nsw i32 %add1228, %807
  %808 = load i32, ptr %j, align 4
  %add1230 = add nsw i32 %mul1229, %808
  %sub1231 = add nsw i32 %add1230, -2
  %idxprom1232 = sext i32 %sub1231 to i64
  %arrayidx1233 = getelementptr inbounds i8, ptr %805, i64 %idxprom1232
  %809 = load i8, ptr %arrayidx1233, align 1
  %conv1234 = zext i8 %809 to i32
  %add1235 = add nsw i32 %sub1227, %conv1234
  %810 = load ptr, ptr %in.addr, align 8
  %811 = load i32, ptr %i, align 4
  %add1236 = add nsw i32 %811, 1
  %812 = load i32, ptr %x_size.addr, align 4
  %mul1237 = mul nsw i32 %add1236, %812
  %813 = load i32, ptr %j, align 4
  %add1238 = add nsw i32 %mul1237, %813
  %sub1239 = add nsw i32 %add1238, -1
  %idxprom1240 = sext i32 %sub1239 to i64
  %arrayidx1241 = getelementptr inbounds i8, ptr %810, i64 %idxprom1240
  %814 = load i8, ptr %arrayidx1241, align 1
  %conv1242 = zext i8 %814 to i32
  %add1243 = add nsw i32 %add1235, %conv1242
  %815 = load ptr, ptr %in.addr, align 8
  %816 = load i32, ptr %i, align 4
  %add1244 = add nsw i32 %816, 1
  %817 = load i32, ptr %x_size.addr, align 4
  %mul1245 = mul nsw i32 %add1244, %817
  %818 = load i32, ptr %j, align 4
  %add1246 = add nsw i32 %mul1245, %818
  %idxprom1247 = sext i32 %add1246 to i64
  %arrayidx1248 = getelementptr inbounds i8, ptr %815, i64 %idxprom1247
  %819 = load i8, ptr %arrayidx1248, align 1
  %conv1249 = zext i8 %819 to i32
  %add1250 = add nsw i32 %add1243, %conv1249
  %820 = load ptr, ptr %in.addr, align 8
  %821 = load i32, ptr %i, align 4
  %add1251 = add nsw i32 %821, 1
  %822 = load i32, ptr %x_size.addr, align 4
  %mul1252 = mul nsw i32 %add1251, %822
  %823 = load i32, ptr %j, align 4
  %add1253 = add nsw i32 %mul1252, %823
  %add1254 = add nsw i32 %add1253, 1
  %idxprom1255 = sext i32 %add1254 to i64
  %arrayidx1256 = getelementptr inbounds i8, ptr %820, i64 %idxprom1255
  %824 = load i8, ptr %arrayidx1256, align 1
  %conv1257 = zext i8 %824 to i32
  %add1258 = add nsw i32 %add1250, %conv1257
  %825 = load ptr, ptr %in.addr, align 8
  %826 = load i32, ptr %i, align 4
  %add1259 = add nsw i32 %826, 1
  %827 = load i32, ptr %x_size.addr, align 4
  %mul1260 = mul nsw i32 %add1259, %827
  %828 = load i32, ptr %j, align 4
  %add1261 = add nsw i32 %mul1260, %828
  %add1262 = add nsw i32 %add1261, 2
  %idxprom1263 = sext i32 %add1262 to i64
  %arrayidx1264 = getelementptr inbounds i8, ptr %825, i64 %idxprom1263
  %829 = load i8, ptr %arrayidx1264, align 1
  %conv1265 = zext i8 %829 to i32
  %add1266 = add nsw i32 %add1258, %conv1265
  %830 = load ptr, ptr %in.addr, align 8
  %831 = load i32, ptr %i, align 4
  %sub1267 = add nsw i32 %831, -1
  %832 = load i32, ptr %x_size.addr, align 4
  %mul1268 = mul nsw i32 %sub1267, %832
  %833 = load i32, ptr %j, align 4
  %add1269 = add nsw i32 %mul1268, %833
  %sub1270 = add nsw i32 %add1269, -2
  %idxprom1271 = sext i32 %sub1270 to i64
  %arrayidx1272 = getelementptr inbounds i8, ptr %830, i64 %idxprom1271
  %834 = load i8, ptr %arrayidx1272, align 1
  %conv1273 = zext i8 %834 to i32
  %835 = load ptr, ptr %in.addr, align 8
  %836 = load i32, ptr %i, align 4
  %sub1274 = add nsw i32 %836, -1
  %837 = load i32, ptr %x_size.addr, align 4
  %mul1275 = mul nsw i32 %sub1274, %837
  %838 = load i32, ptr %j, align 4
  %add1276 = add nsw i32 %mul1275, %838
  %sub1277 = add nsw i32 %add1276, -1
  %idxprom1278 = sext i32 %sub1277 to i64
  %arrayidx1279 = getelementptr inbounds i8, ptr %835, i64 %idxprom1278
  %839 = load i8, ptr %arrayidx1279, align 1
  %conv1280 = zext i8 %839 to i32
  %add1281 = add nuw nsw i32 %conv1273, %conv1280
  %840 = load ptr, ptr %in.addr, align 8
  %841 = load i32, ptr %i, align 4
  %sub1282 = add nsw i32 %841, -1
  %842 = load i32, ptr %x_size.addr, align 4
  %mul1283 = mul nsw i32 %sub1282, %842
  %843 = load i32, ptr %j, align 4
  %add1284 = add nsw i32 %mul1283, %843
  %idxprom1285 = sext i32 %add1284 to i64
  %arrayidx1286 = getelementptr inbounds i8, ptr %840, i64 %idxprom1285
  %844 = load i8, ptr %arrayidx1286, align 1
  %conv1287 = zext i8 %844 to i32
  %add1288 = add nuw nsw i32 %add1281, %conv1287
  %845 = load ptr, ptr %in.addr, align 8
  %846 = load i32, ptr %i, align 4
  %sub1289 = add nsw i32 %846, -1
  %847 = load i32, ptr %x_size.addr, align 4
  %mul1290 = mul nsw i32 %sub1289, %847
  %848 = load i32, ptr %j, align 4
  %add1291 = add nsw i32 %mul1290, %848
  %add1292 = add nsw i32 %add1291, 1
  %idxprom1293 = sext i32 %add1292 to i64
  %arrayidx1294 = getelementptr inbounds i8, ptr %845, i64 %idxprom1293
  %849 = load i8, ptr %arrayidx1294, align 1
  %conv1295 = zext i8 %849 to i32
  %add1296 = add nuw nsw i32 %add1288, %conv1295
  %850 = load ptr, ptr %in.addr, align 8
  %851 = load i32, ptr %i, align 4
  %sub1297 = add nsw i32 %851, -1
  %852 = load i32, ptr %x_size.addr, align 4
  %mul1298 = mul nsw i32 %sub1297, %852
  %853 = load i32, ptr %j, align 4
  %add1299 = add nsw i32 %mul1298, %853
  %add1300 = add nsw i32 %add1299, 2
  %idxprom1301 = sext i32 %add1300 to i64
  %arrayidx1302 = getelementptr inbounds i8, ptr %850, i64 %idxprom1301
  %854 = load i8, ptr %arrayidx1302, align 1
  %conv1303 = zext i8 %854 to i32
  %add1304 = add nuw nsw i32 %add1296, %conv1303
  %sub1305 = sub nsw i32 %add1266, %add1304
  %855 = load i32, ptr %y, align 4
  %add1306 = add nsw i32 %855, %sub1305
  store i32 %add1306, ptr %y, align 4
  %856 = load i32, ptr %x, align 4
  %div1307 = sdiv i32 %856, 15
  %857 = load ptr, ptr %corner_list.addr, align 8
  %858 = load i32, ptr %n, align 4
  %idxprom1308 = sext i32 %858 to i64
  %dx = getelementptr inbounds %struct.anon, ptr %857, i64 %idxprom1308, i32 3
  store i32 %div1307, ptr %dx, align 4
  %859 = load i32, ptr %y, align 4
  %div1310 = sdiv i32 %859, 15
  %860 = load ptr, ptr %corner_list.addr, align 8
  %861 = load i32, ptr %n, align 4
  %idxprom1311 = sext i32 %861 to i64
  %dy = getelementptr inbounds %struct.anon, ptr %860, i64 %idxprom1311, i32 4
  store i32 %div1310, ptr %dy, align 4
  %inc1313 = add nsw i32 %861, 1
  store i32 %inc1313, ptr %n, align 4
  %cmp1314 = icmp eq i32 %inc1313, 15000
  br i1 %cmp1314, label %if.then1316, label %for.inc1321

if.then1316:                                      ; preds = %if.then795
  %862 = load ptr, ptr @__stderrp, align 8
  %863 = call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %862)
  call void @exit(i32 noundef 1) #8
  unreachable

for.inc1321:                                      ; preds = %for.body369, %if.then795, %land.lhs.true786, %land.lhs.true777, %land.lhs.true768, %land.lhs.true760, %land.lhs.true751, %land.lhs.true742, %land.lhs.true733, %land.lhs.true724, %land.lhs.true715, %land.lhs.true706, %land.lhs.true698, %land.lhs.true689, %land.lhs.true680, %land.lhs.true671, %land.lhs.true662, %land.lhs.true653, %land.lhs.true644, %land.lhs.true636, %land.lhs.true627, %land.lhs.true618, %land.lhs.true609, %land.lhs.true601, %land.lhs.true593, %land.lhs.true585, %land.lhs.true577, %land.lhs.true569, %land.lhs.true561, %land.lhs.true552, %land.lhs.true543, %land.lhs.true534, %land.lhs.true526, %land.lhs.true517, %land.lhs.true508, %land.lhs.true499, %land.lhs.true490, %land.lhs.true481, %land.lhs.true472, %land.lhs.true464, %land.lhs.true455, %land.lhs.true446, %land.lhs.true437, %land.lhs.true428, %land.lhs.true419, %land.lhs.true410, %land.lhs.true402, %land.lhs.true393, %land.lhs.true, %if.then376
  %864 = load i32, ptr %j, align 4
  %inc1322 = add nsw i32 %864, 1
  br label %for.cond365, !llvm.loop !49

for.inc1324:                                      ; preds = %for.cond365
  %865 = load i32, ptr %i, align 4
  %inc1325 = add nsw i32 %865, 1
  br label %for.cond360, !llvm.loop !50

for.end1326:                                      ; preds = %for.cond360
  %866 = load ptr, ptr %corner_list.addr, align 8
  %867 = load i32, ptr %n, align 4
  %idxprom1327 = sext i32 %867 to i64
  %info1329 = getelementptr inbounds %struct.anon, ptr %866, i64 %idxprom1327, i32 2
  store i32 7, ptr %info1329, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %tcp = alloca ptr, align 8
  %in = alloca ptr, align 8
  %bp = alloca ptr, align 8
  %mid = alloca ptr, align 8
  %dt = alloca float, align 4
  %r = alloca ptr, align 8
  %argindex = alloca i32, align 4
  %bt = alloca i32, align 4
  %principle = alloca i32, align 4
  %thin_post_proc = alloca i32, align 4
  %three_by_three = alloca i32, align 4
  %drawing_mode = alloca i32, align 4
  %susan_quick = alloca i32, align 4
  %max_no_corners = alloca i32, align 4
  %max_no_edges = alloca i32, align 4
  %mode = alloca i32, align 4
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %corner_list = alloca [15000 x %struct.anon], align 4
  %ct_repeat = alloca i64, align 8
  %ct_repeat_max = alloca i64, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store float 4.000000e+00, ptr %dt, align 4
  store i32 3, ptr %argindex, align 4
  store i32 20, ptr %bt, align 4
  store i32 0, ptr %principle, align 4
  store i32 1, ptr %thin_post_proc, align 4
  store i32 0, ptr %three_by_three, align 4
  store i32 0, ptr %drawing_mode, align 4
  store i32 0, ptr %susan_quick, align 4
  store i32 1850, ptr %max_no_corners, align 4
  store i32 2650, ptr %max_no_edges, align 4
  store i32 0, ptr %mode, align 4
  store i64 0, ptr %ct_repeat, align 8
  store i64 1, ptr %ct_repeat_max, align 8
  %call = call ptr @getenv(ptr noundef nonnull @.str.30) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call ptr @getenv(ptr noundef nonnull @.str.30) #9
  %call2 = call i64 @atol(ptr nocapture noundef %call1) #9
  store i64 %call2, ptr %ct_repeat_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %cmp3 = icmp slt i32 %0, 3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @usage()
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  call void @get_image(ptr noundef %2, ptr noundef nonnull %in, ptr noundef nonnull %x_size, ptr noundef nonnull %y_size)
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %if.end5
  %3 = load i32, ptr %argindex, align 4
  %4 = load i32, ptr %argc.addr, align 4
  %cmp6 = icmp slt i32 %3, %4
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %argv.addr, align 8
  %6 = load i32, ptr %argindex, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx7, align 8
  store ptr %7, ptr %tcp, align 8
  %8 = load i8, ptr %7, align 1
  %cmp8 = icmp eq i8 %8, 45
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %9 = load ptr, ptr %tcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %tcp, align 8
  %10 = load i8, ptr %incdec.ptr, align 1
  %conv11 = sext i8 %10 to i32
  switch i32 %conv11, label %if.end43 [
    i32 115, label %sw.bb
    i32 101, label %sw.bb12
    i32 99, label %sw.bb13
    i32 112, label %sw.bb14
    i32 110, label %sw.bb15
    i32 98, label %sw.bb16
    i32 51, label %sw.bb17
    i32 113, label %sw.bb18
    i32 100, label %sw.bb19
    i32 116, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.then10
  store i32 0, ptr %mode, align 4
  br label %if.end43

sw.bb12:                                          ; preds = %if.then10
  store i32 1, ptr %mode, align 4
  br label %if.end43

sw.bb13:                                          ; preds = %if.then10
  store i32 2, ptr %mode, align 4
  br label %if.end43

sw.bb14:                                          ; preds = %if.then10
  store i32 1, ptr %principle, align 4
  br label %if.end43

sw.bb15:                                          ; preds = %if.then10
  store i32 0, ptr %thin_post_proc, align 4
  br label %if.end43

sw.bb16:                                          ; preds = %if.then10
  store i32 1, ptr %drawing_mode, align 4
  br label %if.end43

sw.bb17:                                          ; preds = %if.then10
  store i32 1, ptr %three_by_three, align 4
  br label %if.end43

sw.bb18:                                          ; preds = %if.then10
  store i32 1, ptr %susan_quick, align 4
  br label %if.end43

sw.bb19:                                          ; preds = %if.then10
  %11 = load i32, ptr %argindex, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %argindex, align 4
  %12 = load i32, ptr %argc.addr, align 4
  %cmp20.not = icmp slt i32 %inc, %12
  br i1 %cmp20.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %sw.bb19
  %puts1 = call i32 @puts(ptr nonnull @str.16)
  call void @exit(i32 noundef 0) #8
  unreachable

if.end24:                                         ; preds = %sw.bb19
  %13 = load ptr, ptr %argv.addr, align 8
  %14 = load i32, ptr %argindex, align 4
  %idxprom25 = sext i32 %14 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %13, i64 %idxprom25
  %15 = load ptr, ptr %arrayidx26, align 8
  %call27 = call double @atof(ptr noundef %15) #9
  %conv28 = fptrunc double %call27 to float
  store float %conv28, ptr %dt, align 4
  %cmp29 = fcmp olt float %conv28, 0.000000e+00
  br i1 %cmp29, label %if.then31, label %if.end43

if.then31:                                        ; preds = %if.end24
  store i32 1, ptr %three_by_three, align 4
  br label %if.end43

sw.bb33:                                          ; preds = %if.then10
  %16 = load i32, ptr %argindex, align 4
  %inc34 = add nsw i32 %16, 1
  store i32 %inc34, ptr %argindex, align 4
  %17 = load i32, ptr %argc.addr, align 4
  %cmp35.not = icmp slt i32 %inc34, %17
  br i1 %cmp35.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %sw.bb33
  %puts = call i32 @puts(ptr nonnull @str.15)
  call void @exit(i32 noundef 0) #8
  unreachable

if.end39:                                         ; preds = %sw.bb33
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr %argindex, align 4
  %idxprom40 = sext i32 %19 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %18, i64 %idxprom40
  %20 = load ptr, ptr %arrayidx41, align 8
  %call42 = call i32 @atoi(ptr nocapture noundef %20) #9
  store i32 %call42, ptr %bt, align 4
  br label %if.end43

if.else:                                          ; preds = %while.body
  call void @usage()
  br label %if.end43

if.end43:                                         ; preds = %if.then10, %sw.bb, %sw.bb12, %sw.bb13, %sw.bb14, %sw.bb15, %sw.bb16, %sw.bb17, %sw.bb18, %if.end39, %if.then31, %if.end24, %if.else
  %21 = load i32, ptr %argindex, align 4
  %inc44 = add nsw i32 %21, 1
  store i32 %inc44, ptr %argindex, align 4
  br label %while.cond, !llvm.loop !51

while.end:                                        ; preds = %while.cond
  %22 = load i32, ptr %principle, align 4
  %cmp45 = icmp eq i32 %22, 1
  %23 = load i32, ptr %mode, align 4
  %cmp47 = icmp eq i32 %23, 0
  %or.cond = select i1 %cmp45, i1 %cmp47, i1 false
  %spec.store.select = select i1 %or.cond, i32 1, i32 %23
  store i32 %spec.store.select, ptr %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %storemerge = phi i64 [ 0, %while.end ], [ %inc96, %for.inc ]
  store i64 %storemerge, ptr %ct_repeat, align 8
  %24 = load i64, ptr %ct_repeat_max, align 8
  %cmp51 = icmp slt i64 %storemerge, %24
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, ptr %mode, align 4
  switch i32 %25, label %for.inc [
    i32 0, label %sw.bb53
    i32 1, label %sw.bb54
    i32 2, label %sw.bb79
  ]

sw.bb53:                                          ; preds = %for.body
  %26 = load i32, ptr %bt, align 4
  call void @setup_brightness_lut(ptr noundef nonnull %bp, i32 noundef %26, i32 noundef 2)
  %27 = load i32, ptr %three_by_three, align 4
  %28 = load ptr, ptr %in, align 8
  %29 = load float, ptr %dt, align 4
  %30 = load i32, ptr %x_size, align 4
  %31 = load i32, ptr %y_size, align 4
  %32 = load ptr, ptr %bp, align 8
  call void @susan_smoothing(i32 noundef %27, ptr noundef %28, float noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %bp, align 8
  call void @free_brightness_lut(ptr noundef %33)
  br label %for.inc

sw.bb54:                                          ; preds = %for.body
  %34 = load i32, ptr %x_size, align 4
  %35 = load i32, ptr %y_size, align 4
  %mul = mul nsw i32 %34, %35
  %conv55 = sext i32 %mul to i64
  %mul56 = shl nsw i64 %conv55, 2
  %call57 = call ptr @malloc(i64 noundef %mul56) #10
  store ptr %call57, ptr %r, align 8
  %36 = load i32, ptr %bt, align 4
  call void @setup_brightness_lut(ptr noundef nonnull %bp, i32 noundef %36, i32 noundef 6)
  %37 = load i32, ptr %principle, align 4
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.else64, label %if.then58

if.then58:                                        ; preds = %sw.bb54
  %38 = load i32, ptr %three_by_three, align 4
  %tobool59.not = icmp eq i32 %38, 0
  br i1 %tobool59.not, label %if.else61, label %if.then60

if.then60:                                        ; preds = %if.then58
  %39 = load ptr, ptr %in, align 8
  %40 = load ptr, ptr %r, align 8
  %41 = load ptr, ptr %bp, align 8
  %42 = load i32, ptr %max_no_edges, align 4
  %43 = load i32, ptr %x_size, align 4
  %44 = load i32, ptr %y_size, align 4
  call void @susan_principle_small(ptr noundef %39, ptr noundef %40, ptr noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44)
  br label %if.end62

if.else61:                                        ; preds = %if.then58
  %45 = load ptr, ptr %in, align 8
  %46 = load ptr, ptr %r, align 8
  %47 = load ptr, ptr %bp, align 8
  %48 = load i32, ptr %max_no_edges, align 4
  %49 = load i32, ptr %x_size, align 4
  %50 = load i32, ptr %y_size, align 4
  call void @susan_principle(ptr noundef %45, ptr noundef %46, ptr noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50)
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then60
  %51 = load ptr, ptr %r, align 8
  %52 = load ptr, ptr %in, align 8
  %53 = load i32, ptr %x_size, align 4
  %54 = load i32, ptr %y_size, align 4
  %mul63 = mul nsw i32 %53, %54
  call void @int_to_uchar(ptr noundef %51, ptr noundef %52, i32 noundef %mul63)
  br label %if.end78

if.else64:                                        ; preds = %sw.bb54
  %55 = load i32, ptr %x_size, align 4
  %56 = load i32, ptr %y_size, align 4
  %mul65 = mul nsw i32 %55, %56
  %conv66 = sext i32 %mul65 to i64
  %call67 = call ptr @malloc(i64 noundef %conv66) #10
  store ptr %call67, ptr %mid, align 8
  %57 = load i32, ptr %x_size, align 4
  %58 = load i32, ptr %y_size, align 4
  %mul68 = mul nsw i32 %57, %58
  %conv69 = sext i32 %mul68 to i64
  %59 = call i64 @llvm.objectsize.i64.p0(ptr %call67, i1 false, i1 true, i1 false)
  %call70 = call ptr @__memset_chk(ptr noundef %call67, i32 noundef 100, i64 noundef %conv69, i64 noundef %59) #9
  %60 = load i32, ptr %three_by_three, align 4
  %tobool71.not = icmp eq i32 %60, 0
  br i1 %tobool71.not, label %if.else73, label %if.then72

if.then72:                                        ; preds = %if.else64
  %61 = load ptr, ptr %in, align 8
  %62 = load ptr, ptr %r, align 8
  %63 = load ptr, ptr %mid, align 8
  %64 = load ptr, ptr %bp, align 8
  %65 = load i32, ptr %max_no_edges, align 4
  %66 = load i32, ptr %x_size, align 4
  %67 = load i32, ptr %y_size, align 4
  call void @susan_edges_small(ptr noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67)
  br label %if.end74

if.else73:                                        ; preds = %if.else64
  %68 = load ptr, ptr %in, align 8
  %69 = load ptr, ptr %r, align 8
  %70 = load ptr, ptr %mid, align 8
  %71 = load ptr, ptr %bp, align 8
  %72 = load i32, ptr %max_no_edges, align 4
  %73 = load i32, ptr %x_size, align 4
  %74 = load i32, ptr %y_size, align 4
  call void @susan_edges(ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef %72, i32 noundef %73, i32 noundef %74)
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.then72
  %75 = load i32, ptr %thin_post_proc, align 4
  %tobool75.not = icmp eq i32 %75, 0
  br i1 %tobool75.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end74
  %76 = load ptr, ptr %r, align 8
  %77 = load ptr, ptr %mid, align 8
  %78 = load i32, ptr %x_size, align 4
  %79 = load i32, ptr %y_size, align 4
  call void @susan_thin(ptr noundef %76, ptr noundef %77, i32 noundef %78, i32 noundef %79)
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74
  %80 = load ptr, ptr %in, align 8
  %81 = load ptr, ptr %mid, align 8
  %82 = load i32, ptr %x_size, align 4
  %83 = load i32, ptr %y_size, align 4
  %84 = load i32, ptr %drawing_mode, align 4
  call void @edge_draw(ptr noundef %80, ptr noundef %81, i32 noundef %82, i32 noundef %83, i32 noundef %84)
  call void @free(ptr noundef %81) #9
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end62
  %85 = load ptr, ptr %bp, align 8
  call void @free_brightness_lut(ptr noundef %85)
  %86 = load ptr, ptr %r, align 8
  call void @free(ptr noundef %86) #9
  br label %for.inc

sw.bb79:                                          ; preds = %for.body
  %87 = load i32, ptr %x_size, align 4
  %88 = load i32, ptr %y_size, align 4
  %mul80 = mul nsw i32 %87, %88
  %conv81 = sext i32 %mul80 to i64
  %mul82 = shl nsw i64 %conv81, 2
  %call83 = call ptr @malloc(i64 noundef %mul82) #10
  store ptr %call83, ptr %r, align 8
  %89 = load i32, ptr %bt, align 4
  call void @setup_brightness_lut(ptr noundef nonnull %bp, i32 noundef %89, i32 noundef 6)
  %90 = load i32, ptr %principle, align 4
  %tobool84.not = icmp eq i32 %90, 0
  br i1 %tobool84.not, label %if.else87, label %if.then85

if.then85:                                        ; preds = %sw.bb79
  %91 = load ptr, ptr %in, align 8
  %92 = load ptr, ptr %r, align 8
  %93 = load ptr, ptr %bp, align 8
  %94 = load i32, ptr %max_no_corners, align 4
  %95 = load i32, ptr %x_size, align 4
  %96 = load i32, ptr %y_size, align 4
  call void @susan_principle(ptr noundef %91, ptr noundef %92, ptr noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96)
  %97 = load ptr, ptr %in, align 8
  %98 = load i32, ptr %x_size, align 4
  %99 = load i32, ptr %y_size, align 4
  %mul86 = mul nsw i32 %98, %99
  call void @int_to_uchar(ptr noundef %92, ptr noundef %97, i32 noundef %mul86)
  br label %if.end94

if.else87:                                        ; preds = %sw.bb79
  %100 = load i32, ptr %susan_quick, align 4
  %tobool88.not = icmp eq i32 %100, 0
  br i1 %tobool88.not, label %if.else90, label %if.then89

if.then89:                                        ; preds = %if.else87
  %101 = load ptr, ptr %in, align 8
  %102 = load ptr, ptr %r, align 8
  %103 = load ptr, ptr %bp, align 8
  %104 = load i32, ptr %max_no_corners, align 4
  %105 = load i32, ptr %x_size, align 4
  %106 = load i32, ptr %y_size, align 4
  call void @susan_corners_quick(ptr noundef %101, ptr noundef %102, ptr noundef %103, i32 noundef %104, ptr noundef nonnull %corner_list, i32 noundef %105, i32 noundef %106)
  br label %if.end92

if.else90:                                        ; preds = %if.else87
  %107 = load ptr, ptr %in, align 8
  %108 = load ptr, ptr %r, align 8
  %109 = load ptr, ptr %bp, align 8
  %110 = load i32, ptr %max_no_corners, align 4
  %111 = load i32, ptr %x_size, align 4
  %112 = load i32, ptr %y_size, align 4
  call void @susan_corners(ptr noundef %107, ptr noundef %108, ptr noundef %109, i32 noundef %110, ptr noundef nonnull %corner_list, i32 noundef %111, i32 noundef %112)
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.then89
  %113 = load ptr, ptr %in, align 8
  %114 = load i32, ptr %x_size, align 4
  %115 = load i32, ptr %drawing_mode, align 4
  call void @corner_draw(ptr noundef %113, ptr noundef nonnull %corner_list, i32 noundef %114, i32 noundef %115)
  br label %if.end94

if.end94:                                         ; preds = %if.end92, %if.then85
  %116 = load ptr, ptr %bp, align 8
  call void @free_brightness_lut(ptr noundef %116)
  %117 = load ptr, ptr %r, align 8
  call void @free(ptr noundef %117) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %sw.bb53, %if.end78, %if.end94
  %118 = load i64, ptr %ct_repeat, align 8
  %inc96 = add nsw i64 %118, 1
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %119 = load ptr, ptr %argv.addr, align 8
  %arrayidx97 = getelementptr inbounds ptr, ptr %119, i64 2
  %120 = load ptr, ptr %arrayidx97, align 8
  %121 = load ptr, ptr %in, align 8
  %122 = load i32, ptr %x_size, align 4
  %123 = load i32, ptr %y_size, align 4
  call void @put_image(ptr noundef %120, ptr noundef %121, i32 noundef %122, i32 noundef %123)
  %124 = load ptr, ptr %in, align 8
  call void @free(ptr noundef %124) #9
  ret i32 0
}

declare ptr @getenv(ptr noundef) #1

declare i64 @atol(ptr noundef) #1

declare double @atof(ptr noundef) #1

declare i32 @atoi(ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nofree nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
