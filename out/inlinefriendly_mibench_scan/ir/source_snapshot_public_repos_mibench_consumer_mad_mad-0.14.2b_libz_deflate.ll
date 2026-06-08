; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/deflate.c'
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateInit_(ptr noundef %strm, i32 noundef %level, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %version.addr = alloca ptr, align 8
  %stream_size.addr = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store ptr %version, ptr %version.addr, align 8
  store i32 %stream_size, ptr %stream_size.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %1 = load i32, ptr %level.addr, align 4
  %2 = load ptr, ptr %version.addr, align 8
  %3 = load i32, ptr %stream_size.addr, align 4
  %call = call i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef %2, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %version.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %version.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load ptr, ptr @deflateInit2_.my_version, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  br i1 %cmp3, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load i32, ptr %stream_size.addr, align 4
  %conv6 = sext i32 %5 to i64
  %cmp7 = icmp ne i64 %conv6, 112
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %6 = load ptr, ptr %strm.addr, align 8
  %cmp9 = icmp eq ptr %6, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %7 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %8 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %zalloc, align 8
  %cmp13 = icmp eq ptr %9, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %10 = load ptr, ptr %strm.addr, align 8
  %zalloc16 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 8
  store ptr @zcalloc, ptr %zalloc16, align 8
  %11 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12
  %12 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %zfree, align 8
  %cmp18 = icmp eq ptr %13, null
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %14 = load ptr, ptr %strm.addr, align 8
  %zfree21 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 9
  store ptr @zcfree, ptr %zfree21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17
  %15 = load i32, ptr %level.addr, align 4
  %cmp23 = icmp eq i32 %15, -1
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  store i32 6, ptr %level.addr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %16 = load i32, ptr %windowBits.addr, align 4
  %cmp27 = icmp slt i32 %16, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  store i32 1, ptr %noheader, align 4
  %17 = load i32, ptr %windowBits.addr, align 4
  %sub = sub nsw i32 0, %17
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26
  %18 = load i32, ptr %memLevel.addr, align 4
  %cmp31 = icmp slt i32 %18, 1
  br i1 %cmp31, label %if.then57, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end30
  %19 = load i32, ptr %memLevel.addr, align 4
  %cmp34 = icmp sgt i32 %19, 9
  br i1 %cmp34, label %if.then57, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %20 = load i32, ptr %method.addr, align 4
  %cmp37 = icmp ne i32 %20, 8
  br i1 %cmp37, label %if.then57, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %21 = load i32, ptr %windowBits.addr, align 4
  %cmp40 = icmp slt i32 %21, 8
  br i1 %cmp40, label %if.then57, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %22 = load i32, ptr %windowBits.addr, align 4
  %cmp43 = icmp sgt i32 %22, 15
  br i1 %cmp43, label %if.then57, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %23 = load i32, ptr %level.addr, align 4
  %cmp46 = icmp slt i32 %23, 0
  br i1 %cmp46, label %if.then57, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %24 = load i32, ptr %level.addr, align 4
  %cmp49 = icmp sgt i32 %24, 9
  br i1 %cmp49, label %if.then57, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %25 = load i32, ptr %strategy.addr, align 4
  %cmp52 = icmp slt i32 %25, 0
  br i1 %cmp52, label %if.then57, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %26 = load i32, ptr %strategy.addr, align 4
  %cmp55 = icmp sgt i32 %26, 2
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %lor.lhs.false54, %lor.lhs.false51, %lor.lhs.false48, %lor.lhs.false45, %lor.lhs.false42, %lor.lhs.false39, %lor.lhs.false36, %lor.lhs.false33, %if.end30
  store i32 -2, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %lor.lhs.false54
  %27 = load ptr, ptr %strm.addr, align 8
  %zalloc59 = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 8
  %28 = load ptr, ptr %zalloc59, align 8
  %29 = load ptr, ptr %strm.addr, align 8
  %opaque60 = getelementptr inbounds %struct.z_stream_s, ptr %29, i32 0, i32 10
  %30 = load ptr, ptr %opaque60, align 8
  %call = call ptr %28(ptr noundef %30, i32 noundef 1, i32 noundef 5920)
  store ptr %call, ptr %s, align 8
  %31 = load ptr, ptr %s, align 8
  %cmp61 = icmp eq ptr %31, null
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end58
  store i32 -4, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end58
  %32 = load ptr, ptr %s, align 8
  %33 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 7
  store ptr %32, ptr %state, align 8
  %34 = load ptr, ptr %strm.addr, align 8
  %35 = load ptr, ptr %s, align 8
  %strm65 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 0
  store ptr %34, ptr %strm65, align 8
  %36 = load i32, ptr %noheader, align 4
  %37 = load ptr, ptr %s, align 8
  %noheader66 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 6
  store i32 %36, ptr %noheader66, align 4
  %38 = load i32, ptr %windowBits.addr, align 4
  %39 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 11
  store i32 %38, ptr %w_bits, align 4
  %40 = load ptr, ptr %s, align 8
  %w_bits67 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 11
  %41 = load i32, ptr %w_bits67, align 4
  %shl = shl i32 1, %41
  %42 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 10
  store i32 %shl, ptr %w_size, align 8
  %43 = load ptr, ptr %s, align 8
  %w_size68 = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 10
  %44 = load i32, ptr %w_size68, align 8
  %sub69 = sub i32 %44, 1
  %45 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 12
  store i32 %sub69, ptr %w_mask, align 8
  %46 = load i32, ptr %memLevel.addr, align 4
  %add = add nsw i32 %46, 7
  %47 = load ptr, ptr %s, align 8
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 19
  store i32 %add, ptr %hash_bits, align 8
  %48 = load ptr, ptr %s, align 8
  %hash_bits70 = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 19
  %49 = load i32, ptr %hash_bits70, align 8
  %shl71 = shl i32 1, %49
  %50 = load ptr, ptr %s, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %50, i32 0, i32 18
  store i32 %shl71, ptr %hash_size, align 4
  %51 = load ptr, ptr %s, align 8
  %hash_size72 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 18
  %52 = load i32, ptr %hash_size72, align 4
  %sub73 = sub i32 %52, 1
  %53 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 20
  store i32 %sub73, ptr %hash_mask, align 4
  %54 = load ptr, ptr %s, align 8
  %hash_bits74 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 19
  %55 = load i32, ptr %hash_bits74, align 8
  %add75 = add i32 %55, 3
  %sub76 = sub i32 %add75, 1
  %div = udiv i32 %sub76, 3
  %56 = load ptr, ptr %s, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 21
  store i32 %div, ptr %hash_shift, align 8
  %57 = load ptr, ptr %strm.addr, align 8
  %zalloc77 = getelementptr inbounds %struct.z_stream_s, ptr %57, i32 0, i32 8
  %58 = load ptr, ptr %zalloc77, align 8
  %59 = load ptr, ptr %strm.addr, align 8
  %opaque78 = getelementptr inbounds %struct.z_stream_s, ptr %59, i32 0, i32 10
  %60 = load ptr, ptr %opaque78, align 8
  %61 = load ptr, ptr %s, align 8
  %w_size79 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 10
  %62 = load i32, ptr %w_size79, align 8
  %call80 = call ptr %58(ptr noundef %60, i32 noundef %62, i32 noundef 2)
  %63 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 13
  store ptr %call80, ptr %window, align 8
  %64 = load ptr, ptr %strm.addr, align 8
  %zalloc81 = getelementptr inbounds %struct.z_stream_s, ptr %64, i32 0, i32 8
  %65 = load ptr, ptr %zalloc81, align 8
  %66 = load ptr, ptr %strm.addr, align 8
  %opaque82 = getelementptr inbounds %struct.z_stream_s, ptr %66, i32 0, i32 10
  %67 = load ptr, ptr %opaque82, align 8
  %68 = load ptr, ptr %s, align 8
  %w_size83 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 10
  %69 = load i32, ptr %w_size83, align 8
  %call84 = call ptr %65(ptr noundef %67, i32 noundef %69, i32 noundef 2)
  %70 = load ptr, ptr %s, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 15
  store ptr %call84, ptr %prev, align 8
  %71 = load ptr, ptr %strm.addr, align 8
  %zalloc85 = getelementptr inbounds %struct.z_stream_s, ptr %71, i32 0, i32 8
  %72 = load ptr, ptr %zalloc85, align 8
  %73 = load ptr, ptr %strm.addr, align 8
  %opaque86 = getelementptr inbounds %struct.z_stream_s, ptr %73, i32 0, i32 10
  %74 = load ptr, ptr %opaque86, align 8
  %75 = load ptr, ptr %s, align 8
  %hash_size87 = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 18
  %76 = load i32, ptr %hash_size87, align 4
  %call88 = call ptr %72(ptr noundef %74, i32 noundef %76, i32 noundef 2)
  %77 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 16
  store ptr %call88, ptr %head, align 8
  %78 = load i32, ptr %memLevel.addr, align 4
  %add89 = add nsw i32 %78, 6
  %shl90 = shl i32 1, %add89
  %79 = load ptr, ptr %s, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 48
  store i32 %shl90, ptr %lit_bufsize, align 8
  %80 = load ptr, ptr %strm.addr, align 8
  %zalloc91 = getelementptr inbounds %struct.z_stream_s, ptr %80, i32 0, i32 8
  %81 = load ptr, ptr %zalloc91, align 8
  %82 = load ptr, ptr %strm.addr, align 8
  %opaque92 = getelementptr inbounds %struct.z_stream_s, ptr %82, i32 0, i32 10
  %83 = load ptr, ptr %opaque92, align 8
  %84 = load ptr, ptr %s, align 8
  %lit_bufsize93 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 48
  %85 = load i32, ptr %lit_bufsize93, align 8
  %call94 = call ptr %81(ptr noundef %83, i32 noundef %85, i32 noundef 4)
  store ptr %call94, ptr %overlay, align 8
  %86 = load ptr, ptr %overlay, align 8
  %87 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 2
  store ptr %86, ptr %pending_buf, align 8
  %88 = load ptr, ptr %s, align 8
  %lit_bufsize95 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 48
  %89 = load i32, ptr %lit_bufsize95, align 8
  %conv96 = zext i32 %89 to i64
  %mul = mul i64 %conv96, 4
  %90 = load ptr, ptr %s, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 3
  store i64 %mul, ptr %pending_buf_size, align 8
  %91 = load ptr, ptr %s, align 8
  %window97 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 13
  %92 = load ptr, ptr %window97, align 8
  %cmp98 = icmp eq ptr %92, null
  br i1 %cmp98, label %if.then112, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %if.end64
  %93 = load ptr, ptr %s, align 8
  %prev101 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 15
  %94 = load ptr, ptr %prev101, align 8
  %cmp102 = icmp eq ptr %94, null
  br i1 %cmp102, label %if.then112, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false100
  %95 = load ptr, ptr %s, align 8
  %head105 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 16
  %96 = load ptr, ptr %head105, align 8
  %cmp106 = icmp eq ptr %96, null
  br i1 %cmp106, label %if.then112, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %97 = load ptr, ptr %s, align 8
  %pending_buf109 = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 2
  %98 = load ptr, ptr %pending_buf109, align 8
  %cmp110 = icmp eq ptr %98, null
  br i1 %cmp110, label %if.then112, label %if.end115

if.then112:                                       ; preds = %lor.lhs.false108, %lor.lhs.false104, %lor.lhs.false100, %if.end64
  %99 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 8
  %100 = load ptr, ptr %strm.addr, align 8
  %msg113 = getelementptr inbounds %struct.z_stream_s, ptr %100, i32 0, i32 6
  store ptr %99, ptr %msg113, align 8
  %101 = load ptr, ptr %strm.addr, align 8
  %call114 = call i32 @deflateEnd(ptr noundef %101)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %lor.lhs.false108
  %102 = load ptr, ptr %overlay, align 8
  %103 = load ptr, ptr %s, align 8
  %lit_bufsize116 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 48
  %104 = load i32, ptr %lit_bufsize116, align 8
  %conv117 = zext i32 %104 to i64
  %div118 = udiv i64 %conv117, 2
  %add.ptr = getelementptr inbounds i16, ptr %102, i64 %div118
  %105 = load ptr, ptr %s, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %105, i32 0, i32 50
  store ptr %add.ptr, ptr %d_buf, align 8
  %106 = load ptr, ptr %s, align 8
  %pending_buf119 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 2
  %107 = load ptr, ptr %pending_buf119, align 8
  %108 = load ptr, ptr %s, align 8
  %lit_bufsize120 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 48
  %109 = load i32, ptr %lit_bufsize120, align 8
  %conv121 = zext i32 %109 to i64
  %mul122 = mul i64 3, %conv121
  %add.ptr123 = getelementptr inbounds i8, ptr %107, i64 %mul122
  %110 = load ptr, ptr %s, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 47
  store ptr %add.ptr123, ptr %l_buf, align 8
  %111 = load i32, ptr %level.addr, align 4
  %112 = load ptr, ptr %s, align 8
  %level124 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 32
  store i32 %111, ptr %level124, align 4
  %113 = load i32, ptr %strategy.addr, align 4
  %114 = load ptr, ptr %s, align 8
  %strategy125 = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 33
  store i32 %113, ptr %strategy125, align 8
  %115 = load i32, ptr %method.addr, align 4
  %conv126 = trunc i32 %115 to i8
  %116 = load ptr, ptr %s, align 8
  %method127 = getelementptr inbounds %struct.internal_state, ptr %116, i32 0, i32 8
  store i8 %conv126, ptr %method127, align 1
  %117 = load ptr, ptr %strm.addr, align 8
  %call128 = call i32 @deflateReset(ptr noundef %117)
  store i32 %call128, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end115, %if.then112, %if.then63, %if.then57, %if.then11, %if.then
  %118 = load i32, ptr %retval, align 4
  ret i32 %118
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateEnd(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state2, align 8
  %status3 = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %status3, align 8
  store i32 %5, ptr %status, align 4
  %6 = load i32, ptr %status, align 4
  %cmp4 = icmp ne i32 %6, 42
  br i1 %cmp4, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, ptr %status, align 4
  %cmp5 = icmp ne i32 %7, 113
  br i1 %cmp5, label %land.lhs.true6, label %if.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load i32, ptr %status, align 4
  %cmp7 = icmp ne i32 %8, 666
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  store i32 -2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %9 = load ptr, ptr %strm.addr, align 8
  %state10 = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %state10, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pending_buf, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  %12 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %zfree, align 8
  %14 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 10
  %15 = load ptr, ptr %opaque, align 8
  %16 = load ptr, ptr %strm.addr, align 8
  %state12 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %state12, align 8
  %pending_buf13 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pending_buf13, align 8
  call void %13(ptr noundef %15, ptr noundef %18)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %19 = load ptr, ptr %strm.addr, align 8
  %state15 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %state15, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 16
  %21 = load ptr, ptr %head, align 8
  %tobool16 = icmp ne ptr %21, null
  br i1 %tobool16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end14
  %22 = load ptr, ptr %strm.addr, align 8
  %zfree18 = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 9
  %23 = load ptr, ptr %zfree18, align 8
  %24 = load ptr, ptr %strm.addr, align 8
  %opaque19 = getelementptr inbounds %struct.z_stream_s, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %opaque19, align 8
  %26 = load ptr, ptr %strm.addr, align 8
  %state20 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 7
  %27 = load ptr, ptr %state20, align 8
  %head21 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 16
  %28 = load ptr, ptr %head21, align 8
  call void %23(ptr noundef %25, ptr noundef %28)
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end14
  %29 = load ptr, ptr %strm.addr, align 8
  %state23 = getelementptr inbounds %struct.z_stream_s, ptr %29, i32 0, i32 7
  %30 = load ptr, ptr %state23, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 15
  %31 = load ptr, ptr %prev, align 8
  %tobool24 = icmp ne ptr %31, null
  br i1 %tobool24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end22
  %32 = load ptr, ptr %strm.addr, align 8
  %zfree26 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 9
  %33 = load ptr, ptr %zfree26, align 8
  %34 = load ptr, ptr %strm.addr, align 8
  %opaque27 = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 10
  %35 = load ptr, ptr %opaque27, align 8
  %36 = load ptr, ptr %strm.addr, align 8
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %36, i32 0, i32 7
  %37 = load ptr, ptr %state28, align 8
  %prev29 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 15
  %38 = load ptr, ptr %prev29, align 8
  call void %33(ptr noundef %35, ptr noundef %38)
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end22
  %39 = load ptr, ptr %strm.addr, align 8
  %state31 = getelementptr inbounds %struct.z_stream_s, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %state31, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 13
  %41 = load ptr, ptr %window, align 8
  %tobool32 = icmp ne ptr %41, null
  br i1 %tobool32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end30
  %42 = load ptr, ptr %strm.addr, align 8
  %zfree34 = getelementptr inbounds %struct.z_stream_s, ptr %42, i32 0, i32 9
  %43 = load ptr, ptr %zfree34, align 8
  %44 = load ptr, ptr %strm.addr, align 8
  %opaque35 = getelementptr inbounds %struct.z_stream_s, ptr %44, i32 0, i32 10
  %45 = load ptr, ptr %opaque35, align 8
  %46 = load ptr, ptr %strm.addr, align 8
  %state36 = getelementptr inbounds %struct.z_stream_s, ptr %46, i32 0, i32 7
  %47 = load ptr, ptr %state36, align 8
  %window37 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 13
  %48 = load ptr, ptr %window37, align 8
  call void %43(ptr noundef %45, ptr noundef %48)
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30
  %49 = load ptr, ptr %strm.addr, align 8
  %zfree39 = getelementptr inbounds %struct.z_stream_s, ptr %49, i32 0, i32 9
  %50 = load ptr, ptr %zfree39, align 8
  %51 = load ptr, ptr %strm.addr, align 8
  %opaque40 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 10
  %52 = load ptr, ptr %opaque40, align 8
  %53 = load ptr, ptr %strm.addr, align 8
  %state41 = getelementptr inbounds %struct.z_stream_s, ptr %53, i32 0, i32 7
  %54 = load ptr, ptr %state41, align 8
  call void %50(ptr noundef %52, ptr noundef %54)
  %55 = load ptr, ptr %strm.addr, align 8
  %state42 = getelementptr inbounds %struct.z_stream_s, ptr %55, i32 0, i32 7
  store ptr null, ptr %state42, align 8
  %56 = load i32, ptr %status, align 4
  %cmp43 = icmp eq i32 %56, 113
  %57 = zext i1 %cmp43 to i64
  %cond = select i1 %cmp43, i32 -3, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then8, %if.then
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateReset(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %zalloc, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %zfree, align 8
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 5
  store i64 0, ptr %total_out, align 8
  %8 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 2
  store i64 0, ptr %total_in, align 8
  %9 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %10 = load ptr, ptr %strm.addr, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 11
  store i32 2, ptr %data_type, align 8
  %11 = load ptr, ptr %strm.addr, align 8
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %state6, align 8
  store ptr %12, ptr %s, align 8
  %13 = load ptr, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 5
  store i32 0, ptr %pending, align 8
  %14 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pending_buf, align 8
  %16 = load ptr, ptr %s, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 4
  store ptr %15, ptr %pending_out, align 8
  %17 = load ptr, ptr %s, align 8
  %noheader = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %noheader, align 4
  %cmp7 = icmp slt i32 %18, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %19 = load ptr, ptr %s, align 8
  %noheader9 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 6
  store i32 0, ptr %noheader9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %20 = load ptr, ptr %s, align 8
  %noheader11 = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %noheader11, align 4
  %tobool = icmp ne i32 %21, 0
  %22 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 113, i32 42
  %23 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 1
  store i32 %cond, ptr %status, align 8
  %24 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %24, i32 0, i32 12
  store i64 1, ptr %adler, align 8
  %25 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 9
  store i32 0, ptr %last_flush, align 4
  %26 = load ptr, ptr %s, align 8
  call void @_tr_init(ptr noundef %26)
  %27 = load ptr, ptr %s, align 8
  call void @lm_init(ptr noundef %27)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load i32, ptr %dictLength.addr, align 4
  store i32 %0, ptr %length, align 4
  store i32 0, ptr %hash_head, align 4
  %1 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %dictionary.addr, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %strm.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %state5, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %status, align 8
  %cmp6 = icmp ne i32 %7, 42
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %strm.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %state7, align 8
  store ptr %9, ptr %s, align 8
  %10 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 12
  %11 = load i64, ptr %adler, align 8
  %12 = load ptr, ptr %dictionary.addr, align 8
  %13 = load i32, ptr %dictLength.addr, align 4
  %call = call i64 @adler32(i64 noundef %11, ptr noundef %12, i32 noundef %13)
  %14 = load ptr, ptr %strm.addr, align 8
  %adler8 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 12
  store i64 %call, ptr %adler8, align 8
  %15 = load i32, ptr %length, align 4
  %cmp9 = icmp ult i32 %15, 3
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %16 = load i32, ptr %length, align 4
  %17 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 10
  %18 = load i32, ptr %w_size, align 8
  %sub = sub i32 %18, 262
  %cmp12 = icmp ugt i32 %16, %sub
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  %19 = load ptr, ptr %s, align 8
  %w_size14 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 10
  %20 = load i32, ptr %w_size14, align 8
  %sub15 = sub i32 %20, 262
  store i32 %sub15, ptr %length, align 4
  %21 = load i32, ptr %dictLength.addr, align 4
  %22 = load i32, ptr %length, align 4
  %sub16 = sub i32 %21, %22
  %23 = load ptr, ptr %dictionary.addr, align 8
  %idx.ext = zext i32 %sub16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %idx.ext
  store ptr %add.ptr, ptr %dictionary.addr, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %24 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %window, align 8
  %26 = load ptr, ptr %dictionary.addr, align 8
  %27 = load i32, ptr %length, align 4
  %conv = zext i32 %27 to i64
  %28 = load ptr, ptr %s, align 8
  %window18 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 13
  %29 = load ptr, ptr %window18, align 8
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %29, i1 false, i1 true, i1 false)
  %call19 = call ptr @__memcpy_chk(ptr noundef %25, ptr noundef %26, i64 noundef %conv, i64 noundef %30) #5
  %31 = load i32, ptr %length, align 4
  %32 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 26
  store i32 %31, ptr %strstart, align 4
  %33 = load i32, ptr %length, align 4
  %conv20 = zext i32 %33 to i64
  %34 = load ptr, ptr %s, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 22
  store i64 %conv20, ptr %block_start, align 8
  %35 = load ptr, ptr %s, align 8
  %window21 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 13
  %36 = load ptr, ptr %window21, align 8
  %arrayidx = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx, align 1
  %conv22 = zext i8 %37 to i32
  %38 = load ptr, ptr %s, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %38, i32 0, i32 17
  store i32 %conv22, ptr %ins_h, align 8
  %39 = load ptr, ptr %s, align 8
  %ins_h23 = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 17
  %40 = load i32, ptr %ins_h23, align 8
  %41 = load ptr, ptr %s, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 21
  %42 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %40, %42
  %43 = load ptr, ptr %s, align 8
  %window24 = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 13
  %44 = load ptr, ptr %window24, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %44, i64 1
  %45 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %45 to i32
  %xor = xor i32 %shl, %conv26
  %46 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 20
  %47 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %47
  %48 = load ptr, ptr %s, align 8
  %ins_h27 = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 17
  store i32 %and, ptr %ins_h27, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %49 = load i32, ptr %n, align 4
  %50 = load i32, ptr %length, align 4
  %sub28 = sub i32 %50, 3
  %cmp29 = icmp ule i32 %49, %sub28
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load ptr, ptr %s, align 8
  %ins_h31 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 17
  %52 = load i32, ptr %ins_h31, align 8
  %53 = load ptr, ptr %s, align 8
  %hash_shift32 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 21
  %54 = load i32, ptr %hash_shift32, align 8
  %shl33 = shl i32 %52, %54
  %55 = load ptr, ptr %s, align 8
  %window34 = getelementptr inbounds %struct.internal_state, ptr %55, i32 0, i32 13
  %56 = load ptr, ptr %window34, align 8
  %57 = load i32, ptr %n, align 4
  %add = add i32 %57, 2
  %idxprom = zext i32 %add to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %56, i64 %idxprom
  %58 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %58 to i32
  %xor37 = xor i32 %shl33, %conv36
  %59 = load ptr, ptr %s, align 8
  %hash_mask38 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 20
  %60 = load i32, ptr %hash_mask38, align 4
  %and39 = and i32 %xor37, %60
  %61 = load ptr, ptr %s, align 8
  %ins_h40 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 17
  store i32 %and39, ptr %ins_h40, align 8
  %62 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 16
  %63 = load ptr, ptr %head, align 8
  %64 = load ptr, ptr %s, align 8
  %ins_h41 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 17
  %65 = load i32, ptr %ins_h41, align 8
  %idxprom42 = zext i32 %65 to i64
  %arrayidx43 = getelementptr inbounds i16, ptr %63, i64 %idxprom42
  %66 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %66 to i32
  store i32 %conv44, ptr %hash_head, align 4
  %conv45 = trunc i32 %conv44 to i16
  %67 = load ptr, ptr %s, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 15
  %68 = load ptr, ptr %prev, align 8
  %69 = load i32, ptr %n, align 4
  %70 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 12
  %71 = load i32, ptr %w_mask, align 8
  %and46 = and i32 %69, %71
  %idxprom47 = zext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %68, i64 %idxprom47
  store i16 %conv45, ptr %arrayidx48, align 2
  %72 = load i32, ptr %n, align 4
  %conv49 = trunc i32 %72 to i16
  %73 = load ptr, ptr %s, align 8
  %head50 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 16
  %74 = load ptr, ptr %head50, align 8
  %75 = load ptr, ptr %s, align 8
  %ins_h51 = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 17
  %76 = load i32, ptr %ins_h51, align 8
  %idxprom52 = zext i32 %76 to i64
  %arrayidx53 = getelementptr inbounds i16, ptr %74, i64 %idxprom52
  store i16 %conv49, ptr %arrayidx53, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %77 = load i32, ptr %n, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %78 = load i32, ptr %hash_head, align 4
  %tobool = icmp ne i32 %78, 0
  br i1 %tobool, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.end
  store i32 0, ptr %hash_head, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end55, %if.then10, %if.then
  %79 = load i32, ptr %retval, align 4
  ret i32 %79
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare void @_tr_init(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @lm_init(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %w_size, align 8
  %conv = zext i32 %1 to i64
  %mul = mul i64 2, %conv
  %2 = load ptr, ptr %s.addr, align 8
  %window_size = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 14
  store i64 %mul, ptr %window_size, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 16
  %4 = load ptr, ptr %head, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 18
  %6 = load i32, ptr %hash_size, align 4
  %sub = sub i32 %6, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  %7 = load ptr, ptr %s.addr, align 8
  %head1 = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 16
  %8 = load ptr, ptr %head1, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %hash_size2 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 18
  %10 = load i32, ptr %hash_size2, align 4
  %sub3 = sub i32 %10, 1
  %conv4 = zext i32 %sub3 to i64
  %mul5 = mul i64 %conv4, 2
  %11 = load ptr, ptr %s.addr, align 8
  %head6 = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 16
  %12 = load ptr, ptr %head6, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %8, i32 noundef 0, i64 noundef %mul5, i64 noundef %13) #5
  %14 = load ptr, ptr %s.addr, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 32
  %15 = load i32, ptr %level, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom7
  %max_lazy = getelementptr inbounds %struct.config_s, ptr %arrayidx8, i32 0, i32 1
  %16 = load i16, ptr %max_lazy, align 2
  %conv9 = zext i16 %16 to i32
  %17 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 31
  store i32 %conv9, ptr %max_lazy_match, align 8
  %18 = load ptr, ptr %s.addr, align 8
  %level10 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 32
  %19 = load i32, ptr %level10, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom11
  %good_length = getelementptr inbounds %struct.config_s, ptr %arrayidx12, i32 0, i32 0
  %20 = load i16, ptr %good_length, align 8
  %conv13 = zext i16 %20 to i32
  %21 = load ptr, ptr %s.addr, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 34
  store i32 %conv13, ptr %good_match, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %level14 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 32
  %23 = load i32, ptr %level14, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom15
  %nice_length = getelementptr inbounds %struct.config_s, ptr %arrayidx16, i32 0, i32 2
  %24 = load i16, ptr %nice_length, align 4
  %conv17 = zext i16 %24 to i32
  %25 = load ptr, ptr %s.addr, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 35
  store i32 %conv17, ptr %nice_match, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %level18 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 32
  %27 = load i32, ptr %level18, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom19
  %max_chain = getelementptr inbounds %struct.config_s, ptr %arrayidx20, i32 0, i32 3
  %28 = load i16, ptr %max_chain, align 2
  %conv21 = zext i16 %28 to i32
  %29 = load ptr, ptr %s.addr, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 30
  store i32 %conv21, ptr %max_chain_length, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 26
  store i32 0, ptr %strstart, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 22
  store i64 0, ptr %block_start, align 8
  %32 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 28
  store i32 0, ptr %lookahead, align 4
  %33 = load ptr, ptr %s.addr, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 29
  store i32 2, ptr %prev_length, align 8
  %34 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 23
  store i32 2, ptr %match_length, align 8
  %35 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 25
  store i32 0, ptr %match_available, align 8
  %36 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 17
  store i32 0, ptr %ins_h, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflateParams(ptr noundef %strm, i32 noundef %level, i32 noundef %strategy) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %func = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  store i32 0, ptr %err, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state2, align 8
  store ptr %4, ptr %s, align 8
  %5 = load i32, ptr %level.addr, align 4
  %cmp3 = icmp eq i32 %5, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 6, ptr %level.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load i32, ptr %level.addr, align 4
  %cmp6 = icmp slt i32 %6, 0
  br i1 %cmp6, label %if.then13, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end5
  %7 = load i32, ptr %level.addr, align 4
  %cmp8 = icmp sgt i32 %7, 9
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %8 = load i32, ptr %strategy.addr, align 4
  %cmp10 = icmp slt i32 %8, 0
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %9 = load i32, ptr %strategy.addr, align 4
  %cmp12 = icmp sgt i32 %9, 2
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %if.end5
  store i32 -2, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false11
  %10 = load ptr, ptr %s, align 8
  %level15 = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 32
  %11 = load i32, ptr %level15, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom
  %func16 = getelementptr inbounds %struct.config_s, ptr %arrayidx, i32 0, i32 4
  %12 = load ptr, ptr %func16, align 8
  store ptr %12, ptr %func, align 8
  %13 = load ptr, ptr %func, align 8
  %14 = load i32, ptr %level.addr, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom17
  %func19 = getelementptr inbounds %struct.config_s, ptr %arrayidx18, i32 0, i32 4
  %15 = load ptr, ptr %func19, align 8
  %cmp20 = icmp ne ptr %13, %15
  br i1 %cmp20, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end14
  %16 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %total_in, align 8
  %cmp21 = icmp ne i64 %17, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflate(ptr noundef %18, i32 noundef 1)
  store i32 %call, ptr %err, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true, %if.end14
  %19 = load ptr, ptr %s, align 8
  %level24 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 32
  %20 = load i32, ptr %level24, align 4
  %21 = load i32, ptr %level.addr, align 4
  %cmp25 = icmp ne i32 %20, %21
  br i1 %cmp25, label %if.then26, label %if.end39

if.then26:                                        ; preds = %if.end23
  %22 = load i32, ptr %level.addr, align 4
  %23 = load ptr, ptr %s, align 8
  %level27 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 32
  store i32 %22, ptr %level27, align 4
  %24 = load i32, ptr %level.addr, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom28
  %max_lazy = getelementptr inbounds %struct.config_s, ptr %arrayidx29, i32 0, i32 1
  %25 = load i16, ptr %max_lazy, align 2
  %conv = zext i16 %25 to i32
  %26 = load ptr, ptr %s, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 31
  store i32 %conv, ptr %max_lazy_match, align 8
  %27 = load i32, ptr %level.addr, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom30
  %good_length = getelementptr inbounds %struct.config_s, ptr %arrayidx31, i32 0, i32 0
  %28 = load i16, ptr %good_length, align 8
  %conv32 = zext i16 %28 to i32
  %29 = load ptr, ptr %s, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 34
  store i32 %conv32, ptr %good_match, align 4
  %30 = load i32, ptr %level.addr, align 4
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom33
  %nice_length = getelementptr inbounds %struct.config_s, ptr %arrayidx34, i32 0, i32 2
  %31 = load i16, ptr %nice_length, align 4
  %conv35 = zext i16 %31 to i32
  %32 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 35
  store i32 %conv35, ptr %nice_match, align 8
  %33 = load i32, ptr %level.addr, align 4
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom36
  %max_chain = getelementptr inbounds %struct.config_s, ptr %arrayidx37, i32 0, i32 3
  %34 = load i16, ptr %max_chain, align 2
  %conv38 = zext i16 %34 to i32
  %35 = load ptr, ptr %s, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 30
  store i32 %conv38, ptr %max_chain_length, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %if.end23
  %36 = load i32, ptr %strategy.addr, align 4
  %37 = load ptr, ptr %s, align 8
  %strategy40 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 33
  store i32 %36, ptr %strategy40, align 8
  %38 = load i32, ptr %err, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then13, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @deflate(ptr noundef %strm, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %old_flush = alloca i32, align 4
  %s = alloca ptr, align 8
  %header = alloca i32, align 4
  %level_flags = alloca i32, align 4
  %bstate = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %flush.addr, align 4
  %cmp3 = icmp sgt i32 %3, 4
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, ptr %flush.addr, align 4
  %cmp5 = icmp slt i32 %4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %strm.addr, align 8
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %state6, align 8
  store ptr %6, ptr %s, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %next_out, align 8
  %cmp7 = icmp eq ptr %8, null
  br i1 %cmp7, label %if.then15, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %9 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %next_in, align 8
  %cmp9 = icmp eq ptr %10, null
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false11

land.lhs.true:                                    ; preds = %lor.lhs.false8
  %11 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %avail_in, align 8
  %cmp10 = icmp ne i32 %12, 0
  br i1 %cmp10, label %if.then15, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %land.lhs.true, %lor.lhs.false8
  %13 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %status, align 8
  %cmp12 = icmp eq i32 %14, 666
  br i1 %cmp12, label %land.lhs.true13, label %if.end16

land.lhs.true13:                                  ; preds = %lor.lhs.false11
  %15 = load i32, ptr %flush.addr, align 4
  %cmp14 = icmp ne i32 %15, 4
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true13, %land.lhs.true, %if.end
  %16 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 8
  %17 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 6
  store ptr %16, ptr %msg, align 8
  store i32 -2, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true13, %lor.lhs.false11
  %18 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %avail_out, align 8
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %20 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %21 = load ptr, ptr %strm.addr, align 8
  %msg19 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 6
  store ptr %20, ptr %msg19, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %22 = load ptr, ptr %strm.addr, align 8
  %23 = load ptr, ptr %s, align 8
  %strm21 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 0
  store ptr %22, ptr %strm21, align 8
  %24 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 9
  %25 = load i32, ptr %last_flush, align 4
  store i32 %25, ptr %old_flush, align 4
  %26 = load i32, ptr %flush.addr, align 4
  %27 = load ptr, ptr %s, align 8
  %last_flush22 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 9
  store i32 %26, ptr %last_flush22, align 4
  %28 = load ptr, ptr %s, align 8
  %status23 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %status23, align 8
  %cmp24 = icmp eq i32 %29, 42
  br i1 %cmp24, label %if.then25, label %if.end47

if.then25:                                        ; preds = %if.end20
  %30 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 11
  %31 = load i32, ptr %w_bits, align 4
  %sub = sub i32 %31, 8
  %shl = shl i32 %sub, 4
  %add = add i32 8, %shl
  %shl26 = shl i32 %add, 8
  store i32 %shl26, ptr %header, align 4
  %32 = load ptr, ptr %s, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 32
  %33 = load i32, ptr %level, align 4
  %sub27 = sub nsw i32 %33, 1
  %shr = ashr i32 %sub27, 1
  store i32 %shr, ptr %level_flags, align 4
  %34 = load i32, ptr %level_flags, align 4
  %cmp28 = icmp ugt i32 %34, 3
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then25
  store i32 3, ptr %level_flags, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then25
  %35 = load i32, ptr %level_flags, align 4
  %shl31 = shl i32 %35, 6
  %36 = load i32, ptr %header, align 4
  %or = or i32 %36, %shl31
  store i32 %or, ptr %header, align 4
  %37 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 26
  %38 = load i32, ptr %strstart, align 4
  %cmp32 = icmp ne i32 %38, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %39 = load i32, ptr %header, align 4
  %or34 = or i32 %39, 32
  store i32 %or34, ptr %header, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30
  %40 = load i32, ptr %header, align 4
  %rem = urem i32 %40, 31
  %sub36 = sub i32 31, %rem
  %41 = load i32, ptr %header, align 4
  %add37 = add i32 %41, %sub36
  store i32 %add37, ptr %header, align 4
  %42 = load ptr, ptr %s, align 8
  %status38 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 1
  store i32 113, ptr %status38, align 8
  %43 = load ptr, ptr %s, align 8
  %44 = load i32, ptr %header, align 4
  call void @putShortMSB(ptr noundef %43, i32 noundef %44)
  %45 = load ptr, ptr %s, align 8
  %strstart39 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 26
  %46 = load i32, ptr %strstart39, align 4
  %cmp40 = icmp ne i32 %46, 0
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %if.end35
  %47 = load ptr, ptr %s, align 8
  %48 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %48, i32 0, i32 12
  %49 = load i64, ptr %adler, align 8
  %shr42 = lshr i64 %49, 16
  %conv = trunc i64 %shr42 to i32
  call void @putShortMSB(ptr noundef %47, i32 noundef %conv)
  %50 = load ptr, ptr %s, align 8
  %51 = load ptr, ptr %strm.addr, align 8
  %adler43 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 12
  %52 = load i64, ptr %adler43, align 8
  %and = and i64 %52, 65535
  %conv44 = trunc i64 %and to i32
  call void @putShortMSB(ptr noundef %50, i32 noundef %conv44)
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end35
  %53 = load ptr, ptr %strm.addr, align 8
  %adler46 = getelementptr inbounds %struct.z_stream_s, ptr %53, i32 0, i32 12
  store i64 1, ptr %adler46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.end20
  %54 = load ptr, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 5
  %55 = load i32, ptr %pending, align 8
  %cmp48 = icmp ne i32 %55, 0
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end47
  %56 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %56)
  %57 = load ptr, ptr %strm.addr, align 8
  %avail_out51 = getelementptr inbounds %struct.z_stream_s, ptr %57, i32 0, i32 4
  %58 = load i32, ptr %avail_out51, align 8
  %cmp52 = icmp eq i32 %58, 0
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.then50
  %59 = load ptr, ptr %s, align 8
  %last_flush55 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 9
  store i32 -1, ptr %last_flush55, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.then50
  br label %if.end69

if.else:                                          ; preds = %if.end47
  %60 = load ptr, ptr %strm.addr, align 8
  %avail_in57 = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %avail_in57, align 8
  %cmp58 = icmp eq i32 %61, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end68

land.lhs.true60:                                  ; preds = %if.else
  %62 = load i32, ptr %flush.addr, align 4
  %63 = load i32, ptr %old_flush, align 4
  %cmp61 = icmp sle i32 %62, %63
  br i1 %cmp61, label %land.lhs.true63, label %if.end68

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %64 = load i32, ptr %flush.addr, align 4
  %cmp64 = icmp ne i32 %64, 4
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %land.lhs.true63
  %65 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %66 = load ptr, ptr %strm.addr, align 8
  %msg67 = getelementptr inbounds %struct.z_stream_s, ptr %66, i32 0, i32 6
  store ptr %65, ptr %msg67, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %land.lhs.true63, %land.lhs.true60, %if.else
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end56
  %67 = load ptr, ptr %s, align 8
  %status70 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %status70, align 8
  %cmp71 = icmp eq i32 %68, 666
  br i1 %cmp71, label %land.lhs.true73, label %if.end79

land.lhs.true73:                                  ; preds = %if.end69
  %69 = load ptr, ptr %strm.addr, align 8
  %avail_in74 = getelementptr inbounds %struct.z_stream_s, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %avail_in74, align 8
  %cmp75 = icmp ne i32 %70, 0
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %land.lhs.true73
  %71 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %72 = load ptr, ptr %strm.addr, align 8
  %msg78 = getelementptr inbounds %struct.z_stream_s, ptr %72, i32 0, i32 6
  store ptr %71, ptr %msg78, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %land.lhs.true73, %if.end69
  %73 = load ptr, ptr %strm.addr, align 8
  %avail_in80 = getelementptr inbounds %struct.z_stream_s, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %avail_in80, align 8
  %cmp81 = icmp ne i32 %74, 0
  br i1 %cmp81, label %if.then93, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %if.end79
  %75 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 28
  %76 = load i32, ptr %lookahead, align 4
  %cmp84 = icmp ne i32 %76, 0
  br i1 %cmp84, label %if.then93, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %77 = load i32, ptr %flush.addr, align 4
  %cmp87 = icmp ne i32 %77, 0
  br i1 %cmp87, label %land.lhs.true89, label %if.end144

land.lhs.true89:                                  ; preds = %lor.lhs.false86
  %78 = load ptr, ptr %s, align 8
  %status90 = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 1
  %79 = load i32, ptr %status90, align 8
  %cmp91 = icmp ne i32 %79, 666
  br i1 %cmp91, label %if.then93, label %if.end144

if.then93:                                        ; preds = %land.lhs.true89, %lor.lhs.false83, %if.end79
  %80 = load ptr, ptr %s, align 8
  %level94 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 32
  %81 = load i32, ptr %level94, align 4
  %idxprom = sext i32 %81 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom
  %func = getelementptr inbounds %struct.config_s, ptr %arrayidx, i32 0, i32 4
  %82 = load ptr, ptr %func, align 8
  %83 = load ptr, ptr %s, align 8
  %84 = load i32, ptr %flush.addr, align 4
  %call = call i32 %82(ptr noundef %83, i32 noundef %84)
  store i32 %call, ptr %bstate, align 4
  %85 = load i32, ptr %bstate, align 4
  %cmp95 = icmp eq i32 %85, 2
  br i1 %cmp95, label %if.then100, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.then93
  %86 = load i32, ptr %bstate, align 4
  %cmp98 = icmp eq i32 %86, 3
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %lor.lhs.false97, %if.then93
  %87 = load ptr, ptr %s, align 8
  %status101 = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 1
  store i32 666, ptr %status101, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %lor.lhs.false97
  %88 = load i32, ptr %bstate, align 4
  %cmp103 = icmp eq i32 %88, 0
  br i1 %cmp103, label %if.then108, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %if.end102
  %89 = load i32, ptr %bstate, align 4
  %cmp106 = icmp eq i32 %89, 2
  br i1 %cmp106, label %if.then108, label %if.end115

if.then108:                                       ; preds = %lor.lhs.false105, %if.end102
  %90 = load ptr, ptr %strm.addr, align 8
  %avail_out109 = getelementptr inbounds %struct.z_stream_s, ptr %90, i32 0, i32 4
  %91 = load i32, ptr %avail_out109, align 8
  %cmp110 = icmp eq i32 %91, 0
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.then108
  %92 = load ptr, ptr %s, align 8
  %last_flush113 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 9
  store i32 -1, ptr %last_flush113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.then108
  store i32 0, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %lor.lhs.false105
  %93 = load i32, ptr %bstate, align 4
  %cmp116 = icmp eq i32 %93, 1
  br i1 %cmp116, label %if.then118, label %if.end143

if.then118:                                       ; preds = %if.end115
  %94 = load i32, ptr %flush.addr, align 4
  %cmp119 = icmp eq i32 %94, 1
  br i1 %cmp119, label %if.then121, label %if.else122

if.then121:                                       ; preds = %if.then118
  %95 = load ptr, ptr %s, align 8
  call void @_tr_align(ptr noundef %95)
  br label %if.end136

if.else122:                                       ; preds = %if.then118
  %96 = load ptr, ptr %s, align 8
  call void @_tr_stored_block(ptr noundef %96, ptr noundef null, i64 noundef 0, i32 noundef 0)
  %97 = load i32, ptr %flush.addr, align 4
  %cmp123 = icmp eq i32 %97, 3
  br i1 %cmp123, label %if.then125, label %if.end135

if.then125:                                       ; preds = %if.else122
  %98 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 16
  %99 = load ptr, ptr %head, align 8
  %100 = load ptr, ptr %s, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 18
  %101 = load i32, ptr %hash_size, align 4
  %sub126 = sub i32 %101, 1
  %idxprom127 = zext i32 %sub126 to i64
  %arrayidx128 = getelementptr inbounds i16, ptr %99, i64 %idxprom127
  store i16 0, ptr %arrayidx128, align 2
  %102 = load ptr, ptr %s, align 8
  %head129 = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 16
  %103 = load ptr, ptr %head129, align 8
  %104 = load ptr, ptr %s, align 8
  %hash_size130 = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 18
  %105 = load i32, ptr %hash_size130, align 4
  %sub131 = sub i32 %105, 1
  %conv132 = zext i32 %sub131 to i64
  %mul = mul i64 %conv132, 2
  %106 = load ptr, ptr %s, align 8
  %head133 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 16
  %107 = load ptr, ptr %head133, align 8
  %108 = call i64 @llvm.objectsize.i64.p0(ptr %107, i1 false, i1 true, i1 false)
  %call134 = call ptr @__memset_chk(ptr noundef %103, i32 noundef 0, i64 noundef %mul, i64 noundef %108) #5
  br label %if.end135

if.end135:                                        ; preds = %if.then125, %if.else122
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then121
  %109 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %109)
  %110 = load ptr, ptr %strm.addr, align 8
  %avail_out137 = getelementptr inbounds %struct.z_stream_s, ptr %110, i32 0, i32 4
  %111 = load i32, ptr %avail_out137, align 8
  %cmp138 = icmp eq i32 %111, 0
  br i1 %cmp138, label %if.then140, label %if.end142

if.then140:                                       ; preds = %if.end136
  %112 = load ptr, ptr %s, align 8
  %last_flush141 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 9
  store i32 -1, ptr %last_flush141, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end142:                                        ; preds = %if.end136
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end115
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %land.lhs.true89, %lor.lhs.false86
  %113 = load i32, ptr %flush.addr, align 4
  %cmp145 = icmp ne i32 %113, 4
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end144
  store i32 0, ptr %retval, align 4
  br label %return

if.end148:                                        ; preds = %if.end144
  %114 = load ptr, ptr %s, align 8
  %noheader = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 6
  %115 = load i32, ptr %noheader, align 4
  %tobool = icmp ne i32 %115, 0
  br i1 %tobool, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end148
  store i32 1, ptr %retval, align 4
  br label %return

if.end150:                                        ; preds = %if.end148
  %116 = load ptr, ptr %s, align 8
  %117 = load ptr, ptr %strm.addr, align 8
  %adler151 = getelementptr inbounds %struct.z_stream_s, ptr %117, i32 0, i32 12
  %118 = load i64, ptr %adler151, align 8
  %shr152 = lshr i64 %118, 16
  %conv153 = trunc i64 %shr152 to i32
  call void @putShortMSB(ptr noundef %116, i32 noundef %conv153)
  %119 = load ptr, ptr %s, align 8
  %120 = load ptr, ptr %strm.addr, align 8
  %adler154 = getelementptr inbounds %struct.z_stream_s, ptr %120, i32 0, i32 12
  %121 = load i64, ptr %adler154, align 8
  %and155 = and i64 %121, 65535
  %conv156 = trunc i64 %and155 to i32
  call void @putShortMSB(ptr noundef %119, i32 noundef %conv156)
  %122 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %122)
  %123 = load ptr, ptr %s, align 8
  %noheader157 = getelementptr inbounds %struct.internal_state, ptr %123, i32 0, i32 6
  store i32 -1, ptr %noheader157, align 4
  %124 = load ptr, ptr %s, align 8
  %pending158 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 5
  %125 = load i32, ptr %pending158, align 8
  %cmp159 = icmp ne i32 %125, 0
  %126 = zext i1 %cmp159 to i64
  %cond = select i1 %cmp159, i32 0, i32 1
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end150, %if.then149, %if.then147, %if.then140, %if.end114, %if.then77, %if.then66, %if.then54, %if.then18, %if.then15, %if.then
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @putShortMSB(ptr noundef %s, i32 noundef %b) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %b.addr, align 4
  %shr = lshr i32 %0, 8
  %conv = trunc i32 %shr to i8
  %1 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pending_buf, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %pending, align 8
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %5 = load i32, ptr %b.addr, align 4
  %and = and i32 %5, 255
  %conv1 = trunc i32 %and to i8
  %6 = load ptr, ptr %s.addr, align 8
  %pending_buf2 = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pending_buf2, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %pending3 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %pending3, align 8
  %inc4 = add nsw i32 %9, 1
  store i32 %inc4, ptr %pending3, align 8
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 %idxprom5
  store i8 %conv1, ptr %arrayidx6, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @flush_pending(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %pending, align 8
  store i32 %2, ptr %len, align 4
  %3 = load i32, ptr %len, align 4
  %4 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %avail_out, align 8
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %strm.addr, align 8
  %avail_out1 = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %avail_out1, align 8
  store i32 %7, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %len, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %if.end25

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %next_out, align 8
  %11 = load ptr, ptr %strm.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %state5, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %pending_out, align 8
  %14 = load i32, ptr %len, align 4
  %conv = zext i32 %14 to i64
  %15 = load ptr, ptr %strm.addr, align 8
  %next_out6 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %next_out6, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %16, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %10, ptr noundef %13, i64 noundef %conv, i64 noundef %17) #5
  %18 = load i32, ptr %len, align 4
  %19 = load ptr, ptr %strm.addr, align 8
  %next_out7 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %next_out7, align 8
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %idx.ext
  store ptr %add.ptr, ptr %next_out7, align 8
  %21 = load i32, ptr %len, align 4
  %22 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %state8, align 8
  %pending_out9 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pending_out9, align 8
  %idx.ext10 = zext i32 %21 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %24, i64 %idx.ext10
  store ptr %add.ptr11, ptr %pending_out9, align 8
  %25 = load i32, ptr %len, align 4
  %conv12 = zext i32 %25 to i64
  %26 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 5
  %27 = load i64, ptr %total_out, align 8
  %add = add i64 %27, %conv12
  store i64 %add, ptr %total_out, align 8
  %28 = load i32, ptr %len, align 4
  %29 = load ptr, ptr %strm.addr, align 8
  %avail_out13 = getelementptr inbounds %struct.z_stream_s, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %avail_out13, align 8
  %sub = sub i32 %30, %28
  store i32 %sub, ptr %avail_out13, align 8
  %31 = load i32, ptr %len, align 4
  %32 = load ptr, ptr %strm.addr, align 8
  %state14 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 7
  %33 = load ptr, ptr %state14, align 8
  %pending15 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %pending15, align 8
  %sub16 = sub i32 %34, %31
  store i32 %sub16, ptr %pending15, align 8
  %35 = load ptr, ptr %strm.addr, align 8
  %state17 = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %state17, align 8
  %pending18 = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 5
  %37 = load i32, ptr %pending18, align 8
  %cmp19 = icmp eq i32 %37, 0
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end4
  %38 = load ptr, ptr %strm.addr, align 8
  %state22 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 7
  %39 = load ptr, ptr %state22, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %pending_buf, align 8
  %41 = load ptr, ptr %strm.addr, align 8
  %state23 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 7
  %42 = load ptr, ptr %state23, align 8
  %pending_out24 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 4
  store ptr %40, ptr %pending_out24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then3, %if.then21, %if.end4
  ret void
}

declare void @_tr_align(ptr noundef) #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %source.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dest.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %source.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %source.addr, align 8
  %state4 = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %state4, align 8
  store ptr %5, ptr %ss, align 8
  %6 = load ptr, ptr %dest.addr, align 8
  %7 = load ptr, ptr %source.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %7, i64 112, i1 false)
  %8 = load ptr, ptr %dest.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %zalloc, align 8
  %10 = load ptr, ptr %dest.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %opaque, align 8
  %call = call ptr %9(ptr noundef %11, i32 noundef 1, i32 noundef 5920)
  store ptr %call, ptr %ds, align 8
  %12 = load ptr, ptr %ds, align 8
  %cmp5 = icmp eq ptr %12, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %13 = load ptr, ptr %ds, align 8
  %14 = load ptr, ptr %dest.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 7
  store ptr %13, ptr %state8, align 8
  %15 = load ptr, ptr %ds, align 8
  %16 = load ptr, ptr %ss, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %16, i64 5920, i1 false)
  %17 = load ptr, ptr %dest.addr, align 8
  %18 = load ptr, ptr %ds, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 0
  store ptr %17, ptr %strm, align 8
  %19 = load ptr, ptr %dest.addr, align 8
  %zalloc9 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %zalloc9, align 8
  %21 = load ptr, ptr %dest.addr, align 8
  %opaque10 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 10
  %22 = load ptr, ptr %opaque10, align 8
  %23 = load ptr, ptr %ds, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 10
  %24 = load i32, ptr %w_size, align 8
  %call11 = call ptr %20(ptr noundef %22, i32 noundef %24, i32 noundef 2)
  %25 = load ptr, ptr %ds, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 13
  store ptr %call11, ptr %window, align 8
  %26 = load ptr, ptr %dest.addr, align 8
  %zalloc12 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 8
  %27 = load ptr, ptr %zalloc12, align 8
  %28 = load ptr, ptr %dest.addr, align 8
  %opaque13 = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 10
  %29 = load ptr, ptr %opaque13, align 8
  %30 = load ptr, ptr %ds, align 8
  %w_size14 = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 10
  %31 = load i32, ptr %w_size14, align 8
  %call15 = call ptr %27(ptr noundef %29, i32 noundef %31, i32 noundef 2)
  %32 = load ptr, ptr %ds, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 15
  store ptr %call15, ptr %prev, align 8
  %33 = load ptr, ptr %dest.addr, align 8
  %zalloc16 = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 8
  %34 = load ptr, ptr %zalloc16, align 8
  %35 = load ptr, ptr %dest.addr, align 8
  %opaque17 = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 10
  %36 = load ptr, ptr %opaque17, align 8
  %37 = load ptr, ptr %ds, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 18
  %38 = load i32, ptr %hash_size, align 4
  %call18 = call ptr %34(ptr noundef %36, i32 noundef %38, i32 noundef 2)
  %39 = load ptr, ptr %ds, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 16
  store ptr %call18, ptr %head, align 8
  %40 = load ptr, ptr %dest.addr, align 8
  %zalloc19 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 8
  %41 = load ptr, ptr %zalloc19, align 8
  %42 = load ptr, ptr %dest.addr, align 8
  %opaque20 = getelementptr inbounds %struct.z_stream_s, ptr %42, i32 0, i32 10
  %43 = load ptr, ptr %opaque20, align 8
  %44 = load ptr, ptr %ds, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 48
  %45 = load i32, ptr %lit_bufsize, align 8
  %call21 = call ptr %41(ptr noundef %43, i32 noundef %45, i32 noundef 4)
  store ptr %call21, ptr %overlay, align 8
  %46 = load ptr, ptr %overlay, align 8
  %47 = load ptr, ptr %ds, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 2
  store ptr %46, ptr %pending_buf, align 8
  %48 = load ptr, ptr %ds, align 8
  %window22 = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 13
  %49 = load ptr, ptr %window22, align 8
  %cmp23 = icmp eq ptr %49, null
  br i1 %cmp23, label %if.then33, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end7
  %50 = load ptr, ptr %ds, align 8
  %prev25 = getelementptr inbounds %struct.internal_state, ptr %50, i32 0, i32 15
  %51 = load ptr, ptr %prev25, align 8
  %cmp26 = icmp eq ptr %51, null
  br i1 %cmp26, label %if.then33, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %52 = load ptr, ptr %ds, align 8
  %head28 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 16
  %53 = load ptr, ptr %head28, align 8
  %cmp29 = icmp eq ptr %53, null
  br i1 %cmp29, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %54 = load ptr, ptr %ds, align 8
  %pending_buf31 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %pending_buf31, align 8
  %cmp32 = icmp eq ptr %55, null
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %if.end7
  %56 = load ptr, ptr %dest.addr, align 8
  %call34 = call i32 @deflateEnd(ptr noundef %56)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false30
  %57 = load ptr, ptr %ds, align 8
  %window36 = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 13
  %58 = load ptr, ptr %window36, align 8
  %59 = load ptr, ptr %ss, align 8
  %window37 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 13
  %60 = load ptr, ptr %window37, align 8
  %61 = load ptr, ptr %ds, align 8
  %w_size38 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 10
  %62 = load i32, ptr %w_size38, align 8
  %mul = mul i32 %62, 2
  %conv = zext i32 %mul to i64
  %mul39 = mul i64 %conv, 1
  %63 = load ptr, ptr %ds, align 8
  %window40 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 13
  %64 = load ptr, ptr %window40, align 8
  %65 = call i64 @llvm.objectsize.i64.p0(ptr %64, i1 false, i1 true, i1 false)
  %call41 = call ptr @__memcpy_chk(ptr noundef %58, ptr noundef %60, i64 noundef %mul39, i64 noundef %65) #5
  %66 = load ptr, ptr %ds, align 8
  %prev42 = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 15
  %67 = load ptr, ptr %prev42, align 8
  %68 = load ptr, ptr %ss, align 8
  %prev43 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 15
  %69 = load ptr, ptr %prev43, align 8
  %70 = load ptr, ptr %ds, align 8
  %w_size44 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 10
  %71 = load i32, ptr %w_size44, align 8
  %conv45 = zext i32 %71 to i64
  %mul46 = mul i64 %conv45, 2
  %72 = load ptr, ptr %ds, align 8
  %prev47 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 15
  %73 = load ptr, ptr %prev47, align 8
  %74 = call i64 @llvm.objectsize.i64.p0(ptr %73, i1 false, i1 true, i1 false)
  %call48 = call ptr @__memcpy_chk(ptr noundef %67, ptr noundef %69, i64 noundef %mul46, i64 noundef %74) #5
  %75 = load ptr, ptr %ds, align 8
  %head49 = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 16
  %76 = load ptr, ptr %head49, align 8
  %77 = load ptr, ptr %ss, align 8
  %head50 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 16
  %78 = load ptr, ptr %head50, align 8
  %79 = load ptr, ptr %ds, align 8
  %hash_size51 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 18
  %80 = load i32, ptr %hash_size51, align 4
  %conv52 = zext i32 %80 to i64
  %mul53 = mul i64 %conv52, 2
  %81 = load ptr, ptr %ds, align 8
  %head54 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 16
  %82 = load ptr, ptr %head54, align 8
  %83 = call i64 @llvm.objectsize.i64.p0(ptr %82, i1 false, i1 true, i1 false)
  %call55 = call ptr @__memcpy_chk(ptr noundef %76, ptr noundef %78, i64 noundef %mul53, i64 noundef %83) #5
  %84 = load ptr, ptr %ds, align 8
  %pending_buf56 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 2
  %85 = load ptr, ptr %pending_buf56, align 8
  %86 = load ptr, ptr %ss, align 8
  %pending_buf57 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 2
  %87 = load ptr, ptr %pending_buf57, align 8
  %88 = load ptr, ptr %ds, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 3
  %89 = load i64, ptr %pending_buf_size, align 8
  %conv58 = trunc i64 %89 to i32
  %conv59 = zext i32 %conv58 to i64
  %90 = load ptr, ptr %ds, align 8
  %pending_buf60 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 2
  %91 = load ptr, ptr %pending_buf60, align 8
  %92 = call i64 @llvm.objectsize.i64.p0(ptr %91, i1 false, i1 true, i1 false)
  %call61 = call ptr @__memcpy_chk(ptr noundef %85, ptr noundef %87, i64 noundef %conv59, i64 noundef %92) #5
  %93 = load ptr, ptr %ds, align 8
  %pending_buf62 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 2
  %94 = load ptr, ptr %pending_buf62, align 8
  %95 = load ptr, ptr %ss, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 4
  %96 = load ptr, ptr %pending_out, align 8
  %97 = load ptr, ptr %ss, align 8
  %pending_buf63 = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 2
  %98 = load ptr, ptr %pending_buf63, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %96 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %98 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %94, i64 %sub.ptr.sub
  %99 = load ptr, ptr %ds, align 8
  %pending_out64 = getelementptr inbounds %struct.internal_state, ptr %99, i32 0, i32 4
  store ptr %add.ptr, ptr %pending_out64, align 8
  %100 = load ptr, ptr %overlay, align 8
  %101 = load ptr, ptr %ds, align 8
  %lit_bufsize65 = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 48
  %102 = load i32, ptr %lit_bufsize65, align 8
  %conv66 = zext i32 %102 to i64
  %div = udiv i64 %conv66, 2
  %add.ptr67 = getelementptr inbounds i16, ptr %100, i64 %div
  %103 = load ptr, ptr %ds, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 50
  store ptr %add.ptr67, ptr %d_buf, align 8
  %104 = load ptr, ptr %ds, align 8
  %pending_buf68 = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 2
  %105 = load ptr, ptr %pending_buf68, align 8
  %106 = load ptr, ptr %ds, align 8
  %lit_bufsize69 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 48
  %107 = load i32, ptr %lit_bufsize69, align 8
  %conv70 = zext i32 %107 to i64
  %mul71 = mul i64 3, %conv70
  %add.ptr72 = getelementptr inbounds i8, ptr %105, i64 %mul71
  %108 = load ptr, ptr %ds, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 47
  store ptr %add.ptr72, ptr %l_buf, align 8
  %109 = load ptr, ptr %ds, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %109, i32 0, i32 36
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0
  %110 = load ptr, ptr %ds, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 39
  %dyn_tree = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc, i32 0, i32 0
  store ptr %arraydecay, ptr %dyn_tree, align 8
  %111 = load ptr, ptr %ds, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %111, i32 0, i32 37
  %arraydecay73 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0
  %112 = load ptr, ptr %ds, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 40
  %dyn_tree74 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc, i32 0, i32 0
  store ptr %arraydecay73, ptr %dyn_tree74, align 8
  %113 = load ptr, ptr %ds, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 38
  %arraydecay75 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 0
  %114 = load ptr, ptr %ds, align 8
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 41
  %dyn_tree76 = getelementptr inbounds %struct.tree_desc_s, ptr %bl_desc, i32 0, i32 0
  store ptr %arraydecay75, ptr %dyn_tree76, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then33, %if.then6, %if.then
  %115 = load i32, ptr %retval, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load i64, ptr %max_block_size, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %pending_buf_size, align 8
  %sub = sub i64 %2, 5
  %cmp = icmp ugt i64 %0, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8
  %pending_buf_size1 = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %pending_buf_size1, align 8
  %sub2 = sub i64 %4, 5
  store i64 %sub2, ptr %max_block_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end83, %if.end
  %5 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 28
  %6 = load i32, ptr %lookahead, align 4
  %cmp3 = icmp ule i32 %6, 1
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %for.cond
  %7 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %7)
  %8 = load ptr, ptr %s.addr, align 8
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 28
  %9 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.then4
  %10 = load i32, ptr %flush.addr, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.then4
  %11 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 28
  %12 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  br label %for.end

if.end13:                                         ; preds = %if.end9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %for.cond
  %13 = load ptr, ptr %s.addr, align 8
  %lookahead15 = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 28
  %14 = load i32, ptr %lookahead15, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 26
  %16 = load i32, ptr %strstart, align 4
  %add = add i32 %16, %14
  store i32 %add, ptr %strstart, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %lookahead16 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 28
  store i32 0, ptr %lookahead16, align 4
  %18 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 22
  %19 = load i64, ptr %block_start, align 8
  %20 = load i64, ptr %max_block_size, align 8
  %add17 = add i64 %19, %20
  store i64 %add17, ptr %max_start, align 8
  %21 = load ptr, ptr %s.addr, align 8
  %strstart18 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 26
  %22 = load i32, ptr %strstart18, align 4
  %cmp19 = icmp eq i32 %22, 0
  br i1 %cmp19, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %23 = load ptr, ptr %s.addr, align 8
  %strstart20 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 26
  %24 = load i32, ptr %strstart20, align 4
  %conv = zext i32 %24 to i64
  %25 = load i64, ptr %max_start, align 8
  %cmp21 = icmp uge i64 %conv, %25
  br i1 %cmp21, label %if.then23, label %if.end48

if.then23:                                        ; preds = %lor.lhs.false, %if.end14
  %26 = load ptr, ptr %s.addr, align 8
  %strstart24 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 26
  %27 = load i32, ptr %strstart24, align 4
  %conv25 = zext i32 %27 to i64
  %28 = load i64, ptr %max_start, align 8
  %sub26 = sub i64 %conv25, %28
  %conv27 = trunc i64 %sub26 to i32
  %29 = load ptr, ptr %s.addr, align 8
  %lookahead28 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 28
  store i32 %conv27, ptr %lookahead28, align 4
  %30 = load i64, ptr %max_start, align 8
  %conv29 = trunc i64 %30 to i32
  %31 = load ptr, ptr %s.addr, align 8
  %strstart30 = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 26
  store i32 %conv29, ptr %strstart30, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %33 = load ptr, ptr %s.addr, align 8
  %block_start31 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 22
  %34 = load i64, ptr %block_start31, align 8
  %cmp32 = icmp sge i64 %34, 0
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then23
  %35 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 13
  %36 = load ptr, ptr %window, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %block_start34 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 22
  %38 = load i64, ptr %block_start34, align 8
  %conv35 = trunc i64 %38 to i32
  %idxprom = zext i32 %conv35 to i64
  %arrayidx = getelementptr inbounds i8, ptr %36, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %if.then23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %cond.false ]
  %39 = load ptr, ptr %s.addr, align 8
  %strstart36 = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 26
  %40 = load i32, ptr %strstart36, align 4
  %conv37 = zext i32 %40 to i64
  %41 = load ptr, ptr %s.addr, align 8
  %block_start38 = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 22
  %42 = load i64, ptr %block_start38, align 8
  %sub39 = sub nsw i64 %conv37, %42
  call void @_tr_flush_block(ptr noundef %32, ptr noundef %cond, i64 noundef %sub39, i32 noundef 0)
  %43 = load ptr, ptr %s.addr, align 8
  %strstart40 = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 26
  %44 = load i32, ptr %strstart40, align 4
  %conv41 = zext i32 %44 to i64
  %45 = load ptr, ptr %s.addr, align 8
  %block_start42 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 22
  store i64 %conv41, ptr %block_start42, align 8
  %46 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %strm, align 8
  call void @flush_pending(ptr noundef %47)
  %48 = load ptr, ptr %s.addr, align 8
  %strm43 = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %strm43, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %49, i32 0, i32 4
  %50 = load i32, ptr %avail_out, align 8
  %cmp44 = icmp eq i32 %50, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %cond.end
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %lor.lhs.false
  %51 = load ptr, ptr %s.addr, align 8
  %strstart49 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 26
  %52 = load i32, ptr %strstart49, align 4
  %53 = load ptr, ptr %s.addr, align 8
  %block_start50 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 22
  %54 = load i64, ptr %block_start50, align 8
  %conv51 = trunc i64 %54 to i32
  %sub52 = sub i32 %52, %conv51
  %55 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %55, i32 0, i32 10
  %56 = load i32, ptr %w_size, align 8
  %sub53 = sub i32 %56, 262
  %cmp54 = icmp uge i32 %sub52, %sub53
  br i1 %cmp54, label %if.then56, label %if.end83

if.then56:                                        ; preds = %if.end48
  %57 = load ptr, ptr %s.addr, align 8
  %58 = load ptr, ptr %s.addr, align 8
  %block_start57 = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 22
  %59 = load i64, ptr %block_start57, align 8
  %cmp58 = icmp sge i64 %59, 0
  br i1 %cmp58, label %cond.true60, label %cond.false66

cond.true60:                                      ; preds = %if.then56
  %60 = load ptr, ptr %s.addr, align 8
  %window61 = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 13
  %61 = load ptr, ptr %window61, align 8
  %62 = load ptr, ptr %s.addr, align 8
  %block_start62 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 22
  %63 = load i64, ptr %block_start62, align 8
  %conv63 = trunc i64 %63 to i32
  %idxprom64 = zext i32 %conv63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %61, i64 %idxprom64
  br label %cond.end67

cond.false66:                                     ; preds = %if.then56
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %cond.true60
  %cond68 = phi ptr [ %arrayidx65, %cond.true60 ], [ null, %cond.false66 ]
  %64 = load ptr, ptr %s.addr, align 8
  %strstart69 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 26
  %65 = load i32, ptr %strstart69, align 4
  %conv70 = zext i32 %65 to i64
  %66 = load ptr, ptr %s.addr, align 8
  %block_start71 = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 22
  %67 = load i64, ptr %block_start71, align 8
  %sub72 = sub nsw i64 %conv70, %67
  call void @_tr_flush_block(ptr noundef %57, ptr noundef %cond68, i64 noundef %sub72, i32 noundef 0)
  %68 = load ptr, ptr %s.addr, align 8
  %strstart73 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 26
  %69 = load i32, ptr %strstart73, align 4
  %conv74 = zext i32 %69 to i64
  %70 = load ptr, ptr %s.addr, align 8
  %block_start75 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 22
  store i64 %conv74, ptr %block_start75, align 8
  %71 = load ptr, ptr %s.addr, align 8
  %strm76 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %strm76, align 8
  call void @flush_pending(ptr noundef %72)
  %73 = load ptr, ptr %s.addr, align 8
  %strm77 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %strm77, align 8
  %avail_out78 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 4
  %75 = load i32, ptr %avail_out78, align 8
  %cmp79 = icmp eq i32 %75, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %cond.end67
  store i32 0, ptr %retval, align 4
  br label %return

if.end82:                                         ; preds = %cond.end67
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end48
  br label %for.cond

for.end:                                          ; preds = %if.then12
  %76 = load ptr, ptr %s.addr, align 8
  %77 = load ptr, ptr %s.addr, align 8
  %block_start84 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 22
  %78 = load i64, ptr %block_start84, align 8
  %cmp85 = icmp sge i64 %78, 0
  br i1 %cmp85, label %cond.true87, label %cond.false93

cond.true87:                                      ; preds = %for.end
  %79 = load ptr, ptr %s.addr, align 8
  %window88 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 13
  %80 = load ptr, ptr %window88, align 8
  %81 = load ptr, ptr %s.addr, align 8
  %block_start89 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 22
  %82 = load i64, ptr %block_start89, align 8
  %conv90 = trunc i64 %82 to i32
  %idxprom91 = zext i32 %conv90 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %80, i64 %idxprom91
  br label %cond.end94

cond.false93:                                     ; preds = %for.end
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false93, %cond.true87
  %cond95 = phi ptr [ %arrayidx92, %cond.true87 ], [ null, %cond.false93 ]
  %83 = load ptr, ptr %s.addr, align 8
  %strstart96 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 26
  %84 = load i32, ptr %strstart96, align 4
  %conv97 = zext i32 %84 to i64
  %85 = load ptr, ptr %s.addr, align 8
  %block_start98 = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 22
  %86 = load i64, ptr %block_start98, align 8
  %sub99 = sub nsw i64 %conv97, %86
  %87 = load i32, ptr %flush.addr, align 4
  %cmp100 = icmp eq i32 %87, 4
  %conv101 = zext i1 %cmp100 to i32
  call void @_tr_flush_block(ptr noundef %76, ptr noundef %cond95, i64 noundef %sub99, i32 noundef %conv101)
  %88 = load ptr, ptr %s.addr, align 8
  %strstart102 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 26
  %89 = load i32, ptr %strstart102, align 4
  %conv103 = zext i32 %89 to i64
  %90 = load ptr, ptr %s.addr, align 8
  %block_start104 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 22
  store i64 %conv103, ptr %block_start104, align 8
  %91 = load ptr, ptr %s.addr, align 8
  %strm105 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %strm105, align 8
  call void @flush_pending(ptr noundef %92)
  %93 = load ptr, ptr %s.addr, align 8
  %strm106 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %strm106, align 8
  %avail_out107 = getelementptr inbounds %struct.z_stream_s, ptr %94, i32 0, i32 4
  %95 = load i32, ptr %avail_out107, align 8
  %cmp108 = icmp eq i32 %95, 0
  br i1 %cmp108, label %if.then110, label %if.end114

if.then110:                                       ; preds = %cond.end94
  %96 = load i32, ptr %flush.addr, align 4
  %cmp111 = icmp eq i32 %96, 4
  %97 = zext i1 %cmp111 to i64
  %cond113 = select i1 %cmp111, i32 2, i32 0
  store i32 %cond113, ptr %retval, align 4
  br label %return

if.end114:                                        ; preds = %cond.end94
  %98 = load i32, ptr %flush.addr, align 4
  %cmp115 = icmp eq i32 %98, 4
  %99 = zext i1 %cmp115 to i64
  %cond117 = select i1 %cmp115, i32 3, i32 1
  store i32 %cond117, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end114, %if.then110, %if.then81, %if.then46, %if.then8
  %100 = load i32, ptr %retval, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 28
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %3 = load ptr, ptr %s.addr, align 8
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 28
  %4 = load i32, ptr %lookahead1, align 4
  %cmp2 = icmp ult i32 %4, 262
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, ptr %flush.addr, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %6 = load ptr, ptr %s.addr, align 8
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 28
  %7 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %for.end

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %for.cond
  %8 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 28
  %9 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp uge i32 %9, 3
  br i1 %cmp11, label %if.then12, label %if.end29

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 17
  %11 = load i32, ptr %ins_h, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 21
  %13 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %11, %13
  %14 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %window, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 26
  %17 = load i32, ptr %strstart, align 4
  %add = add i32 %17, 2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %xor = xor i32 %shl, %conv
  %19 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 20
  %20 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %20
  %21 = load ptr, ptr %s.addr, align 8
  %ins_h13 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 17
  store i32 %and, ptr %ins_h13, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 16
  %23 = load ptr, ptr %head, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %ins_h14 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 17
  %25 = load i32, ptr %ins_h14, align 8
  %idxprom15 = zext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %23, i64 %idxprom15
  %26 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %26 to i32
  store i32 %conv17, ptr %hash_head, align 4
  %conv18 = trunc i32 %conv17 to i16
  %27 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 15
  %28 = load ptr, ptr %prev, align 8
  %29 = load ptr, ptr %s.addr, align 8
  %strstart19 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 26
  %30 = load i32, ptr %strstart19, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 12
  %32 = load i32, ptr %w_mask, align 8
  %and20 = and i32 %30, %32
  %idxprom21 = zext i32 %and20 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %28, i64 %idxprom21
  store i16 %conv18, ptr %arrayidx22, align 2
  %33 = load ptr, ptr %s.addr, align 8
  %strstart23 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 26
  %34 = load i32, ptr %strstart23, align 4
  %conv24 = trunc i32 %34 to i16
  %35 = load ptr, ptr %s.addr, align 8
  %head25 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 16
  %36 = load ptr, ptr %head25, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %ins_h26 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 17
  %38 = load i32, ptr %ins_h26, align 8
  %idxprom27 = zext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %36, i64 %idxprom27
  store i16 %conv24, ptr %arrayidx28, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end9
  %39 = load i32, ptr %hash_head, align 4
  %cmp30 = icmp ne i32 %39, 0
  br i1 %cmp30, label %land.lhs.true32, label %if.end42

land.lhs.true32:                                  ; preds = %if.end29
  %40 = load ptr, ptr %s.addr, align 8
  %strstart33 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 26
  %41 = load i32, ptr %strstart33, align 4
  %42 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %41, %42
  %43 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 10
  %44 = load i32, ptr %w_size, align 8
  %sub34 = sub i32 %44, 262
  %cmp35 = icmp ule i32 %sub, %sub34
  br i1 %cmp35, label %if.then37, label %if.end42

if.then37:                                        ; preds = %land.lhs.true32
  %45 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 33
  %46 = load i32, ptr %strategy, align 8
  %cmp38 = icmp ne i32 %46, 2
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then37
  %47 = load ptr, ptr %s.addr, align 8
  %48 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %47, i32 noundef %48)
  %49 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 23
  store i32 %call, ptr %match_length, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then37
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %land.lhs.true32, %if.end29
  %50 = load ptr, ptr %s.addr, align 8
  %match_length43 = getelementptr inbounds %struct.internal_state, ptr %50, i32 0, i32 23
  %51 = load i32, ptr %match_length43, align 8
  %cmp44 = icmp uge i32 %51, 3
  br i1 %cmp44, label %if.then46, label %if.else161

if.then46:                                        ; preds = %if.end42
  %52 = load ptr, ptr %s.addr, align 8
  %match_length47 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 23
  %53 = load i32, ptr %match_length47, align 8
  %sub48 = sub i32 %53, 3
  %conv49 = trunc i32 %sub48 to i8
  store i8 %conv49, ptr %len, align 1
  %54 = load ptr, ptr %s.addr, align 8
  %strstart50 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 26
  %55 = load i32, ptr %strstart50, align 4
  %56 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 27
  %57 = load i32, ptr %match_start, align 8
  %sub51 = sub i32 %55, %57
  %conv52 = trunc i32 %sub51 to i16
  store i16 %conv52, ptr %dist, align 2
  %58 = load i16, ptr %dist, align 2
  %59 = load ptr, ptr %s.addr, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 50
  %60 = load ptr, ptr %d_buf, align 8
  %61 = load ptr, ptr %s.addr, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 49
  %62 = load i32, ptr %last_lit, align 4
  %idxprom53 = zext i32 %62 to i64
  %arrayidx54 = getelementptr inbounds i16, ptr %60, i64 %idxprom53
  store i16 %58, ptr %arrayidx54, align 2
  %63 = load i8, ptr %len, align 1
  %64 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 47
  %65 = load ptr, ptr %l_buf, align 8
  %66 = load ptr, ptr %s.addr, align 8
  %last_lit55 = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 49
  %67 = load i32, ptr %last_lit55, align 4
  %inc = add i32 %67, 1
  store i32 %inc, ptr %last_lit55, align 4
  %idxprom56 = zext i32 %67 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %65, i64 %idxprom56
  store i8 %63, ptr %arrayidx57, align 1
  %68 = load i16, ptr %dist, align 2
  %dec = add i16 %68, -1
  store i16 %dec, ptr %dist, align 2
  %69 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 36
  %70 = load i8, ptr %len, align 1
  %idxprom58 = zext i8 %70 to i64
  %arrayidx59 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom58
  %71 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %71 to i32
  %add61 = add nsw i32 %conv60, 256
  %add62 = add nsw i32 %add61, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom63
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx64, i32 0, i32 0
  %72 = load i16, ptr %fc, align 4
  %inc65 = add i16 %72, 1
  store i16 %inc65, ptr %fc, align 4
  %73 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 37
  %74 = load i16, ptr %dist, align 2
  %conv66 = zext i16 %74 to i32
  %cmp67 = icmp slt i32 %conv66, 256
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then46
  %75 = load i16, ptr %dist, align 2
  %idxprom69 = zext i16 %75 to i64
  %arrayidx70 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom69
  %76 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %76 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then46
  %77 = load i16, ptr %dist, align 2
  %conv72 = zext i16 %77 to i32
  %shr = ashr i32 %conv72, 7
  %add73 = add nsw i32 256, %shr
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom74
  %78 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %78 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv71, %cond.true ], [ %conv76, %cond.false ]
  %idxprom77 = sext i32 %cond to i64
  %arrayidx78 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom77
  %fc79 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx78, i32 0, i32 0
  %79 = load i16, ptr %fc79, align 4
  %inc80 = add i16 %79, 1
  store i16 %inc80, ptr %fc79, align 4
  %80 = load ptr, ptr %s.addr, align 8
  %last_lit81 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 49
  %81 = load i32, ptr %last_lit81, align 4
  %82 = load ptr, ptr %s.addr, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 48
  %83 = load i32, ptr %lit_bufsize, align 8
  %sub82 = sub i32 %83, 1
  %cmp83 = icmp eq i32 %81, %sub82
  %conv84 = zext i1 %cmp83 to i32
  store i32 %conv84, ptr %bflush, align 4
  %84 = load ptr, ptr %s.addr, align 8
  %match_length85 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 23
  %85 = load i32, ptr %match_length85, align 8
  %86 = load ptr, ptr %s.addr, align 8
  %lookahead86 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 28
  %87 = load i32, ptr %lookahead86, align 4
  %sub87 = sub i32 %87, %85
  store i32 %sub87, ptr %lookahead86, align 4
  %88 = load ptr, ptr %s.addr, align 8
  %match_length88 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 23
  %89 = load i32, ptr %match_length88, align 8
  %90 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 31
  %91 = load i32, ptr %max_lazy_match, align 8
  %cmp89 = icmp ule i32 %89, %91
  br i1 %cmp89, label %land.lhs.true91, label %if.else

land.lhs.true91:                                  ; preds = %cond.end
  %92 = load ptr, ptr %s.addr, align 8
  %lookahead92 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 28
  %93 = load i32, ptr %lookahead92, align 4
  %cmp93 = icmp uge i32 %93, 3
  br i1 %cmp93, label %if.then95, label %if.else

if.then95:                                        ; preds = %land.lhs.true91
  %94 = load ptr, ptr %s.addr, align 8
  %match_length96 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 23
  %95 = load i32, ptr %match_length96, align 8
  %dec97 = add i32 %95, -1
  store i32 %dec97, ptr %match_length96, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then95
  %96 = load ptr, ptr %s.addr, align 8
  %strstart98 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 26
  %97 = load i32, ptr %strstart98, align 4
  %inc99 = add i32 %97, 1
  store i32 %inc99, ptr %strstart98, align 4
  %98 = load ptr, ptr %s.addr, align 8
  %ins_h100 = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 17
  %99 = load i32, ptr %ins_h100, align 8
  %100 = load ptr, ptr %s.addr, align 8
  %hash_shift101 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 21
  %101 = load i32, ptr %hash_shift101, align 8
  %shl102 = shl i32 %99, %101
  %102 = load ptr, ptr %s.addr, align 8
  %window103 = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 13
  %103 = load ptr, ptr %window103, align 8
  %104 = load ptr, ptr %s.addr, align 8
  %strstart104 = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 26
  %105 = load i32, ptr %strstart104, align 4
  %add105 = add i32 %105, 2
  %idxprom106 = zext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds i8, ptr %103, i64 %idxprom106
  %106 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %106 to i32
  %xor109 = xor i32 %shl102, %conv108
  %107 = load ptr, ptr %s.addr, align 8
  %hash_mask110 = getelementptr inbounds %struct.internal_state, ptr %107, i32 0, i32 20
  %108 = load i32, ptr %hash_mask110, align 4
  %and111 = and i32 %xor109, %108
  %109 = load ptr, ptr %s.addr, align 8
  %ins_h112 = getelementptr inbounds %struct.internal_state, ptr %109, i32 0, i32 17
  store i32 %and111, ptr %ins_h112, align 8
  %110 = load ptr, ptr %s.addr, align 8
  %head113 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 16
  %111 = load ptr, ptr %head113, align 8
  %112 = load ptr, ptr %s.addr, align 8
  %ins_h114 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 17
  %113 = load i32, ptr %ins_h114, align 8
  %idxprom115 = zext i32 %113 to i64
  %arrayidx116 = getelementptr inbounds i16, ptr %111, i64 %idxprom115
  %114 = load i16, ptr %arrayidx116, align 2
  %conv117 = zext i16 %114 to i32
  store i32 %conv117, ptr %hash_head, align 4
  %conv118 = trunc i32 %conv117 to i16
  %115 = load ptr, ptr %s.addr, align 8
  %prev119 = getelementptr inbounds %struct.internal_state, ptr %115, i32 0, i32 15
  %116 = load ptr, ptr %prev119, align 8
  %117 = load ptr, ptr %s.addr, align 8
  %strstart120 = getelementptr inbounds %struct.internal_state, ptr %117, i32 0, i32 26
  %118 = load i32, ptr %strstart120, align 4
  %119 = load ptr, ptr %s.addr, align 8
  %w_mask121 = getelementptr inbounds %struct.internal_state, ptr %119, i32 0, i32 12
  %120 = load i32, ptr %w_mask121, align 8
  %and122 = and i32 %118, %120
  %idxprom123 = zext i32 %and122 to i64
  %arrayidx124 = getelementptr inbounds i16, ptr %116, i64 %idxprom123
  store i16 %conv118, ptr %arrayidx124, align 2
  %121 = load ptr, ptr %s.addr, align 8
  %strstart125 = getelementptr inbounds %struct.internal_state, ptr %121, i32 0, i32 26
  %122 = load i32, ptr %strstart125, align 4
  %conv126 = trunc i32 %122 to i16
  %123 = load ptr, ptr %s.addr, align 8
  %head127 = getelementptr inbounds %struct.internal_state, ptr %123, i32 0, i32 16
  %124 = load ptr, ptr %head127, align 8
  %125 = load ptr, ptr %s.addr, align 8
  %ins_h128 = getelementptr inbounds %struct.internal_state, ptr %125, i32 0, i32 17
  %126 = load i32, ptr %ins_h128, align 8
  %idxprom129 = zext i32 %126 to i64
  %arrayidx130 = getelementptr inbounds i16, ptr %124, i64 %idxprom129
  store i16 %conv126, ptr %arrayidx130, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %127 = load ptr, ptr %s.addr, align 8
  %match_length131 = getelementptr inbounds %struct.internal_state, ptr %127, i32 0, i32 23
  %128 = load i32, ptr %match_length131, align 8
  %dec132 = add i32 %128, -1
  store i32 %dec132, ptr %match_length131, align 8
  %cmp133 = icmp ne i32 %dec132, 0
  br i1 %cmp133, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %129 = load ptr, ptr %s.addr, align 8
  %strstart135 = getelementptr inbounds %struct.internal_state, ptr %129, i32 0, i32 26
  %130 = load i32, ptr %strstart135, align 4
  %inc136 = add i32 %130, 1
  store i32 %inc136, ptr %strstart135, align 4
  br label %if.end160

if.else:                                          ; preds = %land.lhs.true91, %cond.end
  %131 = load ptr, ptr %s.addr, align 8
  %match_length137 = getelementptr inbounds %struct.internal_state, ptr %131, i32 0, i32 23
  %132 = load i32, ptr %match_length137, align 8
  %133 = load ptr, ptr %s.addr, align 8
  %strstart138 = getelementptr inbounds %struct.internal_state, ptr %133, i32 0, i32 26
  %134 = load i32, ptr %strstart138, align 4
  %add139 = add i32 %134, %132
  store i32 %add139, ptr %strstart138, align 4
  %135 = load ptr, ptr %s.addr, align 8
  %match_length140 = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 23
  store i32 0, ptr %match_length140, align 8
  %136 = load ptr, ptr %s.addr, align 8
  %window141 = getelementptr inbounds %struct.internal_state, ptr %136, i32 0, i32 13
  %137 = load ptr, ptr %window141, align 8
  %138 = load ptr, ptr %s.addr, align 8
  %strstart142 = getelementptr inbounds %struct.internal_state, ptr %138, i32 0, i32 26
  %139 = load i32, ptr %strstart142, align 4
  %idxprom143 = zext i32 %139 to i64
  %arrayidx144 = getelementptr inbounds i8, ptr %137, i64 %idxprom143
  %140 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %140 to i32
  %141 = load ptr, ptr %s.addr, align 8
  %ins_h146 = getelementptr inbounds %struct.internal_state, ptr %141, i32 0, i32 17
  store i32 %conv145, ptr %ins_h146, align 8
  %142 = load ptr, ptr %s.addr, align 8
  %ins_h147 = getelementptr inbounds %struct.internal_state, ptr %142, i32 0, i32 17
  %143 = load i32, ptr %ins_h147, align 8
  %144 = load ptr, ptr %s.addr, align 8
  %hash_shift148 = getelementptr inbounds %struct.internal_state, ptr %144, i32 0, i32 21
  %145 = load i32, ptr %hash_shift148, align 8
  %shl149 = shl i32 %143, %145
  %146 = load ptr, ptr %s.addr, align 8
  %window150 = getelementptr inbounds %struct.internal_state, ptr %146, i32 0, i32 13
  %147 = load ptr, ptr %window150, align 8
  %148 = load ptr, ptr %s.addr, align 8
  %strstart151 = getelementptr inbounds %struct.internal_state, ptr %148, i32 0, i32 26
  %149 = load i32, ptr %strstart151, align 4
  %add152 = add i32 %149, 1
  %idxprom153 = zext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds i8, ptr %147, i64 %idxprom153
  %150 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %150 to i32
  %xor156 = xor i32 %shl149, %conv155
  %151 = load ptr, ptr %s.addr, align 8
  %hash_mask157 = getelementptr inbounds %struct.internal_state, ptr %151, i32 0, i32 20
  %152 = load i32, ptr %hash_mask157, align 4
  %and158 = and i32 %xor156, %152
  %153 = load ptr, ptr %s.addr, align 8
  %ins_h159 = getelementptr inbounds %struct.internal_state, ptr %153, i32 0, i32 17
  store i32 %and158, ptr %ins_h159, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.else, %do.end
  br label %if.end189

if.else161:                                       ; preds = %if.end42
  %154 = load ptr, ptr %s.addr, align 8
  %window162 = getelementptr inbounds %struct.internal_state, ptr %154, i32 0, i32 13
  %155 = load ptr, ptr %window162, align 8
  %156 = load ptr, ptr %s.addr, align 8
  %strstart163 = getelementptr inbounds %struct.internal_state, ptr %156, i32 0, i32 26
  %157 = load i32, ptr %strstart163, align 4
  %idxprom164 = zext i32 %157 to i64
  %arrayidx165 = getelementptr inbounds i8, ptr %155, i64 %idxprom164
  %158 = load i8, ptr %arrayidx165, align 1
  store i8 %158, ptr %cc, align 1
  %159 = load ptr, ptr %s.addr, align 8
  %d_buf166 = getelementptr inbounds %struct.internal_state, ptr %159, i32 0, i32 50
  %160 = load ptr, ptr %d_buf166, align 8
  %161 = load ptr, ptr %s.addr, align 8
  %last_lit167 = getelementptr inbounds %struct.internal_state, ptr %161, i32 0, i32 49
  %162 = load i32, ptr %last_lit167, align 4
  %idxprom168 = zext i32 %162 to i64
  %arrayidx169 = getelementptr inbounds i16, ptr %160, i64 %idxprom168
  store i16 0, ptr %arrayidx169, align 2
  %163 = load i8, ptr %cc, align 1
  %164 = load ptr, ptr %s.addr, align 8
  %l_buf170 = getelementptr inbounds %struct.internal_state, ptr %164, i32 0, i32 47
  %165 = load ptr, ptr %l_buf170, align 8
  %166 = load ptr, ptr %s.addr, align 8
  %last_lit171 = getelementptr inbounds %struct.internal_state, ptr %166, i32 0, i32 49
  %167 = load i32, ptr %last_lit171, align 4
  %inc172 = add i32 %167, 1
  store i32 %inc172, ptr %last_lit171, align 4
  %idxprom173 = zext i32 %167 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %165, i64 %idxprom173
  store i8 %163, ptr %arrayidx174, align 1
  %168 = load ptr, ptr %s.addr, align 8
  %dyn_ltree175 = getelementptr inbounds %struct.internal_state, ptr %168, i32 0, i32 36
  %169 = load i8, ptr %cc, align 1
  %idxprom176 = zext i8 %169 to i64
  %arrayidx177 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree175, i64 0, i64 %idxprom176
  %fc178 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx177, i32 0, i32 0
  %170 = load i16, ptr %fc178, align 4
  %inc179 = add i16 %170, 1
  store i16 %inc179, ptr %fc178, align 4
  %171 = load ptr, ptr %s.addr, align 8
  %last_lit180 = getelementptr inbounds %struct.internal_state, ptr %171, i32 0, i32 49
  %172 = load i32, ptr %last_lit180, align 4
  %173 = load ptr, ptr %s.addr, align 8
  %lit_bufsize181 = getelementptr inbounds %struct.internal_state, ptr %173, i32 0, i32 48
  %174 = load i32, ptr %lit_bufsize181, align 8
  %sub182 = sub i32 %174, 1
  %cmp183 = icmp eq i32 %172, %sub182
  %conv184 = zext i1 %cmp183 to i32
  store i32 %conv184, ptr %bflush, align 4
  %175 = load ptr, ptr %s.addr, align 8
  %lookahead185 = getelementptr inbounds %struct.internal_state, ptr %175, i32 0, i32 28
  %176 = load i32, ptr %lookahead185, align 4
  %dec186 = add i32 %176, -1
  store i32 %dec186, ptr %lookahead185, align 4
  %177 = load ptr, ptr %s.addr, align 8
  %strstart187 = getelementptr inbounds %struct.internal_state, ptr %177, i32 0, i32 26
  %178 = load i32, ptr %strstart187, align 4
  %inc188 = add i32 %178, 1
  store i32 %inc188, ptr %strstart187, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.else161, %if.end160
  %179 = load i32, ptr %bflush, align 4
  %tobool = icmp ne i32 %179, 0
  br i1 %tobool, label %if.then190, label %if.end214

if.then190:                                       ; preds = %if.end189
  %180 = load ptr, ptr %s.addr, align 8
  %181 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %181, i32 0, i32 22
  %182 = load i64, ptr %block_start, align 8
  %cmp191 = icmp sge i64 %182, 0
  br i1 %cmp191, label %cond.true193, label %cond.false199

cond.true193:                                     ; preds = %if.then190
  %183 = load ptr, ptr %s.addr, align 8
  %window194 = getelementptr inbounds %struct.internal_state, ptr %183, i32 0, i32 13
  %184 = load ptr, ptr %window194, align 8
  %185 = load ptr, ptr %s.addr, align 8
  %block_start195 = getelementptr inbounds %struct.internal_state, ptr %185, i32 0, i32 22
  %186 = load i64, ptr %block_start195, align 8
  %conv196 = trunc i64 %186 to i32
  %idxprom197 = zext i32 %conv196 to i64
  %arrayidx198 = getelementptr inbounds i8, ptr %184, i64 %idxprom197
  br label %cond.end200

cond.false199:                                    ; preds = %if.then190
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false199, %cond.true193
  %cond201 = phi ptr [ %arrayidx198, %cond.true193 ], [ null, %cond.false199 ]
  %187 = load ptr, ptr %s.addr, align 8
  %strstart202 = getelementptr inbounds %struct.internal_state, ptr %187, i32 0, i32 26
  %188 = load i32, ptr %strstart202, align 4
  %conv203 = zext i32 %188 to i64
  %189 = load ptr, ptr %s.addr, align 8
  %block_start204 = getelementptr inbounds %struct.internal_state, ptr %189, i32 0, i32 22
  %190 = load i64, ptr %block_start204, align 8
  %sub205 = sub nsw i64 %conv203, %190
  call void @_tr_flush_block(ptr noundef %180, ptr noundef %cond201, i64 noundef %sub205, i32 noundef 0)
  %191 = load ptr, ptr %s.addr, align 8
  %strstart206 = getelementptr inbounds %struct.internal_state, ptr %191, i32 0, i32 26
  %192 = load i32, ptr %strstart206, align 4
  %conv207 = zext i32 %192 to i64
  %193 = load ptr, ptr %s.addr, align 8
  %block_start208 = getelementptr inbounds %struct.internal_state, ptr %193, i32 0, i32 22
  store i64 %conv207, ptr %block_start208, align 8
  %194 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %194, i32 0, i32 0
  %195 = load ptr, ptr %strm, align 8
  call void @flush_pending(ptr noundef %195)
  %196 = load ptr, ptr %s.addr, align 8
  %strm209 = getelementptr inbounds %struct.internal_state, ptr %196, i32 0, i32 0
  %197 = load ptr, ptr %strm209, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %197, i32 0, i32 4
  %198 = load i32, ptr %avail_out, align 8
  %cmp210 = icmp eq i32 %198, 0
  br i1 %cmp210, label %if.then212, label %if.end213

if.then212:                                       ; preds = %cond.end200
  store i32 0, ptr %retval, align 4
  br label %return

if.end213:                                        ; preds = %cond.end200
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.end189
  br label %for.cond

for.end:                                          ; preds = %if.then7
  %199 = load ptr, ptr %s.addr, align 8
  %200 = load ptr, ptr %s.addr, align 8
  %block_start215 = getelementptr inbounds %struct.internal_state, ptr %200, i32 0, i32 22
  %201 = load i64, ptr %block_start215, align 8
  %cmp216 = icmp sge i64 %201, 0
  br i1 %cmp216, label %cond.true218, label %cond.false224

cond.true218:                                     ; preds = %for.end
  %202 = load ptr, ptr %s.addr, align 8
  %window219 = getelementptr inbounds %struct.internal_state, ptr %202, i32 0, i32 13
  %203 = load ptr, ptr %window219, align 8
  %204 = load ptr, ptr %s.addr, align 8
  %block_start220 = getelementptr inbounds %struct.internal_state, ptr %204, i32 0, i32 22
  %205 = load i64, ptr %block_start220, align 8
  %conv221 = trunc i64 %205 to i32
  %idxprom222 = zext i32 %conv221 to i64
  %arrayidx223 = getelementptr inbounds i8, ptr %203, i64 %idxprom222
  br label %cond.end225

cond.false224:                                    ; preds = %for.end
  br label %cond.end225

cond.end225:                                      ; preds = %cond.false224, %cond.true218
  %cond226 = phi ptr [ %arrayidx223, %cond.true218 ], [ null, %cond.false224 ]
  %206 = load ptr, ptr %s.addr, align 8
  %strstart227 = getelementptr inbounds %struct.internal_state, ptr %206, i32 0, i32 26
  %207 = load i32, ptr %strstart227, align 4
  %conv228 = zext i32 %207 to i64
  %208 = load ptr, ptr %s.addr, align 8
  %block_start229 = getelementptr inbounds %struct.internal_state, ptr %208, i32 0, i32 22
  %209 = load i64, ptr %block_start229, align 8
  %sub230 = sub nsw i64 %conv228, %209
  %210 = load i32, ptr %flush.addr, align 4
  %cmp231 = icmp eq i32 %210, 4
  %conv232 = zext i1 %cmp231 to i32
  call void @_tr_flush_block(ptr noundef %199, ptr noundef %cond226, i64 noundef %sub230, i32 noundef %conv232)
  %211 = load ptr, ptr %s.addr, align 8
  %strstart233 = getelementptr inbounds %struct.internal_state, ptr %211, i32 0, i32 26
  %212 = load i32, ptr %strstart233, align 4
  %conv234 = zext i32 %212 to i64
  %213 = load ptr, ptr %s.addr, align 8
  %block_start235 = getelementptr inbounds %struct.internal_state, ptr %213, i32 0, i32 22
  store i64 %conv234, ptr %block_start235, align 8
  %214 = load ptr, ptr %s.addr, align 8
  %strm236 = getelementptr inbounds %struct.internal_state, ptr %214, i32 0, i32 0
  %215 = load ptr, ptr %strm236, align 8
  call void @flush_pending(ptr noundef %215)
  %216 = load ptr, ptr %s.addr, align 8
  %strm237 = getelementptr inbounds %struct.internal_state, ptr %216, i32 0, i32 0
  %217 = load ptr, ptr %strm237, align 8
  %avail_out238 = getelementptr inbounds %struct.z_stream_s, ptr %217, i32 0, i32 4
  %218 = load i32, ptr %avail_out238, align 8
  %cmp239 = icmp eq i32 %218, 0
  br i1 %cmp239, label %if.then241, label %if.end245

if.then241:                                       ; preds = %cond.end225
  %219 = load i32, ptr %flush.addr, align 4
  %cmp242 = icmp eq i32 %219, 4
  %220 = zext i1 %cmp242 to i64
  %cond244 = select i1 %cmp242, i32 2, i32 0
  store i32 %cond244, ptr %retval, align 4
  br label %return

if.end245:                                        ; preds = %cond.end225
  %221 = load i32, ptr %flush.addr, align 4
  %cmp246 = icmp eq i32 %221, 4
  %222 = zext i1 %cmp246 to i64
  %cond248 = select i1 %cmp246, i32 3, i32 1
  store i32 %cond248, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end245, %if.then241, %if.then212, %if.then4
  %223 = load i32, ptr %retval, align 4
  ret i32 %223
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 28
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %3 = load ptr, ptr %s.addr, align 8
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 28
  %4 = load i32, ptr %lookahead1, align 4
  %cmp2 = icmp ult i32 %4, 262
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, ptr %flush.addr, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %6 = load ptr, ptr %s.addr, align 8
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 28
  %7 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %for.end

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %for.cond
  %8 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 28
  %9 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp uge i32 %9, 3
  br i1 %cmp11, label %if.then12, label %if.end29

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 17
  %11 = load i32, ptr %ins_h, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 21
  %13 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %11, %13
  %14 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %window, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 26
  %17 = load i32, ptr %strstart, align 4
  %add = add i32 %17, 2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %xor = xor i32 %shl, %conv
  %19 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 20
  %20 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %20
  %21 = load ptr, ptr %s.addr, align 8
  %ins_h13 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 17
  store i32 %and, ptr %ins_h13, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 16
  %23 = load ptr, ptr %head, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %ins_h14 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 17
  %25 = load i32, ptr %ins_h14, align 8
  %idxprom15 = zext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %23, i64 %idxprom15
  %26 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %26 to i32
  store i32 %conv17, ptr %hash_head, align 4
  %conv18 = trunc i32 %conv17 to i16
  %27 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 15
  %28 = load ptr, ptr %prev, align 8
  %29 = load ptr, ptr %s.addr, align 8
  %strstart19 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 26
  %30 = load i32, ptr %strstart19, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 12
  %32 = load i32, ptr %w_mask, align 8
  %and20 = and i32 %30, %32
  %idxprom21 = zext i32 %and20 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %28, i64 %idxprom21
  store i16 %conv18, ptr %arrayidx22, align 2
  %33 = load ptr, ptr %s.addr, align 8
  %strstart23 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 26
  %34 = load i32, ptr %strstart23, align 4
  %conv24 = trunc i32 %34 to i16
  %35 = load ptr, ptr %s.addr, align 8
  %head25 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 16
  %36 = load ptr, ptr %head25, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %ins_h26 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 17
  %38 = load i32, ptr %ins_h26, align 8
  %idxprom27 = zext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %36, i64 %idxprom27
  store i16 %conv24, ptr %arrayidx28, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then12, %if.end9
  %39 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 23
  %40 = load i32, ptr %match_length, align 8
  %41 = load ptr, ptr %s.addr, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 29
  store i32 %40, ptr %prev_length, align 8
  %42 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 27
  %43 = load i32, ptr %match_start, align 8
  %44 = load ptr, ptr %s.addr, align 8
  %prev_match = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 24
  store i32 %43, ptr %prev_match, align 4
  %45 = load ptr, ptr %s.addr, align 8
  %match_length30 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 23
  store i32 2, ptr %match_length30, align 8
  %46 = load i32, ptr %hash_head, align 4
  %cmp31 = icmp ne i32 %46, 0
  br i1 %cmp31, label %land.lhs.true33, label %if.end67

land.lhs.true33:                                  ; preds = %if.end29
  %47 = load ptr, ptr %s.addr, align 8
  %prev_length34 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 29
  %48 = load i32, ptr %prev_length34, align 8
  %49 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 31
  %50 = load i32, ptr %max_lazy_match, align 8
  %cmp35 = icmp ult i32 %48, %50
  br i1 %cmp35, label %land.lhs.true37, label %if.end67

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %51 = load ptr, ptr %s.addr, align 8
  %strstart38 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 26
  %52 = load i32, ptr %strstart38, align 4
  %53 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %52, %53
  %54 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 10
  %55 = load i32, ptr %w_size, align 8
  %sub39 = sub i32 %55, 262
  %cmp40 = icmp ule i32 %sub, %sub39
  br i1 %cmp40, label %if.then42, label %if.end67

if.then42:                                        ; preds = %land.lhs.true37
  %56 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 33
  %57 = load i32, ptr %strategy, align 8
  %cmp43 = icmp ne i32 %57, 2
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then42
  %58 = load ptr, ptr %s.addr, align 8
  %59 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %58, i32 noundef %59)
  %60 = load ptr, ptr %s.addr, align 8
  %match_length46 = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 23
  store i32 %call, ptr %match_length46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then42
  %61 = load ptr, ptr %s.addr, align 8
  %match_length48 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 23
  %62 = load i32, ptr %match_length48, align 8
  %cmp49 = icmp ule i32 %62, 5
  br i1 %cmp49, label %land.lhs.true51, label %if.end66

land.lhs.true51:                                  ; preds = %if.end47
  %63 = load ptr, ptr %s.addr, align 8
  %strategy52 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 33
  %64 = load i32, ptr %strategy52, align 8
  %cmp53 = icmp eq i32 %64, 1
  br i1 %cmp53, label %if.then64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true51
  %65 = load ptr, ptr %s.addr, align 8
  %match_length55 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 23
  %66 = load i32, ptr %match_length55, align 8
  %cmp56 = icmp eq i32 %66, 3
  br i1 %cmp56, label %land.lhs.true58, label %if.end66

land.lhs.true58:                                  ; preds = %lor.lhs.false
  %67 = load ptr, ptr %s.addr, align 8
  %strstart59 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 26
  %68 = load i32, ptr %strstart59, align 4
  %69 = load ptr, ptr %s.addr, align 8
  %match_start60 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 27
  %70 = load i32, ptr %match_start60, align 8
  %sub61 = sub i32 %68, %70
  %cmp62 = icmp ugt i32 %sub61, 4096
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %land.lhs.true58, %land.lhs.true51
  %71 = load ptr, ptr %s.addr, align 8
  %match_length65 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 23
  store i32 2, ptr %match_length65, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %land.lhs.true58, %lor.lhs.false, %if.end47
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %land.lhs.true37, %land.lhs.true33, %if.end29
  %72 = load ptr, ptr %s.addr, align 8
  %prev_length68 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 29
  %73 = load i32, ptr %prev_length68, align 8
  %cmp69 = icmp uge i32 %73, 3
  br i1 %cmp69, label %land.lhs.true71, label %if.else

land.lhs.true71:                                  ; preds = %if.end67
  %74 = load ptr, ptr %s.addr, align 8
  %match_length72 = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 23
  %75 = load i32, ptr %match_length72, align 8
  %76 = load ptr, ptr %s.addr, align 8
  %prev_length73 = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 29
  %77 = load i32, ptr %prev_length73, align 8
  %cmp74 = icmp ule i32 %75, %77
  br i1 %cmp74, label %if.then76, label %if.else

if.then76:                                        ; preds = %land.lhs.true71
  %78 = load ptr, ptr %s.addr, align 8
  %strstart77 = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 26
  %79 = load i32, ptr %strstart77, align 4
  %80 = load ptr, ptr %s.addr, align 8
  %lookahead78 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 28
  %81 = load i32, ptr %lookahead78, align 4
  %add79 = add i32 %79, %81
  %sub80 = sub i32 %add79, 3
  store i32 %sub80, ptr %max_insert, align 4
  %82 = load ptr, ptr %s.addr, align 8
  %prev_length81 = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 29
  %83 = load i32, ptr %prev_length81, align 8
  %sub82 = sub i32 %83, 3
  %conv83 = trunc i32 %sub82 to i8
  store i8 %conv83, ptr %len, align 1
  %84 = load ptr, ptr %s.addr, align 8
  %strstart84 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 26
  %85 = load i32, ptr %strstart84, align 4
  %sub85 = sub i32 %85, 1
  %86 = load ptr, ptr %s.addr, align 8
  %prev_match86 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 24
  %87 = load i32, ptr %prev_match86, align 4
  %sub87 = sub i32 %sub85, %87
  %conv88 = trunc i32 %sub87 to i16
  store i16 %conv88, ptr %dist, align 2
  %88 = load i16, ptr %dist, align 2
  %89 = load ptr, ptr %s.addr, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %89, i32 0, i32 50
  %90 = load ptr, ptr %d_buf, align 8
  %91 = load ptr, ptr %s.addr, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 49
  %92 = load i32, ptr %last_lit, align 4
  %idxprom89 = zext i32 %92 to i64
  %arrayidx90 = getelementptr inbounds i16, ptr %90, i64 %idxprom89
  store i16 %88, ptr %arrayidx90, align 2
  %93 = load i8, ptr %len, align 1
  %94 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 47
  %95 = load ptr, ptr %l_buf, align 8
  %96 = load ptr, ptr %s.addr, align 8
  %last_lit91 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 49
  %97 = load i32, ptr %last_lit91, align 4
  %inc = add i32 %97, 1
  store i32 %inc, ptr %last_lit91, align 4
  %idxprom92 = zext i32 %97 to i64
  %arrayidx93 = getelementptr inbounds i8, ptr %95, i64 %idxprom92
  store i8 %93, ptr %arrayidx93, align 1
  %98 = load i16, ptr %dist, align 2
  %dec = add i16 %98, -1
  store i16 %dec, ptr %dist, align 2
  %99 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %99, i32 0, i32 36
  %100 = load i8, ptr %len, align 1
  %idxprom94 = zext i8 %100 to i64
  %arrayidx95 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom94
  %101 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %101 to i32
  %add97 = add nsw i32 %conv96, 256
  %add98 = add nsw i32 %add97, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom99
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx100, i32 0, i32 0
  %102 = load i16, ptr %fc, align 4
  %inc101 = add i16 %102, 1
  store i16 %inc101, ptr %fc, align 4
  %103 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 37
  %104 = load i16, ptr %dist, align 2
  %conv102 = zext i16 %104 to i32
  %cmp103 = icmp slt i32 %conv102, 256
  br i1 %cmp103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then76
  %105 = load i16, ptr %dist, align 2
  %idxprom105 = zext i16 %105 to i64
  %arrayidx106 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom105
  %106 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %106 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then76
  %107 = load i16, ptr %dist, align 2
  %conv108 = zext i16 %107 to i32
  %shr = ashr i32 %conv108, 7
  %add109 = add nsw i32 256, %shr
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom110
  %108 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %108 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv107, %cond.true ], [ %conv112, %cond.false ]
  %idxprom113 = sext i32 %cond to i64
  %arrayidx114 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom113
  %fc115 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx114, i32 0, i32 0
  %109 = load i16, ptr %fc115, align 4
  %inc116 = add i16 %109, 1
  store i16 %inc116, ptr %fc115, align 4
  %110 = load ptr, ptr %s.addr, align 8
  %last_lit117 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 49
  %111 = load i32, ptr %last_lit117, align 4
  %112 = load ptr, ptr %s.addr, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 48
  %113 = load i32, ptr %lit_bufsize, align 8
  %sub118 = sub i32 %113, 1
  %cmp119 = icmp eq i32 %111, %sub118
  %conv120 = zext i1 %cmp119 to i32
  store i32 %conv120, ptr %bflush, align 4
  %114 = load ptr, ptr %s.addr, align 8
  %prev_length121 = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 29
  %115 = load i32, ptr %prev_length121, align 8
  %sub122 = sub i32 %115, 1
  %116 = load ptr, ptr %s.addr, align 8
  %lookahead123 = getelementptr inbounds %struct.internal_state, ptr %116, i32 0, i32 28
  %117 = load i32, ptr %lookahead123, align 4
  %sub124 = sub i32 %117, %sub122
  store i32 %sub124, ptr %lookahead123, align 4
  %118 = load ptr, ptr %s.addr, align 8
  %prev_length125 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 29
  %119 = load i32, ptr %prev_length125, align 8
  %sub126 = sub i32 %119, 2
  store i32 %sub126, ptr %prev_length125, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %120 = load ptr, ptr %s.addr, align 8
  %strstart127 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 26
  %121 = load i32, ptr %strstart127, align 4
  %inc128 = add i32 %121, 1
  store i32 %inc128, ptr %strstart127, align 4
  %122 = load i32, ptr %max_insert, align 4
  %cmp129 = icmp ule i32 %inc128, %122
  br i1 %cmp129, label %if.then131, label %if.end163

if.then131:                                       ; preds = %do.body
  %123 = load ptr, ptr %s.addr, align 8
  %ins_h132 = getelementptr inbounds %struct.internal_state, ptr %123, i32 0, i32 17
  %124 = load i32, ptr %ins_h132, align 8
  %125 = load ptr, ptr %s.addr, align 8
  %hash_shift133 = getelementptr inbounds %struct.internal_state, ptr %125, i32 0, i32 21
  %126 = load i32, ptr %hash_shift133, align 8
  %shl134 = shl i32 %124, %126
  %127 = load ptr, ptr %s.addr, align 8
  %window135 = getelementptr inbounds %struct.internal_state, ptr %127, i32 0, i32 13
  %128 = load ptr, ptr %window135, align 8
  %129 = load ptr, ptr %s.addr, align 8
  %strstart136 = getelementptr inbounds %struct.internal_state, ptr %129, i32 0, i32 26
  %130 = load i32, ptr %strstart136, align 4
  %add137 = add i32 %130, 2
  %idxprom138 = zext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds i8, ptr %128, i64 %idxprom138
  %131 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %131 to i32
  %xor141 = xor i32 %shl134, %conv140
  %132 = load ptr, ptr %s.addr, align 8
  %hash_mask142 = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 20
  %133 = load i32, ptr %hash_mask142, align 4
  %and143 = and i32 %xor141, %133
  %134 = load ptr, ptr %s.addr, align 8
  %ins_h144 = getelementptr inbounds %struct.internal_state, ptr %134, i32 0, i32 17
  store i32 %and143, ptr %ins_h144, align 8
  %135 = load ptr, ptr %s.addr, align 8
  %head145 = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 16
  %136 = load ptr, ptr %head145, align 8
  %137 = load ptr, ptr %s.addr, align 8
  %ins_h146 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 17
  %138 = load i32, ptr %ins_h146, align 8
  %idxprom147 = zext i32 %138 to i64
  %arrayidx148 = getelementptr inbounds i16, ptr %136, i64 %idxprom147
  %139 = load i16, ptr %arrayidx148, align 2
  %conv149 = zext i16 %139 to i32
  store i32 %conv149, ptr %hash_head, align 4
  %conv150 = trunc i32 %conv149 to i16
  %140 = load ptr, ptr %s.addr, align 8
  %prev151 = getelementptr inbounds %struct.internal_state, ptr %140, i32 0, i32 15
  %141 = load ptr, ptr %prev151, align 8
  %142 = load ptr, ptr %s.addr, align 8
  %strstart152 = getelementptr inbounds %struct.internal_state, ptr %142, i32 0, i32 26
  %143 = load i32, ptr %strstart152, align 4
  %144 = load ptr, ptr %s.addr, align 8
  %w_mask153 = getelementptr inbounds %struct.internal_state, ptr %144, i32 0, i32 12
  %145 = load i32, ptr %w_mask153, align 8
  %and154 = and i32 %143, %145
  %idxprom155 = zext i32 %and154 to i64
  %arrayidx156 = getelementptr inbounds i16, ptr %141, i64 %idxprom155
  store i16 %conv150, ptr %arrayidx156, align 2
  %146 = load ptr, ptr %s.addr, align 8
  %strstart157 = getelementptr inbounds %struct.internal_state, ptr %146, i32 0, i32 26
  %147 = load i32, ptr %strstart157, align 4
  %conv158 = trunc i32 %147 to i16
  %148 = load ptr, ptr %s.addr, align 8
  %head159 = getelementptr inbounds %struct.internal_state, ptr %148, i32 0, i32 16
  %149 = load ptr, ptr %head159, align 8
  %150 = load ptr, ptr %s.addr, align 8
  %ins_h160 = getelementptr inbounds %struct.internal_state, ptr %150, i32 0, i32 17
  %151 = load i32, ptr %ins_h160, align 8
  %idxprom161 = zext i32 %151 to i64
  %arrayidx162 = getelementptr inbounds i16, ptr %149, i64 %idxprom161
  store i16 %conv158, ptr %arrayidx162, align 2
  br label %if.end163

if.end163:                                        ; preds = %if.then131, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end163
  %152 = load ptr, ptr %s.addr, align 8
  %prev_length164 = getelementptr inbounds %struct.internal_state, ptr %152, i32 0, i32 29
  %153 = load i32, ptr %prev_length164, align 8
  %dec165 = add i32 %153, -1
  store i32 %dec165, ptr %prev_length164, align 8
  %cmp166 = icmp ne i32 %dec165, 0
  br i1 %cmp166, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  %154 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %154, i32 0, i32 25
  store i32 0, ptr %match_available, align 8
  %155 = load ptr, ptr %s.addr, align 8
  %match_length168 = getelementptr inbounds %struct.internal_state, ptr %155, i32 0, i32 23
  store i32 2, ptr %match_length168, align 8
  %156 = load ptr, ptr %s.addr, align 8
  %strstart169 = getelementptr inbounds %struct.internal_state, ptr %156, i32 0, i32 26
  %157 = load i32, ptr %strstart169, align 4
  %inc170 = add i32 %157, 1
  store i32 %inc170, ptr %strstart169, align 4
  %158 = load i32, ptr %bflush, align 4
  %tobool = icmp ne i32 %158, 0
  br i1 %tobool, label %if.then171, label %if.end195

if.then171:                                       ; preds = %do.end
  %159 = load ptr, ptr %s.addr, align 8
  %160 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %160, i32 0, i32 22
  %161 = load i64, ptr %block_start, align 8
  %cmp172 = icmp sge i64 %161, 0
  br i1 %cmp172, label %cond.true174, label %cond.false180

cond.true174:                                     ; preds = %if.then171
  %162 = load ptr, ptr %s.addr, align 8
  %window175 = getelementptr inbounds %struct.internal_state, ptr %162, i32 0, i32 13
  %163 = load ptr, ptr %window175, align 8
  %164 = load ptr, ptr %s.addr, align 8
  %block_start176 = getelementptr inbounds %struct.internal_state, ptr %164, i32 0, i32 22
  %165 = load i64, ptr %block_start176, align 8
  %conv177 = trunc i64 %165 to i32
  %idxprom178 = zext i32 %conv177 to i64
  %arrayidx179 = getelementptr inbounds i8, ptr %163, i64 %idxprom178
  br label %cond.end181

cond.false180:                                    ; preds = %if.then171
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false180, %cond.true174
  %cond182 = phi ptr [ %arrayidx179, %cond.true174 ], [ null, %cond.false180 ]
  %166 = load ptr, ptr %s.addr, align 8
  %strstart183 = getelementptr inbounds %struct.internal_state, ptr %166, i32 0, i32 26
  %167 = load i32, ptr %strstart183, align 4
  %conv184 = zext i32 %167 to i64
  %168 = load ptr, ptr %s.addr, align 8
  %block_start185 = getelementptr inbounds %struct.internal_state, ptr %168, i32 0, i32 22
  %169 = load i64, ptr %block_start185, align 8
  %sub186 = sub nsw i64 %conv184, %169
  call void @_tr_flush_block(ptr noundef %159, ptr noundef %cond182, i64 noundef %sub186, i32 noundef 0)
  %170 = load ptr, ptr %s.addr, align 8
  %strstart187 = getelementptr inbounds %struct.internal_state, ptr %170, i32 0, i32 26
  %171 = load i32, ptr %strstart187, align 4
  %conv188 = zext i32 %171 to i64
  %172 = load ptr, ptr %s.addr, align 8
  %block_start189 = getelementptr inbounds %struct.internal_state, ptr %172, i32 0, i32 22
  store i64 %conv188, ptr %block_start189, align 8
  %173 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %173, i32 0, i32 0
  %174 = load ptr, ptr %strm, align 8
  call void @flush_pending(ptr noundef %174)
  %175 = load ptr, ptr %s.addr, align 8
  %strm190 = getelementptr inbounds %struct.internal_state, ptr %175, i32 0, i32 0
  %176 = load ptr, ptr %strm190, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %176, i32 0, i32 4
  %177 = load i32, ptr %avail_out, align 8
  %cmp191 = icmp eq i32 %177, 0
  br i1 %cmp191, label %if.then193, label %if.end194

if.then193:                                       ; preds = %cond.end181
  store i32 0, ptr %retval, align 4
  br label %return

if.end194:                                        ; preds = %cond.end181
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %do.end
  br label %if.end263

if.else:                                          ; preds = %land.lhs.true71, %if.end67
  %178 = load ptr, ptr %s.addr, align 8
  %match_available196 = getelementptr inbounds %struct.internal_state, ptr %178, i32 0, i32 25
  %179 = load i32, ptr %match_available196, align 8
  %tobool197 = icmp ne i32 %179, 0
  br i1 %tobool197, label %if.then198, label %if.else256

if.then198:                                       ; preds = %if.else
  %180 = load ptr, ptr %s.addr, align 8
  %window199 = getelementptr inbounds %struct.internal_state, ptr %180, i32 0, i32 13
  %181 = load ptr, ptr %window199, align 8
  %182 = load ptr, ptr %s.addr, align 8
  %strstart200 = getelementptr inbounds %struct.internal_state, ptr %182, i32 0, i32 26
  %183 = load i32, ptr %strstart200, align 4
  %sub201 = sub i32 %183, 1
  %idxprom202 = zext i32 %sub201 to i64
  %arrayidx203 = getelementptr inbounds i8, ptr %181, i64 %idxprom202
  %184 = load i8, ptr %arrayidx203, align 1
  store i8 %184, ptr %cc, align 1
  %185 = load ptr, ptr %s.addr, align 8
  %d_buf204 = getelementptr inbounds %struct.internal_state, ptr %185, i32 0, i32 50
  %186 = load ptr, ptr %d_buf204, align 8
  %187 = load ptr, ptr %s.addr, align 8
  %last_lit205 = getelementptr inbounds %struct.internal_state, ptr %187, i32 0, i32 49
  %188 = load i32, ptr %last_lit205, align 4
  %idxprom206 = zext i32 %188 to i64
  %arrayidx207 = getelementptr inbounds i16, ptr %186, i64 %idxprom206
  store i16 0, ptr %arrayidx207, align 2
  %189 = load i8, ptr %cc, align 1
  %190 = load ptr, ptr %s.addr, align 8
  %l_buf208 = getelementptr inbounds %struct.internal_state, ptr %190, i32 0, i32 47
  %191 = load ptr, ptr %l_buf208, align 8
  %192 = load ptr, ptr %s.addr, align 8
  %last_lit209 = getelementptr inbounds %struct.internal_state, ptr %192, i32 0, i32 49
  %193 = load i32, ptr %last_lit209, align 4
  %inc210 = add i32 %193, 1
  store i32 %inc210, ptr %last_lit209, align 4
  %idxprom211 = zext i32 %193 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %191, i64 %idxprom211
  store i8 %189, ptr %arrayidx212, align 1
  %194 = load ptr, ptr %s.addr, align 8
  %dyn_ltree213 = getelementptr inbounds %struct.internal_state, ptr %194, i32 0, i32 36
  %195 = load i8, ptr %cc, align 1
  %idxprom214 = zext i8 %195 to i64
  %arrayidx215 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree213, i64 0, i64 %idxprom214
  %fc216 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx215, i32 0, i32 0
  %196 = load i16, ptr %fc216, align 4
  %inc217 = add i16 %196, 1
  store i16 %inc217, ptr %fc216, align 4
  %197 = load ptr, ptr %s.addr, align 8
  %last_lit218 = getelementptr inbounds %struct.internal_state, ptr %197, i32 0, i32 49
  %198 = load i32, ptr %last_lit218, align 4
  %199 = load ptr, ptr %s.addr, align 8
  %lit_bufsize219 = getelementptr inbounds %struct.internal_state, ptr %199, i32 0, i32 48
  %200 = load i32, ptr %lit_bufsize219, align 8
  %sub220 = sub i32 %200, 1
  %cmp221 = icmp eq i32 %198, %sub220
  %conv222 = zext i1 %cmp221 to i32
  store i32 %conv222, ptr %bflush, align 4
  %201 = load i32, ptr %bflush, align 4
  %tobool223 = icmp ne i32 %201, 0
  br i1 %tobool223, label %if.then224, label %if.end245

if.then224:                                       ; preds = %if.then198
  %202 = load ptr, ptr %s.addr, align 8
  %203 = load ptr, ptr %s.addr, align 8
  %block_start225 = getelementptr inbounds %struct.internal_state, ptr %203, i32 0, i32 22
  %204 = load i64, ptr %block_start225, align 8
  %cmp226 = icmp sge i64 %204, 0
  br i1 %cmp226, label %cond.true228, label %cond.false234

cond.true228:                                     ; preds = %if.then224
  %205 = load ptr, ptr %s.addr, align 8
  %window229 = getelementptr inbounds %struct.internal_state, ptr %205, i32 0, i32 13
  %206 = load ptr, ptr %window229, align 8
  %207 = load ptr, ptr %s.addr, align 8
  %block_start230 = getelementptr inbounds %struct.internal_state, ptr %207, i32 0, i32 22
  %208 = load i64, ptr %block_start230, align 8
  %conv231 = trunc i64 %208 to i32
  %idxprom232 = zext i32 %conv231 to i64
  %arrayidx233 = getelementptr inbounds i8, ptr %206, i64 %idxprom232
  br label %cond.end235

cond.false234:                                    ; preds = %if.then224
  br label %cond.end235

cond.end235:                                      ; preds = %cond.false234, %cond.true228
  %cond236 = phi ptr [ %arrayidx233, %cond.true228 ], [ null, %cond.false234 ]
  %209 = load ptr, ptr %s.addr, align 8
  %strstart237 = getelementptr inbounds %struct.internal_state, ptr %209, i32 0, i32 26
  %210 = load i32, ptr %strstart237, align 4
  %conv238 = zext i32 %210 to i64
  %211 = load ptr, ptr %s.addr, align 8
  %block_start239 = getelementptr inbounds %struct.internal_state, ptr %211, i32 0, i32 22
  %212 = load i64, ptr %block_start239, align 8
  %sub240 = sub nsw i64 %conv238, %212
  call void @_tr_flush_block(ptr noundef %202, ptr noundef %cond236, i64 noundef %sub240, i32 noundef 0)
  %213 = load ptr, ptr %s.addr, align 8
  %strstart241 = getelementptr inbounds %struct.internal_state, ptr %213, i32 0, i32 26
  %214 = load i32, ptr %strstart241, align 4
  %conv242 = zext i32 %214 to i64
  %215 = load ptr, ptr %s.addr, align 8
  %block_start243 = getelementptr inbounds %struct.internal_state, ptr %215, i32 0, i32 22
  store i64 %conv242, ptr %block_start243, align 8
  %216 = load ptr, ptr %s.addr, align 8
  %strm244 = getelementptr inbounds %struct.internal_state, ptr %216, i32 0, i32 0
  %217 = load ptr, ptr %strm244, align 8
  call void @flush_pending(ptr noundef %217)
  br label %if.end245

if.end245:                                        ; preds = %cond.end235, %if.then198
  %218 = load ptr, ptr %s.addr, align 8
  %strstart246 = getelementptr inbounds %struct.internal_state, ptr %218, i32 0, i32 26
  %219 = load i32, ptr %strstart246, align 4
  %inc247 = add i32 %219, 1
  store i32 %inc247, ptr %strstart246, align 4
  %220 = load ptr, ptr %s.addr, align 8
  %lookahead248 = getelementptr inbounds %struct.internal_state, ptr %220, i32 0, i32 28
  %221 = load i32, ptr %lookahead248, align 4
  %dec249 = add i32 %221, -1
  store i32 %dec249, ptr %lookahead248, align 4
  %222 = load ptr, ptr %s.addr, align 8
  %strm250 = getelementptr inbounds %struct.internal_state, ptr %222, i32 0, i32 0
  %223 = load ptr, ptr %strm250, align 8
  %avail_out251 = getelementptr inbounds %struct.z_stream_s, ptr %223, i32 0, i32 4
  %224 = load i32, ptr %avail_out251, align 8
  %cmp252 = icmp eq i32 %224, 0
  br i1 %cmp252, label %if.then254, label %if.end255

if.then254:                                       ; preds = %if.end245
  store i32 0, ptr %retval, align 4
  br label %return

if.end255:                                        ; preds = %if.end245
  br label %if.end262

if.else256:                                       ; preds = %if.else
  %225 = load ptr, ptr %s.addr, align 8
  %match_available257 = getelementptr inbounds %struct.internal_state, ptr %225, i32 0, i32 25
  store i32 1, ptr %match_available257, align 8
  %226 = load ptr, ptr %s.addr, align 8
  %strstart258 = getelementptr inbounds %struct.internal_state, ptr %226, i32 0, i32 26
  %227 = load i32, ptr %strstart258, align 4
  %inc259 = add i32 %227, 1
  store i32 %inc259, ptr %strstart258, align 4
  %228 = load ptr, ptr %s.addr, align 8
  %lookahead260 = getelementptr inbounds %struct.internal_state, ptr %228, i32 0, i32 28
  %229 = load i32, ptr %lookahead260, align 4
  %dec261 = add i32 %229, -1
  store i32 %dec261, ptr %lookahead260, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.else256, %if.end255
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.end195
  br label %for.cond

for.end:                                          ; preds = %if.then7
  %230 = load ptr, ptr %s.addr, align 8
  %match_available264 = getelementptr inbounds %struct.internal_state, ptr %230, i32 0, i32 25
  %231 = load i32, ptr %match_available264, align 8
  %tobool265 = icmp ne i32 %231, 0
  br i1 %tobool265, label %if.then266, label %if.end293

if.then266:                                       ; preds = %for.end
  %232 = load ptr, ptr %s.addr, align 8
  %window268 = getelementptr inbounds %struct.internal_state, ptr %232, i32 0, i32 13
  %233 = load ptr, ptr %window268, align 8
  %234 = load ptr, ptr %s.addr, align 8
  %strstart269 = getelementptr inbounds %struct.internal_state, ptr %234, i32 0, i32 26
  %235 = load i32, ptr %strstart269, align 4
  %sub270 = sub i32 %235, 1
  %idxprom271 = zext i32 %sub270 to i64
  %arrayidx272 = getelementptr inbounds i8, ptr %233, i64 %idxprom271
  %236 = load i8, ptr %arrayidx272, align 1
  store i8 %236, ptr %cc267, align 1
  %237 = load ptr, ptr %s.addr, align 8
  %d_buf273 = getelementptr inbounds %struct.internal_state, ptr %237, i32 0, i32 50
  %238 = load ptr, ptr %d_buf273, align 8
  %239 = load ptr, ptr %s.addr, align 8
  %last_lit274 = getelementptr inbounds %struct.internal_state, ptr %239, i32 0, i32 49
  %240 = load i32, ptr %last_lit274, align 4
  %idxprom275 = zext i32 %240 to i64
  %arrayidx276 = getelementptr inbounds i16, ptr %238, i64 %idxprom275
  store i16 0, ptr %arrayidx276, align 2
  %241 = load i8, ptr %cc267, align 1
  %242 = load ptr, ptr %s.addr, align 8
  %l_buf277 = getelementptr inbounds %struct.internal_state, ptr %242, i32 0, i32 47
  %243 = load ptr, ptr %l_buf277, align 8
  %244 = load ptr, ptr %s.addr, align 8
  %last_lit278 = getelementptr inbounds %struct.internal_state, ptr %244, i32 0, i32 49
  %245 = load i32, ptr %last_lit278, align 4
  %inc279 = add i32 %245, 1
  store i32 %inc279, ptr %last_lit278, align 4
  %idxprom280 = zext i32 %245 to i64
  %arrayidx281 = getelementptr inbounds i8, ptr %243, i64 %idxprom280
  store i8 %241, ptr %arrayidx281, align 1
  %246 = load ptr, ptr %s.addr, align 8
  %dyn_ltree282 = getelementptr inbounds %struct.internal_state, ptr %246, i32 0, i32 36
  %247 = load i8, ptr %cc267, align 1
  %idxprom283 = zext i8 %247 to i64
  %arrayidx284 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree282, i64 0, i64 %idxprom283
  %fc285 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx284, i32 0, i32 0
  %248 = load i16, ptr %fc285, align 4
  %inc286 = add i16 %248, 1
  store i16 %inc286, ptr %fc285, align 4
  %249 = load ptr, ptr %s.addr, align 8
  %last_lit287 = getelementptr inbounds %struct.internal_state, ptr %249, i32 0, i32 49
  %250 = load i32, ptr %last_lit287, align 4
  %251 = load ptr, ptr %s.addr, align 8
  %lit_bufsize288 = getelementptr inbounds %struct.internal_state, ptr %251, i32 0, i32 48
  %252 = load i32, ptr %lit_bufsize288, align 8
  %sub289 = sub i32 %252, 1
  %cmp290 = icmp eq i32 %250, %sub289
  %conv291 = zext i1 %cmp290 to i32
  store i32 %conv291, ptr %bflush, align 4
  %253 = load ptr, ptr %s.addr, align 8
  %match_available292 = getelementptr inbounds %struct.internal_state, ptr %253, i32 0, i32 25
  store i32 0, ptr %match_available292, align 8
  br label %if.end293

if.end293:                                        ; preds = %if.then266, %for.end
  %254 = load ptr, ptr %s.addr, align 8
  %255 = load ptr, ptr %s.addr, align 8
  %block_start294 = getelementptr inbounds %struct.internal_state, ptr %255, i32 0, i32 22
  %256 = load i64, ptr %block_start294, align 8
  %cmp295 = icmp sge i64 %256, 0
  br i1 %cmp295, label %cond.true297, label %cond.false303

cond.true297:                                     ; preds = %if.end293
  %257 = load ptr, ptr %s.addr, align 8
  %window298 = getelementptr inbounds %struct.internal_state, ptr %257, i32 0, i32 13
  %258 = load ptr, ptr %window298, align 8
  %259 = load ptr, ptr %s.addr, align 8
  %block_start299 = getelementptr inbounds %struct.internal_state, ptr %259, i32 0, i32 22
  %260 = load i64, ptr %block_start299, align 8
  %conv300 = trunc i64 %260 to i32
  %idxprom301 = zext i32 %conv300 to i64
  %arrayidx302 = getelementptr inbounds i8, ptr %258, i64 %idxprom301
  br label %cond.end304

cond.false303:                                    ; preds = %if.end293
  br label %cond.end304

cond.end304:                                      ; preds = %cond.false303, %cond.true297
  %cond305 = phi ptr [ %arrayidx302, %cond.true297 ], [ null, %cond.false303 ]
  %261 = load ptr, ptr %s.addr, align 8
  %strstart306 = getelementptr inbounds %struct.internal_state, ptr %261, i32 0, i32 26
  %262 = load i32, ptr %strstart306, align 4
  %conv307 = zext i32 %262 to i64
  %263 = load ptr, ptr %s.addr, align 8
  %block_start308 = getelementptr inbounds %struct.internal_state, ptr %263, i32 0, i32 22
  %264 = load i64, ptr %block_start308, align 8
  %sub309 = sub nsw i64 %conv307, %264
  %265 = load i32, ptr %flush.addr, align 4
  %cmp310 = icmp eq i32 %265, 4
  %conv311 = zext i1 %cmp310 to i32
  call void @_tr_flush_block(ptr noundef %254, ptr noundef %cond305, i64 noundef %sub309, i32 noundef %conv311)
  %266 = load ptr, ptr %s.addr, align 8
  %strstart312 = getelementptr inbounds %struct.internal_state, ptr %266, i32 0, i32 26
  %267 = load i32, ptr %strstart312, align 4
  %conv313 = zext i32 %267 to i64
  %268 = load ptr, ptr %s.addr, align 8
  %block_start314 = getelementptr inbounds %struct.internal_state, ptr %268, i32 0, i32 22
  store i64 %conv313, ptr %block_start314, align 8
  %269 = load ptr, ptr %s.addr, align 8
  %strm315 = getelementptr inbounds %struct.internal_state, ptr %269, i32 0, i32 0
  %270 = load ptr, ptr %strm315, align 8
  call void @flush_pending(ptr noundef %270)
  %271 = load ptr, ptr %s.addr, align 8
  %strm316 = getelementptr inbounds %struct.internal_state, ptr %271, i32 0, i32 0
  %272 = load ptr, ptr %strm316, align 8
  %avail_out317 = getelementptr inbounds %struct.z_stream_s, ptr %272, i32 0, i32 4
  %273 = load i32, ptr %avail_out317, align 8
  %cmp318 = icmp eq i32 %273, 0
  br i1 %cmp318, label %if.then320, label %if.end324

if.then320:                                       ; preds = %cond.end304
  %274 = load i32, ptr %flush.addr, align 4
  %cmp321 = icmp eq i32 %274, 4
  %275 = zext i1 %cmp321 to i64
  %cond323 = select i1 %cmp321, i32 2, i32 0
  store i32 %cond323, ptr %retval, align 4
  br label %return

if.end324:                                        ; preds = %cond.end304
  %276 = load i32, ptr %flush.addr, align 4
  %cmp325 = icmp eq i32 %276, 4
  %277 = zext i1 %cmp325 to i64
  %cond327 = select i1 %cmp325, i32 3, i32 1
  store i32 %cond327, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end324, %if.then320, %if.then254, %if.then193, %if.then4
  %278 = load i32, ptr %retval, align 4
  ret i32 %278
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fill_window(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca ptr, align 8
  %more = alloca i32, align 4
  %wsize = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %w_size, align 8
  store i32 %1, ptr %wsize, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %2 = load ptr, ptr %s.addr, align 8
  %window_size = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 14
  %3 = load i64, ptr %window_size, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 28
  %5 = load i32, ptr %lookahead, align 4
  %conv = zext i32 %5 to i64
  %sub = sub i64 %3, %conv
  %6 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 26
  %7 = load i32, ptr %strstart, align 4
  %conv1 = zext i32 %7 to i64
  %sub2 = sub i64 %sub, %conv1
  %conv3 = trunc i64 %sub2 to i32
  store i32 %conv3, ptr %more, align 4
  %8 = load i32, ptr %more, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %9 = load ptr, ptr %s.addr, align 8
  %strstart5 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 26
  %10 = load i32, ptr %strstart5, align 4
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %s.addr, align 8
  %lookahead9 = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 28
  %12 = load i32, ptr %lookahead9, align 4
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true8
  %13 = load i32, ptr %wsize, align 4
  store i32 %13, ptr %more, align 4
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true8, %land.lhs.true, %do.body
  %14 = load i32, ptr %more, align 4
  %cmp12 = icmp eq i32 %14, -1
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  %15 = load i32, ptr %more, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %more, align 4
  br label %if.end55

if.else15:                                        ; preds = %if.else
  %16 = load ptr, ptr %s.addr, align 8
  %strstart16 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 26
  %17 = load i32, ptr %strstart16, align 4
  %18 = load i32, ptr %wsize, align 4
  %19 = load ptr, ptr %s.addr, align 8
  %w_size17 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 10
  %20 = load i32, ptr %w_size17, align 8
  %sub18 = sub i32 %20, 262
  %add = add i32 %18, %sub18
  %cmp19 = icmp uge i32 %17, %add
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else15
  %21 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 13
  %22 = load ptr, ptr %window, align 8
  %23 = load ptr, ptr %s.addr, align 8
  %window22 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 13
  %24 = load ptr, ptr %window22, align 8
  %25 = load i32, ptr %wsize, align 4
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  %26 = load i32, ptr %wsize, align 4
  %conv23 = zext i32 %26 to i64
  %27 = load ptr, ptr %s.addr, align 8
  %window24 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 13
  %28 = load ptr, ptr %window24, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %22, ptr noundef %add.ptr, i64 noundef %conv23, i64 noundef %29) #5
  %30 = load i32, ptr %wsize, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 27
  %32 = load i32, ptr %match_start, align 8
  %sub25 = sub i32 %32, %30
  store i32 %sub25, ptr %match_start, align 8
  %33 = load i32, ptr %wsize, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %strstart26 = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 26
  %35 = load i32, ptr %strstart26, align 4
  %sub27 = sub i32 %35, %33
  store i32 %sub27, ptr %strstart26, align 4
  %36 = load i32, ptr %wsize, align 4
  %conv28 = zext i32 %36 to i64
  %37 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 22
  %38 = load i64, ptr %block_start, align 8
  %sub29 = sub nsw i64 %38, %conv28
  store i64 %sub29, ptr %block_start, align 8
  %39 = load ptr, ptr %s.addr, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 18
  %40 = load i32, ptr %hash_size, align 4
  store i32 %40, ptr %n, align 4
  %41 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 16
  %42 = load ptr, ptr %head, align 8
  %43 = load i32, ptr %n, align 4
  %idxprom = zext i32 %43 to i64
  %arrayidx = getelementptr inbounds i16, ptr %42, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  br label %do.body30

do.body30:                                        ; preds = %do.cond, %if.then21
  %44 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %44, i32 -1
  store ptr %incdec.ptr, ptr %p, align 8
  %45 = load i16, ptr %incdec.ptr, align 2
  %conv31 = zext i16 %45 to i32
  store i32 %conv31, ptr %m, align 4
  %46 = load i32, ptr %m, align 4
  %47 = load i32, ptr %wsize, align 4
  %cmp32 = icmp uge i32 %46, %47
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body30
  %48 = load i32, ptr %m, align 4
  %49 = load i32, ptr %wsize, align 4
  %sub34 = sub i32 %48, %49
  br label %cond.end

cond.false:                                       ; preds = %do.body30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub34, %cond.true ], [ 0, %cond.false ]
  %conv35 = trunc i32 %cond to i16
  %50 = load ptr, ptr %p, align 8
  store i16 %conv35, ptr %50, align 2
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %51 = load i32, ptr %n, align 4
  %dec36 = add i32 %51, -1
  store i32 %dec36, ptr %n, align 4
  %tobool = icmp ne i32 %dec36, 0
  br i1 %tobool, label %do.body30, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %52 = load i32, ptr %wsize, align 4
  store i32 %52, ptr %n, align 4
  %53 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 15
  %54 = load ptr, ptr %prev, align 8
  %55 = load i32, ptr %n, align 4
  %idxprom37 = zext i32 %55 to i64
  %arrayidx38 = getelementptr inbounds i16, ptr %54, i64 %idxprom37
  store ptr %arrayidx38, ptr %p, align 8
  br label %do.body39

do.body39:                                        ; preds = %do.cond50, %do.end
  %56 = load ptr, ptr %p, align 8
  %incdec.ptr40 = getelementptr inbounds i16, ptr %56, i32 -1
  store ptr %incdec.ptr40, ptr %p, align 8
  %57 = load i16, ptr %incdec.ptr40, align 2
  %conv41 = zext i16 %57 to i32
  store i32 %conv41, ptr %m, align 4
  %58 = load i32, ptr %m, align 4
  %59 = load i32, ptr %wsize, align 4
  %cmp42 = icmp uge i32 %58, %59
  br i1 %cmp42, label %cond.true44, label %cond.false46

cond.true44:                                      ; preds = %do.body39
  %60 = load i32, ptr %m, align 4
  %61 = load i32, ptr %wsize, align 4
  %sub45 = sub i32 %60, %61
  br label %cond.end47

cond.false46:                                     ; preds = %do.body39
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.true44
  %cond48 = phi i32 [ %sub45, %cond.true44 ], [ 0, %cond.false46 ]
  %conv49 = trunc i32 %cond48 to i16
  %62 = load ptr, ptr %p, align 8
  store i16 %conv49, ptr %62, align 2
  br label %do.cond50

do.cond50:                                        ; preds = %cond.end47
  %63 = load i32, ptr %n, align 4
  %dec51 = add i32 %63, -1
  store i32 %dec51, ptr %n, align 4
  %tobool52 = icmp ne i32 %dec51, 0
  br i1 %tobool52, label %do.body39, label %do.end53, !llvm.loop !11

do.end53:                                         ; preds = %do.cond50
  %64 = load i32, ptr %wsize, align 4
  %65 = load i32, ptr %more, align 4
  %add54 = add i32 %65, %64
  store i32 %add54, ptr %more, align 4
  br label %if.end

if.end:                                           ; preds = %do.end53, %if.else15
  br label %if.end55

if.end55:                                         ; preds = %if.end, %if.then14
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then
  %66 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %strm, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %avail_in, align 8
  %cmp57 = icmp eq i32 %68, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  br label %do.end98

if.end60:                                         ; preds = %if.end56
  %69 = load ptr, ptr %s.addr, align 8
  %strm61 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %strm61, align 8
  %71 = load ptr, ptr %s.addr, align 8
  %window62 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 13
  %72 = load ptr, ptr %window62, align 8
  %73 = load ptr, ptr %s.addr, align 8
  %strstart63 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 26
  %74 = load i32, ptr %strstart63, align 4
  %idx.ext64 = zext i32 %74 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %72, i64 %idx.ext64
  %75 = load ptr, ptr %s.addr, align 8
  %lookahead66 = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 28
  %76 = load i32, ptr %lookahead66, align 4
  %idx.ext67 = zext i32 %76 to i64
  %add.ptr68 = getelementptr inbounds i8, ptr %add.ptr65, i64 %idx.ext67
  %77 = load i32, ptr %more, align 4
  %call69 = call i32 @read_buf(ptr noundef %70, ptr noundef %add.ptr68, i32 noundef %77)
  store i32 %call69, ptr %n, align 4
  %78 = load i32, ptr %n, align 4
  %79 = load ptr, ptr %s.addr, align 8
  %lookahead70 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 28
  %80 = load i32, ptr %lookahead70, align 4
  %add71 = add i32 %80, %78
  store i32 %add71, ptr %lookahead70, align 4
  %81 = load ptr, ptr %s.addr, align 8
  %lookahead72 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 28
  %82 = load i32, ptr %lookahead72, align 4
  %cmp73 = icmp uge i32 %82, 3
  br i1 %cmp73, label %if.then75, label %if.end89

if.then75:                                        ; preds = %if.end60
  %83 = load ptr, ptr %s.addr, align 8
  %window76 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 13
  %84 = load ptr, ptr %window76, align 8
  %85 = load ptr, ptr %s.addr, align 8
  %strstart77 = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 26
  %86 = load i32, ptr %strstart77, align 4
  %idxprom78 = zext i32 %86 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %84, i64 %idxprom78
  %87 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %87 to i32
  %88 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 17
  store i32 %conv80, ptr %ins_h, align 8
  %89 = load ptr, ptr %s.addr, align 8
  %ins_h81 = getelementptr inbounds %struct.internal_state, ptr %89, i32 0, i32 17
  %90 = load i32, ptr %ins_h81, align 8
  %91 = load ptr, ptr %s.addr, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 21
  %92 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %90, %92
  %93 = load ptr, ptr %s.addr, align 8
  %window82 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 13
  %94 = load ptr, ptr %window82, align 8
  %95 = load ptr, ptr %s.addr, align 8
  %strstart83 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 26
  %96 = load i32, ptr %strstart83, align 4
  %add84 = add i32 %96, 1
  %idxprom85 = zext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %94, i64 %idxprom85
  %97 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %97 to i32
  %xor = xor i32 %shl, %conv87
  %98 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 20
  %99 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %99
  %100 = load ptr, ptr %s.addr, align 8
  %ins_h88 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 17
  store i32 %and, ptr %ins_h88, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then75, %if.end60
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  %101 = load ptr, ptr %s.addr, align 8
  %lookahead91 = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 28
  %102 = load i32, ptr %lookahead91, align 4
  %cmp92 = icmp ult i32 %102, 262
  br i1 %cmp92, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond90
  %103 = load ptr, ptr %s.addr, align 8
  %strm94 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %strm94, align 8
  %avail_in95 = getelementptr inbounds %struct.z_stream_s, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %avail_in95, align 8
  %cmp96 = icmp ne i32 %105, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond90
  %106 = phi i1 [ false, %do.cond90 ], [ %cmp96, %land.rhs ]
  br i1 %106, label %do.body, label %do.end98, !llvm.loop !12

do.end98:                                         ; preds = %if.then59, %land.end
  ret void
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @read_buf(ptr noundef %strm, ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %avail_in, align 8
  store i32 %1, ptr %len, align 4
  %2 = load i32, ptr %len, align 4
  %3 = load i32, ptr %size.addr, align 4
  %cmp = icmp ugt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %size.addr, align 4
  store i32 %4, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %len, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %len, align 4
  %7 = load ptr, ptr %strm.addr, align 8
  %avail_in4 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %avail_in4, align 8
  %sub = sub i32 %8, %6
  store i32 %sub, ptr %avail_in4, align 8
  %9 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %state, align 8
  %noheader = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %noheader, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %12 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 12
  %13 = load i64, ptr %adler, align 8
  %14 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %next_in, align 8
  %16 = load i32, ptr %len, align 4
  %call = call i64 @adler32(i64 noundef %13, ptr noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %strm.addr, align 8
  %adler6 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 12
  store i64 %call, ptr %adler6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %18 = load ptr, ptr %buf.addr, align 8
  %19 = load ptr, ptr %strm.addr, align 8
  %next_in8 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %next_in8, align 8
  %21 = load i32, ptr %len, align 4
  %conv = zext i32 %21 to i64
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memcpy_chk(ptr noundef %18, ptr noundef %20, i64 noundef %conv, i64 noundef %23) #5
  %24 = load i32, ptr %len, align 4
  %25 = load ptr, ptr %strm.addr, align 8
  %next_in10 = getelementptr inbounds %struct.z_stream_s, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %next_in10, align 8
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %next_in10, align 8
  %27 = load i32, ptr %len, align 4
  %conv11 = zext i32 %27 to i64
  %28 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 2
  %29 = load i64, ptr %total_in, align 8
  %add = add i64 %29, %conv11
  store i64 %add, ptr %total_in, align 8
  %30 = load i32, ptr %len, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then2
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @longest_match(ptr noundef %s, i32 noundef %cur_match) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %s.addr, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 30
  %1 = load i32, ptr %max_chain_length, align 4
  store i32 %1, ptr %chain_length, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %window, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 26
  %5 = load i32, ptr %strstart, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %scan, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 29
  %7 = load i32, ptr %prev_length, align 8
  store i32 %7, ptr %best_len, align 4
  %8 = load ptr, ptr %s.addr, align 8
  %nice_match1 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 35
  %9 = load i32, ptr %nice_match1, align 8
  store i32 %9, ptr %nice_match, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %strstart2 = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 26
  %11 = load i32, ptr %strstart2, align 4
  %12 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 10
  %13 = load i32, ptr %w_size, align 8
  %sub = sub i32 %13, 262
  %cmp = icmp ugt i32 %11, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8
  %strstart3 = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 26
  %15 = load i32, ptr %strstart3, align 4
  %16 = load ptr, ptr %s.addr, align 8
  %w_size4 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 10
  %17 = load i32, ptr %w_size4, align 8
  %sub5 = sub i32 %17, 262
  %sub6 = sub i32 %15, %sub5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub6, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %limit, align 4
  %18 = load ptr, ptr %s.addr, align 8
  %prev7 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 15
  %19 = load ptr, ptr %prev7, align 8
  store ptr %19, ptr %prev, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 12
  %21 = load i32, ptr %w_mask, align 8
  store i32 %21, ptr %wmask, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %window8 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 13
  %23 = load ptr, ptr %window8, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %strstart9 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 26
  %25 = load i32, ptr %strstart9, align 4
  %idx.ext10 = zext i32 %25 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %23, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 258
  store ptr %add.ptr12, ptr %strend, align 8
  %26 = load ptr, ptr %scan, align 8
  %27 = load i32, ptr %best_len, align 4
  %sub13 = sub nsw i32 %27, 1
  %idxprom = sext i32 %sub13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 %idxprom
  %28 = load i8, ptr %arrayidx, align 1
  store i8 %28, ptr %scan_end1, align 1
  %29 = load ptr, ptr %scan, align 8
  %30 = load i32, ptr %best_len, align 4
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %29, i64 %idxprom14
  %31 = load i8, ptr %arrayidx15, align 1
  store i8 %31, ptr %scan_end, align 1
  %32 = load ptr, ptr %s.addr, align 8
  %prev_length16 = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 29
  %33 = load i32, ptr %prev_length16, align 8
  %34 = load ptr, ptr %s.addr, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 34
  %35 = load i32, ptr %good_match, align 4
  %cmp17 = icmp uge i32 %33, %35
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %36 = load i32, ptr %chain_length, align 4
  %shr = lshr i32 %36, 2
  store i32 %shr, ptr %chain_length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %37 = load i32, ptr %nice_match, align 4
  %38 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %38, i32 0, i32 28
  %39 = load i32, ptr %lookahead, align 4
  %cmp18 = icmp ugt i32 %37, %39
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end
  %40 = load ptr, ptr %s.addr, align 8
  %lookahead20 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 28
  %41 = load i32, ptr %lookahead20, align 4
  store i32 %41, ptr %nice_match, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end
  br label %do.body

do.body:                                          ; preds = %land.end134, %if.end21
  %42 = load ptr, ptr %s.addr, align 8
  %window22 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 13
  %43 = load ptr, ptr %window22, align 8
  %44 = load i32, ptr %cur_match.addr, align 4
  %idx.ext23 = zext i32 %44 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %43, i64 %idx.ext23
  store ptr %add.ptr24, ptr %match, align 8
  %45 = load ptr, ptr %match, align 8
  %46 = load i32, ptr %best_len, align 4
  %idxprom25 = sext i32 %46 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %45, i64 %idxprom25
  %47 = load i8, ptr %arrayidx26, align 1
  %conv = zext i8 %47 to i32
  %48 = load i8, ptr %scan_end, align 1
  %conv27 = zext i8 %48 to i32
  %cmp28 = icmp ne i32 %conv, %conv27
  br i1 %cmp28, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %49 = load ptr, ptr %match, align 8
  %50 = load i32, ptr %best_len, align 4
  %sub30 = sub nsw i32 %50, 1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %49, i64 %idxprom31
  %51 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %51 to i32
  %52 = load i8, ptr %scan_end1, align 1
  %conv34 = zext i8 %52 to i32
  %cmp35 = icmp ne i32 %conv33, %conv34
  br i1 %cmp35, label %if.then48, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %53 = load ptr, ptr %match, align 8
  %54 = load i8, ptr %53, align 1
  %conv38 = zext i8 %54 to i32
  %55 = load ptr, ptr %scan, align 8
  %56 = load i8, ptr %55, align 1
  %conv39 = zext i8 %56 to i32
  %cmp40 = icmp ne i32 %conv38, %conv39
  br i1 %cmp40, label %if.then48, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %57 = load ptr, ptr %match, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %57, i32 1
  store ptr %incdec.ptr, ptr %match, align 8
  %58 = load i8, ptr %incdec.ptr, align 1
  %conv43 = zext i8 %58 to i32
  %59 = load ptr, ptr %scan, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %59, i64 1
  %60 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %60 to i32
  %cmp46 = icmp ne i32 %conv43, %conv45
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false42, %lor.lhs.false37, %lor.lhs.false, %do.body
  br label %do.cond125

if.end49:                                         ; preds = %lor.lhs.false42
  %61 = load ptr, ptr %scan, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %61, i64 2
  store ptr %add.ptr50, ptr %scan, align 8
  %62 = load ptr, ptr %match, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr51, ptr %match, align 8
  br label %do.body52

do.body52:                                        ; preds = %land.end, %if.end49
  br label %do.cond

do.cond:                                          ; preds = %do.body52
  %63 = load ptr, ptr %scan, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr53, ptr %scan, align 8
  %64 = load i8, ptr %incdec.ptr53, align 1
  %conv54 = zext i8 %64 to i32
  %65 = load ptr, ptr %match, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr55, ptr %match, align 8
  %66 = load i8, ptr %incdec.ptr55, align 1
  %conv56 = zext i8 %66 to i32
  %cmp57 = icmp eq i32 %conv54, %conv56
  br i1 %cmp57, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %67 = load ptr, ptr %scan, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr59, ptr %scan, align 8
  %68 = load i8, ptr %incdec.ptr59, align 1
  %conv60 = zext i8 %68 to i32
  %69 = load ptr, ptr %match, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr61, ptr %match, align 8
  %70 = load i8, ptr %incdec.ptr61, align 1
  %conv62 = zext i8 %70 to i32
  %cmp63 = icmp eq i32 %conv60, %conv62
  br i1 %cmp63, label %land.lhs.true65, label %land.end

land.lhs.true65:                                  ; preds = %land.lhs.true
  %71 = load ptr, ptr %scan, align 8
  %incdec.ptr66 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %incdec.ptr66, ptr %scan, align 8
  %72 = load i8, ptr %incdec.ptr66, align 1
  %conv67 = zext i8 %72 to i32
  %73 = load ptr, ptr %match, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr68, ptr %match, align 8
  %74 = load i8, ptr %incdec.ptr68, align 1
  %conv69 = zext i8 %74 to i32
  %cmp70 = icmp eq i32 %conv67, %conv69
  br i1 %cmp70, label %land.lhs.true72, label %land.end

land.lhs.true72:                                  ; preds = %land.lhs.true65
  %75 = load ptr, ptr %scan, align 8
  %incdec.ptr73 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr73, ptr %scan, align 8
  %76 = load i8, ptr %incdec.ptr73, align 1
  %conv74 = zext i8 %76 to i32
  %77 = load ptr, ptr %match, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr75, ptr %match, align 8
  %78 = load i8, ptr %incdec.ptr75, align 1
  %conv76 = zext i8 %78 to i32
  %cmp77 = icmp eq i32 %conv74, %conv76
  br i1 %cmp77, label %land.lhs.true79, label %land.end

land.lhs.true79:                                  ; preds = %land.lhs.true72
  %79 = load ptr, ptr %scan, align 8
  %incdec.ptr80 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr80, ptr %scan, align 8
  %80 = load i8, ptr %incdec.ptr80, align 1
  %conv81 = zext i8 %80 to i32
  %81 = load ptr, ptr %match, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr82, ptr %match, align 8
  %82 = load i8, ptr %incdec.ptr82, align 1
  %conv83 = zext i8 %82 to i32
  %cmp84 = icmp eq i32 %conv81, %conv83
  br i1 %cmp84, label %land.lhs.true86, label %land.end

land.lhs.true86:                                  ; preds = %land.lhs.true79
  %83 = load ptr, ptr %scan, align 8
  %incdec.ptr87 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr87, ptr %scan, align 8
  %84 = load i8, ptr %incdec.ptr87, align 1
  %conv88 = zext i8 %84 to i32
  %85 = load ptr, ptr %match, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr89, ptr %match, align 8
  %86 = load i8, ptr %incdec.ptr89, align 1
  %conv90 = zext i8 %86 to i32
  %cmp91 = icmp eq i32 %conv88, %conv90
  br i1 %cmp91, label %land.lhs.true93, label %land.end

land.lhs.true93:                                  ; preds = %land.lhs.true86
  %87 = load ptr, ptr %scan, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr94, ptr %scan, align 8
  %88 = load i8, ptr %incdec.ptr94, align 1
  %conv95 = zext i8 %88 to i32
  %89 = load ptr, ptr %match, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr96, ptr %match, align 8
  %90 = load i8, ptr %incdec.ptr96, align 1
  %conv97 = zext i8 %90 to i32
  %cmp98 = icmp eq i32 %conv95, %conv97
  br i1 %cmp98, label %land.lhs.true100, label %land.end

land.lhs.true100:                                 ; preds = %land.lhs.true93
  %91 = load ptr, ptr %scan, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr101, ptr %scan, align 8
  %92 = load i8, ptr %incdec.ptr101, align 1
  %conv102 = zext i8 %92 to i32
  %93 = load ptr, ptr %match, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %93, i32 1
  store ptr %incdec.ptr103, ptr %match, align 8
  %94 = load i8, ptr %incdec.ptr103, align 1
  %conv104 = zext i8 %94 to i32
  %cmp105 = icmp eq i32 %conv102, %conv104
  br i1 %cmp105, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true100
  %95 = load ptr, ptr %scan, align 8
  %96 = load ptr, ptr %strend, align 8
  %cmp107 = icmp ult ptr %95, %96
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true100, %land.lhs.true93, %land.lhs.true86, %land.lhs.true79, %land.lhs.true72, %land.lhs.true65, %land.lhs.true, %do.cond
  %97 = phi i1 [ false, %land.lhs.true100 ], [ false, %land.lhs.true93 ], [ false, %land.lhs.true86 ], [ false, %land.lhs.true79 ], [ false, %land.lhs.true72 ], [ false, %land.lhs.true65 ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp107, %land.rhs ]
  br i1 %97, label %do.body52, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %land.end
  %98 = load ptr, ptr %strend, align 8
  %99 = load ptr, ptr %scan, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %98 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %99 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv109 = trunc i64 %sub.ptr.sub to i32
  %sub110 = sub nsw i32 258, %conv109
  store i32 %sub110, ptr %len, align 4
  %100 = load ptr, ptr %strend, align 8
  %add.ptr111 = getelementptr inbounds i8, ptr %100, i64 -258
  store ptr %add.ptr111, ptr %scan, align 8
  %101 = load i32, ptr %len, align 4
  %102 = load i32, ptr %best_len, align 4
  %cmp112 = icmp sgt i32 %101, %102
  br i1 %cmp112, label %if.then114, label %if.end124

if.then114:                                       ; preds = %do.end
  %103 = load i32, ptr %cur_match.addr, align 4
  %104 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 27
  store i32 %103, ptr %match_start, align 8
  %105 = load i32, ptr %len, align 4
  store i32 %105, ptr %best_len, align 4
  %106 = load i32, ptr %len, align 4
  %107 = load i32, ptr %nice_match, align 4
  %cmp115 = icmp sge i32 %106, %107
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.then114
  br label %do.end135

if.end118:                                        ; preds = %if.then114
  %108 = load ptr, ptr %scan, align 8
  %109 = load i32, ptr %best_len, align 4
  %sub119 = sub nsw i32 %109, 1
  %idxprom120 = sext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %108, i64 %idxprom120
  %110 = load i8, ptr %arrayidx121, align 1
  store i8 %110, ptr %scan_end1, align 1
  %111 = load ptr, ptr %scan, align 8
  %112 = load i32, ptr %best_len, align 4
  %idxprom122 = sext i32 %112 to i64
  %arrayidx123 = getelementptr inbounds i8, ptr %111, i64 %idxprom122
  %113 = load i8, ptr %arrayidx123, align 1
  store i8 %113, ptr %scan_end, align 1
  br label %if.end124

if.end124:                                        ; preds = %if.end118, %do.end
  br label %do.cond125

do.cond125:                                       ; preds = %if.end124, %if.then48
  %114 = load ptr, ptr %prev, align 8
  %115 = load i32, ptr %cur_match.addr, align 4
  %116 = load i32, ptr %wmask, align 4
  %and = and i32 %115, %116
  %idxprom126 = zext i32 %and to i64
  %arrayidx127 = getelementptr inbounds i16, ptr %114, i64 %idxprom126
  %117 = load i16, ptr %arrayidx127, align 2
  %conv128 = zext i16 %117 to i32
  store i32 %conv128, ptr %cur_match.addr, align 4
  %118 = load i32, ptr %limit, align 4
  %cmp129 = icmp ugt i32 %conv128, %118
  br i1 %cmp129, label %land.rhs131, label %land.end134

land.rhs131:                                      ; preds = %do.cond125
  %119 = load i32, ptr %chain_length, align 4
  %dec = add i32 %119, -1
  store i32 %dec, ptr %chain_length, align 4
  %cmp132 = icmp ne i32 %dec, 0
  br label %land.end134

land.end134:                                      ; preds = %land.rhs131, %do.cond125
  %120 = phi i1 [ false, %do.cond125 ], [ %cmp132, %land.rhs131 ]
  br i1 %120, label %do.body, label %do.end135, !llvm.loop !14

do.end135:                                        ; preds = %land.end134, %if.then117
  %121 = load i32, ptr %best_len, align 4
  %122 = load ptr, ptr %s.addr, align 8
  %lookahead136 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 28
  %123 = load i32, ptr %lookahead136, align 4
  %cmp137 = icmp ule i32 %121, %123
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %do.end135
  %124 = load i32, ptr %best_len, align 4
  store i32 %124, ptr %retval, align 4
  br label %return

if.end140:                                        ; preds = %do.end135
  %125 = load ptr, ptr %s.addr, align 8
  %lookahead141 = getelementptr inbounds %struct.internal_state, ptr %125, i32 0, i32 28
  %126 = load i32, ptr %lookahead141, align 4
  store i32 %126, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end140, %if.then139
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
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
