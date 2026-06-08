; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/inflate.c'
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
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %z.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 5
  store i64 0, ptr %total_out, align 8
  %4 = load ptr, ptr %z.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 2
  store i64 0, ptr %total_in, align 8
  %5 = load ptr, ptr %z.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %6 = load ptr, ptr %z.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %state2, align 8
  %nowrap = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %nowrap, align 8
  %tobool = icmp ne i32 %8, 0
  %9 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 7, i32 0
  %10 = load ptr, ptr %z.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %state3, align 8
  %mode = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 0
  store i32 %cond, ptr %mode, align 8
  %12 = load ptr, ptr %z.addr, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %state4, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %blocks, align 8
  %15 = load ptr, ptr %z.addr, align 8
  call void @inflate_blocks_reset(ptr noundef %14, ptr noundef %15, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare void @inflate_blocks_reset(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateEnd(ptr noundef %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %zfree, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %z.addr, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %state4, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %blocks, align 8
  %cmp5 = icmp ne ptr %7, null
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %z.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %state7, align 8
  %blocks8 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %blocks8, align 8
  %11 = load ptr, ptr %z.addr, align 8
  %call = call i32 @inflate_blocks_free(ptr noundef %10, ptr noundef %11)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %12 = load ptr, ptr %z.addr, align 8
  %zfree10 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %zfree10, align 8
  %14 = load ptr, ptr %z.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 10
  %15 = load ptr, ptr %opaque, align 8
  %16 = load ptr, ptr %z.addr, align 8
  %state11 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %state11, align 8
  call void %13(ptr noundef %15, ptr noundef %17)
  %18 = load ptr, ptr %z.addr, align 8
  %state12 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 7
  store ptr null, ptr %state12, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
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
  %0 = load ptr, ptr %version.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %version.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8, ptr @.str, align 1
  %conv1 = sext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %stream_size.addr, align 4
  %conv5 = sext i32 %4 to i64
  %cmp6 = icmp ne i64 %conv5, 112
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %z.addr, align 8
  %cmp8 = icmp eq ptr %5, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %6 = load ptr, ptr %z.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %7 = load ptr, ptr %z.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %zalloc, align 8
  %cmp12 = icmp eq ptr %8, null
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %9 = load ptr, ptr %z.addr, align 8
  %zalloc15 = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 8
  store ptr @zcalloc, ptr %zalloc15, align 8
  %10 = load ptr, ptr %z.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11
  %11 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %zfree, align 8
  %cmp17 = icmp eq ptr %12, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %13 = load ptr, ptr %z.addr, align 8
  %zfree20 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 9
  store ptr @zcfree, ptr %zfree20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %14 = load ptr, ptr %z.addr, align 8
  %zalloc22 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %zalloc22, align 8
  %16 = load ptr, ptr %z.addr, align 8
  %opaque23 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %opaque23, align 8
  %call = call ptr %15(ptr noundef %17, i32 noundef 1, i32 noundef 40)
  %18 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 7
  store ptr %call, ptr %state, align 8
  %cmp24 = icmp eq ptr %call, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  store i32 -4, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end21
  %19 = load ptr, ptr %z.addr, align 8
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %state28, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 4
  store ptr null, ptr %blocks, align 8
  %21 = load ptr, ptr %z.addr, align 8
  %state29 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %state29, align 8
  %nowrap = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 2
  store i32 0, ptr %nowrap, align 8
  %23 = load i32, ptr %w.addr, align 4
  %cmp30 = icmp slt i32 %23, 0
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end27
  %24 = load i32, ptr %w.addr, align 4
  %sub = sub nsw i32 0, %24
  store i32 %sub, ptr %w.addr, align 4
  %25 = load ptr, ptr %z.addr, align 8
  %state33 = getelementptr inbounds %struct.z_stream_s, ptr %25, i32 0, i32 7
  %26 = load ptr, ptr %state33, align 8
  %nowrap34 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 2
  store i32 1, ptr %nowrap34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end27
  %27 = load i32, ptr %w.addr, align 4
  %cmp36 = icmp slt i32 %27, 8
  br i1 %cmp36, label %if.then41, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end35
  %28 = load i32, ptr %w.addr, align 4
  %cmp39 = icmp sgt i32 %28, 15
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %lor.lhs.false38, %if.end35
  %29 = load ptr, ptr %z.addr, align 8
  %call42 = call i32 @inflateEnd(ptr noundef %29)
  store i32 -2, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %lor.lhs.false38
  %30 = load i32, ptr %w.addr, align 4
  %31 = load ptr, ptr %z.addr, align 8
  %state44 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %state44, align 8
  %wbits = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 3
  store i32 %30, ptr %wbits, align 4
  %33 = load ptr, ptr %z.addr, align 8
  %34 = load ptr, ptr %z.addr, align 8
  %state45 = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 7
  %35 = load ptr, ptr %state45, align 8
  %nowrap46 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %nowrap46, align 8
  %tobool = icmp ne i32 %36, 0
  %37 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr null, ptr @adler32
  %38 = load i32, ptr %w.addr, align 4
  %shl = shl i32 1, %38
  %call47 = call ptr @inflate_blocks_new(ptr noundef %33, ptr noundef %cond, i32 noundef %shl)
  %39 = load ptr, ptr %z.addr, align 8
  %state48 = getelementptr inbounds %struct.z_stream_s, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %state48, align 8
  %blocks49 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 4
  store ptr %call47, ptr %blocks49, align 8
  %cmp50 = icmp eq ptr %call47, null
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end43
  %41 = load ptr, ptr %z.addr, align 8
  %call53 = call i32 @inflateEnd(ptr noundef %41)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end43
  %42 = load ptr, ptr %z.addr, align 8
  %call55 = call i32 @inflateReset(ptr noundef %42)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.then52, %if.then41, %if.then26, %if.then10, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

declare ptr @inflate_blocks_new(ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @inflateInit_(ptr noundef %z, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %stream_size.addr = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %version, ptr %version.addr, align 8
  store i32 %stream_size, ptr %stream_size.addr, align 4
  %0 = load ptr, ptr %z.addr, align 8
  %1 = load ptr, ptr %version.addr, align 8
  %2 = load i32, ptr %stream_size.addr, align 4
  %call = call i32 @inflateInit2_(ptr noundef %0, i32 noundef 15, ptr noundef %1, i32 noundef %2)
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
  %0 = load ptr, ptr %z.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %z.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next_in, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load i32, ptr %f.addr, align 4
  %cmp4 = icmp eq i32 %5, 4
  %6 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 -5, i32 0
  store i32 %cond, ptr %f.addr, align 4
  store i32 -5, ptr %r, align 4
  br label %while.body

while.body:                                       ; preds = %if.end, %sw.epilog
  %7 = load ptr, ptr %z.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %state5, align 8
  %mode = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %mode, align 8
  switch i32 %9, label %sw.default [
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
  %10 = load ptr, ptr %z.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %avail_in, align 8
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.bb
  %12 = load i32, ptr %r, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %sw.bb
  %13 = load i32, ptr %f.addr, align 4
  store i32 %13, ptr %r, align 4
  %14 = load ptr, ptr %z.addr, align 8
  %avail_in9 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %avail_in9, align 8
  %dec = add i32 %15, -1
  store i32 %dec, ptr %avail_in9, align 8
  %16 = load ptr, ptr %z.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %total_in, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %total_in, align 8
  %18 = load ptr, ptr %z.addr, align 8
  %next_in10 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %next_in10, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %next_in10, align 8
  %20 = load i8, ptr %19, align 1
  %conv = zext i8 %20 to i32
  %21 = load ptr, ptr %z.addr, align 8
  %state11 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %state11, align 8
  %sub = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 1
  store i32 %conv, ptr %sub, align 8
  %and = and i32 %conv, 15
  %cmp12 = icmp ne i32 %and, 8
  br i1 %cmp12, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end8
  %23 = load ptr, ptr %z.addr, align 8
  %state15 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 7
  %24 = load ptr, ptr %state15, align 8
  %mode16 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 0
  store i32 13, ptr %mode16, align 8
  %25 = load ptr, ptr %z.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %25, i32 0, i32 6
  store ptr @.str.1, ptr %msg, align 8
  %26 = load ptr, ptr %z.addr, align 8
  %state17 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 7
  %27 = load ptr, ptr %state17, align 8
  %sub18 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 1
  store i32 5, ptr %sub18, align 8
  br label %sw.epilog

if.end19:                                         ; preds = %if.end8
  %28 = load ptr, ptr %z.addr, align 8
  %state20 = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 7
  %29 = load ptr, ptr %state20, align 8
  %sub21 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %sub21, align 8
  %shr = lshr i32 %30, 4
  %add = add i32 %shr, 8
  %31 = load ptr, ptr %z.addr, align 8
  %state22 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %state22, align 8
  %wbits = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %wbits, align 4
  %cmp23 = icmp ugt i32 %add, %33
  br i1 %cmp23, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end19
  %34 = load ptr, ptr %z.addr, align 8
  %state26 = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 7
  %35 = load ptr, ptr %state26, align 8
  %mode27 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 0
  store i32 13, ptr %mode27, align 8
  %36 = load ptr, ptr %z.addr, align 8
  %msg28 = getelementptr inbounds %struct.z_stream_s, ptr %36, i32 0, i32 6
  store ptr @.str.2, ptr %msg28, align 8
  %37 = load ptr, ptr %z.addr, align 8
  %state29 = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 7
  %38 = load ptr, ptr %state29, align 8
  %sub30 = getelementptr inbounds %struct.internal_state, ptr %38, i32 0, i32 1
  store i32 5, ptr %sub30, align 8
  br label %sw.epilog

if.end31:                                         ; preds = %if.end19
  %39 = load ptr, ptr %z.addr, align 8
  %state32 = getelementptr inbounds %struct.z_stream_s, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %state32, align 8
  %mode33 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 0
  store i32 1, ptr %mode33, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %while.body, %if.end31
  %41 = load ptr, ptr %z.addr, align 8
  %avail_in35 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %avail_in35, align 8
  %cmp36 = icmp eq i32 %42, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %sw.bb34
  %43 = load i32, ptr %r, align 4
  store i32 %43, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %sw.bb34
  %44 = load i32, ptr %f.addr, align 4
  store i32 %44, ptr %r, align 4
  %45 = load ptr, ptr %z.addr, align 8
  %avail_in40 = getelementptr inbounds %struct.z_stream_s, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %avail_in40, align 8
  %dec41 = add i32 %46, -1
  store i32 %dec41, ptr %avail_in40, align 8
  %47 = load ptr, ptr %z.addr, align 8
  %total_in42 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 2
  %48 = load i64, ptr %total_in42, align 8
  %inc43 = add i64 %48, 1
  store i64 %inc43, ptr %total_in42, align 8
  %49 = load ptr, ptr %z.addr, align 8
  %next_in44 = getelementptr inbounds %struct.z_stream_s, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %next_in44, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr45, ptr %next_in44, align 8
  %51 = load i8, ptr %50, align 1
  %conv46 = zext i8 %51 to i32
  store i32 %conv46, ptr %b, align 4
  %52 = load ptr, ptr %z.addr, align 8
  %state47 = getelementptr inbounds %struct.z_stream_s, ptr %52, i32 0, i32 7
  %53 = load ptr, ptr %state47, align 8
  %sub48 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 1
  %54 = load i32, ptr %sub48, align 8
  %shl = shl i32 %54, 8
  %55 = load i32, ptr %b, align 4
  %add49 = add i32 %shl, %55
  %rem = urem i32 %add49, 31
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then50, label %if.end56

if.then50:                                        ; preds = %if.end39
  %56 = load ptr, ptr %z.addr, align 8
  %state51 = getelementptr inbounds %struct.z_stream_s, ptr %56, i32 0, i32 7
  %57 = load ptr, ptr %state51, align 8
  %mode52 = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 0
  store i32 13, ptr %mode52, align 8
  %58 = load ptr, ptr %z.addr, align 8
  %msg53 = getelementptr inbounds %struct.z_stream_s, ptr %58, i32 0, i32 6
  store ptr @.str.3, ptr %msg53, align 8
  %59 = load ptr, ptr %z.addr, align 8
  %state54 = getelementptr inbounds %struct.z_stream_s, ptr %59, i32 0, i32 7
  %60 = load ptr, ptr %state54, align 8
  %sub55 = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 1
  store i32 5, ptr %sub55, align 8
  br label %sw.epilog

if.end56:                                         ; preds = %if.end39
  %61 = load i32, ptr %b, align 4
  %and57 = and i32 %61, 32
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.end62, label %if.then59

if.then59:                                        ; preds = %if.end56
  %62 = load ptr, ptr %z.addr, align 8
  %state60 = getelementptr inbounds %struct.z_stream_s, ptr %62, i32 0, i32 7
  %63 = load ptr, ptr %state60, align 8
  %mode61 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 0
  store i32 7, ptr %mode61, align 8
  br label %sw.epilog

if.end62:                                         ; preds = %if.end56
  %64 = load ptr, ptr %z.addr, align 8
  %state63 = getelementptr inbounds %struct.z_stream_s, ptr %64, i32 0, i32 7
  %65 = load ptr, ptr %state63, align 8
  %mode64 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 0
  store i32 2, ptr %mode64, align 8
  br label %sw.bb65

sw.bb65:                                          ; preds = %while.body, %if.end62
  %66 = load ptr, ptr %z.addr, align 8
  %avail_in66 = getelementptr inbounds %struct.z_stream_s, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %avail_in66, align 8
  %cmp67 = icmp eq i32 %67, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %sw.bb65
  %68 = load i32, ptr %r, align 4
  store i32 %68, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %sw.bb65
  %69 = load i32, ptr %f.addr, align 4
  store i32 %69, ptr %r, align 4
  %70 = load ptr, ptr %z.addr, align 8
  %avail_in71 = getelementptr inbounds %struct.z_stream_s, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %avail_in71, align 8
  %dec72 = add i32 %71, -1
  store i32 %dec72, ptr %avail_in71, align 8
  %72 = load ptr, ptr %z.addr, align 8
  %total_in73 = getelementptr inbounds %struct.z_stream_s, ptr %72, i32 0, i32 2
  %73 = load i64, ptr %total_in73, align 8
  %inc74 = add i64 %73, 1
  store i64 %inc74, ptr %total_in73, align 8
  %74 = load ptr, ptr %z.addr, align 8
  %next_in75 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %next_in75, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr76, ptr %next_in75, align 8
  %76 = load i8, ptr %75, align 1
  %conv77 = zext i8 %76 to i64
  %shl78 = shl i64 %conv77, 24
  %77 = load ptr, ptr %z.addr, align 8
  %state79 = getelementptr inbounds %struct.z_stream_s, ptr %77, i32 0, i32 7
  %78 = load ptr, ptr %state79, align 8
  %sub80 = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 1
  %need = getelementptr inbounds %struct.anon, ptr %sub80, i32 0, i32 1
  store i64 %shl78, ptr %need, align 8
  %79 = load ptr, ptr %z.addr, align 8
  %state81 = getelementptr inbounds %struct.z_stream_s, ptr %79, i32 0, i32 7
  %80 = load ptr, ptr %state81, align 8
  %mode82 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 0
  store i32 3, ptr %mode82, align 8
  br label %sw.bb83

sw.bb83:                                          ; preds = %while.body, %if.end70
  %81 = load ptr, ptr %z.addr, align 8
  %avail_in84 = getelementptr inbounds %struct.z_stream_s, ptr %81, i32 0, i32 1
  %82 = load i32, ptr %avail_in84, align 8
  %cmp85 = icmp eq i32 %82, 0
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %sw.bb83
  %83 = load i32, ptr %r, align 4
  store i32 %83, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %sw.bb83
  %84 = load i32, ptr %f.addr, align 4
  store i32 %84, ptr %r, align 4
  %85 = load ptr, ptr %z.addr, align 8
  %avail_in89 = getelementptr inbounds %struct.z_stream_s, ptr %85, i32 0, i32 1
  %86 = load i32, ptr %avail_in89, align 8
  %dec90 = add i32 %86, -1
  store i32 %dec90, ptr %avail_in89, align 8
  %87 = load ptr, ptr %z.addr, align 8
  %total_in91 = getelementptr inbounds %struct.z_stream_s, ptr %87, i32 0, i32 2
  %88 = load i64, ptr %total_in91, align 8
  %inc92 = add i64 %88, 1
  store i64 %inc92, ptr %total_in91, align 8
  %89 = load ptr, ptr %z.addr, align 8
  %next_in93 = getelementptr inbounds %struct.z_stream_s, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %next_in93, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr94, ptr %next_in93, align 8
  %91 = load i8, ptr %90, align 1
  %conv95 = zext i8 %91 to i64
  %shl96 = shl i64 %conv95, 16
  %92 = load ptr, ptr %z.addr, align 8
  %state97 = getelementptr inbounds %struct.z_stream_s, ptr %92, i32 0, i32 7
  %93 = load ptr, ptr %state97, align 8
  %sub98 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 1
  %need99 = getelementptr inbounds %struct.anon, ptr %sub98, i32 0, i32 1
  %94 = load i64, ptr %need99, align 8
  %add100 = add i64 %94, %shl96
  store i64 %add100, ptr %need99, align 8
  %95 = load ptr, ptr %z.addr, align 8
  %state101 = getelementptr inbounds %struct.z_stream_s, ptr %95, i32 0, i32 7
  %96 = load ptr, ptr %state101, align 8
  %mode102 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 0
  store i32 4, ptr %mode102, align 8
  br label %sw.bb103

sw.bb103:                                         ; preds = %while.body, %if.end88
  %97 = load ptr, ptr %z.addr, align 8
  %avail_in104 = getelementptr inbounds %struct.z_stream_s, ptr %97, i32 0, i32 1
  %98 = load i32, ptr %avail_in104, align 8
  %cmp105 = icmp eq i32 %98, 0
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %sw.bb103
  %99 = load i32, ptr %r, align 4
  store i32 %99, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %sw.bb103
  %100 = load i32, ptr %f.addr, align 4
  store i32 %100, ptr %r, align 4
  %101 = load ptr, ptr %z.addr, align 8
  %avail_in109 = getelementptr inbounds %struct.z_stream_s, ptr %101, i32 0, i32 1
  %102 = load i32, ptr %avail_in109, align 8
  %dec110 = add i32 %102, -1
  store i32 %dec110, ptr %avail_in109, align 8
  %103 = load ptr, ptr %z.addr, align 8
  %total_in111 = getelementptr inbounds %struct.z_stream_s, ptr %103, i32 0, i32 2
  %104 = load i64, ptr %total_in111, align 8
  %inc112 = add i64 %104, 1
  store i64 %inc112, ptr %total_in111, align 8
  %105 = load ptr, ptr %z.addr, align 8
  %next_in113 = getelementptr inbounds %struct.z_stream_s, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %next_in113, align 8
  %incdec.ptr114 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %incdec.ptr114, ptr %next_in113, align 8
  %107 = load i8, ptr %106, align 1
  %conv115 = zext i8 %107 to i64
  %shl116 = shl i64 %conv115, 8
  %108 = load ptr, ptr %z.addr, align 8
  %state117 = getelementptr inbounds %struct.z_stream_s, ptr %108, i32 0, i32 7
  %109 = load ptr, ptr %state117, align 8
  %sub118 = getelementptr inbounds %struct.internal_state, ptr %109, i32 0, i32 1
  %need119 = getelementptr inbounds %struct.anon, ptr %sub118, i32 0, i32 1
  %110 = load i64, ptr %need119, align 8
  %add120 = add i64 %110, %shl116
  store i64 %add120, ptr %need119, align 8
  %111 = load ptr, ptr %z.addr, align 8
  %state121 = getelementptr inbounds %struct.z_stream_s, ptr %111, i32 0, i32 7
  %112 = load ptr, ptr %state121, align 8
  %mode122 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 0
  store i32 5, ptr %mode122, align 8
  br label %sw.bb123

sw.bb123:                                         ; preds = %while.body, %if.end108
  %113 = load ptr, ptr %z.addr, align 8
  %avail_in124 = getelementptr inbounds %struct.z_stream_s, ptr %113, i32 0, i32 1
  %114 = load i32, ptr %avail_in124, align 8
  %cmp125 = icmp eq i32 %114, 0
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %sw.bb123
  %115 = load i32, ptr %r, align 4
  store i32 %115, ptr %retval, align 4
  br label %return

if.end128:                                        ; preds = %sw.bb123
  %116 = load i32, ptr %f.addr, align 4
  store i32 %116, ptr %r, align 4
  %117 = load ptr, ptr %z.addr, align 8
  %avail_in129 = getelementptr inbounds %struct.z_stream_s, ptr %117, i32 0, i32 1
  %118 = load i32, ptr %avail_in129, align 8
  %dec130 = add i32 %118, -1
  store i32 %dec130, ptr %avail_in129, align 8
  %119 = load ptr, ptr %z.addr, align 8
  %total_in131 = getelementptr inbounds %struct.z_stream_s, ptr %119, i32 0, i32 2
  %120 = load i64, ptr %total_in131, align 8
  %inc132 = add i64 %120, 1
  store i64 %inc132, ptr %total_in131, align 8
  %121 = load ptr, ptr %z.addr, align 8
  %next_in133 = getelementptr inbounds %struct.z_stream_s, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %next_in133, align 8
  %incdec.ptr134 = getelementptr inbounds i8, ptr %122, i32 1
  store ptr %incdec.ptr134, ptr %next_in133, align 8
  %123 = load i8, ptr %122, align 1
  %conv135 = zext i8 %123 to i64
  %124 = load ptr, ptr %z.addr, align 8
  %state136 = getelementptr inbounds %struct.z_stream_s, ptr %124, i32 0, i32 7
  %125 = load ptr, ptr %state136, align 8
  %sub137 = getelementptr inbounds %struct.internal_state, ptr %125, i32 0, i32 1
  %need138 = getelementptr inbounds %struct.anon, ptr %sub137, i32 0, i32 1
  %126 = load i64, ptr %need138, align 8
  %add139 = add i64 %126, %conv135
  store i64 %add139, ptr %need138, align 8
  %127 = load ptr, ptr %z.addr, align 8
  %state140 = getelementptr inbounds %struct.z_stream_s, ptr %127, i32 0, i32 7
  %128 = load ptr, ptr %state140, align 8
  %sub141 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 1
  %need142 = getelementptr inbounds %struct.anon, ptr %sub141, i32 0, i32 1
  %129 = load i64, ptr %need142, align 8
  %130 = load ptr, ptr %z.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %130, i32 0, i32 12
  store i64 %129, ptr %adler, align 8
  %131 = load ptr, ptr %z.addr, align 8
  %state143 = getelementptr inbounds %struct.z_stream_s, ptr %131, i32 0, i32 7
  %132 = load ptr, ptr %state143, align 8
  %mode144 = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 0
  store i32 6, ptr %mode144, align 8
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb145:                                         ; preds = %while.body
  %133 = load ptr, ptr %z.addr, align 8
  %state146 = getelementptr inbounds %struct.z_stream_s, ptr %133, i32 0, i32 7
  %134 = load ptr, ptr %state146, align 8
  %mode147 = getelementptr inbounds %struct.internal_state, ptr %134, i32 0, i32 0
  store i32 13, ptr %mode147, align 8
  %135 = load ptr, ptr %z.addr, align 8
  %msg148 = getelementptr inbounds %struct.z_stream_s, ptr %135, i32 0, i32 6
  store ptr @.str.4, ptr %msg148, align 8
  %136 = load ptr, ptr %z.addr, align 8
  %state149 = getelementptr inbounds %struct.z_stream_s, ptr %136, i32 0, i32 7
  %137 = load ptr, ptr %state149, align 8
  %sub150 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 1
  store i32 0, ptr %sub150, align 8
  store i32 -2, ptr %retval, align 4
  br label %return

sw.bb151:                                         ; preds = %while.body
  %138 = load ptr, ptr %z.addr, align 8
  %state152 = getelementptr inbounds %struct.z_stream_s, ptr %138, i32 0, i32 7
  %139 = load ptr, ptr %state152, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %139, i32 0, i32 4
  %140 = load ptr, ptr %blocks, align 8
  %141 = load ptr, ptr %z.addr, align 8
  %142 = load i32, ptr %r, align 4
  %call = call i32 @inflate_blocks(ptr noundef %140, ptr noundef %141, i32 noundef %142)
  store i32 %call, ptr %r, align 4
  %143 = load i32, ptr %r, align 4
  %cmp153 = icmp eq i32 %143, -3
  br i1 %cmp153, label %if.then155, label %if.end160

if.then155:                                       ; preds = %sw.bb151
  %144 = load ptr, ptr %z.addr, align 8
  %state156 = getelementptr inbounds %struct.z_stream_s, ptr %144, i32 0, i32 7
  %145 = load ptr, ptr %state156, align 8
  %mode157 = getelementptr inbounds %struct.internal_state, ptr %145, i32 0, i32 0
  store i32 13, ptr %mode157, align 8
  %146 = load ptr, ptr %z.addr, align 8
  %state158 = getelementptr inbounds %struct.z_stream_s, ptr %146, i32 0, i32 7
  %147 = load ptr, ptr %state158, align 8
  %sub159 = getelementptr inbounds %struct.internal_state, ptr %147, i32 0, i32 1
  store i32 0, ptr %sub159, align 8
  br label %sw.epilog

if.end160:                                        ; preds = %sw.bb151
  %148 = load i32, ptr %r, align 4
  %cmp161 = icmp eq i32 %148, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end160
  %149 = load i32, ptr %f.addr, align 4
  store i32 %149, ptr %r, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %if.end160
  %150 = load i32, ptr %r, align 4
  %cmp165 = icmp ne i32 %150, 1
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.end164
  %151 = load i32, ptr %r, align 4
  store i32 %151, ptr %retval, align 4
  br label %return

if.end168:                                        ; preds = %if.end164
  %152 = load i32, ptr %f.addr, align 4
  store i32 %152, ptr %r, align 4
  %153 = load ptr, ptr %z.addr, align 8
  %state169 = getelementptr inbounds %struct.z_stream_s, ptr %153, i32 0, i32 7
  %154 = load ptr, ptr %state169, align 8
  %blocks170 = getelementptr inbounds %struct.internal_state, ptr %154, i32 0, i32 4
  %155 = load ptr, ptr %blocks170, align 8
  %156 = load ptr, ptr %z.addr, align 8
  %157 = load ptr, ptr %z.addr, align 8
  %state171 = getelementptr inbounds %struct.z_stream_s, ptr %157, i32 0, i32 7
  %158 = load ptr, ptr %state171, align 8
  %sub172 = getelementptr inbounds %struct.internal_state, ptr %158, i32 0, i32 1
  %was = getelementptr inbounds %struct.anon, ptr %sub172, i32 0, i32 0
  call void @inflate_blocks_reset(ptr noundef %155, ptr noundef %156, ptr noundef %was)
  %159 = load ptr, ptr %z.addr, align 8
  %state173 = getelementptr inbounds %struct.z_stream_s, ptr %159, i32 0, i32 7
  %160 = load ptr, ptr %state173, align 8
  %nowrap = getelementptr inbounds %struct.internal_state, ptr %160, i32 0, i32 2
  %161 = load i32, ptr %nowrap, align 8
  %tobool174 = icmp ne i32 %161, 0
  br i1 %tobool174, label %if.then175, label %if.end178

if.then175:                                       ; preds = %if.end168
  %162 = load ptr, ptr %z.addr, align 8
  %state176 = getelementptr inbounds %struct.z_stream_s, ptr %162, i32 0, i32 7
  %163 = load ptr, ptr %state176, align 8
  %mode177 = getelementptr inbounds %struct.internal_state, ptr %163, i32 0, i32 0
  store i32 12, ptr %mode177, align 8
  br label %sw.epilog

if.end178:                                        ; preds = %if.end168
  %164 = load ptr, ptr %z.addr, align 8
  %state179 = getelementptr inbounds %struct.z_stream_s, ptr %164, i32 0, i32 7
  %165 = load ptr, ptr %state179, align 8
  %mode180 = getelementptr inbounds %struct.internal_state, ptr %165, i32 0, i32 0
  store i32 8, ptr %mode180, align 8
  br label %sw.bb181

sw.bb181:                                         ; preds = %while.body, %if.end178
  %166 = load ptr, ptr %z.addr, align 8
  %avail_in182 = getelementptr inbounds %struct.z_stream_s, ptr %166, i32 0, i32 1
  %167 = load i32, ptr %avail_in182, align 8
  %cmp183 = icmp eq i32 %167, 0
  br i1 %cmp183, label %if.then185, label %if.end186

if.then185:                                       ; preds = %sw.bb181
  %168 = load i32, ptr %r, align 4
  store i32 %168, ptr %retval, align 4
  br label %return

if.end186:                                        ; preds = %sw.bb181
  %169 = load i32, ptr %f.addr, align 4
  store i32 %169, ptr %r, align 4
  %170 = load ptr, ptr %z.addr, align 8
  %avail_in187 = getelementptr inbounds %struct.z_stream_s, ptr %170, i32 0, i32 1
  %171 = load i32, ptr %avail_in187, align 8
  %dec188 = add i32 %171, -1
  store i32 %dec188, ptr %avail_in187, align 8
  %172 = load ptr, ptr %z.addr, align 8
  %total_in189 = getelementptr inbounds %struct.z_stream_s, ptr %172, i32 0, i32 2
  %173 = load i64, ptr %total_in189, align 8
  %inc190 = add i64 %173, 1
  store i64 %inc190, ptr %total_in189, align 8
  %174 = load ptr, ptr %z.addr, align 8
  %next_in191 = getelementptr inbounds %struct.z_stream_s, ptr %174, i32 0, i32 0
  %175 = load ptr, ptr %next_in191, align 8
  %incdec.ptr192 = getelementptr inbounds i8, ptr %175, i32 1
  store ptr %incdec.ptr192, ptr %next_in191, align 8
  %176 = load i8, ptr %175, align 1
  %conv193 = zext i8 %176 to i64
  %shl194 = shl i64 %conv193, 24
  %177 = load ptr, ptr %z.addr, align 8
  %state195 = getelementptr inbounds %struct.z_stream_s, ptr %177, i32 0, i32 7
  %178 = load ptr, ptr %state195, align 8
  %sub196 = getelementptr inbounds %struct.internal_state, ptr %178, i32 0, i32 1
  %need197 = getelementptr inbounds %struct.anon, ptr %sub196, i32 0, i32 1
  store i64 %shl194, ptr %need197, align 8
  %179 = load ptr, ptr %z.addr, align 8
  %state198 = getelementptr inbounds %struct.z_stream_s, ptr %179, i32 0, i32 7
  %180 = load ptr, ptr %state198, align 8
  %mode199 = getelementptr inbounds %struct.internal_state, ptr %180, i32 0, i32 0
  store i32 9, ptr %mode199, align 8
  br label %sw.bb200

sw.bb200:                                         ; preds = %while.body, %if.end186
  %181 = load ptr, ptr %z.addr, align 8
  %avail_in201 = getelementptr inbounds %struct.z_stream_s, ptr %181, i32 0, i32 1
  %182 = load i32, ptr %avail_in201, align 8
  %cmp202 = icmp eq i32 %182, 0
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %sw.bb200
  %183 = load i32, ptr %r, align 4
  store i32 %183, ptr %retval, align 4
  br label %return

if.end205:                                        ; preds = %sw.bb200
  %184 = load i32, ptr %f.addr, align 4
  store i32 %184, ptr %r, align 4
  %185 = load ptr, ptr %z.addr, align 8
  %avail_in206 = getelementptr inbounds %struct.z_stream_s, ptr %185, i32 0, i32 1
  %186 = load i32, ptr %avail_in206, align 8
  %dec207 = add i32 %186, -1
  store i32 %dec207, ptr %avail_in206, align 8
  %187 = load ptr, ptr %z.addr, align 8
  %total_in208 = getelementptr inbounds %struct.z_stream_s, ptr %187, i32 0, i32 2
  %188 = load i64, ptr %total_in208, align 8
  %inc209 = add i64 %188, 1
  store i64 %inc209, ptr %total_in208, align 8
  %189 = load ptr, ptr %z.addr, align 8
  %next_in210 = getelementptr inbounds %struct.z_stream_s, ptr %189, i32 0, i32 0
  %190 = load ptr, ptr %next_in210, align 8
  %incdec.ptr211 = getelementptr inbounds i8, ptr %190, i32 1
  store ptr %incdec.ptr211, ptr %next_in210, align 8
  %191 = load i8, ptr %190, align 1
  %conv212 = zext i8 %191 to i64
  %shl213 = shl i64 %conv212, 16
  %192 = load ptr, ptr %z.addr, align 8
  %state214 = getelementptr inbounds %struct.z_stream_s, ptr %192, i32 0, i32 7
  %193 = load ptr, ptr %state214, align 8
  %sub215 = getelementptr inbounds %struct.internal_state, ptr %193, i32 0, i32 1
  %need216 = getelementptr inbounds %struct.anon, ptr %sub215, i32 0, i32 1
  %194 = load i64, ptr %need216, align 8
  %add217 = add i64 %194, %shl213
  store i64 %add217, ptr %need216, align 8
  %195 = load ptr, ptr %z.addr, align 8
  %state218 = getelementptr inbounds %struct.z_stream_s, ptr %195, i32 0, i32 7
  %196 = load ptr, ptr %state218, align 8
  %mode219 = getelementptr inbounds %struct.internal_state, ptr %196, i32 0, i32 0
  store i32 10, ptr %mode219, align 8
  br label %sw.bb220

sw.bb220:                                         ; preds = %while.body, %if.end205
  %197 = load ptr, ptr %z.addr, align 8
  %avail_in221 = getelementptr inbounds %struct.z_stream_s, ptr %197, i32 0, i32 1
  %198 = load i32, ptr %avail_in221, align 8
  %cmp222 = icmp eq i32 %198, 0
  br i1 %cmp222, label %if.then224, label %if.end225

if.then224:                                       ; preds = %sw.bb220
  %199 = load i32, ptr %r, align 4
  store i32 %199, ptr %retval, align 4
  br label %return

if.end225:                                        ; preds = %sw.bb220
  %200 = load i32, ptr %f.addr, align 4
  store i32 %200, ptr %r, align 4
  %201 = load ptr, ptr %z.addr, align 8
  %avail_in226 = getelementptr inbounds %struct.z_stream_s, ptr %201, i32 0, i32 1
  %202 = load i32, ptr %avail_in226, align 8
  %dec227 = add i32 %202, -1
  store i32 %dec227, ptr %avail_in226, align 8
  %203 = load ptr, ptr %z.addr, align 8
  %total_in228 = getelementptr inbounds %struct.z_stream_s, ptr %203, i32 0, i32 2
  %204 = load i64, ptr %total_in228, align 8
  %inc229 = add i64 %204, 1
  store i64 %inc229, ptr %total_in228, align 8
  %205 = load ptr, ptr %z.addr, align 8
  %next_in230 = getelementptr inbounds %struct.z_stream_s, ptr %205, i32 0, i32 0
  %206 = load ptr, ptr %next_in230, align 8
  %incdec.ptr231 = getelementptr inbounds i8, ptr %206, i32 1
  store ptr %incdec.ptr231, ptr %next_in230, align 8
  %207 = load i8, ptr %206, align 1
  %conv232 = zext i8 %207 to i64
  %shl233 = shl i64 %conv232, 8
  %208 = load ptr, ptr %z.addr, align 8
  %state234 = getelementptr inbounds %struct.z_stream_s, ptr %208, i32 0, i32 7
  %209 = load ptr, ptr %state234, align 8
  %sub235 = getelementptr inbounds %struct.internal_state, ptr %209, i32 0, i32 1
  %need236 = getelementptr inbounds %struct.anon, ptr %sub235, i32 0, i32 1
  %210 = load i64, ptr %need236, align 8
  %add237 = add i64 %210, %shl233
  store i64 %add237, ptr %need236, align 8
  %211 = load ptr, ptr %z.addr, align 8
  %state238 = getelementptr inbounds %struct.z_stream_s, ptr %211, i32 0, i32 7
  %212 = load ptr, ptr %state238, align 8
  %mode239 = getelementptr inbounds %struct.internal_state, ptr %212, i32 0, i32 0
  store i32 11, ptr %mode239, align 8
  br label %sw.bb240

sw.bb240:                                         ; preds = %while.body, %if.end225
  %213 = load ptr, ptr %z.addr, align 8
  %avail_in241 = getelementptr inbounds %struct.z_stream_s, ptr %213, i32 0, i32 1
  %214 = load i32, ptr %avail_in241, align 8
  %cmp242 = icmp eq i32 %214, 0
  br i1 %cmp242, label %if.then244, label %if.end245

if.then244:                                       ; preds = %sw.bb240
  %215 = load i32, ptr %r, align 4
  store i32 %215, ptr %retval, align 4
  br label %return

if.end245:                                        ; preds = %sw.bb240
  %216 = load i32, ptr %f.addr, align 4
  store i32 %216, ptr %r, align 4
  %217 = load ptr, ptr %z.addr, align 8
  %avail_in246 = getelementptr inbounds %struct.z_stream_s, ptr %217, i32 0, i32 1
  %218 = load i32, ptr %avail_in246, align 8
  %dec247 = add i32 %218, -1
  store i32 %dec247, ptr %avail_in246, align 8
  %219 = load ptr, ptr %z.addr, align 8
  %total_in248 = getelementptr inbounds %struct.z_stream_s, ptr %219, i32 0, i32 2
  %220 = load i64, ptr %total_in248, align 8
  %inc249 = add i64 %220, 1
  store i64 %inc249, ptr %total_in248, align 8
  %221 = load ptr, ptr %z.addr, align 8
  %next_in250 = getelementptr inbounds %struct.z_stream_s, ptr %221, i32 0, i32 0
  %222 = load ptr, ptr %next_in250, align 8
  %incdec.ptr251 = getelementptr inbounds i8, ptr %222, i32 1
  store ptr %incdec.ptr251, ptr %next_in250, align 8
  %223 = load i8, ptr %222, align 1
  %conv252 = zext i8 %223 to i64
  %224 = load ptr, ptr %z.addr, align 8
  %state253 = getelementptr inbounds %struct.z_stream_s, ptr %224, i32 0, i32 7
  %225 = load ptr, ptr %state253, align 8
  %sub254 = getelementptr inbounds %struct.internal_state, ptr %225, i32 0, i32 1
  %need255 = getelementptr inbounds %struct.anon, ptr %sub254, i32 0, i32 1
  %226 = load i64, ptr %need255, align 8
  %add256 = add i64 %226, %conv252
  store i64 %add256, ptr %need255, align 8
  %227 = load ptr, ptr %z.addr, align 8
  %state257 = getelementptr inbounds %struct.z_stream_s, ptr %227, i32 0, i32 7
  %228 = load ptr, ptr %state257, align 8
  %sub258 = getelementptr inbounds %struct.internal_state, ptr %228, i32 0, i32 1
  %was259 = getelementptr inbounds %struct.anon, ptr %sub258, i32 0, i32 0
  %229 = load i64, ptr %was259, align 8
  %230 = load ptr, ptr %z.addr, align 8
  %state260 = getelementptr inbounds %struct.z_stream_s, ptr %230, i32 0, i32 7
  %231 = load ptr, ptr %state260, align 8
  %sub261 = getelementptr inbounds %struct.internal_state, ptr %231, i32 0, i32 1
  %need262 = getelementptr inbounds %struct.anon, ptr %sub261, i32 0, i32 1
  %232 = load i64, ptr %need262, align 8
  %cmp263 = icmp ne i64 %229, %232
  br i1 %cmp263, label %if.then265, label %if.end271

if.then265:                                       ; preds = %if.end245
  %233 = load ptr, ptr %z.addr, align 8
  %state266 = getelementptr inbounds %struct.z_stream_s, ptr %233, i32 0, i32 7
  %234 = load ptr, ptr %state266, align 8
  %mode267 = getelementptr inbounds %struct.internal_state, ptr %234, i32 0, i32 0
  store i32 13, ptr %mode267, align 8
  %235 = load ptr, ptr %z.addr, align 8
  %msg268 = getelementptr inbounds %struct.z_stream_s, ptr %235, i32 0, i32 6
  store ptr @.str.5, ptr %msg268, align 8
  %236 = load ptr, ptr %z.addr, align 8
  %state269 = getelementptr inbounds %struct.z_stream_s, ptr %236, i32 0, i32 7
  %237 = load ptr, ptr %state269, align 8
  %sub270 = getelementptr inbounds %struct.internal_state, ptr %237, i32 0, i32 1
  store i32 5, ptr %sub270, align 8
  br label %sw.epilog

if.end271:                                        ; preds = %if.end245
  %238 = load ptr, ptr %z.addr, align 8
  %state272 = getelementptr inbounds %struct.z_stream_s, ptr %238, i32 0, i32 7
  %239 = load ptr, ptr %state272, align 8
  %mode273 = getelementptr inbounds %struct.internal_state, ptr %239, i32 0, i32 0
  store i32 12, ptr %mode273, align 8
  br label %sw.bb274

sw.bb274:                                         ; preds = %while.body, %if.end271
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
  %240 = load i32, ptr %retval, align 4
  ret i32 %240
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
  %0 = load i32, ptr %dictLength.addr, align 4
  store i32 %0, ptr %length, align 4
  %1 = load ptr, ptr %z.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %z.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %state3, align 8
  %mode = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %mode, align 8
  %cmp4 = icmp ne i32 %6, 6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load ptr, ptr %dictionary.addr, align 8
  %8 = load i32, ptr %dictLength.addr, align 4
  %call = call i64 @adler32(i64 noundef 1, ptr noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %z.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 12
  %10 = load i64, ptr %adler, align 8
  %cmp5 = icmp ne i64 %call, %10
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -3, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %z.addr, align 8
  %adler8 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 12
  store i64 1, ptr %adler8, align 8
  %12 = load i32, ptr %length, align 4
  %13 = load ptr, ptr %z.addr, align 8
  %state9 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %state9, align 8
  %wbits = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %wbits, align 4
  %shl = shl i32 1, %15
  %cmp10 = icmp uge i32 %12, %shl
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end7
  %16 = load ptr, ptr %z.addr, align 8
  %state12 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %state12, align 8
  %wbits13 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %wbits13, align 4
  %shl14 = shl i32 1, %18
  %sub = sub nsw i32 %shl14, 1
  store i32 %sub, ptr %length, align 4
  %19 = load i32, ptr %dictLength.addr, align 4
  %20 = load i32, ptr %length, align 4
  %sub15 = sub i32 %19, %20
  %21 = load ptr, ptr %dictionary.addr, align 8
  %idx.ext = zext i32 %sub15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %idx.ext
  store ptr %add.ptr, ptr %dictionary.addr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end7
  %22 = load ptr, ptr %z.addr, align 8
  %state17 = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %state17, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %blocks, align 8
  %25 = load ptr, ptr %dictionary.addr, align 8
  %26 = load i32, ptr %length, align 4
  call void @inflate_set_dictionary(ptr noundef %24, ptr noundef %25, i32 noundef %26)
  %27 = load ptr, ptr %z.addr, align 8
  %state18 = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %state18, align 8
  %mode19 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 0
  store i32 7, ptr %mode19, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then6, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
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
  %r = alloca i64, align 8
  %w = alloca i64, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %z.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state2, align 8
  %mode = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %mode, align 8
  %cmp3 = icmp ne i32 %5, 13
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %z.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %state5, align 8
  %mode6 = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 0
  store i32 13, ptr %mode6, align 8
  %8 = load ptr, ptr %z.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %state7, align 8
  %sub = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 1
  store i32 0, ptr %sub, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %10 = load ptr, ptr %z.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %avail_in, align 8
  store i32 %11, ptr %n, align 4
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end8
  %12 = load ptr, ptr %z.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %next_in, align 8
  store ptr %13, ptr %p, align 8
  %14 = load ptr, ptr %z.addr, align 8
  %state12 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %state12, align 8
  %sub13 = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %sub13, align 8
  store i32 %16, ptr %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.end11
  %17 = load i32, ptr %n, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i32, ptr %m, align 4
  %cmp14 = icmp ult i32 %18, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv = zext i8 %21 to i32
  %22 = load i32, ptr %m, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr @inflateSync.mark, i64 0, i64 %idxprom
  %23 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %23 to i32
  %cmp16 = icmp eq i32 %conv, %conv15
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %while.body
  %24 = load i32, ptr %m, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %m, align 4
  br label %if.end24

if.else:                                          ; preds = %while.body
  %25 = load ptr, ptr %p, align 8
  %26 = load i8, ptr %25, align 1
  %tobool19 = icmp ne i8 %26, 0
  br i1 %tobool19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else
  store i32 0, ptr %m, align 4
  br label %if.end23

if.else21:                                        ; preds = %if.else
  %27 = load i32, ptr %m, align 4
  %sub22 = sub i32 4, %27
  store i32 %sub22, ptr %m, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then20
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then18
  %28 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %29 = load i32, ptr %n, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %n, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %30 = load ptr, ptr %p, align 8
  %31 = load ptr, ptr %z.addr, align 8
  %next_in25 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %next_in25, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %30 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %33 = load ptr, ptr %z.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %total_in, align 8
  %add = add i64 %34, %sub.ptr.sub
  store i64 %add, ptr %total_in, align 8
  %35 = load ptr, ptr %p, align 8
  %36 = load ptr, ptr %z.addr, align 8
  %next_in26 = getelementptr inbounds %struct.z_stream_s, ptr %36, i32 0, i32 0
  store ptr %35, ptr %next_in26, align 8
  %37 = load i32, ptr %n, align 4
  %38 = load ptr, ptr %z.addr, align 8
  %avail_in27 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 1
  store i32 %37, ptr %avail_in27, align 8
  %39 = load i32, ptr %m, align 4
  %40 = load ptr, ptr %z.addr, align 8
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 7
  %41 = load ptr, ptr %state28, align 8
  %sub29 = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 1
  store i32 %39, ptr %sub29, align 8
  %42 = load i32, ptr %m, align 4
  %cmp30 = icmp ne i32 %42, 4
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.end
  store i32 -3, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.end
  %43 = load ptr, ptr %z.addr, align 8
  %total_in34 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 2
  %44 = load i64, ptr %total_in34, align 8
  store i64 %44, ptr %r, align 8
  %45 = load ptr, ptr %z.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %45, i32 0, i32 5
  %46 = load i64, ptr %total_out, align 8
  store i64 %46, ptr %w, align 8
  %47 = load ptr, ptr %z.addr, align 8
  %call = call i32 @inflateReset(ptr noundef %47)
  %48 = load i64, ptr %r, align 8
  %49 = load ptr, ptr %z.addr, align 8
  %total_in35 = getelementptr inbounds %struct.z_stream_s, ptr %49, i32 0, i32 2
  store i64 %48, ptr %total_in35, align 8
  %50 = load i64, ptr %w, align 8
  %51 = load ptr, ptr %z.addr, align 8
  %total_out36 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 5
  store i64 %50, ptr %total_out36, align 8
  %52 = load ptr, ptr %z.addr, align 8
  %state37 = getelementptr inbounds %struct.z_stream_s, ptr %52, i32 0, i32 7
  %53 = load ptr, ptr %state37, align 8
  %mode38 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 0
  store i32 7, ptr %mode38, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then32, %if.then10, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSyncPoint(ptr noundef %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %z.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state3, align 8
  %blocks = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %blocks, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %z.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %state5, align 8
  %blocks6 = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %blocks6, align 8
  %call = call i32 @inflate_blocks_sync_point(ptr noundef %8)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @inflate_blocks_sync_point(ptr noundef) #1

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
