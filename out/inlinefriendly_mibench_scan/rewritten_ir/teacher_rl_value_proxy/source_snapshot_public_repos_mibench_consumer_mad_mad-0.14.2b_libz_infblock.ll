; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_rl_value_proxy/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libz_infblock.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/infblock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.inflate_blocks_state = type { i32, %union.anon, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, ptr, i32, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
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
  %cmp.not = icmp eq ptr %c, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %s.addr, align 8
  %check = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i64 0, i32 11
  %1 = load i64, ptr %check, align 8
  %2 = load ptr, ptr %c.addr, align 8
  store i64 %1, ptr %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i32, ptr %3, align 8
  %cmp1 = icmp eq i32 %4, 4
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %s.addr, align 8
  %6 = load i32, ptr %5, align 8
  %cmp3 = icmp eq i32 %6, 5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %8 = load ptr, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %opaque, align 8
  %10 = load ptr, ptr %s.addr, align 8
  %blens = getelementptr inbounds %struct.inflate_blocks_state, ptr %10, i64 0, i32 1, i32 0, i32 2
  %11 = load ptr, ptr %blens, align 8
  call void %8(ptr noundef %9, ptr noundef %11) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load i32, ptr %12, align 8
  %cmp7 = icmp eq i32 %13, 6
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %14 = load ptr, ptr %s.addr, align 8
  %sub9 = getelementptr inbounds %struct.inflate_blocks_state, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %sub9, align 8
  %16 = load ptr, ptr %z.addr, align 8
  call void @inflate_codes_free(ptr noundef %15, ptr noundef %16) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5
  %17 = load ptr, ptr %s.addr, align 8
  store i32 0, ptr %17, align 8
  %bitk = getelementptr inbounds %struct.inflate_blocks_state, ptr %17, i64 0, i32 3
  store i32 0, ptr %bitk, align 4
  %bitb = getelementptr inbounds %struct.inflate_blocks_state, ptr %17, i64 0, i32 4
  store i64 0, ptr %bitb, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %17, i64 0, i32 6
  %18 = load ptr, ptr %window, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, ptr %19, i64 0, i32 9
  store ptr %18, ptr %write, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, ptr %19, i64 0, i32 8
  store ptr %18, ptr %read, align 8
  %checkfn = getelementptr inbounds %struct.inflate_blocks_state, ptr %19, i64 0, i32 10
  %20 = load ptr, ptr %checkfn, align 8
  %cmp12.not = icmp eq ptr %20, null
  br i1 %cmp12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end10
  %21 = load ptr, ptr %s.addr, align 8
  %checkfn14 = getelementptr inbounds %struct.inflate_blocks_state, ptr %21, i64 0, i32 10
  %22 = load ptr, ptr %checkfn14, align 8
  %call = call i64 %22(i64 noundef 0, ptr noundef null, i32 noundef 0) #4
  %check15 = getelementptr inbounds %struct.inflate_blocks_state, ptr %21, i64 0, i32 11
  store i64 %call, ptr %check15, align 8
  %23 = load ptr, ptr %z.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 12
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
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %z, i64 0, i32 8
  %0 = load ptr, ptr %zalloc, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %z, i64 0, i32 10
  %1 = load ptr, ptr %opaque, align 8
  %call = call ptr %0(ptr noundef %1, i32 noundef 1, i32 noundef 112) #4
  store ptr %call, ptr %s, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %z.addr, align 8
  %zalloc1 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 8
  %4 = load ptr, ptr %zalloc1, align 8
  %opaque2 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %opaque2, align 8
  %call3 = call ptr %4(ptr noundef %5, i32 noundef 8, i32 noundef 1440) #4
  %6 = load ptr, ptr %s, align 8
  %hufts = getelementptr inbounds %struct.inflate_blocks_state, ptr %6, i64 0, i32 5
  store ptr %call3, ptr %hufts, align 8
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %8 = load ptr, ptr %zfree, align 8
  %opaque6 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %opaque6, align 8
  %10 = load ptr, ptr %s, align 8
  call void %8(ptr noundef %9, ptr noundef %10) #4
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %z.addr, align 8
  %zalloc8 = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 8
  %12 = load ptr, ptr %zalloc8, align 8
  %opaque9 = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %opaque9, align 8
  %14 = load i32, ptr %w.addr, align 4
  %call10 = call ptr %12(ptr noundef %13, i32 noundef 1, i32 noundef %14) #4
  %15 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %15, i64 0, i32 6
  store ptr %call10, ptr %window, align 8
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end7
  %16 = load ptr, ptr %z.addr, align 8
  %zfree13 = getelementptr inbounds %struct.z_stream_s, ptr %16, i64 0, i32 9
  %17 = load ptr, ptr %zfree13, align 8
  %opaque14 = getelementptr inbounds %struct.z_stream_s, ptr %16, i64 0, i32 10
  %18 = load ptr, ptr %opaque14, align 8
  %19 = load ptr, ptr %s, align 8
  %hufts15 = getelementptr inbounds %struct.inflate_blocks_state, ptr %19, i64 0, i32 5
  %20 = load ptr, ptr %hufts15, align 8
  call void %17(ptr noundef %18, ptr noundef %20) #4
  %21 = load ptr, ptr %z.addr, align 8
  %zfree16 = getelementptr inbounds %struct.z_stream_s, ptr %21, i64 0, i32 9
  %22 = load ptr, ptr %zfree16, align 8
  %opaque17 = getelementptr inbounds %struct.z_stream_s, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %opaque17, align 8
  %24 = load ptr, ptr %s, align 8
  call void %22(ptr noundef %23, ptr noundef %24) #4
  store ptr null, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end7
  %25 = load ptr, ptr %s, align 8
  %window19 = getelementptr inbounds %struct.inflate_blocks_state, ptr %25, i64 0, i32 6
  %26 = load ptr, ptr %window19, align 8
  %27 = load i32, ptr %w.addr, align 4
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %idx.ext
  %end = getelementptr inbounds %struct.inflate_blocks_state, ptr %25, i64 0, i32 7
  store ptr %add.ptr, ptr %end, align 8
  %28 = load ptr, ptr %c.addr, align 8
  %29 = load ptr, ptr %s, align 8
  %checkfn = getelementptr inbounds %struct.inflate_blocks_state, ptr %29, i64 0, i32 10
  store ptr %28, ptr %checkfn, align 8
  store i32 0, ptr %29, align 8
  %30 = load ptr, ptr %z.addr, align 8
  call void @inflate_blocks_reset(ptr noundef nonnull %29, ptr noundef %30, ptr noundef null)
  store ptr %29, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then12, %if.then5, %if.then
  %31 = load ptr, ptr %retval, align 8
  ret ptr %31
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
  %0 = load ptr, ptr %z, align 8
  store ptr %0, ptr %p, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %z, i64 0, i32 1
  %1 = load i32, ptr %avail_in, align 8
  store i32 %1, ptr %n, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %bitb = getelementptr inbounds %struct.inflate_blocks_state, ptr %2, i64 0, i32 4
  %3 = load i64, ptr %bitb, align 8
  store i64 %3, ptr %b, align 8
  %bitk = getelementptr inbounds %struct.inflate_blocks_state, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %bitk, align 4
  store i32 %4, ptr %k, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, ptr %5, i64 0, i32 9
  %6 = load ptr, ptr %write, align 8
  store ptr %6, ptr %q, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %read, align 8
  %cmp = icmp ult ptr %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %s.addr, align 8
  %read1 = getelementptr inbounds %struct.inflate_blocks_state, ptr %8, i64 0, i32 8
  %9 = load ptr, ptr %read1, align 8
  %10 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %11 = xor i64 %sub.ptr.rhs.cast, -1
  %sub = add i64 %11, %sub.ptr.lhs.cast
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load ptr, ptr %s.addr, align 8
  %end = getelementptr inbounds %struct.inflate_blocks_state, ptr %12, i64 0, i32 7
  %13 = load ptr, ptr %end, align 8
  %14 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast2 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast3 = ptrtoint ptr %14 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %sub.ptr.sub4, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, ptr %m, align 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog826, %cond.end
  %15 = load ptr, ptr %s.addr, align 8
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %sw.default [
    i32 0, label %while.cond5
    i32 1, label %while.cond76
    i32 2, label %sw.bb138
    i32 3, label %while.cond279
    i32 4, label %sw.bb360
    i32 5, label %sw.bb460
    i32 6, label %sw.bb700
    i32 7, label %sw.bb748
    i32 8, label %sw.bb788
    i32 9, label %sw.bb801
  ]

while.cond5:                                      ; preds = %while.body, %if.then
  %17 = load i32, ptr %k, align 4
  %cmp6 = icmp ult i32 %17, 3
  br i1 %cmp6, label %while.body8, label %while.end

while.body8:                                      ; preds = %while.cond5
  %18 = load i32, ptr %n, align 4
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body8
  store i32 0, ptr %r.addr, align 4
  %19 = load i32, ptr %n, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %n, align 4
  %20 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv18 = zext i8 %21 to i64
  %22 = load i32, ptr %k, align 4
  %sh_prom = zext i32 %22 to i64
  %shl = shl i64 %conv18, %sh_prom
  %23 = load i64, ptr %b, align 8
  %or = or i64 %23, %shl
  store i64 %or, ptr %b, align 8
  %add19 = add i32 %22, 8
  store i32 %add19, ptr %k, align 4
  br label %while.cond5, !llvm.loop !6

if.else:                                          ; preds = %while.body8
  %24 = load i64, ptr %b, align 8
  %25 = load ptr, ptr %s.addr, align 8
  %bitb9 = getelementptr inbounds %struct.inflate_blocks_state, ptr %25, i64 0, i32 4
  store i64 %24, ptr %bitb9, align 8
  %26 = load i32, ptr %k, align 4
  %bitk10 = getelementptr inbounds %struct.inflate_blocks_state, ptr %25, i64 0, i32 3
  store i32 %26, ptr %bitk10, align 4
  %27 = load i32, ptr %n, align 4
  %28 = load ptr, ptr %z.addr, align 8
  %avail_in11 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 1
  store i32 %27, ptr %avail_in11, align 8
  %29 = load ptr, ptr %p, align 8
  %30 = load ptr, ptr %28, align 8
  %sub.ptr.lhs.cast13 = ptrtoint ptr %29 to i64
  %sub.ptr.rhs.cast14 = ptrtoint ptr %30 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %31 = load ptr, ptr %z.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %31, i64 0, i32 2
  %32 = load i64, ptr %total_in, align 8
  %add = add i64 %32, %sub.ptr.sub15
  store i64 %add, ptr %total_in, align 8
  %33 = load ptr, ptr %p, align 8
  store ptr %33, ptr %31, align 8
  %34 = load ptr, ptr %q, align 8
  %35 = load ptr, ptr %s.addr, align 8
  %write17 = getelementptr inbounds %struct.inflate_blocks_state, ptr %35, i64 0, i32 9
  store ptr %34, ptr %write17, align 8
  %36 = load ptr, ptr %z.addr, align 8
  %37 = load i32, ptr %r.addr, align 4
  %call = call i32 @inflate_flush(ptr noundef %35, ptr noundef %36, i32 noundef %37) #4
  store i32 %call, ptr %retval, align 4
  br label %return

while.end:                                        ; preds = %while.cond5
  %38 = load i64, ptr %b, align 8
  %conv20 = trunc i64 %38 to i32
  %and = and i32 %conv20, 7
  store i32 %and, ptr %t, align 4
  %and21 = and i32 %conv20, 1
  %39 = load ptr, ptr %s.addr, align 8
  %last = getelementptr inbounds %struct.inflate_blocks_state, ptr %39, i64 0, i32 2
  store i32 %and21, ptr %last, align 8
  %shr = lshr i32 %and, 1
  switch i32 %shr, label %while.end.unreachabledefault [
    i32 0, label %sw.bb22
    i32 1, label %sw.bb30
    i32 2, label %sw.bb55
    i32 3, label %sw.bb59
  ]

sw.bb22:                                          ; preds = %while.end
  %40 = load i64, ptr %b, align 8
  %shr23 = lshr i64 %40, 3
  store i64 %shr23, ptr %b, align 8
  %41 = load i32, ptr %k, align 4
  %sub24 = add i32 %41, -3
  store i32 %sub24, ptr %k, align 4
  %and25 = and i32 %sub24, 7
  store i32 %and25, ptr %t, align 4
  %sh_prom26 = zext i32 %and25 to i64
  %shr27 = lshr i64 %shr23, %sh_prom26
  store i64 %shr27, ptr %b, align 8
  %sub28 = and i32 %sub24, -8
  store i32 %sub28, ptr %k, align 4
  %42 = load ptr, ptr %s.addr, align 8
  store i32 1, ptr %42, align 8
  br label %sw.epilog826

sw.bb30:                                          ; preds = %while.end
  %43 = load ptr, ptr %z.addr, align 8
  %call31 = call i32 @inflate_trees_fixed(ptr noundef nonnull %bl, ptr noundef nonnull %bd, ptr noundef nonnull %tl, ptr noundef nonnull %td, ptr noundef %43) #4
  %44 = load i32, ptr %bl, align 4
  %45 = load i32, ptr %bd, align 4
  %46 = load ptr, ptr %tl, align 8
  %47 = load ptr, ptr %td, align 8
  %call32 = call ptr @inflate_codes_new(i32 noundef %44, i32 noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %43) #4
  %48 = load ptr, ptr %s.addr, align 8
  %sub33 = getelementptr inbounds %struct.inflate_blocks_state, ptr %48, i64 0, i32 1
  store ptr %call32, ptr %sub33, align 8
  %cmp36 = icmp eq ptr %call32, null
  br i1 %cmp36, label %if.then38, label %if.end51

if.then38:                                        ; preds = %sw.bb30
  store i32 -4, ptr %r.addr, align 4
  %49 = load i64, ptr %b, align 8
  %50 = load ptr, ptr %s.addr, align 8
  %bitb39 = getelementptr inbounds %struct.inflate_blocks_state, ptr %50, i64 0, i32 4
  store i64 %49, ptr %bitb39, align 8
  %51 = load i32, ptr %k, align 4
  %bitk40 = getelementptr inbounds %struct.inflate_blocks_state, ptr %50, i64 0, i32 3
  store i32 %51, ptr %bitk40, align 4
  %52 = load i32, ptr %n, align 4
  %53 = load ptr, ptr %z.addr, align 8
  %avail_in41 = getelementptr inbounds %struct.z_stream_s, ptr %53, i64 0, i32 1
  store i32 %52, ptr %avail_in41, align 8
  %54 = load ptr, ptr %p, align 8
  %55 = load ptr, ptr %53, align 8
  %sub.ptr.lhs.cast43 = ptrtoint ptr %54 to i64
  %sub.ptr.rhs.cast44 = ptrtoint ptr %55 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %56 = load ptr, ptr %z.addr, align 8
  %total_in46 = getelementptr inbounds %struct.z_stream_s, ptr %56, i64 0, i32 2
  %57 = load i64, ptr %total_in46, align 8
  %add47 = add i64 %57, %sub.ptr.sub45
  store i64 %add47, ptr %total_in46, align 8
  %58 = load ptr, ptr %p, align 8
  store ptr %58, ptr %56, align 8
  %59 = load ptr, ptr %q, align 8
  %60 = load ptr, ptr %s.addr, align 8
  %write49 = getelementptr inbounds %struct.inflate_blocks_state, ptr %60, i64 0, i32 9
  store ptr %59, ptr %write49, align 8
  %61 = load ptr, ptr %z.addr, align 8
  %62 = load i32, ptr %r.addr, align 4
  %call50 = call i32 @inflate_flush(ptr noundef %60, ptr noundef %61, i32 noundef %62) #4
  store i32 %call50, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %sw.bb30
  %63 = load i64, ptr %b, align 8
  %shr52 = lshr i64 %63, 3
  store i64 %shr52, ptr %b, align 8
  %64 = load i32, ptr %k, align 4
  %sub53 = add i32 %64, -3
  store i32 %sub53, ptr %k, align 4
  %65 = load ptr, ptr %s.addr, align 8
  store i32 6, ptr %65, align 8
  br label %sw.epilog826

sw.bb55:                                          ; preds = %while.end
  %66 = load i64, ptr %b, align 8
  %shr56 = lshr i64 %66, 3
  store i64 %shr56, ptr %b, align 8
  %67 = load i32, ptr %k, align 4
  %sub57 = add i32 %67, -3
  store i32 %sub57, ptr %k, align 4
  %68 = load ptr, ptr %s.addr, align 8
  store i32 3, ptr %68, align 8
  br label %sw.epilog826

sw.bb59:                                          ; preds = %while.end
  %69 = load i64, ptr %b, align 8
  %shr60 = lshr i64 %69, 3
  store i64 %shr60, ptr %b, align 8
  %70 = load i32, ptr %k, align 4
  %sub61 = add i32 %70, -3
  store i32 %sub61, ptr %k, align 4
  %71 = load ptr, ptr %s.addr, align 8
  store i32 9, ptr %71, align 8
  %72 = load ptr, ptr %z.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %72, i64 0, i32 6
  store ptr @.str, ptr %msg, align 8
  store i32 -3, ptr %r.addr, align 4
  %73 = load i64, ptr %b, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %bitb63 = getelementptr inbounds %struct.inflate_blocks_state, ptr %74, i64 0, i32 4
  store i64 %73, ptr %bitb63, align 8
  %75 = load i32, ptr %k, align 4
  %bitk64 = getelementptr inbounds %struct.inflate_blocks_state, ptr %74, i64 0, i32 3
  store i32 %75, ptr %bitk64, align 4
  %76 = load i32, ptr %n, align 4
  %77 = load ptr, ptr %z.addr, align 8
  %avail_in65 = getelementptr inbounds %struct.z_stream_s, ptr %77, i64 0, i32 1
  store i32 %76, ptr %avail_in65, align 8
  %78 = load ptr, ptr %p, align 8
  %79 = load ptr, ptr %77, align 8
  %sub.ptr.lhs.cast67 = ptrtoint ptr %78 to i64
  %sub.ptr.rhs.cast68 = ptrtoint ptr %79 to i64
  %sub.ptr.sub69 = sub i64 %sub.ptr.lhs.cast67, %sub.ptr.rhs.cast68
  %80 = load ptr, ptr %z.addr, align 8
  %total_in70 = getelementptr inbounds %struct.z_stream_s, ptr %80, i64 0, i32 2
  %81 = load i64, ptr %total_in70, align 8
  %add71 = add i64 %81, %sub.ptr.sub69
  store i64 %add71, ptr %total_in70, align 8
  %82 = load ptr, ptr %p, align 8
  store ptr %82, ptr %80, align 8
  %83 = load ptr, ptr %q, align 8
  %84 = load ptr, ptr %s.addr, align 8
  %write73 = getelementptr inbounds %struct.inflate_blocks_state, ptr %84, i64 0, i32 9
  store ptr %83, ptr %write73, align 8
  %85 = load ptr, ptr %z.addr, align 8
  %86 = load i32, ptr %r.addr, align 4
  %call74 = call i32 @inflate_flush(ptr noundef %84, ptr noundef %85, i32 noundef %86) #4
  store i32 %call74, ptr %retval, align 4
  br label %return

while.end.unreachabledefault:                     ; preds = %while.end
  unreachable

while.cond76:                                     ; preds = %while.body, %if.then81
  %87 = load i32, ptr %k, align 4
  %cmp77 = icmp ult i32 %87, 32
  br i1 %cmp77, label %while.body79, label %while.end103

while.body79:                                     ; preds = %while.cond76
  %88 = load i32, ptr %n, align 4
  %tobool80.not = icmp eq i32 %88, 0
  br i1 %tobool80.not, label %if.else82, label %if.then81

if.then81:                                        ; preds = %while.body79
  store i32 0, ptr %r.addr, align 4
  %89 = load i32, ptr %n, align 4
  %dec96 = add i32 %89, -1
  store i32 %dec96, ptr %n, align 4
  %90 = load ptr, ptr %p, align 8
  %incdec.ptr97 = getelementptr inbounds i8, ptr %90, i64 1
  store ptr %incdec.ptr97, ptr %p, align 8
  %91 = load i8, ptr %90, align 1
  %conv98 = zext i8 %91 to i64
  %92 = load i32, ptr %k, align 4
  %sh_prom99 = zext i32 %92 to i64
  %shl100 = shl i64 %conv98, %sh_prom99
  %93 = load i64, ptr %b, align 8
  %or101 = or i64 %93, %shl100
  store i64 %or101, ptr %b, align 8
  %add102 = add i32 %92, 8
  store i32 %add102, ptr %k, align 4
  br label %while.cond76, !llvm.loop !8

if.else82:                                        ; preds = %while.body79
  %94 = load i64, ptr %b, align 8
  %95 = load ptr, ptr %s.addr, align 8
  %bitb83 = getelementptr inbounds %struct.inflate_blocks_state, ptr %95, i64 0, i32 4
  store i64 %94, ptr %bitb83, align 8
  %96 = load i32, ptr %k, align 4
  %bitk84 = getelementptr inbounds %struct.inflate_blocks_state, ptr %95, i64 0, i32 3
  store i32 %96, ptr %bitk84, align 4
  %97 = load i32, ptr %n, align 4
  %98 = load ptr, ptr %z.addr, align 8
  %avail_in85 = getelementptr inbounds %struct.z_stream_s, ptr %98, i64 0, i32 1
  store i32 %97, ptr %avail_in85, align 8
  %99 = load ptr, ptr %p, align 8
  %100 = load ptr, ptr %98, align 8
  %sub.ptr.lhs.cast87 = ptrtoint ptr %99 to i64
  %sub.ptr.rhs.cast88 = ptrtoint ptr %100 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %101 = load ptr, ptr %z.addr, align 8
  %total_in90 = getelementptr inbounds %struct.z_stream_s, ptr %101, i64 0, i32 2
  %102 = load i64, ptr %total_in90, align 8
  %add91 = add i64 %102, %sub.ptr.sub89
  store i64 %add91, ptr %total_in90, align 8
  %103 = load ptr, ptr %p, align 8
  store ptr %103, ptr %101, align 8
  %104 = load ptr, ptr %q, align 8
  %105 = load ptr, ptr %s.addr, align 8
  %write93 = getelementptr inbounds %struct.inflate_blocks_state, ptr %105, i64 0, i32 9
  store ptr %104, ptr %write93, align 8
  %106 = load ptr, ptr %z.addr, align 8
  %107 = load i32, ptr %r.addr, align 4
  %call94 = call i32 @inflate_flush(ptr noundef %105, ptr noundef %106, i32 noundef %107) #4
  store i32 %call94, ptr %retval, align 4
  br label %return

while.end103:                                     ; preds = %while.cond76
  %108 = load i64, ptr %b, align 8
  %neg = xor i64 %108, -1
  %shr104 = lshr i64 %neg, 16
  %109 = xor i64 %shr104, %108
  %110 = and i64 %109, 65535
  %cmp107.not = icmp eq i64 %110, 0
  br i1 %cmp107.not, label %if.end124, label %if.then109

if.then109:                                       ; preds = %while.end103
  %111 = load ptr, ptr %s.addr, align 8
  store i32 9, ptr %111, align 8
  %112 = load ptr, ptr %z.addr, align 8
  %msg111 = getelementptr inbounds %struct.z_stream_s, ptr %112, i64 0, i32 6
  store ptr @.str.1, ptr %msg111, align 8
  store i32 -3, ptr %r.addr, align 4
  %113 = load i64, ptr %b, align 8
  %114 = load ptr, ptr %s.addr, align 8
  %bitb112 = getelementptr inbounds %struct.inflate_blocks_state, ptr %114, i64 0, i32 4
  store i64 %113, ptr %bitb112, align 8
  %115 = load i32, ptr %k, align 4
  %bitk113 = getelementptr inbounds %struct.inflate_blocks_state, ptr %114, i64 0, i32 3
  store i32 %115, ptr %bitk113, align 4
  %116 = load i32, ptr %n, align 4
  %117 = load ptr, ptr %z.addr, align 8
  %avail_in114 = getelementptr inbounds %struct.z_stream_s, ptr %117, i64 0, i32 1
  store i32 %116, ptr %avail_in114, align 8
  %118 = load ptr, ptr %p, align 8
  %119 = load ptr, ptr %117, align 8
  %sub.ptr.lhs.cast116 = ptrtoint ptr %118 to i64
  %sub.ptr.rhs.cast117 = ptrtoint ptr %119 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %120 = load ptr, ptr %z.addr, align 8
  %total_in119 = getelementptr inbounds %struct.z_stream_s, ptr %120, i64 0, i32 2
  %121 = load i64, ptr %total_in119, align 8
  %add120 = add i64 %121, %sub.ptr.sub118
  store i64 %add120, ptr %total_in119, align 8
  %122 = load ptr, ptr %p, align 8
  store ptr %122, ptr %120, align 8
  %123 = load ptr, ptr %q, align 8
  %124 = load ptr, ptr %s.addr, align 8
  %write122 = getelementptr inbounds %struct.inflate_blocks_state, ptr %124, i64 0, i32 9
  store ptr %123, ptr %write122, align 8
  %125 = load ptr, ptr %z.addr, align 8
  %126 = load i32, ptr %r.addr, align 4
  %call123 = call i32 @inflate_flush(ptr noundef %124, ptr noundef %125, i32 noundef %126) #4
  store i32 %call123, ptr %retval, align 4
  br label %return

if.end124:                                        ; preds = %while.end103
  %127 = load i64, ptr %b, align 8
  %conv125 = trunc i64 %127 to i32
  %and126 = and i32 %conv125, 65535
  %128 = load ptr, ptr %s.addr, align 8
  %sub127 = getelementptr inbounds %struct.inflate_blocks_state, ptr %128, i64 0, i32 1
  store i32 %and126, ptr %sub127, align 8
  store i32 0, ptr %k, align 4
  store i64 0, ptr %b, align 8
  %tobool129.not = icmp eq i32 %and126, 0
  br i1 %tobool129.not, label %cond.false131, label %cond.end135

cond.false131:                                    ; preds = %if.end124
  %129 = load ptr, ptr %s.addr, align 8
  %last132 = getelementptr inbounds %struct.inflate_blocks_state, ptr %129, i64 0, i32 2
  %130 = load i32, ptr %last132, align 8
  %tobool133.not = icmp eq i32 %130, 0
  %cond134 = select i1 %tobool133.not, i32 0, i32 7
  br label %cond.end135

cond.end135:                                      ; preds = %if.end124, %cond.false131
  %cond136 = phi i32 [ %cond134, %cond.false131 ], [ 2, %if.end124 ]
  %131 = load ptr, ptr %s.addr, align 8
  store i32 %cond136, ptr %131, align 8
  br label %sw.epilog826

sw.bb138:                                         ; preds = %while.body
  %132 = load i32, ptr %n, align 4
  %cmp139 = icmp eq i32 %132, 0
  br i1 %cmp139, label %if.then141, label %if.end154

if.then141:                                       ; preds = %sw.bb138
  %133 = load i64, ptr %b, align 8
  %134 = load ptr, ptr %s.addr, align 8
  %bitb142 = getelementptr inbounds %struct.inflate_blocks_state, ptr %134, i64 0, i32 4
  store i64 %133, ptr %bitb142, align 8
  %135 = load i32, ptr %k, align 4
  %bitk143 = getelementptr inbounds %struct.inflate_blocks_state, ptr %134, i64 0, i32 3
  store i32 %135, ptr %bitk143, align 4
  %136 = load i32, ptr %n, align 4
  %137 = load ptr, ptr %z.addr, align 8
  %avail_in144 = getelementptr inbounds %struct.z_stream_s, ptr %137, i64 0, i32 1
  store i32 %136, ptr %avail_in144, align 8
  %138 = load ptr, ptr %p, align 8
  %139 = load ptr, ptr %137, align 8
  %sub.ptr.lhs.cast146 = ptrtoint ptr %138 to i64
  %sub.ptr.rhs.cast147 = ptrtoint ptr %139 to i64
  %sub.ptr.sub148 = sub i64 %sub.ptr.lhs.cast146, %sub.ptr.rhs.cast147
  %140 = load ptr, ptr %z.addr, align 8
  %total_in149 = getelementptr inbounds %struct.z_stream_s, ptr %140, i64 0, i32 2
  %141 = load i64, ptr %total_in149, align 8
  %add150 = add i64 %141, %sub.ptr.sub148
  store i64 %add150, ptr %total_in149, align 8
  %142 = load ptr, ptr %p, align 8
  store ptr %142, ptr %140, align 8
  %143 = load ptr, ptr %q, align 8
  %144 = load ptr, ptr %s.addr, align 8
  %write152 = getelementptr inbounds %struct.inflate_blocks_state, ptr %144, i64 0, i32 9
  store ptr %143, ptr %write152, align 8
  %145 = load ptr, ptr %z.addr, align 8
  %146 = load i32, ptr %r.addr, align 4
  %call153 = call i32 @inflate_flush(ptr noundef %144, ptr noundef %145, i32 noundef %146) #4
  store i32 %call153, ptr %retval, align 4
  br label %return

if.end154:                                        ; preds = %sw.bb138
  %147 = load i32, ptr %m, align 4
  %cmp155 = icmp eq i32 %147, 0
  br i1 %cmp155, label %if.then157, label %if.end252

if.then157:                                       ; preds = %if.end154
  %148 = load ptr, ptr %q, align 8
  %149 = load ptr, ptr %s.addr, align 8
  %end158 = getelementptr inbounds %struct.inflate_blocks_state, ptr %149, i64 0, i32 7
  %150 = load ptr, ptr %end158, align 8
  %cmp159 = icmp eq ptr %148, %150
  br i1 %cmp159, label %land.lhs.true, label %if.end183

land.lhs.true:                                    ; preds = %if.then157
  %151 = load ptr, ptr %s.addr, align 8
  %read161 = getelementptr inbounds %struct.inflate_blocks_state, ptr %151, i64 0, i32 8
  %152 = load ptr, ptr %read161, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %151, i64 0, i32 6
  %153 = load ptr, ptr %window, align 8
  %cmp162.not = icmp eq ptr %152, %153
  br i1 %cmp162.not, label %if.end183, label %if.then164

if.then164:                                       ; preds = %land.lhs.true
  %154 = load ptr, ptr %s.addr, align 8
  %window165 = getelementptr inbounds %struct.inflate_blocks_state, ptr %154, i64 0, i32 6
  %155 = load ptr, ptr %window165, align 8
  store ptr %155, ptr %q, align 8
  %read166 = getelementptr inbounds %struct.inflate_blocks_state, ptr %154, i64 0, i32 8
  %156 = load ptr, ptr %read166, align 8
  %cmp167 = icmp ult ptr %155, %156
  br i1 %cmp167, label %cond.true169, label %cond.false175

cond.true169:                                     ; preds = %if.then164
  %157 = load ptr, ptr %s.addr, align 8
  %read170 = getelementptr inbounds %struct.inflate_blocks_state, ptr %157, i64 0, i32 8
  %158 = load ptr, ptr %read170, align 8
  %159 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast171 = ptrtoint ptr %158 to i64
  %sub.ptr.rhs.cast172 = ptrtoint ptr %159 to i64
  %160 = xor i64 %sub.ptr.rhs.cast172, -1
  %sub174 = add i64 %160, %sub.ptr.lhs.cast171
  br label %cond.end180

cond.false175:                                    ; preds = %if.then164
  %161 = load ptr, ptr %s.addr, align 8
  %end176 = getelementptr inbounds %struct.inflate_blocks_state, ptr %161, i64 0, i32 7
  %162 = load ptr, ptr %end176, align 8
  %163 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast177 = ptrtoint ptr %162 to i64
  %sub.ptr.rhs.cast178 = ptrtoint ptr %163 to i64
  %sub.ptr.sub179 = sub i64 %sub.ptr.lhs.cast177, %sub.ptr.rhs.cast178
  br label %cond.end180

cond.end180:                                      ; preds = %cond.false175, %cond.true169
  %cond181 = phi i64 [ %sub174, %cond.true169 ], [ %sub.ptr.sub179, %cond.false175 ]
  %conv182 = trunc i64 %cond181 to i32
  store i32 %conv182, ptr %m, align 4
  br label %if.end183

if.end183:                                        ; preds = %cond.end180, %land.lhs.true, %if.then157
  %164 = load i32, ptr %m, align 4
  %cmp184 = icmp eq i32 %164, 0
  br i1 %cmp184, label %if.then186, label %if.end252

if.then186:                                       ; preds = %if.end183
  %165 = load ptr, ptr %q, align 8
  %166 = load ptr, ptr %s.addr, align 8
  %write187 = getelementptr inbounds %struct.inflate_blocks_state, ptr %166, i64 0, i32 9
  store ptr %165, ptr %write187, align 8
  %167 = load ptr, ptr %z.addr, align 8
  %168 = load i32, ptr %r.addr, align 4
  %call188 = call i32 @inflate_flush(ptr noundef %166, ptr noundef %167, i32 noundef %168) #4
  store i32 %call188, ptr %r.addr, align 4
  %169 = load ptr, ptr %s.addr, align 8
  %write189 = getelementptr inbounds %struct.inflate_blocks_state, ptr %169, i64 0, i32 9
  %170 = load ptr, ptr %write189, align 8
  store ptr %170, ptr %q, align 8
  %read190 = getelementptr inbounds %struct.inflate_blocks_state, ptr %169, i64 0, i32 8
  %171 = load ptr, ptr %read190, align 8
  %cmp191 = icmp ult ptr %170, %171
  br i1 %cmp191, label %cond.true193, label %cond.false199

cond.true193:                                     ; preds = %if.then186
  %172 = load ptr, ptr %s.addr, align 8
  %read194 = getelementptr inbounds %struct.inflate_blocks_state, ptr %172, i64 0, i32 8
  %173 = load ptr, ptr %read194, align 8
  %174 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast195 = ptrtoint ptr %173 to i64
  %sub.ptr.rhs.cast196 = ptrtoint ptr %174 to i64
  %175 = xor i64 %sub.ptr.rhs.cast196, -1
  %sub198 = add i64 %175, %sub.ptr.lhs.cast195
  br label %cond.end204

cond.false199:                                    ; preds = %if.then186
  %176 = load ptr, ptr %s.addr, align 8
  %end200 = getelementptr inbounds %struct.inflate_blocks_state, ptr %176, i64 0, i32 7
  %177 = load ptr, ptr %end200, align 8
  %178 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast201 = ptrtoint ptr %177 to i64
  %sub.ptr.rhs.cast202 = ptrtoint ptr %178 to i64
  %sub.ptr.sub203 = sub i64 %sub.ptr.lhs.cast201, %sub.ptr.rhs.cast202
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false199, %cond.true193
  %cond205 = phi i64 [ %sub198, %cond.true193 ], [ %sub.ptr.sub203, %cond.false199 ]
  %conv206 = trunc i64 %cond205 to i32
  store i32 %conv206, ptr %m, align 4
  %179 = load ptr, ptr %q, align 8
  %180 = load ptr, ptr %s.addr, align 8
  %end207 = getelementptr inbounds %struct.inflate_blocks_state, ptr %180, i64 0, i32 7
  %181 = load ptr, ptr %end207, align 8
  %cmp208 = icmp eq ptr %179, %181
  br i1 %cmp208, label %land.lhs.true210, label %if.end234

land.lhs.true210:                                 ; preds = %cond.end204
  %182 = load ptr, ptr %s.addr, align 8
  %read211 = getelementptr inbounds %struct.inflate_blocks_state, ptr %182, i64 0, i32 8
  %183 = load ptr, ptr %read211, align 8
  %window212 = getelementptr inbounds %struct.inflate_blocks_state, ptr %182, i64 0, i32 6
  %184 = load ptr, ptr %window212, align 8
  %cmp213.not = icmp eq ptr %183, %184
  br i1 %cmp213.not, label %if.end234, label %if.then215

if.then215:                                       ; preds = %land.lhs.true210
  %185 = load ptr, ptr %s.addr, align 8
  %window216 = getelementptr inbounds %struct.inflate_blocks_state, ptr %185, i64 0, i32 6
  %186 = load ptr, ptr %window216, align 8
  store ptr %186, ptr %q, align 8
  %read217 = getelementptr inbounds %struct.inflate_blocks_state, ptr %185, i64 0, i32 8
  %187 = load ptr, ptr %read217, align 8
  %cmp218 = icmp ult ptr %186, %187
  br i1 %cmp218, label %cond.true220, label %cond.false226

cond.true220:                                     ; preds = %if.then215
  %188 = load ptr, ptr %s.addr, align 8
  %read221 = getelementptr inbounds %struct.inflate_blocks_state, ptr %188, i64 0, i32 8
  %189 = load ptr, ptr %read221, align 8
  %190 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast222 = ptrtoint ptr %189 to i64
  %sub.ptr.rhs.cast223 = ptrtoint ptr %190 to i64
  %191 = xor i64 %sub.ptr.rhs.cast223, -1
  %sub225 = add i64 %191, %sub.ptr.lhs.cast222
  br label %cond.end231

cond.false226:                                    ; preds = %if.then215
  %192 = load ptr, ptr %s.addr, align 8
  %end227 = getelementptr inbounds %struct.inflate_blocks_state, ptr %192, i64 0, i32 7
  %193 = load ptr, ptr %end227, align 8
  %194 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast228 = ptrtoint ptr %193 to i64
  %sub.ptr.rhs.cast229 = ptrtoint ptr %194 to i64
  %sub.ptr.sub230 = sub i64 %sub.ptr.lhs.cast228, %sub.ptr.rhs.cast229
  br label %cond.end231

cond.end231:                                      ; preds = %cond.false226, %cond.true220
  %cond232 = phi i64 [ %sub225, %cond.true220 ], [ %sub.ptr.sub230, %cond.false226 ]
  %conv233 = trunc i64 %cond232 to i32
  store i32 %conv233, ptr %m, align 4
  br label %if.end234

if.end234:                                        ; preds = %cond.end231, %land.lhs.true210, %cond.end204
  %195 = load i32, ptr %m, align 4
  %cmp235 = icmp eq i32 %195, 0
  br i1 %cmp235, label %if.then237, label %if.end252

if.then237:                                       ; preds = %if.end234
  %196 = load i64, ptr %b, align 8
  %197 = load ptr, ptr %s.addr, align 8
  %bitb238 = getelementptr inbounds %struct.inflate_blocks_state, ptr %197, i64 0, i32 4
  store i64 %196, ptr %bitb238, align 8
  %198 = load i32, ptr %k, align 4
  %bitk239 = getelementptr inbounds %struct.inflate_blocks_state, ptr %197, i64 0, i32 3
  store i32 %198, ptr %bitk239, align 4
  %199 = load i32, ptr %n, align 4
  %200 = load ptr, ptr %z.addr, align 8
  %avail_in240 = getelementptr inbounds %struct.z_stream_s, ptr %200, i64 0, i32 1
  store i32 %199, ptr %avail_in240, align 8
  %201 = load ptr, ptr %p, align 8
  %202 = load ptr, ptr %200, align 8
  %sub.ptr.lhs.cast242 = ptrtoint ptr %201 to i64
  %sub.ptr.rhs.cast243 = ptrtoint ptr %202 to i64
  %sub.ptr.sub244 = sub i64 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243
  %203 = load ptr, ptr %z.addr, align 8
  %total_in245 = getelementptr inbounds %struct.z_stream_s, ptr %203, i64 0, i32 2
  %204 = load i64, ptr %total_in245, align 8
  %add246 = add i64 %204, %sub.ptr.sub244
  store i64 %add246, ptr %total_in245, align 8
  %205 = load ptr, ptr %p, align 8
  store ptr %205, ptr %203, align 8
  %206 = load ptr, ptr %q, align 8
  %207 = load ptr, ptr %s.addr, align 8
  %write248 = getelementptr inbounds %struct.inflate_blocks_state, ptr %207, i64 0, i32 9
  store ptr %206, ptr %write248, align 8
  %208 = load ptr, ptr %z.addr, align 8
  %209 = load i32, ptr %r.addr, align 4
  %call249 = call i32 @inflate_flush(ptr noundef %207, ptr noundef %208, i32 noundef %209) #4
  store i32 %call249, ptr %retval, align 4
  br label %return

if.end252:                                        ; preds = %if.end183, %if.end234, %if.end154
  store i32 0, ptr %r.addr, align 4
  %210 = load ptr, ptr %s.addr, align 8
  %sub253 = getelementptr inbounds %struct.inflate_blocks_state, ptr %210, i64 0, i32 1
  %211 = load i32, ptr %sub253, align 8
  store i32 %211, ptr %t, align 4
  %212 = load i32, ptr %n, align 4
  %cmp254 = icmp ugt i32 %211, %212
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end252
  %213 = load i32, ptr %n, align 4
  store i32 %213, ptr %t, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %if.end252
  %214 = load i32, ptr %t, align 4
  %215 = load i32, ptr %m, align 4
  %cmp258 = icmp ugt i32 %214, %215
  br i1 %cmp258, label %if.then260, label %if.end261

if.then260:                                       ; preds = %if.end257
  %216 = load i32, ptr %m, align 4
  store i32 %216, ptr %t, align 4
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %if.end257
  %217 = load ptr, ptr %q, align 8
  %218 = load ptr, ptr %p, align 8
  %219 = load i32, ptr %t, align 4
  %conv262 = zext i32 %219 to i64
  %220 = call i64 @llvm.objectsize.i64.p0(ptr %217, i1 false, i1 true, i1 false)
  %call263 = call ptr @__memcpy_chk(ptr noundef %217, ptr noundef %218, i64 noundef %conv262, i64 noundef %220) #4
  %idx.ext = zext i32 %219 to i64
  %add.ptr = getelementptr inbounds i8, ptr %218, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  %221 = load i32, ptr %t, align 4
  %222 = load i32, ptr %n, align 4
  %sub264 = sub i32 %222, %221
  store i32 %sub264, ptr %n, align 4
  %223 = load ptr, ptr %q, align 8
  %idx.ext265 = zext i32 %221 to i64
  %add.ptr266 = getelementptr inbounds i8, ptr %223, i64 %idx.ext265
  store ptr %add.ptr266, ptr %q, align 8
  %224 = load i32, ptr %t, align 4
  %225 = load i32, ptr %m, align 4
  %sub267 = sub i32 %225, %224
  store i32 %sub267, ptr %m, align 4
  %226 = load ptr, ptr %s.addr, align 8
  %sub268 = getelementptr inbounds %struct.inflate_blocks_state, ptr %226, i64 0, i32 1
  %227 = load i32, ptr %sub268, align 8
  %sub269 = sub i32 %227, %224
  store i32 %sub269, ptr %sub268, align 8
  %cmp270.not = icmp eq i32 %227, %224
  br i1 %cmp270.not, label %if.end273, label %sw.epilog826

if.end273:                                        ; preds = %if.end261
  %228 = load ptr, ptr %s.addr, align 8
  %last274 = getelementptr inbounds %struct.inflate_blocks_state, ptr %228, i64 0, i32 2
  %229 = load i32, ptr %last274, align 8
  %tobool275.not = icmp eq i32 %229, 0
  %cond276 = select i1 %tobool275.not, i32 0, i32 7
  store i32 %cond276, ptr %228, align 8
  br label %sw.epilog826

while.cond279:                                    ; preds = %while.body, %if.then284
  %230 = load i32, ptr %k, align 4
  %cmp280 = icmp ult i32 %230, 14
  br i1 %cmp280, label %while.body282, label %while.end306

while.body282:                                    ; preds = %while.cond279
  %231 = load i32, ptr %n, align 4
  %tobool283.not = icmp eq i32 %231, 0
  br i1 %tobool283.not, label %if.else285, label %if.then284

if.then284:                                       ; preds = %while.body282
  store i32 0, ptr %r.addr, align 4
  %232 = load i32, ptr %n, align 4
  %dec299 = add i32 %232, -1
  store i32 %dec299, ptr %n, align 4
  %233 = load ptr, ptr %p, align 8
  %incdec.ptr300 = getelementptr inbounds i8, ptr %233, i64 1
  store ptr %incdec.ptr300, ptr %p, align 8
  %234 = load i8, ptr %233, align 1
  %conv301 = zext i8 %234 to i64
  %235 = load i32, ptr %k, align 4
  %sh_prom302 = zext i32 %235 to i64
  %shl303 = shl i64 %conv301, %sh_prom302
  %236 = load i64, ptr %b, align 8
  %or304 = or i64 %236, %shl303
  store i64 %or304, ptr %b, align 8
  %add305 = add i32 %235, 8
  store i32 %add305, ptr %k, align 4
  br label %while.cond279, !llvm.loop !9

if.else285:                                       ; preds = %while.body282
  %237 = load i64, ptr %b, align 8
  %238 = load ptr, ptr %s.addr, align 8
  %bitb286 = getelementptr inbounds %struct.inflate_blocks_state, ptr %238, i64 0, i32 4
  store i64 %237, ptr %bitb286, align 8
  %239 = load i32, ptr %k, align 4
  %bitk287 = getelementptr inbounds %struct.inflate_blocks_state, ptr %238, i64 0, i32 3
  store i32 %239, ptr %bitk287, align 4
  %240 = load i32, ptr %n, align 4
  %241 = load ptr, ptr %z.addr, align 8
  %avail_in288 = getelementptr inbounds %struct.z_stream_s, ptr %241, i64 0, i32 1
  store i32 %240, ptr %avail_in288, align 8
  %242 = load ptr, ptr %p, align 8
  %243 = load ptr, ptr %241, align 8
  %sub.ptr.lhs.cast290 = ptrtoint ptr %242 to i64
  %sub.ptr.rhs.cast291 = ptrtoint ptr %243 to i64
  %sub.ptr.sub292 = sub i64 %sub.ptr.lhs.cast290, %sub.ptr.rhs.cast291
  %244 = load ptr, ptr %z.addr, align 8
  %total_in293 = getelementptr inbounds %struct.z_stream_s, ptr %244, i64 0, i32 2
  %245 = load i64, ptr %total_in293, align 8
  %add294 = add i64 %245, %sub.ptr.sub292
  store i64 %add294, ptr %total_in293, align 8
  %246 = load ptr, ptr %p, align 8
  store ptr %246, ptr %244, align 8
  %247 = load ptr, ptr %q, align 8
  %248 = load ptr, ptr %s.addr, align 8
  %write296 = getelementptr inbounds %struct.inflate_blocks_state, ptr %248, i64 0, i32 9
  store ptr %247, ptr %write296, align 8
  %249 = load ptr, ptr %z.addr, align 8
  %250 = load i32, ptr %r.addr, align 4
  %call297 = call i32 @inflate_flush(ptr noundef %248, ptr noundef %249, i32 noundef %250) #4
  store i32 %call297, ptr %retval, align 4
  br label %return

while.end306:                                     ; preds = %while.cond279
  %251 = load i64, ptr %b, align 8
  %conv307 = trunc i64 %251 to i32
  %and308 = and i32 %conv307, 16383
  store i32 %and308, ptr %t, align 4
  %252 = load ptr, ptr %s.addr, align 8
  %sub309 = getelementptr inbounds %struct.inflate_blocks_state, ptr %252, i64 0, i32 1
  store i32 %and308, ptr %sub309, align 8
  %and310 = and i32 %conv307, 30
  %cmp311 = icmp eq i32 %and310, 30
  br i1 %cmp311, label %if.then317, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end306
  %253 = load i32, ptr %t, align 4
  %254 = and i32 %253, 960
  %cmp315 = icmp eq i32 %254, 960
  br i1 %cmp315, label %if.then317, label %if.end332

if.then317:                                       ; preds = %lor.lhs.false, %while.end306
  %255 = load ptr, ptr %s.addr, align 8
  store i32 9, ptr %255, align 8
  %256 = load ptr, ptr %z.addr, align 8
  %msg319 = getelementptr inbounds %struct.z_stream_s, ptr %256, i64 0, i32 6
  store ptr @.str.2, ptr %msg319, align 8
  store i32 -3, ptr %r.addr, align 4
  %257 = load i64, ptr %b, align 8
  %258 = load ptr, ptr %s.addr, align 8
  %bitb320 = getelementptr inbounds %struct.inflate_blocks_state, ptr %258, i64 0, i32 4
  store i64 %257, ptr %bitb320, align 8
  %259 = load i32, ptr %k, align 4
  %bitk321 = getelementptr inbounds %struct.inflate_blocks_state, ptr %258, i64 0, i32 3
  store i32 %259, ptr %bitk321, align 4
  %260 = load i32, ptr %n, align 4
  %261 = load ptr, ptr %z.addr, align 8
  %avail_in322 = getelementptr inbounds %struct.z_stream_s, ptr %261, i64 0, i32 1
  store i32 %260, ptr %avail_in322, align 8
  %262 = load ptr, ptr %p, align 8
  %263 = load ptr, ptr %261, align 8
  %sub.ptr.lhs.cast324 = ptrtoint ptr %262 to i64
  %sub.ptr.rhs.cast325 = ptrtoint ptr %263 to i64
  %sub.ptr.sub326 = sub i64 %sub.ptr.lhs.cast324, %sub.ptr.rhs.cast325
  %264 = load ptr, ptr %z.addr, align 8
  %total_in327 = getelementptr inbounds %struct.z_stream_s, ptr %264, i64 0, i32 2
  %265 = load i64, ptr %total_in327, align 8
  %add328 = add i64 %265, %sub.ptr.sub326
  store i64 %add328, ptr %total_in327, align 8
  %266 = load ptr, ptr %p, align 8
  store ptr %266, ptr %264, align 8
  %267 = load ptr, ptr %q, align 8
  %268 = load ptr, ptr %s.addr, align 8
  %write330 = getelementptr inbounds %struct.inflate_blocks_state, ptr %268, i64 0, i32 9
  store ptr %267, ptr %write330, align 8
  %269 = load ptr, ptr %z.addr, align 8
  %270 = load i32, ptr %r.addr, align 4
  %call331 = call i32 @inflate_flush(ptr noundef %268, ptr noundef %269, i32 noundef %270) #4
  store i32 %call331, ptr %retval, align 4
  br label %return

if.end332:                                        ; preds = %lor.lhs.false
  %271 = load i32, ptr %t, align 4
  %and333 = and i32 %271, 31
  %add334 = add nuw nsw i32 %and333, 258
  %shr335 = lshr i32 %271, 5
  %and336 = and i32 %shr335, 31
  %add337 = add nuw nsw i32 %add334, %and336
  store i32 %add337, ptr %t, align 4
  %272 = load ptr, ptr %z.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %272, i64 0, i32 8
  %273 = load ptr, ptr %zalloc, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %272, i64 0, i32 10
  %274 = load ptr, ptr %opaque, align 8
  %call338 = call ptr %273(ptr noundef %274, i32 noundef %add337, i32 noundef 4) #4
  %275 = load ptr, ptr %s.addr, align 8
  %blens = getelementptr inbounds %struct.inflate_blocks_state, ptr %275, i64 0, i32 1, i32 0, i32 2
  store ptr %call338, ptr %blens, align 8
  %cmp340 = icmp eq ptr %call338, null
  br i1 %cmp340, label %if.then342, label %if.end355

if.then342:                                       ; preds = %if.end332
  store i32 -4, ptr %r.addr, align 4
  %276 = load i64, ptr %b, align 8
  %277 = load ptr, ptr %s.addr, align 8
  %bitb343 = getelementptr inbounds %struct.inflate_blocks_state, ptr %277, i64 0, i32 4
  store i64 %276, ptr %bitb343, align 8
  %278 = load i32, ptr %k, align 4
  %bitk344 = getelementptr inbounds %struct.inflate_blocks_state, ptr %277, i64 0, i32 3
  store i32 %278, ptr %bitk344, align 4
  %279 = load i32, ptr %n, align 4
  %280 = load ptr, ptr %z.addr, align 8
  %avail_in345 = getelementptr inbounds %struct.z_stream_s, ptr %280, i64 0, i32 1
  store i32 %279, ptr %avail_in345, align 8
  %281 = load ptr, ptr %p, align 8
  %282 = load ptr, ptr %280, align 8
  %sub.ptr.lhs.cast347 = ptrtoint ptr %281 to i64
  %sub.ptr.rhs.cast348 = ptrtoint ptr %282 to i64
  %sub.ptr.sub349 = sub i64 %sub.ptr.lhs.cast347, %sub.ptr.rhs.cast348
  %283 = load ptr, ptr %z.addr, align 8
  %total_in350 = getelementptr inbounds %struct.z_stream_s, ptr %283, i64 0, i32 2
  %284 = load i64, ptr %total_in350, align 8
  %add351 = add i64 %284, %sub.ptr.sub349
  store i64 %add351, ptr %total_in350, align 8
  %285 = load ptr, ptr %p, align 8
  store ptr %285, ptr %283, align 8
  %286 = load ptr, ptr %q, align 8
  %287 = load ptr, ptr %s.addr, align 8
  %write353 = getelementptr inbounds %struct.inflate_blocks_state, ptr %287, i64 0, i32 9
  store ptr %286, ptr %write353, align 8
  %288 = load ptr, ptr %z.addr, align 8
  %289 = load i32, ptr %r.addr, align 4
  %call354 = call i32 @inflate_flush(ptr noundef %287, ptr noundef %288, i32 noundef %289) #4
  store i32 %call354, ptr %retval, align 4
  br label %return

if.end355:                                        ; preds = %if.end332
  %290 = load i64, ptr %b, align 8
  %shr356 = lshr i64 %290, 14
  store i64 %shr356, ptr %b, align 8
  %291 = load i32, ptr %k, align 4
  %sub357 = add i32 %291, -14
  store i32 %sub357, ptr %k, align 4
  %292 = load ptr, ptr %s.addr, align 8
  %index = getelementptr inbounds %struct.inflate_blocks_state, ptr %292, i64 0, i32 1, i32 0, i32 1
  store i32 0, ptr %index, align 4
  store i32 4, ptr %292, align 8
  br label %sw.bb360

sw.bb360:                                         ; preds = %if.end355, %while.body
  br label %while.cond361

while.cond361:                                    ; preds = %while.end398, %sw.bb360
  %293 = load ptr, ptr %s.addr, align 8
  %index363 = getelementptr inbounds %struct.inflate_blocks_state, ptr %293, i64 0, i32 1, i32 0, i32 1
  %294 = load i32, ptr %index363, align 4
  %sub364 = getelementptr inbounds %struct.inflate_blocks_state, ptr %293, i64 0, i32 1
  %295 = load i32, ptr %sub364, align 8
  %shr366 = lshr i32 %295, 10
  %add367 = add nuw nsw i32 %shr366, 4
  %cmp368 = icmp ult i32 %294, %add367
  br i1 %cmp368, label %while.cond371, label %while.cond410

while.cond371:                                    ; preds = %while.cond361, %if.then376
  %296 = load i32, ptr %k, align 4
  %cmp372 = icmp ult i32 %296, 3
  br i1 %cmp372, label %while.body374, label %while.end398

while.body374:                                    ; preds = %while.cond371
  %297 = load i32, ptr %n, align 4
  %tobool375.not = icmp eq i32 %297, 0
  br i1 %tobool375.not, label %if.else377, label %if.then376

if.then376:                                       ; preds = %while.body374
  store i32 0, ptr %r.addr, align 4
  %298 = load i32, ptr %n, align 4
  %dec391 = add i32 %298, -1
  store i32 %dec391, ptr %n, align 4
  %299 = load ptr, ptr %p, align 8
  %incdec.ptr392 = getelementptr inbounds i8, ptr %299, i64 1
  store ptr %incdec.ptr392, ptr %p, align 8
  %300 = load i8, ptr %299, align 1
  %conv393 = zext i8 %300 to i64
  %301 = load i32, ptr %k, align 4
  %sh_prom394 = zext i32 %301 to i64
  %shl395 = shl i64 %conv393, %sh_prom394
  %302 = load i64, ptr %b, align 8
  %or396 = or i64 %302, %shl395
  store i64 %or396, ptr %b, align 8
  %add397 = add i32 %301, 8
  store i32 %add397, ptr %k, align 4
  br label %while.cond371, !llvm.loop !10

if.else377:                                       ; preds = %while.body374
  %303 = load i64, ptr %b, align 8
  %304 = load ptr, ptr %s.addr, align 8
  %bitb378 = getelementptr inbounds %struct.inflate_blocks_state, ptr %304, i64 0, i32 4
  store i64 %303, ptr %bitb378, align 8
  %305 = load i32, ptr %k, align 4
  %bitk379 = getelementptr inbounds %struct.inflate_blocks_state, ptr %304, i64 0, i32 3
  store i32 %305, ptr %bitk379, align 4
  %306 = load i32, ptr %n, align 4
  %307 = load ptr, ptr %z.addr, align 8
  %avail_in380 = getelementptr inbounds %struct.z_stream_s, ptr %307, i64 0, i32 1
  store i32 %306, ptr %avail_in380, align 8
  %308 = load ptr, ptr %p, align 8
  %309 = load ptr, ptr %307, align 8
  %sub.ptr.lhs.cast382 = ptrtoint ptr %308 to i64
  %sub.ptr.rhs.cast383 = ptrtoint ptr %309 to i64
  %sub.ptr.sub384 = sub i64 %sub.ptr.lhs.cast382, %sub.ptr.rhs.cast383
  %310 = load ptr, ptr %z.addr, align 8
  %total_in385 = getelementptr inbounds %struct.z_stream_s, ptr %310, i64 0, i32 2
  %311 = load i64, ptr %total_in385, align 8
  %add386 = add i64 %311, %sub.ptr.sub384
  store i64 %add386, ptr %total_in385, align 8
  %312 = load ptr, ptr %p, align 8
  store ptr %312, ptr %310, align 8
  %313 = load ptr, ptr %q, align 8
  %314 = load ptr, ptr %s.addr, align 8
  %write388 = getelementptr inbounds %struct.inflate_blocks_state, ptr %314, i64 0, i32 9
  store ptr %313, ptr %write388, align 8
  %315 = load ptr, ptr %z.addr, align 8
  %316 = load i32, ptr %r.addr, align 4
  %call389 = call i32 @inflate_flush(ptr noundef %314, ptr noundef %315, i32 noundef %316) #4
  store i32 %call389, ptr %retval, align 4
  br label %return

while.end398:                                     ; preds = %while.cond371
  %317 = load i64, ptr %b, align 8
  %conv399 = trunc i64 %317 to i32
  %and400 = and i32 %conv399, 7
  %318 = load ptr, ptr %s.addr, align 8
  %blens402 = getelementptr inbounds %struct.inflate_blocks_state, ptr %318, i64 0, i32 1, i32 0, i32 2
  %319 = load ptr, ptr %blens402, align 8
  %index404 = getelementptr inbounds %struct.inflate_blocks_state, ptr %318, i64 0, i32 1, i32 0, i32 1
  %320 = load i32, ptr %index404, align 4
  %inc = add i32 %320, 1
  store i32 %inc, ptr %index404, align 4
  %idxprom = zext i32 %320 to i64
  %arrayidx = getelementptr inbounds [19 x i32], ptr @border, i64 0, i64 %idxprom
  %321 = load i32, ptr %arrayidx, align 4
  %idxprom405 = zext i32 %321 to i64
  %arrayidx406 = getelementptr inbounds i32, ptr %319, i64 %idxprom405
  store i32 %and400, ptr %arrayidx406, align 4
  %322 = load i64, ptr %b, align 8
  %shr407 = lshr i64 %322, 3
  store i64 %shr407, ptr %b, align 8
  %323 = load i32, ptr %k, align 4
  %sub408 = add i32 %323, -3
  store i32 %sub408, ptr %k, align 4
  br label %while.cond361, !llvm.loop !11

while.cond410:                                    ; preds = %while.cond361, %while.body415
  %324 = load ptr, ptr %s.addr, align 8
  %index412 = getelementptr inbounds %struct.inflate_blocks_state, ptr %324, i64 0, i32 1, i32 0, i32 1
  %325 = load i32, ptr %index412, align 4
  %cmp413 = icmp ult i32 %325, 19
  br i1 %cmp413, label %while.body415, label %while.end425

while.body415:                                    ; preds = %while.cond410
  %326 = load ptr, ptr %s.addr, align 8
  %blens417 = getelementptr inbounds %struct.inflate_blocks_state, ptr %326, i64 0, i32 1, i32 0, i32 2
  %327 = load ptr, ptr %blens417, align 8
  %index419 = getelementptr inbounds %struct.inflate_blocks_state, ptr %326, i64 0, i32 1, i32 0, i32 1
  %328 = load i32, ptr %index419, align 4
  %inc420 = add i32 %328, 1
  store i32 %inc420, ptr %index419, align 4
  %idxprom421 = zext i32 %328 to i64
  %arrayidx422 = getelementptr inbounds [19 x i32], ptr @border, i64 0, i64 %idxprom421
  %329 = load i32, ptr %arrayidx422, align 4
  %idxprom423 = zext i32 %329 to i64
  %arrayidx424 = getelementptr inbounds i32, ptr %327, i64 %idxprom423
  store i32 0, ptr %arrayidx424, align 4
  br label %while.cond410, !llvm.loop !12

while.end425:                                     ; preds = %while.cond410
  %330 = load ptr, ptr %s.addr, align 8
  %bb = getelementptr inbounds %struct.inflate_blocks_state, ptr %330, i64 0, i32 1, i32 0, i32 3
  store i32 7, ptr %bb, align 8
  %blens428 = getelementptr inbounds %struct.inflate_blocks_state, ptr %330, i64 0, i32 1, i32 0, i32 2
  %331 = load ptr, ptr %blens428, align 8
  %bb430 = getelementptr inbounds %struct.inflate_blocks_state, ptr %330, i64 0, i32 1, i32 0, i32 3
  %tb = getelementptr inbounds %struct.inflate_blocks_state, ptr %330, i64 0, i32 1, i32 0, i32 4
  %332 = load ptr, ptr %s.addr, align 8
  %hufts = getelementptr inbounds %struct.inflate_blocks_state, ptr %332, i64 0, i32 5
  %333 = load ptr, ptr %hufts, align 8
  %334 = load ptr, ptr %z.addr, align 8
  %call432 = call i32 @inflate_trees_bits(ptr noundef %331, ptr noundef nonnull %bb430, ptr noundef nonnull %tb, ptr noundef %333, ptr noundef %334) #4
  store i32 %call432, ptr %t, align 4
  %cmp433.not = icmp eq i32 %call432, 0
  br i1 %cmp433.not, label %if.end456, label %if.then435

if.then435:                                       ; preds = %while.end425
  %335 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %335, i64 0, i32 9
  %336 = load ptr, ptr %zfree, align 8
  %opaque436 = getelementptr inbounds %struct.z_stream_s, ptr %335, i64 0, i32 10
  %337 = load ptr, ptr %opaque436, align 8
  %338 = load ptr, ptr %s.addr, align 8
  %blens438 = getelementptr inbounds %struct.inflate_blocks_state, ptr %338, i64 0, i32 1, i32 0, i32 2
  %339 = load ptr, ptr %blens438, align 8
  call void %336(ptr noundef %337, ptr noundef %339) #4
  %340 = load i32, ptr %t, align 4
  store i32 %340, ptr %r.addr, align 4
  %cmp439 = icmp eq i32 %340, -3
  br i1 %cmp439, label %if.then441, label %if.end443

if.then441:                                       ; preds = %if.then435
  %341 = load ptr, ptr %s.addr, align 8
  store i32 9, ptr %341, align 8
  br label %if.end443

if.end443:                                        ; preds = %if.then441, %if.then435
  %342 = load i64, ptr %b, align 8
  %343 = load ptr, ptr %s.addr, align 8
  %bitb444 = getelementptr inbounds %struct.inflate_blocks_state, ptr %343, i64 0, i32 4
  store i64 %342, ptr %bitb444, align 8
  %344 = load i32, ptr %k, align 4
  %bitk445 = getelementptr inbounds %struct.inflate_blocks_state, ptr %343, i64 0, i32 3
  store i32 %344, ptr %bitk445, align 4
  %345 = load i32, ptr %n, align 4
  %346 = load ptr, ptr %z.addr, align 8
  %avail_in446 = getelementptr inbounds %struct.z_stream_s, ptr %346, i64 0, i32 1
  store i32 %345, ptr %avail_in446, align 8
  %347 = load ptr, ptr %p, align 8
  %348 = load ptr, ptr %346, align 8
  %sub.ptr.lhs.cast448 = ptrtoint ptr %347 to i64
  %sub.ptr.rhs.cast449 = ptrtoint ptr %348 to i64
  %sub.ptr.sub450 = sub i64 %sub.ptr.lhs.cast448, %sub.ptr.rhs.cast449
  %349 = load ptr, ptr %z.addr, align 8
  %total_in451 = getelementptr inbounds %struct.z_stream_s, ptr %349, i64 0, i32 2
  %350 = load i64, ptr %total_in451, align 8
  %add452 = add i64 %350, %sub.ptr.sub450
  store i64 %add452, ptr %total_in451, align 8
  %351 = load ptr, ptr %p, align 8
  store ptr %351, ptr %349, align 8
  %352 = load ptr, ptr %q, align 8
  %353 = load ptr, ptr %s.addr, align 8
  %write454 = getelementptr inbounds %struct.inflate_blocks_state, ptr %353, i64 0, i32 9
  store ptr %352, ptr %write454, align 8
  %354 = load ptr, ptr %z.addr, align 8
  %355 = load i32, ptr %r.addr, align 4
  %call455 = call i32 @inflate_flush(ptr noundef %353, ptr noundef %354, i32 noundef %355) #4
  store i32 %call455, ptr %retval, align 4
  br label %return

if.end456:                                        ; preds = %while.end425
  %356 = load ptr, ptr %s.addr, align 8
  %index458 = getelementptr inbounds %struct.inflate_blocks_state, ptr %356, i64 0, i32 1, i32 0, i32 1
  store i32 0, ptr %index458, align 4
  store i32 5, ptr %356, align 8
  br label %sw.bb460

sw.bb460:                                         ; preds = %if.end456, %while.body
  br label %while.cond461

while.cond461:                                    ; preds = %if.end635, %sw.bb460
  %357 = load ptr, ptr %s.addr, align 8
  %sub462 = getelementptr inbounds %struct.inflate_blocks_state, ptr %357, i64 0, i32 1
  %358 = load i32, ptr %sub462, align 8
  store i32 %358, ptr %t, align 4
  %index465 = getelementptr inbounds %struct.inflate_blocks_state, ptr %357, i64 0, i32 1, i32 0, i32 1
  %359 = load i32, ptr %index465, align 4
  %and466 = and i32 %358, 31
  %add467 = add nuw nsw i32 %and466, 258
  %shr468 = lshr i32 %358, 5
  %and469 = and i32 %shr468, 31
  %add470 = add nuw nsw i32 %add467, %and469
  %cmp471 = icmp ult i32 %359, %add470
  br i1 %cmp471, label %while.body473, label %while.end636

while.body473:                                    ; preds = %while.cond461
  %360 = load ptr, ptr %s.addr, align 8
  %bb475 = getelementptr inbounds %struct.inflate_blocks_state, ptr %360, i64 0, i32 1, i32 0, i32 3
  %361 = load i32, ptr %bb475, align 8
  store i32 %361, ptr %t, align 4
  br label %while.cond476

while.cond476:                                    ; preds = %if.then481, %while.body473
  %362 = load i32, ptr %k, align 4
  %363 = load i32, ptr %t, align 4
  %cmp477 = icmp ult i32 %362, %363
  br i1 %cmp477, label %while.body479, label %while.end503

while.body479:                                    ; preds = %while.cond476
  %364 = load i32, ptr %n, align 4
  %tobool480.not = icmp eq i32 %364, 0
  br i1 %tobool480.not, label %if.else482, label %if.then481

if.then481:                                       ; preds = %while.body479
  store i32 0, ptr %r.addr, align 4
  %365 = load i32, ptr %n, align 4
  %dec496 = add i32 %365, -1
  store i32 %dec496, ptr %n, align 4
  %366 = load ptr, ptr %p, align 8
  %incdec.ptr497 = getelementptr inbounds i8, ptr %366, i64 1
  store ptr %incdec.ptr497, ptr %p, align 8
  %367 = load i8, ptr %366, align 1
  %conv498 = zext i8 %367 to i64
  %368 = load i32, ptr %k, align 4
  %sh_prom499 = zext i32 %368 to i64
  %shl500 = shl i64 %conv498, %sh_prom499
  %369 = load i64, ptr %b, align 8
  %or501 = or i64 %369, %shl500
  store i64 %or501, ptr %b, align 8
  %add502 = add i32 %368, 8
  store i32 %add502, ptr %k, align 4
  br label %while.cond476, !llvm.loop !13

if.else482:                                       ; preds = %while.body479
  %370 = load i64, ptr %b, align 8
  %371 = load ptr, ptr %s.addr, align 8
  %bitb483 = getelementptr inbounds %struct.inflate_blocks_state, ptr %371, i64 0, i32 4
  store i64 %370, ptr %bitb483, align 8
  %372 = load i32, ptr %k, align 4
  %bitk484 = getelementptr inbounds %struct.inflate_blocks_state, ptr %371, i64 0, i32 3
  store i32 %372, ptr %bitk484, align 4
  %373 = load i32, ptr %n, align 4
  %374 = load ptr, ptr %z.addr, align 8
  %avail_in485 = getelementptr inbounds %struct.z_stream_s, ptr %374, i64 0, i32 1
  store i32 %373, ptr %avail_in485, align 8
  %375 = load ptr, ptr %p, align 8
  %376 = load ptr, ptr %374, align 8
  %sub.ptr.lhs.cast487 = ptrtoint ptr %375 to i64
  %sub.ptr.rhs.cast488 = ptrtoint ptr %376 to i64
  %sub.ptr.sub489 = sub i64 %sub.ptr.lhs.cast487, %sub.ptr.rhs.cast488
  %377 = load ptr, ptr %z.addr, align 8
  %total_in490 = getelementptr inbounds %struct.z_stream_s, ptr %377, i64 0, i32 2
  %378 = load i64, ptr %total_in490, align 8
  %add491 = add i64 %378, %sub.ptr.sub489
  store i64 %add491, ptr %total_in490, align 8
  %379 = load ptr, ptr %p, align 8
  store ptr %379, ptr %377, align 8
  %380 = load ptr, ptr %q, align 8
  %381 = load ptr, ptr %s.addr, align 8
  %write493 = getelementptr inbounds %struct.inflate_blocks_state, ptr %381, i64 0, i32 9
  store ptr %380, ptr %write493, align 8
  %382 = load ptr, ptr %z.addr, align 8
  %383 = load i32, ptr %r.addr, align 4
  %call494 = call i32 @inflate_flush(ptr noundef %381, ptr noundef %382, i32 noundef %383) #4
  store i32 %call494, ptr %retval, align 4
  br label %return

while.end503:                                     ; preds = %while.cond476
  %384 = load ptr, ptr %s.addr, align 8
  %tb505 = getelementptr inbounds %struct.inflate_blocks_state, ptr %384, i64 0, i32 1, i32 0, i32 4
  %385 = load ptr, ptr %tb505, align 8
  %386 = load i64, ptr %b, align 8
  %conv506 = trunc i64 %386 to i32
  %387 = load i32, ptr %t, align 4
  %idxprom507 = zext i32 %387 to i64
  %arrayidx508 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom507
  %388 = load i32, ptr %arrayidx508, align 4
  %and509 = and i32 %388, %conv506
  %idx.ext510 = zext i32 %and509 to i64
  %add.ptr511 = getelementptr inbounds %struct.inflate_huft_s, ptr %385, i64 %idx.ext510
  %Bits = getelementptr inbounds %struct.anon.1, ptr %add.ptr511, i64 0, i32 1
  %389 = load i8, ptr %Bits, align 1
  %conv512 = zext i8 %389 to i32
  store i32 %conv512, ptr %t, align 4
  %base = getelementptr inbounds %struct.inflate_huft_s, ptr %385, i64 %idx.ext510, i32 1
  %390 = load i32, ptr %base, align 4
  store i32 %390, ptr %c, align 4
  %cmp513 = icmp ult i32 %390, 16
  br i1 %cmp513, label %if.then515, label %if.else526

if.then515:                                       ; preds = %while.end503
  %391 = load i32, ptr %t, align 4
  %392 = load i64, ptr %b, align 8
  %sh_prom516 = zext i32 %391 to i64
  %shr517 = lshr i64 %392, %sh_prom516
  store i64 %shr517, ptr %b, align 8
  %393 = load i32, ptr %k, align 4
  %sub518 = sub i32 %393, %391
  store i32 %sub518, ptr %k, align 4
  %394 = load i32, ptr %c, align 4
  %395 = load ptr, ptr %s.addr, align 8
  %blens520 = getelementptr inbounds %struct.inflate_blocks_state, ptr %395, i64 0, i32 1, i32 0, i32 2
  %396 = load ptr, ptr %blens520, align 8
  %index522 = getelementptr inbounds %struct.inflate_blocks_state, ptr %395, i64 0, i32 1, i32 0, i32 1
  %397 = load i32, ptr %index522, align 4
  %inc523 = add i32 %397, 1
  store i32 %inc523, ptr %index522, align 4
  %idxprom524 = zext i32 %397 to i64
  %arrayidx525 = getelementptr inbounds i32, ptr %396, i64 %idxprom524
  store i32 %394, ptr %arrayidx525, align 4
  br label %if.end635

if.else526:                                       ; preds = %while.end503
  %398 = load i32, ptr %c, align 4
  %cmp527 = icmp eq i32 %398, 18
  %399 = load i32, ptr %c, align 4
  %sub531 = add i32 %399, -14
  %cond533 = select i1 %cmp527, i32 7, i32 %sub531
  store i32 %cond533, ptr %i, align 4
  %400 = load i32, ptr %c, align 4
  %cmp534 = icmp eq i32 %400, 18
  %cond536 = select i1 %cmp534, i32 11, i32 3
  store i32 %cond536, ptr %j, align 4
  br label %while.cond537

while.cond537:                                    ; preds = %if.then543, %if.else526
  %401 = load i32, ptr %k, align 4
  %402 = load i32, ptr %t, align 4
  %403 = load i32, ptr %i, align 4
  %add538 = add i32 %402, %403
  %cmp539 = icmp ult i32 %401, %add538
  br i1 %cmp539, label %while.body541, label %while.end565

while.body541:                                    ; preds = %while.cond537
  %404 = load i32, ptr %n, align 4
  %tobool542.not = icmp eq i32 %404, 0
  br i1 %tobool542.not, label %if.else544, label %if.then543

if.then543:                                       ; preds = %while.body541
  store i32 0, ptr %r.addr, align 4
  %405 = load i32, ptr %n, align 4
  %dec558 = add i32 %405, -1
  store i32 %dec558, ptr %n, align 4
  %406 = load ptr, ptr %p, align 8
  %incdec.ptr559 = getelementptr inbounds i8, ptr %406, i64 1
  store ptr %incdec.ptr559, ptr %p, align 8
  %407 = load i8, ptr %406, align 1
  %conv560 = zext i8 %407 to i64
  %408 = load i32, ptr %k, align 4
  %sh_prom561 = zext i32 %408 to i64
  %shl562 = shl i64 %conv560, %sh_prom561
  %409 = load i64, ptr %b, align 8
  %or563 = or i64 %409, %shl562
  store i64 %or563, ptr %b, align 8
  %add564 = add i32 %408, 8
  store i32 %add564, ptr %k, align 4
  br label %while.cond537, !llvm.loop !14

if.else544:                                       ; preds = %while.body541
  %410 = load i64, ptr %b, align 8
  %411 = load ptr, ptr %s.addr, align 8
  %bitb545 = getelementptr inbounds %struct.inflate_blocks_state, ptr %411, i64 0, i32 4
  store i64 %410, ptr %bitb545, align 8
  %412 = load i32, ptr %k, align 4
  %bitk546 = getelementptr inbounds %struct.inflate_blocks_state, ptr %411, i64 0, i32 3
  store i32 %412, ptr %bitk546, align 4
  %413 = load i32, ptr %n, align 4
  %414 = load ptr, ptr %z.addr, align 8
  %avail_in547 = getelementptr inbounds %struct.z_stream_s, ptr %414, i64 0, i32 1
  store i32 %413, ptr %avail_in547, align 8
  %415 = load ptr, ptr %p, align 8
  %416 = load ptr, ptr %414, align 8
  %sub.ptr.lhs.cast549 = ptrtoint ptr %415 to i64
  %sub.ptr.rhs.cast550 = ptrtoint ptr %416 to i64
  %sub.ptr.sub551 = sub i64 %sub.ptr.lhs.cast549, %sub.ptr.rhs.cast550
  %417 = load ptr, ptr %z.addr, align 8
  %total_in552 = getelementptr inbounds %struct.z_stream_s, ptr %417, i64 0, i32 2
  %418 = load i64, ptr %total_in552, align 8
  %add553 = add i64 %418, %sub.ptr.sub551
  store i64 %add553, ptr %total_in552, align 8
  %419 = load ptr, ptr %p, align 8
  store ptr %419, ptr %417, align 8
  %420 = load ptr, ptr %q, align 8
  %421 = load ptr, ptr %s.addr, align 8
  %write555 = getelementptr inbounds %struct.inflate_blocks_state, ptr %421, i64 0, i32 9
  store ptr %420, ptr %write555, align 8
  %422 = load ptr, ptr %z.addr, align 8
  %423 = load i32, ptr %r.addr, align 4
  %call556 = call i32 @inflate_flush(ptr noundef %421, ptr noundef %422, i32 noundef %423) #4
  store i32 %call556, ptr %retval, align 4
  br label %return

while.end565:                                     ; preds = %while.cond537
  %424 = load i32, ptr %t, align 4
  %425 = load i64, ptr %b, align 8
  %sh_prom566 = zext i32 %424 to i64
  %shr567 = lshr i64 %425, %sh_prom566
  store i64 %shr567, ptr %b, align 8
  %426 = load i32, ptr %k, align 4
  %sub568 = sub i32 %426, %424
  store i32 %sub568, ptr %k, align 4
  %conv569 = trunc i64 %shr567 to i32
  %427 = load i32, ptr %i, align 4
  %idxprom570 = zext i32 %427 to i64
  %arrayidx571 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom570
  %428 = load i32, ptr %arrayidx571, align 4
  %and572 = and i32 %428, %conv569
  %429 = load i32, ptr %j, align 4
  %add573 = add i32 %429, %and572
  store i32 %add573, ptr %j, align 4
  %430 = load i32, ptr %i, align 4
  %431 = load i64, ptr %b, align 8
  %sh_prom574 = zext i32 %430 to i64
  %shr575 = lshr i64 %431, %sh_prom574
  store i64 %shr575, ptr %b, align 8
  %432 = load i32, ptr %k, align 4
  %sub576 = sub i32 %432, %430
  store i32 %sub576, ptr %k, align 4
  %433 = load ptr, ptr %s.addr, align 8
  %index578 = getelementptr inbounds %struct.inflate_blocks_state, ptr %433, i64 0, i32 1, i32 0, i32 1
  %434 = load i32, ptr %index578, align 4
  store i32 %434, ptr %i, align 4
  %sub579 = getelementptr inbounds %struct.inflate_blocks_state, ptr %433, i64 0, i32 1
  %435 = load i32, ptr %sub579, align 8
  store i32 %435, ptr %t, align 4
  %436 = load i32, ptr %j, align 4
  %add581 = add i32 %434, %436
  %and582 = and i32 %435, 31
  %add583 = add nuw nsw i32 %and582, 258
  %shr584 = lshr i32 %435, 5
  %and585 = and i32 %shr584, 31
  %add586 = add nuw nsw i32 %add583, %and585
  %cmp587 = icmp ugt i32 %add581, %add586
  br i1 %cmp587, label %if.then595, label %lor.lhs.false589

lor.lhs.false589:                                 ; preds = %while.end565
  %437 = load i32, ptr %c, align 4
  %cmp590 = icmp eq i32 %437, 16
  %438 = load i32, ptr %i, align 4
  %cmp593 = icmp eq i32 %438, 0
  %or.cond = select i1 %cmp590, i1 %cmp593, i1 false
  br i1 %or.cond, label %if.then595, label %if.end614

if.then595:                                       ; preds = %lor.lhs.false589, %while.end565
  %439 = load ptr, ptr %z.addr, align 8
  %zfree596 = getelementptr inbounds %struct.z_stream_s, ptr %439, i64 0, i32 9
  %440 = load ptr, ptr %zfree596, align 8
  %opaque597 = getelementptr inbounds %struct.z_stream_s, ptr %439, i64 0, i32 10
  %441 = load ptr, ptr %opaque597, align 8
  %442 = load ptr, ptr %s.addr, align 8
  %blens599 = getelementptr inbounds %struct.inflate_blocks_state, ptr %442, i64 0, i32 1, i32 0, i32 2
  %443 = load ptr, ptr %blens599, align 8
  call void %440(ptr noundef %441, ptr noundef %443) #4
  %444 = load ptr, ptr %s.addr, align 8
  store i32 9, ptr %444, align 8
  %445 = load ptr, ptr %z.addr, align 8
  %msg601 = getelementptr inbounds %struct.z_stream_s, ptr %445, i64 0, i32 6
  store ptr @.str.3, ptr %msg601, align 8
  store i32 -3, ptr %r.addr, align 4
  %446 = load i64, ptr %b, align 8
  %447 = load ptr, ptr %s.addr, align 8
  %bitb602 = getelementptr inbounds %struct.inflate_blocks_state, ptr %447, i64 0, i32 4
  store i64 %446, ptr %bitb602, align 8
  %448 = load i32, ptr %k, align 4
  %bitk603 = getelementptr inbounds %struct.inflate_blocks_state, ptr %447, i64 0, i32 3
  store i32 %448, ptr %bitk603, align 4
  %449 = load i32, ptr %n, align 4
  %450 = load ptr, ptr %z.addr, align 8
  %avail_in604 = getelementptr inbounds %struct.z_stream_s, ptr %450, i64 0, i32 1
  store i32 %449, ptr %avail_in604, align 8
  %451 = load ptr, ptr %p, align 8
  %452 = load ptr, ptr %450, align 8
  %sub.ptr.lhs.cast606 = ptrtoint ptr %451 to i64
  %sub.ptr.rhs.cast607 = ptrtoint ptr %452 to i64
  %sub.ptr.sub608 = sub i64 %sub.ptr.lhs.cast606, %sub.ptr.rhs.cast607
  %453 = load ptr, ptr %z.addr, align 8
  %total_in609 = getelementptr inbounds %struct.z_stream_s, ptr %453, i64 0, i32 2
  %454 = load i64, ptr %total_in609, align 8
  %add610 = add i64 %454, %sub.ptr.sub608
  store i64 %add610, ptr %total_in609, align 8
  %455 = load ptr, ptr %p, align 8
  store ptr %455, ptr %453, align 8
  %456 = load ptr, ptr %q, align 8
  %457 = load ptr, ptr %s.addr, align 8
  %write612 = getelementptr inbounds %struct.inflate_blocks_state, ptr %457, i64 0, i32 9
  store ptr %456, ptr %write612, align 8
  %458 = load ptr, ptr %z.addr, align 8
  %459 = load i32, ptr %r.addr, align 4
  %call613 = call i32 @inflate_flush(ptr noundef %457, ptr noundef %458, i32 noundef %459) #4
  store i32 %call613, ptr %retval, align 4
  br label %return

if.end614:                                        ; preds = %lor.lhs.false589
  %460 = load i32, ptr %c, align 4
  %cmp615 = icmp eq i32 %460, 16
  br i1 %cmp615, label %cond.true617, label %cond.end624

cond.true617:                                     ; preds = %if.end614
  %461 = load ptr, ptr %s.addr, align 8
  %blens619 = getelementptr inbounds %struct.inflate_blocks_state, ptr %461, i64 0, i32 1, i32 0, i32 2
  %462 = load ptr, ptr %blens619, align 8
  %463 = load i32, ptr %i, align 4
  %sub620 = add i32 %463, -1
  %idxprom621 = zext i32 %sub620 to i64
  %arrayidx622 = getelementptr inbounds i32, ptr %462, i64 %idxprom621
  %464 = load i32, ptr %arrayidx622, align 4
  br label %cond.end624

cond.end624:                                      ; preds = %if.end614, %cond.true617
  %cond625 = phi i32 [ %464, %cond.true617 ], [ 0, %if.end614 ]
  store i32 %cond625, ptr %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %cond.end624
  %465 = load i32, ptr %c, align 4
  %466 = load ptr, ptr %s.addr, align 8
  %blens627 = getelementptr inbounds %struct.inflate_blocks_state, ptr %466, i64 0, i32 1, i32 0, i32 2
  %467 = load ptr, ptr %blens627, align 8
  %468 = load i32, ptr %i, align 4
  %inc628 = add i32 %468, 1
  store i32 %inc628, ptr %i, align 4
  %idxprom629 = zext i32 %468 to i64
  %arrayidx630 = getelementptr inbounds i32, ptr %467, i64 %idxprom629
  store i32 %465, ptr %arrayidx630, align 4
  %469 = load i32, ptr %j, align 4
  %dec631 = add i32 %469, -1
  store i32 %dec631, ptr %j, align 4
  %tobool632.not = icmp eq i32 %dec631, 0
  br i1 %tobool632.not, label %do.end, label %do.body, !llvm.loop !15

do.end:                                           ; preds = %do.body
  %470 = load i32, ptr %i, align 4
  %471 = load ptr, ptr %s.addr, align 8
  %index634 = getelementptr inbounds %struct.inflate_blocks_state, ptr %471, i64 0, i32 1, i32 0, i32 1
  store i32 %470, ptr %index634, align 4
  br label %if.end635

if.end635:                                        ; preds = %do.end, %if.then515
  br label %while.cond461, !llvm.loop !16

while.end636:                                     ; preds = %while.cond461
  %472 = load ptr, ptr %s.addr, align 8
  %tb638 = getelementptr inbounds %struct.inflate_blocks_state, ptr %472, i64 0, i32 1, i32 0, i32 4
  store ptr null, ptr %tb638, align 8
  store i32 9, ptr %bl639, align 4
  store i32 6, ptr %bd640, align 4
  %sub644 = getelementptr inbounds %struct.inflate_blocks_state, ptr %472, i64 0, i32 1
  %473 = load i32, ptr %sub644, align 8
  store i32 %473, ptr %t, align 4
  %and646 = and i32 %473, 31
  %add647 = add nuw nsw i32 %and646, 257
  %shr648 = lshr i32 %473, 5
  %and649 = and i32 %shr648, 31
  %add650 = add nuw nsw i32 %and649, 1
  %474 = load ptr, ptr %s.addr, align 8
  %blens652 = getelementptr inbounds %struct.inflate_blocks_state, ptr %474, i64 0, i32 1, i32 0, i32 2
  %475 = load ptr, ptr %blens652, align 8
  %hufts653 = getelementptr inbounds %struct.inflate_blocks_state, ptr %474, i64 0, i32 5
  %476 = load ptr, ptr %hufts653, align 8
  %477 = load ptr, ptr %z.addr, align 8
  %call654 = call i32 @inflate_trees_dynamic(i32 noundef %add647, i32 noundef %add650, ptr noundef %475, ptr noundef nonnull %bl639, ptr noundef nonnull %bd640, ptr noundef nonnull %tl641, ptr noundef nonnull %td642, ptr noundef %476, ptr noundef %477) #4
  store i32 %call654, ptr %t, align 4
  %zfree655 = getelementptr inbounds %struct.z_stream_s, ptr %477, i64 0, i32 9
  %478 = load ptr, ptr %zfree655, align 8
  %opaque656 = getelementptr inbounds %struct.z_stream_s, ptr %477, i64 0, i32 10
  %479 = load ptr, ptr %opaque656, align 8
  %480 = load ptr, ptr %s.addr, align 8
  %blens658 = getelementptr inbounds %struct.inflate_blocks_state, ptr %480, i64 0, i32 1, i32 0, i32 2
  %481 = load ptr, ptr %blens658, align 8
  call void %478(ptr noundef %479, ptr noundef %481) #4
  %482 = load i32, ptr %t, align 4
  %cmp659.not = icmp eq i32 %482, 0
  br i1 %cmp659.not, label %if.end679, label %if.then661

if.then661:                                       ; preds = %while.end636
  %483 = load i32, ptr %t, align 4
  %cmp662 = icmp eq i32 %483, -3
  br i1 %cmp662, label %if.then664, label %if.end666

if.then664:                                       ; preds = %if.then661
  %484 = load ptr, ptr %s.addr, align 8
  store i32 9, ptr %484, align 8
  br label %if.end666

if.end666:                                        ; preds = %if.then664, %if.then661
  %485 = load i32, ptr %t, align 4
  store i32 %485, ptr %r.addr, align 4
  %486 = load i64, ptr %b, align 8
  %487 = load ptr, ptr %s.addr, align 8
  %bitb667 = getelementptr inbounds %struct.inflate_blocks_state, ptr %487, i64 0, i32 4
  store i64 %486, ptr %bitb667, align 8
  %488 = load i32, ptr %k, align 4
  %bitk668 = getelementptr inbounds %struct.inflate_blocks_state, ptr %487, i64 0, i32 3
  store i32 %488, ptr %bitk668, align 4
  %489 = load i32, ptr %n, align 4
  %490 = load ptr, ptr %z.addr, align 8
  %avail_in669 = getelementptr inbounds %struct.z_stream_s, ptr %490, i64 0, i32 1
  store i32 %489, ptr %avail_in669, align 8
  %491 = load ptr, ptr %p, align 8
  %492 = load ptr, ptr %490, align 8
  %sub.ptr.lhs.cast671 = ptrtoint ptr %491 to i64
  %sub.ptr.rhs.cast672 = ptrtoint ptr %492 to i64
  %sub.ptr.sub673 = sub i64 %sub.ptr.lhs.cast671, %sub.ptr.rhs.cast672
  %493 = load ptr, ptr %z.addr, align 8
  %total_in674 = getelementptr inbounds %struct.z_stream_s, ptr %493, i64 0, i32 2
  %494 = load i64, ptr %total_in674, align 8
  %add675 = add i64 %494, %sub.ptr.sub673
  store i64 %add675, ptr %total_in674, align 8
  %495 = load ptr, ptr %p, align 8
  store ptr %495, ptr %493, align 8
  %496 = load ptr, ptr %q, align 8
  %497 = load ptr, ptr %s.addr, align 8
  %write677 = getelementptr inbounds %struct.inflate_blocks_state, ptr %497, i64 0, i32 9
  store ptr %496, ptr %write677, align 8
  %498 = load ptr, ptr %z.addr, align 8
  %499 = load i32, ptr %r.addr, align 4
  %call678 = call i32 @inflate_flush(ptr noundef %497, ptr noundef %498, i32 noundef %499) #4
  store i32 %call678, ptr %retval, align 4
  br label %return

if.end679:                                        ; preds = %while.end636
  %500 = load i32, ptr %bl639, align 4
  %501 = load i32, ptr %bd640, align 4
  %502 = load ptr, ptr %tl641, align 8
  %503 = load ptr, ptr %td642, align 8
  %504 = load ptr, ptr %z.addr, align 8
  %call680 = call ptr @inflate_codes_new(i32 noundef %500, i32 noundef %501, ptr noundef %502, ptr noundef %503, ptr noundef %504) #4
  store ptr %call680, ptr %c643, align 8
  %cmp681 = icmp eq ptr %call680, null
  br i1 %cmp681, label %if.then683, label %if.end696

if.then683:                                       ; preds = %if.end679
  store i32 -4, ptr %r.addr, align 4
  %505 = load i64, ptr %b, align 8
  %506 = load ptr, ptr %s.addr, align 8
  %bitb684 = getelementptr inbounds %struct.inflate_blocks_state, ptr %506, i64 0, i32 4
  store i64 %505, ptr %bitb684, align 8
  %507 = load i32, ptr %k, align 4
  %bitk685 = getelementptr inbounds %struct.inflate_blocks_state, ptr %506, i64 0, i32 3
  store i32 %507, ptr %bitk685, align 4
  %508 = load i32, ptr %n, align 4
  %509 = load ptr, ptr %z.addr, align 8
  %avail_in686 = getelementptr inbounds %struct.z_stream_s, ptr %509, i64 0, i32 1
  store i32 %508, ptr %avail_in686, align 8
  %510 = load ptr, ptr %p, align 8
  %511 = load ptr, ptr %509, align 8
  %sub.ptr.lhs.cast688 = ptrtoint ptr %510 to i64
  %sub.ptr.rhs.cast689 = ptrtoint ptr %511 to i64
  %sub.ptr.sub690 = sub i64 %sub.ptr.lhs.cast688, %sub.ptr.rhs.cast689
  %512 = load ptr, ptr %z.addr, align 8
  %total_in691 = getelementptr inbounds %struct.z_stream_s, ptr %512, i64 0, i32 2
  %513 = load i64, ptr %total_in691, align 8
  %add692 = add i64 %513, %sub.ptr.sub690
  store i64 %add692, ptr %total_in691, align 8
  %514 = load ptr, ptr %p, align 8
  store ptr %514, ptr %512, align 8
  %515 = load ptr, ptr %q, align 8
  %516 = load ptr, ptr %s.addr, align 8
  %write694 = getelementptr inbounds %struct.inflate_blocks_state, ptr %516, i64 0, i32 9
  store ptr %515, ptr %write694, align 8
  %517 = load ptr, ptr %z.addr, align 8
  %518 = load i32, ptr %r.addr, align 4
  %call695 = call i32 @inflate_flush(ptr noundef %516, ptr noundef %517, i32 noundef %518) #4
  store i32 %call695, ptr %retval, align 4
  br label %return

if.end696:                                        ; preds = %if.end679
  %519 = load ptr, ptr %c643, align 8
  %520 = load ptr, ptr %s.addr, align 8
  %sub697 = getelementptr inbounds %struct.inflate_blocks_state, ptr %520, i64 0, i32 1
  store ptr %519, ptr %sub697, align 8
  store i32 6, ptr %520, align 8
  br label %sw.bb700

sw.bb700:                                         ; preds = %if.end696, %while.body
  %521 = load i64, ptr %b, align 8
  %522 = load ptr, ptr %s.addr, align 8
  %bitb701 = getelementptr inbounds %struct.inflate_blocks_state, ptr %522, i64 0, i32 4
  store i64 %521, ptr %bitb701, align 8
  %523 = load i32, ptr %k, align 4
  %bitk702 = getelementptr inbounds %struct.inflate_blocks_state, ptr %522, i64 0, i32 3
  store i32 %523, ptr %bitk702, align 4
  %524 = load i32, ptr %n, align 4
  %525 = load ptr, ptr %z.addr, align 8
  %avail_in703 = getelementptr inbounds %struct.z_stream_s, ptr %525, i64 0, i32 1
  store i32 %524, ptr %avail_in703, align 8
  %526 = load ptr, ptr %p, align 8
  %527 = load ptr, ptr %525, align 8
  %sub.ptr.lhs.cast705 = ptrtoint ptr %526 to i64
  %sub.ptr.rhs.cast706 = ptrtoint ptr %527 to i64
  %sub.ptr.sub707 = sub i64 %sub.ptr.lhs.cast705, %sub.ptr.rhs.cast706
  %528 = load ptr, ptr %z.addr, align 8
  %total_in708 = getelementptr inbounds %struct.z_stream_s, ptr %528, i64 0, i32 2
  %529 = load i64, ptr %total_in708, align 8
  %add709 = add i64 %529, %sub.ptr.sub707
  store i64 %add709, ptr %total_in708, align 8
  %530 = load ptr, ptr %p, align 8
  store ptr %530, ptr %528, align 8
  %531 = load ptr, ptr %q, align 8
  %532 = load ptr, ptr %s.addr, align 8
  %write711 = getelementptr inbounds %struct.inflate_blocks_state, ptr %532, i64 0, i32 9
  store ptr %531, ptr %write711, align 8
  %533 = load ptr, ptr %z.addr, align 8
  %534 = load i32, ptr %r.addr, align 4
  %call712 = call i32 @inflate_codes(ptr noundef %532, ptr noundef %533, i32 noundef %534) #4
  store i32 %call712, ptr %r.addr, align 4
  %cmp713.not = icmp eq i32 %call712, 1
  br i1 %cmp713.not, label %if.end717, label %if.then715

if.then715:                                       ; preds = %sw.bb700
  %535 = load ptr, ptr %s.addr, align 8
  %536 = load ptr, ptr %z.addr, align 8
  %537 = load i32, ptr %r.addr, align 4
  %call716 = call i32 @inflate_flush(ptr noundef %535, ptr noundef %536, i32 noundef %537) #4
  store i32 %call716, ptr %retval, align 4
  br label %return

if.end717:                                        ; preds = %sw.bb700
  store i32 0, ptr %r.addr, align 4
  %538 = load ptr, ptr %s.addr, align 8
  %sub718 = getelementptr inbounds %struct.inflate_blocks_state, ptr %538, i64 0, i32 1
  %539 = load ptr, ptr %sub718, align 8
  %540 = load ptr, ptr %z.addr, align 8
  call void @inflate_codes_free(ptr noundef %539, ptr noundef %540) #4
  %541 = load ptr, ptr %540, align 8
  store ptr %541, ptr %p, align 8
  %avail_in721 = getelementptr inbounds %struct.z_stream_s, ptr %540, i64 0, i32 1
  %542 = load i32, ptr %avail_in721, align 8
  store i32 %542, ptr %n, align 4
  %543 = load ptr, ptr %s.addr, align 8
  %bitb722 = getelementptr inbounds %struct.inflate_blocks_state, ptr %543, i64 0, i32 4
  %544 = load i64, ptr %bitb722, align 8
  store i64 %544, ptr %b, align 8
  %bitk723 = getelementptr inbounds %struct.inflate_blocks_state, ptr %543, i64 0, i32 3
  %545 = load i32, ptr %bitk723, align 4
  store i32 %545, ptr %k, align 4
  %546 = load ptr, ptr %s.addr, align 8
  %write724 = getelementptr inbounds %struct.inflate_blocks_state, ptr %546, i64 0, i32 9
  %547 = load ptr, ptr %write724, align 8
  store ptr %547, ptr %q, align 8
  %read725 = getelementptr inbounds %struct.inflate_blocks_state, ptr %546, i64 0, i32 8
  %548 = load ptr, ptr %read725, align 8
  %cmp726 = icmp ult ptr %547, %548
  br i1 %cmp726, label %cond.true728, label %cond.false734

cond.true728:                                     ; preds = %if.end717
  %549 = load ptr, ptr %s.addr, align 8
  %read729 = getelementptr inbounds %struct.inflate_blocks_state, ptr %549, i64 0, i32 8
  %550 = load ptr, ptr %read729, align 8
  %551 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast730 = ptrtoint ptr %550 to i64
  %sub.ptr.rhs.cast731 = ptrtoint ptr %551 to i64
  %552 = xor i64 %sub.ptr.rhs.cast731, -1
  %sub733 = add i64 %552, %sub.ptr.lhs.cast730
  br label %cond.end739

cond.false734:                                    ; preds = %if.end717
  %553 = load ptr, ptr %s.addr, align 8
  %end735 = getelementptr inbounds %struct.inflate_blocks_state, ptr %553, i64 0, i32 7
  %554 = load ptr, ptr %end735, align 8
  %555 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast736 = ptrtoint ptr %554 to i64
  %sub.ptr.rhs.cast737 = ptrtoint ptr %555 to i64
  %sub.ptr.sub738 = sub i64 %sub.ptr.lhs.cast736, %sub.ptr.rhs.cast737
  br label %cond.end739

cond.end739:                                      ; preds = %cond.false734, %cond.true728
  %cond740 = phi i64 [ %sub733, %cond.true728 ], [ %sub.ptr.sub738, %cond.false734 ]
  %conv741 = trunc i64 %cond740 to i32
  store i32 %conv741, ptr %m, align 4
  %556 = load ptr, ptr %s.addr, align 8
  %last742 = getelementptr inbounds %struct.inflate_blocks_state, ptr %556, i64 0, i32 2
  %557 = load i32, ptr %last742, align 8
  %tobool743.not = icmp eq i32 %557, 0
  br i1 %tobool743.not, label %if.then744, label %if.end746

if.then744:                                       ; preds = %cond.end739
  %558 = load ptr, ptr %s.addr, align 8
  store i32 0, ptr %558, align 8
  br label %sw.epilog826

if.end746:                                        ; preds = %cond.end739
  %559 = load ptr, ptr %s.addr, align 8
  store i32 7, ptr %559, align 8
  br label %sw.bb748

sw.bb748:                                         ; preds = %if.end746, %while.body
  %560 = load ptr, ptr %q, align 8
  %561 = load ptr, ptr %s.addr, align 8
  %write749 = getelementptr inbounds %struct.inflate_blocks_state, ptr %561, i64 0, i32 9
  store ptr %560, ptr %write749, align 8
  %562 = load ptr, ptr %z.addr, align 8
  %563 = load i32, ptr %r.addr, align 4
  %call750 = call i32 @inflate_flush(ptr noundef %561, ptr noundef %562, i32 noundef %563) #4
  store i32 %call750, ptr %r.addr, align 4
  %564 = load ptr, ptr %s.addr, align 8
  %write751 = getelementptr inbounds %struct.inflate_blocks_state, ptr %564, i64 0, i32 9
  %565 = load ptr, ptr %write751, align 8
  store ptr %565, ptr %q, align 8
  %read752 = getelementptr inbounds %struct.inflate_blocks_state, ptr %564, i64 0, i32 8
  %566 = load ptr, ptr %read752, align 8
  %cmp753 = icmp ult ptr %565, %566
  br i1 %cmp753, label %cond.true755, label %cond.false761

cond.true755:                                     ; preds = %sw.bb748
  %567 = load ptr, ptr %s.addr, align 8
  %read756 = getelementptr inbounds %struct.inflate_blocks_state, ptr %567, i64 0, i32 8
  %568 = load ptr, ptr %read756, align 8
  %569 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast757 = ptrtoint ptr %568 to i64
  %sub.ptr.rhs.cast758 = ptrtoint ptr %569 to i64
  %570 = xor i64 %sub.ptr.rhs.cast758, -1
  %sub760 = add i64 %570, %sub.ptr.lhs.cast757
  br label %cond.end766

cond.false761:                                    ; preds = %sw.bb748
  %571 = load ptr, ptr %s.addr, align 8
  %end762 = getelementptr inbounds %struct.inflate_blocks_state, ptr %571, i64 0, i32 7
  %572 = load ptr, ptr %end762, align 8
  %573 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast763 = ptrtoint ptr %572 to i64
  %sub.ptr.rhs.cast764 = ptrtoint ptr %573 to i64
  %sub.ptr.sub765 = sub i64 %sub.ptr.lhs.cast763, %sub.ptr.rhs.cast764
  br label %cond.end766

cond.end766:                                      ; preds = %cond.false761, %cond.true755
  %cond767 = phi i64 [ %sub760, %cond.true755 ], [ %sub.ptr.sub765, %cond.false761 ]
  %conv768 = trunc i64 %cond767 to i32
  store i32 %conv768, ptr %m, align 4
  %574 = load ptr, ptr %s.addr, align 8
  %read769 = getelementptr inbounds %struct.inflate_blocks_state, ptr %574, i64 0, i32 8
  %575 = load ptr, ptr %read769, align 8
  %write770 = getelementptr inbounds %struct.inflate_blocks_state, ptr %574, i64 0, i32 9
  %576 = load ptr, ptr %write770, align 8
  %cmp771.not = icmp eq ptr %575, %576
  br i1 %cmp771.not, label %if.end786, label %if.then773

if.then773:                                       ; preds = %cond.end766
  %577 = load i64, ptr %b, align 8
  %578 = load ptr, ptr %s.addr, align 8
  %bitb774 = getelementptr inbounds %struct.inflate_blocks_state, ptr %578, i64 0, i32 4
  store i64 %577, ptr %bitb774, align 8
  %579 = load i32, ptr %k, align 4
  %bitk775 = getelementptr inbounds %struct.inflate_blocks_state, ptr %578, i64 0, i32 3
  store i32 %579, ptr %bitk775, align 4
  %580 = load i32, ptr %n, align 4
  %581 = load ptr, ptr %z.addr, align 8
  %avail_in776 = getelementptr inbounds %struct.z_stream_s, ptr %581, i64 0, i32 1
  store i32 %580, ptr %avail_in776, align 8
  %582 = load ptr, ptr %p, align 8
  %583 = load ptr, ptr %581, align 8
  %sub.ptr.lhs.cast778 = ptrtoint ptr %582 to i64
  %sub.ptr.rhs.cast779 = ptrtoint ptr %583 to i64
  %sub.ptr.sub780 = sub i64 %sub.ptr.lhs.cast778, %sub.ptr.rhs.cast779
  %584 = load ptr, ptr %z.addr, align 8
  %total_in781 = getelementptr inbounds %struct.z_stream_s, ptr %584, i64 0, i32 2
  %585 = load i64, ptr %total_in781, align 8
  %add782 = add i64 %585, %sub.ptr.sub780
  store i64 %add782, ptr %total_in781, align 8
  %586 = load ptr, ptr %p, align 8
  store ptr %586, ptr %584, align 8
  %587 = load ptr, ptr %q, align 8
  %588 = load ptr, ptr %s.addr, align 8
  %write784 = getelementptr inbounds %struct.inflate_blocks_state, ptr %588, i64 0, i32 9
  store ptr %587, ptr %write784, align 8
  %589 = load ptr, ptr %z.addr, align 8
  %590 = load i32, ptr %r.addr, align 4
  %call785 = call i32 @inflate_flush(ptr noundef %588, ptr noundef %589, i32 noundef %590) #4
  store i32 %call785, ptr %retval, align 4
  br label %return

if.end786:                                        ; preds = %cond.end766
  %591 = load ptr, ptr %s.addr, align 8
  store i32 8, ptr %591, align 8
  br label %sw.bb788

sw.bb788:                                         ; preds = %if.end786, %while.body
  store i32 1, ptr %r.addr, align 4
  %592 = load i64, ptr %b, align 8
  %593 = load ptr, ptr %s.addr, align 8
  %bitb789 = getelementptr inbounds %struct.inflate_blocks_state, ptr %593, i64 0, i32 4
  store i64 %592, ptr %bitb789, align 8
  %594 = load i32, ptr %k, align 4
  %bitk790 = getelementptr inbounds %struct.inflate_blocks_state, ptr %593, i64 0, i32 3
  store i32 %594, ptr %bitk790, align 4
  %595 = load i32, ptr %n, align 4
  %596 = load ptr, ptr %z.addr, align 8
  %avail_in791 = getelementptr inbounds %struct.z_stream_s, ptr %596, i64 0, i32 1
  store i32 %595, ptr %avail_in791, align 8
  %597 = load ptr, ptr %p, align 8
  %598 = load ptr, ptr %596, align 8
  %sub.ptr.lhs.cast793 = ptrtoint ptr %597 to i64
  %sub.ptr.rhs.cast794 = ptrtoint ptr %598 to i64
  %sub.ptr.sub795 = sub i64 %sub.ptr.lhs.cast793, %sub.ptr.rhs.cast794
  %599 = load ptr, ptr %z.addr, align 8
  %total_in796 = getelementptr inbounds %struct.z_stream_s, ptr %599, i64 0, i32 2
  %600 = load i64, ptr %total_in796, align 8
  %add797 = add i64 %600, %sub.ptr.sub795
  store i64 %add797, ptr %total_in796, align 8
  %601 = load ptr, ptr %p, align 8
  store ptr %601, ptr %599, align 8
  %602 = load ptr, ptr %q, align 8
  %603 = load ptr, ptr %s.addr, align 8
  %write799 = getelementptr inbounds %struct.inflate_blocks_state, ptr %603, i64 0, i32 9
  store ptr %602, ptr %write799, align 8
  %604 = load ptr, ptr %z.addr, align 8
  %605 = load i32, ptr %r.addr, align 4
  %call800 = call i32 @inflate_flush(ptr noundef %603, ptr noundef %604, i32 noundef %605) #4
  store i32 %call800, ptr %retval, align 4
  br label %return

sw.bb801:                                         ; preds = %while.body
  store i32 -3, ptr %r.addr, align 4
  %606 = load i64, ptr %b, align 8
  %607 = load ptr, ptr %s.addr, align 8
  %bitb802 = getelementptr inbounds %struct.inflate_blocks_state, ptr %607, i64 0, i32 4
  store i64 %606, ptr %bitb802, align 8
  %608 = load i32, ptr %k, align 4
  %bitk803 = getelementptr inbounds %struct.inflate_blocks_state, ptr %607, i64 0, i32 3
  store i32 %608, ptr %bitk803, align 4
  %609 = load i32, ptr %n, align 4
  %610 = load ptr, ptr %z.addr, align 8
  %avail_in804 = getelementptr inbounds %struct.z_stream_s, ptr %610, i64 0, i32 1
  store i32 %609, ptr %avail_in804, align 8
  %611 = load ptr, ptr %p, align 8
  %612 = load ptr, ptr %610, align 8
  %sub.ptr.lhs.cast806 = ptrtoint ptr %611 to i64
  %sub.ptr.rhs.cast807 = ptrtoint ptr %612 to i64
  %sub.ptr.sub808 = sub i64 %sub.ptr.lhs.cast806, %sub.ptr.rhs.cast807
  %613 = load ptr, ptr %z.addr, align 8
  %total_in809 = getelementptr inbounds %struct.z_stream_s, ptr %613, i64 0, i32 2
  %614 = load i64, ptr %total_in809, align 8
  %add810 = add i64 %614, %sub.ptr.sub808
  store i64 %add810, ptr %total_in809, align 8
  %615 = load ptr, ptr %p, align 8
  store ptr %615, ptr %613, align 8
  %616 = load ptr, ptr %q, align 8
  %617 = load ptr, ptr %s.addr, align 8
  %write812 = getelementptr inbounds %struct.inflate_blocks_state, ptr %617, i64 0, i32 9
  store ptr %616, ptr %write812, align 8
  %618 = load ptr, ptr %z.addr, align 8
  %619 = load i32, ptr %r.addr, align 4
  %call813 = call i32 @inflate_flush(ptr noundef %617, ptr noundef %618, i32 noundef %619) #4
  store i32 %call813, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %while.body
  store i32 -2, ptr %r.addr, align 4
  %620 = load i64, ptr %b, align 8
  %621 = load ptr, ptr %s.addr, align 8
  %bitb814 = getelementptr inbounds %struct.inflate_blocks_state, ptr %621, i64 0, i32 4
  store i64 %620, ptr %bitb814, align 8
  %622 = load i32, ptr %k, align 4
  %bitk815 = getelementptr inbounds %struct.inflate_blocks_state, ptr %621, i64 0, i32 3
  store i32 %622, ptr %bitk815, align 4
  %623 = load i32, ptr %n, align 4
  %624 = load ptr, ptr %z.addr, align 8
  %avail_in816 = getelementptr inbounds %struct.z_stream_s, ptr %624, i64 0, i32 1
  store i32 %623, ptr %avail_in816, align 8
  %625 = load ptr, ptr %p, align 8
  %626 = load ptr, ptr %624, align 8
  %sub.ptr.lhs.cast818 = ptrtoint ptr %625 to i64
  %sub.ptr.rhs.cast819 = ptrtoint ptr %626 to i64
  %sub.ptr.sub820 = sub i64 %sub.ptr.lhs.cast818, %sub.ptr.rhs.cast819
  %627 = load ptr, ptr %z.addr, align 8
  %total_in821 = getelementptr inbounds %struct.z_stream_s, ptr %627, i64 0, i32 2
  %628 = load i64, ptr %total_in821, align 8
  %add822 = add i64 %628, %sub.ptr.sub820
  store i64 %add822, ptr %total_in821, align 8
  %629 = load ptr, ptr %p, align 8
  store ptr %629, ptr %627, align 8
  %630 = load ptr, ptr %q, align 8
  %631 = load ptr, ptr %s.addr, align 8
  %write824 = getelementptr inbounds %struct.inflate_blocks_state, ptr %631, i64 0, i32 9
  store ptr %630, ptr %write824, align 8
  %632 = load ptr, ptr %z.addr, align 8
  %633 = load i32, ptr %r.addr, align 4
  %call825 = call i32 @inflate_flush(ptr noundef %631, ptr noundef %632, i32 noundef %633) #4
  store i32 %call825, ptr %retval, align 4
  br label %return

sw.epilog826:                                     ; preds = %if.end261, %sw.bb22, %if.end51, %sw.bb55, %if.then744, %if.end273, %cond.end135
  br label %while.body

return:                                           ; preds = %sw.default, %sw.bb801, %sw.bb788, %if.then773, %if.then715, %if.then683, %if.end666, %if.then595, %if.else544, %if.else482, %if.end443, %if.else377, %if.then342, %if.then317, %if.else285, %if.then237, %if.then141, %if.then109, %if.else82, %sw.bb59, %if.then38, %if.else
  %634 = load i32, ptr %retval, align 4
  ret i32 %634
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
  call void @inflate_blocks_reset(ptr noundef %s, ptr noundef %z, ptr noundef null)
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %z, i64 0, i32 9
  %0 = load ptr, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %z, i64 0, i32 10
  %1 = load ptr, ptr %opaque, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %2, i64 0, i32 6
  %3 = load ptr, ptr %window, align 8
  call void %0(ptr noundef %1, ptr noundef %3) #4
  %4 = load ptr, ptr %z.addr, align 8
  %zfree1 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 9
  %5 = load ptr, ptr %zfree1, align 8
  %opaque2 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %opaque2, align 8
  %7 = load ptr, ptr %s.addr, align 8
  %hufts = getelementptr inbounds %struct.inflate_blocks_state, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %hufts, align 8
  call void %5(ptr noundef %6, ptr noundef %8) #4
  %9 = load ptr, ptr %z.addr, align 8
  %zfree3 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 9
  %10 = load ptr, ptr %zfree3, align 8
  %opaque4 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %opaque4, align 8
  %12 = load ptr, ptr %s.addr, align 8
  call void %10(ptr noundef %11, ptr noundef %12) #4
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define void @inflate_set_dictionary(ptr noundef %s, ptr noundef %d, i32 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %s, i64 0, i32 6
  %0 = load ptr, ptr %window, align 8
  %conv = zext i32 %n to i64
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %d, i64 noundef %conv, i64 noundef %1) #4
  %2 = load ptr, ptr %s.addr, align 8
  %window2 = getelementptr inbounds %struct.inflate_blocks_state, ptr %2, i64 0, i32 6
  %3 = load ptr, ptr %window2, align 8
  %4 = load i32, ptr %n.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %write = getelementptr inbounds %struct.inflate_blocks_state, ptr %2, i64 0, i32 9
  store ptr %add.ptr, ptr %write, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, ptr %5, i64 0, i32 8
  store ptr %add.ptr, ptr %read, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflate_blocks_sync_point(ptr noundef %s) #0 {
entry:
  %0 = load i32, ptr %s, align 8
  %cmp = icmp eq i32 %0, 1
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
