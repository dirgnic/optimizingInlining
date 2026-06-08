; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_mibench_consumer_lame_lame3.70_portableio.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/portableio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: nounwind ssp uwtable
define i32 @ReadByte(ptr noundef %fp) #0 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @getc(ptr noundef %fp) #4
  %and = and i32 %call, 255
  store i32 %and, ptr %result, align 4
  %and1 = and i32 %call, 128
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %result, align 4
  %sub = add nsw i32 %0, -256
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %result, align 4
  ret i32 %1
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @Read16BitsLowHigh(ptr noundef %fp) #0 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @getc(ptr noundef %fp) #4
  %and = and i32 %call, 255
  %call1 = call i32 @getc(ptr noundef %fp) #4
  %and2 = shl i32 %call1, 8
  %shl = and i32 %and2, 65280
  %add = or i32 %shl, %and
  store i32 %add, ptr %result, align 4
  %0 = and i32 %call1, 128
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %result, align 4
  %sub = add nsw i32 %1, -65536
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %result, align 4
  ret i32 %2
}

; Function Attrs: nounwind ssp uwtable
define i32 @Read16BitsHighLow(ptr noundef %fp) #0 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @getc(ptr noundef %fp) #4
  %call1 = call i32 @getc(ptr noundef %fp) #4
  %and2 = and i32 %call1, 255
  %and = shl i32 %call, 8
  %shl = and i32 %and, 65280
  %add = or i32 %shl, %and2
  store i32 %add, ptr %result, align 4
  %0 = and i32 %call, 128
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %result, align 4
  %sub = add nsw i32 %1, -65536
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %result, align 4
  ret i32 %2
}

; Function Attrs: nounwind ssp uwtable
define void @Write8Bits(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %and = and i32 %i, 255
  %call = call i32 @putc(i32 noundef %and, ptr noundef %fp) #4
  ret void
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @Write16BitsLowHigh(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %and = and i32 %i, 255
  %call = call i32 @putc(i32 noundef %and, ptr noundef %fp) #4
  %0 = lshr i32 %i, 8
  %and1 = and i32 %0, 255
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %fp) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Write16BitsHighLow(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %0 = lshr i32 %i, 8
  %and = and i32 %0, 255
  %call = call i32 @putc(i32 noundef %and, ptr noundef %fp) #4
  %and1 = and i32 %i, 255
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %fp) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @Read24BitsHighLow(ptr noundef %fp) #0 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @getc(ptr noundef %fp) #4
  %call1 = call i32 @getc(ptr noundef %fp) #4
  %call3 = call i32 @getc(ptr noundef %fp) #4
  %and4 = and i32 %call3, 255
  %and = shl i32 %call, 16
  %shl = and i32 %and, 16711680
  %and2 = shl i32 %call1, 8
  %shl5 = and i32 %and2, 65280
  %add = or i32 %shl, %shl5
  %add6 = or i32 %add, %and4
  store i32 %add6, ptr %result, align 4
  %0 = and i32 %call, 128
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %result, align 4
  %sub = add nsw i32 %1, -16777216
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %result, align 4
  ret i32 %2
}

; Function Attrs: nounwind ssp uwtable
define i32 @Read32Bits(ptr noundef %fp) #0 {
entry:
  %result.i4 = alloca i32, align 4
  %result.i = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i)
  %call.i = call i32 @getc(ptr noundef %fp) #4
  %and.i = and i32 %call.i, 255
  %call1.i = call i32 @getc(ptr noundef %fp) #4
  %and2.i = shl i32 %call1.i, 8
  %shl.i = and i32 %and2.i, 65280
  %add.i = or i32 %shl.i, %and.i
  store i32 %add.i, ptr %result.i, align 4
  %0 = and i32 %call1.i, 128
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_0.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = load i32, ptr %result.i, align 4
  %sub.i = add nsw i32 %1, -65536
  store i32 %sub.i, ptr %result.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_0.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_0.exit: ; preds = %entry, %if.then.i
  %2 = load i32, ptr %result.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i)
  %and = and i32 %2, 65535
  store i32 %and, ptr %first, align 4
  %3 = load ptr, ptr %fp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i4)
  %call.i5 = call i32 @getc(ptr noundef %3) #4
  %and.i6 = and i32 %call.i5, 255
  %call1.i7 = call i32 @getc(ptr noundef %3) #4
  %and2.i8 = shl i32 %call1.i7, 8
  %shl.i9 = and i32 %and2.i8, 65280
  %add.i10 = or i32 %shl.i9, %and.i6
  store i32 %add.i10, ptr %result.i4, align 4
  %4 = and i32 %call1.i7, 128
  %tobool.i12.not = icmp eq i32 %4, 0
  br i1 %tobool.i12.not, label %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_1.exit, label %if.then.i14

if.then.i14:                                      ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_0.exit
  %5 = load i32, ptr %result.i4, align 4
  %sub.i13 = add nsw i32 %5, -65536
  store i32 %sub.i13, ptr %result.i4, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_1.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_1.exit: ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_0.exit, %if.then.i14
  %6 = load i32, ptr %result.i4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i4)
  %shl = shl i32 %6, 16
  %7 = load i32, ptr %first, align 4
  %add = add nsw i32 %shl, %7
  ret i32 %add
}

; Function Attrs: nounwind ssp uwtable
define i32 @Read32BitsHighLow(ptr noundef %fp) #0 {
entry:
  %result.i4 = alloca i32, align 4
  %result.i = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i)
  %call.i = call i32 @getc(ptr noundef %fp) #4
  %call1.i = call i32 @getc(ptr noundef %fp) #4
  %and2.i = and i32 %call1.i, 255
  %and.i = shl i32 %call.i, 8
  %shl.i = and i32 %and.i, 65280
  %add.i = or i32 %shl.i, %and2.i
  store i32 %add.i, ptr %result.i, align 4
  %0 = and i32 %call.i, 128
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_2.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = load i32, ptr %result.i, align 4
  %sub.i = add nsw i32 %1, -65536
  store i32 %sub.i, ptr %result.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_2.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_2.exit: ; preds = %entry, %if.then.i
  %2 = load i32, ptr %result.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i)
  %and = and i32 %2, 65535
  store i32 %and, ptr %first, align 4
  %3 = load ptr, ptr %fp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i4)
  %call.i5 = call i32 @getc(ptr noundef %3) #4
  %call1.i7 = call i32 @getc(ptr noundef %3) #4
  %and2.i8 = and i32 %call1.i7, 255
  %and.i6 = shl i32 %call.i5, 8
  %shl.i9 = and i32 %and.i6, 65280
  %add.i10 = or i32 %shl.i9, %and2.i8
  store i32 %add.i10, ptr %result.i4, align 4
  %4 = and i32 %call.i5, 128
  %tobool.i12.not = icmp eq i32 %4, 0
  br i1 %tobool.i12.not, label %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_3.exit, label %if.then.i14

if.then.i14:                                      ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_2.exit
  %5 = load i32, ptr %result.i4, align 4
  %sub.i13 = add nsw i32 %5, -65536
  store i32 %sub.i13, ptr %result.i4, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_3.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_3.exit: ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_2.exit, %if.then.i14
  %6 = load i32, ptr %result.i4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i4)
  %and2 = and i32 %6, 65535
  %7 = load i32, ptr %first, align 4
  %shl = shl i32 %7, 16
  %add = or i32 %shl, %and2
  ret i32 %add
}

; Function Attrs: nounwind ssp uwtable
define void @Write32Bits(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %and.i = and i32 %i, 255
  %call.i = call i32 @putc(i32 noundef %and.i, ptr noundef %fp) #4
  %0 = lshr i32 %i, 8
  %1 = and i32 %0, 255
  %call2.i = call i32 @putc(i32 noundef %1, ptr noundef %fp) #4
  %2 = load ptr, ptr %fp.addr, align 8
  %3 = load i32, ptr %i.addr, align 4
  %4 = lshr i32 %3, 16
  %and.i3 = and i32 %4, 255
  %call.i4 = call i32 @putc(i32 noundef %and.i3, ptr noundef %2) #4
  %5 = lshr i32 %3, 24
  %call2.i7 = call i32 @putc(i32 noundef %5, ptr noundef %2) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Write32BitsLowHigh(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %and.i = and i32 %i, 255
  %call.i = call i32 @putc(i32 noundef %and.i, ptr noundef %fp) #4
  %0 = lshr i32 %i, 8
  %1 = and i32 %0, 255
  %call2.i = call i32 @putc(i32 noundef %1, ptr noundef %fp) #4
  %2 = load ptr, ptr %fp.addr, align 8
  %3 = load i32, ptr %i.addr, align 4
  %4 = lshr i32 %3, 16
  %and.i3 = and i32 %4, 255
  %call.i4 = call i32 @putc(i32 noundef %and.i3, ptr noundef %2) #4
  %5 = lshr i32 %3, 24
  %call2.i7 = call i32 @putc(i32 noundef %5, ptr noundef %2) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Write32BitsHighLow(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = lshr i32 %i, 16
  %1 = lshr i32 %i, 24
  %call.i = call i32 @putc(i32 noundef %1, ptr noundef %fp) #4
  %and1.i = and i32 %0, 255
  %call2.i = call i32 @putc(i32 noundef %and1.i, ptr noundef %fp) #4
  %2 = load ptr, ptr %fp.addr, align 8
  %3 = load i32, ptr %i.addr, align 4
  %4 = lshr i32 %3, 8
  %and.i4 = and i32 %4, 255
  %call.i5 = call i32 @putc(i32 noundef %and.i4, ptr noundef %2) #4
  %and1.i6 = and i32 %3, 255
  %call2.i7 = call i32 @putc(i32 noundef %and1.i6, ptr noundef %2) #4
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
  %call = call i32 @feof(ptr noundef %0) #4
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  %and1 = and i1 %tobool.not, %cmp
  br i1 %and1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %fp.addr, align 8
  %call2 = call i32 @getc(ptr noundef %2) #4
  %conv3 = trunc i32 %call2 to i8
  %3 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i64 1
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
  store ptr %p, ptr %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @feof(ptr noundef %0) #4
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  %and1 = and i1 %tobool.not, %cmp
  br i1 %and1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %fp.addr, align 8
  %call2 = call i32 @getc(ptr noundef %2) #4
  %conv3 = trunc i32 %call2 to i8
  %3 = load ptr, ptr %q, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %q, align 8
  store i8 %conv3, ptr %3, align 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.end
  %.pn = phi ptr [ %4, %while.end ], [ %11, %for.body ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -1
  store ptr %storemerge, ptr %q, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %cmp5 = icmp ult ptr %5, %storemerge
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv7 = sext i8 %7 to i32
  store i32 %conv7, ptr %n.addr, align 4
  %8 = load ptr, ptr %q, align 8
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %6, align 1
  store i8 %7, ptr %8, align 1
  %10 = load ptr, ptr %p.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr9, ptr %p.addr, align 8
  %11 = load ptr, ptr %q, align 8
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
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %3) #4
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
  %sub = add nsw i32 %n, -1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 %idx.ext
  store ptr %add.ptr, ptr %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 -1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %3) #4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeFloatHighLow(ptr noundef %fp) #0 {
entry:
  %bits = alloca [4 x i8], align 1
  call void @ReadBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 4)
  %call = call double @ConvertFromIeeeSingle(ptr noundef nonnull %bits) #4
  ret double %call
}

declare double @ConvertFromIeeeSingle(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeFloatLowHigh(ptr noundef %fp) #0 {
entry:
  %bits = alloca [4 x i8], align 1
  call void @ReadBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 4)
  %call = call double @ConvertFromIeeeSingle(ptr noundef nonnull %bits) #4
  ret double %call
}

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeDoubleHighLow(ptr noundef %fp) #0 {
entry:
  %bits = alloca [8 x i8], align 1
  call void @ReadBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 8)
  %call = call double @ConvertFromIeeeDouble(ptr noundef nonnull %bits) #4
  ret double %call
}

declare double @ConvertFromIeeeDouble(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeDoubleLowHigh(ptr noundef %fp) #0 {
entry:
  %bits = alloca [8 x i8], align 1
  call void @ReadBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 8)
  %call = call double @ConvertFromIeeeDouble(ptr noundef nonnull %bits) #4
  ret double %call
}

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeExtendedHighLow(ptr noundef %fp) #0 {
entry:
  %bits = alloca [10 x i8], align 1
  call void @ReadBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 10)
  %call = call double @ConvertFromIeeeExtended(ptr noundef nonnull %bits) #4
  ret double %call
}

declare double @ConvertFromIeeeExtended(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define double @ReadIeeeExtendedLowHigh(ptr noundef %fp) #0 {
entry:
  %bits = alloca [10 x i8], align 1
  call void @ReadBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 10)
  %call = call double @ConvertFromIeeeExtended(ptr noundef nonnull %bits) #4
  ret double %call
}

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeFloatLowHigh(ptr noundef %fp, double noundef %num) #0 {
entry:
  %bits = alloca [4 x i8], align 1
  call void @ConvertToIeeeSingle(double noundef %num, ptr noundef nonnull %bits) #4
  call void @WriteBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 4)
  ret void
}

declare void @ConvertToIeeeSingle(double noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeFloatHighLow(ptr noundef %fp, double noundef %num) #0 {
entry:
  %bits = alloca [4 x i8], align 1
  call void @ConvertToIeeeSingle(double noundef %num, ptr noundef nonnull %bits) #4
  call void @WriteBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeDoubleLowHigh(ptr noundef %fp, double noundef %num) #0 {
entry:
  %bits = alloca [8 x i8], align 1
  call void @ConvertToIeeeDouble(double noundef %num, ptr noundef nonnull %bits) #4
  call void @WriteBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 8)
  ret void
}

declare void @ConvertToIeeeDouble(double noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeDoubleHighLow(ptr noundef %fp, double noundef %num) #0 {
entry:
  %bits = alloca [8 x i8], align 1
  call void @ConvertToIeeeDouble(double noundef %num, ptr noundef nonnull %bits) #4
  call void @WriteBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeExtendedLowHigh(ptr noundef %fp, double noundef %num) #0 {
entry:
  %bits = alloca [10 x i8], align 1
  call void @ConvertToIeeeExtended(double noundef %num, ptr noundef nonnull %bits) #4
  call void @WriteBytesSwapped(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 10)
  ret void
}

declare void @ConvertToIeeeExtended(double noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @WriteIeeeExtendedHighLow(ptr noundef %fp, double noundef %num) #0 {
entry:
  %bits = alloca [10 x i8], align 1
  call void @ConvertToIeeeExtended(double noundef %num, ptr noundef nonnull %bits) #4
  call void @WriteBytes(ptr noundef %fp, ptr noundef nonnull %bits, i32 noundef 10)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_0(ptr noundef %fp) #2 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @getc(ptr noundef %fp) #4
  %and = and i32 %call, 255
  %call1 = call i32 @getc(ptr noundef %fp) #4
  %and2 = shl i32 %call1, 8
  %shl = and i32 %and2, 65280
  %add = or i32 %shl, %and
  store i32 %add, ptr %result, align 4
  %0 = and i32 %call1, 128
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %result, align 4
  %sub = add nsw i32 %1, -65536
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %result, align 4
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_1(ptr noundef %fp) #2 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @getc(ptr noundef %fp) #4
  %and = and i32 %call, 255
  %call1 = call i32 @getc(ptr noundef %fp) #4
  %and2 = shl i32 %call1, 8
  %shl = and i32 %and2, 65280
  %add = or i32 %shl, %and
  store i32 %add, ptr %result, align 4
  %0 = and i32 %call1, 128
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %result, align 4
  %sub = add nsw i32 %1, -65536
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %result, align 4
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_2(ptr noundef %fp) #2 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @getc(ptr noundef %fp) #4
  %call1 = call i32 @getc(ptr noundef %fp) #4
  %and2 = and i32 %call1, 255
  %and = shl i32 %call, 8
  %shl = and i32 %and, 65280
  %add = or i32 %shl, %and2
  store i32 %add, ptr %result, align 4
  %0 = and i32 %call, 128
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %result, align 4
  %sub = add nsw i32 %1, -65536
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %result, align 4
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_3(ptr noundef %fp) #2 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @getc(ptr noundef %fp) #4
  %call1 = call i32 @getc(ptr noundef %fp) #4
  %and2 = and i32 %call1, 255
  %and = shl i32 %call, 8
  %shl = and i32 %and, 65280
  %add = or i32 %shl, %and2
  store i32 %add, ptr %result, align 4
  %0 = and i32 %call, 128
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %result, align 4
  %sub = add nsw i32 %1, -65536
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %result, align 4
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_4(ptr noundef %fp, i32 noundef %i) #2 {
entry:
  %and = and i32 %i, 255
  %call = call i32 @putc(i32 noundef %and, ptr noundef %fp) #4
  %0 = lshr i32 %i, 8
  %and1 = and i32 %0, 255
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %fp) #4
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_5(ptr noundef %fp, i32 noundef %i) #2 {
entry:
  %and = and i32 %i, 255
  %call = call i32 @putc(i32 noundef %and, ptr noundef %fp) #4
  %0 = lshr i32 %i, 8
  %and1 = and i32 %0, 255
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %fp) #4
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_6(ptr noundef %fp, i32 noundef %i) #2 {
entry:
  %and = and i32 %i, 255
  %call = call i32 @putc(i32 noundef %and, ptr noundef %fp) #4
  %0 = lshr i32 %i, 8
  %and1 = and i32 %0, 255
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %fp) #4
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_7(ptr noundef %fp, i32 noundef %i) #2 {
entry:
  %and = and i32 %i, 255
  %call = call i32 @putc(i32 noundef %and, ptr noundef %fp) #4
  %0 = lshr i32 %i, 8
  %and1 = and i32 %0, 255
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %fp) #4
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_8(ptr noundef %fp, i32 noundef %i) #2 {
entry:
  %0 = lshr i32 %i, 8
  %and = and i32 %0, 255
  %call = call i32 @putc(i32 noundef %and, ptr noundef %fp) #4
  %and1 = and i32 %i, 255
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %fp) #4
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_portableio_9(ptr noundef %fp, i32 noundef %i) #2 {
entry:
  %0 = lshr i32 %i, 8
  %and = and i32 %0, 255
  %call = call i32 @putc(i32 noundef %and, ptr noundef %fp) #4
  %and1 = and i32 %i, 255
  %call2 = call i32 @putc(i32 noundef %and1, ptr noundef %fp) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
