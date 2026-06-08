; ModuleID = './source_snapshot/public_repos/zlib/inflate.c'
source_filename = "./source_snapshot/public_repos/zlib/inflate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@inflate.order = internal constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 2
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header crc mismatch\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateResetKeep(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %state, align 8
  %total = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 8
  store i64 0, ptr %total, align 8
  %4 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 5
  store i64 0, ptr %total_out, align 8
  %5 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 2
  store i64 0, ptr %total_in, align 8
  %6 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 11
  store i32 0, ptr %data_type, align 8
  %8 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %wrap, align 8
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %state, align 8
  %wrap4 = getelementptr inbounds %struct.inflate_state, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %wrap4, align 8
  %and = and i32 %11, 1
  %conv = sext i32 %and to i64
  %12 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 12
  store i64 %conv, ptr %adler, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %13 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 1
  store i32 16180, ptr %mode, align 8
  %14 = load ptr, ptr %state, align 8
  %last = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 2
  store i32 0, ptr %last, align 4
  %15 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 4
  store i32 0, ptr %havedict, align 4
  %16 = load ptr, ptr %state, align 8
  %flags = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 5
  store i32 -1, ptr %flags, align 8
  %17 = load ptr, ptr %state, align 8
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 6
  store i32 32768, ptr %dmax, align 4
  %18 = load ptr, ptr %state, align 8
  %head = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 9
  store ptr null, ptr %head, align 8
  %19 = load ptr, ptr %state, align 8
  %hold = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 15
  store i64 0, ptr %hold, align 8
  %20 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 16
  store i32 0, ptr %bits, align 8
  %21 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %21, i32 0, i32 31
  %arraydecay = getelementptr inbounds [1444 x %struct.code], ptr %codes, i64 0, i64 0
  %22 = load ptr, ptr %state, align 8
  %next = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 28
  store ptr %arraydecay, ptr %next, align 8
  %23 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 21
  store ptr %arraydecay, ptr %distcode, align 8
  %24 = load ptr, ptr %state, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 20
  store ptr %arraydecay, ptr %lencode, align 8
  %25 = load ptr, ptr %state, align 8
  %sane = getelementptr inbounds %struct.inflate_state, ptr %25, i32 0, i32 32
  store i32 1, ptr %sane, align 8
  %26 = load ptr, ptr %state, align 8
  %back = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 33
  store i32 -1, ptr %back, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @inflateStateCheck(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %zalloc, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %zfree, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %strm.addr, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %state4, align 8
  store ptr %6, ptr %state, align 8
  %7 = load ptr, ptr %state, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then14, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %8 = load ptr, ptr %state, align 8
  %strm7 = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %strm7, align 8
  %10 = load ptr, ptr %strm.addr, align 8
  %cmp8 = icmp ne ptr %9, %10
  br i1 %cmp8, label %if.then14, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %11 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %mode, align 8
  %cmp10 = icmp ult i32 %12, 16180
  br i1 %cmp10, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %13 = load ptr, ptr %state, align 8
  %mode12 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %mode12, align 8
  %cmp13 = icmp ugt i32 %14, 16211
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false6, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateReset(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 11
  store i32 0, ptr %wsize, align 4
  %4 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 12
  store i32 0, ptr %whave, align 8
  %5 = load ptr, ptr %state, align 8
  %wnext = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 13
  store i32 0, ptr %wnext, align 4
  %6 = load ptr, ptr %strm.addr, align 8
  %call2 = call i32 @inflateResetKeep(ptr noundef %6)
  store i32 %call2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateReset2(ptr noundef %strm, i32 noundef %windowBits) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %windowBits.addr = alloca i32, align 4
  %wrap = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %windowBits, ptr %windowBits.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load i32, ptr %windowBits.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %windowBits.addr, align 4
  %cmp3 = icmp slt i32 %4, -15
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 -2, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  store i32 0, ptr %wrap, align 4
  %5 = load i32, ptr %windowBits.addr, align 4
  %sub = sub nsw i32 0, %5
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %6 = load i32, ptr %windowBits.addr, align 4
  %shr = ashr i32 %6, 4
  %add = add nsw i32 %shr, 5
  store i32 %add, ptr %wrap, align 4
  %7 = load i32, ptr %windowBits.addr, align 4
  %cmp6 = icmp slt i32 %7, 48
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %8 = load i32, ptr %windowBits.addr, align 4
  %and = and i32 %8, 15
  store i32 %and, ptr %windowBits.addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end5
  %9 = load i32, ptr %windowBits.addr, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end9
  %10 = load i32, ptr %windowBits.addr, align 4
  %cmp11 = icmp slt i32 %10, 8
  br i1 %cmp11, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load i32, ptr %windowBits.addr, align 4
  %cmp12 = icmp sgt i32 %11, 15
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -2, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false, %if.end9
  %12 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %window, align 8
  %cmp15 = icmp ne ptr %13, null
  br i1 %cmp15, label %land.lhs.true16, label %if.end21

land.lhs.true16:                                  ; preds = %if.end14
  %14 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 10
  %15 = load i32, ptr %wbits, align 8
  %16 = load i32, ptr %windowBits.addr, align 4
  %cmp17 = icmp ne i32 %15, %16
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true16
  %17 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %zfree, align 8
  %19 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 10
  %20 = load ptr, ptr %opaque, align 8
  %21 = load ptr, ptr %state, align 8
  %window19 = getelementptr inbounds %struct.inflate_state, ptr %21, i32 0, i32 14
  %22 = load ptr, ptr %window19, align 8
  call void %18(ptr noundef %20, ptr noundef %22)
  %23 = load ptr, ptr %state, align 8
  %window20 = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 14
  store ptr null, ptr %window20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true16, %if.end14
  %24 = load i32, ptr %wrap, align 4
  %25 = load ptr, ptr %state, align 8
  %wrap22 = getelementptr inbounds %struct.inflate_state, ptr %25, i32 0, i32 3
  store i32 %24, ptr %wrap22, align 8
  %26 = load i32, ptr %windowBits.addr, align 4
  %27 = load ptr, ptr %state, align 8
  %wbits23 = getelementptr inbounds %struct.inflate_state, ptr %27, i32 0, i32 10
  store i32 %26, ptr %wbits23, align 8
  %28 = load ptr, ptr %strm.addr, align 8
  %call24 = call i32 @inflateReset(ptr noundef %28)
  store i32 %call24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then13, %if.then4, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateInit2_(ptr noundef %strm, i32 noundef %windowBits, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %windowBits.addr = alloca i32, align 4
  %version.addr = alloca ptr, align 8
  %stream_size.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %windowBits, ptr %windowBits.addr, align 4
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
  %cmp5 = icmp ne i32 %4, 112
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %strm.addr, align 8
  %cmp7 = icmp eq ptr %5, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %6 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %zalloc, align 8
  %cmp11 = icmp eq ptr %8, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %9 = load ptr, ptr %strm.addr, align 8
  %zalloc14 = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 8
  store ptr @zcalloc, ptr %zalloc14, align 8
  %10 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %11 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %zfree, align 8
  %cmp16 = icmp eq ptr %12, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %13 = load ptr, ptr %strm.addr, align 8
  %zfree19 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 9
  store ptr @zcfree, ptr %zfree19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %14 = load ptr, ptr %strm.addr, align 8
  %zalloc21 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %zalloc21, align 8
  %16 = load ptr, ptr %strm.addr, align 8
  %opaque22 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %opaque22, align 8
  %call = call ptr %15(ptr noundef %17, i32 noundef 1, i32 noundef 7160)
  store ptr %call, ptr %state, align 8
  %18 = load ptr, ptr %state, align 8
  %cmp23 = icmp eq ptr %18, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  store i32 -4, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end20
  %19 = load ptr, ptr %state, align 8
  %20 = load ptr, ptr %state, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call27 = call ptr @__memset_chk(ptr noundef %19, i32 noundef 0, i64 noundef 7160, i64 noundef %21) #5
  %22 = load ptr, ptr %state, align 8
  %23 = load ptr, ptr %strm.addr, align 8
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 7
  store ptr %22, ptr %state28, align 8
  %24 = load ptr, ptr %strm.addr, align 8
  %25 = load ptr, ptr %state, align 8
  %strm29 = getelementptr inbounds %struct.inflate_state, ptr %25, i32 0, i32 0
  store ptr %24, ptr %strm29, align 8
  %26 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 14
  store ptr null, ptr %window, align 8
  %27 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %27, i32 0, i32 1
  store i32 16180, ptr %mode, align 8
  %28 = load ptr, ptr %strm.addr, align 8
  %29 = load i32, ptr %windowBits.addr, align 4
  %call30 = call i32 @inflateReset2(ptr noundef %28, i32 noundef %29)
  store i32 %call30, ptr %ret, align 4
  %30 = load i32, ptr %ret, align 4
  %cmp31 = icmp ne i32 %30, 0
  br i1 %cmp31, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end26
  %31 = load ptr, ptr %strm.addr, align 8
  %zfree34 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %zfree34, align 8
  %33 = load ptr, ptr %strm.addr, align 8
  %opaque35 = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 10
  %34 = load ptr, ptr %opaque35, align 8
  %35 = load ptr, ptr %state, align 8
  call void %32(ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %strm.addr, align 8
  %state36 = getelementptr inbounds %struct.z_stream_s, ptr %36, i32 0, i32 7
  store ptr null, ptr %state36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end26
  %37 = load i32, ptr %ret, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then25, %if.then9, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateInit_(ptr noundef %strm, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %stream_size.addr = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %version, ptr %version.addr, align 8
  store i32 %stream_size, ptr %stream_size.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %1 = load ptr, ptr %version.addr, align 8
  %2 = load i32, ptr %stream_size.addr, align 4
  %call = call i32 @inflateInit2_(ptr noundef %0, i32 noundef 15, ptr noundef %1, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflatePrime(ptr noundef %strm, i32 noundef %bits, i32 noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  store i32 %value, ptr %value.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %bits.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state3, align 8
  store ptr %3, ptr %state, align 8
  %4 = load i32, ptr %bits.addr, align 4
  %cmp4 = icmp slt i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  %5 = load ptr, ptr %state, align 8
  %hold = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 15
  store i64 0, ptr %hold, align 8
  %6 = load ptr, ptr %state, align 8
  %bits6 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 16
  store i32 0, ptr %bits6, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end2
  %7 = load i32, ptr %bits.addr, align 4
  %cmp8 = icmp sgt i32 %7, 16
  br i1 %cmp8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %8 = load ptr, ptr %state, align 8
  %bits9 = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 16
  %9 = load i32, ptr %bits9, align 8
  %10 = load i32, ptr %bits.addr, align 4
  %add = add i32 %9, %10
  %cmp10 = icmp ugt i32 %add, 32
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %if.end7
  store i32 -2, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %11 = load i32, ptr %bits.addr, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %12 = load i32, ptr %value.addr, align 4
  %conv = sext i32 %12 to i64
  %and = and i64 %conv, %sub
  %conv13 = trunc i64 %and to i32
  store i32 %conv13, ptr %value.addr, align 4
  %13 = load i32, ptr %value.addr, align 4
  %conv14 = sext i32 %13 to i64
  %14 = load ptr, ptr %state, align 8
  %bits15 = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 16
  %15 = load i32, ptr %bits15, align 8
  %sh_prom16 = zext i32 %15 to i64
  %shl17 = shl i64 %conv14, %sh_prom16
  %16 = load ptr, ptr %state, align 8
  %hold18 = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 15
  %17 = load i64, ptr %hold18, align 8
  %add19 = add i64 %17, %shl17
  store i64 %add19, ptr %hold18, align 8
  %18 = load i32, ptr %bits.addr, align 4
  %19 = load ptr, ptr %state, align 8
  %bits20 = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 16
  %20 = load i32, ptr %bits20, align 8
  %add21 = add i32 %20, %18
  store i32 %add21, ptr %bits20, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then5, %if.then1, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflate(ptr noundef %strm, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %next = alloca ptr, align 8
  %put = alloca ptr, align 8
  %have = alloca i32, align 4
  %left = alloca i32, align 4
  %hold = alloca i64, align 8
  %bits = alloca i32, align 4
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %copy = alloca i32, align 4
  %from = alloca ptr, align 8
  %here = alloca %struct.code, align 2
  %last = alloca %struct.code, align 2
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %hbuf = alloca [4 x i8], align 1
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %next_out, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next_in, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false1
  %5 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %avail_in, align 8
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false1
  %7 = load ptr, ptr %strm.addr, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %state4, align 8
  store ptr %8, ptr %state, align 8
  %9 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %mode, align 8
  %cmp5 = icmp eq i32 %10, 16191
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %state, align 8
  %mode7 = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 1
  store i32 16192, ptr %mode7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end8
  %12 = load ptr, ptr %strm.addr, align 8
  %next_out9 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %next_out9, align 8
  store ptr %13, ptr %put, align 8
  %14 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %avail_out, align 8
  store i32 %15, ptr %left, align 4
  %16 = load ptr, ptr %strm.addr, align 8
  %next_in10 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next_in10, align 8
  store ptr %17, ptr %next, align 8
  %18 = load ptr, ptr %strm.addr, align 8
  %avail_in11 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %avail_in11, align 8
  store i32 %19, ptr %have, align 4
  %20 = load ptr, ptr %state, align 8
  %hold12 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 15
  %21 = load i64, ptr %hold12, align 8
  store i64 %21, ptr %hold, align 8
  %22 = load ptr, ptr %state, align 8
  %bits13 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 16
  %23 = load i32, ptr %bits13, align 8
  store i32 %23, ptr %bits, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %24 = load i32, ptr %have, align 4
  store i32 %24, ptr %in, align 4
  %25 = load i32, ptr %left, align 4
  store i32 %25, ptr %out, align 4
  store i32 0, ptr %ret, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog1874, %do.end
  %26 = load ptr, ptr %state, align 8
  %mode14 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %mode14, align 8
  switch i32 %27, label %sw.default1873 [
    i32 16180, label %sw.bb
    i32 16181, label %sw.bb109
    i32 16182, label %sw.bb179
    i32 16183, label %sw.bb235
    i32 16184, label %sw.bb290
    i32 16185, label %sw.bb353
    i32 16186, label %sw.bb425
    i32 16187, label %sw.bb491
    i32 16188, label %sw.bb561
    i32 16189, label %sw.bb619
    i32 16190, label %sw.bb659
    i32 16191, label %sw.bb677
    i32 16192, label %sw.bb685
    i32 16193, label %sw.bb753
    i32 16194, label %sw.bb803
    i32 16195, label %sw.bb805
    i32 16196, label %sw.bb833
    i32 16197, label %sw.bb893
    i32 16198, label %sw.bb966
    i32 16199, label %sw.bb1261
    i32 16200, label %sw.bb1263
    i32 16201, label %sw.bb1437
    i32 16202, label %sw.bb1485
    i32 16203, label %sw.bb1609
    i32 16204, label %sw.bb1656
    i32 16205, label %sw.bb1724
    i32 16206, label %sw.bb1734
    i32 16207, label %sw.bb1823
    i32 16208, label %sw.bb1869
    i32 16209, label %sw.bb1870
    i32 16210, label %sw.bb1871
    i32 16211, label %sw.bb1872
  ]

sw.bb:                                            ; preds = %for.cond
  %28 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %wrap, align 8
  %cmp15 = icmp eq i32 %29, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %sw.bb
  %30 = load ptr, ptr %state, align 8
  %mode17 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 1
  store i32 16192, ptr %mode17, align 8
  br label %sw.epilog1874

if.end18:                                         ; preds = %sw.bb
  br label %do.body19

do.body19:                                        ; preds = %if.end18
  br label %while.cond

while.cond:                                       ; preds = %do.end26, %do.body19
  %31 = load i32, ptr %bits, align 4
  %cmp20 = icmp ult i32 %31, 16
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body21

do.body21:                                        ; preds = %while.body
  %32 = load i32, ptr %have, align 4
  %cmp22 = icmp eq i32 %32, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body21
  br label %inf_leave

if.end24:                                         ; preds = %do.body21
  %33 = load i32, ptr %have, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %have, align 4
  %34 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %next, align 8
  %35 = load i8, ptr %34, align 1
  %conv = zext i8 %35 to i64
  %36 = load i32, ptr %bits, align 4
  %sh_prom = zext i32 %36 to i64
  %shl = shl i64 %conv, %sh_prom
  %37 = load i64, ptr %hold, align 8
  %add = add i64 %37, %shl
  store i64 %add, ptr %hold, align 8
  %38 = load i32, ptr %bits, align 4
  %add25 = add i32 %38, 8
  store i32 %add25, ptr %bits, align 4
  br label %do.end26

do.end26:                                         ; preds = %if.end24
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %do.end27

do.end27:                                         ; preds = %while.end
  %39 = load ptr, ptr %state, align 8
  %wrap28 = getelementptr inbounds %struct.inflate_state, ptr %39, i32 0, i32 3
  %40 = load i32, ptr %wrap28, align 8
  %and = and i32 %40, 2
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %land.lhs.true30, label %if.end51

land.lhs.true30:                                  ; preds = %do.end27
  %41 = load i64, ptr %hold, align 8
  %cmp31 = icmp eq i64 %41, 35615
  br i1 %cmp31, label %if.then33, label %if.end51

if.then33:                                        ; preds = %land.lhs.true30
  %42 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %42, i32 0, i32 10
  %43 = load i32, ptr %wbits, align 8
  %cmp34 = icmp eq i32 %43, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then33
  %44 = load ptr, ptr %state, align 8
  %wbits37 = getelementptr inbounds %struct.inflate_state, ptr %44, i32 0, i32 10
  store i32 15, ptr %wbits37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then33
  %call39 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %45 = load ptr, ptr %state, align 8
  %check = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 7
  store i64 %call39, ptr %check, align 8
  br label %do.body40

do.body40:                                        ; preds = %if.end38
  %46 = load i64, ptr %hold, align 8
  %conv41 = trunc i64 %46 to i8
  %arrayidx = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv41, ptr %arrayidx, align 1
  %47 = load i64, ptr %hold, align 8
  %shr = lshr i64 %47, 8
  %conv42 = trunc i64 %shr to i8
  %arrayidx43 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv42, ptr %arrayidx43, align 1
  %48 = load ptr, ptr %state, align 8
  %check44 = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 7
  %49 = load i64, ptr %check44, align 8
  %arraydecay = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call45 = call i64 @crc32(i64 noundef %49, ptr noundef %arraydecay, i32 noundef 2)
  %50 = load ptr, ptr %state, align 8
  %check46 = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 7
  store i64 %call45, ptr %check46, align 8
  br label %do.end47

do.end47:                                         ; preds = %do.body40
  br label %do.body48

do.body48:                                        ; preds = %do.end47
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end49

do.end49:                                         ; preds = %do.body48
  %51 = load ptr, ptr %state, align 8
  %mode50 = getelementptr inbounds %struct.inflate_state, ptr %51, i32 0, i32 1
  store i32 16181, ptr %mode50, align 8
  br label %sw.epilog1874

if.end51:                                         ; preds = %land.lhs.true30, %do.end27
  %52 = load ptr, ptr %state, align 8
  %head = getelementptr inbounds %struct.inflate_state, ptr %52, i32 0, i32 9
  %53 = load ptr, ptr %head, align 8
  %cmp52 = icmp ne ptr %53, null
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end51
  %54 = load ptr, ptr %state, align 8
  %head55 = getelementptr inbounds %struct.inflate_state, ptr %54, i32 0, i32 9
  %55 = load ptr, ptr %head55, align 8
  %done = getelementptr inbounds %struct.gz_header_s, ptr %55, i32 0, i32 12
  store i32 -1, ptr %done, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51
  %56 = load ptr, ptr %state, align 8
  %wrap57 = getelementptr inbounds %struct.inflate_state, ptr %56, i32 0, i32 3
  %57 = load i32, ptr %wrap57, align 8
  %and58 = and i32 %57, 1
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %lor.lhs.false60, label %if.then68

lor.lhs.false60:                                  ; preds = %if.end56
  %58 = load i64, ptr %hold, align 8
  %conv61 = trunc i64 %58 to i32
  %and62 = and i32 %conv61, 255
  %shl63 = shl i32 %and62, 8
  %conv64 = zext i32 %shl63 to i64
  %59 = load i64, ptr %hold, align 8
  %shr65 = lshr i64 %59, 8
  %add66 = add i64 %conv64, %shr65
  %rem = urem i64 %add66, 31
  %tobool67 = icmp ne i64 %rem, 0
  br i1 %tobool67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %lor.lhs.false60, %if.end56
  %60 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 6
  store ptr @.str.1, ptr %msg, align 8
  %61 = load ptr, ptr %state, align 8
  %mode69 = getelementptr inbounds %struct.inflate_state, ptr %61, i32 0, i32 1
  store i32 16209, ptr %mode69, align 8
  br label %sw.epilog1874

if.end70:                                         ; preds = %lor.lhs.false60
  %62 = load i64, ptr %hold, align 8
  %conv71 = trunc i64 %62 to i32
  %and72 = and i32 %conv71, 15
  %cmp73 = icmp ne i32 %and72, 8
  br i1 %cmp73, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end70
  %63 = load ptr, ptr %strm.addr, align 8
  %msg76 = getelementptr inbounds %struct.z_stream_s, ptr %63, i32 0, i32 6
  store ptr @.str.2, ptr %msg76, align 8
  %64 = load ptr, ptr %state, align 8
  %mode77 = getelementptr inbounds %struct.inflate_state, ptr %64, i32 0, i32 1
  store i32 16209, ptr %mode77, align 8
  br label %sw.epilog1874

if.end78:                                         ; preds = %if.end70
  br label %do.body79

do.body79:                                        ; preds = %if.end78
  %65 = load i64, ptr %hold, align 8
  %shr80 = lshr i64 %65, 4
  store i64 %shr80, ptr %hold, align 8
  %66 = load i32, ptr %bits, align 4
  %sub = sub i32 %66, 4
  store i32 %sub, ptr %bits, align 4
  br label %do.end81

do.end81:                                         ; preds = %do.body79
  %67 = load i64, ptr %hold, align 8
  %conv82 = trunc i64 %67 to i32
  %and83 = and i32 %conv82, 15
  %add84 = add i32 %and83, 8
  store i32 %add84, ptr %len, align 4
  %68 = load ptr, ptr %state, align 8
  %wbits85 = getelementptr inbounds %struct.inflate_state, ptr %68, i32 0, i32 10
  %69 = load i32, ptr %wbits85, align 8
  %cmp86 = icmp eq i32 %69, 0
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %do.end81
  %70 = load i32, ptr %len, align 4
  %71 = load ptr, ptr %state, align 8
  %wbits89 = getelementptr inbounds %struct.inflate_state, ptr %71, i32 0, i32 10
  store i32 %70, ptr %wbits89, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %do.end81
  %72 = load i32, ptr %len, align 4
  %cmp91 = icmp ugt i32 %72, 15
  br i1 %cmp91, label %if.then97, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.end90
  %73 = load i32, ptr %len, align 4
  %74 = load ptr, ptr %state, align 8
  %wbits94 = getelementptr inbounds %struct.inflate_state, ptr %74, i32 0, i32 10
  %75 = load i32, ptr %wbits94, align 8
  %cmp95 = icmp ugt i32 %73, %75
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %lor.lhs.false93, %if.end90
  %76 = load ptr, ptr %strm.addr, align 8
  %msg98 = getelementptr inbounds %struct.z_stream_s, ptr %76, i32 0, i32 6
  store ptr @.str.3, ptr %msg98, align 8
  %77 = load ptr, ptr %state, align 8
  %mode99 = getelementptr inbounds %struct.inflate_state, ptr %77, i32 0, i32 1
  store i32 16209, ptr %mode99, align 8
  br label %sw.epilog1874

if.end100:                                        ; preds = %lor.lhs.false93
  %78 = load i32, ptr %len, align 4
  %shl101 = shl i32 1, %78
  %79 = load ptr, ptr %state, align 8
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %79, i32 0, i32 6
  store i32 %shl101, ptr %dmax, align 4
  %80 = load ptr, ptr %state, align 8
  %flags = getelementptr inbounds %struct.inflate_state, ptr %80, i32 0, i32 5
  store i32 0, ptr %flags, align 8
  %call102 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %81 = load ptr, ptr %state, align 8
  %check103 = getelementptr inbounds %struct.inflate_state, ptr %81, i32 0, i32 7
  store i64 %call102, ptr %check103, align 8
  %82 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %82, i32 0, i32 12
  store i64 %call102, ptr %adler, align 8
  %83 = load i64, ptr %hold, align 8
  %and104 = and i64 %83, 512
  %tobool105 = icmp ne i64 %and104, 0
  %84 = zext i1 %tobool105 to i64
  %cond = select i1 %tobool105, i32 16189, i32 16191
  %85 = load ptr, ptr %state, align 8
  %mode106 = getelementptr inbounds %struct.inflate_state, ptr %85, i32 0, i32 1
  store i32 %cond, ptr %mode106, align 8
  br label %do.body107

do.body107:                                       ; preds = %if.end100
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end108

do.end108:                                        ; preds = %do.body107
  br label %sw.epilog1874

sw.bb109:                                         ; preds = %for.cond
  br label %do.body110

do.body110:                                       ; preds = %sw.bb109
  br label %while.cond111

while.cond111:                                    ; preds = %do.end127, %do.body110
  %86 = load i32, ptr %bits, align 4
  %cmp112 = icmp ult i32 %86, 16
  br i1 %cmp112, label %while.body114, label %while.end128

while.body114:                                    ; preds = %while.cond111
  br label %do.body115

do.body115:                                       ; preds = %while.body114
  %87 = load i32, ptr %have, align 4
  %cmp116 = icmp eq i32 %87, 0
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %do.body115
  br label %inf_leave

if.end119:                                        ; preds = %do.body115
  %88 = load i32, ptr %have, align 4
  %dec120 = add i32 %88, -1
  store i32 %dec120, ptr %have, align 4
  %89 = load ptr, ptr %next, align 8
  %incdec.ptr121 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr121, ptr %next, align 8
  %90 = load i8, ptr %89, align 1
  %conv122 = zext i8 %90 to i64
  %91 = load i32, ptr %bits, align 4
  %sh_prom123 = zext i32 %91 to i64
  %shl124 = shl i64 %conv122, %sh_prom123
  %92 = load i64, ptr %hold, align 8
  %add125 = add i64 %92, %shl124
  store i64 %add125, ptr %hold, align 8
  %93 = load i32, ptr %bits, align 4
  %add126 = add i32 %93, 8
  store i32 %add126, ptr %bits, align 4
  br label %do.end127

do.end127:                                        ; preds = %if.end119
  br label %while.cond111, !llvm.loop !8

while.end128:                                     ; preds = %while.cond111
  br label %do.end129

do.end129:                                        ; preds = %while.end128
  %94 = load i64, ptr %hold, align 8
  %conv130 = trunc i64 %94 to i32
  %95 = load ptr, ptr %state, align 8
  %flags131 = getelementptr inbounds %struct.inflate_state, ptr %95, i32 0, i32 5
  store i32 %conv130, ptr %flags131, align 8
  %96 = load ptr, ptr %state, align 8
  %flags132 = getelementptr inbounds %struct.inflate_state, ptr %96, i32 0, i32 5
  %97 = load i32, ptr %flags132, align 8
  %and133 = and i32 %97, 255
  %cmp134 = icmp ne i32 %and133, 8
  br i1 %cmp134, label %if.then136, label %if.end139

if.then136:                                       ; preds = %do.end129
  %98 = load ptr, ptr %strm.addr, align 8
  %msg137 = getelementptr inbounds %struct.z_stream_s, ptr %98, i32 0, i32 6
  store ptr @.str.2, ptr %msg137, align 8
  %99 = load ptr, ptr %state, align 8
  %mode138 = getelementptr inbounds %struct.inflate_state, ptr %99, i32 0, i32 1
  store i32 16209, ptr %mode138, align 8
  br label %sw.epilog1874

if.end139:                                        ; preds = %do.end129
  %100 = load ptr, ptr %state, align 8
  %flags140 = getelementptr inbounds %struct.inflate_state, ptr %100, i32 0, i32 5
  %101 = load i32, ptr %flags140, align 8
  %and141 = and i32 %101, 57344
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then143, label %if.end146

if.then143:                                       ; preds = %if.end139
  %102 = load ptr, ptr %strm.addr, align 8
  %msg144 = getelementptr inbounds %struct.z_stream_s, ptr %102, i32 0, i32 6
  store ptr @.str.4, ptr %msg144, align 8
  %103 = load ptr, ptr %state, align 8
  %mode145 = getelementptr inbounds %struct.inflate_state, ptr %103, i32 0, i32 1
  store i32 16209, ptr %mode145, align 8
  br label %sw.epilog1874

if.end146:                                        ; preds = %if.end139
  %104 = load ptr, ptr %state, align 8
  %head147 = getelementptr inbounds %struct.inflate_state, ptr %104, i32 0, i32 9
  %105 = load ptr, ptr %head147, align 8
  %cmp148 = icmp ne ptr %105, null
  br i1 %cmp148, label %if.then150, label %if.end155

if.then150:                                       ; preds = %if.end146
  %106 = load i64, ptr %hold, align 8
  %shr151 = lshr i64 %106, 8
  %and152 = and i64 %shr151, 1
  %conv153 = trunc i64 %and152 to i32
  %107 = load ptr, ptr %state, align 8
  %head154 = getelementptr inbounds %struct.inflate_state, ptr %107, i32 0, i32 9
  %108 = load ptr, ptr %head154, align 8
  %text = getelementptr inbounds %struct.gz_header_s, ptr %108, i32 0, i32 0
  store i32 %conv153, ptr %text, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then150, %if.end146
  %109 = load ptr, ptr %state, align 8
  %flags156 = getelementptr inbounds %struct.inflate_state, ptr %109, i32 0, i32 5
  %110 = load i32, ptr %flags156, align 8
  %and157 = and i32 %110, 512
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %land.lhs.true159, label %if.end175

land.lhs.true159:                                 ; preds = %if.end155
  %111 = load ptr, ptr %state, align 8
  %wrap160 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 3
  %112 = load i32, ptr %wrap160, align 8
  %and161 = and i32 %112, 4
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %if.then163, label %if.end175

if.then163:                                       ; preds = %land.lhs.true159
  br label %do.body164

do.body164:                                       ; preds = %if.then163
  %113 = load i64, ptr %hold, align 8
  %conv165 = trunc i64 %113 to i8
  %arrayidx166 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv165, ptr %arrayidx166, align 1
  %114 = load i64, ptr %hold, align 8
  %shr167 = lshr i64 %114, 8
  %conv168 = trunc i64 %shr167 to i8
  %arrayidx169 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv168, ptr %arrayidx169, align 1
  %115 = load ptr, ptr %state, align 8
  %check170 = getelementptr inbounds %struct.inflate_state, ptr %115, i32 0, i32 7
  %116 = load i64, ptr %check170, align 8
  %arraydecay171 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call172 = call i64 @crc32(i64 noundef %116, ptr noundef %arraydecay171, i32 noundef 2)
  %117 = load ptr, ptr %state, align 8
  %check173 = getelementptr inbounds %struct.inflate_state, ptr %117, i32 0, i32 7
  store i64 %call172, ptr %check173, align 8
  br label %do.end174

do.end174:                                        ; preds = %do.body164
  br label %if.end175

if.end175:                                        ; preds = %do.end174, %land.lhs.true159, %if.end155
  br label %do.body176

do.body176:                                       ; preds = %if.end175
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end177

do.end177:                                        ; preds = %do.body176
  %118 = load ptr, ptr %state, align 8
  %mode178 = getelementptr inbounds %struct.inflate_state, ptr %118, i32 0, i32 1
  store i32 16182, ptr %mode178, align 8
  br label %sw.bb179

sw.bb179:                                         ; preds = %for.cond, %do.end177
  br label %do.body180

do.body180:                                       ; preds = %sw.bb179
  br label %while.cond181

while.cond181:                                    ; preds = %do.end197, %do.body180
  %119 = load i32, ptr %bits, align 4
  %cmp182 = icmp ult i32 %119, 32
  br i1 %cmp182, label %while.body184, label %while.end198

while.body184:                                    ; preds = %while.cond181
  br label %do.body185

do.body185:                                       ; preds = %while.body184
  %120 = load i32, ptr %have, align 4
  %cmp186 = icmp eq i32 %120, 0
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %do.body185
  br label %inf_leave

if.end189:                                        ; preds = %do.body185
  %121 = load i32, ptr %have, align 4
  %dec190 = add i32 %121, -1
  store i32 %dec190, ptr %have, align 4
  %122 = load ptr, ptr %next, align 8
  %incdec.ptr191 = getelementptr inbounds i8, ptr %122, i32 1
  store ptr %incdec.ptr191, ptr %next, align 8
  %123 = load i8, ptr %122, align 1
  %conv192 = zext i8 %123 to i64
  %124 = load i32, ptr %bits, align 4
  %sh_prom193 = zext i32 %124 to i64
  %shl194 = shl i64 %conv192, %sh_prom193
  %125 = load i64, ptr %hold, align 8
  %add195 = add i64 %125, %shl194
  store i64 %add195, ptr %hold, align 8
  %126 = load i32, ptr %bits, align 4
  %add196 = add i32 %126, 8
  store i32 %add196, ptr %bits, align 4
  br label %do.end197

do.end197:                                        ; preds = %if.end189
  br label %while.cond181, !llvm.loop !9

while.end198:                                     ; preds = %while.cond181
  br label %do.end199

do.end199:                                        ; preds = %while.end198
  %127 = load ptr, ptr %state, align 8
  %head200 = getelementptr inbounds %struct.inflate_state, ptr %127, i32 0, i32 9
  %128 = load ptr, ptr %head200, align 8
  %cmp201 = icmp ne ptr %128, null
  br i1 %cmp201, label %if.then203, label %if.end205

if.then203:                                       ; preds = %do.end199
  %129 = load i64, ptr %hold, align 8
  %130 = load ptr, ptr %state, align 8
  %head204 = getelementptr inbounds %struct.inflate_state, ptr %130, i32 0, i32 9
  %131 = load ptr, ptr %head204, align 8
  %time = getelementptr inbounds %struct.gz_header_s, ptr %131, i32 0, i32 1
  store i64 %129, ptr %time, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %do.end199
  %132 = load ptr, ptr %state, align 8
  %flags206 = getelementptr inbounds %struct.inflate_state, ptr %132, i32 0, i32 5
  %133 = load i32, ptr %flags206, align 8
  %and207 = and i32 %133, 512
  %tobool208 = icmp ne i32 %and207, 0
  br i1 %tobool208, label %land.lhs.true209, label %if.end231

land.lhs.true209:                                 ; preds = %if.end205
  %134 = load ptr, ptr %state, align 8
  %wrap210 = getelementptr inbounds %struct.inflate_state, ptr %134, i32 0, i32 3
  %135 = load i32, ptr %wrap210, align 8
  %and211 = and i32 %135, 4
  %tobool212 = icmp ne i32 %and211, 0
  br i1 %tobool212, label %if.then213, label %if.end231

if.then213:                                       ; preds = %land.lhs.true209
  br label %do.body214

do.body214:                                       ; preds = %if.then213
  %136 = load i64, ptr %hold, align 8
  %conv215 = trunc i64 %136 to i8
  %arrayidx216 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv215, ptr %arrayidx216, align 1
  %137 = load i64, ptr %hold, align 8
  %shr217 = lshr i64 %137, 8
  %conv218 = trunc i64 %shr217 to i8
  %arrayidx219 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv218, ptr %arrayidx219, align 1
  %138 = load i64, ptr %hold, align 8
  %shr220 = lshr i64 %138, 16
  %conv221 = trunc i64 %shr220 to i8
  %arrayidx222 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 2
  store i8 %conv221, ptr %arrayidx222, align 1
  %139 = load i64, ptr %hold, align 8
  %shr223 = lshr i64 %139, 24
  %conv224 = trunc i64 %shr223 to i8
  %arrayidx225 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 3
  store i8 %conv224, ptr %arrayidx225, align 1
  %140 = load ptr, ptr %state, align 8
  %check226 = getelementptr inbounds %struct.inflate_state, ptr %140, i32 0, i32 7
  %141 = load i64, ptr %check226, align 8
  %arraydecay227 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call228 = call i64 @crc32(i64 noundef %141, ptr noundef %arraydecay227, i32 noundef 4)
  %142 = load ptr, ptr %state, align 8
  %check229 = getelementptr inbounds %struct.inflate_state, ptr %142, i32 0, i32 7
  store i64 %call228, ptr %check229, align 8
  br label %do.end230

do.end230:                                        ; preds = %do.body214
  br label %if.end231

if.end231:                                        ; preds = %do.end230, %land.lhs.true209, %if.end205
  br label %do.body232

do.body232:                                       ; preds = %if.end231
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end233

do.end233:                                        ; preds = %do.body232
  %143 = load ptr, ptr %state, align 8
  %mode234 = getelementptr inbounds %struct.inflate_state, ptr %143, i32 0, i32 1
  store i32 16183, ptr %mode234, align 8
  br label %sw.bb235

sw.bb235:                                         ; preds = %for.cond, %do.end233
  br label %do.body236

do.body236:                                       ; preds = %sw.bb235
  br label %while.cond237

while.cond237:                                    ; preds = %do.end253, %do.body236
  %144 = load i32, ptr %bits, align 4
  %cmp238 = icmp ult i32 %144, 16
  br i1 %cmp238, label %while.body240, label %while.end254

while.body240:                                    ; preds = %while.cond237
  br label %do.body241

do.body241:                                       ; preds = %while.body240
  %145 = load i32, ptr %have, align 4
  %cmp242 = icmp eq i32 %145, 0
  br i1 %cmp242, label %if.then244, label %if.end245

if.then244:                                       ; preds = %do.body241
  br label %inf_leave

if.end245:                                        ; preds = %do.body241
  %146 = load i32, ptr %have, align 4
  %dec246 = add i32 %146, -1
  store i32 %dec246, ptr %have, align 4
  %147 = load ptr, ptr %next, align 8
  %incdec.ptr247 = getelementptr inbounds i8, ptr %147, i32 1
  store ptr %incdec.ptr247, ptr %next, align 8
  %148 = load i8, ptr %147, align 1
  %conv248 = zext i8 %148 to i64
  %149 = load i32, ptr %bits, align 4
  %sh_prom249 = zext i32 %149 to i64
  %shl250 = shl i64 %conv248, %sh_prom249
  %150 = load i64, ptr %hold, align 8
  %add251 = add i64 %150, %shl250
  store i64 %add251, ptr %hold, align 8
  %151 = load i32, ptr %bits, align 4
  %add252 = add i32 %151, 8
  store i32 %add252, ptr %bits, align 4
  br label %do.end253

do.end253:                                        ; preds = %if.end245
  br label %while.cond237, !llvm.loop !10

while.end254:                                     ; preds = %while.cond237
  br label %do.end255

do.end255:                                        ; preds = %while.end254
  %152 = load ptr, ptr %state, align 8
  %head256 = getelementptr inbounds %struct.inflate_state, ptr %152, i32 0, i32 9
  %153 = load ptr, ptr %head256, align 8
  %cmp257 = icmp ne ptr %153, null
  br i1 %cmp257, label %if.then259, label %if.end266

if.then259:                                       ; preds = %do.end255
  %154 = load i64, ptr %hold, align 8
  %and260 = and i64 %154, 255
  %conv261 = trunc i64 %and260 to i32
  %155 = load ptr, ptr %state, align 8
  %head262 = getelementptr inbounds %struct.inflate_state, ptr %155, i32 0, i32 9
  %156 = load ptr, ptr %head262, align 8
  %xflags = getelementptr inbounds %struct.gz_header_s, ptr %156, i32 0, i32 2
  store i32 %conv261, ptr %xflags, align 8
  %157 = load i64, ptr %hold, align 8
  %shr263 = lshr i64 %157, 8
  %conv264 = trunc i64 %shr263 to i32
  %158 = load ptr, ptr %state, align 8
  %head265 = getelementptr inbounds %struct.inflate_state, ptr %158, i32 0, i32 9
  %159 = load ptr, ptr %head265, align 8
  %os = getelementptr inbounds %struct.gz_header_s, ptr %159, i32 0, i32 3
  store i32 %conv264, ptr %os, align 4
  br label %if.end266

if.end266:                                        ; preds = %if.then259, %do.end255
  %160 = load ptr, ptr %state, align 8
  %flags267 = getelementptr inbounds %struct.inflate_state, ptr %160, i32 0, i32 5
  %161 = load i32, ptr %flags267, align 8
  %and268 = and i32 %161, 512
  %tobool269 = icmp ne i32 %and268, 0
  br i1 %tobool269, label %land.lhs.true270, label %if.end286

land.lhs.true270:                                 ; preds = %if.end266
  %162 = load ptr, ptr %state, align 8
  %wrap271 = getelementptr inbounds %struct.inflate_state, ptr %162, i32 0, i32 3
  %163 = load i32, ptr %wrap271, align 8
  %and272 = and i32 %163, 4
  %tobool273 = icmp ne i32 %and272, 0
  br i1 %tobool273, label %if.then274, label %if.end286

if.then274:                                       ; preds = %land.lhs.true270
  br label %do.body275

do.body275:                                       ; preds = %if.then274
  %164 = load i64, ptr %hold, align 8
  %conv276 = trunc i64 %164 to i8
  %arrayidx277 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv276, ptr %arrayidx277, align 1
  %165 = load i64, ptr %hold, align 8
  %shr278 = lshr i64 %165, 8
  %conv279 = trunc i64 %shr278 to i8
  %arrayidx280 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv279, ptr %arrayidx280, align 1
  %166 = load ptr, ptr %state, align 8
  %check281 = getelementptr inbounds %struct.inflate_state, ptr %166, i32 0, i32 7
  %167 = load i64, ptr %check281, align 8
  %arraydecay282 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call283 = call i64 @crc32(i64 noundef %167, ptr noundef %arraydecay282, i32 noundef 2)
  %168 = load ptr, ptr %state, align 8
  %check284 = getelementptr inbounds %struct.inflate_state, ptr %168, i32 0, i32 7
  store i64 %call283, ptr %check284, align 8
  br label %do.end285

do.end285:                                        ; preds = %do.body275
  br label %if.end286

if.end286:                                        ; preds = %do.end285, %land.lhs.true270, %if.end266
  br label %do.body287

do.body287:                                       ; preds = %if.end286
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end288

do.end288:                                        ; preds = %do.body287
  %169 = load ptr, ptr %state, align 8
  %mode289 = getelementptr inbounds %struct.inflate_state, ptr %169, i32 0, i32 1
  store i32 16184, ptr %mode289, align 8
  br label %sw.bb290

sw.bb290:                                         ; preds = %for.cond, %do.end288
  %170 = load ptr, ptr %state, align 8
  %flags291 = getelementptr inbounds %struct.inflate_state, ptr %170, i32 0, i32 5
  %171 = load i32, ptr %flags291, align 8
  %and292 = and i32 %171, 1024
  %tobool293 = icmp ne i32 %and292, 0
  br i1 %tobool293, label %if.then294, label %if.else

if.then294:                                       ; preds = %sw.bb290
  br label %do.body295

do.body295:                                       ; preds = %if.then294
  br label %while.cond296

while.cond296:                                    ; preds = %do.end312, %do.body295
  %172 = load i32, ptr %bits, align 4
  %cmp297 = icmp ult i32 %172, 16
  br i1 %cmp297, label %while.body299, label %while.end313

while.body299:                                    ; preds = %while.cond296
  br label %do.body300

do.body300:                                       ; preds = %while.body299
  %173 = load i32, ptr %have, align 4
  %cmp301 = icmp eq i32 %173, 0
  br i1 %cmp301, label %if.then303, label %if.end304

if.then303:                                       ; preds = %do.body300
  br label %inf_leave

if.end304:                                        ; preds = %do.body300
  %174 = load i32, ptr %have, align 4
  %dec305 = add i32 %174, -1
  store i32 %dec305, ptr %have, align 4
  %175 = load ptr, ptr %next, align 8
  %incdec.ptr306 = getelementptr inbounds i8, ptr %175, i32 1
  store ptr %incdec.ptr306, ptr %next, align 8
  %176 = load i8, ptr %175, align 1
  %conv307 = zext i8 %176 to i64
  %177 = load i32, ptr %bits, align 4
  %sh_prom308 = zext i32 %177 to i64
  %shl309 = shl i64 %conv307, %sh_prom308
  %178 = load i64, ptr %hold, align 8
  %add310 = add i64 %178, %shl309
  store i64 %add310, ptr %hold, align 8
  %179 = load i32, ptr %bits, align 4
  %add311 = add i32 %179, 8
  store i32 %add311, ptr %bits, align 4
  br label %do.end312

do.end312:                                        ; preds = %if.end304
  br label %while.cond296, !llvm.loop !11

while.end313:                                     ; preds = %while.cond296
  br label %do.end314

do.end314:                                        ; preds = %while.end313
  %180 = load i64, ptr %hold, align 8
  %conv315 = trunc i64 %180 to i32
  %181 = load ptr, ptr %state, align 8
  %length = getelementptr inbounds %struct.inflate_state, ptr %181, i32 0, i32 17
  store i32 %conv315, ptr %length, align 4
  %182 = load ptr, ptr %state, align 8
  %head316 = getelementptr inbounds %struct.inflate_state, ptr %182, i32 0, i32 9
  %183 = load ptr, ptr %head316, align 8
  %cmp317 = icmp ne ptr %183, null
  br i1 %cmp317, label %if.then319, label %if.end322

if.then319:                                       ; preds = %do.end314
  %184 = load i64, ptr %hold, align 8
  %conv320 = trunc i64 %184 to i32
  %185 = load ptr, ptr %state, align 8
  %head321 = getelementptr inbounds %struct.inflate_state, ptr %185, i32 0, i32 9
  %186 = load ptr, ptr %head321, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %186, i32 0, i32 5
  store i32 %conv320, ptr %extra_len, align 8
  br label %if.end322

if.end322:                                        ; preds = %if.then319, %do.end314
  %187 = load ptr, ptr %state, align 8
  %flags323 = getelementptr inbounds %struct.inflate_state, ptr %187, i32 0, i32 5
  %188 = load i32, ptr %flags323, align 8
  %and324 = and i32 %188, 512
  %tobool325 = icmp ne i32 %and324, 0
  br i1 %tobool325, label %land.lhs.true326, label %if.end342

land.lhs.true326:                                 ; preds = %if.end322
  %189 = load ptr, ptr %state, align 8
  %wrap327 = getelementptr inbounds %struct.inflate_state, ptr %189, i32 0, i32 3
  %190 = load i32, ptr %wrap327, align 8
  %and328 = and i32 %190, 4
  %tobool329 = icmp ne i32 %and328, 0
  br i1 %tobool329, label %if.then330, label %if.end342

if.then330:                                       ; preds = %land.lhs.true326
  br label %do.body331

do.body331:                                       ; preds = %if.then330
  %191 = load i64, ptr %hold, align 8
  %conv332 = trunc i64 %191 to i8
  %arrayidx333 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  store i8 %conv332, ptr %arrayidx333, align 1
  %192 = load i64, ptr %hold, align 8
  %shr334 = lshr i64 %192, 8
  %conv335 = trunc i64 %shr334 to i8
  %arrayidx336 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv335, ptr %arrayidx336, align 1
  %193 = load ptr, ptr %state, align 8
  %check337 = getelementptr inbounds %struct.inflate_state, ptr %193, i32 0, i32 7
  %194 = load i64, ptr %check337, align 8
  %arraydecay338 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 0
  %call339 = call i64 @crc32(i64 noundef %194, ptr noundef %arraydecay338, i32 noundef 2)
  %195 = load ptr, ptr %state, align 8
  %check340 = getelementptr inbounds %struct.inflate_state, ptr %195, i32 0, i32 7
  store i64 %call339, ptr %check340, align 8
  br label %do.end341

do.end341:                                        ; preds = %do.body331
  br label %if.end342

if.end342:                                        ; preds = %do.end341, %land.lhs.true326, %if.end322
  br label %do.body343

do.body343:                                       ; preds = %if.end342
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end344

do.end344:                                        ; preds = %do.body343
  br label %if.end351

if.else:                                          ; preds = %sw.bb290
  %196 = load ptr, ptr %state, align 8
  %head345 = getelementptr inbounds %struct.inflate_state, ptr %196, i32 0, i32 9
  %197 = load ptr, ptr %head345, align 8
  %cmp346 = icmp ne ptr %197, null
  br i1 %cmp346, label %if.then348, label %if.end350

if.then348:                                       ; preds = %if.else
  %198 = load ptr, ptr %state, align 8
  %head349 = getelementptr inbounds %struct.inflate_state, ptr %198, i32 0, i32 9
  %199 = load ptr, ptr %head349, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %199, i32 0, i32 4
  store ptr null, ptr %extra, align 8
  br label %if.end350

if.end350:                                        ; preds = %if.then348, %if.else
  br label %if.end351

if.end351:                                        ; preds = %if.end350, %do.end344
  %200 = load ptr, ptr %state, align 8
  %mode352 = getelementptr inbounds %struct.inflate_state, ptr %200, i32 0, i32 1
  store i32 16185, ptr %mode352, align 8
  br label %sw.bb353

sw.bb353:                                         ; preds = %for.cond, %if.end351
  %201 = load ptr, ptr %state, align 8
  %flags354 = getelementptr inbounds %struct.inflate_state, ptr %201, i32 0, i32 5
  %202 = load i32, ptr %flags354, align 8
  %and355 = and i32 %202, 1024
  %tobool356 = icmp ne i32 %and355, 0
  br i1 %tobool356, label %if.then357, label %if.end422

if.then357:                                       ; preds = %sw.bb353
  %203 = load ptr, ptr %state, align 8
  %length358 = getelementptr inbounds %struct.inflate_state, ptr %203, i32 0, i32 17
  %204 = load i32, ptr %length358, align 4
  store i32 %204, ptr %copy, align 4
  %205 = load i32, ptr %copy, align 4
  %206 = load i32, ptr %have, align 4
  %cmp359 = icmp ugt i32 %205, %206
  br i1 %cmp359, label %if.then361, label %if.end362

if.then361:                                       ; preds = %if.then357
  %207 = load i32, ptr %have, align 4
  store i32 %207, ptr %copy, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.then361, %if.then357
  %208 = load i32, ptr %copy, align 4
  %tobool363 = icmp ne i32 %208, 0
  br i1 %tobool363, label %if.then364, label %if.end417

if.then364:                                       ; preds = %if.end362
  %209 = load ptr, ptr %state, align 8
  %head365 = getelementptr inbounds %struct.inflate_state, ptr %209, i32 0, i32 9
  %210 = load ptr, ptr %head365, align 8
  %cmp366 = icmp ne ptr %210, null
  br i1 %cmp366, label %land.lhs.true368, label %if.end399

land.lhs.true368:                                 ; preds = %if.then364
  %211 = load ptr, ptr %state, align 8
  %head369 = getelementptr inbounds %struct.inflate_state, ptr %211, i32 0, i32 9
  %212 = load ptr, ptr %head369, align 8
  %extra370 = getelementptr inbounds %struct.gz_header_s, ptr %212, i32 0, i32 4
  %213 = load ptr, ptr %extra370, align 8
  %cmp371 = icmp ne ptr %213, null
  br i1 %cmp371, label %land.lhs.true373, label %if.end399

land.lhs.true373:                                 ; preds = %land.lhs.true368
  %214 = load ptr, ptr %state, align 8
  %head374 = getelementptr inbounds %struct.inflate_state, ptr %214, i32 0, i32 9
  %215 = load ptr, ptr %head374, align 8
  %extra_len375 = getelementptr inbounds %struct.gz_header_s, ptr %215, i32 0, i32 5
  %216 = load i32, ptr %extra_len375, align 8
  %217 = load ptr, ptr %state, align 8
  %length376 = getelementptr inbounds %struct.inflate_state, ptr %217, i32 0, i32 17
  %218 = load i32, ptr %length376, align 4
  %sub377 = sub i32 %216, %218
  store i32 %sub377, ptr %len, align 4
  %219 = load ptr, ptr %state, align 8
  %head378 = getelementptr inbounds %struct.inflate_state, ptr %219, i32 0, i32 9
  %220 = load ptr, ptr %head378, align 8
  %extra_max = getelementptr inbounds %struct.gz_header_s, ptr %220, i32 0, i32 6
  %221 = load i32, ptr %extra_max, align 4
  %cmp379 = icmp ult i32 %sub377, %221
  br i1 %cmp379, label %if.then381, label %if.end399

if.then381:                                       ; preds = %land.lhs.true373
  %222 = load ptr, ptr %state, align 8
  %head382 = getelementptr inbounds %struct.inflate_state, ptr %222, i32 0, i32 9
  %223 = load ptr, ptr %head382, align 8
  %extra383 = getelementptr inbounds %struct.gz_header_s, ptr %223, i32 0, i32 4
  %224 = load ptr, ptr %extra383, align 8
  %225 = load i32, ptr %len, align 4
  %idx.ext = zext i32 %225 to i64
  %add.ptr = getelementptr inbounds i8, ptr %224, i64 %idx.ext
  %226 = load ptr, ptr %next, align 8
  %227 = load i32, ptr %len, align 4
  %228 = load i32, ptr %copy, align 4
  %add384 = add i32 %227, %228
  %229 = load ptr, ptr %state, align 8
  %head385 = getelementptr inbounds %struct.inflate_state, ptr %229, i32 0, i32 9
  %230 = load ptr, ptr %head385, align 8
  %extra_max386 = getelementptr inbounds %struct.gz_header_s, ptr %230, i32 0, i32 6
  %231 = load i32, ptr %extra_max386, align 4
  %cmp387 = icmp ugt i32 %add384, %231
  br i1 %cmp387, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then381
  %232 = load ptr, ptr %state, align 8
  %head389 = getelementptr inbounds %struct.inflate_state, ptr %232, i32 0, i32 9
  %233 = load ptr, ptr %head389, align 8
  %extra_max390 = getelementptr inbounds %struct.gz_header_s, ptr %233, i32 0, i32 6
  %234 = load i32, ptr %extra_max390, align 4
  %235 = load i32, ptr %len, align 4
  %sub391 = sub i32 %234, %235
  br label %cond.end

cond.false:                                       ; preds = %if.then381
  %236 = load i32, ptr %copy, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond392 = phi i32 [ %sub391, %cond.true ], [ %236, %cond.false ]
  %conv393 = zext i32 %cond392 to i64
  %237 = load ptr, ptr %state, align 8
  %head394 = getelementptr inbounds %struct.inflate_state, ptr %237, i32 0, i32 9
  %238 = load ptr, ptr %head394, align 8
  %extra395 = getelementptr inbounds %struct.gz_header_s, ptr %238, i32 0, i32 4
  %239 = load ptr, ptr %extra395, align 8
  %240 = load i32, ptr %len, align 4
  %idx.ext396 = zext i32 %240 to i64
  %add.ptr397 = getelementptr inbounds i8, ptr %239, i64 %idx.ext396
  %241 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr397, i1 false, i1 true, i1 false)
  %call398 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %226, i64 noundef %conv393, i64 noundef %241) #5
  br label %if.end399

if.end399:                                        ; preds = %cond.end, %land.lhs.true373, %land.lhs.true368, %if.then364
  %242 = load ptr, ptr %state, align 8
  %flags400 = getelementptr inbounds %struct.inflate_state, ptr %242, i32 0, i32 5
  %243 = load i32, ptr %flags400, align 8
  %and401 = and i32 %243, 512
  %tobool402 = icmp ne i32 %and401, 0
  br i1 %tobool402, label %land.lhs.true403, label %if.end411

land.lhs.true403:                                 ; preds = %if.end399
  %244 = load ptr, ptr %state, align 8
  %wrap404 = getelementptr inbounds %struct.inflate_state, ptr %244, i32 0, i32 3
  %245 = load i32, ptr %wrap404, align 8
  %and405 = and i32 %245, 4
  %tobool406 = icmp ne i32 %and405, 0
  br i1 %tobool406, label %if.then407, label %if.end411

if.then407:                                       ; preds = %land.lhs.true403
  %246 = load ptr, ptr %state, align 8
  %check408 = getelementptr inbounds %struct.inflate_state, ptr %246, i32 0, i32 7
  %247 = load i64, ptr %check408, align 8
  %248 = load ptr, ptr %next, align 8
  %249 = load i32, ptr %copy, align 4
  %call409 = call i64 @crc32(i64 noundef %247, ptr noundef %248, i32 noundef %249)
  %250 = load ptr, ptr %state, align 8
  %check410 = getelementptr inbounds %struct.inflate_state, ptr %250, i32 0, i32 7
  store i64 %call409, ptr %check410, align 8
  br label %if.end411

if.end411:                                        ; preds = %if.then407, %land.lhs.true403, %if.end399
  %251 = load i32, ptr %copy, align 4
  %252 = load i32, ptr %have, align 4
  %sub412 = sub i32 %252, %251
  store i32 %sub412, ptr %have, align 4
  %253 = load i32, ptr %copy, align 4
  %254 = load ptr, ptr %next, align 8
  %idx.ext413 = zext i32 %253 to i64
  %add.ptr414 = getelementptr inbounds i8, ptr %254, i64 %idx.ext413
  store ptr %add.ptr414, ptr %next, align 8
  %255 = load i32, ptr %copy, align 4
  %256 = load ptr, ptr %state, align 8
  %length415 = getelementptr inbounds %struct.inflate_state, ptr %256, i32 0, i32 17
  %257 = load i32, ptr %length415, align 4
  %sub416 = sub i32 %257, %255
  store i32 %sub416, ptr %length415, align 4
  br label %if.end417

if.end417:                                        ; preds = %if.end411, %if.end362
  %258 = load ptr, ptr %state, align 8
  %length418 = getelementptr inbounds %struct.inflate_state, ptr %258, i32 0, i32 17
  %259 = load i32, ptr %length418, align 4
  %tobool419 = icmp ne i32 %259, 0
  br i1 %tobool419, label %if.then420, label %if.end421

if.then420:                                       ; preds = %if.end417
  br label %inf_leave

if.end421:                                        ; preds = %if.end417
  br label %if.end422

if.end422:                                        ; preds = %if.end421, %sw.bb353
  %260 = load ptr, ptr %state, align 8
  %length423 = getelementptr inbounds %struct.inflate_state, ptr %260, i32 0, i32 17
  store i32 0, ptr %length423, align 4
  %261 = load ptr, ptr %state, align 8
  %mode424 = getelementptr inbounds %struct.inflate_state, ptr %261, i32 0, i32 1
  store i32 16186, ptr %mode424, align 8
  br label %sw.bb425

sw.bb425:                                         ; preds = %for.cond, %if.end422
  %262 = load ptr, ptr %state, align 8
  %flags426 = getelementptr inbounds %struct.inflate_state, ptr %262, i32 0, i32 5
  %263 = load i32, ptr %flags426, align 8
  %and427 = and i32 %263, 2048
  %tobool428 = icmp ne i32 %and427, 0
  br i1 %tobool428, label %if.then429, label %if.else480

if.then429:                                       ; preds = %sw.bb425
  %264 = load i32, ptr %have, align 4
  %cmp430 = icmp eq i32 %264, 0
  br i1 %cmp430, label %if.then432, label %if.end433

if.then432:                                       ; preds = %if.then429
  br label %inf_leave

if.end433:                                        ; preds = %if.then429
  store i32 0, ptr %copy, align 4
  br label %do.body434

do.body434:                                       ; preds = %land.end, %if.end433
  %265 = load ptr, ptr %next, align 8
  %266 = load i32, ptr %copy, align 4
  %inc = add i32 %266, 1
  store i32 %inc, ptr %copy, align 4
  %idxprom = zext i32 %266 to i64
  %arrayidx435 = getelementptr inbounds i8, ptr %265, i64 %idxprom
  %267 = load i8, ptr %arrayidx435, align 1
  %conv436 = zext i8 %267 to i32
  store i32 %conv436, ptr %len, align 4
  %268 = load ptr, ptr %state, align 8
  %head437 = getelementptr inbounds %struct.inflate_state, ptr %268, i32 0, i32 9
  %269 = load ptr, ptr %head437, align 8
  %cmp438 = icmp ne ptr %269, null
  br i1 %cmp438, label %land.lhs.true440, label %if.end457

land.lhs.true440:                                 ; preds = %do.body434
  %270 = load ptr, ptr %state, align 8
  %head441 = getelementptr inbounds %struct.inflate_state, ptr %270, i32 0, i32 9
  %271 = load ptr, ptr %head441, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %271, i32 0, i32 7
  %272 = load ptr, ptr %name, align 8
  %cmp442 = icmp ne ptr %272, null
  br i1 %cmp442, label %land.lhs.true444, label %if.end457

land.lhs.true444:                                 ; preds = %land.lhs.true440
  %273 = load ptr, ptr %state, align 8
  %length445 = getelementptr inbounds %struct.inflate_state, ptr %273, i32 0, i32 17
  %274 = load i32, ptr %length445, align 4
  %275 = load ptr, ptr %state, align 8
  %head446 = getelementptr inbounds %struct.inflate_state, ptr %275, i32 0, i32 9
  %276 = load ptr, ptr %head446, align 8
  %name_max = getelementptr inbounds %struct.gz_header_s, ptr %276, i32 0, i32 8
  %277 = load i32, ptr %name_max, align 8
  %cmp447 = icmp ult i32 %274, %277
  br i1 %cmp447, label %if.then449, label %if.end457

if.then449:                                       ; preds = %land.lhs.true444
  %278 = load i32, ptr %len, align 4
  %conv450 = trunc i32 %278 to i8
  %279 = load ptr, ptr %state, align 8
  %head451 = getelementptr inbounds %struct.inflate_state, ptr %279, i32 0, i32 9
  %280 = load ptr, ptr %head451, align 8
  %name452 = getelementptr inbounds %struct.gz_header_s, ptr %280, i32 0, i32 7
  %281 = load ptr, ptr %name452, align 8
  %282 = load ptr, ptr %state, align 8
  %length453 = getelementptr inbounds %struct.inflate_state, ptr %282, i32 0, i32 17
  %283 = load i32, ptr %length453, align 4
  %inc454 = add i32 %283, 1
  store i32 %inc454, ptr %length453, align 4
  %idxprom455 = zext i32 %283 to i64
  %arrayidx456 = getelementptr inbounds i8, ptr %281, i64 %idxprom455
  store i8 %conv450, ptr %arrayidx456, align 1
  br label %if.end457

if.end457:                                        ; preds = %if.then449, %land.lhs.true444, %land.lhs.true440, %do.body434
  br label %do.cond

do.cond:                                          ; preds = %if.end457
  %284 = load i32, ptr %len, align 4
  %tobool458 = icmp ne i32 %284, 0
  br i1 %tobool458, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %285 = load i32, ptr %copy, align 4
  %286 = load i32, ptr %have, align 4
  %cmp459 = icmp ult i32 %285, %286
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %287 = phi i1 [ false, %do.cond ], [ %cmp459, %land.rhs ]
  br i1 %287, label %do.body434, label %do.end461, !llvm.loop !12

do.end461:                                        ; preds = %land.end
  %288 = load ptr, ptr %state, align 8
  %flags462 = getelementptr inbounds %struct.inflate_state, ptr %288, i32 0, i32 5
  %289 = load i32, ptr %flags462, align 8
  %and463 = and i32 %289, 512
  %tobool464 = icmp ne i32 %and463, 0
  br i1 %tobool464, label %land.lhs.true465, label %if.end473

land.lhs.true465:                                 ; preds = %do.end461
  %290 = load ptr, ptr %state, align 8
  %wrap466 = getelementptr inbounds %struct.inflate_state, ptr %290, i32 0, i32 3
  %291 = load i32, ptr %wrap466, align 8
  %and467 = and i32 %291, 4
  %tobool468 = icmp ne i32 %and467, 0
  br i1 %tobool468, label %if.then469, label %if.end473

if.then469:                                       ; preds = %land.lhs.true465
  %292 = load ptr, ptr %state, align 8
  %check470 = getelementptr inbounds %struct.inflate_state, ptr %292, i32 0, i32 7
  %293 = load i64, ptr %check470, align 8
  %294 = load ptr, ptr %next, align 8
  %295 = load i32, ptr %copy, align 4
  %call471 = call i64 @crc32(i64 noundef %293, ptr noundef %294, i32 noundef %295)
  %296 = load ptr, ptr %state, align 8
  %check472 = getelementptr inbounds %struct.inflate_state, ptr %296, i32 0, i32 7
  store i64 %call471, ptr %check472, align 8
  br label %if.end473

if.end473:                                        ; preds = %if.then469, %land.lhs.true465, %do.end461
  %297 = load i32, ptr %copy, align 4
  %298 = load i32, ptr %have, align 4
  %sub474 = sub i32 %298, %297
  store i32 %sub474, ptr %have, align 4
  %299 = load i32, ptr %copy, align 4
  %300 = load ptr, ptr %next, align 8
  %idx.ext475 = zext i32 %299 to i64
  %add.ptr476 = getelementptr inbounds i8, ptr %300, i64 %idx.ext475
  store ptr %add.ptr476, ptr %next, align 8
  %301 = load i32, ptr %len, align 4
  %tobool477 = icmp ne i32 %301, 0
  br i1 %tobool477, label %if.then478, label %if.end479

if.then478:                                       ; preds = %if.end473
  br label %inf_leave

if.end479:                                        ; preds = %if.end473
  br label %if.end488

if.else480:                                       ; preds = %sw.bb425
  %302 = load ptr, ptr %state, align 8
  %head481 = getelementptr inbounds %struct.inflate_state, ptr %302, i32 0, i32 9
  %303 = load ptr, ptr %head481, align 8
  %cmp482 = icmp ne ptr %303, null
  br i1 %cmp482, label %if.then484, label %if.end487

if.then484:                                       ; preds = %if.else480
  %304 = load ptr, ptr %state, align 8
  %head485 = getelementptr inbounds %struct.inflate_state, ptr %304, i32 0, i32 9
  %305 = load ptr, ptr %head485, align 8
  %name486 = getelementptr inbounds %struct.gz_header_s, ptr %305, i32 0, i32 7
  store ptr null, ptr %name486, align 8
  br label %if.end487

if.end487:                                        ; preds = %if.then484, %if.else480
  br label %if.end488

if.end488:                                        ; preds = %if.end487, %if.end479
  %306 = load ptr, ptr %state, align 8
  %length489 = getelementptr inbounds %struct.inflate_state, ptr %306, i32 0, i32 17
  store i32 0, ptr %length489, align 4
  %307 = load ptr, ptr %state, align 8
  %mode490 = getelementptr inbounds %struct.inflate_state, ptr %307, i32 0, i32 1
  store i32 16187, ptr %mode490, align 8
  br label %sw.bb491

sw.bb491:                                         ; preds = %for.cond, %if.end488
  %308 = load ptr, ptr %state, align 8
  %flags492 = getelementptr inbounds %struct.inflate_state, ptr %308, i32 0, i32 5
  %309 = load i32, ptr %flags492, align 8
  %and493 = and i32 %309, 4096
  %tobool494 = icmp ne i32 %and493, 0
  br i1 %tobool494, label %if.then495, label %if.else551

if.then495:                                       ; preds = %sw.bb491
  %310 = load i32, ptr %have, align 4
  %cmp496 = icmp eq i32 %310, 0
  br i1 %cmp496, label %if.then498, label %if.end499

if.then498:                                       ; preds = %if.then495
  br label %inf_leave

if.end499:                                        ; preds = %if.then495
  store i32 0, ptr %copy, align 4
  br label %do.body500

do.body500:                                       ; preds = %land.end531, %if.end499
  %311 = load ptr, ptr %next, align 8
  %312 = load i32, ptr %copy, align 4
  %inc501 = add i32 %312, 1
  store i32 %inc501, ptr %copy, align 4
  %idxprom502 = zext i32 %312 to i64
  %arrayidx503 = getelementptr inbounds i8, ptr %311, i64 %idxprom502
  %313 = load i8, ptr %arrayidx503, align 1
  %conv504 = zext i8 %313 to i32
  store i32 %conv504, ptr %len, align 4
  %314 = load ptr, ptr %state, align 8
  %head505 = getelementptr inbounds %struct.inflate_state, ptr %314, i32 0, i32 9
  %315 = load ptr, ptr %head505, align 8
  %cmp506 = icmp ne ptr %315, null
  br i1 %cmp506, label %land.lhs.true508, label %if.end525

land.lhs.true508:                                 ; preds = %do.body500
  %316 = load ptr, ptr %state, align 8
  %head509 = getelementptr inbounds %struct.inflate_state, ptr %316, i32 0, i32 9
  %317 = load ptr, ptr %head509, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %317, i32 0, i32 9
  %318 = load ptr, ptr %comment, align 8
  %cmp510 = icmp ne ptr %318, null
  br i1 %cmp510, label %land.lhs.true512, label %if.end525

land.lhs.true512:                                 ; preds = %land.lhs.true508
  %319 = load ptr, ptr %state, align 8
  %length513 = getelementptr inbounds %struct.inflate_state, ptr %319, i32 0, i32 17
  %320 = load i32, ptr %length513, align 4
  %321 = load ptr, ptr %state, align 8
  %head514 = getelementptr inbounds %struct.inflate_state, ptr %321, i32 0, i32 9
  %322 = load ptr, ptr %head514, align 8
  %comm_max = getelementptr inbounds %struct.gz_header_s, ptr %322, i32 0, i32 10
  %323 = load i32, ptr %comm_max, align 8
  %cmp515 = icmp ult i32 %320, %323
  br i1 %cmp515, label %if.then517, label %if.end525

if.then517:                                       ; preds = %land.lhs.true512
  %324 = load i32, ptr %len, align 4
  %conv518 = trunc i32 %324 to i8
  %325 = load ptr, ptr %state, align 8
  %head519 = getelementptr inbounds %struct.inflate_state, ptr %325, i32 0, i32 9
  %326 = load ptr, ptr %head519, align 8
  %comment520 = getelementptr inbounds %struct.gz_header_s, ptr %326, i32 0, i32 9
  %327 = load ptr, ptr %comment520, align 8
  %328 = load ptr, ptr %state, align 8
  %length521 = getelementptr inbounds %struct.inflate_state, ptr %328, i32 0, i32 17
  %329 = load i32, ptr %length521, align 4
  %inc522 = add i32 %329, 1
  store i32 %inc522, ptr %length521, align 4
  %idxprom523 = zext i32 %329 to i64
  %arrayidx524 = getelementptr inbounds i8, ptr %327, i64 %idxprom523
  store i8 %conv518, ptr %arrayidx524, align 1
  br label %if.end525

if.end525:                                        ; preds = %if.then517, %land.lhs.true512, %land.lhs.true508, %do.body500
  br label %do.cond526

do.cond526:                                       ; preds = %if.end525
  %330 = load i32, ptr %len, align 4
  %tobool527 = icmp ne i32 %330, 0
  br i1 %tobool527, label %land.rhs528, label %land.end531

land.rhs528:                                      ; preds = %do.cond526
  %331 = load i32, ptr %copy, align 4
  %332 = load i32, ptr %have, align 4
  %cmp529 = icmp ult i32 %331, %332
  br label %land.end531

land.end531:                                      ; preds = %land.rhs528, %do.cond526
  %333 = phi i1 [ false, %do.cond526 ], [ %cmp529, %land.rhs528 ]
  br i1 %333, label %do.body500, label %do.end532, !llvm.loop !13

do.end532:                                        ; preds = %land.end531
  %334 = load ptr, ptr %state, align 8
  %flags533 = getelementptr inbounds %struct.inflate_state, ptr %334, i32 0, i32 5
  %335 = load i32, ptr %flags533, align 8
  %and534 = and i32 %335, 512
  %tobool535 = icmp ne i32 %and534, 0
  br i1 %tobool535, label %land.lhs.true536, label %if.end544

land.lhs.true536:                                 ; preds = %do.end532
  %336 = load ptr, ptr %state, align 8
  %wrap537 = getelementptr inbounds %struct.inflate_state, ptr %336, i32 0, i32 3
  %337 = load i32, ptr %wrap537, align 8
  %and538 = and i32 %337, 4
  %tobool539 = icmp ne i32 %and538, 0
  br i1 %tobool539, label %if.then540, label %if.end544

if.then540:                                       ; preds = %land.lhs.true536
  %338 = load ptr, ptr %state, align 8
  %check541 = getelementptr inbounds %struct.inflate_state, ptr %338, i32 0, i32 7
  %339 = load i64, ptr %check541, align 8
  %340 = load ptr, ptr %next, align 8
  %341 = load i32, ptr %copy, align 4
  %call542 = call i64 @crc32(i64 noundef %339, ptr noundef %340, i32 noundef %341)
  %342 = load ptr, ptr %state, align 8
  %check543 = getelementptr inbounds %struct.inflate_state, ptr %342, i32 0, i32 7
  store i64 %call542, ptr %check543, align 8
  br label %if.end544

if.end544:                                        ; preds = %if.then540, %land.lhs.true536, %do.end532
  %343 = load i32, ptr %copy, align 4
  %344 = load i32, ptr %have, align 4
  %sub545 = sub i32 %344, %343
  store i32 %sub545, ptr %have, align 4
  %345 = load i32, ptr %copy, align 4
  %346 = load ptr, ptr %next, align 8
  %idx.ext546 = zext i32 %345 to i64
  %add.ptr547 = getelementptr inbounds i8, ptr %346, i64 %idx.ext546
  store ptr %add.ptr547, ptr %next, align 8
  %347 = load i32, ptr %len, align 4
  %tobool548 = icmp ne i32 %347, 0
  br i1 %tobool548, label %if.then549, label %if.end550

if.then549:                                       ; preds = %if.end544
  br label %inf_leave

if.end550:                                        ; preds = %if.end544
  br label %if.end559

if.else551:                                       ; preds = %sw.bb491
  %348 = load ptr, ptr %state, align 8
  %head552 = getelementptr inbounds %struct.inflate_state, ptr %348, i32 0, i32 9
  %349 = load ptr, ptr %head552, align 8
  %cmp553 = icmp ne ptr %349, null
  br i1 %cmp553, label %if.then555, label %if.end558

if.then555:                                       ; preds = %if.else551
  %350 = load ptr, ptr %state, align 8
  %head556 = getelementptr inbounds %struct.inflate_state, ptr %350, i32 0, i32 9
  %351 = load ptr, ptr %head556, align 8
  %comment557 = getelementptr inbounds %struct.gz_header_s, ptr %351, i32 0, i32 9
  store ptr null, ptr %comment557, align 8
  br label %if.end558

if.end558:                                        ; preds = %if.then555, %if.else551
  br label %if.end559

if.end559:                                        ; preds = %if.end558, %if.end550
  %352 = load ptr, ptr %state, align 8
  %mode560 = getelementptr inbounds %struct.inflate_state, ptr %352, i32 0, i32 1
  store i32 16188, ptr %mode560, align 8
  br label %sw.bb561

sw.bb561:                                         ; preds = %for.cond, %if.end559
  %353 = load ptr, ptr %state, align 8
  %flags562 = getelementptr inbounds %struct.inflate_state, ptr %353, i32 0, i32 5
  %354 = load i32, ptr %flags562, align 8
  %and563 = and i32 %354, 512
  %tobool564 = icmp ne i32 %and563, 0
  br i1 %tobool564, label %if.then565, label %if.end603

if.then565:                                       ; preds = %sw.bb561
  br label %do.body566

do.body566:                                       ; preds = %if.then565
  br label %while.cond567

while.cond567:                                    ; preds = %do.end584, %do.body566
  %355 = load i32, ptr %bits, align 4
  %cmp568 = icmp ult i32 %355, 16
  br i1 %cmp568, label %while.body570, label %while.end585

while.body570:                                    ; preds = %while.cond567
  br label %do.body571

do.body571:                                       ; preds = %while.body570
  %356 = load i32, ptr %have, align 4
  %cmp572 = icmp eq i32 %356, 0
  br i1 %cmp572, label %if.then574, label %if.end575

if.then574:                                       ; preds = %do.body571
  br label %inf_leave

if.end575:                                        ; preds = %do.body571
  %357 = load i32, ptr %have, align 4
  %dec576 = add i32 %357, -1
  store i32 %dec576, ptr %have, align 4
  %358 = load ptr, ptr %next, align 8
  %incdec.ptr577 = getelementptr inbounds i8, ptr %358, i32 1
  store ptr %incdec.ptr577, ptr %next, align 8
  %359 = load i8, ptr %358, align 1
  %conv578 = zext i8 %359 to i64
  %360 = load i32, ptr %bits, align 4
  %sh_prom579 = zext i32 %360 to i64
  %shl580 = shl i64 %conv578, %sh_prom579
  %361 = load i64, ptr %hold, align 8
  %add581 = add i64 %361, %shl580
  store i64 %add581, ptr %hold, align 8
  %362 = load i32, ptr %bits, align 4
  %add582 = add i32 %362, 8
  store i32 %add582, ptr %bits, align 4
  br label %do.end584

do.end584:                                        ; preds = %if.end575
  br label %while.cond567, !llvm.loop !14

while.end585:                                     ; preds = %while.cond567
  br label %do.end587

do.end587:                                        ; preds = %while.end585
  %363 = load ptr, ptr %state, align 8
  %wrap588 = getelementptr inbounds %struct.inflate_state, ptr %363, i32 0, i32 3
  %364 = load i32, ptr %wrap588, align 8
  %and589 = and i32 %364, 4
  %tobool590 = icmp ne i32 %and589, 0
  br i1 %tobool590, label %land.lhs.true591, label %if.end599

land.lhs.true591:                                 ; preds = %do.end587
  %365 = load i64, ptr %hold, align 8
  %366 = load ptr, ptr %state, align 8
  %check592 = getelementptr inbounds %struct.inflate_state, ptr %366, i32 0, i32 7
  %367 = load i64, ptr %check592, align 8
  %and593 = and i64 %367, 65535
  %cmp594 = icmp ne i64 %365, %and593
  br i1 %cmp594, label %if.then596, label %if.end599

if.then596:                                       ; preds = %land.lhs.true591
  %368 = load ptr, ptr %strm.addr, align 8
  %msg597 = getelementptr inbounds %struct.z_stream_s, ptr %368, i32 0, i32 6
  store ptr @.str.5, ptr %msg597, align 8
  %369 = load ptr, ptr %state, align 8
  %mode598 = getelementptr inbounds %struct.inflate_state, ptr %369, i32 0, i32 1
  store i32 16209, ptr %mode598, align 8
  br label %sw.epilog1874

if.end599:                                        ; preds = %land.lhs.true591, %do.end587
  br label %do.body600

do.body600:                                       ; preds = %if.end599
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end602

do.end602:                                        ; preds = %do.body600
  br label %if.end603

if.end603:                                        ; preds = %do.end602, %sw.bb561
  %370 = load ptr, ptr %state, align 8
  %head604 = getelementptr inbounds %struct.inflate_state, ptr %370, i32 0, i32 9
  %371 = load ptr, ptr %head604, align 8
  %cmp605 = icmp ne ptr %371, null
  br i1 %cmp605, label %if.then607, label %if.end614

if.then607:                                       ; preds = %if.end603
  %372 = load ptr, ptr %state, align 8
  %flags608 = getelementptr inbounds %struct.inflate_state, ptr %372, i32 0, i32 5
  %373 = load i32, ptr %flags608, align 8
  %shr609 = ashr i32 %373, 9
  %and610 = and i32 %shr609, 1
  %374 = load ptr, ptr %state, align 8
  %head611 = getelementptr inbounds %struct.inflate_state, ptr %374, i32 0, i32 9
  %375 = load ptr, ptr %head611, align 8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %375, i32 0, i32 11
  store i32 %and610, ptr %hcrc, align 4
  %376 = load ptr, ptr %state, align 8
  %head612 = getelementptr inbounds %struct.inflate_state, ptr %376, i32 0, i32 9
  %377 = load ptr, ptr %head612, align 8
  %done613 = getelementptr inbounds %struct.gz_header_s, ptr %377, i32 0, i32 12
  store i32 1, ptr %done613, align 8
  br label %if.end614

if.end614:                                        ; preds = %if.then607, %if.end603
  %call615 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %378 = load ptr, ptr %state, align 8
  %check616 = getelementptr inbounds %struct.inflate_state, ptr %378, i32 0, i32 7
  store i64 %call615, ptr %check616, align 8
  %379 = load ptr, ptr %strm.addr, align 8
  %adler617 = getelementptr inbounds %struct.z_stream_s, ptr %379, i32 0, i32 12
  store i64 %call615, ptr %adler617, align 8
  %380 = load ptr, ptr %state, align 8
  %mode618 = getelementptr inbounds %struct.inflate_state, ptr %380, i32 0, i32 1
  store i32 16191, ptr %mode618, align 8
  br label %sw.epilog1874

sw.bb619:                                         ; preds = %for.cond
  br label %do.body620

do.body620:                                       ; preds = %sw.bb619
  br label %while.cond621

while.cond621:                                    ; preds = %do.end638, %do.body620
  %381 = load i32, ptr %bits, align 4
  %cmp622 = icmp ult i32 %381, 32
  br i1 %cmp622, label %while.body624, label %while.end639

while.body624:                                    ; preds = %while.cond621
  br label %do.body625

do.body625:                                       ; preds = %while.body624
  %382 = load i32, ptr %have, align 4
  %cmp626 = icmp eq i32 %382, 0
  br i1 %cmp626, label %if.then628, label %if.end629

if.then628:                                       ; preds = %do.body625
  br label %inf_leave

if.end629:                                        ; preds = %do.body625
  %383 = load i32, ptr %have, align 4
  %dec630 = add i32 %383, -1
  store i32 %dec630, ptr %have, align 4
  %384 = load ptr, ptr %next, align 8
  %incdec.ptr631 = getelementptr inbounds i8, ptr %384, i32 1
  store ptr %incdec.ptr631, ptr %next, align 8
  %385 = load i8, ptr %384, align 1
  %conv632 = zext i8 %385 to i64
  %386 = load i32, ptr %bits, align 4
  %sh_prom633 = zext i32 %386 to i64
  %shl634 = shl i64 %conv632, %sh_prom633
  %387 = load i64, ptr %hold, align 8
  %add635 = add i64 %387, %shl634
  store i64 %add635, ptr %hold, align 8
  %388 = load i32, ptr %bits, align 4
  %add636 = add i32 %388, 8
  store i32 %add636, ptr %bits, align 4
  br label %do.end638

do.end638:                                        ; preds = %if.end629
  br label %while.cond621, !llvm.loop !15

while.end639:                                     ; preds = %while.cond621
  br label %do.end641

do.end641:                                        ; preds = %while.end639
  %389 = load i64, ptr %hold, align 8
  %shr642 = lshr i64 %389, 24
  %and643 = and i64 %shr642, 255
  %390 = load i64, ptr %hold, align 8
  %shr644 = lshr i64 %390, 8
  %and645 = and i64 %shr644, 65280
  %add646 = add i64 %and643, %and645
  %391 = load i64, ptr %hold, align 8
  %and647 = and i64 %391, 65280
  %shl648 = shl i64 %and647, 8
  %add649 = add i64 %add646, %shl648
  %392 = load i64, ptr %hold, align 8
  %and650 = and i64 %392, 255
  %shl651 = shl i64 %and650, 24
  %add652 = add i64 %add649, %shl651
  %393 = load ptr, ptr %state, align 8
  %check653 = getelementptr inbounds %struct.inflate_state, ptr %393, i32 0, i32 7
  store i64 %add652, ptr %check653, align 8
  %394 = load ptr, ptr %strm.addr, align 8
  %adler654 = getelementptr inbounds %struct.z_stream_s, ptr %394, i32 0, i32 12
  store i64 %add652, ptr %adler654, align 8
  br label %do.body655

do.body655:                                       ; preds = %do.end641
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end657

do.end657:                                        ; preds = %do.body655
  %395 = load ptr, ptr %state, align 8
  %mode658 = getelementptr inbounds %struct.inflate_state, ptr %395, i32 0, i32 1
  store i32 16190, ptr %mode658, align 8
  br label %sw.bb659

sw.bb659:                                         ; preds = %for.cond, %do.end657
  %396 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %396, i32 0, i32 4
  %397 = load i32, ptr %havedict, align 4
  %cmp660 = icmp eq i32 %397, 0
  br i1 %cmp660, label %if.then662, label %if.end672

if.then662:                                       ; preds = %sw.bb659
  br label %do.body663

do.body663:                                       ; preds = %if.then662
  %398 = load ptr, ptr %put, align 8
  %399 = load ptr, ptr %strm.addr, align 8
  %next_out664 = getelementptr inbounds %struct.z_stream_s, ptr %399, i32 0, i32 3
  store ptr %398, ptr %next_out664, align 8
  %400 = load i32, ptr %left, align 4
  %401 = load ptr, ptr %strm.addr, align 8
  %avail_out665 = getelementptr inbounds %struct.z_stream_s, ptr %401, i32 0, i32 4
  store i32 %400, ptr %avail_out665, align 8
  %402 = load ptr, ptr %next, align 8
  %403 = load ptr, ptr %strm.addr, align 8
  %next_in666 = getelementptr inbounds %struct.z_stream_s, ptr %403, i32 0, i32 0
  store ptr %402, ptr %next_in666, align 8
  %404 = load i32, ptr %have, align 4
  %405 = load ptr, ptr %strm.addr, align 8
  %avail_in667 = getelementptr inbounds %struct.z_stream_s, ptr %405, i32 0, i32 1
  store i32 %404, ptr %avail_in667, align 8
  %406 = load i64, ptr %hold, align 8
  %407 = load ptr, ptr %state, align 8
  %hold668 = getelementptr inbounds %struct.inflate_state, ptr %407, i32 0, i32 15
  store i64 %406, ptr %hold668, align 8
  %408 = load i32, ptr %bits, align 4
  %409 = load ptr, ptr %state, align 8
  %bits669 = getelementptr inbounds %struct.inflate_state, ptr %409, i32 0, i32 16
  store i32 %408, ptr %bits669, align 8
  br label %do.end671

do.end671:                                        ; preds = %do.body663
  store i32 2, ptr %retval, align 4
  br label %return

if.end672:                                        ; preds = %sw.bb659
  %call673 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %410 = load ptr, ptr %state, align 8
  %check674 = getelementptr inbounds %struct.inflate_state, ptr %410, i32 0, i32 7
  store i64 %call673, ptr %check674, align 8
  %411 = load ptr, ptr %strm.addr, align 8
  %adler675 = getelementptr inbounds %struct.z_stream_s, ptr %411, i32 0, i32 12
  store i64 %call673, ptr %adler675, align 8
  %412 = load ptr, ptr %state, align 8
  %mode676 = getelementptr inbounds %struct.inflate_state, ptr %412, i32 0, i32 1
  store i32 16191, ptr %mode676, align 8
  br label %sw.bb677

sw.bb677:                                         ; preds = %for.cond, %if.end672
  %413 = load i32, ptr %flush.addr, align 4
  %cmp678 = icmp eq i32 %413, 5
  br i1 %cmp678, label %if.then683, label %lor.lhs.false680

lor.lhs.false680:                                 ; preds = %sw.bb677
  %414 = load i32, ptr %flush.addr, align 4
  %cmp681 = icmp eq i32 %414, 6
  br i1 %cmp681, label %if.then683, label %if.end684

if.then683:                                       ; preds = %lor.lhs.false680, %sw.bb677
  br label %inf_leave

if.end684:                                        ; preds = %lor.lhs.false680
  br label %sw.bb685

sw.bb685:                                         ; preds = %for.cond, %if.end684
  %415 = load ptr, ptr %state, align 8
  %last686 = getelementptr inbounds %struct.inflate_state, ptr %415, i32 0, i32 2
  %416 = load i32, ptr %last686, align 4
  %tobool687 = icmp ne i32 %416, 0
  br i1 %tobool687, label %if.then688, label %if.end698

if.then688:                                       ; preds = %sw.bb685
  br label %do.body689

do.body689:                                       ; preds = %if.then688
  %417 = load i32, ptr %bits, align 4
  %and690 = and i32 %417, 7
  %418 = load i64, ptr %hold, align 8
  %sh_prom691 = zext i32 %and690 to i64
  %shr692 = lshr i64 %418, %sh_prom691
  store i64 %shr692, ptr %hold, align 8
  %419 = load i32, ptr %bits, align 4
  %and693 = and i32 %419, 7
  %420 = load i32, ptr %bits, align 4
  %sub694 = sub i32 %420, %and693
  store i32 %sub694, ptr %bits, align 4
  br label %do.end696

do.end696:                                        ; preds = %do.body689
  %421 = load ptr, ptr %state, align 8
  %mode697 = getelementptr inbounds %struct.inflate_state, ptr %421, i32 0, i32 1
  store i32 16206, ptr %mode697, align 8
  br label %sw.epilog1874

if.end698:                                        ; preds = %sw.bb685
  br label %do.body699

do.body699:                                       ; preds = %if.end698
  br label %while.cond700

while.cond700:                                    ; preds = %do.end717, %do.body699
  %422 = load i32, ptr %bits, align 4
  %cmp701 = icmp ult i32 %422, 3
  br i1 %cmp701, label %while.body703, label %while.end718

while.body703:                                    ; preds = %while.cond700
  br label %do.body704

do.body704:                                       ; preds = %while.body703
  %423 = load i32, ptr %have, align 4
  %cmp705 = icmp eq i32 %423, 0
  br i1 %cmp705, label %if.then707, label %if.end708

if.then707:                                       ; preds = %do.body704
  br label %inf_leave

if.end708:                                        ; preds = %do.body704
  %424 = load i32, ptr %have, align 4
  %dec709 = add i32 %424, -1
  store i32 %dec709, ptr %have, align 4
  %425 = load ptr, ptr %next, align 8
  %incdec.ptr710 = getelementptr inbounds i8, ptr %425, i32 1
  store ptr %incdec.ptr710, ptr %next, align 8
  %426 = load i8, ptr %425, align 1
  %conv711 = zext i8 %426 to i64
  %427 = load i32, ptr %bits, align 4
  %sh_prom712 = zext i32 %427 to i64
  %shl713 = shl i64 %conv711, %sh_prom712
  %428 = load i64, ptr %hold, align 8
  %add714 = add i64 %428, %shl713
  store i64 %add714, ptr %hold, align 8
  %429 = load i32, ptr %bits, align 4
  %add715 = add i32 %429, 8
  store i32 %add715, ptr %bits, align 4
  br label %do.end717

do.end717:                                        ; preds = %if.end708
  br label %while.cond700, !llvm.loop !16

while.end718:                                     ; preds = %while.cond700
  br label %do.end720

do.end720:                                        ; preds = %while.end718
  %430 = load i64, ptr %hold, align 8
  %conv721 = trunc i64 %430 to i32
  %and722 = and i32 %conv721, 1
  %431 = load ptr, ptr %state, align 8
  %last723 = getelementptr inbounds %struct.inflate_state, ptr %431, i32 0, i32 2
  store i32 %and722, ptr %last723, align 4
  br label %do.body724

do.body724:                                       ; preds = %do.end720
  %432 = load i64, ptr %hold, align 8
  %shr725 = lshr i64 %432, 1
  store i64 %shr725, ptr %hold, align 8
  %433 = load i32, ptr %bits, align 4
  %sub726 = sub i32 %433, 1
  store i32 %sub726, ptr %bits, align 4
  br label %do.end728

do.end728:                                        ; preds = %do.body724
  %434 = load i64, ptr %hold, align 8
  %conv729 = trunc i64 %434 to i32
  %and730 = and i32 %conv729, 3
  switch i32 %and730, label %sw.default [
    i32 0, label %sw.bb731
    i32 1, label %sw.bb733
    i32 2, label %sw.bb744
  ]

sw.bb731:                                         ; preds = %do.end728
  %435 = load ptr, ptr %state, align 8
  %mode732 = getelementptr inbounds %struct.inflate_state, ptr %435, i32 0, i32 1
  store i32 16193, ptr %mode732, align 8
  br label %sw.epilog

sw.bb733:                                         ; preds = %do.end728
  %436 = load ptr, ptr %state, align 8
  call void @inflate_fixed(ptr noundef %436)
  %437 = load ptr, ptr %state, align 8
  %mode734 = getelementptr inbounds %struct.inflate_state, ptr %437, i32 0, i32 1
  store i32 16199, ptr %mode734, align 8
  %438 = load i32, ptr %flush.addr, align 4
  %cmp735 = icmp eq i32 %438, 6
  br i1 %cmp735, label %if.then737, label %if.end743

if.then737:                                       ; preds = %sw.bb733
  br label %do.body738

do.body738:                                       ; preds = %if.then737
  %439 = load i64, ptr %hold, align 8
  %shr739 = lshr i64 %439, 2
  store i64 %shr739, ptr %hold, align 8
  %440 = load i32, ptr %bits, align 4
  %sub740 = sub i32 %440, 2
  store i32 %sub740, ptr %bits, align 4
  br label %do.end742

do.end742:                                        ; preds = %do.body738
  br label %inf_leave

if.end743:                                        ; preds = %sw.bb733
  br label %sw.epilog

sw.bb744:                                         ; preds = %do.end728
  %441 = load ptr, ptr %state, align 8
  %mode745 = getelementptr inbounds %struct.inflate_state, ptr %441, i32 0, i32 1
  store i32 16196, ptr %mode745, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end728
  %442 = load ptr, ptr %strm.addr, align 8
  %msg746 = getelementptr inbounds %struct.z_stream_s, ptr %442, i32 0, i32 6
  store ptr @.str.6, ptr %msg746, align 8
  %443 = load ptr, ptr %state, align 8
  %mode747 = getelementptr inbounds %struct.inflate_state, ptr %443, i32 0, i32 1
  store i32 16209, ptr %mode747, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb744, %if.end743, %sw.bb731
  br label %do.body748

do.body748:                                       ; preds = %sw.epilog
  %444 = load i64, ptr %hold, align 8
  %shr749 = lshr i64 %444, 2
  store i64 %shr749, ptr %hold, align 8
  %445 = load i32, ptr %bits, align 4
  %sub750 = sub i32 %445, 2
  store i32 %sub750, ptr %bits, align 4
  br label %do.end752

do.end752:                                        ; preds = %do.body748
  br label %sw.epilog1874

sw.bb753:                                         ; preds = %for.cond
  br label %do.body754

do.body754:                                       ; preds = %sw.bb753
  %446 = load i32, ptr %bits, align 4
  %and755 = and i32 %446, 7
  %447 = load i64, ptr %hold, align 8
  %sh_prom756 = zext i32 %and755 to i64
  %shr757 = lshr i64 %447, %sh_prom756
  store i64 %shr757, ptr %hold, align 8
  %448 = load i32, ptr %bits, align 4
  %and758 = and i32 %448, 7
  %449 = load i32, ptr %bits, align 4
  %sub759 = sub i32 %449, %and758
  store i32 %sub759, ptr %bits, align 4
  br label %do.end761

do.end761:                                        ; preds = %do.body754
  br label %do.body762

do.body762:                                       ; preds = %do.end761
  br label %while.cond763

while.cond763:                                    ; preds = %do.end780, %do.body762
  %450 = load i32, ptr %bits, align 4
  %cmp764 = icmp ult i32 %450, 32
  br i1 %cmp764, label %while.body766, label %while.end781

while.body766:                                    ; preds = %while.cond763
  br label %do.body767

do.body767:                                       ; preds = %while.body766
  %451 = load i32, ptr %have, align 4
  %cmp768 = icmp eq i32 %451, 0
  br i1 %cmp768, label %if.then770, label %if.end771

if.then770:                                       ; preds = %do.body767
  br label %inf_leave

if.end771:                                        ; preds = %do.body767
  %452 = load i32, ptr %have, align 4
  %dec772 = add i32 %452, -1
  store i32 %dec772, ptr %have, align 4
  %453 = load ptr, ptr %next, align 8
  %incdec.ptr773 = getelementptr inbounds i8, ptr %453, i32 1
  store ptr %incdec.ptr773, ptr %next, align 8
  %454 = load i8, ptr %453, align 1
  %conv774 = zext i8 %454 to i64
  %455 = load i32, ptr %bits, align 4
  %sh_prom775 = zext i32 %455 to i64
  %shl776 = shl i64 %conv774, %sh_prom775
  %456 = load i64, ptr %hold, align 8
  %add777 = add i64 %456, %shl776
  store i64 %add777, ptr %hold, align 8
  %457 = load i32, ptr %bits, align 4
  %add778 = add i32 %457, 8
  store i32 %add778, ptr %bits, align 4
  br label %do.end780

do.end780:                                        ; preds = %if.end771
  br label %while.cond763, !llvm.loop !17

while.end781:                                     ; preds = %while.cond763
  br label %do.end783

do.end783:                                        ; preds = %while.end781
  %458 = load i64, ptr %hold, align 8
  %and784 = and i64 %458, 65535
  %459 = load i64, ptr %hold, align 8
  %shr785 = lshr i64 %459, 16
  %xor = xor i64 %shr785, 65535
  %cmp786 = icmp ne i64 %and784, %xor
  br i1 %cmp786, label %if.then788, label %if.end791

if.then788:                                       ; preds = %do.end783
  %460 = load ptr, ptr %strm.addr, align 8
  %msg789 = getelementptr inbounds %struct.z_stream_s, ptr %460, i32 0, i32 6
  store ptr @.str.7, ptr %msg789, align 8
  %461 = load ptr, ptr %state, align 8
  %mode790 = getelementptr inbounds %struct.inflate_state, ptr %461, i32 0, i32 1
  store i32 16209, ptr %mode790, align 8
  br label %sw.epilog1874

if.end791:                                        ; preds = %do.end783
  %462 = load i64, ptr %hold, align 8
  %conv792 = trunc i64 %462 to i32
  %and793 = and i32 %conv792, 65535
  %463 = load ptr, ptr %state, align 8
  %length794 = getelementptr inbounds %struct.inflate_state, ptr %463, i32 0, i32 17
  store i32 %and793, ptr %length794, align 4
  br label %do.body795

do.body795:                                       ; preds = %if.end791
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end797

do.end797:                                        ; preds = %do.body795
  %464 = load ptr, ptr %state, align 8
  %mode798 = getelementptr inbounds %struct.inflate_state, ptr %464, i32 0, i32 1
  store i32 16194, ptr %mode798, align 8
  %465 = load i32, ptr %flush.addr, align 4
  %cmp799 = icmp eq i32 %465, 6
  br i1 %cmp799, label %if.then801, label %if.end802

if.then801:                                       ; preds = %do.end797
  br label %inf_leave

if.end802:                                        ; preds = %do.end797
  br label %sw.bb803

sw.bb803:                                         ; preds = %for.cond, %if.end802
  %466 = load ptr, ptr %state, align 8
  %mode804 = getelementptr inbounds %struct.inflate_state, ptr %466, i32 0, i32 1
  store i32 16195, ptr %mode804, align 8
  br label %sw.bb805

sw.bb805:                                         ; preds = %for.cond, %sw.bb803
  %467 = load ptr, ptr %state, align 8
  %length806 = getelementptr inbounds %struct.inflate_state, ptr %467, i32 0, i32 17
  %468 = load i32, ptr %length806, align 4
  store i32 %468, ptr %copy, align 4
  %469 = load i32, ptr %copy, align 4
  %tobool807 = icmp ne i32 %469, 0
  br i1 %tobool807, label %if.then808, label %if.end831

if.then808:                                       ; preds = %sw.bb805
  %470 = load i32, ptr %copy, align 4
  %471 = load i32, ptr %have, align 4
  %cmp809 = icmp ugt i32 %470, %471
  br i1 %cmp809, label %if.then811, label %if.end812

if.then811:                                       ; preds = %if.then808
  %472 = load i32, ptr %have, align 4
  store i32 %472, ptr %copy, align 4
  br label %if.end812

if.end812:                                        ; preds = %if.then811, %if.then808
  %473 = load i32, ptr %copy, align 4
  %474 = load i32, ptr %left, align 4
  %cmp813 = icmp ugt i32 %473, %474
  br i1 %cmp813, label %if.then815, label %if.end816

if.then815:                                       ; preds = %if.end812
  %475 = load i32, ptr %left, align 4
  store i32 %475, ptr %copy, align 4
  br label %if.end816

if.end816:                                        ; preds = %if.then815, %if.end812
  %476 = load i32, ptr %copy, align 4
  %cmp817 = icmp eq i32 %476, 0
  br i1 %cmp817, label %if.then819, label %if.end820

if.then819:                                       ; preds = %if.end816
  br label %inf_leave

if.end820:                                        ; preds = %if.end816
  %477 = load ptr, ptr %put, align 8
  %478 = load ptr, ptr %next, align 8
  %479 = load i32, ptr %copy, align 4
  %conv821 = zext i32 %479 to i64
  %480 = load ptr, ptr %put, align 8
  %481 = call i64 @llvm.objectsize.i64.p0(ptr %480, i1 false, i1 true, i1 false)
  %call822 = call ptr @__memcpy_chk(ptr noundef %477, ptr noundef %478, i64 noundef %conv821, i64 noundef %481) #5
  %482 = load i32, ptr %copy, align 4
  %483 = load i32, ptr %have, align 4
  %sub823 = sub i32 %483, %482
  store i32 %sub823, ptr %have, align 4
  %484 = load i32, ptr %copy, align 4
  %485 = load ptr, ptr %next, align 8
  %idx.ext824 = zext i32 %484 to i64
  %add.ptr825 = getelementptr inbounds i8, ptr %485, i64 %idx.ext824
  store ptr %add.ptr825, ptr %next, align 8
  %486 = load i32, ptr %copy, align 4
  %487 = load i32, ptr %left, align 4
  %sub826 = sub i32 %487, %486
  store i32 %sub826, ptr %left, align 4
  %488 = load i32, ptr %copy, align 4
  %489 = load ptr, ptr %put, align 8
  %idx.ext827 = zext i32 %488 to i64
  %add.ptr828 = getelementptr inbounds i8, ptr %489, i64 %idx.ext827
  store ptr %add.ptr828, ptr %put, align 8
  %490 = load i32, ptr %copy, align 4
  %491 = load ptr, ptr %state, align 8
  %length829 = getelementptr inbounds %struct.inflate_state, ptr %491, i32 0, i32 17
  %492 = load i32, ptr %length829, align 4
  %sub830 = sub i32 %492, %490
  store i32 %sub830, ptr %length829, align 4
  br label %sw.epilog1874

if.end831:                                        ; preds = %sw.bb805
  %493 = load ptr, ptr %state, align 8
  %mode832 = getelementptr inbounds %struct.inflate_state, ptr %493, i32 0, i32 1
  store i32 16191, ptr %mode832, align 8
  br label %sw.epilog1874

sw.bb833:                                         ; preds = %for.cond
  br label %do.body834

do.body834:                                       ; preds = %sw.bb833
  br label %while.cond835

while.cond835:                                    ; preds = %do.end852, %do.body834
  %494 = load i32, ptr %bits, align 4
  %cmp836 = icmp ult i32 %494, 14
  br i1 %cmp836, label %while.body838, label %while.end853

while.body838:                                    ; preds = %while.cond835
  br label %do.body839

do.body839:                                       ; preds = %while.body838
  %495 = load i32, ptr %have, align 4
  %cmp840 = icmp eq i32 %495, 0
  br i1 %cmp840, label %if.then842, label %if.end843

if.then842:                                       ; preds = %do.body839
  br label %inf_leave

if.end843:                                        ; preds = %do.body839
  %496 = load i32, ptr %have, align 4
  %dec844 = add i32 %496, -1
  store i32 %dec844, ptr %have, align 4
  %497 = load ptr, ptr %next, align 8
  %incdec.ptr845 = getelementptr inbounds i8, ptr %497, i32 1
  store ptr %incdec.ptr845, ptr %next, align 8
  %498 = load i8, ptr %497, align 1
  %conv846 = zext i8 %498 to i64
  %499 = load i32, ptr %bits, align 4
  %sh_prom847 = zext i32 %499 to i64
  %shl848 = shl i64 %conv846, %sh_prom847
  %500 = load i64, ptr %hold, align 8
  %add849 = add i64 %500, %shl848
  store i64 %add849, ptr %hold, align 8
  %501 = load i32, ptr %bits, align 4
  %add850 = add i32 %501, 8
  store i32 %add850, ptr %bits, align 4
  br label %do.end852

do.end852:                                        ; preds = %if.end843
  br label %while.cond835, !llvm.loop !18

while.end853:                                     ; preds = %while.cond835
  br label %do.end855

do.end855:                                        ; preds = %while.end853
  %502 = load i64, ptr %hold, align 8
  %conv856 = trunc i64 %502 to i32
  %and857 = and i32 %conv856, 31
  %add858 = add i32 %and857, 257
  %503 = load ptr, ptr %state, align 8
  %nlen = getelementptr inbounds %struct.inflate_state, ptr %503, i32 0, i32 25
  store i32 %add858, ptr %nlen, align 4
  br label %do.body859

do.body859:                                       ; preds = %do.end855
  %504 = load i64, ptr %hold, align 8
  %shr860 = lshr i64 %504, 5
  store i64 %shr860, ptr %hold, align 8
  %505 = load i32, ptr %bits, align 4
  %sub861 = sub i32 %505, 5
  store i32 %sub861, ptr %bits, align 4
  br label %do.end863

do.end863:                                        ; preds = %do.body859
  %506 = load i64, ptr %hold, align 8
  %conv864 = trunc i64 %506 to i32
  %and865 = and i32 %conv864, 31
  %add866 = add i32 %and865, 1
  %507 = load ptr, ptr %state, align 8
  %ndist = getelementptr inbounds %struct.inflate_state, ptr %507, i32 0, i32 26
  store i32 %add866, ptr %ndist, align 8
  br label %do.body867

do.body867:                                       ; preds = %do.end863
  %508 = load i64, ptr %hold, align 8
  %shr868 = lshr i64 %508, 5
  store i64 %shr868, ptr %hold, align 8
  %509 = load i32, ptr %bits, align 4
  %sub869 = sub i32 %509, 5
  store i32 %sub869, ptr %bits, align 4
  br label %do.end871

do.end871:                                        ; preds = %do.body867
  %510 = load i64, ptr %hold, align 8
  %conv872 = trunc i64 %510 to i32
  %and873 = and i32 %conv872, 15
  %add874 = add i32 %and873, 4
  %511 = load ptr, ptr %state, align 8
  %ncode = getelementptr inbounds %struct.inflate_state, ptr %511, i32 0, i32 24
  store i32 %add874, ptr %ncode, align 8
  br label %do.body875

do.body875:                                       ; preds = %do.end871
  %512 = load i64, ptr %hold, align 8
  %shr876 = lshr i64 %512, 4
  store i64 %shr876, ptr %hold, align 8
  %513 = load i32, ptr %bits, align 4
  %sub877 = sub i32 %513, 4
  store i32 %sub877, ptr %bits, align 4
  br label %do.end879

do.end879:                                        ; preds = %do.body875
  %514 = load ptr, ptr %state, align 8
  %nlen880 = getelementptr inbounds %struct.inflate_state, ptr %514, i32 0, i32 25
  %515 = load i32, ptr %nlen880, align 4
  %cmp881 = icmp ugt i32 %515, 286
  br i1 %cmp881, label %if.then887, label %lor.lhs.false883

lor.lhs.false883:                                 ; preds = %do.end879
  %516 = load ptr, ptr %state, align 8
  %ndist884 = getelementptr inbounds %struct.inflate_state, ptr %516, i32 0, i32 26
  %517 = load i32, ptr %ndist884, align 8
  %cmp885 = icmp ugt i32 %517, 30
  br i1 %cmp885, label %if.then887, label %if.end890

if.then887:                                       ; preds = %lor.lhs.false883, %do.end879
  %518 = load ptr, ptr %strm.addr, align 8
  %msg888 = getelementptr inbounds %struct.z_stream_s, ptr %518, i32 0, i32 6
  store ptr @.str.8, ptr %msg888, align 8
  %519 = load ptr, ptr %state, align 8
  %mode889 = getelementptr inbounds %struct.inflate_state, ptr %519, i32 0, i32 1
  store i32 16209, ptr %mode889, align 8
  br label %sw.epilog1874

if.end890:                                        ; preds = %lor.lhs.false883
  %520 = load ptr, ptr %state, align 8
  %have891 = getelementptr inbounds %struct.inflate_state, ptr %520, i32 0, i32 27
  store i32 0, ptr %have891, align 4
  %521 = load ptr, ptr %state, align 8
  %mode892 = getelementptr inbounds %struct.inflate_state, ptr %521, i32 0, i32 1
  store i32 16197, ptr %mode892, align 8
  br label %sw.bb893

sw.bb893:                                         ; preds = %for.cond, %if.end890
  br label %while.cond894

while.cond894:                                    ; preds = %do.end935, %sw.bb893
  %522 = load ptr, ptr %state, align 8
  %have895 = getelementptr inbounds %struct.inflate_state, ptr %522, i32 0, i32 27
  %523 = load i32, ptr %have895, align 4
  %524 = load ptr, ptr %state, align 8
  %ncode896 = getelementptr inbounds %struct.inflate_state, ptr %524, i32 0, i32 24
  %525 = load i32, ptr %ncode896, align 8
  %cmp897 = icmp ult i32 %523, %525
  br i1 %cmp897, label %while.body899, label %while.end936

while.body899:                                    ; preds = %while.cond894
  br label %do.body900

do.body900:                                       ; preds = %while.body899
  br label %while.cond901

while.cond901:                                    ; preds = %do.end918, %do.body900
  %526 = load i32, ptr %bits, align 4
  %cmp902 = icmp ult i32 %526, 3
  br i1 %cmp902, label %while.body904, label %while.end919

while.body904:                                    ; preds = %while.cond901
  br label %do.body905

do.body905:                                       ; preds = %while.body904
  %527 = load i32, ptr %have, align 4
  %cmp906 = icmp eq i32 %527, 0
  br i1 %cmp906, label %if.then908, label %if.end909

if.then908:                                       ; preds = %do.body905
  br label %inf_leave

if.end909:                                        ; preds = %do.body905
  %528 = load i32, ptr %have, align 4
  %dec910 = add i32 %528, -1
  store i32 %dec910, ptr %have, align 4
  %529 = load ptr, ptr %next, align 8
  %incdec.ptr911 = getelementptr inbounds i8, ptr %529, i32 1
  store ptr %incdec.ptr911, ptr %next, align 8
  %530 = load i8, ptr %529, align 1
  %conv912 = zext i8 %530 to i64
  %531 = load i32, ptr %bits, align 4
  %sh_prom913 = zext i32 %531 to i64
  %shl914 = shl i64 %conv912, %sh_prom913
  %532 = load i64, ptr %hold, align 8
  %add915 = add i64 %532, %shl914
  store i64 %add915, ptr %hold, align 8
  %533 = load i32, ptr %bits, align 4
  %add916 = add i32 %533, 8
  store i32 %add916, ptr %bits, align 4
  br label %do.end918

do.end918:                                        ; preds = %if.end909
  br label %while.cond901, !llvm.loop !19

while.end919:                                     ; preds = %while.cond901
  br label %do.end921

do.end921:                                        ; preds = %while.end919
  %534 = load i64, ptr %hold, align 8
  %conv922 = trunc i64 %534 to i32
  %and923 = and i32 %conv922, 7
  %conv924 = trunc i32 %and923 to i16
  %535 = load ptr, ptr %state, align 8
  %lens = getelementptr inbounds %struct.inflate_state, ptr %535, i32 0, i32 29
  %536 = load ptr, ptr %state, align 8
  %have925 = getelementptr inbounds %struct.inflate_state, ptr %536, i32 0, i32 27
  %537 = load i32, ptr %have925, align 4
  %inc926 = add i32 %537, 1
  store i32 %inc926, ptr %have925, align 4
  %idxprom927 = zext i32 %537 to i64
  %arrayidx928 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %idxprom927
  %538 = load i16, ptr %arrayidx928, align 2
  %idxprom929 = zext i16 %538 to i64
  %arrayidx930 = getelementptr inbounds [320 x i16], ptr %lens, i64 0, i64 %idxprom929
  store i16 %conv924, ptr %arrayidx930, align 2
  br label %do.body931

do.body931:                                       ; preds = %do.end921
  %539 = load i64, ptr %hold, align 8
  %shr932 = lshr i64 %539, 3
  store i64 %shr932, ptr %hold, align 8
  %540 = load i32, ptr %bits, align 4
  %sub933 = sub i32 %540, 3
  store i32 %sub933, ptr %bits, align 4
  br label %do.end935

do.end935:                                        ; preds = %do.body931
  br label %while.cond894, !llvm.loop !20

while.end936:                                     ; preds = %while.cond894
  br label %while.cond937

while.cond937:                                    ; preds = %while.body941, %while.end936
  %541 = load ptr, ptr %state, align 8
  %have938 = getelementptr inbounds %struct.inflate_state, ptr %541, i32 0, i32 27
  %542 = load i32, ptr %have938, align 4
  %cmp939 = icmp ult i32 %542, 19
  br i1 %cmp939, label %while.body941, label %while.end949

while.body941:                                    ; preds = %while.cond937
  %543 = load ptr, ptr %state, align 8
  %lens942 = getelementptr inbounds %struct.inflate_state, ptr %543, i32 0, i32 29
  %544 = load ptr, ptr %state, align 8
  %have943 = getelementptr inbounds %struct.inflate_state, ptr %544, i32 0, i32 27
  %545 = load i32, ptr %have943, align 4
  %inc944 = add i32 %545, 1
  store i32 %inc944, ptr %have943, align 4
  %idxprom945 = zext i32 %545 to i64
  %arrayidx946 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %idxprom945
  %546 = load i16, ptr %arrayidx946, align 2
  %idxprom947 = zext i16 %546 to i64
  %arrayidx948 = getelementptr inbounds [320 x i16], ptr %lens942, i64 0, i64 %idxprom947
  store i16 0, ptr %arrayidx948, align 2
  br label %while.cond937, !llvm.loop !21

while.end949:                                     ; preds = %while.cond937
  %547 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %547, i32 0, i32 31
  %arraydecay950 = getelementptr inbounds [1444 x %struct.code], ptr %codes, i64 0, i64 0
  %548 = load ptr, ptr %state, align 8
  %next951 = getelementptr inbounds %struct.inflate_state, ptr %548, i32 0, i32 28
  store ptr %arraydecay950, ptr %next951, align 8
  %549 = load ptr, ptr %state, align 8
  %next952 = getelementptr inbounds %struct.inflate_state, ptr %549, i32 0, i32 28
  %550 = load ptr, ptr %next952, align 8
  %551 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %551, i32 0, i32 21
  store ptr %550, ptr %distcode, align 8
  %552 = load ptr, ptr %state, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %552, i32 0, i32 20
  store ptr %550, ptr %lencode, align 8
  %553 = load ptr, ptr %state, align 8
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %553, i32 0, i32 22
  store i32 7, ptr %lenbits, align 8
  %554 = load ptr, ptr %state, align 8
  %lens953 = getelementptr inbounds %struct.inflate_state, ptr %554, i32 0, i32 29
  %arraydecay954 = getelementptr inbounds [320 x i16], ptr %lens953, i64 0, i64 0
  %555 = load ptr, ptr %state, align 8
  %next955 = getelementptr inbounds %struct.inflate_state, ptr %555, i32 0, i32 28
  %556 = load ptr, ptr %state, align 8
  %lenbits956 = getelementptr inbounds %struct.inflate_state, ptr %556, i32 0, i32 22
  %557 = load ptr, ptr %state, align 8
  %work = getelementptr inbounds %struct.inflate_state, ptr %557, i32 0, i32 30
  %arraydecay957 = getelementptr inbounds [288 x i16], ptr %work, i64 0, i64 0
  %call958 = call i32 @inflate_table(i32 noundef 0, ptr noundef %arraydecay954, i32 noundef 19, ptr noundef %next955, ptr noundef %lenbits956, ptr noundef %arraydecay957)
  store i32 %call958, ptr %ret, align 4
  %558 = load i32, ptr %ret, align 4
  %tobool959 = icmp ne i32 %558, 0
  br i1 %tobool959, label %if.then960, label %if.end963

if.then960:                                       ; preds = %while.end949
  %559 = load ptr, ptr %strm.addr, align 8
  %msg961 = getelementptr inbounds %struct.z_stream_s, ptr %559, i32 0, i32 6
  store ptr @.str.9, ptr %msg961, align 8
  %560 = load ptr, ptr %state, align 8
  %mode962 = getelementptr inbounds %struct.inflate_state, ptr %560, i32 0, i32 1
  store i32 16209, ptr %mode962, align 8
  br label %sw.epilog1874

if.end963:                                        ; preds = %while.end949
  %561 = load ptr, ptr %state, align 8
  %have964 = getelementptr inbounds %struct.inflate_state, ptr %561, i32 0, i32 27
  store i32 0, ptr %have964, align 4
  %562 = load ptr, ptr %state, align 8
  %mode965 = getelementptr inbounds %struct.inflate_state, ptr %562, i32 0, i32 1
  store i32 16198, ptr %mode965, align 8
  br label %sw.bb966

sw.bb966:                                         ; preds = %for.cond, %if.end963
  br label %while.cond967

while.cond967:                                    ; preds = %if.end1203, %sw.bb966
  %563 = load ptr, ptr %state, align 8
  %have968 = getelementptr inbounds %struct.inflate_state, ptr %563, i32 0, i32 27
  %564 = load i32, ptr %have968, align 4
  %565 = load ptr, ptr %state, align 8
  %nlen969 = getelementptr inbounds %struct.inflate_state, ptr %565, i32 0, i32 25
  %566 = load i32, ptr %nlen969, align 4
  %567 = load ptr, ptr %state, align 8
  %ndist970 = getelementptr inbounds %struct.inflate_state, ptr %567, i32 0, i32 26
  %568 = load i32, ptr %ndist970, align 8
  %add971 = add i32 %566, %568
  %cmp972 = icmp ult i32 %564, %add971
  br i1 %cmp972, label %while.body974, label %while.end1204

while.body974:                                    ; preds = %while.cond967
  br label %for.cond975

for.cond975:                                      ; preds = %do.end1003, %while.body974
  %569 = load ptr, ptr %state, align 8
  %lencode976 = getelementptr inbounds %struct.inflate_state, ptr %569, i32 0, i32 20
  %570 = load ptr, ptr %lencode976, align 8
  %571 = load i64, ptr %hold, align 8
  %conv977 = trunc i64 %571 to i32
  %572 = load ptr, ptr %state, align 8
  %lenbits978 = getelementptr inbounds %struct.inflate_state, ptr %572, i32 0, i32 22
  %573 = load i32, ptr %lenbits978, align 8
  %shl979 = shl i32 1, %573
  %sub980 = sub i32 %shl979, 1
  %and981 = and i32 %conv977, %sub980
  %idxprom982 = zext i32 %and981 to i64
  %arrayidx983 = getelementptr inbounds %struct.code, ptr %570, i64 %idxprom982
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx983, i64 4, i1 false)
  %bits984 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %574 = load i8, ptr %bits984, align 1
  %conv985 = zext i8 %574 to i32
  %575 = load i32, ptr %bits, align 4
  %cmp986 = icmp ule i32 %conv985, %575
  br i1 %cmp986, label %if.then988, label %if.end989

if.then988:                                       ; preds = %for.cond975
  br label %for.end

if.end989:                                        ; preds = %for.cond975
  br label %do.body990

do.body990:                                       ; preds = %if.end989
  %576 = load i32, ptr %have, align 4
  %cmp991 = icmp eq i32 %576, 0
  br i1 %cmp991, label %if.then993, label %if.end994

if.then993:                                       ; preds = %do.body990
  br label %inf_leave

if.end994:                                        ; preds = %do.body990
  %577 = load i32, ptr %have, align 4
  %dec995 = add i32 %577, -1
  store i32 %dec995, ptr %have, align 4
  %578 = load ptr, ptr %next, align 8
  %incdec.ptr996 = getelementptr inbounds i8, ptr %578, i32 1
  store ptr %incdec.ptr996, ptr %next, align 8
  %579 = load i8, ptr %578, align 1
  %conv997 = zext i8 %579 to i64
  %580 = load i32, ptr %bits, align 4
  %sh_prom998 = zext i32 %580 to i64
  %shl999 = shl i64 %conv997, %sh_prom998
  %581 = load i64, ptr %hold, align 8
  %add1000 = add i64 %581, %shl999
  store i64 %add1000, ptr %hold, align 8
  %582 = load i32, ptr %bits, align 4
  %add1001 = add i32 %582, 8
  store i32 %add1001, ptr %bits, align 4
  br label %do.end1003

do.end1003:                                       ; preds = %if.end994
  br label %for.cond975

for.end:                                          ; preds = %if.then988
  %val = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %583 = load i16, ptr %val, align 2
  %conv1004 = zext i16 %583 to i32
  %cmp1005 = icmp slt i32 %conv1004, 16
  br i1 %cmp1005, label %if.then1007, label %if.else1024

if.then1007:                                      ; preds = %for.end
  br label %do.body1008

do.body1008:                                      ; preds = %if.then1007
  %bits1009 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %584 = load i8, ptr %bits1009, align 1
  %conv1010 = zext i8 %584 to i32
  %585 = load i64, ptr %hold, align 8
  %sh_prom1011 = zext i32 %conv1010 to i64
  %shr1012 = lshr i64 %585, %sh_prom1011
  store i64 %shr1012, ptr %hold, align 8
  %bits1013 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %586 = load i8, ptr %bits1013, align 1
  %conv1014 = zext i8 %586 to i32
  %587 = load i32, ptr %bits, align 4
  %sub1015 = sub i32 %587, %conv1014
  store i32 %sub1015, ptr %bits, align 4
  br label %do.end1017

do.end1017:                                       ; preds = %do.body1008
  %val1018 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %588 = load i16, ptr %val1018, align 2
  %589 = load ptr, ptr %state, align 8
  %lens1019 = getelementptr inbounds %struct.inflate_state, ptr %589, i32 0, i32 29
  %590 = load ptr, ptr %state, align 8
  %have1020 = getelementptr inbounds %struct.inflate_state, ptr %590, i32 0, i32 27
  %591 = load i32, ptr %have1020, align 4
  %inc1021 = add i32 %591, 1
  store i32 %inc1021, ptr %have1020, align 4
  %idxprom1022 = zext i32 %591 to i64
  %arrayidx1023 = getelementptr inbounds [320 x i16], ptr %lens1019, i64 0, i64 %idxprom1022
  store i16 %588, ptr %arrayidx1023, align 2
  br label %if.end1203

if.else1024:                                      ; preds = %for.end
  %val1025 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %592 = load i16, ptr %val1025, align 2
  %conv1026 = zext i16 %592 to i32
  %cmp1027 = icmp eq i32 %conv1026, 16
  br i1 %cmp1027, label %if.then1029, label %if.else1086

if.then1029:                                      ; preds = %if.else1024
  br label %do.body1030

do.body1030:                                      ; preds = %if.then1029
  br label %while.cond1031

while.cond1031:                                   ; preds = %do.end1051, %do.body1030
  %593 = load i32, ptr %bits, align 4
  %bits1032 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %594 = load i8, ptr %bits1032, align 1
  %conv1033 = zext i8 %594 to i32
  %add1034 = add nsw i32 %conv1033, 2
  %cmp1035 = icmp ult i32 %593, %add1034
  br i1 %cmp1035, label %while.body1037, label %while.end1052

while.body1037:                                   ; preds = %while.cond1031
  br label %do.body1038

do.body1038:                                      ; preds = %while.body1037
  %595 = load i32, ptr %have, align 4
  %cmp1039 = icmp eq i32 %595, 0
  br i1 %cmp1039, label %if.then1041, label %if.end1042

if.then1041:                                      ; preds = %do.body1038
  br label %inf_leave

if.end1042:                                       ; preds = %do.body1038
  %596 = load i32, ptr %have, align 4
  %dec1043 = add i32 %596, -1
  store i32 %dec1043, ptr %have, align 4
  %597 = load ptr, ptr %next, align 8
  %incdec.ptr1044 = getelementptr inbounds i8, ptr %597, i32 1
  store ptr %incdec.ptr1044, ptr %next, align 8
  %598 = load i8, ptr %597, align 1
  %conv1045 = zext i8 %598 to i64
  %599 = load i32, ptr %bits, align 4
  %sh_prom1046 = zext i32 %599 to i64
  %shl1047 = shl i64 %conv1045, %sh_prom1046
  %600 = load i64, ptr %hold, align 8
  %add1048 = add i64 %600, %shl1047
  store i64 %add1048, ptr %hold, align 8
  %601 = load i32, ptr %bits, align 4
  %add1049 = add i32 %601, 8
  store i32 %add1049, ptr %bits, align 4
  br label %do.end1051

do.end1051:                                       ; preds = %if.end1042
  br label %while.cond1031, !llvm.loop !22

while.end1052:                                    ; preds = %while.cond1031
  br label %do.end1054

do.end1054:                                       ; preds = %while.end1052
  br label %do.body1055

do.body1055:                                      ; preds = %do.end1054
  %bits1056 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %602 = load i8, ptr %bits1056, align 1
  %conv1057 = zext i8 %602 to i32
  %603 = load i64, ptr %hold, align 8
  %sh_prom1058 = zext i32 %conv1057 to i64
  %shr1059 = lshr i64 %603, %sh_prom1058
  store i64 %shr1059, ptr %hold, align 8
  %bits1060 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %604 = load i8, ptr %bits1060, align 1
  %conv1061 = zext i8 %604 to i32
  %605 = load i32, ptr %bits, align 4
  %sub1062 = sub i32 %605, %conv1061
  store i32 %sub1062, ptr %bits, align 4
  br label %do.end1064

do.end1064:                                       ; preds = %do.body1055
  %606 = load ptr, ptr %state, align 8
  %have1065 = getelementptr inbounds %struct.inflate_state, ptr %606, i32 0, i32 27
  %607 = load i32, ptr %have1065, align 4
  %cmp1066 = icmp eq i32 %607, 0
  br i1 %cmp1066, label %if.then1068, label %if.end1071

if.then1068:                                      ; preds = %do.end1064
  %608 = load ptr, ptr %strm.addr, align 8
  %msg1069 = getelementptr inbounds %struct.z_stream_s, ptr %608, i32 0, i32 6
  store ptr @.str.10, ptr %msg1069, align 8
  %609 = load ptr, ptr %state, align 8
  %mode1070 = getelementptr inbounds %struct.inflate_state, ptr %609, i32 0, i32 1
  store i32 16209, ptr %mode1070, align 8
  br label %while.end1204

if.end1071:                                       ; preds = %do.end1064
  %610 = load ptr, ptr %state, align 8
  %lens1072 = getelementptr inbounds %struct.inflate_state, ptr %610, i32 0, i32 29
  %611 = load ptr, ptr %state, align 8
  %have1073 = getelementptr inbounds %struct.inflate_state, ptr %611, i32 0, i32 27
  %612 = load i32, ptr %have1073, align 4
  %sub1074 = sub i32 %612, 1
  %idxprom1075 = zext i32 %sub1074 to i64
  %arrayidx1076 = getelementptr inbounds [320 x i16], ptr %lens1072, i64 0, i64 %idxprom1075
  %613 = load i16, ptr %arrayidx1076, align 2
  %conv1077 = zext i16 %613 to i32
  store i32 %conv1077, ptr %len, align 4
  %614 = load i64, ptr %hold, align 8
  %conv1078 = trunc i64 %614 to i32
  %and1079 = and i32 %conv1078, 3
  %add1080 = add i32 3, %and1079
  store i32 %add1080, ptr %copy, align 4
  br label %do.body1081

do.body1081:                                      ; preds = %if.end1071
  %615 = load i64, ptr %hold, align 8
  %shr1082 = lshr i64 %615, 2
  store i64 %shr1082, ptr %hold, align 8
  %616 = load i32, ptr %bits, align 4
  %sub1083 = sub i32 %616, 2
  store i32 %sub1083, ptr %bits, align 4
  br label %do.end1085

do.end1085:                                       ; preds = %do.body1081
  br label %if.end1180

if.else1086:                                      ; preds = %if.else1024
  %val1087 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %617 = load i16, ptr %val1087, align 2
  %conv1088 = zext i16 %617 to i32
  %cmp1089 = icmp eq i32 %conv1088, 17
  br i1 %cmp1089, label %if.then1091, label %if.else1135

if.then1091:                                      ; preds = %if.else1086
  br label %do.body1092

do.body1092:                                      ; preds = %if.then1091
  br label %while.cond1093

while.cond1093:                                   ; preds = %do.end1113, %do.body1092
  %618 = load i32, ptr %bits, align 4
  %bits1094 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %619 = load i8, ptr %bits1094, align 1
  %conv1095 = zext i8 %619 to i32
  %add1096 = add nsw i32 %conv1095, 3
  %cmp1097 = icmp ult i32 %618, %add1096
  br i1 %cmp1097, label %while.body1099, label %while.end1114

while.body1099:                                   ; preds = %while.cond1093
  br label %do.body1100

do.body1100:                                      ; preds = %while.body1099
  %620 = load i32, ptr %have, align 4
  %cmp1101 = icmp eq i32 %620, 0
  br i1 %cmp1101, label %if.then1103, label %if.end1104

if.then1103:                                      ; preds = %do.body1100
  br label %inf_leave

if.end1104:                                       ; preds = %do.body1100
  %621 = load i32, ptr %have, align 4
  %dec1105 = add i32 %621, -1
  store i32 %dec1105, ptr %have, align 4
  %622 = load ptr, ptr %next, align 8
  %incdec.ptr1106 = getelementptr inbounds i8, ptr %622, i32 1
  store ptr %incdec.ptr1106, ptr %next, align 8
  %623 = load i8, ptr %622, align 1
  %conv1107 = zext i8 %623 to i64
  %624 = load i32, ptr %bits, align 4
  %sh_prom1108 = zext i32 %624 to i64
  %shl1109 = shl i64 %conv1107, %sh_prom1108
  %625 = load i64, ptr %hold, align 8
  %add1110 = add i64 %625, %shl1109
  store i64 %add1110, ptr %hold, align 8
  %626 = load i32, ptr %bits, align 4
  %add1111 = add i32 %626, 8
  store i32 %add1111, ptr %bits, align 4
  br label %do.end1113

do.end1113:                                       ; preds = %if.end1104
  br label %while.cond1093, !llvm.loop !23

while.end1114:                                    ; preds = %while.cond1093
  br label %do.end1116

do.end1116:                                       ; preds = %while.end1114
  br label %do.body1117

do.body1117:                                      ; preds = %do.end1116
  %bits1118 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %627 = load i8, ptr %bits1118, align 1
  %conv1119 = zext i8 %627 to i32
  %628 = load i64, ptr %hold, align 8
  %sh_prom1120 = zext i32 %conv1119 to i64
  %shr1121 = lshr i64 %628, %sh_prom1120
  store i64 %shr1121, ptr %hold, align 8
  %bits1122 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %629 = load i8, ptr %bits1122, align 1
  %conv1123 = zext i8 %629 to i32
  %630 = load i32, ptr %bits, align 4
  %sub1124 = sub i32 %630, %conv1123
  store i32 %sub1124, ptr %bits, align 4
  br label %do.end1126

do.end1126:                                       ; preds = %do.body1117
  store i32 0, ptr %len, align 4
  %631 = load i64, ptr %hold, align 8
  %conv1127 = trunc i64 %631 to i32
  %and1128 = and i32 %conv1127, 7
  %add1129 = add i32 3, %and1128
  store i32 %add1129, ptr %copy, align 4
  br label %do.body1130

do.body1130:                                      ; preds = %do.end1126
  %632 = load i64, ptr %hold, align 8
  %shr1131 = lshr i64 %632, 3
  store i64 %shr1131, ptr %hold, align 8
  %633 = load i32, ptr %bits, align 4
  %sub1132 = sub i32 %633, 3
  store i32 %sub1132, ptr %bits, align 4
  br label %do.end1134

do.end1134:                                       ; preds = %do.body1130
  br label %if.end1179

if.else1135:                                      ; preds = %if.else1086
  br label %do.body1136

do.body1136:                                      ; preds = %if.else1135
  br label %while.cond1137

while.cond1137:                                   ; preds = %do.end1157, %do.body1136
  %634 = load i32, ptr %bits, align 4
  %bits1138 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %635 = load i8, ptr %bits1138, align 1
  %conv1139 = zext i8 %635 to i32
  %add1140 = add nsw i32 %conv1139, 7
  %cmp1141 = icmp ult i32 %634, %add1140
  br i1 %cmp1141, label %while.body1143, label %while.end1158

while.body1143:                                   ; preds = %while.cond1137
  br label %do.body1144

do.body1144:                                      ; preds = %while.body1143
  %636 = load i32, ptr %have, align 4
  %cmp1145 = icmp eq i32 %636, 0
  br i1 %cmp1145, label %if.then1147, label %if.end1148

if.then1147:                                      ; preds = %do.body1144
  br label %inf_leave

if.end1148:                                       ; preds = %do.body1144
  %637 = load i32, ptr %have, align 4
  %dec1149 = add i32 %637, -1
  store i32 %dec1149, ptr %have, align 4
  %638 = load ptr, ptr %next, align 8
  %incdec.ptr1150 = getelementptr inbounds i8, ptr %638, i32 1
  store ptr %incdec.ptr1150, ptr %next, align 8
  %639 = load i8, ptr %638, align 1
  %conv1151 = zext i8 %639 to i64
  %640 = load i32, ptr %bits, align 4
  %sh_prom1152 = zext i32 %640 to i64
  %shl1153 = shl i64 %conv1151, %sh_prom1152
  %641 = load i64, ptr %hold, align 8
  %add1154 = add i64 %641, %shl1153
  store i64 %add1154, ptr %hold, align 8
  %642 = load i32, ptr %bits, align 4
  %add1155 = add i32 %642, 8
  store i32 %add1155, ptr %bits, align 4
  br label %do.end1157

do.end1157:                                       ; preds = %if.end1148
  br label %while.cond1137, !llvm.loop !24

while.end1158:                                    ; preds = %while.cond1137
  br label %do.end1160

do.end1160:                                       ; preds = %while.end1158
  br label %do.body1161

do.body1161:                                      ; preds = %do.end1160
  %bits1162 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %643 = load i8, ptr %bits1162, align 1
  %conv1163 = zext i8 %643 to i32
  %644 = load i64, ptr %hold, align 8
  %sh_prom1164 = zext i32 %conv1163 to i64
  %shr1165 = lshr i64 %644, %sh_prom1164
  store i64 %shr1165, ptr %hold, align 8
  %bits1166 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %645 = load i8, ptr %bits1166, align 1
  %conv1167 = zext i8 %645 to i32
  %646 = load i32, ptr %bits, align 4
  %sub1168 = sub i32 %646, %conv1167
  store i32 %sub1168, ptr %bits, align 4
  br label %do.end1170

do.end1170:                                       ; preds = %do.body1161
  store i32 0, ptr %len, align 4
  %647 = load i64, ptr %hold, align 8
  %conv1171 = trunc i64 %647 to i32
  %and1172 = and i32 %conv1171, 127
  %add1173 = add i32 11, %and1172
  store i32 %add1173, ptr %copy, align 4
  br label %do.body1174

do.body1174:                                      ; preds = %do.end1170
  %648 = load i64, ptr %hold, align 8
  %shr1175 = lshr i64 %648, 7
  store i64 %shr1175, ptr %hold, align 8
  %649 = load i32, ptr %bits, align 4
  %sub1176 = sub i32 %649, 7
  store i32 %sub1176, ptr %bits, align 4
  br label %do.end1178

do.end1178:                                       ; preds = %do.body1174
  br label %if.end1179

if.end1179:                                       ; preds = %do.end1178, %do.end1134
  br label %if.end1180

if.end1180:                                       ; preds = %if.end1179, %do.end1085
  %650 = load ptr, ptr %state, align 8
  %have1181 = getelementptr inbounds %struct.inflate_state, ptr %650, i32 0, i32 27
  %651 = load i32, ptr %have1181, align 4
  %652 = load i32, ptr %copy, align 4
  %add1182 = add i32 %651, %652
  %653 = load ptr, ptr %state, align 8
  %nlen1183 = getelementptr inbounds %struct.inflate_state, ptr %653, i32 0, i32 25
  %654 = load i32, ptr %nlen1183, align 4
  %655 = load ptr, ptr %state, align 8
  %ndist1184 = getelementptr inbounds %struct.inflate_state, ptr %655, i32 0, i32 26
  %656 = load i32, ptr %ndist1184, align 8
  %add1185 = add i32 %654, %656
  %cmp1186 = icmp ugt i32 %add1182, %add1185
  br i1 %cmp1186, label %if.then1188, label %if.end1191

if.then1188:                                      ; preds = %if.end1180
  %657 = load ptr, ptr %strm.addr, align 8
  %msg1189 = getelementptr inbounds %struct.z_stream_s, ptr %657, i32 0, i32 6
  store ptr @.str.10, ptr %msg1189, align 8
  %658 = load ptr, ptr %state, align 8
  %mode1190 = getelementptr inbounds %struct.inflate_state, ptr %658, i32 0, i32 1
  store i32 16209, ptr %mode1190, align 8
  br label %while.end1204

if.end1191:                                       ; preds = %if.end1180
  br label %while.cond1192

while.cond1192:                                   ; preds = %while.body1195, %if.end1191
  %659 = load i32, ptr %copy, align 4
  %dec1193 = add i32 %659, -1
  store i32 %dec1193, ptr %copy, align 4
  %tobool1194 = icmp ne i32 %659, 0
  br i1 %tobool1194, label %while.body1195, label %while.end1202

while.body1195:                                   ; preds = %while.cond1192
  %660 = load i32, ptr %len, align 4
  %conv1196 = trunc i32 %660 to i16
  %661 = load ptr, ptr %state, align 8
  %lens1197 = getelementptr inbounds %struct.inflate_state, ptr %661, i32 0, i32 29
  %662 = load ptr, ptr %state, align 8
  %have1198 = getelementptr inbounds %struct.inflate_state, ptr %662, i32 0, i32 27
  %663 = load i32, ptr %have1198, align 4
  %inc1199 = add i32 %663, 1
  store i32 %inc1199, ptr %have1198, align 4
  %idxprom1200 = zext i32 %663 to i64
  %arrayidx1201 = getelementptr inbounds [320 x i16], ptr %lens1197, i64 0, i64 %idxprom1200
  store i16 %conv1196, ptr %arrayidx1201, align 2
  br label %while.cond1192, !llvm.loop !25

while.end1202:                                    ; preds = %while.cond1192
  br label %if.end1203

if.end1203:                                       ; preds = %while.end1202, %do.end1017
  br label %while.cond967, !llvm.loop !26

while.end1204:                                    ; preds = %if.then1188, %if.then1068, %while.cond967
  %664 = load ptr, ptr %state, align 8
  %mode1205 = getelementptr inbounds %struct.inflate_state, ptr %664, i32 0, i32 1
  %665 = load i32, ptr %mode1205, align 8
  %cmp1206 = icmp eq i32 %665, 16209
  br i1 %cmp1206, label %if.then1208, label %if.end1209

if.then1208:                                      ; preds = %while.end1204
  br label %sw.epilog1874

if.end1209:                                       ; preds = %while.end1204
  %666 = load ptr, ptr %state, align 8
  %lens1210 = getelementptr inbounds %struct.inflate_state, ptr %666, i32 0, i32 29
  %arrayidx1211 = getelementptr inbounds [320 x i16], ptr %lens1210, i64 0, i64 256
  %667 = load i16, ptr %arrayidx1211, align 8
  %conv1212 = zext i16 %667 to i32
  %cmp1213 = icmp eq i32 %conv1212, 0
  br i1 %cmp1213, label %if.then1215, label %if.end1218

if.then1215:                                      ; preds = %if.end1209
  %668 = load ptr, ptr %strm.addr, align 8
  %msg1216 = getelementptr inbounds %struct.z_stream_s, ptr %668, i32 0, i32 6
  store ptr @.str.11, ptr %msg1216, align 8
  %669 = load ptr, ptr %state, align 8
  %mode1217 = getelementptr inbounds %struct.inflate_state, ptr %669, i32 0, i32 1
  store i32 16209, ptr %mode1217, align 8
  br label %sw.epilog1874

if.end1218:                                       ; preds = %if.end1209
  %670 = load ptr, ptr %state, align 8
  %codes1219 = getelementptr inbounds %struct.inflate_state, ptr %670, i32 0, i32 31
  %arraydecay1220 = getelementptr inbounds [1444 x %struct.code], ptr %codes1219, i64 0, i64 0
  %671 = load ptr, ptr %state, align 8
  %next1221 = getelementptr inbounds %struct.inflate_state, ptr %671, i32 0, i32 28
  store ptr %arraydecay1220, ptr %next1221, align 8
  %672 = load ptr, ptr %state, align 8
  %next1222 = getelementptr inbounds %struct.inflate_state, ptr %672, i32 0, i32 28
  %673 = load ptr, ptr %next1222, align 8
  %674 = load ptr, ptr %state, align 8
  %lencode1223 = getelementptr inbounds %struct.inflate_state, ptr %674, i32 0, i32 20
  store ptr %673, ptr %lencode1223, align 8
  %675 = load ptr, ptr %state, align 8
  %lenbits1224 = getelementptr inbounds %struct.inflate_state, ptr %675, i32 0, i32 22
  store i32 9, ptr %lenbits1224, align 8
  %676 = load ptr, ptr %state, align 8
  %lens1225 = getelementptr inbounds %struct.inflate_state, ptr %676, i32 0, i32 29
  %arraydecay1226 = getelementptr inbounds [320 x i16], ptr %lens1225, i64 0, i64 0
  %677 = load ptr, ptr %state, align 8
  %nlen1227 = getelementptr inbounds %struct.inflate_state, ptr %677, i32 0, i32 25
  %678 = load i32, ptr %nlen1227, align 4
  %679 = load ptr, ptr %state, align 8
  %next1228 = getelementptr inbounds %struct.inflate_state, ptr %679, i32 0, i32 28
  %680 = load ptr, ptr %state, align 8
  %lenbits1229 = getelementptr inbounds %struct.inflate_state, ptr %680, i32 0, i32 22
  %681 = load ptr, ptr %state, align 8
  %work1230 = getelementptr inbounds %struct.inflate_state, ptr %681, i32 0, i32 30
  %arraydecay1231 = getelementptr inbounds [288 x i16], ptr %work1230, i64 0, i64 0
  %call1232 = call i32 @inflate_table(i32 noundef 1, ptr noundef %arraydecay1226, i32 noundef %678, ptr noundef %next1228, ptr noundef %lenbits1229, ptr noundef %arraydecay1231)
  store i32 %call1232, ptr %ret, align 4
  %682 = load i32, ptr %ret, align 4
  %tobool1233 = icmp ne i32 %682, 0
  br i1 %tobool1233, label %if.then1234, label %if.end1237

if.then1234:                                      ; preds = %if.end1218
  %683 = load ptr, ptr %strm.addr, align 8
  %msg1235 = getelementptr inbounds %struct.z_stream_s, ptr %683, i32 0, i32 6
  store ptr @.str.12, ptr %msg1235, align 8
  %684 = load ptr, ptr %state, align 8
  %mode1236 = getelementptr inbounds %struct.inflate_state, ptr %684, i32 0, i32 1
  store i32 16209, ptr %mode1236, align 8
  br label %sw.epilog1874

if.end1237:                                       ; preds = %if.end1218
  %685 = load ptr, ptr %state, align 8
  %next1238 = getelementptr inbounds %struct.inflate_state, ptr %685, i32 0, i32 28
  %686 = load ptr, ptr %next1238, align 8
  %687 = load ptr, ptr %state, align 8
  %distcode1239 = getelementptr inbounds %struct.inflate_state, ptr %687, i32 0, i32 21
  store ptr %686, ptr %distcode1239, align 8
  %688 = load ptr, ptr %state, align 8
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %688, i32 0, i32 23
  store i32 6, ptr %distbits, align 4
  %689 = load ptr, ptr %state, align 8
  %lens1240 = getelementptr inbounds %struct.inflate_state, ptr %689, i32 0, i32 29
  %arraydecay1241 = getelementptr inbounds [320 x i16], ptr %lens1240, i64 0, i64 0
  %690 = load ptr, ptr %state, align 8
  %nlen1242 = getelementptr inbounds %struct.inflate_state, ptr %690, i32 0, i32 25
  %691 = load i32, ptr %nlen1242, align 4
  %idx.ext1243 = zext i32 %691 to i64
  %add.ptr1244 = getelementptr inbounds i16, ptr %arraydecay1241, i64 %idx.ext1243
  %692 = load ptr, ptr %state, align 8
  %ndist1245 = getelementptr inbounds %struct.inflate_state, ptr %692, i32 0, i32 26
  %693 = load i32, ptr %ndist1245, align 8
  %694 = load ptr, ptr %state, align 8
  %next1246 = getelementptr inbounds %struct.inflate_state, ptr %694, i32 0, i32 28
  %695 = load ptr, ptr %state, align 8
  %distbits1247 = getelementptr inbounds %struct.inflate_state, ptr %695, i32 0, i32 23
  %696 = load ptr, ptr %state, align 8
  %work1248 = getelementptr inbounds %struct.inflate_state, ptr %696, i32 0, i32 30
  %arraydecay1249 = getelementptr inbounds [288 x i16], ptr %work1248, i64 0, i64 0
  %call1250 = call i32 @inflate_table(i32 noundef 2, ptr noundef %add.ptr1244, i32 noundef %693, ptr noundef %next1246, ptr noundef %distbits1247, ptr noundef %arraydecay1249)
  store i32 %call1250, ptr %ret, align 4
  %697 = load i32, ptr %ret, align 4
  %tobool1251 = icmp ne i32 %697, 0
  br i1 %tobool1251, label %if.then1252, label %if.end1255

if.then1252:                                      ; preds = %if.end1237
  %698 = load ptr, ptr %strm.addr, align 8
  %msg1253 = getelementptr inbounds %struct.z_stream_s, ptr %698, i32 0, i32 6
  store ptr @.str.13, ptr %msg1253, align 8
  %699 = load ptr, ptr %state, align 8
  %mode1254 = getelementptr inbounds %struct.inflate_state, ptr %699, i32 0, i32 1
  store i32 16209, ptr %mode1254, align 8
  br label %sw.epilog1874

if.end1255:                                       ; preds = %if.end1237
  %700 = load ptr, ptr %state, align 8
  %mode1256 = getelementptr inbounds %struct.inflate_state, ptr %700, i32 0, i32 1
  store i32 16199, ptr %mode1256, align 8
  %701 = load i32, ptr %flush.addr, align 4
  %cmp1257 = icmp eq i32 %701, 6
  br i1 %cmp1257, label %if.then1259, label %if.end1260

if.then1259:                                      ; preds = %if.end1255
  br label %inf_leave

if.end1260:                                       ; preds = %if.end1255
  br label %sw.bb1261

sw.bb1261:                                        ; preds = %for.cond, %if.end1260
  %702 = load ptr, ptr %state, align 8
  %mode1262 = getelementptr inbounds %struct.inflate_state, ptr %702, i32 0, i32 1
  store i32 16200, ptr %mode1262, align 8
  br label %sw.bb1263

sw.bb1263:                                        ; preds = %for.cond, %sw.bb1261
  %703 = load i32, ptr %have, align 4
  %cmp1264 = icmp uge i32 %703, 6
  br i1 %cmp1264, label %land.lhs.true1266, label %if.end1293

land.lhs.true1266:                                ; preds = %sw.bb1263
  %704 = load i32, ptr %left, align 4
  %cmp1267 = icmp uge i32 %704, 258
  br i1 %cmp1267, label %if.then1269, label %if.end1293

if.then1269:                                      ; preds = %land.lhs.true1266
  br label %do.body1270

do.body1270:                                      ; preds = %if.then1269
  %705 = load ptr, ptr %put, align 8
  %706 = load ptr, ptr %strm.addr, align 8
  %next_out1271 = getelementptr inbounds %struct.z_stream_s, ptr %706, i32 0, i32 3
  store ptr %705, ptr %next_out1271, align 8
  %707 = load i32, ptr %left, align 4
  %708 = load ptr, ptr %strm.addr, align 8
  %avail_out1272 = getelementptr inbounds %struct.z_stream_s, ptr %708, i32 0, i32 4
  store i32 %707, ptr %avail_out1272, align 8
  %709 = load ptr, ptr %next, align 8
  %710 = load ptr, ptr %strm.addr, align 8
  %next_in1273 = getelementptr inbounds %struct.z_stream_s, ptr %710, i32 0, i32 0
  store ptr %709, ptr %next_in1273, align 8
  %711 = load i32, ptr %have, align 4
  %712 = load ptr, ptr %strm.addr, align 8
  %avail_in1274 = getelementptr inbounds %struct.z_stream_s, ptr %712, i32 0, i32 1
  store i32 %711, ptr %avail_in1274, align 8
  %713 = load i64, ptr %hold, align 8
  %714 = load ptr, ptr %state, align 8
  %hold1275 = getelementptr inbounds %struct.inflate_state, ptr %714, i32 0, i32 15
  store i64 %713, ptr %hold1275, align 8
  %715 = load i32, ptr %bits, align 4
  %716 = load ptr, ptr %state, align 8
  %bits1276 = getelementptr inbounds %struct.inflate_state, ptr %716, i32 0, i32 16
  store i32 %715, ptr %bits1276, align 8
  br label %do.end1278

do.end1278:                                       ; preds = %do.body1270
  %717 = load ptr, ptr %strm.addr, align 8
  %718 = load i32, ptr %out, align 4
  call void @inflate_fast(ptr noundef %717, i32 noundef %718)
  br label %do.body1279

do.body1279:                                      ; preds = %do.end1278
  %719 = load ptr, ptr %strm.addr, align 8
  %next_out1280 = getelementptr inbounds %struct.z_stream_s, ptr %719, i32 0, i32 3
  %720 = load ptr, ptr %next_out1280, align 8
  store ptr %720, ptr %put, align 8
  %721 = load ptr, ptr %strm.addr, align 8
  %avail_out1281 = getelementptr inbounds %struct.z_stream_s, ptr %721, i32 0, i32 4
  %722 = load i32, ptr %avail_out1281, align 8
  store i32 %722, ptr %left, align 4
  %723 = load ptr, ptr %strm.addr, align 8
  %next_in1282 = getelementptr inbounds %struct.z_stream_s, ptr %723, i32 0, i32 0
  %724 = load ptr, ptr %next_in1282, align 8
  store ptr %724, ptr %next, align 8
  %725 = load ptr, ptr %strm.addr, align 8
  %avail_in1283 = getelementptr inbounds %struct.z_stream_s, ptr %725, i32 0, i32 1
  %726 = load i32, ptr %avail_in1283, align 8
  store i32 %726, ptr %have, align 4
  %727 = load ptr, ptr %state, align 8
  %hold1284 = getelementptr inbounds %struct.inflate_state, ptr %727, i32 0, i32 15
  %728 = load i64, ptr %hold1284, align 8
  store i64 %728, ptr %hold, align 8
  %729 = load ptr, ptr %state, align 8
  %bits1285 = getelementptr inbounds %struct.inflate_state, ptr %729, i32 0, i32 16
  %730 = load i32, ptr %bits1285, align 8
  store i32 %730, ptr %bits, align 4
  br label %do.end1287

do.end1287:                                       ; preds = %do.body1279
  %731 = load ptr, ptr %state, align 8
  %mode1288 = getelementptr inbounds %struct.inflate_state, ptr %731, i32 0, i32 1
  %732 = load i32, ptr %mode1288, align 8
  %cmp1289 = icmp eq i32 %732, 16191
  br i1 %cmp1289, label %if.then1291, label %if.end1292

if.then1291:                                      ; preds = %do.end1287
  %733 = load ptr, ptr %state, align 8
  %back = getelementptr inbounds %struct.inflate_state, ptr %733, i32 0, i32 33
  store i32 -1, ptr %back, align 4
  br label %if.end1292

if.end1292:                                       ; preds = %if.then1291, %do.end1287
  br label %sw.epilog1874

if.end1293:                                       ; preds = %land.lhs.true1266, %sw.bb1263
  %734 = load ptr, ptr %state, align 8
  %back1294 = getelementptr inbounds %struct.inflate_state, ptr %734, i32 0, i32 33
  store i32 0, ptr %back1294, align 4
  br label %for.cond1295

for.cond1295:                                     ; preds = %do.end1323, %if.end1293
  %735 = load ptr, ptr %state, align 8
  %lencode1296 = getelementptr inbounds %struct.inflate_state, ptr %735, i32 0, i32 20
  %736 = load ptr, ptr %lencode1296, align 8
  %737 = load i64, ptr %hold, align 8
  %conv1297 = trunc i64 %737 to i32
  %738 = load ptr, ptr %state, align 8
  %lenbits1298 = getelementptr inbounds %struct.inflate_state, ptr %738, i32 0, i32 22
  %739 = load i32, ptr %lenbits1298, align 8
  %shl1299 = shl i32 1, %739
  %sub1300 = sub i32 %shl1299, 1
  %and1301 = and i32 %conv1297, %sub1300
  %idxprom1302 = zext i32 %and1301 to i64
  %arrayidx1303 = getelementptr inbounds %struct.code, ptr %736, i64 %idxprom1302
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx1303, i64 4, i1 false)
  %bits1304 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %740 = load i8, ptr %bits1304, align 1
  %conv1305 = zext i8 %740 to i32
  %741 = load i32, ptr %bits, align 4
  %cmp1306 = icmp ule i32 %conv1305, %741
  br i1 %cmp1306, label %if.then1308, label %if.end1309

if.then1308:                                      ; preds = %for.cond1295
  br label %for.end1324

if.end1309:                                       ; preds = %for.cond1295
  br label %do.body1310

do.body1310:                                      ; preds = %if.end1309
  %742 = load i32, ptr %have, align 4
  %cmp1311 = icmp eq i32 %742, 0
  br i1 %cmp1311, label %if.then1313, label %if.end1314

if.then1313:                                      ; preds = %do.body1310
  br label %inf_leave

if.end1314:                                       ; preds = %do.body1310
  %743 = load i32, ptr %have, align 4
  %dec1315 = add i32 %743, -1
  store i32 %dec1315, ptr %have, align 4
  %744 = load ptr, ptr %next, align 8
  %incdec.ptr1316 = getelementptr inbounds i8, ptr %744, i32 1
  store ptr %incdec.ptr1316, ptr %next, align 8
  %745 = load i8, ptr %744, align 1
  %conv1317 = zext i8 %745 to i64
  %746 = load i32, ptr %bits, align 4
  %sh_prom1318 = zext i32 %746 to i64
  %shl1319 = shl i64 %conv1317, %sh_prom1318
  %747 = load i64, ptr %hold, align 8
  %add1320 = add i64 %747, %shl1319
  store i64 %add1320, ptr %hold, align 8
  %748 = load i32, ptr %bits, align 4
  %add1321 = add i32 %748, 8
  store i32 %add1321, ptr %bits, align 4
  br label %do.end1323

do.end1323:                                       ; preds = %if.end1314
  br label %for.cond1295

for.end1324:                                      ; preds = %if.then1308
  %op = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %749 = load i8, ptr %op, align 2
  %conv1325 = zext i8 %749 to i32
  %tobool1326 = icmp ne i32 %conv1325, 0
  br i1 %tobool1326, label %land.lhs.true1327, label %if.end1391

land.lhs.true1327:                                ; preds = %for.end1324
  %op1328 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %750 = load i8, ptr %op1328, align 2
  %conv1329 = zext i8 %750 to i32
  %and1330 = and i32 %conv1329, 240
  %cmp1331 = icmp eq i32 %and1330, 0
  br i1 %cmp1331, label %if.then1333, label %if.end1391

if.then1333:                                      ; preds = %land.lhs.true1327
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %here, i64 4, i1 false)
  br label %for.cond1334

for.cond1334:                                     ; preds = %do.end1375, %if.then1333
  %751 = load ptr, ptr %state, align 8
  %lencode1335 = getelementptr inbounds %struct.inflate_state, ptr %751, i32 0, i32 20
  %752 = load ptr, ptr %lencode1335, align 8
  %val1336 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2
  %753 = load i16, ptr %val1336, align 2
  %conv1337 = zext i16 %753 to i32
  %754 = load i64, ptr %hold, align 8
  %conv1338 = trunc i64 %754 to i32
  %bits1339 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %755 = load i8, ptr %bits1339, align 1
  %conv1340 = zext i8 %755 to i32
  %op1341 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0
  %756 = load i8, ptr %op1341, align 2
  %conv1342 = zext i8 %756 to i32
  %add1343 = add nsw i32 %conv1340, %conv1342
  %shl1344 = shl i32 1, %add1343
  %sub1345 = sub i32 %shl1344, 1
  %and1346 = and i32 %conv1338, %sub1345
  %bits1347 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %757 = load i8, ptr %bits1347, align 1
  %conv1348 = zext i8 %757 to i32
  %shr1349 = lshr i32 %and1346, %conv1348
  %add1350 = add i32 %conv1337, %shr1349
  %idxprom1351 = zext i32 %add1350 to i64
  %arrayidx1352 = getelementptr inbounds %struct.code, ptr %752, i64 %idxprom1351
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx1352, i64 4, i1 false)
  %bits1353 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %758 = load i8, ptr %bits1353, align 1
  %conv1354 = zext i8 %758 to i32
  %bits1355 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %759 = load i8, ptr %bits1355, align 1
  %conv1356 = zext i8 %759 to i32
  %add1357 = add nsw i32 %conv1354, %conv1356
  %760 = load i32, ptr %bits, align 4
  %cmp1358 = icmp ule i32 %add1357, %760
  br i1 %cmp1358, label %if.then1360, label %if.end1361

if.then1360:                                      ; preds = %for.cond1334
  br label %for.end1376

if.end1361:                                       ; preds = %for.cond1334
  br label %do.body1362

do.body1362:                                      ; preds = %if.end1361
  %761 = load i32, ptr %have, align 4
  %cmp1363 = icmp eq i32 %761, 0
  br i1 %cmp1363, label %if.then1365, label %if.end1366

if.then1365:                                      ; preds = %do.body1362
  br label %inf_leave

if.end1366:                                       ; preds = %do.body1362
  %762 = load i32, ptr %have, align 4
  %dec1367 = add i32 %762, -1
  store i32 %dec1367, ptr %have, align 4
  %763 = load ptr, ptr %next, align 8
  %incdec.ptr1368 = getelementptr inbounds i8, ptr %763, i32 1
  store ptr %incdec.ptr1368, ptr %next, align 8
  %764 = load i8, ptr %763, align 1
  %conv1369 = zext i8 %764 to i64
  %765 = load i32, ptr %bits, align 4
  %sh_prom1370 = zext i32 %765 to i64
  %shl1371 = shl i64 %conv1369, %sh_prom1370
  %766 = load i64, ptr %hold, align 8
  %add1372 = add i64 %766, %shl1371
  store i64 %add1372, ptr %hold, align 8
  %767 = load i32, ptr %bits, align 4
  %add1373 = add i32 %767, 8
  store i32 %add1373, ptr %bits, align 4
  br label %do.end1375

do.end1375:                                       ; preds = %if.end1366
  br label %for.cond1334

for.end1376:                                      ; preds = %if.then1360
  br label %do.body1377

do.body1377:                                      ; preds = %for.end1376
  %bits1378 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %768 = load i8, ptr %bits1378, align 1
  %conv1379 = zext i8 %768 to i32
  %769 = load i64, ptr %hold, align 8
  %sh_prom1380 = zext i32 %conv1379 to i64
  %shr1381 = lshr i64 %769, %sh_prom1380
  store i64 %shr1381, ptr %hold, align 8
  %bits1382 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %770 = load i8, ptr %bits1382, align 1
  %conv1383 = zext i8 %770 to i32
  %771 = load i32, ptr %bits, align 4
  %sub1384 = sub i32 %771, %conv1383
  store i32 %sub1384, ptr %bits, align 4
  br label %do.end1386

do.end1386:                                       ; preds = %do.body1377
  %bits1387 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %772 = load i8, ptr %bits1387, align 1
  %conv1388 = zext i8 %772 to i32
  %773 = load ptr, ptr %state, align 8
  %back1389 = getelementptr inbounds %struct.inflate_state, ptr %773, i32 0, i32 33
  %774 = load i32, ptr %back1389, align 4
  %add1390 = add nsw i32 %774, %conv1388
  store i32 %add1390, ptr %back1389, align 4
  br label %if.end1391

if.end1391:                                       ; preds = %do.end1386, %land.lhs.true1327, %for.end1324
  br label %do.body1392

do.body1392:                                      ; preds = %if.end1391
  %bits1393 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %775 = load i8, ptr %bits1393, align 1
  %conv1394 = zext i8 %775 to i32
  %776 = load i64, ptr %hold, align 8
  %sh_prom1395 = zext i32 %conv1394 to i64
  %shr1396 = lshr i64 %776, %sh_prom1395
  store i64 %shr1396, ptr %hold, align 8
  %bits1397 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %777 = load i8, ptr %bits1397, align 1
  %conv1398 = zext i8 %777 to i32
  %778 = load i32, ptr %bits, align 4
  %sub1399 = sub i32 %778, %conv1398
  store i32 %sub1399, ptr %bits, align 4
  br label %do.end1401

do.end1401:                                       ; preds = %do.body1392
  %bits1402 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %779 = load i8, ptr %bits1402, align 1
  %conv1403 = zext i8 %779 to i32
  %780 = load ptr, ptr %state, align 8
  %back1404 = getelementptr inbounds %struct.inflate_state, ptr %780, i32 0, i32 33
  %781 = load i32, ptr %back1404, align 4
  %add1405 = add nsw i32 %781, %conv1403
  store i32 %add1405, ptr %back1404, align 4
  %val1406 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %782 = load i16, ptr %val1406, align 2
  %conv1407 = zext i16 %782 to i32
  %783 = load ptr, ptr %state, align 8
  %length1408 = getelementptr inbounds %struct.inflate_state, ptr %783, i32 0, i32 17
  store i32 %conv1407, ptr %length1408, align 4
  %op1409 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %784 = load i8, ptr %op1409, align 2
  %conv1410 = zext i8 %784 to i32
  %cmp1411 = icmp eq i32 %conv1410, 0
  br i1 %cmp1411, label %if.then1413, label %if.end1415

if.then1413:                                      ; preds = %do.end1401
  %785 = load ptr, ptr %state, align 8
  %mode1414 = getelementptr inbounds %struct.inflate_state, ptr %785, i32 0, i32 1
  store i32 16205, ptr %mode1414, align 8
  br label %sw.epilog1874

if.end1415:                                       ; preds = %do.end1401
  %op1416 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %786 = load i8, ptr %op1416, align 2
  %conv1417 = zext i8 %786 to i32
  %and1418 = and i32 %conv1417, 32
  %tobool1419 = icmp ne i32 %and1418, 0
  br i1 %tobool1419, label %if.then1420, label %if.end1423

if.then1420:                                      ; preds = %if.end1415
  %787 = load ptr, ptr %state, align 8
  %back1421 = getelementptr inbounds %struct.inflate_state, ptr %787, i32 0, i32 33
  store i32 -1, ptr %back1421, align 4
  %788 = load ptr, ptr %state, align 8
  %mode1422 = getelementptr inbounds %struct.inflate_state, ptr %788, i32 0, i32 1
  store i32 16191, ptr %mode1422, align 8
  br label %sw.epilog1874

if.end1423:                                       ; preds = %if.end1415
  %op1424 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %789 = load i8, ptr %op1424, align 2
  %conv1425 = zext i8 %789 to i32
  %and1426 = and i32 %conv1425, 64
  %tobool1427 = icmp ne i32 %and1426, 0
  br i1 %tobool1427, label %if.then1428, label %if.end1431

if.then1428:                                      ; preds = %if.end1423
  %790 = load ptr, ptr %strm.addr, align 8
  %msg1429 = getelementptr inbounds %struct.z_stream_s, ptr %790, i32 0, i32 6
  store ptr @.str.14, ptr %msg1429, align 8
  %791 = load ptr, ptr %state, align 8
  %mode1430 = getelementptr inbounds %struct.inflate_state, ptr %791, i32 0, i32 1
  store i32 16209, ptr %mode1430, align 8
  br label %sw.epilog1874

if.end1431:                                       ; preds = %if.end1423
  %op1432 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %792 = load i8, ptr %op1432, align 2
  %conv1433 = zext i8 %792 to i32
  %and1434 = and i32 %conv1433, 15
  %793 = load ptr, ptr %state, align 8
  %extra1435 = getelementptr inbounds %struct.inflate_state, ptr %793, i32 0, i32 19
  store i32 %and1434, ptr %extra1435, align 4
  %794 = load ptr, ptr %state, align 8
  %mode1436 = getelementptr inbounds %struct.inflate_state, ptr %794, i32 0, i32 1
  store i32 16201, ptr %mode1436, align 8
  br label %sw.bb1437

sw.bb1437:                                        ; preds = %for.cond, %if.end1431
  %795 = load ptr, ptr %state, align 8
  %extra1438 = getelementptr inbounds %struct.inflate_state, ptr %795, i32 0, i32 19
  %796 = load i32, ptr %extra1438, align 4
  %tobool1439 = icmp ne i32 %796, 0
  br i1 %tobool1439, label %if.then1440, label %if.end1482

if.then1440:                                      ; preds = %sw.bb1437
  br label %do.body1441

do.body1441:                                      ; preds = %if.then1440
  br label %while.cond1442

while.cond1442:                                   ; preds = %do.end1460, %do.body1441
  %797 = load i32, ptr %bits, align 4
  %798 = load ptr, ptr %state, align 8
  %extra1443 = getelementptr inbounds %struct.inflate_state, ptr %798, i32 0, i32 19
  %799 = load i32, ptr %extra1443, align 4
  %cmp1444 = icmp ult i32 %797, %799
  br i1 %cmp1444, label %while.body1446, label %while.end1461

while.body1446:                                   ; preds = %while.cond1442
  br label %do.body1447

do.body1447:                                      ; preds = %while.body1446
  %800 = load i32, ptr %have, align 4
  %cmp1448 = icmp eq i32 %800, 0
  br i1 %cmp1448, label %if.then1450, label %if.end1451

if.then1450:                                      ; preds = %do.body1447
  br label %inf_leave

if.end1451:                                       ; preds = %do.body1447
  %801 = load i32, ptr %have, align 4
  %dec1452 = add i32 %801, -1
  store i32 %dec1452, ptr %have, align 4
  %802 = load ptr, ptr %next, align 8
  %incdec.ptr1453 = getelementptr inbounds i8, ptr %802, i32 1
  store ptr %incdec.ptr1453, ptr %next, align 8
  %803 = load i8, ptr %802, align 1
  %conv1454 = zext i8 %803 to i64
  %804 = load i32, ptr %bits, align 4
  %sh_prom1455 = zext i32 %804 to i64
  %shl1456 = shl i64 %conv1454, %sh_prom1455
  %805 = load i64, ptr %hold, align 8
  %add1457 = add i64 %805, %shl1456
  store i64 %add1457, ptr %hold, align 8
  %806 = load i32, ptr %bits, align 4
  %add1458 = add i32 %806, 8
  store i32 %add1458, ptr %bits, align 4
  br label %do.end1460

do.end1460:                                       ; preds = %if.end1451
  br label %while.cond1442, !llvm.loop !27

while.end1461:                                    ; preds = %while.cond1442
  br label %do.end1463

do.end1463:                                       ; preds = %while.end1461
  %807 = load i64, ptr %hold, align 8
  %conv1464 = trunc i64 %807 to i32
  %808 = load ptr, ptr %state, align 8
  %extra1465 = getelementptr inbounds %struct.inflate_state, ptr %808, i32 0, i32 19
  %809 = load i32, ptr %extra1465, align 4
  %shl1466 = shl i32 1, %809
  %sub1467 = sub i32 %shl1466, 1
  %and1468 = and i32 %conv1464, %sub1467
  %810 = load ptr, ptr %state, align 8
  %length1469 = getelementptr inbounds %struct.inflate_state, ptr %810, i32 0, i32 17
  %811 = load i32, ptr %length1469, align 4
  %add1470 = add i32 %811, %and1468
  store i32 %add1470, ptr %length1469, align 4
  br label %do.body1471

do.body1471:                                      ; preds = %do.end1463
  %812 = load ptr, ptr %state, align 8
  %extra1472 = getelementptr inbounds %struct.inflate_state, ptr %812, i32 0, i32 19
  %813 = load i32, ptr %extra1472, align 4
  %814 = load i64, ptr %hold, align 8
  %sh_prom1473 = zext i32 %813 to i64
  %shr1474 = lshr i64 %814, %sh_prom1473
  store i64 %shr1474, ptr %hold, align 8
  %815 = load ptr, ptr %state, align 8
  %extra1475 = getelementptr inbounds %struct.inflate_state, ptr %815, i32 0, i32 19
  %816 = load i32, ptr %extra1475, align 4
  %817 = load i32, ptr %bits, align 4
  %sub1476 = sub i32 %817, %816
  store i32 %sub1476, ptr %bits, align 4
  br label %do.end1478

do.end1478:                                       ; preds = %do.body1471
  %818 = load ptr, ptr %state, align 8
  %extra1479 = getelementptr inbounds %struct.inflate_state, ptr %818, i32 0, i32 19
  %819 = load i32, ptr %extra1479, align 4
  %820 = load ptr, ptr %state, align 8
  %back1480 = getelementptr inbounds %struct.inflate_state, ptr %820, i32 0, i32 33
  %821 = load i32, ptr %back1480, align 4
  %add1481 = add i32 %821, %819
  store i32 %add1481, ptr %back1480, align 4
  br label %if.end1482

if.end1482:                                       ; preds = %do.end1478, %sw.bb1437
  %822 = load ptr, ptr %state, align 8
  %length1483 = getelementptr inbounds %struct.inflate_state, ptr %822, i32 0, i32 17
  %823 = load i32, ptr %length1483, align 4
  %824 = load ptr, ptr %state, align 8
  %was = getelementptr inbounds %struct.inflate_state, ptr %824, i32 0, i32 34
  store i32 %823, ptr %was, align 8
  %825 = load ptr, ptr %state, align 8
  %mode1484 = getelementptr inbounds %struct.inflate_state, ptr %825, i32 0, i32 1
  store i32 16202, ptr %mode1484, align 8
  br label %sw.bb1485

sw.bb1485:                                        ; preds = %for.cond, %if.end1482
  br label %for.cond1486

for.cond1486:                                     ; preds = %do.end1514, %sw.bb1485
  %826 = load ptr, ptr %state, align 8
  %distcode1487 = getelementptr inbounds %struct.inflate_state, ptr %826, i32 0, i32 21
  %827 = load ptr, ptr %distcode1487, align 8
  %828 = load i64, ptr %hold, align 8
  %conv1488 = trunc i64 %828 to i32
  %829 = load ptr, ptr %state, align 8
  %distbits1489 = getelementptr inbounds %struct.inflate_state, ptr %829, i32 0, i32 23
  %830 = load i32, ptr %distbits1489, align 4
  %shl1490 = shl i32 1, %830
  %sub1491 = sub i32 %shl1490, 1
  %and1492 = and i32 %conv1488, %sub1491
  %idxprom1493 = zext i32 %and1492 to i64
  %arrayidx1494 = getelementptr inbounds %struct.code, ptr %827, i64 %idxprom1493
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx1494, i64 4, i1 false)
  %bits1495 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %831 = load i8, ptr %bits1495, align 1
  %conv1496 = zext i8 %831 to i32
  %832 = load i32, ptr %bits, align 4
  %cmp1497 = icmp ule i32 %conv1496, %832
  br i1 %cmp1497, label %if.then1499, label %if.end1500

if.then1499:                                      ; preds = %for.cond1486
  br label %for.end1515

if.end1500:                                       ; preds = %for.cond1486
  br label %do.body1501

do.body1501:                                      ; preds = %if.end1500
  %833 = load i32, ptr %have, align 4
  %cmp1502 = icmp eq i32 %833, 0
  br i1 %cmp1502, label %if.then1504, label %if.end1505

if.then1504:                                      ; preds = %do.body1501
  br label %inf_leave

if.end1505:                                       ; preds = %do.body1501
  %834 = load i32, ptr %have, align 4
  %dec1506 = add i32 %834, -1
  store i32 %dec1506, ptr %have, align 4
  %835 = load ptr, ptr %next, align 8
  %incdec.ptr1507 = getelementptr inbounds i8, ptr %835, i32 1
  store ptr %incdec.ptr1507, ptr %next, align 8
  %836 = load i8, ptr %835, align 1
  %conv1508 = zext i8 %836 to i64
  %837 = load i32, ptr %bits, align 4
  %sh_prom1509 = zext i32 %837 to i64
  %shl1510 = shl i64 %conv1508, %sh_prom1509
  %838 = load i64, ptr %hold, align 8
  %add1511 = add i64 %838, %shl1510
  store i64 %add1511, ptr %hold, align 8
  %839 = load i32, ptr %bits, align 4
  %add1512 = add i32 %839, 8
  store i32 %add1512, ptr %bits, align 4
  br label %do.end1514

do.end1514:                                       ; preds = %if.end1505
  br label %for.cond1486

for.end1515:                                      ; preds = %if.then1499
  %op1516 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %840 = load i8, ptr %op1516, align 2
  %conv1517 = zext i8 %840 to i32
  %and1518 = and i32 %conv1517, 240
  %cmp1519 = icmp eq i32 %and1518, 0
  br i1 %cmp1519, label %if.then1521, label %if.end1579

if.then1521:                                      ; preds = %for.end1515
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %here, i64 4, i1 false)
  br label %for.cond1522

for.cond1522:                                     ; preds = %do.end1563, %if.then1521
  %841 = load ptr, ptr %state, align 8
  %distcode1523 = getelementptr inbounds %struct.inflate_state, ptr %841, i32 0, i32 21
  %842 = load ptr, ptr %distcode1523, align 8
  %val1524 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2
  %843 = load i16, ptr %val1524, align 2
  %conv1525 = zext i16 %843 to i32
  %844 = load i64, ptr %hold, align 8
  %conv1526 = trunc i64 %844 to i32
  %bits1527 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %845 = load i8, ptr %bits1527, align 1
  %conv1528 = zext i8 %845 to i32
  %op1529 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0
  %846 = load i8, ptr %op1529, align 2
  %conv1530 = zext i8 %846 to i32
  %add1531 = add nsw i32 %conv1528, %conv1530
  %shl1532 = shl i32 1, %add1531
  %sub1533 = sub i32 %shl1532, 1
  %and1534 = and i32 %conv1526, %sub1533
  %bits1535 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %847 = load i8, ptr %bits1535, align 1
  %conv1536 = zext i8 %847 to i32
  %shr1537 = lshr i32 %and1534, %conv1536
  %add1538 = add i32 %conv1525, %shr1537
  %idxprom1539 = zext i32 %add1538 to i64
  %arrayidx1540 = getelementptr inbounds %struct.code, ptr %842, i64 %idxprom1539
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx1540, i64 4, i1 false)
  %bits1541 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %848 = load i8, ptr %bits1541, align 1
  %conv1542 = zext i8 %848 to i32
  %bits1543 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %849 = load i8, ptr %bits1543, align 1
  %conv1544 = zext i8 %849 to i32
  %add1545 = add nsw i32 %conv1542, %conv1544
  %850 = load i32, ptr %bits, align 4
  %cmp1546 = icmp ule i32 %add1545, %850
  br i1 %cmp1546, label %if.then1548, label %if.end1549

if.then1548:                                      ; preds = %for.cond1522
  br label %for.end1564

if.end1549:                                       ; preds = %for.cond1522
  br label %do.body1550

do.body1550:                                      ; preds = %if.end1549
  %851 = load i32, ptr %have, align 4
  %cmp1551 = icmp eq i32 %851, 0
  br i1 %cmp1551, label %if.then1553, label %if.end1554

if.then1553:                                      ; preds = %do.body1550
  br label %inf_leave

if.end1554:                                       ; preds = %do.body1550
  %852 = load i32, ptr %have, align 4
  %dec1555 = add i32 %852, -1
  store i32 %dec1555, ptr %have, align 4
  %853 = load ptr, ptr %next, align 8
  %incdec.ptr1556 = getelementptr inbounds i8, ptr %853, i32 1
  store ptr %incdec.ptr1556, ptr %next, align 8
  %854 = load i8, ptr %853, align 1
  %conv1557 = zext i8 %854 to i64
  %855 = load i32, ptr %bits, align 4
  %sh_prom1558 = zext i32 %855 to i64
  %shl1559 = shl i64 %conv1557, %sh_prom1558
  %856 = load i64, ptr %hold, align 8
  %add1560 = add i64 %856, %shl1559
  store i64 %add1560, ptr %hold, align 8
  %857 = load i32, ptr %bits, align 4
  %add1561 = add i32 %857, 8
  store i32 %add1561, ptr %bits, align 4
  br label %do.end1563

do.end1563:                                       ; preds = %if.end1554
  br label %for.cond1522

for.end1564:                                      ; preds = %if.then1548
  br label %do.body1565

do.body1565:                                      ; preds = %for.end1564
  %bits1566 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %858 = load i8, ptr %bits1566, align 1
  %conv1567 = zext i8 %858 to i32
  %859 = load i64, ptr %hold, align 8
  %sh_prom1568 = zext i32 %conv1567 to i64
  %shr1569 = lshr i64 %859, %sh_prom1568
  store i64 %shr1569, ptr %hold, align 8
  %bits1570 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %860 = load i8, ptr %bits1570, align 1
  %conv1571 = zext i8 %860 to i32
  %861 = load i32, ptr %bits, align 4
  %sub1572 = sub i32 %861, %conv1571
  store i32 %sub1572, ptr %bits, align 4
  br label %do.end1574

do.end1574:                                       ; preds = %do.body1565
  %bits1575 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %862 = load i8, ptr %bits1575, align 1
  %conv1576 = zext i8 %862 to i32
  %863 = load ptr, ptr %state, align 8
  %back1577 = getelementptr inbounds %struct.inflate_state, ptr %863, i32 0, i32 33
  %864 = load i32, ptr %back1577, align 4
  %add1578 = add nsw i32 %864, %conv1576
  store i32 %add1578, ptr %back1577, align 4
  br label %if.end1579

if.end1579:                                       ; preds = %do.end1574, %for.end1515
  br label %do.body1580

do.body1580:                                      ; preds = %if.end1579
  %bits1581 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %865 = load i8, ptr %bits1581, align 1
  %conv1582 = zext i8 %865 to i32
  %866 = load i64, ptr %hold, align 8
  %sh_prom1583 = zext i32 %conv1582 to i64
  %shr1584 = lshr i64 %866, %sh_prom1583
  store i64 %shr1584, ptr %hold, align 8
  %bits1585 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %867 = load i8, ptr %bits1585, align 1
  %conv1586 = zext i8 %867 to i32
  %868 = load i32, ptr %bits, align 4
  %sub1587 = sub i32 %868, %conv1586
  store i32 %sub1587, ptr %bits, align 4
  br label %do.end1589

do.end1589:                                       ; preds = %do.body1580
  %bits1590 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %869 = load i8, ptr %bits1590, align 1
  %conv1591 = zext i8 %869 to i32
  %870 = load ptr, ptr %state, align 8
  %back1592 = getelementptr inbounds %struct.inflate_state, ptr %870, i32 0, i32 33
  %871 = load i32, ptr %back1592, align 4
  %add1593 = add nsw i32 %871, %conv1591
  store i32 %add1593, ptr %back1592, align 4
  %op1594 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %872 = load i8, ptr %op1594, align 2
  %conv1595 = zext i8 %872 to i32
  %and1596 = and i32 %conv1595, 64
  %tobool1597 = icmp ne i32 %and1596, 0
  br i1 %tobool1597, label %if.then1598, label %if.end1601

if.then1598:                                      ; preds = %do.end1589
  %873 = load ptr, ptr %strm.addr, align 8
  %msg1599 = getelementptr inbounds %struct.z_stream_s, ptr %873, i32 0, i32 6
  store ptr @.str.15, ptr %msg1599, align 8
  %874 = load ptr, ptr %state, align 8
  %mode1600 = getelementptr inbounds %struct.inflate_state, ptr %874, i32 0, i32 1
  store i32 16209, ptr %mode1600, align 8
  br label %sw.epilog1874

if.end1601:                                       ; preds = %do.end1589
  %val1602 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %875 = load i16, ptr %val1602, align 2
  %conv1603 = zext i16 %875 to i32
  %876 = load ptr, ptr %state, align 8
  %offset = getelementptr inbounds %struct.inflate_state, ptr %876, i32 0, i32 18
  store i32 %conv1603, ptr %offset, align 8
  %op1604 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %877 = load i8, ptr %op1604, align 2
  %conv1605 = zext i8 %877 to i32
  %and1606 = and i32 %conv1605, 15
  %878 = load ptr, ptr %state, align 8
  %extra1607 = getelementptr inbounds %struct.inflate_state, ptr %878, i32 0, i32 19
  store i32 %and1606, ptr %extra1607, align 4
  %879 = load ptr, ptr %state, align 8
  %mode1608 = getelementptr inbounds %struct.inflate_state, ptr %879, i32 0, i32 1
  store i32 16203, ptr %mode1608, align 8
  br label %sw.bb1609

sw.bb1609:                                        ; preds = %for.cond, %if.end1601
  %880 = load ptr, ptr %state, align 8
  %extra1610 = getelementptr inbounds %struct.inflate_state, ptr %880, i32 0, i32 19
  %881 = load i32, ptr %extra1610, align 4
  %tobool1611 = icmp ne i32 %881, 0
  br i1 %tobool1611, label %if.then1612, label %if.end1654

if.then1612:                                      ; preds = %sw.bb1609
  br label %do.body1613

do.body1613:                                      ; preds = %if.then1612
  br label %while.cond1614

while.cond1614:                                   ; preds = %do.end1632, %do.body1613
  %882 = load i32, ptr %bits, align 4
  %883 = load ptr, ptr %state, align 8
  %extra1615 = getelementptr inbounds %struct.inflate_state, ptr %883, i32 0, i32 19
  %884 = load i32, ptr %extra1615, align 4
  %cmp1616 = icmp ult i32 %882, %884
  br i1 %cmp1616, label %while.body1618, label %while.end1633

while.body1618:                                   ; preds = %while.cond1614
  br label %do.body1619

do.body1619:                                      ; preds = %while.body1618
  %885 = load i32, ptr %have, align 4
  %cmp1620 = icmp eq i32 %885, 0
  br i1 %cmp1620, label %if.then1622, label %if.end1623

if.then1622:                                      ; preds = %do.body1619
  br label %inf_leave

if.end1623:                                       ; preds = %do.body1619
  %886 = load i32, ptr %have, align 4
  %dec1624 = add i32 %886, -1
  store i32 %dec1624, ptr %have, align 4
  %887 = load ptr, ptr %next, align 8
  %incdec.ptr1625 = getelementptr inbounds i8, ptr %887, i32 1
  store ptr %incdec.ptr1625, ptr %next, align 8
  %888 = load i8, ptr %887, align 1
  %conv1626 = zext i8 %888 to i64
  %889 = load i32, ptr %bits, align 4
  %sh_prom1627 = zext i32 %889 to i64
  %shl1628 = shl i64 %conv1626, %sh_prom1627
  %890 = load i64, ptr %hold, align 8
  %add1629 = add i64 %890, %shl1628
  store i64 %add1629, ptr %hold, align 8
  %891 = load i32, ptr %bits, align 4
  %add1630 = add i32 %891, 8
  store i32 %add1630, ptr %bits, align 4
  br label %do.end1632

do.end1632:                                       ; preds = %if.end1623
  br label %while.cond1614, !llvm.loop !28

while.end1633:                                    ; preds = %while.cond1614
  br label %do.end1635

do.end1635:                                       ; preds = %while.end1633
  %892 = load i64, ptr %hold, align 8
  %conv1636 = trunc i64 %892 to i32
  %893 = load ptr, ptr %state, align 8
  %extra1637 = getelementptr inbounds %struct.inflate_state, ptr %893, i32 0, i32 19
  %894 = load i32, ptr %extra1637, align 4
  %shl1638 = shl i32 1, %894
  %sub1639 = sub i32 %shl1638, 1
  %and1640 = and i32 %conv1636, %sub1639
  %895 = load ptr, ptr %state, align 8
  %offset1641 = getelementptr inbounds %struct.inflate_state, ptr %895, i32 0, i32 18
  %896 = load i32, ptr %offset1641, align 8
  %add1642 = add i32 %896, %and1640
  store i32 %add1642, ptr %offset1641, align 8
  br label %do.body1643

do.body1643:                                      ; preds = %do.end1635
  %897 = load ptr, ptr %state, align 8
  %extra1644 = getelementptr inbounds %struct.inflate_state, ptr %897, i32 0, i32 19
  %898 = load i32, ptr %extra1644, align 4
  %899 = load i64, ptr %hold, align 8
  %sh_prom1645 = zext i32 %898 to i64
  %shr1646 = lshr i64 %899, %sh_prom1645
  store i64 %shr1646, ptr %hold, align 8
  %900 = load ptr, ptr %state, align 8
  %extra1647 = getelementptr inbounds %struct.inflate_state, ptr %900, i32 0, i32 19
  %901 = load i32, ptr %extra1647, align 4
  %902 = load i32, ptr %bits, align 4
  %sub1648 = sub i32 %902, %901
  store i32 %sub1648, ptr %bits, align 4
  br label %do.end1650

do.end1650:                                       ; preds = %do.body1643
  %903 = load ptr, ptr %state, align 8
  %extra1651 = getelementptr inbounds %struct.inflate_state, ptr %903, i32 0, i32 19
  %904 = load i32, ptr %extra1651, align 4
  %905 = load ptr, ptr %state, align 8
  %back1652 = getelementptr inbounds %struct.inflate_state, ptr %905, i32 0, i32 33
  %906 = load i32, ptr %back1652, align 4
  %add1653 = add i32 %906, %904
  store i32 %add1653, ptr %back1652, align 4
  br label %if.end1654

if.end1654:                                       ; preds = %do.end1650, %sw.bb1609
  %907 = load ptr, ptr %state, align 8
  %mode1655 = getelementptr inbounds %struct.inflate_state, ptr %907, i32 0, i32 1
  store i32 16204, ptr %mode1655, align 8
  br label %sw.bb1656

sw.bb1656:                                        ; preds = %for.cond, %if.end1654
  %908 = load i32, ptr %left, align 4
  %cmp1657 = icmp eq i32 %908, 0
  br i1 %cmp1657, label %if.then1659, label %if.end1660

if.then1659:                                      ; preds = %sw.bb1656
  br label %inf_leave

if.end1660:                                       ; preds = %sw.bb1656
  %909 = load i32, ptr %out, align 4
  %910 = load i32, ptr %left, align 4
  %sub1661 = sub i32 %909, %910
  store i32 %sub1661, ptr %copy, align 4
  %911 = load ptr, ptr %state, align 8
  %offset1662 = getelementptr inbounds %struct.inflate_state, ptr %911, i32 0, i32 18
  %912 = load i32, ptr %offset1662, align 8
  %913 = load i32, ptr %copy, align 4
  %cmp1663 = icmp ugt i32 %912, %913
  br i1 %cmp1663, label %if.then1665, label %if.else1698

if.then1665:                                      ; preds = %if.end1660
  %914 = load ptr, ptr %state, align 8
  %offset1666 = getelementptr inbounds %struct.inflate_state, ptr %914, i32 0, i32 18
  %915 = load i32, ptr %offset1666, align 8
  %916 = load i32, ptr %copy, align 4
  %sub1667 = sub i32 %915, %916
  store i32 %sub1667, ptr %copy, align 4
  %917 = load i32, ptr %copy, align 4
  %918 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %918, i32 0, i32 12
  %919 = load i32, ptr %whave, align 8
  %cmp1668 = icmp ugt i32 %917, %919
  br i1 %cmp1668, label %if.then1670, label %if.end1676

if.then1670:                                      ; preds = %if.then1665
  %920 = load ptr, ptr %state, align 8
  %sane = getelementptr inbounds %struct.inflate_state, ptr %920, i32 0, i32 32
  %921 = load i32, ptr %sane, align 8
  %tobool1671 = icmp ne i32 %921, 0
  br i1 %tobool1671, label %if.then1672, label %if.end1675

if.then1672:                                      ; preds = %if.then1670
  %922 = load ptr, ptr %strm.addr, align 8
  %msg1673 = getelementptr inbounds %struct.z_stream_s, ptr %922, i32 0, i32 6
  store ptr @.str.16, ptr %msg1673, align 8
  %923 = load ptr, ptr %state, align 8
  %mode1674 = getelementptr inbounds %struct.inflate_state, ptr %923, i32 0, i32 1
  store i32 16209, ptr %mode1674, align 8
  br label %sw.epilog1874

if.end1675:                                       ; preds = %if.then1670
  br label %if.end1676

if.end1676:                                       ; preds = %if.end1675, %if.then1665
  %924 = load i32, ptr %copy, align 4
  %925 = load ptr, ptr %state, align 8
  %wnext = getelementptr inbounds %struct.inflate_state, ptr %925, i32 0, i32 13
  %926 = load i32, ptr %wnext, align 4
  %cmp1677 = icmp ugt i32 %924, %926
  br i1 %cmp1677, label %if.then1679, label %if.else1685

if.then1679:                                      ; preds = %if.end1676
  %927 = load ptr, ptr %state, align 8
  %wnext1680 = getelementptr inbounds %struct.inflate_state, ptr %927, i32 0, i32 13
  %928 = load i32, ptr %wnext1680, align 4
  %929 = load i32, ptr %copy, align 4
  %sub1681 = sub i32 %929, %928
  store i32 %sub1681, ptr %copy, align 4
  %930 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %930, i32 0, i32 14
  %931 = load ptr, ptr %window, align 8
  %932 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %932, i32 0, i32 11
  %933 = load i32, ptr %wsize, align 4
  %934 = load i32, ptr %copy, align 4
  %sub1682 = sub i32 %933, %934
  %idx.ext1683 = zext i32 %sub1682 to i64
  %add.ptr1684 = getelementptr inbounds i8, ptr %931, i64 %idx.ext1683
  store ptr %add.ptr1684, ptr %from, align 8
  br label %if.end1691

if.else1685:                                      ; preds = %if.end1676
  %935 = load ptr, ptr %state, align 8
  %window1686 = getelementptr inbounds %struct.inflate_state, ptr %935, i32 0, i32 14
  %936 = load ptr, ptr %window1686, align 8
  %937 = load ptr, ptr %state, align 8
  %wnext1687 = getelementptr inbounds %struct.inflate_state, ptr %937, i32 0, i32 13
  %938 = load i32, ptr %wnext1687, align 4
  %939 = load i32, ptr %copy, align 4
  %sub1688 = sub i32 %938, %939
  %idx.ext1689 = zext i32 %sub1688 to i64
  %add.ptr1690 = getelementptr inbounds i8, ptr %936, i64 %idx.ext1689
  store ptr %add.ptr1690, ptr %from, align 8
  br label %if.end1691

if.end1691:                                       ; preds = %if.else1685, %if.then1679
  %940 = load i32, ptr %copy, align 4
  %941 = load ptr, ptr %state, align 8
  %length1692 = getelementptr inbounds %struct.inflate_state, ptr %941, i32 0, i32 17
  %942 = load i32, ptr %length1692, align 4
  %cmp1693 = icmp ugt i32 %940, %942
  br i1 %cmp1693, label %if.then1695, label %if.end1697

if.then1695:                                      ; preds = %if.end1691
  %943 = load ptr, ptr %state, align 8
  %length1696 = getelementptr inbounds %struct.inflate_state, ptr %943, i32 0, i32 17
  %944 = load i32, ptr %length1696, align 4
  store i32 %944, ptr %copy, align 4
  br label %if.end1697

if.end1697:                                       ; preds = %if.then1695, %if.end1691
  br label %if.end1703

if.else1698:                                      ; preds = %if.end1660
  %945 = load ptr, ptr %put, align 8
  %946 = load ptr, ptr %state, align 8
  %offset1699 = getelementptr inbounds %struct.inflate_state, ptr %946, i32 0, i32 18
  %947 = load i32, ptr %offset1699, align 8
  %idx.ext1700 = zext i32 %947 to i64
  %idx.neg = sub i64 0, %idx.ext1700
  %add.ptr1701 = getelementptr inbounds i8, ptr %945, i64 %idx.neg
  store ptr %add.ptr1701, ptr %from, align 8
  %948 = load ptr, ptr %state, align 8
  %length1702 = getelementptr inbounds %struct.inflate_state, ptr %948, i32 0, i32 17
  %949 = load i32, ptr %length1702, align 4
  store i32 %949, ptr %copy, align 4
  br label %if.end1703

if.end1703:                                       ; preds = %if.else1698, %if.end1697
  %950 = load i32, ptr %copy, align 4
  %951 = load i32, ptr %left, align 4
  %cmp1704 = icmp ugt i32 %950, %951
  br i1 %cmp1704, label %if.then1706, label %if.end1707

if.then1706:                                      ; preds = %if.end1703
  %952 = load i32, ptr %left, align 4
  store i32 %952, ptr %copy, align 4
  br label %if.end1707

if.end1707:                                       ; preds = %if.then1706, %if.end1703
  %953 = load i32, ptr %copy, align 4
  %954 = load i32, ptr %left, align 4
  %sub1708 = sub i32 %954, %953
  store i32 %sub1708, ptr %left, align 4
  %955 = load i32, ptr %copy, align 4
  %956 = load ptr, ptr %state, align 8
  %length1709 = getelementptr inbounds %struct.inflate_state, ptr %956, i32 0, i32 17
  %957 = load i32, ptr %length1709, align 4
  %sub1710 = sub i32 %957, %955
  store i32 %sub1710, ptr %length1709, align 4
  br label %do.body1711

do.body1711:                                      ; preds = %do.cond1714, %if.end1707
  %958 = load ptr, ptr %from, align 8
  %incdec.ptr1712 = getelementptr inbounds i8, ptr %958, i32 1
  store ptr %incdec.ptr1712, ptr %from, align 8
  %959 = load i8, ptr %958, align 1
  %960 = load ptr, ptr %put, align 8
  %incdec.ptr1713 = getelementptr inbounds i8, ptr %960, i32 1
  store ptr %incdec.ptr1713, ptr %put, align 8
  store i8 %959, ptr %960, align 1
  br label %do.cond1714

do.cond1714:                                      ; preds = %do.body1711
  %961 = load i32, ptr %copy, align 4
  %dec1715 = add i32 %961, -1
  store i32 %dec1715, ptr %copy, align 4
  %tobool1716 = icmp ne i32 %dec1715, 0
  br i1 %tobool1716, label %do.body1711, label %do.end1717, !llvm.loop !29

do.end1717:                                       ; preds = %do.cond1714
  %962 = load ptr, ptr %state, align 8
  %length1718 = getelementptr inbounds %struct.inflate_state, ptr %962, i32 0, i32 17
  %963 = load i32, ptr %length1718, align 4
  %cmp1719 = icmp eq i32 %963, 0
  br i1 %cmp1719, label %if.then1721, label %if.end1723

if.then1721:                                      ; preds = %do.end1717
  %964 = load ptr, ptr %state, align 8
  %mode1722 = getelementptr inbounds %struct.inflate_state, ptr %964, i32 0, i32 1
  store i32 16200, ptr %mode1722, align 8
  br label %if.end1723

if.end1723:                                       ; preds = %if.then1721, %do.end1717
  br label %sw.epilog1874

sw.bb1724:                                        ; preds = %for.cond
  %965 = load i32, ptr %left, align 4
  %cmp1725 = icmp eq i32 %965, 0
  br i1 %cmp1725, label %if.then1727, label %if.end1728

if.then1727:                                      ; preds = %sw.bb1724
  br label %inf_leave

if.end1728:                                       ; preds = %sw.bb1724
  %966 = load ptr, ptr %state, align 8
  %length1729 = getelementptr inbounds %struct.inflate_state, ptr %966, i32 0, i32 17
  %967 = load i32, ptr %length1729, align 4
  %conv1730 = trunc i32 %967 to i8
  %968 = load ptr, ptr %put, align 8
  %incdec.ptr1731 = getelementptr inbounds i8, ptr %968, i32 1
  store ptr %incdec.ptr1731, ptr %put, align 8
  store i8 %conv1730, ptr %968, align 1
  %969 = load i32, ptr %left, align 4
  %dec1732 = add i32 %969, -1
  store i32 %dec1732, ptr %left, align 4
  %970 = load ptr, ptr %state, align 8
  %mode1733 = getelementptr inbounds %struct.inflate_state, ptr %970, i32 0, i32 1
  store i32 16200, ptr %mode1733, align 8
  br label %sw.epilog1874

sw.bb1734:                                        ; preds = %for.cond
  %971 = load ptr, ptr %state, align 8
  %wrap1735 = getelementptr inbounds %struct.inflate_state, ptr %971, i32 0, i32 3
  %972 = load i32, ptr %wrap1735, align 8
  %tobool1736 = icmp ne i32 %972, 0
  br i1 %tobool1736, label %if.then1737, label %if.end1821

if.then1737:                                      ; preds = %sw.bb1734
  br label %do.body1738

do.body1738:                                      ; preds = %if.then1737
  br label %while.cond1739

while.cond1739:                                   ; preds = %do.end1756, %do.body1738
  %973 = load i32, ptr %bits, align 4
  %cmp1740 = icmp ult i32 %973, 32
  br i1 %cmp1740, label %while.body1742, label %while.end1757

while.body1742:                                   ; preds = %while.cond1739
  br label %do.body1743

do.body1743:                                      ; preds = %while.body1742
  %974 = load i32, ptr %have, align 4
  %cmp1744 = icmp eq i32 %974, 0
  br i1 %cmp1744, label %if.then1746, label %if.end1747

if.then1746:                                      ; preds = %do.body1743
  br label %inf_leave

if.end1747:                                       ; preds = %do.body1743
  %975 = load i32, ptr %have, align 4
  %dec1748 = add i32 %975, -1
  store i32 %dec1748, ptr %have, align 4
  %976 = load ptr, ptr %next, align 8
  %incdec.ptr1749 = getelementptr inbounds i8, ptr %976, i32 1
  store ptr %incdec.ptr1749, ptr %next, align 8
  %977 = load i8, ptr %976, align 1
  %conv1750 = zext i8 %977 to i64
  %978 = load i32, ptr %bits, align 4
  %sh_prom1751 = zext i32 %978 to i64
  %shl1752 = shl i64 %conv1750, %sh_prom1751
  %979 = load i64, ptr %hold, align 8
  %add1753 = add i64 %979, %shl1752
  store i64 %add1753, ptr %hold, align 8
  %980 = load i32, ptr %bits, align 4
  %add1754 = add i32 %980, 8
  store i32 %add1754, ptr %bits, align 4
  br label %do.end1756

do.end1756:                                       ; preds = %if.end1747
  br label %while.cond1739, !llvm.loop !30

while.end1757:                                    ; preds = %while.cond1739
  br label %do.end1759

do.end1759:                                       ; preds = %while.end1757
  %981 = load i32, ptr %left, align 4
  %982 = load i32, ptr %out, align 4
  %sub1760 = sub i32 %982, %981
  store i32 %sub1760, ptr %out, align 4
  %983 = load i32, ptr %out, align 4
  %conv1761 = zext i32 %983 to i64
  %984 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %984, i32 0, i32 5
  %985 = load i64, ptr %total_out, align 8
  %add1762 = add i64 %985, %conv1761
  store i64 %add1762, ptr %total_out, align 8
  %986 = load i32, ptr %out, align 4
  %conv1763 = zext i32 %986 to i64
  %987 = load ptr, ptr %state, align 8
  %total = getelementptr inbounds %struct.inflate_state, ptr %987, i32 0, i32 8
  %988 = load i64, ptr %total, align 8
  %add1764 = add i64 %988, %conv1763
  store i64 %add1764, ptr %total, align 8
  %989 = load ptr, ptr %state, align 8
  %wrap1765 = getelementptr inbounds %struct.inflate_state, ptr %989, i32 0, i32 3
  %990 = load i32, ptr %wrap1765, align 8
  %and1766 = and i32 %990, 4
  %tobool1767 = icmp ne i32 %and1766, 0
  br i1 %tobool1767, label %land.lhs.true1768, label %if.end1789

land.lhs.true1768:                                ; preds = %do.end1759
  %991 = load i32, ptr %out, align 4
  %tobool1769 = icmp ne i32 %991, 0
  br i1 %tobool1769, label %if.then1770, label %if.end1789

if.then1770:                                      ; preds = %land.lhs.true1768
  %992 = load ptr, ptr %state, align 8
  %flags1771 = getelementptr inbounds %struct.inflate_state, ptr %992, i32 0, i32 5
  %993 = load i32, ptr %flags1771, align 8
  %tobool1772 = icmp ne i32 %993, 0
  br i1 %tobool1772, label %cond.true1773, label %cond.false1779

cond.true1773:                                    ; preds = %if.then1770
  %994 = load ptr, ptr %state, align 8
  %check1774 = getelementptr inbounds %struct.inflate_state, ptr %994, i32 0, i32 7
  %995 = load i64, ptr %check1774, align 8
  %996 = load ptr, ptr %put, align 8
  %997 = load i32, ptr %out, align 4
  %idx.ext1775 = zext i32 %997 to i64
  %idx.neg1776 = sub i64 0, %idx.ext1775
  %add.ptr1777 = getelementptr inbounds i8, ptr %996, i64 %idx.neg1776
  %998 = load i32, ptr %out, align 4
  %call1778 = call i64 @crc32(i64 noundef %995, ptr noundef %add.ptr1777, i32 noundef %998)
  br label %cond.end1785

cond.false1779:                                   ; preds = %if.then1770
  %999 = load ptr, ptr %state, align 8
  %check1780 = getelementptr inbounds %struct.inflate_state, ptr %999, i32 0, i32 7
  %1000 = load i64, ptr %check1780, align 8
  %1001 = load ptr, ptr %put, align 8
  %1002 = load i32, ptr %out, align 4
  %idx.ext1781 = zext i32 %1002 to i64
  %idx.neg1782 = sub i64 0, %idx.ext1781
  %add.ptr1783 = getelementptr inbounds i8, ptr %1001, i64 %idx.neg1782
  %1003 = load i32, ptr %out, align 4
  %call1784 = call i64 @adler32(i64 noundef %1000, ptr noundef %add.ptr1783, i32 noundef %1003)
  br label %cond.end1785

cond.end1785:                                     ; preds = %cond.false1779, %cond.true1773
  %cond1786 = phi i64 [ %call1778, %cond.true1773 ], [ %call1784, %cond.false1779 ]
  %1004 = load ptr, ptr %state, align 8
  %check1787 = getelementptr inbounds %struct.inflate_state, ptr %1004, i32 0, i32 7
  store i64 %cond1786, ptr %check1787, align 8
  %1005 = load ptr, ptr %strm.addr, align 8
  %adler1788 = getelementptr inbounds %struct.z_stream_s, ptr %1005, i32 0, i32 12
  store i64 %cond1786, ptr %adler1788, align 8
  br label %if.end1789

if.end1789:                                       ; preds = %cond.end1785, %land.lhs.true1768, %do.end1759
  %1006 = load i32, ptr %left, align 4
  store i32 %1006, ptr %out, align 4
  %1007 = load ptr, ptr %state, align 8
  %wrap1790 = getelementptr inbounds %struct.inflate_state, ptr %1007, i32 0, i32 3
  %1008 = load i32, ptr %wrap1790, align 8
  %and1791 = and i32 %1008, 4
  %tobool1792 = icmp ne i32 %and1791, 0
  br i1 %tobool1792, label %land.lhs.true1793, label %if.end1817

land.lhs.true1793:                                ; preds = %if.end1789
  %1009 = load ptr, ptr %state, align 8
  %flags1794 = getelementptr inbounds %struct.inflate_state, ptr %1009, i32 0, i32 5
  %1010 = load i32, ptr %flags1794, align 8
  %tobool1795 = icmp ne i32 %1010, 0
  br i1 %tobool1795, label %cond.true1796, label %cond.false1797

cond.true1796:                                    ; preds = %land.lhs.true1793
  %1011 = load i64, ptr %hold, align 8
  br label %cond.end1809

cond.false1797:                                   ; preds = %land.lhs.true1793
  %1012 = load i64, ptr %hold, align 8
  %shr1798 = lshr i64 %1012, 24
  %and1799 = and i64 %shr1798, 255
  %1013 = load i64, ptr %hold, align 8
  %shr1800 = lshr i64 %1013, 8
  %and1801 = and i64 %shr1800, 65280
  %add1802 = add i64 %and1799, %and1801
  %1014 = load i64, ptr %hold, align 8
  %and1803 = and i64 %1014, 65280
  %shl1804 = shl i64 %and1803, 8
  %add1805 = add i64 %add1802, %shl1804
  %1015 = load i64, ptr %hold, align 8
  %and1806 = and i64 %1015, 255
  %shl1807 = shl i64 %and1806, 24
  %add1808 = add i64 %add1805, %shl1807
  br label %cond.end1809

cond.end1809:                                     ; preds = %cond.false1797, %cond.true1796
  %cond1810 = phi i64 [ %1011, %cond.true1796 ], [ %add1808, %cond.false1797 ]
  %1016 = load ptr, ptr %state, align 8
  %check1811 = getelementptr inbounds %struct.inflate_state, ptr %1016, i32 0, i32 7
  %1017 = load i64, ptr %check1811, align 8
  %cmp1812 = icmp ne i64 %cond1810, %1017
  br i1 %cmp1812, label %if.then1814, label %if.end1817

if.then1814:                                      ; preds = %cond.end1809
  %1018 = load ptr, ptr %strm.addr, align 8
  %msg1815 = getelementptr inbounds %struct.z_stream_s, ptr %1018, i32 0, i32 6
  store ptr @.str.17, ptr %msg1815, align 8
  %1019 = load ptr, ptr %state, align 8
  %mode1816 = getelementptr inbounds %struct.inflate_state, ptr %1019, i32 0, i32 1
  store i32 16209, ptr %mode1816, align 8
  br label %sw.epilog1874

if.end1817:                                       ; preds = %cond.end1809, %if.end1789
  br label %do.body1818

do.body1818:                                      ; preds = %if.end1817
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end1820

do.end1820:                                       ; preds = %do.body1818
  br label %if.end1821

if.end1821:                                       ; preds = %do.end1820, %sw.bb1734
  %1020 = load ptr, ptr %state, align 8
  %mode1822 = getelementptr inbounds %struct.inflate_state, ptr %1020, i32 0, i32 1
  store i32 16207, ptr %mode1822, align 8
  br label %sw.bb1823

sw.bb1823:                                        ; preds = %for.cond, %if.end1821
  %1021 = load ptr, ptr %state, align 8
  %wrap1824 = getelementptr inbounds %struct.inflate_state, ptr %1021, i32 0, i32 3
  %1022 = load i32, ptr %wrap1824, align 8
  %tobool1825 = icmp ne i32 %1022, 0
  br i1 %tobool1825, label %land.lhs.true1826, label %if.end1867

land.lhs.true1826:                                ; preds = %sw.bb1823
  %1023 = load ptr, ptr %state, align 8
  %flags1827 = getelementptr inbounds %struct.inflate_state, ptr %1023, i32 0, i32 5
  %1024 = load i32, ptr %flags1827, align 8
  %tobool1828 = icmp ne i32 %1024, 0
  br i1 %tobool1828, label %if.then1829, label %if.end1867

if.then1829:                                      ; preds = %land.lhs.true1826
  br label %do.body1830

do.body1830:                                      ; preds = %if.then1829
  br label %while.cond1831

while.cond1831:                                   ; preds = %do.end1848, %do.body1830
  %1025 = load i32, ptr %bits, align 4
  %cmp1832 = icmp ult i32 %1025, 32
  br i1 %cmp1832, label %while.body1834, label %while.end1849

while.body1834:                                   ; preds = %while.cond1831
  br label %do.body1835

do.body1835:                                      ; preds = %while.body1834
  %1026 = load i32, ptr %have, align 4
  %cmp1836 = icmp eq i32 %1026, 0
  br i1 %cmp1836, label %if.then1838, label %if.end1839

if.then1838:                                      ; preds = %do.body1835
  br label %inf_leave

if.end1839:                                       ; preds = %do.body1835
  %1027 = load i32, ptr %have, align 4
  %dec1840 = add i32 %1027, -1
  store i32 %dec1840, ptr %have, align 4
  %1028 = load ptr, ptr %next, align 8
  %incdec.ptr1841 = getelementptr inbounds i8, ptr %1028, i32 1
  store ptr %incdec.ptr1841, ptr %next, align 8
  %1029 = load i8, ptr %1028, align 1
  %conv1842 = zext i8 %1029 to i64
  %1030 = load i32, ptr %bits, align 4
  %sh_prom1843 = zext i32 %1030 to i64
  %shl1844 = shl i64 %conv1842, %sh_prom1843
  %1031 = load i64, ptr %hold, align 8
  %add1845 = add i64 %1031, %shl1844
  store i64 %add1845, ptr %hold, align 8
  %1032 = load i32, ptr %bits, align 4
  %add1846 = add i32 %1032, 8
  store i32 %add1846, ptr %bits, align 4
  br label %do.end1848

do.end1848:                                       ; preds = %if.end1839
  br label %while.cond1831, !llvm.loop !31

while.end1849:                                    ; preds = %while.cond1831
  br label %do.end1851

do.end1851:                                       ; preds = %while.end1849
  %1033 = load ptr, ptr %state, align 8
  %wrap1852 = getelementptr inbounds %struct.inflate_state, ptr %1033, i32 0, i32 3
  %1034 = load i32, ptr %wrap1852, align 8
  %and1853 = and i32 %1034, 4
  %tobool1854 = icmp ne i32 %and1853, 0
  br i1 %tobool1854, label %land.lhs.true1855, label %if.end1863

land.lhs.true1855:                                ; preds = %do.end1851
  %1035 = load i64, ptr %hold, align 8
  %1036 = load ptr, ptr %state, align 8
  %total1856 = getelementptr inbounds %struct.inflate_state, ptr %1036, i32 0, i32 8
  %1037 = load i64, ptr %total1856, align 8
  %and1857 = and i64 %1037, 4294967295
  %cmp1858 = icmp ne i64 %1035, %and1857
  br i1 %cmp1858, label %if.then1860, label %if.end1863

if.then1860:                                      ; preds = %land.lhs.true1855
  %1038 = load ptr, ptr %strm.addr, align 8
  %msg1861 = getelementptr inbounds %struct.z_stream_s, ptr %1038, i32 0, i32 6
  store ptr @.str.18, ptr %msg1861, align 8
  %1039 = load ptr, ptr %state, align 8
  %mode1862 = getelementptr inbounds %struct.inflate_state, ptr %1039, i32 0, i32 1
  store i32 16209, ptr %mode1862, align 8
  br label %sw.epilog1874

if.end1863:                                       ; preds = %land.lhs.true1855, %do.end1851
  br label %do.body1864

do.body1864:                                      ; preds = %if.end1863
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %do.end1866

do.end1866:                                       ; preds = %do.body1864
  br label %if.end1867

if.end1867:                                       ; preds = %do.end1866, %land.lhs.true1826, %sw.bb1823
  %1040 = load ptr, ptr %state, align 8
  %mode1868 = getelementptr inbounds %struct.inflate_state, ptr %1040, i32 0, i32 1
  store i32 16208, ptr %mode1868, align 8
  br label %sw.bb1869

sw.bb1869:                                        ; preds = %for.cond, %if.end1867
  store i32 1, ptr %ret, align 4
  br label %inf_leave

sw.bb1870:                                        ; preds = %for.cond
  store i32 -3, ptr %ret, align 4
  br label %inf_leave

sw.bb1871:                                        ; preds = %for.cond
  store i32 -4, ptr %retval, align 4
  br label %return

sw.bb1872:                                        ; preds = %for.cond
  br label %sw.default1873

sw.default1873:                                   ; preds = %for.cond, %sw.bb1872
  store i32 -2, ptr %retval, align 4
  br label %return

sw.epilog1874:                                    ; preds = %if.then1860, %if.then1814, %if.end1728, %if.end1723, %if.then1672, %if.then1598, %if.then1428, %if.then1420, %if.then1413, %if.end1292, %if.then1252, %if.then1234, %if.then1215, %if.then1208, %if.then960, %if.then887, %if.end831, %if.end820, %if.then788, %do.end752, %do.end696, %if.end614, %if.then596, %if.then143, %if.then136, %do.end108, %if.then97, %if.then75, %if.then68, %do.end49, %if.then16
  br label %for.cond

inf_leave:                                        ; preds = %sw.bb1870, %sw.bb1869, %if.then1838, %if.then1746, %if.then1727, %if.then1659, %if.then1622, %if.then1553, %if.then1504, %if.then1450, %if.then1365, %if.then1313, %if.then1259, %if.then1147, %if.then1103, %if.then1041, %if.then993, %if.then908, %if.then842, %if.then819, %if.then801, %if.then770, %do.end742, %if.then707, %if.then683, %if.then628, %if.then574, %if.then549, %if.then498, %if.then478, %if.then432, %if.then420, %if.then303, %if.then244, %if.then188, %if.then118, %if.then23
  br label %do.body1875

do.body1875:                                      ; preds = %inf_leave
  %1041 = load ptr, ptr %put, align 8
  %1042 = load ptr, ptr %strm.addr, align 8
  %next_out1876 = getelementptr inbounds %struct.z_stream_s, ptr %1042, i32 0, i32 3
  store ptr %1041, ptr %next_out1876, align 8
  %1043 = load i32, ptr %left, align 4
  %1044 = load ptr, ptr %strm.addr, align 8
  %avail_out1877 = getelementptr inbounds %struct.z_stream_s, ptr %1044, i32 0, i32 4
  store i32 %1043, ptr %avail_out1877, align 8
  %1045 = load ptr, ptr %next, align 8
  %1046 = load ptr, ptr %strm.addr, align 8
  %next_in1878 = getelementptr inbounds %struct.z_stream_s, ptr %1046, i32 0, i32 0
  store ptr %1045, ptr %next_in1878, align 8
  %1047 = load i32, ptr %have, align 4
  %1048 = load ptr, ptr %strm.addr, align 8
  %avail_in1879 = getelementptr inbounds %struct.z_stream_s, ptr %1048, i32 0, i32 1
  store i32 %1047, ptr %avail_in1879, align 8
  %1049 = load i64, ptr %hold, align 8
  %1050 = load ptr, ptr %state, align 8
  %hold1880 = getelementptr inbounds %struct.inflate_state, ptr %1050, i32 0, i32 15
  store i64 %1049, ptr %hold1880, align 8
  %1051 = load i32, ptr %bits, align 4
  %1052 = load ptr, ptr %state, align 8
  %bits1881 = getelementptr inbounds %struct.inflate_state, ptr %1052, i32 0, i32 16
  store i32 %1051, ptr %bits1881, align 8
  br label %do.end1883

do.end1883:                                       ; preds = %do.body1875
  %1053 = load ptr, ptr %state, align 8
  %wsize1884 = getelementptr inbounds %struct.inflate_state, ptr %1053, i32 0, i32 11
  %1054 = load i32, ptr %wsize1884, align 4
  %tobool1885 = icmp ne i32 %1054, 0
  br i1 %tobool1885, label %if.then1901, label %lor.lhs.false1886

lor.lhs.false1886:                                ; preds = %do.end1883
  %1055 = load i32, ptr %out, align 4
  %1056 = load ptr, ptr %strm.addr, align 8
  %avail_out1887 = getelementptr inbounds %struct.z_stream_s, ptr %1056, i32 0, i32 4
  %1057 = load i32, ptr %avail_out1887, align 8
  %cmp1888 = icmp ne i32 %1055, %1057
  br i1 %cmp1888, label %land.lhs.true1890, label %if.end1910

land.lhs.true1890:                                ; preds = %lor.lhs.false1886
  %1058 = load ptr, ptr %state, align 8
  %mode1891 = getelementptr inbounds %struct.inflate_state, ptr %1058, i32 0, i32 1
  %1059 = load i32, ptr %mode1891, align 8
  %cmp1892 = icmp ult i32 %1059, 16209
  br i1 %cmp1892, label %land.lhs.true1894, label %if.end1910

land.lhs.true1894:                                ; preds = %land.lhs.true1890
  %1060 = load ptr, ptr %state, align 8
  %mode1895 = getelementptr inbounds %struct.inflate_state, ptr %1060, i32 0, i32 1
  %1061 = load i32, ptr %mode1895, align 8
  %cmp1896 = icmp ult i32 %1061, 16206
  br i1 %cmp1896, label %if.then1901, label %lor.lhs.false1898

lor.lhs.false1898:                                ; preds = %land.lhs.true1894
  %1062 = load i32, ptr %flush.addr, align 4
  %cmp1899 = icmp ne i32 %1062, 4
  br i1 %cmp1899, label %if.then1901, label %if.end1910

if.then1901:                                      ; preds = %lor.lhs.false1898, %land.lhs.true1894, %do.end1883
  %1063 = load ptr, ptr %strm.addr, align 8
  %1064 = load ptr, ptr %strm.addr, align 8
  %next_out1902 = getelementptr inbounds %struct.z_stream_s, ptr %1064, i32 0, i32 3
  %1065 = load ptr, ptr %next_out1902, align 8
  %1066 = load i32, ptr %out, align 4
  %1067 = load ptr, ptr %strm.addr, align 8
  %avail_out1903 = getelementptr inbounds %struct.z_stream_s, ptr %1067, i32 0, i32 4
  %1068 = load i32, ptr %avail_out1903, align 8
  %sub1904 = sub i32 %1066, %1068
  %call1905 = call i32 @updatewindow(ptr noundef %1063, ptr noundef %1065, i32 noundef %sub1904)
  %tobool1906 = icmp ne i32 %call1905, 0
  br i1 %tobool1906, label %if.then1907, label %if.end1909

if.then1907:                                      ; preds = %if.then1901
  %1069 = load ptr, ptr %state, align 8
  %mode1908 = getelementptr inbounds %struct.inflate_state, ptr %1069, i32 0, i32 1
  store i32 16210, ptr %mode1908, align 8
  store i32 -4, ptr %retval, align 4
  br label %return

if.end1909:                                       ; preds = %if.then1901
  br label %if.end1910

if.end1910:                                       ; preds = %if.end1909, %lor.lhs.false1898, %land.lhs.true1890, %lor.lhs.false1886
  %1070 = load ptr, ptr %strm.addr, align 8
  %avail_in1911 = getelementptr inbounds %struct.z_stream_s, ptr %1070, i32 0, i32 1
  %1071 = load i32, ptr %avail_in1911, align 8
  %1072 = load i32, ptr %in, align 4
  %sub1912 = sub i32 %1072, %1071
  store i32 %sub1912, ptr %in, align 4
  %1073 = load ptr, ptr %strm.addr, align 8
  %avail_out1913 = getelementptr inbounds %struct.z_stream_s, ptr %1073, i32 0, i32 4
  %1074 = load i32, ptr %avail_out1913, align 8
  %1075 = load i32, ptr %out, align 4
  %sub1914 = sub i32 %1075, %1074
  store i32 %sub1914, ptr %out, align 4
  %1076 = load i32, ptr %in, align 4
  %conv1915 = zext i32 %1076 to i64
  %1077 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %1077, i32 0, i32 2
  %1078 = load i64, ptr %total_in, align 8
  %add1916 = add i64 %1078, %conv1915
  store i64 %add1916, ptr %total_in, align 8
  %1079 = load i32, ptr %out, align 4
  %conv1917 = zext i32 %1079 to i64
  %1080 = load ptr, ptr %strm.addr, align 8
  %total_out1918 = getelementptr inbounds %struct.z_stream_s, ptr %1080, i32 0, i32 5
  %1081 = load i64, ptr %total_out1918, align 8
  %add1919 = add i64 %1081, %conv1917
  store i64 %add1919, ptr %total_out1918, align 8
  %1082 = load i32, ptr %out, align 4
  %conv1920 = zext i32 %1082 to i64
  %1083 = load ptr, ptr %state, align 8
  %total1921 = getelementptr inbounds %struct.inflate_state, ptr %1083, i32 0, i32 8
  %1084 = load i64, ptr %total1921, align 8
  %add1922 = add i64 %1084, %conv1920
  store i64 %add1922, ptr %total1921, align 8
  %1085 = load ptr, ptr %state, align 8
  %wrap1923 = getelementptr inbounds %struct.inflate_state, ptr %1085, i32 0, i32 3
  %1086 = load i32, ptr %wrap1923, align 8
  %and1924 = and i32 %1086, 4
  %tobool1925 = icmp ne i32 %and1924, 0
  br i1 %tobool1925, label %land.lhs.true1926, label %if.end1949

land.lhs.true1926:                                ; preds = %if.end1910
  %1087 = load i32, ptr %out, align 4
  %tobool1927 = icmp ne i32 %1087, 0
  br i1 %tobool1927, label %if.then1928, label %if.end1949

if.then1928:                                      ; preds = %land.lhs.true1926
  %1088 = load ptr, ptr %state, align 8
  %flags1929 = getelementptr inbounds %struct.inflate_state, ptr %1088, i32 0, i32 5
  %1089 = load i32, ptr %flags1929, align 8
  %tobool1930 = icmp ne i32 %1089, 0
  br i1 %tobool1930, label %cond.true1931, label %cond.false1938

cond.true1931:                                    ; preds = %if.then1928
  %1090 = load ptr, ptr %state, align 8
  %check1932 = getelementptr inbounds %struct.inflate_state, ptr %1090, i32 0, i32 7
  %1091 = load i64, ptr %check1932, align 8
  %1092 = load ptr, ptr %strm.addr, align 8
  %next_out1933 = getelementptr inbounds %struct.z_stream_s, ptr %1092, i32 0, i32 3
  %1093 = load ptr, ptr %next_out1933, align 8
  %1094 = load i32, ptr %out, align 4
  %idx.ext1934 = zext i32 %1094 to i64
  %idx.neg1935 = sub i64 0, %idx.ext1934
  %add.ptr1936 = getelementptr inbounds i8, ptr %1093, i64 %idx.neg1935
  %1095 = load i32, ptr %out, align 4
  %call1937 = call i64 @crc32(i64 noundef %1091, ptr noundef %add.ptr1936, i32 noundef %1095)
  br label %cond.end1945

cond.false1938:                                   ; preds = %if.then1928
  %1096 = load ptr, ptr %state, align 8
  %check1939 = getelementptr inbounds %struct.inflate_state, ptr %1096, i32 0, i32 7
  %1097 = load i64, ptr %check1939, align 8
  %1098 = load ptr, ptr %strm.addr, align 8
  %next_out1940 = getelementptr inbounds %struct.z_stream_s, ptr %1098, i32 0, i32 3
  %1099 = load ptr, ptr %next_out1940, align 8
  %1100 = load i32, ptr %out, align 4
  %idx.ext1941 = zext i32 %1100 to i64
  %idx.neg1942 = sub i64 0, %idx.ext1941
  %add.ptr1943 = getelementptr inbounds i8, ptr %1099, i64 %idx.neg1942
  %1101 = load i32, ptr %out, align 4
  %call1944 = call i64 @adler32(i64 noundef %1097, ptr noundef %add.ptr1943, i32 noundef %1101)
  br label %cond.end1945

cond.end1945:                                     ; preds = %cond.false1938, %cond.true1931
  %cond1946 = phi i64 [ %call1937, %cond.true1931 ], [ %call1944, %cond.false1938 ]
  %1102 = load ptr, ptr %state, align 8
  %check1947 = getelementptr inbounds %struct.inflate_state, ptr %1102, i32 0, i32 7
  store i64 %cond1946, ptr %check1947, align 8
  %1103 = load ptr, ptr %strm.addr, align 8
  %adler1948 = getelementptr inbounds %struct.z_stream_s, ptr %1103, i32 0, i32 12
  store i64 %cond1946, ptr %adler1948, align 8
  br label %if.end1949

if.end1949:                                       ; preds = %cond.end1945, %land.lhs.true1926, %if.end1910
  %1104 = load ptr, ptr %state, align 8
  %bits1950 = getelementptr inbounds %struct.inflate_state, ptr %1104, i32 0, i32 16
  %1105 = load i32, ptr %bits1950, align 8
  %1106 = load ptr, ptr %state, align 8
  %last1951 = getelementptr inbounds %struct.inflate_state, ptr %1106, i32 0, i32 2
  %1107 = load i32, ptr %last1951, align 4
  %tobool1952 = icmp ne i32 %1107, 0
  %1108 = zext i1 %tobool1952 to i64
  %cond1953 = select i1 %tobool1952, i32 64, i32 0
  %add1954 = add nsw i32 %1105, %cond1953
  %1109 = load ptr, ptr %state, align 8
  %mode1955 = getelementptr inbounds %struct.inflate_state, ptr %1109, i32 0, i32 1
  %1110 = load i32, ptr %mode1955, align 8
  %cmp1956 = icmp eq i32 %1110, 16191
  %1111 = zext i1 %cmp1956 to i64
  %cond1958 = select i1 %cmp1956, i32 128, i32 0
  %add1959 = add nsw i32 %add1954, %cond1958
  %1112 = load ptr, ptr %state, align 8
  %mode1960 = getelementptr inbounds %struct.inflate_state, ptr %1112, i32 0, i32 1
  %1113 = load i32, ptr %mode1960, align 8
  %cmp1961 = icmp eq i32 %1113, 16199
  br i1 %cmp1961, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end1949
  %1114 = load ptr, ptr %state, align 8
  %mode1963 = getelementptr inbounds %struct.inflate_state, ptr %1114, i32 0, i32 1
  %1115 = load i32, ptr %mode1963, align 8
  %cmp1964 = icmp eq i32 %1115, 16194
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end1949
  %1116 = phi i1 [ true, %if.end1949 ], [ %cmp1964, %lor.rhs ]
  %1117 = zext i1 %1116 to i64
  %cond1966 = select i1 %1116, i32 256, i32 0
  %add1967 = add nsw i32 %add1959, %cond1966
  %1118 = load ptr, ptr %strm.addr, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %1118, i32 0, i32 11
  store i32 %add1967, ptr %data_type, align 8
  %1119 = load i32, ptr %in, align 4
  %cmp1968 = icmp eq i32 %1119, 0
  br i1 %cmp1968, label %land.lhs.true1970, label %lor.lhs.false1973

land.lhs.true1970:                                ; preds = %lor.end
  %1120 = load i32, ptr %out, align 4
  %cmp1971 = icmp eq i32 %1120, 0
  br i1 %cmp1971, label %land.lhs.true1976, label %lor.lhs.false1973

lor.lhs.false1973:                                ; preds = %land.lhs.true1970, %lor.end
  %1121 = load i32, ptr %flush.addr, align 4
  %cmp1974 = icmp eq i32 %1121, 4
  br i1 %cmp1974, label %land.lhs.true1976, label %if.end1980

land.lhs.true1976:                                ; preds = %lor.lhs.false1973, %land.lhs.true1970
  %1122 = load i32, ptr %ret, align 4
  %cmp1977 = icmp eq i32 %1122, 0
  br i1 %cmp1977, label %if.then1979, label %if.end1980

if.then1979:                                      ; preds = %land.lhs.true1976
  store i32 -5, ptr %ret, align 4
  br label %if.end1980

if.end1980:                                       ; preds = %if.then1979, %land.lhs.true1976, %lor.lhs.false1973
  %1123 = load i32, ptr %ret, align 4
  store i32 %1123, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end1980, %if.then1907, %sw.default1873, %sw.bb1871, %do.end671, %if.then
  %1124 = load i32, ptr %retval, align 4
  ret i32 %1124
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare void @inflate_fixed(ptr noundef) #1

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @inflate_fast(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @updatewindow(ptr noundef %strm, ptr noundef %end, i32 noundef %copy) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %copy.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %dist = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store i32 %copy, ptr %copy.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %2 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %window, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %zalloc, align 8
  %6 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %opaque, align 8
  %8 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 10
  %9 = load i32, ptr %wbits, align 8
  %shl = shl i32 1, %9
  %call = call ptr %5(ptr noundef %7, i32 noundef %shl, i32 noundef 1)
  %10 = load ptr, ptr %state, align 8
  %window2 = getelementptr inbounds %struct.inflate_state, ptr %10, i32 0, i32 14
  store ptr %call, ptr %window2, align 8
  %11 = load ptr, ptr %state, align 8
  %window3 = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 14
  %12 = load ptr, ptr %window3, align 8
  %cmp4 = icmp eq ptr %12, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 11
  %14 = load i32, ptr %wsize, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end6
  %15 = load ptr, ptr %state, align 8
  %wbits9 = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 10
  %16 = load i32, ptr %wbits9, align 8
  %shl10 = shl i32 1, %16
  %17 = load ptr, ptr %state, align 8
  %wsize11 = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 11
  store i32 %shl10, ptr %wsize11, align 4
  %18 = load ptr, ptr %state, align 8
  %wnext = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 13
  store i32 0, ptr %wnext, align 4
  %19 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 12
  store i32 0, ptr %whave, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6
  %20 = load i32, ptr %copy.addr, align 4
  %21 = load ptr, ptr %state, align 8
  %wsize13 = getelementptr inbounds %struct.inflate_state, ptr %21, i32 0, i32 11
  %22 = load i32, ptr %wsize13, align 4
  %cmp14 = icmp uge i32 %20, %22
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %23 = load ptr, ptr %state, align 8
  %window16 = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 14
  %24 = load ptr, ptr %window16, align 8
  %25 = load ptr, ptr %end.addr, align 8
  %26 = load ptr, ptr %state, align 8
  %wsize17 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 11
  %27 = load i32, ptr %wsize17, align 4
  %idx.ext = zext i32 %27 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %idx.neg
  %28 = load ptr, ptr %state, align 8
  %wsize18 = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 11
  %29 = load i32, ptr %wsize18, align 4
  %conv = zext i32 %29 to i64
  %30 = load ptr, ptr %state, align 8
  %window19 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 14
  %31 = load ptr, ptr %window19, align 8
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %31, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memcpy_chk(ptr noundef %24, ptr noundef %add.ptr, i64 noundef %conv, i64 noundef %32) #5
  %33 = load ptr, ptr %state, align 8
  %wnext21 = getelementptr inbounds %struct.inflate_state, ptr %33, i32 0, i32 13
  store i32 0, ptr %wnext21, align 4
  %34 = load ptr, ptr %state, align 8
  %wsize22 = getelementptr inbounds %struct.inflate_state, ptr %34, i32 0, i32 11
  %35 = load i32, ptr %wsize22, align 4
  %36 = load ptr, ptr %state, align 8
  %whave23 = getelementptr inbounds %struct.inflate_state, ptr %36, i32 0, i32 12
  store i32 %35, ptr %whave23, align 8
  br label %if.end73

if.else:                                          ; preds = %if.end12
  %37 = load ptr, ptr %state, align 8
  %wsize24 = getelementptr inbounds %struct.inflate_state, ptr %37, i32 0, i32 11
  %38 = load i32, ptr %wsize24, align 4
  %39 = load ptr, ptr %state, align 8
  %wnext25 = getelementptr inbounds %struct.inflate_state, ptr %39, i32 0, i32 13
  %40 = load i32, ptr %wnext25, align 4
  %sub = sub i32 %38, %40
  store i32 %sub, ptr %dist, align 4
  %41 = load i32, ptr %dist, align 4
  %42 = load i32, ptr %copy.addr, align 4
  %cmp26 = icmp ugt i32 %41, %42
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else
  %43 = load i32, ptr %copy.addr, align 4
  store i32 %43, ptr %dist, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.else
  %44 = load ptr, ptr %state, align 8
  %window30 = getelementptr inbounds %struct.inflate_state, ptr %44, i32 0, i32 14
  %45 = load ptr, ptr %window30, align 8
  %46 = load ptr, ptr %state, align 8
  %wnext31 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 13
  %47 = load i32, ptr %wnext31, align 4
  %idx.ext32 = zext i32 %47 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %45, i64 %idx.ext32
  %48 = load ptr, ptr %end.addr, align 8
  %49 = load i32, ptr %copy.addr, align 4
  %idx.ext34 = zext i32 %49 to i64
  %idx.neg35 = sub i64 0, %idx.ext34
  %add.ptr36 = getelementptr inbounds i8, ptr %48, i64 %idx.neg35
  %50 = load i32, ptr %dist, align 4
  %conv37 = zext i32 %50 to i64
  %51 = load ptr, ptr %state, align 8
  %window38 = getelementptr inbounds %struct.inflate_state, ptr %51, i32 0, i32 14
  %52 = load ptr, ptr %window38, align 8
  %53 = load ptr, ptr %state, align 8
  %wnext39 = getelementptr inbounds %struct.inflate_state, ptr %53, i32 0, i32 13
  %54 = load i32, ptr %wnext39, align 4
  %idx.ext40 = zext i32 %54 to i64
  %add.ptr41 = getelementptr inbounds i8, ptr %52, i64 %idx.ext40
  %55 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr41, i1 false, i1 true, i1 false)
  %call42 = call ptr @__memcpy_chk(ptr noundef %add.ptr33, ptr noundef %add.ptr36, i64 noundef %conv37, i64 noundef %55) #5
  %56 = load i32, ptr %dist, align 4
  %57 = load i32, ptr %copy.addr, align 4
  %sub43 = sub i32 %57, %56
  store i32 %sub43, ptr %copy.addr, align 4
  %58 = load i32, ptr %copy.addr, align 4
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.then44, label %if.else55

if.then44:                                        ; preds = %if.end29
  %59 = load ptr, ptr %state, align 8
  %window45 = getelementptr inbounds %struct.inflate_state, ptr %59, i32 0, i32 14
  %60 = load ptr, ptr %window45, align 8
  %61 = load ptr, ptr %end.addr, align 8
  %62 = load i32, ptr %copy.addr, align 4
  %idx.ext46 = zext i32 %62 to i64
  %idx.neg47 = sub i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %61, i64 %idx.neg47
  %63 = load i32, ptr %copy.addr, align 4
  %conv49 = zext i32 %63 to i64
  %64 = load ptr, ptr %state, align 8
  %window50 = getelementptr inbounds %struct.inflate_state, ptr %64, i32 0, i32 14
  %65 = load ptr, ptr %window50, align 8
  %66 = call i64 @llvm.objectsize.i64.p0(ptr %65, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %60, ptr noundef %add.ptr48, i64 noundef %conv49, i64 noundef %66) #5
  %67 = load i32, ptr %copy.addr, align 4
  %68 = load ptr, ptr %state, align 8
  %wnext52 = getelementptr inbounds %struct.inflate_state, ptr %68, i32 0, i32 13
  store i32 %67, ptr %wnext52, align 4
  %69 = load ptr, ptr %state, align 8
  %wsize53 = getelementptr inbounds %struct.inflate_state, ptr %69, i32 0, i32 11
  %70 = load i32, ptr %wsize53, align 4
  %71 = load ptr, ptr %state, align 8
  %whave54 = getelementptr inbounds %struct.inflate_state, ptr %71, i32 0, i32 12
  store i32 %70, ptr %whave54, align 8
  br label %if.end72

if.else55:                                        ; preds = %if.end29
  %72 = load i32, ptr %dist, align 4
  %73 = load ptr, ptr %state, align 8
  %wnext56 = getelementptr inbounds %struct.inflate_state, ptr %73, i32 0, i32 13
  %74 = load i32, ptr %wnext56, align 4
  %add = add i32 %74, %72
  store i32 %add, ptr %wnext56, align 4
  %75 = load ptr, ptr %state, align 8
  %wnext57 = getelementptr inbounds %struct.inflate_state, ptr %75, i32 0, i32 13
  %76 = load i32, ptr %wnext57, align 4
  %77 = load ptr, ptr %state, align 8
  %wsize58 = getelementptr inbounds %struct.inflate_state, ptr %77, i32 0, i32 11
  %78 = load i32, ptr %wsize58, align 4
  %cmp59 = icmp eq i32 %76, %78
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.else55
  %79 = load ptr, ptr %state, align 8
  %wnext62 = getelementptr inbounds %struct.inflate_state, ptr %79, i32 0, i32 13
  store i32 0, ptr %wnext62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.else55
  %80 = load ptr, ptr %state, align 8
  %whave64 = getelementptr inbounds %struct.inflate_state, ptr %80, i32 0, i32 12
  %81 = load i32, ptr %whave64, align 8
  %82 = load ptr, ptr %state, align 8
  %wsize65 = getelementptr inbounds %struct.inflate_state, ptr %82, i32 0, i32 11
  %83 = load i32, ptr %wsize65, align 4
  %cmp66 = icmp ult i32 %81, %83
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end63
  %84 = load i32, ptr %dist, align 4
  %85 = load ptr, ptr %state, align 8
  %whave69 = getelementptr inbounds %struct.inflate_state, ptr %85, i32 0, i32 12
  %86 = load i32, ptr %whave69, align 8
  %add70 = add i32 %86, %84
  store i32 %add70, ptr %whave69, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end63
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then44
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then5
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateEnd(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 14
  %4 = load ptr, ptr %window, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %zfree, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %opaque, align 8
  %9 = load ptr, ptr %state, align 8
  %window3 = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 14
  %10 = load ptr, ptr %window3, align 8
  call void %6(ptr noundef %8, ptr noundef %10)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %11 = load ptr, ptr %strm.addr, align 8
  %zfree5 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %zfree5, align 8
  %13 = load ptr, ptr %strm.addr, align 8
  %opaque6 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 10
  %14 = load ptr, ptr %opaque6, align 8
  %15 = load ptr, ptr %strm.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %state7, align 8
  call void %12(ptr noundef %14, ptr noundef %16)
  %17 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 7
  store ptr null, ptr %state8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateGetDictionary(ptr noundef %strm, ptr noundef %dictionary, ptr noundef %dictLength) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store ptr %dictLength, ptr %dictLength.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %whave, align 8
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %dictionary.addr, align 8
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %if.then3, label %if.end24

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %dictionary.addr, align 8
  %7 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 14
  %8 = load ptr, ptr %window, align 8
  %9 = load ptr, ptr %state, align 8
  %wnext = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 13
  %10 = load i32, ptr %wnext, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  %11 = load ptr, ptr %state, align 8
  %whave4 = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 12
  %12 = load i32, ptr %whave4, align 8
  %13 = load ptr, ptr %state, align 8
  %wnext5 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 13
  %14 = load i32, ptr %wnext5, align 4
  %sub = sub i32 %12, %14
  %conv = zext i32 %sub to i64
  %15 = load ptr, ptr %dictionary.addr, align 8
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %add.ptr, i64 noundef %conv, i64 noundef %16) #5
  %17 = load ptr, ptr %dictionary.addr, align 8
  %18 = load ptr, ptr %state, align 8
  %whave7 = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 12
  %19 = load i32, ptr %whave7, align 8
  %idx.ext8 = zext i32 %19 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %17, i64 %idx.ext8
  %20 = load ptr, ptr %state, align 8
  %wnext10 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 13
  %21 = load i32, ptr %wnext10, align 4
  %idx.ext11 = zext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext11
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.neg
  %22 = load ptr, ptr %state, align 8
  %window13 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 14
  %23 = load ptr, ptr %window13, align 8
  %24 = load ptr, ptr %state, align 8
  %wnext14 = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 13
  %25 = load i32, ptr %wnext14, align 4
  %conv15 = zext i32 %25 to i64
  %26 = load ptr, ptr %dictionary.addr, align 8
  %27 = load ptr, ptr %state, align 8
  %whave16 = getelementptr inbounds %struct.inflate_state, ptr %27, i32 0, i32 12
  %28 = load i32, ptr %whave16, align 8
  %idx.ext17 = zext i32 %28 to i64
  %add.ptr18 = getelementptr inbounds i8, ptr %26, i64 %idx.ext17
  %29 = load ptr, ptr %state, align 8
  %wnext19 = getelementptr inbounds %struct.inflate_state, ptr %29, i32 0, i32 13
  %30 = load i32, ptr %wnext19, align 4
  %idx.ext20 = zext i32 %30 to i64
  %idx.neg21 = sub i64 0, %idx.ext20
  %add.ptr22 = getelementptr inbounds i8, ptr %add.ptr18, i64 %idx.neg21
  %31 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr22, i1 false, i1 true, i1 false)
  %call23 = call ptr @__memcpy_chk(ptr noundef %add.ptr12, ptr noundef %23, i64 noundef %conv15, i64 noundef %31) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then3, %land.lhs.true, %if.end
  %32 = load ptr, ptr %dictLength.addr, align 8
  %cmp25 = icmp ne ptr %32, null
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %33 = load ptr, ptr %state, align 8
  %whave28 = getelementptr inbounds %struct.inflate_state, ptr %33, i32 0, i32 12
  %34 = load i32, ptr %whave28, align 8
  %35 = load ptr, ptr %dictLength.addr, align 8
  store i32 %34, ptr %35, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateSetDictionary(ptr noundef %strm, ptr noundef %dictionary, i32 noundef %dictLength) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %dictid = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store i32 %dictLength, ptr %dictLength.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %wrap, align 8
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %mode, align 8
  %cmp2 = icmp ne i32 %6, 16190
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 -2, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %state, align 8
  %mode5 = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %mode5, align 8
  %cmp6 = icmp eq i32 %8, 16190
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end4
  %call8 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  store i64 %call8, ptr %dictid, align 8
  %9 = load i64, ptr %dictid, align 8
  %10 = load ptr, ptr %dictionary.addr, align 8
  %11 = load i32, ptr %dictLength.addr, align 4
  %call9 = call i64 @adler32(i64 noundef %9, ptr noundef %10, i32 noundef %11)
  store i64 %call9, ptr %dictid, align 8
  %12 = load i64, ptr %dictid, align 8
  %13 = load ptr, ptr %state, align 8
  %check = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 7
  %14 = load i64, ptr %check, align 8
  %cmp10 = icmp ne i64 %12, %14
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  store i32 -3, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end4
  %15 = load ptr, ptr %strm.addr, align 8
  %16 = load ptr, ptr %dictionary.addr, align 8
  %17 = load i32, ptr %dictLength.addr, align 4
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %idx.ext
  %18 = load i32, ptr %dictLength.addr, align 4
  %call14 = call i32 @updatewindow(ptr noundef %15, ptr noundef %add.ptr, i32 noundef %18)
  store i32 %call14, ptr %ret, align 4
  %19 = load i32, ptr %ret, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %20 = load ptr, ptr %state, align 8
  %mode17 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 1
  store i32 16210, ptr %mode17, align 8
  store i32 -4, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %21 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %21, i32 0, i32 4
  store i32 1, ptr %havedict, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then16, %if.then11, %if.then3, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateGetHeader(ptr noundef %strm, ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %wrap, align 8
  %and = and i32 %4, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %head.addr, align 8
  %6 = load ptr, ptr %state, align 8
  %head4 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 9
  store ptr %5, ptr %head4, align 8
  %7 = load ptr, ptr %head.addr, align 8
  %done = getelementptr inbounds %struct.gz_header_s, ptr %7, i32 0, i32 12
  store i32 0, ptr %done, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateSync(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %flags = alloca i32, align 4
  %in = alloca i64, align 8
  %out = alloca i64, align 8
  %buf = alloca [4 x i8], align 1
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %avail_in, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %bits, align 8
  %cmp2 = icmp ult i32 %6, 8
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 -5, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %mode, align 8
  %cmp5 = icmp ne i32 %8, 16211
  br i1 %cmp5, label %if.then6, label %if.end21

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %state, align 8
  %mode7 = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 1
  store i32 16211, ptr %mode7, align 8
  %10 = load ptr, ptr %state, align 8
  %bits8 = getelementptr inbounds %struct.inflate_state, ptr %10, i32 0, i32 16
  %11 = load i32, ptr %bits8, align 8
  %and = and i32 %11, 7
  %12 = load ptr, ptr %state, align 8
  %hold = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 15
  %13 = load i64, ptr %hold, align 8
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 %13, %sh_prom
  store i64 %shr, ptr %hold, align 8
  %14 = load ptr, ptr %state, align 8
  %bits9 = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 16
  %15 = load i32, ptr %bits9, align 8
  %and10 = and i32 %15, 7
  %16 = load ptr, ptr %state, align 8
  %bits11 = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 16
  %17 = load i32, ptr %bits11, align 8
  %sub = sub i32 %17, %and10
  store i32 %sub, ptr %bits11, align 8
  store i32 0, ptr %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then6
  %18 = load ptr, ptr %state, align 8
  %bits12 = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 16
  %19 = load i32, ptr %bits12, align 8
  %cmp13 = icmp uge i32 %19, 8
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %state, align 8
  %hold14 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 15
  %21 = load i64, ptr %hold14, align 8
  %conv = trunc i64 %21 to i8
  %22 = load i32, ptr %len, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %len, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %23 = load ptr, ptr %state, align 8
  %hold15 = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 15
  %24 = load i64, ptr %hold15, align 8
  %shr16 = lshr i64 %24, 8
  store i64 %shr16, ptr %hold15, align 8
  %25 = load ptr, ptr %state, align 8
  %bits17 = getelementptr inbounds %struct.inflate_state, ptr %25, i32 0, i32 16
  %26 = load i32, ptr %bits17, align 8
  %sub18 = sub i32 %26, 8
  store i32 %sub18, ptr %bits17, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %27 = load ptr, ptr %state, align 8
  %have = getelementptr inbounds %struct.inflate_state, ptr %27, i32 0, i32 27
  store i32 0, ptr %have, align 4
  %28 = load ptr, ptr %state, align 8
  %have19 = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 27
  %arraydecay = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  %29 = load i32, ptr %len, align 4
  %call20 = call i32 @syncsearch(ptr noundef %have19, ptr noundef %arraydecay, i32 noundef %29)
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.end4
  %30 = load ptr, ptr %state, align 8
  %have22 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 27
  %31 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %next_in, align 8
  %33 = load ptr, ptr %strm.addr, align 8
  %avail_in23 = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %avail_in23, align 8
  %call24 = call i32 @syncsearch(ptr noundef %have22, ptr noundef %32, i32 noundef %34)
  store i32 %call24, ptr %len, align 4
  %35 = load i32, ptr %len, align 4
  %36 = load ptr, ptr %strm.addr, align 8
  %avail_in25 = getelementptr inbounds %struct.z_stream_s, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %avail_in25, align 8
  %sub26 = sub i32 %37, %35
  store i32 %sub26, ptr %avail_in25, align 8
  %38 = load i32, ptr %len, align 4
  %39 = load ptr, ptr %strm.addr, align 8
  %next_in27 = getelementptr inbounds %struct.z_stream_s, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %next_in27, align 8
  %idx.ext = zext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 %idx.ext
  store ptr %add.ptr, ptr %next_in27, align 8
  %41 = load i32, ptr %len, align 4
  %conv28 = zext i32 %41 to i64
  %42 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %42, i32 0, i32 2
  %43 = load i64, ptr %total_in, align 8
  %add = add i64 %43, %conv28
  store i64 %add, ptr %total_in, align 8
  %44 = load ptr, ptr %state, align 8
  %have29 = getelementptr inbounds %struct.inflate_state, ptr %44, i32 0, i32 27
  %45 = load i32, ptr %have29, align 4
  %cmp30 = icmp ne i32 %45, 4
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end21
  store i32 -3, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end21
  %46 = load ptr, ptr %state, align 8
  %flags34 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 5
  %47 = load i32, ptr %flags34, align 8
  %cmp35 = icmp eq i32 %47, -1
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end33
  %48 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 3
  store i32 0, ptr %wrap, align 8
  br label %if.end40

if.else:                                          ; preds = %if.end33
  %49 = load ptr, ptr %state, align 8
  %wrap38 = getelementptr inbounds %struct.inflate_state, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %wrap38, align 8
  %and39 = and i32 %50, -5
  store i32 %and39, ptr %wrap38, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then37
  %51 = load ptr, ptr %state, align 8
  %flags41 = getelementptr inbounds %struct.inflate_state, ptr %51, i32 0, i32 5
  %52 = load i32, ptr %flags41, align 8
  store i32 %52, ptr %flags, align 4
  %53 = load ptr, ptr %strm.addr, align 8
  %total_in42 = getelementptr inbounds %struct.z_stream_s, ptr %53, i32 0, i32 2
  %54 = load i64, ptr %total_in42, align 8
  store i64 %54, ptr %in, align 8
  %55 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %55, i32 0, i32 5
  %56 = load i64, ptr %total_out, align 8
  store i64 %56, ptr %out, align 8
  %57 = load ptr, ptr %strm.addr, align 8
  %call43 = call i32 @inflateReset(ptr noundef %57)
  %58 = load i64, ptr %in, align 8
  %59 = load ptr, ptr %strm.addr, align 8
  %total_in44 = getelementptr inbounds %struct.z_stream_s, ptr %59, i32 0, i32 2
  store i64 %58, ptr %total_in44, align 8
  %60 = load i64, ptr %out, align 8
  %61 = load ptr, ptr %strm.addr, align 8
  %total_out45 = getelementptr inbounds %struct.z_stream_s, ptr %61, i32 0, i32 5
  store i64 %60, ptr %total_out45, align 8
  %62 = load i32, ptr %flags, align 4
  %63 = load ptr, ptr %state, align 8
  %flags46 = getelementptr inbounds %struct.inflate_state, ptr %63, i32 0, i32 5
  store i32 %62, ptr %flags46, align 8
  %64 = load ptr, ptr %state, align 8
  %mode47 = getelementptr inbounds %struct.inflate_state, ptr %64, i32 0, i32 1
  store i32 16191, ptr %mode47, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then32, %if.then3, %if.then
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @syncsearch(ptr noundef %have, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %have.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %got = alloca i32, align 4
  %next = alloca i32, align 4
  store ptr %have, ptr %have.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %have.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %got, align 4
  store i32 0, ptr %next, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %2 = load i32, ptr %next, align 4
  %3 = load i32, ptr %len.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, ptr %got, align 4
  %cmp1 = icmp ult i32 %4, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load i32, ptr %next, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, ptr %got, align 4
  %cmp2 = icmp ult i32 %9, 2
  %10 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 0, i32 255
  %cmp4 = icmp eq i32 %conv, %cond
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, ptr %got, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %got, align 4
  br label %if.end10

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %buf.addr, align 8
  %13 = load i32, ptr %next, align 4
  %idxprom6 = zext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 %idxprom6
  %14 = load i8, ptr %arrayidx7, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  store i32 0, ptr %got, align 4
  br label %if.end

if.else9:                                         ; preds = %if.else
  %15 = load i32, ptr %got, align 4
  %sub = sub i32 4, %15
  store i32 %sub, ptr %got, align 4
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %16 = load i32, ptr %next, align 4
  %inc11 = add i32 %16, 1
  store i32 %inc11, ptr %next, align 4
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %land.end
  %17 = load i32, ptr %got, align 4
  %18 = load ptr, ptr %have.addr, align 8
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %next, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateSyncPoint(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %mode, align 8
  %cmp = icmp eq i32 %4, 16193
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %5 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %bits, align 8
  %cmp2 = icmp eq i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %7 = phi i1 [ false, %if.end ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, ptr %retval, align 4
  br label %return

return:                                           ; preds = %land.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateCopy(ptr noundef %dest, ptr noundef %source) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %copy = alloca ptr, align 8
  %window = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  %0 = load ptr, ptr %source.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dest.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %source.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state1, align 8
  store ptr %3, ptr %state, align 8
  %4 = load ptr, ptr %source.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %zalloc, align 8
  %6 = load ptr, ptr %source.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %opaque, align 8
  %call2 = call ptr %5(ptr noundef %7, i32 noundef 1, i32 noundef 7160)
  store ptr %call2, ptr %copy, align 8
  %8 = load ptr, ptr %copy, align 8
  %cmp3 = icmp eq ptr %8, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %copy, align 8
  %10 = load ptr, ptr %copy, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memset_chk(ptr noundef %9, i32 noundef 0, i64 noundef 7160, i64 noundef %11) #5
  store ptr null, ptr %window, align 8
  %12 = load ptr, ptr %state, align 8
  %window7 = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %window7, align 8
  %cmp8 = icmp ne ptr %13, null
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end5
  %14 = load ptr, ptr %source.addr, align 8
  %zalloc10 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %zalloc10, align 8
  %16 = load ptr, ptr %source.addr, align 8
  %opaque11 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %opaque11, align 8
  %18 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 10
  %19 = load i32, ptr %wbits, align 8
  %shl = shl i32 1, %19
  %call12 = call ptr %15(ptr noundef %17, i32 noundef %shl, i32 noundef 1)
  store ptr %call12, ptr %window, align 8
  %20 = load ptr, ptr %window, align 8
  %cmp13 = icmp eq ptr %20, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then9
  %21 = load ptr, ptr %source.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %zfree, align 8
  %23 = load ptr, ptr %source.addr, align 8
  %opaque15 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 10
  %24 = load ptr, ptr %opaque15, align 8
  %25 = load ptr, ptr %copy, align 8
  call void %22(ptr noundef %24, ptr noundef %25)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then9
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end5
  %26 = load ptr, ptr %dest.addr, align 8
  %27 = load ptr, ptr %source.addr, align 8
  %28 = load ptr, ptr %dest.addr, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call18 = call ptr @__memcpy_chk(ptr noundef %26, ptr noundef %27, i64 noundef 112, i64 noundef %29) #5
  %30 = load ptr, ptr %copy, align 8
  %31 = load ptr, ptr %state, align 8
  %32 = load ptr, ptr %copy, align 8
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %32, i1 false, i1 true, i1 false)
  %call19 = call ptr @__memcpy_chk(ptr noundef %30, ptr noundef %31, i64 noundef 7160, i64 noundef %33) #5
  %34 = load ptr, ptr %dest.addr, align 8
  %35 = load ptr, ptr %copy, align 8
  %strm = getelementptr inbounds %struct.inflate_state, ptr %35, i32 0, i32 0
  store ptr %34, ptr %strm, align 8
  %36 = load ptr, ptr %state, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %36, i32 0, i32 20
  %37 = load ptr, ptr %lencode, align 8
  %38 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %38, i32 0, i32 31
  %arraydecay = getelementptr inbounds [1444 x %struct.code], ptr %codes, i64 0, i64 0
  %cmp20 = icmp uge ptr %37, %arraydecay
  br i1 %cmp20, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.end17
  %39 = load ptr, ptr %state, align 8
  %lencode21 = getelementptr inbounds %struct.inflate_state, ptr %39, i32 0, i32 20
  %40 = load ptr, ptr %lencode21, align 8
  %41 = load ptr, ptr %state, align 8
  %codes22 = getelementptr inbounds %struct.inflate_state, ptr %41, i32 0, i32 31
  %arraydecay23 = getelementptr inbounds [1444 x %struct.code], ptr %codes22, i64 0, i64 0
  %add.ptr = getelementptr inbounds %struct.code, ptr %arraydecay23, i64 1444
  %add.ptr24 = getelementptr inbounds %struct.code, ptr %add.ptr, i64 -1
  %cmp25 = icmp ule ptr %40, %add.ptr24
  br i1 %cmp25, label %if.then26, label %if.end44

if.then26:                                        ; preds = %land.lhs.true
  %42 = load ptr, ptr %copy, align 8
  %codes27 = getelementptr inbounds %struct.inflate_state, ptr %42, i32 0, i32 31
  %arraydecay28 = getelementptr inbounds [1444 x %struct.code], ptr %codes27, i64 0, i64 0
  %43 = load ptr, ptr %state, align 8
  %lencode29 = getelementptr inbounds %struct.inflate_state, ptr %43, i32 0, i32 20
  %44 = load ptr, ptr %lencode29, align 8
  %45 = load ptr, ptr %state, align 8
  %codes30 = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 31
  %arraydecay31 = getelementptr inbounds [1444 x %struct.code], ptr %codes30, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %44 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %add.ptr32 = getelementptr inbounds %struct.code, ptr %arraydecay28, i64 %sub.ptr.div
  %46 = load ptr, ptr %copy, align 8
  %lencode33 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 20
  store ptr %add.ptr32, ptr %lencode33, align 8
  %47 = load ptr, ptr %copy, align 8
  %codes34 = getelementptr inbounds %struct.inflate_state, ptr %47, i32 0, i32 31
  %arraydecay35 = getelementptr inbounds [1444 x %struct.code], ptr %codes34, i64 0, i64 0
  %48 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 21
  %49 = load ptr, ptr %distcode, align 8
  %50 = load ptr, ptr %state, align 8
  %codes36 = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 31
  %arraydecay37 = getelementptr inbounds [1444 x %struct.code], ptr %codes36, i64 0, i64 0
  %sub.ptr.lhs.cast38 = ptrtoint ptr %49 to i64
  %sub.ptr.rhs.cast39 = ptrtoint ptr %arraydecay37 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %sub.ptr.div41 = sdiv exact i64 %sub.ptr.sub40, 4
  %add.ptr42 = getelementptr inbounds %struct.code, ptr %arraydecay35, i64 %sub.ptr.div41
  %51 = load ptr, ptr %copy, align 8
  %distcode43 = getelementptr inbounds %struct.inflate_state, ptr %51, i32 0, i32 21
  store ptr %add.ptr42, ptr %distcode43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then26, %land.lhs.true, %if.end17
  %52 = load ptr, ptr %copy, align 8
  %codes45 = getelementptr inbounds %struct.inflate_state, ptr %52, i32 0, i32 31
  %arraydecay46 = getelementptr inbounds [1444 x %struct.code], ptr %codes45, i64 0, i64 0
  %53 = load ptr, ptr %state, align 8
  %next = getelementptr inbounds %struct.inflate_state, ptr %53, i32 0, i32 28
  %54 = load ptr, ptr %next, align 8
  %55 = load ptr, ptr %state, align 8
  %codes47 = getelementptr inbounds %struct.inflate_state, ptr %55, i32 0, i32 31
  %arraydecay48 = getelementptr inbounds [1444 x %struct.code], ptr %codes47, i64 0, i64 0
  %sub.ptr.lhs.cast49 = ptrtoint ptr %54 to i64
  %sub.ptr.rhs.cast50 = ptrtoint ptr %arraydecay48 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %sub.ptr.div52 = sdiv exact i64 %sub.ptr.sub51, 4
  %add.ptr53 = getelementptr inbounds %struct.code, ptr %arraydecay46, i64 %sub.ptr.div52
  %56 = load ptr, ptr %copy, align 8
  %next54 = getelementptr inbounds %struct.inflate_state, ptr %56, i32 0, i32 28
  store ptr %add.ptr53, ptr %next54, align 8
  %57 = load ptr, ptr %window, align 8
  %cmp55 = icmp ne ptr %57, null
  br i1 %cmp55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end44
  %58 = load ptr, ptr %window, align 8
  %59 = load ptr, ptr %state, align 8
  %window57 = getelementptr inbounds %struct.inflate_state, ptr %59, i32 0, i32 14
  %60 = load ptr, ptr %window57, align 8
  %61 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %61, i32 0, i32 12
  %62 = load i32, ptr %whave, align 8
  %conv = zext i32 %62 to i64
  %63 = load ptr, ptr %window, align 8
  %64 = call i64 @llvm.objectsize.i64.p0(ptr %63, i1 false, i1 true, i1 false)
  %call58 = call ptr @__memcpy_chk(ptr noundef %58, ptr noundef %60, i64 noundef %conv, i64 noundef %64) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end44
  %65 = load ptr, ptr %window, align 8
  %66 = load ptr, ptr %copy, align 8
  %window60 = getelementptr inbounds %struct.inflate_state, ptr %66, i32 0, i32 14
  store ptr %65, ptr %window60, align 8
  %67 = load ptr, ptr %copy, align 8
  %68 = load ptr, ptr %dest.addr, align 8
  %state61 = getelementptr inbounds %struct.z_stream_s, ptr %68, i32 0, i32 7
  store ptr %67, ptr %state61, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then14, %if.then4, %if.then
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateUndermine(ptr noundef %strm, i32 noundef %subvert) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %subvert.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %subvert, ptr %subvert.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load i32, ptr %subvert.addr, align 4
  %4 = load ptr, ptr %state, align 8
  %sane = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 32
  store i32 1, ptr %sane, align 8
  store i32 -3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflateValidate(ptr noundef %strm, i32 noundef %check) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %check.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %check, ptr %check.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load i32, ptr %check.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %wrap, align 8
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %state, align 8
  %wrap5 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %wrap5, align 8
  %or = or i32 %7, 4
  store i32 %or, ptr %wrap5, align 8
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %state, align 8
  %wrap6 = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %wrap6, align 8
  %and = and i32 %9, -5
  store i32 %and, ptr %wrap6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @inflateMark(ptr noundef %strm) #0 {
entry:
  %retval = alloca i64, align 8
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -65536, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %state, align 8
  %back = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 33
  %4 = load i32, ptr %back, align 4
  %conv = sext i32 %4 to i64
  %shl = shl i64 %conv, 16
  %5 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %mode, align 8
  %cmp = icmp eq i32 %6, 16195
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load ptr, ptr %state, align 8
  %length = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 17
  %8 = load i32, ptr %length, align 4
  br label %cond.end9

cond.false:                                       ; preds = %if.end
  %9 = load ptr, ptr %state, align 8
  %mode3 = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %mode3, align 8
  %cmp4 = icmp eq i32 %10, 16204
  br i1 %cmp4, label %cond.true6, label %cond.false8

cond.true6:                                       ; preds = %cond.false
  %11 = load ptr, ptr %state, align 8
  %was = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 34
  %12 = load i32, ptr %was, align 8
  %13 = load ptr, ptr %state, align 8
  %length7 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 17
  %14 = load i32, ptr %length7, align 4
  %sub = sub i32 %12, %14
  br label %cond.end

cond.false8:                                      ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false8, %cond.true6
  %cond = phi i32 [ %sub, %cond.true6 ], [ 0, %cond.false8 ]
  br label %cond.end9

cond.end9:                                        ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ %8, %cond.true ], [ %cond, %cond.end ]
  %conv11 = zext i32 %cond10 to i64
  %add = add nsw i64 %shl, %conv11
  store i64 %add, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end9, %if.then
  %15 = load i64, ptr %retval, align 8
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @inflateCodesUsed(ptr noundef %strm) #0 {
entry:
  %retval = alloca i64, align 8
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %state, align 8
  %next = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 28
  %4 = load ptr, ptr %next, align 8
  %5 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 31
  %arraydecay = getelementptr inbounds [1444 x %struct.code], ptr %codes, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, ptr %retval, align 8
  ret i64 %6
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { nounwind }

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
