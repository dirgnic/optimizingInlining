; ModuleID = '<stdin>'
source_filename = "common/outqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_outq = type { ptr, ptr, i64, i32, i32, i32, i64 }
%struct.lzma_outbuf = type { ptr, i64, i64, i64, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @lzma_outq_memusage(i64 noundef %buf_size_max, i32 noundef %threads) #0 {
entry:
  %retval = alloca i64, align 8
  %buf_size_max.addr = alloca i64, align 8
  %threads.addr = alloca i32, align 4
  %bufs_alloc_size = alloca i64, align 8
  %bufs_count = alloca i32, align 4
  store i64 %buf_size_max, ptr %buf_size_max.addr, align 8
  store i32 %threads, ptr %threads.addr, align 4
  %0 = load i64, ptr %buf_size_max.addr, align 8
  %1 = load i32, ptr %threads.addr, align 4
  %call = call i32 @get_options(ptr noundef %bufs_alloc_size, ptr noundef %bufs_count, i64 noundef %0, i32 noundef %1)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %bufs_count, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 40
  %add = add i64 48, %mul
  %3 = load i64, ptr %bufs_alloc_size, align 8
  %add1 = add i64 %add, %3
  store i64 %add1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_options(ptr noundef %bufs_alloc_size, ptr noundef %bufs_count, i64 noundef %buf_size_max, i32 noundef %threads) #0 {
entry:
  %retval = alloca i32, align 4
  %bufs_alloc_size.addr = alloca ptr, align 8
  %bufs_count.addr = alloca ptr, align 8
  %buf_size_max.addr = alloca i64, align 8
  %threads.addr = alloca i32, align 4
  store ptr %bufs_alloc_size, ptr %bufs_alloc_size.addr, align 8
  store ptr %bufs_count, ptr %bufs_count.addr, align 8
  store i64 %buf_size_max, ptr %buf_size_max.addr, align 8
  store i32 %threads, ptr %threads.addr, align 4
  %0 = load i32, ptr %threads.addr, align 4
  %cmp = icmp ugt i32 %0, 16384
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %buf_size_max.addr, align 8
  %cmp1 = icmp ugt i64 %1, 281474976710655
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %threads.addr, align 4
  %mul = mul i32 %2, 2
  %3 = load ptr, ptr %bufs_count.addr, align 8
  store i32 %mul, ptr %3, align 4
  %4 = load ptr, ptr %bufs_count.addr, align 8
  %5 = load i32, ptr %4, align 4
  %conv = zext i32 %5 to i64
  %6 = load i64, ptr %buf_size_max.addr, align 8
  %mul2 = mul i64 %conv, %6
  %7 = load ptr, ptr %bufs_alloc_size.addr, align 8
  store i64 %mul2, ptr %7, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @lzma_outq_init(ptr noundef %outq, ptr noundef %allocator, i64 noundef %buf_size_max, i32 noundef %threads) #0 {
entry:
  %retval = alloca i32, align 4
  %outq.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %buf_size_max.addr = alloca i64, align 8
  %threads.addr = alloca i32, align 4
  %bufs_alloc_size = alloca i64, align 8
  %bufs_count = alloca i32, align 4
  %ret_ = alloca i32, align 4
  store ptr %outq, ptr %outq.addr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8
  store i64 %buf_size_max, ptr %buf_size_max.addr, align 8
  store i32 %threads, ptr %threads.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %buf_size_max.addr, align 8
  %1 = load i32, ptr %threads.addr, align 4
  %call = call i32 @get_options(ptr noundef %bufs_alloc_size, ptr noundef %bufs_count, i64 noundef %0, i32 noundef %1)
  store i32 %call, ptr %ret_, align 4
  %2 = load i32, ptr %ret_, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i32, ptr %ret_, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load ptr, ptr %outq.addr, align 8
  %buf_size_max1 = getelementptr inbounds %struct.lzma_outq, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %buf_size_max1, align 8
  %6 = load i64, ptr %buf_size_max.addr, align 8
  %cmp2 = icmp ne i64 %5, %6
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %7 = load ptr, ptr %outq.addr, align 8
  %bufs_allocated = getelementptr inbounds %struct.lzma_outq, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %bufs_allocated, align 8
  %9 = load i32, ptr %bufs_count, align 4
  %cmp3 = icmp ne i32 %8, %9
  br i1 %cmp3, label %if.then4, label %if.end16

if.then4:                                         ; preds = %lor.lhs.false, %do.end
  %10 = load ptr, ptr %outq.addr, align 8
  %11 = load ptr, ptr %allocator.addr, align 8
  call void @lzma_outq_end(ptr noundef %10, ptr noundef %11)
  %12 = load i32, ptr %bufs_count, align 4
  %conv = zext i32 %12 to i64
  %mul = mul i64 %conv, 40
  %13 = load ptr, ptr %allocator.addr, align 8
  %call5 = call noalias ptr @lzma_alloc(i64 noundef %mul, ptr noundef %13)
  %14 = load ptr, ptr %outq.addr, align 8
  %bufs = getelementptr inbounds %struct.lzma_outq, ptr %14, i32 0, i32 0
  store ptr %call5, ptr %bufs, align 8
  %15 = load i64, ptr %bufs_alloc_size, align 8
  %16 = load ptr, ptr %allocator.addr, align 8
  %call6 = call noalias ptr @lzma_alloc(i64 noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %outq.addr, align 8
  %bufs_mem = getelementptr inbounds %struct.lzma_outq, ptr %17, i32 0, i32 1
  store ptr %call6, ptr %bufs_mem, align 8
  %18 = load ptr, ptr %outq.addr, align 8
  %bufs7 = getelementptr inbounds %struct.lzma_outq, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %bufs7, align 8
  %cmp8 = icmp eq ptr %19, null
  br i1 %cmp8, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.then4
  %20 = load ptr, ptr %outq.addr, align 8
  %bufs_mem11 = getelementptr inbounds %struct.lzma_outq, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %bufs_mem11, align 8
  %cmp12 = icmp eq ptr %21, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false10, %if.then4
  %22 = load ptr, ptr %outq.addr, align 8
  %23 = load ptr, ptr %allocator.addr, align 8
  call void @lzma_outq_end(ptr noundef %22, ptr noundef %23)
  store i32 5, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %lor.lhs.false
  %24 = load i64, ptr %buf_size_max.addr, align 8
  %25 = load ptr, ptr %outq.addr, align 8
  %buf_size_max17 = getelementptr inbounds %struct.lzma_outq, ptr %25, i32 0, i32 2
  store i64 %24, ptr %buf_size_max17, align 8
  %26 = load i32, ptr %bufs_count, align 4
  %27 = load ptr, ptr %outq.addr, align 8
  %bufs_allocated18 = getelementptr inbounds %struct.lzma_outq, ptr %27, i32 0, i32 3
  store i32 %26, ptr %bufs_allocated18, align 8
  %28 = load ptr, ptr %outq.addr, align 8
  %bufs_pos = getelementptr inbounds %struct.lzma_outq, ptr %28, i32 0, i32 4
  store i32 0, ptr %bufs_pos, align 4
  %29 = load ptr, ptr %outq.addr, align 8
  %bufs_used = getelementptr inbounds %struct.lzma_outq, ptr %29, i32 0, i32 5
  store i32 0, ptr %bufs_used, align 8
  %30 = load ptr, ptr %outq.addr, align 8
  %read_pos = getelementptr inbounds %struct.lzma_outq, ptr %30, i32 0, i32 6
  store i64 0, ptr %read_pos, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @lzma_outq_end(ptr noundef %outq, ptr noundef %allocator) #0 {
entry:
  %outq.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  store ptr %outq, ptr %outq.addr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8
  %0 = load ptr, ptr %outq.addr, align 8
  %bufs = getelementptr inbounds %struct.lzma_outq, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %bufs, align 8
  %2 = load ptr, ptr %allocator.addr, align 8
  call void @lzma_free(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %outq.addr, align 8
  %bufs1 = getelementptr inbounds %struct.lzma_outq, ptr %3, i32 0, i32 0
  store ptr null, ptr %bufs1, align 8
  %4 = load ptr, ptr %outq.addr, align 8
  %bufs_mem = getelementptr inbounds %struct.lzma_outq, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bufs_mem, align 8
  %6 = load ptr, ptr %allocator.addr, align 8
  call void @lzma_free(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %outq.addr, align 8
  %bufs_mem2 = getelementptr inbounds %struct.lzma_outq, ptr %7, i32 0, i32 1
  store ptr null, ptr %bufs_mem2, align 8
  ret void
}

declare noalias ptr @lzma_alloc(i64 noundef, ptr noundef) #1

declare void @lzma_free(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden ptr @lzma_outq_get_buf(ptr noundef %outq) #0 {
entry:
  %outq.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  store ptr %outq, ptr %outq.addr, align 8
  %0 = load ptr, ptr %outq.addr, align 8
  %bufs = getelementptr inbounds %struct.lzma_outq, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %bufs, align 8
  %2 = load ptr, ptr %outq.addr, align 8
  %bufs_pos = getelementptr inbounds %struct.lzma_outq, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %bufs_pos, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.lzma_outbuf, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %buf, align 8
  %4 = load ptr, ptr %outq.addr, align 8
  %bufs_mem = getelementptr inbounds %struct.lzma_outq, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %bufs_mem, align 8
  %6 = load ptr, ptr %outq.addr, align 8
  %bufs_pos1 = getelementptr inbounds %struct.lzma_outq, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %bufs_pos1, align 4
  %conv = zext i32 %7 to i64
  %8 = load ptr, ptr %outq.addr, align 8
  %buf_size_max = getelementptr inbounds %struct.lzma_outq, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %buf_size_max, align 8
  %mul = mul i64 %conv, %9
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  %10 = load ptr, ptr %buf, align 8
  %buf2 = getelementptr inbounds %struct.lzma_outbuf, ptr %10, i32 0, i32 0
  store ptr %add.ptr, ptr %buf2, align 8
  %11 = load ptr, ptr %buf, align 8
  %size = getelementptr inbounds %struct.lzma_outbuf, ptr %11, i32 0, i32 1
  store i64 0, ptr %size, align 8
  %12 = load ptr, ptr %buf, align 8
  %finished = getelementptr inbounds %struct.lzma_outbuf, ptr %12, i32 0, i32 4
  store i8 0, ptr %finished, align 8
  %13 = load ptr, ptr %outq.addr, align 8
  %bufs_pos3 = getelementptr inbounds %struct.lzma_outq, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %bufs_pos3, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %bufs_pos3, align 4
  %15 = load ptr, ptr %outq.addr, align 8
  %bufs_allocated = getelementptr inbounds %struct.lzma_outq, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %bufs_allocated, align 8
  %cmp = icmp eq i32 %inc, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %outq.addr, align 8
  %bufs_pos5 = getelementptr inbounds %struct.lzma_outq, ptr %17, i32 0, i32 4
  store i32 0, ptr %bufs_pos5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load ptr, ptr %outq.addr, align 8
  %bufs_used = getelementptr inbounds %struct.lzma_outq, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %bufs_used, align 8
  %inc6 = add i32 %19, 1
  store i32 %inc6, ptr %bufs_used, align 8
  %20 = load ptr, ptr %buf, align 8
  ret ptr %20
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i1 @lzma_outq_is_readable(ptr noundef %outq) #0 {
entry:
  %outq.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %outq, ptr %outq.addr, align 8
  %0 = load ptr, ptr %outq.addr, align 8
  %bufs_pos = getelementptr inbounds %struct.lzma_outq, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %bufs_pos, align 4
  %2 = load ptr, ptr %outq.addr, align 8
  %bufs_used = getelementptr inbounds %struct.lzma_outq, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %bufs_used, align 8
  %sub = sub i32 %1, %3
  store i32 %sub, ptr %i, align 4
  %4 = load ptr, ptr %outq.addr, align 8
  %bufs_pos1 = getelementptr inbounds %struct.lzma_outq, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %bufs_pos1, align 4
  %6 = load ptr, ptr %outq.addr, align 8
  %bufs_used2 = getelementptr inbounds %struct.lzma_outq, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %bufs_used2, align 8
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %outq.addr, align 8
  %bufs_allocated = getelementptr inbounds %struct.lzma_outq, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %bufs_allocated, align 8
  %10 = load i32, ptr %i, align 4
  %add = add i32 %10, %9
  store i32 %add, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %outq.addr, align 8
  %bufs = getelementptr inbounds %struct.lzma_outq, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %bufs, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.lzma_outbuf, ptr %12, i64 %idxprom
  %finished = getelementptr inbounds %struct.lzma_outbuf, ptr %arrayidx, i32 0, i32 4
  %14 = load i8, ptr %finished, align 8
  %tobool = trunc i8 %14 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @lzma_outq_read(ptr noalias noundef %outq, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, ptr noalias noundef %unpadded_size, ptr noalias noundef %uncompressed_size) #0 {
entry:
  %retval = alloca i32, align 4
  %outq.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %out_pos.addr = alloca ptr, align 8
  %out_size.addr = alloca i64, align 8
  %unpadded_size.addr = alloca ptr, align 8
  %uncompressed_size.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %buf = alloca ptr, align 8
  store ptr %outq, ptr %outq.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %out_pos, ptr %out_pos.addr, align 8
  store i64 %out_size, ptr %out_size.addr, align 8
  store ptr %unpadded_size, ptr %unpadded_size.addr, align 8
  store ptr %uncompressed_size, ptr %uncompressed_size.addr, align 8
  %0 = load ptr, ptr %outq.addr, align 8
  %bufs_used = getelementptr inbounds %struct.lzma_outq, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %bufs_used, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %outq.addr, align 8
  %bufs_pos = getelementptr inbounds %struct.lzma_outq, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %bufs_pos, align 4
  %4 = load ptr, ptr %outq.addr, align 8
  %bufs_used1 = getelementptr inbounds %struct.lzma_outq, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %bufs_used1, align 8
  %sub = sub i32 %3, %5
  store i32 %sub, ptr %i, align 4
  %6 = load ptr, ptr %outq.addr, align 8
  %bufs_pos2 = getelementptr inbounds %struct.lzma_outq, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %bufs_pos2, align 4
  %8 = load ptr, ptr %outq.addr, align 8
  %bufs_used3 = getelementptr inbounds %struct.lzma_outq, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %bufs_used3, align 8
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %outq.addr, align 8
  %bufs_allocated = getelementptr inbounds %struct.lzma_outq, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %bufs_allocated, align 8
  %12 = load i32, ptr %i, align 4
  %add = add i32 %12, %11
  store i32 %add, ptr %i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %13 = load ptr, ptr %outq.addr, align 8
  %bufs = getelementptr inbounds %struct.lzma_outq, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %bufs, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = zext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.lzma_outbuf, ptr %14, i64 %idxprom
  store ptr %arrayidx, ptr %buf, align 8
  %16 = load ptr, ptr %buf, align 8
  %finished = getelementptr inbounds %struct.lzma_outbuf, ptr %16, i32 0, i32 4
  %17 = load i8, ptr %finished, align 8
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end6
  %18 = load ptr, ptr %buf, align 8
  %buf9 = getelementptr inbounds %struct.lzma_outbuf, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %buf9, align 8
  %20 = load ptr, ptr %outq.addr, align 8
  %read_pos = getelementptr inbounds %struct.lzma_outq, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %buf, align 8
  %size = getelementptr inbounds %struct.lzma_outbuf, ptr %21, i32 0, i32 1
  %22 = load i64, ptr %size, align 8
  %23 = load ptr, ptr %out.addr, align 8
  %24 = load ptr, ptr %out_pos.addr, align 8
  %25 = load i64, ptr %out_size.addr, align 8
  %call = call i64 @lzma_bufcpy(ptr noundef %19, ptr noundef %read_pos, i64 noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25)
  %26 = load ptr, ptr %outq.addr, align 8
  %read_pos10 = getelementptr inbounds %struct.lzma_outq, ptr %26, i32 0, i32 6
  %27 = load i64, ptr %read_pos10, align 8
  %28 = load ptr, ptr %buf, align 8
  %size11 = getelementptr inbounds %struct.lzma_outbuf, ptr %28, i32 0, i32 1
  %29 = load i64, ptr %size11, align 8
  %cmp12 = icmp ult i64 %27, %29
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %30 = load ptr, ptr %buf, align 8
  %unpadded_size15 = getelementptr inbounds %struct.lzma_outbuf, ptr %30, i32 0, i32 2
  %31 = load i64, ptr %unpadded_size15, align 8
  %32 = load ptr, ptr %unpadded_size.addr, align 8
  store i64 %31, ptr %32, align 8
  %33 = load ptr, ptr %buf, align 8
  %uncompressed_size16 = getelementptr inbounds %struct.lzma_outbuf, ptr %33, i32 0, i32 3
  %34 = load i64, ptr %uncompressed_size16, align 8
  %35 = load ptr, ptr %uncompressed_size.addr, align 8
  store i64 %34, ptr %35, align 8
  %36 = load ptr, ptr %outq.addr, align 8
  %bufs_used17 = getelementptr inbounds %struct.lzma_outq, ptr %36, i32 0, i32 5
  %37 = load i32, ptr %bufs_used17, align 8
  %dec = add i32 %37, -1
  store i32 %dec, ptr %bufs_used17, align 8
  %38 = load ptr, ptr %outq.addr, align 8
  %read_pos18 = getelementptr inbounds %struct.lzma_outq, ptr %38, i32 0, i32 6
  store i64 0, ptr %read_pos18, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then7, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
