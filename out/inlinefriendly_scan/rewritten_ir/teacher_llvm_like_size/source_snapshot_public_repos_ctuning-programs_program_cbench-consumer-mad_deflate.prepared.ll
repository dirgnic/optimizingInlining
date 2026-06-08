; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/deflate.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/deflate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i32, i32, i16, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@deflate_copyright = constant [53 x i8] c" deflate 1.2.3 Copyright 1995-2005 Jean-loup Gailly \00", align 1
@deflateInit2_.my_version = internal constant [6 x i8] c"1.2.3\00", align 1
@z_errmsg = external constant [10 x ptr], align 8
@configuration_table = internal constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 8
@_length_code = external constant [0 x i8], align 1
@_dist_code = external constant [0 x i8], align 1

; Function Attrs: nounwind ssp uwtable
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
  %wrap = alloca i32, align 4
  %overlay = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %level, ptr %level.addr, align 4
  store i32 %method, ptr %method.addr, align 4
  store i32 %windowBits, ptr %windowBits.addr, align 4
  store i32 %memLevel, ptr %memLevel.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  store ptr %version, ptr %version.addr, align 8
  store i32 %stream_size, ptr %stream_size.addr, align 4
  store i32 1, ptr %wrap, align 4
  %0 = load ptr, ptr %version.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %version.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8, ptr @deflateInit2_.my_version, align 1
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
  %5 = load ptr, ptr %strm.addr, align 8
  %cmp8 = icmp eq ptr %5, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %6 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %zalloc, align 8
  %cmp12 = icmp eq ptr %8, null
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %9 = load ptr, ptr %strm.addr, align 8
  %zalloc15 = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 8
  store ptr @zcalloc, ptr %zalloc15, align 8
  %10 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11
  %11 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %zfree, align 8
  %cmp17 = icmp eq ptr %12, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %13 = load ptr, ptr %strm.addr, align 8
  %zfree20 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 9
  store ptr @zcfree, ptr %zfree20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %14 = load i32, ptr %level.addr, align 4
  %cmp22 = icmp eq i32 %14, -1
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 6, ptr %level.addr, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %15 = load i32, ptr %windowBits.addr, align 4
  %cmp26 = icmp slt i32 %15, 0
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25
  store i32 0, ptr %wrap, align 4
  %16 = load i32, ptr %windowBits.addr, align 4
  %sub = sub nsw i32 0, %16
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end25
  %17 = load i32, ptr %windowBits.addr, align 4
  %cmp29 = icmp sgt i32 %17, 15
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.else
  store i32 2, ptr %wrap, align 4
  %18 = load i32, ptr %windowBits.addr, align 4
  %sub32 = sub nsw i32 %18, 16
  store i32 %sub32, ptr %windowBits.addr, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then28
  %19 = load i32, ptr %memLevel.addr, align 4
  %cmp35 = icmp slt i32 %19, 1
  br i1 %cmp35, label %if.then61, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end34
  %20 = load i32, ptr %memLevel.addr, align 4
  %cmp38 = icmp sgt i32 %20, 9
  br i1 %cmp38, label %if.then61, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %21 = load i32, ptr %method.addr, align 4
  %cmp41 = icmp ne i32 %21, 8
  br i1 %cmp41, label %if.then61, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %22 = load i32, ptr %windowBits.addr, align 4
  %cmp44 = icmp slt i32 %22, 8
  br i1 %cmp44, label %if.then61, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %23 = load i32, ptr %windowBits.addr, align 4
  %cmp47 = icmp sgt i32 %23, 15
  br i1 %cmp47, label %if.then61, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %24 = load i32, ptr %level.addr, align 4
  %cmp50 = icmp slt i32 %24, 0
  br i1 %cmp50, label %if.then61, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %25 = load i32, ptr %level.addr, align 4
  %cmp53 = icmp sgt i32 %25, 9
  br i1 %cmp53, label %if.then61, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %26 = load i32, ptr %strategy.addr, align 4
  %cmp56 = icmp slt i32 %26, 0
  br i1 %cmp56, label %if.then61, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %27 = load i32, ptr %strategy.addr, align 4
  %cmp59 = icmp sgt i32 %27, 4
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %lor.lhs.false58, %lor.lhs.false55, %lor.lhs.false52, %lor.lhs.false49, %lor.lhs.false46, %lor.lhs.false43, %lor.lhs.false40, %lor.lhs.false37, %if.end34
  store i32 -2, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %lor.lhs.false58
  %28 = load i32, ptr %windowBits.addr, align 4
  %cmp63 = icmp eq i32 %28, 8
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  store i32 9, ptr %windowBits.addr, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end62
  %29 = load ptr, ptr %strm.addr, align 8
  %zalloc67 = getelementptr inbounds %struct.z_stream_s, ptr %29, i32 0, i32 8
  %30 = load ptr, ptr %zalloc67, align 8
  %31 = load ptr, ptr %strm.addr, align 8
  %opaque68 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 10
  %32 = load ptr, ptr %opaque68, align 8
  %call = call ptr %30(ptr noundef %32, i32 noundef 1, i32 noundef 5928)
  store ptr %call, ptr %s, align 8
  %33 = load ptr, ptr %s, align 8
  %cmp69 = icmp eq ptr %33, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end66
  store i32 -4, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end66
  %34 = load ptr, ptr %s, align 8
  %35 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 7
  store ptr %34, ptr %state, align 8
  %36 = load ptr, ptr %strm.addr, align 8
  %37 = load ptr, ptr %s, align 8
  %strm73 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 0
  store ptr %36, ptr %strm73, align 8
  %38 = load i32, ptr %wrap, align 4
  %39 = load ptr, ptr %s, align 8
  %wrap74 = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 6
  store i32 %38, ptr %wrap74, align 4
  %40 = load ptr, ptr %s, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 7
  store ptr null, ptr %gzhead, align 8
  %41 = load i32, ptr %windowBits.addr, align 4
  %42 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 12
  store i32 %41, ptr %w_bits, align 8
  %43 = load ptr, ptr %s, align 8
  %w_bits75 = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 12
  %44 = load i32, ptr %w_bits75, align 8
  %shl = shl i32 1, %44
  %45 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 11
  store i32 %shl, ptr %w_size, align 4
  %46 = load ptr, ptr %s, align 8
  %w_size76 = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 11
  %47 = load i32, ptr %w_size76, align 4
  %sub77 = sub i32 %47, 1
  %48 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 13
  store i32 %sub77, ptr %w_mask, align 4
  %49 = load i32, ptr %memLevel.addr, align 4
  %add = add nsw i32 %49, 7
  %50 = load ptr, ptr %s, align 8
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %50, i32 0, i32 20
  store i32 %add, ptr %hash_bits, align 8
  %51 = load ptr, ptr %s, align 8
  %hash_bits78 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 20
  %52 = load i32, ptr %hash_bits78, align 8
  %shl79 = shl i32 1, %52
  %53 = load ptr, ptr %s, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 19
  store i32 %shl79, ptr %hash_size, align 4
  %54 = load ptr, ptr %s, align 8
  %hash_size80 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 19
  %55 = load i32, ptr %hash_size80, align 4
  %sub81 = sub i32 %55, 1
  %56 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 21
  store i32 %sub81, ptr %hash_mask, align 4
  %57 = load ptr, ptr %s, align 8
  %hash_bits82 = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 20
  %58 = load i32, ptr %hash_bits82, align 8
  %add83 = add i32 %58, 3
  %sub84 = sub i32 %add83, 1
  %div = udiv i32 %sub84, 3
  %59 = load ptr, ptr %s, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 22
  store i32 %div, ptr %hash_shift, align 8
  %60 = load ptr, ptr %strm.addr, align 8
  %zalloc85 = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 8
  %61 = load ptr, ptr %zalloc85, align 8
  %62 = load ptr, ptr %strm.addr, align 8
  %opaque86 = getelementptr inbounds %struct.z_stream_s, ptr %62, i32 0, i32 10
  %63 = load ptr, ptr %opaque86, align 8
  %64 = load ptr, ptr %s, align 8
  %w_size87 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 11
  %65 = load i32, ptr %w_size87, align 4
  %call88 = call ptr %61(ptr noundef %63, i32 noundef %65, i32 noundef 2)
  %66 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 14
  store ptr %call88, ptr %window, align 8
  %67 = load ptr, ptr %strm.addr, align 8
  %zalloc89 = getelementptr inbounds %struct.z_stream_s, ptr %67, i32 0, i32 8
  %68 = load ptr, ptr %zalloc89, align 8
  %69 = load ptr, ptr %strm.addr, align 8
  %opaque90 = getelementptr inbounds %struct.z_stream_s, ptr %69, i32 0, i32 10
  %70 = load ptr, ptr %opaque90, align 8
  %71 = load ptr, ptr %s, align 8
  %w_size91 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 11
  %72 = load i32, ptr %w_size91, align 4
  %call92 = call ptr %68(ptr noundef %70, i32 noundef %72, i32 noundef 2)
  %73 = load ptr, ptr %s, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 16
  store ptr %call92, ptr %prev, align 8
  %74 = load ptr, ptr %strm.addr, align 8
  %zalloc93 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 8
  %75 = load ptr, ptr %zalloc93, align 8
  %76 = load ptr, ptr %strm.addr, align 8
  %opaque94 = getelementptr inbounds %struct.z_stream_s, ptr %76, i32 0, i32 10
  %77 = load ptr, ptr %opaque94, align 8
  %78 = load ptr, ptr %s, align 8
  %hash_size95 = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 19
  %79 = load i32, ptr %hash_size95, align 4
  %call96 = call ptr %75(ptr noundef %77, i32 noundef %79, i32 noundef 2)
  %80 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 17
  store ptr %call96, ptr %head, align 8
  %81 = load i32, ptr %memLevel.addr, align 4
  %add97 = add nsw i32 %81, 6
  %shl98 = shl i32 1, %add97
  %82 = load ptr, ptr %s, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 49
  store i32 %shl98, ptr %lit_bufsize, align 8
  %83 = load ptr, ptr %strm.addr, align 8
  %zalloc99 = getelementptr inbounds %struct.z_stream_s, ptr %83, i32 0, i32 8
  %84 = load ptr, ptr %zalloc99, align 8
  %85 = load ptr, ptr %strm.addr, align 8
  %opaque100 = getelementptr inbounds %struct.z_stream_s, ptr %85, i32 0, i32 10
  %86 = load ptr, ptr %opaque100, align 8
  %87 = load ptr, ptr %s, align 8
  %lit_bufsize101 = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 49
  %88 = load i32, ptr %lit_bufsize101, align 8
  %call102 = call ptr %84(ptr noundef %86, i32 noundef %88, i32 noundef 4)
  store ptr %call102, ptr %overlay, align 8
  %89 = load ptr, ptr %overlay, align 8
  %90 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 2
  store ptr %89, ptr %pending_buf, align 8
  %91 = load ptr, ptr %s, align 8
  %lit_bufsize103 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 49
  %92 = load i32, ptr %lit_bufsize103, align 8
  %conv104 = zext i32 %92 to i64
  %mul = mul i64 %conv104, 4
  %93 = load ptr, ptr %s, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 3
  store i64 %mul, ptr %pending_buf_size, align 8
  %94 = load ptr, ptr %s, align 8
  %window105 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 14
  %95 = load ptr, ptr %window105, align 8
  %cmp106 = icmp eq ptr %95, null
  br i1 %cmp106, label %if.then120, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %if.end72
  %96 = load ptr, ptr %s, align 8
  %prev109 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 16
  %97 = load ptr, ptr %prev109, align 8
  %cmp110 = icmp eq ptr %97, null
  br i1 %cmp110, label %if.then120, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %98 = load ptr, ptr %s, align 8
  %head113 = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 17
  %99 = load ptr, ptr %head113, align 8
  %cmp114 = icmp eq ptr %99, null
  br i1 %cmp114, label %if.then120, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %100 = load ptr, ptr %s, align 8
  %pending_buf117 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %pending_buf117, align 8
  %cmp118 = icmp eq ptr %101, null
  br i1 %cmp118, label %if.then120, label %if.end123

if.then120:                                       ; preds = %lor.lhs.false116, %lor.lhs.false112, %lor.lhs.false108, %if.end72
  %102 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 1
  store i32 666, ptr %status, align 8
  %103 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 8
  %104 = load ptr, ptr %strm.addr, align 8
  %msg121 = getelementptr inbounds %struct.z_stream_s, ptr %104, i32 0, i32 6
  store ptr %103, ptr %msg121, align 8
  %105 = load ptr, ptr %strm.addr, align 8
  %call122 = call i32 @deflateEnd(ptr noundef %105)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end123:                                        ; preds = %lor.lhs.false116
  %106 = load ptr, ptr %overlay, align 8
  %107 = load ptr, ptr %s, align 8
  %lit_bufsize124 = getelementptr inbounds %struct.internal_state, ptr %107, i32 0, i32 49
  %108 = load i32, ptr %lit_bufsize124, align 8
  %conv125 = zext i32 %108 to i64
  %div126 = udiv i64 %conv125, 2
  %add.ptr = getelementptr inbounds i16, ptr %106, i64 %div126
  %109 = load ptr, ptr %s, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %109, i32 0, i32 51
  store ptr %add.ptr, ptr %d_buf, align 8
  %110 = load ptr, ptr %s, align 8
  %pending_buf127 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 2
  %111 = load ptr, ptr %pending_buf127, align 8
  %112 = load ptr, ptr %s, align 8
  %lit_bufsize128 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 49
  %113 = load i32, ptr %lit_bufsize128, align 8
  %conv129 = zext i32 %113 to i64
  %mul130 = mul i64 3, %conv129
  %add.ptr131 = getelementptr inbounds i8, ptr %111, i64 %mul130
  %114 = load ptr, ptr %s, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 48
  store ptr %add.ptr131, ptr %l_buf, align 8
  %115 = load i32, ptr %level.addr, align 4
  %116 = load ptr, ptr %s, align 8
  %level132 = getelementptr inbounds %struct.internal_state, ptr %116, i32 0, i32 33
  store i32 %115, ptr %level132, align 4
  %117 = load i32, ptr %strategy.addr, align 4
  %118 = load ptr, ptr %s, align 8
  %strategy133 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 34
  store i32 %117, ptr %strategy133, align 8
  %119 = load i32, ptr %method.addr, align 4
  %conv134 = trunc i32 %119 to i8
  %120 = load ptr, ptr %s, align 8
  %method135 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 9
  store i8 %conv134, ptr %method135, align 4
  %121 = load ptr, ptr %strm.addr, align 8
  %call136 = call i32 @deflateReset(ptr noundef %121)
  store i32 %call136, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end123, %if.then120, %if.then71, %if.then61, %if.then10, %if.then
  %122 = load i32, ptr %retval, align 4
  ret i32 %122
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
  br i1 %cmp4, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, ptr %status, align 4
  %cmp5 = icmp ne i32 %7, 69
  br i1 %cmp5, label %land.lhs.true6, label %if.end17

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load i32, ptr %status, align 4
  %cmp7 = icmp ne i32 %8, 73
  br i1 %cmp7, label %land.lhs.true8, label %if.end17

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %9 = load i32, ptr %status, align 4
  %cmp9 = icmp ne i32 %9, 91
  br i1 %cmp9, label %land.lhs.true10, label %if.end17

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %10 = load i32, ptr %status, align 4
  %cmp11 = icmp ne i32 %10, 103
  br i1 %cmp11, label %land.lhs.true12, label %if.end17

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %11 = load i32, ptr %status, align 4
  %cmp13 = icmp ne i32 %11, 113
  br i1 %cmp13, label %land.lhs.true14, label %if.end17

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %12 = load i32, ptr %status, align 4
  %cmp15 = icmp ne i32 %12, 666
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true14
  store i32 -2, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true14, %land.lhs.true12, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true, %if.end
  %13 = load ptr, ptr %strm.addr, align 8
  %state18 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %state18, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pending_buf, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  %16 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %zfree, align 8
  %18 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %opaque, align 8
  %20 = load ptr, ptr %strm.addr, align 8
  %state20 = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %state20, align 8
  %pending_buf21 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pending_buf21, align 8
  call void %17(ptr noundef %19, ptr noundef %22)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  %23 = load ptr, ptr %strm.addr, align 8
  %state23 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 7
  %24 = load ptr, ptr %state23, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 17
  %25 = load ptr, ptr %head, align 8
  %tobool24 = icmp ne ptr %25, null
  br i1 %tobool24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end22
  %26 = load ptr, ptr %strm.addr, align 8
  %zfree26 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %zfree26, align 8
  %28 = load ptr, ptr %strm.addr, align 8
  %opaque27 = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 10
  %29 = load ptr, ptr %opaque27, align 8
  %30 = load ptr, ptr %strm.addr, align 8
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 7
  %31 = load ptr, ptr %state28, align 8
  %head29 = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 17
  %32 = load ptr, ptr %head29, align 8
  call void %27(ptr noundef %29, ptr noundef %32)
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end22
  %33 = load ptr, ptr %strm.addr, align 8
  %state31 = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 7
  %34 = load ptr, ptr %state31, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 16
  %35 = load ptr, ptr %prev, align 8
  %tobool32 = icmp ne ptr %35, null
  br i1 %tobool32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end30
  %36 = load ptr, ptr %strm.addr, align 8
  %zfree34 = getelementptr inbounds %struct.z_stream_s, ptr %36, i32 0, i32 9
  %37 = load ptr, ptr %zfree34, align 8
  %38 = load ptr, ptr %strm.addr, align 8
  %opaque35 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 10
  %39 = load ptr, ptr %opaque35, align 8
  %40 = load ptr, ptr %strm.addr, align 8
  %state36 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 7
  %41 = load ptr, ptr %state36, align 8
  %prev37 = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 16
  %42 = load ptr, ptr %prev37, align 8
  call void %37(ptr noundef %39, ptr noundef %42)
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30
  %43 = load ptr, ptr %strm.addr, align 8
  %state39 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 7
  %44 = load ptr, ptr %state39, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 14
  %45 = load ptr, ptr %window, align 8
  %tobool40 = icmp ne ptr %45, null
  br i1 %tobool40, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end38
  %46 = load ptr, ptr %strm.addr, align 8
  %zfree42 = getelementptr inbounds %struct.z_stream_s, ptr %46, i32 0, i32 9
  %47 = load ptr, ptr %zfree42, align 8
  %48 = load ptr, ptr %strm.addr, align 8
  %opaque43 = getelementptr inbounds %struct.z_stream_s, ptr %48, i32 0, i32 10
  %49 = load ptr, ptr %opaque43, align 8
  %50 = load ptr, ptr %strm.addr, align 8
  %state44 = getelementptr inbounds %struct.z_stream_s, ptr %50, i32 0, i32 7
  %51 = load ptr, ptr %state44, align 8
  %window45 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 14
  %52 = load ptr, ptr %window45, align 8
  call void %47(ptr noundef %49, ptr noundef %52)
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end38
  %53 = load ptr, ptr %strm.addr, align 8
  %zfree47 = getelementptr inbounds %struct.z_stream_s, ptr %53, i32 0, i32 9
  %54 = load ptr, ptr %zfree47, align 8
  %55 = load ptr, ptr %strm.addr, align 8
  %opaque48 = getelementptr inbounds %struct.z_stream_s, ptr %55, i32 0, i32 10
  %56 = load ptr, ptr %opaque48, align 8
  %57 = load ptr, ptr %strm.addr, align 8
  %state49 = getelementptr inbounds %struct.z_stream_s, ptr %57, i32 0, i32 7
  %58 = load ptr, ptr %state49, align 8
  call void %54(ptr noundef %56, ptr noundef %58)
  %59 = load ptr, ptr %strm.addr, align 8
  %state50 = getelementptr inbounds %struct.z_stream_s, ptr %59, i32 0, i32 7
  store ptr null, ptr %state50, align 8
  %60 = load i32, ptr %status, align 4
  %cmp51 = icmp eq i32 %60, 113
  %61 = zext i1 %cmp51 to i64
  %cond = select i1 %cmp51, i32 -3, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then16, %if.then
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

; Function Attrs: nounwind ssp uwtable
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
  %wrap = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %wrap, align 4
  %cmp7 = icmp slt i32 %18, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %19 = load ptr, ptr %s, align 8
  %wrap9 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %wrap9, align 4
  %sub = sub nsw i32 0, %20
  %21 = load ptr, ptr %s, align 8
  %wrap10 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 6
  store i32 %sub, ptr %wrap10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  %22 = load ptr, ptr %s, align 8
  %wrap12 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %wrap12, align 4
  %tobool = icmp ne i32 %23, 0
  %24 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 42, i32 113
  %25 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 1
  store i32 %cond, ptr %status, align 8
  %26 = load ptr, ptr %s, align 8
  %wrap13 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %wrap13, align 4
  %cmp14 = icmp eq i32 %27, 2
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  %call15 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i64 [ %call, %cond.true ], [ %call15, %cond.false ]
  %28 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 12
  store i64 %cond16, ptr %adler, align 8
  %29 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 10
  store i32 0, ptr %last_flush, align 8
  %30 = load ptr, ptr %s, align 8
  call void @_tr_init(ptr noundef %30)
  %31 = load ptr, ptr %s, align 8
  call void @lm_init(ptr noundef %31)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
  %wrap = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %wrap, align 4
  %cmp6 = icmp eq i32 %7, 2
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %state8, align 8
  %wrap9 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %wrap9, align 4
  %cmp10 = icmp eq i32 %10, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %11 = load ptr, ptr %strm.addr, align 8
  %state11 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %state11, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %status, align 8
  %cmp12 = icmp ne i32 %13, 42
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false7
  %14 = load ptr, ptr %strm.addr, align 8
  %state13 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %state13, align 8
  store ptr %15, ptr %s, align 8
  %16 = load ptr, ptr %s, align 8
  %wrap14 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %wrap14, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  %18 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 12
  %19 = load i64, ptr %adler, align 8
  %20 = load ptr, ptr %dictionary.addr, align 8
  %21 = load i32, ptr %dictLength.addr, align 4
  %call = call i64 @adler32(i64 noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %strm.addr, align 8
  %adler16 = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 12
  store i64 %call, ptr %adler16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end
  %23 = load i32, ptr %length, align 4
  %cmp18 = icmp ult i32 %23, 3
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end17
  %24 = load i32, ptr %length, align 4
  %25 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 11
  %26 = load i32, ptr %w_size, align 4
  %sub = sub i32 %26, 262
  %cmp21 = icmp ugt i32 %24, %sub
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end20
  %27 = load ptr, ptr %s, align 8
  %w_size23 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 11
  %28 = load i32, ptr %w_size23, align 4
  %sub24 = sub i32 %28, 262
  store i32 %sub24, ptr %length, align 4
  %29 = load i32, ptr %dictLength.addr, align 4
  %30 = load i32, ptr %length, align 4
  %sub25 = sub i32 %29, %30
  %31 = load ptr, ptr %dictionary.addr, align 8
  %idx.ext = zext i32 %sub25 to i64
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %idx.ext
  store ptr %add.ptr, ptr %dictionary.addr, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end20
  %32 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 14
  %33 = load ptr, ptr %window, align 8
  %34 = load ptr, ptr %dictionary.addr, align 8
  %35 = load i32, ptr %length, align 4
  %conv = zext i32 %35 to i64
  %36 = load ptr, ptr %s, align 8
  %window27 = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 14
  %37 = load ptr, ptr %window27, align 8
  %38 = call i64 @llvm.objectsize.i64.p0(ptr %37, i1 false, i1 true, i1 false)
  %call28 = call ptr @__memcpy_chk(ptr noundef %33, ptr noundef %34, i64 noundef %conv, i64 noundef %38) #4
  %39 = load i32, ptr %length, align 4
  %40 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 27
  store i32 %39, ptr %strstart, align 4
  %41 = load i32, ptr %length, align 4
  %conv29 = zext i32 %41 to i64
  %42 = load ptr, ptr %s, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 23
  store i64 %conv29, ptr %block_start, align 8
  %43 = load ptr, ptr %s, align 8
  %window30 = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 14
  %44 = load ptr, ptr %window30, align 8
  %arrayidx = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx, align 1
  %conv31 = zext i8 %45 to i32
  %46 = load ptr, ptr %s, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 18
  store i32 %conv31, ptr %ins_h, align 8
  %47 = load ptr, ptr %s, align 8
  %ins_h32 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 18
  %48 = load i32, ptr %ins_h32, align 8
  %49 = load ptr, ptr %s, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 22
  %50 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %48, %50
  %51 = load ptr, ptr %s, align 8
  %window33 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 14
  %52 = load ptr, ptr %window33, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %52, i64 1
  %53 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %53 to i32
  %xor = xor i32 %shl, %conv35
  %54 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 21
  %55 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %55
  %56 = load ptr, ptr %s, align 8
  %ins_h36 = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 18
  store i32 %and, ptr %ins_h36, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end26
  %57 = load i32, ptr %n, align 4
  %58 = load i32, ptr %length, align 4
  %sub37 = sub i32 %58, 3
  %cmp38 = icmp ule i32 %57, %sub37
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load ptr, ptr %s, align 8
  %ins_h40 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 18
  %60 = load i32, ptr %ins_h40, align 8
  %61 = load ptr, ptr %s, align 8
  %hash_shift41 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 22
  %62 = load i32, ptr %hash_shift41, align 8
  %shl42 = shl i32 %60, %62
  %63 = load ptr, ptr %s, align 8
  %window43 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 14
  %64 = load ptr, ptr %window43, align 8
  %65 = load i32, ptr %n, align 4
  %add = add i32 %65, 2
  %idxprom = zext i32 %add to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %64, i64 %idxprom
  %66 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %66 to i32
  %xor46 = xor i32 %shl42, %conv45
  %67 = load ptr, ptr %s, align 8
  %hash_mask47 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 21
  %68 = load i32, ptr %hash_mask47, align 4
  %and48 = and i32 %xor46, %68
  %69 = load ptr, ptr %s, align 8
  %ins_h49 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 18
  store i32 %and48, ptr %ins_h49, align 8
  %70 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 17
  %71 = load ptr, ptr %head, align 8
  %72 = load ptr, ptr %s, align 8
  %ins_h50 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 18
  %73 = load i32, ptr %ins_h50, align 8
  %idxprom51 = zext i32 %73 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %71, i64 %idxprom51
  %74 = load i16, ptr %arrayidx52, align 2
  %75 = load ptr, ptr %s, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 16
  %76 = load ptr, ptr %prev, align 8
  %77 = load i32, ptr %n, align 4
  %78 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 13
  %79 = load i32, ptr %w_mask, align 4
  %and53 = and i32 %77, %79
  %idxprom54 = zext i32 %and53 to i64
  %arrayidx55 = getelementptr inbounds i16, ptr %76, i64 %idxprom54
  store i16 %74, ptr %arrayidx55, align 2
  %conv56 = zext i16 %74 to i32
  store i32 %conv56, ptr %hash_head, align 4
  %80 = load i32, ptr %n, align 4
  %conv57 = trunc i32 %80 to i16
  %81 = load ptr, ptr %s, align 8
  %head58 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 17
  %82 = load ptr, ptr %head58, align 8
  %83 = load ptr, ptr %s, align 8
  %ins_h59 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 18
  %84 = load i32, ptr %ins_h59, align 8
  %idxprom60 = zext i32 %84 to i64
  %arrayidx61 = getelementptr inbounds i16, ptr %82, i64 %idxprom60
  store i16 %conv57, ptr %arrayidx61, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %85 = load i32, ptr %n, align 4
  %inc = add i32 %85, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %86 = load i32, ptr %hash_head, align 4
  %tobool62 = icmp ne i32 %86, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %for.end
  store i32 0, ptr %hash_head, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.then19, %if.then
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

declare void @_tr_init(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @lm_init(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %w_size, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 2, %conv
  %2 = load ptr, ptr %s.addr, align 8
  %window_size = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 15
  store i64 %mul, ptr %window_size, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 17
  %4 = load ptr, ptr %head, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 19
  %6 = load i32, ptr %hash_size, align 4
  %sub = sub i32 %6, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  %7 = load ptr, ptr %s.addr, align 8
  %head1 = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 17
  %8 = load ptr, ptr %head1, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %hash_size2 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 19
  %10 = load i32, ptr %hash_size2, align 4
  %sub3 = sub i32 %10, 1
  %conv4 = zext i32 %sub3 to i64
  %mul5 = mul i64 %conv4, 2
  %11 = load ptr, ptr %s.addr, align 8
  %head6 = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 17
  %12 = load ptr, ptr %head6, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %8, i32 noundef 0, i64 noundef %mul5, i64 noundef %13) #4
  %14 = load ptr, ptr %s.addr, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 33
  %15 = load i32, ptr %level, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom7
  %max_lazy = getelementptr inbounds %struct.config_s, ptr %arrayidx8, i32 0, i32 1
  %16 = load i16, ptr %max_lazy, align 2
  %conv9 = zext i16 %16 to i32
  %17 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 32
  store i32 %conv9, ptr %max_lazy_match, align 8
  %18 = load ptr, ptr %s.addr, align 8
  %level10 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 33
  %19 = load i32, ptr %level10, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom11
  %good_length = getelementptr inbounds %struct.config_s, ptr %arrayidx12, i32 0, i32 0
  %20 = load i16, ptr %good_length, align 8
  %conv13 = zext i16 %20 to i32
  %21 = load ptr, ptr %s.addr, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 35
  store i32 %conv13, ptr %good_match, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %level14 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 33
  %23 = load i32, ptr %level14, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom15
  %nice_length = getelementptr inbounds %struct.config_s, ptr %arrayidx16, i32 0, i32 2
  %24 = load i16, ptr %nice_length, align 4
  %conv17 = zext i16 %24 to i32
  %25 = load ptr, ptr %s.addr, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 36
  store i32 %conv17, ptr %nice_match, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %level18 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 33
  %27 = load i32, ptr %level18, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom19
  %max_chain = getelementptr inbounds %struct.config_s, ptr %arrayidx20, i32 0, i32 3
  %28 = load i16, ptr %max_chain, align 2
  %conv21 = zext i16 %28 to i32
  %29 = load ptr, ptr %s.addr, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 31
  store i32 %conv21, ptr %max_chain_length, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 27
  store i32 0, ptr %strstart, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 23
  store i64 0, ptr %block_start, align 8
  %32 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 29
  store i32 0, ptr %lookahead, align 4
  %33 = load ptr, ptr %s.addr, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 30
  store i32 2, ptr %prev_length, align 8
  %34 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 24
  store i32 2, ptr %match_length, align 8
  %35 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 26
  store i32 0, ptr %match_available, align 8
  %36 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 18
  store i32 0, ptr %ins_h, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateSetHeader(ptr noundef %strm, ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %head, ptr %head.addr, align 8
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
  %wrap = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %wrap, align 4
  %cmp3 = icmp ne i32 %5, 2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %head.addr, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %state6, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 7
  store ptr %6, ptr %gzhead, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflatePrime(ptr noundef %strm, i32 noundef %bits, i32 noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  store i32 %value, ptr %value.addr, align 4
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
  %3 = load i32, ptr %bits.addr, align 4
  %4 = load ptr, ptr %strm.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %state2, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 57
  store i32 %3, ptr %bi_valid, align 4
  %6 = load i32, ptr %value.addr, align 4
  %7 = load i32, ptr %bits.addr, align 4
  %shl = shl i32 1, %7
  %sub = sub nsw i32 %shl, 1
  %and = and i32 %6, %sub
  %conv = trunc i32 %and to i16
  %8 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %state3, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 56
  store i16 %conv, ptr %bi_buf, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
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
  %cmp12 = icmp sgt i32 %9, 4
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %if.end5
  store i32 -2, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false11
  %10 = load ptr, ptr %s, align 8
  %level15 = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 33
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
  %level24 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 33
  %20 = load i32, ptr %level24, align 4
  %21 = load i32, ptr %level.addr, align 4
  %cmp25 = icmp ne i32 %20, %21
  br i1 %cmp25, label %if.then26, label %if.end39

if.then26:                                        ; preds = %if.end23
  %22 = load i32, ptr %level.addr, align 4
  %23 = load ptr, ptr %s, align 8
  %level27 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 33
  store i32 %22, ptr %level27, align 4
  %24 = load i32, ptr %level.addr, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom28
  %max_lazy = getelementptr inbounds %struct.config_s, ptr %arrayidx29, i32 0, i32 1
  %25 = load i16, ptr %max_lazy, align 2
  %conv = zext i16 %25 to i32
  %26 = load ptr, ptr %s, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 32
  store i32 %conv, ptr %max_lazy_match, align 8
  %27 = load i32, ptr %level.addr, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom30
  %good_length = getelementptr inbounds %struct.config_s, ptr %arrayidx31, i32 0, i32 0
  %28 = load i16, ptr %good_length, align 8
  %conv32 = zext i16 %28 to i32
  %29 = load ptr, ptr %s, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 35
  store i32 %conv32, ptr %good_match, align 4
  %30 = load i32, ptr %level.addr, align 4
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom33
  %nice_length = getelementptr inbounds %struct.config_s, ptr %arrayidx34, i32 0, i32 2
  %31 = load i16, ptr %nice_length, align 4
  %conv35 = zext i16 %31 to i32
  %32 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 36
  store i32 %conv35, ptr %nice_match, align 8
  %33 = load i32, ptr %level.addr, align 4
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom36
  %max_chain = getelementptr inbounds %struct.config_s, ptr %arrayidx37, i32 0, i32 3
  %34 = load i16, ptr %max_chain, align 2
  %conv38 = zext i16 %34 to i32
  %35 = load ptr, ptr %s, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 31
  store i32 %conv38, ptr %max_chain_length, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %if.end23
  %36 = load i32, ptr %strategy.addr, align 4
  %37 = load ptr, ptr %s, align 8
  %strategy40 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 34
  store i32 %36, ptr %strategy40, align 8
  %38 = load i32, ptr %err, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then13, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
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
  %level_flags = alloca i32, align 4
  %beg = alloca i32, align 4
  %beg354 = alloca i32, align 4
  %val = alloca i32, align 4
  %beg439 = alloca i32, align 4
  %val441 = alloca i32, align 4
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
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 10
  %25 = load i32, ptr %last_flush, align 8
  store i32 %25, ptr %old_flush, align 4
  %26 = load i32, ptr %flush.addr, align 4
  %27 = load ptr, ptr %s, align 8
  %last_flush22 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 10
  store i32 %26, ptr %last_flush22, align 8
  %28 = load ptr, ptr %s, align 8
  %status23 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %status23, align 8
  %cmp24 = icmp eq i32 %29, 42
  br i1 %cmp24, label %if.then25, label %if.end257

if.then25:                                        ; preds = %if.end20
  %30 = load ptr, ptr %s, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 6
  %31 = load i32, ptr %wrap, align 4
  %cmp26 = icmp eq i32 %31, 2
  br i1 %cmp26, label %if.then27, label %if.else209

if.then27:                                        ; preds = %if.then25
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %32 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 12
  store i64 %call, ptr %adler, align 8
  %33 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %pending_buf, align 8
  %35 = load ptr, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 5
  %36 = load i32, ptr %pending, align 8
  %inc = add i32 %36, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %36 to i64
  %arrayidx = getelementptr inbounds i8, ptr %34, i64 %idxprom
  store i8 31, ptr %arrayidx, align 1
  %37 = load ptr, ptr %s, align 8
  %pending_buf28 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %pending_buf28, align 8
  %39 = load ptr, ptr %s, align 8
  %pending29 = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 5
  %40 = load i32, ptr %pending29, align 8
  %inc30 = add i32 %40, 1
  store i32 %inc30, ptr %pending29, align 8
  %idxprom31 = zext i32 %40 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %38, i64 %idxprom31
  store i8 -117, ptr %arrayidx32, align 1
  %41 = load ptr, ptr %s, align 8
  %pending_buf33 = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %pending_buf33, align 8
  %43 = load ptr, ptr %s, align 8
  %pending34 = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 5
  %44 = load i32, ptr %pending34, align 8
  %inc35 = add i32 %44, 1
  store i32 %inc35, ptr %pending34, align 8
  %idxprom36 = zext i32 %44 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %42, i64 %idxprom36
  store i8 8, ptr %arrayidx37, align 1
  %45 = load ptr, ptr %s, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 7
  %46 = load ptr, ptr %gzhead, align 8
  %cmp38 = icmp eq ptr %46, null
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then27
  %47 = load ptr, ptr %s, align 8
  %pending_buf40 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %pending_buf40, align 8
  %49 = load ptr, ptr %s, align 8
  %pending41 = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %pending41, align 8
  %inc42 = add i32 %50, 1
  store i32 %inc42, ptr %pending41, align 8
  %idxprom43 = zext i32 %50 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %48, i64 %idxprom43
  store i8 0, ptr %arrayidx44, align 1
  %51 = load ptr, ptr %s, align 8
  %pending_buf45 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 2
  %52 = load ptr, ptr %pending_buf45, align 8
  %53 = load ptr, ptr %s, align 8
  %pending46 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 5
  %54 = load i32, ptr %pending46, align 8
  %inc47 = add i32 %54, 1
  store i32 %inc47, ptr %pending46, align 8
  %idxprom48 = zext i32 %54 to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %52, i64 %idxprom48
  store i8 0, ptr %arrayidx49, align 1
  %55 = load ptr, ptr %s, align 8
  %pending_buf50 = getelementptr inbounds %struct.internal_state, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %pending_buf50, align 8
  %57 = load ptr, ptr %s, align 8
  %pending51 = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 5
  %58 = load i32, ptr %pending51, align 8
  %inc52 = add i32 %58, 1
  store i32 %inc52, ptr %pending51, align 8
  %idxprom53 = zext i32 %58 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %56, i64 %idxprom53
  store i8 0, ptr %arrayidx54, align 1
  %59 = load ptr, ptr %s, align 8
  %pending_buf55 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %pending_buf55, align 8
  %61 = load ptr, ptr %s, align 8
  %pending56 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 5
  %62 = load i32, ptr %pending56, align 8
  %inc57 = add i32 %62, 1
  store i32 %inc57, ptr %pending56, align 8
  %idxprom58 = zext i32 %62 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %60, i64 %idxprom58
  store i8 0, ptr %arrayidx59, align 1
  %63 = load ptr, ptr %s, align 8
  %pending_buf60 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %pending_buf60, align 8
  %65 = load ptr, ptr %s, align 8
  %pending61 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 5
  %66 = load i32, ptr %pending61, align 8
  %inc62 = add i32 %66, 1
  store i32 %inc62, ptr %pending61, align 8
  %idxprom63 = zext i32 %66 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %64, i64 %idxprom63
  store i8 0, ptr %arrayidx64, align 1
  %67 = load ptr, ptr %s, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 33
  %68 = load i32, ptr %level, align 4
  %cmp65 = icmp eq i32 %68, 9
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then39
  br label %cond.end

cond.false:                                       ; preds = %if.then39
  %69 = load ptr, ptr %s, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 34
  %70 = load i32, ptr %strategy, align 8
  %cmp66 = icmp sge i32 %70, 2
  br i1 %cmp66, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false
  %71 = load ptr, ptr %s, align 8
  %level67 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 33
  %72 = load i32, ptr %level67, align 4
  %cmp68 = icmp slt i32 %72, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false
  %73 = phi i1 [ true, %cond.false ], [ %cmp68, %lor.rhs ]
  %74 = zext i1 %73 to i64
  %cond = select i1 %73, i32 4, i32 0
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true
  %cond69 = phi i32 [ 2, %cond.true ], [ %cond, %lor.end ]
  %conv = trunc i32 %cond69 to i8
  %75 = load ptr, ptr %s, align 8
  %pending_buf70 = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %pending_buf70, align 8
  %77 = load ptr, ptr %s, align 8
  %pending71 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 5
  %78 = load i32, ptr %pending71, align 8
  %inc72 = add i32 %78, 1
  store i32 %inc72, ptr %pending71, align 8
  %idxprom73 = zext i32 %78 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %76, i64 %idxprom73
  store i8 %conv, ptr %arrayidx74, align 1
  %79 = load ptr, ptr %s, align 8
  %pending_buf75 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 2
  %80 = load ptr, ptr %pending_buf75, align 8
  %81 = load ptr, ptr %s, align 8
  %pending76 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 5
  %82 = load i32, ptr %pending76, align 8
  %inc77 = add i32 %82, 1
  store i32 %inc77, ptr %pending76, align 8
  %idxprom78 = zext i32 %82 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %80, i64 %idxprom78
  store i8 3, ptr %arrayidx79, align 1
  %83 = load ptr, ptr %s, align 8
  %status80 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 1
  store i32 113, ptr %status80, align 8
  br label %if.end208

if.else:                                          ; preds = %if.then27
  %84 = load ptr, ptr %s, align 8
  %gzhead81 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 7
  %85 = load ptr, ptr %gzhead81, align 8
  %text = getelementptr inbounds %struct.gz_header_s, ptr %85, i32 0, i32 0
  %86 = load i32, ptr %text, align 8
  %tobool = icmp ne i32 %86, 0
  %87 = zext i1 %tobool to i64
  %cond82 = select i1 %tobool, i32 1, i32 0
  %88 = load ptr, ptr %s, align 8
  %gzhead83 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 7
  %89 = load ptr, ptr %gzhead83, align 8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %89, i32 0, i32 11
  %90 = load i32, ptr %hcrc, align 4
  %tobool84 = icmp ne i32 %90, 0
  %91 = zext i1 %tobool84 to i64
  %cond85 = select i1 %tobool84, i32 2, i32 0
  %add = add nsw i32 %cond82, %cond85
  %92 = load ptr, ptr %s, align 8
  %gzhead86 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 7
  %93 = load ptr, ptr %gzhead86, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %93, i32 0, i32 4
  %94 = load ptr, ptr %extra, align 8
  %cmp87 = icmp eq ptr %94, null
  %95 = zext i1 %cmp87 to i64
  %cond89 = select i1 %cmp87, i32 0, i32 4
  %add90 = add nsw i32 %add, %cond89
  %96 = load ptr, ptr %s, align 8
  %gzhead91 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 7
  %97 = load ptr, ptr %gzhead91, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %97, i32 0, i32 7
  %98 = load ptr, ptr %name, align 8
  %cmp92 = icmp eq ptr %98, null
  %99 = zext i1 %cmp92 to i64
  %cond94 = select i1 %cmp92, i32 0, i32 8
  %add95 = add nsw i32 %add90, %cond94
  %100 = load ptr, ptr %s, align 8
  %gzhead96 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 7
  %101 = load ptr, ptr %gzhead96, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %101, i32 0, i32 9
  %102 = load ptr, ptr %comment, align 8
  %cmp97 = icmp eq ptr %102, null
  %103 = zext i1 %cmp97 to i64
  %cond99 = select i1 %cmp97, i32 0, i32 16
  %add100 = add nsw i32 %add95, %cond99
  %conv101 = trunc i32 %add100 to i8
  %104 = load ptr, ptr %s, align 8
  %pending_buf102 = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 2
  %105 = load ptr, ptr %pending_buf102, align 8
  %106 = load ptr, ptr %s, align 8
  %pending103 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 5
  %107 = load i32, ptr %pending103, align 8
  %inc104 = add i32 %107, 1
  store i32 %inc104, ptr %pending103, align 8
  %idxprom105 = zext i32 %107 to i64
  %arrayidx106 = getelementptr inbounds i8, ptr %105, i64 %idxprom105
  store i8 %conv101, ptr %arrayidx106, align 1
  %108 = load ptr, ptr %s, align 8
  %gzhead107 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 7
  %109 = load ptr, ptr %gzhead107, align 8
  %time = getelementptr inbounds %struct.gz_header_s, ptr %109, i32 0, i32 1
  %110 = load i64, ptr %time, align 8
  %and = and i64 %110, 255
  %conv108 = trunc i64 %and to i8
  %111 = load ptr, ptr %s, align 8
  %pending_buf109 = getelementptr inbounds %struct.internal_state, ptr %111, i32 0, i32 2
  %112 = load ptr, ptr %pending_buf109, align 8
  %113 = load ptr, ptr %s, align 8
  %pending110 = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 5
  %114 = load i32, ptr %pending110, align 8
  %inc111 = add i32 %114, 1
  store i32 %inc111, ptr %pending110, align 8
  %idxprom112 = zext i32 %114 to i64
  %arrayidx113 = getelementptr inbounds i8, ptr %112, i64 %idxprom112
  store i8 %conv108, ptr %arrayidx113, align 1
  %115 = load ptr, ptr %s, align 8
  %gzhead114 = getelementptr inbounds %struct.internal_state, ptr %115, i32 0, i32 7
  %116 = load ptr, ptr %gzhead114, align 8
  %time115 = getelementptr inbounds %struct.gz_header_s, ptr %116, i32 0, i32 1
  %117 = load i64, ptr %time115, align 8
  %shr = lshr i64 %117, 8
  %and116 = and i64 %shr, 255
  %conv117 = trunc i64 %and116 to i8
  %118 = load ptr, ptr %s, align 8
  %pending_buf118 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 2
  %119 = load ptr, ptr %pending_buf118, align 8
  %120 = load ptr, ptr %s, align 8
  %pending119 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 5
  %121 = load i32, ptr %pending119, align 8
  %inc120 = add i32 %121, 1
  store i32 %inc120, ptr %pending119, align 8
  %idxprom121 = zext i32 %121 to i64
  %arrayidx122 = getelementptr inbounds i8, ptr %119, i64 %idxprom121
  store i8 %conv117, ptr %arrayidx122, align 1
  %122 = load ptr, ptr %s, align 8
  %gzhead123 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 7
  %123 = load ptr, ptr %gzhead123, align 8
  %time124 = getelementptr inbounds %struct.gz_header_s, ptr %123, i32 0, i32 1
  %124 = load i64, ptr %time124, align 8
  %shr125 = lshr i64 %124, 16
  %and126 = and i64 %shr125, 255
  %conv127 = trunc i64 %and126 to i8
  %125 = load ptr, ptr %s, align 8
  %pending_buf128 = getelementptr inbounds %struct.internal_state, ptr %125, i32 0, i32 2
  %126 = load ptr, ptr %pending_buf128, align 8
  %127 = load ptr, ptr %s, align 8
  %pending129 = getelementptr inbounds %struct.internal_state, ptr %127, i32 0, i32 5
  %128 = load i32, ptr %pending129, align 8
  %inc130 = add i32 %128, 1
  store i32 %inc130, ptr %pending129, align 8
  %idxprom131 = zext i32 %128 to i64
  %arrayidx132 = getelementptr inbounds i8, ptr %126, i64 %idxprom131
  store i8 %conv127, ptr %arrayidx132, align 1
  %129 = load ptr, ptr %s, align 8
  %gzhead133 = getelementptr inbounds %struct.internal_state, ptr %129, i32 0, i32 7
  %130 = load ptr, ptr %gzhead133, align 8
  %time134 = getelementptr inbounds %struct.gz_header_s, ptr %130, i32 0, i32 1
  %131 = load i64, ptr %time134, align 8
  %shr135 = lshr i64 %131, 24
  %and136 = and i64 %shr135, 255
  %conv137 = trunc i64 %and136 to i8
  %132 = load ptr, ptr %s, align 8
  %pending_buf138 = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 2
  %133 = load ptr, ptr %pending_buf138, align 8
  %134 = load ptr, ptr %s, align 8
  %pending139 = getelementptr inbounds %struct.internal_state, ptr %134, i32 0, i32 5
  %135 = load i32, ptr %pending139, align 8
  %inc140 = add i32 %135, 1
  store i32 %inc140, ptr %pending139, align 8
  %idxprom141 = zext i32 %135 to i64
  %arrayidx142 = getelementptr inbounds i8, ptr %133, i64 %idxprom141
  store i8 %conv137, ptr %arrayidx142, align 1
  %136 = load ptr, ptr %s, align 8
  %level143 = getelementptr inbounds %struct.internal_state, ptr %136, i32 0, i32 33
  %137 = load i32, ptr %level143, align 4
  %cmp144 = icmp eq i32 %137, 9
  br i1 %cmp144, label %cond.true146, label %cond.false147

cond.true146:                                     ; preds = %if.else
  br label %cond.end157

cond.false147:                                    ; preds = %if.else
  %138 = load ptr, ptr %s, align 8
  %strategy148 = getelementptr inbounds %struct.internal_state, ptr %138, i32 0, i32 34
  %139 = load i32, ptr %strategy148, align 8
  %cmp149 = icmp sge i32 %139, 2
  br i1 %cmp149, label %lor.end155, label %lor.rhs151

lor.rhs151:                                       ; preds = %cond.false147
  %140 = load ptr, ptr %s, align 8
  %level152 = getelementptr inbounds %struct.internal_state, ptr %140, i32 0, i32 33
  %141 = load i32, ptr %level152, align 4
  %cmp153 = icmp slt i32 %141, 2
  br label %lor.end155

lor.end155:                                       ; preds = %lor.rhs151, %cond.false147
  %142 = phi i1 [ true, %cond.false147 ], [ %cmp153, %lor.rhs151 ]
  %143 = zext i1 %142 to i64
  %cond156 = select i1 %142, i32 4, i32 0
  br label %cond.end157

cond.end157:                                      ; preds = %lor.end155, %cond.true146
  %cond158 = phi i32 [ 2, %cond.true146 ], [ %cond156, %lor.end155 ]
  %conv159 = trunc i32 %cond158 to i8
  %144 = load ptr, ptr %s, align 8
  %pending_buf160 = getelementptr inbounds %struct.internal_state, ptr %144, i32 0, i32 2
  %145 = load ptr, ptr %pending_buf160, align 8
  %146 = load ptr, ptr %s, align 8
  %pending161 = getelementptr inbounds %struct.internal_state, ptr %146, i32 0, i32 5
  %147 = load i32, ptr %pending161, align 8
  %inc162 = add i32 %147, 1
  store i32 %inc162, ptr %pending161, align 8
  %idxprom163 = zext i32 %147 to i64
  %arrayidx164 = getelementptr inbounds i8, ptr %145, i64 %idxprom163
  store i8 %conv159, ptr %arrayidx164, align 1
  %148 = load ptr, ptr %s, align 8
  %gzhead165 = getelementptr inbounds %struct.internal_state, ptr %148, i32 0, i32 7
  %149 = load ptr, ptr %gzhead165, align 8
  %os = getelementptr inbounds %struct.gz_header_s, ptr %149, i32 0, i32 3
  %150 = load i32, ptr %os, align 4
  %and166 = and i32 %150, 255
  %conv167 = trunc i32 %and166 to i8
  %151 = load ptr, ptr %s, align 8
  %pending_buf168 = getelementptr inbounds %struct.internal_state, ptr %151, i32 0, i32 2
  %152 = load ptr, ptr %pending_buf168, align 8
  %153 = load ptr, ptr %s, align 8
  %pending169 = getelementptr inbounds %struct.internal_state, ptr %153, i32 0, i32 5
  %154 = load i32, ptr %pending169, align 8
  %inc170 = add i32 %154, 1
  store i32 %inc170, ptr %pending169, align 8
  %idxprom171 = zext i32 %154 to i64
  %arrayidx172 = getelementptr inbounds i8, ptr %152, i64 %idxprom171
  store i8 %conv167, ptr %arrayidx172, align 1
  %155 = load ptr, ptr %s, align 8
  %gzhead173 = getelementptr inbounds %struct.internal_state, ptr %155, i32 0, i32 7
  %156 = load ptr, ptr %gzhead173, align 8
  %extra174 = getelementptr inbounds %struct.gz_header_s, ptr %156, i32 0, i32 4
  %157 = load ptr, ptr %extra174, align 8
  %cmp175 = icmp ne ptr %157, null
  br i1 %cmp175, label %if.then177, label %if.end196

if.then177:                                       ; preds = %cond.end157
  %158 = load ptr, ptr %s, align 8
  %gzhead178 = getelementptr inbounds %struct.internal_state, ptr %158, i32 0, i32 7
  %159 = load ptr, ptr %gzhead178, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %159, i32 0, i32 5
  %160 = load i32, ptr %extra_len, align 8
  %and179 = and i32 %160, 255
  %conv180 = trunc i32 %and179 to i8
  %161 = load ptr, ptr %s, align 8
  %pending_buf181 = getelementptr inbounds %struct.internal_state, ptr %161, i32 0, i32 2
  %162 = load ptr, ptr %pending_buf181, align 8
  %163 = load ptr, ptr %s, align 8
  %pending182 = getelementptr inbounds %struct.internal_state, ptr %163, i32 0, i32 5
  %164 = load i32, ptr %pending182, align 8
  %inc183 = add i32 %164, 1
  store i32 %inc183, ptr %pending182, align 8
  %idxprom184 = zext i32 %164 to i64
  %arrayidx185 = getelementptr inbounds i8, ptr %162, i64 %idxprom184
  store i8 %conv180, ptr %arrayidx185, align 1
  %165 = load ptr, ptr %s, align 8
  %gzhead186 = getelementptr inbounds %struct.internal_state, ptr %165, i32 0, i32 7
  %166 = load ptr, ptr %gzhead186, align 8
  %extra_len187 = getelementptr inbounds %struct.gz_header_s, ptr %166, i32 0, i32 5
  %167 = load i32, ptr %extra_len187, align 8
  %shr188 = lshr i32 %167, 8
  %and189 = and i32 %shr188, 255
  %conv190 = trunc i32 %and189 to i8
  %168 = load ptr, ptr %s, align 8
  %pending_buf191 = getelementptr inbounds %struct.internal_state, ptr %168, i32 0, i32 2
  %169 = load ptr, ptr %pending_buf191, align 8
  %170 = load ptr, ptr %s, align 8
  %pending192 = getelementptr inbounds %struct.internal_state, ptr %170, i32 0, i32 5
  %171 = load i32, ptr %pending192, align 8
  %inc193 = add i32 %171, 1
  store i32 %inc193, ptr %pending192, align 8
  %idxprom194 = zext i32 %171 to i64
  %arrayidx195 = getelementptr inbounds i8, ptr %169, i64 %idxprom194
  store i8 %conv190, ptr %arrayidx195, align 1
  br label %if.end196

if.end196:                                        ; preds = %if.then177, %cond.end157
  %172 = load ptr, ptr %s, align 8
  %gzhead197 = getelementptr inbounds %struct.internal_state, ptr %172, i32 0, i32 7
  %173 = load ptr, ptr %gzhead197, align 8
  %hcrc198 = getelementptr inbounds %struct.gz_header_s, ptr %173, i32 0, i32 11
  %174 = load i32, ptr %hcrc198, align 4
  %tobool199 = icmp ne i32 %174, 0
  br i1 %tobool199, label %if.then200, label %if.end206

if.then200:                                       ; preds = %if.end196
  %175 = load ptr, ptr %strm.addr, align 8
  %adler201 = getelementptr inbounds %struct.z_stream_s, ptr %175, i32 0, i32 12
  %176 = load i64, ptr %adler201, align 8
  %177 = load ptr, ptr %s, align 8
  %pending_buf202 = getelementptr inbounds %struct.internal_state, ptr %177, i32 0, i32 2
  %178 = load ptr, ptr %pending_buf202, align 8
  %179 = load ptr, ptr %s, align 8
  %pending203 = getelementptr inbounds %struct.internal_state, ptr %179, i32 0, i32 5
  %180 = load i32, ptr %pending203, align 8
  %call204 = call i64 @crc32(i64 noundef %176, ptr noundef %178, i32 noundef %180)
  %181 = load ptr, ptr %strm.addr, align 8
  %adler205 = getelementptr inbounds %struct.z_stream_s, ptr %181, i32 0, i32 12
  store i64 %call204, ptr %adler205, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.then200, %if.end196
  %182 = load ptr, ptr %s, align 8
  %gzindex = getelementptr inbounds %struct.internal_state, ptr %182, i32 0, i32 8
  store i32 0, ptr %gzindex, align 8
  %183 = load ptr, ptr %s, align 8
  %status207 = getelementptr inbounds %struct.internal_state, ptr %183, i32 0, i32 1
  store i32 69, ptr %status207, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.end206, %cond.end
  br label %if.end256

if.else209:                                       ; preds = %if.then25
  %184 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %184, i32 0, i32 12
  %185 = load i32, ptr %w_bits, align 8
  %sub = sub i32 %185, 8
  %shl = shl i32 %sub, 4
  %add210 = add i32 8, %shl
  %shl211 = shl i32 %add210, 8
  store i32 %shl211, ptr %header, align 4
  %186 = load ptr, ptr %s, align 8
  %strategy212 = getelementptr inbounds %struct.internal_state, ptr %186, i32 0, i32 34
  %187 = load i32, ptr %strategy212, align 8
  %cmp213 = icmp sge i32 %187, 2
  br i1 %cmp213, label %if.then219, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %if.else209
  %188 = load ptr, ptr %s, align 8
  %level216 = getelementptr inbounds %struct.internal_state, ptr %188, i32 0, i32 33
  %189 = load i32, ptr %level216, align 4
  %cmp217 = icmp slt i32 %189, 2
  br i1 %cmp217, label %if.then219, label %if.else220

if.then219:                                       ; preds = %lor.lhs.false215, %if.else209
  store i32 0, ptr %level_flags, align 4
  br label %if.end233

if.else220:                                       ; preds = %lor.lhs.false215
  %190 = load ptr, ptr %s, align 8
  %level221 = getelementptr inbounds %struct.internal_state, ptr %190, i32 0, i32 33
  %191 = load i32, ptr %level221, align 4
  %cmp222 = icmp slt i32 %191, 6
  br i1 %cmp222, label %if.then224, label %if.else225

if.then224:                                       ; preds = %if.else220
  store i32 1, ptr %level_flags, align 4
  br label %if.end232

if.else225:                                       ; preds = %if.else220
  %192 = load ptr, ptr %s, align 8
  %level226 = getelementptr inbounds %struct.internal_state, ptr %192, i32 0, i32 33
  %193 = load i32, ptr %level226, align 4
  %cmp227 = icmp eq i32 %193, 6
  br i1 %cmp227, label %if.then229, label %if.else230

if.then229:                                       ; preds = %if.else225
  store i32 2, ptr %level_flags, align 4
  br label %if.end231

if.else230:                                       ; preds = %if.else225
  store i32 3, ptr %level_flags, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.else230, %if.then229
  br label %if.end232

if.end232:                                        ; preds = %if.end231, %if.then224
  br label %if.end233

if.end233:                                        ; preds = %if.end232, %if.then219
  %194 = load i32, ptr %level_flags, align 4
  %shl234 = shl i32 %194, 6
  %195 = load i32, ptr %header, align 4
  %or = or i32 %195, %shl234
  store i32 %or, ptr %header, align 4
  %196 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %196, i32 0, i32 27
  %197 = load i32, ptr %strstart, align 4
  %cmp235 = icmp ne i32 %197, 0
  br i1 %cmp235, label %if.then237, label %if.end239

if.then237:                                       ; preds = %if.end233
  %198 = load i32, ptr %header, align 4
  %or238 = or i32 %198, 32
  store i32 %or238, ptr %header, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %if.end233
  %199 = load i32, ptr %header, align 4
  %rem = urem i32 %199, 31
  %sub240 = sub i32 31, %rem
  %200 = load i32, ptr %header, align 4
  %add241 = add i32 %200, %sub240
  store i32 %add241, ptr %header, align 4
  %201 = load ptr, ptr %s, align 8
  %status242 = getelementptr inbounds %struct.internal_state, ptr %201, i32 0, i32 1
  store i32 113, ptr %status242, align 8
  %202 = load ptr, ptr %s, align 8
  %203 = load i32, ptr %header, align 4
  call void @putShortMSB(ptr noundef %202, i32 noundef %203)
  %204 = load ptr, ptr %s, align 8
  %strstart243 = getelementptr inbounds %struct.internal_state, ptr %204, i32 0, i32 27
  %205 = load i32, ptr %strstart243, align 4
  %cmp244 = icmp ne i32 %205, 0
  br i1 %cmp244, label %if.then246, label %if.end253

if.then246:                                       ; preds = %if.end239
  %206 = load ptr, ptr %s, align 8
  %207 = load ptr, ptr %strm.addr, align 8
  %adler247 = getelementptr inbounds %struct.z_stream_s, ptr %207, i32 0, i32 12
  %208 = load i64, ptr %adler247, align 8
  %shr248 = lshr i64 %208, 16
  %conv249 = trunc i64 %shr248 to i32
  call void @putShortMSB(ptr noundef %206, i32 noundef %conv249)
  %209 = load ptr, ptr %s, align 8
  %210 = load ptr, ptr %strm.addr, align 8
  %adler250 = getelementptr inbounds %struct.z_stream_s, ptr %210, i32 0, i32 12
  %211 = load i64, ptr %adler250, align 8
  %and251 = and i64 %211, 65535
  %conv252 = trunc i64 %and251 to i32
  call void @putShortMSB(ptr noundef %209, i32 noundef %conv252)
  br label %if.end253

if.end253:                                        ; preds = %if.then246, %if.end239
  %call254 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %212 = load ptr, ptr %strm.addr, align 8
  %adler255 = getelementptr inbounds %struct.z_stream_s, ptr %212, i32 0, i32 12
  store i64 %call254, ptr %adler255, align 8
  br label %if.end256

if.end256:                                        ; preds = %if.end253, %if.end208
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %if.end20
  %213 = load ptr, ptr %s, align 8
  %status258 = getelementptr inbounds %struct.internal_state, ptr %213, i32 0, i32 1
  %214 = load i32, ptr %status258, align 8
  %cmp259 = icmp eq i32 %214, 69
  br i1 %cmp259, label %if.then261, label %if.end344

if.then261:                                       ; preds = %if.end257
  %215 = load ptr, ptr %s, align 8
  %gzhead262 = getelementptr inbounds %struct.internal_state, ptr %215, i32 0, i32 7
  %216 = load ptr, ptr %gzhead262, align 8
  %extra263 = getelementptr inbounds %struct.gz_header_s, ptr %216, i32 0, i32 4
  %217 = load ptr, ptr %extra263, align 8
  %cmp264 = icmp ne ptr %217, null
  br i1 %cmp264, label %if.then266, label %if.else341

if.then266:                                       ; preds = %if.then261
  %218 = load ptr, ptr %s, align 8
  %pending267 = getelementptr inbounds %struct.internal_state, ptr %218, i32 0, i32 5
  %219 = load i32, ptr %pending267, align 8
  store i32 %219, ptr %beg, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end302, %if.then266
  %220 = load ptr, ptr %s, align 8
  %gzindex268 = getelementptr inbounds %struct.internal_state, ptr %220, i32 0, i32 8
  %221 = load i32, ptr %gzindex268, align 8
  %222 = load ptr, ptr %s, align 8
  %gzhead269 = getelementptr inbounds %struct.internal_state, ptr %222, i32 0, i32 7
  %223 = load ptr, ptr %gzhead269, align 8
  %extra_len270 = getelementptr inbounds %struct.gz_header_s, ptr %223, i32 0, i32 5
  %224 = load i32, ptr %extra_len270, align 8
  %and271 = and i32 %224, 65535
  %cmp272 = icmp ult i32 %221, %and271
  br i1 %cmp272, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %225 = load ptr, ptr %s, align 8
  %pending274 = getelementptr inbounds %struct.internal_state, ptr %225, i32 0, i32 5
  %226 = load i32, ptr %pending274, align 8
  %conv275 = zext i32 %226 to i64
  %227 = load ptr, ptr %s, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %227, i32 0, i32 3
  %228 = load i64, ptr %pending_buf_size, align 8
  %cmp276 = icmp eq i64 %conv275, %228
  br i1 %cmp276, label %if.then278, label %if.end302

if.then278:                                       ; preds = %while.body
  %229 = load ptr, ptr %s, align 8
  %gzhead279 = getelementptr inbounds %struct.internal_state, ptr %229, i32 0, i32 7
  %230 = load ptr, ptr %gzhead279, align 8
  %hcrc280 = getelementptr inbounds %struct.gz_header_s, ptr %230, i32 0, i32 11
  %231 = load i32, ptr %hcrc280, align 4
  %tobool281 = icmp ne i32 %231, 0
  br i1 %tobool281, label %land.lhs.true282, label %if.end293

land.lhs.true282:                                 ; preds = %if.then278
  %232 = load ptr, ptr %s, align 8
  %pending283 = getelementptr inbounds %struct.internal_state, ptr %232, i32 0, i32 5
  %233 = load i32, ptr %pending283, align 8
  %234 = load i32, ptr %beg, align 4
  %cmp284 = icmp ugt i32 %233, %234
  br i1 %cmp284, label %if.then286, label %if.end293

if.then286:                                       ; preds = %land.lhs.true282
  %235 = load ptr, ptr %strm.addr, align 8
  %adler287 = getelementptr inbounds %struct.z_stream_s, ptr %235, i32 0, i32 12
  %236 = load i64, ptr %adler287, align 8
  %237 = load ptr, ptr %s, align 8
  %pending_buf288 = getelementptr inbounds %struct.internal_state, ptr %237, i32 0, i32 2
  %238 = load ptr, ptr %pending_buf288, align 8
  %239 = load i32, ptr %beg, align 4
  %idx.ext = zext i32 %239 to i64
  %add.ptr = getelementptr inbounds i8, ptr %238, i64 %idx.ext
  %240 = load ptr, ptr %s, align 8
  %pending289 = getelementptr inbounds %struct.internal_state, ptr %240, i32 0, i32 5
  %241 = load i32, ptr %pending289, align 8
  %242 = load i32, ptr %beg, align 4
  %sub290 = sub i32 %241, %242
  %call291 = call i64 @crc32(i64 noundef %236, ptr noundef %add.ptr, i32 noundef %sub290)
  %243 = load ptr, ptr %strm.addr, align 8
  %adler292 = getelementptr inbounds %struct.z_stream_s, ptr %243, i32 0, i32 12
  store i64 %call291, ptr %adler292, align 8
  br label %if.end293

if.end293:                                        ; preds = %if.then286, %land.lhs.true282, %if.then278
  %244 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %244)
  %245 = load ptr, ptr %s, align 8
  %pending294 = getelementptr inbounds %struct.internal_state, ptr %245, i32 0, i32 5
  %246 = load i32, ptr %pending294, align 8
  store i32 %246, ptr %beg, align 4
  %247 = load ptr, ptr %s, align 8
  %pending295 = getelementptr inbounds %struct.internal_state, ptr %247, i32 0, i32 5
  %248 = load i32, ptr %pending295, align 8
  %conv296 = zext i32 %248 to i64
  %249 = load ptr, ptr %s, align 8
  %pending_buf_size297 = getelementptr inbounds %struct.internal_state, ptr %249, i32 0, i32 3
  %250 = load i64, ptr %pending_buf_size297, align 8
  %cmp298 = icmp eq i64 %conv296, %250
  br i1 %cmp298, label %if.then300, label %if.end301

if.then300:                                       ; preds = %if.end293
  br label %while.end

if.end301:                                        ; preds = %if.end293
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %while.body
  %251 = load ptr, ptr %s, align 8
  %gzhead303 = getelementptr inbounds %struct.internal_state, ptr %251, i32 0, i32 7
  %252 = load ptr, ptr %gzhead303, align 8
  %extra304 = getelementptr inbounds %struct.gz_header_s, ptr %252, i32 0, i32 4
  %253 = load ptr, ptr %extra304, align 8
  %254 = load ptr, ptr %s, align 8
  %gzindex305 = getelementptr inbounds %struct.internal_state, ptr %254, i32 0, i32 8
  %255 = load i32, ptr %gzindex305, align 8
  %idxprom306 = zext i32 %255 to i64
  %arrayidx307 = getelementptr inbounds i8, ptr %253, i64 %idxprom306
  %256 = load i8, ptr %arrayidx307, align 1
  %257 = load ptr, ptr %s, align 8
  %pending_buf308 = getelementptr inbounds %struct.internal_state, ptr %257, i32 0, i32 2
  %258 = load ptr, ptr %pending_buf308, align 8
  %259 = load ptr, ptr %s, align 8
  %pending309 = getelementptr inbounds %struct.internal_state, ptr %259, i32 0, i32 5
  %260 = load i32, ptr %pending309, align 8
  %inc310 = add i32 %260, 1
  store i32 %inc310, ptr %pending309, align 8
  %idxprom311 = zext i32 %260 to i64
  %arrayidx312 = getelementptr inbounds i8, ptr %258, i64 %idxprom311
  store i8 %256, ptr %arrayidx312, align 1
  %261 = load ptr, ptr %s, align 8
  %gzindex313 = getelementptr inbounds %struct.internal_state, ptr %261, i32 0, i32 8
  %262 = load i32, ptr %gzindex313, align 8
  %inc314 = add i32 %262, 1
  store i32 %inc314, ptr %gzindex313, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then300, %while.cond
  %263 = load ptr, ptr %s, align 8
  %gzhead315 = getelementptr inbounds %struct.internal_state, ptr %263, i32 0, i32 7
  %264 = load ptr, ptr %gzhead315, align 8
  %hcrc316 = getelementptr inbounds %struct.gz_header_s, ptr %264, i32 0, i32 11
  %265 = load i32, ptr %hcrc316, align 4
  %tobool317 = icmp ne i32 %265, 0
  br i1 %tobool317, label %land.lhs.true318, label %if.end331

land.lhs.true318:                                 ; preds = %while.end
  %266 = load ptr, ptr %s, align 8
  %pending319 = getelementptr inbounds %struct.internal_state, ptr %266, i32 0, i32 5
  %267 = load i32, ptr %pending319, align 8
  %268 = load i32, ptr %beg, align 4
  %cmp320 = icmp ugt i32 %267, %268
  br i1 %cmp320, label %if.then322, label %if.end331

if.then322:                                       ; preds = %land.lhs.true318
  %269 = load ptr, ptr %strm.addr, align 8
  %adler323 = getelementptr inbounds %struct.z_stream_s, ptr %269, i32 0, i32 12
  %270 = load i64, ptr %adler323, align 8
  %271 = load ptr, ptr %s, align 8
  %pending_buf324 = getelementptr inbounds %struct.internal_state, ptr %271, i32 0, i32 2
  %272 = load ptr, ptr %pending_buf324, align 8
  %273 = load i32, ptr %beg, align 4
  %idx.ext325 = zext i32 %273 to i64
  %add.ptr326 = getelementptr inbounds i8, ptr %272, i64 %idx.ext325
  %274 = load ptr, ptr %s, align 8
  %pending327 = getelementptr inbounds %struct.internal_state, ptr %274, i32 0, i32 5
  %275 = load i32, ptr %pending327, align 8
  %276 = load i32, ptr %beg, align 4
  %sub328 = sub i32 %275, %276
  %call329 = call i64 @crc32(i64 noundef %270, ptr noundef %add.ptr326, i32 noundef %sub328)
  %277 = load ptr, ptr %strm.addr, align 8
  %adler330 = getelementptr inbounds %struct.z_stream_s, ptr %277, i32 0, i32 12
  store i64 %call329, ptr %adler330, align 8
  br label %if.end331

if.end331:                                        ; preds = %if.then322, %land.lhs.true318, %while.end
  %278 = load ptr, ptr %s, align 8
  %gzindex332 = getelementptr inbounds %struct.internal_state, ptr %278, i32 0, i32 8
  %279 = load i32, ptr %gzindex332, align 8
  %280 = load ptr, ptr %s, align 8
  %gzhead333 = getelementptr inbounds %struct.internal_state, ptr %280, i32 0, i32 7
  %281 = load ptr, ptr %gzhead333, align 8
  %extra_len334 = getelementptr inbounds %struct.gz_header_s, ptr %281, i32 0, i32 5
  %282 = load i32, ptr %extra_len334, align 8
  %cmp335 = icmp eq i32 %279, %282
  br i1 %cmp335, label %if.then337, label %if.end340

if.then337:                                       ; preds = %if.end331
  %283 = load ptr, ptr %s, align 8
  %gzindex338 = getelementptr inbounds %struct.internal_state, ptr %283, i32 0, i32 8
  store i32 0, ptr %gzindex338, align 8
  %284 = load ptr, ptr %s, align 8
  %status339 = getelementptr inbounds %struct.internal_state, ptr %284, i32 0, i32 1
  store i32 73, ptr %status339, align 8
  br label %if.end340

if.end340:                                        ; preds = %if.then337, %if.end331
  br label %if.end343

if.else341:                                       ; preds = %if.then261
  %285 = load ptr, ptr %s, align 8
  %status342 = getelementptr inbounds %struct.internal_state, ptr %285, i32 0, i32 1
  store i32 73, ptr %status342, align 8
  br label %if.end343

if.end343:                                        ; preds = %if.else341, %if.end340
  br label %if.end344

if.end344:                                        ; preds = %if.end343, %if.end257
  %286 = load ptr, ptr %s, align 8
  %status345 = getelementptr inbounds %struct.internal_state, ptr %286, i32 0, i32 1
  %287 = load i32, ptr %status345, align 8
  %cmp346 = icmp eq i32 %287, 73
  br i1 %cmp346, label %if.then348, label %if.end429

if.then348:                                       ; preds = %if.end344
  %288 = load ptr, ptr %s, align 8
  %gzhead349 = getelementptr inbounds %struct.internal_state, ptr %288, i32 0, i32 7
  %289 = load ptr, ptr %gzhead349, align 8
  %name350 = getelementptr inbounds %struct.gz_header_s, ptr %289, i32 0, i32 7
  %290 = load ptr, ptr %name350, align 8
  %cmp351 = icmp ne ptr %290, null
  br i1 %cmp351, label %if.then353, label %if.else426

if.then353:                                       ; preds = %if.then348
  %291 = load ptr, ptr %s, align 8
  %pending355 = getelementptr inbounds %struct.internal_state, ptr %291, i32 0, i32 5
  %292 = load i32, ptr %pending355, align 8
  store i32 %292, ptr %beg354, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then353
  %293 = load ptr, ptr %s, align 8
  %pending356 = getelementptr inbounds %struct.internal_state, ptr %293, i32 0, i32 5
  %294 = load i32, ptr %pending356, align 8
  %conv357 = zext i32 %294 to i64
  %295 = load ptr, ptr %s, align 8
  %pending_buf_size358 = getelementptr inbounds %struct.internal_state, ptr %295, i32 0, i32 3
  %296 = load i64, ptr %pending_buf_size358, align 8
  %cmp359 = icmp eq i64 %conv357, %296
  br i1 %cmp359, label %if.then361, label %if.end387

if.then361:                                       ; preds = %do.body
  %297 = load ptr, ptr %s, align 8
  %gzhead362 = getelementptr inbounds %struct.internal_state, ptr %297, i32 0, i32 7
  %298 = load ptr, ptr %gzhead362, align 8
  %hcrc363 = getelementptr inbounds %struct.gz_header_s, ptr %298, i32 0, i32 11
  %299 = load i32, ptr %hcrc363, align 4
  %tobool364 = icmp ne i32 %299, 0
  br i1 %tobool364, label %land.lhs.true365, label %if.end378

land.lhs.true365:                                 ; preds = %if.then361
  %300 = load ptr, ptr %s, align 8
  %pending366 = getelementptr inbounds %struct.internal_state, ptr %300, i32 0, i32 5
  %301 = load i32, ptr %pending366, align 8
  %302 = load i32, ptr %beg354, align 4
  %cmp367 = icmp ugt i32 %301, %302
  br i1 %cmp367, label %if.then369, label %if.end378

if.then369:                                       ; preds = %land.lhs.true365
  %303 = load ptr, ptr %strm.addr, align 8
  %adler370 = getelementptr inbounds %struct.z_stream_s, ptr %303, i32 0, i32 12
  %304 = load i64, ptr %adler370, align 8
  %305 = load ptr, ptr %s, align 8
  %pending_buf371 = getelementptr inbounds %struct.internal_state, ptr %305, i32 0, i32 2
  %306 = load ptr, ptr %pending_buf371, align 8
  %307 = load i32, ptr %beg354, align 4
  %idx.ext372 = zext i32 %307 to i64
  %add.ptr373 = getelementptr inbounds i8, ptr %306, i64 %idx.ext372
  %308 = load ptr, ptr %s, align 8
  %pending374 = getelementptr inbounds %struct.internal_state, ptr %308, i32 0, i32 5
  %309 = load i32, ptr %pending374, align 8
  %310 = load i32, ptr %beg354, align 4
  %sub375 = sub i32 %309, %310
  %call376 = call i64 @crc32(i64 noundef %304, ptr noundef %add.ptr373, i32 noundef %sub375)
  %311 = load ptr, ptr %strm.addr, align 8
  %adler377 = getelementptr inbounds %struct.z_stream_s, ptr %311, i32 0, i32 12
  store i64 %call376, ptr %adler377, align 8
  br label %if.end378

if.end378:                                        ; preds = %if.then369, %land.lhs.true365, %if.then361
  %312 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %312)
  %313 = load ptr, ptr %s, align 8
  %pending379 = getelementptr inbounds %struct.internal_state, ptr %313, i32 0, i32 5
  %314 = load i32, ptr %pending379, align 8
  store i32 %314, ptr %beg354, align 4
  %315 = load ptr, ptr %s, align 8
  %pending380 = getelementptr inbounds %struct.internal_state, ptr %315, i32 0, i32 5
  %316 = load i32, ptr %pending380, align 8
  %conv381 = zext i32 %316 to i64
  %317 = load ptr, ptr %s, align 8
  %pending_buf_size382 = getelementptr inbounds %struct.internal_state, ptr %317, i32 0, i32 3
  %318 = load i64, ptr %pending_buf_size382, align 8
  %cmp383 = icmp eq i64 %conv381, %318
  br i1 %cmp383, label %if.then385, label %if.end386

if.then385:                                       ; preds = %if.end378
  store i32 1, ptr %val, align 4
  br label %do.end

if.end386:                                        ; preds = %if.end378
  br label %if.end387

if.end387:                                        ; preds = %if.end386, %do.body
  %319 = load ptr, ptr %s, align 8
  %gzhead388 = getelementptr inbounds %struct.internal_state, ptr %319, i32 0, i32 7
  %320 = load ptr, ptr %gzhead388, align 8
  %name389 = getelementptr inbounds %struct.gz_header_s, ptr %320, i32 0, i32 7
  %321 = load ptr, ptr %name389, align 8
  %322 = load ptr, ptr %s, align 8
  %gzindex390 = getelementptr inbounds %struct.internal_state, ptr %322, i32 0, i32 8
  %323 = load i32, ptr %gzindex390, align 8
  %inc391 = add i32 %323, 1
  store i32 %inc391, ptr %gzindex390, align 8
  %idxprom392 = zext i32 %323 to i64
  %arrayidx393 = getelementptr inbounds i8, ptr %321, i64 %idxprom392
  %324 = load i8, ptr %arrayidx393, align 1
  %conv394 = zext i8 %324 to i32
  store i32 %conv394, ptr %val, align 4
  %325 = load i32, ptr %val, align 4
  %conv395 = trunc i32 %325 to i8
  %326 = load ptr, ptr %s, align 8
  %pending_buf396 = getelementptr inbounds %struct.internal_state, ptr %326, i32 0, i32 2
  %327 = load ptr, ptr %pending_buf396, align 8
  %328 = load ptr, ptr %s, align 8
  %pending397 = getelementptr inbounds %struct.internal_state, ptr %328, i32 0, i32 5
  %329 = load i32, ptr %pending397, align 8
  %inc398 = add i32 %329, 1
  store i32 %inc398, ptr %pending397, align 8
  %idxprom399 = zext i32 %329 to i64
  %arrayidx400 = getelementptr inbounds i8, ptr %327, i64 %idxprom399
  store i8 %conv395, ptr %arrayidx400, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end387
  %330 = load i32, ptr %val, align 4
  %cmp401 = icmp ne i32 %330, 0
  br i1 %cmp401, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond, %if.then385
  %331 = load ptr, ptr %s, align 8
  %gzhead403 = getelementptr inbounds %struct.internal_state, ptr %331, i32 0, i32 7
  %332 = load ptr, ptr %gzhead403, align 8
  %hcrc404 = getelementptr inbounds %struct.gz_header_s, ptr %332, i32 0, i32 11
  %333 = load i32, ptr %hcrc404, align 4
  %tobool405 = icmp ne i32 %333, 0
  br i1 %tobool405, label %land.lhs.true406, label %if.end419

land.lhs.true406:                                 ; preds = %do.end
  %334 = load ptr, ptr %s, align 8
  %pending407 = getelementptr inbounds %struct.internal_state, ptr %334, i32 0, i32 5
  %335 = load i32, ptr %pending407, align 8
  %336 = load i32, ptr %beg354, align 4
  %cmp408 = icmp ugt i32 %335, %336
  br i1 %cmp408, label %if.then410, label %if.end419

if.then410:                                       ; preds = %land.lhs.true406
  %337 = load ptr, ptr %strm.addr, align 8
  %adler411 = getelementptr inbounds %struct.z_stream_s, ptr %337, i32 0, i32 12
  %338 = load i64, ptr %adler411, align 8
  %339 = load ptr, ptr %s, align 8
  %pending_buf412 = getelementptr inbounds %struct.internal_state, ptr %339, i32 0, i32 2
  %340 = load ptr, ptr %pending_buf412, align 8
  %341 = load i32, ptr %beg354, align 4
  %idx.ext413 = zext i32 %341 to i64
  %add.ptr414 = getelementptr inbounds i8, ptr %340, i64 %idx.ext413
  %342 = load ptr, ptr %s, align 8
  %pending415 = getelementptr inbounds %struct.internal_state, ptr %342, i32 0, i32 5
  %343 = load i32, ptr %pending415, align 8
  %344 = load i32, ptr %beg354, align 4
  %sub416 = sub i32 %343, %344
  %call417 = call i64 @crc32(i64 noundef %338, ptr noundef %add.ptr414, i32 noundef %sub416)
  %345 = load ptr, ptr %strm.addr, align 8
  %adler418 = getelementptr inbounds %struct.z_stream_s, ptr %345, i32 0, i32 12
  store i64 %call417, ptr %adler418, align 8
  br label %if.end419

if.end419:                                        ; preds = %if.then410, %land.lhs.true406, %do.end
  %346 = load i32, ptr %val, align 4
  %cmp420 = icmp eq i32 %346, 0
  br i1 %cmp420, label %if.then422, label %if.end425

if.then422:                                       ; preds = %if.end419
  %347 = load ptr, ptr %s, align 8
  %gzindex423 = getelementptr inbounds %struct.internal_state, ptr %347, i32 0, i32 8
  store i32 0, ptr %gzindex423, align 8
  %348 = load ptr, ptr %s, align 8
  %status424 = getelementptr inbounds %struct.internal_state, ptr %348, i32 0, i32 1
  store i32 91, ptr %status424, align 8
  br label %if.end425

if.end425:                                        ; preds = %if.then422, %if.end419
  br label %if.end428

if.else426:                                       ; preds = %if.then348
  %349 = load ptr, ptr %s, align 8
  %status427 = getelementptr inbounds %struct.internal_state, ptr %349, i32 0, i32 1
  store i32 91, ptr %status427, align 8
  br label %if.end428

if.end428:                                        ; preds = %if.else426, %if.end425
  br label %if.end429

if.end429:                                        ; preds = %if.end428, %if.end344
  %350 = load ptr, ptr %s, align 8
  %status430 = getelementptr inbounds %struct.internal_state, ptr %350, i32 0, i32 1
  %351 = load i32, ptr %status430, align 8
  %cmp431 = icmp eq i32 %351, 91
  br i1 %cmp431, label %if.then433, label %if.end517

if.then433:                                       ; preds = %if.end429
  %352 = load ptr, ptr %s, align 8
  %gzhead434 = getelementptr inbounds %struct.internal_state, ptr %352, i32 0, i32 7
  %353 = load ptr, ptr %gzhead434, align 8
  %comment435 = getelementptr inbounds %struct.gz_header_s, ptr %353, i32 0, i32 9
  %354 = load ptr, ptr %comment435, align 8
  %cmp436 = icmp ne ptr %354, null
  br i1 %cmp436, label %if.then438, label %if.else514

if.then438:                                       ; preds = %if.then433
  %355 = load ptr, ptr %s, align 8
  %pending440 = getelementptr inbounds %struct.internal_state, ptr %355, i32 0, i32 5
  %356 = load i32, ptr %pending440, align 8
  store i32 %356, ptr %beg439, align 4
  br label %do.body442

do.body442:                                       ; preds = %do.cond488, %if.then438
  %357 = load ptr, ptr %s, align 8
  %pending443 = getelementptr inbounds %struct.internal_state, ptr %357, i32 0, i32 5
  %358 = load i32, ptr %pending443, align 8
  %conv444 = zext i32 %358 to i64
  %359 = load ptr, ptr %s, align 8
  %pending_buf_size445 = getelementptr inbounds %struct.internal_state, ptr %359, i32 0, i32 3
  %360 = load i64, ptr %pending_buf_size445, align 8
  %cmp446 = icmp eq i64 %conv444, %360
  br i1 %cmp446, label %if.then448, label %if.end474

if.then448:                                       ; preds = %do.body442
  %361 = load ptr, ptr %s, align 8
  %gzhead449 = getelementptr inbounds %struct.internal_state, ptr %361, i32 0, i32 7
  %362 = load ptr, ptr %gzhead449, align 8
  %hcrc450 = getelementptr inbounds %struct.gz_header_s, ptr %362, i32 0, i32 11
  %363 = load i32, ptr %hcrc450, align 4
  %tobool451 = icmp ne i32 %363, 0
  br i1 %tobool451, label %land.lhs.true452, label %if.end465

land.lhs.true452:                                 ; preds = %if.then448
  %364 = load ptr, ptr %s, align 8
  %pending453 = getelementptr inbounds %struct.internal_state, ptr %364, i32 0, i32 5
  %365 = load i32, ptr %pending453, align 8
  %366 = load i32, ptr %beg439, align 4
  %cmp454 = icmp ugt i32 %365, %366
  br i1 %cmp454, label %if.then456, label %if.end465

if.then456:                                       ; preds = %land.lhs.true452
  %367 = load ptr, ptr %strm.addr, align 8
  %adler457 = getelementptr inbounds %struct.z_stream_s, ptr %367, i32 0, i32 12
  %368 = load i64, ptr %adler457, align 8
  %369 = load ptr, ptr %s, align 8
  %pending_buf458 = getelementptr inbounds %struct.internal_state, ptr %369, i32 0, i32 2
  %370 = load ptr, ptr %pending_buf458, align 8
  %371 = load i32, ptr %beg439, align 4
  %idx.ext459 = zext i32 %371 to i64
  %add.ptr460 = getelementptr inbounds i8, ptr %370, i64 %idx.ext459
  %372 = load ptr, ptr %s, align 8
  %pending461 = getelementptr inbounds %struct.internal_state, ptr %372, i32 0, i32 5
  %373 = load i32, ptr %pending461, align 8
  %374 = load i32, ptr %beg439, align 4
  %sub462 = sub i32 %373, %374
  %call463 = call i64 @crc32(i64 noundef %368, ptr noundef %add.ptr460, i32 noundef %sub462)
  %375 = load ptr, ptr %strm.addr, align 8
  %adler464 = getelementptr inbounds %struct.z_stream_s, ptr %375, i32 0, i32 12
  store i64 %call463, ptr %adler464, align 8
  br label %if.end465

if.end465:                                        ; preds = %if.then456, %land.lhs.true452, %if.then448
  %376 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %376)
  %377 = load ptr, ptr %s, align 8
  %pending466 = getelementptr inbounds %struct.internal_state, ptr %377, i32 0, i32 5
  %378 = load i32, ptr %pending466, align 8
  store i32 %378, ptr %beg439, align 4
  %379 = load ptr, ptr %s, align 8
  %pending467 = getelementptr inbounds %struct.internal_state, ptr %379, i32 0, i32 5
  %380 = load i32, ptr %pending467, align 8
  %conv468 = zext i32 %380 to i64
  %381 = load ptr, ptr %s, align 8
  %pending_buf_size469 = getelementptr inbounds %struct.internal_state, ptr %381, i32 0, i32 3
  %382 = load i64, ptr %pending_buf_size469, align 8
  %cmp470 = icmp eq i64 %conv468, %382
  br i1 %cmp470, label %if.then472, label %if.end473

if.then472:                                       ; preds = %if.end465
  store i32 1, ptr %val441, align 4
  br label %do.end491

if.end473:                                        ; preds = %if.end465
  br label %if.end474

if.end474:                                        ; preds = %if.end473, %do.body442
  %383 = load ptr, ptr %s, align 8
  %gzhead475 = getelementptr inbounds %struct.internal_state, ptr %383, i32 0, i32 7
  %384 = load ptr, ptr %gzhead475, align 8
  %comment476 = getelementptr inbounds %struct.gz_header_s, ptr %384, i32 0, i32 9
  %385 = load ptr, ptr %comment476, align 8
  %386 = load ptr, ptr %s, align 8
  %gzindex477 = getelementptr inbounds %struct.internal_state, ptr %386, i32 0, i32 8
  %387 = load i32, ptr %gzindex477, align 8
  %inc478 = add i32 %387, 1
  store i32 %inc478, ptr %gzindex477, align 8
  %idxprom479 = zext i32 %387 to i64
  %arrayidx480 = getelementptr inbounds i8, ptr %385, i64 %idxprom479
  %388 = load i8, ptr %arrayidx480, align 1
  %conv481 = zext i8 %388 to i32
  store i32 %conv481, ptr %val441, align 4
  %389 = load i32, ptr %val441, align 4
  %conv482 = trunc i32 %389 to i8
  %390 = load ptr, ptr %s, align 8
  %pending_buf483 = getelementptr inbounds %struct.internal_state, ptr %390, i32 0, i32 2
  %391 = load ptr, ptr %pending_buf483, align 8
  %392 = load ptr, ptr %s, align 8
  %pending484 = getelementptr inbounds %struct.internal_state, ptr %392, i32 0, i32 5
  %393 = load i32, ptr %pending484, align 8
  %inc485 = add i32 %393, 1
  store i32 %inc485, ptr %pending484, align 8
  %idxprom486 = zext i32 %393 to i64
  %arrayidx487 = getelementptr inbounds i8, ptr %391, i64 %idxprom486
  store i8 %conv482, ptr %arrayidx487, align 1
  br label %do.cond488

do.cond488:                                       ; preds = %if.end474
  %394 = load i32, ptr %val441, align 4
  %cmp489 = icmp ne i32 %394, 0
  br i1 %cmp489, label %do.body442, label %do.end491, !llvm.loop !10

do.end491:                                        ; preds = %do.cond488, %if.then472
  %395 = load ptr, ptr %s, align 8
  %gzhead492 = getelementptr inbounds %struct.internal_state, ptr %395, i32 0, i32 7
  %396 = load ptr, ptr %gzhead492, align 8
  %hcrc493 = getelementptr inbounds %struct.gz_header_s, ptr %396, i32 0, i32 11
  %397 = load i32, ptr %hcrc493, align 4
  %tobool494 = icmp ne i32 %397, 0
  br i1 %tobool494, label %land.lhs.true495, label %if.end508

land.lhs.true495:                                 ; preds = %do.end491
  %398 = load ptr, ptr %s, align 8
  %pending496 = getelementptr inbounds %struct.internal_state, ptr %398, i32 0, i32 5
  %399 = load i32, ptr %pending496, align 8
  %400 = load i32, ptr %beg439, align 4
  %cmp497 = icmp ugt i32 %399, %400
  br i1 %cmp497, label %if.then499, label %if.end508

if.then499:                                       ; preds = %land.lhs.true495
  %401 = load ptr, ptr %strm.addr, align 8
  %adler500 = getelementptr inbounds %struct.z_stream_s, ptr %401, i32 0, i32 12
  %402 = load i64, ptr %adler500, align 8
  %403 = load ptr, ptr %s, align 8
  %pending_buf501 = getelementptr inbounds %struct.internal_state, ptr %403, i32 0, i32 2
  %404 = load ptr, ptr %pending_buf501, align 8
  %405 = load i32, ptr %beg439, align 4
  %idx.ext502 = zext i32 %405 to i64
  %add.ptr503 = getelementptr inbounds i8, ptr %404, i64 %idx.ext502
  %406 = load ptr, ptr %s, align 8
  %pending504 = getelementptr inbounds %struct.internal_state, ptr %406, i32 0, i32 5
  %407 = load i32, ptr %pending504, align 8
  %408 = load i32, ptr %beg439, align 4
  %sub505 = sub i32 %407, %408
  %call506 = call i64 @crc32(i64 noundef %402, ptr noundef %add.ptr503, i32 noundef %sub505)
  %409 = load ptr, ptr %strm.addr, align 8
  %adler507 = getelementptr inbounds %struct.z_stream_s, ptr %409, i32 0, i32 12
  store i64 %call506, ptr %adler507, align 8
  br label %if.end508

if.end508:                                        ; preds = %if.then499, %land.lhs.true495, %do.end491
  %410 = load i32, ptr %val441, align 4
  %cmp509 = icmp eq i32 %410, 0
  br i1 %cmp509, label %if.then511, label %if.end513

if.then511:                                       ; preds = %if.end508
  %411 = load ptr, ptr %s, align 8
  %status512 = getelementptr inbounds %struct.internal_state, ptr %411, i32 0, i32 1
  store i32 103, ptr %status512, align 8
  br label %if.end513

if.end513:                                        ; preds = %if.then511, %if.end508
  br label %if.end516

if.else514:                                       ; preds = %if.then433
  %412 = load ptr, ptr %s, align 8
  %status515 = getelementptr inbounds %struct.internal_state, ptr %412, i32 0, i32 1
  store i32 103, ptr %status515, align 8
  br label %if.end516

if.end516:                                        ; preds = %if.else514, %if.end513
  br label %if.end517

if.end517:                                        ; preds = %if.end516, %if.end429
  %413 = load ptr, ptr %s, align 8
  %status518 = getelementptr inbounds %struct.internal_state, ptr %413, i32 0, i32 1
  %414 = load i32, ptr %status518, align 8
  %cmp519 = icmp eq i32 %414, 103
  br i1 %cmp519, label %if.then521, label %if.end565

if.then521:                                       ; preds = %if.end517
  %415 = load ptr, ptr %s, align 8
  %gzhead522 = getelementptr inbounds %struct.internal_state, ptr %415, i32 0, i32 7
  %416 = load ptr, ptr %gzhead522, align 8
  %hcrc523 = getelementptr inbounds %struct.gz_header_s, ptr %416, i32 0, i32 11
  %417 = load i32, ptr %hcrc523, align 4
  %tobool524 = icmp ne i32 %417, 0
  br i1 %tobool524, label %if.then525, label %if.else562

if.then525:                                       ; preds = %if.then521
  %418 = load ptr, ptr %s, align 8
  %pending526 = getelementptr inbounds %struct.internal_state, ptr %418, i32 0, i32 5
  %419 = load i32, ptr %pending526, align 8
  %add527 = add i32 %419, 2
  %conv528 = zext i32 %add527 to i64
  %420 = load ptr, ptr %s, align 8
  %pending_buf_size529 = getelementptr inbounds %struct.internal_state, ptr %420, i32 0, i32 3
  %421 = load i64, ptr %pending_buf_size529, align 8
  %cmp530 = icmp ugt i64 %conv528, %421
  br i1 %cmp530, label %if.then532, label %if.end533

if.then532:                                       ; preds = %if.then525
  %422 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %422)
  br label %if.end533

if.end533:                                        ; preds = %if.then532, %if.then525
  %423 = load ptr, ptr %s, align 8
  %pending534 = getelementptr inbounds %struct.internal_state, ptr %423, i32 0, i32 5
  %424 = load i32, ptr %pending534, align 8
  %add535 = add i32 %424, 2
  %conv536 = zext i32 %add535 to i64
  %425 = load ptr, ptr %s, align 8
  %pending_buf_size537 = getelementptr inbounds %struct.internal_state, ptr %425, i32 0, i32 3
  %426 = load i64, ptr %pending_buf_size537, align 8
  %cmp538 = icmp ule i64 %conv536, %426
  br i1 %cmp538, label %if.then540, label %if.end561

if.then540:                                       ; preds = %if.end533
  %427 = load ptr, ptr %strm.addr, align 8
  %adler541 = getelementptr inbounds %struct.z_stream_s, ptr %427, i32 0, i32 12
  %428 = load i64, ptr %adler541, align 8
  %and542 = and i64 %428, 255
  %conv543 = trunc i64 %and542 to i8
  %429 = load ptr, ptr %s, align 8
  %pending_buf544 = getelementptr inbounds %struct.internal_state, ptr %429, i32 0, i32 2
  %430 = load ptr, ptr %pending_buf544, align 8
  %431 = load ptr, ptr %s, align 8
  %pending545 = getelementptr inbounds %struct.internal_state, ptr %431, i32 0, i32 5
  %432 = load i32, ptr %pending545, align 8
  %inc546 = add i32 %432, 1
  store i32 %inc546, ptr %pending545, align 8
  %idxprom547 = zext i32 %432 to i64
  %arrayidx548 = getelementptr inbounds i8, ptr %430, i64 %idxprom547
  store i8 %conv543, ptr %arrayidx548, align 1
  %433 = load ptr, ptr %strm.addr, align 8
  %adler549 = getelementptr inbounds %struct.z_stream_s, ptr %433, i32 0, i32 12
  %434 = load i64, ptr %adler549, align 8
  %shr550 = lshr i64 %434, 8
  %and551 = and i64 %shr550, 255
  %conv552 = trunc i64 %and551 to i8
  %435 = load ptr, ptr %s, align 8
  %pending_buf553 = getelementptr inbounds %struct.internal_state, ptr %435, i32 0, i32 2
  %436 = load ptr, ptr %pending_buf553, align 8
  %437 = load ptr, ptr %s, align 8
  %pending554 = getelementptr inbounds %struct.internal_state, ptr %437, i32 0, i32 5
  %438 = load i32, ptr %pending554, align 8
  %inc555 = add i32 %438, 1
  store i32 %inc555, ptr %pending554, align 8
  %idxprom556 = zext i32 %438 to i64
  %arrayidx557 = getelementptr inbounds i8, ptr %436, i64 %idxprom556
  store i8 %conv552, ptr %arrayidx557, align 1
  %call558 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %439 = load ptr, ptr %strm.addr, align 8
  %adler559 = getelementptr inbounds %struct.z_stream_s, ptr %439, i32 0, i32 12
  store i64 %call558, ptr %adler559, align 8
  %440 = load ptr, ptr %s, align 8
  %status560 = getelementptr inbounds %struct.internal_state, ptr %440, i32 0, i32 1
  store i32 113, ptr %status560, align 8
  br label %if.end561

if.end561:                                        ; preds = %if.then540, %if.end533
  br label %if.end564

if.else562:                                       ; preds = %if.then521
  %441 = load ptr, ptr %s, align 8
  %status563 = getelementptr inbounds %struct.internal_state, ptr %441, i32 0, i32 1
  store i32 113, ptr %status563, align 8
  br label %if.end564

if.end564:                                        ; preds = %if.else562, %if.end561
  br label %if.end565

if.end565:                                        ; preds = %if.end564, %if.end517
  %442 = load ptr, ptr %s, align 8
  %pending566 = getelementptr inbounds %struct.internal_state, ptr %442, i32 0, i32 5
  %443 = load i32, ptr %pending566, align 8
  %cmp567 = icmp ne i32 %443, 0
  br i1 %cmp567, label %if.then569, label %if.else576

if.then569:                                       ; preds = %if.end565
  %444 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %444)
  %445 = load ptr, ptr %strm.addr, align 8
  %avail_out570 = getelementptr inbounds %struct.z_stream_s, ptr %445, i32 0, i32 4
  %446 = load i32, ptr %avail_out570, align 8
  %cmp571 = icmp eq i32 %446, 0
  br i1 %cmp571, label %if.then573, label %if.end575

if.then573:                                       ; preds = %if.then569
  %447 = load ptr, ptr %s, align 8
  %last_flush574 = getelementptr inbounds %struct.internal_state, ptr %447, i32 0, i32 10
  store i32 -1, ptr %last_flush574, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end575:                                        ; preds = %if.then569
  br label %if.end589

if.else576:                                       ; preds = %if.end565
  %448 = load ptr, ptr %strm.addr, align 8
  %avail_in577 = getelementptr inbounds %struct.z_stream_s, ptr %448, i32 0, i32 1
  %449 = load i32, ptr %avail_in577, align 8
  %cmp578 = icmp eq i32 %449, 0
  br i1 %cmp578, label %land.lhs.true580, label %if.end588

land.lhs.true580:                                 ; preds = %if.else576
  %450 = load i32, ptr %flush.addr, align 4
  %451 = load i32, ptr %old_flush, align 4
  %cmp581 = icmp sle i32 %450, %451
  br i1 %cmp581, label %land.lhs.true583, label %if.end588

land.lhs.true583:                                 ; preds = %land.lhs.true580
  %452 = load i32, ptr %flush.addr, align 4
  %cmp584 = icmp ne i32 %452, 4
  br i1 %cmp584, label %if.then586, label %if.end588

if.then586:                                       ; preds = %land.lhs.true583
  %453 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %454 = load ptr, ptr %strm.addr, align 8
  %msg587 = getelementptr inbounds %struct.z_stream_s, ptr %454, i32 0, i32 6
  store ptr %453, ptr %msg587, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end588:                                        ; preds = %land.lhs.true583, %land.lhs.true580, %if.else576
  br label %if.end589

if.end589:                                        ; preds = %if.end588, %if.end575
  %455 = load ptr, ptr %s, align 8
  %status590 = getelementptr inbounds %struct.internal_state, ptr %455, i32 0, i32 1
  %456 = load i32, ptr %status590, align 8
  %cmp591 = icmp eq i32 %456, 666
  br i1 %cmp591, label %land.lhs.true593, label %if.end599

land.lhs.true593:                                 ; preds = %if.end589
  %457 = load ptr, ptr %strm.addr, align 8
  %avail_in594 = getelementptr inbounds %struct.z_stream_s, ptr %457, i32 0, i32 1
  %458 = load i32, ptr %avail_in594, align 8
  %cmp595 = icmp ne i32 %458, 0
  br i1 %cmp595, label %if.then597, label %if.end599

if.then597:                                       ; preds = %land.lhs.true593
  %459 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %460 = load ptr, ptr %strm.addr, align 8
  %msg598 = getelementptr inbounds %struct.z_stream_s, ptr %460, i32 0, i32 6
  store ptr %459, ptr %msg598, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end599:                                        ; preds = %land.lhs.true593, %if.end589
  %461 = load ptr, ptr %strm.addr, align 8
  %avail_in600 = getelementptr inbounds %struct.z_stream_s, ptr %461, i32 0, i32 1
  %462 = load i32, ptr %avail_in600, align 8
  %cmp601 = icmp ne i32 %462, 0
  br i1 %cmp601, label %if.then613, label %lor.lhs.false603

lor.lhs.false603:                                 ; preds = %if.end599
  %463 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %463, i32 0, i32 29
  %464 = load i32, ptr %lookahead, align 4
  %cmp604 = icmp ne i32 %464, 0
  br i1 %cmp604, label %if.then613, label %lor.lhs.false606

lor.lhs.false606:                                 ; preds = %lor.lhs.false603
  %465 = load i32, ptr %flush.addr, align 4
  %cmp607 = icmp ne i32 %465, 0
  br i1 %cmp607, label %land.lhs.true609, label %if.end667

land.lhs.true609:                                 ; preds = %lor.lhs.false606
  %466 = load ptr, ptr %s, align 8
  %status610 = getelementptr inbounds %struct.internal_state, ptr %466, i32 0, i32 1
  %467 = load i32, ptr %status610, align 8
  %cmp611 = icmp ne i32 %467, 666
  br i1 %cmp611, label %if.then613, label %if.end667

if.then613:                                       ; preds = %land.lhs.true609, %lor.lhs.false603, %if.end599
  %468 = load ptr, ptr %s, align 8
  %level614 = getelementptr inbounds %struct.internal_state, ptr %468, i32 0, i32 33
  %469 = load i32, ptr %level614, align 4
  %idxprom615 = sext i32 %469 to i64
  %arrayidx616 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom615
  %func = getelementptr inbounds %struct.config_s, ptr %arrayidx616, i32 0, i32 4
  %470 = load ptr, ptr %func, align 8
  %471 = load ptr, ptr %s, align 8
  %472 = load i32, ptr %flush.addr, align 4
  %call617 = call i32 %470(ptr noundef %471, i32 noundef %472)
  store i32 %call617, ptr %bstate, align 4
  %473 = load i32, ptr %bstate, align 4
  %cmp618 = icmp eq i32 %473, 2
  br i1 %cmp618, label %if.then623, label %lor.lhs.false620

lor.lhs.false620:                                 ; preds = %if.then613
  %474 = load i32, ptr %bstate, align 4
  %cmp621 = icmp eq i32 %474, 3
  br i1 %cmp621, label %if.then623, label %if.end625

if.then623:                                       ; preds = %lor.lhs.false620, %if.then613
  %475 = load ptr, ptr %s, align 8
  %status624 = getelementptr inbounds %struct.internal_state, ptr %475, i32 0, i32 1
  store i32 666, ptr %status624, align 8
  br label %if.end625

if.end625:                                        ; preds = %if.then623, %lor.lhs.false620
  %476 = load i32, ptr %bstate, align 4
  %cmp626 = icmp eq i32 %476, 0
  br i1 %cmp626, label %if.then631, label %lor.lhs.false628

lor.lhs.false628:                                 ; preds = %if.end625
  %477 = load i32, ptr %bstate, align 4
  %cmp629 = icmp eq i32 %477, 2
  br i1 %cmp629, label %if.then631, label %if.end638

if.then631:                                       ; preds = %lor.lhs.false628, %if.end625
  %478 = load ptr, ptr %strm.addr, align 8
  %avail_out632 = getelementptr inbounds %struct.z_stream_s, ptr %478, i32 0, i32 4
  %479 = load i32, ptr %avail_out632, align 8
  %cmp633 = icmp eq i32 %479, 0
  br i1 %cmp633, label %if.then635, label %if.end637

if.then635:                                       ; preds = %if.then631
  %480 = load ptr, ptr %s, align 8
  %last_flush636 = getelementptr inbounds %struct.internal_state, ptr %480, i32 0, i32 10
  store i32 -1, ptr %last_flush636, align 8
  br label %if.end637

if.end637:                                        ; preds = %if.then635, %if.then631
  store i32 0, ptr %retval, align 4
  br label %return

if.end638:                                        ; preds = %lor.lhs.false628
  %481 = load i32, ptr %bstate, align 4
  %cmp639 = icmp eq i32 %481, 1
  br i1 %cmp639, label %if.then641, label %if.end666

if.then641:                                       ; preds = %if.end638
  %482 = load i32, ptr %flush.addr, align 4
  %cmp642 = icmp eq i32 %482, 1
  br i1 %cmp642, label %if.then644, label %if.else645

if.then644:                                       ; preds = %if.then641
  %483 = load ptr, ptr %s, align 8
  call void @_tr_align(ptr noundef %483)
  br label %if.end659

if.else645:                                       ; preds = %if.then641
  %484 = load ptr, ptr %s, align 8
  call void @_tr_stored_block(ptr noundef %484, ptr noundef null, i64 noundef 0, i32 noundef 0)
  %485 = load i32, ptr %flush.addr, align 4
  %cmp646 = icmp eq i32 %485, 3
  br i1 %cmp646, label %if.then648, label %if.end658

if.then648:                                       ; preds = %if.else645
  %486 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %486, i32 0, i32 17
  %487 = load ptr, ptr %head, align 8
  %488 = load ptr, ptr %s, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %488, i32 0, i32 19
  %489 = load i32, ptr %hash_size, align 4
  %sub649 = sub i32 %489, 1
  %idxprom650 = zext i32 %sub649 to i64
  %arrayidx651 = getelementptr inbounds i16, ptr %487, i64 %idxprom650
  store i16 0, ptr %arrayidx651, align 2
  %490 = load ptr, ptr %s, align 8
  %head652 = getelementptr inbounds %struct.internal_state, ptr %490, i32 0, i32 17
  %491 = load ptr, ptr %head652, align 8
  %492 = load ptr, ptr %s, align 8
  %hash_size653 = getelementptr inbounds %struct.internal_state, ptr %492, i32 0, i32 19
  %493 = load i32, ptr %hash_size653, align 4
  %sub654 = sub i32 %493, 1
  %conv655 = zext i32 %sub654 to i64
  %mul = mul i64 %conv655, 2
  %494 = load ptr, ptr %s, align 8
  %head656 = getelementptr inbounds %struct.internal_state, ptr %494, i32 0, i32 17
  %495 = load ptr, ptr %head656, align 8
  %496 = call i64 @llvm.objectsize.i64.p0(ptr %495, i1 false, i1 true, i1 false)
  %call657 = call ptr @__memset_chk(ptr noundef %491, i32 noundef 0, i64 noundef %mul, i64 noundef %496) #4
  br label %if.end658

if.end658:                                        ; preds = %if.then648, %if.else645
  br label %if.end659

if.end659:                                        ; preds = %if.end658, %if.then644
  %497 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %497)
  %498 = load ptr, ptr %strm.addr, align 8
  %avail_out660 = getelementptr inbounds %struct.z_stream_s, ptr %498, i32 0, i32 4
  %499 = load i32, ptr %avail_out660, align 8
  %cmp661 = icmp eq i32 %499, 0
  br i1 %cmp661, label %if.then663, label %if.end665

if.then663:                                       ; preds = %if.end659
  %500 = load ptr, ptr %s, align 8
  %last_flush664 = getelementptr inbounds %struct.internal_state, ptr %500, i32 0, i32 10
  store i32 -1, ptr %last_flush664, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end665:                                        ; preds = %if.end659
  br label %if.end666

if.end666:                                        ; preds = %if.end665, %if.end638
  br label %if.end667

if.end667:                                        ; preds = %if.end666, %land.lhs.true609, %lor.lhs.false606
  %501 = load i32, ptr %flush.addr, align 4
  %cmp668 = icmp ne i32 %501, 4
  br i1 %cmp668, label %if.then670, label %if.end671

if.then670:                                       ; preds = %if.end667
  store i32 0, ptr %retval, align 4
  br label %return

if.end671:                                        ; preds = %if.end667
  %502 = load ptr, ptr %s, align 8
  %wrap672 = getelementptr inbounds %struct.internal_state, ptr %502, i32 0, i32 6
  %503 = load i32, ptr %wrap672, align 4
  %cmp673 = icmp sle i32 %503, 0
  br i1 %cmp673, label %if.then675, label %if.end676

if.then675:                                       ; preds = %if.end671
  store i32 1, ptr %retval, align 4
  br label %return

if.end676:                                        ; preds = %if.end671
  %504 = load ptr, ptr %s, align 8
  %wrap677 = getelementptr inbounds %struct.internal_state, ptr %504, i32 0, i32 6
  %505 = load i32, ptr %wrap677, align 4
  %cmp678 = icmp eq i32 %505, 2
  br i1 %cmp678, label %if.then680, label %if.else750

if.then680:                                       ; preds = %if.end676
  %506 = load ptr, ptr %strm.addr, align 8
  %adler681 = getelementptr inbounds %struct.z_stream_s, ptr %506, i32 0, i32 12
  %507 = load i64, ptr %adler681, align 8
  %and682 = and i64 %507, 255
  %conv683 = trunc i64 %and682 to i8
  %508 = load ptr, ptr %s, align 8
  %pending_buf684 = getelementptr inbounds %struct.internal_state, ptr %508, i32 0, i32 2
  %509 = load ptr, ptr %pending_buf684, align 8
  %510 = load ptr, ptr %s, align 8
  %pending685 = getelementptr inbounds %struct.internal_state, ptr %510, i32 0, i32 5
  %511 = load i32, ptr %pending685, align 8
  %inc686 = add i32 %511, 1
  store i32 %inc686, ptr %pending685, align 8
  %idxprom687 = zext i32 %511 to i64
  %arrayidx688 = getelementptr inbounds i8, ptr %509, i64 %idxprom687
  store i8 %conv683, ptr %arrayidx688, align 1
  %512 = load ptr, ptr %strm.addr, align 8
  %adler689 = getelementptr inbounds %struct.z_stream_s, ptr %512, i32 0, i32 12
  %513 = load i64, ptr %adler689, align 8
  %shr690 = lshr i64 %513, 8
  %and691 = and i64 %shr690, 255
  %conv692 = trunc i64 %and691 to i8
  %514 = load ptr, ptr %s, align 8
  %pending_buf693 = getelementptr inbounds %struct.internal_state, ptr %514, i32 0, i32 2
  %515 = load ptr, ptr %pending_buf693, align 8
  %516 = load ptr, ptr %s, align 8
  %pending694 = getelementptr inbounds %struct.internal_state, ptr %516, i32 0, i32 5
  %517 = load i32, ptr %pending694, align 8
  %inc695 = add i32 %517, 1
  store i32 %inc695, ptr %pending694, align 8
  %idxprom696 = zext i32 %517 to i64
  %arrayidx697 = getelementptr inbounds i8, ptr %515, i64 %idxprom696
  store i8 %conv692, ptr %arrayidx697, align 1
  %518 = load ptr, ptr %strm.addr, align 8
  %adler698 = getelementptr inbounds %struct.z_stream_s, ptr %518, i32 0, i32 12
  %519 = load i64, ptr %adler698, align 8
  %shr699 = lshr i64 %519, 16
  %and700 = and i64 %shr699, 255
  %conv701 = trunc i64 %and700 to i8
  %520 = load ptr, ptr %s, align 8
  %pending_buf702 = getelementptr inbounds %struct.internal_state, ptr %520, i32 0, i32 2
  %521 = load ptr, ptr %pending_buf702, align 8
  %522 = load ptr, ptr %s, align 8
  %pending703 = getelementptr inbounds %struct.internal_state, ptr %522, i32 0, i32 5
  %523 = load i32, ptr %pending703, align 8
  %inc704 = add i32 %523, 1
  store i32 %inc704, ptr %pending703, align 8
  %idxprom705 = zext i32 %523 to i64
  %arrayidx706 = getelementptr inbounds i8, ptr %521, i64 %idxprom705
  store i8 %conv701, ptr %arrayidx706, align 1
  %524 = load ptr, ptr %strm.addr, align 8
  %adler707 = getelementptr inbounds %struct.z_stream_s, ptr %524, i32 0, i32 12
  %525 = load i64, ptr %adler707, align 8
  %shr708 = lshr i64 %525, 24
  %and709 = and i64 %shr708, 255
  %conv710 = trunc i64 %and709 to i8
  %526 = load ptr, ptr %s, align 8
  %pending_buf711 = getelementptr inbounds %struct.internal_state, ptr %526, i32 0, i32 2
  %527 = load ptr, ptr %pending_buf711, align 8
  %528 = load ptr, ptr %s, align 8
  %pending712 = getelementptr inbounds %struct.internal_state, ptr %528, i32 0, i32 5
  %529 = load i32, ptr %pending712, align 8
  %inc713 = add i32 %529, 1
  store i32 %inc713, ptr %pending712, align 8
  %idxprom714 = zext i32 %529 to i64
  %arrayidx715 = getelementptr inbounds i8, ptr %527, i64 %idxprom714
  store i8 %conv710, ptr %arrayidx715, align 1
  %530 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %530, i32 0, i32 2
  %531 = load i64, ptr %total_in, align 8
  %and716 = and i64 %531, 255
  %conv717 = trunc i64 %and716 to i8
  %532 = load ptr, ptr %s, align 8
  %pending_buf718 = getelementptr inbounds %struct.internal_state, ptr %532, i32 0, i32 2
  %533 = load ptr, ptr %pending_buf718, align 8
  %534 = load ptr, ptr %s, align 8
  %pending719 = getelementptr inbounds %struct.internal_state, ptr %534, i32 0, i32 5
  %535 = load i32, ptr %pending719, align 8
  %inc720 = add i32 %535, 1
  store i32 %inc720, ptr %pending719, align 8
  %idxprom721 = zext i32 %535 to i64
  %arrayidx722 = getelementptr inbounds i8, ptr %533, i64 %idxprom721
  store i8 %conv717, ptr %arrayidx722, align 1
  %536 = load ptr, ptr %strm.addr, align 8
  %total_in723 = getelementptr inbounds %struct.z_stream_s, ptr %536, i32 0, i32 2
  %537 = load i64, ptr %total_in723, align 8
  %shr724 = lshr i64 %537, 8
  %and725 = and i64 %shr724, 255
  %conv726 = trunc i64 %and725 to i8
  %538 = load ptr, ptr %s, align 8
  %pending_buf727 = getelementptr inbounds %struct.internal_state, ptr %538, i32 0, i32 2
  %539 = load ptr, ptr %pending_buf727, align 8
  %540 = load ptr, ptr %s, align 8
  %pending728 = getelementptr inbounds %struct.internal_state, ptr %540, i32 0, i32 5
  %541 = load i32, ptr %pending728, align 8
  %inc729 = add i32 %541, 1
  store i32 %inc729, ptr %pending728, align 8
  %idxprom730 = zext i32 %541 to i64
  %arrayidx731 = getelementptr inbounds i8, ptr %539, i64 %idxprom730
  store i8 %conv726, ptr %arrayidx731, align 1
  %542 = load ptr, ptr %strm.addr, align 8
  %total_in732 = getelementptr inbounds %struct.z_stream_s, ptr %542, i32 0, i32 2
  %543 = load i64, ptr %total_in732, align 8
  %shr733 = lshr i64 %543, 16
  %and734 = and i64 %shr733, 255
  %conv735 = trunc i64 %and734 to i8
  %544 = load ptr, ptr %s, align 8
  %pending_buf736 = getelementptr inbounds %struct.internal_state, ptr %544, i32 0, i32 2
  %545 = load ptr, ptr %pending_buf736, align 8
  %546 = load ptr, ptr %s, align 8
  %pending737 = getelementptr inbounds %struct.internal_state, ptr %546, i32 0, i32 5
  %547 = load i32, ptr %pending737, align 8
  %inc738 = add i32 %547, 1
  store i32 %inc738, ptr %pending737, align 8
  %idxprom739 = zext i32 %547 to i64
  %arrayidx740 = getelementptr inbounds i8, ptr %545, i64 %idxprom739
  store i8 %conv735, ptr %arrayidx740, align 1
  %548 = load ptr, ptr %strm.addr, align 8
  %total_in741 = getelementptr inbounds %struct.z_stream_s, ptr %548, i32 0, i32 2
  %549 = load i64, ptr %total_in741, align 8
  %shr742 = lshr i64 %549, 24
  %and743 = and i64 %shr742, 255
  %conv744 = trunc i64 %and743 to i8
  %550 = load ptr, ptr %s, align 8
  %pending_buf745 = getelementptr inbounds %struct.internal_state, ptr %550, i32 0, i32 2
  %551 = load ptr, ptr %pending_buf745, align 8
  %552 = load ptr, ptr %s, align 8
  %pending746 = getelementptr inbounds %struct.internal_state, ptr %552, i32 0, i32 5
  %553 = load i32, ptr %pending746, align 8
  %inc747 = add i32 %553, 1
  store i32 %inc747, ptr %pending746, align 8
  %idxprom748 = zext i32 %553 to i64
  %arrayidx749 = getelementptr inbounds i8, ptr %551, i64 %idxprom748
  store i8 %conv744, ptr %arrayidx749, align 1
  br label %if.end757

if.else750:                                       ; preds = %if.end676
  %554 = load ptr, ptr %s, align 8
  %555 = load ptr, ptr %strm.addr, align 8
  %adler751 = getelementptr inbounds %struct.z_stream_s, ptr %555, i32 0, i32 12
  %556 = load i64, ptr %adler751, align 8
  %shr752 = lshr i64 %556, 16
  %conv753 = trunc i64 %shr752 to i32
  call void @putShortMSB(ptr noundef %554, i32 noundef %conv753)
  %557 = load ptr, ptr %s, align 8
  %558 = load ptr, ptr %strm.addr, align 8
  %adler754 = getelementptr inbounds %struct.z_stream_s, ptr %558, i32 0, i32 12
  %559 = load i64, ptr %adler754, align 8
  %and755 = and i64 %559, 65535
  %conv756 = trunc i64 %and755 to i32
  call void @putShortMSB(ptr noundef %557, i32 noundef %conv756)
  br label %if.end757

if.end757:                                        ; preds = %if.else750, %if.then680
  %560 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %560)
  %561 = load ptr, ptr %s, align 8
  %wrap758 = getelementptr inbounds %struct.internal_state, ptr %561, i32 0, i32 6
  %562 = load i32, ptr %wrap758, align 4
  %cmp759 = icmp sgt i32 %562, 0
  br i1 %cmp759, label %if.then761, label %if.end765

if.then761:                                       ; preds = %if.end757
  %563 = load ptr, ptr %s, align 8
  %wrap762 = getelementptr inbounds %struct.internal_state, ptr %563, i32 0, i32 6
  %564 = load i32, ptr %wrap762, align 4
  %sub763 = sub nsw i32 0, %564
  %565 = load ptr, ptr %s, align 8
  %wrap764 = getelementptr inbounds %struct.internal_state, ptr %565, i32 0, i32 6
  store i32 %sub763, ptr %wrap764, align 4
  br label %if.end765

if.end765:                                        ; preds = %if.then761, %if.end757
  %566 = load ptr, ptr %s, align 8
  %pending766 = getelementptr inbounds %struct.internal_state, ptr %566, i32 0, i32 5
  %567 = load i32, ptr %pending766, align 8
  %cmp767 = icmp ne i32 %567, 0
  %568 = zext i1 %cmp767 to i64
  %cond769 = select i1 %cmp767, i32 0, i32 1
  store i32 %cond769, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end765, %if.then675, %if.then670, %if.then663, %if.end637, %if.then597, %if.then586, %if.then573, %if.then18, %if.then15, %if.then
  %569 = load i32, ptr %retval, align 4
  ret i32 %569
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateTune(ptr noundef %strm, i32 noundef %good_length, i32 noundef %max_lazy, i32 noundef %nice_length, i32 noundef %max_chain) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %good_length.addr = alloca i32, align 4
  %max_lazy.addr = alloca i32, align 4
  %nice_length.addr = alloca i32, align 4
  %max_chain.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %good_length, ptr %good_length.addr, align 4
  store i32 %max_lazy, ptr %max_lazy.addr, align 4
  store i32 %nice_length, ptr %nice_length.addr, align 4
  store i32 %max_chain, ptr %max_chain.addr, align 4
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
  %5 = load i32, ptr %good_length.addr, align 4
  %6 = load ptr, ptr %s, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 35
  store i32 %5, ptr %good_match, align 4
  %7 = load i32, ptr %max_lazy.addr, align 4
  %8 = load ptr, ptr %s, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 32
  store i32 %7, ptr %max_lazy_match, align 8
  %9 = load i32, ptr %nice_length.addr, align 4
  %10 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 36
  store i32 %9, ptr %nice_match, align 8
  %11 = load i32, ptr %max_chain.addr, align 4
  %12 = load ptr, ptr %s, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 31
  store i32 %11, ptr %max_chain_length, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define i64 @deflateBound(ptr noundef %strm, i64 noundef %sourceLen) #0 {
entry:
  %retval = alloca i64, align 8
  %strm.addr = alloca ptr, align 8
  %sourceLen.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  %destLen = alloca i64, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i64 %sourceLen, ptr %sourceLen.addr, align 8
  %0 = load i64, ptr %sourceLen.addr, align 8
  %1 = load i64, ptr %sourceLen.addr, align 8
  %add = add i64 %1, 7
  %shr = lshr i64 %add, 3
  %add1 = add i64 %0, %shr
  %2 = load i64, ptr %sourceLen.addr, align 8
  %add2 = add i64 %2, 63
  %shr3 = lshr i64 %add2, 6
  %add4 = add i64 %add1, %shr3
  %add5 = add i64 %add4, 11
  store i64 %add5, ptr %destLen, align 8
  %3 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %state, align 8
  %cmp6 = icmp eq ptr %5, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i64, ptr %destLen, align 8
  store i64 %6, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %strm.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %state7, align 8
  store ptr %8, ptr %s, align 8
  %9 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 12
  %10 = load i32, ptr %w_bits, align 8
  %cmp8 = icmp ne i32 %10, 15
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %11 = load ptr, ptr %s, align 8
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 20
  %12 = load i32, ptr %hash_bits, align 8
  %cmp10 = icmp ne i32 %12, 15
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %13 = load i64, ptr %destLen, align 8
  store i64 %13, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %lor.lhs.false9
  %14 = load i64, ptr %sourceLen.addr, align 8
  %call = call i64 @compressBound(i64 noundef %14)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then
  %15 = load i64, ptr %retval, align 8
  ret i64 %15
}

declare i64 @compressBound(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
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
  %inc = add i32 %4, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %4 to i64
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
  %inc4 = add i32 %9, 1
  store i32 %inc4, ptr %pending3, align 8
  %idxprom5 = zext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 %idxprom5
  store i8 %conv1, ptr %arrayidx6, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
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
  %call = call ptr @__memcpy_chk(ptr noundef %10, ptr noundef %13, i64 noundef %conv, i64 noundef %17) #4
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
  %8 = load ptr, ptr %dest.addr, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %7, i64 noundef 112, i64 noundef %9) #4
  %10 = load ptr, ptr %dest.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %zalloc, align 8
  %12 = load ptr, ptr %dest.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %opaque, align 8
  %call5 = call ptr %11(ptr noundef %13, i32 noundef 1, i32 noundef 5928)
  store ptr %call5, ptr %ds, align 8
  %14 = load ptr, ptr %ds, align 8
  %cmp6 = icmp eq ptr %14, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %15 = load ptr, ptr %ds, align 8
  %16 = load ptr, ptr %dest.addr, align 8
  %state9 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 7
  store ptr %15, ptr %state9, align 8
  %17 = load ptr, ptr %ds, align 8
  %18 = load ptr, ptr %ss, align 8
  %19 = load ptr, ptr %ds, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memcpy_chk(ptr noundef %17, ptr noundef %18, i64 noundef 5928, i64 noundef %20) #4
  %21 = load ptr, ptr %dest.addr, align 8
  %22 = load ptr, ptr %ds, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 0
  store ptr %21, ptr %strm, align 8
  %23 = load ptr, ptr %dest.addr, align 8
  %zalloc11 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 8
  %24 = load ptr, ptr %zalloc11, align 8
  %25 = load ptr, ptr %dest.addr, align 8
  %opaque12 = getelementptr inbounds %struct.z_stream_s, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %opaque12, align 8
  %27 = load ptr, ptr %ds, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 11
  %28 = load i32, ptr %w_size, align 4
  %call13 = call ptr %24(ptr noundef %26, i32 noundef %28, i32 noundef 2)
  %29 = load ptr, ptr %ds, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 14
  store ptr %call13, ptr %window, align 8
  %30 = load ptr, ptr %dest.addr, align 8
  %zalloc14 = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 8
  %31 = load ptr, ptr %zalloc14, align 8
  %32 = load ptr, ptr %dest.addr, align 8
  %opaque15 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 10
  %33 = load ptr, ptr %opaque15, align 8
  %34 = load ptr, ptr %ds, align 8
  %w_size16 = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 11
  %35 = load i32, ptr %w_size16, align 4
  %call17 = call ptr %31(ptr noundef %33, i32 noundef %35, i32 noundef 2)
  %36 = load ptr, ptr %ds, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 16
  store ptr %call17, ptr %prev, align 8
  %37 = load ptr, ptr %dest.addr, align 8
  %zalloc18 = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 8
  %38 = load ptr, ptr %zalloc18, align 8
  %39 = load ptr, ptr %dest.addr, align 8
  %opaque19 = getelementptr inbounds %struct.z_stream_s, ptr %39, i32 0, i32 10
  %40 = load ptr, ptr %opaque19, align 8
  %41 = load ptr, ptr %ds, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 19
  %42 = load i32, ptr %hash_size, align 4
  %call20 = call ptr %38(ptr noundef %40, i32 noundef %42, i32 noundef 2)
  %43 = load ptr, ptr %ds, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 17
  store ptr %call20, ptr %head, align 8
  %44 = load ptr, ptr %dest.addr, align 8
  %zalloc21 = getelementptr inbounds %struct.z_stream_s, ptr %44, i32 0, i32 8
  %45 = load ptr, ptr %zalloc21, align 8
  %46 = load ptr, ptr %dest.addr, align 8
  %opaque22 = getelementptr inbounds %struct.z_stream_s, ptr %46, i32 0, i32 10
  %47 = load ptr, ptr %opaque22, align 8
  %48 = load ptr, ptr %ds, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 49
  %49 = load i32, ptr %lit_bufsize, align 8
  %call23 = call ptr %45(ptr noundef %47, i32 noundef %49, i32 noundef 4)
  store ptr %call23, ptr %overlay, align 8
  %50 = load ptr, ptr %overlay, align 8
  %51 = load ptr, ptr %ds, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 2
  store ptr %50, ptr %pending_buf, align 8
  %52 = load ptr, ptr %ds, align 8
  %window24 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 14
  %53 = load ptr, ptr %window24, align 8
  %cmp25 = icmp eq ptr %53, null
  br i1 %cmp25, label %if.then35, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end8
  %54 = load ptr, ptr %ds, align 8
  %prev27 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 16
  %55 = load ptr, ptr %prev27, align 8
  %cmp28 = icmp eq ptr %55, null
  br i1 %cmp28, label %if.then35, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %56 = load ptr, ptr %ds, align 8
  %head30 = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 17
  %57 = load ptr, ptr %head30, align 8
  %cmp31 = icmp eq ptr %57, null
  br i1 %cmp31, label %if.then35, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %58 = load ptr, ptr %ds, align 8
  %pending_buf33 = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 2
  %59 = load ptr, ptr %pending_buf33, align 8
  %cmp34 = icmp eq ptr %59, null
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %lor.lhs.false32, %lor.lhs.false29, %lor.lhs.false26, %if.end8
  %60 = load ptr, ptr %dest.addr, align 8
  %call36 = call i32 @deflateEnd(ptr noundef %60)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %lor.lhs.false32
  %61 = load ptr, ptr %ds, align 8
  %window38 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 14
  %62 = load ptr, ptr %window38, align 8
  %63 = load ptr, ptr %ss, align 8
  %window39 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 14
  %64 = load ptr, ptr %window39, align 8
  %65 = load ptr, ptr %ds, align 8
  %w_size40 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 11
  %66 = load i32, ptr %w_size40, align 4
  %mul = mul i32 %66, 2
  %conv = zext i32 %mul to i64
  %mul41 = mul i64 %conv, 1
  %67 = load ptr, ptr %ds, align 8
  %window42 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 14
  %68 = load ptr, ptr %window42, align 8
  %69 = call i64 @llvm.objectsize.i64.p0(ptr %68, i1 false, i1 true, i1 false)
  %call43 = call ptr @__memcpy_chk(ptr noundef %62, ptr noundef %64, i64 noundef %mul41, i64 noundef %69) #4
  %70 = load ptr, ptr %ds, align 8
  %prev44 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 16
  %71 = load ptr, ptr %prev44, align 8
  %72 = load ptr, ptr %ss, align 8
  %prev45 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 16
  %73 = load ptr, ptr %prev45, align 8
  %74 = load ptr, ptr %ds, align 8
  %w_size46 = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 11
  %75 = load i32, ptr %w_size46, align 4
  %conv47 = zext i32 %75 to i64
  %mul48 = mul i64 %conv47, 2
  %76 = load ptr, ptr %ds, align 8
  %prev49 = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 16
  %77 = load ptr, ptr %prev49, align 8
  %78 = call i64 @llvm.objectsize.i64.p0(ptr %77, i1 false, i1 true, i1 false)
  %call50 = call ptr @__memcpy_chk(ptr noundef %71, ptr noundef %73, i64 noundef %mul48, i64 noundef %78) #4
  %79 = load ptr, ptr %ds, align 8
  %head51 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 17
  %80 = load ptr, ptr %head51, align 8
  %81 = load ptr, ptr %ss, align 8
  %head52 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 17
  %82 = load ptr, ptr %head52, align 8
  %83 = load ptr, ptr %ds, align 8
  %hash_size53 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 19
  %84 = load i32, ptr %hash_size53, align 4
  %conv54 = zext i32 %84 to i64
  %mul55 = mul i64 %conv54, 2
  %85 = load ptr, ptr %ds, align 8
  %head56 = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 17
  %86 = load ptr, ptr %head56, align 8
  %87 = call i64 @llvm.objectsize.i64.p0(ptr %86, i1 false, i1 true, i1 false)
  %call57 = call ptr @__memcpy_chk(ptr noundef %80, ptr noundef %82, i64 noundef %mul55, i64 noundef %87) #4
  %88 = load ptr, ptr %ds, align 8
  %pending_buf58 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 2
  %89 = load ptr, ptr %pending_buf58, align 8
  %90 = load ptr, ptr %ss, align 8
  %pending_buf59 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 2
  %91 = load ptr, ptr %pending_buf59, align 8
  %92 = load ptr, ptr %ds, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 3
  %93 = load i64, ptr %pending_buf_size, align 8
  %conv60 = trunc i64 %93 to i32
  %conv61 = zext i32 %conv60 to i64
  %94 = load ptr, ptr %ds, align 8
  %pending_buf62 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 2
  %95 = load ptr, ptr %pending_buf62, align 8
  %96 = call i64 @llvm.objectsize.i64.p0(ptr %95, i1 false, i1 true, i1 false)
  %call63 = call ptr @__memcpy_chk(ptr noundef %89, ptr noundef %91, i64 noundef %conv61, i64 noundef %96) #4
  %97 = load ptr, ptr %ds, align 8
  %pending_buf64 = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 2
  %98 = load ptr, ptr %pending_buf64, align 8
  %99 = load ptr, ptr %ss, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %99, i32 0, i32 4
  %100 = load ptr, ptr %pending_out, align 8
  %101 = load ptr, ptr %ss, align 8
  %pending_buf65 = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 2
  %102 = load ptr, ptr %pending_buf65, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %100 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %102 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %98, i64 %sub.ptr.sub
  %103 = load ptr, ptr %ds, align 8
  %pending_out66 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 4
  store ptr %add.ptr, ptr %pending_out66, align 8
  %104 = load ptr, ptr %overlay, align 8
  %105 = load ptr, ptr %ds, align 8
  %lit_bufsize67 = getelementptr inbounds %struct.internal_state, ptr %105, i32 0, i32 49
  %106 = load i32, ptr %lit_bufsize67, align 8
  %conv68 = zext i32 %106 to i64
  %div = udiv i64 %conv68, 2
  %add.ptr69 = getelementptr inbounds i16, ptr %104, i64 %div
  %107 = load ptr, ptr %ds, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %107, i32 0, i32 51
  store ptr %add.ptr69, ptr %d_buf, align 8
  %108 = load ptr, ptr %ds, align 8
  %pending_buf70 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 2
  %109 = load ptr, ptr %pending_buf70, align 8
  %110 = load ptr, ptr %ds, align 8
  %lit_bufsize71 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 49
  %111 = load i32, ptr %lit_bufsize71, align 8
  %conv72 = zext i32 %111 to i64
  %mul73 = mul i64 3, %conv72
  %add.ptr74 = getelementptr inbounds i8, ptr %109, i64 %mul73
  %112 = load ptr, ptr %ds, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 48
  store ptr %add.ptr74, ptr %l_buf, align 8
  %113 = load ptr, ptr %ds, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 37
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0
  %114 = load ptr, ptr %ds, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 40
  %dyn_tree = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc, i32 0, i32 0
  store ptr %arraydecay, ptr %dyn_tree, align 8
  %115 = load ptr, ptr %ds, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %115, i32 0, i32 38
  %arraydecay75 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0
  %116 = load ptr, ptr %ds, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %116, i32 0, i32 41
  %dyn_tree76 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc, i32 0, i32 0
  store ptr %arraydecay75, ptr %dyn_tree76, align 8
  %117 = load ptr, ptr %ds, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %117, i32 0, i32 39
  %arraydecay77 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 0
  %118 = load ptr, ptr %ds, align 8
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 42
  %dyn_tree78 = getelementptr inbounds %struct.tree_desc_s, ptr %bl_desc, i32 0, i32 0
  store ptr %arraydecay77, ptr %dyn_tree78, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then35, %if.then7, %if.then
  %119 = load i32, ptr %retval, align 4
  ret i32 %119
}

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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 29
  %6 = load i32, ptr %lookahead, align 4
  %cmp3 = icmp ule i32 %6, 1
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %for.cond
  %7 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %7)
  %8 = load ptr, ptr %s.addr, align 8
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 29
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
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 29
  %12 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  br label %for.end

if.end13:                                         ; preds = %if.end9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %for.cond
  %13 = load ptr, ptr %s.addr, align 8
  %lookahead15 = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 29
  %14 = load i32, ptr %lookahead15, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 27
  %16 = load i32, ptr %strstart, align 4
  %add = add i32 %16, %14
  store i32 %add, ptr %strstart, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %lookahead16 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 29
  store i32 0, ptr %lookahead16, align 4
  %18 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 23
  %19 = load i64, ptr %block_start, align 8
  %20 = load i64, ptr %max_block_size, align 8
  %add17 = add i64 %19, %20
  store i64 %add17, ptr %max_start, align 8
  %21 = load ptr, ptr %s.addr, align 8
  %strstart18 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 27
  %22 = load i32, ptr %strstart18, align 4
  %cmp19 = icmp eq i32 %22, 0
  br i1 %cmp19, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %23 = load ptr, ptr %s.addr, align 8
  %strstart20 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 27
  %24 = load i32, ptr %strstart20, align 4
  %conv = zext i32 %24 to i64
  %25 = load i64, ptr %max_start, align 8
  %cmp21 = icmp uge i64 %conv, %25
  br i1 %cmp21, label %if.then23, label %if.end48

if.then23:                                        ; preds = %lor.lhs.false, %if.end14
  %26 = load ptr, ptr %s.addr, align 8
  %strstart24 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 27
  %27 = load i32, ptr %strstart24, align 4
  %conv25 = zext i32 %27 to i64
  %28 = load i64, ptr %max_start, align 8
  %sub26 = sub i64 %conv25, %28
  %conv27 = trunc i64 %sub26 to i32
  %29 = load ptr, ptr %s.addr, align 8
  %lookahead28 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 29
  store i32 %conv27, ptr %lookahead28, align 4
  %30 = load i64, ptr %max_start, align 8
  %conv29 = trunc i64 %30 to i32
  %31 = load ptr, ptr %s.addr, align 8
  %strstart30 = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 27
  store i32 %conv29, ptr %strstart30, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %33 = load ptr, ptr %s.addr, align 8
  %block_start31 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 23
  %34 = load i64, ptr %block_start31, align 8
  %cmp32 = icmp sge i64 %34, 0
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then23
  %35 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 14
  %36 = load ptr, ptr %window, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %block_start34 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 23
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
  %strstart36 = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 27
  %40 = load i32, ptr %strstart36, align 4
  %conv37 = zext i32 %40 to i64
  %41 = load ptr, ptr %s.addr, align 8
  %block_start38 = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 23
  %42 = load i64, ptr %block_start38, align 8
  %sub39 = sub nsw i64 %conv37, %42
  call void @_tr_flush_block(ptr noundef %32, ptr noundef %cond, i64 noundef %sub39, i32 noundef 0)
  %43 = load ptr, ptr %s.addr, align 8
  %strstart40 = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 27
  %44 = load i32, ptr %strstart40, align 4
  %conv41 = zext i32 %44 to i64
  %45 = load ptr, ptr %s.addr, align 8
  %block_start42 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 23
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
  %strstart49 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 27
  %52 = load i32, ptr %strstart49, align 4
  %53 = load ptr, ptr %s.addr, align 8
  %block_start50 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 23
  %54 = load i64, ptr %block_start50, align 8
  %conv51 = trunc i64 %54 to i32
  %sub52 = sub i32 %52, %conv51
  %55 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %55, i32 0, i32 11
  %56 = load i32, ptr %w_size, align 4
  %sub53 = sub i32 %56, 262
  %cmp54 = icmp uge i32 %sub52, %sub53
  br i1 %cmp54, label %if.then56, label %if.end83

if.then56:                                        ; preds = %if.end48
  %57 = load ptr, ptr %s.addr, align 8
  %58 = load ptr, ptr %s.addr, align 8
  %block_start57 = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 23
  %59 = load i64, ptr %block_start57, align 8
  %cmp58 = icmp sge i64 %59, 0
  br i1 %cmp58, label %cond.true60, label %cond.false66

cond.true60:                                      ; preds = %if.then56
  %60 = load ptr, ptr %s.addr, align 8
  %window61 = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 14
  %61 = load ptr, ptr %window61, align 8
  %62 = load ptr, ptr %s.addr, align 8
  %block_start62 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 23
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
  %strstart69 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 27
  %65 = load i32, ptr %strstart69, align 4
  %conv70 = zext i32 %65 to i64
  %66 = load ptr, ptr %s.addr, align 8
  %block_start71 = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 23
  %67 = load i64, ptr %block_start71, align 8
  %sub72 = sub nsw i64 %conv70, %67
  call void @_tr_flush_block(ptr noundef %57, ptr noundef %cond68, i64 noundef %sub72, i32 noundef 0)
  %68 = load ptr, ptr %s.addr, align 8
  %strstart73 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 27
  %69 = load i32, ptr %strstart73, align 4
  %conv74 = zext i32 %69 to i64
  %70 = load ptr, ptr %s.addr, align 8
  %block_start75 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 23
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
  %block_start84 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 23
  %78 = load i64, ptr %block_start84, align 8
  %cmp85 = icmp sge i64 %78, 0
  br i1 %cmp85, label %cond.true87, label %cond.false93

cond.true87:                                      ; preds = %for.end
  %79 = load ptr, ptr %s.addr, align 8
  %window88 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 14
  %80 = load ptr, ptr %window88, align 8
  %81 = load ptr, ptr %s.addr, align 8
  %block_start89 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 23
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
  %strstart96 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 27
  %84 = load i32, ptr %strstart96, align 4
  %conv97 = zext i32 %84 to i64
  %85 = load ptr, ptr %s.addr, align 8
  %block_start98 = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 23
  %86 = load i64, ptr %block_start98, align 8
  %sub99 = sub nsw i64 %conv97, %86
  %87 = load i32, ptr %flush.addr, align 4
  %cmp100 = icmp eq i32 %87, 4
  %conv101 = zext i1 %cmp100 to i32
  call void @_tr_flush_block(ptr noundef %76, ptr noundef %cond95, i64 noundef %sub99, i32 noundef %conv101)
  %88 = load ptr, ptr %s.addr, align 8
  %strstart102 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 27
  %89 = load i32, ptr %strstart102, align 4
  %conv103 = zext i32 %89 to i64
  %90 = load ptr, ptr %s.addr, align 8
  %block_start104 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 23
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

for.cond:                                         ; preds = %if.end229, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 29
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %3 = load ptr, ptr %s.addr, align 8
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 29
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
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 29
  %7 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %for.end

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %for.cond
  %8 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 29
  %9 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp uge i32 %9, 3
  br i1 %cmp11, label %if.then12, label %if.end28

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 18
  %11 = load i32, ptr %ins_h, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 22
  %13 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %11, %13
  %14 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 14
  %15 = load ptr, ptr %window, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 27
  %17 = load i32, ptr %strstart, align 4
  %add = add i32 %17, 2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %xor = xor i32 %shl, %conv
  %19 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 21
  %20 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %20
  %21 = load ptr, ptr %s.addr, align 8
  %ins_h13 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 18
  store i32 %and, ptr %ins_h13, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 17
  %23 = load ptr, ptr %head, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %ins_h14 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 18
  %25 = load i32, ptr %ins_h14, align 8
  %idxprom15 = zext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %23, i64 %idxprom15
  %26 = load i16, ptr %arrayidx16, align 2
  %27 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 16
  %28 = load ptr, ptr %prev, align 8
  %29 = load ptr, ptr %s.addr, align 8
  %strstart17 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 27
  %30 = load i32, ptr %strstart17, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 13
  %32 = load i32, ptr %w_mask, align 4
  %and18 = and i32 %30, %32
  %idxprom19 = zext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %28, i64 %idxprom19
  store i16 %26, ptr %arrayidx20, align 2
  %conv21 = zext i16 %26 to i32
  store i32 %conv21, ptr %hash_head, align 4
  %33 = load ptr, ptr %s.addr, align 8
  %strstart22 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 27
  %34 = load i32, ptr %strstart22, align 4
  %conv23 = trunc i32 %34 to i16
  %35 = load ptr, ptr %s.addr, align 8
  %head24 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 17
  %36 = load ptr, ptr %head24, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %ins_h25 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 18
  %38 = load i32, ptr %ins_h25, align 8
  %idxprom26 = zext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds i16, ptr %36, i64 %idxprom26
  store i16 %conv23, ptr %arrayidx27, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then12, %if.end9
  %39 = load i32, ptr %hash_head, align 4
  %cmp29 = icmp ne i32 %39, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.end57

land.lhs.true31:                                  ; preds = %if.end28
  %40 = load ptr, ptr %s.addr, align 8
  %strstart32 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 27
  %41 = load i32, ptr %strstart32, align 4
  %42 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %41, %42
  %43 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 11
  %44 = load i32, ptr %w_size, align 4
  %sub33 = sub i32 %44, 262
  %cmp34 = icmp ule i32 %sub, %sub33
  br i1 %cmp34, label %if.then36, label %if.end57

if.then36:                                        ; preds = %land.lhs.true31
  %45 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 34
  %46 = load i32, ptr %strategy, align 8
  %cmp37 = icmp ne i32 %46, 2
  br i1 %cmp37, label %land.lhs.true39, label %if.else

land.lhs.true39:                                  ; preds = %if.then36
  %47 = load ptr, ptr %s.addr, align 8
  %strategy40 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 34
  %48 = load i32, ptr %strategy40, align 8
  %cmp41 = icmp ne i32 %48, 3
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %land.lhs.true39
  %49 = load ptr, ptr %s.addr, align 8
  %50 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %49, i32 noundef %50)
  %51 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 24
  store i32 %call, ptr %match_length, align 8
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true39, %if.then36
  %52 = load ptr, ptr %s.addr, align 8
  %strategy44 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 34
  %53 = load i32, ptr %strategy44, align 8
  %cmp45 = icmp eq i32 %53, 3
  br i1 %cmp45, label %land.lhs.true47, label %if.end55

land.lhs.true47:                                  ; preds = %if.else
  %54 = load ptr, ptr %s.addr, align 8
  %strstart48 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 27
  %55 = load i32, ptr %strstart48, align 4
  %56 = load i32, ptr %hash_head, align 4
  %sub49 = sub i32 %55, %56
  %cmp50 = icmp eq i32 %sub49, 1
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %land.lhs.true47
  %57 = load ptr, ptr %s.addr, align 8
  %58 = load i32, ptr %hash_head, align 4
  %call53 = call i32 @longest_match_fast(ptr noundef %57, i32 noundef %58)
  %59 = load ptr, ptr %s.addr, align 8
  %match_length54 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 24
  store i32 %call53, ptr %match_length54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %land.lhs.true47, %if.else
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then43
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %land.lhs.true31, %if.end28
  %60 = load ptr, ptr %s.addr, align 8
  %match_length58 = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 24
  %61 = load i32, ptr %match_length58, align 8
  %cmp59 = icmp uge i32 %61, 3
  br i1 %cmp59, label %if.then61, label %if.else176

if.then61:                                        ; preds = %if.end57
  %62 = load ptr, ptr %s.addr, align 8
  %match_length62 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 24
  %63 = load i32, ptr %match_length62, align 8
  %sub63 = sub i32 %63, 3
  %conv64 = trunc i32 %sub63 to i8
  store i8 %conv64, ptr %len, align 1
  %64 = load ptr, ptr %s.addr, align 8
  %strstart65 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 27
  %65 = load i32, ptr %strstart65, align 4
  %66 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 28
  %67 = load i32, ptr %match_start, align 8
  %sub66 = sub i32 %65, %67
  %conv67 = trunc i32 %sub66 to i16
  store i16 %conv67, ptr %dist, align 2
  %68 = load i16, ptr %dist, align 2
  %69 = load ptr, ptr %s.addr, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 51
  %70 = load ptr, ptr %d_buf, align 8
  %71 = load ptr, ptr %s.addr, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 50
  %72 = load i32, ptr %last_lit, align 4
  %idxprom68 = zext i32 %72 to i64
  %arrayidx69 = getelementptr inbounds i16, ptr %70, i64 %idxprom68
  store i16 %68, ptr %arrayidx69, align 2
  %73 = load i8, ptr %len, align 1
  %74 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 48
  %75 = load ptr, ptr %l_buf, align 8
  %76 = load ptr, ptr %s.addr, align 8
  %last_lit70 = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 50
  %77 = load i32, ptr %last_lit70, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %last_lit70, align 4
  %idxprom71 = zext i32 %77 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %75, i64 %idxprom71
  store i8 %73, ptr %arrayidx72, align 1
  %78 = load i16, ptr %dist, align 2
  %dec = add i16 %78, -1
  store i16 %dec, ptr %dist, align 2
  %79 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 37
  %80 = load i8, ptr %len, align 1
  %idxprom73 = zext i8 %80 to i64
  %arrayidx74 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom73
  %81 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %81 to i32
  %add76 = add nsw i32 %conv75, 256
  %add77 = add nsw i32 %add76, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom78
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx79, i32 0, i32 0
  %82 = load i16, ptr %fc, align 4
  %inc80 = add i16 %82, 1
  store i16 %inc80, ptr %fc, align 4
  %83 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 38
  %84 = load i16, ptr %dist, align 2
  %conv81 = zext i16 %84 to i32
  %cmp82 = icmp slt i32 %conv81, 256
  br i1 %cmp82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then61
  %85 = load i16, ptr %dist, align 2
  %idxprom84 = zext i16 %85 to i64
  %arrayidx85 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom84
  %86 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %86 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then61
  %87 = load i16, ptr %dist, align 2
  %conv87 = zext i16 %87 to i32
  %shr = ashr i32 %conv87, 7
  %add88 = add nsw i32 256, %shr
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom89
  %88 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %88 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv86, %cond.true ], [ %conv91, %cond.false ]
  %idxprom92 = sext i32 %cond to i64
  %arrayidx93 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom92
  %fc94 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx93, i32 0, i32 0
  %89 = load i16, ptr %fc94, align 4
  %inc95 = add i16 %89, 1
  store i16 %inc95, ptr %fc94, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %last_lit96 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 50
  %91 = load i32, ptr %last_lit96, align 4
  %92 = load ptr, ptr %s.addr, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 49
  %93 = load i32, ptr %lit_bufsize, align 8
  %sub97 = sub i32 %93, 1
  %cmp98 = icmp eq i32 %91, %sub97
  %conv99 = zext i1 %cmp98 to i32
  store i32 %conv99, ptr %bflush, align 4
  %94 = load ptr, ptr %s.addr, align 8
  %match_length100 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 24
  %95 = load i32, ptr %match_length100, align 8
  %96 = load ptr, ptr %s.addr, align 8
  %lookahead101 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 29
  %97 = load i32, ptr %lookahead101, align 4
  %sub102 = sub i32 %97, %95
  store i32 %sub102, ptr %lookahead101, align 4
  %98 = load ptr, ptr %s.addr, align 8
  %match_length103 = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 24
  %99 = load i32, ptr %match_length103, align 8
  %100 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 32
  %101 = load i32, ptr %max_lazy_match, align 8
  %cmp104 = icmp ule i32 %99, %101
  br i1 %cmp104, label %land.lhs.true106, label %if.else151

land.lhs.true106:                                 ; preds = %cond.end
  %102 = load ptr, ptr %s.addr, align 8
  %lookahead107 = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 29
  %103 = load i32, ptr %lookahead107, align 4
  %cmp108 = icmp uge i32 %103, 3
  br i1 %cmp108, label %if.then110, label %if.else151

if.then110:                                       ; preds = %land.lhs.true106
  %104 = load ptr, ptr %s.addr, align 8
  %match_length111 = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 24
  %105 = load i32, ptr %match_length111, align 8
  %dec112 = add i32 %105, -1
  store i32 %dec112, ptr %match_length111, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then110
  %106 = load ptr, ptr %s.addr, align 8
  %strstart113 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 27
  %107 = load i32, ptr %strstart113, align 4
  %inc114 = add i32 %107, 1
  store i32 %inc114, ptr %strstart113, align 4
  %108 = load ptr, ptr %s.addr, align 8
  %ins_h115 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 18
  %109 = load i32, ptr %ins_h115, align 8
  %110 = load ptr, ptr %s.addr, align 8
  %hash_shift116 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 22
  %111 = load i32, ptr %hash_shift116, align 8
  %shl117 = shl i32 %109, %111
  %112 = load ptr, ptr %s.addr, align 8
  %window118 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 14
  %113 = load ptr, ptr %window118, align 8
  %114 = load ptr, ptr %s.addr, align 8
  %strstart119 = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 27
  %115 = load i32, ptr %strstart119, align 4
  %add120 = add i32 %115, 2
  %idxprom121 = zext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds i8, ptr %113, i64 %idxprom121
  %116 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %116 to i32
  %xor124 = xor i32 %shl117, %conv123
  %117 = load ptr, ptr %s.addr, align 8
  %hash_mask125 = getelementptr inbounds %struct.internal_state, ptr %117, i32 0, i32 21
  %118 = load i32, ptr %hash_mask125, align 4
  %and126 = and i32 %xor124, %118
  %119 = load ptr, ptr %s.addr, align 8
  %ins_h127 = getelementptr inbounds %struct.internal_state, ptr %119, i32 0, i32 18
  store i32 %and126, ptr %ins_h127, align 8
  %120 = load ptr, ptr %s.addr, align 8
  %head128 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 17
  %121 = load ptr, ptr %head128, align 8
  %122 = load ptr, ptr %s.addr, align 8
  %ins_h129 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 18
  %123 = load i32, ptr %ins_h129, align 8
  %idxprom130 = zext i32 %123 to i64
  %arrayidx131 = getelementptr inbounds i16, ptr %121, i64 %idxprom130
  %124 = load i16, ptr %arrayidx131, align 2
  %125 = load ptr, ptr %s.addr, align 8
  %prev132 = getelementptr inbounds %struct.internal_state, ptr %125, i32 0, i32 16
  %126 = load ptr, ptr %prev132, align 8
  %127 = load ptr, ptr %s.addr, align 8
  %strstart133 = getelementptr inbounds %struct.internal_state, ptr %127, i32 0, i32 27
  %128 = load i32, ptr %strstart133, align 4
  %129 = load ptr, ptr %s.addr, align 8
  %w_mask134 = getelementptr inbounds %struct.internal_state, ptr %129, i32 0, i32 13
  %130 = load i32, ptr %w_mask134, align 4
  %and135 = and i32 %128, %130
  %idxprom136 = zext i32 %and135 to i64
  %arrayidx137 = getelementptr inbounds i16, ptr %126, i64 %idxprom136
  store i16 %124, ptr %arrayidx137, align 2
  %conv138 = zext i16 %124 to i32
  store i32 %conv138, ptr %hash_head, align 4
  %131 = load ptr, ptr %s.addr, align 8
  %strstart139 = getelementptr inbounds %struct.internal_state, ptr %131, i32 0, i32 27
  %132 = load i32, ptr %strstart139, align 4
  %conv140 = trunc i32 %132 to i16
  %133 = load ptr, ptr %s.addr, align 8
  %head141 = getelementptr inbounds %struct.internal_state, ptr %133, i32 0, i32 17
  %134 = load ptr, ptr %head141, align 8
  %135 = load ptr, ptr %s.addr, align 8
  %ins_h142 = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 18
  %136 = load i32, ptr %ins_h142, align 8
  %idxprom143 = zext i32 %136 to i64
  %arrayidx144 = getelementptr inbounds i16, ptr %134, i64 %idxprom143
  store i16 %conv140, ptr %arrayidx144, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %137 = load ptr, ptr %s.addr, align 8
  %match_length145 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 24
  %138 = load i32, ptr %match_length145, align 8
  %dec146 = add i32 %138, -1
  store i32 %dec146, ptr %match_length145, align 8
  %cmp147 = icmp ne i32 %dec146, 0
  br i1 %cmp147, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
  %139 = load ptr, ptr %s.addr, align 8
  %strstart149 = getelementptr inbounds %struct.internal_state, ptr %139, i32 0, i32 27
  %140 = load i32, ptr %strstart149, align 4
  %inc150 = add i32 %140, 1
  store i32 %inc150, ptr %strstart149, align 4
  br label %if.end175

if.else151:                                       ; preds = %land.lhs.true106, %cond.end
  %141 = load ptr, ptr %s.addr, align 8
  %match_length152 = getelementptr inbounds %struct.internal_state, ptr %141, i32 0, i32 24
  %142 = load i32, ptr %match_length152, align 8
  %143 = load ptr, ptr %s.addr, align 8
  %strstart153 = getelementptr inbounds %struct.internal_state, ptr %143, i32 0, i32 27
  %144 = load i32, ptr %strstart153, align 4
  %add154 = add i32 %144, %142
  store i32 %add154, ptr %strstart153, align 4
  %145 = load ptr, ptr %s.addr, align 8
  %match_length155 = getelementptr inbounds %struct.internal_state, ptr %145, i32 0, i32 24
  store i32 0, ptr %match_length155, align 8
  %146 = load ptr, ptr %s.addr, align 8
  %window156 = getelementptr inbounds %struct.internal_state, ptr %146, i32 0, i32 14
  %147 = load ptr, ptr %window156, align 8
  %148 = load ptr, ptr %s.addr, align 8
  %strstart157 = getelementptr inbounds %struct.internal_state, ptr %148, i32 0, i32 27
  %149 = load i32, ptr %strstart157, align 4
  %idxprom158 = zext i32 %149 to i64
  %arrayidx159 = getelementptr inbounds i8, ptr %147, i64 %idxprom158
  %150 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %150 to i32
  %151 = load ptr, ptr %s.addr, align 8
  %ins_h161 = getelementptr inbounds %struct.internal_state, ptr %151, i32 0, i32 18
  store i32 %conv160, ptr %ins_h161, align 8
  %152 = load ptr, ptr %s.addr, align 8
  %ins_h162 = getelementptr inbounds %struct.internal_state, ptr %152, i32 0, i32 18
  %153 = load i32, ptr %ins_h162, align 8
  %154 = load ptr, ptr %s.addr, align 8
  %hash_shift163 = getelementptr inbounds %struct.internal_state, ptr %154, i32 0, i32 22
  %155 = load i32, ptr %hash_shift163, align 8
  %shl164 = shl i32 %153, %155
  %156 = load ptr, ptr %s.addr, align 8
  %window165 = getelementptr inbounds %struct.internal_state, ptr %156, i32 0, i32 14
  %157 = load ptr, ptr %window165, align 8
  %158 = load ptr, ptr %s.addr, align 8
  %strstart166 = getelementptr inbounds %struct.internal_state, ptr %158, i32 0, i32 27
  %159 = load i32, ptr %strstart166, align 4
  %add167 = add i32 %159, 1
  %idxprom168 = zext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds i8, ptr %157, i64 %idxprom168
  %160 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %160 to i32
  %xor171 = xor i32 %shl164, %conv170
  %161 = load ptr, ptr %s.addr, align 8
  %hash_mask172 = getelementptr inbounds %struct.internal_state, ptr %161, i32 0, i32 21
  %162 = load i32, ptr %hash_mask172, align 4
  %and173 = and i32 %xor171, %162
  %163 = load ptr, ptr %s.addr, align 8
  %ins_h174 = getelementptr inbounds %struct.internal_state, ptr %163, i32 0, i32 18
  store i32 %and173, ptr %ins_h174, align 8
  br label %if.end175

if.end175:                                        ; preds = %if.else151, %do.end
  br label %if.end204

if.else176:                                       ; preds = %if.end57
  %164 = load ptr, ptr %s.addr, align 8
  %window177 = getelementptr inbounds %struct.internal_state, ptr %164, i32 0, i32 14
  %165 = load ptr, ptr %window177, align 8
  %166 = load ptr, ptr %s.addr, align 8
  %strstart178 = getelementptr inbounds %struct.internal_state, ptr %166, i32 0, i32 27
  %167 = load i32, ptr %strstart178, align 4
  %idxprom179 = zext i32 %167 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %165, i64 %idxprom179
  %168 = load i8, ptr %arrayidx180, align 1
  store i8 %168, ptr %cc, align 1
  %169 = load ptr, ptr %s.addr, align 8
  %d_buf181 = getelementptr inbounds %struct.internal_state, ptr %169, i32 0, i32 51
  %170 = load ptr, ptr %d_buf181, align 8
  %171 = load ptr, ptr %s.addr, align 8
  %last_lit182 = getelementptr inbounds %struct.internal_state, ptr %171, i32 0, i32 50
  %172 = load i32, ptr %last_lit182, align 4
  %idxprom183 = zext i32 %172 to i64
  %arrayidx184 = getelementptr inbounds i16, ptr %170, i64 %idxprom183
  store i16 0, ptr %arrayidx184, align 2
  %173 = load i8, ptr %cc, align 1
  %174 = load ptr, ptr %s.addr, align 8
  %l_buf185 = getelementptr inbounds %struct.internal_state, ptr %174, i32 0, i32 48
  %175 = load ptr, ptr %l_buf185, align 8
  %176 = load ptr, ptr %s.addr, align 8
  %last_lit186 = getelementptr inbounds %struct.internal_state, ptr %176, i32 0, i32 50
  %177 = load i32, ptr %last_lit186, align 4
  %inc187 = add i32 %177, 1
  store i32 %inc187, ptr %last_lit186, align 4
  %idxprom188 = zext i32 %177 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %175, i64 %idxprom188
  store i8 %173, ptr %arrayidx189, align 1
  %178 = load ptr, ptr %s.addr, align 8
  %dyn_ltree190 = getelementptr inbounds %struct.internal_state, ptr %178, i32 0, i32 37
  %179 = load i8, ptr %cc, align 1
  %idxprom191 = zext i8 %179 to i64
  %arrayidx192 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree190, i64 0, i64 %idxprom191
  %fc193 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx192, i32 0, i32 0
  %180 = load i16, ptr %fc193, align 4
  %inc194 = add i16 %180, 1
  store i16 %inc194, ptr %fc193, align 4
  %181 = load ptr, ptr %s.addr, align 8
  %last_lit195 = getelementptr inbounds %struct.internal_state, ptr %181, i32 0, i32 50
  %182 = load i32, ptr %last_lit195, align 4
  %183 = load ptr, ptr %s.addr, align 8
  %lit_bufsize196 = getelementptr inbounds %struct.internal_state, ptr %183, i32 0, i32 49
  %184 = load i32, ptr %lit_bufsize196, align 8
  %sub197 = sub i32 %184, 1
  %cmp198 = icmp eq i32 %182, %sub197
  %conv199 = zext i1 %cmp198 to i32
  store i32 %conv199, ptr %bflush, align 4
  %185 = load ptr, ptr %s.addr, align 8
  %lookahead200 = getelementptr inbounds %struct.internal_state, ptr %185, i32 0, i32 29
  %186 = load i32, ptr %lookahead200, align 4
  %dec201 = add i32 %186, -1
  store i32 %dec201, ptr %lookahead200, align 4
  %187 = load ptr, ptr %s.addr, align 8
  %strstart202 = getelementptr inbounds %struct.internal_state, ptr %187, i32 0, i32 27
  %188 = load i32, ptr %strstart202, align 4
  %inc203 = add i32 %188, 1
  store i32 %inc203, ptr %strstart202, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.else176, %if.end175
  %189 = load i32, ptr %bflush, align 4
  %tobool = icmp ne i32 %189, 0
  br i1 %tobool, label %if.then205, label %if.end229

if.then205:                                       ; preds = %if.end204
  %190 = load ptr, ptr %s.addr, align 8
  %191 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %191, i32 0, i32 23
  %192 = load i64, ptr %block_start, align 8
  %cmp206 = icmp sge i64 %192, 0
  br i1 %cmp206, label %cond.true208, label %cond.false214

cond.true208:                                     ; preds = %if.then205
  %193 = load ptr, ptr %s.addr, align 8
  %window209 = getelementptr inbounds %struct.internal_state, ptr %193, i32 0, i32 14
  %194 = load ptr, ptr %window209, align 8
  %195 = load ptr, ptr %s.addr, align 8
  %block_start210 = getelementptr inbounds %struct.internal_state, ptr %195, i32 0, i32 23
  %196 = load i64, ptr %block_start210, align 8
  %conv211 = trunc i64 %196 to i32
  %idxprom212 = zext i32 %conv211 to i64
  %arrayidx213 = getelementptr inbounds i8, ptr %194, i64 %idxprom212
  br label %cond.end215

cond.false214:                                    ; preds = %if.then205
  br label %cond.end215

cond.end215:                                      ; preds = %cond.false214, %cond.true208
  %cond216 = phi ptr [ %arrayidx213, %cond.true208 ], [ null, %cond.false214 ]
  %197 = load ptr, ptr %s.addr, align 8
  %strstart217 = getelementptr inbounds %struct.internal_state, ptr %197, i32 0, i32 27
  %198 = load i32, ptr %strstart217, align 4
  %conv218 = zext i32 %198 to i64
  %199 = load ptr, ptr %s.addr, align 8
  %block_start219 = getelementptr inbounds %struct.internal_state, ptr %199, i32 0, i32 23
  %200 = load i64, ptr %block_start219, align 8
  %sub220 = sub nsw i64 %conv218, %200
  call void @_tr_flush_block(ptr noundef %190, ptr noundef %cond216, i64 noundef %sub220, i32 noundef 0)
  %201 = load ptr, ptr %s.addr, align 8
  %strstart221 = getelementptr inbounds %struct.internal_state, ptr %201, i32 0, i32 27
  %202 = load i32, ptr %strstart221, align 4
  %conv222 = zext i32 %202 to i64
  %203 = load ptr, ptr %s.addr, align 8
  %block_start223 = getelementptr inbounds %struct.internal_state, ptr %203, i32 0, i32 23
  store i64 %conv222, ptr %block_start223, align 8
  %204 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %204, i32 0, i32 0
  %205 = load ptr, ptr %strm, align 8
  call void @flush_pending(ptr noundef %205)
  %206 = load ptr, ptr %s.addr, align 8
  %strm224 = getelementptr inbounds %struct.internal_state, ptr %206, i32 0, i32 0
  %207 = load ptr, ptr %strm224, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %207, i32 0, i32 4
  %208 = load i32, ptr %avail_out, align 8
  %cmp225 = icmp eq i32 %208, 0
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %cond.end215
  store i32 0, ptr %retval, align 4
  br label %return

if.end228:                                        ; preds = %cond.end215
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %if.end204
  br label %for.cond

for.end:                                          ; preds = %if.then7
  %209 = load ptr, ptr %s.addr, align 8
  %210 = load ptr, ptr %s.addr, align 8
  %block_start230 = getelementptr inbounds %struct.internal_state, ptr %210, i32 0, i32 23
  %211 = load i64, ptr %block_start230, align 8
  %cmp231 = icmp sge i64 %211, 0
  br i1 %cmp231, label %cond.true233, label %cond.false239

cond.true233:                                     ; preds = %for.end
  %212 = load ptr, ptr %s.addr, align 8
  %window234 = getelementptr inbounds %struct.internal_state, ptr %212, i32 0, i32 14
  %213 = load ptr, ptr %window234, align 8
  %214 = load ptr, ptr %s.addr, align 8
  %block_start235 = getelementptr inbounds %struct.internal_state, ptr %214, i32 0, i32 23
  %215 = load i64, ptr %block_start235, align 8
  %conv236 = trunc i64 %215 to i32
  %idxprom237 = zext i32 %conv236 to i64
  %arrayidx238 = getelementptr inbounds i8, ptr %213, i64 %idxprom237
  br label %cond.end240

cond.false239:                                    ; preds = %for.end
  br label %cond.end240

cond.end240:                                      ; preds = %cond.false239, %cond.true233
  %cond241 = phi ptr [ %arrayidx238, %cond.true233 ], [ null, %cond.false239 ]
  %216 = load ptr, ptr %s.addr, align 8
  %strstart242 = getelementptr inbounds %struct.internal_state, ptr %216, i32 0, i32 27
  %217 = load i32, ptr %strstart242, align 4
  %conv243 = zext i32 %217 to i64
  %218 = load ptr, ptr %s.addr, align 8
  %block_start244 = getelementptr inbounds %struct.internal_state, ptr %218, i32 0, i32 23
  %219 = load i64, ptr %block_start244, align 8
  %sub245 = sub nsw i64 %conv243, %219
  %220 = load i32, ptr %flush.addr, align 4
  %cmp246 = icmp eq i32 %220, 4
  %conv247 = zext i1 %cmp246 to i32
  call void @_tr_flush_block(ptr noundef %209, ptr noundef %cond241, i64 noundef %sub245, i32 noundef %conv247)
  %221 = load ptr, ptr %s.addr, align 8
  %strstart248 = getelementptr inbounds %struct.internal_state, ptr %221, i32 0, i32 27
  %222 = load i32, ptr %strstart248, align 4
  %conv249 = zext i32 %222 to i64
  %223 = load ptr, ptr %s.addr, align 8
  %block_start250 = getelementptr inbounds %struct.internal_state, ptr %223, i32 0, i32 23
  store i64 %conv249, ptr %block_start250, align 8
  %224 = load ptr, ptr %s.addr, align 8
  %strm251 = getelementptr inbounds %struct.internal_state, ptr %224, i32 0, i32 0
  %225 = load ptr, ptr %strm251, align 8
  call void @flush_pending(ptr noundef %225)
  %226 = load ptr, ptr %s.addr, align 8
  %strm252 = getelementptr inbounds %struct.internal_state, ptr %226, i32 0, i32 0
  %227 = load ptr, ptr %strm252, align 8
  %avail_out253 = getelementptr inbounds %struct.z_stream_s, ptr %227, i32 0, i32 4
  %228 = load i32, ptr %avail_out253, align 8
  %cmp254 = icmp eq i32 %228, 0
  br i1 %cmp254, label %if.then256, label %if.end260

if.then256:                                       ; preds = %cond.end240
  %229 = load i32, ptr %flush.addr, align 4
  %cmp257 = icmp eq i32 %229, 4
  %230 = zext i1 %cmp257 to i64
  %cond259 = select i1 %cmp257, i32 2, i32 0
  store i32 %cond259, ptr %retval, align 4
  br label %return

if.end260:                                        ; preds = %cond.end240
  %231 = load i32, ptr %flush.addr, align 4
  %cmp261 = icmp eq i32 %231, 4
  %232 = zext i1 %cmp261 to i64
  %cond263 = select i1 %cmp261, i32 3, i32 1
  store i32 %cond263, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end260, %if.then256, %if.then227, %if.then4
  %233 = load i32, ptr %retval, align 4
  ret i32 %233
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
  %cc282 = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  store i32 0, ptr %hash_head, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end278, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 29
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %3 = load ptr, ptr %s.addr, align 8
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 29
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
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 29
  %7 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %for.end

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %for.cond
  %8 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 29
  %9 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp uge i32 %9, 3
  br i1 %cmp11, label %if.then12, label %if.end28

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 18
  %11 = load i32, ptr %ins_h, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 22
  %13 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %11, %13
  %14 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 14
  %15 = load ptr, ptr %window, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 27
  %17 = load i32, ptr %strstart, align 4
  %add = add i32 %17, 2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %xor = xor i32 %shl, %conv
  %19 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 21
  %20 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %20
  %21 = load ptr, ptr %s.addr, align 8
  %ins_h13 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 18
  store i32 %and, ptr %ins_h13, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 17
  %23 = load ptr, ptr %head, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %ins_h14 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 18
  %25 = load i32, ptr %ins_h14, align 8
  %idxprom15 = zext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %23, i64 %idxprom15
  %26 = load i16, ptr %arrayidx16, align 2
  %27 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 16
  %28 = load ptr, ptr %prev, align 8
  %29 = load ptr, ptr %s.addr, align 8
  %strstart17 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 27
  %30 = load i32, ptr %strstart17, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 13
  %32 = load i32, ptr %w_mask, align 4
  %and18 = and i32 %30, %32
  %idxprom19 = zext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %28, i64 %idxprom19
  store i16 %26, ptr %arrayidx20, align 2
  %conv21 = zext i16 %26 to i32
  store i32 %conv21, ptr %hash_head, align 4
  %33 = load ptr, ptr %s.addr, align 8
  %strstart22 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 27
  %34 = load i32, ptr %strstart22, align 4
  %conv23 = trunc i32 %34 to i16
  %35 = load ptr, ptr %s.addr, align 8
  %head24 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 17
  %36 = load ptr, ptr %head24, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %ins_h25 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 18
  %38 = load i32, ptr %ins_h25, align 8
  %idxprom26 = zext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds i16, ptr %36, i64 %idxprom26
  store i16 %conv23, ptr %arrayidx27, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then12, %if.end9
  %39 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 24
  %40 = load i32, ptr %match_length, align 8
  %41 = load ptr, ptr %s.addr, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 30
  store i32 %40, ptr %prev_length, align 8
  %42 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 28
  %43 = load i32, ptr %match_start, align 8
  %44 = load ptr, ptr %s.addr, align 8
  %prev_match = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 25
  store i32 %43, ptr %prev_match, align 4
  %45 = load ptr, ptr %s.addr, align 8
  %match_length29 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 24
  store i32 2, ptr %match_length29, align 8
  %46 = load i32, ptr %hash_head, align 4
  %cmp30 = icmp ne i32 %46, 0
  br i1 %cmp30, label %land.lhs.true32, label %if.end82

land.lhs.true32:                                  ; preds = %if.end28
  %47 = load ptr, ptr %s.addr, align 8
  %prev_length33 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 30
  %48 = load i32, ptr %prev_length33, align 8
  %49 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 32
  %50 = load i32, ptr %max_lazy_match, align 8
  %cmp34 = icmp ult i32 %48, %50
  br i1 %cmp34, label %land.lhs.true36, label %if.end82

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %51 = load ptr, ptr %s.addr, align 8
  %strstart37 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 27
  %52 = load i32, ptr %strstart37, align 4
  %53 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %52, %53
  %54 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 11
  %55 = load i32, ptr %w_size, align 4
  %sub38 = sub i32 %55, 262
  %cmp39 = icmp ule i32 %sub, %sub38
  br i1 %cmp39, label %if.then41, label %if.end82

if.then41:                                        ; preds = %land.lhs.true36
  %56 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 34
  %57 = load i32, ptr %strategy, align 8
  %cmp42 = icmp ne i32 %57, 2
  br i1 %cmp42, label %land.lhs.true44, label %if.else

land.lhs.true44:                                  ; preds = %if.then41
  %58 = load ptr, ptr %s.addr, align 8
  %strategy45 = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 34
  %59 = load i32, ptr %strategy45, align 8
  %cmp46 = icmp ne i32 %59, 3
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %land.lhs.true44
  %60 = load ptr, ptr %s.addr, align 8
  %61 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %60, i32 noundef %61)
  %62 = load ptr, ptr %s.addr, align 8
  %match_length49 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 24
  store i32 %call, ptr %match_length49, align 8
  br label %if.end62

if.else:                                          ; preds = %land.lhs.true44, %if.then41
  %63 = load ptr, ptr %s.addr, align 8
  %strategy50 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 34
  %64 = load i32, ptr %strategy50, align 8
  %cmp51 = icmp eq i32 %64, 3
  br i1 %cmp51, label %land.lhs.true53, label %if.end61

land.lhs.true53:                                  ; preds = %if.else
  %65 = load ptr, ptr %s.addr, align 8
  %strstart54 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 27
  %66 = load i32, ptr %strstart54, align 4
  %67 = load i32, ptr %hash_head, align 4
  %sub55 = sub i32 %66, %67
  %cmp56 = icmp eq i32 %sub55, 1
  br i1 %cmp56, label %if.then58, label %if.end61

if.then58:                                        ; preds = %land.lhs.true53
  %68 = load ptr, ptr %s.addr, align 8
  %69 = load i32, ptr %hash_head, align 4
  %call59 = call i32 @longest_match_fast(ptr noundef %68, i32 noundef %69)
  %70 = load ptr, ptr %s.addr, align 8
  %match_length60 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 24
  store i32 %call59, ptr %match_length60, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %land.lhs.true53, %if.else
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then48
  %71 = load ptr, ptr %s.addr, align 8
  %match_length63 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 24
  %72 = load i32, ptr %match_length63, align 8
  %cmp64 = icmp ule i32 %72, 5
  br i1 %cmp64, label %land.lhs.true66, label %if.end81

land.lhs.true66:                                  ; preds = %if.end62
  %73 = load ptr, ptr %s.addr, align 8
  %strategy67 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 34
  %74 = load i32, ptr %strategy67, align 8
  %cmp68 = icmp eq i32 %74, 1
  br i1 %cmp68, label %if.then79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true66
  %75 = load ptr, ptr %s.addr, align 8
  %match_length70 = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 24
  %76 = load i32, ptr %match_length70, align 8
  %cmp71 = icmp eq i32 %76, 3
  br i1 %cmp71, label %land.lhs.true73, label %if.end81

land.lhs.true73:                                  ; preds = %lor.lhs.false
  %77 = load ptr, ptr %s.addr, align 8
  %strstart74 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 27
  %78 = load i32, ptr %strstart74, align 4
  %79 = load ptr, ptr %s.addr, align 8
  %match_start75 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 28
  %80 = load i32, ptr %match_start75, align 8
  %sub76 = sub i32 %78, %80
  %cmp77 = icmp ugt i32 %sub76, 4096
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %land.lhs.true73, %land.lhs.true66
  %81 = load ptr, ptr %s.addr, align 8
  %match_length80 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 24
  store i32 2, ptr %match_length80, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %land.lhs.true73, %lor.lhs.false, %if.end62
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %land.lhs.true36, %land.lhs.true32, %if.end28
  %82 = load ptr, ptr %s.addr, align 8
  %prev_length83 = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 30
  %83 = load i32, ptr %prev_length83, align 8
  %cmp84 = icmp uge i32 %83, 3
  br i1 %cmp84, label %land.lhs.true86, label %if.else210

land.lhs.true86:                                  ; preds = %if.end82
  %84 = load ptr, ptr %s.addr, align 8
  %match_length87 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 24
  %85 = load i32, ptr %match_length87, align 8
  %86 = load ptr, ptr %s.addr, align 8
  %prev_length88 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 30
  %87 = load i32, ptr %prev_length88, align 8
  %cmp89 = icmp ule i32 %85, %87
  br i1 %cmp89, label %if.then91, label %if.else210

if.then91:                                        ; preds = %land.lhs.true86
  %88 = load ptr, ptr %s.addr, align 8
  %strstart92 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 27
  %89 = load i32, ptr %strstart92, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %lookahead93 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 29
  %91 = load i32, ptr %lookahead93, align 4
  %add94 = add i32 %89, %91
  %sub95 = sub i32 %add94, 3
  store i32 %sub95, ptr %max_insert, align 4
  %92 = load ptr, ptr %s.addr, align 8
  %prev_length96 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 30
  %93 = load i32, ptr %prev_length96, align 8
  %sub97 = sub i32 %93, 3
  %conv98 = trunc i32 %sub97 to i8
  store i8 %conv98, ptr %len, align 1
  %94 = load ptr, ptr %s.addr, align 8
  %strstart99 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 27
  %95 = load i32, ptr %strstart99, align 4
  %sub100 = sub i32 %95, 1
  %96 = load ptr, ptr %s.addr, align 8
  %prev_match101 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 25
  %97 = load i32, ptr %prev_match101, align 4
  %sub102 = sub i32 %sub100, %97
  %conv103 = trunc i32 %sub102 to i16
  store i16 %conv103, ptr %dist, align 2
  %98 = load i16, ptr %dist, align 2
  %99 = load ptr, ptr %s.addr, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %99, i32 0, i32 51
  %100 = load ptr, ptr %d_buf, align 8
  %101 = load ptr, ptr %s.addr, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 50
  %102 = load i32, ptr %last_lit, align 4
  %idxprom104 = zext i32 %102 to i64
  %arrayidx105 = getelementptr inbounds i16, ptr %100, i64 %idxprom104
  store i16 %98, ptr %arrayidx105, align 2
  %103 = load i8, ptr %len, align 1
  %104 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 48
  %105 = load ptr, ptr %l_buf, align 8
  %106 = load ptr, ptr %s.addr, align 8
  %last_lit106 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 50
  %107 = load i32, ptr %last_lit106, align 4
  %inc = add i32 %107, 1
  store i32 %inc, ptr %last_lit106, align 4
  %idxprom107 = zext i32 %107 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %105, i64 %idxprom107
  store i8 %103, ptr %arrayidx108, align 1
  %108 = load i16, ptr %dist, align 2
  %dec = add i16 %108, -1
  store i16 %dec, ptr %dist, align 2
  %109 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %109, i32 0, i32 37
  %110 = load i8, ptr %len, align 1
  %idxprom109 = zext i8 %110 to i64
  %arrayidx110 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom109
  %111 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %111 to i32
  %add112 = add nsw i32 %conv111, 256
  %add113 = add nsw i32 %add112, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom114
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx115, i32 0, i32 0
  %112 = load i16, ptr %fc, align 4
  %inc116 = add i16 %112, 1
  store i16 %inc116, ptr %fc, align 4
  %113 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 38
  %114 = load i16, ptr %dist, align 2
  %conv117 = zext i16 %114 to i32
  %cmp118 = icmp slt i32 %conv117, 256
  br i1 %cmp118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then91
  %115 = load i16, ptr %dist, align 2
  %idxprom120 = zext i16 %115 to i64
  %arrayidx121 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom120
  %116 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %116 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then91
  %117 = load i16, ptr %dist, align 2
  %conv123 = zext i16 %117 to i32
  %shr = ashr i32 %conv123, 7
  %add124 = add nsw i32 256, %shr
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom125
  %118 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %118 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv122, %cond.true ], [ %conv127, %cond.false ]
  %idxprom128 = sext i32 %cond to i64
  %arrayidx129 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom128
  %fc130 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx129, i32 0, i32 0
  %119 = load i16, ptr %fc130, align 4
  %inc131 = add i16 %119, 1
  store i16 %inc131, ptr %fc130, align 4
  %120 = load ptr, ptr %s.addr, align 8
  %last_lit132 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 50
  %121 = load i32, ptr %last_lit132, align 4
  %122 = load ptr, ptr %s.addr, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 49
  %123 = load i32, ptr %lit_bufsize, align 8
  %sub133 = sub i32 %123, 1
  %cmp134 = icmp eq i32 %121, %sub133
  %conv135 = zext i1 %cmp134 to i32
  store i32 %conv135, ptr %bflush, align 4
  %124 = load ptr, ptr %s.addr, align 8
  %prev_length136 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 30
  %125 = load i32, ptr %prev_length136, align 8
  %sub137 = sub i32 %125, 1
  %126 = load ptr, ptr %s.addr, align 8
  %lookahead138 = getelementptr inbounds %struct.internal_state, ptr %126, i32 0, i32 29
  %127 = load i32, ptr %lookahead138, align 4
  %sub139 = sub i32 %127, %sub137
  store i32 %sub139, ptr %lookahead138, align 4
  %128 = load ptr, ptr %s.addr, align 8
  %prev_length140 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 30
  %129 = load i32, ptr %prev_length140, align 8
  %sub141 = sub i32 %129, 2
  store i32 %sub141, ptr %prev_length140, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %130 = load ptr, ptr %s.addr, align 8
  %strstart142 = getelementptr inbounds %struct.internal_state, ptr %130, i32 0, i32 27
  %131 = load i32, ptr %strstart142, align 4
  %inc143 = add i32 %131, 1
  store i32 %inc143, ptr %strstart142, align 4
  %132 = load i32, ptr %max_insert, align 4
  %cmp144 = icmp ule i32 %inc143, %132
  br i1 %cmp144, label %if.then146, label %if.end177

if.then146:                                       ; preds = %do.body
  %133 = load ptr, ptr %s.addr, align 8
  %ins_h147 = getelementptr inbounds %struct.internal_state, ptr %133, i32 0, i32 18
  %134 = load i32, ptr %ins_h147, align 8
  %135 = load ptr, ptr %s.addr, align 8
  %hash_shift148 = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 22
  %136 = load i32, ptr %hash_shift148, align 8
  %shl149 = shl i32 %134, %136
  %137 = load ptr, ptr %s.addr, align 8
  %window150 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 14
  %138 = load ptr, ptr %window150, align 8
  %139 = load ptr, ptr %s.addr, align 8
  %strstart151 = getelementptr inbounds %struct.internal_state, ptr %139, i32 0, i32 27
  %140 = load i32, ptr %strstart151, align 4
  %add152 = add i32 %140, 2
  %idxprom153 = zext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds i8, ptr %138, i64 %idxprom153
  %141 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %141 to i32
  %xor156 = xor i32 %shl149, %conv155
  %142 = load ptr, ptr %s.addr, align 8
  %hash_mask157 = getelementptr inbounds %struct.internal_state, ptr %142, i32 0, i32 21
  %143 = load i32, ptr %hash_mask157, align 4
  %and158 = and i32 %xor156, %143
  %144 = load ptr, ptr %s.addr, align 8
  %ins_h159 = getelementptr inbounds %struct.internal_state, ptr %144, i32 0, i32 18
  store i32 %and158, ptr %ins_h159, align 8
  %145 = load ptr, ptr %s.addr, align 8
  %head160 = getelementptr inbounds %struct.internal_state, ptr %145, i32 0, i32 17
  %146 = load ptr, ptr %head160, align 8
  %147 = load ptr, ptr %s.addr, align 8
  %ins_h161 = getelementptr inbounds %struct.internal_state, ptr %147, i32 0, i32 18
  %148 = load i32, ptr %ins_h161, align 8
  %idxprom162 = zext i32 %148 to i64
  %arrayidx163 = getelementptr inbounds i16, ptr %146, i64 %idxprom162
  %149 = load i16, ptr %arrayidx163, align 2
  %150 = load ptr, ptr %s.addr, align 8
  %prev164 = getelementptr inbounds %struct.internal_state, ptr %150, i32 0, i32 16
  %151 = load ptr, ptr %prev164, align 8
  %152 = load ptr, ptr %s.addr, align 8
  %strstart165 = getelementptr inbounds %struct.internal_state, ptr %152, i32 0, i32 27
  %153 = load i32, ptr %strstart165, align 4
  %154 = load ptr, ptr %s.addr, align 8
  %w_mask166 = getelementptr inbounds %struct.internal_state, ptr %154, i32 0, i32 13
  %155 = load i32, ptr %w_mask166, align 4
  %and167 = and i32 %153, %155
  %idxprom168 = zext i32 %and167 to i64
  %arrayidx169 = getelementptr inbounds i16, ptr %151, i64 %idxprom168
  store i16 %149, ptr %arrayidx169, align 2
  %conv170 = zext i16 %149 to i32
  store i32 %conv170, ptr %hash_head, align 4
  %156 = load ptr, ptr %s.addr, align 8
  %strstart171 = getelementptr inbounds %struct.internal_state, ptr %156, i32 0, i32 27
  %157 = load i32, ptr %strstart171, align 4
  %conv172 = trunc i32 %157 to i16
  %158 = load ptr, ptr %s.addr, align 8
  %head173 = getelementptr inbounds %struct.internal_state, ptr %158, i32 0, i32 17
  %159 = load ptr, ptr %head173, align 8
  %160 = load ptr, ptr %s.addr, align 8
  %ins_h174 = getelementptr inbounds %struct.internal_state, ptr %160, i32 0, i32 18
  %161 = load i32, ptr %ins_h174, align 8
  %idxprom175 = zext i32 %161 to i64
  %arrayidx176 = getelementptr inbounds i16, ptr %159, i64 %idxprom175
  store i16 %conv172, ptr %arrayidx176, align 2
  br label %if.end177

if.end177:                                        ; preds = %if.then146, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end177
  %162 = load ptr, ptr %s.addr, align 8
  %prev_length178 = getelementptr inbounds %struct.internal_state, ptr %162, i32 0, i32 30
  %163 = load i32, ptr %prev_length178, align 8
  %dec179 = add i32 %163, -1
  store i32 %dec179, ptr %prev_length178, align 8
  %cmp180 = icmp ne i32 %dec179, 0
  br i1 %cmp180, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.cond
  %164 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %164, i32 0, i32 26
  store i32 0, ptr %match_available, align 8
  %165 = load ptr, ptr %s.addr, align 8
  %match_length182 = getelementptr inbounds %struct.internal_state, ptr %165, i32 0, i32 24
  store i32 2, ptr %match_length182, align 8
  %166 = load ptr, ptr %s.addr, align 8
  %strstart183 = getelementptr inbounds %struct.internal_state, ptr %166, i32 0, i32 27
  %167 = load i32, ptr %strstart183, align 4
  %inc184 = add i32 %167, 1
  store i32 %inc184, ptr %strstart183, align 4
  %168 = load i32, ptr %bflush, align 4
  %tobool = icmp ne i32 %168, 0
  br i1 %tobool, label %if.then185, label %if.end209

if.then185:                                       ; preds = %do.end
  %169 = load ptr, ptr %s.addr, align 8
  %170 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %170, i32 0, i32 23
  %171 = load i64, ptr %block_start, align 8
  %cmp186 = icmp sge i64 %171, 0
  br i1 %cmp186, label %cond.true188, label %cond.false194

cond.true188:                                     ; preds = %if.then185
  %172 = load ptr, ptr %s.addr, align 8
  %window189 = getelementptr inbounds %struct.internal_state, ptr %172, i32 0, i32 14
  %173 = load ptr, ptr %window189, align 8
  %174 = load ptr, ptr %s.addr, align 8
  %block_start190 = getelementptr inbounds %struct.internal_state, ptr %174, i32 0, i32 23
  %175 = load i64, ptr %block_start190, align 8
  %conv191 = trunc i64 %175 to i32
  %idxprom192 = zext i32 %conv191 to i64
  %arrayidx193 = getelementptr inbounds i8, ptr %173, i64 %idxprom192
  br label %cond.end195

cond.false194:                                    ; preds = %if.then185
  br label %cond.end195

cond.end195:                                      ; preds = %cond.false194, %cond.true188
  %cond196 = phi ptr [ %arrayidx193, %cond.true188 ], [ null, %cond.false194 ]
  %176 = load ptr, ptr %s.addr, align 8
  %strstart197 = getelementptr inbounds %struct.internal_state, ptr %176, i32 0, i32 27
  %177 = load i32, ptr %strstart197, align 4
  %conv198 = zext i32 %177 to i64
  %178 = load ptr, ptr %s.addr, align 8
  %block_start199 = getelementptr inbounds %struct.internal_state, ptr %178, i32 0, i32 23
  %179 = load i64, ptr %block_start199, align 8
  %sub200 = sub nsw i64 %conv198, %179
  call void @_tr_flush_block(ptr noundef %169, ptr noundef %cond196, i64 noundef %sub200, i32 noundef 0)
  %180 = load ptr, ptr %s.addr, align 8
  %strstart201 = getelementptr inbounds %struct.internal_state, ptr %180, i32 0, i32 27
  %181 = load i32, ptr %strstart201, align 4
  %conv202 = zext i32 %181 to i64
  %182 = load ptr, ptr %s.addr, align 8
  %block_start203 = getelementptr inbounds %struct.internal_state, ptr %182, i32 0, i32 23
  store i64 %conv202, ptr %block_start203, align 8
  %183 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %183, i32 0, i32 0
  %184 = load ptr, ptr %strm, align 8
  call void @flush_pending(ptr noundef %184)
  %185 = load ptr, ptr %s.addr, align 8
  %strm204 = getelementptr inbounds %struct.internal_state, ptr %185, i32 0, i32 0
  %186 = load ptr, ptr %strm204, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %186, i32 0, i32 4
  %187 = load i32, ptr %avail_out, align 8
  %cmp205 = icmp eq i32 %187, 0
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %cond.end195
  store i32 0, ptr %retval, align 4
  br label %return

if.end208:                                        ; preds = %cond.end195
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %do.end
  br label %if.end278

if.else210:                                       ; preds = %land.lhs.true86, %if.end82
  %188 = load ptr, ptr %s.addr, align 8
  %match_available211 = getelementptr inbounds %struct.internal_state, ptr %188, i32 0, i32 26
  %189 = load i32, ptr %match_available211, align 8
  %tobool212 = icmp ne i32 %189, 0
  br i1 %tobool212, label %if.then213, label %if.else271

if.then213:                                       ; preds = %if.else210
  %190 = load ptr, ptr %s.addr, align 8
  %window214 = getelementptr inbounds %struct.internal_state, ptr %190, i32 0, i32 14
  %191 = load ptr, ptr %window214, align 8
  %192 = load ptr, ptr %s.addr, align 8
  %strstart215 = getelementptr inbounds %struct.internal_state, ptr %192, i32 0, i32 27
  %193 = load i32, ptr %strstart215, align 4
  %sub216 = sub i32 %193, 1
  %idxprom217 = zext i32 %sub216 to i64
  %arrayidx218 = getelementptr inbounds i8, ptr %191, i64 %idxprom217
  %194 = load i8, ptr %arrayidx218, align 1
  store i8 %194, ptr %cc, align 1
  %195 = load ptr, ptr %s.addr, align 8
  %d_buf219 = getelementptr inbounds %struct.internal_state, ptr %195, i32 0, i32 51
  %196 = load ptr, ptr %d_buf219, align 8
  %197 = load ptr, ptr %s.addr, align 8
  %last_lit220 = getelementptr inbounds %struct.internal_state, ptr %197, i32 0, i32 50
  %198 = load i32, ptr %last_lit220, align 4
  %idxprom221 = zext i32 %198 to i64
  %arrayidx222 = getelementptr inbounds i16, ptr %196, i64 %idxprom221
  store i16 0, ptr %arrayidx222, align 2
  %199 = load i8, ptr %cc, align 1
  %200 = load ptr, ptr %s.addr, align 8
  %l_buf223 = getelementptr inbounds %struct.internal_state, ptr %200, i32 0, i32 48
  %201 = load ptr, ptr %l_buf223, align 8
  %202 = load ptr, ptr %s.addr, align 8
  %last_lit224 = getelementptr inbounds %struct.internal_state, ptr %202, i32 0, i32 50
  %203 = load i32, ptr %last_lit224, align 4
  %inc225 = add i32 %203, 1
  store i32 %inc225, ptr %last_lit224, align 4
  %idxprom226 = zext i32 %203 to i64
  %arrayidx227 = getelementptr inbounds i8, ptr %201, i64 %idxprom226
  store i8 %199, ptr %arrayidx227, align 1
  %204 = load ptr, ptr %s.addr, align 8
  %dyn_ltree228 = getelementptr inbounds %struct.internal_state, ptr %204, i32 0, i32 37
  %205 = load i8, ptr %cc, align 1
  %idxprom229 = zext i8 %205 to i64
  %arrayidx230 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree228, i64 0, i64 %idxprom229
  %fc231 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx230, i32 0, i32 0
  %206 = load i16, ptr %fc231, align 4
  %inc232 = add i16 %206, 1
  store i16 %inc232, ptr %fc231, align 4
  %207 = load ptr, ptr %s.addr, align 8
  %last_lit233 = getelementptr inbounds %struct.internal_state, ptr %207, i32 0, i32 50
  %208 = load i32, ptr %last_lit233, align 4
  %209 = load ptr, ptr %s.addr, align 8
  %lit_bufsize234 = getelementptr inbounds %struct.internal_state, ptr %209, i32 0, i32 49
  %210 = load i32, ptr %lit_bufsize234, align 8
  %sub235 = sub i32 %210, 1
  %cmp236 = icmp eq i32 %208, %sub235
  %conv237 = zext i1 %cmp236 to i32
  store i32 %conv237, ptr %bflush, align 4
  %211 = load i32, ptr %bflush, align 4
  %tobool238 = icmp ne i32 %211, 0
  br i1 %tobool238, label %if.then239, label %if.end260

if.then239:                                       ; preds = %if.then213
  %212 = load ptr, ptr %s.addr, align 8
  %213 = load ptr, ptr %s.addr, align 8
  %block_start240 = getelementptr inbounds %struct.internal_state, ptr %213, i32 0, i32 23
  %214 = load i64, ptr %block_start240, align 8
  %cmp241 = icmp sge i64 %214, 0
  br i1 %cmp241, label %cond.true243, label %cond.false249

cond.true243:                                     ; preds = %if.then239
  %215 = load ptr, ptr %s.addr, align 8
  %window244 = getelementptr inbounds %struct.internal_state, ptr %215, i32 0, i32 14
  %216 = load ptr, ptr %window244, align 8
  %217 = load ptr, ptr %s.addr, align 8
  %block_start245 = getelementptr inbounds %struct.internal_state, ptr %217, i32 0, i32 23
  %218 = load i64, ptr %block_start245, align 8
  %conv246 = trunc i64 %218 to i32
  %idxprom247 = zext i32 %conv246 to i64
  %arrayidx248 = getelementptr inbounds i8, ptr %216, i64 %idxprom247
  br label %cond.end250

cond.false249:                                    ; preds = %if.then239
  br label %cond.end250

cond.end250:                                      ; preds = %cond.false249, %cond.true243
  %cond251 = phi ptr [ %arrayidx248, %cond.true243 ], [ null, %cond.false249 ]
  %219 = load ptr, ptr %s.addr, align 8
  %strstart252 = getelementptr inbounds %struct.internal_state, ptr %219, i32 0, i32 27
  %220 = load i32, ptr %strstart252, align 4
  %conv253 = zext i32 %220 to i64
  %221 = load ptr, ptr %s.addr, align 8
  %block_start254 = getelementptr inbounds %struct.internal_state, ptr %221, i32 0, i32 23
  %222 = load i64, ptr %block_start254, align 8
  %sub255 = sub nsw i64 %conv253, %222
  call void @_tr_flush_block(ptr noundef %212, ptr noundef %cond251, i64 noundef %sub255, i32 noundef 0)
  %223 = load ptr, ptr %s.addr, align 8
  %strstart256 = getelementptr inbounds %struct.internal_state, ptr %223, i32 0, i32 27
  %224 = load i32, ptr %strstart256, align 4
  %conv257 = zext i32 %224 to i64
  %225 = load ptr, ptr %s.addr, align 8
  %block_start258 = getelementptr inbounds %struct.internal_state, ptr %225, i32 0, i32 23
  store i64 %conv257, ptr %block_start258, align 8
  %226 = load ptr, ptr %s.addr, align 8
  %strm259 = getelementptr inbounds %struct.internal_state, ptr %226, i32 0, i32 0
  %227 = load ptr, ptr %strm259, align 8
  call void @flush_pending(ptr noundef %227)
  br label %if.end260

if.end260:                                        ; preds = %cond.end250, %if.then213
  %228 = load ptr, ptr %s.addr, align 8
  %strstart261 = getelementptr inbounds %struct.internal_state, ptr %228, i32 0, i32 27
  %229 = load i32, ptr %strstart261, align 4
  %inc262 = add i32 %229, 1
  store i32 %inc262, ptr %strstart261, align 4
  %230 = load ptr, ptr %s.addr, align 8
  %lookahead263 = getelementptr inbounds %struct.internal_state, ptr %230, i32 0, i32 29
  %231 = load i32, ptr %lookahead263, align 4
  %dec264 = add i32 %231, -1
  store i32 %dec264, ptr %lookahead263, align 4
  %232 = load ptr, ptr %s.addr, align 8
  %strm265 = getelementptr inbounds %struct.internal_state, ptr %232, i32 0, i32 0
  %233 = load ptr, ptr %strm265, align 8
  %avail_out266 = getelementptr inbounds %struct.z_stream_s, ptr %233, i32 0, i32 4
  %234 = load i32, ptr %avail_out266, align 8
  %cmp267 = icmp eq i32 %234, 0
  br i1 %cmp267, label %if.then269, label %if.end270

if.then269:                                       ; preds = %if.end260
  store i32 0, ptr %retval, align 4
  br label %return

if.end270:                                        ; preds = %if.end260
  br label %if.end277

if.else271:                                       ; preds = %if.else210
  %235 = load ptr, ptr %s.addr, align 8
  %match_available272 = getelementptr inbounds %struct.internal_state, ptr %235, i32 0, i32 26
  store i32 1, ptr %match_available272, align 8
  %236 = load ptr, ptr %s.addr, align 8
  %strstart273 = getelementptr inbounds %struct.internal_state, ptr %236, i32 0, i32 27
  %237 = load i32, ptr %strstart273, align 4
  %inc274 = add i32 %237, 1
  store i32 %inc274, ptr %strstart273, align 4
  %238 = load ptr, ptr %s.addr, align 8
  %lookahead275 = getelementptr inbounds %struct.internal_state, ptr %238, i32 0, i32 29
  %239 = load i32, ptr %lookahead275, align 4
  %dec276 = add i32 %239, -1
  store i32 %dec276, ptr %lookahead275, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.else271, %if.end270
  br label %if.end278

if.end278:                                        ; preds = %if.end277, %if.end209
  br label %for.cond

for.end:                                          ; preds = %if.then7
  %240 = load ptr, ptr %s.addr, align 8
  %match_available279 = getelementptr inbounds %struct.internal_state, ptr %240, i32 0, i32 26
  %241 = load i32, ptr %match_available279, align 8
  %tobool280 = icmp ne i32 %241, 0
  br i1 %tobool280, label %if.then281, label %if.end308

if.then281:                                       ; preds = %for.end
  %242 = load ptr, ptr %s.addr, align 8
  %window283 = getelementptr inbounds %struct.internal_state, ptr %242, i32 0, i32 14
  %243 = load ptr, ptr %window283, align 8
  %244 = load ptr, ptr %s.addr, align 8
  %strstart284 = getelementptr inbounds %struct.internal_state, ptr %244, i32 0, i32 27
  %245 = load i32, ptr %strstart284, align 4
  %sub285 = sub i32 %245, 1
  %idxprom286 = zext i32 %sub285 to i64
  %arrayidx287 = getelementptr inbounds i8, ptr %243, i64 %idxprom286
  %246 = load i8, ptr %arrayidx287, align 1
  store i8 %246, ptr %cc282, align 1
  %247 = load ptr, ptr %s.addr, align 8
  %d_buf288 = getelementptr inbounds %struct.internal_state, ptr %247, i32 0, i32 51
  %248 = load ptr, ptr %d_buf288, align 8
  %249 = load ptr, ptr %s.addr, align 8
  %last_lit289 = getelementptr inbounds %struct.internal_state, ptr %249, i32 0, i32 50
  %250 = load i32, ptr %last_lit289, align 4
  %idxprom290 = zext i32 %250 to i64
  %arrayidx291 = getelementptr inbounds i16, ptr %248, i64 %idxprom290
  store i16 0, ptr %arrayidx291, align 2
  %251 = load i8, ptr %cc282, align 1
  %252 = load ptr, ptr %s.addr, align 8
  %l_buf292 = getelementptr inbounds %struct.internal_state, ptr %252, i32 0, i32 48
  %253 = load ptr, ptr %l_buf292, align 8
  %254 = load ptr, ptr %s.addr, align 8
  %last_lit293 = getelementptr inbounds %struct.internal_state, ptr %254, i32 0, i32 50
  %255 = load i32, ptr %last_lit293, align 4
  %inc294 = add i32 %255, 1
  store i32 %inc294, ptr %last_lit293, align 4
  %idxprom295 = zext i32 %255 to i64
  %arrayidx296 = getelementptr inbounds i8, ptr %253, i64 %idxprom295
  store i8 %251, ptr %arrayidx296, align 1
  %256 = load ptr, ptr %s.addr, align 8
  %dyn_ltree297 = getelementptr inbounds %struct.internal_state, ptr %256, i32 0, i32 37
  %257 = load i8, ptr %cc282, align 1
  %idxprom298 = zext i8 %257 to i64
  %arrayidx299 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree297, i64 0, i64 %idxprom298
  %fc300 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx299, i32 0, i32 0
  %258 = load i16, ptr %fc300, align 4
  %inc301 = add i16 %258, 1
  store i16 %inc301, ptr %fc300, align 4
  %259 = load ptr, ptr %s.addr, align 8
  %last_lit302 = getelementptr inbounds %struct.internal_state, ptr %259, i32 0, i32 50
  %260 = load i32, ptr %last_lit302, align 4
  %261 = load ptr, ptr %s.addr, align 8
  %lit_bufsize303 = getelementptr inbounds %struct.internal_state, ptr %261, i32 0, i32 49
  %262 = load i32, ptr %lit_bufsize303, align 8
  %sub304 = sub i32 %262, 1
  %cmp305 = icmp eq i32 %260, %sub304
  %conv306 = zext i1 %cmp305 to i32
  store i32 %conv306, ptr %bflush, align 4
  %263 = load ptr, ptr %s.addr, align 8
  %match_available307 = getelementptr inbounds %struct.internal_state, ptr %263, i32 0, i32 26
  store i32 0, ptr %match_available307, align 8
  br label %if.end308

if.end308:                                        ; preds = %if.then281, %for.end
  %264 = load ptr, ptr %s.addr, align 8
  %265 = load ptr, ptr %s.addr, align 8
  %block_start309 = getelementptr inbounds %struct.internal_state, ptr %265, i32 0, i32 23
  %266 = load i64, ptr %block_start309, align 8
  %cmp310 = icmp sge i64 %266, 0
  br i1 %cmp310, label %cond.true312, label %cond.false318

cond.true312:                                     ; preds = %if.end308
  %267 = load ptr, ptr %s.addr, align 8
  %window313 = getelementptr inbounds %struct.internal_state, ptr %267, i32 0, i32 14
  %268 = load ptr, ptr %window313, align 8
  %269 = load ptr, ptr %s.addr, align 8
  %block_start314 = getelementptr inbounds %struct.internal_state, ptr %269, i32 0, i32 23
  %270 = load i64, ptr %block_start314, align 8
  %conv315 = trunc i64 %270 to i32
  %idxprom316 = zext i32 %conv315 to i64
  %arrayidx317 = getelementptr inbounds i8, ptr %268, i64 %idxprom316
  br label %cond.end319

cond.false318:                                    ; preds = %if.end308
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false318, %cond.true312
  %cond320 = phi ptr [ %arrayidx317, %cond.true312 ], [ null, %cond.false318 ]
  %271 = load ptr, ptr %s.addr, align 8
  %strstart321 = getelementptr inbounds %struct.internal_state, ptr %271, i32 0, i32 27
  %272 = load i32, ptr %strstart321, align 4
  %conv322 = zext i32 %272 to i64
  %273 = load ptr, ptr %s.addr, align 8
  %block_start323 = getelementptr inbounds %struct.internal_state, ptr %273, i32 0, i32 23
  %274 = load i64, ptr %block_start323, align 8
  %sub324 = sub nsw i64 %conv322, %274
  %275 = load i32, ptr %flush.addr, align 4
  %cmp325 = icmp eq i32 %275, 4
  %conv326 = zext i1 %cmp325 to i32
  call void @_tr_flush_block(ptr noundef %264, ptr noundef %cond320, i64 noundef %sub324, i32 noundef %conv326)
  %276 = load ptr, ptr %s.addr, align 8
  %strstart327 = getelementptr inbounds %struct.internal_state, ptr %276, i32 0, i32 27
  %277 = load i32, ptr %strstart327, align 4
  %conv328 = zext i32 %277 to i64
  %278 = load ptr, ptr %s.addr, align 8
  %block_start329 = getelementptr inbounds %struct.internal_state, ptr %278, i32 0, i32 23
  store i64 %conv328, ptr %block_start329, align 8
  %279 = load ptr, ptr %s.addr, align 8
  %strm330 = getelementptr inbounds %struct.internal_state, ptr %279, i32 0, i32 0
  %280 = load ptr, ptr %strm330, align 8
  call void @flush_pending(ptr noundef %280)
  %281 = load ptr, ptr %s.addr, align 8
  %strm331 = getelementptr inbounds %struct.internal_state, ptr %281, i32 0, i32 0
  %282 = load ptr, ptr %strm331, align 8
  %avail_out332 = getelementptr inbounds %struct.z_stream_s, ptr %282, i32 0, i32 4
  %283 = load i32, ptr %avail_out332, align 8
  %cmp333 = icmp eq i32 %283, 0
  br i1 %cmp333, label %if.then335, label %if.end339

if.then335:                                       ; preds = %cond.end319
  %284 = load i32, ptr %flush.addr, align 4
  %cmp336 = icmp eq i32 %284, 4
  %285 = zext i1 %cmp336 to i64
  %cond338 = select i1 %cmp336, i32 2, i32 0
  store i32 %cond338, ptr %retval, align 4
  br label %return

if.end339:                                        ; preds = %cond.end319
  %286 = load i32, ptr %flush.addr, align 4
  %cmp340 = icmp eq i32 %286, 4
  %287 = zext i1 %cmp340 to i64
  %cond342 = select i1 %cmp340, i32 3, i32 1
  store i32 %cond342, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end339, %if.then335, %if.then269, %if.then207, %if.then4
  %288 = load i32, ptr %retval, align 4
  ret i32 %288
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
  %0 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %w_size, align 4
  store i32 %1, ptr %wsize, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %2 = load ptr, ptr %s.addr, align 8
  %window_size = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 15
  %3 = load i64, ptr %window_size, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 29
  %5 = load i32, ptr %lookahead, align 4
  %conv = zext i32 %5 to i64
  %sub = sub i64 %3, %conv
  %6 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 27
  %7 = load i32, ptr %strstart, align 4
  %conv1 = zext i32 %7 to i64
  %sub2 = sub i64 %sub, %conv1
  %conv3 = trunc i64 %sub2 to i32
  store i32 %conv3, ptr %more, align 4
  %8 = load ptr, ptr %s.addr, align 8
  %strstart4 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 27
  %9 = load i32, ptr %strstart4, align 4
  %10 = load i32, ptr %wsize, align 4
  %11 = load ptr, ptr %s.addr, align 8
  %w_size5 = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 11
  %12 = load i32, ptr %w_size5, align 4
  %sub6 = sub i32 %12, 262
  %add = add i32 %10, %sub6
  %cmp = icmp uge i32 %9, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %13 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 14
  %14 = load ptr, ptr %window, align 8
  %15 = load ptr, ptr %s.addr, align 8
  %window8 = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 14
  %16 = load ptr, ptr %window8, align 8
  %17 = load i32, ptr %wsize, align 4
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %idx.ext
  %18 = load i32, ptr %wsize, align 4
  %conv9 = zext i32 %18 to i64
  %19 = load ptr, ptr %s.addr, align 8
  %window10 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 14
  %20 = load ptr, ptr %window10, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %14, ptr noundef %add.ptr, i64 noundef %conv9, i64 noundef %21) #4
  %22 = load i32, ptr %wsize, align 4
  %23 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 28
  %24 = load i32, ptr %match_start, align 8
  %sub11 = sub i32 %24, %22
  store i32 %sub11, ptr %match_start, align 8
  %25 = load i32, ptr %wsize, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %strstart12 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 27
  %27 = load i32, ptr %strstart12, align 4
  %sub13 = sub i32 %27, %25
  store i32 %sub13, ptr %strstart12, align 4
  %28 = load i32, ptr %wsize, align 4
  %conv14 = zext i32 %28 to i64
  %29 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 23
  %30 = load i64, ptr %block_start, align 8
  %sub15 = sub nsw i64 %30, %conv14
  store i64 %sub15, ptr %block_start, align 8
  %31 = load ptr, ptr %s.addr, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 19
  %32 = load i32, ptr %hash_size, align 4
  store i32 %32, ptr %n, align 4
  %33 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 17
  %34 = load ptr, ptr %head, align 8
  %35 = load i32, ptr %n, align 4
  %idxprom = zext i32 %35 to i64
  %arrayidx = getelementptr inbounds i16, ptr %34, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  br label %do.body16

do.body16:                                        ; preds = %do.cond, %if.then
  %36 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %36, i32 -1
  store ptr %incdec.ptr, ptr %p, align 8
  %37 = load i16, ptr %incdec.ptr, align 2
  %conv17 = zext i16 %37 to i32
  store i32 %conv17, ptr %m, align 4
  %38 = load i32, ptr %m, align 4
  %39 = load i32, ptr %wsize, align 4
  %cmp18 = icmp uge i32 %38, %39
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body16
  %40 = load i32, ptr %m, align 4
  %41 = load i32, ptr %wsize, align 4
  %sub20 = sub i32 %40, %41
  br label %cond.end

cond.false:                                       ; preds = %do.body16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub20, %cond.true ], [ 0, %cond.false ]
  %conv21 = trunc i32 %cond to i16
  %42 = load ptr, ptr %p, align 8
  store i16 %conv21, ptr %42, align 2
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %43 = load i32, ptr %n, align 4
  %dec = add i32 %43, -1
  store i32 %dec, ptr %n, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body16, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  %44 = load i32, ptr %wsize, align 4
  store i32 %44, ptr %n, align 4
  %45 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 16
  %46 = load ptr, ptr %prev, align 8
  %47 = load i32, ptr %n, align 4
  %idxprom22 = zext i32 %47 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %46, i64 %idxprom22
  store ptr %arrayidx23, ptr %p, align 8
  br label %do.body24

do.body24:                                        ; preds = %do.cond35, %do.end
  %48 = load ptr, ptr %p, align 8
  %incdec.ptr25 = getelementptr inbounds i16, ptr %48, i32 -1
  store ptr %incdec.ptr25, ptr %p, align 8
  %49 = load i16, ptr %incdec.ptr25, align 2
  %conv26 = zext i16 %49 to i32
  store i32 %conv26, ptr %m, align 4
  %50 = load i32, ptr %m, align 4
  %51 = load i32, ptr %wsize, align 4
  %cmp27 = icmp uge i32 %50, %51
  br i1 %cmp27, label %cond.true29, label %cond.false31

cond.true29:                                      ; preds = %do.body24
  %52 = load i32, ptr %m, align 4
  %53 = load i32, ptr %wsize, align 4
  %sub30 = sub i32 %52, %53
  br label %cond.end32

cond.false31:                                     ; preds = %do.body24
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %cond.true29
  %cond33 = phi i32 [ %sub30, %cond.true29 ], [ 0, %cond.false31 ]
  %conv34 = trunc i32 %cond33 to i16
  %54 = load ptr, ptr %p, align 8
  store i16 %conv34, ptr %54, align 2
  br label %do.cond35

do.cond35:                                        ; preds = %cond.end32
  %55 = load i32, ptr %n, align 4
  %dec36 = add i32 %55, -1
  store i32 %dec36, ptr %n, align 4
  %tobool37 = icmp ne i32 %dec36, 0
  br i1 %tobool37, label %do.body24, label %do.end38, !llvm.loop !14

do.end38:                                         ; preds = %do.cond35
  %56 = load i32, ptr %wsize, align 4
  %57 = load i32, ptr %more, align 4
  %add39 = add i32 %57, %56
  store i32 %add39, ptr %more, align 4
  br label %if.end

if.end:                                           ; preds = %do.end38, %do.body
  %58 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %strm, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %avail_in, align 8
  %cmp40 = icmp eq i32 %60, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end
  br label %do.end81

if.end43:                                         ; preds = %if.end
  %61 = load ptr, ptr %s.addr, align 8
  %strm44 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %strm44, align 8
  %63 = load ptr, ptr %s.addr, align 8
  %window45 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 14
  %64 = load ptr, ptr %window45, align 8
  %65 = load ptr, ptr %s.addr, align 8
  %strstart46 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 27
  %66 = load i32, ptr %strstart46, align 4
  %idx.ext47 = zext i32 %66 to i64
  %add.ptr48 = getelementptr inbounds i8, ptr %64, i64 %idx.ext47
  %67 = load ptr, ptr %s.addr, align 8
  %lookahead49 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 29
  %68 = load i32, ptr %lookahead49, align 4
  %idx.ext50 = zext i32 %68 to i64
  %add.ptr51 = getelementptr inbounds i8, ptr %add.ptr48, i64 %idx.ext50
  %69 = load i32, ptr %more, align 4
  %call52 = call i32 @read_buf(ptr noundef %62, ptr noundef %add.ptr51, i32 noundef %69)
  store i32 %call52, ptr %n, align 4
  %70 = load i32, ptr %n, align 4
  %71 = load ptr, ptr %s.addr, align 8
  %lookahead53 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 29
  %72 = load i32, ptr %lookahead53, align 4
  %add54 = add i32 %72, %70
  store i32 %add54, ptr %lookahead53, align 4
  %73 = load ptr, ptr %s.addr, align 8
  %lookahead55 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 29
  %74 = load i32, ptr %lookahead55, align 4
  %cmp56 = icmp uge i32 %74, 3
  br i1 %cmp56, label %if.then58, label %if.end72

if.then58:                                        ; preds = %if.end43
  %75 = load ptr, ptr %s.addr, align 8
  %window59 = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 14
  %76 = load ptr, ptr %window59, align 8
  %77 = load ptr, ptr %s.addr, align 8
  %strstart60 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 27
  %78 = load i32, ptr %strstart60, align 4
  %idxprom61 = zext i32 %78 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %76, i64 %idxprom61
  %79 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %79 to i32
  %80 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 18
  store i32 %conv63, ptr %ins_h, align 8
  %81 = load ptr, ptr %s.addr, align 8
  %ins_h64 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 18
  %82 = load i32, ptr %ins_h64, align 8
  %83 = load ptr, ptr %s.addr, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 22
  %84 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %82, %84
  %85 = load ptr, ptr %s.addr, align 8
  %window65 = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 14
  %86 = load ptr, ptr %window65, align 8
  %87 = load ptr, ptr %s.addr, align 8
  %strstart66 = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 27
  %88 = load i32, ptr %strstart66, align 4
  %add67 = add i32 %88, 1
  %idxprom68 = zext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %86, i64 %idxprom68
  %89 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %89 to i32
  %xor = xor i32 %shl, %conv70
  %90 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 21
  %91 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %91
  %92 = load ptr, ptr %s.addr, align 8
  %ins_h71 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 18
  store i32 %and, ptr %ins_h71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then58, %if.end43
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  %93 = load ptr, ptr %s.addr, align 8
  %lookahead74 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 29
  %94 = load i32, ptr %lookahead74, align 4
  %cmp75 = icmp ult i32 %94, 262
  br i1 %cmp75, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond73
  %95 = load ptr, ptr %s.addr, align 8
  %strm77 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %strm77, align 8
  %avail_in78 = getelementptr inbounds %struct.z_stream_s, ptr %96, i32 0, i32 1
  %97 = load i32, ptr %avail_in78, align 8
  %cmp79 = icmp ne i32 %97, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond73
  %98 = phi i1 [ false, %do.cond73 ], [ %cmp79, %land.rhs ]
  br i1 %98, label %do.body, label %do.end81, !llvm.loop !15

do.end81:                                         ; preds = %if.then42, %land.end
  ret void
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
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
  %wrap = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %wrap, align 4
  %cmp5 = icmp eq i32 %11, 1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %12 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 12
  %13 = load i64, ptr %adler, align 8
  %14 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %next_in, align 8
  %16 = load i32, ptr %len, align 4
  %call = call i64 @adler32(i64 noundef %13, ptr noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %strm.addr, align 8
  %adler7 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 12
  store i64 %call, ptr %adler7, align 8
  br label %if.end17

if.else:                                          ; preds = %if.end3
  %18 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %state8, align 8
  %wrap9 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %wrap9, align 4
  %cmp10 = icmp eq i32 %20, 2
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.else
  %21 = load ptr, ptr %strm.addr, align 8
  %adler12 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 12
  %22 = load i64, ptr %adler12, align 8
  %23 = load ptr, ptr %strm.addr, align 8
  %next_in13 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %next_in13, align 8
  %25 = load i32, ptr %len, align 4
  %call14 = call i64 @crc32(i64 noundef %22, ptr noundef %24, i32 noundef %25)
  %26 = load ptr, ptr %strm.addr, align 8
  %adler15 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 12
  store i64 %call14, ptr %adler15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then6
  %27 = load ptr, ptr %buf.addr, align 8
  %28 = load ptr, ptr %strm.addr, align 8
  %next_in18 = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %next_in18, align 8
  %30 = load i32, ptr %len, align 4
  %conv = zext i32 %30 to i64
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %31, i1 false, i1 true, i1 false)
  %call19 = call ptr @__memcpy_chk(ptr noundef %27, ptr noundef %29, i64 noundef %conv, i64 noundef %32) #4
  %33 = load i32, ptr %len, align 4
  %34 = load ptr, ptr %strm.addr, align 8
  %next_in20 = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %next_in20, align 8
  %idx.ext = zext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 %idx.ext
  store ptr %add.ptr, ptr %next_in20, align 8
  %36 = load i32, ptr %len, align 4
  %conv21 = zext i32 %36 to i64
  %37 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 2
  %38 = load i64, ptr %total_in, align 8
  %add = add i64 %38, %conv21
  store i64 %add, ptr %total_in, align 8
  %39 = load i32, ptr %len, align 4
  store i32 %39, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then2
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind ssp uwtable
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
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 31
  %1 = load i32, ptr %max_chain_length, align 4
  store i32 %1, ptr %chain_length, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %window, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 27
  %5 = load i32, ptr %strstart, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %scan, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 30
  %7 = load i32, ptr %prev_length, align 8
  store i32 %7, ptr %best_len, align 4
  %8 = load ptr, ptr %s.addr, align 8
  %nice_match1 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 36
  %9 = load i32, ptr %nice_match1, align 8
  store i32 %9, ptr %nice_match, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %strstart2 = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 27
  %11 = load i32, ptr %strstart2, align 4
  %12 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 11
  %13 = load i32, ptr %w_size, align 4
  %sub = sub i32 %13, 262
  %cmp = icmp ugt i32 %11, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8
  %strstart3 = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 27
  %15 = load i32, ptr %strstart3, align 4
  %16 = load ptr, ptr %s.addr, align 8
  %w_size4 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 11
  %17 = load i32, ptr %w_size4, align 4
  %sub5 = sub i32 %17, 262
  %sub6 = sub i32 %15, %sub5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub6, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %limit, align 4
  %18 = load ptr, ptr %s.addr, align 8
  %prev7 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 16
  %19 = load ptr, ptr %prev7, align 8
  store ptr %19, ptr %prev, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 13
  %21 = load i32, ptr %w_mask, align 4
  store i32 %21, ptr %wmask, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %window8 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 14
  %23 = load ptr, ptr %window8, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %strstart9 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 27
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
  %prev_length16 = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 30
  %33 = load i32, ptr %prev_length16, align 8
  %34 = load ptr, ptr %s.addr, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 35
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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %38, i32 0, i32 29
  %39 = load i32, ptr %lookahead, align 4
  %cmp18 = icmp ugt i32 %37, %39
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end
  %40 = load ptr, ptr %s.addr, align 8
  %lookahead20 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 29
  %41 = load i32, ptr %lookahead20, align 4
  store i32 %41, ptr %nice_match, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end
  br label %do.body

do.body:                                          ; preds = %land.end134, %if.end21
  %42 = load ptr, ptr %s.addr, align 8
  %window22 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 14
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
  br i1 %97, label %do.body52, label %do.end, !llvm.loop !16

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
  %match_start = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 28
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
  br i1 %120, label %do.body, label %do.end135, !llvm.loop !17

do.end135:                                        ; preds = %land.end134, %if.then117
  %121 = load i32, ptr %best_len, align 4
  %122 = load ptr, ptr %s.addr, align 8
  %lookahead136 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 29
  %123 = load i32, ptr %lookahead136, align 4
  %cmp137 = icmp ule i32 %121, %123
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %do.end135
  %124 = load i32, ptr %best_len, align 4
  store i32 %124, ptr %retval, align 4
  br label %return

if.end140:                                        ; preds = %do.end135
  %125 = load ptr, ptr %s.addr, align 8
  %lookahead141 = getelementptr inbounds %struct.internal_state, ptr %125, i32 0, i32 29
  %126 = load i32, ptr %lookahead141, align 4
  store i32 %126, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end140, %if.then139
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @longest_match_fast(ptr noundef %s, i32 noundef %cur_match) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %cur_match.addr = alloca i32, align 4
  %scan = alloca ptr, align 8
  %match = alloca ptr, align 8
  %len = alloca i32, align 4
  %strend = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 %cur_match, ptr %cur_match.addr, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 14
  %1 = load ptr, ptr %window, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 27
  %3 = load i32, ptr %strstart, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %scan, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %window1 = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 14
  %5 = load ptr, ptr %window1, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %strstart2 = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 27
  %7 = load i32, ptr %strstart2, align 4
  %idx.ext3 = zext i32 %7 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %5, i64 %idx.ext3
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr4, i64 258
  store ptr %add.ptr5, ptr %strend, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %window6 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 14
  %9 = load ptr, ptr %window6, align 8
  %10 = load i32, ptr %cur_match.addr, align 4
  %idx.ext7 = zext i32 %10 to i64
  %add.ptr8 = getelementptr inbounds i8, ptr %9, i64 %idx.ext7
  store ptr %add.ptr8, ptr %match, align 8
  %11 = load ptr, ptr %match, align 8
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %13 = load ptr, ptr %scan, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %14 to i32
  %cmp = icmp ne i32 %conv, %conv10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load ptr, ptr %match, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %17 = load ptr, ptr %scan, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %cmp16 = icmp ne i32 %conv13, %conv15
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %19 = load ptr, ptr %scan, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %19, i64 2
  store ptr %add.ptr18, ptr %scan, align 8
  %20 = load ptr, ptr %match, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %20, i64 2
  store ptr %add.ptr19, ptr %match, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %21 = load ptr, ptr %scan, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %scan, align 8
  %22 = load i8, ptr %incdec.ptr, align 1
  %conv20 = zext i8 %22 to i32
  %23 = load ptr, ptr %match, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr21, ptr %match, align 8
  %24 = load i8, ptr %incdec.ptr21, align 1
  %conv22 = zext i8 %24 to i32
  %cmp23 = icmp eq i32 %conv20, %conv22
  br i1 %cmp23, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %25 = load ptr, ptr %scan, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr25, ptr %scan, align 8
  %26 = load i8, ptr %incdec.ptr25, align 1
  %conv26 = zext i8 %26 to i32
  %27 = load ptr, ptr %match, align 8
  %incdec.ptr27 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr27, ptr %match, align 8
  %28 = load i8, ptr %incdec.ptr27, align 1
  %conv28 = zext i8 %28 to i32
  %cmp29 = icmp eq i32 %conv26, %conv28
  br i1 %cmp29, label %land.lhs.true31, label %land.end

land.lhs.true31:                                  ; preds = %land.lhs.true
  %29 = load ptr, ptr %scan, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr32, ptr %scan, align 8
  %30 = load i8, ptr %incdec.ptr32, align 1
  %conv33 = zext i8 %30 to i32
  %31 = load ptr, ptr %match, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr34, ptr %match, align 8
  %32 = load i8, ptr %incdec.ptr34, align 1
  %conv35 = zext i8 %32 to i32
  %cmp36 = icmp eq i32 %conv33, %conv35
  br i1 %cmp36, label %land.lhs.true38, label %land.end

land.lhs.true38:                                  ; preds = %land.lhs.true31
  %33 = load ptr, ptr %scan, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr39, ptr %scan, align 8
  %34 = load i8, ptr %incdec.ptr39, align 1
  %conv40 = zext i8 %34 to i32
  %35 = load ptr, ptr %match, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr41, ptr %match, align 8
  %36 = load i8, ptr %incdec.ptr41, align 1
  %conv42 = zext i8 %36 to i32
  %cmp43 = icmp eq i32 %conv40, %conv42
  br i1 %cmp43, label %land.lhs.true45, label %land.end

land.lhs.true45:                                  ; preds = %land.lhs.true38
  %37 = load ptr, ptr %scan, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr46, ptr %scan, align 8
  %38 = load i8, ptr %incdec.ptr46, align 1
  %conv47 = zext i8 %38 to i32
  %39 = load ptr, ptr %match, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr48, ptr %match, align 8
  %40 = load i8, ptr %incdec.ptr48, align 1
  %conv49 = zext i8 %40 to i32
  %cmp50 = icmp eq i32 %conv47, %conv49
  br i1 %cmp50, label %land.lhs.true52, label %land.end

land.lhs.true52:                                  ; preds = %land.lhs.true45
  %41 = load ptr, ptr %scan, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr53, ptr %scan, align 8
  %42 = load i8, ptr %incdec.ptr53, align 1
  %conv54 = zext i8 %42 to i32
  %43 = load ptr, ptr %match, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr55, ptr %match, align 8
  %44 = load i8, ptr %incdec.ptr55, align 1
  %conv56 = zext i8 %44 to i32
  %cmp57 = icmp eq i32 %conv54, %conv56
  br i1 %cmp57, label %land.lhs.true59, label %land.end

land.lhs.true59:                                  ; preds = %land.lhs.true52
  %45 = load ptr, ptr %scan, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr60, ptr %scan, align 8
  %46 = load i8, ptr %incdec.ptr60, align 1
  %conv61 = zext i8 %46 to i32
  %47 = load ptr, ptr %match, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr62, ptr %match, align 8
  %48 = load i8, ptr %incdec.ptr62, align 1
  %conv63 = zext i8 %48 to i32
  %cmp64 = icmp eq i32 %conv61, %conv63
  br i1 %cmp64, label %land.lhs.true66, label %land.end

land.lhs.true66:                                  ; preds = %land.lhs.true59
  %49 = load ptr, ptr %scan, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr67, ptr %scan, align 8
  %50 = load i8, ptr %incdec.ptr67, align 1
  %conv68 = zext i8 %50 to i32
  %51 = load ptr, ptr %match, align 8
  %incdec.ptr69 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr69, ptr %match, align 8
  %52 = load i8, ptr %incdec.ptr69, align 1
  %conv70 = zext i8 %52 to i32
  %cmp71 = icmp eq i32 %conv68, %conv70
  br i1 %cmp71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true66
  %53 = load ptr, ptr %scan, align 8
  %54 = load ptr, ptr %strend, align 8
  %cmp73 = icmp ult ptr %53, %54
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true66, %land.lhs.true59, %land.lhs.true52, %land.lhs.true45, %land.lhs.true38, %land.lhs.true31, %land.lhs.true, %do.cond
  %55 = phi i1 [ false, %land.lhs.true66 ], [ false, %land.lhs.true59 ], [ false, %land.lhs.true52 ], [ false, %land.lhs.true45 ], [ false, %land.lhs.true38 ], [ false, %land.lhs.true31 ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp73, %land.rhs ]
  br i1 %55, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %land.end
  %56 = load ptr, ptr %strend, align 8
  %57 = load ptr, ptr %scan, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %56 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %57 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv75 = trunc i64 %sub.ptr.sub to i32
  %sub = sub nsw i32 258, %conv75
  store i32 %sub, ptr %len, align 4
  %58 = load i32, ptr %len, align 4
  %cmp76 = icmp slt i32 %58, 3
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %do.end
  %59 = load i32, ptr %cur_match.addr, align 4
  %60 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 28
  store i32 %59, ptr %match_start, align 8
  %61 = load i32, ptr %len, align 4
  %62 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 29
  %63 = load i32, ptr %lookahead, align 4
  %cmp80 = icmp ule i32 %61, %63
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end79
  %64 = load i32, ptr %len, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end79
  %65 = load ptr, ptr %s.addr, align 8
  %lookahead82 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 29
  %66 = load i32, ptr %lookahead82, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %64, %cond.true ], [ %66, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then78, %if.then
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
