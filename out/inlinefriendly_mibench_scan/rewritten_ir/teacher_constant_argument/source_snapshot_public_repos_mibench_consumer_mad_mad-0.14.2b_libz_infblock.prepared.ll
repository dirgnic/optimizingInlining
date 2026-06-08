; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/infblock.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/infblock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.inflate_blocks_state = type { i32, %union.anon, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, ptr, i32, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.anon.2 = type { ptr }
%struct.inflate_huft_s = type { %union.anon.0, i32 }
%union.anon.0 = type { i32 }
%struct.anon.1 = type { i8, i8 }

@.str = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@border = internal constant [19 x i32] [i32 16, i32 17, i32 18, i32 0, i32 8, i32 7, i32 9, i32 6, i32 10, i32 5, i32 11, i32 4, i32 12, i32 3, i32 13, i32 2, i32 14, i32 1, i32 15], align 4
@inflate_mask = external global [17 x i32], align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @inflate_blocks_reset(ptr noundef %s, ptr noundef %z, ptr noundef %c) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  %0 = load ptr, ptr %c.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %check = getelementptr inbounds %struct.inflate_blocks_state, ptr %1, i32 0, i32 11
  %2 = load i64, ptr %check, align 8
  %3 = load ptr, ptr %c.addr, align 8
  store i64 %2, ptr %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %s.addr, align 8
  %mode = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %mode, align 8
  %cmp1 = icmp eq i32 %5, 4
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8
  %mode2 = getelementptr inbounds %struct.inflate_blocks_state, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %mode2, align 8
  %cmp3 = icmp eq i32 %7, 5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %zfree, align 8
  %10 = load ptr, ptr %z.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %opaque, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %sub = getelementptr inbounds %struct.inflate_blocks_state, ptr %12, i32 0, i32 1
  %blens = getelementptr inbounds %struct.anon, ptr %sub, i32 0, i32 2
  %13 = load ptr, ptr %blens, align 8
  call void %9(ptr noundef %11, ptr noundef %13)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false
  %14 = load ptr, ptr %s.addr, align 8
  %mode6 = getelementptr inbounds %struct.inflate_blocks_state, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %mode6, align 8
  %cmp7 = icmp eq i32 %15, 6
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %16 = load ptr, ptr %s.addr, align 8
  %sub9 = getelementptr inbounds %struct.inflate_blocks_state, ptr %16, i32 0, i32 1
  %codes = getelementptr inbounds %struct.anon.2, ptr %sub9, i32 0, i32 0
  %17 = load ptr, ptr %codes, align 8
  %18 = load ptr, ptr %z.addr, align 8
  call void @inflate_codes_free(ptr noundef %17, ptr noundef %18)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5
  %19 = load ptr, ptr %s.addr, align 8
  %mode11 = getelementptr inbounds %struct.inflate_blocks_state, ptr %19, i32 0, i32 0
  store i32 0, ptr %mode11, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %bitk = getelementptr inbounds %struct.inflate_blocks_state, ptr %20, i32 0, i32 3
  store i32 0, ptr %bitk, align 4
  %21 = load ptr, ptr %s.addr, align 8
  %bitb = getelementptr inbounds %struct.inflate_blocks_state, ptr %21, i32 0, i32 4
  store i64 0, ptr %bitb, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %window, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, ptr %24, i32 0, i32 9
  store ptr %23, ptr %write, align 8
  %25 = load ptr, ptr %s.addr, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, ptr %25, i32 0, i32 8
  store ptr %23, ptr %read, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %checkfn = getelementptr inbounds %struct.inflate_blocks_state, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %checkfn, align 8
  %cmp12 = icmp ne ptr %27, null
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  %28 = load ptr, ptr %s.addr, align 8
  %checkfn14 = getelementptr inbounds %struct.inflate_blocks_state, ptr %28, i32 0, i32 10
  %29 = load ptr, ptr %checkfn14, align 8
  %call = call i64 %29(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %30 = load ptr, ptr %s.addr, align 8
  %check15 = getelementptr inbounds %struct.inflate_blocks_state, ptr %30, i32 0, i32 11
  store i64 %call, ptr %check15, align 8
  %31 = load ptr, ptr %z.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 12
  store i64 %call, ptr %adler, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10
  ret void
}

declare void @inflate_codes_free(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @inflate_blocks_new(ptr noundef %z, ptr noundef %c, i32 noundef %w) #0 {
entry:
  %retval = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  %0 = load ptr, ptr %z.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %zalloc, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %opaque, align 8
  %call = call ptr %1(ptr noundef %3, i32 noundef 1, i32 noundef 112)
  store ptr %call, ptr %s, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %s, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %z.addr, align 8
  %zalloc1 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %zalloc1, align 8
  %7 = load ptr, ptr %z.addr, align 8
  %opaque2 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %opaque2, align 8
  %call3 = call ptr %6(ptr noundef %8, i32 noundef 8, i32 noundef 1440)
  %9 = load ptr, ptr %s, align 8
  %hufts = getelementptr inbounds %struct.inflate_blocks_state, ptr %9, i32 0, i32 5
  store ptr %call3, ptr %hufts, align 8
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %zfree, align 8
  %12 = load ptr, ptr %z.addr, align 8
  %opaque6 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %opaque6, align 8
  %14 = load ptr, ptr %s, align 8
  call void %11(ptr noundef %13, ptr noundef %14)
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %15 = load ptr, ptr %z.addr, align 8
  %zalloc8 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %zalloc8, align 8
  %17 = load ptr, ptr %z.addr, align 8
  %opaque9 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 10
  %18 = load ptr, ptr %opaque9, align 8
  %19 = load i32, ptr %w.addr, align 4
  %call10 = call ptr %16(ptr noundef %18, i32 noundef 1, i32 noundef %19)
  %20 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %20, i32 0, i32 6
  store ptr %call10, ptr %window, align 8
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end7
  %21 = load ptr, ptr %z.addr, align 8
  %zfree13 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %zfree13, align 8
  %23 = load ptr, ptr %z.addr, align 8
  %opaque14 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 10
  %24 = load ptr, ptr %opaque14, align 8
  %25 = load ptr, ptr %s, align 8
  %hufts15 = getelementptr inbounds %struct.inflate_blocks_state, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %hufts15, align 8
  call void %22(ptr noundef %24, ptr noundef %26)
  %27 = load ptr, ptr %z.addr, align 8
  %zfree16 = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %zfree16, align 8
  %29 = load ptr, ptr %z.addr, align 8
  %opaque17 = getelementptr inbounds %struct.z_stream_s, ptr %29, i32 0, i32 10
  %30 = load ptr, ptr %opaque17, align 8
  %31 = load ptr, ptr %s, align 8
  call void %28(ptr noundef %30, ptr noundef %31)
  store ptr null, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end7
  %32 = load ptr, ptr %s, align 8
  %window19 = getelementptr inbounds %struct.inflate_blocks_state, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %window19, align 8
  %34 = load i32, ptr %w.addr, align 4
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  %35 = load ptr, ptr %s, align 8
  %end = getelementptr inbounds %struct.inflate_blocks_state, ptr %35, i32 0, i32 7
  store ptr %add.ptr, ptr %end, align 8
  %36 = load ptr, ptr %c.addr, align 8
  %37 = load ptr, ptr %s, align 8
  %checkfn = getelementptr inbounds %struct.inflate_blocks_state, ptr %37, i32 0, i32 10
  store ptr %36, ptr %checkfn, align 8
  %38 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.inflate_blocks_state, ptr %38, i32 0, i32 0
  store i32 0, ptr %mode, align 8
  %39 = load ptr, ptr %s, align 8
  %40 = load ptr, ptr %z.addr, align 8
  call void @inflate_blocks_reset(ptr noundef %39, ptr noundef %40, ptr noundef null)
  %41 = load ptr, ptr %s, align 8
  store ptr %41, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then12, %if.then5, %if.then
  %42 = load ptr, ptr %retval, align 8
  ret ptr %42
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflate_blocks(ptr noundef %s, ptr noundef %z, i32 noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  %t = alloca i32, align 4
  %b = alloca i64, align 8
  %k = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %q = alloca ptr, align 8
  %m = alloca i32, align 4
  %bl = alloca i32, align 4
  %bd = alloca i32, align 4
  %tl = alloca ptr, align 8
  %td = alloca ptr, align 8
  %h = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %bl639 = alloca i32, align 4
  %bd640 = alloca i32, align 4
  %tl641 = alloca ptr, align 8
  %td642 = alloca ptr, align 8
  %c643 = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %r, ptr %r.addr, align 4
  %0 = load ptr, ptr %z.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next_in, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %avail_in, align 8
  store i32 %3, ptr %n, align 4
  %4 = load ptr, ptr %s.addr, align 8
  %bitb = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i32 0, i32 4
  %5 = load i64, ptr %bitb, align 8
  store i64 %5, ptr %b, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %bitk = getelementptr inbounds %struct.inflate_blocks_state, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %bitk, align 4
  store i32 %7, ptr %k, align 4
  %8 = load ptr, ptr %s.addr, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %write, align 8
  store ptr %9, ptr %q, align 8
  %10 = load ptr, ptr %q, align 8
  %11 = load ptr, ptr %s.addr, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %read, align 8
  %cmp = icmp ult ptr %10, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load ptr, ptr %s.addr, align 8
  %read1 = getelementptr inbounds %struct.inflate_blocks_state, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %read1, align 8
  %15 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load ptr, ptr %s.addr, align 8
  %end = getelementptr inbounds %struct.inflate_blocks_state, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %end, align 8
  %18 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast2 = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast3 = ptrtoint ptr %18 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %sub.ptr.sub4, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, ptr %m, align 4
  br label %while.body

while.body:                                       ; preds = %cond.end, %sw.epilog826
  %19 = load ptr, ptr %s.addr, align 8
  %mode = getelementptr inbounds %struct.inflate_blocks_state, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %mode, align 8
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb75
    i32 2, label %sw.bb138
    i32 3, label %sw.bb278
    i32 4, label %sw.bb360
    i32 5, label %sw.bb460
    i32 6, label %sw.bb700
    i32 7, label %sw.bb748
    i32 8, label %sw.bb788
    i32 9, label %sw.bb801
  ]

sw.bb:                                            ; preds = %while.body
  br label %while.cond5

while.cond5:                                      ; preds = %if.end, %sw.bb
  %21 = load i32, ptr %k, align 4
  %cmp6 = icmp ult i32 %21, 3
  br i1 %cmp6, label %while.body8, label %while.end

while.body8:                                      ; preds = %while.cond5
  %22 = load i32, ptr %n, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body8
  store i32 0, ptr %r.addr, align 4
  br label %if.end

if.else:                                          ; preds = %while.body8
  %23 = load i64, ptr %b, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %bitb9 = getelementptr inbounds %struct.inflate_blocks_state, ptr %24, i32 0, i32 4
  store i64 %23, ptr %bitb9, align 8
  %25 = load i32, ptr %k, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %bitk10 = getelementptr inbounds %struct.inflate_blocks_state, ptr %26, i32 0, i32 3
  store i32 %25, ptr %bitk10, align 4
  %27 = load i32, ptr %n, align 4
  %28 = load ptr, ptr %z.addr, align 8
  %avail_in11 = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 1
  store i32 %27, ptr %avail_in11, align 8
  %29 = load ptr, ptr %p, align 8
  %30 = load ptr, ptr %z.addr, align 8
  %next_in12 = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %next_in12, align 8
  %sub.ptr.lhs.cast13 = ptrtoint ptr %29 to i64
  %sub.ptr.rhs.cast14 = ptrtoint ptr %31 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %32 = load ptr, ptr %z.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 2
  %33 = load i64, ptr %total_in, align 8
  %add = add i64 %33, %sub.ptr.sub15
  store i64 %add, ptr %total_in, align 8
  %34 = load ptr, ptr %p, align 8
  %35 = load ptr, ptr %z.addr, align 8
  %next_in16 = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 0
  store ptr %34, ptr %next_in16, align 8
  %36 = load ptr, ptr %q, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %write17 = getelementptr inbounds %struct.inflate_blocks_state, ptr %37, i32 0, i32 9
  store ptr %36, ptr %write17, align 8
  %38 = load ptr, ptr %s.addr, align 8
  %39 = load ptr, ptr %z.addr, align 8
  %40 = load i32, ptr %r.addr, align 4
  %call = call i32 @inflate_flush(ptr noundef %38, ptr noundef %39, i32 noundef %40)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %41 = load i32, ptr %n, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %n, align 4
  %42 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %43 = load i8, ptr %42, align 1
  %conv18 = zext i8 %43 to i64
  %44 = load i32, ptr %k, align 4
  %sh_prom = zext i32 %44 to i64
  %shl = shl i64 %conv18, %sh_prom
  %45 = load i64, ptr %b, align 8
  %or = or i64 %45, %shl
  store i64 %or, ptr %b, align 8
  %46 = load i32, ptr %k, align 4
  %add19 = add i32 %46, 8
  store i32 %add19, ptr %k, align 4
  br label %while.cond5, !llvm.loop !6

while.end:                                        ; preds = %while.cond5
  %47 = load i64, ptr %b, align 8
  %conv20 = trunc i64 %47 to i32
  %and = and i32 %conv20, 7
  store i32 %and, ptr %t, align 4
  %48 = load i32, ptr %t, align 4
  %and21 = and i32 %48, 1
  %49 = load ptr, ptr %s.addr, align 8
  %last = getelementptr inbounds %struct.inflate_blocks_state, ptr %49, i32 0, i32 2
  store i32 %and21, ptr %last, align 8
  %50 = load i32, ptr %t, align 4
  %shr = lshr i32 %50, 1
  switch i32 %shr, label %sw.epilog [
    i32 0, label %sw.bb22
    i32 1, label %sw.bb30
    i32 2, label %sw.bb55
    i32 3, label %sw.bb59
  ]

sw.bb22:                                          ; preds = %while.end
  %51 = load i64, ptr %b, align 8
  %shr23 = lshr i64 %51, 3
  store i64 %shr23, ptr %b, align 8
  %52 = load i32, ptr %k, align 4
  %sub24 = sub i32 %52, 3
  store i32 %sub24, ptr %k, align 4
  %53 = load i32, ptr %k, align 4
  %and25 = and i32 %53, 7
  store i32 %and25, ptr %t, align 4
  %54 = load i32, ptr %t, align 4
  %55 = load i64, ptr %b, align 8
  %sh_prom26 = zext i32 %54 to i64
  %shr27 = lshr i64 %55, %sh_prom26
  store i64 %shr27, ptr %b, align 8
  %56 = load i32, ptr %t, align 4
  %57 = load i32, ptr %k, align 4
  %sub28 = sub i32 %57, %56
  store i32 %sub28, ptr %k, align 4
  %58 = load ptr, ptr %s.addr, align 8
  %mode29 = getelementptr inbounds %struct.inflate_blocks_state, ptr %58, i32 0, i32 0
  store i32 1, ptr %mode29, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %while.end
  %59 = load ptr, ptr %z.addr, align 8
  %call31 = call i32 @inflate_trees_fixed(ptr noundef %bl, ptr noundef %bd, ptr noundef %tl, ptr noundef %td, ptr noundef %59)
  %60 = load i32, ptr %bl, align 4
  %61 = load i32, ptr %bd, align 4
  %62 = load ptr, ptr %tl, align 8
  %63 = load ptr, ptr %td, align 8
  %64 = load ptr, ptr %z.addr, align 8
  %call32 = call ptr @inflate_codes_new(i32 noundef %60, i32 noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %64)
  %65 = load ptr, ptr %s.addr, align 8
  %sub33 = getelementptr inbounds %struct.inflate_blocks_state, ptr %65, i32 0, i32 1
  %codes = getelementptr inbounds %struct.anon.2, ptr %sub33, i32 0, i32 0
  store ptr %call32, ptr %codes, align 8
  %66 = load ptr, ptr %s.addr, align 8
  %sub34 = getelementptr inbounds %struct.inflate_blocks_state, ptr %66, i32 0, i32 1
  %codes35 = getelementptr inbounds %struct.anon.2, ptr %sub34, i32 0, i32 0
  %67 = load ptr, ptr %codes35, align 8
  %cmp36 = icmp eq ptr %67, null
  br i1 %cmp36, label %if.then38, label %if.end51

if.then38:                                        ; preds = %sw.bb30
  store i32 -4, ptr %r.addr, align 4
  %68 = load i64, ptr %b, align 8
  %69 = load ptr, ptr %s.addr, align 8
  %bitb39 = getelementptr inbounds %struct.inflate_blocks_state, ptr %69, i32 0, i32 4
  store i64 %68, ptr %bitb39, align 8
  %70 = load i32, ptr %k, align 4
  %71 = load ptr, ptr %s.addr, align 8
  %bitk40 = getelementptr inbounds %struct.inflate_blocks_state, ptr %71, i32 0, i32 3
  store i32 %70, ptr %bitk40, align 4
  %72 = load i32, ptr %n, align 4
  %73 = load ptr, ptr %z.addr, align 8
  %avail_in41 = getelementptr inbounds %struct.z_stream_s, ptr %73, i32 0, i32 1
  store i32 %72, ptr %avail_in41, align 8
  %74 = load ptr, ptr %p, align 8
  %75 = load ptr, ptr %z.addr, align 8
  %next_in42 = getelementptr inbounds %struct.z_stream_s, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %next_in42, align 8
  %sub.ptr.lhs.cast43 = ptrtoint ptr %74 to i64
  %sub.ptr.rhs.cast44 = ptrtoint ptr %76 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %77 = load ptr, ptr %z.addr, align 8
  %total_in46 = getelementptr inbounds %struct.z_stream_s, ptr %77, i32 0, i32 2
  %78 = load i64, ptr %total_in46, align 8
  %add47 = add i64 %78, %sub.ptr.sub45
  store i64 %add47, ptr %total_in46, align 8
  %79 = load ptr, ptr %p, align 8
  %80 = load ptr, ptr %z.addr, align 8
  %next_in48 = getelementptr inbounds %struct.z_stream_s, ptr %80, i32 0, i32 0
  store ptr %79, ptr %next_in48, align 8
  %81 = load ptr, ptr %q, align 8
  %82 = load ptr, ptr %s.addr, align 8
  %write49 = getelementptr inbounds %struct.inflate_blocks_state, ptr %82, i32 0, i32 9
  store ptr %81, ptr %write49, align 8
  %83 = load ptr, ptr %s.addr, align 8
  %84 = load ptr, ptr %z.addr, align 8
  %85 = load i32, ptr %r.addr, align 4
  %call50 = call i32 @inflate_flush(ptr noundef %83, ptr noundef %84, i32 noundef %85)
  store i32 %call50, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %sw.bb30
  %86 = load i64, ptr %b, align 8
  %shr52 = lshr i64 %86, 3
  store i64 %shr52, ptr %b, align 8
  %87 = load i32, ptr %k, align 4
  %sub53 = sub i32 %87, 3
  store i32 %sub53, ptr %k, align 4
  %88 = load ptr, ptr %s.addr, align 8
  %mode54 = getelementptr inbounds %struct.inflate_blocks_state, ptr %88, i32 0, i32 0
  store i32 6, ptr %mode54, align 8
  br label %sw.epilog

sw.bb55:                                          ; preds = %while.end
  %89 = load i64, ptr %b, align 8
  %shr56 = lshr i64 %89, 3
  store i64 %shr56, ptr %b, align 8
  %90 = load i32, ptr %k, align 4
  %sub57 = sub i32 %90, 3
  store i32 %sub57, ptr %k, align 4
  %91 = load ptr, ptr %s.addr, align 8
  %mode58 = getelementptr inbounds %struct.inflate_blocks_state, ptr %91, i32 0, i32 0
  store i32 3, ptr %mode58, align 8
  br label %sw.epilog

sw.bb59:                                          ; preds = %while.end
  %92 = load i64, ptr %b, align 8
  %shr60 = lshr i64 %92, 3
  store i64 %shr60, ptr %b, align 8
  %93 = load i32, ptr %k, align 4
  %sub61 = sub i32 %93, 3
  store i32 %sub61, ptr %k, align 4
  %94 = load ptr, ptr %s.addr, align 8
  %mode62 = getelementptr inbounds %struct.inflate_blocks_state, ptr %94, i32 0, i32 0
  store i32 9, ptr %mode62, align 8
  %95 = load ptr, ptr %z.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %95, i32 0, i32 6
  store ptr @.str, ptr %msg, align 8
  store i32 -3, ptr %r.addr, align 4
  %96 = load i64, ptr %b, align 8
  %97 = load ptr, ptr %s.addr, align 8
  %bitb63 = getelementptr inbounds %struct.inflate_blocks_state, ptr %97, i32 0, i32 4
  store i64 %96, ptr %bitb63, align 8
  %98 = load i32, ptr %k, align 4
  %99 = load ptr, ptr %s.addr, align 8
  %bitk64 = getelementptr inbounds %struct.inflate_blocks_state, ptr %99, i32 0, i32 3
  store i32 %98, ptr %bitk64, align 4
  %100 = load i32, ptr %n, align 4
  %101 = load ptr, ptr %z.addr, align 8
  %avail_in65 = getelementptr inbounds %struct.z_stream_s, ptr %101, i32 0, i32 1
  store i32 %100, ptr %avail_in65, align 8
  %102 = load ptr, ptr %p, align 8
  %103 = load ptr, ptr %z.addr, align 8
  %next_in66 = getelementptr inbounds %struct.z_stream_s, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %next_in66, align 8
  %sub.ptr.lhs.cast67 = ptrtoint ptr %102 to i64
  %sub.ptr.rhs.cast68 = ptrtoint ptr %104 to i64
  %sub.ptr.sub69 = sub i64 %sub.ptr.lhs.cast67, %sub.ptr.rhs.cast68
  %105 = load ptr, ptr %z.addr, align 8
  %total_in70 = getelementptr inbounds %struct.z_stream_s, ptr %105, i32 0, i32 2
  %106 = load i64, ptr %total_in70, align 8
  %add71 = add i64 %106, %sub.ptr.sub69
  store i64 %add71, ptr %total_in70, align 8
  %107 = load ptr, ptr %p, align 8
  %108 = load ptr, ptr %z.addr, align 8
  %next_in72 = getelementptr inbounds %struct.z_stream_s, ptr %108, i32 0, i32 0
  store ptr %107, ptr %next_in72, align 8
  %109 = load ptr, ptr %q, align 8
  %110 = load ptr, ptr %s.addr, align 8
  %write73 = getelementptr inbounds %struct.inflate_blocks_state, ptr %110, i32 0, i32 9
  store ptr %109, ptr %write73, align 8
  %111 = load ptr, ptr %s.addr, align 8
  %112 = load ptr, ptr %z.addr, align 8
  %113 = load i32, ptr %r.addr, align 4
  %call74 = call i32 @inflate_flush(ptr noundef %111, ptr noundef %112, i32 noundef %113)
  store i32 %call74, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %while.end, %sw.bb55, %if.end51, %sw.bb22
  br label %sw.epilog826

sw.bb75:                                          ; preds = %while.body
  br label %while.cond76

while.cond76:                                     ; preds = %if.end95, %sw.bb75
  %114 = load i32, ptr %k, align 4
  %cmp77 = icmp ult i32 %114, 32
  br i1 %cmp77, label %while.body79, label %while.end103

while.body79:                                     ; preds = %while.cond76
  %115 = load i32, ptr %n, align 4
  %tobool80 = icmp ne i32 %115, 0
  br i1 %tobool80, label %if.then81, label %if.else82

if.then81:                                        ; preds = %while.body79
  store i32 0, ptr %r.addr, align 4
  br label %if.end95

if.else82:                                        ; preds = %while.body79
  %116 = load i64, ptr %b, align 8
  %117 = load ptr, ptr %s.addr, align 8
  %bitb83 = getelementptr inbounds %struct.inflate_blocks_state, ptr %117, i32 0, i32 4
  store i64 %116, ptr %bitb83, align 8
  %118 = load i32, ptr %k, align 4
  %119 = load ptr, ptr %s.addr, align 8
  %bitk84 = getelementptr inbounds %struct.inflate_blocks_state, ptr %119, i32 0, i32 3
  store i32 %118, ptr %bitk84, align 4
  %120 = load i32, ptr %n, align 4
  %121 = load ptr, ptr %z.addr, align 8
  %avail_in85 = getelementptr inbounds %struct.z_stream_s, ptr %121, i32 0, i32 1
  store i32 %120, ptr %avail_in85, align 8
  %122 = load ptr, ptr %p, align 8
  %123 = load ptr, ptr %z.addr, align 8
  %next_in86 = getelementptr inbounds %struct.z_stream_s, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %next_in86, align 8
  %sub.ptr.lhs.cast87 = ptrtoint ptr %122 to i64
  %sub.ptr.rhs.cast88 = ptrtoint ptr %124 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %125 = load ptr, ptr %z.addr, align 8
  %total_in90 = getelementptr inbounds %struct.z_stream_s, ptr %125, i32 0, i32 2
  %126 = load i64, ptr %total_in90, align 8
  %add91 = add i64 %126, %sub.ptr.sub89
  store i64 %add91, ptr %total_in90, align 8
  %127 = load ptr, ptr %p, align 8
  %128 = load ptr, ptr %z.addr, align 8
  %next_in92 = getelementptr inbounds %struct.z_stream_s, ptr %128, i32 0, i32 0
  store ptr %127, ptr %next_in92, align 8
  %129 = load ptr, ptr %q, align 8
  %130 = load ptr, ptr %s.addr, align 8
  %write93 = getelementptr inbounds %struct.inflate_blocks_state, ptr %130, i32 0, i32 9
  store ptr %129, ptr %write93, align 8
  %131 = load ptr, ptr %s.addr, align 8
  %132 = load ptr, ptr %z.addr, align 8
  %133 = load i32, ptr %r.addr, align 4
  %call94 = call i32 @inflate_flush(ptr noundef %131, ptr noundef %132, i32 noundef %133)
  store i32 %call94, ptr %retval, align 4
  br label %return

if.end95:                                         ; preds = %if.then81
  %134 = load i32, ptr %n, align 4
  %dec96 = add i32 %134, -1
  store i32 %dec96, ptr %n, align 4
  %135 = load ptr, ptr %p, align 8
  %incdec.ptr97 = getelementptr inbounds i8, ptr %135, i32 1
  store ptr %incdec.ptr97, ptr %p, align 8
  %136 = load i8, ptr %135, align 1
  %conv98 = zext i8 %136 to i64
  %137 = load i32, ptr %k, align 4
  %sh_prom99 = zext i32 %137 to i64
  %shl100 = shl i64 %conv98, %sh_prom99
  %138 = load i64, ptr %b, align 8
  %or101 = or i64 %138, %shl100
  store i64 %or101, ptr %b, align 8
  %139 = load i32, ptr %k, align 4
  %add102 = add i32 %139, 8
  store i32 %add102, ptr %k, align 4
  br label %while.cond76, !llvm.loop !8

while.end103:                                     ; preds = %while.cond76
  %140 = load i64, ptr %b, align 8
  %neg = xor i64 %140, -1
  %shr104 = lshr i64 %neg, 16
  %and105 = and i64 %shr104, 65535
  %141 = load i64, ptr %b, align 8
  %and106 = and i64 %141, 65535
  %cmp107 = icmp ne i64 %and105, %and106
  br i1 %cmp107, label %if.then109, label %if.end124

if.then109:                                       ; preds = %while.end103
  %142 = load ptr, ptr %s.addr, align 8
  %mode110 = getelementptr inbounds %struct.inflate_blocks_state, ptr %142, i32 0, i32 0
  store i32 9, ptr %mode110, align 8
  %143 = load ptr, ptr %z.addr, align 8
  %msg111 = getelementptr inbounds %struct.z_stream_s, ptr %143, i32 0, i32 6
  store ptr @.str.1, ptr %msg111, align 8
  store i32 -3, ptr %r.addr, align 4
  %144 = load i64, ptr %b, align 8
  %145 = load ptr, ptr %s.addr, align 8
  %bitb112 = getelementptr inbounds %struct.inflate_blocks_state, ptr %145, i32 0, i32 4
  store i64 %144, ptr %bitb112, align 8
  %146 = load i32, ptr %k, align 4
  %147 = load ptr, ptr %s.addr, align 8
  %bitk113 = getelementptr inbounds %struct.inflate_blocks_state, ptr %147, i32 0, i32 3
  store i32 %146, ptr %bitk113, align 4
  %148 = load i32, ptr %n, align 4
  %149 = load ptr, ptr %z.addr, align 8
  %avail_in114 = getelementptr inbounds %struct.z_stream_s, ptr %149, i32 0, i32 1
  store i32 %148, ptr %avail_in114, align 8
  %150 = load ptr, ptr %p, align 8
  %151 = load ptr, ptr %z.addr, align 8
  %next_in115 = getelementptr inbounds %struct.z_stream_s, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %next_in115, align 8
  %sub.ptr.lhs.cast116 = ptrtoint ptr %150 to i64
  %sub.ptr.rhs.cast117 = ptrtoint ptr %152 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %153 = load ptr, ptr %z.addr, align 8
  %total_in119 = getelementptr inbounds %struct.z_stream_s, ptr %153, i32 0, i32 2
  %154 = load i64, ptr %total_in119, align 8
  %add120 = add i64 %154, %sub.ptr.sub118
  store i64 %add120, ptr %total_in119, align 8
  %155 = load ptr, ptr %p, align 8
  %156 = load ptr, ptr %z.addr, align 8
  %next_in121 = getelementptr inbounds %struct.z_stream_s, ptr %156, i32 0, i32 0
  store ptr %155, ptr %next_in121, align 8
  %157 = load ptr, ptr %q, align 8
  %158 = load ptr, ptr %s.addr, align 8
  %write122 = getelementptr inbounds %struct.inflate_blocks_state, ptr %158, i32 0, i32 9
  store ptr %157, ptr %write122, align 8
  %159 = load ptr, ptr %s.addr, align 8
  %160 = load ptr, ptr %z.addr, align 8
  %161 = load i32, ptr %r.addr, align 4
  %call123 = call i32 @inflate_flush(ptr noundef %159, ptr noundef %160, i32 noundef %161)
  store i32 %call123, ptr %retval, align 4
  br label %return

if.end124:                                        ; preds = %while.end103
  %162 = load i64, ptr %b, align 8
  %conv125 = trunc i64 %162 to i32
  %and126 = and i32 %conv125, 65535
  %163 = load ptr, ptr %s.addr, align 8
  %sub127 = getelementptr inbounds %struct.inflate_blocks_state, ptr %163, i32 0, i32 1
  store i32 %and126, ptr %sub127, align 8
  store i32 0, ptr %k, align 4
  store i64 0, ptr %b, align 8
  %164 = load ptr, ptr %s.addr, align 8
  %sub128 = getelementptr inbounds %struct.inflate_blocks_state, ptr %164, i32 0, i32 1
  %165 = load i32, ptr %sub128, align 8
  %tobool129 = icmp ne i32 %165, 0
  br i1 %tobool129, label %cond.true130, label %cond.false131

cond.true130:                                     ; preds = %if.end124
  br label %cond.end135

cond.false131:                                    ; preds = %if.end124
  %166 = load ptr, ptr %s.addr, align 8
  %last132 = getelementptr inbounds %struct.inflate_blocks_state, ptr %166, i32 0, i32 2
  %167 = load i32, ptr %last132, align 8
  %tobool133 = icmp ne i32 %167, 0
  %168 = zext i1 %tobool133 to i64
  %cond134 = select i1 %tobool133, i32 7, i32 0
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false131, %cond.true130
  %cond136 = phi i32 [ 2, %cond.true130 ], [ %cond134, %cond.false131 ]
  %169 = load ptr, ptr %s.addr, align 8
  %mode137 = getelementptr inbounds %struct.inflate_blocks_state, ptr %169, i32 0, i32 0
  store i32 %cond136, ptr %mode137, align 8
  br label %sw.epilog826

sw.bb138:                                         ; preds = %while.body
  %170 = load i32, ptr %n, align 4
  %cmp139 = icmp eq i32 %170, 0
  br i1 %cmp139, label %if.then141, label %if.end154

if.then141:                                       ; preds = %sw.bb138
  %171 = load i64, ptr %b, align 8
  %172 = load ptr, ptr %s.addr, align 8
  %bitb142 = getelementptr inbounds %struct.inflate_blocks_state, ptr %172, i32 0, i32 4
  store i64 %171, ptr %bitb142, align 8
  %173 = load i32, ptr %k, align 4
  %174 = load ptr, ptr %s.addr, align 8
  %bitk143 = getelementptr inbounds %struct.inflate_blocks_state, ptr %174, i32 0, i32 3
  store i32 %173, ptr %bitk143, align 4
  %175 = load i32, ptr %n, align 4
  %176 = load ptr, ptr %z.addr, align 8
  %avail_in144 = getelementptr inbounds %struct.z_stream_s, ptr %176, i32 0, i32 1
  store i32 %175, ptr %avail_in144, align 8
  %177 = load ptr, ptr %p, align 8
  %178 = load ptr, ptr %z.addr, align 8
  %next_in145 = getelementptr inbounds %struct.z_stream_s, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %next_in145, align 8
  %sub.ptr.lhs.cast146 = ptrtoint ptr %177 to i64
  %sub.ptr.rhs.cast147 = ptrtoint ptr %179 to i64
  %sub.ptr.sub148 = sub i64 %sub.ptr.lhs.cast146, %sub.ptr.rhs.cast147
  %180 = load ptr, ptr %z.addr, align 8
  %total_in149 = getelementptr inbounds %struct.z_stream_s, ptr %180, i32 0, i32 2
  %181 = load i64, ptr %total_in149, align 8
  %add150 = add i64 %181, %sub.ptr.sub148
  store i64 %add150, ptr %total_in149, align 8
  %182 = load ptr, ptr %p, align 8
  %183 = load ptr, ptr %z.addr, align 8
  %next_in151 = getelementptr inbounds %struct.z_stream_s, ptr %183, i32 0, i32 0
  store ptr %182, ptr %next_in151, align 8
  %184 = load ptr, ptr %q, align 8
  %185 = load ptr, ptr %s.addr, align 8
  %write152 = getelementptr inbounds %struct.inflate_blocks_state, ptr %185, i32 0, i32 9
  store ptr %184, ptr %write152, align 8
  %186 = load ptr, ptr %s.addr, align 8
  %187 = load ptr, ptr %z.addr, align 8
  %188 = load i32, ptr %r.addr, align 4
  %call153 = call i32 @inflate_flush(ptr noundef %186, ptr noundef %187, i32 noundef %188)
  store i32 %call153, ptr %retval, align 4
  br label %return

if.end154:                                        ; preds = %sw.bb138
  %189 = load i32, ptr %m, align 4
  %cmp155 = icmp eq i32 %189, 0
  br i1 %cmp155, label %if.then157, label %if.end252

if.then157:                                       ; preds = %if.end154
  %190 = load ptr, ptr %q, align 8
  %191 = load ptr, ptr %s.addr, align 8
  %end158 = getelementptr inbounds %struct.inflate_blocks_state, ptr %191, i32 0, i32 7
  %192 = load ptr, ptr %end158, align 8
  %cmp159 = icmp eq ptr %190, %192
  br i1 %cmp159, label %land.lhs.true, label %if.end183

land.lhs.true:                                    ; preds = %if.then157
  %193 = load ptr, ptr %s.addr, align 8
  %read161 = getelementptr inbounds %struct.inflate_blocks_state, ptr %193, i32 0, i32 8
  %194 = load ptr, ptr %read161, align 8
  %195 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %195, i32 0, i32 6
  %196 = load ptr, ptr %window, align 8
  %cmp162 = icmp ne ptr %194, %196
  br i1 %cmp162, label %if.then164, label %if.end183

if.then164:                                       ; preds = %land.lhs.true
  %197 = load ptr, ptr %s.addr, align 8
  %window165 = getelementptr inbounds %struct.inflate_blocks_state, ptr %197, i32 0, i32 6
  %198 = load ptr, ptr %window165, align 8
  store ptr %198, ptr %q, align 8
  %199 = load ptr, ptr %q, align 8
  %200 = load ptr, ptr %s.addr, align 8
  %read166 = getelementptr inbounds %struct.inflate_blocks_state, ptr %200, i32 0, i32 8
  %201 = load ptr, ptr %read166, align 8
  %cmp167 = icmp ult ptr %199, %201
  br i1 %cmp167, label %cond.true169, label %cond.false175

cond.true169:                                     ; preds = %if.then164
  %202 = load ptr, ptr %s.addr, align 8
  %read170 = getelementptr inbounds %struct.inflate_blocks_state, ptr %202, i32 0, i32 8
  %203 = load ptr, ptr %read170, align 8
  %204 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast171 = ptrtoint ptr %203 to i64
  %sub.ptr.rhs.cast172 = ptrtoint ptr %204 to i64
  %sub.ptr.sub173 = sub i64 %sub.ptr.lhs.cast171, %sub.ptr.rhs.cast172
  %sub174 = sub nsw i64 %sub.ptr.sub173, 1
  br label %cond.end180

cond.false175:                                    ; preds = %if.then164
  %205 = load ptr, ptr %s.addr, align 8
  %end176 = getelementptr inbounds %struct.inflate_blocks_state, ptr %205, i32 0, i32 7
  %206 = load ptr, ptr %end176, align 8
  %207 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast177 = ptrtoint ptr %206 to i64
  %sub.ptr.rhs.cast178 = ptrtoint ptr %207 to i64
  %sub.ptr.sub179 = sub i64 %sub.ptr.lhs.cast177, %sub.ptr.rhs.cast178
  br label %cond.end180

cond.end180:                                      ; preds = %cond.false175, %cond.true169
  %cond181 = phi i64 [ %sub174, %cond.true169 ], [ %sub.ptr.sub179, %cond.false175 ]
  %conv182 = trunc i64 %cond181 to i32
  store i32 %conv182, ptr %m, align 4
  br label %if.end183

if.end183:                                        ; preds = %cond.end180, %land.lhs.true, %if.then157
  %208 = load i32, ptr %m, align 4
  %cmp184 = icmp eq i32 %208, 0
  br i1 %cmp184, label %if.then186, label %if.end251

if.then186:                                       ; preds = %if.end183
  %209 = load ptr, ptr %q, align 8
  %210 = load ptr, ptr %s.addr, align 8
  %write187 = getelementptr inbounds %struct.inflate_blocks_state, ptr %210, i32 0, i32 9
  store ptr %209, ptr %write187, align 8
  %211 = load ptr, ptr %s.addr, align 8
  %212 = load ptr, ptr %z.addr, align 8
  %213 = load i32, ptr %r.addr, align 4
  %call188 = call i32 @inflate_flush(ptr noundef %211, ptr noundef %212, i32 noundef %213)
  store i32 %call188, ptr %r.addr, align 4
  %214 = load ptr, ptr %s.addr, align 8
  %write189 = getelementptr inbounds %struct.inflate_blocks_state, ptr %214, i32 0, i32 9
  %215 = load ptr, ptr %write189, align 8
  store ptr %215, ptr %q, align 8
  %216 = load ptr, ptr %q, align 8
  %217 = load ptr, ptr %s.addr, align 8
  %read190 = getelementptr inbounds %struct.inflate_blocks_state, ptr %217, i32 0, i32 8
  %218 = load ptr, ptr %read190, align 8
  %cmp191 = icmp ult ptr %216, %218
  br i1 %cmp191, label %cond.true193, label %cond.false199

cond.true193:                                     ; preds = %if.then186
  %219 = load ptr, ptr %s.addr, align 8
  %read194 = getelementptr inbounds %struct.inflate_blocks_state, ptr %219, i32 0, i32 8
  %220 = load ptr, ptr %read194, align 8
  %221 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast195 = ptrtoint ptr %220 to i64
  %sub.ptr.rhs.cast196 = ptrtoint ptr %221 to i64
  %sub.ptr.sub197 = sub i64 %sub.ptr.lhs.cast195, %sub.ptr.rhs.cast196
  %sub198 = sub nsw i64 %sub.ptr.sub197, 1
  br label %cond.end204

cond.false199:                                    ; preds = %if.then186
  %222 = load ptr, ptr %s.addr, align 8
  %end200 = getelementptr inbounds %struct.inflate_blocks_state, ptr %222, i32 0, i32 7
  %223 = load ptr, ptr %end200, align 8
  %224 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast201 = ptrtoint ptr %223 to i64
  %sub.ptr.rhs.cast202 = ptrtoint ptr %224 to i64
  %sub.ptr.sub203 = sub i64 %sub.ptr.lhs.cast201, %sub.ptr.rhs.cast202
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false199, %cond.true193
  %cond205 = phi i64 [ %sub198, %cond.true193 ], [ %sub.ptr.sub203, %cond.false199 ]
  %conv206 = trunc i64 %cond205 to i32
  store i32 %conv206, ptr %m, align 4
  %225 = load ptr, ptr %q, align 8
  %226 = load ptr, ptr %s.addr, align 8
  %end207 = getelementptr inbounds %struct.inflate_blocks_state, ptr %226, i32 0, i32 7
  %227 = load ptr, ptr %end207, align 8
  %cmp208 = icmp eq ptr %225, %227
  br i1 %cmp208, label %land.lhs.true210, label %if.end234

land.lhs.true210:                                 ; preds = %cond.end204
  %228 = load ptr, ptr %s.addr, align 8
  %read211 = getelementptr inbounds %struct.inflate_blocks_state, ptr %228, i32 0, i32 8
  %229 = load ptr, ptr %read211, align 8
  %230 = load ptr, ptr %s.addr, align 8
  %window212 = getelementptr inbounds %struct.inflate_blocks_state, ptr %230, i32 0, i32 6
  %231 = load ptr, ptr %window212, align 8
  %cmp213 = icmp ne ptr %229, %231
  br i1 %cmp213, label %if.then215, label %if.end234

if.then215:                                       ; preds = %land.lhs.true210
  %232 = load ptr, ptr %s.addr, align 8
  %window216 = getelementptr inbounds %struct.inflate_blocks_state, ptr %232, i32 0, i32 6
  %233 = load ptr, ptr %window216, align 8
  store ptr %233, ptr %q, align 8
  %234 = load ptr, ptr %q, align 8
  %235 = load ptr, ptr %s.addr, align 8
  %read217 = getelementptr inbounds %struct.inflate_blocks_state, ptr %235, i32 0, i32 8
  %236 = load ptr, ptr %read217, align 8
  %cmp218 = icmp ult ptr %234, %236
  br i1 %cmp218, label %cond.true220, label %cond.false226

cond.true220:                                     ; preds = %if.then215
  %237 = load ptr, ptr %s.addr, align 8
  %read221 = getelementptr inbounds %struct.inflate_blocks_state, ptr %237, i32 0, i32 8
  %238 = load ptr, ptr %read221, align 8
  %239 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast222 = ptrtoint ptr %238 to i64
  %sub.ptr.rhs.cast223 = ptrtoint ptr %239 to i64
  %sub.ptr.sub224 = sub i64 %sub.ptr.lhs.cast222, %sub.ptr.rhs.cast223
  %sub225 = sub nsw i64 %sub.ptr.sub224, 1
  br label %cond.end231

cond.false226:                                    ; preds = %if.then215
  %240 = load ptr, ptr %s.addr, align 8
  %end227 = getelementptr inbounds %struct.inflate_blocks_state, ptr %240, i32 0, i32 7
  %241 = load ptr, ptr %end227, align 8
  %242 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast228 = ptrtoint ptr %241 to i64
  %sub.ptr.rhs.cast229 = ptrtoint ptr %242 to i64
  %sub.ptr.sub230 = sub i64 %sub.ptr.lhs.cast228, %sub.ptr.rhs.cast229
  br label %cond.end231

cond.end231:                                      ; preds = %cond.false226, %cond.true220
  %cond232 = phi i64 [ %sub225, %cond.true220 ], [ %sub.ptr.sub230, %cond.false226 ]
  %conv233 = trunc i64 %cond232 to i32
  store i32 %conv233, ptr %m, align 4
  br label %if.end234

if.end234:                                        ; preds = %cond.end231, %land.lhs.true210, %cond.end204
  %243 = load i32, ptr %m, align 4
  %cmp235 = icmp eq i32 %243, 0
  br i1 %cmp235, label %if.then237, label %if.end250

if.then237:                                       ; preds = %if.end234
  %244 = load i64, ptr %b, align 8
  %245 = load ptr, ptr %s.addr, align 8
  %bitb238 = getelementptr inbounds %struct.inflate_blocks_state, ptr %245, i32 0, i32 4
  store i64 %244, ptr %bitb238, align 8
  %246 = load i32, ptr %k, align 4
  %247 = load ptr, ptr %s.addr, align 8
  %bitk239 = getelementptr inbounds %struct.inflate_blocks_state, ptr %247, i32 0, i32 3
  store i32 %246, ptr %bitk239, align 4
  %248 = load i32, ptr %n, align 4
  %249 = load ptr, ptr %z.addr, align 8
  %avail_in240 = getelementptr inbounds %struct.z_stream_s, ptr %249, i32 0, i32 1
  store i32 %248, ptr %avail_in240, align 8
  %250 = load ptr, ptr %p, align 8
  %251 = load ptr, ptr %z.addr, align 8
  %next_in241 = getelementptr inbounds %struct.z_stream_s, ptr %251, i32 0, i32 0
  %252 = load ptr, ptr %next_in241, align 8
  %sub.ptr.lhs.cast242 = ptrtoint ptr %250 to i64
  %sub.ptr.rhs.cast243 = ptrtoint ptr %252 to i64
  %sub.ptr.sub244 = sub i64 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243
  %253 = load ptr, ptr %z.addr, align 8
  %total_in245 = getelementptr inbounds %struct.z_stream_s, ptr %253, i32 0, i32 2
  %254 = load i64, ptr %total_in245, align 8
  %add246 = add i64 %254, %sub.ptr.sub244
  store i64 %add246, ptr %total_in245, align 8
  %255 = load ptr, ptr %p, align 8
  %256 = load ptr, ptr %z.addr, align 8
  %next_in247 = getelementptr inbounds %struct.z_stream_s, ptr %256, i32 0, i32 0
  store ptr %255, ptr %next_in247, align 8
  %257 = load ptr, ptr %q, align 8
  %258 = load ptr, ptr %s.addr, align 8
  %write248 = getelementptr inbounds %struct.inflate_blocks_state, ptr %258, i32 0, i32 9
  store ptr %257, ptr %write248, align 8
  %259 = load ptr, ptr %s.addr, align 8
  %260 = load ptr, ptr %z.addr, align 8
  %261 = load i32, ptr %r.addr, align 4
  %call249 = call i32 @inflate_flush(ptr noundef %259, ptr noundef %260, i32 noundef %261)
  store i32 %call249, ptr %retval, align 4
  br label %return

if.end250:                                        ; preds = %if.end234
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.end183
  br label %if.end252

if.end252:                                        ; preds = %if.end251, %if.end154
  store i32 0, ptr %r.addr, align 4
  %262 = load ptr, ptr %s.addr, align 8
  %sub253 = getelementptr inbounds %struct.inflate_blocks_state, ptr %262, i32 0, i32 1
  %263 = load i32, ptr %sub253, align 8
  store i32 %263, ptr %t, align 4
  %264 = load i32, ptr %t, align 4
  %265 = load i32, ptr %n, align 4
  %cmp254 = icmp ugt i32 %264, %265
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end252
  %266 = load i32, ptr %n, align 4
  store i32 %266, ptr %t, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %if.end252
  %267 = load i32, ptr %t, align 4
  %268 = load i32, ptr %m, align 4
  %cmp258 = icmp ugt i32 %267, %268
  br i1 %cmp258, label %if.then260, label %if.end261

if.then260:                                       ; preds = %if.end257
  %269 = load i32, ptr %m, align 4
  store i32 %269, ptr %t, align 4
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %if.end257
  %270 = load ptr, ptr %q, align 8
  %271 = load ptr, ptr %p, align 8
  %272 = load i32, ptr %t, align 4
  %conv262 = zext i32 %272 to i64
  %273 = load ptr, ptr %q, align 8
  %274 = call i64 @llvm.objectsize.i64.p0(ptr %273, i1 false, i1 true, i1 false)
  %call263 = call ptr @__memcpy_chk(ptr noundef %270, ptr noundef %271, i64 noundef %conv262, i64 noundef %274) #4
  %275 = load i32, ptr %t, align 4
  %276 = load ptr, ptr %p, align 8
  %idx.ext = zext i32 %275 to i64
  %add.ptr = getelementptr inbounds i8, ptr %276, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  %277 = load i32, ptr %t, align 4
  %278 = load i32, ptr %n, align 4
  %sub264 = sub i32 %278, %277
  store i32 %sub264, ptr %n, align 4
  %279 = load i32, ptr %t, align 4
  %280 = load ptr, ptr %q, align 8
  %idx.ext265 = zext i32 %279 to i64
  %add.ptr266 = getelementptr inbounds i8, ptr %280, i64 %idx.ext265
  store ptr %add.ptr266, ptr %q, align 8
  %281 = load i32, ptr %t, align 4
  %282 = load i32, ptr %m, align 4
  %sub267 = sub i32 %282, %281
  store i32 %sub267, ptr %m, align 4
  %283 = load i32, ptr %t, align 4
  %284 = load ptr, ptr %s.addr, align 8
  %sub268 = getelementptr inbounds %struct.inflate_blocks_state, ptr %284, i32 0, i32 1
  %285 = load i32, ptr %sub268, align 8
  %sub269 = sub i32 %285, %283
  store i32 %sub269, ptr %sub268, align 8
  %cmp270 = icmp ne i32 %sub269, 0
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %if.end261
  br label %sw.epilog826

if.end273:                                        ; preds = %if.end261
  %286 = load ptr, ptr %s.addr, align 8
  %last274 = getelementptr inbounds %struct.inflate_blocks_state, ptr %286, i32 0, i32 2
  %287 = load i32, ptr %last274, align 8
  %tobool275 = icmp ne i32 %287, 0
  %288 = zext i1 %tobool275 to i64
  %cond276 = select i1 %tobool275, i32 7, i32 0
  %289 = load ptr, ptr %s.addr, align 8
  %mode277 = getelementptr inbounds %struct.inflate_blocks_state, ptr %289, i32 0, i32 0
  store i32 %cond276, ptr %mode277, align 8
  br label %sw.epilog826

sw.bb278:                                         ; preds = %while.body
  br label %while.cond279

while.cond279:                                    ; preds = %if.end298, %sw.bb278
  %290 = load i32, ptr %k, align 4
  %cmp280 = icmp ult i32 %290, 14
  br i1 %cmp280, label %while.body282, label %while.end306

while.body282:                                    ; preds = %while.cond279
  %291 = load i32, ptr %n, align 4
  %tobool283 = icmp ne i32 %291, 0
  br i1 %tobool283, label %if.then284, label %if.else285

if.then284:                                       ; preds = %while.body282
  store i32 0, ptr %r.addr, align 4
  br label %if.end298

if.else285:                                       ; preds = %while.body282
  %292 = load i64, ptr %b, align 8
  %293 = load ptr, ptr %s.addr, align 8
  %bitb286 = getelementptr inbounds %struct.inflate_blocks_state, ptr %293, i32 0, i32 4
  store i64 %292, ptr %bitb286, align 8
  %294 = load i32, ptr %k, align 4
  %295 = load ptr, ptr %s.addr, align 8
  %bitk287 = getelementptr inbounds %struct.inflate_blocks_state, ptr %295, i32 0, i32 3
  store i32 %294, ptr %bitk287, align 4
  %296 = load i32, ptr %n, align 4
  %297 = load ptr, ptr %z.addr, align 8
  %avail_in288 = getelementptr inbounds %struct.z_stream_s, ptr %297, i32 0, i32 1
  store i32 %296, ptr %avail_in288, align 8
  %298 = load ptr, ptr %p, align 8
  %299 = load ptr, ptr %z.addr, align 8
  %next_in289 = getelementptr inbounds %struct.z_stream_s, ptr %299, i32 0, i32 0
  %300 = load ptr, ptr %next_in289, align 8
  %sub.ptr.lhs.cast290 = ptrtoint ptr %298 to i64
  %sub.ptr.rhs.cast291 = ptrtoint ptr %300 to i64
  %sub.ptr.sub292 = sub i64 %sub.ptr.lhs.cast290, %sub.ptr.rhs.cast291
  %301 = load ptr, ptr %z.addr, align 8
  %total_in293 = getelementptr inbounds %struct.z_stream_s, ptr %301, i32 0, i32 2
  %302 = load i64, ptr %total_in293, align 8
  %add294 = add i64 %302, %sub.ptr.sub292
  store i64 %add294, ptr %total_in293, align 8
  %303 = load ptr, ptr %p, align 8
  %304 = load ptr, ptr %z.addr, align 8
  %next_in295 = getelementptr inbounds %struct.z_stream_s, ptr %304, i32 0, i32 0
  store ptr %303, ptr %next_in295, align 8
  %305 = load ptr, ptr %q, align 8
  %306 = load ptr, ptr %s.addr, align 8
  %write296 = getelementptr inbounds %struct.inflate_blocks_state, ptr %306, i32 0, i32 9
  store ptr %305, ptr %write296, align 8
  %307 = load ptr, ptr %s.addr, align 8
  %308 = load ptr, ptr %z.addr, align 8
  %309 = load i32, ptr %r.addr, align 4
  %call297 = call i32 @inflate_flush(ptr noundef %307, ptr noundef %308, i32 noundef %309)
  store i32 %call297, ptr %retval, align 4
  br label %return

if.end298:                                        ; preds = %if.then284
  %310 = load i32, ptr %n, align 4
  %dec299 = add i32 %310, -1
  store i32 %dec299, ptr %n, align 4
  %311 = load ptr, ptr %p, align 8
  %incdec.ptr300 = getelementptr inbounds i8, ptr %311, i32 1
  store ptr %incdec.ptr300, ptr %p, align 8
  %312 = load i8, ptr %311, align 1
  %conv301 = zext i8 %312 to i64
  %313 = load i32, ptr %k, align 4
  %sh_prom302 = zext i32 %313 to i64
  %shl303 = shl i64 %conv301, %sh_prom302
  %314 = load i64, ptr %b, align 8
  %or304 = or i64 %314, %shl303
  store i64 %or304, ptr %b, align 8
  %315 = load i32, ptr %k, align 4
  %add305 = add i32 %315, 8
  store i32 %add305, ptr %k, align 4
  br label %while.cond279, !llvm.loop !9

while.end306:                                     ; preds = %while.cond279
  %316 = load i64, ptr %b, align 8
  %conv307 = trunc i64 %316 to i32
  %and308 = and i32 %conv307, 16383
  store i32 %and308, ptr %t, align 4
  %317 = load ptr, ptr %s.addr, align 8
  %sub309 = getelementptr inbounds %struct.inflate_blocks_state, ptr %317, i32 0, i32 1
  %table = getelementptr inbounds %struct.anon, ptr %sub309, i32 0, i32 0
  store i32 %and308, ptr %table, align 8
  %318 = load i32, ptr %t, align 4
  %and310 = and i32 %318, 31
  %cmp311 = icmp ugt i32 %and310, 29
  br i1 %cmp311, label %if.then317, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end306
  %319 = load i32, ptr %t, align 4
  %shr313 = lshr i32 %319, 5
  %and314 = and i32 %shr313, 31
  %cmp315 = icmp ugt i32 %and314, 29
  br i1 %cmp315, label %if.then317, label %if.end332

if.then317:                                       ; preds = %lor.lhs.false, %while.end306
  %320 = load ptr, ptr %s.addr, align 8
  %mode318 = getelementptr inbounds %struct.inflate_blocks_state, ptr %320, i32 0, i32 0
  store i32 9, ptr %mode318, align 8
  %321 = load ptr, ptr %z.addr, align 8
  %msg319 = getelementptr inbounds %struct.z_stream_s, ptr %321, i32 0, i32 6
  store ptr @.str.2, ptr %msg319, align 8
  store i32 -3, ptr %r.addr, align 4
  %322 = load i64, ptr %b, align 8
  %323 = load ptr, ptr %s.addr, align 8
  %bitb320 = getelementptr inbounds %struct.inflate_blocks_state, ptr %323, i32 0, i32 4
  store i64 %322, ptr %bitb320, align 8
  %324 = load i32, ptr %k, align 4
  %325 = load ptr, ptr %s.addr, align 8
  %bitk321 = getelementptr inbounds %struct.inflate_blocks_state, ptr %325, i32 0, i32 3
  store i32 %324, ptr %bitk321, align 4
  %326 = load i32, ptr %n, align 4
  %327 = load ptr, ptr %z.addr, align 8
  %avail_in322 = getelementptr inbounds %struct.z_stream_s, ptr %327, i32 0, i32 1
  store i32 %326, ptr %avail_in322, align 8
  %328 = load ptr, ptr %p, align 8
  %329 = load ptr, ptr %z.addr, align 8
  %next_in323 = getelementptr inbounds %struct.z_stream_s, ptr %329, i32 0, i32 0
  %330 = load ptr, ptr %next_in323, align 8
  %sub.ptr.lhs.cast324 = ptrtoint ptr %328 to i64
  %sub.ptr.rhs.cast325 = ptrtoint ptr %330 to i64
  %sub.ptr.sub326 = sub i64 %sub.ptr.lhs.cast324, %sub.ptr.rhs.cast325
  %331 = load ptr, ptr %z.addr, align 8
  %total_in327 = getelementptr inbounds %struct.z_stream_s, ptr %331, i32 0, i32 2
  %332 = load i64, ptr %total_in327, align 8
  %add328 = add i64 %332, %sub.ptr.sub326
  store i64 %add328, ptr %total_in327, align 8
  %333 = load ptr, ptr %p, align 8
  %334 = load ptr, ptr %z.addr, align 8
  %next_in329 = getelementptr inbounds %struct.z_stream_s, ptr %334, i32 0, i32 0
  store ptr %333, ptr %next_in329, align 8
  %335 = load ptr, ptr %q, align 8
  %336 = load ptr, ptr %s.addr, align 8
  %write330 = getelementptr inbounds %struct.inflate_blocks_state, ptr %336, i32 0, i32 9
  store ptr %335, ptr %write330, align 8
  %337 = load ptr, ptr %s.addr, align 8
  %338 = load ptr, ptr %z.addr, align 8
  %339 = load i32, ptr %r.addr, align 4
  %call331 = call i32 @inflate_flush(ptr noundef %337, ptr noundef %338, i32 noundef %339)
  store i32 %call331, ptr %retval, align 4
  br label %return

if.end332:                                        ; preds = %lor.lhs.false
  %340 = load i32, ptr %t, align 4
  %and333 = and i32 %340, 31
  %add334 = add i32 258, %and333
  %341 = load i32, ptr %t, align 4
  %shr335 = lshr i32 %341, 5
  %and336 = and i32 %shr335, 31
  %add337 = add i32 %add334, %and336
  store i32 %add337, ptr %t, align 4
  %342 = load ptr, ptr %z.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %342, i32 0, i32 8
  %343 = load ptr, ptr %zalloc, align 8
  %344 = load ptr, ptr %z.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %344, i32 0, i32 10
  %345 = load ptr, ptr %opaque, align 8
  %346 = load i32, ptr %t, align 4
  %call338 = call ptr %343(ptr noundef %345, i32 noundef %346, i32 noundef 4)
  %347 = load ptr, ptr %s.addr, align 8
  %sub339 = getelementptr inbounds %struct.inflate_blocks_state, ptr %347, i32 0, i32 1
  %blens = getelementptr inbounds %struct.anon, ptr %sub339, i32 0, i32 2
  store ptr %call338, ptr %blens, align 8
  %cmp340 = icmp eq ptr %call338, null
  br i1 %cmp340, label %if.then342, label %if.end355

if.then342:                                       ; preds = %if.end332
  store i32 -4, ptr %r.addr, align 4
  %348 = load i64, ptr %b, align 8
  %349 = load ptr, ptr %s.addr, align 8
  %bitb343 = getelementptr inbounds %struct.inflate_blocks_state, ptr %349, i32 0, i32 4
  store i64 %348, ptr %bitb343, align 8
  %350 = load i32, ptr %k, align 4
  %351 = load ptr, ptr %s.addr, align 8
  %bitk344 = getelementptr inbounds %struct.inflate_blocks_state, ptr %351, i32 0, i32 3
  store i32 %350, ptr %bitk344, align 4
  %352 = load i32, ptr %n, align 4
  %353 = load ptr, ptr %z.addr, align 8
  %avail_in345 = getelementptr inbounds %struct.z_stream_s, ptr %353, i32 0, i32 1
  store i32 %352, ptr %avail_in345, align 8
  %354 = load ptr, ptr %p, align 8
  %355 = load ptr, ptr %z.addr, align 8
  %next_in346 = getelementptr inbounds %struct.z_stream_s, ptr %355, i32 0, i32 0
  %356 = load ptr, ptr %next_in346, align 8
  %sub.ptr.lhs.cast347 = ptrtoint ptr %354 to i64
  %sub.ptr.rhs.cast348 = ptrtoint ptr %356 to i64
  %sub.ptr.sub349 = sub i64 %sub.ptr.lhs.cast347, %sub.ptr.rhs.cast348
  %357 = load ptr, ptr %z.addr, align 8
  %total_in350 = getelementptr inbounds %struct.z_stream_s, ptr %357, i32 0, i32 2
  %358 = load i64, ptr %total_in350, align 8
  %add351 = add i64 %358, %sub.ptr.sub349
  store i64 %add351, ptr %total_in350, align 8
  %359 = load ptr, ptr %p, align 8
  %360 = load ptr, ptr %z.addr, align 8
  %next_in352 = getelementptr inbounds %struct.z_stream_s, ptr %360, i32 0, i32 0
  store ptr %359, ptr %next_in352, align 8
  %361 = load ptr, ptr %q, align 8
  %362 = load ptr, ptr %s.addr, align 8
  %write353 = getelementptr inbounds %struct.inflate_blocks_state, ptr %362, i32 0, i32 9
  store ptr %361, ptr %write353, align 8
  %363 = load ptr, ptr %s.addr, align 8
  %364 = load ptr, ptr %z.addr, align 8
  %365 = load i32, ptr %r.addr, align 4
  %call354 = call i32 @inflate_flush(ptr noundef %363, ptr noundef %364, i32 noundef %365)
  store i32 %call354, ptr %retval, align 4
  br label %return

if.end355:                                        ; preds = %if.end332
  %366 = load i64, ptr %b, align 8
  %shr356 = lshr i64 %366, 14
  store i64 %shr356, ptr %b, align 8
  %367 = load i32, ptr %k, align 4
  %sub357 = sub i32 %367, 14
  store i32 %sub357, ptr %k, align 4
  %368 = load ptr, ptr %s.addr, align 8
  %sub358 = getelementptr inbounds %struct.inflate_blocks_state, ptr %368, i32 0, i32 1
  %index = getelementptr inbounds %struct.anon, ptr %sub358, i32 0, i32 1
  store i32 0, ptr %index, align 4
  %369 = load ptr, ptr %s.addr, align 8
  %mode359 = getelementptr inbounds %struct.inflate_blocks_state, ptr %369, i32 0, i32 0
  store i32 4, ptr %mode359, align 8
  br label %sw.bb360

sw.bb360:                                         ; preds = %while.body, %if.end355
  br label %while.cond361

while.cond361:                                    ; preds = %while.end398, %sw.bb360
  %370 = load ptr, ptr %s.addr, align 8
  %sub362 = getelementptr inbounds %struct.inflate_blocks_state, ptr %370, i32 0, i32 1
  %index363 = getelementptr inbounds %struct.anon, ptr %sub362, i32 0, i32 1
  %371 = load i32, ptr %index363, align 4
  %372 = load ptr, ptr %s.addr, align 8
  %sub364 = getelementptr inbounds %struct.inflate_blocks_state, ptr %372, i32 0, i32 1
  %table365 = getelementptr inbounds %struct.anon, ptr %sub364, i32 0, i32 0
  %373 = load i32, ptr %table365, align 8
  %shr366 = lshr i32 %373, 10
  %add367 = add i32 4, %shr366
  %cmp368 = icmp ult i32 %371, %add367
  br i1 %cmp368, label %while.body370, label %while.end409

while.body370:                                    ; preds = %while.cond361
  br label %while.cond371

while.cond371:                                    ; preds = %if.end390, %while.body370
  %374 = load i32, ptr %k, align 4
  %cmp372 = icmp ult i32 %374, 3
  br i1 %cmp372, label %while.body374, label %while.end398

while.body374:                                    ; preds = %while.cond371
  %375 = load i32, ptr %n, align 4
  %tobool375 = icmp ne i32 %375, 0
  br i1 %tobool375, label %if.then376, label %if.else377

if.then376:                                       ; preds = %while.body374
  store i32 0, ptr %r.addr, align 4
  br label %if.end390

if.else377:                                       ; preds = %while.body374
  %376 = load i64, ptr %b, align 8
  %377 = load ptr, ptr %s.addr, align 8
  %bitb378 = getelementptr inbounds %struct.inflate_blocks_state, ptr %377, i32 0, i32 4
  store i64 %376, ptr %bitb378, align 8
  %378 = load i32, ptr %k, align 4
  %379 = load ptr, ptr %s.addr, align 8
  %bitk379 = getelementptr inbounds %struct.inflate_blocks_state, ptr %379, i32 0, i32 3
  store i32 %378, ptr %bitk379, align 4
  %380 = load i32, ptr %n, align 4
  %381 = load ptr, ptr %z.addr, align 8
  %avail_in380 = getelementptr inbounds %struct.z_stream_s, ptr %381, i32 0, i32 1
  store i32 %380, ptr %avail_in380, align 8
  %382 = load ptr, ptr %p, align 8
  %383 = load ptr, ptr %z.addr, align 8
  %next_in381 = getelementptr inbounds %struct.z_stream_s, ptr %383, i32 0, i32 0
  %384 = load ptr, ptr %next_in381, align 8
  %sub.ptr.lhs.cast382 = ptrtoint ptr %382 to i64
  %sub.ptr.rhs.cast383 = ptrtoint ptr %384 to i64
  %sub.ptr.sub384 = sub i64 %sub.ptr.lhs.cast382, %sub.ptr.rhs.cast383
  %385 = load ptr, ptr %z.addr, align 8
  %total_in385 = getelementptr inbounds %struct.z_stream_s, ptr %385, i32 0, i32 2
  %386 = load i64, ptr %total_in385, align 8
  %add386 = add i64 %386, %sub.ptr.sub384
  store i64 %add386, ptr %total_in385, align 8
  %387 = load ptr, ptr %p, align 8
  %388 = load ptr, ptr %z.addr, align 8
  %next_in387 = getelementptr inbounds %struct.z_stream_s, ptr %388, i32 0, i32 0
  store ptr %387, ptr %next_in387, align 8
  %389 = load ptr, ptr %q, align 8
  %390 = load ptr, ptr %s.addr, align 8
  %write388 = getelementptr inbounds %struct.inflate_blocks_state, ptr %390, i32 0, i32 9
  store ptr %389, ptr %write388, align 8
  %391 = load ptr, ptr %s.addr, align 8
  %392 = load ptr, ptr %z.addr, align 8
  %393 = load i32, ptr %r.addr, align 4
  %call389 = call i32 @inflate_flush(ptr noundef %391, ptr noundef %392, i32 noundef %393)
  store i32 %call389, ptr %retval, align 4
  br label %return

if.end390:                                        ; preds = %if.then376
  %394 = load i32, ptr %n, align 4
  %dec391 = add i32 %394, -1
  store i32 %dec391, ptr %n, align 4
  %395 = load ptr, ptr %p, align 8
  %incdec.ptr392 = getelementptr inbounds i8, ptr %395, i32 1
  store ptr %incdec.ptr392, ptr %p, align 8
  %396 = load i8, ptr %395, align 1
  %conv393 = zext i8 %396 to i64
  %397 = load i32, ptr %k, align 4
  %sh_prom394 = zext i32 %397 to i64
  %shl395 = shl i64 %conv393, %sh_prom394
  %398 = load i64, ptr %b, align 8
  %or396 = or i64 %398, %shl395
  store i64 %or396, ptr %b, align 8
  %399 = load i32, ptr %k, align 4
  %add397 = add i32 %399, 8
  store i32 %add397, ptr %k, align 4
  br label %while.cond371, !llvm.loop !10

while.end398:                                     ; preds = %while.cond371
  %400 = load i64, ptr %b, align 8
  %conv399 = trunc i64 %400 to i32
  %and400 = and i32 %conv399, 7
  %401 = load ptr, ptr %s.addr, align 8
  %sub401 = getelementptr inbounds %struct.inflate_blocks_state, ptr %401, i32 0, i32 1
  %blens402 = getelementptr inbounds %struct.anon, ptr %sub401, i32 0, i32 2
  %402 = load ptr, ptr %blens402, align 8
  %403 = load ptr, ptr %s.addr, align 8
  %sub403 = getelementptr inbounds %struct.inflate_blocks_state, ptr %403, i32 0, i32 1
  %index404 = getelementptr inbounds %struct.anon, ptr %sub403, i32 0, i32 1
  %404 = load i32, ptr %index404, align 4
  %inc = add i32 %404, 1
  store i32 %inc, ptr %index404, align 4
  %idxprom = zext i32 %404 to i64
  %arrayidx = getelementptr inbounds [19 x i32], ptr @border, i64 0, i64 %idxprom
  %405 = load i32, ptr %arrayidx, align 4
  %idxprom405 = zext i32 %405 to i64
  %arrayidx406 = getelementptr inbounds i32, ptr %402, i64 %idxprom405
  store i32 %and400, ptr %arrayidx406, align 4
  %406 = load i64, ptr %b, align 8
  %shr407 = lshr i64 %406, 3
  store i64 %shr407, ptr %b, align 8
  %407 = load i32, ptr %k, align 4
  %sub408 = sub i32 %407, 3
  store i32 %sub408, ptr %k, align 4
  br label %while.cond361, !llvm.loop !11

while.end409:                                     ; preds = %while.cond361
  br label %while.cond410

while.cond410:                                    ; preds = %while.body415, %while.end409
  %408 = load ptr, ptr %s.addr, align 8
  %sub411 = getelementptr inbounds %struct.inflate_blocks_state, ptr %408, i32 0, i32 1
  %index412 = getelementptr inbounds %struct.anon, ptr %sub411, i32 0, i32 1
  %409 = load i32, ptr %index412, align 4
  %cmp413 = icmp ult i32 %409, 19
  br i1 %cmp413, label %while.body415, label %while.end425

while.body415:                                    ; preds = %while.cond410
  %410 = load ptr, ptr %s.addr, align 8
  %sub416 = getelementptr inbounds %struct.inflate_blocks_state, ptr %410, i32 0, i32 1
  %blens417 = getelementptr inbounds %struct.anon, ptr %sub416, i32 0, i32 2
  %411 = load ptr, ptr %blens417, align 8
  %412 = load ptr, ptr %s.addr, align 8
  %sub418 = getelementptr inbounds %struct.inflate_blocks_state, ptr %412, i32 0, i32 1
  %index419 = getelementptr inbounds %struct.anon, ptr %sub418, i32 0, i32 1
  %413 = load i32, ptr %index419, align 4
  %inc420 = add i32 %413, 1
  store i32 %inc420, ptr %index419, align 4
  %idxprom421 = zext i32 %413 to i64
  %arrayidx422 = getelementptr inbounds [19 x i32], ptr @border, i64 0, i64 %idxprom421
  %414 = load i32, ptr %arrayidx422, align 4
  %idxprom423 = zext i32 %414 to i64
  %arrayidx424 = getelementptr inbounds i32, ptr %411, i64 %idxprom423
  store i32 0, ptr %arrayidx424, align 4
  br label %while.cond410, !llvm.loop !12

while.end425:                                     ; preds = %while.cond410
  %415 = load ptr, ptr %s.addr, align 8
  %sub426 = getelementptr inbounds %struct.inflate_blocks_state, ptr %415, i32 0, i32 1
  %bb = getelementptr inbounds %struct.anon, ptr %sub426, i32 0, i32 3
  store i32 7, ptr %bb, align 8
  %416 = load ptr, ptr %s.addr, align 8
  %sub427 = getelementptr inbounds %struct.inflate_blocks_state, ptr %416, i32 0, i32 1
  %blens428 = getelementptr inbounds %struct.anon, ptr %sub427, i32 0, i32 2
  %417 = load ptr, ptr %blens428, align 8
  %418 = load ptr, ptr %s.addr, align 8
  %sub429 = getelementptr inbounds %struct.inflate_blocks_state, ptr %418, i32 0, i32 1
  %bb430 = getelementptr inbounds %struct.anon, ptr %sub429, i32 0, i32 3
  %419 = load ptr, ptr %s.addr, align 8
  %sub431 = getelementptr inbounds %struct.inflate_blocks_state, ptr %419, i32 0, i32 1
  %tb = getelementptr inbounds %struct.anon, ptr %sub431, i32 0, i32 4
  %420 = load ptr, ptr %s.addr, align 8
  %hufts = getelementptr inbounds %struct.inflate_blocks_state, ptr %420, i32 0, i32 5
  %421 = load ptr, ptr %hufts, align 8
  %422 = load ptr, ptr %z.addr, align 8
  %call432 = call i32 @inflate_trees_bits(ptr noundef %417, ptr noundef %bb430, ptr noundef %tb, ptr noundef %421, ptr noundef %422)
  store i32 %call432, ptr %t, align 4
  %423 = load i32, ptr %t, align 4
  %cmp433 = icmp ne i32 %423, 0
  br i1 %cmp433, label %if.then435, label %if.end456

if.then435:                                       ; preds = %while.end425
  %424 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %424, i32 0, i32 9
  %425 = load ptr, ptr %zfree, align 8
  %426 = load ptr, ptr %z.addr, align 8
  %opaque436 = getelementptr inbounds %struct.z_stream_s, ptr %426, i32 0, i32 10
  %427 = load ptr, ptr %opaque436, align 8
  %428 = load ptr, ptr %s.addr, align 8
  %sub437 = getelementptr inbounds %struct.inflate_blocks_state, ptr %428, i32 0, i32 1
  %blens438 = getelementptr inbounds %struct.anon, ptr %sub437, i32 0, i32 2
  %429 = load ptr, ptr %blens438, align 8
  call void %425(ptr noundef %427, ptr noundef %429)
  %430 = load i32, ptr %t, align 4
  store i32 %430, ptr %r.addr, align 4
  %431 = load i32, ptr %r.addr, align 4
  %cmp439 = icmp eq i32 %431, -3
  br i1 %cmp439, label %if.then441, label %if.end443

if.then441:                                       ; preds = %if.then435
  %432 = load ptr, ptr %s.addr, align 8
  %mode442 = getelementptr inbounds %struct.inflate_blocks_state, ptr %432, i32 0, i32 0
  store i32 9, ptr %mode442, align 8
  br label %if.end443

if.end443:                                        ; preds = %if.then441, %if.then435
  %433 = load i64, ptr %b, align 8
  %434 = load ptr, ptr %s.addr, align 8
  %bitb444 = getelementptr inbounds %struct.inflate_blocks_state, ptr %434, i32 0, i32 4
  store i64 %433, ptr %bitb444, align 8
  %435 = load i32, ptr %k, align 4
  %436 = load ptr, ptr %s.addr, align 8
  %bitk445 = getelementptr inbounds %struct.inflate_blocks_state, ptr %436, i32 0, i32 3
  store i32 %435, ptr %bitk445, align 4
  %437 = load i32, ptr %n, align 4
  %438 = load ptr, ptr %z.addr, align 8
  %avail_in446 = getelementptr inbounds %struct.z_stream_s, ptr %438, i32 0, i32 1
  store i32 %437, ptr %avail_in446, align 8
  %439 = load ptr, ptr %p, align 8
  %440 = load ptr, ptr %z.addr, align 8
  %next_in447 = getelementptr inbounds %struct.z_stream_s, ptr %440, i32 0, i32 0
  %441 = load ptr, ptr %next_in447, align 8
  %sub.ptr.lhs.cast448 = ptrtoint ptr %439 to i64
  %sub.ptr.rhs.cast449 = ptrtoint ptr %441 to i64
  %sub.ptr.sub450 = sub i64 %sub.ptr.lhs.cast448, %sub.ptr.rhs.cast449
  %442 = load ptr, ptr %z.addr, align 8
  %total_in451 = getelementptr inbounds %struct.z_stream_s, ptr %442, i32 0, i32 2
  %443 = load i64, ptr %total_in451, align 8
  %add452 = add i64 %443, %sub.ptr.sub450
  store i64 %add452, ptr %total_in451, align 8
  %444 = load ptr, ptr %p, align 8
  %445 = load ptr, ptr %z.addr, align 8
  %next_in453 = getelementptr inbounds %struct.z_stream_s, ptr %445, i32 0, i32 0
  store ptr %444, ptr %next_in453, align 8
  %446 = load ptr, ptr %q, align 8
  %447 = load ptr, ptr %s.addr, align 8
  %write454 = getelementptr inbounds %struct.inflate_blocks_state, ptr %447, i32 0, i32 9
  store ptr %446, ptr %write454, align 8
  %448 = load ptr, ptr %s.addr, align 8
  %449 = load ptr, ptr %z.addr, align 8
  %450 = load i32, ptr %r.addr, align 4
  %call455 = call i32 @inflate_flush(ptr noundef %448, ptr noundef %449, i32 noundef %450)
  store i32 %call455, ptr %retval, align 4
  br label %return

if.end456:                                        ; preds = %while.end425
  %451 = load ptr, ptr %s.addr, align 8
  %sub457 = getelementptr inbounds %struct.inflate_blocks_state, ptr %451, i32 0, i32 1
  %index458 = getelementptr inbounds %struct.anon, ptr %sub457, i32 0, i32 1
  store i32 0, ptr %index458, align 4
  %452 = load ptr, ptr %s.addr, align 8
  %mode459 = getelementptr inbounds %struct.inflate_blocks_state, ptr %452, i32 0, i32 0
  store i32 5, ptr %mode459, align 8
  br label %sw.bb460

sw.bb460:                                         ; preds = %while.body, %if.end456
  br label %while.cond461

while.cond461:                                    ; preds = %if.end635, %sw.bb460
  %453 = load ptr, ptr %s.addr, align 8
  %sub462 = getelementptr inbounds %struct.inflate_blocks_state, ptr %453, i32 0, i32 1
  %table463 = getelementptr inbounds %struct.anon, ptr %sub462, i32 0, i32 0
  %454 = load i32, ptr %table463, align 8
  store i32 %454, ptr %t, align 4
  %455 = load ptr, ptr %s.addr, align 8
  %sub464 = getelementptr inbounds %struct.inflate_blocks_state, ptr %455, i32 0, i32 1
  %index465 = getelementptr inbounds %struct.anon, ptr %sub464, i32 0, i32 1
  %456 = load i32, ptr %index465, align 4
  %457 = load i32, ptr %t, align 4
  %and466 = and i32 %457, 31
  %add467 = add i32 258, %and466
  %458 = load i32, ptr %t, align 4
  %shr468 = lshr i32 %458, 5
  %and469 = and i32 %shr468, 31
  %add470 = add i32 %add467, %and469
  %cmp471 = icmp ult i32 %456, %add470
  br i1 %cmp471, label %while.body473, label %while.end636

while.body473:                                    ; preds = %while.cond461
  %459 = load ptr, ptr %s.addr, align 8
  %sub474 = getelementptr inbounds %struct.inflate_blocks_state, ptr %459, i32 0, i32 1
  %bb475 = getelementptr inbounds %struct.anon, ptr %sub474, i32 0, i32 3
  %460 = load i32, ptr %bb475, align 8
  store i32 %460, ptr %t, align 4
  br label %while.cond476

while.cond476:                                    ; preds = %if.end495, %while.body473
  %461 = load i32, ptr %k, align 4
  %462 = load i32, ptr %t, align 4
  %cmp477 = icmp ult i32 %461, %462
  br i1 %cmp477, label %while.body479, label %while.end503

while.body479:                                    ; preds = %while.cond476
  %463 = load i32, ptr %n, align 4
  %tobool480 = icmp ne i32 %463, 0
  br i1 %tobool480, label %if.then481, label %if.else482

if.then481:                                       ; preds = %while.body479
  store i32 0, ptr %r.addr, align 4
  br label %if.end495

if.else482:                                       ; preds = %while.body479
  %464 = load i64, ptr %b, align 8
  %465 = load ptr, ptr %s.addr, align 8
  %bitb483 = getelementptr inbounds %struct.inflate_blocks_state, ptr %465, i32 0, i32 4
  store i64 %464, ptr %bitb483, align 8
  %466 = load i32, ptr %k, align 4
  %467 = load ptr, ptr %s.addr, align 8
  %bitk484 = getelementptr inbounds %struct.inflate_blocks_state, ptr %467, i32 0, i32 3
  store i32 %466, ptr %bitk484, align 4
  %468 = load i32, ptr %n, align 4
  %469 = load ptr, ptr %z.addr, align 8
  %avail_in485 = getelementptr inbounds %struct.z_stream_s, ptr %469, i32 0, i32 1
  store i32 %468, ptr %avail_in485, align 8
  %470 = load ptr, ptr %p, align 8
  %471 = load ptr, ptr %z.addr, align 8
  %next_in486 = getelementptr inbounds %struct.z_stream_s, ptr %471, i32 0, i32 0
  %472 = load ptr, ptr %next_in486, align 8
  %sub.ptr.lhs.cast487 = ptrtoint ptr %470 to i64
  %sub.ptr.rhs.cast488 = ptrtoint ptr %472 to i64
  %sub.ptr.sub489 = sub i64 %sub.ptr.lhs.cast487, %sub.ptr.rhs.cast488
  %473 = load ptr, ptr %z.addr, align 8
  %total_in490 = getelementptr inbounds %struct.z_stream_s, ptr %473, i32 0, i32 2
  %474 = load i64, ptr %total_in490, align 8
  %add491 = add i64 %474, %sub.ptr.sub489
  store i64 %add491, ptr %total_in490, align 8
  %475 = load ptr, ptr %p, align 8
  %476 = load ptr, ptr %z.addr, align 8
  %next_in492 = getelementptr inbounds %struct.z_stream_s, ptr %476, i32 0, i32 0
  store ptr %475, ptr %next_in492, align 8
  %477 = load ptr, ptr %q, align 8
  %478 = load ptr, ptr %s.addr, align 8
  %write493 = getelementptr inbounds %struct.inflate_blocks_state, ptr %478, i32 0, i32 9
  store ptr %477, ptr %write493, align 8
  %479 = load ptr, ptr %s.addr, align 8
  %480 = load ptr, ptr %z.addr, align 8
  %481 = load i32, ptr %r.addr, align 4
  %call494 = call i32 @inflate_flush(ptr noundef %479, ptr noundef %480, i32 noundef %481)
  store i32 %call494, ptr %retval, align 4
  br label %return

if.end495:                                        ; preds = %if.then481
  %482 = load i32, ptr %n, align 4
  %dec496 = add i32 %482, -1
  store i32 %dec496, ptr %n, align 4
  %483 = load ptr, ptr %p, align 8
  %incdec.ptr497 = getelementptr inbounds i8, ptr %483, i32 1
  store ptr %incdec.ptr497, ptr %p, align 8
  %484 = load i8, ptr %483, align 1
  %conv498 = zext i8 %484 to i64
  %485 = load i32, ptr %k, align 4
  %sh_prom499 = zext i32 %485 to i64
  %shl500 = shl i64 %conv498, %sh_prom499
  %486 = load i64, ptr %b, align 8
  %or501 = or i64 %486, %shl500
  store i64 %or501, ptr %b, align 8
  %487 = load i32, ptr %k, align 4
  %add502 = add i32 %487, 8
  store i32 %add502, ptr %k, align 4
  br label %while.cond476, !llvm.loop !13

while.end503:                                     ; preds = %while.cond476
  %488 = load ptr, ptr %s.addr, align 8
  %sub504 = getelementptr inbounds %struct.inflate_blocks_state, ptr %488, i32 0, i32 1
  %tb505 = getelementptr inbounds %struct.anon, ptr %sub504, i32 0, i32 4
  %489 = load ptr, ptr %tb505, align 8
  %490 = load i64, ptr %b, align 8
  %conv506 = trunc i64 %490 to i32
  %491 = load i32, ptr %t, align 4
  %idxprom507 = zext i32 %491 to i64
  %arrayidx508 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom507
  %492 = load i32, ptr %arrayidx508, align 4
  %and509 = and i32 %conv506, %492
  %idx.ext510 = zext i32 %and509 to i64
  %add.ptr511 = getelementptr inbounds %struct.inflate_huft_s, ptr %489, i64 %idx.ext510
  store ptr %add.ptr511, ptr %h, align 8
  %493 = load ptr, ptr %h, align 8
  %word = getelementptr inbounds %struct.inflate_huft_s, ptr %493, i32 0, i32 0
  %Bits = getelementptr inbounds %struct.anon.1, ptr %word, i32 0, i32 1
  %494 = load i8, ptr %Bits, align 1
  %conv512 = zext i8 %494 to i32
  store i32 %conv512, ptr %t, align 4
  %495 = load ptr, ptr %h, align 8
  %base = getelementptr inbounds %struct.inflate_huft_s, ptr %495, i32 0, i32 1
  %496 = load i32, ptr %base, align 4
  store i32 %496, ptr %c, align 4
  %497 = load i32, ptr %c, align 4
  %cmp513 = icmp ult i32 %497, 16
  br i1 %cmp513, label %if.then515, label %if.else526

if.then515:                                       ; preds = %while.end503
  %498 = load i32, ptr %t, align 4
  %499 = load i64, ptr %b, align 8
  %sh_prom516 = zext i32 %498 to i64
  %shr517 = lshr i64 %499, %sh_prom516
  store i64 %shr517, ptr %b, align 8
  %500 = load i32, ptr %t, align 4
  %501 = load i32, ptr %k, align 4
  %sub518 = sub i32 %501, %500
  store i32 %sub518, ptr %k, align 4
  %502 = load i32, ptr %c, align 4
  %503 = load ptr, ptr %s.addr, align 8
  %sub519 = getelementptr inbounds %struct.inflate_blocks_state, ptr %503, i32 0, i32 1
  %blens520 = getelementptr inbounds %struct.anon, ptr %sub519, i32 0, i32 2
  %504 = load ptr, ptr %blens520, align 8
  %505 = load ptr, ptr %s.addr, align 8
  %sub521 = getelementptr inbounds %struct.inflate_blocks_state, ptr %505, i32 0, i32 1
  %index522 = getelementptr inbounds %struct.anon, ptr %sub521, i32 0, i32 1
  %506 = load i32, ptr %index522, align 4
  %inc523 = add i32 %506, 1
  store i32 %inc523, ptr %index522, align 4
  %idxprom524 = zext i32 %506 to i64
  %arrayidx525 = getelementptr inbounds i32, ptr %504, i64 %idxprom524
  store i32 %502, ptr %arrayidx525, align 4
  br label %if.end635

if.else526:                                       ; preds = %while.end503
  %507 = load i32, ptr %c, align 4
  %cmp527 = icmp eq i32 %507, 18
  br i1 %cmp527, label %cond.true529, label %cond.false530

cond.true529:                                     ; preds = %if.else526
  br label %cond.end532

cond.false530:                                    ; preds = %if.else526
  %508 = load i32, ptr %c, align 4
  %sub531 = sub i32 %508, 14
  br label %cond.end532

cond.end532:                                      ; preds = %cond.false530, %cond.true529
  %cond533 = phi i32 [ 7, %cond.true529 ], [ %sub531, %cond.false530 ]
  store i32 %cond533, ptr %i, align 4
  %509 = load i32, ptr %c, align 4
  %cmp534 = icmp eq i32 %509, 18
  %510 = zext i1 %cmp534 to i64
  %cond536 = select i1 %cmp534, i32 11, i32 3
  store i32 %cond536, ptr %j, align 4
  br label %while.cond537

while.cond537:                                    ; preds = %if.end557, %cond.end532
  %511 = load i32, ptr %k, align 4
  %512 = load i32, ptr %t, align 4
  %513 = load i32, ptr %i, align 4
  %add538 = add i32 %512, %513
  %cmp539 = icmp ult i32 %511, %add538
  br i1 %cmp539, label %while.body541, label %while.end565

while.body541:                                    ; preds = %while.cond537
  %514 = load i32, ptr %n, align 4
  %tobool542 = icmp ne i32 %514, 0
  br i1 %tobool542, label %if.then543, label %if.else544

if.then543:                                       ; preds = %while.body541
  store i32 0, ptr %r.addr, align 4
  br label %if.end557

if.else544:                                       ; preds = %while.body541
  %515 = load i64, ptr %b, align 8
  %516 = load ptr, ptr %s.addr, align 8
  %bitb545 = getelementptr inbounds %struct.inflate_blocks_state, ptr %516, i32 0, i32 4
  store i64 %515, ptr %bitb545, align 8
  %517 = load i32, ptr %k, align 4
  %518 = load ptr, ptr %s.addr, align 8
  %bitk546 = getelementptr inbounds %struct.inflate_blocks_state, ptr %518, i32 0, i32 3
  store i32 %517, ptr %bitk546, align 4
  %519 = load i32, ptr %n, align 4
  %520 = load ptr, ptr %z.addr, align 8
  %avail_in547 = getelementptr inbounds %struct.z_stream_s, ptr %520, i32 0, i32 1
  store i32 %519, ptr %avail_in547, align 8
  %521 = load ptr, ptr %p, align 8
  %522 = load ptr, ptr %z.addr, align 8
  %next_in548 = getelementptr inbounds %struct.z_stream_s, ptr %522, i32 0, i32 0
  %523 = load ptr, ptr %next_in548, align 8
  %sub.ptr.lhs.cast549 = ptrtoint ptr %521 to i64
  %sub.ptr.rhs.cast550 = ptrtoint ptr %523 to i64
  %sub.ptr.sub551 = sub i64 %sub.ptr.lhs.cast549, %sub.ptr.rhs.cast550
  %524 = load ptr, ptr %z.addr, align 8
  %total_in552 = getelementptr inbounds %struct.z_stream_s, ptr %524, i32 0, i32 2
  %525 = load i64, ptr %total_in552, align 8
  %add553 = add i64 %525, %sub.ptr.sub551
  store i64 %add553, ptr %total_in552, align 8
  %526 = load ptr, ptr %p, align 8
  %527 = load ptr, ptr %z.addr, align 8
  %next_in554 = getelementptr inbounds %struct.z_stream_s, ptr %527, i32 0, i32 0
  store ptr %526, ptr %next_in554, align 8
  %528 = load ptr, ptr %q, align 8
  %529 = load ptr, ptr %s.addr, align 8
  %write555 = getelementptr inbounds %struct.inflate_blocks_state, ptr %529, i32 0, i32 9
  store ptr %528, ptr %write555, align 8
  %530 = load ptr, ptr %s.addr, align 8
  %531 = load ptr, ptr %z.addr, align 8
  %532 = load i32, ptr %r.addr, align 4
  %call556 = call i32 @inflate_flush(ptr noundef %530, ptr noundef %531, i32 noundef %532)
  store i32 %call556, ptr %retval, align 4
  br label %return

if.end557:                                        ; preds = %if.then543
  %533 = load i32, ptr %n, align 4
  %dec558 = add i32 %533, -1
  store i32 %dec558, ptr %n, align 4
  %534 = load ptr, ptr %p, align 8
  %incdec.ptr559 = getelementptr inbounds i8, ptr %534, i32 1
  store ptr %incdec.ptr559, ptr %p, align 8
  %535 = load i8, ptr %534, align 1
  %conv560 = zext i8 %535 to i64
  %536 = load i32, ptr %k, align 4
  %sh_prom561 = zext i32 %536 to i64
  %shl562 = shl i64 %conv560, %sh_prom561
  %537 = load i64, ptr %b, align 8
  %or563 = or i64 %537, %shl562
  store i64 %or563, ptr %b, align 8
  %538 = load i32, ptr %k, align 4
  %add564 = add i32 %538, 8
  store i32 %add564, ptr %k, align 4
  br label %while.cond537, !llvm.loop !14

while.end565:                                     ; preds = %while.cond537
  %539 = load i32, ptr %t, align 4
  %540 = load i64, ptr %b, align 8
  %sh_prom566 = zext i32 %539 to i64
  %shr567 = lshr i64 %540, %sh_prom566
  store i64 %shr567, ptr %b, align 8
  %541 = load i32, ptr %t, align 4
  %542 = load i32, ptr %k, align 4
  %sub568 = sub i32 %542, %541
  store i32 %sub568, ptr %k, align 4
  %543 = load i64, ptr %b, align 8
  %conv569 = trunc i64 %543 to i32
  %544 = load i32, ptr %i, align 4
  %idxprom570 = zext i32 %544 to i64
  %arrayidx571 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom570
  %545 = load i32, ptr %arrayidx571, align 4
  %and572 = and i32 %conv569, %545
  %546 = load i32, ptr %j, align 4
  %add573 = add i32 %546, %and572
  store i32 %add573, ptr %j, align 4
  %547 = load i32, ptr %i, align 4
  %548 = load i64, ptr %b, align 8
  %sh_prom574 = zext i32 %547 to i64
  %shr575 = lshr i64 %548, %sh_prom574
  store i64 %shr575, ptr %b, align 8
  %549 = load i32, ptr %i, align 4
  %550 = load i32, ptr %k, align 4
  %sub576 = sub i32 %550, %549
  store i32 %sub576, ptr %k, align 4
  %551 = load ptr, ptr %s.addr, align 8
  %sub577 = getelementptr inbounds %struct.inflate_blocks_state, ptr %551, i32 0, i32 1
  %index578 = getelementptr inbounds %struct.anon, ptr %sub577, i32 0, i32 1
  %552 = load i32, ptr %index578, align 4
  store i32 %552, ptr %i, align 4
  %553 = load ptr, ptr %s.addr, align 8
  %sub579 = getelementptr inbounds %struct.inflate_blocks_state, ptr %553, i32 0, i32 1
  %table580 = getelementptr inbounds %struct.anon, ptr %sub579, i32 0, i32 0
  %554 = load i32, ptr %table580, align 8
  store i32 %554, ptr %t, align 4
  %555 = load i32, ptr %i, align 4
  %556 = load i32, ptr %j, align 4
  %add581 = add i32 %555, %556
  %557 = load i32, ptr %t, align 4
  %and582 = and i32 %557, 31
  %add583 = add i32 258, %and582
  %558 = load i32, ptr %t, align 4
  %shr584 = lshr i32 %558, 5
  %and585 = and i32 %shr584, 31
  %add586 = add i32 %add583, %and585
  %cmp587 = icmp ugt i32 %add581, %add586
  br i1 %cmp587, label %if.then595, label %lor.lhs.false589

lor.lhs.false589:                                 ; preds = %while.end565
  %559 = load i32, ptr %c, align 4
  %cmp590 = icmp eq i32 %559, 16
  br i1 %cmp590, label %land.lhs.true592, label %if.end614

land.lhs.true592:                                 ; preds = %lor.lhs.false589
  %560 = load i32, ptr %i, align 4
  %cmp593 = icmp ult i32 %560, 1
  br i1 %cmp593, label %if.then595, label %if.end614

if.then595:                                       ; preds = %land.lhs.true592, %while.end565
  %561 = load ptr, ptr %z.addr, align 8
  %zfree596 = getelementptr inbounds %struct.z_stream_s, ptr %561, i32 0, i32 9
  %562 = load ptr, ptr %zfree596, align 8
  %563 = load ptr, ptr %z.addr, align 8
  %opaque597 = getelementptr inbounds %struct.z_stream_s, ptr %563, i32 0, i32 10
  %564 = load ptr, ptr %opaque597, align 8
  %565 = load ptr, ptr %s.addr, align 8
  %sub598 = getelementptr inbounds %struct.inflate_blocks_state, ptr %565, i32 0, i32 1
  %blens599 = getelementptr inbounds %struct.anon, ptr %sub598, i32 0, i32 2
  %566 = load ptr, ptr %blens599, align 8
  call void %562(ptr noundef %564, ptr noundef %566)
  %567 = load ptr, ptr %s.addr, align 8
  %mode600 = getelementptr inbounds %struct.inflate_blocks_state, ptr %567, i32 0, i32 0
  store i32 9, ptr %mode600, align 8
  %568 = load ptr, ptr %z.addr, align 8
  %msg601 = getelementptr inbounds %struct.z_stream_s, ptr %568, i32 0, i32 6
  store ptr @.str.3, ptr %msg601, align 8
  store i32 -3, ptr %r.addr, align 4
  %569 = load i64, ptr %b, align 8
  %570 = load ptr, ptr %s.addr, align 8
  %bitb602 = getelementptr inbounds %struct.inflate_blocks_state, ptr %570, i32 0, i32 4
  store i64 %569, ptr %bitb602, align 8
  %571 = load i32, ptr %k, align 4
  %572 = load ptr, ptr %s.addr, align 8
  %bitk603 = getelementptr inbounds %struct.inflate_blocks_state, ptr %572, i32 0, i32 3
  store i32 %571, ptr %bitk603, align 4
  %573 = load i32, ptr %n, align 4
  %574 = load ptr, ptr %z.addr, align 8
  %avail_in604 = getelementptr inbounds %struct.z_stream_s, ptr %574, i32 0, i32 1
  store i32 %573, ptr %avail_in604, align 8
  %575 = load ptr, ptr %p, align 8
  %576 = load ptr, ptr %z.addr, align 8
  %next_in605 = getelementptr inbounds %struct.z_stream_s, ptr %576, i32 0, i32 0
  %577 = load ptr, ptr %next_in605, align 8
  %sub.ptr.lhs.cast606 = ptrtoint ptr %575 to i64
  %sub.ptr.rhs.cast607 = ptrtoint ptr %577 to i64
  %sub.ptr.sub608 = sub i64 %sub.ptr.lhs.cast606, %sub.ptr.rhs.cast607
  %578 = load ptr, ptr %z.addr, align 8
  %total_in609 = getelementptr inbounds %struct.z_stream_s, ptr %578, i32 0, i32 2
  %579 = load i64, ptr %total_in609, align 8
  %add610 = add i64 %579, %sub.ptr.sub608
  store i64 %add610, ptr %total_in609, align 8
  %580 = load ptr, ptr %p, align 8
  %581 = load ptr, ptr %z.addr, align 8
  %next_in611 = getelementptr inbounds %struct.z_stream_s, ptr %581, i32 0, i32 0
  store ptr %580, ptr %next_in611, align 8
  %582 = load ptr, ptr %q, align 8
  %583 = load ptr, ptr %s.addr, align 8
  %write612 = getelementptr inbounds %struct.inflate_blocks_state, ptr %583, i32 0, i32 9
  store ptr %582, ptr %write612, align 8
  %584 = load ptr, ptr %s.addr, align 8
  %585 = load ptr, ptr %z.addr, align 8
  %586 = load i32, ptr %r.addr, align 4
  %call613 = call i32 @inflate_flush(ptr noundef %584, ptr noundef %585, i32 noundef %586)
  store i32 %call613, ptr %retval, align 4
  br label %return

if.end614:                                        ; preds = %land.lhs.true592, %lor.lhs.false589
  %587 = load i32, ptr %c, align 4
  %cmp615 = icmp eq i32 %587, 16
  br i1 %cmp615, label %cond.true617, label %cond.false623

cond.true617:                                     ; preds = %if.end614
  %588 = load ptr, ptr %s.addr, align 8
  %sub618 = getelementptr inbounds %struct.inflate_blocks_state, ptr %588, i32 0, i32 1
  %blens619 = getelementptr inbounds %struct.anon, ptr %sub618, i32 0, i32 2
  %589 = load ptr, ptr %blens619, align 8
  %590 = load i32, ptr %i, align 4
  %sub620 = sub i32 %590, 1
  %idxprom621 = zext i32 %sub620 to i64
  %arrayidx622 = getelementptr inbounds i32, ptr %589, i64 %idxprom621
  %591 = load i32, ptr %arrayidx622, align 4
  br label %cond.end624

cond.false623:                                    ; preds = %if.end614
  br label %cond.end624

cond.end624:                                      ; preds = %cond.false623, %cond.true617
  %cond625 = phi i32 [ %591, %cond.true617 ], [ 0, %cond.false623 ]
  store i32 %cond625, ptr %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end624
  %592 = load i32, ptr %c, align 4
  %593 = load ptr, ptr %s.addr, align 8
  %sub626 = getelementptr inbounds %struct.inflate_blocks_state, ptr %593, i32 0, i32 1
  %blens627 = getelementptr inbounds %struct.anon, ptr %sub626, i32 0, i32 2
  %594 = load ptr, ptr %blens627, align 8
  %595 = load i32, ptr %i, align 4
  %inc628 = add i32 %595, 1
  store i32 %inc628, ptr %i, align 4
  %idxprom629 = zext i32 %595 to i64
  %arrayidx630 = getelementptr inbounds i32, ptr %594, i64 %idxprom629
  store i32 %592, ptr %arrayidx630, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %596 = load i32, ptr %j, align 4
  %dec631 = add i32 %596, -1
  store i32 %dec631, ptr %j, align 4
  %tobool632 = icmp ne i32 %dec631, 0
  br i1 %tobool632, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %597 = load i32, ptr %i, align 4
  %598 = load ptr, ptr %s.addr, align 8
  %sub633 = getelementptr inbounds %struct.inflate_blocks_state, ptr %598, i32 0, i32 1
  %index634 = getelementptr inbounds %struct.anon, ptr %sub633, i32 0, i32 1
  store i32 %597, ptr %index634, align 4
  br label %if.end635

if.end635:                                        ; preds = %do.end, %if.then515
  br label %while.cond461, !llvm.loop !16

while.end636:                                     ; preds = %while.cond461
  %599 = load ptr, ptr %s.addr, align 8
  %sub637 = getelementptr inbounds %struct.inflate_blocks_state, ptr %599, i32 0, i32 1
  %tb638 = getelementptr inbounds %struct.anon, ptr %sub637, i32 0, i32 4
  store ptr null, ptr %tb638, align 8
  store i32 9, ptr %bl639, align 4
  store i32 6, ptr %bd640, align 4
  %600 = load ptr, ptr %s.addr, align 8
  %sub644 = getelementptr inbounds %struct.inflate_blocks_state, ptr %600, i32 0, i32 1
  %table645 = getelementptr inbounds %struct.anon, ptr %sub644, i32 0, i32 0
  %601 = load i32, ptr %table645, align 8
  store i32 %601, ptr %t, align 4
  %602 = load i32, ptr %t, align 4
  %and646 = and i32 %602, 31
  %add647 = add i32 257, %and646
  %603 = load i32, ptr %t, align 4
  %shr648 = lshr i32 %603, 5
  %and649 = and i32 %shr648, 31
  %add650 = add i32 1, %and649
  %604 = load ptr, ptr %s.addr, align 8
  %sub651 = getelementptr inbounds %struct.inflate_blocks_state, ptr %604, i32 0, i32 1
  %blens652 = getelementptr inbounds %struct.anon, ptr %sub651, i32 0, i32 2
  %605 = load ptr, ptr %blens652, align 8
  %606 = load ptr, ptr %s.addr, align 8
  %hufts653 = getelementptr inbounds %struct.inflate_blocks_state, ptr %606, i32 0, i32 5
  %607 = load ptr, ptr %hufts653, align 8
  %608 = load ptr, ptr %z.addr, align 8
  %call654 = call i32 @inflate_trees_dynamic(i32 noundef %add647, i32 noundef %add650, ptr noundef %605, ptr noundef %bl639, ptr noundef %bd640, ptr noundef %tl641, ptr noundef %td642, ptr noundef %607, ptr noundef %608)
  store i32 %call654, ptr %t, align 4
  %609 = load ptr, ptr %z.addr, align 8
  %zfree655 = getelementptr inbounds %struct.z_stream_s, ptr %609, i32 0, i32 9
  %610 = load ptr, ptr %zfree655, align 8
  %611 = load ptr, ptr %z.addr, align 8
  %opaque656 = getelementptr inbounds %struct.z_stream_s, ptr %611, i32 0, i32 10
  %612 = load ptr, ptr %opaque656, align 8
  %613 = load ptr, ptr %s.addr, align 8
  %sub657 = getelementptr inbounds %struct.inflate_blocks_state, ptr %613, i32 0, i32 1
  %blens658 = getelementptr inbounds %struct.anon, ptr %sub657, i32 0, i32 2
  %614 = load ptr, ptr %blens658, align 8
  call void %610(ptr noundef %612, ptr noundef %614)
  %615 = load i32, ptr %t, align 4
  %cmp659 = icmp ne i32 %615, 0
  br i1 %cmp659, label %if.then661, label %if.end679

if.then661:                                       ; preds = %while.end636
  %616 = load i32, ptr %t, align 4
  %cmp662 = icmp eq i32 %616, -3
  br i1 %cmp662, label %if.then664, label %if.end666

if.then664:                                       ; preds = %if.then661
  %617 = load ptr, ptr %s.addr, align 8
  %mode665 = getelementptr inbounds %struct.inflate_blocks_state, ptr %617, i32 0, i32 0
  store i32 9, ptr %mode665, align 8
  br label %if.end666

if.end666:                                        ; preds = %if.then664, %if.then661
  %618 = load i32, ptr %t, align 4
  store i32 %618, ptr %r.addr, align 4
  %619 = load i64, ptr %b, align 8
  %620 = load ptr, ptr %s.addr, align 8
  %bitb667 = getelementptr inbounds %struct.inflate_blocks_state, ptr %620, i32 0, i32 4
  store i64 %619, ptr %bitb667, align 8
  %621 = load i32, ptr %k, align 4
  %622 = load ptr, ptr %s.addr, align 8
  %bitk668 = getelementptr inbounds %struct.inflate_blocks_state, ptr %622, i32 0, i32 3
  store i32 %621, ptr %bitk668, align 4
  %623 = load i32, ptr %n, align 4
  %624 = load ptr, ptr %z.addr, align 8
  %avail_in669 = getelementptr inbounds %struct.z_stream_s, ptr %624, i32 0, i32 1
  store i32 %623, ptr %avail_in669, align 8
  %625 = load ptr, ptr %p, align 8
  %626 = load ptr, ptr %z.addr, align 8
  %next_in670 = getelementptr inbounds %struct.z_stream_s, ptr %626, i32 0, i32 0
  %627 = load ptr, ptr %next_in670, align 8
  %sub.ptr.lhs.cast671 = ptrtoint ptr %625 to i64
  %sub.ptr.rhs.cast672 = ptrtoint ptr %627 to i64
  %sub.ptr.sub673 = sub i64 %sub.ptr.lhs.cast671, %sub.ptr.rhs.cast672
  %628 = load ptr, ptr %z.addr, align 8
  %total_in674 = getelementptr inbounds %struct.z_stream_s, ptr %628, i32 0, i32 2
  %629 = load i64, ptr %total_in674, align 8
  %add675 = add i64 %629, %sub.ptr.sub673
  store i64 %add675, ptr %total_in674, align 8
  %630 = load ptr, ptr %p, align 8
  %631 = load ptr, ptr %z.addr, align 8
  %next_in676 = getelementptr inbounds %struct.z_stream_s, ptr %631, i32 0, i32 0
  store ptr %630, ptr %next_in676, align 8
  %632 = load ptr, ptr %q, align 8
  %633 = load ptr, ptr %s.addr, align 8
  %write677 = getelementptr inbounds %struct.inflate_blocks_state, ptr %633, i32 0, i32 9
  store ptr %632, ptr %write677, align 8
  %634 = load ptr, ptr %s.addr, align 8
  %635 = load ptr, ptr %z.addr, align 8
  %636 = load i32, ptr %r.addr, align 4
  %call678 = call i32 @inflate_flush(ptr noundef %634, ptr noundef %635, i32 noundef %636)
  store i32 %call678, ptr %retval, align 4
  br label %return

if.end679:                                        ; preds = %while.end636
  %637 = load i32, ptr %bl639, align 4
  %638 = load i32, ptr %bd640, align 4
  %639 = load ptr, ptr %tl641, align 8
  %640 = load ptr, ptr %td642, align 8
  %641 = load ptr, ptr %z.addr, align 8
  %call680 = call ptr @inflate_codes_new(i32 noundef %637, i32 noundef %638, ptr noundef %639, ptr noundef %640, ptr noundef %641)
  store ptr %call680, ptr %c643, align 8
  %cmp681 = icmp eq ptr %call680, null
  br i1 %cmp681, label %if.then683, label %if.end696

if.then683:                                       ; preds = %if.end679
  store i32 -4, ptr %r.addr, align 4
  %642 = load i64, ptr %b, align 8
  %643 = load ptr, ptr %s.addr, align 8
  %bitb684 = getelementptr inbounds %struct.inflate_blocks_state, ptr %643, i32 0, i32 4
  store i64 %642, ptr %bitb684, align 8
  %644 = load i32, ptr %k, align 4
  %645 = load ptr, ptr %s.addr, align 8
  %bitk685 = getelementptr inbounds %struct.inflate_blocks_state, ptr %645, i32 0, i32 3
  store i32 %644, ptr %bitk685, align 4
  %646 = load i32, ptr %n, align 4
  %647 = load ptr, ptr %z.addr, align 8
  %avail_in686 = getelementptr inbounds %struct.z_stream_s, ptr %647, i32 0, i32 1
  store i32 %646, ptr %avail_in686, align 8
  %648 = load ptr, ptr %p, align 8
  %649 = load ptr, ptr %z.addr, align 8
  %next_in687 = getelementptr inbounds %struct.z_stream_s, ptr %649, i32 0, i32 0
  %650 = load ptr, ptr %next_in687, align 8
  %sub.ptr.lhs.cast688 = ptrtoint ptr %648 to i64
  %sub.ptr.rhs.cast689 = ptrtoint ptr %650 to i64
  %sub.ptr.sub690 = sub i64 %sub.ptr.lhs.cast688, %sub.ptr.rhs.cast689
  %651 = load ptr, ptr %z.addr, align 8
  %total_in691 = getelementptr inbounds %struct.z_stream_s, ptr %651, i32 0, i32 2
  %652 = load i64, ptr %total_in691, align 8
  %add692 = add i64 %652, %sub.ptr.sub690
  store i64 %add692, ptr %total_in691, align 8
  %653 = load ptr, ptr %p, align 8
  %654 = load ptr, ptr %z.addr, align 8
  %next_in693 = getelementptr inbounds %struct.z_stream_s, ptr %654, i32 0, i32 0
  store ptr %653, ptr %next_in693, align 8
  %655 = load ptr, ptr %q, align 8
  %656 = load ptr, ptr %s.addr, align 8
  %write694 = getelementptr inbounds %struct.inflate_blocks_state, ptr %656, i32 0, i32 9
  store ptr %655, ptr %write694, align 8
  %657 = load ptr, ptr %s.addr, align 8
  %658 = load ptr, ptr %z.addr, align 8
  %659 = load i32, ptr %r.addr, align 4
  %call695 = call i32 @inflate_flush(ptr noundef %657, ptr noundef %658, i32 noundef %659)
  store i32 %call695, ptr %retval, align 4
  br label %return

if.end696:                                        ; preds = %if.end679
  %660 = load ptr, ptr %c643, align 8
  %661 = load ptr, ptr %s.addr, align 8
  %sub697 = getelementptr inbounds %struct.inflate_blocks_state, ptr %661, i32 0, i32 1
  %codes698 = getelementptr inbounds %struct.anon.2, ptr %sub697, i32 0, i32 0
  store ptr %660, ptr %codes698, align 8
  %662 = load ptr, ptr %s.addr, align 8
  %mode699 = getelementptr inbounds %struct.inflate_blocks_state, ptr %662, i32 0, i32 0
  store i32 6, ptr %mode699, align 8
  br label %sw.bb700

sw.bb700:                                         ; preds = %while.body, %if.end696
  %663 = load i64, ptr %b, align 8
  %664 = load ptr, ptr %s.addr, align 8
  %bitb701 = getelementptr inbounds %struct.inflate_blocks_state, ptr %664, i32 0, i32 4
  store i64 %663, ptr %bitb701, align 8
  %665 = load i32, ptr %k, align 4
  %666 = load ptr, ptr %s.addr, align 8
  %bitk702 = getelementptr inbounds %struct.inflate_blocks_state, ptr %666, i32 0, i32 3
  store i32 %665, ptr %bitk702, align 4
  %667 = load i32, ptr %n, align 4
  %668 = load ptr, ptr %z.addr, align 8
  %avail_in703 = getelementptr inbounds %struct.z_stream_s, ptr %668, i32 0, i32 1
  store i32 %667, ptr %avail_in703, align 8
  %669 = load ptr, ptr %p, align 8
  %670 = load ptr, ptr %z.addr, align 8
  %next_in704 = getelementptr inbounds %struct.z_stream_s, ptr %670, i32 0, i32 0
  %671 = load ptr, ptr %next_in704, align 8
  %sub.ptr.lhs.cast705 = ptrtoint ptr %669 to i64
  %sub.ptr.rhs.cast706 = ptrtoint ptr %671 to i64
  %sub.ptr.sub707 = sub i64 %sub.ptr.lhs.cast705, %sub.ptr.rhs.cast706
  %672 = load ptr, ptr %z.addr, align 8
  %total_in708 = getelementptr inbounds %struct.z_stream_s, ptr %672, i32 0, i32 2
  %673 = load i64, ptr %total_in708, align 8
  %add709 = add i64 %673, %sub.ptr.sub707
  store i64 %add709, ptr %total_in708, align 8
  %674 = load ptr, ptr %p, align 8
  %675 = load ptr, ptr %z.addr, align 8
  %next_in710 = getelementptr inbounds %struct.z_stream_s, ptr %675, i32 0, i32 0
  store ptr %674, ptr %next_in710, align 8
  %676 = load ptr, ptr %q, align 8
  %677 = load ptr, ptr %s.addr, align 8
  %write711 = getelementptr inbounds %struct.inflate_blocks_state, ptr %677, i32 0, i32 9
  store ptr %676, ptr %write711, align 8
  %678 = load ptr, ptr %s.addr, align 8
  %679 = load ptr, ptr %z.addr, align 8
  %680 = load i32, ptr %r.addr, align 4
  %call712 = call i32 @inflate_codes(ptr noundef %678, ptr noundef %679, i32 noundef %680)
  store i32 %call712, ptr %r.addr, align 4
  %cmp713 = icmp ne i32 %call712, 1
  br i1 %cmp713, label %if.then715, label %if.end717

if.then715:                                       ; preds = %sw.bb700
  %681 = load ptr, ptr %s.addr, align 8
  %682 = load ptr, ptr %z.addr, align 8
  %683 = load i32, ptr %r.addr, align 4
  %call716 = call i32 @inflate_flush(ptr noundef %681, ptr noundef %682, i32 noundef %683)
  store i32 %call716, ptr %retval, align 4
  br label %return

if.end717:                                        ; preds = %sw.bb700
  store i32 0, ptr %r.addr, align 4
  %684 = load ptr, ptr %s.addr, align 8
  %sub718 = getelementptr inbounds %struct.inflate_blocks_state, ptr %684, i32 0, i32 1
  %codes719 = getelementptr inbounds %struct.anon.2, ptr %sub718, i32 0, i32 0
  %685 = load ptr, ptr %codes719, align 8
  %686 = load ptr, ptr %z.addr, align 8
  call void @inflate_codes_free(ptr noundef %685, ptr noundef %686)
  %687 = load ptr, ptr %z.addr, align 8
  %next_in720 = getelementptr inbounds %struct.z_stream_s, ptr %687, i32 0, i32 0
  %688 = load ptr, ptr %next_in720, align 8
  store ptr %688, ptr %p, align 8
  %689 = load ptr, ptr %z.addr, align 8
  %avail_in721 = getelementptr inbounds %struct.z_stream_s, ptr %689, i32 0, i32 1
  %690 = load i32, ptr %avail_in721, align 8
  store i32 %690, ptr %n, align 4
  %691 = load ptr, ptr %s.addr, align 8
  %bitb722 = getelementptr inbounds %struct.inflate_blocks_state, ptr %691, i32 0, i32 4
  %692 = load i64, ptr %bitb722, align 8
  store i64 %692, ptr %b, align 8
  %693 = load ptr, ptr %s.addr, align 8
  %bitk723 = getelementptr inbounds %struct.inflate_blocks_state, ptr %693, i32 0, i32 3
  %694 = load i32, ptr %bitk723, align 4
  store i32 %694, ptr %k, align 4
  %695 = load ptr, ptr %s.addr, align 8
  %write724 = getelementptr inbounds %struct.inflate_blocks_state, ptr %695, i32 0, i32 9
  %696 = load ptr, ptr %write724, align 8
  store ptr %696, ptr %q, align 8
  %697 = load ptr, ptr %q, align 8
  %698 = load ptr, ptr %s.addr, align 8
  %read725 = getelementptr inbounds %struct.inflate_blocks_state, ptr %698, i32 0, i32 8
  %699 = load ptr, ptr %read725, align 8
  %cmp726 = icmp ult ptr %697, %699
  br i1 %cmp726, label %cond.true728, label %cond.false734

cond.true728:                                     ; preds = %if.end717
  %700 = load ptr, ptr %s.addr, align 8
  %read729 = getelementptr inbounds %struct.inflate_blocks_state, ptr %700, i32 0, i32 8
  %701 = load ptr, ptr %read729, align 8
  %702 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast730 = ptrtoint ptr %701 to i64
  %sub.ptr.rhs.cast731 = ptrtoint ptr %702 to i64
  %sub.ptr.sub732 = sub i64 %sub.ptr.lhs.cast730, %sub.ptr.rhs.cast731
  %sub733 = sub nsw i64 %sub.ptr.sub732, 1
  br label %cond.end739

cond.false734:                                    ; preds = %if.end717
  %703 = load ptr, ptr %s.addr, align 8
  %end735 = getelementptr inbounds %struct.inflate_blocks_state, ptr %703, i32 0, i32 7
  %704 = load ptr, ptr %end735, align 8
  %705 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast736 = ptrtoint ptr %704 to i64
  %sub.ptr.rhs.cast737 = ptrtoint ptr %705 to i64
  %sub.ptr.sub738 = sub i64 %sub.ptr.lhs.cast736, %sub.ptr.rhs.cast737
  br label %cond.end739

cond.end739:                                      ; preds = %cond.false734, %cond.true728
  %cond740 = phi i64 [ %sub733, %cond.true728 ], [ %sub.ptr.sub738, %cond.false734 ]
  %conv741 = trunc i64 %cond740 to i32
  store i32 %conv741, ptr %m, align 4
  %706 = load ptr, ptr %s.addr, align 8
  %last742 = getelementptr inbounds %struct.inflate_blocks_state, ptr %706, i32 0, i32 2
  %707 = load i32, ptr %last742, align 8
  %tobool743 = icmp ne i32 %707, 0
  br i1 %tobool743, label %if.end746, label %if.then744

if.then744:                                       ; preds = %cond.end739
  %708 = load ptr, ptr %s.addr, align 8
  %mode745 = getelementptr inbounds %struct.inflate_blocks_state, ptr %708, i32 0, i32 0
  store i32 0, ptr %mode745, align 8
  br label %sw.epilog826

if.end746:                                        ; preds = %cond.end739
  %709 = load ptr, ptr %s.addr, align 8
  %mode747 = getelementptr inbounds %struct.inflate_blocks_state, ptr %709, i32 0, i32 0
  store i32 7, ptr %mode747, align 8
  br label %sw.bb748

sw.bb748:                                         ; preds = %while.body, %if.end746
  %710 = load ptr, ptr %q, align 8
  %711 = load ptr, ptr %s.addr, align 8
  %write749 = getelementptr inbounds %struct.inflate_blocks_state, ptr %711, i32 0, i32 9
  store ptr %710, ptr %write749, align 8
  %712 = load ptr, ptr %s.addr, align 8
  %713 = load ptr, ptr %z.addr, align 8
  %714 = load i32, ptr %r.addr, align 4
  %call750 = call i32 @inflate_flush(ptr noundef %712, ptr noundef %713, i32 noundef %714)
  store i32 %call750, ptr %r.addr, align 4
  %715 = load ptr, ptr %s.addr, align 8
  %write751 = getelementptr inbounds %struct.inflate_blocks_state, ptr %715, i32 0, i32 9
  %716 = load ptr, ptr %write751, align 8
  store ptr %716, ptr %q, align 8
  %717 = load ptr, ptr %q, align 8
  %718 = load ptr, ptr %s.addr, align 8
  %read752 = getelementptr inbounds %struct.inflate_blocks_state, ptr %718, i32 0, i32 8
  %719 = load ptr, ptr %read752, align 8
  %cmp753 = icmp ult ptr %717, %719
  br i1 %cmp753, label %cond.true755, label %cond.false761

cond.true755:                                     ; preds = %sw.bb748
  %720 = load ptr, ptr %s.addr, align 8
  %read756 = getelementptr inbounds %struct.inflate_blocks_state, ptr %720, i32 0, i32 8
  %721 = load ptr, ptr %read756, align 8
  %722 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast757 = ptrtoint ptr %721 to i64
  %sub.ptr.rhs.cast758 = ptrtoint ptr %722 to i64
  %sub.ptr.sub759 = sub i64 %sub.ptr.lhs.cast757, %sub.ptr.rhs.cast758
  %sub760 = sub nsw i64 %sub.ptr.sub759, 1
  br label %cond.end766

cond.false761:                                    ; preds = %sw.bb748
  %723 = load ptr, ptr %s.addr, align 8
  %end762 = getelementptr inbounds %struct.inflate_blocks_state, ptr %723, i32 0, i32 7
  %724 = load ptr, ptr %end762, align 8
  %725 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast763 = ptrtoint ptr %724 to i64
  %sub.ptr.rhs.cast764 = ptrtoint ptr %725 to i64
  %sub.ptr.sub765 = sub i64 %sub.ptr.lhs.cast763, %sub.ptr.rhs.cast764
  br label %cond.end766

cond.end766:                                      ; preds = %cond.false761, %cond.true755
  %cond767 = phi i64 [ %sub760, %cond.true755 ], [ %sub.ptr.sub765, %cond.false761 ]
  %conv768 = trunc i64 %cond767 to i32
  store i32 %conv768, ptr %m, align 4
  %726 = load ptr, ptr %s.addr, align 8
  %read769 = getelementptr inbounds %struct.inflate_blocks_state, ptr %726, i32 0, i32 8
  %727 = load ptr, ptr %read769, align 8
  %728 = load ptr, ptr %s.addr, align 8
  %write770 = getelementptr inbounds %struct.inflate_blocks_state, ptr %728, i32 0, i32 9
  %729 = load ptr, ptr %write770, align 8
  %cmp771 = icmp ne ptr %727, %729
  br i1 %cmp771, label %if.then773, label %if.end786

if.then773:                                       ; preds = %cond.end766
  %730 = load i64, ptr %b, align 8
  %731 = load ptr, ptr %s.addr, align 8
  %bitb774 = getelementptr inbounds %struct.inflate_blocks_state, ptr %731, i32 0, i32 4
  store i64 %730, ptr %bitb774, align 8
  %732 = load i32, ptr %k, align 4
  %733 = load ptr, ptr %s.addr, align 8
  %bitk775 = getelementptr inbounds %struct.inflate_blocks_state, ptr %733, i32 0, i32 3
  store i32 %732, ptr %bitk775, align 4
  %734 = load i32, ptr %n, align 4
  %735 = load ptr, ptr %z.addr, align 8
  %avail_in776 = getelementptr inbounds %struct.z_stream_s, ptr %735, i32 0, i32 1
  store i32 %734, ptr %avail_in776, align 8
  %736 = load ptr, ptr %p, align 8
  %737 = load ptr, ptr %z.addr, align 8
  %next_in777 = getelementptr inbounds %struct.z_stream_s, ptr %737, i32 0, i32 0
  %738 = load ptr, ptr %next_in777, align 8
  %sub.ptr.lhs.cast778 = ptrtoint ptr %736 to i64
  %sub.ptr.rhs.cast779 = ptrtoint ptr %738 to i64
  %sub.ptr.sub780 = sub i64 %sub.ptr.lhs.cast778, %sub.ptr.rhs.cast779
  %739 = load ptr, ptr %z.addr, align 8
  %total_in781 = getelementptr inbounds %struct.z_stream_s, ptr %739, i32 0, i32 2
  %740 = load i64, ptr %total_in781, align 8
  %add782 = add i64 %740, %sub.ptr.sub780
  store i64 %add782, ptr %total_in781, align 8
  %741 = load ptr, ptr %p, align 8
  %742 = load ptr, ptr %z.addr, align 8
  %next_in783 = getelementptr inbounds %struct.z_stream_s, ptr %742, i32 0, i32 0
  store ptr %741, ptr %next_in783, align 8
  %743 = load ptr, ptr %q, align 8
  %744 = load ptr, ptr %s.addr, align 8
  %write784 = getelementptr inbounds %struct.inflate_blocks_state, ptr %744, i32 0, i32 9
  store ptr %743, ptr %write784, align 8
  %745 = load ptr, ptr %s.addr, align 8
  %746 = load ptr, ptr %z.addr, align 8
  %747 = load i32, ptr %r.addr, align 4
  %call785 = call i32 @inflate_flush(ptr noundef %745, ptr noundef %746, i32 noundef %747)
  store i32 %call785, ptr %retval, align 4
  br label %return

if.end786:                                        ; preds = %cond.end766
  %748 = load ptr, ptr %s.addr, align 8
  %mode787 = getelementptr inbounds %struct.inflate_blocks_state, ptr %748, i32 0, i32 0
  store i32 8, ptr %mode787, align 8
  br label %sw.bb788

sw.bb788:                                         ; preds = %while.body, %if.end786
  store i32 1, ptr %r.addr, align 4
  %749 = load i64, ptr %b, align 8
  %750 = load ptr, ptr %s.addr, align 8
  %bitb789 = getelementptr inbounds %struct.inflate_blocks_state, ptr %750, i32 0, i32 4
  store i64 %749, ptr %bitb789, align 8
  %751 = load i32, ptr %k, align 4
  %752 = load ptr, ptr %s.addr, align 8
  %bitk790 = getelementptr inbounds %struct.inflate_blocks_state, ptr %752, i32 0, i32 3
  store i32 %751, ptr %bitk790, align 4
  %753 = load i32, ptr %n, align 4
  %754 = load ptr, ptr %z.addr, align 8
  %avail_in791 = getelementptr inbounds %struct.z_stream_s, ptr %754, i32 0, i32 1
  store i32 %753, ptr %avail_in791, align 8
  %755 = load ptr, ptr %p, align 8
  %756 = load ptr, ptr %z.addr, align 8
  %next_in792 = getelementptr inbounds %struct.z_stream_s, ptr %756, i32 0, i32 0
  %757 = load ptr, ptr %next_in792, align 8
  %sub.ptr.lhs.cast793 = ptrtoint ptr %755 to i64
  %sub.ptr.rhs.cast794 = ptrtoint ptr %757 to i64
  %sub.ptr.sub795 = sub i64 %sub.ptr.lhs.cast793, %sub.ptr.rhs.cast794
  %758 = load ptr, ptr %z.addr, align 8
  %total_in796 = getelementptr inbounds %struct.z_stream_s, ptr %758, i32 0, i32 2
  %759 = load i64, ptr %total_in796, align 8
  %add797 = add i64 %759, %sub.ptr.sub795
  store i64 %add797, ptr %total_in796, align 8
  %760 = load ptr, ptr %p, align 8
  %761 = load ptr, ptr %z.addr, align 8
  %next_in798 = getelementptr inbounds %struct.z_stream_s, ptr %761, i32 0, i32 0
  store ptr %760, ptr %next_in798, align 8
  %762 = load ptr, ptr %q, align 8
  %763 = load ptr, ptr %s.addr, align 8
  %write799 = getelementptr inbounds %struct.inflate_blocks_state, ptr %763, i32 0, i32 9
  store ptr %762, ptr %write799, align 8
  %764 = load ptr, ptr %s.addr, align 8
  %765 = load ptr, ptr %z.addr, align 8
  %766 = load i32, ptr %r.addr, align 4
  %call800 = call i32 @inflate_flush(ptr noundef %764, ptr noundef %765, i32 noundef %766)
  store i32 %call800, ptr %retval, align 4
  br label %return

sw.bb801:                                         ; preds = %while.body
  store i32 -3, ptr %r.addr, align 4
  %767 = load i64, ptr %b, align 8
  %768 = load ptr, ptr %s.addr, align 8
  %bitb802 = getelementptr inbounds %struct.inflate_blocks_state, ptr %768, i32 0, i32 4
  store i64 %767, ptr %bitb802, align 8
  %769 = load i32, ptr %k, align 4
  %770 = load ptr, ptr %s.addr, align 8
  %bitk803 = getelementptr inbounds %struct.inflate_blocks_state, ptr %770, i32 0, i32 3
  store i32 %769, ptr %bitk803, align 4
  %771 = load i32, ptr %n, align 4
  %772 = load ptr, ptr %z.addr, align 8
  %avail_in804 = getelementptr inbounds %struct.z_stream_s, ptr %772, i32 0, i32 1
  store i32 %771, ptr %avail_in804, align 8
  %773 = load ptr, ptr %p, align 8
  %774 = load ptr, ptr %z.addr, align 8
  %next_in805 = getelementptr inbounds %struct.z_stream_s, ptr %774, i32 0, i32 0
  %775 = load ptr, ptr %next_in805, align 8
  %sub.ptr.lhs.cast806 = ptrtoint ptr %773 to i64
  %sub.ptr.rhs.cast807 = ptrtoint ptr %775 to i64
  %sub.ptr.sub808 = sub i64 %sub.ptr.lhs.cast806, %sub.ptr.rhs.cast807
  %776 = load ptr, ptr %z.addr, align 8
  %total_in809 = getelementptr inbounds %struct.z_stream_s, ptr %776, i32 0, i32 2
  %777 = load i64, ptr %total_in809, align 8
  %add810 = add i64 %777, %sub.ptr.sub808
  store i64 %add810, ptr %total_in809, align 8
  %778 = load ptr, ptr %p, align 8
  %779 = load ptr, ptr %z.addr, align 8
  %next_in811 = getelementptr inbounds %struct.z_stream_s, ptr %779, i32 0, i32 0
  store ptr %778, ptr %next_in811, align 8
  %780 = load ptr, ptr %q, align 8
  %781 = load ptr, ptr %s.addr, align 8
  %write812 = getelementptr inbounds %struct.inflate_blocks_state, ptr %781, i32 0, i32 9
  store ptr %780, ptr %write812, align 8
  %782 = load ptr, ptr %s.addr, align 8
  %783 = load ptr, ptr %z.addr, align 8
  %784 = load i32, ptr %r.addr, align 4
  %call813 = call i32 @inflate_flush(ptr noundef %782, ptr noundef %783, i32 noundef %784)
  store i32 %call813, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %while.body
  store i32 -2, ptr %r.addr, align 4
  %785 = load i64, ptr %b, align 8
  %786 = load ptr, ptr %s.addr, align 8
  %bitb814 = getelementptr inbounds %struct.inflate_blocks_state, ptr %786, i32 0, i32 4
  store i64 %785, ptr %bitb814, align 8
  %787 = load i32, ptr %k, align 4
  %788 = load ptr, ptr %s.addr, align 8
  %bitk815 = getelementptr inbounds %struct.inflate_blocks_state, ptr %788, i32 0, i32 3
  store i32 %787, ptr %bitk815, align 4
  %789 = load i32, ptr %n, align 4
  %790 = load ptr, ptr %z.addr, align 8
  %avail_in816 = getelementptr inbounds %struct.z_stream_s, ptr %790, i32 0, i32 1
  store i32 %789, ptr %avail_in816, align 8
  %791 = load ptr, ptr %p, align 8
  %792 = load ptr, ptr %z.addr, align 8
  %next_in817 = getelementptr inbounds %struct.z_stream_s, ptr %792, i32 0, i32 0
  %793 = load ptr, ptr %next_in817, align 8
  %sub.ptr.lhs.cast818 = ptrtoint ptr %791 to i64
  %sub.ptr.rhs.cast819 = ptrtoint ptr %793 to i64
  %sub.ptr.sub820 = sub i64 %sub.ptr.lhs.cast818, %sub.ptr.rhs.cast819
  %794 = load ptr, ptr %z.addr, align 8
  %total_in821 = getelementptr inbounds %struct.z_stream_s, ptr %794, i32 0, i32 2
  %795 = load i64, ptr %total_in821, align 8
  %add822 = add i64 %795, %sub.ptr.sub820
  store i64 %add822, ptr %total_in821, align 8
  %796 = load ptr, ptr %p, align 8
  %797 = load ptr, ptr %z.addr, align 8
  %next_in823 = getelementptr inbounds %struct.z_stream_s, ptr %797, i32 0, i32 0
  store ptr %796, ptr %next_in823, align 8
  %798 = load ptr, ptr %q, align 8
  %799 = load ptr, ptr %s.addr, align 8
  %write824 = getelementptr inbounds %struct.inflate_blocks_state, ptr %799, i32 0, i32 9
  store ptr %798, ptr %write824, align 8
  %800 = load ptr, ptr %s.addr, align 8
  %801 = load ptr, ptr %z.addr, align 8
  %802 = load i32, ptr %r.addr, align 4
  %call825 = call i32 @inflate_flush(ptr noundef %800, ptr noundef %801, i32 noundef %802)
  store i32 %call825, ptr %retval, align 4
  br label %return

sw.epilog826:                                     ; preds = %if.then744, %if.end273, %if.then272, %cond.end135, %sw.epilog
  br label %while.body

return:                                           ; preds = %sw.default, %sw.bb801, %sw.bb788, %if.then773, %if.then715, %if.then683, %if.end666, %if.then595, %if.else544, %if.else482, %if.end443, %if.else377, %if.then342, %if.then317, %if.else285, %if.then237, %if.then141, %if.then109, %if.else82, %sw.bb59, %if.then38, %if.else
  %803 = load i32, ptr %retval, align 4
  ret i32 %803
}

declare i32 @inflate_flush(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @inflate_trees_fixed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @inflate_codes_new(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i32 @inflate_trees_bits(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @inflate_trees_dynamic(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @inflate_codes(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflate_blocks_free(ptr noundef %s, ptr noundef %z) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load ptr, ptr %z.addr, align 8
  call void @inflate_blocks_reset(ptr noundef %0, ptr noundef %1, ptr noundef null)
  %2 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %zfree, align 8
  %4 = load ptr, ptr %z.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %opaque, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %window, align 8
  call void %3(ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %z.addr, align 8
  %zfree1 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %zfree1, align 8
  %10 = load ptr, ptr %z.addr, align 8
  %opaque2 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %opaque2, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %hufts = getelementptr inbounds %struct.inflate_blocks_state, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %hufts, align 8
  call void %9(ptr noundef %11, ptr noundef %13)
  %14 = load ptr, ptr %z.addr, align 8
  %zfree3 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %zfree3, align 8
  %16 = load ptr, ptr %z.addr, align 8
  %opaque4 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %opaque4, align 8
  %18 = load ptr, ptr %s.addr, align 8
  call void %15(ptr noundef %17, ptr noundef %18)
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define void @inflate_set_dictionary(ptr noundef %s, ptr noundef %d, i32 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %d, ptr %d.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %window, align 8
  %2 = load ptr, ptr %d.addr, align 8
  %3 = load i32, ptr %n.addr, align 4
  %conv = zext i32 %3 to i64
  %4 = load ptr, ptr %s.addr, align 8
  %window1 = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %window1, align 8
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %5, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %1, ptr noundef %2, i64 noundef %conv, i64 noundef %6) #4
  %7 = load ptr, ptr %s.addr, align 8
  %window2 = getelementptr inbounds %struct.inflate_blocks_state, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %window2, align 8
  %9 = load i32, ptr %n.addr, align 4
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  %10 = load ptr, ptr %s.addr, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, ptr %10, i32 0, i32 9
  store ptr %add.ptr, ptr %write, align 8
  %11 = load ptr, ptr %s.addr, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, ptr %11, i32 0, i32 8
  store ptr %add.ptr, ptr %read, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflate_blocks_sync_point(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %mode = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %mode, align 8
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
