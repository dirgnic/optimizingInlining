; ModuleID = './source_snapshot/public_repos/zlib/deflate.c'
source_filename = "./source_snapshot/public_repos/zlib/deflate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i64, i32, ptr, i64, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, i32, i64, i64, i32, i32, i16, i32, i32, i64, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@deflate_copyright = constant [70 x i8] c" deflate 1.3.2.1 Copyright 1995-2026 Jean-loup Gailly and Mark Adler \00", align 1
@deflateInit2_.my_version = internal constant [15 x i8] c"1.3.2.1-motley\00", align 1
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
  %cmp29 = icmp slt i32 %16, -15
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  store i32 -2, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then28
  %17 = load i32, ptr %windowBits.addr, align 4
  %sub = sub nsw i32 0, %17
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end38

if.else:                                          ; preds = %if.end25
  %18 = load i32, ptr %windowBits.addr, align 4
  %cmp33 = icmp sgt i32 %18, 15
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.else
  store i32 2, ptr %wrap, align 4
  %19 = load i32, ptr %windowBits.addr, align 4
  %sub36 = sub nsw i32 %19, 16
  store i32 %sub36, ptr %windowBits.addr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end32
  %20 = load i32, ptr %memLevel.addr, align 4
  %cmp39 = icmp slt i32 %20, 1
  br i1 %cmp39, label %if.then70, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end38
  %21 = load i32, ptr %memLevel.addr, align 4
  %cmp42 = icmp sgt i32 %21, 9
  br i1 %cmp42, label %if.then70, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %22 = load i32, ptr %method.addr, align 4
  %cmp45 = icmp ne i32 %22, 8
  br i1 %cmp45, label %if.then70, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %23 = load i32, ptr %windowBits.addr, align 4
  %cmp48 = icmp slt i32 %23, 8
  br i1 %cmp48, label %if.then70, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %24 = load i32, ptr %windowBits.addr, align 4
  %cmp51 = icmp sgt i32 %24, 15
  br i1 %cmp51, label %if.then70, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %25 = load i32, ptr %level.addr, align 4
  %cmp54 = icmp slt i32 %25, 0
  br i1 %cmp54, label %if.then70, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %26 = load i32, ptr %level.addr, align 4
  %cmp57 = icmp sgt i32 %26, 9
  br i1 %cmp57, label %if.then70, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %27 = load i32, ptr %strategy.addr, align 4
  %cmp60 = icmp slt i32 %27, 0
  br i1 %cmp60, label %if.then70, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %28 = load i32, ptr %strategy.addr, align 4
  %cmp63 = icmp sgt i32 %28, 4
  br i1 %cmp63, label %if.then70, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %29 = load i32, ptr %windowBits.addr, align 4
  %cmp66 = icmp eq i32 %29, 8
  br i1 %cmp66, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %lor.lhs.false65
  %30 = load i32, ptr %wrap, align 4
  %cmp68 = icmp ne i32 %30, 1
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %land.lhs.true, %lor.lhs.false62, %lor.lhs.false59, %lor.lhs.false56, %lor.lhs.false53, %lor.lhs.false50, %lor.lhs.false47, %lor.lhs.false44, %lor.lhs.false41, %if.end38
  store i32 -2, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %land.lhs.true, %lor.lhs.false65
  %31 = load i32, ptr %windowBits.addr, align 4
  %cmp72 = icmp eq i32 %31, 8
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end71
  store i32 9, ptr %windowBits.addr, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end71
  %32 = load ptr, ptr %strm.addr, align 8
  %zalloc76 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 8
  %33 = load ptr, ptr %zalloc76, align 8
  %34 = load ptr, ptr %strm.addr, align 8
  %opaque77 = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 10
  %35 = load ptr, ptr %opaque77, align 8
  %call = call ptr %33(ptr noundef %35, i32 noundef 1, i32 noundef 5968)
  store ptr %call, ptr %s, align 8
  %36 = load ptr, ptr %s, align 8
  %cmp78 = icmp eq ptr %36, null
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end75
  store i32 -4, ptr %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.end75
  %37 = load ptr, ptr %s, align 8
  %38 = load ptr, ptr %s, align 8
  %39 = call i64 @llvm.objectsize.i64.p0(ptr %38, i1 false, i1 true, i1 false)
  %call82 = call ptr @__memset_chk(ptr noundef %37, i32 noundef 0, i64 noundef 5968, i64 noundef %39) #4
  %40 = load ptr, ptr %s, align 8
  %41 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 7
  store ptr %40, ptr %state, align 8
  %42 = load ptr, ptr %strm.addr, align 8
  %43 = load ptr, ptr %s, align 8
  %strm83 = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 0
  store ptr %42, ptr %strm83, align 8
  %44 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 1
  store i32 42, ptr %status, align 8
  %45 = load i32, ptr %wrap, align 4
  %46 = load ptr, ptr %s, align 8
  %wrap84 = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 6
  store i32 %45, ptr %wrap84, align 8
  %47 = load ptr, ptr %s, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 7
  store ptr null, ptr %gzhead, align 8
  %48 = load i32, ptr %windowBits.addr, align 4
  %49 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 12
  store i32 %48, ptr %w_bits, align 4
  %50 = load ptr, ptr %s, align 8
  %w_bits85 = getelementptr inbounds %struct.internal_state, ptr %50, i32 0, i32 12
  %51 = load i32, ptr %w_bits85, align 4
  %shl = shl i32 1, %51
  %52 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 11
  store i32 %shl, ptr %w_size, align 8
  %53 = load ptr, ptr %s, align 8
  %w_size86 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 11
  %54 = load i32, ptr %w_size86, align 8
  %sub87 = sub i32 %54, 1
  %55 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %55, i32 0, i32 13
  store i32 %sub87, ptr %w_mask, align 8
  %56 = load i32, ptr %memLevel.addr, align 4
  %add = add i32 %56, 7
  %57 = load ptr, ptr %s, align 8
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 20
  store i32 %add, ptr %hash_bits, align 8
  %58 = load ptr, ptr %s, align 8
  %hash_bits88 = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 20
  %59 = load i32, ptr %hash_bits88, align 8
  %shl89 = shl i32 1, %59
  %60 = load ptr, ptr %s, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 19
  store i32 %shl89, ptr %hash_size, align 4
  %61 = load ptr, ptr %s, align 8
  %hash_size90 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 19
  %62 = load i32, ptr %hash_size90, align 4
  %sub91 = sub i32 %62, 1
  %63 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 21
  store i32 %sub91, ptr %hash_mask, align 4
  %64 = load ptr, ptr %s, align 8
  %hash_bits92 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 20
  %65 = load i32, ptr %hash_bits92, align 8
  %add93 = add i32 %65, 3
  %sub94 = sub i32 %add93, 1
  %div = udiv i32 %sub94, 3
  %66 = load ptr, ptr %s, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 22
  store i32 %div, ptr %hash_shift, align 8
  %67 = load ptr, ptr %strm.addr, align 8
  %zalloc95 = getelementptr inbounds %struct.z_stream_s, ptr %67, i32 0, i32 8
  %68 = load ptr, ptr %zalloc95, align 8
  %69 = load ptr, ptr %strm.addr, align 8
  %opaque96 = getelementptr inbounds %struct.z_stream_s, ptr %69, i32 0, i32 10
  %70 = load ptr, ptr %opaque96, align 8
  %71 = load ptr, ptr %s, align 8
  %w_size97 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 11
  %72 = load i32, ptr %w_size97, align 8
  %call98 = call ptr %68(ptr noundef %70, i32 noundef %72, i32 noundef 2)
  %73 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 14
  store ptr %call98, ptr %window, align 8
  %74 = load ptr, ptr %strm.addr, align 8
  %zalloc99 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 8
  %75 = load ptr, ptr %zalloc99, align 8
  %76 = load ptr, ptr %strm.addr, align 8
  %opaque100 = getelementptr inbounds %struct.z_stream_s, ptr %76, i32 0, i32 10
  %77 = load ptr, ptr %opaque100, align 8
  %78 = load ptr, ptr %s, align 8
  %w_size101 = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 11
  %79 = load i32, ptr %w_size101, align 8
  %call102 = call ptr %75(ptr noundef %77, i32 noundef %79, i32 noundef 2)
  %80 = load ptr, ptr %s, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 16
  store ptr %call102, ptr %prev, align 8
  %81 = load ptr, ptr %strm.addr, align 8
  %zalloc103 = getelementptr inbounds %struct.z_stream_s, ptr %81, i32 0, i32 8
  %82 = load ptr, ptr %zalloc103, align 8
  %83 = load ptr, ptr %strm.addr, align 8
  %opaque104 = getelementptr inbounds %struct.z_stream_s, ptr %83, i32 0, i32 10
  %84 = load ptr, ptr %opaque104, align 8
  %85 = load ptr, ptr %s, align 8
  %hash_size105 = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 19
  %86 = load i32, ptr %hash_size105, align 4
  %call106 = call ptr %82(ptr noundef %84, i32 noundef %86, i32 noundef 2)
  %87 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 17
  store ptr %call106, ptr %head, align 8
  %88 = load ptr, ptr %s, align 8
  %high_water = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 59
  store i64 0, ptr %high_water, align 8
  %89 = load i32, ptr %memLevel.addr, align 4
  %add107 = add nsw i32 %89, 6
  %shl108 = shl i32 1, %add107
  %90 = load ptr, ptr %s, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 49
  store i32 %shl108, ptr %lit_bufsize, align 8
  %91 = load ptr, ptr %strm.addr, align 8
  %zalloc109 = getelementptr inbounds %struct.z_stream_s, ptr %91, i32 0, i32 8
  %92 = load ptr, ptr %zalloc109, align 8
  %93 = load ptr, ptr %strm.addr, align 8
  %opaque110 = getelementptr inbounds %struct.z_stream_s, ptr %93, i32 0, i32 10
  %94 = load ptr, ptr %opaque110, align 8
  %95 = load ptr, ptr %s, align 8
  %lit_bufsize111 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 49
  %96 = load i32, ptr %lit_bufsize111, align 8
  %call112 = call ptr %92(ptr noundef %94, i32 noundef %96, i32 noundef 4)
  %97 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 2
  store ptr %call112, ptr %pending_buf, align 8
  %98 = load ptr, ptr %s, align 8
  %lit_bufsize113 = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 49
  %99 = load i32, ptr %lit_bufsize113, align 8
  %conv114 = zext i32 %99 to i64
  %mul = mul i64 %conv114, 4
  %100 = load ptr, ptr %s, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 3
  store i64 %mul, ptr %pending_buf_size, align 8
  %101 = load ptr, ptr %s, align 8
  %window115 = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 14
  %102 = load ptr, ptr %window115, align 8
  %cmp116 = icmp eq ptr %102, null
  br i1 %cmp116, label %if.then130, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %if.end81
  %103 = load ptr, ptr %s, align 8
  %prev119 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 16
  %104 = load ptr, ptr %prev119, align 8
  %cmp120 = icmp eq ptr %104, null
  br i1 %cmp120, label %if.then130, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false118
  %105 = load ptr, ptr %s, align 8
  %head123 = getelementptr inbounds %struct.internal_state, ptr %105, i32 0, i32 17
  %106 = load ptr, ptr %head123, align 8
  %cmp124 = icmp eq ptr %106, null
  br i1 %cmp124, label %if.then130, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false122
  %107 = load ptr, ptr %s, align 8
  %pending_buf127 = getelementptr inbounds %struct.internal_state, ptr %107, i32 0, i32 2
  %108 = load ptr, ptr %pending_buf127, align 8
  %cmp128 = icmp eq ptr %108, null
  br i1 %cmp128, label %if.then130, label %if.end134

if.then130:                                       ; preds = %lor.lhs.false126, %lor.lhs.false122, %lor.lhs.false118, %if.end81
  %109 = load ptr, ptr %s, align 8
  %status131 = getelementptr inbounds %struct.internal_state, ptr %109, i32 0, i32 1
  store i32 666, ptr %status131, align 8
  %110 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 8
  %111 = load ptr, ptr %strm.addr, align 8
  %msg132 = getelementptr inbounds %struct.z_stream_s, ptr %111, i32 0, i32 6
  store ptr %110, ptr %msg132, align 8
  %112 = load ptr, ptr %strm.addr, align 8
  %call133 = call i32 @deflateEnd(ptr noundef %112)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end134:                                        ; preds = %lor.lhs.false126
  %113 = load ptr, ptr %s, align 8
  %pending_buf135 = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 2
  %114 = load ptr, ptr %pending_buf135, align 8
  %115 = load ptr, ptr %s, align 8
  %lit_bufsize136 = getelementptr inbounds %struct.internal_state, ptr %115, i32 0, i32 49
  %116 = load i32, ptr %lit_bufsize136, align 8
  %idx.ext = zext i32 %116 to i64
  %add.ptr = getelementptr inbounds i8, ptr %114, i64 %idx.ext
  %117 = load ptr, ptr %s, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %117, i32 0, i32 48
  store ptr %add.ptr, ptr %sym_buf, align 8
  %118 = load ptr, ptr %s, align 8
  %lit_bufsize137 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 49
  %119 = load i32, ptr %lit_bufsize137, align 8
  %sub138 = sub i32 %119, 1
  %mul139 = mul i32 %sub138, 3
  %120 = load ptr, ptr %s, align 8
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 51
  store i32 %mul139, ptr %sym_end, align 8
  %121 = load i32, ptr %level.addr, align 4
  %122 = load ptr, ptr %s, align 8
  %level140 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 33
  store i32 %121, ptr %level140, align 4
  %123 = load i32, ptr %strategy.addr, align 4
  %124 = load ptr, ptr %s, align 8
  %strategy141 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 34
  store i32 %123, ptr %strategy141, align 8
  %125 = load i32, ptr %method.addr, align 4
  %conv142 = trunc i32 %125 to i8
  %126 = load ptr, ptr %s, align 8
  %method143 = getelementptr inbounds %struct.internal_state, ptr %126, i32 0, i32 9
  store i8 %conv142, ptr %method143, align 8
  %127 = load ptr, ptr %strm.addr, align 8
  %call144 = call i32 @deflateReset(ptr noundef %127)
  store i32 %call144, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end134, %if.then130, %if.then80, %if.then70, %if.then31, %if.then10, %if.then
  %128 = load i32, ptr %retval, align 4
  ret i32 %128
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define i32 @deflateEnd(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %status1 = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %status1, align 8
  store i32 %3, ptr %status, align 4
  %4 = load ptr, ptr %strm.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %state2, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pending_buf, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %zfree, align 8
  %9 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %opaque, align 8
  %11 = load ptr, ptr %strm.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %state5, align 8
  %pending_buf6 = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pending_buf6, align 8
  call void %8(ptr noundef %10, ptr noundef %13)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %14 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %state8, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %head, align 8
  %tobool9 = icmp ne ptr %16, null
  br i1 %tobool9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end7
  %17 = load ptr, ptr %strm.addr, align 8
  %zfree11 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %zfree11, align 8
  %19 = load ptr, ptr %strm.addr, align 8
  %opaque12 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 10
  %20 = load ptr, ptr %opaque12, align 8
  %21 = load ptr, ptr %strm.addr, align 8
  %state13 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %state13, align 8
  %head14 = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 17
  %23 = load ptr, ptr %head14, align 8
  call void %18(ptr noundef %20, ptr noundef %23)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end7
  %24 = load ptr, ptr %strm.addr, align 8
  %state16 = getelementptr inbounds %struct.z_stream_s, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %state16, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 16
  %26 = load ptr, ptr %prev, align 8
  %tobool17 = icmp ne ptr %26, null
  br i1 %tobool17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end15
  %27 = load ptr, ptr %strm.addr, align 8
  %zfree19 = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %zfree19, align 8
  %29 = load ptr, ptr %strm.addr, align 8
  %opaque20 = getelementptr inbounds %struct.z_stream_s, ptr %29, i32 0, i32 10
  %30 = load ptr, ptr %opaque20, align 8
  %31 = load ptr, ptr %strm.addr, align 8
  %state21 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %state21, align 8
  %prev22 = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 16
  %33 = load ptr, ptr %prev22, align 8
  call void %28(ptr noundef %30, ptr noundef %33)
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15
  %34 = load ptr, ptr %strm.addr, align 8
  %state24 = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 7
  %35 = load ptr, ptr %state24, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 14
  %36 = load ptr, ptr %window, align 8
  %tobool25 = icmp ne ptr %36, null
  br i1 %tobool25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.end23
  %37 = load ptr, ptr %strm.addr, align 8
  %zfree27 = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 9
  %38 = load ptr, ptr %zfree27, align 8
  %39 = load ptr, ptr %strm.addr, align 8
  %opaque28 = getelementptr inbounds %struct.z_stream_s, ptr %39, i32 0, i32 10
  %40 = load ptr, ptr %opaque28, align 8
  %41 = load ptr, ptr %strm.addr, align 8
  %state29 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 7
  %42 = load ptr, ptr %state29, align 8
  %window30 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 14
  %43 = load ptr, ptr %window30, align 8
  call void %38(ptr noundef %40, ptr noundef %43)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23
  %44 = load ptr, ptr %strm.addr, align 8
  %zfree32 = getelementptr inbounds %struct.z_stream_s, ptr %44, i32 0, i32 9
  %45 = load ptr, ptr %zfree32, align 8
  %46 = load ptr, ptr %strm.addr, align 8
  %opaque33 = getelementptr inbounds %struct.z_stream_s, ptr %46, i32 0, i32 10
  %47 = load ptr, ptr %opaque33, align 8
  %48 = load ptr, ptr %strm.addr, align 8
  %state34 = getelementptr inbounds %struct.z_stream_s, ptr %48, i32 0, i32 7
  %49 = load ptr, ptr %state34, align 8
  call void %45(ptr noundef %47, ptr noundef %49)
  %50 = load ptr, ptr %strm.addr, align 8
  %state35 = getelementptr inbounds %struct.z_stream_s, ptr %50, i32 0, i32 7
  store ptr null, ptr %state35, align 8
  %51 = load i32, ptr %status, align 4
  %cmp = icmp eq i32 %51, 113
  %52 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 -3, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateReset(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateResetKeep(ptr noundef %0)
  store i32 %call, ptr %ret, align 4
  %1 = load i32, ptr %ret, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state, align 8
  call void @lm_init(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %ret, align 4
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateSetDictionary(ptr noundef %strm, ptr noundef %dictionary, i32 noundef %dictLength) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %str = alloca i32, align 4
  %n = alloca i32, align 4
  %wrap = alloca i32, align 4
  %avail = alloca i32, align 4
  %next = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store i32 %dictLength, ptr %dictLength.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dictionary.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state, align 8
  store ptr %3, ptr %s, align 8
  %4 = load ptr, ptr %s, align 8
  %wrap1 = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %wrap1, align 8
  store i32 %5, ptr %wrap, align 4
  %6 = load i32, ptr %wrap, align 4
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %if.then8, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %7 = load i32, ptr %wrap, align 4
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false6

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %8 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %status, align 8
  %cmp5 = icmp ne i32 %9, 42
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %land.lhs.true, %lor.lhs.false3
  %10 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 29
  %11 = load i32, ptr %lookahead, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %land.lhs.true, %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false6
  %12 = load i32, ptr %wrap, align 4
  %cmp10 = icmp eq i32 %12, 1
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  %13 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 12
  %14 = load i64, ptr %adler, align 8
  %15 = load ptr, ptr %dictionary.addr, align 8
  %16 = load i32, ptr %dictLength.addr, align 4
  %call12 = call i64 @adler32(i64 noundef %14, ptr noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %strm.addr, align 8
  %adler13 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 12
  store i64 %call12, ptr %adler13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %18 = load ptr, ptr %s, align 8
  %wrap15 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 6
  store i32 0, ptr %wrap15, align 8
  %19 = load i32, ptr %dictLength.addr, align 4
  %20 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 11
  %21 = load i32, ptr %w_size, align 8
  %cmp16 = icmp uge i32 %19, %21
  br i1 %cmp16, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.end14
  %22 = load i32, ptr %wrap, align 4
  %cmp18 = icmp eq i32 %22, 0
  br i1 %cmp18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.then17
  br label %do.body

do.body:                                          ; preds = %if.then19
  %23 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 17
  %24 = load ptr, ptr %head, align 8
  %25 = load ptr, ptr %s, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 19
  %26 = load i32, ptr %hash_size, align 4
  %sub = sub i32 %26, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %24, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  %27 = load ptr, ptr %s, align 8
  %head20 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 17
  %28 = load ptr, ptr %head20, align 8
  %29 = load ptr, ptr %s, align 8
  %hash_size21 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 19
  %30 = load i32, ptr %hash_size21, align 4
  %sub22 = sub i32 %30, 1
  %conv = zext i32 %sub22 to i64
  %mul = mul i64 %conv, 2
  %31 = load ptr, ptr %s, align 8
  %head23 = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 17
  %32 = load ptr, ptr %head23, align 8
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %32, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memset_chk(ptr noundef %28, i32 noundef 0, i64 noundef %mul, i64 noundef %33) #4
  %34 = load ptr, ptr %s, align 8
  %slid = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 60
  store i32 0, ptr %slid, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %35 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 27
  store i32 0, ptr %strstart, align 4
  %36 = load ptr, ptr %s, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 23
  store i64 0, ptr %block_start, align 8
  %37 = load ptr, ptr %s, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 55
  store i32 0, ptr %insert, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then17
  %38 = load i32, ptr %dictLength.addr, align 4
  %39 = load ptr, ptr %s, align 8
  %w_size26 = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 11
  %40 = load i32, ptr %w_size26, align 8
  %sub27 = sub i32 %38, %40
  %41 = load ptr, ptr %dictionary.addr, align 8
  %idx.ext = zext i32 %sub27 to i64
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 %idx.ext
  store ptr %add.ptr, ptr %dictionary.addr, align 8
  %42 = load ptr, ptr %s, align 8
  %w_size28 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 11
  %43 = load i32, ptr %w_size28, align 8
  store i32 %43, ptr %dictLength.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end25, %if.end14
  %44 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %avail_in, align 8
  store i32 %45, ptr %avail, align 4
  %46 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %next_in, align 8
  store ptr %47, ptr %next, align 8
  %48 = load i32, ptr %dictLength.addr, align 4
  %49 = load ptr, ptr %strm.addr, align 8
  %avail_in30 = getelementptr inbounds %struct.z_stream_s, ptr %49, i32 0, i32 1
  store i32 %48, ptr %avail_in30, align 8
  %50 = load ptr, ptr %dictionary.addr, align 8
  %51 = load ptr, ptr %strm.addr, align 8
  %next_in31 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 0
  store ptr %50, ptr %next_in31, align 8
  %52 = load ptr, ptr %s, align 8
  call void @fill_window(ptr noundef %52)
  br label %while.cond

while.cond:                                       ; preds = %do.end57, %if.end29
  %53 = load ptr, ptr %s, align 8
  %lookahead32 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 29
  %54 = load i32, ptr %lookahead32, align 4
  %cmp33 = icmp uge i32 %54, 3
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load ptr, ptr %s, align 8
  %strstart35 = getelementptr inbounds %struct.internal_state, ptr %55, i32 0, i32 27
  %56 = load i32, ptr %strstart35, align 4
  store i32 %56, ptr %str, align 4
  %57 = load ptr, ptr %s, align 8
  %lookahead36 = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 29
  %58 = load i32, ptr %lookahead36, align 4
  %sub37 = sub i32 %58, 2
  store i32 %sub37, ptr %n, align 4
  br label %do.body38

do.body38:                                        ; preds = %do.cond, %while.body
  %59 = load ptr, ptr %s, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 18
  %60 = load i32, ptr %ins_h, align 8
  %61 = load ptr, ptr %s, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 22
  %62 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %60, %62
  %63 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 14
  %64 = load ptr, ptr %window, align 8
  %65 = load i32, ptr %str, align 4
  %add = add i32 %65, 3
  %sub39 = sub i32 %add, 1
  %idxprom40 = zext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %64, i64 %idxprom40
  %66 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %66 to i32
  %xor = xor i32 %shl, %conv42
  %67 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 21
  %68 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %68
  %69 = load ptr, ptr %s, align 8
  %ins_h43 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 18
  store i32 %and, ptr %ins_h43, align 8
  %70 = load ptr, ptr %s, align 8
  %head44 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 17
  %71 = load ptr, ptr %head44, align 8
  %72 = load ptr, ptr %s, align 8
  %ins_h45 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 18
  %73 = load i32, ptr %ins_h45, align 8
  %idxprom46 = zext i32 %73 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %71, i64 %idxprom46
  %74 = load i16, ptr %arrayidx47, align 2
  %75 = load ptr, ptr %s, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 16
  %76 = load ptr, ptr %prev, align 8
  %77 = load i32, ptr %str, align 4
  %78 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 13
  %79 = load i32, ptr %w_mask, align 8
  %and48 = and i32 %77, %79
  %idxprom49 = zext i32 %and48 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %76, i64 %idxprom49
  store i16 %74, ptr %arrayidx50, align 2
  %80 = load i32, ptr %str, align 4
  %conv51 = trunc i32 %80 to i16
  %81 = load ptr, ptr %s, align 8
  %head52 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 17
  %82 = load ptr, ptr %head52, align 8
  %83 = load ptr, ptr %s, align 8
  %ins_h53 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 18
  %84 = load i32, ptr %ins_h53, align 8
  %idxprom54 = zext i32 %84 to i64
  %arrayidx55 = getelementptr inbounds i16, ptr %82, i64 %idxprom54
  store i16 %conv51, ptr %arrayidx55, align 2
  %85 = load i32, ptr %str, align 4
  %inc = add i32 %85, 1
  store i32 %inc, ptr %str, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body38
  %86 = load i32, ptr %n, align 4
  %dec = add i32 %86, -1
  store i32 %dec, ptr %n, align 4
  %tobool56 = icmp ne i32 %dec, 0
  br i1 %tobool56, label %do.body38, label %do.end57, !llvm.loop !6

do.end57:                                         ; preds = %do.cond
  %87 = load i32, ptr %str, align 4
  %88 = load ptr, ptr %s, align 8
  %strstart58 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 27
  store i32 %87, ptr %strstart58, align 4
  %89 = load ptr, ptr %s, align 8
  %lookahead59 = getelementptr inbounds %struct.internal_state, ptr %89, i32 0, i32 29
  store i32 2, ptr %lookahead59, align 4
  %90 = load ptr, ptr %s, align 8
  call void @fill_window(ptr noundef %90)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %91 = load ptr, ptr %s, align 8
  %lookahead60 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 29
  %92 = load i32, ptr %lookahead60, align 4
  %93 = load ptr, ptr %s, align 8
  %strstart61 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 27
  %94 = load i32, ptr %strstart61, align 4
  %add62 = add i32 %94, %92
  store i32 %add62, ptr %strstart61, align 4
  %95 = load ptr, ptr %s, align 8
  %strstart63 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 27
  %96 = load i32, ptr %strstart63, align 4
  %conv64 = zext i32 %96 to i64
  %97 = load ptr, ptr %s, align 8
  %block_start65 = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 23
  store i64 %conv64, ptr %block_start65, align 8
  %98 = load ptr, ptr %s, align 8
  %lookahead66 = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 29
  %99 = load i32, ptr %lookahead66, align 4
  %100 = load ptr, ptr %s, align 8
  %insert67 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 55
  store i32 %99, ptr %insert67, align 4
  %101 = load ptr, ptr %s, align 8
  %lookahead68 = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 29
  store i32 0, ptr %lookahead68, align 4
  %102 = load ptr, ptr %s, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 30
  store i32 2, ptr %prev_length, align 8
  %103 = load ptr, ptr %s, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 24
  store i32 2, ptr %match_length, align 8
  %104 = load ptr, ptr %s, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 26
  store i32 0, ptr %match_available, align 8
  %105 = load ptr, ptr %next, align 8
  %106 = load ptr, ptr %strm.addr, align 8
  %next_in69 = getelementptr inbounds %struct.z_stream_s, ptr %106, i32 0, i32 0
  store ptr %105, ptr %next_in69, align 8
  %107 = load i32, ptr %avail, align 4
  %108 = load ptr, ptr %strm.addr, align 8
  %avail_in70 = getelementptr inbounds %struct.z_stream_s, ptr %108, i32 0, i32 1
  store i32 %107, ptr %avail_in70, align 8
  %109 = load i32, ptr %wrap, align 4
  %110 = load ptr, ptr %s, align 8
  %wrap71 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 6
  store i32 %109, ptr %wrap71, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %111 = load i32, ptr %retval, align 4
  ret i32 %111
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deflateStateCheck(ptr noundef %strm) #0 {
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
  %state = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %state, align 8
  store ptr %6, ptr %s, align 8
  %7 = load ptr, ptr %s, align 8
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.then30, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %8 = load ptr, ptr %s, align 8
  %strm6 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %strm6, align 8
  %10 = load ptr, ptr %strm.addr, align 8
  %cmp7 = icmp ne ptr %9, %10
  br i1 %cmp7, label %if.then30, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %11 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %status, align 8
  %cmp9 = icmp ne i32 %12, 42
  br i1 %cmp9, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %lor.lhs.false8
  %13 = load ptr, ptr %s, align 8
  %status10 = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %status10, align 8
  %cmp11 = icmp ne i32 %14, 57
  br i1 %cmp11, label %land.lhs.true12, label %if.end31

land.lhs.true12:                                  ; preds = %land.lhs.true
  %15 = load ptr, ptr %s, align 8
  %status13 = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %status13, align 8
  %cmp14 = icmp ne i32 %16, 69
  br i1 %cmp14, label %land.lhs.true15, label %if.end31

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %17 = load ptr, ptr %s, align 8
  %status16 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %status16, align 8
  %cmp17 = icmp ne i32 %18, 73
  br i1 %cmp17, label %land.lhs.true18, label %if.end31

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %19 = load ptr, ptr %s, align 8
  %status19 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %status19, align 8
  %cmp20 = icmp ne i32 %20, 91
  br i1 %cmp20, label %land.lhs.true21, label %if.end31

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %21 = load ptr, ptr %s, align 8
  %status22 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %status22, align 8
  %cmp23 = icmp ne i32 %22, 103
  br i1 %cmp23, label %land.lhs.true24, label %if.end31

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %23 = load ptr, ptr %s, align 8
  %status25 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %status25, align 8
  %cmp26 = icmp ne i32 %24, 113
  br i1 %cmp26, label %land.lhs.true27, label %if.end31

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %25 = load ptr, ptr %s, align 8
  %status28 = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %status28, align 8
  %cmp29 = icmp ne i32 %26, 666
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true27, %lor.lhs.false5, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true27, %land.lhs.true24, %land.lhs.true21, %land.lhs.true18, %land.lhs.true15, %land.lhs.true12, %land.lhs.true, %lor.lhs.false8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then30, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @fill_window(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %more = alloca i32, align 4
  %wsize = alloca i32, align 4
  %str = alloca i32, align 4
  %curr = alloca i64, align 8
  %init = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %w_size, align 8
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
  %12 = load i32, ptr %w_size5, align 8
  %sub6 = sub i32 %12, 262
  %add = add i32 %10, %sub6
  %cmp = icmp uge i32 %9, %add
  br i1 %cmp, label %if.then, label %if.end24

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
  %19 = load i32, ptr %more, align 4
  %sub9 = sub i32 %18, %19
  %conv10 = zext i32 %sub9 to i64
  %20 = load ptr, ptr %s.addr, align 8
  %window11 = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 14
  %21 = load ptr, ptr %window11, align 8
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %21, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %14, ptr noundef %add.ptr, i64 noundef %conv10, i64 noundef %22) #4
  %23 = load i32, ptr %wsize, align 4
  %24 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 28
  %25 = load i32, ptr %match_start, align 8
  %sub12 = sub i32 %25, %23
  store i32 %sub12, ptr %match_start, align 8
  %26 = load i32, ptr %wsize, align 4
  %27 = load ptr, ptr %s.addr, align 8
  %strstart13 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 27
  %28 = load i32, ptr %strstart13, align 4
  %sub14 = sub i32 %28, %26
  store i32 %sub14, ptr %strstart13, align 4
  %29 = load i32, ptr %wsize, align 4
  %conv15 = zext i32 %29 to i64
  %30 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 23
  %31 = load i64, ptr %block_start, align 8
  %sub16 = sub nsw i64 %31, %conv15
  store i64 %sub16, ptr %block_start, align 8
  %32 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 55
  %33 = load i32, ptr %insert, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %strstart17 = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 27
  %35 = load i32, ptr %strstart17, align 4
  %cmp18 = icmp ugt i32 %33, %35
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then
  %36 = load ptr, ptr %s.addr, align 8
  %strstart21 = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 27
  %37 = load i32, ptr %strstart21, align 4
  %38 = load ptr, ptr %s.addr, align 8
  %insert22 = getelementptr inbounds %struct.internal_state, ptr %38, i32 0, i32 55
  store i32 %37, ptr %insert22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then
  %39 = load ptr, ptr %s.addr, align 8
  call void @slide_hash(ptr noundef %39)
  %40 = load i32, ptr %wsize, align 4
  %41 = load i32, ptr %more, align 4
  %add23 = add i32 %41, %40
  store i32 %add23, ptr %more, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end, %do.body
  %42 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %strm, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %avail_in, align 8
  %cmp25 = icmp eq i32 %44, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  br label %do.end

if.end28:                                         ; preds = %if.end24
  %45 = load ptr, ptr %s.addr, align 8
  %strm29 = getelementptr inbounds %struct.internal_state, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %strm29, align 8
  %47 = load ptr, ptr %s.addr, align 8
  %window30 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 14
  %48 = load ptr, ptr %window30, align 8
  %49 = load ptr, ptr %s.addr, align 8
  %strstart31 = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 27
  %50 = load i32, ptr %strstart31, align 4
  %idx.ext32 = zext i32 %50 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %48, i64 %idx.ext32
  %51 = load ptr, ptr %s.addr, align 8
  %lookahead34 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 29
  %52 = load i32, ptr %lookahead34, align 4
  %idx.ext35 = zext i32 %52 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr33, i64 %idx.ext35
  %53 = load i32, ptr %more, align 4
  %call37 = call i32 @read_buf(ptr noundef %46, ptr noundef %add.ptr36, i32 noundef %53)
  store i32 %call37, ptr %n, align 4
  %54 = load i32, ptr %n, align 4
  %55 = load ptr, ptr %s.addr, align 8
  %lookahead38 = getelementptr inbounds %struct.internal_state, ptr %55, i32 0, i32 29
  %56 = load i32, ptr %lookahead38, align 4
  %add39 = add i32 %56, %54
  store i32 %add39, ptr %lookahead38, align 4
  %57 = load ptr, ptr %s.addr, align 8
  %lookahead40 = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 29
  %58 = load i32, ptr %lookahead40, align 4
  %59 = load ptr, ptr %s.addr, align 8
  %insert41 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 55
  %60 = load i32, ptr %insert41, align 4
  %add42 = add i32 %58, %60
  %cmp43 = icmp uge i32 %add42, 3
  br i1 %cmp43, label %if.then45, label %if.end91

if.then45:                                        ; preds = %if.end28
  %61 = load ptr, ptr %s.addr, align 8
  %strstart46 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 27
  %62 = load i32, ptr %strstart46, align 4
  %63 = load ptr, ptr %s.addr, align 8
  %insert47 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 55
  %64 = load i32, ptr %insert47, align 4
  %sub48 = sub i32 %62, %64
  store i32 %sub48, ptr %str, align 4
  %65 = load ptr, ptr %s.addr, align 8
  %window49 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 14
  %66 = load ptr, ptr %window49, align 8
  %67 = load i32, ptr %str, align 4
  %idxprom = zext i32 %67 to i64
  %arrayidx = getelementptr inbounds i8, ptr %66, i64 %idxprom
  %68 = load i8, ptr %arrayidx, align 1
  %conv50 = zext i8 %68 to i32
  %69 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 18
  store i32 %conv50, ptr %ins_h, align 8
  %70 = load ptr, ptr %s.addr, align 8
  %ins_h51 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 18
  %71 = load i32, ptr %ins_h51, align 8
  %72 = load ptr, ptr %s.addr, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 22
  %73 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %71, %73
  %74 = load ptr, ptr %s.addr, align 8
  %window52 = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 14
  %75 = load ptr, ptr %window52, align 8
  %76 = load i32, ptr %str, align 4
  %add53 = add i32 %76, 1
  %idxprom54 = zext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds i8, ptr %75, i64 %idxprom54
  %77 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %77 to i32
  %xor = xor i32 %shl, %conv56
  %78 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 21
  %79 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %79
  %80 = load ptr, ptr %s.addr, align 8
  %ins_h57 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 18
  store i32 %and, ptr %ins_h57, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end90, %if.then45
  %81 = load ptr, ptr %s.addr, align 8
  %insert58 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 55
  %82 = load i32, ptr %insert58, align 4
  %tobool = icmp ne i32 %82, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %83 = load ptr, ptr %s.addr, align 8
  %ins_h59 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 18
  %84 = load i32, ptr %ins_h59, align 8
  %85 = load ptr, ptr %s.addr, align 8
  %hash_shift60 = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 22
  %86 = load i32, ptr %hash_shift60, align 8
  %shl61 = shl i32 %84, %86
  %87 = load ptr, ptr %s.addr, align 8
  %window62 = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 14
  %88 = load ptr, ptr %window62, align 8
  %89 = load i32, ptr %str, align 4
  %add63 = add i32 %89, 3
  %sub64 = sub i32 %add63, 1
  %idxprom65 = zext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds i8, ptr %88, i64 %idxprom65
  %90 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %90 to i32
  %xor68 = xor i32 %shl61, %conv67
  %91 = load ptr, ptr %s.addr, align 8
  %hash_mask69 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 21
  %92 = load i32, ptr %hash_mask69, align 4
  %and70 = and i32 %xor68, %92
  %93 = load ptr, ptr %s.addr, align 8
  %ins_h71 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 18
  store i32 %and70, ptr %ins_h71, align 8
  %94 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 17
  %95 = load ptr, ptr %head, align 8
  %96 = load ptr, ptr %s.addr, align 8
  %ins_h72 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 18
  %97 = load i32, ptr %ins_h72, align 8
  %idxprom73 = zext i32 %97 to i64
  %arrayidx74 = getelementptr inbounds i16, ptr %95, i64 %idxprom73
  %98 = load i16, ptr %arrayidx74, align 2
  %99 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %99, i32 0, i32 16
  %100 = load ptr, ptr %prev, align 8
  %101 = load i32, ptr %str, align 4
  %102 = load ptr, ptr %s.addr, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 13
  %103 = load i32, ptr %w_mask, align 8
  %and75 = and i32 %101, %103
  %idxprom76 = zext i32 %and75 to i64
  %arrayidx77 = getelementptr inbounds i16, ptr %100, i64 %idxprom76
  store i16 %98, ptr %arrayidx77, align 2
  %104 = load i32, ptr %str, align 4
  %conv78 = trunc i32 %104 to i16
  %105 = load ptr, ptr %s.addr, align 8
  %head79 = getelementptr inbounds %struct.internal_state, ptr %105, i32 0, i32 17
  %106 = load ptr, ptr %head79, align 8
  %107 = load ptr, ptr %s.addr, align 8
  %ins_h80 = getelementptr inbounds %struct.internal_state, ptr %107, i32 0, i32 18
  %108 = load i32, ptr %ins_h80, align 8
  %idxprom81 = zext i32 %108 to i64
  %arrayidx82 = getelementptr inbounds i16, ptr %106, i64 %idxprom81
  store i16 %conv78, ptr %arrayidx82, align 2
  %109 = load i32, ptr %str, align 4
  %inc = add i32 %109, 1
  store i32 %inc, ptr %str, align 4
  %110 = load ptr, ptr %s.addr, align 8
  %insert83 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 55
  %111 = load i32, ptr %insert83, align 4
  %dec = add i32 %111, -1
  store i32 %dec, ptr %insert83, align 4
  %112 = load ptr, ptr %s.addr, align 8
  %lookahead84 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 29
  %113 = load i32, ptr %lookahead84, align 4
  %114 = load ptr, ptr %s.addr, align 8
  %insert85 = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 55
  %115 = load i32, ptr %insert85, align 4
  %add86 = add i32 %113, %115
  %cmp87 = icmp ult i32 %add86, 3
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %while.body
  br label %while.end

if.end90:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.then89, %while.cond
  br label %if.end91

if.end91:                                         ; preds = %while.end, %if.end28
  br label %do.cond

do.cond:                                          ; preds = %if.end91
  %116 = load ptr, ptr %s.addr, align 8
  %lookahead92 = getelementptr inbounds %struct.internal_state, ptr %116, i32 0, i32 29
  %117 = load i32, ptr %lookahead92, align 4
  %cmp93 = icmp ult i32 %117, 262
  br i1 %cmp93, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %118 = load ptr, ptr %s.addr, align 8
  %strm95 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 0
  %119 = load ptr, ptr %strm95, align 8
  %avail_in96 = getelementptr inbounds %struct.z_stream_s, ptr %119, i32 0, i32 1
  %120 = load i32, ptr %avail_in96, align 8
  %cmp97 = icmp ne i32 %120, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %121 = phi i1 [ false, %do.cond ], [ %cmp97, %land.rhs ]
  br i1 %121, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %land.end, %if.then27
  %122 = load ptr, ptr %s.addr, align 8
  %high_water = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 59
  %123 = load i64, ptr %high_water, align 8
  %124 = load ptr, ptr %s.addr, align 8
  %window_size99 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 15
  %125 = load i64, ptr %window_size99, align 8
  %cmp100 = icmp ult i64 %123, %125
  br i1 %cmp100, label %if.then102, label %if.end158

if.then102:                                       ; preds = %do.end
  %126 = load ptr, ptr %s.addr, align 8
  %strstart103 = getelementptr inbounds %struct.internal_state, ptr %126, i32 0, i32 27
  %127 = load i32, ptr %strstart103, align 4
  %conv104 = zext i32 %127 to i64
  %128 = load ptr, ptr %s.addr, align 8
  %lookahead105 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 29
  %129 = load i32, ptr %lookahead105, align 4
  %conv106 = zext i32 %129 to i64
  %add107 = add i64 %conv104, %conv106
  store i64 %add107, ptr %curr, align 8
  %130 = load ptr, ptr %s.addr, align 8
  %high_water108 = getelementptr inbounds %struct.internal_state, ptr %130, i32 0, i32 59
  %131 = load i64, ptr %high_water108, align 8
  %132 = load i64, ptr %curr, align 8
  %cmp109 = icmp ult i64 %131, %132
  br i1 %cmp109, label %if.then111, label %if.else

if.then111:                                       ; preds = %if.then102
  %133 = load ptr, ptr %s.addr, align 8
  %window_size112 = getelementptr inbounds %struct.internal_state, ptr %133, i32 0, i32 15
  %134 = load i64, ptr %window_size112, align 8
  %135 = load i64, ptr %curr, align 8
  %sub113 = sub i64 %134, %135
  store i64 %sub113, ptr %init, align 8
  %136 = load i64, ptr %init, align 8
  %cmp114 = icmp ugt i64 %136, 258
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.then111
  store i64 258, ptr %init, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.then111
  %137 = load ptr, ptr %s.addr, align 8
  %window118 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 14
  %138 = load ptr, ptr %window118, align 8
  %139 = load i64, ptr %curr, align 8
  %add.ptr119 = getelementptr inbounds i8, ptr %138, i64 %139
  %140 = load i64, ptr %init, align 8
  %conv120 = trunc i64 %140 to i32
  %conv121 = zext i32 %conv120 to i64
  %141 = load ptr, ptr %s.addr, align 8
  %window122 = getelementptr inbounds %struct.internal_state, ptr %141, i32 0, i32 14
  %142 = load ptr, ptr %window122, align 8
  %143 = load i64, ptr %curr, align 8
  %add.ptr123 = getelementptr inbounds i8, ptr %142, i64 %143
  %144 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr123, i1 false, i1 true, i1 false)
  %call124 = call ptr @__memset_chk(ptr noundef %add.ptr119, i32 noundef 0, i64 noundef %conv121, i64 noundef %144) #4
  %145 = load i64, ptr %curr, align 8
  %146 = load i64, ptr %init, align 8
  %add125 = add i64 %145, %146
  %147 = load ptr, ptr %s.addr, align 8
  %high_water126 = getelementptr inbounds %struct.internal_state, ptr %147, i32 0, i32 59
  store i64 %add125, ptr %high_water126, align 8
  br label %if.end157

if.else:                                          ; preds = %if.then102
  %148 = load ptr, ptr %s.addr, align 8
  %high_water127 = getelementptr inbounds %struct.internal_state, ptr %148, i32 0, i32 59
  %149 = load i64, ptr %high_water127, align 8
  %150 = load i64, ptr %curr, align 8
  %add128 = add i64 %150, 258
  %cmp129 = icmp ult i64 %149, %add128
  br i1 %cmp129, label %if.then131, label %if.end156

if.then131:                                       ; preds = %if.else
  %151 = load i64, ptr %curr, align 8
  %add132 = add i64 %151, 258
  %152 = load ptr, ptr %s.addr, align 8
  %high_water133 = getelementptr inbounds %struct.internal_state, ptr %152, i32 0, i32 59
  %153 = load i64, ptr %high_water133, align 8
  %sub134 = sub i64 %add132, %153
  store i64 %sub134, ptr %init, align 8
  %154 = load i64, ptr %init, align 8
  %155 = load ptr, ptr %s.addr, align 8
  %window_size135 = getelementptr inbounds %struct.internal_state, ptr %155, i32 0, i32 15
  %156 = load i64, ptr %window_size135, align 8
  %157 = load ptr, ptr %s.addr, align 8
  %high_water136 = getelementptr inbounds %struct.internal_state, ptr %157, i32 0, i32 59
  %158 = load i64, ptr %high_water136, align 8
  %sub137 = sub i64 %156, %158
  %cmp138 = icmp ugt i64 %154, %sub137
  br i1 %cmp138, label %if.then140, label %if.end144

if.then140:                                       ; preds = %if.then131
  %159 = load ptr, ptr %s.addr, align 8
  %window_size141 = getelementptr inbounds %struct.internal_state, ptr %159, i32 0, i32 15
  %160 = load i64, ptr %window_size141, align 8
  %161 = load ptr, ptr %s.addr, align 8
  %high_water142 = getelementptr inbounds %struct.internal_state, ptr %161, i32 0, i32 59
  %162 = load i64, ptr %high_water142, align 8
  %sub143 = sub i64 %160, %162
  store i64 %sub143, ptr %init, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then140, %if.then131
  %163 = load ptr, ptr %s.addr, align 8
  %window145 = getelementptr inbounds %struct.internal_state, ptr %163, i32 0, i32 14
  %164 = load ptr, ptr %window145, align 8
  %165 = load ptr, ptr %s.addr, align 8
  %high_water146 = getelementptr inbounds %struct.internal_state, ptr %165, i32 0, i32 59
  %166 = load i64, ptr %high_water146, align 8
  %add.ptr147 = getelementptr inbounds i8, ptr %164, i64 %166
  %167 = load i64, ptr %init, align 8
  %conv148 = trunc i64 %167 to i32
  %conv149 = zext i32 %conv148 to i64
  %168 = load ptr, ptr %s.addr, align 8
  %window150 = getelementptr inbounds %struct.internal_state, ptr %168, i32 0, i32 14
  %169 = load ptr, ptr %window150, align 8
  %170 = load ptr, ptr %s.addr, align 8
  %high_water151 = getelementptr inbounds %struct.internal_state, ptr %170, i32 0, i32 59
  %171 = load i64, ptr %high_water151, align 8
  %add.ptr152 = getelementptr inbounds i8, ptr %169, i64 %171
  %172 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr152, i1 false, i1 true, i1 false)
  %call153 = call ptr @__memset_chk(ptr noundef %add.ptr147, i32 noundef 0, i64 noundef %conv149, i64 noundef %172) #4
  %173 = load i64, ptr %init, align 8
  %174 = load ptr, ptr %s.addr, align 8
  %high_water154 = getelementptr inbounds %struct.internal_state, ptr %174, i32 0, i32 59
  %175 = load i64, ptr %high_water154, align 8
  %add155 = add i64 %175, %173
  store i64 %add155, ptr %high_water154, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.end144, %if.else
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end117
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %do.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateGetDictionary(ptr noundef %strm, ptr noundef %dictionary, ptr noundef %dictLength) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store ptr %dictLength, ptr %dictLength.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %s, align 8
  %3 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 27
  %4 = load i32, ptr %strstart, align 4
  %5 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 29
  %6 = load i32, ptr %lookahead, align 4
  %add = add i32 %4, %6
  store i32 %add, ptr %len, align 4
  %7 = load i32, ptr %len, align 4
  %8 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 11
  %9 = load i32, ptr %w_size, align 8
  %cmp = icmp ugt i32 %7, %9
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %10 = load ptr, ptr %s, align 8
  %w_size2 = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 11
  %11 = load i32, ptr %w_size2, align 8
  store i32 %11, ptr %len, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %12 = load ptr, ptr %dictionary.addr, align 8
  %cmp4 = icmp ne ptr %12, null
  br i1 %cmp4, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end3
  %13 = load i32, ptr %len, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then6, label %if.end14

if.then6:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %dictionary.addr, align 8
  %15 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 14
  %16 = load ptr, ptr %window, align 8
  %17 = load ptr, ptr %s, align 8
  %strstart7 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 27
  %18 = load i32, ptr %strstart7, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %idx.ext
  %19 = load ptr, ptr %s, align 8
  %lookahead8 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 29
  %20 = load i32, ptr %lookahead8, align 4
  %idx.ext9 = zext i32 %20 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext9
  %21 = load i32, ptr %len, align 4
  %idx.ext11 = zext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext11
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr10, i64 %idx.neg
  %22 = load i32, ptr %len, align 4
  %conv = zext i32 %22 to i64
  %23 = load ptr, ptr %dictionary.addr, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %23, i1 false, i1 true, i1 false)
  %call13 = call ptr @__memcpy_chk(ptr noundef %14, ptr noundef %add.ptr12, i64 noundef %conv, i64 noundef %24) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %land.lhs.true, %if.end3
  %25 = load ptr, ptr %dictLength.addr, align 8
  %cmp15 = icmp ne ptr %25, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %26 = load i32, ptr %len, align 4
  %27 = load ptr, ptr %dictLength.addr, align 8
  store i32 %26, ptr %27, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @deflateResetKeep(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 5
  store i64 0, ptr %total_out, align 8
  %2 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 2
  store i64 0, ptr %total_in, align 8
  %3 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 6
  store ptr null, ptr %msg, align 8
  %4 = load ptr, ptr %strm.addr, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 11
  store i32 2, ptr %data_type, align 8
  %5 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %state, align 8
  store ptr %6, ptr %s, align 8
  %7 = load ptr, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 5
  store i64 0, ptr %pending, align 8
  %8 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pending_buf, align 8
  %10 = load ptr, ptr %s, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 4
  store ptr %9, ptr %pending_out, align 8
  %11 = load ptr, ptr %s, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %wrap, align 8
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %13 = load ptr, ptr %s, align 8
  %wrap2 = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %wrap2, align 8
  %sub = sub nsw i32 0, %14
  %15 = load ptr, ptr %s, align 8
  %wrap3 = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 6
  store i32 %sub, ptr %wrap3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %16 = load ptr, ptr %s, align 8
  %wrap5 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %wrap5, align 8
  %cmp6 = icmp eq i32 %17, 2
  %18 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i32 57, i32 42
  %19 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 1
  store i32 %cond, ptr %status, align 8
  %20 = load ptr, ptr %s, align 8
  %wrap7 = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %wrap7, align 8
  %cmp8 = icmp eq i32 %21, 2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  %call9 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  %call10 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi i64 [ %call9, %cond.true ], [ %call10, %cond.false ]
  %22 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 12
  store i64 %cond11, ptr %adler, align 8
  %23 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 10
  store i32 -2, ptr %last_flush, align 4
  %24 = load ptr, ptr %s, align 8
  call void @_tr_init(ptr noundef %24)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

declare void @_tr_init(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @lm_init(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %w_size, align 8
  %conv = zext i32 %1 to i64
  %mul = mul i64 2, %conv
  %2 = load ptr, ptr %s.addr, align 8
  %window_size = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 15
  store i64 %mul, ptr %window_size, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  %slid = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 60
  store i32 0, ptr %slid, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load ptr, ptr %s.addr, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 33
  %16 = load i32, ptr %level, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom7
  %max_lazy = getelementptr inbounds %struct.config_s, ptr %arrayidx8, i32 0, i32 1
  %17 = load i16, ptr %max_lazy, align 2
  %conv9 = zext i16 %17 to i32
  %18 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 32
  store i32 %conv9, ptr %max_lazy_match, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %level10 = getelementptr inbounds %struct.internal_state, ptr %19, i32 0, i32 33
  %20 = load i32, ptr %level10, align 4
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom11
  %good_length = getelementptr inbounds %struct.config_s, ptr %arrayidx12, i32 0, i32 0
  %21 = load i16, ptr %good_length, align 8
  %conv13 = zext i16 %21 to i32
  %22 = load ptr, ptr %s.addr, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 35
  store i32 %conv13, ptr %good_match, align 4
  %23 = load ptr, ptr %s.addr, align 8
  %level14 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 33
  %24 = load i32, ptr %level14, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom15
  %nice_length = getelementptr inbounds %struct.config_s, ptr %arrayidx16, i32 0, i32 2
  %25 = load i16, ptr %nice_length, align 4
  %conv17 = zext i16 %25 to i32
  %26 = load ptr, ptr %s.addr, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 36
  store i32 %conv17, ptr %nice_match, align 8
  %27 = load ptr, ptr %s.addr, align 8
  %level18 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 33
  %28 = load i32, ptr %level18, align 4
  %idxprom19 = sext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom19
  %max_chain = getelementptr inbounds %struct.config_s, ptr %arrayidx20, i32 0, i32 3
  %29 = load i16, ptr %max_chain, align 2
  %conv21 = zext i16 %29 to i32
  %30 = load ptr, ptr %s.addr, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 31
  store i32 %conv21, ptr %max_chain_length, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 27
  store i32 0, ptr %strstart, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 23
  store i64 0, ptr %block_start, align 8
  %33 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 29
  store i32 0, ptr %lookahead, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 55
  store i32 0, ptr %insert, align 4
  %35 = load ptr, ptr %s.addr, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 30
  store i32 2, ptr %prev_length, align 8
  %36 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 24
  store i32 2, ptr %match_length, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 26
  store i32 0, ptr %match_available, align 8
  %38 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %38, i32 0, i32 18
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
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %wrap, align 8
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %head.addr, align 8
  %5 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %state1, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 7
  store ptr %4, ptr %gzhead, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflatePending(ptr noundef %strm, ptr noundef %pending, ptr noundef %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %pending.addr = alloca ptr, align 8
  %bits.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %pending, ptr %pending.addr, align 8
  store ptr %bits, ptr %bits.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bits.addr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 57
  %4 = load i32, ptr %bi_valid, align 4
  %5 = load ptr, ptr %bits.addr, align 8
  store i32 %4, ptr %5, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %6 = load ptr, ptr %pending.addr, align 8
  %cmp3 = icmp ne ptr %6, null
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.end2
  %7 = load ptr, ptr %strm.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %state5, align 8
  %pending6 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %pending6, align 8
  %conv = trunc i64 %9 to i32
  %10 = load ptr, ptr %pending.addr, align 8
  store i32 %conv, ptr %10, align 4
  %11 = load ptr, ptr %pending.addr, align 8
  %12 = load i32, ptr %11, align 4
  %conv7 = zext i32 %12 to i64
  %13 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %state8, align 8
  %pending9 = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 5
  %15 = load i64, ptr %pending9, align 8
  %cmp10 = icmp ne i64 %conv7, %15
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then4
  %16 = load ptr, ptr %pending.addr, align 8
  store i32 -1, ptr %16, align 4
  store i32 -5, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateUsed(ptr noundef %strm, ptr noundef %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %bits.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %bits, ptr %bits.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bits.addr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state, align 8
  %bi_used = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 58
  %4 = load i32, ptr %bi_used, align 8
  %5 = load ptr, ptr %bits.addr, align 8
  store i32 %4, ptr %5, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflatePrime(ptr noundef %strm, i32 noundef %bits, i32 noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %put = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  store i32 %value, ptr %value.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %s, align 8
  %3 = load i32, ptr %bits.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %bits.addr, align 4
  %cmp1 = icmp sgt i32 %4, 16
  br i1 %cmp1, label %if.then4, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %s, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %5, i32 0, i32 48
  %6 = load ptr, ptr %sym_buf, align 8
  %7 = load ptr, ptr %s, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pending_out, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 2
  %cmp3 = icmp ult ptr %6, %add.ptr
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %if.end
  store i32 -5, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %lor.lhs.false2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end5
  %9 = load ptr, ptr %s, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 57
  %10 = load i32, ptr %bi_valid, align 4
  %sub = sub nsw i32 16, %10
  store i32 %sub, ptr %put, align 4
  %11 = load i32, ptr %put, align 4
  %12 = load i32, ptr %bits.addr, align 4
  %cmp6 = icmp sgt i32 %11, %12
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body
  %13 = load i32, ptr %bits.addr, align 4
  store i32 %13, ptr %put, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body
  %14 = load i32, ptr %value.addr, align 4
  %15 = load i32, ptr %put, align 4
  %shl = shl i32 1, %15
  %sub9 = sub nsw i32 %shl, 1
  %and = and i32 %14, %sub9
  %16 = load ptr, ptr %s, align 8
  %bi_valid10 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 57
  %17 = load i32, ptr %bi_valid10, align 4
  %shl11 = shl i32 %and, %17
  %conv = trunc i32 %shl11 to i16
  %conv12 = zext i16 %conv to i32
  %18 = load ptr, ptr %s, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 56
  %19 = load i16, ptr %bi_buf, align 8
  %conv13 = zext i16 %19 to i32
  %or = or i32 %conv13, %conv12
  %conv14 = trunc i32 %or to i16
  store i16 %conv14, ptr %bi_buf, align 8
  %20 = load i32, ptr %put, align 4
  %21 = load ptr, ptr %s, align 8
  %bi_valid15 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 57
  %22 = load i32, ptr %bi_valid15, align 4
  %add = add nsw i32 %22, %20
  store i32 %add, ptr %bi_valid15, align 4
  %23 = load ptr, ptr %s, align 8
  call void @_tr_flush_bits(ptr noundef %23)
  %24 = load i32, ptr %put, align 4
  %25 = load i32, ptr %value.addr, align 4
  %shr = ashr i32 %25, %24
  store i32 %shr, ptr %value.addr, align 4
  %26 = load i32, ptr %put, align 4
  %27 = load i32, ptr %bits.addr, align 4
  %sub16 = sub nsw i32 %27, %26
  store i32 %sub16, ptr %bits.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end8
  %28 = load i32, ptr %bits.addr, align 4
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then4, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

declare void @_tr_flush_bits(ptr noundef) #1

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
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %s, align 8
  %3 = load i32, ptr %level.addr, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 6, ptr %level.addr, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %4 = load i32, ptr %level.addr, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %5 = load i32, ptr %level.addr, align 4
  %cmp4 = icmp sgt i32 %5, 9
  br i1 %cmp4, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = load i32, ptr %strategy.addr, align 4
  %cmp6 = icmp slt i32 %6, 0
  br i1 %cmp6, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %7 = load i32, ptr %strategy.addr, align 4
  %cmp8 = icmp sgt i32 %7, 4
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %if.end2
  store i32 -2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false7
  %8 = load ptr, ptr %s, align 8
  %level11 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 33
  %9 = load i32, ptr %level11, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom
  %func12 = getelementptr inbounds %struct.config_s, ptr %arrayidx, i32 0, i32 4
  %10 = load ptr, ptr %func12, align 8
  store ptr %10, ptr %func, align 8
  %11 = load i32, ptr %strategy.addr, align 4
  %12 = load ptr, ptr %s, align 8
  %strategy13 = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 34
  %13 = load i32, ptr %strategy13, align 8
  %cmp14 = icmp ne i32 %11, %13
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end10
  %14 = load ptr, ptr %func, align 8
  %15 = load i32, ptr %level.addr, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom16
  %func18 = getelementptr inbounds %struct.config_s, ptr %arrayidx17, i32 0, i32 4
  %16 = load ptr, ptr %func18, align 8
  %cmp19 = icmp ne ptr %14, %16
  br i1 %cmp19, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %lor.lhs.false15, %if.end10
  %17 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 10
  %18 = load i32, ptr %last_flush, align 4
  %cmp20 = icmp ne i32 %18, -2
  br i1 %cmp20, label %if.then21, label %if.end32

if.then21:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %strm.addr, align 8
  %call22 = call i32 @deflate(ptr noundef %19, i32 noundef 5)
  store i32 %call22, ptr %err, align 4
  %20 = load i32, ptr %err, align 4
  %cmp23 = icmp eq i32 %20, -2
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  %21 = load i32, ptr %err, align 4
  store i32 %21, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then21
  %22 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %avail_in, align 8
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end25
  %24 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 27
  %25 = load i32, ptr %strstart, align 4
  %conv = zext i32 %25 to i64
  %26 = load ptr, ptr %s, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 23
  %27 = load i64, ptr %block_start, align 8
  %sub = sub nsw i64 %conv, %27
  %28 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 29
  %29 = load i32, ptr %lookahead, align 4
  %conv28 = zext i32 %29 to i64
  %add = add nsw i64 %sub, %conv28
  %tobool29 = icmp ne i64 %add, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false27, %if.end25
  store i32 -5, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %lor.lhs.false27
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %land.lhs.true, %lor.lhs.false15
  %30 = load ptr, ptr %s, align 8
  %level33 = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 33
  %31 = load i32, ptr %level33, align 4
  %32 = load i32, ptr %level.addr, align 4
  %cmp34 = icmp ne i32 %31, %32
  br i1 %cmp34, label %if.then36, label %if.end73

if.then36:                                        ; preds = %if.end32
  %33 = load ptr, ptr %s, align 8
  %level37 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 33
  %34 = load i32, ptr %level37, align 4
  %cmp38 = icmp eq i32 %34, 0
  br i1 %cmp38, label %land.lhs.true40, label %if.end59

land.lhs.true40:                                  ; preds = %if.then36
  %35 = load ptr, ptr %s, align 8
  %matches = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 54
  %36 = load i32, ptr %matches, align 8
  %cmp41 = icmp ne i32 %36, 0
  br i1 %cmp41, label %if.then43, label %if.end59

if.then43:                                        ; preds = %land.lhs.true40
  %37 = load ptr, ptr %s, align 8
  %matches44 = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 54
  %38 = load i32, ptr %matches44, align 8
  %cmp45 = icmp eq i32 %38, 1
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.then43
  %39 = load ptr, ptr %s, align 8
  call void @slide_hash(ptr noundef %39)
  br label %if.end57

if.else:                                          ; preds = %if.then43
  br label %do.body

do.body:                                          ; preds = %if.else
  %40 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 17
  %41 = load ptr, ptr %head, align 8
  %42 = load ptr, ptr %s, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 19
  %43 = load i32, ptr %hash_size, align 4
  %sub48 = sub i32 %43, 1
  %idxprom49 = zext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %41, i64 %idxprom49
  store i16 0, ptr %arrayidx50, align 2
  %44 = load ptr, ptr %s, align 8
  %head51 = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 17
  %45 = load ptr, ptr %head51, align 8
  %46 = load ptr, ptr %s, align 8
  %hash_size52 = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 19
  %47 = load i32, ptr %hash_size52, align 4
  %sub53 = sub i32 %47, 1
  %conv54 = zext i32 %sub53 to i64
  %mul = mul i64 %conv54, 2
  %48 = load ptr, ptr %s, align 8
  %head55 = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 17
  %49 = load ptr, ptr %head55, align 8
  %50 = call i64 @llvm.objectsize.i64.p0(ptr %49, i1 false, i1 true, i1 false)
  %call56 = call ptr @__memset_chk(ptr noundef %45, i32 noundef 0, i64 noundef %mul, i64 noundef %50) #4
  %51 = load ptr, ptr %s, align 8
  %slid = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 60
  store i32 0, ptr %slid, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end57

if.end57:                                         ; preds = %do.end, %if.then47
  %52 = load ptr, ptr %s, align 8
  %matches58 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 54
  store i32 0, ptr %matches58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end57, %land.lhs.true40, %if.then36
  %53 = load i32, ptr %level.addr, align 4
  %54 = load ptr, ptr %s, align 8
  %level60 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 33
  store i32 %53, ptr %level60, align 4
  %55 = load i32, ptr %level.addr, align 4
  %idxprom61 = sext i32 %55 to i64
  %arrayidx62 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom61
  %max_lazy = getelementptr inbounds %struct.config_s, ptr %arrayidx62, i32 0, i32 1
  %56 = load i16, ptr %max_lazy, align 2
  %conv63 = zext i16 %56 to i32
  %57 = load ptr, ptr %s, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 32
  store i32 %conv63, ptr %max_lazy_match, align 8
  %58 = load i32, ptr %level.addr, align 4
  %idxprom64 = sext i32 %58 to i64
  %arrayidx65 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom64
  %good_length = getelementptr inbounds %struct.config_s, ptr %arrayidx65, i32 0, i32 0
  %59 = load i16, ptr %good_length, align 8
  %conv66 = zext i16 %59 to i32
  %60 = load ptr, ptr %s, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 35
  store i32 %conv66, ptr %good_match, align 4
  %61 = load i32, ptr %level.addr, align 4
  %idxprom67 = sext i32 %61 to i64
  %arrayidx68 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom67
  %nice_length = getelementptr inbounds %struct.config_s, ptr %arrayidx68, i32 0, i32 2
  %62 = load i16, ptr %nice_length, align 4
  %conv69 = zext i16 %62 to i32
  %63 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 36
  store i32 %conv69, ptr %nice_match, align 8
  %64 = load i32, ptr %level.addr, align 4
  %idxprom70 = sext i32 %64 to i64
  %arrayidx71 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom70
  %max_chain = getelementptr inbounds %struct.config_s, ptr %arrayidx71, i32 0, i32 3
  %65 = load i16, ptr %max_chain, align 2
  %conv72 = zext i16 %65 to i32
  %66 = load ptr, ptr %s, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 31
  store i32 %conv72, ptr %max_chain_length, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end59, %if.end32
  %67 = load i32, ptr %strategy.addr, align 4
  %68 = load ptr, ptr %s, align 8
  %strategy74 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 34
  store i32 %67, ptr %strategy74, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then30, %if.then24, %if.then9, %if.then
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
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
  %beg = alloca i64, align 8
  %left = alloca i64, align 8
  %copy = alloca i64, align 8
  %beg393 = alloca i64, align 8
  %val = alloca i32, align 4
  %beg472 = alloca i64, align 8
  %val474 = alloca i32, align 4
  %bstate = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %flush.addr, align 4
  %cmp = icmp sgt i32 %1, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %flush.addr, align 4
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %3 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state, align 8
  store ptr %4, ptr %s, align 8
  %5 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %next_out, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then11, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %7 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %avail_in, align 8
  %cmp5 = icmp ne i32 %8, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false7

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %9 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %next_in, align 8
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %if.then11, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false4
  %11 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %status, align 8
  %cmp8 = icmp eq i32 %12, 666
  br i1 %cmp8, label %land.lhs.true9, label %if.end12

land.lhs.true9:                                   ; preds = %lor.lhs.false7
  %13 = load i32, ptr %flush.addr, align 4
  %cmp10 = icmp ne i32 %13, 4
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true9, %land.lhs.true, %if.end
  %14 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 8
  %15 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 6
  store ptr %14, ptr %msg, align 8
  store i32 -2, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true9, %lor.lhs.false7
  %16 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %avail_out, align 8
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %18 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %19 = load ptr, ptr %strm.addr, align 8
  %msg15 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 6
  store ptr %18, ptr %msg15, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %20 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 10
  %21 = load i32, ptr %last_flush, align 4
  store i32 %21, ptr %old_flush, align 4
  %22 = load i32, ptr %flush.addr, align 4
  %23 = load ptr, ptr %s, align 8
  %last_flush17 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 10
  store i32 %22, ptr %last_flush17, align 4
  %24 = load ptr, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 5
  %25 = load i64, ptr %pending, align 8
  %cmp18 = icmp ne i64 %25, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  %26 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %26)
  %27 = load ptr, ptr %strm.addr, align 8
  %avail_out20 = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 4
  %28 = load i32, ptr %avail_out20, align 8
  %cmp21 = icmp eq i32 %28, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then19
  %29 = load ptr, ptr %s, align 8
  %last_flush23 = getelementptr inbounds %struct.internal_state, ptr %29, i32 0, i32 10
  store i32 -1, ptr %last_flush23, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then19
  br label %if.end39

if.else:                                          ; preds = %if.end16
  %30 = load ptr, ptr %strm.addr, align 8
  %avail_in25 = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %avail_in25, align 8
  %cmp26 = icmp eq i32 %31, 0
  br i1 %cmp26, label %land.lhs.true27, label %if.end38

land.lhs.true27:                                  ; preds = %if.else
  %32 = load i32, ptr %flush.addr, align 4
  %mul = mul nsw i32 %32, 2
  %33 = load i32, ptr %flush.addr, align 4
  %cmp28 = icmp sgt i32 %33, 4
  %34 = zext i1 %cmp28 to i64
  %cond = select i1 %cmp28, i32 9, i32 0
  %sub = sub nsw i32 %mul, %cond
  %35 = load i32, ptr %old_flush, align 4
  %mul29 = mul nsw i32 %35, 2
  %36 = load i32, ptr %old_flush, align 4
  %cmp30 = icmp sgt i32 %36, 4
  %37 = zext i1 %cmp30 to i64
  %cond31 = select i1 %cmp30, i32 9, i32 0
  %sub32 = sub nsw i32 %mul29, %cond31
  %cmp33 = icmp sle i32 %sub, %sub32
  br i1 %cmp33, label %land.lhs.true34, label %if.end38

land.lhs.true34:                                  ; preds = %land.lhs.true27
  %38 = load i32, ptr %flush.addr, align 4
  %cmp35 = icmp ne i32 %38, 4
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %land.lhs.true34
  %39 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %40 = load ptr, ptr %strm.addr, align 8
  %msg37 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 6
  store ptr %39, ptr %msg37, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %land.lhs.true34, %land.lhs.true27, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end24
  %41 = load ptr, ptr %s, align 8
  %status40 = getelementptr inbounds %struct.internal_state, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %status40, align 8
  %cmp41 = icmp eq i32 %42, 666
  br i1 %cmp41, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %if.end39
  %43 = load ptr, ptr %strm.addr, align 8
  %avail_in43 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %avail_in43, align 8
  %cmp44 = icmp ne i32 %44, 0
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %land.lhs.true42
  %45 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %46 = load ptr, ptr %strm.addr, align 8
  %msg46 = getelementptr inbounds %struct.z_stream_s, ptr %46, i32 0, i32 6
  store ptr %45, ptr %msg46, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %land.lhs.true42, %if.end39
  %47 = load ptr, ptr %s, align 8
  %status48 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %status48, align 8
  %cmp49 = icmp eq i32 %48, 42
  br i1 %cmp49, label %land.lhs.true50, label %if.end54

land.lhs.true50:                                  ; preds = %if.end47
  %49 = load ptr, ptr %s, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 6
  %50 = load i32, ptr %wrap, align 8
  %cmp51 = icmp eq i32 %50, 0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %land.lhs.true50
  %51 = load ptr, ptr %s, align 8
  %status53 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 1
  store i32 113, ptr %status53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %land.lhs.true50, %if.end47
  %52 = load ptr, ptr %s, align 8
  %status55 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %status55, align 8
  %cmp56 = icmp eq i32 %53, 42
  br i1 %cmp56, label %if.then57, label %if.end98

if.then57:                                        ; preds = %if.end54
  %54 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 12
  %55 = load i32, ptr %w_bits, align 4
  %sub58 = sub i32 %55, 8
  %shl = shl i32 %sub58, 4
  %add = add i32 8, %shl
  %shl59 = shl i32 %add, 8
  store i32 %shl59, ptr %header, align 4
  %56 = load ptr, ptr %s, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 34
  %57 = load i32, ptr %strategy, align 8
  %cmp60 = icmp sge i32 %57, 2
  br i1 %cmp60, label %if.then63, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.then57
  %58 = load ptr, ptr %s, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 33
  %59 = load i32, ptr %level, align 4
  %cmp62 = icmp slt i32 %59, 2
  br i1 %cmp62, label %if.then63, label %if.else64

if.then63:                                        ; preds = %lor.lhs.false61, %if.then57
  store i32 0, ptr %level_flags, align 4
  br label %if.end75

if.else64:                                        ; preds = %lor.lhs.false61
  %60 = load ptr, ptr %s, align 8
  %level65 = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 33
  %61 = load i32, ptr %level65, align 4
  %cmp66 = icmp slt i32 %61, 6
  br i1 %cmp66, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.else64
  store i32 1, ptr %level_flags, align 4
  br label %if.end74

if.else68:                                        ; preds = %if.else64
  %62 = load ptr, ptr %s, align 8
  %level69 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 33
  %63 = load i32, ptr %level69, align 4
  %cmp70 = icmp eq i32 %63, 6
  br i1 %cmp70, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.else68
  store i32 2, ptr %level_flags, align 4
  br label %if.end73

if.else72:                                        ; preds = %if.else68
  store i32 3, ptr %level_flags, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else72, %if.then71
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then67
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then63
  %64 = load i32, ptr %level_flags, align 4
  %shl76 = shl i32 %64, 6
  %65 = load i32, ptr %header, align 4
  %or = or i32 %65, %shl76
  store i32 %or, ptr %header, align 4
  %66 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 27
  %67 = load i32, ptr %strstart, align 4
  %cmp77 = icmp ne i32 %67, 0
  br i1 %cmp77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end75
  %68 = load i32, ptr %header, align 4
  %or79 = or i32 %68, 32
  store i32 %or79, ptr %header, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end75
  %69 = load i32, ptr %header, align 4
  %rem = urem i32 %69, 31
  %sub81 = sub i32 31, %rem
  %70 = load i32, ptr %header, align 4
  %add82 = add i32 %70, %sub81
  store i32 %add82, ptr %header, align 4
  %71 = load ptr, ptr %s, align 8
  %72 = load i32, ptr %header, align 4
  call void @putShortMSB(ptr noundef %71, i32 noundef %72)
  %73 = load ptr, ptr %s, align 8
  %strstart83 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 27
  %74 = load i32, ptr %strstart83, align 4
  %cmp84 = icmp ne i32 %74, 0
  br i1 %cmp84, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end80
  %75 = load ptr, ptr %s, align 8
  %76 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %76, i32 0, i32 12
  %77 = load i64, ptr %adler, align 8
  %shr = lshr i64 %77, 16
  %conv = trunc i64 %shr to i32
  call void @putShortMSB(ptr noundef %75, i32 noundef %conv)
  %78 = load ptr, ptr %s, align 8
  %79 = load ptr, ptr %strm.addr, align 8
  %adler86 = getelementptr inbounds %struct.z_stream_s, ptr %79, i32 0, i32 12
  %80 = load i64, ptr %adler86, align 8
  %and = and i64 %80, 65535
  %conv87 = trunc i64 %and to i32
  call void @putShortMSB(ptr noundef %78, i32 noundef %conv87)
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end80
  %call89 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %81 = load ptr, ptr %strm.addr, align 8
  %adler90 = getelementptr inbounds %struct.z_stream_s, ptr %81, i32 0, i32 12
  store i64 %call89, ptr %adler90, align 8
  %82 = load ptr, ptr %s, align 8
  %status91 = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 1
  store i32 113, ptr %status91, align 8
  %83 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %83)
  %84 = load ptr, ptr %s, align 8
  %pending92 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 5
  %85 = load i64, ptr %pending92, align 8
  %cmp93 = icmp ne i64 %85, 0
  br i1 %cmp93, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end88
  %86 = load ptr, ptr %s, align 8
  %last_flush96 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 10
  store i32 -1, ptr %last_flush96, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end97:                                         ; preds = %if.end88
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end54
  %87 = load ptr, ptr %s, align 8
  %status99 = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 1
  %88 = load i32, ptr %status99, align 8
  %cmp100 = icmp eq i32 %88, 57
  br i1 %cmp100, label %if.then102, label %if.end288

if.then102:                                       ; preds = %if.end98
  %call103 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %89 = load ptr, ptr %strm.addr, align 8
  %adler104 = getelementptr inbounds %struct.z_stream_s, ptr %89, i32 0, i32 12
  store i64 %call103, ptr %adler104, align 8
  %90 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 2
  %91 = load ptr, ptr %pending_buf, align 8
  %92 = load ptr, ptr %s, align 8
  %pending105 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 5
  %93 = load i64, ptr %pending105, align 8
  %inc = add i64 %93, 1
  store i64 %inc, ptr %pending105, align 8
  %arrayidx = getelementptr inbounds i8, ptr %91, i64 %93
  store i8 31, ptr %arrayidx, align 1
  %94 = load ptr, ptr %s, align 8
  %pending_buf106 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 2
  %95 = load ptr, ptr %pending_buf106, align 8
  %96 = load ptr, ptr %s, align 8
  %pending107 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 5
  %97 = load i64, ptr %pending107, align 8
  %inc108 = add i64 %97, 1
  store i64 %inc108, ptr %pending107, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %95, i64 %97
  store i8 -117, ptr %arrayidx109, align 1
  %98 = load ptr, ptr %s, align 8
  %pending_buf110 = getelementptr inbounds %struct.internal_state, ptr %98, i32 0, i32 2
  %99 = load ptr, ptr %pending_buf110, align 8
  %100 = load ptr, ptr %s, align 8
  %pending111 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 5
  %101 = load i64, ptr %pending111, align 8
  %inc112 = add i64 %101, 1
  store i64 %inc112, ptr %pending111, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %99, i64 %101
  store i8 8, ptr %arrayidx113, align 1
  %102 = load ptr, ptr %s, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 7
  %103 = load ptr, ptr %gzhead, align 8
  %cmp114 = icmp eq ptr %103, null
  br i1 %cmp114, label %if.then116, label %if.else164

if.then116:                                       ; preds = %if.then102
  %104 = load ptr, ptr %s, align 8
  %pending_buf117 = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 2
  %105 = load ptr, ptr %pending_buf117, align 8
  %106 = load ptr, ptr %s, align 8
  %pending118 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 5
  %107 = load i64, ptr %pending118, align 8
  %inc119 = add i64 %107, 1
  store i64 %inc119, ptr %pending118, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %105, i64 %107
  store i8 0, ptr %arrayidx120, align 1
  %108 = load ptr, ptr %s, align 8
  %pending_buf121 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 2
  %109 = load ptr, ptr %pending_buf121, align 8
  %110 = load ptr, ptr %s, align 8
  %pending122 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 5
  %111 = load i64, ptr %pending122, align 8
  %inc123 = add i64 %111, 1
  store i64 %inc123, ptr %pending122, align 8
  %arrayidx124 = getelementptr inbounds i8, ptr %109, i64 %111
  store i8 0, ptr %arrayidx124, align 1
  %112 = load ptr, ptr %s, align 8
  %pending_buf125 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 2
  %113 = load ptr, ptr %pending_buf125, align 8
  %114 = load ptr, ptr %s, align 8
  %pending126 = getelementptr inbounds %struct.internal_state, ptr %114, i32 0, i32 5
  %115 = load i64, ptr %pending126, align 8
  %inc127 = add i64 %115, 1
  store i64 %inc127, ptr %pending126, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %113, i64 %115
  store i8 0, ptr %arrayidx128, align 1
  %116 = load ptr, ptr %s, align 8
  %pending_buf129 = getelementptr inbounds %struct.internal_state, ptr %116, i32 0, i32 2
  %117 = load ptr, ptr %pending_buf129, align 8
  %118 = load ptr, ptr %s, align 8
  %pending130 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 5
  %119 = load i64, ptr %pending130, align 8
  %inc131 = add i64 %119, 1
  store i64 %inc131, ptr %pending130, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %117, i64 %119
  store i8 0, ptr %arrayidx132, align 1
  %120 = load ptr, ptr %s, align 8
  %pending_buf133 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 2
  %121 = load ptr, ptr %pending_buf133, align 8
  %122 = load ptr, ptr %s, align 8
  %pending134 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 5
  %123 = load i64, ptr %pending134, align 8
  %inc135 = add i64 %123, 1
  store i64 %inc135, ptr %pending134, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %121, i64 %123
  store i8 0, ptr %arrayidx136, align 1
  %124 = load ptr, ptr %s, align 8
  %level137 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 33
  %125 = load i32, ptr %level137, align 4
  %cmp138 = icmp eq i32 %125, 9
  br i1 %cmp138, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then116
  br label %cond.end

cond.false:                                       ; preds = %if.then116
  %126 = load ptr, ptr %s, align 8
  %strategy140 = getelementptr inbounds %struct.internal_state, ptr %126, i32 0, i32 34
  %127 = load i32, ptr %strategy140, align 8
  %cmp141 = icmp sge i32 %127, 2
  br i1 %cmp141, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false
  %128 = load ptr, ptr %s, align 8
  %level143 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 33
  %129 = load i32, ptr %level143, align 4
  %cmp144 = icmp slt i32 %129, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false
  %130 = phi i1 [ true, %cond.false ], [ %cmp144, %lor.rhs ]
  %131 = zext i1 %130 to i64
  %cond146 = select i1 %130, i32 4, i32 0
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true
  %cond147 = phi i32 [ 2, %cond.true ], [ %cond146, %lor.end ]
  %conv148 = trunc i32 %cond147 to i8
  %132 = load ptr, ptr %s, align 8
  %pending_buf149 = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 2
  %133 = load ptr, ptr %pending_buf149, align 8
  %134 = load ptr, ptr %s, align 8
  %pending150 = getelementptr inbounds %struct.internal_state, ptr %134, i32 0, i32 5
  %135 = load i64, ptr %pending150, align 8
  %inc151 = add i64 %135, 1
  store i64 %inc151, ptr %pending150, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %133, i64 %135
  store i8 %conv148, ptr %arrayidx152, align 1
  %136 = load ptr, ptr %s, align 8
  %pending_buf153 = getelementptr inbounds %struct.internal_state, ptr %136, i32 0, i32 2
  %137 = load ptr, ptr %pending_buf153, align 8
  %138 = load ptr, ptr %s, align 8
  %pending154 = getelementptr inbounds %struct.internal_state, ptr %138, i32 0, i32 5
  %139 = load i64, ptr %pending154, align 8
  %inc155 = add i64 %139, 1
  store i64 %inc155, ptr %pending154, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %137, i64 %139
  store i8 19, ptr %arrayidx156, align 1
  %140 = load ptr, ptr %s, align 8
  %status157 = getelementptr inbounds %struct.internal_state, ptr %140, i32 0, i32 1
  store i32 113, ptr %status157, align 8
  %141 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %141)
  %142 = load ptr, ptr %s, align 8
  %pending158 = getelementptr inbounds %struct.internal_state, ptr %142, i32 0, i32 5
  %143 = load i64, ptr %pending158, align 8
  %cmp159 = icmp ne i64 %143, 0
  br i1 %cmp159, label %if.then161, label %if.end163

if.then161:                                       ; preds = %cond.end
  %144 = load ptr, ptr %s, align 8
  %last_flush162 = getelementptr inbounds %struct.internal_state, ptr %144, i32 0, i32 10
  store i32 -1, ptr %last_flush162, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end163:                                        ; preds = %cond.end
  br label %if.end287

if.else164:                                       ; preds = %if.then102
  %145 = load ptr, ptr %s, align 8
  %gzhead165 = getelementptr inbounds %struct.internal_state, ptr %145, i32 0, i32 7
  %146 = load ptr, ptr %gzhead165, align 8
  %text = getelementptr inbounds %struct.gz_header_s, ptr %146, i32 0, i32 0
  %147 = load i32, ptr %text, align 8
  %tobool166 = icmp ne i32 %147, 0
  %148 = zext i1 %tobool166 to i64
  %cond167 = select i1 %tobool166, i32 1, i32 0
  %149 = load ptr, ptr %s, align 8
  %gzhead168 = getelementptr inbounds %struct.internal_state, ptr %149, i32 0, i32 7
  %150 = load ptr, ptr %gzhead168, align 8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %150, i32 0, i32 11
  %151 = load i32, ptr %hcrc, align 4
  %tobool169 = icmp ne i32 %151, 0
  %152 = zext i1 %tobool169 to i64
  %cond170 = select i1 %tobool169, i32 2, i32 0
  %add171 = add nsw i32 %cond167, %cond170
  %153 = load ptr, ptr %s, align 8
  %gzhead172 = getelementptr inbounds %struct.internal_state, ptr %153, i32 0, i32 7
  %154 = load ptr, ptr %gzhead172, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %154, i32 0, i32 4
  %155 = load ptr, ptr %extra, align 8
  %cmp173 = icmp eq ptr %155, null
  %156 = zext i1 %cmp173 to i64
  %cond175 = select i1 %cmp173, i32 0, i32 4
  %add176 = add nsw i32 %add171, %cond175
  %157 = load ptr, ptr %s, align 8
  %gzhead177 = getelementptr inbounds %struct.internal_state, ptr %157, i32 0, i32 7
  %158 = load ptr, ptr %gzhead177, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %158, i32 0, i32 7
  %159 = load ptr, ptr %name, align 8
  %cmp178 = icmp eq ptr %159, null
  %160 = zext i1 %cmp178 to i64
  %cond180 = select i1 %cmp178, i32 0, i32 8
  %add181 = add nsw i32 %add176, %cond180
  %161 = load ptr, ptr %s, align 8
  %gzhead182 = getelementptr inbounds %struct.internal_state, ptr %161, i32 0, i32 7
  %162 = load ptr, ptr %gzhead182, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %162, i32 0, i32 9
  %163 = load ptr, ptr %comment, align 8
  %cmp183 = icmp eq ptr %163, null
  %164 = zext i1 %cmp183 to i64
  %cond185 = select i1 %cmp183, i32 0, i32 16
  %add186 = add nsw i32 %add181, %cond185
  %conv187 = trunc i32 %add186 to i8
  %165 = load ptr, ptr %s, align 8
  %pending_buf188 = getelementptr inbounds %struct.internal_state, ptr %165, i32 0, i32 2
  %166 = load ptr, ptr %pending_buf188, align 8
  %167 = load ptr, ptr %s, align 8
  %pending189 = getelementptr inbounds %struct.internal_state, ptr %167, i32 0, i32 5
  %168 = load i64, ptr %pending189, align 8
  %inc190 = add i64 %168, 1
  store i64 %inc190, ptr %pending189, align 8
  %arrayidx191 = getelementptr inbounds i8, ptr %166, i64 %168
  store i8 %conv187, ptr %arrayidx191, align 1
  %169 = load ptr, ptr %s, align 8
  %gzhead192 = getelementptr inbounds %struct.internal_state, ptr %169, i32 0, i32 7
  %170 = load ptr, ptr %gzhead192, align 8
  %time = getelementptr inbounds %struct.gz_header_s, ptr %170, i32 0, i32 1
  %171 = load i64, ptr %time, align 8
  %and193 = and i64 %171, 255
  %conv194 = trunc i64 %and193 to i8
  %172 = load ptr, ptr %s, align 8
  %pending_buf195 = getelementptr inbounds %struct.internal_state, ptr %172, i32 0, i32 2
  %173 = load ptr, ptr %pending_buf195, align 8
  %174 = load ptr, ptr %s, align 8
  %pending196 = getelementptr inbounds %struct.internal_state, ptr %174, i32 0, i32 5
  %175 = load i64, ptr %pending196, align 8
  %inc197 = add i64 %175, 1
  store i64 %inc197, ptr %pending196, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %173, i64 %175
  store i8 %conv194, ptr %arrayidx198, align 1
  %176 = load ptr, ptr %s, align 8
  %gzhead199 = getelementptr inbounds %struct.internal_state, ptr %176, i32 0, i32 7
  %177 = load ptr, ptr %gzhead199, align 8
  %time200 = getelementptr inbounds %struct.gz_header_s, ptr %177, i32 0, i32 1
  %178 = load i64, ptr %time200, align 8
  %shr201 = lshr i64 %178, 8
  %and202 = and i64 %shr201, 255
  %conv203 = trunc i64 %and202 to i8
  %179 = load ptr, ptr %s, align 8
  %pending_buf204 = getelementptr inbounds %struct.internal_state, ptr %179, i32 0, i32 2
  %180 = load ptr, ptr %pending_buf204, align 8
  %181 = load ptr, ptr %s, align 8
  %pending205 = getelementptr inbounds %struct.internal_state, ptr %181, i32 0, i32 5
  %182 = load i64, ptr %pending205, align 8
  %inc206 = add i64 %182, 1
  store i64 %inc206, ptr %pending205, align 8
  %arrayidx207 = getelementptr inbounds i8, ptr %180, i64 %182
  store i8 %conv203, ptr %arrayidx207, align 1
  %183 = load ptr, ptr %s, align 8
  %gzhead208 = getelementptr inbounds %struct.internal_state, ptr %183, i32 0, i32 7
  %184 = load ptr, ptr %gzhead208, align 8
  %time209 = getelementptr inbounds %struct.gz_header_s, ptr %184, i32 0, i32 1
  %185 = load i64, ptr %time209, align 8
  %shr210 = lshr i64 %185, 16
  %and211 = and i64 %shr210, 255
  %conv212 = trunc i64 %and211 to i8
  %186 = load ptr, ptr %s, align 8
  %pending_buf213 = getelementptr inbounds %struct.internal_state, ptr %186, i32 0, i32 2
  %187 = load ptr, ptr %pending_buf213, align 8
  %188 = load ptr, ptr %s, align 8
  %pending214 = getelementptr inbounds %struct.internal_state, ptr %188, i32 0, i32 5
  %189 = load i64, ptr %pending214, align 8
  %inc215 = add i64 %189, 1
  store i64 %inc215, ptr %pending214, align 8
  %arrayidx216 = getelementptr inbounds i8, ptr %187, i64 %189
  store i8 %conv212, ptr %arrayidx216, align 1
  %190 = load ptr, ptr %s, align 8
  %gzhead217 = getelementptr inbounds %struct.internal_state, ptr %190, i32 0, i32 7
  %191 = load ptr, ptr %gzhead217, align 8
  %time218 = getelementptr inbounds %struct.gz_header_s, ptr %191, i32 0, i32 1
  %192 = load i64, ptr %time218, align 8
  %shr219 = lshr i64 %192, 24
  %and220 = and i64 %shr219, 255
  %conv221 = trunc i64 %and220 to i8
  %193 = load ptr, ptr %s, align 8
  %pending_buf222 = getelementptr inbounds %struct.internal_state, ptr %193, i32 0, i32 2
  %194 = load ptr, ptr %pending_buf222, align 8
  %195 = load ptr, ptr %s, align 8
  %pending223 = getelementptr inbounds %struct.internal_state, ptr %195, i32 0, i32 5
  %196 = load i64, ptr %pending223, align 8
  %inc224 = add i64 %196, 1
  store i64 %inc224, ptr %pending223, align 8
  %arrayidx225 = getelementptr inbounds i8, ptr %194, i64 %196
  store i8 %conv221, ptr %arrayidx225, align 1
  %197 = load ptr, ptr %s, align 8
  %level226 = getelementptr inbounds %struct.internal_state, ptr %197, i32 0, i32 33
  %198 = load i32, ptr %level226, align 4
  %cmp227 = icmp eq i32 %198, 9
  br i1 %cmp227, label %cond.true229, label %cond.false230

cond.true229:                                     ; preds = %if.else164
  br label %cond.end240

cond.false230:                                    ; preds = %if.else164
  %199 = load ptr, ptr %s, align 8
  %strategy231 = getelementptr inbounds %struct.internal_state, ptr %199, i32 0, i32 34
  %200 = load i32, ptr %strategy231, align 8
  %cmp232 = icmp sge i32 %200, 2
  br i1 %cmp232, label %lor.end238, label %lor.rhs234

lor.rhs234:                                       ; preds = %cond.false230
  %201 = load ptr, ptr %s, align 8
  %level235 = getelementptr inbounds %struct.internal_state, ptr %201, i32 0, i32 33
  %202 = load i32, ptr %level235, align 4
  %cmp236 = icmp slt i32 %202, 2
  br label %lor.end238

lor.end238:                                       ; preds = %lor.rhs234, %cond.false230
  %203 = phi i1 [ true, %cond.false230 ], [ %cmp236, %lor.rhs234 ]
  %204 = zext i1 %203 to i64
  %cond239 = select i1 %203, i32 4, i32 0
  br label %cond.end240

cond.end240:                                      ; preds = %lor.end238, %cond.true229
  %cond241 = phi i32 [ 2, %cond.true229 ], [ %cond239, %lor.end238 ]
  %conv242 = trunc i32 %cond241 to i8
  %205 = load ptr, ptr %s, align 8
  %pending_buf243 = getelementptr inbounds %struct.internal_state, ptr %205, i32 0, i32 2
  %206 = load ptr, ptr %pending_buf243, align 8
  %207 = load ptr, ptr %s, align 8
  %pending244 = getelementptr inbounds %struct.internal_state, ptr %207, i32 0, i32 5
  %208 = load i64, ptr %pending244, align 8
  %inc245 = add i64 %208, 1
  store i64 %inc245, ptr %pending244, align 8
  %arrayidx246 = getelementptr inbounds i8, ptr %206, i64 %208
  store i8 %conv242, ptr %arrayidx246, align 1
  %209 = load ptr, ptr %s, align 8
  %gzhead247 = getelementptr inbounds %struct.internal_state, ptr %209, i32 0, i32 7
  %210 = load ptr, ptr %gzhead247, align 8
  %os = getelementptr inbounds %struct.gz_header_s, ptr %210, i32 0, i32 3
  %211 = load i32, ptr %os, align 4
  %and248 = and i32 %211, 255
  %conv249 = trunc i32 %and248 to i8
  %212 = load ptr, ptr %s, align 8
  %pending_buf250 = getelementptr inbounds %struct.internal_state, ptr %212, i32 0, i32 2
  %213 = load ptr, ptr %pending_buf250, align 8
  %214 = load ptr, ptr %s, align 8
  %pending251 = getelementptr inbounds %struct.internal_state, ptr %214, i32 0, i32 5
  %215 = load i64, ptr %pending251, align 8
  %inc252 = add i64 %215, 1
  store i64 %inc252, ptr %pending251, align 8
  %arrayidx253 = getelementptr inbounds i8, ptr %213, i64 %215
  store i8 %conv249, ptr %arrayidx253, align 1
  %216 = load ptr, ptr %s, align 8
  %gzhead254 = getelementptr inbounds %struct.internal_state, ptr %216, i32 0, i32 7
  %217 = load ptr, ptr %gzhead254, align 8
  %extra255 = getelementptr inbounds %struct.gz_header_s, ptr %217, i32 0, i32 4
  %218 = load ptr, ptr %extra255, align 8
  %cmp256 = icmp ne ptr %218, null
  br i1 %cmp256, label %if.then258, label %if.end275

if.then258:                                       ; preds = %cond.end240
  %219 = load ptr, ptr %s, align 8
  %gzhead259 = getelementptr inbounds %struct.internal_state, ptr %219, i32 0, i32 7
  %220 = load ptr, ptr %gzhead259, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %220, i32 0, i32 5
  %221 = load i32, ptr %extra_len, align 8
  %and260 = and i32 %221, 255
  %conv261 = trunc i32 %and260 to i8
  %222 = load ptr, ptr %s, align 8
  %pending_buf262 = getelementptr inbounds %struct.internal_state, ptr %222, i32 0, i32 2
  %223 = load ptr, ptr %pending_buf262, align 8
  %224 = load ptr, ptr %s, align 8
  %pending263 = getelementptr inbounds %struct.internal_state, ptr %224, i32 0, i32 5
  %225 = load i64, ptr %pending263, align 8
  %inc264 = add i64 %225, 1
  store i64 %inc264, ptr %pending263, align 8
  %arrayidx265 = getelementptr inbounds i8, ptr %223, i64 %225
  store i8 %conv261, ptr %arrayidx265, align 1
  %226 = load ptr, ptr %s, align 8
  %gzhead266 = getelementptr inbounds %struct.internal_state, ptr %226, i32 0, i32 7
  %227 = load ptr, ptr %gzhead266, align 8
  %extra_len267 = getelementptr inbounds %struct.gz_header_s, ptr %227, i32 0, i32 5
  %228 = load i32, ptr %extra_len267, align 8
  %shr268 = lshr i32 %228, 8
  %and269 = and i32 %shr268, 255
  %conv270 = trunc i32 %and269 to i8
  %229 = load ptr, ptr %s, align 8
  %pending_buf271 = getelementptr inbounds %struct.internal_state, ptr %229, i32 0, i32 2
  %230 = load ptr, ptr %pending_buf271, align 8
  %231 = load ptr, ptr %s, align 8
  %pending272 = getelementptr inbounds %struct.internal_state, ptr %231, i32 0, i32 5
  %232 = load i64, ptr %pending272, align 8
  %inc273 = add i64 %232, 1
  store i64 %inc273, ptr %pending272, align 8
  %arrayidx274 = getelementptr inbounds i8, ptr %230, i64 %232
  store i8 %conv270, ptr %arrayidx274, align 1
  br label %if.end275

if.end275:                                        ; preds = %if.then258, %cond.end240
  %233 = load ptr, ptr %s, align 8
  %gzhead276 = getelementptr inbounds %struct.internal_state, ptr %233, i32 0, i32 7
  %234 = load ptr, ptr %gzhead276, align 8
  %hcrc277 = getelementptr inbounds %struct.gz_header_s, ptr %234, i32 0, i32 11
  %235 = load i32, ptr %hcrc277, align 4
  %tobool278 = icmp ne i32 %235, 0
  br i1 %tobool278, label %if.then279, label %if.end285

if.then279:                                       ; preds = %if.end275
  %236 = load ptr, ptr %strm.addr, align 8
  %adler280 = getelementptr inbounds %struct.z_stream_s, ptr %236, i32 0, i32 12
  %237 = load i64, ptr %adler280, align 8
  %238 = load ptr, ptr %s, align 8
  %pending_buf281 = getelementptr inbounds %struct.internal_state, ptr %238, i32 0, i32 2
  %239 = load ptr, ptr %pending_buf281, align 8
  %240 = load ptr, ptr %s, align 8
  %pending282 = getelementptr inbounds %struct.internal_state, ptr %240, i32 0, i32 5
  %241 = load i64, ptr %pending282, align 8
  %call283 = call i64 @crc32_z(i64 noundef %237, ptr noundef %239, i64 noundef %241)
  %242 = load ptr, ptr %strm.addr, align 8
  %adler284 = getelementptr inbounds %struct.z_stream_s, ptr %242, i32 0, i32 12
  store i64 %call283, ptr %adler284, align 8
  br label %if.end285

if.end285:                                        ; preds = %if.then279, %if.end275
  %243 = load ptr, ptr %s, align 8
  %gzindex = getelementptr inbounds %struct.internal_state, ptr %243, i32 0, i32 8
  store i64 0, ptr %gzindex, align 8
  %244 = load ptr, ptr %s, align 8
  %status286 = getelementptr inbounds %struct.internal_state, ptr %244, i32 0, i32 1
  store i32 69, ptr %status286, align 8
  br label %if.end287

if.end287:                                        ; preds = %if.end285, %if.end163
  br label %if.end288

if.end288:                                        ; preds = %if.end287, %if.end98
  %245 = load ptr, ptr %s, align 8
  %status289 = getelementptr inbounds %struct.internal_state, ptr %245, i32 0, i32 1
  %246 = load i32, ptr %status289, align 8
  %cmp290 = icmp eq i32 %246, 69
  br i1 %cmp290, label %if.then292, label %if.end383

if.then292:                                       ; preds = %if.end288
  %247 = load ptr, ptr %s, align 8
  %gzhead293 = getelementptr inbounds %struct.internal_state, ptr %247, i32 0, i32 7
  %248 = load ptr, ptr %gzhead293, align 8
  %extra294 = getelementptr inbounds %struct.gz_header_s, ptr %248, i32 0, i32 4
  %249 = load ptr, ptr %extra294, align 8
  %cmp295 = icmp ne ptr %249, null
  br i1 %cmp295, label %if.then297, label %if.end381

if.then297:                                       ; preds = %if.then292
  %250 = load ptr, ptr %s, align 8
  %pending298 = getelementptr inbounds %struct.internal_state, ptr %250, i32 0, i32 5
  %251 = load i64, ptr %pending298, align 8
  store i64 %251, ptr %beg, align 8
  %252 = load ptr, ptr %s, align 8
  %gzhead299 = getelementptr inbounds %struct.internal_state, ptr %252, i32 0, i32 7
  %253 = load ptr, ptr %gzhead299, align 8
  %extra_len300 = getelementptr inbounds %struct.gz_header_s, ptr %253, i32 0, i32 5
  %254 = load i32, ptr %extra_len300, align 8
  %and301 = and i32 %254, 65535
  %conv302 = zext i32 %and301 to i64
  %255 = load ptr, ptr %s, align 8
  %gzindex303 = getelementptr inbounds %struct.internal_state, ptr %255, i32 0, i32 8
  %256 = load i64, ptr %gzindex303, align 8
  %sub304 = sub i64 %conv302, %256
  store i64 %sub304, ptr %left, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end347, %if.then297
  %257 = load ptr, ptr %s, align 8
  %pending305 = getelementptr inbounds %struct.internal_state, ptr %257, i32 0, i32 5
  %258 = load i64, ptr %pending305, align 8
  %259 = load i64, ptr %left, align 8
  %add306 = add i64 %258, %259
  %260 = load ptr, ptr %s, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %260, i32 0, i32 3
  %261 = load i64, ptr %pending_buf_size, align 8
  %cmp307 = icmp ugt i64 %add306, %261
  br i1 %cmp307, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %262 = load ptr, ptr %s, align 8
  %pending_buf_size309 = getelementptr inbounds %struct.internal_state, ptr %262, i32 0, i32 3
  %263 = load i64, ptr %pending_buf_size309, align 8
  %264 = load ptr, ptr %s, align 8
  %pending310 = getelementptr inbounds %struct.internal_state, ptr %264, i32 0, i32 5
  %265 = load i64, ptr %pending310, align 8
  %sub311 = sub i64 %263, %265
  store i64 %sub311, ptr %copy, align 8
  %266 = load ptr, ptr %s, align 8
  %pending_buf312 = getelementptr inbounds %struct.internal_state, ptr %266, i32 0, i32 2
  %267 = load ptr, ptr %pending_buf312, align 8
  %268 = load ptr, ptr %s, align 8
  %pending313 = getelementptr inbounds %struct.internal_state, ptr %268, i32 0, i32 5
  %269 = load i64, ptr %pending313, align 8
  %add.ptr = getelementptr inbounds i8, ptr %267, i64 %269
  %270 = load ptr, ptr %s, align 8
  %gzhead314 = getelementptr inbounds %struct.internal_state, ptr %270, i32 0, i32 7
  %271 = load ptr, ptr %gzhead314, align 8
  %extra315 = getelementptr inbounds %struct.gz_header_s, ptr %271, i32 0, i32 4
  %272 = load ptr, ptr %extra315, align 8
  %273 = load ptr, ptr %s, align 8
  %gzindex316 = getelementptr inbounds %struct.internal_state, ptr %273, i32 0, i32 8
  %274 = load i64, ptr %gzindex316, align 8
  %add.ptr317 = getelementptr inbounds i8, ptr %272, i64 %274
  %275 = load i64, ptr %copy, align 8
  %276 = load ptr, ptr %s, align 8
  %pending_buf318 = getelementptr inbounds %struct.internal_state, ptr %276, i32 0, i32 2
  %277 = load ptr, ptr %pending_buf318, align 8
  %278 = load ptr, ptr %s, align 8
  %pending319 = getelementptr inbounds %struct.internal_state, ptr %278, i32 0, i32 5
  %279 = load i64, ptr %pending319, align 8
  %add.ptr320 = getelementptr inbounds i8, ptr %277, i64 %279
  %280 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr320, i1 false, i1 true, i1 false)
  %call321 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %add.ptr317, i64 noundef %275, i64 noundef %280) #4
  %281 = load ptr, ptr %s, align 8
  %pending_buf_size322 = getelementptr inbounds %struct.internal_state, ptr %281, i32 0, i32 3
  %282 = load i64, ptr %pending_buf_size322, align 8
  %283 = load ptr, ptr %s, align 8
  %pending323 = getelementptr inbounds %struct.internal_state, ptr %283, i32 0, i32 5
  store i64 %282, ptr %pending323, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %284 = load ptr, ptr %s, align 8
  %gzhead324 = getelementptr inbounds %struct.internal_state, ptr %284, i32 0, i32 7
  %285 = load ptr, ptr %gzhead324, align 8
  %hcrc325 = getelementptr inbounds %struct.gz_header_s, ptr %285, i32 0, i32 11
  %286 = load i32, ptr %hcrc325, align 4
  %tobool326 = icmp ne i32 %286, 0
  br i1 %tobool326, label %land.lhs.true327, label %if.end339

land.lhs.true327:                                 ; preds = %do.body
  %287 = load ptr, ptr %s, align 8
  %pending328 = getelementptr inbounds %struct.internal_state, ptr %287, i32 0, i32 5
  %288 = load i64, ptr %pending328, align 8
  %289 = load i64, ptr %beg, align 8
  %cmp329 = icmp ugt i64 %288, %289
  br i1 %cmp329, label %if.then331, label %if.end339

if.then331:                                       ; preds = %land.lhs.true327
  %290 = load ptr, ptr %strm.addr, align 8
  %adler332 = getelementptr inbounds %struct.z_stream_s, ptr %290, i32 0, i32 12
  %291 = load i64, ptr %adler332, align 8
  %292 = load ptr, ptr %s, align 8
  %pending_buf333 = getelementptr inbounds %struct.internal_state, ptr %292, i32 0, i32 2
  %293 = load ptr, ptr %pending_buf333, align 8
  %294 = load i64, ptr %beg, align 8
  %add.ptr334 = getelementptr inbounds i8, ptr %293, i64 %294
  %295 = load ptr, ptr %s, align 8
  %pending335 = getelementptr inbounds %struct.internal_state, ptr %295, i32 0, i32 5
  %296 = load i64, ptr %pending335, align 8
  %297 = load i64, ptr %beg, align 8
  %sub336 = sub i64 %296, %297
  %call337 = call i64 @crc32_z(i64 noundef %291, ptr noundef %add.ptr334, i64 noundef %sub336)
  %298 = load ptr, ptr %strm.addr, align 8
  %adler338 = getelementptr inbounds %struct.z_stream_s, ptr %298, i32 0, i32 12
  store i64 %call337, ptr %adler338, align 8
  br label %if.end339

if.end339:                                        ; preds = %if.then331, %land.lhs.true327, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end339
  %299 = load i64, ptr %copy, align 8
  %300 = load ptr, ptr %s, align 8
  %gzindex340 = getelementptr inbounds %struct.internal_state, ptr %300, i32 0, i32 8
  %301 = load i64, ptr %gzindex340, align 8
  %add341 = add i64 %301, %299
  store i64 %add341, ptr %gzindex340, align 8
  %302 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %302)
  %303 = load ptr, ptr %s, align 8
  %pending342 = getelementptr inbounds %struct.internal_state, ptr %303, i32 0, i32 5
  %304 = load i64, ptr %pending342, align 8
  %cmp343 = icmp ne i64 %304, 0
  br i1 %cmp343, label %if.then345, label %if.end347

if.then345:                                       ; preds = %do.end
  %305 = load ptr, ptr %s, align 8
  %last_flush346 = getelementptr inbounds %struct.internal_state, ptr %305, i32 0, i32 10
  store i32 -1, ptr %last_flush346, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end347:                                        ; preds = %do.end
  store i64 0, ptr %beg, align 8
  %306 = load i64, ptr %copy, align 8
  %307 = load i64, ptr %left, align 8
  %sub348 = sub i64 %307, %306
  store i64 %sub348, ptr %left, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %308 = load ptr, ptr %s, align 8
  %pending_buf349 = getelementptr inbounds %struct.internal_state, ptr %308, i32 0, i32 2
  %309 = load ptr, ptr %pending_buf349, align 8
  %310 = load ptr, ptr %s, align 8
  %pending350 = getelementptr inbounds %struct.internal_state, ptr %310, i32 0, i32 5
  %311 = load i64, ptr %pending350, align 8
  %add.ptr351 = getelementptr inbounds i8, ptr %309, i64 %311
  %312 = load ptr, ptr %s, align 8
  %gzhead352 = getelementptr inbounds %struct.internal_state, ptr %312, i32 0, i32 7
  %313 = load ptr, ptr %gzhead352, align 8
  %extra353 = getelementptr inbounds %struct.gz_header_s, ptr %313, i32 0, i32 4
  %314 = load ptr, ptr %extra353, align 8
  %315 = load ptr, ptr %s, align 8
  %gzindex354 = getelementptr inbounds %struct.internal_state, ptr %315, i32 0, i32 8
  %316 = load i64, ptr %gzindex354, align 8
  %add.ptr355 = getelementptr inbounds i8, ptr %314, i64 %316
  %317 = load i64, ptr %left, align 8
  %318 = load ptr, ptr %s, align 8
  %pending_buf356 = getelementptr inbounds %struct.internal_state, ptr %318, i32 0, i32 2
  %319 = load ptr, ptr %pending_buf356, align 8
  %320 = load ptr, ptr %s, align 8
  %pending357 = getelementptr inbounds %struct.internal_state, ptr %320, i32 0, i32 5
  %321 = load i64, ptr %pending357, align 8
  %add.ptr358 = getelementptr inbounds i8, ptr %319, i64 %321
  %322 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr358, i1 false, i1 true, i1 false)
  %call359 = call ptr @__memcpy_chk(ptr noundef %add.ptr351, ptr noundef %add.ptr355, i64 noundef %317, i64 noundef %322) #4
  %323 = load i64, ptr %left, align 8
  %324 = load ptr, ptr %s, align 8
  %pending360 = getelementptr inbounds %struct.internal_state, ptr %324, i32 0, i32 5
  %325 = load i64, ptr %pending360, align 8
  %add361 = add i64 %325, %323
  store i64 %add361, ptr %pending360, align 8
  br label %do.body362

do.body362:                                       ; preds = %while.end
  %326 = load ptr, ptr %s, align 8
  %gzhead363 = getelementptr inbounds %struct.internal_state, ptr %326, i32 0, i32 7
  %327 = load ptr, ptr %gzhead363, align 8
  %hcrc364 = getelementptr inbounds %struct.gz_header_s, ptr %327, i32 0, i32 11
  %328 = load i32, ptr %hcrc364, align 4
  %tobool365 = icmp ne i32 %328, 0
  br i1 %tobool365, label %land.lhs.true366, label %if.end378

land.lhs.true366:                                 ; preds = %do.body362
  %329 = load ptr, ptr %s, align 8
  %pending367 = getelementptr inbounds %struct.internal_state, ptr %329, i32 0, i32 5
  %330 = load i64, ptr %pending367, align 8
  %331 = load i64, ptr %beg, align 8
  %cmp368 = icmp ugt i64 %330, %331
  br i1 %cmp368, label %if.then370, label %if.end378

if.then370:                                       ; preds = %land.lhs.true366
  %332 = load ptr, ptr %strm.addr, align 8
  %adler371 = getelementptr inbounds %struct.z_stream_s, ptr %332, i32 0, i32 12
  %333 = load i64, ptr %adler371, align 8
  %334 = load ptr, ptr %s, align 8
  %pending_buf372 = getelementptr inbounds %struct.internal_state, ptr %334, i32 0, i32 2
  %335 = load ptr, ptr %pending_buf372, align 8
  %336 = load i64, ptr %beg, align 8
  %add.ptr373 = getelementptr inbounds i8, ptr %335, i64 %336
  %337 = load ptr, ptr %s, align 8
  %pending374 = getelementptr inbounds %struct.internal_state, ptr %337, i32 0, i32 5
  %338 = load i64, ptr %pending374, align 8
  %339 = load i64, ptr %beg, align 8
  %sub375 = sub i64 %338, %339
  %call376 = call i64 @crc32_z(i64 noundef %333, ptr noundef %add.ptr373, i64 noundef %sub375)
  %340 = load ptr, ptr %strm.addr, align 8
  %adler377 = getelementptr inbounds %struct.z_stream_s, ptr %340, i32 0, i32 12
  store i64 %call376, ptr %adler377, align 8
  br label %if.end378

if.end378:                                        ; preds = %if.then370, %land.lhs.true366, %do.body362
  br label %do.end379

do.end379:                                        ; preds = %if.end378
  %341 = load ptr, ptr %s, align 8
  %gzindex380 = getelementptr inbounds %struct.internal_state, ptr %341, i32 0, i32 8
  store i64 0, ptr %gzindex380, align 8
  br label %if.end381

if.end381:                                        ; preds = %do.end379, %if.then292
  %342 = load ptr, ptr %s, align 8
  %status382 = getelementptr inbounds %struct.internal_state, ptr %342, i32 0, i32 1
  store i32 73, ptr %status382, align 8
  br label %if.end383

if.end383:                                        ; preds = %if.end381, %if.end288
  %343 = load ptr, ptr %s, align 8
  %status384 = getelementptr inbounds %struct.internal_state, ptr %343, i32 0, i32 1
  %344 = load i32, ptr %status384, align 8
  %cmp385 = icmp eq i32 %344, 73
  br i1 %cmp385, label %if.then387, label %if.end462

if.then387:                                       ; preds = %if.end383
  %345 = load ptr, ptr %s, align 8
  %gzhead388 = getelementptr inbounds %struct.internal_state, ptr %345, i32 0, i32 7
  %346 = load ptr, ptr %gzhead388, align 8
  %name389 = getelementptr inbounds %struct.gz_header_s, ptr %346, i32 0, i32 7
  %347 = load ptr, ptr %name389, align 8
  %cmp390 = icmp ne ptr %347, null
  br i1 %cmp390, label %if.then392, label %if.end460

if.then392:                                       ; preds = %if.then387
  %348 = load ptr, ptr %s, align 8
  %pending394 = getelementptr inbounds %struct.internal_state, ptr %348, i32 0, i32 5
  %349 = load i64, ptr %pending394, align 8
  store i64 %349, ptr %beg393, align 8
  br label %do.body395

do.body395:                                       ; preds = %do.cond, %if.then392
  %350 = load ptr, ptr %s, align 8
  %pending396 = getelementptr inbounds %struct.internal_state, ptr %350, i32 0, i32 5
  %351 = load i64, ptr %pending396, align 8
  %352 = load ptr, ptr %s, align 8
  %pending_buf_size397 = getelementptr inbounds %struct.internal_state, ptr %352, i32 0, i32 3
  %353 = load i64, ptr %pending_buf_size397, align 8
  %cmp398 = icmp eq i64 %351, %353
  br i1 %cmp398, label %if.then400, label %if.end425

if.then400:                                       ; preds = %do.body395
  br label %do.body401

do.body401:                                       ; preds = %if.then400
  %354 = load ptr, ptr %s, align 8
  %gzhead402 = getelementptr inbounds %struct.internal_state, ptr %354, i32 0, i32 7
  %355 = load ptr, ptr %gzhead402, align 8
  %hcrc403 = getelementptr inbounds %struct.gz_header_s, ptr %355, i32 0, i32 11
  %356 = load i32, ptr %hcrc403, align 4
  %tobool404 = icmp ne i32 %356, 0
  br i1 %tobool404, label %land.lhs.true405, label %if.end417

land.lhs.true405:                                 ; preds = %do.body401
  %357 = load ptr, ptr %s, align 8
  %pending406 = getelementptr inbounds %struct.internal_state, ptr %357, i32 0, i32 5
  %358 = load i64, ptr %pending406, align 8
  %359 = load i64, ptr %beg393, align 8
  %cmp407 = icmp ugt i64 %358, %359
  br i1 %cmp407, label %if.then409, label %if.end417

if.then409:                                       ; preds = %land.lhs.true405
  %360 = load ptr, ptr %strm.addr, align 8
  %adler410 = getelementptr inbounds %struct.z_stream_s, ptr %360, i32 0, i32 12
  %361 = load i64, ptr %adler410, align 8
  %362 = load ptr, ptr %s, align 8
  %pending_buf411 = getelementptr inbounds %struct.internal_state, ptr %362, i32 0, i32 2
  %363 = load ptr, ptr %pending_buf411, align 8
  %364 = load i64, ptr %beg393, align 8
  %add.ptr412 = getelementptr inbounds i8, ptr %363, i64 %364
  %365 = load ptr, ptr %s, align 8
  %pending413 = getelementptr inbounds %struct.internal_state, ptr %365, i32 0, i32 5
  %366 = load i64, ptr %pending413, align 8
  %367 = load i64, ptr %beg393, align 8
  %sub414 = sub i64 %366, %367
  %call415 = call i64 @crc32_z(i64 noundef %361, ptr noundef %add.ptr412, i64 noundef %sub414)
  %368 = load ptr, ptr %strm.addr, align 8
  %adler416 = getelementptr inbounds %struct.z_stream_s, ptr %368, i32 0, i32 12
  store i64 %call415, ptr %adler416, align 8
  br label %if.end417

if.end417:                                        ; preds = %if.then409, %land.lhs.true405, %do.body401
  br label %do.end418

do.end418:                                        ; preds = %if.end417
  %369 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %369)
  %370 = load ptr, ptr %s, align 8
  %pending419 = getelementptr inbounds %struct.internal_state, ptr %370, i32 0, i32 5
  %371 = load i64, ptr %pending419, align 8
  %cmp420 = icmp ne i64 %371, 0
  br i1 %cmp420, label %if.then422, label %if.end424

if.then422:                                       ; preds = %do.end418
  %372 = load ptr, ptr %s, align 8
  %last_flush423 = getelementptr inbounds %struct.internal_state, ptr %372, i32 0, i32 10
  store i32 -1, ptr %last_flush423, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end424:                                        ; preds = %do.end418
  store i64 0, ptr %beg393, align 8
  br label %if.end425

if.end425:                                        ; preds = %if.end424, %do.body395
  %373 = load ptr, ptr %s, align 8
  %gzhead426 = getelementptr inbounds %struct.internal_state, ptr %373, i32 0, i32 7
  %374 = load ptr, ptr %gzhead426, align 8
  %name427 = getelementptr inbounds %struct.gz_header_s, ptr %374, i32 0, i32 7
  %375 = load ptr, ptr %name427, align 8
  %376 = load ptr, ptr %s, align 8
  %gzindex428 = getelementptr inbounds %struct.internal_state, ptr %376, i32 0, i32 8
  %377 = load i64, ptr %gzindex428, align 8
  %inc429 = add i64 %377, 1
  store i64 %inc429, ptr %gzindex428, align 8
  %arrayidx430 = getelementptr inbounds i8, ptr %375, i64 %377
  %378 = load i8, ptr %arrayidx430, align 1
  %conv431 = zext i8 %378 to i32
  store i32 %conv431, ptr %val, align 4
  %379 = load i32, ptr %val, align 4
  %conv432 = trunc i32 %379 to i8
  %380 = load ptr, ptr %s, align 8
  %pending_buf433 = getelementptr inbounds %struct.internal_state, ptr %380, i32 0, i32 2
  %381 = load ptr, ptr %pending_buf433, align 8
  %382 = load ptr, ptr %s, align 8
  %pending434 = getelementptr inbounds %struct.internal_state, ptr %382, i32 0, i32 5
  %383 = load i64, ptr %pending434, align 8
  %inc435 = add i64 %383, 1
  store i64 %inc435, ptr %pending434, align 8
  %arrayidx436 = getelementptr inbounds i8, ptr %381, i64 %383
  store i8 %conv432, ptr %arrayidx436, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end425
  %384 = load i32, ptr %val, align 4
  %cmp437 = icmp ne i32 %384, 0
  br i1 %cmp437, label %do.body395, label %do.end439, !llvm.loop !13

do.end439:                                        ; preds = %do.cond
  br label %do.body440

do.body440:                                       ; preds = %do.end439
  %385 = load ptr, ptr %s, align 8
  %gzhead441 = getelementptr inbounds %struct.internal_state, ptr %385, i32 0, i32 7
  %386 = load ptr, ptr %gzhead441, align 8
  %hcrc442 = getelementptr inbounds %struct.gz_header_s, ptr %386, i32 0, i32 11
  %387 = load i32, ptr %hcrc442, align 4
  %tobool443 = icmp ne i32 %387, 0
  br i1 %tobool443, label %land.lhs.true444, label %if.end456

land.lhs.true444:                                 ; preds = %do.body440
  %388 = load ptr, ptr %s, align 8
  %pending445 = getelementptr inbounds %struct.internal_state, ptr %388, i32 0, i32 5
  %389 = load i64, ptr %pending445, align 8
  %390 = load i64, ptr %beg393, align 8
  %cmp446 = icmp ugt i64 %389, %390
  br i1 %cmp446, label %if.then448, label %if.end456

if.then448:                                       ; preds = %land.lhs.true444
  %391 = load ptr, ptr %strm.addr, align 8
  %adler449 = getelementptr inbounds %struct.z_stream_s, ptr %391, i32 0, i32 12
  %392 = load i64, ptr %adler449, align 8
  %393 = load ptr, ptr %s, align 8
  %pending_buf450 = getelementptr inbounds %struct.internal_state, ptr %393, i32 0, i32 2
  %394 = load ptr, ptr %pending_buf450, align 8
  %395 = load i64, ptr %beg393, align 8
  %add.ptr451 = getelementptr inbounds i8, ptr %394, i64 %395
  %396 = load ptr, ptr %s, align 8
  %pending452 = getelementptr inbounds %struct.internal_state, ptr %396, i32 0, i32 5
  %397 = load i64, ptr %pending452, align 8
  %398 = load i64, ptr %beg393, align 8
  %sub453 = sub i64 %397, %398
  %call454 = call i64 @crc32_z(i64 noundef %392, ptr noundef %add.ptr451, i64 noundef %sub453)
  %399 = load ptr, ptr %strm.addr, align 8
  %adler455 = getelementptr inbounds %struct.z_stream_s, ptr %399, i32 0, i32 12
  store i64 %call454, ptr %adler455, align 8
  br label %if.end456

if.end456:                                        ; preds = %if.then448, %land.lhs.true444, %do.body440
  br label %do.end458

do.end458:                                        ; preds = %if.end456
  %400 = load ptr, ptr %s, align 8
  %gzindex459 = getelementptr inbounds %struct.internal_state, ptr %400, i32 0, i32 8
  store i64 0, ptr %gzindex459, align 8
  br label %if.end460

if.end460:                                        ; preds = %do.end458, %if.then387
  %401 = load ptr, ptr %s, align 8
  %status461 = getelementptr inbounds %struct.internal_state, ptr %401, i32 0, i32 1
  store i32 91, ptr %status461, align 8
  br label %if.end462

if.end462:                                        ; preds = %if.end460, %if.end383
  %402 = load ptr, ptr %s, align 8
  %status463 = getelementptr inbounds %struct.internal_state, ptr %402, i32 0, i32 1
  %403 = load i32, ptr %status463, align 8
  %cmp464 = icmp eq i32 %403, 91
  br i1 %cmp464, label %if.then466, label %if.end543

if.then466:                                       ; preds = %if.end462
  %404 = load ptr, ptr %s, align 8
  %gzhead467 = getelementptr inbounds %struct.internal_state, ptr %404, i32 0, i32 7
  %405 = load ptr, ptr %gzhead467, align 8
  %comment468 = getelementptr inbounds %struct.gz_header_s, ptr %405, i32 0, i32 9
  %406 = load ptr, ptr %comment468, align 8
  %cmp469 = icmp ne ptr %406, null
  br i1 %cmp469, label %if.then471, label %if.end541

if.then471:                                       ; preds = %if.then466
  %407 = load ptr, ptr %s, align 8
  %pending473 = getelementptr inbounds %struct.internal_state, ptr %407, i32 0, i32 5
  %408 = load i64, ptr %pending473, align 8
  store i64 %408, ptr %beg472, align 8
  br label %do.body475

do.body475:                                       ; preds = %do.cond518, %if.then471
  %409 = load ptr, ptr %s, align 8
  %pending476 = getelementptr inbounds %struct.internal_state, ptr %409, i32 0, i32 5
  %410 = load i64, ptr %pending476, align 8
  %411 = load ptr, ptr %s, align 8
  %pending_buf_size477 = getelementptr inbounds %struct.internal_state, ptr %411, i32 0, i32 3
  %412 = load i64, ptr %pending_buf_size477, align 8
  %cmp478 = icmp eq i64 %410, %412
  br i1 %cmp478, label %if.then480, label %if.end506

if.then480:                                       ; preds = %do.body475
  br label %do.body481

do.body481:                                       ; preds = %if.then480
  %413 = load ptr, ptr %s, align 8
  %gzhead482 = getelementptr inbounds %struct.internal_state, ptr %413, i32 0, i32 7
  %414 = load ptr, ptr %gzhead482, align 8
  %hcrc483 = getelementptr inbounds %struct.gz_header_s, ptr %414, i32 0, i32 11
  %415 = load i32, ptr %hcrc483, align 4
  %tobool484 = icmp ne i32 %415, 0
  br i1 %tobool484, label %land.lhs.true485, label %if.end497

land.lhs.true485:                                 ; preds = %do.body481
  %416 = load ptr, ptr %s, align 8
  %pending486 = getelementptr inbounds %struct.internal_state, ptr %416, i32 0, i32 5
  %417 = load i64, ptr %pending486, align 8
  %418 = load i64, ptr %beg472, align 8
  %cmp487 = icmp ugt i64 %417, %418
  br i1 %cmp487, label %if.then489, label %if.end497

if.then489:                                       ; preds = %land.lhs.true485
  %419 = load ptr, ptr %strm.addr, align 8
  %adler490 = getelementptr inbounds %struct.z_stream_s, ptr %419, i32 0, i32 12
  %420 = load i64, ptr %adler490, align 8
  %421 = load ptr, ptr %s, align 8
  %pending_buf491 = getelementptr inbounds %struct.internal_state, ptr %421, i32 0, i32 2
  %422 = load ptr, ptr %pending_buf491, align 8
  %423 = load i64, ptr %beg472, align 8
  %add.ptr492 = getelementptr inbounds i8, ptr %422, i64 %423
  %424 = load ptr, ptr %s, align 8
  %pending493 = getelementptr inbounds %struct.internal_state, ptr %424, i32 0, i32 5
  %425 = load i64, ptr %pending493, align 8
  %426 = load i64, ptr %beg472, align 8
  %sub494 = sub i64 %425, %426
  %call495 = call i64 @crc32_z(i64 noundef %420, ptr noundef %add.ptr492, i64 noundef %sub494)
  %427 = load ptr, ptr %strm.addr, align 8
  %adler496 = getelementptr inbounds %struct.z_stream_s, ptr %427, i32 0, i32 12
  store i64 %call495, ptr %adler496, align 8
  br label %if.end497

if.end497:                                        ; preds = %if.then489, %land.lhs.true485, %do.body481
  br label %do.end499

do.end499:                                        ; preds = %if.end497
  %428 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %428)
  %429 = load ptr, ptr %s, align 8
  %pending500 = getelementptr inbounds %struct.internal_state, ptr %429, i32 0, i32 5
  %430 = load i64, ptr %pending500, align 8
  %cmp501 = icmp ne i64 %430, 0
  br i1 %cmp501, label %if.then503, label %if.end505

if.then503:                                       ; preds = %do.end499
  %431 = load ptr, ptr %s, align 8
  %last_flush504 = getelementptr inbounds %struct.internal_state, ptr %431, i32 0, i32 10
  store i32 -1, ptr %last_flush504, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end505:                                        ; preds = %do.end499
  store i64 0, ptr %beg472, align 8
  br label %if.end506

if.end506:                                        ; preds = %if.end505, %do.body475
  %432 = load ptr, ptr %s, align 8
  %gzhead507 = getelementptr inbounds %struct.internal_state, ptr %432, i32 0, i32 7
  %433 = load ptr, ptr %gzhead507, align 8
  %comment508 = getelementptr inbounds %struct.gz_header_s, ptr %433, i32 0, i32 9
  %434 = load ptr, ptr %comment508, align 8
  %435 = load ptr, ptr %s, align 8
  %gzindex509 = getelementptr inbounds %struct.internal_state, ptr %435, i32 0, i32 8
  %436 = load i64, ptr %gzindex509, align 8
  %inc510 = add i64 %436, 1
  store i64 %inc510, ptr %gzindex509, align 8
  %arrayidx511 = getelementptr inbounds i8, ptr %434, i64 %436
  %437 = load i8, ptr %arrayidx511, align 1
  %conv512 = zext i8 %437 to i32
  store i32 %conv512, ptr %val474, align 4
  %438 = load i32, ptr %val474, align 4
  %conv513 = trunc i32 %438 to i8
  %439 = load ptr, ptr %s, align 8
  %pending_buf514 = getelementptr inbounds %struct.internal_state, ptr %439, i32 0, i32 2
  %440 = load ptr, ptr %pending_buf514, align 8
  %441 = load ptr, ptr %s, align 8
  %pending515 = getelementptr inbounds %struct.internal_state, ptr %441, i32 0, i32 5
  %442 = load i64, ptr %pending515, align 8
  %inc516 = add i64 %442, 1
  store i64 %inc516, ptr %pending515, align 8
  %arrayidx517 = getelementptr inbounds i8, ptr %440, i64 %442
  store i8 %conv513, ptr %arrayidx517, align 1
  br label %do.cond518

do.cond518:                                       ; preds = %if.end506
  %443 = load i32, ptr %val474, align 4
  %cmp519 = icmp ne i32 %443, 0
  br i1 %cmp519, label %do.body475, label %do.end521, !llvm.loop !14

do.end521:                                        ; preds = %do.cond518
  br label %do.body522

do.body522:                                       ; preds = %do.end521
  %444 = load ptr, ptr %s, align 8
  %gzhead523 = getelementptr inbounds %struct.internal_state, ptr %444, i32 0, i32 7
  %445 = load ptr, ptr %gzhead523, align 8
  %hcrc524 = getelementptr inbounds %struct.gz_header_s, ptr %445, i32 0, i32 11
  %446 = load i32, ptr %hcrc524, align 4
  %tobool525 = icmp ne i32 %446, 0
  br i1 %tobool525, label %land.lhs.true526, label %if.end538

land.lhs.true526:                                 ; preds = %do.body522
  %447 = load ptr, ptr %s, align 8
  %pending527 = getelementptr inbounds %struct.internal_state, ptr %447, i32 0, i32 5
  %448 = load i64, ptr %pending527, align 8
  %449 = load i64, ptr %beg472, align 8
  %cmp528 = icmp ugt i64 %448, %449
  br i1 %cmp528, label %if.then530, label %if.end538

if.then530:                                       ; preds = %land.lhs.true526
  %450 = load ptr, ptr %strm.addr, align 8
  %adler531 = getelementptr inbounds %struct.z_stream_s, ptr %450, i32 0, i32 12
  %451 = load i64, ptr %adler531, align 8
  %452 = load ptr, ptr %s, align 8
  %pending_buf532 = getelementptr inbounds %struct.internal_state, ptr %452, i32 0, i32 2
  %453 = load ptr, ptr %pending_buf532, align 8
  %454 = load i64, ptr %beg472, align 8
  %add.ptr533 = getelementptr inbounds i8, ptr %453, i64 %454
  %455 = load ptr, ptr %s, align 8
  %pending534 = getelementptr inbounds %struct.internal_state, ptr %455, i32 0, i32 5
  %456 = load i64, ptr %pending534, align 8
  %457 = load i64, ptr %beg472, align 8
  %sub535 = sub i64 %456, %457
  %call536 = call i64 @crc32_z(i64 noundef %451, ptr noundef %add.ptr533, i64 noundef %sub535)
  %458 = load ptr, ptr %strm.addr, align 8
  %adler537 = getelementptr inbounds %struct.z_stream_s, ptr %458, i32 0, i32 12
  store i64 %call536, ptr %adler537, align 8
  br label %if.end538

if.end538:                                        ; preds = %if.then530, %land.lhs.true526, %do.body522
  br label %do.end540

do.end540:                                        ; preds = %if.end538
  br label %if.end541

if.end541:                                        ; preds = %do.end540, %if.then466
  %459 = load ptr, ptr %s, align 8
  %status542 = getelementptr inbounds %struct.internal_state, ptr %459, i32 0, i32 1
  store i32 103, ptr %status542, align 8
  br label %if.end543

if.end543:                                        ; preds = %if.end541, %if.end462
  %460 = load ptr, ptr %s, align 8
  %status544 = getelementptr inbounds %struct.internal_state, ptr %460, i32 0, i32 1
  %461 = load i32, ptr %status544, align 8
  %cmp545 = icmp eq i32 %461, 103
  br i1 %cmp545, label %if.then547, label %if.end590

if.then547:                                       ; preds = %if.end543
  %462 = load ptr, ptr %s, align 8
  %gzhead548 = getelementptr inbounds %struct.internal_state, ptr %462, i32 0, i32 7
  %463 = load ptr, ptr %gzhead548, align 8
  %hcrc549 = getelementptr inbounds %struct.gz_header_s, ptr %463, i32 0, i32 11
  %464 = load i32, ptr %hcrc549, align 4
  %tobool550 = icmp ne i32 %464, 0
  br i1 %tobool550, label %if.then551, label %if.end582

if.then551:                                       ; preds = %if.then547
  %465 = load ptr, ptr %s, align 8
  %pending552 = getelementptr inbounds %struct.internal_state, ptr %465, i32 0, i32 5
  %466 = load i64, ptr %pending552, align 8
  %add553 = add i64 %466, 2
  %467 = load ptr, ptr %s, align 8
  %pending_buf_size554 = getelementptr inbounds %struct.internal_state, ptr %467, i32 0, i32 3
  %468 = load i64, ptr %pending_buf_size554, align 8
  %cmp555 = icmp ugt i64 %add553, %468
  br i1 %cmp555, label %if.then557, label %if.end564

if.then557:                                       ; preds = %if.then551
  %469 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %469)
  %470 = load ptr, ptr %s, align 8
  %pending558 = getelementptr inbounds %struct.internal_state, ptr %470, i32 0, i32 5
  %471 = load i64, ptr %pending558, align 8
  %cmp559 = icmp ne i64 %471, 0
  br i1 %cmp559, label %if.then561, label %if.end563

if.then561:                                       ; preds = %if.then557
  %472 = load ptr, ptr %s, align 8
  %last_flush562 = getelementptr inbounds %struct.internal_state, ptr %472, i32 0, i32 10
  store i32 -1, ptr %last_flush562, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end563:                                        ; preds = %if.then557
  br label %if.end564

if.end564:                                        ; preds = %if.end563, %if.then551
  %473 = load ptr, ptr %strm.addr, align 8
  %adler565 = getelementptr inbounds %struct.z_stream_s, ptr %473, i32 0, i32 12
  %474 = load i64, ptr %adler565, align 8
  %and566 = and i64 %474, 255
  %conv567 = trunc i64 %and566 to i8
  %475 = load ptr, ptr %s, align 8
  %pending_buf568 = getelementptr inbounds %struct.internal_state, ptr %475, i32 0, i32 2
  %476 = load ptr, ptr %pending_buf568, align 8
  %477 = load ptr, ptr %s, align 8
  %pending569 = getelementptr inbounds %struct.internal_state, ptr %477, i32 0, i32 5
  %478 = load i64, ptr %pending569, align 8
  %inc570 = add i64 %478, 1
  store i64 %inc570, ptr %pending569, align 8
  %arrayidx571 = getelementptr inbounds i8, ptr %476, i64 %478
  store i8 %conv567, ptr %arrayidx571, align 1
  %479 = load ptr, ptr %strm.addr, align 8
  %adler572 = getelementptr inbounds %struct.z_stream_s, ptr %479, i32 0, i32 12
  %480 = load i64, ptr %adler572, align 8
  %shr573 = lshr i64 %480, 8
  %and574 = and i64 %shr573, 255
  %conv575 = trunc i64 %and574 to i8
  %481 = load ptr, ptr %s, align 8
  %pending_buf576 = getelementptr inbounds %struct.internal_state, ptr %481, i32 0, i32 2
  %482 = load ptr, ptr %pending_buf576, align 8
  %483 = load ptr, ptr %s, align 8
  %pending577 = getelementptr inbounds %struct.internal_state, ptr %483, i32 0, i32 5
  %484 = load i64, ptr %pending577, align 8
  %inc578 = add i64 %484, 1
  store i64 %inc578, ptr %pending577, align 8
  %arrayidx579 = getelementptr inbounds i8, ptr %482, i64 %484
  store i8 %conv575, ptr %arrayidx579, align 1
  %call580 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %485 = load ptr, ptr %strm.addr, align 8
  %adler581 = getelementptr inbounds %struct.z_stream_s, ptr %485, i32 0, i32 12
  store i64 %call580, ptr %adler581, align 8
  br label %if.end582

if.end582:                                        ; preds = %if.end564, %if.then547
  %486 = load ptr, ptr %s, align 8
  %status583 = getelementptr inbounds %struct.internal_state, ptr %486, i32 0, i32 1
  store i32 113, ptr %status583, align 8
  %487 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %487)
  %488 = load ptr, ptr %s, align 8
  %pending584 = getelementptr inbounds %struct.internal_state, ptr %488, i32 0, i32 5
  %489 = load i64, ptr %pending584, align 8
  %cmp585 = icmp ne i64 %489, 0
  br i1 %cmp585, label %if.then587, label %if.end589

if.then587:                                       ; preds = %if.end582
  %490 = load ptr, ptr %s, align 8
  %last_flush588 = getelementptr inbounds %struct.internal_state, ptr %490, i32 0, i32 10
  store i32 -1, ptr %last_flush588, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end589:                                        ; preds = %if.end582
  br label %if.end590

if.end590:                                        ; preds = %if.end589, %if.end543
  %491 = load ptr, ptr %strm.addr, align 8
  %avail_in591 = getelementptr inbounds %struct.z_stream_s, ptr %491, i32 0, i32 1
  %492 = load i32, ptr %avail_in591, align 8
  %cmp592 = icmp ne i32 %492, 0
  br i1 %cmp592, label %if.then604, label %lor.lhs.false594

lor.lhs.false594:                                 ; preds = %if.end590
  %493 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %493, i32 0, i32 29
  %494 = load i32, ptr %lookahead, align 4
  %cmp595 = icmp ne i32 %494, 0
  br i1 %cmp595, label %if.then604, label %lor.lhs.false597

lor.lhs.false597:                                 ; preds = %lor.lhs.false594
  %495 = load i32, ptr %flush.addr, align 4
  %cmp598 = icmp ne i32 %495, 0
  br i1 %cmp598, label %land.lhs.true600, label %if.end695

land.lhs.true600:                                 ; preds = %lor.lhs.false597
  %496 = load ptr, ptr %s, align 8
  %status601 = getelementptr inbounds %struct.internal_state, ptr %496, i32 0, i32 1
  %497 = load i32, ptr %status601, align 8
  %cmp602 = icmp ne i32 %497, 666
  br i1 %cmp602, label %if.then604, label %if.end695

if.then604:                                       ; preds = %land.lhs.true600, %lor.lhs.false594, %if.end590
  %498 = load ptr, ptr %s, align 8
  %level605 = getelementptr inbounds %struct.internal_state, ptr %498, i32 0, i32 33
  %499 = load i32, ptr %level605, align 4
  %cmp606 = icmp eq i32 %499, 0
  br i1 %cmp606, label %cond.true608, label %cond.false610

cond.true608:                                     ; preds = %if.then604
  %500 = load ptr, ptr %s, align 8
  %501 = load i32, ptr %flush.addr, align 4
  %call609 = call i32 @deflate_stored(ptr noundef %500, i32 noundef %501)
  br label %cond.end630

cond.false610:                                    ; preds = %if.then604
  %502 = load ptr, ptr %s, align 8
  %strategy611 = getelementptr inbounds %struct.internal_state, ptr %502, i32 0, i32 34
  %503 = load i32, ptr %strategy611, align 8
  %cmp612 = icmp eq i32 %503, 2
  br i1 %cmp612, label %cond.true614, label %cond.false616

cond.true614:                                     ; preds = %cond.false610
  %504 = load ptr, ptr %s, align 8
  %505 = load i32, ptr %flush.addr, align 4
  %call615 = call i32 @deflate_huff(ptr noundef %504, i32 noundef %505)
  br label %cond.end628

cond.false616:                                    ; preds = %cond.false610
  %506 = load ptr, ptr %s, align 8
  %strategy617 = getelementptr inbounds %struct.internal_state, ptr %506, i32 0, i32 34
  %507 = load i32, ptr %strategy617, align 8
  %cmp618 = icmp eq i32 %507, 3
  br i1 %cmp618, label %cond.true620, label %cond.false622

cond.true620:                                     ; preds = %cond.false616
  %508 = load ptr, ptr %s, align 8
  %509 = load i32, ptr %flush.addr, align 4
  %call621 = call i32 @deflate_rle(ptr noundef %508, i32 noundef %509)
  br label %cond.end626

cond.false622:                                    ; preds = %cond.false616
  %510 = load ptr, ptr %s, align 8
  %level623 = getelementptr inbounds %struct.internal_state, ptr %510, i32 0, i32 33
  %511 = load i32, ptr %level623, align 4
  %idxprom = sext i32 %511 to i64
  %arrayidx624 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom
  %func = getelementptr inbounds %struct.config_s, ptr %arrayidx624, i32 0, i32 4
  %512 = load ptr, ptr %func, align 8
  %513 = load ptr, ptr %s, align 8
  %514 = load i32, ptr %flush.addr, align 4
  %call625 = call i32 %512(ptr noundef %513, i32 noundef %514)
  br label %cond.end626

cond.end626:                                      ; preds = %cond.false622, %cond.true620
  %cond627 = phi i32 [ %call621, %cond.true620 ], [ %call625, %cond.false622 ]
  br label %cond.end628

cond.end628:                                      ; preds = %cond.end626, %cond.true614
  %cond629 = phi i32 [ %call615, %cond.true614 ], [ %cond627, %cond.end626 ]
  br label %cond.end630

cond.end630:                                      ; preds = %cond.end628, %cond.true608
  %cond631 = phi i32 [ %call609, %cond.true608 ], [ %cond629, %cond.end628 ]
  store i32 %cond631, ptr %bstate, align 4
  %515 = load i32, ptr %bstate, align 4
  %cmp632 = icmp eq i32 %515, 2
  br i1 %cmp632, label %if.then637, label %lor.lhs.false634

lor.lhs.false634:                                 ; preds = %cond.end630
  %516 = load i32, ptr %bstate, align 4
  %cmp635 = icmp eq i32 %516, 3
  br i1 %cmp635, label %if.then637, label %if.end639

if.then637:                                       ; preds = %lor.lhs.false634, %cond.end630
  %517 = load ptr, ptr %s, align 8
  %status638 = getelementptr inbounds %struct.internal_state, ptr %517, i32 0, i32 1
  store i32 666, ptr %status638, align 8
  br label %if.end639

if.end639:                                        ; preds = %if.then637, %lor.lhs.false634
  %518 = load i32, ptr %bstate, align 4
  %cmp640 = icmp eq i32 %518, 0
  br i1 %cmp640, label %if.then645, label %lor.lhs.false642

lor.lhs.false642:                                 ; preds = %if.end639
  %519 = load i32, ptr %bstate, align 4
  %cmp643 = icmp eq i32 %519, 2
  br i1 %cmp643, label %if.then645, label %if.end652

if.then645:                                       ; preds = %lor.lhs.false642, %if.end639
  %520 = load ptr, ptr %strm.addr, align 8
  %avail_out646 = getelementptr inbounds %struct.z_stream_s, ptr %520, i32 0, i32 4
  %521 = load i32, ptr %avail_out646, align 8
  %cmp647 = icmp eq i32 %521, 0
  br i1 %cmp647, label %if.then649, label %if.end651

if.then649:                                       ; preds = %if.then645
  %522 = load ptr, ptr %s, align 8
  %last_flush650 = getelementptr inbounds %struct.internal_state, ptr %522, i32 0, i32 10
  store i32 -1, ptr %last_flush650, align 4
  br label %if.end651

if.end651:                                        ; preds = %if.then649, %if.then645
  store i32 0, ptr %retval, align 4
  br label %return

if.end652:                                        ; preds = %lor.lhs.false642
  %523 = load i32, ptr %bstate, align 4
  %cmp653 = icmp eq i32 %523, 1
  br i1 %cmp653, label %if.then655, label %if.end694

if.then655:                                       ; preds = %if.end652
  %524 = load i32, ptr %flush.addr, align 4
  %cmp656 = icmp eq i32 %524, 1
  br i1 %cmp656, label %if.then658, label %if.else659

if.then658:                                       ; preds = %if.then655
  %525 = load ptr, ptr %s, align 8
  call void @_tr_align(ptr noundef %525)
  br label %if.end687

if.else659:                                       ; preds = %if.then655
  %526 = load i32, ptr %flush.addr, align 4
  %cmp660 = icmp ne i32 %526, 5
  br i1 %cmp660, label %if.then662, label %if.end686

if.then662:                                       ; preds = %if.else659
  %527 = load ptr, ptr %s, align 8
  call void @_tr_stored_block(ptr noundef %527, ptr noundef null, i64 noundef 0, i32 noundef 0)
  %528 = load i32, ptr %flush.addr, align 4
  %cmp663 = icmp eq i32 %528, 3
  br i1 %cmp663, label %if.then665, label %if.end685

if.then665:                                       ; preds = %if.then662
  br label %do.body666

do.body666:                                       ; preds = %if.then665
  %529 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %529, i32 0, i32 17
  %530 = load ptr, ptr %head, align 8
  %531 = load ptr, ptr %s, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %531, i32 0, i32 19
  %532 = load i32, ptr %hash_size, align 4
  %sub667 = sub i32 %532, 1
  %idxprom668 = zext i32 %sub667 to i64
  %arrayidx669 = getelementptr inbounds i16, ptr %530, i64 %idxprom668
  store i16 0, ptr %arrayidx669, align 2
  %533 = load ptr, ptr %s, align 8
  %head670 = getelementptr inbounds %struct.internal_state, ptr %533, i32 0, i32 17
  %534 = load ptr, ptr %head670, align 8
  %535 = load ptr, ptr %s, align 8
  %hash_size671 = getelementptr inbounds %struct.internal_state, ptr %535, i32 0, i32 19
  %536 = load i32, ptr %hash_size671, align 4
  %sub672 = sub i32 %536, 1
  %conv673 = zext i32 %sub672 to i64
  %mul674 = mul i64 %conv673, 2
  %537 = load ptr, ptr %s, align 8
  %head675 = getelementptr inbounds %struct.internal_state, ptr %537, i32 0, i32 17
  %538 = load ptr, ptr %head675, align 8
  %539 = call i64 @llvm.objectsize.i64.p0(ptr %538, i1 false, i1 true, i1 false)
  %call676 = call ptr @__memset_chk(ptr noundef %534, i32 noundef 0, i64 noundef %mul674, i64 noundef %539) #4
  %540 = load ptr, ptr %s, align 8
  %slid = getelementptr inbounds %struct.internal_state, ptr %540, i32 0, i32 60
  store i32 0, ptr %slid, align 8
  br label %do.end678

do.end678:                                        ; preds = %do.body666
  %541 = load ptr, ptr %s, align 8
  %lookahead679 = getelementptr inbounds %struct.internal_state, ptr %541, i32 0, i32 29
  %542 = load i32, ptr %lookahead679, align 4
  %cmp680 = icmp eq i32 %542, 0
  br i1 %cmp680, label %if.then682, label %if.end684

if.then682:                                       ; preds = %do.end678
  %543 = load ptr, ptr %s, align 8
  %strstart683 = getelementptr inbounds %struct.internal_state, ptr %543, i32 0, i32 27
  store i32 0, ptr %strstart683, align 4
  %544 = load ptr, ptr %s, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %544, i32 0, i32 23
  store i64 0, ptr %block_start, align 8
  %545 = load ptr, ptr %s, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %545, i32 0, i32 55
  store i32 0, ptr %insert, align 4
  br label %if.end684

if.end684:                                        ; preds = %if.then682, %do.end678
  br label %if.end685

if.end685:                                        ; preds = %if.end684, %if.then662
  br label %if.end686

if.end686:                                        ; preds = %if.end685, %if.else659
  br label %if.end687

if.end687:                                        ; preds = %if.end686, %if.then658
  %546 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %546)
  %547 = load ptr, ptr %strm.addr, align 8
  %avail_out688 = getelementptr inbounds %struct.z_stream_s, ptr %547, i32 0, i32 4
  %548 = load i32, ptr %avail_out688, align 8
  %cmp689 = icmp eq i32 %548, 0
  br i1 %cmp689, label %if.then691, label %if.end693

if.then691:                                       ; preds = %if.end687
  %549 = load ptr, ptr %s, align 8
  %last_flush692 = getelementptr inbounds %struct.internal_state, ptr %549, i32 0, i32 10
  store i32 -1, ptr %last_flush692, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end693:                                        ; preds = %if.end687
  br label %if.end694

if.end694:                                        ; preds = %if.end693, %if.end652
  br label %if.end695

if.end695:                                        ; preds = %if.end694, %land.lhs.true600, %lor.lhs.false597
  %550 = load i32, ptr %flush.addr, align 4
  %cmp696 = icmp ne i32 %550, 4
  br i1 %cmp696, label %if.then698, label %if.end699

if.then698:                                       ; preds = %if.end695
  store i32 0, ptr %retval, align 4
  br label %return

if.end699:                                        ; preds = %if.end695
  %551 = load ptr, ptr %s, align 8
  %wrap700 = getelementptr inbounds %struct.internal_state, ptr %551, i32 0, i32 6
  %552 = load i32, ptr %wrap700, align 8
  %cmp701 = icmp sle i32 %552, 0
  br i1 %cmp701, label %if.then703, label %if.end704

if.then703:                                       ; preds = %if.end699
  store i32 1, ptr %retval, align 4
  br label %return

if.end704:                                        ; preds = %if.end699
  %553 = load ptr, ptr %s, align 8
  %wrap705 = getelementptr inbounds %struct.internal_state, ptr %553, i32 0, i32 6
  %554 = load i32, ptr %wrap705, align 8
  %cmp706 = icmp eq i32 %554, 2
  br i1 %cmp706, label %if.then708, label %if.else770

if.then708:                                       ; preds = %if.end704
  %555 = load ptr, ptr %strm.addr, align 8
  %adler709 = getelementptr inbounds %struct.z_stream_s, ptr %555, i32 0, i32 12
  %556 = load i64, ptr %adler709, align 8
  %and710 = and i64 %556, 255
  %conv711 = trunc i64 %and710 to i8
  %557 = load ptr, ptr %s, align 8
  %pending_buf712 = getelementptr inbounds %struct.internal_state, ptr %557, i32 0, i32 2
  %558 = load ptr, ptr %pending_buf712, align 8
  %559 = load ptr, ptr %s, align 8
  %pending713 = getelementptr inbounds %struct.internal_state, ptr %559, i32 0, i32 5
  %560 = load i64, ptr %pending713, align 8
  %inc714 = add i64 %560, 1
  store i64 %inc714, ptr %pending713, align 8
  %arrayidx715 = getelementptr inbounds i8, ptr %558, i64 %560
  store i8 %conv711, ptr %arrayidx715, align 1
  %561 = load ptr, ptr %strm.addr, align 8
  %adler716 = getelementptr inbounds %struct.z_stream_s, ptr %561, i32 0, i32 12
  %562 = load i64, ptr %adler716, align 8
  %shr717 = lshr i64 %562, 8
  %and718 = and i64 %shr717, 255
  %conv719 = trunc i64 %and718 to i8
  %563 = load ptr, ptr %s, align 8
  %pending_buf720 = getelementptr inbounds %struct.internal_state, ptr %563, i32 0, i32 2
  %564 = load ptr, ptr %pending_buf720, align 8
  %565 = load ptr, ptr %s, align 8
  %pending721 = getelementptr inbounds %struct.internal_state, ptr %565, i32 0, i32 5
  %566 = load i64, ptr %pending721, align 8
  %inc722 = add i64 %566, 1
  store i64 %inc722, ptr %pending721, align 8
  %arrayidx723 = getelementptr inbounds i8, ptr %564, i64 %566
  store i8 %conv719, ptr %arrayidx723, align 1
  %567 = load ptr, ptr %strm.addr, align 8
  %adler724 = getelementptr inbounds %struct.z_stream_s, ptr %567, i32 0, i32 12
  %568 = load i64, ptr %adler724, align 8
  %shr725 = lshr i64 %568, 16
  %and726 = and i64 %shr725, 255
  %conv727 = trunc i64 %and726 to i8
  %569 = load ptr, ptr %s, align 8
  %pending_buf728 = getelementptr inbounds %struct.internal_state, ptr %569, i32 0, i32 2
  %570 = load ptr, ptr %pending_buf728, align 8
  %571 = load ptr, ptr %s, align 8
  %pending729 = getelementptr inbounds %struct.internal_state, ptr %571, i32 0, i32 5
  %572 = load i64, ptr %pending729, align 8
  %inc730 = add i64 %572, 1
  store i64 %inc730, ptr %pending729, align 8
  %arrayidx731 = getelementptr inbounds i8, ptr %570, i64 %572
  store i8 %conv727, ptr %arrayidx731, align 1
  %573 = load ptr, ptr %strm.addr, align 8
  %adler732 = getelementptr inbounds %struct.z_stream_s, ptr %573, i32 0, i32 12
  %574 = load i64, ptr %adler732, align 8
  %shr733 = lshr i64 %574, 24
  %and734 = and i64 %shr733, 255
  %conv735 = trunc i64 %and734 to i8
  %575 = load ptr, ptr %s, align 8
  %pending_buf736 = getelementptr inbounds %struct.internal_state, ptr %575, i32 0, i32 2
  %576 = load ptr, ptr %pending_buf736, align 8
  %577 = load ptr, ptr %s, align 8
  %pending737 = getelementptr inbounds %struct.internal_state, ptr %577, i32 0, i32 5
  %578 = load i64, ptr %pending737, align 8
  %inc738 = add i64 %578, 1
  store i64 %inc738, ptr %pending737, align 8
  %arrayidx739 = getelementptr inbounds i8, ptr %576, i64 %578
  store i8 %conv735, ptr %arrayidx739, align 1
  %579 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %579, i32 0, i32 2
  %580 = load i64, ptr %total_in, align 8
  %and740 = and i64 %580, 255
  %conv741 = trunc i64 %and740 to i8
  %581 = load ptr, ptr %s, align 8
  %pending_buf742 = getelementptr inbounds %struct.internal_state, ptr %581, i32 0, i32 2
  %582 = load ptr, ptr %pending_buf742, align 8
  %583 = load ptr, ptr %s, align 8
  %pending743 = getelementptr inbounds %struct.internal_state, ptr %583, i32 0, i32 5
  %584 = load i64, ptr %pending743, align 8
  %inc744 = add i64 %584, 1
  store i64 %inc744, ptr %pending743, align 8
  %arrayidx745 = getelementptr inbounds i8, ptr %582, i64 %584
  store i8 %conv741, ptr %arrayidx745, align 1
  %585 = load ptr, ptr %strm.addr, align 8
  %total_in746 = getelementptr inbounds %struct.z_stream_s, ptr %585, i32 0, i32 2
  %586 = load i64, ptr %total_in746, align 8
  %shr747 = lshr i64 %586, 8
  %and748 = and i64 %shr747, 255
  %conv749 = trunc i64 %and748 to i8
  %587 = load ptr, ptr %s, align 8
  %pending_buf750 = getelementptr inbounds %struct.internal_state, ptr %587, i32 0, i32 2
  %588 = load ptr, ptr %pending_buf750, align 8
  %589 = load ptr, ptr %s, align 8
  %pending751 = getelementptr inbounds %struct.internal_state, ptr %589, i32 0, i32 5
  %590 = load i64, ptr %pending751, align 8
  %inc752 = add i64 %590, 1
  store i64 %inc752, ptr %pending751, align 8
  %arrayidx753 = getelementptr inbounds i8, ptr %588, i64 %590
  store i8 %conv749, ptr %arrayidx753, align 1
  %591 = load ptr, ptr %strm.addr, align 8
  %total_in754 = getelementptr inbounds %struct.z_stream_s, ptr %591, i32 0, i32 2
  %592 = load i64, ptr %total_in754, align 8
  %shr755 = lshr i64 %592, 16
  %and756 = and i64 %shr755, 255
  %conv757 = trunc i64 %and756 to i8
  %593 = load ptr, ptr %s, align 8
  %pending_buf758 = getelementptr inbounds %struct.internal_state, ptr %593, i32 0, i32 2
  %594 = load ptr, ptr %pending_buf758, align 8
  %595 = load ptr, ptr %s, align 8
  %pending759 = getelementptr inbounds %struct.internal_state, ptr %595, i32 0, i32 5
  %596 = load i64, ptr %pending759, align 8
  %inc760 = add i64 %596, 1
  store i64 %inc760, ptr %pending759, align 8
  %arrayidx761 = getelementptr inbounds i8, ptr %594, i64 %596
  store i8 %conv757, ptr %arrayidx761, align 1
  %597 = load ptr, ptr %strm.addr, align 8
  %total_in762 = getelementptr inbounds %struct.z_stream_s, ptr %597, i32 0, i32 2
  %598 = load i64, ptr %total_in762, align 8
  %shr763 = lshr i64 %598, 24
  %and764 = and i64 %shr763, 255
  %conv765 = trunc i64 %and764 to i8
  %599 = load ptr, ptr %s, align 8
  %pending_buf766 = getelementptr inbounds %struct.internal_state, ptr %599, i32 0, i32 2
  %600 = load ptr, ptr %pending_buf766, align 8
  %601 = load ptr, ptr %s, align 8
  %pending767 = getelementptr inbounds %struct.internal_state, ptr %601, i32 0, i32 5
  %602 = load i64, ptr %pending767, align 8
  %inc768 = add i64 %602, 1
  store i64 %inc768, ptr %pending767, align 8
  %arrayidx769 = getelementptr inbounds i8, ptr %600, i64 %602
  store i8 %conv765, ptr %arrayidx769, align 1
  br label %if.end777

if.else770:                                       ; preds = %if.end704
  %603 = load ptr, ptr %s, align 8
  %604 = load ptr, ptr %strm.addr, align 8
  %adler771 = getelementptr inbounds %struct.z_stream_s, ptr %604, i32 0, i32 12
  %605 = load i64, ptr %adler771, align 8
  %shr772 = lshr i64 %605, 16
  %conv773 = trunc i64 %shr772 to i32
  call void @putShortMSB(ptr noundef %603, i32 noundef %conv773)
  %606 = load ptr, ptr %s, align 8
  %607 = load ptr, ptr %strm.addr, align 8
  %adler774 = getelementptr inbounds %struct.z_stream_s, ptr %607, i32 0, i32 12
  %608 = load i64, ptr %adler774, align 8
  %and775 = and i64 %608, 65535
  %conv776 = trunc i64 %and775 to i32
  call void @putShortMSB(ptr noundef %606, i32 noundef %conv776)
  br label %if.end777

if.end777:                                        ; preds = %if.else770, %if.then708
  %609 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %609)
  %610 = load ptr, ptr %s, align 8
  %wrap778 = getelementptr inbounds %struct.internal_state, ptr %610, i32 0, i32 6
  %611 = load i32, ptr %wrap778, align 8
  %cmp779 = icmp sgt i32 %611, 0
  br i1 %cmp779, label %if.then781, label %if.end785

if.then781:                                       ; preds = %if.end777
  %612 = load ptr, ptr %s, align 8
  %wrap782 = getelementptr inbounds %struct.internal_state, ptr %612, i32 0, i32 6
  %613 = load i32, ptr %wrap782, align 8
  %sub783 = sub nsw i32 0, %613
  %614 = load ptr, ptr %s, align 8
  %wrap784 = getelementptr inbounds %struct.internal_state, ptr %614, i32 0, i32 6
  store i32 %sub783, ptr %wrap784, align 8
  br label %if.end785

if.end785:                                        ; preds = %if.then781, %if.end777
  %615 = load ptr, ptr %s, align 8
  %pending786 = getelementptr inbounds %struct.internal_state, ptr %615, i32 0, i32 5
  %616 = load i64, ptr %pending786, align 8
  %cmp787 = icmp ne i64 %616, 0
  %617 = zext i1 %cmp787 to i64
  %cond789 = select i1 %cmp787, i32 0, i32 1
  store i32 %cond789, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end785, %if.then703, %if.then698, %if.then691, %if.end651, %if.then587, %if.then561, %if.then503, %if.then422, %if.then345, %if.then161, %if.then95, %if.then45, %if.then36, %if.then22, %if.then14, %if.then11, %if.then
  %618 = load i32, ptr %retval, align 4
  ret i32 %618
}

; Function Attrs: nounwind ssp uwtable
define internal void @slide_hash(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca ptr, align 8
  %wsize = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %w_size, align 8
  store i32 %1, ptr %wsize, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 19
  %3 = load i32, ptr %hash_size, align 4
  store i32 %3, ptr %n, align 4
  %4 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 17
  %5 = load ptr, ptr %head, align 8
  %6 = load i32, ptr %n, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds i16, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %7, i32 -1
  store ptr %incdec.ptr, ptr %p, align 8
  %8 = load i16, ptr %incdec.ptr, align 2
  %conv = zext i16 %8 to i32
  store i32 %conv, ptr %m, align 4
  %9 = load i32, ptr %m, align 4
  %10 = load i32, ptr %wsize, align 4
  %cmp = icmp uge i32 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %11 = load i32, ptr %m, align 4
  %12 = load i32, ptr %wsize, align 4
  %sub = sub i32 %11, %12
  br label %cond.end

cond.false:                                       ; preds = %do.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  %conv2 = trunc i32 %cond to i16
  %13 = load ptr, ptr %p, align 8
  store i16 %conv2, ptr %13, align 2
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %14 = load i32, ptr %n, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %n, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %15 = load i32, ptr %wsize, align 4
  store i32 %15, ptr %n, align 4
  %16 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 16
  %17 = load ptr, ptr %prev, align 8
  %18 = load i32, ptr %n, align 4
  %idxprom3 = zext i32 %18 to i64
  %arrayidx4 = getelementptr inbounds i16, ptr %17, i64 %idxprom3
  store ptr %arrayidx4, ptr %p, align 8
  br label %do.body5

do.body5:                                         ; preds = %do.cond16, %do.end
  %19 = load ptr, ptr %p, align 8
  %incdec.ptr6 = getelementptr inbounds i16, ptr %19, i32 -1
  store ptr %incdec.ptr6, ptr %p, align 8
  %20 = load i16, ptr %incdec.ptr6, align 2
  %conv7 = zext i16 %20 to i32
  store i32 %conv7, ptr %m, align 4
  %21 = load i32, ptr %m, align 4
  %22 = load i32, ptr %wsize, align 4
  %cmp8 = icmp uge i32 %21, %22
  br i1 %cmp8, label %cond.true10, label %cond.false12

cond.true10:                                      ; preds = %do.body5
  %23 = load i32, ptr %m, align 4
  %24 = load i32, ptr %wsize, align 4
  %sub11 = sub i32 %23, %24
  br label %cond.end13

cond.false12:                                     ; preds = %do.body5
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true10
  %cond14 = phi i32 [ %sub11, %cond.true10 ], [ 0, %cond.false12 ]
  %conv15 = trunc i32 %cond14 to i16
  %25 = load ptr, ptr %p, align 8
  store i16 %conv15, ptr %25, align 2
  br label %do.cond16

do.cond16:                                        ; preds = %cond.end13
  %26 = load i32, ptr %n, align 4
  %dec17 = add i32 %26, -1
  store i32 %dec17, ptr %n, align 4
  %tobool18 = icmp ne i32 %dec17, 0
  br i1 %tobool18, label %do.body5, label %do.end19, !llvm.loop !16

do.end19:                                         ; preds = %do.cond16
  %27 = load ptr, ptr %s.addr, align 8
  %slid = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 60
  store i32 1, ptr %slid, align 8
  ret void
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
  %call = call i32 @deflateStateCheck(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %s, align 8
  %3 = load i32, ptr %good_length.addr, align 4
  %4 = load ptr, ptr %s, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 35
  store i32 %3, ptr %good_match, align 4
  %5 = load i32, ptr %max_lazy.addr, align 4
  %6 = load ptr, ptr %s, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 32
  store i32 %5, ptr %max_lazy_match, align 8
  %7 = load i32, ptr %nice_length.addr, align 4
  %8 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 36
  store i32 %7, ptr %nice_match, align 8
  %9 = load i32, ptr %max_chain.addr, align 4
  %10 = load ptr, ptr %s, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %10, i32 0, i32 31
  store i32 %9, ptr %max_chain_length, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define i64 @deflateBound_z(ptr noundef %strm, i64 noundef %sourceLen) #0 {
entry:
  %retval = alloca i64, align 8
  %strm.addr = alloca ptr, align 8
  %sourceLen.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  %fixedlen = alloca i64, align 8
  %storelen = alloca i64, align 8
  %wraplen = alloca i64, align 8
  %bound = alloca i64, align 8
  %str = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i64 %sourceLen, ptr %sourceLen.addr, align 8
  %0 = load i64, ptr %sourceLen.addr, align 8
  %1 = load i64, ptr %sourceLen.addr, align 8
  %shr = lshr i64 %1, 3
  %add = add i64 %0, %shr
  %2 = load i64, ptr %sourceLen.addr, align 8
  %shr1 = lshr i64 %2, 8
  %add2 = add i64 %add, %shr1
  %3 = load i64, ptr %sourceLen.addr, align 8
  %shr3 = lshr i64 %3, 9
  %add4 = add i64 %add2, %shr3
  %add5 = add i64 %add4, 4
  store i64 %add5, ptr %fixedlen, align 8
  %4 = load i64, ptr %fixedlen, align 8
  %5 = load i64, ptr %sourceLen.addr, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %fixedlen, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, ptr %sourceLen.addr, align 8
  %7 = load i64, ptr %sourceLen.addr, align 8
  %shr6 = lshr i64 %7, 5
  %add7 = add i64 %6, %shr6
  %8 = load i64, ptr %sourceLen.addr, align 8
  %shr8 = lshr i64 %8, 7
  %add9 = add i64 %add7, %shr8
  %9 = load i64, ptr %sourceLen.addr, align 8
  %shr10 = lshr i64 %9, 11
  %add11 = add i64 %add9, %shr10
  %add12 = add i64 %add11, 7
  store i64 %add12, ptr %storelen, align 8
  %10 = load i64, ptr %storelen, align 8
  %11 = load i64, ptr %sourceLen.addr, align 8
  %cmp13 = icmp ult i64 %10, %11
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i64 -1, ptr %storelen, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  %12 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then16, label %if.end25

if.then16:                                        ; preds = %if.end15
  %13 = load i64, ptr %fixedlen, align 8
  %14 = load i64, ptr %storelen, align 8
  %cmp17 = icmp ugt i64 %13, %14
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then16
  %15 = load i64, ptr %fixedlen, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  %16 = load i64, ptr %storelen, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %15, %cond.true ], [ %16, %cond.false ]
  store i64 %cond, ptr %bound, align 8
  %17 = load i64, ptr %bound, align 8
  %add18 = add i64 %17, 18
  %18 = load i64, ptr %bound, align 8
  %cmp19 = icmp ult i64 %add18, %18
  br i1 %cmp19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %cond.end
  br label %cond.end23

cond.false21:                                     ; preds = %cond.end
  %19 = load i64, ptr %bound, align 8
  %add22 = add i64 %19, 18
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false21, %cond.true20
  %cond24 = phi i64 [ -1, %cond.true20 ], [ %add22, %cond.false21 ]
  store i64 %cond24, ptr %retval, align 8
  br label %return

if.end25:                                         ; preds = %if.end15
  %20 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %state, align 8
  store ptr %21, ptr %s, align 8
  %22 = load ptr, ptr %s, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %wrap, align 8
  %cmp26 = icmp slt i32 %23, 0
  br i1 %cmp26, label %cond.true27, label %cond.false29

cond.true27:                                      ; preds = %if.end25
  %24 = load ptr, ptr %s, align 8
  %wrap28 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %wrap28, align 8
  %sub = sub nsw i32 0, %25
  br label %cond.end31

cond.false29:                                     ; preds = %if.end25
  %26 = load ptr, ptr %s, align 8
  %wrap30 = getelementptr inbounds %struct.internal_state, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %wrap30, align 8
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false29, %cond.true27
  %cond32 = phi i32 [ %sub, %cond.true27 ], [ %27, %cond.false29 ]
  switch i32 %cond32, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb37
  ]

sw.bb:                                            ; preds = %cond.end31
  store i64 0, ptr %wraplen, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %cond.end31
  %28 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 27
  %29 = load i32, ptr %strstart, align 4
  %tobool34 = icmp ne i32 %29, 0
  %30 = zext i1 %tobool34 to i64
  %cond35 = select i1 %tobool34, i32 4, i32 0
  %add36 = add nsw i32 6, %cond35
  %conv = sext i32 %add36 to i64
  store i64 %conv, ptr %wraplen, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %cond.end31
  store i64 18, ptr %wraplen, align 8
  %31 = load ptr, ptr %s, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %gzhead, align 8
  %cmp38 = icmp ne ptr %32, null
  br i1 %cmp38, label %if.then40, label %if.end72

if.then40:                                        ; preds = %sw.bb37
  %33 = load ptr, ptr %s, align 8
  %gzhead41 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 7
  %34 = load ptr, ptr %gzhead41, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %extra, align 8
  %cmp42 = icmp ne ptr %35, null
  br i1 %cmp42, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.then40
  %36 = load ptr, ptr %s, align 8
  %gzhead45 = getelementptr inbounds %struct.internal_state, ptr %36, i32 0, i32 7
  %37 = load ptr, ptr %gzhead45, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %37, i32 0, i32 5
  %38 = load i32, ptr %extra_len, align 8
  %add46 = add i32 2, %38
  %conv47 = zext i32 %add46 to i64
  %39 = load i64, ptr %wraplen, align 8
  %add48 = add i64 %39, %conv47
  store i64 %add48, ptr %wraplen, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.then40
  %40 = load ptr, ptr %s, align 8
  %gzhead50 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 7
  %41 = load ptr, ptr %gzhead50, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %41, i32 0, i32 7
  %42 = load ptr, ptr %name, align 8
  store ptr %42, ptr %str, align 8
  %43 = load ptr, ptr %str, align 8
  %cmp51 = icmp ne ptr %43, null
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end49
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then53
  %44 = load i64, ptr %wraplen, align 8
  %inc = add i64 %44, 1
  store i64 %inc, ptr %wraplen, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %45 = load ptr, ptr %str, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr, ptr %str, align 8
  %46 = load i8, ptr %45, align 1
  %tobool54 = icmp ne i8 %46, 0
  br i1 %tobool54, label %do.body, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  br label %if.end55

if.end55:                                         ; preds = %do.end, %if.end49
  %47 = load ptr, ptr %s, align 8
  %gzhead56 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 7
  %48 = load ptr, ptr %gzhead56, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %48, i32 0, i32 9
  %49 = load ptr, ptr %comment, align 8
  store ptr %49, ptr %str, align 8
  %50 = load ptr, ptr %str, align 8
  %cmp57 = icmp ne ptr %50, null
  br i1 %cmp57, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.end55
  br label %do.body60

do.body60:                                        ; preds = %do.cond62, %if.then59
  %51 = load i64, ptr %wraplen, align 8
  %inc61 = add i64 %51, 1
  store i64 %inc61, ptr %wraplen, align 8
  br label %do.cond62

do.cond62:                                        ; preds = %do.body60
  %52 = load ptr, ptr %str, align 8
  %incdec.ptr63 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr63, ptr %str, align 8
  %53 = load i8, ptr %52, align 1
  %tobool64 = icmp ne i8 %53, 0
  br i1 %tobool64, label %do.body60, label %do.end65, !llvm.loop !18

do.end65:                                         ; preds = %do.cond62
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %if.end55
  %54 = load ptr, ptr %s, align 8
  %gzhead67 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 7
  %55 = load ptr, ptr %gzhead67, align 8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %55, i32 0, i32 11
  %56 = load i32, ptr %hcrc, align 4
  %tobool68 = icmp ne i32 %56, 0
  br i1 %tobool68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  %57 = load i64, ptr %wraplen, align 8
  %add70 = add i64 %57, 2
  store i64 %add70, ptr %wraplen, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %sw.bb37
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end31
  store i64 18, ptr %wraplen, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end72, %sw.bb33, %sw.bb
  %58 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 12
  %59 = load i32, ptr %w_bits, align 4
  %cmp73 = icmp ne i32 %59, 15
  br i1 %cmp73, label %if.then77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %60 = load ptr, ptr %s, align 8
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 20
  %61 = load i32, ptr %hash_bits, align 8
  %cmp75 = icmp ne i32 %61, 15
  br i1 %cmp75, label %if.then77, label %if.end95

if.then77:                                        ; preds = %lor.lhs.false, %sw.epilog
  %62 = load ptr, ptr %s, align 8
  %w_bits78 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 12
  %63 = load i32, ptr %w_bits78, align 4
  %64 = load ptr, ptr %s, align 8
  %hash_bits79 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 20
  %65 = load i32, ptr %hash_bits79, align 8
  %cmp80 = icmp ule i32 %63, %65
  br i1 %cmp80, label %land.lhs.true, label %cond.false84

land.lhs.true:                                    ; preds = %if.then77
  %66 = load ptr, ptr %s, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 33
  %67 = load i32, ptr %level, align 4
  %tobool82 = icmp ne i32 %67, 0
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %land.lhs.true
  %68 = load i64, ptr %fixedlen, align 8
  br label %cond.end85

cond.false84:                                     ; preds = %land.lhs.true, %if.then77
  %69 = load i64, ptr %storelen, align 8
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.true83
  %cond86 = phi i64 [ %68, %cond.true83 ], [ %69, %cond.false84 ]
  store i64 %cond86, ptr %bound, align 8
  %70 = load i64, ptr %bound, align 8
  %71 = load i64, ptr %wraplen, align 8
  %add87 = add i64 %70, %71
  %72 = load i64, ptr %bound, align 8
  %cmp88 = icmp ult i64 %add87, %72
  br i1 %cmp88, label %cond.true90, label %cond.false91

cond.true90:                                      ; preds = %cond.end85
  br label %cond.end93

cond.false91:                                     ; preds = %cond.end85
  %73 = load i64, ptr %bound, align 8
  %74 = load i64, ptr %wraplen, align 8
  %add92 = add i64 %73, %74
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false91, %cond.true90
  %cond94 = phi i64 [ -1, %cond.true90 ], [ %add92, %cond.false91 ]
  store i64 %cond94, ptr %retval, align 8
  br label %return

if.end95:                                         ; preds = %lor.lhs.false
  %75 = load i64, ptr %sourceLen.addr, align 8
  %76 = load i64, ptr %sourceLen.addr, align 8
  %shr96 = lshr i64 %76, 12
  %add97 = add i64 %75, %shr96
  %77 = load i64, ptr %sourceLen.addr, align 8
  %shr98 = lshr i64 %77, 14
  %add99 = add i64 %add97, %shr98
  %78 = load i64, ptr %sourceLen.addr, align 8
  %shr100 = lshr i64 %78, 25
  %add101 = add i64 %add99, %shr100
  %add102 = add i64 %add101, 13
  %sub103 = sub i64 %add102, 6
  %79 = load i64, ptr %wraplen, align 8
  %add104 = add i64 %sub103, %79
  store i64 %add104, ptr %bound, align 8
  %80 = load i64, ptr %bound, align 8
  %81 = load i64, ptr %sourceLen.addr, align 8
  %cmp105 = icmp ult i64 %80, %81
  br i1 %cmp105, label %cond.true107, label %cond.false108

cond.true107:                                     ; preds = %if.end95
  br label %cond.end109

cond.false108:                                    ; preds = %if.end95
  %82 = load i64, ptr %bound, align 8
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false108, %cond.true107
  %cond110 = phi i64 [ -1, %cond.true107 ], [ %82, %cond.false108 ]
  store i64 %cond110, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end109, %cond.end93, %cond.end23
  %83 = load i64, ptr %retval, align 8
  ret i64 %83
}

; Function Attrs: nounwind ssp uwtable
define i64 @deflateBound(ptr noundef %strm, i64 noundef %sourceLen) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %sourceLen.addr = alloca i64, align 8
  %bound = alloca i64, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i64 %sourceLen, ptr %sourceLen.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %1 = load i64, ptr %sourceLen.addr, align 8
  %call = call i64 @deflateBound_z(ptr noundef %0, i64 noundef %1)
  store i64 %call, ptr %bound, align 8
  %2 = load i64, ptr %bound, align 8
  %3 = load i64, ptr %bound, align 8
  %cmp = icmp ne i64 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %bound, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %4, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind ssp uwtable
define internal void @flush_pending(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  %2 = load ptr, ptr %s, align 8
  call void @_tr_flush_bits(ptr noundef %2)
  %3 = load ptr, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 5
  %4 = load i64, ptr %pending, align 8
  %5 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %avail_out, align 8
  %conv = zext i32 %6 to i64
  %cmp = icmp ugt i64 %4, %conv
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %strm.addr, align 8
  %avail_out2 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %avail_out2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load ptr, ptr %s, align 8
  %pending3 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 5
  %10 = load i64, ptr %pending3, align 8
  %conv4 = trunc i64 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %conv4, %cond.false ]
  store i32 %cond, ptr %len, align 4
  %11 = load i32, ptr %len, align 4
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %if.end23

if.end:                                           ; preds = %cond.end
  %12 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %next_out, align 8
  %14 = load ptr, ptr %s, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %pending_out, align 8
  %16 = load i32, ptr %len, align 4
  %conv7 = zext i32 %16 to i64
  %17 = load ptr, ptr %strm.addr, align 8
  %next_out8 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %next_out8, align 8
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %18, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %13, ptr noundef %15, i64 noundef %conv7, i64 noundef %19) #4
  %20 = load i32, ptr %len, align 4
  %21 = load ptr, ptr %strm.addr, align 8
  %next_out9 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %next_out9, align 8
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  store ptr %add.ptr, ptr %next_out9, align 8
  %23 = load i32, ptr %len, align 4
  %24 = load ptr, ptr %s, align 8
  %pending_out10 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %pending_out10, align 8
  %idx.ext11 = zext i32 %23 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %25, i64 %idx.ext11
  store ptr %add.ptr12, ptr %pending_out10, align 8
  %26 = load i32, ptr %len, align 4
  %conv13 = zext i32 %26 to i64
  %27 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 5
  %28 = load i64, ptr %total_out, align 8
  %add = add i64 %28, %conv13
  store i64 %add, ptr %total_out, align 8
  %29 = load i32, ptr %len, align 4
  %30 = load ptr, ptr %strm.addr, align 8
  %avail_out14 = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %avail_out14, align 8
  %sub = sub i32 %31, %29
  store i32 %sub, ptr %avail_out14, align 8
  %32 = load i32, ptr %len, align 4
  %conv15 = zext i32 %32 to i64
  %33 = load ptr, ptr %s, align 8
  %pending16 = getelementptr inbounds %struct.internal_state, ptr %33, i32 0, i32 5
  %34 = load i64, ptr %pending16, align 8
  %sub17 = sub i64 %34, %conv15
  store i64 %sub17, ptr %pending16, align 8
  %35 = load ptr, ptr %s, align 8
  %pending18 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 5
  %36 = load i64, ptr %pending18, align 8
  %cmp19 = icmp eq i64 %36, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  %37 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %pending_buf, align 8
  %39 = load ptr, ptr %s, align 8
  %pending_out22 = getelementptr inbounds %struct.internal_state, ptr %39, i32 0, i32 4
  store ptr %38, ptr %pending_out22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then, %if.then21, %if.end
  ret void
}

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
  %4 = load i64, ptr %pending, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %pending, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %4
  store i8 %conv, ptr %arrayidx, align 1
  %5 = load i32, ptr %b.addr, align 4
  %and = and i32 %5, 255
  %conv1 = trunc i32 %and to i8
  %6 = load ptr, ptr %s.addr, align 8
  %pending_buf2 = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pending_buf2, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %pending3 = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %pending3, align 8
  %inc4 = add i64 %9, 1
  store i64 %inc4, ptr %pending3, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 %9
  store i8 %conv1, ptr %arrayidx5, align 1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @deflate_stored(ptr noundef %s, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %min_block = alloca i32, align 4
  %last = alloca i32, align 4
  %len = alloca i32, align 4
  %left = alloca i32, align 4
  %have = alloca i32, align 4
  %used = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %pending_buf_size, align 8
  %sub = sub i64 %1, 5
  %2 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %w_size, align 8
  %conv = zext i32 %3 to i64
  %cmp = icmp ugt i64 %sub, %conv
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8
  %w_size2 = getelementptr inbounds %struct.internal_state, ptr %4, i32 0, i32 11
  %5 = load i32, ptr %w_size2, align 8
  %conv3 = zext i32 %5 to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %s.addr, align 8
  %pending_buf_size4 = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %pending_buf_size4, align 8
  %sub5 = sub i64 %7, 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ %sub5, %cond.false ]
  %conv6 = trunc i64 %cond to i32
  store i32 %conv6, ptr %min_block, align 4
  store i32 0, ptr %last, align 4
  %8 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %strm, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %avail_in, align 8
  store i32 %10, ptr %used, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  store i32 65535, ptr %len, align 4
  %11 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 57
  %12 = load i32, ptr %bi_valid, align 4
  %add = add i32 %12, 42
  %shr = lshr i32 %add, 3
  store i32 %shr, ptr %have, align 4
  %13 = load ptr, ptr %s.addr, align 8
  %strm7 = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %strm7, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %avail_out, align 8
  %16 = load i32, ptr %have, align 4
  %cmp8 = icmp ult i32 %15, %16
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %17 = load ptr, ptr %s.addr, align 8
  %strm10 = getelementptr inbounds %struct.internal_state, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %strm10, align 8
  %avail_out11 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %avail_out11, align 8
  %20 = load i32, ptr %have, align 4
  %sub12 = sub i32 %19, %20
  store i32 %sub12, ptr %have, align 4
  %21 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 27
  %22 = load i32, ptr %strstart, align 4
  %conv13 = zext i32 %22 to i64
  %23 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 23
  %24 = load i64, ptr %block_start, align 8
  %sub14 = sub nsw i64 %conv13, %24
  %conv15 = trunc i64 %sub14 to i32
  store i32 %conv15, ptr %left, align 4
  %25 = load i32, ptr %len, align 4
  %conv16 = zext i32 %25 to i64
  %26 = load i32, ptr %left, align 4
  %conv17 = zext i32 %26 to i64
  %27 = load ptr, ptr %s.addr, align 8
  %strm18 = getelementptr inbounds %struct.internal_state, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %strm18, align 8
  %avail_in19 = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %avail_in19, align 8
  %conv20 = zext i32 %29 to i64
  %add21 = add i64 %conv17, %conv20
  %cmp22 = icmp ugt i64 %conv16, %add21
  br i1 %cmp22, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end
  %30 = load i32, ptr %left, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %strm25 = getelementptr inbounds %struct.internal_state, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %strm25, align 8
  %avail_in26 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %avail_in26, align 8
  %add27 = add i32 %30, %33
  store i32 %add27, ptr %len, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end
  %34 = load i32, ptr %len, align 4
  %35 = load i32, ptr %have, align 4
  %cmp29 = icmp ugt i32 %34, %35
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %36 = load i32, ptr %have, align 4
  store i32 %36, ptr %len, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  %37 = load i32, ptr %len, align 4
  %38 = load i32, ptr %min_block, align 4
  %cmp33 = icmp ult i32 %37, %38
  br i1 %cmp33, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %if.end32
  %39 = load i32, ptr %len, align 4
  %cmp35 = icmp eq i32 %39, 0
  br i1 %cmp35, label %land.lhs.true37, label %lor.lhs.false

land.lhs.true37:                                  ; preds = %land.lhs.true
  %40 = load i32, ptr %flush.addr, align 4
  %cmp38 = icmp ne i32 %40, 4
  br i1 %cmp38, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true37, %land.lhs.true
  %41 = load i32, ptr %flush.addr, align 4
  %cmp40 = icmp eq i32 %41, 0
  br i1 %cmp40, label %if.then48, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %42 = load i32, ptr %len, align 4
  %43 = load i32, ptr %left, align 4
  %44 = load ptr, ptr %s.addr, align 8
  %strm43 = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %strm43, align 8
  %avail_in44 = getelementptr inbounds %struct.z_stream_s, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %avail_in44, align 8
  %add45 = add i32 %43, %46
  %cmp46 = icmp ne i32 %42, %add45
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false42, %lor.lhs.false, %land.lhs.true37
  br label %do.end

if.end49:                                         ; preds = %lor.lhs.false42, %if.end32
  %47 = load i32, ptr %flush.addr, align 4
  %cmp50 = icmp eq i32 %47, 4
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end49
  %48 = load i32, ptr %len, align 4
  %49 = load i32, ptr %left, align 4
  %50 = load ptr, ptr %s.addr, align 8
  %strm52 = getelementptr inbounds %struct.internal_state, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %strm52, align 8
  %avail_in53 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %avail_in53, align 8
  %add54 = add i32 %49, %52
  %cmp55 = icmp eq i32 %48, %add54
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end49
  %53 = phi i1 [ false, %if.end49 ], [ %cmp55, %land.rhs ]
  %54 = zext i1 %53 to i64
  %cond57 = select i1 %53, i32 1, i32 0
  store i32 %cond57, ptr %last, align 4
  %55 = load ptr, ptr %s.addr, align 8
  %56 = load i32, ptr %last, align 4
  call void @_tr_stored_block(ptr noundef %55, ptr noundef null, i64 noundef 0, i32 noundef %56)
  %57 = load i32, ptr %len, align 4
  %conv58 = trunc i32 %57 to i8
  %58 = load ptr, ptr %s.addr, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 2
  %59 = load ptr, ptr %pending_buf, align 8
  %60 = load ptr, ptr %s.addr, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %60, i32 0, i32 5
  %61 = load i64, ptr %pending, align 8
  %sub59 = sub i64 %61, 4
  %arrayidx = getelementptr inbounds i8, ptr %59, i64 %sub59
  store i8 %conv58, ptr %arrayidx, align 1
  %62 = load i32, ptr %len, align 4
  %shr60 = lshr i32 %62, 8
  %conv61 = trunc i32 %shr60 to i8
  %63 = load ptr, ptr %s.addr, align 8
  %pending_buf62 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %pending_buf62, align 8
  %65 = load ptr, ptr %s.addr, align 8
  %pending63 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 5
  %66 = load i64, ptr %pending63, align 8
  %sub64 = sub i64 %66, 3
  %arrayidx65 = getelementptr inbounds i8, ptr %64, i64 %sub64
  store i8 %conv61, ptr %arrayidx65, align 1
  %67 = load i32, ptr %len, align 4
  %neg = xor i32 %67, -1
  %conv66 = trunc i32 %neg to i8
  %68 = load ptr, ptr %s.addr, align 8
  %pending_buf67 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 2
  %69 = load ptr, ptr %pending_buf67, align 8
  %70 = load ptr, ptr %s.addr, align 8
  %pending68 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 5
  %71 = load i64, ptr %pending68, align 8
  %sub69 = sub i64 %71, 2
  %arrayidx70 = getelementptr inbounds i8, ptr %69, i64 %sub69
  store i8 %conv66, ptr %arrayidx70, align 1
  %72 = load i32, ptr %len, align 4
  %neg71 = xor i32 %72, -1
  %shr72 = lshr i32 %neg71, 8
  %conv73 = trunc i32 %shr72 to i8
  %73 = load ptr, ptr %s.addr, align 8
  %pending_buf74 = getelementptr inbounds %struct.internal_state, ptr %73, i32 0, i32 2
  %74 = load ptr, ptr %pending_buf74, align 8
  %75 = load ptr, ptr %s.addr, align 8
  %pending75 = getelementptr inbounds %struct.internal_state, ptr %75, i32 0, i32 5
  %76 = load i64, ptr %pending75, align 8
  %sub76 = sub i64 %76, 1
  %arrayidx77 = getelementptr inbounds i8, ptr %74, i64 %sub76
  store i8 %conv73, ptr %arrayidx77, align 1
  %77 = load ptr, ptr %s.addr, align 8
  %strm78 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %strm78, align 8
  call void @flush_pending(ptr noundef %78)
  %79 = load i32, ptr %left, align 4
  %tobool = icmp ne i32 %79, 0
  br i1 %tobool, label %if.then79, label %if.end102

if.then79:                                        ; preds = %land.end
  %80 = load i32, ptr %left, align 4
  %81 = load i32, ptr %len, align 4
  %cmp80 = icmp ugt i32 %80, %81
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then79
  %82 = load i32, ptr %len, align 4
  store i32 %82, ptr %left, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then79
  %83 = load ptr, ptr %s.addr, align 8
  %strm84 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %strm84, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %84, i32 0, i32 3
  %85 = load ptr, ptr %next_out, align 8
  %86 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 14
  %87 = load ptr, ptr %window, align 8
  %88 = load ptr, ptr %s.addr, align 8
  %block_start85 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 23
  %89 = load i64, ptr %block_start85, align 8
  %add.ptr = getelementptr inbounds i8, ptr %87, i64 %89
  %90 = load i32, ptr %left, align 4
  %conv86 = zext i32 %90 to i64
  %91 = load ptr, ptr %s.addr, align 8
  %strm87 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %strm87, align 8
  %next_out88 = getelementptr inbounds %struct.z_stream_s, ptr %92, i32 0, i32 3
  %93 = load ptr, ptr %next_out88, align 8
  %94 = call i64 @llvm.objectsize.i64.p0(ptr %93, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %85, ptr noundef %add.ptr, i64 noundef %conv86, i64 noundef %94) #4
  %95 = load i32, ptr %left, align 4
  %96 = load ptr, ptr %s.addr, align 8
  %strm89 = getelementptr inbounds %struct.internal_state, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %strm89, align 8
  %next_out90 = getelementptr inbounds %struct.z_stream_s, ptr %97, i32 0, i32 3
  %98 = load ptr, ptr %next_out90, align 8
  %idx.ext = zext i32 %95 to i64
  %add.ptr91 = getelementptr inbounds i8, ptr %98, i64 %idx.ext
  store ptr %add.ptr91, ptr %next_out90, align 8
  %99 = load i32, ptr %left, align 4
  %100 = load ptr, ptr %s.addr, align 8
  %strm92 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %strm92, align 8
  %avail_out93 = getelementptr inbounds %struct.z_stream_s, ptr %101, i32 0, i32 4
  %102 = load i32, ptr %avail_out93, align 8
  %sub94 = sub i32 %102, %99
  store i32 %sub94, ptr %avail_out93, align 8
  %103 = load i32, ptr %left, align 4
  %conv95 = zext i32 %103 to i64
  %104 = load ptr, ptr %s.addr, align 8
  %strm96 = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %strm96, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %105, i32 0, i32 5
  %106 = load i64, ptr %total_out, align 8
  %add97 = add i64 %106, %conv95
  store i64 %add97, ptr %total_out, align 8
  %107 = load i32, ptr %left, align 4
  %conv98 = zext i32 %107 to i64
  %108 = load ptr, ptr %s.addr, align 8
  %block_start99 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 23
  %109 = load i64, ptr %block_start99, align 8
  %add100 = add nsw i64 %109, %conv98
  store i64 %add100, ptr %block_start99, align 8
  %110 = load i32, ptr %left, align 4
  %111 = load i32, ptr %len, align 4
  %sub101 = sub i32 %111, %110
  store i32 %sub101, ptr %len, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end83, %land.end
  %112 = load i32, ptr %len, align 4
  %tobool103 = icmp ne i32 %112, 0
  br i1 %tobool103, label %if.then104, label %if.end120

if.then104:                                       ; preds = %if.end102
  %113 = load ptr, ptr %s.addr, align 8
  %strm105 = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %strm105, align 8
  %115 = load ptr, ptr %s.addr, align 8
  %strm106 = getelementptr inbounds %struct.internal_state, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %strm106, align 8
  %next_out107 = getelementptr inbounds %struct.z_stream_s, ptr %116, i32 0, i32 3
  %117 = load ptr, ptr %next_out107, align 8
  %118 = load i32, ptr %len, align 4
  %call108 = call i32 @read_buf(ptr noundef %114, ptr noundef %117, i32 noundef %118)
  %119 = load i32, ptr %len, align 4
  %120 = load ptr, ptr %s.addr, align 8
  %strm109 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %strm109, align 8
  %next_out110 = getelementptr inbounds %struct.z_stream_s, ptr %121, i32 0, i32 3
  %122 = load ptr, ptr %next_out110, align 8
  %idx.ext111 = zext i32 %119 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %122, i64 %idx.ext111
  store ptr %add.ptr112, ptr %next_out110, align 8
  %123 = load i32, ptr %len, align 4
  %124 = load ptr, ptr %s.addr, align 8
  %strm113 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %strm113, align 8
  %avail_out114 = getelementptr inbounds %struct.z_stream_s, ptr %125, i32 0, i32 4
  %126 = load i32, ptr %avail_out114, align 8
  %sub115 = sub i32 %126, %123
  store i32 %sub115, ptr %avail_out114, align 8
  %127 = load i32, ptr %len, align 4
  %conv116 = zext i32 %127 to i64
  %128 = load ptr, ptr %s.addr, align 8
  %strm117 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %strm117, align 8
  %total_out118 = getelementptr inbounds %struct.z_stream_s, ptr %129, i32 0, i32 5
  %130 = load i64, ptr %total_out118, align 8
  %add119 = add i64 %130, %conv116
  store i64 %add119, ptr %total_out118, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then104, %if.end102
  br label %do.cond

do.cond:                                          ; preds = %if.end120
  %131 = load i32, ptr %last, align 4
  %cmp121 = icmp eq i32 %131, 0
  br i1 %cmp121, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond, %if.then48, %if.then
  %132 = load ptr, ptr %s.addr, align 8
  %strm123 = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %strm123, align 8
  %avail_in124 = getelementptr inbounds %struct.z_stream_s, ptr %133, i32 0, i32 1
  %134 = load i32, ptr %avail_in124, align 8
  %135 = load i32, ptr %used, align 4
  %sub125 = sub i32 %135, %134
  store i32 %sub125, ptr %used, align 4
  %136 = load i32, ptr %used, align 4
  %tobool126 = icmp ne i32 %136, 0
  br i1 %tobool126, label %if.then127, label %if.end213

if.then127:                                       ; preds = %do.end
  %137 = load i32, ptr %used, align 4
  %138 = load ptr, ptr %s.addr, align 8
  %w_size128 = getelementptr inbounds %struct.internal_state, ptr %138, i32 0, i32 11
  %139 = load i32, ptr %w_size128, align 8
  %cmp129 = icmp uge i32 %137, %139
  br i1 %cmp129, label %if.then131, label %if.else

if.then131:                                       ; preds = %if.then127
  %140 = load ptr, ptr %s.addr, align 8
  %matches = getelementptr inbounds %struct.internal_state, ptr %140, i32 0, i32 54
  store i32 2, ptr %matches, align 8
  %141 = load ptr, ptr %s.addr, align 8
  %window132 = getelementptr inbounds %struct.internal_state, ptr %141, i32 0, i32 14
  %142 = load ptr, ptr %window132, align 8
  %143 = load ptr, ptr %s.addr, align 8
  %strm133 = getelementptr inbounds %struct.internal_state, ptr %143, i32 0, i32 0
  %144 = load ptr, ptr %strm133, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %144, i32 0, i32 0
  %145 = load ptr, ptr %next_in, align 8
  %146 = load ptr, ptr %s.addr, align 8
  %w_size134 = getelementptr inbounds %struct.internal_state, ptr %146, i32 0, i32 11
  %147 = load i32, ptr %w_size134, align 8
  %idx.ext135 = zext i32 %147 to i64
  %idx.neg = sub i64 0, %idx.ext135
  %add.ptr136 = getelementptr inbounds i8, ptr %145, i64 %idx.neg
  %148 = load ptr, ptr %s.addr, align 8
  %w_size137 = getelementptr inbounds %struct.internal_state, ptr %148, i32 0, i32 11
  %149 = load i32, ptr %w_size137, align 8
  %conv138 = zext i32 %149 to i64
  %150 = load ptr, ptr %s.addr, align 8
  %window139 = getelementptr inbounds %struct.internal_state, ptr %150, i32 0, i32 14
  %151 = load ptr, ptr %window139, align 8
  %152 = call i64 @llvm.objectsize.i64.p0(ptr %151, i1 false, i1 true, i1 false)
  %call140 = call ptr @__memcpy_chk(ptr noundef %142, ptr noundef %add.ptr136, i64 noundef %conv138, i64 noundef %152) #4
  %153 = load ptr, ptr %s.addr, align 8
  %w_size141 = getelementptr inbounds %struct.internal_state, ptr %153, i32 0, i32 11
  %154 = load i32, ptr %w_size141, align 8
  %155 = load ptr, ptr %s.addr, align 8
  %strstart142 = getelementptr inbounds %struct.internal_state, ptr %155, i32 0, i32 27
  store i32 %154, ptr %strstart142, align 4
  %156 = load ptr, ptr %s.addr, align 8
  %strstart143 = getelementptr inbounds %struct.internal_state, ptr %156, i32 0, i32 27
  %157 = load i32, ptr %strstart143, align 4
  %158 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %158, i32 0, i32 55
  store i32 %157, ptr %insert, align 4
  br label %if.end209

if.else:                                          ; preds = %if.then127
  %159 = load ptr, ptr %s.addr, align 8
  %window_size = getelementptr inbounds %struct.internal_state, ptr %159, i32 0, i32 15
  %160 = load i64, ptr %window_size, align 8
  %161 = load ptr, ptr %s.addr, align 8
  %strstart144 = getelementptr inbounds %struct.internal_state, ptr %161, i32 0, i32 27
  %162 = load i32, ptr %strstart144, align 4
  %conv145 = zext i32 %162 to i64
  %sub146 = sub i64 %160, %conv145
  %163 = load i32, ptr %used, align 4
  %conv147 = zext i32 %163 to i64
  %cmp148 = icmp ule i64 %sub146, %conv147
  br i1 %cmp148, label %if.then150, label %if.end177

if.then150:                                       ; preds = %if.else
  %164 = load ptr, ptr %s.addr, align 8
  %w_size151 = getelementptr inbounds %struct.internal_state, ptr %164, i32 0, i32 11
  %165 = load i32, ptr %w_size151, align 8
  %166 = load ptr, ptr %s.addr, align 8
  %strstart152 = getelementptr inbounds %struct.internal_state, ptr %166, i32 0, i32 27
  %167 = load i32, ptr %strstart152, align 4
  %sub153 = sub i32 %167, %165
  store i32 %sub153, ptr %strstart152, align 4
  %168 = load ptr, ptr %s.addr, align 8
  %window154 = getelementptr inbounds %struct.internal_state, ptr %168, i32 0, i32 14
  %169 = load ptr, ptr %window154, align 8
  %170 = load ptr, ptr %s.addr, align 8
  %window155 = getelementptr inbounds %struct.internal_state, ptr %170, i32 0, i32 14
  %171 = load ptr, ptr %window155, align 8
  %172 = load ptr, ptr %s.addr, align 8
  %w_size156 = getelementptr inbounds %struct.internal_state, ptr %172, i32 0, i32 11
  %173 = load i32, ptr %w_size156, align 8
  %idx.ext157 = zext i32 %173 to i64
  %add.ptr158 = getelementptr inbounds i8, ptr %171, i64 %idx.ext157
  %174 = load ptr, ptr %s.addr, align 8
  %strstart159 = getelementptr inbounds %struct.internal_state, ptr %174, i32 0, i32 27
  %175 = load i32, ptr %strstart159, align 4
  %conv160 = zext i32 %175 to i64
  %176 = load ptr, ptr %s.addr, align 8
  %window161 = getelementptr inbounds %struct.internal_state, ptr %176, i32 0, i32 14
  %177 = load ptr, ptr %window161, align 8
  %178 = call i64 @llvm.objectsize.i64.p0(ptr %177, i1 false, i1 true, i1 false)
  %call162 = call ptr @__memcpy_chk(ptr noundef %169, ptr noundef %add.ptr158, i64 noundef %conv160, i64 noundef %178) #4
  %179 = load ptr, ptr %s.addr, align 8
  %matches163 = getelementptr inbounds %struct.internal_state, ptr %179, i32 0, i32 54
  %180 = load i32, ptr %matches163, align 8
  %cmp164 = icmp ult i32 %180, 2
  br i1 %cmp164, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.then150
  %181 = load ptr, ptr %s.addr, align 8
  %matches167 = getelementptr inbounds %struct.internal_state, ptr %181, i32 0, i32 54
  %182 = load i32, ptr %matches167, align 8
  %inc = add i32 %182, 1
  store i32 %inc, ptr %matches167, align 8
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.then150
  %183 = load ptr, ptr %s.addr, align 8
  %insert169 = getelementptr inbounds %struct.internal_state, ptr %183, i32 0, i32 55
  %184 = load i32, ptr %insert169, align 4
  %185 = load ptr, ptr %s.addr, align 8
  %strstart170 = getelementptr inbounds %struct.internal_state, ptr %185, i32 0, i32 27
  %186 = load i32, ptr %strstart170, align 4
  %cmp171 = icmp ugt i32 %184, %186
  br i1 %cmp171, label %if.then173, label %if.end176

if.then173:                                       ; preds = %if.end168
  %187 = load ptr, ptr %s.addr, align 8
  %strstart174 = getelementptr inbounds %struct.internal_state, ptr %187, i32 0, i32 27
  %188 = load i32, ptr %strstart174, align 4
  %189 = load ptr, ptr %s.addr, align 8
  %insert175 = getelementptr inbounds %struct.internal_state, ptr %189, i32 0, i32 55
  store i32 %188, ptr %insert175, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %if.end168
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.else
  %190 = load ptr, ptr %s.addr, align 8
  %window178 = getelementptr inbounds %struct.internal_state, ptr %190, i32 0, i32 14
  %191 = load ptr, ptr %window178, align 8
  %192 = load ptr, ptr %s.addr, align 8
  %strstart179 = getelementptr inbounds %struct.internal_state, ptr %192, i32 0, i32 27
  %193 = load i32, ptr %strstart179, align 4
  %idx.ext180 = zext i32 %193 to i64
  %add.ptr181 = getelementptr inbounds i8, ptr %191, i64 %idx.ext180
  %194 = load ptr, ptr %s.addr, align 8
  %strm182 = getelementptr inbounds %struct.internal_state, ptr %194, i32 0, i32 0
  %195 = load ptr, ptr %strm182, align 8
  %next_in183 = getelementptr inbounds %struct.z_stream_s, ptr %195, i32 0, i32 0
  %196 = load ptr, ptr %next_in183, align 8
  %197 = load i32, ptr %used, align 4
  %idx.ext184 = zext i32 %197 to i64
  %idx.neg185 = sub i64 0, %idx.ext184
  %add.ptr186 = getelementptr inbounds i8, ptr %196, i64 %idx.neg185
  %198 = load i32, ptr %used, align 4
  %conv187 = zext i32 %198 to i64
  %199 = load ptr, ptr %s.addr, align 8
  %window188 = getelementptr inbounds %struct.internal_state, ptr %199, i32 0, i32 14
  %200 = load ptr, ptr %window188, align 8
  %201 = load ptr, ptr %s.addr, align 8
  %strstart189 = getelementptr inbounds %struct.internal_state, ptr %201, i32 0, i32 27
  %202 = load i32, ptr %strstart189, align 4
  %idx.ext190 = zext i32 %202 to i64
  %add.ptr191 = getelementptr inbounds i8, ptr %200, i64 %idx.ext190
  %203 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr191, i1 false, i1 true, i1 false)
  %call192 = call ptr @__memcpy_chk(ptr noundef %add.ptr181, ptr noundef %add.ptr186, i64 noundef %conv187, i64 noundef %203) #4
  %204 = load i32, ptr %used, align 4
  %205 = load ptr, ptr %s.addr, align 8
  %strstart193 = getelementptr inbounds %struct.internal_state, ptr %205, i32 0, i32 27
  %206 = load i32, ptr %strstart193, align 4
  %add194 = add i32 %206, %204
  store i32 %add194, ptr %strstart193, align 4
  %207 = load i32, ptr %used, align 4
  %208 = load ptr, ptr %s.addr, align 8
  %w_size195 = getelementptr inbounds %struct.internal_state, ptr %208, i32 0, i32 11
  %209 = load i32, ptr %w_size195, align 8
  %210 = load ptr, ptr %s.addr, align 8
  %insert196 = getelementptr inbounds %struct.internal_state, ptr %210, i32 0, i32 55
  %211 = load i32, ptr %insert196, align 4
  %sub197 = sub i32 %209, %211
  %cmp198 = icmp ugt i32 %207, %sub197
  br i1 %cmp198, label %cond.true200, label %cond.false204

cond.true200:                                     ; preds = %if.end177
  %212 = load ptr, ptr %s.addr, align 8
  %w_size201 = getelementptr inbounds %struct.internal_state, ptr %212, i32 0, i32 11
  %213 = load i32, ptr %w_size201, align 8
  %214 = load ptr, ptr %s.addr, align 8
  %insert202 = getelementptr inbounds %struct.internal_state, ptr %214, i32 0, i32 55
  %215 = load i32, ptr %insert202, align 4
  %sub203 = sub i32 %213, %215
  br label %cond.end205

cond.false204:                                    ; preds = %if.end177
  %216 = load i32, ptr %used, align 4
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false204, %cond.true200
  %cond206 = phi i32 [ %sub203, %cond.true200 ], [ %216, %cond.false204 ]
  %217 = load ptr, ptr %s.addr, align 8
  %insert207 = getelementptr inbounds %struct.internal_state, ptr %217, i32 0, i32 55
  %218 = load i32, ptr %insert207, align 4
  %add208 = add i32 %218, %cond206
  store i32 %add208, ptr %insert207, align 4
  br label %if.end209

if.end209:                                        ; preds = %cond.end205, %if.then131
  %219 = load ptr, ptr %s.addr, align 8
  %strstart210 = getelementptr inbounds %struct.internal_state, ptr %219, i32 0, i32 27
  %220 = load i32, ptr %strstart210, align 4
  %conv211 = zext i32 %220 to i64
  %221 = load ptr, ptr %s.addr, align 8
  %block_start212 = getelementptr inbounds %struct.internal_state, ptr %221, i32 0, i32 23
  store i64 %conv211, ptr %block_start212, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.end209, %do.end
  %222 = load ptr, ptr %s.addr, align 8
  %high_water = getelementptr inbounds %struct.internal_state, ptr %222, i32 0, i32 59
  %223 = load i64, ptr %high_water, align 8
  %224 = load ptr, ptr %s.addr, align 8
  %strstart214 = getelementptr inbounds %struct.internal_state, ptr %224, i32 0, i32 27
  %225 = load i32, ptr %strstart214, align 4
  %conv215 = zext i32 %225 to i64
  %cmp216 = icmp ult i64 %223, %conv215
  br i1 %cmp216, label %if.then218, label %if.end222

if.then218:                                       ; preds = %if.end213
  %226 = load ptr, ptr %s.addr, align 8
  %strstart219 = getelementptr inbounds %struct.internal_state, ptr %226, i32 0, i32 27
  %227 = load i32, ptr %strstart219, align 4
  %conv220 = zext i32 %227 to i64
  %228 = load ptr, ptr %s.addr, align 8
  %high_water221 = getelementptr inbounds %struct.internal_state, ptr %228, i32 0, i32 59
  store i64 %conv220, ptr %high_water221, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %if.end213
  %229 = load i32, ptr %last, align 4
  %tobool223 = icmp ne i32 %229, 0
  br i1 %tobool223, label %if.then224, label %if.end225

if.then224:                                       ; preds = %if.end222
  %230 = load ptr, ptr %s.addr, align 8
  %bi_used = getelementptr inbounds %struct.internal_state, ptr %230, i32 0, i32 58
  store i32 8, ptr %bi_used, align 8
  store i32 3, ptr %retval, align 4
  br label %return

if.end225:                                        ; preds = %if.end222
  %231 = load i32, ptr %flush.addr, align 4
  %cmp226 = icmp ne i32 %231, 0
  br i1 %cmp226, label %land.lhs.true228, label %if.end243

land.lhs.true228:                                 ; preds = %if.end225
  %232 = load i32, ptr %flush.addr, align 4
  %cmp229 = icmp ne i32 %232, 4
  br i1 %cmp229, label %land.lhs.true231, label %if.end243

land.lhs.true231:                                 ; preds = %land.lhs.true228
  %233 = load ptr, ptr %s.addr, align 8
  %strm232 = getelementptr inbounds %struct.internal_state, ptr %233, i32 0, i32 0
  %234 = load ptr, ptr %strm232, align 8
  %avail_in233 = getelementptr inbounds %struct.z_stream_s, ptr %234, i32 0, i32 1
  %235 = load i32, ptr %avail_in233, align 8
  %cmp234 = icmp eq i32 %235, 0
  br i1 %cmp234, label %land.lhs.true236, label %if.end243

land.lhs.true236:                                 ; preds = %land.lhs.true231
  %236 = load ptr, ptr %s.addr, align 8
  %strstart237 = getelementptr inbounds %struct.internal_state, ptr %236, i32 0, i32 27
  %237 = load i32, ptr %strstart237, align 4
  %conv238 = zext i32 %237 to i64
  %238 = load ptr, ptr %s.addr, align 8
  %block_start239 = getelementptr inbounds %struct.internal_state, ptr %238, i32 0, i32 23
  %239 = load i64, ptr %block_start239, align 8
  %cmp240 = icmp eq i64 %conv238, %239
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %land.lhs.true236
  store i32 1, ptr %retval, align 4
  br label %return

if.end243:                                        ; preds = %land.lhs.true236, %land.lhs.true231, %land.lhs.true228, %if.end225
  %240 = load ptr, ptr %s.addr, align 8
  %window_size244 = getelementptr inbounds %struct.internal_state, ptr %240, i32 0, i32 15
  %241 = load i64, ptr %window_size244, align 8
  %242 = load ptr, ptr %s.addr, align 8
  %strstart245 = getelementptr inbounds %struct.internal_state, ptr %242, i32 0, i32 27
  %243 = load i32, ptr %strstart245, align 4
  %conv246 = zext i32 %243 to i64
  %sub247 = sub i64 %241, %conv246
  %conv248 = trunc i64 %sub247 to i32
  store i32 %conv248, ptr %have, align 4
  %244 = load ptr, ptr %s.addr, align 8
  %strm249 = getelementptr inbounds %struct.internal_state, ptr %244, i32 0, i32 0
  %245 = load ptr, ptr %strm249, align 8
  %avail_in250 = getelementptr inbounds %struct.z_stream_s, ptr %245, i32 0, i32 1
  %246 = load i32, ptr %avail_in250, align 8
  %247 = load i32, ptr %have, align 4
  %cmp251 = icmp ugt i32 %246, %247
  br i1 %cmp251, label %land.lhs.true253, label %if.end293

land.lhs.true253:                                 ; preds = %if.end243
  %248 = load ptr, ptr %s.addr, align 8
  %block_start254 = getelementptr inbounds %struct.internal_state, ptr %248, i32 0, i32 23
  %249 = load i64, ptr %block_start254, align 8
  %250 = load ptr, ptr %s.addr, align 8
  %w_size255 = getelementptr inbounds %struct.internal_state, ptr %250, i32 0, i32 11
  %251 = load i32, ptr %w_size255, align 8
  %conv256 = zext i32 %251 to i64
  %cmp257 = icmp sge i64 %249, %conv256
  br i1 %cmp257, label %if.then259, label %if.end293

if.then259:                                       ; preds = %land.lhs.true253
  %252 = load ptr, ptr %s.addr, align 8
  %w_size260 = getelementptr inbounds %struct.internal_state, ptr %252, i32 0, i32 11
  %253 = load i32, ptr %w_size260, align 8
  %conv261 = zext i32 %253 to i64
  %254 = load ptr, ptr %s.addr, align 8
  %block_start262 = getelementptr inbounds %struct.internal_state, ptr %254, i32 0, i32 23
  %255 = load i64, ptr %block_start262, align 8
  %sub263 = sub nsw i64 %255, %conv261
  store i64 %sub263, ptr %block_start262, align 8
  %256 = load ptr, ptr %s.addr, align 8
  %w_size264 = getelementptr inbounds %struct.internal_state, ptr %256, i32 0, i32 11
  %257 = load i32, ptr %w_size264, align 8
  %258 = load ptr, ptr %s.addr, align 8
  %strstart265 = getelementptr inbounds %struct.internal_state, ptr %258, i32 0, i32 27
  %259 = load i32, ptr %strstart265, align 4
  %sub266 = sub i32 %259, %257
  store i32 %sub266, ptr %strstart265, align 4
  %260 = load ptr, ptr %s.addr, align 8
  %window267 = getelementptr inbounds %struct.internal_state, ptr %260, i32 0, i32 14
  %261 = load ptr, ptr %window267, align 8
  %262 = load ptr, ptr %s.addr, align 8
  %window268 = getelementptr inbounds %struct.internal_state, ptr %262, i32 0, i32 14
  %263 = load ptr, ptr %window268, align 8
  %264 = load ptr, ptr %s.addr, align 8
  %w_size269 = getelementptr inbounds %struct.internal_state, ptr %264, i32 0, i32 11
  %265 = load i32, ptr %w_size269, align 8
  %idx.ext270 = zext i32 %265 to i64
  %add.ptr271 = getelementptr inbounds i8, ptr %263, i64 %idx.ext270
  %266 = load ptr, ptr %s.addr, align 8
  %strstart272 = getelementptr inbounds %struct.internal_state, ptr %266, i32 0, i32 27
  %267 = load i32, ptr %strstart272, align 4
  %conv273 = zext i32 %267 to i64
  %268 = load ptr, ptr %s.addr, align 8
  %window274 = getelementptr inbounds %struct.internal_state, ptr %268, i32 0, i32 14
  %269 = load ptr, ptr %window274, align 8
  %270 = call i64 @llvm.objectsize.i64.p0(ptr %269, i1 false, i1 true, i1 false)
  %call275 = call ptr @__memcpy_chk(ptr noundef %261, ptr noundef %add.ptr271, i64 noundef %conv273, i64 noundef %270) #4
  %271 = load ptr, ptr %s.addr, align 8
  %matches276 = getelementptr inbounds %struct.internal_state, ptr %271, i32 0, i32 54
  %272 = load i32, ptr %matches276, align 8
  %cmp277 = icmp ult i32 %272, 2
  br i1 %cmp277, label %if.then279, label %if.end282

if.then279:                                       ; preds = %if.then259
  %273 = load ptr, ptr %s.addr, align 8
  %matches280 = getelementptr inbounds %struct.internal_state, ptr %273, i32 0, i32 54
  %274 = load i32, ptr %matches280, align 8
  %inc281 = add i32 %274, 1
  store i32 %inc281, ptr %matches280, align 8
  br label %if.end282

if.end282:                                        ; preds = %if.then279, %if.then259
  %275 = load ptr, ptr %s.addr, align 8
  %w_size283 = getelementptr inbounds %struct.internal_state, ptr %275, i32 0, i32 11
  %276 = load i32, ptr %w_size283, align 8
  %277 = load i32, ptr %have, align 4
  %add284 = add i32 %277, %276
  store i32 %add284, ptr %have, align 4
  %278 = load ptr, ptr %s.addr, align 8
  %insert285 = getelementptr inbounds %struct.internal_state, ptr %278, i32 0, i32 55
  %279 = load i32, ptr %insert285, align 4
  %280 = load ptr, ptr %s.addr, align 8
  %strstart286 = getelementptr inbounds %struct.internal_state, ptr %280, i32 0, i32 27
  %281 = load i32, ptr %strstart286, align 4
  %cmp287 = icmp ugt i32 %279, %281
  br i1 %cmp287, label %if.then289, label %if.end292

if.then289:                                       ; preds = %if.end282
  %282 = load ptr, ptr %s.addr, align 8
  %strstart290 = getelementptr inbounds %struct.internal_state, ptr %282, i32 0, i32 27
  %283 = load i32, ptr %strstart290, align 4
  %284 = load ptr, ptr %s.addr, align 8
  %insert291 = getelementptr inbounds %struct.internal_state, ptr %284, i32 0, i32 55
  store i32 %283, ptr %insert291, align 4
  br label %if.end292

if.end292:                                        ; preds = %if.then289, %if.end282
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %land.lhs.true253, %if.end243
  %285 = load i32, ptr %have, align 4
  %286 = load ptr, ptr %s.addr, align 8
  %strm294 = getelementptr inbounds %struct.internal_state, ptr %286, i32 0, i32 0
  %287 = load ptr, ptr %strm294, align 8
  %avail_in295 = getelementptr inbounds %struct.z_stream_s, ptr %287, i32 0, i32 1
  %288 = load i32, ptr %avail_in295, align 8
  %cmp296 = icmp ugt i32 %285, %288
  br i1 %cmp296, label %if.then298, label %if.end301

if.then298:                                       ; preds = %if.end293
  %289 = load ptr, ptr %s.addr, align 8
  %strm299 = getelementptr inbounds %struct.internal_state, ptr %289, i32 0, i32 0
  %290 = load ptr, ptr %strm299, align 8
  %avail_in300 = getelementptr inbounds %struct.z_stream_s, ptr %290, i32 0, i32 1
  %291 = load i32, ptr %avail_in300, align 8
  store i32 %291, ptr %have, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.then298, %if.end293
  %292 = load i32, ptr %have, align 4
  %tobool302 = icmp ne i32 %292, 0
  br i1 %tobool302, label %if.then303, label %if.end326

if.then303:                                       ; preds = %if.end301
  %293 = load ptr, ptr %s.addr, align 8
  %strm304 = getelementptr inbounds %struct.internal_state, ptr %293, i32 0, i32 0
  %294 = load ptr, ptr %strm304, align 8
  %295 = load ptr, ptr %s.addr, align 8
  %window305 = getelementptr inbounds %struct.internal_state, ptr %295, i32 0, i32 14
  %296 = load ptr, ptr %window305, align 8
  %297 = load ptr, ptr %s.addr, align 8
  %strstart306 = getelementptr inbounds %struct.internal_state, ptr %297, i32 0, i32 27
  %298 = load i32, ptr %strstart306, align 4
  %idx.ext307 = zext i32 %298 to i64
  %add.ptr308 = getelementptr inbounds i8, ptr %296, i64 %idx.ext307
  %299 = load i32, ptr %have, align 4
  %call309 = call i32 @read_buf(ptr noundef %294, ptr noundef %add.ptr308, i32 noundef %299)
  %300 = load i32, ptr %have, align 4
  %301 = load ptr, ptr %s.addr, align 8
  %strstart310 = getelementptr inbounds %struct.internal_state, ptr %301, i32 0, i32 27
  %302 = load i32, ptr %strstart310, align 4
  %add311 = add i32 %302, %300
  store i32 %add311, ptr %strstart310, align 4
  %303 = load i32, ptr %have, align 4
  %304 = load ptr, ptr %s.addr, align 8
  %w_size312 = getelementptr inbounds %struct.internal_state, ptr %304, i32 0, i32 11
  %305 = load i32, ptr %w_size312, align 8
  %306 = load ptr, ptr %s.addr, align 8
  %insert313 = getelementptr inbounds %struct.internal_state, ptr %306, i32 0, i32 55
  %307 = load i32, ptr %insert313, align 4
  %sub314 = sub i32 %305, %307
  %cmp315 = icmp ugt i32 %303, %sub314
  br i1 %cmp315, label %cond.true317, label %cond.false321

cond.true317:                                     ; preds = %if.then303
  %308 = load ptr, ptr %s.addr, align 8
  %w_size318 = getelementptr inbounds %struct.internal_state, ptr %308, i32 0, i32 11
  %309 = load i32, ptr %w_size318, align 8
  %310 = load ptr, ptr %s.addr, align 8
  %insert319 = getelementptr inbounds %struct.internal_state, ptr %310, i32 0, i32 55
  %311 = load i32, ptr %insert319, align 4
  %sub320 = sub i32 %309, %311
  br label %cond.end322

cond.false321:                                    ; preds = %if.then303
  %312 = load i32, ptr %have, align 4
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false321, %cond.true317
  %cond323 = phi i32 [ %sub320, %cond.true317 ], [ %312, %cond.false321 ]
  %313 = load ptr, ptr %s.addr, align 8
  %insert324 = getelementptr inbounds %struct.internal_state, ptr %313, i32 0, i32 55
  %314 = load i32, ptr %insert324, align 4
  %add325 = add i32 %314, %cond323
  store i32 %add325, ptr %insert324, align 4
  br label %if.end326

if.end326:                                        ; preds = %cond.end322, %if.end301
  %315 = load ptr, ptr %s.addr, align 8
  %high_water327 = getelementptr inbounds %struct.internal_state, ptr %315, i32 0, i32 59
  %316 = load i64, ptr %high_water327, align 8
  %317 = load ptr, ptr %s.addr, align 8
  %strstart328 = getelementptr inbounds %struct.internal_state, ptr %317, i32 0, i32 27
  %318 = load i32, ptr %strstart328, align 4
  %conv329 = zext i32 %318 to i64
  %cmp330 = icmp ult i64 %316, %conv329
  br i1 %cmp330, label %if.then332, label %if.end336

if.then332:                                       ; preds = %if.end326
  %319 = load ptr, ptr %s.addr, align 8
  %strstart333 = getelementptr inbounds %struct.internal_state, ptr %319, i32 0, i32 27
  %320 = load i32, ptr %strstart333, align 4
  %conv334 = zext i32 %320 to i64
  %321 = load ptr, ptr %s.addr, align 8
  %high_water335 = getelementptr inbounds %struct.internal_state, ptr %321, i32 0, i32 59
  store i64 %conv334, ptr %high_water335, align 8
  br label %if.end336

if.end336:                                        ; preds = %if.then332, %if.end326
  %322 = load ptr, ptr %s.addr, align 8
  %bi_valid337 = getelementptr inbounds %struct.internal_state, ptr %322, i32 0, i32 57
  %323 = load i32, ptr %bi_valid337, align 4
  %add338 = add i32 %323, 42
  %shr339 = lshr i32 %add338, 3
  store i32 %shr339, ptr %have, align 4
  %324 = load ptr, ptr %s.addr, align 8
  %pending_buf_size340 = getelementptr inbounds %struct.internal_state, ptr %324, i32 0, i32 3
  %325 = load i64, ptr %pending_buf_size340, align 8
  %326 = load i32, ptr %have, align 4
  %conv341 = zext i32 %326 to i64
  %sub342 = sub i64 %325, %conv341
  %cmp343 = icmp ugt i64 %sub342, 65535
  br i1 %cmp343, label %cond.true345, label %cond.false346

cond.true345:                                     ; preds = %if.end336
  br label %cond.end350

cond.false346:                                    ; preds = %if.end336
  %327 = load ptr, ptr %s.addr, align 8
  %pending_buf_size347 = getelementptr inbounds %struct.internal_state, ptr %327, i32 0, i32 3
  %328 = load i64, ptr %pending_buf_size347, align 8
  %329 = load i32, ptr %have, align 4
  %conv348 = zext i32 %329 to i64
  %sub349 = sub i64 %328, %conv348
  br label %cond.end350

cond.end350:                                      ; preds = %cond.false346, %cond.true345
  %cond351 = phi i64 [ 65535, %cond.true345 ], [ %sub349, %cond.false346 ]
  %conv352 = trunc i64 %cond351 to i32
  store i32 %conv352, ptr %have, align 4
  %330 = load i32, ptr %have, align 4
  %331 = load ptr, ptr %s.addr, align 8
  %w_size353 = getelementptr inbounds %struct.internal_state, ptr %331, i32 0, i32 11
  %332 = load i32, ptr %w_size353, align 8
  %cmp354 = icmp ugt i32 %330, %332
  br i1 %cmp354, label %cond.true356, label %cond.false358

cond.true356:                                     ; preds = %cond.end350
  %333 = load ptr, ptr %s.addr, align 8
  %w_size357 = getelementptr inbounds %struct.internal_state, ptr %333, i32 0, i32 11
  %334 = load i32, ptr %w_size357, align 8
  br label %cond.end359

cond.false358:                                    ; preds = %cond.end350
  %335 = load i32, ptr %have, align 4
  br label %cond.end359

cond.end359:                                      ; preds = %cond.false358, %cond.true356
  %cond360 = phi i32 [ %334, %cond.true356 ], [ %335, %cond.false358 ]
  store i32 %cond360, ptr %min_block, align 4
  %336 = load ptr, ptr %s.addr, align 8
  %strstart361 = getelementptr inbounds %struct.internal_state, ptr %336, i32 0, i32 27
  %337 = load i32, ptr %strstart361, align 4
  %conv362 = zext i32 %337 to i64
  %338 = load ptr, ptr %s.addr, align 8
  %block_start363 = getelementptr inbounds %struct.internal_state, ptr %338, i32 0, i32 23
  %339 = load i64, ptr %block_start363, align 8
  %sub364 = sub nsw i64 %conv362, %339
  %conv365 = trunc i64 %sub364 to i32
  store i32 %conv365, ptr %left, align 4
  %340 = load i32, ptr %left, align 4
  %341 = load i32, ptr %min_block, align 4
  %cmp366 = icmp uge i32 %340, %341
  br i1 %cmp366, label %if.then384, label %lor.lhs.false368

lor.lhs.false368:                                 ; preds = %cond.end359
  %342 = load i32, ptr %left, align 4
  %tobool369 = icmp ne i32 %342, 0
  br i1 %tobool369, label %land.lhs.true373, label %lor.lhs.false370

lor.lhs.false370:                                 ; preds = %lor.lhs.false368
  %343 = load i32, ptr %flush.addr, align 4
  %cmp371 = icmp eq i32 %343, 4
  br i1 %cmp371, label %land.lhs.true373, label %if.end411

land.lhs.true373:                                 ; preds = %lor.lhs.false370, %lor.lhs.false368
  %344 = load i32, ptr %flush.addr, align 4
  %cmp374 = icmp ne i32 %344, 0
  br i1 %cmp374, label %land.lhs.true376, label %if.end411

land.lhs.true376:                                 ; preds = %land.lhs.true373
  %345 = load ptr, ptr %s.addr, align 8
  %strm377 = getelementptr inbounds %struct.internal_state, ptr %345, i32 0, i32 0
  %346 = load ptr, ptr %strm377, align 8
  %avail_in378 = getelementptr inbounds %struct.z_stream_s, ptr %346, i32 0, i32 1
  %347 = load i32, ptr %avail_in378, align 8
  %cmp379 = icmp eq i32 %347, 0
  br i1 %cmp379, label %land.lhs.true381, label %if.end411

land.lhs.true381:                                 ; preds = %land.lhs.true376
  %348 = load i32, ptr %left, align 4
  %349 = load i32, ptr %have, align 4
  %cmp382 = icmp ule i32 %348, %349
  br i1 %cmp382, label %if.then384, label %if.end411

if.then384:                                       ; preds = %land.lhs.true381, %cond.end359
  %350 = load i32, ptr %left, align 4
  %351 = load i32, ptr %have, align 4
  %cmp385 = icmp ugt i32 %350, %351
  br i1 %cmp385, label %cond.true387, label %cond.false388

cond.true387:                                     ; preds = %if.then384
  %352 = load i32, ptr %have, align 4
  br label %cond.end389

cond.false388:                                    ; preds = %if.then384
  %353 = load i32, ptr %left, align 4
  br label %cond.end389

cond.end389:                                      ; preds = %cond.false388, %cond.true387
  %cond390 = phi i32 [ %352, %cond.true387 ], [ %353, %cond.false388 ]
  store i32 %cond390, ptr %len, align 4
  %354 = load i32, ptr %flush.addr, align 4
  %cmp391 = icmp eq i32 %354, 4
  br i1 %cmp391, label %land.lhs.true393, label %land.end401

land.lhs.true393:                                 ; preds = %cond.end389
  %355 = load ptr, ptr %s.addr, align 8
  %strm394 = getelementptr inbounds %struct.internal_state, ptr %355, i32 0, i32 0
  %356 = load ptr, ptr %strm394, align 8
  %avail_in395 = getelementptr inbounds %struct.z_stream_s, ptr %356, i32 0, i32 1
  %357 = load i32, ptr %avail_in395, align 8
  %cmp396 = icmp eq i32 %357, 0
  br i1 %cmp396, label %land.rhs398, label %land.end401

land.rhs398:                                      ; preds = %land.lhs.true393
  %358 = load i32, ptr %len, align 4
  %359 = load i32, ptr %left, align 4
  %cmp399 = icmp eq i32 %358, %359
  br label %land.end401

land.end401:                                      ; preds = %land.rhs398, %land.lhs.true393, %cond.end389
  %360 = phi i1 [ false, %land.lhs.true393 ], [ false, %cond.end389 ], [ %cmp399, %land.rhs398 ]
  %361 = zext i1 %360 to i64
  %cond402 = select i1 %360, i32 1, i32 0
  store i32 %cond402, ptr %last, align 4
  %362 = load ptr, ptr %s.addr, align 8
  %363 = load ptr, ptr %s.addr, align 8
  %window403 = getelementptr inbounds %struct.internal_state, ptr %363, i32 0, i32 14
  %364 = load ptr, ptr %window403, align 8
  %365 = load ptr, ptr %s.addr, align 8
  %block_start404 = getelementptr inbounds %struct.internal_state, ptr %365, i32 0, i32 23
  %366 = load i64, ptr %block_start404, align 8
  %add.ptr405 = getelementptr inbounds i8, ptr %364, i64 %366
  %367 = load i32, ptr %len, align 4
  %conv406 = zext i32 %367 to i64
  %368 = load i32, ptr %last, align 4
  call void @_tr_stored_block(ptr noundef %362, ptr noundef %add.ptr405, i64 noundef %conv406, i32 noundef %368)
  %369 = load i32, ptr %len, align 4
  %conv407 = zext i32 %369 to i64
  %370 = load ptr, ptr %s.addr, align 8
  %block_start408 = getelementptr inbounds %struct.internal_state, ptr %370, i32 0, i32 23
  %371 = load i64, ptr %block_start408, align 8
  %add409 = add nsw i64 %371, %conv407
  store i64 %add409, ptr %block_start408, align 8
  %372 = load ptr, ptr %s.addr, align 8
  %strm410 = getelementptr inbounds %struct.internal_state, ptr %372, i32 0, i32 0
  %373 = load ptr, ptr %strm410, align 8
  call void @flush_pending(ptr noundef %373)
  br label %if.end411

if.end411:                                        ; preds = %land.end401, %land.lhs.true381, %land.lhs.true376, %land.lhs.true373, %lor.lhs.false370
  %374 = load i32, ptr %last, align 4
  %tobool412 = icmp ne i32 %374, 0
  br i1 %tobool412, label %if.then413, label %if.end415

if.then413:                                       ; preds = %if.end411
  %375 = load ptr, ptr %s.addr, align 8
  %bi_used414 = getelementptr inbounds %struct.internal_state, ptr %375, i32 0, i32 58
  store i32 8, ptr %bi_used414, align 8
  br label %if.end415

if.end415:                                        ; preds = %if.then413, %if.end411
  %376 = load i32, ptr %last, align 4
  %tobool416 = icmp ne i32 %376, 0
  %377 = zext i1 %tobool416 to i64
  %cond417 = select i1 %tobool416, i32 2, i32 0
  store i32 %cond417, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end415, %if.then242, %if.then224
  %378 = load i32, ptr %retval, align 4
  ret i32 %378
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deflate_huff(ptr noundef %s, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %bflush = alloca i32, align 4
  %cc = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end47, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 29
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %3 = load ptr, ptr %s.addr, align 8
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 29
  %4 = load i32, ptr %lookahead1, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.then
  %5 = load i32, ptr %flush.addr, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then3
  br label %for.end

if.end6:                                          ; preds = %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %for.cond
  %6 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %6, i32 0, i32 24
  store i32 0, ptr %match_length, align 8
  %7 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %7, i32 0, i32 14
  %8 = load ptr, ptr %window, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 27
  %10 = load i32, ptr %strstart, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %11 = load i8, ptr %arrayidx, align 1
  store i8 %11, ptr %cc, align 1
  %12 = load ptr, ptr %s.addr, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %12, i32 0, i32 48
  %13 = load ptr, ptr %sym_buf, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 50
  %15 = load i32, ptr %sym_next, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %sym_next, align 4
  %idxprom8 = zext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i64 %idxprom8
  store i8 0, ptr %arrayidx9, align 1
  %16 = load ptr, ptr %s.addr, align 8
  %sym_buf10 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 48
  %17 = load ptr, ptr %sym_buf10, align 8
  %18 = load ptr, ptr %s.addr, align 8
  %sym_next11 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 50
  %19 = load i32, ptr %sym_next11, align 4
  %inc12 = add i32 %19, 1
  store i32 %inc12, ptr %sym_next11, align 4
  %idxprom13 = zext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %17, i64 %idxprom13
  store i8 0, ptr %arrayidx14, align 1
  %20 = load i8, ptr %cc, align 1
  %21 = load ptr, ptr %s.addr, align 8
  %sym_buf15 = getelementptr inbounds %struct.internal_state, ptr %21, i32 0, i32 48
  %22 = load ptr, ptr %sym_buf15, align 8
  %23 = load ptr, ptr %s.addr, align 8
  %sym_next16 = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 50
  %24 = load i32, ptr %sym_next16, align 4
  %inc17 = add i32 %24, 1
  store i32 %inc17, ptr %sym_next16, align 4
  %idxprom18 = zext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %22, i64 %idxprom18
  store i8 %20, ptr %arrayidx19, align 1
  %25 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %25, i32 0, i32 37
  %26 = load i8, ptr %cc, align 1
  %idxprom20 = zext i8 %26 to i64
  %arrayidx21 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom20
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx21, i32 0, i32 0
  %27 = load i16, ptr %fc, align 4
  %inc22 = add i16 %27, 1
  store i16 %inc22, ptr %fc, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %sym_next23 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 50
  %29 = load i32, ptr %sym_next23, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 51
  %31 = load i32, ptr %sym_end, align 8
  %cmp24 = icmp eq i32 %29, %31
  %conv = zext i1 %cmp24 to i32
  store i32 %conv, ptr %bflush, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %lookahead25 = getelementptr inbounds %struct.internal_state, ptr %32, i32 0, i32 29
  %33 = load i32, ptr %lookahead25, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %lookahead25, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %strstart26 = getelementptr inbounds %struct.internal_state, ptr %34, i32 0, i32 27
  %35 = load i32, ptr %strstart26, align 4
  %inc27 = add i32 %35, 1
  store i32 %inc27, ptr %strstart26, align 4
  %36 = load i32, ptr %bflush, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then28, label %if.end47

if.then28:                                        ; preds = %if.end7
  %37 = load ptr, ptr %s.addr, align 8
  %38 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %38, i32 0, i32 23
  %39 = load i64, ptr %block_start, align 8
  %cmp29 = icmp sge i64 %39, 0
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then28
  %40 = load ptr, ptr %s.addr, align 8
  %window31 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 14
  %41 = load ptr, ptr %window31, align 8
  %42 = load ptr, ptr %s.addr, align 8
  %block_start32 = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 23
  %43 = load i64, ptr %block_start32, align 8
  %conv33 = trunc i64 %43 to i32
  %idxprom34 = zext i32 %conv33 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %41, i64 %idxprom34
  br label %cond.end

cond.false:                                       ; preds = %if.then28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx35, %cond.true ], [ null, %cond.false ]
  %44 = load ptr, ptr %s.addr, align 8
  %strstart36 = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 27
  %45 = load i32, ptr %strstart36, align 4
  %conv37 = zext i32 %45 to i64
  %46 = load ptr, ptr %s.addr, align 8
  %block_start38 = getelementptr inbounds %struct.internal_state, ptr %46, i32 0, i32 23
  %47 = load i64, ptr %block_start38, align 8
  %sub = sub nsw i64 %conv37, %47
  call void @_tr_flush_block(ptr noundef %37, ptr noundef %cond, i64 noundef %sub, i32 noundef 0)
  %48 = load ptr, ptr %s.addr, align 8
  %strstart39 = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 27
  %49 = load i32, ptr %strstart39, align 4
  %conv40 = zext i32 %49 to i64
  %50 = load ptr, ptr %s.addr, align 8
  %block_start41 = getelementptr inbounds %struct.internal_state, ptr %50, i32 0, i32 23
  store i64 %conv40, ptr %block_start41, align 8
  %51 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %strm, align 8
  call void @flush_pending(ptr noundef %52)
  %53 = load ptr, ptr %s.addr, align 8
  %strm42 = getelementptr inbounds %struct.internal_state, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %strm42, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %54, i32 0, i32 4
  %55 = load i32, ptr %avail_out, align 8
  %cmp43 = icmp eq i32 %55, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %cond.end
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end7
  br label %for.cond

for.end:                                          ; preds = %if.end
  %56 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 55
  store i32 0, ptr %insert, align 4
  %57 = load i32, ptr %flush.addr, align 4
  %cmp48 = icmp eq i32 %57, 4
  br i1 %cmp48, label %if.then50, label %if.end77

if.then50:                                        ; preds = %for.end
  %58 = load ptr, ptr %s.addr, align 8
  %59 = load ptr, ptr %s.addr, align 8
  %block_start51 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 23
  %60 = load i64, ptr %block_start51, align 8
  %cmp52 = icmp sge i64 %60, 0
  br i1 %cmp52, label %cond.true54, label %cond.false60

cond.true54:                                      ; preds = %if.then50
  %61 = load ptr, ptr %s.addr, align 8
  %window55 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 14
  %62 = load ptr, ptr %window55, align 8
  %63 = load ptr, ptr %s.addr, align 8
  %block_start56 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 23
  %64 = load i64, ptr %block_start56, align 8
  %conv57 = trunc i64 %64 to i32
  %idxprom58 = zext i32 %conv57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %62, i64 %idxprom58
  br label %cond.end61

cond.false60:                                     ; preds = %if.then50
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.true54
  %cond62 = phi ptr [ %arrayidx59, %cond.true54 ], [ null, %cond.false60 ]
  %65 = load ptr, ptr %s.addr, align 8
  %strstart63 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 27
  %66 = load i32, ptr %strstart63, align 4
  %conv64 = zext i32 %66 to i64
  %67 = load ptr, ptr %s.addr, align 8
  %block_start65 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 23
  %68 = load i64, ptr %block_start65, align 8
  %sub66 = sub nsw i64 %conv64, %68
  call void @_tr_flush_block(ptr noundef %58, ptr noundef %cond62, i64 noundef %sub66, i32 noundef 1)
  %69 = load ptr, ptr %s.addr, align 8
  %strstart67 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 27
  %70 = load i32, ptr %strstart67, align 4
  %conv68 = zext i32 %70 to i64
  %71 = load ptr, ptr %s.addr, align 8
  %block_start69 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 23
  store i64 %conv68, ptr %block_start69, align 8
  %72 = load ptr, ptr %s.addr, align 8
  %strm70 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %strm70, align 8
  call void @flush_pending(ptr noundef %73)
  %74 = load ptr, ptr %s.addr, align 8
  %strm71 = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %strm71, align 8
  %avail_out72 = getelementptr inbounds %struct.z_stream_s, ptr %75, i32 0, i32 4
  %76 = load i32, ptr %avail_out72, align 8
  %cmp73 = icmp eq i32 %76, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %cond.end61
  store i32 2, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %cond.end61
  store i32 3, ptr %retval, align 4
  br label %return

if.end77:                                         ; preds = %for.end
  %77 = load ptr, ptr %s.addr, align 8
  %sym_next78 = getelementptr inbounds %struct.internal_state, ptr %77, i32 0, i32 50
  %78 = load i32, ptr %sym_next78, align 4
  %tobool79 = icmp ne i32 %78, 0
  br i1 %tobool79, label %if.then80, label %if.end107

if.then80:                                        ; preds = %if.end77
  %79 = load ptr, ptr %s.addr, align 8
  %80 = load ptr, ptr %s.addr, align 8
  %block_start81 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 23
  %81 = load i64, ptr %block_start81, align 8
  %cmp82 = icmp sge i64 %81, 0
  br i1 %cmp82, label %cond.true84, label %cond.false90

cond.true84:                                      ; preds = %if.then80
  %82 = load ptr, ptr %s.addr, align 8
  %window85 = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 14
  %83 = load ptr, ptr %window85, align 8
  %84 = load ptr, ptr %s.addr, align 8
  %block_start86 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 23
  %85 = load i64, ptr %block_start86, align 8
  %conv87 = trunc i64 %85 to i32
  %idxprom88 = zext i32 %conv87 to i64
  %arrayidx89 = getelementptr inbounds i8, ptr %83, i64 %idxprom88
  br label %cond.end91

cond.false90:                                     ; preds = %if.then80
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false90, %cond.true84
  %cond92 = phi ptr [ %arrayidx89, %cond.true84 ], [ null, %cond.false90 ]
  %86 = load ptr, ptr %s.addr, align 8
  %strstart93 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 27
  %87 = load i32, ptr %strstart93, align 4
  %conv94 = zext i32 %87 to i64
  %88 = load ptr, ptr %s.addr, align 8
  %block_start95 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 23
  %89 = load i64, ptr %block_start95, align 8
  %sub96 = sub nsw i64 %conv94, %89
  call void @_tr_flush_block(ptr noundef %79, ptr noundef %cond92, i64 noundef %sub96, i32 noundef 0)
  %90 = load ptr, ptr %s.addr, align 8
  %strstart97 = getelementptr inbounds %struct.internal_state, ptr %90, i32 0, i32 27
  %91 = load i32, ptr %strstart97, align 4
  %conv98 = zext i32 %91 to i64
  %92 = load ptr, ptr %s.addr, align 8
  %block_start99 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 23
  store i64 %conv98, ptr %block_start99, align 8
  %93 = load ptr, ptr %s.addr, align 8
  %strm100 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %strm100, align 8
  call void @flush_pending(ptr noundef %94)
  %95 = load ptr, ptr %s.addr, align 8
  %strm101 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %strm101, align 8
  %avail_out102 = getelementptr inbounds %struct.z_stream_s, ptr %96, i32 0, i32 4
  %97 = load i32, ptr %avail_out102, align 8
  %cmp103 = icmp eq i32 %97, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %cond.end91
  store i32 0, ptr %retval, align 4
  br label %return

if.end106:                                        ; preds = %cond.end91
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end77
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end107, %if.then105, %if.end76, %if.then75, %if.then45, %if.then5
  %98 = load i32, ptr %retval, align 4
  ret i32 %98
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deflate_rle(ptr noundef %s, i32 noundef %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %bflush = alloca i32, align 4
  %prev = alloca i32, align 4
  %scan = alloca ptr, align 8
  %strend = alloca ptr, align 8
  %len = alloca i8, align 1
  %dist = alloca i16, align 2
  %cc = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end199, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i32 0, i32 29
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ule i32 %1, 258
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %3 = load ptr, ptr %s.addr, align 8
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %3, i32 0, i32 29
  %4 = load i32, ptr %lookahead1, align 4
  %cmp2 = icmp ule i32 %4, 258
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
  %match_length = getelementptr inbounds %struct.internal_state, ptr %8, i32 0, i32 24
  store i32 0, ptr %match_length, align 8
  %9 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %9, i32 0, i32 29
  %10 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp uge i32 %10, 3
  br i1 %cmp11, label %land.lhs.true12, label %if.end88

land.lhs.true12:                                  ; preds = %if.end9
  %11 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %11, i32 0, i32 27
  %12 = load i32, ptr %strstart, align 4
  %cmp13 = icmp ugt i32 %12, 0
  br i1 %cmp13, label %if.then14, label %if.end88

if.then14:                                        ; preds = %land.lhs.true12
  %13 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %13, i32 0, i32 14
  %14 = load ptr, ptr %window, align 8
  %15 = load ptr, ptr %s.addr, align 8
  %strstart15 = getelementptr inbounds %struct.internal_state, ptr %15, i32 0, i32 27
  %16 = load i32, ptr %strstart15, align 4
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr16, ptr %scan, align 8
  %17 = load ptr, ptr %scan, align 8
  %18 = load i8, ptr %17, align 1
  %conv = zext i8 %18 to i32
  store i32 %conv, ptr %prev, align 4
  %19 = load i32, ptr %prev, align 4
  %20 = load ptr, ptr %scan, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %scan, align 8
  %21 = load i8, ptr %incdec.ptr, align 1
  %conv17 = zext i8 %21 to i32
  %cmp18 = icmp eq i32 %19, %conv17
  br i1 %cmp18, label %land.lhs.true20, label %if.end87

land.lhs.true20:                                  ; preds = %if.then14
  %22 = load i32, ptr %prev, align 4
  %23 = load ptr, ptr %scan, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr21, ptr %scan, align 8
  %24 = load i8, ptr %incdec.ptr21, align 1
  %conv22 = zext i8 %24 to i32
  %cmp23 = icmp eq i32 %22, %conv22
  br i1 %cmp23, label %land.lhs.true25, label %if.end87

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %25 = load i32, ptr %prev, align 4
  %26 = load ptr, ptr %scan, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr26, ptr %scan, align 8
  %27 = load i8, ptr %incdec.ptr26, align 1
  %conv27 = zext i8 %27 to i32
  %cmp28 = icmp eq i32 %25, %conv27
  br i1 %cmp28, label %if.then30, label %if.end87

if.then30:                                        ; preds = %land.lhs.true25
  %28 = load ptr, ptr %s.addr, align 8
  %window31 = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 14
  %29 = load ptr, ptr %window31, align 8
  %30 = load ptr, ptr %s.addr, align 8
  %strstart32 = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 27
  %31 = load i32, ptr %strstart32, align 4
  %idx.ext33 = zext i32 %31 to i64
  %add.ptr34 = getelementptr inbounds i8, ptr %29, i64 %idx.ext33
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr34, i64 258
  store ptr %add.ptr35, ptr %strend, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then30
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %32 = load i32, ptr %prev, align 4
  %33 = load ptr, ptr %scan, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr36, ptr %scan, align 8
  %34 = load i8, ptr %incdec.ptr36, align 1
  %conv37 = zext i8 %34 to i32
  %cmp38 = icmp eq i32 %32, %conv37
  br i1 %cmp38, label %land.lhs.true40, label %land.end

land.lhs.true40:                                  ; preds = %do.cond
  %35 = load i32, ptr %prev, align 4
  %36 = load ptr, ptr %scan, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr41, ptr %scan, align 8
  %37 = load i8, ptr %incdec.ptr41, align 1
  %conv42 = zext i8 %37 to i32
  %cmp43 = icmp eq i32 %35, %conv42
  br i1 %cmp43, label %land.lhs.true45, label %land.end

land.lhs.true45:                                  ; preds = %land.lhs.true40
  %38 = load i32, ptr %prev, align 4
  %39 = load ptr, ptr %scan, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr46, ptr %scan, align 8
  %40 = load i8, ptr %incdec.ptr46, align 1
  %conv47 = zext i8 %40 to i32
  %cmp48 = icmp eq i32 %38, %conv47
  br i1 %cmp48, label %land.lhs.true50, label %land.end

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %41 = load i32, ptr %prev, align 4
  %42 = load ptr, ptr %scan, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr51, ptr %scan, align 8
  %43 = load i8, ptr %incdec.ptr51, align 1
  %conv52 = zext i8 %43 to i32
  %cmp53 = icmp eq i32 %41, %conv52
  br i1 %cmp53, label %land.lhs.true55, label %land.end

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %44 = load i32, ptr %prev, align 4
  %45 = load ptr, ptr %scan, align 8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr56, ptr %scan, align 8
  %46 = load i8, ptr %incdec.ptr56, align 1
  %conv57 = zext i8 %46 to i32
  %cmp58 = icmp eq i32 %44, %conv57
  br i1 %cmp58, label %land.lhs.true60, label %land.end

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %47 = load i32, ptr %prev, align 4
  %48 = load ptr, ptr %scan, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr61, ptr %scan, align 8
  %49 = load i8, ptr %incdec.ptr61, align 1
  %conv62 = zext i8 %49 to i32
  %cmp63 = icmp eq i32 %47, %conv62
  br i1 %cmp63, label %land.lhs.true65, label %land.end

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %50 = load i32, ptr %prev, align 4
  %51 = load ptr, ptr %scan, align 8
  %incdec.ptr66 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr66, ptr %scan, align 8
  %52 = load i8, ptr %incdec.ptr66, align 1
  %conv67 = zext i8 %52 to i32
  %cmp68 = icmp eq i32 %50, %conv67
  br i1 %cmp68, label %land.lhs.true70, label %land.end

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %53 = load i32, ptr %prev, align 4
  %54 = load ptr, ptr %scan, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %incdec.ptr71, ptr %scan, align 8
  %55 = load i8, ptr %incdec.ptr71, align 1
  %conv72 = zext i8 %55 to i32
  %cmp73 = icmp eq i32 %53, %conv72
  br i1 %cmp73, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true70
  %56 = load ptr, ptr %scan, align 8
  %57 = load ptr, ptr %strend, align 8
  %cmp75 = icmp ult ptr %56, %57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true70, %land.lhs.true65, %land.lhs.true60, %land.lhs.true55, %land.lhs.true50, %land.lhs.true45, %land.lhs.true40, %do.cond
  %58 = phi i1 [ false, %land.lhs.true70 ], [ false, %land.lhs.true65 ], [ false, %land.lhs.true60 ], [ false, %land.lhs.true55 ], [ false, %land.lhs.true50 ], [ false, %land.lhs.true45 ], [ false, %land.lhs.true40 ], [ false, %do.cond ], [ %cmp75, %land.rhs ]
  br i1 %58, label %do.body, label %do.end, !llvm.loop !20

do.end:                                           ; preds = %land.end
  %59 = load ptr, ptr %strend, align 8
  %60 = load ptr, ptr %scan, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %59 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %60 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv77 = trunc i64 %sub.ptr.sub to i32
  %sub = sub i32 258, %conv77
  %61 = load ptr, ptr %s.addr, align 8
  %match_length78 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 24
  store i32 %sub, ptr %match_length78, align 8
  %62 = load ptr, ptr %s.addr, align 8
  %match_length79 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 24
  %63 = load i32, ptr %match_length79, align 8
  %64 = load ptr, ptr %s.addr, align 8
  %lookahead80 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 29
  %65 = load i32, ptr %lookahead80, align 4
  %cmp81 = icmp ugt i32 %63, %65
  br i1 %cmp81, label %if.then83, label %if.end86

if.then83:                                        ; preds = %do.end
  %66 = load ptr, ptr %s.addr, align 8
  %lookahead84 = getelementptr inbounds %struct.internal_state, ptr %66, i32 0, i32 29
  %67 = load i32, ptr %lookahead84, align 4
  %68 = load ptr, ptr %s.addr, align 8
  %match_length85 = getelementptr inbounds %struct.internal_state, ptr %68, i32 0, i32 24
  store i32 %67, ptr %match_length85, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %do.end
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %land.lhs.true25, %land.lhs.true20, %if.then14
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %land.lhs.true12, %if.end9
  %69 = load ptr, ptr %s.addr, align 8
  %match_length89 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 24
  %70 = load i32, ptr %match_length89, align 8
  %cmp90 = icmp uge i32 %70, 3
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.end88
  %71 = load ptr, ptr %s.addr, align 8
  %match_length93 = getelementptr inbounds %struct.internal_state, ptr %71, i32 0, i32 24
  %72 = load i32, ptr %match_length93, align 8
  %sub94 = sub i32 %72, 3
  %conv95 = trunc i32 %sub94 to i8
  store i8 %conv95, ptr %len, align 1
  store i16 1, ptr %dist, align 2
  %73 = load i16, ptr %dist, align 2
  %conv96 = trunc i16 %73 to i8
  %74 = load ptr, ptr %s.addr, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 48
  %75 = load ptr, ptr %sym_buf, align 8
  %76 = load ptr, ptr %s.addr, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 50
  %77 = load i32, ptr %sym_next, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %sym_next, align 4
  %idxprom = zext i32 %77 to i64
  %arrayidx = getelementptr inbounds i8, ptr %75, i64 %idxprom
  store i8 %conv96, ptr %arrayidx, align 1
  %78 = load i16, ptr %dist, align 2
  %conv97 = zext i16 %78 to i32
  %shr = ashr i32 %conv97, 8
  %conv98 = trunc i32 %shr to i8
  %79 = load ptr, ptr %s.addr, align 8
  %sym_buf99 = getelementptr inbounds %struct.internal_state, ptr %79, i32 0, i32 48
  %80 = load ptr, ptr %sym_buf99, align 8
  %81 = load ptr, ptr %s.addr, align 8
  %sym_next100 = getelementptr inbounds %struct.internal_state, ptr %81, i32 0, i32 50
  %82 = load i32, ptr %sym_next100, align 4
  %inc101 = add i32 %82, 1
  store i32 %inc101, ptr %sym_next100, align 4
  %idxprom102 = zext i32 %82 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %80, i64 %idxprom102
  store i8 %conv98, ptr %arrayidx103, align 1
  %83 = load i8, ptr %len, align 1
  %84 = load ptr, ptr %s.addr, align 8
  %sym_buf104 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 48
  %85 = load ptr, ptr %sym_buf104, align 8
  %86 = load ptr, ptr %s.addr, align 8
  %sym_next105 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 50
  %87 = load i32, ptr %sym_next105, align 4
  %inc106 = add i32 %87, 1
  store i32 %inc106, ptr %sym_next105, align 4
  %idxprom107 = zext i32 %87 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %85, i64 %idxprom107
  store i8 %83, ptr %arrayidx108, align 1
  %88 = load i16, ptr %dist, align 2
  %dec = add i16 %88, -1
  store i16 %dec, ptr %dist, align 2
  %89 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %89, i32 0, i32 37
  %90 = load i8, ptr %len, align 1
  %idxprom109 = zext i8 %90 to i64
  %arrayidx110 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom109
  %91 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %91 to i32
  %add = add nsw i32 %conv111, 256
  %add112 = add nsw i32 %add, 1
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom113
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx114, i32 0, i32 0
  %92 = load i16, ptr %fc, align 4
  %inc115 = add i16 %92, 1
  store i16 %inc115, ptr %fc, align 4
  %93 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 38
  %94 = load i16, ptr %dist, align 2
  %conv116 = zext i16 %94 to i32
  %cmp117 = icmp slt i32 %conv116, 256
  br i1 %cmp117, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then92
  %95 = load i16, ptr %dist, align 2
  %idxprom119 = zext i16 %95 to i64
  %arrayidx120 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom119
  %96 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %96 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then92
  %97 = load i16, ptr %dist, align 2
  %conv122 = zext i16 %97 to i32
  %shr123 = ashr i32 %conv122, 7
  %add124 = add nsw i32 256, %shr123
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom125
  %98 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %98 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv121, %cond.true ], [ %conv127, %cond.false ]
  %idxprom128 = sext i32 %cond to i64
  %arrayidx129 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom128
  %fc130 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx129, i32 0, i32 0
  %99 = load i16, ptr %fc130, align 4
  %inc131 = add i16 %99, 1
  store i16 %inc131, ptr %fc130, align 4
  %100 = load ptr, ptr %s.addr, align 8
  %sym_next132 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 50
  %101 = load i32, ptr %sym_next132, align 4
  %102 = load ptr, ptr %s.addr, align 8
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 51
  %103 = load i32, ptr %sym_end, align 8
  %cmp133 = icmp eq i32 %101, %103
  %conv134 = zext i1 %cmp133 to i32
  store i32 %conv134, ptr %bflush, align 4
  %104 = load ptr, ptr %s.addr, align 8
  %match_length135 = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 24
  %105 = load i32, ptr %match_length135, align 8
  %106 = load ptr, ptr %s.addr, align 8
  %lookahead136 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 29
  %107 = load i32, ptr %lookahead136, align 4
  %sub137 = sub i32 %107, %105
  store i32 %sub137, ptr %lookahead136, align 4
  %108 = load ptr, ptr %s.addr, align 8
  %match_length138 = getelementptr inbounds %struct.internal_state, ptr %108, i32 0, i32 24
  %109 = load i32, ptr %match_length138, align 8
  %110 = load ptr, ptr %s.addr, align 8
  %strstart139 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 27
  %111 = load i32, ptr %strstart139, align 4
  %add140 = add i32 %111, %109
  store i32 %add140, ptr %strstart139, align 4
  %112 = load ptr, ptr %s.addr, align 8
  %match_length141 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 24
  store i32 0, ptr %match_length141, align 8
  br label %if.end174

if.else:                                          ; preds = %if.end88
  %113 = load ptr, ptr %s.addr, align 8
  %window142 = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 14
  %114 = load ptr, ptr %window142, align 8
  %115 = load ptr, ptr %s.addr, align 8
  %strstart143 = getelementptr inbounds %struct.internal_state, ptr %115, i32 0, i32 27
  %116 = load i32, ptr %strstart143, align 4
  %idxprom144 = zext i32 %116 to i64
  %arrayidx145 = getelementptr inbounds i8, ptr %114, i64 %idxprom144
  %117 = load i8, ptr %arrayidx145, align 1
  store i8 %117, ptr %cc, align 1
  %118 = load ptr, ptr %s.addr, align 8
  %sym_buf146 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 48
  %119 = load ptr, ptr %sym_buf146, align 8
  %120 = load ptr, ptr %s.addr, align 8
  %sym_next147 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 50
  %121 = load i32, ptr %sym_next147, align 4
  %inc148 = add i32 %121, 1
  store i32 %inc148, ptr %sym_next147, align 4
  %idxprom149 = zext i32 %121 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %119, i64 %idxprom149
  store i8 0, ptr %arrayidx150, align 1
  %122 = load ptr, ptr %s.addr, align 8
  %sym_buf151 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 48
  %123 = load ptr, ptr %sym_buf151, align 8
  %124 = load ptr, ptr %s.addr, align 8
  %sym_next152 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 50
  %125 = load i32, ptr %sym_next152, align 4
  %inc153 = add i32 %125, 1
  store i32 %inc153, ptr %sym_next152, align 4
  %idxprom154 = zext i32 %125 to i64
  %arrayidx155 = getelementptr inbounds i8, ptr %123, i64 %idxprom154
  store i8 0, ptr %arrayidx155, align 1
  %126 = load i8, ptr %cc, align 1
  %127 = load ptr, ptr %s.addr, align 8
  %sym_buf156 = getelementptr inbounds %struct.internal_state, ptr %127, i32 0, i32 48
  %128 = load ptr, ptr %sym_buf156, align 8
  %129 = load ptr, ptr %s.addr, align 8
  %sym_next157 = getelementptr inbounds %struct.internal_state, ptr %129, i32 0, i32 50
  %130 = load i32, ptr %sym_next157, align 4
  %inc158 = add i32 %130, 1
  store i32 %inc158, ptr %sym_next157, align 4
  %idxprom159 = zext i32 %130 to i64
  %arrayidx160 = getelementptr inbounds i8, ptr %128, i64 %idxprom159
  store i8 %126, ptr %arrayidx160, align 1
  %131 = load ptr, ptr %s.addr, align 8
  %dyn_ltree161 = getelementptr inbounds %struct.internal_state, ptr %131, i32 0, i32 37
  %132 = load i8, ptr %cc, align 1
  %idxprom162 = zext i8 %132 to i64
  %arrayidx163 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree161, i64 0, i64 %idxprom162
  %fc164 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx163, i32 0, i32 0
  %133 = load i16, ptr %fc164, align 4
  %inc165 = add i16 %133, 1
  store i16 %inc165, ptr %fc164, align 4
  %134 = load ptr, ptr %s.addr, align 8
  %sym_next166 = getelementptr inbounds %struct.internal_state, ptr %134, i32 0, i32 50
  %135 = load i32, ptr %sym_next166, align 4
  %136 = load ptr, ptr %s.addr, align 8
  %sym_end167 = getelementptr inbounds %struct.internal_state, ptr %136, i32 0, i32 51
  %137 = load i32, ptr %sym_end167, align 8
  %cmp168 = icmp eq i32 %135, %137
  %conv169 = zext i1 %cmp168 to i32
  store i32 %conv169, ptr %bflush, align 4
  %138 = load ptr, ptr %s.addr, align 8
  %lookahead170 = getelementptr inbounds %struct.internal_state, ptr %138, i32 0, i32 29
  %139 = load i32, ptr %lookahead170, align 4
  %dec171 = add i32 %139, -1
  store i32 %dec171, ptr %lookahead170, align 4
  %140 = load ptr, ptr %s.addr, align 8
  %strstart172 = getelementptr inbounds %struct.internal_state, ptr %140, i32 0, i32 27
  %141 = load i32, ptr %strstart172, align 4
  %inc173 = add i32 %141, 1
  store i32 %inc173, ptr %strstart172, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.else, %cond.end
  %142 = load i32, ptr %bflush, align 4
  %tobool = icmp ne i32 %142, 0
  br i1 %tobool, label %if.then175, label %if.end199

if.then175:                                       ; preds = %if.end174
  %143 = load ptr, ptr %s.addr, align 8
  %144 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %144, i32 0, i32 23
  %145 = load i64, ptr %block_start, align 8
  %cmp176 = icmp sge i64 %145, 0
  br i1 %cmp176, label %cond.true178, label %cond.false184

cond.true178:                                     ; preds = %if.then175
  %146 = load ptr, ptr %s.addr, align 8
  %window179 = getelementptr inbounds %struct.internal_state, ptr %146, i32 0, i32 14
  %147 = load ptr, ptr %window179, align 8
  %148 = load ptr, ptr %s.addr, align 8
  %block_start180 = getelementptr inbounds %struct.internal_state, ptr %148, i32 0, i32 23
  %149 = load i64, ptr %block_start180, align 8
  %conv181 = trunc i64 %149 to i32
  %idxprom182 = zext i32 %conv181 to i64
  %arrayidx183 = getelementptr inbounds i8, ptr %147, i64 %idxprom182
  br label %cond.end185

cond.false184:                                    ; preds = %if.then175
  br label %cond.end185

cond.end185:                                      ; preds = %cond.false184, %cond.true178
  %cond186 = phi ptr [ %arrayidx183, %cond.true178 ], [ null, %cond.false184 ]
  %150 = load ptr, ptr %s.addr, align 8
  %strstart187 = getelementptr inbounds %struct.internal_state, ptr %150, i32 0, i32 27
  %151 = load i32, ptr %strstart187, align 4
  %conv188 = zext i32 %151 to i64
  %152 = load ptr, ptr %s.addr, align 8
  %block_start189 = getelementptr inbounds %struct.internal_state, ptr %152, i32 0, i32 23
  %153 = load i64, ptr %block_start189, align 8
  %sub190 = sub nsw i64 %conv188, %153
  call void @_tr_flush_block(ptr noundef %143, ptr noundef %cond186, i64 noundef %sub190, i32 noundef 0)
  %154 = load ptr, ptr %s.addr, align 8
  %strstart191 = getelementptr inbounds %struct.internal_state, ptr %154, i32 0, i32 27
  %155 = load i32, ptr %strstart191, align 4
  %conv192 = zext i32 %155 to i64
  %156 = load ptr, ptr %s.addr, align 8
  %block_start193 = getelementptr inbounds %struct.internal_state, ptr %156, i32 0, i32 23
  store i64 %conv192, ptr %block_start193, align 8
  %157 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %157, i32 0, i32 0
  %158 = load ptr, ptr %strm, align 8
  call void @flush_pending(ptr noundef %158)
  %159 = load ptr, ptr %s.addr, align 8
  %strm194 = getelementptr inbounds %struct.internal_state, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %strm194, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %160, i32 0, i32 4
  %161 = load i32, ptr %avail_out, align 8
  %cmp195 = icmp eq i32 %161, 0
  br i1 %cmp195, label %if.then197, label %if.end198

if.then197:                                       ; preds = %cond.end185
  store i32 0, ptr %retval, align 4
  br label %return

if.end198:                                        ; preds = %cond.end185
  br label %if.end199

if.end199:                                        ; preds = %if.end198, %if.end174
  br label %for.cond

for.end:                                          ; preds = %if.then7
  %162 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %162, i32 0, i32 55
  store i32 0, ptr %insert, align 4
  %163 = load i32, ptr %flush.addr, align 4
  %cmp200 = icmp eq i32 %163, 4
  br i1 %cmp200, label %if.then202, label %if.end229

if.then202:                                       ; preds = %for.end
  %164 = load ptr, ptr %s.addr, align 8
  %165 = load ptr, ptr %s.addr, align 8
  %block_start203 = getelementptr inbounds %struct.internal_state, ptr %165, i32 0, i32 23
  %166 = load i64, ptr %block_start203, align 8
  %cmp204 = icmp sge i64 %166, 0
  br i1 %cmp204, label %cond.true206, label %cond.false212

cond.true206:                                     ; preds = %if.then202
  %167 = load ptr, ptr %s.addr, align 8
  %window207 = getelementptr inbounds %struct.internal_state, ptr %167, i32 0, i32 14
  %168 = load ptr, ptr %window207, align 8
  %169 = load ptr, ptr %s.addr, align 8
  %block_start208 = getelementptr inbounds %struct.internal_state, ptr %169, i32 0, i32 23
  %170 = load i64, ptr %block_start208, align 8
  %conv209 = trunc i64 %170 to i32
  %idxprom210 = zext i32 %conv209 to i64
  %arrayidx211 = getelementptr inbounds i8, ptr %168, i64 %idxprom210
  br label %cond.end213

cond.false212:                                    ; preds = %if.then202
  br label %cond.end213

cond.end213:                                      ; preds = %cond.false212, %cond.true206
  %cond214 = phi ptr [ %arrayidx211, %cond.true206 ], [ null, %cond.false212 ]
  %171 = load ptr, ptr %s.addr, align 8
  %strstart215 = getelementptr inbounds %struct.internal_state, ptr %171, i32 0, i32 27
  %172 = load i32, ptr %strstart215, align 4
  %conv216 = zext i32 %172 to i64
  %173 = load ptr, ptr %s.addr, align 8
  %block_start217 = getelementptr inbounds %struct.internal_state, ptr %173, i32 0, i32 23
  %174 = load i64, ptr %block_start217, align 8
  %sub218 = sub nsw i64 %conv216, %174
  call void @_tr_flush_block(ptr noundef %164, ptr noundef %cond214, i64 noundef %sub218, i32 noundef 1)
  %175 = load ptr, ptr %s.addr, align 8
  %strstart219 = getelementptr inbounds %struct.internal_state, ptr %175, i32 0, i32 27
  %176 = load i32, ptr %strstart219, align 4
  %conv220 = zext i32 %176 to i64
  %177 = load ptr, ptr %s.addr, align 8
  %block_start221 = getelementptr inbounds %struct.internal_state, ptr %177, i32 0, i32 23
  store i64 %conv220, ptr %block_start221, align 8
  %178 = load ptr, ptr %s.addr, align 8
  %strm222 = getelementptr inbounds %struct.internal_state, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %strm222, align 8
  call void @flush_pending(ptr noundef %179)
  %180 = load ptr, ptr %s.addr, align 8
  %strm223 = getelementptr inbounds %struct.internal_state, ptr %180, i32 0, i32 0
  %181 = load ptr, ptr %strm223, align 8
  %avail_out224 = getelementptr inbounds %struct.z_stream_s, ptr %181, i32 0, i32 4
  %182 = load i32, ptr %avail_out224, align 8
  %cmp225 = icmp eq i32 %182, 0
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %cond.end213
  store i32 2, ptr %retval, align 4
  br label %return

if.end228:                                        ; preds = %cond.end213
  store i32 3, ptr %retval, align 4
  br label %return

if.end229:                                        ; preds = %for.end
  %183 = load ptr, ptr %s.addr, align 8
  %sym_next230 = getelementptr inbounds %struct.internal_state, ptr %183, i32 0, i32 50
  %184 = load i32, ptr %sym_next230, align 4
  %tobool231 = icmp ne i32 %184, 0
  br i1 %tobool231, label %if.then232, label %if.end259

if.then232:                                       ; preds = %if.end229
  %185 = load ptr, ptr %s.addr, align 8
  %186 = load ptr, ptr %s.addr, align 8
  %block_start233 = getelementptr inbounds %struct.internal_state, ptr %186, i32 0, i32 23
  %187 = load i64, ptr %block_start233, align 8
  %cmp234 = icmp sge i64 %187, 0
  br i1 %cmp234, label %cond.true236, label %cond.false242

cond.true236:                                     ; preds = %if.then232
  %188 = load ptr, ptr %s.addr, align 8
  %window237 = getelementptr inbounds %struct.internal_state, ptr %188, i32 0, i32 14
  %189 = load ptr, ptr %window237, align 8
  %190 = load ptr, ptr %s.addr, align 8
  %block_start238 = getelementptr inbounds %struct.internal_state, ptr %190, i32 0, i32 23
  %191 = load i64, ptr %block_start238, align 8
  %conv239 = trunc i64 %191 to i32
  %idxprom240 = zext i32 %conv239 to i64
  %arrayidx241 = getelementptr inbounds i8, ptr %189, i64 %idxprom240
  br label %cond.end243

cond.false242:                                    ; preds = %if.then232
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false242, %cond.true236
  %cond244 = phi ptr [ %arrayidx241, %cond.true236 ], [ null, %cond.false242 ]
  %192 = load ptr, ptr %s.addr, align 8
  %strstart245 = getelementptr inbounds %struct.internal_state, ptr %192, i32 0, i32 27
  %193 = load i32, ptr %strstart245, align 4
  %conv246 = zext i32 %193 to i64
  %194 = load ptr, ptr %s.addr, align 8
  %block_start247 = getelementptr inbounds %struct.internal_state, ptr %194, i32 0, i32 23
  %195 = load i64, ptr %block_start247, align 8
  %sub248 = sub nsw i64 %conv246, %195
  call void @_tr_flush_block(ptr noundef %185, ptr noundef %cond244, i64 noundef %sub248, i32 noundef 0)
  %196 = load ptr, ptr %s.addr, align 8
  %strstart249 = getelementptr inbounds %struct.internal_state, ptr %196, i32 0, i32 27
  %197 = load i32, ptr %strstart249, align 4
  %conv250 = zext i32 %197 to i64
  %198 = load ptr, ptr %s.addr, align 8
  %block_start251 = getelementptr inbounds %struct.internal_state, ptr %198, i32 0, i32 23
  store i64 %conv250, ptr %block_start251, align 8
  %199 = load ptr, ptr %s.addr, align 8
  %strm252 = getelementptr inbounds %struct.internal_state, ptr %199, i32 0, i32 0
  %200 = load ptr, ptr %strm252, align 8
  call void @flush_pending(ptr noundef %200)
  %201 = load ptr, ptr %s.addr, align 8
  %strm253 = getelementptr inbounds %struct.internal_state, ptr %201, i32 0, i32 0
  %202 = load ptr, ptr %strm253, align 8
  %avail_out254 = getelementptr inbounds %struct.z_stream_s, ptr %202, i32 0, i32 4
  %203 = load i32, ptr %avail_out254, align 8
  %cmp255 = icmp eq i32 %203, 0
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %cond.end243
  store i32 0, ptr %retval, align 4
  br label %return

if.end258:                                        ; preds = %cond.end243
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %if.end229
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end259, %if.then257, %if.end228, %if.then227, %if.then197, %if.then4
  %204 = load i32, ptr %retval, align 4
  ret i32 %204
}

declare void @_tr_align(ptr noundef) #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @deflateCopy(ptr noundef %dest, ptr noundef %source) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %ds = alloca ptr, align 8
  %ss = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  %0 = load ptr, ptr %source.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %0)
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
  %state = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %state, align 8
  store ptr %3, ptr %ss, align 8
  %4 = load ptr, ptr %dest.addr, align 8
  %5 = load ptr, ptr %source.addr, align 8
  %6 = load ptr, ptr %dest.addr, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef 112, i64 noundef %7) #4
  %8 = load ptr, ptr %dest.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %zalloc, align 8
  %10 = load ptr, ptr %dest.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %opaque, align 8
  %call2 = call ptr %9(ptr noundef %11, i32 noundef 1, i32 noundef 5968)
  store ptr %call2, ptr %ds, align 8
  %12 = load ptr, ptr %ds, align 8
  %cmp3 = icmp eq ptr %12, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %13 = load ptr, ptr %ds, align 8
  %14 = load ptr, ptr %ds, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memset_chk(ptr noundef %13, i32 noundef 0, i64 noundef 5968, i64 noundef %15) #4
  %16 = load ptr, ptr %ds, align 8
  %17 = load ptr, ptr %dest.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 7
  store ptr %16, ptr %state7, align 8
  %18 = load ptr, ptr %ds, align 8
  %19 = load ptr, ptr %ss, align 8
  %20 = load ptr, ptr %ds, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call8 = call ptr @__memcpy_chk(ptr noundef %18, ptr noundef %19, i64 noundef 5968, i64 noundef %21) #4
  %22 = load ptr, ptr %dest.addr, align 8
  %23 = load ptr, ptr %ds, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %23, i32 0, i32 0
  store ptr %22, ptr %strm, align 8
  %24 = load ptr, ptr %dest.addr, align 8
  %zalloc9 = getelementptr inbounds %struct.z_stream_s, ptr %24, i32 0, i32 8
  %25 = load ptr, ptr %zalloc9, align 8
  %26 = load ptr, ptr %dest.addr, align 8
  %opaque10 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %opaque10, align 8
  %28 = load ptr, ptr %ds, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %28, i32 0, i32 11
  %29 = load i32, ptr %w_size, align 8
  %call11 = call ptr %25(ptr noundef %27, i32 noundef %29, i32 noundef 2)
  %30 = load ptr, ptr %ds, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %30, i32 0, i32 14
  store ptr %call11, ptr %window, align 8
  %31 = load ptr, ptr %dest.addr, align 8
  %zalloc12 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 8
  %32 = load ptr, ptr %zalloc12, align 8
  %33 = load ptr, ptr %dest.addr, align 8
  %opaque13 = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 10
  %34 = load ptr, ptr %opaque13, align 8
  %35 = load ptr, ptr %ds, align 8
  %w_size14 = getelementptr inbounds %struct.internal_state, ptr %35, i32 0, i32 11
  %36 = load i32, ptr %w_size14, align 8
  %call15 = call ptr %32(ptr noundef %34, i32 noundef %36, i32 noundef 2)
  %37 = load ptr, ptr %ds, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %37, i32 0, i32 16
  store ptr %call15, ptr %prev, align 8
  %38 = load ptr, ptr %dest.addr, align 8
  %zalloc16 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 8
  %39 = load ptr, ptr %zalloc16, align 8
  %40 = load ptr, ptr %dest.addr, align 8
  %opaque17 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 10
  %41 = load ptr, ptr %opaque17, align 8
  %42 = load ptr, ptr %ds, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %42, i32 0, i32 19
  %43 = load i32, ptr %hash_size, align 4
  %call18 = call ptr %39(ptr noundef %41, i32 noundef %43, i32 noundef 2)
  %44 = load ptr, ptr %ds, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %44, i32 0, i32 17
  store ptr %call18, ptr %head, align 8
  %45 = load ptr, ptr %dest.addr, align 8
  %zalloc19 = getelementptr inbounds %struct.z_stream_s, ptr %45, i32 0, i32 8
  %46 = load ptr, ptr %zalloc19, align 8
  %47 = load ptr, ptr %dest.addr, align 8
  %opaque20 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 10
  %48 = load ptr, ptr %opaque20, align 8
  %49 = load ptr, ptr %ds, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 49
  %50 = load i32, ptr %lit_bufsize, align 8
  %call21 = call ptr %46(ptr noundef %48, i32 noundef %50, i32 noundef 4)
  %51 = load ptr, ptr %ds, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 2
  store ptr %call21, ptr %pending_buf, align 8
  %52 = load ptr, ptr %ds, align 8
  %window22 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 14
  %53 = load ptr, ptr %window22, align 8
  %cmp23 = icmp eq ptr %53, null
  br i1 %cmp23, label %if.then33, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end5
  %54 = load ptr, ptr %ds, align 8
  %prev25 = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 16
  %55 = load ptr, ptr %prev25, align 8
  %cmp26 = icmp eq ptr %55, null
  br i1 %cmp26, label %if.then33, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %56 = load ptr, ptr %ds, align 8
  %head28 = getelementptr inbounds %struct.internal_state, ptr %56, i32 0, i32 17
  %57 = load ptr, ptr %head28, align 8
  %cmp29 = icmp eq ptr %57, null
  br i1 %cmp29, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %58 = load ptr, ptr %ds, align 8
  %pending_buf31 = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 2
  %59 = load ptr, ptr %pending_buf31, align 8
  %cmp32 = icmp eq ptr %59, null
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %if.end5
  %60 = load ptr, ptr %dest.addr, align 8
  %call34 = call i32 @deflateEnd(ptr noundef %60)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false30
  %61 = load ptr, ptr %ds, align 8
  %window36 = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 14
  %62 = load ptr, ptr %window36, align 8
  %63 = load ptr, ptr %ss, align 8
  %window37 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 14
  %64 = load ptr, ptr %window37, align 8
  %65 = load ptr, ptr %ss, align 8
  %high_water = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 59
  %66 = load i64, ptr %high_water, align 8
  %67 = load ptr, ptr %ds, align 8
  %window38 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 14
  %68 = load ptr, ptr %window38, align 8
  %69 = call i64 @llvm.objectsize.i64.p0(ptr %68, i1 false, i1 true, i1 false)
  %call39 = call ptr @__memcpy_chk(ptr noundef %62, ptr noundef %64, i64 noundef %66, i64 noundef %69) #4
  %70 = load ptr, ptr %ds, align 8
  %prev40 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 16
  %71 = load ptr, ptr %prev40, align 8
  %72 = load ptr, ptr %ss, align 8
  %prev41 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 16
  %73 = load ptr, ptr %prev41, align 8
  %74 = load ptr, ptr %ss, align 8
  %slid = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 60
  %75 = load i32, ptr %slid, align 8
  %tobool42 = icmp ne i32 %75, 0
  br i1 %tobool42, label %cond.true, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end35
  %76 = load ptr, ptr %ss, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 27
  %77 = load i32, ptr %strstart, align 4
  %78 = load ptr, ptr %ss, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 55
  %79 = load i32, ptr %insert, align 4
  %sub = sub i32 %77, %79
  %80 = load ptr, ptr %ds, align 8
  %w_size44 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 11
  %81 = load i32, ptr %w_size44, align 8
  %cmp45 = icmp ugt i32 %sub, %81
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false43, %if.end35
  %82 = load ptr, ptr %ds, align 8
  %w_size46 = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 11
  %83 = load i32, ptr %w_size46, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false43
  %84 = load ptr, ptr %ss, align 8
  %strstart47 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 27
  %85 = load i32, ptr %strstart47, align 4
  %86 = load ptr, ptr %ss, align 8
  %insert48 = getelementptr inbounds %struct.internal_state, ptr %86, i32 0, i32 55
  %87 = load i32, ptr %insert48, align 4
  %sub49 = sub i32 %85, %87
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %83, %cond.true ], [ %sub49, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul = mul i64 %conv, 2
  %88 = load ptr, ptr %ds, align 8
  %prev50 = getelementptr inbounds %struct.internal_state, ptr %88, i32 0, i32 16
  %89 = load ptr, ptr %prev50, align 8
  %90 = call i64 @llvm.objectsize.i64.p0(ptr %89, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %71, ptr noundef %73, i64 noundef %mul, i64 noundef %90) #4
  %91 = load ptr, ptr %ds, align 8
  %head52 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 17
  %92 = load ptr, ptr %head52, align 8
  %93 = load ptr, ptr %ss, align 8
  %head53 = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 17
  %94 = load ptr, ptr %head53, align 8
  %95 = load ptr, ptr %ds, align 8
  %hash_size54 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 19
  %96 = load i32, ptr %hash_size54, align 4
  %conv55 = zext i32 %96 to i64
  %mul56 = mul i64 %conv55, 2
  %97 = load ptr, ptr %ds, align 8
  %head57 = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 17
  %98 = load ptr, ptr %head57, align 8
  %99 = call i64 @llvm.objectsize.i64.p0(ptr %98, i1 false, i1 true, i1 false)
  %call58 = call ptr @__memcpy_chk(ptr noundef %92, ptr noundef %94, i64 noundef %mul56, i64 noundef %99) #4
  %100 = load ptr, ptr %ds, align 8
  %pending_buf59 = getelementptr inbounds %struct.internal_state, ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %pending_buf59, align 8
  %102 = load ptr, ptr %ss, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 4
  %103 = load ptr, ptr %pending_out, align 8
  %104 = load ptr, ptr %ss, align 8
  %pending_buf60 = getelementptr inbounds %struct.internal_state, ptr %104, i32 0, i32 2
  %105 = load ptr, ptr %pending_buf60, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %103 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %105 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %101, i64 %sub.ptr.sub
  %106 = load ptr, ptr %ds, align 8
  %pending_out61 = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 4
  store ptr %add.ptr, ptr %pending_out61, align 8
  %107 = load ptr, ptr %ds, align 8
  %pending_out62 = getelementptr inbounds %struct.internal_state, ptr %107, i32 0, i32 4
  %108 = load ptr, ptr %pending_out62, align 8
  %109 = load ptr, ptr %ss, align 8
  %pending_out63 = getelementptr inbounds %struct.internal_state, ptr %109, i32 0, i32 4
  %110 = load ptr, ptr %pending_out63, align 8
  %111 = load ptr, ptr %ss, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %111, i32 0, i32 5
  %112 = load i64, ptr %pending, align 8
  %113 = load ptr, ptr %ds, align 8
  %pending_out64 = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 4
  %114 = load ptr, ptr %pending_out64, align 8
  %115 = call i64 @llvm.objectsize.i64.p0(ptr %114, i1 false, i1 true, i1 false)
  %call65 = call ptr @__memcpy_chk(ptr noundef %108, ptr noundef %110, i64 noundef %112, i64 noundef %115) #4
  %116 = load ptr, ptr %ds, align 8
  %pending_buf66 = getelementptr inbounds %struct.internal_state, ptr %116, i32 0, i32 2
  %117 = load ptr, ptr %pending_buf66, align 8
  %118 = load ptr, ptr %ds, align 8
  %lit_bufsize67 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 49
  %119 = load i32, ptr %lit_bufsize67, align 8
  %idx.ext = zext i32 %119 to i64
  %add.ptr68 = getelementptr inbounds i8, ptr %117, i64 %idx.ext
  %120 = load ptr, ptr %ds, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 48
  store ptr %add.ptr68, ptr %sym_buf, align 8
  %121 = load ptr, ptr %ds, align 8
  %sym_buf69 = getelementptr inbounds %struct.internal_state, ptr %121, i32 0, i32 48
  %122 = load ptr, ptr %sym_buf69, align 8
  %123 = load ptr, ptr %ss, align 8
  %sym_buf70 = getelementptr inbounds %struct.internal_state, ptr %123, i32 0, i32 48
  %124 = load ptr, ptr %sym_buf70, align 8
  %125 = load ptr, ptr %ss, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %125, i32 0, i32 50
  %126 = load i32, ptr %sym_next, align 4
  %conv71 = zext i32 %126 to i64
  %127 = load ptr, ptr %ds, align 8
  %sym_buf72 = getelementptr inbounds %struct.internal_state, ptr %127, i32 0, i32 48
  %128 = load ptr, ptr %sym_buf72, align 8
  %129 = call i64 @llvm.objectsize.i64.p0(ptr %128, i1 false, i1 true, i1 false)
  %call73 = call ptr @__memcpy_chk(ptr noundef %122, ptr noundef %124, i64 noundef %conv71, i64 noundef %129) #4
  %130 = load ptr, ptr %ds, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %130, i32 0, i32 37
  %arraydecay = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 0
  %131 = load ptr, ptr %ds, align 8
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %131, i32 0, i32 40
  %dyn_tree = getelementptr inbounds %struct.tree_desc_s, ptr %l_desc, i32 0, i32 0
  store ptr %arraydecay, ptr %dyn_tree, align 8
  %132 = load ptr, ptr %ds, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 38
  %arraydecay74 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 0
  %133 = load ptr, ptr %ds, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %133, i32 0, i32 41
  %dyn_tree75 = getelementptr inbounds %struct.tree_desc_s, ptr %d_desc, i32 0, i32 0
  store ptr %arraydecay74, ptr %dyn_tree75, align 8
  %134 = load ptr, ptr %ds, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %134, i32 0, i32 39
  %arraydecay76 = getelementptr inbounds [39 x %struct.ct_data_s], ptr %bl_tree, i64 0, i64 0
  %135 = load ptr, ptr %ds, align 8
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 42
  %dyn_tree77 = getelementptr inbounds %struct.tree_desc_s, ptr %bl_desc, i32 0, i32 0
  store ptr %arraydecay76, ptr %dyn_tree77, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then33, %if.then4, %if.then
  %136 = load i32, ptr %retval, align 4
  ret i32 %136
}

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
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_in, align 8
  %12 = load i32, ptr %len, align 4
  %conv = zext i32 %12 to i64
  %13 = load ptr, ptr %buf.addr, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %9, ptr noundef %11, i64 noundef %conv, i64 noundef %14) #4
  %15 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %wrap, align 8
  %cmp5 = icmp eq i32 %17, 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  %18 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 12
  %19 = load i64, ptr %adler, align 8
  %20 = load ptr, ptr %buf.addr, align 8
  %21 = load i32, ptr %len, align 4
  %call8 = call i64 @adler32(i64 noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %strm.addr, align 8
  %adler9 = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 12
  store i64 %call8, ptr %adler9, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end3
  %23 = load ptr, ptr %strm.addr, align 8
  %state10 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 7
  %24 = load ptr, ptr %state10, align 8
  %wrap11 = getelementptr inbounds %struct.internal_state, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %wrap11, align 8
  %cmp12 = icmp eq i32 %25, 2
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.else
  %26 = load ptr, ptr %strm.addr, align 8
  %adler15 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 12
  %27 = load i64, ptr %adler15, align 8
  %28 = load ptr, ptr %buf.addr, align 8
  %29 = load i32, ptr %len, align 4
  %call16 = call i64 @crc32(i64 noundef %27, ptr noundef %28, i32 noundef %29)
  %30 = load ptr, ptr %strm.addr, align 8
  %adler17 = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 12
  store i64 %call16, ptr %adler17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then7
  %31 = load i32, ptr %len, align 4
  %32 = load ptr, ptr %strm.addr, align 8
  %next_in20 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %next_in20, align 8
  %idx.ext = zext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  store ptr %add.ptr, ptr %next_in20, align 8
  %34 = load i32, ptr %len, align 4
  %conv21 = zext i32 %34 to i64
  %35 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 2
  %36 = load i64, ptr %total_in, align 8
  %add = add i64 %36, %conv21
  store i64 %add, ptr %total_in, align 8
  %37 = load i32, ptr %len, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then2
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
  br label %for.cond

for.cond:                                         ; preds = %if.end223, %entry
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
  store i32 0, ptr %hash_head, align 4
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
  %32 = load i32, ptr %w_mask, align 8
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
  br i1 %cmp29, label %land.lhs.true31, label %if.end37

land.lhs.true31:                                  ; preds = %if.end28
  %40 = load ptr, ptr %s.addr, align 8
  %strstart32 = getelementptr inbounds %struct.internal_state, ptr %40, i32 0, i32 27
  %41 = load i32, ptr %strstart32, align 4
  %42 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %41, %42
  %43 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %43, i32 0, i32 11
  %44 = load i32, ptr %w_size, align 8
  %sub33 = sub i32 %44, 262
  %cmp34 = icmp ule i32 %sub, %sub33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true31
  %45 = load ptr, ptr %s.addr, align 8
  %46 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %45, i32 noundef %46)
  %47 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 24
  store i32 %call, ptr %match_length, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.lhs.true31, %if.end28
  %48 = load ptr, ptr %s.addr, align 8
  %match_length38 = getelementptr inbounds %struct.internal_state, ptr %48, i32 0, i32 24
  %49 = load i32, ptr %match_length38, align 8
  %cmp39 = icmp uge i32 %49, 3
  br i1 %cmp39, label %if.then41, label %if.else165

if.then41:                                        ; preds = %if.end37
  %50 = load ptr, ptr %s.addr, align 8
  %match_length42 = getelementptr inbounds %struct.internal_state, ptr %50, i32 0, i32 24
  %51 = load i32, ptr %match_length42, align 8
  %sub43 = sub i32 %51, 3
  %conv44 = trunc i32 %sub43 to i8
  store i8 %conv44, ptr %len, align 1
  %52 = load ptr, ptr %s.addr, align 8
  %strstart45 = getelementptr inbounds %struct.internal_state, ptr %52, i32 0, i32 27
  %53 = load i32, ptr %strstart45, align 4
  %54 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 28
  %55 = load i32, ptr %match_start, align 8
  %sub46 = sub i32 %53, %55
  %conv47 = trunc i32 %sub46 to i16
  store i16 %conv47, ptr %dist, align 2
  %56 = load i16, ptr %dist, align 2
  %conv48 = trunc i16 %56 to i8
  %57 = load ptr, ptr %s.addr, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %57, i32 0, i32 48
  %58 = load ptr, ptr %sym_buf, align 8
  %59 = load ptr, ptr %s.addr, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 50
  %60 = load i32, ptr %sym_next, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %sym_next, align 4
  %idxprom49 = zext i32 %60 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %58, i64 %idxprom49
  store i8 %conv48, ptr %arrayidx50, align 1
  %61 = load i16, ptr %dist, align 2
  %conv51 = zext i16 %61 to i32
  %shr = ashr i32 %conv51, 8
  %conv52 = trunc i32 %shr to i8
  %62 = load ptr, ptr %s.addr, align 8
  %sym_buf53 = getelementptr inbounds %struct.internal_state, ptr %62, i32 0, i32 48
  %63 = load ptr, ptr %sym_buf53, align 8
  %64 = load ptr, ptr %s.addr, align 8
  %sym_next54 = getelementptr inbounds %struct.internal_state, ptr %64, i32 0, i32 50
  %65 = load i32, ptr %sym_next54, align 4
  %inc55 = add i32 %65, 1
  store i32 %inc55, ptr %sym_next54, align 4
  %idxprom56 = zext i32 %65 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %63, i64 %idxprom56
  store i8 %conv52, ptr %arrayidx57, align 1
  %66 = load i8, ptr %len, align 1
  %67 = load ptr, ptr %s.addr, align 8
  %sym_buf58 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 48
  %68 = load ptr, ptr %sym_buf58, align 8
  %69 = load ptr, ptr %s.addr, align 8
  %sym_next59 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 50
  %70 = load i32, ptr %sym_next59, align 4
  %inc60 = add i32 %70, 1
  store i32 %inc60, ptr %sym_next59, align 4
  %idxprom61 = zext i32 %70 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %68, i64 %idxprom61
  store i8 %66, ptr %arrayidx62, align 1
  %71 = load i16, ptr %dist, align 2
  %dec = add i16 %71, -1
  store i16 %dec, ptr %dist, align 2
  %72 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 37
  %73 = load i8, ptr %len, align 1
  %idxprom63 = zext i8 %73 to i64
  %arrayidx64 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom63
  %74 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %74 to i32
  %add66 = add nsw i32 %conv65, 256
  %add67 = add nsw i32 %add66, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom68
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx69, i32 0, i32 0
  %75 = load i16, ptr %fc, align 4
  %inc70 = add i16 %75, 1
  store i16 %inc70, ptr %fc, align 4
  %76 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 38
  %77 = load i16, ptr %dist, align 2
  %conv71 = zext i16 %77 to i32
  %cmp72 = icmp slt i32 %conv71, 256
  br i1 %cmp72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then41
  %78 = load i16, ptr %dist, align 2
  %idxprom74 = zext i16 %78 to i64
  %arrayidx75 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom74
  %79 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %79 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then41
  %80 = load i16, ptr %dist, align 2
  %conv77 = zext i16 %80 to i32
  %shr78 = ashr i32 %conv77, 7
  %add79 = add nsw i32 256, %shr78
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom80
  %81 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %81 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv76, %cond.true ], [ %conv82, %cond.false ]
  %idxprom83 = sext i32 %cond to i64
  %arrayidx84 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom83
  %fc85 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx84, i32 0, i32 0
  %82 = load i16, ptr %fc85, align 4
  %inc86 = add i16 %82, 1
  store i16 %inc86, ptr %fc85, align 4
  %83 = load ptr, ptr %s.addr, align 8
  %sym_next87 = getelementptr inbounds %struct.internal_state, ptr %83, i32 0, i32 50
  %84 = load i32, ptr %sym_next87, align 4
  %85 = load ptr, ptr %s.addr, align 8
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %85, i32 0, i32 51
  %86 = load i32, ptr %sym_end, align 8
  %cmp88 = icmp eq i32 %84, %86
  %conv89 = zext i1 %cmp88 to i32
  store i32 %conv89, ptr %bflush, align 4
  %87 = load ptr, ptr %s.addr, align 8
  %match_length90 = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 24
  %88 = load i32, ptr %match_length90, align 8
  %89 = load ptr, ptr %s.addr, align 8
  %lookahead91 = getelementptr inbounds %struct.internal_state, ptr %89, i32 0, i32 29
  %90 = load i32, ptr %lookahead91, align 4
  %sub92 = sub i32 %90, %88
  store i32 %sub92, ptr %lookahead91, align 4
  %91 = load ptr, ptr %s.addr, align 8
  %match_length93 = getelementptr inbounds %struct.internal_state, ptr %91, i32 0, i32 24
  %92 = load i32, ptr %match_length93, align 8
  %93 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %93, i32 0, i32 32
  %94 = load i32, ptr %max_lazy_match, align 8
  %cmp94 = icmp ule i32 %92, %94
  br i1 %cmp94, label %land.lhs.true96, label %if.else

land.lhs.true96:                                  ; preds = %cond.end
  %95 = load ptr, ptr %s.addr, align 8
  %lookahead97 = getelementptr inbounds %struct.internal_state, ptr %95, i32 0, i32 29
  %96 = load i32, ptr %lookahead97, align 4
  %cmp98 = icmp uge i32 %96, 3
  br i1 %cmp98, label %if.then100, label %if.else

if.then100:                                       ; preds = %land.lhs.true96
  %97 = load ptr, ptr %s.addr, align 8
  %match_length101 = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 24
  %98 = load i32, ptr %match_length101, align 8
  %dec102 = add i32 %98, -1
  store i32 %dec102, ptr %match_length101, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then100
  %99 = load ptr, ptr %s.addr, align 8
  %strstart103 = getelementptr inbounds %struct.internal_state, ptr %99, i32 0, i32 27
  %100 = load i32, ptr %strstart103, align 4
  %inc104 = add i32 %100, 1
  store i32 %inc104, ptr %strstart103, align 4
  %101 = load ptr, ptr %s.addr, align 8
  %ins_h105 = getelementptr inbounds %struct.internal_state, ptr %101, i32 0, i32 18
  %102 = load i32, ptr %ins_h105, align 8
  %103 = load ptr, ptr %s.addr, align 8
  %hash_shift106 = getelementptr inbounds %struct.internal_state, ptr %103, i32 0, i32 22
  %104 = load i32, ptr %hash_shift106, align 8
  %shl107 = shl i32 %102, %104
  %105 = load ptr, ptr %s.addr, align 8
  %window108 = getelementptr inbounds %struct.internal_state, ptr %105, i32 0, i32 14
  %106 = load ptr, ptr %window108, align 8
  %107 = load ptr, ptr %s.addr, align 8
  %strstart109 = getelementptr inbounds %struct.internal_state, ptr %107, i32 0, i32 27
  %108 = load i32, ptr %strstart109, align 4
  %add110 = add i32 %108, 2
  %idxprom111 = zext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %106, i64 %idxprom111
  %109 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %109 to i32
  %xor114 = xor i32 %shl107, %conv113
  %110 = load ptr, ptr %s.addr, align 8
  %hash_mask115 = getelementptr inbounds %struct.internal_state, ptr %110, i32 0, i32 21
  %111 = load i32, ptr %hash_mask115, align 4
  %and116 = and i32 %xor114, %111
  %112 = load ptr, ptr %s.addr, align 8
  %ins_h117 = getelementptr inbounds %struct.internal_state, ptr %112, i32 0, i32 18
  store i32 %and116, ptr %ins_h117, align 8
  %113 = load ptr, ptr %s.addr, align 8
  %head118 = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 17
  %114 = load ptr, ptr %head118, align 8
  %115 = load ptr, ptr %s.addr, align 8
  %ins_h119 = getelementptr inbounds %struct.internal_state, ptr %115, i32 0, i32 18
  %116 = load i32, ptr %ins_h119, align 8
  %idxprom120 = zext i32 %116 to i64
  %arrayidx121 = getelementptr inbounds i16, ptr %114, i64 %idxprom120
  %117 = load i16, ptr %arrayidx121, align 2
  %118 = load ptr, ptr %s.addr, align 8
  %prev122 = getelementptr inbounds %struct.internal_state, ptr %118, i32 0, i32 16
  %119 = load ptr, ptr %prev122, align 8
  %120 = load ptr, ptr %s.addr, align 8
  %strstart123 = getelementptr inbounds %struct.internal_state, ptr %120, i32 0, i32 27
  %121 = load i32, ptr %strstart123, align 4
  %122 = load ptr, ptr %s.addr, align 8
  %w_mask124 = getelementptr inbounds %struct.internal_state, ptr %122, i32 0, i32 13
  %123 = load i32, ptr %w_mask124, align 8
  %and125 = and i32 %121, %123
  %idxprom126 = zext i32 %and125 to i64
  %arrayidx127 = getelementptr inbounds i16, ptr %119, i64 %idxprom126
  store i16 %117, ptr %arrayidx127, align 2
  %conv128 = zext i16 %117 to i32
  store i32 %conv128, ptr %hash_head, align 4
  %124 = load ptr, ptr %s.addr, align 8
  %strstart129 = getelementptr inbounds %struct.internal_state, ptr %124, i32 0, i32 27
  %125 = load i32, ptr %strstart129, align 4
  %conv130 = trunc i32 %125 to i16
  %126 = load ptr, ptr %s.addr, align 8
  %head131 = getelementptr inbounds %struct.internal_state, ptr %126, i32 0, i32 17
  %127 = load ptr, ptr %head131, align 8
  %128 = load ptr, ptr %s.addr, align 8
  %ins_h132 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 18
  %129 = load i32, ptr %ins_h132, align 8
  %idxprom133 = zext i32 %129 to i64
  %arrayidx134 = getelementptr inbounds i16, ptr %127, i64 %idxprom133
  store i16 %conv130, ptr %arrayidx134, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %130 = load ptr, ptr %s.addr, align 8
  %match_length135 = getelementptr inbounds %struct.internal_state, ptr %130, i32 0, i32 24
  %131 = load i32, ptr %match_length135, align 8
  %dec136 = add i32 %131, -1
  store i32 %dec136, ptr %match_length135, align 8
  %cmp137 = icmp ne i32 %dec136, 0
  br i1 %cmp137, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  %132 = load ptr, ptr %s.addr, align 8
  %strstart139 = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 27
  %133 = load i32, ptr %strstart139, align 4
  %inc140 = add i32 %133, 1
  store i32 %inc140, ptr %strstart139, align 4
  br label %if.end164

if.else:                                          ; preds = %land.lhs.true96, %cond.end
  %134 = load ptr, ptr %s.addr, align 8
  %match_length141 = getelementptr inbounds %struct.internal_state, ptr %134, i32 0, i32 24
  %135 = load i32, ptr %match_length141, align 8
  %136 = load ptr, ptr %s.addr, align 8
  %strstart142 = getelementptr inbounds %struct.internal_state, ptr %136, i32 0, i32 27
  %137 = load i32, ptr %strstart142, align 4
  %add143 = add i32 %137, %135
  store i32 %add143, ptr %strstart142, align 4
  %138 = load ptr, ptr %s.addr, align 8
  %match_length144 = getelementptr inbounds %struct.internal_state, ptr %138, i32 0, i32 24
  store i32 0, ptr %match_length144, align 8
  %139 = load ptr, ptr %s.addr, align 8
  %window145 = getelementptr inbounds %struct.internal_state, ptr %139, i32 0, i32 14
  %140 = load ptr, ptr %window145, align 8
  %141 = load ptr, ptr %s.addr, align 8
  %strstart146 = getelementptr inbounds %struct.internal_state, ptr %141, i32 0, i32 27
  %142 = load i32, ptr %strstart146, align 4
  %idxprom147 = zext i32 %142 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %140, i64 %idxprom147
  %143 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %143 to i32
  %144 = load ptr, ptr %s.addr, align 8
  %ins_h150 = getelementptr inbounds %struct.internal_state, ptr %144, i32 0, i32 18
  store i32 %conv149, ptr %ins_h150, align 8
  %145 = load ptr, ptr %s.addr, align 8
  %ins_h151 = getelementptr inbounds %struct.internal_state, ptr %145, i32 0, i32 18
  %146 = load i32, ptr %ins_h151, align 8
  %147 = load ptr, ptr %s.addr, align 8
  %hash_shift152 = getelementptr inbounds %struct.internal_state, ptr %147, i32 0, i32 22
  %148 = load i32, ptr %hash_shift152, align 8
  %shl153 = shl i32 %146, %148
  %149 = load ptr, ptr %s.addr, align 8
  %window154 = getelementptr inbounds %struct.internal_state, ptr %149, i32 0, i32 14
  %150 = load ptr, ptr %window154, align 8
  %151 = load ptr, ptr %s.addr, align 8
  %strstart155 = getelementptr inbounds %struct.internal_state, ptr %151, i32 0, i32 27
  %152 = load i32, ptr %strstart155, align 4
  %add156 = add i32 %152, 1
  %idxprom157 = zext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds i8, ptr %150, i64 %idxprom157
  %153 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %153 to i32
  %xor160 = xor i32 %shl153, %conv159
  %154 = load ptr, ptr %s.addr, align 8
  %hash_mask161 = getelementptr inbounds %struct.internal_state, ptr %154, i32 0, i32 21
  %155 = load i32, ptr %hash_mask161, align 4
  %and162 = and i32 %xor160, %155
  %156 = load ptr, ptr %s.addr, align 8
  %ins_h163 = getelementptr inbounds %struct.internal_state, ptr %156, i32 0, i32 18
  store i32 %and162, ptr %ins_h163, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.else, %do.end
  br label %if.end198

if.else165:                                       ; preds = %if.end37
  %157 = load ptr, ptr %s.addr, align 8
  %window166 = getelementptr inbounds %struct.internal_state, ptr %157, i32 0, i32 14
  %158 = load ptr, ptr %window166, align 8
  %159 = load ptr, ptr %s.addr, align 8
  %strstart167 = getelementptr inbounds %struct.internal_state, ptr %159, i32 0, i32 27
  %160 = load i32, ptr %strstart167, align 4
  %idxprom168 = zext i32 %160 to i64
  %arrayidx169 = getelementptr inbounds i8, ptr %158, i64 %idxprom168
  %161 = load i8, ptr %arrayidx169, align 1
  store i8 %161, ptr %cc, align 1
  %162 = load ptr, ptr %s.addr, align 8
  %sym_buf170 = getelementptr inbounds %struct.internal_state, ptr %162, i32 0, i32 48
  %163 = load ptr, ptr %sym_buf170, align 8
  %164 = load ptr, ptr %s.addr, align 8
  %sym_next171 = getelementptr inbounds %struct.internal_state, ptr %164, i32 0, i32 50
  %165 = load i32, ptr %sym_next171, align 4
  %inc172 = add i32 %165, 1
  store i32 %inc172, ptr %sym_next171, align 4
  %idxprom173 = zext i32 %165 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %163, i64 %idxprom173
  store i8 0, ptr %arrayidx174, align 1
  %166 = load ptr, ptr %s.addr, align 8
  %sym_buf175 = getelementptr inbounds %struct.internal_state, ptr %166, i32 0, i32 48
  %167 = load ptr, ptr %sym_buf175, align 8
  %168 = load ptr, ptr %s.addr, align 8
  %sym_next176 = getelementptr inbounds %struct.internal_state, ptr %168, i32 0, i32 50
  %169 = load i32, ptr %sym_next176, align 4
  %inc177 = add i32 %169, 1
  store i32 %inc177, ptr %sym_next176, align 4
  %idxprom178 = zext i32 %169 to i64
  %arrayidx179 = getelementptr inbounds i8, ptr %167, i64 %idxprom178
  store i8 0, ptr %arrayidx179, align 1
  %170 = load i8, ptr %cc, align 1
  %171 = load ptr, ptr %s.addr, align 8
  %sym_buf180 = getelementptr inbounds %struct.internal_state, ptr %171, i32 0, i32 48
  %172 = load ptr, ptr %sym_buf180, align 8
  %173 = load ptr, ptr %s.addr, align 8
  %sym_next181 = getelementptr inbounds %struct.internal_state, ptr %173, i32 0, i32 50
  %174 = load i32, ptr %sym_next181, align 4
  %inc182 = add i32 %174, 1
  store i32 %inc182, ptr %sym_next181, align 4
  %idxprom183 = zext i32 %174 to i64
  %arrayidx184 = getelementptr inbounds i8, ptr %172, i64 %idxprom183
  store i8 %170, ptr %arrayidx184, align 1
  %175 = load ptr, ptr %s.addr, align 8
  %dyn_ltree185 = getelementptr inbounds %struct.internal_state, ptr %175, i32 0, i32 37
  %176 = load i8, ptr %cc, align 1
  %idxprom186 = zext i8 %176 to i64
  %arrayidx187 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree185, i64 0, i64 %idxprom186
  %fc188 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx187, i32 0, i32 0
  %177 = load i16, ptr %fc188, align 4
  %inc189 = add i16 %177, 1
  store i16 %inc189, ptr %fc188, align 4
  %178 = load ptr, ptr %s.addr, align 8
  %sym_next190 = getelementptr inbounds %struct.internal_state, ptr %178, i32 0, i32 50
  %179 = load i32, ptr %sym_next190, align 4
  %180 = load ptr, ptr %s.addr, align 8
  %sym_end191 = getelementptr inbounds %struct.internal_state, ptr %180, i32 0, i32 51
  %181 = load i32, ptr %sym_end191, align 8
  %cmp192 = icmp eq i32 %179, %181
  %conv193 = zext i1 %cmp192 to i32
  store i32 %conv193, ptr %bflush, align 4
  %182 = load ptr, ptr %s.addr, align 8
  %lookahead194 = getelementptr inbounds %struct.internal_state, ptr %182, i32 0, i32 29
  %183 = load i32, ptr %lookahead194, align 4
  %dec195 = add i32 %183, -1
  store i32 %dec195, ptr %lookahead194, align 4
  %184 = load ptr, ptr %s.addr, align 8
  %strstart196 = getelementptr inbounds %struct.internal_state, ptr %184, i32 0, i32 27
  %185 = load i32, ptr %strstart196, align 4
  %inc197 = add i32 %185, 1
  store i32 %inc197, ptr %strstart196, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.else165, %if.end164
  %186 = load i32, ptr %bflush, align 4
  %tobool = icmp ne i32 %186, 0
  br i1 %tobool, label %if.then199, label %if.end223

if.then199:                                       ; preds = %if.end198
  %187 = load ptr, ptr %s.addr, align 8
  %188 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %188, i32 0, i32 23
  %189 = load i64, ptr %block_start, align 8
  %cmp200 = icmp sge i64 %189, 0
  br i1 %cmp200, label %cond.true202, label %cond.false208

cond.true202:                                     ; preds = %if.then199
  %190 = load ptr, ptr %s.addr, align 8
  %window203 = getelementptr inbounds %struct.internal_state, ptr %190, i32 0, i32 14
  %191 = load ptr, ptr %window203, align 8
  %192 = load ptr, ptr %s.addr, align 8
  %block_start204 = getelementptr inbounds %struct.internal_state, ptr %192, i32 0, i32 23
  %193 = load i64, ptr %block_start204, align 8
  %conv205 = trunc i64 %193 to i32
  %idxprom206 = zext i32 %conv205 to i64
  %arrayidx207 = getelementptr inbounds i8, ptr %191, i64 %idxprom206
  br label %cond.end209

cond.false208:                                    ; preds = %if.then199
  br label %cond.end209

cond.end209:                                      ; preds = %cond.false208, %cond.true202
  %cond210 = phi ptr [ %arrayidx207, %cond.true202 ], [ null, %cond.false208 ]
  %194 = load ptr, ptr %s.addr, align 8
  %strstart211 = getelementptr inbounds %struct.internal_state, ptr %194, i32 0, i32 27
  %195 = load i32, ptr %strstart211, align 4
  %conv212 = zext i32 %195 to i64
  %196 = load ptr, ptr %s.addr, align 8
  %block_start213 = getelementptr inbounds %struct.internal_state, ptr %196, i32 0, i32 23
  %197 = load i64, ptr %block_start213, align 8
  %sub214 = sub nsw i64 %conv212, %197
  call void @_tr_flush_block(ptr noundef %187, ptr noundef %cond210, i64 noundef %sub214, i32 noundef 0)
  %198 = load ptr, ptr %s.addr, align 8
  %strstart215 = getelementptr inbounds %struct.internal_state, ptr %198, i32 0, i32 27
  %199 = load i32, ptr %strstart215, align 4
  %conv216 = zext i32 %199 to i64
  %200 = load ptr, ptr %s.addr, align 8
  %block_start217 = getelementptr inbounds %struct.internal_state, ptr %200, i32 0, i32 23
  store i64 %conv216, ptr %block_start217, align 8
  %201 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %201, i32 0, i32 0
  %202 = load ptr, ptr %strm, align 8
  call void @flush_pending(ptr noundef %202)
  %203 = load ptr, ptr %s.addr, align 8
  %strm218 = getelementptr inbounds %struct.internal_state, ptr %203, i32 0, i32 0
  %204 = load ptr, ptr %strm218, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %204, i32 0, i32 4
  %205 = load i32, ptr %avail_out, align 8
  %cmp219 = icmp eq i32 %205, 0
  br i1 %cmp219, label %if.then221, label %if.end222

if.then221:                                       ; preds = %cond.end209
  store i32 0, ptr %retval, align 4
  br label %return

if.end222:                                        ; preds = %cond.end209
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.end198
  br label %for.cond

for.end:                                          ; preds = %if.then7
  %206 = load ptr, ptr %s.addr, align 8
  %strstart224 = getelementptr inbounds %struct.internal_state, ptr %206, i32 0, i32 27
  %207 = load i32, ptr %strstart224, align 4
  %cmp225 = icmp ult i32 %207, 2
  br i1 %cmp225, label %cond.true227, label %cond.false229

cond.true227:                                     ; preds = %for.end
  %208 = load ptr, ptr %s.addr, align 8
  %strstart228 = getelementptr inbounds %struct.internal_state, ptr %208, i32 0, i32 27
  %209 = load i32, ptr %strstart228, align 4
  br label %cond.end230

cond.false229:                                    ; preds = %for.end
  br label %cond.end230

cond.end230:                                      ; preds = %cond.false229, %cond.true227
  %cond231 = phi i32 [ %209, %cond.true227 ], [ 2, %cond.false229 ]
  %210 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %210, i32 0, i32 55
  store i32 %cond231, ptr %insert, align 4
  %211 = load i32, ptr %flush.addr, align 4
  %cmp232 = icmp eq i32 %211, 4
  br i1 %cmp232, label %if.then234, label %if.end261

if.then234:                                       ; preds = %cond.end230
  %212 = load ptr, ptr %s.addr, align 8
  %213 = load ptr, ptr %s.addr, align 8
  %block_start235 = getelementptr inbounds %struct.internal_state, ptr %213, i32 0, i32 23
  %214 = load i64, ptr %block_start235, align 8
  %cmp236 = icmp sge i64 %214, 0
  br i1 %cmp236, label %cond.true238, label %cond.false244

cond.true238:                                     ; preds = %if.then234
  %215 = load ptr, ptr %s.addr, align 8
  %window239 = getelementptr inbounds %struct.internal_state, ptr %215, i32 0, i32 14
  %216 = load ptr, ptr %window239, align 8
  %217 = load ptr, ptr %s.addr, align 8
  %block_start240 = getelementptr inbounds %struct.internal_state, ptr %217, i32 0, i32 23
  %218 = load i64, ptr %block_start240, align 8
  %conv241 = trunc i64 %218 to i32
  %idxprom242 = zext i32 %conv241 to i64
  %arrayidx243 = getelementptr inbounds i8, ptr %216, i64 %idxprom242
  br label %cond.end245

cond.false244:                                    ; preds = %if.then234
  br label %cond.end245

cond.end245:                                      ; preds = %cond.false244, %cond.true238
  %cond246 = phi ptr [ %arrayidx243, %cond.true238 ], [ null, %cond.false244 ]
  %219 = load ptr, ptr %s.addr, align 8
  %strstart247 = getelementptr inbounds %struct.internal_state, ptr %219, i32 0, i32 27
  %220 = load i32, ptr %strstart247, align 4
  %conv248 = zext i32 %220 to i64
  %221 = load ptr, ptr %s.addr, align 8
  %block_start249 = getelementptr inbounds %struct.internal_state, ptr %221, i32 0, i32 23
  %222 = load i64, ptr %block_start249, align 8
  %sub250 = sub nsw i64 %conv248, %222
  call void @_tr_flush_block(ptr noundef %212, ptr noundef %cond246, i64 noundef %sub250, i32 noundef 1)
  %223 = load ptr, ptr %s.addr, align 8
  %strstart251 = getelementptr inbounds %struct.internal_state, ptr %223, i32 0, i32 27
  %224 = load i32, ptr %strstart251, align 4
  %conv252 = zext i32 %224 to i64
  %225 = load ptr, ptr %s.addr, align 8
  %block_start253 = getelementptr inbounds %struct.internal_state, ptr %225, i32 0, i32 23
  store i64 %conv252, ptr %block_start253, align 8
  %226 = load ptr, ptr %s.addr, align 8
  %strm254 = getelementptr inbounds %struct.internal_state, ptr %226, i32 0, i32 0
  %227 = load ptr, ptr %strm254, align 8
  call void @flush_pending(ptr noundef %227)
  %228 = load ptr, ptr %s.addr, align 8
  %strm255 = getelementptr inbounds %struct.internal_state, ptr %228, i32 0, i32 0
  %229 = load ptr, ptr %strm255, align 8
  %avail_out256 = getelementptr inbounds %struct.z_stream_s, ptr %229, i32 0, i32 4
  %230 = load i32, ptr %avail_out256, align 8
  %cmp257 = icmp eq i32 %230, 0
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %cond.end245
  store i32 2, ptr %retval, align 4
  br label %return

if.end260:                                        ; preds = %cond.end245
  store i32 3, ptr %retval, align 4
  br label %return

if.end261:                                        ; preds = %cond.end230
  %231 = load ptr, ptr %s.addr, align 8
  %sym_next262 = getelementptr inbounds %struct.internal_state, ptr %231, i32 0, i32 50
  %232 = load i32, ptr %sym_next262, align 4
  %tobool263 = icmp ne i32 %232, 0
  br i1 %tobool263, label %if.then264, label %if.end291

if.then264:                                       ; preds = %if.end261
  %233 = load ptr, ptr %s.addr, align 8
  %234 = load ptr, ptr %s.addr, align 8
  %block_start265 = getelementptr inbounds %struct.internal_state, ptr %234, i32 0, i32 23
  %235 = load i64, ptr %block_start265, align 8
  %cmp266 = icmp sge i64 %235, 0
  br i1 %cmp266, label %cond.true268, label %cond.false274

cond.true268:                                     ; preds = %if.then264
  %236 = load ptr, ptr %s.addr, align 8
  %window269 = getelementptr inbounds %struct.internal_state, ptr %236, i32 0, i32 14
  %237 = load ptr, ptr %window269, align 8
  %238 = load ptr, ptr %s.addr, align 8
  %block_start270 = getelementptr inbounds %struct.internal_state, ptr %238, i32 0, i32 23
  %239 = load i64, ptr %block_start270, align 8
  %conv271 = trunc i64 %239 to i32
  %idxprom272 = zext i32 %conv271 to i64
  %arrayidx273 = getelementptr inbounds i8, ptr %237, i64 %idxprom272
  br label %cond.end275

cond.false274:                                    ; preds = %if.then264
  br label %cond.end275

cond.end275:                                      ; preds = %cond.false274, %cond.true268
  %cond276 = phi ptr [ %arrayidx273, %cond.true268 ], [ null, %cond.false274 ]
  %240 = load ptr, ptr %s.addr, align 8
  %strstart277 = getelementptr inbounds %struct.internal_state, ptr %240, i32 0, i32 27
  %241 = load i32, ptr %strstart277, align 4
  %conv278 = zext i32 %241 to i64
  %242 = load ptr, ptr %s.addr, align 8
  %block_start279 = getelementptr inbounds %struct.internal_state, ptr %242, i32 0, i32 23
  %243 = load i64, ptr %block_start279, align 8
  %sub280 = sub nsw i64 %conv278, %243
  call void @_tr_flush_block(ptr noundef %233, ptr noundef %cond276, i64 noundef %sub280, i32 noundef 0)
  %244 = load ptr, ptr %s.addr, align 8
  %strstart281 = getelementptr inbounds %struct.internal_state, ptr %244, i32 0, i32 27
  %245 = load i32, ptr %strstart281, align 4
  %conv282 = zext i32 %245 to i64
  %246 = load ptr, ptr %s.addr, align 8
  %block_start283 = getelementptr inbounds %struct.internal_state, ptr %246, i32 0, i32 23
  store i64 %conv282, ptr %block_start283, align 8
  %247 = load ptr, ptr %s.addr, align 8
  %strm284 = getelementptr inbounds %struct.internal_state, ptr %247, i32 0, i32 0
  %248 = load ptr, ptr %strm284, align 8
  call void @flush_pending(ptr noundef %248)
  %249 = load ptr, ptr %s.addr, align 8
  %strm285 = getelementptr inbounds %struct.internal_state, ptr %249, i32 0, i32 0
  %250 = load ptr, ptr %strm285, align 8
  %avail_out286 = getelementptr inbounds %struct.z_stream_s, ptr %250, i32 0, i32 4
  %251 = load i32, ptr %avail_out286, align 8
  %cmp287 = icmp eq i32 %251, 0
  br i1 %cmp287, label %if.then289, label %if.end290

if.then289:                                       ; preds = %cond.end275
  store i32 0, ptr %retval, align 4
  br label %return

if.end290:                                        ; preds = %cond.end275
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %if.end261
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end291, %if.then289, %if.end260, %if.then259, %if.then221, %if.then4
  %252 = load i32, ptr %retval, align 4
  ret i32 %252
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
  %cc275 = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %flush, ptr %flush.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end271, %entry
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
  store i32 0, ptr %hash_head, align 4
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
  %32 = load i32, ptr %w_mask, align 8
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
  br i1 %cmp30, label %land.lhs.true32, label %if.end61

land.lhs.true32:                                  ; preds = %if.end28
  %47 = load ptr, ptr %s.addr, align 8
  %prev_length33 = getelementptr inbounds %struct.internal_state, ptr %47, i32 0, i32 30
  %48 = load i32, ptr %prev_length33, align 8
  %49 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %49, i32 0, i32 32
  %50 = load i32, ptr %max_lazy_match, align 8
  %cmp34 = icmp ult i32 %48, %50
  br i1 %cmp34, label %land.lhs.true36, label %if.end61

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %51 = load ptr, ptr %s.addr, align 8
  %strstart37 = getelementptr inbounds %struct.internal_state, ptr %51, i32 0, i32 27
  %52 = load i32, ptr %strstart37, align 4
  %53 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %52, %53
  %54 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %54, i32 0, i32 11
  %55 = load i32, ptr %w_size, align 8
  %sub38 = sub i32 %55, 262
  %cmp39 = icmp ule i32 %sub, %sub38
  br i1 %cmp39, label %if.then41, label %if.end61

if.then41:                                        ; preds = %land.lhs.true36
  %56 = load ptr, ptr %s.addr, align 8
  %57 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %56, i32 noundef %57)
  %58 = load ptr, ptr %s.addr, align 8
  %match_length42 = getelementptr inbounds %struct.internal_state, ptr %58, i32 0, i32 24
  store i32 %call, ptr %match_length42, align 8
  %59 = load ptr, ptr %s.addr, align 8
  %match_length43 = getelementptr inbounds %struct.internal_state, ptr %59, i32 0, i32 24
  %60 = load i32, ptr %match_length43, align 8
  %cmp44 = icmp ule i32 %60, 5
  br i1 %cmp44, label %land.lhs.true46, label %if.end60

land.lhs.true46:                                  ; preds = %if.then41
  %61 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %61, i32 0, i32 34
  %62 = load i32, ptr %strategy, align 8
  %cmp47 = icmp eq i32 %62, 1
  br i1 %cmp47, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true46
  %63 = load ptr, ptr %s.addr, align 8
  %match_length49 = getelementptr inbounds %struct.internal_state, ptr %63, i32 0, i32 24
  %64 = load i32, ptr %match_length49, align 8
  %cmp50 = icmp eq i32 %64, 3
  br i1 %cmp50, label %land.lhs.true52, label %if.end60

land.lhs.true52:                                  ; preds = %lor.lhs.false
  %65 = load ptr, ptr %s.addr, align 8
  %strstart53 = getelementptr inbounds %struct.internal_state, ptr %65, i32 0, i32 27
  %66 = load i32, ptr %strstart53, align 4
  %67 = load ptr, ptr %s.addr, align 8
  %match_start54 = getelementptr inbounds %struct.internal_state, ptr %67, i32 0, i32 28
  %68 = load i32, ptr %match_start54, align 8
  %sub55 = sub i32 %66, %68
  %cmp56 = icmp ugt i32 %sub55, 4096
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %land.lhs.true52, %land.lhs.true46
  %69 = load ptr, ptr %s.addr, align 8
  %match_length59 = getelementptr inbounds %struct.internal_state, ptr %69, i32 0, i32 24
  store i32 2, ptr %match_length59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %land.lhs.true52, %lor.lhs.false, %if.then41
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %land.lhs.true36, %land.lhs.true32, %if.end28
  %70 = load ptr, ptr %s.addr, align 8
  %prev_length62 = getelementptr inbounds %struct.internal_state, ptr %70, i32 0, i32 30
  %71 = load i32, ptr %prev_length62, align 8
  %cmp63 = icmp uge i32 %71, 3
  br i1 %cmp63, label %land.lhs.true65, label %if.else

land.lhs.true65:                                  ; preds = %if.end61
  %72 = load ptr, ptr %s.addr, align 8
  %match_length66 = getelementptr inbounds %struct.internal_state, ptr %72, i32 0, i32 24
  %73 = load i32, ptr %match_length66, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %prev_length67 = getelementptr inbounds %struct.internal_state, ptr %74, i32 0, i32 30
  %75 = load i32, ptr %prev_length67, align 8
  %cmp68 = icmp ule i32 %73, %75
  br i1 %cmp68, label %if.then70, label %if.else

if.then70:                                        ; preds = %land.lhs.true65
  %76 = load ptr, ptr %s.addr, align 8
  %strstart71 = getelementptr inbounds %struct.internal_state, ptr %76, i32 0, i32 27
  %77 = load i32, ptr %strstart71, align 4
  %78 = load ptr, ptr %s.addr, align 8
  %lookahead72 = getelementptr inbounds %struct.internal_state, ptr %78, i32 0, i32 29
  %79 = load i32, ptr %lookahead72, align 4
  %add73 = add i32 %77, %79
  %sub74 = sub i32 %add73, 3
  store i32 %sub74, ptr %max_insert, align 4
  %80 = load ptr, ptr %s.addr, align 8
  %prev_length75 = getelementptr inbounds %struct.internal_state, ptr %80, i32 0, i32 30
  %81 = load i32, ptr %prev_length75, align 8
  %sub76 = sub i32 %81, 3
  %conv77 = trunc i32 %sub76 to i8
  store i8 %conv77, ptr %len, align 1
  %82 = load ptr, ptr %s.addr, align 8
  %strstart78 = getelementptr inbounds %struct.internal_state, ptr %82, i32 0, i32 27
  %83 = load i32, ptr %strstart78, align 4
  %sub79 = sub i32 %83, 1
  %84 = load ptr, ptr %s.addr, align 8
  %prev_match80 = getelementptr inbounds %struct.internal_state, ptr %84, i32 0, i32 25
  %85 = load i32, ptr %prev_match80, align 4
  %sub81 = sub i32 %sub79, %85
  %conv82 = trunc i32 %sub81 to i16
  store i16 %conv82, ptr %dist, align 2
  %86 = load i16, ptr %dist, align 2
  %conv83 = trunc i16 %86 to i8
  %87 = load ptr, ptr %s.addr, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %87, i32 0, i32 48
  %88 = load ptr, ptr %sym_buf, align 8
  %89 = load ptr, ptr %s.addr, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %89, i32 0, i32 50
  %90 = load i32, ptr %sym_next, align 4
  %inc = add i32 %90, 1
  store i32 %inc, ptr %sym_next, align 4
  %idxprom84 = zext i32 %90 to i64
  %arrayidx85 = getelementptr inbounds i8, ptr %88, i64 %idxprom84
  store i8 %conv83, ptr %arrayidx85, align 1
  %91 = load i16, ptr %dist, align 2
  %conv86 = zext i16 %91 to i32
  %shr = ashr i32 %conv86, 8
  %conv87 = trunc i32 %shr to i8
  %92 = load ptr, ptr %s.addr, align 8
  %sym_buf88 = getelementptr inbounds %struct.internal_state, ptr %92, i32 0, i32 48
  %93 = load ptr, ptr %sym_buf88, align 8
  %94 = load ptr, ptr %s.addr, align 8
  %sym_next89 = getelementptr inbounds %struct.internal_state, ptr %94, i32 0, i32 50
  %95 = load i32, ptr %sym_next89, align 4
  %inc90 = add i32 %95, 1
  store i32 %inc90, ptr %sym_next89, align 4
  %idxprom91 = zext i32 %95 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %93, i64 %idxprom91
  store i8 %conv87, ptr %arrayidx92, align 1
  %96 = load i8, ptr %len, align 1
  %97 = load ptr, ptr %s.addr, align 8
  %sym_buf93 = getelementptr inbounds %struct.internal_state, ptr %97, i32 0, i32 48
  %98 = load ptr, ptr %sym_buf93, align 8
  %99 = load ptr, ptr %s.addr, align 8
  %sym_next94 = getelementptr inbounds %struct.internal_state, ptr %99, i32 0, i32 50
  %100 = load i32, ptr %sym_next94, align 4
  %inc95 = add i32 %100, 1
  store i32 %inc95, ptr %sym_next94, align 4
  %idxprom96 = zext i32 %100 to i64
  %arrayidx97 = getelementptr inbounds i8, ptr %98, i64 %idxprom96
  store i8 %96, ptr %arrayidx97, align 1
  %101 = load i16, ptr %dist, align 2
  %dec = add i16 %101, -1
  store i16 %dec, ptr %dist, align 2
  %102 = load ptr, ptr %s.addr, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %102, i32 0, i32 37
  %103 = load i8, ptr %len, align 1
  %idxprom98 = zext i8 %103 to i64
  %arrayidx99 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom98
  %104 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %104 to i32
  %add101 = add nsw i32 %conv100, 256
  %add102 = add nsw i32 %add101, 1
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree, i64 0, i64 %idxprom103
  %fc = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx104, i32 0, i32 0
  %105 = load i16, ptr %fc, align 4
  %inc105 = add i16 %105, 1
  store i16 %inc105, ptr %fc, align 4
  %106 = load ptr, ptr %s.addr, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %106, i32 0, i32 38
  %107 = load i16, ptr %dist, align 2
  %conv106 = zext i16 %107 to i32
  %cmp107 = icmp slt i32 %conv106, 256
  br i1 %cmp107, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then70
  %108 = load i16, ptr %dist, align 2
  %idxprom109 = zext i16 %108 to i64
  %arrayidx110 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom109
  %109 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %109 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then70
  %110 = load i16, ptr %dist, align 2
  %conv112 = zext i16 %110 to i32
  %shr113 = ashr i32 %conv112, 7
  %add114 = add nsw i32 256, %shr113
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom115
  %111 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %111 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv111, %cond.true ], [ %conv117, %cond.false ]
  %idxprom118 = sext i32 %cond to i64
  %arrayidx119 = getelementptr inbounds [61 x %struct.ct_data_s], ptr %dyn_dtree, i64 0, i64 %idxprom118
  %fc120 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx119, i32 0, i32 0
  %112 = load i16, ptr %fc120, align 4
  %inc121 = add i16 %112, 1
  store i16 %inc121, ptr %fc120, align 4
  %113 = load ptr, ptr %s.addr, align 8
  %sym_next122 = getelementptr inbounds %struct.internal_state, ptr %113, i32 0, i32 50
  %114 = load i32, ptr %sym_next122, align 4
  %115 = load ptr, ptr %s.addr, align 8
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %115, i32 0, i32 51
  %116 = load i32, ptr %sym_end, align 8
  %cmp123 = icmp eq i32 %114, %116
  %conv124 = zext i1 %cmp123 to i32
  store i32 %conv124, ptr %bflush, align 4
  %117 = load ptr, ptr %s.addr, align 8
  %prev_length125 = getelementptr inbounds %struct.internal_state, ptr %117, i32 0, i32 30
  %118 = load i32, ptr %prev_length125, align 8
  %sub126 = sub i32 %118, 1
  %119 = load ptr, ptr %s.addr, align 8
  %lookahead127 = getelementptr inbounds %struct.internal_state, ptr %119, i32 0, i32 29
  %120 = load i32, ptr %lookahead127, align 4
  %sub128 = sub i32 %120, %sub126
  store i32 %sub128, ptr %lookahead127, align 4
  %121 = load ptr, ptr %s.addr, align 8
  %prev_length129 = getelementptr inbounds %struct.internal_state, ptr %121, i32 0, i32 30
  %122 = load i32, ptr %prev_length129, align 8
  %sub130 = sub i32 %122, 2
  store i32 %sub130, ptr %prev_length129, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %123 = load ptr, ptr %s.addr, align 8
  %strstart131 = getelementptr inbounds %struct.internal_state, ptr %123, i32 0, i32 27
  %124 = load i32, ptr %strstart131, align 4
  %inc132 = add i32 %124, 1
  store i32 %inc132, ptr %strstart131, align 4
  %125 = load i32, ptr %max_insert, align 4
  %cmp133 = icmp ule i32 %inc132, %125
  br i1 %cmp133, label %if.then135, label %if.end166

if.then135:                                       ; preds = %do.body
  %126 = load ptr, ptr %s.addr, align 8
  %ins_h136 = getelementptr inbounds %struct.internal_state, ptr %126, i32 0, i32 18
  %127 = load i32, ptr %ins_h136, align 8
  %128 = load ptr, ptr %s.addr, align 8
  %hash_shift137 = getelementptr inbounds %struct.internal_state, ptr %128, i32 0, i32 22
  %129 = load i32, ptr %hash_shift137, align 8
  %shl138 = shl i32 %127, %129
  %130 = load ptr, ptr %s.addr, align 8
  %window139 = getelementptr inbounds %struct.internal_state, ptr %130, i32 0, i32 14
  %131 = load ptr, ptr %window139, align 8
  %132 = load ptr, ptr %s.addr, align 8
  %strstart140 = getelementptr inbounds %struct.internal_state, ptr %132, i32 0, i32 27
  %133 = load i32, ptr %strstart140, align 4
  %add141 = add i32 %133, 2
  %idxprom142 = zext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds i8, ptr %131, i64 %idxprom142
  %134 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %134 to i32
  %xor145 = xor i32 %shl138, %conv144
  %135 = load ptr, ptr %s.addr, align 8
  %hash_mask146 = getelementptr inbounds %struct.internal_state, ptr %135, i32 0, i32 21
  %136 = load i32, ptr %hash_mask146, align 4
  %and147 = and i32 %xor145, %136
  %137 = load ptr, ptr %s.addr, align 8
  %ins_h148 = getelementptr inbounds %struct.internal_state, ptr %137, i32 0, i32 18
  store i32 %and147, ptr %ins_h148, align 8
  %138 = load ptr, ptr %s.addr, align 8
  %head149 = getelementptr inbounds %struct.internal_state, ptr %138, i32 0, i32 17
  %139 = load ptr, ptr %head149, align 8
  %140 = load ptr, ptr %s.addr, align 8
  %ins_h150 = getelementptr inbounds %struct.internal_state, ptr %140, i32 0, i32 18
  %141 = load i32, ptr %ins_h150, align 8
  %idxprom151 = zext i32 %141 to i64
  %arrayidx152 = getelementptr inbounds i16, ptr %139, i64 %idxprom151
  %142 = load i16, ptr %arrayidx152, align 2
  %143 = load ptr, ptr %s.addr, align 8
  %prev153 = getelementptr inbounds %struct.internal_state, ptr %143, i32 0, i32 16
  %144 = load ptr, ptr %prev153, align 8
  %145 = load ptr, ptr %s.addr, align 8
  %strstart154 = getelementptr inbounds %struct.internal_state, ptr %145, i32 0, i32 27
  %146 = load i32, ptr %strstart154, align 4
  %147 = load ptr, ptr %s.addr, align 8
  %w_mask155 = getelementptr inbounds %struct.internal_state, ptr %147, i32 0, i32 13
  %148 = load i32, ptr %w_mask155, align 8
  %and156 = and i32 %146, %148
  %idxprom157 = zext i32 %and156 to i64
  %arrayidx158 = getelementptr inbounds i16, ptr %144, i64 %idxprom157
  store i16 %142, ptr %arrayidx158, align 2
  %conv159 = zext i16 %142 to i32
  store i32 %conv159, ptr %hash_head, align 4
  %149 = load ptr, ptr %s.addr, align 8
  %strstart160 = getelementptr inbounds %struct.internal_state, ptr %149, i32 0, i32 27
  %150 = load i32, ptr %strstart160, align 4
  %conv161 = trunc i32 %150 to i16
  %151 = load ptr, ptr %s.addr, align 8
  %head162 = getelementptr inbounds %struct.internal_state, ptr %151, i32 0, i32 17
  %152 = load ptr, ptr %head162, align 8
  %153 = load ptr, ptr %s.addr, align 8
  %ins_h163 = getelementptr inbounds %struct.internal_state, ptr %153, i32 0, i32 18
  %154 = load i32, ptr %ins_h163, align 8
  %idxprom164 = zext i32 %154 to i64
  %arrayidx165 = getelementptr inbounds i16, ptr %152, i64 %idxprom164
  store i16 %conv161, ptr %arrayidx165, align 2
  br label %if.end166

if.end166:                                        ; preds = %if.then135, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end166
  %155 = load ptr, ptr %s.addr, align 8
  %prev_length167 = getelementptr inbounds %struct.internal_state, ptr %155, i32 0, i32 30
  %156 = load i32, ptr %prev_length167, align 8
  %dec168 = add i32 %156, -1
  store i32 %dec168, ptr %prev_length167, align 8
  %cmp169 = icmp ne i32 %dec168, 0
  br i1 %cmp169, label %do.body, label %do.end, !llvm.loop !22

do.end:                                           ; preds = %do.cond
  %157 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %157, i32 0, i32 26
  store i32 0, ptr %match_available, align 8
  %158 = load ptr, ptr %s.addr, align 8
  %match_length171 = getelementptr inbounds %struct.internal_state, ptr %158, i32 0, i32 24
  store i32 2, ptr %match_length171, align 8
  %159 = load ptr, ptr %s.addr, align 8
  %strstart172 = getelementptr inbounds %struct.internal_state, ptr %159, i32 0, i32 27
  %160 = load i32, ptr %strstart172, align 4
  %inc173 = add i32 %160, 1
  store i32 %inc173, ptr %strstart172, align 4
  %161 = load i32, ptr %bflush, align 4
  %tobool = icmp ne i32 %161, 0
  br i1 %tobool, label %if.then174, label %if.end198

if.then174:                                       ; preds = %do.end
  %162 = load ptr, ptr %s.addr, align 8
  %163 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %163, i32 0, i32 23
  %164 = load i64, ptr %block_start, align 8
  %cmp175 = icmp sge i64 %164, 0
  br i1 %cmp175, label %cond.true177, label %cond.false183

cond.true177:                                     ; preds = %if.then174
  %165 = load ptr, ptr %s.addr, align 8
  %window178 = getelementptr inbounds %struct.internal_state, ptr %165, i32 0, i32 14
  %166 = load ptr, ptr %window178, align 8
  %167 = load ptr, ptr %s.addr, align 8
  %block_start179 = getelementptr inbounds %struct.internal_state, ptr %167, i32 0, i32 23
  %168 = load i64, ptr %block_start179, align 8
  %conv180 = trunc i64 %168 to i32
  %idxprom181 = zext i32 %conv180 to i64
  %arrayidx182 = getelementptr inbounds i8, ptr %166, i64 %idxprom181
  br label %cond.end184

cond.false183:                                    ; preds = %if.then174
  br label %cond.end184

cond.end184:                                      ; preds = %cond.false183, %cond.true177
  %cond185 = phi ptr [ %arrayidx182, %cond.true177 ], [ null, %cond.false183 ]
  %169 = load ptr, ptr %s.addr, align 8
  %strstart186 = getelementptr inbounds %struct.internal_state, ptr %169, i32 0, i32 27
  %170 = load i32, ptr %strstart186, align 4
  %conv187 = zext i32 %170 to i64
  %171 = load ptr, ptr %s.addr, align 8
  %block_start188 = getelementptr inbounds %struct.internal_state, ptr %171, i32 0, i32 23
  %172 = load i64, ptr %block_start188, align 8
  %sub189 = sub nsw i64 %conv187, %172
  call void @_tr_flush_block(ptr noundef %162, ptr noundef %cond185, i64 noundef %sub189, i32 noundef 0)
  %173 = load ptr, ptr %s.addr, align 8
  %strstart190 = getelementptr inbounds %struct.internal_state, ptr %173, i32 0, i32 27
  %174 = load i32, ptr %strstart190, align 4
  %conv191 = zext i32 %174 to i64
  %175 = load ptr, ptr %s.addr, align 8
  %block_start192 = getelementptr inbounds %struct.internal_state, ptr %175, i32 0, i32 23
  store i64 %conv191, ptr %block_start192, align 8
  %176 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds %struct.internal_state, ptr %176, i32 0, i32 0
  %177 = load ptr, ptr %strm, align 8
  call void @flush_pending(ptr noundef %177)
  %178 = load ptr, ptr %s.addr, align 8
  %strm193 = getelementptr inbounds %struct.internal_state, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %strm193, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %179, i32 0, i32 4
  %180 = load i32, ptr %avail_out, align 8
  %cmp194 = icmp eq i32 %180, 0
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %cond.end184
  store i32 0, ptr %retval, align 4
  br label %return

if.end197:                                        ; preds = %cond.end184
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %do.end
  br label %if.end271

if.else:                                          ; preds = %land.lhs.true65, %if.end61
  %181 = load ptr, ptr %s.addr, align 8
  %match_available199 = getelementptr inbounds %struct.internal_state, ptr %181, i32 0, i32 26
  %182 = load i32, ptr %match_available199, align 8
  %tobool200 = icmp ne i32 %182, 0
  br i1 %tobool200, label %if.then201, label %if.else264

if.then201:                                       ; preds = %if.else
  %183 = load ptr, ptr %s.addr, align 8
  %window202 = getelementptr inbounds %struct.internal_state, ptr %183, i32 0, i32 14
  %184 = load ptr, ptr %window202, align 8
  %185 = load ptr, ptr %s.addr, align 8
  %strstart203 = getelementptr inbounds %struct.internal_state, ptr %185, i32 0, i32 27
  %186 = load i32, ptr %strstart203, align 4
  %sub204 = sub i32 %186, 1
  %idxprom205 = zext i32 %sub204 to i64
  %arrayidx206 = getelementptr inbounds i8, ptr %184, i64 %idxprom205
  %187 = load i8, ptr %arrayidx206, align 1
  store i8 %187, ptr %cc, align 1
  %188 = load ptr, ptr %s.addr, align 8
  %sym_buf207 = getelementptr inbounds %struct.internal_state, ptr %188, i32 0, i32 48
  %189 = load ptr, ptr %sym_buf207, align 8
  %190 = load ptr, ptr %s.addr, align 8
  %sym_next208 = getelementptr inbounds %struct.internal_state, ptr %190, i32 0, i32 50
  %191 = load i32, ptr %sym_next208, align 4
  %inc209 = add i32 %191, 1
  store i32 %inc209, ptr %sym_next208, align 4
  %idxprom210 = zext i32 %191 to i64
  %arrayidx211 = getelementptr inbounds i8, ptr %189, i64 %idxprom210
  store i8 0, ptr %arrayidx211, align 1
  %192 = load ptr, ptr %s.addr, align 8
  %sym_buf212 = getelementptr inbounds %struct.internal_state, ptr %192, i32 0, i32 48
  %193 = load ptr, ptr %sym_buf212, align 8
  %194 = load ptr, ptr %s.addr, align 8
  %sym_next213 = getelementptr inbounds %struct.internal_state, ptr %194, i32 0, i32 50
  %195 = load i32, ptr %sym_next213, align 4
  %inc214 = add i32 %195, 1
  store i32 %inc214, ptr %sym_next213, align 4
  %idxprom215 = zext i32 %195 to i64
  %arrayidx216 = getelementptr inbounds i8, ptr %193, i64 %idxprom215
  store i8 0, ptr %arrayidx216, align 1
  %196 = load i8, ptr %cc, align 1
  %197 = load ptr, ptr %s.addr, align 8
  %sym_buf217 = getelementptr inbounds %struct.internal_state, ptr %197, i32 0, i32 48
  %198 = load ptr, ptr %sym_buf217, align 8
  %199 = load ptr, ptr %s.addr, align 8
  %sym_next218 = getelementptr inbounds %struct.internal_state, ptr %199, i32 0, i32 50
  %200 = load i32, ptr %sym_next218, align 4
  %inc219 = add i32 %200, 1
  store i32 %inc219, ptr %sym_next218, align 4
  %idxprom220 = zext i32 %200 to i64
  %arrayidx221 = getelementptr inbounds i8, ptr %198, i64 %idxprom220
  store i8 %196, ptr %arrayidx221, align 1
  %201 = load ptr, ptr %s.addr, align 8
  %dyn_ltree222 = getelementptr inbounds %struct.internal_state, ptr %201, i32 0, i32 37
  %202 = load i8, ptr %cc, align 1
  %idxprom223 = zext i8 %202 to i64
  %arrayidx224 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree222, i64 0, i64 %idxprom223
  %fc225 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx224, i32 0, i32 0
  %203 = load i16, ptr %fc225, align 4
  %inc226 = add i16 %203, 1
  store i16 %inc226, ptr %fc225, align 4
  %204 = load ptr, ptr %s.addr, align 8
  %sym_next227 = getelementptr inbounds %struct.internal_state, ptr %204, i32 0, i32 50
  %205 = load i32, ptr %sym_next227, align 4
  %206 = load ptr, ptr %s.addr, align 8
  %sym_end228 = getelementptr inbounds %struct.internal_state, ptr %206, i32 0, i32 51
  %207 = load i32, ptr %sym_end228, align 8
  %cmp229 = icmp eq i32 %205, %207
  %conv230 = zext i1 %cmp229 to i32
  store i32 %conv230, ptr %bflush, align 4
  %208 = load i32, ptr %bflush, align 4
  %tobool231 = icmp ne i32 %208, 0
  br i1 %tobool231, label %if.then232, label %if.end253

if.then232:                                       ; preds = %if.then201
  %209 = load ptr, ptr %s.addr, align 8
  %210 = load ptr, ptr %s.addr, align 8
  %block_start233 = getelementptr inbounds %struct.internal_state, ptr %210, i32 0, i32 23
  %211 = load i64, ptr %block_start233, align 8
  %cmp234 = icmp sge i64 %211, 0
  br i1 %cmp234, label %cond.true236, label %cond.false242

cond.true236:                                     ; preds = %if.then232
  %212 = load ptr, ptr %s.addr, align 8
  %window237 = getelementptr inbounds %struct.internal_state, ptr %212, i32 0, i32 14
  %213 = load ptr, ptr %window237, align 8
  %214 = load ptr, ptr %s.addr, align 8
  %block_start238 = getelementptr inbounds %struct.internal_state, ptr %214, i32 0, i32 23
  %215 = load i64, ptr %block_start238, align 8
  %conv239 = trunc i64 %215 to i32
  %idxprom240 = zext i32 %conv239 to i64
  %arrayidx241 = getelementptr inbounds i8, ptr %213, i64 %idxprom240
  br label %cond.end243

cond.false242:                                    ; preds = %if.then232
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false242, %cond.true236
  %cond244 = phi ptr [ %arrayidx241, %cond.true236 ], [ null, %cond.false242 ]
  %216 = load ptr, ptr %s.addr, align 8
  %strstart245 = getelementptr inbounds %struct.internal_state, ptr %216, i32 0, i32 27
  %217 = load i32, ptr %strstart245, align 4
  %conv246 = zext i32 %217 to i64
  %218 = load ptr, ptr %s.addr, align 8
  %block_start247 = getelementptr inbounds %struct.internal_state, ptr %218, i32 0, i32 23
  %219 = load i64, ptr %block_start247, align 8
  %sub248 = sub nsw i64 %conv246, %219
  call void @_tr_flush_block(ptr noundef %209, ptr noundef %cond244, i64 noundef %sub248, i32 noundef 0)
  %220 = load ptr, ptr %s.addr, align 8
  %strstart249 = getelementptr inbounds %struct.internal_state, ptr %220, i32 0, i32 27
  %221 = load i32, ptr %strstart249, align 4
  %conv250 = zext i32 %221 to i64
  %222 = load ptr, ptr %s.addr, align 8
  %block_start251 = getelementptr inbounds %struct.internal_state, ptr %222, i32 0, i32 23
  store i64 %conv250, ptr %block_start251, align 8
  %223 = load ptr, ptr %s.addr, align 8
  %strm252 = getelementptr inbounds %struct.internal_state, ptr %223, i32 0, i32 0
  %224 = load ptr, ptr %strm252, align 8
  call void @flush_pending(ptr noundef %224)
  br label %if.end253

if.end253:                                        ; preds = %cond.end243, %if.then201
  %225 = load ptr, ptr %s.addr, align 8
  %strstart254 = getelementptr inbounds %struct.internal_state, ptr %225, i32 0, i32 27
  %226 = load i32, ptr %strstart254, align 4
  %inc255 = add i32 %226, 1
  store i32 %inc255, ptr %strstart254, align 4
  %227 = load ptr, ptr %s.addr, align 8
  %lookahead256 = getelementptr inbounds %struct.internal_state, ptr %227, i32 0, i32 29
  %228 = load i32, ptr %lookahead256, align 4
  %dec257 = add i32 %228, -1
  store i32 %dec257, ptr %lookahead256, align 4
  %229 = load ptr, ptr %s.addr, align 8
  %strm258 = getelementptr inbounds %struct.internal_state, ptr %229, i32 0, i32 0
  %230 = load ptr, ptr %strm258, align 8
  %avail_out259 = getelementptr inbounds %struct.z_stream_s, ptr %230, i32 0, i32 4
  %231 = load i32, ptr %avail_out259, align 8
  %cmp260 = icmp eq i32 %231, 0
  br i1 %cmp260, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.end253
  store i32 0, ptr %retval, align 4
  br label %return

if.end263:                                        ; preds = %if.end253
  br label %if.end270

if.else264:                                       ; preds = %if.else
  %232 = load ptr, ptr %s.addr, align 8
  %match_available265 = getelementptr inbounds %struct.internal_state, ptr %232, i32 0, i32 26
  store i32 1, ptr %match_available265, align 8
  %233 = load ptr, ptr %s.addr, align 8
  %strstart266 = getelementptr inbounds %struct.internal_state, ptr %233, i32 0, i32 27
  %234 = load i32, ptr %strstart266, align 4
  %inc267 = add i32 %234, 1
  store i32 %inc267, ptr %strstart266, align 4
  %235 = load ptr, ptr %s.addr, align 8
  %lookahead268 = getelementptr inbounds %struct.internal_state, ptr %235, i32 0, i32 29
  %236 = load i32, ptr %lookahead268, align 4
  %dec269 = add i32 %236, -1
  store i32 %dec269, ptr %lookahead268, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.else264, %if.end263
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.end198
  br label %for.cond

for.end:                                          ; preds = %if.then7
  %237 = load ptr, ptr %s.addr, align 8
  %match_available272 = getelementptr inbounds %struct.internal_state, ptr %237, i32 0, i32 26
  %238 = load i32, ptr %match_available272, align 8
  %tobool273 = icmp ne i32 %238, 0
  br i1 %tobool273, label %if.then274, label %if.end306

if.then274:                                       ; preds = %for.end
  %239 = load ptr, ptr %s.addr, align 8
  %window276 = getelementptr inbounds %struct.internal_state, ptr %239, i32 0, i32 14
  %240 = load ptr, ptr %window276, align 8
  %241 = load ptr, ptr %s.addr, align 8
  %strstart277 = getelementptr inbounds %struct.internal_state, ptr %241, i32 0, i32 27
  %242 = load i32, ptr %strstart277, align 4
  %sub278 = sub i32 %242, 1
  %idxprom279 = zext i32 %sub278 to i64
  %arrayidx280 = getelementptr inbounds i8, ptr %240, i64 %idxprom279
  %243 = load i8, ptr %arrayidx280, align 1
  store i8 %243, ptr %cc275, align 1
  %244 = load ptr, ptr %s.addr, align 8
  %sym_buf281 = getelementptr inbounds %struct.internal_state, ptr %244, i32 0, i32 48
  %245 = load ptr, ptr %sym_buf281, align 8
  %246 = load ptr, ptr %s.addr, align 8
  %sym_next282 = getelementptr inbounds %struct.internal_state, ptr %246, i32 0, i32 50
  %247 = load i32, ptr %sym_next282, align 4
  %inc283 = add i32 %247, 1
  store i32 %inc283, ptr %sym_next282, align 4
  %idxprom284 = zext i32 %247 to i64
  %arrayidx285 = getelementptr inbounds i8, ptr %245, i64 %idxprom284
  store i8 0, ptr %arrayidx285, align 1
  %248 = load ptr, ptr %s.addr, align 8
  %sym_buf286 = getelementptr inbounds %struct.internal_state, ptr %248, i32 0, i32 48
  %249 = load ptr, ptr %sym_buf286, align 8
  %250 = load ptr, ptr %s.addr, align 8
  %sym_next287 = getelementptr inbounds %struct.internal_state, ptr %250, i32 0, i32 50
  %251 = load i32, ptr %sym_next287, align 4
  %inc288 = add i32 %251, 1
  store i32 %inc288, ptr %sym_next287, align 4
  %idxprom289 = zext i32 %251 to i64
  %arrayidx290 = getelementptr inbounds i8, ptr %249, i64 %idxprom289
  store i8 0, ptr %arrayidx290, align 1
  %252 = load i8, ptr %cc275, align 1
  %253 = load ptr, ptr %s.addr, align 8
  %sym_buf291 = getelementptr inbounds %struct.internal_state, ptr %253, i32 0, i32 48
  %254 = load ptr, ptr %sym_buf291, align 8
  %255 = load ptr, ptr %s.addr, align 8
  %sym_next292 = getelementptr inbounds %struct.internal_state, ptr %255, i32 0, i32 50
  %256 = load i32, ptr %sym_next292, align 4
  %inc293 = add i32 %256, 1
  store i32 %inc293, ptr %sym_next292, align 4
  %idxprom294 = zext i32 %256 to i64
  %arrayidx295 = getelementptr inbounds i8, ptr %254, i64 %idxprom294
  store i8 %252, ptr %arrayidx295, align 1
  %257 = load ptr, ptr %s.addr, align 8
  %dyn_ltree296 = getelementptr inbounds %struct.internal_state, ptr %257, i32 0, i32 37
  %258 = load i8, ptr %cc275, align 1
  %idxprom297 = zext i8 %258 to i64
  %arrayidx298 = getelementptr inbounds [573 x %struct.ct_data_s], ptr %dyn_ltree296, i64 0, i64 %idxprom297
  %fc299 = getelementptr inbounds %struct.ct_data_s, ptr %arrayidx298, i32 0, i32 0
  %259 = load i16, ptr %fc299, align 4
  %inc300 = add i16 %259, 1
  store i16 %inc300, ptr %fc299, align 4
  %260 = load ptr, ptr %s.addr, align 8
  %sym_next301 = getelementptr inbounds %struct.internal_state, ptr %260, i32 0, i32 50
  %261 = load i32, ptr %sym_next301, align 4
  %262 = load ptr, ptr %s.addr, align 8
  %sym_end302 = getelementptr inbounds %struct.internal_state, ptr %262, i32 0, i32 51
  %263 = load i32, ptr %sym_end302, align 8
  %cmp303 = icmp eq i32 %261, %263
  %conv304 = zext i1 %cmp303 to i32
  store i32 %conv304, ptr %bflush, align 4
  %264 = load ptr, ptr %s.addr, align 8
  %match_available305 = getelementptr inbounds %struct.internal_state, ptr %264, i32 0, i32 26
  store i32 0, ptr %match_available305, align 8
  br label %if.end306

if.end306:                                        ; preds = %if.then274, %for.end
  %265 = load ptr, ptr %s.addr, align 8
  %strstart307 = getelementptr inbounds %struct.internal_state, ptr %265, i32 0, i32 27
  %266 = load i32, ptr %strstart307, align 4
  %cmp308 = icmp ult i32 %266, 2
  br i1 %cmp308, label %cond.true310, label %cond.false312

cond.true310:                                     ; preds = %if.end306
  %267 = load ptr, ptr %s.addr, align 8
  %strstart311 = getelementptr inbounds %struct.internal_state, ptr %267, i32 0, i32 27
  %268 = load i32, ptr %strstart311, align 4
  br label %cond.end313

cond.false312:                                    ; preds = %if.end306
  br label %cond.end313

cond.end313:                                      ; preds = %cond.false312, %cond.true310
  %cond314 = phi i32 [ %268, %cond.true310 ], [ 2, %cond.false312 ]
  %269 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %269, i32 0, i32 55
  store i32 %cond314, ptr %insert, align 4
  %270 = load i32, ptr %flush.addr, align 4
  %cmp315 = icmp eq i32 %270, 4
  br i1 %cmp315, label %if.then317, label %if.end344

if.then317:                                       ; preds = %cond.end313
  %271 = load ptr, ptr %s.addr, align 8
  %272 = load ptr, ptr %s.addr, align 8
  %block_start318 = getelementptr inbounds %struct.internal_state, ptr %272, i32 0, i32 23
  %273 = load i64, ptr %block_start318, align 8
  %cmp319 = icmp sge i64 %273, 0
  br i1 %cmp319, label %cond.true321, label %cond.false327

cond.true321:                                     ; preds = %if.then317
  %274 = load ptr, ptr %s.addr, align 8
  %window322 = getelementptr inbounds %struct.internal_state, ptr %274, i32 0, i32 14
  %275 = load ptr, ptr %window322, align 8
  %276 = load ptr, ptr %s.addr, align 8
  %block_start323 = getelementptr inbounds %struct.internal_state, ptr %276, i32 0, i32 23
  %277 = load i64, ptr %block_start323, align 8
  %conv324 = trunc i64 %277 to i32
  %idxprom325 = zext i32 %conv324 to i64
  %arrayidx326 = getelementptr inbounds i8, ptr %275, i64 %idxprom325
  br label %cond.end328

cond.false327:                                    ; preds = %if.then317
  br label %cond.end328

cond.end328:                                      ; preds = %cond.false327, %cond.true321
  %cond329 = phi ptr [ %arrayidx326, %cond.true321 ], [ null, %cond.false327 ]
  %278 = load ptr, ptr %s.addr, align 8
  %strstart330 = getelementptr inbounds %struct.internal_state, ptr %278, i32 0, i32 27
  %279 = load i32, ptr %strstart330, align 4
  %conv331 = zext i32 %279 to i64
  %280 = load ptr, ptr %s.addr, align 8
  %block_start332 = getelementptr inbounds %struct.internal_state, ptr %280, i32 0, i32 23
  %281 = load i64, ptr %block_start332, align 8
  %sub333 = sub nsw i64 %conv331, %281
  call void @_tr_flush_block(ptr noundef %271, ptr noundef %cond329, i64 noundef %sub333, i32 noundef 1)
  %282 = load ptr, ptr %s.addr, align 8
  %strstart334 = getelementptr inbounds %struct.internal_state, ptr %282, i32 0, i32 27
  %283 = load i32, ptr %strstart334, align 4
  %conv335 = zext i32 %283 to i64
  %284 = load ptr, ptr %s.addr, align 8
  %block_start336 = getelementptr inbounds %struct.internal_state, ptr %284, i32 0, i32 23
  store i64 %conv335, ptr %block_start336, align 8
  %285 = load ptr, ptr %s.addr, align 8
  %strm337 = getelementptr inbounds %struct.internal_state, ptr %285, i32 0, i32 0
  %286 = load ptr, ptr %strm337, align 8
  call void @flush_pending(ptr noundef %286)
  %287 = load ptr, ptr %s.addr, align 8
  %strm338 = getelementptr inbounds %struct.internal_state, ptr %287, i32 0, i32 0
  %288 = load ptr, ptr %strm338, align 8
  %avail_out339 = getelementptr inbounds %struct.z_stream_s, ptr %288, i32 0, i32 4
  %289 = load i32, ptr %avail_out339, align 8
  %cmp340 = icmp eq i32 %289, 0
  br i1 %cmp340, label %if.then342, label %if.end343

if.then342:                                       ; preds = %cond.end328
  store i32 2, ptr %retval, align 4
  br label %return

if.end343:                                        ; preds = %cond.end328
  store i32 3, ptr %retval, align 4
  br label %return

if.end344:                                        ; preds = %cond.end313
  %290 = load ptr, ptr %s.addr, align 8
  %sym_next345 = getelementptr inbounds %struct.internal_state, ptr %290, i32 0, i32 50
  %291 = load i32, ptr %sym_next345, align 4
  %tobool346 = icmp ne i32 %291, 0
  br i1 %tobool346, label %if.then347, label %if.end374

if.then347:                                       ; preds = %if.end344
  %292 = load ptr, ptr %s.addr, align 8
  %293 = load ptr, ptr %s.addr, align 8
  %block_start348 = getelementptr inbounds %struct.internal_state, ptr %293, i32 0, i32 23
  %294 = load i64, ptr %block_start348, align 8
  %cmp349 = icmp sge i64 %294, 0
  br i1 %cmp349, label %cond.true351, label %cond.false357

cond.true351:                                     ; preds = %if.then347
  %295 = load ptr, ptr %s.addr, align 8
  %window352 = getelementptr inbounds %struct.internal_state, ptr %295, i32 0, i32 14
  %296 = load ptr, ptr %window352, align 8
  %297 = load ptr, ptr %s.addr, align 8
  %block_start353 = getelementptr inbounds %struct.internal_state, ptr %297, i32 0, i32 23
  %298 = load i64, ptr %block_start353, align 8
  %conv354 = trunc i64 %298 to i32
  %idxprom355 = zext i32 %conv354 to i64
  %arrayidx356 = getelementptr inbounds i8, ptr %296, i64 %idxprom355
  br label %cond.end358

cond.false357:                                    ; preds = %if.then347
  br label %cond.end358

cond.end358:                                      ; preds = %cond.false357, %cond.true351
  %cond359 = phi ptr [ %arrayidx356, %cond.true351 ], [ null, %cond.false357 ]
  %299 = load ptr, ptr %s.addr, align 8
  %strstart360 = getelementptr inbounds %struct.internal_state, ptr %299, i32 0, i32 27
  %300 = load i32, ptr %strstart360, align 4
  %conv361 = zext i32 %300 to i64
  %301 = load ptr, ptr %s.addr, align 8
  %block_start362 = getelementptr inbounds %struct.internal_state, ptr %301, i32 0, i32 23
  %302 = load i64, ptr %block_start362, align 8
  %sub363 = sub nsw i64 %conv361, %302
  call void @_tr_flush_block(ptr noundef %292, ptr noundef %cond359, i64 noundef %sub363, i32 noundef 0)
  %303 = load ptr, ptr %s.addr, align 8
  %strstart364 = getelementptr inbounds %struct.internal_state, ptr %303, i32 0, i32 27
  %304 = load i32, ptr %strstart364, align 4
  %conv365 = zext i32 %304 to i64
  %305 = load ptr, ptr %s.addr, align 8
  %block_start366 = getelementptr inbounds %struct.internal_state, ptr %305, i32 0, i32 23
  store i64 %conv365, ptr %block_start366, align 8
  %306 = load ptr, ptr %s.addr, align 8
  %strm367 = getelementptr inbounds %struct.internal_state, ptr %306, i32 0, i32 0
  %307 = load ptr, ptr %strm367, align 8
  call void @flush_pending(ptr noundef %307)
  %308 = load ptr, ptr %s.addr, align 8
  %strm368 = getelementptr inbounds %struct.internal_state, ptr %308, i32 0, i32 0
  %309 = load ptr, ptr %strm368, align 8
  %avail_out369 = getelementptr inbounds %struct.z_stream_s, ptr %309, i32 0, i32 4
  %310 = load i32, ptr %avail_out369, align 8
  %cmp370 = icmp eq i32 %310, 0
  br i1 %cmp370, label %if.then372, label %if.end373

if.then372:                                       ; preds = %cond.end358
  store i32 0, ptr %retval, align 4
  br label %return

if.end373:                                        ; preds = %cond.end358
  br label %if.end374

if.end374:                                        ; preds = %if.end373, %if.end344
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end374, %if.then372, %if.end343, %if.then342, %if.then262, %if.then196, %if.then4
  %311 = load i32, ptr %retval, align 4
  ret i32 %311
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
  %13 = load i32, ptr %w_size, align 8
  %sub = sub i32 %13, 262
  %cmp = icmp ugt i32 %11, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load ptr, ptr %s.addr, align 8
  %strstart3 = getelementptr inbounds %struct.internal_state, ptr %14, i32 0, i32 27
  %15 = load i32, ptr %strstart3, align 4
  %16 = load ptr, ptr %s.addr, align 8
  %w_size4 = getelementptr inbounds %struct.internal_state, ptr %16, i32 0, i32 11
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
  %prev7 = getelementptr inbounds %struct.internal_state, ptr %18, i32 0, i32 16
  %19 = load ptr, ptr %prev7, align 8
  store ptr %19, ptr %prev, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %20, i32 0, i32 13
  %21 = load i32, ptr %w_mask, align 8
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
  br i1 %97, label %do.body52, label %do.end, !llvm.loop !23

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
  br i1 %120, label %do.body, label %do.end135, !llvm.loop !24

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

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

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
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
