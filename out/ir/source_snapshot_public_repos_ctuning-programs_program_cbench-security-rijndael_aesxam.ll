; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-security-rijndael/aesxam.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-security-rijndael/aesxam.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.aes = type { i64, i64, [64 x i64], [64 x i64], i8 }

@fillrand.a = internal global [2 x i64] zeroinitializer, align 8
@fillrand.mt = internal global i64 1, align 8
@fillrand.count = internal global i64 4, align 8
@fillrand.r = internal global [4 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [34 x i8] c"Error writing to output file: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error reading from input file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AThe input file is corrupt\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"usage: rijndael in_filename out_filename [d/e] key_in_hex\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"key must be in hexadecimal notation\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"The key value is too long\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"The key length must be 32, 48 or 64 hexadecimal digits\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"The input file: %s could not be opened\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"The output file: %s could not be opened\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @fillrand(ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i64, ptr @fillrand.mt, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr @fillrand.mt, align 8
  store i64 60147, ptr @fillrand.a, align 8
  store i64 13822, ptr getelementptr inbounds ([2 x i64], ptr @fillrand.a, i64 0, i64 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr @fillrand.count, align 8
  %cmp1 = icmp eq i64 %3, 4
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %for.body
  %4 = load i64, ptr @fillrand.a, align 8
  %and = and i64 %4, 65535
  %mul = mul i64 36969, %and
  %5 = load i64, ptr @fillrand.a, align 8
  %shr = lshr i64 %5, 16
  %add = add i64 %mul, %shr
  store i64 %add, ptr @fillrand.a, align 8
  %shl = shl i64 %add, 16
  %6 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @fillrand.a, i64 0, i64 1), align 8
  %and3 = and i64 %6, 65535
  %mul4 = mul i64 18000, %and3
  %7 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @fillrand.a, i64 0, i64 1), align 8
  %shr5 = lshr i64 %7, 16
  %add6 = add i64 %mul4, %shr5
  store i64 %add6, ptr getelementptr inbounds ([2 x i64], ptr @fillrand.a, i64 0, i64 1), align 8
  %add7 = add i64 %shl, %add6
  store i64 %add7, ptr @fillrand.r, align 1
  store i64 0, ptr @fillrand.count, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %for.body
  %8 = load i64, ptr @fillrand.count, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr @fillrand.count, align 8
  %arrayidx = getelementptr inbounds [4 x i8], ptr @fillrand.r, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx, align 1
  %10 = load ptr, ptr %buf.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom
  store i8 %9, ptr %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %12 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @encfile(ptr noundef %fin, ptr noundef %fout, ptr noundef %ctx, ptr noundef %fn) #0 {
entry:
  %retval = alloca i32, align 4
  %fin.addr = alloca ptr, align 8
  %fout.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %inbuf = alloca [16 x i8], align 1
  %outbuf = alloca [16 x i8], align 1
  %flen = alloca i64, align 8
  %i = alloca i64, align 8
  %l = alloca i64, align 8
  store ptr %fin, ptr %fin.addr, align 8
  store ptr %fout, ptr %fout.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %fn, ptr %fn.addr, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %l, align 8
  %arraydecay = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  call void @fillrand(ptr noundef %arraydecay, i32 noundef 16)
  %0 = load ptr, ptr %fin.addr, align 8
  %call = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %1 = load ptr, ptr %fin.addr, align 8
  %call1 = call i32 @fgetpos(ptr noundef %1, ptr noundef %flen)
  %2 = load ptr, ptr %fin.addr, align 8
  %call2 = call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 0)
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %3 = load ptr, ptr %fout.addr, align 8
  %call4 = call i64 @"\01_fwrite"(ptr noundef %arraydecay3, i64 noundef 1, i64 noundef 16, ptr noundef %3)
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %inbuf, i64 0, i64 0
  call void @fillrand(ptr noundef %arraydecay5, i32 noundef 1)
  store i64 15, ptr %l, align 8
  %4 = load i64, ptr %flen, align 8
  %conv = trunc i64 %4 to i8
  %conv6 = sext i8 %conv to i32
  %and = and i32 %conv6, 15
  %arrayidx = getelementptr inbounds [16 x i8], ptr %inbuf, i64 0, i64 0
  %5 = load i8, ptr %arrayidx, align 1
  %conv7 = sext i8 %5 to i32
  %and8 = and i32 %conv7, -16
  %or = or i32 %and, %and8
  %conv9 = trunc i32 %or to i8
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %inbuf, i64 0, i64 0
  store i8 %conv9, ptr %arrayidx10, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %entry
  %6 = load ptr, ptr %fin.addr, align 8
  %call11 = call i32 @feof(ptr noundef %6)
  %tobool = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay12 = getelementptr inbounds [16 x i8], ptr %inbuf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay12, i64 16
  %7 = load i64, ptr %l, align 8
  %idx.neg = sub i64 0, %7
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %8 = load i64, ptr %l, align 8
  %9 = load ptr, ptr %fin.addr, align 8
  %call14 = call i64 @fread(ptr noundef %add.ptr13, i64 noundef 1, i64 noundef %8, ptr noundef %9)
  store i64 %call14, ptr %i, align 8
  %10 = load i64, ptr %i, align 8
  %11 = load i64, ptr %l, align 8
  %cmp = icmp ult i64 %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i64, ptr %i, align 8
  %cmp16 = icmp ult i64 %12, 16
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %i, align 8
  %arrayidx18 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 %13
  %14 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %14 to i32
  %15 = load i64, ptr %i, align 8
  %arrayidx20 = getelementptr inbounds [16 x i8], ptr %inbuf, i64 0, i64 %15
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %16 to i32
  %xor = xor i32 %conv21, %conv19
  %conv22 = trunc i32 %xor to i8
  store i8 %conv22, ptr %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i64, ptr %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arraydecay23 = getelementptr inbounds [16 x i8], ptr %inbuf, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %18 = load ptr, ptr %ctx.addr, align 8
  %call25 = call signext i16 @encrypt(ptr noundef %arraydecay23, ptr noundef %arraydecay24, ptr noundef %18)
  %arraydecay26 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %19 = load ptr, ptr %fout.addr, align 8
  %call27 = call i64 @"\01_fwrite"(ptr noundef %arraydecay26, i64 noundef 1, i64 noundef 16, ptr noundef %19)
  %cmp28 = icmp ne i64 %call27, 16
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %for.end
  %20 = load ptr, ptr %fn.addr, align 8
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %20)
  store i32 -7, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %for.end
  store i64 16, ptr %l, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.then, %while.cond
  %21 = load i64, ptr %l, align 8
  %cmp33 = icmp eq i64 %21, 15
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %while.end
  %22 = load i64, ptr %i, align 8
  %inc36 = add i64 %22, 1
  store i64 %inc36, ptr %i, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %while.end
  %23 = load i64, ptr %i, align 8
  %tobool38 = icmp ne i64 %23, 0
  br i1 %tobool38, label %if.then39, label %if.end70

if.then39:                                        ; preds = %if.end37
  br label %while.cond40

while.cond40:                                     ; preds = %while.body43, %if.then39
  %24 = load i64, ptr %i, align 8
  %cmp41 = icmp ult i64 %24, 16
  br i1 %cmp41, label %while.body43, label %while.end46

while.body43:                                     ; preds = %while.cond40
  %25 = load i64, ptr %i, align 8
  %inc44 = add i64 %25, 1
  store i64 %inc44, ptr %i, align 8
  %arrayidx45 = getelementptr inbounds [16 x i8], ptr %inbuf, i64 0, i64 %25
  store i8 0, ptr %arrayidx45, align 1
  br label %while.cond40, !llvm.loop !10

while.end46:                                      ; preds = %while.cond40
  store i64 0, ptr %i, align 8
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc57, %while.end46
  %26 = load i64, ptr %i, align 8
  %cmp48 = icmp ult i64 %26, 16
  br i1 %cmp48, label %for.body50, label %for.end59

for.body50:                                       ; preds = %for.cond47
  %27 = load i64, ptr %i, align 8
  %arrayidx51 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 %27
  %28 = load i8, ptr %arrayidx51, align 1
  %conv52 = sext i8 %28 to i32
  %29 = load i64, ptr %i, align 8
  %arrayidx53 = getelementptr inbounds [16 x i8], ptr %inbuf, i64 0, i64 %29
  %30 = load i8, ptr %arrayidx53, align 1
  %conv54 = sext i8 %30 to i32
  %xor55 = xor i32 %conv54, %conv52
  %conv56 = trunc i32 %xor55 to i8
  store i8 %conv56, ptr %arrayidx53, align 1
  br label %for.inc57

for.inc57:                                        ; preds = %for.body50
  %31 = load i64, ptr %i, align 8
  %inc58 = add i64 %31, 1
  store i64 %inc58, ptr %i, align 8
  br label %for.cond47, !llvm.loop !11

for.end59:                                        ; preds = %for.cond47
  %arraydecay60 = getelementptr inbounds [16 x i8], ptr %inbuf, i64 0, i64 0
  %arraydecay61 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %32 = load ptr, ptr %ctx.addr, align 8
  %call62 = call signext i16 @encrypt(ptr noundef %arraydecay60, ptr noundef %arraydecay61, ptr noundef %32)
  %arraydecay63 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %33 = load ptr, ptr %fout.addr, align 8
  %call64 = call i64 @"\01_fwrite"(ptr noundef %arraydecay63, i64 noundef 1, i64 noundef 16, ptr noundef %33)
  %cmp65 = icmp ne i64 %call64, 16
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.end59
  %34 = load ptr, ptr %fn.addr, align 8
  %call68 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %34)
  store i32 -8, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %for.end59
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end37
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end70, %if.then67, %if.then30
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @fgetpos(ptr noundef, ptr noundef) #1

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @feof(ptr noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare signext i16 @encrypt(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @decfile(ptr noundef %fin, ptr noundef %fout, ptr noundef %ctx, ptr noundef %ifn, ptr noundef %ofn) #0 {
entry:
  %retval = alloca i32, align 4
  %fin.addr = alloca ptr, align 8
  %fout.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ifn.addr = alloca ptr, align 8
  %ofn.addr = alloca ptr, align 8
  %inbuf1 = alloca [16 x i8], align 1
  %inbuf2 = alloca [16 x i8], align 1
  %outbuf = alloca [16 x i8], align 1
  %bp1 = alloca ptr, align 8
  %bp2 = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %flen = alloca i32, align 4
  store ptr %fin, ptr %fin.addr, align 8
  store ptr %fout, ptr %fout.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %ifn, ptr %ifn.addr, align 8
  store ptr %ofn, ptr %ofn.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], ptr %inbuf1, i64 0, i64 0
  %0 = load ptr, ptr %fin.addr, align 8
  %call = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %cmp = icmp ne i64 %call, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ifn.addr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %1)
  store i32 9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %inbuf2, i64 0, i64 0
  %2 = load ptr, ptr %fin.addr, align 8
  %call3 = call i64 @fread(ptr noundef %arraydecay2, i64 noundef 1, i64 noundef 16, ptr noundef %2)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %cmp4 = icmp ne i32 %4, 16
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %inbuf2, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %5 = load ptr, ptr %ctx.addr, align 8
  %call11 = call signext i16 @decrypt(ptr noundef %arraydecay9, ptr noundef %arraydecay10, ptr noundef %5)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %6 = load i32, ptr %i, align 4
  %cmp12 = icmp slt i32 %6, 16
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %inbuf1, i64 0, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv14 = sext i8 %8 to i32
  %9 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 %idxprom15
  %10 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  %xor = xor i32 %conv17, %conv14
  %conv18 = trunc i32 %xor to i8
  store i8 %conv18, ptr %arrayidx16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %arrayidx19 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %12 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %12 to i32
  %and = and i32 %conv20, 15
  store i32 %and, ptr %flen, align 4
  store i32 15, ptr %l, align 4
  %arraydecay21 = getelementptr inbounds [16 x i8], ptr %inbuf1, i64 0, i64 0
  store ptr %arraydecay21, ptr %bp1, align 8
  %arraydecay22 = getelementptr inbounds [16 x i8], ptr %inbuf2, i64 0, i64 0
  store ptr %arraydecay22, ptr %bp2, align 8
  br label %while.body

while.body:                                       ; preds = %for.end, %for.end55
  %13 = load ptr, ptr %bp1, align 8
  %14 = load ptr, ptr %fin.addr, align 8
  %call23 = call i64 @fread(ptr noundef %13, i64 noundef 1, i64 noundef 16, ptr noundef %14)
  %conv24 = trunc i64 %call23 to i32
  store i32 %conv24, ptr %i, align 4
  %15 = load i32, ptr %i, align 4
  %cmp25 = icmp ne i32 %15, 16
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %while.body
  br label %while.end

if.end28:                                         ; preds = %while.body
  %arraydecay29 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay29, i64 16
  %16 = load i32, ptr %l, align 4
  %idx.ext = sext i32 %16 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %17 = load i32, ptr %l, align 4
  %conv31 = sext i32 %17 to i64
  %18 = load ptr, ptr %fout.addr, align 8
  %call32 = call i64 @"\01_fwrite"(ptr noundef %add.ptr30, i64 noundef 1, i64 noundef %conv31, ptr noundef %18)
  %19 = load i32, ptr %l, align 4
  %conv33 = sext i32 %19 to i64
  %cmp34 = icmp ne i64 %call32, %conv33
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end28
  %20 = load ptr, ptr %ofn.addr, align 8
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %20)
  store i32 -11, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end28
  %21 = load ptr, ptr %bp1, align 8
  %arraydecay39 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %22 = load ptr, ptr %ctx.addr, align 8
  %call40 = call signext i16 @decrypt(ptr noundef %21, ptr noundef %arraydecay39, ptr noundef %22)
  store i32 0, ptr %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc53, %if.end38
  %23 = load i32, ptr %i, align 4
  %cmp42 = icmp slt i32 %23, 16
  br i1 %cmp42, label %for.body44, label %for.end55

for.body44:                                       ; preds = %for.cond41
  %24 = load ptr, ptr %bp2, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %24, i64 %idxprom45
  %26 = load i8, ptr %arrayidx46, align 1
  %conv47 = sext i8 %26 to i32
  %27 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 %idxprom48
  %28 = load i8, ptr %arrayidx49, align 1
  %conv50 = sext i8 %28 to i32
  %xor51 = xor i32 %conv50, %conv47
  %conv52 = trunc i32 %xor51 to i8
  store i8 %conv52, ptr %arrayidx49, align 1
  br label %for.inc53

for.inc53:                                        ; preds = %for.body44
  %29 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %29, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond41, !llvm.loop !13

for.end55:                                        ; preds = %for.cond41
  %30 = load i32, ptr %i, align 4
  store i32 %30, ptr %l, align 4
  %31 = load ptr, ptr %bp1, align 8
  store ptr %31, ptr %tp, align 8
  %32 = load ptr, ptr %bp2, align 8
  store ptr %32, ptr %bp1, align 8
  %33 = load ptr, ptr %tp, align 8
  store ptr %33, ptr %bp2, align 8
  br label %while.body

while.end:                                        ; preds = %if.then27
  %34 = load i32, ptr %l, align 4
  %cmp56 = icmp eq i32 %34, 15
  %35 = zext i1 %cmp56 to i64
  %cond = select i1 %cmp56, i32 1, i32 0
  store i32 %cond, ptr %l, align 4
  %36 = load i32, ptr %l, align 4
  %sub = sub nsw i32 1, %36
  %37 = load i32, ptr %flen, align 4
  %add = add nsw i32 %37, %sub
  store i32 %add, ptr %flen, align 4
  %38 = load i32, ptr %flen, align 4
  %tobool58 = icmp ne i32 %38, 0
  br i1 %tobool58, label %if.then59, label %if.end71

if.then59:                                        ; preds = %while.end
  %arraydecay60 = getelementptr inbounds [16 x i8], ptr %outbuf, i64 0, i64 0
  %39 = load i32, ptr %l, align 4
  %idx.ext61 = sext i32 %39 to i64
  %add.ptr62 = getelementptr inbounds i8, ptr %arraydecay60, i64 %idx.ext61
  %40 = load i32, ptr %flen, align 4
  %conv63 = sext i32 %40 to i64
  %41 = load ptr, ptr %fout.addr, align 8
  %call64 = call i64 @"\01_fwrite"(ptr noundef %add.ptr62, i64 noundef 1, i64 noundef %conv63, ptr noundef %41)
  %42 = load i32, ptr %flen, align 4
  %conv65 = sext i32 %42 to i64
  %cmp66 = icmp ne i64 %call64, %conv65
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.then59
  %43 = load ptr, ptr %ofn.addr, align 8
  %call69 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %43)
  store i32 -12, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.then59
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end71, %if.then68, %if.then36, %if.then6, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

declare signext i16 @decrypt(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main1(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %fin = alloca ptr, align 8
  %fout = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %ch = alloca i8, align 1
  %key = alloca [32 x i8], align 1
  %i = alloca i32, align 4
  %by = alloca i32, align 4
  %key_len = alloca i32, align 4
  %err = alloca i32, align 4
  %ctx = alloca [1 x %struct.aes], align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %fin, align 8
  store ptr null, ptr %fout, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %by, align 4
  store i32 0, ptr %key_len, align 4
  store i32 0, ptr %err, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ne i32 %0, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 3
  %2 = load ptr, ptr %arrayidx, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %call = call i32 @toupper(i32 noundef %conv) #3
  %cmp1 = icmp ne i32 %call, 68
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 3
  %5 = load ptr, ptr %arrayidx3, align 8
  %6 = load i8, ptr %5, align 1
  %conv4 = sext i8 %6 to i32
  %call5 = call i32 @toupper(i32 noundef %conv4) #3
  %cmp6 = icmp ne i32 %call5, 69
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 -1, ptr %err, align 4
  br label %exit

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %7, i64 4
  %8 = load ptr, ptr %arrayidx9, align 8
  store ptr %8, ptr %cp, align 8
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %if.end
  %9 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %9, 64
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load ptr, ptr %cp, align 8
  %11 = load i8, ptr %10, align 1
  %conv12 = sext i8 %11 to i32
  %tobool = icmp ne i32 %conv12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %14 = load i8, ptr %13, align 1
  %conv13 = sext i8 %14 to i32
  %call14 = call i32 @toupper(i32 noundef %conv13) #3
  %conv15 = trunc i32 %call14 to i8
  store i8 %conv15, ptr %ch, align 1
  %15 = load i8, ptr %ch, align 1
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp sge i32 %conv16, 48
  br i1 %cmp17, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %while.body
  %16 = load i8, ptr %ch, align 1
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp sle i32 %conv20, 57
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %land.lhs.true19
  %17 = load i32, ptr %by, align 4
  %shl = shl i32 %17, 4
  %18 = load i8, ptr %ch, align 1
  %conv24 = sext i8 %18 to i32
  %add = add nsw i32 %shl, %conv24
  %sub = sub nsw i32 %add, 48
  store i32 %sub, ptr %by, align 4
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true19, %while.body
  %19 = load i8, ptr %ch, align 1
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp sge i32 %conv25, 65
  br i1 %cmp26, label %land.lhs.true28, label %if.else38

land.lhs.true28:                                  ; preds = %if.else
  %20 = load i8, ptr %ch, align 1
  %conv29 = sext i8 %20 to i32
  %cmp30 = icmp sle i32 %conv29, 70
  br i1 %cmp30, label %if.then32, label %if.else38

if.then32:                                        ; preds = %land.lhs.true28
  %21 = load i32, ptr %by, align 4
  %shl33 = shl i32 %21, 4
  %22 = load i8, ptr %ch, align 1
  %conv34 = sext i8 %22 to i32
  %add35 = add nsw i32 %shl33, %conv34
  %sub36 = sub nsw i32 %add35, 65
  %add37 = add nsw i32 %sub36, 10
  store i32 %add37, ptr %by, align 4
  br label %if.end40

if.else38:                                        ; preds = %land.lhs.true28, %if.else
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 -2, ptr %err, align 4
  br label %exit

if.end40:                                         ; preds = %if.then32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then23
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  %and = and i32 %23, 1
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.end41
  %24 = load i32, ptr %by, align 4
  %and44 = and i32 %24, 255
  %conv45 = trunc i32 %and44 to i8
  %25 = load i32, ptr %i, align 4
  %div = sdiv i32 %25, 2
  %sub46 = sub nsw i32 %div, 1
  %idxprom = sext i32 %sub46 to i64
  %arrayidx47 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 %idxprom
  store i8 %conv45, ptr %arrayidx47, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end41
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %land.end
  %26 = load ptr, ptr %cp, align 8
  %27 = load i8, ptr %26, align 1
  %tobool49 = icmp ne i8 %27, 0
  br i1 %tobool49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %while.end
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i32 -3, ptr %err, align 4
  br label %exit

if.else52:                                        ; preds = %while.end
  %28 = load i32, ptr %i, align 4
  %cmp53 = icmp slt i32 %28, 32
  br i1 %cmp53, label %if.then58, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.else52
  %29 = load i32, ptr %i, align 4
  %and56 = and i32 %29, 15
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %lor.lhs.false55, %if.else52
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 -4, ptr %err, align 4
  br label %exit

if.end60:                                         ; preds = %lor.lhs.false55
  br label %if.end61

if.end61:                                         ; preds = %if.end60
  %30 = load i32, ptr %i, align 4
  %div62 = sdiv i32 %30, 2
  store i32 %div62, ptr %key_len, align 4
  %31 = load ptr, ptr %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds ptr, ptr %31, i64 1
  %32 = load ptr, ptr %arrayidx63, align 8
  %call64 = call ptr @"\01_fopen"(ptr noundef %32, ptr noundef @.str.7)
  store ptr %call64, ptr %fin, align 8
  %tobool65 = icmp ne ptr %call64, null
  br i1 %tobool65, label %if.end69, label %if.then66

if.then66:                                        ; preds = %if.end61
  %33 = load ptr, ptr %argv.addr, align 8
  %arrayidx67 = getelementptr inbounds ptr, ptr %33, i64 1
  %34 = load ptr, ptr %arrayidx67, align 8
  %call68 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %34)
  store i32 -5, ptr %err, align 4
  br label %exit

if.end69:                                         ; preds = %if.end61
  %35 = load ptr, ptr %argv.addr, align 8
  %arrayidx70 = getelementptr inbounds ptr, ptr %35, i64 2
  %36 = load ptr, ptr %arrayidx70, align 8
  %call71 = call ptr @"\01_fopen"(ptr noundef %36, ptr noundef @.str.9)
  store ptr %call71, ptr %fout, align 8
  %tobool72 = icmp ne ptr %call71, null
  br i1 %tobool72, label %if.end76, label %if.then73

if.then73:                                        ; preds = %if.end69
  %37 = load ptr, ptr %argv.addr, align 8
  %arrayidx74 = getelementptr inbounds ptr, ptr %37, i64 1
  %38 = load ptr, ptr %arrayidx74, align 8
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %38)
  store i32 -6, ptr %err, align 4
  br label %exit

if.end76:                                         ; preds = %if.end69
  %39 = load ptr, ptr %argv.addr, align 8
  %arrayidx77 = getelementptr inbounds ptr, ptr %39, i64 3
  %40 = load ptr, ptr %arrayidx77, align 8
  %41 = load i8, ptr %40, align 1
  %conv78 = sext i8 %41 to i32
  %call79 = call i32 @toupper(i32 noundef %conv78) #3
  %cmp80 = icmp eq i32 %call79, 69
  br i1 %cmp80, label %if.then82, label %if.else89

if.then82:                                        ; preds = %if.end76
  %arraydecay = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0
  %42 = load i32, ptr %key_len, align 4
  %conv83 = sext i32 %42 to i64
  %arraydecay84 = getelementptr inbounds [1 x %struct.aes], ptr %ctx, i64 0, i64 0
  %call85 = call signext i16 @set_key(ptr noundef %arraydecay, i64 noundef %conv83, i32 noundef 1, ptr noundef %arraydecay84)
  %43 = load ptr, ptr %fin, align 8
  %44 = load ptr, ptr %fout, align 8
  %arraydecay86 = getelementptr inbounds [1 x %struct.aes], ptr %ctx, i64 0, i64 0
  %45 = load ptr, ptr %argv.addr, align 8
  %arrayidx87 = getelementptr inbounds ptr, ptr %45, i64 1
  %46 = load ptr, ptr %arrayidx87, align 8
  %call88 = call i32 @encfile(ptr noundef %43, ptr noundef %44, ptr noundef %arraydecay86, ptr noundef %46)
  store i32 %call88, ptr %err, align 4
  br label %if.end98

if.else89:                                        ; preds = %if.end76
  %arraydecay90 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0
  %47 = load i32, ptr %key_len, align 4
  %conv91 = sext i32 %47 to i64
  %arraydecay92 = getelementptr inbounds [1 x %struct.aes], ptr %ctx, i64 0, i64 0
  %call93 = call signext i16 @set_key(ptr noundef %arraydecay90, i64 noundef %conv91, i32 noundef 2, ptr noundef %arraydecay92)
  %48 = load ptr, ptr %fin, align 8
  %49 = load ptr, ptr %fout, align 8
  %arraydecay94 = getelementptr inbounds [1 x %struct.aes], ptr %ctx, i64 0, i64 0
  %50 = load ptr, ptr %argv.addr, align 8
  %arrayidx95 = getelementptr inbounds ptr, ptr %50, i64 1
  %51 = load ptr, ptr %arrayidx95, align 8
  %52 = load ptr, ptr %argv.addr, align 8
  %arrayidx96 = getelementptr inbounds ptr, ptr %52, i64 2
  %53 = load ptr, ptr %arrayidx96, align 8
  %call97 = call i32 @decfile(ptr noundef %48, ptr noundef %49, ptr noundef %arraydecay94, ptr noundef %51, ptr noundef %53)
  store i32 %call97, ptr %err, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else89, %if.then82
  br label %exit

exit:                                             ; preds = %if.end98, %if.then73, %if.then66, %if.then58, %if.then50, %if.else38, %if.then
  %54 = load ptr, ptr %fout, align 8
  %tobool99 = icmp ne ptr %54, null
  br i1 %tobool99, label %if.then100, label %if.end102

if.then100:                                       ; preds = %exit
  %55 = load ptr, ptr %fout, align 8
  %call101 = call i32 @fclose(ptr noundef %55)
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %exit
  %56 = load ptr, ptr %fin, align 8
  %tobool103 = icmp ne ptr %56, null
  br i1 %tobool103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.end102
  %57 = load ptr, ptr %fin, align 8
  %call105 = call i32 @fclose(ptr noundef %57)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end102
  %58 = load i32, ptr %err, align 4
  ret i32 %58
}

; Function Attrs: nounwind readonly willreturn
declare i32 @toupper(i32 noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare signext i16 @set_key(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn }

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
