; ModuleID = './out/real_reduction_probe/rewritten_ir/teacher_hot_leaf/source_snapshot_public_repos_zlib_inflate.prepared.ll'
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

; Function Attrs: nounwind ssp uwtable
define i32 @inflateResetKeep(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %total = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 8
  store i64 0, ptr %total, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  store i64 0, ptr %total_out, align 8
  %2 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 2
  store i64 0, ptr %total_in, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 11
  store i32 0, ptr %data_type, align 8
  %3 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %wrap, align 8
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %state, align 8
  %wrap4 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 3
  %6 = load i32, ptr %wrap4, align 8
  %and = and i32 %6, 1
  %conv = zext i32 %and to i64
  %7 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 12
  store i64 %conv, ptr %adler, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 1
  store i32 16180, ptr %mode, align 8
  %last = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 2
  store i32 0, ptr %last, align 4
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 4
  store i32 0, ptr %havedict, align 4
  %9 = load ptr, ptr %state, align 8
  %flags = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 5
  store i32 -1, ptr %flags, align 8
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 6
  store i32 32768, ptr %dmax, align 4
  %head = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 9
  store ptr null, ptr %head, align 8
  %10 = load ptr, ptr %state, align 8
  %hold = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 15
  store i64 0, ptr %hold, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 16
  store i32 0, ptr %bits, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 31
  %next = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28
  store ptr %codes, ptr %next, align 8
  %11 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 21
  store ptr %codes, ptr %distcode, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 20
  store ptr %codes, ptr %lencode, align 8
  %sane = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 32
  store i32 1, ptr %sane, align 8
  %12 = load ptr, ptr %state, align 8
  %back = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 33
  store i32 -1, ptr %back, align 4
  br label %return

return:                                           ; preds = %entry, %if.end5
  %storemerge = phi i32 [ 0, %if.end5 ], [ -2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @inflateStateCheck(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %1 = load ptr, ptr %zalloc, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 9
  %3 = load ptr, ptr %zfree, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %strm.addr, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %state4, align 8
  store ptr %5, ptr %state, align 8
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.then14, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %6 = load ptr, ptr %state, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %strm.addr, align 8
  %cmp8.not = icmp eq ptr %7, %8
  br i1 %cmp8.not, label %lor.lhs.false9, label %if.then14

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %9 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 1
  %10 = load i32, ptr %mode, align 8
  %cmp10 = icmp ult i32 %10, 16180
  br i1 %cmp10, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %11 = load ptr, ptr %state, align 8
  %mode12 = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 1
  %12 = load i32, ptr %mode12, align 8
  %cmp13 = icmp ugt i32 %12, 16211
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false6, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateReset(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 11
  store i32 0, ptr %wsize, align 4
  %whave = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 12
  store i32 0, ptr %whave, align 8
  %wnext = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 13
  store i32 0, ptr %wnext, align 4
  %2 = load ptr, ptr %strm.addr, align 8
  %call2 = call i32 @inflateResetKeep(ptr noundef %2)
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %call2, %if.end ], [ -2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateReset2(ptr noundef %strm, i32 noundef %windowBits) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %windowBits.addr = alloca i32, align 4
  %wrap = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %windowBits, ptr %windowBits.addr, align 4
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %2 = load i32, ptr %windowBits.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %windowBits.addr, align 4
  %cmp3 = icmp slt i32 %3, -15
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 -2, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  store i32 0, ptr %wrap, align 4
  %4 = load i32, ptr %windowBits.addr, align 4
  %sub = sub nsw i32 0, %4
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %5 = load i32, ptr %windowBits.addr, align 4
  %shr = ashr i32 %5, 4
  %add = add nsw i32 %shr, 5
  store i32 %add, ptr %wrap, align 4
  %cmp6 = icmp slt i32 %5, 48
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.else
  %6 = load i32, ptr %windowBits.addr, align 4
  %and = and i32 %6, 15
  store i32 %and, ptr %windowBits.addr, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7, %if.end5
  %7 = load i32, ptr %windowBits.addr, align 4
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %8 = load i32, ptr %windowBits.addr, align 4
  %cmp11 = icmp slt i32 %8, 8
  %9 = load i32, ptr %windowBits.addr, align 4
  %cmp12 = icmp sgt i32 %9, 15
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp12
  br i1 %or.cond, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  store i32 -2, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true, %if.end9
  %10 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 14
  %11 = load ptr, ptr %window, align 8
  %cmp15.not = icmp eq ptr %11, null
  br i1 %cmp15.not, label %if.end21, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end14
  %12 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 10
  %13 = load i32, ptr %wbits, align 8
  %14 = load i32, ptr %windowBits.addr, align 4
  %cmp17.not = icmp eq i32 %13, %14
  br i1 %cmp17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  %15 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 9
  %16 = load ptr, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 10
  %17 = load ptr, ptr %opaque, align 8
  %18 = load ptr, ptr %state, align 8
  %window19 = getelementptr inbounds %struct.inflate_state, ptr %18, i64 0, i32 14
  %19 = load ptr, ptr %window19, align 8
  call void %16(ptr noundef %17, ptr noundef %19) #5
  %window20 = getelementptr inbounds %struct.inflate_state, ptr %18, i64 0, i32 14
  store ptr null, ptr %window20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true16, %if.end14
  %20 = load i32, ptr %wrap, align 4
  %21 = load ptr, ptr %state, align 8
  %wrap22 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 3
  store i32 %20, ptr %wrap22, align 8
  %22 = load i32, ptr %windowBits.addr, align 4
  %wbits23 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 10
  store i32 %22, ptr %wbits23, align 8
  %23 = load ptr, ptr %strm.addr, align 8
  %call24 = call i32 @inflateReset(ptr noundef %23)
  store i32 %call24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then13, %if.then4, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind ssp uwtable
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
  %cmp = icmp eq ptr %version, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %version.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp2.not = icmp eq i8 %1, 49
  %2 = load i32, ptr %stream_size.addr, align 4
  %cmp5.not = icmp eq i32 %2, 112
  %or.cond = select i1 %cmp2.not, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %cmp7 = icmp eq ptr %3, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %4 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 8
  %5 = load ptr, ptr %zalloc, align 8
  %cmp11 = icmp eq ptr %5, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %6 = load ptr, ptr %strm.addr, align 8
  %zalloc14 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 8
  store ptr @zcalloc, ptr %zalloc14, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %7 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %8 = load ptr, ptr %zfree, align 8
  %cmp16 = icmp eq ptr %8, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %9 = load ptr, ptr %strm.addr, align 8
  %zfree19 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 9
  store ptr @zcfree, ptr %zfree19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  %10 = load ptr, ptr %strm.addr, align 8
  %zalloc21 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 8
  %11 = load ptr, ptr %zalloc21, align 8
  %opaque22 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %opaque22, align 8
  %call = call ptr %11(ptr noundef %12, i32 noundef 1, i32 noundef 7160) #5
  store ptr %call, ptr %state, align 8
  %cmp23 = icmp eq ptr %call, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  store i32 -4, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end20
  %13 = load ptr, ptr %state, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call27 = call ptr @__memset_chk(ptr noundef %13, i32 noundef 0, i64 noundef 7160, i64 noundef %14) #5
  %15 = load ptr, ptr %strm.addr, align 8
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 7
  store ptr %13, ptr %state28, align 8
  store ptr %15, ptr %13, align 8
  %16 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 14
  store ptr null, ptr %window, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 1
  store i32 16180, ptr %mode, align 8
  %17 = load ptr, ptr %strm.addr, align 8
  %18 = load i32, ptr %windowBits.addr, align 4
  %call30 = call i32 @inflateReset2(ptr noundef %17, i32 noundef %18)
  store i32 %call30, ptr %ret, align 4
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %if.end26
  %19 = load ptr, ptr %strm.addr, align 8
  %zfree34 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 9
  %20 = load ptr, ptr %zfree34, align 8
  %opaque35 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 10
  %21 = load ptr, ptr %opaque35, align 8
  %22 = load ptr, ptr %state, align 8
  call void %20(ptr noundef %21, ptr noundef %22) #5
  %23 = load ptr, ptr %strm.addr, align 8
  %state36 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 7
  store ptr null, ptr %state36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end26
  %24 = load i32, ptr %ret, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then25, %if.then9, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define i32 @inflateInit_(ptr noundef %strm, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %call = call i32 @inflateInit2_(ptr noundef %strm, i32 noundef 15, ptr noundef %version, i32 noundef %stream_size)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
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
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %bits.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %1 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state3, align 8
  store ptr %2, ptr %state, align 8
  %3 = load i32, ptr %bits.addr, align 4
  %cmp4 = icmp slt i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  %4 = load ptr, ptr %state, align 8
  %hold = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 15
  store i64 0, ptr %hold, align 8
  %bits6 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 16
  store i32 0, ptr %bits6, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end2
  %5 = load i32, ptr %bits.addr, align 4
  %cmp8 = icmp sgt i32 %5, 16
  br i1 %cmp8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %6 = load ptr, ptr %state, align 8
  %bits9 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 16
  %7 = load i32, ptr %bits9, align 8
  %8 = load i32, ptr %bits.addr, align 4
  %add = add i32 %7, %8
  %cmp10 = icmp ugt i32 %add, 32
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %if.end7
  store i32 -2, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %9 = load i32, ptr %bits.addr, align 4
  %sh_prom = zext i32 %9 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %10 = load i32, ptr %value.addr, align 4
  %11 = trunc i64 %notmask to i32
  %12 = xor i32 %11, -1
  %conv13 = and i32 %10, %12
  store i32 %conv13, ptr %value.addr, align 4
  %conv14 = sext i32 %conv13 to i64
  %13 = load ptr, ptr %state, align 8
  %bits15 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  %14 = load i32, ptr %bits15, align 8
  %sh_prom16 = zext i32 %14 to i64
  %shl17 = shl i64 %conv14, %sh_prom16
  %hold18 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 15
  %15 = load i64, ptr %hold18, align 8
  %add19 = add i64 %15, %shl17
  store i64 %add19, ptr %hold18, align 8
  %16 = load i32, ptr %bits.addr, align 4
  %17 = load ptr, ptr %state, align 8
  %bits20 = getelementptr inbounds %struct.inflate_state, ptr %17, i64 0, i32 16
  %18 = load i32, ptr %bits20, align 8
  %add21 = add i32 %18, %16
  store i32 %add21, ptr %bits20, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then5, %if.then1, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
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
  %here = alloca %struct.code, align 4
  %last = alloca %struct.code, align 4
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %hbuf = alloca [4 x i8], align 1
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %next_out, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false1
  %4 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %avail_in, align 8
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false1
  %6 = load ptr, ptr %strm.addr, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 7
  %7 = load ptr, ptr %state4, align 8
  store ptr %7, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 1
  %8 = load i32, ptr %mode, align 8
  %cmp5 = icmp eq i32 %8, 16191
  br i1 %cmp5, label %if.then6, label %do.body

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %state, align 8
  %mode7 = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 1
  store i32 16192, ptr %mode7, align 8
  br label %do.body

do.body:                                          ; preds = %if.end, %if.then6
  %10 = load ptr, ptr %strm.addr, align 8
  %next_out9 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 3
  %11 = load ptr, ptr %next_out9, align 8
  store ptr %11, ptr %put, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %avail_out, align 8
  store i32 %12, ptr %left, align 4
  %13 = load ptr, ptr %strm.addr, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %next, align 8
  %avail_in11 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %avail_in11, align 8
  store i32 %15, ptr %have, align 4
  %16 = load ptr, ptr %state, align 8
  %hold12 = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 15
  %17 = load i64, ptr %hold12, align 8
  store i64 %17, ptr %hold, align 8
  %bits13 = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 16
  %18 = load i32, ptr %bits13, align 8
  store i32 %18, ptr %bits, align 4
  %19 = load i32, ptr %have, align 4
  store i32 %19, ptr %in, align 4
  %20 = load i32, ptr %left, align 4
  store i32 %20, ptr %out, align 4
  store i32 0, ptr %ret, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog1874, %do.body
  %21 = load ptr, ptr %state, align 8
  %mode14 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 1
  %22 = load i32, ptr %mode14, align 8
  switch i32 %22, label %sw.default1873 [
    i32 16180, label %sw.bb
    i32 16181, label %while.cond111
    i32 16182, label %do.body180
    i32 16183, label %do.body236
    i32 16184, label %sw.bb290
    i32 16185, label %sw.bb353
    i32 16186, label %sw.bb425
    i32 16187, label %sw.bb491
    i32 16188, label %sw.bb561
    i32 16189, label %while.cond621
    i32 16190, label %sw.bb659
    i32 16191, label %sw.bb677
    i32 16192, label %sw.bb685
    i32 16193, label %do.body754
    i32 16194, label %sw.bb803
    i32 16195, label %sw.bb805
    i32 16196, label %while.cond835
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
  ]

sw.bb:                                            ; preds = %for.cond
  %23 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %wrap, align 8
  %cmp15 = icmp eq i32 %24, 0
  br i1 %cmp15, label %if.then16, label %while.cond

if.then16:                                        ; preds = %sw.bb
  %25 = load ptr, ptr %state, align 8
  %mode17 = getelementptr inbounds %struct.inflate_state, ptr %25, i64 0, i32 1
  store i32 16192, ptr %mode17, align 8
  br label %sw.epilog1874

while.cond:                                       ; preds = %sw.bb, %if.end24
  %26 = load i32, ptr %bits, align 4
  %cmp20 = icmp ult i32 %26, 16
  br i1 %cmp20, label %do.body21, label %do.end27

do.body21:                                        ; preds = %while.cond
  %27 = load i32, ptr %have, align 4
  %cmp22 = icmp eq i32 %27, 0
  br i1 %cmp22, label %do.body1875, label %if.end24

if.end24:                                         ; preds = %do.body21
  %28 = load i32, ptr %have, align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr %have, align 4
  %29 = load ptr, ptr %next, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr, ptr %next, align 8
  %30 = load i8, ptr %29, align 1
  %conv = zext i8 %30 to i64
  %31 = load i32, ptr %bits, align 4
  %sh_prom = zext i32 %31 to i64
  %shl = shl i64 %conv, %sh_prom
  %32 = load i64, ptr %hold, align 8
  %add = add i64 %32, %shl
  store i64 %add, ptr %hold, align 8
  %add25 = add i32 %31, 8
  store i32 %add25, ptr %bits, align 4
  br label %while.cond, !llvm.loop !6

do.end27:                                         ; preds = %while.cond
  %33 = load ptr, ptr %state, align 8
  %wrap28 = getelementptr inbounds %struct.inflate_state, ptr %33, i64 0, i32 3
  %34 = load i32, ptr %wrap28, align 8
  %and = and i32 %34, 2
  %tobool29.not = icmp ne i32 %and, 0
  %35 = load i64, ptr %hold, align 8
  %cmp31 = icmp eq i64 %35, 35615
  %or.cond = select i1 %tobool29.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.then33, label %if.end51

if.then33:                                        ; preds = %do.end27
  %36 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %36, i64 0, i32 10
  %37 = load i32, ptr %wbits, align 8
  %cmp34 = icmp eq i32 %37, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then33
  %38 = load ptr, ptr %state, align 8
  %wbits37 = getelementptr inbounds %struct.inflate_state, ptr %38, i64 0, i32 10
  store i32 15, ptr %wbits37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then33
  %call39 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %39 = load ptr, ptr %state, align 8
  %check = getelementptr inbounds %struct.inflate_state, ptr %39, i64 0, i32 7
  store i64 %call39, ptr %check, align 8
  %40 = load i64, ptr %hold, align 8
  %conv41 = trunc i64 %40 to i8
  store i8 %conv41, ptr %hbuf, align 1
  %shr = lshr i64 %40, 8
  %conv42 = trunc i64 %shr to i8
  %arrayidx43 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv42, ptr %arrayidx43, align 1
  %41 = load ptr, ptr %state, align 8
  %check44 = getelementptr inbounds %struct.inflate_state, ptr %41, i64 0, i32 7
  %42 = load i64, ptr %check44, align 8
  %call45 = call i64 @crc32(i64 noundef %42, ptr noundef nonnull %hbuf, i32 noundef 2) #5
  %43 = load ptr, ptr %state, align 8
  %check46 = getelementptr inbounds %struct.inflate_state, ptr %43, i64 0, i32 7
  store i64 %call45, ptr %check46, align 8
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %44 = load ptr, ptr %state, align 8
  %mode50 = getelementptr inbounds %struct.inflate_state, ptr %44, i64 0, i32 1
  store i32 16181, ptr %mode50, align 8
  br label %sw.epilog1874

if.end51:                                         ; preds = %do.end27
  %45 = load ptr, ptr %state, align 8
  %head = getelementptr inbounds %struct.inflate_state, ptr %45, i64 0, i32 9
  %46 = load ptr, ptr %head, align 8
  %cmp52.not = icmp eq ptr %46, null
  br i1 %cmp52.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end51
  %47 = load ptr, ptr %state, align 8
  %head55 = getelementptr inbounds %struct.inflate_state, ptr %47, i64 0, i32 9
  %48 = load ptr, ptr %head55, align 8
  %done = getelementptr inbounds %struct.gz_header_s, ptr %48, i64 0, i32 12
  store i32 -1, ptr %done, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51
  %49 = load ptr, ptr %state, align 8
  %wrap57 = getelementptr inbounds %struct.inflate_state, ptr %49, i64 0, i32 3
  %50 = load i32, ptr %wrap57, align 8
  %and58 = and i32 %50, 1
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end56
  %51 = load i64, ptr %hold, align 8
  %and62 = shl i64 %51, 8
  %shl63 = and i64 %and62, 65280
  %shr65 = lshr i64 %51, 8
  %add66 = add nuw nsw i64 %shl63, %shr65
  %rem = urem i64 %add66, 31
  %tobool67.not = icmp eq i64 %rem, 0
  br i1 %tobool67.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %lor.lhs.false60, %if.end56
  %52 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %52, i64 0, i32 6
  store ptr @.str.1, ptr %msg, align 8
  %53 = load ptr, ptr %state, align 8
  %mode69 = getelementptr inbounds %struct.inflate_state, ptr %53, i64 0, i32 1
  store i32 16209, ptr %mode69, align 8
  br label %sw.epilog1874

if.end70:                                         ; preds = %lor.lhs.false60
  %54 = load i64, ptr %hold, align 8
  %and728 = and i64 %54, 15
  %cmp73.not = icmp eq i64 %and728, 8
  br i1 %cmp73.not, label %do.body79, label %if.then75

if.then75:                                        ; preds = %if.end70
  %55 = load ptr, ptr %strm.addr, align 8
  %msg76 = getelementptr inbounds %struct.z_stream_s, ptr %55, i64 0, i32 6
  store ptr @.str.2, ptr %msg76, align 8
  %56 = load ptr, ptr %state, align 8
  %mode77 = getelementptr inbounds %struct.inflate_state, ptr %56, i64 0, i32 1
  store i32 16209, ptr %mode77, align 8
  br label %sw.epilog1874

do.body79:                                        ; preds = %if.end70
  %57 = load i64, ptr %hold, align 8
  %shr80 = lshr i64 %57, 4
  store i64 %shr80, ptr %hold, align 8
  %58 = load i32, ptr %bits, align 4
  %sub = add i32 %58, -4
  store i32 %sub, ptr %bits, align 4
  %59 = load i64, ptr %hold, align 8
  %conv82 = trunc i64 %59 to i32
  %and83 = and i32 %conv82, 15
  %add84 = add nuw nsw i32 %and83, 8
  store i32 %add84, ptr %len, align 4
  %60 = load ptr, ptr %state, align 8
  %wbits85 = getelementptr inbounds %struct.inflate_state, ptr %60, i64 0, i32 10
  %61 = load i32, ptr %wbits85, align 8
  %cmp86 = icmp eq i32 %61, 0
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %do.body79
  %62 = load i32, ptr %len, align 4
  %63 = load ptr, ptr %state, align 8
  %wbits89 = getelementptr inbounds %struct.inflate_state, ptr %63, i64 0, i32 10
  store i32 %62, ptr %wbits89, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %do.body79
  %64 = load i32, ptr %len, align 4
  %cmp91 = icmp ugt i32 %64, 15
  br i1 %cmp91, label %if.then97, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.end90
  %65 = load i32, ptr %len, align 4
  %66 = load ptr, ptr %state, align 8
  %wbits94 = getelementptr inbounds %struct.inflate_state, ptr %66, i64 0, i32 10
  %67 = load i32, ptr %wbits94, align 8
  %cmp95 = icmp ugt i32 %65, %67
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %lor.lhs.false93, %if.end90
  %68 = load ptr, ptr %strm.addr, align 8
  %msg98 = getelementptr inbounds %struct.z_stream_s, ptr %68, i64 0, i32 6
  store ptr @.str.3, ptr %msg98, align 8
  %69 = load ptr, ptr %state, align 8
  %mode99 = getelementptr inbounds %struct.inflate_state, ptr %69, i64 0, i32 1
  store i32 16209, ptr %mode99, align 8
  br label %sw.epilog1874

if.end100:                                        ; preds = %lor.lhs.false93
  %70 = load i32, ptr %len, align 4
  %shl101 = shl i32 1, %70
  %71 = load ptr, ptr %state, align 8
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %71, i64 0, i32 6
  store i32 %shl101, ptr %dmax, align 4
  %flags = getelementptr inbounds %struct.inflate_state, ptr %71, i64 0, i32 5
  store i32 0, ptr %flags, align 8
  %call102 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %72 = load ptr, ptr %state, align 8
  %check103 = getelementptr inbounds %struct.inflate_state, ptr %72, i64 0, i32 7
  store i64 %call102, ptr %check103, align 8
  %73 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %73, i64 0, i32 12
  store i64 %call102, ptr %adler, align 8
  %74 = load i64, ptr %hold, align 8
  %and104 = and i64 %74, 512
  %tobool105.not = icmp eq i64 %and104, 0
  %cond = select i1 %tobool105.not, i32 16191, i32 16189
  %75 = load ptr, ptr %state, align 8
  %mode106 = getelementptr inbounds %struct.inflate_state, ptr %75, i64 0, i32 1
  store i32 %cond, ptr %mode106, align 8
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %sw.epilog1874

while.cond111:                                    ; preds = %for.cond, %if.end119
  %76 = load i32, ptr %bits, align 4
  %cmp112 = icmp ult i32 %76, 16
  br i1 %cmp112, label %do.body115, label %do.end129

do.body115:                                       ; preds = %while.cond111
  %77 = load i32, ptr %have, align 4
  %cmp116 = icmp eq i32 %77, 0
  br i1 %cmp116, label %do.body1875, label %if.end119

if.end119:                                        ; preds = %do.body115
  %78 = load i32, ptr %have, align 4
  %dec120 = add i32 %78, -1
  store i32 %dec120, ptr %have, align 4
  %79 = load ptr, ptr %next, align 8
  %incdec.ptr121 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %incdec.ptr121, ptr %next, align 8
  %80 = load i8, ptr %79, align 1
  %conv122 = zext i8 %80 to i64
  %81 = load i32, ptr %bits, align 4
  %sh_prom123 = zext i32 %81 to i64
  %shl124 = shl i64 %conv122, %sh_prom123
  %82 = load i64, ptr %hold, align 8
  %add125 = add i64 %82, %shl124
  store i64 %add125, ptr %hold, align 8
  %add126 = add i32 %81, 8
  store i32 %add126, ptr %bits, align 4
  br label %while.cond111, !llvm.loop !8

do.end129:                                        ; preds = %while.cond111
  %83 = load i64, ptr %hold, align 8
  %conv130 = trunc i64 %83 to i32
  %84 = load ptr, ptr %state, align 8
  %flags131 = getelementptr inbounds %struct.inflate_state, ptr %84, i64 0, i32 5
  store i32 %conv130, ptr %flags131, align 8
  %and133 = and i32 %conv130, 255
  %cmp134.not = icmp eq i32 %and133, 8
  br i1 %cmp134.not, label %if.end139, label %if.then136

if.then136:                                       ; preds = %do.end129
  %85 = load ptr, ptr %strm.addr, align 8
  %msg137 = getelementptr inbounds %struct.z_stream_s, ptr %85, i64 0, i32 6
  store ptr @.str.2, ptr %msg137, align 8
  %86 = load ptr, ptr %state, align 8
  %mode138 = getelementptr inbounds %struct.inflate_state, ptr %86, i64 0, i32 1
  store i32 16209, ptr %mode138, align 8
  br label %sw.epilog1874

if.end139:                                        ; preds = %do.end129
  %87 = load ptr, ptr %state, align 8
  %flags140 = getelementptr inbounds %struct.inflate_state, ptr %87, i64 0, i32 5
  %88 = load i32, ptr %flags140, align 8
  %and141 = and i32 %88, 57344
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end146, label %if.then143

if.then143:                                       ; preds = %if.end139
  %89 = load ptr, ptr %strm.addr, align 8
  %msg144 = getelementptr inbounds %struct.z_stream_s, ptr %89, i64 0, i32 6
  store ptr @.str.4, ptr %msg144, align 8
  %90 = load ptr, ptr %state, align 8
  %mode145 = getelementptr inbounds %struct.inflate_state, ptr %90, i64 0, i32 1
  store i32 16209, ptr %mode145, align 8
  br label %sw.epilog1874

if.end146:                                        ; preds = %if.end139
  %91 = load ptr, ptr %state, align 8
  %head147 = getelementptr inbounds %struct.inflate_state, ptr %91, i64 0, i32 9
  %92 = load ptr, ptr %head147, align 8
  %cmp148.not = icmp eq ptr %92, null
  br i1 %cmp148.not, label %if.end155, label %if.then150

if.then150:                                       ; preds = %if.end146
  %93 = load i64, ptr %hold, align 8
  %94 = trunc i64 %93 to i32
  %95 = lshr i32 %94, 8
  %conv153 = and i32 %95, 1
  %96 = load ptr, ptr %state, align 8
  %head154 = getelementptr inbounds %struct.inflate_state, ptr %96, i64 0, i32 9
  %97 = load ptr, ptr %head154, align 8
  store i32 %conv153, ptr %97, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then150, %if.end146
  %98 = load ptr, ptr %state, align 8
  %flags156 = getelementptr inbounds %struct.inflate_state, ptr %98, i64 0, i32 5
  %99 = load i32, ptr %flags156, align 8
  %and157 = and i32 %99, 512
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %do.body176, label %land.lhs.true159

land.lhs.true159:                                 ; preds = %if.end155
  %100 = load ptr, ptr %state, align 8
  %wrap160 = getelementptr inbounds %struct.inflate_state, ptr %100, i64 0, i32 3
  %101 = load i32, ptr %wrap160, align 8
  %and161 = and i32 %101, 4
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %do.body176, label %do.body164

do.body164:                                       ; preds = %land.lhs.true159
  %102 = load i64, ptr %hold, align 8
  %conv165 = trunc i64 %102 to i8
  store i8 %conv165, ptr %hbuf, align 1
  %shr167 = lshr i64 %102, 8
  %conv168 = trunc i64 %shr167 to i8
  %arrayidx169 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv168, ptr %arrayidx169, align 1
  %103 = load ptr, ptr %state, align 8
  %check170 = getelementptr inbounds %struct.inflate_state, ptr %103, i64 0, i32 7
  %104 = load i64, ptr %check170, align 8
  %call172 = call i64 @crc32(i64 noundef %104, ptr noundef nonnull %hbuf, i32 noundef 2) #5
  %105 = load ptr, ptr %state, align 8
  %check173 = getelementptr inbounds %struct.inflate_state, ptr %105, i64 0, i32 7
  store i64 %call172, ptr %check173, align 8
  br label %do.body176

do.body176:                                       ; preds = %if.end155, %land.lhs.true159, %do.body164
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %106 = load ptr, ptr %state, align 8
  %mode178 = getelementptr inbounds %struct.inflate_state, ptr %106, i64 0, i32 1
  store i32 16182, ptr %mode178, align 8
  br label %do.body180

do.body180:                                       ; preds = %for.cond, %do.body176
  br label %while.cond181

while.cond181:                                    ; preds = %if.end189, %do.body180
  %107 = load i32, ptr %bits, align 4
  %cmp182 = icmp ult i32 %107, 32
  br i1 %cmp182, label %do.body185, label %do.end199

do.body185:                                       ; preds = %while.cond181
  %108 = load i32, ptr %have, align 4
  %cmp186 = icmp eq i32 %108, 0
  br i1 %cmp186, label %do.body1875, label %if.end189

if.end189:                                        ; preds = %do.body185
  %109 = load i32, ptr %have, align 4
  %dec190 = add i32 %109, -1
  store i32 %dec190, ptr %have, align 4
  %110 = load ptr, ptr %next, align 8
  %incdec.ptr191 = getelementptr inbounds i8, ptr %110, i64 1
  store ptr %incdec.ptr191, ptr %next, align 8
  %111 = load i8, ptr %110, align 1
  %conv192 = zext i8 %111 to i64
  %112 = load i32, ptr %bits, align 4
  %sh_prom193 = zext i32 %112 to i64
  %shl194 = shl i64 %conv192, %sh_prom193
  %113 = load i64, ptr %hold, align 8
  %add195 = add i64 %113, %shl194
  store i64 %add195, ptr %hold, align 8
  %add196 = add i32 %112, 8
  store i32 %add196, ptr %bits, align 4
  br label %while.cond181, !llvm.loop !9

do.end199:                                        ; preds = %while.cond181
  %114 = load ptr, ptr %state, align 8
  %head200 = getelementptr inbounds %struct.inflate_state, ptr %114, i64 0, i32 9
  %115 = load ptr, ptr %head200, align 8
  %cmp201.not = icmp eq ptr %115, null
  br i1 %cmp201.not, label %if.end205, label %if.then203

if.then203:                                       ; preds = %do.end199
  %116 = load i64, ptr %hold, align 8
  %117 = load ptr, ptr %state, align 8
  %head204 = getelementptr inbounds %struct.inflate_state, ptr %117, i64 0, i32 9
  %118 = load ptr, ptr %head204, align 8
  %time = getelementptr inbounds %struct.gz_header_s, ptr %118, i64 0, i32 1
  store i64 %116, ptr %time, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %do.end199
  %119 = load ptr, ptr %state, align 8
  %flags206 = getelementptr inbounds %struct.inflate_state, ptr %119, i64 0, i32 5
  %120 = load i32, ptr %flags206, align 8
  %and207 = and i32 %120, 512
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %do.body232, label %land.lhs.true209

land.lhs.true209:                                 ; preds = %if.end205
  %121 = load ptr, ptr %state, align 8
  %wrap210 = getelementptr inbounds %struct.inflate_state, ptr %121, i64 0, i32 3
  %122 = load i32, ptr %wrap210, align 8
  %and211 = and i32 %122, 4
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %do.body232, label %do.body214

do.body214:                                       ; preds = %land.lhs.true209
  %123 = load i64, ptr %hold, align 8
  %conv215 = trunc i64 %123 to i8
  store i8 %conv215, ptr %hbuf, align 1
  %shr217 = lshr i64 %123, 8
  %conv218 = trunc i64 %shr217 to i8
  %arrayidx219 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv218, ptr %arrayidx219, align 1
  %124 = load i64, ptr %hold, align 8
  %shr220 = lshr i64 %124, 16
  %conv221 = trunc i64 %shr220 to i8
  %arrayidx222 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 2
  store i8 %conv221, ptr %arrayidx222, align 1
  %shr223 = lshr i64 %124, 24
  %conv224 = trunc i64 %shr223 to i8
  %arrayidx225 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 3
  store i8 %conv224, ptr %arrayidx225, align 1
  %125 = load ptr, ptr %state, align 8
  %check226 = getelementptr inbounds %struct.inflate_state, ptr %125, i64 0, i32 7
  %126 = load i64, ptr %check226, align 8
  %call228 = call i64 @crc32(i64 noundef %126, ptr noundef nonnull %hbuf, i32 noundef 4) #5
  %127 = load ptr, ptr %state, align 8
  %check229 = getelementptr inbounds %struct.inflate_state, ptr %127, i64 0, i32 7
  store i64 %call228, ptr %check229, align 8
  br label %do.body232

do.body232:                                       ; preds = %if.end205, %land.lhs.true209, %do.body214
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %128 = load ptr, ptr %state, align 8
  %mode234 = getelementptr inbounds %struct.inflate_state, ptr %128, i64 0, i32 1
  store i32 16183, ptr %mode234, align 8
  br label %do.body236

do.body236:                                       ; preds = %for.cond, %do.body232
  br label %while.cond237

while.cond237:                                    ; preds = %if.end245, %do.body236
  %129 = load i32, ptr %bits, align 4
  %cmp238 = icmp ult i32 %129, 16
  br i1 %cmp238, label %do.body241, label %do.end255

do.body241:                                       ; preds = %while.cond237
  %130 = load i32, ptr %have, align 4
  %cmp242 = icmp eq i32 %130, 0
  br i1 %cmp242, label %do.body1875, label %if.end245

if.end245:                                        ; preds = %do.body241
  %131 = load i32, ptr %have, align 4
  %dec246 = add i32 %131, -1
  store i32 %dec246, ptr %have, align 4
  %132 = load ptr, ptr %next, align 8
  %incdec.ptr247 = getelementptr inbounds i8, ptr %132, i64 1
  store ptr %incdec.ptr247, ptr %next, align 8
  %133 = load i8, ptr %132, align 1
  %conv248 = zext i8 %133 to i64
  %134 = load i32, ptr %bits, align 4
  %sh_prom249 = zext i32 %134 to i64
  %shl250 = shl i64 %conv248, %sh_prom249
  %135 = load i64, ptr %hold, align 8
  %add251 = add i64 %135, %shl250
  store i64 %add251, ptr %hold, align 8
  %add252 = add i32 %134, 8
  store i32 %add252, ptr %bits, align 4
  br label %while.cond237, !llvm.loop !10

do.end255:                                        ; preds = %while.cond237
  %136 = load ptr, ptr %state, align 8
  %head256 = getelementptr inbounds %struct.inflate_state, ptr %136, i64 0, i32 9
  %137 = load ptr, ptr %head256, align 8
  %cmp257.not = icmp eq ptr %137, null
  br i1 %cmp257.not, label %if.end266, label %if.then259

if.then259:                                       ; preds = %do.end255
  %138 = load i64, ptr %hold, align 8
  %139 = trunc i64 %138 to i32
  %conv261 = and i32 %139, 255
  %140 = load ptr, ptr %state, align 8
  %head262 = getelementptr inbounds %struct.inflate_state, ptr %140, i64 0, i32 9
  %141 = load ptr, ptr %head262, align 8
  %xflags = getelementptr inbounds %struct.gz_header_s, ptr %141, i64 0, i32 2
  store i32 %conv261, ptr %xflags, align 8
  %142 = load i64, ptr %hold, align 8
  %shr263 = lshr i64 %142, 8
  %conv264 = trunc i64 %shr263 to i32
  %143 = load ptr, ptr %state, align 8
  %head265 = getelementptr inbounds %struct.inflate_state, ptr %143, i64 0, i32 9
  %144 = load ptr, ptr %head265, align 8
  %os = getelementptr inbounds %struct.gz_header_s, ptr %144, i64 0, i32 3
  store i32 %conv264, ptr %os, align 4
  br label %if.end266

if.end266:                                        ; preds = %if.then259, %do.end255
  %145 = load ptr, ptr %state, align 8
  %flags267 = getelementptr inbounds %struct.inflate_state, ptr %145, i64 0, i32 5
  %146 = load i32, ptr %flags267, align 8
  %and268 = and i32 %146, 512
  %tobool269.not = icmp eq i32 %and268, 0
  br i1 %tobool269.not, label %do.body287, label %land.lhs.true270

land.lhs.true270:                                 ; preds = %if.end266
  %147 = load ptr, ptr %state, align 8
  %wrap271 = getelementptr inbounds %struct.inflate_state, ptr %147, i64 0, i32 3
  %148 = load i32, ptr %wrap271, align 8
  %and272 = and i32 %148, 4
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %do.body287, label %do.body275

do.body275:                                       ; preds = %land.lhs.true270
  %149 = load i64, ptr %hold, align 8
  %conv276 = trunc i64 %149 to i8
  store i8 %conv276, ptr %hbuf, align 1
  %shr278 = lshr i64 %149, 8
  %conv279 = trunc i64 %shr278 to i8
  %arrayidx280 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv279, ptr %arrayidx280, align 1
  %150 = load ptr, ptr %state, align 8
  %check281 = getelementptr inbounds %struct.inflate_state, ptr %150, i64 0, i32 7
  %151 = load i64, ptr %check281, align 8
  %call283 = call i64 @crc32(i64 noundef %151, ptr noundef nonnull %hbuf, i32 noundef 2) #5
  %152 = load ptr, ptr %state, align 8
  %check284 = getelementptr inbounds %struct.inflate_state, ptr %152, i64 0, i32 7
  store i64 %call283, ptr %check284, align 8
  br label %do.body287

do.body287:                                       ; preds = %if.end266, %land.lhs.true270, %do.body275
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %153 = load ptr, ptr %state, align 8
  %mode289 = getelementptr inbounds %struct.inflate_state, ptr %153, i64 0, i32 1
  store i32 16184, ptr %mode289, align 8
  br label %sw.bb290

sw.bb290:                                         ; preds = %do.body287, %for.cond
  %154 = load ptr, ptr %state, align 8
  %flags291 = getelementptr inbounds %struct.inflate_state, ptr %154, i64 0, i32 5
  %155 = load i32, ptr %flags291, align 8
  %and292 = and i32 %155, 1024
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %if.else, label %while.cond296

while.cond296:                                    ; preds = %sw.bb290, %if.end304
  %156 = load i32, ptr %bits, align 4
  %cmp297 = icmp ult i32 %156, 16
  br i1 %cmp297, label %do.body300, label %do.end314

do.body300:                                       ; preds = %while.cond296
  %157 = load i32, ptr %have, align 4
  %cmp301 = icmp eq i32 %157, 0
  br i1 %cmp301, label %do.body1875, label %if.end304

if.end304:                                        ; preds = %do.body300
  %158 = load i32, ptr %have, align 4
  %dec305 = add i32 %158, -1
  store i32 %dec305, ptr %have, align 4
  %159 = load ptr, ptr %next, align 8
  %incdec.ptr306 = getelementptr inbounds i8, ptr %159, i64 1
  store ptr %incdec.ptr306, ptr %next, align 8
  %160 = load i8, ptr %159, align 1
  %conv307 = zext i8 %160 to i64
  %161 = load i32, ptr %bits, align 4
  %sh_prom308 = zext i32 %161 to i64
  %shl309 = shl i64 %conv307, %sh_prom308
  %162 = load i64, ptr %hold, align 8
  %add310 = add i64 %162, %shl309
  store i64 %add310, ptr %hold, align 8
  %add311 = add i32 %161, 8
  store i32 %add311, ptr %bits, align 4
  br label %while.cond296, !llvm.loop !11

do.end314:                                        ; preds = %while.cond296
  %163 = load i64, ptr %hold, align 8
  %conv315 = trunc i64 %163 to i32
  %164 = load ptr, ptr %state, align 8
  %length = getelementptr inbounds %struct.inflate_state, ptr %164, i64 0, i32 17
  store i32 %conv315, ptr %length, align 4
  %head316 = getelementptr inbounds %struct.inflate_state, ptr %164, i64 0, i32 9
  %165 = load ptr, ptr %head316, align 8
  %cmp317.not = icmp eq ptr %165, null
  br i1 %cmp317.not, label %if.end322, label %if.then319

if.then319:                                       ; preds = %do.end314
  %166 = load i64, ptr %hold, align 8
  %conv320 = trunc i64 %166 to i32
  %167 = load ptr, ptr %state, align 8
  %head321 = getelementptr inbounds %struct.inflate_state, ptr %167, i64 0, i32 9
  %168 = load ptr, ptr %head321, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %168, i64 0, i32 5
  store i32 %conv320, ptr %extra_len, align 8
  br label %if.end322

if.end322:                                        ; preds = %if.then319, %do.end314
  %169 = load ptr, ptr %state, align 8
  %flags323 = getelementptr inbounds %struct.inflate_state, ptr %169, i64 0, i32 5
  %170 = load i32, ptr %flags323, align 8
  %and324 = and i32 %170, 512
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %do.body343, label %land.lhs.true326

land.lhs.true326:                                 ; preds = %if.end322
  %171 = load ptr, ptr %state, align 8
  %wrap327 = getelementptr inbounds %struct.inflate_state, ptr %171, i64 0, i32 3
  %172 = load i32, ptr %wrap327, align 8
  %and328 = and i32 %172, 4
  %tobool329.not = icmp eq i32 %and328, 0
  br i1 %tobool329.not, label %do.body343, label %do.body331

do.body331:                                       ; preds = %land.lhs.true326
  %173 = load i64, ptr %hold, align 8
  %conv332 = trunc i64 %173 to i8
  store i8 %conv332, ptr %hbuf, align 1
  %shr334 = lshr i64 %173, 8
  %conv335 = trunc i64 %shr334 to i8
  %arrayidx336 = getelementptr inbounds [4 x i8], ptr %hbuf, i64 0, i64 1
  store i8 %conv335, ptr %arrayidx336, align 1
  %174 = load ptr, ptr %state, align 8
  %check337 = getelementptr inbounds %struct.inflate_state, ptr %174, i64 0, i32 7
  %175 = load i64, ptr %check337, align 8
  %call339 = call i64 @crc32(i64 noundef %175, ptr noundef nonnull %hbuf, i32 noundef 2) #5
  %176 = load ptr, ptr %state, align 8
  %check340 = getelementptr inbounds %struct.inflate_state, ptr %176, i64 0, i32 7
  store i64 %call339, ptr %check340, align 8
  br label %do.body343

do.body343:                                       ; preds = %if.end322, %land.lhs.true326, %do.body331
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %if.end351

if.else:                                          ; preds = %sw.bb290
  %177 = load ptr, ptr %state, align 8
  %head345 = getelementptr inbounds %struct.inflate_state, ptr %177, i64 0, i32 9
  %178 = load ptr, ptr %head345, align 8
  %cmp346.not = icmp eq ptr %178, null
  br i1 %cmp346.not, label %if.end351, label %if.then348

if.then348:                                       ; preds = %if.else
  %179 = load ptr, ptr %state, align 8
  %head349 = getelementptr inbounds %struct.inflate_state, ptr %179, i64 0, i32 9
  %180 = load ptr, ptr %head349, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %180, i64 0, i32 4
  store ptr null, ptr %extra, align 8
  br label %if.end351

if.end351:                                        ; preds = %if.else, %if.then348, %do.body343
  %181 = load ptr, ptr %state, align 8
  %mode352 = getelementptr inbounds %struct.inflate_state, ptr %181, i64 0, i32 1
  store i32 16185, ptr %mode352, align 8
  br label %sw.bb353

sw.bb353:                                         ; preds = %if.end351, %for.cond
  %182 = load ptr, ptr %state, align 8
  %flags354 = getelementptr inbounds %struct.inflate_state, ptr %182, i64 0, i32 5
  %183 = load i32, ptr %flags354, align 8
  %and355 = and i32 %183, 1024
  %tobool356.not = icmp eq i32 %and355, 0
  br i1 %tobool356.not, label %if.end422, label %if.then357

if.then357:                                       ; preds = %sw.bb353
  %184 = load ptr, ptr %state, align 8
  %length358 = getelementptr inbounds %struct.inflate_state, ptr %184, i64 0, i32 17
  %185 = load i32, ptr %length358, align 4
  store i32 %185, ptr %copy, align 4
  %186 = load i32, ptr %have, align 4
  %cmp359 = icmp ugt i32 %185, %186
  br i1 %cmp359, label %if.then361, label %if.end362

if.then361:                                       ; preds = %if.then357
  %187 = load i32, ptr %have, align 4
  store i32 %187, ptr %copy, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.then361, %if.then357
  %188 = load i32, ptr %copy, align 4
  %tobool363.not = icmp eq i32 %188, 0
  br i1 %tobool363.not, label %if.end417, label %if.then364

if.then364:                                       ; preds = %if.end362
  %189 = load ptr, ptr %state, align 8
  %head365 = getelementptr inbounds %struct.inflate_state, ptr %189, i64 0, i32 9
  %190 = load ptr, ptr %head365, align 8
  %cmp366.not = icmp eq ptr %190, null
  br i1 %cmp366.not, label %if.end399, label %land.lhs.true368

land.lhs.true368:                                 ; preds = %if.then364
  %191 = load ptr, ptr %state, align 8
  %head369 = getelementptr inbounds %struct.inflate_state, ptr %191, i64 0, i32 9
  %192 = load ptr, ptr %head369, align 8
  %extra370 = getelementptr inbounds %struct.gz_header_s, ptr %192, i64 0, i32 4
  %193 = load ptr, ptr %extra370, align 8
  %cmp371.not = icmp eq ptr %193, null
  br i1 %cmp371.not, label %if.end399, label %land.lhs.true373

land.lhs.true373:                                 ; preds = %land.lhs.true368
  %194 = load ptr, ptr %state, align 8
  %head374 = getelementptr inbounds %struct.inflate_state, ptr %194, i64 0, i32 9
  %195 = load ptr, ptr %head374, align 8
  %extra_len375 = getelementptr inbounds %struct.gz_header_s, ptr %195, i64 0, i32 5
  %196 = load i32, ptr %extra_len375, align 8
  %length376 = getelementptr inbounds %struct.inflate_state, ptr %194, i64 0, i32 17
  %197 = load i32, ptr %length376, align 4
  %sub377 = sub i32 %196, %197
  store i32 %sub377, ptr %len, align 4
  %198 = load ptr, ptr %state, align 8
  %head378 = getelementptr inbounds %struct.inflate_state, ptr %198, i64 0, i32 9
  %199 = load ptr, ptr %head378, align 8
  %extra_max = getelementptr inbounds %struct.gz_header_s, ptr %199, i64 0, i32 6
  %200 = load i32, ptr %extra_max, align 4
  %cmp379 = icmp ult i32 %sub377, %200
  br i1 %cmp379, label %if.then381, label %if.end399

if.then381:                                       ; preds = %land.lhs.true373
  %201 = load ptr, ptr %state, align 8
  %head382 = getelementptr inbounds %struct.inflate_state, ptr %201, i64 0, i32 9
  %202 = load ptr, ptr %head382, align 8
  %extra383 = getelementptr inbounds %struct.gz_header_s, ptr %202, i64 0, i32 4
  %203 = load ptr, ptr %extra383, align 8
  %204 = load i32, ptr %len, align 4
  %idx.ext = zext i32 %204 to i64
  %add.ptr = getelementptr inbounds i8, ptr %203, i64 %idx.ext
  %205 = load ptr, ptr %next, align 8
  %206 = load i32, ptr %copy, align 4
  %add384 = add i32 %204, %206
  %207 = load ptr, ptr %state, align 8
  %head385 = getelementptr inbounds %struct.inflate_state, ptr %207, i64 0, i32 9
  %208 = load ptr, ptr %head385, align 8
  %extra_max386 = getelementptr inbounds %struct.gz_header_s, ptr %208, i64 0, i32 6
  %209 = load i32, ptr %extra_max386, align 4
  %cmp387 = icmp ugt i32 %add384, %209
  br i1 %cmp387, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then381
  %210 = load ptr, ptr %state, align 8
  %head389 = getelementptr inbounds %struct.inflate_state, ptr %210, i64 0, i32 9
  %211 = load ptr, ptr %head389, align 8
  %extra_max390 = getelementptr inbounds %struct.gz_header_s, ptr %211, i64 0, i32 6
  %212 = load i32, ptr %extra_max390, align 4
  %213 = load i32, ptr %len, align 4
  %sub391 = sub i32 %212, %213
  br label %cond.end

cond.false:                                       ; preds = %if.then381
  %214 = load i32, ptr %copy, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond392 = phi i32 [ %sub391, %cond.true ], [ %214, %cond.false ]
  %conv393 = zext i32 %cond392 to i64
  %215 = load ptr, ptr %state, align 8
  %head394 = getelementptr inbounds %struct.inflate_state, ptr %215, i64 0, i32 9
  %216 = load ptr, ptr %head394, align 8
  %extra395 = getelementptr inbounds %struct.gz_header_s, ptr %216, i64 0, i32 4
  %217 = load ptr, ptr %extra395, align 8
  %218 = load i32, ptr %len, align 4
  %idx.ext396 = zext i32 %218 to i64
  %add.ptr397 = getelementptr inbounds i8, ptr %217, i64 %idx.ext396
  %219 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr397, i1 false, i1 true, i1 false)
  %call398 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %205, i64 noundef %conv393, i64 noundef %219) #5
  br label %if.end399

if.end399:                                        ; preds = %cond.end, %land.lhs.true373, %land.lhs.true368, %if.then364
  %220 = load ptr, ptr %state, align 8
  %flags400 = getelementptr inbounds %struct.inflate_state, ptr %220, i64 0, i32 5
  %221 = load i32, ptr %flags400, align 8
  %and401 = and i32 %221, 512
  %tobool402.not = icmp eq i32 %and401, 0
  br i1 %tobool402.not, label %if.end411, label %land.lhs.true403

land.lhs.true403:                                 ; preds = %if.end399
  %222 = load ptr, ptr %state, align 8
  %wrap404 = getelementptr inbounds %struct.inflate_state, ptr %222, i64 0, i32 3
  %223 = load i32, ptr %wrap404, align 8
  %and405 = and i32 %223, 4
  %tobool406.not = icmp eq i32 %and405, 0
  br i1 %tobool406.not, label %if.end411, label %if.then407

if.then407:                                       ; preds = %land.lhs.true403
  %224 = load ptr, ptr %state, align 8
  %check408 = getelementptr inbounds %struct.inflate_state, ptr %224, i64 0, i32 7
  %225 = load i64, ptr %check408, align 8
  %226 = load ptr, ptr %next, align 8
  %227 = load i32, ptr %copy, align 4
  %call409 = call i64 @crc32(i64 noundef %225, ptr noundef %226, i32 noundef %227) #5
  %228 = load ptr, ptr %state, align 8
  %check410 = getelementptr inbounds %struct.inflate_state, ptr %228, i64 0, i32 7
  store i64 %call409, ptr %check410, align 8
  br label %if.end411

if.end411:                                        ; preds = %if.then407, %land.lhs.true403, %if.end399
  %229 = load i32, ptr %copy, align 4
  %230 = load i32, ptr %have, align 4
  %sub412 = sub i32 %230, %229
  store i32 %sub412, ptr %have, align 4
  %231 = load ptr, ptr %next, align 8
  %idx.ext413 = zext i32 %229 to i64
  %add.ptr414 = getelementptr inbounds i8, ptr %231, i64 %idx.ext413
  store ptr %add.ptr414, ptr %next, align 8
  %232 = load i32, ptr %copy, align 4
  %233 = load ptr, ptr %state, align 8
  %length415 = getelementptr inbounds %struct.inflate_state, ptr %233, i64 0, i32 17
  %234 = load i32, ptr %length415, align 4
  %sub416 = sub i32 %234, %232
  store i32 %sub416, ptr %length415, align 4
  br label %if.end417

if.end417:                                        ; preds = %if.end411, %if.end362
  %235 = load ptr, ptr %state, align 8
  %length418 = getelementptr inbounds %struct.inflate_state, ptr %235, i64 0, i32 17
  %236 = load i32, ptr %length418, align 4
  %tobool419.not = icmp eq i32 %236, 0
  br i1 %tobool419.not, label %if.end422, label %do.body1875

if.end422:                                        ; preds = %if.end417, %sw.bb353
  %237 = load ptr, ptr %state, align 8
  %length423 = getelementptr inbounds %struct.inflate_state, ptr %237, i64 0, i32 17
  store i32 0, ptr %length423, align 4
  %mode424 = getelementptr inbounds %struct.inflate_state, ptr %237, i64 0, i32 1
  store i32 16186, ptr %mode424, align 8
  br label %sw.bb425

sw.bb425:                                         ; preds = %if.end422, %for.cond
  %238 = load ptr, ptr %state, align 8
  %flags426 = getelementptr inbounds %struct.inflate_state, ptr %238, i64 0, i32 5
  %239 = load i32, ptr %flags426, align 8
  %and427 = and i32 %239, 2048
  %tobool428.not = icmp eq i32 %and427, 0
  br i1 %tobool428.not, label %if.else480, label %if.then429

if.then429:                                       ; preds = %sw.bb425
  %240 = load i32, ptr %have, align 4
  %cmp430 = icmp eq i32 %240, 0
  br i1 %cmp430, label %do.body1875, label %if.end433

if.end433:                                        ; preds = %if.then429
  store i32 0, ptr %copy, align 4
  br label %do.body434

do.body434:                                       ; preds = %do.cond, %if.end433
  %241 = load ptr, ptr %next, align 8
  %242 = load i32, ptr %copy, align 4
  %inc = add i32 %242, 1
  store i32 %inc, ptr %copy, align 4
  %idxprom = zext i32 %242 to i64
  %arrayidx435 = getelementptr inbounds i8, ptr %241, i64 %idxprom
  %243 = load i8, ptr %arrayidx435, align 1
  %conv436 = zext i8 %243 to i32
  store i32 %conv436, ptr %len, align 4
  %244 = load ptr, ptr %state, align 8
  %head437 = getelementptr inbounds %struct.inflate_state, ptr %244, i64 0, i32 9
  %245 = load ptr, ptr %head437, align 8
  %cmp438.not = icmp eq ptr %245, null
  br i1 %cmp438.not, label %do.cond, label %land.lhs.true440

land.lhs.true440:                                 ; preds = %do.body434
  %246 = load ptr, ptr %state, align 8
  %head441 = getelementptr inbounds %struct.inflate_state, ptr %246, i64 0, i32 9
  %247 = load ptr, ptr %head441, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %247, i64 0, i32 7
  %248 = load ptr, ptr %name, align 8
  %cmp442.not = icmp eq ptr %248, null
  br i1 %cmp442.not, label %do.cond, label %land.lhs.true444

land.lhs.true444:                                 ; preds = %land.lhs.true440
  %249 = load ptr, ptr %state, align 8
  %length445 = getelementptr inbounds %struct.inflate_state, ptr %249, i64 0, i32 17
  %250 = load i32, ptr %length445, align 4
  %head446 = getelementptr inbounds %struct.inflate_state, ptr %249, i64 0, i32 9
  %251 = load ptr, ptr %head446, align 8
  %name_max = getelementptr inbounds %struct.gz_header_s, ptr %251, i64 0, i32 8
  %252 = load i32, ptr %name_max, align 8
  %cmp447 = icmp ult i32 %250, %252
  br i1 %cmp447, label %if.then449, label %do.cond

if.then449:                                       ; preds = %land.lhs.true444
  %253 = load i32, ptr %len, align 4
  %conv450 = trunc i32 %253 to i8
  %254 = load ptr, ptr %state, align 8
  %head451 = getelementptr inbounds %struct.inflate_state, ptr %254, i64 0, i32 9
  %255 = load ptr, ptr %head451, align 8
  %name452 = getelementptr inbounds %struct.gz_header_s, ptr %255, i64 0, i32 7
  %256 = load ptr, ptr %name452, align 8
  %length453 = getelementptr inbounds %struct.inflate_state, ptr %254, i64 0, i32 17
  %257 = load i32, ptr %length453, align 4
  %inc454 = add i32 %257, 1
  store i32 %inc454, ptr %length453, align 4
  %idxprom455 = zext i32 %257 to i64
  %arrayidx456 = getelementptr inbounds i8, ptr %256, i64 %idxprom455
  store i8 %conv450, ptr %arrayidx456, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body434, %land.lhs.true440, %land.lhs.true444, %if.then449
  %258 = load i32, ptr %len, align 4
  %tobool458.not = icmp eq i32 %258, 0
  %259 = load i32, ptr %copy, align 4
  %260 = load i32, ptr %have, align 4
  %cmp459 = icmp ult i32 %259, %260
  %261 = select i1 %tobool458.not, i1 false, i1 %cmp459
  br i1 %261, label %do.body434, label %do.end461, !llvm.loop !12

do.end461:                                        ; preds = %do.cond
  %262 = load ptr, ptr %state, align 8
  %flags462 = getelementptr inbounds %struct.inflate_state, ptr %262, i64 0, i32 5
  %263 = load i32, ptr %flags462, align 8
  %and463 = and i32 %263, 512
  %tobool464.not = icmp eq i32 %and463, 0
  br i1 %tobool464.not, label %if.end473, label %land.lhs.true465

land.lhs.true465:                                 ; preds = %do.end461
  %264 = load ptr, ptr %state, align 8
  %wrap466 = getelementptr inbounds %struct.inflate_state, ptr %264, i64 0, i32 3
  %265 = load i32, ptr %wrap466, align 8
  %and467 = and i32 %265, 4
  %tobool468.not = icmp eq i32 %and467, 0
  br i1 %tobool468.not, label %if.end473, label %if.then469

if.then469:                                       ; preds = %land.lhs.true465
  %266 = load ptr, ptr %state, align 8
  %check470 = getelementptr inbounds %struct.inflate_state, ptr %266, i64 0, i32 7
  %267 = load i64, ptr %check470, align 8
  %268 = load ptr, ptr %next, align 8
  %269 = load i32, ptr %copy, align 4
  %call471 = call i64 @crc32(i64 noundef %267, ptr noundef %268, i32 noundef %269) #5
  %270 = load ptr, ptr %state, align 8
  %check472 = getelementptr inbounds %struct.inflate_state, ptr %270, i64 0, i32 7
  store i64 %call471, ptr %check472, align 8
  br label %if.end473

if.end473:                                        ; preds = %if.then469, %land.lhs.true465, %do.end461
  %271 = load i32, ptr %copy, align 4
  %272 = load i32, ptr %have, align 4
  %sub474 = sub i32 %272, %271
  store i32 %sub474, ptr %have, align 4
  %273 = load ptr, ptr %next, align 8
  %idx.ext475 = zext i32 %271 to i64
  %add.ptr476 = getelementptr inbounds i8, ptr %273, i64 %idx.ext475
  store ptr %add.ptr476, ptr %next, align 8
  %274 = load i32, ptr %len, align 4
  %tobool477.not = icmp eq i32 %274, 0
  br i1 %tobool477.not, label %if.end488, label %do.body1875

if.else480:                                       ; preds = %sw.bb425
  %275 = load ptr, ptr %state, align 8
  %head481 = getelementptr inbounds %struct.inflate_state, ptr %275, i64 0, i32 9
  %276 = load ptr, ptr %head481, align 8
  %cmp482.not = icmp eq ptr %276, null
  br i1 %cmp482.not, label %if.end488, label %if.then484

if.then484:                                       ; preds = %if.else480
  %277 = load ptr, ptr %state, align 8
  %head485 = getelementptr inbounds %struct.inflate_state, ptr %277, i64 0, i32 9
  %278 = load ptr, ptr %head485, align 8
  %name486 = getelementptr inbounds %struct.gz_header_s, ptr %278, i64 0, i32 7
  store ptr null, ptr %name486, align 8
  br label %if.end488

if.end488:                                        ; preds = %if.else480, %if.then484, %if.end473
  %279 = load ptr, ptr %state, align 8
  %length489 = getelementptr inbounds %struct.inflate_state, ptr %279, i64 0, i32 17
  store i32 0, ptr %length489, align 4
  %mode490 = getelementptr inbounds %struct.inflate_state, ptr %279, i64 0, i32 1
  store i32 16187, ptr %mode490, align 8
  br label %sw.bb491

sw.bb491:                                         ; preds = %if.end488, %for.cond
  %280 = load ptr, ptr %state, align 8
  %flags492 = getelementptr inbounds %struct.inflate_state, ptr %280, i64 0, i32 5
  %281 = load i32, ptr %flags492, align 8
  %and493 = and i32 %281, 4096
  %tobool494.not = icmp eq i32 %and493, 0
  br i1 %tobool494.not, label %if.else551, label %if.then495

if.then495:                                       ; preds = %sw.bb491
  %282 = load i32, ptr %have, align 4
  %cmp496 = icmp eq i32 %282, 0
  br i1 %cmp496, label %do.body1875, label %if.end499

if.end499:                                        ; preds = %if.then495
  store i32 0, ptr %copy, align 4
  br label %do.body500

do.body500:                                       ; preds = %do.cond526, %if.end499
  %283 = load ptr, ptr %next, align 8
  %284 = load i32, ptr %copy, align 4
  %inc501 = add i32 %284, 1
  store i32 %inc501, ptr %copy, align 4
  %idxprom502 = zext i32 %284 to i64
  %arrayidx503 = getelementptr inbounds i8, ptr %283, i64 %idxprom502
  %285 = load i8, ptr %arrayidx503, align 1
  %conv504 = zext i8 %285 to i32
  store i32 %conv504, ptr %len, align 4
  %286 = load ptr, ptr %state, align 8
  %head505 = getelementptr inbounds %struct.inflate_state, ptr %286, i64 0, i32 9
  %287 = load ptr, ptr %head505, align 8
  %cmp506.not = icmp eq ptr %287, null
  br i1 %cmp506.not, label %do.cond526, label %land.lhs.true508

land.lhs.true508:                                 ; preds = %do.body500
  %288 = load ptr, ptr %state, align 8
  %head509 = getelementptr inbounds %struct.inflate_state, ptr %288, i64 0, i32 9
  %289 = load ptr, ptr %head509, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %289, i64 0, i32 9
  %290 = load ptr, ptr %comment, align 8
  %cmp510.not = icmp eq ptr %290, null
  br i1 %cmp510.not, label %do.cond526, label %land.lhs.true512

land.lhs.true512:                                 ; preds = %land.lhs.true508
  %291 = load ptr, ptr %state, align 8
  %length513 = getelementptr inbounds %struct.inflate_state, ptr %291, i64 0, i32 17
  %292 = load i32, ptr %length513, align 4
  %head514 = getelementptr inbounds %struct.inflate_state, ptr %291, i64 0, i32 9
  %293 = load ptr, ptr %head514, align 8
  %comm_max = getelementptr inbounds %struct.gz_header_s, ptr %293, i64 0, i32 10
  %294 = load i32, ptr %comm_max, align 8
  %cmp515 = icmp ult i32 %292, %294
  br i1 %cmp515, label %if.then517, label %do.cond526

if.then517:                                       ; preds = %land.lhs.true512
  %295 = load i32, ptr %len, align 4
  %conv518 = trunc i32 %295 to i8
  %296 = load ptr, ptr %state, align 8
  %head519 = getelementptr inbounds %struct.inflate_state, ptr %296, i64 0, i32 9
  %297 = load ptr, ptr %head519, align 8
  %comment520 = getelementptr inbounds %struct.gz_header_s, ptr %297, i64 0, i32 9
  %298 = load ptr, ptr %comment520, align 8
  %length521 = getelementptr inbounds %struct.inflate_state, ptr %296, i64 0, i32 17
  %299 = load i32, ptr %length521, align 4
  %inc522 = add i32 %299, 1
  store i32 %inc522, ptr %length521, align 4
  %idxprom523 = zext i32 %299 to i64
  %arrayidx524 = getelementptr inbounds i8, ptr %298, i64 %idxprom523
  store i8 %conv518, ptr %arrayidx524, align 1
  br label %do.cond526

do.cond526:                                       ; preds = %do.body500, %land.lhs.true508, %land.lhs.true512, %if.then517
  %300 = load i32, ptr %len, align 4
  %tobool527.not = icmp eq i32 %300, 0
  %301 = load i32, ptr %copy, align 4
  %302 = load i32, ptr %have, align 4
  %cmp529 = icmp ult i32 %301, %302
  %303 = select i1 %tobool527.not, i1 false, i1 %cmp529
  br i1 %303, label %do.body500, label %do.end532, !llvm.loop !13

do.end532:                                        ; preds = %do.cond526
  %304 = load ptr, ptr %state, align 8
  %flags533 = getelementptr inbounds %struct.inflate_state, ptr %304, i64 0, i32 5
  %305 = load i32, ptr %flags533, align 8
  %and534 = and i32 %305, 512
  %tobool535.not = icmp eq i32 %and534, 0
  br i1 %tobool535.not, label %if.end544, label %land.lhs.true536

land.lhs.true536:                                 ; preds = %do.end532
  %306 = load ptr, ptr %state, align 8
  %wrap537 = getelementptr inbounds %struct.inflate_state, ptr %306, i64 0, i32 3
  %307 = load i32, ptr %wrap537, align 8
  %and538 = and i32 %307, 4
  %tobool539.not = icmp eq i32 %and538, 0
  br i1 %tobool539.not, label %if.end544, label %if.then540

if.then540:                                       ; preds = %land.lhs.true536
  %308 = load ptr, ptr %state, align 8
  %check541 = getelementptr inbounds %struct.inflate_state, ptr %308, i64 0, i32 7
  %309 = load i64, ptr %check541, align 8
  %310 = load ptr, ptr %next, align 8
  %311 = load i32, ptr %copy, align 4
  %call542 = call i64 @crc32(i64 noundef %309, ptr noundef %310, i32 noundef %311) #5
  %312 = load ptr, ptr %state, align 8
  %check543 = getelementptr inbounds %struct.inflate_state, ptr %312, i64 0, i32 7
  store i64 %call542, ptr %check543, align 8
  br label %if.end544

if.end544:                                        ; preds = %if.then540, %land.lhs.true536, %do.end532
  %313 = load i32, ptr %copy, align 4
  %314 = load i32, ptr %have, align 4
  %sub545 = sub i32 %314, %313
  store i32 %sub545, ptr %have, align 4
  %315 = load ptr, ptr %next, align 8
  %idx.ext546 = zext i32 %313 to i64
  %add.ptr547 = getelementptr inbounds i8, ptr %315, i64 %idx.ext546
  store ptr %add.ptr547, ptr %next, align 8
  %316 = load i32, ptr %len, align 4
  %tobool548.not = icmp eq i32 %316, 0
  br i1 %tobool548.not, label %if.end559, label %do.body1875

if.else551:                                       ; preds = %sw.bb491
  %317 = load ptr, ptr %state, align 8
  %head552 = getelementptr inbounds %struct.inflate_state, ptr %317, i64 0, i32 9
  %318 = load ptr, ptr %head552, align 8
  %cmp553.not = icmp eq ptr %318, null
  br i1 %cmp553.not, label %if.end559, label %if.then555

if.then555:                                       ; preds = %if.else551
  %319 = load ptr, ptr %state, align 8
  %head556 = getelementptr inbounds %struct.inflate_state, ptr %319, i64 0, i32 9
  %320 = load ptr, ptr %head556, align 8
  %comment557 = getelementptr inbounds %struct.gz_header_s, ptr %320, i64 0, i32 9
  store ptr null, ptr %comment557, align 8
  br label %if.end559

if.end559:                                        ; preds = %if.else551, %if.then555, %if.end544
  %321 = load ptr, ptr %state, align 8
  %mode560 = getelementptr inbounds %struct.inflate_state, ptr %321, i64 0, i32 1
  store i32 16188, ptr %mode560, align 8
  br label %sw.bb561

sw.bb561:                                         ; preds = %if.end559, %for.cond
  %322 = load ptr, ptr %state, align 8
  %flags562 = getelementptr inbounds %struct.inflate_state, ptr %322, i64 0, i32 5
  %323 = load i32, ptr %flags562, align 8
  %and563 = and i32 %323, 512
  %tobool564.not = icmp eq i32 %and563, 0
  br i1 %tobool564.not, label %if.end603, label %while.cond567

while.cond567:                                    ; preds = %sw.bb561, %if.end575
  %324 = load i32, ptr %bits, align 4
  %cmp568 = icmp ult i32 %324, 16
  br i1 %cmp568, label %do.body571, label %do.end587

do.body571:                                       ; preds = %while.cond567
  %325 = load i32, ptr %have, align 4
  %cmp572 = icmp eq i32 %325, 0
  br i1 %cmp572, label %do.body1875, label %if.end575

if.end575:                                        ; preds = %do.body571
  %326 = load i32, ptr %have, align 4
  %dec576 = add i32 %326, -1
  store i32 %dec576, ptr %have, align 4
  %327 = load ptr, ptr %next, align 8
  %incdec.ptr577 = getelementptr inbounds i8, ptr %327, i64 1
  store ptr %incdec.ptr577, ptr %next, align 8
  %328 = load i8, ptr %327, align 1
  %conv578 = zext i8 %328 to i64
  %329 = load i32, ptr %bits, align 4
  %sh_prom579 = zext i32 %329 to i64
  %shl580 = shl i64 %conv578, %sh_prom579
  %330 = load i64, ptr %hold, align 8
  %add581 = add i64 %330, %shl580
  store i64 %add581, ptr %hold, align 8
  %add582 = add i32 %329, 8
  store i32 %add582, ptr %bits, align 4
  br label %while.cond567, !llvm.loop !14

do.end587:                                        ; preds = %while.cond567
  %331 = load ptr, ptr %state, align 8
  %wrap588 = getelementptr inbounds %struct.inflate_state, ptr %331, i64 0, i32 3
  %332 = load i32, ptr %wrap588, align 8
  %and589 = and i32 %332, 4
  %tobool590.not = icmp eq i32 %and589, 0
  br i1 %tobool590.not, label %do.body600, label %land.lhs.true591

land.lhs.true591:                                 ; preds = %do.end587
  %333 = load i64, ptr %hold, align 8
  %334 = load ptr, ptr %state, align 8
  %check592 = getelementptr inbounds %struct.inflate_state, ptr %334, i64 0, i32 7
  %335 = load i64, ptr %check592, align 8
  %and593 = and i64 %335, 65535
  %cmp594.not = icmp eq i64 %333, %and593
  br i1 %cmp594.not, label %do.body600, label %if.then596

if.then596:                                       ; preds = %land.lhs.true591
  %336 = load ptr, ptr %strm.addr, align 8
  %msg597 = getelementptr inbounds %struct.z_stream_s, ptr %336, i64 0, i32 6
  store ptr @.str.5, ptr %msg597, align 8
  %337 = load ptr, ptr %state, align 8
  %mode598 = getelementptr inbounds %struct.inflate_state, ptr %337, i64 0, i32 1
  store i32 16209, ptr %mode598, align 8
  br label %sw.epilog1874

do.body600:                                       ; preds = %do.end587, %land.lhs.true591
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %if.end603

if.end603:                                        ; preds = %do.body600, %sw.bb561
  %338 = load ptr, ptr %state, align 8
  %head604 = getelementptr inbounds %struct.inflate_state, ptr %338, i64 0, i32 9
  %339 = load ptr, ptr %head604, align 8
  %cmp605.not = icmp eq ptr %339, null
  br i1 %cmp605.not, label %if.end614, label %if.then607

if.then607:                                       ; preds = %if.end603
  %340 = load ptr, ptr %state, align 8
  %flags608 = getelementptr inbounds %struct.inflate_state, ptr %340, i64 0, i32 5
  %341 = load i32, ptr %flags608, align 8
  %shr6097 = lshr i32 %341, 9
  %and610 = and i32 %shr6097, 1
  %head611 = getelementptr inbounds %struct.inflate_state, ptr %340, i64 0, i32 9
  %342 = load ptr, ptr %head611, align 8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %342, i64 0, i32 11
  store i32 %and610, ptr %hcrc, align 4
  %343 = load ptr, ptr %state, align 8
  %head612 = getelementptr inbounds %struct.inflate_state, ptr %343, i64 0, i32 9
  %344 = load ptr, ptr %head612, align 8
  %done613 = getelementptr inbounds %struct.gz_header_s, ptr %344, i64 0, i32 12
  store i32 1, ptr %done613, align 8
  br label %if.end614

if.end614:                                        ; preds = %if.then607, %if.end603
  %call615 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %345 = load ptr, ptr %state, align 8
  %check616 = getelementptr inbounds %struct.inflate_state, ptr %345, i64 0, i32 7
  store i64 %call615, ptr %check616, align 8
  %346 = load ptr, ptr %strm.addr, align 8
  %adler617 = getelementptr inbounds %struct.z_stream_s, ptr %346, i64 0, i32 12
  store i64 %call615, ptr %adler617, align 8
  %mode618 = getelementptr inbounds %struct.inflate_state, ptr %345, i64 0, i32 1
  store i32 16191, ptr %mode618, align 8
  br label %sw.epilog1874

while.cond621:                                    ; preds = %for.cond, %if.end629
  %347 = load i32, ptr %bits, align 4
  %cmp622 = icmp ult i32 %347, 32
  br i1 %cmp622, label %do.body625, label %do.end641

do.body625:                                       ; preds = %while.cond621
  %348 = load i32, ptr %have, align 4
  %cmp626 = icmp eq i32 %348, 0
  br i1 %cmp626, label %do.body1875, label %if.end629

if.end629:                                        ; preds = %do.body625
  %349 = load i32, ptr %have, align 4
  %dec630 = add i32 %349, -1
  store i32 %dec630, ptr %have, align 4
  %350 = load ptr, ptr %next, align 8
  %incdec.ptr631 = getelementptr inbounds i8, ptr %350, i64 1
  store ptr %incdec.ptr631, ptr %next, align 8
  %351 = load i8, ptr %350, align 1
  %conv632 = zext i8 %351 to i64
  %352 = load i32, ptr %bits, align 4
  %sh_prom633 = zext i32 %352 to i64
  %shl634 = shl i64 %conv632, %sh_prom633
  %353 = load i64, ptr %hold, align 8
  %add635 = add i64 %353, %shl634
  store i64 %add635, ptr %hold, align 8
  %add636 = add i32 %352, 8
  store i32 %add636, ptr %bits, align 4
  br label %while.cond621, !llvm.loop !15

do.end641:                                        ; preds = %while.cond621
  %354 = load i64, ptr %hold, align 8
  %shr642 = lshr i64 %354, 24
  %and643 = and i64 %shr642, 255
  %shr644 = lshr i64 %354, 8
  %and645 = and i64 %shr644, 65280
  %add646 = or i64 %and643, %and645
  %and647 = shl i64 %354, 8
  %shl648 = and i64 %and647, 16711680
  %add649 = or i64 %add646, %shl648
  %355 = load i64, ptr %hold, align 8
  %and650 = shl i64 %355, 24
  %shl651 = and i64 %and650, 4278190080
  %add652 = or i64 %add649, %shl651
  %356 = load ptr, ptr %state, align 8
  %check653 = getelementptr inbounds %struct.inflate_state, ptr %356, i64 0, i32 7
  store i64 %add652, ptr %check653, align 8
  %357 = load ptr, ptr %strm.addr, align 8
  %adler654 = getelementptr inbounds %struct.z_stream_s, ptr %357, i64 0, i32 12
  store i64 %add652, ptr %adler654, align 8
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %358 = load ptr, ptr %state, align 8
  %mode658 = getelementptr inbounds %struct.inflate_state, ptr %358, i64 0, i32 1
  store i32 16190, ptr %mode658, align 8
  br label %sw.bb659

sw.bb659:                                         ; preds = %do.end641, %for.cond
  %359 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %359, i64 0, i32 4
  %360 = load i32, ptr %havedict, align 4
  %cmp660 = icmp eq i32 %360, 0
  br i1 %cmp660, label %do.body663, label %if.end672

do.body663:                                       ; preds = %sw.bb659
  %361 = load ptr, ptr %put, align 8
  %362 = load ptr, ptr %strm.addr, align 8
  %next_out664 = getelementptr inbounds %struct.z_stream_s, ptr %362, i64 0, i32 3
  store ptr %361, ptr %next_out664, align 8
  %363 = load i32, ptr %left, align 4
  %avail_out665 = getelementptr inbounds %struct.z_stream_s, ptr %362, i64 0, i32 4
  store i32 %363, ptr %avail_out665, align 8
  %364 = load ptr, ptr %next, align 8
  %365 = load ptr, ptr %strm.addr, align 8
  store ptr %364, ptr %365, align 8
  %366 = load i32, ptr %have, align 4
  %avail_in667 = getelementptr inbounds %struct.z_stream_s, ptr %365, i64 0, i32 1
  store i32 %366, ptr %avail_in667, align 8
  %367 = load i64, ptr %hold, align 8
  %368 = load ptr, ptr %state, align 8
  %hold668 = getelementptr inbounds %struct.inflate_state, ptr %368, i64 0, i32 15
  store i64 %367, ptr %hold668, align 8
  %369 = load i32, ptr %bits, align 4
  %bits669 = getelementptr inbounds %struct.inflate_state, ptr %368, i64 0, i32 16
  store i32 %369, ptr %bits669, align 8
  store i32 2, ptr %retval, align 4
  br label %return

if.end672:                                        ; preds = %sw.bb659
  %call673 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %370 = load ptr, ptr %state, align 8
  %check674 = getelementptr inbounds %struct.inflate_state, ptr %370, i64 0, i32 7
  store i64 %call673, ptr %check674, align 8
  %371 = load ptr, ptr %strm.addr, align 8
  %adler675 = getelementptr inbounds %struct.z_stream_s, ptr %371, i64 0, i32 12
  store i64 %call673, ptr %adler675, align 8
  %mode676 = getelementptr inbounds %struct.inflate_state, ptr %370, i64 0, i32 1
  store i32 16191, ptr %mode676, align 8
  br label %sw.bb677

sw.bb677:                                         ; preds = %if.end672, %for.cond
  %372 = load i32, ptr %flush.addr, align 4
  %cmp678 = icmp eq i32 %372, 5
  %373 = load i32, ptr %flush.addr, align 4
  %cmp681 = icmp eq i32 %373, 6
  %or.cond9 = select i1 %cmp678, i1 true, i1 %cmp681
  br i1 %or.cond9, label %do.body1875, label %sw.bb685

sw.bb685:                                         ; preds = %sw.bb677, %for.cond
  %374 = load ptr, ptr %state, align 8
  %last686 = getelementptr inbounds %struct.inflate_state, ptr %374, i64 0, i32 2
  %375 = load i32, ptr %last686, align 4
  %tobool687.not = icmp eq i32 %375, 0
  br i1 %tobool687.not, label %while.cond700, label %do.body689

do.body689:                                       ; preds = %sw.bb685
  %376 = load i32, ptr %bits, align 4
  %and690 = and i32 %376, 7
  %377 = load i64, ptr %hold, align 8
  %sh_prom691 = zext i32 %and690 to i64
  %shr692 = lshr i64 %377, %sh_prom691
  store i64 %shr692, ptr %hold, align 8
  %and693 = and i32 %376, 7
  %378 = load i32, ptr %bits, align 4
  %sub694 = sub i32 %378, %and693
  store i32 %sub694, ptr %bits, align 4
  %379 = load ptr, ptr %state, align 8
  %mode697 = getelementptr inbounds %struct.inflate_state, ptr %379, i64 0, i32 1
  store i32 16206, ptr %mode697, align 8
  br label %sw.epilog1874

while.cond700:                                    ; preds = %sw.bb685, %if.end708
  %380 = load i32, ptr %bits, align 4
  %cmp701 = icmp ult i32 %380, 3
  br i1 %cmp701, label %do.body704, label %do.end720

do.body704:                                       ; preds = %while.cond700
  %381 = load i32, ptr %have, align 4
  %cmp705 = icmp eq i32 %381, 0
  br i1 %cmp705, label %do.body1875, label %if.end708

if.end708:                                        ; preds = %do.body704
  %382 = load i32, ptr %have, align 4
  %dec709 = add i32 %382, -1
  store i32 %dec709, ptr %have, align 4
  %383 = load ptr, ptr %next, align 8
  %incdec.ptr710 = getelementptr inbounds i8, ptr %383, i64 1
  store ptr %incdec.ptr710, ptr %next, align 8
  %384 = load i8, ptr %383, align 1
  %conv711 = zext i8 %384 to i64
  %385 = load i32, ptr %bits, align 4
  %sh_prom712 = zext i32 %385 to i64
  %shl713 = shl i64 %conv711, %sh_prom712
  %386 = load i64, ptr %hold, align 8
  %add714 = add i64 %386, %shl713
  store i64 %add714, ptr %hold, align 8
  %add715 = add i32 %385, 8
  store i32 %add715, ptr %bits, align 4
  br label %while.cond700, !llvm.loop !16

do.end720:                                        ; preds = %while.cond700
  %387 = load i64, ptr %hold, align 8
  %conv721 = trunc i64 %387 to i32
  %and722 = and i32 %conv721, 1
  %388 = load ptr, ptr %state, align 8
  %last723 = getelementptr inbounds %struct.inflate_state, ptr %388, i64 0, i32 2
  store i32 %and722, ptr %last723, align 4
  %389 = load i64, ptr %hold, align 8
  %shr725 = lshr i64 %389, 1
  store i64 %shr725, ptr %hold, align 8
  %390 = load i32, ptr %bits, align 4
  %sub726 = add i32 %390, -1
  store i32 %sub726, ptr %bits, align 4
  %391 = load i64, ptr %hold, align 8
  %conv729 = trunc i64 %391 to i32
  %and730 = and i32 %conv729, 3
  switch i32 %and730, label %sw.default [
    i32 0, label %sw.bb731
    i32 1, label %sw.bb733
    i32 2, label %sw.bb744
  ]

sw.bb731:                                         ; preds = %do.end720
  %392 = load ptr, ptr %state, align 8
  %mode732 = getelementptr inbounds %struct.inflate_state, ptr %392, i64 0, i32 1
  store i32 16193, ptr %mode732, align 8
  br label %do.body748

sw.bb733:                                         ; preds = %do.end720
  %393 = load ptr, ptr %state, align 8
  call void @inflate_fixed(ptr noundef %393) #5
  %394 = load ptr, ptr %state, align 8
  %mode734 = getelementptr inbounds %struct.inflate_state, ptr %394, i64 0, i32 1
  store i32 16199, ptr %mode734, align 8
  %395 = load i32, ptr %flush.addr, align 4
  %cmp735 = icmp eq i32 %395, 6
  br i1 %cmp735, label %do.body738, label %do.body748

do.body738:                                       ; preds = %sw.bb733
  %396 = load i64, ptr %hold, align 8
  %shr739 = lshr i64 %396, 2
  store i64 %shr739, ptr %hold, align 8
  %397 = load i32, ptr %bits, align 4
  %sub740 = add i32 %397, -2
  store i32 %sub740, ptr %bits, align 4
  br label %do.body1875

sw.bb744:                                         ; preds = %do.end720
  %398 = load ptr, ptr %state, align 8
  %mode745 = getelementptr inbounds %struct.inflate_state, ptr %398, i64 0, i32 1
  store i32 16196, ptr %mode745, align 8
  br label %do.body748

sw.default:                                       ; preds = %do.end720
  %399 = load ptr, ptr %strm.addr, align 8
  %msg746 = getelementptr inbounds %struct.z_stream_s, ptr %399, i64 0, i32 6
  store ptr @.str.6, ptr %msg746, align 8
  %400 = load ptr, ptr %state, align 8
  %mode747 = getelementptr inbounds %struct.inflate_state, ptr %400, i64 0, i32 1
  store i32 16209, ptr %mode747, align 8
  br label %do.body748

do.body748:                                       ; preds = %sw.bb731, %sw.bb744, %sw.default, %sw.bb733
  %401 = load i64, ptr %hold, align 8
  %shr749 = lshr i64 %401, 2
  store i64 %shr749, ptr %hold, align 8
  %402 = load i32, ptr %bits, align 4
  %sub750 = add i32 %402, -2
  store i32 %sub750, ptr %bits, align 4
  br label %sw.epilog1874

do.body754:                                       ; preds = %for.cond
  %403 = load i32, ptr %bits, align 4
  %and755 = and i32 %403, 7
  %404 = load i64, ptr %hold, align 8
  %sh_prom756 = zext i32 %and755 to i64
  %shr757 = lshr i64 %404, %sh_prom756
  store i64 %shr757, ptr %hold, align 8
  %and758 = and i32 %403, 7
  %405 = load i32, ptr %bits, align 4
  %sub759 = sub i32 %405, %and758
  store i32 %sub759, ptr %bits, align 4
  br label %while.cond763

while.cond763:                                    ; preds = %if.end771, %do.body754
  %406 = load i32, ptr %bits, align 4
  %cmp764 = icmp ult i32 %406, 32
  br i1 %cmp764, label %do.body767, label %do.end783

do.body767:                                       ; preds = %while.cond763
  %407 = load i32, ptr %have, align 4
  %cmp768 = icmp eq i32 %407, 0
  br i1 %cmp768, label %do.body1875, label %if.end771

if.end771:                                        ; preds = %do.body767
  %408 = load i32, ptr %have, align 4
  %dec772 = add i32 %408, -1
  store i32 %dec772, ptr %have, align 4
  %409 = load ptr, ptr %next, align 8
  %incdec.ptr773 = getelementptr inbounds i8, ptr %409, i64 1
  store ptr %incdec.ptr773, ptr %next, align 8
  %410 = load i8, ptr %409, align 1
  %conv774 = zext i8 %410 to i64
  %411 = load i32, ptr %bits, align 4
  %sh_prom775 = zext i32 %411 to i64
  %shl776 = shl i64 %conv774, %sh_prom775
  %412 = load i64, ptr %hold, align 8
  %add777 = add i64 %412, %shl776
  store i64 %add777, ptr %hold, align 8
  %add778 = add i32 %411, 8
  store i32 %add778, ptr %bits, align 4
  br label %while.cond763, !llvm.loop !17

do.end783:                                        ; preds = %while.cond763
  %413 = load i64, ptr %hold, align 8
  %and784 = and i64 %413, 65535
  %shr785 = lshr i64 %413, 16
  %xor = xor i64 %shr785, 65535
  %cmp786.not = icmp eq i64 %and784, %xor
  br i1 %cmp786.not, label %if.end791, label %if.then788

if.then788:                                       ; preds = %do.end783
  %414 = load ptr, ptr %strm.addr, align 8
  %msg789 = getelementptr inbounds %struct.z_stream_s, ptr %414, i64 0, i32 6
  store ptr @.str.7, ptr %msg789, align 8
  %415 = load ptr, ptr %state, align 8
  %mode790 = getelementptr inbounds %struct.inflate_state, ptr %415, i64 0, i32 1
  store i32 16209, ptr %mode790, align 8
  br label %sw.epilog1874

if.end791:                                        ; preds = %do.end783
  %416 = load i64, ptr %hold, align 8
  %conv792 = trunc i64 %416 to i32
  %and793 = and i32 %conv792, 65535
  %417 = load ptr, ptr %state, align 8
  %length794 = getelementptr inbounds %struct.inflate_state, ptr %417, i64 0, i32 17
  store i32 %and793, ptr %length794, align 4
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  %418 = load ptr, ptr %state, align 8
  %mode798 = getelementptr inbounds %struct.inflate_state, ptr %418, i64 0, i32 1
  store i32 16194, ptr %mode798, align 8
  %419 = load i32, ptr %flush.addr, align 4
  %cmp799 = icmp eq i32 %419, 6
  br i1 %cmp799, label %do.body1875, label %sw.bb803

sw.bb803:                                         ; preds = %if.end791, %for.cond
  %420 = load ptr, ptr %state, align 8
  %mode804 = getelementptr inbounds %struct.inflate_state, ptr %420, i64 0, i32 1
  store i32 16195, ptr %mode804, align 8
  br label %sw.bb805

sw.bb805:                                         ; preds = %sw.bb803, %for.cond
  %421 = load ptr, ptr %state, align 8
  %length806 = getelementptr inbounds %struct.inflate_state, ptr %421, i64 0, i32 17
  %422 = load i32, ptr %length806, align 4
  store i32 %422, ptr %copy, align 4
  %tobool807.not = icmp eq i32 %422, 0
  br i1 %tobool807.not, label %if.end831, label %if.then808

if.then808:                                       ; preds = %sw.bb805
  %423 = load i32, ptr %copy, align 4
  %424 = load i32, ptr %have, align 4
  %cmp809 = icmp ugt i32 %423, %424
  br i1 %cmp809, label %if.then811, label %if.end812

if.then811:                                       ; preds = %if.then808
  %425 = load i32, ptr %have, align 4
  store i32 %425, ptr %copy, align 4
  br label %if.end812

if.end812:                                        ; preds = %if.then811, %if.then808
  %426 = load i32, ptr %copy, align 4
  %427 = load i32, ptr %left, align 4
  %cmp813 = icmp ugt i32 %426, %427
  br i1 %cmp813, label %if.then815, label %if.end816

if.then815:                                       ; preds = %if.end812
  %428 = load i32, ptr %left, align 4
  store i32 %428, ptr %copy, align 4
  br label %if.end816

if.end816:                                        ; preds = %if.then815, %if.end812
  %429 = load i32, ptr %copy, align 4
  %cmp817 = icmp eq i32 %429, 0
  br i1 %cmp817, label %do.body1875, label %if.end820

if.end820:                                        ; preds = %if.end816
  %430 = load ptr, ptr %put, align 8
  %431 = load ptr, ptr %next, align 8
  %432 = load i32, ptr %copy, align 4
  %conv821 = zext i32 %432 to i64
  %433 = call i64 @llvm.objectsize.i64.p0(ptr %430, i1 false, i1 true, i1 false)
  %call822 = call ptr @__memcpy_chk(ptr noundef %430, ptr noundef %431, i64 noundef %conv821, i64 noundef %433) #5
  %434 = load i32, ptr %have, align 4
  %sub823 = sub i32 %434, %432
  store i32 %sub823, ptr %have, align 4
  %435 = load i32, ptr %copy, align 4
  %436 = load ptr, ptr %next, align 8
  %idx.ext824 = zext i32 %435 to i64
  %add.ptr825 = getelementptr inbounds i8, ptr %436, i64 %idx.ext824
  store ptr %add.ptr825, ptr %next, align 8
  %437 = load i32, ptr %left, align 4
  %sub826 = sub i32 %437, %435
  store i32 %sub826, ptr %left, align 4
  %438 = load i32, ptr %copy, align 4
  %439 = load ptr, ptr %put, align 8
  %idx.ext827 = zext i32 %438 to i64
  %add.ptr828 = getelementptr inbounds i8, ptr %439, i64 %idx.ext827
  store ptr %add.ptr828, ptr %put, align 8
  %440 = load ptr, ptr %state, align 8
  %length829 = getelementptr inbounds %struct.inflate_state, ptr %440, i64 0, i32 17
  %441 = load i32, ptr %length829, align 4
  %sub830 = sub i32 %441, %438
  store i32 %sub830, ptr %length829, align 4
  br label %sw.epilog1874

if.end831:                                        ; preds = %sw.bb805
  %442 = load ptr, ptr %state, align 8
  %mode832 = getelementptr inbounds %struct.inflate_state, ptr %442, i64 0, i32 1
  store i32 16191, ptr %mode832, align 8
  br label %sw.epilog1874

while.cond835:                                    ; preds = %for.cond, %if.end843
  %443 = load i32, ptr %bits, align 4
  %cmp836 = icmp ult i32 %443, 14
  br i1 %cmp836, label %do.body839, label %do.end855

do.body839:                                       ; preds = %while.cond835
  %444 = load i32, ptr %have, align 4
  %cmp840 = icmp eq i32 %444, 0
  br i1 %cmp840, label %do.body1875, label %if.end843

if.end843:                                        ; preds = %do.body839
  %445 = load i32, ptr %have, align 4
  %dec844 = add i32 %445, -1
  store i32 %dec844, ptr %have, align 4
  %446 = load ptr, ptr %next, align 8
  %incdec.ptr845 = getelementptr inbounds i8, ptr %446, i64 1
  store ptr %incdec.ptr845, ptr %next, align 8
  %447 = load i8, ptr %446, align 1
  %conv846 = zext i8 %447 to i64
  %448 = load i32, ptr %bits, align 4
  %sh_prom847 = zext i32 %448 to i64
  %shl848 = shl i64 %conv846, %sh_prom847
  %449 = load i64, ptr %hold, align 8
  %add849 = add i64 %449, %shl848
  store i64 %add849, ptr %hold, align 8
  %add850 = add i32 %448, 8
  store i32 %add850, ptr %bits, align 4
  br label %while.cond835, !llvm.loop !18

do.end855:                                        ; preds = %while.cond835
  %450 = load i64, ptr %hold, align 8
  %conv856 = trunc i64 %450 to i32
  %and857 = and i32 %conv856, 31
  %add858 = add nuw nsw i32 %and857, 257
  %451 = load ptr, ptr %state, align 8
  %nlen = getelementptr inbounds %struct.inflate_state, ptr %451, i64 0, i32 25
  store i32 %add858, ptr %nlen, align 4
  %452 = load i64, ptr %hold, align 8
  %shr860 = lshr i64 %452, 5
  store i64 %shr860, ptr %hold, align 8
  %453 = load i32, ptr %bits, align 4
  %sub861 = add i32 %453, -5
  store i32 %sub861, ptr %bits, align 4
  %454 = load i64, ptr %hold, align 8
  %conv864 = trunc i64 %454 to i32
  %and865 = and i32 %conv864, 31
  %add866 = add nuw nsw i32 %and865, 1
  %455 = load ptr, ptr %state, align 8
  %ndist = getelementptr inbounds %struct.inflate_state, ptr %455, i64 0, i32 26
  store i32 %add866, ptr %ndist, align 8
  %456 = load i64, ptr %hold, align 8
  %shr868 = lshr i64 %456, 5
  store i64 %shr868, ptr %hold, align 8
  %457 = load i32, ptr %bits, align 4
  %sub869 = add i32 %457, -5
  store i32 %sub869, ptr %bits, align 4
  %458 = load i64, ptr %hold, align 8
  %conv872 = trunc i64 %458 to i32
  %and873 = and i32 %conv872, 15
  %add874 = add nuw nsw i32 %and873, 4
  %459 = load ptr, ptr %state, align 8
  %ncode = getelementptr inbounds %struct.inflate_state, ptr %459, i64 0, i32 24
  store i32 %add874, ptr %ncode, align 8
  %460 = load i64, ptr %hold, align 8
  %shr876 = lshr i64 %460, 4
  store i64 %shr876, ptr %hold, align 8
  %461 = load i32, ptr %bits, align 4
  %sub877 = add i32 %461, -4
  store i32 %sub877, ptr %bits, align 4
  %462 = load ptr, ptr %state, align 8
  %nlen880 = getelementptr inbounds %struct.inflate_state, ptr %462, i64 0, i32 25
  %463 = load i32, ptr %nlen880, align 4
  %cmp881 = icmp ugt i32 %463, 286
  br i1 %cmp881, label %if.then887, label %lor.lhs.false883

lor.lhs.false883:                                 ; preds = %do.end855
  %464 = load ptr, ptr %state, align 8
  %ndist884 = getelementptr inbounds %struct.inflate_state, ptr %464, i64 0, i32 26
  %465 = load i32, ptr %ndist884, align 8
  %cmp885 = icmp ugt i32 %465, 30
  br i1 %cmp885, label %if.then887, label %if.end890

if.then887:                                       ; preds = %lor.lhs.false883, %do.end855
  %466 = load ptr, ptr %strm.addr, align 8
  %msg888 = getelementptr inbounds %struct.z_stream_s, ptr %466, i64 0, i32 6
  store ptr @.str.8, ptr %msg888, align 8
  %467 = load ptr, ptr %state, align 8
  %mode889 = getelementptr inbounds %struct.inflate_state, ptr %467, i64 0, i32 1
  store i32 16209, ptr %mode889, align 8
  br label %sw.epilog1874

if.end890:                                        ; preds = %lor.lhs.false883
  %468 = load ptr, ptr %state, align 8
  %have891 = getelementptr inbounds %struct.inflate_state, ptr %468, i64 0, i32 27
  store i32 0, ptr %have891, align 4
  %mode892 = getelementptr inbounds %struct.inflate_state, ptr %468, i64 0, i32 1
  store i32 16197, ptr %mode892, align 8
  br label %sw.bb893

sw.bb893:                                         ; preds = %if.end890, %for.cond
  br label %while.cond894

while.cond894:                                    ; preds = %do.end921, %sw.bb893
  %469 = load ptr, ptr %state, align 8
  %have895 = getelementptr inbounds %struct.inflate_state, ptr %469, i64 0, i32 27
  %470 = load i32, ptr %have895, align 4
  %ncode896 = getelementptr inbounds %struct.inflate_state, ptr %469, i64 0, i32 24
  %471 = load i32, ptr %ncode896, align 8
  %cmp897 = icmp ult i32 %470, %471
  br i1 %cmp897, label %while.cond901, label %while.cond937

while.cond901:                                    ; preds = %while.cond894, %if.end909
  %472 = load i32, ptr %bits, align 4
  %cmp902 = icmp ult i32 %472, 3
  br i1 %cmp902, label %do.body905, label %do.end921

do.body905:                                       ; preds = %while.cond901
  %473 = load i32, ptr %have, align 4
  %cmp906 = icmp eq i32 %473, 0
  br i1 %cmp906, label %do.body1875, label %if.end909

if.end909:                                        ; preds = %do.body905
  %474 = load i32, ptr %have, align 4
  %dec910 = add i32 %474, -1
  store i32 %dec910, ptr %have, align 4
  %475 = load ptr, ptr %next, align 8
  %incdec.ptr911 = getelementptr inbounds i8, ptr %475, i64 1
  store ptr %incdec.ptr911, ptr %next, align 8
  %476 = load i8, ptr %475, align 1
  %conv912 = zext i8 %476 to i64
  %477 = load i32, ptr %bits, align 4
  %sh_prom913 = zext i32 %477 to i64
  %shl914 = shl i64 %conv912, %sh_prom913
  %478 = load i64, ptr %hold, align 8
  %add915 = add i64 %478, %shl914
  store i64 %add915, ptr %hold, align 8
  %add916 = add i32 %477, 8
  store i32 %add916, ptr %bits, align 4
  br label %while.cond901, !llvm.loop !19

do.end921:                                        ; preds = %while.cond901
  %479 = load i64, ptr %hold, align 8
  %conv922 = trunc i64 %479 to i16
  %and923 = and i16 %conv922, 7
  %480 = load ptr, ptr %state, align 8
  %have925 = getelementptr inbounds %struct.inflate_state, ptr %480, i64 0, i32 27
  %481 = load i32, ptr %have925, align 4
  %inc926 = add i32 %481, 1
  store i32 %inc926, ptr %have925, align 4
  %idxprom927 = zext i32 %481 to i64
  %arrayidx928 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %idxprom927
  %482 = load i16, ptr %arrayidx928, align 2
  %idxprom929 = zext i16 %482 to i64
  %arrayidx930 = getelementptr inbounds %struct.inflate_state, ptr %480, i64 0, i32 29, i64 %idxprom929
  store i16 %and923, ptr %arrayidx930, align 2
  %483 = load i64, ptr %hold, align 8
  %shr932 = lshr i64 %483, 3
  store i64 %shr932, ptr %hold, align 8
  %484 = load i32, ptr %bits, align 4
  %sub933 = add i32 %484, -3
  store i32 %sub933, ptr %bits, align 4
  br label %while.cond894, !llvm.loop !20

while.cond937:                                    ; preds = %while.cond894, %while.body941
  %485 = load ptr, ptr %state, align 8
  %have938 = getelementptr inbounds %struct.inflate_state, ptr %485, i64 0, i32 27
  %486 = load i32, ptr %have938, align 4
  %cmp939 = icmp ult i32 %486, 19
  br i1 %cmp939, label %while.body941, label %while.end949

while.body941:                                    ; preds = %while.cond937
  %487 = load ptr, ptr %state, align 8
  %have943 = getelementptr inbounds %struct.inflate_state, ptr %487, i64 0, i32 27
  %488 = load i32, ptr %have943, align 4
  %inc944 = add i32 %488, 1
  store i32 %inc944, ptr %have943, align 4
  %idxprom945 = zext i32 %488 to i64
  %arrayidx946 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %idxprom945
  %489 = load i16, ptr %arrayidx946, align 2
  %idxprom947 = zext i16 %489 to i64
  %arrayidx948 = getelementptr inbounds %struct.inflate_state, ptr %487, i64 0, i32 29, i64 %idxprom947
  store i16 0, ptr %arrayidx948, align 2
  br label %while.cond937, !llvm.loop !21

while.end949:                                     ; preds = %while.cond937
  %490 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %490, i64 0, i32 31
  %next951 = getelementptr inbounds %struct.inflate_state, ptr %490, i64 0, i32 28
  store ptr %codes, ptr %next951, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %490, i64 0, i32 21
  store ptr %codes, ptr %distcode, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %490, i64 0, i32 20
  store ptr %codes, ptr %lencode, align 8
  %491 = load ptr, ptr %state, align 8
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %491, i64 0, i32 22
  store i32 7, ptr %lenbits, align 8
  %lens953 = getelementptr inbounds %struct.inflate_state, ptr %491, i64 0, i32 29
  %next955 = getelementptr inbounds %struct.inflate_state, ptr %491, i64 0, i32 28
  %lenbits956 = getelementptr inbounds %struct.inflate_state, ptr %491, i64 0, i32 22
  %work = getelementptr inbounds %struct.inflate_state, ptr %491, i64 0, i32 30
  %call958 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %lens953, i32 noundef 19, ptr noundef nonnull %next955, ptr noundef nonnull %lenbits956, ptr noundef nonnull %work) #5
  store i32 %call958, ptr %ret, align 4
  %tobool959.not = icmp eq i32 %call958, 0
  br i1 %tobool959.not, label %if.end963, label %if.then960

if.then960:                                       ; preds = %while.end949
  %492 = load ptr, ptr %strm.addr, align 8
  %msg961 = getelementptr inbounds %struct.z_stream_s, ptr %492, i64 0, i32 6
  store ptr @.str.9, ptr %msg961, align 8
  %493 = load ptr, ptr %state, align 8
  %mode962 = getelementptr inbounds %struct.inflate_state, ptr %493, i64 0, i32 1
  store i32 16209, ptr %mode962, align 8
  br label %sw.epilog1874

if.end963:                                        ; preds = %while.end949
  %494 = load ptr, ptr %state, align 8
  %have964 = getelementptr inbounds %struct.inflate_state, ptr %494, i64 0, i32 27
  store i32 0, ptr %have964, align 4
  %mode965 = getelementptr inbounds %struct.inflate_state, ptr %494, i64 0, i32 1
  store i32 16198, ptr %mode965, align 8
  br label %sw.bb966

sw.bb966:                                         ; preds = %if.end963, %for.cond
  br label %while.cond967

while.cond967:                                    ; preds = %if.end1203, %sw.bb966
  %495 = load ptr, ptr %state, align 8
  %have968 = getelementptr inbounds %struct.inflate_state, ptr %495, i64 0, i32 27
  %496 = load i32, ptr %have968, align 4
  %nlen969 = getelementptr inbounds %struct.inflate_state, ptr %495, i64 0, i32 25
  %497 = load i32, ptr %nlen969, align 4
  %ndist970 = getelementptr inbounds %struct.inflate_state, ptr %495, i64 0, i32 26
  %498 = load i32, ptr %ndist970, align 8
  %add971 = add i32 %497, %498
  %cmp972 = icmp ult i32 %496, %add971
  br i1 %cmp972, label %for.cond975, label %while.end1204

for.cond975:                                      ; preds = %while.cond967, %if.end994
  %499 = load ptr, ptr %state, align 8
  %lencode976 = getelementptr inbounds %struct.inflate_state, ptr %499, i64 0, i32 20
  %500 = load ptr, ptr %lencode976, align 8
  %501 = load i64, ptr %hold, align 8
  %conv977 = trunc i64 %501 to i32
  %lenbits978 = getelementptr inbounds %struct.inflate_state, ptr %499, i64 0, i32 22
  %502 = load i32, ptr %lenbits978, align 8
  %notmask6 = shl nsw i32 -1, %502
  %sub980 = xor i32 %notmask6, -1
  %and981 = and i32 %conv977, %sub980
  %idxprom982 = zext i32 %and981 to i64
  %arrayidx983 = getelementptr inbounds %struct.code, ptr %500, i64 %idxprom982
  %503 = load i32, ptr %arrayidx983, align 2
  store i32 %503, ptr %here, align 4
  %bits984 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %504 = load i8, ptr %bits984, align 1
  %conv985 = zext i8 %504 to i32
  %505 = load i32, ptr %bits, align 4
  %cmp986.not = icmp ult i32 %505, %conv985
  br i1 %cmp986.not, label %do.body990, label %for.end

do.body990:                                       ; preds = %for.cond975
  %506 = load i32, ptr %have, align 4
  %cmp991 = icmp eq i32 %506, 0
  br i1 %cmp991, label %do.body1875, label %if.end994

if.end994:                                        ; preds = %do.body990
  %507 = load i32, ptr %have, align 4
  %dec995 = add i32 %507, -1
  store i32 %dec995, ptr %have, align 4
  %508 = load ptr, ptr %next, align 8
  %incdec.ptr996 = getelementptr inbounds i8, ptr %508, i64 1
  store ptr %incdec.ptr996, ptr %next, align 8
  %509 = load i8, ptr %508, align 1
  %conv997 = zext i8 %509 to i64
  %510 = load i32, ptr %bits, align 4
  %sh_prom998 = zext i32 %510 to i64
  %shl999 = shl i64 %conv997, %sh_prom998
  %511 = load i64, ptr %hold, align 8
  %add1000 = add i64 %511, %shl999
  store i64 %add1000, ptr %hold, align 8
  %add1001 = add i32 %510, 8
  store i32 %add1001, ptr %bits, align 4
  br label %for.cond975

for.end:                                          ; preds = %for.cond975
  %val = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 2
  %512 = load i16, ptr %val, align 2
  %cmp1005 = icmp ult i16 %512, 16
  br i1 %cmp1005, label %do.body1008, label %if.else1024

do.body1008:                                      ; preds = %for.end
  %bits1009 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %513 = load i8, ptr %bits1009, align 1
  %514 = load i64, ptr %hold, align 8
  %sh_prom1011 = zext i8 %513 to i64
  %shr1012 = lshr i64 %514, %sh_prom1011
  store i64 %shr1012, ptr %hold, align 8
  %conv1014 = zext i8 %513 to i32
  %515 = load i32, ptr %bits, align 4
  %sub1015 = sub i32 %515, %conv1014
  store i32 %sub1015, ptr %bits, align 4
  %val1018 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 2
  %516 = load i16, ptr %val1018, align 2
  %517 = load ptr, ptr %state, align 8
  %have1020 = getelementptr inbounds %struct.inflate_state, ptr %517, i64 0, i32 27
  %518 = load i32, ptr %have1020, align 4
  %inc1021 = add i32 %518, 1
  store i32 %inc1021, ptr %have1020, align 4
  %idxprom1022 = zext i32 %518 to i64
  %arrayidx1023 = getelementptr inbounds %struct.inflate_state, ptr %517, i64 0, i32 29, i64 %idxprom1022
  store i16 %516, ptr %arrayidx1023, align 2
  br label %if.end1203

if.else1024:                                      ; preds = %for.end
  %val1025 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 2
  %519 = load i16, ptr %val1025, align 2
  %cmp1027 = icmp eq i16 %519, 16
  br i1 %cmp1027, label %while.cond1031, label %if.else1086

while.cond1031:                                   ; preds = %if.else1024, %if.end1042
  %520 = load i32, ptr %bits, align 4
  %bits1032 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %521 = load i8, ptr %bits1032, align 1
  %conv1033 = zext i8 %521 to i32
  %add1034 = add nuw nsw i32 %conv1033, 2
  %cmp1035 = icmp ult i32 %520, %add1034
  br i1 %cmp1035, label %do.body1038, label %do.body1055

do.body1038:                                      ; preds = %while.cond1031
  %522 = load i32, ptr %have, align 4
  %cmp1039 = icmp eq i32 %522, 0
  br i1 %cmp1039, label %do.body1875, label %if.end1042

if.end1042:                                       ; preds = %do.body1038
  %523 = load i32, ptr %have, align 4
  %dec1043 = add i32 %523, -1
  store i32 %dec1043, ptr %have, align 4
  %524 = load ptr, ptr %next, align 8
  %incdec.ptr1044 = getelementptr inbounds i8, ptr %524, i64 1
  store ptr %incdec.ptr1044, ptr %next, align 8
  %525 = load i8, ptr %524, align 1
  %conv1045 = zext i8 %525 to i64
  %526 = load i32, ptr %bits, align 4
  %sh_prom1046 = zext i32 %526 to i64
  %shl1047 = shl i64 %conv1045, %sh_prom1046
  %527 = load i64, ptr %hold, align 8
  %add1048 = add i64 %527, %shl1047
  store i64 %add1048, ptr %hold, align 8
  %add1049 = add i32 %526, 8
  store i32 %add1049, ptr %bits, align 4
  br label %while.cond1031, !llvm.loop !22

do.body1055:                                      ; preds = %while.cond1031
  %bits1056 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %528 = load i8, ptr %bits1056, align 1
  %529 = load i64, ptr %hold, align 8
  %sh_prom1058 = zext i8 %528 to i64
  %shr1059 = lshr i64 %529, %sh_prom1058
  store i64 %shr1059, ptr %hold, align 8
  %conv1061 = zext i8 %528 to i32
  %530 = load i32, ptr %bits, align 4
  %sub1062 = sub i32 %530, %conv1061
  store i32 %sub1062, ptr %bits, align 4
  %531 = load ptr, ptr %state, align 8
  %have1065 = getelementptr inbounds %struct.inflate_state, ptr %531, i64 0, i32 27
  %532 = load i32, ptr %have1065, align 4
  %cmp1066 = icmp eq i32 %532, 0
  br i1 %cmp1066, label %if.then1068, label %if.end1071

if.then1068:                                      ; preds = %do.body1055
  %533 = load ptr, ptr %strm.addr, align 8
  %msg1069 = getelementptr inbounds %struct.z_stream_s, ptr %533, i64 0, i32 6
  store ptr @.str.10, ptr %msg1069, align 8
  %534 = load ptr, ptr %state, align 8
  %mode1070 = getelementptr inbounds %struct.inflate_state, ptr %534, i64 0, i32 1
  store i32 16209, ptr %mode1070, align 8
  br label %while.end1204

if.end1071:                                       ; preds = %do.body1055
  %535 = load ptr, ptr %state, align 8
  %have1073 = getelementptr inbounds %struct.inflate_state, ptr %535, i64 0, i32 27
  %536 = load i32, ptr %have1073, align 4
  %sub1074 = add i32 %536, -1
  %idxprom1075 = zext i32 %sub1074 to i64
  %arrayidx1076 = getelementptr inbounds %struct.inflate_state, ptr %535, i64 0, i32 29, i64 %idxprom1075
  %537 = load i16, ptr %arrayidx1076, align 2
  %conv1077 = zext i16 %537 to i32
  store i32 %conv1077, ptr %len, align 4
  %538 = load i64, ptr %hold, align 8
  %conv1078 = trunc i64 %538 to i32
  %and1079 = and i32 %conv1078, 3
  %add1080 = add nuw nsw i32 %and1079, 3
  store i32 %add1080, ptr %copy, align 4
  %539 = load i64, ptr %hold, align 8
  %shr1082 = lshr i64 %539, 2
  store i64 %shr1082, ptr %hold, align 8
  %540 = load i32, ptr %bits, align 4
  %sub1083 = add i32 %540, -2
  store i32 %sub1083, ptr %bits, align 4
  br label %if.end1180

if.else1086:                                      ; preds = %if.else1024
  %val1087 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 2
  %541 = load i16, ptr %val1087, align 2
  %cmp1089 = icmp eq i16 %541, 17
  br i1 %cmp1089, label %while.cond1093, label %while.cond1137

while.cond1093:                                   ; preds = %if.else1086, %if.end1104
  %542 = load i32, ptr %bits, align 4
  %bits1094 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %543 = load i8, ptr %bits1094, align 1
  %conv1095 = zext i8 %543 to i32
  %add1096 = add nuw nsw i32 %conv1095, 3
  %cmp1097 = icmp ult i32 %542, %add1096
  br i1 %cmp1097, label %do.body1100, label %do.body1117

do.body1100:                                      ; preds = %while.cond1093
  %544 = load i32, ptr %have, align 4
  %cmp1101 = icmp eq i32 %544, 0
  br i1 %cmp1101, label %do.body1875, label %if.end1104

if.end1104:                                       ; preds = %do.body1100
  %545 = load i32, ptr %have, align 4
  %dec1105 = add i32 %545, -1
  store i32 %dec1105, ptr %have, align 4
  %546 = load ptr, ptr %next, align 8
  %incdec.ptr1106 = getelementptr inbounds i8, ptr %546, i64 1
  store ptr %incdec.ptr1106, ptr %next, align 8
  %547 = load i8, ptr %546, align 1
  %conv1107 = zext i8 %547 to i64
  %548 = load i32, ptr %bits, align 4
  %sh_prom1108 = zext i32 %548 to i64
  %shl1109 = shl i64 %conv1107, %sh_prom1108
  %549 = load i64, ptr %hold, align 8
  %add1110 = add i64 %549, %shl1109
  store i64 %add1110, ptr %hold, align 8
  %add1111 = add i32 %548, 8
  store i32 %add1111, ptr %bits, align 4
  br label %while.cond1093, !llvm.loop !23

do.body1117:                                      ; preds = %while.cond1093
  %bits1118 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %550 = load i8, ptr %bits1118, align 1
  %551 = load i64, ptr %hold, align 8
  %sh_prom1120 = zext i8 %550 to i64
  %shr1121 = lshr i64 %551, %sh_prom1120
  store i64 %shr1121, ptr %hold, align 8
  %conv1123 = zext i8 %550 to i32
  %552 = load i32, ptr %bits, align 4
  %sub1124 = sub i32 %552, %conv1123
  store i32 %sub1124, ptr %bits, align 4
  store i32 0, ptr %len, align 4
  %553 = load i64, ptr %hold, align 8
  %conv1127 = trunc i64 %553 to i32
  %and1128 = and i32 %conv1127, 7
  %add1129 = add nuw nsw i32 %and1128, 3
  store i32 %add1129, ptr %copy, align 4
  %554 = load i64, ptr %hold, align 8
  %shr1131 = lshr i64 %554, 3
  store i64 %shr1131, ptr %hold, align 8
  %555 = load i32, ptr %bits, align 4
  %sub1132 = add i32 %555, -3
  store i32 %sub1132, ptr %bits, align 4
  br label %if.end1180

while.cond1137:                                   ; preds = %if.else1086, %if.end1148
  %556 = load i32, ptr %bits, align 4
  %bits1138 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %557 = load i8, ptr %bits1138, align 1
  %conv1139 = zext i8 %557 to i32
  %add1140 = add nuw nsw i32 %conv1139, 7
  %cmp1141 = icmp ult i32 %556, %add1140
  br i1 %cmp1141, label %do.body1144, label %do.body1161

do.body1144:                                      ; preds = %while.cond1137
  %558 = load i32, ptr %have, align 4
  %cmp1145 = icmp eq i32 %558, 0
  br i1 %cmp1145, label %do.body1875, label %if.end1148

if.end1148:                                       ; preds = %do.body1144
  %559 = load i32, ptr %have, align 4
  %dec1149 = add i32 %559, -1
  store i32 %dec1149, ptr %have, align 4
  %560 = load ptr, ptr %next, align 8
  %incdec.ptr1150 = getelementptr inbounds i8, ptr %560, i64 1
  store ptr %incdec.ptr1150, ptr %next, align 8
  %561 = load i8, ptr %560, align 1
  %conv1151 = zext i8 %561 to i64
  %562 = load i32, ptr %bits, align 4
  %sh_prom1152 = zext i32 %562 to i64
  %shl1153 = shl i64 %conv1151, %sh_prom1152
  %563 = load i64, ptr %hold, align 8
  %add1154 = add i64 %563, %shl1153
  store i64 %add1154, ptr %hold, align 8
  %add1155 = add i32 %562, 8
  store i32 %add1155, ptr %bits, align 4
  br label %while.cond1137, !llvm.loop !24

do.body1161:                                      ; preds = %while.cond1137
  %bits1162 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %564 = load i8, ptr %bits1162, align 1
  %565 = load i64, ptr %hold, align 8
  %sh_prom1164 = zext i8 %564 to i64
  %shr1165 = lshr i64 %565, %sh_prom1164
  store i64 %shr1165, ptr %hold, align 8
  %conv1167 = zext i8 %564 to i32
  %566 = load i32, ptr %bits, align 4
  %sub1168 = sub i32 %566, %conv1167
  store i32 %sub1168, ptr %bits, align 4
  store i32 0, ptr %len, align 4
  %567 = load i64, ptr %hold, align 8
  %conv1171 = trunc i64 %567 to i32
  %and1172 = and i32 %conv1171, 127
  %add1173 = add nuw nsw i32 %and1172, 11
  store i32 %add1173, ptr %copy, align 4
  %568 = load i64, ptr %hold, align 8
  %shr1175 = lshr i64 %568, 7
  store i64 %shr1175, ptr %hold, align 8
  %569 = load i32, ptr %bits, align 4
  %sub1176 = add i32 %569, -7
  store i32 %sub1176, ptr %bits, align 4
  br label %if.end1180

if.end1180:                                       ; preds = %do.body1117, %do.body1161, %if.end1071
  %570 = load ptr, ptr %state, align 8
  %have1181 = getelementptr inbounds %struct.inflate_state, ptr %570, i64 0, i32 27
  %571 = load i32, ptr %have1181, align 4
  %572 = load i32, ptr %copy, align 4
  %add1182 = add i32 %571, %572
  %nlen1183 = getelementptr inbounds %struct.inflate_state, ptr %570, i64 0, i32 25
  %573 = load i32, ptr %nlen1183, align 4
  %574 = load ptr, ptr %state, align 8
  %ndist1184 = getelementptr inbounds %struct.inflate_state, ptr %574, i64 0, i32 26
  %575 = load i32, ptr %ndist1184, align 8
  %add1185 = add i32 %573, %575
  %cmp1186 = icmp ugt i32 %add1182, %add1185
  br i1 %cmp1186, label %if.then1188, label %while.cond1192

if.then1188:                                      ; preds = %if.end1180
  %576 = load ptr, ptr %strm.addr, align 8
  %msg1189 = getelementptr inbounds %struct.z_stream_s, ptr %576, i64 0, i32 6
  store ptr @.str.10, ptr %msg1189, align 8
  %577 = load ptr, ptr %state, align 8
  %mode1190 = getelementptr inbounds %struct.inflate_state, ptr %577, i64 0, i32 1
  store i32 16209, ptr %mode1190, align 8
  br label %while.end1204

while.cond1192:                                   ; preds = %if.end1180, %while.body1195
  %578 = load i32, ptr %copy, align 4
  %dec1193 = add i32 %578, -1
  store i32 %dec1193, ptr %copy, align 4
  %tobool1194.not = icmp eq i32 %578, 0
  br i1 %tobool1194.not, label %if.end1203, label %while.body1195

while.body1195:                                   ; preds = %while.cond1192
  %579 = load i32, ptr %len, align 4
  %conv1196 = trunc i32 %579 to i16
  %580 = load ptr, ptr %state, align 8
  %have1198 = getelementptr inbounds %struct.inflate_state, ptr %580, i64 0, i32 27
  %581 = load i32, ptr %have1198, align 4
  %inc1199 = add i32 %581, 1
  store i32 %inc1199, ptr %have1198, align 4
  %idxprom1200 = zext i32 %581 to i64
  %arrayidx1201 = getelementptr inbounds %struct.inflate_state, ptr %580, i64 0, i32 29, i64 %idxprom1200
  store i16 %conv1196, ptr %arrayidx1201, align 2
  br label %while.cond1192, !llvm.loop !25

if.end1203:                                       ; preds = %while.cond1192, %do.body1008
  br label %while.cond967, !llvm.loop !26

while.end1204:                                    ; preds = %if.then1188, %if.then1068, %while.cond967
  %582 = load ptr, ptr %state, align 8
  %mode1205 = getelementptr inbounds %struct.inflate_state, ptr %582, i64 0, i32 1
  %583 = load i32, ptr %mode1205, align 8
  %cmp1206 = icmp eq i32 %583, 16209
  br i1 %cmp1206, label %sw.epilog1874, label %if.end1209

if.end1209:                                       ; preds = %while.end1204
  %584 = load ptr, ptr %state, align 8
  %arrayidx1211 = getelementptr inbounds %struct.inflate_state, ptr %584, i64 0, i32 29, i64 256
  %585 = load i16, ptr %arrayidx1211, align 8
  %cmp1213 = icmp eq i16 %585, 0
  br i1 %cmp1213, label %if.then1215, label %if.end1218

if.then1215:                                      ; preds = %if.end1209
  %586 = load ptr, ptr %strm.addr, align 8
  %msg1216 = getelementptr inbounds %struct.z_stream_s, ptr %586, i64 0, i32 6
  store ptr @.str.11, ptr %msg1216, align 8
  %587 = load ptr, ptr %state, align 8
  %mode1217 = getelementptr inbounds %struct.inflate_state, ptr %587, i64 0, i32 1
  store i32 16209, ptr %mode1217, align 8
  br label %sw.epilog1874

if.end1218:                                       ; preds = %if.end1209
  %588 = load ptr, ptr %state, align 8
  %codes1219 = getelementptr inbounds %struct.inflate_state, ptr %588, i64 0, i32 31
  %next1221 = getelementptr inbounds %struct.inflate_state, ptr %588, i64 0, i32 28
  store ptr %codes1219, ptr %next1221, align 8
  %lencode1223 = getelementptr inbounds %struct.inflate_state, ptr %588, i64 0, i32 20
  store ptr %codes1219, ptr %lencode1223, align 8
  %lenbits1224 = getelementptr inbounds %struct.inflate_state, ptr %588, i64 0, i32 22
  store i32 9, ptr %lenbits1224, align 8
  %589 = load ptr, ptr %state, align 8
  %lens1225 = getelementptr inbounds %struct.inflate_state, ptr %589, i64 0, i32 29
  %nlen1227 = getelementptr inbounds %struct.inflate_state, ptr %589, i64 0, i32 25
  %590 = load i32, ptr %nlen1227, align 4
  %next1228 = getelementptr inbounds %struct.inflate_state, ptr %589, i64 0, i32 28
  %lenbits1229 = getelementptr inbounds %struct.inflate_state, ptr %589, i64 0, i32 22
  %work1230 = getelementptr inbounds %struct.inflate_state, ptr %589, i64 0, i32 30
  %call1232 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %lens1225, i32 noundef %590, ptr noundef nonnull %next1228, ptr noundef nonnull %lenbits1229, ptr noundef nonnull %work1230) #5
  store i32 %call1232, ptr %ret, align 4
  %tobool1233.not = icmp eq i32 %call1232, 0
  br i1 %tobool1233.not, label %if.end1237, label %if.then1234

if.then1234:                                      ; preds = %if.end1218
  %591 = load ptr, ptr %strm.addr, align 8
  %msg1235 = getelementptr inbounds %struct.z_stream_s, ptr %591, i64 0, i32 6
  store ptr @.str.12, ptr %msg1235, align 8
  %592 = load ptr, ptr %state, align 8
  %mode1236 = getelementptr inbounds %struct.inflate_state, ptr %592, i64 0, i32 1
  store i32 16209, ptr %mode1236, align 8
  br label %sw.epilog1874

if.end1237:                                       ; preds = %if.end1218
  %593 = load ptr, ptr %state, align 8
  %next1238 = getelementptr inbounds %struct.inflate_state, ptr %593, i64 0, i32 28
  %594 = load ptr, ptr %next1238, align 8
  %distcode1239 = getelementptr inbounds %struct.inflate_state, ptr %593, i64 0, i32 21
  store ptr %594, ptr %distcode1239, align 8
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %593, i64 0, i32 23
  store i32 6, ptr %distbits, align 4
  %595 = load ptr, ptr %state, align 8
  %lens1240 = getelementptr inbounds %struct.inflate_state, ptr %595, i64 0, i32 29
  %nlen1242 = getelementptr inbounds %struct.inflate_state, ptr %595, i64 0, i32 25
  %596 = load i32, ptr %nlen1242, align 4
  %idx.ext1243 = zext i32 %596 to i64
  %add.ptr1244 = getelementptr inbounds i16, ptr %lens1240, i64 %idx.ext1243
  %ndist1245 = getelementptr inbounds %struct.inflate_state, ptr %595, i64 0, i32 26
  %597 = load i32, ptr %ndist1245, align 8
  %598 = load ptr, ptr %state, align 8
  %next1246 = getelementptr inbounds %struct.inflate_state, ptr %598, i64 0, i32 28
  %distbits1247 = getelementptr inbounds %struct.inflate_state, ptr %598, i64 0, i32 23
  %work1248 = getelementptr inbounds %struct.inflate_state, ptr %598, i64 0, i32 30
  %call1250 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %add.ptr1244, i32 noundef %597, ptr noundef nonnull %next1246, ptr noundef nonnull %distbits1247, ptr noundef nonnull %work1248) #5
  store i32 %call1250, ptr %ret, align 4
  %tobool1251.not = icmp eq i32 %call1250, 0
  br i1 %tobool1251.not, label %if.end1255, label %if.then1252

if.then1252:                                      ; preds = %if.end1237
  %599 = load ptr, ptr %strm.addr, align 8
  %msg1253 = getelementptr inbounds %struct.z_stream_s, ptr %599, i64 0, i32 6
  store ptr @.str.13, ptr %msg1253, align 8
  %600 = load ptr, ptr %state, align 8
  %mode1254 = getelementptr inbounds %struct.inflate_state, ptr %600, i64 0, i32 1
  store i32 16209, ptr %mode1254, align 8
  br label %sw.epilog1874

if.end1255:                                       ; preds = %if.end1237
  %601 = load ptr, ptr %state, align 8
  %mode1256 = getelementptr inbounds %struct.inflate_state, ptr %601, i64 0, i32 1
  store i32 16199, ptr %mode1256, align 8
  %602 = load i32, ptr %flush.addr, align 4
  %cmp1257 = icmp eq i32 %602, 6
  br i1 %cmp1257, label %do.body1875, label %sw.bb1261

sw.bb1261:                                        ; preds = %if.end1255, %for.cond
  %603 = load ptr, ptr %state, align 8
  %mode1262 = getelementptr inbounds %struct.inflate_state, ptr %603, i64 0, i32 1
  store i32 16200, ptr %mode1262, align 8
  br label %sw.bb1263

sw.bb1263:                                        ; preds = %sw.bb1261, %for.cond
  %604 = load i32, ptr %have, align 4
  %cmp1264 = icmp ugt i32 %604, 5
  %605 = load i32, ptr %left, align 4
  %cmp1267 = icmp ugt i32 %605, 257
  %or.cond10 = select i1 %cmp1264, i1 %cmp1267, i1 false
  br i1 %or.cond10, label %do.body1270, label %if.end1293

do.body1270:                                      ; preds = %sw.bb1263
  %606 = load ptr, ptr %put, align 8
  %607 = load ptr, ptr %strm.addr, align 8
  %next_out1271 = getelementptr inbounds %struct.z_stream_s, ptr %607, i64 0, i32 3
  store ptr %606, ptr %next_out1271, align 8
  %608 = load i32, ptr %left, align 4
  %avail_out1272 = getelementptr inbounds %struct.z_stream_s, ptr %607, i64 0, i32 4
  store i32 %608, ptr %avail_out1272, align 8
  %609 = load ptr, ptr %next, align 8
  %610 = load ptr, ptr %strm.addr, align 8
  store ptr %609, ptr %610, align 8
  %611 = load i32, ptr %have, align 4
  %avail_in1274 = getelementptr inbounds %struct.z_stream_s, ptr %610, i64 0, i32 1
  store i32 %611, ptr %avail_in1274, align 8
  %612 = load i64, ptr %hold, align 8
  %613 = load ptr, ptr %state, align 8
  %hold1275 = getelementptr inbounds %struct.inflate_state, ptr %613, i64 0, i32 15
  store i64 %612, ptr %hold1275, align 8
  %614 = load i32, ptr %bits, align 4
  %bits1276 = getelementptr inbounds %struct.inflate_state, ptr %613, i64 0, i32 16
  store i32 %614, ptr %bits1276, align 8
  %615 = load ptr, ptr %strm.addr, align 8
  %616 = load i32, ptr %out, align 4
  call void @inflate_fast(ptr noundef %615, i32 noundef %616) #5
  %617 = load ptr, ptr %strm.addr, align 8
  %next_out1280 = getelementptr inbounds %struct.z_stream_s, ptr %617, i64 0, i32 3
  %618 = load ptr, ptr %next_out1280, align 8
  store ptr %618, ptr %put, align 8
  %avail_out1281 = getelementptr inbounds %struct.z_stream_s, ptr %617, i64 0, i32 4
  %619 = load i32, ptr %avail_out1281, align 8
  store i32 %619, ptr %left, align 4
  %620 = load ptr, ptr %strm.addr, align 8
  %621 = load ptr, ptr %620, align 8
  store ptr %621, ptr %next, align 8
  %avail_in1283 = getelementptr inbounds %struct.z_stream_s, ptr %620, i64 0, i32 1
  %622 = load i32, ptr %avail_in1283, align 8
  store i32 %622, ptr %have, align 4
  %623 = load ptr, ptr %state, align 8
  %hold1284 = getelementptr inbounds %struct.inflate_state, ptr %623, i64 0, i32 15
  %624 = load i64, ptr %hold1284, align 8
  store i64 %624, ptr %hold, align 8
  %bits1285 = getelementptr inbounds %struct.inflate_state, ptr %623, i64 0, i32 16
  %625 = load i32, ptr %bits1285, align 8
  store i32 %625, ptr %bits, align 4
  %626 = load ptr, ptr %state, align 8
  %mode1288 = getelementptr inbounds %struct.inflate_state, ptr %626, i64 0, i32 1
  %627 = load i32, ptr %mode1288, align 8
  %cmp1289 = icmp eq i32 %627, 16191
  br i1 %cmp1289, label %if.then1291, label %sw.epilog1874

if.then1291:                                      ; preds = %do.body1270
  %628 = load ptr, ptr %state, align 8
  %back = getelementptr inbounds %struct.inflate_state, ptr %628, i64 0, i32 33
  store i32 -1, ptr %back, align 4
  br label %sw.epilog1874

if.end1293:                                       ; preds = %sw.bb1263
  %629 = load ptr, ptr %state, align 8
  %back1294 = getelementptr inbounds %struct.inflate_state, ptr %629, i64 0, i32 33
  store i32 0, ptr %back1294, align 4
  br label %for.cond1295

for.cond1295:                                     ; preds = %if.end1314, %if.end1293
  %630 = load ptr, ptr %state, align 8
  %lencode1296 = getelementptr inbounds %struct.inflate_state, ptr %630, i64 0, i32 20
  %631 = load ptr, ptr %lencode1296, align 8
  %632 = load i64, ptr %hold, align 8
  %conv1297 = trunc i64 %632 to i32
  %lenbits1298 = getelementptr inbounds %struct.inflate_state, ptr %630, i64 0, i32 22
  %633 = load i32, ptr %lenbits1298, align 8
  %notmask4 = shl nsw i32 -1, %633
  %sub1300 = xor i32 %notmask4, -1
  %and1301 = and i32 %conv1297, %sub1300
  %idxprom1302 = zext i32 %and1301 to i64
  %arrayidx1303 = getelementptr inbounds %struct.code, ptr %631, i64 %idxprom1302
  %634 = load i32, ptr %arrayidx1303, align 2
  store i32 %634, ptr %here, align 4
  %bits1304 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %635 = load i8, ptr %bits1304, align 1
  %conv1305 = zext i8 %635 to i32
  %636 = load i32, ptr %bits, align 4
  %cmp1306.not = icmp ult i32 %636, %conv1305
  br i1 %cmp1306.not, label %do.body1310, label %for.end1324

do.body1310:                                      ; preds = %for.cond1295
  %637 = load i32, ptr %have, align 4
  %cmp1311 = icmp eq i32 %637, 0
  br i1 %cmp1311, label %do.body1875, label %if.end1314

if.end1314:                                       ; preds = %do.body1310
  %638 = load i32, ptr %have, align 4
  %dec1315 = add i32 %638, -1
  store i32 %dec1315, ptr %have, align 4
  %639 = load ptr, ptr %next, align 8
  %incdec.ptr1316 = getelementptr inbounds i8, ptr %639, i64 1
  store ptr %incdec.ptr1316, ptr %next, align 8
  %640 = load i8, ptr %639, align 1
  %conv1317 = zext i8 %640 to i64
  %641 = load i32, ptr %bits, align 4
  %sh_prom1318 = zext i32 %641 to i64
  %shl1319 = shl i64 %conv1317, %sh_prom1318
  %642 = load i64, ptr %hold, align 8
  %add1320 = add i64 %642, %shl1319
  store i64 %add1320, ptr %hold, align 8
  %add1321 = add i32 %641, 8
  store i32 %add1321, ptr %bits, align 4
  br label %for.cond1295

for.end1324:                                      ; preds = %for.cond1295
  %643 = load i8, ptr %here, align 4
  %tobool1326.not = icmp ne i8 %643, 0
  %644 = load i8, ptr %here, align 4
  %cmp1331 = icmp ult i8 %644, 16
  %or.cond11 = select i1 %tobool1326.not, i1 %cmp1331, i1 false
  br i1 %or.cond11, label %if.then1333, label %do.body1392

if.then1333:                                      ; preds = %for.end1324
  %645 = load i32, ptr %here, align 4
  store i32 %645, ptr %last, align 4
  br label %for.cond1334

for.cond1334:                                     ; preds = %if.end1366, %if.then1333
  %646 = load ptr, ptr %state, align 8
  %lencode1335 = getelementptr inbounds %struct.inflate_state, ptr %646, i64 0, i32 20
  %647 = load ptr, ptr %lencode1335, align 8
  %val1336 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 2
  %648 = load i16, ptr %val1336, align 2
  %conv1337 = zext i16 %648 to i32
  %649 = load i64, ptr %hold, align 8
  %conv1338 = trunc i64 %649 to i32
  %bits1339 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %650 = load i8, ptr %bits1339, align 1
  %conv1340 = zext i8 %650 to i32
  %651 = load i8, ptr %last, align 4
  %conv1342 = zext i8 %651 to i32
  %add1343 = add nuw nsw i32 %conv1340, %conv1342
  %notmask5 = shl nsw i32 -1, %add1343
  %sub1345 = xor i32 %notmask5, -1
  %and1346 = and i32 %conv1338, %sub1345
  %bits1347 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %652 = load i8, ptr %bits1347, align 1
  %conv1348 = zext i8 %652 to i32
  %shr1349 = lshr i32 %and1346, %conv1348
  %add1350 = add i32 %shr1349, %conv1337
  %idxprom1351 = zext i32 %add1350 to i64
  %arrayidx1352 = getelementptr inbounds %struct.code, ptr %647, i64 %idxprom1351
  %653 = load i32, ptr %arrayidx1352, align 2
  store i32 %653, ptr %here, align 4
  %bits1353 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %654 = load i8, ptr %bits1353, align 1
  %conv1354 = zext i8 %654 to i32
  %bits1355 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %655 = load i8, ptr %bits1355, align 1
  %conv1356 = zext i8 %655 to i32
  %add1357 = add nuw nsw i32 %conv1354, %conv1356
  %656 = load i32, ptr %bits, align 4
  %cmp1358.not = icmp ugt i32 %add1357, %656
  br i1 %cmp1358.not, label %do.body1362, label %do.body1377

do.body1362:                                      ; preds = %for.cond1334
  %657 = load i32, ptr %have, align 4
  %cmp1363 = icmp eq i32 %657, 0
  br i1 %cmp1363, label %do.body1875, label %if.end1366

if.end1366:                                       ; preds = %do.body1362
  %658 = load i32, ptr %have, align 4
  %dec1367 = add i32 %658, -1
  store i32 %dec1367, ptr %have, align 4
  %659 = load ptr, ptr %next, align 8
  %incdec.ptr1368 = getelementptr inbounds i8, ptr %659, i64 1
  store ptr %incdec.ptr1368, ptr %next, align 8
  %660 = load i8, ptr %659, align 1
  %conv1369 = zext i8 %660 to i64
  %661 = load i32, ptr %bits, align 4
  %sh_prom1370 = zext i32 %661 to i64
  %shl1371 = shl i64 %conv1369, %sh_prom1370
  %662 = load i64, ptr %hold, align 8
  %add1372 = add i64 %662, %shl1371
  store i64 %add1372, ptr %hold, align 8
  %add1373 = add i32 %661, 8
  store i32 %add1373, ptr %bits, align 4
  br label %for.cond1334

do.body1377:                                      ; preds = %for.cond1334
  %bits1378 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %663 = load i8, ptr %bits1378, align 1
  %664 = load i64, ptr %hold, align 8
  %sh_prom1380 = zext i8 %663 to i64
  %shr1381 = lshr i64 %664, %sh_prom1380
  store i64 %shr1381, ptr %hold, align 8
  %conv1383 = zext i8 %663 to i32
  %665 = load i32, ptr %bits, align 4
  %sub1384 = sub i32 %665, %conv1383
  store i32 %sub1384, ptr %bits, align 4
  %bits1387 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %666 = load i8, ptr %bits1387, align 1
  %conv1388 = zext i8 %666 to i32
  %667 = load ptr, ptr %state, align 8
  %back1389 = getelementptr inbounds %struct.inflate_state, ptr %667, i64 0, i32 33
  %668 = load i32, ptr %back1389, align 4
  %add1390 = add nsw i32 %668, %conv1388
  store i32 %add1390, ptr %back1389, align 4
  br label %do.body1392

do.body1392:                                      ; preds = %for.end1324, %do.body1377
  %bits1393 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %669 = load i8, ptr %bits1393, align 1
  %670 = load i64, ptr %hold, align 8
  %sh_prom1395 = zext i8 %669 to i64
  %shr1396 = lshr i64 %670, %sh_prom1395
  store i64 %shr1396, ptr %hold, align 8
  %conv1398 = zext i8 %669 to i32
  %671 = load i32, ptr %bits, align 4
  %sub1399 = sub i32 %671, %conv1398
  store i32 %sub1399, ptr %bits, align 4
  %bits1402 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %672 = load i8, ptr %bits1402, align 1
  %conv1403 = zext i8 %672 to i32
  %673 = load ptr, ptr %state, align 8
  %back1404 = getelementptr inbounds %struct.inflate_state, ptr %673, i64 0, i32 33
  %674 = load i32, ptr %back1404, align 4
  %add1405 = add nsw i32 %674, %conv1403
  store i32 %add1405, ptr %back1404, align 4
  %val1406 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 2
  %675 = load i16, ptr %val1406, align 2
  %conv1407 = zext i16 %675 to i32
  %676 = load ptr, ptr %state, align 8
  %length1408 = getelementptr inbounds %struct.inflate_state, ptr %676, i64 0, i32 17
  store i32 %conv1407, ptr %length1408, align 4
  %677 = load i8, ptr %here, align 4
  %cmp1411 = icmp eq i8 %677, 0
  br i1 %cmp1411, label %if.then1413, label %if.end1415

if.then1413:                                      ; preds = %do.body1392
  %678 = load ptr, ptr %state, align 8
  %mode1414 = getelementptr inbounds %struct.inflate_state, ptr %678, i64 0, i32 1
  store i32 16205, ptr %mode1414, align 8
  br label %sw.epilog1874

if.end1415:                                       ; preds = %do.body1392
  %679 = load i8, ptr %here, align 4
  %680 = and i8 %679, 32
  %tobool1419.not = icmp eq i8 %680, 0
  br i1 %tobool1419.not, label %if.end1423, label %if.then1420

if.then1420:                                      ; preds = %if.end1415
  %681 = load ptr, ptr %state, align 8
  %back1421 = getelementptr inbounds %struct.inflate_state, ptr %681, i64 0, i32 33
  store i32 -1, ptr %back1421, align 4
  %mode1422 = getelementptr inbounds %struct.inflate_state, ptr %681, i64 0, i32 1
  store i32 16191, ptr %mode1422, align 8
  br label %sw.epilog1874

if.end1423:                                       ; preds = %if.end1415
  %682 = load i8, ptr %here, align 4
  %683 = and i8 %682, 64
  %tobool1427.not = icmp eq i8 %683, 0
  br i1 %tobool1427.not, label %if.end1431, label %if.then1428

if.then1428:                                      ; preds = %if.end1423
  %684 = load ptr, ptr %strm.addr, align 8
  %msg1429 = getelementptr inbounds %struct.z_stream_s, ptr %684, i64 0, i32 6
  store ptr @.str.14, ptr %msg1429, align 8
  %685 = load ptr, ptr %state, align 8
  %mode1430 = getelementptr inbounds %struct.inflate_state, ptr %685, i64 0, i32 1
  store i32 16209, ptr %mode1430, align 8
  br label %sw.epilog1874

if.end1431:                                       ; preds = %if.end1423
  %686 = load i8, ptr %here, align 4
  %687 = and i8 %686, 15
  %and1434 = zext i8 %687 to i32
  %688 = load ptr, ptr %state, align 8
  %extra1435 = getelementptr inbounds %struct.inflate_state, ptr %688, i64 0, i32 19
  store i32 %and1434, ptr %extra1435, align 4
  %mode1436 = getelementptr inbounds %struct.inflate_state, ptr %688, i64 0, i32 1
  store i32 16201, ptr %mode1436, align 8
  br label %sw.bb1437

sw.bb1437:                                        ; preds = %if.end1431, %for.cond
  %689 = load ptr, ptr %state, align 8
  %extra1438 = getelementptr inbounds %struct.inflate_state, ptr %689, i64 0, i32 19
  %690 = load i32, ptr %extra1438, align 4
  %tobool1439.not = icmp eq i32 %690, 0
  br i1 %tobool1439.not, label %if.end1482, label %while.cond1442

while.cond1442:                                   ; preds = %sw.bb1437, %if.end1451
  %691 = load i32, ptr %bits, align 4
  %692 = load ptr, ptr %state, align 8
  %extra1443 = getelementptr inbounds %struct.inflate_state, ptr %692, i64 0, i32 19
  %693 = load i32, ptr %extra1443, align 4
  %cmp1444 = icmp ult i32 %691, %693
  br i1 %cmp1444, label %do.body1447, label %do.end1463

do.body1447:                                      ; preds = %while.cond1442
  %694 = load i32, ptr %have, align 4
  %cmp1448 = icmp eq i32 %694, 0
  br i1 %cmp1448, label %do.body1875, label %if.end1451

if.end1451:                                       ; preds = %do.body1447
  %695 = load i32, ptr %have, align 4
  %dec1452 = add i32 %695, -1
  store i32 %dec1452, ptr %have, align 4
  %696 = load ptr, ptr %next, align 8
  %incdec.ptr1453 = getelementptr inbounds i8, ptr %696, i64 1
  store ptr %incdec.ptr1453, ptr %next, align 8
  %697 = load i8, ptr %696, align 1
  %conv1454 = zext i8 %697 to i64
  %698 = load i32, ptr %bits, align 4
  %sh_prom1455 = zext i32 %698 to i64
  %shl1456 = shl i64 %conv1454, %sh_prom1455
  %699 = load i64, ptr %hold, align 8
  %add1457 = add i64 %699, %shl1456
  store i64 %add1457, ptr %hold, align 8
  %add1458 = add i32 %698, 8
  store i32 %add1458, ptr %bits, align 4
  br label %while.cond1442, !llvm.loop !27

do.end1463:                                       ; preds = %while.cond1442
  %700 = load i64, ptr %hold, align 8
  %conv1464 = trunc i64 %700 to i32
  %701 = load ptr, ptr %state, align 8
  %extra1465 = getelementptr inbounds %struct.inflate_state, ptr %701, i64 0, i32 19
  %702 = load i32, ptr %extra1465, align 4
  %notmask3 = shl nsw i32 -1, %702
  %sub1467 = xor i32 %notmask3, -1
  %and1468 = and i32 %conv1464, %sub1467
  %length1469 = getelementptr inbounds %struct.inflate_state, ptr %701, i64 0, i32 17
  %703 = load i32, ptr %length1469, align 4
  %add1470 = add i32 %703, %and1468
  store i32 %add1470, ptr %length1469, align 4
  %704 = load ptr, ptr %state, align 8
  %extra1472 = getelementptr inbounds %struct.inflate_state, ptr %704, i64 0, i32 19
  %705 = load i32, ptr %extra1472, align 4
  %706 = load i64, ptr %hold, align 8
  %sh_prom1473 = zext i32 %705 to i64
  %shr1474 = lshr i64 %706, %sh_prom1473
  store i64 %shr1474, ptr %hold, align 8
  %707 = load ptr, ptr %state, align 8
  %extra1475 = getelementptr inbounds %struct.inflate_state, ptr %707, i64 0, i32 19
  %708 = load i32, ptr %extra1475, align 4
  %709 = load i32, ptr %bits, align 4
  %sub1476 = sub i32 %709, %708
  store i32 %sub1476, ptr %bits, align 4
  %710 = load ptr, ptr %state, align 8
  %extra1479 = getelementptr inbounds %struct.inflate_state, ptr %710, i64 0, i32 19
  %711 = load i32, ptr %extra1479, align 4
  %back1480 = getelementptr inbounds %struct.inflate_state, ptr %710, i64 0, i32 33
  %712 = load i32, ptr %back1480, align 4
  %add1481 = add i32 %712, %711
  store i32 %add1481, ptr %back1480, align 4
  br label %if.end1482

if.end1482:                                       ; preds = %do.end1463, %sw.bb1437
  %713 = load ptr, ptr %state, align 8
  %length1483 = getelementptr inbounds %struct.inflate_state, ptr %713, i64 0, i32 17
  %714 = load i32, ptr %length1483, align 4
  %was = getelementptr inbounds %struct.inflate_state, ptr %713, i64 0, i32 34
  store i32 %714, ptr %was, align 8
  %mode1484 = getelementptr inbounds %struct.inflate_state, ptr %713, i64 0, i32 1
  store i32 16202, ptr %mode1484, align 8
  br label %sw.bb1485

sw.bb1485:                                        ; preds = %if.end1482, %for.cond
  br label %for.cond1486

for.cond1486:                                     ; preds = %if.end1505, %sw.bb1485
  %715 = load ptr, ptr %state, align 8
  %distcode1487 = getelementptr inbounds %struct.inflate_state, ptr %715, i64 0, i32 21
  %716 = load ptr, ptr %distcode1487, align 8
  %717 = load i64, ptr %hold, align 8
  %conv1488 = trunc i64 %717 to i32
  %distbits1489 = getelementptr inbounds %struct.inflate_state, ptr %715, i64 0, i32 23
  %718 = load i32, ptr %distbits1489, align 4
  %notmask1 = shl nsw i32 -1, %718
  %sub1491 = xor i32 %notmask1, -1
  %and1492 = and i32 %conv1488, %sub1491
  %idxprom1493 = zext i32 %and1492 to i64
  %arrayidx1494 = getelementptr inbounds %struct.code, ptr %716, i64 %idxprom1493
  %719 = load i32, ptr %arrayidx1494, align 2
  store i32 %719, ptr %here, align 4
  %bits1495 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %720 = load i8, ptr %bits1495, align 1
  %conv1496 = zext i8 %720 to i32
  %721 = load i32, ptr %bits, align 4
  %cmp1497.not = icmp ult i32 %721, %conv1496
  br i1 %cmp1497.not, label %do.body1501, label %for.end1515

do.body1501:                                      ; preds = %for.cond1486
  %722 = load i32, ptr %have, align 4
  %cmp1502 = icmp eq i32 %722, 0
  br i1 %cmp1502, label %do.body1875, label %if.end1505

if.end1505:                                       ; preds = %do.body1501
  %723 = load i32, ptr %have, align 4
  %dec1506 = add i32 %723, -1
  store i32 %dec1506, ptr %have, align 4
  %724 = load ptr, ptr %next, align 8
  %incdec.ptr1507 = getelementptr inbounds i8, ptr %724, i64 1
  store ptr %incdec.ptr1507, ptr %next, align 8
  %725 = load i8, ptr %724, align 1
  %conv1508 = zext i8 %725 to i64
  %726 = load i32, ptr %bits, align 4
  %sh_prom1509 = zext i32 %726 to i64
  %shl1510 = shl i64 %conv1508, %sh_prom1509
  %727 = load i64, ptr %hold, align 8
  %add1511 = add i64 %727, %shl1510
  store i64 %add1511, ptr %hold, align 8
  %add1512 = add i32 %726, 8
  store i32 %add1512, ptr %bits, align 4
  br label %for.cond1486

for.end1515:                                      ; preds = %for.cond1486
  %728 = load i8, ptr %here, align 4
  %cmp1519 = icmp ult i8 %728, 16
  br i1 %cmp1519, label %if.then1521, label %do.body1580

if.then1521:                                      ; preds = %for.end1515
  %729 = load i32, ptr %here, align 4
  store i32 %729, ptr %last, align 4
  br label %for.cond1522

for.cond1522:                                     ; preds = %if.end1554, %if.then1521
  %730 = load ptr, ptr %state, align 8
  %distcode1523 = getelementptr inbounds %struct.inflate_state, ptr %730, i64 0, i32 21
  %731 = load ptr, ptr %distcode1523, align 8
  %val1524 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 2
  %732 = load i16, ptr %val1524, align 2
  %conv1525 = zext i16 %732 to i32
  %733 = load i64, ptr %hold, align 8
  %conv1526 = trunc i64 %733 to i32
  %bits1527 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %734 = load i8, ptr %bits1527, align 1
  %conv1528 = zext i8 %734 to i32
  %735 = load i8, ptr %last, align 4
  %conv1530 = zext i8 %735 to i32
  %add1531 = add nuw nsw i32 %conv1528, %conv1530
  %notmask2 = shl nsw i32 -1, %add1531
  %sub1533 = xor i32 %notmask2, -1
  %and1534 = and i32 %conv1526, %sub1533
  %bits1535 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %736 = load i8, ptr %bits1535, align 1
  %conv1536 = zext i8 %736 to i32
  %shr1537 = lshr i32 %and1534, %conv1536
  %add1538 = add i32 %shr1537, %conv1525
  %idxprom1539 = zext i32 %add1538 to i64
  %arrayidx1540 = getelementptr inbounds %struct.code, ptr %731, i64 %idxprom1539
  %737 = load i32, ptr %arrayidx1540, align 2
  store i32 %737, ptr %here, align 4
  %bits1541 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %738 = load i8, ptr %bits1541, align 1
  %conv1542 = zext i8 %738 to i32
  %bits1543 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %739 = load i8, ptr %bits1543, align 1
  %conv1544 = zext i8 %739 to i32
  %add1545 = add nuw nsw i32 %conv1542, %conv1544
  %740 = load i32, ptr %bits, align 4
  %cmp1546.not = icmp ugt i32 %add1545, %740
  br i1 %cmp1546.not, label %do.body1550, label %do.body1565

do.body1550:                                      ; preds = %for.cond1522
  %741 = load i32, ptr %have, align 4
  %cmp1551 = icmp eq i32 %741, 0
  br i1 %cmp1551, label %do.body1875, label %if.end1554

if.end1554:                                       ; preds = %do.body1550
  %742 = load i32, ptr %have, align 4
  %dec1555 = add i32 %742, -1
  store i32 %dec1555, ptr %have, align 4
  %743 = load ptr, ptr %next, align 8
  %incdec.ptr1556 = getelementptr inbounds i8, ptr %743, i64 1
  store ptr %incdec.ptr1556, ptr %next, align 8
  %744 = load i8, ptr %743, align 1
  %conv1557 = zext i8 %744 to i64
  %745 = load i32, ptr %bits, align 4
  %sh_prom1558 = zext i32 %745 to i64
  %shl1559 = shl i64 %conv1557, %sh_prom1558
  %746 = load i64, ptr %hold, align 8
  %add1560 = add i64 %746, %shl1559
  store i64 %add1560, ptr %hold, align 8
  %add1561 = add i32 %745, 8
  store i32 %add1561, ptr %bits, align 4
  br label %for.cond1522

do.body1565:                                      ; preds = %for.cond1522
  %bits1566 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %747 = load i8, ptr %bits1566, align 1
  %748 = load i64, ptr %hold, align 8
  %sh_prom1568 = zext i8 %747 to i64
  %shr1569 = lshr i64 %748, %sh_prom1568
  store i64 %shr1569, ptr %hold, align 8
  %conv1571 = zext i8 %747 to i32
  %749 = load i32, ptr %bits, align 4
  %sub1572 = sub i32 %749, %conv1571
  store i32 %sub1572, ptr %bits, align 4
  %bits1575 = getelementptr inbounds %struct.code, ptr %last, i64 0, i32 1
  %750 = load i8, ptr %bits1575, align 1
  %conv1576 = zext i8 %750 to i32
  %751 = load ptr, ptr %state, align 8
  %back1577 = getelementptr inbounds %struct.inflate_state, ptr %751, i64 0, i32 33
  %752 = load i32, ptr %back1577, align 4
  %add1578 = add nsw i32 %752, %conv1576
  store i32 %add1578, ptr %back1577, align 4
  br label %do.body1580

do.body1580:                                      ; preds = %for.end1515, %do.body1565
  %bits1581 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %753 = load i8, ptr %bits1581, align 1
  %754 = load i64, ptr %hold, align 8
  %sh_prom1583 = zext i8 %753 to i64
  %shr1584 = lshr i64 %754, %sh_prom1583
  store i64 %shr1584, ptr %hold, align 8
  %conv1586 = zext i8 %753 to i32
  %755 = load i32, ptr %bits, align 4
  %sub1587 = sub i32 %755, %conv1586
  store i32 %sub1587, ptr %bits, align 4
  %bits1590 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 1
  %756 = load i8, ptr %bits1590, align 1
  %conv1591 = zext i8 %756 to i32
  %757 = load ptr, ptr %state, align 8
  %back1592 = getelementptr inbounds %struct.inflate_state, ptr %757, i64 0, i32 33
  %758 = load i32, ptr %back1592, align 4
  %add1593 = add nsw i32 %758, %conv1591
  store i32 %add1593, ptr %back1592, align 4
  %759 = load i8, ptr %here, align 4
  %760 = and i8 %759, 64
  %tobool1597.not = icmp eq i8 %760, 0
  br i1 %tobool1597.not, label %if.end1601, label %if.then1598

if.then1598:                                      ; preds = %do.body1580
  %761 = load ptr, ptr %strm.addr, align 8
  %msg1599 = getelementptr inbounds %struct.z_stream_s, ptr %761, i64 0, i32 6
  store ptr @.str.15, ptr %msg1599, align 8
  %762 = load ptr, ptr %state, align 8
  %mode1600 = getelementptr inbounds %struct.inflate_state, ptr %762, i64 0, i32 1
  store i32 16209, ptr %mode1600, align 8
  br label %sw.epilog1874

if.end1601:                                       ; preds = %do.body1580
  %val1602 = getelementptr inbounds %struct.code, ptr %here, i64 0, i32 2
  %763 = load i16, ptr %val1602, align 2
  %conv1603 = zext i16 %763 to i32
  %764 = load ptr, ptr %state, align 8
  %offset = getelementptr inbounds %struct.inflate_state, ptr %764, i64 0, i32 18
  store i32 %conv1603, ptr %offset, align 8
  %765 = load i8, ptr %here, align 4
  %766 = and i8 %765, 15
  %and1606 = zext i8 %766 to i32
  %extra1607 = getelementptr inbounds %struct.inflate_state, ptr %764, i64 0, i32 19
  store i32 %and1606, ptr %extra1607, align 4
  %767 = load ptr, ptr %state, align 8
  %mode1608 = getelementptr inbounds %struct.inflate_state, ptr %767, i64 0, i32 1
  store i32 16203, ptr %mode1608, align 8
  br label %sw.bb1609

sw.bb1609:                                        ; preds = %if.end1601, %for.cond
  %768 = load ptr, ptr %state, align 8
  %extra1610 = getelementptr inbounds %struct.inflate_state, ptr %768, i64 0, i32 19
  %769 = load i32, ptr %extra1610, align 4
  %tobool1611.not = icmp eq i32 %769, 0
  br i1 %tobool1611.not, label %if.end1654, label %while.cond1614

while.cond1614:                                   ; preds = %sw.bb1609, %if.end1623
  %770 = load i32, ptr %bits, align 4
  %771 = load ptr, ptr %state, align 8
  %extra1615 = getelementptr inbounds %struct.inflate_state, ptr %771, i64 0, i32 19
  %772 = load i32, ptr %extra1615, align 4
  %cmp1616 = icmp ult i32 %770, %772
  br i1 %cmp1616, label %do.body1619, label %do.end1635

do.body1619:                                      ; preds = %while.cond1614
  %773 = load i32, ptr %have, align 4
  %cmp1620 = icmp eq i32 %773, 0
  br i1 %cmp1620, label %do.body1875, label %if.end1623

if.end1623:                                       ; preds = %do.body1619
  %774 = load i32, ptr %have, align 4
  %dec1624 = add i32 %774, -1
  store i32 %dec1624, ptr %have, align 4
  %775 = load ptr, ptr %next, align 8
  %incdec.ptr1625 = getelementptr inbounds i8, ptr %775, i64 1
  store ptr %incdec.ptr1625, ptr %next, align 8
  %776 = load i8, ptr %775, align 1
  %conv1626 = zext i8 %776 to i64
  %777 = load i32, ptr %bits, align 4
  %sh_prom1627 = zext i32 %777 to i64
  %shl1628 = shl i64 %conv1626, %sh_prom1627
  %778 = load i64, ptr %hold, align 8
  %add1629 = add i64 %778, %shl1628
  store i64 %add1629, ptr %hold, align 8
  %add1630 = add i32 %777, 8
  store i32 %add1630, ptr %bits, align 4
  br label %while.cond1614, !llvm.loop !28

do.end1635:                                       ; preds = %while.cond1614
  %779 = load i64, ptr %hold, align 8
  %conv1636 = trunc i64 %779 to i32
  %780 = load ptr, ptr %state, align 8
  %extra1637 = getelementptr inbounds %struct.inflate_state, ptr %780, i64 0, i32 19
  %781 = load i32, ptr %extra1637, align 4
  %notmask = shl nsw i32 -1, %781
  %sub1639 = xor i32 %notmask, -1
  %and1640 = and i32 %conv1636, %sub1639
  %offset1641 = getelementptr inbounds %struct.inflate_state, ptr %780, i64 0, i32 18
  %782 = load i32, ptr %offset1641, align 8
  %add1642 = add i32 %782, %and1640
  store i32 %add1642, ptr %offset1641, align 8
  %783 = load ptr, ptr %state, align 8
  %extra1644 = getelementptr inbounds %struct.inflate_state, ptr %783, i64 0, i32 19
  %784 = load i32, ptr %extra1644, align 4
  %785 = load i64, ptr %hold, align 8
  %sh_prom1645 = zext i32 %784 to i64
  %shr1646 = lshr i64 %785, %sh_prom1645
  store i64 %shr1646, ptr %hold, align 8
  %786 = load ptr, ptr %state, align 8
  %extra1647 = getelementptr inbounds %struct.inflate_state, ptr %786, i64 0, i32 19
  %787 = load i32, ptr %extra1647, align 4
  %788 = load i32, ptr %bits, align 4
  %sub1648 = sub i32 %788, %787
  store i32 %sub1648, ptr %bits, align 4
  %789 = load ptr, ptr %state, align 8
  %extra1651 = getelementptr inbounds %struct.inflate_state, ptr %789, i64 0, i32 19
  %790 = load i32, ptr %extra1651, align 4
  %back1652 = getelementptr inbounds %struct.inflate_state, ptr %789, i64 0, i32 33
  %791 = load i32, ptr %back1652, align 4
  %add1653 = add i32 %791, %790
  store i32 %add1653, ptr %back1652, align 4
  br label %if.end1654

if.end1654:                                       ; preds = %do.end1635, %sw.bb1609
  %792 = load ptr, ptr %state, align 8
  %mode1655 = getelementptr inbounds %struct.inflate_state, ptr %792, i64 0, i32 1
  store i32 16204, ptr %mode1655, align 8
  br label %sw.bb1656

sw.bb1656:                                        ; preds = %if.end1654, %for.cond
  %793 = load i32, ptr %left, align 4
  %cmp1657 = icmp eq i32 %793, 0
  br i1 %cmp1657, label %do.body1875, label %if.end1660

if.end1660:                                       ; preds = %sw.bb1656
  %794 = load i32, ptr %out, align 4
  %795 = load i32, ptr %left, align 4
  %sub1661 = sub i32 %794, %795
  store i32 %sub1661, ptr %copy, align 4
  %796 = load ptr, ptr %state, align 8
  %offset1662 = getelementptr inbounds %struct.inflate_state, ptr %796, i64 0, i32 18
  %797 = load i32, ptr %offset1662, align 8
  %cmp1663 = icmp ugt i32 %797, %sub1661
  br i1 %cmp1663, label %if.then1665, label %if.else1698

if.then1665:                                      ; preds = %if.end1660
  %798 = load ptr, ptr %state, align 8
  %offset1666 = getelementptr inbounds %struct.inflate_state, ptr %798, i64 0, i32 18
  %799 = load i32, ptr %offset1666, align 8
  %800 = load i32, ptr %copy, align 4
  %sub1667 = sub i32 %799, %800
  store i32 %sub1667, ptr %copy, align 4
  %whave = getelementptr inbounds %struct.inflate_state, ptr %798, i64 0, i32 12
  %801 = load i32, ptr %whave, align 8
  %cmp1668 = icmp ugt i32 %sub1667, %801
  br i1 %cmp1668, label %if.then1670, label %if.end1676

if.then1670:                                      ; preds = %if.then1665
  %802 = load ptr, ptr %state, align 8
  %sane = getelementptr inbounds %struct.inflate_state, ptr %802, i64 0, i32 32
  %803 = load i32, ptr %sane, align 8
  %tobool1671.not = icmp eq i32 %803, 0
  br i1 %tobool1671.not, label %if.end1676, label %if.then1672

if.then1672:                                      ; preds = %if.then1670
  %804 = load ptr, ptr %strm.addr, align 8
  %msg1673 = getelementptr inbounds %struct.z_stream_s, ptr %804, i64 0, i32 6
  store ptr @.str.16, ptr %msg1673, align 8
  %805 = load ptr, ptr %state, align 8
  %mode1674 = getelementptr inbounds %struct.inflate_state, ptr %805, i64 0, i32 1
  store i32 16209, ptr %mode1674, align 8
  br label %sw.epilog1874

if.end1676:                                       ; preds = %if.then1670, %if.then1665
  %806 = load i32, ptr %copy, align 4
  %807 = load ptr, ptr %state, align 8
  %wnext = getelementptr inbounds %struct.inflate_state, ptr %807, i64 0, i32 13
  %808 = load i32, ptr %wnext, align 4
  %cmp1677 = icmp ugt i32 %806, %808
  br i1 %cmp1677, label %if.then1679, label %if.else1685

if.then1679:                                      ; preds = %if.end1676
  %809 = load ptr, ptr %state, align 8
  %wnext1680 = getelementptr inbounds %struct.inflate_state, ptr %809, i64 0, i32 13
  %810 = load i32, ptr %wnext1680, align 4
  %811 = load i32, ptr %copy, align 4
  %sub1681 = sub i32 %811, %810
  store i32 %sub1681, ptr %copy, align 4
  %window = getelementptr inbounds %struct.inflate_state, ptr %809, i64 0, i32 14
  %812 = load ptr, ptr %window, align 8
  %813 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %813, i64 0, i32 11
  %814 = load i32, ptr %wsize, align 4
  %sub1682 = sub i32 %814, %sub1681
  %idx.ext1683 = zext i32 %sub1682 to i64
  %add.ptr1684 = getelementptr inbounds i8, ptr %812, i64 %idx.ext1683
  br label %if.end1691

if.else1685:                                      ; preds = %if.end1676
  %815 = load ptr, ptr %state, align 8
  %window1686 = getelementptr inbounds %struct.inflate_state, ptr %815, i64 0, i32 14
  %816 = load ptr, ptr %window1686, align 8
  %wnext1687 = getelementptr inbounds %struct.inflate_state, ptr %815, i64 0, i32 13
  %817 = load i32, ptr %wnext1687, align 4
  %818 = load i32, ptr %copy, align 4
  %sub1688 = sub i32 %817, %818
  %idx.ext1689 = zext i32 %sub1688 to i64
  %add.ptr1690 = getelementptr inbounds i8, ptr %816, i64 %idx.ext1689
  br label %if.end1691

if.end1691:                                       ; preds = %if.else1685, %if.then1679
  %storemerge = phi ptr [ %add.ptr1690, %if.else1685 ], [ %add.ptr1684, %if.then1679 ]
  store ptr %storemerge, ptr %from, align 8
  %819 = load i32, ptr %copy, align 4
  %820 = load ptr, ptr %state, align 8
  %length1692 = getelementptr inbounds %struct.inflate_state, ptr %820, i64 0, i32 17
  %821 = load i32, ptr %length1692, align 4
  %cmp1693 = icmp ugt i32 %819, %821
  br i1 %cmp1693, label %if.then1695, label %if.end1703

if.then1695:                                      ; preds = %if.end1691
  %822 = load ptr, ptr %state, align 8
  %length1696 = getelementptr inbounds %struct.inflate_state, ptr %822, i64 0, i32 17
  %823 = load i32, ptr %length1696, align 4
  store i32 %823, ptr %copy, align 4
  br label %if.end1703

if.else1698:                                      ; preds = %if.end1660
  %824 = load ptr, ptr %put, align 8
  %825 = load ptr, ptr %state, align 8
  %offset1699 = getelementptr inbounds %struct.inflate_state, ptr %825, i64 0, i32 18
  %826 = load i32, ptr %offset1699, align 8
  %idx.ext1700 = zext i32 %826 to i64
  %idx.neg = sub nsw i64 0, %idx.ext1700
  %add.ptr1701 = getelementptr inbounds i8, ptr %824, i64 %idx.neg
  store ptr %add.ptr1701, ptr %from, align 8
  %827 = load ptr, ptr %state, align 8
  %length1702 = getelementptr inbounds %struct.inflate_state, ptr %827, i64 0, i32 17
  %828 = load i32, ptr %length1702, align 4
  store i32 %828, ptr %copy, align 4
  br label %if.end1703

if.end1703:                                       ; preds = %if.end1691, %if.then1695, %if.else1698
  %829 = load i32, ptr %copy, align 4
  %830 = load i32, ptr %left, align 4
  %cmp1704 = icmp ugt i32 %829, %830
  br i1 %cmp1704, label %if.then1706, label %if.end1707

if.then1706:                                      ; preds = %if.end1703
  %831 = load i32, ptr %left, align 4
  store i32 %831, ptr %copy, align 4
  br label %if.end1707

if.end1707:                                       ; preds = %if.then1706, %if.end1703
  %832 = load i32, ptr %copy, align 4
  %833 = load i32, ptr %left, align 4
  %sub1708 = sub i32 %833, %832
  store i32 %sub1708, ptr %left, align 4
  %834 = load ptr, ptr %state, align 8
  %length1709 = getelementptr inbounds %struct.inflate_state, ptr %834, i64 0, i32 17
  %835 = load i32, ptr %length1709, align 4
  %sub1710 = sub i32 %835, %832
  store i32 %sub1710, ptr %length1709, align 4
  br label %do.body1711

do.body1711:                                      ; preds = %do.body1711, %if.end1707
  %836 = load ptr, ptr %from, align 8
  %incdec.ptr1712 = getelementptr inbounds i8, ptr %836, i64 1
  store ptr %incdec.ptr1712, ptr %from, align 8
  %837 = load i8, ptr %836, align 1
  %838 = load ptr, ptr %put, align 8
  %incdec.ptr1713 = getelementptr inbounds i8, ptr %838, i64 1
  store ptr %incdec.ptr1713, ptr %put, align 8
  store i8 %837, ptr %838, align 1
  %839 = load i32, ptr %copy, align 4
  %dec1715 = add i32 %839, -1
  store i32 %dec1715, ptr %copy, align 4
  %tobool1716.not = icmp eq i32 %dec1715, 0
  br i1 %tobool1716.not, label %do.end1717, label %do.body1711, !llvm.loop !29

do.end1717:                                       ; preds = %do.body1711
  %840 = load ptr, ptr %state, align 8
  %length1718 = getelementptr inbounds %struct.inflate_state, ptr %840, i64 0, i32 17
  %841 = load i32, ptr %length1718, align 4
  %cmp1719 = icmp eq i32 %841, 0
  br i1 %cmp1719, label %if.then1721, label %sw.epilog1874

if.then1721:                                      ; preds = %do.end1717
  %842 = load ptr, ptr %state, align 8
  %mode1722 = getelementptr inbounds %struct.inflate_state, ptr %842, i64 0, i32 1
  store i32 16200, ptr %mode1722, align 8
  br label %sw.epilog1874

sw.bb1724:                                        ; preds = %for.cond
  %843 = load i32, ptr %left, align 4
  %cmp1725 = icmp eq i32 %843, 0
  br i1 %cmp1725, label %do.body1875, label %if.end1728

if.end1728:                                       ; preds = %sw.bb1724
  %844 = load ptr, ptr %state, align 8
  %length1729 = getelementptr inbounds %struct.inflate_state, ptr %844, i64 0, i32 17
  %845 = load i32, ptr %length1729, align 4
  %conv1730 = trunc i32 %845 to i8
  %846 = load ptr, ptr %put, align 8
  %incdec.ptr1731 = getelementptr inbounds i8, ptr %846, i64 1
  store ptr %incdec.ptr1731, ptr %put, align 8
  store i8 %conv1730, ptr %846, align 1
  %847 = load i32, ptr %left, align 4
  %dec1732 = add i32 %847, -1
  store i32 %dec1732, ptr %left, align 4
  %848 = load ptr, ptr %state, align 8
  %mode1733 = getelementptr inbounds %struct.inflate_state, ptr %848, i64 0, i32 1
  store i32 16200, ptr %mode1733, align 8
  br label %sw.epilog1874

sw.bb1734:                                        ; preds = %for.cond
  %849 = load ptr, ptr %state, align 8
  %wrap1735 = getelementptr inbounds %struct.inflate_state, ptr %849, i64 0, i32 3
  %850 = load i32, ptr %wrap1735, align 8
  %tobool1736.not = icmp eq i32 %850, 0
  br i1 %tobool1736.not, label %if.end1821, label %while.cond1739

while.cond1739:                                   ; preds = %sw.bb1734, %if.end1747
  %851 = load i32, ptr %bits, align 4
  %cmp1740 = icmp ult i32 %851, 32
  br i1 %cmp1740, label %do.body1743, label %do.end1759

do.body1743:                                      ; preds = %while.cond1739
  %852 = load i32, ptr %have, align 4
  %cmp1744 = icmp eq i32 %852, 0
  br i1 %cmp1744, label %do.body1875, label %if.end1747

if.end1747:                                       ; preds = %do.body1743
  %853 = load i32, ptr %have, align 4
  %dec1748 = add i32 %853, -1
  store i32 %dec1748, ptr %have, align 4
  %854 = load ptr, ptr %next, align 8
  %incdec.ptr1749 = getelementptr inbounds i8, ptr %854, i64 1
  store ptr %incdec.ptr1749, ptr %next, align 8
  %855 = load i8, ptr %854, align 1
  %conv1750 = zext i8 %855 to i64
  %856 = load i32, ptr %bits, align 4
  %sh_prom1751 = zext i32 %856 to i64
  %shl1752 = shl i64 %conv1750, %sh_prom1751
  %857 = load i64, ptr %hold, align 8
  %add1753 = add i64 %857, %shl1752
  store i64 %add1753, ptr %hold, align 8
  %add1754 = add i32 %856, 8
  store i32 %add1754, ptr %bits, align 4
  br label %while.cond1739, !llvm.loop !30

do.end1759:                                       ; preds = %while.cond1739
  %858 = load i32, ptr %left, align 4
  %859 = load i32, ptr %out, align 4
  %sub1760 = sub i32 %859, %858
  store i32 %sub1760, ptr %out, align 4
  %conv1761 = zext i32 %sub1760 to i64
  %860 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %860, i64 0, i32 5
  %861 = load i64, ptr %total_out, align 8
  %add1762 = add i64 %861, %conv1761
  store i64 %add1762, ptr %total_out, align 8
  %862 = load i32, ptr %out, align 4
  %conv1763 = zext i32 %862 to i64
  %863 = load ptr, ptr %state, align 8
  %total = getelementptr inbounds %struct.inflate_state, ptr %863, i64 0, i32 8
  %864 = load i64, ptr %total, align 8
  %add1764 = add i64 %864, %conv1763
  store i64 %add1764, ptr %total, align 8
  %wrap1765 = getelementptr inbounds %struct.inflate_state, ptr %863, i64 0, i32 3
  %865 = load i32, ptr %wrap1765, align 8
  %and1766 = and i32 %865, 4
  %tobool1767.not = icmp eq i32 %and1766, 0
  %866 = load i32, ptr %out, align 4
  %tobool1769.not = icmp eq i32 %866, 0
  %or.cond12 = select i1 %tobool1767.not, i1 true, i1 %tobool1769.not
  br i1 %or.cond12, label %if.end1789, label %if.then1770

if.then1770:                                      ; preds = %do.end1759
  %867 = load ptr, ptr %state, align 8
  %flags1771 = getelementptr inbounds %struct.inflate_state, ptr %867, i64 0, i32 5
  %868 = load i32, ptr %flags1771, align 8
  %tobool1772.not = icmp eq i32 %868, 0
  br i1 %tobool1772.not, label %cond.false1779, label %cond.true1773

cond.true1773:                                    ; preds = %if.then1770
  %869 = load ptr, ptr %state, align 8
  %check1774 = getelementptr inbounds %struct.inflate_state, ptr %869, i64 0, i32 7
  %870 = load i64, ptr %check1774, align 8
  %871 = load ptr, ptr %put, align 8
  %872 = load i32, ptr %out, align 4
  %idx.ext1775 = zext i32 %872 to i64
  %idx.neg1776 = sub nsw i64 0, %idx.ext1775
  %add.ptr1777 = getelementptr inbounds i8, ptr %871, i64 %idx.neg1776
  %call1778 = call i64 @crc32(i64 noundef %870, ptr noundef %add.ptr1777, i32 noundef %872) #5
  br label %cond.end1785

cond.false1779:                                   ; preds = %if.then1770
  %873 = load ptr, ptr %state, align 8
  %check1780 = getelementptr inbounds %struct.inflate_state, ptr %873, i64 0, i32 7
  %874 = load i64, ptr %check1780, align 8
  %875 = load ptr, ptr %put, align 8
  %876 = load i32, ptr %out, align 4
  %idx.ext1781 = zext i32 %876 to i64
  %idx.neg1782 = sub nsw i64 0, %idx.ext1781
  %add.ptr1783 = getelementptr inbounds i8, ptr %875, i64 %idx.neg1782
  %call1784 = call i64 @adler32(i64 noundef %874, ptr noundef %add.ptr1783, i32 noundef %876) #5
  br label %cond.end1785

cond.end1785:                                     ; preds = %cond.false1779, %cond.true1773
  %cond1786 = phi i64 [ %call1778, %cond.true1773 ], [ %call1784, %cond.false1779 ]
  %877 = load ptr, ptr %state, align 8
  %check1787 = getelementptr inbounds %struct.inflate_state, ptr %877, i64 0, i32 7
  store i64 %cond1786, ptr %check1787, align 8
  %878 = load ptr, ptr %strm.addr, align 8
  %adler1788 = getelementptr inbounds %struct.z_stream_s, ptr %878, i64 0, i32 12
  store i64 %cond1786, ptr %adler1788, align 8
  br label %if.end1789

if.end1789:                                       ; preds = %cond.end1785, %do.end1759
  %879 = load i32, ptr %left, align 4
  store i32 %879, ptr %out, align 4
  %880 = load ptr, ptr %state, align 8
  %wrap1790 = getelementptr inbounds %struct.inflate_state, ptr %880, i64 0, i32 3
  %881 = load i32, ptr %wrap1790, align 8
  %and1791 = and i32 %881, 4
  %tobool1792.not = icmp eq i32 %and1791, 0
  br i1 %tobool1792.not, label %do.body1818, label %land.lhs.true1793

land.lhs.true1793:                                ; preds = %if.end1789
  %882 = load ptr, ptr %state, align 8
  %flags1794 = getelementptr inbounds %struct.inflate_state, ptr %882, i64 0, i32 5
  %883 = load i32, ptr %flags1794, align 8
  %tobool1795.not = icmp eq i32 %883, 0
  br i1 %tobool1795.not, label %cond.false1797, label %cond.true1796

cond.true1796:                                    ; preds = %land.lhs.true1793
  %884 = load i64, ptr %hold, align 8
  br label %cond.end1809

cond.false1797:                                   ; preds = %land.lhs.true1793
  %885 = load i64, ptr %hold, align 8
  %shr1798 = lshr i64 %885, 24
  %and1799 = and i64 %shr1798, 255
  %shr1800 = lshr i64 %885, 8
  %and1801 = and i64 %shr1800, 65280
  %add1802 = or i64 %and1799, %and1801
  %and1803 = shl i64 %885, 8
  %shl1804 = and i64 %and1803, 16711680
  %add1805 = or i64 %add1802, %shl1804
  %886 = load i64, ptr %hold, align 8
  %and1806 = shl i64 %886, 24
  %shl1807 = and i64 %and1806, 4278190080
  %add1808 = or i64 %add1805, %shl1807
  br label %cond.end1809

cond.end1809:                                     ; preds = %cond.false1797, %cond.true1796
  %cond1810 = phi i64 [ %884, %cond.true1796 ], [ %add1808, %cond.false1797 ]
  %887 = load ptr, ptr %state, align 8
  %check1811 = getelementptr inbounds %struct.inflate_state, ptr %887, i64 0, i32 7
  %888 = load i64, ptr %check1811, align 8
  %cmp1812.not = icmp eq i64 %cond1810, %888
  br i1 %cmp1812.not, label %do.body1818, label %if.then1814

if.then1814:                                      ; preds = %cond.end1809
  %889 = load ptr, ptr %strm.addr, align 8
  %msg1815 = getelementptr inbounds %struct.z_stream_s, ptr %889, i64 0, i32 6
  store ptr @.str.17, ptr %msg1815, align 8
  %890 = load ptr, ptr %state, align 8
  %mode1816 = getelementptr inbounds %struct.inflate_state, ptr %890, i64 0, i32 1
  store i32 16209, ptr %mode1816, align 8
  br label %sw.epilog1874

do.body1818:                                      ; preds = %if.end1789, %cond.end1809
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %if.end1821

if.end1821:                                       ; preds = %do.body1818, %sw.bb1734
  %891 = load ptr, ptr %state, align 8
  %mode1822 = getelementptr inbounds %struct.inflate_state, ptr %891, i64 0, i32 1
  store i32 16207, ptr %mode1822, align 8
  br label %sw.bb1823

sw.bb1823:                                        ; preds = %if.end1821, %for.cond
  %892 = load ptr, ptr %state, align 8
  %wrap1824 = getelementptr inbounds %struct.inflate_state, ptr %892, i64 0, i32 3
  %893 = load i32, ptr %wrap1824, align 8
  %tobool1825.not = icmp eq i32 %893, 0
  br i1 %tobool1825.not, label %if.end1867, label %land.lhs.true1826

land.lhs.true1826:                                ; preds = %sw.bb1823
  %894 = load ptr, ptr %state, align 8
  %flags1827 = getelementptr inbounds %struct.inflate_state, ptr %894, i64 0, i32 5
  %895 = load i32, ptr %flags1827, align 8
  %tobool1828.not = icmp eq i32 %895, 0
  br i1 %tobool1828.not, label %if.end1867, label %while.cond1831

while.cond1831:                                   ; preds = %land.lhs.true1826, %if.end1839
  %896 = load i32, ptr %bits, align 4
  %cmp1832 = icmp ult i32 %896, 32
  br i1 %cmp1832, label %do.body1835, label %do.end1851

do.body1835:                                      ; preds = %while.cond1831
  %897 = load i32, ptr %have, align 4
  %cmp1836 = icmp eq i32 %897, 0
  br i1 %cmp1836, label %do.body1875, label %if.end1839

if.end1839:                                       ; preds = %do.body1835
  %898 = load i32, ptr %have, align 4
  %dec1840 = add i32 %898, -1
  store i32 %dec1840, ptr %have, align 4
  %899 = load ptr, ptr %next, align 8
  %incdec.ptr1841 = getelementptr inbounds i8, ptr %899, i64 1
  store ptr %incdec.ptr1841, ptr %next, align 8
  %900 = load i8, ptr %899, align 1
  %conv1842 = zext i8 %900 to i64
  %901 = load i32, ptr %bits, align 4
  %sh_prom1843 = zext i32 %901 to i64
  %shl1844 = shl i64 %conv1842, %sh_prom1843
  %902 = load i64, ptr %hold, align 8
  %add1845 = add i64 %902, %shl1844
  store i64 %add1845, ptr %hold, align 8
  %add1846 = add i32 %901, 8
  store i32 %add1846, ptr %bits, align 4
  br label %while.cond1831, !llvm.loop !31

do.end1851:                                       ; preds = %while.cond1831
  %903 = load ptr, ptr %state, align 8
  %wrap1852 = getelementptr inbounds %struct.inflate_state, ptr %903, i64 0, i32 3
  %904 = load i32, ptr %wrap1852, align 8
  %and1853 = and i32 %904, 4
  %tobool1854.not = icmp eq i32 %and1853, 0
  br i1 %tobool1854.not, label %do.body1864, label %land.lhs.true1855

land.lhs.true1855:                                ; preds = %do.end1851
  %905 = load i64, ptr %hold, align 8
  %906 = load ptr, ptr %state, align 8
  %total1856 = getelementptr inbounds %struct.inflate_state, ptr %906, i64 0, i32 8
  %907 = load i64, ptr %total1856, align 8
  %and1857 = and i64 %907, 4294967295
  %cmp1858.not = icmp eq i64 %905, %and1857
  br i1 %cmp1858.not, label %do.body1864, label %if.then1860

if.then1860:                                      ; preds = %land.lhs.true1855
  %908 = load ptr, ptr %strm.addr, align 8
  %msg1861 = getelementptr inbounds %struct.z_stream_s, ptr %908, i64 0, i32 6
  store ptr @.str.18, ptr %msg1861, align 8
  %909 = load ptr, ptr %state, align 8
  %mode1862 = getelementptr inbounds %struct.inflate_state, ptr %909, i64 0, i32 1
  store i32 16209, ptr %mode1862, align 8
  br label %sw.epilog1874

do.body1864:                                      ; preds = %do.end1851, %land.lhs.true1855
  store i64 0, ptr %hold, align 8
  store i32 0, ptr %bits, align 4
  br label %if.end1867

if.end1867:                                       ; preds = %do.body1864, %land.lhs.true1826, %sw.bb1823
  %910 = load ptr, ptr %state, align 8
  %mode1868 = getelementptr inbounds %struct.inflate_state, ptr %910, i64 0, i32 1
  store i32 16208, ptr %mode1868, align 8
  br label %sw.bb1869

sw.bb1869:                                        ; preds = %if.end1867, %for.cond
  store i32 1, ptr %ret, align 4
  br label %do.body1875

sw.bb1870:                                        ; preds = %for.cond
  store i32 -3, ptr %ret, align 4
  br label %do.body1875

sw.bb1871:                                        ; preds = %for.cond
  store i32 -4, ptr %retval, align 4
  br label %return

sw.default1873:                                   ; preds = %for.cond
  store i32 -2, ptr %retval, align 4
  br label %return

sw.epilog1874:                                    ; preds = %do.end1717, %if.then1721, %do.body1270, %if.then1291, %while.end1204, %if.then1860, %if.then1814, %if.end1728, %if.then1672, %if.then1598, %if.then1428, %if.then1420, %if.then1413, %if.then1252, %if.then1234, %if.then1215, %if.then960, %if.then887, %if.end831, %if.end820, %if.then788, %do.body748, %do.body689, %if.end614, %if.then596, %if.then143, %if.then136, %if.end100, %if.then97, %if.then75, %if.then68, %if.end38, %if.then16
  br label %for.cond

do.body1875:                                      ; preds = %do.body738, %sw.bb1869, %sw.bb1870, %do.body21, %do.body115, %do.body185, %do.body241, %do.body300, %if.end417, %if.then429, %if.end473, %if.then495, %if.end544, %do.body571, %do.body625, %sw.bb677, %do.body704, %do.body767, %if.end791, %if.end816, %do.body839, %do.body905, %do.body990, %do.body1038, %do.body1100, %do.body1144, %if.end1255, %do.body1310, %do.body1362, %do.body1447, %do.body1501, %do.body1550, %do.body1619, %sw.bb1656, %sw.bb1724, %do.body1743, %do.body1835
  %911 = load ptr, ptr %put, align 8
  %912 = load ptr, ptr %strm.addr, align 8
  %next_out1876 = getelementptr inbounds %struct.z_stream_s, ptr %912, i64 0, i32 3
  store ptr %911, ptr %next_out1876, align 8
  %913 = load i32, ptr %left, align 4
  %avail_out1877 = getelementptr inbounds %struct.z_stream_s, ptr %912, i64 0, i32 4
  store i32 %913, ptr %avail_out1877, align 8
  %914 = load ptr, ptr %next, align 8
  %915 = load ptr, ptr %strm.addr, align 8
  store ptr %914, ptr %915, align 8
  %916 = load i32, ptr %have, align 4
  %avail_in1879 = getelementptr inbounds %struct.z_stream_s, ptr %915, i64 0, i32 1
  store i32 %916, ptr %avail_in1879, align 8
  %917 = load i64, ptr %hold, align 8
  %918 = load ptr, ptr %state, align 8
  %hold1880 = getelementptr inbounds %struct.inflate_state, ptr %918, i64 0, i32 15
  store i64 %917, ptr %hold1880, align 8
  %919 = load i32, ptr %bits, align 4
  %bits1881 = getelementptr inbounds %struct.inflate_state, ptr %918, i64 0, i32 16
  store i32 %919, ptr %bits1881, align 8
  %920 = load ptr, ptr %state, align 8
  %wsize1884 = getelementptr inbounds %struct.inflate_state, ptr %920, i64 0, i32 11
  %921 = load i32, ptr %wsize1884, align 4
  %tobool1885.not = icmp eq i32 %921, 0
  br i1 %tobool1885.not, label %lor.lhs.false1886, label %if.then1901

lor.lhs.false1886:                                ; preds = %do.body1875
  %922 = load i32, ptr %out, align 4
  %923 = load ptr, ptr %strm.addr, align 8
  %avail_out1887 = getelementptr inbounds %struct.z_stream_s, ptr %923, i64 0, i32 4
  %924 = load i32, ptr %avail_out1887, align 8
  %cmp1888.not = icmp eq i32 %922, %924
  br i1 %cmp1888.not, label %if.end1910, label %land.lhs.true1890

land.lhs.true1890:                                ; preds = %lor.lhs.false1886
  %925 = load ptr, ptr %state, align 8
  %mode1891 = getelementptr inbounds %struct.inflate_state, ptr %925, i64 0, i32 1
  %926 = load i32, ptr %mode1891, align 8
  %cmp1892 = icmp ult i32 %926, 16209
  br i1 %cmp1892, label %land.lhs.true1894, label %if.end1910

land.lhs.true1894:                                ; preds = %land.lhs.true1890
  %927 = load ptr, ptr %state, align 8
  %mode1895 = getelementptr inbounds %struct.inflate_state, ptr %927, i64 0, i32 1
  %928 = load i32, ptr %mode1895, align 8
  %cmp1896 = icmp uge i32 %928, 16206
  %929 = load i32, ptr %flush.addr, align 4
  %cmp1899.not = icmp eq i32 %929, 4
  %or.cond13 = select i1 %cmp1896, i1 %cmp1899.not, i1 false
  br i1 %or.cond13, label %if.end1910, label %if.then1901

if.then1901:                                      ; preds = %land.lhs.true1894, %do.body1875
  %930 = load ptr, ptr %strm.addr, align 8
  %next_out1902 = getelementptr inbounds %struct.z_stream_s, ptr %930, i64 0, i32 3
  %931 = load ptr, ptr %next_out1902, align 8
  %932 = load i32, ptr %out, align 4
  %avail_out1903 = getelementptr inbounds %struct.z_stream_s, ptr %930, i64 0, i32 4
  %933 = load i32, ptr %avail_out1903, align 8
  %sub1904 = sub i32 %932, %933
  %call1905 = call i32 @updatewindow(ptr noundef %930, ptr noundef %931, i32 noundef %sub1904)
  %tobool1906.not = icmp eq i32 %call1905, 0
  br i1 %tobool1906.not, label %if.end1910, label %if.then1907

if.then1907:                                      ; preds = %if.then1901
  %934 = load ptr, ptr %state, align 8
  %mode1908 = getelementptr inbounds %struct.inflate_state, ptr %934, i64 0, i32 1
  store i32 16210, ptr %mode1908, align 8
  store i32 -4, ptr %retval, align 4
  br label %return

if.end1910:                                       ; preds = %if.then1901, %land.lhs.true1894, %land.lhs.true1890, %lor.lhs.false1886
  %935 = load ptr, ptr %strm.addr, align 8
  %avail_in1911 = getelementptr inbounds %struct.z_stream_s, ptr %935, i64 0, i32 1
  %936 = load i32, ptr %avail_in1911, align 8
  %937 = load i32, ptr %in, align 4
  %sub1912 = sub i32 %937, %936
  store i32 %sub1912, ptr %in, align 4
  %avail_out1913 = getelementptr inbounds %struct.z_stream_s, ptr %935, i64 0, i32 4
  %938 = load i32, ptr %avail_out1913, align 8
  %939 = load i32, ptr %out, align 4
  %sub1914 = sub i32 %939, %938
  store i32 %sub1914, ptr %out, align 4
  %conv1915 = zext i32 %sub1912 to i64
  %940 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %940, i64 0, i32 2
  %941 = load i64, ptr %total_in, align 8
  %add1916 = add i64 %941, %conv1915
  store i64 %add1916, ptr %total_in, align 8
  %942 = load i32, ptr %out, align 4
  %conv1917 = zext i32 %942 to i64
  %943 = load ptr, ptr %strm.addr, align 8
  %total_out1918 = getelementptr inbounds %struct.z_stream_s, ptr %943, i64 0, i32 5
  %944 = load i64, ptr %total_out1918, align 8
  %add1919 = add i64 %944, %conv1917
  store i64 %add1919, ptr %total_out1918, align 8
  %945 = load i32, ptr %out, align 4
  %conv1920 = zext i32 %945 to i64
  %946 = load ptr, ptr %state, align 8
  %total1921 = getelementptr inbounds %struct.inflate_state, ptr %946, i64 0, i32 8
  %947 = load i64, ptr %total1921, align 8
  %add1922 = add i64 %947, %conv1920
  store i64 %add1922, ptr %total1921, align 8
  %wrap1923 = getelementptr inbounds %struct.inflate_state, ptr %946, i64 0, i32 3
  %948 = load i32, ptr %wrap1923, align 8
  %and1924 = and i32 %948, 4
  %tobool1925.not = icmp eq i32 %and1924, 0
  %949 = load i32, ptr %out, align 4
  %tobool1927.not = icmp eq i32 %949, 0
  %or.cond14 = select i1 %tobool1925.not, i1 true, i1 %tobool1927.not
  br i1 %or.cond14, label %if.end1949, label %if.then1928

if.then1928:                                      ; preds = %if.end1910
  %950 = load ptr, ptr %state, align 8
  %flags1929 = getelementptr inbounds %struct.inflate_state, ptr %950, i64 0, i32 5
  %951 = load i32, ptr %flags1929, align 8
  %tobool1930.not = icmp eq i32 %951, 0
  br i1 %tobool1930.not, label %cond.false1938, label %cond.true1931

cond.true1931:                                    ; preds = %if.then1928
  %952 = load ptr, ptr %state, align 8
  %check1932 = getelementptr inbounds %struct.inflate_state, ptr %952, i64 0, i32 7
  %953 = load i64, ptr %check1932, align 8
  %954 = load ptr, ptr %strm.addr, align 8
  %next_out1933 = getelementptr inbounds %struct.z_stream_s, ptr %954, i64 0, i32 3
  %955 = load ptr, ptr %next_out1933, align 8
  %956 = load i32, ptr %out, align 4
  %idx.ext1934 = zext i32 %956 to i64
  %idx.neg1935 = sub nsw i64 0, %idx.ext1934
  %add.ptr1936 = getelementptr inbounds i8, ptr %955, i64 %idx.neg1935
  %call1937 = call i64 @crc32(i64 noundef %953, ptr noundef %add.ptr1936, i32 noundef %956) #5
  br label %cond.end1945

cond.false1938:                                   ; preds = %if.then1928
  %957 = load ptr, ptr %state, align 8
  %check1939 = getelementptr inbounds %struct.inflate_state, ptr %957, i64 0, i32 7
  %958 = load i64, ptr %check1939, align 8
  %959 = load ptr, ptr %strm.addr, align 8
  %next_out1940 = getelementptr inbounds %struct.z_stream_s, ptr %959, i64 0, i32 3
  %960 = load ptr, ptr %next_out1940, align 8
  %961 = load i32, ptr %out, align 4
  %idx.ext1941 = zext i32 %961 to i64
  %idx.neg1942 = sub nsw i64 0, %idx.ext1941
  %add.ptr1943 = getelementptr inbounds i8, ptr %960, i64 %idx.neg1942
  %call1944 = call i64 @adler32(i64 noundef %958, ptr noundef %add.ptr1943, i32 noundef %961) #5
  br label %cond.end1945

cond.end1945:                                     ; preds = %cond.false1938, %cond.true1931
  %cond1946 = phi i64 [ %call1937, %cond.true1931 ], [ %call1944, %cond.false1938 ]
  %962 = load ptr, ptr %state, align 8
  %check1947 = getelementptr inbounds %struct.inflate_state, ptr %962, i64 0, i32 7
  store i64 %cond1946, ptr %check1947, align 8
  %963 = load ptr, ptr %strm.addr, align 8
  %adler1948 = getelementptr inbounds %struct.z_stream_s, ptr %963, i64 0, i32 12
  store i64 %cond1946, ptr %adler1948, align 8
  br label %if.end1949

if.end1949:                                       ; preds = %cond.end1945, %if.end1910
  %964 = load ptr, ptr %state, align 8
  %bits1950 = getelementptr inbounds %struct.inflate_state, ptr %964, i64 0, i32 16
  %965 = load i32, ptr %bits1950, align 8
  %last1951 = getelementptr inbounds %struct.inflate_state, ptr %964, i64 0, i32 2
  %966 = load i32, ptr %last1951, align 4
  %tobool1952.not = icmp eq i32 %966, 0
  %cond1953 = select i1 %tobool1952.not, i32 0, i32 64
  %add1954 = add nsw i32 %965, %cond1953
  %967 = load ptr, ptr %state, align 8
  %mode1955 = getelementptr inbounds %struct.inflate_state, ptr %967, i64 0, i32 1
  %968 = load i32, ptr %mode1955, align 8
  %cmp1956 = icmp eq i32 %968, 16191
  %cond1958 = select i1 %cmp1956, i32 128, i32 0
  %add1959 = add nsw i32 %add1954, %cond1958
  %cmp1961 = icmp eq i32 %968, 16199
  br i1 %cmp1961, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end1949
  %969 = load ptr, ptr %state, align 8
  %mode1963 = getelementptr inbounds %struct.inflate_state, ptr %969, i64 0, i32 1
  %970 = load i32, ptr %mode1963, align 8
  %cmp1964 = icmp eq i32 %970, 16194
  %phi.sel = select i1 %cmp1964, i32 256, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end1949
  %971 = phi i32 [ 256, %if.end1949 ], [ %phi.sel, %lor.rhs ]
  %add1967 = add nsw i32 %add1959, %971
  %972 = load ptr, ptr %strm.addr, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %972, i64 0, i32 11
  store i32 %add1967, ptr %data_type, align 8
  %973 = load i32, ptr %in, align 4
  %cmp1968 = icmp eq i32 %973, 0
  %974 = load i32, ptr %out, align 4
  %cmp1971 = icmp eq i32 %974, 0
  %or.cond15 = select i1 %cmp1968, i1 %cmp1971, i1 false
  %975 = load i32, ptr %flush.addr, align 4
  %cmp1974 = icmp eq i32 %975, 4
  %or.cond16 = select i1 %or.cond15, i1 true, i1 %cmp1974
  %976 = load i32, ptr %ret, align 4
  %cmp1977 = icmp eq i32 %976, 0
  %or.cond17 = select i1 %or.cond16, i1 %cmp1977, i1 false
  %spec.store.select = select i1 %or.cond17, i32 -5, i32 %976
  store i32 %spec.store.select, ptr %ret, align 4
  %977 = load i32, ptr %ret, align 4
  store i32 %977, ptr %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then1907, %sw.default1873, %sw.bb1871, %do.body663, %if.then
  %978 = load i32, ptr %retval, align 4
  ret i32 %978
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

; Function Attrs: nounwind ssp uwtable
define internal i32 @updatewindow(ptr noundef %strm, ptr noundef %end, i32 noundef %copy) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %copy.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %dist = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store i32 %copy, ptr %copy.addr, align 4
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 7
  %0 = load ptr, ptr %state1, align 8
  store ptr %0, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 14
  %1 = load ptr, ptr %window, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 8
  %3 = load ptr, ptr %zalloc, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %opaque, align 8
  %5 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 10
  %6 = load i32, ptr %wbits, align 8
  %shl = shl i32 1, %6
  %call = call ptr %3(ptr noundef %4, i32 noundef %shl, i32 noundef 1) #5
  %window2 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 14
  store ptr %call, ptr %window2, align 8
  %7 = load ptr, ptr %state, align 8
  %window3 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 14
  %8 = load ptr, ptr %window3, align 8
  %cmp4 = icmp eq ptr %8, null
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  %9 = load ptr, ptr %state, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 11
  %10 = load i32, ptr %wsize, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %state, align 8
  %wbits9 = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 10
  %12 = load i32, ptr %wbits9, align 8
  %shl10 = shl i32 1, %12
  %wsize11 = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 11
  store i32 %shl10, ptr %wsize11, align 4
  %wnext = getelementptr inbounds %struct.inflate_state, ptr %11, i64 0, i32 13
  store i32 0, ptr %wnext, align 4
  %13 = load ptr, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 12
  store i32 0, ptr %whave, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6
  %14 = load i32, ptr %copy.addr, align 4
  %15 = load ptr, ptr %state, align 8
  %wsize13 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 11
  %16 = load i32, ptr %wsize13, align 4
  %cmp14.not = icmp ult i32 %14, %16
  br i1 %cmp14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %17 = load ptr, ptr %state, align 8
  %window16 = getelementptr inbounds %struct.inflate_state, ptr %17, i64 0, i32 14
  %18 = load ptr, ptr %window16, align 8
  %19 = load ptr, ptr %end.addr, align 8
  %wsize17 = getelementptr inbounds %struct.inflate_state, ptr %17, i64 0, i32 11
  %20 = load i32, ptr %wsize17, align 4
  %idx.ext = zext i32 %20 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %idx.neg
  %21 = load ptr, ptr %state, align 8
  %wsize18 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 11
  %22 = load i32, ptr %wsize18, align 4
  %conv = zext i32 %22 to i64
  %window19 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 14
  %23 = load ptr, ptr %window19, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %23, i1 false, i1 true, i1 false)
  %call20 = call ptr @__memcpy_chk(ptr noundef %18, ptr noundef %add.ptr, i64 noundef %conv, i64 noundef %24) #5
  %25 = load ptr, ptr %state, align 8
  %wnext21 = getelementptr inbounds %struct.inflate_state, ptr %25, i64 0, i32 13
  store i32 0, ptr %wnext21, align 4
  %wsize22 = getelementptr inbounds %struct.inflate_state, ptr %25, i64 0, i32 11
  %26 = load i32, ptr %wsize22, align 4
  %whave23 = getelementptr inbounds %struct.inflate_state, ptr %25, i64 0, i32 12
  store i32 %26, ptr %whave23, align 8
  br label %return

if.else:                                          ; preds = %if.end12
  %27 = load ptr, ptr %state, align 8
  %wsize24 = getelementptr inbounds %struct.inflate_state, ptr %27, i64 0, i32 11
  %28 = load i32, ptr %wsize24, align 4
  %wnext25 = getelementptr inbounds %struct.inflate_state, ptr %27, i64 0, i32 13
  %29 = load i32, ptr %wnext25, align 4
  %sub = sub i32 %28, %29
  store i32 %sub, ptr %dist, align 4
  %30 = load i32, ptr %copy.addr, align 4
  %cmp26 = icmp ugt i32 %sub, %30
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else
  %31 = load i32, ptr %copy.addr, align 4
  store i32 %31, ptr %dist, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.else
  %32 = load ptr, ptr %state, align 8
  %window30 = getelementptr inbounds %struct.inflate_state, ptr %32, i64 0, i32 14
  %33 = load ptr, ptr %window30, align 8
  %wnext31 = getelementptr inbounds %struct.inflate_state, ptr %32, i64 0, i32 13
  %34 = load i32, ptr %wnext31, align 4
  %idx.ext32 = zext i32 %34 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %33, i64 %idx.ext32
  %35 = load ptr, ptr %end.addr, align 8
  %36 = load i32, ptr %copy.addr, align 4
  %idx.ext34 = zext i32 %36 to i64
  %idx.neg35 = sub nsw i64 0, %idx.ext34
  %add.ptr36 = getelementptr inbounds i8, ptr %35, i64 %idx.neg35
  %37 = load i32, ptr %dist, align 4
  %conv37 = zext i32 %37 to i64
  %38 = load ptr, ptr %state, align 8
  %window38 = getelementptr inbounds %struct.inflate_state, ptr %38, i64 0, i32 14
  %39 = load ptr, ptr %window38, align 8
  %wnext39 = getelementptr inbounds %struct.inflate_state, ptr %38, i64 0, i32 13
  %40 = load i32, ptr %wnext39, align 4
  %idx.ext40 = zext i32 %40 to i64
  %add.ptr41 = getelementptr inbounds i8, ptr %39, i64 %idx.ext40
  %41 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr41, i1 false, i1 true, i1 false)
  %call42 = call ptr @__memcpy_chk(ptr noundef %add.ptr33, ptr noundef %add.ptr36, i64 noundef %conv37, i64 noundef %41) #5
  %42 = load i32, ptr %dist, align 4
  %43 = load i32, ptr %copy.addr, align 4
  %sub43 = sub i32 %43, %42
  store i32 %sub43, ptr %copy.addr, align 4
  %tobool.not = icmp eq i32 %43, %42
  br i1 %tobool.not, label %if.else55, label %if.then44

if.then44:                                        ; preds = %if.end29
  %44 = load ptr, ptr %state, align 8
  %window45 = getelementptr inbounds %struct.inflate_state, ptr %44, i64 0, i32 14
  %45 = load ptr, ptr %window45, align 8
  %46 = load ptr, ptr %end.addr, align 8
  %47 = load i32, ptr %copy.addr, align 4
  %idx.ext46 = zext i32 %47 to i64
  %idx.neg47 = sub nsw i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %46, i64 %idx.neg47
  %conv49 = zext i32 %47 to i64
  %48 = load ptr, ptr %state, align 8
  %window50 = getelementptr inbounds %struct.inflate_state, ptr %48, i64 0, i32 14
  %49 = load ptr, ptr %window50, align 8
  %50 = call i64 @llvm.objectsize.i64.p0(ptr %49, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %45, ptr noundef %add.ptr48, i64 noundef %conv49, i64 noundef %50) #5
  %51 = load i32, ptr %copy.addr, align 4
  %wnext52 = getelementptr inbounds %struct.inflate_state, ptr %48, i64 0, i32 13
  store i32 %51, ptr %wnext52, align 4
  %52 = load ptr, ptr %state, align 8
  %wsize53 = getelementptr inbounds %struct.inflate_state, ptr %52, i64 0, i32 11
  %53 = load i32, ptr %wsize53, align 4
  %whave54 = getelementptr inbounds %struct.inflate_state, ptr %52, i64 0, i32 12
  store i32 %53, ptr %whave54, align 8
  br label %return

if.else55:                                        ; preds = %if.end29
  %54 = load i32, ptr %dist, align 4
  %55 = load ptr, ptr %state, align 8
  %wnext56 = getelementptr inbounds %struct.inflate_state, ptr %55, i64 0, i32 13
  %56 = load i32, ptr %wnext56, align 4
  %add = add i32 %56, %54
  store i32 %add, ptr %wnext56, align 4
  %wsize58 = getelementptr inbounds %struct.inflate_state, ptr %55, i64 0, i32 11
  %57 = load i32, ptr %wsize58, align 4
  %cmp59 = icmp eq i32 %add, %57
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.else55
  %58 = load ptr, ptr %state, align 8
  %wnext62 = getelementptr inbounds %struct.inflate_state, ptr %58, i64 0, i32 13
  store i32 0, ptr %wnext62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.else55
  %59 = load ptr, ptr %state, align 8
  %whave64 = getelementptr inbounds %struct.inflate_state, ptr %59, i64 0, i32 12
  %60 = load i32, ptr %whave64, align 8
  %wsize65 = getelementptr inbounds %struct.inflate_state, ptr %59, i64 0, i32 11
  %61 = load i32, ptr %wsize65, align 4
  %cmp66 = icmp ult i32 %60, %61
  br i1 %cmp66, label %if.then68, label %return

if.then68:                                        ; preds = %if.end63
  %62 = load i32, ptr %dist, align 4
  %63 = load ptr, ptr %state, align 8
  %whave69 = getelementptr inbounds %struct.inflate_state, ptr %63, i64 0, i32 12
  %64 = load i32, ptr %whave69, align 8
  %add70 = add i32 %64, %62
  store i32 %add70, ptr %whave69, align 8
  br label %return

return:                                           ; preds = %if.then15, %if.end63, %if.then68, %if.then44, %if.then
  %storemerge = phi i32 [ 1, %if.then ], [ 0, %if.then44 ], [ 0, %if.then68 ], [ 0, %if.end63 ], [ 0, %if.then15 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateEnd(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 14
  %2 = load ptr, ptr %window, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 9
  %4 = load ptr, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %opaque, align 8
  %6 = load ptr, ptr %state, align 8
  %window3 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 14
  %7 = load ptr, ptr %window3, align 8
  call void %4(ptr noundef %5, ptr noundef %7) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %8 = load ptr, ptr %strm.addr, align 8
  %zfree5 = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 9
  %9 = load ptr, ptr %zfree5, align 8
  %opaque6 = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 10
  %10 = load ptr, ptr %opaque6, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 7
  %11 = load ptr, ptr %state7, align 8
  call void %9(ptr noundef %10, ptr noundef %11) #5
  %12 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 7
  store ptr null, ptr %state8, align 8
  br label %return

return:                                           ; preds = %entry, %if.end4
  %storemerge = phi i32 [ 0, %if.end4 ], [ -2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateGetDictionary(ptr noundef %strm, ptr noundef %dictionary, ptr noundef %dictLength) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store ptr %dictLength, ptr %dictLength.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 12
  %2 = load i32, ptr %whave, align 8
  %tobool2.not = icmp eq i32 %2, 0
  %3 = load ptr, ptr %dictionary.addr, align 8
  %cmp.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end24, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %dictionary.addr, align 8
  %5 = load ptr, ptr %state, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 14
  %6 = load ptr, ptr %window, align 8
  %wnext = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  %7 = load i32, ptr %wnext, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  %8 = load ptr, ptr %state, align 8
  %whave4 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 12
  %9 = load i32, ptr %whave4, align 8
  %wnext5 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 13
  %10 = load i32, ptr %wnext5, align 4
  %sub = sub i32 %9, %10
  %conv = zext i32 %sub to i64
  %11 = load ptr, ptr %dictionary.addr, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %11, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef %add.ptr, i64 noundef %conv, i64 noundef %12) #5
  %13 = load ptr, ptr %state, align 8
  %whave7 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 12
  %14 = load i32, ptr %whave7, align 8
  %idx.ext8 = zext i32 %14 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %11, i64 %idx.ext8
  %wnext10 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 13
  %15 = load i32, ptr %wnext10, align 4
  %idx.ext11 = zext i32 %15 to i64
  %idx.neg = sub nsw i64 0, %idx.ext11
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.neg
  %16 = load ptr, ptr %state, align 8
  %window13 = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 14
  %17 = load ptr, ptr %window13, align 8
  %wnext14 = getelementptr inbounds %struct.inflate_state, ptr %16, i64 0, i32 13
  %18 = load i32, ptr %wnext14, align 4
  %conv15 = zext i32 %18 to i64
  %19 = load ptr, ptr %dictionary.addr, align 8
  %20 = load ptr, ptr %state, align 8
  %whave16 = getelementptr inbounds %struct.inflate_state, ptr %20, i64 0, i32 12
  %21 = load i32, ptr %whave16, align 8
  %idx.ext17 = zext i32 %21 to i64
  %add.ptr18 = getelementptr inbounds i8, ptr %19, i64 %idx.ext17
  %wnext19 = getelementptr inbounds %struct.inflate_state, ptr %20, i64 0, i32 13
  %22 = load i32, ptr %wnext19, align 4
  %idx.ext20 = zext i32 %22 to i64
  %idx.neg21 = sub nsw i64 0, %idx.ext20
  %add.ptr22 = getelementptr inbounds i8, ptr %add.ptr18, i64 %idx.neg21
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr22, i1 false, i1 true, i1 false)
  %call23 = call ptr @__memcpy_chk(ptr noundef %add.ptr12, ptr noundef %17, i64 noundef %conv15, i64 noundef %23) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then3, %if.end
  %24 = load ptr, ptr %dictLength.addr, align 8
  %cmp25.not = icmp eq ptr %24, null
  br i1 %cmp25.not, label %return, label %if.then27

if.then27:                                        ; preds = %if.end24
  %25 = load ptr, ptr %state, align 8
  %whave28 = getelementptr inbounds %struct.inflate_state, ptr %25, i64 0, i32 12
  %26 = load i32, ptr %whave28, align 8
  %27 = load ptr, ptr %dictLength.addr, align 8
  store i32 %26, ptr %27, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then27, %entry
  %storemerge = phi i32 [ -2, %entry ], [ 0, %if.then27 ], [ 0, %if.end24 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSetDictionary(ptr noundef %strm, ptr noundef %dictionary, i32 noundef %dictLength) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store i32 %dictLength, ptr %dictLength.addr, align 4
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %wrap, align 8
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %mode, align 8
  %cmp2.not = icmp eq i32 %4, 16190
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i32 -2, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %state, align 8
  %mode5 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %mode5, align 8
  %cmp6 = icmp eq i32 %6, 16190
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end4
  %call8 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %7 = load ptr, ptr %dictionary.addr, align 8
  %8 = load i32, ptr %dictLength.addr, align 4
  %call9 = call i64 @adler32(i64 noundef %call8, ptr noundef %7, i32 noundef %8) #5
  %9 = load ptr, ptr %state, align 8
  %check = getelementptr inbounds %struct.inflate_state, ptr %9, i64 0, i32 7
  %10 = load i64, ptr %check, align 8
  %cmp10.not = icmp eq i64 %call9, %10
  br i1 %cmp10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then7
  store i32 -3, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then7, %if.end4
  %11 = load ptr, ptr %strm.addr, align 8
  %12 = load ptr, ptr %dictionary.addr, align 8
  %13 = load i32, ptr %dictLength.addr, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  %call14 = call i32 @updatewindow(ptr noundef %11, ptr noundef %add.ptr, i32 noundef %13)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  %14 = load ptr, ptr %state, align 8
  %mode17 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  store i32 16210, ptr %mode17, align 8
  store i32 -4, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %15 = load ptr, ptr %state, align 8
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 4
  store i32 1, ptr %havedict, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then16, %if.then11, %if.then3, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateGetHeader(ptr noundef %strm, ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %head, ptr %head.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 3
  %2 = load i32, ptr %wrap, align 8
  %and = and i32 %2, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %head.addr, align 8
  %4 = load ptr, ptr %state, align 8
  %head4 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 9
  store ptr %3, ptr %head4, align 8
  %done = getelementptr inbounds %struct.gz_header_s, ptr %3, i64 0, i32 12
  store i32 0, ptr %done, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSync(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %flags = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %2 = load i32, ptr %avail_in, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %3, i64 0, i32 16
  %4 = load i32, ptr %bits, align 8
  %cmp2 = icmp ult i32 %4, 8
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 -5, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %mode, align 8
  %cmp5.not = icmp eq i32 %6, 16211
  br i1 %cmp5.not, label %if.end21, label %if.then6

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %state, align 8
  %mode7 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 1
  store i32 16211, ptr %mode7, align 8
  %bits8 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %8 = load i32, ptr %bits8, align 8
  %and = and i32 %8, 7
  %hold = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 15
  %9 = load i64, ptr %hold, align 8
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 %9, %sh_prom
  store i64 %shr, ptr %hold, align 8
  %10 = load ptr, ptr %state, align 8
  %bits9 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 16
  %11 = load i32, ptr %bits9, align 8
  %bits11 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 16
  %sub = and i32 %11, -8
  store i32 %sub, ptr %bits11, align 8
  store i32 0, ptr %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then6
  %12 = load ptr, ptr %state, align 8
  %bits12 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 16
  %13 = load i32, ptr %bits12, align 8
  %cmp13 = icmp ugt i32 %13, 7
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %state, align 8
  %hold14 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 15
  %15 = load i64, ptr %hold14, align 8
  %conv = trunc i64 %15 to i8
  %16 = load i32, ptr %len, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %len, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %17 = load ptr, ptr %state, align 8
  %hold15 = getelementptr inbounds %struct.inflate_state, ptr %17, i64 0, i32 15
  %18 = load i64, ptr %hold15, align 8
  %shr16 = lshr i64 %18, 8
  store i64 %shr16, ptr %hold15, align 8
  %bits17 = getelementptr inbounds %struct.inflate_state, ptr %17, i64 0, i32 16
  %19 = load i32, ptr %bits17, align 8
  %sub18 = add i32 %19, -8
  store i32 %sub18, ptr %bits17, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %state, align 8
  %have = getelementptr inbounds %struct.inflate_state, ptr %20, i64 0, i32 27
  store i32 0, ptr %have, align 4
  %have19 = getelementptr inbounds %struct.inflate_state, ptr %20, i64 0, i32 27
  %21 = load i32, ptr %len, align 4
  %call20 = call i32 @syncsearch(ptr noundef nonnull %have19, ptr noundef nonnull %buf, i32 noundef %21)
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.end4
  %22 = load ptr, ptr %state, align 8
  %have22 = getelementptr inbounds %struct.inflate_state, ptr %22, i64 0, i32 27
  %23 = load ptr, ptr %strm.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %avail_in23 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %avail_in23, align 8
  %call24 = call i32 @syncsearch(ptr noundef nonnull %have22, ptr noundef %24, i32 noundef %25)
  store i32 %call24, ptr %len, align 4
  %avail_in25 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 1
  %26 = load i32, ptr %avail_in25, align 8
  %sub26 = sub i32 %26, %call24
  store i32 %sub26, ptr %avail_in25, align 8
  %27 = load ptr, ptr %strm.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %idx.ext = zext i32 %call24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load i32, ptr %len, align 4
  %conv28 = zext i32 %29 to i64
  %30 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %30, i64 0, i32 2
  %31 = load i64, ptr %total_in, align 8
  %add = add i64 %31, %conv28
  store i64 %add, ptr %total_in, align 8
  %32 = load ptr, ptr %state, align 8
  %have29 = getelementptr inbounds %struct.inflate_state, ptr %32, i64 0, i32 27
  %33 = load i32, ptr %have29, align 4
  %cmp30.not = icmp eq i32 %33, 4
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end21
  store i32 -3, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end21
  %34 = load ptr, ptr %state, align 8
  %flags34 = getelementptr inbounds %struct.inflate_state, ptr %34, i64 0, i32 5
  %35 = load i32, ptr %flags34, align 8
  %cmp35 = icmp eq i32 %35, -1
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end33
  %36 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %36, i64 0, i32 3
  store i32 0, ptr %wrap, align 8
  br label %if.end40

if.else:                                          ; preds = %if.end33
  %37 = load ptr, ptr %state, align 8
  %wrap38 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 3
  %38 = load i32, ptr %wrap38, align 8
  %and39 = and i32 %38, -5
  store i32 %and39, ptr %wrap38, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then37
  %39 = load ptr, ptr %state, align 8
  %flags41 = getelementptr inbounds %struct.inflate_state, ptr %39, i64 0, i32 5
  %40 = load i32, ptr %flags41, align 8
  store i32 %40, ptr %flags, align 4
  %41 = load ptr, ptr %strm.addr, align 8
  %total_in42 = getelementptr inbounds %struct.z_stream_s, ptr %41, i64 0, i32 2
  %42 = load i64, ptr %total_in42, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %41, i64 0, i32 5
  %43 = load i64, ptr %total_out, align 8
  %call43 = call i32 @inflateReset(ptr noundef %41)
  %total_in44 = getelementptr inbounds %struct.z_stream_s, ptr %41, i64 0, i32 2
  store i64 %42, ptr %total_in44, align 8
  %total_out45 = getelementptr inbounds %struct.z_stream_s, ptr %41, i64 0, i32 5
  store i64 %43, ptr %total_out45, align 8
  %44 = load i32, ptr %flags, align 4
  %45 = load ptr, ptr %state, align 8
  %flags46 = getelementptr inbounds %struct.inflate_state, ptr %45, i64 0, i32 5
  store i32 %44, ptr %flags46, align 8
  %mode47 = getelementptr inbounds %struct.inflate_state, ptr %45, i64 0, i32 1
  store i32 16191, ptr %mode47, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then32, %if.then3, %if.then
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind ssp uwtable
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
  %0 = load i32, ptr %have, align 4
  store i32 %0, ptr %got, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc11, %if.end10 ]
  store i32 %storemerge, ptr %next, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp ult i32 %storemerge, %1
  %2 = load i32, ptr %got, align 4
  %cmp1 = icmp ult i32 %2, 4
  %3 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load i32, ptr %next, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, ptr %got, align 4
  %cmp2 = icmp ult i32 %7, 2
  %cond = select i1 %cmp2, i32 0, i32 255
  %cmp4 = icmp eq i32 %cond, %conv
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load i32, ptr %got, align 4
  %inc = add i32 %8, 1
  br label %if.end10

if.else:                                          ; preds = %while.body
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load i32, ptr %next, align 4
  %idxprom6 = zext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 %idxprom6
  %11 = load i8, ptr %arrayidx7, align 1
  %tobool.not = icmp eq i8 %11, 0
  %12 = load i32, ptr %got, align 4
  %sub = sub i32 4, %12
  %storemerge1 = select i1 %tobool.not, i32 %sub, i32 0
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then
  %storemerge2 = phi i32 [ %storemerge1, %if.else ], [ %inc, %if.then ]
  store i32 %storemerge2, ptr %got, align 4
  %13 = load i32, ptr %next, align 4
  %inc11 = add i32 %13, 1
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  %14 = load i32, ptr %got, align 4
  %15 = load ptr, ptr %have.addr, align 8
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %next, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateSyncPoint(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 1
  %2 = load i32, ptr %mode, align 8
  %cmp = icmp eq i32 %2, 16193
  br i1 %cmp, label %land.rhs, label %return

land.rhs:                                         ; preds = %if.end
  %3 = load ptr, ptr %state, align 8
  %bits = getelementptr inbounds %struct.inflate_state, ptr %3, i64 0, i32 16
  %4 = load i32, ptr %bits, align 8
  %cmp2 = icmp eq i32 %4, 0
  %phi.cast = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %if.end, %land.rhs, %entry
  %storemerge = phi i32 [ -2, %entry ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
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
  %call = call i32 @inflateStateCheck(ptr noundef %source)
  %tobool.not = icmp ne i32 %call, 0
  %0 = load ptr, ptr %dest.addr, align 8
  %cmp = icmp eq ptr %0, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %source.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state1, align 8
  store ptr %2, ptr %state, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 8
  %3 = load ptr, ptr %zalloc, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %opaque, align 8
  %call2 = call ptr %3(ptr noundef %4, i32 noundef 1, i32 noundef 7160) #5
  store ptr %call2, ptr %copy, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %copy, align 8
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %5, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memset_chk(ptr noundef %5, i32 noundef 0, i64 noundef 7160, i64 noundef %6) #5
  store ptr null, ptr %window, align 8
  %7 = load ptr, ptr %state, align 8
  %window7 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 14
  %8 = load ptr, ptr %window7, align 8
  %cmp8.not = icmp eq ptr %8, null
  br i1 %cmp8.not, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end5
  %9 = load ptr, ptr %source.addr, align 8
  %zalloc10 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 8
  %10 = load ptr, ptr %zalloc10, align 8
  %opaque11 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %opaque11, align 8
  %12 = load ptr, ptr %state, align 8
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 10
  %13 = load i32, ptr %wbits, align 8
  %shl = shl i32 1, %13
  %call12 = call ptr %10(ptr noundef %11, i32 noundef %shl, i32 noundef 1) #5
  store ptr %call12, ptr %window, align 8
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then9
  %14 = load ptr, ptr %source.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 9
  %15 = load ptr, ptr %zfree, align 8
  %opaque15 = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %opaque15, align 8
  %17 = load ptr, ptr %copy, align 8
  call void %15(ptr noundef %16, ptr noundef %17) #5
  store i32 -4, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then9, %if.end5
  %18 = load ptr, ptr %dest.addr, align 8
  %19 = load ptr, ptr %source.addr, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %18, i1 false, i1 true, i1 false)
  %call18 = call ptr @__memcpy_chk(ptr noundef %18, ptr noundef %19, i64 noundef 112, i64 noundef %20) #5
  %21 = load ptr, ptr %copy, align 8
  %22 = load ptr, ptr %state, align 8
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %21, i1 false, i1 true, i1 false)
  %call19 = call ptr @__memcpy_chk(ptr noundef %21, ptr noundef %22, i64 noundef 7160, i64 noundef %23) #5
  %24 = load ptr, ptr %dest.addr, align 8
  store ptr %24, ptr %21, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %22, i64 0, i32 20
  %25 = load ptr, ptr %lencode, align 8
  %26 = load ptr, ptr %state, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %26, i64 0, i32 31
  %cmp20.not = icmp ult ptr %25, %codes
  br i1 %cmp20.not, label %if.end44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %27 = load ptr, ptr %state, align 8
  %lencode21 = getelementptr inbounds %struct.inflate_state, ptr %27, i64 0, i32 20
  %28 = load ptr, ptr %lencode21, align 8
  %add.ptr24 = getelementptr inbounds %struct.inflate_state, ptr %27, i64 0, i32 31, i64 1443
  %cmp25.not = icmp ugt ptr %28, %add.ptr24
  br i1 %cmp25.not, label %if.end44, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %copy, align 8
  %codes27 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 31
  %30 = load ptr, ptr %state, align 8
  %lencode29 = getelementptr inbounds %struct.inflate_state, ptr %30, i64 0, i32 20
  %31 = load ptr, ptr %lencode29, align 8
  %codes30 = getelementptr inbounds %struct.inflate_state, ptr %30, i64 0, i32 31
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %codes30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %add.ptr32 = getelementptr inbounds %struct.code, ptr %codes27, i64 %sub.ptr.div
  %32 = load ptr, ptr %copy, align 8
  %lencode33 = getelementptr inbounds %struct.inflate_state, ptr %32, i64 0, i32 20
  store ptr %add.ptr32, ptr %lencode33, align 8
  %codes34 = getelementptr inbounds %struct.inflate_state, ptr %32, i64 0, i32 31
  %33 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %33, i64 0, i32 21
  %34 = load ptr, ptr %distcode, align 8
  %codes36 = getelementptr inbounds %struct.inflate_state, ptr %33, i64 0, i32 31
  %sub.ptr.lhs.cast38 = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast39 = ptrtoint ptr %codes36 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %sub.ptr.div41 = ashr exact i64 %sub.ptr.sub40, 2
  %add.ptr42 = getelementptr inbounds %struct.code, ptr %codes34, i64 %sub.ptr.div41
  %35 = load ptr, ptr %copy, align 8
  %distcode43 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 21
  store ptr %add.ptr42, ptr %distcode43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then26, %land.lhs.true, %if.end17
  %36 = load ptr, ptr %copy, align 8
  %codes45 = getelementptr inbounds %struct.inflate_state, ptr %36, i64 0, i32 31
  %37 = load ptr, ptr %state, align 8
  %next = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 28
  %38 = load ptr, ptr %next, align 8
  %codes47 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 31
  %sub.ptr.lhs.cast49 = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast50 = ptrtoint ptr %codes47 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %sub.ptr.div52 = ashr exact i64 %sub.ptr.sub51, 2
  %add.ptr53 = getelementptr inbounds %struct.code, ptr %codes45, i64 %sub.ptr.div52
  %39 = load ptr, ptr %copy, align 8
  %next54 = getelementptr inbounds %struct.inflate_state, ptr %39, i64 0, i32 28
  store ptr %add.ptr53, ptr %next54, align 8
  %40 = load ptr, ptr %window, align 8
  %cmp55.not = icmp eq ptr %40, null
  br i1 %cmp55.not, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.end44
  %41 = load ptr, ptr %window, align 8
  %42 = load ptr, ptr %state, align 8
  %window57 = getelementptr inbounds %struct.inflate_state, ptr %42, i64 0, i32 14
  %43 = load ptr, ptr %window57, align 8
  %whave = getelementptr inbounds %struct.inflate_state, ptr %42, i64 0, i32 12
  %44 = load i32, ptr %whave, align 8
  %conv = zext i32 %44 to i64
  %45 = load ptr, ptr %window, align 8
  %46 = call i64 @llvm.objectsize.i64.p0(ptr %45, i1 false, i1 true, i1 false)
  %call58 = call ptr @__memcpy_chk(ptr noundef %41, ptr noundef %43, i64 noundef %conv, i64 noundef %46) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end44
  %47 = load ptr, ptr %window, align 8
  %48 = load ptr, ptr %copy, align 8
  %window60 = getelementptr inbounds %struct.inflate_state, ptr %48, i64 0, i32 14
  store ptr %47, ptr %window60, align 8
  %49 = load ptr, ptr %dest.addr, align 8
  %state61 = getelementptr inbounds %struct.z_stream_s, ptr %49, i64 0, i32 7
  store ptr %48, ptr %state61, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then14, %if.then4, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateUndermine(ptr noundef %strm, i32 noundef %subvert) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %sane = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 32
  store i32 1, ptr %sane, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ -3, %if.end ], [ -2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @inflateValidate(ptr noundef %strm, i32 noundef %check) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %check.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %check, ptr %check.addr, align 4
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %2 = load i32, ptr %check.addr, align 4
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %3, i64 0, i32 3
  %4 = load i32, ptr %wrap, align 8
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %state, align 8
  %wrap5 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 3
  %6 = load i32, ptr %wrap5, align 8
  %or = or i32 %6, 4
  store i32 %or, ptr %wrap5, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %state, align 8
  %wrap6 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 3
  %8 = load i32, ptr %wrap6, align 8
  %and = and i32 %8, -5
  store i32 %and, ptr %wrap6, align 8
  br label %return

return:                                           ; preds = %if.then4, %if.else, %entry
  %storemerge = phi i32 [ -2, %entry ], [ 0, %if.else ], [ 0, %if.then4 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i64 @inflateMark(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %back = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 33
  %2 = load i32, ptr %back, align 4
  %conv = sext i32 %2 to i64
  %shl = shl nsw i64 %conv, 16
  %mode = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 1
  %3 = load i32, ptr %mode, align 8
  %cmp = icmp eq i32 %3, 16195
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %state, align 8
  %length = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 17
  %5 = load i32, ptr %length, align 4
  br label %cond.end9

cond.false:                                       ; preds = %if.end
  %6 = load ptr, ptr %state, align 8
  %mode3 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %mode3, align 8
  %cmp4 = icmp eq i32 %7, 16204
  br i1 %cmp4, label %cond.true6, label %cond.end9

cond.true6:                                       ; preds = %cond.false
  %8 = load ptr, ptr %state, align 8
  %was = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 34
  %9 = load i32, ptr %was, align 8
  %length7 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 17
  %10 = load i32, ptr %length7, align 4
  %sub = sub i32 %9, %10
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %cond.false, %cond.true
  %cond10 = phi i32 [ %5, %cond.true ], [ %sub, %cond.true6 ], [ 0, %cond.false ]
  %conv11 = zext i32 %cond10 to i64
  %add = add nsw i64 %shl, %conv11
  br label %return

return:                                           ; preds = %entry, %cond.end9
  %storemerge = phi i64 [ %add, %cond.end9 ], [ -65536, %entry ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i64 @inflateCodesUsed(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @inflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  %next = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 28
  %2 = load ptr, ptr %next, align 8
  %codes = getelementptr inbounds %struct.inflate_state, ptr %1, i64 0, i32 31
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %codes to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i64 [ %sub.ptr.div, %if.end ], [ -1, %entry ]
  ret i64 %storemerge
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
