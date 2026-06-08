; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libz_deflate.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/deflate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i32, i32, i16, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }

@deflate_copyright = constant [53 x i8] c" deflate 1.1.3 Copyright 1995-1998 Jean-loup Gailly \00", align 1
@deflateInit2_.my_version = internal global ptr @.str, align 8
@.str = private unnamed_addr constant [6 x i8] c"1.1.3\00", align 1
@z_errmsg = external global [10 x ptr], align 8
@configuration_table = internal constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 8
@_length_code = external constant [0 x i8], align 1
@_dist_code = external constant [0 x i8], align 1

; Function Attrs: nounwind ssp uwtable
define i32 @deflateInit_(ptr noundef %strm, i32 noundef %level, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %call = call i32 @deflateInit2_(ptr noundef %strm, i32 noundef %level, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef %version, i32 noundef %stream_size)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateInit2_(ptr noundef %strm, i32 noundef %level, i32 noundef %method, i32 noundef %windowBits, i32 noundef %memLevel, i32 noundef %strategy, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %method.addr = alloca i32, align 4
  %windowBits.addr = alloca i32, align 4
  %memLevel.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %version.addr = alloca ptr, align 8
  %stream_size.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %noheader = alloca i32, align 4
  %overlay = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %method, ptr %method.addr, align 4
  store i32 %windowBits, ptr %windowBits.addr, align 4
  store i32 %memLevel, ptr %memLevel.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  store ptr %version, ptr %version.addr, align 8
  store i32 %stream_size, ptr %stream_size.addr, align 4
  store i32 0, ptr %noheader, align 4
  %cmp = icmp eq ptr %version, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %version.addr, align 8
  %1 = load i8, ptr %0, align 1
  %2 = load ptr, ptr @deflateInit2_.my_version, align 8
  %3 = load i8, ptr %2, align 1
  %cmp3.not = icmp eq i8 %1, %3
  %4 = load i32, ptr %stream_size.addr, align 4
  %cmp7.not = icmp eq i32 %4, 112
  %or.cond = select i1 %cmp3.not, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %strm.addr, align 8
  %cmp9 = icmp eq ptr %5, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %6 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 8
  %7 = load ptr, ptr %zalloc, align 8
  %cmp13 = icmp eq ptr %7, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %8 = load ptr, ptr %strm.addr, align 8
  %zalloc16 = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 8
  store ptr @zcalloc, ptr %zalloc16, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12
  %9 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 9
  %10 = load ptr, ptr %zfree, align 8
  %cmp18 = icmp eq ptr %10, null
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %11 = load ptr, ptr %strm.addr, align 8
  %zfree21 = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 9
  store ptr @zcfree, ptr %zfree21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17
  %12 = load i32, ptr %level.addr, align 4
  %cmp23 = icmp eq i32 %12, -1
  %spec.store.select = select i1 %cmp23, i32 6, i32 %12
  store i32 %spec.store.select, ptr %level.addr, align 4
  %13 = load i32, ptr %windowBits.addr, align 4
  %cmp27 = icmp slt i32 %13, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end22
  store i32 1, ptr %noheader, align 4
  %14 = load i32, ptr %windowBits.addr, align 4
  %sub = sub nsw i32 0, %14
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end22
  %15 = load i32, ptr %memLevel.addr, align 4
  %cmp31 = icmp slt i32 %15, 1
  %16 = load i32, ptr %memLevel.addr, align 4
  %cmp34 = icmp sgt i32 %16, 9
  %or.cond1 = select i1 %cmp31, i1 true, i1 %cmp34
  %or.cond1.not = xor i1 %or.cond1, true
  %17 = load i32, ptr %method.addr, align 4
  %cmp37.not = icmp eq i32 %17, 8
  %or.cond2 = select i1 %or.cond1.not, i1 %cmp37.not, i1 false
  %or.cond2.not = xor i1 %or.cond2, true
  %18 = load i32, ptr %windowBits.addr, align 4
  %cmp40 = icmp slt i32 %18, 8
  %or.cond3 = select i1 %or.cond2.not, i1 true, i1 %cmp40
  %19 = load i32, ptr %windowBits.addr, align 4
  %cmp43 = icmp sgt i32 %19, 15
  %or.cond4 = select i1 %or.cond3, i1 true, i1 %cmp43
  %20 = load i32, ptr %level.addr, align 4
  %cmp46 = icmp slt i32 %20, 0
  %or.cond5 = select i1 %or.cond4, i1 true, i1 %cmp46
  %21 = load i32, ptr %level.addr, align 4
  %cmp49 = icmp sgt i32 %21, 9
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %cmp49
  %22 = load i32, ptr %strategy.addr, align 4
  %cmp52 = icmp slt i32 %22, 0
  %or.cond7 = select i1 %or.cond6, i1 true, i1 %cmp52
  %23 = load i32, ptr %strategy.addr, align 4
  %cmp55 = icmp sgt i32 %23, 2
  %or.cond8 = select i1 %or.cond7, i1 true, i1 %cmp55
  br i1 %or.cond8, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end30
  store i32 -2, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end30
  %24 = load ptr, ptr %strm.addr, align 8
  %zalloc59 = getelementptr inbounds %struct.z_stream_s, ptr %24, i64 0, i32 8
  %25 = load ptr, ptr %zalloc59, align 8
  %opaque60 = getelementptr inbounds %struct.z_stream_s, ptr %24, i64 0, i32 10
  %26 = load ptr, ptr %opaque60, align 8
  %call = call ptr %25(ptr noundef %26, i32 noundef 1, i32 noundef 5920) #5
  store ptr %call, ptr %s, align 8
  %cmp61 = icmp eq ptr %call, null
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end58
  store i32 -4, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end58
  %27 = load ptr, ptr %s, align 8
  %28 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 7
  store ptr %27, ptr %state, align 8
  store ptr %28, ptr %27, align 8
  %29 = load i32, ptr %noheader, align 4
  %noheader66 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 6
  store i32 %29, ptr %noheader66, align 4
  %30 = load i32, ptr %windowBits.addr, align 4
  %31 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 11
  store i32 %30, ptr %w_bits, align 4
  %shl = shl i32 1, %30
  %w_size = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 10
  store i32 %shl, ptr %w_size, align 8
  %sub69 = add i32 %shl, -1
  %32 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 12
  store i32 %sub69, ptr %w_mask, align 8
  %33 = load i32, ptr %memLevel.addr, align 4
  %add = add nsw i32 %33, 7
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 19
  store i32 %add, ptr %hash_bits, align 8
  %34 = load ptr, ptr %s, align 8
  %hash_bits70 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 19
  %35 = load i32, ptr %hash_bits70, align 8
  %shl71 = shl i32 1, %35
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 18
  store i32 %shl71, ptr %hash_size, align 4
  %sub73 = add i32 %shl71, -1
  %36 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 20
  store i32 %sub73, ptr %hash_mask, align 4
  %hash_bits74 = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 19
  %37 = load i32, ptr %hash_bits74, align 8
  %sub76 = add i32 %37, 2
  %div = udiv i32 %sub76, 3
  %38 = load ptr, ptr %s, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 21
  store i32 %div, ptr %hash_shift, align 8
  %39 = load ptr, ptr %strm.addr, align 8
  %zalloc77 = getelementptr inbounds %struct.z_stream_s, ptr %39, i64 0, i32 8
  %40 = load ptr, ptr %zalloc77, align 8
  %opaque78 = getelementptr inbounds %struct.z_stream_s, ptr %39, i64 0, i32 10
  %41 = load ptr, ptr %opaque78, align 8
  %42 = load ptr, ptr %s, align 8
  %w_size79 = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 10
  %43 = load i32, ptr %w_size79, align 8
  %call80 = call ptr %40(ptr noundef %41, i32 noundef %43, i32 noundef 2) #5
  %window = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 13
  store ptr %call80, ptr %window, align 8
  %44 = load ptr, ptr %strm.addr, align 8
  %zalloc81 = getelementptr inbounds %struct.z_stream_s, ptr %44, i64 0, i32 8
  %45 = load ptr, ptr %zalloc81, align 8
  %opaque82 = getelementptr inbounds %struct.z_stream_s, ptr %44, i64 0, i32 10
  %46 = load ptr, ptr %opaque82, align 8
  %47 = load ptr, ptr %s, align 8
  %w_size83 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 10
  %48 = load i32, ptr %w_size83, align 8
  %call84 = call ptr %45(ptr noundef %46, i32 noundef %48, i32 noundef 2) #5
  %prev = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 15
  store ptr %call84, ptr %prev, align 8
  %49 = load ptr, ptr %strm.addr, align 8
  %zalloc85 = getelementptr inbounds %struct.z_stream_s, ptr %49, i64 0, i32 8
  %50 = load ptr, ptr %zalloc85, align 8
  %opaque86 = getelementptr inbounds %struct.z_stream_s, ptr %49, i64 0, i32 10
  %51 = load ptr, ptr %opaque86, align 8
  %52 = load ptr, ptr %s, align 8
  %hash_size87 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 18
  %53 = load i32, ptr %hash_size87, align 4
  %call88 = call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 2) #5
  %head = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 16
  store ptr %call88, ptr %head, align 8
  %54 = load i32, ptr %memLevel.addr, align 4
  %add89 = add nsw i32 %54, 6
  %shl90 = shl i32 1, %add89
  %55 = load ptr, ptr %s, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 48
  store i32 %shl90, ptr %lit_bufsize, align 8
  %56 = load ptr, ptr %strm.addr, align 8
  %zalloc91 = getelementptr inbounds %struct.z_stream_s, ptr %56, i64 0, i32 8
  %57 = load ptr, ptr %zalloc91, align 8
  %opaque92 = getelementptr inbounds %struct.z_stream_s, ptr %56, i64 0, i32 10
  %58 = load ptr, ptr %opaque92, align 8
  %59 = load ptr, ptr %s, align 8
  %lit_bufsize93 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 48
  %60 = load i32, ptr %lit_bufsize93, align 8
  %call94 = call ptr %57(ptr noundef %58, i32 noundef %60, i32 noundef 4) #5
  store ptr %call94, ptr %overlay, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 2
  store ptr %call94, ptr %pending_buf, align 8
  %61 = load ptr, ptr %s, align 8
  %lit_bufsize95 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 48
  %62 = load i32, ptr %lit_bufsize95, align 8
  %conv96 = zext i32 %62 to i64
  %mul = shl nuw nsw i64 %conv96, 2
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 3
  store i64 %mul, ptr %pending_buf_size, align 8
  %63 = load ptr, ptr %s, align 8
  %window97 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 13
  %64 = load ptr, ptr %window97, align 8
  %cmp98 = icmp eq ptr %64, null
  br i1 %cmp98, label %if.then112, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %if.end64
  %65 = load ptr, ptr %s, align 8
  %prev101 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 15
  %66 = load ptr, ptr %prev101, align 8
  %cmp102 = icmp eq ptr %66, null
  br i1 %cmp102, label %if.then112, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false100
  %67 = load ptr, ptr %s, align 8
  %head105 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 16
  %68 = load ptr, ptr %head105, align 8
  %cmp106 = icmp eq ptr %68, null
  br i1 %cmp106, label %if.then112, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %69 = load ptr, ptr %s, align 8
  %pending_buf109 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 2
  %70 = load ptr, ptr %pending_buf109, align 8
  %cmp110 = icmp eq ptr %70, null
  br i1 %cmp110, label %if.then112, label %if.end115

if.then112:                                       ; preds = %lor.lhs.false108, %lor.lhs.false104, %lor.lhs.false100, %if.end64
  %71 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 8
  %72 = load ptr, ptr %strm.addr, align 8
  %msg113 = getelementptr inbounds %struct.z_stream_s, ptr %72, i64 0, i32 6
  store ptr %71, ptr %msg113, align 8
  %call114 = call i32 @deflateEnd(ptr noundef %72)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %lor.lhs.false108
  %73 = load ptr, ptr %overlay, align 8
  %74 = load ptr, ptr %s, align 8
  %lit_bufsize116 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 48
  %75 = load i32, ptr %lit_bufsize116, align 8
  %76 = lshr i32 %75, 1
  %div118 = zext i32 %76 to i64
  %add.ptr = getelementptr inbounds i16, ptr %73, i64 %div118
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 50
  store ptr %add.ptr, ptr %d_buf, align 8
  %77 = load ptr, ptr %s, align 8
  %pending_buf119 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 2
  %78 = load ptr, ptr %pending_buf119, align 8
  %lit_bufsize120 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 48
  %79 = load i32, ptr %lit_bufsize120, align 8
  %conv121 = zext i32 %79 to i64
  %mul122 = mul nuw nsw i64 %conv121, 3
  %add.ptr123 = getelementptr inbounds i8, ptr %78, i64 %mul122
  %80 = load ptr, ptr %s, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 47
  store ptr %add.ptr123, ptr %l_buf, align 8
  %81 = load i32, ptr %level.addr, align 4
  %level124 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 32
  store i32 %81, ptr %level124, align 4
  %82 = load i32, ptr %strategy.addr, align 4
  %83 = load ptr, ptr %s, align 8
  %strategy125 = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 33
  store i32 %82, ptr %strategy125, align 8
  %84 = load i32, ptr %method.addr, align 4
  %conv126 = trunc i32 %84 to i8
  %method127 = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 8
  store i8 %conv126, ptr %method127, align 1
  %85 = load ptr, ptr %strm.addr, align 8
  %call128 = call i32 @deflateReset(ptr noundef %85)
  store i32 %call128, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end115, %if.then112, %if.then63, %if.then57, %if.then11, %if.then
  %86 = load i32, ptr %retval, align 4
  ret i32 %86
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @deflateEnd(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state2, align 8
  %status3 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 1
  %4 = load i32, ptr %status3, align 8
  store i32 %4, ptr %status, align 4
  %cmp4.not = icmp eq i32 %4, 42
  %5 = load i32, ptr %status, align 4
  %cmp5.not = icmp eq i32 %5, 113
  %or.cond = select i1 %cmp4.not, i1 true, i1 %cmp5.not
  %6 = load i32, ptr %status, align 4
  %cmp7.not = icmp eq i32 %6, 666
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp7.not
  br i1 %or.cond1, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %7 = load ptr, ptr %strm.addr, align 8
  %state10 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 7
  %8 = load ptr, ptr %state10, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %pending_buf, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end9
  %10 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 9
  %11 = load ptr, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %opaque, align 8
  %state12 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 7
  %13 = load ptr, ptr %state12, align 8
  %pending_buf13 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 2
  %14 = load ptr, ptr %pending_buf13, align 8
  call void %11(ptr noundef %12, ptr noundef %14) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %15 = load ptr, ptr %strm.addr, align 8
  %state15 = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 7
  %16 = load ptr, ptr %state15, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 16
  %17 = load ptr, ptr %head, align 8
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.end14
  %18 = load ptr, ptr %strm.addr, align 8
  %zfree18 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 9
  %19 = load ptr, ptr %zfree18, align 8
  %opaque19 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 10
  %20 = load ptr, ptr %opaque19, align 8
  %state20 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 7
  %21 = load ptr, ptr %state20, align 8
  %head21 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 16
  %22 = load ptr, ptr %head21, align 8
  call void %19(ptr noundef %20, ptr noundef %22) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end14
  %23 = load ptr, ptr %strm.addr, align 8
  %state23 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 7
  %24 = load ptr, ptr %state23, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 15
  %25 = load ptr, ptr %prev, align 8
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %if.end30, label %if.then25

if.then25:                                        ; preds = %if.end22
  %26 = load ptr, ptr %strm.addr, align 8
  %zfree26 = getelementptr inbounds %struct.z_stream_s, ptr %26, i64 0, i32 9
  %27 = load ptr, ptr %zfree26, align 8
  %opaque27 = getelementptr inbounds %struct.z_stream_s, ptr %26, i64 0, i32 10
  %28 = load ptr, ptr %opaque27, align 8
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %26, i64 0, i32 7
  %29 = load ptr, ptr %state28, align 8
  %prev29 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 15
  %30 = load ptr, ptr %prev29, align 8
  call void %27(ptr noundef %28, ptr noundef %30) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end22
  %31 = load ptr, ptr %strm.addr, align 8
  %state31 = getelementptr inbounds %struct.z_stream_s, ptr %31, i64 0, i32 7
  %32 = load ptr, ptr %state31, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 13
  %33 = load ptr, ptr %window, align 8
  %tobool32.not = icmp eq ptr %33, null
  br i1 %tobool32.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end30
  %34 = load ptr, ptr %strm.addr, align 8
  %zfree34 = getelementptr inbounds %struct.z_stream_s, ptr %34, i64 0, i32 9
  %35 = load ptr, ptr %zfree34, align 8
  %opaque35 = getelementptr inbounds %struct.z_stream_s, ptr %34, i64 0, i32 10
  %36 = load ptr, ptr %opaque35, align 8
  %state36 = getelementptr inbounds %struct.z_stream_s, ptr %34, i64 0, i32 7
  %37 = load ptr, ptr %state36, align 8
  %window37 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 13
  %38 = load ptr, ptr %window37, align 8
  call void %35(ptr noundef %36, ptr noundef %38) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30
  %39 = load ptr, ptr %strm.addr, align 8
  %zfree39 = getelementptr inbounds %struct.z_stream_s, ptr %39, i64 0, i32 9
  %40 = load ptr, ptr %zfree39, align 8
  %opaque40 = getelementptr inbounds %struct.z_stream_s, ptr %39, i64 0, i32 10
  %41 = load ptr, ptr %opaque40, align 8
  %state41 = getelementptr inbounds %struct.z_stream_s, ptr %39, i64 0, i32 7
  %42 = load ptr, ptr %state41, align 8
  call void %40(ptr noundef %41, ptr noundef %42) #5
  %43 = load ptr, ptr %strm.addr, align 8
  %state42 = getelementptr inbounds %struct.z_stream_s, ptr %43, i64 0, i32 7
  store ptr null, ptr %state42, align 8
  %44 = load i32, ptr %status, align 4
  %cmp43 = icmp eq i32 %44, 113
  %cond = select i1 %cmp43, i32 -3, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then8, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateReset(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 8
  %3 = load ptr, ptr %zalloc, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %return, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 9
  %5 = load ptr, ptr %zfree, align 8
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 5
  store i64 0, ptr %total_out, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 2
  store i64 0, ptr %total_in, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 11
  store i32 2, ptr %data_type, align 8
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 7
  %8 = load ptr, ptr %state6, align 8
  store ptr %8, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 5
  store i32 0, ptr %pending, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %pending_buf, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 4
  store ptr %9, ptr %pending_out, align 8
  %10 = load ptr, ptr %s, align 8
  %noheader = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 6
  %11 = load i32, ptr %noheader, align 4
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %s, align 8
  %noheader9 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 6
  store i32 0, ptr %noheader9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %13 = load ptr, ptr %s, align 8
  %noheader11 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 6
  %14 = load i32, ptr %noheader11, align 4
  %tobool.not = icmp eq i32 %14, 0
  %cond = select i1 %tobool.not, i32 42, i32 113
  %status = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 1
  store i32 %cond, ptr %status, align 8
  %15 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 12
  store i64 1, ptr %adler, align 8
  %16 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 9
  store i32 0, ptr %last_flush, align 4
  call void @_tr_init(ptr noundef %16) #5
  call void @lm_init(ptr noundef %16)
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %lor.lhs.false4, %if.end10
  %storemerge = phi i32 [ 0, %if.end10 ], [ -2, %lor.lhs.false4 ], [ -2, %lor.lhs.false2 ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateSetDictionary(ptr noundef %strm, ptr noundef %dictionary, i32 noundef %dictLength) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %length = alloca i32, align 4
  %n = alloca i32, align 4
  %hash_head = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store i32 %dictLength, ptr %dictLength.addr, align 4
  store i32 %dictLength, ptr %length, align 4
  store i32 0, ptr %hash_head, align 4
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  %2 = load ptr, ptr %dictionary.addr, align 8
  %cmp3 = icmp eq ptr %2, null
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 7
  %4 = load ptr, ptr %state5, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %status, align 8
  %cmp6.not = icmp eq i32 %5, 42
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load ptr, ptr %strm.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 7
  %7 = load ptr, ptr %state7, align 8
  store ptr %7, ptr %s, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 12
  %8 = load i64, ptr %adler, align 8
  %9 = load ptr, ptr %dictionary.addr, align 8
  %10 = load i32, ptr %dictLength.addr, align 4
  %call = call i64 @adler32(i64 noundef %8, ptr noundef %9, i32 noundef %10) #5
  %11 = load ptr, ptr %strm.addr, align 8
  %adler8 = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 12
  store i64 %call, ptr %adler8, align 8
  %12 = load i32, ptr %length, align 4
  %cmp9 = icmp ult i32 %12, 3
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %13 = load i32, ptr %length, align 4
  %14 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 10
  %15 = load i32, ptr %w_size, align 8
  %sub = add i32 %15, -262
  %cmp12 = icmp ugt i32 %13, %sub
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  %16 = load ptr, ptr %s, align 8
  %w_size14 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 10
  %17 = load i32, ptr %w_size14, align 8
  %sub15 = add i32 %17, -262
  store i32 %sub15, ptr %length, align 4
  %18 = load i32, ptr %dictLength.addr, align 4
  %sub16 = sub i32 %18, %sub15
  %19 = load ptr, ptr %dictionary.addr, align 8
  %idx.ext = zext i32 %sub16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %idx.ext
  store ptr %add.ptr, ptr %dictionary.addr, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %20 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 13
  %21 = load ptr, ptr %window, align 8
  %22 = load ptr, ptr %dictionary.addr, align 8
  %23 = load i32, ptr %length, align 4
  %conv = zext i32 %23 to i64
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %21, i1 false, i1 true, i1 false)
  %call19 = call ptr @__memcpy_chk(ptr noundef %21, ptr noundef %22, i64 noundef %conv, i64 noundef %24) #5
  %25 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 26
  store i32 %23, ptr %strstart, align 4
  %26 = load i32, ptr %length, align 4
  %conv20 = zext i32 %26 to i64
  %block_start = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 22
  store i64 %conv20, ptr %block_start, align 8
  %27 = load ptr, ptr %s, align 8
  %window21 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 13
  %28 = load ptr, ptr %window21, align 8
  %29 = load i8, ptr %28, align 1
  %conv22 = zext i8 %29 to i32
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 17
  store i32 %conv22, ptr %ins_h, align 8
  %30 = load ptr, ptr %s, align 8
  %ins_h23 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 17
  %31 = load i32, ptr %ins_h23, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 21
  %32 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %31, %32
  %window24 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 13
  %33 = load ptr, ptr %window24, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %33, i64 1
  %34 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %34 to i32
  %xor = xor i32 %shl, %conv26
  %35 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 20
  %36 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %36
  %ins_h27 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 17
  store i32 %and, ptr %ins_h27, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end17
  %storemerge = phi i32 [ 0, %if.end17 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %n, align 4
  %37 = load i32, ptr %length, align 4
  %sub28 = add i32 %37, -3
  %cmp29.not = icmp ugt i32 %storemerge, %sub28
  br i1 %cmp29.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %s, align 8
  %ins_h31 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 17
  %39 = load i32, ptr %ins_h31, align 8
  %hash_shift32 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 21
  %40 = load i32, ptr %hash_shift32, align 8
  %shl33 = shl i32 %39, %40
  %window34 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 13
  %41 = load ptr, ptr %window34, align 8
  %42 = load i32, ptr %n, align 4
  %add = add i32 %42, 2
  %idxprom = zext i32 %add to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %41, i64 %idxprom
  %43 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %43 to i32
  %xor37 = xor i32 %shl33, %conv36
  %44 = load ptr, ptr %s, align 8
  %hash_mask38 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 20
  %45 = load i32, ptr %hash_mask38, align 4
  %and39 = and i32 %xor37, %45
  %ins_h40 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 17
  store i32 %and39, ptr %ins_h40, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 16
  %46 = load ptr, ptr %head, align 8
  %47 = load ptr, ptr %s, align 8
  %ins_h41 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 17
  %48 = load i32, ptr %ins_h41, align 8
  %idxprom42 = zext i32 %48 to i64
  %arrayidx43 = getelementptr inbounds i16, ptr %46, i64 %idxprom42
  %49 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %49 to i32
  store i32 %conv44, ptr %hash_head, align 4
  %50 = load ptr, ptr %s, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 15
  %51 = load ptr, ptr %prev, align 8
  %52 = load i32, ptr %n, align 4
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 12
  %53 = load i32, ptr %w_mask, align 8
  %and46 = and i32 %52, %53
  %idxprom47 = zext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %51, i64 %idxprom47
  store i16 %49, ptr %arrayidx48, align 2
  %54 = load i32, ptr %n, align 4
  %conv49 = trunc i32 %54 to i16
  %55 = load ptr, ptr %s, align 8
  %head50 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 16
  %56 = load ptr, ptr %head50, align 8
  %ins_h51 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 17
  %57 = load i32, ptr %ins_h51, align 8
  %idxprom52 = zext i32 %57 to i64
  %arrayidx53 = getelementptr inbounds i16, ptr %56, i64 %idxprom52
  store i16 %conv49, ptr %arrayidx53, align 2
  %58 = load i32, ptr %n, align 4
  %inc = add i32 %58, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %59 = load i32, ptr %hash_head, align 4
  %tobool.not = icmp eq i32 %59, 0
  %spec.store.select = select i1 %tobool.not, i32 %59, i32 0
  store i32 %spec.store.select, ptr %hash_head, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare void @_tr_init(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @lm_init(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 10
  %0 = load i32, ptr %w_size, align 8
  %conv = zext i32 %0 to i64
  %mul = shl nuw nsw i64 %conv, 1
  %window_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 14
  store i64 %mul, ptr %window_size, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 16
  %2 = load ptr, ptr %head, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 18
  %3 = load i32, ptr %hash_size, align 4
  %sub = add i32 %3, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  %4 = load ptr, ptr %s.addr, align 8
  %head1 = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 16
  %5 = load ptr, ptr %head1, align 8
  %hash_size2 = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 18
  %6 = load i32, ptr %hash_size2, align 4
  %sub3 = add i32 %6, -1
  %conv4 = zext i32 %sub3 to i64
  %mul5 = shl nuw nsw i64 %conv4, 1
  %7 = load ptr, ptr %s.addr, align 8
  %head6 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 16
  %8 = load ptr, ptr %head6, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %5, i32 noundef 0, i64 noundef %mul5, i64 noundef %9) #5
  %level = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 32
  %10 = load i32, ptr %level, align 4
  %idxprom7 = sext i32 %10 to i64
  %max_lazy = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom7, i32 1
  %11 = load i16, ptr %max_lazy, align 2
  %conv9 = zext i16 %11 to i32
  %12 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 31
  store i32 %conv9, ptr %max_lazy_match, align 8
  %level10 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 32
  %13 = load i32, ptr %level10, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom11
  %14 = load i16, ptr %arrayidx12, align 8
  %conv13 = zext i16 %14 to i32
  %15 = load ptr, ptr %s.addr, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 34
  store i32 %conv13, ptr %good_match, align 4
  %level14 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 32
  %16 = load i32, ptr %level14, align 4
  %idxprom15 = sext i32 %16 to i64
  %nice_length = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom15, i32 2
  %17 = load i16, ptr %nice_length, align 4
  %conv17 = zext i16 %17 to i32
  %18 = load ptr, ptr %s.addr, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 35
  store i32 %conv17, ptr %nice_match, align 8
  %level18 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 32
  %19 = load i32, ptr %level18, align 4
  %idxprom19 = sext i32 %19 to i64
  %max_chain = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom19, i32 3
  %20 = load i16, ptr %max_chain, align 2
  %conv21 = zext i16 %20 to i32
  %21 = load ptr, ptr %s.addr, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 30
  store i32 %conv21, ptr %max_chain_length, align 4
  %strstart = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 26
  store i32 0, ptr %strstart, align 4
  %block_start = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 22
  store i64 0, ptr %block_start, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 28
  store i32 0, ptr %lookahead, align 4
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 29
  store i32 2, ptr %prev_length, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 23
  store i32 2, ptr %match_length, align 8
  %23 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 25
  store i32 0, ptr %match_available, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 17
  store i32 0, ptr %ins_h, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateParams(ptr noundef %strm, i32 noundef %level, i32 noundef %strategy) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  store i32 0, ptr %err, align 4
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state2, align 8
  store ptr %3, ptr %s, align 8
  %4 = load i32, ptr %level.addr, align 4
  %cmp3 = icmp eq i32 %4, -1
  %spec.store.select = select i1 %cmp3, i32 6, i32 %4
  store i32 %spec.store.select, ptr %level.addr, align 4
  %5 = load i32, ptr %level.addr, align 4
  %cmp6 = icmp slt i32 %5, 0
  %6 = load i32, ptr %level.addr, align 4
  %cmp8 = icmp sgt i32 %6, 9
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  %7 = load i32, ptr %strategy.addr, align 4
  %cmp10 = icmp slt i32 %7, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp10
  %8 = load i32, ptr %strategy.addr, align 4
  %cmp12 = icmp sgt i32 %8, 2
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp12
  br i1 %or.cond2, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %9 = load ptr, ptr %s, align 8
  %level15 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 32
  %10 = load i32, ptr %level15, align 4
  %idxprom = sext i32 %10 to i64
  %func16 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom, i32 4
  %11 = load ptr, ptr %func16, align 8
  %12 = load i32, ptr %level.addr, align 4
  %idxprom17 = sext i32 %12 to i64
  %func19 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom17, i32 4
  %13 = load ptr, ptr %func19, align 8
  %cmp20.not = icmp eq ptr %11, %13
  br i1 %cmp20.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %14 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 2
  %15 = load i64, ptr %total_in, align 8
  %cmp21.not = icmp eq i64 %15, 0
  br i1 %cmp21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflate(ptr noundef %16, i32 noundef 1)
  store i32 %call, ptr %err, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true, %if.end14
  %17 = load ptr, ptr %s, align 8
  %level24 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 32
  %18 = load i32, ptr %level24, align 4
  %19 = load i32, ptr %level.addr, align 4
  %cmp25.not = icmp eq i32 %18, %19
  br i1 %cmp25.not, label %if.end39, label %if.then26

if.then26:                                        ; preds = %if.end23
  %20 = load i32, ptr %level.addr, align 4
  %21 = load ptr, ptr %s, align 8
  %level27 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 32
  store i32 %20, ptr %level27, align 4
  %idxprom28 = sext i32 %20 to i64
  %max_lazy = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom28, i32 1
  %22 = load i16, ptr %max_lazy, align 2
  %conv = zext i16 %22 to i32
  %23 = load ptr, ptr %s, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 31
  store i32 %conv, ptr %max_lazy_match, align 8
  %24 = load i32, ptr %level.addr, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom30
  %25 = load i16, ptr %arrayidx31, align 8
  %conv32 = zext i16 %25 to i32
  %26 = load ptr, ptr %s, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 34
  store i32 %conv32, ptr %good_match, align 4
  %27 = load i32, ptr %level.addr, align 4
  %idxprom33 = sext i32 %27 to i64
  %nice_length = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom33, i32 2
  %28 = load i16, ptr %nice_length, align 4
  %conv35 = zext i16 %28 to i32
  %29 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 35
  store i32 %conv35, ptr %nice_match, align 8
  %30 = load i32, ptr %level.addr, align 4
  %idxprom36 = sext i32 %30 to i64
  %max_chain = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom36, i32 3
  %31 = load i16, ptr %max_chain, align 2
  %conv38 = zext i16 %31 to i32
  %32 = load ptr, ptr %s, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 30
  store i32 %conv38, ptr %max_chain_length, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %if.end23
  %33 = load i32, ptr %strategy.addr, align 4
  %34 = load ptr, ptr %s, align 8
  %strategy40 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 33
  store i32 %33, ptr %strategy40, align 8
  %35 = load i32, ptr %err, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then13, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflate(ptr noundef %strm, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %old_flush = alloca i32, align 4
  %s = alloca ptr, align 8
  %header = alloca i32, align 4
  %bstate = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  %2 = load i32, ptr %flush.addr, align 4
  %cmp3 = icmp sgt i32 %2, 4
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp3
  %3 = load i32, ptr %flush.addr, align 4
  %cmp5 = icmp slt i32 %3, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %strm.addr, align 8
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %state6, align 8
  store ptr %5, ptr %s, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %next_out, align 8
  %cmp7 = icmp eq ptr %6, null
  br i1 %cmp7, label %if.then15, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %7 = load ptr, ptr %strm.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %cmp9 = icmp eq ptr %8, null
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false11

land.lhs.true:                                    ; preds = %lor.lhs.false8
  %9 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 1
  %10 = load i32, ptr %avail_in, align 8
  %cmp10.not = icmp eq i32 %10, 0
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.then15

lor.lhs.false11:                                  ; preds = %land.lhs.true, %lor.lhs.false8
  %11 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 1
  %12 = load i32, ptr %status, align 8
  %cmp12 = icmp ne i32 %12, 666
  %13 = load i32, ptr %flush.addr, align 4
  %cmp14.not = icmp eq i32 %13, 4
  %or.cond2 = select i1 %cmp12, i1 true, i1 %cmp14.not
  br i1 %or.cond2, label %if.end16, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false11, %land.lhs.true, %if.end
  %14 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 8
  %15 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 6
  store ptr %14, ptr %msg, align 8
  store i32 -2, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %lor.lhs.false11
  %16 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %16, i64 0, i32 4
  %17 = load i32, ptr %avail_out, align 8
  %cmp17 = icmp eq i32 %17, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %18 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %19 = load ptr, ptr %strm.addr, align 8
  %msg19 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 6
  store ptr %18, ptr %msg19, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %20 = load ptr, ptr %strm.addr, align 8
  %21 = load ptr, ptr %s, align 8
  store ptr %20, ptr %21, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 9
  %22 = load i32, ptr %last_flush, align 4
  store i32 %22, ptr %old_flush, align 4
  %23 = load i32, ptr %flush.addr, align 4
  %last_flush22 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 9
  store i32 %23, ptr %last_flush22, align 4
  %24 = load ptr, ptr %s, align 8
  %status23 = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 1
  %25 = load i32, ptr %status23, align 8
  %cmp24 = icmp eq i32 %25, 42
  br i1 %cmp24, label %if.then25, label %if.end47

if.then25:                                        ; preds = %if.end20
  %26 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 11
  %27 = load i32, ptr %w_bits, align 4
  %sub = shl i32 %27, 12
  %shl26 = add i32 %sub, -30720
  store i32 %shl26, ptr %header, align 4
  %level = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 32
  %28 = load i32, ptr %level, align 4
  %sub27 = add nsw i32 %28, -1
  %shr = ashr i32 %sub27, 1
  %cmp28 = icmp ugt i32 %sub27, 7
  %spec.select = select i1 %cmp28, i32 3, i32 %shr
  %shl31 = shl i32 %spec.select, 6
  %29 = load i32, ptr %header, align 4
  %or = or i32 %29, %shl31
  store i32 %or, ptr %header, align 4
  %30 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 26
  %31 = load i32, ptr %strstart, align 4
  %cmp32.not = icmp eq i32 %31, 0
  br i1 %cmp32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.then25
  %32 = load i32, ptr %header, align 4
  %or34 = or i32 %32, 32
  store i32 %or34, ptr %header, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then25
  %33 = load i32, ptr %header, align 4
  %rem = urem i32 %33, 31
  %sub36 = xor i32 %rem, 31
  %add37 = add i32 %33, %sub36
  store i32 %add37, ptr %header, align 4
  %34 = load ptr, ptr %s, align 8
  %status38 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 1
  store i32 113, ptr %status38, align 8
  call void @putShortMSB(ptr noundef %34, i32 noundef %add37)
  %strstart39 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 26
  %35 = load i32, ptr %strstart39, align 4
  %cmp40.not = icmp eq i32 %35, 0
  br i1 %cmp40.not, label %if.end45, label %if.then41

if.then41:                                        ; preds = %if.end35
  %36 = load ptr, ptr %s, align 8
  %37 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %37, i64 0, i32 12
  %38 = load i64, ptr %adler, align 8
  %shr42 = lshr i64 %38, 16
  %conv = trunc i64 %shr42 to i32
  call void @putShortMSB(ptr noundef %36, i32 noundef %conv)
  %39 = load ptr, ptr %s, align 8
  %40 = load ptr, ptr %strm.addr, align 8
  %adler43 = getelementptr inbounds %struct.z_stream_s, ptr %40, i64 0, i32 12
  %41 = load i64, ptr %adler43, align 8
  %42 = trunc i64 %41 to i32
  %conv44 = and i32 %42, 65535
  call void @putShortMSB(ptr noundef %39, i32 noundef %conv44)
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end35
  %43 = load ptr, ptr %strm.addr, align 8
  %adler46 = getelementptr inbounds %struct.z_stream_s, ptr %43, i64 0, i32 12
  store i64 1, ptr %adler46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.end20
  %44 = load ptr, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 5
  %45 = load i32, ptr %pending, align 8
  %cmp48.not = icmp eq i32 %45, 0
  br i1 %cmp48.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end47
  %46 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %46)
  %avail_out51 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 4
  %47 = load i32, ptr %avail_out51, align 8
  %cmp52 = icmp eq i32 %47, 0
  br i1 %cmp52, label %if.then54, label %if.end69

if.then54:                                        ; preds = %if.then50
  %48 = load ptr, ptr %s, align 8
  %last_flush55 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 9
  store i32 -1, ptr %last_flush55, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end47
  %49 = load ptr, ptr %strm.addr, align 8
  %avail_in57 = getelementptr inbounds %struct.z_stream_s, ptr %49, i64 0, i32 1
  %50 = load i32, ptr %avail_in57, align 8
  %cmp58 = icmp eq i32 %50, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end69

land.lhs.true60:                                  ; preds = %if.else
  %51 = load i32, ptr %flush.addr, align 4
  %52 = load i32, ptr %old_flush, align 4
  %cmp61.not = icmp sgt i32 %51, %52
  %53 = load i32, ptr %flush.addr, align 4
  %cmp64.not = icmp eq i32 %53, 4
  %or.cond3 = select i1 %cmp61.not, i1 true, i1 %cmp64.not
  br i1 %or.cond3, label %if.end69, label %if.then66

if.then66:                                        ; preds = %land.lhs.true60
  %54 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %55 = load ptr, ptr %strm.addr, align 8
  %msg67 = getelementptr inbounds %struct.z_stream_s, ptr %55, i64 0, i32 6
  store ptr %54, ptr %msg67, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.else, %land.lhs.true60, %if.then50
  %56 = load ptr, ptr %s, align 8
  %status70 = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 1
  %57 = load i32, ptr %status70, align 8
  %cmp71 = icmp eq i32 %57, 666
  br i1 %cmp71, label %land.lhs.true73, label %if.end79

land.lhs.true73:                                  ; preds = %if.end69
  %58 = load ptr, ptr %strm.addr, align 8
  %avail_in74 = getelementptr inbounds %struct.z_stream_s, ptr %58, i64 0, i32 1
  %59 = load i32, ptr %avail_in74, align 8
  %cmp75.not = icmp eq i32 %59, 0
  br i1 %cmp75.not, label %if.end79, label %if.then77

if.then77:                                        ; preds = %land.lhs.true73
  %60 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %61 = load ptr, ptr %strm.addr, align 8
  %msg78 = getelementptr inbounds %struct.z_stream_s, ptr %61, i64 0, i32 6
  store ptr %60, ptr %msg78, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %land.lhs.true73, %if.end69
  %62 = load ptr, ptr %strm.addr, align 8
  %avail_in80 = getelementptr inbounds %struct.z_stream_s, ptr %62, i64 0, i32 1
  %63 = load i32, ptr %avail_in80, align 8
  %cmp81.not = icmp eq i32 %63, 0
  br i1 %cmp81.not, label %lor.lhs.false83, label %if.then93

lor.lhs.false83:                                  ; preds = %if.end79
  %64 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 28
  %65 = load i32, ptr %lookahead, align 4
  %cmp84.not = icmp eq i32 %65, 0
  br i1 %cmp84.not, label %lor.lhs.false86, label %if.then93

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %66 = load i32, ptr %flush.addr, align 4
  %cmp87.not = icmp eq i32 %66, 0
  br i1 %cmp87.not, label %if.end144, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %lor.lhs.false86
  %67 = load ptr, ptr %s, align 8
  %status90 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 1
  %68 = load i32, ptr %status90, align 8
  %cmp91.not = icmp eq i32 %68, 666
  br i1 %cmp91.not, label %if.end144, label %if.then93

if.then93:                                        ; preds = %land.lhs.true89, %lor.lhs.false83, %if.end79
  %69 = load ptr, ptr %s, align 8
  %level94 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 32
  %70 = load i32, ptr %level94, align 4
  %idxprom = sext i32 %70 to i64
  %func = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom, i32 4
  %71 = load ptr, ptr %func, align 8
  %72 = load i32, ptr %flush.addr, align 4
  %call = call i32 %71(ptr noundef %69, i32 noundef %72) #5
  store i32 %call, ptr %bstate, align 4
  %cmp95 = icmp eq i32 %call, 2
  %73 = load i32, ptr %bstate, align 4
  %cmp98 = icmp eq i32 %73, 3
  %or.cond4 = select i1 %cmp95, i1 true, i1 %cmp98
  br i1 %or.cond4, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.then93
  %74 = load ptr, ptr %s, align 8
  %status101 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 1
  store i32 666, ptr %status101, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then93, %if.then100
  %75 = load i32, ptr %bstate, align 4
  %cmp103 = icmp eq i32 %75, 0
  %76 = load i32, ptr %bstate, align 4
  %cmp106 = icmp eq i32 %76, 2
  %or.cond5 = select i1 %cmp103, i1 true, i1 %cmp106
  br i1 %or.cond5, label %if.then108, label %if.end115

if.then108:                                       ; preds = %if.end102
  %77 = load ptr, ptr %strm.addr, align 8
  %avail_out109 = getelementptr inbounds %struct.z_stream_s, ptr %77, i64 0, i32 4
  %78 = load i32, ptr %avail_out109, align 8
  %cmp110 = icmp eq i32 %78, 0
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.then108
  %79 = load ptr, ptr %s, align 8
  %last_flush113 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 9
  store i32 -1, ptr %last_flush113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.then108
  store i32 0, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.end102
  %80 = load i32, ptr %bstate, align 4
  %cmp116 = icmp eq i32 %80, 1
  br i1 %cmp116, label %if.then118, label %if.end144

if.then118:                                       ; preds = %if.end115
  %81 = load i32, ptr %flush.addr, align 4
  %cmp119 = icmp eq i32 %81, 1
  br i1 %cmp119, label %if.then121, label %if.else122

if.then121:                                       ; preds = %if.then118
  %82 = load ptr, ptr %s, align 8
  call void @_tr_align(ptr noundef %82) #5
  br label %if.end136

if.else122:                                       ; preds = %if.then118
  %83 = load ptr, ptr %s, align 8
  call void @_tr_stored_block(ptr noundef %83, ptr noundef null, i64 noundef 0, i32 noundef 0) #5
  %84 = load i32, ptr %flush.addr, align 4
  %cmp123 = icmp eq i32 %84, 3
  br i1 %cmp123, label %if.then125, label %if.end136

if.then125:                                       ; preds = %if.else122
  %85 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 16
  %86 = load ptr, ptr %head, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 18
  %87 = load i32, ptr %hash_size, align 4
  %sub126 = add i32 %87, -1
  %idxprom127 = zext i32 %sub126 to i64
  %arrayidx128 = getelementptr inbounds i16, ptr %86, i64 %idxprom127
  store i16 0, ptr %arrayidx128, align 2
  %88 = load ptr, ptr %s, align 8
  %head129 = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 16
  %89 = load ptr, ptr %head129, align 8
  %hash_size130 = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 18
  %90 = load i32, ptr %hash_size130, align 4
  %sub131 = add i32 %90, -1
  %conv132 = zext i32 %sub131 to i64
  %mul = shl nuw nsw i64 %conv132, 1
  %91 = load ptr, ptr %s, align 8
  %head133 = getelementptr inbounds %struct.internal_state, ptr %91, i64 0, i32 16
  %92 = load ptr, ptr %head133, align 8
  %93 = call i64 @llvm.objectsize.i64.p0(ptr %92, i1 false, i1 true, i1 false)
  %call134 = call ptr @__memset_chk(ptr noundef %89, i32 noundef 0, i64 noundef %mul, i64 noundef %93) #5
  br label %if.end136

if.end136:                                        ; preds = %if.else122, %if.then125, %if.then121
  %94 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %94)
  %avail_out137 = getelementptr inbounds %struct.z_stream_s, ptr %94, i64 0, i32 4
  %95 = load i32, ptr %avail_out137, align 8
  %cmp138 = icmp eq i32 %95, 0
  br i1 %cmp138, label %if.then140, label %if.end144

if.then140:                                       ; preds = %if.end136
  %96 = load ptr, ptr %s, align 8
  %last_flush141 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 9
  store i32 -1, ptr %last_flush141, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.end115, %if.end136, %land.lhs.true89, %lor.lhs.false86
  %97 = load i32, ptr %flush.addr, align 4
  %cmp145.not = icmp eq i32 %97, 4
  br i1 %cmp145.not, label %if.end148, label %if.then147

if.then147:                                       ; preds = %if.end144
  store i32 0, ptr %retval, align 4
  br label %return

if.end148:                                        ; preds = %if.end144
  %98 = load ptr, ptr %s, align 8
  %noheader = getelementptr inbounds %struct.internal_state, ptr %98, i64 0, i32 6
  %99 = load i32, ptr %noheader, align 4
  %tobool.not = icmp eq i32 %99, 0
  br i1 %tobool.not, label %if.end150, label %if.then149

if.then149:                                       ; preds = %if.end148
  store i32 1, ptr %retval, align 4
  br label %return

if.end150:                                        ; preds = %if.end148
  %100 = load ptr, ptr %s, align 8
  %101 = load ptr, ptr %strm.addr, align 8
  %adler151 = getelementptr inbounds %struct.z_stream_s, ptr %101, i64 0, i32 12
  %102 = load i64, ptr %adler151, align 8
  %shr152 = lshr i64 %102, 16
  %conv153 = trunc i64 %shr152 to i32
  call void @putShortMSB(ptr noundef %100, i32 noundef %conv153)
  %103 = load ptr, ptr %s, align 8
  %104 = load ptr, ptr %strm.addr, align 8
  %adler154 = getelementptr inbounds %struct.z_stream_s, ptr %104, i64 0, i32 12
  %105 = load i64, ptr %adler154, align 8
  %106 = trunc i64 %105 to i32
  %conv156 = and i32 %106, 65535
  call void @putShortMSB(ptr noundef %103, i32 noundef %conv156)
  call void @flush_pending(ptr noundef %104)
  %107 = load ptr, ptr %s, align 8
  %noheader157 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 6
  store i32 -1, ptr %noheader157, align 4
  %pending158 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 5
  %108 = load i32, ptr %pending158, align 8
  %cmp159.not = icmp eq i32 %108, 0
  %cond = zext i1 %cmp159.not to i32
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end150, %if.then149, %if.then147, %if.then140, %if.end114, %if.then77, %if.then66, %if.then54, %if.then18, %if.then15, %if.then
  %109 = load i32, ptr %retval, align 4
  ret i32 %109
}

; Function Attrs: nounwind ssp uwtable
define internal void @putShortMSB(ptr noundef %s, i32 noundef %b) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %b, ptr %b.addr, align 4
  %shr = lshr i32 %b, 8
  %conv = trunc i32 %shr to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 2
  %0 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 5
  %1 = load i32, ptr %pending, align 8
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i32, ptr %b.addr, align 4
  %conv1 = trunc i32 %2 to i8
  %3 = load ptr, ptr %s.addr, align 8
  %pending_buf2 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %pending_buf2, align 8
  %pending3 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %pending3, align 8
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, ptr %pending3, align 8
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i64 %idxprom5
  store i8 %conv1, ptr %arrayidx6, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @flush_pending(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 7
  %0 = load ptr, ptr %state, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %1 = load i32, ptr %pending, align 8
  store i32 %1, ptr %len, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 4
  %2 = load i32, ptr %avail_out, align 8
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %strm.addr, align 8
  %avail_out1 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 4
  %4 = load i32, ptr %avail_out1, align 8
  store i32 %4, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %len, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.end25, label %if.end4

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 3
  %7 = load ptr, ptr %next_out, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %state5, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %pending_out, align 8
  %10 = load i32, ptr %len, align 4
  %conv = zext i32 %10 to i64
  %11 = load ptr, ptr %strm.addr, align 8
  %next_out6 = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 3
  %12 = load ptr, ptr %next_out6, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %7, ptr noundef %9, i64 noundef %conv, i64 noundef %13) #5
  %14 = load i32, ptr %len, align 4
  %next_out7 = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %next_out7, align 8
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %idx.ext
  store ptr %add.ptr, ptr %next_out7, align 8
  %16 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %16, i64 0, i32 7
  %17 = load ptr, ptr %state8, align 8
  %pending_out9 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 4
  %18 = load ptr, ptr %pending_out9, align 8
  %idx.ext10 = zext i32 %14 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %18, i64 %idx.ext10
  store ptr %add.ptr11, ptr %pending_out9, align 8
  %19 = load i32, ptr %len, align 4
  %conv12 = zext i32 %19 to i64
  %20 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %20, i64 0, i32 5
  %21 = load i64, ptr %total_out, align 8
  %add = add i64 %21, %conv12
  store i64 %add, ptr %total_out, align 8
  %22 = load i32, ptr %len, align 4
  %avail_out13 = getelementptr inbounds %struct.z_stream_s, ptr %20, i64 0, i32 4
  %23 = load i32, ptr %avail_out13, align 8
  %sub = sub i32 %23, %22
  store i32 %sub, ptr %avail_out13, align 8
  %24 = load ptr, ptr %strm.addr, align 8
  %state14 = getelementptr inbounds %struct.z_stream_s, ptr %24, i64 0, i32 7
  %25 = load ptr, ptr %state14, align 8
  %pending15 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 5
  %26 = load i32, ptr %pending15, align 8
  %sub16 = sub i32 %26, %22
  store i32 %sub16, ptr %pending15, align 8
  %27 = load ptr, ptr %strm.addr, align 8
  %state17 = getelementptr inbounds %struct.z_stream_s, ptr %27, i64 0, i32 7
  %28 = load ptr, ptr %state17, align 8
  %pending18 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 5
  %29 = load i32, ptr %pending18, align 8
  %cmp19 = icmp eq i32 %29, 0
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end4
  %30 = load ptr, ptr %strm.addr, align 8
  %state22 = getelementptr inbounds %struct.z_stream_s, ptr %30, i64 0, i32 7
  %31 = load ptr, ptr %state22, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 2
  %32 = load ptr, ptr %pending_buf, align 8
  %pending_out24 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 4
  store ptr %32, ptr %pending_out24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then21, %if.end4
  ret void
}

declare void @_tr_align(ptr noundef) #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @deflateCopy(ptr noundef %dest, ptr noundef %source) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %ds = alloca ptr, align 8
  %ss = alloca ptr, align 8
  %overlay = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  %cmp = icmp eq ptr %source, null
  %0 = load ptr, ptr %dest.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %source.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp3 = icmp eq ptr %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %source.addr, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 7
  %4 = load ptr, ptr %state4, align 8
  store ptr %4, ptr %ss, align 8
  %5 = load ptr, ptr %dest.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %3, i64 112, i1 false)
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 8
  %6 = load ptr, ptr %zalloc, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %opaque, align 8
  %call = call ptr %6(ptr noundef %7, i32 noundef 1, i32 noundef 5920) #5
  store ptr %call, ptr %ds, align 8
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %ds, align 8
  %9 = load ptr, ptr %dest.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 7
  store ptr %8, ptr %state8, align 8
  %10 = load ptr, ptr %ss, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5920) %8, ptr noundef nonnull align 8 dereferenceable(5920) %10, i64 5920, i1 false)
  store ptr %9, ptr %8, align 8
  %zalloc9 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %zalloc9, align 8
  %12 = load ptr, ptr %dest.addr, align 8
  %opaque10 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 10
  %13 = load ptr, ptr %opaque10, align 8
  %14 = load ptr, ptr %ds, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 10
  %15 = load i32, ptr %w_size, align 8
  %call11 = call ptr %11(ptr noundef %13, i32 noundef %15, i32 noundef 2) #5
  %window = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 13
  store ptr %call11, ptr %window, align 8
  %16 = load ptr, ptr %dest.addr, align 8
  %zalloc12 = getelementptr inbounds %struct.z_stream_s, ptr %16, i64 0, i32 8
  %17 = load ptr, ptr %zalloc12, align 8
  %opaque13 = getelementptr inbounds %struct.z_stream_s, ptr %16, i64 0, i32 10
  %18 = load ptr, ptr %opaque13, align 8
  %19 = load ptr, ptr %ds, align 8
  %w_size14 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 10
  %20 = load i32, ptr %w_size14, align 8
  %call15 = call ptr %17(ptr noundef %18, i32 noundef %20, i32 noundef 2) #5
  %prev = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 15
  store ptr %call15, ptr %prev, align 8
  %21 = load ptr, ptr %dest.addr, align 8
  %zalloc16 = getelementptr inbounds %struct.z_stream_s, ptr %21, i64 0, i32 8
  %22 = load ptr, ptr %zalloc16, align 8
  %opaque17 = getelementptr inbounds %struct.z_stream_s, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %opaque17, align 8
  %24 = load ptr, ptr %ds, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 18
  %25 = load i32, ptr %hash_size, align 4
  %call18 = call ptr %22(ptr noundef %23, i32 noundef %25, i32 noundef 2) #5
  %head = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 16
  store ptr %call18, ptr %head, align 8
  %26 = load ptr, ptr %dest.addr, align 8
  %zalloc19 = getelementptr inbounds %struct.z_stream_s, ptr %26, i64 0, i32 8
  %27 = load ptr, ptr %zalloc19, align 8
  %opaque20 = getelementptr inbounds %struct.z_stream_s, ptr %26, i64 0, i32 10
  %28 = load ptr, ptr %opaque20, align 8
  %29 = load ptr, ptr %ds, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 48
  %30 = load i32, ptr %lit_bufsize, align 8
  %call21 = call ptr %27(ptr noundef %28, i32 noundef %30, i32 noundef 4) #5
  store ptr %call21, ptr %overlay, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 2
  store ptr %call21, ptr %pending_buf, align 8
  %31 = load ptr, ptr %ds, align 8
  %window22 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 13
  %32 = load ptr, ptr %window22, align 8
  %cmp23 = icmp eq ptr %32, null
  br i1 %cmp23, label %if.then33, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end7
  %33 = load ptr, ptr %ds, align 8
  %prev25 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 15
  %34 = load ptr, ptr %prev25, align 8
  %cmp26 = icmp eq ptr %34, null
  br i1 %cmp26, label %if.then33, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %35 = load ptr, ptr %ds, align 8
  %head28 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 16
  %36 = load ptr, ptr %head28, align 8
  %cmp29 = icmp eq ptr %36, null
  br i1 %cmp29, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %37 = load ptr, ptr %ds, align 8
  %pending_buf31 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 2
  %38 = load ptr, ptr %pending_buf31, align 8
  %cmp32 = icmp eq ptr %38, null
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %if.end7
  %39 = load ptr, ptr %dest.addr, align 8
  %call34 = call i32 @deflateEnd(ptr noundef %39)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false30
  %40 = load ptr, ptr %ds, align 8
  %window36 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 13
  %41 = load ptr, ptr %window36, align 8
  %42 = load ptr, ptr %ss, align 8
  %window37 = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 13
  %43 = load ptr, ptr %window37, align 8
  %w_size38 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 10
  %44 = load i32, ptr %w_size38, align 8
  %mul = shl i32 %44, 1
  %conv = zext i32 %mul to i64
  %45 = load ptr, ptr %ds, align 8
  %window40 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 13
  %46 = load ptr, ptr %window40, align 8
  %47 = call i64 @llvm.objectsize.i64.p0(ptr %46, i1 false, i1 true, i1 false)
  %call41 = call ptr @__memcpy_chk(ptr noundef %41, ptr noundef %43, i64 noundef %conv, i64 noundef %47) #5
  %prev42 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 15
  %48 = load ptr, ptr %prev42, align 8
  %49 = load ptr, ptr %ss, align 8
  %prev43 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 15
  %50 = load ptr, ptr %prev43, align 8
  %51 = load ptr, ptr %ds, align 8
  %w_size44 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 10
  %52 = load i32, ptr %w_size44, align 8
  %conv45 = zext i32 %52 to i64
  %mul46 = shl nuw nsw i64 %conv45, 1
  %prev47 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 15
  %53 = load ptr, ptr %prev47, align 8
  %54 = call i64 @llvm.objectsize.i64.p0(ptr %53, i1 false, i1 true, i1 false)
  %call48 = call ptr @__memcpy_chk(ptr noundef %48, ptr noundef %50, i64 noundef %mul46, i64 noundef %54) #5
  %55 = load ptr, ptr %ds, align 8
  %head49 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 16
  %56 = load ptr, ptr %head49, align 8
  %57 = load ptr, ptr %ss, align 8
  %head50 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 16
  %58 = load ptr, ptr %head50, align 8
  %hash_size51 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 18
  %59 = load i32, ptr %hash_size51, align 4
  %conv52 = zext i32 %59 to i64
  %mul53 = shl nuw nsw i64 %conv52, 1
  %60 = load ptr, ptr %ds, align 8
  %head54 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 16
  %61 = load ptr, ptr %head54, align 8
  %62 = call i64 @llvm.objectsize.i64.p0(ptr %61, i1 false, i1 true, i1 false)
  %call55 = call ptr @__memcpy_chk(ptr noundef %56, ptr noundef %58, i64 noundef %mul53, i64 noundef %62) #5
  %pending_buf56 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 2
  %63 = load ptr, ptr %pending_buf56, align 8
  %64 = load ptr, ptr %ss, align 8
  %pending_buf57 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 2
  %65 = load ptr, ptr %pending_buf57, align 8
  %66 = load ptr, ptr %ds, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 3
  %67 = load i64, ptr %pending_buf_size, align 8
  %conv59 = and i64 %67, 4294967295
  %pending_buf60 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %pending_buf60, align 8
  %69 = call i64 @llvm.objectsize.i64.p0(ptr %68, i1 false, i1 true, i1 false)
  %call61 = call ptr @__memcpy_chk(ptr noundef %63, ptr noundef %65, i64 noundef %conv59, i64 noundef %69) #5
  %70 = load ptr, ptr %ds, align 8
  %pending_buf62 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 2
  %71 = load ptr, ptr %pending_buf62, align 8
  %72 = load ptr, ptr %ss, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 4
  %73 = load ptr, ptr %pending_out, align 8
  %pending_buf63 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %pending_buf63, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %73 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %74 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %71, i64 %sub.ptr.sub
  %75 = load ptr, ptr %ds, align 8
  %pending_out64 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 4
  store ptr %add.ptr, ptr %pending_out64, align 8
  %76 = load ptr, ptr %overlay, align 8
  %lit_bufsize65 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 48
  %77 = load i32, ptr %lit_bufsize65, align 8
  %78 = lshr i32 %77, 1
  %div = zext i32 %78 to i64
  %add.ptr67 = getelementptr inbounds i16, ptr %76, i64 %div
  %79 = load ptr, ptr %ds, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 50
  store ptr %add.ptr67, ptr %d_buf, align 8
  %pending_buf68 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 2
  %80 = load ptr, ptr %pending_buf68, align 8
  %lit_bufsize69 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 48
  %81 = load i32, ptr %lit_bufsize69, align 8
  %conv70 = zext i32 %81 to i64
  %mul71 = mul nuw nsw i64 %conv70, 3
  %add.ptr72 = getelementptr inbounds i8, ptr %80, i64 %mul71
  %82 = load ptr, ptr %ds, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 47
  store ptr %add.ptr72, ptr %l_buf, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 36
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 39
  store ptr %dyn_ltree, ptr %l_desc, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 37
  %83 = load ptr, ptr %ds, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 40
  store ptr %dyn_dtree, ptr %d_desc, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 38
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 41
  store ptr %bl_tree, ptr %bl_desc, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then33, %if.then6, %if.then
  %84 = load i32, ptr %retval, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @deflate_stored(ptr noundef %s, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %max_block_size = alloca i64, align 8
  %max_start = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  store i64 65535, ptr %max_block_size, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 3
  %0 = load i64, ptr %pending_buf_size, align 8
  %sub = add i64 %0, -5
  %cmp = icmp ult i64 %sub, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %pending_buf_size1 = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 3
  %2 = load i64, ptr %pending_buf_size1, align 8
  %sub2 = add i64 %2, -5
  store i64 %sub2, ptr %max_block_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end83, %if.end
  %3 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 28
  %4 = load i32, ptr %lookahead, align 4
  %cmp3 = icmp ult i32 %4, 2
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %for.cond
  %5 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %5)
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 28
  %6 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %6, 0
  %7 = load i32, ptr %flush.addr, align 4
  %cmp7 = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp6, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then4
  %8 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 28
  %9 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %for.end, label %if.end14

if.end14:                                         ; preds = %if.end9, %for.cond
  %10 = load ptr, ptr %s.addr, align 8
  %lookahead15 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 28
  %11 = load i32, ptr %lookahead15, align 4
  %strstart = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 26
  %12 = load i32, ptr %strstart, align 4
  %add = add i32 %12, %11
  store i32 %add, ptr %strstart, align 4
  %13 = load ptr, ptr %s.addr, align 8
  %lookahead16 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 28
  store i32 0, ptr %lookahead16, align 4
  %block_start = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 22
  %14 = load i64, ptr %block_start, align 8
  %15 = load i64, ptr %max_block_size, align 8
  %add17 = add i64 %14, %15
  store i64 %add17, ptr %max_start, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %strstart18 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 26
  %17 = load i32, ptr %strstart18, align 4
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %18 = load ptr, ptr %s.addr, align 8
  %strstart20 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 26
  %19 = load i32, ptr %strstart20, align 4
  %conv = zext i32 %19 to i64
  %20 = load i64, ptr %max_start, align 8
  %cmp21.not = icmp ugt i64 %20, %conv
  br i1 %cmp21.not, label %if.end48, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false, %if.end14
  %21 = load ptr, ptr %s.addr, align 8
  %strstart24 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 26
  %22 = load i32, ptr %strstart24, align 4
  %23 = load i64, ptr %max_start, align 8
  %24 = trunc i64 %23 to i32
  %conv27 = sub i32 %22, %24
  %lookahead28 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 28
  store i32 %conv27, ptr %lookahead28, align 4
  %conv29 = trunc i64 %23 to i32
  %25 = load ptr, ptr %s.addr, align 8
  %strstart30 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 26
  store i32 %conv29, ptr %strstart30, align 4
  %block_start31 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 22
  %26 = load i64, ptr %block_start31, align 8
  %cmp32 = icmp sgt i64 %26, -1
  br i1 %cmp32, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then23
  %27 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 13
  %28 = load ptr, ptr %window, align 8
  %block_start34 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 22
  %29 = load i64, ptr %block_start34, align 8
  %idxprom = and i64 %29, 4294967295
  %arrayidx = getelementptr inbounds i8, ptr %28, i64 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %if.then23, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %if.then23 ]
  %30 = load ptr, ptr %s.addr, align 8
  %strstart36 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 26
  %31 = load i32, ptr %strstart36, align 4
  %conv37 = zext i32 %31 to i64
  %block_start38 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 22
  %32 = load i64, ptr %block_start38, align 8
  %sub39 = sub nsw i64 %conv37, %32
  call void @_tr_flush_block(ptr noundef %25, ptr noundef %cond, i64 noundef %sub39, i32 noundef 0) #5
  %33 = load ptr, ptr %s.addr, align 8
  %strstart40 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 26
  %34 = load i32, ptr %strstart40, align 4
  %conv41 = zext i32 %34 to i64
  %block_start42 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 22
  store i64 %conv41, ptr %block_start42, align 8
  %35 = load ptr, ptr %33, align 8
  call void @flush_pending(ptr noundef %35)
  %36 = load ptr, ptr %s.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %37, i64 0, i32 4
  %38 = load i32, ptr %avail_out, align 8
  %cmp44 = icmp eq i32 %38, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %cond.end, %lor.lhs.false
  %39 = load ptr, ptr %s.addr, align 8
  %strstart49 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 26
  %40 = load i32, ptr %strstart49, align 4
  %block_start50 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 22
  %41 = load i64, ptr %block_start50, align 8
  %conv51 = trunc i64 %41 to i32
  %sub52 = sub i32 %40, %conv51
  %42 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 10
  %43 = load i32, ptr %w_size, align 8
  %sub53 = add i32 %43, -262
  %cmp54.not = icmp ult i32 %sub52, %sub53
  br i1 %cmp54.not, label %if.end83, label %if.then56

if.then56:                                        ; preds = %if.end48
  %44 = load ptr, ptr %s.addr, align 8
  %block_start57 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 22
  %45 = load i64, ptr %block_start57, align 8
  %cmp58 = icmp sgt i64 %45, -1
  br i1 %cmp58, label %cond.true60, label %cond.end67

cond.true60:                                      ; preds = %if.then56
  %46 = load ptr, ptr %s.addr, align 8
  %window61 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 13
  %47 = load ptr, ptr %window61, align 8
  %block_start62 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 22
  %48 = load i64, ptr %block_start62, align 8
  %idxprom64 = and i64 %48, 4294967295
  %arrayidx65 = getelementptr inbounds i8, ptr %47, i64 %idxprom64
  br label %cond.end67

cond.end67:                                       ; preds = %if.then56, %cond.true60
  %cond68 = phi ptr [ %arrayidx65, %cond.true60 ], [ null, %if.then56 ]
  %49 = load ptr, ptr %s.addr, align 8
  %strstart69 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 26
  %50 = load i32, ptr %strstart69, align 4
  %conv70 = zext i32 %50 to i64
  %block_start71 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 22
  %51 = load i64, ptr %block_start71, align 8
  %sub72 = sub nsw i64 %conv70, %51
  call void @_tr_flush_block(ptr noundef %44, ptr noundef %cond68, i64 noundef %sub72, i32 noundef 0) #5
  %52 = load ptr, ptr %s.addr, align 8
  %strstart73 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 26
  %53 = load i32, ptr %strstart73, align 4
  %conv74 = zext i32 %53 to i64
  %block_start75 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 22
  store i64 %conv74, ptr %block_start75, align 8
  %54 = load ptr, ptr %52, align 8
  call void @flush_pending(ptr noundef %54)
  %55 = load ptr, ptr %s.addr, align 8
  %56 = load ptr, ptr %55, align 8
  %avail_out78 = getelementptr inbounds %struct.z_stream_s, ptr %56, i64 0, i32 4
  %57 = load i32, ptr %avail_out78, align 8
  %cmp79 = icmp eq i32 %57, 0
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %cond.end67
  store i32 0, ptr %retval, align 4
  br label %return

if.end83:                                         ; preds = %cond.end67, %if.end48
  br label %for.cond

for.end:                                          ; preds = %if.end9
  %58 = load ptr, ptr %s.addr, align 8
  %block_start84 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 22
  %59 = load i64, ptr %block_start84, align 8
  %cmp85 = icmp sgt i64 %59, -1
  br i1 %cmp85, label %cond.true87, label %cond.end94

cond.true87:                                      ; preds = %for.end
  %60 = load ptr, ptr %s.addr, align 8
  %window88 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 13
  %61 = load ptr, ptr %window88, align 8
  %block_start89 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 22
  %62 = load i64, ptr %block_start89, align 8
  %idxprom91 = and i64 %62, 4294967295
  %arrayidx92 = getelementptr inbounds i8, ptr %61, i64 %idxprom91
  br label %cond.end94

cond.end94:                                       ; preds = %for.end, %cond.true87
  %cond95 = phi ptr [ %arrayidx92, %cond.true87 ], [ null, %for.end ]
  %63 = load ptr, ptr %s.addr, align 8
  %strstart96 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 26
  %64 = load i32, ptr %strstart96, align 4
  %conv97 = zext i32 %64 to i64
  %block_start98 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 22
  %65 = load i64, ptr %block_start98, align 8
  %sub99 = sub nsw i64 %conv97, %65
  %66 = load i32, ptr %flush.addr, align 4
  %cmp100 = icmp eq i32 %66, 4
  %conv101 = zext i1 %cmp100 to i32
  call void @_tr_flush_block(ptr noundef %58, ptr noundef %cond95, i64 noundef %sub99, i32 noundef %conv101) #5
  %67 = load ptr, ptr %s.addr, align 8
  %strstart102 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 26
  %68 = load i32, ptr %strstart102, align 4
  %conv103 = zext i32 %68 to i64
  %block_start104 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 22
  store i64 %conv103, ptr %block_start104, align 8
  %69 = load ptr, ptr %67, align 8
  call void @flush_pending(ptr noundef %69)
  %70 = load ptr, ptr %s.addr, align 8
  %71 = load ptr, ptr %70, align 8
  %avail_out107 = getelementptr inbounds %struct.z_stream_s, ptr %71, i64 0, i32 4
  %72 = load i32, ptr %avail_out107, align 8
  %cmp108 = icmp eq i32 %72, 0
  br i1 %cmp108, label %if.then110, label %if.end114

if.then110:                                       ; preds = %cond.end94
  %73 = load i32, ptr %flush.addr, align 4
  %cmp111 = icmp eq i32 %73, 4
  %cond113 = select i1 %cmp111, i32 2, i32 0
  store i32 %cond113, ptr %retval, align 4
  br label %return

if.end114:                                        ; preds = %cond.end94
  %74 = load i32, ptr %flush.addr, align 4
  %cmp115 = icmp eq i32 %74, 4
  %cond117 = select i1 %cmp115, i32 3, i32 1
  store i32 %cond117, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end114, %if.then110, %if.then81, %if.then46, %if.then8
  %75 = load i32, ptr %retval, align 4
  ret i32 %75
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deflate_fast(ptr noundef %s, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %hash_head = alloca i32, align 4
  %bflush = alloca i32, align 4
  %len = alloca i8, align 1
  %dist = alloca i16, align 2
  %cc = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  store i32 0, ptr %hash_head, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end214, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 28
  %3 = load i32, ptr %lookahead1, align 4
  %cmp2 = icmp ult i32 %3, 262
  %4 = load i32, ptr %flush.addr, align 4
  %cmp3 = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp2, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %s.addr, align 8
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 28
  %6 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end, %for.cond
  %7 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 28
  %8 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp ugt i32 %8, 2
  br i1 %cmp11, label %if.then12, label %if.end29

if.then12:                                        ; preds = %if.end9
  %9 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 17
  %10 = load i32, ptr %ins_h, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 21
  %11 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %10, %11
  %window = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 13
  %12 = load ptr, ptr %window, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 26
  %14 = load i32, ptr %strstart, align 4
  %add = add i32 %14, 2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %xor = xor i32 %shl, %conv
  %16 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 20
  %17 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %17
  %ins_h13 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 17
  store i32 %and, ptr %ins_h13, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 16
  %18 = load ptr, ptr %head, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %ins_h14 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 17
  %20 = load i32, ptr %ins_h14, align 8
  %idxprom15 = zext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %18, i64 %idxprom15
  %21 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %21 to i32
  store i32 %conv17, ptr %hash_head, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 15
  %23 = load ptr, ptr %prev, align 8
  %strstart19 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 26
  %24 = load i32, ptr %strstart19, align 4
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 12
  %25 = load i32, ptr %w_mask, align 8
  %and20 = and i32 %24, %25
  %idxprom21 = zext i32 %and20 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %23, i64 %idxprom21
  store i16 %21, ptr %arrayidx22, align 2
  %26 = load ptr, ptr %s.addr, align 8
  %strstart23 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 26
  %27 = load i32, ptr %strstart23, align 4
  %conv24 = trunc i32 %27 to i16
  %head25 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 16
  %28 = load ptr, ptr %head25, align 8
  %ins_h26 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 17
  %29 = load i32, ptr %ins_h26, align 8
  %idxprom27 = zext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %28, i64 %idxprom27
  store i16 %conv24, ptr %arrayidx28, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end9
  %30 = load i32, ptr %hash_head, align 4
  %cmp30.not = icmp eq i32 %30, 0
  br i1 %cmp30.not, label %if.end42, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end29
  %31 = load ptr, ptr %s.addr, align 8
  %strstart33 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 26
  %32 = load i32, ptr %strstart33, align 4
  %33 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %32, %33
  %w_size = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 10
  %34 = load i32, ptr %w_size, align 8
  %sub34 = add i32 %34, -262
  %cmp35.not = icmp ugt i32 %sub, %sub34
  br i1 %cmp35.not, label %if.end42, label %if.then37

if.then37:                                        ; preds = %land.lhs.true32
  %35 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 33
  %36 = load i32, ptr %strategy, align 8
  %cmp38.not = icmp eq i32 %36, 2
  br i1 %cmp38.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.then37
  %37 = load ptr, ptr %s.addr, align 8
  %38 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %37, i32 noundef %38)
  %match_length = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 23
  store i32 %call, ptr %match_length, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.then40, %land.lhs.true32, %if.end29
  %39 = load ptr, ptr %s.addr, align 8
  %match_length43 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 23
  %40 = load i32, ptr %match_length43, align 8
  %cmp44 = icmp ugt i32 %40, 2
  br i1 %cmp44, label %if.then46, label %if.else161

if.then46:                                        ; preds = %if.end42
  %41 = load ptr, ptr %s.addr, align 8
  %match_length47 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 23
  %42 = load i32, ptr %match_length47, align 8
  %43 = trunc i32 %42 to i8
  %conv49 = add i8 %43, -3
  store i8 %conv49, ptr %len, align 1
  %strstart50 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 26
  %44 = load i32, ptr %strstart50, align 4
  %45 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 27
  %46 = load i32, ptr %match_start, align 8
  %sub51 = sub i32 %44, %46
  %conv52 = trunc i32 %sub51 to i16
  store i16 %conv52, ptr %dist, align 2
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 50
  %47 = load ptr, ptr %d_buf, align 8
  %48 = load ptr, ptr %s.addr, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 49
  %49 = load i32, ptr %last_lit, align 4
  %idxprom53 = zext i32 %49 to i64
  %arrayidx54 = getelementptr inbounds i16, ptr %47, i64 %idxprom53
  store i16 %conv52, ptr %arrayidx54, align 2
  %50 = load i8, ptr %len, align 1
  %51 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 47
  %52 = load ptr, ptr %l_buf, align 8
  %last_lit55 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 49
  %53 = load i32, ptr %last_lit55, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %last_lit55, align 4
  %idxprom56 = zext i32 %53 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %52, i64 %idxprom56
  store i8 %50, ptr %arrayidx57, align 1
  %54 = load i16, ptr %dist, align 2
  %dec = add i16 %54, -1
  store i16 %dec, ptr %dist, align 2
  %55 = load ptr, ptr %s.addr, align 8
  %56 = load i8, ptr %len, align 1
  %idxprom58 = zext i8 %56 to i64
  %arrayidx59 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom58
  %57 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %57 to i64
  %add62 = add nuw nsw i64 %conv60, 257
  %arrayidx64 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 36, i64 %add62
  %58 = load i16, ptr %arrayidx64, align 4
  %inc65 = add i16 %58, 1
  store i16 %inc65, ptr %arrayidx64, align 4
  %59 = load ptr, ptr %s.addr, align 8
  %60 = load i16, ptr %dist, align 2
  %cmp67 = icmp ult i16 %60, 256
  %61 = load i16, ptr %dist, align 2
  %62 = load i16, ptr %dist, align 2
  %63 = lshr i16 %62, 7
  %narrow = add nuw nsw i16 %63, 256
  %idxprom69.pn.in = select i1 %cmp67, i16 %61, i16 %narrow
  %idxprom69.pn = zext i16 %idxprom69.pn.in to i64
  %cond.in.in = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom69.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %idxprom77 = zext i8 %cond.in to i64
  %arrayidx78 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 37, i64 %idxprom77
  %64 = load i16, ptr %arrayidx78, align 4
  %inc80 = add i16 %64, 1
  store i16 %inc80, ptr %arrayidx78, align 4
  %65 = load ptr, ptr %s.addr, align 8
  %last_lit81 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 49
  %66 = load i32, ptr %last_lit81, align 4
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 48
  %67 = load i32, ptr %lit_bufsize, align 8
  %sub82 = add i32 %67, -1
  %cmp83 = icmp eq i32 %66, %sub82
  %conv84 = zext i1 %cmp83 to i32
  store i32 %conv84, ptr %bflush, align 4
  %68 = load ptr, ptr %s.addr, align 8
  %match_length85 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 23
  %69 = load i32, ptr %match_length85, align 8
  %lookahead86 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 28
  %70 = load i32, ptr %lookahead86, align 4
  %sub87 = sub i32 %70, %69
  store i32 %sub87, ptr %lookahead86, align 4
  %71 = load ptr, ptr %s.addr, align 8
  %match_length88 = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 23
  %72 = load i32, ptr %match_length88, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 31
  %73 = load i32, ptr %max_lazy_match, align 8
  %cmp89.not = icmp ugt i32 %72, %73
  br i1 %cmp89.not, label %if.else, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.then46
  %74 = load ptr, ptr %s.addr, align 8
  %lookahead92 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 28
  %75 = load i32, ptr %lookahead92, align 4
  %cmp93 = icmp ugt i32 %75, 2
  br i1 %cmp93, label %if.then95, label %if.else

if.then95:                                        ; preds = %land.lhs.true91
  %76 = load ptr, ptr %s.addr, align 8
  %match_length96 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 23
  %77 = load i32, ptr %match_length96, align 8
  %dec97 = add i32 %77, -1
  store i32 %dec97, ptr %match_length96, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then95
  %78 = load ptr, ptr %s.addr, align 8
  %strstart98 = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 26
  %79 = load i32, ptr %strstart98, align 4
  %inc99 = add i32 %79, 1
  store i32 %inc99, ptr %strstart98, align 4
  %ins_h100 = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 17
  %80 = load i32, ptr %ins_h100, align 8
  %81 = load ptr, ptr %s.addr, align 8
  %hash_shift101 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 21
  %82 = load i32, ptr %hash_shift101, align 8
  %shl102 = shl i32 %80, %82
  %window103 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 13
  %83 = load ptr, ptr %window103, align 8
  %strstart104 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 26
  %84 = load i32, ptr %strstart104, align 4
  %add105 = add i32 %84, 2
  %idxprom106 = zext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds i8, ptr %83, i64 %idxprom106
  %85 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %85 to i32
  %xor109 = xor i32 %shl102, %conv108
  %86 = load ptr, ptr %s.addr, align 8
  %hash_mask110 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 20
  %87 = load i32, ptr %hash_mask110, align 4
  %and111 = and i32 %xor109, %87
  %ins_h112 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 17
  store i32 %and111, ptr %ins_h112, align 8
  %head113 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 16
  %88 = load ptr, ptr %head113, align 8
  %89 = load ptr, ptr %s.addr, align 8
  %ins_h114 = getelementptr inbounds %struct.internal_state, ptr %89, i64 0, i32 17
  %90 = load i32, ptr %ins_h114, align 8
  %idxprom115 = zext i32 %90 to i64
  %arrayidx116 = getelementptr inbounds i16, ptr %88, i64 %idxprom115
  %91 = load i16, ptr %arrayidx116, align 2
  %conv117 = zext i16 %91 to i32
  store i32 %conv117, ptr %hash_head, align 4
  %92 = load ptr, ptr %s.addr, align 8
  %prev119 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 15
  %93 = load ptr, ptr %prev119, align 8
  %strstart120 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 26
  %94 = load i32, ptr %strstart120, align 4
  %w_mask121 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 12
  %95 = load i32, ptr %w_mask121, align 8
  %and122 = and i32 %94, %95
  %idxprom123 = zext i32 %and122 to i64
  %arrayidx124 = getelementptr inbounds i16, ptr %93, i64 %idxprom123
  store i16 %91, ptr %arrayidx124, align 2
  %96 = load ptr, ptr %s.addr, align 8
  %strstart125 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 26
  %97 = load i32, ptr %strstart125, align 4
  %conv126 = trunc i32 %97 to i16
  %head127 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 16
  %98 = load ptr, ptr %head127, align 8
  %ins_h128 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 17
  %99 = load i32, ptr %ins_h128, align 8
  %idxprom129 = zext i32 %99 to i64
  %arrayidx130 = getelementptr inbounds i16, ptr %98, i64 %idxprom129
  store i16 %conv126, ptr %arrayidx130, align 2
  %100 = load ptr, ptr %s.addr, align 8
  %match_length131 = getelementptr inbounds %struct.internal_state, ptr %100, i64 0, i32 23
  %101 = load i32, ptr %match_length131, align 8
  %dec132 = add i32 %101, -1
  store i32 %dec132, ptr %match_length131, align 8
  %cmp133.not = icmp eq i32 %dec132, 0
  br i1 %cmp133.not, label %do.end, label %do.body, !llvm.loop !8

do.end:                                           ; preds = %do.body
  %102 = load ptr, ptr %s.addr, align 8
  %strstart135 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 26
  %103 = load i32, ptr %strstart135, align 4
  %inc136 = add i32 %103, 1
  store i32 %inc136, ptr %strstart135, align 4
  br label %if.end189

if.else:                                          ; preds = %land.lhs.true91, %if.then46
  %104 = load ptr, ptr %s.addr, align 8
  %match_length137 = getelementptr inbounds %struct.internal_state, ptr %104, i64 0, i32 23
  %105 = load i32, ptr %match_length137, align 8
  %strstart138 = getelementptr inbounds %struct.internal_state, ptr %104, i64 0, i32 26
  %106 = load i32, ptr %strstart138, align 4
  %add139 = add i32 %106, %105
  store i32 %add139, ptr %strstart138, align 4
  %107 = load ptr, ptr %s.addr, align 8
  %match_length140 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 23
  store i32 0, ptr %match_length140, align 8
  %window141 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 13
  %108 = load ptr, ptr %window141, align 8
  %strstart142 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 26
  %109 = load i32, ptr %strstart142, align 4
  %idxprom143 = zext i32 %109 to i64
  %arrayidx144 = getelementptr inbounds i8, ptr %108, i64 %idxprom143
  %110 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %110 to i32
  %111 = load ptr, ptr %s.addr, align 8
  %ins_h146 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 17
  store i32 %conv145, ptr %ins_h146, align 8
  %hash_shift148 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 21
  %112 = load i32, ptr %hash_shift148, align 8
  %shl149 = shl i32 %conv145, %112
  %window150 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 13
  %113 = load ptr, ptr %window150, align 8
  %114 = load ptr, ptr %s.addr, align 8
  %strstart151 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 26
  %115 = load i32, ptr %strstart151, align 4
  %add152 = add i32 %115, 1
  %idxprom153 = zext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds i8, ptr %113, i64 %idxprom153
  %116 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %116 to i32
  %xor156 = xor i32 %shl149, %conv155
  %117 = load ptr, ptr %s.addr, align 8
  %hash_mask157 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 20
  %118 = load i32, ptr %hash_mask157, align 4
  %and158 = and i32 %xor156, %118
  %ins_h159 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 17
  store i32 %and158, ptr %ins_h159, align 8
  br label %if.end189

if.else161:                                       ; preds = %if.end42
  %119 = load ptr, ptr %s.addr, align 8
  %window162 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 13
  %120 = load ptr, ptr %window162, align 8
  %strstart163 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 26
  %121 = load i32, ptr %strstart163, align 4
  %idxprom164 = zext i32 %121 to i64
  %arrayidx165 = getelementptr inbounds i8, ptr %120, i64 %idxprom164
  %122 = load i8, ptr %arrayidx165, align 1
  store i8 %122, ptr %cc, align 1
  %123 = load ptr, ptr %s.addr, align 8
  %d_buf166 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 50
  %124 = load ptr, ptr %d_buf166, align 8
  %last_lit167 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 49
  %125 = load i32, ptr %last_lit167, align 4
  %idxprom168 = zext i32 %125 to i64
  %arrayidx169 = getelementptr inbounds i16, ptr %124, i64 %idxprom168
  store i16 0, ptr %arrayidx169, align 2
  %126 = load i8, ptr %cc, align 1
  %127 = load ptr, ptr %s.addr, align 8
  %l_buf170 = getelementptr inbounds %struct.internal_state, ptr %127, i64 0, i32 47
  %128 = load ptr, ptr %l_buf170, align 8
  %last_lit171 = getelementptr inbounds %struct.internal_state, ptr %127, i64 0, i32 49
  %129 = load i32, ptr %last_lit171, align 4
  %inc172 = add i32 %129, 1
  store i32 %inc172, ptr %last_lit171, align 4
  %idxprom173 = zext i32 %129 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %128, i64 %idxprom173
  store i8 %126, ptr %arrayidx174, align 1
  %130 = load ptr, ptr %s.addr, align 8
  %131 = load i8, ptr %cc, align 1
  %idxprom176 = zext i8 %131 to i64
  %arrayidx177 = getelementptr inbounds %struct.internal_state, ptr %130, i64 0, i32 36, i64 %idxprom176
  %132 = load i16, ptr %arrayidx177, align 4
  %inc179 = add i16 %132, 1
  store i16 %inc179, ptr %arrayidx177, align 4
  %133 = load ptr, ptr %s.addr, align 8
  %last_lit180 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 49
  %134 = load i32, ptr %last_lit180, align 4
  %lit_bufsize181 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 48
  %135 = load i32, ptr %lit_bufsize181, align 8
  %sub182 = add i32 %135, -1
  %cmp183 = icmp eq i32 %134, %sub182
  %conv184 = zext i1 %cmp183 to i32
  store i32 %conv184, ptr %bflush, align 4
  %136 = load ptr, ptr %s.addr, align 8
  %lookahead185 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 28
  %137 = load i32, ptr %lookahead185, align 4
  %dec186 = add i32 %137, -1
  store i32 %dec186, ptr %lookahead185, align 4
  %strstart187 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 26
  %138 = load i32, ptr %strstart187, align 4
  %inc188 = add i32 %138, 1
  store i32 %inc188, ptr %strstart187, align 4
  br label %if.end189

if.end189:                                        ; preds = %do.end, %if.else, %if.else161
  %139 = load i32, ptr %bflush, align 4
  %tobool.not = icmp eq i32 %139, 0
  br i1 %tobool.not, label %if.end214, label %if.then190

if.then190:                                       ; preds = %if.end189
  %140 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 22
  %141 = load i64, ptr %block_start, align 8
  %cmp191 = icmp sgt i64 %141, -1
  br i1 %cmp191, label %cond.true193, label %cond.end200

cond.true193:                                     ; preds = %if.then190
  %142 = load ptr, ptr %s.addr, align 8
  %window194 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 13
  %143 = load ptr, ptr %window194, align 8
  %block_start195 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 22
  %144 = load i64, ptr %block_start195, align 8
  %idxprom197 = and i64 %144, 4294967295
  %arrayidx198 = getelementptr inbounds i8, ptr %143, i64 %idxprom197
  br label %cond.end200

cond.end200:                                      ; preds = %if.then190, %cond.true193
  %cond201 = phi ptr [ %arrayidx198, %cond.true193 ], [ null, %if.then190 ]
  %145 = load ptr, ptr %s.addr, align 8
  %strstart202 = getelementptr inbounds %struct.internal_state, ptr %145, i64 0, i32 26
  %146 = load i32, ptr %strstart202, align 4
  %conv203 = zext i32 %146 to i64
  %block_start204 = getelementptr inbounds %struct.internal_state, ptr %145, i64 0, i32 22
  %147 = load i64, ptr %block_start204, align 8
  %sub205 = sub nsw i64 %conv203, %147
  call void @_tr_flush_block(ptr noundef %140, ptr noundef %cond201, i64 noundef %sub205, i32 noundef 0) #5
  %148 = load ptr, ptr %s.addr, align 8
  %strstart206 = getelementptr inbounds %struct.internal_state, ptr %148, i64 0, i32 26
  %149 = load i32, ptr %strstart206, align 4
  %conv207 = zext i32 %149 to i64
  %block_start208 = getelementptr inbounds %struct.internal_state, ptr %148, i64 0, i32 22
  store i64 %conv207, ptr %block_start208, align 8
  %150 = load ptr, ptr %148, align 8
  call void @flush_pending(ptr noundef %150)
  %151 = load ptr, ptr %s.addr, align 8
  %152 = load ptr, ptr %151, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %152, i64 0, i32 4
  %153 = load i32, ptr %avail_out, align 8
  %cmp210 = icmp eq i32 %153, 0
  br i1 %cmp210, label %if.then212, label %if.end214

if.then212:                                       ; preds = %cond.end200
  store i32 0, ptr %retval, align 4
  br label %return

if.end214:                                        ; preds = %cond.end200, %if.end189
  br label %for.cond

for.end:                                          ; preds = %if.end
  %154 = load ptr, ptr %s.addr, align 8
  %block_start215 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 22
  %155 = load i64, ptr %block_start215, align 8
  %cmp216 = icmp sgt i64 %155, -1
  br i1 %cmp216, label %cond.true218, label %cond.end225

cond.true218:                                     ; preds = %for.end
  %156 = load ptr, ptr %s.addr, align 8
  %window219 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 13
  %157 = load ptr, ptr %window219, align 8
  %block_start220 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 22
  %158 = load i64, ptr %block_start220, align 8
  %idxprom222 = and i64 %158, 4294967295
  %arrayidx223 = getelementptr inbounds i8, ptr %157, i64 %idxprom222
  br label %cond.end225

cond.end225:                                      ; preds = %for.end, %cond.true218
  %cond226 = phi ptr [ %arrayidx223, %cond.true218 ], [ null, %for.end ]
  %159 = load ptr, ptr %s.addr, align 8
  %strstart227 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 26
  %160 = load i32, ptr %strstart227, align 4
  %conv228 = zext i32 %160 to i64
  %block_start229 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 22
  %161 = load i64, ptr %block_start229, align 8
  %sub230 = sub nsw i64 %conv228, %161
  %162 = load i32, ptr %flush.addr, align 4
  %cmp231 = icmp eq i32 %162, 4
  %conv232 = zext i1 %cmp231 to i32
  call void @_tr_flush_block(ptr noundef %154, ptr noundef %cond226, i64 noundef %sub230, i32 noundef %conv232) #5
  %163 = load ptr, ptr %s.addr, align 8
  %strstart233 = getelementptr inbounds %struct.internal_state, ptr %163, i64 0, i32 26
  %164 = load i32, ptr %strstart233, align 4
  %conv234 = zext i32 %164 to i64
  %block_start235 = getelementptr inbounds %struct.internal_state, ptr %163, i64 0, i32 22
  store i64 %conv234, ptr %block_start235, align 8
  %165 = load ptr, ptr %163, align 8
  call void @flush_pending(ptr noundef %165)
  %166 = load ptr, ptr %s.addr, align 8
  %167 = load ptr, ptr %166, align 8
  %avail_out238 = getelementptr inbounds %struct.z_stream_s, ptr %167, i64 0, i32 4
  %168 = load i32, ptr %avail_out238, align 8
  %cmp239 = icmp eq i32 %168, 0
  br i1 %cmp239, label %if.then241, label %if.end245

if.then241:                                       ; preds = %cond.end225
  %169 = load i32, ptr %flush.addr, align 4
  %cmp242 = icmp eq i32 %169, 4
  %cond244 = select i1 %cmp242, i32 2, i32 0
  store i32 %cond244, ptr %retval, align 4
  br label %return

if.end245:                                        ; preds = %cond.end225
  %170 = load i32, ptr %flush.addr, align 4
  %cmp246 = icmp eq i32 %170, 4
  %cond248 = select i1 %cmp246, i32 3, i32 1
  store i32 %cond248, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end245, %if.then241, %if.then212, %if.then4
  %171 = load i32, ptr %retval, align 4
  ret i32 %171
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deflate_slow(ptr noundef %s, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %hash_head = alloca i32, align 4
  %bflush = alloca i32, align 4
  %max_insert = alloca i32, align 4
  %len = alloca i8, align 1
  %dist = alloca i16, align 2
  %cc = alloca i8, align 1
  %cc267 = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  store i32 0, ptr %hash_head, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end263, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 28
  %3 = load i32, ptr %lookahead1, align 4
  %cmp2 = icmp ult i32 %3, 262
  %4 = load i32, ptr %flush.addr, align 4
  %cmp3 = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp2, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %s.addr, align 8
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 28
  %6 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end, %for.cond
  %7 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 28
  %8 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp ugt i32 %8, 2
  br i1 %cmp11, label %if.then12, label %if.end29

if.then12:                                        ; preds = %if.end9
  %9 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 17
  %10 = load i32, ptr %ins_h, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 21
  %11 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %10, %11
  %window = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 13
  %12 = load ptr, ptr %window, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 26
  %14 = load i32, ptr %strstart, align 4
  %add = add i32 %14, 2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %xor = xor i32 %shl, %conv
  %16 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 20
  %17 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %17
  %ins_h13 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 17
  store i32 %and, ptr %ins_h13, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 16
  %18 = load ptr, ptr %head, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %ins_h14 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 17
  %20 = load i32, ptr %ins_h14, align 8
  %idxprom15 = zext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %18, i64 %idxprom15
  %21 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %21 to i32
  store i32 %conv17, ptr %hash_head, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 15
  %23 = load ptr, ptr %prev, align 8
  %strstart19 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 26
  %24 = load i32, ptr %strstart19, align 4
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 12
  %25 = load i32, ptr %w_mask, align 8
  %and20 = and i32 %24, %25
  %idxprom21 = zext i32 %and20 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %23, i64 %idxprom21
  store i16 %21, ptr %arrayidx22, align 2
  %26 = load ptr, ptr %s.addr, align 8
  %strstart23 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 26
  %27 = load i32, ptr %strstart23, align 4
  %conv24 = trunc i32 %27 to i16
  %head25 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 16
  %28 = load ptr, ptr %head25, align 8
  %ins_h26 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 17
  %29 = load i32, ptr %ins_h26, align 8
  %idxprom27 = zext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %28, i64 %idxprom27
  store i16 %conv24, ptr %arrayidx28, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end9
  %30 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 23
  %31 = load i32, ptr %match_length, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 29
  store i32 %31, ptr %prev_length, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 27
  %32 = load i32, ptr %match_start, align 8
  %33 = load ptr, ptr %s.addr, align 8
  %prev_match = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 24
  store i32 %32, ptr %prev_match, align 4
  %match_length30 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 23
  store i32 2, ptr %match_length30, align 8
  %34 = load i32, ptr %hash_head, align 4
  %cmp31.not = icmp eq i32 %34, 0
  br i1 %cmp31.not, label %if.end67, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end29
  %35 = load ptr, ptr %s.addr, align 8
  %prev_length34 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 29
  %36 = load i32, ptr %prev_length34, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 31
  %37 = load i32, ptr %max_lazy_match, align 8
  %cmp35 = icmp ult i32 %36, %37
  br i1 %cmp35, label %land.lhs.true37, label %if.end67

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %38 = load ptr, ptr %s.addr, align 8
  %strstart38 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 26
  %39 = load i32, ptr %strstart38, align 4
  %40 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %39, %40
  %w_size = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 10
  %41 = load i32, ptr %w_size, align 8
  %sub39 = add i32 %41, -262
  %cmp40.not = icmp ugt i32 %sub, %sub39
  br i1 %cmp40.not, label %if.end67, label %if.then42

if.then42:                                        ; preds = %land.lhs.true37
  %42 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 33
  %43 = load i32, ptr %strategy, align 8
  %cmp43.not = icmp eq i32 %43, 2
  br i1 %cmp43.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.then42
  %44 = load ptr, ptr %s.addr, align 8
  %45 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %44, i32 noundef %45)
  %match_length46 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 23
  store i32 %call, ptr %match_length46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then42
  %46 = load ptr, ptr %s.addr, align 8
  %match_length48 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 23
  %47 = load i32, ptr %match_length48, align 8
  %cmp49 = icmp ult i32 %47, 6
  br i1 %cmp49, label %land.lhs.true51, label %if.end67

land.lhs.true51:                                  ; preds = %if.end47
  %48 = load ptr, ptr %s.addr, align 8
  %strategy52 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 33
  %49 = load i32, ptr %strategy52, align 8
  %cmp53 = icmp eq i32 %49, 1
  br i1 %cmp53, label %if.then64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true51
  %50 = load ptr, ptr %s.addr, align 8
  %match_length55 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 23
  %51 = load i32, ptr %match_length55, align 8
  %cmp56 = icmp eq i32 %51, 3
  br i1 %cmp56, label %land.lhs.true58, label %if.end67

land.lhs.true58:                                  ; preds = %lor.lhs.false
  %52 = load ptr, ptr %s.addr, align 8
  %strstart59 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 26
  %53 = load i32, ptr %strstart59, align 4
  %match_start60 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 27
  %54 = load i32, ptr %match_start60, align 8
  %sub61 = sub i32 %53, %54
  %cmp62 = icmp ugt i32 %sub61, 4096
  br i1 %cmp62, label %if.then64, label %if.end67

if.then64:                                        ; preds = %land.lhs.true58, %land.lhs.true51
  %55 = load ptr, ptr %s.addr, align 8
  %match_length65 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 23
  store i32 2, ptr %match_length65, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end47, %lor.lhs.false, %land.lhs.true58, %if.then64, %land.lhs.true37, %land.lhs.true33, %if.end29
  %56 = load ptr, ptr %s.addr, align 8
  %prev_length68 = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 29
  %57 = load i32, ptr %prev_length68, align 8
  %cmp69 = icmp ugt i32 %57, 2
  br i1 %cmp69, label %land.lhs.true71, label %if.else

land.lhs.true71:                                  ; preds = %if.end67
  %58 = load ptr, ptr %s.addr, align 8
  %match_length72 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 23
  %59 = load i32, ptr %match_length72, align 8
  %prev_length73 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 29
  %60 = load i32, ptr %prev_length73, align 8
  %cmp74.not = icmp ugt i32 %59, %60
  br i1 %cmp74.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %land.lhs.true71
  %61 = load ptr, ptr %s.addr, align 8
  %strstart77 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 26
  %62 = load i32, ptr %strstart77, align 4
  %lookahead78 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 28
  %63 = load i32, ptr %lookahead78, align 4
  %add79 = add i32 %62, %63
  %sub80 = add i32 %add79, -3
  store i32 %sub80, ptr %max_insert, align 4
  %64 = load ptr, ptr %s.addr, align 8
  %prev_length81 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 29
  %65 = load i32, ptr %prev_length81, align 8
  %66 = trunc i32 %65 to i8
  %conv83 = add i8 %66, -3
  store i8 %conv83, ptr %len, align 1
  %strstart84 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 26
  %67 = load i32, ptr %strstart84, align 4
  %68 = load ptr, ptr %s.addr, align 8
  %prev_match86 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 24
  %69 = load i32, ptr %prev_match86, align 4
  %70 = xor i32 %69, -1
  %sub87 = add i32 %67, %70
  %conv88 = trunc i32 %sub87 to i16
  store i16 %conv88, ptr %dist, align 2
  %71 = load ptr, ptr %s.addr, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 50
  %72 = load ptr, ptr %d_buf, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 49
  %73 = load i32, ptr %last_lit, align 4
  %idxprom89 = zext i32 %73 to i64
  %arrayidx90 = getelementptr inbounds i16, ptr %72, i64 %idxprom89
  store i16 %conv88, ptr %arrayidx90, align 2
  %74 = load i8, ptr %len, align 1
  %75 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 47
  %76 = load ptr, ptr %l_buf, align 8
  %last_lit91 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 49
  %77 = load i32, ptr %last_lit91, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %last_lit91, align 4
  %idxprom92 = zext i32 %77 to i64
  %arrayidx93 = getelementptr inbounds i8, ptr %76, i64 %idxprom92
  store i8 %74, ptr %arrayidx93, align 1
  %78 = load i16, ptr %dist, align 2
  %dec = add i16 %78, -1
  store i16 %dec, ptr %dist, align 2
  %79 = load ptr, ptr %s.addr, align 8
  %80 = load i8, ptr %len, align 1
  %idxprom94 = zext i8 %80 to i64
  %arrayidx95 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom94
  %81 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %81 to i64
  %add98 = add nuw nsw i64 %conv96, 257
  %arrayidx100 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 36, i64 %add98
  %82 = load i16, ptr %arrayidx100, align 4
  %inc101 = add i16 %82, 1
  store i16 %inc101, ptr %arrayidx100, align 4
  %83 = load ptr, ptr %s.addr, align 8
  %84 = load i16, ptr %dist, align 2
  %cmp103 = icmp ult i16 %84, 256
  %85 = load i16, ptr %dist, align 2
  %86 = load i16, ptr %dist, align 2
  %87 = lshr i16 %86, 7
  %narrow = add nuw nsw i16 %87, 256
  %idxprom105.pn.in = select i1 %cmp103, i16 %85, i16 %narrow
  %idxprom105.pn = zext i16 %idxprom105.pn.in to i64
  %cond.in.in = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom105.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %idxprom113 = zext i8 %cond.in to i64
  %arrayidx114 = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 37, i64 %idxprom113
  %88 = load i16, ptr %arrayidx114, align 4
  %inc116 = add i16 %88, 1
  store i16 %inc116, ptr %arrayidx114, align 4
  %89 = load ptr, ptr %s.addr, align 8
  %last_lit117 = getelementptr inbounds %struct.internal_state, ptr %89, i64 0, i32 49
  %90 = load i32, ptr %last_lit117, align 4
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %89, i64 0, i32 48
  %91 = load i32, ptr %lit_bufsize, align 8
  %sub118 = add i32 %91, -1
  %cmp119 = icmp eq i32 %90, %sub118
  %conv120 = zext i1 %cmp119 to i32
  store i32 %conv120, ptr %bflush, align 4
  %92 = load ptr, ptr %s.addr, align 8
  %prev_length121 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 29
  %93 = load i32, ptr %prev_length121, align 8
  %sub122 = add i32 %93, -1
  %lookahead123 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 28
  %94 = load i32, ptr %lookahead123, align 4
  %sub124 = sub i32 %94, %sub122
  store i32 %sub124, ptr %lookahead123, align 4
  %95 = load ptr, ptr %s.addr, align 8
  %prev_length125 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 29
  %96 = load i32, ptr %prev_length125, align 8
  %sub126 = add i32 %96, -2
  store i32 %sub126, ptr %prev_length125, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then76
  %97 = load ptr, ptr %s.addr, align 8
  %strstart127 = getelementptr inbounds %struct.internal_state, ptr %97, i64 0, i32 26
  %98 = load i32, ptr %strstart127, align 4
  %inc128 = add i32 %98, 1
  store i32 %inc128, ptr %strstart127, align 4
  %99 = load i32, ptr %max_insert, align 4
  %cmp129.not = icmp ugt i32 %inc128, %99
  br i1 %cmp129.not, label %do.cond, label %if.then131

if.then131:                                       ; preds = %do.body
  %100 = load ptr, ptr %s.addr, align 8
  %ins_h132 = getelementptr inbounds %struct.internal_state, ptr %100, i64 0, i32 17
  %101 = load i32, ptr %ins_h132, align 8
  %hash_shift133 = getelementptr inbounds %struct.internal_state, ptr %100, i64 0, i32 21
  %102 = load i32, ptr %hash_shift133, align 8
  %shl134 = shl i32 %101, %102
  %window135 = getelementptr inbounds %struct.internal_state, ptr %100, i64 0, i32 13
  %103 = load ptr, ptr %window135, align 8
  %104 = load ptr, ptr %s.addr, align 8
  %strstart136 = getelementptr inbounds %struct.internal_state, ptr %104, i64 0, i32 26
  %105 = load i32, ptr %strstart136, align 4
  %add137 = add i32 %105, 2
  %idxprom138 = zext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds i8, ptr %103, i64 %idxprom138
  %106 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %106 to i32
  %xor141 = xor i32 %shl134, %conv140
  %107 = load ptr, ptr %s.addr, align 8
  %hash_mask142 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 20
  %108 = load i32, ptr %hash_mask142, align 4
  %and143 = and i32 %xor141, %108
  %ins_h144 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 17
  store i32 %and143, ptr %ins_h144, align 8
  %head145 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 16
  %109 = load ptr, ptr %head145, align 8
  %110 = load ptr, ptr %s.addr, align 8
  %ins_h146 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 17
  %111 = load i32, ptr %ins_h146, align 8
  %idxprom147 = zext i32 %111 to i64
  %arrayidx148 = getelementptr inbounds i16, ptr %109, i64 %idxprom147
  %112 = load i16, ptr %arrayidx148, align 2
  %conv149 = zext i16 %112 to i32
  store i32 %conv149, ptr %hash_head, align 4
  %113 = load ptr, ptr %s.addr, align 8
  %prev151 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 15
  %114 = load ptr, ptr %prev151, align 8
  %strstart152 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 26
  %115 = load i32, ptr %strstart152, align 4
  %w_mask153 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 12
  %116 = load i32, ptr %w_mask153, align 8
  %and154 = and i32 %115, %116
  %idxprom155 = zext i32 %and154 to i64
  %arrayidx156 = getelementptr inbounds i16, ptr %114, i64 %idxprom155
  store i16 %112, ptr %arrayidx156, align 2
  %117 = load ptr, ptr %s.addr, align 8
  %strstart157 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 26
  %118 = load i32, ptr %strstart157, align 4
  %conv158 = trunc i32 %118 to i16
  %head159 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 16
  %119 = load ptr, ptr %head159, align 8
  %ins_h160 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 17
  %120 = load i32, ptr %ins_h160, align 8
  %idxprom161 = zext i32 %120 to i64
  %arrayidx162 = getelementptr inbounds i16, ptr %119, i64 %idxprom161
  store i16 %conv158, ptr %arrayidx162, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then131
  %121 = load ptr, ptr %s.addr, align 8
  %prev_length164 = getelementptr inbounds %struct.internal_state, ptr %121, i64 0, i32 29
  %122 = load i32, ptr %prev_length164, align 8
  %dec165 = add i32 %122, -1
  store i32 %dec165, ptr %prev_length164, align 8
  %cmp166.not = icmp eq i32 %dec165, 0
  br i1 %cmp166.not, label %do.end, label %do.body, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  %123 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 25
  store i32 0, ptr %match_available, align 8
  %match_length168 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 23
  store i32 2, ptr %match_length168, align 8
  %strstart169 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 26
  %124 = load i32, ptr %strstart169, align 4
  %inc170 = add i32 %124, 1
  store i32 %inc170, ptr %strstart169, align 4
  %125 = load i32, ptr %bflush, align 4
  %tobool.not = icmp eq i32 %125, 0
  br i1 %tobool.not, label %if.end263, label %if.then171

if.then171:                                       ; preds = %do.end
  %126 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 22
  %127 = load i64, ptr %block_start, align 8
  %cmp172 = icmp sgt i64 %127, -1
  br i1 %cmp172, label %cond.true174, label %cond.end181

cond.true174:                                     ; preds = %if.then171
  %128 = load ptr, ptr %s.addr, align 8
  %window175 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 13
  %129 = load ptr, ptr %window175, align 8
  %block_start176 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 22
  %130 = load i64, ptr %block_start176, align 8
  %idxprom178 = and i64 %130, 4294967295
  %arrayidx179 = getelementptr inbounds i8, ptr %129, i64 %idxprom178
  br label %cond.end181

cond.end181:                                      ; preds = %if.then171, %cond.true174
  %cond182 = phi ptr [ %arrayidx179, %cond.true174 ], [ null, %if.then171 ]
  %131 = load ptr, ptr %s.addr, align 8
  %strstart183 = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 26
  %132 = load i32, ptr %strstart183, align 4
  %conv184 = zext i32 %132 to i64
  %block_start185 = getelementptr inbounds %struct.internal_state, ptr %131, i64 0, i32 22
  %133 = load i64, ptr %block_start185, align 8
  %sub186 = sub nsw i64 %conv184, %133
  call void @_tr_flush_block(ptr noundef %126, ptr noundef %cond182, i64 noundef %sub186, i32 noundef 0) #5
  %134 = load ptr, ptr %s.addr, align 8
  %strstart187 = getelementptr inbounds %struct.internal_state, ptr %134, i64 0, i32 26
  %135 = load i32, ptr %strstart187, align 4
  %conv188 = zext i32 %135 to i64
  %block_start189 = getelementptr inbounds %struct.internal_state, ptr %134, i64 0, i32 22
  store i64 %conv188, ptr %block_start189, align 8
  %136 = load ptr, ptr %134, align 8
  call void @flush_pending(ptr noundef %136)
  %137 = load ptr, ptr %s.addr, align 8
  %138 = load ptr, ptr %137, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %138, i64 0, i32 4
  %139 = load i32, ptr %avail_out, align 8
  %cmp191 = icmp eq i32 %139, 0
  br i1 %cmp191, label %if.then193, label %if.end263

if.then193:                                       ; preds = %cond.end181
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true71, %if.end67
  %140 = load ptr, ptr %s.addr, align 8
  %match_available196 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 25
  %141 = load i32, ptr %match_available196, align 8
  %tobool197.not = icmp eq i32 %141, 0
  br i1 %tobool197.not, label %if.else256, label %if.then198

if.then198:                                       ; preds = %if.else
  %142 = load ptr, ptr %s.addr, align 8
  %window199 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 13
  %143 = load ptr, ptr %window199, align 8
  %strstart200 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 26
  %144 = load i32, ptr %strstart200, align 4
  %sub201 = add i32 %144, -1
  %idxprom202 = zext i32 %sub201 to i64
  %arrayidx203 = getelementptr inbounds i8, ptr %143, i64 %idxprom202
  %145 = load i8, ptr %arrayidx203, align 1
  store i8 %145, ptr %cc, align 1
  %146 = load ptr, ptr %s.addr, align 8
  %d_buf204 = getelementptr inbounds %struct.internal_state, ptr %146, i64 0, i32 50
  %147 = load ptr, ptr %d_buf204, align 8
  %last_lit205 = getelementptr inbounds %struct.internal_state, ptr %146, i64 0, i32 49
  %148 = load i32, ptr %last_lit205, align 4
  %idxprom206 = zext i32 %148 to i64
  %arrayidx207 = getelementptr inbounds i16, ptr %147, i64 %idxprom206
  store i16 0, ptr %arrayidx207, align 2
  %149 = load i8, ptr %cc, align 1
  %150 = load ptr, ptr %s.addr, align 8
  %l_buf208 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 47
  %151 = load ptr, ptr %l_buf208, align 8
  %last_lit209 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 49
  %152 = load i32, ptr %last_lit209, align 4
  %inc210 = add i32 %152, 1
  store i32 %inc210, ptr %last_lit209, align 4
  %idxprom211 = zext i32 %152 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %151, i64 %idxprom211
  store i8 %149, ptr %arrayidx212, align 1
  %153 = load ptr, ptr %s.addr, align 8
  %154 = load i8, ptr %cc, align 1
  %idxprom214 = zext i8 %154 to i64
  %arrayidx215 = getelementptr inbounds %struct.internal_state, ptr %153, i64 0, i32 36, i64 %idxprom214
  %155 = load i16, ptr %arrayidx215, align 4
  %inc217 = add i16 %155, 1
  store i16 %inc217, ptr %arrayidx215, align 4
  %156 = load ptr, ptr %s.addr, align 8
  %last_lit218 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 49
  %157 = load i32, ptr %last_lit218, align 4
  %lit_bufsize219 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 48
  %158 = load i32, ptr %lit_bufsize219, align 8
  %sub220 = add i32 %158, -1
  %cmp221 = icmp eq i32 %157, %sub220
  %conv222 = zext i1 %cmp221 to i32
  store i32 %conv222, ptr %bflush, align 4
  br i1 %cmp221, label %if.then224, label %if.end245

if.then224:                                       ; preds = %if.then198
  %159 = load ptr, ptr %s.addr, align 8
  %block_start225 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 22
  %160 = load i64, ptr %block_start225, align 8
  %cmp226 = icmp sgt i64 %160, -1
  br i1 %cmp226, label %cond.true228, label %cond.end235

cond.true228:                                     ; preds = %if.then224
  %161 = load ptr, ptr %s.addr, align 8
  %window229 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 13
  %162 = load ptr, ptr %window229, align 8
  %block_start230 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 22
  %163 = load i64, ptr %block_start230, align 8
  %idxprom232 = and i64 %163, 4294967295
  %arrayidx233 = getelementptr inbounds i8, ptr %162, i64 %idxprom232
  br label %cond.end235

cond.end235:                                      ; preds = %if.then224, %cond.true228
  %cond236 = phi ptr [ %arrayidx233, %cond.true228 ], [ null, %if.then224 ]
  %164 = load ptr, ptr %s.addr, align 8
  %strstart237 = getelementptr inbounds %struct.internal_state, ptr %164, i64 0, i32 26
  %165 = load i32, ptr %strstart237, align 4
  %conv238 = zext i32 %165 to i64
  %block_start239 = getelementptr inbounds %struct.internal_state, ptr %164, i64 0, i32 22
  %166 = load i64, ptr %block_start239, align 8
  %sub240 = sub nsw i64 %conv238, %166
  call void @_tr_flush_block(ptr noundef %159, ptr noundef %cond236, i64 noundef %sub240, i32 noundef 0) #5
  %167 = load ptr, ptr %s.addr, align 8
  %strstart241 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 26
  %168 = load i32, ptr %strstart241, align 4
  %conv242 = zext i32 %168 to i64
  %block_start243 = getelementptr inbounds %struct.internal_state, ptr %167, i64 0, i32 22
  store i64 %conv242, ptr %block_start243, align 8
  %169 = load ptr, ptr %167, align 8
  call void @flush_pending(ptr noundef %169)
  br label %if.end245

if.end245:                                        ; preds = %cond.end235, %if.then198
  %170 = load ptr, ptr %s.addr, align 8
  %strstart246 = getelementptr inbounds %struct.internal_state, ptr %170, i64 0, i32 26
  %171 = load i32, ptr %strstart246, align 4
  %inc247 = add i32 %171, 1
  store i32 %inc247, ptr %strstart246, align 4
  %lookahead248 = getelementptr inbounds %struct.internal_state, ptr %170, i64 0, i32 28
  %172 = load i32, ptr %lookahead248, align 4
  %dec249 = add i32 %172, -1
  store i32 %dec249, ptr %lookahead248, align 4
  %173 = load ptr, ptr %s.addr, align 8
  %174 = load ptr, ptr %173, align 8
  %avail_out251 = getelementptr inbounds %struct.z_stream_s, ptr %174, i64 0, i32 4
  %175 = load i32, ptr %avail_out251, align 8
  %cmp252 = icmp eq i32 %175, 0
  br i1 %cmp252, label %if.then254, label %if.end263

if.then254:                                       ; preds = %if.end245
  store i32 0, ptr %retval, align 4
  br label %return

if.else256:                                       ; preds = %if.else
  %176 = load ptr, ptr %s.addr, align 8
  %match_available257 = getelementptr inbounds %struct.internal_state, ptr %176, i64 0, i32 25
  store i32 1, ptr %match_available257, align 8
  %strstart258 = getelementptr inbounds %struct.internal_state, ptr %176, i64 0, i32 26
  %177 = load i32, ptr %strstart258, align 4
  %inc259 = add i32 %177, 1
  store i32 %inc259, ptr %strstart258, align 4
  %178 = load ptr, ptr %s.addr, align 8
  %lookahead260 = getelementptr inbounds %struct.internal_state, ptr %178, i64 0, i32 28
  %179 = load i32, ptr %lookahead260, align 4
  %dec261 = add i32 %179, -1
  store i32 %dec261, ptr %lookahead260, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.else256, %if.end245, %do.end, %cond.end181
  br label %for.cond

for.end:                                          ; preds = %if.end
  %180 = load ptr, ptr %s.addr, align 8
  %match_available264 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 25
  %181 = load i32, ptr %match_available264, align 8
  %tobool265.not = icmp eq i32 %181, 0
  br i1 %tobool265.not, label %if.end293, label %if.then266

if.then266:                                       ; preds = %for.end
  %182 = load ptr, ptr %s.addr, align 8
  %window268 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 13
  %183 = load ptr, ptr %window268, align 8
  %strstart269 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 26
  %184 = load i32, ptr %strstart269, align 4
  %sub270 = add i32 %184, -1
  %idxprom271 = zext i32 %sub270 to i64
  %arrayidx272 = getelementptr inbounds i8, ptr %183, i64 %idxprom271
  %185 = load i8, ptr %arrayidx272, align 1
  store i8 %185, ptr %cc267, align 1
  %186 = load ptr, ptr %s.addr, align 8
  %d_buf273 = getelementptr inbounds %struct.internal_state, ptr %186, i64 0, i32 50
  %187 = load ptr, ptr %d_buf273, align 8
  %last_lit274 = getelementptr inbounds %struct.internal_state, ptr %186, i64 0, i32 49
  %188 = load i32, ptr %last_lit274, align 4
  %idxprom275 = zext i32 %188 to i64
  %arrayidx276 = getelementptr inbounds i16, ptr %187, i64 %idxprom275
  store i16 0, ptr %arrayidx276, align 2
  %189 = load i8, ptr %cc267, align 1
  %190 = load ptr, ptr %s.addr, align 8
  %l_buf277 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 47
  %191 = load ptr, ptr %l_buf277, align 8
  %last_lit278 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 49
  %192 = load i32, ptr %last_lit278, align 4
  %inc279 = add i32 %192, 1
  store i32 %inc279, ptr %last_lit278, align 4
  %idxprom280 = zext i32 %192 to i64
  %arrayidx281 = getelementptr inbounds i8, ptr %191, i64 %idxprom280
  store i8 %189, ptr %arrayidx281, align 1
  %193 = load ptr, ptr %s.addr, align 8
  %194 = load i8, ptr %cc267, align 1
  %idxprom283 = zext i8 %194 to i64
  %arrayidx284 = getelementptr inbounds %struct.internal_state, ptr %193, i64 0, i32 36, i64 %idxprom283
  %195 = load i16, ptr %arrayidx284, align 4
  %inc286 = add i16 %195, 1
  store i16 %inc286, ptr %arrayidx284, align 4
  %196 = load ptr, ptr %s.addr, align 8
  %last_lit287 = getelementptr inbounds %struct.internal_state, ptr %196, i64 0, i32 49
  %197 = load i32, ptr %last_lit287, align 4
  %lit_bufsize288 = getelementptr inbounds %struct.internal_state, ptr %196, i64 0, i32 48
  %198 = load i32, ptr %lit_bufsize288, align 8
  %sub289 = add i32 %198, -1
  %cmp290 = icmp eq i32 %197, %sub289
  %conv291 = zext i1 %cmp290 to i32
  store i32 %conv291, ptr %bflush, align 4
  %199 = load ptr, ptr %s.addr, align 8
  %match_available292 = getelementptr inbounds %struct.internal_state, ptr %199, i64 0, i32 25
  store i32 0, ptr %match_available292, align 8
  br label %if.end293

if.end293:                                        ; preds = %if.then266, %for.end
  %200 = load ptr, ptr %s.addr, align 8
  %block_start294 = getelementptr inbounds %struct.internal_state, ptr %200, i64 0, i32 22
  %201 = load i64, ptr %block_start294, align 8
  %cmp295 = icmp sgt i64 %201, -1
  br i1 %cmp295, label %cond.true297, label %cond.end304

cond.true297:                                     ; preds = %if.end293
  %202 = load ptr, ptr %s.addr, align 8
  %window298 = getelementptr inbounds %struct.internal_state, ptr %202, i64 0, i32 13
  %203 = load ptr, ptr %window298, align 8
  %block_start299 = getelementptr inbounds %struct.internal_state, ptr %202, i64 0, i32 22
  %204 = load i64, ptr %block_start299, align 8
  %idxprom301 = and i64 %204, 4294967295
  %arrayidx302 = getelementptr inbounds i8, ptr %203, i64 %idxprom301
  br label %cond.end304

cond.end304:                                      ; preds = %if.end293, %cond.true297
  %cond305 = phi ptr [ %arrayidx302, %cond.true297 ], [ null, %if.end293 ]
  %205 = load ptr, ptr %s.addr, align 8
  %strstart306 = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 26
  %206 = load i32, ptr %strstart306, align 4
  %conv307 = zext i32 %206 to i64
  %block_start308 = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 22
  %207 = load i64, ptr %block_start308, align 8
  %sub309 = sub nsw i64 %conv307, %207
  %208 = load i32, ptr %flush.addr, align 4
  %cmp310 = icmp eq i32 %208, 4
  %conv311 = zext i1 %cmp310 to i32
  call void @_tr_flush_block(ptr noundef %200, ptr noundef %cond305, i64 noundef %sub309, i32 noundef %conv311) #5
  %209 = load ptr, ptr %s.addr, align 8
  %strstart312 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 26
  %210 = load i32, ptr %strstart312, align 4
  %conv313 = zext i32 %210 to i64
  %block_start314 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 22
  store i64 %conv313, ptr %block_start314, align 8
  %211 = load ptr, ptr %209, align 8
  call void @flush_pending(ptr noundef %211)
  %212 = load ptr, ptr %s.addr, align 8
  %213 = load ptr, ptr %212, align 8
  %avail_out317 = getelementptr inbounds %struct.z_stream_s, ptr %213, i64 0, i32 4
  %214 = load i32, ptr %avail_out317, align 8
  %cmp318 = icmp eq i32 %214, 0
  br i1 %cmp318, label %if.then320, label %if.end324

if.then320:                                       ; preds = %cond.end304
  %215 = load i32, ptr %flush.addr, align 4
  %cmp321 = icmp eq i32 %215, 4
  %cond323 = select i1 %cmp321, i32 2, i32 0
  store i32 %cond323, ptr %retval, align 4
  br label %return

if.end324:                                        ; preds = %cond.end304
  %216 = load i32, ptr %flush.addr, align 4
  %cmp325 = icmp eq i32 %216, 4
  %cond327 = select i1 %cmp325, i32 3, i32 1
  store i32 %cond327, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end324, %if.then320, %if.then254, %if.then193, %if.then4
  %217 = load i32, ptr %retval, align 4
  ret i32 %217
}

; Function Attrs: nounwind ssp uwtable
define internal void @fill_window(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca ptr, align 8
  %more = alloca i32, align 4
  %wsize = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 10
  %0 = load i32, ptr %w_size, align 8
  store i32 %0, ptr %wsize, align 4
  br label %do.body

do.body:                                          ; preds = %land.rhs, %entry
  %1 = load ptr, ptr %s.addr, align 8
  %window_size = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 14
  %2 = load i64, ptr %window_size, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 28
  %3 = load i32, ptr %lookahead, align 4
  %conv = zext i32 %3 to i64
  %strstart = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 26
  %4 = load i32, ptr %strstart, align 4
  %conv1 = zext i32 %4 to i64
  %5 = add nuw nsw i64 %conv, %conv1
  %sub2 = sub i64 %2, %5
  %conv3 = trunc i64 %sub2 to i32
  store i32 %conv3, ptr %more, align 4
  %cmp = icmp eq i32 %conv3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %6 = load ptr, ptr %s.addr, align 8
  %strstart5 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 26
  %7 = load i32, ptr %strstart5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %s.addr, align 8
  %lookahead9 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 28
  %9 = load i32, ptr %lookahead9, align 4
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true8
  %10 = load i32, ptr %wsize, align 4
  store i32 %10, ptr %more, align 4
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true8, %land.lhs.true, %do.body
  %11 = load i32, ptr %more, align 4
  %cmp12 = icmp eq i32 %11, -1
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  %12 = load i32, ptr %more, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %more, align 4
  br label %if.end56

if.else15:                                        ; preds = %if.else
  %13 = load ptr, ptr %s.addr, align 8
  %strstart16 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 26
  %14 = load i32, ptr %strstart16, align 4
  %15 = load i32, ptr %wsize, align 4
  %w_size17 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 10
  %16 = load i32, ptr %w_size17, align 8
  %sub18 = add i32 %16, -262
  %add = add i32 %15, %sub18
  %cmp19.not = icmp ult i32 %14, %add
  br i1 %cmp19.not, label %if.end56, label %if.then21

if.then21:                                        ; preds = %if.else15
  %17 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 13
  %18 = load ptr, ptr %window, align 8
  %19 = load i32, ptr %wsize, align 4
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %idx.ext
  %conv23 = zext i32 %19 to i64
  %20 = load ptr, ptr %s.addr, align 8
  %window24 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 13
  %21 = load ptr, ptr %window24, align 8
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %21, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %18, ptr noundef %add.ptr, i64 noundef %conv23, i64 noundef %22) #5
  %23 = load i32, ptr %wsize, align 4
  %match_start = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 27
  %24 = load i32, ptr %match_start, align 8
  %sub25 = sub i32 %24, %23
  store i32 %sub25, ptr %match_start, align 8
  %25 = load ptr, ptr %s.addr, align 8
  %strstart26 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 26
  %26 = load i32, ptr %strstart26, align 4
  %sub27 = sub i32 %26, %23
  store i32 %sub27, ptr %strstart26, align 4
  %27 = load i32, ptr %wsize, align 4
  %conv28 = zext i32 %27 to i64
  %28 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 22
  %29 = load i64, ptr %block_start, align 8
  %sub29 = sub nsw i64 %29, %conv28
  store i64 %sub29, ptr %block_start, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 18
  %30 = load i32, ptr %hash_size, align 4
  store i32 %30, ptr %n, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 16
  %32 = load ptr, ptr %head, align 8
  %idxprom = zext i32 %30 to i64
  %arrayidx = getelementptr inbounds i16, ptr %32, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  br label %do.body30

do.body30:                                        ; preds = %do.body30, %if.then21
  %33 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %33, i64 -1
  store ptr %incdec.ptr, ptr %p, align 8
  %34 = load i16, ptr %incdec.ptr, align 2
  %conv31 = zext i16 %34 to i32
  store i32 %conv31, ptr %m, align 4
  %35 = load i32, ptr %wsize, align 4
  %cmp32.not = icmp ugt i32 %35, %conv31
  %36 = load i32, ptr %m, align 4
  %37 = load i32, ptr %wsize, align 4
  %sub34 = sub i32 %36, %37
  %cond = select i1 %cmp32.not, i32 0, i32 %sub34
  %conv35 = trunc i32 %cond to i16
  %38 = load ptr, ptr %p, align 8
  store i16 %conv35, ptr %38, align 2
  %39 = load i32, ptr %n, align 4
  %dec36 = add i32 %39, -1
  store i32 %dec36, ptr %n, align 4
  %tobool.not = icmp eq i32 %dec36, 0
  br i1 %tobool.not, label %do.end, label %do.body30, !llvm.loop !10

do.end:                                           ; preds = %do.body30
  %40 = load i32, ptr %wsize, align 4
  store i32 %40, ptr %n, align 4
  %41 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 15
  %42 = load ptr, ptr %prev, align 8
  %idxprom37 = zext i32 %40 to i64
  %arrayidx38 = getelementptr inbounds i16, ptr %42, i64 %idxprom37
  store ptr %arrayidx38, ptr %p, align 8
  br label %do.body39

do.body39:                                        ; preds = %do.body39, %do.end
  %43 = load ptr, ptr %p, align 8
  %incdec.ptr40 = getelementptr inbounds i16, ptr %43, i64 -1
  store ptr %incdec.ptr40, ptr %p, align 8
  %44 = load i16, ptr %incdec.ptr40, align 2
  %conv41 = zext i16 %44 to i32
  store i32 %conv41, ptr %m, align 4
  %45 = load i32, ptr %wsize, align 4
  %cmp42.not = icmp ugt i32 %45, %conv41
  %46 = load i32, ptr %m, align 4
  %47 = load i32, ptr %wsize, align 4
  %sub45 = sub i32 %46, %47
  %cond48 = select i1 %cmp42.not, i32 0, i32 %sub45
  %conv49 = trunc i32 %cond48 to i16
  %48 = load ptr, ptr %p, align 8
  store i16 %conv49, ptr %48, align 2
  %49 = load i32, ptr %n, align 4
  %dec51 = add i32 %49, -1
  store i32 %dec51, ptr %n, align 4
  %tobool52.not = icmp eq i32 %dec51, 0
  br i1 %tobool52.not, label %do.end53, label %do.body39, !llvm.loop !11

do.end53:                                         ; preds = %do.body39
  %50 = load i32, ptr %wsize, align 4
  %51 = load i32, ptr %more, align 4
  %add54 = add i32 %51, %50
  store i32 %add54, ptr %more, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then14, %do.end53, %if.else15, %if.then
  %52 = load ptr, ptr %s.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %53, i64 0, i32 1
  %54 = load i32, ptr %avail_in, align 8
  %cmp57 = icmp eq i32 %54, 0
  br i1 %cmp57, label %do.end98, label %if.end60

if.end60:                                         ; preds = %if.end56
  %55 = load ptr, ptr %s.addr, align 8
  %56 = load ptr, ptr %55, align 8
  %window62 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 13
  %57 = load ptr, ptr %window62, align 8
  %strstart63 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 26
  %58 = load i32, ptr %strstart63, align 4
  %idx.ext64 = zext i32 %58 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %57, i64 %idx.ext64
  %59 = load ptr, ptr %s.addr, align 8
  %lookahead66 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 28
  %60 = load i32, ptr %lookahead66, align 4
  %idx.ext67 = zext i32 %60 to i64
  %add.ptr68 = getelementptr inbounds i8, ptr %add.ptr65, i64 %idx.ext67
  %61 = load i32, ptr %more, align 4
  %call69 = call i32 @read_buf(ptr noundef %56, ptr noundef %add.ptr68, i32 noundef %61)
  store i32 %call69, ptr %n, align 4
  %62 = load ptr, ptr %s.addr, align 8
  %lookahead70 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 28
  %63 = load i32, ptr %lookahead70, align 4
  %add71 = add i32 %63, %call69
  store i32 %add71, ptr %lookahead70, align 4
  %cmp73 = icmp ugt i32 %add71, 2
  br i1 %cmp73, label %if.then75, label %do.cond90

if.then75:                                        ; preds = %if.end60
  %64 = load ptr, ptr %s.addr, align 8
  %window76 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 13
  %65 = load ptr, ptr %window76, align 8
  %strstart77 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 26
  %66 = load i32, ptr %strstart77, align 4
  %idxprom78 = zext i32 %66 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %65, i64 %idxprom78
  %67 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %67 to i32
  %68 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 17
  store i32 %conv80, ptr %ins_h, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 21
  %69 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %conv80, %69
  %window82 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 13
  %70 = load ptr, ptr %window82, align 8
  %71 = load ptr, ptr %s.addr, align 8
  %strstart83 = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 26
  %72 = load i32, ptr %strstart83, align 4
  %add84 = add i32 %72, 1
  %idxprom85 = zext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %70, i64 %idxprom85
  %73 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %73 to i32
  %xor = xor i32 %shl, %conv87
  %74 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 20
  %75 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %75
  %ins_h88 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 17
  store i32 %and, ptr %ins_h88, align 8
  br label %do.cond90

do.cond90:                                        ; preds = %if.end60, %if.then75
  %76 = load ptr, ptr %s.addr, align 8
  %lookahead91 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 28
  %77 = load i32, ptr %lookahead91, align 4
  %cmp92 = icmp ult i32 %77, 262
  br i1 %cmp92, label %land.rhs, label %do.end98

land.rhs:                                         ; preds = %do.cond90
  %78 = load ptr, ptr %s.addr, align 8
  %79 = load ptr, ptr %78, align 8
  %avail_in95 = getelementptr inbounds %struct.z_stream_s, ptr %79, i64 0, i32 1
  %80 = load i32, ptr %avail_in95, align 8
  %cmp96 = icmp ne i32 %80, 0
  br i1 %cmp96, label %do.body, label %do.end98, !llvm.loop !12

do.end98:                                         ; preds = %do.cond90, %if.end56, %land.rhs
  ret void
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_buf(ptr noundef %strm, ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 1
  %0 = load i32, ptr %avail_in, align 8
  store i32 %0, ptr %len, align 4
  %cmp = icmp ugt i32 %0, %size
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %size.addr, align 4
  store i32 %1, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %len, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %len, align 4
  %4 = load ptr, ptr %strm.addr, align 8
  %avail_in4 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 1
  %5 = load i32, ptr %avail_in4, align 8
  %sub = sub i32 %5, %3
  store i32 %sub, ptr %avail_in4, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %state, align 8
  %noheader = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 6
  %7 = load i32, ptr %noheader, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %8 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 12
  %9 = load i64, ptr %adler, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load i32, ptr %len, align 4
  %call = call i64 @adler32(i64 noundef %9, ptr noundef %10, i32 noundef %11) #5
  %adler6 = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 12
  store i64 %call, ptr %adler6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %12 = load ptr, ptr %buf.addr, align 8
  %13 = load ptr, ptr %strm.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %len, align 4
  %conv = zext i32 %15 to i64
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memcpy_chk(ptr noundef %12, ptr noundef %14, i64 noundef %conv, i64 noundef %16) #5
  %17 = load ptr, ptr %13, align 8
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %13, align 8
  %18 = load i32, ptr %len, align 4
  %conv11 = zext i32 %18 to i64
  %19 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 2
  %20 = load i64, ptr %total_in, align 8
  %add = add i64 %20, %conv11
  store i64 %add, ptr %total_in, align 8
  %21 = load i32, ptr %len, align 4
  br label %return

return:                                           ; preds = %if.end, %if.end7
  %storemerge = phi i32 [ %21, %if.end7 ], [ 0, %if.end ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @longest_match(ptr noundef %s, i32 noundef %cur_match) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %cur_match.addr = alloca i32, align 4
  %chain_length = alloca i32, align 4
  %scan = alloca ptr, align 8
  %match = alloca ptr, align 8
  %len = alloca i32, align 4
  %best_len = alloca i32, align 4
  %nice_match = alloca i32, align 4
  %limit = alloca i32, align 4
  %prev = alloca ptr, align 8
  %wmask = alloca i32, align 4
  %strend = alloca ptr, align 8
  %scan_end1 = alloca i8, align 1
  %scan_end = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %cur_match, ptr %cur_match.addr, align 4
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 30
  %0 = load i32, ptr %max_chain_length, align 4
  store i32 %0, ptr %chain_length, align 4
  %window = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 13
  %1 = load ptr, ptr %window, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 26
  %3 = load i32, ptr %strstart, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %scan, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 29
  %4 = load i32, ptr %prev_length, align 8
  store i32 %4, ptr %best_len, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %nice_match1 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 35
  %6 = load i32, ptr %nice_match1, align 8
  store i32 %6, ptr %nice_match, align 4
  %strstart2 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 26
  %7 = load i32, ptr %strstart2, align 4
  %w_size = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 10
  %8 = load i32, ptr %w_size, align 8
  %sub = add i32 %8, -262
  %cmp = icmp ugt i32 %7, %sub
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %9 = load ptr, ptr %s.addr, align 8
  %strstart3 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 26
  %10 = load i32, ptr %strstart3, align 4
  %w_size4 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %w_size4, align 8
  %sub5 = add i32 %11, -262
  %sub6 = sub i32 %10, %sub5
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub6, %cond.true ], [ 0, %entry ]
  store i32 %cond, ptr %limit, align 4
  %12 = load ptr, ptr %s.addr, align 8
  %prev7 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 15
  %13 = load ptr, ptr %prev7, align 8
  store ptr %13, ptr %prev, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 12
  %14 = load i32, ptr %w_mask, align 8
  store i32 %14, ptr %wmask, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %window8 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 13
  %16 = load ptr, ptr %window8, align 8
  %strstart9 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 26
  %17 = load i32, ptr %strstart9, align 4
  %idx.ext10 = zext i32 %17 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %16, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 258
  store ptr %add.ptr12, ptr %strend, align 8
  %18 = load ptr, ptr %scan, align 8
  %19 = load i32, ptr %best_len, align 4
  %sub13 = add nsw i32 %19, -1
  %idxprom = sext i32 %sub13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %idxprom
  %20 = load i8, ptr %arrayidx, align 1
  store i8 %20, ptr %scan_end1, align 1
  %21 = load ptr, ptr %scan, align 8
  %22 = load i32, ptr %best_len, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %21, i64 %idxprom14
  %23 = load i8, ptr %arrayidx15, align 1
  store i8 %23, ptr %scan_end, align 1
  %24 = load ptr, ptr %s.addr, align 8
  %prev_length16 = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 29
  %25 = load i32, ptr %prev_length16, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 34
  %26 = load i32, ptr %good_match, align 4
  %cmp17.not = icmp ult i32 %25, %26
  br i1 %cmp17.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %27 = load i32, ptr %chain_length, align 4
  %shr = lshr i32 %27, 2
  store i32 %shr, ptr %chain_length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %28 = load i32, ptr %nice_match, align 4
  %29 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 28
  %30 = load i32, ptr %lookahead, align 4
  %cmp18 = icmp ugt i32 %28, %30
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end
  %31 = load ptr, ptr %s.addr, align 8
  %lookahead20 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 28
  %32 = load i32, ptr %lookahead20, align 4
  store i32 %32, ptr %nice_match, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end
  br label %do.body

do.body:                                          ; preds = %land.rhs131, %if.end21
  %33 = load ptr, ptr %s.addr, align 8
  %window22 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 13
  %34 = load ptr, ptr %window22, align 8
  %35 = load i32, ptr %cur_match.addr, align 4
  %idx.ext23 = zext i32 %35 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %34, i64 %idx.ext23
  store ptr %add.ptr24, ptr %match, align 8
  %36 = load i32, ptr %best_len, align 4
  %idxprom25 = sext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %add.ptr24, i64 %idxprom25
  %37 = load i8, ptr %arrayidx26, align 1
  %38 = load i8, ptr %scan_end, align 1
  %cmp28.not = icmp eq i8 %37, %38
  br i1 %cmp28.not, label %lor.lhs.false, label %do.cond125

lor.lhs.false:                                    ; preds = %do.body
  %39 = load ptr, ptr %match, align 8
  %40 = load i32, ptr %best_len, align 4
  %sub30 = add nsw i32 %40, -1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %39, i64 %idxprom31
  %41 = load i8, ptr %arrayidx32, align 1
  %42 = load i8, ptr %scan_end1, align 1
  %cmp35.not = icmp eq i8 %41, %42
  br i1 %cmp35.not, label %lor.lhs.false37, label %do.cond125

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %43 = load ptr, ptr %match, align 8
  %44 = load i8, ptr %43, align 1
  %45 = load ptr, ptr %scan, align 8
  %46 = load i8, ptr %45, align 1
  %cmp40.not = icmp eq i8 %44, %46
  br i1 %cmp40.not, label %lor.lhs.false42, label %do.cond125

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %47 = load ptr, ptr %match, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %47, i64 1
  store ptr %incdec.ptr, ptr %match, align 8
  %48 = load i8, ptr %incdec.ptr, align 1
  %49 = load ptr, ptr %scan, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %49, i64 1
  %50 = load i8, ptr %arrayidx44, align 1
  %cmp46.not = icmp eq i8 %48, %50
  br i1 %cmp46.not, label %if.end49, label %do.cond125

if.end49:                                         ; preds = %lor.lhs.false42
  %51 = load ptr, ptr %scan, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %51, i64 2
  store ptr %add.ptr50, ptr %scan, align 8
  %52 = load ptr, ptr %match, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %incdec.ptr51, ptr %match, align 8
  br label %do.body52

do.body52:                                        ; preds = %land.rhs, %if.end49
  %53 = load ptr, ptr %scan, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %incdec.ptr53, ptr %scan, align 8
  %54 = load i8, ptr %incdec.ptr53, align 1
  %55 = load ptr, ptr %match, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %incdec.ptr55, ptr %match, align 8
  %56 = load i8, ptr %incdec.ptr55, align 1
  %cmp57 = icmp eq i8 %54, %56
  br i1 %cmp57, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %do.body52
  %57 = load ptr, ptr %scan, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %incdec.ptr59, ptr %scan, align 8
  %58 = load i8, ptr %incdec.ptr59, align 1
  %59 = load ptr, ptr %match, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %incdec.ptr61, ptr %match, align 8
  %60 = load i8, ptr %incdec.ptr61, align 1
  %cmp63 = icmp eq i8 %58, %60
  br i1 %cmp63, label %land.lhs.true65, label %do.end

land.lhs.true65:                                  ; preds = %land.lhs.true
  %61 = load ptr, ptr %scan, align 8
  %incdec.ptr66 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %incdec.ptr66, ptr %scan, align 8
  %62 = load i8, ptr %incdec.ptr66, align 1
  %63 = load ptr, ptr %match, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %incdec.ptr68, ptr %match, align 8
  %64 = load i8, ptr %incdec.ptr68, align 1
  %cmp70 = icmp eq i8 %62, %64
  br i1 %cmp70, label %land.lhs.true72, label %do.end

land.lhs.true72:                                  ; preds = %land.lhs.true65
  %65 = load ptr, ptr %scan, align 8
  %incdec.ptr73 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %incdec.ptr73, ptr %scan, align 8
  %66 = load i8, ptr %incdec.ptr73, align 1
  %67 = load ptr, ptr %match, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %67, i64 1
  store ptr %incdec.ptr75, ptr %match, align 8
  %68 = load i8, ptr %incdec.ptr75, align 1
  %cmp77 = icmp eq i8 %66, %68
  br i1 %cmp77, label %land.lhs.true79, label %do.end

land.lhs.true79:                                  ; preds = %land.lhs.true72
  %69 = load ptr, ptr %scan, align 8
  %incdec.ptr80 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %incdec.ptr80, ptr %scan, align 8
  %70 = load i8, ptr %incdec.ptr80, align 1
  %71 = load ptr, ptr %match, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %incdec.ptr82, ptr %match, align 8
  %72 = load i8, ptr %incdec.ptr82, align 1
  %cmp84 = icmp eq i8 %70, %72
  br i1 %cmp84, label %land.lhs.true86, label %do.end

land.lhs.true86:                                  ; preds = %land.lhs.true79
  %73 = load ptr, ptr %scan, align 8
  %incdec.ptr87 = getelementptr inbounds i8, ptr %73, i64 1
  store ptr %incdec.ptr87, ptr %scan, align 8
  %74 = load i8, ptr %incdec.ptr87, align 1
  %75 = load ptr, ptr %match, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %incdec.ptr89, ptr %match, align 8
  %76 = load i8, ptr %incdec.ptr89, align 1
  %cmp91 = icmp eq i8 %74, %76
  br i1 %cmp91, label %land.lhs.true93, label %do.end

land.lhs.true93:                                  ; preds = %land.lhs.true86
  %77 = load ptr, ptr %scan, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %77, i64 1
  store ptr %incdec.ptr94, ptr %scan, align 8
  %78 = load i8, ptr %incdec.ptr94, align 1
  %79 = load ptr, ptr %match, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %incdec.ptr96, ptr %match, align 8
  %80 = load i8, ptr %incdec.ptr96, align 1
  %cmp98 = icmp eq i8 %78, %80
  br i1 %cmp98, label %land.lhs.true100, label %do.end

land.lhs.true100:                                 ; preds = %land.lhs.true93
  %81 = load ptr, ptr %scan, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %incdec.ptr101, ptr %scan, align 8
  %82 = load i8, ptr %incdec.ptr101, align 1
  %83 = load ptr, ptr %match, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %83, i64 1
  store ptr %incdec.ptr103, ptr %match, align 8
  %84 = load i8, ptr %incdec.ptr103, align 1
  %cmp105 = icmp eq i8 %82, %84
  br i1 %cmp105, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %land.lhs.true100
  %85 = load ptr, ptr %scan, align 8
  %86 = load ptr, ptr %strend, align 8
  %cmp107 = icmp ult ptr %85, %86
  br i1 %cmp107, label %do.body52, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %land.lhs.true100, %land.lhs.true93, %land.lhs.true86, %land.lhs.true79, %land.lhs.true72, %land.lhs.true65, %land.lhs.true, %do.body52, %land.rhs
  %87 = load ptr, ptr %strend, align 8
  %88 = load ptr, ptr %scan, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %87 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %88 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %conv109.neg = trunc i64 %sub.ptr.sub.neg to i32
  %sub110 = add i32 %conv109.neg, 258
  store i32 %sub110, ptr %len, align 4
  %89 = load ptr, ptr %strend, align 8
  %add.ptr111 = getelementptr inbounds i8, ptr %89, i64 -258
  store ptr %add.ptr111, ptr %scan, align 8
  %90 = load i32, ptr %best_len, align 4
  %cmp112 = icmp sgt i32 %sub110, %90
  br i1 %cmp112, label %if.then114, label %do.cond125

if.then114:                                       ; preds = %do.end
  %91 = load i32, ptr %cur_match.addr, align 4
  %92 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 27
  store i32 %91, ptr %match_start, align 8
  %93 = load i32, ptr %len, align 4
  store i32 %93, ptr %best_len, align 4
  %94 = load i32, ptr %nice_match, align 4
  %cmp115.not = icmp slt i32 %93, %94
  br i1 %cmp115.not, label %if.end118, label %do.end135

if.end118:                                        ; preds = %if.then114
  %95 = load ptr, ptr %scan, align 8
  %96 = load i32, ptr %best_len, align 4
  %sub119 = add nsw i32 %96, -1
  %idxprom120 = sext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %95, i64 %idxprom120
  %97 = load i8, ptr %arrayidx121, align 1
  store i8 %97, ptr %scan_end1, align 1
  %98 = load ptr, ptr %scan, align 8
  %99 = load i32, ptr %best_len, align 4
  %idxprom122 = sext i32 %99 to i64
  %arrayidx123 = getelementptr inbounds i8, ptr %98, i64 %idxprom122
  %100 = load i8, ptr %arrayidx123, align 1
  store i8 %100, ptr %scan_end, align 1
  br label %do.cond125

do.cond125:                                       ; preds = %do.end, %if.end118, %do.body, %lor.lhs.false, %lor.lhs.false37, %lor.lhs.false42
  %101 = load ptr, ptr %prev, align 8
  %102 = load i32, ptr %cur_match.addr, align 4
  %103 = load i32, ptr %wmask, align 4
  %and = and i32 %102, %103
  %idxprom126 = zext i32 %and to i64
  %arrayidx127 = getelementptr inbounds i16, ptr %101, i64 %idxprom126
  %104 = load i16, ptr %arrayidx127, align 2
  %conv128 = zext i16 %104 to i32
  store i32 %conv128, ptr %cur_match.addr, align 4
  %105 = load i32, ptr %limit, align 4
  %cmp129 = icmp ult i32 %105, %conv128
  br i1 %cmp129, label %land.rhs131, label %do.end135

land.rhs131:                                      ; preds = %do.cond125
  %106 = load i32, ptr %chain_length, align 4
  %dec = add i32 %106, -1
  store i32 %dec, ptr %chain_length, align 4
  %cmp132 = icmp ne i32 %dec, 0
  br i1 %cmp132, label %do.body, label %do.end135, !llvm.loop !14

do.end135:                                        ; preds = %do.cond125, %if.then114, %land.rhs131
  %107 = load i32, ptr %best_len, align 4
  %108 = load ptr, ptr %s.addr, align 8
  %lookahead136 = getelementptr inbounds %struct.internal_state, ptr %108, i64 0, i32 28
  %109 = load i32, ptr %lookahead136, align 4
  %cmp137.not = icmp ugt i32 %107, %109
  br i1 %cmp137.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %do.end135
  %110 = load i32, ptr %best_len, align 4
  br label %return

if.end140:                                        ; preds = %do.end135
  %111 = load ptr, ptr %s.addr, align 8
  %lookahead141 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 28
  %112 = load i32, ptr %lookahead141, align 4
  br label %return

return:                                           ; preds = %if.end140, %if.then139
  %storemerge = phi i32 [ %112, %if.end140 ], [ %110, %if.then139 ]
  ret i32 %storemerge
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
