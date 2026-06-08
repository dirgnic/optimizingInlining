; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_llvm_like_size/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libz_inflate.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/inflate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.internal_state = type { i32, %union.anon, i32, i32, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"1.1.3\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"need dictionary\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@inflateSync.mark = internal constant [4 x i8] c"\00\00\FF\FF", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateReset(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  %cmp = icmp eq ptr %z, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %z.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 5
  store i64 0, ptr %total_out, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 2
  store i64 0, ptr %total_in, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %3 = load ptr, ptr %z.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 7
  %4 = load ptr, ptr %state2, align 8
  %nowrap = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %nowrap, align 8
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 0, i32 7
  %6 = load ptr, ptr %z.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 7
  %7 = load ptr, ptr %state3, align 8
  store i32 %cond, ptr %7, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %state4, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %blocks, align 8
  %10 = load ptr, ptr %z.addr, align 8
  call void @inflate_blocks_reset(ptr noundef %9, ptr noundef %10, ptr noundef null) #2
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
}

declare void @inflate_blocks_reset(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateEnd(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  %cmp = icmp eq ptr %z, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 9
  %3 = load ptr, ptr %zfree, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %z.addr, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %state4, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 4
  %6 = load ptr, ptr %blocks, align 8
  %cmp5.not = icmp eq ptr %6, null
  br i1 %cmp5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %z.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 7
  %8 = load ptr, ptr %state7, align 8
  %blocks8 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %blocks8, align 8
  %call = call i32 @inflate_blocks_free(ptr noundef %9, ptr noundef %7) #2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %10 = load ptr, ptr %z.addr, align 8
  %zfree10 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 9
  %11 = load ptr, ptr %zfree10, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %opaque, align 8
  %state11 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 7
  %13 = load ptr, ptr %state11, align 8
  call void %11(ptr noundef %12, ptr noundef %13) #2
  %14 = load ptr, ptr %z.addr, align 8
  %state12 = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 7
  store ptr null, ptr %state12, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end9
  %storemerge = phi i32 [ 0, %if.end9 ], [ -2, %lor.lhs.false2 ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
}

declare i32 @inflate_blocks_free(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateInit2_(ptr noundef %z, i32 noundef %w, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %version.addr = alloca ptr, align 8
  %stream_size.addr = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  store ptr %version, ptr %version.addr, align 8
  store i32 %stream_size, ptr %stream_size.addr, align 4
  %cmp = icmp eq ptr %version, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %version.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp2.not = icmp eq i8 %1, 49
  %2 = load i32, ptr %stream_size.addr, align 4
  %cmp6.not = icmp eq i32 %2, 112
  %or.cond = select i1 %cmp2.not, i1 %cmp6.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %z.addr, align 8
  %cmp8 = icmp eq ptr %3, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %4 = load ptr, ptr %z.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 8
  %5 = load ptr, ptr %zalloc, align 8
  %cmp12 = icmp eq ptr %5, null
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %6 = load ptr, ptr %z.addr, align 8
  %zalloc15 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 8
  store ptr @zcalloc, ptr %zalloc15, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11
  %7 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %8 = load ptr, ptr %zfree, align 8
  %cmp17 = icmp eq ptr %8, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %9 = load ptr, ptr %z.addr, align 8
  %zfree20 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 9
  store ptr @zcfree, ptr %zfree20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %10 = load ptr, ptr %z.addr, align 8
  %zalloc22 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 8
  %11 = load ptr, ptr %zalloc22, align 8
  %opaque23 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %opaque23, align 8
  %call = call ptr %11(ptr noundef %12, i32 noundef 1, i32 noundef 40) #2
  %state = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 7
  store ptr %call, ptr %state, align 8
  %cmp24 = icmp eq ptr %call, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  store i32 -4, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end21
  %13 = load ptr, ptr %z.addr, align 8
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 7
  %14 = load ptr, ptr %state28, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 4
  store ptr null, ptr %blocks, align 8
  %state29 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %state29, align 8
  %nowrap = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  store i32 0, ptr %nowrap, align 8
  %16 = load i32, ptr %w.addr, align 4
  %cmp30 = icmp slt i32 %16, 0
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end27
  %17 = load i32, ptr %w.addr, align 4
  %sub = sub nsw i32 0, %17
  store i32 %sub, ptr %w.addr, align 4
  %18 = load ptr, ptr %z.addr, align 8
  %state33 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 7
  %19 = load ptr, ptr %state33, align 8
  %nowrap34 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 2
  store i32 1, ptr %nowrap34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end27
  %20 = load i32, ptr %w.addr, align 4
  %cmp36 = icmp slt i32 %20, 8
  %21 = load i32, ptr %w.addr, align 4
  %cmp39 = icmp sgt i32 %21, 15
  %or.cond1 = select i1 %cmp36, i1 true, i1 %cmp39
  br i1 %or.cond1, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end35
  %22 = load ptr, ptr %z.addr, align 8
  %call42 = call i32 @inflateEnd(ptr noundef %22)
  store i32 -2, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end35
  %23 = load i32, ptr %w.addr, align 4
  %24 = load ptr, ptr %z.addr, align 8
  %state44 = getelementptr inbounds %struct.z_stream_s, ptr %24, i64 0, i32 7
  %25 = load ptr, ptr %state44, align 8
  %wbits = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 3
  store i32 %23, ptr %wbits, align 4
  %state45 = getelementptr inbounds %struct.z_stream_s, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %state45, align 8
  %nowrap46 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 2
  %27 = load i32, ptr %nowrap46, align 8
  %tobool.not = icmp eq i32 %27, 0
  %cond = select i1 %tobool.not, ptr @adler32, ptr null
  %28 = load i32, ptr %w.addr, align 4
  %shl = shl i32 1, %28
  %call47 = call ptr @inflate_blocks_new(ptr noundef %24, ptr noundef %cond, i32 noundef %shl) #2
  %29 = load ptr, ptr %z.addr, align 8
  %state48 = getelementptr inbounds %struct.z_stream_s, ptr %29, i64 0, i32 7
  %30 = load ptr, ptr %state48, align 8
  %blocks49 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 4
  store ptr %call47, ptr %blocks49, align 8
  %cmp50 = icmp eq ptr %call47, null
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end43
  %31 = load ptr, ptr %z.addr, align 8
  %call53 = call i32 @inflateEnd(ptr noundef %31)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end43
  %32 = load ptr, ptr %z.addr, align 8
  %call55 = call i32 @inflateReset(ptr noundef %32)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.then52, %if.then41, %if.then26, %if.then10, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

declare ptr @inflate_blocks_new(ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateInit_(ptr noundef %z, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %call = call i32 @inflateInit2_(ptr noundef %z, i32 noundef 15, ptr noundef %version, i32 noundef %stream_size)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflate(ptr noundef %z, i32 noundef %f) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %f.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store i32 %f, ptr %f.addr, align 4
  %cmp = icmp eq ptr %z, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %z.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load i32, ptr %f.addr, align 4
  %cmp4 = icmp eq i32 %4, 4
  %cond = select i1 %cmp4, i32 -5, i32 0
  store i32 %cond, ptr %f.addr, align 4
  store i32 -5, ptr %r, align 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog, %if.end
  %5 = load ptr, ptr %z.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 7
  %6 = load ptr, ptr %state5, align 8
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb65
    i32 3, label %sw.bb83
    i32 4, label %sw.bb103
    i32 5, label %sw.bb123
    i32 6, label %sw.bb145
    i32 7, label %sw.bb151
    i32 8, label %sw.bb181
    i32 9, label %sw.bb200
    i32 10, label %sw.bb220
    i32 11, label %sw.bb240
    i32 12, label %sw.bb274
    i32 13, label %sw.bb275
  ]

sw.bb:                                            ; preds = %while.body
  %8 = load ptr, ptr %z.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 1
  %9 = load i32, ptr %avail_in, align 8
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.bb
  %10 = load i32, ptr %r, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %sw.bb
  %11 = load i32, ptr %f.addr, align 4
  store i32 %11, ptr %r, align 4
  %12 = load ptr, ptr %z.addr, align 8
  %avail_in9 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 1
  %13 = load i32, ptr %avail_in9, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %avail_in9, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %total_in, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %total_in, align 8
  %15 = load ptr, ptr %z.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr, ptr %15, align 8
  %17 = load i8, ptr %16, align 1
  %conv = zext i8 %17 to i32
  %state11 = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 7
  %18 = load ptr, ptr %state11, align 8
  %sub = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 1
  store i32 %conv, ptr %sub, align 8
  %and = and i32 %conv, 15
  %cmp12.not = icmp eq i32 %and, 8
  br i1 %cmp12.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %if.end8
  %19 = load ptr, ptr %z.addr, align 8
  %state15 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 7
  %20 = load ptr, ptr %state15, align 8
  store i32 13, ptr %20, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 6
  store ptr @.str.1, ptr %msg, align 8
  %state17 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %state17, align 8
  %sub18 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 1
  store i32 5, ptr %sub18, align 8
  br label %sw.epilog

if.end19:                                         ; preds = %if.end8
  %22 = load ptr, ptr %z.addr, align 8
  %state20 = getelementptr inbounds %struct.z_stream_s, ptr %22, i64 0, i32 7
  %23 = load ptr, ptr %state20, align 8
  %sub21 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 1
  %24 = load i32, ptr %sub21, align 8
  %shr = lshr i32 %24, 4
  %add = add nuw nsw i32 %shr, 8
  %25 = load ptr, ptr %z.addr, align 8
  %state22 = getelementptr inbounds %struct.z_stream_s, ptr %25, i64 0, i32 7
  %26 = load ptr, ptr %state22, align 8
  %wbits = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 3
  %27 = load i32, ptr %wbits, align 4
  %cmp23 = icmp ugt i32 %add, %27
  br i1 %cmp23, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end19
  %28 = load ptr, ptr %z.addr, align 8
  %state26 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 7
  %29 = load ptr, ptr %state26, align 8
  store i32 13, ptr %29, align 8
  %msg28 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 6
  store ptr @.str.2, ptr %msg28, align 8
  %state29 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %state29, align 8
  %sub30 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 1
  store i32 5, ptr %sub30, align 8
  br label %sw.epilog

if.end31:                                         ; preds = %if.end19
  %31 = load ptr, ptr %z.addr, align 8
  %state32 = getelementptr inbounds %struct.z_stream_s, ptr %31, i64 0, i32 7
  %32 = load ptr, ptr %state32, align 8
  store i32 1, ptr %32, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.end31, %while.body
  %33 = load ptr, ptr %z.addr, align 8
  %avail_in35 = getelementptr inbounds %struct.z_stream_s, ptr %33, i64 0, i32 1
  %34 = load i32, ptr %avail_in35, align 8
  %cmp36 = icmp eq i32 %34, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %sw.bb34
  %35 = load i32, ptr %r, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %sw.bb34
  %36 = load i32, ptr %f.addr, align 4
  store i32 %36, ptr %r, align 4
  %37 = load ptr, ptr %z.addr, align 8
  %avail_in40 = getelementptr inbounds %struct.z_stream_s, ptr %37, i64 0, i32 1
  %38 = load i32, ptr %avail_in40, align 8
  %dec41 = add i32 %38, -1
  store i32 %dec41, ptr %avail_in40, align 8
  %total_in42 = getelementptr inbounds %struct.z_stream_s, ptr %37, i64 0, i32 2
  %39 = load i64, ptr %total_in42, align 8
  %inc43 = add i64 %39, 1
  store i64 %inc43, ptr %total_in42, align 8
  %40 = load ptr, ptr %z.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr45, ptr %40, align 8
  %42 = load i8, ptr %41, align 1
  %conv46 = zext i8 %42 to i32
  store i32 %conv46, ptr %b, align 4
  %43 = load ptr, ptr %z.addr, align 8
  %state47 = getelementptr inbounds %struct.z_stream_s, ptr %43, i64 0, i32 7
  %44 = load ptr, ptr %state47, align 8
  %sub48 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 1
  %45 = load i32, ptr %sub48, align 8
  %shl = shl i32 %45, 8
  %46 = load i32, ptr %b, align 4
  %add49 = add i32 %shl, %46
  %rem = urem i32 %add49, 31
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end56, label %if.then50

if.then50:                                        ; preds = %if.end39
  %47 = load ptr, ptr %z.addr, align 8
  %state51 = getelementptr inbounds %struct.z_stream_s, ptr %47, i64 0, i32 7
  %48 = load ptr, ptr %state51, align 8
  store i32 13, ptr %48, align 8
  %msg53 = getelementptr inbounds %struct.z_stream_s, ptr %47, i64 0, i32 6
  store ptr @.str.3, ptr %msg53, align 8
  %state54 = getelementptr inbounds %struct.z_stream_s, ptr %47, i64 0, i32 7
  %49 = load ptr, ptr %state54, align 8
  %sub55 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 1
  store i32 5, ptr %sub55, align 8
  br label %sw.epilog

if.end56:                                         ; preds = %if.end39
  %50 = load i32, ptr %b, align 4
  %and57 = and i32 %50, 32
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end56
  %51 = load ptr, ptr %z.addr, align 8
  %state60 = getelementptr inbounds %struct.z_stream_s, ptr %51, i64 0, i32 7
  %52 = load ptr, ptr %state60, align 8
  store i32 7, ptr %52, align 8
  br label %sw.epilog

if.end62:                                         ; preds = %if.end56
  %53 = load ptr, ptr %z.addr, align 8
  %state63 = getelementptr inbounds %struct.z_stream_s, ptr %53, i64 0, i32 7
  %54 = load ptr, ptr %state63, align 8
  store i32 2, ptr %54, align 8
  br label %sw.bb65

sw.bb65:                                          ; preds = %if.end62, %while.body
  %55 = load ptr, ptr %z.addr, align 8
  %avail_in66 = getelementptr inbounds %struct.z_stream_s, ptr %55, i64 0, i32 1
  %56 = load i32, ptr %avail_in66, align 8
  %cmp67 = icmp eq i32 %56, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %sw.bb65
  %57 = load i32, ptr %r, align 4
  store i32 %57, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %sw.bb65
  %58 = load i32, ptr %f.addr, align 4
  store i32 %58, ptr %r, align 4
  %59 = load ptr, ptr %z.addr, align 8
  %avail_in71 = getelementptr inbounds %struct.z_stream_s, ptr %59, i64 0, i32 1
  %60 = load i32, ptr %avail_in71, align 8
  %dec72 = add i32 %60, -1
  store i32 %dec72, ptr %avail_in71, align 8
  %total_in73 = getelementptr inbounds %struct.z_stream_s, ptr %59, i64 0, i32 2
  %61 = load i64, ptr %total_in73, align 8
  %inc74 = add i64 %61, 1
  store i64 %inc74, ptr %total_in73, align 8
  %62 = load ptr, ptr %z.addr, align 8
  %63 = load ptr, ptr %62, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %incdec.ptr76, ptr %62, align 8
  %64 = load i8, ptr %63, align 1
  %conv77 = zext i8 %64 to i64
  %shl78 = shl nuw nsw i64 %conv77, 24
  %65 = load ptr, ptr %z.addr, align 8
  %state79 = getelementptr inbounds %struct.z_stream_s, ptr %65, i64 0, i32 7
  %66 = load ptr, ptr %state79, align 8
  %need = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 1, i32 0, i32 1
  store i64 %shl78, ptr %need, align 8
  %state81 = getelementptr inbounds %struct.z_stream_s, ptr %65, i64 0, i32 7
  %67 = load ptr, ptr %state81, align 8
  store i32 3, ptr %67, align 8
  br label %sw.bb83

sw.bb83:                                          ; preds = %if.end70, %while.body
  %68 = load ptr, ptr %z.addr, align 8
  %avail_in84 = getelementptr inbounds %struct.z_stream_s, ptr %68, i64 0, i32 1
  %69 = load i32, ptr %avail_in84, align 8
  %cmp85 = icmp eq i32 %69, 0
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %sw.bb83
  %70 = load i32, ptr %r, align 4
  store i32 %70, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %sw.bb83
  %71 = load i32, ptr %f.addr, align 4
  store i32 %71, ptr %r, align 4
  %72 = load ptr, ptr %z.addr, align 8
  %avail_in89 = getelementptr inbounds %struct.z_stream_s, ptr %72, i64 0, i32 1
  %73 = load i32, ptr %avail_in89, align 8
  %dec90 = add i32 %73, -1
  store i32 %dec90, ptr %avail_in89, align 8
  %total_in91 = getelementptr inbounds %struct.z_stream_s, ptr %72, i64 0, i32 2
  %74 = load i64, ptr %total_in91, align 8
  %inc92 = add i64 %74, 1
  store i64 %inc92, ptr %total_in91, align 8
  %75 = load ptr, ptr %z.addr, align 8
  %76 = load ptr, ptr %75, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr94, ptr %75, align 8
  %77 = load i8, ptr %76, align 1
  %conv95 = zext i8 %77 to i64
  %shl96 = shl nuw nsw i64 %conv95, 16
  %78 = load ptr, ptr %z.addr, align 8
  %state97 = getelementptr inbounds %struct.z_stream_s, ptr %78, i64 0, i32 7
  %79 = load ptr, ptr %state97, align 8
  %need99 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 1, i32 0, i32 1
  %80 = load i64, ptr %need99, align 8
  %add100 = add i64 %80, %shl96
  store i64 %add100, ptr %need99, align 8
  %81 = load ptr, ptr %z.addr, align 8
  %state101 = getelementptr inbounds %struct.z_stream_s, ptr %81, i64 0, i32 7
  %82 = load ptr, ptr %state101, align 8
  store i32 4, ptr %82, align 8
  br label %sw.bb103

sw.bb103:                                         ; preds = %if.end88, %while.body
  %83 = load ptr, ptr %z.addr, align 8
  %avail_in104 = getelementptr inbounds %struct.z_stream_s, ptr %83, i64 0, i32 1
  %84 = load i32, ptr %avail_in104, align 8
  %cmp105 = icmp eq i32 %84, 0
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %sw.bb103
  %85 = load i32, ptr %r, align 4
  store i32 %85, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %sw.bb103
  %86 = load i32, ptr %f.addr, align 4
  store i32 %86, ptr %r, align 4
  %87 = load ptr, ptr %z.addr, align 8
  %avail_in109 = getelementptr inbounds %struct.z_stream_s, ptr %87, i64 0, i32 1
  %88 = load i32, ptr %avail_in109, align 8
  %dec110 = add i32 %88, -1
  store i32 %dec110, ptr %avail_in109, align 8
  %total_in111 = getelementptr inbounds %struct.z_stream_s, ptr %87, i64 0, i32 2
  %89 = load i64, ptr %total_in111, align 8
  %inc112 = add i64 %89, 1
  store i64 %inc112, ptr %total_in111, align 8
  %90 = load ptr, ptr %z.addr, align 8
  %91 = load ptr, ptr %90, align 8
  %incdec.ptr114 = getelementptr inbounds i8, ptr %91, i64 1
  store ptr %incdec.ptr114, ptr %90, align 8
  %92 = load i8, ptr %91, align 1
  %conv115 = zext i8 %92 to i64
  %shl116 = shl nuw nsw i64 %conv115, 8
  %93 = load ptr, ptr %z.addr, align 8
  %state117 = getelementptr inbounds %struct.z_stream_s, ptr %93, i64 0, i32 7
  %94 = load ptr, ptr %state117, align 8
  %need119 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 1, i32 0, i32 1
  %95 = load i64, ptr %need119, align 8
  %add120 = add i64 %95, %shl116
  store i64 %add120, ptr %need119, align 8
  %96 = load ptr, ptr %z.addr, align 8
  %state121 = getelementptr inbounds %struct.z_stream_s, ptr %96, i64 0, i32 7
  %97 = load ptr, ptr %state121, align 8
  store i32 5, ptr %97, align 8
  br label %sw.bb123

sw.bb123:                                         ; preds = %if.end108, %while.body
  %98 = load ptr, ptr %z.addr, align 8
  %avail_in124 = getelementptr inbounds %struct.z_stream_s, ptr %98, i64 0, i32 1
  %99 = load i32, ptr %avail_in124, align 8
  %cmp125 = icmp eq i32 %99, 0
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %sw.bb123
  %100 = load i32, ptr %r, align 4
  store i32 %100, ptr %retval, align 4
  br label %return

if.end128:                                        ; preds = %sw.bb123
  %101 = load i32, ptr %f.addr, align 4
  store i32 %101, ptr %r, align 4
  %102 = load ptr, ptr %z.addr, align 8
  %avail_in129 = getelementptr inbounds %struct.z_stream_s, ptr %102, i64 0, i32 1
  %103 = load i32, ptr %avail_in129, align 8
  %dec130 = add i32 %103, -1
  store i32 %dec130, ptr %avail_in129, align 8
  %total_in131 = getelementptr inbounds %struct.z_stream_s, ptr %102, i64 0, i32 2
  %104 = load i64, ptr %total_in131, align 8
  %inc132 = add i64 %104, 1
  store i64 %inc132, ptr %total_in131, align 8
  %105 = load ptr, ptr %z.addr, align 8
  %106 = load ptr, ptr %105, align 8
  %incdec.ptr134 = getelementptr inbounds i8, ptr %106, i64 1
  store ptr %incdec.ptr134, ptr %105, align 8
  %107 = load i8, ptr %106, align 1
  %conv135 = zext i8 %107 to i64
  %state136 = getelementptr inbounds %struct.z_stream_s, ptr %105, i64 0, i32 7
  %108 = load ptr, ptr %state136, align 8
  %need138 = getelementptr inbounds %struct.internal_state, ptr %108, i64 0, i32 1, i32 0, i32 1
  %109 = load i64, ptr %need138, align 8
  %add139 = add i64 %109, %conv135
  store i64 %add139, ptr %need138, align 8
  %110 = load ptr, ptr %z.addr, align 8
  %state140 = getelementptr inbounds %struct.z_stream_s, ptr %110, i64 0, i32 7
  %111 = load ptr, ptr %state140, align 8
  %need142 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 1, i32 0, i32 1
  %112 = load i64, ptr %need142, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %110, i64 0, i32 12
  store i64 %112, ptr %adler, align 8
  %113 = load ptr, ptr %z.addr, align 8
  %state143 = getelementptr inbounds %struct.z_stream_s, ptr %113, i64 0, i32 7
  %114 = load ptr, ptr %state143, align 8
  store i32 6, ptr %114, align 8
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb145:                                         ; preds = %while.body
  %115 = load ptr, ptr %z.addr, align 8
  %state146 = getelementptr inbounds %struct.z_stream_s, ptr %115, i64 0, i32 7
  %116 = load ptr, ptr %state146, align 8
  store i32 13, ptr %116, align 8
  %msg148 = getelementptr inbounds %struct.z_stream_s, ptr %115, i64 0, i32 6
  store ptr @.str.4, ptr %msg148, align 8
  %state149 = getelementptr inbounds %struct.z_stream_s, ptr %115, i64 0, i32 7
  %117 = load ptr, ptr %state149, align 8
  %sub150 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 1
  store i32 0, ptr %sub150, align 8
  store i32 -2, ptr %retval, align 4
  br label %return

sw.bb151:                                         ; preds = %while.body
  %118 = load ptr, ptr %z.addr, align 8
  %state152 = getelementptr inbounds %struct.z_stream_s, ptr %118, i64 0, i32 7
  %119 = load ptr, ptr %state152, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 4
  %120 = load ptr, ptr %blocks, align 8
  %121 = load i32, ptr %r, align 4
  %call = call i32 @inflate_blocks(ptr noundef %120, ptr noundef %118, i32 noundef %121) #2
  store i32 %call, ptr %r, align 4
  %cmp153 = icmp eq i32 %call, -3
  br i1 %cmp153, label %if.then155, label %if.end160

if.then155:                                       ; preds = %sw.bb151
  %122 = load ptr, ptr %z.addr, align 8
  %state156 = getelementptr inbounds %struct.z_stream_s, ptr %122, i64 0, i32 7
  %123 = load ptr, ptr %state156, align 8
  store i32 13, ptr %123, align 8
  %state158 = getelementptr inbounds %struct.z_stream_s, ptr %122, i64 0, i32 7
  %124 = load ptr, ptr %state158, align 8
  %sub159 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 1
  store i32 0, ptr %sub159, align 8
  br label %sw.epilog

if.end160:                                        ; preds = %sw.bb151
  %125 = load i32, ptr %r, align 4
  %cmp161 = icmp eq i32 %125, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end160
  %126 = load i32, ptr %f.addr, align 4
  store i32 %126, ptr %r, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %if.end160
  %127 = load i32, ptr %r, align 4
  %cmp165.not = icmp eq i32 %127, 1
  br i1 %cmp165.not, label %if.end168, label %if.then167

if.then167:                                       ; preds = %if.end164
  %128 = load i32, ptr %r, align 4
  store i32 %128, ptr %retval, align 4
  br label %return

if.end168:                                        ; preds = %if.end164
  %129 = load i32, ptr %f.addr, align 4
  store i32 %129, ptr %r, align 4
  %130 = load ptr, ptr %z.addr, align 8
  %state169 = getelementptr inbounds %struct.z_stream_s, ptr %130, i64 0, i32 7
  %131 = load ptr, ptr %state169, align 8
  %blocks170 = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 4
  %132 = load ptr, ptr %blocks170, align 8
  %sub172 = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 1
  call void @inflate_blocks_reset(ptr noundef %132, ptr noundef %130, ptr noundef nonnull %sub172) #2
  %133 = load ptr, ptr %z.addr, align 8
  %state173 = getelementptr inbounds %struct.z_stream_s, ptr %133, i64 0, i32 7
  %134 = load ptr, ptr %state173, align 8
  %nowrap = getelementptr inbounds %struct.internal_state, ptr %134, i64 0, i32 2
  %135 = load i32, ptr %nowrap, align 8
  %tobool174.not = icmp eq i32 %135, 0
  br i1 %tobool174.not, label %if.end178, label %if.then175

if.then175:                                       ; preds = %if.end168
  %136 = load ptr, ptr %z.addr, align 8
  %state176 = getelementptr inbounds %struct.z_stream_s, ptr %136, i64 0, i32 7
  %137 = load ptr, ptr %state176, align 8
  store i32 12, ptr %137, align 8
  br label %sw.epilog

if.end178:                                        ; preds = %if.end168
  %138 = load ptr, ptr %z.addr, align 8
  %state179 = getelementptr inbounds %struct.z_stream_s, ptr %138, i64 0, i32 7
  %139 = load ptr, ptr %state179, align 8
  store i32 8, ptr %139, align 8
  br label %sw.bb181

sw.bb181:                                         ; preds = %if.end178, %while.body
  %140 = load ptr, ptr %z.addr, align 8
  %avail_in182 = getelementptr inbounds %struct.z_stream_s, ptr %140, i64 0, i32 1
  %141 = load i32, ptr %avail_in182, align 8
  %cmp183 = icmp eq i32 %141, 0
  br i1 %cmp183, label %if.then185, label %if.end186

if.then185:                                       ; preds = %sw.bb181
  %142 = load i32, ptr %r, align 4
  store i32 %142, ptr %retval, align 4
  br label %return

if.end186:                                        ; preds = %sw.bb181
  %143 = load i32, ptr %f.addr, align 4
  store i32 %143, ptr %r, align 4
  %144 = load ptr, ptr %z.addr, align 8
  %avail_in187 = getelementptr inbounds %struct.z_stream_s, ptr %144, i64 0, i32 1
  %145 = load i32, ptr %avail_in187, align 8
  %dec188 = add i32 %145, -1
  store i32 %dec188, ptr %avail_in187, align 8
  %total_in189 = getelementptr inbounds %struct.z_stream_s, ptr %144, i64 0, i32 2
  %146 = load i64, ptr %total_in189, align 8
  %inc190 = add i64 %146, 1
  store i64 %inc190, ptr %total_in189, align 8
  %147 = load ptr, ptr %z.addr, align 8
  %148 = load ptr, ptr %147, align 8
  %incdec.ptr192 = getelementptr inbounds i8, ptr %148, i64 1
  store ptr %incdec.ptr192, ptr %147, align 8
  %149 = load i8, ptr %148, align 1
  %conv193 = zext i8 %149 to i64
  %shl194 = shl nuw nsw i64 %conv193, 24
  %150 = load ptr, ptr %z.addr, align 8
  %state195 = getelementptr inbounds %struct.z_stream_s, ptr %150, i64 0, i32 7
  %151 = load ptr, ptr %state195, align 8
  %need197 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 1, i32 0, i32 1
  store i64 %shl194, ptr %need197, align 8
  %state198 = getelementptr inbounds %struct.z_stream_s, ptr %150, i64 0, i32 7
  %152 = load ptr, ptr %state198, align 8
  store i32 9, ptr %152, align 8
  br label %sw.bb200

sw.bb200:                                         ; preds = %if.end186, %while.body
  %153 = load ptr, ptr %z.addr, align 8
  %avail_in201 = getelementptr inbounds %struct.z_stream_s, ptr %153, i64 0, i32 1
  %154 = load i32, ptr %avail_in201, align 8
  %cmp202 = icmp eq i32 %154, 0
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %sw.bb200
  %155 = load i32, ptr %r, align 4
  store i32 %155, ptr %retval, align 4
  br label %return

if.end205:                                        ; preds = %sw.bb200
  %156 = load i32, ptr %f.addr, align 4
  store i32 %156, ptr %r, align 4
  %157 = load ptr, ptr %z.addr, align 8
  %avail_in206 = getelementptr inbounds %struct.z_stream_s, ptr %157, i64 0, i32 1
  %158 = load i32, ptr %avail_in206, align 8
  %dec207 = add i32 %158, -1
  store i32 %dec207, ptr %avail_in206, align 8
  %total_in208 = getelementptr inbounds %struct.z_stream_s, ptr %157, i64 0, i32 2
  %159 = load i64, ptr %total_in208, align 8
  %inc209 = add i64 %159, 1
  store i64 %inc209, ptr %total_in208, align 8
  %160 = load ptr, ptr %z.addr, align 8
  %161 = load ptr, ptr %160, align 8
  %incdec.ptr211 = getelementptr inbounds i8, ptr %161, i64 1
  store ptr %incdec.ptr211, ptr %160, align 8
  %162 = load i8, ptr %161, align 1
  %conv212 = zext i8 %162 to i64
  %shl213 = shl nuw nsw i64 %conv212, 16
  %163 = load ptr, ptr %z.addr, align 8
  %state214 = getelementptr inbounds %struct.z_stream_s, ptr %163, i64 0, i32 7
  %164 = load ptr, ptr %state214, align 8
  %need216 = getelementptr inbounds %struct.internal_state, ptr %164, i64 0, i32 1, i32 0, i32 1
  %165 = load i64, ptr %need216, align 8
  %add217 = add i64 %165, %shl213
  store i64 %add217, ptr %need216, align 8
  %166 = load ptr, ptr %z.addr, align 8
  %state218 = getelementptr inbounds %struct.z_stream_s, ptr %166, i64 0, i32 7
  %167 = load ptr, ptr %state218, align 8
  store i32 10, ptr %167, align 8
  br label %sw.bb220

sw.bb220:                                         ; preds = %if.end205, %while.body
  %168 = load ptr, ptr %z.addr, align 8
  %avail_in221 = getelementptr inbounds %struct.z_stream_s, ptr %168, i64 0, i32 1
  %169 = load i32, ptr %avail_in221, align 8
  %cmp222 = icmp eq i32 %169, 0
  br i1 %cmp222, label %if.then224, label %if.end225

if.then224:                                       ; preds = %sw.bb220
  %170 = load i32, ptr %r, align 4
  store i32 %170, ptr %retval, align 4
  br label %return

if.end225:                                        ; preds = %sw.bb220
  %171 = load i32, ptr %f.addr, align 4
  store i32 %171, ptr %r, align 4
  %172 = load ptr, ptr %z.addr, align 8
  %avail_in226 = getelementptr inbounds %struct.z_stream_s, ptr %172, i64 0, i32 1
  %173 = load i32, ptr %avail_in226, align 8
  %dec227 = add i32 %173, -1
  store i32 %dec227, ptr %avail_in226, align 8
  %total_in228 = getelementptr inbounds %struct.z_stream_s, ptr %172, i64 0, i32 2
  %174 = load i64, ptr %total_in228, align 8
  %inc229 = add i64 %174, 1
  store i64 %inc229, ptr %total_in228, align 8
  %175 = load ptr, ptr %z.addr, align 8
  %176 = load ptr, ptr %175, align 8
  %incdec.ptr231 = getelementptr inbounds i8, ptr %176, i64 1
  store ptr %incdec.ptr231, ptr %175, align 8
  %177 = load i8, ptr %176, align 1
  %conv232 = zext i8 %177 to i64
  %shl233 = shl nuw nsw i64 %conv232, 8
  %178 = load ptr, ptr %z.addr, align 8
  %state234 = getelementptr inbounds %struct.z_stream_s, ptr %178, i64 0, i32 7
  %179 = load ptr, ptr %state234, align 8
  %need236 = getelementptr inbounds %struct.internal_state, ptr %179, i64 0, i32 1, i32 0, i32 1
  %180 = load i64, ptr %need236, align 8
  %add237 = add i64 %180, %shl233
  store i64 %add237, ptr %need236, align 8
  %181 = load ptr, ptr %z.addr, align 8
  %state238 = getelementptr inbounds %struct.z_stream_s, ptr %181, i64 0, i32 7
  %182 = load ptr, ptr %state238, align 8
  store i32 11, ptr %182, align 8
  br label %sw.bb240

sw.bb240:                                         ; preds = %if.end225, %while.body
  %183 = load ptr, ptr %z.addr, align 8
  %avail_in241 = getelementptr inbounds %struct.z_stream_s, ptr %183, i64 0, i32 1
  %184 = load i32, ptr %avail_in241, align 8
  %cmp242 = icmp eq i32 %184, 0
  br i1 %cmp242, label %if.then244, label %if.end245

if.then244:                                       ; preds = %sw.bb240
  %185 = load i32, ptr %r, align 4
  store i32 %185, ptr %retval, align 4
  br label %return

if.end245:                                        ; preds = %sw.bb240
  %186 = load i32, ptr %f.addr, align 4
  store i32 %186, ptr %r, align 4
  %187 = load ptr, ptr %z.addr, align 8
  %avail_in246 = getelementptr inbounds %struct.z_stream_s, ptr %187, i64 0, i32 1
  %188 = load i32, ptr %avail_in246, align 8
  %dec247 = add i32 %188, -1
  store i32 %dec247, ptr %avail_in246, align 8
  %total_in248 = getelementptr inbounds %struct.z_stream_s, ptr %187, i64 0, i32 2
  %189 = load i64, ptr %total_in248, align 8
  %inc249 = add i64 %189, 1
  store i64 %inc249, ptr %total_in248, align 8
  %190 = load ptr, ptr %z.addr, align 8
  %191 = load ptr, ptr %190, align 8
  %incdec.ptr251 = getelementptr inbounds i8, ptr %191, i64 1
  store ptr %incdec.ptr251, ptr %190, align 8
  %192 = load i8, ptr %191, align 1
  %conv252 = zext i8 %192 to i64
  %state253 = getelementptr inbounds %struct.z_stream_s, ptr %190, i64 0, i32 7
  %193 = load ptr, ptr %state253, align 8
  %need255 = getelementptr inbounds %struct.internal_state, ptr %193, i64 0, i32 1, i32 0, i32 1
  %194 = load i64, ptr %need255, align 8
  %add256 = add i64 %194, %conv252
  store i64 %add256, ptr %need255, align 8
  %195 = load ptr, ptr %z.addr, align 8
  %state257 = getelementptr inbounds %struct.z_stream_s, ptr %195, i64 0, i32 7
  %196 = load ptr, ptr %state257, align 8
  %sub258 = getelementptr inbounds %struct.internal_state, ptr %196, i64 0, i32 1
  %197 = load i64, ptr %sub258, align 8
  %need262 = getelementptr inbounds %struct.internal_state, ptr %196, i64 0, i32 1, i32 0, i32 1
  %198 = load i64, ptr %need262, align 8
  %cmp263.not = icmp eq i64 %197, %198
  br i1 %cmp263.not, label %if.end271, label %if.then265

if.then265:                                       ; preds = %if.end245
  %199 = load ptr, ptr %z.addr, align 8
  %state266 = getelementptr inbounds %struct.z_stream_s, ptr %199, i64 0, i32 7
  %200 = load ptr, ptr %state266, align 8
  store i32 13, ptr %200, align 8
  %msg268 = getelementptr inbounds %struct.z_stream_s, ptr %199, i64 0, i32 6
  store ptr @.str.5, ptr %msg268, align 8
  %state269 = getelementptr inbounds %struct.z_stream_s, ptr %199, i64 0, i32 7
  %201 = load ptr, ptr %state269, align 8
  %sub270 = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 1
  store i32 5, ptr %sub270, align 8
  br label %sw.epilog

if.end271:                                        ; preds = %if.end245
  %202 = load ptr, ptr %z.addr, align 8
  %state272 = getelementptr inbounds %struct.z_stream_s, ptr %202, i64 0, i32 7
  %203 = load ptr, ptr %state272, align 8
  store i32 12, ptr %203, align 8
  br label %sw.bb274

sw.bb274:                                         ; preds = %if.end271, %while.body
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb275:                                         ; preds = %while.body
  store i32 -3, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %while.body
  store i32 -2, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.then265, %if.then175, %if.then155, %if.then59, %if.then50, %if.then25, %if.then14
  br label %while.body

return:                                           ; preds = %sw.default, %sw.bb275, %sw.bb274, %if.then244, %if.then224, %if.then204, %if.then185, %if.then167, %sw.bb145, %if.end128, %if.then127, %if.then107, %if.then87, %if.then69, %if.then38, %if.then7, %if.then
  %204 = load i32, ptr %retval, align 4
  ret i32 %204
}

declare i32 @inflate_blocks(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSetDictionary(ptr noundef %z, ptr noundef %dictionary, i32 noundef %dictLength) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca i32, align 4
  %length = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store i32 %dictLength, ptr %dictLength.addr, align 4
  store i32 %dictLength, ptr %length, align 4
  %cmp = icmp eq ptr %z, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %z.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  %4 = load i32, ptr %3, align 8
  %cmp4.not = icmp eq i32 %4, 6
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %dictionary.addr, align 8
  %6 = load i32, ptr %dictLength.addr, align 4
  %call = call i64 @adler32(i64 noundef 1, ptr noundef %5, i32 noundef %6) #2
  %7 = load ptr, ptr %z.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 12
  %8 = load i64, ptr %adler, align 8
  %cmp5.not = icmp eq i64 %call, %8
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  store i32 -3, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %z.addr, align 8
  %adler8 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 12
  store i64 1, ptr %adler8, align 8
  %10 = load i32, ptr %length, align 4
  %state9 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %state9, align 8
  %wbits = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 3
  %12 = load i32, ptr %wbits, align 4
  %.highbits = lshr i32 %10, %12
  %cmp10.not = icmp eq i32 %.highbits, 0
  br i1 %cmp10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end7
  %13 = load ptr, ptr %z.addr, align 8
  %state12 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 7
  %14 = load ptr, ptr %state12, align 8
  %wbits13 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %wbits13, align 4
  %notmask = shl nsw i32 -1, %15
  %sub = xor i32 %notmask, -1
  store i32 %sub, ptr %length, align 4
  %16 = load i32, ptr %dictLength.addr, align 4
  %sub15 = sub i32 %16, %sub
  %17 = load ptr, ptr %dictionary.addr, align 8
  %idx.ext = zext i32 %sub15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %dictionary.addr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end7
  %18 = load ptr, ptr %z.addr, align 8
  %state17 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 7
  %19 = load ptr, ptr %state17, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 4
  %20 = load ptr, ptr %blocks, align 8
  %21 = load ptr, ptr %dictionary.addr, align 8
  %22 = load i32, ptr %length, align 4
  call void @inflate_set_dictionary(ptr noundef %20, ptr noundef %21, i32 noundef %22) #2
  %23 = load ptr, ptr %z.addr, align 8
  %state18 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 7
  %24 = load ptr, ptr %state18, align 8
  store i32 7, ptr %24, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then6, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare void @inflate_set_dictionary(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSync(ptr noundef %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %m = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  %cmp = icmp eq ptr %z, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %z.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state2, align 8
  %4 = load i32, ptr %3, align 8
  %cmp3.not = icmp eq i32 %4, 13
  br i1 %cmp3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %z.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 7
  %6 = load ptr, ptr %state5, align 8
  store i32 13, ptr %6, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %state7, align 8
  %sub = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 1
  store i32 0, ptr %sub, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %8 = load ptr, ptr %z.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 1
  %9 = load i32, ptr %avail_in, align 8
  store i32 %9, ptr %n, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end8
  %10 = load ptr, ptr %z.addr, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %p, align 8
  %state12 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %state12, align 8
  %sub13 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 1
  %13 = load i32, ptr %sub13, align 8
  store i32 %13, ptr %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.end11
  %14 = load i32, ptr %n, align 4
  %tobool.not = icmp eq i32 %14, 0
  %15 = load i32, ptr %m, align 4
  %cmp14 = icmp ult i32 %15, 4
  %16 = select i1 %tobool.not, i1 false, i1 %cmp14
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %p, align 8
  %18 = load i8, ptr %17, align 1
  %19 = load i32, ptr %m, align 4
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr @inflateSync.mark, i64 0, i64 %idxprom
  %20 = load i8, ptr %arrayidx, align 1
  %cmp16 = icmp eq i8 %18, %20
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %while.body
  %21 = load i32, ptr %m, align 4
  %inc = add i32 %21, 1
  br label %if.end24

if.else:                                          ; preds = %while.body
  %22 = load ptr, ptr %p, align 8
  %23 = load i8, ptr %22, align 1
  %tobool19.not = icmp eq i8 %23, 0
  %24 = load i32, ptr %m, align 4
  %sub22 = sub i32 4, %24
  %storemerge = select i1 %tobool19.not, i32 %sub22, i32 0
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18
  %storemerge1 = phi i32 [ %storemerge, %if.else ], [ %inc, %if.then18 ]
  store i32 %storemerge1, ptr %m, align 4
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %26 = load i32, ptr %n, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %n, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %27 = load ptr, ptr %p, align 8
  %28 = load ptr, ptr %z.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %total_in, align 8
  %add = add i64 %30, %sub.ptr.sub
  store i64 %add, ptr %total_in, align 8
  %31 = load ptr, ptr %p, align 8
  %32 = load ptr, ptr %z.addr, align 8
  store ptr %31, ptr %32, align 8
  %33 = load i32, ptr %n, align 4
  %avail_in27 = getelementptr inbounds %struct.z_stream_s, ptr %32, i64 0, i32 1
  store i32 %33, ptr %avail_in27, align 8
  %34 = load i32, ptr %m, align 4
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %32, i64 0, i32 7
  %35 = load ptr, ptr %state28, align 8
  %sub29 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 1
  store i32 %34, ptr %sub29, align 8
  %cmp30.not = icmp eq i32 %34, 4
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %while.end
  store i32 -3, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.end
  %36 = load ptr, ptr %z.addr, align 8
  %total_in34 = getelementptr inbounds %struct.z_stream_s, ptr %36, i64 0, i32 2
  %37 = load i64, ptr %total_in34, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %36, i64 0, i32 5
  %38 = load i64, ptr %total_out, align 8
  %call = call i32 @inflateReset(ptr noundef %36)
  %total_in35 = getelementptr inbounds %struct.z_stream_s, ptr %36, i64 0, i32 2
  store i64 %37, ptr %total_in35, align 8
  %total_out36 = getelementptr inbounds %struct.z_stream_s, ptr %36, i64 0, i32 5
  store i64 %38, ptr %total_out36, align 8
  %state37 = getelementptr inbounds %struct.z_stream_s, ptr %36, i64 0, i32 7
  %39 = load ptr, ptr %state37, align 8
  store i32 7, ptr %39, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then32, %if.then10, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSyncPoint(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  %cmp = icmp eq ptr %z, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %z.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 4
  %4 = load ptr, ptr %blocks, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %z.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 7
  %6 = load ptr, ptr %state5, align 8
  %blocks6 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %blocks6, align 8
  %call = call i32 @inflate_blocks_sync_point(ptr noundef %7) #2
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end
  %storemerge = phi i32 [ %call, %if.end ], [ -2, %lor.lhs.false2 ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
}

declare i32 @inflate_blocks_sync_point(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind }

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
