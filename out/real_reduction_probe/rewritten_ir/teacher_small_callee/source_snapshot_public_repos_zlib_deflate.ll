; ModuleID = './out/real_reduction_probe/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_zlib_deflate.prepared.ll'
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
  %3 = load ptr, ptr %strm.addr, align 8
  %cmp8 = icmp eq ptr %3, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %4 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 8
  %5 = load ptr, ptr %zalloc, align 8
  %cmp12 = icmp eq ptr %5, null
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %6 = load ptr, ptr %strm.addr, align 8
  %zalloc15 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 8
  store ptr @zcalloc, ptr %zalloc15, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 10
  store ptr null, ptr %opaque, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11
  %7 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 9
  %8 = load ptr, ptr %zfree, align 8
  %cmp17 = icmp eq ptr %8, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %9 = load ptr, ptr %strm.addr, align 8
  %zfree20 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 9
  store ptr @zcfree, ptr %zfree20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %10 = load i32, ptr %level.addr, align 4
  %cmp22 = icmp eq i32 %10, -1
  %spec.store.select = select i1 %cmp22, i32 6, i32 %10
  store i32 %spec.store.select, ptr %level.addr, align 4
  %11 = load i32, ptr %windowBits.addr, align 4
  %cmp26 = icmp slt i32 %11, 0
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end21
  store i32 0, ptr %wrap, align 4
  %12 = load i32, ptr %windowBits.addr, align 4
  %cmp29 = icmp slt i32 %12, -15
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  store i32 -2, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then28
  %13 = load i32, ptr %windowBits.addr, align 4
  %sub = sub nsw i32 0, %13
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end38

if.else:                                          ; preds = %if.end21
  %14 = load i32, ptr %windowBits.addr, align 4
  %cmp33 = icmp sgt i32 %14, 15
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.else
  store i32 2, ptr %wrap, align 4
  %15 = load i32, ptr %windowBits.addr, align 4
  %sub36 = add nsw i32 %15, -16
  store i32 %sub36, ptr %windowBits.addr, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35, %if.end32
  %16 = load i32, ptr %memLevel.addr, align 4
  %cmp39 = icmp slt i32 %16, 1
  %17 = load i32, ptr %memLevel.addr, align 4
  %cmp42 = icmp sgt i32 %17, 9
  %or.cond1 = select i1 %cmp39, i1 true, i1 %cmp42
  %or.cond1.not = xor i1 %or.cond1, true
  %18 = load i32, ptr %method.addr, align 4
  %cmp45.not = icmp eq i32 %18, 8
  %or.cond2 = select i1 %or.cond1.not, i1 %cmp45.not, i1 false
  %or.cond2.not = xor i1 %or.cond2, true
  %19 = load i32, ptr %windowBits.addr, align 4
  %cmp48 = icmp slt i32 %19, 8
  %or.cond3 = select i1 %or.cond2.not, i1 true, i1 %cmp48
  %20 = load i32, ptr %windowBits.addr, align 4
  %cmp51 = icmp sgt i32 %20, 15
  %or.cond4 = select i1 %or.cond3, i1 true, i1 %cmp51
  %21 = load i32, ptr %level.addr, align 4
  %cmp54 = icmp slt i32 %21, 0
  %or.cond5 = select i1 %or.cond4, i1 true, i1 %cmp54
  %22 = load i32, ptr %level.addr, align 4
  %cmp57 = icmp sgt i32 %22, 9
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %cmp57
  %23 = load i32, ptr %strategy.addr, align 4
  %cmp60 = icmp slt i32 %23, 0
  %or.cond7 = select i1 %or.cond6, i1 true, i1 %cmp60
  %24 = load i32, ptr %strategy.addr, align 4
  %cmp63 = icmp sgt i32 %24, 4
  %or.cond8 = select i1 %or.cond7, i1 true, i1 %cmp63
  br i1 %or.cond8, label %if.then70, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end38
  %25 = load i32, ptr %windowBits.addr, align 4
  %cmp66 = icmp ne i32 %25, 8
  %26 = load i32, ptr %wrap, align 4
  %cmp68.not = icmp eq i32 %26, 1
  %or.cond9 = select i1 %cmp66, i1 true, i1 %cmp68.not
  br i1 %or.cond9, label %if.end71, label %if.then70

if.then70:                                        ; preds = %lor.lhs.false65, %if.end38
  store i32 -2, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %lor.lhs.false65
  %27 = load i32, ptr %windowBits.addr, align 4
  %cmp72 = icmp eq i32 %27, 8
  %spec.store.select10 = select i1 %cmp72, i32 9, i32 %27
  store i32 %spec.store.select10, ptr %windowBits.addr, align 4
  %28 = load ptr, ptr %strm.addr, align 8
  %zalloc76 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 8
  %29 = load ptr, ptr %zalloc76, align 8
  %opaque77 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 10
  %30 = load ptr, ptr %opaque77, align 8
  %call = call ptr %29(ptr noundef %30, i32 noundef 1, i32 noundef 5968) #4
  store ptr %call, ptr %s, align 8
  %cmp78 = icmp eq ptr %call, null
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end71
  store i32 -4, ptr %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.end71
  %31 = load ptr, ptr %s, align 8
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %31, i1 false, i1 true, i1 false)
  %call82 = call ptr @__memset_chk(ptr noundef %31, i32 noundef 0, i64 noundef 5968, i64 noundef %32) #4
  %33 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %33, i64 0, i32 7
  store ptr %31, ptr %state, align 8
  store ptr %33, ptr %31, align 8
  %34 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 1
  store i32 42, ptr %status, align 8
  %35 = load i32, ptr %wrap, align 4
  %wrap84 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 6
  store i32 %35, ptr %wrap84, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 7
  store ptr null, ptr %gzhead, align 8
  %36 = load i32, ptr %windowBits.addr, align 4
  %37 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 12
  store i32 %36, ptr %w_bits, align 4
  %shl = shl i32 1, %36
  %w_size = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 11
  store i32 %shl, ptr %w_size, align 8
  %sub87 = add i32 %shl, -1
  %38 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 13
  store i32 %sub87, ptr %w_mask, align 8
  %39 = load i32, ptr %memLevel.addr, align 4
  %add = add i32 %39, 7
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 20
  store i32 %add, ptr %hash_bits, align 8
  %40 = load ptr, ptr %s, align 8
  %hash_bits88 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 20
  %41 = load i32, ptr %hash_bits88, align 8
  %shl89 = shl i32 1, %41
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 19
  store i32 %shl89, ptr %hash_size, align 4
  %sub91 = add i32 %shl89, -1
  %42 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 21
  store i32 %sub91, ptr %hash_mask, align 4
  %hash_bits92 = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 20
  %43 = load i32, ptr %hash_bits92, align 8
  %sub94 = add i32 %43, 2
  %div = udiv i32 %sub94, 3
  %44 = load ptr, ptr %s, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 22
  store i32 %div, ptr %hash_shift, align 8
  %45 = load ptr, ptr %strm.addr, align 8
  %zalloc95 = getelementptr inbounds %struct.z_stream_s, ptr %45, i64 0, i32 8
  %46 = load ptr, ptr %zalloc95, align 8
  %opaque96 = getelementptr inbounds %struct.z_stream_s, ptr %45, i64 0, i32 10
  %47 = load ptr, ptr %opaque96, align 8
  %48 = load ptr, ptr %s, align 8
  %w_size97 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 11
  %49 = load i32, ptr %w_size97, align 8
  %call98 = call ptr %46(ptr noundef %47, i32 noundef %49, i32 noundef 2) #4
  %window = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 14
  store ptr %call98, ptr %window, align 8
  %50 = load ptr, ptr %strm.addr, align 8
  %zalloc99 = getelementptr inbounds %struct.z_stream_s, ptr %50, i64 0, i32 8
  %51 = load ptr, ptr %zalloc99, align 8
  %opaque100 = getelementptr inbounds %struct.z_stream_s, ptr %50, i64 0, i32 10
  %52 = load ptr, ptr %opaque100, align 8
  %53 = load ptr, ptr %s, align 8
  %w_size101 = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 11
  %54 = load i32, ptr %w_size101, align 8
  %call102 = call ptr %51(ptr noundef %52, i32 noundef %54, i32 noundef 2) #4
  %prev = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 16
  store ptr %call102, ptr %prev, align 8
  %55 = load ptr, ptr %strm.addr, align 8
  %zalloc103 = getelementptr inbounds %struct.z_stream_s, ptr %55, i64 0, i32 8
  %56 = load ptr, ptr %zalloc103, align 8
  %opaque104 = getelementptr inbounds %struct.z_stream_s, ptr %55, i64 0, i32 10
  %57 = load ptr, ptr %opaque104, align 8
  %58 = load ptr, ptr %s, align 8
  %hash_size105 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 19
  %59 = load i32, ptr %hash_size105, align 4
  %call106 = call ptr %56(ptr noundef %57, i32 noundef %59, i32 noundef 2) #4
  %head = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 17
  store ptr %call106, ptr %head, align 8
  %high_water = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 59
  store i64 0, ptr %high_water, align 8
  %60 = load i32, ptr %memLevel.addr, align 4
  %add107 = add nsw i32 %60, 6
  %shl108 = shl i32 1, %add107
  %61 = load ptr, ptr %s, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 49
  store i32 %shl108, ptr %lit_bufsize, align 8
  %62 = load ptr, ptr %strm.addr, align 8
  %zalloc109 = getelementptr inbounds %struct.z_stream_s, ptr %62, i64 0, i32 8
  %63 = load ptr, ptr %zalloc109, align 8
  %opaque110 = getelementptr inbounds %struct.z_stream_s, ptr %62, i64 0, i32 10
  %64 = load ptr, ptr %opaque110, align 8
  %65 = load ptr, ptr %s, align 8
  %lit_bufsize111 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 49
  %66 = load i32, ptr %lit_bufsize111, align 8
  %call112 = call ptr %63(ptr noundef %64, i32 noundef %66, i32 noundef 4) #4
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 2
  store ptr %call112, ptr %pending_buf, align 8
  %lit_bufsize113 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 49
  %67 = load i32, ptr %lit_bufsize113, align 8
  %conv114 = zext i32 %67 to i64
  %mul = shl nuw nsw i64 %conv114, 2
  %68 = load ptr, ptr %s, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 3
  store i64 %mul, ptr %pending_buf_size, align 8
  %window115 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 14
  %69 = load ptr, ptr %window115, align 8
  %cmp116 = icmp eq ptr %69, null
  br i1 %cmp116, label %if.then130, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %if.end81
  %70 = load ptr, ptr %s, align 8
  %prev119 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 16
  %71 = load ptr, ptr %prev119, align 8
  %cmp120 = icmp eq ptr %71, null
  br i1 %cmp120, label %if.then130, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false118
  %72 = load ptr, ptr %s, align 8
  %head123 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 17
  %73 = load ptr, ptr %head123, align 8
  %cmp124 = icmp eq ptr %73, null
  br i1 %cmp124, label %if.then130, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false122
  %74 = load ptr, ptr %s, align 8
  %pending_buf127 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 2
  %75 = load ptr, ptr %pending_buf127, align 8
  %cmp128 = icmp eq ptr %75, null
  br i1 %cmp128, label %if.then130, label %if.end134

if.then130:                                       ; preds = %lor.lhs.false126, %lor.lhs.false122, %lor.lhs.false118, %if.end81
  %76 = load ptr, ptr %s, align 8
  %status131 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 1
  store i32 666, ptr %status131, align 8
  %77 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 8
  %78 = load ptr, ptr %strm.addr, align 8
  %msg132 = getelementptr inbounds %struct.z_stream_s, ptr %78, i64 0, i32 6
  store ptr %77, ptr %msg132, align 8
  %call133 = call i32 @deflateEnd(ptr noundef %78)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end134:                                        ; preds = %lor.lhs.false126
  %79 = load ptr, ptr %s, align 8
  %pending_buf135 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 2
  %80 = load ptr, ptr %pending_buf135, align 8
  %lit_bufsize136 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 49
  %81 = load i32, ptr %lit_bufsize136, align 8
  %idx.ext = zext i32 %81 to i64
  %add.ptr = getelementptr inbounds i8, ptr %80, i64 %idx.ext
  %82 = load ptr, ptr %s, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 48
  store ptr %add.ptr, ptr %sym_buf, align 8
  %lit_bufsize137 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 49
  %83 = load i32, ptr %lit_bufsize137, align 8
  %84 = mul i32 %83, 3
  %mul139 = add i32 %84, -3
  %85 = load ptr, ptr %s, align 8
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 51
  store i32 %mul139, ptr %sym_end, align 8
  %86 = load i32, ptr %level.addr, align 4
  %level140 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 33
  store i32 %86, ptr %level140, align 4
  %87 = load i32, ptr %strategy.addr, align 4
  %88 = load ptr, ptr %s, align 8
  %strategy141 = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 34
  store i32 %87, ptr %strategy141, align 8
  %89 = load i32, ptr %method.addr, align 4
  %conv142 = trunc i32 %89 to i8
  %method143 = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 9
  store i8 %conv142, ptr %method143, align 8
  %90 = load ptr, ptr %strm.addr, align 8
  %call144 = call i32 @deflateReset(ptr noundef %90)
  store i32 %call144, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end134, %if.then130, %if.then80, %if.then70, %if.then31, %if.then10, %if.then
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
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
  %strm.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %status1 = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 1
  %2 = load i32, ptr %status1, align 8
  store i32 %2, ptr %status, align 4
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %pending_buf, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 9
  %5 = load ptr, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %opaque, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %7 = load ptr, ptr %state5, align 8
  %pending_buf6 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %pending_buf6, align 8
  call void %5(ptr noundef %6, ptr noundef %8) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %9 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 7
  %10 = load ptr, ptr %state8, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 17
  %11 = load ptr, ptr %head, align 8
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end7
  %12 = load ptr, ptr %strm.addr, align 8
  %zfree11 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 9
  %13 = load ptr, ptr %zfree11, align 8
  %opaque12 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %opaque12, align 8
  %state13 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 7
  %15 = load ptr, ptr %state13, align 8
  %head14 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 17
  %16 = load ptr, ptr %head14, align 8
  call void %13(ptr noundef %14, ptr noundef %16) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end7
  %17 = load ptr, ptr %strm.addr, align 8
  %state16 = getelementptr inbounds %struct.z_stream_s, ptr %17, i64 0, i32 7
  %18 = load ptr, ptr %state16, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 16
  %19 = load ptr, ptr %prev, align 8
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end15
  %20 = load ptr, ptr %strm.addr, align 8
  %zfree19 = getelementptr inbounds %struct.z_stream_s, ptr %20, i64 0, i32 9
  %21 = load ptr, ptr %zfree19, align 8
  %opaque20 = getelementptr inbounds %struct.z_stream_s, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %opaque20, align 8
  %state21 = getelementptr inbounds %struct.z_stream_s, ptr %20, i64 0, i32 7
  %23 = load ptr, ptr %state21, align 8
  %prev22 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 16
  %24 = load ptr, ptr %prev22, align 8
  call void %21(ptr noundef %22, ptr noundef %24) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15
  %25 = load ptr, ptr %strm.addr, align 8
  %state24 = getelementptr inbounds %struct.z_stream_s, ptr %25, i64 0, i32 7
  %26 = load ptr, ptr %state24, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 14
  %27 = load ptr, ptr %window, align 8
  %tobool25.not = icmp eq ptr %27, null
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end23
  %28 = load ptr, ptr %strm.addr, align 8
  %zfree27 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 9
  %29 = load ptr, ptr %zfree27, align 8
  %opaque28 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 10
  %30 = load ptr, ptr %opaque28, align 8
  %state29 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 7
  %31 = load ptr, ptr %state29, align 8
  %window30 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 14
  %32 = load ptr, ptr %window30, align 8
  call void %29(ptr noundef %30, ptr noundef %32) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23
  %33 = load ptr, ptr %strm.addr, align 8
  %zfree32 = getelementptr inbounds %struct.z_stream_s, ptr %33, i64 0, i32 9
  %34 = load ptr, ptr %zfree32, align 8
  %opaque33 = getelementptr inbounds %struct.z_stream_s, ptr %33, i64 0, i32 10
  %35 = load ptr, ptr %opaque33, align 8
  %state34 = getelementptr inbounds %struct.z_stream_s, ptr %33, i64 0, i32 7
  %36 = load ptr, ptr %state34, align 8
  call void %34(ptr noundef %35, ptr noundef %36) #4
  %37 = load ptr, ptr %strm.addr, align 8
  %state35 = getelementptr inbounds %struct.z_stream_s, ptr %37, i64 0, i32 7
  store ptr null, ptr %state35, align 8
  %38 = load i32, ptr %status, align 4
  %cmp = icmp eq i32 %38, 113
  %cond = select i1 %cmp, i32 -3, i32 0
  br label %return

return:                                           ; preds = %entry, %if.end31
  %storemerge = phi i32 [ %cond, %if.end31 ], [ -2, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateReset(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @deflateResetKeep(ptr noundef %strm)
  store i32 %call, ptr %ret, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  call void @lm_init(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %ret, align 4
  ret i32 %2
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
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp ne i32 %call, 0
  %0 = load ptr, ptr %dictionary.addr, align 8
  %cmp = icmp eq ptr %0, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %s, align 8
  %wrap1 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 6
  %3 = load i32, ptr %wrap1, align 8
  store i32 %3, ptr %wrap, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then8, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %4 = load i32, ptr %wrap, align 4
  %cmp4 = icmp eq i32 %4, 1
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false6

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %status, align 8
  %cmp5.not = icmp eq i32 %6, 42
  br i1 %cmp5.not, label %lor.lhs.false6, label %if.then8

lor.lhs.false6:                                   ; preds = %land.lhs.true, %lor.lhs.false3
  %7 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 29
  %8 = load i32, ptr %lookahead, align 4
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false6, %land.lhs.true, %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false6
  %9 = load i32, ptr %wrap, align 4
  %cmp10 = icmp eq i32 %9, 1
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  %10 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 12
  %11 = load i64, ptr %adler, align 8
  %12 = load ptr, ptr %dictionary.addr, align 8
  %13 = load i32, ptr %dictLength.addr, align 4
  %call12 = call i64 @adler32(i64 noundef %11, ptr noundef %12, i32 noundef %13) #4
  %adler13 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 12
  store i64 %call12, ptr %adler13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %14 = load ptr, ptr %s, align 8
  %wrap15 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 6
  store i32 0, ptr %wrap15, align 8
  %15 = load i32, ptr %dictLength.addr, align 4
  %w_size = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 11
  %16 = load i32, ptr %w_size, align 8
  %cmp16.not = icmp ult i32 %15, %16
  br i1 %cmp16.not, label %if.end29, label %if.then17

if.then17:                                        ; preds = %if.end14
  %17 = load i32, ptr %wrap, align 4
  %cmp18 = icmp eq i32 %17, 0
  br i1 %cmp18, label %do.body, label %if.end25

do.body:                                          ; preds = %if.then17
  %18 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 17
  %19 = load ptr, ptr %head, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 19
  %20 = load i32, ptr %hash_size, align 4
  %sub = add i32 %20, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %19, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  %21 = load ptr, ptr %s, align 8
  %head20 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 17
  %22 = load ptr, ptr %head20, align 8
  %hash_size21 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 19
  %23 = load i32, ptr %hash_size21, align 4
  %sub22 = add i32 %23, -1
  %conv = zext i32 %sub22 to i64
  %mul = shl nuw nsw i64 %conv, 1
  %24 = load ptr, ptr %s, align 8
  %head23 = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 17
  %25 = load ptr, ptr %head23, align 8
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %25, i1 false, i1 true, i1 false)
  %call24 = call ptr @__memset_chk(ptr noundef %22, i32 noundef 0, i64 noundef %mul, i64 noundef %26) #4
  %slid = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 60
  store i32 0, ptr %slid, align 8
  %27 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 27
  store i32 0, ptr %strstart, align 4
  %block_start = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 23
  store i64 0, ptr %block_start, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 55
  store i32 0, ptr %insert, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.body, %if.then17
  %28 = load i32, ptr %dictLength.addr, align 4
  %29 = load ptr, ptr %s, align 8
  %w_size26 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 11
  %30 = load i32, ptr %w_size26, align 8
  %sub27 = sub i32 %28, %30
  %31 = load ptr, ptr %dictionary.addr, align 8
  %idx.ext = zext i32 %sub27 to i64
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %idx.ext
  store ptr %add.ptr, ptr %dictionary.addr, align 8
  %32 = load ptr, ptr %s, align 8
  %w_size28 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 11
  %33 = load i32, ptr %w_size28, align 8
  store i32 %33, ptr %dictLength.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end25, %if.end14
  %34 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %34, i64 0, i32 1
  %35 = load i32, ptr %avail_in, align 8
  store i32 %35, ptr %avail, align 4
  %36 = load ptr, ptr %34, align 8
  store ptr %36, ptr %next, align 8
  %37 = load i32, ptr %dictLength.addr, align 4
  %38 = load ptr, ptr %strm.addr, align 8
  %avail_in30 = getelementptr inbounds %struct.z_stream_s, ptr %38, i64 0, i32 1
  store i32 %37, ptr %avail_in30, align 8
  %39 = load ptr, ptr %dictionary.addr, align 8
  store ptr %39, ptr %38, align 8
  %40 = load ptr, ptr %s, align 8
  call void @fill_window(ptr noundef %40)
  br label %while.cond

while.cond:                                       ; preds = %do.end57, %if.end29
  %41 = load ptr, ptr %s, align 8
  %lookahead32 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 29
  %42 = load i32, ptr %lookahead32, align 4
  %cmp33 = icmp ugt i32 %42, 2
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load ptr, ptr %s, align 8
  %strstart35 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 27
  %44 = load i32, ptr %strstart35, align 4
  store i32 %44, ptr %str, align 4
  %lookahead36 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 29
  %45 = load i32, ptr %lookahead36, align 4
  %sub37 = add i32 %45, -2
  store i32 %sub37, ptr %n, align 4
  br label %do.body38

do.body38:                                        ; preds = %do.body38, %while.body
  %46 = load ptr, ptr %s, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 18
  %47 = load i32, ptr %ins_h, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 22
  %48 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %47, %48
  %window = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 14
  %49 = load ptr, ptr %window, align 8
  %50 = load i32, ptr %str, align 4
  %sub39 = add i32 %50, 2
  %idxprom40 = zext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %49, i64 %idxprom40
  %51 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %51 to i32
  %xor = xor i32 %shl, %conv42
  %52 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 21
  %53 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %53
  %ins_h43 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 18
  store i32 %and, ptr %ins_h43, align 8
  %head44 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 17
  %54 = load ptr, ptr %head44, align 8
  %55 = load ptr, ptr %s, align 8
  %ins_h45 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 18
  %56 = load i32, ptr %ins_h45, align 8
  %idxprom46 = zext i32 %56 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %54, i64 %idxprom46
  %57 = load i16, ptr %arrayidx47, align 2
  %prev = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 16
  %58 = load ptr, ptr %prev, align 8
  %59 = load i32, ptr %str, align 4
  %60 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 13
  %61 = load i32, ptr %w_mask, align 8
  %and48 = and i32 %59, %61
  %idxprom49 = zext i32 %and48 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %58, i64 %idxprom49
  store i16 %57, ptr %arrayidx50, align 2
  %62 = load i32, ptr %str, align 4
  %conv51 = trunc i32 %62 to i16
  %63 = load ptr, ptr %s, align 8
  %head52 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 17
  %64 = load ptr, ptr %head52, align 8
  %ins_h53 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 18
  %65 = load i32, ptr %ins_h53, align 8
  %idxprom54 = zext i32 %65 to i64
  %arrayidx55 = getelementptr inbounds i16, ptr %64, i64 %idxprom54
  store i16 %conv51, ptr %arrayidx55, align 2
  %66 = load i32, ptr %str, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %str, align 4
  %67 = load i32, ptr %n, align 4
  %dec = add i32 %67, -1
  store i32 %dec, ptr %n, align 4
  %tobool56.not = icmp eq i32 %dec, 0
  br i1 %tobool56.not, label %do.end57, label %do.body38, !llvm.loop !6

do.end57:                                         ; preds = %do.body38
  %68 = load i32, ptr %str, align 4
  %69 = load ptr, ptr %s, align 8
  %strstart58 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 27
  store i32 %68, ptr %strstart58, align 4
  %lookahead59 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 29
  store i32 2, ptr %lookahead59, align 4
  call void @fill_window(ptr noundef %69)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %70 = load ptr, ptr %s, align 8
  %lookahead60 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 29
  %71 = load i32, ptr %lookahead60, align 4
  %strstart61 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 27
  %72 = load i32, ptr %strstart61, align 4
  %add62 = add i32 %72, %71
  store i32 %add62, ptr %strstart61, align 4
  %73 = load ptr, ptr %s, align 8
  %strstart63 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 27
  %74 = load i32, ptr %strstart63, align 4
  %conv64 = zext i32 %74 to i64
  %block_start65 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 23
  store i64 %conv64, ptr %block_start65, align 8
  %lookahead66 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 29
  %75 = load i32, ptr %lookahead66, align 4
  %76 = load ptr, ptr %s, align 8
  %insert67 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 55
  store i32 %75, ptr %insert67, align 4
  %lookahead68 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 29
  store i32 0, ptr %lookahead68, align 4
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 30
  store i32 2, ptr %prev_length, align 8
  %77 = load ptr, ptr %s, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 24
  store i32 2, ptr %match_length, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 26
  store i32 0, ptr %match_available, align 8
  %78 = load ptr, ptr %next, align 8
  %79 = load ptr, ptr %strm.addr, align 8
  store ptr %78, ptr %79, align 8
  %80 = load i32, ptr %avail, align 4
  %avail_in70 = getelementptr inbounds %struct.z_stream_s, ptr %79, i64 0, i32 1
  store i32 %80, ptr %avail_in70, align 8
  %81 = load i32, ptr %wrap, align 4
  %82 = load ptr, ptr %s, align 8
  %wrap71 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 6
  store i32 %81, ptr %wrap71, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %83 = load i32, ptr %retval, align 4
  ret i32 %83
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @deflateStateCheck(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
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
  %state = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %state, align 8
  store ptr %5, ptr %s, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then30, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %6 = load ptr, ptr %s, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %strm.addr, align 8
  %cmp7.not = icmp eq ptr %7, %8
  br i1 %cmp7.not, label %lor.lhs.false8, label %if.then30

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %9 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 1
  %10 = load i32, ptr %status, align 8
  %cmp9.not = icmp eq i32 %10, 42
  br i1 %cmp9.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false8
  %11 = load ptr, ptr %s, align 8
  %status10 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 1
  %12 = load i32, ptr %status10, align 8
  %cmp11.not = icmp eq i32 %12, 57
  br i1 %cmp11.not, label %if.end31, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %13 = load ptr, ptr %s, align 8
  %status13 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 1
  %14 = load i32, ptr %status13, align 8
  %cmp14.not = icmp eq i32 %14, 69
  br i1 %cmp14.not, label %if.end31, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %15 = load ptr, ptr %s, align 8
  %status16 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %16 = load i32, ptr %status16, align 8
  %cmp17.not = icmp eq i32 %16, 73
  br i1 %cmp17.not, label %if.end31, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %17 = load ptr, ptr %s, align 8
  %status19 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 1
  %18 = load i32, ptr %status19, align 8
  %cmp20.not = icmp eq i32 %18, 91
  br i1 %cmp20.not, label %if.end31, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %19 = load ptr, ptr %s, align 8
  %status22 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 1
  %20 = load i32, ptr %status22, align 8
  %cmp23.not = icmp eq i32 %20, 103
  br i1 %cmp23.not, label %if.end31, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %21 = load ptr, ptr %s, align 8
  %status25 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 1
  %22 = load i32, ptr %status25, align 8
  %cmp26.not = icmp eq i32 %22, 113
  br i1 %cmp26.not, label %if.end31, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %23 = load ptr, ptr %s, align 8
  %status28 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 1
  %24 = load i32, ptr %status28, align 8
  %cmp29.not = icmp eq i32 %24, 666
  br i1 %cmp29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %land.lhs.true27, %lor.lhs.false5, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true27, %land.lhs.true24, %land.lhs.true21, %land.lhs.true18, %land.lhs.true15, %land.lhs.true12, %land.lhs.true, %lor.lhs.false8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then30, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @fill_window(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %more = alloca i32, align 4
  %wsize = alloca i32, align 4
  %str = alloca i32, align 4
  %curr = alloca i64, align 8
  %init = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 11
  %0 = load i32, ptr %w_size, align 8
  store i32 %0, ptr %wsize, align 4
  br label %do.body

do.body:                                          ; preds = %land.rhs, %entry
  %1 = load ptr, ptr %s.addr, align 8
  %window_size = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 15
  %2 = load i64, ptr %window_size, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 29
  %3 = load i32, ptr %lookahead, align 4
  %conv = zext i32 %3 to i64
  %strstart = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 27
  %4 = load i32, ptr %strstart, align 4
  %conv1 = zext i32 %4 to i64
  %5 = add nuw nsw i64 %conv, %conv1
  %sub2 = sub i64 %2, %5
  %conv3 = trunc i64 %sub2 to i32
  store i32 %conv3, ptr %more, align 4
  %6 = load ptr, ptr %s.addr, align 8
  %strstart4 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  %7 = load i32, ptr %strstart4, align 4
  %8 = load i32, ptr %wsize, align 4
  %w_size5 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 11
  %9 = load i32, ptr %w_size5, align 8
  %sub6 = add i32 %9, -262
  %add = add i32 %8, %sub6
  %cmp.not = icmp ult i32 %7, %add
  br i1 %cmp.not, label %if.end24, label %if.then

if.then:                                          ; preds = %do.body
  %10 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 14
  %11 = load ptr, ptr %window, align 8
  %12 = load i32, ptr %wsize, align 4
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %13 = load i32, ptr %more, align 4
  %sub9 = sub i32 %12, %13
  %conv10 = zext i32 %sub9 to i64
  %14 = load ptr, ptr %s.addr, align 8
  %window11 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 14
  %15 = load ptr, ptr %window11, align 8
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %11, ptr noundef %add.ptr, i64 noundef %conv10, i64 noundef %16) #4
  %17 = load i32, ptr %wsize, align 4
  %match_start = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 28
  %18 = load i32, ptr %match_start, align 8
  %sub12 = sub i32 %18, %17
  store i32 %sub12, ptr %match_start, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %strstart13 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 27
  %20 = load i32, ptr %strstart13, align 4
  %sub14 = sub i32 %20, %17
  store i32 %sub14, ptr %strstart13, align 4
  %21 = load i32, ptr %wsize, align 4
  %conv15 = zext i32 %21 to i64
  %22 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 23
  %23 = load i64, ptr %block_start, align 8
  %sub16 = sub nsw i64 %23, %conv15
  store i64 %sub16, ptr %block_start, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 55
  %24 = load i32, ptr %insert, align 4
  %25 = load ptr, ptr %s.addr, align 8
  %strstart17 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 27
  %26 = load i32, ptr %strstart17, align 4
  %cmp18 = icmp ugt i32 %24, %26
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then
  %27 = load ptr, ptr %s.addr, align 8
  %strstart21 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 27
  %28 = load i32, ptr %strstart21, align 4
  %insert22 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 55
  store i32 %28, ptr %insert22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then
  %29 = load ptr, ptr %s.addr, align 8
  call void @slide_hash(ptr noundef %29)
  %30 = load i32, ptr %wsize, align 4
  %31 = load i32, ptr %more, align 4
  %add23 = add i32 %31, %30
  store i32 %add23, ptr %more, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end, %do.body
  %32 = load ptr, ptr %s.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %33, i64 0, i32 1
  %34 = load i32, ptr %avail_in, align 8
  %cmp25 = icmp eq i32 %34, 0
  br i1 %cmp25, label %do.end, label %if.end28

if.end28:                                         ; preds = %if.end24
  %35 = load ptr, ptr %s.addr, align 8
  %36 = load ptr, ptr %35, align 8
  %window30 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 14
  %37 = load ptr, ptr %window30, align 8
  %strstart31 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 27
  %38 = load i32, ptr %strstart31, align 4
  %idx.ext32 = zext i32 %38 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %37, i64 %idx.ext32
  %39 = load ptr, ptr %s.addr, align 8
  %lookahead34 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 29
  %40 = load i32, ptr %lookahead34, align 4
  %idx.ext35 = zext i32 %40 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr33, i64 %idx.ext35
  %41 = load i32, ptr %more, align 4
  %call37 = call i32 @read_buf(ptr noundef %36, ptr noundef %add.ptr36, i32 noundef %41)
  %42 = load ptr, ptr %s.addr, align 8
  %lookahead38 = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 29
  %43 = load i32, ptr %lookahead38, align 4
  %add39 = add i32 %43, %call37
  store i32 %add39, ptr %lookahead38, align 4
  %insert41 = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 55
  %44 = load i32, ptr %insert41, align 4
  %add42 = add i32 %add39, %44
  %cmp43 = icmp ugt i32 %add42, 2
  br i1 %cmp43, label %if.then45, label %do.cond

if.then45:                                        ; preds = %if.end28
  %45 = load ptr, ptr %s.addr, align 8
  %strstart46 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 27
  %46 = load i32, ptr %strstart46, align 4
  %insert47 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 55
  %47 = load i32, ptr %insert47, align 4
  %sub48 = sub i32 %46, %47
  store i32 %sub48, ptr %str, align 4
  %48 = load ptr, ptr %s.addr, align 8
  %window49 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 14
  %49 = load ptr, ptr %window49, align 8
  %idxprom = zext i32 %sub48 to i64
  %arrayidx = getelementptr inbounds i8, ptr %49, i64 %idxprom
  %50 = load i8, ptr %arrayidx, align 1
  %conv50 = zext i8 %50 to i32
  %51 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 18
  store i32 %conv50, ptr %ins_h, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 22
  %52 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %conv50, %52
  %window52 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 14
  %53 = load ptr, ptr %window52, align 8
  %54 = load i32, ptr %str, align 4
  %add53 = add i32 %54, 1
  %idxprom54 = zext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds i8, ptr %53, i64 %idxprom54
  %55 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %55 to i32
  %xor = xor i32 %shl, %conv56
  %56 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 21
  %57 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %57
  %ins_h57 = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 18
  store i32 %and, ptr %ins_h57, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then45
  %58 = load ptr, ptr %s.addr, align 8
  %insert58 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 55
  %59 = load i32, ptr %insert58, align 4
  %tobool.not = icmp eq i32 %59, 0
  br i1 %tobool.not, label %do.cond, label %while.body

while.body:                                       ; preds = %while.cond
  %60 = load ptr, ptr %s.addr, align 8
  %ins_h59 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 18
  %61 = load i32, ptr %ins_h59, align 8
  %hash_shift60 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 22
  %62 = load i32, ptr %hash_shift60, align 8
  %shl61 = shl i32 %61, %62
  %window62 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 14
  %63 = load ptr, ptr %window62, align 8
  %64 = load i32, ptr %str, align 4
  %sub64 = add i32 %64, 2
  %idxprom65 = zext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds i8, ptr %63, i64 %idxprom65
  %65 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %65 to i32
  %xor68 = xor i32 %shl61, %conv67
  %66 = load ptr, ptr %s.addr, align 8
  %hash_mask69 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 21
  %67 = load i32, ptr %hash_mask69, align 4
  %and70 = and i32 %xor68, %67
  %ins_h71 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 18
  store i32 %and70, ptr %ins_h71, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 17
  %68 = load ptr, ptr %head, align 8
  %69 = load ptr, ptr %s.addr, align 8
  %ins_h72 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 18
  %70 = load i32, ptr %ins_h72, align 8
  %idxprom73 = zext i32 %70 to i64
  %arrayidx74 = getelementptr inbounds i16, ptr %68, i64 %idxprom73
  %71 = load i16, ptr %arrayidx74, align 2
  %prev = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 16
  %72 = load ptr, ptr %prev, align 8
  %73 = load i32, ptr %str, align 4
  %74 = load ptr, ptr %s.addr, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 13
  %75 = load i32, ptr %w_mask, align 8
  %and75 = and i32 %73, %75
  %idxprom76 = zext i32 %and75 to i64
  %arrayidx77 = getelementptr inbounds i16, ptr %72, i64 %idxprom76
  store i16 %71, ptr %arrayidx77, align 2
  %76 = load i32, ptr %str, align 4
  %conv78 = trunc i32 %76 to i16
  %77 = load ptr, ptr %s.addr, align 8
  %head79 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 17
  %78 = load ptr, ptr %head79, align 8
  %ins_h80 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 18
  %79 = load i32, ptr %ins_h80, align 8
  %idxprom81 = zext i32 %79 to i64
  %arrayidx82 = getelementptr inbounds i16, ptr %78, i64 %idxprom81
  store i16 %conv78, ptr %arrayidx82, align 2
  %80 = load i32, ptr %str, align 4
  %inc = add i32 %80, 1
  store i32 %inc, ptr %str, align 4
  %81 = load ptr, ptr %s.addr, align 8
  %insert83 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 55
  %82 = load i32, ptr %insert83, align 4
  %dec = add i32 %82, -1
  store i32 %dec, ptr %insert83, align 4
  %lookahead84 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 29
  %83 = load i32, ptr %lookahead84, align 4
  %84 = load ptr, ptr %s.addr, align 8
  %insert85 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 55
  %85 = load i32, ptr %insert85, align 4
  %add86 = add i32 %83, %85
  %cmp87 = icmp ult i32 %add86, 3
  br i1 %cmp87, label %do.cond, label %while.cond, !llvm.loop !9

do.cond:                                          ; preds = %if.end28, %while.body, %while.cond
  %86 = load ptr, ptr %s.addr, align 8
  %lookahead92 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 29
  %87 = load i32, ptr %lookahead92, align 4
  %cmp93 = icmp ult i32 %87, 262
  br i1 %cmp93, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.cond
  %88 = load ptr, ptr %s.addr, align 8
  %89 = load ptr, ptr %88, align 8
  %avail_in96 = getelementptr inbounds %struct.z_stream_s, ptr %89, i64 0, i32 1
  %90 = load i32, ptr %avail_in96, align 8
  %cmp97 = icmp ne i32 %90, 0
  br i1 %cmp97, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond, %if.end24, %land.rhs
  %91 = load ptr, ptr %s.addr, align 8
  %high_water = getelementptr inbounds %struct.internal_state, ptr %91, i64 0, i32 59
  %92 = load i64, ptr %high_water, align 8
  %window_size99 = getelementptr inbounds %struct.internal_state, ptr %91, i64 0, i32 15
  %93 = load i64, ptr %window_size99, align 8
  %cmp100 = icmp ult i64 %92, %93
  br i1 %cmp100, label %if.then102, label %if.end158

if.then102:                                       ; preds = %do.end
  %94 = load ptr, ptr %s.addr, align 8
  %strstart103 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 27
  %95 = load i32, ptr %strstart103, align 4
  %conv104 = zext i32 %95 to i64
  %lookahead105 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 29
  %96 = load i32, ptr %lookahead105, align 4
  %conv106 = zext i32 %96 to i64
  %add107 = add nuw nsw i64 %conv104, %conv106
  store i64 %add107, ptr %curr, align 8
  %97 = load ptr, ptr %s.addr, align 8
  %high_water108 = getelementptr inbounds %struct.internal_state, ptr %97, i64 0, i32 59
  %98 = load i64, ptr %high_water108, align 8
  %cmp109 = icmp ult i64 %98, %add107
  br i1 %cmp109, label %if.then111, label %if.else

if.then111:                                       ; preds = %if.then102
  %99 = load ptr, ptr %s.addr, align 8
  %window_size112 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 15
  %100 = load i64, ptr %window_size112, align 8
  %101 = load i64, ptr %curr, align 8
  %sub113 = sub i64 %100, %101
  %cmp114 = icmp ugt i64 %sub113, 258
  %spec.select = select i1 %cmp114, i64 258, i64 %sub113
  store i64 %spec.select, ptr %init, align 8
  %102 = load ptr, ptr %s.addr, align 8
  %window118 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 14
  %103 = load ptr, ptr %window118, align 8
  %104 = load i64, ptr %curr, align 8
  %add.ptr119 = getelementptr inbounds i8, ptr %103, i64 %104
  %conv121 = and i64 %spec.select, 4294967295
  %add.ptr123 = getelementptr inbounds i8, ptr %103, i64 %104
  %105 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr123, i1 false, i1 true, i1 false)
  %call124 = call ptr @__memset_chk(ptr noundef %add.ptr119, i32 noundef 0, i64 noundef %conv121, i64 noundef %105) #4
  %106 = load i64, ptr %init, align 8
  %add125 = add i64 %104, %106
  %107 = load ptr, ptr %s.addr, align 8
  %high_water126 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 59
  store i64 %add125, ptr %high_water126, align 8
  br label %if.end158

if.else:                                          ; preds = %if.then102
  %108 = load ptr, ptr %s.addr, align 8
  %high_water127 = getelementptr inbounds %struct.internal_state, ptr %108, i64 0, i32 59
  %109 = load i64, ptr %high_water127, align 8
  %110 = load i64, ptr %curr, align 8
  %add128 = add i64 %110, 258
  %cmp129 = icmp ult i64 %109, %add128
  br i1 %cmp129, label %if.then131, label %if.end158

if.then131:                                       ; preds = %if.else
  %111 = load i64, ptr %curr, align 8
  %add132 = add i64 %111, 258
  %112 = load ptr, ptr %s.addr, align 8
  %high_water133 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 59
  %113 = load i64, ptr %high_water133, align 8
  %sub134 = sub i64 %add132, %113
  store i64 %sub134, ptr %init, align 8
  %window_size135 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 15
  %114 = load i64, ptr %window_size135, align 8
  %115 = load ptr, ptr %s.addr, align 8
  %high_water136 = getelementptr inbounds %struct.internal_state, ptr %115, i64 0, i32 59
  %116 = load i64, ptr %high_water136, align 8
  %sub137 = sub i64 %114, %116
  %cmp138 = icmp ugt i64 %sub134, %sub137
  br i1 %cmp138, label %if.then140, label %if.end144

if.then140:                                       ; preds = %if.then131
  %117 = load ptr, ptr %s.addr, align 8
  %window_size141 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 15
  %118 = load i64, ptr %window_size141, align 8
  %high_water142 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 59
  %119 = load i64, ptr %high_water142, align 8
  %sub143 = sub i64 %118, %119
  store i64 %sub143, ptr %init, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then140, %if.then131
  %120 = load ptr, ptr %s.addr, align 8
  %window145 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 14
  %121 = load ptr, ptr %window145, align 8
  %high_water146 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 59
  %122 = load i64, ptr %high_water146, align 8
  %add.ptr147 = getelementptr inbounds i8, ptr %121, i64 %122
  %123 = load i64, ptr %init, align 8
  %conv149 = and i64 %123, 4294967295
  %124 = load ptr, ptr %s.addr, align 8
  %window150 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 14
  %125 = load ptr, ptr %window150, align 8
  %high_water151 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 59
  %126 = load i64, ptr %high_water151, align 8
  %add.ptr152 = getelementptr inbounds i8, ptr %125, i64 %126
  %127 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr152, i1 false, i1 true, i1 false)
  %call153 = call ptr @__memset_chk(ptr noundef %add.ptr147, i32 noundef 0, i64 noundef %conv149, i64 noundef %127) #4
  %128 = load i64, ptr %init, align 8
  %129 = load ptr, ptr %s.addr, align 8
  %high_water154 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 59
  %130 = load i64, ptr %high_water154, align 8
  %add155 = add i64 %130, %128
  store i64 %add155, ptr %high_water154, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then111, %if.end144, %if.else, %do.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateGetDictionary(ptr noundef %strm, ptr noundef %dictionary, ptr noundef %dictLength) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %dictionary.addr = alloca ptr, align 8
  %dictLength.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %dictionary, ptr %dictionary.addr, align 8
  store ptr %dictLength, ptr %dictLength.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 27
  %2 = load i32, ptr %strstart, align 4
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 29
  %3 = load i32, ptr %lookahead, align 4
  %add = add i32 %2, %3
  store i32 %add, ptr %len, align 4
  %4 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 11
  %5 = load i32, ptr %w_size, align 8
  %cmp = icmp ugt i32 %add, %5
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %s, align 8
  %w_size2 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 11
  %7 = load i32, ptr %w_size2, align 8
  store i32 %7, ptr %len, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %8 = load ptr, ptr %dictionary.addr, align 8
  %cmp4.not = icmp eq ptr %8, null
  %9 = load i32, ptr %len, align 4
  %tobool5.not = icmp eq i32 %9, 0
  %or.cond = select i1 %cmp4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.end3
  %10 = load ptr, ptr %dictionary.addr, align 8
  %11 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 14
  %12 = load ptr, ptr %window, align 8
  %strstart7 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 27
  %13 = load i32, ptr %strstart7, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  %14 = load ptr, ptr %s, align 8
  %lookahead8 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 29
  %15 = load i32, ptr %lookahead8, align 4
  %idx.ext9 = zext i32 %15 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext9
  %16 = load i32, ptr %len, align 4
  %idx.ext11 = zext i32 %16 to i64
  %idx.neg = sub nsw i64 0, %idx.ext11
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr10, i64 %idx.neg
  %conv = zext i32 %16 to i64
  %17 = load ptr, ptr %dictionary.addr, align 8
  %18 = call i64 @llvm.objectsize.i64.p0(ptr %17, i1 false, i1 true, i1 false)
  %call13 = call ptr @__memcpy_chk(ptr noundef %10, ptr noundef %add.ptr12, i64 noundef %conv, i64 noundef %18) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.end3
  %19 = load ptr, ptr %dictLength.addr, align 8
  %cmp15.not = icmp eq ptr %19, null
  br i1 %cmp15.not, label %return, label %if.then17

if.then17:                                        ; preds = %if.end14
  %20 = load i32, ptr %len, align 4
  %21 = load ptr, ptr %dictLength.addr, align 8
  store i32 %20, ptr %21, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then17, %entry
  %storemerge = phi i32 [ -2, %entry ], [ 0, %if.then17 ], [ 0, %if.end14 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @deflateResetKeep(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  store i64 0, ptr %total_out, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %total_in, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %msg, align 8
  %1 = load ptr, ptr %strm.addr, align 8
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 11
  store i32 2, ptr %data_type, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 5
  store i64 0, ptr %pending, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %pending_buf, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 4
  store ptr %3, ptr %pending_out, align 8
  %4 = load ptr, ptr %s, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 6
  %5 = load i32, ptr %wrap, align 8
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %s, align 8
  %wrap2 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 6
  %7 = load i32, ptr %wrap2, align 8
  %sub = sub nsw i32 0, %7
  %wrap3 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 6
  store i32 %sub, ptr %wrap3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %8 = load ptr, ptr %s, align 8
  %wrap5 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 6
  %9 = load i32, ptr %wrap5, align 8
  %cmp6 = icmp eq i32 %9, 2
  %cond = select i1 %cmp6, i32 57, i32 42
  %status = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 1
  store i32 %cond, ptr %status, align 8
  %10 = load ptr, ptr %s, align 8
  %wrap7 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 6
  %11 = load i32, ptr %wrap7, align 8
  %cmp8 = icmp eq i32 %11, 2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  %call9 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  %call10 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi i64 [ %call9, %cond.true ], [ %call10, %cond.false ]
  %12 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 12
  store i64 %cond11, ptr %adler, align 8
  %13 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 10
  store i32 -2, ptr %last_flush, align 4
  call void @_tr_init(ptr noundef %13) #4
  br label %return

return:                                           ; preds = %entry, %cond.end
  %storemerge = phi i32 [ 0, %cond.end ], [ -2, %entry ]
  ret i32 %storemerge
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

declare void @_tr_init(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @lm_init(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 11
  %0 = load i32, ptr %w_size, align 8
  %conv = zext i32 %0 to i64
  %mul = shl nuw nsw i64 %conv, 1
  %window_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 15
  store i64 %mul, ptr %window_size, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 17
  %2 = load ptr, ptr %head, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 19
  %3 = load i32, ptr %hash_size, align 4
  %sub = add i32 %3, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  %4 = load ptr, ptr %s.addr, align 8
  %head1 = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 17
  %5 = load ptr, ptr %head1, align 8
  %hash_size2 = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 19
  %6 = load i32, ptr %hash_size2, align 4
  %sub3 = add i32 %6, -1
  %conv4 = zext i32 %sub3 to i64
  %mul5 = shl nuw nsw i64 %conv4, 1
  %7 = load ptr, ptr %s.addr, align 8
  %head6 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 17
  %8 = load ptr, ptr %head6, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %5, i32 noundef 0, i64 noundef %mul5, i64 noundef %9) #4
  %slid = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 60
  store i32 0, ptr %slid, align 8
  %10 = load ptr, ptr %s.addr, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 33
  %11 = load i32, ptr %level, align 4
  %idxprom7 = sext i32 %11 to i64
  %max_lazy = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom7, i32 1
  %12 = load i16, ptr %max_lazy, align 2
  %conv9 = zext i16 %12 to i32
  %13 = load ptr, ptr %s.addr, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 32
  store i32 %conv9, ptr %max_lazy_match, align 8
  %level10 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 33
  %14 = load i32, ptr %level10, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom11
  %15 = load i16, ptr %arrayidx12, align 8
  %conv13 = zext i16 %15 to i32
  %16 = load ptr, ptr %s.addr, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 35
  store i32 %conv13, ptr %good_match, align 4
  %level14 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 33
  %17 = load i32, ptr %level14, align 4
  %idxprom15 = sext i32 %17 to i64
  %nice_length = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom15, i32 2
  %18 = load i16, ptr %nice_length, align 4
  %conv17 = zext i16 %18 to i32
  %19 = load ptr, ptr %s.addr, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 36
  store i32 %conv17, ptr %nice_match, align 8
  %level18 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 33
  %20 = load i32, ptr %level18, align 4
  %idxprom19 = sext i32 %20 to i64
  %max_chain = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom19, i32 3
  %21 = load i16, ptr %max_chain, align 2
  %conv21 = zext i16 %21 to i32
  %22 = load ptr, ptr %s.addr, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 31
  store i32 %conv21, ptr %max_chain_length, align 4
  %strstart = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 27
  store i32 0, ptr %strstart, align 4
  %block_start = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 23
  store i64 0, ptr %block_start, align 8
  %23 = load ptr, ptr %s.addr, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 29
  store i32 0, ptr %lookahead, align 4
  %insert = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 55
  store i32 0, ptr %insert, align 4
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 30
  store i32 2, ptr %prev_length, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 24
  store i32 2, ptr %match_length, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 26
  store i32 0, ptr %match_available, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 18
  store i32 0, ptr %ins_h, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateSetHeader(ptr noundef %strm, ptr noundef %head) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %head, ptr %head.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 6
  %2 = load i32, ptr %wrap, align 8
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %head.addr, align 8
  %4 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %state1, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 7
  store ptr %3, ptr %gzhead, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
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
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %bits.addr, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 57
  %3 = load i32, ptr %bi_valid, align 4
  %4 = load ptr, ptr %bits.addr, align 8
  store i32 %3, ptr %4, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load ptr, ptr %pending.addr, align 8
  %cmp3.not = icmp eq ptr %5, null
  br i1 %cmp3.not, label %if.end14, label %if.then4

if.then4:                                         ; preds = %if.end2
  %6 = load ptr, ptr %strm.addr, align 8
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 7
  %7 = load ptr, ptr %state5, align 8
  %pending6 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 5
  %8 = load i64, ptr %pending6, align 8
  %conv = trunc i64 %8 to i32
  %9 = load ptr, ptr %pending.addr, align 8
  store i32 %conv, ptr %9, align 4
  %conv7 = and i64 %8, 4294967295
  %10 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 7
  %11 = load ptr, ptr %state8, align 8
  %pending9 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 5
  %12 = load i64, ptr %pending9, align 8
  %cmp10.not = icmp eq i64 %conv7, %12
  br i1 %cmp10.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.then4
  %13 = load ptr, ptr %pending.addr, align 8
  store i32 -1, ptr %13, align 4
  store i32 -5, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then4, %if.end2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateUsed(ptr noundef %strm, ptr noundef %bits) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %bits.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %bits, ptr %bits.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %bits.addr, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %return, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %bi_used = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 58
  %3 = load i32, ptr %bi_used, align 8
  %4 = load ptr, ptr %bits.addr, align 8
  store i32 %3, ptr %4, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then1, %entry
  %storemerge = phi i32 [ -2, %entry ], [ 0, %if.then1 ], [ 0, %if.end ]
  ret i32 %storemerge
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
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  %2 = load i32, ptr %bits.addr, align 4
  %cmp = icmp slt i32 %2, 0
  %3 = load i32, ptr %bits.addr, align 4
  %cmp1 = icmp sgt i32 %3, 16
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then4, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %if.end
  %4 = load ptr, ptr %s, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 48
  %5 = load ptr, ptr %sym_buf, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %pending_out, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 2
  %cmp3 = icmp ult ptr %5, %add.ptr
  br i1 %cmp3, label %if.then4, label %do.body

if.then4:                                         ; preds = %lor.lhs.false2, %if.end
  store i32 -5, ptr %retval, align 4
  br label %return

do.body:                                          ; preds = %lor.lhs.false2, %if.end8
  %7 = load ptr, ptr %s, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 57
  %8 = load i32, ptr %bi_valid, align 4
  %sub = sub nsw i32 16, %8
  store i32 %sub, ptr %put, align 4
  %9 = load i32, ptr %bits.addr, align 4
  %cmp6 = icmp sgt i32 %sub, %9
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body
  %10 = load i32, ptr %bits.addr, align 4
  store i32 %10, ptr %put, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body
  %11 = load i32, ptr %value.addr, align 4
  %12 = load i32, ptr %put, align 4
  %notmask = shl nsw i32 -1, %12
  %sub9 = xor i32 %notmask, -1
  %and = and i32 %11, %sub9
  %13 = load ptr, ptr %s, align 8
  %bi_valid10 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 57
  %14 = load i32, ptr %bi_valid10, align 4
  %shl11 = shl i32 %and, %14
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 56
  %15 = load i16, ptr %bi_buf, align 8
  %16 = trunc i32 %shl11 to i16
  %conv14 = or i16 %15, %16
  store i16 %conv14, ptr %bi_buf, align 8
  %17 = load i32, ptr %put, align 4
  %18 = load ptr, ptr %s, align 8
  %bi_valid15 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 57
  %19 = load i32, ptr %bi_valid15, align 4
  %add = add nsw i32 %19, %17
  store i32 %add, ptr %bi_valid15, align 4
  call void @_tr_flush_bits(ptr noundef %18) #4
  %20 = load i32, ptr %put, align 4
  %21 = load i32, ptr %value.addr, align 4
  %shr = ashr i32 %21, %20
  store i32 %shr, ptr %value.addr, align 4
  %22 = load i32, ptr %bits.addr, align 4
  %sub16 = sub nsw i32 %22, %20
  store i32 %sub16, ptr %bits.addr, align 4
  %23 = load i32, ptr %bits.addr, align 4
  %tobool17.not = icmp eq i32 %23, 0
  br i1 %tobool17.not, label %do.end, label %do.body, !llvm.loop !11

do.end:                                           ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then4, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  %2 = load i32, ptr %level.addr, align 4
  %cmp = icmp eq i32 %2, -1
  %spec.store.select = select i1 %cmp, i32 6, i32 %2
  store i32 %spec.store.select, ptr %level.addr, align 4
  %3 = load i32, ptr %level.addr, align 4
  %cmp3 = icmp slt i32 %3, 0
  %4 = load i32, ptr %level.addr, align 4
  %cmp4 = icmp sgt i32 %4, 9
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  %5 = load i32, ptr %strategy.addr, align 4
  %cmp6 = icmp slt i32 %5, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp6
  %6 = load i32, ptr %strategy.addr, align 4
  %cmp8 = icmp sgt i32 %6, 4
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp8
  br i1 %or.cond2, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %7 = load ptr, ptr %s, align 8
  %level11 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 33
  %8 = load i32, ptr %level11, align 4
  %idxprom = sext i32 %8 to i64
  %func12 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom, i32 4
  %9 = load ptr, ptr %func12, align 8
  store ptr %9, ptr %func, align 8
  %10 = load i32, ptr %strategy.addr, align 4
  %11 = load ptr, ptr %s, align 8
  %strategy13 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 34
  %12 = load i32, ptr %strategy13, align 8
  %cmp14.not = icmp eq i32 %10, %12
  br i1 %cmp14.not, label %lor.lhs.false15, label %land.lhs.true

lor.lhs.false15:                                  ; preds = %if.end10
  %13 = load ptr, ptr %func, align 8
  %14 = load i32, ptr %level.addr, align 4
  %idxprom16 = sext i32 %14 to i64
  %func18 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom16, i32 4
  %15 = load ptr, ptr %func18, align 8
  %cmp19.not = icmp eq ptr %13, %15
  br i1 %cmp19.not, label %if.end32, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false15, %if.end10
  %16 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 10
  %17 = load i32, ptr %last_flush, align 4
  %cmp20.not = icmp eq i32 %17, -2
  br i1 %cmp20.not, label %if.end32, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %strm.addr, align 8
  %call22 = call i32 @deflate(ptr noundef %18, i32 noundef 5)
  store i32 %call22, ptr %err, align 4
  %cmp23 = icmp eq i32 %call22, -2
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  %19 = load i32, ptr %err, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then21
  %20 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %20, i64 0, i32 1
  %21 = load i32, ptr %avail_in, align 8
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.then30

lor.lhs.false27:                                  ; preds = %if.end25
  %22 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 27
  %23 = load i32, ptr %strstart, align 4
  %conv = zext i32 %23 to i64
  %block_start = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 23
  %24 = load i64, ptr %block_start, align 8
  %sub = sub nsw i64 %conv, %24
  %25 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 29
  %26 = load i32, ptr %lookahead, align 4
  %conv28 = zext i32 %26 to i64
  %add = sub nsw i64 0, %conv28
  %tobool29.not = icmp eq i64 %sub, %add
  br i1 %tobool29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27, %if.end25
  store i32 -5, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %lor.lhs.false27, %land.lhs.true, %lor.lhs.false15
  %27 = load ptr, ptr %s, align 8
  %level33 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 33
  %28 = load i32, ptr %level33, align 4
  %29 = load i32, ptr %level.addr, align 4
  %cmp34.not = icmp eq i32 %28, %29
  br i1 %cmp34.not, label %if.end73, label %if.then36

if.then36:                                        ; preds = %if.end32
  %30 = load ptr, ptr %s, align 8
  %level37 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 33
  %31 = load i32, ptr %level37, align 4
  %cmp38 = icmp eq i32 %31, 0
  br i1 %cmp38, label %land.lhs.true40, label %if.end59

land.lhs.true40:                                  ; preds = %if.then36
  %32 = load ptr, ptr %s, align 8
  %matches = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 54
  %33 = load i32, ptr %matches, align 8
  %cmp41.not = icmp eq i32 %33, 0
  br i1 %cmp41.not, label %if.end59, label %if.then43

if.then43:                                        ; preds = %land.lhs.true40
  %34 = load ptr, ptr %s, align 8
  %matches44 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 54
  %35 = load i32, ptr %matches44, align 8
  %cmp45 = icmp eq i32 %35, 1
  br i1 %cmp45, label %if.then47, label %do.body

if.then47:                                        ; preds = %if.then43
  %36 = load ptr, ptr %s, align 8
  call void @slide_hash(ptr noundef %36)
  br label %if.end57

do.body:                                          ; preds = %if.then43
  %37 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 17
  %38 = load ptr, ptr %head, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 19
  %39 = load i32, ptr %hash_size, align 4
  %sub48 = add i32 %39, -1
  %idxprom49 = zext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %38, i64 %idxprom49
  store i16 0, ptr %arrayidx50, align 2
  %40 = load ptr, ptr %s, align 8
  %head51 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 17
  %41 = load ptr, ptr %head51, align 8
  %hash_size52 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 19
  %42 = load i32, ptr %hash_size52, align 4
  %sub53 = add i32 %42, -1
  %conv54 = zext i32 %sub53 to i64
  %mul = shl nuw nsw i64 %conv54, 1
  %43 = load ptr, ptr %s, align 8
  %head55 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 17
  %44 = load ptr, ptr %head55, align 8
  %45 = call i64 @llvm.objectsize.i64.p0(ptr %44, i1 false, i1 true, i1 false)
  %call56 = call ptr @__memset_chk(ptr noundef %41, i32 noundef 0, i64 noundef %mul, i64 noundef %45) #4
  %slid = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 60
  store i32 0, ptr %slid, align 8
  br label %if.end57

if.end57:                                         ; preds = %do.body, %if.then47
  %46 = load ptr, ptr %s, align 8
  %matches58 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 54
  store i32 0, ptr %matches58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end57, %land.lhs.true40, %if.then36
  %47 = load i32, ptr %level.addr, align 4
  %48 = load ptr, ptr %s, align 8
  %level60 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 33
  store i32 %47, ptr %level60, align 4
  %idxprom61 = sext i32 %47 to i64
  %max_lazy = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom61, i32 1
  %49 = load i16, ptr %max_lazy, align 2
  %conv63 = zext i16 %49 to i32
  %50 = load ptr, ptr %s, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 32
  store i32 %conv63, ptr %max_lazy_match, align 8
  %51 = load i32, ptr %level.addr, align 4
  %idxprom64 = sext i32 %51 to i64
  %arrayidx65 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom64
  %52 = load i16, ptr %arrayidx65, align 8
  %conv66 = zext i16 %52 to i32
  %53 = load ptr, ptr %s, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 35
  store i32 %conv66, ptr %good_match, align 4
  %54 = load i32, ptr %level.addr, align 4
  %idxprom67 = sext i32 %54 to i64
  %nice_length = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom67, i32 2
  %55 = load i16, ptr %nice_length, align 4
  %conv69 = zext i16 %55 to i32
  %56 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 36
  store i32 %conv69, ptr %nice_match, align 8
  %57 = load i32, ptr %level.addr, align 4
  %idxprom70 = sext i32 %57 to i64
  %max_chain = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom70, i32 3
  %58 = load i16, ptr %max_chain, align 2
  %conv72 = zext i16 %58 to i32
  %59 = load ptr, ptr %s, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 31
  store i32 %conv72, ptr %max_chain_length, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end59, %if.end32
  %60 = load i32, ptr %strategy.addr, align 4
  %61 = load ptr, ptr %s, align 8
  %strategy74 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 34
  store i32 %60, ptr %strategy74, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then30, %if.then24, %if.then9, %if.then
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
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
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp ne i32 %call, 0
  %0 = load i32, ptr %flush.addr, align 4
  %cmp = icmp sgt i32 %0, 5
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  %1 = load i32, ptr %flush.addr, align 4
  %cmp2 = icmp slt i32 %1, 0
  %or.cond4 = select i1 %or.cond, i1 true, i1 %cmp2
  br i1 %or.cond4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state, align 8
  store ptr %3, ptr %s, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %next_out, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then11, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %5 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %avail_in, align 8
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %lor.lhs.false7, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %strm.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %cmp6 = icmp eq ptr %8, null
  br i1 %cmp6, label %if.then11, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false4
  %9 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 1
  %10 = load i32, ptr %status, align 8
  %cmp8 = icmp ne i32 %10, 666
  %11 = load i32, ptr %flush.addr, align 4
  %cmp10.not = icmp eq i32 %11, 4
  %or.cond5 = select i1 %cmp8, i1 true, i1 %cmp10.not
  br i1 %or.cond5, label %if.end12, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false7, %land.lhs.true, %if.end
  %12 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 8
  %13 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 6
  store ptr %12, ptr %msg, align 8
  store i32 -2, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false7
  %14 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 4
  %15 = load i32, ptr %avail_out, align 8
  %cmp13 = icmp eq i32 %15, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %16 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %17 = load ptr, ptr %strm.addr, align 8
  %msg15 = getelementptr inbounds %struct.z_stream_s, ptr %17, i64 0, i32 6
  store ptr %16, ptr %msg15, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %18 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 10
  %19 = load i32, ptr %last_flush, align 4
  store i32 %19, ptr %old_flush, align 4
  %20 = load i32, ptr %flush.addr, align 4
  %last_flush17 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 10
  store i32 %20, ptr %last_flush17, align 4
  %21 = load ptr, ptr %s, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 5
  %22 = load i64, ptr %pending, align 8
  %cmp18.not = icmp eq i64 %22, 0
  br i1 %cmp18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  %23 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %23)
  %avail_out20 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 4
  %24 = load i32, ptr %avail_out20, align 8
  %cmp21 = icmp eq i32 %24, 0
  br i1 %cmp21, label %if.then22, label %if.end39

if.then22:                                        ; preds = %if.then19
  %25 = load ptr, ptr %s, align 8
  %last_flush23 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 10
  store i32 -1, ptr %last_flush23, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end16
  %26 = load ptr, ptr %strm.addr, align 8
  %avail_in25 = getelementptr inbounds %struct.z_stream_s, ptr %26, i64 0, i32 1
  %27 = load i32, ptr %avail_in25, align 8
  %cmp26 = icmp eq i32 %27, 0
  br i1 %cmp26, label %land.lhs.true27, label %if.end39

land.lhs.true27:                                  ; preds = %if.else
  %28 = load i32, ptr %flush.addr, align 4
  %mul = shl nsw i32 %28, 1
  %cmp28 = icmp sgt i32 %28, 4
  %cond.neg = select i1 %cmp28, i32 -9, i32 0
  %sub = add i32 %cond.neg, %mul
  %29 = load i32, ptr %old_flush, align 4
  %mul29 = shl nsw i32 %29, 1
  %cmp30 = icmp sgt i32 %29, 4
  %cond31.neg = select i1 %cmp30, i32 -9, i32 0
  %sub32 = add i32 %cond31.neg, %mul29
  %cmp33.not = icmp sgt i32 %sub, %sub32
  %30 = load i32, ptr %flush.addr, align 4
  %cmp35.not = icmp eq i32 %30, 4
  %or.cond6 = select i1 %cmp33.not, i1 true, i1 %cmp35.not
  br i1 %or.cond6, label %if.end39, label %if.then36

if.then36:                                        ; preds = %land.lhs.true27
  %31 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %32 = load ptr, ptr %strm.addr, align 8
  %msg37 = getelementptr inbounds %struct.z_stream_s, ptr %32, i64 0, i32 6
  store ptr %31, ptr %msg37, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.else, %land.lhs.true27, %if.then19
  %33 = load ptr, ptr %s, align 8
  %status40 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 1
  %34 = load i32, ptr %status40, align 8
  %cmp41 = icmp eq i32 %34, 666
  br i1 %cmp41, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %if.end39
  %35 = load ptr, ptr %strm.addr, align 8
  %avail_in43 = getelementptr inbounds %struct.z_stream_s, ptr %35, i64 0, i32 1
  %36 = load i32, ptr %avail_in43, align 8
  %cmp44.not = icmp eq i32 %36, 0
  br i1 %cmp44.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %land.lhs.true42
  %37 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %38 = load ptr, ptr %strm.addr, align 8
  %msg46 = getelementptr inbounds %struct.z_stream_s, ptr %38, i64 0, i32 6
  store ptr %37, ptr %msg46, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %land.lhs.true42, %if.end39
  %39 = load ptr, ptr %s, align 8
  %status48 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 1
  %40 = load i32, ptr %status48, align 8
  %cmp49 = icmp eq i32 %40, 42
  br i1 %cmp49, label %land.lhs.true50, label %if.end54

land.lhs.true50:                                  ; preds = %if.end47
  %41 = load ptr, ptr %s, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 6
  %42 = load i32, ptr %wrap, align 8
  %cmp51 = icmp eq i32 %42, 0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %land.lhs.true50
  %43 = load ptr, ptr %s, align 8
  %status53 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 1
  store i32 113, ptr %status53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %land.lhs.true50, %if.end47
  %44 = load ptr, ptr %s, align 8
  %status55 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 1
  %45 = load i32, ptr %status55, align 8
  %cmp56 = icmp eq i32 %45, 42
  br i1 %cmp56, label %if.then57, label %if.end98

if.then57:                                        ; preds = %if.end54
  %46 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 12
  %47 = load i32, ptr %w_bits, align 4
  %sub58 = shl i32 %47, 12
  %shl59 = add i32 %sub58, -30720
  store i32 %shl59, ptr %header, align 4
  %strategy = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 34
  %48 = load i32, ptr %strategy, align 8
  %cmp60 = icmp sgt i32 %48, 1
  br i1 %cmp60, label %if.end75, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.then57
  %49 = load ptr, ptr %s, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 33
  %50 = load i32, ptr %level, align 4
  %cmp62 = icmp slt i32 %50, 2
  br i1 %cmp62, label %if.end75, label %if.else64

if.else64:                                        ; preds = %lor.lhs.false61
  %51 = load ptr, ptr %s, align 8
  %level65 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 33
  %52 = load i32, ptr %level65, align 4
  %cmp66 = icmp slt i32 %52, 6
  br i1 %cmp66, label %if.end75, label %if.else68

if.else68:                                        ; preds = %if.else64
  %53 = load ptr, ptr %s, align 8
  %level69 = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 33
  %54 = load i32, ptr %level69, align 4
  %cmp70 = icmp eq i32 %54, 6
  %. = select i1 %cmp70, i32 128, i32 192
  br label %if.end75

if.end75:                                         ; preds = %if.else68, %if.else64, %if.then57, %lor.lhs.false61
  %storemerge3 = phi i32 [ 0, %lor.lhs.false61 ], [ 0, %if.then57 ], [ %., %if.else68 ], [ 64, %if.else64 ]
  %55 = load i32, ptr %header, align 4
  %or = or i32 %55, %storemerge3
  store i32 %or, ptr %header, align 4
  %56 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 27
  %57 = load i32, ptr %strstart, align 4
  %cmp77.not = icmp eq i32 %57, 0
  br i1 %cmp77.not, label %if.end80, label %if.then78

if.then78:                                        ; preds = %if.end75
  %58 = load i32, ptr %header, align 4
  %or79 = or i32 %58, 32
  store i32 %or79, ptr %header, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end75
  %59 = load i32, ptr %header, align 4
  %rem = urem i32 %59, 31
  %sub81 = xor i32 %rem, 31
  %add82 = add i32 %59, %sub81
  store i32 %add82, ptr %header, align 4
  %60 = load ptr, ptr %s, align 8
  call void @putShortMSB(ptr noundef %60, i32 noundef %add82)
  %61 = load ptr, ptr %s, align 8
  %strstart83 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 27
  %62 = load i32, ptr %strstart83, align 4
  %cmp84.not = icmp eq i32 %62, 0
  br i1 %cmp84.not, label %if.end88, label %if.then85

if.then85:                                        ; preds = %if.end80
  %63 = load ptr, ptr %s, align 8
  %64 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %64, i64 0, i32 12
  %65 = load i64, ptr %adler, align 8
  %shr = lshr i64 %65, 16
  %conv = trunc i64 %shr to i32
  call void @putShortMSB(ptr noundef %63, i32 noundef %conv)
  %66 = load ptr, ptr %s, align 8
  %67 = load ptr, ptr %strm.addr, align 8
  %adler86 = getelementptr inbounds %struct.z_stream_s, ptr %67, i64 0, i32 12
  %68 = load i64, ptr %adler86, align 8
  %69 = trunc i64 %68 to i32
  %conv87 = and i32 %69, 65535
  call void @putShortMSB(ptr noundef %66, i32 noundef %conv87)
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end80
  %call89 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #4
  %70 = load ptr, ptr %strm.addr, align 8
  %adler90 = getelementptr inbounds %struct.z_stream_s, ptr %70, i64 0, i32 12
  store i64 %call89, ptr %adler90, align 8
  %71 = load ptr, ptr %s, align 8
  %status91 = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 1
  store i32 113, ptr %status91, align 8
  call void @flush_pending(ptr noundef %70)
  %72 = load ptr, ptr %s, align 8
  %pending92 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 5
  %73 = load i64, ptr %pending92, align 8
  %cmp93.not = icmp eq i64 %73, 0
  br i1 %cmp93.not, label %if.end98, label %if.then95

if.then95:                                        ; preds = %if.end88
  %74 = load ptr, ptr %s, align 8
  %last_flush96 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 10
  store i32 -1, ptr %last_flush96, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end98:                                         ; preds = %if.end88, %if.end54
  %75 = load ptr, ptr %s, align 8
  %status99 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 1
  %76 = load i32, ptr %status99, align 8
  %cmp100 = icmp eq i32 %76, 57
  br i1 %cmp100, label %if.then102, label %if.end288

if.then102:                                       ; preds = %if.end98
  %call103 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #4
  %77 = load ptr, ptr %strm.addr, align 8
  %adler104 = getelementptr inbounds %struct.z_stream_s, ptr %77, i64 0, i32 12
  store i64 %call103, ptr %adler104, align 8
  %78 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 2
  %79 = load ptr, ptr %pending_buf, align 8
  %pending105 = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 5
  %80 = load i64, ptr %pending105, align 8
  %inc = add i64 %80, 1
  store i64 %inc, ptr %pending105, align 8
  %arrayidx = getelementptr inbounds i8, ptr %79, i64 %80
  store i8 31, ptr %arrayidx, align 1
  %81 = load ptr, ptr %s, align 8
  %pending_buf106 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 2
  %82 = load ptr, ptr %pending_buf106, align 8
  %pending107 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 5
  %83 = load i64, ptr %pending107, align 8
  %inc108 = add i64 %83, 1
  store i64 %inc108, ptr %pending107, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %82, i64 %83
  store i8 -117, ptr %arrayidx109, align 1
  %84 = load ptr, ptr %s, align 8
  %pending_buf110 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 2
  %85 = load ptr, ptr %pending_buf110, align 8
  %pending111 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 5
  %86 = load i64, ptr %pending111, align 8
  %inc112 = add i64 %86, 1
  store i64 %inc112, ptr %pending111, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %85, i64 %86
  store i8 8, ptr %arrayidx113, align 1
  %87 = load ptr, ptr %s, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %87, i64 0, i32 7
  %88 = load ptr, ptr %gzhead, align 8
  %cmp114 = icmp eq ptr %88, null
  br i1 %cmp114, label %if.then116, label %if.else164

if.then116:                                       ; preds = %if.then102
  %89 = load ptr, ptr %s, align 8
  %pending_buf117 = getelementptr inbounds %struct.internal_state, ptr %89, i64 0, i32 2
  %90 = load ptr, ptr %pending_buf117, align 8
  %pending118 = getelementptr inbounds %struct.internal_state, ptr %89, i64 0, i32 5
  %91 = load i64, ptr %pending118, align 8
  %inc119 = add i64 %91, 1
  store i64 %inc119, ptr %pending118, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %90, i64 %91
  store i8 0, ptr %arrayidx120, align 1
  %92 = load ptr, ptr %s, align 8
  %pending_buf121 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 2
  %93 = load ptr, ptr %pending_buf121, align 8
  %pending122 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 5
  %94 = load i64, ptr %pending122, align 8
  %inc123 = add i64 %94, 1
  store i64 %inc123, ptr %pending122, align 8
  %arrayidx124 = getelementptr inbounds i8, ptr %93, i64 %94
  store i8 0, ptr %arrayidx124, align 1
  %95 = load ptr, ptr %s, align 8
  %pending_buf125 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 2
  %96 = load ptr, ptr %pending_buf125, align 8
  %pending126 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 5
  %97 = load i64, ptr %pending126, align 8
  %inc127 = add i64 %97, 1
  store i64 %inc127, ptr %pending126, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %96, i64 %97
  store i8 0, ptr %arrayidx128, align 1
  %98 = load ptr, ptr %s, align 8
  %pending_buf129 = getelementptr inbounds %struct.internal_state, ptr %98, i64 0, i32 2
  %99 = load ptr, ptr %pending_buf129, align 8
  %pending130 = getelementptr inbounds %struct.internal_state, ptr %98, i64 0, i32 5
  %100 = load i64, ptr %pending130, align 8
  %inc131 = add i64 %100, 1
  store i64 %inc131, ptr %pending130, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %99, i64 %100
  store i8 0, ptr %arrayidx132, align 1
  %101 = load ptr, ptr %s, align 8
  %pending_buf133 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 2
  %102 = load ptr, ptr %pending_buf133, align 8
  %pending134 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 5
  %103 = load i64, ptr %pending134, align 8
  %inc135 = add i64 %103, 1
  store i64 %inc135, ptr %pending134, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %102, i64 %103
  store i8 0, ptr %arrayidx136, align 1
  %104 = load ptr, ptr %s, align 8
  %level137 = getelementptr inbounds %struct.internal_state, ptr %104, i64 0, i32 33
  %105 = load i32, ptr %level137, align 4
  %cmp138 = icmp eq i32 %105, 9
  br i1 %cmp138, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then116
  %106 = load ptr, ptr %s, align 8
  %strategy140 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 34
  %107 = load i32, ptr %strategy140, align 8
  %cmp141 = icmp sgt i32 %107, 1
  br i1 %cmp141, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false
  %108 = load ptr, ptr %s, align 8
  %level143 = getelementptr inbounds %struct.internal_state, ptr %108, i64 0, i32 33
  %109 = load i32, ptr %level143, align 4
  %cmp144 = icmp slt i32 %109, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false
  %110 = phi i1 [ true, %cond.false ], [ %cmp144, %lor.rhs ]
  %cond146 = select i1 %110, i8 4, i8 0
  br label %cond.end

cond.end:                                         ; preds = %if.then116, %lor.end
  %cond147 = phi i8 [ %cond146, %lor.end ], [ 2, %if.then116 ]
  %111 = load ptr, ptr %s, align 8
  %pending_buf149 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 2
  %112 = load ptr, ptr %pending_buf149, align 8
  %pending150 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 5
  %113 = load i64, ptr %pending150, align 8
  %inc151 = add i64 %113, 1
  store i64 %inc151, ptr %pending150, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %112, i64 %113
  store i8 %cond147, ptr %arrayidx152, align 1
  %114 = load ptr, ptr %s, align 8
  %pending_buf153 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 2
  %115 = load ptr, ptr %pending_buf153, align 8
  %pending154 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 5
  %116 = load i64, ptr %pending154, align 8
  %inc155 = add i64 %116, 1
  store i64 %inc155, ptr %pending154, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %115, i64 %116
  store i8 19, ptr %arrayidx156, align 1
  %117 = load ptr, ptr %s, align 8
  %status157 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 1
  store i32 113, ptr %status157, align 8
  %118 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %118)
  %119 = load ptr, ptr %s, align 8
  %pending158 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 5
  %120 = load i64, ptr %pending158, align 8
  %cmp159.not = icmp eq i64 %120, 0
  br i1 %cmp159.not, label %if.end288, label %if.then161

if.then161:                                       ; preds = %cond.end
  %121 = load ptr, ptr %s, align 8
  %last_flush162 = getelementptr inbounds %struct.internal_state, ptr %121, i64 0, i32 10
  store i32 -1, ptr %last_flush162, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else164:                                       ; preds = %if.then102
  %122 = load ptr, ptr %s, align 8
  %gzhead165 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 7
  %123 = load ptr, ptr %gzhead165, align 8
  %124 = load i32, ptr %123, align 8
  %tobool166.not = icmp ne i32 %124, 0
  %cond167 = zext i1 %tobool166.not to i8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %123, i64 0, i32 11
  %125 = load i32, ptr %hcrc, align 4
  %tobool169.not = icmp eq i32 %125, 0
  %cond170 = select i1 %tobool169.not, i8 0, i8 2
  %add171 = or i8 %cond170, %cond167
  %126 = load ptr, ptr %s, align 8
  %gzhead172 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 7
  %127 = load ptr, ptr %gzhead172, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %127, i64 0, i32 4
  %128 = load ptr, ptr %extra, align 8
  %cmp173 = icmp eq ptr %128, null
  %cond175 = select i1 %cmp173, i8 0, i8 4
  %add176 = or i8 %add171, %cond175
  %129 = load ptr, ptr %s, align 8
  %gzhead177 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 7
  %130 = load ptr, ptr %gzhead177, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %130, i64 0, i32 7
  %131 = load ptr, ptr %name, align 8
  %cmp178 = icmp eq ptr %131, null
  %cond180 = select i1 %cmp178, i8 0, i8 8
  %add181 = or i8 %add176, %cond180
  %132 = load ptr, ptr %s, align 8
  %gzhead182 = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 7
  %133 = load ptr, ptr %gzhead182, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %133, i64 0, i32 9
  %134 = load ptr, ptr %comment, align 8
  %cmp183 = icmp eq ptr %134, null
  %cond185 = select i1 %cmp183, i8 0, i8 16
  %add186 = or i8 %add181, %cond185
  %135 = load ptr, ptr %s, align 8
  %pending_buf188 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 2
  %136 = load ptr, ptr %pending_buf188, align 8
  %pending189 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 5
  %137 = load i64, ptr %pending189, align 8
  %inc190 = add i64 %137, 1
  store i64 %inc190, ptr %pending189, align 8
  %arrayidx191 = getelementptr inbounds i8, ptr %136, i64 %137
  store i8 %add186, ptr %arrayidx191, align 1
  %138 = load ptr, ptr %s, align 8
  %gzhead192 = getelementptr inbounds %struct.internal_state, ptr %138, i64 0, i32 7
  %139 = load ptr, ptr %gzhead192, align 8
  %time = getelementptr inbounds %struct.gz_header_s, ptr %139, i64 0, i32 1
  %140 = load i64, ptr %time, align 8
  %conv194 = trunc i64 %140 to i8
  %pending_buf195 = getelementptr inbounds %struct.internal_state, ptr %138, i64 0, i32 2
  %141 = load ptr, ptr %pending_buf195, align 8
  %142 = load ptr, ptr %s, align 8
  %pending196 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 5
  %143 = load i64, ptr %pending196, align 8
  %inc197 = add i64 %143, 1
  store i64 %inc197, ptr %pending196, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %141, i64 %143
  store i8 %conv194, ptr %arrayidx198, align 1
  %144 = load ptr, ptr %s, align 8
  %gzhead199 = getelementptr inbounds %struct.internal_state, ptr %144, i64 0, i32 7
  %145 = load ptr, ptr %gzhead199, align 8
  %time200 = getelementptr inbounds %struct.gz_header_s, ptr %145, i64 0, i32 1
  %146 = load i64, ptr %time200, align 8
  %shr201 = lshr i64 %146, 8
  %conv203 = trunc i64 %shr201 to i8
  %147 = load ptr, ptr %s, align 8
  %pending_buf204 = getelementptr inbounds %struct.internal_state, ptr %147, i64 0, i32 2
  %148 = load ptr, ptr %pending_buf204, align 8
  %pending205 = getelementptr inbounds %struct.internal_state, ptr %147, i64 0, i32 5
  %149 = load i64, ptr %pending205, align 8
  %inc206 = add i64 %149, 1
  store i64 %inc206, ptr %pending205, align 8
  %arrayidx207 = getelementptr inbounds i8, ptr %148, i64 %149
  store i8 %conv203, ptr %arrayidx207, align 1
  %150 = load ptr, ptr %s, align 8
  %gzhead208 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 7
  %151 = load ptr, ptr %gzhead208, align 8
  %time209 = getelementptr inbounds %struct.gz_header_s, ptr %151, i64 0, i32 1
  %152 = load i64, ptr %time209, align 8
  %shr210 = lshr i64 %152, 16
  %conv212 = trunc i64 %shr210 to i8
  %153 = load ptr, ptr %s, align 8
  %pending_buf213 = getelementptr inbounds %struct.internal_state, ptr %153, i64 0, i32 2
  %154 = load ptr, ptr %pending_buf213, align 8
  %pending214 = getelementptr inbounds %struct.internal_state, ptr %153, i64 0, i32 5
  %155 = load i64, ptr %pending214, align 8
  %inc215 = add i64 %155, 1
  store i64 %inc215, ptr %pending214, align 8
  %arrayidx216 = getelementptr inbounds i8, ptr %154, i64 %155
  store i8 %conv212, ptr %arrayidx216, align 1
  %156 = load ptr, ptr %s, align 8
  %gzhead217 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 7
  %157 = load ptr, ptr %gzhead217, align 8
  %time218 = getelementptr inbounds %struct.gz_header_s, ptr %157, i64 0, i32 1
  %158 = load i64, ptr %time218, align 8
  %shr219 = lshr i64 %158, 24
  %conv221 = trunc i64 %shr219 to i8
  %159 = load ptr, ptr %s, align 8
  %pending_buf222 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 2
  %160 = load ptr, ptr %pending_buf222, align 8
  %pending223 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 5
  %161 = load i64, ptr %pending223, align 8
  %inc224 = add i64 %161, 1
  store i64 %inc224, ptr %pending223, align 8
  %arrayidx225 = getelementptr inbounds i8, ptr %160, i64 %161
  store i8 %conv221, ptr %arrayidx225, align 1
  %162 = load ptr, ptr %s, align 8
  %level226 = getelementptr inbounds %struct.internal_state, ptr %162, i64 0, i32 33
  %163 = load i32, ptr %level226, align 4
  %cmp227 = icmp eq i32 %163, 9
  br i1 %cmp227, label %cond.end240, label %cond.false230

cond.false230:                                    ; preds = %if.else164
  %164 = load ptr, ptr %s, align 8
  %strategy231 = getelementptr inbounds %struct.internal_state, ptr %164, i64 0, i32 34
  %165 = load i32, ptr %strategy231, align 8
  %cmp232 = icmp sgt i32 %165, 1
  br i1 %cmp232, label %lor.end238, label %lor.rhs234

lor.rhs234:                                       ; preds = %cond.false230
  %166 = load ptr, ptr %s, align 8
  %level235 = getelementptr inbounds %struct.internal_state, ptr %166, i64 0, i32 33
  %167 = load i32, ptr %level235, align 4
  %cmp236 = icmp slt i32 %167, 2
  br label %lor.end238

lor.end238:                                       ; preds = %lor.rhs234, %cond.false230
  %168 = phi i1 [ true, %cond.false230 ], [ %cmp236, %lor.rhs234 ]
  %cond239 = select i1 %168, i8 4, i8 0
  br label %cond.end240

cond.end240:                                      ; preds = %if.else164, %lor.end238
  %cond241 = phi i8 [ %cond239, %lor.end238 ], [ 2, %if.else164 ]
  %169 = load ptr, ptr %s, align 8
  %pending_buf243 = getelementptr inbounds %struct.internal_state, ptr %169, i64 0, i32 2
  %170 = load ptr, ptr %pending_buf243, align 8
  %pending244 = getelementptr inbounds %struct.internal_state, ptr %169, i64 0, i32 5
  %171 = load i64, ptr %pending244, align 8
  %inc245 = add i64 %171, 1
  store i64 %inc245, ptr %pending244, align 8
  %arrayidx246 = getelementptr inbounds i8, ptr %170, i64 %171
  store i8 %cond241, ptr %arrayidx246, align 1
  %172 = load ptr, ptr %s, align 8
  %gzhead247 = getelementptr inbounds %struct.internal_state, ptr %172, i64 0, i32 7
  %173 = load ptr, ptr %gzhead247, align 8
  %os = getelementptr inbounds %struct.gz_header_s, ptr %173, i64 0, i32 3
  %174 = load i32, ptr %os, align 4
  %conv249 = trunc i32 %174 to i8
  %pending_buf250 = getelementptr inbounds %struct.internal_state, ptr %172, i64 0, i32 2
  %175 = load ptr, ptr %pending_buf250, align 8
  %176 = load ptr, ptr %s, align 8
  %pending251 = getelementptr inbounds %struct.internal_state, ptr %176, i64 0, i32 5
  %177 = load i64, ptr %pending251, align 8
  %inc252 = add i64 %177, 1
  store i64 %inc252, ptr %pending251, align 8
  %arrayidx253 = getelementptr inbounds i8, ptr %175, i64 %177
  store i8 %conv249, ptr %arrayidx253, align 1
  %178 = load ptr, ptr %s, align 8
  %gzhead254 = getelementptr inbounds %struct.internal_state, ptr %178, i64 0, i32 7
  %179 = load ptr, ptr %gzhead254, align 8
  %extra255 = getelementptr inbounds %struct.gz_header_s, ptr %179, i64 0, i32 4
  %180 = load ptr, ptr %extra255, align 8
  %cmp256.not = icmp eq ptr %180, null
  br i1 %cmp256.not, label %if.end275, label %if.then258

if.then258:                                       ; preds = %cond.end240
  %181 = load ptr, ptr %s, align 8
  %gzhead259 = getelementptr inbounds %struct.internal_state, ptr %181, i64 0, i32 7
  %182 = load ptr, ptr %gzhead259, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %182, i64 0, i32 5
  %183 = load i32, ptr %extra_len, align 8
  %conv261 = trunc i32 %183 to i8
  %pending_buf262 = getelementptr inbounds %struct.internal_state, ptr %181, i64 0, i32 2
  %184 = load ptr, ptr %pending_buf262, align 8
  %185 = load ptr, ptr %s, align 8
  %pending263 = getelementptr inbounds %struct.internal_state, ptr %185, i64 0, i32 5
  %186 = load i64, ptr %pending263, align 8
  %inc264 = add i64 %186, 1
  store i64 %inc264, ptr %pending263, align 8
  %arrayidx265 = getelementptr inbounds i8, ptr %184, i64 %186
  store i8 %conv261, ptr %arrayidx265, align 1
  %187 = load ptr, ptr %s, align 8
  %gzhead266 = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 7
  %188 = load ptr, ptr %gzhead266, align 8
  %extra_len267 = getelementptr inbounds %struct.gz_header_s, ptr %188, i64 0, i32 5
  %189 = load i32, ptr %extra_len267, align 8
  %shr268 = lshr i32 %189, 8
  %conv270 = trunc i32 %shr268 to i8
  %190 = load ptr, ptr %s, align 8
  %pending_buf271 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 2
  %191 = load ptr, ptr %pending_buf271, align 8
  %pending272 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 5
  %192 = load i64, ptr %pending272, align 8
  %inc273 = add i64 %192, 1
  store i64 %inc273, ptr %pending272, align 8
  %arrayidx274 = getelementptr inbounds i8, ptr %191, i64 %192
  store i8 %conv270, ptr %arrayidx274, align 1
  br label %if.end275

if.end275:                                        ; preds = %if.then258, %cond.end240
  %193 = load ptr, ptr %s, align 8
  %gzhead276 = getelementptr inbounds %struct.internal_state, ptr %193, i64 0, i32 7
  %194 = load ptr, ptr %gzhead276, align 8
  %hcrc277 = getelementptr inbounds %struct.gz_header_s, ptr %194, i64 0, i32 11
  %195 = load i32, ptr %hcrc277, align 4
  %tobool278.not = icmp eq i32 %195, 0
  br i1 %tobool278.not, label %if.end285, label %if.then279

if.then279:                                       ; preds = %if.end275
  %196 = load ptr, ptr %strm.addr, align 8
  %adler280 = getelementptr inbounds %struct.z_stream_s, ptr %196, i64 0, i32 12
  %197 = load i64, ptr %adler280, align 8
  %198 = load ptr, ptr %s, align 8
  %pending_buf281 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 2
  %199 = load ptr, ptr %pending_buf281, align 8
  %pending282 = getelementptr inbounds %struct.internal_state, ptr %198, i64 0, i32 5
  %200 = load i64, ptr %pending282, align 8
  %call283 = call i64 @crc32_z(i64 noundef %197, ptr noundef %199, i64 noundef %200) #4
  %201 = load ptr, ptr %strm.addr, align 8
  %adler284 = getelementptr inbounds %struct.z_stream_s, ptr %201, i64 0, i32 12
  store i64 %call283, ptr %adler284, align 8
  br label %if.end285

if.end285:                                        ; preds = %if.then279, %if.end275
  %202 = load ptr, ptr %s, align 8
  %gzindex = getelementptr inbounds %struct.internal_state, ptr %202, i64 0, i32 8
  store i64 0, ptr %gzindex, align 8
  %status286 = getelementptr inbounds %struct.internal_state, ptr %202, i64 0, i32 1
  store i32 69, ptr %status286, align 8
  br label %if.end288

if.end288:                                        ; preds = %if.end285, %cond.end, %if.end98
  %203 = load ptr, ptr %s, align 8
  %status289 = getelementptr inbounds %struct.internal_state, ptr %203, i64 0, i32 1
  %204 = load i32, ptr %status289, align 8
  %cmp290 = icmp eq i32 %204, 69
  br i1 %cmp290, label %if.then292, label %if.end383

if.then292:                                       ; preds = %if.end288
  %205 = load ptr, ptr %s, align 8
  %gzhead293 = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 7
  %206 = load ptr, ptr %gzhead293, align 8
  %extra294 = getelementptr inbounds %struct.gz_header_s, ptr %206, i64 0, i32 4
  %207 = load ptr, ptr %extra294, align 8
  %cmp295.not = icmp eq ptr %207, null
  br i1 %cmp295.not, label %if.end381, label %if.then297

if.then297:                                       ; preds = %if.then292
  %208 = load ptr, ptr %s, align 8
  %pending298 = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 5
  %209 = load i64, ptr %pending298, align 8
  store i64 %209, ptr %beg, align 8
  %gzhead299 = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 7
  %210 = load ptr, ptr %gzhead299, align 8
  %extra_len300 = getelementptr inbounds %struct.gz_header_s, ptr %210, i64 0, i32 5
  %211 = load i32, ptr %extra_len300, align 8
  %and301 = and i32 %211, 65535
  %conv302 = zext i32 %and301 to i64
  %212 = load ptr, ptr %s, align 8
  %gzindex303 = getelementptr inbounds %struct.internal_state, ptr %212, i64 0, i32 8
  %213 = load i64, ptr %gzindex303, align 8
  %sub304 = sub i64 %conv302, %213
  br label %while.cond

while.cond:                                       ; preds = %if.end347, %if.then297
  %storemerge = phi i64 [ %sub304, %if.then297 ], [ %sub348, %if.end347 ]
  store i64 %storemerge, ptr %left, align 8
  %214 = load ptr, ptr %s, align 8
  %pending305 = getelementptr inbounds %struct.internal_state, ptr %214, i64 0, i32 5
  %215 = load i64, ptr %pending305, align 8
  %add306 = add i64 %215, %storemerge
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %214, i64 0, i32 3
  %216 = load i64, ptr %pending_buf_size, align 8
  %cmp307 = icmp ugt i64 %add306, %216
  br i1 %cmp307, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %217 = load ptr, ptr %s, align 8
  %pending_buf_size309 = getelementptr inbounds %struct.internal_state, ptr %217, i64 0, i32 3
  %218 = load i64, ptr %pending_buf_size309, align 8
  %pending310 = getelementptr inbounds %struct.internal_state, ptr %217, i64 0, i32 5
  %219 = load i64, ptr %pending310, align 8
  %sub311 = sub i64 %218, %219
  store i64 %sub311, ptr %copy, align 8
  %220 = load ptr, ptr %s, align 8
  %pending_buf312 = getelementptr inbounds %struct.internal_state, ptr %220, i64 0, i32 2
  %221 = load ptr, ptr %pending_buf312, align 8
  %pending313 = getelementptr inbounds %struct.internal_state, ptr %220, i64 0, i32 5
  %222 = load i64, ptr %pending313, align 8
  %add.ptr = getelementptr inbounds i8, ptr %221, i64 %222
  %gzhead314 = getelementptr inbounds %struct.internal_state, ptr %220, i64 0, i32 7
  %223 = load ptr, ptr %gzhead314, align 8
  %extra315 = getelementptr inbounds %struct.gz_header_s, ptr %223, i64 0, i32 4
  %224 = load ptr, ptr %extra315, align 8
  %225 = load ptr, ptr %s, align 8
  %gzindex316 = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 8
  %226 = load i64, ptr %gzindex316, align 8
  %add.ptr317 = getelementptr inbounds i8, ptr %224, i64 %226
  %227 = load i64, ptr %copy, align 8
  %pending_buf318 = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 2
  %228 = load ptr, ptr %pending_buf318, align 8
  %229 = load ptr, ptr %s, align 8
  %pending319 = getelementptr inbounds %struct.internal_state, ptr %229, i64 0, i32 5
  %230 = load i64, ptr %pending319, align 8
  %add.ptr320 = getelementptr inbounds i8, ptr %228, i64 %230
  %231 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr320, i1 false, i1 true, i1 false)
  %call321 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %add.ptr317, i64 noundef %227, i64 noundef %231) #4
  %232 = load ptr, ptr %s, align 8
  %pending_buf_size322 = getelementptr inbounds %struct.internal_state, ptr %232, i64 0, i32 3
  %233 = load i64, ptr %pending_buf_size322, align 8
  %pending323 = getelementptr inbounds %struct.internal_state, ptr %232, i64 0, i32 5
  store i64 %233, ptr %pending323, align 8
  %234 = load ptr, ptr %s, align 8
  %gzhead324 = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 7
  %235 = load ptr, ptr %gzhead324, align 8
  %hcrc325 = getelementptr inbounds %struct.gz_header_s, ptr %235, i64 0, i32 11
  %236 = load i32, ptr %hcrc325, align 4
  %tobool326.not = icmp eq i32 %236, 0
  br i1 %tobool326.not, label %do.end, label %land.lhs.true327

land.lhs.true327:                                 ; preds = %while.body
  %237 = load ptr, ptr %s, align 8
  %pending328 = getelementptr inbounds %struct.internal_state, ptr %237, i64 0, i32 5
  %238 = load i64, ptr %pending328, align 8
  %239 = load i64, ptr %beg, align 8
  %cmp329 = icmp ugt i64 %238, %239
  br i1 %cmp329, label %if.then331, label %do.end

if.then331:                                       ; preds = %land.lhs.true327
  %240 = load ptr, ptr %strm.addr, align 8
  %adler332 = getelementptr inbounds %struct.z_stream_s, ptr %240, i64 0, i32 12
  %241 = load i64, ptr %adler332, align 8
  %242 = load ptr, ptr %s, align 8
  %pending_buf333 = getelementptr inbounds %struct.internal_state, ptr %242, i64 0, i32 2
  %243 = load ptr, ptr %pending_buf333, align 8
  %244 = load i64, ptr %beg, align 8
  %add.ptr334 = getelementptr inbounds i8, ptr %243, i64 %244
  %pending335 = getelementptr inbounds %struct.internal_state, ptr %242, i64 0, i32 5
  %245 = load i64, ptr %pending335, align 8
  %sub336 = sub i64 %245, %244
  %call337 = call i64 @crc32_z(i64 noundef %241, ptr noundef %add.ptr334, i64 noundef %sub336) #4
  %246 = load ptr, ptr %strm.addr, align 8
  %adler338 = getelementptr inbounds %struct.z_stream_s, ptr %246, i64 0, i32 12
  store i64 %call337, ptr %adler338, align 8
  br label %do.end

do.end:                                           ; preds = %while.body, %land.lhs.true327, %if.then331
  %247 = load i64, ptr %copy, align 8
  %248 = load ptr, ptr %s, align 8
  %gzindex340 = getelementptr inbounds %struct.internal_state, ptr %248, i64 0, i32 8
  %249 = load i64, ptr %gzindex340, align 8
  %add341 = add i64 %249, %247
  store i64 %add341, ptr %gzindex340, align 8
  %250 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %250)
  %251 = load ptr, ptr %s, align 8
  %pending342 = getelementptr inbounds %struct.internal_state, ptr %251, i64 0, i32 5
  %252 = load i64, ptr %pending342, align 8
  %cmp343.not = icmp eq i64 %252, 0
  br i1 %cmp343.not, label %if.end347, label %if.then345

if.then345:                                       ; preds = %do.end
  %253 = load ptr, ptr %s, align 8
  %last_flush346 = getelementptr inbounds %struct.internal_state, ptr %253, i64 0, i32 10
  store i32 -1, ptr %last_flush346, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end347:                                        ; preds = %do.end
  store i64 0, ptr %beg, align 8
  %254 = load i64, ptr %copy, align 8
  %255 = load i64, ptr %left, align 8
  %sub348 = sub i64 %255, %254
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %256 = load ptr, ptr %s, align 8
  %pending_buf349 = getelementptr inbounds %struct.internal_state, ptr %256, i64 0, i32 2
  %257 = load ptr, ptr %pending_buf349, align 8
  %pending350 = getelementptr inbounds %struct.internal_state, ptr %256, i64 0, i32 5
  %258 = load i64, ptr %pending350, align 8
  %add.ptr351 = getelementptr inbounds i8, ptr %257, i64 %258
  %gzhead352 = getelementptr inbounds %struct.internal_state, ptr %256, i64 0, i32 7
  %259 = load ptr, ptr %gzhead352, align 8
  %extra353 = getelementptr inbounds %struct.gz_header_s, ptr %259, i64 0, i32 4
  %260 = load ptr, ptr %extra353, align 8
  %261 = load ptr, ptr %s, align 8
  %gzindex354 = getelementptr inbounds %struct.internal_state, ptr %261, i64 0, i32 8
  %262 = load i64, ptr %gzindex354, align 8
  %add.ptr355 = getelementptr inbounds i8, ptr %260, i64 %262
  %263 = load i64, ptr %left, align 8
  %pending_buf356 = getelementptr inbounds %struct.internal_state, ptr %261, i64 0, i32 2
  %264 = load ptr, ptr %pending_buf356, align 8
  %265 = load ptr, ptr %s, align 8
  %pending357 = getelementptr inbounds %struct.internal_state, ptr %265, i64 0, i32 5
  %266 = load i64, ptr %pending357, align 8
  %add.ptr358 = getelementptr inbounds i8, ptr %264, i64 %266
  %267 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr358, i1 false, i1 true, i1 false)
  %call359 = call ptr @__memcpy_chk(ptr noundef %add.ptr351, ptr noundef %add.ptr355, i64 noundef %263, i64 noundef %267) #4
  %268 = load i64, ptr %left, align 8
  %269 = load ptr, ptr %s, align 8
  %pending360 = getelementptr inbounds %struct.internal_state, ptr %269, i64 0, i32 5
  %270 = load i64, ptr %pending360, align 8
  %add361 = add i64 %270, %268
  store i64 %add361, ptr %pending360, align 8
  %271 = load ptr, ptr %s, align 8
  %gzhead363 = getelementptr inbounds %struct.internal_state, ptr %271, i64 0, i32 7
  %272 = load ptr, ptr %gzhead363, align 8
  %hcrc364 = getelementptr inbounds %struct.gz_header_s, ptr %272, i64 0, i32 11
  %273 = load i32, ptr %hcrc364, align 4
  %tobool365.not = icmp eq i32 %273, 0
  br i1 %tobool365.not, label %do.end379, label %land.lhs.true366

land.lhs.true366:                                 ; preds = %while.end
  %274 = load ptr, ptr %s, align 8
  %pending367 = getelementptr inbounds %struct.internal_state, ptr %274, i64 0, i32 5
  %275 = load i64, ptr %pending367, align 8
  %276 = load i64, ptr %beg, align 8
  %cmp368 = icmp ugt i64 %275, %276
  br i1 %cmp368, label %if.then370, label %do.end379

if.then370:                                       ; preds = %land.lhs.true366
  %277 = load ptr, ptr %strm.addr, align 8
  %adler371 = getelementptr inbounds %struct.z_stream_s, ptr %277, i64 0, i32 12
  %278 = load i64, ptr %adler371, align 8
  %279 = load ptr, ptr %s, align 8
  %pending_buf372 = getelementptr inbounds %struct.internal_state, ptr %279, i64 0, i32 2
  %280 = load ptr, ptr %pending_buf372, align 8
  %281 = load i64, ptr %beg, align 8
  %add.ptr373 = getelementptr inbounds i8, ptr %280, i64 %281
  %pending374 = getelementptr inbounds %struct.internal_state, ptr %279, i64 0, i32 5
  %282 = load i64, ptr %pending374, align 8
  %sub375 = sub i64 %282, %281
  %call376 = call i64 @crc32_z(i64 noundef %278, ptr noundef %add.ptr373, i64 noundef %sub375) #4
  %283 = load ptr, ptr %strm.addr, align 8
  %adler377 = getelementptr inbounds %struct.z_stream_s, ptr %283, i64 0, i32 12
  store i64 %call376, ptr %adler377, align 8
  br label %do.end379

do.end379:                                        ; preds = %while.end, %land.lhs.true366, %if.then370
  %284 = load ptr, ptr %s, align 8
  %gzindex380 = getelementptr inbounds %struct.internal_state, ptr %284, i64 0, i32 8
  store i64 0, ptr %gzindex380, align 8
  br label %if.end381

if.end381:                                        ; preds = %do.end379, %if.then292
  %285 = load ptr, ptr %s, align 8
  %status382 = getelementptr inbounds %struct.internal_state, ptr %285, i64 0, i32 1
  store i32 73, ptr %status382, align 8
  br label %if.end383

if.end383:                                        ; preds = %if.end381, %if.end288
  %286 = load ptr, ptr %s, align 8
  %status384 = getelementptr inbounds %struct.internal_state, ptr %286, i64 0, i32 1
  %287 = load i32, ptr %status384, align 8
  %cmp385 = icmp eq i32 %287, 73
  br i1 %cmp385, label %if.then387, label %if.end462

if.then387:                                       ; preds = %if.end383
  %288 = load ptr, ptr %s, align 8
  %gzhead388 = getelementptr inbounds %struct.internal_state, ptr %288, i64 0, i32 7
  %289 = load ptr, ptr %gzhead388, align 8
  %name389 = getelementptr inbounds %struct.gz_header_s, ptr %289, i64 0, i32 7
  %290 = load ptr, ptr %name389, align 8
  %cmp390.not = icmp eq ptr %290, null
  br i1 %cmp390.not, label %if.end460, label %if.then392

if.then392:                                       ; preds = %if.then387
  %291 = load ptr, ptr %s, align 8
  %pending394 = getelementptr inbounds %struct.internal_state, ptr %291, i64 0, i32 5
  %292 = load i64, ptr %pending394, align 8
  store i64 %292, ptr %beg393, align 8
  br label %do.body395

do.body395:                                       ; preds = %if.end425, %if.then392
  %293 = load ptr, ptr %s, align 8
  %pending396 = getelementptr inbounds %struct.internal_state, ptr %293, i64 0, i32 5
  %294 = load i64, ptr %pending396, align 8
  %pending_buf_size397 = getelementptr inbounds %struct.internal_state, ptr %293, i64 0, i32 3
  %295 = load i64, ptr %pending_buf_size397, align 8
  %cmp398 = icmp eq i64 %294, %295
  br i1 %cmp398, label %do.body401, label %if.end425

do.body401:                                       ; preds = %do.body395
  %296 = load ptr, ptr %s, align 8
  %gzhead402 = getelementptr inbounds %struct.internal_state, ptr %296, i64 0, i32 7
  %297 = load ptr, ptr %gzhead402, align 8
  %hcrc403 = getelementptr inbounds %struct.gz_header_s, ptr %297, i64 0, i32 11
  %298 = load i32, ptr %hcrc403, align 4
  %tobool404.not = icmp eq i32 %298, 0
  br i1 %tobool404.not, label %do.end418, label %land.lhs.true405

land.lhs.true405:                                 ; preds = %do.body401
  %299 = load ptr, ptr %s, align 8
  %pending406 = getelementptr inbounds %struct.internal_state, ptr %299, i64 0, i32 5
  %300 = load i64, ptr %pending406, align 8
  %301 = load i64, ptr %beg393, align 8
  %cmp407 = icmp ugt i64 %300, %301
  br i1 %cmp407, label %if.then409, label %do.end418

if.then409:                                       ; preds = %land.lhs.true405
  %302 = load ptr, ptr %strm.addr, align 8
  %adler410 = getelementptr inbounds %struct.z_stream_s, ptr %302, i64 0, i32 12
  %303 = load i64, ptr %adler410, align 8
  %304 = load ptr, ptr %s, align 8
  %pending_buf411 = getelementptr inbounds %struct.internal_state, ptr %304, i64 0, i32 2
  %305 = load ptr, ptr %pending_buf411, align 8
  %306 = load i64, ptr %beg393, align 8
  %add.ptr412 = getelementptr inbounds i8, ptr %305, i64 %306
  %pending413 = getelementptr inbounds %struct.internal_state, ptr %304, i64 0, i32 5
  %307 = load i64, ptr %pending413, align 8
  %sub414 = sub i64 %307, %306
  %call415 = call i64 @crc32_z(i64 noundef %303, ptr noundef %add.ptr412, i64 noundef %sub414) #4
  %308 = load ptr, ptr %strm.addr, align 8
  %adler416 = getelementptr inbounds %struct.z_stream_s, ptr %308, i64 0, i32 12
  store i64 %call415, ptr %adler416, align 8
  br label %do.end418

do.end418:                                        ; preds = %do.body401, %land.lhs.true405, %if.then409
  %309 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %309)
  %310 = load ptr, ptr %s, align 8
  %pending419 = getelementptr inbounds %struct.internal_state, ptr %310, i64 0, i32 5
  %311 = load i64, ptr %pending419, align 8
  %cmp420.not = icmp eq i64 %311, 0
  br i1 %cmp420.not, label %if.end424, label %if.then422

if.then422:                                       ; preds = %do.end418
  %312 = load ptr, ptr %s, align 8
  %last_flush423 = getelementptr inbounds %struct.internal_state, ptr %312, i64 0, i32 10
  store i32 -1, ptr %last_flush423, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end424:                                        ; preds = %do.end418
  store i64 0, ptr %beg393, align 8
  br label %if.end425

if.end425:                                        ; preds = %if.end424, %do.body395
  %313 = load ptr, ptr %s, align 8
  %gzhead426 = getelementptr inbounds %struct.internal_state, ptr %313, i64 0, i32 7
  %314 = load ptr, ptr %gzhead426, align 8
  %name427 = getelementptr inbounds %struct.gz_header_s, ptr %314, i64 0, i32 7
  %315 = load ptr, ptr %name427, align 8
  %gzindex428 = getelementptr inbounds %struct.internal_state, ptr %313, i64 0, i32 8
  %316 = load i64, ptr %gzindex428, align 8
  %inc429 = add i64 %316, 1
  store i64 %inc429, ptr %gzindex428, align 8
  %arrayidx430 = getelementptr inbounds i8, ptr %315, i64 %316
  %317 = load i8, ptr %arrayidx430, align 1
  %conv431 = zext i8 %317 to i32
  store i32 %conv431, ptr %val, align 4
  %318 = load ptr, ptr %s, align 8
  %pending_buf433 = getelementptr inbounds %struct.internal_state, ptr %318, i64 0, i32 2
  %319 = load ptr, ptr %pending_buf433, align 8
  %pending434 = getelementptr inbounds %struct.internal_state, ptr %318, i64 0, i32 5
  %320 = load i64, ptr %pending434, align 8
  %inc435 = add i64 %320, 1
  store i64 %inc435, ptr %pending434, align 8
  %arrayidx436 = getelementptr inbounds i8, ptr %319, i64 %320
  store i8 %317, ptr %arrayidx436, align 1
  %321 = load i32, ptr %val, align 4
  %cmp437.not = icmp eq i32 %321, 0
  br i1 %cmp437.not, label %do.body440, label %do.body395, !llvm.loop !13

do.body440:                                       ; preds = %if.end425
  %322 = load ptr, ptr %s, align 8
  %gzhead441 = getelementptr inbounds %struct.internal_state, ptr %322, i64 0, i32 7
  %323 = load ptr, ptr %gzhead441, align 8
  %hcrc442 = getelementptr inbounds %struct.gz_header_s, ptr %323, i64 0, i32 11
  %324 = load i32, ptr %hcrc442, align 4
  %tobool443.not = icmp eq i32 %324, 0
  br i1 %tobool443.not, label %do.end458, label %land.lhs.true444

land.lhs.true444:                                 ; preds = %do.body440
  %325 = load ptr, ptr %s, align 8
  %pending445 = getelementptr inbounds %struct.internal_state, ptr %325, i64 0, i32 5
  %326 = load i64, ptr %pending445, align 8
  %327 = load i64, ptr %beg393, align 8
  %cmp446 = icmp ugt i64 %326, %327
  br i1 %cmp446, label %if.then448, label %do.end458

if.then448:                                       ; preds = %land.lhs.true444
  %328 = load ptr, ptr %strm.addr, align 8
  %adler449 = getelementptr inbounds %struct.z_stream_s, ptr %328, i64 0, i32 12
  %329 = load i64, ptr %adler449, align 8
  %330 = load ptr, ptr %s, align 8
  %pending_buf450 = getelementptr inbounds %struct.internal_state, ptr %330, i64 0, i32 2
  %331 = load ptr, ptr %pending_buf450, align 8
  %332 = load i64, ptr %beg393, align 8
  %add.ptr451 = getelementptr inbounds i8, ptr %331, i64 %332
  %pending452 = getelementptr inbounds %struct.internal_state, ptr %330, i64 0, i32 5
  %333 = load i64, ptr %pending452, align 8
  %sub453 = sub i64 %333, %332
  %call454 = call i64 @crc32_z(i64 noundef %329, ptr noundef %add.ptr451, i64 noundef %sub453) #4
  %334 = load ptr, ptr %strm.addr, align 8
  %adler455 = getelementptr inbounds %struct.z_stream_s, ptr %334, i64 0, i32 12
  store i64 %call454, ptr %adler455, align 8
  br label %do.end458

do.end458:                                        ; preds = %do.body440, %land.lhs.true444, %if.then448
  %335 = load ptr, ptr %s, align 8
  %gzindex459 = getelementptr inbounds %struct.internal_state, ptr %335, i64 0, i32 8
  store i64 0, ptr %gzindex459, align 8
  br label %if.end460

if.end460:                                        ; preds = %do.end458, %if.then387
  %336 = load ptr, ptr %s, align 8
  %status461 = getelementptr inbounds %struct.internal_state, ptr %336, i64 0, i32 1
  store i32 91, ptr %status461, align 8
  br label %if.end462

if.end462:                                        ; preds = %if.end460, %if.end383
  %337 = load ptr, ptr %s, align 8
  %status463 = getelementptr inbounds %struct.internal_state, ptr %337, i64 0, i32 1
  %338 = load i32, ptr %status463, align 8
  %cmp464 = icmp eq i32 %338, 91
  br i1 %cmp464, label %if.then466, label %if.end543

if.then466:                                       ; preds = %if.end462
  %339 = load ptr, ptr %s, align 8
  %gzhead467 = getelementptr inbounds %struct.internal_state, ptr %339, i64 0, i32 7
  %340 = load ptr, ptr %gzhead467, align 8
  %comment468 = getelementptr inbounds %struct.gz_header_s, ptr %340, i64 0, i32 9
  %341 = load ptr, ptr %comment468, align 8
  %cmp469.not = icmp eq ptr %341, null
  br i1 %cmp469.not, label %if.end541, label %if.then471

if.then471:                                       ; preds = %if.then466
  %342 = load ptr, ptr %s, align 8
  %pending473 = getelementptr inbounds %struct.internal_state, ptr %342, i64 0, i32 5
  %343 = load i64, ptr %pending473, align 8
  store i64 %343, ptr %beg472, align 8
  br label %do.body475

do.body475:                                       ; preds = %if.end506, %if.then471
  %344 = load ptr, ptr %s, align 8
  %pending476 = getelementptr inbounds %struct.internal_state, ptr %344, i64 0, i32 5
  %345 = load i64, ptr %pending476, align 8
  %pending_buf_size477 = getelementptr inbounds %struct.internal_state, ptr %344, i64 0, i32 3
  %346 = load i64, ptr %pending_buf_size477, align 8
  %cmp478 = icmp eq i64 %345, %346
  br i1 %cmp478, label %do.body481, label %if.end506

do.body481:                                       ; preds = %do.body475
  %347 = load ptr, ptr %s, align 8
  %gzhead482 = getelementptr inbounds %struct.internal_state, ptr %347, i64 0, i32 7
  %348 = load ptr, ptr %gzhead482, align 8
  %hcrc483 = getelementptr inbounds %struct.gz_header_s, ptr %348, i64 0, i32 11
  %349 = load i32, ptr %hcrc483, align 4
  %tobool484.not = icmp eq i32 %349, 0
  br i1 %tobool484.not, label %do.end499, label %land.lhs.true485

land.lhs.true485:                                 ; preds = %do.body481
  %350 = load ptr, ptr %s, align 8
  %pending486 = getelementptr inbounds %struct.internal_state, ptr %350, i64 0, i32 5
  %351 = load i64, ptr %pending486, align 8
  %352 = load i64, ptr %beg472, align 8
  %cmp487 = icmp ugt i64 %351, %352
  br i1 %cmp487, label %if.then489, label %do.end499

if.then489:                                       ; preds = %land.lhs.true485
  %353 = load ptr, ptr %strm.addr, align 8
  %adler490 = getelementptr inbounds %struct.z_stream_s, ptr %353, i64 0, i32 12
  %354 = load i64, ptr %adler490, align 8
  %355 = load ptr, ptr %s, align 8
  %pending_buf491 = getelementptr inbounds %struct.internal_state, ptr %355, i64 0, i32 2
  %356 = load ptr, ptr %pending_buf491, align 8
  %357 = load i64, ptr %beg472, align 8
  %add.ptr492 = getelementptr inbounds i8, ptr %356, i64 %357
  %pending493 = getelementptr inbounds %struct.internal_state, ptr %355, i64 0, i32 5
  %358 = load i64, ptr %pending493, align 8
  %sub494 = sub i64 %358, %357
  %call495 = call i64 @crc32_z(i64 noundef %354, ptr noundef %add.ptr492, i64 noundef %sub494) #4
  %359 = load ptr, ptr %strm.addr, align 8
  %adler496 = getelementptr inbounds %struct.z_stream_s, ptr %359, i64 0, i32 12
  store i64 %call495, ptr %adler496, align 8
  br label %do.end499

do.end499:                                        ; preds = %do.body481, %land.lhs.true485, %if.then489
  %360 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %360)
  %361 = load ptr, ptr %s, align 8
  %pending500 = getelementptr inbounds %struct.internal_state, ptr %361, i64 0, i32 5
  %362 = load i64, ptr %pending500, align 8
  %cmp501.not = icmp eq i64 %362, 0
  br i1 %cmp501.not, label %if.end505, label %if.then503

if.then503:                                       ; preds = %do.end499
  %363 = load ptr, ptr %s, align 8
  %last_flush504 = getelementptr inbounds %struct.internal_state, ptr %363, i64 0, i32 10
  store i32 -1, ptr %last_flush504, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end505:                                        ; preds = %do.end499
  store i64 0, ptr %beg472, align 8
  br label %if.end506

if.end506:                                        ; preds = %if.end505, %do.body475
  %364 = load ptr, ptr %s, align 8
  %gzhead507 = getelementptr inbounds %struct.internal_state, ptr %364, i64 0, i32 7
  %365 = load ptr, ptr %gzhead507, align 8
  %comment508 = getelementptr inbounds %struct.gz_header_s, ptr %365, i64 0, i32 9
  %366 = load ptr, ptr %comment508, align 8
  %gzindex509 = getelementptr inbounds %struct.internal_state, ptr %364, i64 0, i32 8
  %367 = load i64, ptr %gzindex509, align 8
  %inc510 = add i64 %367, 1
  store i64 %inc510, ptr %gzindex509, align 8
  %arrayidx511 = getelementptr inbounds i8, ptr %366, i64 %367
  %368 = load i8, ptr %arrayidx511, align 1
  %conv512 = zext i8 %368 to i32
  store i32 %conv512, ptr %val474, align 4
  %369 = load ptr, ptr %s, align 8
  %pending_buf514 = getelementptr inbounds %struct.internal_state, ptr %369, i64 0, i32 2
  %370 = load ptr, ptr %pending_buf514, align 8
  %pending515 = getelementptr inbounds %struct.internal_state, ptr %369, i64 0, i32 5
  %371 = load i64, ptr %pending515, align 8
  %inc516 = add i64 %371, 1
  store i64 %inc516, ptr %pending515, align 8
  %arrayidx517 = getelementptr inbounds i8, ptr %370, i64 %371
  store i8 %368, ptr %arrayidx517, align 1
  %372 = load i32, ptr %val474, align 4
  %cmp519.not = icmp eq i32 %372, 0
  br i1 %cmp519.not, label %do.body522, label %do.body475, !llvm.loop !14

do.body522:                                       ; preds = %if.end506
  %373 = load ptr, ptr %s, align 8
  %gzhead523 = getelementptr inbounds %struct.internal_state, ptr %373, i64 0, i32 7
  %374 = load ptr, ptr %gzhead523, align 8
  %hcrc524 = getelementptr inbounds %struct.gz_header_s, ptr %374, i64 0, i32 11
  %375 = load i32, ptr %hcrc524, align 4
  %tobool525.not = icmp eq i32 %375, 0
  br i1 %tobool525.not, label %if.end541, label %land.lhs.true526

land.lhs.true526:                                 ; preds = %do.body522
  %376 = load ptr, ptr %s, align 8
  %pending527 = getelementptr inbounds %struct.internal_state, ptr %376, i64 0, i32 5
  %377 = load i64, ptr %pending527, align 8
  %378 = load i64, ptr %beg472, align 8
  %cmp528 = icmp ugt i64 %377, %378
  br i1 %cmp528, label %if.then530, label %if.end541

if.then530:                                       ; preds = %land.lhs.true526
  %379 = load ptr, ptr %strm.addr, align 8
  %adler531 = getelementptr inbounds %struct.z_stream_s, ptr %379, i64 0, i32 12
  %380 = load i64, ptr %adler531, align 8
  %381 = load ptr, ptr %s, align 8
  %pending_buf532 = getelementptr inbounds %struct.internal_state, ptr %381, i64 0, i32 2
  %382 = load ptr, ptr %pending_buf532, align 8
  %383 = load i64, ptr %beg472, align 8
  %add.ptr533 = getelementptr inbounds i8, ptr %382, i64 %383
  %pending534 = getelementptr inbounds %struct.internal_state, ptr %381, i64 0, i32 5
  %384 = load i64, ptr %pending534, align 8
  %sub535 = sub i64 %384, %383
  %call536 = call i64 @crc32_z(i64 noundef %380, ptr noundef %add.ptr533, i64 noundef %sub535) #4
  %385 = load ptr, ptr %strm.addr, align 8
  %adler537 = getelementptr inbounds %struct.z_stream_s, ptr %385, i64 0, i32 12
  store i64 %call536, ptr %adler537, align 8
  br label %if.end541

if.end541:                                        ; preds = %if.then530, %land.lhs.true526, %do.body522, %if.then466
  %386 = load ptr, ptr %s, align 8
  %status542 = getelementptr inbounds %struct.internal_state, ptr %386, i64 0, i32 1
  store i32 103, ptr %status542, align 8
  br label %if.end543

if.end543:                                        ; preds = %if.end541, %if.end462
  %387 = load ptr, ptr %s, align 8
  %status544 = getelementptr inbounds %struct.internal_state, ptr %387, i64 0, i32 1
  %388 = load i32, ptr %status544, align 8
  %cmp545 = icmp eq i32 %388, 103
  br i1 %cmp545, label %if.then547, label %if.end590

if.then547:                                       ; preds = %if.end543
  %389 = load ptr, ptr %s, align 8
  %gzhead548 = getelementptr inbounds %struct.internal_state, ptr %389, i64 0, i32 7
  %390 = load ptr, ptr %gzhead548, align 8
  %hcrc549 = getelementptr inbounds %struct.gz_header_s, ptr %390, i64 0, i32 11
  %391 = load i32, ptr %hcrc549, align 4
  %tobool550.not = icmp eq i32 %391, 0
  br i1 %tobool550.not, label %if.end582, label %if.then551

if.then551:                                       ; preds = %if.then547
  %392 = load ptr, ptr %s, align 8
  %pending552 = getelementptr inbounds %struct.internal_state, ptr %392, i64 0, i32 5
  %393 = load i64, ptr %pending552, align 8
  %add553 = add i64 %393, 2
  %pending_buf_size554 = getelementptr inbounds %struct.internal_state, ptr %392, i64 0, i32 3
  %394 = load i64, ptr %pending_buf_size554, align 8
  %cmp555 = icmp ugt i64 %add553, %394
  br i1 %cmp555, label %if.then557, label %if.end564

if.then557:                                       ; preds = %if.then551
  %395 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %395)
  %396 = load ptr, ptr %s, align 8
  %pending558 = getelementptr inbounds %struct.internal_state, ptr %396, i64 0, i32 5
  %397 = load i64, ptr %pending558, align 8
  %cmp559.not = icmp eq i64 %397, 0
  br i1 %cmp559.not, label %if.end564, label %if.then561

if.then561:                                       ; preds = %if.then557
  %398 = load ptr, ptr %s, align 8
  %last_flush562 = getelementptr inbounds %struct.internal_state, ptr %398, i64 0, i32 10
  store i32 -1, ptr %last_flush562, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end564:                                        ; preds = %if.then557, %if.then551
  %399 = load ptr, ptr %strm.addr, align 8
  %adler565 = getelementptr inbounds %struct.z_stream_s, ptr %399, i64 0, i32 12
  %400 = load i64, ptr %adler565, align 8
  %conv567 = trunc i64 %400 to i8
  %401 = load ptr, ptr %s, align 8
  %pending_buf568 = getelementptr inbounds %struct.internal_state, ptr %401, i64 0, i32 2
  %402 = load ptr, ptr %pending_buf568, align 8
  %pending569 = getelementptr inbounds %struct.internal_state, ptr %401, i64 0, i32 5
  %403 = load i64, ptr %pending569, align 8
  %inc570 = add i64 %403, 1
  store i64 %inc570, ptr %pending569, align 8
  %arrayidx571 = getelementptr inbounds i8, ptr %402, i64 %403
  store i8 %conv567, ptr %arrayidx571, align 1
  %404 = load ptr, ptr %strm.addr, align 8
  %adler572 = getelementptr inbounds %struct.z_stream_s, ptr %404, i64 0, i32 12
  %405 = load i64, ptr %adler572, align 8
  %shr573 = lshr i64 %405, 8
  %conv575 = trunc i64 %shr573 to i8
  %406 = load ptr, ptr %s, align 8
  %pending_buf576 = getelementptr inbounds %struct.internal_state, ptr %406, i64 0, i32 2
  %407 = load ptr, ptr %pending_buf576, align 8
  %pending577 = getelementptr inbounds %struct.internal_state, ptr %406, i64 0, i32 5
  %408 = load i64, ptr %pending577, align 8
  %inc578 = add i64 %408, 1
  store i64 %inc578, ptr %pending577, align 8
  %arrayidx579 = getelementptr inbounds i8, ptr %407, i64 %408
  store i8 %conv575, ptr %arrayidx579, align 1
  %call580 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #4
  %409 = load ptr, ptr %strm.addr, align 8
  %adler581 = getelementptr inbounds %struct.z_stream_s, ptr %409, i64 0, i32 12
  store i64 %call580, ptr %adler581, align 8
  br label %if.end582

if.end582:                                        ; preds = %if.end564, %if.then547
  %410 = load ptr, ptr %s, align 8
  %status583 = getelementptr inbounds %struct.internal_state, ptr %410, i64 0, i32 1
  store i32 113, ptr %status583, align 8
  %411 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %411)
  %412 = load ptr, ptr %s, align 8
  %pending584 = getelementptr inbounds %struct.internal_state, ptr %412, i64 0, i32 5
  %413 = load i64, ptr %pending584, align 8
  %cmp585.not = icmp eq i64 %413, 0
  br i1 %cmp585.not, label %if.end590, label %if.then587

if.then587:                                       ; preds = %if.end582
  %414 = load ptr, ptr %s, align 8
  %last_flush588 = getelementptr inbounds %struct.internal_state, ptr %414, i64 0, i32 10
  store i32 -1, ptr %last_flush588, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end590:                                        ; preds = %if.end582, %if.end543
  %415 = load ptr, ptr %strm.addr, align 8
  %avail_in591 = getelementptr inbounds %struct.z_stream_s, ptr %415, i64 0, i32 1
  %416 = load i32, ptr %avail_in591, align 8
  %cmp592.not = icmp eq i32 %416, 0
  br i1 %cmp592.not, label %lor.lhs.false594, label %if.then604

lor.lhs.false594:                                 ; preds = %if.end590
  %417 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %417, i64 0, i32 29
  %418 = load i32, ptr %lookahead, align 4
  %cmp595.not = icmp eq i32 %418, 0
  br i1 %cmp595.not, label %lor.lhs.false597, label %if.then604

lor.lhs.false597:                                 ; preds = %lor.lhs.false594
  %419 = load i32, ptr %flush.addr, align 4
  %cmp598.not = icmp eq i32 %419, 0
  br i1 %cmp598.not, label %if.end695, label %land.lhs.true600

land.lhs.true600:                                 ; preds = %lor.lhs.false597
  %420 = load ptr, ptr %s, align 8
  %status601 = getelementptr inbounds %struct.internal_state, ptr %420, i64 0, i32 1
  %421 = load i32, ptr %status601, align 8
  %cmp602.not = icmp eq i32 %421, 666
  br i1 %cmp602.not, label %if.end695, label %if.then604

if.then604:                                       ; preds = %land.lhs.true600, %lor.lhs.false594, %if.end590
  %422 = load ptr, ptr %s, align 8
  %level605 = getelementptr inbounds %struct.internal_state, ptr %422, i64 0, i32 33
  %423 = load i32, ptr %level605, align 4
  %cmp606 = icmp eq i32 %423, 0
  br i1 %cmp606, label %cond.true608, label %cond.false610

cond.true608:                                     ; preds = %if.then604
  %424 = load ptr, ptr %s, align 8
  %425 = load i32, ptr %flush.addr, align 4
  %call609 = call i32 @deflate_stored(ptr noundef %424, i32 noundef %425)
  br label %cond.end630

cond.false610:                                    ; preds = %if.then604
  %426 = load ptr, ptr %s, align 8
  %strategy611 = getelementptr inbounds %struct.internal_state, ptr %426, i64 0, i32 34
  %427 = load i32, ptr %strategy611, align 8
  %cmp612 = icmp eq i32 %427, 2
  br i1 %cmp612, label %cond.true614, label %cond.false616

cond.true614:                                     ; preds = %cond.false610
  %428 = load ptr, ptr %s, align 8
  %429 = load i32, ptr %flush.addr, align 4
  %call615 = call i32 @deflate_huff(ptr noundef %428, i32 noundef %429)
  br label %cond.end630

cond.false616:                                    ; preds = %cond.false610
  %430 = load ptr, ptr %s, align 8
  %strategy617 = getelementptr inbounds %struct.internal_state, ptr %430, i64 0, i32 34
  %431 = load i32, ptr %strategy617, align 8
  %cmp618 = icmp eq i32 %431, 3
  br i1 %cmp618, label %cond.true620, label %cond.false622

cond.true620:                                     ; preds = %cond.false616
  %432 = load ptr, ptr %s, align 8
  %433 = load i32, ptr %flush.addr, align 4
  %call621 = call i32 @deflate_rle(ptr noundef %432, i32 noundef %433)
  br label %cond.end630

cond.false622:                                    ; preds = %cond.false616
  %434 = load ptr, ptr %s, align 8
  %level623 = getelementptr inbounds %struct.internal_state, ptr %434, i64 0, i32 33
  %435 = load i32, ptr %level623, align 4
  %idxprom = sext i32 %435 to i64
  %func = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom, i32 4
  %436 = load ptr, ptr %func, align 8
  %437 = load i32, ptr %flush.addr, align 4
  %call625 = call i32 %436(ptr noundef %434, i32 noundef %437) #4
  br label %cond.end630

cond.end630:                                      ; preds = %cond.true614, %cond.false622, %cond.true620, %cond.true608
  %cond631 = phi i32 [ %call609, %cond.true608 ], [ %call615, %cond.true614 ], [ %call621, %cond.true620 ], [ %call625, %cond.false622 ]
  store i32 %cond631, ptr %bstate, align 4
  %cmp632 = icmp eq i32 %cond631, 2
  %438 = load i32, ptr %bstate, align 4
  %cmp635 = icmp eq i32 %438, 3
  %or.cond7 = select i1 %cmp632, i1 true, i1 %cmp635
  br i1 %or.cond7, label %if.then637, label %if.end639

if.then637:                                       ; preds = %cond.end630
  %439 = load ptr, ptr %s, align 8
  %status638 = getelementptr inbounds %struct.internal_state, ptr %439, i64 0, i32 1
  store i32 666, ptr %status638, align 8
  br label %if.end639

if.end639:                                        ; preds = %cond.end630, %if.then637
  %440 = load i32, ptr %bstate, align 4
  %cmp640 = icmp eq i32 %440, 0
  %441 = load i32, ptr %bstate, align 4
  %cmp643 = icmp eq i32 %441, 2
  %or.cond8 = select i1 %cmp640, i1 true, i1 %cmp643
  br i1 %or.cond8, label %if.then645, label %if.end652

if.then645:                                       ; preds = %if.end639
  %442 = load ptr, ptr %strm.addr, align 8
  %avail_out646 = getelementptr inbounds %struct.z_stream_s, ptr %442, i64 0, i32 4
  %443 = load i32, ptr %avail_out646, align 8
  %cmp647 = icmp eq i32 %443, 0
  br i1 %cmp647, label %if.then649, label %if.end651

if.then649:                                       ; preds = %if.then645
  %444 = load ptr, ptr %s, align 8
  %last_flush650 = getelementptr inbounds %struct.internal_state, ptr %444, i64 0, i32 10
  store i32 -1, ptr %last_flush650, align 4
  br label %if.end651

if.end651:                                        ; preds = %if.then649, %if.then645
  store i32 0, ptr %retval, align 4
  br label %return

if.end652:                                        ; preds = %if.end639
  %445 = load i32, ptr %bstate, align 4
  %cmp653 = icmp eq i32 %445, 1
  br i1 %cmp653, label %if.then655, label %if.end695

if.then655:                                       ; preds = %if.end652
  %446 = load i32, ptr %flush.addr, align 4
  %cmp656 = icmp eq i32 %446, 1
  br i1 %cmp656, label %if.then658, label %if.else659

if.then658:                                       ; preds = %if.then655
  %447 = load ptr, ptr %s, align 8
  call void @_tr_align(ptr noundef %447) #4
  br label %if.end687

if.else659:                                       ; preds = %if.then655
  %448 = load i32, ptr %flush.addr, align 4
  %cmp660.not = icmp eq i32 %448, 5
  br i1 %cmp660.not, label %if.end687, label %if.then662

if.then662:                                       ; preds = %if.else659
  %449 = load ptr, ptr %s, align 8
  call void @_tr_stored_block(ptr noundef %449, ptr noundef null, i64 noundef 0, i32 noundef 0) #4
  %450 = load i32, ptr %flush.addr, align 4
  %cmp663 = icmp eq i32 %450, 3
  br i1 %cmp663, label %do.body666, label %if.end687

do.body666:                                       ; preds = %if.then662
  %451 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %451, i64 0, i32 17
  %452 = load ptr, ptr %head, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %451, i64 0, i32 19
  %453 = load i32, ptr %hash_size, align 4
  %sub667 = add i32 %453, -1
  %idxprom668 = zext i32 %sub667 to i64
  %arrayidx669 = getelementptr inbounds i16, ptr %452, i64 %idxprom668
  store i16 0, ptr %arrayidx669, align 2
  %454 = load ptr, ptr %s, align 8
  %head670 = getelementptr inbounds %struct.internal_state, ptr %454, i64 0, i32 17
  %455 = load ptr, ptr %head670, align 8
  %hash_size671 = getelementptr inbounds %struct.internal_state, ptr %454, i64 0, i32 19
  %456 = load i32, ptr %hash_size671, align 4
  %sub672 = add i32 %456, -1
  %conv673 = zext i32 %sub672 to i64
  %mul674 = shl nuw nsw i64 %conv673, 1
  %457 = load ptr, ptr %s, align 8
  %head675 = getelementptr inbounds %struct.internal_state, ptr %457, i64 0, i32 17
  %458 = load ptr, ptr %head675, align 8
  %459 = call i64 @llvm.objectsize.i64.p0(ptr %458, i1 false, i1 true, i1 false)
  %call676 = call ptr @__memset_chk(ptr noundef %455, i32 noundef 0, i64 noundef %mul674, i64 noundef %459) #4
  %460 = load ptr, ptr %s, align 8
  %slid = getelementptr inbounds %struct.internal_state, ptr %460, i64 0, i32 60
  store i32 0, ptr %slid, align 8
  %461 = load ptr, ptr %s, align 8
  %lookahead679 = getelementptr inbounds %struct.internal_state, ptr %461, i64 0, i32 29
  %462 = load i32, ptr %lookahead679, align 4
  %cmp680 = icmp eq i32 %462, 0
  br i1 %cmp680, label %if.then682, label %if.end687

if.then682:                                       ; preds = %do.body666
  %463 = load ptr, ptr %s, align 8
  %strstart683 = getelementptr inbounds %struct.internal_state, ptr %463, i64 0, i32 27
  store i32 0, ptr %strstart683, align 4
  %block_start = getelementptr inbounds %struct.internal_state, ptr %463, i64 0, i32 23
  store i64 0, ptr %block_start, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %463, i64 0, i32 55
  store i32 0, ptr %insert, align 4
  br label %if.end687

if.end687:                                        ; preds = %if.else659, %do.body666, %if.then682, %if.then662, %if.then658
  %464 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %464)
  %avail_out688 = getelementptr inbounds %struct.z_stream_s, ptr %464, i64 0, i32 4
  %465 = load i32, ptr %avail_out688, align 8
  %cmp689 = icmp eq i32 %465, 0
  br i1 %cmp689, label %if.then691, label %if.end695

if.then691:                                       ; preds = %if.end687
  %466 = load ptr, ptr %s, align 8
  %last_flush692 = getelementptr inbounds %struct.internal_state, ptr %466, i64 0, i32 10
  store i32 -1, ptr %last_flush692, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end695:                                        ; preds = %if.end652, %if.end687, %land.lhs.true600, %lor.lhs.false597
  %467 = load i32, ptr %flush.addr, align 4
  %cmp696.not = icmp eq i32 %467, 4
  br i1 %cmp696.not, label %if.end699, label %if.then698

if.then698:                                       ; preds = %if.end695
  store i32 0, ptr %retval, align 4
  br label %return

if.end699:                                        ; preds = %if.end695
  %468 = load ptr, ptr %s, align 8
  %wrap700 = getelementptr inbounds %struct.internal_state, ptr %468, i64 0, i32 6
  %469 = load i32, ptr %wrap700, align 8
  %cmp701 = icmp slt i32 %469, 1
  br i1 %cmp701, label %if.then703, label %if.end704

if.then703:                                       ; preds = %if.end699
  store i32 1, ptr %retval, align 4
  br label %return

if.end704:                                        ; preds = %if.end699
  %470 = load ptr, ptr %s, align 8
  %wrap705 = getelementptr inbounds %struct.internal_state, ptr %470, i64 0, i32 6
  %471 = load i32, ptr %wrap705, align 8
  %cmp706 = icmp eq i32 %471, 2
  br i1 %cmp706, label %if.then708, label %if.else770

if.then708:                                       ; preds = %if.end704
  %472 = load ptr, ptr %strm.addr, align 8
  %adler709 = getelementptr inbounds %struct.z_stream_s, ptr %472, i64 0, i32 12
  %473 = load i64, ptr %adler709, align 8
  %conv711 = trunc i64 %473 to i8
  %474 = load ptr, ptr %s, align 8
  %pending_buf712 = getelementptr inbounds %struct.internal_state, ptr %474, i64 0, i32 2
  %475 = load ptr, ptr %pending_buf712, align 8
  %pending713 = getelementptr inbounds %struct.internal_state, ptr %474, i64 0, i32 5
  %476 = load i64, ptr %pending713, align 8
  %inc714 = add i64 %476, 1
  store i64 %inc714, ptr %pending713, align 8
  %arrayidx715 = getelementptr inbounds i8, ptr %475, i64 %476
  store i8 %conv711, ptr %arrayidx715, align 1
  %477 = load ptr, ptr %strm.addr, align 8
  %adler716 = getelementptr inbounds %struct.z_stream_s, ptr %477, i64 0, i32 12
  %478 = load i64, ptr %adler716, align 8
  %shr717 = lshr i64 %478, 8
  %conv719 = trunc i64 %shr717 to i8
  %479 = load ptr, ptr %s, align 8
  %pending_buf720 = getelementptr inbounds %struct.internal_state, ptr %479, i64 0, i32 2
  %480 = load ptr, ptr %pending_buf720, align 8
  %pending721 = getelementptr inbounds %struct.internal_state, ptr %479, i64 0, i32 5
  %481 = load i64, ptr %pending721, align 8
  %inc722 = add i64 %481, 1
  store i64 %inc722, ptr %pending721, align 8
  %arrayidx723 = getelementptr inbounds i8, ptr %480, i64 %481
  store i8 %conv719, ptr %arrayidx723, align 1
  %482 = load ptr, ptr %strm.addr, align 8
  %adler724 = getelementptr inbounds %struct.z_stream_s, ptr %482, i64 0, i32 12
  %483 = load i64, ptr %adler724, align 8
  %shr725 = lshr i64 %483, 16
  %conv727 = trunc i64 %shr725 to i8
  %484 = load ptr, ptr %s, align 8
  %pending_buf728 = getelementptr inbounds %struct.internal_state, ptr %484, i64 0, i32 2
  %485 = load ptr, ptr %pending_buf728, align 8
  %pending729 = getelementptr inbounds %struct.internal_state, ptr %484, i64 0, i32 5
  %486 = load i64, ptr %pending729, align 8
  %inc730 = add i64 %486, 1
  store i64 %inc730, ptr %pending729, align 8
  %arrayidx731 = getelementptr inbounds i8, ptr %485, i64 %486
  store i8 %conv727, ptr %arrayidx731, align 1
  %487 = load ptr, ptr %strm.addr, align 8
  %adler732 = getelementptr inbounds %struct.z_stream_s, ptr %487, i64 0, i32 12
  %488 = load i64, ptr %adler732, align 8
  %shr733 = lshr i64 %488, 24
  %conv735 = trunc i64 %shr733 to i8
  %489 = load ptr, ptr %s, align 8
  %pending_buf736 = getelementptr inbounds %struct.internal_state, ptr %489, i64 0, i32 2
  %490 = load ptr, ptr %pending_buf736, align 8
  %pending737 = getelementptr inbounds %struct.internal_state, ptr %489, i64 0, i32 5
  %491 = load i64, ptr %pending737, align 8
  %inc738 = add i64 %491, 1
  store i64 %inc738, ptr %pending737, align 8
  %arrayidx739 = getelementptr inbounds i8, ptr %490, i64 %491
  store i8 %conv735, ptr %arrayidx739, align 1
  %492 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %492, i64 0, i32 2
  %493 = load i64, ptr %total_in, align 8
  %conv741 = trunc i64 %493 to i8
  %494 = load ptr, ptr %s, align 8
  %pending_buf742 = getelementptr inbounds %struct.internal_state, ptr %494, i64 0, i32 2
  %495 = load ptr, ptr %pending_buf742, align 8
  %pending743 = getelementptr inbounds %struct.internal_state, ptr %494, i64 0, i32 5
  %496 = load i64, ptr %pending743, align 8
  %inc744 = add i64 %496, 1
  store i64 %inc744, ptr %pending743, align 8
  %arrayidx745 = getelementptr inbounds i8, ptr %495, i64 %496
  store i8 %conv741, ptr %arrayidx745, align 1
  %497 = load ptr, ptr %strm.addr, align 8
  %total_in746 = getelementptr inbounds %struct.z_stream_s, ptr %497, i64 0, i32 2
  %498 = load i64, ptr %total_in746, align 8
  %shr747 = lshr i64 %498, 8
  %conv749 = trunc i64 %shr747 to i8
  %499 = load ptr, ptr %s, align 8
  %pending_buf750 = getelementptr inbounds %struct.internal_state, ptr %499, i64 0, i32 2
  %500 = load ptr, ptr %pending_buf750, align 8
  %pending751 = getelementptr inbounds %struct.internal_state, ptr %499, i64 0, i32 5
  %501 = load i64, ptr %pending751, align 8
  %inc752 = add i64 %501, 1
  store i64 %inc752, ptr %pending751, align 8
  %arrayidx753 = getelementptr inbounds i8, ptr %500, i64 %501
  store i8 %conv749, ptr %arrayidx753, align 1
  %502 = load ptr, ptr %strm.addr, align 8
  %total_in754 = getelementptr inbounds %struct.z_stream_s, ptr %502, i64 0, i32 2
  %503 = load i64, ptr %total_in754, align 8
  %shr755 = lshr i64 %503, 16
  %conv757 = trunc i64 %shr755 to i8
  %504 = load ptr, ptr %s, align 8
  %pending_buf758 = getelementptr inbounds %struct.internal_state, ptr %504, i64 0, i32 2
  %505 = load ptr, ptr %pending_buf758, align 8
  %pending759 = getelementptr inbounds %struct.internal_state, ptr %504, i64 0, i32 5
  %506 = load i64, ptr %pending759, align 8
  %inc760 = add i64 %506, 1
  store i64 %inc760, ptr %pending759, align 8
  %arrayidx761 = getelementptr inbounds i8, ptr %505, i64 %506
  store i8 %conv757, ptr %arrayidx761, align 1
  %507 = load ptr, ptr %strm.addr, align 8
  %total_in762 = getelementptr inbounds %struct.z_stream_s, ptr %507, i64 0, i32 2
  %508 = load i64, ptr %total_in762, align 8
  %shr763 = lshr i64 %508, 24
  %conv765 = trunc i64 %shr763 to i8
  %509 = load ptr, ptr %s, align 8
  %pending_buf766 = getelementptr inbounds %struct.internal_state, ptr %509, i64 0, i32 2
  %510 = load ptr, ptr %pending_buf766, align 8
  %pending767 = getelementptr inbounds %struct.internal_state, ptr %509, i64 0, i32 5
  %511 = load i64, ptr %pending767, align 8
  %inc768 = add i64 %511, 1
  store i64 %inc768, ptr %pending767, align 8
  %arrayidx769 = getelementptr inbounds i8, ptr %510, i64 %511
  store i8 %conv765, ptr %arrayidx769, align 1
  br label %if.end777

if.else770:                                       ; preds = %if.end704
  %512 = load ptr, ptr %s, align 8
  %513 = load ptr, ptr %strm.addr, align 8
  %adler771 = getelementptr inbounds %struct.z_stream_s, ptr %513, i64 0, i32 12
  %514 = load i64, ptr %adler771, align 8
  %shr772 = lshr i64 %514, 16
  %conv773 = trunc i64 %shr772 to i32
  call void @putShortMSB(ptr noundef %512, i32 noundef %conv773)
  %515 = load ptr, ptr %s, align 8
  %516 = load ptr, ptr %strm.addr, align 8
  %adler774 = getelementptr inbounds %struct.z_stream_s, ptr %516, i64 0, i32 12
  %517 = load i64, ptr %adler774, align 8
  %518 = trunc i64 %517 to i32
  %conv776 = and i32 %518, 65535
  call void @putShortMSB(ptr noundef %515, i32 noundef %conv776)
  br label %if.end777

if.end777:                                        ; preds = %if.else770, %if.then708
  %519 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %519)
  %520 = load ptr, ptr %s, align 8
  %wrap778 = getelementptr inbounds %struct.internal_state, ptr %520, i64 0, i32 6
  %521 = load i32, ptr %wrap778, align 8
  %cmp779 = icmp sgt i32 %521, 0
  br i1 %cmp779, label %if.then781, label %if.end785

if.then781:                                       ; preds = %if.end777
  %522 = load ptr, ptr %s, align 8
  %wrap782 = getelementptr inbounds %struct.internal_state, ptr %522, i64 0, i32 6
  %523 = load i32, ptr %wrap782, align 8
  %sub783 = sub nsw i32 0, %523
  %wrap784 = getelementptr inbounds %struct.internal_state, ptr %522, i64 0, i32 6
  store i32 %sub783, ptr %wrap784, align 8
  br label %if.end785

if.end785:                                        ; preds = %if.then781, %if.end777
  %524 = load ptr, ptr %s, align 8
  %pending786 = getelementptr inbounds %struct.internal_state, ptr %524, i64 0, i32 5
  %525 = load i64, ptr %pending786, align 8
  %cmp787.not = icmp eq i64 %525, 0
  %cond789 = zext i1 %cmp787.not to i32
  store i32 %cond789, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end785, %if.then703, %if.then698, %if.then691, %if.end651, %if.then587, %if.then561, %if.then503, %if.then422, %if.then345, %if.then161, %if.then95, %if.then45, %if.then36, %if.then22, %if.then14, %if.then11, %if.then
  %526 = load i32, ptr %retval, align 4
  ret i32 %526
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
  %w_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 11
  %0 = load i32, ptr %w_size, align 8
  store i32 %0, ptr %wsize, align 4
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 19
  %1 = load i32, ptr %hash_size, align 4
  store i32 %1, ptr %n, align 4
  %2 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 17
  %3 = load ptr, ptr %head, align 8
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %4 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i64 -1
  store ptr %incdec.ptr, ptr %p, align 8
  %5 = load i16, ptr %incdec.ptr, align 2
  %conv = zext i16 %5 to i32
  store i32 %conv, ptr %m, align 4
  %6 = load i32, ptr %wsize, align 4
  %cmp.not = icmp ugt i32 %6, %conv
  %7 = load i32, ptr %m, align 4
  %8 = load i32, ptr %wsize, align 4
  %sub = sub i32 %7, %8
  %cond = select i1 %cmp.not, i32 0, i32 %sub
  %conv2 = trunc i32 %cond to i16
  %9 = load ptr, ptr %p, align 8
  store i16 %conv2, ptr %9, align 2
  %10 = load i32, ptr %n, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %n, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !15

do.end:                                           ; preds = %do.body
  %11 = load i32, ptr %wsize, align 4
  store i32 %11, ptr %n, align 4
  %12 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 16
  %13 = load ptr, ptr %prev, align 8
  %idxprom3 = zext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i16, ptr %13, i64 %idxprom3
  store ptr %arrayidx4, ptr %p, align 8
  br label %do.body5

do.body5:                                         ; preds = %do.body5, %do.end
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr6 = getelementptr inbounds i16, ptr %14, i64 -1
  store ptr %incdec.ptr6, ptr %p, align 8
  %15 = load i16, ptr %incdec.ptr6, align 2
  %conv7 = zext i16 %15 to i32
  store i32 %conv7, ptr %m, align 4
  %16 = load i32, ptr %wsize, align 4
  %cmp8.not = icmp ugt i32 %16, %conv7
  %17 = load i32, ptr %m, align 4
  %18 = load i32, ptr %wsize, align 4
  %sub11 = sub i32 %17, %18
  %cond14 = select i1 %cmp8.not, i32 0, i32 %sub11
  %conv15 = trunc i32 %cond14 to i16
  %19 = load ptr, ptr %p, align 8
  store i16 %conv15, ptr %19, align 2
  %20 = load i32, ptr %n, align 4
  %dec17 = add i32 %20, -1
  store i32 %dec17, ptr %n, align 4
  %tobool18.not = icmp eq i32 %dec17, 0
  br i1 %tobool18.not, label %do.end19, label %do.body5, !llvm.loop !16

do.end19:                                         ; preds = %do.body5
  %21 = load ptr, ptr %s.addr, align 8
  %slid = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 60
  store i32 1, ptr %slid, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateTune(ptr noundef %strm, i32 noundef %good_length, i32 noundef %max_lazy, i32 noundef %nice_length, i32 noundef %max_chain) #0 {
entry:
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
  %call = call i32 @deflateStateCheck(ptr noundef %strm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  %2 = load i32, ptr %good_length.addr, align 4
  %good_match = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 35
  store i32 %2, ptr %good_match, align 4
  %3 = load i32, ptr %max_lazy.addr, align 4
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %1, i64 0, i32 32
  store i32 %3, ptr %max_lazy_match, align 8
  %4 = load i32, ptr %nice_length.addr, align 4
  %5 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 36
  store i32 %4, ptr %nice_match, align 8
  %6 = load i32, ptr %max_chain.addr, align 4
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 31
  store i32 %6, ptr %max_chain_length, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -2, %entry ]
  ret i32 %storemerge
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
  %shr = lshr i64 %sourceLen, 3
  %add = add i64 %shr, %sourceLen
  %shr1 = lshr i64 %sourceLen, 8
  %add2 = add i64 %add, %shr1
  %shr3 = lshr i64 %sourceLen, 9
  %add4 = add i64 %add2, %shr3
  %add5 = add i64 %add4, 4
  store i64 %add5, ptr %fixedlen, align 8
  %0 = load i64, ptr %sourceLen.addr, align 8
  %cmp = icmp ult i64 %add5, %0
  %spec.store.select = select i1 %cmp, i64 -1, i64 %add5
  store i64 %spec.store.select, ptr %fixedlen, align 8
  %1 = load i64, ptr %sourceLen.addr, align 8
  %shr6 = lshr i64 %1, 5
  %add7 = add i64 %1, %shr6
  %shr8 = lshr i64 %1, 7
  %add9 = add i64 %add7, %shr8
  %shr10 = lshr i64 %1, 11
  %add11 = add i64 %add9, %shr10
  %add12 = add i64 %add11, 7
  store i64 %add12, ptr %storelen, align 8
  %2 = load i64, ptr %sourceLen.addr, align 8
  %cmp13 = icmp ult i64 %add12, %2
  %spec.store.select1 = select i1 %cmp13, i64 -1, i64 %add12
  store i64 %spec.store.select1, ptr %storelen, align 8
  %3 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @deflateStateCheck(ptr noundef %3)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end25, label %if.then16

if.then16:                                        ; preds = %entry
  %4 = load i64, ptr %fixedlen, align 8
  %5 = load i64, ptr %storelen, align 8
  %cmp17 = icmp ugt i64 %4, %5
  %6 = load i64, ptr %fixedlen, align 8
  %7 = load i64, ptr %storelen, align 8
  %cond = select i1 %cmp17, i64 %6, i64 %7
  store i64 %cond, ptr %bound, align 8
  %cmp19 = icmp ugt i64 %cond, -19
  %8 = load i64, ptr %bound, align 8
  %add22 = add i64 %8, 18
  %cond24 = select i1 %cmp19, i64 -1, i64 %add22
  store i64 %cond24, ptr %retval, align 8
  br label %return

if.end25:                                         ; preds = %entry
  %9 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 7
  %10 = load ptr, ptr %state, align 8
  store ptr %10, ptr %s, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 6
  %11 = load i32, ptr %wrap, align 8
  %cmp26 = icmp slt i32 %11, 0
  br i1 %cmp26, label %cond.true27, label %cond.false29

cond.true27:                                      ; preds = %if.end25
  %12 = load ptr, ptr %s, align 8
  %wrap28 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 6
  %13 = load i32, ptr %wrap28, align 8
  %sub = sub nsw i32 0, %13
  br label %cond.end31

cond.false29:                                     ; preds = %if.end25
  %14 = load ptr, ptr %s, align 8
  %wrap30 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %wrap30, align 8
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false29, %cond.true27
  %cond32 = phi i32 [ %sub, %cond.true27 ], [ %15, %cond.false29 ]
  switch i32 %cond32, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb37
  ]

sw.bb:                                            ; preds = %cond.end31
  store i64 0, ptr %wraplen, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %cond.end31
  %16 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 27
  %17 = load i32, ptr %strstart, align 4
  %tobool34.not = icmp eq i32 %17, 0
  %add36 = select i1 %tobool34.not, i64 6, i64 10
  store i64 %add36, ptr %wraplen, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %cond.end31
  store i64 18, ptr %wraplen, align 8
  %18 = load ptr, ptr %s, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 7
  %19 = load ptr, ptr %gzhead, align 8
  %cmp38.not = icmp eq ptr %19, null
  br i1 %cmp38.not, label %sw.epilog, label %if.then40

if.then40:                                        ; preds = %sw.bb37
  %20 = load ptr, ptr %s, align 8
  %gzhead41 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 7
  %21 = load ptr, ptr %gzhead41, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %21, i64 0, i32 4
  %22 = load ptr, ptr %extra, align 8
  %cmp42.not = icmp eq ptr %22, null
  br i1 %cmp42.not, label %if.end49, label %if.then44

if.then44:                                        ; preds = %if.then40
  %23 = load ptr, ptr %s, align 8
  %gzhead45 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 7
  %24 = load ptr, ptr %gzhead45, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %24, i64 0, i32 5
  %25 = load i32, ptr %extra_len, align 8
  %add46 = add i32 %25, 2
  %conv47 = zext i32 %add46 to i64
  %26 = load i64, ptr %wraplen, align 8
  %add48 = add i64 %26, %conv47
  store i64 %add48, ptr %wraplen, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.then40
  %27 = load ptr, ptr %s, align 8
  %gzhead50 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 7
  %28 = load ptr, ptr %gzhead50, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %28, i64 0, i32 7
  %29 = load ptr, ptr %name, align 8
  store ptr %29, ptr %str, align 8
  %cmp51.not = icmp eq ptr %29, null
  br i1 %cmp51.not, label %if.end55, label %do.body

do.body:                                          ; preds = %if.end49, %do.body
  %30 = load i64, ptr %wraplen, align 8
  %inc = add i64 %30, 1
  store i64 %inc, ptr %wraplen, align 8
  %31 = load ptr, ptr %str, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr, ptr %str, align 8
  %32 = load i8, ptr %31, align 1
  %tobool54.not = icmp eq i8 %32, 0
  br i1 %tobool54.not, label %if.end55, label %do.body, !llvm.loop !17

if.end55:                                         ; preds = %do.body, %if.end49
  %33 = load ptr, ptr %s, align 8
  %gzhead56 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 7
  %34 = load ptr, ptr %gzhead56, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %34, i64 0, i32 9
  %35 = load ptr, ptr %comment, align 8
  store ptr %35, ptr %str, align 8
  %cmp57.not = icmp eq ptr %35, null
  br i1 %cmp57.not, label %if.end66, label %do.body60

do.body60:                                        ; preds = %if.end55, %do.body60
  %36 = load i64, ptr %wraplen, align 8
  %inc61 = add i64 %36, 1
  store i64 %inc61, ptr %wraplen, align 8
  %37 = load ptr, ptr %str, align 8
  %incdec.ptr63 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %incdec.ptr63, ptr %str, align 8
  %38 = load i8, ptr %37, align 1
  %tobool64.not = icmp eq i8 %38, 0
  br i1 %tobool64.not, label %if.end66, label %do.body60, !llvm.loop !18

if.end66:                                         ; preds = %do.body60, %if.end55
  %39 = load ptr, ptr %s, align 8
  %gzhead67 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 7
  %40 = load ptr, ptr %gzhead67, align 8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %40, i64 0, i32 11
  %41 = load i32, ptr %hcrc, align 4
  %tobool68.not = icmp eq i32 %41, 0
  br i1 %tobool68.not, label %sw.epilog, label %if.then69

if.then69:                                        ; preds = %if.end66
  %42 = load i64, ptr %wraplen, align 8
  %add70 = add i64 %42, 2
  store i64 %add70, ptr %wraplen, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end31
  store i64 18, ptr %wraplen, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %if.then69, %if.end66, %sw.default, %sw.bb33, %sw.bb
  %43 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 12
  %44 = load i32, ptr %w_bits, align 4
  %cmp73.not = icmp eq i32 %44, 15
  br i1 %cmp73.not, label %lor.lhs.false, label %if.then77

lor.lhs.false:                                    ; preds = %sw.epilog
  %45 = load ptr, ptr %s, align 8
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 20
  %46 = load i32, ptr %hash_bits, align 8
  %cmp75.not = icmp eq i32 %46, 15
  br i1 %cmp75.not, label %if.end95, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false, %sw.epilog
  %47 = load ptr, ptr %s, align 8
  %w_bits78 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 12
  %48 = load i32, ptr %w_bits78, align 4
  %hash_bits79 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 20
  %49 = load i32, ptr %hash_bits79, align 8
  %cmp80.not = icmp ugt i32 %48, %49
  br i1 %cmp80.not, label %cond.false84, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then77
  %50 = load ptr, ptr %s, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 33
  %51 = load i32, ptr %level, align 4
  %tobool82.not = icmp eq i32 %51, 0
  br i1 %tobool82.not, label %cond.false84, label %cond.true83

cond.true83:                                      ; preds = %land.lhs.true
  %52 = load i64, ptr %fixedlen, align 8
  br label %cond.end85

cond.false84:                                     ; preds = %land.lhs.true, %if.then77
  %53 = load i64, ptr %storelen, align 8
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.true83
  %cond86 = phi i64 [ %52, %cond.true83 ], [ %53, %cond.false84 ]
  store i64 %cond86, ptr %bound, align 8
  %54 = load i64, ptr %wraplen, align 8
  %55 = xor i64 %cond86, -1
  %cmp88 = icmp ugt i64 %54, %55
  %56 = load i64, ptr %bound, align 8
  %57 = load i64, ptr %wraplen, align 8
  %add92 = add i64 %56, %57
  %cond94 = select i1 %cmp88, i64 -1, i64 %add92
  store i64 %cond94, ptr %retval, align 8
  br label %return

if.end95:                                         ; preds = %lor.lhs.false
  %58 = load i64, ptr %sourceLen.addr, align 8
  %shr96 = lshr i64 %58, 12
  %add97 = add i64 %58, %shr96
  %shr98 = lshr i64 %58, 14
  %add99 = add i64 %add97, %shr98
  %shr100 = lshr i64 %58, 25
  %add101 = add i64 %add99, %shr100
  %sub103 = add i64 %add101, 7
  %59 = load i64, ptr %wraplen, align 8
  %add104 = add i64 %sub103, %59
  store i64 %add104, ptr %bound, align 8
  %60 = load i64, ptr %sourceLen.addr, align 8
  %cmp105 = icmp ult i64 %add104, %60
  %61 = load i64, ptr %bound, align 8
  %cond110 = select i1 %cmp105, i64 -1, i64 %61
  store i64 %cond110, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end95, %cond.end85, %if.then16
  %62 = load i64, ptr %retval, align 8
  ret i64 %62
}

; Function Attrs: nounwind ssp uwtable
define i64 @deflateBound(ptr noundef %strm, i64 noundef %sourceLen) #0 {
entry:
  %bound = alloca i64, align 8
  %call = call i64 @deflateBound_z(ptr noundef %strm, i64 noundef %sourceLen)
  store i64 %call, ptr %bound, align 8
  %0 = load i64, ptr %bound, align 8
  ret i64 %0
}

; Function Attrs: nounwind ssp uwtable
define internal void @flush_pending(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %strm, i64 0, i32 7
  %0 = load ptr, ptr %state, align 8
  store ptr %0, ptr %s, align 8
  call void @_tr_flush_bits(ptr noundef %0) #4
  %pending = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %1 = load i64, ptr %pending, align 8
  %2 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 4
  %3 = load i32, ptr %avail_out, align 8
  %conv = zext i32 %3 to i64
  %cmp = icmp ugt i64 %1, %conv
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %strm.addr, align 8
  %avail_out2 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 4
  %5 = load i32, ptr %avail_out2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %s, align 8
  %pending3 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %7 = load i64, ptr %pending3, align 8
  %conv4 = trunc i64 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %conv4, %cond.false ]
  store i32 %cond, ptr %len, align 4
  %cmp5 = icmp eq i32 %cond, 0
  br i1 %cmp5, label %if.end23, label %if.end

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 3
  %9 = load ptr, ptr %next_out, align 8
  %10 = load ptr, ptr %s, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %pending_out, align 8
  %12 = load i32, ptr %len, align 4
  %conv7 = zext i32 %12 to i64
  %13 = load ptr, ptr %strm.addr, align 8
  %next_out8 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 3
  %14 = load ptr, ptr %next_out8, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %9, ptr noundef %11, i64 noundef %conv7, i64 noundef %15) #4
  %16 = load i32, ptr %len, align 4
  %next_out9 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %next_out9, align 8
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %next_out9, align 8
  %18 = load ptr, ptr %s, align 8
  %pending_out10 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 4
  %19 = load ptr, ptr %pending_out10, align 8
  %idx.ext11 = zext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %19, i64 %idx.ext11
  store ptr %add.ptr12, ptr %pending_out10, align 8
  %20 = load i32, ptr %len, align 4
  %conv13 = zext i32 %20 to i64
  %21 = load ptr, ptr %strm.addr, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %21, i64 0, i32 5
  %22 = load i64, ptr %total_out, align 8
  %add = add i64 %22, %conv13
  store i64 %add, ptr %total_out, align 8
  %23 = load i32, ptr %len, align 4
  %avail_out14 = getelementptr inbounds %struct.z_stream_s, ptr %21, i64 0, i32 4
  %24 = load i32, ptr %avail_out14, align 8
  %sub = sub i32 %24, %23
  store i32 %sub, ptr %avail_out14, align 8
  %conv15 = zext i32 %23 to i64
  %25 = load ptr, ptr %s, align 8
  %pending16 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 5
  %26 = load i64, ptr %pending16, align 8
  %sub17 = sub i64 %26, %conv15
  store i64 %sub17, ptr %pending16, align 8
  %cmp19 = icmp eq i64 %26, %conv15
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end
  %27 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 2
  %28 = load ptr, ptr %pending_buf, align 8
  %pending_out22 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 4
  store ptr %28, ptr %pending_out22, align 8
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %if.then21, %if.end
  ret void
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
  %1 = load i64, ptr %pending, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pending, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %1
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i32, ptr %b.addr, align 4
  %conv1 = trunc i32 %2 to i8
  %3 = load ptr, ptr %s.addr, align 8
  %pending_buf2 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %pending_buf2, align 8
  %pending3 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 5
  %5 = load i64, ptr %pending3, align 8
  %inc4 = add i64 %5, 1
  store i64 %inc4, ptr %pending3, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 %5
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
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 3
  %0 = load i64, ptr %pending_buf_size, align 8
  %sub = add i64 %0, -5
  %w_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 11
  %1 = load i32, ptr %w_size, align 8
  %conv = zext i32 %1 to i64
  %cmp = icmp ugt i64 %sub, %conv
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %w_size2 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 11
  %3 = load i32, ptr %w_size2, align 8
  %conv3 = zext i32 %3 to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8
  %pending_buf_size4 = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 3
  %5 = load i64, ptr %pending_buf_size4, align 8
  %sub5 = add i64 %5, -5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ %sub5, %cond.false ]
  %conv6 = trunc i64 %cond to i32
  store i32 %conv6, ptr %min_block, align 4
  store i32 0, ptr %last, align 4
  %6 = load ptr, ptr %s.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 1
  %8 = load i32, ptr %avail_in, align 8
  store i32 %8, ptr %used, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  store i32 65535, ptr %len, align 4
  %9 = load ptr, ptr %s.addr, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 57
  %10 = load i32, ptr %bi_valid, align 4
  %add = add i32 %10, 42
  %shr = lshr i32 %add, 3
  store i32 %shr, ptr %have, align 4
  %11 = load ptr, ptr %9, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 4
  %12 = load i32, ptr %avail_out, align 8
  %cmp8 = icmp ult i32 %12, %shr
  br i1 %cmp8, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %13 = load ptr, ptr %s.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %avail_out11 = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 4
  %15 = load i32, ptr %avail_out11, align 8
  %16 = load i32, ptr %have, align 4
  %sub12 = sub i32 %15, %16
  store i32 %sub12, ptr %have, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 27
  %18 = load i32, ptr %strstart, align 4
  %block_start = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 23
  %19 = load i64, ptr %block_start, align 8
  %20 = trunc i64 %19 to i32
  %conv15 = sub i32 %18, %20
  store i32 %conv15, ptr %left, align 4
  %21 = load i32, ptr %len, align 4
  %conv16 = zext i32 %21 to i64
  %conv17 = zext i32 %conv15 to i64
  %22 = load ptr, ptr %s.addr, align 8
  %23 = load ptr, ptr %22, align 8
  %avail_in19 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 1
  %24 = load i32, ptr %avail_in19, align 8
  %conv20 = zext i32 %24 to i64
  %add21 = add nuw nsw i64 %conv17, %conv20
  %cmp22 = icmp ult i64 %add21, %conv16
  br i1 %cmp22, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end
  %25 = load i32, ptr %left, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %avail_in26 = getelementptr inbounds %struct.z_stream_s, ptr %27, i64 0, i32 1
  %28 = load i32, ptr %avail_in26, align 8
  %add27 = add i32 %25, %28
  store i32 %add27, ptr %len, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end
  %29 = load i32, ptr %len, align 4
  %30 = load i32, ptr %have, align 4
  %cmp29 = icmp ugt i32 %29, %30
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %31 = load i32, ptr %have, align 4
  store i32 %31, ptr %len, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  %32 = load i32, ptr %len, align 4
  %33 = load i32, ptr %min_block, align 4
  %cmp33 = icmp ult i32 %32, %33
  br i1 %cmp33, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %if.end32
  %34 = load i32, ptr %len, align 4
  %cmp35 = icmp ne i32 %34, 0
  %35 = load i32, ptr %flush.addr, align 4
  %cmp38.not = icmp eq i32 %35, 4
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp38.not
  %or.cond.not = xor i1 %or.cond, true
  %36 = load i32, ptr %flush.addr, align 4
  %cmp40 = icmp eq i32 %36, 0
  %or.cond2 = select i1 %or.cond.not, i1 true, i1 %cmp40
  br i1 %or.cond2, label %do.end, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true
  %37 = load i32, ptr %len, align 4
  %38 = load i32, ptr %left, align 4
  %39 = load ptr, ptr %s.addr, align 8
  %40 = load ptr, ptr %39, align 8
  %avail_in44 = getelementptr inbounds %struct.z_stream_s, ptr %40, i64 0, i32 1
  %41 = load i32, ptr %avail_in44, align 8
  %add45 = add i32 %38, %41
  %cmp46.not = icmp eq i32 %37, %add45
  br i1 %cmp46.not, label %if.end49, label %do.end

if.end49:                                         ; preds = %lor.lhs.false42, %if.end32
  %42 = load i32, ptr %flush.addr, align 4
  %cmp50 = icmp eq i32 %42, 4
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end49
  %43 = load i32, ptr %len, align 4
  %44 = load i32, ptr %left, align 4
  %45 = load ptr, ptr %s.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %avail_in53 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 1
  %47 = load i32, ptr %avail_in53, align 8
  %add54 = add i32 %44, %47
  %cmp55 = icmp eq i32 %43, %add54
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end49
  %48 = phi i1 [ false, %if.end49 ], [ %cmp55, %land.rhs ]
  %cond57 = zext i1 %48 to i32
  store i32 %cond57, ptr %last, align 4
  %49 = load ptr, ptr %s.addr, align 8
  call void @_tr_stored_block(ptr noundef %49, ptr noundef null, i64 noundef 0, i32 noundef %cond57) #4
  %50 = load i32, ptr %len, align 4
  %conv58 = trunc i32 %50 to i8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 5
  %52 = load i64, ptr %pending, align 8
  %sub59 = add i64 %52, -4
  %arrayidx = getelementptr inbounds i8, ptr %51, i64 %sub59
  store i8 %conv58, ptr %arrayidx, align 1
  %53 = load i32, ptr %len, align 4
  %shr60 = lshr i32 %53, 8
  %conv61 = trunc i32 %shr60 to i8
  %54 = load ptr, ptr %s.addr, align 8
  %pending_buf62 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 2
  %55 = load ptr, ptr %pending_buf62, align 8
  %pending63 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 5
  %56 = load i64, ptr %pending63, align 8
  %sub64 = add i64 %56, -3
  %arrayidx65 = getelementptr inbounds i8, ptr %55, i64 %sub64
  store i8 %conv61, ptr %arrayidx65, align 1
  %57 = load i32, ptr %len, align 4
  %58 = trunc i32 %57 to i8
  %conv66 = xor i8 %58, -1
  %59 = load ptr, ptr %s.addr, align 8
  %pending_buf67 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 2
  %60 = load ptr, ptr %pending_buf67, align 8
  %pending68 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 5
  %61 = load i64, ptr %pending68, align 8
  %sub69 = add i64 %61, -2
  %arrayidx70 = getelementptr inbounds i8, ptr %60, i64 %sub69
  store i8 %conv66, ptr %arrayidx70, align 1
  %62 = load i32, ptr %len, align 4
  %neg71 = xor i32 %62, -1
  %shr72 = lshr i32 %neg71, 8
  %conv73 = trunc i32 %shr72 to i8
  %63 = load ptr, ptr %s.addr, align 8
  %pending_buf74 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 2
  %64 = load ptr, ptr %pending_buf74, align 8
  %pending75 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 5
  %65 = load i64, ptr %pending75, align 8
  %sub76 = add i64 %65, -1
  %arrayidx77 = getelementptr inbounds i8, ptr %64, i64 %sub76
  store i8 %conv73, ptr %arrayidx77, align 1
  %66 = load ptr, ptr %s.addr, align 8
  %67 = load ptr, ptr %66, align 8
  call void @flush_pending(ptr noundef %67)
  %68 = load i32, ptr %left, align 4
  %tobool.not = icmp eq i32 %68, 0
  br i1 %tobool.not, label %if.end102, label %if.then79

if.then79:                                        ; preds = %land.end
  %69 = load i32, ptr %left, align 4
  %70 = load i32, ptr %len, align 4
  %cmp80 = icmp ugt i32 %69, %70
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then79
  %71 = load i32, ptr %len, align 4
  store i32 %71, ptr %left, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then79
  %72 = load ptr, ptr %s.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %73, i64 0, i32 3
  %74 = load ptr, ptr %next_out, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 14
  %75 = load ptr, ptr %window, align 8
  %block_start85 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 23
  %76 = load i64, ptr %block_start85, align 8
  %add.ptr = getelementptr inbounds i8, ptr %75, i64 %76
  %77 = load i32, ptr %left, align 4
  %conv86 = zext i32 %77 to i64
  %78 = load ptr, ptr %s.addr, align 8
  %79 = load ptr, ptr %78, align 8
  %next_out88 = getelementptr inbounds %struct.z_stream_s, ptr %79, i64 0, i32 3
  %80 = load ptr, ptr %next_out88, align 8
  %81 = call i64 @llvm.objectsize.i64.p0(ptr %80, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %74, ptr noundef %add.ptr, i64 noundef %conv86, i64 noundef %81) #4
  %82 = load i32, ptr %left, align 4
  %83 = load ptr, ptr %s.addr, align 8
  %84 = load ptr, ptr %83, align 8
  %next_out90 = getelementptr inbounds %struct.z_stream_s, ptr %84, i64 0, i32 3
  %85 = load ptr, ptr %next_out90, align 8
  %idx.ext = zext i32 %82 to i64
  %add.ptr91 = getelementptr inbounds i8, ptr %85, i64 %idx.ext
  store ptr %add.ptr91, ptr %next_out90, align 8
  %86 = load i32, ptr %left, align 4
  %87 = load ptr, ptr %s.addr, align 8
  %88 = load ptr, ptr %87, align 8
  %avail_out93 = getelementptr inbounds %struct.z_stream_s, ptr %88, i64 0, i32 4
  %89 = load i32, ptr %avail_out93, align 8
  %sub94 = sub i32 %89, %86
  store i32 %sub94, ptr %avail_out93, align 8
  %90 = load i32, ptr %left, align 4
  %conv95 = zext i32 %90 to i64
  %91 = load ptr, ptr %s.addr, align 8
  %92 = load ptr, ptr %91, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %92, i64 0, i32 5
  %93 = load i64, ptr %total_out, align 8
  %add97 = add i64 %93, %conv95
  store i64 %add97, ptr %total_out, align 8
  %94 = load i32, ptr %left, align 4
  %conv98 = zext i32 %94 to i64
  %95 = load ptr, ptr %s.addr, align 8
  %block_start99 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 23
  %96 = load i64, ptr %block_start99, align 8
  %add100 = add nsw i64 %96, %conv98
  store i64 %add100, ptr %block_start99, align 8
  %97 = load i32, ptr %left, align 4
  %98 = load i32, ptr %len, align 4
  %sub101 = sub i32 %98, %97
  store i32 %sub101, ptr %len, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end83, %land.end
  %99 = load i32, ptr %len, align 4
  %tobool103.not = icmp eq i32 %99, 0
  br i1 %tobool103.not, label %do.cond, label %if.then104

if.then104:                                       ; preds = %if.end102
  %100 = load ptr, ptr %s.addr, align 8
  %101 = load ptr, ptr %100, align 8
  %next_out107 = getelementptr inbounds %struct.z_stream_s, ptr %101, i64 0, i32 3
  %102 = load ptr, ptr %next_out107, align 8
  %103 = load i32, ptr %len, align 4
  %call108 = call i32 @read_buf(ptr noundef %101, ptr noundef %102, i32 noundef %103)
  %104 = load ptr, ptr %100, align 8
  %next_out110 = getelementptr inbounds %struct.z_stream_s, ptr %104, i64 0, i32 3
  %105 = load ptr, ptr %next_out110, align 8
  %idx.ext111 = zext i32 %103 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %105, i64 %idx.ext111
  store ptr %add.ptr112, ptr %next_out110, align 8
  %106 = load i32, ptr %len, align 4
  %107 = load ptr, ptr %s.addr, align 8
  %108 = load ptr, ptr %107, align 8
  %avail_out114 = getelementptr inbounds %struct.z_stream_s, ptr %108, i64 0, i32 4
  %109 = load i32, ptr %avail_out114, align 8
  %sub115 = sub i32 %109, %106
  store i32 %sub115, ptr %avail_out114, align 8
  %110 = load i32, ptr %len, align 4
  %conv116 = zext i32 %110 to i64
  %111 = load ptr, ptr %s.addr, align 8
  %112 = load ptr, ptr %111, align 8
  %total_out118 = getelementptr inbounds %struct.z_stream_s, ptr %112, i64 0, i32 5
  %113 = load i64, ptr %total_out118, align 8
  %add119 = add i64 %113, %conv116
  store i64 %add119, ptr %total_out118, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end102, %if.then104
  %114 = load i32, ptr %last, align 4
  %cmp121 = icmp eq i32 %114, 0
  br i1 %cmp121, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %lor.lhs.false42, %land.lhs.true, %do.body, %do.cond
  %115 = load ptr, ptr %s.addr, align 8
  %116 = load ptr, ptr %115, align 8
  %avail_in124 = getelementptr inbounds %struct.z_stream_s, ptr %116, i64 0, i32 1
  %117 = load i32, ptr %avail_in124, align 8
  %118 = load i32, ptr %used, align 4
  %sub125 = sub i32 %118, %117
  store i32 %sub125, ptr %used, align 4
  %tobool126.not = icmp eq i32 %118, %117
  br i1 %tobool126.not, label %if.end213, label %if.then127

if.then127:                                       ; preds = %do.end
  %119 = load i32, ptr %used, align 4
  %120 = load ptr, ptr %s.addr, align 8
  %w_size128 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 11
  %121 = load i32, ptr %w_size128, align 8
  %cmp129.not = icmp ult i32 %119, %121
  br i1 %cmp129.not, label %if.else, label %if.then131

if.then131:                                       ; preds = %if.then127
  %122 = load ptr, ptr %s.addr, align 8
  %matches = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 54
  store i32 2, ptr %matches, align 8
  %window132 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 14
  %123 = load ptr, ptr %window132, align 8
  %124 = load ptr, ptr %122, align 8
  %125 = load ptr, ptr %124, align 8
  %126 = load ptr, ptr %s.addr, align 8
  %w_size134 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 11
  %127 = load i32, ptr %w_size134, align 8
  %idx.ext135 = zext i32 %127 to i64
  %idx.neg = sub nsw i64 0, %idx.ext135
  %add.ptr136 = getelementptr inbounds i8, ptr %125, i64 %idx.neg
  %conv138 = zext i32 %127 to i64
  %128 = load ptr, ptr %s.addr, align 8
  %window139 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 14
  %129 = load ptr, ptr %window139, align 8
  %130 = call i64 @llvm.objectsize.i64.p0(ptr %129, i1 false, i1 true, i1 false)
  %call140 = call ptr @__memcpy_chk(ptr noundef %123, ptr noundef %add.ptr136, i64 noundef %conv138, i64 noundef %130) #4
  %w_size141 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 11
  %131 = load i32, ptr %w_size141, align 8
  %132 = load ptr, ptr %s.addr, align 8
  %strstart142 = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 27
  store i32 %131, ptr %strstart142, align 4
  %insert = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 55
  store i32 %131, ptr %insert, align 4
  br label %if.end209

if.else:                                          ; preds = %if.then127
  %133 = load ptr, ptr %s.addr, align 8
  %window_size = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 15
  %134 = load i64, ptr %window_size, align 8
  %strstart144 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 27
  %135 = load i32, ptr %strstart144, align 4
  %conv145 = zext i32 %135 to i64
  %sub146 = sub i64 %134, %conv145
  %136 = load i32, ptr %used, align 4
  %conv147 = zext i32 %136 to i64
  %cmp148.not = icmp ugt i64 %sub146, %conv147
  br i1 %cmp148.not, label %if.end177, label %if.then150

if.then150:                                       ; preds = %if.else
  %137 = load ptr, ptr %s.addr, align 8
  %w_size151 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 11
  %138 = load i32, ptr %w_size151, align 8
  %strstart152 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 27
  %139 = load i32, ptr %strstart152, align 4
  %sub153 = sub i32 %139, %138
  store i32 %sub153, ptr %strstart152, align 4
  %140 = load ptr, ptr %s.addr, align 8
  %window154 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 14
  %141 = load ptr, ptr %window154, align 8
  %w_size156 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 11
  %142 = load i32, ptr %w_size156, align 8
  %idx.ext157 = zext i32 %142 to i64
  %add.ptr158 = getelementptr inbounds i8, ptr %141, i64 %idx.ext157
  %143 = load ptr, ptr %s.addr, align 8
  %strstart159 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 27
  %144 = load i32, ptr %strstart159, align 4
  %conv160 = zext i32 %144 to i64
  %window161 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 14
  %145 = load ptr, ptr %window161, align 8
  %146 = call i64 @llvm.objectsize.i64.p0(ptr %145, i1 false, i1 true, i1 false)
  %call162 = call ptr @__memcpy_chk(ptr noundef %141, ptr noundef %add.ptr158, i64 noundef %conv160, i64 noundef %146) #4
  %147 = load ptr, ptr %s.addr, align 8
  %matches163 = getelementptr inbounds %struct.internal_state, ptr %147, i64 0, i32 54
  %148 = load i32, ptr %matches163, align 8
  %cmp164 = icmp ult i32 %148, 2
  br i1 %cmp164, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.then150
  %149 = load ptr, ptr %s.addr, align 8
  %matches167 = getelementptr inbounds %struct.internal_state, ptr %149, i64 0, i32 54
  %150 = load i32, ptr %matches167, align 8
  %inc = add i32 %150, 1
  store i32 %inc, ptr %matches167, align 8
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.then150
  %151 = load ptr, ptr %s.addr, align 8
  %insert169 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 55
  %152 = load i32, ptr %insert169, align 4
  %strstart170 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 27
  %153 = load i32, ptr %strstart170, align 4
  %cmp171 = icmp ugt i32 %152, %153
  br i1 %cmp171, label %if.then173, label %if.end177

if.then173:                                       ; preds = %if.end168
  %154 = load ptr, ptr %s.addr, align 8
  %strstart174 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 27
  %155 = load i32, ptr %strstart174, align 4
  %insert175 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 55
  store i32 %155, ptr %insert175, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.end168, %if.then173, %if.else
  %156 = load ptr, ptr %s.addr, align 8
  %window178 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 14
  %157 = load ptr, ptr %window178, align 8
  %strstart179 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 27
  %158 = load i32, ptr %strstart179, align 4
  %idx.ext180 = zext i32 %158 to i64
  %add.ptr181 = getelementptr inbounds i8, ptr %157, i64 %idx.ext180
  %159 = load ptr, ptr %s.addr, align 8
  %160 = load ptr, ptr %159, align 8
  %161 = load ptr, ptr %160, align 8
  %162 = load i32, ptr %used, align 4
  %idx.ext184 = zext i32 %162 to i64
  %idx.neg185 = sub nsw i64 0, %idx.ext184
  %add.ptr186 = getelementptr inbounds i8, ptr %161, i64 %idx.neg185
  %conv187 = zext i32 %162 to i64
  %163 = load ptr, ptr %s.addr, align 8
  %window188 = getelementptr inbounds %struct.internal_state, ptr %163, i64 0, i32 14
  %164 = load ptr, ptr %window188, align 8
  %strstart189 = getelementptr inbounds %struct.internal_state, ptr %163, i64 0, i32 27
  %165 = load i32, ptr %strstart189, align 4
  %idx.ext190 = zext i32 %165 to i64
  %add.ptr191 = getelementptr inbounds i8, ptr %164, i64 %idx.ext190
  %166 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr191, i1 false, i1 true, i1 false)
  %call192 = call ptr @__memcpy_chk(ptr noundef %add.ptr181, ptr noundef %add.ptr186, i64 noundef %conv187, i64 noundef %166) #4
  %167 = load i32, ptr %used, align 4
  %168 = load ptr, ptr %s.addr, align 8
  %strstart193 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 27
  %169 = load i32, ptr %strstart193, align 4
  %add194 = add i32 %169, %167
  store i32 %add194, ptr %strstart193, align 4
  %w_size195 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 11
  %170 = load i32, ptr %w_size195, align 8
  %171 = load ptr, ptr %s.addr, align 8
  %insert196 = getelementptr inbounds %struct.internal_state, ptr %171, i64 0, i32 55
  %172 = load i32, ptr %insert196, align 4
  %sub197 = sub i32 %170, %172
  %cmp198 = icmp ugt i32 %167, %sub197
  br i1 %cmp198, label %cond.true200, label %cond.false204

cond.true200:                                     ; preds = %if.end177
  %173 = load ptr, ptr %s.addr, align 8
  %w_size201 = getelementptr inbounds %struct.internal_state, ptr %173, i64 0, i32 11
  %174 = load i32, ptr %w_size201, align 8
  %insert202 = getelementptr inbounds %struct.internal_state, ptr %173, i64 0, i32 55
  %175 = load i32, ptr %insert202, align 4
  %sub203 = sub i32 %174, %175
  br label %cond.end205

cond.false204:                                    ; preds = %if.end177
  %176 = load i32, ptr %used, align 4
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false204, %cond.true200
  %cond206 = phi i32 [ %sub203, %cond.true200 ], [ %176, %cond.false204 ]
  %177 = load ptr, ptr %s.addr, align 8
  %insert207 = getelementptr inbounds %struct.internal_state, ptr %177, i64 0, i32 55
  %178 = load i32, ptr %insert207, align 4
  %add208 = add i32 %178, %cond206
  store i32 %add208, ptr %insert207, align 4
  br label %if.end209

if.end209:                                        ; preds = %cond.end205, %if.then131
  %179 = load ptr, ptr %s.addr, align 8
  %strstart210 = getelementptr inbounds %struct.internal_state, ptr %179, i64 0, i32 27
  %180 = load i32, ptr %strstart210, align 4
  %conv211 = zext i32 %180 to i64
  %block_start212 = getelementptr inbounds %struct.internal_state, ptr %179, i64 0, i32 23
  store i64 %conv211, ptr %block_start212, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.end209, %do.end
  %181 = load ptr, ptr %s.addr, align 8
  %high_water = getelementptr inbounds %struct.internal_state, ptr %181, i64 0, i32 59
  %182 = load i64, ptr %high_water, align 8
  %strstart214 = getelementptr inbounds %struct.internal_state, ptr %181, i64 0, i32 27
  %183 = load i32, ptr %strstart214, align 4
  %conv215 = zext i32 %183 to i64
  %cmp216 = icmp ult i64 %182, %conv215
  br i1 %cmp216, label %if.then218, label %if.end222

if.then218:                                       ; preds = %if.end213
  %184 = load ptr, ptr %s.addr, align 8
  %strstart219 = getelementptr inbounds %struct.internal_state, ptr %184, i64 0, i32 27
  %185 = load i32, ptr %strstart219, align 4
  %conv220 = zext i32 %185 to i64
  %high_water221 = getelementptr inbounds %struct.internal_state, ptr %184, i64 0, i32 59
  store i64 %conv220, ptr %high_water221, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %if.end213
  %186 = load i32, ptr %last, align 4
  %tobool223.not = icmp eq i32 %186, 0
  br i1 %tobool223.not, label %if.end225, label %if.then224

if.then224:                                       ; preds = %if.end222
  %187 = load ptr, ptr %s.addr, align 8
  %bi_used = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 58
  store i32 8, ptr %bi_used, align 8
  store i32 3, ptr %retval, align 4
  br label %return

if.end225:                                        ; preds = %if.end222
  %188 = load i32, ptr %flush.addr, align 4
  %cmp226.not = icmp eq i32 %188, 0
  %189 = load i32, ptr %flush.addr, align 4
  %cmp229.not = icmp eq i32 %189, 4
  %or.cond3 = select i1 %cmp226.not, i1 true, i1 %cmp229.not
  br i1 %or.cond3, label %if.end243, label %land.lhs.true231

land.lhs.true231:                                 ; preds = %if.end225
  %190 = load ptr, ptr %s.addr, align 8
  %191 = load ptr, ptr %190, align 8
  %avail_in233 = getelementptr inbounds %struct.z_stream_s, ptr %191, i64 0, i32 1
  %192 = load i32, ptr %avail_in233, align 8
  %cmp234 = icmp eq i32 %192, 0
  br i1 %cmp234, label %land.lhs.true236, label %if.end243

land.lhs.true236:                                 ; preds = %land.lhs.true231
  %193 = load ptr, ptr %s.addr, align 8
  %strstart237 = getelementptr inbounds %struct.internal_state, ptr %193, i64 0, i32 27
  %194 = load i32, ptr %strstart237, align 4
  %conv238 = zext i32 %194 to i64
  %block_start239 = getelementptr inbounds %struct.internal_state, ptr %193, i64 0, i32 23
  %195 = load i64, ptr %block_start239, align 8
  %cmp240 = icmp eq i64 %195, %conv238
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %land.lhs.true236
  store i32 1, ptr %retval, align 4
  br label %return

if.end243:                                        ; preds = %land.lhs.true236, %land.lhs.true231, %if.end225
  %196 = load ptr, ptr %s.addr, align 8
  %window_size244 = getelementptr inbounds %struct.internal_state, ptr %196, i64 0, i32 15
  %197 = load i64, ptr %window_size244, align 8
  %strstart245 = getelementptr inbounds %struct.internal_state, ptr %196, i64 0, i32 27
  %198 = load i32, ptr %strstart245, align 4
  %199 = trunc i64 %197 to i32
  %conv248 = sub i32 %199, %198
  store i32 %conv248, ptr %have, align 4
  %200 = load ptr, ptr %s.addr, align 8
  %201 = load ptr, ptr %200, align 8
  %avail_in250 = getelementptr inbounds %struct.z_stream_s, ptr %201, i64 0, i32 1
  %202 = load i32, ptr %avail_in250, align 8
  %cmp251 = icmp ugt i32 %202, %conv248
  br i1 %cmp251, label %land.lhs.true253, label %if.end293

land.lhs.true253:                                 ; preds = %if.end243
  %203 = load ptr, ptr %s.addr, align 8
  %block_start254 = getelementptr inbounds %struct.internal_state, ptr %203, i64 0, i32 23
  %204 = load i64, ptr %block_start254, align 8
  %w_size255 = getelementptr inbounds %struct.internal_state, ptr %203, i64 0, i32 11
  %205 = load i32, ptr %w_size255, align 8
  %conv256 = zext i32 %205 to i64
  %cmp257.not = icmp slt i64 %204, %conv256
  br i1 %cmp257.not, label %if.end293, label %if.then259

if.then259:                                       ; preds = %land.lhs.true253
  %206 = load ptr, ptr %s.addr, align 8
  %w_size260 = getelementptr inbounds %struct.internal_state, ptr %206, i64 0, i32 11
  %207 = load i32, ptr %w_size260, align 8
  %conv261 = zext i32 %207 to i64
  %block_start262 = getelementptr inbounds %struct.internal_state, ptr %206, i64 0, i32 23
  %208 = load i64, ptr %block_start262, align 8
  %sub263 = sub nsw i64 %208, %conv261
  store i64 %sub263, ptr %block_start262, align 8
  %209 = load ptr, ptr %s.addr, align 8
  %w_size264 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 11
  %210 = load i32, ptr %w_size264, align 8
  %strstart265 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 27
  %211 = load i32, ptr %strstart265, align 4
  %sub266 = sub i32 %211, %210
  store i32 %sub266, ptr %strstart265, align 4
  %212 = load ptr, ptr %s.addr, align 8
  %window267 = getelementptr inbounds %struct.internal_state, ptr %212, i64 0, i32 14
  %213 = load ptr, ptr %window267, align 8
  %w_size269 = getelementptr inbounds %struct.internal_state, ptr %212, i64 0, i32 11
  %214 = load i32, ptr %w_size269, align 8
  %idx.ext270 = zext i32 %214 to i64
  %add.ptr271 = getelementptr inbounds i8, ptr %213, i64 %idx.ext270
  %215 = load ptr, ptr %s.addr, align 8
  %strstart272 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 27
  %216 = load i32, ptr %strstart272, align 4
  %conv273 = zext i32 %216 to i64
  %window274 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 14
  %217 = load ptr, ptr %window274, align 8
  %218 = call i64 @llvm.objectsize.i64.p0(ptr %217, i1 false, i1 true, i1 false)
  %call275 = call ptr @__memcpy_chk(ptr noundef %213, ptr noundef %add.ptr271, i64 noundef %conv273, i64 noundef %218) #4
  %219 = load ptr, ptr %s.addr, align 8
  %matches276 = getelementptr inbounds %struct.internal_state, ptr %219, i64 0, i32 54
  %220 = load i32, ptr %matches276, align 8
  %cmp277 = icmp ult i32 %220, 2
  br i1 %cmp277, label %if.then279, label %if.end282

if.then279:                                       ; preds = %if.then259
  %221 = load ptr, ptr %s.addr, align 8
  %matches280 = getelementptr inbounds %struct.internal_state, ptr %221, i64 0, i32 54
  %222 = load i32, ptr %matches280, align 8
  %inc281 = add i32 %222, 1
  store i32 %inc281, ptr %matches280, align 8
  br label %if.end282

if.end282:                                        ; preds = %if.then279, %if.then259
  %223 = load ptr, ptr %s.addr, align 8
  %w_size283 = getelementptr inbounds %struct.internal_state, ptr %223, i64 0, i32 11
  %224 = load i32, ptr %w_size283, align 8
  %225 = load i32, ptr %have, align 4
  %add284 = add i32 %225, %224
  store i32 %add284, ptr %have, align 4
  %insert285 = getelementptr inbounds %struct.internal_state, ptr %223, i64 0, i32 55
  %226 = load i32, ptr %insert285, align 4
  %227 = load ptr, ptr %s.addr, align 8
  %strstart286 = getelementptr inbounds %struct.internal_state, ptr %227, i64 0, i32 27
  %228 = load i32, ptr %strstart286, align 4
  %cmp287 = icmp ugt i32 %226, %228
  br i1 %cmp287, label %if.then289, label %if.end293

if.then289:                                       ; preds = %if.end282
  %229 = load ptr, ptr %s.addr, align 8
  %strstart290 = getelementptr inbounds %struct.internal_state, ptr %229, i64 0, i32 27
  %230 = load i32, ptr %strstart290, align 4
  %insert291 = getelementptr inbounds %struct.internal_state, ptr %229, i64 0, i32 55
  store i32 %230, ptr %insert291, align 4
  br label %if.end293

if.end293:                                        ; preds = %if.end282, %if.then289, %land.lhs.true253, %if.end243
  %231 = load i32, ptr %have, align 4
  %232 = load ptr, ptr %s.addr, align 8
  %233 = load ptr, ptr %232, align 8
  %avail_in295 = getelementptr inbounds %struct.z_stream_s, ptr %233, i64 0, i32 1
  %234 = load i32, ptr %avail_in295, align 8
  %cmp296 = icmp ugt i32 %231, %234
  br i1 %cmp296, label %if.then298, label %if.end301

if.then298:                                       ; preds = %if.end293
  %235 = load ptr, ptr %s.addr, align 8
  %236 = load ptr, ptr %235, align 8
  %avail_in300 = getelementptr inbounds %struct.z_stream_s, ptr %236, i64 0, i32 1
  %237 = load i32, ptr %avail_in300, align 8
  store i32 %237, ptr %have, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.then298, %if.end293
  %238 = load i32, ptr %have, align 4
  %tobool302.not = icmp eq i32 %238, 0
  br i1 %tobool302.not, label %if.end326, label %if.then303

if.then303:                                       ; preds = %if.end301
  %239 = load ptr, ptr %s.addr, align 8
  %240 = load ptr, ptr %239, align 8
  %window305 = getelementptr inbounds %struct.internal_state, ptr %239, i64 0, i32 14
  %241 = load ptr, ptr %window305, align 8
  %strstart306 = getelementptr inbounds %struct.internal_state, ptr %239, i64 0, i32 27
  %242 = load i32, ptr %strstart306, align 4
  %idx.ext307 = zext i32 %242 to i64
  %add.ptr308 = getelementptr inbounds i8, ptr %241, i64 %idx.ext307
  %243 = load i32, ptr %have, align 4
  %call309 = call i32 @read_buf(ptr noundef %240, ptr noundef %add.ptr308, i32 noundef %243)
  %244 = load ptr, ptr %s.addr, align 8
  %strstart310 = getelementptr inbounds %struct.internal_state, ptr %244, i64 0, i32 27
  %245 = load i32, ptr %strstart310, align 4
  %add311 = add i32 %245, %243
  store i32 %add311, ptr %strstart310, align 4
  %246 = load i32, ptr %have, align 4
  %w_size312 = getelementptr inbounds %struct.internal_state, ptr %244, i64 0, i32 11
  %247 = load i32, ptr %w_size312, align 8
  %248 = load ptr, ptr %s.addr, align 8
  %insert313 = getelementptr inbounds %struct.internal_state, ptr %248, i64 0, i32 55
  %249 = load i32, ptr %insert313, align 4
  %sub314 = sub i32 %247, %249
  %cmp315 = icmp ugt i32 %246, %sub314
  br i1 %cmp315, label %cond.true317, label %cond.false321

cond.true317:                                     ; preds = %if.then303
  %250 = load ptr, ptr %s.addr, align 8
  %w_size318 = getelementptr inbounds %struct.internal_state, ptr %250, i64 0, i32 11
  %251 = load i32, ptr %w_size318, align 8
  %insert319 = getelementptr inbounds %struct.internal_state, ptr %250, i64 0, i32 55
  %252 = load i32, ptr %insert319, align 4
  %sub320 = sub i32 %251, %252
  br label %cond.end322

cond.false321:                                    ; preds = %if.then303
  %253 = load i32, ptr %have, align 4
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false321, %cond.true317
  %cond323 = phi i32 [ %sub320, %cond.true317 ], [ %253, %cond.false321 ]
  %254 = load ptr, ptr %s.addr, align 8
  %insert324 = getelementptr inbounds %struct.internal_state, ptr %254, i64 0, i32 55
  %255 = load i32, ptr %insert324, align 4
  %add325 = add i32 %255, %cond323
  store i32 %add325, ptr %insert324, align 4
  br label %if.end326

if.end326:                                        ; preds = %cond.end322, %if.end301
  %256 = load ptr, ptr %s.addr, align 8
  %high_water327 = getelementptr inbounds %struct.internal_state, ptr %256, i64 0, i32 59
  %257 = load i64, ptr %high_water327, align 8
  %strstart328 = getelementptr inbounds %struct.internal_state, ptr %256, i64 0, i32 27
  %258 = load i32, ptr %strstart328, align 4
  %conv329 = zext i32 %258 to i64
  %cmp330 = icmp ult i64 %257, %conv329
  br i1 %cmp330, label %if.then332, label %if.end336

if.then332:                                       ; preds = %if.end326
  %259 = load ptr, ptr %s.addr, align 8
  %strstart333 = getelementptr inbounds %struct.internal_state, ptr %259, i64 0, i32 27
  %260 = load i32, ptr %strstart333, align 4
  %conv334 = zext i32 %260 to i64
  %high_water335 = getelementptr inbounds %struct.internal_state, ptr %259, i64 0, i32 59
  store i64 %conv334, ptr %high_water335, align 8
  br label %if.end336

if.end336:                                        ; preds = %if.then332, %if.end326
  %261 = load ptr, ptr %s.addr, align 8
  %bi_valid337 = getelementptr inbounds %struct.internal_state, ptr %261, i64 0, i32 57
  %262 = load i32, ptr %bi_valid337, align 4
  %add338 = add i32 %262, 42
  %shr339 = lshr i32 %add338, 3
  store i32 %shr339, ptr %have, align 4
  %pending_buf_size340 = getelementptr inbounds %struct.internal_state, ptr %261, i64 0, i32 3
  %263 = load i64, ptr %pending_buf_size340, align 8
  %conv341 = zext i32 %shr339 to i64
  %sub342 = sub i64 %263, %conv341
  %cmp343 = icmp ugt i64 %sub342, 65535
  br i1 %cmp343, label %cond.end350, label %cond.false346

cond.false346:                                    ; preds = %if.end336
  %264 = load ptr, ptr %s.addr, align 8
  %pending_buf_size347 = getelementptr inbounds %struct.internal_state, ptr %264, i64 0, i32 3
  %265 = load i64, ptr %pending_buf_size347, align 8
  %266 = load i32, ptr %have, align 4
  %267 = trunc i64 %265 to i32
  %phi.cast = sub i32 %267, %266
  br label %cond.end350

cond.end350:                                      ; preds = %if.end336, %cond.false346
  %cond351 = phi i32 [ %phi.cast, %cond.false346 ], [ 65535, %if.end336 ]
  store i32 %cond351, ptr %have, align 4
  %268 = load ptr, ptr %s.addr, align 8
  %w_size353 = getelementptr inbounds %struct.internal_state, ptr %268, i64 0, i32 11
  %269 = load i32, ptr %w_size353, align 8
  %cmp354 = icmp ugt i32 %cond351, %269
  br i1 %cmp354, label %cond.true356, label %cond.false358

cond.true356:                                     ; preds = %cond.end350
  %270 = load ptr, ptr %s.addr, align 8
  %w_size357 = getelementptr inbounds %struct.internal_state, ptr %270, i64 0, i32 11
  %271 = load i32, ptr %w_size357, align 8
  br label %cond.end359

cond.false358:                                    ; preds = %cond.end350
  %272 = load i32, ptr %have, align 4
  br label %cond.end359

cond.end359:                                      ; preds = %cond.false358, %cond.true356
  %cond360 = phi i32 [ %271, %cond.true356 ], [ %272, %cond.false358 ]
  store i32 %cond360, ptr %min_block, align 4
  %273 = load ptr, ptr %s.addr, align 8
  %strstart361 = getelementptr inbounds %struct.internal_state, ptr %273, i64 0, i32 27
  %274 = load i32, ptr %strstart361, align 4
  %block_start363 = getelementptr inbounds %struct.internal_state, ptr %273, i64 0, i32 23
  %275 = load i64, ptr %block_start363, align 8
  %276 = trunc i64 %275 to i32
  %conv365 = sub i32 %274, %276
  store i32 %conv365, ptr %left, align 4
  %277 = load i32, ptr %min_block, align 4
  %cmp366.not = icmp ult i32 %conv365, %277
  br i1 %cmp366.not, label %lor.lhs.false368, label %if.then384

lor.lhs.false368:                                 ; preds = %cond.end359
  %278 = load i32, ptr %left, align 4
  %tobool369.not = icmp ne i32 %278, 0
  %279 = load i32, ptr %flush.addr, align 4
  %cmp371 = icmp eq i32 %279, 4
  %or.cond4 = select i1 %tobool369.not, i1 true, i1 %cmp371
  %or.cond4.not = xor i1 %or.cond4, true
  %280 = load i32, ptr %flush.addr, align 4
  %cmp374.not = icmp eq i32 %280, 0
  %or.cond5 = select i1 %or.cond4.not, i1 true, i1 %cmp374.not
  br i1 %or.cond5, label %if.end411, label %land.lhs.true376

land.lhs.true376:                                 ; preds = %lor.lhs.false368
  %281 = load ptr, ptr %s.addr, align 8
  %282 = load ptr, ptr %281, align 8
  %avail_in378 = getelementptr inbounds %struct.z_stream_s, ptr %282, i64 0, i32 1
  %283 = load i32, ptr %avail_in378, align 8
  %cmp379 = icmp eq i32 %283, 0
  br i1 %cmp379, label %land.lhs.true381, label %if.end411

land.lhs.true381:                                 ; preds = %land.lhs.true376
  %284 = load i32, ptr %left, align 4
  %285 = load i32, ptr %have, align 4
  %cmp382.not = icmp ugt i32 %284, %285
  br i1 %cmp382.not, label %if.end411, label %if.then384

if.then384:                                       ; preds = %land.lhs.true381, %cond.end359
  %286 = load i32, ptr %left, align 4
  %287 = load i32, ptr %have, align 4
  %cmp385 = icmp ugt i32 %286, %287
  %288 = load i32, ptr %have, align 4
  %289 = load i32, ptr %left, align 4
  %cond390 = select i1 %cmp385, i32 %288, i32 %289
  store i32 %cond390, ptr %len, align 4
  %290 = load i32, ptr %flush.addr, align 4
  %cmp391 = icmp eq i32 %290, 4
  br i1 %cmp391, label %land.lhs.true393, label %land.end401

land.lhs.true393:                                 ; preds = %if.then384
  %291 = load ptr, ptr %s.addr, align 8
  %292 = load ptr, ptr %291, align 8
  %avail_in395 = getelementptr inbounds %struct.z_stream_s, ptr %292, i64 0, i32 1
  %293 = load i32, ptr %avail_in395, align 8
  %cmp396 = icmp eq i32 %293, 0
  br i1 %cmp396, label %land.rhs398, label %land.end401

land.rhs398:                                      ; preds = %land.lhs.true393
  %294 = load i32, ptr %len, align 4
  %295 = load i32, ptr %left, align 4
  %cmp399 = icmp eq i32 %294, %295
  %phi.cast1 = zext i1 %cmp399 to i32
  br label %land.end401

land.end401:                                      ; preds = %land.rhs398, %land.lhs.true393, %if.then384
  %296 = phi i32 [ 0, %land.lhs.true393 ], [ 0, %if.then384 ], [ %phi.cast1, %land.rhs398 ]
  store i32 %296, ptr %last, align 4
  %297 = load ptr, ptr %s.addr, align 8
  %window403 = getelementptr inbounds %struct.internal_state, ptr %297, i64 0, i32 14
  %298 = load ptr, ptr %window403, align 8
  %block_start404 = getelementptr inbounds %struct.internal_state, ptr %297, i64 0, i32 23
  %299 = load i64, ptr %block_start404, align 8
  %add.ptr405 = getelementptr inbounds i8, ptr %298, i64 %299
  %300 = load i32, ptr %len, align 4
  %conv406 = zext i32 %300 to i64
  %301 = load i32, ptr %last, align 4
  call void @_tr_stored_block(ptr noundef %297, ptr noundef %add.ptr405, i64 noundef %conv406, i32 noundef %301) #4
  %conv407 = zext i32 %300 to i64
  %302 = load ptr, ptr %s.addr, align 8
  %block_start408 = getelementptr inbounds %struct.internal_state, ptr %302, i64 0, i32 23
  %303 = load i64, ptr %block_start408, align 8
  %add409 = add nsw i64 %303, %conv407
  store i64 %add409, ptr %block_start408, align 8
  %304 = load ptr, ptr %302, align 8
  call void @flush_pending(ptr noundef %304)
  br label %if.end411

if.end411:                                        ; preds = %lor.lhs.false368, %land.end401, %land.lhs.true381, %land.lhs.true376
  %305 = load i32, ptr %last, align 4
  %tobool412.not = icmp eq i32 %305, 0
  br i1 %tobool412.not, label %if.end415, label %if.then413

if.then413:                                       ; preds = %if.end411
  %306 = load ptr, ptr %s.addr, align 8
  %bi_used414 = getelementptr inbounds %struct.internal_state, ptr %306, i64 0, i32 58
  store i32 8, ptr %bi_used414, align 8
  br label %if.end415

if.end415:                                        ; preds = %if.then413, %if.end411
  %307 = load i32, ptr %last, align 4
  %tobool416.not = icmp eq i32 %307, 0
  %cond417 = select i1 %tobool416.not, i32 0, i32 2
  store i32 %cond417, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end415, %if.then242, %if.then224
  %308 = load i32, ptr %retval, align 4
  ret i32 %308
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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 29
  %3 = load i32, ptr %lookahead1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.then
  %4 = load i32, ptr %flush.addr, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then5, label %for.end

if.then5:                                         ; preds = %if.then3
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then, %for.cond
  %5 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 24
  store i32 0, ptr %match_length, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 14
  %6 = load ptr, ptr %window, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 27
  %7 = load i32, ptr %strstart, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  store i8 %8, ptr %cc, align 1
  %9 = load ptr, ptr %s.addr, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 48
  %10 = load ptr, ptr %sym_buf, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 50
  %11 = load i32, ptr %sym_next, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %sym_next, align 4
  %idxprom8 = zext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom8
  store i8 0, ptr %arrayidx9, align 1
  %12 = load ptr, ptr %s.addr, align 8
  %sym_buf10 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 48
  %13 = load ptr, ptr %sym_buf10, align 8
  %sym_next11 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 50
  %14 = load i32, ptr %sym_next11, align 4
  %inc12 = add i32 %14, 1
  store i32 %inc12, ptr %sym_next11, align 4
  %idxprom13 = zext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %13, i64 %idxprom13
  store i8 0, ptr %arrayidx14, align 1
  %15 = load i8, ptr %cc, align 1
  %16 = load ptr, ptr %s.addr, align 8
  %sym_buf15 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 48
  %17 = load ptr, ptr %sym_buf15, align 8
  %sym_next16 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 50
  %18 = load i32, ptr %sym_next16, align 4
  %inc17 = add i32 %18, 1
  store i32 %inc17, ptr %sym_next16, align 4
  %idxprom18 = zext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %17, i64 %idxprom18
  store i8 %15, ptr %arrayidx19, align 1
  %19 = load ptr, ptr %s.addr, align 8
  %20 = load i8, ptr %cc, align 1
  %idxprom20 = zext i8 %20 to i64
  %arrayidx21 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 37, i64 %idxprom20
  %21 = load i16, ptr %arrayidx21, align 4
  %inc22 = add i16 %21, 1
  store i16 %inc22, ptr %arrayidx21, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %sym_next23 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 50
  %23 = load i32, ptr %sym_next23, align 4
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 51
  %24 = load i32, ptr %sym_end, align 8
  %cmp24 = icmp eq i32 %23, %24
  %conv = zext i1 %cmp24 to i32
  store i32 %conv, ptr %bflush, align 4
  %25 = load ptr, ptr %s.addr, align 8
  %lookahead25 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 29
  %26 = load i32, ptr %lookahead25, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %lookahead25, align 4
  %strstart26 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 27
  %27 = load i32, ptr %strstart26, align 4
  %inc27 = add i32 %27, 1
  store i32 %inc27, ptr %strstart26, align 4
  %28 = load i32, ptr %bflush, align 4
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %if.end47, label %if.then28

if.then28:                                        ; preds = %if.end7
  %29 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 23
  %30 = load i64, ptr %block_start, align 8
  %cmp29 = icmp sgt i64 %30, -1
  br i1 %cmp29, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then28
  %31 = load ptr, ptr %s.addr, align 8
  %window31 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 14
  %32 = load ptr, ptr %window31, align 8
  %block_start32 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 23
  %33 = load i64, ptr %block_start32, align 8
  %idxprom34 = and i64 %33, 4294967295
  %arrayidx35 = getelementptr inbounds i8, ptr %32, i64 %idxprom34
  br label %cond.end

cond.end:                                         ; preds = %if.then28, %cond.true
  %cond = phi ptr [ %arrayidx35, %cond.true ], [ null, %if.then28 ]
  %34 = load ptr, ptr %s.addr, align 8
  %strstart36 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 27
  %35 = load i32, ptr %strstart36, align 4
  %conv37 = zext i32 %35 to i64
  %block_start38 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 23
  %36 = load i64, ptr %block_start38, align 8
  %sub = sub nsw i64 %conv37, %36
  call void @_tr_flush_block(ptr noundef %29, ptr noundef %cond, i64 noundef %sub, i32 noundef 0) #4
  %37 = load ptr, ptr %s.addr, align 8
  %strstart39 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 27
  %38 = load i32, ptr %strstart39, align 4
  %conv40 = zext i32 %38 to i64
  %block_start41 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 23
  store i64 %conv40, ptr %block_start41, align 8
  %39 = load ptr, ptr %37, align 8
  call void @flush_pending(ptr noundef %39)
  %40 = load ptr, ptr %s.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %41, i64 0, i32 4
  %42 = load i32, ptr %avail_out, align 8
  %cmp43 = icmp eq i32 %42, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %cond.end, %if.end7
  br label %for.cond

for.end:                                          ; preds = %if.then3
  %43 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 55
  store i32 0, ptr %insert, align 4
  %44 = load i32, ptr %flush.addr, align 4
  %cmp48 = icmp eq i32 %44, 4
  br i1 %cmp48, label %if.then50, label %if.end77

if.then50:                                        ; preds = %for.end
  %45 = load ptr, ptr %s.addr, align 8
  %block_start51 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 23
  %46 = load i64, ptr %block_start51, align 8
  %cmp52 = icmp sgt i64 %46, -1
  br i1 %cmp52, label %cond.true54, label %cond.end61

cond.true54:                                      ; preds = %if.then50
  %47 = load ptr, ptr %s.addr, align 8
  %window55 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 14
  %48 = load ptr, ptr %window55, align 8
  %block_start56 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 23
  %49 = load i64, ptr %block_start56, align 8
  %idxprom58 = and i64 %49, 4294967295
  %arrayidx59 = getelementptr inbounds i8, ptr %48, i64 %idxprom58
  br label %cond.end61

cond.end61:                                       ; preds = %if.then50, %cond.true54
  %cond62 = phi ptr [ %arrayidx59, %cond.true54 ], [ null, %if.then50 ]
  %50 = load ptr, ptr %s.addr, align 8
  %strstart63 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 27
  %51 = load i32, ptr %strstart63, align 4
  %conv64 = zext i32 %51 to i64
  %block_start65 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 23
  %52 = load i64, ptr %block_start65, align 8
  %sub66 = sub nsw i64 %conv64, %52
  call void @_tr_flush_block(ptr noundef %45, ptr noundef %cond62, i64 noundef %sub66, i32 noundef 1) #4
  %53 = load ptr, ptr %s.addr, align 8
  %strstart67 = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 27
  %54 = load i32, ptr %strstart67, align 4
  %conv68 = zext i32 %54 to i64
  %block_start69 = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 23
  store i64 %conv68, ptr %block_start69, align 8
  %55 = load ptr, ptr %53, align 8
  call void @flush_pending(ptr noundef %55)
  %56 = load ptr, ptr %s.addr, align 8
  %57 = load ptr, ptr %56, align 8
  %avail_out72 = getelementptr inbounds %struct.z_stream_s, ptr %57, i64 0, i32 4
  %58 = load i32, ptr %avail_out72, align 8
  %cmp73 = icmp eq i32 %58, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %cond.end61
  store i32 2, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %cond.end61
  store i32 3, ptr %retval, align 4
  br label %return

if.end77:                                         ; preds = %for.end
  %59 = load ptr, ptr %s.addr, align 8
  %sym_next78 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 50
  %60 = load i32, ptr %sym_next78, align 4
  %tobool79.not = icmp eq i32 %60, 0
  br i1 %tobool79.not, label %if.end107, label %if.then80

if.then80:                                        ; preds = %if.end77
  %61 = load ptr, ptr %s.addr, align 8
  %block_start81 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 23
  %62 = load i64, ptr %block_start81, align 8
  %cmp82 = icmp sgt i64 %62, -1
  br i1 %cmp82, label %cond.true84, label %cond.end91

cond.true84:                                      ; preds = %if.then80
  %63 = load ptr, ptr %s.addr, align 8
  %window85 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 14
  %64 = load ptr, ptr %window85, align 8
  %block_start86 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 23
  %65 = load i64, ptr %block_start86, align 8
  %idxprom88 = and i64 %65, 4294967295
  %arrayidx89 = getelementptr inbounds i8, ptr %64, i64 %idxprom88
  br label %cond.end91

cond.end91:                                       ; preds = %if.then80, %cond.true84
  %cond92 = phi ptr [ %arrayidx89, %cond.true84 ], [ null, %if.then80 ]
  %66 = load ptr, ptr %s.addr, align 8
  %strstart93 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 27
  %67 = load i32, ptr %strstart93, align 4
  %conv94 = zext i32 %67 to i64
  %block_start95 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 23
  %68 = load i64, ptr %block_start95, align 8
  %sub96 = sub nsw i64 %conv94, %68
  call void @_tr_flush_block(ptr noundef %61, ptr noundef %cond92, i64 noundef %sub96, i32 noundef 0) #4
  %69 = load ptr, ptr %s.addr, align 8
  %strstart97 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 27
  %70 = load i32, ptr %strstart97, align 4
  %conv98 = zext i32 %70 to i64
  %block_start99 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 23
  store i64 %conv98, ptr %block_start99, align 8
  %71 = load ptr, ptr %69, align 8
  call void @flush_pending(ptr noundef %71)
  %72 = load ptr, ptr %s.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %avail_out102 = getelementptr inbounds %struct.z_stream_s, ptr %73, i64 0, i32 4
  %74 = load i32, ptr %avail_out102, align 8
  %cmp103 = icmp eq i32 %74, 0
  br i1 %cmp103, label %if.then105, label %if.end107

if.then105:                                       ; preds = %cond.end91
  store i32 0, ptr %retval, align 4
  br label %return

if.end107:                                        ; preds = %cond.end91, %if.end77
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end107, %if.then105, %if.end76, %if.then75, %if.then45, %if.then5
  %75 = load i32, ptr %retval, align 4
  ret i32 %75
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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ult i32 %1, 259
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 29
  %3 = load i32, ptr %lookahead1, align 4
  %cmp2 = icmp ult i32 %3, 259
  %4 = load i32, ptr %flush.addr, align 4
  %cmp3 = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp2, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %s.addr, align 8
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 29
  %6 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end, %for.cond
  %7 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 24
  store i32 0, ptr %match_length, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 29
  %8 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp ugt i32 %8, 2
  br i1 %cmp11, label %land.lhs.true12, label %if.end88

land.lhs.true12:                                  ; preds = %if.end9
  %9 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 27
  %10 = load i32, ptr %strstart, align 4
  %cmp13.not = icmp eq i32 %10, 0
  br i1 %cmp13.not, label %if.end88, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  %11 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 14
  %12 = load ptr, ptr %window, align 8
  %strstart15 = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 27
  %13 = load i32, ptr %strstart15, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr16, ptr %scan, align 8
  %14 = load i8, ptr %add.ptr16, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, ptr %prev, align 4
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr16, i64 1
  store ptr %incdec.ptr, ptr %scan, align 8
  %15 = load i8, ptr %incdec.ptr, align 1
  %cmp18 = icmp eq i8 %14, %15
  br i1 %cmp18, label %land.lhs.true20, label %if.end88

land.lhs.true20:                                  ; preds = %if.then14
  %16 = load i32, ptr %prev, align 4
  %17 = load ptr, ptr %scan, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr21, ptr %scan, align 8
  %18 = load i8, ptr %incdec.ptr21, align 1
  %conv22 = zext i8 %18 to i32
  %cmp23 = icmp eq i32 %16, %conv22
  br i1 %cmp23, label %land.lhs.true25, label %if.end88

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %19 = load i32, ptr %prev, align 4
  %20 = load ptr, ptr %scan, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr26, ptr %scan, align 8
  %21 = load i8, ptr %incdec.ptr26, align 1
  %conv27 = zext i8 %21 to i32
  %cmp28 = icmp eq i32 %19, %conv27
  br i1 %cmp28, label %if.then30, label %if.end88

if.then30:                                        ; preds = %land.lhs.true25
  %22 = load ptr, ptr %s.addr, align 8
  %window31 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 14
  %23 = load ptr, ptr %window31, align 8
  %strstart32 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 27
  %24 = load i32, ptr %strstart32, align 4
  %idx.ext33 = zext i32 %24 to i64
  %add.ptr34 = getelementptr inbounds i8, ptr %23, i64 %idx.ext33
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr34, i64 258
  store ptr %add.ptr35, ptr %strend, align 8
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.then30
  %25 = load i32, ptr %prev, align 4
  %26 = load ptr, ptr %scan, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %incdec.ptr36, ptr %scan, align 8
  %27 = load i8, ptr %incdec.ptr36, align 1
  %conv37 = zext i8 %27 to i32
  %cmp38 = icmp eq i32 %25, %conv37
  br i1 %cmp38, label %land.lhs.true40, label %do.end

land.lhs.true40:                                  ; preds = %do.body
  %28 = load i32, ptr %prev, align 4
  %29 = load ptr, ptr %scan, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr41, ptr %scan, align 8
  %30 = load i8, ptr %incdec.ptr41, align 1
  %conv42 = zext i8 %30 to i32
  %cmp43 = icmp eq i32 %28, %conv42
  br i1 %cmp43, label %land.lhs.true45, label %do.end

land.lhs.true45:                                  ; preds = %land.lhs.true40
  %31 = load i32, ptr %prev, align 4
  %32 = load ptr, ptr %scan, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %incdec.ptr46, ptr %scan, align 8
  %33 = load i8, ptr %incdec.ptr46, align 1
  %conv47 = zext i8 %33 to i32
  %cmp48 = icmp eq i32 %31, %conv47
  br i1 %cmp48, label %land.lhs.true50, label %do.end

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %34 = load i32, ptr %prev, align 4
  %35 = load ptr, ptr %scan, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr51, ptr %scan, align 8
  %36 = load i8, ptr %incdec.ptr51, align 1
  %conv52 = zext i8 %36 to i32
  %cmp53 = icmp eq i32 %34, %conv52
  br i1 %cmp53, label %land.lhs.true55, label %do.end

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %37 = load i32, ptr %prev, align 4
  %38 = load ptr, ptr %scan, align 8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr56, ptr %scan, align 8
  %39 = load i8, ptr %incdec.ptr56, align 1
  %conv57 = zext i8 %39 to i32
  %cmp58 = icmp eq i32 %37, %conv57
  br i1 %cmp58, label %land.lhs.true60, label %do.end

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %40 = load i32, ptr %prev, align 4
  %41 = load ptr, ptr %scan, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr61, ptr %scan, align 8
  %42 = load i8, ptr %incdec.ptr61, align 1
  %conv62 = zext i8 %42 to i32
  %cmp63 = icmp eq i32 %40, %conv62
  br i1 %cmp63, label %land.lhs.true65, label %do.end

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %43 = load i32, ptr %prev, align 4
  %44 = load ptr, ptr %scan, align 8
  %incdec.ptr66 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr66, ptr %scan, align 8
  %45 = load i8, ptr %incdec.ptr66, align 1
  %conv67 = zext i8 %45 to i32
  %cmp68 = icmp eq i32 %43, %conv67
  br i1 %cmp68, label %land.lhs.true70, label %do.end

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %46 = load i32, ptr %prev, align 4
  %47 = load ptr, ptr %scan, align 8
  %incdec.ptr71 = getelementptr inbounds i8, ptr %47, i64 1
  store ptr %incdec.ptr71, ptr %scan, align 8
  %48 = load i8, ptr %incdec.ptr71, align 1
  %conv72 = zext i8 %48 to i32
  %cmp73 = icmp eq i32 %46, %conv72
  br i1 %cmp73, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %land.lhs.true70
  %49 = load ptr, ptr %scan, align 8
  %50 = load ptr, ptr %strend, align 8
  %cmp75 = icmp ult ptr %49, %50
  br i1 %cmp75, label %do.body, label %do.end, !llvm.loop !20

do.end:                                           ; preds = %land.lhs.true70, %land.lhs.true65, %land.lhs.true60, %land.lhs.true55, %land.lhs.true50, %land.lhs.true45, %land.lhs.true40, %do.body, %land.rhs
  %51 = load ptr, ptr %strend, align 8
  %52 = load ptr, ptr %scan, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %51 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %52 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %conv77.neg = trunc i64 %sub.ptr.sub.neg to i32
  %sub = add i32 %conv77.neg, 258
  %53 = load ptr, ptr %s.addr, align 8
  %match_length78 = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 24
  store i32 %sub, ptr %match_length78, align 8
  %lookahead80 = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 29
  %54 = load i32, ptr %lookahead80, align 4
  %cmp81 = icmp ugt i32 %sub, %54
  br i1 %cmp81, label %if.then83, label %if.end88

if.then83:                                        ; preds = %do.end
  %55 = load ptr, ptr %s.addr, align 8
  %lookahead84 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 29
  %56 = load i32, ptr %lookahead84, align 4
  %match_length85 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 24
  store i32 %56, ptr %match_length85, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then14, %land.lhs.true20, %land.lhs.true25, %if.then83, %do.end, %land.lhs.true12, %if.end9
  %57 = load ptr, ptr %s.addr, align 8
  %match_length89 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 24
  %58 = load i32, ptr %match_length89, align 8
  %cmp90 = icmp ugt i32 %58, 2
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.end88
  %59 = load ptr, ptr %s.addr, align 8
  %match_length93 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 24
  %60 = load i32, ptr %match_length93, align 8
  %61 = trunc i32 %60 to i8
  %conv95 = add i8 %61, -3
  store i8 %conv95, ptr %len, align 1
  store i16 1, ptr %dist, align 2
  %62 = load ptr, ptr %s.addr, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 48
  %63 = load ptr, ptr %sym_buf, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 50
  %64 = load i32, ptr %sym_next, align 4
  %inc = add i32 %64, 1
  store i32 %inc, ptr %sym_next, align 4
  %idxprom = zext i32 %64 to i64
  %arrayidx = getelementptr inbounds i8, ptr %63, i64 %idxprom
  store i8 1, ptr %arrayidx, align 1
  %65 = load i16, ptr %dist, align 2
  %66 = lshr i16 %65, 8
  %conv98 = trunc i16 %66 to i8
  %67 = load ptr, ptr %s.addr, align 8
  %sym_buf99 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 48
  %68 = load ptr, ptr %sym_buf99, align 8
  %sym_next100 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 50
  %69 = load i32, ptr %sym_next100, align 4
  %inc101 = add i32 %69, 1
  store i32 %inc101, ptr %sym_next100, align 4
  %idxprom102 = zext i32 %69 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %68, i64 %idxprom102
  store i8 %conv98, ptr %arrayidx103, align 1
  %70 = load i8, ptr %len, align 1
  %71 = load ptr, ptr %s.addr, align 8
  %sym_buf104 = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 48
  %72 = load ptr, ptr %sym_buf104, align 8
  %sym_next105 = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 50
  %73 = load i32, ptr %sym_next105, align 4
  %inc106 = add i32 %73, 1
  store i32 %inc106, ptr %sym_next105, align 4
  %idxprom107 = zext i32 %73 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %72, i64 %idxprom107
  store i8 %70, ptr %arrayidx108, align 1
  %74 = load i16, ptr %dist, align 2
  %dec = add i16 %74, -1
  store i16 %dec, ptr %dist, align 2
  %75 = load ptr, ptr %s.addr, align 8
  %76 = load i8, ptr %len, align 1
  %idxprom109 = zext i8 %76 to i64
  %arrayidx110 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom109
  %77 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %77 to i64
  %add112 = add nuw nsw i64 %conv111, 257
  %arrayidx114 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 37, i64 %add112
  %78 = load i16, ptr %arrayidx114, align 4
  %inc115 = add i16 %78, 1
  store i16 %inc115, ptr %arrayidx114, align 4
  %79 = load ptr, ptr %s.addr, align 8
  %80 = load i16, ptr %dist, align 2
  %cmp117 = icmp ult i16 %80, 256
  %81 = load i16, ptr %dist, align 2
  %82 = load i16, ptr %dist, align 2
  %83 = lshr i16 %82, 7
  %narrow = add nuw nsw i16 %83, 256
  %idxprom119.pn.in = select i1 %cmp117, i16 %81, i16 %narrow
  %idxprom119.pn = zext i16 %idxprom119.pn.in to i64
  %cond.in.in = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom119.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %idxprom128 = zext i8 %cond.in to i64
  %arrayidx129 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 38, i64 %idxprom128
  %84 = load i16, ptr %arrayidx129, align 4
  %inc131 = add i16 %84, 1
  store i16 %inc131, ptr %arrayidx129, align 4
  %85 = load ptr, ptr %s.addr, align 8
  %sym_next132 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 50
  %86 = load i32, ptr %sym_next132, align 4
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 51
  %87 = load i32, ptr %sym_end, align 8
  %cmp133 = icmp eq i32 %86, %87
  %conv134 = zext i1 %cmp133 to i32
  store i32 %conv134, ptr %bflush, align 4
  %88 = load ptr, ptr %s.addr, align 8
  %match_length135 = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 24
  %89 = load i32, ptr %match_length135, align 8
  %lookahead136 = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 29
  %90 = load i32, ptr %lookahead136, align 4
  %sub137 = sub i32 %90, %89
  store i32 %sub137, ptr %lookahead136, align 4
  %91 = load ptr, ptr %s.addr, align 8
  %match_length138 = getelementptr inbounds %struct.internal_state, ptr %91, i64 0, i32 24
  %92 = load i32, ptr %match_length138, align 8
  %strstart139 = getelementptr inbounds %struct.internal_state, ptr %91, i64 0, i32 27
  %93 = load i32, ptr %strstart139, align 4
  %add140 = add i32 %93, %92
  store i32 %add140, ptr %strstart139, align 4
  %94 = load ptr, ptr %s.addr, align 8
  %match_length141 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 24
  store i32 0, ptr %match_length141, align 8
  br label %if.end174

if.else:                                          ; preds = %if.end88
  %95 = load ptr, ptr %s.addr, align 8
  %window142 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 14
  %96 = load ptr, ptr %window142, align 8
  %strstart143 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 27
  %97 = load i32, ptr %strstart143, align 4
  %idxprom144 = zext i32 %97 to i64
  %arrayidx145 = getelementptr inbounds i8, ptr %96, i64 %idxprom144
  %98 = load i8, ptr %arrayidx145, align 1
  store i8 %98, ptr %cc, align 1
  %99 = load ptr, ptr %s.addr, align 8
  %sym_buf146 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 48
  %100 = load ptr, ptr %sym_buf146, align 8
  %sym_next147 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 50
  %101 = load i32, ptr %sym_next147, align 4
  %inc148 = add i32 %101, 1
  store i32 %inc148, ptr %sym_next147, align 4
  %idxprom149 = zext i32 %101 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %100, i64 %idxprom149
  store i8 0, ptr %arrayidx150, align 1
  %102 = load ptr, ptr %s.addr, align 8
  %sym_buf151 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 48
  %103 = load ptr, ptr %sym_buf151, align 8
  %sym_next152 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 50
  %104 = load i32, ptr %sym_next152, align 4
  %inc153 = add i32 %104, 1
  store i32 %inc153, ptr %sym_next152, align 4
  %idxprom154 = zext i32 %104 to i64
  %arrayidx155 = getelementptr inbounds i8, ptr %103, i64 %idxprom154
  store i8 0, ptr %arrayidx155, align 1
  %105 = load i8, ptr %cc, align 1
  %106 = load ptr, ptr %s.addr, align 8
  %sym_buf156 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 48
  %107 = load ptr, ptr %sym_buf156, align 8
  %sym_next157 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 50
  %108 = load i32, ptr %sym_next157, align 4
  %inc158 = add i32 %108, 1
  store i32 %inc158, ptr %sym_next157, align 4
  %idxprom159 = zext i32 %108 to i64
  %arrayidx160 = getelementptr inbounds i8, ptr %107, i64 %idxprom159
  store i8 %105, ptr %arrayidx160, align 1
  %109 = load ptr, ptr %s.addr, align 8
  %110 = load i8, ptr %cc, align 1
  %idxprom162 = zext i8 %110 to i64
  %arrayidx163 = getelementptr inbounds %struct.internal_state, ptr %109, i64 0, i32 37, i64 %idxprom162
  %111 = load i16, ptr %arrayidx163, align 4
  %inc165 = add i16 %111, 1
  store i16 %inc165, ptr %arrayidx163, align 4
  %112 = load ptr, ptr %s.addr, align 8
  %sym_next166 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 50
  %113 = load i32, ptr %sym_next166, align 4
  %sym_end167 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 51
  %114 = load i32, ptr %sym_end167, align 8
  %cmp168 = icmp eq i32 %113, %114
  %conv169 = zext i1 %cmp168 to i32
  store i32 %conv169, ptr %bflush, align 4
  %115 = load ptr, ptr %s.addr, align 8
  %lookahead170 = getelementptr inbounds %struct.internal_state, ptr %115, i64 0, i32 29
  %116 = load i32, ptr %lookahead170, align 4
  %dec171 = add i32 %116, -1
  store i32 %dec171, ptr %lookahead170, align 4
  %strstart172 = getelementptr inbounds %struct.internal_state, ptr %115, i64 0, i32 27
  %117 = load i32, ptr %strstart172, align 4
  %inc173 = add i32 %117, 1
  store i32 %inc173, ptr %strstart172, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.else, %if.then92
  %118 = load i32, ptr %bflush, align 4
  %tobool.not = icmp eq i32 %118, 0
  br i1 %tobool.not, label %if.end199, label %if.then175

if.then175:                                       ; preds = %if.end174
  %119 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 23
  %120 = load i64, ptr %block_start, align 8
  %cmp176 = icmp sgt i64 %120, -1
  br i1 %cmp176, label %cond.true178, label %cond.end185

cond.true178:                                     ; preds = %if.then175
  %121 = load ptr, ptr %s.addr, align 8
  %window179 = getelementptr inbounds %struct.internal_state, ptr %121, i64 0, i32 14
  %122 = load ptr, ptr %window179, align 8
  %block_start180 = getelementptr inbounds %struct.internal_state, ptr %121, i64 0, i32 23
  %123 = load i64, ptr %block_start180, align 8
  %idxprom182 = and i64 %123, 4294967295
  %arrayidx183 = getelementptr inbounds i8, ptr %122, i64 %idxprom182
  br label %cond.end185

cond.end185:                                      ; preds = %if.then175, %cond.true178
  %cond186 = phi ptr [ %arrayidx183, %cond.true178 ], [ null, %if.then175 ]
  %124 = load ptr, ptr %s.addr, align 8
  %strstart187 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 27
  %125 = load i32, ptr %strstart187, align 4
  %conv188 = zext i32 %125 to i64
  %block_start189 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 23
  %126 = load i64, ptr %block_start189, align 8
  %sub190 = sub nsw i64 %conv188, %126
  call void @_tr_flush_block(ptr noundef %119, ptr noundef %cond186, i64 noundef %sub190, i32 noundef 0) #4
  %127 = load ptr, ptr %s.addr, align 8
  %strstart191 = getelementptr inbounds %struct.internal_state, ptr %127, i64 0, i32 27
  %128 = load i32, ptr %strstart191, align 4
  %conv192 = zext i32 %128 to i64
  %block_start193 = getelementptr inbounds %struct.internal_state, ptr %127, i64 0, i32 23
  store i64 %conv192, ptr %block_start193, align 8
  %129 = load ptr, ptr %127, align 8
  call void @flush_pending(ptr noundef %129)
  %130 = load ptr, ptr %s.addr, align 8
  %131 = load ptr, ptr %130, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %131, i64 0, i32 4
  %132 = load i32, ptr %avail_out, align 8
  %cmp195 = icmp eq i32 %132, 0
  br i1 %cmp195, label %if.then197, label %if.end199

if.then197:                                       ; preds = %cond.end185
  store i32 0, ptr %retval, align 4
  br label %return

if.end199:                                        ; preds = %cond.end185, %if.end174
  br label %for.cond

for.end:                                          ; preds = %if.end
  %133 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 55
  store i32 0, ptr %insert, align 4
  %134 = load i32, ptr %flush.addr, align 4
  %cmp200 = icmp eq i32 %134, 4
  br i1 %cmp200, label %if.then202, label %if.end229

if.then202:                                       ; preds = %for.end
  %135 = load ptr, ptr %s.addr, align 8
  %block_start203 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 23
  %136 = load i64, ptr %block_start203, align 8
  %cmp204 = icmp sgt i64 %136, -1
  br i1 %cmp204, label %cond.true206, label %cond.end213

cond.true206:                                     ; preds = %if.then202
  %137 = load ptr, ptr %s.addr, align 8
  %window207 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 14
  %138 = load ptr, ptr %window207, align 8
  %block_start208 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 23
  %139 = load i64, ptr %block_start208, align 8
  %idxprom210 = and i64 %139, 4294967295
  %arrayidx211 = getelementptr inbounds i8, ptr %138, i64 %idxprom210
  br label %cond.end213

cond.end213:                                      ; preds = %if.then202, %cond.true206
  %cond214 = phi ptr [ %arrayidx211, %cond.true206 ], [ null, %if.then202 ]
  %140 = load ptr, ptr %s.addr, align 8
  %strstart215 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 27
  %141 = load i32, ptr %strstart215, align 4
  %conv216 = zext i32 %141 to i64
  %block_start217 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 23
  %142 = load i64, ptr %block_start217, align 8
  %sub218 = sub nsw i64 %conv216, %142
  call void @_tr_flush_block(ptr noundef %135, ptr noundef %cond214, i64 noundef %sub218, i32 noundef 1) #4
  %143 = load ptr, ptr %s.addr, align 8
  %strstart219 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 27
  %144 = load i32, ptr %strstart219, align 4
  %conv220 = zext i32 %144 to i64
  %block_start221 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 23
  store i64 %conv220, ptr %block_start221, align 8
  %145 = load ptr, ptr %143, align 8
  call void @flush_pending(ptr noundef %145)
  %146 = load ptr, ptr %s.addr, align 8
  %147 = load ptr, ptr %146, align 8
  %avail_out224 = getelementptr inbounds %struct.z_stream_s, ptr %147, i64 0, i32 4
  %148 = load i32, ptr %avail_out224, align 8
  %cmp225 = icmp eq i32 %148, 0
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %cond.end213
  store i32 2, ptr %retval, align 4
  br label %return

if.end228:                                        ; preds = %cond.end213
  store i32 3, ptr %retval, align 4
  br label %return

if.end229:                                        ; preds = %for.end
  %149 = load ptr, ptr %s.addr, align 8
  %sym_next230 = getelementptr inbounds %struct.internal_state, ptr %149, i64 0, i32 50
  %150 = load i32, ptr %sym_next230, align 4
  %tobool231.not = icmp eq i32 %150, 0
  br i1 %tobool231.not, label %if.end259, label %if.then232

if.then232:                                       ; preds = %if.end229
  %151 = load ptr, ptr %s.addr, align 8
  %block_start233 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 23
  %152 = load i64, ptr %block_start233, align 8
  %cmp234 = icmp sgt i64 %152, -1
  br i1 %cmp234, label %cond.true236, label %cond.end243

cond.true236:                                     ; preds = %if.then232
  %153 = load ptr, ptr %s.addr, align 8
  %window237 = getelementptr inbounds %struct.internal_state, ptr %153, i64 0, i32 14
  %154 = load ptr, ptr %window237, align 8
  %block_start238 = getelementptr inbounds %struct.internal_state, ptr %153, i64 0, i32 23
  %155 = load i64, ptr %block_start238, align 8
  %idxprom240 = and i64 %155, 4294967295
  %arrayidx241 = getelementptr inbounds i8, ptr %154, i64 %idxprom240
  br label %cond.end243

cond.end243:                                      ; preds = %if.then232, %cond.true236
  %cond244 = phi ptr [ %arrayidx241, %cond.true236 ], [ null, %if.then232 ]
  %156 = load ptr, ptr %s.addr, align 8
  %strstart245 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 27
  %157 = load i32, ptr %strstart245, align 4
  %conv246 = zext i32 %157 to i64
  %block_start247 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 23
  %158 = load i64, ptr %block_start247, align 8
  %sub248 = sub nsw i64 %conv246, %158
  call void @_tr_flush_block(ptr noundef %151, ptr noundef %cond244, i64 noundef %sub248, i32 noundef 0) #4
  %159 = load ptr, ptr %s.addr, align 8
  %strstart249 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 27
  %160 = load i32, ptr %strstart249, align 4
  %conv250 = zext i32 %160 to i64
  %block_start251 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 23
  store i64 %conv250, ptr %block_start251, align 8
  %161 = load ptr, ptr %159, align 8
  call void @flush_pending(ptr noundef %161)
  %162 = load ptr, ptr %s.addr, align 8
  %163 = load ptr, ptr %162, align 8
  %avail_out254 = getelementptr inbounds %struct.z_stream_s, ptr %163, i64 0, i32 4
  %164 = load i32, ptr %avail_out254, align 8
  %cmp255 = icmp eq i32 %164, 0
  br i1 %cmp255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %cond.end243
  store i32 0, ptr %retval, align 4
  br label %return

if.end259:                                        ; preds = %cond.end243, %if.end229
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end259, %if.then257, %if.end228, %if.then227, %if.then197, %if.then4
  %165 = load i32, ptr %retval, align 4
  ret i32 %165
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
  %call = call i32 @deflateStateCheck(ptr noundef %source)
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
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %ss, align 8
  %3 = load ptr, ptr %dest.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memcpy_chk(ptr noundef %3, ptr noundef %1, i64 noundef 112, i64 noundef %4) #4
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %zalloc, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 10
  %6 = load ptr, ptr %opaque, align 8
  %call2 = call ptr %5(ptr noundef %6, i32 noundef 1, i32 noundef 5968) #4
  store ptr %call2, ptr %ds, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %ds, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memset_chk(ptr noundef %7, i32 noundef 0, i64 noundef 5968, i64 noundef %8) #4
  %9 = load ptr, ptr %dest.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 7
  store ptr %7, ptr %state7, align 8
  %10 = load ptr, ptr %ss, align 8
  %11 = load ptr, ptr %ds, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %11, i1 false, i1 true, i1 false)
  %call8 = call ptr @__memcpy_chk(ptr noundef %7, ptr noundef %10, i64 noundef 5968, i64 noundef %12) #4
  %13 = load ptr, ptr %dest.addr, align 8
  store ptr %13, ptr %11, align 8
  %zalloc9 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 8
  %14 = load ptr, ptr %zalloc9, align 8
  %opaque10 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %opaque10, align 8
  %16 = load ptr, ptr %ds, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 11
  %17 = load i32, ptr %w_size, align 8
  %call11 = call ptr %14(ptr noundef %15, i32 noundef %17, i32 noundef 2) #4
  %window = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 14
  store ptr %call11, ptr %window, align 8
  %18 = load ptr, ptr %dest.addr, align 8
  %zalloc12 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 8
  %19 = load ptr, ptr %zalloc12, align 8
  %opaque13 = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 10
  %20 = load ptr, ptr %opaque13, align 8
  %21 = load ptr, ptr %ds, align 8
  %w_size14 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 11
  %22 = load i32, ptr %w_size14, align 8
  %call15 = call ptr %19(ptr noundef %20, i32 noundef %22, i32 noundef 2) #4
  %prev = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 16
  store ptr %call15, ptr %prev, align 8
  %23 = load ptr, ptr %dest.addr, align 8
  %zalloc16 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 8
  %24 = load ptr, ptr %zalloc16, align 8
  %opaque17 = getelementptr inbounds %struct.z_stream_s, ptr %23, i64 0, i32 10
  %25 = load ptr, ptr %opaque17, align 8
  %26 = load ptr, ptr %ds, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 19
  %27 = load i32, ptr %hash_size, align 4
  %call18 = call ptr %24(ptr noundef %25, i32 noundef %27, i32 noundef 2) #4
  %head = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 17
  store ptr %call18, ptr %head, align 8
  %28 = load ptr, ptr %dest.addr, align 8
  %zalloc19 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 8
  %29 = load ptr, ptr %zalloc19, align 8
  %opaque20 = getelementptr inbounds %struct.z_stream_s, ptr %28, i64 0, i32 10
  %30 = load ptr, ptr %opaque20, align 8
  %31 = load ptr, ptr %ds, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 49
  %32 = load i32, ptr %lit_bufsize, align 8
  %call21 = call ptr %29(ptr noundef %30, i32 noundef %32, i32 noundef 4) #4
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 2
  store ptr %call21, ptr %pending_buf, align 8
  %window22 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 14
  %33 = load ptr, ptr %window22, align 8
  %cmp23 = icmp eq ptr %33, null
  br i1 %cmp23, label %if.then33, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end5
  %34 = load ptr, ptr %ds, align 8
  %prev25 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 16
  %35 = load ptr, ptr %prev25, align 8
  %cmp26 = icmp eq ptr %35, null
  br i1 %cmp26, label %if.then33, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %36 = load ptr, ptr %ds, align 8
  %head28 = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 17
  %37 = load ptr, ptr %head28, align 8
  %cmp29 = icmp eq ptr %37, null
  br i1 %cmp29, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %38 = load ptr, ptr %ds, align 8
  %pending_buf31 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 2
  %39 = load ptr, ptr %pending_buf31, align 8
  %cmp32 = icmp eq ptr %39, null
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %if.end5
  %40 = load ptr, ptr %dest.addr, align 8
  %call34 = call i32 @deflateEnd(ptr noundef %40)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false30
  %41 = load ptr, ptr %ds, align 8
  %window36 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 14
  %42 = load ptr, ptr %window36, align 8
  %43 = load ptr, ptr %ss, align 8
  %window37 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 14
  %44 = load ptr, ptr %window37, align 8
  %high_water = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 59
  %45 = load i64, ptr %high_water, align 8
  %46 = load ptr, ptr %ds, align 8
  %window38 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 14
  %47 = load ptr, ptr %window38, align 8
  %48 = call i64 @llvm.objectsize.i64.p0(ptr %47, i1 false, i1 true, i1 false)
  %call39 = call ptr @__memcpy_chk(ptr noundef %42, ptr noundef %44, i64 noundef %45, i64 noundef %48) #4
  %prev40 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 16
  %49 = load ptr, ptr %prev40, align 8
  %50 = load ptr, ptr %ss, align 8
  %prev41 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 16
  %51 = load ptr, ptr %prev41, align 8
  %slid = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 60
  %52 = load i32, ptr %slid, align 8
  %tobool42.not = icmp eq i32 %52, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %cond.true

lor.lhs.false43:                                  ; preds = %if.end35
  %53 = load ptr, ptr %ss, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 27
  %54 = load i32, ptr %strstart, align 4
  %insert = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 55
  %55 = load i32, ptr %insert, align 4
  %sub = sub i32 %54, %55
  %56 = load ptr, ptr %ds, align 8
  %w_size44 = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 11
  %57 = load i32, ptr %w_size44, align 8
  %cmp45 = icmp ugt i32 %sub, %57
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false43, %if.end35
  %58 = load ptr, ptr %ds, align 8
  %w_size46 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 11
  %59 = load i32, ptr %w_size46, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false43
  %60 = load ptr, ptr %ss, align 8
  %strstart47 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 27
  %61 = load i32, ptr %strstart47, align 4
  %insert48 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 55
  %62 = load i32, ptr %insert48, align 4
  %sub49 = sub i32 %61, %62
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %59, %cond.true ], [ %sub49, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul = shl nuw nsw i64 %conv, 1
  %63 = load ptr, ptr %ds, align 8
  %prev50 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 16
  %64 = load ptr, ptr %prev50, align 8
  %65 = call i64 @llvm.objectsize.i64.p0(ptr %64, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %49, ptr noundef %51, i64 noundef %mul, i64 noundef %65) #4
  %head52 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 17
  %66 = load ptr, ptr %head52, align 8
  %67 = load ptr, ptr %ss, align 8
  %head53 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 17
  %68 = load ptr, ptr %head53, align 8
  %69 = load ptr, ptr %ds, align 8
  %hash_size54 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 19
  %70 = load i32, ptr %hash_size54, align 4
  %conv55 = zext i32 %70 to i64
  %mul56 = shl nuw nsw i64 %conv55, 1
  %head57 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 17
  %71 = load ptr, ptr %head57, align 8
  %72 = call i64 @llvm.objectsize.i64.p0(ptr %71, i1 false, i1 true, i1 false)
  %call58 = call ptr @__memcpy_chk(ptr noundef %66, ptr noundef %68, i64 noundef %mul56, i64 noundef %72) #4
  %73 = load ptr, ptr %ds, align 8
  %pending_buf59 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 2
  %74 = load ptr, ptr %pending_buf59, align 8
  %75 = load ptr, ptr %ss, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 4
  %76 = load ptr, ptr %pending_out, align 8
  %pending_buf60 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %pending_buf60, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %76 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %74, i64 %sub.ptr.sub
  %78 = load ptr, ptr %ds, align 8
  %pending_out61 = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 4
  store ptr %add.ptr, ptr %pending_out61, align 8
  %79 = load ptr, ptr %ss, align 8
  %pending_out63 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 4
  %80 = load ptr, ptr %pending_out63, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 5
  %81 = load i64, ptr %pending, align 8
  %82 = load ptr, ptr %ds, align 8
  %pending_out64 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 4
  %83 = load ptr, ptr %pending_out64, align 8
  %84 = call i64 @llvm.objectsize.i64.p0(ptr %83, i1 false, i1 true, i1 false)
  %call65 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %80, i64 noundef %81, i64 noundef %84) #4
  %pending_buf66 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 2
  %85 = load ptr, ptr %pending_buf66, align 8
  %86 = load ptr, ptr %ds, align 8
  %lit_bufsize67 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 49
  %87 = load i32, ptr %lit_bufsize67, align 8
  %idx.ext = zext i32 %87 to i64
  %add.ptr68 = getelementptr inbounds i8, ptr %85, i64 %idx.ext
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 48
  store ptr %add.ptr68, ptr %sym_buf, align 8
  %88 = load ptr, ptr %ds, align 8
  %sym_buf69 = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 48
  %89 = load ptr, ptr %sym_buf69, align 8
  %90 = load ptr, ptr %ss, align 8
  %sym_buf70 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 48
  %91 = load ptr, ptr %sym_buf70, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 50
  %92 = load i32, ptr %sym_next, align 4
  %conv71 = zext i32 %92 to i64
  %93 = load ptr, ptr %ds, align 8
  %sym_buf72 = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 48
  %94 = load ptr, ptr %sym_buf72, align 8
  %95 = call i64 @llvm.objectsize.i64.p0(ptr %94, i1 false, i1 true, i1 false)
  %call73 = call ptr @__memcpy_chk(ptr noundef %89, ptr noundef %91, i64 noundef %conv71, i64 noundef %95) #4
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 37
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 40
  store ptr %dyn_ltree, ptr %l_desc, align 8
  %96 = load ptr, ptr %ds, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 38
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 41
  store ptr %dyn_dtree, ptr %d_desc, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 39
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 42
  store ptr %bl_tree, ptr %bl_desc, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then33, %if.then4, %if.then
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

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
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %len, align 4
  %conv = zext i32 %8 to i64
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %6, ptr noundef %7, i64 noundef %conv, i64 noundef %9) #4
  %10 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 7
  %11 = load ptr, ptr %state, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %11, i64 0, i32 6
  %12 = load i32, ptr %wrap, align 8
  %cmp5 = icmp eq i32 %12, 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  %13 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 12
  %14 = load i64, ptr %adler, align 8
  %15 = load ptr, ptr %buf.addr, align 8
  %16 = load i32, ptr %len, align 4
  %call8 = call i64 @adler32(i64 noundef %14, ptr noundef %15, i32 noundef %16) #4
  %adler9 = getelementptr inbounds %struct.z_stream_s, ptr %13, i64 0, i32 12
  store i64 %call8, ptr %adler9, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end3
  %17 = load ptr, ptr %strm.addr, align 8
  %state10 = getelementptr inbounds %struct.z_stream_s, ptr %17, i64 0, i32 7
  %18 = load ptr, ptr %state10, align 8
  %wrap11 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 6
  %19 = load i32, ptr %wrap11, align 8
  %cmp12 = icmp eq i32 %19, 2
  br i1 %cmp12, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.else
  %20 = load ptr, ptr %strm.addr, align 8
  %adler15 = getelementptr inbounds %struct.z_stream_s, ptr %20, i64 0, i32 12
  %21 = load i64, ptr %adler15, align 8
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = load i32, ptr %len, align 4
  %call16 = call i64 @crc32(i64 noundef %21, ptr noundef %22, i32 noundef %23) #4
  %adler17 = getelementptr inbounds %struct.z_stream_s, ptr %20, i64 0, i32 12
  store i64 %call16, ptr %adler17, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14, %if.then7
  %24 = load i32, ptr %len, align 4
  %25 = load ptr, ptr %strm.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %25, align 8
  %conv21 = zext i32 %24 to i64
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %25, i64 0, i32 2
  %27 = load i64, ptr %total_in, align 8
  %add = add i64 %27, %conv21
  store i64 %add, ptr %total_in, align 8
  %28 = load i32, ptr %len, align 4
  br label %return

return:                                           ; preds = %if.end, %if.end19
  %storemerge = phi i32 [ %28, %if.end19 ], [ 0, %if.end ]
  ret i32 %storemerge
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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 29
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
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 29
  %6 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end, %for.cond
  store i32 0, ptr %hash_head, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 29
  %8 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp ugt i32 %8, 2
  br i1 %cmp11, label %if.then12, label %if.end28

if.then12:                                        ; preds = %if.end9
  %9 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 18
  %10 = load i32, ptr %ins_h, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 22
  %11 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %10, %11
  %window = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 14
  %12 = load ptr, ptr %window, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 27
  %14 = load i32, ptr %strstart, align 4
  %add = add i32 %14, 2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %xor = xor i32 %shl, %conv
  %16 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 21
  %17 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %17
  %ins_h13 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 18
  store i32 %and, ptr %ins_h13, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 17
  %18 = load ptr, ptr %head, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %ins_h14 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 18
  %20 = load i32, ptr %ins_h14, align 8
  %idxprom15 = zext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %18, i64 %idxprom15
  %21 = load i16, ptr %arrayidx16, align 2
  %prev = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 16
  %22 = load ptr, ptr %prev, align 8
  %23 = load ptr, ptr %s.addr, align 8
  %strstart17 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 27
  %24 = load i32, ptr %strstart17, align 4
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 13
  %25 = load i32, ptr %w_mask, align 8
  %and18 = and i32 %24, %25
  %idxprom19 = zext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %22, i64 %idxprom19
  store i16 %21, ptr %arrayidx20, align 2
  %conv21 = zext i16 %21 to i32
  store i32 %conv21, ptr %hash_head, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %strstart22 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 27
  %27 = load i32, ptr %strstart22, align 4
  %conv23 = trunc i32 %27 to i16
  %head24 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 17
  %28 = load ptr, ptr %head24, align 8
  %ins_h25 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 18
  %29 = load i32, ptr %ins_h25, align 8
  %idxprom26 = zext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds i16, ptr %28, i64 %idxprom26
  store i16 %conv23, ptr %arrayidx27, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then12, %if.end9
  %30 = load i32, ptr %hash_head, align 4
  %cmp29.not = icmp eq i32 %30, 0
  br i1 %cmp29.not, label %if.end37, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end28
  %31 = load ptr, ptr %s.addr, align 8
  %strstart32 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 27
  %32 = load i32, ptr %strstart32, align 4
  %33 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %32, %33
  %w_size = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 11
  %34 = load i32, ptr %w_size, align 8
  %sub33 = add i32 %34, -262
  %cmp34.not = icmp ugt i32 %sub, %sub33
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %land.lhs.true31
  %35 = load ptr, ptr %s.addr, align 8
  %36 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %35, i32 noundef %36)
  %match_length = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 24
  store i32 %call, ptr %match_length, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.lhs.true31, %if.end28
  %37 = load ptr, ptr %s.addr, align 8
  %match_length38 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 24
  %38 = load i32, ptr %match_length38, align 8
  %cmp39 = icmp ugt i32 %38, 2
  br i1 %cmp39, label %if.then41, label %if.else165

if.then41:                                        ; preds = %if.end37
  %39 = load ptr, ptr %s.addr, align 8
  %match_length42 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 24
  %40 = load i32, ptr %match_length42, align 8
  %41 = trunc i32 %40 to i8
  %conv44 = add i8 %41, -3
  store i8 %conv44, ptr %len, align 1
  %strstart45 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 27
  %42 = load i32, ptr %strstart45, align 4
  %43 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 28
  %44 = load i32, ptr %match_start, align 8
  %sub46 = sub i32 %42, %44
  %conv47 = trunc i32 %sub46 to i16
  store i16 %conv47, ptr %dist, align 2
  %conv48 = trunc i32 %sub46 to i8
  %45 = load ptr, ptr %s.addr, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 48
  %46 = load ptr, ptr %sym_buf, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 50
  %47 = load i32, ptr %sym_next, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %sym_next, align 4
  %idxprom49 = zext i32 %47 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %46, i64 %idxprom49
  store i8 %conv48, ptr %arrayidx50, align 1
  %48 = load i16, ptr %dist, align 2
  %49 = lshr i16 %48, 8
  %conv52 = trunc i16 %49 to i8
  %50 = load ptr, ptr %s.addr, align 8
  %sym_buf53 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 48
  %51 = load ptr, ptr %sym_buf53, align 8
  %sym_next54 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 50
  %52 = load i32, ptr %sym_next54, align 4
  %inc55 = add i32 %52, 1
  store i32 %inc55, ptr %sym_next54, align 4
  %idxprom56 = zext i32 %52 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %51, i64 %idxprom56
  store i8 %conv52, ptr %arrayidx57, align 1
  %53 = load i8, ptr %len, align 1
  %54 = load ptr, ptr %s.addr, align 8
  %sym_buf58 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 48
  %55 = load ptr, ptr %sym_buf58, align 8
  %sym_next59 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 50
  %56 = load i32, ptr %sym_next59, align 4
  %inc60 = add i32 %56, 1
  store i32 %inc60, ptr %sym_next59, align 4
  %idxprom61 = zext i32 %56 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %55, i64 %idxprom61
  store i8 %53, ptr %arrayidx62, align 1
  %57 = load i16, ptr %dist, align 2
  %dec = add i16 %57, -1
  store i16 %dec, ptr %dist, align 2
  %58 = load ptr, ptr %s.addr, align 8
  %59 = load i8, ptr %len, align 1
  %idxprom63 = zext i8 %59 to i64
  %arrayidx64 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom63
  %60 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %60 to i64
  %add67 = add nuw nsw i64 %conv65, 257
  %arrayidx69 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 37, i64 %add67
  %61 = load i16, ptr %arrayidx69, align 4
  %inc70 = add i16 %61, 1
  store i16 %inc70, ptr %arrayidx69, align 4
  %62 = load ptr, ptr %s.addr, align 8
  %63 = load i16, ptr %dist, align 2
  %cmp72 = icmp ult i16 %63, 256
  %64 = load i16, ptr %dist, align 2
  %65 = load i16, ptr %dist, align 2
  %66 = lshr i16 %65, 7
  %narrow = add nuw nsw i16 %66, 256
  %idxprom74.pn.in = select i1 %cmp72, i16 %64, i16 %narrow
  %idxprom74.pn = zext i16 %idxprom74.pn.in to i64
  %cond.in.in = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom74.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %idxprom83 = zext i8 %cond.in to i64
  %arrayidx84 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 38, i64 %idxprom83
  %67 = load i16, ptr %arrayidx84, align 4
  %inc86 = add i16 %67, 1
  store i16 %inc86, ptr %arrayidx84, align 4
  %68 = load ptr, ptr %s.addr, align 8
  %sym_next87 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 50
  %69 = load i32, ptr %sym_next87, align 4
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 51
  %70 = load i32, ptr %sym_end, align 8
  %cmp88 = icmp eq i32 %69, %70
  %conv89 = zext i1 %cmp88 to i32
  store i32 %conv89, ptr %bflush, align 4
  %71 = load ptr, ptr %s.addr, align 8
  %match_length90 = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 24
  %72 = load i32, ptr %match_length90, align 8
  %lookahead91 = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 29
  %73 = load i32, ptr %lookahead91, align 4
  %sub92 = sub i32 %73, %72
  store i32 %sub92, ptr %lookahead91, align 4
  %74 = load ptr, ptr %s.addr, align 8
  %match_length93 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 24
  %75 = load i32, ptr %match_length93, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 32
  %76 = load i32, ptr %max_lazy_match, align 8
  %cmp94.not = icmp ugt i32 %75, %76
  br i1 %cmp94.not, label %if.else, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %if.then41
  %77 = load ptr, ptr %s.addr, align 8
  %lookahead97 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 29
  %78 = load i32, ptr %lookahead97, align 4
  %cmp98 = icmp ugt i32 %78, 2
  br i1 %cmp98, label %if.then100, label %if.else

if.then100:                                       ; preds = %land.lhs.true96
  %79 = load ptr, ptr %s.addr, align 8
  %match_length101 = getelementptr inbounds %struct.internal_state, ptr %79, i64 0, i32 24
  %80 = load i32, ptr %match_length101, align 8
  %dec102 = add i32 %80, -1
  store i32 %dec102, ptr %match_length101, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then100
  %81 = load ptr, ptr %s.addr, align 8
  %strstart103 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 27
  %82 = load i32, ptr %strstart103, align 4
  %inc104 = add i32 %82, 1
  store i32 %inc104, ptr %strstart103, align 4
  %ins_h105 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 18
  %83 = load i32, ptr %ins_h105, align 8
  %84 = load ptr, ptr %s.addr, align 8
  %hash_shift106 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 22
  %85 = load i32, ptr %hash_shift106, align 8
  %shl107 = shl i32 %83, %85
  %window108 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 14
  %86 = load ptr, ptr %window108, align 8
  %strstart109 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 27
  %87 = load i32, ptr %strstart109, align 4
  %add110 = add i32 %87, 2
  %idxprom111 = zext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %86, i64 %idxprom111
  %88 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %88 to i32
  %xor114 = xor i32 %shl107, %conv113
  %89 = load ptr, ptr %s.addr, align 8
  %hash_mask115 = getelementptr inbounds %struct.internal_state, ptr %89, i64 0, i32 21
  %90 = load i32, ptr %hash_mask115, align 4
  %and116 = and i32 %xor114, %90
  %ins_h117 = getelementptr inbounds %struct.internal_state, ptr %89, i64 0, i32 18
  store i32 %and116, ptr %ins_h117, align 8
  %head118 = getelementptr inbounds %struct.internal_state, ptr %89, i64 0, i32 17
  %91 = load ptr, ptr %head118, align 8
  %92 = load ptr, ptr %s.addr, align 8
  %ins_h119 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 18
  %93 = load i32, ptr %ins_h119, align 8
  %idxprom120 = zext i32 %93 to i64
  %arrayidx121 = getelementptr inbounds i16, ptr %91, i64 %idxprom120
  %94 = load i16, ptr %arrayidx121, align 2
  %prev122 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 16
  %95 = load ptr, ptr %prev122, align 8
  %96 = load ptr, ptr %s.addr, align 8
  %strstart123 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 27
  %97 = load i32, ptr %strstart123, align 4
  %w_mask124 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 13
  %98 = load i32, ptr %w_mask124, align 8
  %and125 = and i32 %97, %98
  %idxprom126 = zext i32 %and125 to i64
  %arrayidx127 = getelementptr inbounds i16, ptr %95, i64 %idxprom126
  store i16 %94, ptr %arrayidx127, align 2
  %conv128 = zext i16 %94 to i32
  store i32 %conv128, ptr %hash_head, align 4
  %99 = load ptr, ptr %s.addr, align 8
  %strstart129 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 27
  %100 = load i32, ptr %strstart129, align 4
  %conv130 = trunc i32 %100 to i16
  %head131 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 17
  %101 = load ptr, ptr %head131, align 8
  %ins_h132 = getelementptr inbounds %struct.internal_state, ptr %99, i64 0, i32 18
  %102 = load i32, ptr %ins_h132, align 8
  %idxprom133 = zext i32 %102 to i64
  %arrayidx134 = getelementptr inbounds i16, ptr %101, i64 %idxprom133
  store i16 %conv130, ptr %arrayidx134, align 2
  %103 = load ptr, ptr %s.addr, align 8
  %match_length135 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 24
  %104 = load i32, ptr %match_length135, align 8
  %dec136 = add i32 %104, -1
  store i32 %dec136, ptr %match_length135, align 8
  %cmp137.not = icmp eq i32 %dec136, 0
  br i1 %cmp137.not, label %do.end, label %do.body, !llvm.loop !21

do.end:                                           ; preds = %do.body
  %105 = load ptr, ptr %s.addr, align 8
  %strstart139 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 27
  %106 = load i32, ptr %strstart139, align 4
  %inc140 = add i32 %106, 1
  store i32 %inc140, ptr %strstart139, align 4
  br label %if.end198

if.else:                                          ; preds = %land.lhs.true96, %if.then41
  %107 = load ptr, ptr %s.addr, align 8
  %match_length141 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 24
  %108 = load i32, ptr %match_length141, align 8
  %strstart142 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 27
  %109 = load i32, ptr %strstart142, align 4
  %add143 = add i32 %109, %108
  store i32 %add143, ptr %strstart142, align 4
  %110 = load ptr, ptr %s.addr, align 8
  %match_length144 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 24
  store i32 0, ptr %match_length144, align 8
  %window145 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 14
  %111 = load ptr, ptr %window145, align 8
  %strstart146 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 27
  %112 = load i32, ptr %strstart146, align 4
  %idxprom147 = zext i32 %112 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %111, i64 %idxprom147
  %113 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %113 to i32
  %114 = load ptr, ptr %s.addr, align 8
  %ins_h150 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 18
  store i32 %conv149, ptr %ins_h150, align 8
  %hash_shift152 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 22
  %115 = load i32, ptr %hash_shift152, align 8
  %shl153 = shl i32 %conv149, %115
  %window154 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 14
  %116 = load ptr, ptr %window154, align 8
  %117 = load ptr, ptr %s.addr, align 8
  %strstart155 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 27
  %118 = load i32, ptr %strstart155, align 4
  %add156 = add i32 %118, 1
  %idxprom157 = zext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds i8, ptr %116, i64 %idxprom157
  %119 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %119 to i32
  %xor160 = xor i32 %shl153, %conv159
  %120 = load ptr, ptr %s.addr, align 8
  %hash_mask161 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 21
  %121 = load i32, ptr %hash_mask161, align 4
  %and162 = and i32 %xor160, %121
  %ins_h163 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 18
  store i32 %and162, ptr %ins_h163, align 8
  br label %if.end198

if.else165:                                       ; preds = %if.end37
  %122 = load ptr, ptr %s.addr, align 8
  %window166 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 14
  %123 = load ptr, ptr %window166, align 8
  %strstart167 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 27
  %124 = load i32, ptr %strstart167, align 4
  %idxprom168 = zext i32 %124 to i64
  %arrayidx169 = getelementptr inbounds i8, ptr %123, i64 %idxprom168
  %125 = load i8, ptr %arrayidx169, align 1
  store i8 %125, ptr %cc, align 1
  %126 = load ptr, ptr %s.addr, align 8
  %sym_buf170 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 48
  %127 = load ptr, ptr %sym_buf170, align 8
  %sym_next171 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 50
  %128 = load i32, ptr %sym_next171, align 4
  %inc172 = add i32 %128, 1
  store i32 %inc172, ptr %sym_next171, align 4
  %idxprom173 = zext i32 %128 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %127, i64 %idxprom173
  store i8 0, ptr %arrayidx174, align 1
  %129 = load ptr, ptr %s.addr, align 8
  %sym_buf175 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 48
  %130 = load ptr, ptr %sym_buf175, align 8
  %sym_next176 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 50
  %131 = load i32, ptr %sym_next176, align 4
  %inc177 = add i32 %131, 1
  store i32 %inc177, ptr %sym_next176, align 4
  %idxprom178 = zext i32 %131 to i64
  %arrayidx179 = getelementptr inbounds i8, ptr %130, i64 %idxprom178
  store i8 0, ptr %arrayidx179, align 1
  %132 = load i8, ptr %cc, align 1
  %133 = load ptr, ptr %s.addr, align 8
  %sym_buf180 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 48
  %134 = load ptr, ptr %sym_buf180, align 8
  %sym_next181 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 50
  %135 = load i32, ptr %sym_next181, align 4
  %inc182 = add i32 %135, 1
  store i32 %inc182, ptr %sym_next181, align 4
  %idxprom183 = zext i32 %135 to i64
  %arrayidx184 = getelementptr inbounds i8, ptr %134, i64 %idxprom183
  store i8 %132, ptr %arrayidx184, align 1
  %136 = load ptr, ptr %s.addr, align 8
  %137 = load i8, ptr %cc, align 1
  %idxprom186 = zext i8 %137 to i64
  %arrayidx187 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 37, i64 %idxprom186
  %138 = load i16, ptr %arrayidx187, align 4
  %inc189 = add i16 %138, 1
  store i16 %inc189, ptr %arrayidx187, align 4
  %139 = load ptr, ptr %s.addr, align 8
  %sym_next190 = getelementptr inbounds %struct.internal_state, ptr %139, i64 0, i32 50
  %140 = load i32, ptr %sym_next190, align 4
  %sym_end191 = getelementptr inbounds %struct.internal_state, ptr %139, i64 0, i32 51
  %141 = load i32, ptr %sym_end191, align 8
  %cmp192 = icmp eq i32 %140, %141
  %conv193 = zext i1 %cmp192 to i32
  store i32 %conv193, ptr %bflush, align 4
  %142 = load ptr, ptr %s.addr, align 8
  %lookahead194 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 29
  %143 = load i32, ptr %lookahead194, align 4
  %dec195 = add i32 %143, -1
  store i32 %dec195, ptr %lookahead194, align 4
  %strstart196 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 27
  %144 = load i32, ptr %strstart196, align 4
  %inc197 = add i32 %144, 1
  store i32 %inc197, ptr %strstart196, align 4
  br label %if.end198

if.end198:                                        ; preds = %do.end, %if.else, %if.else165
  %145 = load i32, ptr %bflush, align 4
  %tobool.not = icmp eq i32 %145, 0
  br i1 %tobool.not, label %if.end223, label %if.then199

if.then199:                                       ; preds = %if.end198
  %146 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %146, i64 0, i32 23
  %147 = load i64, ptr %block_start, align 8
  %cmp200 = icmp sgt i64 %147, -1
  br i1 %cmp200, label %cond.true202, label %cond.end209

cond.true202:                                     ; preds = %if.then199
  %148 = load ptr, ptr %s.addr, align 8
  %window203 = getelementptr inbounds %struct.internal_state, ptr %148, i64 0, i32 14
  %149 = load ptr, ptr %window203, align 8
  %block_start204 = getelementptr inbounds %struct.internal_state, ptr %148, i64 0, i32 23
  %150 = load i64, ptr %block_start204, align 8
  %idxprom206 = and i64 %150, 4294967295
  %arrayidx207 = getelementptr inbounds i8, ptr %149, i64 %idxprom206
  br label %cond.end209

cond.end209:                                      ; preds = %if.then199, %cond.true202
  %cond210 = phi ptr [ %arrayidx207, %cond.true202 ], [ null, %if.then199 ]
  %151 = load ptr, ptr %s.addr, align 8
  %strstart211 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 27
  %152 = load i32, ptr %strstart211, align 4
  %conv212 = zext i32 %152 to i64
  %block_start213 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 23
  %153 = load i64, ptr %block_start213, align 8
  %sub214 = sub nsw i64 %conv212, %153
  call void @_tr_flush_block(ptr noundef %146, ptr noundef %cond210, i64 noundef %sub214, i32 noundef 0) #4
  %154 = load ptr, ptr %s.addr, align 8
  %strstart215 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 27
  %155 = load i32, ptr %strstart215, align 4
  %conv216 = zext i32 %155 to i64
  %block_start217 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 23
  store i64 %conv216, ptr %block_start217, align 8
  %156 = load ptr, ptr %154, align 8
  call void @flush_pending(ptr noundef %156)
  %157 = load ptr, ptr %s.addr, align 8
  %158 = load ptr, ptr %157, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %158, i64 0, i32 4
  %159 = load i32, ptr %avail_out, align 8
  %cmp219 = icmp eq i32 %159, 0
  br i1 %cmp219, label %if.then221, label %if.end223

if.then221:                                       ; preds = %cond.end209
  store i32 0, ptr %retval, align 4
  br label %return

if.end223:                                        ; preds = %cond.end209, %if.end198
  br label %for.cond

for.end:                                          ; preds = %if.end
  %160 = load ptr, ptr %s.addr, align 8
  %strstart224 = getelementptr inbounds %struct.internal_state, ptr %160, i64 0, i32 27
  %161 = load i32, ptr %strstart224, align 4
  %cmp225 = icmp ult i32 %161, 2
  br i1 %cmp225, label %cond.true227, label %cond.end230

cond.true227:                                     ; preds = %for.end
  %162 = load ptr, ptr %s.addr, align 8
  %strstart228 = getelementptr inbounds %struct.internal_state, ptr %162, i64 0, i32 27
  %163 = load i32, ptr %strstart228, align 4
  br label %cond.end230

cond.end230:                                      ; preds = %for.end, %cond.true227
  %cond231 = phi i32 [ %163, %cond.true227 ], [ 2, %for.end ]
  %164 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %164, i64 0, i32 55
  store i32 %cond231, ptr %insert, align 4
  %165 = load i32, ptr %flush.addr, align 4
  %cmp232 = icmp eq i32 %165, 4
  br i1 %cmp232, label %if.then234, label %if.end261

if.then234:                                       ; preds = %cond.end230
  %166 = load ptr, ptr %s.addr, align 8
  %block_start235 = getelementptr inbounds %struct.internal_state, ptr %166, i64 0, i32 23
  %167 = load i64, ptr %block_start235, align 8
  %cmp236 = icmp sgt i64 %167, -1
  br i1 %cmp236, label %cond.true238, label %cond.end245

cond.true238:                                     ; preds = %if.then234
  %168 = load ptr, ptr %s.addr, align 8
  %window239 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 14
  %169 = load ptr, ptr %window239, align 8
  %block_start240 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 23
  %170 = load i64, ptr %block_start240, align 8
  %idxprom242 = and i64 %170, 4294967295
  %arrayidx243 = getelementptr inbounds i8, ptr %169, i64 %idxprom242
  br label %cond.end245

cond.end245:                                      ; preds = %if.then234, %cond.true238
  %cond246 = phi ptr [ %arrayidx243, %cond.true238 ], [ null, %if.then234 ]
  %171 = load ptr, ptr %s.addr, align 8
  %strstart247 = getelementptr inbounds %struct.internal_state, ptr %171, i64 0, i32 27
  %172 = load i32, ptr %strstart247, align 4
  %conv248 = zext i32 %172 to i64
  %block_start249 = getelementptr inbounds %struct.internal_state, ptr %171, i64 0, i32 23
  %173 = load i64, ptr %block_start249, align 8
  %sub250 = sub nsw i64 %conv248, %173
  call void @_tr_flush_block(ptr noundef %166, ptr noundef %cond246, i64 noundef %sub250, i32 noundef 1) #4
  %174 = load ptr, ptr %s.addr, align 8
  %strstart251 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 27
  %175 = load i32, ptr %strstart251, align 4
  %conv252 = zext i32 %175 to i64
  %block_start253 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 23
  store i64 %conv252, ptr %block_start253, align 8
  %176 = load ptr, ptr %174, align 8
  call void @flush_pending(ptr noundef %176)
  %177 = load ptr, ptr %s.addr, align 8
  %178 = load ptr, ptr %177, align 8
  %avail_out256 = getelementptr inbounds %struct.z_stream_s, ptr %178, i64 0, i32 4
  %179 = load i32, ptr %avail_out256, align 8
  %cmp257 = icmp eq i32 %179, 0
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %cond.end245
  store i32 2, ptr %retval, align 4
  br label %return

if.end260:                                        ; preds = %cond.end245
  store i32 3, ptr %retval, align 4
  br label %return

if.end261:                                        ; preds = %cond.end230
  %180 = load ptr, ptr %s.addr, align 8
  %sym_next262 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 50
  %181 = load i32, ptr %sym_next262, align 4
  %tobool263.not = icmp eq i32 %181, 0
  br i1 %tobool263.not, label %if.end291, label %if.then264

if.then264:                                       ; preds = %if.end261
  %182 = load ptr, ptr %s.addr, align 8
  %block_start265 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 23
  %183 = load i64, ptr %block_start265, align 8
  %cmp266 = icmp sgt i64 %183, -1
  br i1 %cmp266, label %cond.true268, label %cond.end275

cond.true268:                                     ; preds = %if.then264
  %184 = load ptr, ptr %s.addr, align 8
  %window269 = getelementptr inbounds %struct.internal_state, ptr %184, i64 0, i32 14
  %185 = load ptr, ptr %window269, align 8
  %block_start270 = getelementptr inbounds %struct.internal_state, ptr %184, i64 0, i32 23
  %186 = load i64, ptr %block_start270, align 8
  %idxprom272 = and i64 %186, 4294967295
  %arrayidx273 = getelementptr inbounds i8, ptr %185, i64 %idxprom272
  br label %cond.end275

cond.end275:                                      ; preds = %if.then264, %cond.true268
  %cond276 = phi ptr [ %arrayidx273, %cond.true268 ], [ null, %if.then264 ]
  %187 = load ptr, ptr %s.addr, align 8
  %strstart277 = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 27
  %188 = load i32, ptr %strstart277, align 4
  %conv278 = zext i32 %188 to i64
  %block_start279 = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 23
  %189 = load i64, ptr %block_start279, align 8
  %sub280 = sub nsw i64 %conv278, %189
  call void @_tr_flush_block(ptr noundef %182, ptr noundef %cond276, i64 noundef %sub280, i32 noundef 0) #4
  %190 = load ptr, ptr %s.addr, align 8
  %strstart281 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 27
  %191 = load i32, ptr %strstart281, align 4
  %conv282 = zext i32 %191 to i64
  %block_start283 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 23
  store i64 %conv282, ptr %block_start283, align 8
  %192 = load ptr, ptr %190, align 8
  call void @flush_pending(ptr noundef %192)
  %193 = load ptr, ptr %s.addr, align 8
  %194 = load ptr, ptr %193, align 8
  %avail_out286 = getelementptr inbounds %struct.z_stream_s, ptr %194, i64 0, i32 4
  %195 = load i32, ptr %avail_out286, align 8
  %cmp287 = icmp eq i32 %195, 0
  br i1 %cmp287, label %if.then289, label %if.end291

if.then289:                                       ; preds = %cond.end275
  store i32 0, ptr %retval, align 4
  br label %return

if.end291:                                        ; preds = %cond.end275, %if.end261
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end291, %if.then289, %if.end260, %if.then259, %if.then221, %if.then4
  %196 = load i32, ptr %retval, align 4
  ret i32 %196
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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %1 = load i32, ptr %lookahead, align 4
  %cmp = icmp ult i32 %1, 262
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %2)
  %lookahead1 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 29
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
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 29
  %6 = load i32, ptr %lookahead5, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end, %for.cond
  store i32 0, ptr %hash_head, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 29
  %8 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp ugt i32 %8, 2
  br i1 %cmp11, label %if.then12, label %if.end28

if.then12:                                        ; preds = %if.end9
  %9 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 18
  %10 = load i32, ptr %ins_h, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 22
  %11 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %10, %11
  %window = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 14
  %12 = load ptr, ptr %window, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 27
  %14 = load i32, ptr %strstart, align 4
  %add = add i32 %14, 2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %xor = xor i32 %shl, %conv
  %16 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 21
  %17 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %17
  %ins_h13 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 18
  store i32 %and, ptr %ins_h13, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 17
  %18 = load ptr, ptr %head, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %ins_h14 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 18
  %20 = load i32, ptr %ins_h14, align 8
  %idxprom15 = zext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %18, i64 %idxprom15
  %21 = load i16, ptr %arrayidx16, align 2
  %prev = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 16
  %22 = load ptr, ptr %prev, align 8
  %23 = load ptr, ptr %s.addr, align 8
  %strstart17 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 27
  %24 = load i32, ptr %strstart17, align 4
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 13
  %25 = load i32, ptr %w_mask, align 8
  %and18 = and i32 %24, %25
  %idxprom19 = zext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %22, i64 %idxprom19
  store i16 %21, ptr %arrayidx20, align 2
  %conv21 = zext i16 %21 to i32
  store i32 %conv21, ptr %hash_head, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %strstart22 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 27
  %27 = load i32, ptr %strstart22, align 4
  %conv23 = trunc i32 %27 to i16
  %head24 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 17
  %28 = load ptr, ptr %head24, align 8
  %ins_h25 = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 18
  %29 = load i32, ptr %ins_h25, align 8
  %idxprom26 = zext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds i16, ptr %28, i64 %idxprom26
  store i16 %conv23, ptr %arrayidx27, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then12, %if.end9
  %30 = load ptr, ptr %s.addr, align 8
  %match_length = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 24
  %31 = load i32, ptr %match_length, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 30
  store i32 %31, ptr %prev_length, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 28
  %32 = load i32, ptr %match_start, align 8
  %33 = load ptr, ptr %s.addr, align 8
  %prev_match = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 25
  store i32 %32, ptr %prev_match, align 4
  %match_length29 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 24
  store i32 2, ptr %match_length29, align 8
  %34 = load i32, ptr %hash_head, align 4
  %cmp30.not = icmp eq i32 %34, 0
  br i1 %cmp30.not, label %if.end61, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end28
  %35 = load ptr, ptr %s.addr, align 8
  %prev_length33 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 30
  %36 = load i32, ptr %prev_length33, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 32
  %37 = load i32, ptr %max_lazy_match, align 8
  %cmp34 = icmp ult i32 %36, %37
  br i1 %cmp34, label %land.lhs.true36, label %if.end61

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %38 = load ptr, ptr %s.addr, align 8
  %strstart37 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 27
  %39 = load i32, ptr %strstart37, align 4
  %40 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %39, %40
  %w_size = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 11
  %41 = load i32, ptr %w_size, align 8
  %sub38 = add i32 %41, -262
  %cmp39.not = icmp ugt i32 %sub, %sub38
  br i1 %cmp39.not, label %if.end61, label %if.then41

if.then41:                                        ; preds = %land.lhs.true36
  %42 = load ptr, ptr %s.addr, align 8
  %43 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %42, i32 noundef %43)
  %match_length42 = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 24
  store i32 %call, ptr %match_length42, align 8
  %cmp44 = icmp ult i32 %call, 6
  br i1 %cmp44, label %land.lhs.true46, label %if.end61

land.lhs.true46:                                  ; preds = %if.then41
  %44 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 34
  %45 = load i32, ptr %strategy, align 8
  %cmp47 = icmp eq i32 %45, 1
  br i1 %cmp47, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true46
  %46 = load ptr, ptr %s.addr, align 8
  %match_length49 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 24
  %47 = load i32, ptr %match_length49, align 8
  %cmp50 = icmp eq i32 %47, 3
  br i1 %cmp50, label %land.lhs.true52, label %if.end61

land.lhs.true52:                                  ; preds = %lor.lhs.false
  %48 = load ptr, ptr %s.addr, align 8
  %strstart53 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 27
  %49 = load i32, ptr %strstart53, align 4
  %match_start54 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 28
  %50 = load i32, ptr %match_start54, align 8
  %sub55 = sub i32 %49, %50
  %cmp56 = icmp ugt i32 %sub55, 4096
  br i1 %cmp56, label %if.then58, label %if.end61

if.then58:                                        ; preds = %land.lhs.true52, %land.lhs.true46
  %51 = load ptr, ptr %s.addr, align 8
  %match_length59 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 24
  store i32 2, ptr %match_length59, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then41, %lor.lhs.false, %land.lhs.true52, %if.then58, %land.lhs.true36, %land.lhs.true32, %if.end28
  %52 = load ptr, ptr %s.addr, align 8
  %prev_length62 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 30
  %53 = load i32, ptr %prev_length62, align 8
  %cmp63 = icmp ugt i32 %53, 2
  br i1 %cmp63, label %land.lhs.true65, label %if.else

land.lhs.true65:                                  ; preds = %if.end61
  %54 = load ptr, ptr %s.addr, align 8
  %match_length66 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 24
  %55 = load i32, ptr %match_length66, align 8
  %prev_length67 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 30
  %56 = load i32, ptr %prev_length67, align 8
  %cmp68.not = icmp ugt i32 %55, %56
  br i1 %cmp68.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %land.lhs.true65
  %57 = load ptr, ptr %s.addr, align 8
  %strstart71 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 27
  %58 = load i32, ptr %strstart71, align 4
  %lookahead72 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 29
  %59 = load i32, ptr %lookahead72, align 4
  %add73 = add i32 %58, %59
  %sub74 = add i32 %add73, -3
  store i32 %sub74, ptr %max_insert, align 4
  %60 = load ptr, ptr %s.addr, align 8
  %prev_length75 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 30
  %61 = load i32, ptr %prev_length75, align 8
  %62 = trunc i32 %61 to i8
  %conv77 = add i8 %62, -3
  store i8 %conv77, ptr %len, align 1
  %strstart78 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 27
  %63 = load i32, ptr %strstart78, align 4
  %64 = load ptr, ptr %s.addr, align 8
  %prev_match80 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 25
  %65 = load i32, ptr %prev_match80, align 4
  %66 = xor i32 %65, -1
  %sub81 = add i32 %63, %66
  %conv82 = trunc i32 %sub81 to i16
  store i16 %conv82, ptr %dist, align 2
  %conv83 = trunc i32 %sub81 to i8
  %67 = load ptr, ptr %s.addr, align 8
  %sym_buf = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 48
  %68 = load ptr, ptr %sym_buf, align 8
  %sym_next = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 50
  %69 = load i32, ptr %sym_next, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr %sym_next, align 4
  %idxprom84 = zext i32 %69 to i64
  %arrayidx85 = getelementptr inbounds i8, ptr %68, i64 %idxprom84
  store i8 %conv83, ptr %arrayidx85, align 1
  %70 = load i16, ptr %dist, align 2
  %71 = lshr i16 %70, 8
  %conv87 = trunc i16 %71 to i8
  %72 = load ptr, ptr %s.addr, align 8
  %sym_buf88 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 48
  %73 = load ptr, ptr %sym_buf88, align 8
  %sym_next89 = getelementptr inbounds %struct.internal_state, ptr %72, i64 0, i32 50
  %74 = load i32, ptr %sym_next89, align 4
  %inc90 = add i32 %74, 1
  store i32 %inc90, ptr %sym_next89, align 4
  %idxprom91 = zext i32 %74 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %73, i64 %idxprom91
  store i8 %conv87, ptr %arrayidx92, align 1
  %75 = load i8, ptr %len, align 1
  %76 = load ptr, ptr %s.addr, align 8
  %sym_buf93 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 48
  %77 = load ptr, ptr %sym_buf93, align 8
  %sym_next94 = getelementptr inbounds %struct.internal_state, ptr %76, i64 0, i32 50
  %78 = load i32, ptr %sym_next94, align 4
  %inc95 = add i32 %78, 1
  store i32 %inc95, ptr %sym_next94, align 4
  %idxprom96 = zext i32 %78 to i64
  %arrayidx97 = getelementptr inbounds i8, ptr %77, i64 %idxprom96
  store i8 %75, ptr %arrayidx97, align 1
  %79 = load i16, ptr %dist, align 2
  %dec = add i16 %79, -1
  store i16 %dec, ptr %dist, align 2
  %80 = load ptr, ptr %s.addr, align 8
  %81 = load i8, ptr %len, align 1
  %idxprom98 = zext i8 %81 to i64
  %arrayidx99 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom98
  %82 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %82 to i64
  %add102 = add nuw nsw i64 %conv100, 257
  %arrayidx104 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 37, i64 %add102
  %83 = load i16, ptr %arrayidx104, align 4
  %inc105 = add i16 %83, 1
  store i16 %inc105, ptr %arrayidx104, align 4
  %84 = load ptr, ptr %s.addr, align 8
  %85 = load i16, ptr %dist, align 2
  %cmp107 = icmp ult i16 %85, 256
  %86 = load i16, ptr %dist, align 2
  %87 = load i16, ptr %dist, align 2
  %88 = lshr i16 %87, 7
  %narrow = add nuw nsw i16 %88, 256
  %idxprom109.pn.in = select i1 %cmp107, i16 %86, i16 %narrow
  %idxprom109.pn = zext i16 %idxprom109.pn.in to i64
  %cond.in.in = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom109.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %idxprom118 = zext i8 %cond.in to i64
  %arrayidx119 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 38, i64 %idxprom118
  %89 = load i16, ptr %arrayidx119, align 4
  %inc121 = add i16 %89, 1
  store i16 %inc121, ptr %arrayidx119, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %sym_next122 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 50
  %91 = load i32, ptr %sym_next122, align 4
  %sym_end = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 51
  %92 = load i32, ptr %sym_end, align 8
  %cmp123 = icmp eq i32 %91, %92
  %conv124 = zext i1 %cmp123 to i32
  store i32 %conv124, ptr %bflush, align 4
  %93 = load ptr, ptr %s.addr, align 8
  %prev_length125 = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 30
  %94 = load i32, ptr %prev_length125, align 8
  %sub126 = add i32 %94, -1
  %lookahead127 = getelementptr inbounds %struct.internal_state, ptr %93, i64 0, i32 29
  %95 = load i32, ptr %lookahead127, align 4
  %sub128 = sub i32 %95, %sub126
  store i32 %sub128, ptr %lookahead127, align 4
  %96 = load ptr, ptr %s.addr, align 8
  %prev_length129 = getelementptr inbounds %struct.internal_state, ptr %96, i64 0, i32 30
  %97 = load i32, ptr %prev_length129, align 8
  %sub130 = add i32 %97, -2
  store i32 %sub130, ptr %prev_length129, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then70
  %98 = load ptr, ptr %s.addr, align 8
  %strstart131 = getelementptr inbounds %struct.internal_state, ptr %98, i64 0, i32 27
  %99 = load i32, ptr %strstart131, align 4
  %inc132 = add i32 %99, 1
  store i32 %inc132, ptr %strstart131, align 4
  %100 = load i32, ptr %max_insert, align 4
  %cmp133.not = icmp ugt i32 %inc132, %100
  br i1 %cmp133.not, label %do.cond, label %if.then135

if.then135:                                       ; preds = %do.body
  %101 = load ptr, ptr %s.addr, align 8
  %ins_h136 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 18
  %102 = load i32, ptr %ins_h136, align 8
  %hash_shift137 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 22
  %103 = load i32, ptr %hash_shift137, align 8
  %shl138 = shl i32 %102, %103
  %window139 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 14
  %104 = load ptr, ptr %window139, align 8
  %105 = load ptr, ptr %s.addr, align 8
  %strstart140 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 27
  %106 = load i32, ptr %strstart140, align 4
  %add141 = add i32 %106, 2
  %idxprom142 = zext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds i8, ptr %104, i64 %idxprom142
  %107 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %107 to i32
  %xor145 = xor i32 %shl138, %conv144
  %108 = load ptr, ptr %s.addr, align 8
  %hash_mask146 = getelementptr inbounds %struct.internal_state, ptr %108, i64 0, i32 21
  %109 = load i32, ptr %hash_mask146, align 4
  %and147 = and i32 %xor145, %109
  %ins_h148 = getelementptr inbounds %struct.internal_state, ptr %108, i64 0, i32 18
  store i32 %and147, ptr %ins_h148, align 8
  %head149 = getelementptr inbounds %struct.internal_state, ptr %108, i64 0, i32 17
  %110 = load ptr, ptr %head149, align 8
  %111 = load ptr, ptr %s.addr, align 8
  %ins_h150 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 18
  %112 = load i32, ptr %ins_h150, align 8
  %idxprom151 = zext i32 %112 to i64
  %arrayidx152 = getelementptr inbounds i16, ptr %110, i64 %idxprom151
  %113 = load i16, ptr %arrayidx152, align 2
  %prev153 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 16
  %114 = load ptr, ptr %prev153, align 8
  %115 = load ptr, ptr %s.addr, align 8
  %strstart154 = getelementptr inbounds %struct.internal_state, ptr %115, i64 0, i32 27
  %116 = load i32, ptr %strstart154, align 4
  %w_mask155 = getelementptr inbounds %struct.internal_state, ptr %115, i64 0, i32 13
  %117 = load i32, ptr %w_mask155, align 8
  %and156 = and i32 %116, %117
  %idxprom157 = zext i32 %and156 to i64
  %arrayidx158 = getelementptr inbounds i16, ptr %114, i64 %idxprom157
  store i16 %113, ptr %arrayidx158, align 2
  %conv159 = zext i16 %113 to i32
  store i32 %conv159, ptr %hash_head, align 4
  %118 = load ptr, ptr %s.addr, align 8
  %strstart160 = getelementptr inbounds %struct.internal_state, ptr %118, i64 0, i32 27
  %119 = load i32, ptr %strstart160, align 4
  %conv161 = trunc i32 %119 to i16
  %head162 = getelementptr inbounds %struct.internal_state, ptr %118, i64 0, i32 17
  %120 = load ptr, ptr %head162, align 8
  %ins_h163 = getelementptr inbounds %struct.internal_state, ptr %118, i64 0, i32 18
  %121 = load i32, ptr %ins_h163, align 8
  %idxprom164 = zext i32 %121 to i64
  %arrayidx165 = getelementptr inbounds i16, ptr %120, i64 %idxprom164
  store i16 %conv161, ptr %arrayidx165, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then135
  %122 = load ptr, ptr %s.addr, align 8
  %prev_length167 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 30
  %123 = load i32, ptr %prev_length167, align 8
  %dec168 = add i32 %123, -1
  store i32 %dec168, ptr %prev_length167, align 8
  %cmp169.not = icmp eq i32 %dec168, 0
  br i1 %cmp169.not, label %do.end, label %do.body, !llvm.loop !22

do.end:                                           ; preds = %do.cond
  %124 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 26
  store i32 0, ptr %match_available, align 8
  %match_length171 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 24
  store i32 2, ptr %match_length171, align 8
  %strstart172 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 27
  %125 = load i32, ptr %strstart172, align 4
  %inc173 = add i32 %125, 1
  store i32 %inc173, ptr %strstart172, align 4
  %126 = load i32, ptr %bflush, align 4
  %tobool.not = icmp eq i32 %126, 0
  br i1 %tobool.not, label %if.end271, label %if.then174

if.then174:                                       ; preds = %do.end
  %127 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %127, i64 0, i32 23
  %128 = load i64, ptr %block_start, align 8
  %cmp175 = icmp sgt i64 %128, -1
  br i1 %cmp175, label %cond.true177, label %cond.end184

cond.true177:                                     ; preds = %if.then174
  %129 = load ptr, ptr %s.addr, align 8
  %window178 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 14
  %130 = load ptr, ptr %window178, align 8
  %block_start179 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 23
  %131 = load i64, ptr %block_start179, align 8
  %idxprom181 = and i64 %131, 4294967295
  %arrayidx182 = getelementptr inbounds i8, ptr %130, i64 %idxprom181
  br label %cond.end184

cond.end184:                                      ; preds = %if.then174, %cond.true177
  %cond185 = phi ptr [ %arrayidx182, %cond.true177 ], [ null, %if.then174 ]
  %132 = load ptr, ptr %s.addr, align 8
  %strstart186 = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 27
  %133 = load i32, ptr %strstart186, align 4
  %conv187 = zext i32 %133 to i64
  %block_start188 = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 23
  %134 = load i64, ptr %block_start188, align 8
  %sub189 = sub nsw i64 %conv187, %134
  call void @_tr_flush_block(ptr noundef %127, ptr noundef %cond185, i64 noundef %sub189, i32 noundef 0) #4
  %135 = load ptr, ptr %s.addr, align 8
  %strstart190 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 27
  %136 = load i32, ptr %strstart190, align 4
  %conv191 = zext i32 %136 to i64
  %block_start192 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 23
  store i64 %conv191, ptr %block_start192, align 8
  %137 = load ptr, ptr %135, align 8
  call void @flush_pending(ptr noundef %137)
  %138 = load ptr, ptr %s.addr, align 8
  %139 = load ptr, ptr %138, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %139, i64 0, i32 4
  %140 = load i32, ptr %avail_out, align 8
  %cmp194 = icmp eq i32 %140, 0
  br i1 %cmp194, label %if.then196, label %if.end271

if.then196:                                       ; preds = %cond.end184
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true65, %if.end61
  %141 = load ptr, ptr %s.addr, align 8
  %match_available199 = getelementptr inbounds %struct.internal_state, ptr %141, i64 0, i32 26
  %142 = load i32, ptr %match_available199, align 8
  %tobool200.not = icmp eq i32 %142, 0
  br i1 %tobool200.not, label %if.else264, label %if.then201

if.then201:                                       ; preds = %if.else
  %143 = load ptr, ptr %s.addr, align 8
  %window202 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 14
  %144 = load ptr, ptr %window202, align 8
  %strstart203 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 27
  %145 = load i32, ptr %strstart203, align 4
  %sub204 = add i32 %145, -1
  %idxprom205 = zext i32 %sub204 to i64
  %arrayidx206 = getelementptr inbounds i8, ptr %144, i64 %idxprom205
  %146 = load i8, ptr %arrayidx206, align 1
  store i8 %146, ptr %cc, align 1
  %147 = load ptr, ptr %s.addr, align 8
  %sym_buf207 = getelementptr inbounds %struct.internal_state, ptr %147, i64 0, i32 48
  %148 = load ptr, ptr %sym_buf207, align 8
  %sym_next208 = getelementptr inbounds %struct.internal_state, ptr %147, i64 0, i32 50
  %149 = load i32, ptr %sym_next208, align 4
  %inc209 = add i32 %149, 1
  store i32 %inc209, ptr %sym_next208, align 4
  %idxprom210 = zext i32 %149 to i64
  %arrayidx211 = getelementptr inbounds i8, ptr %148, i64 %idxprom210
  store i8 0, ptr %arrayidx211, align 1
  %150 = load ptr, ptr %s.addr, align 8
  %sym_buf212 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 48
  %151 = load ptr, ptr %sym_buf212, align 8
  %sym_next213 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 50
  %152 = load i32, ptr %sym_next213, align 4
  %inc214 = add i32 %152, 1
  store i32 %inc214, ptr %sym_next213, align 4
  %idxprom215 = zext i32 %152 to i64
  %arrayidx216 = getelementptr inbounds i8, ptr %151, i64 %idxprom215
  store i8 0, ptr %arrayidx216, align 1
  %153 = load i8, ptr %cc, align 1
  %154 = load ptr, ptr %s.addr, align 8
  %sym_buf217 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 48
  %155 = load ptr, ptr %sym_buf217, align 8
  %sym_next218 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 50
  %156 = load i32, ptr %sym_next218, align 4
  %inc219 = add i32 %156, 1
  store i32 %inc219, ptr %sym_next218, align 4
  %idxprom220 = zext i32 %156 to i64
  %arrayidx221 = getelementptr inbounds i8, ptr %155, i64 %idxprom220
  store i8 %153, ptr %arrayidx221, align 1
  %157 = load ptr, ptr %s.addr, align 8
  %158 = load i8, ptr %cc, align 1
  %idxprom223 = zext i8 %158 to i64
  %arrayidx224 = getelementptr inbounds %struct.internal_state, ptr %157, i64 0, i32 37, i64 %idxprom223
  %159 = load i16, ptr %arrayidx224, align 4
  %inc226 = add i16 %159, 1
  store i16 %inc226, ptr %arrayidx224, align 4
  %160 = load ptr, ptr %s.addr, align 8
  %sym_next227 = getelementptr inbounds %struct.internal_state, ptr %160, i64 0, i32 50
  %161 = load i32, ptr %sym_next227, align 4
  %sym_end228 = getelementptr inbounds %struct.internal_state, ptr %160, i64 0, i32 51
  %162 = load i32, ptr %sym_end228, align 8
  %cmp229 = icmp eq i32 %161, %162
  %conv230 = zext i1 %cmp229 to i32
  store i32 %conv230, ptr %bflush, align 4
  br i1 %cmp229, label %if.then232, label %if.end253

if.then232:                                       ; preds = %if.then201
  %163 = load ptr, ptr %s.addr, align 8
  %block_start233 = getelementptr inbounds %struct.internal_state, ptr %163, i64 0, i32 23
  %164 = load i64, ptr %block_start233, align 8
  %cmp234 = icmp sgt i64 %164, -1
  br i1 %cmp234, label %cond.true236, label %cond.end243

cond.true236:                                     ; preds = %if.then232
  %165 = load ptr, ptr %s.addr, align 8
  %window237 = getelementptr inbounds %struct.internal_state, ptr %165, i64 0, i32 14
  %166 = load ptr, ptr %window237, align 8
  %block_start238 = getelementptr inbounds %struct.internal_state, ptr %165, i64 0, i32 23
  %167 = load i64, ptr %block_start238, align 8
  %idxprom240 = and i64 %167, 4294967295
  %arrayidx241 = getelementptr inbounds i8, ptr %166, i64 %idxprom240
  br label %cond.end243

cond.end243:                                      ; preds = %if.then232, %cond.true236
  %cond244 = phi ptr [ %arrayidx241, %cond.true236 ], [ null, %if.then232 ]
  %168 = load ptr, ptr %s.addr, align 8
  %strstart245 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 27
  %169 = load i32, ptr %strstart245, align 4
  %conv246 = zext i32 %169 to i64
  %block_start247 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 23
  %170 = load i64, ptr %block_start247, align 8
  %sub248 = sub nsw i64 %conv246, %170
  call void @_tr_flush_block(ptr noundef %163, ptr noundef %cond244, i64 noundef %sub248, i32 noundef 0) #4
  %171 = load ptr, ptr %s.addr, align 8
  %strstart249 = getelementptr inbounds %struct.internal_state, ptr %171, i64 0, i32 27
  %172 = load i32, ptr %strstart249, align 4
  %conv250 = zext i32 %172 to i64
  %block_start251 = getelementptr inbounds %struct.internal_state, ptr %171, i64 0, i32 23
  store i64 %conv250, ptr %block_start251, align 8
  %173 = load ptr, ptr %171, align 8
  call void @flush_pending(ptr noundef %173)
  br label %if.end253

if.end253:                                        ; preds = %cond.end243, %if.then201
  %174 = load ptr, ptr %s.addr, align 8
  %strstart254 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 27
  %175 = load i32, ptr %strstart254, align 4
  %inc255 = add i32 %175, 1
  store i32 %inc255, ptr %strstart254, align 4
  %lookahead256 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 29
  %176 = load i32, ptr %lookahead256, align 4
  %dec257 = add i32 %176, -1
  store i32 %dec257, ptr %lookahead256, align 4
  %177 = load ptr, ptr %s.addr, align 8
  %178 = load ptr, ptr %177, align 8
  %avail_out259 = getelementptr inbounds %struct.z_stream_s, ptr %178, i64 0, i32 4
  %179 = load i32, ptr %avail_out259, align 8
  %cmp260 = icmp eq i32 %179, 0
  br i1 %cmp260, label %if.then262, label %if.end271

if.then262:                                       ; preds = %if.end253
  store i32 0, ptr %retval, align 4
  br label %return

if.else264:                                       ; preds = %if.else
  %180 = load ptr, ptr %s.addr, align 8
  %match_available265 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 26
  store i32 1, ptr %match_available265, align 8
  %strstart266 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 27
  %181 = load i32, ptr %strstart266, align 4
  %inc267 = add i32 %181, 1
  store i32 %inc267, ptr %strstart266, align 4
  %182 = load ptr, ptr %s.addr, align 8
  %lookahead268 = getelementptr inbounds %struct.internal_state, ptr %182, i64 0, i32 29
  %183 = load i32, ptr %lookahead268, align 4
  %dec269 = add i32 %183, -1
  store i32 %dec269, ptr %lookahead268, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.else264, %if.end253, %do.end, %cond.end184
  br label %for.cond

for.end:                                          ; preds = %if.end
  %184 = load ptr, ptr %s.addr, align 8
  %match_available272 = getelementptr inbounds %struct.internal_state, ptr %184, i64 0, i32 26
  %185 = load i32, ptr %match_available272, align 8
  %tobool273.not = icmp eq i32 %185, 0
  br i1 %tobool273.not, label %if.end306, label %if.then274

if.then274:                                       ; preds = %for.end
  %186 = load ptr, ptr %s.addr, align 8
  %window276 = getelementptr inbounds %struct.internal_state, ptr %186, i64 0, i32 14
  %187 = load ptr, ptr %window276, align 8
  %strstart277 = getelementptr inbounds %struct.internal_state, ptr %186, i64 0, i32 27
  %188 = load i32, ptr %strstart277, align 4
  %sub278 = add i32 %188, -1
  %idxprom279 = zext i32 %sub278 to i64
  %arrayidx280 = getelementptr inbounds i8, ptr %187, i64 %idxprom279
  %189 = load i8, ptr %arrayidx280, align 1
  store i8 %189, ptr %cc275, align 1
  %190 = load ptr, ptr %s.addr, align 8
  %sym_buf281 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 48
  %191 = load ptr, ptr %sym_buf281, align 8
  %sym_next282 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 50
  %192 = load i32, ptr %sym_next282, align 4
  %inc283 = add i32 %192, 1
  store i32 %inc283, ptr %sym_next282, align 4
  %idxprom284 = zext i32 %192 to i64
  %arrayidx285 = getelementptr inbounds i8, ptr %191, i64 %idxprom284
  store i8 0, ptr %arrayidx285, align 1
  %193 = load ptr, ptr %s.addr, align 8
  %sym_buf286 = getelementptr inbounds %struct.internal_state, ptr %193, i64 0, i32 48
  %194 = load ptr, ptr %sym_buf286, align 8
  %sym_next287 = getelementptr inbounds %struct.internal_state, ptr %193, i64 0, i32 50
  %195 = load i32, ptr %sym_next287, align 4
  %inc288 = add i32 %195, 1
  store i32 %inc288, ptr %sym_next287, align 4
  %idxprom289 = zext i32 %195 to i64
  %arrayidx290 = getelementptr inbounds i8, ptr %194, i64 %idxprom289
  store i8 0, ptr %arrayidx290, align 1
  %196 = load i8, ptr %cc275, align 1
  %197 = load ptr, ptr %s.addr, align 8
  %sym_buf291 = getelementptr inbounds %struct.internal_state, ptr %197, i64 0, i32 48
  %198 = load ptr, ptr %sym_buf291, align 8
  %sym_next292 = getelementptr inbounds %struct.internal_state, ptr %197, i64 0, i32 50
  %199 = load i32, ptr %sym_next292, align 4
  %inc293 = add i32 %199, 1
  store i32 %inc293, ptr %sym_next292, align 4
  %idxprom294 = zext i32 %199 to i64
  %arrayidx295 = getelementptr inbounds i8, ptr %198, i64 %idxprom294
  store i8 %196, ptr %arrayidx295, align 1
  %200 = load ptr, ptr %s.addr, align 8
  %201 = load i8, ptr %cc275, align 1
  %idxprom297 = zext i8 %201 to i64
  %arrayidx298 = getelementptr inbounds %struct.internal_state, ptr %200, i64 0, i32 37, i64 %idxprom297
  %202 = load i16, ptr %arrayidx298, align 4
  %inc300 = add i16 %202, 1
  store i16 %inc300, ptr %arrayidx298, align 4
  %203 = load ptr, ptr %s.addr, align 8
  %sym_next301 = getelementptr inbounds %struct.internal_state, ptr %203, i64 0, i32 50
  %204 = load i32, ptr %sym_next301, align 4
  %sym_end302 = getelementptr inbounds %struct.internal_state, ptr %203, i64 0, i32 51
  %205 = load i32, ptr %sym_end302, align 8
  %cmp303 = icmp eq i32 %204, %205
  %conv304 = zext i1 %cmp303 to i32
  store i32 %conv304, ptr %bflush, align 4
  %206 = load ptr, ptr %s.addr, align 8
  %match_available305 = getelementptr inbounds %struct.internal_state, ptr %206, i64 0, i32 26
  store i32 0, ptr %match_available305, align 8
  br label %if.end306

if.end306:                                        ; preds = %if.then274, %for.end
  %207 = load ptr, ptr %s.addr, align 8
  %strstart307 = getelementptr inbounds %struct.internal_state, ptr %207, i64 0, i32 27
  %208 = load i32, ptr %strstart307, align 4
  %cmp308 = icmp ult i32 %208, 2
  br i1 %cmp308, label %cond.true310, label %cond.end313

cond.true310:                                     ; preds = %if.end306
  %209 = load ptr, ptr %s.addr, align 8
  %strstart311 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 27
  %210 = load i32, ptr %strstart311, align 4
  br label %cond.end313

cond.end313:                                      ; preds = %if.end306, %cond.true310
  %cond314 = phi i32 [ %210, %cond.true310 ], [ 2, %if.end306 ]
  %211 = load ptr, ptr %s.addr, align 8
  %insert = getelementptr inbounds %struct.internal_state, ptr %211, i64 0, i32 55
  store i32 %cond314, ptr %insert, align 4
  %212 = load i32, ptr %flush.addr, align 4
  %cmp315 = icmp eq i32 %212, 4
  br i1 %cmp315, label %if.then317, label %if.end344

if.then317:                                       ; preds = %cond.end313
  %213 = load ptr, ptr %s.addr, align 8
  %block_start318 = getelementptr inbounds %struct.internal_state, ptr %213, i64 0, i32 23
  %214 = load i64, ptr %block_start318, align 8
  %cmp319 = icmp sgt i64 %214, -1
  br i1 %cmp319, label %cond.true321, label %cond.end328

cond.true321:                                     ; preds = %if.then317
  %215 = load ptr, ptr %s.addr, align 8
  %window322 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 14
  %216 = load ptr, ptr %window322, align 8
  %block_start323 = getelementptr inbounds %struct.internal_state, ptr %215, i64 0, i32 23
  %217 = load i64, ptr %block_start323, align 8
  %idxprom325 = and i64 %217, 4294967295
  %arrayidx326 = getelementptr inbounds i8, ptr %216, i64 %idxprom325
  br label %cond.end328

cond.end328:                                      ; preds = %if.then317, %cond.true321
  %cond329 = phi ptr [ %arrayidx326, %cond.true321 ], [ null, %if.then317 ]
  %218 = load ptr, ptr %s.addr, align 8
  %strstart330 = getelementptr inbounds %struct.internal_state, ptr %218, i64 0, i32 27
  %219 = load i32, ptr %strstart330, align 4
  %conv331 = zext i32 %219 to i64
  %block_start332 = getelementptr inbounds %struct.internal_state, ptr %218, i64 0, i32 23
  %220 = load i64, ptr %block_start332, align 8
  %sub333 = sub nsw i64 %conv331, %220
  call void @_tr_flush_block(ptr noundef %213, ptr noundef %cond329, i64 noundef %sub333, i32 noundef 1) #4
  %221 = load ptr, ptr %s.addr, align 8
  %strstart334 = getelementptr inbounds %struct.internal_state, ptr %221, i64 0, i32 27
  %222 = load i32, ptr %strstart334, align 4
  %conv335 = zext i32 %222 to i64
  %block_start336 = getelementptr inbounds %struct.internal_state, ptr %221, i64 0, i32 23
  store i64 %conv335, ptr %block_start336, align 8
  %223 = load ptr, ptr %221, align 8
  call void @flush_pending(ptr noundef %223)
  %224 = load ptr, ptr %s.addr, align 8
  %225 = load ptr, ptr %224, align 8
  %avail_out339 = getelementptr inbounds %struct.z_stream_s, ptr %225, i64 0, i32 4
  %226 = load i32, ptr %avail_out339, align 8
  %cmp340 = icmp eq i32 %226, 0
  br i1 %cmp340, label %if.then342, label %if.end343

if.then342:                                       ; preds = %cond.end328
  store i32 2, ptr %retval, align 4
  br label %return

if.end343:                                        ; preds = %cond.end328
  store i32 3, ptr %retval, align 4
  br label %return

if.end344:                                        ; preds = %cond.end313
  %227 = load ptr, ptr %s.addr, align 8
  %sym_next345 = getelementptr inbounds %struct.internal_state, ptr %227, i64 0, i32 50
  %228 = load i32, ptr %sym_next345, align 4
  %tobool346.not = icmp eq i32 %228, 0
  br i1 %tobool346.not, label %if.end374, label %if.then347

if.then347:                                       ; preds = %if.end344
  %229 = load ptr, ptr %s.addr, align 8
  %block_start348 = getelementptr inbounds %struct.internal_state, ptr %229, i64 0, i32 23
  %230 = load i64, ptr %block_start348, align 8
  %cmp349 = icmp sgt i64 %230, -1
  br i1 %cmp349, label %cond.true351, label %cond.end358

cond.true351:                                     ; preds = %if.then347
  %231 = load ptr, ptr %s.addr, align 8
  %window352 = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 14
  %232 = load ptr, ptr %window352, align 8
  %block_start353 = getelementptr inbounds %struct.internal_state, ptr %231, i64 0, i32 23
  %233 = load i64, ptr %block_start353, align 8
  %idxprom355 = and i64 %233, 4294967295
  %arrayidx356 = getelementptr inbounds i8, ptr %232, i64 %idxprom355
  br label %cond.end358

cond.end358:                                      ; preds = %if.then347, %cond.true351
  %cond359 = phi ptr [ %arrayidx356, %cond.true351 ], [ null, %if.then347 ]
  %234 = load ptr, ptr %s.addr, align 8
  %strstart360 = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 27
  %235 = load i32, ptr %strstart360, align 4
  %conv361 = zext i32 %235 to i64
  %block_start362 = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 23
  %236 = load i64, ptr %block_start362, align 8
  %sub363 = sub nsw i64 %conv361, %236
  call void @_tr_flush_block(ptr noundef %229, ptr noundef %cond359, i64 noundef %sub363, i32 noundef 0) #4
  %237 = load ptr, ptr %s.addr, align 8
  %strstart364 = getelementptr inbounds %struct.internal_state, ptr %237, i64 0, i32 27
  %238 = load i32, ptr %strstart364, align 4
  %conv365 = zext i32 %238 to i64
  %block_start366 = getelementptr inbounds %struct.internal_state, ptr %237, i64 0, i32 23
  store i64 %conv365, ptr %block_start366, align 8
  %239 = load ptr, ptr %237, align 8
  call void @flush_pending(ptr noundef %239)
  %240 = load ptr, ptr %s.addr, align 8
  %241 = load ptr, ptr %240, align 8
  %avail_out369 = getelementptr inbounds %struct.z_stream_s, ptr %241, i64 0, i32 4
  %242 = load i32, ptr %avail_out369, align 8
  %cmp370 = icmp eq i32 %242, 0
  br i1 %cmp370, label %if.then372, label %if.end374

if.then372:                                       ; preds = %cond.end358
  store i32 0, ptr %retval, align 4
  br label %return

if.end374:                                        ; preds = %cond.end358, %if.end344
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end374, %if.then372, %if.end343, %if.then342, %if.then262, %if.then196, %if.then4
  %243 = load i32, ptr %retval, align 4
  ret i32 %243
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
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 31
  %0 = load i32, ptr %max_chain_length, align 4
  store i32 %0, ptr %chain_length, align 4
  %window = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 14
  %1 = load ptr, ptr %window, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 27
  %3 = load i32, ptr %strstart, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %scan, align 8
  %prev_length = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 30
  %4 = load i32, ptr %prev_length, align 8
  store i32 %4, ptr %best_len, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %nice_match1 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 36
  %6 = load i32, ptr %nice_match1, align 8
  store i32 %6, ptr %nice_match, align 4
  %strstart2 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 27
  %7 = load i32, ptr %strstart2, align 4
  %w_size = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 11
  %8 = load i32, ptr %w_size, align 8
  %sub = add i32 %8, -262
  %cmp = icmp ugt i32 %7, %sub
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %9 = load ptr, ptr %s.addr, align 8
  %strstart3 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 27
  %10 = load i32, ptr %strstart3, align 4
  %w_size4 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %w_size4, align 8
  %sub5 = add i32 %11, -262
  %sub6 = sub i32 %10, %sub5
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub6, %cond.true ], [ 0, %entry ]
  store i32 %cond, ptr %limit, align 4
  %12 = load ptr, ptr %s.addr, align 8
  %prev7 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 16
  %13 = load ptr, ptr %prev7, align 8
  store ptr %13, ptr %prev, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 13
  %14 = load i32, ptr %w_mask, align 8
  store i32 %14, ptr %wmask, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %window8 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 14
  %16 = load ptr, ptr %window8, align 8
  %strstart9 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
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
  %prev_length16 = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 30
  %25 = load i32, ptr %prev_length16, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 35
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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 29
  %30 = load i32, ptr %lookahead, align 4
  %cmp18 = icmp ugt i32 %28, %30
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end
  %31 = load ptr, ptr %s.addr, align 8
  %lookahead20 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 29
  %32 = load i32, ptr %lookahead20, align 4
  store i32 %32, ptr %nice_match, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end
  br label %do.body

do.body:                                          ; preds = %land.rhs131, %if.end21
  %33 = load ptr, ptr %s.addr, align 8
  %window22 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 14
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
  br i1 %cmp107, label %do.body52, label %do.end, !llvm.loop !23

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
  %match_start = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 28
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
  br i1 %cmp132, label %do.body, label %do.end135, !llvm.loop !24

do.end135:                                        ; preds = %do.cond125, %if.then114, %land.rhs131
  %107 = load i32, ptr %best_len, align 4
  %108 = load ptr, ptr %s.addr, align 8
  %lookahead136 = getelementptr inbounds %struct.internal_state, ptr %108, i64 0, i32 29
  %109 = load i32, ptr %lookahead136, align 4
  %cmp137.not = icmp ugt i32 %107, %109
  br i1 %cmp137.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %do.end135
  %110 = load i32, ptr %best_len, align 4
  br label %return

if.end140:                                        ; preds = %do.end135
  %111 = load ptr, ptr %s.addr, align 8
  %lookahead141 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 29
  %112 = load i32, ptr %lookahead141, align 4
  br label %return

return:                                           ; preds = %if.end140, %if.then139
  %storemerge = phi i32 [ %112, %if.end140 ], [ %110, %if.then139 ]
  ret i32 %storemerge
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
