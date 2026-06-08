; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-susan/susan.c'
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @usage() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  call void @exit(i32 noundef 0) #7
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getint(ptr noundef %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %dummy = alloca [10000 x i8], align 1
  store ptr %fd, ptr %fd.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %c, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end9
  %1 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %1, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %arraydecay = getelementptr inbounds [10000 x i8], ptr %dummy, i64 0, i64 0
  %2 = load ptr, ptr %fd.addr, align 8
  %call1 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 9000, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %3 = load i32, ptr %c, align 4
  %cmp2 = icmp eq i32 %3, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.13, ptr noundef @.str.14)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr %c, align 4
  %cmp6 = icmp sge i32 %5, 48
  br i1 %cmp6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %6 = load i32, ptr %c, align 4
  %cmp7 = icmp sle i32 %6, 57
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  br label %while.end

if.end9:                                          ; preds = %land.lhs.true, %if.end5
  %7 = load ptr, ptr %fd.addr, align 8
  %call10 = call i32 @getc(ptr noundef %7)
  store i32 %call10, ptr %c, align 4
  br label %while.body

while.end:                                        ; preds = %if.then8
  store i32 0, ptr %i, align 4
  br label %while.body11

while.body11:                                     ; preds = %while.end, %if.end19
  %8 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %8, 10
  %9 = load i32, ptr %c, align 4
  %sub = sub nsw i32 %9, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, ptr %i, align 4
  %10 = load ptr, ptr %fd.addr, align 8
  %call12 = call i32 @getc(ptr noundef %10)
  store i32 %call12, ptr %c, align 4
  %11 = load i32, ptr %c, align 4
  %cmp13 = icmp eq i32 %11, -1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body11
  %12 = load i32, ptr %i, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %while.body11
  %13 = load i32, ptr %c, align 4
  %cmp16 = icmp slt i32 %13, 48
  br i1 %cmp16, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %14 = load i32, ptr %c, align 4
  %cmp17 = icmp sgt i32 %14, 57
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false, %if.end15
  br label %while.end20

if.end19:                                         ; preds = %lor.lhs.false
  br label %while.body11

while.end20:                                      ; preds = %if.then18
  %15 = load i32, ptr %i, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end20, %if.then14
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @getc(ptr noundef) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @get_image(ptr noundef %filename, ptr noundef %in, ptr noundef %x_size, ptr noundef %y_size) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %x_size.addr = alloca ptr, align 8
  %y_size.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %header = alloca [100 x i8], align 1
  %tmp = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %x_size, ptr %x_size.addr, align 8
  store ptr %y_size, ptr %y_size.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.15)
  store ptr %call, ptr %fd, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.16, ptr noundef %2)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fd, align 8
  %call2 = call i32 @fgetc(ptr noundef %3)
  %conv = trunc i32 %call2 to i8
  %arrayidx = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %4 = load ptr, ptr %fd, align 8
  %call3 = call i32 @fgetc(ptr noundef %4)
  %conv4 = trunc i32 %call3 to i8
  %arrayidx5 = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 1
  store i8 %conv4, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 0
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 80
  br i1 %cmp8, label %land.lhs.true, label %if.then14

land.lhs.true:                                    ; preds = %if.end
  %arrayidx10 = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 1
  %6 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %6 to i32
  %cmp12 = icmp eq i32 %conv11, 53
  br i1 %cmp12, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr @__stderrp, align 8
  %8 = load ptr, ptr %filename.addr, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.17, ptr noundef %8)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end16:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %fd, align 8
  %call17 = call i32 @getint(ptr noundef %9)
  %10 = load ptr, ptr %x_size.addr, align 8
  store i32 %call17, ptr %10, align 4
  %11 = load ptr, ptr %fd, align 8
  %call18 = call i32 @getint(ptr noundef %11)
  %12 = load ptr, ptr %y_size.addr, align 8
  store i32 %call18, ptr %12, align 4
  %13 = load ptr, ptr %fd, align 8
  %call19 = call i32 @getint(ptr noundef %13)
  store i32 %call19, ptr %tmp, align 4
  %14 = load ptr, ptr %x_size.addr, align 8
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %y_size.addr, align 8
  %17 = load i32, ptr %16, align 4
  %mul = mul nsw i32 %15, %17
  %conv20 = sext i32 %mul to i64
  %call21 = call ptr @malloc(i64 noundef %conv20) #8
  %18 = load ptr, ptr %in.addr, align 8
  store ptr %call21, ptr %18, align 8
  %19 = load ptr, ptr %in.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %x_size.addr, align 8
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %y_size.addr, align 8
  %24 = load i32, ptr %23, align 4
  %mul22 = mul nsw i32 %22, %24
  %conv23 = sext i32 %mul22 to i64
  %25 = load ptr, ptr %fd, align 8
  %call24 = call i64 @fread(ptr noundef %20, i64 noundef 1, i64 noundef %conv23, ptr noundef %25)
  %cmp25 = icmp eq i64 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end16
  %26 = load ptr, ptr @__stderrp, align 8
  %27 = load ptr, ptr %filename.addr, align 8
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.18, ptr noundef %27)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end29:                                         ; preds = %if.end16
  %28 = load ptr, ptr %fd, align 8
  %call30 = call i32 @fclose(ptr noundef %28)
  ret void
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fgetc(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.19)
  store ptr %call, ptr %fd, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.20, ptr noundef %2)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fd, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.21)
  %4 = load ptr, ptr %fd, align 8
  %5 = load i32, ptr %x_size.addr, align 4
  %6 = load i32, ptr %y_size.addr, align 4
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.22, i32 noundef %5, i32 noundef %6)
  %7 = load ptr, ptr %fd, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.23)
  %8 = load ptr, ptr %in.addr, align 8
  %9 = load i32, ptr %x_size.addr, align 4
  %10 = load i32, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %9, %10
  %conv = sext i32 %mul to i64
  %11 = load ptr, ptr %fd, align 8
  %call5 = call i64 @"\01_fwrite"(ptr noundef %8, i64 noundef %conv, i64 noundef 1, ptr noundef %11)
  %cmp6 = icmp ne i64 %call5, 1
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = load ptr, ptr %filename.addr, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.24, ptr noundef %13)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end10:                                         ; preds = %if.end
  %14 = load ptr, ptr %fd, align 8
  %call11 = call i32 @fclose(ptr noundef %14)
  ret void
}

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %r.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %max_r, align 4
  %2 = load ptr, ptr %r.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %min_r, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %r.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx2, align 4
  %9 = load i32, ptr %max_r, align 4
  %cmp3 = icmp sgt i32 %8, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %r.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %idxprom4
  %12 = load i32, ptr %arrayidx5, align 4
  store i32 %12, ptr %max_r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load ptr, ptr %r.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %13, i64 %idxprom6
  %15 = load i32, ptr %arrayidx7, align 4
  %16 = load i32, ptr %min_r, align 4
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %17 = load ptr, ptr %r.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %17, i64 %idxprom10
  %19 = load i32, ptr %arrayidx11, align 4
  store i32 %19, ptr %min_r, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %min_r, align 4
  %22 = load i32, ptr %max_r, align 4
  %sub = sub nsw i32 %22, %21
  store i32 %sub, ptr %max_r, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.end
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %size.addr, align 4
  %cmp14 = icmp slt i32 %23, %24
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %25 = load ptr, ptr %r.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %25, i64 %idxprom16
  %27 = load i32, ptr %arrayidx17, align 4
  %28 = load i32, ptr %min_r, align 4
  %sub18 = sub nsw i32 %27, %28
  %mul = mul nsw i32 %sub18, 255
  %29 = load i32, ptr %max_r, align 4
  %div = sdiv i32 %mul, %29
  %conv = trunc i32 %div to i8
  %30 = load ptr, ptr %in.addr, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %31 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %30, i64 %idxprom19
  store i8 %conv, ptr %arrayidx20, align 1
  br label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %32 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %32, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond13, !llvm.loop !8

for.end23:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %call = call ptr @malloc(i64 noundef 516) #8
  %0 = load ptr, ptr %bp.addr, align 8
  store ptr %call, ptr %0, align 8
  %1 = load ptr, ptr %bp.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 258
  %3 = load ptr, ptr %bp.addr, align 8
  store ptr %add.ptr, ptr %3, align 8
  store i32 -256, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %4, 257
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %k, align 4
  %conv = sitofp i32 %5 to float
  %6 = load i32, ptr %thresh.addr, align 4
  %conv1 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv1
  %conv2 = fpext float %div to double
  store double %conv2, ptr %temp, align 8
  %7 = load double, ptr %temp, align 8
  %8 = load double, ptr %temp, align 8
  %mul = fmul double %7, %8
  store double %mul, ptr %temp, align 8
  %9 = load i32, ptr %form.addr, align 4
  %cmp3 = icmp eq i32 %9, 6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load double, ptr %temp, align 8
  %11 = load double, ptr %temp, align 8
  %mul5 = fmul double %10, %11
  %12 = load double, ptr %temp, align 8
  %mul6 = fmul double %mul5, %12
  store double %mul6, ptr %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load double, ptr %temp, align 8
  %fneg = fneg double %13
  %14 = call double @llvm.exp.f64(double %fneg)
  %mul7 = fmul double 1.000000e+02, %14
  store double %mul7, ptr %temp, align 8
  %15 = load double, ptr %temp, align 8
  %conv8 = fptoui double %15 to i8
  %16 = load ptr, ptr %bp.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %k, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store i8 %conv8, ptr %add.ptr9, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @free_brightness_lut(ptr noundef %bp) #0 {
entry:
  %bp.addr = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  %0 = load ptr, ptr %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -258
  call void @free(ptr noundef %add.ptr)
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %r.addr, align 8
  %1 = load i32, ptr %x_size.addr, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %3 = load ptr, ptr %r.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %mul1, i64 noundef %4) #9
  store i32 3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc285, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %y_size.addr, align 4
  %sub = sub nsw i32 %6, 3
  %cmp = icmp slt i32 %5, %sub
  br i1 %cmp, label %for.body, label %for.end287

for.body:                                         ; preds = %for.cond
  store i32 3, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %x_size.addr, align 4
  %sub4 = sub nsw i32 %8, 3
  %cmp5 = icmp slt i32 %7, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %sub8 = sub nsw i32 %10, 3
  %11 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %11
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %12 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %12 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load ptr, ptr %in.addr, align 8
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %15, %16
  %17 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %17
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %18 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %19 = load ptr, ptr %cp, align 8
  %20 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv17 = zext i8 %21 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %19, i64 %idx.neg
  %22 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %22 to i32
  %23 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %23, %conv20
  store i32 %add21, ptr %n, align 4
  %24 = load ptr, ptr %cp, align 8
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %26 = load i8, ptr %25, align 1
  %conv23 = zext i8 %26 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %24, i64 %idx.neg25
  %27 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %27 to i32
  %28 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %28, %conv27
  store i32 %add28, ptr %n, align 4
  %29 = load ptr, ptr %cp, align 8
  %30 = load ptr, ptr %p, align 8
  %31 = load i8, ptr %30, align 1
  %conv29 = zext i8 %31 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %29, i64 %idx.neg31
  %32 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %33, %conv33
  store i32 %add34, ptr %n, align 4
  %34 = load i32, ptr %x_size.addr, align 4
  %sub35 = sub nsw i32 %34, 3
  %35 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %35, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %36 = load ptr, ptr %cp, align 8
  %37 = load ptr, ptr %p, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8
  %38 = load i8, ptr %37, align 1
  %conv39 = zext i8 %38 to i32
  %idx.ext40 = sext i32 %conv39 to i64
  %idx.neg41 = sub i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %36, i64 %idx.neg41
  %39 = load i8, ptr %add.ptr42, align 1
  %conv43 = zext i8 %39 to i32
  %40 = load i32, ptr %n, align 4
  %add44 = add nsw i32 %40, %conv43
  store i32 %add44, ptr %n, align 4
  %41 = load ptr, ptr %cp, align 8
  %42 = load ptr, ptr %p, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr45, ptr %p, align 8
  %43 = load i8, ptr %42, align 1
  %conv46 = zext i8 %43 to i32
  %idx.ext47 = sext i32 %conv46 to i64
  %idx.neg48 = sub i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %41, i64 %idx.neg48
  %44 = load i8, ptr %add.ptr49, align 1
  %conv50 = zext i8 %44 to i32
  %45 = load i32, ptr %n, align 4
  %add51 = add nsw i32 %45, %conv50
  store i32 %add51, ptr %n, align 4
  %46 = load ptr, ptr %cp, align 8
  %47 = load ptr, ptr %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr52, ptr %p, align 8
  %48 = load i8, ptr %47, align 1
  %conv53 = zext i8 %48 to i32
  %idx.ext54 = sext i32 %conv53 to i64
  %idx.neg55 = sub i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %46, i64 %idx.neg55
  %49 = load i8, ptr %add.ptr56, align 1
  %conv57 = zext i8 %49 to i32
  %50 = load i32, ptr %n, align 4
  %add58 = add nsw i32 %50, %conv57
  store i32 %add58, ptr %n, align 4
  %51 = load ptr, ptr %cp, align 8
  %52 = load ptr, ptr %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8
  %53 = load i8, ptr %52, align 1
  %conv60 = zext i8 %53 to i32
  %idx.ext61 = sext i32 %conv60 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %51, i64 %idx.neg62
  %54 = load i8, ptr %add.ptr63, align 1
  %conv64 = zext i8 %54 to i32
  %55 = load i32, ptr %n, align 4
  %add65 = add nsw i32 %55, %conv64
  store i32 %add65, ptr %n, align 4
  %56 = load ptr, ptr %cp, align 8
  %57 = load ptr, ptr %p, align 8
  %58 = load i8, ptr %57, align 1
  %conv66 = zext i8 %58 to i32
  %idx.ext67 = sext i32 %conv66 to i64
  %idx.neg68 = sub i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %56, i64 %idx.neg68
  %59 = load i8, ptr %add.ptr69, align 1
  %conv70 = zext i8 %59 to i32
  %60 = load i32, ptr %n, align 4
  %add71 = add nsw i32 %60, %conv70
  store i32 %add71, ptr %n, align 4
  %61 = load i32, ptr %x_size.addr, align 4
  %sub72 = sub nsw i32 %61, 5
  %62 = load ptr, ptr %p, align 8
  %idx.ext73 = sext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %62, i64 %idx.ext73
  store ptr %add.ptr74, ptr %p, align 8
  %63 = load ptr, ptr %cp, align 8
  %64 = load ptr, ptr %p, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr75, ptr %p, align 8
  %65 = load i8, ptr %64, align 1
  %conv76 = zext i8 %65 to i32
  %idx.ext77 = sext i32 %conv76 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %63, i64 %idx.neg78
  %66 = load i8, ptr %add.ptr79, align 1
  %conv80 = zext i8 %66 to i32
  %67 = load i32, ptr %n, align 4
  %add81 = add nsw i32 %67, %conv80
  store i32 %add81, ptr %n, align 4
  %68 = load ptr, ptr %cp, align 8
  %69 = load ptr, ptr %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr82, ptr %p, align 8
  %70 = load i8, ptr %69, align 1
  %conv83 = zext i8 %70 to i32
  %idx.ext84 = sext i32 %conv83 to i64
  %idx.neg85 = sub i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %68, i64 %idx.neg85
  %71 = load i8, ptr %add.ptr86, align 1
  %conv87 = zext i8 %71 to i32
  %72 = load i32, ptr %n, align 4
  %add88 = add nsw i32 %72, %conv87
  store i32 %add88, ptr %n, align 4
  %73 = load ptr, ptr %cp, align 8
  %74 = load ptr, ptr %p, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr89, ptr %p, align 8
  %75 = load i8, ptr %74, align 1
  %conv90 = zext i8 %75 to i32
  %idx.ext91 = sext i32 %conv90 to i64
  %idx.neg92 = sub i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %73, i64 %idx.neg92
  %76 = load i8, ptr %add.ptr93, align 1
  %conv94 = zext i8 %76 to i32
  %77 = load i32, ptr %n, align 4
  %add95 = add nsw i32 %77, %conv94
  store i32 %add95, ptr %n, align 4
  %78 = load ptr, ptr %cp, align 8
  %79 = load ptr, ptr %p, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr96, ptr %p, align 8
  %80 = load i8, ptr %79, align 1
  %conv97 = zext i8 %80 to i32
  %idx.ext98 = sext i32 %conv97 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %78, i64 %idx.neg99
  %81 = load i8, ptr %add.ptr100, align 1
  %conv101 = zext i8 %81 to i32
  %82 = load i32, ptr %n, align 4
  %add102 = add nsw i32 %82, %conv101
  store i32 %add102, ptr %n, align 4
  %83 = load ptr, ptr %cp, align 8
  %84 = load ptr, ptr %p, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr103, ptr %p, align 8
  %85 = load i8, ptr %84, align 1
  %conv104 = zext i8 %85 to i32
  %idx.ext105 = sext i32 %conv104 to i64
  %idx.neg106 = sub i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %83, i64 %idx.neg106
  %86 = load i8, ptr %add.ptr107, align 1
  %conv108 = zext i8 %86 to i32
  %87 = load i32, ptr %n, align 4
  %add109 = add nsw i32 %87, %conv108
  store i32 %add109, ptr %n, align 4
  %88 = load ptr, ptr %cp, align 8
  %89 = load ptr, ptr %p, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr110, ptr %p, align 8
  %90 = load i8, ptr %89, align 1
  %conv111 = zext i8 %90 to i32
  %idx.ext112 = sext i32 %conv111 to i64
  %idx.neg113 = sub i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %88, i64 %idx.neg113
  %91 = load i8, ptr %add.ptr114, align 1
  %conv115 = zext i8 %91 to i32
  %92 = load i32, ptr %n, align 4
  %add116 = add nsw i32 %92, %conv115
  store i32 %add116, ptr %n, align 4
  %93 = load ptr, ptr %cp, align 8
  %94 = load ptr, ptr %p, align 8
  %95 = load i8, ptr %94, align 1
  %conv117 = zext i8 %95 to i32
  %idx.ext118 = sext i32 %conv117 to i64
  %idx.neg119 = sub i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %93, i64 %idx.neg119
  %96 = load i8, ptr %add.ptr120, align 1
  %conv121 = zext i8 %96 to i32
  %97 = load i32, ptr %n, align 4
  %add122 = add nsw i32 %97, %conv121
  store i32 %add122, ptr %n, align 4
  %98 = load i32, ptr %x_size.addr, align 4
  %sub123 = sub nsw i32 %98, 6
  %99 = load ptr, ptr %p, align 8
  %idx.ext124 = sext i32 %sub123 to i64
  %add.ptr125 = getelementptr inbounds i8, ptr %99, i64 %idx.ext124
  store ptr %add.ptr125, ptr %p, align 8
  %100 = load ptr, ptr %cp, align 8
  %101 = load ptr, ptr %p, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %101, i32 1
  store ptr %incdec.ptr126, ptr %p, align 8
  %102 = load i8, ptr %101, align 1
  %conv127 = zext i8 %102 to i32
  %idx.ext128 = sext i32 %conv127 to i64
  %idx.neg129 = sub i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %100, i64 %idx.neg129
  %103 = load i8, ptr %add.ptr130, align 1
  %conv131 = zext i8 %103 to i32
  %104 = load i32, ptr %n, align 4
  %add132 = add nsw i32 %104, %conv131
  store i32 %add132, ptr %n, align 4
  %105 = load ptr, ptr %cp, align 8
  %106 = load ptr, ptr %p, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %incdec.ptr133, ptr %p, align 8
  %107 = load i8, ptr %106, align 1
  %conv134 = zext i8 %107 to i32
  %idx.ext135 = sext i32 %conv134 to i64
  %idx.neg136 = sub i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %105, i64 %idx.neg136
  %108 = load i8, ptr %add.ptr137, align 1
  %conv138 = zext i8 %108 to i32
  %109 = load i32, ptr %n, align 4
  %add139 = add nsw i32 %109, %conv138
  store i32 %add139, ptr %n, align 4
  %110 = load ptr, ptr %cp, align 8
  %111 = load ptr, ptr %p, align 8
  %112 = load i8, ptr %111, align 1
  %conv140 = zext i8 %112 to i32
  %idx.ext141 = sext i32 %conv140 to i64
  %idx.neg142 = sub i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %110, i64 %idx.neg142
  %113 = load i8, ptr %add.ptr143, align 1
  %conv144 = zext i8 %113 to i32
  %114 = load i32, ptr %n, align 4
  %add145 = add nsw i32 %114, %conv144
  store i32 %add145, ptr %n, align 4
  %115 = load ptr, ptr %p, align 8
  %add.ptr146 = getelementptr inbounds i8, ptr %115, i64 2
  store ptr %add.ptr146, ptr %p, align 8
  %116 = load ptr, ptr %cp, align 8
  %117 = load ptr, ptr %p, align 8
  %incdec.ptr147 = getelementptr inbounds i8, ptr %117, i32 1
  store ptr %incdec.ptr147, ptr %p, align 8
  %118 = load i8, ptr %117, align 1
  %conv148 = zext i8 %118 to i32
  %idx.ext149 = sext i32 %conv148 to i64
  %idx.neg150 = sub i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %116, i64 %idx.neg150
  %119 = load i8, ptr %add.ptr151, align 1
  %conv152 = zext i8 %119 to i32
  %120 = load i32, ptr %n, align 4
  %add153 = add nsw i32 %120, %conv152
  store i32 %add153, ptr %n, align 4
  %121 = load ptr, ptr %cp, align 8
  %122 = load ptr, ptr %p, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %122, i32 1
  store ptr %incdec.ptr154, ptr %p, align 8
  %123 = load i8, ptr %122, align 1
  %conv155 = zext i8 %123 to i32
  %idx.ext156 = sext i32 %conv155 to i64
  %idx.neg157 = sub i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, ptr %121, i64 %idx.neg157
  %124 = load i8, ptr %add.ptr158, align 1
  %conv159 = zext i8 %124 to i32
  %125 = load i32, ptr %n, align 4
  %add160 = add nsw i32 %125, %conv159
  store i32 %add160, ptr %n, align 4
  %126 = load ptr, ptr %cp, align 8
  %127 = load ptr, ptr %p, align 8
  %128 = load i8, ptr %127, align 1
  %conv161 = zext i8 %128 to i32
  %idx.ext162 = sext i32 %conv161 to i64
  %idx.neg163 = sub i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, ptr %126, i64 %idx.neg163
  %129 = load i8, ptr %add.ptr164, align 1
  %conv165 = zext i8 %129 to i32
  %130 = load i32, ptr %n, align 4
  %add166 = add nsw i32 %130, %conv165
  store i32 %add166, ptr %n, align 4
  %131 = load i32, ptr %x_size.addr, align 4
  %sub167 = sub nsw i32 %131, 6
  %132 = load ptr, ptr %p, align 8
  %idx.ext168 = sext i32 %sub167 to i64
  %add.ptr169 = getelementptr inbounds i8, ptr %132, i64 %idx.ext168
  store ptr %add.ptr169, ptr %p, align 8
  %133 = load ptr, ptr %cp, align 8
  %134 = load ptr, ptr %p, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %134, i32 1
  store ptr %incdec.ptr170, ptr %p, align 8
  %135 = load i8, ptr %134, align 1
  %conv171 = zext i8 %135 to i32
  %idx.ext172 = sext i32 %conv171 to i64
  %idx.neg173 = sub i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %133, i64 %idx.neg173
  %136 = load i8, ptr %add.ptr174, align 1
  %conv175 = zext i8 %136 to i32
  %137 = load i32, ptr %n, align 4
  %add176 = add nsw i32 %137, %conv175
  store i32 %add176, ptr %n, align 4
  %138 = load ptr, ptr %cp, align 8
  %139 = load ptr, ptr %p, align 8
  %incdec.ptr177 = getelementptr inbounds i8, ptr %139, i32 1
  store ptr %incdec.ptr177, ptr %p, align 8
  %140 = load i8, ptr %139, align 1
  %conv178 = zext i8 %140 to i32
  %idx.ext179 = sext i32 %conv178 to i64
  %idx.neg180 = sub i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, ptr %138, i64 %idx.neg180
  %141 = load i8, ptr %add.ptr181, align 1
  %conv182 = zext i8 %141 to i32
  %142 = load i32, ptr %n, align 4
  %add183 = add nsw i32 %142, %conv182
  store i32 %add183, ptr %n, align 4
  %143 = load ptr, ptr %cp, align 8
  %144 = load ptr, ptr %p, align 8
  %incdec.ptr184 = getelementptr inbounds i8, ptr %144, i32 1
  store ptr %incdec.ptr184, ptr %p, align 8
  %145 = load i8, ptr %144, align 1
  %conv185 = zext i8 %145 to i32
  %idx.ext186 = sext i32 %conv185 to i64
  %idx.neg187 = sub i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, ptr %143, i64 %idx.neg187
  %146 = load i8, ptr %add.ptr188, align 1
  %conv189 = zext i8 %146 to i32
  %147 = load i32, ptr %n, align 4
  %add190 = add nsw i32 %147, %conv189
  store i32 %add190, ptr %n, align 4
  %148 = load ptr, ptr %cp, align 8
  %149 = load ptr, ptr %p, align 8
  %incdec.ptr191 = getelementptr inbounds i8, ptr %149, i32 1
  store ptr %incdec.ptr191, ptr %p, align 8
  %150 = load i8, ptr %149, align 1
  %conv192 = zext i8 %150 to i32
  %idx.ext193 = sext i32 %conv192 to i64
  %idx.neg194 = sub i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %148, i64 %idx.neg194
  %151 = load i8, ptr %add.ptr195, align 1
  %conv196 = zext i8 %151 to i32
  %152 = load i32, ptr %n, align 4
  %add197 = add nsw i32 %152, %conv196
  store i32 %add197, ptr %n, align 4
  %153 = load ptr, ptr %cp, align 8
  %154 = load ptr, ptr %p, align 8
  %incdec.ptr198 = getelementptr inbounds i8, ptr %154, i32 1
  store ptr %incdec.ptr198, ptr %p, align 8
  %155 = load i8, ptr %154, align 1
  %conv199 = zext i8 %155 to i32
  %idx.ext200 = sext i32 %conv199 to i64
  %idx.neg201 = sub i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %153, i64 %idx.neg201
  %156 = load i8, ptr %add.ptr202, align 1
  %conv203 = zext i8 %156 to i32
  %157 = load i32, ptr %n, align 4
  %add204 = add nsw i32 %157, %conv203
  store i32 %add204, ptr %n, align 4
  %158 = load ptr, ptr %cp, align 8
  %159 = load ptr, ptr %p, align 8
  %incdec.ptr205 = getelementptr inbounds i8, ptr %159, i32 1
  store ptr %incdec.ptr205, ptr %p, align 8
  %160 = load i8, ptr %159, align 1
  %conv206 = zext i8 %160 to i32
  %idx.ext207 = sext i32 %conv206 to i64
  %idx.neg208 = sub i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, ptr %158, i64 %idx.neg208
  %161 = load i8, ptr %add.ptr209, align 1
  %conv210 = zext i8 %161 to i32
  %162 = load i32, ptr %n, align 4
  %add211 = add nsw i32 %162, %conv210
  store i32 %add211, ptr %n, align 4
  %163 = load ptr, ptr %cp, align 8
  %164 = load ptr, ptr %p, align 8
  %165 = load i8, ptr %164, align 1
  %conv212 = zext i8 %165 to i32
  %idx.ext213 = sext i32 %conv212 to i64
  %idx.neg214 = sub i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %163, i64 %idx.neg214
  %166 = load i8, ptr %add.ptr215, align 1
  %conv216 = zext i8 %166 to i32
  %167 = load i32, ptr %n, align 4
  %add217 = add nsw i32 %167, %conv216
  store i32 %add217, ptr %n, align 4
  %168 = load i32, ptr %x_size.addr, align 4
  %sub218 = sub nsw i32 %168, 5
  %169 = load ptr, ptr %p, align 8
  %idx.ext219 = sext i32 %sub218 to i64
  %add.ptr220 = getelementptr inbounds i8, ptr %169, i64 %idx.ext219
  store ptr %add.ptr220, ptr %p, align 8
  %170 = load ptr, ptr %cp, align 8
  %171 = load ptr, ptr %p, align 8
  %incdec.ptr221 = getelementptr inbounds i8, ptr %171, i32 1
  store ptr %incdec.ptr221, ptr %p, align 8
  %172 = load i8, ptr %171, align 1
  %conv222 = zext i8 %172 to i32
  %idx.ext223 = sext i32 %conv222 to i64
  %idx.neg224 = sub i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %170, i64 %idx.neg224
  %173 = load i8, ptr %add.ptr225, align 1
  %conv226 = zext i8 %173 to i32
  %174 = load i32, ptr %n, align 4
  %add227 = add nsw i32 %174, %conv226
  store i32 %add227, ptr %n, align 4
  %175 = load ptr, ptr %cp, align 8
  %176 = load ptr, ptr %p, align 8
  %incdec.ptr228 = getelementptr inbounds i8, ptr %176, i32 1
  store ptr %incdec.ptr228, ptr %p, align 8
  %177 = load i8, ptr %176, align 1
  %conv229 = zext i8 %177 to i32
  %idx.ext230 = sext i32 %conv229 to i64
  %idx.neg231 = sub i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %175, i64 %idx.neg231
  %178 = load i8, ptr %add.ptr232, align 1
  %conv233 = zext i8 %178 to i32
  %179 = load i32, ptr %n, align 4
  %add234 = add nsw i32 %179, %conv233
  store i32 %add234, ptr %n, align 4
  %180 = load ptr, ptr %cp, align 8
  %181 = load ptr, ptr %p, align 8
  %incdec.ptr235 = getelementptr inbounds i8, ptr %181, i32 1
  store ptr %incdec.ptr235, ptr %p, align 8
  %182 = load i8, ptr %181, align 1
  %conv236 = zext i8 %182 to i32
  %idx.ext237 = sext i32 %conv236 to i64
  %idx.neg238 = sub i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, ptr %180, i64 %idx.neg238
  %183 = load i8, ptr %add.ptr239, align 1
  %conv240 = zext i8 %183 to i32
  %184 = load i32, ptr %n, align 4
  %add241 = add nsw i32 %184, %conv240
  store i32 %add241, ptr %n, align 4
  %185 = load ptr, ptr %cp, align 8
  %186 = load ptr, ptr %p, align 8
  %incdec.ptr242 = getelementptr inbounds i8, ptr %186, i32 1
  store ptr %incdec.ptr242, ptr %p, align 8
  %187 = load i8, ptr %186, align 1
  %conv243 = zext i8 %187 to i32
  %idx.ext244 = sext i32 %conv243 to i64
  %idx.neg245 = sub i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, ptr %185, i64 %idx.neg245
  %188 = load i8, ptr %add.ptr246, align 1
  %conv247 = zext i8 %188 to i32
  %189 = load i32, ptr %n, align 4
  %add248 = add nsw i32 %189, %conv247
  store i32 %add248, ptr %n, align 4
  %190 = load ptr, ptr %cp, align 8
  %191 = load ptr, ptr %p, align 8
  %192 = load i8, ptr %191, align 1
  %conv249 = zext i8 %192 to i32
  %idx.ext250 = sext i32 %conv249 to i64
  %idx.neg251 = sub i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %190, i64 %idx.neg251
  %193 = load i8, ptr %add.ptr252, align 1
  %conv253 = zext i8 %193 to i32
  %194 = load i32, ptr %n, align 4
  %add254 = add nsw i32 %194, %conv253
  store i32 %add254, ptr %n, align 4
  %195 = load i32, ptr %x_size.addr, align 4
  %sub255 = sub nsw i32 %195, 3
  %196 = load ptr, ptr %p, align 8
  %idx.ext256 = sext i32 %sub255 to i64
  %add.ptr257 = getelementptr inbounds i8, ptr %196, i64 %idx.ext256
  store ptr %add.ptr257, ptr %p, align 8
  %197 = load ptr, ptr %cp, align 8
  %198 = load ptr, ptr %p, align 8
  %incdec.ptr258 = getelementptr inbounds i8, ptr %198, i32 1
  store ptr %incdec.ptr258, ptr %p, align 8
  %199 = load i8, ptr %198, align 1
  %conv259 = zext i8 %199 to i32
  %idx.ext260 = sext i32 %conv259 to i64
  %idx.neg261 = sub i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, ptr %197, i64 %idx.neg261
  %200 = load i8, ptr %add.ptr262, align 1
  %conv263 = zext i8 %200 to i32
  %201 = load i32, ptr %n, align 4
  %add264 = add nsw i32 %201, %conv263
  store i32 %add264, ptr %n, align 4
  %202 = load ptr, ptr %cp, align 8
  %203 = load ptr, ptr %p, align 8
  %incdec.ptr265 = getelementptr inbounds i8, ptr %203, i32 1
  store ptr %incdec.ptr265, ptr %p, align 8
  %204 = load i8, ptr %203, align 1
  %conv266 = zext i8 %204 to i32
  %idx.ext267 = sext i32 %conv266 to i64
  %idx.neg268 = sub i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, ptr %202, i64 %idx.neg268
  %205 = load i8, ptr %add.ptr269, align 1
  %conv270 = zext i8 %205 to i32
  %206 = load i32, ptr %n, align 4
  %add271 = add nsw i32 %206, %conv270
  store i32 %add271, ptr %n, align 4
  %207 = load ptr, ptr %cp, align 8
  %208 = load ptr, ptr %p, align 8
  %209 = load i8, ptr %208, align 1
  %conv272 = zext i8 %209 to i32
  %idx.ext273 = sext i32 %conv272 to i64
  %idx.neg274 = sub i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %207, i64 %idx.neg274
  %210 = load i8, ptr %add.ptr275, align 1
  %conv276 = zext i8 %210 to i32
  %211 = load i32, ptr %n, align 4
  %add277 = add nsw i32 %211, %conv276
  store i32 %add277, ptr %n, align 4
  %212 = load i32, ptr %n, align 4
  %213 = load i32, ptr %max_no.addr, align 4
  %cmp278 = icmp sle i32 %212, %213
  br i1 %cmp278, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %214 = load i32, ptr %max_no.addr, align 4
  %215 = load i32, ptr %n, align 4
  %sub280 = sub nsw i32 %214, %215
  %216 = load ptr, ptr %r.addr, align 8
  %217 = load i32, ptr %i, align 4
  %218 = load i32, ptr %x_size.addr, align 4
  %mul281 = mul nsw i32 %217, %218
  %219 = load i32, ptr %j, align 4
  %add282 = add nsw i32 %mul281, %219
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds i32, ptr %216, i64 %idxprom283
  store i32 %sub280, ptr %arrayidx284, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %220 = load i32, ptr %j, align 4
  %inc = add nsw i32 %220, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond3
  br label %for.inc285

for.inc285:                                       ; preds = %for.end
  %221 = load i32, ptr %i, align 4
  %inc286 = add nsw i32 %221, 1
  store i32 %inc286, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end287:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %r.addr, align 8
  %1 = load i32, ptr %x_size.addr, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %3 = load ptr, ptr %r.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %mul1, i64 noundef %4) #9
  store i32 730, ptr %max_no.addr, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %y_size.addr, align 4
  %sub = sub nsw i32 %6, 1
  %cmp = icmp slt i32 %5, %sub
  br i1 %cmp, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %x_size.addr, align 4
  %sub4 = sub nsw i32 %8, 1
  %cmp5 = icmp slt i32 %7, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %sub8 = sub nsw i32 %10, 1
  %11 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %11
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %12 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %12 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load ptr, ptr %in.addr, align 8
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %15, %16
  %17 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %17
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %18 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %19 = load ptr, ptr %cp, align 8
  %20 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv17 = zext i8 %21 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %19, i64 %idx.neg
  %22 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %22 to i32
  %23 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %23, %conv20
  store i32 %add21, ptr %n, align 4
  %24 = load ptr, ptr %cp, align 8
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %26 = load i8, ptr %25, align 1
  %conv23 = zext i8 %26 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %24, i64 %idx.neg25
  %27 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %27 to i32
  %28 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %28, %conv27
  store i32 %add28, ptr %n, align 4
  %29 = load ptr, ptr %cp, align 8
  %30 = load ptr, ptr %p, align 8
  %31 = load i8, ptr %30, align 1
  %conv29 = zext i8 %31 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %29, i64 %idx.neg31
  %32 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %33, %conv33
  store i32 %add34, ptr %n, align 4
  %34 = load i32, ptr %x_size.addr, align 4
  %sub35 = sub nsw i32 %34, 2
  %35 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %35, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %36 = load ptr, ptr %cp, align 8
  %37 = load ptr, ptr %p, align 8
  %38 = load i8, ptr %37, align 1
  %conv38 = zext i8 %38 to i32
  %idx.ext39 = sext i32 %conv38 to i64
  %idx.neg40 = sub i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %36, i64 %idx.neg40
  %39 = load i8, ptr %add.ptr41, align 1
  %conv42 = zext i8 %39 to i32
  %40 = load i32, ptr %n, align 4
  %add43 = add nsw i32 %40, %conv42
  store i32 %add43, ptr %n, align 4
  %41 = load ptr, ptr %p, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %41, i64 2
  store ptr %add.ptr44, ptr %p, align 8
  %42 = load ptr, ptr %cp, align 8
  %43 = load ptr, ptr %p, align 8
  %44 = load i8, ptr %43, align 1
  %conv45 = zext i8 %44 to i32
  %idx.ext46 = sext i32 %conv45 to i64
  %idx.neg47 = sub i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %42, i64 %idx.neg47
  %45 = load i8, ptr %add.ptr48, align 1
  %conv49 = zext i8 %45 to i32
  %46 = load i32, ptr %n, align 4
  %add50 = add nsw i32 %46, %conv49
  store i32 %add50, ptr %n, align 4
  %47 = load i32, ptr %x_size.addr, align 4
  %sub51 = sub nsw i32 %47, 2
  %48 = load ptr, ptr %p, align 8
  %idx.ext52 = sext i32 %sub51 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %48, i64 %idx.ext52
  store ptr %add.ptr53, ptr %p, align 8
  %49 = load ptr, ptr %cp, align 8
  %50 = load ptr, ptr %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr54, ptr %p, align 8
  %51 = load i8, ptr %50, align 1
  %conv55 = zext i8 %51 to i32
  %idx.ext56 = sext i32 %conv55 to i64
  %idx.neg57 = sub i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, ptr %49, i64 %idx.neg57
  %52 = load i8, ptr %add.ptr58, align 1
  %conv59 = zext i8 %52 to i32
  %53 = load i32, ptr %n, align 4
  %add60 = add nsw i32 %53, %conv59
  store i32 %add60, ptr %n, align 4
  %54 = load ptr, ptr %cp, align 8
  %55 = load ptr, ptr %p, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr61, ptr %p, align 8
  %56 = load i8, ptr %55, align 1
  %conv62 = zext i8 %56 to i32
  %idx.ext63 = sext i32 %conv62 to i64
  %idx.neg64 = sub i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %54, i64 %idx.neg64
  %57 = load i8, ptr %add.ptr65, align 1
  %conv66 = zext i8 %57 to i32
  %58 = load i32, ptr %n, align 4
  %add67 = add nsw i32 %58, %conv66
  store i32 %add67, ptr %n, align 4
  %59 = load ptr, ptr %cp, align 8
  %60 = load ptr, ptr %p, align 8
  %61 = load i8, ptr %60, align 1
  %conv68 = zext i8 %61 to i32
  %idx.ext69 = sext i32 %conv68 to i64
  %idx.neg70 = sub i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %59, i64 %idx.neg70
  %62 = load i8, ptr %add.ptr71, align 1
  %conv72 = zext i8 %62 to i32
  %63 = load i32, ptr %n, align 4
  %add73 = add nsw i32 %63, %conv72
  store i32 %add73, ptr %n, align 4
  %64 = load i32, ptr %n, align 4
  %65 = load i32, ptr %max_no.addr, align 4
  %cmp74 = icmp sle i32 %64, %65
  br i1 %cmp74, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %66 = load i32, ptr %max_no.addr, align 4
  %67 = load i32, ptr %n, align 4
  %sub76 = sub nsw i32 %66, %67
  %68 = load ptr, ptr %r.addr, align 8
  %69 = load i32, ptr %i, align 4
  %70 = load i32, ptr %x_size.addr, align 4
  %mul77 = mul nsw i32 %69, %70
  %71 = load i32, ptr %j, align 4
  %add78 = add nsw i32 %mul77, %71
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %68, i64 %idxprom79
  store i32 %sub76, ptr %arrayidx80, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %72 = load i32, ptr %j, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !12

for.end:                                          ; preds = %for.cond3
  br label %for.inc81

for.inc81:                                        ; preds = %for.end
  %73 = load i32, ptr %i, align 4
  %inc82 = add nsw i32 %73, 1
  store i32 %inc82, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end83:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %in.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, ptr %x_size.addr, align 4
  %mul = mul nsw i32 %sub, %2
  %3 = load i32, ptr %j.addr, align 4
  %add = add nsw i32 %mul, %3
  %sub1 = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %arrayidx2 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 0
  store i32 %conv, ptr %arrayidx2, align 4
  %5 = load ptr, ptr %in.addr, align 8
  %6 = load i32, ptr %i.addr, align 4
  %sub3 = sub nsw i32 %6, 1
  %7 = load i32, ptr %x_size.addr, align 4
  %mul4 = mul nsw i32 %sub3, %7
  %8 = load i32, ptr %j.addr, align 4
  %add5 = add nsw i32 %mul4, %8
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %arrayidx9 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 1
  store i32 %conv8, ptr %arrayidx9, align 4
  %10 = load ptr, ptr %in.addr, align 8
  %11 = load i32, ptr %i.addr, align 4
  %sub10 = sub nsw i32 %11, 1
  %12 = load i32, ptr %x_size.addr, align 4
  %mul11 = mul nsw i32 %sub10, %12
  %13 = load i32, ptr %j.addr, align 4
  %add12 = add nsw i32 %mul11, %13
  %add13 = add nsw i32 %add12, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %10, i64 %idxprom14
  %14 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 2
  store i32 %conv16, ptr %arrayidx17, align 4
  %15 = load ptr, ptr %in.addr, align 8
  %16 = load i32, ptr %i.addr, align 4
  %17 = load i32, ptr %x_size.addr, align 4
  %mul18 = mul nsw i32 %16, %17
  %18 = load i32, ptr %j.addr, align 4
  %add19 = add nsw i32 %mul18, %18
  %sub20 = sub nsw i32 %add19, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 %idxprom21
  %19 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %19 to i32
  %arrayidx24 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 3
  store i32 %conv23, ptr %arrayidx24, align 4
  %20 = load ptr, ptr %in.addr, align 8
  %21 = load i32, ptr %i.addr, align 4
  %22 = load i32, ptr %x_size.addr, align 4
  %mul25 = mul nsw i32 %21, %22
  %23 = load i32, ptr %j.addr, align 4
  %add26 = add nsw i32 %mul25, %23
  %add27 = add nsw i32 %add26, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %20, i64 %idxprom28
  %24 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %24 to i32
  %arrayidx31 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 4
  store i32 %conv30, ptr %arrayidx31, align 4
  %25 = load ptr, ptr %in.addr, align 8
  %26 = load i32, ptr %i.addr, align 4
  %add32 = add nsw i32 %26, 1
  %27 = load i32, ptr %x_size.addr, align 4
  %mul33 = mul nsw i32 %add32, %27
  %28 = load i32, ptr %j.addr, align 4
  %add34 = add nsw i32 %mul33, %28
  %sub35 = sub nsw i32 %add34, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %25, i64 %idxprom36
  %29 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %29 to i32
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 5
  store i32 %conv38, ptr %arrayidx39, align 4
  %30 = load ptr, ptr %in.addr, align 8
  %31 = load i32, ptr %i.addr, align 4
  %add40 = add nsw i32 %31, 1
  %32 = load i32, ptr %x_size.addr, align 4
  %mul41 = mul nsw i32 %add40, %32
  %33 = load i32, ptr %j.addr, align 4
  %add42 = add nsw i32 %mul41, %33
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %30, i64 %idxprom43
  %34 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %34 to i32
  %arrayidx46 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 6
  store i32 %conv45, ptr %arrayidx46, align 4
  %35 = load ptr, ptr %in.addr, align 8
  %36 = load i32, ptr %i.addr, align 4
  %add47 = add nsw i32 %36, 1
  %37 = load i32, ptr %x_size.addr, align 4
  %mul48 = mul nsw i32 %add47, %37
  %38 = load i32, ptr %j.addr, align 4
  %add49 = add nsw i32 %mul48, %38
  %add50 = add nsw i32 %add49, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %35, i64 %idxprom51
  %39 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %39 to i32
  %arrayidx54 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 7
  store i32 %conv53, ptr %arrayidx54, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc78, %entry
  %40 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %40, 7
  br i1 %cmp, label %for.body, label %for.end80

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %l, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc, %for.body
  %41 = load i32, ptr %l, align 4
  %42 = load i32, ptr %k, align 4
  %sub57 = sub nsw i32 7, %42
  %cmp58 = icmp slt i32 %41, %sub57
  br i1 %cmp58, label %for.body60, label %for.end

for.body60:                                       ; preds = %for.cond56
  %43 = load i32, ptr %l, align 4
  %idxprom61 = sext i32 %43 to i64
  %arrayidx62 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom61
  %44 = load i32, ptr %arrayidx62, align 4
  %45 = load i32, ptr %l, align 4
  %add63 = add nsw i32 %45, 1
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom64
  %46 = load i32, ptr %arrayidx65, align 4
  %cmp66 = icmp sgt i32 %44, %46
  br i1 %cmp66, label %if.then, label %if.end

if.then:                                          ; preds = %for.body60
  %47 = load i32, ptr %l, align 4
  %idxprom68 = sext i32 %47 to i64
  %arrayidx69 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom68
  %48 = load i32, ptr %arrayidx69, align 4
  store i32 %48, ptr %tmp, align 4
  %49 = load i32, ptr %l, align 4
  %add70 = add nsw i32 %49, 1
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom71
  %50 = load i32, ptr %arrayidx72, align 4
  %51 = load i32, ptr %l, align 4
  %idxprom73 = sext i32 %51 to i64
  %arrayidx74 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom73
  store i32 %50, ptr %arrayidx74, align 4
  %52 = load i32, ptr %tmp, align 4
  %53 = load i32, ptr %l, align 4
  %add75 = add nsw i32 %53, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom76
  store i32 %52, ptr %arrayidx77, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body60
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %54 = load i32, ptr %l, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %l, align 4
  br label %for.cond56, !llvm.loop !14

for.end:                                          ; preds = %for.cond56
  br label %for.inc78

for.inc78:                                        ; preds = %for.end
  %55 = load i32, ptr %k, align 4
  %inc79 = add nsw i32 %55, 1
  store i32 %inc79, ptr %k, align 4
  br label %for.cond, !llvm.loop !15

for.end80:                                        ; preds = %for.cond
  %arrayidx81 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 3
  %56 = load i32, ptr %arrayidx81, align 4
  %arrayidx82 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 4
  %57 = load i32, ptr %arrayidx82, align 4
  %add83 = add nsw i32 %56, %57
  %div = sdiv i32 %add83, 2
  %conv84 = trunc i32 %div to i8
  ret i8 %conv84
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %y_size.addr, align 8
  %2 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tmp_image.addr, align 8
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %border.addr, align 4
  %add = add nsw i32 %4, %5
  %6 = load ptr, ptr %x_size.addr, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %border.addr, align 4
  %mul = mul nsw i32 2, %8
  %add1 = add nsw i32 %7, %mul
  %mul2 = mul nsw i32 %add, %add1
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %9 = load i32, ptr %border.addr, align 4
  %idx.ext3 = sext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext3
  %10 = load ptr, ptr %in.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %x_size.addr, align 8
  %14 = load i32, ptr %13, align 4
  %mul5 = mul nsw i32 %12, %14
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %11, i64 %idx.ext6
  %15 = load ptr, ptr %x_size.addr, align 8
  %16 = load i32, ptr %15, align 4
  %conv = sext i32 %16 to i64
  %17 = load ptr, ptr %tmp_image.addr, align 8
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %border.addr, align 4
  %add8 = add nsw i32 %18, %19
  %20 = load ptr, ptr %x_size.addr, align 8
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %border.addr, align 4
  %mul9 = mul nsw i32 2, %22
  %add10 = add nsw i32 %21, %mul9
  %mul11 = mul nsw i32 %add8, %add10
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %17, i64 %idx.ext12
  %23 = load i32, ptr %border.addr, align 4
  %idx.ext14 = sext i32 %23 to i64
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr13, i64 %idx.ext14
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr15, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %add.ptr4, ptr noundef %add.ptr7, i64 noundef %conv, i64 noundef %24) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc67, %for.end
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %border.addr, align 4
  %cmp17 = icmp slt i32 %26, %27
  br i1 %cmp17, label %for.body19, label %for.end69

for.body19:                                       ; preds = %for.cond16
  %28 = load ptr, ptr %tmp_image.addr, align 8
  %29 = load i32, ptr %border.addr, align 4
  %sub = sub nsw i32 %29, 1
  %30 = load i32, ptr %i, align 4
  %sub20 = sub nsw i32 %sub, %30
  %31 = load ptr, ptr %x_size.addr, align 8
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %border.addr, align 4
  %mul21 = mul nsw i32 2, %33
  %add22 = add nsw i32 %32, %mul21
  %mul23 = mul nsw i32 %sub20, %add22
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %28, i64 %idx.ext24
  %34 = load i32, ptr %border.addr, align 4
  %idx.ext26 = sext i32 %34 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idx.ext26
  %35 = load ptr, ptr %in.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load i32, ptr %i, align 4
  %38 = load ptr, ptr %x_size.addr, align 8
  %39 = load i32, ptr %38, align 4
  %mul28 = mul nsw i32 %37, %39
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %36, i64 %idx.ext29
  %40 = load ptr, ptr %x_size.addr, align 8
  %41 = load i32, ptr %40, align 4
  %conv31 = sext i32 %41 to i64
  %42 = load ptr, ptr %tmp_image.addr, align 8
  %43 = load i32, ptr %border.addr, align 4
  %sub32 = sub nsw i32 %43, 1
  %44 = load i32, ptr %i, align 4
  %sub33 = sub nsw i32 %sub32, %44
  %45 = load ptr, ptr %x_size.addr, align 8
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %border.addr, align 4
  %mul34 = mul nsw i32 2, %47
  %add35 = add nsw i32 %46, %mul34
  %mul36 = mul nsw i32 %sub33, %add35
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i8, ptr %42, i64 %idx.ext37
  %48 = load i32, ptr %border.addr, align 4
  %idx.ext39 = sext i32 %48 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %add.ptr38, i64 %idx.ext39
  %49 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr40, i1 false, i1 true, i1 false)
  %call41 = call ptr @__memcpy_chk(ptr noundef %add.ptr27, ptr noundef %add.ptr30, i64 noundef %conv31, i64 noundef %49) #9
  %50 = load ptr, ptr %tmp_image.addr, align 8
  %51 = load ptr, ptr %y_size.addr, align 8
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %border.addr, align 4
  %add42 = add nsw i32 %52, %53
  %54 = load i32, ptr %i, align 4
  %add43 = add nsw i32 %add42, %54
  %55 = load ptr, ptr %x_size.addr, align 8
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %border.addr, align 4
  %mul44 = mul nsw i32 2, %57
  %add45 = add nsw i32 %56, %mul44
  %mul46 = mul nsw i32 %add43, %add45
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds i8, ptr %50, i64 %idx.ext47
  %58 = load i32, ptr %border.addr, align 4
  %idx.ext49 = sext i32 %58 to i64
  %add.ptr50 = getelementptr inbounds i8, ptr %add.ptr48, i64 %idx.ext49
  %59 = load ptr, ptr %in.addr, align 8
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %y_size.addr, align 8
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %i, align 4
  %sub51 = sub nsw i32 %62, %63
  %sub52 = sub nsw i32 %sub51, 1
  %64 = load ptr, ptr %x_size.addr, align 8
  %65 = load i32, ptr %64, align 4
  %mul53 = mul nsw i32 %sub52, %65
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %60, i64 %idx.ext54
  %66 = load ptr, ptr %x_size.addr, align 8
  %67 = load i32, ptr %66, align 4
  %conv56 = sext i32 %67 to i64
  %68 = load ptr, ptr %tmp_image.addr, align 8
  %69 = load ptr, ptr %y_size.addr, align 8
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %border.addr, align 4
  %add57 = add nsw i32 %70, %71
  %72 = load i32, ptr %i, align 4
  %add58 = add nsw i32 %add57, %72
  %73 = load ptr, ptr %x_size.addr, align 8
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %border.addr, align 4
  %mul59 = mul nsw i32 2, %75
  %add60 = add nsw i32 %74, %mul59
  %mul61 = mul nsw i32 %add58, %add60
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds i8, ptr %68, i64 %idx.ext62
  %76 = load i32, ptr %border.addr, align 4
  %idx.ext64 = sext i32 %76 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr63, i64 %idx.ext64
  %77 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr65, i1 false, i1 true, i1 false)
  %call66 = call ptr @__memcpy_chk(ptr noundef %add.ptr50, ptr noundef %add.ptr55, i64 noundef %conv56, i64 noundef %77) #9
  br label %for.inc67

for.inc67:                                        ; preds = %for.body19
  %78 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %78, 1
  store i32 %inc68, ptr %i, align 4
  br label %for.cond16, !llvm.loop !17

for.end69:                                        ; preds = %for.cond16
  store i32 0, ptr %i, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc113, %for.end69
  %79 = load i32, ptr %i, align 4
  %80 = load i32, ptr %border.addr, align 4
  %cmp71 = icmp slt i32 %79, %80
  br i1 %cmp71, label %for.body73, label %for.end115

for.body73:                                       ; preds = %for.cond70
  store i32 0, ptr %j, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc110, %for.body73
  %81 = load i32, ptr %j, align 4
  %82 = load ptr, ptr %y_size.addr, align 8
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %border.addr, align 4
  %mul75 = mul nsw i32 2, %84
  %add76 = add nsw i32 %83, %mul75
  %cmp77 = icmp slt i32 %81, %add76
  br i1 %cmp77, label %for.body79, label %for.end112

for.body79:                                       ; preds = %for.cond74
  %85 = load ptr, ptr %tmp_image.addr, align 8
  %86 = load i32, ptr %j, align 4
  %87 = load ptr, ptr %x_size.addr, align 8
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr %border.addr, align 4
  %mul80 = mul nsw i32 2, %89
  %add81 = add nsw i32 %88, %mul80
  %mul82 = mul nsw i32 %86, %add81
  %90 = load i32, ptr %border.addr, align 4
  %add83 = add nsw i32 %mul82, %90
  %91 = load i32, ptr %i, align 4
  %add84 = add nsw i32 %add83, %91
  %idxprom = sext i32 %add84 to i64
  %arrayidx = getelementptr inbounds i8, ptr %85, i64 %idxprom
  %92 = load i8, ptr %arrayidx, align 1
  %93 = load ptr, ptr %tmp_image.addr, align 8
  %94 = load i32, ptr %j, align 4
  %95 = load ptr, ptr %x_size.addr, align 8
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %border.addr, align 4
  %mul85 = mul nsw i32 2, %97
  %add86 = add nsw i32 %96, %mul85
  %mul87 = mul nsw i32 %94, %add86
  %98 = load i32, ptr %border.addr, align 4
  %add88 = add nsw i32 %mul87, %98
  %sub89 = sub nsw i32 %add88, 1
  %99 = load i32, ptr %i, align 4
  %sub90 = sub nsw i32 %sub89, %99
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %93, i64 %idxprom91
  store i8 %92, ptr %arrayidx92, align 1
  %100 = load ptr, ptr %tmp_image.addr, align 8
  %101 = load i32, ptr %j, align 4
  %102 = load ptr, ptr %x_size.addr, align 8
  %103 = load i32, ptr %102, align 4
  %104 = load i32, ptr %border.addr, align 4
  %mul93 = mul nsw i32 2, %104
  %add94 = add nsw i32 %103, %mul93
  %mul95 = mul nsw i32 %101, %add94
  %105 = load ptr, ptr %x_size.addr, align 8
  %106 = load i32, ptr %105, align 4
  %add96 = add nsw i32 %mul95, %106
  %107 = load i32, ptr %border.addr, align 4
  %add97 = add nsw i32 %add96, %107
  %sub98 = sub nsw i32 %add97, 1
  %108 = load i32, ptr %i, align 4
  %sub99 = sub nsw i32 %sub98, %108
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds i8, ptr %100, i64 %idxprom100
  %109 = load i8, ptr %arrayidx101, align 1
  %110 = load ptr, ptr %tmp_image.addr, align 8
  %111 = load i32, ptr %j, align 4
  %112 = load ptr, ptr %x_size.addr, align 8
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %border.addr, align 4
  %mul102 = mul nsw i32 2, %114
  %add103 = add nsw i32 %113, %mul102
  %mul104 = mul nsw i32 %111, %add103
  %115 = load ptr, ptr %x_size.addr, align 8
  %116 = load i32, ptr %115, align 4
  %add105 = add nsw i32 %mul104, %116
  %117 = load i32, ptr %border.addr, align 4
  %add106 = add nsw i32 %add105, %117
  %118 = load i32, ptr %i, align 4
  %add107 = add nsw i32 %add106, %118
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %110, i64 %idxprom108
  store i8 %109, ptr %arrayidx109, align 1
  br label %for.inc110

for.inc110:                                       ; preds = %for.body79
  %119 = load i32, ptr %j, align 4
  %inc111 = add nsw i32 %119, 1
  store i32 %inc111, ptr %j, align 4
  br label %for.cond74, !llvm.loop !18

for.end112:                                       ; preds = %for.cond74
  br label %for.inc113

for.inc113:                                       ; preds = %for.end112
  %120 = load i32, ptr %i, align 4
  %inc114 = add nsw i32 %120, 1
  store i32 %inc114, ptr %i, align 4
  br label %for.cond70, !llvm.loop !19

for.end115:                                       ; preds = %for.cond70
  %121 = load i32, ptr %border.addr, align 4
  %mul116 = mul nsw i32 2, %121
  %122 = load ptr, ptr %x_size.addr, align 8
  %123 = load i32, ptr %122, align 4
  %add117 = add nsw i32 %123, %mul116
  store i32 %add117, ptr %122, align 4
  %124 = load i32, ptr %border.addr, align 4
  %mul118 = mul nsw i32 2, %124
  %125 = load ptr, ptr %y_size.addr, align 8
  %126 = load i32, ptr %125, align 4
  %add119 = add nsw i32 %126, %mul118
  store i32 %add119, ptr %125, align 4
  %127 = load ptr, ptr %tmp_image.addr, align 8
  %128 = load ptr, ptr %in.addr, align 8
  store ptr %127, ptr %128, align 8
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @susan_smoothing(i32 noundef %three_by_three, ptr noundef %in, float noundef %dt, i32 noundef %x_size, i32 noundef %y_size, ptr noundef %bp) #0 {
entry:
  %three_by_three.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %dt.addr = alloca float, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %temp = alloca float, align 4
  %n_max = alloca i32, align 4
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
  %tmp_image = alloca ptr, align 8
  %total = alloca i32, align 4
  store i32 %three_by_three, ptr %three_by_three.addr, align 4
  store ptr %in, ptr %in.addr, align 8
  store float %dt, ptr %dt.addr, align 4
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  store ptr %bp, ptr %bp.addr, align 8
  %0 = load ptr, ptr %in.addr, align 8
  store ptr %0, ptr %out, align 8
  %1 = load i32, ptr %three_by_three.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, ptr %dt.addr, align 4
  %conv = fpext float %2 to double
  %mul = fmul double 1.500000e+00, %conv
  %conv1 = fptosi double %mul to i32
  %add = add nsw i32 %conv1, 1
  store i32 %add, ptr %mask_size, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, ptr %mask_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %total, align 4
  %3 = load float, ptr %dt.addr, align 4
  %cmp2 = fcmp ogt float %3, 1.500000e+01
  br i1 %cmp2, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, ptr %total, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then6, label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  %5 = load float, ptr %dt.addr, align 4
  %conv7 = fpext float %5 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.25, double noundef %conv7)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i32, ptr %mask_size, align 4
  %mul11 = mul nsw i32 2, %6
  %add12 = add nsw i32 %mul11, 1
  %7 = load i32, ptr %x_size.addr, align 4
  %cmp13 = icmp sgt i32 %add12, %7
  br i1 %cmp13, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %8 = load i32, ptr %mask_size, align 4
  %mul15 = mul nsw i32 2, %8
  %add16 = add nsw i32 %mul15, 1
  %9 = load i32, ptr %y_size.addr, align 4
  %cmp17 = icmp sgt i32 %add16, %9
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %lor.lhs.false, %if.end10
  %10 = load i32, ptr %mask_size, align 4
  %11 = load i32, ptr %x_size.addr, align 4
  %12 = load i32, ptr %y_size.addr, align 4
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.28, i32 noundef %10, i32 noundef %11, i32 noundef %12)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end21:                                         ; preds = %lor.lhs.false
  %13 = load i32, ptr %x_size.addr, align 4
  %14 = load i32, ptr %mask_size, align 4
  %mul22 = mul nsw i32 %14, 2
  %add23 = add nsw i32 %13, %mul22
  %15 = load i32, ptr %y_size.addr, align 4
  %16 = load i32, ptr %mask_size, align 4
  %mul24 = mul nsw i32 %16, 2
  %add25 = add nsw i32 %15, %mul24
  %mul26 = mul nsw i32 %add23, %add25
  %conv27 = sext i32 %mul26 to i64
  %call28 = call ptr @malloc(i64 noundef %conv27) #8
  store ptr %call28, ptr %tmp_image, align 8
  %17 = load ptr, ptr %tmp_image, align 8
  %18 = load i32, ptr %mask_size, align 4
  call void @enlarge(ptr noundef %in.addr, ptr noundef %17, ptr noundef %x_size.addr, ptr noundef %y_size.addr, i32 noundef %18)
  %19 = load i32, ptr %three_by_three.addr, align 4
  %cmp29 = icmp eq i32 %19, 0
  br i1 %cmp29, label %if.then31, label %if.else127

if.then31:                                        ; preds = %if.end21
  %20 = load i32, ptr %mask_size, align 4
  %mul32 = mul nsw i32 %20, 2
  %add33 = add nsw i32 %mul32, 1
  store i32 %add33, ptr %n_max, align 4
  %21 = load i32, ptr %x_size.addr, align 4
  %22 = load i32, ptr %n_max, align 4
  %sub = sub nsw i32 %21, %22
  store i32 %sub, ptr %increment, align 4
  %23 = load i32, ptr %n_max, align 4
  %24 = load i32, ptr %n_max, align 4
  %mul34 = mul nsw i32 %23, %24
  %conv35 = sext i32 %mul34 to i64
  %call36 = call ptr @malloc(i64 noundef %conv35) #8
  store ptr %call36, ptr %dp, align 8
  %25 = load ptr, ptr %dp, align 8
  store ptr %25, ptr %dpt, align 8
  %26 = load float, ptr %dt.addr, align 4
  %27 = load float, ptr %dt.addr, align 4
  %mul37 = fmul float %26, %27
  %fneg = fneg float %mul37
  store float %fneg, ptr %temp, align 4
  %28 = load i32, ptr %mask_size, align 4
  %sub38 = sub nsw i32 0, %28
  store i32 %sub38, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc54, %if.then31
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %mask_size, align 4
  %cmp39 = icmp sle i32 %29, %30
  br i1 %cmp39, label %for.body, label %for.end56

for.body:                                         ; preds = %for.cond
  %31 = load i32, ptr %mask_size, align 4
  %sub41 = sub nsw i32 0, %31
  store i32 %sub41, ptr %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %32 = load i32, ptr %j, align 4
  %33 = load i32, ptr %mask_size, align 4
  %cmp43 = icmp sle i32 %32, %33
  br i1 %cmp43, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond42
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %i, align 4
  %mul46 = mul nsw i32 %34, %35
  %36 = load i32, ptr %j, align 4
  %37 = load i32, ptr %j, align 4
  %mul47 = mul nsw i32 %36, %37
  %add48 = add nsw i32 %mul46, %mul47
  %conv49 = sitofp i32 %add48 to float
  %38 = load float, ptr %temp, align 4
  %div = fdiv float %conv49, %38
  %conv50 = fpext float %div to double
  %39 = call double @llvm.exp.f64(double %conv50)
  %mul51 = fmul double 1.000000e+02, %39
  %conv52 = fptosi double %mul51 to i32
  store i32 %conv52, ptr %x, align 4
  %40 = load i32, ptr %x, align 4
  %conv53 = trunc i32 %40 to i8
  %41 = load ptr, ptr %dpt, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %dpt, align 8
  store i8 %conv53, ptr %41, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %42 = load i32, ptr %j, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond42, !llvm.loop !20

for.end:                                          ; preds = %for.cond42
  br label %for.inc54

for.inc54:                                        ; preds = %for.end
  %43 = load i32, ptr %i, align 4
  %inc55 = add nsw i32 %43, 1
  store i32 %inc55, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end56:                                        ; preds = %for.cond
  %44 = load i32, ptr %mask_size, align 4
  store i32 %44, ptr %i, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc124, %for.end56
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %y_size.addr, align 4
  %47 = load i32, ptr %mask_size, align 4
  %sub58 = sub nsw i32 %46, %47
  %cmp59 = icmp slt i32 %45, %sub58
  br i1 %cmp59, label %for.body61, label %for.end126

for.body61:                                       ; preds = %for.cond57
  %48 = load i32, ptr %mask_size, align 4
  store i32 %48, ptr %j, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc121, %for.body61
  %49 = load i32, ptr %j, align 4
  %50 = load i32, ptr %x_size.addr, align 4
  %51 = load i32, ptr %mask_size, align 4
  %sub63 = sub nsw i32 %50, %51
  %cmp64 = icmp slt i32 %49, %sub63
  br i1 %cmp64, label %for.body66, label %for.end123

for.body66:                                       ; preds = %for.cond62
  store i32 0, ptr %area, align 4
  store i32 0, ptr %total, align 4
  %52 = load ptr, ptr %dp, align 8
  store ptr %52, ptr %dpt, align 8
  %53 = load ptr, ptr %in.addr, align 8
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %mask_size, align 4
  %sub67 = sub nsw i32 %54, %55
  %56 = load i32, ptr %x_size.addr, align 4
  %mul68 = mul nsw i32 %sub67, %56
  %idx.ext = sext i32 %mul68 to i64
  %add.ptr = getelementptr inbounds i8, ptr %53, i64 %idx.ext
  %57 = load i32, ptr %j, align 4
  %idx.ext69 = sext i32 %57 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext69
  %58 = load i32, ptr %mask_size, align 4
  %idx.ext71 = sext i32 %58 to i64
  %idx.neg = sub i64 0, %idx.ext71
  %add.ptr72 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.neg
  store ptr %add.ptr72, ptr %ip, align 8
  %59 = load ptr, ptr %in.addr, align 8
  %60 = load i32, ptr %i, align 4
  %61 = load i32, ptr %x_size.addr, align 4
  %mul73 = mul nsw i32 %60, %61
  %62 = load i32, ptr %j, align 4
  %add74 = add nsw i32 %mul73, %62
  %idxprom = sext i32 %add74 to i64
  %arrayidx = getelementptr inbounds i8, ptr %59, i64 %idxprom
  %63 = load i8, ptr %arrayidx, align 1
  %conv75 = zext i8 %63 to i32
  store i32 %conv75, ptr %centre, align 4
  %64 = load ptr, ptr %bp.addr, align 8
  %65 = load i32, ptr %centre, align 4
  %idx.ext76 = sext i32 %65 to i64
  %add.ptr77 = getelementptr inbounds i8, ptr %64, i64 %idx.ext76
  store ptr %add.ptr77, ptr %cp, align 8
  %66 = load i32, ptr %mask_size, align 4
  %sub78 = sub nsw i32 0, %66
  store i32 %sub78, ptr %y, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc105, %for.body66
  %67 = load i32, ptr %y, align 4
  %68 = load i32, ptr %mask_size, align 4
  %cmp80 = icmp sle i32 %67, %68
  br i1 %cmp80, label %for.body82, label %for.end107

for.body82:                                       ; preds = %for.cond79
  %69 = load i32, ptr %mask_size, align 4
  %sub83 = sub nsw i32 0, %69
  store i32 %sub83, ptr %x, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc100, %for.body82
  %70 = load i32, ptr %x, align 4
  %71 = load i32, ptr %mask_size, align 4
  %cmp85 = icmp sle i32 %70, %71
  br i1 %cmp85, label %for.body87, label %for.end102

for.body87:                                       ; preds = %for.cond84
  %72 = load ptr, ptr %ip, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %72, i32 1
  store ptr %incdec.ptr88, ptr %ip, align 8
  %73 = load i8, ptr %72, align 1
  %conv89 = zext i8 %73 to i32
  store i32 %conv89, ptr %brightness, align 4
  %74 = load ptr, ptr %dpt, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr90, ptr %dpt, align 8
  %75 = load i8, ptr %74, align 1
  %conv91 = zext i8 %75 to i32
  %76 = load ptr, ptr %cp, align 8
  %77 = load i32, ptr %brightness, align 4
  %idx.ext92 = sext i32 %77 to i64
  %idx.neg93 = sub i64 0, %idx.ext92
  %add.ptr94 = getelementptr inbounds i8, ptr %76, i64 %idx.neg93
  %78 = load i8, ptr %add.ptr94, align 1
  %conv95 = zext i8 %78 to i32
  %mul96 = mul nsw i32 %conv91, %conv95
  store i32 %mul96, ptr %tmp, align 4
  %79 = load i32, ptr %tmp, align 4
  %80 = load i32, ptr %area, align 4
  %add97 = add nsw i32 %80, %79
  store i32 %add97, ptr %area, align 4
  %81 = load i32, ptr %tmp, align 4
  %82 = load i32, ptr %brightness, align 4
  %mul98 = mul nsw i32 %81, %82
  %83 = load i32, ptr %total, align 4
  %add99 = add nsw i32 %83, %mul98
  store i32 %add99, ptr %total, align 4
  br label %for.inc100

for.inc100:                                       ; preds = %for.body87
  %84 = load i32, ptr %x, align 4
  %inc101 = add nsw i32 %84, 1
  store i32 %inc101, ptr %x, align 4
  br label %for.cond84, !llvm.loop !22

for.end102:                                       ; preds = %for.cond84
  %85 = load i32, ptr %increment, align 4
  %86 = load ptr, ptr %ip, align 8
  %idx.ext103 = sext i32 %85 to i64
  %add.ptr104 = getelementptr inbounds i8, ptr %86, i64 %idx.ext103
  store ptr %add.ptr104, ptr %ip, align 8
  br label %for.inc105

for.inc105:                                       ; preds = %for.end102
  %87 = load i32, ptr %y, align 4
  %inc106 = add nsw i32 %87, 1
  store i32 %inc106, ptr %y, align 4
  br label %for.cond79, !llvm.loop !23

for.end107:                                       ; preds = %for.cond79
  %88 = load i32, ptr %area, align 4
  %sub108 = sub nsw i32 %88, 10000
  store i32 %sub108, ptr %tmp, align 4
  %89 = load i32, ptr %tmp, align 4
  %cmp109 = icmp eq i32 %89, 0
  br i1 %cmp109, label %if.then111, label %if.else114

if.then111:                                       ; preds = %for.end107
  %90 = load ptr, ptr %in.addr, align 8
  %91 = load i32, ptr %i, align 4
  %92 = load i32, ptr %j, align 4
  %93 = load i32, ptr %x_size.addr, align 4
  %call112 = call zeroext i8 @median(ptr noundef %90, i32 noundef %91, i32 noundef %92, i32 noundef %93)
  %94 = load ptr, ptr %out, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %incdec.ptr113, ptr %out, align 8
  store i8 %call112, ptr %94, align 1
  br label %if.end120

if.else114:                                       ; preds = %for.end107
  %95 = load i32, ptr %total, align 4
  %96 = load i32, ptr %centre, align 4
  %mul115 = mul nsw i32 %96, 10000
  %sub116 = sub nsw i32 %95, %mul115
  %97 = load i32, ptr %tmp, align 4
  %div117 = sdiv i32 %sub116, %97
  %conv118 = trunc i32 %div117 to i8
  %98 = load ptr, ptr %out, align 8
  %incdec.ptr119 = getelementptr inbounds i8, ptr %98, i32 1
  store ptr %incdec.ptr119, ptr %out, align 8
  store i8 %conv118, ptr %98, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.else114, %if.then111
  br label %for.inc121

for.inc121:                                       ; preds = %if.end120
  %99 = load i32, ptr %j, align 4
  %inc122 = add nsw i32 %99, 1
  store i32 %inc122, ptr %j, align 4
  br label %for.cond62, !llvm.loop !24

for.end123:                                       ; preds = %for.cond62
  br label %for.inc124

for.inc124:                                       ; preds = %for.end123
  %100 = load i32, ptr %i, align 4
  %inc125 = add nsw i32 %100, 1
  store i32 %inc125, ptr %i, align 4
  br label %for.cond57, !llvm.loop !25

for.end126:                                       ; preds = %for.cond57
  %101 = load ptr, ptr %dp, align 8
  call void @free(ptr noundef %101)
  br label %if.end255

if.else127:                                       ; preds = %if.end21
  store i32 1, ptr %i, align 4
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc252, %if.else127
  %102 = load i32, ptr %i, align 4
  %103 = load i32, ptr %y_size.addr, align 4
  %sub129 = sub nsw i32 %103, 1
  %cmp130 = icmp slt i32 %102, %sub129
  br i1 %cmp130, label %for.body132, label %for.end254

for.body132:                                      ; preds = %for.cond128
  store i32 1, ptr %j, align 4
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc249, %for.body132
  %104 = load i32, ptr %j, align 4
  %105 = load i32, ptr %x_size.addr, align 4
  %sub134 = sub nsw i32 %105, 1
  %cmp135 = icmp slt i32 %104, %sub134
  br i1 %cmp135, label %for.body137, label %for.end251

for.body137:                                      ; preds = %for.cond133
  store i32 0, ptr %area, align 4
  store i32 0, ptr %total, align 4
  %106 = load ptr, ptr %in.addr, align 8
  %107 = load i32, ptr %i, align 4
  %sub138 = sub nsw i32 %107, 1
  %108 = load i32, ptr %x_size.addr, align 4
  %mul139 = mul nsw i32 %sub138, %108
  %idx.ext140 = sext i32 %mul139 to i64
  %add.ptr141 = getelementptr inbounds i8, ptr %106, i64 %idx.ext140
  %109 = load i32, ptr %j, align 4
  %idx.ext142 = sext i32 %109 to i64
  %add.ptr143 = getelementptr inbounds i8, ptr %add.ptr141, i64 %idx.ext142
  %add.ptr144 = getelementptr inbounds i8, ptr %add.ptr143, i64 -1
  store ptr %add.ptr144, ptr %ip, align 8
  %110 = load ptr, ptr %in.addr, align 8
  %111 = load i32, ptr %i, align 4
  %112 = load i32, ptr %x_size.addr, align 4
  %mul145 = mul nsw i32 %111, %112
  %113 = load i32, ptr %j, align 4
  %add146 = add nsw i32 %mul145, %113
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %110, i64 %idxprom147
  %114 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %114 to i32
  store i32 %conv149, ptr %centre, align 4
  %115 = load ptr, ptr %bp.addr, align 8
  %116 = load i32, ptr %centre, align 4
  %idx.ext150 = sext i32 %116 to i64
  %add.ptr151 = getelementptr inbounds i8, ptr %115, i64 %idx.ext150
  store ptr %add.ptr151, ptr %cp, align 8
  %117 = load ptr, ptr %ip, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %117, i32 1
  store ptr %incdec.ptr152, ptr %ip, align 8
  %118 = load i8, ptr %117, align 1
  %conv153 = zext i8 %118 to i32
  store i32 %conv153, ptr %brightness, align 4
  %119 = load ptr, ptr %cp, align 8
  %120 = load i32, ptr %brightness, align 4
  %idx.ext154 = sext i32 %120 to i64
  %idx.neg155 = sub i64 0, %idx.ext154
  %add.ptr156 = getelementptr inbounds i8, ptr %119, i64 %idx.neg155
  %121 = load i8, ptr %add.ptr156, align 1
  %conv157 = zext i8 %121 to i32
  store i32 %conv157, ptr %tmp, align 4
  %122 = load i32, ptr %tmp, align 4
  %123 = load i32, ptr %area, align 4
  %add158 = add nsw i32 %123, %122
  store i32 %add158, ptr %area, align 4
  %124 = load i32, ptr %tmp, align 4
  %125 = load i32, ptr %brightness, align 4
  %mul159 = mul nsw i32 %124, %125
  %126 = load i32, ptr %total, align 4
  %add160 = add nsw i32 %126, %mul159
  store i32 %add160, ptr %total, align 4
  %127 = load ptr, ptr %ip, align 8
  %incdec.ptr161 = getelementptr inbounds i8, ptr %127, i32 1
  store ptr %incdec.ptr161, ptr %ip, align 8
  %128 = load i8, ptr %127, align 1
  %conv162 = zext i8 %128 to i32
  store i32 %conv162, ptr %brightness, align 4
  %129 = load ptr, ptr %cp, align 8
  %130 = load i32, ptr %brightness, align 4
  %idx.ext163 = sext i32 %130 to i64
  %idx.neg164 = sub i64 0, %idx.ext163
  %add.ptr165 = getelementptr inbounds i8, ptr %129, i64 %idx.neg164
  %131 = load i8, ptr %add.ptr165, align 1
  %conv166 = zext i8 %131 to i32
  store i32 %conv166, ptr %tmp, align 4
  %132 = load i32, ptr %tmp, align 4
  %133 = load i32, ptr %area, align 4
  %add167 = add nsw i32 %133, %132
  store i32 %add167, ptr %area, align 4
  %134 = load i32, ptr %tmp, align 4
  %135 = load i32, ptr %brightness, align 4
  %mul168 = mul nsw i32 %134, %135
  %136 = load i32, ptr %total, align 4
  %add169 = add nsw i32 %136, %mul168
  store i32 %add169, ptr %total, align 4
  %137 = load ptr, ptr %ip, align 8
  %138 = load i8, ptr %137, align 1
  %conv170 = zext i8 %138 to i32
  store i32 %conv170, ptr %brightness, align 4
  %139 = load ptr, ptr %cp, align 8
  %140 = load i32, ptr %brightness, align 4
  %idx.ext171 = sext i32 %140 to i64
  %idx.neg172 = sub i64 0, %idx.ext171
  %add.ptr173 = getelementptr inbounds i8, ptr %139, i64 %idx.neg172
  %141 = load i8, ptr %add.ptr173, align 1
  %conv174 = zext i8 %141 to i32
  store i32 %conv174, ptr %tmp, align 4
  %142 = load i32, ptr %tmp, align 4
  %143 = load i32, ptr %area, align 4
  %add175 = add nsw i32 %143, %142
  store i32 %add175, ptr %area, align 4
  %144 = load i32, ptr %tmp, align 4
  %145 = load i32, ptr %brightness, align 4
  %mul176 = mul nsw i32 %144, %145
  %146 = load i32, ptr %total, align 4
  %add177 = add nsw i32 %146, %mul176
  store i32 %add177, ptr %total, align 4
  %147 = load i32, ptr %x_size.addr, align 4
  %sub178 = sub nsw i32 %147, 2
  %148 = load ptr, ptr %ip, align 8
  %idx.ext179 = sext i32 %sub178 to i64
  %add.ptr180 = getelementptr inbounds i8, ptr %148, i64 %idx.ext179
  store ptr %add.ptr180, ptr %ip, align 8
  %149 = load ptr, ptr %ip, align 8
  %incdec.ptr181 = getelementptr inbounds i8, ptr %149, i32 1
  store ptr %incdec.ptr181, ptr %ip, align 8
  %150 = load i8, ptr %149, align 1
  %conv182 = zext i8 %150 to i32
  store i32 %conv182, ptr %brightness, align 4
  %151 = load ptr, ptr %cp, align 8
  %152 = load i32, ptr %brightness, align 4
  %idx.ext183 = sext i32 %152 to i64
  %idx.neg184 = sub i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %151, i64 %idx.neg184
  %153 = load i8, ptr %add.ptr185, align 1
  %conv186 = zext i8 %153 to i32
  store i32 %conv186, ptr %tmp, align 4
  %154 = load i32, ptr %tmp, align 4
  %155 = load i32, ptr %area, align 4
  %add187 = add nsw i32 %155, %154
  store i32 %add187, ptr %area, align 4
  %156 = load i32, ptr %tmp, align 4
  %157 = load i32, ptr %brightness, align 4
  %mul188 = mul nsw i32 %156, %157
  %158 = load i32, ptr %total, align 4
  %add189 = add nsw i32 %158, %mul188
  store i32 %add189, ptr %total, align 4
  %159 = load ptr, ptr %ip, align 8
  %incdec.ptr190 = getelementptr inbounds i8, ptr %159, i32 1
  store ptr %incdec.ptr190, ptr %ip, align 8
  %160 = load i8, ptr %159, align 1
  %conv191 = zext i8 %160 to i32
  store i32 %conv191, ptr %brightness, align 4
  %161 = load ptr, ptr %cp, align 8
  %162 = load i32, ptr %brightness, align 4
  %idx.ext192 = sext i32 %162 to i64
  %idx.neg193 = sub i64 0, %idx.ext192
  %add.ptr194 = getelementptr inbounds i8, ptr %161, i64 %idx.neg193
  %163 = load i8, ptr %add.ptr194, align 1
  %conv195 = zext i8 %163 to i32
  store i32 %conv195, ptr %tmp, align 4
  %164 = load i32, ptr %tmp, align 4
  %165 = load i32, ptr %area, align 4
  %add196 = add nsw i32 %165, %164
  store i32 %add196, ptr %area, align 4
  %166 = load i32, ptr %tmp, align 4
  %167 = load i32, ptr %brightness, align 4
  %mul197 = mul nsw i32 %166, %167
  %168 = load i32, ptr %total, align 4
  %add198 = add nsw i32 %168, %mul197
  store i32 %add198, ptr %total, align 4
  %169 = load ptr, ptr %ip, align 8
  %170 = load i8, ptr %169, align 1
  %conv199 = zext i8 %170 to i32
  store i32 %conv199, ptr %brightness, align 4
  %171 = load ptr, ptr %cp, align 8
  %172 = load i32, ptr %brightness, align 4
  %idx.ext200 = sext i32 %172 to i64
  %idx.neg201 = sub i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %171, i64 %idx.neg201
  %173 = load i8, ptr %add.ptr202, align 1
  %conv203 = zext i8 %173 to i32
  store i32 %conv203, ptr %tmp, align 4
  %174 = load i32, ptr %tmp, align 4
  %175 = load i32, ptr %area, align 4
  %add204 = add nsw i32 %175, %174
  store i32 %add204, ptr %area, align 4
  %176 = load i32, ptr %tmp, align 4
  %177 = load i32, ptr %brightness, align 4
  %mul205 = mul nsw i32 %176, %177
  %178 = load i32, ptr %total, align 4
  %add206 = add nsw i32 %178, %mul205
  store i32 %add206, ptr %total, align 4
  %179 = load i32, ptr %x_size.addr, align 4
  %sub207 = sub nsw i32 %179, 2
  %180 = load ptr, ptr %ip, align 8
  %idx.ext208 = sext i32 %sub207 to i64
  %add.ptr209 = getelementptr inbounds i8, ptr %180, i64 %idx.ext208
  store ptr %add.ptr209, ptr %ip, align 8
  %181 = load ptr, ptr %ip, align 8
  %incdec.ptr210 = getelementptr inbounds i8, ptr %181, i32 1
  store ptr %incdec.ptr210, ptr %ip, align 8
  %182 = load i8, ptr %181, align 1
  %conv211 = zext i8 %182 to i32
  store i32 %conv211, ptr %brightness, align 4
  %183 = load ptr, ptr %cp, align 8
  %184 = load i32, ptr %brightness, align 4
  %idx.ext212 = sext i32 %184 to i64
  %idx.neg213 = sub i64 0, %idx.ext212
  %add.ptr214 = getelementptr inbounds i8, ptr %183, i64 %idx.neg213
  %185 = load i8, ptr %add.ptr214, align 1
  %conv215 = zext i8 %185 to i32
  store i32 %conv215, ptr %tmp, align 4
  %186 = load i32, ptr %tmp, align 4
  %187 = load i32, ptr %area, align 4
  %add216 = add nsw i32 %187, %186
  store i32 %add216, ptr %area, align 4
  %188 = load i32, ptr %tmp, align 4
  %189 = load i32, ptr %brightness, align 4
  %mul217 = mul nsw i32 %188, %189
  %190 = load i32, ptr %total, align 4
  %add218 = add nsw i32 %190, %mul217
  store i32 %add218, ptr %total, align 4
  %191 = load ptr, ptr %ip, align 8
  %incdec.ptr219 = getelementptr inbounds i8, ptr %191, i32 1
  store ptr %incdec.ptr219, ptr %ip, align 8
  %192 = load i8, ptr %191, align 1
  %conv220 = zext i8 %192 to i32
  store i32 %conv220, ptr %brightness, align 4
  %193 = load ptr, ptr %cp, align 8
  %194 = load i32, ptr %brightness, align 4
  %idx.ext221 = sext i32 %194 to i64
  %idx.neg222 = sub i64 0, %idx.ext221
  %add.ptr223 = getelementptr inbounds i8, ptr %193, i64 %idx.neg222
  %195 = load i8, ptr %add.ptr223, align 1
  %conv224 = zext i8 %195 to i32
  store i32 %conv224, ptr %tmp, align 4
  %196 = load i32, ptr %tmp, align 4
  %197 = load i32, ptr %area, align 4
  %add225 = add nsw i32 %197, %196
  store i32 %add225, ptr %area, align 4
  %198 = load i32, ptr %tmp, align 4
  %199 = load i32, ptr %brightness, align 4
  %mul226 = mul nsw i32 %198, %199
  %200 = load i32, ptr %total, align 4
  %add227 = add nsw i32 %200, %mul226
  store i32 %add227, ptr %total, align 4
  %201 = load ptr, ptr %ip, align 8
  %202 = load i8, ptr %201, align 1
  %conv228 = zext i8 %202 to i32
  store i32 %conv228, ptr %brightness, align 4
  %203 = load ptr, ptr %cp, align 8
  %204 = load i32, ptr %brightness, align 4
  %idx.ext229 = sext i32 %204 to i64
  %idx.neg230 = sub i64 0, %idx.ext229
  %add.ptr231 = getelementptr inbounds i8, ptr %203, i64 %idx.neg230
  %205 = load i8, ptr %add.ptr231, align 1
  %conv232 = zext i8 %205 to i32
  store i32 %conv232, ptr %tmp, align 4
  %206 = load i32, ptr %tmp, align 4
  %207 = load i32, ptr %area, align 4
  %add233 = add nsw i32 %207, %206
  store i32 %add233, ptr %area, align 4
  %208 = load i32, ptr %tmp, align 4
  %209 = load i32, ptr %brightness, align 4
  %mul234 = mul nsw i32 %208, %209
  %210 = load i32, ptr %total, align 4
  %add235 = add nsw i32 %210, %mul234
  store i32 %add235, ptr %total, align 4
  %211 = load i32, ptr %area, align 4
  %sub236 = sub nsw i32 %211, 100
  store i32 %sub236, ptr %tmp, align 4
  %212 = load i32, ptr %tmp, align 4
  %cmp237 = icmp eq i32 %212, 0
  br i1 %cmp237, label %if.then239, label %if.else242

if.then239:                                       ; preds = %for.body137
  %213 = load ptr, ptr %in.addr, align 8
  %214 = load i32, ptr %i, align 4
  %215 = load i32, ptr %j, align 4
  %216 = load i32, ptr %x_size.addr, align 4
  %call240 = call zeroext i8 @median(ptr noundef %213, i32 noundef %214, i32 noundef %215, i32 noundef %216)
  %217 = load ptr, ptr %out, align 8
  %incdec.ptr241 = getelementptr inbounds i8, ptr %217, i32 1
  store ptr %incdec.ptr241, ptr %out, align 8
  store i8 %call240, ptr %217, align 1
  br label %if.end248

if.else242:                                       ; preds = %for.body137
  %218 = load i32, ptr %total, align 4
  %219 = load i32, ptr %centre, align 4
  %mul243 = mul nsw i32 %219, 100
  %sub244 = sub nsw i32 %218, %mul243
  %220 = load i32, ptr %tmp, align 4
  %div245 = sdiv i32 %sub244, %220
  %conv246 = trunc i32 %div245 to i8
  %221 = load ptr, ptr %out, align 8
  %incdec.ptr247 = getelementptr inbounds i8, ptr %221, i32 1
  store ptr %incdec.ptr247, ptr %out, align 8
  store i8 %conv246, ptr %221, align 1
  br label %if.end248

if.end248:                                        ; preds = %if.else242, %if.then239
  br label %for.inc249

for.inc249:                                       ; preds = %if.end248
  %222 = load i32, ptr %j, align 4
  %inc250 = add nsw i32 %222, 1
  store i32 %inc250, ptr %j, align 4
  br label %for.cond133, !llvm.loop !26

for.end251:                                       ; preds = %for.cond133
  br label %for.inc252

for.inc252:                                       ; preds = %for.end251
  %223 = load i32, ptr %i, align 4
  %inc253 = add nsw i32 %223, 1
  store i32 %inc253, ptr %i, align 4
  br label %for.cond128, !llvm.loop !27

for.end254:                                       ; preds = %for.cond128
  br label %if.end255

if.end255:                                        ; preds = %for.end254, %for.end126
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @edge_draw(ptr noundef %in, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size, i32 noundef %drawing_mode) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %drawing_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %inp = alloca ptr, align 8
  %midp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %mid, ptr %mid.addr, align 8
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  store i32 %drawing_mode, ptr %drawing_mode.addr, align 4
  %0 = load i32, ptr %drawing_mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %mid.addr, align 8
  store ptr %1, ptr %midp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %x_size.addr, align 4
  %4 = load i32, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %3, %4
  %cmp1 = icmp slt i32 %2, %mul
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %midp, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  %cmp2 = icmp slt i32 %conv, 8
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %7 = load ptr, ptr %in.addr, align 8
  %8 = load ptr, ptr %midp, align 8
  %9 = load ptr, ptr %mid.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %sub.ptr.sub
  %10 = load i32, ptr %x_size.addr, align 4
  %idx.ext = sext i32 %10 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr5, i64 -1
  store ptr %add.ptr6, ptr %inp, align 8
  %11 = load ptr, ptr %inp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %inp, align 8
  store i8 -1, ptr %11, align 1
  %12 = load ptr, ptr %inp, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr7, ptr %inp, align 8
  store i8 -1, ptr %12, align 1
  %13 = load ptr, ptr %inp, align 8
  store i8 -1, ptr %13, align 1
  %14 = load i32, ptr %x_size.addr, align 4
  %sub = sub nsw i32 %14, 2
  %15 = load ptr, ptr %inp, align 8
  %idx.ext8 = sext i32 %sub to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 %idx.ext8
  store ptr %add.ptr9, ptr %inp, align 8
  %16 = load ptr, ptr %inp, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %inp, align 8
  store i8 -1, ptr %16, align 1
  %17 = load ptr, ptr %inp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr11, ptr %inp, align 8
  %18 = load ptr, ptr %inp, align 8
  store i8 -1, ptr %18, align 1
  %19 = load i32, ptr %x_size.addr, align 4
  %sub12 = sub nsw i32 %19, 2
  %20 = load ptr, ptr %inp, align 8
  %idx.ext13 = sext i32 %sub12 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %20, i64 %idx.ext13
  store ptr %add.ptr14, ptr %inp, align 8
  %21 = load ptr, ptr %inp, align 8
  %incdec.ptr15 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr15, ptr %inp, align 8
  store i8 -1, ptr %21, align 1
  %22 = load ptr, ptr %inp, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr16, ptr %inp, align 8
  store i8 -1, ptr %22, align 1
  %23 = load ptr, ptr %inp, align 8
  store i8 -1, ptr %23, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %24 = load ptr, ptr %midp, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr17, ptr %midp, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.end18:                                         ; preds = %for.end, %entry
  %26 = load ptr, ptr %mid.addr, align 8
  store ptr %26, ptr %midp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc34, %if.end18
  %27 = load i32, ptr %i, align 4
  %28 = load i32, ptr %x_size.addr, align 4
  %29 = load i32, ptr %y_size.addr, align 4
  %mul20 = mul nsw i32 %28, %29
  %cmp21 = icmp slt i32 %27, %mul20
  br i1 %cmp21, label %for.body23, label %for.end36

for.body23:                                       ; preds = %for.cond19
  %30 = load ptr, ptr %midp, align 8
  %31 = load i8, ptr %30, align 1
  %conv24 = zext i8 %31 to i32
  %cmp25 = icmp slt i32 %conv24, 8
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %for.body23
  %32 = load ptr, ptr %in.addr, align 8
  %33 = load ptr, ptr %midp, align 8
  %34 = load ptr, ptr %mid.addr, align 8
  %sub.ptr.lhs.cast28 = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast29 = ptrtoint ptr %34 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %add.ptr31 = getelementptr inbounds i8, ptr %32, i64 %sub.ptr.sub30
  store i8 0, ptr %add.ptr31, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %for.body23
  %35 = load ptr, ptr %midp, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr33, ptr %midp, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %if.end32
  %36 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %36, 1
  store i32 %inc35, ptr %i, align 4
  br label %for.cond19, !llvm.loop !29

for.end36:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i32 4, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc826, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %y_size.addr, align 4
  %sub = sub nsw i32 %1, 4
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end828

for.body:                                         ; preds = %for.cond
  store i32 4, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc823, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %x_size.addr, align 4
  %sub2 = sub nsw i32 %3, 4
  %cmp3 = icmp slt i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end825

for.body4:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %mid.addr, align 8
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %x_size.addr, align 4
  %mul = mul nsw i32 %5, %6
  %7 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %7
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp5 = icmp slt i32 %conv, 8
  br i1 %cmp5, label %if.then, label %if.end822

if.then:                                          ; preds = %for.body4
  %9 = load ptr, ptr %r.addr, align 8
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %x_size.addr, align 4
  %mul7 = mul nsw i32 %10, %11
  %12 = load i32, ptr %j, align 4
  %add8 = add nsw i32 %mul7, %12
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %9, i64 %idxprom9
  %13 = load i32, ptr %arrayidx10, align 4
  store i32 %13, ptr %centre, align 4
  %14 = load ptr, ptr %mid.addr, align 8
  %15 = load i32, ptr %i, align 4
  %sub11 = sub nsw i32 %15, 1
  %16 = load i32, ptr %x_size.addr, align 4
  %mul12 = mul nsw i32 %sub11, %16
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  %17 = load i32, ptr %j, align 4
  %idx.ext13 = sext i32 %17 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext13
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 -1
  store ptr %add.ptr15, ptr %mp, align 8
  %18 = load ptr, ptr %mp, align 8
  %19 = load i8, ptr %18, align 1
  %conv16 = zext i8 %19 to i32
  %cmp17 = icmp slt i32 %conv16, 8
  %conv18 = zext i1 %cmp17 to i32
  %20 = load ptr, ptr %mp, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %21 to i32
  %cmp21 = icmp slt i32 %conv20, 8
  %conv22 = zext i1 %cmp21 to i32
  %add23 = add nsw i32 %conv18, %conv22
  %22 = load ptr, ptr %mp, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %add.ptr24, align 1
  %conv25 = zext i8 %23 to i32
  %cmp26 = icmp slt i32 %conv25, 8
  %conv27 = zext i1 %cmp26 to i32
  %add28 = add nsw i32 %add23, %conv27
  %24 = load ptr, ptr %mp, align 8
  %25 = load i32, ptr %x_size.addr, align 4
  %idx.ext29 = sext i32 %25 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %24, i64 %idx.ext29
  %26 = load i8, ptr %add.ptr30, align 1
  %conv31 = zext i8 %26 to i32
  %cmp32 = icmp slt i32 %conv31, 8
  %conv33 = zext i1 %cmp32 to i32
  %add34 = add nsw i32 %add28, %conv33
  %27 = load ptr, ptr %mp, align 8
  %28 = load i32, ptr %x_size.addr, align 4
  %idx.ext35 = sext i32 %28 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %27, i64 %idx.ext35
  %add.ptr37 = getelementptr inbounds i8, ptr %add.ptr36, i64 2
  %29 = load i8, ptr %add.ptr37, align 1
  %conv38 = zext i8 %29 to i32
  %cmp39 = icmp slt i32 %conv38, 8
  %conv40 = zext i1 %cmp39 to i32
  %add41 = add nsw i32 %add34, %conv40
  %30 = load ptr, ptr %mp, align 8
  %31 = load i32, ptr %x_size.addr, align 4
  %idx.ext42 = sext i32 %31 to i64
  %add.ptr43 = getelementptr inbounds i8, ptr %30, i64 %idx.ext42
  %32 = load i32, ptr %x_size.addr, align 4
  %idx.ext44 = sext i32 %32 to i64
  %add.ptr45 = getelementptr inbounds i8, ptr %add.ptr43, i64 %idx.ext44
  %33 = load i8, ptr %add.ptr45, align 1
  %conv46 = zext i8 %33 to i32
  %cmp47 = icmp slt i32 %conv46, 8
  %conv48 = zext i1 %cmp47 to i32
  %add49 = add nsw i32 %add41, %conv48
  %34 = load ptr, ptr %mp, align 8
  %35 = load i32, ptr %x_size.addr, align 4
  %idx.ext50 = sext i32 %35 to i64
  %add.ptr51 = getelementptr inbounds i8, ptr %34, i64 %idx.ext50
  %36 = load i32, ptr %x_size.addr, align 4
  %idx.ext52 = sext i32 %36 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %add.ptr51, i64 %idx.ext52
  %add.ptr54 = getelementptr inbounds i8, ptr %add.ptr53, i64 1
  %37 = load i8, ptr %add.ptr54, align 1
  %conv55 = zext i8 %37 to i32
  %cmp56 = icmp slt i32 %conv55, 8
  %conv57 = zext i1 %cmp56 to i32
  %add58 = add nsw i32 %add49, %conv57
  %38 = load ptr, ptr %mp, align 8
  %39 = load i32, ptr %x_size.addr, align 4
  %idx.ext59 = sext i32 %39 to i64
  %add.ptr60 = getelementptr inbounds i8, ptr %38, i64 %idx.ext59
  %40 = load i32, ptr %x_size.addr, align 4
  %idx.ext61 = sext i32 %40 to i64
  %add.ptr62 = getelementptr inbounds i8, ptr %add.ptr60, i64 %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr62, i64 2
  %41 = load i8, ptr %add.ptr63, align 1
  %conv64 = zext i8 %41 to i32
  %cmp65 = icmp slt i32 %conv64, 8
  %conv66 = zext i1 %cmp65 to i32
  %add67 = add nsw i32 %add58, %conv66
  store i32 %add67, ptr %n, align 4
  %42 = load i32, ptr %n, align 4
  %cmp68 = icmp eq i32 %42, 0
  br i1 %cmp68, label %if.then70, label %if.end

if.then70:                                        ; preds = %if.then
  %43 = load ptr, ptr %mid.addr, align 8
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %x_size.addr, align 4
  %mul71 = mul nsw i32 %44, %45
  %46 = load i32, ptr %j, align 4
  %add72 = add nsw i32 %mul71, %46
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %43, i64 %idxprom73
  store i8 100, ptr %arrayidx74, align 1
  br label %if.end

if.end:                                           ; preds = %if.then70, %if.then
  %47 = load i32, ptr %n, align 4
  %cmp75 = icmp eq i32 %47, 1
  br i1 %cmp75, label %land.lhs.true, label %if.end412

land.lhs.true:                                    ; preds = %if.end
  %48 = load ptr, ptr %mid.addr, align 8
  %49 = load i32, ptr %i, align 4
  %50 = load i32, ptr %x_size.addr, align 4
  %mul77 = mul nsw i32 %49, %50
  %51 = load i32, ptr %j, align 4
  %add78 = add nsw i32 %mul77, %51
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %48, i64 %idxprom79
  %52 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %52 to i32
  %cmp82 = icmp slt i32 %conv81, 6
  br i1 %cmp82, label %if.then84, label %if.end412

if.then84:                                        ; preds = %land.lhs.true
  %53 = load ptr, ptr %r.addr, align 8
  %54 = load i32, ptr %i, align 4
  %sub85 = sub nsw i32 %54, 1
  %55 = load i32, ptr %x_size.addr, align 4
  %mul86 = mul nsw i32 %sub85, %55
  %56 = load i32, ptr %j, align 4
  %add87 = add nsw i32 %mul86, %56
  %sub88 = sub nsw i32 %add87, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %53, i64 %idxprom89
  %57 = load i32, ptr %arrayidx90, align 4
  %arrayidx91 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  store i32 %57, ptr %arrayidx91, align 4
  %58 = load ptr, ptr %r.addr, align 8
  %59 = load i32, ptr %i, align 4
  %sub92 = sub nsw i32 %59, 1
  %60 = load i32, ptr %x_size.addr, align 4
  %mul93 = mul nsw i32 %sub92, %60
  %61 = load i32, ptr %j, align 4
  %add94 = add nsw i32 %mul93, %61
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %58, i64 %idxprom95
  %62 = load i32, ptr %arrayidx96, align 4
  %arrayidx97 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 %62, ptr %arrayidx97, align 4
  %63 = load ptr, ptr %r.addr, align 8
  %64 = load i32, ptr %i, align 4
  %sub98 = sub nsw i32 %64, 1
  %65 = load i32, ptr %x_size.addr, align 4
  %mul99 = mul nsw i32 %sub98, %65
  %66 = load i32, ptr %j, align 4
  %add100 = add nsw i32 %mul99, %66
  %add101 = add nsw i32 %add100, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %63, i64 %idxprom102
  %67 = load i32, ptr %arrayidx103, align 4
  %arrayidx104 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 %67, ptr %arrayidx104, align 4
  %68 = load ptr, ptr %r.addr, align 8
  %69 = load i32, ptr %i, align 4
  %70 = load i32, ptr %x_size.addr, align 4
  %mul105 = mul nsw i32 %69, %70
  %71 = load i32, ptr %j, align 4
  %add106 = add nsw i32 %mul105, %71
  %sub107 = sub nsw i32 %add106, 1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %68, i64 %idxprom108
  %72 = load i32, ptr %arrayidx109, align 4
  %arrayidx110 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 %72, ptr %arrayidx110, align 4
  %arrayidx111 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 4
  store i32 0, ptr %arrayidx111, align 4
  %73 = load ptr, ptr %r.addr, align 8
  %74 = load i32, ptr %i, align 4
  %75 = load i32, ptr %x_size.addr, align 4
  %mul112 = mul nsw i32 %74, %75
  %76 = load i32, ptr %j, align 4
  %add113 = add nsw i32 %mul112, %76
  %add114 = add nsw i32 %add113, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %73, i64 %idxprom115
  %77 = load i32, ptr %arrayidx116, align 4
  %arrayidx117 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 %77, ptr %arrayidx117, align 4
  %78 = load ptr, ptr %r.addr, align 8
  %79 = load i32, ptr %i, align 4
  %add118 = add nsw i32 %79, 1
  %80 = load i32, ptr %x_size.addr, align 4
  %mul119 = mul nsw i32 %add118, %80
  %81 = load i32, ptr %j, align 4
  %add120 = add nsw i32 %mul119, %81
  %sub121 = sub nsw i32 %add120, 1
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %78, i64 %idxprom122
  %82 = load i32, ptr %arrayidx123, align 4
  %arrayidx124 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 %82, ptr %arrayidx124, align 4
  %83 = load ptr, ptr %r.addr, align 8
  %84 = load i32, ptr %i, align 4
  %add125 = add nsw i32 %84, 1
  %85 = load i32, ptr %x_size.addr, align 4
  %mul126 = mul nsw i32 %add125, %85
  %86 = load i32, ptr %j, align 4
  %add127 = add nsw i32 %mul126, %86
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds i32, ptr %83, i64 %idxprom128
  %87 = load i32, ptr %arrayidx129, align 4
  %arrayidx130 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 %87, ptr %arrayidx130, align 4
  %88 = load ptr, ptr %r.addr, align 8
  %89 = load i32, ptr %i, align 4
  %add131 = add nsw i32 %89, 1
  %90 = load i32, ptr %x_size.addr, align 4
  %mul132 = mul nsw i32 %add131, %90
  %91 = load i32, ptr %j, align 4
  %add133 = add nsw i32 %mul132, %91
  %add134 = add nsw i32 %add133, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds i32, ptr %88, i64 %idxprom135
  %92 = load i32, ptr %arrayidx136, align 4
  %arrayidx137 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 %92, ptr %arrayidx137, align 4
  %93 = load ptr, ptr %mid.addr, align 8
  %94 = load i32, ptr %i, align 4
  %sub138 = sub nsw i32 %94, 1
  %95 = load i32, ptr %x_size.addr, align 4
  %mul139 = mul nsw i32 %sub138, %95
  %96 = load i32, ptr %j, align 4
  %add140 = add nsw i32 %mul139, %96
  %sub141 = sub nsw i32 %add140, 1
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds i8, ptr %93, i64 %idxprom142
  %97 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %97 to i32
  %cmp145 = icmp slt i32 %conv144, 8
  br i1 %cmp145, label %if.then147, label %if.else

if.then147:                                       ; preds = %if.then84
  %arrayidx148 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  store i32 0, ptr %arrayidx148, align 4
  %arrayidx149 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx149, align 4
  %arrayidx150 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 0, ptr %arrayidx150, align 4
  %arrayidx151 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %98 = load i32, ptr %arrayidx151, align 4
  %mul152 = mul nsw i32 %98, 2
  store i32 %mul152, ptr %arrayidx151, align 4
  %arrayidx153 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %99 = load i32, ptr %arrayidx153, align 4
  %mul154 = mul nsw i32 %99, 2
  store i32 %mul154, ptr %arrayidx153, align 4
  %arrayidx155 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %100 = load i32, ptr %arrayidx155, align 4
  %mul156 = mul nsw i32 %100, 3
  store i32 %mul156, ptr %arrayidx155, align 4
  %arrayidx157 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %101 = load i32, ptr %arrayidx157, align 4
  %mul158 = mul nsw i32 %101, 3
  store i32 %mul158, ptr %arrayidx157, align 4
  %arrayidx159 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %102 = load i32, ptr %arrayidx159, align 4
  %mul160 = mul nsw i32 %102, 4
  store i32 %mul160, ptr %arrayidx159, align 4
  br label %if.end331

if.else:                                          ; preds = %if.then84
  %103 = load ptr, ptr %mid.addr, align 8
  %104 = load i32, ptr %i, align 4
  %sub161 = sub nsw i32 %104, 1
  %105 = load i32, ptr %x_size.addr, align 4
  %mul162 = mul nsw i32 %sub161, %105
  %106 = load i32, ptr %j, align 4
  %add163 = add nsw i32 %mul162, %106
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds i8, ptr %103, i64 %idxprom164
  %107 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %107 to i32
  %cmp167 = icmp slt i32 %conv166, 8
  br i1 %cmp167, label %if.then169, label %if.else183

if.then169:                                       ; preds = %if.else
  %arrayidx170 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx170, align 4
  %arrayidx171 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  store i32 0, ptr %arrayidx171, align 4
  %arrayidx172 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 0, ptr %arrayidx172, align 4
  %arrayidx173 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %108 = load i32, ptr %arrayidx173, align 4
  %mul174 = mul nsw i32 %108, 2
  store i32 %mul174, ptr %arrayidx173, align 4
  %arrayidx175 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %109 = load i32, ptr %arrayidx175, align 4
  %mul176 = mul nsw i32 %109, 2
  store i32 %mul176, ptr %arrayidx175, align 4
  %arrayidx177 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %110 = load i32, ptr %arrayidx177, align 4
  %mul178 = mul nsw i32 %110, 3
  store i32 %mul178, ptr %arrayidx177, align 4
  %arrayidx179 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %111 = load i32, ptr %arrayidx179, align 4
  %mul180 = mul nsw i32 %111, 3
  store i32 %mul180, ptr %arrayidx179, align 4
  %arrayidx181 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %112 = load i32, ptr %arrayidx181, align 4
  %mul182 = mul nsw i32 %112, 4
  store i32 %mul182, ptr %arrayidx181, align 4
  br label %if.end330

if.else183:                                       ; preds = %if.else
  %113 = load ptr, ptr %mid.addr, align 8
  %114 = load i32, ptr %i, align 4
  %sub184 = sub nsw i32 %114, 1
  %115 = load i32, ptr %x_size.addr, align 4
  %mul185 = mul nsw i32 %sub184, %115
  %116 = load i32, ptr %j, align 4
  %add186 = add nsw i32 %mul185, %116
  %add187 = add nsw i32 %add186, 1
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %113, i64 %idxprom188
  %117 = load i8, ptr %arrayidx189, align 1
  %conv190 = zext i8 %117 to i32
  %cmp191 = icmp slt i32 %conv190, 8
  br i1 %cmp191, label %if.then193, label %if.else207

if.then193:                                       ; preds = %if.else183
  %arrayidx194 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 0, ptr %arrayidx194, align 4
  %arrayidx195 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx195, align 4
  %arrayidx196 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 0, ptr %arrayidx196, align 4
  %arrayidx197 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %118 = load i32, ptr %arrayidx197, align 4
  %mul198 = mul nsw i32 %118, 2
  store i32 %mul198, ptr %arrayidx197, align 4
  %arrayidx199 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %119 = load i32, ptr %arrayidx199, align 4
  %mul200 = mul nsw i32 %119, 2
  store i32 %mul200, ptr %arrayidx199, align 4
  %arrayidx201 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %120 = load i32, ptr %arrayidx201, align 4
  %mul202 = mul nsw i32 %120, 3
  store i32 %mul202, ptr %arrayidx201, align 4
  %arrayidx203 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %121 = load i32, ptr %arrayidx203, align 4
  %mul204 = mul nsw i32 %121, 3
  store i32 %mul204, ptr %arrayidx203, align 4
  %arrayidx205 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %122 = load i32, ptr %arrayidx205, align 4
  %mul206 = mul nsw i32 %122, 4
  store i32 %mul206, ptr %arrayidx205, align 4
  br label %if.end329

if.else207:                                       ; preds = %if.else183
  %123 = load ptr, ptr %mid.addr, align 8
  %124 = load i32, ptr %i, align 4
  %125 = load i32, ptr %x_size.addr, align 4
  %mul208 = mul nsw i32 %124, %125
  %126 = load i32, ptr %j, align 4
  %add209 = add nsw i32 %mul208, %126
  %sub210 = sub nsw i32 %add209, 1
  %idxprom211 = sext i32 %sub210 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %123, i64 %idxprom211
  %127 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %127 to i32
  %cmp214 = icmp slt i32 %conv213, 8
  br i1 %cmp214, label %if.then216, label %if.else230

if.then216:                                       ; preds = %if.else207
  %arrayidx217 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 0, ptr %arrayidx217, align 4
  %arrayidx218 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  store i32 0, ptr %arrayidx218, align 4
  %arrayidx219 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 0, ptr %arrayidx219, align 4
  %arrayidx220 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %128 = load i32, ptr %arrayidx220, align 4
  %mul221 = mul nsw i32 %128, 2
  store i32 %mul221, ptr %arrayidx220, align 4
  %arrayidx222 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %129 = load i32, ptr %arrayidx222, align 4
  %mul223 = mul nsw i32 %129, 2
  store i32 %mul223, ptr %arrayidx222, align 4
  %arrayidx224 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %130 = load i32, ptr %arrayidx224, align 4
  %mul225 = mul nsw i32 %130, 3
  store i32 %mul225, ptr %arrayidx224, align 4
  %arrayidx226 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %131 = load i32, ptr %arrayidx226, align 4
  %mul227 = mul nsw i32 %131, 3
  store i32 %mul227, ptr %arrayidx226, align 4
  %arrayidx228 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %132 = load i32, ptr %arrayidx228, align 4
  %mul229 = mul nsw i32 %132, 4
  store i32 %mul229, ptr %arrayidx228, align 4
  br label %if.end328

if.else230:                                       ; preds = %if.else207
  %133 = load ptr, ptr %mid.addr, align 8
  %134 = load i32, ptr %i, align 4
  %135 = load i32, ptr %x_size.addr, align 4
  %mul231 = mul nsw i32 %134, %135
  %136 = load i32, ptr %j, align 4
  %add232 = add nsw i32 %mul231, %136
  %add233 = add nsw i32 %add232, 1
  %idxprom234 = sext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %133, i64 %idxprom234
  %137 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %137 to i32
  %cmp237 = icmp slt i32 %conv236, 8
  br i1 %cmp237, label %if.then239, label %if.else253

if.then239:                                       ; preds = %if.else230
  %arrayidx240 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 0, ptr %arrayidx240, align 4
  %arrayidx241 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 0, ptr %arrayidx241, align 4
  %arrayidx242 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 0, ptr %arrayidx242, align 4
  %arrayidx243 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %138 = load i32, ptr %arrayidx243, align 4
  %mul244 = mul nsw i32 %138, 2
  store i32 %mul244, ptr %arrayidx243, align 4
  %arrayidx245 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %139 = load i32, ptr %arrayidx245, align 4
  %mul246 = mul nsw i32 %139, 2
  store i32 %mul246, ptr %arrayidx245, align 4
  %arrayidx247 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %140 = load i32, ptr %arrayidx247, align 4
  %mul248 = mul nsw i32 %140, 3
  store i32 %mul248, ptr %arrayidx247, align 4
  %arrayidx249 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %141 = load i32, ptr %arrayidx249, align 4
  %mul250 = mul nsw i32 %141, 3
  store i32 %mul250, ptr %arrayidx249, align 4
  %arrayidx251 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %142 = load i32, ptr %arrayidx251, align 4
  %mul252 = mul nsw i32 %142, 4
  store i32 %mul252, ptr %arrayidx251, align 4
  br label %if.end327

if.else253:                                       ; preds = %if.else230
  %143 = load ptr, ptr %mid.addr, align 8
  %144 = load i32, ptr %i, align 4
  %add254 = add nsw i32 %144, 1
  %145 = load i32, ptr %x_size.addr, align 4
  %mul255 = mul nsw i32 %add254, %145
  %146 = load i32, ptr %j, align 4
  %add256 = add nsw i32 %mul255, %146
  %sub257 = sub nsw i32 %add256, 1
  %idxprom258 = sext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds i8, ptr %143, i64 %idxprom258
  %147 = load i8, ptr %arrayidx259, align 1
  %conv260 = zext i8 %147 to i32
  %cmp261 = icmp slt i32 %conv260, 8
  br i1 %cmp261, label %if.then263, label %if.else277

if.then263:                                       ; preds = %if.else253
  %arrayidx264 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 0, ptr %arrayidx264, align 4
  %arrayidx265 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 0, ptr %arrayidx265, align 4
  %arrayidx266 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 0, ptr %arrayidx266, align 4
  %arrayidx267 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %148 = load i32, ptr %arrayidx267, align 4
  %mul268 = mul nsw i32 %148, 2
  store i32 %mul268, ptr %arrayidx267, align 4
  %arrayidx269 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %149 = load i32, ptr %arrayidx269, align 4
  %mul270 = mul nsw i32 %149, 2
  store i32 %mul270, ptr %arrayidx269, align 4
  %arrayidx271 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %150 = load i32, ptr %arrayidx271, align 4
  %mul272 = mul nsw i32 %150, 3
  store i32 %mul272, ptr %arrayidx271, align 4
  %arrayidx273 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %151 = load i32, ptr %arrayidx273, align 4
  %mul274 = mul nsw i32 %151, 3
  store i32 %mul274, ptr %arrayidx273, align 4
  %arrayidx275 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %152 = load i32, ptr %arrayidx275, align 4
  %mul276 = mul nsw i32 %152, 4
  store i32 %mul276, ptr %arrayidx275, align 4
  br label %if.end326

if.else277:                                       ; preds = %if.else253
  %153 = load ptr, ptr %mid.addr, align 8
  %154 = load i32, ptr %i, align 4
  %add278 = add nsw i32 %154, 1
  %155 = load i32, ptr %x_size.addr, align 4
  %mul279 = mul nsw i32 %add278, %155
  %156 = load i32, ptr %j, align 4
  %add280 = add nsw i32 %mul279, %156
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds i8, ptr %153, i64 %idxprom281
  %157 = load i8, ptr %arrayidx282, align 1
  %conv283 = zext i8 %157 to i32
  %cmp284 = icmp slt i32 %conv283, 8
  br i1 %cmp284, label %if.then286, label %if.else300

if.then286:                                       ; preds = %if.else277
  %arrayidx287 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 0, ptr %arrayidx287, align 4
  %arrayidx288 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 0, ptr %arrayidx288, align 4
  %arrayidx289 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 0, ptr %arrayidx289, align 4
  %arrayidx290 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %158 = load i32, ptr %arrayidx290, align 4
  %mul291 = mul nsw i32 %158, 2
  store i32 %mul291, ptr %arrayidx290, align 4
  %arrayidx292 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %159 = load i32, ptr %arrayidx292, align 4
  %mul293 = mul nsw i32 %159, 2
  store i32 %mul293, ptr %arrayidx292, align 4
  %arrayidx294 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %160 = load i32, ptr %arrayidx294, align 4
  %mul295 = mul nsw i32 %160, 3
  store i32 %mul295, ptr %arrayidx294, align 4
  %arrayidx296 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %161 = load i32, ptr %arrayidx296, align 4
  %mul297 = mul nsw i32 %161, 3
  store i32 %mul297, ptr %arrayidx296, align 4
  %arrayidx298 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %162 = load i32, ptr %arrayidx298, align 4
  %mul299 = mul nsw i32 %162, 4
  store i32 %mul299, ptr %arrayidx298, align 4
  br label %if.end325

if.else300:                                       ; preds = %if.else277
  %163 = load ptr, ptr %mid.addr, align 8
  %164 = load i32, ptr %i, align 4
  %add301 = add nsw i32 %164, 1
  %165 = load i32, ptr %x_size.addr, align 4
  %mul302 = mul nsw i32 %add301, %165
  %166 = load i32, ptr %j, align 4
  %add303 = add nsw i32 %mul302, %166
  %add304 = add nsw i32 %add303, 1
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds i8, ptr %163, i64 %idxprom305
  %167 = load i8, ptr %arrayidx306, align 1
  %conv307 = zext i8 %167 to i32
  %cmp308 = icmp slt i32 %conv307, 8
  br i1 %cmp308, label %if.then310, label %if.end324

if.then310:                                       ; preds = %if.else300
  %arrayidx311 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 0, ptr %arrayidx311, align 4
  %arrayidx312 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 0, ptr %arrayidx312, align 4
  %arrayidx313 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 0, ptr %arrayidx313, align 4
  %arrayidx314 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %168 = load i32, ptr %arrayidx314, align 4
  %mul315 = mul nsw i32 %168, 2
  store i32 %mul315, ptr %arrayidx314, align 4
  %arrayidx316 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %169 = load i32, ptr %arrayidx316, align 4
  %mul317 = mul nsw i32 %169, 2
  store i32 %mul317, ptr %arrayidx316, align 4
  %arrayidx318 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %170 = load i32, ptr %arrayidx318, align 4
  %mul319 = mul nsw i32 %170, 3
  store i32 %mul319, ptr %arrayidx318, align 4
  %arrayidx320 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %171 = load i32, ptr %arrayidx320, align 4
  %mul321 = mul nsw i32 %171, 3
  store i32 %mul321, ptr %arrayidx320, align 4
  %arrayidx322 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %172 = load i32, ptr %arrayidx322, align 4
  %mul323 = mul nsw i32 %172, 4
  store i32 %mul323, ptr %arrayidx322, align 4
  br label %if.end324

if.end324:                                        ; preds = %if.then310, %if.else300
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %if.then286
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %if.then263
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %if.then239
  br label %if.end328

if.end328:                                        ; preds = %if.end327, %if.then216
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.then193
  br label %if.end330

if.end330:                                        ; preds = %if.end329, %if.then169
  br label %if.end331

if.end331:                                        ; preds = %if.end330, %if.then147
  store i32 0, ptr %m, align 4
  store i32 0, ptr %y, align 4
  br label %for.cond332

for.cond332:                                      ; preds = %for.inc354, %if.end331
  %173 = load i32, ptr %y, align 4
  %cmp333 = icmp slt i32 %173, 3
  br i1 %cmp333, label %for.body335, label %for.end356

for.body335:                                      ; preds = %for.cond332
  store i32 0, ptr %x, align 4
  br label %for.cond336

for.cond336:                                      ; preds = %for.inc, %for.body335
  %174 = load i32, ptr %x, align 4
  %cmp337 = icmp slt i32 %174, 3
  br i1 %cmp337, label %for.body339, label %for.end

for.body339:                                      ; preds = %for.cond336
  %175 = load i32, ptr %y, align 4
  %176 = load i32, ptr %y, align 4
  %add340 = add nsw i32 %175, %176
  %177 = load i32, ptr %y, align 4
  %add341 = add nsw i32 %add340, %177
  %178 = load i32, ptr %x, align 4
  %add342 = add nsw i32 %add341, %178
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 %idxprom343
  %179 = load i32, ptr %arrayidx344, align 4
  %180 = load i32, ptr %m, align 4
  %cmp345 = icmp sgt i32 %179, %180
  br i1 %cmp345, label %if.then347, label %if.end353

if.then347:                                       ; preds = %for.body339
  %181 = load i32, ptr %y, align 4
  %182 = load i32, ptr %y, align 4
  %add348 = add nsw i32 %181, %182
  %183 = load i32, ptr %y, align 4
  %add349 = add nsw i32 %add348, %183
  %184 = load i32, ptr %x, align 4
  %add350 = add nsw i32 %add349, %184
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 %idxprom351
  %185 = load i32, ptr %arrayidx352, align 4
  store i32 %185, ptr %m, align 4
  %186 = load i32, ptr %y, align 4
  store i32 %186, ptr %a, align 4
  %187 = load i32, ptr %x, align 4
  store i32 %187, ptr %b, align 4
  br label %if.end353

if.end353:                                        ; preds = %if.then347, %for.body339
  br label %for.inc

for.inc:                                          ; preds = %if.end353
  %188 = load i32, ptr %x, align 4
  %inc = add nsw i32 %188, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond336, !llvm.loop !30

for.end:                                          ; preds = %for.cond336
  br label %for.inc354

for.inc354:                                       ; preds = %for.end
  %189 = load i32, ptr %y, align 4
  %inc355 = add nsw i32 %189, 1
  store i32 %inc355, ptr %y, align 4
  br label %for.cond332, !llvm.loop !31

for.end356:                                       ; preds = %for.cond332
  %190 = load i32, ptr %m, align 4
  %cmp357 = icmp sgt i32 %190, 0
  br i1 %cmp357, label %if.then359, label %if.end411

if.then359:                                       ; preds = %for.end356
  %191 = load ptr, ptr %mid.addr, align 8
  %192 = load i32, ptr %i, align 4
  %193 = load i32, ptr %x_size.addr, align 4
  %mul360 = mul nsw i32 %192, %193
  %194 = load i32, ptr %j, align 4
  %add361 = add nsw i32 %mul360, %194
  %idxprom362 = sext i32 %add361 to i64
  %arrayidx363 = getelementptr inbounds i8, ptr %191, i64 %idxprom362
  %195 = load i8, ptr %arrayidx363, align 1
  %conv364 = zext i8 %195 to i32
  %cmp365 = icmp slt i32 %conv364, 4
  br i1 %cmp365, label %if.then367, label %if.else376

if.then367:                                       ; preds = %if.then359
  %196 = load ptr, ptr %mid.addr, align 8
  %197 = load i32, ptr %i, align 4
  %198 = load i32, ptr %a, align 4
  %add368 = add nsw i32 %197, %198
  %sub369 = sub nsw i32 %add368, 1
  %199 = load i32, ptr %x_size.addr, align 4
  %mul370 = mul nsw i32 %sub369, %199
  %200 = load i32, ptr %j, align 4
  %add371 = add nsw i32 %mul370, %200
  %201 = load i32, ptr %b, align 4
  %add372 = add nsw i32 %add371, %201
  %sub373 = sub nsw i32 %add372, 1
  %idxprom374 = sext i32 %sub373 to i64
  %arrayidx375 = getelementptr inbounds i8, ptr %196, i64 %idxprom374
  store i8 4, ptr %arrayidx375, align 1
  br label %if.end392

if.else376:                                       ; preds = %if.then359
  %202 = load ptr, ptr %mid.addr, align 8
  %203 = load i32, ptr %i, align 4
  %204 = load i32, ptr %x_size.addr, align 4
  %mul377 = mul nsw i32 %203, %204
  %205 = load i32, ptr %j, align 4
  %add378 = add nsw i32 %mul377, %205
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds i8, ptr %202, i64 %idxprom379
  %206 = load i8, ptr %arrayidx380, align 1
  %conv381 = zext i8 %206 to i32
  %add382 = add nsw i32 %conv381, 1
  %conv383 = trunc i32 %add382 to i8
  %207 = load ptr, ptr %mid.addr, align 8
  %208 = load i32, ptr %i, align 4
  %209 = load i32, ptr %a, align 4
  %add384 = add nsw i32 %208, %209
  %sub385 = sub nsw i32 %add384, 1
  %210 = load i32, ptr %x_size.addr, align 4
  %mul386 = mul nsw i32 %sub385, %210
  %211 = load i32, ptr %j, align 4
  %add387 = add nsw i32 %mul386, %211
  %212 = load i32, ptr %b, align 4
  %add388 = add nsw i32 %add387, %212
  %sub389 = sub nsw i32 %add388, 1
  %idxprom390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds i8, ptr %207, i64 %idxprom390
  store i8 %conv383, ptr %arrayidx391, align 1
  br label %if.end392

if.end392:                                        ; preds = %if.else376, %if.then367
  %213 = load i32, ptr %a, align 4
  %214 = load i32, ptr %a, align 4
  %add393 = add nsw i32 %213, %214
  %215 = load i32, ptr %b, align 4
  %add394 = add nsw i32 %add393, %215
  %cmp395 = icmp slt i32 %add394, 3
  br i1 %cmp395, label %if.then397, label %if.end410

if.then397:                                       ; preds = %if.end392
  %216 = load i32, ptr %a, align 4
  %sub398 = sub nsw i32 %216, 1
  %217 = load i32, ptr %i, align 4
  %add399 = add nsw i32 %217, %sub398
  store i32 %add399, ptr %i, align 4
  %218 = load i32, ptr %b, align 4
  %sub400 = sub nsw i32 %218, 2
  %219 = load i32, ptr %j, align 4
  %add401 = add nsw i32 %219, %sub400
  store i32 %add401, ptr %j, align 4
  %220 = load i32, ptr %i, align 4
  %cmp402 = icmp slt i32 %220, 4
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %if.then397
  store i32 4, ptr %i, align 4
  br label %if.end405

if.end405:                                        ; preds = %if.then404, %if.then397
  %221 = load i32, ptr %j, align 4
  %cmp406 = icmp slt i32 %221, 4
  br i1 %cmp406, label %if.then408, label %if.end409

if.then408:                                       ; preds = %if.end405
  store i32 4, ptr %j, align 4
  br label %if.end409

if.end409:                                        ; preds = %if.then408, %if.end405
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %if.end392
  br label %if.end411

if.end411:                                        ; preds = %if.end410, %for.end356
  br label %if.end412

if.end412:                                        ; preds = %if.end411, %land.lhs.true, %if.end
  %222 = load i32, ptr %n, align 4
  %cmp413 = icmp eq i32 %222, 2
  br i1 %cmp413, label %if.then415, label %if.end709

if.then415:                                       ; preds = %if.end412
  %223 = load ptr, ptr %mid.addr, align 8
  %224 = load i32, ptr %i, align 4
  %sub416 = sub nsw i32 %224, 1
  %225 = load i32, ptr %x_size.addr, align 4
  %mul417 = mul nsw i32 %sub416, %225
  %226 = load i32, ptr %j, align 4
  %add418 = add nsw i32 %mul417, %226
  %sub419 = sub nsw i32 %add418, 1
  %idxprom420 = sext i32 %sub419 to i64
  %arrayidx421 = getelementptr inbounds i8, ptr %223, i64 %idxprom420
  %227 = load i8, ptr %arrayidx421, align 1
  %conv422 = zext i8 %227 to i32
  %cmp423 = icmp slt i32 %conv422, 8
  %conv424 = zext i1 %cmp423 to i32
  store i32 %conv424, ptr %b00, align 4
  %228 = load ptr, ptr %mid.addr, align 8
  %229 = load i32, ptr %i, align 4
  %sub425 = sub nsw i32 %229, 1
  %230 = load i32, ptr %x_size.addr, align 4
  %mul426 = mul nsw i32 %sub425, %230
  %231 = load i32, ptr %j, align 4
  %add427 = add nsw i32 %mul426, %231
  %add428 = add nsw i32 %add427, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds i8, ptr %228, i64 %idxprom429
  %232 = load i8, ptr %arrayidx430, align 1
  %conv431 = zext i8 %232 to i32
  %cmp432 = icmp slt i32 %conv431, 8
  %conv433 = zext i1 %cmp432 to i32
  store i32 %conv433, ptr %b02, align 4
  %233 = load ptr, ptr %mid.addr, align 8
  %234 = load i32, ptr %i, align 4
  %add434 = add nsw i32 %234, 1
  %235 = load i32, ptr %x_size.addr, align 4
  %mul435 = mul nsw i32 %add434, %235
  %236 = load i32, ptr %j, align 4
  %add436 = add nsw i32 %mul435, %236
  %sub437 = sub nsw i32 %add436, 1
  %idxprom438 = sext i32 %sub437 to i64
  %arrayidx439 = getelementptr inbounds i8, ptr %233, i64 %idxprom438
  %237 = load i8, ptr %arrayidx439, align 1
  %conv440 = zext i8 %237 to i32
  %cmp441 = icmp slt i32 %conv440, 8
  %conv442 = zext i1 %cmp441 to i32
  store i32 %conv442, ptr %b20, align 4
  %238 = load ptr, ptr %mid.addr, align 8
  %239 = load i32, ptr %i, align 4
  %add443 = add nsw i32 %239, 1
  %240 = load i32, ptr %x_size.addr, align 4
  %mul444 = mul nsw i32 %add443, %240
  %241 = load i32, ptr %j, align 4
  %add445 = add nsw i32 %mul444, %241
  %add446 = add nsw i32 %add445, 1
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds i8, ptr %238, i64 %idxprom447
  %242 = load i8, ptr %arrayidx448, align 1
  %conv449 = zext i8 %242 to i32
  %cmp450 = icmp slt i32 %conv449, 8
  %conv451 = zext i1 %cmp450 to i32
  store i32 %conv451, ptr %b22, align 4
  %243 = load i32, ptr %b00, align 4
  %244 = load i32, ptr %b02, align 4
  %add452 = add nsw i32 %243, %244
  %245 = load i32, ptr %b20, align 4
  %add453 = add nsw i32 %add452, %245
  %246 = load i32, ptr %b22, align 4
  %add454 = add nsw i32 %add453, %246
  %cmp455 = icmp eq i32 %add454, 2
  br i1 %cmp455, label %land.lhs.true457, label %if.else565

land.lhs.true457:                                 ; preds = %if.then415
  %247 = load i32, ptr %b00, align 4
  %248 = load i32, ptr %b22, align 4
  %or = or i32 %247, %248
  %249 = load i32, ptr %b02, align 4
  %250 = load i32, ptr %b20, align 4
  %or458 = or i32 %249, %250
  %and = and i32 %or, %or458
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then459, label %if.else565

if.then459:                                       ; preds = %land.lhs.true457
  %251 = load i32, ptr %b00, align 4
  %tobool460 = icmp ne i32 %251, 0
  br i1 %tobool460, label %if.then461, label %if.else466

if.then461:                                       ; preds = %if.then459
  %252 = load i32, ptr %b02, align 4
  %tobool462 = icmp ne i32 %252, 0
  br i1 %tobool462, label %if.then463, label %if.else464

if.then463:                                       ; preds = %if.then461
  store i32 0, ptr %x, align 4
  store i32 -1, ptr %y, align 4
  br label %if.end465

if.else464:                                       ; preds = %if.then461
  store i32 -1, ptr %x, align 4
  store i32 0, ptr %y, align 4
  br label %if.end465

if.end465:                                        ; preds = %if.else464, %if.then463
  br label %if.end471

if.else466:                                       ; preds = %if.then459
  %253 = load i32, ptr %b02, align 4
  %tobool467 = icmp ne i32 %253, 0
  br i1 %tobool467, label %if.then468, label %if.else469

if.then468:                                       ; preds = %if.else466
  store i32 1, ptr %x, align 4
  store i32 0, ptr %y, align 4
  br label %if.end470

if.else469:                                       ; preds = %if.else466
  store i32 0, ptr %x, align 4
  store i32 1, ptr %y, align 4
  br label %if.end470

if.end470:                                        ; preds = %if.else469, %if.then468
  br label %if.end471

if.end471:                                        ; preds = %if.end470, %if.end465
  %254 = load ptr, ptr %r.addr, align 8
  %255 = load i32, ptr %i, align 4
  %256 = load i32, ptr %y, align 4
  %add472 = add nsw i32 %255, %256
  %257 = load i32, ptr %x_size.addr, align 4
  %mul473 = mul nsw i32 %add472, %257
  %258 = load i32, ptr %j, align 4
  %add474 = add nsw i32 %mul473, %258
  %259 = load i32, ptr %x, align 4
  %add475 = add nsw i32 %add474, %259
  %idxprom476 = sext i32 %add475 to i64
  %arrayidx477 = getelementptr inbounds i32, ptr %254, i64 %idxprom476
  %260 = load i32, ptr %arrayidx477, align 4
  %conv478 = sitofp i32 %260 to float
  %261 = load i32, ptr %centre, align 4
  %conv479 = sitofp i32 %261 to float
  %div = fdiv float %conv478, %conv479
  %conv480 = fpext float %div to double
  %cmp481 = fcmp ogt double %conv480, 0x3FE6666666666666
  br i1 %cmp481, label %if.then483, label %if.end564

if.then483:                                       ; preds = %if.end471
  %262 = load i32, ptr %x, align 4
  %cmp484 = icmp eq i32 %262, 0
  br i1 %cmp484, label %land.lhs.true486, label %lor.lhs.false

land.lhs.true486:                                 ; preds = %if.then483
  %263 = load ptr, ptr %mid.addr, align 8
  %264 = load i32, ptr %i, align 4
  %265 = load i32, ptr %y, align 4
  %mul487 = mul nsw i32 2, %265
  %add488 = add nsw i32 %264, %mul487
  %266 = load i32, ptr %x_size.addr, align 4
  %mul489 = mul nsw i32 %add488, %266
  %267 = load i32, ptr %j, align 4
  %add490 = add nsw i32 %mul489, %267
  %idxprom491 = sext i32 %add490 to i64
  %arrayidx492 = getelementptr inbounds i8, ptr %263, i64 %idxprom491
  %268 = load i8, ptr %arrayidx492, align 1
  %conv493 = zext i8 %268 to i32
  %cmp494 = icmp sgt i32 %conv493, 7
  br i1 %cmp494, label %land.lhs.true496, label %lor.lhs.false

land.lhs.true496:                                 ; preds = %land.lhs.true486
  %269 = load ptr, ptr %mid.addr, align 8
  %270 = load i32, ptr %i, align 4
  %271 = load i32, ptr %y, align 4
  %mul497 = mul nsw i32 2, %271
  %add498 = add nsw i32 %270, %mul497
  %272 = load i32, ptr %x_size.addr, align 4
  %mul499 = mul nsw i32 %add498, %272
  %273 = load i32, ptr %j, align 4
  %add500 = add nsw i32 %mul499, %273
  %sub501 = sub nsw i32 %add500, 1
  %idxprom502 = sext i32 %sub501 to i64
  %arrayidx503 = getelementptr inbounds i8, ptr %269, i64 %idxprom502
  %274 = load i8, ptr %arrayidx503, align 1
  %conv504 = zext i8 %274 to i32
  %cmp505 = icmp sgt i32 %conv504, 7
  br i1 %cmp505, label %land.lhs.true507, label %lor.lhs.false

land.lhs.true507:                                 ; preds = %land.lhs.true496
  %275 = load ptr, ptr %mid.addr, align 8
  %276 = load i32, ptr %i, align 4
  %277 = load i32, ptr %y, align 4
  %mul508 = mul nsw i32 2, %277
  %add509 = add nsw i32 %276, %mul508
  %278 = load i32, ptr %x_size.addr, align 4
  %mul510 = mul nsw i32 %add509, %278
  %279 = load i32, ptr %j, align 4
  %add511 = add nsw i32 %mul510, %279
  %add512 = add nsw i32 %add511, 1
  %idxprom513 = sext i32 %add512 to i64
  %arrayidx514 = getelementptr inbounds i8, ptr %275, i64 %idxprom513
  %280 = load i8, ptr %arrayidx514, align 1
  %conv515 = zext i8 %280 to i32
  %cmp516 = icmp sgt i32 %conv515, 7
  br i1 %cmp516, label %if.then552, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true507, %land.lhs.true496, %land.lhs.true486, %if.then483
  %281 = load i32, ptr %y, align 4
  %cmp518 = icmp eq i32 %281, 0
  br i1 %cmp518, label %land.lhs.true520, label %if.end563

land.lhs.true520:                                 ; preds = %lor.lhs.false
  %282 = load ptr, ptr %mid.addr, align 8
  %283 = load i32, ptr %i, align 4
  %284 = load i32, ptr %x_size.addr, align 4
  %mul521 = mul nsw i32 %283, %284
  %285 = load i32, ptr %j, align 4
  %add522 = add nsw i32 %mul521, %285
  %286 = load i32, ptr %x, align 4
  %mul523 = mul nsw i32 2, %286
  %add524 = add nsw i32 %add522, %mul523
  %idxprom525 = sext i32 %add524 to i64
  %arrayidx526 = getelementptr inbounds i8, ptr %282, i64 %idxprom525
  %287 = load i8, ptr %arrayidx526, align 1
  %conv527 = zext i8 %287 to i32
  %cmp528 = icmp sgt i32 %conv527, 7
  br i1 %cmp528, label %land.lhs.true530, label %if.end563

land.lhs.true530:                                 ; preds = %land.lhs.true520
  %288 = load ptr, ptr %mid.addr, align 8
  %289 = load i32, ptr %i, align 4
  %add531 = add nsw i32 %289, 1
  %290 = load i32, ptr %x_size.addr, align 4
  %mul532 = mul nsw i32 %add531, %290
  %291 = load i32, ptr %j, align 4
  %add533 = add nsw i32 %mul532, %291
  %292 = load i32, ptr %x, align 4
  %mul534 = mul nsw i32 2, %292
  %add535 = add nsw i32 %add533, %mul534
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds i8, ptr %288, i64 %idxprom536
  %293 = load i8, ptr %arrayidx537, align 1
  %conv538 = zext i8 %293 to i32
  %cmp539 = icmp sgt i32 %conv538, 7
  br i1 %cmp539, label %land.lhs.true541, label %if.end563

land.lhs.true541:                                 ; preds = %land.lhs.true530
  %294 = load ptr, ptr %mid.addr, align 8
  %295 = load i32, ptr %i, align 4
  %sub542 = sub nsw i32 %295, 1
  %296 = load i32, ptr %x_size.addr, align 4
  %mul543 = mul nsw i32 %sub542, %296
  %297 = load i32, ptr %j, align 4
  %add544 = add nsw i32 %mul543, %297
  %298 = load i32, ptr %x, align 4
  %mul545 = mul nsw i32 2, %298
  %add546 = add nsw i32 %add544, %mul545
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds i8, ptr %294, i64 %idxprom547
  %299 = load i8, ptr %arrayidx548, align 1
  %conv549 = zext i8 %299 to i32
  %cmp550 = icmp sgt i32 %conv549, 7
  br i1 %cmp550, label %if.then552, label %if.end563

if.then552:                                       ; preds = %land.lhs.true541, %land.lhs.true507
  %300 = load ptr, ptr %mid.addr, align 8
  %301 = load i32, ptr %i, align 4
  %302 = load i32, ptr %x_size.addr, align 4
  %mul553 = mul nsw i32 %301, %302
  %303 = load i32, ptr %j, align 4
  %add554 = add nsw i32 %mul553, %303
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds i8, ptr %300, i64 %idxprom555
  store i8 100, ptr %arrayidx556, align 1
  %304 = load ptr, ptr %mid.addr, align 8
  %305 = load i32, ptr %i, align 4
  %306 = load i32, ptr %y, align 4
  %add557 = add nsw i32 %305, %306
  %307 = load i32, ptr %x_size.addr, align 4
  %mul558 = mul nsw i32 %add557, %307
  %308 = load i32, ptr %j, align 4
  %add559 = add nsw i32 %mul558, %308
  %309 = load i32, ptr %x, align 4
  %add560 = add nsw i32 %add559, %309
  %idxprom561 = sext i32 %add560 to i64
  %arrayidx562 = getelementptr inbounds i8, ptr %304, i64 %idxprom561
  store i8 3, ptr %arrayidx562, align 1
  br label %if.end563

if.end563:                                        ; preds = %if.then552, %land.lhs.true541, %land.lhs.true530, %land.lhs.true520, %lor.lhs.false
  br label %if.end564

if.end564:                                        ; preds = %if.end563, %if.end471
  br label %if.end708

if.else565:                                       ; preds = %land.lhs.true457, %if.then415
  %310 = load ptr, ptr %mid.addr, align 8
  %311 = load i32, ptr %i, align 4
  %sub566 = sub nsw i32 %311, 1
  %312 = load i32, ptr %x_size.addr, align 4
  %mul567 = mul nsw i32 %sub566, %312
  %313 = load i32, ptr %j, align 4
  %add568 = add nsw i32 %mul567, %313
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds i8, ptr %310, i64 %idxprom569
  %314 = load i8, ptr %arrayidx570, align 1
  %conv571 = zext i8 %314 to i32
  %cmp572 = icmp slt i32 %conv571, 8
  %conv573 = zext i1 %cmp572 to i32
  store i32 %conv573, ptr %b01, align 4
  %315 = load ptr, ptr %mid.addr, align 8
  %316 = load i32, ptr %i, align 4
  %317 = load i32, ptr %x_size.addr, align 4
  %mul574 = mul nsw i32 %316, %317
  %318 = load i32, ptr %j, align 4
  %add575 = add nsw i32 %mul574, %318
  %add576 = add nsw i32 %add575, 1
  %idxprom577 = sext i32 %add576 to i64
  %arrayidx578 = getelementptr inbounds i8, ptr %315, i64 %idxprom577
  %319 = load i8, ptr %arrayidx578, align 1
  %conv579 = zext i8 %319 to i32
  %cmp580 = icmp slt i32 %conv579, 8
  %conv581 = zext i1 %cmp580 to i32
  store i32 %conv581, ptr %b12, align 4
  %320 = load ptr, ptr %mid.addr, align 8
  %321 = load i32, ptr %i, align 4
  %add582 = add nsw i32 %321, 1
  %322 = load i32, ptr %x_size.addr, align 4
  %mul583 = mul nsw i32 %add582, %322
  %323 = load i32, ptr %j, align 4
  %add584 = add nsw i32 %mul583, %323
  %idxprom585 = sext i32 %add584 to i64
  %arrayidx586 = getelementptr inbounds i8, ptr %320, i64 %idxprom585
  %324 = load i8, ptr %arrayidx586, align 1
  %conv587 = zext i8 %324 to i32
  %cmp588 = icmp slt i32 %conv587, 8
  %conv589 = zext i1 %cmp588 to i32
  store i32 %conv589, ptr %b21, align 4
  %325 = load ptr, ptr %mid.addr, align 8
  %326 = load i32, ptr %i, align 4
  %327 = load i32, ptr %x_size.addr, align 4
  %mul590 = mul nsw i32 %326, %327
  %328 = load i32, ptr %j, align 4
  %add591 = add nsw i32 %mul590, %328
  %sub592 = sub nsw i32 %add591, 1
  %idxprom593 = sext i32 %sub592 to i64
  %arrayidx594 = getelementptr inbounds i8, ptr %325, i64 %idxprom593
  %329 = load i8, ptr %arrayidx594, align 1
  %conv595 = zext i8 %329 to i32
  %cmp596 = icmp slt i32 %conv595, 8
  %conv597 = zext i1 %cmp596 to i32
  store i32 %conv597, ptr %b10, align 4
  %330 = load i32, ptr %b01, align 4
  %331 = load i32, ptr %b12, align 4
  %add598 = add nsw i32 %330, %331
  %332 = load i32, ptr %b21, align 4
  %add599 = add nsw i32 %add598, %332
  %333 = load i32, ptr %b10, align 4
  %add600 = add nsw i32 %add599, %333
  %cmp601 = icmp eq i32 %add600, 2
  br i1 %cmp601, label %land.lhs.true603, label %if.end707

land.lhs.true603:                                 ; preds = %if.else565
  %334 = load i32, ptr %b10, align 4
  %335 = load i32, ptr %b12, align 4
  %or604 = or i32 %334, %335
  %336 = load i32, ptr %b01, align 4
  %337 = load i32, ptr %b21, align 4
  %or605 = or i32 %336, %337
  %and606 = and i32 %or604, %or605
  %tobool607 = icmp ne i32 %and606, 0
  br i1 %tobool607, label %land.lhs.true608, label %if.end707

land.lhs.true608:                                 ; preds = %land.lhs.true603
  %338 = load i32, ptr %b01, align 4
  %339 = load ptr, ptr %mid.addr, align 8
  %340 = load i32, ptr %i, align 4
  %sub609 = sub nsw i32 %340, 2
  %341 = load i32, ptr %x_size.addr, align 4
  %mul610 = mul nsw i32 %sub609, %341
  %342 = load i32, ptr %j, align 4
  %add611 = add nsw i32 %mul610, %342
  %sub612 = sub nsw i32 %add611, 1
  %idxprom613 = sext i32 %sub612 to i64
  %arrayidx614 = getelementptr inbounds i8, ptr %339, i64 %idxprom613
  %343 = load i8, ptr %arrayidx614, align 1
  %conv615 = zext i8 %343 to i32
  %cmp616 = icmp slt i32 %conv615, 8
  %conv617 = zext i1 %cmp616 to i32
  %344 = load ptr, ptr %mid.addr, align 8
  %345 = load i32, ptr %i, align 4
  %sub618 = sub nsw i32 %345, 2
  %346 = load i32, ptr %x_size.addr, align 4
  %mul619 = mul nsw i32 %sub618, %346
  %347 = load i32, ptr %j, align 4
  %add620 = add nsw i32 %mul619, %347
  %add621 = add nsw i32 %add620, 1
  %idxprom622 = sext i32 %add621 to i64
  %arrayidx623 = getelementptr inbounds i8, ptr %344, i64 %idxprom622
  %348 = load i8, ptr %arrayidx623, align 1
  %conv624 = zext i8 %348 to i32
  %cmp625 = icmp slt i32 %conv624, 8
  %conv626 = zext i1 %cmp625 to i32
  %or627 = or i32 %conv617, %conv626
  %and628 = and i32 %338, %or627
  %349 = load i32, ptr %b10, align 4
  %350 = load ptr, ptr %mid.addr, align 8
  %351 = load i32, ptr %i, align 4
  %sub629 = sub nsw i32 %351, 1
  %352 = load i32, ptr %x_size.addr, align 4
  %mul630 = mul nsw i32 %sub629, %352
  %353 = load i32, ptr %j, align 4
  %add631 = add nsw i32 %mul630, %353
  %sub632 = sub nsw i32 %add631, 2
  %idxprom633 = sext i32 %sub632 to i64
  %arrayidx634 = getelementptr inbounds i8, ptr %350, i64 %idxprom633
  %354 = load i8, ptr %arrayidx634, align 1
  %conv635 = zext i8 %354 to i32
  %cmp636 = icmp slt i32 %conv635, 8
  %conv637 = zext i1 %cmp636 to i32
  %355 = load ptr, ptr %mid.addr, align 8
  %356 = load i32, ptr %i, align 4
  %add638 = add nsw i32 %356, 1
  %357 = load i32, ptr %x_size.addr, align 4
  %mul639 = mul nsw i32 %add638, %357
  %358 = load i32, ptr %j, align 4
  %add640 = add nsw i32 %mul639, %358
  %sub641 = sub nsw i32 %add640, 2
  %idxprom642 = sext i32 %sub641 to i64
  %arrayidx643 = getelementptr inbounds i8, ptr %355, i64 %idxprom642
  %359 = load i8, ptr %arrayidx643, align 1
  %conv644 = zext i8 %359 to i32
  %cmp645 = icmp slt i32 %conv644, 8
  %conv646 = zext i1 %cmp645 to i32
  %or647 = or i32 %conv637, %conv646
  %and648 = and i32 %349, %or647
  %or649 = or i32 %and628, %and648
  %360 = load i32, ptr %b12, align 4
  %361 = load ptr, ptr %mid.addr, align 8
  %362 = load i32, ptr %i, align 4
  %sub650 = sub nsw i32 %362, 1
  %363 = load i32, ptr %x_size.addr, align 4
  %mul651 = mul nsw i32 %sub650, %363
  %364 = load i32, ptr %j, align 4
  %add652 = add nsw i32 %mul651, %364
  %add653 = add nsw i32 %add652, 2
  %idxprom654 = sext i32 %add653 to i64
  %arrayidx655 = getelementptr inbounds i8, ptr %361, i64 %idxprom654
  %365 = load i8, ptr %arrayidx655, align 1
  %conv656 = zext i8 %365 to i32
  %cmp657 = icmp slt i32 %conv656, 8
  %conv658 = zext i1 %cmp657 to i32
  %366 = load ptr, ptr %mid.addr, align 8
  %367 = load i32, ptr %i, align 4
  %add659 = add nsw i32 %367, 1
  %368 = load i32, ptr %x_size.addr, align 4
  %mul660 = mul nsw i32 %add659, %368
  %369 = load i32, ptr %j, align 4
  %add661 = add nsw i32 %mul660, %369
  %add662 = add nsw i32 %add661, 2
  %idxprom663 = sext i32 %add662 to i64
  %arrayidx664 = getelementptr inbounds i8, ptr %366, i64 %idxprom663
  %370 = load i8, ptr %arrayidx664, align 1
  %conv665 = zext i8 %370 to i32
  %cmp666 = icmp slt i32 %conv665, 8
  %conv667 = zext i1 %cmp666 to i32
  %or668 = or i32 %conv658, %conv667
  %and669 = and i32 %360, %or668
  %or670 = or i32 %or649, %and669
  %371 = load i32, ptr %b21, align 4
  %372 = load ptr, ptr %mid.addr, align 8
  %373 = load i32, ptr %i, align 4
  %add671 = add nsw i32 %373, 2
  %374 = load i32, ptr %x_size.addr, align 4
  %mul672 = mul nsw i32 %add671, %374
  %375 = load i32, ptr %j, align 4
  %add673 = add nsw i32 %mul672, %375
  %sub674 = sub nsw i32 %add673, 1
  %idxprom675 = sext i32 %sub674 to i64
  %arrayidx676 = getelementptr inbounds i8, ptr %372, i64 %idxprom675
  %376 = load i8, ptr %arrayidx676, align 1
  %conv677 = zext i8 %376 to i32
  %cmp678 = icmp slt i32 %conv677, 8
  %conv679 = zext i1 %cmp678 to i32
  %377 = load ptr, ptr %mid.addr, align 8
  %378 = load i32, ptr %i, align 4
  %add680 = add nsw i32 %378, 2
  %379 = load i32, ptr %x_size.addr, align 4
  %mul681 = mul nsw i32 %add680, %379
  %380 = load i32, ptr %j, align 4
  %add682 = add nsw i32 %mul681, %380
  %add683 = add nsw i32 %add682, 1
  %idxprom684 = sext i32 %add683 to i64
  %arrayidx685 = getelementptr inbounds i8, ptr %377, i64 %idxprom684
  %381 = load i8, ptr %arrayidx685, align 1
  %conv686 = zext i8 %381 to i32
  %cmp687 = icmp slt i32 %conv686, 8
  %conv688 = zext i1 %cmp687 to i32
  %or689 = or i32 %conv679, %conv688
  %and690 = and i32 %371, %or689
  %or691 = or i32 %or670, %and690
  %tobool692 = icmp ne i32 %or691, 0
  br i1 %tobool692, label %if.then693, label %if.end707

if.then693:                                       ; preds = %land.lhs.true608
  %382 = load ptr, ptr %mid.addr, align 8
  %383 = load i32, ptr %i, align 4
  %384 = load i32, ptr %x_size.addr, align 4
  %mul694 = mul nsw i32 %383, %384
  %385 = load i32, ptr %j, align 4
  %add695 = add nsw i32 %mul694, %385
  %idxprom696 = sext i32 %add695 to i64
  %arrayidx697 = getelementptr inbounds i8, ptr %382, i64 %idxprom696
  store i8 100, ptr %arrayidx697, align 1
  %386 = load i32, ptr %i, align 4
  %dec = add nsw i32 %386, -1
  store i32 %dec, ptr %i, align 4
  %387 = load i32, ptr %j, align 4
  %sub698 = sub nsw i32 %387, 2
  store i32 %sub698, ptr %j, align 4
  %388 = load i32, ptr %i, align 4
  %cmp699 = icmp slt i32 %388, 4
  br i1 %cmp699, label %if.then701, label %if.end702

if.then701:                                       ; preds = %if.then693
  store i32 4, ptr %i, align 4
  br label %if.end702

if.end702:                                        ; preds = %if.then701, %if.then693
  %389 = load i32, ptr %j, align 4
  %cmp703 = icmp slt i32 %389, 4
  br i1 %cmp703, label %if.then705, label %if.end706

if.then705:                                       ; preds = %if.end702
  store i32 4, ptr %j, align 4
  br label %if.end706

if.end706:                                        ; preds = %if.then705, %if.end702
  br label %if.end707

if.end707:                                        ; preds = %if.end706, %land.lhs.true608, %land.lhs.true603, %if.else565
  br label %if.end708

if.end708:                                        ; preds = %if.end707, %if.end564
  br label %if.end709

if.end709:                                        ; preds = %if.end708, %if.end412
  %390 = load i32, ptr %n, align 4
  %cmp710 = icmp sgt i32 %390, 2
  br i1 %cmp710, label %if.then712, label %if.end821

if.then712:                                       ; preds = %if.end709
  %391 = load ptr, ptr %mid.addr, align 8
  %392 = load i32, ptr %i, align 4
  %sub713 = sub nsw i32 %392, 1
  %393 = load i32, ptr %x_size.addr, align 4
  %mul714 = mul nsw i32 %sub713, %393
  %394 = load i32, ptr %j, align 4
  %add715 = add nsw i32 %mul714, %394
  %idxprom716 = sext i32 %add715 to i64
  %arrayidx717 = getelementptr inbounds i8, ptr %391, i64 %idxprom716
  %395 = load i8, ptr %arrayidx717, align 1
  %conv718 = zext i8 %395 to i32
  %cmp719 = icmp slt i32 %conv718, 8
  %conv720 = zext i1 %cmp719 to i32
  store i32 %conv720, ptr %b01, align 4
  %396 = load ptr, ptr %mid.addr, align 8
  %397 = load i32, ptr %i, align 4
  %398 = load i32, ptr %x_size.addr, align 4
  %mul721 = mul nsw i32 %397, %398
  %399 = load i32, ptr %j, align 4
  %add722 = add nsw i32 %mul721, %399
  %add723 = add nsw i32 %add722, 1
  %idxprom724 = sext i32 %add723 to i64
  %arrayidx725 = getelementptr inbounds i8, ptr %396, i64 %idxprom724
  %400 = load i8, ptr %arrayidx725, align 1
  %conv726 = zext i8 %400 to i32
  %cmp727 = icmp slt i32 %conv726, 8
  %conv728 = zext i1 %cmp727 to i32
  store i32 %conv728, ptr %b12, align 4
  %401 = load ptr, ptr %mid.addr, align 8
  %402 = load i32, ptr %i, align 4
  %add729 = add nsw i32 %402, 1
  %403 = load i32, ptr %x_size.addr, align 4
  %mul730 = mul nsw i32 %add729, %403
  %404 = load i32, ptr %j, align 4
  %add731 = add nsw i32 %mul730, %404
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds i8, ptr %401, i64 %idxprom732
  %405 = load i8, ptr %arrayidx733, align 1
  %conv734 = zext i8 %405 to i32
  %cmp735 = icmp slt i32 %conv734, 8
  %conv736 = zext i1 %cmp735 to i32
  store i32 %conv736, ptr %b21, align 4
  %406 = load ptr, ptr %mid.addr, align 8
  %407 = load i32, ptr %i, align 4
  %408 = load i32, ptr %x_size.addr, align 4
  %mul737 = mul nsw i32 %407, %408
  %409 = load i32, ptr %j, align 4
  %add738 = add nsw i32 %mul737, %409
  %sub739 = sub nsw i32 %add738, 1
  %idxprom740 = sext i32 %sub739 to i64
  %arrayidx741 = getelementptr inbounds i8, ptr %406, i64 %idxprom740
  %410 = load i8, ptr %arrayidx741, align 1
  %conv742 = zext i8 %410 to i32
  %cmp743 = icmp slt i32 %conv742, 8
  %conv744 = zext i1 %cmp743 to i32
  store i32 %conv744, ptr %b10, align 4
  %411 = load i32, ptr %b01, align 4
  %412 = load i32, ptr %b12, align 4
  %add745 = add nsw i32 %411, %412
  %413 = load i32, ptr %b21, align 4
  %add746 = add nsw i32 %add745, %413
  %414 = load i32, ptr %b10, align 4
  %add747 = add nsw i32 %add746, %414
  %cmp748 = icmp sgt i32 %add747, 1
  br i1 %cmp748, label %if.then750, label %if.end820

if.then750:                                       ; preds = %if.then712
  %415 = load ptr, ptr %mid.addr, align 8
  %416 = load i32, ptr %i, align 4
  %sub751 = sub nsw i32 %416, 1
  %417 = load i32, ptr %x_size.addr, align 4
  %mul752 = mul nsw i32 %sub751, %417
  %418 = load i32, ptr %j, align 4
  %add753 = add nsw i32 %mul752, %418
  %sub754 = sub nsw i32 %add753, 1
  %idxprom755 = sext i32 %sub754 to i64
  %arrayidx756 = getelementptr inbounds i8, ptr %415, i64 %idxprom755
  %419 = load i8, ptr %arrayidx756, align 1
  %conv757 = zext i8 %419 to i32
  %cmp758 = icmp slt i32 %conv757, 8
  %conv759 = zext i1 %cmp758 to i32
  store i32 %conv759, ptr %b00, align 4
  %420 = load ptr, ptr %mid.addr, align 8
  %421 = load i32, ptr %i, align 4
  %sub760 = sub nsw i32 %421, 1
  %422 = load i32, ptr %x_size.addr, align 4
  %mul761 = mul nsw i32 %sub760, %422
  %423 = load i32, ptr %j, align 4
  %add762 = add nsw i32 %mul761, %423
  %add763 = add nsw i32 %add762, 1
  %idxprom764 = sext i32 %add763 to i64
  %arrayidx765 = getelementptr inbounds i8, ptr %420, i64 %idxprom764
  %424 = load i8, ptr %arrayidx765, align 1
  %conv766 = zext i8 %424 to i32
  %cmp767 = icmp slt i32 %conv766, 8
  %conv768 = zext i1 %cmp767 to i32
  store i32 %conv768, ptr %b02, align 4
  %425 = load ptr, ptr %mid.addr, align 8
  %426 = load i32, ptr %i, align 4
  %add769 = add nsw i32 %426, 1
  %427 = load i32, ptr %x_size.addr, align 4
  %mul770 = mul nsw i32 %add769, %427
  %428 = load i32, ptr %j, align 4
  %add771 = add nsw i32 %mul770, %428
  %sub772 = sub nsw i32 %add771, 1
  %idxprom773 = sext i32 %sub772 to i64
  %arrayidx774 = getelementptr inbounds i8, ptr %425, i64 %idxprom773
  %429 = load i8, ptr %arrayidx774, align 1
  %conv775 = zext i8 %429 to i32
  %cmp776 = icmp slt i32 %conv775, 8
  %conv777 = zext i1 %cmp776 to i32
  store i32 %conv777, ptr %b20, align 4
  %430 = load ptr, ptr %mid.addr, align 8
  %431 = load i32, ptr %i, align 4
  %add778 = add nsw i32 %431, 1
  %432 = load i32, ptr %x_size.addr, align 4
  %mul779 = mul nsw i32 %add778, %432
  %433 = load i32, ptr %j, align 4
  %add780 = add nsw i32 %mul779, %433
  %add781 = add nsw i32 %add780, 1
  %idxprom782 = sext i32 %add781 to i64
  %arrayidx783 = getelementptr inbounds i8, ptr %430, i64 %idxprom782
  %434 = load i8, ptr %arrayidx783, align 1
  %conv784 = zext i8 %434 to i32
  %cmp785 = icmp slt i32 %conv784, 8
  %conv786 = zext i1 %cmp785 to i32
  store i32 %conv786, ptr %b22, align 4
  %435 = load i32, ptr %b00, align 4
  %436 = load i32, ptr %b01, align 4
  %or787 = or i32 %435, %436
  store i32 %or787, ptr %p1, align 4
  %437 = load i32, ptr %b02, align 4
  %438 = load i32, ptr %b12, align 4
  %or788 = or i32 %437, %438
  store i32 %or788, ptr %p2, align 4
  %439 = load i32, ptr %b22, align 4
  %440 = load i32, ptr %b21, align 4
  %or789 = or i32 %439, %440
  store i32 %or789, ptr %p3, align 4
  %441 = load i32, ptr %b20, align 4
  %442 = load i32, ptr %b10, align 4
  %or790 = or i32 %441, %442
  store i32 %or790, ptr %p4, align 4
  %443 = load i32, ptr %p1, align 4
  %444 = load i32, ptr %p2, align 4
  %add791 = add nsw i32 %443, %444
  %445 = load i32, ptr %p3, align 4
  %add792 = add nsw i32 %add791, %445
  %446 = load i32, ptr %p4, align 4
  %add793 = add nsw i32 %add792, %446
  %447 = load i32, ptr %b01, align 4
  %448 = load i32, ptr %p2, align 4
  %and794 = and i32 %447, %448
  %449 = load i32, ptr %b12, align 4
  %450 = load i32, ptr %p3, align 4
  %and795 = and i32 %449, %450
  %add796 = add nsw i32 %and794, %and795
  %451 = load i32, ptr %b21, align 4
  %452 = load i32, ptr %p4, align 4
  %and797 = and i32 %451, %452
  %add798 = add nsw i32 %add796, %and797
  %453 = load i32, ptr %b10, align 4
  %454 = load i32, ptr %p1, align 4
  %and799 = and i32 %453, %454
  %add800 = add nsw i32 %add798, %and799
  %sub801 = sub nsw i32 %add793, %add800
  %cmp802 = icmp slt i32 %sub801, 2
  br i1 %cmp802, label %if.then804, label %if.end819

if.then804:                                       ; preds = %if.then750
  %455 = load ptr, ptr %mid.addr, align 8
  %456 = load i32, ptr %i, align 4
  %457 = load i32, ptr %x_size.addr, align 4
  %mul805 = mul nsw i32 %456, %457
  %458 = load i32, ptr %j, align 4
  %add806 = add nsw i32 %mul805, %458
  %idxprom807 = sext i32 %add806 to i64
  %arrayidx808 = getelementptr inbounds i8, ptr %455, i64 %idxprom807
  store i8 100, ptr %arrayidx808, align 1
  %459 = load i32, ptr %i, align 4
  %dec809 = add nsw i32 %459, -1
  store i32 %dec809, ptr %i, align 4
  %460 = load i32, ptr %j, align 4
  %sub810 = sub nsw i32 %460, 2
  store i32 %sub810, ptr %j, align 4
  %461 = load i32, ptr %i, align 4
  %cmp811 = icmp slt i32 %461, 4
  br i1 %cmp811, label %if.then813, label %if.end814

if.then813:                                       ; preds = %if.then804
  store i32 4, ptr %i, align 4
  br label %if.end814

if.end814:                                        ; preds = %if.then813, %if.then804
  %462 = load i32, ptr %j, align 4
  %cmp815 = icmp slt i32 %462, 4
  br i1 %cmp815, label %if.then817, label %if.end818

if.then817:                                       ; preds = %if.end814
  store i32 4, ptr %j, align 4
  br label %if.end818

if.end818:                                        ; preds = %if.then817, %if.end814
  br label %if.end819

if.end819:                                        ; preds = %if.end818, %if.then750
  br label %if.end820

if.end820:                                        ; preds = %if.end819, %if.then712
  br label %if.end821

if.end821:                                        ; preds = %if.end820, %if.end709
  br label %if.end822

if.end822:                                        ; preds = %if.end821, %for.body4
  br label %for.inc823

for.inc823:                                       ; preds = %if.end822
  %463 = load i32, ptr %j, align 4
  %inc824 = add nsw i32 %463, 1
  store i32 %inc824, ptr %j, align 4
  br label %for.cond1, !llvm.loop !32

for.end825:                                       ; preds = %for.cond1
  br label %for.inc826

for.inc826:                                       ; preds = %for.end825
  %464 = load i32, ptr %i, align 4
  %inc827 = add nsw i32 %464, 1
  store i32 %inc827, ptr %i, align 4
  br label %for.cond, !llvm.loop !33

for.end828:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %r.addr, align 8
  %1 = load i32, ptr %x_size.addr, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %3 = load ptr, ptr %r.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %mul1, i64 noundef %4) #9
  store i32 3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc285, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %y_size.addr, align 4
  %sub = sub nsw i32 %6, 3
  %cmp = icmp slt i32 %5, %sub
  br i1 %cmp, label %for.body, label %for.end287

for.body:                                         ; preds = %for.cond
  store i32 3, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %x_size.addr, align 4
  %sub4 = sub nsw i32 %8, 3
  %cmp5 = icmp slt i32 %7, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %sub8 = sub nsw i32 %10, 3
  %11 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %11
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %12 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %12 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load ptr, ptr %in.addr, align 8
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %15, %16
  %17 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %17
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %18 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %19 = load ptr, ptr %cp, align 8
  %20 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv17 = zext i8 %21 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %19, i64 %idx.neg
  %22 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %22 to i32
  %23 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %23, %conv20
  store i32 %add21, ptr %n, align 4
  %24 = load ptr, ptr %cp, align 8
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %26 = load i8, ptr %25, align 1
  %conv23 = zext i8 %26 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %24, i64 %idx.neg25
  %27 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %27 to i32
  %28 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %28, %conv27
  store i32 %add28, ptr %n, align 4
  %29 = load ptr, ptr %cp, align 8
  %30 = load ptr, ptr %p, align 8
  %31 = load i8, ptr %30, align 1
  %conv29 = zext i8 %31 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %29, i64 %idx.neg31
  %32 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %33, %conv33
  store i32 %add34, ptr %n, align 4
  %34 = load i32, ptr %x_size.addr, align 4
  %sub35 = sub nsw i32 %34, 3
  %35 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %35, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %36 = load ptr, ptr %cp, align 8
  %37 = load ptr, ptr %p, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8
  %38 = load i8, ptr %37, align 1
  %conv39 = zext i8 %38 to i32
  %idx.ext40 = sext i32 %conv39 to i64
  %idx.neg41 = sub i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %36, i64 %idx.neg41
  %39 = load i8, ptr %add.ptr42, align 1
  %conv43 = zext i8 %39 to i32
  %40 = load i32, ptr %n, align 4
  %add44 = add nsw i32 %40, %conv43
  store i32 %add44, ptr %n, align 4
  %41 = load ptr, ptr %cp, align 8
  %42 = load ptr, ptr %p, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr45, ptr %p, align 8
  %43 = load i8, ptr %42, align 1
  %conv46 = zext i8 %43 to i32
  %idx.ext47 = sext i32 %conv46 to i64
  %idx.neg48 = sub i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %41, i64 %idx.neg48
  %44 = load i8, ptr %add.ptr49, align 1
  %conv50 = zext i8 %44 to i32
  %45 = load i32, ptr %n, align 4
  %add51 = add nsw i32 %45, %conv50
  store i32 %add51, ptr %n, align 4
  %46 = load ptr, ptr %cp, align 8
  %47 = load ptr, ptr %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr52, ptr %p, align 8
  %48 = load i8, ptr %47, align 1
  %conv53 = zext i8 %48 to i32
  %idx.ext54 = sext i32 %conv53 to i64
  %idx.neg55 = sub i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %46, i64 %idx.neg55
  %49 = load i8, ptr %add.ptr56, align 1
  %conv57 = zext i8 %49 to i32
  %50 = load i32, ptr %n, align 4
  %add58 = add nsw i32 %50, %conv57
  store i32 %add58, ptr %n, align 4
  %51 = load ptr, ptr %cp, align 8
  %52 = load ptr, ptr %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8
  %53 = load i8, ptr %52, align 1
  %conv60 = zext i8 %53 to i32
  %idx.ext61 = sext i32 %conv60 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %51, i64 %idx.neg62
  %54 = load i8, ptr %add.ptr63, align 1
  %conv64 = zext i8 %54 to i32
  %55 = load i32, ptr %n, align 4
  %add65 = add nsw i32 %55, %conv64
  store i32 %add65, ptr %n, align 4
  %56 = load ptr, ptr %cp, align 8
  %57 = load ptr, ptr %p, align 8
  %58 = load i8, ptr %57, align 1
  %conv66 = zext i8 %58 to i32
  %idx.ext67 = sext i32 %conv66 to i64
  %idx.neg68 = sub i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %56, i64 %idx.neg68
  %59 = load i8, ptr %add.ptr69, align 1
  %conv70 = zext i8 %59 to i32
  %60 = load i32, ptr %n, align 4
  %add71 = add nsw i32 %60, %conv70
  store i32 %add71, ptr %n, align 4
  %61 = load i32, ptr %x_size.addr, align 4
  %sub72 = sub nsw i32 %61, 5
  %62 = load ptr, ptr %p, align 8
  %idx.ext73 = sext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %62, i64 %idx.ext73
  store ptr %add.ptr74, ptr %p, align 8
  %63 = load ptr, ptr %cp, align 8
  %64 = load ptr, ptr %p, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr75, ptr %p, align 8
  %65 = load i8, ptr %64, align 1
  %conv76 = zext i8 %65 to i32
  %idx.ext77 = sext i32 %conv76 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %63, i64 %idx.neg78
  %66 = load i8, ptr %add.ptr79, align 1
  %conv80 = zext i8 %66 to i32
  %67 = load i32, ptr %n, align 4
  %add81 = add nsw i32 %67, %conv80
  store i32 %add81, ptr %n, align 4
  %68 = load ptr, ptr %cp, align 8
  %69 = load ptr, ptr %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr82, ptr %p, align 8
  %70 = load i8, ptr %69, align 1
  %conv83 = zext i8 %70 to i32
  %idx.ext84 = sext i32 %conv83 to i64
  %idx.neg85 = sub i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %68, i64 %idx.neg85
  %71 = load i8, ptr %add.ptr86, align 1
  %conv87 = zext i8 %71 to i32
  %72 = load i32, ptr %n, align 4
  %add88 = add nsw i32 %72, %conv87
  store i32 %add88, ptr %n, align 4
  %73 = load ptr, ptr %cp, align 8
  %74 = load ptr, ptr %p, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr89, ptr %p, align 8
  %75 = load i8, ptr %74, align 1
  %conv90 = zext i8 %75 to i32
  %idx.ext91 = sext i32 %conv90 to i64
  %idx.neg92 = sub i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %73, i64 %idx.neg92
  %76 = load i8, ptr %add.ptr93, align 1
  %conv94 = zext i8 %76 to i32
  %77 = load i32, ptr %n, align 4
  %add95 = add nsw i32 %77, %conv94
  store i32 %add95, ptr %n, align 4
  %78 = load ptr, ptr %cp, align 8
  %79 = load ptr, ptr %p, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr96, ptr %p, align 8
  %80 = load i8, ptr %79, align 1
  %conv97 = zext i8 %80 to i32
  %idx.ext98 = sext i32 %conv97 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %78, i64 %idx.neg99
  %81 = load i8, ptr %add.ptr100, align 1
  %conv101 = zext i8 %81 to i32
  %82 = load i32, ptr %n, align 4
  %add102 = add nsw i32 %82, %conv101
  store i32 %add102, ptr %n, align 4
  %83 = load ptr, ptr %cp, align 8
  %84 = load ptr, ptr %p, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr103, ptr %p, align 8
  %85 = load i8, ptr %84, align 1
  %conv104 = zext i8 %85 to i32
  %idx.ext105 = sext i32 %conv104 to i64
  %idx.neg106 = sub i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %83, i64 %idx.neg106
  %86 = load i8, ptr %add.ptr107, align 1
  %conv108 = zext i8 %86 to i32
  %87 = load i32, ptr %n, align 4
  %add109 = add nsw i32 %87, %conv108
  store i32 %add109, ptr %n, align 4
  %88 = load ptr, ptr %cp, align 8
  %89 = load ptr, ptr %p, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr110, ptr %p, align 8
  %90 = load i8, ptr %89, align 1
  %conv111 = zext i8 %90 to i32
  %idx.ext112 = sext i32 %conv111 to i64
  %idx.neg113 = sub i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %88, i64 %idx.neg113
  %91 = load i8, ptr %add.ptr114, align 1
  %conv115 = zext i8 %91 to i32
  %92 = load i32, ptr %n, align 4
  %add116 = add nsw i32 %92, %conv115
  store i32 %add116, ptr %n, align 4
  %93 = load ptr, ptr %cp, align 8
  %94 = load ptr, ptr %p, align 8
  %95 = load i8, ptr %94, align 1
  %conv117 = zext i8 %95 to i32
  %idx.ext118 = sext i32 %conv117 to i64
  %idx.neg119 = sub i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %93, i64 %idx.neg119
  %96 = load i8, ptr %add.ptr120, align 1
  %conv121 = zext i8 %96 to i32
  %97 = load i32, ptr %n, align 4
  %add122 = add nsw i32 %97, %conv121
  store i32 %add122, ptr %n, align 4
  %98 = load i32, ptr %x_size.addr, align 4
  %sub123 = sub nsw i32 %98, 6
  %99 = load ptr, ptr %p, align 8
  %idx.ext124 = sext i32 %sub123 to i64
  %add.ptr125 = getelementptr inbounds i8, ptr %99, i64 %idx.ext124
  store ptr %add.ptr125, ptr %p, align 8
  %100 = load ptr, ptr %cp, align 8
  %101 = load ptr, ptr %p, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %101, i32 1
  store ptr %incdec.ptr126, ptr %p, align 8
  %102 = load i8, ptr %101, align 1
  %conv127 = zext i8 %102 to i32
  %idx.ext128 = sext i32 %conv127 to i64
  %idx.neg129 = sub i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %100, i64 %idx.neg129
  %103 = load i8, ptr %add.ptr130, align 1
  %conv131 = zext i8 %103 to i32
  %104 = load i32, ptr %n, align 4
  %add132 = add nsw i32 %104, %conv131
  store i32 %add132, ptr %n, align 4
  %105 = load ptr, ptr %cp, align 8
  %106 = load ptr, ptr %p, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %incdec.ptr133, ptr %p, align 8
  %107 = load i8, ptr %106, align 1
  %conv134 = zext i8 %107 to i32
  %idx.ext135 = sext i32 %conv134 to i64
  %idx.neg136 = sub i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %105, i64 %idx.neg136
  %108 = load i8, ptr %add.ptr137, align 1
  %conv138 = zext i8 %108 to i32
  %109 = load i32, ptr %n, align 4
  %add139 = add nsw i32 %109, %conv138
  store i32 %add139, ptr %n, align 4
  %110 = load ptr, ptr %cp, align 8
  %111 = load ptr, ptr %p, align 8
  %112 = load i8, ptr %111, align 1
  %conv140 = zext i8 %112 to i32
  %idx.ext141 = sext i32 %conv140 to i64
  %idx.neg142 = sub i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %110, i64 %idx.neg142
  %113 = load i8, ptr %add.ptr143, align 1
  %conv144 = zext i8 %113 to i32
  %114 = load i32, ptr %n, align 4
  %add145 = add nsw i32 %114, %conv144
  store i32 %add145, ptr %n, align 4
  %115 = load ptr, ptr %p, align 8
  %add.ptr146 = getelementptr inbounds i8, ptr %115, i64 2
  store ptr %add.ptr146, ptr %p, align 8
  %116 = load ptr, ptr %cp, align 8
  %117 = load ptr, ptr %p, align 8
  %incdec.ptr147 = getelementptr inbounds i8, ptr %117, i32 1
  store ptr %incdec.ptr147, ptr %p, align 8
  %118 = load i8, ptr %117, align 1
  %conv148 = zext i8 %118 to i32
  %idx.ext149 = sext i32 %conv148 to i64
  %idx.neg150 = sub i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %116, i64 %idx.neg150
  %119 = load i8, ptr %add.ptr151, align 1
  %conv152 = zext i8 %119 to i32
  %120 = load i32, ptr %n, align 4
  %add153 = add nsw i32 %120, %conv152
  store i32 %add153, ptr %n, align 4
  %121 = load ptr, ptr %cp, align 8
  %122 = load ptr, ptr %p, align 8
  %incdec.ptr154 = getelementptr inbounds i8, ptr %122, i32 1
  store ptr %incdec.ptr154, ptr %p, align 8
  %123 = load i8, ptr %122, align 1
  %conv155 = zext i8 %123 to i32
  %idx.ext156 = sext i32 %conv155 to i64
  %idx.neg157 = sub i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, ptr %121, i64 %idx.neg157
  %124 = load i8, ptr %add.ptr158, align 1
  %conv159 = zext i8 %124 to i32
  %125 = load i32, ptr %n, align 4
  %add160 = add nsw i32 %125, %conv159
  store i32 %add160, ptr %n, align 4
  %126 = load ptr, ptr %cp, align 8
  %127 = load ptr, ptr %p, align 8
  %128 = load i8, ptr %127, align 1
  %conv161 = zext i8 %128 to i32
  %idx.ext162 = sext i32 %conv161 to i64
  %idx.neg163 = sub i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, ptr %126, i64 %idx.neg163
  %129 = load i8, ptr %add.ptr164, align 1
  %conv165 = zext i8 %129 to i32
  %130 = load i32, ptr %n, align 4
  %add166 = add nsw i32 %130, %conv165
  store i32 %add166, ptr %n, align 4
  %131 = load i32, ptr %x_size.addr, align 4
  %sub167 = sub nsw i32 %131, 6
  %132 = load ptr, ptr %p, align 8
  %idx.ext168 = sext i32 %sub167 to i64
  %add.ptr169 = getelementptr inbounds i8, ptr %132, i64 %idx.ext168
  store ptr %add.ptr169, ptr %p, align 8
  %133 = load ptr, ptr %cp, align 8
  %134 = load ptr, ptr %p, align 8
  %incdec.ptr170 = getelementptr inbounds i8, ptr %134, i32 1
  store ptr %incdec.ptr170, ptr %p, align 8
  %135 = load i8, ptr %134, align 1
  %conv171 = zext i8 %135 to i32
  %idx.ext172 = sext i32 %conv171 to i64
  %idx.neg173 = sub i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %133, i64 %idx.neg173
  %136 = load i8, ptr %add.ptr174, align 1
  %conv175 = zext i8 %136 to i32
  %137 = load i32, ptr %n, align 4
  %add176 = add nsw i32 %137, %conv175
  store i32 %add176, ptr %n, align 4
  %138 = load ptr, ptr %cp, align 8
  %139 = load ptr, ptr %p, align 8
  %incdec.ptr177 = getelementptr inbounds i8, ptr %139, i32 1
  store ptr %incdec.ptr177, ptr %p, align 8
  %140 = load i8, ptr %139, align 1
  %conv178 = zext i8 %140 to i32
  %idx.ext179 = sext i32 %conv178 to i64
  %idx.neg180 = sub i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, ptr %138, i64 %idx.neg180
  %141 = load i8, ptr %add.ptr181, align 1
  %conv182 = zext i8 %141 to i32
  %142 = load i32, ptr %n, align 4
  %add183 = add nsw i32 %142, %conv182
  store i32 %add183, ptr %n, align 4
  %143 = load ptr, ptr %cp, align 8
  %144 = load ptr, ptr %p, align 8
  %incdec.ptr184 = getelementptr inbounds i8, ptr %144, i32 1
  store ptr %incdec.ptr184, ptr %p, align 8
  %145 = load i8, ptr %144, align 1
  %conv185 = zext i8 %145 to i32
  %idx.ext186 = sext i32 %conv185 to i64
  %idx.neg187 = sub i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, ptr %143, i64 %idx.neg187
  %146 = load i8, ptr %add.ptr188, align 1
  %conv189 = zext i8 %146 to i32
  %147 = load i32, ptr %n, align 4
  %add190 = add nsw i32 %147, %conv189
  store i32 %add190, ptr %n, align 4
  %148 = load ptr, ptr %cp, align 8
  %149 = load ptr, ptr %p, align 8
  %incdec.ptr191 = getelementptr inbounds i8, ptr %149, i32 1
  store ptr %incdec.ptr191, ptr %p, align 8
  %150 = load i8, ptr %149, align 1
  %conv192 = zext i8 %150 to i32
  %idx.ext193 = sext i32 %conv192 to i64
  %idx.neg194 = sub i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %148, i64 %idx.neg194
  %151 = load i8, ptr %add.ptr195, align 1
  %conv196 = zext i8 %151 to i32
  %152 = load i32, ptr %n, align 4
  %add197 = add nsw i32 %152, %conv196
  store i32 %add197, ptr %n, align 4
  %153 = load ptr, ptr %cp, align 8
  %154 = load ptr, ptr %p, align 8
  %incdec.ptr198 = getelementptr inbounds i8, ptr %154, i32 1
  store ptr %incdec.ptr198, ptr %p, align 8
  %155 = load i8, ptr %154, align 1
  %conv199 = zext i8 %155 to i32
  %idx.ext200 = sext i32 %conv199 to i64
  %idx.neg201 = sub i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %153, i64 %idx.neg201
  %156 = load i8, ptr %add.ptr202, align 1
  %conv203 = zext i8 %156 to i32
  %157 = load i32, ptr %n, align 4
  %add204 = add nsw i32 %157, %conv203
  store i32 %add204, ptr %n, align 4
  %158 = load ptr, ptr %cp, align 8
  %159 = load ptr, ptr %p, align 8
  %incdec.ptr205 = getelementptr inbounds i8, ptr %159, i32 1
  store ptr %incdec.ptr205, ptr %p, align 8
  %160 = load i8, ptr %159, align 1
  %conv206 = zext i8 %160 to i32
  %idx.ext207 = sext i32 %conv206 to i64
  %idx.neg208 = sub i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, ptr %158, i64 %idx.neg208
  %161 = load i8, ptr %add.ptr209, align 1
  %conv210 = zext i8 %161 to i32
  %162 = load i32, ptr %n, align 4
  %add211 = add nsw i32 %162, %conv210
  store i32 %add211, ptr %n, align 4
  %163 = load ptr, ptr %cp, align 8
  %164 = load ptr, ptr %p, align 8
  %165 = load i8, ptr %164, align 1
  %conv212 = zext i8 %165 to i32
  %idx.ext213 = sext i32 %conv212 to i64
  %idx.neg214 = sub i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %163, i64 %idx.neg214
  %166 = load i8, ptr %add.ptr215, align 1
  %conv216 = zext i8 %166 to i32
  %167 = load i32, ptr %n, align 4
  %add217 = add nsw i32 %167, %conv216
  store i32 %add217, ptr %n, align 4
  %168 = load i32, ptr %x_size.addr, align 4
  %sub218 = sub nsw i32 %168, 5
  %169 = load ptr, ptr %p, align 8
  %idx.ext219 = sext i32 %sub218 to i64
  %add.ptr220 = getelementptr inbounds i8, ptr %169, i64 %idx.ext219
  store ptr %add.ptr220, ptr %p, align 8
  %170 = load ptr, ptr %cp, align 8
  %171 = load ptr, ptr %p, align 8
  %incdec.ptr221 = getelementptr inbounds i8, ptr %171, i32 1
  store ptr %incdec.ptr221, ptr %p, align 8
  %172 = load i8, ptr %171, align 1
  %conv222 = zext i8 %172 to i32
  %idx.ext223 = sext i32 %conv222 to i64
  %idx.neg224 = sub i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %170, i64 %idx.neg224
  %173 = load i8, ptr %add.ptr225, align 1
  %conv226 = zext i8 %173 to i32
  %174 = load i32, ptr %n, align 4
  %add227 = add nsw i32 %174, %conv226
  store i32 %add227, ptr %n, align 4
  %175 = load ptr, ptr %cp, align 8
  %176 = load ptr, ptr %p, align 8
  %incdec.ptr228 = getelementptr inbounds i8, ptr %176, i32 1
  store ptr %incdec.ptr228, ptr %p, align 8
  %177 = load i8, ptr %176, align 1
  %conv229 = zext i8 %177 to i32
  %idx.ext230 = sext i32 %conv229 to i64
  %idx.neg231 = sub i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %175, i64 %idx.neg231
  %178 = load i8, ptr %add.ptr232, align 1
  %conv233 = zext i8 %178 to i32
  %179 = load i32, ptr %n, align 4
  %add234 = add nsw i32 %179, %conv233
  store i32 %add234, ptr %n, align 4
  %180 = load ptr, ptr %cp, align 8
  %181 = load ptr, ptr %p, align 8
  %incdec.ptr235 = getelementptr inbounds i8, ptr %181, i32 1
  store ptr %incdec.ptr235, ptr %p, align 8
  %182 = load i8, ptr %181, align 1
  %conv236 = zext i8 %182 to i32
  %idx.ext237 = sext i32 %conv236 to i64
  %idx.neg238 = sub i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, ptr %180, i64 %idx.neg238
  %183 = load i8, ptr %add.ptr239, align 1
  %conv240 = zext i8 %183 to i32
  %184 = load i32, ptr %n, align 4
  %add241 = add nsw i32 %184, %conv240
  store i32 %add241, ptr %n, align 4
  %185 = load ptr, ptr %cp, align 8
  %186 = load ptr, ptr %p, align 8
  %incdec.ptr242 = getelementptr inbounds i8, ptr %186, i32 1
  store ptr %incdec.ptr242, ptr %p, align 8
  %187 = load i8, ptr %186, align 1
  %conv243 = zext i8 %187 to i32
  %idx.ext244 = sext i32 %conv243 to i64
  %idx.neg245 = sub i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, ptr %185, i64 %idx.neg245
  %188 = load i8, ptr %add.ptr246, align 1
  %conv247 = zext i8 %188 to i32
  %189 = load i32, ptr %n, align 4
  %add248 = add nsw i32 %189, %conv247
  store i32 %add248, ptr %n, align 4
  %190 = load ptr, ptr %cp, align 8
  %191 = load ptr, ptr %p, align 8
  %192 = load i8, ptr %191, align 1
  %conv249 = zext i8 %192 to i32
  %idx.ext250 = sext i32 %conv249 to i64
  %idx.neg251 = sub i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %190, i64 %idx.neg251
  %193 = load i8, ptr %add.ptr252, align 1
  %conv253 = zext i8 %193 to i32
  %194 = load i32, ptr %n, align 4
  %add254 = add nsw i32 %194, %conv253
  store i32 %add254, ptr %n, align 4
  %195 = load i32, ptr %x_size.addr, align 4
  %sub255 = sub nsw i32 %195, 3
  %196 = load ptr, ptr %p, align 8
  %idx.ext256 = sext i32 %sub255 to i64
  %add.ptr257 = getelementptr inbounds i8, ptr %196, i64 %idx.ext256
  store ptr %add.ptr257, ptr %p, align 8
  %197 = load ptr, ptr %cp, align 8
  %198 = load ptr, ptr %p, align 8
  %incdec.ptr258 = getelementptr inbounds i8, ptr %198, i32 1
  store ptr %incdec.ptr258, ptr %p, align 8
  %199 = load i8, ptr %198, align 1
  %conv259 = zext i8 %199 to i32
  %idx.ext260 = sext i32 %conv259 to i64
  %idx.neg261 = sub i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, ptr %197, i64 %idx.neg261
  %200 = load i8, ptr %add.ptr262, align 1
  %conv263 = zext i8 %200 to i32
  %201 = load i32, ptr %n, align 4
  %add264 = add nsw i32 %201, %conv263
  store i32 %add264, ptr %n, align 4
  %202 = load ptr, ptr %cp, align 8
  %203 = load ptr, ptr %p, align 8
  %incdec.ptr265 = getelementptr inbounds i8, ptr %203, i32 1
  store ptr %incdec.ptr265, ptr %p, align 8
  %204 = load i8, ptr %203, align 1
  %conv266 = zext i8 %204 to i32
  %idx.ext267 = sext i32 %conv266 to i64
  %idx.neg268 = sub i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, ptr %202, i64 %idx.neg268
  %205 = load i8, ptr %add.ptr269, align 1
  %conv270 = zext i8 %205 to i32
  %206 = load i32, ptr %n, align 4
  %add271 = add nsw i32 %206, %conv270
  store i32 %add271, ptr %n, align 4
  %207 = load ptr, ptr %cp, align 8
  %208 = load ptr, ptr %p, align 8
  %209 = load i8, ptr %208, align 1
  %conv272 = zext i8 %209 to i32
  %idx.ext273 = sext i32 %conv272 to i64
  %idx.neg274 = sub i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %207, i64 %idx.neg274
  %210 = load i8, ptr %add.ptr275, align 1
  %conv276 = zext i8 %210 to i32
  %211 = load i32, ptr %n, align 4
  %add277 = add nsw i32 %211, %conv276
  store i32 %add277, ptr %n, align 4
  %212 = load i32, ptr %n, align 4
  %213 = load i32, ptr %max_no.addr, align 4
  %cmp278 = icmp sle i32 %212, %213
  br i1 %cmp278, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %214 = load i32, ptr %max_no.addr, align 4
  %215 = load i32, ptr %n, align 4
  %sub280 = sub nsw i32 %214, %215
  %216 = load ptr, ptr %r.addr, align 8
  %217 = load i32, ptr %i, align 4
  %218 = load i32, ptr %x_size.addr, align 4
  %mul281 = mul nsw i32 %217, %218
  %219 = load i32, ptr %j, align 4
  %add282 = add nsw i32 %mul281, %219
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds i32, ptr %216, i64 %idxprom283
  store i32 %sub280, ptr %arrayidx284, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %220 = load i32, ptr %j, align 4
  %inc = add nsw i32 %220, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !34

for.end:                                          ; preds = %for.cond3
  br label %for.inc285

for.inc285:                                       ; preds = %for.end
  %221 = load i32, ptr %i, align 4
  %inc286 = add nsw i32 %221, 1
  store i32 %inc286, ptr %i, align 4
  br label %for.cond, !llvm.loop !35

for.end287:                                       ; preds = %for.cond
  store i32 4, ptr %i, align 4
  br label %for.cond288

for.cond288:                                      ; preds = %for.inc1255, %for.end287
  %222 = load i32, ptr %i, align 4
  %223 = load i32, ptr %y_size.addr, align 4
  %sub289 = sub nsw i32 %223, 4
  %cmp290 = icmp slt i32 %222, %sub289
  br i1 %cmp290, label %for.body292, label %for.end1257

for.body292:                                      ; preds = %for.cond288
  store i32 4, ptr %j, align 4
  br label %for.cond293

for.cond293:                                      ; preds = %for.inc1252, %for.body292
  %224 = load i32, ptr %j, align 4
  %225 = load i32, ptr %x_size.addr, align 4
  %sub294 = sub nsw i32 %225, 4
  %cmp295 = icmp slt i32 %224, %sub294
  br i1 %cmp295, label %for.body297, label %for.end1254

for.body297:                                      ; preds = %for.cond293
  %226 = load ptr, ptr %r.addr, align 8
  %227 = load i32, ptr %i, align 4
  %228 = load i32, ptr %x_size.addr, align 4
  %mul298 = mul nsw i32 %227, %228
  %229 = load i32, ptr %j, align 4
  %add299 = add nsw i32 %mul298, %229
  %idxprom300 = sext i32 %add299 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %226, i64 %idxprom300
  %230 = load i32, ptr %arrayidx301, align 4
  %cmp302 = icmp sgt i32 %230, 0
  br i1 %cmp302, label %if.then304, label %if.end1251

if.then304:                                       ; preds = %for.body297
  %231 = load ptr, ptr %r.addr, align 8
  %232 = load i32, ptr %i, align 4
  %233 = load i32, ptr %x_size.addr, align 4
  %mul305 = mul nsw i32 %232, %233
  %234 = load i32, ptr %j, align 4
  %add306 = add nsw i32 %mul305, %234
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds i32, ptr %231, i64 %idxprom307
  %235 = load i32, ptr %arrayidx308, align 4
  store i32 %235, ptr %m, align 4
  %236 = load i32, ptr %max_no.addr, align 4
  %237 = load i32, ptr %m, align 4
  %sub309 = sub nsw i32 %236, %237
  store i32 %sub309, ptr %n, align 4
  %238 = load ptr, ptr %bp.addr, align 8
  %239 = load ptr, ptr %in.addr, align 8
  %240 = load i32, ptr %i, align 4
  %241 = load i32, ptr %x_size.addr, align 4
  %mul310 = mul nsw i32 %240, %241
  %242 = load i32, ptr %j, align 4
  %add311 = add nsw i32 %mul310, %242
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds i8, ptr %239, i64 %idxprom312
  %243 = load i8, ptr %arrayidx313, align 1
  %conv314 = zext i8 %243 to i32
  %idx.ext315 = sext i32 %conv314 to i64
  %add.ptr316 = getelementptr inbounds i8, ptr %238, i64 %idx.ext315
  store ptr %add.ptr316, ptr %cp, align 8
  %244 = load i32, ptr %n, align 4
  %cmp317 = icmp sgt i32 %244, 600
  br i1 %cmp317, label %if.then319, label %if.else757

if.then319:                                       ; preds = %if.then304
  %245 = load ptr, ptr %in.addr, align 8
  %246 = load i32, ptr %i, align 4
  %sub320 = sub nsw i32 %246, 3
  %247 = load i32, ptr %x_size.addr, align 4
  %mul321 = mul nsw i32 %sub320, %247
  %idx.ext322 = sext i32 %mul321 to i64
  %add.ptr323 = getelementptr inbounds i8, ptr %245, i64 %idx.ext322
  %248 = load i32, ptr %j, align 4
  %idx.ext324 = sext i32 %248 to i64
  %add.ptr325 = getelementptr inbounds i8, ptr %add.ptr323, i64 %idx.ext324
  %add.ptr326 = getelementptr inbounds i8, ptr %add.ptr325, i64 -1
  store ptr %add.ptr326, ptr %p, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  %249 = load ptr, ptr %cp, align 8
  %250 = load ptr, ptr %p, align 8
  %incdec.ptr327 = getelementptr inbounds i8, ptr %250, i32 1
  store ptr %incdec.ptr327, ptr %p, align 8
  %251 = load i8, ptr %250, align 1
  %conv328 = zext i8 %251 to i32
  %idx.ext329 = sext i32 %conv328 to i64
  %idx.neg330 = sub i64 0, %idx.ext329
  %add.ptr331 = getelementptr inbounds i8, ptr %249, i64 %idx.neg330
  %252 = load i8, ptr %add.ptr331, align 1
  store i8 %252, ptr %c, align 1
  %253 = load i8, ptr %c, align 1
  %conv332 = zext i8 %253 to i32
  %254 = load i32, ptr %x, align 4
  %sub333 = sub nsw i32 %254, %conv332
  store i32 %sub333, ptr %x, align 4
  %255 = load i8, ptr %c, align 1
  %conv334 = zext i8 %255 to i32
  %mul335 = mul nsw i32 3, %conv334
  %256 = load i32, ptr %y, align 4
  %sub336 = sub nsw i32 %256, %mul335
  store i32 %sub336, ptr %y, align 4
  %257 = load ptr, ptr %cp, align 8
  %258 = load ptr, ptr %p, align 8
  %incdec.ptr337 = getelementptr inbounds i8, ptr %258, i32 1
  store ptr %incdec.ptr337, ptr %p, align 8
  %259 = load i8, ptr %258, align 1
  %conv338 = zext i8 %259 to i32
  %idx.ext339 = sext i32 %conv338 to i64
  %idx.neg340 = sub i64 0, %idx.ext339
  %add.ptr341 = getelementptr inbounds i8, ptr %257, i64 %idx.neg340
  %260 = load i8, ptr %add.ptr341, align 1
  store i8 %260, ptr %c, align 1
  %261 = load i8, ptr %c, align 1
  %conv342 = zext i8 %261 to i32
  %mul343 = mul nsw i32 3, %conv342
  %262 = load i32, ptr %y, align 4
  %sub344 = sub nsw i32 %262, %mul343
  store i32 %sub344, ptr %y, align 4
  %263 = load ptr, ptr %cp, align 8
  %264 = load ptr, ptr %p, align 8
  %265 = load i8, ptr %264, align 1
  %conv345 = zext i8 %265 to i32
  %idx.ext346 = sext i32 %conv345 to i64
  %idx.neg347 = sub i64 0, %idx.ext346
  %add.ptr348 = getelementptr inbounds i8, ptr %263, i64 %idx.neg347
  %266 = load i8, ptr %add.ptr348, align 1
  store i8 %266, ptr %c, align 1
  %267 = load i8, ptr %c, align 1
  %conv349 = zext i8 %267 to i32
  %268 = load i32, ptr %x, align 4
  %add350 = add nsw i32 %268, %conv349
  store i32 %add350, ptr %x, align 4
  %269 = load i8, ptr %c, align 1
  %conv351 = zext i8 %269 to i32
  %mul352 = mul nsw i32 3, %conv351
  %270 = load i32, ptr %y, align 4
  %sub353 = sub nsw i32 %270, %mul352
  store i32 %sub353, ptr %y, align 4
  %271 = load i32, ptr %x_size.addr, align 4
  %sub354 = sub nsw i32 %271, 3
  %272 = load ptr, ptr %p, align 8
  %idx.ext355 = sext i32 %sub354 to i64
  %add.ptr356 = getelementptr inbounds i8, ptr %272, i64 %idx.ext355
  store ptr %add.ptr356, ptr %p, align 8
  %273 = load ptr, ptr %cp, align 8
  %274 = load ptr, ptr %p, align 8
  %incdec.ptr357 = getelementptr inbounds i8, ptr %274, i32 1
  store ptr %incdec.ptr357, ptr %p, align 8
  %275 = load i8, ptr %274, align 1
  %conv358 = zext i8 %275 to i32
  %idx.ext359 = sext i32 %conv358 to i64
  %idx.neg360 = sub i64 0, %idx.ext359
  %add.ptr361 = getelementptr inbounds i8, ptr %273, i64 %idx.neg360
  %276 = load i8, ptr %add.ptr361, align 1
  store i8 %276, ptr %c, align 1
  %277 = load i8, ptr %c, align 1
  %conv362 = zext i8 %277 to i32
  %mul363 = mul nsw i32 2, %conv362
  %278 = load i32, ptr %x, align 4
  %sub364 = sub nsw i32 %278, %mul363
  store i32 %sub364, ptr %x, align 4
  %279 = load i8, ptr %c, align 1
  %conv365 = zext i8 %279 to i32
  %mul366 = mul nsw i32 2, %conv365
  %280 = load i32, ptr %y, align 4
  %sub367 = sub nsw i32 %280, %mul366
  store i32 %sub367, ptr %y, align 4
  %281 = load ptr, ptr %cp, align 8
  %282 = load ptr, ptr %p, align 8
  %incdec.ptr368 = getelementptr inbounds i8, ptr %282, i32 1
  store ptr %incdec.ptr368, ptr %p, align 8
  %283 = load i8, ptr %282, align 1
  %conv369 = zext i8 %283 to i32
  %idx.ext370 = sext i32 %conv369 to i64
  %idx.neg371 = sub i64 0, %idx.ext370
  %add.ptr372 = getelementptr inbounds i8, ptr %281, i64 %idx.neg371
  %284 = load i8, ptr %add.ptr372, align 1
  store i8 %284, ptr %c, align 1
  %285 = load i8, ptr %c, align 1
  %conv373 = zext i8 %285 to i32
  %286 = load i32, ptr %x, align 4
  %sub374 = sub nsw i32 %286, %conv373
  store i32 %sub374, ptr %x, align 4
  %287 = load i8, ptr %c, align 1
  %conv375 = zext i8 %287 to i32
  %mul376 = mul nsw i32 2, %conv375
  %288 = load i32, ptr %y, align 4
  %sub377 = sub nsw i32 %288, %mul376
  store i32 %sub377, ptr %y, align 4
  %289 = load ptr, ptr %cp, align 8
  %290 = load ptr, ptr %p, align 8
  %incdec.ptr378 = getelementptr inbounds i8, ptr %290, i32 1
  store ptr %incdec.ptr378, ptr %p, align 8
  %291 = load i8, ptr %290, align 1
  %conv379 = zext i8 %291 to i32
  %idx.ext380 = sext i32 %conv379 to i64
  %idx.neg381 = sub i64 0, %idx.ext380
  %add.ptr382 = getelementptr inbounds i8, ptr %289, i64 %idx.neg381
  %292 = load i8, ptr %add.ptr382, align 1
  store i8 %292, ptr %c, align 1
  %293 = load i8, ptr %c, align 1
  %conv383 = zext i8 %293 to i32
  %mul384 = mul nsw i32 2, %conv383
  %294 = load i32, ptr %y, align 4
  %sub385 = sub nsw i32 %294, %mul384
  store i32 %sub385, ptr %y, align 4
  %295 = load ptr, ptr %cp, align 8
  %296 = load ptr, ptr %p, align 8
  %incdec.ptr386 = getelementptr inbounds i8, ptr %296, i32 1
  store ptr %incdec.ptr386, ptr %p, align 8
  %297 = load i8, ptr %296, align 1
  %conv387 = zext i8 %297 to i32
  %idx.ext388 = sext i32 %conv387 to i64
  %idx.neg389 = sub i64 0, %idx.ext388
  %add.ptr390 = getelementptr inbounds i8, ptr %295, i64 %idx.neg389
  %298 = load i8, ptr %add.ptr390, align 1
  store i8 %298, ptr %c, align 1
  %299 = load i8, ptr %c, align 1
  %conv391 = zext i8 %299 to i32
  %300 = load i32, ptr %x, align 4
  %add392 = add nsw i32 %300, %conv391
  store i32 %add392, ptr %x, align 4
  %301 = load i8, ptr %c, align 1
  %conv393 = zext i8 %301 to i32
  %mul394 = mul nsw i32 2, %conv393
  %302 = load i32, ptr %y, align 4
  %sub395 = sub nsw i32 %302, %mul394
  store i32 %sub395, ptr %y, align 4
  %303 = load ptr, ptr %cp, align 8
  %304 = load ptr, ptr %p, align 8
  %305 = load i8, ptr %304, align 1
  %conv396 = zext i8 %305 to i32
  %idx.ext397 = sext i32 %conv396 to i64
  %idx.neg398 = sub i64 0, %idx.ext397
  %add.ptr399 = getelementptr inbounds i8, ptr %303, i64 %idx.neg398
  %306 = load i8, ptr %add.ptr399, align 1
  store i8 %306, ptr %c, align 1
  %307 = load i8, ptr %c, align 1
  %conv400 = zext i8 %307 to i32
  %mul401 = mul nsw i32 2, %conv400
  %308 = load i32, ptr %x, align 4
  %add402 = add nsw i32 %308, %mul401
  store i32 %add402, ptr %x, align 4
  %309 = load i8, ptr %c, align 1
  %conv403 = zext i8 %309 to i32
  %mul404 = mul nsw i32 2, %conv403
  %310 = load i32, ptr %y, align 4
  %sub405 = sub nsw i32 %310, %mul404
  store i32 %sub405, ptr %y, align 4
  %311 = load i32, ptr %x_size.addr, align 4
  %sub406 = sub nsw i32 %311, 5
  %312 = load ptr, ptr %p, align 8
  %idx.ext407 = sext i32 %sub406 to i64
  %add.ptr408 = getelementptr inbounds i8, ptr %312, i64 %idx.ext407
  store ptr %add.ptr408, ptr %p, align 8
  %313 = load ptr, ptr %cp, align 8
  %314 = load ptr, ptr %p, align 8
  %incdec.ptr409 = getelementptr inbounds i8, ptr %314, i32 1
  store ptr %incdec.ptr409, ptr %p, align 8
  %315 = load i8, ptr %314, align 1
  %conv410 = zext i8 %315 to i32
  %idx.ext411 = sext i32 %conv410 to i64
  %idx.neg412 = sub i64 0, %idx.ext411
  %add.ptr413 = getelementptr inbounds i8, ptr %313, i64 %idx.neg412
  %316 = load i8, ptr %add.ptr413, align 1
  store i8 %316, ptr %c, align 1
  %317 = load i8, ptr %c, align 1
  %conv414 = zext i8 %317 to i32
  %mul415 = mul nsw i32 3, %conv414
  %318 = load i32, ptr %x, align 4
  %sub416 = sub nsw i32 %318, %mul415
  store i32 %sub416, ptr %x, align 4
  %319 = load i8, ptr %c, align 1
  %conv417 = zext i8 %319 to i32
  %320 = load i32, ptr %y, align 4
  %sub418 = sub nsw i32 %320, %conv417
  store i32 %sub418, ptr %y, align 4
  %321 = load ptr, ptr %cp, align 8
  %322 = load ptr, ptr %p, align 8
  %incdec.ptr419 = getelementptr inbounds i8, ptr %322, i32 1
  store ptr %incdec.ptr419, ptr %p, align 8
  %323 = load i8, ptr %322, align 1
  %conv420 = zext i8 %323 to i32
  %idx.ext421 = sext i32 %conv420 to i64
  %idx.neg422 = sub i64 0, %idx.ext421
  %add.ptr423 = getelementptr inbounds i8, ptr %321, i64 %idx.neg422
  %324 = load i8, ptr %add.ptr423, align 1
  store i8 %324, ptr %c, align 1
  %325 = load i8, ptr %c, align 1
  %conv424 = zext i8 %325 to i32
  %mul425 = mul nsw i32 2, %conv424
  %326 = load i32, ptr %x, align 4
  %sub426 = sub nsw i32 %326, %mul425
  store i32 %sub426, ptr %x, align 4
  %327 = load i8, ptr %c, align 1
  %conv427 = zext i8 %327 to i32
  %328 = load i32, ptr %y, align 4
  %sub428 = sub nsw i32 %328, %conv427
  store i32 %sub428, ptr %y, align 4
  %329 = load ptr, ptr %cp, align 8
  %330 = load ptr, ptr %p, align 8
  %incdec.ptr429 = getelementptr inbounds i8, ptr %330, i32 1
  store ptr %incdec.ptr429, ptr %p, align 8
  %331 = load i8, ptr %330, align 1
  %conv430 = zext i8 %331 to i32
  %idx.ext431 = sext i32 %conv430 to i64
  %idx.neg432 = sub i64 0, %idx.ext431
  %add.ptr433 = getelementptr inbounds i8, ptr %329, i64 %idx.neg432
  %332 = load i8, ptr %add.ptr433, align 1
  store i8 %332, ptr %c, align 1
  %333 = load i8, ptr %c, align 1
  %conv434 = zext i8 %333 to i32
  %334 = load i32, ptr %x, align 4
  %sub435 = sub nsw i32 %334, %conv434
  store i32 %sub435, ptr %x, align 4
  %335 = load i8, ptr %c, align 1
  %conv436 = zext i8 %335 to i32
  %336 = load i32, ptr %y, align 4
  %sub437 = sub nsw i32 %336, %conv436
  store i32 %sub437, ptr %y, align 4
  %337 = load ptr, ptr %cp, align 8
  %338 = load ptr, ptr %p, align 8
  %incdec.ptr438 = getelementptr inbounds i8, ptr %338, i32 1
  store ptr %incdec.ptr438, ptr %p, align 8
  %339 = load i8, ptr %338, align 1
  %conv439 = zext i8 %339 to i32
  %idx.ext440 = sext i32 %conv439 to i64
  %idx.neg441 = sub i64 0, %idx.ext440
  %add.ptr442 = getelementptr inbounds i8, ptr %337, i64 %idx.neg441
  %340 = load i8, ptr %add.ptr442, align 1
  store i8 %340, ptr %c, align 1
  %341 = load i8, ptr %c, align 1
  %conv443 = zext i8 %341 to i32
  %342 = load i32, ptr %y, align 4
  %sub444 = sub nsw i32 %342, %conv443
  store i32 %sub444, ptr %y, align 4
  %343 = load ptr, ptr %cp, align 8
  %344 = load ptr, ptr %p, align 8
  %incdec.ptr445 = getelementptr inbounds i8, ptr %344, i32 1
  store ptr %incdec.ptr445, ptr %p, align 8
  %345 = load i8, ptr %344, align 1
  %conv446 = zext i8 %345 to i32
  %idx.ext447 = sext i32 %conv446 to i64
  %idx.neg448 = sub i64 0, %idx.ext447
  %add.ptr449 = getelementptr inbounds i8, ptr %343, i64 %idx.neg448
  %346 = load i8, ptr %add.ptr449, align 1
  store i8 %346, ptr %c, align 1
  %347 = load i8, ptr %c, align 1
  %conv450 = zext i8 %347 to i32
  %348 = load i32, ptr %x, align 4
  %add451 = add nsw i32 %348, %conv450
  store i32 %add451, ptr %x, align 4
  %349 = load i8, ptr %c, align 1
  %conv452 = zext i8 %349 to i32
  %350 = load i32, ptr %y, align 4
  %sub453 = sub nsw i32 %350, %conv452
  store i32 %sub453, ptr %y, align 4
  %351 = load ptr, ptr %cp, align 8
  %352 = load ptr, ptr %p, align 8
  %incdec.ptr454 = getelementptr inbounds i8, ptr %352, i32 1
  store ptr %incdec.ptr454, ptr %p, align 8
  %353 = load i8, ptr %352, align 1
  %conv455 = zext i8 %353 to i32
  %idx.ext456 = sext i32 %conv455 to i64
  %idx.neg457 = sub i64 0, %idx.ext456
  %add.ptr458 = getelementptr inbounds i8, ptr %351, i64 %idx.neg457
  %354 = load i8, ptr %add.ptr458, align 1
  store i8 %354, ptr %c, align 1
  %355 = load i8, ptr %c, align 1
  %conv459 = zext i8 %355 to i32
  %mul460 = mul nsw i32 2, %conv459
  %356 = load i32, ptr %x, align 4
  %add461 = add nsw i32 %356, %mul460
  store i32 %add461, ptr %x, align 4
  %357 = load i8, ptr %c, align 1
  %conv462 = zext i8 %357 to i32
  %358 = load i32, ptr %y, align 4
  %sub463 = sub nsw i32 %358, %conv462
  store i32 %sub463, ptr %y, align 4
  %359 = load ptr, ptr %cp, align 8
  %360 = load ptr, ptr %p, align 8
  %361 = load i8, ptr %360, align 1
  %conv464 = zext i8 %361 to i32
  %idx.ext465 = sext i32 %conv464 to i64
  %idx.neg466 = sub i64 0, %idx.ext465
  %add.ptr467 = getelementptr inbounds i8, ptr %359, i64 %idx.neg466
  %362 = load i8, ptr %add.ptr467, align 1
  store i8 %362, ptr %c, align 1
  %363 = load i8, ptr %c, align 1
  %conv468 = zext i8 %363 to i32
  %mul469 = mul nsw i32 3, %conv468
  %364 = load i32, ptr %x, align 4
  %add470 = add nsw i32 %364, %mul469
  store i32 %add470, ptr %x, align 4
  %365 = load i8, ptr %c, align 1
  %conv471 = zext i8 %365 to i32
  %366 = load i32, ptr %y, align 4
  %sub472 = sub nsw i32 %366, %conv471
  store i32 %sub472, ptr %y, align 4
  %367 = load i32, ptr %x_size.addr, align 4
  %sub473 = sub nsw i32 %367, 6
  %368 = load ptr, ptr %p, align 8
  %idx.ext474 = sext i32 %sub473 to i64
  %add.ptr475 = getelementptr inbounds i8, ptr %368, i64 %idx.ext474
  store ptr %add.ptr475, ptr %p, align 8
  %369 = load ptr, ptr %cp, align 8
  %370 = load ptr, ptr %p, align 8
  %incdec.ptr476 = getelementptr inbounds i8, ptr %370, i32 1
  store ptr %incdec.ptr476, ptr %p, align 8
  %371 = load i8, ptr %370, align 1
  %conv477 = zext i8 %371 to i32
  %idx.ext478 = sext i32 %conv477 to i64
  %idx.neg479 = sub i64 0, %idx.ext478
  %add.ptr480 = getelementptr inbounds i8, ptr %369, i64 %idx.neg479
  %372 = load i8, ptr %add.ptr480, align 1
  store i8 %372, ptr %c, align 1
  %373 = load i8, ptr %c, align 1
  %conv481 = zext i8 %373 to i32
  %mul482 = mul nsw i32 3, %conv481
  %374 = load i32, ptr %x, align 4
  %sub483 = sub nsw i32 %374, %mul482
  store i32 %sub483, ptr %x, align 4
  %375 = load ptr, ptr %cp, align 8
  %376 = load ptr, ptr %p, align 8
  %incdec.ptr484 = getelementptr inbounds i8, ptr %376, i32 1
  store ptr %incdec.ptr484, ptr %p, align 8
  %377 = load i8, ptr %376, align 1
  %conv485 = zext i8 %377 to i32
  %idx.ext486 = sext i32 %conv485 to i64
  %idx.neg487 = sub i64 0, %idx.ext486
  %add.ptr488 = getelementptr inbounds i8, ptr %375, i64 %idx.neg487
  %378 = load i8, ptr %add.ptr488, align 1
  store i8 %378, ptr %c, align 1
  %379 = load i8, ptr %c, align 1
  %conv489 = zext i8 %379 to i32
  %mul490 = mul nsw i32 2, %conv489
  %380 = load i32, ptr %x, align 4
  %sub491 = sub nsw i32 %380, %mul490
  store i32 %sub491, ptr %x, align 4
  %381 = load ptr, ptr %cp, align 8
  %382 = load ptr, ptr %p, align 8
  %383 = load i8, ptr %382, align 1
  %conv492 = zext i8 %383 to i32
  %idx.ext493 = sext i32 %conv492 to i64
  %idx.neg494 = sub i64 0, %idx.ext493
  %add.ptr495 = getelementptr inbounds i8, ptr %381, i64 %idx.neg494
  %384 = load i8, ptr %add.ptr495, align 1
  store i8 %384, ptr %c, align 1
  %385 = load i8, ptr %c, align 1
  %conv496 = zext i8 %385 to i32
  %386 = load i32, ptr %x, align 4
  %sub497 = sub nsw i32 %386, %conv496
  store i32 %sub497, ptr %x, align 4
  %387 = load ptr, ptr %p, align 8
  %add.ptr498 = getelementptr inbounds i8, ptr %387, i64 2
  store ptr %add.ptr498, ptr %p, align 8
  %388 = load ptr, ptr %cp, align 8
  %389 = load ptr, ptr %p, align 8
  %incdec.ptr499 = getelementptr inbounds i8, ptr %389, i32 1
  store ptr %incdec.ptr499, ptr %p, align 8
  %390 = load i8, ptr %389, align 1
  %conv500 = zext i8 %390 to i32
  %idx.ext501 = sext i32 %conv500 to i64
  %idx.neg502 = sub i64 0, %idx.ext501
  %add.ptr503 = getelementptr inbounds i8, ptr %388, i64 %idx.neg502
  %391 = load i8, ptr %add.ptr503, align 1
  store i8 %391, ptr %c, align 1
  %392 = load i8, ptr %c, align 1
  %conv504 = zext i8 %392 to i32
  %393 = load i32, ptr %x, align 4
  %add505 = add nsw i32 %393, %conv504
  store i32 %add505, ptr %x, align 4
  %394 = load ptr, ptr %cp, align 8
  %395 = load ptr, ptr %p, align 8
  %incdec.ptr506 = getelementptr inbounds i8, ptr %395, i32 1
  store ptr %incdec.ptr506, ptr %p, align 8
  %396 = load i8, ptr %395, align 1
  %conv507 = zext i8 %396 to i32
  %idx.ext508 = sext i32 %conv507 to i64
  %idx.neg509 = sub i64 0, %idx.ext508
  %add.ptr510 = getelementptr inbounds i8, ptr %394, i64 %idx.neg509
  %397 = load i8, ptr %add.ptr510, align 1
  store i8 %397, ptr %c, align 1
  %398 = load i8, ptr %c, align 1
  %conv511 = zext i8 %398 to i32
  %mul512 = mul nsw i32 2, %conv511
  %399 = load i32, ptr %x, align 4
  %add513 = add nsw i32 %399, %mul512
  store i32 %add513, ptr %x, align 4
  %400 = load ptr, ptr %cp, align 8
  %401 = load ptr, ptr %p, align 8
  %402 = load i8, ptr %401, align 1
  %conv514 = zext i8 %402 to i32
  %idx.ext515 = sext i32 %conv514 to i64
  %idx.neg516 = sub i64 0, %idx.ext515
  %add.ptr517 = getelementptr inbounds i8, ptr %400, i64 %idx.neg516
  %403 = load i8, ptr %add.ptr517, align 1
  store i8 %403, ptr %c, align 1
  %404 = load i8, ptr %c, align 1
  %conv518 = zext i8 %404 to i32
  %mul519 = mul nsw i32 3, %conv518
  %405 = load i32, ptr %x, align 4
  %add520 = add nsw i32 %405, %mul519
  store i32 %add520, ptr %x, align 4
  %406 = load i32, ptr %x_size.addr, align 4
  %sub521 = sub nsw i32 %406, 6
  %407 = load ptr, ptr %p, align 8
  %idx.ext522 = sext i32 %sub521 to i64
  %add.ptr523 = getelementptr inbounds i8, ptr %407, i64 %idx.ext522
  store ptr %add.ptr523, ptr %p, align 8
  %408 = load ptr, ptr %cp, align 8
  %409 = load ptr, ptr %p, align 8
  %incdec.ptr524 = getelementptr inbounds i8, ptr %409, i32 1
  store ptr %incdec.ptr524, ptr %p, align 8
  %410 = load i8, ptr %409, align 1
  %conv525 = zext i8 %410 to i32
  %idx.ext526 = sext i32 %conv525 to i64
  %idx.neg527 = sub i64 0, %idx.ext526
  %add.ptr528 = getelementptr inbounds i8, ptr %408, i64 %idx.neg527
  %411 = load i8, ptr %add.ptr528, align 1
  store i8 %411, ptr %c, align 1
  %412 = load i8, ptr %c, align 1
  %conv529 = zext i8 %412 to i32
  %mul530 = mul nsw i32 3, %conv529
  %413 = load i32, ptr %x, align 4
  %sub531 = sub nsw i32 %413, %mul530
  store i32 %sub531, ptr %x, align 4
  %414 = load i8, ptr %c, align 1
  %conv532 = zext i8 %414 to i32
  %415 = load i32, ptr %y, align 4
  %add533 = add nsw i32 %415, %conv532
  store i32 %add533, ptr %y, align 4
  %416 = load ptr, ptr %cp, align 8
  %417 = load ptr, ptr %p, align 8
  %incdec.ptr534 = getelementptr inbounds i8, ptr %417, i32 1
  store ptr %incdec.ptr534, ptr %p, align 8
  %418 = load i8, ptr %417, align 1
  %conv535 = zext i8 %418 to i32
  %idx.ext536 = sext i32 %conv535 to i64
  %idx.neg537 = sub i64 0, %idx.ext536
  %add.ptr538 = getelementptr inbounds i8, ptr %416, i64 %idx.neg537
  %419 = load i8, ptr %add.ptr538, align 1
  store i8 %419, ptr %c, align 1
  %420 = load i8, ptr %c, align 1
  %conv539 = zext i8 %420 to i32
  %mul540 = mul nsw i32 2, %conv539
  %421 = load i32, ptr %x, align 4
  %sub541 = sub nsw i32 %421, %mul540
  store i32 %sub541, ptr %x, align 4
  %422 = load i8, ptr %c, align 1
  %conv542 = zext i8 %422 to i32
  %423 = load i32, ptr %y, align 4
  %add543 = add nsw i32 %423, %conv542
  store i32 %add543, ptr %y, align 4
  %424 = load ptr, ptr %cp, align 8
  %425 = load ptr, ptr %p, align 8
  %incdec.ptr544 = getelementptr inbounds i8, ptr %425, i32 1
  store ptr %incdec.ptr544, ptr %p, align 8
  %426 = load i8, ptr %425, align 1
  %conv545 = zext i8 %426 to i32
  %idx.ext546 = sext i32 %conv545 to i64
  %idx.neg547 = sub i64 0, %idx.ext546
  %add.ptr548 = getelementptr inbounds i8, ptr %424, i64 %idx.neg547
  %427 = load i8, ptr %add.ptr548, align 1
  store i8 %427, ptr %c, align 1
  %428 = load i8, ptr %c, align 1
  %conv549 = zext i8 %428 to i32
  %429 = load i32, ptr %x, align 4
  %sub550 = sub nsw i32 %429, %conv549
  store i32 %sub550, ptr %x, align 4
  %430 = load i8, ptr %c, align 1
  %conv551 = zext i8 %430 to i32
  %431 = load i32, ptr %y, align 4
  %add552 = add nsw i32 %431, %conv551
  store i32 %add552, ptr %y, align 4
  %432 = load ptr, ptr %cp, align 8
  %433 = load ptr, ptr %p, align 8
  %incdec.ptr553 = getelementptr inbounds i8, ptr %433, i32 1
  store ptr %incdec.ptr553, ptr %p, align 8
  %434 = load i8, ptr %433, align 1
  %conv554 = zext i8 %434 to i32
  %idx.ext555 = sext i32 %conv554 to i64
  %idx.neg556 = sub i64 0, %idx.ext555
  %add.ptr557 = getelementptr inbounds i8, ptr %432, i64 %idx.neg556
  %435 = load i8, ptr %add.ptr557, align 1
  store i8 %435, ptr %c, align 1
  %436 = load i8, ptr %c, align 1
  %conv558 = zext i8 %436 to i32
  %437 = load i32, ptr %y, align 4
  %add559 = add nsw i32 %437, %conv558
  store i32 %add559, ptr %y, align 4
  %438 = load ptr, ptr %cp, align 8
  %439 = load ptr, ptr %p, align 8
  %incdec.ptr560 = getelementptr inbounds i8, ptr %439, i32 1
  store ptr %incdec.ptr560, ptr %p, align 8
  %440 = load i8, ptr %439, align 1
  %conv561 = zext i8 %440 to i32
  %idx.ext562 = sext i32 %conv561 to i64
  %idx.neg563 = sub i64 0, %idx.ext562
  %add.ptr564 = getelementptr inbounds i8, ptr %438, i64 %idx.neg563
  %441 = load i8, ptr %add.ptr564, align 1
  store i8 %441, ptr %c, align 1
  %442 = load i8, ptr %c, align 1
  %conv565 = zext i8 %442 to i32
  %443 = load i32, ptr %x, align 4
  %add566 = add nsw i32 %443, %conv565
  store i32 %add566, ptr %x, align 4
  %444 = load i8, ptr %c, align 1
  %conv567 = zext i8 %444 to i32
  %445 = load i32, ptr %y, align 4
  %add568 = add nsw i32 %445, %conv567
  store i32 %add568, ptr %y, align 4
  %446 = load ptr, ptr %cp, align 8
  %447 = load ptr, ptr %p, align 8
  %incdec.ptr569 = getelementptr inbounds i8, ptr %447, i32 1
  store ptr %incdec.ptr569, ptr %p, align 8
  %448 = load i8, ptr %447, align 1
  %conv570 = zext i8 %448 to i32
  %idx.ext571 = sext i32 %conv570 to i64
  %idx.neg572 = sub i64 0, %idx.ext571
  %add.ptr573 = getelementptr inbounds i8, ptr %446, i64 %idx.neg572
  %449 = load i8, ptr %add.ptr573, align 1
  store i8 %449, ptr %c, align 1
  %450 = load i8, ptr %c, align 1
  %conv574 = zext i8 %450 to i32
  %mul575 = mul nsw i32 2, %conv574
  %451 = load i32, ptr %x, align 4
  %add576 = add nsw i32 %451, %mul575
  store i32 %add576, ptr %x, align 4
  %452 = load i8, ptr %c, align 1
  %conv577 = zext i8 %452 to i32
  %453 = load i32, ptr %y, align 4
  %add578 = add nsw i32 %453, %conv577
  store i32 %add578, ptr %y, align 4
  %454 = load ptr, ptr %cp, align 8
  %455 = load ptr, ptr %p, align 8
  %456 = load i8, ptr %455, align 1
  %conv579 = zext i8 %456 to i32
  %idx.ext580 = sext i32 %conv579 to i64
  %idx.neg581 = sub i64 0, %idx.ext580
  %add.ptr582 = getelementptr inbounds i8, ptr %454, i64 %idx.neg581
  %457 = load i8, ptr %add.ptr582, align 1
  store i8 %457, ptr %c, align 1
  %458 = load i8, ptr %c, align 1
  %conv583 = zext i8 %458 to i32
  %mul584 = mul nsw i32 3, %conv583
  %459 = load i32, ptr %x, align 4
  %add585 = add nsw i32 %459, %mul584
  store i32 %add585, ptr %x, align 4
  %460 = load i8, ptr %c, align 1
  %conv586 = zext i8 %460 to i32
  %461 = load i32, ptr %y, align 4
  %add587 = add nsw i32 %461, %conv586
  store i32 %add587, ptr %y, align 4
  %462 = load i32, ptr %x_size.addr, align 4
  %sub588 = sub nsw i32 %462, 5
  %463 = load ptr, ptr %p, align 8
  %idx.ext589 = sext i32 %sub588 to i64
  %add.ptr590 = getelementptr inbounds i8, ptr %463, i64 %idx.ext589
  store ptr %add.ptr590, ptr %p, align 8
  %464 = load ptr, ptr %cp, align 8
  %465 = load ptr, ptr %p, align 8
  %incdec.ptr591 = getelementptr inbounds i8, ptr %465, i32 1
  store ptr %incdec.ptr591, ptr %p, align 8
  %466 = load i8, ptr %465, align 1
  %conv592 = zext i8 %466 to i32
  %idx.ext593 = sext i32 %conv592 to i64
  %idx.neg594 = sub i64 0, %idx.ext593
  %add.ptr595 = getelementptr inbounds i8, ptr %464, i64 %idx.neg594
  %467 = load i8, ptr %add.ptr595, align 1
  store i8 %467, ptr %c, align 1
  %468 = load i8, ptr %c, align 1
  %conv596 = zext i8 %468 to i32
  %mul597 = mul nsw i32 2, %conv596
  %469 = load i32, ptr %x, align 4
  %sub598 = sub nsw i32 %469, %mul597
  store i32 %sub598, ptr %x, align 4
  %470 = load i8, ptr %c, align 1
  %conv599 = zext i8 %470 to i32
  %mul600 = mul nsw i32 2, %conv599
  %471 = load i32, ptr %y, align 4
  %add601 = add nsw i32 %471, %mul600
  store i32 %add601, ptr %y, align 4
  %472 = load ptr, ptr %cp, align 8
  %473 = load ptr, ptr %p, align 8
  %incdec.ptr602 = getelementptr inbounds i8, ptr %473, i32 1
  store ptr %incdec.ptr602, ptr %p, align 8
  %474 = load i8, ptr %473, align 1
  %conv603 = zext i8 %474 to i32
  %idx.ext604 = sext i32 %conv603 to i64
  %idx.neg605 = sub i64 0, %idx.ext604
  %add.ptr606 = getelementptr inbounds i8, ptr %472, i64 %idx.neg605
  %475 = load i8, ptr %add.ptr606, align 1
  store i8 %475, ptr %c, align 1
  %476 = load i8, ptr %c, align 1
  %conv607 = zext i8 %476 to i32
  %477 = load i32, ptr %x, align 4
  %sub608 = sub nsw i32 %477, %conv607
  store i32 %sub608, ptr %x, align 4
  %478 = load i8, ptr %c, align 1
  %conv609 = zext i8 %478 to i32
  %mul610 = mul nsw i32 2, %conv609
  %479 = load i32, ptr %y, align 4
  %add611 = add nsw i32 %479, %mul610
  store i32 %add611, ptr %y, align 4
  %480 = load ptr, ptr %cp, align 8
  %481 = load ptr, ptr %p, align 8
  %incdec.ptr612 = getelementptr inbounds i8, ptr %481, i32 1
  store ptr %incdec.ptr612, ptr %p, align 8
  %482 = load i8, ptr %481, align 1
  %conv613 = zext i8 %482 to i32
  %idx.ext614 = sext i32 %conv613 to i64
  %idx.neg615 = sub i64 0, %idx.ext614
  %add.ptr616 = getelementptr inbounds i8, ptr %480, i64 %idx.neg615
  %483 = load i8, ptr %add.ptr616, align 1
  store i8 %483, ptr %c, align 1
  %484 = load i8, ptr %c, align 1
  %conv617 = zext i8 %484 to i32
  %mul618 = mul nsw i32 2, %conv617
  %485 = load i32, ptr %y, align 4
  %add619 = add nsw i32 %485, %mul618
  store i32 %add619, ptr %y, align 4
  %486 = load ptr, ptr %cp, align 8
  %487 = load ptr, ptr %p, align 8
  %incdec.ptr620 = getelementptr inbounds i8, ptr %487, i32 1
  store ptr %incdec.ptr620, ptr %p, align 8
  %488 = load i8, ptr %487, align 1
  %conv621 = zext i8 %488 to i32
  %idx.ext622 = sext i32 %conv621 to i64
  %idx.neg623 = sub i64 0, %idx.ext622
  %add.ptr624 = getelementptr inbounds i8, ptr %486, i64 %idx.neg623
  %489 = load i8, ptr %add.ptr624, align 1
  store i8 %489, ptr %c, align 1
  %490 = load i8, ptr %c, align 1
  %conv625 = zext i8 %490 to i32
  %491 = load i32, ptr %x, align 4
  %add626 = add nsw i32 %491, %conv625
  store i32 %add626, ptr %x, align 4
  %492 = load i8, ptr %c, align 1
  %conv627 = zext i8 %492 to i32
  %mul628 = mul nsw i32 2, %conv627
  %493 = load i32, ptr %y, align 4
  %add629 = add nsw i32 %493, %mul628
  store i32 %add629, ptr %y, align 4
  %494 = load ptr, ptr %cp, align 8
  %495 = load ptr, ptr %p, align 8
  %496 = load i8, ptr %495, align 1
  %conv630 = zext i8 %496 to i32
  %idx.ext631 = sext i32 %conv630 to i64
  %idx.neg632 = sub i64 0, %idx.ext631
  %add.ptr633 = getelementptr inbounds i8, ptr %494, i64 %idx.neg632
  %497 = load i8, ptr %add.ptr633, align 1
  store i8 %497, ptr %c, align 1
  %498 = load i8, ptr %c, align 1
  %conv634 = zext i8 %498 to i32
  %mul635 = mul nsw i32 2, %conv634
  %499 = load i32, ptr %x, align 4
  %add636 = add nsw i32 %499, %mul635
  store i32 %add636, ptr %x, align 4
  %500 = load i8, ptr %c, align 1
  %conv637 = zext i8 %500 to i32
  %mul638 = mul nsw i32 2, %conv637
  %501 = load i32, ptr %y, align 4
  %add639 = add nsw i32 %501, %mul638
  store i32 %add639, ptr %y, align 4
  %502 = load i32, ptr %x_size.addr, align 4
  %sub640 = sub nsw i32 %502, 3
  %503 = load ptr, ptr %p, align 8
  %idx.ext641 = sext i32 %sub640 to i64
  %add.ptr642 = getelementptr inbounds i8, ptr %503, i64 %idx.ext641
  store ptr %add.ptr642, ptr %p, align 8
  %504 = load ptr, ptr %cp, align 8
  %505 = load ptr, ptr %p, align 8
  %incdec.ptr643 = getelementptr inbounds i8, ptr %505, i32 1
  store ptr %incdec.ptr643, ptr %p, align 8
  %506 = load i8, ptr %505, align 1
  %conv644 = zext i8 %506 to i32
  %idx.ext645 = sext i32 %conv644 to i64
  %idx.neg646 = sub i64 0, %idx.ext645
  %add.ptr647 = getelementptr inbounds i8, ptr %504, i64 %idx.neg646
  %507 = load i8, ptr %add.ptr647, align 1
  store i8 %507, ptr %c, align 1
  %508 = load i8, ptr %c, align 1
  %conv648 = zext i8 %508 to i32
  %509 = load i32, ptr %x, align 4
  %sub649 = sub nsw i32 %509, %conv648
  store i32 %sub649, ptr %x, align 4
  %510 = load i8, ptr %c, align 1
  %conv650 = zext i8 %510 to i32
  %mul651 = mul nsw i32 3, %conv650
  %511 = load i32, ptr %y, align 4
  %add652 = add nsw i32 %511, %mul651
  store i32 %add652, ptr %y, align 4
  %512 = load ptr, ptr %cp, align 8
  %513 = load ptr, ptr %p, align 8
  %incdec.ptr653 = getelementptr inbounds i8, ptr %513, i32 1
  store ptr %incdec.ptr653, ptr %p, align 8
  %514 = load i8, ptr %513, align 1
  %conv654 = zext i8 %514 to i32
  %idx.ext655 = sext i32 %conv654 to i64
  %idx.neg656 = sub i64 0, %idx.ext655
  %add.ptr657 = getelementptr inbounds i8, ptr %512, i64 %idx.neg656
  %515 = load i8, ptr %add.ptr657, align 1
  store i8 %515, ptr %c, align 1
  %516 = load i8, ptr %c, align 1
  %conv658 = zext i8 %516 to i32
  %mul659 = mul nsw i32 3, %conv658
  %517 = load i32, ptr %y, align 4
  %add660 = add nsw i32 %517, %mul659
  store i32 %add660, ptr %y, align 4
  %518 = load ptr, ptr %cp, align 8
  %519 = load ptr, ptr %p, align 8
  %520 = load i8, ptr %519, align 1
  %conv661 = zext i8 %520 to i32
  %idx.ext662 = sext i32 %conv661 to i64
  %idx.neg663 = sub i64 0, %idx.ext662
  %add.ptr664 = getelementptr inbounds i8, ptr %518, i64 %idx.neg663
  %521 = load i8, ptr %add.ptr664, align 1
  store i8 %521, ptr %c, align 1
  %522 = load i8, ptr %c, align 1
  %conv665 = zext i8 %522 to i32
  %523 = load i32, ptr %x, align 4
  %add666 = add nsw i32 %523, %conv665
  store i32 %add666, ptr %x, align 4
  %524 = load i8, ptr %c, align 1
  %conv667 = zext i8 %524 to i32
  %mul668 = mul nsw i32 3, %conv667
  %525 = load i32, ptr %y, align 4
  %add669 = add nsw i32 %525, %mul668
  store i32 %add669, ptr %y, align 4
  %526 = load i32, ptr %x, align 4
  %527 = load i32, ptr %x, align 4
  %mul670 = mul nsw i32 %526, %527
  %528 = load i32, ptr %y, align 4
  %529 = load i32, ptr %y, align 4
  %mul671 = mul nsw i32 %528, %529
  %add672 = add nsw i32 %mul670, %mul671
  %conv673 = sitofp i32 %add672 to float
  %conv674 = fpext float %conv673 to double
  %530 = call double @llvm.sqrt.f64(double %conv674)
  %conv675 = fptrunc double %530 to float
  store float %conv675, ptr %z, align 4
  %531 = load float, ptr %z, align 4
  %conv676 = fpext float %531 to double
  %532 = load i32, ptr %n, align 4
  %conv677 = sitofp i32 %532 to float
  %conv678 = fpext float %conv677 to double
  %mul679 = fmul double 9.000000e-01, %conv678
  %cmp680 = fcmp ogt double %conv676, %mul679
  br i1 %cmp680, label %if.then682, label %if.else755

if.then682:                                       ; preds = %if.then319
  store i32 0, ptr %do_symmetry, align 4
  %533 = load i32, ptr %x, align 4
  %cmp683 = icmp eq i32 %533, 0
  br i1 %cmp683, label %if.then685, label %if.else

if.then685:                                       ; preds = %if.then682
  store float 1.000000e+06, ptr %z, align 4
  br label %if.end688

if.else:                                          ; preds = %if.then682
  %534 = load i32, ptr %y, align 4
  %conv686 = sitofp i32 %534 to float
  %535 = load i32, ptr %x, align 4
  %conv687 = sitofp i32 %535 to float
  %div = fdiv float %conv686, %conv687
  store float %div, ptr %z, align 4
  br label %if.end688

if.end688:                                        ; preds = %if.else, %if.then685
  %536 = load float, ptr %z, align 4
  %cmp689 = fcmp olt float %536, 0.000000e+00
  br i1 %cmp689, label %if.then691, label %if.else692

if.then691:                                       ; preds = %if.end688
  %537 = load float, ptr %z, align 4
  %fneg = fneg float %537
  store float %fneg, ptr %z, align 4
  store i32 -1, ptr %w, align 4
  br label %if.end693

if.else692:                                       ; preds = %if.end688
  store i32 1, ptr %w, align 4
  br label %if.end693

if.end693:                                        ; preds = %if.else692, %if.then691
  %538 = load float, ptr %z, align 4
  %conv694 = fpext float %538 to double
  %cmp695 = fcmp olt double %conv694, 5.000000e-01
  br i1 %cmp695, label %if.then697, label %if.else698

if.then697:                                       ; preds = %if.end693
  store i32 0, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end710

if.else698:                                       ; preds = %if.end693
  %539 = load float, ptr %z, align 4
  %conv699 = fpext float %539 to double
  %cmp700 = fcmp ogt double %conv699, 2.000000e+00
  br i1 %cmp700, label %if.then702, label %if.else703

if.then702:                                       ; preds = %if.else698
  store i32 1, ptr %a, align 4
  store i32 0, ptr %b, align 4
  br label %if.end709

if.else703:                                       ; preds = %if.else698
  %540 = load i32, ptr %w, align 4
  %cmp704 = icmp sgt i32 %540, 0
  br i1 %cmp704, label %if.then706, label %if.else707

if.then706:                                       ; preds = %if.else703
  store i32 1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end708

if.else707:                                       ; preds = %if.else703
  store i32 -1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end708

if.end708:                                        ; preds = %if.else707, %if.then706
  br label %if.end709

if.end709:                                        ; preds = %if.end708, %if.then702
  br label %if.end710

if.end710:                                        ; preds = %if.end709, %if.then697
  %541 = load i32, ptr %m, align 4
  %542 = load ptr, ptr %r.addr, align 8
  %543 = load i32, ptr %i, align 4
  %544 = load i32, ptr %a, align 4
  %add711 = add nsw i32 %543, %544
  %545 = load i32, ptr %x_size.addr, align 4
  %mul712 = mul nsw i32 %add711, %545
  %546 = load i32, ptr %j, align 4
  %add713 = add nsw i32 %mul712, %546
  %547 = load i32, ptr %b, align 4
  %add714 = add nsw i32 %add713, %547
  %idxprom715 = sext i32 %add714 to i64
  %arrayidx716 = getelementptr inbounds i32, ptr %542, i64 %idxprom715
  %548 = load i32, ptr %arrayidx716, align 4
  %cmp717 = icmp sgt i32 %541, %548
  br i1 %cmp717, label %land.lhs.true, label %if.end754

land.lhs.true:                                    ; preds = %if.end710
  %549 = load i32, ptr %m, align 4
  %550 = load ptr, ptr %r.addr, align 8
  %551 = load i32, ptr %i, align 4
  %552 = load i32, ptr %a, align 4
  %sub719 = sub nsw i32 %551, %552
  %553 = load i32, ptr %x_size.addr, align 4
  %mul720 = mul nsw i32 %sub719, %553
  %554 = load i32, ptr %j, align 4
  %add721 = add nsw i32 %mul720, %554
  %555 = load i32, ptr %b, align 4
  %sub722 = sub nsw i32 %add721, %555
  %idxprom723 = sext i32 %sub722 to i64
  %arrayidx724 = getelementptr inbounds i32, ptr %550, i64 %idxprom723
  %556 = load i32, ptr %arrayidx724, align 4
  %cmp725 = icmp sge i32 %549, %556
  br i1 %cmp725, label %land.lhs.true727, label %if.end754

land.lhs.true727:                                 ; preds = %land.lhs.true
  %557 = load i32, ptr %m, align 4
  %558 = load ptr, ptr %r.addr, align 8
  %559 = load i32, ptr %i, align 4
  %560 = load i32, ptr %a, align 4
  %mul728 = mul nsw i32 2, %560
  %add729 = add nsw i32 %559, %mul728
  %561 = load i32, ptr %x_size.addr, align 4
  %mul730 = mul nsw i32 %add729, %561
  %562 = load i32, ptr %j, align 4
  %add731 = add nsw i32 %mul730, %562
  %563 = load i32, ptr %b, align 4
  %mul732 = mul nsw i32 2, %563
  %add733 = add nsw i32 %add731, %mul732
  %idxprom734 = sext i32 %add733 to i64
  %arrayidx735 = getelementptr inbounds i32, ptr %558, i64 %idxprom734
  %564 = load i32, ptr %arrayidx735, align 4
  %cmp736 = icmp sgt i32 %557, %564
  br i1 %cmp736, label %land.lhs.true738, label %if.end754

land.lhs.true738:                                 ; preds = %land.lhs.true727
  %565 = load i32, ptr %m, align 4
  %566 = load ptr, ptr %r.addr, align 8
  %567 = load i32, ptr %i, align 4
  %568 = load i32, ptr %a, align 4
  %mul739 = mul nsw i32 2, %568
  %sub740 = sub nsw i32 %567, %mul739
  %569 = load i32, ptr %x_size.addr, align 4
  %mul741 = mul nsw i32 %sub740, %569
  %570 = load i32, ptr %j, align 4
  %add742 = add nsw i32 %mul741, %570
  %571 = load i32, ptr %b, align 4
  %mul743 = mul nsw i32 2, %571
  %sub744 = sub nsw i32 %add742, %mul743
  %idxprom745 = sext i32 %sub744 to i64
  %arrayidx746 = getelementptr inbounds i32, ptr %566, i64 %idxprom745
  %572 = load i32, ptr %arrayidx746, align 4
  %cmp747 = icmp sge i32 %565, %572
  br i1 %cmp747, label %if.then749, label %if.end754

if.then749:                                       ; preds = %land.lhs.true738
  %573 = load ptr, ptr %mid.addr, align 8
  %574 = load i32, ptr %i, align 4
  %575 = load i32, ptr %x_size.addr, align 4
  %mul750 = mul nsw i32 %574, %575
  %576 = load i32, ptr %j, align 4
  %add751 = add nsw i32 %mul750, %576
  %idxprom752 = sext i32 %add751 to i64
  %arrayidx753 = getelementptr inbounds i8, ptr %573, i64 %idxprom752
  store i8 1, ptr %arrayidx753, align 1
  br label %if.end754

if.end754:                                        ; preds = %if.then749, %land.lhs.true738, %land.lhs.true727, %land.lhs.true, %if.end710
  br label %if.end756

if.else755:                                       ; preds = %if.then319
  store i32 1, ptr %do_symmetry, align 4
  br label %if.end756

if.end756:                                        ; preds = %if.else755, %if.end754
  br label %if.end758

if.else757:                                       ; preds = %if.then304
  store i32 1, ptr %do_symmetry, align 4
  br label %if.end758

if.end758:                                        ; preds = %if.else757, %if.end756
  %577 = load i32, ptr %do_symmetry, align 4
  %cmp759 = icmp eq i32 %577, 1
  br i1 %cmp759, label %if.then761, label %if.end1250

if.then761:                                       ; preds = %if.end758
  %578 = load ptr, ptr %in.addr, align 8
  %579 = load i32, ptr %i, align 4
  %sub762 = sub nsw i32 %579, 3
  %580 = load i32, ptr %x_size.addr, align 4
  %mul763 = mul nsw i32 %sub762, %580
  %idx.ext764 = sext i32 %mul763 to i64
  %add.ptr765 = getelementptr inbounds i8, ptr %578, i64 %idx.ext764
  %581 = load i32, ptr %j, align 4
  %idx.ext766 = sext i32 %581 to i64
  %add.ptr767 = getelementptr inbounds i8, ptr %add.ptr765, i64 %idx.ext766
  %add.ptr768 = getelementptr inbounds i8, ptr %add.ptr767, i64 -1
  store ptr %add.ptr768, ptr %p, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  store i32 0, ptr %w, align 4
  %582 = load ptr, ptr %cp, align 8
  %583 = load ptr, ptr %p, align 8
  %incdec.ptr769 = getelementptr inbounds i8, ptr %583, i32 1
  store ptr %incdec.ptr769, ptr %p, align 8
  %584 = load i8, ptr %583, align 1
  %conv770 = zext i8 %584 to i32
  %idx.ext771 = sext i32 %conv770 to i64
  %idx.neg772 = sub i64 0, %idx.ext771
  %add.ptr773 = getelementptr inbounds i8, ptr %582, i64 %idx.neg772
  %585 = load i8, ptr %add.ptr773, align 1
  store i8 %585, ptr %c, align 1
  %586 = load i8, ptr %c, align 1
  %conv774 = zext i8 %586 to i32
  %587 = load i32, ptr %x, align 4
  %add775 = add nsw i32 %587, %conv774
  store i32 %add775, ptr %x, align 4
  %588 = load i8, ptr %c, align 1
  %conv776 = zext i8 %588 to i32
  %mul777 = mul nsw i32 9, %conv776
  %589 = load i32, ptr %y, align 4
  %add778 = add nsw i32 %589, %mul777
  store i32 %add778, ptr %y, align 4
  %590 = load i8, ptr %c, align 1
  %conv779 = zext i8 %590 to i32
  %mul780 = mul nsw i32 3, %conv779
  %591 = load i32, ptr %w, align 4
  %add781 = add nsw i32 %591, %mul780
  store i32 %add781, ptr %w, align 4
  %592 = load ptr, ptr %cp, align 8
  %593 = load ptr, ptr %p, align 8
  %incdec.ptr782 = getelementptr inbounds i8, ptr %593, i32 1
  store ptr %incdec.ptr782, ptr %p, align 8
  %594 = load i8, ptr %593, align 1
  %conv783 = zext i8 %594 to i32
  %idx.ext784 = sext i32 %conv783 to i64
  %idx.neg785 = sub i64 0, %idx.ext784
  %add.ptr786 = getelementptr inbounds i8, ptr %592, i64 %idx.neg785
  %595 = load i8, ptr %add.ptr786, align 1
  store i8 %595, ptr %c, align 1
  %596 = load i8, ptr %c, align 1
  %conv787 = zext i8 %596 to i32
  %mul788 = mul nsw i32 9, %conv787
  %597 = load i32, ptr %y, align 4
  %add789 = add nsw i32 %597, %mul788
  store i32 %add789, ptr %y, align 4
  %598 = load ptr, ptr %cp, align 8
  %599 = load ptr, ptr %p, align 8
  %600 = load i8, ptr %599, align 1
  %conv790 = zext i8 %600 to i32
  %idx.ext791 = sext i32 %conv790 to i64
  %idx.neg792 = sub i64 0, %idx.ext791
  %add.ptr793 = getelementptr inbounds i8, ptr %598, i64 %idx.neg792
  %601 = load i8, ptr %add.ptr793, align 1
  store i8 %601, ptr %c, align 1
  %602 = load i8, ptr %c, align 1
  %conv794 = zext i8 %602 to i32
  %603 = load i32, ptr %x, align 4
  %add795 = add nsw i32 %603, %conv794
  store i32 %add795, ptr %x, align 4
  %604 = load i8, ptr %c, align 1
  %conv796 = zext i8 %604 to i32
  %mul797 = mul nsw i32 9, %conv796
  %605 = load i32, ptr %y, align 4
  %add798 = add nsw i32 %605, %mul797
  store i32 %add798, ptr %y, align 4
  %606 = load i8, ptr %c, align 1
  %conv799 = zext i8 %606 to i32
  %mul800 = mul nsw i32 3, %conv799
  %607 = load i32, ptr %w, align 4
  %sub801 = sub nsw i32 %607, %mul800
  store i32 %sub801, ptr %w, align 4
  %608 = load i32, ptr %x_size.addr, align 4
  %sub802 = sub nsw i32 %608, 3
  %609 = load ptr, ptr %p, align 8
  %idx.ext803 = sext i32 %sub802 to i64
  %add.ptr804 = getelementptr inbounds i8, ptr %609, i64 %idx.ext803
  store ptr %add.ptr804, ptr %p, align 8
  %610 = load ptr, ptr %cp, align 8
  %611 = load ptr, ptr %p, align 8
  %incdec.ptr805 = getelementptr inbounds i8, ptr %611, i32 1
  store ptr %incdec.ptr805, ptr %p, align 8
  %612 = load i8, ptr %611, align 1
  %conv806 = zext i8 %612 to i32
  %idx.ext807 = sext i32 %conv806 to i64
  %idx.neg808 = sub i64 0, %idx.ext807
  %add.ptr809 = getelementptr inbounds i8, ptr %610, i64 %idx.neg808
  %613 = load i8, ptr %add.ptr809, align 1
  store i8 %613, ptr %c, align 1
  %614 = load i8, ptr %c, align 1
  %conv810 = zext i8 %614 to i32
  %mul811 = mul nsw i32 4, %conv810
  %615 = load i32, ptr %x, align 4
  %add812 = add nsw i32 %615, %mul811
  store i32 %add812, ptr %x, align 4
  %616 = load i8, ptr %c, align 1
  %conv813 = zext i8 %616 to i32
  %mul814 = mul nsw i32 4, %conv813
  %617 = load i32, ptr %y, align 4
  %add815 = add nsw i32 %617, %mul814
  store i32 %add815, ptr %y, align 4
  %618 = load i8, ptr %c, align 1
  %conv816 = zext i8 %618 to i32
  %mul817 = mul nsw i32 4, %conv816
  %619 = load i32, ptr %w, align 4
  %add818 = add nsw i32 %619, %mul817
  store i32 %add818, ptr %w, align 4
  %620 = load ptr, ptr %cp, align 8
  %621 = load ptr, ptr %p, align 8
  %incdec.ptr819 = getelementptr inbounds i8, ptr %621, i32 1
  store ptr %incdec.ptr819, ptr %p, align 8
  %622 = load i8, ptr %621, align 1
  %conv820 = zext i8 %622 to i32
  %idx.ext821 = sext i32 %conv820 to i64
  %idx.neg822 = sub i64 0, %idx.ext821
  %add.ptr823 = getelementptr inbounds i8, ptr %620, i64 %idx.neg822
  %623 = load i8, ptr %add.ptr823, align 1
  store i8 %623, ptr %c, align 1
  %624 = load i8, ptr %c, align 1
  %conv824 = zext i8 %624 to i32
  %625 = load i32, ptr %x, align 4
  %add825 = add nsw i32 %625, %conv824
  store i32 %add825, ptr %x, align 4
  %626 = load i8, ptr %c, align 1
  %conv826 = zext i8 %626 to i32
  %mul827 = mul nsw i32 4, %conv826
  %627 = load i32, ptr %y, align 4
  %add828 = add nsw i32 %627, %mul827
  store i32 %add828, ptr %y, align 4
  %628 = load i8, ptr %c, align 1
  %conv829 = zext i8 %628 to i32
  %mul830 = mul nsw i32 2, %conv829
  %629 = load i32, ptr %w, align 4
  %add831 = add nsw i32 %629, %mul830
  store i32 %add831, ptr %w, align 4
  %630 = load ptr, ptr %cp, align 8
  %631 = load ptr, ptr %p, align 8
  %incdec.ptr832 = getelementptr inbounds i8, ptr %631, i32 1
  store ptr %incdec.ptr832, ptr %p, align 8
  %632 = load i8, ptr %631, align 1
  %conv833 = zext i8 %632 to i32
  %idx.ext834 = sext i32 %conv833 to i64
  %idx.neg835 = sub i64 0, %idx.ext834
  %add.ptr836 = getelementptr inbounds i8, ptr %630, i64 %idx.neg835
  %633 = load i8, ptr %add.ptr836, align 1
  store i8 %633, ptr %c, align 1
  %634 = load i8, ptr %c, align 1
  %conv837 = zext i8 %634 to i32
  %mul838 = mul nsw i32 4, %conv837
  %635 = load i32, ptr %y, align 4
  %add839 = add nsw i32 %635, %mul838
  store i32 %add839, ptr %y, align 4
  %636 = load ptr, ptr %cp, align 8
  %637 = load ptr, ptr %p, align 8
  %incdec.ptr840 = getelementptr inbounds i8, ptr %637, i32 1
  store ptr %incdec.ptr840, ptr %p, align 8
  %638 = load i8, ptr %637, align 1
  %conv841 = zext i8 %638 to i32
  %idx.ext842 = sext i32 %conv841 to i64
  %idx.neg843 = sub i64 0, %idx.ext842
  %add.ptr844 = getelementptr inbounds i8, ptr %636, i64 %idx.neg843
  %639 = load i8, ptr %add.ptr844, align 1
  store i8 %639, ptr %c, align 1
  %640 = load i8, ptr %c, align 1
  %conv845 = zext i8 %640 to i32
  %641 = load i32, ptr %x, align 4
  %add846 = add nsw i32 %641, %conv845
  store i32 %add846, ptr %x, align 4
  %642 = load i8, ptr %c, align 1
  %conv847 = zext i8 %642 to i32
  %mul848 = mul nsw i32 4, %conv847
  %643 = load i32, ptr %y, align 4
  %add849 = add nsw i32 %643, %mul848
  store i32 %add849, ptr %y, align 4
  %644 = load i8, ptr %c, align 1
  %conv850 = zext i8 %644 to i32
  %mul851 = mul nsw i32 2, %conv850
  %645 = load i32, ptr %w, align 4
  %sub852 = sub nsw i32 %645, %mul851
  store i32 %sub852, ptr %w, align 4
  %646 = load ptr, ptr %cp, align 8
  %647 = load ptr, ptr %p, align 8
  %648 = load i8, ptr %647, align 1
  %conv853 = zext i8 %648 to i32
  %idx.ext854 = sext i32 %conv853 to i64
  %idx.neg855 = sub i64 0, %idx.ext854
  %add.ptr856 = getelementptr inbounds i8, ptr %646, i64 %idx.neg855
  %649 = load i8, ptr %add.ptr856, align 1
  store i8 %649, ptr %c, align 1
  %650 = load i8, ptr %c, align 1
  %conv857 = zext i8 %650 to i32
  %mul858 = mul nsw i32 4, %conv857
  %651 = load i32, ptr %x, align 4
  %add859 = add nsw i32 %651, %mul858
  store i32 %add859, ptr %x, align 4
  %652 = load i8, ptr %c, align 1
  %conv860 = zext i8 %652 to i32
  %mul861 = mul nsw i32 4, %conv860
  %653 = load i32, ptr %y, align 4
  %add862 = add nsw i32 %653, %mul861
  store i32 %add862, ptr %y, align 4
  %654 = load i8, ptr %c, align 1
  %conv863 = zext i8 %654 to i32
  %mul864 = mul nsw i32 4, %conv863
  %655 = load i32, ptr %w, align 4
  %sub865 = sub nsw i32 %655, %mul864
  store i32 %sub865, ptr %w, align 4
  %656 = load i32, ptr %x_size.addr, align 4
  %sub866 = sub nsw i32 %656, 5
  %657 = load ptr, ptr %p, align 8
  %idx.ext867 = sext i32 %sub866 to i64
  %add.ptr868 = getelementptr inbounds i8, ptr %657, i64 %idx.ext867
  store ptr %add.ptr868, ptr %p, align 8
  %658 = load ptr, ptr %cp, align 8
  %659 = load ptr, ptr %p, align 8
  %incdec.ptr869 = getelementptr inbounds i8, ptr %659, i32 1
  store ptr %incdec.ptr869, ptr %p, align 8
  %660 = load i8, ptr %659, align 1
  %conv870 = zext i8 %660 to i32
  %idx.ext871 = sext i32 %conv870 to i64
  %idx.neg872 = sub i64 0, %idx.ext871
  %add.ptr873 = getelementptr inbounds i8, ptr %658, i64 %idx.neg872
  %661 = load i8, ptr %add.ptr873, align 1
  store i8 %661, ptr %c, align 1
  %662 = load i8, ptr %c, align 1
  %conv874 = zext i8 %662 to i32
  %mul875 = mul nsw i32 9, %conv874
  %663 = load i32, ptr %x, align 4
  %add876 = add nsw i32 %663, %mul875
  store i32 %add876, ptr %x, align 4
  %664 = load i8, ptr %c, align 1
  %conv877 = zext i8 %664 to i32
  %665 = load i32, ptr %y, align 4
  %add878 = add nsw i32 %665, %conv877
  store i32 %add878, ptr %y, align 4
  %666 = load i8, ptr %c, align 1
  %conv879 = zext i8 %666 to i32
  %mul880 = mul nsw i32 3, %conv879
  %667 = load i32, ptr %w, align 4
  %add881 = add nsw i32 %667, %mul880
  store i32 %add881, ptr %w, align 4
  %668 = load ptr, ptr %cp, align 8
  %669 = load ptr, ptr %p, align 8
  %incdec.ptr882 = getelementptr inbounds i8, ptr %669, i32 1
  store ptr %incdec.ptr882, ptr %p, align 8
  %670 = load i8, ptr %669, align 1
  %conv883 = zext i8 %670 to i32
  %idx.ext884 = sext i32 %conv883 to i64
  %idx.neg885 = sub i64 0, %idx.ext884
  %add.ptr886 = getelementptr inbounds i8, ptr %668, i64 %idx.neg885
  %671 = load i8, ptr %add.ptr886, align 1
  store i8 %671, ptr %c, align 1
  %672 = load i8, ptr %c, align 1
  %conv887 = zext i8 %672 to i32
  %mul888 = mul nsw i32 4, %conv887
  %673 = load i32, ptr %x, align 4
  %add889 = add nsw i32 %673, %mul888
  store i32 %add889, ptr %x, align 4
  %674 = load i8, ptr %c, align 1
  %conv890 = zext i8 %674 to i32
  %675 = load i32, ptr %y, align 4
  %add891 = add nsw i32 %675, %conv890
  store i32 %add891, ptr %y, align 4
  %676 = load i8, ptr %c, align 1
  %conv892 = zext i8 %676 to i32
  %mul893 = mul nsw i32 2, %conv892
  %677 = load i32, ptr %w, align 4
  %add894 = add nsw i32 %677, %mul893
  store i32 %add894, ptr %w, align 4
  %678 = load ptr, ptr %cp, align 8
  %679 = load ptr, ptr %p, align 8
  %incdec.ptr895 = getelementptr inbounds i8, ptr %679, i32 1
  store ptr %incdec.ptr895, ptr %p, align 8
  %680 = load i8, ptr %679, align 1
  %conv896 = zext i8 %680 to i32
  %idx.ext897 = sext i32 %conv896 to i64
  %idx.neg898 = sub i64 0, %idx.ext897
  %add.ptr899 = getelementptr inbounds i8, ptr %678, i64 %idx.neg898
  %681 = load i8, ptr %add.ptr899, align 1
  store i8 %681, ptr %c, align 1
  %682 = load i8, ptr %c, align 1
  %conv900 = zext i8 %682 to i32
  %683 = load i32, ptr %x, align 4
  %add901 = add nsw i32 %683, %conv900
  store i32 %add901, ptr %x, align 4
  %684 = load i8, ptr %c, align 1
  %conv902 = zext i8 %684 to i32
  %685 = load i32, ptr %y, align 4
  %add903 = add nsw i32 %685, %conv902
  store i32 %add903, ptr %y, align 4
  %686 = load i8, ptr %c, align 1
  %conv904 = zext i8 %686 to i32
  %687 = load i32, ptr %w, align 4
  %add905 = add nsw i32 %687, %conv904
  store i32 %add905, ptr %w, align 4
  %688 = load ptr, ptr %cp, align 8
  %689 = load ptr, ptr %p, align 8
  %incdec.ptr906 = getelementptr inbounds i8, ptr %689, i32 1
  store ptr %incdec.ptr906, ptr %p, align 8
  %690 = load i8, ptr %689, align 1
  %conv907 = zext i8 %690 to i32
  %idx.ext908 = sext i32 %conv907 to i64
  %idx.neg909 = sub i64 0, %idx.ext908
  %add.ptr910 = getelementptr inbounds i8, ptr %688, i64 %idx.neg909
  %691 = load i8, ptr %add.ptr910, align 1
  store i8 %691, ptr %c, align 1
  %692 = load i8, ptr %c, align 1
  %conv911 = zext i8 %692 to i32
  %693 = load i32, ptr %y, align 4
  %add912 = add nsw i32 %693, %conv911
  store i32 %add912, ptr %y, align 4
  %694 = load ptr, ptr %cp, align 8
  %695 = load ptr, ptr %p, align 8
  %incdec.ptr913 = getelementptr inbounds i8, ptr %695, i32 1
  store ptr %incdec.ptr913, ptr %p, align 8
  %696 = load i8, ptr %695, align 1
  %conv914 = zext i8 %696 to i32
  %idx.ext915 = sext i32 %conv914 to i64
  %idx.neg916 = sub i64 0, %idx.ext915
  %add.ptr917 = getelementptr inbounds i8, ptr %694, i64 %idx.neg916
  %697 = load i8, ptr %add.ptr917, align 1
  store i8 %697, ptr %c, align 1
  %698 = load i8, ptr %c, align 1
  %conv918 = zext i8 %698 to i32
  %699 = load i32, ptr %x, align 4
  %add919 = add nsw i32 %699, %conv918
  store i32 %add919, ptr %x, align 4
  %700 = load i8, ptr %c, align 1
  %conv920 = zext i8 %700 to i32
  %701 = load i32, ptr %y, align 4
  %add921 = add nsw i32 %701, %conv920
  store i32 %add921, ptr %y, align 4
  %702 = load i8, ptr %c, align 1
  %conv922 = zext i8 %702 to i32
  %703 = load i32, ptr %w, align 4
  %sub923 = sub nsw i32 %703, %conv922
  store i32 %sub923, ptr %w, align 4
  %704 = load ptr, ptr %cp, align 8
  %705 = load ptr, ptr %p, align 8
  %incdec.ptr924 = getelementptr inbounds i8, ptr %705, i32 1
  store ptr %incdec.ptr924, ptr %p, align 8
  %706 = load i8, ptr %705, align 1
  %conv925 = zext i8 %706 to i32
  %idx.ext926 = sext i32 %conv925 to i64
  %idx.neg927 = sub i64 0, %idx.ext926
  %add.ptr928 = getelementptr inbounds i8, ptr %704, i64 %idx.neg927
  %707 = load i8, ptr %add.ptr928, align 1
  store i8 %707, ptr %c, align 1
  %708 = load i8, ptr %c, align 1
  %conv929 = zext i8 %708 to i32
  %mul930 = mul nsw i32 4, %conv929
  %709 = load i32, ptr %x, align 4
  %add931 = add nsw i32 %709, %mul930
  store i32 %add931, ptr %x, align 4
  %710 = load i8, ptr %c, align 1
  %conv932 = zext i8 %710 to i32
  %711 = load i32, ptr %y, align 4
  %add933 = add nsw i32 %711, %conv932
  store i32 %add933, ptr %y, align 4
  %712 = load i8, ptr %c, align 1
  %conv934 = zext i8 %712 to i32
  %mul935 = mul nsw i32 2, %conv934
  %713 = load i32, ptr %w, align 4
  %sub936 = sub nsw i32 %713, %mul935
  store i32 %sub936, ptr %w, align 4
  %714 = load ptr, ptr %cp, align 8
  %715 = load ptr, ptr %p, align 8
  %716 = load i8, ptr %715, align 1
  %conv937 = zext i8 %716 to i32
  %idx.ext938 = sext i32 %conv937 to i64
  %idx.neg939 = sub i64 0, %idx.ext938
  %add.ptr940 = getelementptr inbounds i8, ptr %714, i64 %idx.neg939
  %717 = load i8, ptr %add.ptr940, align 1
  store i8 %717, ptr %c, align 1
  %718 = load i8, ptr %c, align 1
  %conv941 = zext i8 %718 to i32
  %mul942 = mul nsw i32 9, %conv941
  %719 = load i32, ptr %x, align 4
  %add943 = add nsw i32 %719, %mul942
  store i32 %add943, ptr %x, align 4
  %720 = load i8, ptr %c, align 1
  %conv944 = zext i8 %720 to i32
  %721 = load i32, ptr %y, align 4
  %add945 = add nsw i32 %721, %conv944
  store i32 %add945, ptr %y, align 4
  %722 = load i8, ptr %c, align 1
  %conv946 = zext i8 %722 to i32
  %mul947 = mul nsw i32 3, %conv946
  %723 = load i32, ptr %w, align 4
  %sub948 = sub nsw i32 %723, %mul947
  store i32 %sub948, ptr %w, align 4
  %724 = load i32, ptr %x_size.addr, align 4
  %sub949 = sub nsw i32 %724, 6
  %725 = load ptr, ptr %p, align 8
  %idx.ext950 = sext i32 %sub949 to i64
  %add.ptr951 = getelementptr inbounds i8, ptr %725, i64 %idx.ext950
  store ptr %add.ptr951, ptr %p, align 8
  %726 = load ptr, ptr %cp, align 8
  %727 = load ptr, ptr %p, align 8
  %incdec.ptr952 = getelementptr inbounds i8, ptr %727, i32 1
  store ptr %incdec.ptr952, ptr %p, align 8
  %728 = load i8, ptr %727, align 1
  %conv953 = zext i8 %728 to i32
  %idx.ext954 = sext i32 %conv953 to i64
  %idx.neg955 = sub i64 0, %idx.ext954
  %add.ptr956 = getelementptr inbounds i8, ptr %726, i64 %idx.neg955
  %729 = load i8, ptr %add.ptr956, align 1
  store i8 %729, ptr %c, align 1
  %730 = load i8, ptr %c, align 1
  %conv957 = zext i8 %730 to i32
  %mul958 = mul nsw i32 9, %conv957
  %731 = load i32, ptr %x, align 4
  %add959 = add nsw i32 %731, %mul958
  store i32 %add959, ptr %x, align 4
  %732 = load ptr, ptr %cp, align 8
  %733 = load ptr, ptr %p, align 8
  %incdec.ptr960 = getelementptr inbounds i8, ptr %733, i32 1
  store ptr %incdec.ptr960, ptr %p, align 8
  %734 = load i8, ptr %733, align 1
  %conv961 = zext i8 %734 to i32
  %idx.ext962 = sext i32 %conv961 to i64
  %idx.neg963 = sub i64 0, %idx.ext962
  %add.ptr964 = getelementptr inbounds i8, ptr %732, i64 %idx.neg963
  %735 = load i8, ptr %add.ptr964, align 1
  store i8 %735, ptr %c, align 1
  %736 = load i8, ptr %c, align 1
  %conv965 = zext i8 %736 to i32
  %mul966 = mul nsw i32 4, %conv965
  %737 = load i32, ptr %x, align 4
  %add967 = add nsw i32 %737, %mul966
  store i32 %add967, ptr %x, align 4
  %738 = load ptr, ptr %cp, align 8
  %739 = load ptr, ptr %p, align 8
  %740 = load i8, ptr %739, align 1
  %conv968 = zext i8 %740 to i32
  %idx.ext969 = sext i32 %conv968 to i64
  %idx.neg970 = sub i64 0, %idx.ext969
  %add.ptr971 = getelementptr inbounds i8, ptr %738, i64 %idx.neg970
  %741 = load i8, ptr %add.ptr971, align 1
  store i8 %741, ptr %c, align 1
  %742 = load i8, ptr %c, align 1
  %conv972 = zext i8 %742 to i32
  %743 = load i32, ptr %x, align 4
  %add973 = add nsw i32 %743, %conv972
  store i32 %add973, ptr %x, align 4
  %744 = load ptr, ptr %p, align 8
  %add.ptr974 = getelementptr inbounds i8, ptr %744, i64 2
  store ptr %add.ptr974, ptr %p, align 8
  %745 = load ptr, ptr %cp, align 8
  %746 = load ptr, ptr %p, align 8
  %incdec.ptr975 = getelementptr inbounds i8, ptr %746, i32 1
  store ptr %incdec.ptr975, ptr %p, align 8
  %747 = load i8, ptr %746, align 1
  %conv976 = zext i8 %747 to i32
  %idx.ext977 = sext i32 %conv976 to i64
  %idx.neg978 = sub i64 0, %idx.ext977
  %add.ptr979 = getelementptr inbounds i8, ptr %745, i64 %idx.neg978
  %748 = load i8, ptr %add.ptr979, align 1
  store i8 %748, ptr %c, align 1
  %749 = load i8, ptr %c, align 1
  %conv980 = zext i8 %749 to i32
  %750 = load i32, ptr %x, align 4
  %add981 = add nsw i32 %750, %conv980
  store i32 %add981, ptr %x, align 4
  %751 = load ptr, ptr %cp, align 8
  %752 = load ptr, ptr %p, align 8
  %incdec.ptr982 = getelementptr inbounds i8, ptr %752, i32 1
  store ptr %incdec.ptr982, ptr %p, align 8
  %753 = load i8, ptr %752, align 1
  %conv983 = zext i8 %753 to i32
  %idx.ext984 = sext i32 %conv983 to i64
  %idx.neg985 = sub i64 0, %idx.ext984
  %add.ptr986 = getelementptr inbounds i8, ptr %751, i64 %idx.neg985
  %754 = load i8, ptr %add.ptr986, align 1
  store i8 %754, ptr %c, align 1
  %755 = load i8, ptr %c, align 1
  %conv987 = zext i8 %755 to i32
  %mul988 = mul nsw i32 4, %conv987
  %756 = load i32, ptr %x, align 4
  %add989 = add nsw i32 %756, %mul988
  store i32 %add989, ptr %x, align 4
  %757 = load ptr, ptr %cp, align 8
  %758 = load ptr, ptr %p, align 8
  %759 = load i8, ptr %758, align 1
  %conv990 = zext i8 %759 to i32
  %idx.ext991 = sext i32 %conv990 to i64
  %idx.neg992 = sub i64 0, %idx.ext991
  %add.ptr993 = getelementptr inbounds i8, ptr %757, i64 %idx.neg992
  %760 = load i8, ptr %add.ptr993, align 1
  store i8 %760, ptr %c, align 1
  %761 = load i8, ptr %c, align 1
  %conv994 = zext i8 %761 to i32
  %mul995 = mul nsw i32 9, %conv994
  %762 = load i32, ptr %x, align 4
  %add996 = add nsw i32 %762, %mul995
  store i32 %add996, ptr %x, align 4
  %763 = load i32, ptr %x_size.addr, align 4
  %sub997 = sub nsw i32 %763, 6
  %764 = load ptr, ptr %p, align 8
  %idx.ext998 = sext i32 %sub997 to i64
  %add.ptr999 = getelementptr inbounds i8, ptr %764, i64 %idx.ext998
  store ptr %add.ptr999, ptr %p, align 8
  %765 = load ptr, ptr %cp, align 8
  %766 = load ptr, ptr %p, align 8
  %incdec.ptr1000 = getelementptr inbounds i8, ptr %766, i32 1
  store ptr %incdec.ptr1000, ptr %p, align 8
  %767 = load i8, ptr %766, align 1
  %conv1001 = zext i8 %767 to i32
  %idx.ext1002 = sext i32 %conv1001 to i64
  %idx.neg1003 = sub i64 0, %idx.ext1002
  %add.ptr1004 = getelementptr inbounds i8, ptr %765, i64 %idx.neg1003
  %768 = load i8, ptr %add.ptr1004, align 1
  store i8 %768, ptr %c, align 1
  %769 = load i8, ptr %c, align 1
  %conv1005 = zext i8 %769 to i32
  %mul1006 = mul nsw i32 9, %conv1005
  %770 = load i32, ptr %x, align 4
  %add1007 = add nsw i32 %770, %mul1006
  store i32 %add1007, ptr %x, align 4
  %771 = load i8, ptr %c, align 1
  %conv1008 = zext i8 %771 to i32
  %772 = load i32, ptr %y, align 4
  %add1009 = add nsw i32 %772, %conv1008
  store i32 %add1009, ptr %y, align 4
  %773 = load i8, ptr %c, align 1
  %conv1010 = zext i8 %773 to i32
  %mul1011 = mul nsw i32 3, %conv1010
  %774 = load i32, ptr %w, align 4
  %sub1012 = sub nsw i32 %774, %mul1011
  store i32 %sub1012, ptr %w, align 4
  %775 = load ptr, ptr %cp, align 8
  %776 = load ptr, ptr %p, align 8
  %incdec.ptr1013 = getelementptr inbounds i8, ptr %776, i32 1
  store ptr %incdec.ptr1013, ptr %p, align 8
  %777 = load i8, ptr %776, align 1
  %conv1014 = zext i8 %777 to i32
  %idx.ext1015 = sext i32 %conv1014 to i64
  %idx.neg1016 = sub i64 0, %idx.ext1015
  %add.ptr1017 = getelementptr inbounds i8, ptr %775, i64 %idx.neg1016
  %778 = load i8, ptr %add.ptr1017, align 1
  store i8 %778, ptr %c, align 1
  %779 = load i8, ptr %c, align 1
  %conv1018 = zext i8 %779 to i32
  %mul1019 = mul nsw i32 4, %conv1018
  %780 = load i32, ptr %x, align 4
  %add1020 = add nsw i32 %780, %mul1019
  store i32 %add1020, ptr %x, align 4
  %781 = load i8, ptr %c, align 1
  %conv1021 = zext i8 %781 to i32
  %782 = load i32, ptr %y, align 4
  %add1022 = add nsw i32 %782, %conv1021
  store i32 %add1022, ptr %y, align 4
  %783 = load i8, ptr %c, align 1
  %conv1023 = zext i8 %783 to i32
  %mul1024 = mul nsw i32 2, %conv1023
  %784 = load i32, ptr %w, align 4
  %sub1025 = sub nsw i32 %784, %mul1024
  store i32 %sub1025, ptr %w, align 4
  %785 = load ptr, ptr %cp, align 8
  %786 = load ptr, ptr %p, align 8
  %incdec.ptr1026 = getelementptr inbounds i8, ptr %786, i32 1
  store ptr %incdec.ptr1026, ptr %p, align 8
  %787 = load i8, ptr %786, align 1
  %conv1027 = zext i8 %787 to i32
  %idx.ext1028 = sext i32 %conv1027 to i64
  %idx.neg1029 = sub i64 0, %idx.ext1028
  %add.ptr1030 = getelementptr inbounds i8, ptr %785, i64 %idx.neg1029
  %788 = load i8, ptr %add.ptr1030, align 1
  store i8 %788, ptr %c, align 1
  %789 = load i8, ptr %c, align 1
  %conv1031 = zext i8 %789 to i32
  %790 = load i32, ptr %x, align 4
  %add1032 = add nsw i32 %790, %conv1031
  store i32 %add1032, ptr %x, align 4
  %791 = load i8, ptr %c, align 1
  %conv1033 = zext i8 %791 to i32
  %792 = load i32, ptr %y, align 4
  %add1034 = add nsw i32 %792, %conv1033
  store i32 %add1034, ptr %y, align 4
  %793 = load i8, ptr %c, align 1
  %conv1035 = zext i8 %793 to i32
  %794 = load i32, ptr %w, align 4
  %sub1036 = sub nsw i32 %794, %conv1035
  store i32 %sub1036, ptr %w, align 4
  %795 = load ptr, ptr %cp, align 8
  %796 = load ptr, ptr %p, align 8
  %incdec.ptr1037 = getelementptr inbounds i8, ptr %796, i32 1
  store ptr %incdec.ptr1037, ptr %p, align 8
  %797 = load i8, ptr %796, align 1
  %conv1038 = zext i8 %797 to i32
  %idx.ext1039 = sext i32 %conv1038 to i64
  %idx.neg1040 = sub i64 0, %idx.ext1039
  %add.ptr1041 = getelementptr inbounds i8, ptr %795, i64 %idx.neg1040
  %798 = load i8, ptr %add.ptr1041, align 1
  store i8 %798, ptr %c, align 1
  %799 = load i8, ptr %c, align 1
  %conv1042 = zext i8 %799 to i32
  %800 = load i32, ptr %y, align 4
  %add1043 = add nsw i32 %800, %conv1042
  store i32 %add1043, ptr %y, align 4
  %801 = load ptr, ptr %cp, align 8
  %802 = load ptr, ptr %p, align 8
  %incdec.ptr1044 = getelementptr inbounds i8, ptr %802, i32 1
  store ptr %incdec.ptr1044, ptr %p, align 8
  %803 = load i8, ptr %802, align 1
  %conv1045 = zext i8 %803 to i32
  %idx.ext1046 = sext i32 %conv1045 to i64
  %idx.neg1047 = sub i64 0, %idx.ext1046
  %add.ptr1048 = getelementptr inbounds i8, ptr %801, i64 %idx.neg1047
  %804 = load i8, ptr %add.ptr1048, align 1
  store i8 %804, ptr %c, align 1
  %805 = load i8, ptr %c, align 1
  %conv1049 = zext i8 %805 to i32
  %806 = load i32, ptr %x, align 4
  %add1050 = add nsw i32 %806, %conv1049
  store i32 %add1050, ptr %x, align 4
  %807 = load i8, ptr %c, align 1
  %conv1051 = zext i8 %807 to i32
  %808 = load i32, ptr %y, align 4
  %add1052 = add nsw i32 %808, %conv1051
  store i32 %add1052, ptr %y, align 4
  %809 = load i8, ptr %c, align 1
  %conv1053 = zext i8 %809 to i32
  %810 = load i32, ptr %w, align 4
  %add1054 = add nsw i32 %810, %conv1053
  store i32 %add1054, ptr %w, align 4
  %811 = load ptr, ptr %cp, align 8
  %812 = load ptr, ptr %p, align 8
  %incdec.ptr1055 = getelementptr inbounds i8, ptr %812, i32 1
  store ptr %incdec.ptr1055, ptr %p, align 8
  %813 = load i8, ptr %812, align 1
  %conv1056 = zext i8 %813 to i32
  %idx.ext1057 = sext i32 %conv1056 to i64
  %idx.neg1058 = sub i64 0, %idx.ext1057
  %add.ptr1059 = getelementptr inbounds i8, ptr %811, i64 %idx.neg1058
  %814 = load i8, ptr %add.ptr1059, align 1
  store i8 %814, ptr %c, align 1
  %815 = load i8, ptr %c, align 1
  %conv1060 = zext i8 %815 to i32
  %mul1061 = mul nsw i32 4, %conv1060
  %816 = load i32, ptr %x, align 4
  %add1062 = add nsw i32 %816, %mul1061
  store i32 %add1062, ptr %x, align 4
  %817 = load i8, ptr %c, align 1
  %conv1063 = zext i8 %817 to i32
  %818 = load i32, ptr %y, align 4
  %add1064 = add nsw i32 %818, %conv1063
  store i32 %add1064, ptr %y, align 4
  %819 = load i8, ptr %c, align 1
  %conv1065 = zext i8 %819 to i32
  %mul1066 = mul nsw i32 2, %conv1065
  %820 = load i32, ptr %w, align 4
  %add1067 = add nsw i32 %820, %mul1066
  store i32 %add1067, ptr %w, align 4
  %821 = load ptr, ptr %cp, align 8
  %822 = load ptr, ptr %p, align 8
  %823 = load i8, ptr %822, align 1
  %conv1068 = zext i8 %823 to i32
  %idx.ext1069 = sext i32 %conv1068 to i64
  %idx.neg1070 = sub i64 0, %idx.ext1069
  %add.ptr1071 = getelementptr inbounds i8, ptr %821, i64 %idx.neg1070
  %824 = load i8, ptr %add.ptr1071, align 1
  store i8 %824, ptr %c, align 1
  %825 = load i8, ptr %c, align 1
  %conv1072 = zext i8 %825 to i32
  %mul1073 = mul nsw i32 9, %conv1072
  %826 = load i32, ptr %x, align 4
  %add1074 = add nsw i32 %826, %mul1073
  store i32 %add1074, ptr %x, align 4
  %827 = load i8, ptr %c, align 1
  %conv1075 = zext i8 %827 to i32
  %828 = load i32, ptr %y, align 4
  %add1076 = add nsw i32 %828, %conv1075
  store i32 %add1076, ptr %y, align 4
  %829 = load i8, ptr %c, align 1
  %conv1077 = zext i8 %829 to i32
  %mul1078 = mul nsw i32 3, %conv1077
  %830 = load i32, ptr %w, align 4
  %add1079 = add nsw i32 %830, %mul1078
  store i32 %add1079, ptr %w, align 4
  %831 = load i32, ptr %x_size.addr, align 4
  %sub1080 = sub nsw i32 %831, 5
  %832 = load ptr, ptr %p, align 8
  %idx.ext1081 = sext i32 %sub1080 to i64
  %add.ptr1082 = getelementptr inbounds i8, ptr %832, i64 %idx.ext1081
  store ptr %add.ptr1082, ptr %p, align 8
  %833 = load ptr, ptr %cp, align 8
  %834 = load ptr, ptr %p, align 8
  %incdec.ptr1083 = getelementptr inbounds i8, ptr %834, i32 1
  store ptr %incdec.ptr1083, ptr %p, align 8
  %835 = load i8, ptr %834, align 1
  %conv1084 = zext i8 %835 to i32
  %idx.ext1085 = sext i32 %conv1084 to i64
  %idx.neg1086 = sub i64 0, %idx.ext1085
  %add.ptr1087 = getelementptr inbounds i8, ptr %833, i64 %idx.neg1086
  %836 = load i8, ptr %add.ptr1087, align 1
  store i8 %836, ptr %c, align 1
  %837 = load i8, ptr %c, align 1
  %conv1088 = zext i8 %837 to i32
  %mul1089 = mul nsw i32 4, %conv1088
  %838 = load i32, ptr %x, align 4
  %add1090 = add nsw i32 %838, %mul1089
  store i32 %add1090, ptr %x, align 4
  %839 = load i8, ptr %c, align 1
  %conv1091 = zext i8 %839 to i32
  %mul1092 = mul nsw i32 4, %conv1091
  %840 = load i32, ptr %y, align 4
  %add1093 = add nsw i32 %840, %mul1092
  store i32 %add1093, ptr %y, align 4
  %841 = load i8, ptr %c, align 1
  %conv1094 = zext i8 %841 to i32
  %mul1095 = mul nsw i32 4, %conv1094
  %842 = load i32, ptr %w, align 4
  %sub1096 = sub nsw i32 %842, %mul1095
  store i32 %sub1096, ptr %w, align 4
  %843 = load ptr, ptr %cp, align 8
  %844 = load ptr, ptr %p, align 8
  %incdec.ptr1097 = getelementptr inbounds i8, ptr %844, i32 1
  store ptr %incdec.ptr1097, ptr %p, align 8
  %845 = load i8, ptr %844, align 1
  %conv1098 = zext i8 %845 to i32
  %idx.ext1099 = sext i32 %conv1098 to i64
  %idx.neg1100 = sub i64 0, %idx.ext1099
  %add.ptr1101 = getelementptr inbounds i8, ptr %843, i64 %idx.neg1100
  %846 = load i8, ptr %add.ptr1101, align 1
  store i8 %846, ptr %c, align 1
  %847 = load i8, ptr %c, align 1
  %conv1102 = zext i8 %847 to i32
  %848 = load i32, ptr %x, align 4
  %add1103 = add nsw i32 %848, %conv1102
  store i32 %add1103, ptr %x, align 4
  %849 = load i8, ptr %c, align 1
  %conv1104 = zext i8 %849 to i32
  %mul1105 = mul nsw i32 4, %conv1104
  %850 = load i32, ptr %y, align 4
  %add1106 = add nsw i32 %850, %mul1105
  store i32 %add1106, ptr %y, align 4
  %851 = load i8, ptr %c, align 1
  %conv1107 = zext i8 %851 to i32
  %mul1108 = mul nsw i32 2, %conv1107
  %852 = load i32, ptr %w, align 4
  %sub1109 = sub nsw i32 %852, %mul1108
  store i32 %sub1109, ptr %w, align 4
  %853 = load ptr, ptr %cp, align 8
  %854 = load ptr, ptr %p, align 8
  %incdec.ptr1110 = getelementptr inbounds i8, ptr %854, i32 1
  store ptr %incdec.ptr1110, ptr %p, align 8
  %855 = load i8, ptr %854, align 1
  %conv1111 = zext i8 %855 to i32
  %idx.ext1112 = sext i32 %conv1111 to i64
  %idx.neg1113 = sub i64 0, %idx.ext1112
  %add.ptr1114 = getelementptr inbounds i8, ptr %853, i64 %idx.neg1113
  %856 = load i8, ptr %add.ptr1114, align 1
  store i8 %856, ptr %c, align 1
  %857 = load i8, ptr %c, align 1
  %conv1115 = zext i8 %857 to i32
  %mul1116 = mul nsw i32 4, %conv1115
  %858 = load i32, ptr %y, align 4
  %add1117 = add nsw i32 %858, %mul1116
  store i32 %add1117, ptr %y, align 4
  %859 = load ptr, ptr %cp, align 8
  %860 = load ptr, ptr %p, align 8
  %incdec.ptr1118 = getelementptr inbounds i8, ptr %860, i32 1
  store ptr %incdec.ptr1118, ptr %p, align 8
  %861 = load i8, ptr %860, align 1
  %conv1119 = zext i8 %861 to i32
  %idx.ext1120 = sext i32 %conv1119 to i64
  %idx.neg1121 = sub i64 0, %idx.ext1120
  %add.ptr1122 = getelementptr inbounds i8, ptr %859, i64 %idx.neg1121
  %862 = load i8, ptr %add.ptr1122, align 1
  store i8 %862, ptr %c, align 1
  %863 = load i8, ptr %c, align 1
  %conv1123 = zext i8 %863 to i32
  %864 = load i32, ptr %x, align 4
  %add1124 = add nsw i32 %864, %conv1123
  store i32 %add1124, ptr %x, align 4
  %865 = load i8, ptr %c, align 1
  %conv1125 = zext i8 %865 to i32
  %mul1126 = mul nsw i32 4, %conv1125
  %866 = load i32, ptr %y, align 4
  %add1127 = add nsw i32 %866, %mul1126
  store i32 %add1127, ptr %y, align 4
  %867 = load i8, ptr %c, align 1
  %conv1128 = zext i8 %867 to i32
  %mul1129 = mul nsw i32 2, %conv1128
  %868 = load i32, ptr %w, align 4
  %add1130 = add nsw i32 %868, %mul1129
  store i32 %add1130, ptr %w, align 4
  %869 = load ptr, ptr %cp, align 8
  %870 = load ptr, ptr %p, align 8
  %871 = load i8, ptr %870, align 1
  %conv1131 = zext i8 %871 to i32
  %idx.ext1132 = sext i32 %conv1131 to i64
  %idx.neg1133 = sub i64 0, %idx.ext1132
  %add.ptr1134 = getelementptr inbounds i8, ptr %869, i64 %idx.neg1133
  %872 = load i8, ptr %add.ptr1134, align 1
  store i8 %872, ptr %c, align 1
  %873 = load i8, ptr %c, align 1
  %conv1135 = zext i8 %873 to i32
  %mul1136 = mul nsw i32 4, %conv1135
  %874 = load i32, ptr %x, align 4
  %add1137 = add nsw i32 %874, %mul1136
  store i32 %add1137, ptr %x, align 4
  %875 = load i8, ptr %c, align 1
  %conv1138 = zext i8 %875 to i32
  %mul1139 = mul nsw i32 4, %conv1138
  %876 = load i32, ptr %y, align 4
  %add1140 = add nsw i32 %876, %mul1139
  store i32 %add1140, ptr %y, align 4
  %877 = load i8, ptr %c, align 1
  %conv1141 = zext i8 %877 to i32
  %mul1142 = mul nsw i32 4, %conv1141
  %878 = load i32, ptr %w, align 4
  %add1143 = add nsw i32 %878, %mul1142
  store i32 %add1143, ptr %w, align 4
  %879 = load i32, ptr %x_size.addr, align 4
  %sub1144 = sub nsw i32 %879, 3
  %880 = load ptr, ptr %p, align 8
  %idx.ext1145 = sext i32 %sub1144 to i64
  %add.ptr1146 = getelementptr inbounds i8, ptr %880, i64 %idx.ext1145
  store ptr %add.ptr1146, ptr %p, align 8
  %881 = load ptr, ptr %cp, align 8
  %882 = load ptr, ptr %p, align 8
  %incdec.ptr1147 = getelementptr inbounds i8, ptr %882, i32 1
  store ptr %incdec.ptr1147, ptr %p, align 8
  %883 = load i8, ptr %882, align 1
  %conv1148 = zext i8 %883 to i32
  %idx.ext1149 = sext i32 %conv1148 to i64
  %idx.neg1150 = sub i64 0, %idx.ext1149
  %add.ptr1151 = getelementptr inbounds i8, ptr %881, i64 %idx.neg1150
  %884 = load i8, ptr %add.ptr1151, align 1
  store i8 %884, ptr %c, align 1
  %885 = load i8, ptr %c, align 1
  %conv1152 = zext i8 %885 to i32
  %886 = load i32, ptr %x, align 4
  %add1153 = add nsw i32 %886, %conv1152
  store i32 %add1153, ptr %x, align 4
  %887 = load i8, ptr %c, align 1
  %conv1154 = zext i8 %887 to i32
  %mul1155 = mul nsw i32 9, %conv1154
  %888 = load i32, ptr %y, align 4
  %add1156 = add nsw i32 %888, %mul1155
  store i32 %add1156, ptr %y, align 4
  %889 = load i8, ptr %c, align 1
  %conv1157 = zext i8 %889 to i32
  %mul1158 = mul nsw i32 3, %conv1157
  %890 = load i32, ptr %w, align 4
  %sub1159 = sub nsw i32 %890, %mul1158
  store i32 %sub1159, ptr %w, align 4
  %891 = load ptr, ptr %cp, align 8
  %892 = load ptr, ptr %p, align 8
  %incdec.ptr1160 = getelementptr inbounds i8, ptr %892, i32 1
  store ptr %incdec.ptr1160, ptr %p, align 8
  %893 = load i8, ptr %892, align 1
  %conv1161 = zext i8 %893 to i32
  %idx.ext1162 = sext i32 %conv1161 to i64
  %idx.neg1163 = sub i64 0, %idx.ext1162
  %add.ptr1164 = getelementptr inbounds i8, ptr %891, i64 %idx.neg1163
  %894 = load i8, ptr %add.ptr1164, align 1
  store i8 %894, ptr %c, align 1
  %895 = load i8, ptr %c, align 1
  %conv1165 = zext i8 %895 to i32
  %mul1166 = mul nsw i32 9, %conv1165
  %896 = load i32, ptr %y, align 4
  %add1167 = add nsw i32 %896, %mul1166
  store i32 %add1167, ptr %y, align 4
  %897 = load ptr, ptr %cp, align 8
  %898 = load ptr, ptr %p, align 8
  %899 = load i8, ptr %898, align 1
  %conv1168 = zext i8 %899 to i32
  %idx.ext1169 = sext i32 %conv1168 to i64
  %idx.neg1170 = sub i64 0, %idx.ext1169
  %add.ptr1171 = getelementptr inbounds i8, ptr %897, i64 %idx.neg1170
  %900 = load i8, ptr %add.ptr1171, align 1
  store i8 %900, ptr %c, align 1
  %901 = load i8, ptr %c, align 1
  %conv1172 = zext i8 %901 to i32
  %902 = load i32, ptr %x, align 4
  %add1173 = add nsw i32 %902, %conv1172
  store i32 %add1173, ptr %x, align 4
  %903 = load i8, ptr %c, align 1
  %conv1174 = zext i8 %903 to i32
  %mul1175 = mul nsw i32 9, %conv1174
  %904 = load i32, ptr %y, align 4
  %add1176 = add nsw i32 %904, %mul1175
  store i32 %add1176, ptr %y, align 4
  %905 = load i8, ptr %c, align 1
  %conv1177 = zext i8 %905 to i32
  %mul1178 = mul nsw i32 3, %conv1177
  %906 = load i32, ptr %w, align 4
  %add1179 = add nsw i32 %906, %mul1178
  store i32 %add1179, ptr %w, align 4
  %907 = load i32, ptr %y, align 4
  %cmp1180 = icmp eq i32 %907, 0
  br i1 %cmp1180, label %if.then1182, label %if.else1183

if.then1182:                                      ; preds = %if.then761
  store float 1.000000e+06, ptr %z, align 4
  br label %if.end1187

if.else1183:                                      ; preds = %if.then761
  %908 = load i32, ptr %x, align 4
  %conv1184 = sitofp i32 %908 to float
  %909 = load i32, ptr %y, align 4
  %conv1185 = sitofp i32 %909 to float
  %div1186 = fdiv float %conv1184, %conv1185
  store float %div1186, ptr %z, align 4
  br label %if.end1187

if.end1187:                                       ; preds = %if.else1183, %if.then1182
  %910 = load float, ptr %z, align 4
  %conv1188 = fpext float %910 to double
  %cmp1189 = fcmp olt double %conv1188, 5.000000e-01
  br i1 %cmp1189, label %if.then1191, label %if.else1192

if.then1191:                                      ; preds = %if.end1187
  store i32 0, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end1204

if.else1192:                                      ; preds = %if.end1187
  %911 = load float, ptr %z, align 4
  %conv1193 = fpext float %911 to double
  %cmp1194 = fcmp ogt double %conv1193, 2.000000e+00
  br i1 %cmp1194, label %if.then1196, label %if.else1197

if.then1196:                                      ; preds = %if.else1192
  store i32 1, ptr %a, align 4
  store i32 0, ptr %b, align 4
  br label %if.end1203

if.else1197:                                      ; preds = %if.else1192
  %912 = load i32, ptr %w, align 4
  %cmp1198 = icmp sgt i32 %912, 0
  br i1 %cmp1198, label %if.then1200, label %if.else1201

if.then1200:                                      ; preds = %if.else1197
  store i32 -1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end1202

if.else1201:                                      ; preds = %if.else1197
  store i32 1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end1202

if.end1202:                                       ; preds = %if.else1201, %if.then1200
  br label %if.end1203

if.end1203:                                       ; preds = %if.end1202, %if.then1196
  br label %if.end1204

if.end1204:                                       ; preds = %if.end1203, %if.then1191
  %913 = load i32, ptr %m, align 4
  %914 = load ptr, ptr %r.addr, align 8
  %915 = load i32, ptr %i, align 4
  %916 = load i32, ptr %a, align 4
  %add1205 = add nsw i32 %915, %916
  %917 = load i32, ptr %x_size.addr, align 4
  %mul1206 = mul nsw i32 %add1205, %917
  %918 = load i32, ptr %j, align 4
  %add1207 = add nsw i32 %mul1206, %918
  %919 = load i32, ptr %b, align 4
  %add1208 = add nsw i32 %add1207, %919
  %idxprom1209 = sext i32 %add1208 to i64
  %arrayidx1210 = getelementptr inbounds i32, ptr %914, i64 %idxprom1209
  %920 = load i32, ptr %arrayidx1210, align 4
  %cmp1211 = icmp sgt i32 %913, %920
  br i1 %cmp1211, label %land.lhs.true1213, label %if.end1249

land.lhs.true1213:                                ; preds = %if.end1204
  %921 = load i32, ptr %m, align 4
  %922 = load ptr, ptr %r.addr, align 8
  %923 = load i32, ptr %i, align 4
  %924 = load i32, ptr %a, align 4
  %sub1214 = sub nsw i32 %923, %924
  %925 = load i32, ptr %x_size.addr, align 4
  %mul1215 = mul nsw i32 %sub1214, %925
  %926 = load i32, ptr %j, align 4
  %add1216 = add nsw i32 %mul1215, %926
  %927 = load i32, ptr %b, align 4
  %sub1217 = sub nsw i32 %add1216, %927
  %idxprom1218 = sext i32 %sub1217 to i64
  %arrayidx1219 = getelementptr inbounds i32, ptr %922, i64 %idxprom1218
  %928 = load i32, ptr %arrayidx1219, align 4
  %cmp1220 = icmp sge i32 %921, %928
  br i1 %cmp1220, label %land.lhs.true1222, label %if.end1249

land.lhs.true1222:                                ; preds = %land.lhs.true1213
  %929 = load i32, ptr %m, align 4
  %930 = load ptr, ptr %r.addr, align 8
  %931 = load i32, ptr %i, align 4
  %932 = load i32, ptr %a, align 4
  %mul1223 = mul nsw i32 2, %932
  %add1224 = add nsw i32 %931, %mul1223
  %933 = load i32, ptr %x_size.addr, align 4
  %mul1225 = mul nsw i32 %add1224, %933
  %934 = load i32, ptr %j, align 4
  %add1226 = add nsw i32 %mul1225, %934
  %935 = load i32, ptr %b, align 4
  %mul1227 = mul nsw i32 2, %935
  %add1228 = add nsw i32 %add1226, %mul1227
  %idxprom1229 = sext i32 %add1228 to i64
  %arrayidx1230 = getelementptr inbounds i32, ptr %930, i64 %idxprom1229
  %936 = load i32, ptr %arrayidx1230, align 4
  %cmp1231 = icmp sgt i32 %929, %936
  br i1 %cmp1231, label %land.lhs.true1233, label %if.end1249

land.lhs.true1233:                                ; preds = %land.lhs.true1222
  %937 = load i32, ptr %m, align 4
  %938 = load ptr, ptr %r.addr, align 8
  %939 = load i32, ptr %i, align 4
  %940 = load i32, ptr %a, align 4
  %mul1234 = mul nsw i32 2, %940
  %sub1235 = sub nsw i32 %939, %mul1234
  %941 = load i32, ptr %x_size.addr, align 4
  %mul1236 = mul nsw i32 %sub1235, %941
  %942 = load i32, ptr %j, align 4
  %add1237 = add nsw i32 %mul1236, %942
  %943 = load i32, ptr %b, align 4
  %mul1238 = mul nsw i32 2, %943
  %sub1239 = sub nsw i32 %add1237, %mul1238
  %idxprom1240 = sext i32 %sub1239 to i64
  %arrayidx1241 = getelementptr inbounds i32, ptr %938, i64 %idxprom1240
  %944 = load i32, ptr %arrayidx1241, align 4
  %cmp1242 = icmp sge i32 %937, %944
  br i1 %cmp1242, label %if.then1244, label %if.end1249

if.then1244:                                      ; preds = %land.lhs.true1233
  %945 = load ptr, ptr %mid.addr, align 8
  %946 = load i32, ptr %i, align 4
  %947 = load i32, ptr %x_size.addr, align 4
  %mul1245 = mul nsw i32 %946, %947
  %948 = load i32, ptr %j, align 4
  %add1246 = add nsw i32 %mul1245, %948
  %idxprom1247 = sext i32 %add1246 to i64
  %arrayidx1248 = getelementptr inbounds i8, ptr %945, i64 %idxprom1247
  store i8 2, ptr %arrayidx1248, align 1
  br label %if.end1249

if.end1249:                                       ; preds = %if.then1244, %land.lhs.true1233, %land.lhs.true1222, %land.lhs.true1213, %if.end1204
  br label %if.end1250

if.end1250:                                       ; preds = %if.end1249, %if.end758
  br label %if.end1251

if.end1251:                                       ; preds = %if.end1250, %for.body297
  br label %for.inc1252

for.inc1252:                                      ; preds = %if.end1251
  %949 = load i32, ptr %j, align 4
  %inc1253 = add nsw i32 %949, 1
  store i32 %inc1253, ptr %j, align 4
  br label %for.cond293, !llvm.loop !36

for.end1254:                                      ; preds = %for.cond293
  br label %for.inc1255

for.inc1255:                                      ; preds = %for.end1254
  %950 = load i32, ptr %i, align 4
  %inc1256 = add nsw i32 %950, 1
  store i32 %inc1256, ptr %i, align 4
  br label %for.cond288, !llvm.loop !37

for.end1257:                                      ; preds = %for.cond288
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %r.addr, align 8
  %1 = load i32, ptr %x_size.addr, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %3 = load ptr, ptr %r.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %mul1, i64 noundef %4) #9
  store i32 730, ptr %max_no.addr, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %y_size.addr, align 4
  %sub = sub nsw i32 %6, 1
  %cmp = icmp slt i32 %5, %sub
  br i1 %cmp, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %x_size.addr, align 4
  %sub4 = sub nsw i32 %8, 1
  %cmp5 = icmp slt i32 %7, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %sub8 = sub nsw i32 %10, 1
  %11 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %11
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %12 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %12 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load ptr, ptr %in.addr, align 8
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %15, %16
  %17 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %17
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %18 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %19 = load ptr, ptr %cp, align 8
  %20 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv17 = zext i8 %21 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %19, i64 %idx.neg
  %22 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %22 to i32
  %23 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %23, %conv20
  store i32 %add21, ptr %n, align 4
  %24 = load ptr, ptr %cp, align 8
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %26 = load i8, ptr %25, align 1
  %conv23 = zext i8 %26 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %24, i64 %idx.neg25
  %27 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %27 to i32
  %28 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %28, %conv27
  store i32 %add28, ptr %n, align 4
  %29 = load ptr, ptr %cp, align 8
  %30 = load ptr, ptr %p, align 8
  %31 = load i8, ptr %30, align 1
  %conv29 = zext i8 %31 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %29, i64 %idx.neg31
  %32 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %33, %conv33
  store i32 %add34, ptr %n, align 4
  %34 = load i32, ptr %x_size.addr, align 4
  %sub35 = sub nsw i32 %34, 2
  %35 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %35, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %36 = load ptr, ptr %cp, align 8
  %37 = load ptr, ptr %p, align 8
  %38 = load i8, ptr %37, align 1
  %conv38 = zext i8 %38 to i32
  %idx.ext39 = sext i32 %conv38 to i64
  %idx.neg40 = sub i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %36, i64 %idx.neg40
  %39 = load i8, ptr %add.ptr41, align 1
  %conv42 = zext i8 %39 to i32
  %40 = load i32, ptr %n, align 4
  %add43 = add nsw i32 %40, %conv42
  store i32 %add43, ptr %n, align 4
  %41 = load ptr, ptr %p, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %41, i64 2
  store ptr %add.ptr44, ptr %p, align 8
  %42 = load ptr, ptr %cp, align 8
  %43 = load ptr, ptr %p, align 8
  %44 = load i8, ptr %43, align 1
  %conv45 = zext i8 %44 to i32
  %idx.ext46 = sext i32 %conv45 to i64
  %idx.neg47 = sub i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %42, i64 %idx.neg47
  %45 = load i8, ptr %add.ptr48, align 1
  %conv49 = zext i8 %45 to i32
  %46 = load i32, ptr %n, align 4
  %add50 = add nsw i32 %46, %conv49
  store i32 %add50, ptr %n, align 4
  %47 = load i32, ptr %x_size.addr, align 4
  %sub51 = sub nsw i32 %47, 2
  %48 = load ptr, ptr %p, align 8
  %idx.ext52 = sext i32 %sub51 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %48, i64 %idx.ext52
  store ptr %add.ptr53, ptr %p, align 8
  %49 = load ptr, ptr %cp, align 8
  %50 = load ptr, ptr %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr54, ptr %p, align 8
  %51 = load i8, ptr %50, align 1
  %conv55 = zext i8 %51 to i32
  %idx.ext56 = sext i32 %conv55 to i64
  %idx.neg57 = sub i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, ptr %49, i64 %idx.neg57
  %52 = load i8, ptr %add.ptr58, align 1
  %conv59 = zext i8 %52 to i32
  %53 = load i32, ptr %n, align 4
  %add60 = add nsw i32 %53, %conv59
  store i32 %add60, ptr %n, align 4
  %54 = load ptr, ptr %cp, align 8
  %55 = load ptr, ptr %p, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr61, ptr %p, align 8
  %56 = load i8, ptr %55, align 1
  %conv62 = zext i8 %56 to i32
  %idx.ext63 = sext i32 %conv62 to i64
  %idx.neg64 = sub i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %54, i64 %idx.neg64
  %57 = load i8, ptr %add.ptr65, align 1
  %conv66 = zext i8 %57 to i32
  %58 = load i32, ptr %n, align 4
  %add67 = add nsw i32 %58, %conv66
  store i32 %add67, ptr %n, align 4
  %59 = load ptr, ptr %cp, align 8
  %60 = load ptr, ptr %p, align 8
  %61 = load i8, ptr %60, align 1
  %conv68 = zext i8 %61 to i32
  %idx.ext69 = sext i32 %conv68 to i64
  %idx.neg70 = sub i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %59, i64 %idx.neg70
  %62 = load i8, ptr %add.ptr71, align 1
  %conv72 = zext i8 %62 to i32
  %63 = load i32, ptr %n, align 4
  %add73 = add nsw i32 %63, %conv72
  store i32 %add73, ptr %n, align 4
  %64 = load i32, ptr %n, align 4
  %65 = load i32, ptr %max_no.addr, align 4
  %cmp74 = icmp sle i32 %64, %65
  br i1 %cmp74, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %66 = load i32, ptr %max_no.addr, align 4
  %67 = load i32, ptr %n, align 4
  %sub76 = sub nsw i32 %66, %67
  %68 = load ptr, ptr %r.addr, align 8
  %69 = load i32, ptr %i, align 4
  %70 = load i32, ptr %x_size.addr, align 4
  %mul77 = mul nsw i32 %69, %70
  %71 = load i32, ptr %j, align 4
  %add78 = add nsw i32 %mul77, %71
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %68, i64 %idxprom79
  store i32 %sub76, ptr %arrayidx80, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %72 = load i32, ptr %j, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !38

for.end:                                          ; preds = %for.cond3
  br label %for.inc81

for.inc81:                                        ; preds = %for.end
  %73 = load i32, ptr %i, align 4
  %inc82 = add nsw i32 %73, 1
  store i32 %inc82, ptr %i, align 4
  br label %for.cond, !llvm.loop !39

for.end83:                                        ; preds = %for.cond
  store i32 2, ptr %i, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc395, %for.end83
  %74 = load i32, ptr %i, align 4
  %75 = load i32, ptr %y_size.addr, align 4
  %sub85 = sub nsw i32 %75, 2
  %cmp86 = icmp slt i32 %74, %sub85
  br i1 %cmp86, label %for.body88, label %for.end397

for.body88:                                       ; preds = %for.cond84
  store i32 2, ptr %j, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc392, %for.body88
  %76 = load i32, ptr %j, align 4
  %77 = load i32, ptr %x_size.addr, align 4
  %sub90 = sub nsw i32 %77, 2
  %cmp91 = icmp slt i32 %76, %sub90
  br i1 %cmp91, label %for.body93, label %for.end394

for.body93:                                       ; preds = %for.cond89
  %78 = load ptr, ptr %r.addr, align 8
  %79 = load i32, ptr %i, align 4
  %80 = load i32, ptr %x_size.addr, align 4
  %mul94 = mul nsw i32 %79, %80
  %81 = load i32, ptr %j, align 4
  %add95 = add nsw i32 %mul94, %81
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %78, i64 %idxprom96
  %82 = load i32, ptr %arrayidx97, align 4
  %cmp98 = icmp sgt i32 %82, 0
  br i1 %cmp98, label %if.then100, label %if.end391

if.then100:                                       ; preds = %for.body93
  %83 = load ptr, ptr %r.addr, align 8
  %84 = load i32, ptr %i, align 4
  %85 = load i32, ptr %x_size.addr, align 4
  %mul101 = mul nsw i32 %84, %85
  %86 = load i32, ptr %j, align 4
  %add102 = add nsw i32 %mul101, %86
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %83, i64 %idxprom103
  %87 = load i32, ptr %arrayidx104, align 4
  store i32 %87, ptr %m, align 4
  %88 = load i32, ptr %max_no.addr, align 4
  %89 = load i32, ptr %m, align 4
  %sub105 = sub nsw i32 %88, %89
  store i32 %sub105, ptr %n, align 4
  %90 = load ptr, ptr %bp.addr, align 8
  %91 = load ptr, ptr %in.addr, align 8
  %92 = load i32, ptr %i, align 4
  %93 = load i32, ptr %x_size.addr, align 4
  %mul106 = mul nsw i32 %92, %93
  %94 = load i32, ptr %j, align 4
  %add107 = add nsw i32 %mul106, %94
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %91, i64 %idxprom108
  %95 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %95 to i32
  %idx.ext111 = sext i32 %conv110 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %90, i64 %idx.ext111
  store ptr %add.ptr112, ptr %cp, align 8
  %96 = load i32, ptr %n, align 4
  %cmp113 = icmp sgt i32 %96, 250
  br i1 %cmp113, label %if.then115, label %if.else255

if.then115:                                       ; preds = %if.then100
  %97 = load ptr, ptr %in.addr, align 8
  %98 = load i32, ptr %i, align 4
  %sub116 = sub nsw i32 %98, 1
  %99 = load i32, ptr %x_size.addr, align 4
  %mul117 = mul nsw i32 %sub116, %99
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds i8, ptr %97, i64 %idx.ext118
  %100 = load i32, ptr %j, align 4
  %idx.ext120 = sext i32 %100 to i64
  %add.ptr121 = getelementptr inbounds i8, ptr %add.ptr119, i64 %idx.ext120
  %add.ptr122 = getelementptr inbounds i8, ptr %add.ptr121, i64 -1
  store ptr %add.ptr122, ptr %p, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  %101 = load ptr, ptr %cp, align 8
  %102 = load ptr, ptr %p, align 8
  %incdec.ptr123 = getelementptr inbounds i8, ptr %102, i32 1
  store ptr %incdec.ptr123, ptr %p, align 8
  %103 = load i8, ptr %102, align 1
  %conv124 = zext i8 %103 to i32
  %idx.ext125 = sext i32 %conv124 to i64
  %idx.neg126 = sub i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, ptr %101, i64 %idx.neg126
  %104 = load i8, ptr %add.ptr127, align 1
  store i8 %104, ptr %c, align 1
  %105 = load i8, ptr %c, align 1
  %conv128 = zext i8 %105 to i32
  %106 = load i32, ptr %x, align 4
  %sub129 = sub nsw i32 %106, %conv128
  store i32 %sub129, ptr %x, align 4
  %107 = load i8, ptr %c, align 1
  %conv130 = zext i8 %107 to i32
  %108 = load i32, ptr %y, align 4
  %sub131 = sub nsw i32 %108, %conv130
  store i32 %sub131, ptr %y, align 4
  %109 = load ptr, ptr %cp, align 8
  %110 = load ptr, ptr %p, align 8
  %incdec.ptr132 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr132, ptr %p, align 8
  %111 = load i8, ptr %110, align 1
  %conv133 = zext i8 %111 to i32
  %idx.ext134 = sext i32 %conv133 to i64
  %idx.neg135 = sub i64 0, %idx.ext134
  %add.ptr136 = getelementptr inbounds i8, ptr %109, i64 %idx.neg135
  %112 = load i8, ptr %add.ptr136, align 1
  store i8 %112, ptr %c, align 1
  %113 = load i8, ptr %c, align 1
  %conv137 = zext i8 %113 to i32
  %114 = load i32, ptr %y, align 4
  %sub138 = sub nsw i32 %114, %conv137
  store i32 %sub138, ptr %y, align 4
  %115 = load ptr, ptr %cp, align 8
  %116 = load ptr, ptr %p, align 8
  %117 = load i8, ptr %116, align 1
  %conv139 = zext i8 %117 to i32
  %idx.ext140 = sext i32 %conv139 to i64
  %idx.neg141 = sub i64 0, %idx.ext140
  %add.ptr142 = getelementptr inbounds i8, ptr %115, i64 %idx.neg141
  %118 = load i8, ptr %add.ptr142, align 1
  store i8 %118, ptr %c, align 1
  %119 = load i8, ptr %c, align 1
  %conv143 = zext i8 %119 to i32
  %120 = load i32, ptr %x, align 4
  %add144 = add nsw i32 %120, %conv143
  store i32 %add144, ptr %x, align 4
  %121 = load i8, ptr %c, align 1
  %conv145 = zext i8 %121 to i32
  %122 = load i32, ptr %y, align 4
  %sub146 = sub nsw i32 %122, %conv145
  store i32 %sub146, ptr %y, align 4
  %123 = load i32, ptr %x_size.addr, align 4
  %sub147 = sub nsw i32 %123, 2
  %124 = load ptr, ptr %p, align 8
  %idx.ext148 = sext i32 %sub147 to i64
  %add.ptr149 = getelementptr inbounds i8, ptr %124, i64 %idx.ext148
  store ptr %add.ptr149, ptr %p, align 8
  %125 = load ptr, ptr %cp, align 8
  %126 = load ptr, ptr %p, align 8
  %127 = load i8, ptr %126, align 1
  %conv150 = zext i8 %127 to i32
  %idx.ext151 = sext i32 %conv150 to i64
  %idx.neg152 = sub i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, ptr %125, i64 %idx.neg152
  %128 = load i8, ptr %add.ptr153, align 1
  store i8 %128, ptr %c, align 1
  %129 = load i8, ptr %c, align 1
  %conv154 = zext i8 %129 to i32
  %130 = load i32, ptr %x, align 4
  %sub155 = sub nsw i32 %130, %conv154
  store i32 %sub155, ptr %x, align 4
  %131 = load ptr, ptr %p, align 8
  %add.ptr156 = getelementptr inbounds i8, ptr %131, i64 2
  store ptr %add.ptr156, ptr %p, align 8
  %132 = load ptr, ptr %cp, align 8
  %133 = load ptr, ptr %p, align 8
  %134 = load i8, ptr %133, align 1
  %conv157 = zext i8 %134 to i32
  %idx.ext158 = sext i32 %conv157 to i64
  %idx.neg159 = sub i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, ptr %132, i64 %idx.neg159
  %135 = load i8, ptr %add.ptr160, align 1
  store i8 %135, ptr %c, align 1
  %136 = load i8, ptr %c, align 1
  %conv161 = zext i8 %136 to i32
  %137 = load i32, ptr %x, align 4
  %add162 = add nsw i32 %137, %conv161
  store i32 %add162, ptr %x, align 4
  %138 = load i32, ptr %x_size.addr, align 4
  %sub163 = sub nsw i32 %138, 2
  %139 = load ptr, ptr %p, align 8
  %idx.ext164 = sext i32 %sub163 to i64
  %add.ptr165 = getelementptr inbounds i8, ptr %139, i64 %idx.ext164
  store ptr %add.ptr165, ptr %p, align 8
  %140 = load ptr, ptr %cp, align 8
  %141 = load ptr, ptr %p, align 8
  %incdec.ptr166 = getelementptr inbounds i8, ptr %141, i32 1
  store ptr %incdec.ptr166, ptr %p, align 8
  %142 = load i8, ptr %141, align 1
  %conv167 = zext i8 %142 to i32
  %idx.ext168 = sext i32 %conv167 to i64
  %idx.neg169 = sub i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, ptr %140, i64 %idx.neg169
  %143 = load i8, ptr %add.ptr170, align 1
  store i8 %143, ptr %c, align 1
  %144 = load i8, ptr %c, align 1
  %conv171 = zext i8 %144 to i32
  %145 = load i32, ptr %x, align 4
  %sub172 = sub nsw i32 %145, %conv171
  store i32 %sub172, ptr %x, align 4
  %146 = load i8, ptr %c, align 1
  %conv173 = zext i8 %146 to i32
  %147 = load i32, ptr %y, align 4
  %add174 = add nsw i32 %147, %conv173
  store i32 %add174, ptr %y, align 4
  %148 = load ptr, ptr %cp, align 8
  %149 = load ptr, ptr %p, align 8
  %incdec.ptr175 = getelementptr inbounds i8, ptr %149, i32 1
  store ptr %incdec.ptr175, ptr %p, align 8
  %150 = load i8, ptr %149, align 1
  %conv176 = zext i8 %150 to i32
  %idx.ext177 = sext i32 %conv176 to i64
  %idx.neg178 = sub i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, ptr %148, i64 %idx.neg178
  %151 = load i8, ptr %add.ptr179, align 1
  store i8 %151, ptr %c, align 1
  %152 = load i8, ptr %c, align 1
  %conv180 = zext i8 %152 to i32
  %153 = load i32, ptr %y, align 4
  %add181 = add nsw i32 %153, %conv180
  store i32 %add181, ptr %y, align 4
  %154 = load ptr, ptr %cp, align 8
  %155 = load ptr, ptr %p, align 8
  %156 = load i8, ptr %155, align 1
  %conv182 = zext i8 %156 to i32
  %idx.ext183 = sext i32 %conv182 to i64
  %idx.neg184 = sub i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %154, i64 %idx.neg184
  %157 = load i8, ptr %add.ptr185, align 1
  store i8 %157, ptr %c, align 1
  %158 = load i8, ptr %c, align 1
  %conv186 = zext i8 %158 to i32
  %159 = load i32, ptr %x, align 4
  %add187 = add nsw i32 %159, %conv186
  store i32 %add187, ptr %x, align 4
  %160 = load i8, ptr %c, align 1
  %conv188 = zext i8 %160 to i32
  %161 = load i32, ptr %y, align 4
  %add189 = add nsw i32 %161, %conv188
  store i32 %add189, ptr %y, align 4
  %162 = load i32, ptr %x, align 4
  %163 = load i32, ptr %x, align 4
  %mul190 = mul nsw i32 %162, %163
  %164 = load i32, ptr %y, align 4
  %165 = load i32, ptr %y, align 4
  %mul191 = mul nsw i32 %164, %165
  %add192 = add nsw i32 %mul190, %mul191
  %conv193 = sitofp i32 %add192 to float
  %conv194 = fpext float %conv193 to double
  %166 = call double @llvm.sqrt.f64(double %conv194)
  %conv195 = fptrunc double %166 to float
  store float %conv195, ptr %z, align 4
  %167 = load float, ptr %z, align 4
  %conv196 = fpext float %167 to double
  %168 = load i32, ptr %n, align 4
  %conv197 = sitofp i32 %168 to float
  %conv198 = fpext float %conv197 to double
  %mul199 = fmul double 4.000000e-01, %conv198
  %cmp200 = fcmp ogt double %conv196, %mul199
  br i1 %cmp200, label %if.then202, label %if.else253

if.then202:                                       ; preds = %if.then115
  store i32 0, ptr %do_symmetry, align 4
  %169 = load i32, ptr %x, align 4
  %cmp203 = icmp eq i32 %169, 0
  br i1 %cmp203, label %if.then205, label %if.else

if.then205:                                       ; preds = %if.then202
  store float 1.000000e+06, ptr %z, align 4
  br label %if.end208

if.else:                                          ; preds = %if.then202
  %170 = load i32, ptr %y, align 4
  %conv206 = sitofp i32 %170 to float
  %171 = load i32, ptr %x, align 4
  %conv207 = sitofp i32 %171 to float
  %div = fdiv float %conv206, %conv207
  store float %div, ptr %z, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.else, %if.then205
  %172 = load float, ptr %z, align 4
  %cmp209 = fcmp olt float %172, 0.000000e+00
  br i1 %cmp209, label %if.then211, label %if.else212

if.then211:                                       ; preds = %if.end208
  %173 = load float, ptr %z, align 4
  %fneg = fneg float %173
  store float %fneg, ptr %z, align 4
  store i32 -1, ptr %w, align 4
  br label %if.end213

if.else212:                                       ; preds = %if.end208
  store i32 1, ptr %w, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.else212, %if.then211
  %174 = load float, ptr %z, align 4
  %conv214 = fpext float %174 to double
  %cmp215 = fcmp olt double %conv214, 5.000000e-01
  br i1 %cmp215, label %if.then217, label %if.else218

if.then217:                                       ; preds = %if.end213
  store i32 0, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end230

if.else218:                                       ; preds = %if.end213
  %175 = load float, ptr %z, align 4
  %conv219 = fpext float %175 to double
  %cmp220 = fcmp ogt double %conv219, 2.000000e+00
  br i1 %cmp220, label %if.then222, label %if.else223

if.then222:                                       ; preds = %if.else218
  store i32 1, ptr %a, align 4
  store i32 0, ptr %b, align 4
  br label %if.end229

if.else223:                                       ; preds = %if.else218
  %176 = load i32, ptr %w, align 4
  %cmp224 = icmp sgt i32 %176, 0
  br i1 %cmp224, label %if.then226, label %if.else227

if.then226:                                       ; preds = %if.else223
  store i32 1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end228

if.else227:                                       ; preds = %if.else223
  store i32 -1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.else227, %if.then226
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %if.then222
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.then217
  %177 = load i32, ptr %m, align 4
  %178 = load ptr, ptr %r.addr, align 8
  %179 = load i32, ptr %i, align 4
  %180 = load i32, ptr %a, align 4
  %add231 = add nsw i32 %179, %180
  %181 = load i32, ptr %x_size.addr, align 4
  %mul232 = mul nsw i32 %add231, %181
  %182 = load i32, ptr %j, align 4
  %add233 = add nsw i32 %mul232, %182
  %183 = load i32, ptr %b, align 4
  %add234 = add nsw i32 %add233, %183
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %178, i64 %idxprom235
  %184 = load i32, ptr %arrayidx236, align 4
  %cmp237 = icmp sgt i32 %177, %184
  br i1 %cmp237, label %land.lhs.true, label %if.end252

land.lhs.true:                                    ; preds = %if.end230
  %185 = load i32, ptr %m, align 4
  %186 = load ptr, ptr %r.addr, align 8
  %187 = load i32, ptr %i, align 4
  %188 = load i32, ptr %a, align 4
  %sub239 = sub nsw i32 %187, %188
  %189 = load i32, ptr %x_size.addr, align 4
  %mul240 = mul nsw i32 %sub239, %189
  %190 = load i32, ptr %j, align 4
  %add241 = add nsw i32 %mul240, %190
  %191 = load i32, ptr %b, align 4
  %sub242 = sub nsw i32 %add241, %191
  %idxprom243 = sext i32 %sub242 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %186, i64 %idxprom243
  %192 = load i32, ptr %arrayidx244, align 4
  %cmp245 = icmp sge i32 %185, %192
  br i1 %cmp245, label %if.then247, label %if.end252

if.then247:                                       ; preds = %land.lhs.true
  %193 = load ptr, ptr %mid.addr, align 8
  %194 = load i32, ptr %i, align 4
  %195 = load i32, ptr %x_size.addr, align 4
  %mul248 = mul nsw i32 %194, %195
  %196 = load i32, ptr %j, align 4
  %add249 = add nsw i32 %mul248, %196
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds i8, ptr %193, i64 %idxprom250
  store i8 1, ptr %arrayidx251, align 1
  br label %if.end252

if.end252:                                        ; preds = %if.then247, %land.lhs.true, %if.end230
  br label %if.end254

if.else253:                                       ; preds = %if.then115
  store i32 1, ptr %do_symmetry, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.else253, %if.end252
  br label %if.end256

if.else255:                                       ; preds = %if.then100
  store i32 1, ptr %do_symmetry, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.else255, %if.end254
  %197 = load i32, ptr %do_symmetry, align 4
  %cmp257 = icmp eq i32 %197, 1
  br i1 %cmp257, label %if.then259, label %if.end390

if.then259:                                       ; preds = %if.end256
  %198 = load ptr, ptr %in.addr, align 8
  %199 = load i32, ptr %i, align 4
  %sub260 = sub nsw i32 %199, 1
  %200 = load i32, ptr %x_size.addr, align 4
  %mul261 = mul nsw i32 %sub260, %200
  %idx.ext262 = sext i32 %mul261 to i64
  %add.ptr263 = getelementptr inbounds i8, ptr %198, i64 %idx.ext262
  %201 = load i32, ptr %j, align 4
  %idx.ext264 = sext i32 %201 to i64
  %add.ptr265 = getelementptr inbounds i8, ptr %add.ptr263, i64 %idx.ext264
  %add.ptr266 = getelementptr inbounds i8, ptr %add.ptr265, i64 -1
  store ptr %add.ptr266, ptr %p, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  store i32 0, ptr %w, align 4
  %202 = load ptr, ptr %cp, align 8
  %203 = load ptr, ptr %p, align 8
  %incdec.ptr267 = getelementptr inbounds i8, ptr %203, i32 1
  store ptr %incdec.ptr267, ptr %p, align 8
  %204 = load i8, ptr %203, align 1
  %conv268 = zext i8 %204 to i32
  %idx.ext269 = sext i32 %conv268 to i64
  %idx.neg270 = sub i64 0, %idx.ext269
  %add.ptr271 = getelementptr inbounds i8, ptr %202, i64 %idx.neg270
  %205 = load i8, ptr %add.ptr271, align 1
  store i8 %205, ptr %c, align 1
  %206 = load i8, ptr %c, align 1
  %conv272 = zext i8 %206 to i32
  %207 = load i32, ptr %x, align 4
  %add273 = add nsw i32 %207, %conv272
  store i32 %add273, ptr %x, align 4
  %208 = load i8, ptr %c, align 1
  %conv274 = zext i8 %208 to i32
  %209 = load i32, ptr %y, align 4
  %add275 = add nsw i32 %209, %conv274
  store i32 %add275, ptr %y, align 4
  %210 = load i8, ptr %c, align 1
  %conv276 = zext i8 %210 to i32
  %211 = load i32, ptr %w, align 4
  %add277 = add nsw i32 %211, %conv276
  store i32 %add277, ptr %w, align 4
  %212 = load ptr, ptr %cp, align 8
  %213 = load ptr, ptr %p, align 8
  %incdec.ptr278 = getelementptr inbounds i8, ptr %213, i32 1
  store ptr %incdec.ptr278, ptr %p, align 8
  %214 = load i8, ptr %213, align 1
  %conv279 = zext i8 %214 to i32
  %idx.ext280 = sext i32 %conv279 to i64
  %idx.neg281 = sub i64 0, %idx.ext280
  %add.ptr282 = getelementptr inbounds i8, ptr %212, i64 %idx.neg281
  %215 = load i8, ptr %add.ptr282, align 1
  store i8 %215, ptr %c, align 1
  %216 = load i8, ptr %c, align 1
  %conv283 = zext i8 %216 to i32
  %217 = load i32, ptr %y, align 4
  %add284 = add nsw i32 %217, %conv283
  store i32 %add284, ptr %y, align 4
  %218 = load ptr, ptr %cp, align 8
  %219 = load ptr, ptr %p, align 8
  %220 = load i8, ptr %219, align 1
  %conv285 = zext i8 %220 to i32
  %idx.ext286 = sext i32 %conv285 to i64
  %idx.neg287 = sub i64 0, %idx.ext286
  %add.ptr288 = getelementptr inbounds i8, ptr %218, i64 %idx.neg287
  %221 = load i8, ptr %add.ptr288, align 1
  store i8 %221, ptr %c, align 1
  %222 = load i8, ptr %c, align 1
  %conv289 = zext i8 %222 to i32
  %223 = load i32, ptr %x, align 4
  %add290 = add nsw i32 %223, %conv289
  store i32 %add290, ptr %x, align 4
  %224 = load i8, ptr %c, align 1
  %conv291 = zext i8 %224 to i32
  %225 = load i32, ptr %y, align 4
  %add292 = add nsw i32 %225, %conv291
  store i32 %add292, ptr %y, align 4
  %226 = load i8, ptr %c, align 1
  %conv293 = zext i8 %226 to i32
  %227 = load i32, ptr %w, align 4
  %sub294 = sub nsw i32 %227, %conv293
  store i32 %sub294, ptr %w, align 4
  %228 = load i32, ptr %x_size.addr, align 4
  %sub295 = sub nsw i32 %228, 2
  %229 = load ptr, ptr %p, align 8
  %idx.ext296 = sext i32 %sub295 to i64
  %add.ptr297 = getelementptr inbounds i8, ptr %229, i64 %idx.ext296
  store ptr %add.ptr297, ptr %p, align 8
  %230 = load ptr, ptr %cp, align 8
  %231 = load ptr, ptr %p, align 8
  %232 = load i8, ptr %231, align 1
  %conv298 = zext i8 %232 to i32
  %idx.ext299 = sext i32 %conv298 to i64
  %idx.neg300 = sub i64 0, %idx.ext299
  %add.ptr301 = getelementptr inbounds i8, ptr %230, i64 %idx.neg300
  %233 = load i8, ptr %add.ptr301, align 1
  store i8 %233, ptr %c, align 1
  %234 = load i8, ptr %c, align 1
  %conv302 = zext i8 %234 to i32
  %235 = load i32, ptr %x, align 4
  %add303 = add nsw i32 %235, %conv302
  store i32 %add303, ptr %x, align 4
  %236 = load ptr, ptr %p, align 8
  %add.ptr304 = getelementptr inbounds i8, ptr %236, i64 2
  store ptr %add.ptr304, ptr %p, align 8
  %237 = load ptr, ptr %cp, align 8
  %238 = load ptr, ptr %p, align 8
  %239 = load i8, ptr %238, align 1
  %conv305 = zext i8 %239 to i32
  %idx.ext306 = sext i32 %conv305 to i64
  %idx.neg307 = sub i64 0, %idx.ext306
  %add.ptr308 = getelementptr inbounds i8, ptr %237, i64 %idx.neg307
  %240 = load i8, ptr %add.ptr308, align 1
  store i8 %240, ptr %c, align 1
  %241 = load i8, ptr %c, align 1
  %conv309 = zext i8 %241 to i32
  %242 = load i32, ptr %x, align 4
  %add310 = add nsw i32 %242, %conv309
  store i32 %add310, ptr %x, align 4
  %243 = load i32, ptr %x_size.addr, align 4
  %sub311 = sub nsw i32 %243, 2
  %244 = load ptr, ptr %p, align 8
  %idx.ext312 = sext i32 %sub311 to i64
  %add.ptr313 = getelementptr inbounds i8, ptr %244, i64 %idx.ext312
  store ptr %add.ptr313, ptr %p, align 8
  %245 = load ptr, ptr %cp, align 8
  %246 = load ptr, ptr %p, align 8
  %incdec.ptr314 = getelementptr inbounds i8, ptr %246, i32 1
  store ptr %incdec.ptr314, ptr %p, align 8
  %247 = load i8, ptr %246, align 1
  %conv315 = zext i8 %247 to i32
  %idx.ext316 = sext i32 %conv315 to i64
  %idx.neg317 = sub i64 0, %idx.ext316
  %add.ptr318 = getelementptr inbounds i8, ptr %245, i64 %idx.neg317
  %248 = load i8, ptr %add.ptr318, align 1
  store i8 %248, ptr %c, align 1
  %249 = load i8, ptr %c, align 1
  %conv319 = zext i8 %249 to i32
  %250 = load i32, ptr %x, align 4
  %add320 = add nsw i32 %250, %conv319
  store i32 %add320, ptr %x, align 4
  %251 = load i8, ptr %c, align 1
  %conv321 = zext i8 %251 to i32
  %252 = load i32, ptr %y, align 4
  %add322 = add nsw i32 %252, %conv321
  store i32 %add322, ptr %y, align 4
  %253 = load i8, ptr %c, align 1
  %conv323 = zext i8 %253 to i32
  %254 = load i32, ptr %w, align 4
  %sub324 = sub nsw i32 %254, %conv323
  store i32 %sub324, ptr %w, align 4
  %255 = load ptr, ptr %cp, align 8
  %256 = load ptr, ptr %p, align 8
  %incdec.ptr325 = getelementptr inbounds i8, ptr %256, i32 1
  store ptr %incdec.ptr325, ptr %p, align 8
  %257 = load i8, ptr %256, align 1
  %conv326 = zext i8 %257 to i32
  %idx.ext327 = sext i32 %conv326 to i64
  %idx.neg328 = sub i64 0, %idx.ext327
  %add.ptr329 = getelementptr inbounds i8, ptr %255, i64 %idx.neg328
  %258 = load i8, ptr %add.ptr329, align 1
  store i8 %258, ptr %c, align 1
  %259 = load i8, ptr %c, align 1
  %conv330 = zext i8 %259 to i32
  %260 = load i32, ptr %y, align 4
  %add331 = add nsw i32 %260, %conv330
  store i32 %add331, ptr %y, align 4
  %261 = load ptr, ptr %cp, align 8
  %262 = load ptr, ptr %p, align 8
  %263 = load i8, ptr %262, align 1
  %conv332 = zext i8 %263 to i32
  %idx.ext333 = sext i32 %conv332 to i64
  %idx.neg334 = sub i64 0, %idx.ext333
  %add.ptr335 = getelementptr inbounds i8, ptr %261, i64 %idx.neg334
  %264 = load i8, ptr %add.ptr335, align 1
  store i8 %264, ptr %c, align 1
  %265 = load i8, ptr %c, align 1
  %conv336 = zext i8 %265 to i32
  %266 = load i32, ptr %x, align 4
  %add337 = add nsw i32 %266, %conv336
  store i32 %add337, ptr %x, align 4
  %267 = load i8, ptr %c, align 1
  %conv338 = zext i8 %267 to i32
  %268 = load i32, ptr %y, align 4
  %add339 = add nsw i32 %268, %conv338
  store i32 %add339, ptr %y, align 4
  %269 = load i8, ptr %c, align 1
  %conv340 = zext i8 %269 to i32
  %270 = load i32, ptr %w, align 4
  %add341 = add nsw i32 %270, %conv340
  store i32 %add341, ptr %w, align 4
  %271 = load i32, ptr %y, align 4
  %cmp342 = icmp eq i32 %271, 0
  br i1 %cmp342, label %if.then344, label %if.else345

if.then344:                                       ; preds = %if.then259
  store float 1.000000e+06, ptr %z, align 4
  br label %if.end349

if.else345:                                       ; preds = %if.then259
  %272 = load i32, ptr %x, align 4
  %conv346 = sitofp i32 %272 to float
  %273 = load i32, ptr %y, align 4
  %conv347 = sitofp i32 %273 to float
  %div348 = fdiv float %conv346, %conv347
  store float %div348, ptr %z, align 4
  br label %if.end349

if.end349:                                        ; preds = %if.else345, %if.then344
  %274 = load float, ptr %z, align 4
  %conv350 = fpext float %274 to double
  %cmp351 = fcmp olt double %conv350, 5.000000e-01
  br i1 %cmp351, label %if.then353, label %if.else354

if.then353:                                       ; preds = %if.end349
  store i32 0, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end366

if.else354:                                       ; preds = %if.end349
  %275 = load float, ptr %z, align 4
  %conv355 = fpext float %275 to double
  %cmp356 = fcmp ogt double %conv355, 2.000000e+00
  br i1 %cmp356, label %if.then358, label %if.else359

if.then358:                                       ; preds = %if.else354
  store i32 1, ptr %a, align 4
  store i32 0, ptr %b, align 4
  br label %if.end365

if.else359:                                       ; preds = %if.else354
  %276 = load i32, ptr %w, align 4
  %cmp360 = icmp sgt i32 %276, 0
  br i1 %cmp360, label %if.then362, label %if.else363

if.then362:                                       ; preds = %if.else359
  store i32 -1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end364

if.else363:                                       ; preds = %if.else359
  store i32 1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  br label %if.end364

if.end364:                                        ; preds = %if.else363, %if.then362
  br label %if.end365

if.end365:                                        ; preds = %if.end364, %if.then358
  br label %if.end366

if.end366:                                        ; preds = %if.end365, %if.then353
  %277 = load i32, ptr %m, align 4
  %278 = load ptr, ptr %r.addr, align 8
  %279 = load i32, ptr %i, align 4
  %280 = load i32, ptr %a, align 4
  %add367 = add nsw i32 %279, %280
  %281 = load i32, ptr %x_size.addr, align 4
  %mul368 = mul nsw i32 %add367, %281
  %282 = load i32, ptr %j, align 4
  %add369 = add nsw i32 %mul368, %282
  %283 = load i32, ptr %b, align 4
  %add370 = add nsw i32 %add369, %283
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds i32, ptr %278, i64 %idxprom371
  %284 = load i32, ptr %arrayidx372, align 4
  %cmp373 = icmp sgt i32 %277, %284
  br i1 %cmp373, label %land.lhs.true375, label %if.end389

land.lhs.true375:                                 ; preds = %if.end366
  %285 = load i32, ptr %m, align 4
  %286 = load ptr, ptr %r.addr, align 8
  %287 = load i32, ptr %i, align 4
  %288 = load i32, ptr %a, align 4
  %sub376 = sub nsw i32 %287, %288
  %289 = load i32, ptr %x_size.addr, align 4
  %mul377 = mul nsw i32 %sub376, %289
  %290 = load i32, ptr %j, align 4
  %add378 = add nsw i32 %mul377, %290
  %291 = load i32, ptr %b, align 4
  %sub379 = sub nsw i32 %add378, %291
  %idxprom380 = sext i32 %sub379 to i64
  %arrayidx381 = getelementptr inbounds i32, ptr %286, i64 %idxprom380
  %292 = load i32, ptr %arrayidx381, align 4
  %cmp382 = icmp sge i32 %285, %292
  br i1 %cmp382, label %if.then384, label %if.end389

if.then384:                                       ; preds = %land.lhs.true375
  %293 = load ptr, ptr %mid.addr, align 8
  %294 = load i32, ptr %i, align 4
  %295 = load i32, ptr %x_size.addr, align 4
  %mul385 = mul nsw i32 %294, %295
  %296 = load i32, ptr %j, align 4
  %add386 = add nsw i32 %mul385, %296
  %idxprom387 = sext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds i8, ptr %293, i64 %idxprom387
  store i8 2, ptr %arrayidx388, align 1
  br label %if.end389

if.end389:                                        ; preds = %if.then384, %land.lhs.true375, %if.end366
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %if.end256
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %for.body93
  br label %for.inc392

for.inc392:                                       ; preds = %if.end391
  %297 = load i32, ptr %j, align 4
  %inc393 = add nsw i32 %297, 1
  store i32 %inc393, ptr %j, align 4
  br label %for.cond89, !llvm.loop !40

for.end394:                                       ; preds = %for.cond89
  br label %for.inc395

for.inc395:                                       ; preds = %for.end394
  %298 = load i32, ptr %i, align 4
  %inc396 = add nsw i32 %298, 1
  store i32 %inc396, ptr %i, align 4
  br label %for.cond84, !llvm.loop !41

for.end397:                                       ; preds = %for.cond84
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @corner_draw(ptr noundef %in, ptr noundef %corner_list, i32 noundef %x_size, i32 noundef %drawing_mode) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %corner_list.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %drawing_mode.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store ptr %corner_list, ptr %corner_list.addr, align 8
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %drawing_mode, ptr %drawing_mode.addr, align 4
  store i32 0, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %corner_list.addr, align 8
  %1 = load i32, ptr %n, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.anon, ptr %0, i64 %idxprom
  %info = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 2
  %2 = load i32, ptr %info, align 4
  %cmp = icmp ne i32 %2, 7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %drawing_mode.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load ptr, ptr %corner_list.addr, align 8
  %6 = load i32, ptr %n, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds %struct.anon, ptr %5, i64 %idxprom2
  %y = getelementptr inbounds %struct.anon, ptr %arrayidx3, i32 0, i32 1
  %7 = load i32, ptr %y, align 4
  %sub = sub nsw i32 %7, 1
  %8 = load i32, ptr %x_size.addr, align 4
  %mul = mul nsw i32 %sub, %8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %9 = load ptr, ptr %corner_list.addr, align 8
  %10 = load i32, ptr %n, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds %struct.anon, ptr %9, i64 %idxprom4
  %x = getelementptr inbounds %struct.anon, ptr %arrayidx5, i32 0, i32 0
  %11 = load i32, ptr %x, align 4
  %idx.ext6 = sext i32 %11 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr7, i64 -1
  store ptr %add.ptr8, ptr %p, align 8
  %12 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i8 -1, ptr %12, align 1
  %13 = load ptr, ptr %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %p, align 8
  store i8 -1, ptr %13, align 1
  %14 = load ptr, ptr %p, align 8
  store i8 -1, ptr %14, align 1
  %15 = load i32, ptr %x_size.addr, align 4
  %sub10 = sub nsw i32 %15, 2
  %16 = load ptr, ptr %p, align 8
  %idx.ext11 = sext i32 %sub10 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %16, i64 %idx.ext11
  store ptr %add.ptr12, ptr %p, align 8
  %17 = load ptr, ptr %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr13, ptr %p, align 8
  store i8 -1, ptr %17, align 1
  %18 = load ptr, ptr %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr14, ptr %p, align 8
  store i8 0, ptr %18, align 1
  %19 = load ptr, ptr %p, align 8
  store i8 -1, ptr %19, align 1
  %20 = load i32, ptr %x_size.addr, align 4
  %sub15 = sub nsw i32 %20, 2
  %21 = load ptr, ptr %p, align 8
  %idx.ext16 = sext i32 %sub15 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %21, i64 %idx.ext16
  store ptr %add.ptr17, ptr %p, align 8
  %22 = load ptr, ptr %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr18, ptr %p, align 8
  store i8 -1, ptr %22, align 1
  %23 = load ptr, ptr %p, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr19, ptr %p, align 8
  store i8 -1, ptr %23, align 1
  %24 = load ptr, ptr %p, align 8
  store i8 -1, ptr %24, align 1
  %25 = load i32, ptr %n, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %n, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %26 = load ptr, ptr %in.addr, align 8
  %27 = load ptr, ptr %corner_list.addr, align 8
  %28 = load i32, ptr %n, align 4
  %idxprom20 = sext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds %struct.anon, ptr %27, i64 %idxprom20
  %y22 = getelementptr inbounds %struct.anon, ptr %arrayidx21, i32 0, i32 1
  %29 = load i32, ptr %y22, align 4
  %30 = load i32, ptr %x_size.addr, align 4
  %mul23 = mul nsw i32 %29, %30
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %26, i64 %idx.ext24
  %31 = load ptr, ptr %corner_list.addr, align 8
  %32 = load i32, ptr %n, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds %struct.anon, ptr %31, i64 %idxprom26
  %x28 = getelementptr inbounds %struct.anon, ptr %arrayidx27, i32 0, i32 0
  %33 = load i32, ptr %x28, align 4
  %idx.ext29 = sext i32 %33 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idx.ext29
  store ptr %add.ptr30, ptr %p, align 8
  %34 = load ptr, ptr %p, align 8
  store i8 0, ptr %34, align 1
  %35 = load i32, ptr %n, align 4
  %inc31 = add nsw i32 %35, 1
  store i32 %inc31, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %c = alloca i8, align 1
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  store i32 %max_no, ptr %max_no.addr, align 4
  store ptr %corner_list, ptr %corner_list.addr, align 8
  store i32 %x_size, ptr %x_size.addr, align 4
  store i32 %y_size, ptr %y_size.addr, align 4
  %0 = load ptr, ptr %r.addr, align 8
  %1 = load i32, ptr %x_size.addr, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %3 = load ptr, ptr %r.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %mul1, i64 noundef %4) #9
  %5 = load i32, ptr %x_size.addr, align 4
  %6 = load i32, ptr %y_size.addr, align 4
  %mul2 = mul nsw i32 %5, %6
  %conv3 = sext i32 %mul2 to i64
  %mul4 = mul i64 %conv3, 4
  %call5 = call ptr @malloc(i64 noundef %mul4) #8
  store ptr %call5, ptr %cgx, align 8
  %7 = load i32, ptr %x_size.addr, align 4
  %8 = load i32, ptr %y_size.addr, align 4
  %mul6 = mul nsw i32 %7, %8
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call ptr @malloc(i64 noundef %mul8) #8
  store ptr %call9, ptr %cgy, align 8
  store i32 5, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc909, %entry
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %y_size.addr, align 4
  %sub = sub nsw i32 %10, 5
  %cmp = icmp slt i32 %9, %sub
  br i1 %cmp, label %for.body, label %for.end911

for.body:                                         ; preds = %for.cond
  store i32 5, ptr %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %11 = load i32, ptr %j, align 4
  %12 = load i32, ptr %x_size.addr, align 4
  %sub12 = sub nsw i32 %12, 5
  %cmp13 = icmp slt i32 %11, %sub12
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond11
  store i32 100, ptr %n, align 4
  %13 = load ptr, ptr %in.addr, align 8
  %14 = load i32, ptr %i, align 4
  %sub16 = sub nsw i32 %14, 3
  %15 = load i32, ptr %x_size.addr, align 4
  %mul17 = mul nsw i32 %sub16, %15
  %idx.ext = sext i32 %mul17 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  %16 = load i32, ptr %j, align 4
  %idx.ext18 = sext i32 %16 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext18
  %add.ptr20 = getelementptr inbounds i8, ptr %add.ptr19, i64 -1
  store ptr %add.ptr20, ptr %p, align 8
  %17 = load ptr, ptr %bp.addr, align 8
  %18 = load ptr, ptr %in.addr, align 8
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %x_size.addr, align 4
  %mul21 = mul nsw i32 %19, %20
  %21 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul21, %21
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %idxprom
  %22 = load i8, ptr %arrayidx, align 1
  %conv22 = zext i8 %22 to i32
  %idx.ext23 = sext i32 %conv22 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %17, i64 %idx.ext23
  store ptr %add.ptr24, ptr %cp, align 8
  %23 = load ptr, ptr %cp, align 8
  %24 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %25 = load i8, ptr %24, align 1
  %conv25 = zext i8 %25 to i32
  %idx.ext26 = sext i32 %conv25 to i64
  %idx.neg = sub i64 0, %idx.ext26
  %add.ptr27 = getelementptr inbounds i8, ptr %23, i64 %idx.neg
  %26 = load i8, ptr %add.ptr27, align 1
  %conv28 = zext i8 %26 to i32
  %27 = load i32, ptr %n, align 4
  %add29 = add nsw i32 %27, %conv28
  store i32 %add29, ptr %n, align 4
  %28 = load ptr, ptr %cp, align 8
  %29 = load ptr, ptr %p, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr30, ptr %p, align 8
  %30 = load i8, ptr %29, align 1
  %conv31 = zext i8 %30 to i32
  %idx.ext32 = sext i32 %conv31 to i64
  %idx.neg33 = sub i64 0, %idx.ext32
  %add.ptr34 = getelementptr inbounds i8, ptr %28, i64 %idx.neg33
  %31 = load i8, ptr %add.ptr34, align 1
  %conv35 = zext i8 %31 to i32
  %32 = load i32, ptr %n, align 4
  %add36 = add nsw i32 %32, %conv35
  store i32 %add36, ptr %n, align 4
  %33 = load ptr, ptr %cp, align 8
  %34 = load ptr, ptr %p, align 8
  %35 = load i8, ptr %34, align 1
  %conv37 = zext i8 %35 to i32
  %idx.ext38 = sext i32 %conv37 to i64
  %idx.neg39 = sub i64 0, %idx.ext38
  %add.ptr40 = getelementptr inbounds i8, ptr %33, i64 %idx.neg39
  %36 = load i8, ptr %add.ptr40, align 1
  %conv41 = zext i8 %36 to i32
  %37 = load i32, ptr %n, align 4
  %add42 = add nsw i32 %37, %conv41
  store i32 %add42, ptr %n, align 4
  %38 = load i32, ptr %x_size.addr, align 4
  %sub43 = sub nsw i32 %38, 3
  %39 = load ptr, ptr %p, align 8
  %idx.ext44 = sext i32 %sub43 to i64
  %add.ptr45 = getelementptr inbounds i8, ptr %39, i64 %idx.ext44
  store ptr %add.ptr45, ptr %p, align 8
  %40 = load ptr, ptr %cp, align 8
  %41 = load ptr, ptr %p, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr46, ptr %p, align 8
  %42 = load i8, ptr %41, align 1
  %conv47 = zext i8 %42 to i32
  %idx.ext48 = sext i32 %conv47 to i64
  %idx.neg49 = sub i64 0, %idx.ext48
  %add.ptr50 = getelementptr inbounds i8, ptr %40, i64 %idx.neg49
  %43 = load i8, ptr %add.ptr50, align 1
  %conv51 = zext i8 %43 to i32
  %44 = load i32, ptr %n, align 4
  %add52 = add nsw i32 %44, %conv51
  store i32 %add52, ptr %n, align 4
  %45 = load ptr, ptr %cp, align 8
  %46 = load ptr, ptr %p, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr53, ptr %p, align 8
  %47 = load i8, ptr %46, align 1
  %conv54 = zext i8 %47 to i32
  %idx.ext55 = sext i32 %conv54 to i64
  %idx.neg56 = sub i64 0, %idx.ext55
  %add.ptr57 = getelementptr inbounds i8, ptr %45, i64 %idx.neg56
  %48 = load i8, ptr %add.ptr57, align 1
  %conv58 = zext i8 %48 to i32
  %49 = load i32, ptr %n, align 4
  %add59 = add nsw i32 %49, %conv58
  store i32 %add59, ptr %n, align 4
  %50 = load ptr, ptr %cp, align 8
  %51 = load ptr, ptr %p, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr60, ptr %p, align 8
  %52 = load i8, ptr %51, align 1
  %conv61 = zext i8 %52 to i32
  %idx.ext62 = sext i32 %conv61 to i64
  %idx.neg63 = sub i64 0, %idx.ext62
  %add.ptr64 = getelementptr inbounds i8, ptr %50, i64 %idx.neg63
  %53 = load i8, ptr %add.ptr64, align 1
  %conv65 = zext i8 %53 to i32
  %54 = load i32, ptr %n, align 4
  %add66 = add nsw i32 %54, %conv65
  store i32 %add66, ptr %n, align 4
  %55 = load ptr, ptr %cp, align 8
  %56 = load ptr, ptr %p, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr67, ptr %p, align 8
  %57 = load i8, ptr %56, align 1
  %conv68 = zext i8 %57 to i32
  %idx.ext69 = sext i32 %conv68 to i64
  %idx.neg70 = sub i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %55, i64 %idx.neg70
  %58 = load i8, ptr %add.ptr71, align 1
  %conv72 = zext i8 %58 to i32
  %59 = load i32, ptr %n, align 4
  %add73 = add nsw i32 %59, %conv72
  store i32 %add73, ptr %n, align 4
  %60 = load ptr, ptr %cp, align 8
  %61 = load ptr, ptr %p, align 8
  %62 = load i8, ptr %61, align 1
  %conv74 = zext i8 %62 to i32
  %idx.ext75 = sext i32 %conv74 to i64
  %idx.neg76 = sub i64 0, %idx.ext75
  %add.ptr77 = getelementptr inbounds i8, ptr %60, i64 %idx.neg76
  %63 = load i8, ptr %add.ptr77, align 1
  %conv78 = zext i8 %63 to i32
  %64 = load i32, ptr %n, align 4
  %add79 = add nsw i32 %64, %conv78
  store i32 %add79, ptr %n, align 4
  %65 = load i32, ptr %x_size.addr, align 4
  %sub80 = sub nsw i32 %65, 5
  %66 = load ptr, ptr %p, align 8
  %idx.ext81 = sext i32 %sub80 to i64
  %add.ptr82 = getelementptr inbounds i8, ptr %66, i64 %idx.ext81
  store ptr %add.ptr82, ptr %p, align 8
  %67 = load ptr, ptr %cp, align 8
  %68 = load ptr, ptr %p, align 8
  %incdec.ptr83 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %incdec.ptr83, ptr %p, align 8
  %69 = load i8, ptr %68, align 1
  %conv84 = zext i8 %69 to i32
  %idx.ext85 = sext i32 %conv84 to i64
  %idx.neg86 = sub i64 0, %idx.ext85
  %add.ptr87 = getelementptr inbounds i8, ptr %67, i64 %idx.neg86
  %70 = load i8, ptr %add.ptr87, align 1
  %conv88 = zext i8 %70 to i32
  %71 = load i32, ptr %n, align 4
  %add89 = add nsw i32 %71, %conv88
  store i32 %add89, ptr %n, align 4
  %72 = load ptr, ptr %cp, align 8
  %73 = load ptr, ptr %p, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr90, ptr %p, align 8
  %74 = load i8, ptr %73, align 1
  %conv91 = zext i8 %74 to i32
  %idx.ext92 = sext i32 %conv91 to i64
  %idx.neg93 = sub i64 0, %idx.ext92
  %add.ptr94 = getelementptr inbounds i8, ptr %72, i64 %idx.neg93
  %75 = load i8, ptr %add.ptr94, align 1
  %conv95 = zext i8 %75 to i32
  %76 = load i32, ptr %n, align 4
  %add96 = add nsw i32 %76, %conv95
  store i32 %add96, ptr %n, align 4
  %77 = load ptr, ptr %cp, align 8
  %78 = load ptr, ptr %p, align 8
  %incdec.ptr97 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr97, ptr %p, align 8
  %79 = load i8, ptr %78, align 1
  %conv98 = zext i8 %79 to i32
  %idx.ext99 = sext i32 %conv98 to i64
  %idx.neg100 = sub i64 0, %idx.ext99
  %add.ptr101 = getelementptr inbounds i8, ptr %77, i64 %idx.neg100
  %80 = load i8, ptr %add.ptr101, align 1
  %conv102 = zext i8 %80 to i32
  %81 = load i32, ptr %n, align 4
  %add103 = add nsw i32 %81, %conv102
  store i32 %add103, ptr %n, align 4
  %82 = load ptr, ptr %cp, align 8
  %83 = load ptr, ptr %p, align 8
  %incdec.ptr104 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr104, ptr %p, align 8
  %84 = load i8, ptr %83, align 1
  %conv105 = zext i8 %84 to i32
  %idx.ext106 = sext i32 %conv105 to i64
  %idx.neg107 = sub i64 0, %idx.ext106
  %add.ptr108 = getelementptr inbounds i8, ptr %82, i64 %idx.neg107
  %85 = load i8, ptr %add.ptr108, align 1
  %conv109 = zext i8 %85 to i32
  %86 = load i32, ptr %n, align 4
  %add110 = add nsw i32 %86, %conv109
  store i32 %add110, ptr %n, align 4
  %87 = load ptr, ptr %cp, align 8
  %88 = load ptr, ptr %p, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr111, ptr %p, align 8
  %89 = load i8, ptr %88, align 1
  %conv112 = zext i8 %89 to i32
  %idx.ext113 = sext i32 %conv112 to i64
  %idx.neg114 = sub i64 0, %idx.ext113
  %add.ptr115 = getelementptr inbounds i8, ptr %87, i64 %idx.neg114
  %90 = load i8, ptr %add.ptr115, align 1
  %conv116 = zext i8 %90 to i32
  %91 = load i32, ptr %n, align 4
  %add117 = add nsw i32 %91, %conv116
  store i32 %add117, ptr %n, align 4
  %92 = load ptr, ptr %cp, align 8
  %93 = load ptr, ptr %p, align 8
  %incdec.ptr118 = getelementptr inbounds i8, ptr %93, i32 1
  store ptr %incdec.ptr118, ptr %p, align 8
  %94 = load i8, ptr %93, align 1
  %conv119 = zext i8 %94 to i32
  %idx.ext120 = sext i32 %conv119 to i64
  %idx.neg121 = sub i64 0, %idx.ext120
  %add.ptr122 = getelementptr inbounds i8, ptr %92, i64 %idx.neg121
  %95 = load i8, ptr %add.ptr122, align 1
  %conv123 = zext i8 %95 to i32
  %96 = load i32, ptr %n, align 4
  %add124 = add nsw i32 %96, %conv123
  store i32 %add124, ptr %n, align 4
  %97 = load ptr, ptr %cp, align 8
  %98 = load ptr, ptr %p, align 8
  %99 = load i8, ptr %98, align 1
  %conv125 = zext i8 %99 to i32
  %idx.ext126 = sext i32 %conv125 to i64
  %idx.neg127 = sub i64 0, %idx.ext126
  %add.ptr128 = getelementptr inbounds i8, ptr %97, i64 %idx.neg127
  %100 = load i8, ptr %add.ptr128, align 1
  %conv129 = zext i8 %100 to i32
  %101 = load i32, ptr %n, align 4
  %add130 = add nsw i32 %101, %conv129
  store i32 %add130, ptr %n, align 4
  %102 = load i32, ptr %x_size.addr, align 4
  %sub131 = sub nsw i32 %102, 6
  %103 = load ptr, ptr %p, align 8
  %idx.ext132 = sext i32 %sub131 to i64
  %add.ptr133 = getelementptr inbounds i8, ptr %103, i64 %idx.ext132
  store ptr %add.ptr133, ptr %p, align 8
  %104 = load ptr, ptr %cp, align 8
  %105 = load ptr, ptr %p, align 8
  %incdec.ptr134 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr134, ptr %p, align 8
  %106 = load i8, ptr %105, align 1
  %conv135 = zext i8 %106 to i32
  %idx.ext136 = sext i32 %conv135 to i64
  %idx.neg137 = sub i64 0, %idx.ext136
  %add.ptr138 = getelementptr inbounds i8, ptr %104, i64 %idx.neg137
  %107 = load i8, ptr %add.ptr138, align 1
  %conv139 = zext i8 %107 to i32
  %108 = load i32, ptr %n, align 4
  %add140 = add nsw i32 %108, %conv139
  store i32 %add140, ptr %n, align 4
  %109 = load ptr, ptr %cp, align 8
  %110 = load ptr, ptr %p, align 8
  %incdec.ptr141 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr141, ptr %p, align 8
  %111 = load i8, ptr %110, align 1
  %conv142 = zext i8 %111 to i32
  %idx.ext143 = sext i32 %conv142 to i64
  %idx.neg144 = sub i64 0, %idx.ext143
  %add.ptr145 = getelementptr inbounds i8, ptr %109, i64 %idx.neg144
  %112 = load i8, ptr %add.ptr145, align 1
  %conv146 = zext i8 %112 to i32
  %113 = load i32, ptr %n, align 4
  %add147 = add nsw i32 %113, %conv146
  store i32 %add147, ptr %n, align 4
  %114 = load ptr, ptr %cp, align 8
  %115 = load ptr, ptr %p, align 8
  %116 = load i8, ptr %115, align 1
  %conv148 = zext i8 %116 to i32
  %idx.ext149 = sext i32 %conv148 to i64
  %idx.neg150 = sub i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %114, i64 %idx.neg150
  %117 = load i8, ptr %add.ptr151, align 1
  %conv152 = zext i8 %117 to i32
  %118 = load i32, ptr %n, align 4
  %add153 = add nsw i32 %118, %conv152
  store i32 %add153, ptr %n, align 4
  %119 = load i32, ptr %n, align 4
  %120 = load i32, ptr %max_no.addr, align 4
  %cmp154 = icmp slt i32 %119, %120
  br i1 %cmp154, label %if.then, label %if.end908

if.then:                                          ; preds = %for.body15
  %121 = load ptr, ptr %p, align 8
  %add.ptr156 = getelementptr inbounds i8, ptr %121, i64 2
  store ptr %add.ptr156, ptr %p, align 8
  %122 = load ptr, ptr %cp, align 8
  %123 = load ptr, ptr %p, align 8
  %incdec.ptr157 = getelementptr inbounds i8, ptr %123, i32 1
  store ptr %incdec.ptr157, ptr %p, align 8
  %124 = load i8, ptr %123, align 1
  %conv158 = zext i8 %124 to i32
  %idx.ext159 = sext i32 %conv158 to i64
  %idx.neg160 = sub i64 0, %idx.ext159
  %add.ptr161 = getelementptr inbounds i8, ptr %122, i64 %idx.neg160
  %125 = load i8, ptr %add.ptr161, align 1
  %conv162 = zext i8 %125 to i32
  %126 = load i32, ptr %n, align 4
  %add163 = add nsw i32 %126, %conv162
  store i32 %add163, ptr %n, align 4
  %127 = load i32, ptr %n, align 4
  %128 = load i32, ptr %max_no.addr, align 4
  %cmp164 = icmp slt i32 %127, %128
  br i1 %cmp164, label %if.then166, label %if.end907

if.then166:                                       ; preds = %if.then
  %129 = load ptr, ptr %cp, align 8
  %130 = load ptr, ptr %p, align 8
  %incdec.ptr167 = getelementptr inbounds i8, ptr %130, i32 1
  store ptr %incdec.ptr167, ptr %p, align 8
  %131 = load i8, ptr %130, align 1
  %conv168 = zext i8 %131 to i32
  %idx.ext169 = sext i32 %conv168 to i64
  %idx.neg170 = sub i64 0, %idx.ext169
  %add.ptr171 = getelementptr inbounds i8, ptr %129, i64 %idx.neg170
  %132 = load i8, ptr %add.ptr171, align 1
  %conv172 = zext i8 %132 to i32
  %133 = load i32, ptr %n, align 4
  %add173 = add nsw i32 %133, %conv172
  store i32 %add173, ptr %n, align 4
  %134 = load i32, ptr %n, align 4
  %135 = load i32, ptr %max_no.addr, align 4
  %cmp174 = icmp slt i32 %134, %135
  br i1 %cmp174, label %if.then176, label %if.end906

if.then176:                                       ; preds = %if.then166
  %136 = load ptr, ptr %cp, align 8
  %137 = load ptr, ptr %p, align 8
  %138 = load i8, ptr %137, align 1
  %conv177 = zext i8 %138 to i32
  %idx.ext178 = sext i32 %conv177 to i64
  %idx.neg179 = sub i64 0, %idx.ext178
  %add.ptr180 = getelementptr inbounds i8, ptr %136, i64 %idx.neg179
  %139 = load i8, ptr %add.ptr180, align 1
  %conv181 = zext i8 %139 to i32
  %140 = load i32, ptr %n, align 4
  %add182 = add nsw i32 %140, %conv181
  store i32 %add182, ptr %n, align 4
  %141 = load i32, ptr %n, align 4
  %142 = load i32, ptr %max_no.addr, align 4
  %cmp183 = icmp slt i32 %141, %142
  br i1 %cmp183, label %if.then185, label %if.end905

if.then185:                                       ; preds = %if.then176
  %143 = load i32, ptr %x_size.addr, align 4
  %sub186 = sub nsw i32 %143, 6
  %144 = load ptr, ptr %p, align 8
  %idx.ext187 = sext i32 %sub186 to i64
  %add.ptr188 = getelementptr inbounds i8, ptr %144, i64 %idx.ext187
  store ptr %add.ptr188, ptr %p, align 8
  %145 = load ptr, ptr %cp, align 8
  %146 = load ptr, ptr %p, align 8
  %incdec.ptr189 = getelementptr inbounds i8, ptr %146, i32 1
  store ptr %incdec.ptr189, ptr %p, align 8
  %147 = load i8, ptr %146, align 1
  %conv190 = zext i8 %147 to i32
  %idx.ext191 = sext i32 %conv190 to i64
  %idx.neg192 = sub i64 0, %idx.ext191
  %add.ptr193 = getelementptr inbounds i8, ptr %145, i64 %idx.neg192
  %148 = load i8, ptr %add.ptr193, align 1
  %conv194 = zext i8 %148 to i32
  %149 = load i32, ptr %n, align 4
  %add195 = add nsw i32 %149, %conv194
  store i32 %add195, ptr %n, align 4
  %150 = load i32, ptr %n, align 4
  %151 = load i32, ptr %max_no.addr, align 4
  %cmp196 = icmp slt i32 %150, %151
  br i1 %cmp196, label %if.then198, label %if.end904

if.then198:                                       ; preds = %if.then185
  %152 = load ptr, ptr %cp, align 8
  %153 = load ptr, ptr %p, align 8
  %incdec.ptr199 = getelementptr inbounds i8, ptr %153, i32 1
  store ptr %incdec.ptr199, ptr %p, align 8
  %154 = load i8, ptr %153, align 1
  %conv200 = zext i8 %154 to i32
  %idx.ext201 = sext i32 %conv200 to i64
  %idx.neg202 = sub i64 0, %idx.ext201
  %add.ptr203 = getelementptr inbounds i8, ptr %152, i64 %idx.neg202
  %155 = load i8, ptr %add.ptr203, align 1
  %conv204 = zext i8 %155 to i32
  %156 = load i32, ptr %n, align 4
  %add205 = add nsw i32 %156, %conv204
  store i32 %add205, ptr %n, align 4
  %157 = load i32, ptr %n, align 4
  %158 = load i32, ptr %max_no.addr, align 4
  %cmp206 = icmp slt i32 %157, %158
  br i1 %cmp206, label %if.then208, label %if.end903

if.then208:                                       ; preds = %if.then198
  %159 = load ptr, ptr %cp, align 8
  %160 = load ptr, ptr %p, align 8
  %incdec.ptr209 = getelementptr inbounds i8, ptr %160, i32 1
  store ptr %incdec.ptr209, ptr %p, align 8
  %161 = load i8, ptr %160, align 1
  %conv210 = zext i8 %161 to i32
  %idx.ext211 = sext i32 %conv210 to i64
  %idx.neg212 = sub i64 0, %idx.ext211
  %add.ptr213 = getelementptr inbounds i8, ptr %159, i64 %idx.neg212
  %162 = load i8, ptr %add.ptr213, align 1
  %conv214 = zext i8 %162 to i32
  %163 = load i32, ptr %n, align 4
  %add215 = add nsw i32 %163, %conv214
  store i32 %add215, ptr %n, align 4
  %164 = load i32, ptr %n, align 4
  %165 = load i32, ptr %max_no.addr, align 4
  %cmp216 = icmp slt i32 %164, %165
  br i1 %cmp216, label %if.then218, label %if.end902

if.then218:                                       ; preds = %if.then208
  %166 = load ptr, ptr %cp, align 8
  %167 = load ptr, ptr %p, align 8
  %incdec.ptr219 = getelementptr inbounds i8, ptr %167, i32 1
  store ptr %incdec.ptr219, ptr %p, align 8
  %168 = load i8, ptr %167, align 1
  %conv220 = zext i8 %168 to i32
  %idx.ext221 = sext i32 %conv220 to i64
  %idx.neg222 = sub i64 0, %idx.ext221
  %add.ptr223 = getelementptr inbounds i8, ptr %166, i64 %idx.neg222
  %169 = load i8, ptr %add.ptr223, align 1
  %conv224 = zext i8 %169 to i32
  %170 = load i32, ptr %n, align 4
  %add225 = add nsw i32 %170, %conv224
  store i32 %add225, ptr %n, align 4
  %171 = load i32, ptr %n, align 4
  %172 = load i32, ptr %max_no.addr, align 4
  %cmp226 = icmp slt i32 %171, %172
  br i1 %cmp226, label %if.then228, label %if.end901

if.then228:                                       ; preds = %if.then218
  %173 = load ptr, ptr %cp, align 8
  %174 = load ptr, ptr %p, align 8
  %incdec.ptr229 = getelementptr inbounds i8, ptr %174, i32 1
  store ptr %incdec.ptr229, ptr %p, align 8
  %175 = load i8, ptr %174, align 1
  %conv230 = zext i8 %175 to i32
  %idx.ext231 = sext i32 %conv230 to i64
  %idx.neg232 = sub i64 0, %idx.ext231
  %add.ptr233 = getelementptr inbounds i8, ptr %173, i64 %idx.neg232
  %176 = load i8, ptr %add.ptr233, align 1
  %conv234 = zext i8 %176 to i32
  %177 = load i32, ptr %n, align 4
  %add235 = add nsw i32 %177, %conv234
  store i32 %add235, ptr %n, align 4
  %178 = load i32, ptr %n, align 4
  %179 = load i32, ptr %max_no.addr, align 4
  %cmp236 = icmp slt i32 %178, %179
  br i1 %cmp236, label %if.then238, label %if.end900

if.then238:                                       ; preds = %if.then228
  %180 = load ptr, ptr %cp, align 8
  %181 = load ptr, ptr %p, align 8
  %incdec.ptr239 = getelementptr inbounds i8, ptr %181, i32 1
  store ptr %incdec.ptr239, ptr %p, align 8
  %182 = load i8, ptr %181, align 1
  %conv240 = zext i8 %182 to i32
  %idx.ext241 = sext i32 %conv240 to i64
  %idx.neg242 = sub i64 0, %idx.ext241
  %add.ptr243 = getelementptr inbounds i8, ptr %180, i64 %idx.neg242
  %183 = load i8, ptr %add.ptr243, align 1
  %conv244 = zext i8 %183 to i32
  %184 = load i32, ptr %n, align 4
  %add245 = add nsw i32 %184, %conv244
  store i32 %add245, ptr %n, align 4
  %185 = load i32, ptr %n, align 4
  %186 = load i32, ptr %max_no.addr, align 4
  %cmp246 = icmp slt i32 %185, %186
  br i1 %cmp246, label %if.then248, label %if.end899

if.then248:                                       ; preds = %if.then238
  %187 = load ptr, ptr %cp, align 8
  %188 = load ptr, ptr %p, align 8
  %189 = load i8, ptr %188, align 1
  %conv249 = zext i8 %189 to i32
  %idx.ext250 = sext i32 %conv249 to i64
  %idx.neg251 = sub i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %187, i64 %idx.neg251
  %190 = load i8, ptr %add.ptr252, align 1
  %conv253 = zext i8 %190 to i32
  %191 = load i32, ptr %n, align 4
  %add254 = add nsw i32 %191, %conv253
  store i32 %add254, ptr %n, align 4
  %192 = load i32, ptr %n, align 4
  %193 = load i32, ptr %max_no.addr, align 4
  %cmp255 = icmp slt i32 %192, %193
  br i1 %cmp255, label %if.then257, label %if.end898

if.then257:                                       ; preds = %if.then248
  %194 = load i32, ptr %x_size.addr, align 4
  %sub258 = sub nsw i32 %194, 5
  %195 = load ptr, ptr %p, align 8
  %idx.ext259 = sext i32 %sub258 to i64
  %add.ptr260 = getelementptr inbounds i8, ptr %195, i64 %idx.ext259
  store ptr %add.ptr260, ptr %p, align 8
  %196 = load ptr, ptr %cp, align 8
  %197 = load ptr, ptr %p, align 8
  %incdec.ptr261 = getelementptr inbounds i8, ptr %197, i32 1
  store ptr %incdec.ptr261, ptr %p, align 8
  %198 = load i8, ptr %197, align 1
  %conv262 = zext i8 %198 to i32
  %idx.ext263 = sext i32 %conv262 to i64
  %idx.neg264 = sub i64 0, %idx.ext263
  %add.ptr265 = getelementptr inbounds i8, ptr %196, i64 %idx.neg264
  %199 = load i8, ptr %add.ptr265, align 1
  %conv266 = zext i8 %199 to i32
  %200 = load i32, ptr %n, align 4
  %add267 = add nsw i32 %200, %conv266
  store i32 %add267, ptr %n, align 4
  %201 = load i32, ptr %n, align 4
  %202 = load i32, ptr %max_no.addr, align 4
  %cmp268 = icmp slt i32 %201, %202
  br i1 %cmp268, label %if.then270, label %if.end897

if.then270:                                       ; preds = %if.then257
  %203 = load ptr, ptr %cp, align 8
  %204 = load ptr, ptr %p, align 8
  %incdec.ptr271 = getelementptr inbounds i8, ptr %204, i32 1
  store ptr %incdec.ptr271, ptr %p, align 8
  %205 = load i8, ptr %204, align 1
  %conv272 = zext i8 %205 to i32
  %idx.ext273 = sext i32 %conv272 to i64
  %idx.neg274 = sub i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %203, i64 %idx.neg274
  %206 = load i8, ptr %add.ptr275, align 1
  %conv276 = zext i8 %206 to i32
  %207 = load i32, ptr %n, align 4
  %add277 = add nsw i32 %207, %conv276
  store i32 %add277, ptr %n, align 4
  %208 = load i32, ptr %n, align 4
  %209 = load i32, ptr %max_no.addr, align 4
  %cmp278 = icmp slt i32 %208, %209
  br i1 %cmp278, label %if.then280, label %if.end896

if.then280:                                       ; preds = %if.then270
  %210 = load ptr, ptr %cp, align 8
  %211 = load ptr, ptr %p, align 8
  %incdec.ptr281 = getelementptr inbounds i8, ptr %211, i32 1
  store ptr %incdec.ptr281, ptr %p, align 8
  %212 = load i8, ptr %211, align 1
  %conv282 = zext i8 %212 to i32
  %idx.ext283 = sext i32 %conv282 to i64
  %idx.neg284 = sub i64 0, %idx.ext283
  %add.ptr285 = getelementptr inbounds i8, ptr %210, i64 %idx.neg284
  %213 = load i8, ptr %add.ptr285, align 1
  %conv286 = zext i8 %213 to i32
  %214 = load i32, ptr %n, align 4
  %add287 = add nsw i32 %214, %conv286
  store i32 %add287, ptr %n, align 4
  %215 = load i32, ptr %n, align 4
  %216 = load i32, ptr %max_no.addr, align 4
  %cmp288 = icmp slt i32 %215, %216
  br i1 %cmp288, label %if.then290, label %if.end895

if.then290:                                       ; preds = %if.then280
  %217 = load ptr, ptr %cp, align 8
  %218 = load ptr, ptr %p, align 8
  %incdec.ptr291 = getelementptr inbounds i8, ptr %218, i32 1
  store ptr %incdec.ptr291, ptr %p, align 8
  %219 = load i8, ptr %218, align 1
  %conv292 = zext i8 %219 to i32
  %idx.ext293 = sext i32 %conv292 to i64
  %idx.neg294 = sub i64 0, %idx.ext293
  %add.ptr295 = getelementptr inbounds i8, ptr %217, i64 %idx.neg294
  %220 = load i8, ptr %add.ptr295, align 1
  %conv296 = zext i8 %220 to i32
  %221 = load i32, ptr %n, align 4
  %add297 = add nsw i32 %221, %conv296
  store i32 %add297, ptr %n, align 4
  %222 = load i32, ptr %n, align 4
  %223 = load i32, ptr %max_no.addr, align 4
  %cmp298 = icmp slt i32 %222, %223
  br i1 %cmp298, label %if.then300, label %if.end894

if.then300:                                       ; preds = %if.then290
  %224 = load ptr, ptr %cp, align 8
  %225 = load ptr, ptr %p, align 8
  %226 = load i8, ptr %225, align 1
  %conv301 = zext i8 %226 to i32
  %idx.ext302 = sext i32 %conv301 to i64
  %idx.neg303 = sub i64 0, %idx.ext302
  %add.ptr304 = getelementptr inbounds i8, ptr %224, i64 %idx.neg303
  %227 = load i8, ptr %add.ptr304, align 1
  %conv305 = zext i8 %227 to i32
  %228 = load i32, ptr %n, align 4
  %add306 = add nsw i32 %228, %conv305
  store i32 %add306, ptr %n, align 4
  %229 = load i32, ptr %n, align 4
  %230 = load i32, ptr %max_no.addr, align 4
  %cmp307 = icmp slt i32 %229, %230
  br i1 %cmp307, label %if.then309, label %if.end893

if.then309:                                       ; preds = %if.then300
  %231 = load i32, ptr %x_size.addr, align 4
  %sub310 = sub nsw i32 %231, 3
  %232 = load ptr, ptr %p, align 8
  %idx.ext311 = sext i32 %sub310 to i64
  %add.ptr312 = getelementptr inbounds i8, ptr %232, i64 %idx.ext311
  store ptr %add.ptr312, ptr %p, align 8
  %233 = load ptr, ptr %cp, align 8
  %234 = load ptr, ptr %p, align 8
  %incdec.ptr313 = getelementptr inbounds i8, ptr %234, i32 1
  store ptr %incdec.ptr313, ptr %p, align 8
  %235 = load i8, ptr %234, align 1
  %conv314 = zext i8 %235 to i32
  %idx.ext315 = sext i32 %conv314 to i64
  %idx.neg316 = sub i64 0, %idx.ext315
  %add.ptr317 = getelementptr inbounds i8, ptr %233, i64 %idx.neg316
  %236 = load i8, ptr %add.ptr317, align 1
  %conv318 = zext i8 %236 to i32
  %237 = load i32, ptr %n, align 4
  %add319 = add nsw i32 %237, %conv318
  store i32 %add319, ptr %n, align 4
  %238 = load i32, ptr %n, align 4
  %239 = load i32, ptr %max_no.addr, align 4
  %cmp320 = icmp slt i32 %238, %239
  br i1 %cmp320, label %if.then322, label %if.end892

if.then322:                                       ; preds = %if.then309
  %240 = load ptr, ptr %cp, align 8
  %241 = load ptr, ptr %p, align 8
  %incdec.ptr323 = getelementptr inbounds i8, ptr %241, i32 1
  store ptr %incdec.ptr323, ptr %p, align 8
  %242 = load i8, ptr %241, align 1
  %conv324 = zext i8 %242 to i32
  %idx.ext325 = sext i32 %conv324 to i64
  %idx.neg326 = sub i64 0, %idx.ext325
  %add.ptr327 = getelementptr inbounds i8, ptr %240, i64 %idx.neg326
  %243 = load i8, ptr %add.ptr327, align 1
  %conv328 = zext i8 %243 to i32
  %244 = load i32, ptr %n, align 4
  %add329 = add nsw i32 %244, %conv328
  store i32 %add329, ptr %n, align 4
  %245 = load i32, ptr %n, align 4
  %246 = load i32, ptr %max_no.addr, align 4
  %cmp330 = icmp slt i32 %245, %246
  br i1 %cmp330, label %if.then332, label %if.end891

if.then332:                                       ; preds = %if.then322
  %247 = load ptr, ptr %cp, align 8
  %248 = load ptr, ptr %p, align 8
  %249 = load i8, ptr %248, align 1
  %conv333 = zext i8 %249 to i32
  %idx.ext334 = sext i32 %conv333 to i64
  %idx.neg335 = sub i64 0, %idx.ext334
  %add.ptr336 = getelementptr inbounds i8, ptr %247, i64 %idx.neg335
  %250 = load i8, ptr %add.ptr336, align 1
  %conv337 = zext i8 %250 to i32
  %251 = load i32, ptr %n, align 4
  %add338 = add nsw i32 %251, %conv337
  store i32 %add338, ptr %n, align 4
  %252 = load i32, ptr %n, align 4
  %253 = load i32, ptr %max_no.addr, align 4
  %cmp339 = icmp slt i32 %252, %253
  br i1 %cmp339, label %if.then341, label %if.end890

if.then341:                                       ; preds = %if.then332
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  %254 = load ptr, ptr %in.addr, align 8
  %255 = load i32, ptr %i, align 4
  %sub342 = sub nsw i32 %255, 3
  %256 = load i32, ptr %x_size.addr, align 4
  %mul343 = mul nsw i32 %sub342, %256
  %idx.ext344 = sext i32 %mul343 to i64
  %add.ptr345 = getelementptr inbounds i8, ptr %254, i64 %idx.ext344
  %257 = load i32, ptr %j, align 4
  %idx.ext346 = sext i32 %257 to i64
  %add.ptr347 = getelementptr inbounds i8, ptr %add.ptr345, i64 %idx.ext346
  %add.ptr348 = getelementptr inbounds i8, ptr %add.ptr347, i64 -1
  store ptr %add.ptr348, ptr %p, align 8
  %258 = load ptr, ptr %cp, align 8
  %259 = load ptr, ptr %p, align 8
  %incdec.ptr349 = getelementptr inbounds i8, ptr %259, i32 1
  store ptr %incdec.ptr349, ptr %p, align 8
  %260 = load i8, ptr %259, align 1
  %conv350 = zext i8 %260 to i32
  %idx.ext351 = sext i32 %conv350 to i64
  %idx.neg352 = sub i64 0, %idx.ext351
  %add.ptr353 = getelementptr inbounds i8, ptr %258, i64 %idx.neg352
  %261 = load i8, ptr %add.ptr353, align 1
  store i8 %261, ptr %c, align 1
  %262 = load i8, ptr %c, align 1
  %conv354 = zext i8 %262 to i32
  %263 = load i32, ptr %x, align 4
  %sub355 = sub nsw i32 %263, %conv354
  store i32 %sub355, ptr %x, align 4
  %264 = load i8, ptr %c, align 1
  %conv356 = zext i8 %264 to i32
  %mul357 = mul nsw i32 3, %conv356
  %265 = load i32, ptr %y, align 4
  %sub358 = sub nsw i32 %265, %mul357
  store i32 %sub358, ptr %y, align 4
  %266 = load ptr, ptr %cp, align 8
  %267 = load ptr, ptr %p, align 8
  %incdec.ptr359 = getelementptr inbounds i8, ptr %267, i32 1
  store ptr %incdec.ptr359, ptr %p, align 8
  %268 = load i8, ptr %267, align 1
  %conv360 = zext i8 %268 to i32
  %idx.ext361 = sext i32 %conv360 to i64
  %idx.neg362 = sub i64 0, %idx.ext361
  %add.ptr363 = getelementptr inbounds i8, ptr %266, i64 %idx.neg362
  %269 = load i8, ptr %add.ptr363, align 1
  store i8 %269, ptr %c, align 1
  %270 = load i8, ptr %c, align 1
  %conv364 = zext i8 %270 to i32
  %mul365 = mul nsw i32 3, %conv364
  %271 = load i32, ptr %y, align 4
  %sub366 = sub nsw i32 %271, %mul365
  store i32 %sub366, ptr %y, align 4
  %272 = load ptr, ptr %cp, align 8
  %273 = load ptr, ptr %p, align 8
  %274 = load i8, ptr %273, align 1
  %conv367 = zext i8 %274 to i32
  %idx.ext368 = sext i32 %conv367 to i64
  %idx.neg369 = sub i64 0, %idx.ext368
  %add.ptr370 = getelementptr inbounds i8, ptr %272, i64 %idx.neg369
  %275 = load i8, ptr %add.ptr370, align 1
  store i8 %275, ptr %c, align 1
  %276 = load i8, ptr %c, align 1
  %conv371 = zext i8 %276 to i32
  %277 = load i32, ptr %x, align 4
  %add372 = add nsw i32 %277, %conv371
  store i32 %add372, ptr %x, align 4
  %278 = load i8, ptr %c, align 1
  %conv373 = zext i8 %278 to i32
  %mul374 = mul nsw i32 3, %conv373
  %279 = load i32, ptr %y, align 4
  %sub375 = sub nsw i32 %279, %mul374
  store i32 %sub375, ptr %y, align 4
  %280 = load i32, ptr %x_size.addr, align 4
  %sub376 = sub nsw i32 %280, 3
  %281 = load ptr, ptr %p, align 8
  %idx.ext377 = sext i32 %sub376 to i64
  %add.ptr378 = getelementptr inbounds i8, ptr %281, i64 %idx.ext377
  store ptr %add.ptr378, ptr %p, align 8
  %282 = load ptr, ptr %cp, align 8
  %283 = load ptr, ptr %p, align 8
  %incdec.ptr379 = getelementptr inbounds i8, ptr %283, i32 1
  store ptr %incdec.ptr379, ptr %p, align 8
  %284 = load i8, ptr %283, align 1
  %conv380 = zext i8 %284 to i32
  %idx.ext381 = sext i32 %conv380 to i64
  %idx.neg382 = sub i64 0, %idx.ext381
  %add.ptr383 = getelementptr inbounds i8, ptr %282, i64 %idx.neg382
  %285 = load i8, ptr %add.ptr383, align 1
  store i8 %285, ptr %c, align 1
  %286 = load i8, ptr %c, align 1
  %conv384 = zext i8 %286 to i32
  %mul385 = mul nsw i32 2, %conv384
  %287 = load i32, ptr %x, align 4
  %sub386 = sub nsw i32 %287, %mul385
  store i32 %sub386, ptr %x, align 4
  %288 = load i8, ptr %c, align 1
  %conv387 = zext i8 %288 to i32
  %mul388 = mul nsw i32 2, %conv387
  %289 = load i32, ptr %y, align 4
  %sub389 = sub nsw i32 %289, %mul388
  store i32 %sub389, ptr %y, align 4
  %290 = load ptr, ptr %cp, align 8
  %291 = load ptr, ptr %p, align 8
  %incdec.ptr390 = getelementptr inbounds i8, ptr %291, i32 1
  store ptr %incdec.ptr390, ptr %p, align 8
  %292 = load i8, ptr %291, align 1
  %conv391 = zext i8 %292 to i32
  %idx.ext392 = sext i32 %conv391 to i64
  %idx.neg393 = sub i64 0, %idx.ext392
  %add.ptr394 = getelementptr inbounds i8, ptr %290, i64 %idx.neg393
  %293 = load i8, ptr %add.ptr394, align 1
  store i8 %293, ptr %c, align 1
  %294 = load i8, ptr %c, align 1
  %conv395 = zext i8 %294 to i32
  %295 = load i32, ptr %x, align 4
  %sub396 = sub nsw i32 %295, %conv395
  store i32 %sub396, ptr %x, align 4
  %296 = load i8, ptr %c, align 1
  %conv397 = zext i8 %296 to i32
  %mul398 = mul nsw i32 2, %conv397
  %297 = load i32, ptr %y, align 4
  %sub399 = sub nsw i32 %297, %mul398
  store i32 %sub399, ptr %y, align 4
  %298 = load ptr, ptr %cp, align 8
  %299 = load ptr, ptr %p, align 8
  %incdec.ptr400 = getelementptr inbounds i8, ptr %299, i32 1
  store ptr %incdec.ptr400, ptr %p, align 8
  %300 = load i8, ptr %299, align 1
  %conv401 = zext i8 %300 to i32
  %idx.ext402 = sext i32 %conv401 to i64
  %idx.neg403 = sub i64 0, %idx.ext402
  %add.ptr404 = getelementptr inbounds i8, ptr %298, i64 %idx.neg403
  %301 = load i8, ptr %add.ptr404, align 1
  store i8 %301, ptr %c, align 1
  %302 = load i8, ptr %c, align 1
  %conv405 = zext i8 %302 to i32
  %mul406 = mul nsw i32 2, %conv405
  %303 = load i32, ptr %y, align 4
  %sub407 = sub nsw i32 %303, %mul406
  store i32 %sub407, ptr %y, align 4
  %304 = load ptr, ptr %cp, align 8
  %305 = load ptr, ptr %p, align 8
  %incdec.ptr408 = getelementptr inbounds i8, ptr %305, i32 1
  store ptr %incdec.ptr408, ptr %p, align 8
  %306 = load i8, ptr %305, align 1
  %conv409 = zext i8 %306 to i32
  %idx.ext410 = sext i32 %conv409 to i64
  %idx.neg411 = sub i64 0, %idx.ext410
  %add.ptr412 = getelementptr inbounds i8, ptr %304, i64 %idx.neg411
  %307 = load i8, ptr %add.ptr412, align 1
  store i8 %307, ptr %c, align 1
  %308 = load i8, ptr %c, align 1
  %conv413 = zext i8 %308 to i32
  %309 = load i32, ptr %x, align 4
  %add414 = add nsw i32 %309, %conv413
  store i32 %add414, ptr %x, align 4
  %310 = load i8, ptr %c, align 1
  %conv415 = zext i8 %310 to i32
  %mul416 = mul nsw i32 2, %conv415
  %311 = load i32, ptr %y, align 4
  %sub417 = sub nsw i32 %311, %mul416
  store i32 %sub417, ptr %y, align 4
  %312 = load ptr, ptr %cp, align 8
  %313 = load ptr, ptr %p, align 8
  %314 = load i8, ptr %313, align 1
  %conv418 = zext i8 %314 to i32
  %idx.ext419 = sext i32 %conv418 to i64
  %idx.neg420 = sub i64 0, %idx.ext419
  %add.ptr421 = getelementptr inbounds i8, ptr %312, i64 %idx.neg420
  %315 = load i8, ptr %add.ptr421, align 1
  store i8 %315, ptr %c, align 1
  %316 = load i8, ptr %c, align 1
  %conv422 = zext i8 %316 to i32
  %mul423 = mul nsw i32 2, %conv422
  %317 = load i32, ptr %x, align 4
  %add424 = add nsw i32 %317, %mul423
  store i32 %add424, ptr %x, align 4
  %318 = load i8, ptr %c, align 1
  %conv425 = zext i8 %318 to i32
  %mul426 = mul nsw i32 2, %conv425
  %319 = load i32, ptr %y, align 4
  %sub427 = sub nsw i32 %319, %mul426
  store i32 %sub427, ptr %y, align 4
  %320 = load i32, ptr %x_size.addr, align 4
  %sub428 = sub nsw i32 %320, 5
  %321 = load ptr, ptr %p, align 8
  %idx.ext429 = sext i32 %sub428 to i64
  %add.ptr430 = getelementptr inbounds i8, ptr %321, i64 %idx.ext429
  store ptr %add.ptr430, ptr %p, align 8
  %322 = load ptr, ptr %cp, align 8
  %323 = load ptr, ptr %p, align 8
  %incdec.ptr431 = getelementptr inbounds i8, ptr %323, i32 1
  store ptr %incdec.ptr431, ptr %p, align 8
  %324 = load i8, ptr %323, align 1
  %conv432 = zext i8 %324 to i32
  %idx.ext433 = sext i32 %conv432 to i64
  %idx.neg434 = sub i64 0, %idx.ext433
  %add.ptr435 = getelementptr inbounds i8, ptr %322, i64 %idx.neg434
  %325 = load i8, ptr %add.ptr435, align 1
  store i8 %325, ptr %c, align 1
  %326 = load i8, ptr %c, align 1
  %conv436 = zext i8 %326 to i32
  %mul437 = mul nsw i32 3, %conv436
  %327 = load i32, ptr %x, align 4
  %sub438 = sub nsw i32 %327, %mul437
  store i32 %sub438, ptr %x, align 4
  %328 = load i8, ptr %c, align 1
  %conv439 = zext i8 %328 to i32
  %329 = load i32, ptr %y, align 4
  %sub440 = sub nsw i32 %329, %conv439
  store i32 %sub440, ptr %y, align 4
  %330 = load ptr, ptr %cp, align 8
  %331 = load ptr, ptr %p, align 8
  %incdec.ptr441 = getelementptr inbounds i8, ptr %331, i32 1
  store ptr %incdec.ptr441, ptr %p, align 8
  %332 = load i8, ptr %331, align 1
  %conv442 = zext i8 %332 to i32
  %idx.ext443 = sext i32 %conv442 to i64
  %idx.neg444 = sub i64 0, %idx.ext443
  %add.ptr445 = getelementptr inbounds i8, ptr %330, i64 %idx.neg444
  %333 = load i8, ptr %add.ptr445, align 1
  store i8 %333, ptr %c, align 1
  %334 = load i8, ptr %c, align 1
  %conv446 = zext i8 %334 to i32
  %mul447 = mul nsw i32 2, %conv446
  %335 = load i32, ptr %x, align 4
  %sub448 = sub nsw i32 %335, %mul447
  store i32 %sub448, ptr %x, align 4
  %336 = load i8, ptr %c, align 1
  %conv449 = zext i8 %336 to i32
  %337 = load i32, ptr %y, align 4
  %sub450 = sub nsw i32 %337, %conv449
  store i32 %sub450, ptr %y, align 4
  %338 = load ptr, ptr %cp, align 8
  %339 = load ptr, ptr %p, align 8
  %incdec.ptr451 = getelementptr inbounds i8, ptr %339, i32 1
  store ptr %incdec.ptr451, ptr %p, align 8
  %340 = load i8, ptr %339, align 1
  %conv452 = zext i8 %340 to i32
  %idx.ext453 = sext i32 %conv452 to i64
  %idx.neg454 = sub i64 0, %idx.ext453
  %add.ptr455 = getelementptr inbounds i8, ptr %338, i64 %idx.neg454
  %341 = load i8, ptr %add.ptr455, align 1
  store i8 %341, ptr %c, align 1
  %342 = load i8, ptr %c, align 1
  %conv456 = zext i8 %342 to i32
  %343 = load i32, ptr %x, align 4
  %sub457 = sub nsw i32 %343, %conv456
  store i32 %sub457, ptr %x, align 4
  %344 = load i8, ptr %c, align 1
  %conv458 = zext i8 %344 to i32
  %345 = load i32, ptr %y, align 4
  %sub459 = sub nsw i32 %345, %conv458
  store i32 %sub459, ptr %y, align 4
  %346 = load ptr, ptr %cp, align 8
  %347 = load ptr, ptr %p, align 8
  %incdec.ptr460 = getelementptr inbounds i8, ptr %347, i32 1
  store ptr %incdec.ptr460, ptr %p, align 8
  %348 = load i8, ptr %347, align 1
  %conv461 = zext i8 %348 to i32
  %idx.ext462 = sext i32 %conv461 to i64
  %idx.neg463 = sub i64 0, %idx.ext462
  %add.ptr464 = getelementptr inbounds i8, ptr %346, i64 %idx.neg463
  %349 = load i8, ptr %add.ptr464, align 1
  store i8 %349, ptr %c, align 1
  %350 = load i8, ptr %c, align 1
  %conv465 = zext i8 %350 to i32
  %351 = load i32, ptr %y, align 4
  %sub466 = sub nsw i32 %351, %conv465
  store i32 %sub466, ptr %y, align 4
  %352 = load ptr, ptr %cp, align 8
  %353 = load ptr, ptr %p, align 8
  %incdec.ptr467 = getelementptr inbounds i8, ptr %353, i32 1
  store ptr %incdec.ptr467, ptr %p, align 8
  %354 = load i8, ptr %353, align 1
  %conv468 = zext i8 %354 to i32
  %idx.ext469 = sext i32 %conv468 to i64
  %idx.neg470 = sub i64 0, %idx.ext469
  %add.ptr471 = getelementptr inbounds i8, ptr %352, i64 %idx.neg470
  %355 = load i8, ptr %add.ptr471, align 1
  store i8 %355, ptr %c, align 1
  %356 = load i8, ptr %c, align 1
  %conv472 = zext i8 %356 to i32
  %357 = load i32, ptr %x, align 4
  %add473 = add nsw i32 %357, %conv472
  store i32 %add473, ptr %x, align 4
  %358 = load i8, ptr %c, align 1
  %conv474 = zext i8 %358 to i32
  %359 = load i32, ptr %y, align 4
  %sub475 = sub nsw i32 %359, %conv474
  store i32 %sub475, ptr %y, align 4
  %360 = load ptr, ptr %cp, align 8
  %361 = load ptr, ptr %p, align 8
  %incdec.ptr476 = getelementptr inbounds i8, ptr %361, i32 1
  store ptr %incdec.ptr476, ptr %p, align 8
  %362 = load i8, ptr %361, align 1
  %conv477 = zext i8 %362 to i32
  %idx.ext478 = sext i32 %conv477 to i64
  %idx.neg479 = sub i64 0, %idx.ext478
  %add.ptr480 = getelementptr inbounds i8, ptr %360, i64 %idx.neg479
  %363 = load i8, ptr %add.ptr480, align 1
  store i8 %363, ptr %c, align 1
  %364 = load i8, ptr %c, align 1
  %conv481 = zext i8 %364 to i32
  %mul482 = mul nsw i32 2, %conv481
  %365 = load i32, ptr %x, align 4
  %add483 = add nsw i32 %365, %mul482
  store i32 %add483, ptr %x, align 4
  %366 = load i8, ptr %c, align 1
  %conv484 = zext i8 %366 to i32
  %367 = load i32, ptr %y, align 4
  %sub485 = sub nsw i32 %367, %conv484
  store i32 %sub485, ptr %y, align 4
  %368 = load ptr, ptr %cp, align 8
  %369 = load ptr, ptr %p, align 8
  %370 = load i8, ptr %369, align 1
  %conv486 = zext i8 %370 to i32
  %idx.ext487 = sext i32 %conv486 to i64
  %idx.neg488 = sub i64 0, %idx.ext487
  %add.ptr489 = getelementptr inbounds i8, ptr %368, i64 %idx.neg488
  %371 = load i8, ptr %add.ptr489, align 1
  store i8 %371, ptr %c, align 1
  %372 = load i8, ptr %c, align 1
  %conv490 = zext i8 %372 to i32
  %mul491 = mul nsw i32 3, %conv490
  %373 = load i32, ptr %x, align 4
  %add492 = add nsw i32 %373, %mul491
  store i32 %add492, ptr %x, align 4
  %374 = load i8, ptr %c, align 1
  %conv493 = zext i8 %374 to i32
  %375 = load i32, ptr %y, align 4
  %sub494 = sub nsw i32 %375, %conv493
  store i32 %sub494, ptr %y, align 4
  %376 = load i32, ptr %x_size.addr, align 4
  %sub495 = sub nsw i32 %376, 6
  %377 = load ptr, ptr %p, align 8
  %idx.ext496 = sext i32 %sub495 to i64
  %add.ptr497 = getelementptr inbounds i8, ptr %377, i64 %idx.ext496
  store ptr %add.ptr497, ptr %p, align 8
  %378 = load ptr, ptr %cp, align 8
  %379 = load ptr, ptr %p, align 8
  %incdec.ptr498 = getelementptr inbounds i8, ptr %379, i32 1
  store ptr %incdec.ptr498, ptr %p, align 8
  %380 = load i8, ptr %379, align 1
  %conv499 = zext i8 %380 to i32
  %idx.ext500 = sext i32 %conv499 to i64
  %idx.neg501 = sub i64 0, %idx.ext500
  %add.ptr502 = getelementptr inbounds i8, ptr %378, i64 %idx.neg501
  %381 = load i8, ptr %add.ptr502, align 1
  store i8 %381, ptr %c, align 1
  %382 = load i8, ptr %c, align 1
  %conv503 = zext i8 %382 to i32
  %mul504 = mul nsw i32 3, %conv503
  %383 = load i32, ptr %x, align 4
  %sub505 = sub nsw i32 %383, %mul504
  store i32 %sub505, ptr %x, align 4
  %384 = load ptr, ptr %cp, align 8
  %385 = load ptr, ptr %p, align 8
  %incdec.ptr506 = getelementptr inbounds i8, ptr %385, i32 1
  store ptr %incdec.ptr506, ptr %p, align 8
  %386 = load i8, ptr %385, align 1
  %conv507 = zext i8 %386 to i32
  %idx.ext508 = sext i32 %conv507 to i64
  %idx.neg509 = sub i64 0, %idx.ext508
  %add.ptr510 = getelementptr inbounds i8, ptr %384, i64 %idx.neg509
  %387 = load i8, ptr %add.ptr510, align 1
  store i8 %387, ptr %c, align 1
  %388 = load i8, ptr %c, align 1
  %conv511 = zext i8 %388 to i32
  %mul512 = mul nsw i32 2, %conv511
  %389 = load i32, ptr %x, align 4
  %sub513 = sub nsw i32 %389, %mul512
  store i32 %sub513, ptr %x, align 4
  %390 = load ptr, ptr %cp, align 8
  %391 = load ptr, ptr %p, align 8
  %392 = load i8, ptr %391, align 1
  %conv514 = zext i8 %392 to i32
  %idx.ext515 = sext i32 %conv514 to i64
  %idx.neg516 = sub i64 0, %idx.ext515
  %add.ptr517 = getelementptr inbounds i8, ptr %390, i64 %idx.neg516
  %393 = load i8, ptr %add.ptr517, align 1
  store i8 %393, ptr %c, align 1
  %394 = load i8, ptr %c, align 1
  %conv518 = zext i8 %394 to i32
  %395 = load i32, ptr %x, align 4
  %sub519 = sub nsw i32 %395, %conv518
  store i32 %sub519, ptr %x, align 4
  %396 = load ptr, ptr %p, align 8
  %add.ptr520 = getelementptr inbounds i8, ptr %396, i64 2
  store ptr %add.ptr520, ptr %p, align 8
  %397 = load ptr, ptr %cp, align 8
  %398 = load ptr, ptr %p, align 8
  %incdec.ptr521 = getelementptr inbounds i8, ptr %398, i32 1
  store ptr %incdec.ptr521, ptr %p, align 8
  %399 = load i8, ptr %398, align 1
  %conv522 = zext i8 %399 to i32
  %idx.ext523 = sext i32 %conv522 to i64
  %idx.neg524 = sub i64 0, %idx.ext523
  %add.ptr525 = getelementptr inbounds i8, ptr %397, i64 %idx.neg524
  %400 = load i8, ptr %add.ptr525, align 1
  store i8 %400, ptr %c, align 1
  %401 = load i8, ptr %c, align 1
  %conv526 = zext i8 %401 to i32
  %402 = load i32, ptr %x, align 4
  %add527 = add nsw i32 %402, %conv526
  store i32 %add527, ptr %x, align 4
  %403 = load ptr, ptr %cp, align 8
  %404 = load ptr, ptr %p, align 8
  %incdec.ptr528 = getelementptr inbounds i8, ptr %404, i32 1
  store ptr %incdec.ptr528, ptr %p, align 8
  %405 = load i8, ptr %404, align 1
  %conv529 = zext i8 %405 to i32
  %idx.ext530 = sext i32 %conv529 to i64
  %idx.neg531 = sub i64 0, %idx.ext530
  %add.ptr532 = getelementptr inbounds i8, ptr %403, i64 %idx.neg531
  %406 = load i8, ptr %add.ptr532, align 1
  store i8 %406, ptr %c, align 1
  %407 = load i8, ptr %c, align 1
  %conv533 = zext i8 %407 to i32
  %mul534 = mul nsw i32 2, %conv533
  %408 = load i32, ptr %x, align 4
  %add535 = add nsw i32 %408, %mul534
  store i32 %add535, ptr %x, align 4
  %409 = load ptr, ptr %cp, align 8
  %410 = load ptr, ptr %p, align 8
  %411 = load i8, ptr %410, align 1
  %conv536 = zext i8 %411 to i32
  %idx.ext537 = sext i32 %conv536 to i64
  %idx.neg538 = sub i64 0, %idx.ext537
  %add.ptr539 = getelementptr inbounds i8, ptr %409, i64 %idx.neg538
  %412 = load i8, ptr %add.ptr539, align 1
  store i8 %412, ptr %c, align 1
  %413 = load i8, ptr %c, align 1
  %conv540 = zext i8 %413 to i32
  %mul541 = mul nsw i32 3, %conv540
  %414 = load i32, ptr %x, align 4
  %add542 = add nsw i32 %414, %mul541
  store i32 %add542, ptr %x, align 4
  %415 = load i32, ptr %x_size.addr, align 4
  %sub543 = sub nsw i32 %415, 6
  %416 = load ptr, ptr %p, align 8
  %idx.ext544 = sext i32 %sub543 to i64
  %add.ptr545 = getelementptr inbounds i8, ptr %416, i64 %idx.ext544
  store ptr %add.ptr545, ptr %p, align 8
  %417 = load ptr, ptr %cp, align 8
  %418 = load ptr, ptr %p, align 8
  %incdec.ptr546 = getelementptr inbounds i8, ptr %418, i32 1
  store ptr %incdec.ptr546, ptr %p, align 8
  %419 = load i8, ptr %418, align 1
  %conv547 = zext i8 %419 to i32
  %idx.ext548 = sext i32 %conv547 to i64
  %idx.neg549 = sub i64 0, %idx.ext548
  %add.ptr550 = getelementptr inbounds i8, ptr %417, i64 %idx.neg549
  %420 = load i8, ptr %add.ptr550, align 1
  store i8 %420, ptr %c, align 1
  %421 = load i8, ptr %c, align 1
  %conv551 = zext i8 %421 to i32
  %mul552 = mul nsw i32 3, %conv551
  %422 = load i32, ptr %x, align 4
  %sub553 = sub nsw i32 %422, %mul552
  store i32 %sub553, ptr %x, align 4
  %423 = load i8, ptr %c, align 1
  %conv554 = zext i8 %423 to i32
  %424 = load i32, ptr %y, align 4
  %add555 = add nsw i32 %424, %conv554
  store i32 %add555, ptr %y, align 4
  %425 = load ptr, ptr %cp, align 8
  %426 = load ptr, ptr %p, align 8
  %incdec.ptr556 = getelementptr inbounds i8, ptr %426, i32 1
  store ptr %incdec.ptr556, ptr %p, align 8
  %427 = load i8, ptr %426, align 1
  %conv557 = zext i8 %427 to i32
  %idx.ext558 = sext i32 %conv557 to i64
  %idx.neg559 = sub i64 0, %idx.ext558
  %add.ptr560 = getelementptr inbounds i8, ptr %425, i64 %idx.neg559
  %428 = load i8, ptr %add.ptr560, align 1
  store i8 %428, ptr %c, align 1
  %429 = load i8, ptr %c, align 1
  %conv561 = zext i8 %429 to i32
  %mul562 = mul nsw i32 2, %conv561
  %430 = load i32, ptr %x, align 4
  %sub563 = sub nsw i32 %430, %mul562
  store i32 %sub563, ptr %x, align 4
  %431 = load i8, ptr %c, align 1
  %conv564 = zext i8 %431 to i32
  %432 = load i32, ptr %y, align 4
  %add565 = add nsw i32 %432, %conv564
  store i32 %add565, ptr %y, align 4
  %433 = load ptr, ptr %cp, align 8
  %434 = load ptr, ptr %p, align 8
  %incdec.ptr566 = getelementptr inbounds i8, ptr %434, i32 1
  store ptr %incdec.ptr566, ptr %p, align 8
  %435 = load i8, ptr %434, align 1
  %conv567 = zext i8 %435 to i32
  %idx.ext568 = sext i32 %conv567 to i64
  %idx.neg569 = sub i64 0, %idx.ext568
  %add.ptr570 = getelementptr inbounds i8, ptr %433, i64 %idx.neg569
  %436 = load i8, ptr %add.ptr570, align 1
  store i8 %436, ptr %c, align 1
  %437 = load i8, ptr %c, align 1
  %conv571 = zext i8 %437 to i32
  %438 = load i32, ptr %x, align 4
  %sub572 = sub nsw i32 %438, %conv571
  store i32 %sub572, ptr %x, align 4
  %439 = load i8, ptr %c, align 1
  %conv573 = zext i8 %439 to i32
  %440 = load i32, ptr %y, align 4
  %add574 = add nsw i32 %440, %conv573
  store i32 %add574, ptr %y, align 4
  %441 = load ptr, ptr %cp, align 8
  %442 = load ptr, ptr %p, align 8
  %incdec.ptr575 = getelementptr inbounds i8, ptr %442, i32 1
  store ptr %incdec.ptr575, ptr %p, align 8
  %443 = load i8, ptr %442, align 1
  %conv576 = zext i8 %443 to i32
  %idx.ext577 = sext i32 %conv576 to i64
  %idx.neg578 = sub i64 0, %idx.ext577
  %add.ptr579 = getelementptr inbounds i8, ptr %441, i64 %idx.neg578
  %444 = load i8, ptr %add.ptr579, align 1
  store i8 %444, ptr %c, align 1
  %445 = load i8, ptr %c, align 1
  %conv580 = zext i8 %445 to i32
  %446 = load i32, ptr %y, align 4
  %add581 = add nsw i32 %446, %conv580
  store i32 %add581, ptr %y, align 4
  %447 = load ptr, ptr %cp, align 8
  %448 = load ptr, ptr %p, align 8
  %incdec.ptr582 = getelementptr inbounds i8, ptr %448, i32 1
  store ptr %incdec.ptr582, ptr %p, align 8
  %449 = load i8, ptr %448, align 1
  %conv583 = zext i8 %449 to i32
  %idx.ext584 = sext i32 %conv583 to i64
  %idx.neg585 = sub i64 0, %idx.ext584
  %add.ptr586 = getelementptr inbounds i8, ptr %447, i64 %idx.neg585
  %450 = load i8, ptr %add.ptr586, align 1
  store i8 %450, ptr %c, align 1
  %451 = load i8, ptr %c, align 1
  %conv587 = zext i8 %451 to i32
  %452 = load i32, ptr %x, align 4
  %add588 = add nsw i32 %452, %conv587
  store i32 %add588, ptr %x, align 4
  %453 = load i8, ptr %c, align 1
  %conv589 = zext i8 %453 to i32
  %454 = load i32, ptr %y, align 4
  %add590 = add nsw i32 %454, %conv589
  store i32 %add590, ptr %y, align 4
  %455 = load ptr, ptr %cp, align 8
  %456 = load ptr, ptr %p, align 8
  %incdec.ptr591 = getelementptr inbounds i8, ptr %456, i32 1
  store ptr %incdec.ptr591, ptr %p, align 8
  %457 = load i8, ptr %456, align 1
  %conv592 = zext i8 %457 to i32
  %idx.ext593 = sext i32 %conv592 to i64
  %idx.neg594 = sub i64 0, %idx.ext593
  %add.ptr595 = getelementptr inbounds i8, ptr %455, i64 %idx.neg594
  %458 = load i8, ptr %add.ptr595, align 1
  store i8 %458, ptr %c, align 1
  %459 = load i8, ptr %c, align 1
  %conv596 = zext i8 %459 to i32
  %mul597 = mul nsw i32 2, %conv596
  %460 = load i32, ptr %x, align 4
  %add598 = add nsw i32 %460, %mul597
  store i32 %add598, ptr %x, align 4
  %461 = load i8, ptr %c, align 1
  %conv599 = zext i8 %461 to i32
  %462 = load i32, ptr %y, align 4
  %add600 = add nsw i32 %462, %conv599
  store i32 %add600, ptr %y, align 4
  %463 = load ptr, ptr %cp, align 8
  %464 = load ptr, ptr %p, align 8
  %465 = load i8, ptr %464, align 1
  %conv601 = zext i8 %465 to i32
  %idx.ext602 = sext i32 %conv601 to i64
  %idx.neg603 = sub i64 0, %idx.ext602
  %add.ptr604 = getelementptr inbounds i8, ptr %463, i64 %idx.neg603
  %466 = load i8, ptr %add.ptr604, align 1
  store i8 %466, ptr %c, align 1
  %467 = load i8, ptr %c, align 1
  %conv605 = zext i8 %467 to i32
  %mul606 = mul nsw i32 3, %conv605
  %468 = load i32, ptr %x, align 4
  %add607 = add nsw i32 %468, %mul606
  store i32 %add607, ptr %x, align 4
  %469 = load i8, ptr %c, align 1
  %conv608 = zext i8 %469 to i32
  %470 = load i32, ptr %y, align 4
  %add609 = add nsw i32 %470, %conv608
  store i32 %add609, ptr %y, align 4
  %471 = load i32, ptr %x_size.addr, align 4
  %sub610 = sub nsw i32 %471, 5
  %472 = load ptr, ptr %p, align 8
  %idx.ext611 = sext i32 %sub610 to i64
  %add.ptr612 = getelementptr inbounds i8, ptr %472, i64 %idx.ext611
  store ptr %add.ptr612, ptr %p, align 8
  %473 = load ptr, ptr %cp, align 8
  %474 = load ptr, ptr %p, align 8
  %incdec.ptr613 = getelementptr inbounds i8, ptr %474, i32 1
  store ptr %incdec.ptr613, ptr %p, align 8
  %475 = load i8, ptr %474, align 1
  %conv614 = zext i8 %475 to i32
  %idx.ext615 = sext i32 %conv614 to i64
  %idx.neg616 = sub i64 0, %idx.ext615
  %add.ptr617 = getelementptr inbounds i8, ptr %473, i64 %idx.neg616
  %476 = load i8, ptr %add.ptr617, align 1
  store i8 %476, ptr %c, align 1
  %477 = load i8, ptr %c, align 1
  %conv618 = zext i8 %477 to i32
  %mul619 = mul nsw i32 2, %conv618
  %478 = load i32, ptr %x, align 4
  %sub620 = sub nsw i32 %478, %mul619
  store i32 %sub620, ptr %x, align 4
  %479 = load i8, ptr %c, align 1
  %conv621 = zext i8 %479 to i32
  %mul622 = mul nsw i32 2, %conv621
  %480 = load i32, ptr %y, align 4
  %add623 = add nsw i32 %480, %mul622
  store i32 %add623, ptr %y, align 4
  %481 = load ptr, ptr %cp, align 8
  %482 = load ptr, ptr %p, align 8
  %incdec.ptr624 = getelementptr inbounds i8, ptr %482, i32 1
  store ptr %incdec.ptr624, ptr %p, align 8
  %483 = load i8, ptr %482, align 1
  %conv625 = zext i8 %483 to i32
  %idx.ext626 = sext i32 %conv625 to i64
  %idx.neg627 = sub i64 0, %idx.ext626
  %add.ptr628 = getelementptr inbounds i8, ptr %481, i64 %idx.neg627
  %484 = load i8, ptr %add.ptr628, align 1
  store i8 %484, ptr %c, align 1
  %485 = load i8, ptr %c, align 1
  %conv629 = zext i8 %485 to i32
  %486 = load i32, ptr %x, align 4
  %sub630 = sub nsw i32 %486, %conv629
  store i32 %sub630, ptr %x, align 4
  %487 = load i8, ptr %c, align 1
  %conv631 = zext i8 %487 to i32
  %mul632 = mul nsw i32 2, %conv631
  %488 = load i32, ptr %y, align 4
  %add633 = add nsw i32 %488, %mul632
  store i32 %add633, ptr %y, align 4
  %489 = load ptr, ptr %cp, align 8
  %490 = load ptr, ptr %p, align 8
  %incdec.ptr634 = getelementptr inbounds i8, ptr %490, i32 1
  store ptr %incdec.ptr634, ptr %p, align 8
  %491 = load i8, ptr %490, align 1
  %conv635 = zext i8 %491 to i32
  %idx.ext636 = sext i32 %conv635 to i64
  %idx.neg637 = sub i64 0, %idx.ext636
  %add.ptr638 = getelementptr inbounds i8, ptr %489, i64 %idx.neg637
  %492 = load i8, ptr %add.ptr638, align 1
  store i8 %492, ptr %c, align 1
  %493 = load i8, ptr %c, align 1
  %conv639 = zext i8 %493 to i32
  %mul640 = mul nsw i32 2, %conv639
  %494 = load i32, ptr %y, align 4
  %add641 = add nsw i32 %494, %mul640
  store i32 %add641, ptr %y, align 4
  %495 = load ptr, ptr %cp, align 8
  %496 = load ptr, ptr %p, align 8
  %incdec.ptr642 = getelementptr inbounds i8, ptr %496, i32 1
  store ptr %incdec.ptr642, ptr %p, align 8
  %497 = load i8, ptr %496, align 1
  %conv643 = zext i8 %497 to i32
  %idx.ext644 = sext i32 %conv643 to i64
  %idx.neg645 = sub i64 0, %idx.ext644
  %add.ptr646 = getelementptr inbounds i8, ptr %495, i64 %idx.neg645
  %498 = load i8, ptr %add.ptr646, align 1
  store i8 %498, ptr %c, align 1
  %499 = load i8, ptr %c, align 1
  %conv647 = zext i8 %499 to i32
  %500 = load i32, ptr %x, align 4
  %add648 = add nsw i32 %500, %conv647
  store i32 %add648, ptr %x, align 4
  %501 = load i8, ptr %c, align 1
  %conv649 = zext i8 %501 to i32
  %mul650 = mul nsw i32 2, %conv649
  %502 = load i32, ptr %y, align 4
  %add651 = add nsw i32 %502, %mul650
  store i32 %add651, ptr %y, align 4
  %503 = load ptr, ptr %cp, align 8
  %504 = load ptr, ptr %p, align 8
  %505 = load i8, ptr %504, align 1
  %conv652 = zext i8 %505 to i32
  %idx.ext653 = sext i32 %conv652 to i64
  %idx.neg654 = sub i64 0, %idx.ext653
  %add.ptr655 = getelementptr inbounds i8, ptr %503, i64 %idx.neg654
  %506 = load i8, ptr %add.ptr655, align 1
  store i8 %506, ptr %c, align 1
  %507 = load i8, ptr %c, align 1
  %conv656 = zext i8 %507 to i32
  %mul657 = mul nsw i32 2, %conv656
  %508 = load i32, ptr %x, align 4
  %add658 = add nsw i32 %508, %mul657
  store i32 %add658, ptr %x, align 4
  %509 = load i8, ptr %c, align 1
  %conv659 = zext i8 %509 to i32
  %mul660 = mul nsw i32 2, %conv659
  %510 = load i32, ptr %y, align 4
  %add661 = add nsw i32 %510, %mul660
  store i32 %add661, ptr %y, align 4
  %511 = load i32, ptr %x_size.addr, align 4
  %sub662 = sub nsw i32 %511, 3
  %512 = load ptr, ptr %p, align 8
  %idx.ext663 = sext i32 %sub662 to i64
  %add.ptr664 = getelementptr inbounds i8, ptr %512, i64 %idx.ext663
  store ptr %add.ptr664, ptr %p, align 8
  %513 = load ptr, ptr %cp, align 8
  %514 = load ptr, ptr %p, align 8
  %incdec.ptr665 = getelementptr inbounds i8, ptr %514, i32 1
  store ptr %incdec.ptr665, ptr %p, align 8
  %515 = load i8, ptr %514, align 1
  %conv666 = zext i8 %515 to i32
  %idx.ext667 = sext i32 %conv666 to i64
  %idx.neg668 = sub i64 0, %idx.ext667
  %add.ptr669 = getelementptr inbounds i8, ptr %513, i64 %idx.neg668
  %516 = load i8, ptr %add.ptr669, align 1
  store i8 %516, ptr %c, align 1
  %517 = load i8, ptr %c, align 1
  %conv670 = zext i8 %517 to i32
  %518 = load i32, ptr %x, align 4
  %sub671 = sub nsw i32 %518, %conv670
  store i32 %sub671, ptr %x, align 4
  %519 = load i8, ptr %c, align 1
  %conv672 = zext i8 %519 to i32
  %mul673 = mul nsw i32 3, %conv672
  %520 = load i32, ptr %y, align 4
  %add674 = add nsw i32 %520, %mul673
  store i32 %add674, ptr %y, align 4
  %521 = load ptr, ptr %cp, align 8
  %522 = load ptr, ptr %p, align 8
  %incdec.ptr675 = getelementptr inbounds i8, ptr %522, i32 1
  store ptr %incdec.ptr675, ptr %p, align 8
  %523 = load i8, ptr %522, align 1
  %conv676 = zext i8 %523 to i32
  %idx.ext677 = sext i32 %conv676 to i64
  %idx.neg678 = sub i64 0, %idx.ext677
  %add.ptr679 = getelementptr inbounds i8, ptr %521, i64 %idx.neg678
  %524 = load i8, ptr %add.ptr679, align 1
  store i8 %524, ptr %c, align 1
  %525 = load i8, ptr %c, align 1
  %conv680 = zext i8 %525 to i32
  %mul681 = mul nsw i32 3, %conv680
  %526 = load i32, ptr %y, align 4
  %add682 = add nsw i32 %526, %mul681
  store i32 %add682, ptr %y, align 4
  %527 = load ptr, ptr %cp, align 8
  %528 = load ptr, ptr %p, align 8
  %529 = load i8, ptr %528, align 1
  %conv683 = zext i8 %529 to i32
  %idx.ext684 = sext i32 %conv683 to i64
  %idx.neg685 = sub i64 0, %idx.ext684
  %add.ptr686 = getelementptr inbounds i8, ptr %527, i64 %idx.neg685
  %530 = load i8, ptr %add.ptr686, align 1
  store i8 %530, ptr %c, align 1
  %531 = load i8, ptr %c, align 1
  %conv687 = zext i8 %531 to i32
  %532 = load i32, ptr %x, align 4
  %add688 = add nsw i32 %532, %conv687
  store i32 %add688, ptr %x, align 4
  %533 = load i8, ptr %c, align 1
  %conv689 = zext i8 %533 to i32
  %mul690 = mul nsw i32 3, %conv689
  %534 = load i32, ptr %y, align 4
  %add691 = add nsw i32 %534, %mul690
  store i32 %add691, ptr %y, align 4
  %535 = load i32, ptr %x, align 4
  %536 = load i32, ptr %x, align 4
  %mul692 = mul nsw i32 %535, %536
  store i32 %mul692, ptr %xx, align 4
  %537 = load i32, ptr %y, align 4
  %538 = load i32, ptr %y, align 4
  %mul693 = mul nsw i32 %537, %538
  store i32 %mul693, ptr %yy, align 4
  %539 = load i32, ptr %xx, align 4
  %540 = load i32, ptr %yy, align 4
  %add694 = add nsw i32 %539, %540
  store i32 %add694, ptr %sq, align 4
  %541 = load i32, ptr %sq, align 4
  %542 = load i32, ptr %n, align 4
  %543 = load i32, ptr %n, align 4
  %mul695 = mul nsw i32 %542, %543
  %div = sdiv i32 %mul695, 2
  %cmp696 = icmp sgt i32 %541, %div
  br i1 %cmp696, label %if.then698, label %if.end889

if.then698:                                       ; preds = %if.then341
  %544 = load i32, ptr %yy, align 4
  %545 = load i32, ptr %xx, align 4
  %cmp699 = icmp slt i32 %544, %545
  br i1 %cmp699, label %if.then701, label %if.else

if.then701:                                       ; preds = %if.then698
  %546 = load i32, ptr %y, align 4
  %conv702 = sitofp i32 %546 to float
  %547 = load i32, ptr %x, align 4
  %call703 = call i32 @abs(i32 noundef %547) #10
  %conv704 = sitofp i32 %call703 to float
  %div705 = fdiv float %conv702, %conv704
  store float %div705, ptr %divide, align 4
  %548 = load i32, ptr %x, align 4
  %call706 = call i32 @abs(i32 noundef %548) #10
  %549 = load i32, ptr %x, align 4
  %div707 = sdiv i32 %call706, %549
  store i32 %div707, ptr %sq, align 4
  %550 = load ptr, ptr %cp, align 8
  %551 = load ptr, ptr %in.addr, align 8
  %552 = load i32, ptr %i, align 4
  %553 = load float, ptr %divide, align 4
  %cmp708 = fcmp olt float %553, 0.000000e+00
  br i1 %cmp708, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then701
  %554 = load float, ptr %divide, align 4
  %conv710 = fpext float %554 to double
  %sub711 = fsub double %conv710, 5.000000e-01
  %conv712 = fptosi double %sub711 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then701
  %555 = load float, ptr %divide, align 4
  %conv713 = fpext float %555 to double
  %add714 = fadd double %conv713, 5.000000e-01
  %conv715 = fptosi double %add714 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv712, %cond.true ], [ %conv715, %cond.false ]
  %add716 = add nsw i32 %552, %cond
  %556 = load i32, ptr %x_size.addr, align 4
  %mul717 = mul nsw i32 %add716, %556
  %557 = load i32, ptr %j, align 4
  %add718 = add nsw i32 %mul717, %557
  %558 = load i32, ptr %sq, align 4
  %add719 = add nsw i32 %add718, %558
  %idxprom720 = sext i32 %add719 to i64
  %arrayidx721 = getelementptr inbounds i8, ptr %551, i64 %idxprom720
  %559 = load i8, ptr %arrayidx721, align 1
  %conv722 = zext i8 %559 to i32
  %idx.ext723 = sext i32 %conv722 to i64
  %idx.neg724 = sub i64 0, %idx.ext723
  %add.ptr725 = getelementptr inbounds i8, ptr %550, i64 %idx.neg724
  %560 = load i8, ptr %add.ptr725, align 1
  %conv726 = zext i8 %560 to i32
  %561 = load ptr, ptr %cp, align 8
  %562 = load ptr, ptr %in.addr, align 8
  %563 = load i32, ptr %i, align 4
  %564 = load float, ptr %divide, align 4
  %mul727 = fmul float 2.000000e+00, %564
  %cmp728 = fcmp olt float %mul727, 0.000000e+00
  br i1 %cmp728, label %cond.true730, label %cond.false735

cond.true730:                                     ; preds = %cond.end
  %565 = load float, ptr %divide, align 4
  %mul731 = fmul float 2.000000e+00, %565
  %conv732 = fpext float %mul731 to double
  %sub733 = fsub double %conv732, 5.000000e-01
  %conv734 = fptosi double %sub733 to i32
  br label %cond.end740

cond.false735:                                    ; preds = %cond.end
  %566 = load float, ptr %divide, align 4
  %mul736 = fmul float 2.000000e+00, %566
  %conv737 = fpext float %mul736 to double
  %add738 = fadd double %conv737, 5.000000e-01
  %conv739 = fptosi double %add738 to i32
  br label %cond.end740

cond.end740:                                      ; preds = %cond.false735, %cond.true730
  %cond741 = phi i32 [ %conv734, %cond.true730 ], [ %conv739, %cond.false735 ]
  %add742 = add nsw i32 %563, %cond741
  %567 = load i32, ptr %x_size.addr, align 4
  %mul743 = mul nsw i32 %add742, %567
  %568 = load i32, ptr %j, align 4
  %add744 = add nsw i32 %mul743, %568
  %569 = load i32, ptr %sq, align 4
  %mul745 = mul nsw i32 2, %569
  %add746 = add nsw i32 %add744, %mul745
  %idxprom747 = sext i32 %add746 to i64
  %arrayidx748 = getelementptr inbounds i8, ptr %562, i64 %idxprom747
  %570 = load i8, ptr %arrayidx748, align 1
  %conv749 = zext i8 %570 to i32
  %idx.ext750 = sext i32 %conv749 to i64
  %idx.neg751 = sub i64 0, %idx.ext750
  %add.ptr752 = getelementptr inbounds i8, ptr %561, i64 %idx.neg751
  %571 = load i8, ptr %add.ptr752, align 1
  %conv753 = zext i8 %571 to i32
  %add754 = add nsw i32 %conv726, %conv753
  %572 = load ptr, ptr %cp, align 8
  %573 = load ptr, ptr %in.addr, align 8
  %574 = load i32, ptr %i, align 4
  %575 = load float, ptr %divide, align 4
  %mul755 = fmul float 3.000000e+00, %575
  %cmp756 = fcmp olt float %mul755, 0.000000e+00
  br i1 %cmp756, label %cond.true758, label %cond.false763

cond.true758:                                     ; preds = %cond.end740
  %576 = load float, ptr %divide, align 4
  %mul759 = fmul float 3.000000e+00, %576
  %conv760 = fpext float %mul759 to double
  %sub761 = fsub double %conv760, 5.000000e-01
  %conv762 = fptosi double %sub761 to i32
  br label %cond.end768

cond.false763:                                    ; preds = %cond.end740
  %577 = load float, ptr %divide, align 4
  %mul764 = fmul float 3.000000e+00, %577
  %conv765 = fpext float %mul764 to double
  %add766 = fadd double %conv765, 5.000000e-01
  %conv767 = fptosi double %add766 to i32
  br label %cond.end768

cond.end768:                                      ; preds = %cond.false763, %cond.true758
  %cond769 = phi i32 [ %conv762, %cond.true758 ], [ %conv767, %cond.false763 ]
  %add770 = add nsw i32 %574, %cond769
  %578 = load i32, ptr %x_size.addr, align 4
  %mul771 = mul nsw i32 %add770, %578
  %579 = load i32, ptr %j, align 4
  %add772 = add nsw i32 %mul771, %579
  %580 = load i32, ptr %sq, align 4
  %mul773 = mul nsw i32 3, %580
  %add774 = add nsw i32 %add772, %mul773
  %idxprom775 = sext i32 %add774 to i64
  %arrayidx776 = getelementptr inbounds i8, ptr %573, i64 %idxprom775
  %581 = load i8, ptr %arrayidx776, align 1
  %conv777 = zext i8 %581 to i32
  %idx.ext778 = sext i32 %conv777 to i64
  %idx.neg779 = sub i64 0, %idx.ext778
  %add.ptr780 = getelementptr inbounds i8, ptr %572, i64 %idx.neg779
  %582 = load i8, ptr %add.ptr780, align 1
  %conv781 = zext i8 %582 to i32
  %add782 = add nsw i32 %add754, %conv781
  store i32 %add782, ptr %sq, align 4
  br label %if.end

if.else:                                          ; preds = %if.then698
  %583 = load i32, ptr %x, align 4
  %conv783 = sitofp i32 %583 to float
  %584 = load i32, ptr %y, align 4
  %call784 = call i32 @abs(i32 noundef %584) #10
  %conv785 = sitofp i32 %call784 to float
  %div786 = fdiv float %conv783, %conv785
  store float %div786, ptr %divide, align 4
  %585 = load i32, ptr %y, align 4
  %call787 = call i32 @abs(i32 noundef %585) #10
  %586 = load i32, ptr %y, align 4
  %div788 = sdiv i32 %call787, %586
  store i32 %div788, ptr %sq, align 4
  %587 = load ptr, ptr %cp, align 8
  %588 = load ptr, ptr %in.addr, align 8
  %589 = load i32, ptr %i, align 4
  %590 = load i32, ptr %sq, align 4
  %add789 = add nsw i32 %589, %590
  %591 = load i32, ptr %x_size.addr, align 4
  %mul790 = mul nsw i32 %add789, %591
  %592 = load i32, ptr %j, align 4
  %add791 = add nsw i32 %mul790, %592
  %593 = load float, ptr %divide, align 4
  %cmp792 = fcmp olt float %593, 0.000000e+00
  br i1 %cmp792, label %cond.true794, label %cond.false798

cond.true794:                                     ; preds = %if.else
  %594 = load float, ptr %divide, align 4
  %conv795 = fpext float %594 to double
  %sub796 = fsub double %conv795, 5.000000e-01
  %conv797 = fptosi double %sub796 to i32
  br label %cond.end802

cond.false798:                                    ; preds = %if.else
  %595 = load float, ptr %divide, align 4
  %conv799 = fpext float %595 to double
  %add800 = fadd double %conv799, 5.000000e-01
  %conv801 = fptosi double %add800 to i32
  br label %cond.end802

cond.end802:                                      ; preds = %cond.false798, %cond.true794
  %cond803 = phi i32 [ %conv797, %cond.true794 ], [ %conv801, %cond.false798 ]
  %add804 = add nsw i32 %add791, %cond803
  %idxprom805 = sext i32 %add804 to i64
  %arrayidx806 = getelementptr inbounds i8, ptr %588, i64 %idxprom805
  %596 = load i8, ptr %arrayidx806, align 1
  %conv807 = zext i8 %596 to i32
  %idx.ext808 = sext i32 %conv807 to i64
  %idx.neg809 = sub i64 0, %idx.ext808
  %add.ptr810 = getelementptr inbounds i8, ptr %587, i64 %idx.neg809
  %597 = load i8, ptr %add.ptr810, align 1
  %conv811 = zext i8 %597 to i32
  %598 = load ptr, ptr %cp, align 8
  %599 = load ptr, ptr %in.addr, align 8
  %600 = load i32, ptr %i, align 4
  %601 = load i32, ptr %sq, align 4
  %mul812 = mul nsw i32 2, %601
  %add813 = add nsw i32 %600, %mul812
  %602 = load i32, ptr %x_size.addr, align 4
  %mul814 = mul nsw i32 %add813, %602
  %603 = load i32, ptr %j, align 4
  %add815 = add nsw i32 %mul814, %603
  %604 = load float, ptr %divide, align 4
  %mul816 = fmul float 2.000000e+00, %604
  %cmp817 = fcmp olt float %mul816, 0.000000e+00
  br i1 %cmp817, label %cond.true819, label %cond.false824

cond.true819:                                     ; preds = %cond.end802
  %605 = load float, ptr %divide, align 4
  %mul820 = fmul float 2.000000e+00, %605
  %conv821 = fpext float %mul820 to double
  %sub822 = fsub double %conv821, 5.000000e-01
  %conv823 = fptosi double %sub822 to i32
  br label %cond.end829

cond.false824:                                    ; preds = %cond.end802
  %606 = load float, ptr %divide, align 4
  %mul825 = fmul float 2.000000e+00, %606
  %conv826 = fpext float %mul825 to double
  %add827 = fadd double %conv826, 5.000000e-01
  %conv828 = fptosi double %add827 to i32
  br label %cond.end829

cond.end829:                                      ; preds = %cond.false824, %cond.true819
  %cond830 = phi i32 [ %conv823, %cond.true819 ], [ %conv828, %cond.false824 ]
  %add831 = add nsw i32 %add815, %cond830
  %idxprom832 = sext i32 %add831 to i64
  %arrayidx833 = getelementptr inbounds i8, ptr %599, i64 %idxprom832
  %607 = load i8, ptr %arrayidx833, align 1
  %conv834 = zext i8 %607 to i32
  %idx.ext835 = sext i32 %conv834 to i64
  %idx.neg836 = sub i64 0, %idx.ext835
  %add.ptr837 = getelementptr inbounds i8, ptr %598, i64 %idx.neg836
  %608 = load i8, ptr %add.ptr837, align 1
  %conv838 = zext i8 %608 to i32
  %add839 = add nsw i32 %conv811, %conv838
  %609 = load ptr, ptr %cp, align 8
  %610 = load ptr, ptr %in.addr, align 8
  %611 = load i32, ptr %i, align 4
  %612 = load i32, ptr %sq, align 4
  %mul840 = mul nsw i32 3, %612
  %add841 = add nsw i32 %611, %mul840
  %613 = load i32, ptr %x_size.addr, align 4
  %mul842 = mul nsw i32 %add841, %613
  %614 = load i32, ptr %j, align 4
  %add843 = add nsw i32 %mul842, %614
  %615 = load float, ptr %divide, align 4
  %mul844 = fmul float 3.000000e+00, %615
  %cmp845 = fcmp olt float %mul844, 0.000000e+00
  br i1 %cmp845, label %cond.true847, label %cond.false852

cond.true847:                                     ; preds = %cond.end829
  %616 = load float, ptr %divide, align 4
  %mul848 = fmul float 3.000000e+00, %616
  %conv849 = fpext float %mul848 to double
  %sub850 = fsub double %conv849, 5.000000e-01
  %conv851 = fptosi double %sub850 to i32
  br label %cond.end857

cond.false852:                                    ; preds = %cond.end829
  %617 = load float, ptr %divide, align 4
  %mul853 = fmul float 3.000000e+00, %617
  %conv854 = fpext float %mul853 to double
  %add855 = fadd double %conv854, 5.000000e-01
  %conv856 = fptosi double %add855 to i32
  br label %cond.end857

cond.end857:                                      ; preds = %cond.false852, %cond.true847
  %cond858 = phi i32 [ %conv851, %cond.true847 ], [ %conv856, %cond.false852 ]
  %add859 = add nsw i32 %add843, %cond858
  %idxprom860 = sext i32 %add859 to i64
  %arrayidx861 = getelementptr inbounds i8, ptr %610, i64 %idxprom860
  %618 = load i8, ptr %arrayidx861, align 1
  %conv862 = zext i8 %618 to i32
  %idx.ext863 = sext i32 %conv862 to i64
  %idx.neg864 = sub i64 0, %idx.ext863
  %add.ptr865 = getelementptr inbounds i8, ptr %609, i64 %idx.neg864
  %619 = load i8, ptr %add.ptr865, align 1
  %conv866 = zext i8 %619 to i32
  %add867 = add nsw i32 %add839, %conv866
  store i32 %add867, ptr %sq, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end857, %cond.end768
  %620 = load i32, ptr %sq, align 4
  %cmp868 = icmp sgt i32 %620, 290
  br i1 %cmp868, label %if.then870, label %if.end888

if.then870:                                       ; preds = %if.end
  %621 = load i32, ptr %max_no.addr, align 4
  %622 = load i32, ptr %n, align 4
  %sub871 = sub nsw i32 %621, %622
  %623 = load ptr, ptr %r.addr, align 8
  %624 = load i32, ptr %i, align 4
  %625 = load i32, ptr %x_size.addr, align 4
  %mul872 = mul nsw i32 %624, %625
  %626 = load i32, ptr %j, align 4
  %add873 = add nsw i32 %mul872, %626
  %idxprom874 = sext i32 %add873 to i64
  %arrayidx875 = getelementptr inbounds i32, ptr %623, i64 %idxprom874
  store i32 %sub871, ptr %arrayidx875, align 4
  %627 = load i32, ptr %x, align 4
  %mul876 = mul nsw i32 51, %627
  %628 = load i32, ptr %n, align 4
  %div877 = sdiv i32 %mul876, %628
  %629 = load ptr, ptr %cgx, align 8
  %630 = load i32, ptr %i, align 4
  %631 = load i32, ptr %x_size.addr, align 4
  %mul878 = mul nsw i32 %630, %631
  %632 = load i32, ptr %j, align 4
  %add879 = add nsw i32 %mul878, %632
  %idxprom880 = sext i32 %add879 to i64
  %arrayidx881 = getelementptr inbounds i32, ptr %629, i64 %idxprom880
  store i32 %div877, ptr %arrayidx881, align 4
  %633 = load i32, ptr %y, align 4
  %mul882 = mul nsw i32 51, %633
  %634 = load i32, ptr %n, align 4
  %div883 = sdiv i32 %mul882, %634
  %635 = load ptr, ptr %cgy, align 8
  %636 = load i32, ptr %i, align 4
  %637 = load i32, ptr %x_size.addr, align 4
  %mul884 = mul nsw i32 %636, %637
  %638 = load i32, ptr %j, align 4
  %add885 = add nsw i32 %mul884, %638
  %idxprom886 = sext i32 %add885 to i64
  %arrayidx887 = getelementptr inbounds i32, ptr %635, i64 %idxprom886
  store i32 %div883, ptr %arrayidx887, align 4
  br label %if.end888

if.end888:                                        ; preds = %if.then870, %if.end
  br label %if.end889

if.end889:                                        ; preds = %if.end888, %if.then341
  br label %if.end890

if.end890:                                        ; preds = %if.end889, %if.then332
  br label %if.end891

if.end891:                                        ; preds = %if.end890, %if.then322
  br label %if.end892

if.end892:                                        ; preds = %if.end891, %if.then309
  br label %if.end893

if.end893:                                        ; preds = %if.end892, %if.then300
  br label %if.end894

if.end894:                                        ; preds = %if.end893, %if.then290
  br label %if.end895

if.end895:                                        ; preds = %if.end894, %if.then280
  br label %if.end896

if.end896:                                        ; preds = %if.end895, %if.then270
  br label %if.end897

if.end897:                                        ; preds = %if.end896, %if.then257
  br label %if.end898

if.end898:                                        ; preds = %if.end897, %if.then248
  br label %if.end899

if.end899:                                        ; preds = %if.end898, %if.then238
  br label %if.end900

if.end900:                                        ; preds = %if.end899, %if.then228
  br label %if.end901

if.end901:                                        ; preds = %if.end900, %if.then218
  br label %if.end902

if.end902:                                        ; preds = %if.end901, %if.then208
  br label %if.end903

if.end903:                                        ; preds = %if.end902, %if.then198
  br label %if.end904

if.end904:                                        ; preds = %if.end903, %if.then185
  br label %if.end905

if.end905:                                        ; preds = %if.end904, %if.then176
  br label %if.end906

if.end906:                                        ; preds = %if.end905, %if.then166
  br label %if.end907

if.end907:                                        ; preds = %if.end906, %if.then
  br label %if.end908

if.end908:                                        ; preds = %if.end907, %for.body15
  br label %for.inc

for.inc:                                          ; preds = %if.end908
  %639 = load i32, ptr %j, align 4
  %inc = add nsw i32 %639, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond11, !llvm.loop !43

for.end:                                          ; preds = %for.cond11
  br label %for.inc909

for.inc909:                                       ; preds = %for.end
  %640 = load i32, ptr %i, align 4
  %inc910 = add nsw i32 %640, 1
  store i32 %inc910, ptr %i, align 4
  br label %for.cond, !llvm.loop !44

for.end911:                                       ; preds = %for.cond
  store i32 0, ptr %n, align 4
  store i32 5, ptr %i, align 4
  br label %for.cond912

for.cond912:                                      ; preds = %for.inc1386, %for.end911
  %641 = load i32, ptr %i, align 4
  %642 = load i32, ptr %y_size.addr, align 4
  %sub913 = sub nsw i32 %642, 5
  %cmp914 = icmp slt i32 %641, %sub913
  br i1 %cmp914, label %for.body916, label %for.end1388

for.body916:                                      ; preds = %for.cond912
  store i32 5, ptr %j, align 4
  br label %for.cond917

for.cond917:                                      ; preds = %for.inc1383, %for.body916
  %643 = load i32, ptr %j, align 4
  %644 = load i32, ptr %x_size.addr, align 4
  %sub918 = sub nsw i32 %644, 5
  %cmp919 = icmp slt i32 %643, %sub918
  br i1 %cmp919, label %for.body921, label %for.end1385

for.body921:                                      ; preds = %for.cond917
  %645 = load ptr, ptr %r.addr, align 8
  %646 = load i32, ptr %i, align 4
  %647 = load i32, ptr %x_size.addr, align 4
  %mul922 = mul nsw i32 %646, %647
  %648 = load i32, ptr %j, align 4
  %add923 = add nsw i32 %mul922, %648
  %idxprom924 = sext i32 %add923 to i64
  %arrayidx925 = getelementptr inbounds i32, ptr %645, i64 %idxprom924
  %649 = load i32, ptr %arrayidx925, align 4
  store i32 %649, ptr %x, align 4
  %650 = load i32, ptr %x, align 4
  %cmp926 = icmp sgt i32 %650, 0
  br i1 %cmp926, label %if.then928, label %if.end1382

if.then928:                                       ; preds = %for.body921
  %651 = load i32, ptr %x, align 4
  %652 = load ptr, ptr %r.addr, align 8
  %653 = load i32, ptr %i, align 4
  %sub929 = sub nsw i32 %653, 3
  %654 = load i32, ptr %x_size.addr, align 4
  %mul930 = mul nsw i32 %sub929, %654
  %655 = load i32, ptr %j, align 4
  %add931 = add nsw i32 %mul930, %655
  %sub932 = sub nsw i32 %add931, 3
  %idxprom933 = sext i32 %sub932 to i64
  %arrayidx934 = getelementptr inbounds i32, ptr %652, i64 %idxprom933
  %656 = load i32, ptr %arrayidx934, align 4
  %cmp935 = icmp sgt i32 %651, %656
  br i1 %cmp935, label %land.lhs.true, label %if.end1381

land.lhs.true:                                    ; preds = %if.then928
  %657 = load i32, ptr %x, align 4
  %658 = load ptr, ptr %r.addr, align 8
  %659 = load i32, ptr %i, align 4
  %sub937 = sub nsw i32 %659, 3
  %660 = load i32, ptr %x_size.addr, align 4
  %mul938 = mul nsw i32 %sub937, %660
  %661 = load i32, ptr %j, align 4
  %add939 = add nsw i32 %mul938, %661
  %sub940 = sub nsw i32 %add939, 2
  %idxprom941 = sext i32 %sub940 to i64
  %arrayidx942 = getelementptr inbounds i32, ptr %658, i64 %idxprom941
  %662 = load i32, ptr %arrayidx942, align 4
  %cmp943 = icmp sgt i32 %657, %662
  br i1 %cmp943, label %land.lhs.true945, label %if.end1381

land.lhs.true945:                                 ; preds = %land.lhs.true
  %663 = load i32, ptr %x, align 4
  %664 = load ptr, ptr %r.addr, align 8
  %665 = load i32, ptr %i, align 4
  %sub946 = sub nsw i32 %665, 3
  %666 = load i32, ptr %x_size.addr, align 4
  %mul947 = mul nsw i32 %sub946, %666
  %667 = load i32, ptr %j, align 4
  %add948 = add nsw i32 %mul947, %667
  %sub949 = sub nsw i32 %add948, 1
  %idxprom950 = sext i32 %sub949 to i64
  %arrayidx951 = getelementptr inbounds i32, ptr %664, i64 %idxprom950
  %668 = load i32, ptr %arrayidx951, align 4
  %cmp952 = icmp sgt i32 %663, %668
  br i1 %cmp952, label %land.lhs.true954, label %if.end1381

land.lhs.true954:                                 ; preds = %land.lhs.true945
  %669 = load i32, ptr %x, align 4
  %670 = load ptr, ptr %r.addr, align 8
  %671 = load i32, ptr %i, align 4
  %sub955 = sub nsw i32 %671, 3
  %672 = load i32, ptr %x_size.addr, align 4
  %mul956 = mul nsw i32 %sub955, %672
  %673 = load i32, ptr %j, align 4
  %add957 = add nsw i32 %mul956, %673
  %idxprom958 = sext i32 %add957 to i64
  %arrayidx959 = getelementptr inbounds i32, ptr %670, i64 %idxprom958
  %674 = load i32, ptr %arrayidx959, align 4
  %cmp960 = icmp sgt i32 %669, %674
  br i1 %cmp960, label %land.lhs.true962, label %if.end1381

land.lhs.true962:                                 ; preds = %land.lhs.true954
  %675 = load i32, ptr %x, align 4
  %676 = load ptr, ptr %r.addr, align 8
  %677 = load i32, ptr %i, align 4
  %sub963 = sub nsw i32 %677, 3
  %678 = load i32, ptr %x_size.addr, align 4
  %mul964 = mul nsw i32 %sub963, %678
  %679 = load i32, ptr %j, align 4
  %add965 = add nsw i32 %mul964, %679
  %add966 = add nsw i32 %add965, 1
  %idxprom967 = sext i32 %add966 to i64
  %arrayidx968 = getelementptr inbounds i32, ptr %676, i64 %idxprom967
  %680 = load i32, ptr %arrayidx968, align 4
  %cmp969 = icmp sgt i32 %675, %680
  br i1 %cmp969, label %land.lhs.true971, label %if.end1381

land.lhs.true971:                                 ; preds = %land.lhs.true962
  %681 = load i32, ptr %x, align 4
  %682 = load ptr, ptr %r.addr, align 8
  %683 = load i32, ptr %i, align 4
  %sub972 = sub nsw i32 %683, 3
  %684 = load i32, ptr %x_size.addr, align 4
  %mul973 = mul nsw i32 %sub972, %684
  %685 = load i32, ptr %j, align 4
  %add974 = add nsw i32 %mul973, %685
  %add975 = add nsw i32 %add974, 2
  %idxprom976 = sext i32 %add975 to i64
  %arrayidx977 = getelementptr inbounds i32, ptr %682, i64 %idxprom976
  %686 = load i32, ptr %arrayidx977, align 4
  %cmp978 = icmp sgt i32 %681, %686
  br i1 %cmp978, label %land.lhs.true980, label %if.end1381

land.lhs.true980:                                 ; preds = %land.lhs.true971
  %687 = load i32, ptr %x, align 4
  %688 = load ptr, ptr %r.addr, align 8
  %689 = load i32, ptr %i, align 4
  %sub981 = sub nsw i32 %689, 3
  %690 = load i32, ptr %x_size.addr, align 4
  %mul982 = mul nsw i32 %sub981, %690
  %691 = load i32, ptr %j, align 4
  %add983 = add nsw i32 %mul982, %691
  %add984 = add nsw i32 %add983, 3
  %idxprom985 = sext i32 %add984 to i64
  %arrayidx986 = getelementptr inbounds i32, ptr %688, i64 %idxprom985
  %692 = load i32, ptr %arrayidx986, align 4
  %cmp987 = icmp sgt i32 %687, %692
  br i1 %cmp987, label %land.lhs.true989, label %if.end1381

land.lhs.true989:                                 ; preds = %land.lhs.true980
  %693 = load i32, ptr %x, align 4
  %694 = load ptr, ptr %r.addr, align 8
  %695 = load i32, ptr %i, align 4
  %sub990 = sub nsw i32 %695, 2
  %696 = load i32, ptr %x_size.addr, align 4
  %mul991 = mul nsw i32 %sub990, %696
  %697 = load i32, ptr %j, align 4
  %add992 = add nsw i32 %mul991, %697
  %sub993 = sub nsw i32 %add992, 3
  %idxprom994 = sext i32 %sub993 to i64
  %arrayidx995 = getelementptr inbounds i32, ptr %694, i64 %idxprom994
  %698 = load i32, ptr %arrayidx995, align 4
  %cmp996 = icmp sgt i32 %693, %698
  br i1 %cmp996, label %land.lhs.true998, label %if.end1381

land.lhs.true998:                                 ; preds = %land.lhs.true989
  %699 = load i32, ptr %x, align 4
  %700 = load ptr, ptr %r.addr, align 8
  %701 = load i32, ptr %i, align 4
  %sub999 = sub nsw i32 %701, 2
  %702 = load i32, ptr %x_size.addr, align 4
  %mul1000 = mul nsw i32 %sub999, %702
  %703 = load i32, ptr %j, align 4
  %add1001 = add nsw i32 %mul1000, %703
  %sub1002 = sub nsw i32 %add1001, 2
  %idxprom1003 = sext i32 %sub1002 to i64
  %arrayidx1004 = getelementptr inbounds i32, ptr %700, i64 %idxprom1003
  %704 = load i32, ptr %arrayidx1004, align 4
  %cmp1005 = icmp sgt i32 %699, %704
  br i1 %cmp1005, label %land.lhs.true1007, label %if.end1381

land.lhs.true1007:                                ; preds = %land.lhs.true998
  %705 = load i32, ptr %x, align 4
  %706 = load ptr, ptr %r.addr, align 8
  %707 = load i32, ptr %i, align 4
  %sub1008 = sub nsw i32 %707, 2
  %708 = load i32, ptr %x_size.addr, align 4
  %mul1009 = mul nsw i32 %sub1008, %708
  %709 = load i32, ptr %j, align 4
  %add1010 = add nsw i32 %mul1009, %709
  %sub1011 = sub nsw i32 %add1010, 1
  %idxprom1012 = sext i32 %sub1011 to i64
  %arrayidx1013 = getelementptr inbounds i32, ptr %706, i64 %idxprom1012
  %710 = load i32, ptr %arrayidx1013, align 4
  %cmp1014 = icmp sgt i32 %705, %710
  br i1 %cmp1014, label %land.lhs.true1016, label %if.end1381

land.lhs.true1016:                                ; preds = %land.lhs.true1007
  %711 = load i32, ptr %x, align 4
  %712 = load ptr, ptr %r.addr, align 8
  %713 = load i32, ptr %i, align 4
  %sub1017 = sub nsw i32 %713, 2
  %714 = load i32, ptr %x_size.addr, align 4
  %mul1018 = mul nsw i32 %sub1017, %714
  %715 = load i32, ptr %j, align 4
  %add1019 = add nsw i32 %mul1018, %715
  %idxprom1020 = sext i32 %add1019 to i64
  %arrayidx1021 = getelementptr inbounds i32, ptr %712, i64 %idxprom1020
  %716 = load i32, ptr %arrayidx1021, align 4
  %cmp1022 = icmp sgt i32 %711, %716
  br i1 %cmp1022, label %land.lhs.true1024, label %if.end1381

land.lhs.true1024:                                ; preds = %land.lhs.true1016
  %717 = load i32, ptr %x, align 4
  %718 = load ptr, ptr %r.addr, align 8
  %719 = load i32, ptr %i, align 4
  %sub1025 = sub nsw i32 %719, 2
  %720 = load i32, ptr %x_size.addr, align 4
  %mul1026 = mul nsw i32 %sub1025, %720
  %721 = load i32, ptr %j, align 4
  %add1027 = add nsw i32 %mul1026, %721
  %add1028 = add nsw i32 %add1027, 1
  %idxprom1029 = sext i32 %add1028 to i64
  %arrayidx1030 = getelementptr inbounds i32, ptr %718, i64 %idxprom1029
  %722 = load i32, ptr %arrayidx1030, align 4
  %cmp1031 = icmp sgt i32 %717, %722
  br i1 %cmp1031, label %land.lhs.true1033, label %if.end1381

land.lhs.true1033:                                ; preds = %land.lhs.true1024
  %723 = load i32, ptr %x, align 4
  %724 = load ptr, ptr %r.addr, align 8
  %725 = load i32, ptr %i, align 4
  %sub1034 = sub nsw i32 %725, 2
  %726 = load i32, ptr %x_size.addr, align 4
  %mul1035 = mul nsw i32 %sub1034, %726
  %727 = load i32, ptr %j, align 4
  %add1036 = add nsw i32 %mul1035, %727
  %add1037 = add nsw i32 %add1036, 2
  %idxprom1038 = sext i32 %add1037 to i64
  %arrayidx1039 = getelementptr inbounds i32, ptr %724, i64 %idxprom1038
  %728 = load i32, ptr %arrayidx1039, align 4
  %cmp1040 = icmp sgt i32 %723, %728
  br i1 %cmp1040, label %land.lhs.true1042, label %if.end1381

land.lhs.true1042:                                ; preds = %land.lhs.true1033
  %729 = load i32, ptr %x, align 4
  %730 = load ptr, ptr %r.addr, align 8
  %731 = load i32, ptr %i, align 4
  %sub1043 = sub nsw i32 %731, 2
  %732 = load i32, ptr %x_size.addr, align 4
  %mul1044 = mul nsw i32 %sub1043, %732
  %733 = load i32, ptr %j, align 4
  %add1045 = add nsw i32 %mul1044, %733
  %add1046 = add nsw i32 %add1045, 3
  %idxprom1047 = sext i32 %add1046 to i64
  %arrayidx1048 = getelementptr inbounds i32, ptr %730, i64 %idxprom1047
  %734 = load i32, ptr %arrayidx1048, align 4
  %cmp1049 = icmp sgt i32 %729, %734
  br i1 %cmp1049, label %land.lhs.true1051, label %if.end1381

land.lhs.true1051:                                ; preds = %land.lhs.true1042
  %735 = load i32, ptr %x, align 4
  %736 = load ptr, ptr %r.addr, align 8
  %737 = load i32, ptr %i, align 4
  %sub1052 = sub nsw i32 %737, 1
  %738 = load i32, ptr %x_size.addr, align 4
  %mul1053 = mul nsw i32 %sub1052, %738
  %739 = load i32, ptr %j, align 4
  %add1054 = add nsw i32 %mul1053, %739
  %sub1055 = sub nsw i32 %add1054, 3
  %idxprom1056 = sext i32 %sub1055 to i64
  %arrayidx1057 = getelementptr inbounds i32, ptr %736, i64 %idxprom1056
  %740 = load i32, ptr %arrayidx1057, align 4
  %cmp1058 = icmp sgt i32 %735, %740
  br i1 %cmp1058, label %land.lhs.true1060, label %if.end1381

land.lhs.true1060:                                ; preds = %land.lhs.true1051
  %741 = load i32, ptr %x, align 4
  %742 = load ptr, ptr %r.addr, align 8
  %743 = load i32, ptr %i, align 4
  %sub1061 = sub nsw i32 %743, 1
  %744 = load i32, ptr %x_size.addr, align 4
  %mul1062 = mul nsw i32 %sub1061, %744
  %745 = load i32, ptr %j, align 4
  %add1063 = add nsw i32 %mul1062, %745
  %sub1064 = sub nsw i32 %add1063, 2
  %idxprom1065 = sext i32 %sub1064 to i64
  %arrayidx1066 = getelementptr inbounds i32, ptr %742, i64 %idxprom1065
  %746 = load i32, ptr %arrayidx1066, align 4
  %cmp1067 = icmp sgt i32 %741, %746
  br i1 %cmp1067, label %land.lhs.true1069, label %if.end1381

land.lhs.true1069:                                ; preds = %land.lhs.true1060
  %747 = load i32, ptr %x, align 4
  %748 = load ptr, ptr %r.addr, align 8
  %749 = load i32, ptr %i, align 4
  %sub1070 = sub nsw i32 %749, 1
  %750 = load i32, ptr %x_size.addr, align 4
  %mul1071 = mul nsw i32 %sub1070, %750
  %751 = load i32, ptr %j, align 4
  %add1072 = add nsw i32 %mul1071, %751
  %sub1073 = sub nsw i32 %add1072, 1
  %idxprom1074 = sext i32 %sub1073 to i64
  %arrayidx1075 = getelementptr inbounds i32, ptr %748, i64 %idxprom1074
  %752 = load i32, ptr %arrayidx1075, align 4
  %cmp1076 = icmp sgt i32 %747, %752
  br i1 %cmp1076, label %land.lhs.true1078, label %if.end1381

land.lhs.true1078:                                ; preds = %land.lhs.true1069
  %753 = load i32, ptr %x, align 4
  %754 = load ptr, ptr %r.addr, align 8
  %755 = load i32, ptr %i, align 4
  %sub1079 = sub nsw i32 %755, 1
  %756 = load i32, ptr %x_size.addr, align 4
  %mul1080 = mul nsw i32 %sub1079, %756
  %757 = load i32, ptr %j, align 4
  %add1081 = add nsw i32 %mul1080, %757
  %idxprom1082 = sext i32 %add1081 to i64
  %arrayidx1083 = getelementptr inbounds i32, ptr %754, i64 %idxprom1082
  %758 = load i32, ptr %arrayidx1083, align 4
  %cmp1084 = icmp sgt i32 %753, %758
  br i1 %cmp1084, label %land.lhs.true1086, label %if.end1381

land.lhs.true1086:                                ; preds = %land.lhs.true1078
  %759 = load i32, ptr %x, align 4
  %760 = load ptr, ptr %r.addr, align 8
  %761 = load i32, ptr %i, align 4
  %sub1087 = sub nsw i32 %761, 1
  %762 = load i32, ptr %x_size.addr, align 4
  %mul1088 = mul nsw i32 %sub1087, %762
  %763 = load i32, ptr %j, align 4
  %add1089 = add nsw i32 %mul1088, %763
  %add1090 = add nsw i32 %add1089, 1
  %idxprom1091 = sext i32 %add1090 to i64
  %arrayidx1092 = getelementptr inbounds i32, ptr %760, i64 %idxprom1091
  %764 = load i32, ptr %arrayidx1092, align 4
  %cmp1093 = icmp sgt i32 %759, %764
  br i1 %cmp1093, label %land.lhs.true1095, label %if.end1381

land.lhs.true1095:                                ; preds = %land.lhs.true1086
  %765 = load i32, ptr %x, align 4
  %766 = load ptr, ptr %r.addr, align 8
  %767 = load i32, ptr %i, align 4
  %sub1096 = sub nsw i32 %767, 1
  %768 = load i32, ptr %x_size.addr, align 4
  %mul1097 = mul nsw i32 %sub1096, %768
  %769 = load i32, ptr %j, align 4
  %add1098 = add nsw i32 %mul1097, %769
  %add1099 = add nsw i32 %add1098, 2
  %idxprom1100 = sext i32 %add1099 to i64
  %arrayidx1101 = getelementptr inbounds i32, ptr %766, i64 %idxprom1100
  %770 = load i32, ptr %arrayidx1101, align 4
  %cmp1102 = icmp sgt i32 %765, %770
  br i1 %cmp1102, label %land.lhs.true1104, label %if.end1381

land.lhs.true1104:                                ; preds = %land.lhs.true1095
  %771 = load i32, ptr %x, align 4
  %772 = load ptr, ptr %r.addr, align 8
  %773 = load i32, ptr %i, align 4
  %sub1105 = sub nsw i32 %773, 1
  %774 = load i32, ptr %x_size.addr, align 4
  %mul1106 = mul nsw i32 %sub1105, %774
  %775 = load i32, ptr %j, align 4
  %add1107 = add nsw i32 %mul1106, %775
  %add1108 = add nsw i32 %add1107, 3
  %idxprom1109 = sext i32 %add1108 to i64
  %arrayidx1110 = getelementptr inbounds i32, ptr %772, i64 %idxprom1109
  %776 = load i32, ptr %arrayidx1110, align 4
  %cmp1111 = icmp sgt i32 %771, %776
  br i1 %cmp1111, label %land.lhs.true1113, label %if.end1381

land.lhs.true1113:                                ; preds = %land.lhs.true1104
  %777 = load i32, ptr %x, align 4
  %778 = load ptr, ptr %r.addr, align 8
  %779 = load i32, ptr %i, align 4
  %780 = load i32, ptr %x_size.addr, align 4
  %mul1114 = mul nsw i32 %779, %780
  %781 = load i32, ptr %j, align 4
  %add1115 = add nsw i32 %mul1114, %781
  %sub1116 = sub nsw i32 %add1115, 3
  %idxprom1117 = sext i32 %sub1116 to i64
  %arrayidx1118 = getelementptr inbounds i32, ptr %778, i64 %idxprom1117
  %782 = load i32, ptr %arrayidx1118, align 4
  %cmp1119 = icmp sgt i32 %777, %782
  br i1 %cmp1119, label %land.lhs.true1121, label %if.end1381

land.lhs.true1121:                                ; preds = %land.lhs.true1113
  %783 = load i32, ptr %x, align 4
  %784 = load ptr, ptr %r.addr, align 8
  %785 = load i32, ptr %i, align 4
  %786 = load i32, ptr %x_size.addr, align 4
  %mul1122 = mul nsw i32 %785, %786
  %787 = load i32, ptr %j, align 4
  %add1123 = add nsw i32 %mul1122, %787
  %sub1124 = sub nsw i32 %add1123, 2
  %idxprom1125 = sext i32 %sub1124 to i64
  %arrayidx1126 = getelementptr inbounds i32, ptr %784, i64 %idxprom1125
  %788 = load i32, ptr %arrayidx1126, align 4
  %cmp1127 = icmp sgt i32 %783, %788
  br i1 %cmp1127, label %land.lhs.true1129, label %if.end1381

land.lhs.true1129:                                ; preds = %land.lhs.true1121
  %789 = load i32, ptr %x, align 4
  %790 = load ptr, ptr %r.addr, align 8
  %791 = load i32, ptr %i, align 4
  %792 = load i32, ptr %x_size.addr, align 4
  %mul1130 = mul nsw i32 %791, %792
  %793 = load i32, ptr %j, align 4
  %add1131 = add nsw i32 %mul1130, %793
  %sub1132 = sub nsw i32 %add1131, 1
  %idxprom1133 = sext i32 %sub1132 to i64
  %arrayidx1134 = getelementptr inbounds i32, ptr %790, i64 %idxprom1133
  %794 = load i32, ptr %arrayidx1134, align 4
  %cmp1135 = icmp sgt i32 %789, %794
  br i1 %cmp1135, label %land.lhs.true1137, label %if.end1381

land.lhs.true1137:                                ; preds = %land.lhs.true1129
  %795 = load i32, ptr %x, align 4
  %796 = load ptr, ptr %r.addr, align 8
  %797 = load i32, ptr %i, align 4
  %798 = load i32, ptr %x_size.addr, align 4
  %mul1138 = mul nsw i32 %797, %798
  %799 = load i32, ptr %j, align 4
  %add1139 = add nsw i32 %mul1138, %799
  %add1140 = add nsw i32 %add1139, 1
  %idxprom1141 = sext i32 %add1140 to i64
  %arrayidx1142 = getelementptr inbounds i32, ptr %796, i64 %idxprom1141
  %800 = load i32, ptr %arrayidx1142, align 4
  %cmp1143 = icmp sge i32 %795, %800
  br i1 %cmp1143, label %land.lhs.true1145, label %if.end1381

land.lhs.true1145:                                ; preds = %land.lhs.true1137
  %801 = load i32, ptr %x, align 4
  %802 = load ptr, ptr %r.addr, align 8
  %803 = load i32, ptr %i, align 4
  %804 = load i32, ptr %x_size.addr, align 4
  %mul1146 = mul nsw i32 %803, %804
  %805 = load i32, ptr %j, align 4
  %add1147 = add nsw i32 %mul1146, %805
  %add1148 = add nsw i32 %add1147, 2
  %idxprom1149 = sext i32 %add1148 to i64
  %arrayidx1150 = getelementptr inbounds i32, ptr %802, i64 %idxprom1149
  %806 = load i32, ptr %arrayidx1150, align 4
  %cmp1151 = icmp sge i32 %801, %806
  br i1 %cmp1151, label %land.lhs.true1153, label %if.end1381

land.lhs.true1153:                                ; preds = %land.lhs.true1145
  %807 = load i32, ptr %x, align 4
  %808 = load ptr, ptr %r.addr, align 8
  %809 = load i32, ptr %i, align 4
  %810 = load i32, ptr %x_size.addr, align 4
  %mul1154 = mul nsw i32 %809, %810
  %811 = load i32, ptr %j, align 4
  %add1155 = add nsw i32 %mul1154, %811
  %add1156 = add nsw i32 %add1155, 3
  %idxprom1157 = sext i32 %add1156 to i64
  %arrayidx1158 = getelementptr inbounds i32, ptr %808, i64 %idxprom1157
  %812 = load i32, ptr %arrayidx1158, align 4
  %cmp1159 = icmp sge i32 %807, %812
  br i1 %cmp1159, label %land.lhs.true1161, label %if.end1381

land.lhs.true1161:                                ; preds = %land.lhs.true1153
  %813 = load i32, ptr %x, align 4
  %814 = load ptr, ptr %r.addr, align 8
  %815 = load i32, ptr %i, align 4
  %add1162 = add nsw i32 %815, 1
  %816 = load i32, ptr %x_size.addr, align 4
  %mul1163 = mul nsw i32 %add1162, %816
  %817 = load i32, ptr %j, align 4
  %add1164 = add nsw i32 %mul1163, %817
  %sub1165 = sub nsw i32 %add1164, 3
  %idxprom1166 = sext i32 %sub1165 to i64
  %arrayidx1167 = getelementptr inbounds i32, ptr %814, i64 %idxprom1166
  %818 = load i32, ptr %arrayidx1167, align 4
  %cmp1168 = icmp sge i32 %813, %818
  br i1 %cmp1168, label %land.lhs.true1170, label %if.end1381

land.lhs.true1170:                                ; preds = %land.lhs.true1161
  %819 = load i32, ptr %x, align 4
  %820 = load ptr, ptr %r.addr, align 8
  %821 = load i32, ptr %i, align 4
  %add1171 = add nsw i32 %821, 1
  %822 = load i32, ptr %x_size.addr, align 4
  %mul1172 = mul nsw i32 %add1171, %822
  %823 = load i32, ptr %j, align 4
  %add1173 = add nsw i32 %mul1172, %823
  %sub1174 = sub nsw i32 %add1173, 2
  %idxprom1175 = sext i32 %sub1174 to i64
  %arrayidx1176 = getelementptr inbounds i32, ptr %820, i64 %idxprom1175
  %824 = load i32, ptr %arrayidx1176, align 4
  %cmp1177 = icmp sge i32 %819, %824
  br i1 %cmp1177, label %land.lhs.true1179, label %if.end1381

land.lhs.true1179:                                ; preds = %land.lhs.true1170
  %825 = load i32, ptr %x, align 4
  %826 = load ptr, ptr %r.addr, align 8
  %827 = load i32, ptr %i, align 4
  %add1180 = add nsw i32 %827, 1
  %828 = load i32, ptr %x_size.addr, align 4
  %mul1181 = mul nsw i32 %add1180, %828
  %829 = load i32, ptr %j, align 4
  %add1182 = add nsw i32 %mul1181, %829
  %sub1183 = sub nsw i32 %add1182, 1
  %idxprom1184 = sext i32 %sub1183 to i64
  %arrayidx1185 = getelementptr inbounds i32, ptr %826, i64 %idxprom1184
  %830 = load i32, ptr %arrayidx1185, align 4
  %cmp1186 = icmp sge i32 %825, %830
  br i1 %cmp1186, label %land.lhs.true1188, label %if.end1381

land.lhs.true1188:                                ; preds = %land.lhs.true1179
  %831 = load i32, ptr %x, align 4
  %832 = load ptr, ptr %r.addr, align 8
  %833 = load i32, ptr %i, align 4
  %add1189 = add nsw i32 %833, 1
  %834 = load i32, ptr %x_size.addr, align 4
  %mul1190 = mul nsw i32 %add1189, %834
  %835 = load i32, ptr %j, align 4
  %add1191 = add nsw i32 %mul1190, %835
  %idxprom1192 = sext i32 %add1191 to i64
  %arrayidx1193 = getelementptr inbounds i32, ptr %832, i64 %idxprom1192
  %836 = load i32, ptr %arrayidx1193, align 4
  %cmp1194 = icmp sge i32 %831, %836
  br i1 %cmp1194, label %land.lhs.true1196, label %if.end1381

land.lhs.true1196:                                ; preds = %land.lhs.true1188
  %837 = load i32, ptr %x, align 4
  %838 = load ptr, ptr %r.addr, align 8
  %839 = load i32, ptr %i, align 4
  %add1197 = add nsw i32 %839, 1
  %840 = load i32, ptr %x_size.addr, align 4
  %mul1198 = mul nsw i32 %add1197, %840
  %841 = load i32, ptr %j, align 4
  %add1199 = add nsw i32 %mul1198, %841
  %add1200 = add nsw i32 %add1199, 1
  %idxprom1201 = sext i32 %add1200 to i64
  %arrayidx1202 = getelementptr inbounds i32, ptr %838, i64 %idxprom1201
  %842 = load i32, ptr %arrayidx1202, align 4
  %cmp1203 = icmp sge i32 %837, %842
  br i1 %cmp1203, label %land.lhs.true1205, label %if.end1381

land.lhs.true1205:                                ; preds = %land.lhs.true1196
  %843 = load i32, ptr %x, align 4
  %844 = load ptr, ptr %r.addr, align 8
  %845 = load i32, ptr %i, align 4
  %add1206 = add nsw i32 %845, 1
  %846 = load i32, ptr %x_size.addr, align 4
  %mul1207 = mul nsw i32 %add1206, %846
  %847 = load i32, ptr %j, align 4
  %add1208 = add nsw i32 %mul1207, %847
  %add1209 = add nsw i32 %add1208, 2
  %idxprom1210 = sext i32 %add1209 to i64
  %arrayidx1211 = getelementptr inbounds i32, ptr %844, i64 %idxprom1210
  %848 = load i32, ptr %arrayidx1211, align 4
  %cmp1212 = icmp sge i32 %843, %848
  br i1 %cmp1212, label %land.lhs.true1214, label %if.end1381

land.lhs.true1214:                                ; preds = %land.lhs.true1205
  %849 = load i32, ptr %x, align 4
  %850 = load ptr, ptr %r.addr, align 8
  %851 = load i32, ptr %i, align 4
  %add1215 = add nsw i32 %851, 1
  %852 = load i32, ptr %x_size.addr, align 4
  %mul1216 = mul nsw i32 %add1215, %852
  %853 = load i32, ptr %j, align 4
  %add1217 = add nsw i32 %mul1216, %853
  %add1218 = add nsw i32 %add1217, 3
  %idxprom1219 = sext i32 %add1218 to i64
  %arrayidx1220 = getelementptr inbounds i32, ptr %850, i64 %idxprom1219
  %854 = load i32, ptr %arrayidx1220, align 4
  %cmp1221 = icmp sge i32 %849, %854
  br i1 %cmp1221, label %land.lhs.true1223, label %if.end1381

land.lhs.true1223:                                ; preds = %land.lhs.true1214
  %855 = load i32, ptr %x, align 4
  %856 = load ptr, ptr %r.addr, align 8
  %857 = load i32, ptr %i, align 4
  %add1224 = add nsw i32 %857, 2
  %858 = load i32, ptr %x_size.addr, align 4
  %mul1225 = mul nsw i32 %add1224, %858
  %859 = load i32, ptr %j, align 4
  %add1226 = add nsw i32 %mul1225, %859
  %sub1227 = sub nsw i32 %add1226, 3
  %idxprom1228 = sext i32 %sub1227 to i64
  %arrayidx1229 = getelementptr inbounds i32, ptr %856, i64 %idxprom1228
  %860 = load i32, ptr %arrayidx1229, align 4
  %cmp1230 = icmp sge i32 %855, %860
  br i1 %cmp1230, label %land.lhs.true1232, label %if.end1381

land.lhs.true1232:                                ; preds = %land.lhs.true1223
  %861 = load i32, ptr %x, align 4
  %862 = load ptr, ptr %r.addr, align 8
  %863 = load i32, ptr %i, align 4
  %add1233 = add nsw i32 %863, 2
  %864 = load i32, ptr %x_size.addr, align 4
  %mul1234 = mul nsw i32 %add1233, %864
  %865 = load i32, ptr %j, align 4
  %add1235 = add nsw i32 %mul1234, %865
  %sub1236 = sub nsw i32 %add1235, 2
  %idxprom1237 = sext i32 %sub1236 to i64
  %arrayidx1238 = getelementptr inbounds i32, ptr %862, i64 %idxprom1237
  %866 = load i32, ptr %arrayidx1238, align 4
  %cmp1239 = icmp sge i32 %861, %866
  br i1 %cmp1239, label %land.lhs.true1241, label %if.end1381

land.lhs.true1241:                                ; preds = %land.lhs.true1232
  %867 = load i32, ptr %x, align 4
  %868 = load ptr, ptr %r.addr, align 8
  %869 = load i32, ptr %i, align 4
  %add1242 = add nsw i32 %869, 2
  %870 = load i32, ptr %x_size.addr, align 4
  %mul1243 = mul nsw i32 %add1242, %870
  %871 = load i32, ptr %j, align 4
  %add1244 = add nsw i32 %mul1243, %871
  %sub1245 = sub nsw i32 %add1244, 1
  %idxprom1246 = sext i32 %sub1245 to i64
  %arrayidx1247 = getelementptr inbounds i32, ptr %868, i64 %idxprom1246
  %872 = load i32, ptr %arrayidx1247, align 4
  %cmp1248 = icmp sge i32 %867, %872
  br i1 %cmp1248, label %land.lhs.true1250, label %if.end1381

land.lhs.true1250:                                ; preds = %land.lhs.true1241
  %873 = load i32, ptr %x, align 4
  %874 = load ptr, ptr %r.addr, align 8
  %875 = load i32, ptr %i, align 4
  %add1251 = add nsw i32 %875, 2
  %876 = load i32, ptr %x_size.addr, align 4
  %mul1252 = mul nsw i32 %add1251, %876
  %877 = load i32, ptr %j, align 4
  %add1253 = add nsw i32 %mul1252, %877
  %idxprom1254 = sext i32 %add1253 to i64
  %arrayidx1255 = getelementptr inbounds i32, ptr %874, i64 %idxprom1254
  %878 = load i32, ptr %arrayidx1255, align 4
  %cmp1256 = icmp sge i32 %873, %878
  br i1 %cmp1256, label %land.lhs.true1258, label %if.end1381

land.lhs.true1258:                                ; preds = %land.lhs.true1250
  %879 = load i32, ptr %x, align 4
  %880 = load ptr, ptr %r.addr, align 8
  %881 = load i32, ptr %i, align 4
  %add1259 = add nsw i32 %881, 2
  %882 = load i32, ptr %x_size.addr, align 4
  %mul1260 = mul nsw i32 %add1259, %882
  %883 = load i32, ptr %j, align 4
  %add1261 = add nsw i32 %mul1260, %883
  %add1262 = add nsw i32 %add1261, 1
  %idxprom1263 = sext i32 %add1262 to i64
  %arrayidx1264 = getelementptr inbounds i32, ptr %880, i64 %idxprom1263
  %884 = load i32, ptr %arrayidx1264, align 4
  %cmp1265 = icmp sge i32 %879, %884
  br i1 %cmp1265, label %land.lhs.true1267, label %if.end1381

land.lhs.true1267:                                ; preds = %land.lhs.true1258
  %885 = load i32, ptr %x, align 4
  %886 = load ptr, ptr %r.addr, align 8
  %887 = load i32, ptr %i, align 4
  %add1268 = add nsw i32 %887, 2
  %888 = load i32, ptr %x_size.addr, align 4
  %mul1269 = mul nsw i32 %add1268, %888
  %889 = load i32, ptr %j, align 4
  %add1270 = add nsw i32 %mul1269, %889
  %add1271 = add nsw i32 %add1270, 2
  %idxprom1272 = sext i32 %add1271 to i64
  %arrayidx1273 = getelementptr inbounds i32, ptr %886, i64 %idxprom1272
  %890 = load i32, ptr %arrayidx1273, align 4
  %cmp1274 = icmp sge i32 %885, %890
  br i1 %cmp1274, label %land.lhs.true1276, label %if.end1381

land.lhs.true1276:                                ; preds = %land.lhs.true1267
  %891 = load i32, ptr %x, align 4
  %892 = load ptr, ptr %r.addr, align 8
  %893 = load i32, ptr %i, align 4
  %add1277 = add nsw i32 %893, 2
  %894 = load i32, ptr %x_size.addr, align 4
  %mul1278 = mul nsw i32 %add1277, %894
  %895 = load i32, ptr %j, align 4
  %add1279 = add nsw i32 %mul1278, %895
  %add1280 = add nsw i32 %add1279, 3
  %idxprom1281 = sext i32 %add1280 to i64
  %arrayidx1282 = getelementptr inbounds i32, ptr %892, i64 %idxprom1281
  %896 = load i32, ptr %arrayidx1282, align 4
  %cmp1283 = icmp sge i32 %891, %896
  br i1 %cmp1283, label %land.lhs.true1285, label %if.end1381

land.lhs.true1285:                                ; preds = %land.lhs.true1276
  %897 = load i32, ptr %x, align 4
  %898 = load ptr, ptr %r.addr, align 8
  %899 = load i32, ptr %i, align 4
  %add1286 = add nsw i32 %899, 3
  %900 = load i32, ptr %x_size.addr, align 4
  %mul1287 = mul nsw i32 %add1286, %900
  %901 = load i32, ptr %j, align 4
  %add1288 = add nsw i32 %mul1287, %901
  %sub1289 = sub nsw i32 %add1288, 3
  %idxprom1290 = sext i32 %sub1289 to i64
  %arrayidx1291 = getelementptr inbounds i32, ptr %898, i64 %idxprom1290
  %902 = load i32, ptr %arrayidx1291, align 4
  %cmp1292 = icmp sge i32 %897, %902
  br i1 %cmp1292, label %land.lhs.true1294, label %if.end1381

land.lhs.true1294:                                ; preds = %land.lhs.true1285
  %903 = load i32, ptr %x, align 4
  %904 = load ptr, ptr %r.addr, align 8
  %905 = load i32, ptr %i, align 4
  %add1295 = add nsw i32 %905, 3
  %906 = load i32, ptr %x_size.addr, align 4
  %mul1296 = mul nsw i32 %add1295, %906
  %907 = load i32, ptr %j, align 4
  %add1297 = add nsw i32 %mul1296, %907
  %sub1298 = sub nsw i32 %add1297, 2
  %idxprom1299 = sext i32 %sub1298 to i64
  %arrayidx1300 = getelementptr inbounds i32, ptr %904, i64 %idxprom1299
  %908 = load i32, ptr %arrayidx1300, align 4
  %cmp1301 = icmp sge i32 %903, %908
  br i1 %cmp1301, label %land.lhs.true1303, label %if.end1381

land.lhs.true1303:                                ; preds = %land.lhs.true1294
  %909 = load i32, ptr %x, align 4
  %910 = load ptr, ptr %r.addr, align 8
  %911 = load i32, ptr %i, align 4
  %add1304 = add nsw i32 %911, 3
  %912 = load i32, ptr %x_size.addr, align 4
  %mul1305 = mul nsw i32 %add1304, %912
  %913 = load i32, ptr %j, align 4
  %add1306 = add nsw i32 %mul1305, %913
  %sub1307 = sub nsw i32 %add1306, 1
  %idxprom1308 = sext i32 %sub1307 to i64
  %arrayidx1309 = getelementptr inbounds i32, ptr %910, i64 %idxprom1308
  %914 = load i32, ptr %arrayidx1309, align 4
  %cmp1310 = icmp sge i32 %909, %914
  br i1 %cmp1310, label %land.lhs.true1312, label %if.end1381

land.lhs.true1312:                                ; preds = %land.lhs.true1303
  %915 = load i32, ptr %x, align 4
  %916 = load ptr, ptr %r.addr, align 8
  %917 = load i32, ptr %i, align 4
  %add1313 = add nsw i32 %917, 3
  %918 = load i32, ptr %x_size.addr, align 4
  %mul1314 = mul nsw i32 %add1313, %918
  %919 = load i32, ptr %j, align 4
  %add1315 = add nsw i32 %mul1314, %919
  %idxprom1316 = sext i32 %add1315 to i64
  %arrayidx1317 = getelementptr inbounds i32, ptr %916, i64 %idxprom1316
  %920 = load i32, ptr %arrayidx1317, align 4
  %cmp1318 = icmp sge i32 %915, %920
  br i1 %cmp1318, label %land.lhs.true1320, label %if.end1381

land.lhs.true1320:                                ; preds = %land.lhs.true1312
  %921 = load i32, ptr %x, align 4
  %922 = load ptr, ptr %r.addr, align 8
  %923 = load i32, ptr %i, align 4
  %add1321 = add nsw i32 %923, 3
  %924 = load i32, ptr %x_size.addr, align 4
  %mul1322 = mul nsw i32 %add1321, %924
  %925 = load i32, ptr %j, align 4
  %add1323 = add nsw i32 %mul1322, %925
  %add1324 = add nsw i32 %add1323, 1
  %idxprom1325 = sext i32 %add1324 to i64
  %arrayidx1326 = getelementptr inbounds i32, ptr %922, i64 %idxprom1325
  %926 = load i32, ptr %arrayidx1326, align 4
  %cmp1327 = icmp sge i32 %921, %926
  br i1 %cmp1327, label %land.lhs.true1329, label %if.end1381

land.lhs.true1329:                                ; preds = %land.lhs.true1320
  %927 = load i32, ptr %x, align 4
  %928 = load ptr, ptr %r.addr, align 8
  %929 = load i32, ptr %i, align 4
  %add1330 = add nsw i32 %929, 3
  %930 = load i32, ptr %x_size.addr, align 4
  %mul1331 = mul nsw i32 %add1330, %930
  %931 = load i32, ptr %j, align 4
  %add1332 = add nsw i32 %mul1331, %931
  %add1333 = add nsw i32 %add1332, 2
  %idxprom1334 = sext i32 %add1333 to i64
  %arrayidx1335 = getelementptr inbounds i32, ptr %928, i64 %idxprom1334
  %932 = load i32, ptr %arrayidx1335, align 4
  %cmp1336 = icmp sge i32 %927, %932
  br i1 %cmp1336, label %land.lhs.true1338, label %if.end1381

land.lhs.true1338:                                ; preds = %land.lhs.true1329
  %933 = load i32, ptr %x, align 4
  %934 = load ptr, ptr %r.addr, align 8
  %935 = load i32, ptr %i, align 4
  %add1339 = add nsw i32 %935, 3
  %936 = load i32, ptr %x_size.addr, align 4
  %mul1340 = mul nsw i32 %add1339, %936
  %937 = load i32, ptr %j, align 4
  %add1341 = add nsw i32 %mul1340, %937
  %add1342 = add nsw i32 %add1341, 3
  %idxprom1343 = sext i32 %add1342 to i64
  %arrayidx1344 = getelementptr inbounds i32, ptr %934, i64 %idxprom1343
  %938 = load i32, ptr %arrayidx1344, align 4
  %cmp1345 = icmp sge i32 %933, %938
  br i1 %cmp1345, label %if.then1347, label %if.end1381

if.then1347:                                      ; preds = %land.lhs.true1338
  %939 = load ptr, ptr %corner_list.addr, align 8
  %940 = load i32, ptr %n, align 4
  %idxprom1348 = sext i32 %940 to i64
  %arrayidx1349 = getelementptr inbounds %struct.anon, ptr %939, i64 %idxprom1348
  %info = getelementptr inbounds %struct.anon, ptr %arrayidx1349, i32 0, i32 2
  store i32 0, ptr %info, align 4
  %941 = load i32, ptr %j, align 4
  %942 = load ptr, ptr %corner_list.addr, align 8
  %943 = load i32, ptr %n, align 4
  %idxprom1350 = sext i32 %943 to i64
  %arrayidx1351 = getelementptr inbounds %struct.anon, ptr %942, i64 %idxprom1350
  %x1352 = getelementptr inbounds %struct.anon, ptr %arrayidx1351, i32 0, i32 0
  store i32 %941, ptr %x1352, align 4
  %944 = load i32, ptr %i, align 4
  %945 = load ptr, ptr %corner_list.addr, align 8
  %946 = load i32, ptr %n, align 4
  %idxprom1353 = sext i32 %946 to i64
  %arrayidx1354 = getelementptr inbounds %struct.anon, ptr %945, i64 %idxprom1353
  %y1355 = getelementptr inbounds %struct.anon, ptr %arrayidx1354, i32 0, i32 1
  store i32 %944, ptr %y1355, align 4
  %947 = load ptr, ptr %cgx, align 8
  %948 = load i32, ptr %i, align 4
  %949 = load i32, ptr %x_size.addr, align 4
  %mul1356 = mul nsw i32 %948, %949
  %950 = load i32, ptr %j, align 4
  %add1357 = add nsw i32 %mul1356, %950
  %idxprom1358 = sext i32 %add1357 to i64
  %arrayidx1359 = getelementptr inbounds i32, ptr %947, i64 %idxprom1358
  %951 = load i32, ptr %arrayidx1359, align 4
  %952 = load ptr, ptr %corner_list.addr, align 8
  %953 = load i32, ptr %n, align 4
  %idxprom1360 = sext i32 %953 to i64
  %arrayidx1361 = getelementptr inbounds %struct.anon, ptr %952, i64 %idxprom1360
  %dx = getelementptr inbounds %struct.anon, ptr %arrayidx1361, i32 0, i32 3
  store i32 %951, ptr %dx, align 4
  %954 = load ptr, ptr %cgy, align 8
  %955 = load i32, ptr %i, align 4
  %956 = load i32, ptr %x_size.addr, align 4
  %mul1362 = mul nsw i32 %955, %956
  %957 = load i32, ptr %j, align 4
  %add1363 = add nsw i32 %mul1362, %957
  %idxprom1364 = sext i32 %add1363 to i64
  %arrayidx1365 = getelementptr inbounds i32, ptr %954, i64 %idxprom1364
  %958 = load i32, ptr %arrayidx1365, align 4
  %959 = load ptr, ptr %corner_list.addr, align 8
  %960 = load i32, ptr %n, align 4
  %idxprom1366 = sext i32 %960 to i64
  %arrayidx1367 = getelementptr inbounds %struct.anon, ptr %959, i64 %idxprom1366
  %dy = getelementptr inbounds %struct.anon, ptr %arrayidx1367, i32 0, i32 4
  store i32 %958, ptr %dy, align 4
  %961 = load ptr, ptr %in.addr, align 8
  %962 = load i32, ptr %i, align 4
  %963 = load i32, ptr %x_size.addr, align 4
  %mul1368 = mul nsw i32 %962, %963
  %964 = load i32, ptr %j, align 4
  %add1369 = add nsw i32 %mul1368, %964
  %idxprom1370 = sext i32 %add1369 to i64
  %arrayidx1371 = getelementptr inbounds i8, ptr %961, i64 %idxprom1370
  %965 = load i8, ptr %arrayidx1371, align 1
  %conv1372 = zext i8 %965 to i32
  %966 = load ptr, ptr %corner_list.addr, align 8
  %967 = load i32, ptr %n, align 4
  %idxprom1373 = sext i32 %967 to i64
  %arrayidx1374 = getelementptr inbounds %struct.anon, ptr %966, i64 %idxprom1373
  %I = getelementptr inbounds %struct.anon, ptr %arrayidx1374, i32 0, i32 5
  store i32 %conv1372, ptr %I, align 4
  %968 = load i32, ptr %n, align 4
  %inc1375 = add nsw i32 %968, 1
  store i32 %inc1375, ptr %n, align 4
  %969 = load i32, ptr %n, align 4
  %cmp1376 = icmp eq i32 %969, 15000
  br i1 %cmp1376, label %if.then1378, label %if.end1380

if.then1378:                                      ; preds = %if.then1347
  %970 = load ptr, ptr @__stderrp, align 8
  %call1379 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %970, ptr noundef @.str.29)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end1380:                                       ; preds = %if.then1347
  br label %if.end1381

if.end1381:                                       ; preds = %if.end1380, %land.lhs.true1338, %land.lhs.true1329, %land.lhs.true1320, %land.lhs.true1312, %land.lhs.true1303, %land.lhs.true1294, %land.lhs.true1285, %land.lhs.true1276, %land.lhs.true1267, %land.lhs.true1258, %land.lhs.true1250, %land.lhs.true1241, %land.lhs.true1232, %land.lhs.true1223, %land.lhs.true1214, %land.lhs.true1205, %land.lhs.true1196, %land.lhs.true1188, %land.lhs.true1179, %land.lhs.true1170, %land.lhs.true1161, %land.lhs.true1153, %land.lhs.true1145, %land.lhs.true1137, %land.lhs.true1129, %land.lhs.true1121, %land.lhs.true1113, %land.lhs.true1104, %land.lhs.true1095, %land.lhs.true1086, %land.lhs.true1078, %land.lhs.true1069, %land.lhs.true1060, %land.lhs.true1051, %land.lhs.true1042, %land.lhs.true1033, %land.lhs.true1024, %land.lhs.true1016, %land.lhs.true1007, %land.lhs.true998, %land.lhs.true989, %land.lhs.true980, %land.lhs.true971, %land.lhs.true962, %land.lhs.true954, %land.lhs.true945, %land.lhs.true, %if.then928
  br label %if.end1382

if.end1382:                                       ; preds = %if.end1381, %for.body921
  br label %for.inc1383

for.inc1383:                                      ; preds = %if.end1382
  %971 = load i32, ptr %j, align 4
  %inc1384 = add nsw i32 %971, 1
  store i32 %inc1384, ptr %j, align 4
  br label %for.cond917, !llvm.loop !45

for.end1385:                                      ; preds = %for.cond917
  br label %for.inc1386

for.inc1386:                                      ; preds = %for.end1385
  %972 = load i32, ptr %i, align 4
  %inc1387 = add nsw i32 %972, 1
  store i32 %inc1387, ptr %i, align 4
  br label %for.cond912, !llvm.loop !46

for.end1388:                                      ; preds = %for.cond912
  %973 = load ptr, ptr %corner_list.addr, align 8
  %974 = load i32, ptr %n, align 4
  %idxprom1389 = sext i32 %974 to i64
  %arrayidx1390 = getelementptr inbounds %struct.anon, ptr %973, i64 %idxprom1389
  %info1391 = getelementptr inbounds %struct.anon, ptr %arrayidx1390, i32 0, i32 2
  store i32 7, ptr %info1391, align 4
  %975 = load ptr, ptr %cgx, align 8
  call void @free(ptr noundef %975)
  %976 = load ptr, ptr %cgy, align 8
  call void @free(ptr noundef %976)
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #6

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %r.addr, align 8
  %1 = load i32, ptr %x_size.addr, align 4
  %2 = load i32, ptr %y_size.addr, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %3 = load ptr, ptr %r.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %mul1, i64 noundef %4) #9
  store i32 7, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc357, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %y_size.addr, align 4
  %sub = sub nsw i32 %6, 7
  %cmp = icmp slt i32 %5, %sub
  br i1 %cmp, label %for.body, label %for.end359

for.body:                                         ; preds = %for.cond
  store i32 7, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %x_size.addr, align 4
  %sub4 = sub nsw i32 %8, 7
  %cmp5 = icmp slt i32 %7, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %i, align 4
  %sub8 = sub nsw i32 %10, 3
  %11 = load i32, ptr %x_size.addr, align 4
  %mul9 = mul nsw i32 %sub8, %11
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  %12 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %12 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8
  %13 = load ptr, ptr %bp.addr, align 8
  %14 = load ptr, ptr %in.addr, align 8
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %x_size.addr, align 4
  %mul13 = mul nsw i32 %15, %16
  %17 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul13, %17
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %18 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8
  %19 = load ptr, ptr %cp, align 8
  %20 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv17 = zext i8 %21 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %19, i64 %idx.neg
  %22 = load i8, ptr %add.ptr19, align 1
  %conv20 = zext i8 %22 to i32
  %23 = load i32, ptr %n, align 4
  %add21 = add nsw i32 %23, %conv20
  store i32 %add21, ptr %n, align 4
  %24 = load ptr, ptr %cp, align 8
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8
  %26 = load i8, ptr %25, align 1
  %conv23 = zext i8 %26 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %24, i64 %idx.neg25
  %27 = load i8, ptr %add.ptr26, align 1
  %conv27 = zext i8 %27 to i32
  %28 = load i32, ptr %n, align 4
  %add28 = add nsw i32 %28, %conv27
  store i32 %add28, ptr %n, align 4
  %29 = load ptr, ptr %cp, align 8
  %30 = load ptr, ptr %p, align 8
  %31 = load i8, ptr %30, align 1
  %conv29 = zext i8 %31 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %29, i64 %idx.neg31
  %32 = load i8, ptr %add.ptr32, align 1
  %conv33 = zext i8 %32 to i32
  %33 = load i32, ptr %n, align 4
  %add34 = add nsw i32 %33, %conv33
  store i32 %add34, ptr %n, align 4
  %34 = load i32, ptr %x_size.addr, align 4
  %sub35 = sub nsw i32 %34, 3
  %35 = load ptr, ptr %p, align 8
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %35, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8
  %36 = load ptr, ptr %cp, align 8
  %37 = load ptr, ptr %p, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8
  %38 = load i8, ptr %37, align 1
  %conv39 = zext i8 %38 to i32
  %idx.ext40 = sext i32 %conv39 to i64
  %idx.neg41 = sub i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %36, i64 %idx.neg41
  %39 = load i8, ptr %add.ptr42, align 1
  %conv43 = zext i8 %39 to i32
  %40 = load i32, ptr %n, align 4
  %add44 = add nsw i32 %40, %conv43
  store i32 %add44, ptr %n, align 4
  %41 = load ptr, ptr %cp, align 8
  %42 = load ptr, ptr %p, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr45, ptr %p, align 8
  %43 = load i8, ptr %42, align 1
  %conv46 = zext i8 %43 to i32
  %idx.ext47 = sext i32 %conv46 to i64
  %idx.neg48 = sub i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %41, i64 %idx.neg48
  %44 = load i8, ptr %add.ptr49, align 1
  %conv50 = zext i8 %44 to i32
  %45 = load i32, ptr %n, align 4
  %add51 = add nsw i32 %45, %conv50
  store i32 %add51, ptr %n, align 4
  %46 = load ptr, ptr %cp, align 8
  %47 = load ptr, ptr %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr52, ptr %p, align 8
  %48 = load i8, ptr %47, align 1
  %conv53 = zext i8 %48 to i32
  %idx.ext54 = sext i32 %conv53 to i64
  %idx.neg55 = sub i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %46, i64 %idx.neg55
  %49 = load i8, ptr %add.ptr56, align 1
  %conv57 = zext i8 %49 to i32
  %50 = load i32, ptr %n, align 4
  %add58 = add nsw i32 %50, %conv57
  store i32 %add58, ptr %n, align 4
  %51 = load ptr, ptr %cp, align 8
  %52 = load ptr, ptr %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8
  %53 = load i8, ptr %52, align 1
  %conv60 = zext i8 %53 to i32
  %idx.ext61 = sext i32 %conv60 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %51, i64 %idx.neg62
  %54 = load i8, ptr %add.ptr63, align 1
  %conv64 = zext i8 %54 to i32
  %55 = load i32, ptr %n, align 4
  %add65 = add nsw i32 %55, %conv64
  store i32 %add65, ptr %n, align 4
  %56 = load ptr, ptr %cp, align 8
  %57 = load ptr, ptr %p, align 8
  %58 = load i8, ptr %57, align 1
  %conv66 = zext i8 %58 to i32
  %idx.ext67 = sext i32 %conv66 to i64
  %idx.neg68 = sub i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %56, i64 %idx.neg68
  %59 = load i8, ptr %add.ptr69, align 1
  %conv70 = zext i8 %59 to i32
  %60 = load i32, ptr %n, align 4
  %add71 = add nsw i32 %60, %conv70
  store i32 %add71, ptr %n, align 4
  %61 = load i32, ptr %x_size.addr, align 4
  %sub72 = sub nsw i32 %61, 5
  %62 = load ptr, ptr %p, align 8
  %idx.ext73 = sext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %62, i64 %idx.ext73
  store ptr %add.ptr74, ptr %p, align 8
  %63 = load ptr, ptr %cp, align 8
  %64 = load ptr, ptr %p, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr75, ptr %p, align 8
  %65 = load i8, ptr %64, align 1
  %conv76 = zext i8 %65 to i32
  %idx.ext77 = sext i32 %conv76 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %63, i64 %idx.neg78
  %66 = load i8, ptr %add.ptr79, align 1
  %conv80 = zext i8 %66 to i32
  %67 = load i32, ptr %n, align 4
  %add81 = add nsw i32 %67, %conv80
  store i32 %add81, ptr %n, align 4
  %68 = load ptr, ptr %cp, align 8
  %69 = load ptr, ptr %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr82, ptr %p, align 8
  %70 = load i8, ptr %69, align 1
  %conv83 = zext i8 %70 to i32
  %idx.ext84 = sext i32 %conv83 to i64
  %idx.neg85 = sub i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %68, i64 %idx.neg85
  %71 = load i8, ptr %add.ptr86, align 1
  %conv87 = zext i8 %71 to i32
  %72 = load i32, ptr %n, align 4
  %add88 = add nsw i32 %72, %conv87
  store i32 %add88, ptr %n, align 4
  %73 = load ptr, ptr %cp, align 8
  %74 = load ptr, ptr %p, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr89, ptr %p, align 8
  %75 = load i8, ptr %74, align 1
  %conv90 = zext i8 %75 to i32
  %idx.ext91 = sext i32 %conv90 to i64
  %idx.neg92 = sub i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %73, i64 %idx.neg92
  %76 = load i8, ptr %add.ptr93, align 1
  %conv94 = zext i8 %76 to i32
  %77 = load i32, ptr %n, align 4
  %add95 = add nsw i32 %77, %conv94
  store i32 %add95, ptr %n, align 4
  %78 = load ptr, ptr %cp, align 8
  %79 = load ptr, ptr %p, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr96, ptr %p, align 8
  %80 = load i8, ptr %79, align 1
  %conv97 = zext i8 %80 to i32
  %idx.ext98 = sext i32 %conv97 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %78, i64 %idx.neg99
  %81 = load i8, ptr %add.ptr100, align 1
  %conv101 = zext i8 %81 to i32
  %82 = load i32, ptr %n, align 4
  %add102 = add nsw i32 %82, %conv101
  store i32 %add102, ptr %n, align 4
  %83 = load ptr, ptr %cp, align 8
  %84 = load ptr, ptr %p, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr103, ptr %p, align 8
  %85 = load i8, ptr %84, align 1
  %conv104 = zext i8 %85 to i32
  %idx.ext105 = sext i32 %conv104 to i64
  %idx.neg106 = sub i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %83, i64 %idx.neg106
  %86 = load i8, ptr %add.ptr107, align 1
  %conv108 = zext i8 %86 to i32
  %87 = load i32, ptr %n, align 4
  %add109 = add nsw i32 %87, %conv108
  store i32 %add109, ptr %n, align 4
  %88 = load ptr, ptr %cp, align 8
  %89 = load ptr, ptr %p, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr110, ptr %p, align 8
  %90 = load i8, ptr %89, align 1
  %conv111 = zext i8 %90 to i32
  %idx.ext112 = sext i32 %conv111 to i64
  %idx.neg113 = sub i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %88, i64 %idx.neg113
  %91 = load i8, ptr %add.ptr114, align 1
  %conv115 = zext i8 %91 to i32
  %92 = load i32, ptr %n, align 4
  %add116 = add nsw i32 %92, %conv115
  store i32 %add116, ptr %n, align 4
  %93 = load ptr, ptr %cp, align 8
  %94 = load ptr, ptr %p, align 8
  %95 = load i8, ptr %94, align 1
  %conv117 = zext i8 %95 to i32
  %idx.ext118 = sext i32 %conv117 to i64
  %idx.neg119 = sub i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %93, i64 %idx.neg119
  %96 = load i8, ptr %add.ptr120, align 1
  %conv121 = zext i8 %96 to i32
  %97 = load i32, ptr %n, align 4
  %add122 = add nsw i32 %97, %conv121
  store i32 %add122, ptr %n, align 4
  %98 = load i32, ptr %x_size.addr, align 4
  %sub123 = sub nsw i32 %98, 6
  %99 = load ptr, ptr %p, align 8
  %idx.ext124 = sext i32 %sub123 to i64
  %add.ptr125 = getelementptr inbounds i8, ptr %99, i64 %idx.ext124
  store ptr %add.ptr125, ptr %p, align 8
  %100 = load ptr, ptr %cp, align 8
  %101 = load ptr, ptr %p, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %101, i32 1
  store ptr %incdec.ptr126, ptr %p, align 8
  %102 = load i8, ptr %101, align 1
  %conv127 = zext i8 %102 to i32
  %idx.ext128 = sext i32 %conv127 to i64
  %idx.neg129 = sub i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %100, i64 %idx.neg129
  %103 = load i8, ptr %add.ptr130, align 1
  %conv131 = zext i8 %103 to i32
  %104 = load i32, ptr %n, align 4
  %add132 = add nsw i32 %104, %conv131
  store i32 %add132, ptr %n, align 4
  %105 = load ptr, ptr %cp, align 8
  %106 = load ptr, ptr %p, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %incdec.ptr133, ptr %p, align 8
  %107 = load i8, ptr %106, align 1
  %conv134 = zext i8 %107 to i32
  %idx.ext135 = sext i32 %conv134 to i64
  %idx.neg136 = sub i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %105, i64 %idx.neg136
  %108 = load i8, ptr %add.ptr137, align 1
  %conv138 = zext i8 %108 to i32
  %109 = load i32, ptr %n, align 4
  %add139 = add nsw i32 %109, %conv138
  store i32 %add139, ptr %n, align 4
  %110 = load ptr, ptr %cp, align 8
  %111 = load ptr, ptr %p, align 8
  %112 = load i8, ptr %111, align 1
  %conv140 = zext i8 %112 to i32
  %idx.ext141 = sext i32 %conv140 to i64
  %idx.neg142 = sub i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %110, i64 %idx.neg142
  %113 = load i8, ptr %add.ptr143, align 1
  %conv144 = zext i8 %113 to i32
  %114 = load i32, ptr %n, align 4
  %add145 = add nsw i32 %114, %conv144
  store i32 %add145, ptr %n, align 4
  %115 = load i32, ptr %n, align 4
  %116 = load i32, ptr %max_no.addr, align 4
  %cmp146 = icmp slt i32 %115, %116
  br i1 %cmp146, label %if.then, label %if.end356

if.then:                                          ; preds = %for.body7
  %117 = load ptr, ptr %p, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %117, i64 2
  store ptr %add.ptr148, ptr %p, align 8
  %118 = load ptr, ptr %cp, align 8
  %119 = load ptr, ptr %p, align 8
  %incdec.ptr149 = getelementptr inbounds i8, ptr %119, i32 1
  store ptr %incdec.ptr149, ptr %p, align 8
  %120 = load i8, ptr %119, align 1
  %conv150 = zext i8 %120 to i32
  %idx.ext151 = sext i32 %conv150 to i64
  %idx.neg152 = sub i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, ptr %118, i64 %idx.neg152
  %121 = load i8, ptr %add.ptr153, align 1
  %conv154 = zext i8 %121 to i32
  %122 = load i32, ptr %n, align 4
  %add155 = add nsw i32 %122, %conv154
  store i32 %add155, ptr %n, align 4
  %123 = load i32, ptr %n, align 4
  %124 = load i32, ptr %max_no.addr, align 4
  %cmp156 = icmp slt i32 %123, %124
  br i1 %cmp156, label %if.then158, label %if.end355

if.then158:                                       ; preds = %if.then
  %125 = load ptr, ptr %cp, align 8
  %126 = load ptr, ptr %p, align 8
  %incdec.ptr159 = getelementptr inbounds i8, ptr %126, i32 1
  store ptr %incdec.ptr159, ptr %p, align 8
  %127 = load i8, ptr %126, align 1
  %conv160 = zext i8 %127 to i32
  %idx.ext161 = sext i32 %conv160 to i64
  %idx.neg162 = sub i64 0, %idx.ext161
  %add.ptr163 = getelementptr inbounds i8, ptr %125, i64 %idx.neg162
  %128 = load i8, ptr %add.ptr163, align 1
  %conv164 = zext i8 %128 to i32
  %129 = load i32, ptr %n, align 4
  %add165 = add nsw i32 %129, %conv164
  store i32 %add165, ptr %n, align 4
  %130 = load i32, ptr %n, align 4
  %131 = load i32, ptr %max_no.addr, align 4
  %cmp166 = icmp slt i32 %130, %131
  br i1 %cmp166, label %if.then168, label %if.end354

if.then168:                                       ; preds = %if.then158
  %132 = load ptr, ptr %cp, align 8
  %133 = load ptr, ptr %p, align 8
  %134 = load i8, ptr %133, align 1
  %conv169 = zext i8 %134 to i32
  %idx.ext170 = sext i32 %conv169 to i64
  %idx.neg171 = sub i64 0, %idx.ext170
  %add.ptr172 = getelementptr inbounds i8, ptr %132, i64 %idx.neg171
  %135 = load i8, ptr %add.ptr172, align 1
  %conv173 = zext i8 %135 to i32
  %136 = load i32, ptr %n, align 4
  %add174 = add nsw i32 %136, %conv173
  store i32 %add174, ptr %n, align 4
  %137 = load i32, ptr %n, align 4
  %138 = load i32, ptr %max_no.addr, align 4
  %cmp175 = icmp slt i32 %137, %138
  br i1 %cmp175, label %if.then177, label %if.end353

if.then177:                                       ; preds = %if.then168
  %139 = load i32, ptr %x_size.addr, align 4
  %sub178 = sub nsw i32 %139, 6
  %140 = load ptr, ptr %p, align 8
  %idx.ext179 = sext i32 %sub178 to i64
  %add.ptr180 = getelementptr inbounds i8, ptr %140, i64 %idx.ext179
  store ptr %add.ptr180, ptr %p, align 8
  %141 = load ptr, ptr %cp, align 8
  %142 = load ptr, ptr %p, align 8
  %incdec.ptr181 = getelementptr inbounds i8, ptr %142, i32 1
  store ptr %incdec.ptr181, ptr %p, align 8
  %143 = load i8, ptr %142, align 1
  %conv182 = zext i8 %143 to i32
  %idx.ext183 = sext i32 %conv182 to i64
  %idx.neg184 = sub i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %141, i64 %idx.neg184
  %144 = load i8, ptr %add.ptr185, align 1
  %conv186 = zext i8 %144 to i32
  %145 = load i32, ptr %n, align 4
  %add187 = add nsw i32 %145, %conv186
  store i32 %add187, ptr %n, align 4
  %146 = load i32, ptr %n, align 4
  %147 = load i32, ptr %max_no.addr, align 4
  %cmp188 = icmp slt i32 %146, %147
  br i1 %cmp188, label %if.then190, label %if.end352

if.then190:                                       ; preds = %if.then177
  %148 = load ptr, ptr %cp, align 8
  %149 = load ptr, ptr %p, align 8
  %incdec.ptr191 = getelementptr inbounds i8, ptr %149, i32 1
  store ptr %incdec.ptr191, ptr %p, align 8
  %150 = load i8, ptr %149, align 1
  %conv192 = zext i8 %150 to i32
  %idx.ext193 = sext i32 %conv192 to i64
  %idx.neg194 = sub i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %148, i64 %idx.neg194
  %151 = load i8, ptr %add.ptr195, align 1
  %conv196 = zext i8 %151 to i32
  %152 = load i32, ptr %n, align 4
  %add197 = add nsw i32 %152, %conv196
  store i32 %add197, ptr %n, align 4
  %153 = load i32, ptr %n, align 4
  %154 = load i32, ptr %max_no.addr, align 4
  %cmp198 = icmp slt i32 %153, %154
  br i1 %cmp198, label %if.then200, label %if.end351

if.then200:                                       ; preds = %if.then190
  %155 = load ptr, ptr %cp, align 8
  %156 = load ptr, ptr %p, align 8
  %incdec.ptr201 = getelementptr inbounds i8, ptr %156, i32 1
  store ptr %incdec.ptr201, ptr %p, align 8
  %157 = load i8, ptr %156, align 1
  %conv202 = zext i8 %157 to i32
  %idx.ext203 = sext i32 %conv202 to i64
  %idx.neg204 = sub i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i8, ptr %155, i64 %idx.neg204
  %158 = load i8, ptr %add.ptr205, align 1
  %conv206 = zext i8 %158 to i32
  %159 = load i32, ptr %n, align 4
  %add207 = add nsw i32 %159, %conv206
  store i32 %add207, ptr %n, align 4
  %160 = load i32, ptr %n, align 4
  %161 = load i32, ptr %max_no.addr, align 4
  %cmp208 = icmp slt i32 %160, %161
  br i1 %cmp208, label %if.then210, label %if.end350

if.then210:                                       ; preds = %if.then200
  %162 = load ptr, ptr %cp, align 8
  %163 = load ptr, ptr %p, align 8
  %incdec.ptr211 = getelementptr inbounds i8, ptr %163, i32 1
  store ptr %incdec.ptr211, ptr %p, align 8
  %164 = load i8, ptr %163, align 1
  %conv212 = zext i8 %164 to i32
  %idx.ext213 = sext i32 %conv212 to i64
  %idx.neg214 = sub i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %162, i64 %idx.neg214
  %165 = load i8, ptr %add.ptr215, align 1
  %conv216 = zext i8 %165 to i32
  %166 = load i32, ptr %n, align 4
  %add217 = add nsw i32 %166, %conv216
  store i32 %add217, ptr %n, align 4
  %167 = load i32, ptr %n, align 4
  %168 = load i32, ptr %max_no.addr, align 4
  %cmp218 = icmp slt i32 %167, %168
  br i1 %cmp218, label %if.then220, label %if.end349

if.then220:                                       ; preds = %if.then210
  %169 = load ptr, ptr %cp, align 8
  %170 = load ptr, ptr %p, align 8
  %incdec.ptr221 = getelementptr inbounds i8, ptr %170, i32 1
  store ptr %incdec.ptr221, ptr %p, align 8
  %171 = load i8, ptr %170, align 1
  %conv222 = zext i8 %171 to i32
  %idx.ext223 = sext i32 %conv222 to i64
  %idx.neg224 = sub i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %169, i64 %idx.neg224
  %172 = load i8, ptr %add.ptr225, align 1
  %conv226 = zext i8 %172 to i32
  %173 = load i32, ptr %n, align 4
  %add227 = add nsw i32 %173, %conv226
  store i32 %add227, ptr %n, align 4
  %174 = load i32, ptr %n, align 4
  %175 = load i32, ptr %max_no.addr, align 4
  %cmp228 = icmp slt i32 %174, %175
  br i1 %cmp228, label %if.then230, label %if.end348

if.then230:                                       ; preds = %if.then220
  %176 = load ptr, ptr %cp, align 8
  %177 = load ptr, ptr %p, align 8
  %incdec.ptr231 = getelementptr inbounds i8, ptr %177, i32 1
  store ptr %incdec.ptr231, ptr %p, align 8
  %178 = load i8, ptr %177, align 1
  %conv232 = zext i8 %178 to i32
  %idx.ext233 = sext i32 %conv232 to i64
  %idx.neg234 = sub i64 0, %idx.ext233
  %add.ptr235 = getelementptr inbounds i8, ptr %176, i64 %idx.neg234
  %179 = load i8, ptr %add.ptr235, align 1
  %conv236 = zext i8 %179 to i32
  %180 = load i32, ptr %n, align 4
  %add237 = add nsw i32 %180, %conv236
  store i32 %add237, ptr %n, align 4
  %181 = load i32, ptr %n, align 4
  %182 = load i32, ptr %max_no.addr, align 4
  %cmp238 = icmp slt i32 %181, %182
  br i1 %cmp238, label %if.then240, label %if.end347

if.then240:                                       ; preds = %if.then230
  %183 = load ptr, ptr %cp, align 8
  %184 = load ptr, ptr %p, align 8
  %185 = load i8, ptr %184, align 1
  %conv241 = zext i8 %185 to i32
  %idx.ext242 = sext i32 %conv241 to i64
  %idx.neg243 = sub i64 0, %idx.ext242
  %add.ptr244 = getelementptr inbounds i8, ptr %183, i64 %idx.neg243
  %186 = load i8, ptr %add.ptr244, align 1
  %conv245 = zext i8 %186 to i32
  %187 = load i32, ptr %n, align 4
  %add246 = add nsw i32 %187, %conv245
  store i32 %add246, ptr %n, align 4
  %188 = load i32, ptr %n, align 4
  %189 = load i32, ptr %max_no.addr, align 4
  %cmp247 = icmp slt i32 %188, %189
  br i1 %cmp247, label %if.then249, label %if.end346

if.then249:                                       ; preds = %if.then240
  %190 = load i32, ptr %x_size.addr, align 4
  %sub250 = sub nsw i32 %190, 5
  %191 = load ptr, ptr %p, align 8
  %idx.ext251 = sext i32 %sub250 to i64
  %add.ptr252 = getelementptr inbounds i8, ptr %191, i64 %idx.ext251
  store ptr %add.ptr252, ptr %p, align 8
  %192 = load ptr, ptr %cp, align 8
  %193 = load ptr, ptr %p, align 8
  %incdec.ptr253 = getelementptr inbounds i8, ptr %193, i32 1
  store ptr %incdec.ptr253, ptr %p, align 8
  %194 = load i8, ptr %193, align 1
  %conv254 = zext i8 %194 to i32
  %idx.ext255 = sext i32 %conv254 to i64
  %idx.neg256 = sub i64 0, %idx.ext255
  %add.ptr257 = getelementptr inbounds i8, ptr %192, i64 %idx.neg256
  %195 = load i8, ptr %add.ptr257, align 1
  %conv258 = zext i8 %195 to i32
  %196 = load i32, ptr %n, align 4
  %add259 = add nsw i32 %196, %conv258
  store i32 %add259, ptr %n, align 4
  %197 = load i32, ptr %n, align 4
  %198 = load i32, ptr %max_no.addr, align 4
  %cmp260 = icmp slt i32 %197, %198
  br i1 %cmp260, label %if.then262, label %if.end345

if.then262:                                       ; preds = %if.then249
  %199 = load ptr, ptr %cp, align 8
  %200 = load ptr, ptr %p, align 8
  %incdec.ptr263 = getelementptr inbounds i8, ptr %200, i32 1
  store ptr %incdec.ptr263, ptr %p, align 8
  %201 = load i8, ptr %200, align 1
  %conv264 = zext i8 %201 to i32
  %idx.ext265 = sext i32 %conv264 to i64
  %idx.neg266 = sub i64 0, %idx.ext265
  %add.ptr267 = getelementptr inbounds i8, ptr %199, i64 %idx.neg266
  %202 = load i8, ptr %add.ptr267, align 1
  %conv268 = zext i8 %202 to i32
  %203 = load i32, ptr %n, align 4
  %add269 = add nsw i32 %203, %conv268
  store i32 %add269, ptr %n, align 4
  %204 = load i32, ptr %n, align 4
  %205 = load i32, ptr %max_no.addr, align 4
  %cmp270 = icmp slt i32 %204, %205
  br i1 %cmp270, label %if.then272, label %if.end344

if.then272:                                       ; preds = %if.then262
  %206 = load ptr, ptr %cp, align 8
  %207 = load ptr, ptr %p, align 8
  %incdec.ptr273 = getelementptr inbounds i8, ptr %207, i32 1
  store ptr %incdec.ptr273, ptr %p, align 8
  %208 = load i8, ptr %207, align 1
  %conv274 = zext i8 %208 to i32
  %idx.ext275 = sext i32 %conv274 to i64
  %idx.neg276 = sub i64 0, %idx.ext275
  %add.ptr277 = getelementptr inbounds i8, ptr %206, i64 %idx.neg276
  %209 = load i8, ptr %add.ptr277, align 1
  %conv278 = zext i8 %209 to i32
  %210 = load i32, ptr %n, align 4
  %add279 = add nsw i32 %210, %conv278
  store i32 %add279, ptr %n, align 4
  %211 = load i32, ptr %n, align 4
  %212 = load i32, ptr %max_no.addr, align 4
  %cmp280 = icmp slt i32 %211, %212
  br i1 %cmp280, label %if.then282, label %if.end343

if.then282:                                       ; preds = %if.then272
  %213 = load ptr, ptr %cp, align 8
  %214 = load ptr, ptr %p, align 8
  %incdec.ptr283 = getelementptr inbounds i8, ptr %214, i32 1
  store ptr %incdec.ptr283, ptr %p, align 8
  %215 = load i8, ptr %214, align 1
  %conv284 = zext i8 %215 to i32
  %idx.ext285 = sext i32 %conv284 to i64
  %idx.neg286 = sub i64 0, %idx.ext285
  %add.ptr287 = getelementptr inbounds i8, ptr %213, i64 %idx.neg286
  %216 = load i8, ptr %add.ptr287, align 1
  %conv288 = zext i8 %216 to i32
  %217 = load i32, ptr %n, align 4
  %add289 = add nsw i32 %217, %conv288
  store i32 %add289, ptr %n, align 4
  %218 = load i32, ptr %n, align 4
  %219 = load i32, ptr %max_no.addr, align 4
  %cmp290 = icmp slt i32 %218, %219
  br i1 %cmp290, label %if.then292, label %if.end342

if.then292:                                       ; preds = %if.then282
  %220 = load ptr, ptr %cp, align 8
  %221 = load ptr, ptr %p, align 8
  %222 = load i8, ptr %221, align 1
  %conv293 = zext i8 %222 to i32
  %idx.ext294 = sext i32 %conv293 to i64
  %idx.neg295 = sub i64 0, %idx.ext294
  %add.ptr296 = getelementptr inbounds i8, ptr %220, i64 %idx.neg295
  %223 = load i8, ptr %add.ptr296, align 1
  %conv297 = zext i8 %223 to i32
  %224 = load i32, ptr %n, align 4
  %add298 = add nsw i32 %224, %conv297
  store i32 %add298, ptr %n, align 4
  %225 = load i32, ptr %n, align 4
  %226 = load i32, ptr %max_no.addr, align 4
  %cmp299 = icmp slt i32 %225, %226
  br i1 %cmp299, label %if.then301, label %if.end341

if.then301:                                       ; preds = %if.then292
  %227 = load i32, ptr %x_size.addr, align 4
  %sub302 = sub nsw i32 %227, 3
  %228 = load ptr, ptr %p, align 8
  %idx.ext303 = sext i32 %sub302 to i64
  %add.ptr304 = getelementptr inbounds i8, ptr %228, i64 %idx.ext303
  store ptr %add.ptr304, ptr %p, align 8
  %229 = load ptr, ptr %cp, align 8
  %230 = load ptr, ptr %p, align 8
  %incdec.ptr305 = getelementptr inbounds i8, ptr %230, i32 1
  store ptr %incdec.ptr305, ptr %p, align 8
  %231 = load i8, ptr %230, align 1
  %conv306 = zext i8 %231 to i32
  %idx.ext307 = sext i32 %conv306 to i64
  %idx.neg308 = sub i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, ptr %229, i64 %idx.neg308
  %232 = load i8, ptr %add.ptr309, align 1
  %conv310 = zext i8 %232 to i32
  %233 = load i32, ptr %n, align 4
  %add311 = add nsw i32 %233, %conv310
  store i32 %add311, ptr %n, align 4
  %234 = load i32, ptr %n, align 4
  %235 = load i32, ptr %max_no.addr, align 4
  %cmp312 = icmp slt i32 %234, %235
  br i1 %cmp312, label %if.then314, label %if.end340

if.then314:                                       ; preds = %if.then301
  %236 = load ptr, ptr %cp, align 8
  %237 = load ptr, ptr %p, align 8
  %incdec.ptr315 = getelementptr inbounds i8, ptr %237, i32 1
  store ptr %incdec.ptr315, ptr %p, align 8
  %238 = load i8, ptr %237, align 1
  %conv316 = zext i8 %238 to i32
  %idx.ext317 = sext i32 %conv316 to i64
  %idx.neg318 = sub i64 0, %idx.ext317
  %add.ptr319 = getelementptr inbounds i8, ptr %236, i64 %idx.neg318
  %239 = load i8, ptr %add.ptr319, align 1
  %conv320 = zext i8 %239 to i32
  %240 = load i32, ptr %n, align 4
  %add321 = add nsw i32 %240, %conv320
  store i32 %add321, ptr %n, align 4
  %241 = load i32, ptr %n, align 4
  %242 = load i32, ptr %max_no.addr, align 4
  %cmp322 = icmp slt i32 %241, %242
  br i1 %cmp322, label %if.then324, label %if.end339

if.then324:                                       ; preds = %if.then314
  %243 = load ptr, ptr %cp, align 8
  %244 = load ptr, ptr %p, align 8
  %245 = load i8, ptr %244, align 1
  %conv325 = zext i8 %245 to i32
  %idx.ext326 = sext i32 %conv325 to i64
  %idx.neg327 = sub i64 0, %idx.ext326
  %add.ptr328 = getelementptr inbounds i8, ptr %243, i64 %idx.neg327
  %246 = load i8, ptr %add.ptr328, align 1
  %conv329 = zext i8 %246 to i32
  %247 = load i32, ptr %n, align 4
  %add330 = add nsw i32 %247, %conv329
  store i32 %add330, ptr %n, align 4
  %248 = load i32, ptr %n, align 4
  %249 = load i32, ptr %max_no.addr, align 4
  %cmp331 = icmp slt i32 %248, %249
  br i1 %cmp331, label %if.then333, label %if.end

if.then333:                                       ; preds = %if.then324
  %250 = load i32, ptr %max_no.addr, align 4
  %251 = load i32, ptr %n, align 4
  %sub334 = sub nsw i32 %250, %251
  %252 = load ptr, ptr %r.addr, align 8
  %253 = load i32, ptr %i, align 4
  %254 = load i32, ptr %x_size.addr, align 4
  %mul335 = mul nsw i32 %253, %254
  %255 = load i32, ptr %j, align 4
  %add336 = add nsw i32 %mul335, %255
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %252, i64 %idxprom337
  store i32 %sub334, ptr %arrayidx338, align 4
  br label %if.end

if.end:                                           ; preds = %if.then333, %if.then324
  br label %if.end339

if.end339:                                        ; preds = %if.end, %if.then314
  br label %if.end340

if.end340:                                        ; preds = %if.end339, %if.then301
  br label %if.end341

if.end341:                                        ; preds = %if.end340, %if.then292
  br label %if.end342

if.end342:                                        ; preds = %if.end341, %if.then282
  br label %if.end343

if.end343:                                        ; preds = %if.end342, %if.then272
  br label %if.end344

if.end344:                                        ; preds = %if.end343, %if.then262
  br label %if.end345

if.end345:                                        ; preds = %if.end344, %if.then249
  br label %if.end346

if.end346:                                        ; preds = %if.end345, %if.then240
  br label %if.end347

if.end347:                                        ; preds = %if.end346, %if.then230
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %if.then220
  br label %if.end349

if.end349:                                        ; preds = %if.end348, %if.then210
  br label %if.end350

if.end350:                                        ; preds = %if.end349, %if.then200
  br label %if.end351

if.end351:                                        ; preds = %if.end350, %if.then190
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %if.then177
  br label %if.end353

if.end353:                                        ; preds = %if.end352, %if.then168
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %if.then158
  br label %if.end355

if.end355:                                        ; preds = %if.end354, %if.then
  br label %if.end356

if.end356:                                        ; preds = %if.end355, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end356
  %256 = load i32, ptr %j, align 4
  %inc = add nsw i32 %256, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !47

for.end:                                          ; preds = %for.cond3
  br label %for.inc357

for.inc357:                                       ; preds = %for.end
  %257 = load i32, ptr %i, align 4
  %inc358 = add nsw i32 %257, 1
  store i32 %inc358, ptr %i, align 4
  br label %for.cond, !llvm.loop !48

for.end359:                                       ; preds = %for.cond
  store i32 0, ptr %n, align 4
  store i32 7, ptr %i, align 4
  br label %for.cond360

for.cond360:                                      ; preds = %for.inc1324, %for.end359
  %258 = load i32, ptr %i, align 4
  %259 = load i32, ptr %y_size.addr, align 4
  %sub361 = sub nsw i32 %259, 7
  %cmp362 = icmp slt i32 %258, %sub361
  br i1 %cmp362, label %for.body364, label %for.end1326

for.body364:                                      ; preds = %for.cond360
  store i32 7, ptr %j, align 4
  br label %for.cond365

for.cond365:                                      ; preds = %for.inc1321, %for.body364
  %260 = load i32, ptr %j, align 4
  %261 = load i32, ptr %x_size.addr, align 4
  %sub366 = sub nsw i32 %261, 7
  %cmp367 = icmp slt i32 %260, %sub366
  br i1 %cmp367, label %for.body369, label %for.end1323

for.body369:                                      ; preds = %for.cond365
  %262 = load ptr, ptr %r.addr, align 8
  %263 = load i32, ptr %i, align 4
  %264 = load i32, ptr %x_size.addr, align 4
  %mul370 = mul nsw i32 %263, %264
  %265 = load i32, ptr %j, align 4
  %add371 = add nsw i32 %mul370, %265
  %idxprom372 = sext i32 %add371 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %262, i64 %idxprom372
  %266 = load i32, ptr %arrayidx373, align 4
  store i32 %266, ptr %x, align 4
  %267 = load i32, ptr %x, align 4
  %cmp374 = icmp sgt i32 %267, 0
  br i1 %cmp374, label %if.then376, label %if.end1320

if.then376:                                       ; preds = %for.body369
  %268 = load i32, ptr %x, align 4
  %269 = load ptr, ptr %r.addr, align 8
  %270 = load i32, ptr %i, align 4
  %sub377 = sub nsw i32 %270, 3
  %271 = load i32, ptr %x_size.addr, align 4
  %mul378 = mul nsw i32 %sub377, %271
  %272 = load i32, ptr %j, align 4
  %add379 = add nsw i32 %mul378, %272
  %sub380 = sub nsw i32 %add379, 3
  %idxprom381 = sext i32 %sub380 to i64
  %arrayidx382 = getelementptr inbounds i32, ptr %269, i64 %idxprom381
  %273 = load i32, ptr %arrayidx382, align 4
  %cmp383 = icmp sgt i32 %268, %273
  br i1 %cmp383, label %land.lhs.true, label %if.end1319

land.lhs.true:                                    ; preds = %if.then376
  %274 = load i32, ptr %x, align 4
  %275 = load ptr, ptr %r.addr, align 8
  %276 = load i32, ptr %i, align 4
  %sub385 = sub nsw i32 %276, 3
  %277 = load i32, ptr %x_size.addr, align 4
  %mul386 = mul nsw i32 %sub385, %277
  %278 = load i32, ptr %j, align 4
  %add387 = add nsw i32 %mul386, %278
  %sub388 = sub nsw i32 %add387, 2
  %idxprom389 = sext i32 %sub388 to i64
  %arrayidx390 = getelementptr inbounds i32, ptr %275, i64 %idxprom389
  %279 = load i32, ptr %arrayidx390, align 4
  %cmp391 = icmp sgt i32 %274, %279
  br i1 %cmp391, label %land.lhs.true393, label %if.end1319

land.lhs.true393:                                 ; preds = %land.lhs.true
  %280 = load i32, ptr %x, align 4
  %281 = load ptr, ptr %r.addr, align 8
  %282 = load i32, ptr %i, align 4
  %sub394 = sub nsw i32 %282, 3
  %283 = load i32, ptr %x_size.addr, align 4
  %mul395 = mul nsw i32 %sub394, %283
  %284 = load i32, ptr %j, align 4
  %add396 = add nsw i32 %mul395, %284
  %sub397 = sub nsw i32 %add396, 1
  %idxprom398 = sext i32 %sub397 to i64
  %arrayidx399 = getelementptr inbounds i32, ptr %281, i64 %idxprom398
  %285 = load i32, ptr %arrayidx399, align 4
  %cmp400 = icmp sgt i32 %280, %285
  br i1 %cmp400, label %land.lhs.true402, label %if.end1319

land.lhs.true402:                                 ; preds = %land.lhs.true393
  %286 = load i32, ptr %x, align 4
  %287 = load ptr, ptr %r.addr, align 8
  %288 = load i32, ptr %i, align 4
  %sub403 = sub nsw i32 %288, 3
  %289 = load i32, ptr %x_size.addr, align 4
  %mul404 = mul nsw i32 %sub403, %289
  %290 = load i32, ptr %j, align 4
  %add405 = add nsw i32 %mul404, %290
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds i32, ptr %287, i64 %idxprom406
  %291 = load i32, ptr %arrayidx407, align 4
  %cmp408 = icmp sgt i32 %286, %291
  br i1 %cmp408, label %land.lhs.true410, label %if.end1319

land.lhs.true410:                                 ; preds = %land.lhs.true402
  %292 = load i32, ptr %x, align 4
  %293 = load ptr, ptr %r.addr, align 8
  %294 = load i32, ptr %i, align 4
  %sub411 = sub nsw i32 %294, 3
  %295 = load i32, ptr %x_size.addr, align 4
  %mul412 = mul nsw i32 %sub411, %295
  %296 = load i32, ptr %j, align 4
  %add413 = add nsw i32 %mul412, %296
  %add414 = add nsw i32 %add413, 1
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds i32, ptr %293, i64 %idxprom415
  %297 = load i32, ptr %arrayidx416, align 4
  %cmp417 = icmp sgt i32 %292, %297
  br i1 %cmp417, label %land.lhs.true419, label %if.end1319

land.lhs.true419:                                 ; preds = %land.lhs.true410
  %298 = load i32, ptr %x, align 4
  %299 = load ptr, ptr %r.addr, align 8
  %300 = load i32, ptr %i, align 4
  %sub420 = sub nsw i32 %300, 3
  %301 = load i32, ptr %x_size.addr, align 4
  %mul421 = mul nsw i32 %sub420, %301
  %302 = load i32, ptr %j, align 4
  %add422 = add nsw i32 %mul421, %302
  %add423 = add nsw i32 %add422, 2
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds i32, ptr %299, i64 %idxprom424
  %303 = load i32, ptr %arrayidx425, align 4
  %cmp426 = icmp sgt i32 %298, %303
  br i1 %cmp426, label %land.lhs.true428, label %if.end1319

land.lhs.true428:                                 ; preds = %land.lhs.true419
  %304 = load i32, ptr %x, align 4
  %305 = load ptr, ptr %r.addr, align 8
  %306 = load i32, ptr %i, align 4
  %sub429 = sub nsw i32 %306, 3
  %307 = load i32, ptr %x_size.addr, align 4
  %mul430 = mul nsw i32 %sub429, %307
  %308 = load i32, ptr %j, align 4
  %add431 = add nsw i32 %mul430, %308
  %add432 = add nsw i32 %add431, 3
  %idxprom433 = sext i32 %add432 to i64
  %arrayidx434 = getelementptr inbounds i32, ptr %305, i64 %idxprom433
  %309 = load i32, ptr %arrayidx434, align 4
  %cmp435 = icmp sgt i32 %304, %309
  br i1 %cmp435, label %land.lhs.true437, label %if.end1319

land.lhs.true437:                                 ; preds = %land.lhs.true428
  %310 = load i32, ptr %x, align 4
  %311 = load ptr, ptr %r.addr, align 8
  %312 = load i32, ptr %i, align 4
  %sub438 = sub nsw i32 %312, 2
  %313 = load i32, ptr %x_size.addr, align 4
  %mul439 = mul nsw i32 %sub438, %313
  %314 = load i32, ptr %j, align 4
  %add440 = add nsw i32 %mul439, %314
  %sub441 = sub nsw i32 %add440, 3
  %idxprom442 = sext i32 %sub441 to i64
  %arrayidx443 = getelementptr inbounds i32, ptr %311, i64 %idxprom442
  %315 = load i32, ptr %arrayidx443, align 4
  %cmp444 = icmp sgt i32 %310, %315
  br i1 %cmp444, label %land.lhs.true446, label %if.end1319

land.lhs.true446:                                 ; preds = %land.lhs.true437
  %316 = load i32, ptr %x, align 4
  %317 = load ptr, ptr %r.addr, align 8
  %318 = load i32, ptr %i, align 4
  %sub447 = sub nsw i32 %318, 2
  %319 = load i32, ptr %x_size.addr, align 4
  %mul448 = mul nsw i32 %sub447, %319
  %320 = load i32, ptr %j, align 4
  %add449 = add nsw i32 %mul448, %320
  %sub450 = sub nsw i32 %add449, 2
  %idxprom451 = sext i32 %sub450 to i64
  %arrayidx452 = getelementptr inbounds i32, ptr %317, i64 %idxprom451
  %321 = load i32, ptr %arrayidx452, align 4
  %cmp453 = icmp sgt i32 %316, %321
  br i1 %cmp453, label %land.lhs.true455, label %if.end1319

land.lhs.true455:                                 ; preds = %land.lhs.true446
  %322 = load i32, ptr %x, align 4
  %323 = load ptr, ptr %r.addr, align 8
  %324 = load i32, ptr %i, align 4
  %sub456 = sub nsw i32 %324, 2
  %325 = load i32, ptr %x_size.addr, align 4
  %mul457 = mul nsw i32 %sub456, %325
  %326 = load i32, ptr %j, align 4
  %add458 = add nsw i32 %mul457, %326
  %sub459 = sub nsw i32 %add458, 1
  %idxprom460 = sext i32 %sub459 to i64
  %arrayidx461 = getelementptr inbounds i32, ptr %323, i64 %idxprom460
  %327 = load i32, ptr %arrayidx461, align 4
  %cmp462 = icmp sgt i32 %322, %327
  br i1 %cmp462, label %land.lhs.true464, label %if.end1319

land.lhs.true464:                                 ; preds = %land.lhs.true455
  %328 = load i32, ptr %x, align 4
  %329 = load ptr, ptr %r.addr, align 8
  %330 = load i32, ptr %i, align 4
  %sub465 = sub nsw i32 %330, 2
  %331 = load i32, ptr %x_size.addr, align 4
  %mul466 = mul nsw i32 %sub465, %331
  %332 = load i32, ptr %j, align 4
  %add467 = add nsw i32 %mul466, %332
  %idxprom468 = sext i32 %add467 to i64
  %arrayidx469 = getelementptr inbounds i32, ptr %329, i64 %idxprom468
  %333 = load i32, ptr %arrayidx469, align 4
  %cmp470 = icmp sgt i32 %328, %333
  br i1 %cmp470, label %land.lhs.true472, label %if.end1319

land.lhs.true472:                                 ; preds = %land.lhs.true464
  %334 = load i32, ptr %x, align 4
  %335 = load ptr, ptr %r.addr, align 8
  %336 = load i32, ptr %i, align 4
  %sub473 = sub nsw i32 %336, 2
  %337 = load i32, ptr %x_size.addr, align 4
  %mul474 = mul nsw i32 %sub473, %337
  %338 = load i32, ptr %j, align 4
  %add475 = add nsw i32 %mul474, %338
  %add476 = add nsw i32 %add475, 1
  %idxprom477 = sext i32 %add476 to i64
  %arrayidx478 = getelementptr inbounds i32, ptr %335, i64 %idxprom477
  %339 = load i32, ptr %arrayidx478, align 4
  %cmp479 = icmp sgt i32 %334, %339
  br i1 %cmp479, label %land.lhs.true481, label %if.end1319

land.lhs.true481:                                 ; preds = %land.lhs.true472
  %340 = load i32, ptr %x, align 4
  %341 = load ptr, ptr %r.addr, align 8
  %342 = load i32, ptr %i, align 4
  %sub482 = sub nsw i32 %342, 2
  %343 = load i32, ptr %x_size.addr, align 4
  %mul483 = mul nsw i32 %sub482, %343
  %344 = load i32, ptr %j, align 4
  %add484 = add nsw i32 %mul483, %344
  %add485 = add nsw i32 %add484, 2
  %idxprom486 = sext i32 %add485 to i64
  %arrayidx487 = getelementptr inbounds i32, ptr %341, i64 %idxprom486
  %345 = load i32, ptr %arrayidx487, align 4
  %cmp488 = icmp sgt i32 %340, %345
  br i1 %cmp488, label %land.lhs.true490, label %if.end1319

land.lhs.true490:                                 ; preds = %land.lhs.true481
  %346 = load i32, ptr %x, align 4
  %347 = load ptr, ptr %r.addr, align 8
  %348 = load i32, ptr %i, align 4
  %sub491 = sub nsw i32 %348, 2
  %349 = load i32, ptr %x_size.addr, align 4
  %mul492 = mul nsw i32 %sub491, %349
  %350 = load i32, ptr %j, align 4
  %add493 = add nsw i32 %mul492, %350
  %add494 = add nsw i32 %add493, 3
  %idxprom495 = sext i32 %add494 to i64
  %arrayidx496 = getelementptr inbounds i32, ptr %347, i64 %idxprom495
  %351 = load i32, ptr %arrayidx496, align 4
  %cmp497 = icmp sgt i32 %346, %351
  br i1 %cmp497, label %land.lhs.true499, label %if.end1319

land.lhs.true499:                                 ; preds = %land.lhs.true490
  %352 = load i32, ptr %x, align 4
  %353 = load ptr, ptr %r.addr, align 8
  %354 = load i32, ptr %i, align 4
  %sub500 = sub nsw i32 %354, 1
  %355 = load i32, ptr %x_size.addr, align 4
  %mul501 = mul nsw i32 %sub500, %355
  %356 = load i32, ptr %j, align 4
  %add502 = add nsw i32 %mul501, %356
  %sub503 = sub nsw i32 %add502, 3
  %idxprom504 = sext i32 %sub503 to i64
  %arrayidx505 = getelementptr inbounds i32, ptr %353, i64 %idxprom504
  %357 = load i32, ptr %arrayidx505, align 4
  %cmp506 = icmp sgt i32 %352, %357
  br i1 %cmp506, label %land.lhs.true508, label %if.end1319

land.lhs.true508:                                 ; preds = %land.lhs.true499
  %358 = load i32, ptr %x, align 4
  %359 = load ptr, ptr %r.addr, align 8
  %360 = load i32, ptr %i, align 4
  %sub509 = sub nsw i32 %360, 1
  %361 = load i32, ptr %x_size.addr, align 4
  %mul510 = mul nsw i32 %sub509, %361
  %362 = load i32, ptr %j, align 4
  %add511 = add nsw i32 %mul510, %362
  %sub512 = sub nsw i32 %add511, 2
  %idxprom513 = sext i32 %sub512 to i64
  %arrayidx514 = getelementptr inbounds i32, ptr %359, i64 %idxprom513
  %363 = load i32, ptr %arrayidx514, align 4
  %cmp515 = icmp sgt i32 %358, %363
  br i1 %cmp515, label %land.lhs.true517, label %if.end1319

land.lhs.true517:                                 ; preds = %land.lhs.true508
  %364 = load i32, ptr %x, align 4
  %365 = load ptr, ptr %r.addr, align 8
  %366 = load i32, ptr %i, align 4
  %sub518 = sub nsw i32 %366, 1
  %367 = load i32, ptr %x_size.addr, align 4
  %mul519 = mul nsw i32 %sub518, %367
  %368 = load i32, ptr %j, align 4
  %add520 = add nsw i32 %mul519, %368
  %sub521 = sub nsw i32 %add520, 1
  %idxprom522 = sext i32 %sub521 to i64
  %arrayidx523 = getelementptr inbounds i32, ptr %365, i64 %idxprom522
  %369 = load i32, ptr %arrayidx523, align 4
  %cmp524 = icmp sgt i32 %364, %369
  br i1 %cmp524, label %land.lhs.true526, label %if.end1319

land.lhs.true526:                                 ; preds = %land.lhs.true517
  %370 = load i32, ptr %x, align 4
  %371 = load ptr, ptr %r.addr, align 8
  %372 = load i32, ptr %i, align 4
  %sub527 = sub nsw i32 %372, 1
  %373 = load i32, ptr %x_size.addr, align 4
  %mul528 = mul nsw i32 %sub527, %373
  %374 = load i32, ptr %j, align 4
  %add529 = add nsw i32 %mul528, %374
  %idxprom530 = sext i32 %add529 to i64
  %arrayidx531 = getelementptr inbounds i32, ptr %371, i64 %idxprom530
  %375 = load i32, ptr %arrayidx531, align 4
  %cmp532 = icmp sgt i32 %370, %375
  br i1 %cmp532, label %land.lhs.true534, label %if.end1319

land.lhs.true534:                                 ; preds = %land.lhs.true526
  %376 = load i32, ptr %x, align 4
  %377 = load ptr, ptr %r.addr, align 8
  %378 = load i32, ptr %i, align 4
  %sub535 = sub nsw i32 %378, 1
  %379 = load i32, ptr %x_size.addr, align 4
  %mul536 = mul nsw i32 %sub535, %379
  %380 = load i32, ptr %j, align 4
  %add537 = add nsw i32 %mul536, %380
  %add538 = add nsw i32 %add537, 1
  %idxprom539 = sext i32 %add538 to i64
  %arrayidx540 = getelementptr inbounds i32, ptr %377, i64 %idxprom539
  %381 = load i32, ptr %arrayidx540, align 4
  %cmp541 = icmp sgt i32 %376, %381
  br i1 %cmp541, label %land.lhs.true543, label %if.end1319

land.lhs.true543:                                 ; preds = %land.lhs.true534
  %382 = load i32, ptr %x, align 4
  %383 = load ptr, ptr %r.addr, align 8
  %384 = load i32, ptr %i, align 4
  %sub544 = sub nsw i32 %384, 1
  %385 = load i32, ptr %x_size.addr, align 4
  %mul545 = mul nsw i32 %sub544, %385
  %386 = load i32, ptr %j, align 4
  %add546 = add nsw i32 %mul545, %386
  %add547 = add nsw i32 %add546, 2
  %idxprom548 = sext i32 %add547 to i64
  %arrayidx549 = getelementptr inbounds i32, ptr %383, i64 %idxprom548
  %387 = load i32, ptr %arrayidx549, align 4
  %cmp550 = icmp sgt i32 %382, %387
  br i1 %cmp550, label %land.lhs.true552, label %if.end1319

land.lhs.true552:                                 ; preds = %land.lhs.true543
  %388 = load i32, ptr %x, align 4
  %389 = load ptr, ptr %r.addr, align 8
  %390 = load i32, ptr %i, align 4
  %sub553 = sub nsw i32 %390, 1
  %391 = load i32, ptr %x_size.addr, align 4
  %mul554 = mul nsw i32 %sub553, %391
  %392 = load i32, ptr %j, align 4
  %add555 = add nsw i32 %mul554, %392
  %add556 = add nsw i32 %add555, 3
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds i32, ptr %389, i64 %idxprom557
  %393 = load i32, ptr %arrayidx558, align 4
  %cmp559 = icmp sgt i32 %388, %393
  br i1 %cmp559, label %land.lhs.true561, label %if.end1319

land.lhs.true561:                                 ; preds = %land.lhs.true552
  %394 = load i32, ptr %x, align 4
  %395 = load ptr, ptr %r.addr, align 8
  %396 = load i32, ptr %i, align 4
  %397 = load i32, ptr %x_size.addr, align 4
  %mul562 = mul nsw i32 %396, %397
  %398 = load i32, ptr %j, align 4
  %add563 = add nsw i32 %mul562, %398
  %sub564 = sub nsw i32 %add563, 3
  %idxprom565 = sext i32 %sub564 to i64
  %arrayidx566 = getelementptr inbounds i32, ptr %395, i64 %idxprom565
  %399 = load i32, ptr %arrayidx566, align 4
  %cmp567 = icmp sgt i32 %394, %399
  br i1 %cmp567, label %land.lhs.true569, label %if.end1319

land.lhs.true569:                                 ; preds = %land.lhs.true561
  %400 = load i32, ptr %x, align 4
  %401 = load ptr, ptr %r.addr, align 8
  %402 = load i32, ptr %i, align 4
  %403 = load i32, ptr %x_size.addr, align 4
  %mul570 = mul nsw i32 %402, %403
  %404 = load i32, ptr %j, align 4
  %add571 = add nsw i32 %mul570, %404
  %sub572 = sub nsw i32 %add571, 2
  %idxprom573 = sext i32 %sub572 to i64
  %arrayidx574 = getelementptr inbounds i32, ptr %401, i64 %idxprom573
  %405 = load i32, ptr %arrayidx574, align 4
  %cmp575 = icmp sgt i32 %400, %405
  br i1 %cmp575, label %land.lhs.true577, label %if.end1319

land.lhs.true577:                                 ; preds = %land.lhs.true569
  %406 = load i32, ptr %x, align 4
  %407 = load ptr, ptr %r.addr, align 8
  %408 = load i32, ptr %i, align 4
  %409 = load i32, ptr %x_size.addr, align 4
  %mul578 = mul nsw i32 %408, %409
  %410 = load i32, ptr %j, align 4
  %add579 = add nsw i32 %mul578, %410
  %sub580 = sub nsw i32 %add579, 1
  %idxprom581 = sext i32 %sub580 to i64
  %arrayidx582 = getelementptr inbounds i32, ptr %407, i64 %idxprom581
  %411 = load i32, ptr %arrayidx582, align 4
  %cmp583 = icmp sgt i32 %406, %411
  br i1 %cmp583, label %land.lhs.true585, label %if.end1319

land.lhs.true585:                                 ; preds = %land.lhs.true577
  %412 = load i32, ptr %x, align 4
  %413 = load ptr, ptr %r.addr, align 8
  %414 = load i32, ptr %i, align 4
  %415 = load i32, ptr %x_size.addr, align 4
  %mul586 = mul nsw i32 %414, %415
  %416 = load i32, ptr %j, align 4
  %add587 = add nsw i32 %mul586, %416
  %add588 = add nsw i32 %add587, 1
  %idxprom589 = sext i32 %add588 to i64
  %arrayidx590 = getelementptr inbounds i32, ptr %413, i64 %idxprom589
  %417 = load i32, ptr %arrayidx590, align 4
  %cmp591 = icmp sge i32 %412, %417
  br i1 %cmp591, label %land.lhs.true593, label %if.end1319

land.lhs.true593:                                 ; preds = %land.lhs.true585
  %418 = load i32, ptr %x, align 4
  %419 = load ptr, ptr %r.addr, align 8
  %420 = load i32, ptr %i, align 4
  %421 = load i32, ptr %x_size.addr, align 4
  %mul594 = mul nsw i32 %420, %421
  %422 = load i32, ptr %j, align 4
  %add595 = add nsw i32 %mul594, %422
  %add596 = add nsw i32 %add595, 2
  %idxprom597 = sext i32 %add596 to i64
  %arrayidx598 = getelementptr inbounds i32, ptr %419, i64 %idxprom597
  %423 = load i32, ptr %arrayidx598, align 4
  %cmp599 = icmp sge i32 %418, %423
  br i1 %cmp599, label %land.lhs.true601, label %if.end1319

land.lhs.true601:                                 ; preds = %land.lhs.true593
  %424 = load i32, ptr %x, align 4
  %425 = load ptr, ptr %r.addr, align 8
  %426 = load i32, ptr %i, align 4
  %427 = load i32, ptr %x_size.addr, align 4
  %mul602 = mul nsw i32 %426, %427
  %428 = load i32, ptr %j, align 4
  %add603 = add nsw i32 %mul602, %428
  %add604 = add nsw i32 %add603, 3
  %idxprom605 = sext i32 %add604 to i64
  %arrayidx606 = getelementptr inbounds i32, ptr %425, i64 %idxprom605
  %429 = load i32, ptr %arrayidx606, align 4
  %cmp607 = icmp sge i32 %424, %429
  br i1 %cmp607, label %land.lhs.true609, label %if.end1319

land.lhs.true609:                                 ; preds = %land.lhs.true601
  %430 = load i32, ptr %x, align 4
  %431 = load ptr, ptr %r.addr, align 8
  %432 = load i32, ptr %i, align 4
  %add610 = add nsw i32 %432, 1
  %433 = load i32, ptr %x_size.addr, align 4
  %mul611 = mul nsw i32 %add610, %433
  %434 = load i32, ptr %j, align 4
  %add612 = add nsw i32 %mul611, %434
  %sub613 = sub nsw i32 %add612, 3
  %idxprom614 = sext i32 %sub613 to i64
  %arrayidx615 = getelementptr inbounds i32, ptr %431, i64 %idxprom614
  %435 = load i32, ptr %arrayidx615, align 4
  %cmp616 = icmp sge i32 %430, %435
  br i1 %cmp616, label %land.lhs.true618, label %if.end1319

land.lhs.true618:                                 ; preds = %land.lhs.true609
  %436 = load i32, ptr %x, align 4
  %437 = load ptr, ptr %r.addr, align 8
  %438 = load i32, ptr %i, align 4
  %add619 = add nsw i32 %438, 1
  %439 = load i32, ptr %x_size.addr, align 4
  %mul620 = mul nsw i32 %add619, %439
  %440 = load i32, ptr %j, align 4
  %add621 = add nsw i32 %mul620, %440
  %sub622 = sub nsw i32 %add621, 2
  %idxprom623 = sext i32 %sub622 to i64
  %arrayidx624 = getelementptr inbounds i32, ptr %437, i64 %idxprom623
  %441 = load i32, ptr %arrayidx624, align 4
  %cmp625 = icmp sge i32 %436, %441
  br i1 %cmp625, label %land.lhs.true627, label %if.end1319

land.lhs.true627:                                 ; preds = %land.lhs.true618
  %442 = load i32, ptr %x, align 4
  %443 = load ptr, ptr %r.addr, align 8
  %444 = load i32, ptr %i, align 4
  %add628 = add nsw i32 %444, 1
  %445 = load i32, ptr %x_size.addr, align 4
  %mul629 = mul nsw i32 %add628, %445
  %446 = load i32, ptr %j, align 4
  %add630 = add nsw i32 %mul629, %446
  %sub631 = sub nsw i32 %add630, 1
  %idxprom632 = sext i32 %sub631 to i64
  %arrayidx633 = getelementptr inbounds i32, ptr %443, i64 %idxprom632
  %447 = load i32, ptr %arrayidx633, align 4
  %cmp634 = icmp sge i32 %442, %447
  br i1 %cmp634, label %land.lhs.true636, label %if.end1319

land.lhs.true636:                                 ; preds = %land.lhs.true627
  %448 = load i32, ptr %x, align 4
  %449 = load ptr, ptr %r.addr, align 8
  %450 = load i32, ptr %i, align 4
  %add637 = add nsw i32 %450, 1
  %451 = load i32, ptr %x_size.addr, align 4
  %mul638 = mul nsw i32 %add637, %451
  %452 = load i32, ptr %j, align 4
  %add639 = add nsw i32 %mul638, %452
  %idxprom640 = sext i32 %add639 to i64
  %arrayidx641 = getelementptr inbounds i32, ptr %449, i64 %idxprom640
  %453 = load i32, ptr %arrayidx641, align 4
  %cmp642 = icmp sge i32 %448, %453
  br i1 %cmp642, label %land.lhs.true644, label %if.end1319

land.lhs.true644:                                 ; preds = %land.lhs.true636
  %454 = load i32, ptr %x, align 4
  %455 = load ptr, ptr %r.addr, align 8
  %456 = load i32, ptr %i, align 4
  %add645 = add nsw i32 %456, 1
  %457 = load i32, ptr %x_size.addr, align 4
  %mul646 = mul nsw i32 %add645, %457
  %458 = load i32, ptr %j, align 4
  %add647 = add nsw i32 %mul646, %458
  %add648 = add nsw i32 %add647, 1
  %idxprom649 = sext i32 %add648 to i64
  %arrayidx650 = getelementptr inbounds i32, ptr %455, i64 %idxprom649
  %459 = load i32, ptr %arrayidx650, align 4
  %cmp651 = icmp sge i32 %454, %459
  br i1 %cmp651, label %land.lhs.true653, label %if.end1319

land.lhs.true653:                                 ; preds = %land.lhs.true644
  %460 = load i32, ptr %x, align 4
  %461 = load ptr, ptr %r.addr, align 8
  %462 = load i32, ptr %i, align 4
  %add654 = add nsw i32 %462, 1
  %463 = load i32, ptr %x_size.addr, align 4
  %mul655 = mul nsw i32 %add654, %463
  %464 = load i32, ptr %j, align 4
  %add656 = add nsw i32 %mul655, %464
  %add657 = add nsw i32 %add656, 2
  %idxprom658 = sext i32 %add657 to i64
  %arrayidx659 = getelementptr inbounds i32, ptr %461, i64 %idxprom658
  %465 = load i32, ptr %arrayidx659, align 4
  %cmp660 = icmp sge i32 %460, %465
  br i1 %cmp660, label %land.lhs.true662, label %if.end1319

land.lhs.true662:                                 ; preds = %land.lhs.true653
  %466 = load i32, ptr %x, align 4
  %467 = load ptr, ptr %r.addr, align 8
  %468 = load i32, ptr %i, align 4
  %add663 = add nsw i32 %468, 1
  %469 = load i32, ptr %x_size.addr, align 4
  %mul664 = mul nsw i32 %add663, %469
  %470 = load i32, ptr %j, align 4
  %add665 = add nsw i32 %mul664, %470
  %add666 = add nsw i32 %add665, 3
  %idxprom667 = sext i32 %add666 to i64
  %arrayidx668 = getelementptr inbounds i32, ptr %467, i64 %idxprom667
  %471 = load i32, ptr %arrayidx668, align 4
  %cmp669 = icmp sge i32 %466, %471
  br i1 %cmp669, label %land.lhs.true671, label %if.end1319

land.lhs.true671:                                 ; preds = %land.lhs.true662
  %472 = load i32, ptr %x, align 4
  %473 = load ptr, ptr %r.addr, align 8
  %474 = load i32, ptr %i, align 4
  %add672 = add nsw i32 %474, 2
  %475 = load i32, ptr %x_size.addr, align 4
  %mul673 = mul nsw i32 %add672, %475
  %476 = load i32, ptr %j, align 4
  %add674 = add nsw i32 %mul673, %476
  %sub675 = sub nsw i32 %add674, 3
  %idxprom676 = sext i32 %sub675 to i64
  %arrayidx677 = getelementptr inbounds i32, ptr %473, i64 %idxprom676
  %477 = load i32, ptr %arrayidx677, align 4
  %cmp678 = icmp sge i32 %472, %477
  br i1 %cmp678, label %land.lhs.true680, label %if.end1319

land.lhs.true680:                                 ; preds = %land.lhs.true671
  %478 = load i32, ptr %x, align 4
  %479 = load ptr, ptr %r.addr, align 8
  %480 = load i32, ptr %i, align 4
  %add681 = add nsw i32 %480, 2
  %481 = load i32, ptr %x_size.addr, align 4
  %mul682 = mul nsw i32 %add681, %481
  %482 = load i32, ptr %j, align 4
  %add683 = add nsw i32 %mul682, %482
  %sub684 = sub nsw i32 %add683, 2
  %idxprom685 = sext i32 %sub684 to i64
  %arrayidx686 = getelementptr inbounds i32, ptr %479, i64 %idxprom685
  %483 = load i32, ptr %arrayidx686, align 4
  %cmp687 = icmp sge i32 %478, %483
  br i1 %cmp687, label %land.lhs.true689, label %if.end1319

land.lhs.true689:                                 ; preds = %land.lhs.true680
  %484 = load i32, ptr %x, align 4
  %485 = load ptr, ptr %r.addr, align 8
  %486 = load i32, ptr %i, align 4
  %add690 = add nsw i32 %486, 2
  %487 = load i32, ptr %x_size.addr, align 4
  %mul691 = mul nsw i32 %add690, %487
  %488 = load i32, ptr %j, align 4
  %add692 = add nsw i32 %mul691, %488
  %sub693 = sub nsw i32 %add692, 1
  %idxprom694 = sext i32 %sub693 to i64
  %arrayidx695 = getelementptr inbounds i32, ptr %485, i64 %idxprom694
  %489 = load i32, ptr %arrayidx695, align 4
  %cmp696 = icmp sge i32 %484, %489
  br i1 %cmp696, label %land.lhs.true698, label %if.end1319

land.lhs.true698:                                 ; preds = %land.lhs.true689
  %490 = load i32, ptr %x, align 4
  %491 = load ptr, ptr %r.addr, align 8
  %492 = load i32, ptr %i, align 4
  %add699 = add nsw i32 %492, 2
  %493 = load i32, ptr %x_size.addr, align 4
  %mul700 = mul nsw i32 %add699, %493
  %494 = load i32, ptr %j, align 4
  %add701 = add nsw i32 %mul700, %494
  %idxprom702 = sext i32 %add701 to i64
  %arrayidx703 = getelementptr inbounds i32, ptr %491, i64 %idxprom702
  %495 = load i32, ptr %arrayidx703, align 4
  %cmp704 = icmp sge i32 %490, %495
  br i1 %cmp704, label %land.lhs.true706, label %if.end1319

land.lhs.true706:                                 ; preds = %land.lhs.true698
  %496 = load i32, ptr %x, align 4
  %497 = load ptr, ptr %r.addr, align 8
  %498 = load i32, ptr %i, align 4
  %add707 = add nsw i32 %498, 2
  %499 = load i32, ptr %x_size.addr, align 4
  %mul708 = mul nsw i32 %add707, %499
  %500 = load i32, ptr %j, align 4
  %add709 = add nsw i32 %mul708, %500
  %add710 = add nsw i32 %add709, 1
  %idxprom711 = sext i32 %add710 to i64
  %arrayidx712 = getelementptr inbounds i32, ptr %497, i64 %idxprom711
  %501 = load i32, ptr %arrayidx712, align 4
  %cmp713 = icmp sge i32 %496, %501
  br i1 %cmp713, label %land.lhs.true715, label %if.end1319

land.lhs.true715:                                 ; preds = %land.lhs.true706
  %502 = load i32, ptr %x, align 4
  %503 = load ptr, ptr %r.addr, align 8
  %504 = load i32, ptr %i, align 4
  %add716 = add nsw i32 %504, 2
  %505 = load i32, ptr %x_size.addr, align 4
  %mul717 = mul nsw i32 %add716, %505
  %506 = load i32, ptr %j, align 4
  %add718 = add nsw i32 %mul717, %506
  %add719 = add nsw i32 %add718, 2
  %idxprom720 = sext i32 %add719 to i64
  %arrayidx721 = getelementptr inbounds i32, ptr %503, i64 %idxprom720
  %507 = load i32, ptr %arrayidx721, align 4
  %cmp722 = icmp sge i32 %502, %507
  br i1 %cmp722, label %land.lhs.true724, label %if.end1319

land.lhs.true724:                                 ; preds = %land.lhs.true715
  %508 = load i32, ptr %x, align 4
  %509 = load ptr, ptr %r.addr, align 8
  %510 = load i32, ptr %i, align 4
  %add725 = add nsw i32 %510, 2
  %511 = load i32, ptr %x_size.addr, align 4
  %mul726 = mul nsw i32 %add725, %511
  %512 = load i32, ptr %j, align 4
  %add727 = add nsw i32 %mul726, %512
  %add728 = add nsw i32 %add727, 3
  %idxprom729 = sext i32 %add728 to i64
  %arrayidx730 = getelementptr inbounds i32, ptr %509, i64 %idxprom729
  %513 = load i32, ptr %arrayidx730, align 4
  %cmp731 = icmp sge i32 %508, %513
  br i1 %cmp731, label %land.lhs.true733, label %if.end1319

land.lhs.true733:                                 ; preds = %land.lhs.true724
  %514 = load i32, ptr %x, align 4
  %515 = load ptr, ptr %r.addr, align 8
  %516 = load i32, ptr %i, align 4
  %add734 = add nsw i32 %516, 3
  %517 = load i32, ptr %x_size.addr, align 4
  %mul735 = mul nsw i32 %add734, %517
  %518 = load i32, ptr %j, align 4
  %add736 = add nsw i32 %mul735, %518
  %sub737 = sub nsw i32 %add736, 3
  %idxprom738 = sext i32 %sub737 to i64
  %arrayidx739 = getelementptr inbounds i32, ptr %515, i64 %idxprom738
  %519 = load i32, ptr %arrayidx739, align 4
  %cmp740 = icmp sge i32 %514, %519
  br i1 %cmp740, label %land.lhs.true742, label %if.end1319

land.lhs.true742:                                 ; preds = %land.lhs.true733
  %520 = load i32, ptr %x, align 4
  %521 = load ptr, ptr %r.addr, align 8
  %522 = load i32, ptr %i, align 4
  %add743 = add nsw i32 %522, 3
  %523 = load i32, ptr %x_size.addr, align 4
  %mul744 = mul nsw i32 %add743, %523
  %524 = load i32, ptr %j, align 4
  %add745 = add nsw i32 %mul744, %524
  %sub746 = sub nsw i32 %add745, 2
  %idxprom747 = sext i32 %sub746 to i64
  %arrayidx748 = getelementptr inbounds i32, ptr %521, i64 %idxprom747
  %525 = load i32, ptr %arrayidx748, align 4
  %cmp749 = icmp sge i32 %520, %525
  br i1 %cmp749, label %land.lhs.true751, label %if.end1319

land.lhs.true751:                                 ; preds = %land.lhs.true742
  %526 = load i32, ptr %x, align 4
  %527 = load ptr, ptr %r.addr, align 8
  %528 = load i32, ptr %i, align 4
  %add752 = add nsw i32 %528, 3
  %529 = load i32, ptr %x_size.addr, align 4
  %mul753 = mul nsw i32 %add752, %529
  %530 = load i32, ptr %j, align 4
  %add754 = add nsw i32 %mul753, %530
  %sub755 = sub nsw i32 %add754, 1
  %idxprom756 = sext i32 %sub755 to i64
  %arrayidx757 = getelementptr inbounds i32, ptr %527, i64 %idxprom756
  %531 = load i32, ptr %arrayidx757, align 4
  %cmp758 = icmp sge i32 %526, %531
  br i1 %cmp758, label %land.lhs.true760, label %if.end1319

land.lhs.true760:                                 ; preds = %land.lhs.true751
  %532 = load i32, ptr %x, align 4
  %533 = load ptr, ptr %r.addr, align 8
  %534 = load i32, ptr %i, align 4
  %add761 = add nsw i32 %534, 3
  %535 = load i32, ptr %x_size.addr, align 4
  %mul762 = mul nsw i32 %add761, %535
  %536 = load i32, ptr %j, align 4
  %add763 = add nsw i32 %mul762, %536
  %idxprom764 = sext i32 %add763 to i64
  %arrayidx765 = getelementptr inbounds i32, ptr %533, i64 %idxprom764
  %537 = load i32, ptr %arrayidx765, align 4
  %cmp766 = icmp sge i32 %532, %537
  br i1 %cmp766, label %land.lhs.true768, label %if.end1319

land.lhs.true768:                                 ; preds = %land.lhs.true760
  %538 = load i32, ptr %x, align 4
  %539 = load ptr, ptr %r.addr, align 8
  %540 = load i32, ptr %i, align 4
  %add769 = add nsw i32 %540, 3
  %541 = load i32, ptr %x_size.addr, align 4
  %mul770 = mul nsw i32 %add769, %541
  %542 = load i32, ptr %j, align 4
  %add771 = add nsw i32 %mul770, %542
  %add772 = add nsw i32 %add771, 1
  %idxprom773 = sext i32 %add772 to i64
  %arrayidx774 = getelementptr inbounds i32, ptr %539, i64 %idxprom773
  %543 = load i32, ptr %arrayidx774, align 4
  %cmp775 = icmp sge i32 %538, %543
  br i1 %cmp775, label %land.lhs.true777, label %if.end1319

land.lhs.true777:                                 ; preds = %land.lhs.true768
  %544 = load i32, ptr %x, align 4
  %545 = load ptr, ptr %r.addr, align 8
  %546 = load i32, ptr %i, align 4
  %add778 = add nsw i32 %546, 3
  %547 = load i32, ptr %x_size.addr, align 4
  %mul779 = mul nsw i32 %add778, %547
  %548 = load i32, ptr %j, align 4
  %add780 = add nsw i32 %mul779, %548
  %add781 = add nsw i32 %add780, 2
  %idxprom782 = sext i32 %add781 to i64
  %arrayidx783 = getelementptr inbounds i32, ptr %545, i64 %idxprom782
  %549 = load i32, ptr %arrayidx783, align 4
  %cmp784 = icmp sge i32 %544, %549
  br i1 %cmp784, label %land.lhs.true786, label %if.end1319

land.lhs.true786:                                 ; preds = %land.lhs.true777
  %550 = load i32, ptr %x, align 4
  %551 = load ptr, ptr %r.addr, align 8
  %552 = load i32, ptr %i, align 4
  %add787 = add nsw i32 %552, 3
  %553 = load i32, ptr %x_size.addr, align 4
  %mul788 = mul nsw i32 %add787, %553
  %554 = load i32, ptr %j, align 4
  %add789 = add nsw i32 %mul788, %554
  %add790 = add nsw i32 %add789, 3
  %idxprom791 = sext i32 %add790 to i64
  %arrayidx792 = getelementptr inbounds i32, ptr %551, i64 %idxprom791
  %555 = load i32, ptr %arrayidx792, align 4
  %cmp793 = icmp sge i32 %550, %555
  br i1 %cmp793, label %if.then795, label %if.end1319

if.then795:                                       ; preds = %land.lhs.true786
  %556 = load ptr, ptr %corner_list.addr, align 8
  %557 = load i32, ptr %n, align 4
  %idxprom796 = sext i32 %557 to i64
  %arrayidx797 = getelementptr inbounds %struct.anon, ptr %556, i64 %idxprom796
  %info = getelementptr inbounds %struct.anon, ptr %arrayidx797, i32 0, i32 2
  store i32 0, ptr %info, align 4
  %558 = load i32, ptr %j, align 4
  %559 = load ptr, ptr %corner_list.addr, align 8
  %560 = load i32, ptr %n, align 4
  %idxprom798 = sext i32 %560 to i64
  %arrayidx799 = getelementptr inbounds %struct.anon, ptr %559, i64 %idxprom798
  %x800 = getelementptr inbounds %struct.anon, ptr %arrayidx799, i32 0, i32 0
  store i32 %558, ptr %x800, align 4
  %561 = load i32, ptr %i, align 4
  %562 = load ptr, ptr %corner_list.addr, align 8
  %563 = load i32, ptr %n, align 4
  %idxprom801 = sext i32 %563 to i64
  %arrayidx802 = getelementptr inbounds %struct.anon, ptr %562, i64 %idxprom801
  %y803 = getelementptr inbounds %struct.anon, ptr %arrayidx802, i32 0, i32 1
  store i32 %561, ptr %y803, align 4
  %564 = load ptr, ptr %in.addr, align 8
  %565 = load i32, ptr %i, align 4
  %sub804 = sub nsw i32 %565, 2
  %566 = load i32, ptr %x_size.addr, align 4
  %mul805 = mul nsw i32 %sub804, %566
  %567 = load i32, ptr %j, align 4
  %add806 = add nsw i32 %mul805, %567
  %sub807 = sub nsw i32 %add806, 2
  %idxprom808 = sext i32 %sub807 to i64
  %arrayidx809 = getelementptr inbounds i8, ptr %564, i64 %idxprom808
  %568 = load i8, ptr %arrayidx809, align 1
  %conv810 = zext i8 %568 to i32
  %569 = load ptr, ptr %in.addr, align 8
  %570 = load i32, ptr %i, align 4
  %sub811 = sub nsw i32 %570, 2
  %571 = load i32, ptr %x_size.addr, align 4
  %mul812 = mul nsw i32 %sub811, %571
  %572 = load i32, ptr %j, align 4
  %add813 = add nsw i32 %mul812, %572
  %sub814 = sub nsw i32 %add813, 1
  %idxprom815 = sext i32 %sub814 to i64
  %arrayidx816 = getelementptr inbounds i8, ptr %569, i64 %idxprom815
  %573 = load i8, ptr %arrayidx816, align 1
  %conv817 = zext i8 %573 to i32
  %add818 = add nsw i32 %conv810, %conv817
  %574 = load ptr, ptr %in.addr, align 8
  %575 = load i32, ptr %i, align 4
  %sub819 = sub nsw i32 %575, 2
  %576 = load i32, ptr %x_size.addr, align 4
  %mul820 = mul nsw i32 %sub819, %576
  %577 = load i32, ptr %j, align 4
  %add821 = add nsw i32 %mul820, %577
  %idxprom822 = sext i32 %add821 to i64
  %arrayidx823 = getelementptr inbounds i8, ptr %574, i64 %idxprom822
  %578 = load i8, ptr %arrayidx823, align 1
  %conv824 = zext i8 %578 to i32
  %add825 = add nsw i32 %add818, %conv824
  %579 = load ptr, ptr %in.addr, align 8
  %580 = load i32, ptr %i, align 4
  %sub826 = sub nsw i32 %580, 2
  %581 = load i32, ptr %x_size.addr, align 4
  %mul827 = mul nsw i32 %sub826, %581
  %582 = load i32, ptr %j, align 4
  %add828 = add nsw i32 %mul827, %582
  %add829 = add nsw i32 %add828, 1
  %idxprom830 = sext i32 %add829 to i64
  %arrayidx831 = getelementptr inbounds i8, ptr %579, i64 %idxprom830
  %583 = load i8, ptr %arrayidx831, align 1
  %conv832 = zext i8 %583 to i32
  %add833 = add nsw i32 %add825, %conv832
  %584 = load ptr, ptr %in.addr, align 8
  %585 = load i32, ptr %i, align 4
  %sub834 = sub nsw i32 %585, 2
  %586 = load i32, ptr %x_size.addr, align 4
  %mul835 = mul nsw i32 %sub834, %586
  %587 = load i32, ptr %j, align 4
  %add836 = add nsw i32 %mul835, %587
  %add837 = add nsw i32 %add836, 2
  %idxprom838 = sext i32 %add837 to i64
  %arrayidx839 = getelementptr inbounds i8, ptr %584, i64 %idxprom838
  %588 = load i8, ptr %arrayidx839, align 1
  %conv840 = zext i8 %588 to i32
  %add841 = add nsw i32 %add833, %conv840
  %589 = load ptr, ptr %in.addr, align 8
  %590 = load i32, ptr %i, align 4
  %sub842 = sub nsw i32 %590, 1
  %591 = load i32, ptr %x_size.addr, align 4
  %mul843 = mul nsw i32 %sub842, %591
  %592 = load i32, ptr %j, align 4
  %add844 = add nsw i32 %mul843, %592
  %sub845 = sub nsw i32 %add844, 2
  %idxprom846 = sext i32 %sub845 to i64
  %arrayidx847 = getelementptr inbounds i8, ptr %589, i64 %idxprom846
  %593 = load i8, ptr %arrayidx847, align 1
  %conv848 = zext i8 %593 to i32
  %add849 = add nsw i32 %add841, %conv848
  %594 = load ptr, ptr %in.addr, align 8
  %595 = load i32, ptr %i, align 4
  %sub850 = sub nsw i32 %595, 1
  %596 = load i32, ptr %x_size.addr, align 4
  %mul851 = mul nsw i32 %sub850, %596
  %597 = load i32, ptr %j, align 4
  %add852 = add nsw i32 %mul851, %597
  %sub853 = sub nsw i32 %add852, 1
  %idxprom854 = sext i32 %sub853 to i64
  %arrayidx855 = getelementptr inbounds i8, ptr %594, i64 %idxprom854
  %598 = load i8, ptr %arrayidx855, align 1
  %conv856 = zext i8 %598 to i32
  %add857 = add nsw i32 %add849, %conv856
  %599 = load ptr, ptr %in.addr, align 8
  %600 = load i32, ptr %i, align 4
  %sub858 = sub nsw i32 %600, 1
  %601 = load i32, ptr %x_size.addr, align 4
  %mul859 = mul nsw i32 %sub858, %601
  %602 = load i32, ptr %j, align 4
  %add860 = add nsw i32 %mul859, %602
  %idxprom861 = sext i32 %add860 to i64
  %arrayidx862 = getelementptr inbounds i8, ptr %599, i64 %idxprom861
  %603 = load i8, ptr %arrayidx862, align 1
  %conv863 = zext i8 %603 to i32
  %add864 = add nsw i32 %add857, %conv863
  %604 = load ptr, ptr %in.addr, align 8
  %605 = load i32, ptr %i, align 4
  %sub865 = sub nsw i32 %605, 1
  %606 = load i32, ptr %x_size.addr, align 4
  %mul866 = mul nsw i32 %sub865, %606
  %607 = load i32, ptr %j, align 4
  %add867 = add nsw i32 %mul866, %607
  %add868 = add nsw i32 %add867, 1
  %idxprom869 = sext i32 %add868 to i64
  %arrayidx870 = getelementptr inbounds i8, ptr %604, i64 %idxprom869
  %608 = load i8, ptr %arrayidx870, align 1
  %conv871 = zext i8 %608 to i32
  %add872 = add nsw i32 %add864, %conv871
  %609 = load ptr, ptr %in.addr, align 8
  %610 = load i32, ptr %i, align 4
  %sub873 = sub nsw i32 %610, 1
  %611 = load i32, ptr %x_size.addr, align 4
  %mul874 = mul nsw i32 %sub873, %611
  %612 = load i32, ptr %j, align 4
  %add875 = add nsw i32 %mul874, %612
  %add876 = add nsw i32 %add875, 2
  %idxprom877 = sext i32 %add876 to i64
  %arrayidx878 = getelementptr inbounds i8, ptr %609, i64 %idxprom877
  %613 = load i8, ptr %arrayidx878, align 1
  %conv879 = zext i8 %613 to i32
  %add880 = add nsw i32 %add872, %conv879
  %614 = load ptr, ptr %in.addr, align 8
  %615 = load i32, ptr %i, align 4
  %616 = load i32, ptr %x_size.addr, align 4
  %mul881 = mul nsw i32 %615, %616
  %617 = load i32, ptr %j, align 4
  %add882 = add nsw i32 %mul881, %617
  %sub883 = sub nsw i32 %add882, 2
  %idxprom884 = sext i32 %sub883 to i64
  %arrayidx885 = getelementptr inbounds i8, ptr %614, i64 %idxprom884
  %618 = load i8, ptr %arrayidx885, align 1
  %conv886 = zext i8 %618 to i32
  %add887 = add nsw i32 %add880, %conv886
  %619 = load ptr, ptr %in.addr, align 8
  %620 = load i32, ptr %i, align 4
  %621 = load i32, ptr %x_size.addr, align 4
  %mul888 = mul nsw i32 %620, %621
  %622 = load i32, ptr %j, align 4
  %add889 = add nsw i32 %mul888, %622
  %sub890 = sub nsw i32 %add889, 1
  %idxprom891 = sext i32 %sub890 to i64
  %arrayidx892 = getelementptr inbounds i8, ptr %619, i64 %idxprom891
  %623 = load i8, ptr %arrayidx892, align 1
  %conv893 = zext i8 %623 to i32
  %add894 = add nsw i32 %add887, %conv893
  %624 = load ptr, ptr %in.addr, align 8
  %625 = load i32, ptr %i, align 4
  %626 = load i32, ptr %x_size.addr, align 4
  %mul895 = mul nsw i32 %625, %626
  %627 = load i32, ptr %j, align 4
  %add896 = add nsw i32 %mul895, %627
  %idxprom897 = sext i32 %add896 to i64
  %arrayidx898 = getelementptr inbounds i8, ptr %624, i64 %idxprom897
  %628 = load i8, ptr %arrayidx898, align 1
  %conv899 = zext i8 %628 to i32
  %add900 = add nsw i32 %add894, %conv899
  %629 = load ptr, ptr %in.addr, align 8
  %630 = load i32, ptr %i, align 4
  %631 = load i32, ptr %x_size.addr, align 4
  %mul901 = mul nsw i32 %630, %631
  %632 = load i32, ptr %j, align 4
  %add902 = add nsw i32 %mul901, %632
  %add903 = add nsw i32 %add902, 1
  %idxprom904 = sext i32 %add903 to i64
  %arrayidx905 = getelementptr inbounds i8, ptr %629, i64 %idxprom904
  %633 = load i8, ptr %arrayidx905, align 1
  %conv906 = zext i8 %633 to i32
  %add907 = add nsw i32 %add900, %conv906
  %634 = load ptr, ptr %in.addr, align 8
  %635 = load i32, ptr %i, align 4
  %636 = load i32, ptr %x_size.addr, align 4
  %mul908 = mul nsw i32 %635, %636
  %637 = load i32, ptr %j, align 4
  %add909 = add nsw i32 %mul908, %637
  %add910 = add nsw i32 %add909, 2
  %idxprom911 = sext i32 %add910 to i64
  %arrayidx912 = getelementptr inbounds i8, ptr %634, i64 %idxprom911
  %638 = load i8, ptr %arrayidx912, align 1
  %conv913 = zext i8 %638 to i32
  %add914 = add nsw i32 %add907, %conv913
  %639 = load ptr, ptr %in.addr, align 8
  %640 = load i32, ptr %i, align 4
  %add915 = add nsw i32 %640, 1
  %641 = load i32, ptr %x_size.addr, align 4
  %mul916 = mul nsw i32 %add915, %641
  %642 = load i32, ptr %j, align 4
  %add917 = add nsw i32 %mul916, %642
  %sub918 = sub nsw i32 %add917, 2
  %idxprom919 = sext i32 %sub918 to i64
  %arrayidx920 = getelementptr inbounds i8, ptr %639, i64 %idxprom919
  %643 = load i8, ptr %arrayidx920, align 1
  %conv921 = zext i8 %643 to i32
  %add922 = add nsw i32 %add914, %conv921
  %644 = load ptr, ptr %in.addr, align 8
  %645 = load i32, ptr %i, align 4
  %add923 = add nsw i32 %645, 1
  %646 = load i32, ptr %x_size.addr, align 4
  %mul924 = mul nsw i32 %add923, %646
  %647 = load i32, ptr %j, align 4
  %add925 = add nsw i32 %mul924, %647
  %sub926 = sub nsw i32 %add925, 1
  %idxprom927 = sext i32 %sub926 to i64
  %arrayidx928 = getelementptr inbounds i8, ptr %644, i64 %idxprom927
  %648 = load i8, ptr %arrayidx928, align 1
  %conv929 = zext i8 %648 to i32
  %add930 = add nsw i32 %add922, %conv929
  %649 = load ptr, ptr %in.addr, align 8
  %650 = load i32, ptr %i, align 4
  %add931 = add nsw i32 %650, 1
  %651 = load i32, ptr %x_size.addr, align 4
  %mul932 = mul nsw i32 %add931, %651
  %652 = load i32, ptr %j, align 4
  %add933 = add nsw i32 %mul932, %652
  %idxprom934 = sext i32 %add933 to i64
  %arrayidx935 = getelementptr inbounds i8, ptr %649, i64 %idxprom934
  %653 = load i8, ptr %arrayidx935, align 1
  %conv936 = zext i8 %653 to i32
  %add937 = add nsw i32 %add930, %conv936
  %654 = load ptr, ptr %in.addr, align 8
  %655 = load i32, ptr %i, align 4
  %add938 = add nsw i32 %655, 1
  %656 = load i32, ptr %x_size.addr, align 4
  %mul939 = mul nsw i32 %add938, %656
  %657 = load i32, ptr %j, align 4
  %add940 = add nsw i32 %mul939, %657
  %add941 = add nsw i32 %add940, 1
  %idxprom942 = sext i32 %add941 to i64
  %arrayidx943 = getelementptr inbounds i8, ptr %654, i64 %idxprom942
  %658 = load i8, ptr %arrayidx943, align 1
  %conv944 = zext i8 %658 to i32
  %add945 = add nsw i32 %add937, %conv944
  %659 = load ptr, ptr %in.addr, align 8
  %660 = load i32, ptr %i, align 4
  %add946 = add nsw i32 %660, 1
  %661 = load i32, ptr %x_size.addr, align 4
  %mul947 = mul nsw i32 %add946, %661
  %662 = load i32, ptr %j, align 4
  %add948 = add nsw i32 %mul947, %662
  %add949 = add nsw i32 %add948, 2
  %idxprom950 = sext i32 %add949 to i64
  %arrayidx951 = getelementptr inbounds i8, ptr %659, i64 %idxprom950
  %663 = load i8, ptr %arrayidx951, align 1
  %conv952 = zext i8 %663 to i32
  %add953 = add nsw i32 %add945, %conv952
  %664 = load ptr, ptr %in.addr, align 8
  %665 = load i32, ptr %i, align 4
  %add954 = add nsw i32 %665, 2
  %666 = load i32, ptr %x_size.addr, align 4
  %mul955 = mul nsw i32 %add954, %666
  %667 = load i32, ptr %j, align 4
  %add956 = add nsw i32 %mul955, %667
  %sub957 = sub nsw i32 %add956, 2
  %idxprom958 = sext i32 %sub957 to i64
  %arrayidx959 = getelementptr inbounds i8, ptr %664, i64 %idxprom958
  %668 = load i8, ptr %arrayidx959, align 1
  %conv960 = zext i8 %668 to i32
  %add961 = add nsw i32 %add953, %conv960
  %669 = load ptr, ptr %in.addr, align 8
  %670 = load i32, ptr %i, align 4
  %add962 = add nsw i32 %670, 2
  %671 = load i32, ptr %x_size.addr, align 4
  %mul963 = mul nsw i32 %add962, %671
  %672 = load i32, ptr %j, align 4
  %add964 = add nsw i32 %mul963, %672
  %sub965 = sub nsw i32 %add964, 1
  %idxprom966 = sext i32 %sub965 to i64
  %arrayidx967 = getelementptr inbounds i8, ptr %669, i64 %idxprom966
  %673 = load i8, ptr %arrayidx967, align 1
  %conv968 = zext i8 %673 to i32
  %add969 = add nsw i32 %add961, %conv968
  %674 = load ptr, ptr %in.addr, align 8
  %675 = load i32, ptr %i, align 4
  %add970 = add nsw i32 %675, 2
  %676 = load i32, ptr %x_size.addr, align 4
  %mul971 = mul nsw i32 %add970, %676
  %677 = load i32, ptr %j, align 4
  %add972 = add nsw i32 %mul971, %677
  %idxprom973 = sext i32 %add972 to i64
  %arrayidx974 = getelementptr inbounds i8, ptr %674, i64 %idxprom973
  %678 = load i8, ptr %arrayidx974, align 1
  %conv975 = zext i8 %678 to i32
  %add976 = add nsw i32 %add969, %conv975
  %679 = load ptr, ptr %in.addr, align 8
  %680 = load i32, ptr %i, align 4
  %add977 = add nsw i32 %680, 2
  %681 = load i32, ptr %x_size.addr, align 4
  %mul978 = mul nsw i32 %add977, %681
  %682 = load i32, ptr %j, align 4
  %add979 = add nsw i32 %mul978, %682
  %add980 = add nsw i32 %add979, 1
  %idxprom981 = sext i32 %add980 to i64
  %arrayidx982 = getelementptr inbounds i8, ptr %679, i64 %idxprom981
  %683 = load i8, ptr %arrayidx982, align 1
  %conv983 = zext i8 %683 to i32
  %add984 = add nsw i32 %add976, %conv983
  %684 = load ptr, ptr %in.addr, align 8
  %685 = load i32, ptr %i, align 4
  %add985 = add nsw i32 %685, 2
  %686 = load i32, ptr %x_size.addr, align 4
  %mul986 = mul nsw i32 %add985, %686
  %687 = load i32, ptr %j, align 4
  %add987 = add nsw i32 %mul986, %687
  %add988 = add nsw i32 %add987, 2
  %idxprom989 = sext i32 %add988 to i64
  %arrayidx990 = getelementptr inbounds i8, ptr %684, i64 %idxprom989
  %688 = load i8, ptr %arrayidx990, align 1
  %conv991 = zext i8 %688 to i32
  %add992 = add nsw i32 %add984, %conv991
  store i32 %add992, ptr %x, align 4
  %689 = load i32, ptr %x, align 4
  %div = sdiv i32 %689, 25
  %690 = load ptr, ptr %corner_list.addr, align 8
  %691 = load i32, ptr %n, align 4
  %idxprom993 = sext i32 %691 to i64
  %arrayidx994 = getelementptr inbounds %struct.anon, ptr %690, i64 %idxprom993
  %I = getelementptr inbounds %struct.anon, ptr %arrayidx994, i32 0, i32 5
  store i32 %div, ptr %I, align 4
  %692 = load ptr, ptr %in.addr, align 8
  %693 = load i32, ptr %i, align 4
  %sub995 = sub nsw i32 %693, 2
  %694 = load i32, ptr %x_size.addr, align 4
  %mul996 = mul nsw i32 %sub995, %694
  %695 = load i32, ptr %j, align 4
  %add997 = add nsw i32 %mul996, %695
  %add998 = add nsw i32 %add997, 2
  %idxprom999 = sext i32 %add998 to i64
  %arrayidx1000 = getelementptr inbounds i8, ptr %692, i64 %idxprom999
  %696 = load i8, ptr %arrayidx1000, align 1
  %conv1001 = zext i8 %696 to i32
  %697 = load ptr, ptr %in.addr, align 8
  %698 = load i32, ptr %i, align 4
  %sub1002 = sub nsw i32 %698, 1
  %699 = load i32, ptr %x_size.addr, align 4
  %mul1003 = mul nsw i32 %sub1002, %699
  %700 = load i32, ptr %j, align 4
  %add1004 = add nsw i32 %mul1003, %700
  %add1005 = add nsw i32 %add1004, 2
  %idxprom1006 = sext i32 %add1005 to i64
  %arrayidx1007 = getelementptr inbounds i8, ptr %697, i64 %idxprom1006
  %701 = load i8, ptr %arrayidx1007, align 1
  %conv1008 = zext i8 %701 to i32
  %add1009 = add nsw i32 %conv1001, %conv1008
  %702 = load ptr, ptr %in.addr, align 8
  %703 = load i32, ptr %i, align 4
  %704 = load i32, ptr %x_size.addr, align 4
  %mul1010 = mul nsw i32 %703, %704
  %705 = load i32, ptr %j, align 4
  %add1011 = add nsw i32 %mul1010, %705
  %add1012 = add nsw i32 %add1011, 2
  %idxprom1013 = sext i32 %add1012 to i64
  %arrayidx1014 = getelementptr inbounds i8, ptr %702, i64 %idxprom1013
  %706 = load i8, ptr %arrayidx1014, align 1
  %conv1015 = zext i8 %706 to i32
  %add1016 = add nsw i32 %add1009, %conv1015
  %707 = load ptr, ptr %in.addr, align 8
  %708 = load i32, ptr %i, align 4
  %add1017 = add nsw i32 %708, 1
  %709 = load i32, ptr %x_size.addr, align 4
  %mul1018 = mul nsw i32 %add1017, %709
  %710 = load i32, ptr %j, align 4
  %add1019 = add nsw i32 %mul1018, %710
  %add1020 = add nsw i32 %add1019, 2
  %idxprom1021 = sext i32 %add1020 to i64
  %arrayidx1022 = getelementptr inbounds i8, ptr %707, i64 %idxprom1021
  %711 = load i8, ptr %arrayidx1022, align 1
  %conv1023 = zext i8 %711 to i32
  %add1024 = add nsw i32 %add1016, %conv1023
  %712 = load ptr, ptr %in.addr, align 8
  %713 = load i32, ptr %i, align 4
  %add1025 = add nsw i32 %713, 2
  %714 = load i32, ptr %x_size.addr, align 4
  %mul1026 = mul nsw i32 %add1025, %714
  %715 = load i32, ptr %j, align 4
  %add1027 = add nsw i32 %mul1026, %715
  %add1028 = add nsw i32 %add1027, 2
  %idxprom1029 = sext i32 %add1028 to i64
  %arrayidx1030 = getelementptr inbounds i8, ptr %712, i64 %idxprom1029
  %716 = load i8, ptr %arrayidx1030, align 1
  %conv1031 = zext i8 %716 to i32
  %add1032 = add nsw i32 %add1024, %conv1031
  %717 = load ptr, ptr %in.addr, align 8
  %718 = load i32, ptr %i, align 4
  %sub1033 = sub nsw i32 %718, 2
  %719 = load i32, ptr %x_size.addr, align 4
  %mul1034 = mul nsw i32 %sub1033, %719
  %720 = load i32, ptr %j, align 4
  %add1035 = add nsw i32 %mul1034, %720
  %sub1036 = sub nsw i32 %add1035, 2
  %idxprom1037 = sext i32 %sub1036 to i64
  %arrayidx1038 = getelementptr inbounds i8, ptr %717, i64 %idxprom1037
  %721 = load i8, ptr %arrayidx1038, align 1
  %conv1039 = zext i8 %721 to i32
  %722 = load ptr, ptr %in.addr, align 8
  %723 = load i32, ptr %i, align 4
  %sub1040 = sub nsw i32 %723, 1
  %724 = load i32, ptr %x_size.addr, align 4
  %mul1041 = mul nsw i32 %sub1040, %724
  %725 = load i32, ptr %j, align 4
  %add1042 = add nsw i32 %mul1041, %725
  %sub1043 = sub nsw i32 %add1042, 2
  %idxprom1044 = sext i32 %sub1043 to i64
  %arrayidx1045 = getelementptr inbounds i8, ptr %722, i64 %idxprom1044
  %726 = load i8, ptr %arrayidx1045, align 1
  %conv1046 = zext i8 %726 to i32
  %add1047 = add nsw i32 %conv1039, %conv1046
  %727 = load ptr, ptr %in.addr, align 8
  %728 = load i32, ptr %i, align 4
  %729 = load i32, ptr %x_size.addr, align 4
  %mul1048 = mul nsw i32 %728, %729
  %730 = load i32, ptr %j, align 4
  %add1049 = add nsw i32 %mul1048, %730
  %sub1050 = sub nsw i32 %add1049, 2
  %idxprom1051 = sext i32 %sub1050 to i64
  %arrayidx1052 = getelementptr inbounds i8, ptr %727, i64 %idxprom1051
  %731 = load i8, ptr %arrayidx1052, align 1
  %conv1053 = zext i8 %731 to i32
  %add1054 = add nsw i32 %add1047, %conv1053
  %732 = load ptr, ptr %in.addr, align 8
  %733 = load i32, ptr %i, align 4
  %add1055 = add nsw i32 %733, 1
  %734 = load i32, ptr %x_size.addr, align 4
  %mul1056 = mul nsw i32 %add1055, %734
  %735 = load i32, ptr %j, align 4
  %add1057 = add nsw i32 %mul1056, %735
  %sub1058 = sub nsw i32 %add1057, 2
  %idxprom1059 = sext i32 %sub1058 to i64
  %arrayidx1060 = getelementptr inbounds i8, ptr %732, i64 %idxprom1059
  %736 = load i8, ptr %arrayidx1060, align 1
  %conv1061 = zext i8 %736 to i32
  %add1062 = add nsw i32 %add1054, %conv1061
  %737 = load ptr, ptr %in.addr, align 8
  %738 = load i32, ptr %i, align 4
  %add1063 = add nsw i32 %738, 2
  %739 = load i32, ptr %x_size.addr, align 4
  %mul1064 = mul nsw i32 %add1063, %739
  %740 = load i32, ptr %j, align 4
  %add1065 = add nsw i32 %mul1064, %740
  %sub1066 = sub nsw i32 %add1065, 2
  %idxprom1067 = sext i32 %sub1066 to i64
  %arrayidx1068 = getelementptr inbounds i8, ptr %737, i64 %idxprom1067
  %741 = load i8, ptr %arrayidx1068, align 1
  %conv1069 = zext i8 %741 to i32
  %add1070 = add nsw i32 %add1062, %conv1069
  %sub1071 = sub nsw i32 %add1032, %add1070
  store i32 %sub1071, ptr %x, align 4
  %742 = load i32, ptr %x, align 4
  %743 = load ptr, ptr %in.addr, align 8
  %744 = load i32, ptr %i, align 4
  %sub1072 = sub nsw i32 %744, 2
  %745 = load i32, ptr %x_size.addr, align 4
  %mul1073 = mul nsw i32 %sub1072, %745
  %746 = load i32, ptr %j, align 4
  %add1074 = add nsw i32 %mul1073, %746
  %add1075 = add nsw i32 %add1074, 1
  %idxprom1076 = sext i32 %add1075 to i64
  %arrayidx1077 = getelementptr inbounds i8, ptr %743, i64 %idxprom1076
  %747 = load i8, ptr %arrayidx1077, align 1
  %conv1078 = zext i8 %747 to i32
  %add1079 = add nsw i32 %742, %conv1078
  %748 = load ptr, ptr %in.addr, align 8
  %749 = load i32, ptr %i, align 4
  %sub1080 = sub nsw i32 %749, 1
  %750 = load i32, ptr %x_size.addr, align 4
  %mul1081 = mul nsw i32 %sub1080, %750
  %751 = load i32, ptr %j, align 4
  %add1082 = add nsw i32 %mul1081, %751
  %add1083 = add nsw i32 %add1082, 1
  %idxprom1084 = sext i32 %add1083 to i64
  %arrayidx1085 = getelementptr inbounds i8, ptr %748, i64 %idxprom1084
  %752 = load i8, ptr %arrayidx1085, align 1
  %conv1086 = zext i8 %752 to i32
  %add1087 = add nsw i32 %add1079, %conv1086
  %753 = load ptr, ptr %in.addr, align 8
  %754 = load i32, ptr %i, align 4
  %755 = load i32, ptr %x_size.addr, align 4
  %mul1088 = mul nsw i32 %754, %755
  %756 = load i32, ptr %j, align 4
  %add1089 = add nsw i32 %mul1088, %756
  %add1090 = add nsw i32 %add1089, 1
  %idxprom1091 = sext i32 %add1090 to i64
  %arrayidx1092 = getelementptr inbounds i8, ptr %753, i64 %idxprom1091
  %757 = load i8, ptr %arrayidx1092, align 1
  %conv1093 = zext i8 %757 to i32
  %add1094 = add nsw i32 %add1087, %conv1093
  %758 = load ptr, ptr %in.addr, align 8
  %759 = load i32, ptr %i, align 4
  %add1095 = add nsw i32 %759, 1
  %760 = load i32, ptr %x_size.addr, align 4
  %mul1096 = mul nsw i32 %add1095, %760
  %761 = load i32, ptr %j, align 4
  %add1097 = add nsw i32 %mul1096, %761
  %add1098 = add nsw i32 %add1097, 1
  %idxprom1099 = sext i32 %add1098 to i64
  %arrayidx1100 = getelementptr inbounds i8, ptr %758, i64 %idxprom1099
  %762 = load i8, ptr %arrayidx1100, align 1
  %conv1101 = zext i8 %762 to i32
  %add1102 = add nsw i32 %add1094, %conv1101
  %763 = load ptr, ptr %in.addr, align 8
  %764 = load i32, ptr %i, align 4
  %add1103 = add nsw i32 %764, 2
  %765 = load i32, ptr %x_size.addr, align 4
  %mul1104 = mul nsw i32 %add1103, %765
  %766 = load i32, ptr %j, align 4
  %add1105 = add nsw i32 %mul1104, %766
  %add1106 = add nsw i32 %add1105, 1
  %idxprom1107 = sext i32 %add1106 to i64
  %arrayidx1108 = getelementptr inbounds i8, ptr %763, i64 %idxprom1107
  %767 = load i8, ptr %arrayidx1108, align 1
  %conv1109 = zext i8 %767 to i32
  %add1110 = add nsw i32 %add1102, %conv1109
  %768 = load ptr, ptr %in.addr, align 8
  %769 = load i32, ptr %i, align 4
  %sub1111 = sub nsw i32 %769, 2
  %770 = load i32, ptr %x_size.addr, align 4
  %mul1112 = mul nsw i32 %sub1111, %770
  %771 = load i32, ptr %j, align 4
  %add1113 = add nsw i32 %mul1112, %771
  %sub1114 = sub nsw i32 %add1113, 1
  %idxprom1115 = sext i32 %sub1114 to i64
  %arrayidx1116 = getelementptr inbounds i8, ptr %768, i64 %idxprom1115
  %772 = load i8, ptr %arrayidx1116, align 1
  %conv1117 = zext i8 %772 to i32
  %773 = load ptr, ptr %in.addr, align 8
  %774 = load i32, ptr %i, align 4
  %sub1118 = sub nsw i32 %774, 1
  %775 = load i32, ptr %x_size.addr, align 4
  %mul1119 = mul nsw i32 %sub1118, %775
  %776 = load i32, ptr %j, align 4
  %add1120 = add nsw i32 %mul1119, %776
  %sub1121 = sub nsw i32 %add1120, 1
  %idxprom1122 = sext i32 %sub1121 to i64
  %arrayidx1123 = getelementptr inbounds i8, ptr %773, i64 %idxprom1122
  %777 = load i8, ptr %arrayidx1123, align 1
  %conv1124 = zext i8 %777 to i32
  %add1125 = add nsw i32 %conv1117, %conv1124
  %778 = load ptr, ptr %in.addr, align 8
  %779 = load i32, ptr %i, align 4
  %780 = load i32, ptr %x_size.addr, align 4
  %mul1126 = mul nsw i32 %779, %780
  %781 = load i32, ptr %j, align 4
  %add1127 = add nsw i32 %mul1126, %781
  %sub1128 = sub nsw i32 %add1127, 1
  %idxprom1129 = sext i32 %sub1128 to i64
  %arrayidx1130 = getelementptr inbounds i8, ptr %778, i64 %idxprom1129
  %782 = load i8, ptr %arrayidx1130, align 1
  %conv1131 = zext i8 %782 to i32
  %add1132 = add nsw i32 %add1125, %conv1131
  %783 = load ptr, ptr %in.addr, align 8
  %784 = load i32, ptr %i, align 4
  %add1133 = add nsw i32 %784, 1
  %785 = load i32, ptr %x_size.addr, align 4
  %mul1134 = mul nsw i32 %add1133, %785
  %786 = load i32, ptr %j, align 4
  %add1135 = add nsw i32 %mul1134, %786
  %sub1136 = sub nsw i32 %add1135, 1
  %idxprom1137 = sext i32 %sub1136 to i64
  %arrayidx1138 = getelementptr inbounds i8, ptr %783, i64 %idxprom1137
  %787 = load i8, ptr %arrayidx1138, align 1
  %conv1139 = zext i8 %787 to i32
  %add1140 = add nsw i32 %add1132, %conv1139
  %788 = load ptr, ptr %in.addr, align 8
  %789 = load i32, ptr %i, align 4
  %add1141 = add nsw i32 %789, 2
  %790 = load i32, ptr %x_size.addr, align 4
  %mul1142 = mul nsw i32 %add1141, %790
  %791 = load i32, ptr %j, align 4
  %add1143 = add nsw i32 %mul1142, %791
  %sub1144 = sub nsw i32 %add1143, 1
  %idxprom1145 = sext i32 %sub1144 to i64
  %arrayidx1146 = getelementptr inbounds i8, ptr %788, i64 %idxprom1145
  %792 = load i8, ptr %arrayidx1146, align 1
  %conv1147 = zext i8 %792 to i32
  %add1148 = add nsw i32 %add1140, %conv1147
  %sub1149 = sub nsw i32 %add1110, %add1148
  %793 = load i32, ptr %x, align 4
  %add1150 = add nsw i32 %793, %sub1149
  store i32 %add1150, ptr %x, align 4
  %794 = load ptr, ptr %in.addr, align 8
  %795 = load i32, ptr %i, align 4
  %add1151 = add nsw i32 %795, 2
  %796 = load i32, ptr %x_size.addr, align 4
  %mul1152 = mul nsw i32 %add1151, %796
  %797 = load i32, ptr %j, align 4
  %add1153 = add nsw i32 %mul1152, %797
  %sub1154 = sub nsw i32 %add1153, 2
  %idxprom1155 = sext i32 %sub1154 to i64
  %arrayidx1156 = getelementptr inbounds i8, ptr %794, i64 %idxprom1155
  %798 = load i8, ptr %arrayidx1156, align 1
  %conv1157 = zext i8 %798 to i32
  %799 = load ptr, ptr %in.addr, align 8
  %800 = load i32, ptr %i, align 4
  %add1158 = add nsw i32 %800, 2
  %801 = load i32, ptr %x_size.addr, align 4
  %mul1159 = mul nsw i32 %add1158, %801
  %802 = load i32, ptr %j, align 4
  %add1160 = add nsw i32 %mul1159, %802
  %sub1161 = sub nsw i32 %add1160, 1
  %idxprom1162 = sext i32 %sub1161 to i64
  %arrayidx1163 = getelementptr inbounds i8, ptr %799, i64 %idxprom1162
  %803 = load i8, ptr %arrayidx1163, align 1
  %conv1164 = zext i8 %803 to i32
  %add1165 = add nsw i32 %conv1157, %conv1164
  %804 = load ptr, ptr %in.addr, align 8
  %805 = load i32, ptr %i, align 4
  %add1166 = add nsw i32 %805, 2
  %806 = load i32, ptr %x_size.addr, align 4
  %mul1167 = mul nsw i32 %add1166, %806
  %807 = load i32, ptr %j, align 4
  %add1168 = add nsw i32 %mul1167, %807
  %idxprom1169 = sext i32 %add1168 to i64
  %arrayidx1170 = getelementptr inbounds i8, ptr %804, i64 %idxprom1169
  %808 = load i8, ptr %arrayidx1170, align 1
  %conv1171 = zext i8 %808 to i32
  %add1172 = add nsw i32 %add1165, %conv1171
  %809 = load ptr, ptr %in.addr, align 8
  %810 = load i32, ptr %i, align 4
  %add1173 = add nsw i32 %810, 2
  %811 = load i32, ptr %x_size.addr, align 4
  %mul1174 = mul nsw i32 %add1173, %811
  %812 = load i32, ptr %j, align 4
  %add1175 = add nsw i32 %mul1174, %812
  %add1176 = add nsw i32 %add1175, 1
  %idxprom1177 = sext i32 %add1176 to i64
  %arrayidx1178 = getelementptr inbounds i8, ptr %809, i64 %idxprom1177
  %813 = load i8, ptr %arrayidx1178, align 1
  %conv1179 = zext i8 %813 to i32
  %add1180 = add nsw i32 %add1172, %conv1179
  %814 = load ptr, ptr %in.addr, align 8
  %815 = load i32, ptr %i, align 4
  %add1181 = add nsw i32 %815, 2
  %816 = load i32, ptr %x_size.addr, align 4
  %mul1182 = mul nsw i32 %add1181, %816
  %817 = load i32, ptr %j, align 4
  %add1183 = add nsw i32 %mul1182, %817
  %add1184 = add nsw i32 %add1183, 2
  %idxprom1185 = sext i32 %add1184 to i64
  %arrayidx1186 = getelementptr inbounds i8, ptr %814, i64 %idxprom1185
  %818 = load i8, ptr %arrayidx1186, align 1
  %conv1187 = zext i8 %818 to i32
  %add1188 = add nsw i32 %add1180, %conv1187
  %819 = load ptr, ptr %in.addr, align 8
  %820 = load i32, ptr %i, align 4
  %sub1189 = sub nsw i32 %820, 2
  %821 = load i32, ptr %x_size.addr, align 4
  %mul1190 = mul nsw i32 %sub1189, %821
  %822 = load i32, ptr %j, align 4
  %add1191 = add nsw i32 %mul1190, %822
  %sub1192 = sub nsw i32 %add1191, 2
  %idxprom1193 = sext i32 %sub1192 to i64
  %arrayidx1194 = getelementptr inbounds i8, ptr %819, i64 %idxprom1193
  %823 = load i8, ptr %arrayidx1194, align 1
  %conv1195 = zext i8 %823 to i32
  %824 = load ptr, ptr %in.addr, align 8
  %825 = load i32, ptr %i, align 4
  %sub1196 = sub nsw i32 %825, 2
  %826 = load i32, ptr %x_size.addr, align 4
  %mul1197 = mul nsw i32 %sub1196, %826
  %827 = load i32, ptr %j, align 4
  %add1198 = add nsw i32 %mul1197, %827
  %sub1199 = sub nsw i32 %add1198, 1
  %idxprom1200 = sext i32 %sub1199 to i64
  %arrayidx1201 = getelementptr inbounds i8, ptr %824, i64 %idxprom1200
  %828 = load i8, ptr %arrayidx1201, align 1
  %conv1202 = zext i8 %828 to i32
  %add1203 = add nsw i32 %conv1195, %conv1202
  %829 = load ptr, ptr %in.addr, align 8
  %830 = load i32, ptr %i, align 4
  %sub1204 = sub nsw i32 %830, 2
  %831 = load i32, ptr %x_size.addr, align 4
  %mul1205 = mul nsw i32 %sub1204, %831
  %832 = load i32, ptr %j, align 4
  %add1206 = add nsw i32 %mul1205, %832
  %idxprom1207 = sext i32 %add1206 to i64
  %arrayidx1208 = getelementptr inbounds i8, ptr %829, i64 %idxprom1207
  %833 = load i8, ptr %arrayidx1208, align 1
  %conv1209 = zext i8 %833 to i32
  %add1210 = add nsw i32 %add1203, %conv1209
  %834 = load ptr, ptr %in.addr, align 8
  %835 = load i32, ptr %i, align 4
  %sub1211 = sub nsw i32 %835, 2
  %836 = load i32, ptr %x_size.addr, align 4
  %mul1212 = mul nsw i32 %sub1211, %836
  %837 = load i32, ptr %j, align 4
  %add1213 = add nsw i32 %mul1212, %837
  %add1214 = add nsw i32 %add1213, 1
  %idxprom1215 = sext i32 %add1214 to i64
  %arrayidx1216 = getelementptr inbounds i8, ptr %834, i64 %idxprom1215
  %838 = load i8, ptr %arrayidx1216, align 1
  %conv1217 = zext i8 %838 to i32
  %add1218 = add nsw i32 %add1210, %conv1217
  %839 = load ptr, ptr %in.addr, align 8
  %840 = load i32, ptr %i, align 4
  %sub1219 = sub nsw i32 %840, 2
  %841 = load i32, ptr %x_size.addr, align 4
  %mul1220 = mul nsw i32 %sub1219, %841
  %842 = load i32, ptr %j, align 4
  %add1221 = add nsw i32 %mul1220, %842
  %add1222 = add nsw i32 %add1221, 2
  %idxprom1223 = sext i32 %add1222 to i64
  %arrayidx1224 = getelementptr inbounds i8, ptr %839, i64 %idxprom1223
  %843 = load i8, ptr %arrayidx1224, align 1
  %conv1225 = zext i8 %843 to i32
  %add1226 = add nsw i32 %add1218, %conv1225
  %sub1227 = sub nsw i32 %add1188, %add1226
  store i32 %sub1227, ptr %y, align 4
  %844 = load i32, ptr %y, align 4
  %845 = load ptr, ptr %in.addr, align 8
  %846 = load i32, ptr %i, align 4
  %add1228 = add nsw i32 %846, 1
  %847 = load i32, ptr %x_size.addr, align 4
  %mul1229 = mul nsw i32 %add1228, %847
  %848 = load i32, ptr %j, align 4
  %add1230 = add nsw i32 %mul1229, %848
  %sub1231 = sub nsw i32 %add1230, 2
  %idxprom1232 = sext i32 %sub1231 to i64
  %arrayidx1233 = getelementptr inbounds i8, ptr %845, i64 %idxprom1232
  %849 = load i8, ptr %arrayidx1233, align 1
  %conv1234 = zext i8 %849 to i32
  %add1235 = add nsw i32 %844, %conv1234
  %850 = load ptr, ptr %in.addr, align 8
  %851 = load i32, ptr %i, align 4
  %add1236 = add nsw i32 %851, 1
  %852 = load i32, ptr %x_size.addr, align 4
  %mul1237 = mul nsw i32 %add1236, %852
  %853 = load i32, ptr %j, align 4
  %add1238 = add nsw i32 %mul1237, %853
  %sub1239 = sub nsw i32 %add1238, 1
  %idxprom1240 = sext i32 %sub1239 to i64
  %arrayidx1241 = getelementptr inbounds i8, ptr %850, i64 %idxprom1240
  %854 = load i8, ptr %arrayidx1241, align 1
  %conv1242 = zext i8 %854 to i32
  %add1243 = add nsw i32 %add1235, %conv1242
  %855 = load ptr, ptr %in.addr, align 8
  %856 = load i32, ptr %i, align 4
  %add1244 = add nsw i32 %856, 1
  %857 = load i32, ptr %x_size.addr, align 4
  %mul1245 = mul nsw i32 %add1244, %857
  %858 = load i32, ptr %j, align 4
  %add1246 = add nsw i32 %mul1245, %858
  %idxprom1247 = sext i32 %add1246 to i64
  %arrayidx1248 = getelementptr inbounds i8, ptr %855, i64 %idxprom1247
  %859 = load i8, ptr %arrayidx1248, align 1
  %conv1249 = zext i8 %859 to i32
  %add1250 = add nsw i32 %add1243, %conv1249
  %860 = load ptr, ptr %in.addr, align 8
  %861 = load i32, ptr %i, align 4
  %add1251 = add nsw i32 %861, 1
  %862 = load i32, ptr %x_size.addr, align 4
  %mul1252 = mul nsw i32 %add1251, %862
  %863 = load i32, ptr %j, align 4
  %add1253 = add nsw i32 %mul1252, %863
  %add1254 = add nsw i32 %add1253, 1
  %idxprom1255 = sext i32 %add1254 to i64
  %arrayidx1256 = getelementptr inbounds i8, ptr %860, i64 %idxprom1255
  %864 = load i8, ptr %arrayidx1256, align 1
  %conv1257 = zext i8 %864 to i32
  %add1258 = add nsw i32 %add1250, %conv1257
  %865 = load ptr, ptr %in.addr, align 8
  %866 = load i32, ptr %i, align 4
  %add1259 = add nsw i32 %866, 1
  %867 = load i32, ptr %x_size.addr, align 4
  %mul1260 = mul nsw i32 %add1259, %867
  %868 = load i32, ptr %j, align 4
  %add1261 = add nsw i32 %mul1260, %868
  %add1262 = add nsw i32 %add1261, 2
  %idxprom1263 = sext i32 %add1262 to i64
  %arrayidx1264 = getelementptr inbounds i8, ptr %865, i64 %idxprom1263
  %869 = load i8, ptr %arrayidx1264, align 1
  %conv1265 = zext i8 %869 to i32
  %add1266 = add nsw i32 %add1258, %conv1265
  %870 = load ptr, ptr %in.addr, align 8
  %871 = load i32, ptr %i, align 4
  %sub1267 = sub nsw i32 %871, 1
  %872 = load i32, ptr %x_size.addr, align 4
  %mul1268 = mul nsw i32 %sub1267, %872
  %873 = load i32, ptr %j, align 4
  %add1269 = add nsw i32 %mul1268, %873
  %sub1270 = sub nsw i32 %add1269, 2
  %idxprom1271 = sext i32 %sub1270 to i64
  %arrayidx1272 = getelementptr inbounds i8, ptr %870, i64 %idxprom1271
  %874 = load i8, ptr %arrayidx1272, align 1
  %conv1273 = zext i8 %874 to i32
  %875 = load ptr, ptr %in.addr, align 8
  %876 = load i32, ptr %i, align 4
  %sub1274 = sub nsw i32 %876, 1
  %877 = load i32, ptr %x_size.addr, align 4
  %mul1275 = mul nsw i32 %sub1274, %877
  %878 = load i32, ptr %j, align 4
  %add1276 = add nsw i32 %mul1275, %878
  %sub1277 = sub nsw i32 %add1276, 1
  %idxprom1278 = sext i32 %sub1277 to i64
  %arrayidx1279 = getelementptr inbounds i8, ptr %875, i64 %idxprom1278
  %879 = load i8, ptr %arrayidx1279, align 1
  %conv1280 = zext i8 %879 to i32
  %add1281 = add nsw i32 %conv1273, %conv1280
  %880 = load ptr, ptr %in.addr, align 8
  %881 = load i32, ptr %i, align 4
  %sub1282 = sub nsw i32 %881, 1
  %882 = load i32, ptr %x_size.addr, align 4
  %mul1283 = mul nsw i32 %sub1282, %882
  %883 = load i32, ptr %j, align 4
  %add1284 = add nsw i32 %mul1283, %883
  %idxprom1285 = sext i32 %add1284 to i64
  %arrayidx1286 = getelementptr inbounds i8, ptr %880, i64 %idxprom1285
  %884 = load i8, ptr %arrayidx1286, align 1
  %conv1287 = zext i8 %884 to i32
  %add1288 = add nsw i32 %add1281, %conv1287
  %885 = load ptr, ptr %in.addr, align 8
  %886 = load i32, ptr %i, align 4
  %sub1289 = sub nsw i32 %886, 1
  %887 = load i32, ptr %x_size.addr, align 4
  %mul1290 = mul nsw i32 %sub1289, %887
  %888 = load i32, ptr %j, align 4
  %add1291 = add nsw i32 %mul1290, %888
  %add1292 = add nsw i32 %add1291, 1
  %idxprom1293 = sext i32 %add1292 to i64
  %arrayidx1294 = getelementptr inbounds i8, ptr %885, i64 %idxprom1293
  %889 = load i8, ptr %arrayidx1294, align 1
  %conv1295 = zext i8 %889 to i32
  %add1296 = add nsw i32 %add1288, %conv1295
  %890 = load ptr, ptr %in.addr, align 8
  %891 = load i32, ptr %i, align 4
  %sub1297 = sub nsw i32 %891, 1
  %892 = load i32, ptr %x_size.addr, align 4
  %mul1298 = mul nsw i32 %sub1297, %892
  %893 = load i32, ptr %j, align 4
  %add1299 = add nsw i32 %mul1298, %893
  %add1300 = add nsw i32 %add1299, 2
  %idxprom1301 = sext i32 %add1300 to i64
  %arrayidx1302 = getelementptr inbounds i8, ptr %890, i64 %idxprom1301
  %894 = load i8, ptr %arrayidx1302, align 1
  %conv1303 = zext i8 %894 to i32
  %add1304 = add nsw i32 %add1296, %conv1303
  %sub1305 = sub nsw i32 %add1266, %add1304
  %895 = load i32, ptr %y, align 4
  %add1306 = add nsw i32 %895, %sub1305
  store i32 %add1306, ptr %y, align 4
  %896 = load i32, ptr %x, align 4
  %div1307 = sdiv i32 %896, 15
  %897 = load ptr, ptr %corner_list.addr, align 8
  %898 = load i32, ptr %n, align 4
  %idxprom1308 = sext i32 %898 to i64
  %arrayidx1309 = getelementptr inbounds %struct.anon, ptr %897, i64 %idxprom1308
  %dx = getelementptr inbounds %struct.anon, ptr %arrayidx1309, i32 0, i32 3
  store i32 %div1307, ptr %dx, align 4
  %899 = load i32, ptr %y, align 4
  %div1310 = sdiv i32 %899, 15
  %900 = load ptr, ptr %corner_list.addr, align 8
  %901 = load i32, ptr %n, align 4
  %idxprom1311 = sext i32 %901 to i64
  %arrayidx1312 = getelementptr inbounds %struct.anon, ptr %900, i64 %idxprom1311
  %dy = getelementptr inbounds %struct.anon, ptr %arrayidx1312, i32 0, i32 4
  store i32 %div1310, ptr %dy, align 4
  %902 = load i32, ptr %n, align 4
  %inc1313 = add nsw i32 %902, 1
  store i32 %inc1313, ptr %n, align 4
  %903 = load i32, ptr %n, align 4
  %cmp1314 = icmp eq i32 %903, 15000
  br i1 %cmp1314, label %if.then1316, label %if.end1318

if.then1316:                                      ; preds = %if.then795
  %904 = load ptr, ptr @__stderrp, align 8
  %call1317 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %904, ptr noundef @.str.29)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end1318:                                       ; preds = %if.then795
  br label %if.end1319

if.end1319:                                       ; preds = %if.end1318, %land.lhs.true786, %land.lhs.true777, %land.lhs.true768, %land.lhs.true760, %land.lhs.true751, %land.lhs.true742, %land.lhs.true733, %land.lhs.true724, %land.lhs.true715, %land.lhs.true706, %land.lhs.true698, %land.lhs.true689, %land.lhs.true680, %land.lhs.true671, %land.lhs.true662, %land.lhs.true653, %land.lhs.true644, %land.lhs.true636, %land.lhs.true627, %land.lhs.true618, %land.lhs.true609, %land.lhs.true601, %land.lhs.true593, %land.lhs.true585, %land.lhs.true577, %land.lhs.true569, %land.lhs.true561, %land.lhs.true552, %land.lhs.true543, %land.lhs.true534, %land.lhs.true526, %land.lhs.true517, %land.lhs.true508, %land.lhs.true499, %land.lhs.true490, %land.lhs.true481, %land.lhs.true472, %land.lhs.true464, %land.lhs.true455, %land.lhs.true446, %land.lhs.true437, %land.lhs.true428, %land.lhs.true419, %land.lhs.true410, %land.lhs.true402, %land.lhs.true393, %land.lhs.true, %if.then376
  br label %if.end1320

if.end1320:                                       ; preds = %if.end1319, %for.body369
  br label %for.inc1321

for.inc1321:                                      ; preds = %if.end1320
  %905 = load i32, ptr %j, align 4
  %inc1322 = add nsw i32 %905, 1
  store i32 %inc1322, ptr %j, align 4
  br label %for.cond365, !llvm.loop !49

for.end1323:                                      ; preds = %for.cond365
  br label %for.inc1324

for.inc1324:                                      ; preds = %for.end1323
  %906 = load i32, ptr %i, align 4
  %inc1325 = add nsw i32 %906, 1
  store i32 %inc1325, ptr %i, align 4
  br label %for.cond360, !llvm.loop !50

for.end1326:                                      ; preds = %for.cond360
  %907 = load ptr, ptr %corner_list.addr, align 8
  %908 = load i32, ptr %n, align 4
  %idxprom1327 = sext i32 %908 to i64
  %arrayidx1328 = getelementptr inbounds %struct.anon, ptr %907, i64 %idxprom1327
  %info1329 = getelementptr inbounds %struct.anon, ptr %arrayidx1328, i32 0, i32 2
  store i32 7, ptr %info1329, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
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
  %ct_return = alloca i32, align 4
  store i32 0, ptr %retval, align 4
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
  store i32 0, ptr %ct_return, align 4
  %call = call ptr @getenv(ptr noundef @.str.30)
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @getenv(ptr noundef @.str.30)
  %call2 = call i64 @atol(ptr noundef %call1)
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
  call void @get_image(ptr noundef %2, ptr noundef %in, ptr noundef %x_size, ptr noundef %y_size)
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
  %8 = load ptr, ptr %tcp, align 8
  %9 = load i8, ptr %8, align 1
  %conv = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv, 45
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %10 = load ptr, ptr %tcp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %tcp, align 8
  %11 = load i8, ptr %incdec.ptr, align 1
  %conv11 = sext i8 %11 to i32
  switch i32 %conv11, label %sw.epilog [
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
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then10
  store i32 1, ptr %mode, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then10
  store i32 2, ptr %mode, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then10
  store i32 1, ptr %principle, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then10
  store i32 0, ptr %thin_post_proc, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then10
  store i32 1, ptr %drawing_mode, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then10
  store i32 1, ptr %three_by_three, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then10
  store i32 1, ptr %susan_quick, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then10
  %12 = load i32, ptr %argindex, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %argindex, align 4
  %13 = load i32, ptr %argc.addr, align 4
  %cmp20 = icmp sge i32 %inc, %13
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %sw.bb19
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.31)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end24:                                         ; preds = %sw.bb19
  %14 = load ptr, ptr %argv.addr, align 8
  %15 = load i32, ptr %argindex, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %14, i64 %idxprom25
  %16 = load ptr, ptr %arrayidx26, align 8
  %call27 = call double @atof(ptr noundef %16)
  %conv28 = fptrunc double %call27 to float
  store float %conv28, ptr %dt, align 4
  %17 = load float, ptr %dt, align 4
  %cmp29 = fcmp olt float %17, 0.000000e+00
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end24
  store i32 1, ptr %three_by_three, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end24
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then10
  %18 = load i32, ptr %argindex, align 4
  %inc34 = add nsw i32 %18, 1
  store i32 %inc34, ptr %argindex, align 4
  %19 = load i32, ptr %argc.addr, align 4
  %cmp35 = icmp sge i32 %inc34, %19
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %sw.bb33
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  call void @exit(i32 noundef 0) #7
  unreachable

if.end39:                                         ; preds = %sw.bb33
  %20 = load ptr, ptr %argv.addr, align 8
  %21 = load i32, ptr %argindex, align 4
  %idxprom40 = sext i32 %21 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %20, i64 %idxprom40
  %22 = load ptr, ptr %arrayidx41, align 8
  %call42 = call i32 @atoi(ptr noundef %22)
  store i32 %call42, ptr %bt, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %if.end39, %if.end32, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb
  br label %if.end43

if.else:                                          ; preds = %while.body
  call void @usage()
  br label %if.end43

if.end43:                                         ; preds = %if.else, %sw.epilog
  %23 = load i32, ptr %argindex, align 4
  %inc44 = add nsw i32 %23, 1
  store i32 %inc44, ptr %argindex, align 4
  br label %while.cond, !llvm.loop !51

while.end:                                        ; preds = %while.cond
  %24 = load i32, ptr %principle, align 4
  %cmp45 = icmp eq i32 %24, 1
  br i1 %cmp45, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %while.end
  %25 = load i32, ptr %mode, align 4
  %cmp47 = icmp eq i32 %25, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %land.lhs.true
  store i32 1, ptr %mode, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true, %while.end
  store i64 0, ptr %ct_repeat, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end50
  %26 = load i64, ptr %ct_repeat, align 8
  %27 = load i64, ptr %ct_repeat_max, align 8
  %cmp51 = icmp slt i64 %26, %27
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, ptr %mode, align 4
  switch i32 %28, label %sw.epilog95 [
    i32 0, label %sw.bb53
    i32 1, label %sw.bb54
    i32 2, label %sw.bb79
  ]

sw.bb53:                                          ; preds = %for.body
  %29 = load i32, ptr %bt, align 4
  call void @setup_brightness_lut(ptr noundef %bp, i32 noundef %29, i32 noundef 2)
  %30 = load i32, ptr %three_by_three, align 4
  %31 = load ptr, ptr %in, align 8
  %32 = load float, ptr %dt, align 4
  %33 = load i32, ptr %x_size, align 4
  %34 = load i32, ptr %y_size, align 4
  %35 = load ptr, ptr %bp, align 8
  call void @susan_smoothing(i32 noundef %30, ptr noundef %31, float noundef %32, i32 noundef %33, i32 noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %bp, align 8
  call void @free_brightness_lut(ptr noundef %36)
  br label %sw.epilog95

sw.bb54:                                          ; preds = %for.body
  %37 = load i32, ptr %x_size, align 4
  %38 = load i32, ptr %y_size, align 4
  %mul = mul nsw i32 %37, %38
  %conv55 = sext i32 %mul to i64
  %mul56 = mul i64 %conv55, 4
  %call57 = call ptr @malloc(i64 noundef %mul56) #8
  store ptr %call57, ptr %r, align 8
  %39 = load i32, ptr %bt, align 4
  call void @setup_brightness_lut(ptr noundef %bp, i32 noundef %39, i32 noundef 6)
  %40 = load i32, ptr %principle, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then58, label %if.else64

if.then58:                                        ; preds = %sw.bb54
  %41 = load i32, ptr %three_by_three, align 4
  %tobool59 = icmp ne i32 %41, 0
  br i1 %tobool59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.then58
  %42 = load ptr, ptr %in, align 8
  %43 = load ptr, ptr %r, align 8
  %44 = load ptr, ptr %bp, align 8
  %45 = load i32, ptr %max_no_edges, align 4
  %46 = load i32, ptr %x_size, align 4
  %47 = load i32, ptr %y_size, align 4
  call void @susan_principle_small(ptr noundef %42, ptr noundef %43, ptr noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47)
  br label %if.end62

if.else61:                                        ; preds = %if.then58
  %48 = load ptr, ptr %in, align 8
  %49 = load ptr, ptr %r, align 8
  %50 = load ptr, ptr %bp, align 8
  %51 = load i32, ptr %max_no_edges, align 4
  %52 = load i32, ptr %x_size, align 4
  %53 = load i32, ptr %y_size, align 4
  call void @susan_principle(ptr noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53)
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then60
  %54 = load ptr, ptr %r, align 8
  %55 = load ptr, ptr %in, align 8
  %56 = load i32, ptr %x_size, align 4
  %57 = load i32, ptr %y_size, align 4
  %mul63 = mul nsw i32 %56, %57
  call void @int_to_uchar(ptr noundef %54, ptr noundef %55, i32 noundef %mul63)
  br label %if.end78

if.else64:                                        ; preds = %sw.bb54
  %58 = load i32, ptr %x_size, align 4
  %59 = load i32, ptr %y_size, align 4
  %mul65 = mul nsw i32 %58, %59
  %conv66 = sext i32 %mul65 to i64
  %call67 = call ptr @malloc(i64 noundef %conv66) #8
  store ptr %call67, ptr %mid, align 8
  %60 = load ptr, ptr %mid, align 8
  %61 = load i32, ptr %x_size, align 4
  %62 = load i32, ptr %y_size, align 4
  %mul68 = mul nsw i32 %61, %62
  %conv69 = sext i32 %mul68 to i64
  %63 = load ptr, ptr %mid, align 8
  %64 = call i64 @llvm.objectsize.i64.p0(ptr %63, i1 false, i1 true, i1 false)
  %call70 = call ptr @__memset_chk(ptr noundef %60, i32 noundef 100, i64 noundef %conv69, i64 noundef %64) #9
  %65 = load i32, ptr %three_by_three, align 4
  %tobool71 = icmp ne i32 %65, 0
  br i1 %tobool71, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.else64
  %66 = load ptr, ptr %in, align 8
  %67 = load ptr, ptr %r, align 8
  %68 = load ptr, ptr %mid, align 8
  %69 = load ptr, ptr %bp, align 8
  %70 = load i32, ptr %max_no_edges, align 4
  %71 = load i32, ptr %x_size, align 4
  %72 = load i32, ptr %y_size, align 4
  call void @susan_edges_small(ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, i32 noundef %70, i32 noundef %71, i32 noundef %72)
  br label %if.end74

if.else73:                                        ; preds = %if.else64
  %73 = load ptr, ptr %in, align 8
  %74 = load ptr, ptr %r, align 8
  %75 = load ptr, ptr %mid, align 8
  %76 = load ptr, ptr %bp, align 8
  %77 = load i32, ptr %max_no_edges, align 4
  %78 = load i32, ptr %x_size, align 4
  %79 = load i32, ptr %y_size, align 4
  call void @susan_edges(ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %76, i32 noundef %77, i32 noundef %78, i32 noundef %79)
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.then72
  %80 = load i32, ptr %thin_post_proc, align 4
  %tobool75 = icmp ne i32 %80, 0
  br i1 %tobool75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end74
  %81 = load ptr, ptr %r, align 8
  %82 = load ptr, ptr %mid, align 8
  %83 = load i32, ptr %x_size, align 4
  %84 = load i32, ptr %y_size, align 4
  call void @susan_thin(ptr noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef %84)
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74
  %85 = load ptr, ptr %in, align 8
  %86 = load ptr, ptr %mid, align 8
  %87 = load i32, ptr %x_size, align 4
  %88 = load i32, ptr %y_size, align 4
  %89 = load i32, ptr %drawing_mode, align 4
  call void @edge_draw(ptr noundef %85, ptr noundef %86, i32 noundef %87, i32 noundef %88, i32 noundef %89)
  %90 = load ptr, ptr %mid, align 8
  call void @free(ptr noundef %90)
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end62
  %91 = load ptr, ptr %bp, align 8
  call void @free_brightness_lut(ptr noundef %91)
  %92 = load ptr, ptr %r, align 8
  call void @free(ptr noundef %92)
  br label %sw.epilog95

sw.bb79:                                          ; preds = %for.body
  %93 = load i32, ptr %x_size, align 4
  %94 = load i32, ptr %y_size, align 4
  %mul80 = mul nsw i32 %93, %94
  %conv81 = sext i32 %mul80 to i64
  %mul82 = mul i64 %conv81, 4
  %call83 = call ptr @malloc(i64 noundef %mul82) #8
  store ptr %call83, ptr %r, align 8
  %95 = load i32, ptr %bt, align 4
  call void @setup_brightness_lut(ptr noundef %bp, i32 noundef %95, i32 noundef 6)
  %96 = load i32, ptr %principle, align 4
  %tobool84 = icmp ne i32 %96, 0
  br i1 %tobool84, label %if.then85, label %if.else87

if.then85:                                        ; preds = %sw.bb79
  %97 = load ptr, ptr %in, align 8
  %98 = load ptr, ptr %r, align 8
  %99 = load ptr, ptr %bp, align 8
  %100 = load i32, ptr %max_no_corners, align 4
  %101 = load i32, ptr %x_size, align 4
  %102 = load i32, ptr %y_size, align 4
  call void @susan_principle(ptr noundef %97, ptr noundef %98, ptr noundef %99, i32 noundef %100, i32 noundef %101, i32 noundef %102)
  %103 = load ptr, ptr %r, align 8
  %104 = load ptr, ptr %in, align 8
  %105 = load i32, ptr %x_size, align 4
  %106 = load i32, ptr %y_size, align 4
  %mul86 = mul nsw i32 %105, %106
  call void @int_to_uchar(ptr noundef %103, ptr noundef %104, i32 noundef %mul86)
  br label %if.end94

if.else87:                                        ; preds = %sw.bb79
  %107 = load i32, ptr %susan_quick, align 4
  %tobool88 = icmp ne i32 %107, 0
  br i1 %tobool88, label %if.then89, label %if.else90

if.then89:                                        ; preds = %if.else87
  %108 = load ptr, ptr %in, align 8
  %109 = load ptr, ptr %r, align 8
  %110 = load ptr, ptr %bp, align 8
  %111 = load i32, ptr %max_no_corners, align 4
  %arraydecay = getelementptr inbounds [15000 x %struct.anon], ptr %corner_list, i64 0, i64 0
  %112 = load i32, ptr %x_size, align 4
  %113 = load i32, ptr %y_size, align 4
  call void @susan_corners_quick(ptr noundef %108, ptr noundef %109, ptr noundef %110, i32 noundef %111, ptr noundef %arraydecay, i32 noundef %112, i32 noundef %113)
  br label %if.end92

if.else90:                                        ; preds = %if.else87
  %114 = load ptr, ptr %in, align 8
  %115 = load ptr, ptr %r, align 8
  %116 = load ptr, ptr %bp, align 8
  %117 = load i32, ptr %max_no_corners, align 4
  %arraydecay91 = getelementptr inbounds [15000 x %struct.anon], ptr %corner_list, i64 0, i64 0
  %118 = load i32, ptr %x_size, align 4
  %119 = load i32, ptr %y_size, align 4
  call void @susan_corners(ptr noundef %114, ptr noundef %115, ptr noundef %116, i32 noundef %117, ptr noundef %arraydecay91, i32 noundef %118, i32 noundef %119)
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.then89
  %120 = load ptr, ptr %in, align 8
  %arraydecay93 = getelementptr inbounds [15000 x %struct.anon], ptr %corner_list, i64 0, i64 0
  %121 = load i32, ptr %x_size, align 4
  %122 = load i32, ptr %drawing_mode, align 4
  call void @corner_draw(ptr noundef %120, ptr noundef %arraydecay93, i32 noundef %121, i32 noundef %122)
  br label %if.end94

if.end94:                                         ; preds = %if.end92, %if.then85
  %123 = load ptr, ptr %bp, align 8
  call void @free_brightness_lut(ptr noundef %123)
  %124 = load ptr, ptr %r, align 8
  call void @free(ptr noundef %124)
  br label %sw.epilog95

sw.epilog95:                                      ; preds = %for.body, %if.end94, %if.end78, %sw.bb53
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog95
  %125 = load i64, ptr %ct_repeat, align 8
  %inc96 = add nsw i64 %125, 1
  store i64 %inc96, ptr %ct_repeat, align 8
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %126 = load ptr, ptr %argv.addr, align 8
  %arrayidx97 = getelementptr inbounds ptr, ptr %126, i64 2
  %127 = load ptr, ptr %arrayidx97, align 8
  %128 = load ptr, ptr %in, align 8
  %129 = load i32, ptr %x_size, align 4
  %130 = load i32, ptr %y_size, align 4
  call void @put_image(ptr noundef %127, ptr noundef %128, i32 noundef %129, i32 noundef %130)
  %131 = load ptr, ptr %in, align 8
  call void @free(ptr noundef %131)
  ret i32 0
}

declare ptr @getenv(ptr noundef) #1

declare i64 @atol(ptr noundef) #1

declare double @atof(ptr noundef) #1

declare i32 @atoi(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { noreturn }
attributes #8 = { allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }

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
