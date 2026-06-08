; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/portableio.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/portableio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ReadByte(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  %and = and i32 %call, 255
  store i32 %and, ptr %result, align 4
  %1 = load i32, ptr %result, align 4
  %and1 = and i32 %1, 128
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %result, align 4
  %sub = sub nsw i32 %2, 256
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %result, align 4
  ret i32 %3
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @Read16BitsLowHigh(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  %and = and i32 255, %call
  store i32 %and, ptr %first, align 4
  %1 = load ptr, ptr %fp.addr, align 8
  %call1 = call i32 @getc(ptr noundef %1)
  %and2 = and i32 255, %call1
  store i32 %and2, ptr %second, align 4
  %2 = load i32, ptr %second, align 4
  %shl = shl i32 %2, 8
  %3 = load i32, ptr %first, align 4
  %add = add nsw i32 %shl, %3
  store i32 %add, ptr %result, align 4
  %4 = load i32, ptr %result, align 4
  %and3 = and i32 %4, 32768
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %result, align 4
  %sub = sub nsw i32 %5, 65536
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define i32 @Read16BitsHighLow(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  %and = and i32 255, %call
  store i32 %and, ptr %first, align 4
  %1 = load ptr, ptr %fp.addr, align 8
  %call1 = call i32 @getc(ptr noundef %1)
  %and2 = and i32 255, %call1
  store i32 %and2, ptr %second, align 4
  %2 = load i32, ptr %first, align 4
  %shl = shl i32 %2, 8
  %3 = load i32, ptr %second, align 4
  %add = add nsw i32 %shl, %3
  store i32 %add, ptr %result, align 4
  %4 = load i32, ptr %result, align 4
  %and3 = and i32 %4, 32768
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %result, align 4
  %sub = sub nsw i32 %5, 65536
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define void @Write8Bits(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %and = and i32 %0, 255
  %1 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %1)
  ret void
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @Write16BitsLowHigh(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %and = and i32 %0, 255
  %1 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %1)
  %2 = load i32, ptr %i.addr, align 4
  %shr = ashr i32 %2, 8
  %and1 = and i32 %shr, 255
  %3 = load ptr, ptr %fp.addr, align 8
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Write16BitsHighLow(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %shr = ashr i32 %0, 8
  %and = and i32 %shr, 255
  %1 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @putc(i32 noundef %and, ptr noundef %1)
  %2 = load i32, ptr %i.addr, align 4
  %and1 = and i32 %2, 255
  %3 = load ptr, ptr %fp.addr, align 8
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @Read24BitsHighLow(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %third = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  %and = and i32 255, %call
  store i32 %and, ptr %first, align 4
  %1 = load ptr, ptr %fp.addr, align 8
  %call1 = call i32 @getc(ptr noundef %1)
  %and2 = and i32 255, %call1
  store i32 %and2, ptr %second, align 4
  %2 = load ptr, ptr %fp.addr, align 8
  %call3 = call i32 @getc(ptr noundef %2)
  %and4 = and i32 255, %call3
  store i32 %and4, ptr %third, align 4
  %3 = load i32, ptr %first, align 4
  %shl = shl i32 %3, 16
  %4 = load i32, ptr %second, align 4
  %shl5 = shl i32 %4, 8
  %add = add nsw i32 %shl, %shl5
  %5 = load i32, ptr %third, align 4
  %add6 = add nsw i32 %add, %5
  store i32 %add6, ptr %result, align 4
  %6 = load i32, ptr %result, align 4
  %and7 = and i32 %6, 8388608
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %result, align 4
  %sub = sub nsw i32 %7, 16777216
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %result, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @Read32Bits(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @Read16BitsLowHigh(ptr noundef %0)
  %and = and i32 65535, %call
  store i32 %and, ptr %first, align 4
  %1 = load ptr, ptr %fp.addr, align 8
  %call1 = call i32 @Read16BitsLowHigh(ptr noundef %1)
  %and2 = and i32 65535, %call1
  store i32 %and2, ptr %second, align 4
  %2 = load i32, ptr %second, align 4
  %shl = shl i32 %2, 16
  %3 = load i32, ptr %first, align 4
  %add = add nsw i32 %shl, %3
  store i32 %add, ptr %result, align 4
  %4 = load i32, ptr %result, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @Read32BitsHighLow(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @Read16BitsHighLow(ptr noundef %0)
  %and = and i32 65535, %call
  store i32 %and, ptr %first, align 4
  %1 = load ptr, ptr %fp.addr, align 8
  %call1 = call i32 @Read16BitsHighLow(ptr noundef %1)
  %and2 = and i32 65535, %call1
  store i32 %and2, ptr %second, align 4
  %2 = load i32, ptr %first, align 4
  %shl = shl i32 %2, 16
  %3 = load i32, ptr %second, align 4
  %add = add nsw i32 %shl, %3
  store i32 %add, ptr %result, align 4
  %4 = load i32, ptr %result, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define void @Write32Bits(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %fp.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %conv = sext i32 %1 to i64
  %and = and i64 %conv, 65535
  %conv1 = trunc i64 %and to i32
  call void @Write16BitsLowHigh(ptr noundef %0, i32 noundef %conv1)
  %2 = load ptr, ptr %fp.addr, align 8
  %3 = load i32, ptr %i.addr, align 4
  %shr = ashr i32 %3, 16
  %conv2 = sext i32 %shr to i64
  %and3 = and i64 %conv2, 65535
  %conv4 = trunc i64 %and3 to i32
  call void @Write16BitsLowHigh(ptr noundef %2, i32 noundef %conv4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Write32BitsLowHigh(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %fp.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %conv = sext i32 %1 to i64
  %and = and i64 %conv, 65535
  %conv1 = trunc i64 %and to i32
  call void @Write16BitsLowHigh(ptr noundef %0, i32 noundef %conv1)
  %2 = load ptr, ptr %fp.addr, align 8
  %3 = load i32, ptr %i.addr, align 4
  %shr = ashr i32 %3, 16
  %conv2 = sext i32 %shr to i64
  %and3 = and i64 %conv2, 65535
  %conv4 = trunc i64 %and3 to i32
  call void @Write16BitsLowHigh(ptr noundef %2, i32 noundef %conv4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Write32BitsHighLow(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %fp.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %shr = ashr i32 %1, 16
  %conv = sext i32 %shr to i64
  %and = and i64 %conv, 65535
  %conv1 = trunc i64 %and to i32
  call void @Write16BitsHighLow(ptr noundef %0, i32 noundef %conv1)
  %2 = load ptr, ptr %fp.addr, align 8
  %3 = load i32, ptr %i.addr, align 4
  %conv2 = sext i32 %3 to i64
  %and3 = and i64 %conv2, 65535
  %conv4 = trunc i64 %and3 to i32
  call void @Write16BitsHighLow(ptr noundef %2, i32 noundef %conv4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @ReadBytes(ptr noundef %fp, ptr noundef %p, i32 noundef %n) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @feof(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  %conv = zext i1 %cmp to i32
  %and = and i32 %lnot.ext, %conv
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %fp.addr, align 8
  %call2 = call i32 @getc(ptr noundef %2)
  %conv3 = trunc i32 %call2 to i8
  %3 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  store i8 %conv3, ptr %3, align 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @feof(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @ReadBytesSwapped(ptr noundef %fp, ptr noundef %p, i32 noundef %n) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @feof(ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %2 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  %conv = zext i1 %cmp to i32
  %and = and i32 %lnot.ext, %conv
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %fp.addr, align 8
  %call2 = call i32 @getc(ptr noundef %3)
  %conv3 = trunc i32 %call2 to i8
  %4 = load ptr, ptr %q, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %q, align 8
  store i8 %conv3, ptr %4, align 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %q, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %5, i32 -1
  store ptr %incdec.ptr4, ptr %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load ptr, ptr %q, align 8
  %cmp5 = icmp ult ptr %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv7 = sext i8 %9 to i32
  store i32 %conv7, ptr %n.addr, align 4
  %10 = load ptr, ptr %q, align 8
  %11 = load i8, ptr %10, align 1
  %12 = load ptr, ptr %p.addr, align 8
  store i8 %11, ptr %12, align 1
  %13 = load i32, ptr %n.addr, align 4
  %conv8 = trunc i32 %13 to i8
  %14 = load ptr, ptr %q, align 8
  store i8 %conv8, ptr %14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load ptr, ptr %p.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr9, ptr %p.addr, align 8
  %16 = load ptr, ptr %q, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %16, i32 -1
  store ptr %incdec.ptr10, ptr %q, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @WriteBytes(ptr noundef %fp, ptr noundef %p, i32 noundef %n) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %3)
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @WriteBytesSwapped(ptr noundef %fp, ptr noundef %p, i32 noundef %n) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load ptr, ptr %p.addr, align 8
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  %5 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %5)
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeFloatHighLow(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %bits = alloca [4 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], ptr %bits, i64 0, i64 0
  call void @ReadBytes(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 4)
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %bits, i64 0, i64 0
  %call = call double @ConvertFromIeeeSingle(ptr noundef %arraydecay1)
  ret double %call
}

declare double @ConvertFromIeeeSingle(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeFloatLowHigh(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %bits = alloca [4 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], ptr %bits, i64 0, i64 0
  call void @ReadBytesSwapped(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 4)
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %bits, i64 0, i64 0
  %call = call double @ConvertFromIeeeSingle(ptr noundef %arraydecay1)
  ret double %call
}

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeDoubleHighLow(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %bits = alloca [8 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  call void @ReadBytes(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 8)
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  %call = call double @ConvertFromIeeeDouble(ptr noundef %arraydecay1)
  ret double %call
}

declare double @ConvertFromIeeeDouble(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeDoubleLowHigh(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %bits = alloca [8 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  call void @ReadBytesSwapped(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 8)
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  %call = call double @ConvertFromIeeeDouble(ptr noundef %arraydecay1)
  ret double %call
}

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeExtendedHighLow(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %bits = alloca [10 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], ptr %bits, i64 0, i64 0
  call void @ReadBytes(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 10)
  %arraydecay1 = getelementptr inbounds [10 x i8], ptr %bits, i64 0, i64 0
  %call = call double @ConvertFromIeeeExtended(ptr noundef %arraydecay1)
  ret double %call
}

declare double @ConvertFromIeeeExtended(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeExtendedLowHigh(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %bits = alloca [10 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], ptr %bits, i64 0, i64 0
  call void @ReadBytesSwapped(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 10)
  %arraydecay1 = getelementptr inbounds [10 x i8], ptr %bits, i64 0, i64 0
  %call = call double @ConvertFromIeeeExtended(ptr noundef %arraydecay1)
  ret double %call
}

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeFloatLowHigh(ptr noundef %fp, double noundef %num) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [4 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  store double %num, ptr %num.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], ptr %bits, i64 0, i64 0
  call void @ConvertToIeeeSingle(double noundef %0, ptr noundef %arraydecay)
  %1 = load ptr, ptr %fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %bits, i64 0, i64 0
  call void @WriteBytesSwapped(ptr noundef %1, ptr noundef %arraydecay1, i32 noundef 4)
  ret void
}

declare void @ConvertToIeeeSingle(double noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeFloatHighLow(ptr noundef %fp, double noundef %num) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [4 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  store double %num, ptr %num.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], ptr %bits, i64 0, i64 0
  call void @ConvertToIeeeSingle(double noundef %0, ptr noundef %arraydecay)
  %1 = load ptr, ptr %fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %bits, i64 0, i64 0
  call void @WriteBytes(ptr noundef %1, ptr noundef %arraydecay1, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeDoubleLowHigh(ptr noundef %fp, double noundef %num) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [8 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  store double %num, ptr %num.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  call void @ConvertToIeeeDouble(double noundef %0, ptr noundef %arraydecay)
  %1 = load ptr, ptr %fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  call void @WriteBytesSwapped(ptr noundef %1, ptr noundef %arraydecay1, i32 noundef 8)
  ret void
}

declare void @ConvertToIeeeDouble(double noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeDoubleHighLow(ptr noundef %fp, double noundef %num) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [8 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  store double %num, ptr %num.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  call void @ConvertToIeeeDouble(double noundef %0, ptr noundef %arraydecay)
  %1 = load ptr, ptr %fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  call void @WriteBytes(ptr noundef %1, ptr noundef %arraydecay1, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeExtendedLowHigh(ptr noundef %fp, double noundef %num) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [10 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  store double %num, ptr %num.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], ptr %bits, i64 0, i64 0
  call void @ConvertToIeeeExtended(double noundef %0, ptr noundef %arraydecay)
  %1 = load ptr, ptr %fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [10 x i8], ptr %bits, i64 0, i64 0
  call void @WriteBytesSwapped(ptr noundef %1, ptr noundef %arraydecay1, i32 noundef 10)
  ret void
}

declare void @ConvertToIeeeExtended(double noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeExtendedHighLow(ptr noundef %fp, double noundef %num) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [10 x i8], align 1
  store ptr %fp, ptr %fp.addr, align 8
  store double %num, ptr %num.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], ptr %bits, i64 0, i64 0
  call void @ConvertToIeeeExtended(double noundef %0, ptr noundef %arraydecay)
  %1 = load ptr, ptr %fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [10 x i8], ptr %bits, i64 0, i64 0
  call void @WriteBytes(ptr noundef %1, ptr noundef %arraydecay1, i32 noundef 10)
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
