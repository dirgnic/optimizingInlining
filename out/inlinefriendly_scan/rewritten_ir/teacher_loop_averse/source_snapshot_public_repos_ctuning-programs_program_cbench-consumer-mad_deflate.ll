; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_loop_averse/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-mad_deflate.prepared.ll'
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
  %sub = sub nsw i32 0, %12
  store i32 %sub, ptr %windowBits.addr, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end21
  %13 = load i32, ptr %windowBits.addr, align 4
  %cmp29 = icmp sgt i32 %13, 15
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.else
  store i32 2, ptr %wrap, align 4
  %14 = load i32, ptr %windowBits.addr, align 4
  %sub32 = add nsw i32 %14, -16
  store i32 %sub32, ptr %windowBits.addr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then31, %if.then28
  %15 = load i32, ptr %memLevel.addr, align 4
  %cmp35 = icmp slt i32 %15, 1
  %16 = load i32, ptr %memLevel.addr, align 4
  %cmp38 = icmp sgt i32 %16, 9
  %or.cond1 = select i1 %cmp35, i1 true, i1 %cmp38
  %or.cond1.not = xor i1 %or.cond1, true
  %17 = load i32, ptr %method.addr, align 4
  %cmp41.not = icmp eq i32 %17, 8
  %or.cond2 = select i1 %or.cond1.not, i1 %cmp41.not, i1 false
  %or.cond2.not = xor i1 %or.cond2, true
  %18 = load i32, ptr %windowBits.addr, align 4
  %cmp44 = icmp slt i32 %18, 8
  %or.cond3 = select i1 %or.cond2.not, i1 true, i1 %cmp44
  %19 = load i32, ptr %windowBits.addr, align 4
  %cmp47 = icmp sgt i32 %19, 15
  %or.cond4 = select i1 %or.cond3, i1 true, i1 %cmp47
  %20 = load i32, ptr %level.addr, align 4
  %cmp50 = icmp slt i32 %20, 0
  %or.cond5 = select i1 %or.cond4, i1 true, i1 %cmp50
  %21 = load i32, ptr %level.addr, align 4
  %cmp53 = icmp sgt i32 %21, 9
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %cmp53
  %22 = load i32, ptr %strategy.addr, align 4
  %cmp56 = icmp slt i32 %22, 0
  %or.cond7 = select i1 %or.cond6, i1 true, i1 %cmp56
  %23 = load i32, ptr %strategy.addr, align 4
  %cmp59 = icmp sgt i32 %23, 4
  %or.cond8 = select i1 %or.cond7, i1 true, i1 %cmp59
  br i1 %or.cond8, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end34
  store i32 -2, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.end34
  %24 = load i32, ptr %windowBits.addr, align 4
  %cmp63 = icmp eq i32 %24, 8
  %spec.store.select9 = select i1 %cmp63, i32 9, i32 %24
  store i32 %spec.store.select9, ptr %windowBits.addr, align 4
  %25 = load ptr, ptr %strm.addr, align 8
  %zalloc67 = getelementptr inbounds %struct.z_stream_s, ptr %25, i64 0, i32 8
  %26 = load ptr, ptr %zalloc67, align 8
  %opaque68 = getelementptr inbounds %struct.z_stream_s, ptr %25, i64 0, i32 10
  %27 = load ptr, ptr %opaque68, align 8
  %call = call ptr %26(ptr noundef %27, i32 noundef 1, i32 noundef 5928) #5
  store ptr %call, ptr %s, align 8
  %cmp69 = icmp eq ptr %call, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end62
  store i32 -4, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end62
  %28 = load ptr, ptr %s, align 8
  %29 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %29, i64 0, i32 7
  store ptr %28, ptr %state, align 8
  store ptr %29, ptr %28, align 8
  %30 = load i32, ptr %wrap, align 4
  %wrap74 = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 6
  store i32 %30, ptr %wrap74, align 4
  %31 = load ptr, ptr %s, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 7
  store ptr null, ptr %gzhead, align 8
  %32 = load i32, ptr %windowBits.addr, align 4
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 12
  store i32 %32, ptr %w_bits, align 8
  %shl = shl i32 1, %32
  %33 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 11
  store i32 %shl, ptr %w_size, align 4
  %sub77 = add i32 %shl, -1
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 13
  store i32 %sub77, ptr %w_mask, align 4
  %34 = load i32, ptr %memLevel.addr, align 4
  %add = add nsw i32 %34, 7
  %35 = load ptr, ptr %s, align 8
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 20
  store i32 %add, ptr %hash_bits, align 8
  %shl79 = shl i32 1, %add
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 19
  store i32 %shl79, ptr %hash_size, align 4
  %sub81 = add i32 %shl79, -1
  %36 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 21
  store i32 %sub81, ptr %hash_mask, align 4
  %hash_bits82 = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 20
  %37 = load i32, ptr %hash_bits82, align 8
  %sub84 = add i32 %37, 2
  %div = udiv i32 %sub84, 3
  %38 = load ptr, ptr %s, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 22
  store i32 %div, ptr %hash_shift, align 8
  %39 = load ptr, ptr %strm.addr, align 8
  %zalloc85 = getelementptr inbounds %struct.z_stream_s, ptr %39, i64 0, i32 8
  %40 = load ptr, ptr %zalloc85, align 8
  %opaque86 = getelementptr inbounds %struct.z_stream_s, ptr %39, i64 0, i32 10
  %41 = load ptr, ptr %opaque86, align 8
  %42 = load ptr, ptr %s, align 8
  %w_size87 = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 11
  %43 = load i32, ptr %w_size87, align 4
  %call88 = call ptr %40(ptr noundef %41, i32 noundef %43, i32 noundef 2) #5
  %window = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 14
  store ptr %call88, ptr %window, align 8
  %44 = load ptr, ptr %strm.addr, align 8
  %zalloc89 = getelementptr inbounds %struct.z_stream_s, ptr %44, i64 0, i32 8
  %45 = load ptr, ptr %zalloc89, align 8
  %opaque90 = getelementptr inbounds %struct.z_stream_s, ptr %44, i64 0, i32 10
  %46 = load ptr, ptr %opaque90, align 8
  %47 = load ptr, ptr %s, align 8
  %w_size91 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 11
  %48 = load i32, ptr %w_size91, align 4
  %call92 = call ptr %45(ptr noundef %46, i32 noundef %48, i32 noundef 2) #5
  %prev = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 16
  store ptr %call92, ptr %prev, align 8
  %49 = load ptr, ptr %strm.addr, align 8
  %zalloc93 = getelementptr inbounds %struct.z_stream_s, ptr %49, i64 0, i32 8
  %50 = load ptr, ptr %zalloc93, align 8
  %opaque94 = getelementptr inbounds %struct.z_stream_s, ptr %49, i64 0, i32 10
  %51 = load ptr, ptr %opaque94, align 8
  %52 = load ptr, ptr %s, align 8
  %hash_size95 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 19
  %53 = load i32, ptr %hash_size95, align 4
  %call96 = call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 2) #5
  %head = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 17
  store ptr %call96, ptr %head, align 8
  %54 = load i32, ptr %memLevel.addr, align 4
  %add97 = add nsw i32 %54, 6
  %shl98 = shl i32 1, %add97
  %55 = load ptr, ptr %s, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 49
  store i32 %shl98, ptr %lit_bufsize, align 8
  %56 = load ptr, ptr %strm.addr, align 8
  %zalloc99 = getelementptr inbounds %struct.z_stream_s, ptr %56, i64 0, i32 8
  %57 = load ptr, ptr %zalloc99, align 8
  %opaque100 = getelementptr inbounds %struct.z_stream_s, ptr %56, i64 0, i32 10
  %58 = load ptr, ptr %opaque100, align 8
  %59 = load ptr, ptr %s, align 8
  %lit_bufsize101 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 49
  %60 = load i32, ptr %lit_bufsize101, align 8
  %call102 = call ptr %57(ptr noundef %58, i32 noundef %60, i32 noundef 4) #5
  store ptr %call102, ptr %overlay, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 2
  store ptr %call102, ptr %pending_buf, align 8
  %61 = load ptr, ptr %s, align 8
  %lit_bufsize103 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 49
  %62 = load i32, ptr %lit_bufsize103, align 8
  %conv104 = zext i32 %62 to i64
  %mul = shl nuw nsw i64 %conv104, 2
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 3
  store i64 %mul, ptr %pending_buf_size, align 8
  %63 = load ptr, ptr %s, align 8
  %window105 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 14
  %64 = load ptr, ptr %window105, align 8
  %cmp106 = icmp eq ptr %64, null
  br i1 %cmp106, label %if.then120, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %if.end72
  %65 = load ptr, ptr %s, align 8
  %prev109 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 16
  %66 = load ptr, ptr %prev109, align 8
  %cmp110 = icmp eq ptr %66, null
  br i1 %cmp110, label %if.then120, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %67 = load ptr, ptr %s, align 8
  %head113 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 17
  %68 = load ptr, ptr %head113, align 8
  %cmp114 = icmp eq ptr %68, null
  br i1 %cmp114, label %if.then120, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %69 = load ptr, ptr %s, align 8
  %pending_buf117 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 2
  %70 = load ptr, ptr %pending_buf117, align 8
  %cmp118 = icmp eq ptr %70, null
  br i1 %cmp118, label %if.then120, label %if.end123

if.then120:                                       ; preds = %lor.lhs.false116, %lor.lhs.false112, %lor.lhs.false108, %if.end72
  %71 = load ptr, ptr %s, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %71, i64 0, i32 1
  store i32 666, ptr %status, align 8
  %72 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 8
  %73 = load ptr, ptr %strm.addr, align 8
  %msg121 = getelementptr inbounds %struct.z_stream_s, ptr %73, i64 0, i32 6
  store ptr %72, ptr %msg121, align 8
  %call122 = call i32 @deflateEnd(ptr noundef %73)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end123:                                        ; preds = %lor.lhs.false116
  %74 = load ptr, ptr %overlay, align 8
  %75 = load ptr, ptr %s, align 8
  %lit_bufsize124 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 49
  %76 = load i32, ptr %lit_bufsize124, align 8
  %77 = lshr i32 %76, 1
  %div126 = zext i32 %77 to i64
  %add.ptr = getelementptr inbounds i16, ptr %74, i64 %div126
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 51
  store ptr %add.ptr, ptr %d_buf, align 8
  %78 = load ptr, ptr %s, align 8
  %pending_buf127 = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 2
  %79 = load ptr, ptr %pending_buf127, align 8
  %lit_bufsize128 = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 49
  %80 = load i32, ptr %lit_bufsize128, align 8
  %conv129 = zext i32 %80 to i64
  %mul130 = mul nuw nsw i64 %conv129, 3
  %add.ptr131 = getelementptr inbounds i8, ptr %79, i64 %mul130
  %81 = load ptr, ptr %s, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 48
  store ptr %add.ptr131, ptr %l_buf, align 8
  %82 = load i32, ptr %level.addr, align 4
  %level132 = getelementptr inbounds %struct.internal_state, ptr %81, i64 0, i32 33
  store i32 %82, ptr %level132, align 4
  %83 = load i32, ptr %strategy.addr, align 4
  %84 = load ptr, ptr %s, align 8
  %strategy133 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 34
  store i32 %83, ptr %strategy133, align 8
  %85 = load i32, ptr %method.addr, align 4
  %conv134 = trunc i32 %85 to i8
  %method135 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 9
  store i8 %conv134, ptr %method135, align 4
  %86 = load ptr, ptr %strm.addr, align 8
  %call136 = call i32 @deflateReset(ptr noundef %86)
  store i32 %call136, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end123, %if.then120, %if.then71, %if.then61, %if.then10, %if.then
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
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
  %cmp5.not = icmp eq i32 %5, 69
  %or.cond = select i1 %cmp4.not, i1 true, i1 %cmp5.not
  %6 = load i32, ptr %status, align 4
  %cmp7.not = icmp eq i32 %6, 73
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp7.not
  %7 = load i32, ptr %status, align 4
  %cmp9.not = icmp eq i32 %7, 91
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp9.not
  %8 = load i32, ptr %status, align 4
  %cmp11.not = icmp eq i32 %8, 103
  %or.cond3 = select i1 %or.cond2, i1 true, i1 %cmp11.not
  %9 = load i32, ptr %status, align 4
  %cmp13.not = icmp eq i32 %9, 113
  %or.cond4 = select i1 %or.cond3, i1 true, i1 %cmp13.not
  %10 = load i32, ptr %status, align 4
  %cmp15.not = icmp eq i32 %10, 666
  %or.cond5 = select i1 %or.cond4, i1 true, i1 %cmp15.not
  br i1 %or.cond5, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end
  %11 = load ptr, ptr %strm.addr, align 8
  %state18 = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 7
  %12 = load ptr, ptr %state18, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 2
  %13 = load ptr, ptr %pending_buf, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end17
  %14 = load ptr, ptr %strm.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 9
  %15 = load ptr, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %opaque, align 8
  %state20 = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 7
  %17 = load ptr, ptr %state20, align 8
  %pending_buf21 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 2
  %18 = load ptr, ptr %pending_buf21, align 8
  call void %15(ptr noundef %16, ptr noundef %18) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  %19 = load ptr, ptr %strm.addr, align 8
  %state23 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 7
  %20 = load ptr, ptr %state23, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 17
  %21 = load ptr, ptr %head, align 8
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %if.end30, label %if.then25

if.then25:                                        ; preds = %if.end22
  %22 = load ptr, ptr %strm.addr, align 8
  %zfree26 = getelementptr inbounds %struct.z_stream_s, ptr %22, i64 0, i32 9
  %23 = load ptr, ptr %zfree26, align 8
  %opaque27 = getelementptr inbounds %struct.z_stream_s, ptr %22, i64 0, i32 10
  %24 = load ptr, ptr %opaque27, align 8
  %state28 = getelementptr inbounds %struct.z_stream_s, ptr %22, i64 0, i32 7
  %25 = load ptr, ptr %state28, align 8
  %head29 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 17
  %26 = load ptr, ptr %head29, align 8
  call void %23(ptr noundef %24, ptr noundef %26) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end22
  %27 = load ptr, ptr %strm.addr, align 8
  %state31 = getelementptr inbounds %struct.z_stream_s, ptr %27, i64 0, i32 7
  %28 = load ptr, ptr %state31, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %28, i64 0, i32 16
  %29 = load ptr, ptr %prev, align 8
  %tobool32.not = icmp eq ptr %29, null
  br i1 %tobool32.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end30
  %30 = load ptr, ptr %strm.addr, align 8
  %zfree34 = getelementptr inbounds %struct.z_stream_s, ptr %30, i64 0, i32 9
  %31 = load ptr, ptr %zfree34, align 8
  %opaque35 = getelementptr inbounds %struct.z_stream_s, ptr %30, i64 0, i32 10
  %32 = load ptr, ptr %opaque35, align 8
  %state36 = getelementptr inbounds %struct.z_stream_s, ptr %30, i64 0, i32 7
  %33 = load ptr, ptr %state36, align 8
  %prev37 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 16
  %34 = load ptr, ptr %prev37, align 8
  call void %31(ptr noundef %32, ptr noundef %34) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30
  %35 = load ptr, ptr %strm.addr, align 8
  %state39 = getelementptr inbounds %struct.z_stream_s, ptr %35, i64 0, i32 7
  %36 = load ptr, ptr %state39, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 14
  %37 = load ptr, ptr %window, align 8
  %tobool40.not = icmp eq ptr %37, null
  br i1 %tobool40.not, label %if.end46, label %if.then41

if.then41:                                        ; preds = %if.end38
  %38 = load ptr, ptr %strm.addr, align 8
  %zfree42 = getelementptr inbounds %struct.z_stream_s, ptr %38, i64 0, i32 9
  %39 = load ptr, ptr %zfree42, align 8
  %opaque43 = getelementptr inbounds %struct.z_stream_s, ptr %38, i64 0, i32 10
  %40 = load ptr, ptr %opaque43, align 8
  %state44 = getelementptr inbounds %struct.z_stream_s, ptr %38, i64 0, i32 7
  %41 = load ptr, ptr %state44, align 8
  %window45 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 14
  %42 = load ptr, ptr %window45, align 8
  call void %39(ptr noundef %40, ptr noundef %42) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end38
  %43 = load ptr, ptr %strm.addr, align 8
  %zfree47 = getelementptr inbounds %struct.z_stream_s, ptr %43, i64 0, i32 9
  %44 = load ptr, ptr %zfree47, align 8
  %opaque48 = getelementptr inbounds %struct.z_stream_s, ptr %43, i64 0, i32 10
  %45 = load ptr, ptr %opaque48, align 8
  %state49 = getelementptr inbounds %struct.z_stream_s, ptr %43, i64 0, i32 7
  %46 = load ptr, ptr %state49, align 8
  call void %44(ptr noundef %45, ptr noundef %46) #5
  %47 = load ptr, ptr %strm.addr, align 8
  %state50 = getelementptr inbounds %struct.z_stream_s, ptr %47, i64 0, i32 7
  store ptr null, ptr %state50, align 8
  %48 = load i32, ptr %status, align 4
  %cmp51 = icmp eq i32 %48, 113
  %cond = select i1 %cmp51, i32 -3, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then16, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflateReset(ptr noundef %strm) #0 {
entry:
  %s.addr.i = alloca ptr, align 8
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
  %wrap = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 6
  %11 = load i32, ptr %wrap, align 4
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %s, align 8
  %wrap9 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 6
  %13 = load i32, ptr %wrap9, align 4
  %sub = sub nsw i32 0, %13
  %wrap10 = getelementptr inbounds %struct.internal_state, ptr %12, i64 0, i32 6
  store i32 %sub, ptr %wrap10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  %14 = load ptr, ptr %s, align 8
  %wrap12 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %wrap12, align 4
  %tobool.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool.not, i32 113, i32 42
  %status = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 1
  store i32 %cond, ptr %status, align 8
  %16 = load ptr, ptr %s, align 8
  %wrap13 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 6
  %17 = load i32, ptr %wrap13, align 4
  %cmp14 = icmp eq i32 %17, 2
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  %call15 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i64 [ %call, %cond.true ], [ %call15, %cond.false ]
  %18 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %18, i64 0, i32 12
  store i64 %cond16, ptr %adler, align 8
  %19 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 10
  store i32 0, ptr %last_flush, align 8
  call void @_tr_init(ptr noundef %19) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  store ptr %19, ptr %s.addr.i, align 8
  %w_size.i = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 11
  %20 = load i32, ptr %w_size.i, align 4
  %conv.i = zext i32 %20 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 1
  %window_size.i = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 15
  store i64 %mul.i, ptr %window_size.i, align 8
  %21 = load ptr, ptr %s.addr.i, align 8
  %head.i = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 17
  %22 = load ptr, ptr %head.i, align 8
  %hash_size.i = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 19
  %23 = load i32, ptr %hash_size.i, align 4
  %sub.i = add i32 %23, -1
  %idxprom.i = zext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %22, i64 %idxprom.i
  store i16 0, ptr %arrayidx.i, align 2
  %24 = load ptr, ptr %s.addr.i, align 8
  %head1.i = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 17
  %25 = load ptr, ptr %head1.i, align 8
  %hash_size2.i = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 19
  %26 = load i32, ptr %hash_size2.i, align 4
  %sub3.i = add i32 %26, -1
  %conv4.i = zext i32 %sub3.i to i64
  %mul5.i = shl nuw nsw i64 %conv4.i, 1
  %27 = load ptr, ptr %s.addr.i, align 8
  %head6.i = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 17
  %28 = load ptr, ptr %head6.i, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call.i = call ptr @__memset_chk(ptr noundef %25, i32 noundef 0, i64 noundef %mul5.i, i64 noundef %29) #5
  %level.i = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 33
  %30 = load i32, ptr %level.i, align 4
  %idxprom7.i = sext i32 %30 to i64
  %max_lazy.i = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom7.i, i32 1
  %31 = load i16, ptr %max_lazy.i, align 2
  %conv9.i = zext i16 %31 to i32
  %32 = load ptr, ptr %s.addr.i, align 8
  %max_lazy_match.i = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 32
  store i32 %conv9.i, ptr %max_lazy_match.i, align 8
  %level10.i = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 33
  %33 = load i32, ptr %level10.i, align 4
  %idxprom11.i = sext i32 %33 to i64
  %arrayidx12.i = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom11.i
  %34 = load i16, ptr %arrayidx12.i, align 8
  %conv13.i = zext i16 %34 to i32
  %35 = load ptr, ptr %s.addr.i, align 8
  %good_match.i = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 35
  store i32 %conv13.i, ptr %good_match.i, align 4
  %level14.i = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 33
  %36 = load i32, ptr %level14.i, align 4
  %idxprom15.i = sext i32 %36 to i64
  %nice_length.i = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom15.i, i32 2
  %37 = load i16, ptr %nice_length.i, align 4
  %conv17.i = zext i16 %37 to i32
  %38 = load ptr, ptr %s.addr.i, align 8
  %nice_match.i = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 36
  store i32 %conv17.i, ptr %nice_match.i, align 8
  %level18.i = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 33
  %39 = load i32, ptr %level18.i, align 4
  %idxprom19.i = sext i32 %39 to i64
  %max_chain.i = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom19.i, i32 3
  %40 = load i16, ptr %max_chain.i, align 2
  %conv21.i = zext i16 %40 to i32
  %41 = load ptr, ptr %s.addr.i, align 8
  %max_chain_length.i = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 31
  store i32 %conv21.i, ptr %max_chain_length.i, align 4
  %strstart.i = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 27
  store i32 0, ptr %strstart.i, align 4
  %block_start.i = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 23
  store i64 0, ptr %block_start.i, align 8
  %42 = load ptr, ptr %s.addr.i, align 8
  %lookahead.i = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 29
  store i32 0, ptr %lookahead.i, align 4
  %prev_length.i = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 30
  store i32 2, ptr %prev_length.i, align 8
  %match_length.i = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 24
  store i32 2, ptr %match_length.i, align 8
  %43 = load ptr, ptr %s.addr.i, align 8
  %match_available.i = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 26
  store i32 0, ptr %match_available.i, align 8
  %ins_h.i = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 18
  store i32 0, ptr %ins_h.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %lor.lhs.false4, %cond.end
  %storemerge = phi i32 [ 0, %cond.end ], [ -2, %lor.lhs.false4 ], [ -2, %lor.lhs.false2 ], [ -2, %lor.lhs.false ], [ -2, %entry ]
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
  %wrap = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 6
  %5 = load i32, ptr %wrap, align 4
  %cmp6 = icmp eq i32 %5, 2
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %6 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 7
  %7 = load ptr, ptr %state8, align 8
  %wrap9 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 6
  %8 = load i32, ptr %wrap9, align 4
  %cmp10 = icmp eq i32 %8, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %9 = load ptr, ptr %strm.addr, align 8
  %state11 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 7
  %10 = load ptr, ptr %state11, align 8
  %status = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 1
  %11 = load i32, ptr %status, align 8
  %cmp12.not = icmp eq i32 %11, 42
  br i1 %cmp12.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false7
  %12 = load ptr, ptr %strm.addr, align 8
  %state13 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 7
  %13 = load ptr, ptr %state13, align 8
  store ptr %13, ptr %s, align 8
  %wrap14 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 6
  %14 = load i32, ptr %wrap14, align 4
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  %15 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 12
  %16 = load i64, ptr %adler, align 8
  %17 = load ptr, ptr %dictionary.addr, align 8
  %18 = load i32, ptr %dictLength.addr, align 4
  %call = call i64 @adler32(i64 noundef %16, ptr noundef %17, i32 noundef %18) #5
  %adler16 = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 12
  store i64 %call, ptr %adler16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end
  %19 = load i32, ptr %length, align 4
  %cmp18 = icmp ult i32 %19, 3
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end17
  %20 = load i32, ptr %length, align 4
  %21 = load ptr, ptr %s, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 11
  %22 = load i32, ptr %w_size, align 4
  %sub = add i32 %22, -262
  %cmp21 = icmp ugt i32 %20, %sub
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end20
  %23 = load ptr, ptr %s, align 8
  %w_size23 = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 11
  %24 = load i32, ptr %w_size23, align 4
  %sub24 = add i32 %24, -262
  store i32 %sub24, ptr %length, align 4
  %25 = load i32, ptr %dictLength.addr, align 4
  %sub25 = sub i32 %25, %sub24
  %26 = load ptr, ptr %dictionary.addr, align 8
  %idx.ext = zext i32 %sub25 to i64
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %dictionary.addr, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end20
  %27 = load ptr, ptr %s, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 14
  %28 = load ptr, ptr %window, align 8
  %29 = load ptr, ptr %dictionary.addr, align 8
  %30 = load i32, ptr %length, align 4
  %conv = zext i32 %30 to i64
  %31 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call28 = call ptr @__memcpy_chk(ptr noundef %28, ptr noundef %29, i64 noundef %conv, i64 noundef %31) #5
  %32 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 27
  store i32 %30, ptr %strstart, align 4
  %33 = load i32, ptr %length, align 4
  %conv29 = zext i32 %33 to i64
  %block_start = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 23
  store i64 %conv29, ptr %block_start, align 8
  %34 = load ptr, ptr %s, align 8
  %window30 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 14
  %35 = load ptr, ptr %window30, align 8
  %36 = load i8, ptr %35, align 1
  %conv31 = zext i8 %36 to i32
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 18
  store i32 %conv31, ptr %ins_h, align 8
  %37 = load ptr, ptr %s, align 8
  %ins_h32 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 18
  %38 = load i32, ptr %ins_h32, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 22
  %39 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %38, %39
  %window33 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 14
  %40 = load ptr, ptr %window33, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %40, i64 1
  %41 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %41 to i32
  %xor = xor i32 %shl, %conv35
  %42 = load ptr, ptr %s, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 21
  %43 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %43
  %ins_h36 = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 18
  store i32 %and, ptr %ins_h36, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end26
  %storemerge = phi i32 [ 0, %if.end26 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %n, align 4
  %44 = load i32, ptr %length, align 4
  %sub37 = add i32 %44, -3
  %cmp38.not = icmp ugt i32 %storemerge, %sub37
  br i1 %cmp38.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %s, align 8
  %ins_h40 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 18
  %46 = load i32, ptr %ins_h40, align 8
  %hash_shift41 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 22
  %47 = load i32, ptr %hash_shift41, align 8
  %shl42 = shl i32 %46, %47
  %window43 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 14
  %48 = load ptr, ptr %window43, align 8
  %49 = load i32, ptr %n, align 4
  %add = add i32 %49, 2
  %idxprom = zext i32 %add to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %48, i64 %idxprom
  %50 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %50 to i32
  %xor46 = xor i32 %shl42, %conv45
  %51 = load ptr, ptr %s, align 8
  %hash_mask47 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 21
  %52 = load i32, ptr %hash_mask47, align 4
  %and48 = and i32 %xor46, %52
  %ins_h49 = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 18
  store i32 %and48, ptr %ins_h49, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %51, i64 0, i32 17
  %53 = load ptr, ptr %head, align 8
  %54 = load ptr, ptr %s, align 8
  %ins_h50 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 18
  %55 = load i32, ptr %ins_h50, align 8
  %idxprom51 = zext i32 %55 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %53, i64 %idxprom51
  %56 = load i16, ptr %arrayidx52, align 2
  %prev = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 16
  %57 = load ptr, ptr %prev, align 8
  %58 = load i32, ptr %n, align 4
  %59 = load ptr, ptr %s, align 8
  %w_mask = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 13
  %60 = load i32, ptr %w_mask, align 4
  %and53 = and i32 %58, %60
  %idxprom54 = zext i32 %and53 to i64
  %arrayidx55 = getelementptr inbounds i16, ptr %57, i64 %idxprom54
  store i16 %56, ptr %arrayidx55, align 2
  %conv56 = zext i16 %56 to i32
  store i32 %conv56, ptr %hash_head, align 4
  %61 = load i32, ptr %n, align 4
  %conv57 = trunc i32 %61 to i16
  %62 = load ptr, ptr %s, align 8
  %head58 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 17
  %63 = load ptr, ptr %head58, align 8
  %ins_h59 = getelementptr inbounds %struct.internal_state, ptr %62, i64 0, i32 18
  %64 = load i32, ptr %ins_h59, align 8
  %idxprom60 = zext i32 %64 to i64
  %arrayidx61 = getelementptr inbounds i16, ptr %63, i64 %idxprom60
  store i16 %conv57, ptr %arrayidx61, align 2
  %65 = load i32, ptr %n, align 4
  %inc = add i32 %65, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %66 = load i32, ptr %hash_head, align 4
  %tobool62.not = icmp eq i32 %66, 0
  %spec.store.select = select i1 %tobool62.not, i32 %66, i32 0
  store i32 %spec.store.select, ptr %hash_head, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then19, %if.then
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

declare void @_tr_init(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @deflateSetHeader(ptr noundef %strm, ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %head, ptr %head.addr, align 8
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
  %wrap = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 6
  %4 = load i32, ptr %wrap, align 4
  %cmp3.not = icmp eq i32 %4, 2
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %head.addr, align 8
  %6 = load ptr, ptr %strm.addr, align 8
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 7
  %7 = load ptr, ptr %state6, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 7
  store ptr %5, ptr %gzhead, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @deflatePrime(ptr noundef %strm, i32 noundef %bits, i32 noundef %value) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  store i32 %value, ptr %value.addr, align 4
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %bits.addr, align 4
  %3 = load ptr, ptr %strm.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 7
  %4 = load ptr, ptr %state2, align 8
  %bi_valid = getelementptr inbounds %struct.internal_state, ptr %4, i64 0, i32 57
  store i32 %2, ptr %bi_valid, align 4
  %5 = load i32, ptr %value.addr, align 4
  %6 = load i32, ptr %bits.addr, align 4
  %notmask = shl nsw i32 -1, %6
  %sub = xor i32 %notmask, -1
  %and = and i32 %5, %sub
  %conv = trunc i32 %and to i16
  %7 = load ptr, ptr %strm.addr, align 8
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %7, i64 0, i32 7
  %8 = load ptr, ptr %state3, align 8
  %bi_buf = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 56
  store i16 %conv, ptr %bi_buf, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
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
  %cmp12 = icmp sgt i32 %8, 4
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp12
  br i1 %or.cond2, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %9 = load ptr, ptr %s, align 8
  %level15 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 33
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
  %level24 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 33
  %18 = load i32, ptr %level24, align 4
  %19 = load i32, ptr %level.addr, align 4
  %cmp25.not = icmp eq i32 %18, %19
  br i1 %cmp25.not, label %if.end39, label %if.then26

if.then26:                                        ; preds = %if.end23
  %20 = load i32, ptr %level.addr, align 4
  %21 = load ptr, ptr %s, align 8
  %level27 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 33
  store i32 %20, ptr %level27, align 4
  %idxprom28 = sext i32 %20 to i64
  %max_lazy = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom28, i32 1
  %22 = load i16, ptr %max_lazy, align 2
  %conv = zext i16 %22 to i32
  %23 = load ptr, ptr %s, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %23, i64 0, i32 32
  store i32 %conv, ptr %max_lazy_match, align 8
  %24 = load i32, ptr %level.addr, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom30
  %25 = load i16, ptr %arrayidx31, align 8
  %conv32 = zext i16 %25 to i32
  %26 = load ptr, ptr %s, align 8
  %good_match = getelementptr inbounds %struct.internal_state, ptr %26, i64 0, i32 35
  store i32 %conv32, ptr %good_match, align 4
  %27 = load i32, ptr %level.addr, align 4
  %idxprom33 = sext i32 %27 to i64
  %nice_length = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom33, i32 2
  %28 = load i16, ptr %nice_length, align 4
  %conv35 = zext i16 %28 to i32
  %29 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 36
  store i32 %conv35, ptr %nice_match, align 8
  %30 = load i32, ptr %level.addr, align 4
  %idxprom36 = sext i32 %30 to i64
  %max_chain = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom36, i32 3
  %31 = load i16, ptr %max_chain, align 2
  %conv38 = zext i16 %31 to i32
  %32 = load ptr, ptr %s, align 8
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 31
  store i32 %conv38, ptr %max_chain_length, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %if.end23
  %33 = load i32, ptr %strategy.addr, align 4
  %34 = load ptr, ptr %s, align 8
  %strategy40 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 34
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
  %s.addr.i49 = alloca ptr, align 8
  %b.addr.i50 = alloca i32, align 4
  %s.addr.i33 = alloca ptr, align 8
  %b.addr.i34 = alloca i32, align 4
  %s.addr.i17 = alloca ptr, align 8
  %b.addr.i18 = alloca i32, align 4
  %s.addr.i1 = alloca ptr, align 8
  %b.addr.i2 = alloca i32, align 4
  %s.addr.i = alloca ptr, align 8
  %b.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %old_flush = alloca i32, align 4
  %s = alloca ptr, align 8
  %header = alloca i32, align 4
  %beg = alloca i32, align 4
  %beg354 = alloca i32, align 4
  %val = alloca i32, align 4
  %beg439 = alloca i32, align 4
  %val441 = alloca i32, align 4
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
  %or.cond71 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond71, label %if.then, label %if.end

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
  %or.cond72 = select i1 %cmp12, i1 true, i1 %cmp14.not
  br i1 %or.cond72, label %if.end16, label %if.then15

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
  %22 = load ptr, ptr %s, align 8
  %last_flush = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 10
  %23 = load i32, ptr %last_flush, align 8
  store i32 %23, ptr %old_flush, align 4
  %24 = load i32, ptr %flush.addr, align 4
  %last_flush22 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 10
  store i32 %24, ptr %last_flush22, align 8
  %25 = load ptr, ptr %s, align 8
  %status23 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 1
  %26 = load i32, ptr %status23, align 8
  %cmp24 = icmp eq i32 %26, 42
  br i1 %cmp24, label %if.then25, label %if.end257

if.then25:                                        ; preds = %if.end20
  %27 = load ptr, ptr %s, align 8
  %wrap = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 6
  %28 = load i32, ptr %wrap, align 4
  %cmp26 = icmp eq i32 %28, 2
  br i1 %cmp26, label %if.then27, label %if.else209

if.then27:                                        ; preds = %if.then25
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %29 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %29, i64 0, i32 12
  store i64 %call, ptr %adler, align 8
  %30 = load ptr, ptr %s, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 2
  %31 = load ptr, ptr %pending_buf, align 8
  %pending = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %pending, align 8
  %inc = add i32 %32, 1
  store i32 %inc, ptr %pending, align 8
  %idxprom = zext i32 %32 to i64
  %arrayidx = getelementptr inbounds i8, ptr %31, i64 %idxprom
  store i8 31, ptr %arrayidx, align 1
  %33 = load ptr, ptr %s, align 8
  %pending_buf28 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 2
  %34 = load ptr, ptr %pending_buf28, align 8
  %pending29 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 5
  %35 = load i32, ptr %pending29, align 8
  %inc30 = add i32 %35, 1
  store i32 %inc30, ptr %pending29, align 8
  %idxprom31 = zext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %34, i64 %idxprom31
  store i8 -117, ptr %arrayidx32, align 1
  %36 = load ptr, ptr %s, align 8
  %pending_buf33 = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 2
  %37 = load ptr, ptr %pending_buf33, align 8
  %pending34 = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %pending34, align 8
  %inc35 = add i32 %38, 1
  store i32 %inc35, ptr %pending34, align 8
  %idxprom36 = zext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %37, i64 %idxprom36
  store i8 8, ptr %arrayidx37, align 1
  %39 = load ptr, ptr %s, align 8
  %gzhead = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 7
  %40 = load ptr, ptr %gzhead, align 8
  %cmp38 = icmp eq ptr %40, null
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then27
  %41 = load ptr, ptr %s, align 8
  %pending_buf40 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 2
  %42 = load ptr, ptr %pending_buf40, align 8
  %pending41 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %pending41, align 8
  %inc42 = add i32 %43, 1
  store i32 %inc42, ptr %pending41, align 8
  %idxprom43 = zext i32 %43 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %42, i64 %idxprom43
  store i8 0, ptr %arrayidx44, align 1
  %44 = load ptr, ptr %s, align 8
  %pending_buf45 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 2
  %45 = load ptr, ptr %pending_buf45, align 8
  %pending46 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 5
  %46 = load i32, ptr %pending46, align 8
  %inc47 = add i32 %46, 1
  store i32 %inc47, ptr %pending46, align 8
  %idxprom48 = zext i32 %46 to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %45, i64 %idxprom48
  store i8 0, ptr %arrayidx49, align 1
  %47 = load ptr, ptr %s, align 8
  %pending_buf50 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 2
  %48 = load ptr, ptr %pending_buf50, align 8
  %pending51 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %pending51, align 8
  %inc52 = add i32 %49, 1
  store i32 %inc52, ptr %pending51, align 8
  %idxprom53 = zext i32 %49 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %48, i64 %idxprom53
  store i8 0, ptr %arrayidx54, align 1
  %50 = load ptr, ptr %s, align 8
  %pending_buf55 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 2
  %51 = load ptr, ptr %pending_buf55, align 8
  %pending56 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 5
  %52 = load i32, ptr %pending56, align 8
  %inc57 = add i32 %52, 1
  store i32 %inc57, ptr %pending56, align 8
  %idxprom58 = zext i32 %52 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %51, i64 %idxprom58
  store i8 0, ptr %arrayidx59, align 1
  %53 = load ptr, ptr %s, align 8
  %pending_buf60 = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 2
  %54 = load ptr, ptr %pending_buf60, align 8
  %pending61 = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %pending61, align 8
  %inc62 = add i32 %55, 1
  store i32 %inc62, ptr %pending61, align 8
  %idxprom63 = zext i32 %55 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %54, i64 %idxprom63
  store i8 0, ptr %arrayidx64, align 1
  %56 = load ptr, ptr %s, align 8
  %level = getelementptr inbounds %struct.internal_state, ptr %56, i64 0, i32 33
  %57 = load i32, ptr %level, align 4
  %cmp65 = icmp eq i32 %57, 9
  br i1 %cmp65, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then39
  %58 = load ptr, ptr %s, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 34
  %59 = load i32, ptr %strategy, align 8
  %cmp66 = icmp sgt i32 %59, 1
  br i1 %cmp66, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false
  %60 = load ptr, ptr %s, align 8
  %level67 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 33
  %61 = load i32, ptr %level67, align 4
  %cmp68 = icmp slt i32 %61, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false
  %62 = phi i1 [ true, %cond.false ], [ %cmp68, %lor.rhs ]
  %cond = select i1 %62, i8 4, i8 0
  br label %cond.end

cond.end:                                         ; preds = %if.then39, %lor.end
  %cond69 = phi i8 [ %cond, %lor.end ], [ 2, %if.then39 ]
  %63 = load ptr, ptr %s, align 8
  %pending_buf70 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 2
  %64 = load ptr, ptr %pending_buf70, align 8
  %pending71 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 5
  %65 = load i32, ptr %pending71, align 8
  %inc72 = add i32 %65, 1
  store i32 %inc72, ptr %pending71, align 8
  %idxprom73 = zext i32 %65 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %64, i64 %idxprom73
  store i8 %cond69, ptr %arrayidx74, align 1
  %66 = load ptr, ptr %s, align 8
  %pending_buf75 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 2
  %67 = load ptr, ptr %pending_buf75, align 8
  %pending76 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 5
  %68 = load i32, ptr %pending76, align 8
  %inc77 = add i32 %68, 1
  store i32 %inc77, ptr %pending76, align 8
  %idxprom78 = zext i32 %68 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %67, i64 %idxprom78
  store i8 3, ptr %arrayidx79, align 1
  %69 = load ptr, ptr %s, align 8
  %status80 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 1
  store i32 113, ptr %status80, align 8
  br label %if.end257

if.else:                                          ; preds = %if.then27
  %70 = load ptr, ptr %s, align 8
  %gzhead81 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 7
  %71 = load ptr, ptr %gzhead81, align 8
  %72 = load i32, ptr %71, align 8
  %tobool.not = icmp ne i32 %72, 0
  %cond82 = zext i1 %tobool.not to i8
  %hcrc = getelementptr inbounds %struct.gz_header_s, ptr %71, i64 0, i32 11
  %73 = load i32, ptr %hcrc, align 4
  %tobool84.not = icmp eq i32 %73, 0
  %cond85 = select i1 %tobool84.not, i8 0, i8 2
  %add = or i8 %cond85, %cond82
  %74 = load ptr, ptr %s, align 8
  %gzhead86 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 7
  %75 = load ptr, ptr %gzhead86, align 8
  %extra = getelementptr inbounds %struct.gz_header_s, ptr %75, i64 0, i32 4
  %76 = load ptr, ptr %extra, align 8
  %cmp87 = icmp eq ptr %76, null
  %cond89 = select i1 %cmp87, i8 0, i8 4
  %add90 = or i8 %add, %cond89
  %77 = load ptr, ptr %s, align 8
  %gzhead91 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 7
  %78 = load ptr, ptr %gzhead91, align 8
  %name = getelementptr inbounds %struct.gz_header_s, ptr %78, i64 0, i32 7
  %79 = load ptr, ptr %name, align 8
  %cmp92 = icmp eq ptr %79, null
  %cond94 = select i1 %cmp92, i8 0, i8 8
  %add95 = or i8 %add90, %cond94
  %80 = load ptr, ptr %s, align 8
  %gzhead96 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 7
  %81 = load ptr, ptr %gzhead96, align 8
  %comment = getelementptr inbounds %struct.gz_header_s, ptr %81, i64 0, i32 9
  %82 = load ptr, ptr %comment, align 8
  %cmp97 = icmp eq ptr %82, null
  %cond99 = select i1 %cmp97, i8 0, i8 16
  %add100 = or i8 %add95, %cond99
  %83 = load ptr, ptr %s, align 8
  %pending_buf102 = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 2
  %84 = load ptr, ptr %pending_buf102, align 8
  %pending103 = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 5
  %85 = load i32, ptr %pending103, align 8
  %inc104 = add i32 %85, 1
  store i32 %inc104, ptr %pending103, align 8
  %idxprom105 = zext i32 %85 to i64
  %arrayidx106 = getelementptr inbounds i8, ptr %84, i64 %idxprom105
  store i8 %add100, ptr %arrayidx106, align 1
  %86 = load ptr, ptr %s, align 8
  %gzhead107 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 7
  %87 = load ptr, ptr %gzhead107, align 8
  %time = getelementptr inbounds %struct.gz_header_s, ptr %87, i64 0, i32 1
  %88 = load i64, ptr %time, align 8
  %conv108 = trunc i64 %88 to i8
  %pending_buf109 = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 2
  %89 = load ptr, ptr %pending_buf109, align 8
  %90 = load ptr, ptr %s, align 8
  %pending110 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 5
  %91 = load i32, ptr %pending110, align 8
  %inc111 = add i32 %91, 1
  store i32 %inc111, ptr %pending110, align 8
  %idxprom112 = zext i32 %91 to i64
  %arrayidx113 = getelementptr inbounds i8, ptr %89, i64 %idxprom112
  store i8 %conv108, ptr %arrayidx113, align 1
  %92 = load ptr, ptr %s, align 8
  %gzhead114 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 7
  %93 = load ptr, ptr %gzhead114, align 8
  %time115 = getelementptr inbounds %struct.gz_header_s, ptr %93, i64 0, i32 1
  %94 = load i64, ptr %time115, align 8
  %shr = lshr i64 %94, 8
  %conv117 = trunc i64 %shr to i8
  %95 = load ptr, ptr %s, align 8
  %pending_buf118 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 2
  %96 = load ptr, ptr %pending_buf118, align 8
  %pending119 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 5
  %97 = load i32, ptr %pending119, align 8
  %inc120 = add i32 %97, 1
  store i32 %inc120, ptr %pending119, align 8
  %idxprom121 = zext i32 %97 to i64
  %arrayidx122 = getelementptr inbounds i8, ptr %96, i64 %idxprom121
  store i8 %conv117, ptr %arrayidx122, align 1
  %98 = load ptr, ptr %s, align 8
  %gzhead123 = getelementptr inbounds %struct.internal_state, ptr %98, i64 0, i32 7
  %99 = load ptr, ptr %gzhead123, align 8
  %time124 = getelementptr inbounds %struct.gz_header_s, ptr %99, i64 0, i32 1
  %100 = load i64, ptr %time124, align 8
  %shr125 = lshr i64 %100, 16
  %conv127 = trunc i64 %shr125 to i8
  %101 = load ptr, ptr %s, align 8
  %pending_buf128 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 2
  %102 = load ptr, ptr %pending_buf128, align 8
  %pending129 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 5
  %103 = load i32, ptr %pending129, align 8
  %inc130 = add i32 %103, 1
  store i32 %inc130, ptr %pending129, align 8
  %idxprom131 = zext i32 %103 to i64
  %arrayidx132 = getelementptr inbounds i8, ptr %102, i64 %idxprom131
  store i8 %conv127, ptr %arrayidx132, align 1
  %104 = load ptr, ptr %s, align 8
  %gzhead133 = getelementptr inbounds %struct.internal_state, ptr %104, i64 0, i32 7
  %105 = load ptr, ptr %gzhead133, align 8
  %time134 = getelementptr inbounds %struct.gz_header_s, ptr %105, i64 0, i32 1
  %106 = load i64, ptr %time134, align 8
  %shr135 = lshr i64 %106, 24
  %conv137 = trunc i64 %shr135 to i8
  %107 = load ptr, ptr %s, align 8
  %pending_buf138 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 2
  %108 = load ptr, ptr %pending_buf138, align 8
  %pending139 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 5
  %109 = load i32, ptr %pending139, align 8
  %inc140 = add i32 %109, 1
  store i32 %inc140, ptr %pending139, align 8
  %idxprom141 = zext i32 %109 to i64
  %arrayidx142 = getelementptr inbounds i8, ptr %108, i64 %idxprom141
  store i8 %conv137, ptr %arrayidx142, align 1
  %110 = load ptr, ptr %s, align 8
  %level143 = getelementptr inbounds %struct.internal_state, ptr %110, i64 0, i32 33
  %111 = load i32, ptr %level143, align 4
  %cmp144 = icmp eq i32 %111, 9
  br i1 %cmp144, label %cond.end157, label %cond.false147

cond.false147:                                    ; preds = %if.else
  %112 = load ptr, ptr %s, align 8
  %strategy148 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 34
  %113 = load i32, ptr %strategy148, align 8
  %cmp149 = icmp sgt i32 %113, 1
  br i1 %cmp149, label %lor.end155, label %lor.rhs151

lor.rhs151:                                       ; preds = %cond.false147
  %114 = load ptr, ptr %s, align 8
  %level152 = getelementptr inbounds %struct.internal_state, ptr %114, i64 0, i32 33
  %115 = load i32, ptr %level152, align 4
  %cmp153 = icmp slt i32 %115, 2
  br label %lor.end155

lor.end155:                                       ; preds = %lor.rhs151, %cond.false147
  %116 = phi i1 [ true, %cond.false147 ], [ %cmp153, %lor.rhs151 ]
  %cond156 = select i1 %116, i8 4, i8 0
  br label %cond.end157

cond.end157:                                      ; preds = %if.else, %lor.end155
  %cond158 = phi i8 [ %cond156, %lor.end155 ], [ 2, %if.else ]
  %117 = load ptr, ptr %s, align 8
  %pending_buf160 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 2
  %118 = load ptr, ptr %pending_buf160, align 8
  %pending161 = getelementptr inbounds %struct.internal_state, ptr %117, i64 0, i32 5
  %119 = load i32, ptr %pending161, align 8
  %inc162 = add i32 %119, 1
  store i32 %inc162, ptr %pending161, align 8
  %idxprom163 = zext i32 %119 to i64
  %arrayidx164 = getelementptr inbounds i8, ptr %118, i64 %idxprom163
  store i8 %cond158, ptr %arrayidx164, align 1
  %120 = load ptr, ptr %s, align 8
  %gzhead165 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 7
  %121 = load ptr, ptr %gzhead165, align 8
  %os = getelementptr inbounds %struct.gz_header_s, ptr %121, i64 0, i32 3
  %122 = load i32, ptr %os, align 4
  %conv167 = trunc i32 %122 to i8
  %pending_buf168 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 2
  %123 = load ptr, ptr %pending_buf168, align 8
  %124 = load ptr, ptr %s, align 8
  %pending169 = getelementptr inbounds %struct.internal_state, ptr %124, i64 0, i32 5
  %125 = load i32, ptr %pending169, align 8
  %inc170 = add i32 %125, 1
  store i32 %inc170, ptr %pending169, align 8
  %idxprom171 = zext i32 %125 to i64
  %arrayidx172 = getelementptr inbounds i8, ptr %123, i64 %idxprom171
  store i8 %conv167, ptr %arrayidx172, align 1
  %126 = load ptr, ptr %s, align 8
  %gzhead173 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 7
  %127 = load ptr, ptr %gzhead173, align 8
  %extra174 = getelementptr inbounds %struct.gz_header_s, ptr %127, i64 0, i32 4
  %128 = load ptr, ptr %extra174, align 8
  %cmp175.not = icmp eq ptr %128, null
  br i1 %cmp175.not, label %if.end196, label %if.then177

if.then177:                                       ; preds = %cond.end157
  %129 = load ptr, ptr %s, align 8
  %gzhead178 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 7
  %130 = load ptr, ptr %gzhead178, align 8
  %extra_len = getelementptr inbounds %struct.gz_header_s, ptr %130, i64 0, i32 5
  %131 = load i32, ptr %extra_len, align 8
  %conv180 = trunc i32 %131 to i8
  %pending_buf181 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 2
  %132 = load ptr, ptr %pending_buf181, align 8
  %133 = load ptr, ptr %s, align 8
  %pending182 = getelementptr inbounds %struct.internal_state, ptr %133, i64 0, i32 5
  %134 = load i32, ptr %pending182, align 8
  %inc183 = add i32 %134, 1
  store i32 %inc183, ptr %pending182, align 8
  %idxprom184 = zext i32 %134 to i64
  %arrayidx185 = getelementptr inbounds i8, ptr %132, i64 %idxprom184
  store i8 %conv180, ptr %arrayidx185, align 1
  %135 = load ptr, ptr %s, align 8
  %gzhead186 = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 7
  %136 = load ptr, ptr %gzhead186, align 8
  %extra_len187 = getelementptr inbounds %struct.gz_header_s, ptr %136, i64 0, i32 5
  %137 = load i32, ptr %extra_len187, align 8
  %shr188 = lshr i32 %137, 8
  %conv190 = trunc i32 %shr188 to i8
  %138 = load ptr, ptr %s, align 8
  %pending_buf191 = getelementptr inbounds %struct.internal_state, ptr %138, i64 0, i32 2
  %139 = load ptr, ptr %pending_buf191, align 8
  %pending192 = getelementptr inbounds %struct.internal_state, ptr %138, i64 0, i32 5
  %140 = load i32, ptr %pending192, align 8
  %inc193 = add i32 %140, 1
  store i32 %inc193, ptr %pending192, align 8
  %idxprom194 = zext i32 %140 to i64
  %arrayidx195 = getelementptr inbounds i8, ptr %139, i64 %idxprom194
  store i8 %conv190, ptr %arrayidx195, align 1
  br label %if.end196

if.end196:                                        ; preds = %if.then177, %cond.end157
  %141 = load ptr, ptr %s, align 8
  %gzhead197 = getelementptr inbounds %struct.internal_state, ptr %141, i64 0, i32 7
  %142 = load ptr, ptr %gzhead197, align 8
  %hcrc198 = getelementptr inbounds %struct.gz_header_s, ptr %142, i64 0, i32 11
  %143 = load i32, ptr %hcrc198, align 4
  %tobool199.not = icmp eq i32 %143, 0
  br i1 %tobool199.not, label %if.end206, label %if.then200

if.then200:                                       ; preds = %if.end196
  %144 = load ptr, ptr %strm.addr, align 8
  %adler201 = getelementptr inbounds %struct.z_stream_s, ptr %144, i64 0, i32 12
  %145 = load i64, ptr %adler201, align 8
  %146 = load ptr, ptr %s, align 8
  %pending_buf202 = getelementptr inbounds %struct.internal_state, ptr %146, i64 0, i32 2
  %147 = load ptr, ptr %pending_buf202, align 8
  %pending203 = getelementptr inbounds %struct.internal_state, ptr %146, i64 0, i32 5
  %148 = load i32, ptr %pending203, align 8
  %call204 = call i64 @crc32(i64 noundef %145, ptr noundef %147, i32 noundef %148) #5
  %149 = load ptr, ptr %strm.addr, align 8
  %adler205 = getelementptr inbounds %struct.z_stream_s, ptr %149, i64 0, i32 12
  store i64 %call204, ptr %adler205, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.then200, %if.end196
  %150 = load ptr, ptr %s, align 8
  %gzindex = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 8
  store i32 0, ptr %gzindex, align 8
  %status207 = getelementptr inbounds %struct.internal_state, ptr %150, i64 0, i32 1
  store i32 69, ptr %status207, align 8
  br label %if.end257

if.else209:                                       ; preds = %if.then25
  %151 = load ptr, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 12
  %152 = load i32, ptr %w_bits, align 8
  %sub = shl i32 %152, 12
  %shl211 = add i32 %sub, -30720
  store i32 %shl211, ptr %header, align 4
  %strategy212 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 34
  %153 = load i32, ptr %strategy212, align 8
  %cmp213 = icmp sgt i32 %153, 1
  br i1 %cmp213, label %if.end233, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %if.else209
  %154 = load ptr, ptr %s, align 8
  %level216 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 33
  %155 = load i32, ptr %level216, align 4
  %cmp217 = icmp slt i32 %155, 2
  br i1 %cmp217, label %if.end233, label %if.else220

if.else220:                                       ; preds = %lor.lhs.false215
  %156 = load ptr, ptr %s, align 8
  %level221 = getelementptr inbounds %struct.internal_state, ptr %156, i64 0, i32 33
  %157 = load i32, ptr %level221, align 4
  %cmp222 = icmp slt i32 %157, 6
  br i1 %cmp222, label %if.end233, label %if.else225

if.else225:                                       ; preds = %if.else220
  %158 = load ptr, ptr %s, align 8
  %level226 = getelementptr inbounds %struct.internal_state, ptr %158, i64 0, i32 33
  %159 = load i32, ptr %level226, align 4
  %cmp227 = icmp eq i32 %159, 6
  %. = select i1 %cmp227, i32 128, i32 192
  br label %if.end233

if.end233:                                        ; preds = %if.else225, %if.else220, %if.else209, %lor.lhs.false215
  %storemerge68 = phi i32 [ 0, %lor.lhs.false215 ], [ 0, %if.else209 ], [ %., %if.else225 ], [ 64, %if.else220 ]
  %160 = load i32, ptr %header, align 4
  %or = or i32 %160, %storemerge68
  store i32 %or, ptr %header, align 4
  %161 = load ptr, ptr %s, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 27
  %162 = load i32, ptr %strstart, align 4
  %cmp235.not = icmp eq i32 %162, 0
  br i1 %cmp235.not, label %if.end239, label %if.then237

if.then237:                                       ; preds = %if.end233
  %163 = load i32, ptr %header, align 4
  %or238 = or i32 %163, 32
  store i32 %or238, ptr %header, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %if.end233
  %164 = load i32, ptr %header, align 4
  %rem = urem i32 %164, 31
  %sub240 = xor i32 %rem, 31
  %add241 = add i32 %164, %sub240
  store i32 %add241, ptr %header, align 4
  %165 = load ptr, ptr %s, align 8
  %status242 = getelementptr inbounds %struct.internal_state, ptr %165, i64 0, i32 1
  store i32 113, ptr %status242, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.addr.i)
  store ptr %165, ptr %s.addr.i, align 8
  store i32 %add241, ptr %b.addr.i, align 4
  %shr.i = lshr i32 %add241, 8
  %conv.i = trunc i32 %shr.i to i8
  %pending_buf.i = getelementptr inbounds %struct.internal_state, ptr %165, i64 0, i32 2
  %166 = load ptr, ptr %pending_buf.i, align 8
  %pending.i = getelementptr inbounds %struct.internal_state, ptr %165, i64 0, i32 5
  %167 = load i32, ptr %pending.i, align 8
  %inc.i = add i32 %167, 1
  store i32 %inc.i, ptr %pending.i, align 8
  %idxprom.i = zext i32 %167 to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %166, i64 %idxprom.i
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %168 = load i32, ptr %b.addr.i, align 4
  %conv1.i = trunc i32 %168 to i8
  %169 = load ptr, ptr %s.addr.i, align 8
  %pending_buf2.i = getelementptr inbounds %struct.internal_state, ptr %169, i64 0, i32 2
  %170 = load ptr, ptr %pending_buf2.i, align 8
  %pending3.i = getelementptr inbounds %struct.internal_state, ptr %169, i64 0, i32 5
  %171 = load i32, ptr %pending3.i, align 8
  %inc4.i = add i32 %171, 1
  store i32 %inc4.i, ptr %pending3.i, align 8
  %idxprom5.i = zext i32 %171 to i64
  %arrayidx6.i = getelementptr inbounds i8, ptr %170, i64 %idxprom5.i
  store i8 %conv1.i, ptr %arrayidx6.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.addr.i)
  %172 = load ptr, ptr %s, align 8
  %strstart243 = getelementptr inbounds %struct.internal_state, ptr %172, i64 0, i32 27
  %173 = load i32, ptr %strstart243, align 4
  %cmp244.not = icmp eq i32 %173, 0
  br i1 %cmp244.not, label %if.end253, label %if.then246

if.then246:                                       ; preds = %if.end239
  %174 = load ptr, ptr %s, align 8
  %175 = load ptr, ptr %strm.addr, align 8
  %adler247 = getelementptr inbounds %struct.z_stream_s, ptr %175, i64 0, i32 12
  %176 = load i64, ptr %adler247, align 8
  %shr248 = lshr i64 %176, 16
  %conv249 = trunc i64 %shr248 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.addr.i2)
  store ptr %174, ptr %s.addr.i1, align 8
  store i32 %conv249, ptr %b.addr.i2, align 4
  %shr.i369 = lshr i64 %176, 24
  %conv.i4 = trunc i64 %shr.i369 to i8
  %pending_buf.i5 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 2
  %177 = load ptr, ptr %pending_buf.i5, align 8
  %pending.i6 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 5
  %178 = load i32, ptr %pending.i6, align 8
  %inc.i7 = add i32 %178, 1
  store i32 %inc.i7, ptr %pending.i6, align 8
  %idxprom.i8 = zext i32 %178 to i64
  %arrayidx.i9 = getelementptr inbounds i8, ptr %177, i64 %idxprom.i8
  store i8 %conv.i4, ptr %arrayidx.i9, align 1
  %179 = load i32, ptr %b.addr.i2, align 4
  %conv1.i11 = trunc i32 %179 to i8
  %180 = load ptr, ptr %s.addr.i1, align 8
  %pending_buf2.i12 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 2
  %181 = load ptr, ptr %pending_buf2.i12, align 8
  %pending3.i13 = getelementptr inbounds %struct.internal_state, ptr %180, i64 0, i32 5
  %182 = load i32, ptr %pending3.i13, align 8
  %inc4.i14 = add i32 %182, 1
  store i32 %inc4.i14, ptr %pending3.i13, align 8
  %idxprom5.i15 = zext i32 %182 to i64
  %arrayidx6.i16 = getelementptr inbounds i8, ptr %181, i64 %idxprom5.i15
  store i8 %conv1.i11, ptr %arrayidx6.i16, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.addr.i2)
  %183 = load ptr, ptr %s, align 8
  %184 = load ptr, ptr %strm.addr, align 8
  %adler250 = getelementptr inbounds %struct.z_stream_s, ptr %184, i64 0, i32 12
  %185 = load i64, ptr %adler250, align 8
  %186 = trunc i64 %185 to i32
  %conv252 = and i32 %186, 65535
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.addr.i18)
  store ptr %183, ptr %s.addr.i17, align 8
  store i32 %conv252, ptr %b.addr.i18, align 4
  %shr.i1970 = lshr i64 %185, 8
  %conv.i20 = trunc i64 %shr.i1970 to i8
  %pending_buf.i21 = getelementptr inbounds %struct.internal_state, ptr %183, i64 0, i32 2
  %187 = load ptr, ptr %pending_buf.i21, align 8
  %pending.i22 = getelementptr inbounds %struct.internal_state, ptr %183, i64 0, i32 5
  %188 = load i32, ptr %pending.i22, align 8
  %inc.i23 = add i32 %188, 1
  store i32 %inc.i23, ptr %pending.i22, align 8
  %idxprom.i24 = zext i32 %188 to i64
  %arrayidx.i25 = getelementptr inbounds i8, ptr %187, i64 %idxprom.i24
  store i8 %conv.i20, ptr %arrayidx.i25, align 1
  %189 = load i32, ptr %b.addr.i18, align 4
  %conv1.i27 = trunc i32 %189 to i8
  %190 = load ptr, ptr %s.addr.i17, align 8
  %pending_buf2.i28 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 2
  %191 = load ptr, ptr %pending_buf2.i28, align 8
  %pending3.i29 = getelementptr inbounds %struct.internal_state, ptr %190, i64 0, i32 5
  %192 = load i32, ptr %pending3.i29, align 8
  %inc4.i30 = add i32 %192, 1
  store i32 %inc4.i30, ptr %pending3.i29, align 8
  %idxprom5.i31 = zext i32 %192 to i64
  %arrayidx6.i32 = getelementptr inbounds i8, ptr %191, i64 %idxprom5.i31
  store i8 %conv1.i27, ptr %arrayidx6.i32, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.addr.i18)
  br label %if.end253

if.end253:                                        ; preds = %if.then246, %if.end239
  %call254 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %193 = load ptr, ptr %strm.addr, align 8
  %adler255 = getelementptr inbounds %struct.z_stream_s, ptr %193, i64 0, i32 12
  store i64 %call254, ptr %adler255, align 8
  br label %if.end257

if.end257:                                        ; preds = %if.end253, %if.end206, %cond.end, %if.end20
  %194 = load ptr, ptr %s, align 8
  %status258 = getelementptr inbounds %struct.internal_state, ptr %194, i64 0, i32 1
  %195 = load i32, ptr %status258, align 8
  %cmp259 = icmp eq i32 %195, 69
  br i1 %cmp259, label %if.then261, label %if.end344

if.then261:                                       ; preds = %if.end257
  %196 = load ptr, ptr %s, align 8
  %gzhead262 = getelementptr inbounds %struct.internal_state, ptr %196, i64 0, i32 7
  %197 = load ptr, ptr %gzhead262, align 8
  %extra263 = getelementptr inbounds %struct.gz_header_s, ptr %197, i64 0, i32 4
  %198 = load ptr, ptr %extra263, align 8
  %cmp264.not = icmp eq ptr %198, null
  br i1 %cmp264.not, label %if.else341, label %if.then266

if.then266:                                       ; preds = %if.then261
  %199 = load ptr, ptr %s, align 8
  %pending267 = getelementptr inbounds %struct.internal_state, ptr %199, i64 0, i32 5
  %200 = load i32, ptr %pending267, align 8
  store i32 %200, ptr %beg, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end302, %if.then266
  %201 = load ptr, ptr %s, align 8
  %gzindex268 = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 8
  %202 = load i32, ptr %gzindex268, align 8
  %gzhead269 = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 7
  %203 = load ptr, ptr %gzhead269, align 8
  %extra_len270 = getelementptr inbounds %struct.gz_header_s, ptr %203, i64 0, i32 5
  %204 = load i32, ptr %extra_len270, align 8
  %and271 = and i32 %204, 65535
  %cmp272 = icmp ult i32 %202, %and271
  br i1 %cmp272, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %205 = load ptr, ptr %s, align 8
  %pending274 = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 5
  %206 = load i32, ptr %pending274, align 8
  %conv275 = zext i32 %206 to i64
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 3
  %207 = load i64, ptr %pending_buf_size, align 8
  %cmp276 = icmp eq i64 %207, %conv275
  br i1 %cmp276, label %if.then278, label %if.end302

if.then278:                                       ; preds = %while.body
  %208 = load ptr, ptr %s, align 8
  %gzhead279 = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 7
  %209 = load ptr, ptr %gzhead279, align 8
  %hcrc280 = getelementptr inbounds %struct.gz_header_s, ptr %209, i64 0, i32 11
  %210 = load i32, ptr %hcrc280, align 4
  %tobool281.not = icmp eq i32 %210, 0
  br i1 %tobool281.not, label %if.end293, label %land.lhs.true282

land.lhs.true282:                                 ; preds = %if.then278
  %211 = load ptr, ptr %s, align 8
  %pending283 = getelementptr inbounds %struct.internal_state, ptr %211, i64 0, i32 5
  %212 = load i32, ptr %pending283, align 8
  %213 = load i32, ptr %beg, align 4
  %cmp284 = icmp ugt i32 %212, %213
  br i1 %cmp284, label %if.then286, label %if.end293

if.then286:                                       ; preds = %land.lhs.true282
  %214 = load ptr, ptr %strm.addr, align 8
  %adler287 = getelementptr inbounds %struct.z_stream_s, ptr %214, i64 0, i32 12
  %215 = load i64, ptr %adler287, align 8
  %216 = load ptr, ptr %s, align 8
  %pending_buf288 = getelementptr inbounds %struct.internal_state, ptr %216, i64 0, i32 2
  %217 = load ptr, ptr %pending_buf288, align 8
  %218 = load i32, ptr %beg, align 4
  %idx.ext = zext i32 %218 to i64
  %add.ptr = getelementptr inbounds i8, ptr %217, i64 %idx.ext
  %pending289 = getelementptr inbounds %struct.internal_state, ptr %216, i64 0, i32 5
  %219 = load i32, ptr %pending289, align 8
  %sub290 = sub i32 %219, %218
  %call291 = call i64 @crc32(i64 noundef %215, ptr noundef %add.ptr, i32 noundef %sub290) #5
  %220 = load ptr, ptr %strm.addr, align 8
  %adler292 = getelementptr inbounds %struct.z_stream_s, ptr %220, i64 0, i32 12
  store i64 %call291, ptr %adler292, align 8
  br label %if.end293

if.end293:                                        ; preds = %if.then286, %land.lhs.true282, %if.then278
  %221 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %221)
  %222 = load ptr, ptr %s, align 8
  %pending294 = getelementptr inbounds %struct.internal_state, ptr %222, i64 0, i32 5
  %223 = load i32, ptr %pending294, align 8
  store i32 %223, ptr %beg, align 4
  %conv296 = zext i32 %223 to i64
  %pending_buf_size297 = getelementptr inbounds %struct.internal_state, ptr %222, i64 0, i32 3
  %224 = load i64, ptr %pending_buf_size297, align 8
  %cmp298 = icmp eq i64 %224, %conv296
  br i1 %cmp298, label %while.end, label %if.end302

if.end302:                                        ; preds = %if.end293, %while.body
  %225 = load ptr, ptr %s, align 8
  %gzhead303 = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 7
  %226 = load ptr, ptr %gzhead303, align 8
  %extra304 = getelementptr inbounds %struct.gz_header_s, ptr %226, i64 0, i32 4
  %227 = load ptr, ptr %extra304, align 8
  %gzindex305 = getelementptr inbounds %struct.internal_state, ptr %225, i64 0, i32 8
  %228 = load i32, ptr %gzindex305, align 8
  %idxprom306 = zext i32 %228 to i64
  %arrayidx307 = getelementptr inbounds i8, ptr %227, i64 %idxprom306
  %229 = load i8, ptr %arrayidx307, align 1
  %230 = load ptr, ptr %s, align 8
  %pending_buf308 = getelementptr inbounds %struct.internal_state, ptr %230, i64 0, i32 2
  %231 = load ptr, ptr %pending_buf308, align 8
  %pending309 = getelementptr inbounds %struct.internal_state, ptr %230, i64 0, i32 5
  %232 = load i32, ptr %pending309, align 8
  %inc310 = add i32 %232, 1
  store i32 %inc310, ptr %pending309, align 8
  %idxprom311 = zext i32 %232 to i64
  %arrayidx312 = getelementptr inbounds i8, ptr %231, i64 %idxprom311
  store i8 %229, ptr %arrayidx312, align 1
  %233 = load ptr, ptr %s, align 8
  %gzindex313 = getelementptr inbounds %struct.internal_state, ptr %233, i64 0, i32 8
  %234 = load i32, ptr %gzindex313, align 8
  %inc314 = add i32 %234, 1
  store i32 %inc314, ptr %gzindex313, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.end293, %while.cond
  %235 = load ptr, ptr %s, align 8
  %gzhead315 = getelementptr inbounds %struct.internal_state, ptr %235, i64 0, i32 7
  %236 = load ptr, ptr %gzhead315, align 8
  %hcrc316 = getelementptr inbounds %struct.gz_header_s, ptr %236, i64 0, i32 11
  %237 = load i32, ptr %hcrc316, align 4
  %tobool317.not = icmp eq i32 %237, 0
  br i1 %tobool317.not, label %if.end331, label %land.lhs.true318

land.lhs.true318:                                 ; preds = %while.end
  %238 = load ptr, ptr %s, align 8
  %pending319 = getelementptr inbounds %struct.internal_state, ptr %238, i64 0, i32 5
  %239 = load i32, ptr %pending319, align 8
  %240 = load i32, ptr %beg, align 4
  %cmp320 = icmp ugt i32 %239, %240
  br i1 %cmp320, label %if.then322, label %if.end331

if.then322:                                       ; preds = %land.lhs.true318
  %241 = load ptr, ptr %strm.addr, align 8
  %adler323 = getelementptr inbounds %struct.z_stream_s, ptr %241, i64 0, i32 12
  %242 = load i64, ptr %adler323, align 8
  %243 = load ptr, ptr %s, align 8
  %pending_buf324 = getelementptr inbounds %struct.internal_state, ptr %243, i64 0, i32 2
  %244 = load ptr, ptr %pending_buf324, align 8
  %245 = load i32, ptr %beg, align 4
  %idx.ext325 = zext i32 %245 to i64
  %add.ptr326 = getelementptr inbounds i8, ptr %244, i64 %idx.ext325
  %pending327 = getelementptr inbounds %struct.internal_state, ptr %243, i64 0, i32 5
  %246 = load i32, ptr %pending327, align 8
  %sub328 = sub i32 %246, %245
  %call329 = call i64 @crc32(i64 noundef %242, ptr noundef %add.ptr326, i32 noundef %sub328) #5
  %247 = load ptr, ptr %strm.addr, align 8
  %adler330 = getelementptr inbounds %struct.z_stream_s, ptr %247, i64 0, i32 12
  store i64 %call329, ptr %adler330, align 8
  br label %if.end331

if.end331:                                        ; preds = %if.then322, %land.lhs.true318, %while.end
  %248 = load ptr, ptr %s, align 8
  %gzindex332 = getelementptr inbounds %struct.internal_state, ptr %248, i64 0, i32 8
  %249 = load i32, ptr %gzindex332, align 8
  %gzhead333 = getelementptr inbounds %struct.internal_state, ptr %248, i64 0, i32 7
  %250 = load ptr, ptr %gzhead333, align 8
  %extra_len334 = getelementptr inbounds %struct.gz_header_s, ptr %250, i64 0, i32 5
  %251 = load i32, ptr %extra_len334, align 8
  %cmp335 = icmp eq i32 %249, %251
  br i1 %cmp335, label %if.then337, label %if.end344

if.then337:                                       ; preds = %if.end331
  %252 = load ptr, ptr %s, align 8
  %gzindex338 = getelementptr inbounds %struct.internal_state, ptr %252, i64 0, i32 8
  store i32 0, ptr %gzindex338, align 8
  %status339 = getelementptr inbounds %struct.internal_state, ptr %252, i64 0, i32 1
  store i32 73, ptr %status339, align 8
  br label %if.end344

if.else341:                                       ; preds = %if.then261
  %253 = load ptr, ptr %s, align 8
  %status342 = getelementptr inbounds %struct.internal_state, ptr %253, i64 0, i32 1
  store i32 73, ptr %status342, align 8
  br label %if.end344

if.end344:                                        ; preds = %if.else341, %if.then337, %if.end331, %if.end257
  %254 = load ptr, ptr %s, align 8
  %status345 = getelementptr inbounds %struct.internal_state, ptr %254, i64 0, i32 1
  %255 = load i32, ptr %status345, align 8
  %cmp346 = icmp eq i32 %255, 73
  br i1 %cmp346, label %if.then348, label %if.end429

if.then348:                                       ; preds = %if.end344
  %256 = load ptr, ptr %s, align 8
  %gzhead349 = getelementptr inbounds %struct.internal_state, ptr %256, i64 0, i32 7
  %257 = load ptr, ptr %gzhead349, align 8
  %name350 = getelementptr inbounds %struct.gz_header_s, ptr %257, i64 0, i32 7
  %258 = load ptr, ptr %name350, align 8
  %cmp351.not = icmp eq ptr %258, null
  br i1 %cmp351.not, label %if.else426, label %if.then353

if.then353:                                       ; preds = %if.then348
  %259 = load ptr, ptr %s, align 8
  %pending355 = getelementptr inbounds %struct.internal_state, ptr %259, i64 0, i32 5
  %260 = load i32, ptr %pending355, align 8
  store i32 %260, ptr %beg354, align 4
  br label %do.body

do.body:                                          ; preds = %if.end387, %if.then353
  %261 = load ptr, ptr %s, align 8
  %pending356 = getelementptr inbounds %struct.internal_state, ptr %261, i64 0, i32 5
  %262 = load i32, ptr %pending356, align 8
  %conv357 = zext i32 %262 to i64
  %pending_buf_size358 = getelementptr inbounds %struct.internal_state, ptr %261, i64 0, i32 3
  %263 = load i64, ptr %pending_buf_size358, align 8
  %cmp359 = icmp eq i64 %263, %conv357
  br i1 %cmp359, label %if.then361, label %if.end387

if.then361:                                       ; preds = %do.body
  %264 = load ptr, ptr %s, align 8
  %gzhead362 = getelementptr inbounds %struct.internal_state, ptr %264, i64 0, i32 7
  %265 = load ptr, ptr %gzhead362, align 8
  %hcrc363 = getelementptr inbounds %struct.gz_header_s, ptr %265, i64 0, i32 11
  %266 = load i32, ptr %hcrc363, align 4
  %tobool364.not = icmp eq i32 %266, 0
  br i1 %tobool364.not, label %if.end378, label %land.lhs.true365

land.lhs.true365:                                 ; preds = %if.then361
  %267 = load ptr, ptr %s, align 8
  %pending366 = getelementptr inbounds %struct.internal_state, ptr %267, i64 0, i32 5
  %268 = load i32, ptr %pending366, align 8
  %269 = load i32, ptr %beg354, align 4
  %cmp367 = icmp ugt i32 %268, %269
  br i1 %cmp367, label %if.then369, label %if.end378

if.then369:                                       ; preds = %land.lhs.true365
  %270 = load ptr, ptr %strm.addr, align 8
  %adler370 = getelementptr inbounds %struct.z_stream_s, ptr %270, i64 0, i32 12
  %271 = load i64, ptr %adler370, align 8
  %272 = load ptr, ptr %s, align 8
  %pending_buf371 = getelementptr inbounds %struct.internal_state, ptr %272, i64 0, i32 2
  %273 = load ptr, ptr %pending_buf371, align 8
  %274 = load i32, ptr %beg354, align 4
  %idx.ext372 = zext i32 %274 to i64
  %add.ptr373 = getelementptr inbounds i8, ptr %273, i64 %idx.ext372
  %pending374 = getelementptr inbounds %struct.internal_state, ptr %272, i64 0, i32 5
  %275 = load i32, ptr %pending374, align 8
  %sub375 = sub i32 %275, %274
  %call376 = call i64 @crc32(i64 noundef %271, ptr noundef %add.ptr373, i32 noundef %sub375) #5
  %276 = load ptr, ptr %strm.addr, align 8
  %adler377 = getelementptr inbounds %struct.z_stream_s, ptr %276, i64 0, i32 12
  store i64 %call376, ptr %adler377, align 8
  br label %if.end378

if.end378:                                        ; preds = %if.then369, %land.lhs.true365, %if.then361
  %277 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %277)
  %278 = load ptr, ptr %s, align 8
  %pending379 = getelementptr inbounds %struct.internal_state, ptr %278, i64 0, i32 5
  %279 = load i32, ptr %pending379, align 8
  store i32 %279, ptr %beg354, align 4
  %conv381 = zext i32 %279 to i64
  %pending_buf_size382 = getelementptr inbounds %struct.internal_state, ptr %278, i64 0, i32 3
  %280 = load i64, ptr %pending_buf_size382, align 8
  %cmp383 = icmp eq i64 %280, %conv381
  br i1 %cmp383, label %if.then385, label %if.end387

if.then385:                                       ; preds = %if.end378
  store i32 1, ptr %val, align 4
  br label %do.end

if.end387:                                        ; preds = %if.end378, %do.body
  %281 = load ptr, ptr %s, align 8
  %gzhead388 = getelementptr inbounds %struct.internal_state, ptr %281, i64 0, i32 7
  %282 = load ptr, ptr %gzhead388, align 8
  %name389 = getelementptr inbounds %struct.gz_header_s, ptr %282, i64 0, i32 7
  %283 = load ptr, ptr %name389, align 8
  %gzindex390 = getelementptr inbounds %struct.internal_state, ptr %281, i64 0, i32 8
  %284 = load i32, ptr %gzindex390, align 8
  %inc391 = add i32 %284, 1
  store i32 %inc391, ptr %gzindex390, align 8
  %idxprom392 = zext i32 %284 to i64
  %arrayidx393 = getelementptr inbounds i8, ptr %283, i64 %idxprom392
  %285 = load i8, ptr %arrayidx393, align 1
  %conv394 = zext i8 %285 to i32
  store i32 %conv394, ptr %val, align 4
  %286 = load ptr, ptr %s, align 8
  %pending_buf396 = getelementptr inbounds %struct.internal_state, ptr %286, i64 0, i32 2
  %287 = load ptr, ptr %pending_buf396, align 8
  %pending397 = getelementptr inbounds %struct.internal_state, ptr %286, i64 0, i32 5
  %288 = load i32, ptr %pending397, align 8
  %inc398 = add i32 %288, 1
  store i32 %inc398, ptr %pending397, align 8
  %idxprom399 = zext i32 %288 to i64
  %arrayidx400 = getelementptr inbounds i8, ptr %287, i64 %idxprom399
  store i8 %285, ptr %arrayidx400, align 1
  %289 = load i32, ptr %val, align 4
  %cmp401.not = icmp eq i32 %289, 0
  br i1 %cmp401.not, label %do.end, label %do.body, !llvm.loop !9

do.end:                                           ; preds = %if.end387, %if.then385
  %290 = load ptr, ptr %s, align 8
  %gzhead403 = getelementptr inbounds %struct.internal_state, ptr %290, i64 0, i32 7
  %291 = load ptr, ptr %gzhead403, align 8
  %hcrc404 = getelementptr inbounds %struct.gz_header_s, ptr %291, i64 0, i32 11
  %292 = load i32, ptr %hcrc404, align 4
  %tobool405.not = icmp eq i32 %292, 0
  br i1 %tobool405.not, label %if.end419, label %land.lhs.true406

land.lhs.true406:                                 ; preds = %do.end
  %293 = load ptr, ptr %s, align 8
  %pending407 = getelementptr inbounds %struct.internal_state, ptr %293, i64 0, i32 5
  %294 = load i32, ptr %pending407, align 8
  %295 = load i32, ptr %beg354, align 4
  %cmp408 = icmp ugt i32 %294, %295
  br i1 %cmp408, label %if.then410, label %if.end419

if.then410:                                       ; preds = %land.lhs.true406
  %296 = load ptr, ptr %strm.addr, align 8
  %adler411 = getelementptr inbounds %struct.z_stream_s, ptr %296, i64 0, i32 12
  %297 = load i64, ptr %adler411, align 8
  %298 = load ptr, ptr %s, align 8
  %pending_buf412 = getelementptr inbounds %struct.internal_state, ptr %298, i64 0, i32 2
  %299 = load ptr, ptr %pending_buf412, align 8
  %300 = load i32, ptr %beg354, align 4
  %idx.ext413 = zext i32 %300 to i64
  %add.ptr414 = getelementptr inbounds i8, ptr %299, i64 %idx.ext413
  %pending415 = getelementptr inbounds %struct.internal_state, ptr %298, i64 0, i32 5
  %301 = load i32, ptr %pending415, align 8
  %sub416 = sub i32 %301, %300
  %call417 = call i64 @crc32(i64 noundef %297, ptr noundef %add.ptr414, i32 noundef %sub416) #5
  %302 = load ptr, ptr %strm.addr, align 8
  %adler418 = getelementptr inbounds %struct.z_stream_s, ptr %302, i64 0, i32 12
  store i64 %call417, ptr %adler418, align 8
  br label %if.end419

if.end419:                                        ; preds = %if.then410, %land.lhs.true406, %do.end
  %303 = load i32, ptr %val, align 4
  %cmp420 = icmp eq i32 %303, 0
  br i1 %cmp420, label %if.then422, label %if.end429

if.then422:                                       ; preds = %if.end419
  %304 = load ptr, ptr %s, align 8
  %gzindex423 = getelementptr inbounds %struct.internal_state, ptr %304, i64 0, i32 8
  store i32 0, ptr %gzindex423, align 8
  %status424 = getelementptr inbounds %struct.internal_state, ptr %304, i64 0, i32 1
  store i32 91, ptr %status424, align 8
  br label %if.end429

if.else426:                                       ; preds = %if.then348
  %305 = load ptr, ptr %s, align 8
  %status427 = getelementptr inbounds %struct.internal_state, ptr %305, i64 0, i32 1
  store i32 91, ptr %status427, align 8
  br label %if.end429

if.end429:                                        ; preds = %if.else426, %if.then422, %if.end419, %if.end344
  %306 = load ptr, ptr %s, align 8
  %status430 = getelementptr inbounds %struct.internal_state, ptr %306, i64 0, i32 1
  %307 = load i32, ptr %status430, align 8
  %cmp431 = icmp eq i32 %307, 91
  br i1 %cmp431, label %if.then433, label %if.end517

if.then433:                                       ; preds = %if.end429
  %308 = load ptr, ptr %s, align 8
  %gzhead434 = getelementptr inbounds %struct.internal_state, ptr %308, i64 0, i32 7
  %309 = load ptr, ptr %gzhead434, align 8
  %comment435 = getelementptr inbounds %struct.gz_header_s, ptr %309, i64 0, i32 9
  %310 = load ptr, ptr %comment435, align 8
  %cmp436.not = icmp eq ptr %310, null
  br i1 %cmp436.not, label %if.else514, label %if.then438

if.then438:                                       ; preds = %if.then433
  %311 = load ptr, ptr %s, align 8
  %pending440 = getelementptr inbounds %struct.internal_state, ptr %311, i64 0, i32 5
  %312 = load i32, ptr %pending440, align 8
  store i32 %312, ptr %beg439, align 4
  br label %do.body442

do.body442:                                       ; preds = %if.end474, %if.then438
  %313 = load ptr, ptr %s, align 8
  %pending443 = getelementptr inbounds %struct.internal_state, ptr %313, i64 0, i32 5
  %314 = load i32, ptr %pending443, align 8
  %conv444 = zext i32 %314 to i64
  %pending_buf_size445 = getelementptr inbounds %struct.internal_state, ptr %313, i64 0, i32 3
  %315 = load i64, ptr %pending_buf_size445, align 8
  %cmp446 = icmp eq i64 %315, %conv444
  br i1 %cmp446, label %if.then448, label %if.end474

if.then448:                                       ; preds = %do.body442
  %316 = load ptr, ptr %s, align 8
  %gzhead449 = getelementptr inbounds %struct.internal_state, ptr %316, i64 0, i32 7
  %317 = load ptr, ptr %gzhead449, align 8
  %hcrc450 = getelementptr inbounds %struct.gz_header_s, ptr %317, i64 0, i32 11
  %318 = load i32, ptr %hcrc450, align 4
  %tobool451.not = icmp eq i32 %318, 0
  br i1 %tobool451.not, label %if.end465, label %land.lhs.true452

land.lhs.true452:                                 ; preds = %if.then448
  %319 = load ptr, ptr %s, align 8
  %pending453 = getelementptr inbounds %struct.internal_state, ptr %319, i64 0, i32 5
  %320 = load i32, ptr %pending453, align 8
  %321 = load i32, ptr %beg439, align 4
  %cmp454 = icmp ugt i32 %320, %321
  br i1 %cmp454, label %if.then456, label %if.end465

if.then456:                                       ; preds = %land.lhs.true452
  %322 = load ptr, ptr %strm.addr, align 8
  %adler457 = getelementptr inbounds %struct.z_stream_s, ptr %322, i64 0, i32 12
  %323 = load i64, ptr %adler457, align 8
  %324 = load ptr, ptr %s, align 8
  %pending_buf458 = getelementptr inbounds %struct.internal_state, ptr %324, i64 0, i32 2
  %325 = load ptr, ptr %pending_buf458, align 8
  %326 = load i32, ptr %beg439, align 4
  %idx.ext459 = zext i32 %326 to i64
  %add.ptr460 = getelementptr inbounds i8, ptr %325, i64 %idx.ext459
  %pending461 = getelementptr inbounds %struct.internal_state, ptr %324, i64 0, i32 5
  %327 = load i32, ptr %pending461, align 8
  %sub462 = sub i32 %327, %326
  %call463 = call i64 @crc32(i64 noundef %323, ptr noundef %add.ptr460, i32 noundef %sub462) #5
  %328 = load ptr, ptr %strm.addr, align 8
  %adler464 = getelementptr inbounds %struct.z_stream_s, ptr %328, i64 0, i32 12
  store i64 %call463, ptr %adler464, align 8
  br label %if.end465

if.end465:                                        ; preds = %if.then456, %land.lhs.true452, %if.then448
  %329 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %329)
  %330 = load ptr, ptr %s, align 8
  %pending466 = getelementptr inbounds %struct.internal_state, ptr %330, i64 0, i32 5
  %331 = load i32, ptr %pending466, align 8
  store i32 %331, ptr %beg439, align 4
  %conv468 = zext i32 %331 to i64
  %pending_buf_size469 = getelementptr inbounds %struct.internal_state, ptr %330, i64 0, i32 3
  %332 = load i64, ptr %pending_buf_size469, align 8
  %cmp470 = icmp eq i64 %332, %conv468
  br i1 %cmp470, label %if.then472, label %if.end474

if.then472:                                       ; preds = %if.end465
  store i32 1, ptr %val441, align 4
  br label %do.end491

if.end474:                                        ; preds = %if.end465, %do.body442
  %333 = load ptr, ptr %s, align 8
  %gzhead475 = getelementptr inbounds %struct.internal_state, ptr %333, i64 0, i32 7
  %334 = load ptr, ptr %gzhead475, align 8
  %comment476 = getelementptr inbounds %struct.gz_header_s, ptr %334, i64 0, i32 9
  %335 = load ptr, ptr %comment476, align 8
  %gzindex477 = getelementptr inbounds %struct.internal_state, ptr %333, i64 0, i32 8
  %336 = load i32, ptr %gzindex477, align 8
  %inc478 = add i32 %336, 1
  store i32 %inc478, ptr %gzindex477, align 8
  %idxprom479 = zext i32 %336 to i64
  %arrayidx480 = getelementptr inbounds i8, ptr %335, i64 %idxprom479
  %337 = load i8, ptr %arrayidx480, align 1
  %conv481 = zext i8 %337 to i32
  store i32 %conv481, ptr %val441, align 4
  %338 = load ptr, ptr %s, align 8
  %pending_buf483 = getelementptr inbounds %struct.internal_state, ptr %338, i64 0, i32 2
  %339 = load ptr, ptr %pending_buf483, align 8
  %pending484 = getelementptr inbounds %struct.internal_state, ptr %338, i64 0, i32 5
  %340 = load i32, ptr %pending484, align 8
  %inc485 = add i32 %340, 1
  store i32 %inc485, ptr %pending484, align 8
  %idxprom486 = zext i32 %340 to i64
  %arrayidx487 = getelementptr inbounds i8, ptr %339, i64 %idxprom486
  store i8 %337, ptr %arrayidx487, align 1
  %341 = load i32, ptr %val441, align 4
  %cmp489.not = icmp eq i32 %341, 0
  br i1 %cmp489.not, label %do.end491, label %do.body442, !llvm.loop !10

do.end491:                                        ; preds = %if.end474, %if.then472
  %342 = load ptr, ptr %s, align 8
  %gzhead492 = getelementptr inbounds %struct.internal_state, ptr %342, i64 0, i32 7
  %343 = load ptr, ptr %gzhead492, align 8
  %hcrc493 = getelementptr inbounds %struct.gz_header_s, ptr %343, i64 0, i32 11
  %344 = load i32, ptr %hcrc493, align 4
  %tobool494.not = icmp eq i32 %344, 0
  br i1 %tobool494.not, label %if.end508, label %land.lhs.true495

land.lhs.true495:                                 ; preds = %do.end491
  %345 = load ptr, ptr %s, align 8
  %pending496 = getelementptr inbounds %struct.internal_state, ptr %345, i64 0, i32 5
  %346 = load i32, ptr %pending496, align 8
  %347 = load i32, ptr %beg439, align 4
  %cmp497 = icmp ugt i32 %346, %347
  br i1 %cmp497, label %if.then499, label %if.end508

if.then499:                                       ; preds = %land.lhs.true495
  %348 = load ptr, ptr %strm.addr, align 8
  %adler500 = getelementptr inbounds %struct.z_stream_s, ptr %348, i64 0, i32 12
  %349 = load i64, ptr %adler500, align 8
  %350 = load ptr, ptr %s, align 8
  %pending_buf501 = getelementptr inbounds %struct.internal_state, ptr %350, i64 0, i32 2
  %351 = load ptr, ptr %pending_buf501, align 8
  %352 = load i32, ptr %beg439, align 4
  %idx.ext502 = zext i32 %352 to i64
  %add.ptr503 = getelementptr inbounds i8, ptr %351, i64 %idx.ext502
  %pending504 = getelementptr inbounds %struct.internal_state, ptr %350, i64 0, i32 5
  %353 = load i32, ptr %pending504, align 8
  %sub505 = sub i32 %353, %352
  %call506 = call i64 @crc32(i64 noundef %349, ptr noundef %add.ptr503, i32 noundef %sub505) #5
  %354 = load ptr, ptr %strm.addr, align 8
  %adler507 = getelementptr inbounds %struct.z_stream_s, ptr %354, i64 0, i32 12
  store i64 %call506, ptr %adler507, align 8
  br label %if.end508

if.end508:                                        ; preds = %if.then499, %land.lhs.true495, %do.end491
  %355 = load i32, ptr %val441, align 4
  %cmp509 = icmp eq i32 %355, 0
  br i1 %cmp509, label %if.then511, label %if.end517

if.then511:                                       ; preds = %if.end508
  %356 = load ptr, ptr %s, align 8
  %status512 = getelementptr inbounds %struct.internal_state, ptr %356, i64 0, i32 1
  store i32 103, ptr %status512, align 8
  br label %if.end517

if.else514:                                       ; preds = %if.then433
  %357 = load ptr, ptr %s, align 8
  %status515 = getelementptr inbounds %struct.internal_state, ptr %357, i64 0, i32 1
  store i32 103, ptr %status515, align 8
  br label %if.end517

if.end517:                                        ; preds = %if.else514, %if.then511, %if.end508, %if.end429
  %358 = load ptr, ptr %s, align 8
  %status518 = getelementptr inbounds %struct.internal_state, ptr %358, i64 0, i32 1
  %359 = load i32, ptr %status518, align 8
  %cmp519 = icmp eq i32 %359, 103
  br i1 %cmp519, label %if.then521, label %if.end565

if.then521:                                       ; preds = %if.end517
  %360 = load ptr, ptr %s, align 8
  %gzhead522 = getelementptr inbounds %struct.internal_state, ptr %360, i64 0, i32 7
  %361 = load ptr, ptr %gzhead522, align 8
  %hcrc523 = getelementptr inbounds %struct.gz_header_s, ptr %361, i64 0, i32 11
  %362 = load i32, ptr %hcrc523, align 4
  %tobool524.not = icmp eq i32 %362, 0
  br i1 %tobool524.not, label %if.else562, label %if.then525

if.then525:                                       ; preds = %if.then521
  %363 = load ptr, ptr %s, align 8
  %pending526 = getelementptr inbounds %struct.internal_state, ptr %363, i64 0, i32 5
  %364 = load i32, ptr %pending526, align 8
  %add527 = add i32 %364, 2
  %conv528 = zext i32 %add527 to i64
  %pending_buf_size529 = getelementptr inbounds %struct.internal_state, ptr %363, i64 0, i32 3
  %365 = load i64, ptr %pending_buf_size529, align 8
  %cmp530 = icmp ult i64 %365, %conv528
  br i1 %cmp530, label %if.then532, label %if.end533

if.then532:                                       ; preds = %if.then525
  %366 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %366)
  br label %if.end533

if.end533:                                        ; preds = %if.then532, %if.then525
  %367 = load ptr, ptr %s, align 8
  %pending534 = getelementptr inbounds %struct.internal_state, ptr %367, i64 0, i32 5
  %368 = load i32, ptr %pending534, align 8
  %add535 = add i32 %368, 2
  %conv536 = zext i32 %add535 to i64
  %pending_buf_size537 = getelementptr inbounds %struct.internal_state, ptr %367, i64 0, i32 3
  %369 = load i64, ptr %pending_buf_size537, align 8
  %cmp538.not = icmp ult i64 %369, %conv536
  br i1 %cmp538.not, label %if.end565, label %if.then540

if.then540:                                       ; preds = %if.end533
  %370 = load ptr, ptr %strm.addr, align 8
  %adler541 = getelementptr inbounds %struct.z_stream_s, ptr %370, i64 0, i32 12
  %371 = load i64, ptr %adler541, align 8
  %conv543 = trunc i64 %371 to i8
  %372 = load ptr, ptr %s, align 8
  %pending_buf544 = getelementptr inbounds %struct.internal_state, ptr %372, i64 0, i32 2
  %373 = load ptr, ptr %pending_buf544, align 8
  %pending545 = getelementptr inbounds %struct.internal_state, ptr %372, i64 0, i32 5
  %374 = load i32, ptr %pending545, align 8
  %inc546 = add i32 %374, 1
  store i32 %inc546, ptr %pending545, align 8
  %idxprom547 = zext i32 %374 to i64
  %arrayidx548 = getelementptr inbounds i8, ptr %373, i64 %idxprom547
  store i8 %conv543, ptr %arrayidx548, align 1
  %375 = load ptr, ptr %strm.addr, align 8
  %adler549 = getelementptr inbounds %struct.z_stream_s, ptr %375, i64 0, i32 12
  %376 = load i64, ptr %adler549, align 8
  %shr550 = lshr i64 %376, 8
  %conv552 = trunc i64 %shr550 to i8
  %377 = load ptr, ptr %s, align 8
  %pending_buf553 = getelementptr inbounds %struct.internal_state, ptr %377, i64 0, i32 2
  %378 = load ptr, ptr %pending_buf553, align 8
  %pending554 = getelementptr inbounds %struct.internal_state, ptr %377, i64 0, i32 5
  %379 = load i32, ptr %pending554, align 8
  %inc555 = add i32 %379, 1
  store i32 %inc555, ptr %pending554, align 8
  %idxprom556 = zext i32 %379 to i64
  %arrayidx557 = getelementptr inbounds i8, ptr %378, i64 %idxprom556
  store i8 %conv552, ptr %arrayidx557, align 1
  %call558 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #5
  %380 = load ptr, ptr %strm.addr, align 8
  %adler559 = getelementptr inbounds %struct.z_stream_s, ptr %380, i64 0, i32 12
  store i64 %call558, ptr %adler559, align 8
  %381 = load ptr, ptr %s, align 8
  %status560 = getelementptr inbounds %struct.internal_state, ptr %381, i64 0, i32 1
  store i32 113, ptr %status560, align 8
  br label %if.end565

if.else562:                                       ; preds = %if.then521
  %382 = load ptr, ptr %s, align 8
  %status563 = getelementptr inbounds %struct.internal_state, ptr %382, i64 0, i32 1
  store i32 113, ptr %status563, align 8
  br label %if.end565

if.end565:                                        ; preds = %if.else562, %if.then540, %if.end533, %if.end517
  %383 = load ptr, ptr %s, align 8
  %pending566 = getelementptr inbounds %struct.internal_state, ptr %383, i64 0, i32 5
  %384 = load i32, ptr %pending566, align 8
  %cmp567.not = icmp eq i32 %384, 0
  br i1 %cmp567.not, label %if.else576, label %if.then569

if.then569:                                       ; preds = %if.end565
  %385 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %385)
  %avail_out570 = getelementptr inbounds %struct.z_stream_s, ptr %385, i64 0, i32 4
  %386 = load i32, ptr %avail_out570, align 8
  %cmp571 = icmp eq i32 %386, 0
  br i1 %cmp571, label %if.then573, label %if.end589

if.then573:                                       ; preds = %if.then569
  %387 = load ptr, ptr %s, align 8
  %last_flush574 = getelementptr inbounds %struct.internal_state, ptr %387, i64 0, i32 10
  store i32 -1, ptr %last_flush574, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.else576:                                       ; preds = %if.end565
  %388 = load ptr, ptr %strm.addr, align 8
  %avail_in577 = getelementptr inbounds %struct.z_stream_s, ptr %388, i64 0, i32 1
  %389 = load i32, ptr %avail_in577, align 8
  %cmp578 = icmp eq i32 %389, 0
  br i1 %cmp578, label %land.lhs.true580, label %if.end589

land.lhs.true580:                                 ; preds = %if.else576
  %390 = load i32, ptr %flush.addr, align 4
  %391 = load i32, ptr %old_flush, align 4
  %cmp581.not = icmp sgt i32 %390, %391
  %392 = load i32, ptr %flush.addr, align 4
  %cmp584.not = icmp eq i32 %392, 4
  %or.cond73 = select i1 %cmp581.not, i1 true, i1 %cmp584.not
  br i1 %or.cond73, label %if.end589, label %if.then586

if.then586:                                       ; preds = %land.lhs.true580
  %393 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %394 = load ptr, ptr %strm.addr, align 8
  %msg587 = getelementptr inbounds %struct.z_stream_s, ptr %394, i64 0, i32 6
  store ptr %393, ptr %msg587, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end589:                                        ; preds = %if.else576, %land.lhs.true580, %if.then569
  %395 = load ptr, ptr %s, align 8
  %status590 = getelementptr inbounds %struct.internal_state, ptr %395, i64 0, i32 1
  %396 = load i32, ptr %status590, align 8
  %cmp591 = icmp eq i32 %396, 666
  br i1 %cmp591, label %land.lhs.true593, label %if.end599

land.lhs.true593:                                 ; preds = %if.end589
  %397 = load ptr, ptr %strm.addr, align 8
  %avail_in594 = getelementptr inbounds %struct.z_stream_s, ptr %397, i64 0, i32 1
  %398 = load i32, ptr %avail_in594, align 8
  %cmp595.not = icmp eq i32 %398, 0
  br i1 %cmp595.not, label %if.end599, label %if.then597

if.then597:                                       ; preds = %land.lhs.true593
  %399 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8
  %400 = load ptr, ptr %strm.addr, align 8
  %msg598 = getelementptr inbounds %struct.z_stream_s, ptr %400, i64 0, i32 6
  store ptr %399, ptr %msg598, align 8
  store i32 -5, ptr %retval, align 4
  br label %return

if.end599:                                        ; preds = %land.lhs.true593, %if.end589
  %401 = load ptr, ptr %strm.addr, align 8
  %avail_in600 = getelementptr inbounds %struct.z_stream_s, ptr %401, i64 0, i32 1
  %402 = load i32, ptr %avail_in600, align 8
  %cmp601.not = icmp eq i32 %402, 0
  br i1 %cmp601.not, label %lor.lhs.false603, label %if.then613

lor.lhs.false603:                                 ; preds = %if.end599
  %403 = load ptr, ptr %s, align 8
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %403, i64 0, i32 29
  %404 = load i32, ptr %lookahead, align 4
  %cmp604.not = icmp eq i32 %404, 0
  br i1 %cmp604.not, label %lor.lhs.false606, label %if.then613

lor.lhs.false606:                                 ; preds = %lor.lhs.false603
  %405 = load i32, ptr %flush.addr, align 4
  %cmp607.not = icmp eq i32 %405, 0
  br i1 %cmp607.not, label %if.end667, label %land.lhs.true609

land.lhs.true609:                                 ; preds = %lor.lhs.false606
  %406 = load ptr, ptr %s, align 8
  %status610 = getelementptr inbounds %struct.internal_state, ptr %406, i64 0, i32 1
  %407 = load i32, ptr %status610, align 8
  %cmp611.not = icmp eq i32 %407, 666
  br i1 %cmp611.not, label %if.end667, label %if.then613

if.then613:                                       ; preds = %land.lhs.true609, %lor.lhs.false603, %if.end599
  %408 = load ptr, ptr %s, align 8
  %level614 = getelementptr inbounds %struct.internal_state, ptr %408, i64 0, i32 33
  %409 = load i32, ptr %level614, align 4
  %idxprom615 = sext i32 %409 to i64
  %func = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %idxprom615, i32 4
  %410 = load ptr, ptr %func, align 8
  %411 = load i32, ptr %flush.addr, align 4
  %call617 = call i32 %410(ptr noundef %408, i32 noundef %411) #5
  store i32 %call617, ptr %bstate, align 4
  %cmp618 = icmp eq i32 %call617, 2
  %412 = load i32, ptr %bstate, align 4
  %cmp621 = icmp eq i32 %412, 3
  %or.cond74 = select i1 %cmp618, i1 true, i1 %cmp621
  br i1 %or.cond74, label %if.then623, label %if.end625

if.then623:                                       ; preds = %if.then613
  %413 = load ptr, ptr %s, align 8
  %status624 = getelementptr inbounds %struct.internal_state, ptr %413, i64 0, i32 1
  store i32 666, ptr %status624, align 8
  br label %if.end625

if.end625:                                        ; preds = %if.then613, %if.then623
  %414 = load i32, ptr %bstate, align 4
  %cmp626 = icmp eq i32 %414, 0
  %415 = load i32, ptr %bstate, align 4
  %cmp629 = icmp eq i32 %415, 2
  %or.cond75 = select i1 %cmp626, i1 true, i1 %cmp629
  br i1 %or.cond75, label %if.then631, label %if.end638

if.then631:                                       ; preds = %if.end625
  %416 = load ptr, ptr %strm.addr, align 8
  %avail_out632 = getelementptr inbounds %struct.z_stream_s, ptr %416, i64 0, i32 4
  %417 = load i32, ptr %avail_out632, align 8
  %cmp633 = icmp eq i32 %417, 0
  br i1 %cmp633, label %if.then635, label %if.end637

if.then635:                                       ; preds = %if.then631
  %418 = load ptr, ptr %s, align 8
  %last_flush636 = getelementptr inbounds %struct.internal_state, ptr %418, i64 0, i32 10
  store i32 -1, ptr %last_flush636, align 8
  br label %if.end637

if.end637:                                        ; preds = %if.then635, %if.then631
  store i32 0, ptr %retval, align 4
  br label %return

if.end638:                                        ; preds = %if.end625
  %419 = load i32, ptr %bstate, align 4
  %cmp639 = icmp eq i32 %419, 1
  br i1 %cmp639, label %if.then641, label %if.end667

if.then641:                                       ; preds = %if.end638
  %420 = load i32, ptr %flush.addr, align 4
  %cmp642 = icmp eq i32 %420, 1
  br i1 %cmp642, label %if.then644, label %if.else645

if.then644:                                       ; preds = %if.then641
  %421 = load ptr, ptr %s, align 8
  call void @_tr_align(ptr noundef %421) #5
  br label %if.end659

if.else645:                                       ; preds = %if.then641
  %422 = load ptr, ptr %s, align 8
  call void @_tr_stored_block(ptr noundef %422, ptr noundef null, i64 noundef 0, i32 noundef 0) #5
  %423 = load i32, ptr %flush.addr, align 4
  %cmp646 = icmp eq i32 %423, 3
  br i1 %cmp646, label %if.then648, label %if.end659

if.then648:                                       ; preds = %if.else645
  %424 = load ptr, ptr %s, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %424, i64 0, i32 17
  %425 = load ptr, ptr %head, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %424, i64 0, i32 19
  %426 = load i32, ptr %hash_size, align 4
  %sub649 = add i32 %426, -1
  %idxprom650 = zext i32 %sub649 to i64
  %arrayidx651 = getelementptr inbounds i16, ptr %425, i64 %idxprom650
  store i16 0, ptr %arrayidx651, align 2
  %427 = load ptr, ptr %s, align 8
  %head652 = getelementptr inbounds %struct.internal_state, ptr %427, i64 0, i32 17
  %428 = load ptr, ptr %head652, align 8
  %hash_size653 = getelementptr inbounds %struct.internal_state, ptr %427, i64 0, i32 19
  %429 = load i32, ptr %hash_size653, align 4
  %sub654 = add i32 %429, -1
  %conv655 = zext i32 %sub654 to i64
  %mul = shl nuw nsw i64 %conv655, 1
  %430 = load ptr, ptr %s, align 8
  %head656 = getelementptr inbounds %struct.internal_state, ptr %430, i64 0, i32 17
  %431 = load ptr, ptr %head656, align 8
  %432 = call i64 @llvm.objectsize.i64.p0(ptr %431, i1 false, i1 true, i1 false)
  %call657 = call ptr @__memset_chk(ptr noundef %428, i32 noundef 0, i64 noundef %mul, i64 noundef %432) #5
  br label %if.end659

if.end659:                                        ; preds = %if.else645, %if.then648, %if.then644
  %433 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %433)
  %avail_out660 = getelementptr inbounds %struct.z_stream_s, ptr %433, i64 0, i32 4
  %434 = load i32, ptr %avail_out660, align 8
  %cmp661 = icmp eq i32 %434, 0
  br i1 %cmp661, label %if.then663, label %if.end667

if.then663:                                       ; preds = %if.end659
  %435 = load ptr, ptr %s, align 8
  %last_flush664 = getelementptr inbounds %struct.internal_state, ptr %435, i64 0, i32 10
  store i32 -1, ptr %last_flush664, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end667:                                        ; preds = %if.end638, %if.end659, %land.lhs.true609, %lor.lhs.false606
  %436 = load i32, ptr %flush.addr, align 4
  %cmp668.not = icmp eq i32 %436, 4
  br i1 %cmp668.not, label %if.end671, label %if.then670

if.then670:                                       ; preds = %if.end667
  store i32 0, ptr %retval, align 4
  br label %return

if.end671:                                        ; preds = %if.end667
  %437 = load ptr, ptr %s, align 8
  %wrap672 = getelementptr inbounds %struct.internal_state, ptr %437, i64 0, i32 6
  %438 = load i32, ptr %wrap672, align 4
  %cmp673 = icmp slt i32 %438, 1
  br i1 %cmp673, label %if.then675, label %if.end676

if.then675:                                       ; preds = %if.end671
  store i32 1, ptr %retval, align 4
  br label %return

if.end676:                                        ; preds = %if.end671
  %439 = load ptr, ptr %s, align 8
  %wrap677 = getelementptr inbounds %struct.internal_state, ptr %439, i64 0, i32 6
  %440 = load i32, ptr %wrap677, align 4
  %cmp678 = icmp eq i32 %440, 2
  br i1 %cmp678, label %if.then680, label %if.else750

if.then680:                                       ; preds = %if.end676
  %441 = load ptr, ptr %strm.addr, align 8
  %adler681 = getelementptr inbounds %struct.z_stream_s, ptr %441, i64 0, i32 12
  %442 = load i64, ptr %adler681, align 8
  %conv683 = trunc i64 %442 to i8
  %443 = load ptr, ptr %s, align 8
  %pending_buf684 = getelementptr inbounds %struct.internal_state, ptr %443, i64 0, i32 2
  %444 = load ptr, ptr %pending_buf684, align 8
  %pending685 = getelementptr inbounds %struct.internal_state, ptr %443, i64 0, i32 5
  %445 = load i32, ptr %pending685, align 8
  %inc686 = add i32 %445, 1
  store i32 %inc686, ptr %pending685, align 8
  %idxprom687 = zext i32 %445 to i64
  %arrayidx688 = getelementptr inbounds i8, ptr %444, i64 %idxprom687
  store i8 %conv683, ptr %arrayidx688, align 1
  %446 = load ptr, ptr %strm.addr, align 8
  %adler689 = getelementptr inbounds %struct.z_stream_s, ptr %446, i64 0, i32 12
  %447 = load i64, ptr %adler689, align 8
  %shr690 = lshr i64 %447, 8
  %conv692 = trunc i64 %shr690 to i8
  %448 = load ptr, ptr %s, align 8
  %pending_buf693 = getelementptr inbounds %struct.internal_state, ptr %448, i64 0, i32 2
  %449 = load ptr, ptr %pending_buf693, align 8
  %pending694 = getelementptr inbounds %struct.internal_state, ptr %448, i64 0, i32 5
  %450 = load i32, ptr %pending694, align 8
  %inc695 = add i32 %450, 1
  store i32 %inc695, ptr %pending694, align 8
  %idxprom696 = zext i32 %450 to i64
  %arrayidx697 = getelementptr inbounds i8, ptr %449, i64 %idxprom696
  store i8 %conv692, ptr %arrayidx697, align 1
  %451 = load ptr, ptr %strm.addr, align 8
  %adler698 = getelementptr inbounds %struct.z_stream_s, ptr %451, i64 0, i32 12
  %452 = load i64, ptr %adler698, align 8
  %shr699 = lshr i64 %452, 16
  %conv701 = trunc i64 %shr699 to i8
  %453 = load ptr, ptr %s, align 8
  %pending_buf702 = getelementptr inbounds %struct.internal_state, ptr %453, i64 0, i32 2
  %454 = load ptr, ptr %pending_buf702, align 8
  %pending703 = getelementptr inbounds %struct.internal_state, ptr %453, i64 0, i32 5
  %455 = load i32, ptr %pending703, align 8
  %inc704 = add i32 %455, 1
  store i32 %inc704, ptr %pending703, align 8
  %idxprom705 = zext i32 %455 to i64
  %arrayidx706 = getelementptr inbounds i8, ptr %454, i64 %idxprom705
  store i8 %conv701, ptr %arrayidx706, align 1
  %456 = load ptr, ptr %strm.addr, align 8
  %adler707 = getelementptr inbounds %struct.z_stream_s, ptr %456, i64 0, i32 12
  %457 = load i64, ptr %adler707, align 8
  %shr708 = lshr i64 %457, 24
  %conv710 = trunc i64 %shr708 to i8
  %458 = load ptr, ptr %s, align 8
  %pending_buf711 = getelementptr inbounds %struct.internal_state, ptr %458, i64 0, i32 2
  %459 = load ptr, ptr %pending_buf711, align 8
  %pending712 = getelementptr inbounds %struct.internal_state, ptr %458, i64 0, i32 5
  %460 = load i32, ptr %pending712, align 8
  %inc713 = add i32 %460, 1
  store i32 %inc713, ptr %pending712, align 8
  %idxprom714 = zext i32 %460 to i64
  %arrayidx715 = getelementptr inbounds i8, ptr %459, i64 %idxprom714
  store i8 %conv710, ptr %arrayidx715, align 1
  %461 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %461, i64 0, i32 2
  %462 = load i64, ptr %total_in, align 8
  %conv717 = trunc i64 %462 to i8
  %463 = load ptr, ptr %s, align 8
  %pending_buf718 = getelementptr inbounds %struct.internal_state, ptr %463, i64 0, i32 2
  %464 = load ptr, ptr %pending_buf718, align 8
  %pending719 = getelementptr inbounds %struct.internal_state, ptr %463, i64 0, i32 5
  %465 = load i32, ptr %pending719, align 8
  %inc720 = add i32 %465, 1
  store i32 %inc720, ptr %pending719, align 8
  %idxprom721 = zext i32 %465 to i64
  %arrayidx722 = getelementptr inbounds i8, ptr %464, i64 %idxprom721
  store i8 %conv717, ptr %arrayidx722, align 1
  %466 = load ptr, ptr %strm.addr, align 8
  %total_in723 = getelementptr inbounds %struct.z_stream_s, ptr %466, i64 0, i32 2
  %467 = load i64, ptr %total_in723, align 8
  %shr724 = lshr i64 %467, 8
  %conv726 = trunc i64 %shr724 to i8
  %468 = load ptr, ptr %s, align 8
  %pending_buf727 = getelementptr inbounds %struct.internal_state, ptr %468, i64 0, i32 2
  %469 = load ptr, ptr %pending_buf727, align 8
  %pending728 = getelementptr inbounds %struct.internal_state, ptr %468, i64 0, i32 5
  %470 = load i32, ptr %pending728, align 8
  %inc729 = add i32 %470, 1
  store i32 %inc729, ptr %pending728, align 8
  %idxprom730 = zext i32 %470 to i64
  %arrayidx731 = getelementptr inbounds i8, ptr %469, i64 %idxprom730
  store i8 %conv726, ptr %arrayidx731, align 1
  %471 = load ptr, ptr %strm.addr, align 8
  %total_in732 = getelementptr inbounds %struct.z_stream_s, ptr %471, i64 0, i32 2
  %472 = load i64, ptr %total_in732, align 8
  %shr733 = lshr i64 %472, 16
  %conv735 = trunc i64 %shr733 to i8
  %473 = load ptr, ptr %s, align 8
  %pending_buf736 = getelementptr inbounds %struct.internal_state, ptr %473, i64 0, i32 2
  %474 = load ptr, ptr %pending_buf736, align 8
  %pending737 = getelementptr inbounds %struct.internal_state, ptr %473, i64 0, i32 5
  %475 = load i32, ptr %pending737, align 8
  %inc738 = add i32 %475, 1
  store i32 %inc738, ptr %pending737, align 8
  %idxprom739 = zext i32 %475 to i64
  %arrayidx740 = getelementptr inbounds i8, ptr %474, i64 %idxprom739
  store i8 %conv735, ptr %arrayidx740, align 1
  %476 = load ptr, ptr %strm.addr, align 8
  %total_in741 = getelementptr inbounds %struct.z_stream_s, ptr %476, i64 0, i32 2
  %477 = load i64, ptr %total_in741, align 8
  %shr742 = lshr i64 %477, 24
  %conv744 = trunc i64 %shr742 to i8
  %478 = load ptr, ptr %s, align 8
  %pending_buf745 = getelementptr inbounds %struct.internal_state, ptr %478, i64 0, i32 2
  %479 = load ptr, ptr %pending_buf745, align 8
  %pending746 = getelementptr inbounds %struct.internal_state, ptr %478, i64 0, i32 5
  %480 = load i32, ptr %pending746, align 8
  %inc747 = add i32 %480, 1
  store i32 %inc747, ptr %pending746, align 8
  %idxprom748 = zext i32 %480 to i64
  %arrayidx749 = getelementptr inbounds i8, ptr %479, i64 %idxprom748
  store i8 %conv744, ptr %arrayidx749, align 1
  br label %if.end757

if.else750:                                       ; preds = %if.end676
  %481 = load ptr, ptr %s, align 8
  %482 = load ptr, ptr %strm.addr, align 8
  %adler751 = getelementptr inbounds %struct.z_stream_s, ptr %482, i64 0, i32 12
  %483 = load i64, ptr %adler751, align 8
  %shr752 = lshr i64 %483, 16
  %conv753 = trunc i64 %shr752 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.addr.i34)
  store ptr %481, ptr %s.addr.i33, align 8
  store i32 %conv753, ptr %b.addr.i34, align 4
  %shr.i3565 = lshr i64 %483, 24
  %conv.i36 = trunc i64 %shr.i3565 to i8
  %pending_buf.i37 = getelementptr inbounds %struct.internal_state, ptr %481, i64 0, i32 2
  %484 = load ptr, ptr %pending_buf.i37, align 8
  %pending.i38 = getelementptr inbounds %struct.internal_state, ptr %481, i64 0, i32 5
  %485 = load i32, ptr %pending.i38, align 8
  %inc.i39 = add i32 %485, 1
  store i32 %inc.i39, ptr %pending.i38, align 8
  %idxprom.i40 = zext i32 %485 to i64
  %arrayidx.i41 = getelementptr inbounds i8, ptr %484, i64 %idxprom.i40
  store i8 %conv.i36, ptr %arrayidx.i41, align 1
  %486 = load i32, ptr %b.addr.i34, align 4
  %conv1.i43 = trunc i32 %486 to i8
  %487 = load ptr, ptr %s.addr.i33, align 8
  %pending_buf2.i44 = getelementptr inbounds %struct.internal_state, ptr %487, i64 0, i32 2
  %488 = load ptr, ptr %pending_buf2.i44, align 8
  %pending3.i45 = getelementptr inbounds %struct.internal_state, ptr %487, i64 0, i32 5
  %489 = load i32, ptr %pending3.i45, align 8
  %inc4.i46 = add i32 %489, 1
  store i32 %inc4.i46, ptr %pending3.i45, align 8
  %idxprom5.i47 = zext i32 %489 to i64
  %arrayidx6.i48 = getelementptr inbounds i8, ptr %488, i64 %idxprom5.i47
  store i8 %conv1.i43, ptr %arrayidx6.i48, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.addr.i34)
  %490 = load ptr, ptr %s, align 8
  %491 = load ptr, ptr %strm.addr, align 8
  %adler754 = getelementptr inbounds %struct.z_stream_s, ptr %491, i64 0, i32 12
  %492 = load i64, ptr %adler754, align 8
  %493 = trunc i64 %492 to i32
  %conv756 = and i32 %493, 65535
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i49)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.addr.i50)
  store ptr %490, ptr %s.addr.i49, align 8
  store i32 %conv756, ptr %b.addr.i50, align 4
  %shr.i5166 = lshr i64 %492, 8
  %conv.i52 = trunc i64 %shr.i5166 to i8
  %pending_buf.i53 = getelementptr inbounds %struct.internal_state, ptr %490, i64 0, i32 2
  %494 = load ptr, ptr %pending_buf.i53, align 8
  %pending.i54 = getelementptr inbounds %struct.internal_state, ptr %490, i64 0, i32 5
  %495 = load i32, ptr %pending.i54, align 8
  %inc.i55 = add i32 %495, 1
  store i32 %inc.i55, ptr %pending.i54, align 8
  %idxprom.i56 = zext i32 %495 to i64
  %arrayidx.i57 = getelementptr inbounds i8, ptr %494, i64 %idxprom.i56
  store i8 %conv.i52, ptr %arrayidx.i57, align 1
  %496 = load i32, ptr %b.addr.i50, align 4
  %conv1.i59 = trunc i32 %496 to i8
  %497 = load ptr, ptr %s.addr.i49, align 8
  %pending_buf2.i60 = getelementptr inbounds %struct.internal_state, ptr %497, i64 0, i32 2
  %498 = load ptr, ptr %pending_buf2.i60, align 8
  %pending3.i61 = getelementptr inbounds %struct.internal_state, ptr %497, i64 0, i32 5
  %499 = load i32, ptr %pending3.i61, align 8
  %inc4.i62 = add i32 %499, 1
  store i32 %inc4.i62, ptr %pending3.i61, align 8
  %idxprom5.i63 = zext i32 %499 to i64
  %arrayidx6.i64 = getelementptr inbounds i8, ptr %498, i64 %idxprom5.i63
  store i8 %conv1.i59, ptr %arrayidx6.i64, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i49)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.addr.i50)
  br label %if.end757

if.end757:                                        ; preds = %if.else750, %if.then680
  %500 = load ptr, ptr %strm.addr, align 8
  call void @flush_pending(ptr noundef %500)
  %501 = load ptr, ptr %s, align 8
  %wrap758 = getelementptr inbounds %struct.internal_state, ptr %501, i64 0, i32 6
  %502 = load i32, ptr %wrap758, align 4
  %cmp759 = icmp sgt i32 %502, 0
  br i1 %cmp759, label %if.then761, label %if.end765

if.then761:                                       ; preds = %if.end757
  %503 = load ptr, ptr %s, align 8
  %wrap762 = getelementptr inbounds %struct.internal_state, ptr %503, i64 0, i32 6
  %504 = load i32, ptr %wrap762, align 4
  %sub763 = sub nsw i32 0, %504
  %wrap764 = getelementptr inbounds %struct.internal_state, ptr %503, i64 0, i32 6
  store i32 %sub763, ptr %wrap764, align 4
  br label %if.end765

if.end765:                                        ; preds = %if.then761, %if.end757
  %505 = load ptr, ptr %s, align 8
  %pending766 = getelementptr inbounds %struct.internal_state, ptr %505, i64 0, i32 5
  %506 = load i32, ptr %pending766, align 8
  %cmp767.not = icmp eq i32 %506, 0
  %cond769 = zext i1 %cmp767.not to i32
  store i32 %cond769, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end765, %if.then675, %if.then670, %if.then663, %if.end637, %if.then597, %if.then586, %if.then573, %if.then18, %if.then15, %if.then
  %507 = load i32, ptr %retval, align 4
  ret i32 %507
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
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %1 = load ptr, ptr %state, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strm.addr, align 8
  %state2 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 7
  %3 = load ptr, ptr %state2, align 8
  store ptr %3, ptr %s, align 8
  %4 = load i32, ptr %good_length.addr, align 4
  %good_match = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 35
  store i32 %4, ptr %good_match, align 4
  %5 = load i32, ptr %max_lazy.addr, align 4
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 32
  store i32 %5, ptr %max_lazy_match, align 8
  %6 = load i32, ptr %nice_length.addr, align 4
  %7 = load ptr, ptr %s, align 8
  %nice_match = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 36
  store i32 %6, ptr %nice_match, align 8
  %8 = load i32, ptr %max_chain.addr, align 4
  %max_chain_length = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 31
  store i32 %8, ptr %max_chain_length, align 4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %storemerge
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
  %add = add i64 %sourceLen, 7
  %shr = lshr i64 %add, 3
  %add1 = add i64 %shr, %sourceLen
  %add2 = add i64 %sourceLen, 63
  %shr3 = lshr i64 %add2, 6
  %add4 = add i64 %add1, %shr3
  %add5 = add i64 %add4, 11
  store i64 %add5, ptr %destLen, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %state, align 8
  %cmp6 = icmp eq ptr %2, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i64, ptr %destLen, align 8
  store i64 %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %strm.addr, align 8
  %state7 = getelementptr inbounds %struct.z_stream_s, ptr %4, i64 0, i32 7
  %5 = load ptr, ptr %state7, align 8
  store ptr %5, ptr %s, align 8
  %w_bits = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 12
  %6 = load i32, ptr %w_bits, align 8
  %cmp8.not = icmp eq i32 %6, 15
  br i1 %cmp8.not, label %lor.lhs.false9, label %if.then11

lor.lhs.false9:                                   ; preds = %if.end
  %7 = load ptr, ptr %s, align 8
  %hash_bits = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 20
  %8 = load i32, ptr %hash_bits, align 8
  %cmp10.not = icmp eq i32 %8, 15
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %9 = load i64, ptr %destLen, align 8
  store i64 %9, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %lor.lhs.false9
  %10 = load i64, ptr %sourceLen.addr, align 8
  %call = call i64 @compressBound(i64 noundef %10) #5
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then
  %11 = load i64, ptr %retval, align 8
  ret i64 %11
}

declare i64 @compressBound(i64 noundef) #1

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
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %5, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %5, ptr noundef %3, i64 noundef 112, i64 noundef %6) #5
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %zalloc, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 10
  %8 = load ptr, ptr %opaque, align 8
  %call5 = call ptr %7(ptr noundef %8, i32 noundef 1, i32 noundef 5928) #5
  store ptr %call5, ptr %ds, align 8
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -4, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %ds, align 8
  %10 = load ptr, ptr %dest.addr, align 8
  %state9 = getelementptr inbounds %struct.z_stream_s, ptr %10, i64 0, i32 7
  store ptr %9, ptr %state9, align 8
  %11 = load ptr, ptr %ss, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call10 = call ptr @__memcpy_chk(ptr noundef %9, ptr noundef %11, i64 noundef 5928, i64 noundef %12) #5
  %13 = load ptr, ptr %ds, align 8
  store ptr %10, ptr %13, align 8
  %14 = load ptr, ptr %dest.addr, align 8
  %zalloc11 = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 8
  %15 = load ptr, ptr %zalloc11, align 8
  %opaque12 = getelementptr inbounds %struct.z_stream_s, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %opaque12, align 8
  %17 = load ptr, ptr %ds, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 11
  %18 = load i32, ptr %w_size, align 4
  %call13 = call ptr %15(ptr noundef %16, i32 noundef %18, i32 noundef 2) #5
  %window = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 14
  store ptr %call13, ptr %window, align 8
  %19 = load ptr, ptr %dest.addr, align 8
  %zalloc14 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 8
  %20 = load ptr, ptr %zalloc14, align 8
  %opaque15 = getelementptr inbounds %struct.z_stream_s, ptr %19, i64 0, i32 10
  %21 = load ptr, ptr %opaque15, align 8
  %22 = load ptr, ptr %ds, align 8
  %w_size16 = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 11
  %23 = load i32, ptr %w_size16, align 4
  %call17 = call ptr %20(ptr noundef %21, i32 noundef %23, i32 noundef 2) #5
  %prev = getelementptr inbounds %struct.internal_state, ptr %22, i64 0, i32 16
  store ptr %call17, ptr %prev, align 8
  %24 = load ptr, ptr %dest.addr, align 8
  %zalloc18 = getelementptr inbounds %struct.z_stream_s, ptr %24, i64 0, i32 8
  %25 = load ptr, ptr %zalloc18, align 8
  %opaque19 = getelementptr inbounds %struct.z_stream_s, ptr %24, i64 0, i32 10
  %26 = load ptr, ptr %opaque19, align 8
  %27 = load ptr, ptr %ds, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 19
  %28 = load i32, ptr %hash_size, align 4
  %call20 = call ptr %25(ptr noundef %26, i32 noundef %28, i32 noundef 2) #5
  %head = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 17
  store ptr %call20, ptr %head, align 8
  %29 = load ptr, ptr %dest.addr, align 8
  %zalloc21 = getelementptr inbounds %struct.z_stream_s, ptr %29, i64 0, i32 8
  %30 = load ptr, ptr %zalloc21, align 8
  %opaque22 = getelementptr inbounds %struct.z_stream_s, ptr %29, i64 0, i32 10
  %31 = load ptr, ptr %opaque22, align 8
  %32 = load ptr, ptr %ds, align 8
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 49
  %33 = load i32, ptr %lit_bufsize, align 8
  %call23 = call ptr %30(ptr noundef %31, i32 noundef %33, i32 noundef 4) #5
  store ptr %call23, ptr %overlay, align 8
  %pending_buf = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 2
  store ptr %call23, ptr %pending_buf, align 8
  %34 = load ptr, ptr %ds, align 8
  %window24 = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 14
  %35 = load ptr, ptr %window24, align 8
  %cmp25 = icmp eq ptr %35, null
  br i1 %cmp25, label %if.then35, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end8
  %36 = load ptr, ptr %ds, align 8
  %prev27 = getelementptr inbounds %struct.internal_state, ptr %36, i64 0, i32 16
  %37 = load ptr, ptr %prev27, align 8
  %cmp28 = icmp eq ptr %37, null
  br i1 %cmp28, label %if.then35, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %38 = load ptr, ptr %ds, align 8
  %head30 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 17
  %39 = load ptr, ptr %head30, align 8
  %cmp31 = icmp eq ptr %39, null
  br i1 %cmp31, label %if.then35, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %40 = load ptr, ptr %ds, align 8
  %pending_buf33 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 2
  %41 = load ptr, ptr %pending_buf33, align 8
  %cmp34 = icmp eq ptr %41, null
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %lor.lhs.false32, %lor.lhs.false29, %lor.lhs.false26, %if.end8
  %42 = load ptr, ptr %dest.addr, align 8
  %call36 = call i32 @deflateEnd(ptr noundef %42)
  store i32 -4, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %lor.lhs.false32
  %43 = load ptr, ptr %ds, align 8
  %window38 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 14
  %44 = load ptr, ptr %window38, align 8
  %45 = load ptr, ptr %ss, align 8
  %window39 = getelementptr inbounds %struct.internal_state, ptr %45, i64 0, i32 14
  %46 = load ptr, ptr %window39, align 8
  %w_size40 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 11
  %47 = load i32, ptr %w_size40, align 4
  %mul = shl i32 %47, 1
  %conv = zext i32 %mul to i64
  %48 = load ptr, ptr %ds, align 8
  %window42 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 14
  %49 = load ptr, ptr %window42, align 8
  %50 = call i64 @llvm.objectsize.i64.p0(ptr %49, i1 false, i1 true, i1 false)
  %call43 = call ptr @__memcpy_chk(ptr noundef %44, ptr noundef %46, i64 noundef %conv, i64 noundef %50) #5
  %prev44 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 16
  %51 = load ptr, ptr %prev44, align 8
  %52 = load ptr, ptr %ss, align 8
  %prev45 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 16
  %53 = load ptr, ptr %prev45, align 8
  %54 = load ptr, ptr %ds, align 8
  %w_size46 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 11
  %55 = load i32, ptr %w_size46, align 4
  %conv47 = zext i32 %55 to i64
  %mul48 = shl nuw nsw i64 %conv47, 1
  %prev49 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 16
  %56 = load ptr, ptr %prev49, align 8
  %57 = call i64 @llvm.objectsize.i64.p0(ptr %56, i1 false, i1 true, i1 false)
  %call50 = call ptr @__memcpy_chk(ptr noundef %51, ptr noundef %53, i64 noundef %mul48, i64 noundef %57) #5
  %58 = load ptr, ptr %ds, align 8
  %head51 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 17
  %59 = load ptr, ptr %head51, align 8
  %60 = load ptr, ptr %ss, align 8
  %head52 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 17
  %61 = load ptr, ptr %head52, align 8
  %hash_size53 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 19
  %62 = load i32, ptr %hash_size53, align 4
  %conv54 = zext i32 %62 to i64
  %mul55 = shl nuw nsw i64 %conv54, 1
  %63 = load ptr, ptr %ds, align 8
  %head56 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 17
  %64 = load ptr, ptr %head56, align 8
  %65 = call i64 @llvm.objectsize.i64.p0(ptr %64, i1 false, i1 true, i1 false)
  %call57 = call ptr @__memcpy_chk(ptr noundef %59, ptr noundef %61, i64 noundef %mul55, i64 noundef %65) #5
  %pending_buf58 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 2
  %66 = load ptr, ptr %pending_buf58, align 8
  %67 = load ptr, ptr %ss, align 8
  %pending_buf59 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 2
  %68 = load ptr, ptr %pending_buf59, align 8
  %69 = load ptr, ptr %ds, align 8
  %pending_buf_size = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 3
  %70 = load i64, ptr %pending_buf_size, align 8
  %conv61 = and i64 %70, 4294967295
  %pending_buf62 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %pending_buf62, align 8
  %72 = call i64 @llvm.objectsize.i64.p0(ptr %71, i1 false, i1 true, i1 false)
  %call63 = call ptr @__memcpy_chk(ptr noundef %66, ptr noundef %68, i64 noundef %conv61, i64 noundef %72) #5
  %73 = load ptr, ptr %ds, align 8
  %pending_buf64 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 2
  %74 = load ptr, ptr %pending_buf64, align 8
  %75 = load ptr, ptr %ss, align 8
  %pending_out = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 4
  %76 = load ptr, ptr %pending_out, align 8
  %pending_buf65 = getelementptr inbounds %struct.internal_state, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %pending_buf65, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %76 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %74, i64 %sub.ptr.sub
  %78 = load ptr, ptr %ds, align 8
  %pending_out66 = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 4
  store ptr %add.ptr, ptr %pending_out66, align 8
  %79 = load ptr, ptr %overlay, align 8
  %lit_bufsize67 = getelementptr inbounds %struct.internal_state, ptr %78, i64 0, i32 49
  %80 = load i32, ptr %lit_bufsize67, align 8
  %81 = lshr i32 %80, 1
  %div = zext i32 %81 to i64
  %add.ptr69 = getelementptr inbounds i16, ptr %79, i64 %div
  %82 = load ptr, ptr %ds, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 51
  store ptr %add.ptr69, ptr %d_buf, align 8
  %pending_buf70 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 2
  %83 = load ptr, ptr %pending_buf70, align 8
  %lit_bufsize71 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 49
  %84 = load i32, ptr %lit_bufsize71, align 8
  %conv72 = zext i32 %84 to i64
  %mul73 = mul nuw nsw i64 %conv72, 3
  %add.ptr74 = getelementptr inbounds i8, ptr %83, i64 %mul73
  %85 = load ptr, ptr %ds, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 48
  store ptr %add.ptr74, ptr %l_buf, align 8
  %dyn_ltree = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 37
  %l_desc = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 40
  store ptr %dyn_ltree, ptr %l_desc, align 8
  %dyn_dtree = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 38
  %86 = load ptr, ptr %ds, align 8
  %d_desc = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 41
  store ptr %dyn_dtree, ptr %d_desc, align 8
  %bl_tree = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 39
  %bl_desc = getelementptr inbounds %struct.internal_state, ptr %86, i64 0, i32 42
  store ptr %bl_tree, ptr %bl_desc, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then35, %if.then7, %if.then
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
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
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 29
  %4 = load i32, ptr %lookahead, align 4
  %cmp3 = icmp ult i32 %4, 2
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %for.cond
  %5 = load ptr, ptr %s.addr, align 8
  call void @fill_window(ptr noundef %5)
  %lookahead5 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 29
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
  %lookahead10 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 29
  %9 = load i32, ptr %lookahead10, align 4
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %for.end, label %if.end14

if.end14:                                         ; preds = %if.end9, %for.cond
  %10 = load ptr, ptr %s.addr, align 8
  %lookahead15 = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 29
  %11 = load i32, ptr %lookahead15, align 4
  %strstart = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 27
  %12 = load i32, ptr %strstart, align 4
  %add = add i32 %12, %11
  store i32 %add, ptr %strstart, align 4
  %13 = load ptr, ptr %s.addr, align 8
  %lookahead16 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 29
  store i32 0, ptr %lookahead16, align 4
  %block_start = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 23
  %14 = load i64, ptr %block_start, align 8
  %15 = load i64, ptr %max_block_size, align 8
  %add17 = add i64 %14, %15
  store i64 %add17, ptr %max_start, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %strstart18 = getelementptr inbounds %struct.internal_state, ptr %16, i64 0, i32 27
  %17 = load i32, ptr %strstart18, align 4
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %18 = load ptr, ptr %s.addr, align 8
  %strstart20 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 27
  %19 = load i32, ptr %strstart20, align 4
  %conv = zext i32 %19 to i64
  %20 = load i64, ptr %max_start, align 8
  %cmp21.not = icmp ugt i64 %20, %conv
  br i1 %cmp21.not, label %if.end48, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false, %if.end14
  %21 = load ptr, ptr %s.addr, align 8
  %strstart24 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 27
  %22 = load i32, ptr %strstart24, align 4
  %23 = load i64, ptr %max_start, align 8
  %24 = trunc i64 %23 to i32
  %conv27 = sub i32 %22, %24
  %lookahead28 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 29
  store i32 %conv27, ptr %lookahead28, align 4
  %conv29 = trunc i64 %23 to i32
  %25 = load ptr, ptr %s.addr, align 8
  %strstart30 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 27
  store i32 %conv29, ptr %strstart30, align 4
  %block_start31 = getelementptr inbounds %struct.internal_state, ptr %25, i64 0, i32 23
  %26 = load i64, ptr %block_start31, align 8
  %cmp32 = icmp sgt i64 %26, -1
  br i1 %cmp32, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then23
  %27 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 14
  %28 = load ptr, ptr %window, align 8
  %block_start34 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 23
  %29 = load i64, ptr %block_start34, align 8
  %idxprom = and i64 %29, 4294967295
  %arrayidx = getelementptr inbounds i8, ptr %28, i64 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %if.then23, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %if.then23 ]
  %30 = load ptr, ptr %s.addr, align 8
  %strstart36 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 27
  %31 = load i32, ptr %strstart36, align 4
  %conv37 = zext i32 %31 to i64
  %block_start38 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 23
  %32 = load i64, ptr %block_start38, align 8
  %sub39 = sub nsw i64 %conv37, %32
  call void @_tr_flush_block(ptr noundef %25, ptr noundef %cond, i64 noundef %sub39, i32 noundef 0) #5
  %33 = load ptr, ptr %s.addr, align 8
  %strstart40 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 27
  %34 = load i32, ptr %strstart40, align 4
  %conv41 = zext i32 %34 to i64
  %block_start42 = getelementptr inbounds %struct.internal_state, ptr %33, i64 0, i32 23
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
  %strstart49 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 27
  %40 = load i32, ptr %strstart49, align 4
  %block_start50 = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 23
  %41 = load i64, ptr %block_start50, align 8
  %conv51 = trunc i64 %41 to i32
  %sub52 = sub i32 %40, %conv51
  %42 = load ptr, ptr %s.addr, align 8
  %w_size = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 11
  %43 = load i32, ptr %w_size, align 4
  %sub53 = add i32 %43, -262
  %cmp54.not = icmp ult i32 %sub52, %sub53
  br i1 %cmp54.not, label %if.end83, label %if.then56

if.then56:                                        ; preds = %if.end48
  %44 = load ptr, ptr %s.addr, align 8
  %block_start57 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 23
  %45 = load i64, ptr %block_start57, align 8
  %cmp58 = icmp sgt i64 %45, -1
  br i1 %cmp58, label %cond.true60, label %cond.end67

cond.true60:                                      ; preds = %if.then56
  %46 = load ptr, ptr %s.addr, align 8
  %window61 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 14
  %47 = load ptr, ptr %window61, align 8
  %block_start62 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 23
  %48 = load i64, ptr %block_start62, align 8
  %idxprom64 = and i64 %48, 4294967295
  %arrayidx65 = getelementptr inbounds i8, ptr %47, i64 %idxprom64
  br label %cond.end67

cond.end67:                                       ; preds = %if.then56, %cond.true60
  %cond68 = phi ptr [ %arrayidx65, %cond.true60 ], [ null, %if.then56 ]
  %49 = load ptr, ptr %s.addr, align 8
  %strstart69 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 27
  %50 = load i32, ptr %strstart69, align 4
  %conv70 = zext i32 %50 to i64
  %block_start71 = getelementptr inbounds %struct.internal_state, ptr %49, i64 0, i32 23
  %51 = load i64, ptr %block_start71, align 8
  %sub72 = sub nsw i64 %conv70, %51
  call void @_tr_flush_block(ptr noundef %44, ptr noundef %cond68, i64 noundef %sub72, i32 noundef 0) #5
  %52 = load ptr, ptr %s.addr, align 8
  %strstart73 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 27
  %53 = load i32, ptr %strstart73, align 4
  %conv74 = zext i32 %53 to i64
  %block_start75 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 23
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
  %block_start84 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 23
  %59 = load i64, ptr %block_start84, align 8
  %cmp85 = icmp sgt i64 %59, -1
  br i1 %cmp85, label %cond.true87, label %cond.end94

cond.true87:                                      ; preds = %for.end
  %60 = load ptr, ptr %s.addr, align 8
  %window88 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 14
  %61 = load ptr, ptr %window88, align 8
  %block_start89 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 23
  %62 = load i64, ptr %block_start89, align 8
  %idxprom91 = and i64 %62, 4294967295
  %arrayidx92 = getelementptr inbounds i8, ptr %61, i64 %idxprom91
  br label %cond.end94

cond.end94:                                       ; preds = %for.end, %cond.true87
  %cond95 = phi ptr [ %arrayidx92, %cond.true87 ], [ null, %for.end ]
  %63 = load ptr, ptr %s.addr, align 8
  %strstart96 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 27
  %64 = load i32, ptr %strstart96, align 4
  %conv97 = zext i32 %64 to i64
  %block_start98 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 23
  %65 = load i64, ptr %block_start98, align 8
  %sub99 = sub nsw i64 %conv97, %65
  %66 = load i32, ptr %flush.addr, align 4
  %cmp100 = icmp eq i32 %66, 4
  %conv101 = zext i1 %cmp100 to i32
  call void @_tr_flush_block(ptr noundef %58, ptr noundef %cond95, i64 noundef %sub99, i32 noundef %conv101) #5
  %67 = load ptr, ptr %s.addr, align 8
  %strstart102 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 27
  %68 = load i32, ptr %strstart102, align 4
  %conv103 = zext i32 %68 to i64
  %block_start104 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 23
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

for.cond:                                         ; preds = %if.end229, %entry
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
  %25 = load i32, ptr %w_mask, align 4
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
  br i1 %cmp29.not, label %if.end57, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end28
  %31 = load ptr, ptr %s.addr, align 8
  %strstart32 = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 27
  %32 = load i32, ptr %strstart32, align 4
  %33 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %32, %33
  %w_size = getelementptr inbounds %struct.internal_state, ptr %31, i64 0, i32 11
  %34 = load i32, ptr %w_size, align 4
  %sub33 = add i32 %34, -262
  %cmp34.not = icmp ugt i32 %sub, %sub33
  br i1 %cmp34.not, label %if.end57, label %if.then36

if.then36:                                        ; preds = %land.lhs.true31
  %35 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 34
  %36 = load i32, ptr %strategy, align 8
  %cmp37.not = icmp eq i32 %36, 2
  br i1 %cmp37.not, label %if.else, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.then36
  %37 = load ptr, ptr %s.addr, align 8
  %strategy40 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 34
  %38 = load i32, ptr %strategy40, align 8
  %cmp41.not = icmp eq i32 %38, 3
  br i1 %cmp41.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %land.lhs.true39
  %39 = load ptr, ptr %s.addr, align 8
  %40 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %39, i32 noundef %40)
  %match_length = getelementptr inbounds %struct.internal_state, ptr %39, i64 0, i32 24
  store i32 %call, ptr %match_length, align 8
  br label %if.end57

if.else:                                          ; preds = %land.lhs.true39, %if.then36
  %41 = load ptr, ptr %s.addr, align 8
  %strategy44 = getelementptr inbounds %struct.internal_state, ptr %41, i64 0, i32 34
  %42 = load i32, ptr %strategy44, align 8
  %cmp45 = icmp eq i32 %42, 3
  br i1 %cmp45, label %land.lhs.true47, label %if.end57

land.lhs.true47:                                  ; preds = %if.else
  %43 = load ptr, ptr %s.addr, align 8
  %strstart48 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 27
  %44 = load i32, ptr %strstart48, align 4
  %45 = load i32, ptr %hash_head, align 4
  %sub49 = sub i32 %44, %45
  %cmp50 = icmp eq i32 %sub49, 1
  br i1 %cmp50, label %if.then52, label %if.end57

if.then52:                                        ; preds = %land.lhs.true47
  %46 = load ptr, ptr %s.addr, align 8
  %47 = load i32, ptr %hash_head, align 4
  %call53 = call i32 @longest_match_fast(ptr noundef %46, i32 noundef %47)
  %match_length54 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 24
  store i32 %call53, ptr %match_length54, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then43, %if.then52, %land.lhs.true47, %if.else, %land.lhs.true31, %if.end28
  %48 = load ptr, ptr %s.addr, align 8
  %match_length58 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 24
  %49 = load i32, ptr %match_length58, align 8
  %cmp59 = icmp ugt i32 %49, 2
  br i1 %cmp59, label %if.then61, label %if.else176

if.then61:                                        ; preds = %if.end57
  %50 = load ptr, ptr %s.addr, align 8
  %match_length62 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 24
  %51 = load i32, ptr %match_length62, align 8
  %52 = trunc i32 %51 to i8
  %conv64 = add i8 %52, -3
  store i8 %conv64, ptr %len, align 1
  %strstart65 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 27
  %53 = load i32, ptr %strstart65, align 4
  %54 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 28
  %55 = load i32, ptr %match_start, align 8
  %sub66 = sub i32 %53, %55
  %conv67 = trunc i32 %sub66 to i16
  store i16 %conv67, ptr %dist, align 2
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 51
  %56 = load ptr, ptr %d_buf, align 8
  %57 = load ptr, ptr %s.addr, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 50
  %58 = load i32, ptr %last_lit, align 4
  %idxprom68 = zext i32 %58 to i64
  %arrayidx69 = getelementptr inbounds i16, ptr %56, i64 %idxprom68
  store i16 %conv67, ptr %arrayidx69, align 2
  %59 = load i8, ptr %len, align 1
  %60 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 48
  %61 = load ptr, ptr %l_buf, align 8
  %last_lit70 = getelementptr inbounds %struct.internal_state, ptr %60, i64 0, i32 50
  %62 = load i32, ptr %last_lit70, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %last_lit70, align 4
  %idxprom71 = zext i32 %62 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %61, i64 %idxprom71
  store i8 %59, ptr %arrayidx72, align 1
  %63 = load i16, ptr %dist, align 2
  %dec = add i16 %63, -1
  store i16 %dec, ptr %dist, align 2
  %64 = load ptr, ptr %s.addr, align 8
  %65 = load i8, ptr %len, align 1
  %idxprom73 = zext i8 %65 to i64
  %arrayidx74 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom73
  %66 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %66 to i64
  %add77 = add nuw nsw i64 %conv75, 257
  %arrayidx79 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 37, i64 %add77
  %67 = load i16, ptr %arrayidx79, align 4
  %inc80 = add i16 %67, 1
  store i16 %inc80, ptr %arrayidx79, align 4
  %68 = load ptr, ptr %s.addr, align 8
  %69 = load i16, ptr %dist, align 2
  %cmp82 = icmp ult i16 %69, 256
  %70 = load i16, ptr %dist, align 2
  %71 = load i16, ptr %dist, align 2
  %72 = lshr i16 %71, 7
  %narrow = add nuw nsw i16 %72, 256
  %idxprom84.pn.in = select i1 %cmp82, i16 %70, i16 %narrow
  %idxprom84.pn = zext i16 %idxprom84.pn.in to i64
  %cond.in.in = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom84.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %idxprom92 = zext i8 %cond.in to i64
  %arrayidx93 = getelementptr inbounds %struct.internal_state, ptr %68, i64 0, i32 38, i64 %idxprom92
  %73 = load i16, ptr %arrayidx93, align 4
  %inc95 = add i16 %73, 1
  store i16 %inc95, ptr %arrayidx93, align 4
  %74 = load ptr, ptr %s.addr, align 8
  %last_lit96 = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 50
  %75 = load i32, ptr %last_lit96, align 4
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %74, i64 0, i32 49
  %76 = load i32, ptr %lit_bufsize, align 8
  %sub97 = add i32 %76, -1
  %cmp98 = icmp eq i32 %75, %sub97
  %conv99 = zext i1 %cmp98 to i32
  store i32 %conv99, ptr %bflush, align 4
  %77 = load ptr, ptr %s.addr, align 8
  %match_length100 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 24
  %78 = load i32, ptr %match_length100, align 8
  %lookahead101 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 29
  %79 = load i32, ptr %lookahead101, align 4
  %sub102 = sub i32 %79, %78
  store i32 %sub102, ptr %lookahead101, align 4
  %80 = load ptr, ptr %s.addr, align 8
  %match_length103 = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 24
  %81 = load i32, ptr %match_length103, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 32
  %82 = load i32, ptr %max_lazy_match, align 8
  %cmp104.not = icmp ugt i32 %81, %82
  br i1 %cmp104.not, label %if.else151, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.then61
  %83 = load ptr, ptr %s.addr, align 8
  %lookahead107 = getelementptr inbounds %struct.internal_state, ptr %83, i64 0, i32 29
  %84 = load i32, ptr %lookahead107, align 4
  %cmp108 = icmp ugt i32 %84, 2
  br i1 %cmp108, label %if.then110, label %if.else151

if.then110:                                       ; preds = %land.lhs.true106
  %85 = load ptr, ptr %s.addr, align 8
  %match_length111 = getelementptr inbounds %struct.internal_state, ptr %85, i64 0, i32 24
  %86 = load i32, ptr %match_length111, align 8
  %dec112 = add i32 %86, -1
  store i32 %dec112, ptr %match_length111, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then110
  %87 = load ptr, ptr %s.addr, align 8
  %strstart113 = getelementptr inbounds %struct.internal_state, ptr %87, i64 0, i32 27
  %88 = load i32, ptr %strstart113, align 4
  %inc114 = add i32 %88, 1
  store i32 %inc114, ptr %strstart113, align 4
  %ins_h115 = getelementptr inbounds %struct.internal_state, ptr %87, i64 0, i32 18
  %89 = load i32, ptr %ins_h115, align 8
  %90 = load ptr, ptr %s.addr, align 8
  %hash_shift116 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 22
  %91 = load i32, ptr %hash_shift116, align 8
  %shl117 = shl i32 %89, %91
  %window118 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 14
  %92 = load ptr, ptr %window118, align 8
  %strstart119 = getelementptr inbounds %struct.internal_state, ptr %90, i64 0, i32 27
  %93 = load i32, ptr %strstart119, align 4
  %add120 = add i32 %93, 2
  %idxprom121 = zext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds i8, ptr %92, i64 %idxprom121
  %94 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %94 to i32
  %xor124 = xor i32 %shl117, %conv123
  %95 = load ptr, ptr %s.addr, align 8
  %hash_mask125 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 21
  %96 = load i32, ptr %hash_mask125, align 4
  %and126 = and i32 %xor124, %96
  %ins_h127 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 18
  store i32 %and126, ptr %ins_h127, align 8
  %head128 = getelementptr inbounds %struct.internal_state, ptr %95, i64 0, i32 17
  %97 = load ptr, ptr %head128, align 8
  %98 = load ptr, ptr %s.addr, align 8
  %ins_h129 = getelementptr inbounds %struct.internal_state, ptr %98, i64 0, i32 18
  %99 = load i32, ptr %ins_h129, align 8
  %idxprom130 = zext i32 %99 to i64
  %arrayidx131 = getelementptr inbounds i16, ptr %97, i64 %idxprom130
  %100 = load i16, ptr %arrayidx131, align 2
  %prev132 = getelementptr inbounds %struct.internal_state, ptr %98, i64 0, i32 16
  %101 = load ptr, ptr %prev132, align 8
  %102 = load ptr, ptr %s.addr, align 8
  %strstart133 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 27
  %103 = load i32, ptr %strstart133, align 4
  %w_mask134 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 13
  %104 = load i32, ptr %w_mask134, align 4
  %and135 = and i32 %103, %104
  %idxprom136 = zext i32 %and135 to i64
  %arrayidx137 = getelementptr inbounds i16, ptr %101, i64 %idxprom136
  store i16 %100, ptr %arrayidx137, align 2
  %conv138 = zext i16 %100 to i32
  store i32 %conv138, ptr %hash_head, align 4
  %105 = load ptr, ptr %s.addr, align 8
  %strstart139 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 27
  %106 = load i32, ptr %strstart139, align 4
  %conv140 = trunc i32 %106 to i16
  %head141 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 17
  %107 = load ptr, ptr %head141, align 8
  %ins_h142 = getelementptr inbounds %struct.internal_state, ptr %105, i64 0, i32 18
  %108 = load i32, ptr %ins_h142, align 8
  %idxprom143 = zext i32 %108 to i64
  %arrayidx144 = getelementptr inbounds i16, ptr %107, i64 %idxprom143
  store i16 %conv140, ptr %arrayidx144, align 2
  %109 = load ptr, ptr %s.addr, align 8
  %match_length145 = getelementptr inbounds %struct.internal_state, ptr %109, i64 0, i32 24
  %110 = load i32, ptr %match_length145, align 8
  %dec146 = add i32 %110, -1
  store i32 %dec146, ptr %match_length145, align 8
  %cmp147.not = icmp eq i32 %dec146, 0
  br i1 %cmp147.not, label %do.end, label %do.body, !llvm.loop !11

do.end:                                           ; preds = %do.body
  %111 = load ptr, ptr %s.addr, align 8
  %strstart149 = getelementptr inbounds %struct.internal_state, ptr %111, i64 0, i32 27
  %112 = load i32, ptr %strstart149, align 4
  %inc150 = add i32 %112, 1
  store i32 %inc150, ptr %strstart149, align 4
  br label %if.end204

if.else151:                                       ; preds = %land.lhs.true106, %if.then61
  %113 = load ptr, ptr %s.addr, align 8
  %match_length152 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 24
  %114 = load i32, ptr %match_length152, align 8
  %strstart153 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 27
  %115 = load i32, ptr %strstart153, align 4
  %add154 = add i32 %115, %114
  store i32 %add154, ptr %strstart153, align 4
  %116 = load ptr, ptr %s.addr, align 8
  %match_length155 = getelementptr inbounds %struct.internal_state, ptr %116, i64 0, i32 24
  store i32 0, ptr %match_length155, align 8
  %window156 = getelementptr inbounds %struct.internal_state, ptr %116, i64 0, i32 14
  %117 = load ptr, ptr %window156, align 8
  %strstart157 = getelementptr inbounds %struct.internal_state, ptr %116, i64 0, i32 27
  %118 = load i32, ptr %strstart157, align 4
  %idxprom158 = zext i32 %118 to i64
  %arrayidx159 = getelementptr inbounds i8, ptr %117, i64 %idxprom158
  %119 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %119 to i32
  %120 = load ptr, ptr %s.addr, align 8
  %ins_h161 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 18
  store i32 %conv160, ptr %ins_h161, align 8
  %hash_shift163 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 22
  %121 = load i32, ptr %hash_shift163, align 8
  %shl164 = shl i32 %conv160, %121
  %window165 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 14
  %122 = load ptr, ptr %window165, align 8
  %123 = load ptr, ptr %s.addr, align 8
  %strstart166 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 27
  %124 = load i32, ptr %strstart166, align 4
  %add167 = add i32 %124, 1
  %idxprom168 = zext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds i8, ptr %122, i64 %idxprom168
  %125 = load i8, ptr %arrayidx169, align 1
  %conv170 = zext i8 %125 to i32
  %xor171 = xor i32 %shl164, %conv170
  %126 = load ptr, ptr %s.addr, align 8
  %hash_mask172 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 21
  %127 = load i32, ptr %hash_mask172, align 4
  %and173 = and i32 %xor171, %127
  %ins_h174 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 18
  store i32 %and173, ptr %ins_h174, align 8
  br label %if.end204

if.else176:                                       ; preds = %if.end57
  %128 = load ptr, ptr %s.addr, align 8
  %window177 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 14
  %129 = load ptr, ptr %window177, align 8
  %strstart178 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 27
  %130 = load i32, ptr %strstart178, align 4
  %idxprom179 = zext i32 %130 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %129, i64 %idxprom179
  %131 = load i8, ptr %arrayidx180, align 1
  store i8 %131, ptr %cc, align 1
  %132 = load ptr, ptr %s.addr, align 8
  %d_buf181 = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 51
  %133 = load ptr, ptr %d_buf181, align 8
  %last_lit182 = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 50
  %134 = load i32, ptr %last_lit182, align 4
  %idxprom183 = zext i32 %134 to i64
  %arrayidx184 = getelementptr inbounds i16, ptr %133, i64 %idxprom183
  store i16 0, ptr %arrayidx184, align 2
  %135 = load i8, ptr %cc, align 1
  %136 = load ptr, ptr %s.addr, align 8
  %l_buf185 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 48
  %137 = load ptr, ptr %l_buf185, align 8
  %last_lit186 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 50
  %138 = load i32, ptr %last_lit186, align 4
  %inc187 = add i32 %138, 1
  store i32 %inc187, ptr %last_lit186, align 4
  %idxprom188 = zext i32 %138 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %137, i64 %idxprom188
  store i8 %135, ptr %arrayidx189, align 1
  %139 = load ptr, ptr %s.addr, align 8
  %140 = load i8, ptr %cc, align 1
  %idxprom191 = zext i8 %140 to i64
  %arrayidx192 = getelementptr inbounds %struct.internal_state, ptr %139, i64 0, i32 37, i64 %idxprom191
  %141 = load i16, ptr %arrayidx192, align 4
  %inc194 = add i16 %141, 1
  store i16 %inc194, ptr %arrayidx192, align 4
  %142 = load ptr, ptr %s.addr, align 8
  %last_lit195 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 50
  %143 = load i32, ptr %last_lit195, align 4
  %lit_bufsize196 = getelementptr inbounds %struct.internal_state, ptr %142, i64 0, i32 49
  %144 = load i32, ptr %lit_bufsize196, align 8
  %sub197 = add i32 %144, -1
  %cmp198 = icmp eq i32 %143, %sub197
  %conv199 = zext i1 %cmp198 to i32
  store i32 %conv199, ptr %bflush, align 4
  %145 = load ptr, ptr %s.addr, align 8
  %lookahead200 = getelementptr inbounds %struct.internal_state, ptr %145, i64 0, i32 29
  %146 = load i32, ptr %lookahead200, align 4
  %dec201 = add i32 %146, -1
  store i32 %dec201, ptr %lookahead200, align 4
  %strstart202 = getelementptr inbounds %struct.internal_state, ptr %145, i64 0, i32 27
  %147 = load i32, ptr %strstart202, align 4
  %inc203 = add i32 %147, 1
  store i32 %inc203, ptr %strstart202, align 4
  br label %if.end204

if.end204:                                        ; preds = %do.end, %if.else151, %if.else176
  %148 = load i32, ptr %bflush, align 4
  %tobool.not = icmp eq i32 %148, 0
  br i1 %tobool.not, label %if.end229, label %if.then205

if.then205:                                       ; preds = %if.end204
  %149 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %149, i64 0, i32 23
  %150 = load i64, ptr %block_start, align 8
  %cmp206 = icmp sgt i64 %150, -1
  br i1 %cmp206, label %cond.true208, label %cond.end215

cond.true208:                                     ; preds = %if.then205
  %151 = load ptr, ptr %s.addr, align 8
  %window209 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 14
  %152 = load ptr, ptr %window209, align 8
  %block_start210 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 23
  %153 = load i64, ptr %block_start210, align 8
  %idxprom212 = and i64 %153, 4294967295
  %arrayidx213 = getelementptr inbounds i8, ptr %152, i64 %idxprom212
  br label %cond.end215

cond.end215:                                      ; preds = %if.then205, %cond.true208
  %cond216 = phi ptr [ %arrayidx213, %cond.true208 ], [ null, %if.then205 ]
  %154 = load ptr, ptr %s.addr, align 8
  %strstart217 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 27
  %155 = load i32, ptr %strstart217, align 4
  %conv218 = zext i32 %155 to i64
  %block_start219 = getelementptr inbounds %struct.internal_state, ptr %154, i64 0, i32 23
  %156 = load i64, ptr %block_start219, align 8
  %sub220 = sub nsw i64 %conv218, %156
  call void @_tr_flush_block(ptr noundef %149, ptr noundef %cond216, i64 noundef %sub220, i32 noundef 0) #5
  %157 = load ptr, ptr %s.addr, align 8
  %strstart221 = getelementptr inbounds %struct.internal_state, ptr %157, i64 0, i32 27
  %158 = load i32, ptr %strstart221, align 4
  %conv222 = zext i32 %158 to i64
  %block_start223 = getelementptr inbounds %struct.internal_state, ptr %157, i64 0, i32 23
  store i64 %conv222, ptr %block_start223, align 8
  %159 = load ptr, ptr %157, align 8
  call void @flush_pending(ptr noundef %159)
  %160 = load ptr, ptr %s.addr, align 8
  %161 = load ptr, ptr %160, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %161, i64 0, i32 4
  %162 = load i32, ptr %avail_out, align 8
  %cmp225 = icmp eq i32 %162, 0
  br i1 %cmp225, label %if.then227, label %if.end229

if.then227:                                       ; preds = %cond.end215
  store i32 0, ptr %retval, align 4
  br label %return

if.end229:                                        ; preds = %cond.end215, %if.end204
  br label %for.cond

for.end:                                          ; preds = %if.end
  %163 = load ptr, ptr %s.addr, align 8
  %block_start230 = getelementptr inbounds %struct.internal_state, ptr %163, i64 0, i32 23
  %164 = load i64, ptr %block_start230, align 8
  %cmp231 = icmp sgt i64 %164, -1
  br i1 %cmp231, label %cond.true233, label %cond.end240

cond.true233:                                     ; preds = %for.end
  %165 = load ptr, ptr %s.addr, align 8
  %window234 = getelementptr inbounds %struct.internal_state, ptr %165, i64 0, i32 14
  %166 = load ptr, ptr %window234, align 8
  %block_start235 = getelementptr inbounds %struct.internal_state, ptr %165, i64 0, i32 23
  %167 = load i64, ptr %block_start235, align 8
  %idxprom237 = and i64 %167, 4294967295
  %arrayidx238 = getelementptr inbounds i8, ptr %166, i64 %idxprom237
  br label %cond.end240

cond.end240:                                      ; preds = %for.end, %cond.true233
  %cond241 = phi ptr [ %arrayidx238, %cond.true233 ], [ null, %for.end ]
  %168 = load ptr, ptr %s.addr, align 8
  %strstart242 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 27
  %169 = load i32, ptr %strstart242, align 4
  %conv243 = zext i32 %169 to i64
  %block_start244 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 23
  %170 = load i64, ptr %block_start244, align 8
  %sub245 = sub nsw i64 %conv243, %170
  %171 = load i32, ptr %flush.addr, align 4
  %cmp246 = icmp eq i32 %171, 4
  %conv247 = zext i1 %cmp246 to i32
  call void @_tr_flush_block(ptr noundef %163, ptr noundef %cond241, i64 noundef %sub245, i32 noundef %conv247) #5
  %172 = load ptr, ptr %s.addr, align 8
  %strstart248 = getelementptr inbounds %struct.internal_state, ptr %172, i64 0, i32 27
  %173 = load i32, ptr %strstart248, align 4
  %conv249 = zext i32 %173 to i64
  %block_start250 = getelementptr inbounds %struct.internal_state, ptr %172, i64 0, i32 23
  store i64 %conv249, ptr %block_start250, align 8
  %174 = load ptr, ptr %172, align 8
  call void @flush_pending(ptr noundef %174)
  %175 = load ptr, ptr %s.addr, align 8
  %176 = load ptr, ptr %175, align 8
  %avail_out253 = getelementptr inbounds %struct.z_stream_s, ptr %176, i64 0, i32 4
  %177 = load i32, ptr %avail_out253, align 8
  %cmp254 = icmp eq i32 %177, 0
  br i1 %cmp254, label %if.then256, label %if.end260

if.then256:                                       ; preds = %cond.end240
  %178 = load i32, ptr %flush.addr, align 4
  %cmp257 = icmp eq i32 %178, 4
  %cond259 = select i1 %cmp257, i32 2, i32 0
  store i32 %cond259, ptr %retval, align 4
  br label %return

if.end260:                                        ; preds = %cond.end240
  %179 = load i32, ptr %flush.addr, align 4
  %cmp261 = icmp eq i32 %179, 4
  %cond263 = select i1 %cmp261, i32 3, i32 1
  store i32 %cond263, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end260, %if.then256, %if.then227, %if.then4
  %180 = load i32, ptr %retval, align 4
  ret i32 %180
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
  %25 = load i32, ptr %w_mask, align 4
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
  br i1 %cmp30.not, label %if.end82, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end28
  %35 = load ptr, ptr %s.addr, align 8
  %prev_length33 = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 30
  %36 = load i32, ptr %prev_length33, align 8
  %max_lazy_match = getelementptr inbounds %struct.internal_state, ptr %35, i64 0, i32 32
  %37 = load i32, ptr %max_lazy_match, align 8
  %cmp34 = icmp ult i32 %36, %37
  br i1 %cmp34, label %land.lhs.true36, label %if.end82

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %38 = load ptr, ptr %s.addr, align 8
  %strstart37 = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 27
  %39 = load i32, ptr %strstart37, align 4
  %40 = load i32, ptr %hash_head, align 4
  %sub = sub i32 %39, %40
  %w_size = getelementptr inbounds %struct.internal_state, ptr %38, i64 0, i32 11
  %41 = load i32, ptr %w_size, align 4
  %sub38 = add i32 %41, -262
  %cmp39.not = icmp ugt i32 %sub, %sub38
  br i1 %cmp39.not, label %if.end82, label %if.then41

if.then41:                                        ; preds = %land.lhs.true36
  %42 = load ptr, ptr %s.addr, align 8
  %strategy = getelementptr inbounds %struct.internal_state, ptr %42, i64 0, i32 34
  %43 = load i32, ptr %strategy, align 8
  %cmp42.not = icmp eq i32 %43, 2
  br i1 %cmp42.not, label %if.else, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.then41
  %44 = load ptr, ptr %s.addr, align 8
  %strategy45 = getelementptr inbounds %struct.internal_state, ptr %44, i64 0, i32 34
  %45 = load i32, ptr %strategy45, align 8
  %cmp46.not = icmp eq i32 %45, 3
  br i1 %cmp46.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %land.lhs.true44
  %46 = load ptr, ptr %s.addr, align 8
  %47 = load i32, ptr %hash_head, align 4
  %call = call i32 @longest_match(ptr noundef %46, i32 noundef %47)
  %match_length49 = getelementptr inbounds %struct.internal_state, ptr %46, i64 0, i32 24
  store i32 %call, ptr %match_length49, align 8
  br label %if.end62

if.else:                                          ; preds = %land.lhs.true44, %if.then41
  %48 = load ptr, ptr %s.addr, align 8
  %strategy50 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 34
  %49 = load i32, ptr %strategy50, align 8
  %cmp51 = icmp eq i32 %49, 3
  br i1 %cmp51, label %land.lhs.true53, label %if.end62

land.lhs.true53:                                  ; preds = %if.else
  %50 = load ptr, ptr %s.addr, align 8
  %strstart54 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 27
  %51 = load i32, ptr %strstart54, align 4
  %52 = load i32, ptr %hash_head, align 4
  %sub55 = sub i32 %51, %52
  %cmp56 = icmp eq i32 %sub55, 1
  br i1 %cmp56, label %if.then58, label %if.end62

if.then58:                                        ; preds = %land.lhs.true53
  %53 = load ptr, ptr %s.addr, align 8
  %54 = load i32, ptr %hash_head, align 4
  %call59 = call i32 @longest_match_fast(ptr noundef %53, i32 noundef %54)
  %match_length60 = getelementptr inbounds %struct.internal_state, ptr %53, i64 0, i32 24
  store i32 %call59, ptr %match_length60, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else, %land.lhs.true53, %if.then58, %if.then48
  %55 = load ptr, ptr %s.addr, align 8
  %match_length63 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 24
  %56 = load i32, ptr %match_length63, align 8
  %cmp64 = icmp ult i32 %56, 6
  br i1 %cmp64, label %land.lhs.true66, label %if.end82

land.lhs.true66:                                  ; preds = %if.end62
  %57 = load ptr, ptr %s.addr, align 8
  %strategy67 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 34
  %58 = load i32, ptr %strategy67, align 8
  %cmp68 = icmp eq i32 %58, 1
  br i1 %cmp68, label %if.then79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true66
  %59 = load ptr, ptr %s.addr, align 8
  %match_length70 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 24
  %60 = load i32, ptr %match_length70, align 8
  %cmp71 = icmp eq i32 %60, 3
  br i1 %cmp71, label %land.lhs.true73, label %if.end82

land.lhs.true73:                                  ; preds = %lor.lhs.false
  %61 = load ptr, ptr %s.addr, align 8
  %strstart74 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 27
  %62 = load i32, ptr %strstart74, align 4
  %match_start75 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 28
  %63 = load i32, ptr %match_start75, align 8
  %sub76 = sub i32 %62, %63
  %cmp77 = icmp ugt i32 %sub76, 4096
  br i1 %cmp77, label %if.then79, label %if.end82

if.then79:                                        ; preds = %land.lhs.true73, %land.lhs.true66
  %64 = load ptr, ptr %s.addr, align 8
  %match_length80 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 24
  store i32 2, ptr %match_length80, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.end62, %lor.lhs.false, %land.lhs.true73, %if.then79, %land.lhs.true36, %land.lhs.true32, %if.end28
  %65 = load ptr, ptr %s.addr, align 8
  %prev_length83 = getelementptr inbounds %struct.internal_state, ptr %65, i64 0, i32 30
  %66 = load i32, ptr %prev_length83, align 8
  %cmp84 = icmp ugt i32 %66, 2
  br i1 %cmp84, label %land.lhs.true86, label %if.else210

land.lhs.true86:                                  ; preds = %if.end82
  %67 = load ptr, ptr %s.addr, align 8
  %match_length87 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 24
  %68 = load i32, ptr %match_length87, align 8
  %prev_length88 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 30
  %69 = load i32, ptr %prev_length88, align 8
  %cmp89.not = icmp ugt i32 %68, %69
  br i1 %cmp89.not, label %if.else210, label %if.then91

if.then91:                                        ; preds = %land.lhs.true86
  %70 = load ptr, ptr %s.addr, align 8
  %strstart92 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 27
  %71 = load i32, ptr %strstart92, align 4
  %lookahead93 = getelementptr inbounds %struct.internal_state, ptr %70, i64 0, i32 29
  %72 = load i32, ptr %lookahead93, align 4
  %add94 = add i32 %71, %72
  %sub95 = add i32 %add94, -3
  store i32 %sub95, ptr %max_insert, align 4
  %73 = load ptr, ptr %s.addr, align 8
  %prev_length96 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 30
  %74 = load i32, ptr %prev_length96, align 8
  %75 = trunc i32 %74 to i8
  %conv98 = add i8 %75, -3
  store i8 %conv98, ptr %len, align 1
  %strstart99 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 27
  %76 = load i32, ptr %strstart99, align 4
  %77 = load ptr, ptr %s.addr, align 8
  %prev_match101 = getelementptr inbounds %struct.internal_state, ptr %77, i64 0, i32 25
  %78 = load i32, ptr %prev_match101, align 4
  %79 = xor i32 %78, -1
  %sub102 = add i32 %76, %79
  %conv103 = trunc i32 %sub102 to i16
  store i16 %conv103, ptr %dist, align 2
  %80 = load ptr, ptr %s.addr, align 8
  %d_buf = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 51
  %81 = load ptr, ptr %d_buf, align 8
  %last_lit = getelementptr inbounds %struct.internal_state, ptr %80, i64 0, i32 50
  %82 = load i32, ptr %last_lit, align 4
  %idxprom104 = zext i32 %82 to i64
  %arrayidx105 = getelementptr inbounds i16, ptr %81, i64 %idxprom104
  store i16 %conv103, ptr %arrayidx105, align 2
  %83 = load i8, ptr %len, align 1
  %84 = load ptr, ptr %s.addr, align 8
  %l_buf = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 48
  %85 = load ptr, ptr %l_buf, align 8
  %last_lit106 = getelementptr inbounds %struct.internal_state, ptr %84, i64 0, i32 50
  %86 = load i32, ptr %last_lit106, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %last_lit106, align 4
  %idxprom107 = zext i32 %86 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %85, i64 %idxprom107
  store i8 %83, ptr %arrayidx108, align 1
  %87 = load i16, ptr %dist, align 2
  %dec = add i16 %87, -1
  store i16 %dec, ptr %dist, align 2
  %88 = load ptr, ptr %s.addr, align 8
  %89 = load i8, ptr %len, align 1
  %idxprom109 = zext i8 %89 to i64
  %arrayidx110 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %idxprom109
  %90 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %90 to i64
  %add113 = add nuw nsw i64 %conv111, 257
  %arrayidx115 = getelementptr inbounds %struct.internal_state, ptr %88, i64 0, i32 37, i64 %add113
  %91 = load i16, ptr %arrayidx115, align 4
  %inc116 = add i16 %91, 1
  store i16 %inc116, ptr %arrayidx115, align 4
  %92 = load ptr, ptr %s.addr, align 8
  %93 = load i16, ptr %dist, align 2
  %cmp118 = icmp ult i16 %93, 256
  %94 = load i16, ptr %dist, align 2
  %95 = load i16, ptr %dist, align 2
  %96 = lshr i16 %95, 7
  %narrow = add nuw nsw i16 %96, 256
  %idxprom120.pn.in = select i1 %cmp118, i16 %94, i16 %narrow
  %idxprom120.pn = zext i16 %idxprom120.pn.in to i64
  %cond.in.in = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %idxprom120.pn
  %cond.in = load i8, ptr %cond.in.in, align 1
  %idxprom128 = zext i8 %cond.in to i64
  %arrayidx129 = getelementptr inbounds %struct.internal_state, ptr %92, i64 0, i32 38, i64 %idxprom128
  %97 = load i16, ptr %arrayidx129, align 4
  %inc131 = add i16 %97, 1
  store i16 %inc131, ptr %arrayidx129, align 4
  %98 = load ptr, ptr %s.addr, align 8
  %last_lit132 = getelementptr inbounds %struct.internal_state, ptr %98, i64 0, i32 50
  %99 = load i32, ptr %last_lit132, align 4
  %lit_bufsize = getelementptr inbounds %struct.internal_state, ptr %98, i64 0, i32 49
  %100 = load i32, ptr %lit_bufsize, align 8
  %sub133 = add i32 %100, -1
  %cmp134 = icmp eq i32 %99, %sub133
  %conv135 = zext i1 %cmp134 to i32
  store i32 %conv135, ptr %bflush, align 4
  %101 = load ptr, ptr %s.addr, align 8
  %prev_length136 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 30
  %102 = load i32, ptr %prev_length136, align 8
  %sub137 = add i32 %102, -1
  %lookahead138 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 29
  %103 = load i32, ptr %lookahead138, align 4
  %sub139 = sub i32 %103, %sub137
  store i32 %sub139, ptr %lookahead138, align 4
  %104 = load ptr, ptr %s.addr, align 8
  %prev_length140 = getelementptr inbounds %struct.internal_state, ptr %104, i64 0, i32 30
  %105 = load i32, ptr %prev_length140, align 8
  %sub141 = add i32 %105, -2
  store i32 %sub141, ptr %prev_length140, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then91
  %106 = load ptr, ptr %s.addr, align 8
  %strstart142 = getelementptr inbounds %struct.internal_state, ptr %106, i64 0, i32 27
  %107 = load i32, ptr %strstart142, align 4
  %inc143 = add i32 %107, 1
  store i32 %inc143, ptr %strstart142, align 4
  %108 = load i32, ptr %max_insert, align 4
  %cmp144.not = icmp ugt i32 %inc143, %108
  br i1 %cmp144.not, label %do.cond, label %if.then146

if.then146:                                       ; preds = %do.body
  %109 = load ptr, ptr %s.addr, align 8
  %ins_h147 = getelementptr inbounds %struct.internal_state, ptr %109, i64 0, i32 18
  %110 = load i32, ptr %ins_h147, align 8
  %hash_shift148 = getelementptr inbounds %struct.internal_state, ptr %109, i64 0, i32 22
  %111 = load i32, ptr %hash_shift148, align 8
  %shl149 = shl i32 %110, %111
  %window150 = getelementptr inbounds %struct.internal_state, ptr %109, i64 0, i32 14
  %112 = load ptr, ptr %window150, align 8
  %113 = load ptr, ptr %s.addr, align 8
  %strstart151 = getelementptr inbounds %struct.internal_state, ptr %113, i64 0, i32 27
  %114 = load i32, ptr %strstart151, align 4
  %add152 = add i32 %114, 2
  %idxprom153 = zext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds i8, ptr %112, i64 %idxprom153
  %115 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %115 to i32
  %xor156 = xor i32 %shl149, %conv155
  %116 = load ptr, ptr %s.addr, align 8
  %hash_mask157 = getelementptr inbounds %struct.internal_state, ptr %116, i64 0, i32 21
  %117 = load i32, ptr %hash_mask157, align 4
  %and158 = and i32 %xor156, %117
  %ins_h159 = getelementptr inbounds %struct.internal_state, ptr %116, i64 0, i32 18
  store i32 %and158, ptr %ins_h159, align 8
  %head160 = getelementptr inbounds %struct.internal_state, ptr %116, i64 0, i32 17
  %118 = load ptr, ptr %head160, align 8
  %119 = load ptr, ptr %s.addr, align 8
  %ins_h161 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 18
  %120 = load i32, ptr %ins_h161, align 8
  %idxprom162 = zext i32 %120 to i64
  %arrayidx163 = getelementptr inbounds i16, ptr %118, i64 %idxprom162
  %121 = load i16, ptr %arrayidx163, align 2
  %prev164 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 16
  %122 = load ptr, ptr %prev164, align 8
  %123 = load ptr, ptr %s.addr, align 8
  %strstart165 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 27
  %124 = load i32, ptr %strstart165, align 4
  %w_mask166 = getelementptr inbounds %struct.internal_state, ptr %123, i64 0, i32 13
  %125 = load i32, ptr %w_mask166, align 4
  %and167 = and i32 %124, %125
  %idxprom168 = zext i32 %and167 to i64
  %arrayidx169 = getelementptr inbounds i16, ptr %122, i64 %idxprom168
  store i16 %121, ptr %arrayidx169, align 2
  %conv170 = zext i16 %121 to i32
  store i32 %conv170, ptr %hash_head, align 4
  %126 = load ptr, ptr %s.addr, align 8
  %strstart171 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 27
  %127 = load i32, ptr %strstart171, align 4
  %conv172 = trunc i32 %127 to i16
  %head173 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 17
  %128 = load ptr, ptr %head173, align 8
  %ins_h174 = getelementptr inbounds %struct.internal_state, ptr %126, i64 0, i32 18
  %129 = load i32, ptr %ins_h174, align 8
  %idxprom175 = zext i32 %129 to i64
  %arrayidx176 = getelementptr inbounds i16, ptr %128, i64 %idxprom175
  store i16 %conv172, ptr %arrayidx176, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then146
  %130 = load ptr, ptr %s.addr, align 8
  %prev_length178 = getelementptr inbounds %struct.internal_state, ptr %130, i64 0, i32 30
  %131 = load i32, ptr %prev_length178, align 8
  %dec179 = add i32 %131, -1
  store i32 %dec179, ptr %prev_length178, align 8
  %cmp180.not = icmp eq i32 %dec179, 0
  br i1 %cmp180.not, label %do.end, label %do.body, !llvm.loop !12

do.end:                                           ; preds = %do.cond
  %132 = load ptr, ptr %s.addr, align 8
  %match_available = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 26
  store i32 0, ptr %match_available, align 8
  %match_length182 = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 24
  store i32 2, ptr %match_length182, align 8
  %strstart183 = getelementptr inbounds %struct.internal_state, ptr %132, i64 0, i32 27
  %133 = load i32, ptr %strstart183, align 4
  %inc184 = add i32 %133, 1
  store i32 %inc184, ptr %strstart183, align 4
  %134 = load i32, ptr %bflush, align 4
  %tobool.not = icmp eq i32 %134, 0
  br i1 %tobool.not, label %if.end278, label %if.then185

if.then185:                                       ; preds = %do.end
  %135 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %135, i64 0, i32 23
  %136 = load i64, ptr %block_start, align 8
  %cmp186 = icmp sgt i64 %136, -1
  br i1 %cmp186, label %cond.true188, label %cond.end195

cond.true188:                                     ; preds = %if.then185
  %137 = load ptr, ptr %s.addr, align 8
  %window189 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 14
  %138 = load ptr, ptr %window189, align 8
  %block_start190 = getelementptr inbounds %struct.internal_state, ptr %137, i64 0, i32 23
  %139 = load i64, ptr %block_start190, align 8
  %idxprom192 = and i64 %139, 4294967295
  %arrayidx193 = getelementptr inbounds i8, ptr %138, i64 %idxprom192
  br label %cond.end195

cond.end195:                                      ; preds = %if.then185, %cond.true188
  %cond196 = phi ptr [ %arrayidx193, %cond.true188 ], [ null, %if.then185 ]
  %140 = load ptr, ptr %s.addr, align 8
  %strstart197 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 27
  %141 = load i32, ptr %strstart197, align 4
  %conv198 = zext i32 %141 to i64
  %block_start199 = getelementptr inbounds %struct.internal_state, ptr %140, i64 0, i32 23
  %142 = load i64, ptr %block_start199, align 8
  %sub200 = sub nsw i64 %conv198, %142
  call void @_tr_flush_block(ptr noundef %135, ptr noundef %cond196, i64 noundef %sub200, i32 noundef 0) #5
  %143 = load ptr, ptr %s.addr, align 8
  %strstart201 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 27
  %144 = load i32, ptr %strstart201, align 4
  %conv202 = zext i32 %144 to i64
  %block_start203 = getelementptr inbounds %struct.internal_state, ptr %143, i64 0, i32 23
  store i64 %conv202, ptr %block_start203, align 8
  %145 = load ptr, ptr %143, align 8
  call void @flush_pending(ptr noundef %145)
  %146 = load ptr, ptr %s.addr, align 8
  %147 = load ptr, ptr %146, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %147, i64 0, i32 4
  %148 = load i32, ptr %avail_out, align 8
  %cmp205 = icmp eq i32 %148, 0
  br i1 %cmp205, label %if.then207, label %if.end278

if.then207:                                       ; preds = %cond.end195
  store i32 0, ptr %retval, align 4
  br label %return

if.else210:                                       ; preds = %land.lhs.true86, %if.end82
  %149 = load ptr, ptr %s.addr, align 8
  %match_available211 = getelementptr inbounds %struct.internal_state, ptr %149, i64 0, i32 26
  %150 = load i32, ptr %match_available211, align 8
  %tobool212.not = icmp eq i32 %150, 0
  br i1 %tobool212.not, label %if.else271, label %if.then213

if.then213:                                       ; preds = %if.else210
  %151 = load ptr, ptr %s.addr, align 8
  %window214 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 14
  %152 = load ptr, ptr %window214, align 8
  %strstart215 = getelementptr inbounds %struct.internal_state, ptr %151, i64 0, i32 27
  %153 = load i32, ptr %strstart215, align 4
  %sub216 = add i32 %153, -1
  %idxprom217 = zext i32 %sub216 to i64
  %arrayidx218 = getelementptr inbounds i8, ptr %152, i64 %idxprom217
  %154 = load i8, ptr %arrayidx218, align 1
  store i8 %154, ptr %cc, align 1
  %155 = load ptr, ptr %s.addr, align 8
  %d_buf219 = getelementptr inbounds %struct.internal_state, ptr %155, i64 0, i32 51
  %156 = load ptr, ptr %d_buf219, align 8
  %last_lit220 = getelementptr inbounds %struct.internal_state, ptr %155, i64 0, i32 50
  %157 = load i32, ptr %last_lit220, align 4
  %idxprom221 = zext i32 %157 to i64
  %arrayidx222 = getelementptr inbounds i16, ptr %156, i64 %idxprom221
  store i16 0, ptr %arrayidx222, align 2
  %158 = load i8, ptr %cc, align 1
  %159 = load ptr, ptr %s.addr, align 8
  %l_buf223 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 48
  %160 = load ptr, ptr %l_buf223, align 8
  %last_lit224 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 50
  %161 = load i32, ptr %last_lit224, align 4
  %inc225 = add i32 %161, 1
  store i32 %inc225, ptr %last_lit224, align 4
  %idxprom226 = zext i32 %161 to i64
  %arrayidx227 = getelementptr inbounds i8, ptr %160, i64 %idxprom226
  store i8 %158, ptr %arrayidx227, align 1
  %162 = load ptr, ptr %s.addr, align 8
  %163 = load i8, ptr %cc, align 1
  %idxprom229 = zext i8 %163 to i64
  %arrayidx230 = getelementptr inbounds %struct.internal_state, ptr %162, i64 0, i32 37, i64 %idxprom229
  %164 = load i16, ptr %arrayidx230, align 4
  %inc232 = add i16 %164, 1
  store i16 %inc232, ptr %arrayidx230, align 4
  %165 = load ptr, ptr %s.addr, align 8
  %last_lit233 = getelementptr inbounds %struct.internal_state, ptr %165, i64 0, i32 50
  %166 = load i32, ptr %last_lit233, align 4
  %lit_bufsize234 = getelementptr inbounds %struct.internal_state, ptr %165, i64 0, i32 49
  %167 = load i32, ptr %lit_bufsize234, align 8
  %sub235 = add i32 %167, -1
  %cmp236 = icmp eq i32 %166, %sub235
  %conv237 = zext i1 %cmp236 to i32
  store i32 %conv237, ptr %bflush, align 4
  br i1 %cmp236, label %if.then239, label %if.end260

if.then239:                                       ; preds = %if.then213
  %168 = load ptr, ptr %s.addr, align 8
  %block_start240 = getelementptr inbounds %struct.internal_state, ptr %168, i64 0, i32 23
  %169 = load i64, ptr %block_start240, align 8
  %cmp241 = icmp sgt i64 %169, -1
  br i1 %cmp241, label %cond.true243, label %cond.end250

cond.true243:                                     ; preds = %if.then239
  %170 = load ptr, ptr %s.addr, align 8
  %window244 = getelementptr inbounds %struct.internal_state, ptr %170, i64 0, i32 14
  %171 = load ptr, ptr %window244, align 8
  %block_start245 = getelementptr inbounds %struct.internal_state, ptr %170, i64 0, i32 23
  %172 = load i64, ptr %block_start245, align 8
  %idxprom247 = and i64 %172, 4294967295
  %arrayidx248 = getelementptr inbounds i8, ptr %171, i64 %idxprom247
  br label %cond.end250

cond.end250:                                      ; preds = %if.then239, %cond.true243
  %cond251 = phi ptr [ %arrayidx248, %cond.true243 ], [ null, %if.then239 ]
  %173 = load ptr, ptr %s.addr, align 8
  %strstart252 = getelementptr inbounds %struct.internal_state, ptr %173, i64 0, i32 27
  %174 = load i32, ptr %strstart252, align 4
  %conv253 = zext i32 %174 to i64
  %block_start254 = getelementptr inbounds %struct.internal_state, ptr %173, i64 0, i32 23
  %175 = load i64, ptr %block_start254, align 8
  %sub255 = sub nsw i64 %conv253, %175
  call void @_tr_flush_block(ptr noundef %168, ptr noundef %cond251, i64 noundef %sub255, i32 noundef 0) #5
  %176 = load ptr, ptr %s.addr, align 8
  %strstart256 = getelementptr inbounds %struct.internal_state, ptr %176, i64 0, i32 27
  %177 = load i32, ptr %strstart256, align 4
  %conv257 = zext i32 %177 to i64
  %block_start258 = getelementptr inbounds %struct.internal_state, ptr %176, i64 0, i32 23
  store i64 %conv257, ptr %block_start258, align 8
  %178 = load ptr, ptr %176, align 8
  call void @flush_pending(ptr noundef %178)
  br label %if.end260

if.end260:                                        ; preds = %cond.end250, %if.then213
  %179 = load ptr, ptr %s.addr, align 8
  %strstart261 = getelementptr inbounds %struct.internal_state, ptr %179, i64 0, i32 27
  %180 = load i32, ptr %strstart261, align 4
  %inc262 = add i32 %180, 1
  store i32 %inc262, ptr %strstart261, align 4
  %lookahead263 = getelementptr inbounds %struct.internal_state, ptr %179, i64 0, i32 29
  %181 = load i32, ptr %lookahead263, align 4
  %dec264 = add i32 %181, -1
  store i32 %dec264, ptr %lookahead263, align 4
  %182 = load ptr, ptr %s.addr, align 8
  %183 = load ptr, ptr %182, align 8
  %avail_out266 = getelementptr inbounds %struct.z_stream_s, ptr %183, i64 0, i32 4
  %184 = load i32, ptr %avail_out266, align 8
  %cmp267 = icmp eq i32 %184, 0
  br i1 %cmp267, label %if.then269, label %if.end278

if.then269:                                       ; preds = %if.end260
  store i32 0, ptr %retval, align 4
  br label %return

if.else271:                                       ; preds = %if.else210
  %185 = load ptr, ptr %s.addr, align 8
  %match_available272 = getelementptr inbounds %struct.internal_state, ptr %185, i64 0, i32 26
  store i32 1, ptr %match_available272, align 8
  %strstart273 = getelementptr inbounds %struct.internal_state, ptr %185, i64 0, i32 27
  %186 = load i32, ptr %strstart273, align 4
  %inc274 = add i32 %186, 1
  store i32 %inc274, ptr %strstart273, align 4
  %187 = load ptr, ptr %s.addr, align 8
  %lookahead275 = getelementptr inbounds %struct.internal_state, ptr %187, i64 0, i32 29
  %188 = load i32, ptr %lookahead275, align 4
  %dec276 = add i32 %188, -1
  store i32 %dec276, ptr %lookahead275, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.else271, %if.end260, %do.end, %cond.end195
  br label %for.cond

for.end:                                          ; preds = %if.end
  %189 = load ptr, ptr %s.addr, align 8
  %match_available279 = getelementptr inbounds %struct.internal_state, ptr %189, i64 0, i32 26
  %190 = load i32, ptr %match_available279, align 8
  %tobool280.not = icmp eq i32 %190, 0
  br i1 %tobool280.not, label %if.end308, label %if.then281

if.then281:                                       ; preds = %for.end
  %191 = load ptr, ptr %s.addr, align 8
  %window283 = getelementptr inbounds %struct.internal_state, ptr %191, i64 0, i32 14
  %192 = load ptr, ptr %window283, align 8
  %strstart284 = getelementptr inbounds %struct.internal_state, ptr %191, i64 0, i32 27
  %193 = load i32, ptr %strstart284, align 4
  %sub285 = add i32 %193, -1
  %idxprom286 = zext i32 %sub285 to i64
  %arrayidx287 = getelementptr inbounds i8, ptr %192, i64 %idxprom286
  %194 = load i8, ptr %arrayidx287, align 1
  store i8 %194, ptr %cc282, align 1
  %195 = load ptr, ptr %s.addr, align 8
  %d_buf288 = getelementptr inbounds %struct.internal_state, ptr %195, i64 0, i32 51
  %196 = load ptr, ptr %d_buf288, align 8
  %last_lit289 = getelementptr inbounds %struct.internal_state, ptr %195, i64 0, i32 50
  %197 = load i32, ptr %last_lit289, align 4
  %idxprom290 = zext i32 %197 to i64
  %arrayidx291 = getelementptr inbounds i16, ptr %196, i64 %idxprom290
  store i16 0, ptr %arrayidx291, align 2
  %198 = load i8, ptr %cc282, align 1
  %199 = load ptr, ptr %s.addr, align 8
  %l_buf292 = getelementptr inbounds %struct.internal_state, ptr %199, i64 0, i32 48
  %200 = load ptr, ptr %l_buf292, align 8
  %last_lit293 = getelementptr inbounds %struct.internal_state, ptr %199, i64 0, i32 50
  %201 = load i32, ptr %last_lit293, align 4
  %inc294 = add i32 %201, 1
  store i32 %inc294, ptr %last_lit293, align 4
  %idxprom295 = zext i32 %201 to i64
  %arrayidx296 = getelementptr inbounds i8, ptr %200, i64 %idxprom295
  store i8 %198, ptr %arrayidx296, align 1
  %202 = load ptr, ptr %s.addr, align 8
  %203 = load i8, ptr %cc282, align 1
  %idxprom298 = zext i8 %203 to i64
  %arrayidx299 = getelementptr inbounds %struct.internal_state, ptr %202, i64 0, i32 37, i64 %idxprom298
  %204 = load i16, ptr %arrayidx299, align 4
  %inc301 = add i16 %204, 1
  store i16 %inc301, ptr %arrayidx299, align 4
  %205 = load ptr, ptr %s.addr, align 8
  %last_lit302 = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 50
  %206 = load i32, ptr %last_lit302, align 4
  %lit_bufsize303 = getelementptr inbounds %struct.internal_state, ptr %205, i64 0, i32 49
  %207 = load i32, ptr %lit_bufsize303, align 8
  %sub304 = add i32 %207, -1
  %cmp305 = icmp eq i32 %206, %sub304
  %conv306 = zext i1 %cmp305 to i32
  store i32 %conv306, ptr %bflush, align 4
  %208 = load ptr, ptr %s.addr, align 8
  %match_available307 = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 26
  store i32 0, ptr %match_available307, align 8
  br label %if.end308

if.end308:                                        ; preds = %if.then281, %for.end
  %209 = load ptr, ptr %s.addr, align 8
  %block_start309 = getelementptr inbounds %struct.internal_state, ptr %209, i64 0, i32 23
  %210 = load i64, ptr %block_start309, align 8
  %cmp310 = icmp sgt i64 %210, -1
  br i1 %cmp310, label %cond.true312, label %cond.end319

cond.true312:                                     ; preds = %if.end308
  %211 = load ptr, ptr %s.addr, align 8
  %window313 = getelementptr inbounds %struct.internal_state, ptr %211, i64 0, i32 14
  %212 = load ptr, ptr %window313, align 8
  %block_start314 = getelementptr inbounds %struct.internal_state, ptr %211, i64 0, i32 23
  %213 = load i64, ptr %block_start314, align 8
  %idxprom316 = and i64 %213, 4294967295
  %arrayidx317 = getelementptr inbounds i8, ptr %212, i64 %idxprom316
  br label %cond.end319

cond.end319:                                      ; preds = %if.end308, %cond.true312
  %cond320 = phi ptr [ %arrayidx317, %cond.true312 ], [ null, %if.end308 ]
  %214 = load ptr, ptr %s.addr, align 8
  %strstart321 = getelementptr inbounds %struct.internal_state, ptr %214, i64 0, i32 27
  %215 = load i32, ptr %strstart321, align 4
  %conv322 = zext i32 %215 to i64
  %block_start323 = getelementptr inbounds %struct.internal_state, ptr %214, i64 0, i32 23
  %216 = load i64, ptr %block_start323, align 8
  %sub324 = sub nsw i64 %conv322, %216
  %217 = load i32, ptr %flush.addr, align 4
  %cmp325 = icmp eq i32 %217, 4
  %conv326 = zext i1 %cmp325 to i32
  call void @_tr_flush_block(ptr noundef %209, ptr noundef %cond320, i64 noundef %sub324, i32 noundef %conv326) #5
  %218 = load ptr, ptr %s.addr, align 8
  %strstart327 = getelementptr inbounds %struct.internal_state, ptr %218, i64 0, i32 27
  %219 = load i32, ptr %strstart327, align 4
  %conv328 = zext i32 %219 to i64
  %block_start329 = getelementptr inbounds %struct.internal_state, ptr %218, i64 0, i32 23
  store i64 %conv328, ptr %block_start329, align 8
  %220 = load ptr, ptr %218, align 8
  call void @flush_pending(ptr noundef %220)
  %221 = load ptr, ptr %s.addr, align 8
  %222 = load ptr, ptr %221, align 8
  %avail_out332 = getelementptr inbounds %struct.z_stream_s, ptr %222, i64 0, i32 4
  %223 = load i32, ptr %avail_out332, align 8
  %cmp333 = icmp eq i32 %223, 0
  br i1 %cmp333, label %if.then335, label %if.end339

if.then335:                                       ; preds = %cond.end319
  %224 = load i32, ptr %flush.addr, align 4
  %cmp336 = icmp eq i32 %224, 4
  %cond338 = select i1 %cmp336, i32 2, i32 0
  store i32 %cond338, ptr %retval, align 4
  br label %return

if.end339:                                        ; preds = %cond.end319
  %225 = load i32, ptr %flush.addr, align 4
  %cmp340 = icmp eq i32 %225, 4
  %cond342 = select i1 %cmp340, i32 3, i32 1
  store i32 %cond342, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end339, %if.then335, %if.then269, %if.then207, %if.then4
  %226 = load i32, ptr %retval, align 4
  ret i32 %226
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
  %w_size = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 11
  %0 = load i32, ptr %w_size, align 4
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
  %9 = load i32, ptr %w_size5, align 4
  %sub6 = add i32 %9, -262
  %add = add i32 %8, %sub6
  %cmp.not = icmp ult i32 %7, %add
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %10 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.internal_state, ptr %10, i64 0, i32 14
  %11 = load ptr, ptr %window, align 8
  %12 = load i32, ptr %wsize, align 4
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %conv9 = zext i32 %12 to i64
  %13 = load ptr, ptr %s.addr, align 8
  %window10 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 14
  %14 = load ptr, ptr %window10, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %11, ptr noundef %add.ptr, i64 noundef %conv9, i64 noundef %15) #5
  %16 = load i32, ptr %wsize, align 4
  %match_start = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 28
  %17 = load i32, ptr %match_start, align 8
  %sub11 = sub i32 %17, %16
  store i32 %sub11, ptr %match_start, align 8
  %18 = load ptr, ptr %s.addr, align 8
  %strstart12 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 27
  %19 = load i32, ptr %strstart12, align 4
  %sub13 = sub i32 %19, %16
  store i32 %sub13, ptr %strstart12, align 4
  %20 = load i32, ptr %wsize, align 4
  %conv14 = zext i32 %20 to i64
  %21 = load ptr, ptr %s.addr, align 8
  %block_start = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 23
  %22 = load i64, ptr %block_start, align 8
  %sub15 = sub nsw i64 %22, %conv14
  store i64 %sub15, ptr %block_start, align 8
  %hash_size = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 19
  %23 = load i32, ptr %hash_size, align 4
  store i32 %23, ptr %n, align 4
  %24 = load ptr, ptr %s.addr, align 8
  %head = getelementptr inbounds %struct.internal_state, ptr %24, i64 0, i32 17
  %25 = load ptr, ptr %head, align 8
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr inbounds i16, ptr %25, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  br label %do.body16

do.body16:                                        ; preds = %do.body16, %if.then
  %26 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %26, i64 -1
  store ptr %incdec.ptr, ptr %p, align 8
  %27 = load i16, ptr %incdec.ptr, align 2
  %conv17 = zext i16 %27 to i32
  store i32 %conv17, ptr %m, align 4
  %28 = load i32, ptr %wsize, align 4
  %cmp18.not = icmp ugt i32 %28, %conv17
  %29 = load i32, ptr %m, align 4
  %30 = load i32, ptr %wsize, align 4
  %sub20 = sub i32 %29, %30
  %cond = select i1 %cmp18.not, i32 0, i32 %sub20
  %conv21 = trunc i32 %cond to i16
  %31 = load ptr, ptr %p, align 8
  store i16 %conv21, ptr %31, align 2
  %32 = load i32, ptr %n, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %n, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body16, !llvm.loop !13

do.end:                                           ; preds = %do.body16
  %33 = load i32, ptr %wsize, align 4
  store i32 %33, ptr %n, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %prev = getelementptr inbounds %struct.internal_state, ptr %34, i64 0, i32 16
  %35 = load ptr, ptr %prev, align 8
  %idxprom22 = zext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %35, i64 %idxprom22
  store ptr %arrayidx23, ptr %p, align 8
  br label %do.body24

do.body24:                                        ; preds = %do.body24, %do.end
  %36 = load ptr, ptr %p, align 8
  %incdec.ptr25 = getelementptr inbounds i16, ptr %36, i64 -1
  store ptr %incdec.ptr25, ptr %p, align 8
  %37 = load i16, ptr %incdec.ptr25, align 2
  %conv26 = zext i16 %37 to i32
  store i32 %conv26, ptr %m, align 4
  %38 = load i32, ptr %wsize, align 4
  %cmp27.not = icmp ugt i32 %38, %conv26
  %39 = load i32, ptr %m, align 4
  %40 = load i32, ptr %wsize, align 4
  %sub30 = sub i32 %39, %40
  %cond33 = select i1 %cmp27.not, i32 0, i32 %sub30
  %conv34 = trunc i32 %cond33 to i16
  %41 = load ptr, ptr %p, align 8
  store i16 %conv34, ptr %41, align 2
  %42 = load i32, ptr %n, align 4
  %dec36 = add i32 %42, -1
  store i32 %dec36, ptr %n, align 4
  %tobool37.not = icmp eq i32 %dec36, 0
  br i1 %tobool37.not, label %do.end38, label %do.body24, !llvm.loop !14

do.end38:                                         ; preds = %do.body24
  %43 = load i32, ptr %wsize, align 4
  %44 = load i32, ptr %more, align 4
  %add39 = add i32 %44, %43
  store i32 %add39, ptr %more, align 4
  br label %if.end

if.end:                                           ; preds = %do.end38, %do.body
  %45 = load ptr, ptr %s.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 1
  %47 = load i32, ptr %avail_in, align 8
  %cmp40 = icmp eq i32 %47, 0
  br i1 %cmp40, label %do.end81, label %if.end43

if.end43:                                         ; preds = %if.end
  %48 = load ptr, ptr %s.addr, align 8
  %49 = load ptr, ptr %48, align 8
  %window45 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 14
  %50 = load ptr, ptr %window45, align 8
  %strstart46 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 27
  %51 = load i32, ptr %strstart46, align 4
  %idx.ext47 = zext i32 %51 to i64
  %add.ptr48 = getelementptr inbounds i8, ptr %50, i64 %idx.ext47
  %52 = load ptr, ptr %s.addr, align 8
  %lookahead49 = getelementptr inbounds %struct.internal_state, ptr %52, i64 0, i32 29
  %53 = load i32, ptr %lookahead49, align 4
  %idx.ext50 = zext i32 %53 to i64
  %add.ptr51 = getelementptr inbounds i8, ptr %add.ptr48, i64 %idx.ext50
  %54 = load i32, ptr %more, align 4
  %call52 = call i32 @read_buf(ptr noundef %49, ptr noundef %add.ptr51, i32 noundef %54)
  store i32 %call52, ptr %n, align 4
  %55 = load ptr, ptr %s.addr, align 8
  %lookahead53 = getelementptr inbounds %struct.internal_state, ptr %55, i64 0, i32 29
  %56 = load i32, ptr %lookahead53, align 4
  %add54 = add i32 %56, %call52
  store i32 %add54, ptr %lookahead53, align 4
  %cmp56 = icmp ugt i32 %add54, 2
  br i1 %cmp56, label %if.then58, label %do.cond73

if.then58:                                        ; preds = %if.end43
  %57 = load ptr, ptr %s.addr, align 8
  %window59 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 14
  %58 = load ptr, ptr %window59, align 8
  %strstart60 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 27
  %59 = load i32, ptr %strstart60, align 4
  %idxprom61 = zext i32 %59 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %58, i64 %idxprom61
  %60 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %60 to i32
  %61 = load ptr, ptr %s.addr, align 8
  %ins_h = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 18
  store i32 %conv63, ptr %ins_h, align 8
  %hash_shift = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 22
  %62 = load i32, ptr %hash_shift, align 8
  %shl = shl i32 %conv63, %62
  %window65 = getelementptr inbounds %struct.internal_state, ptr %61, i64 0, i32 14
  %63 = load ptr, ptr %window65, align 8
  %64 = load ptr, ptr %s.addr, align 8
  %strstart66 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 27
  %65 = load i32, ptr %strstart66, align 4
  %add67 = add i32 %65, 1
  %idxprom68 = zext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %63, i64 %idxprom68
  %66 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %66 to i32
  %xor = xor i32 %shl, %conv70
  %67 = load ptr, ptr %s.addr, align 8
  %hash_mask = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 21
  %68 = load i32, ptr %hash_mask, align 4
  %and = and i32 %xor, %68
  %ins_h71 = getelementptr inbounds %struct.internal_state, ptr %67, i64 0, i32 18
  store i32 %and, ptr %ins_h71, align 8
  br label %do.cond73

do.cond73:                                        ; preds = %if.end43, %if.then58
  %69 = load ptr, ptr %s.addr, align 8
  %lookahead74 = getelementptr inbounds %struct.internal_state, ptr %69, i64 0, i32 29
  %70 = load i32, ptr %lookahead74, align 4
  %cmp75 = icmp ult i32 %70, 262
  br i1 %cmp75, label %land.rhs, label %do.end81

land.rhs:                                         ; preds = %do.cond73
  %71 = load ptr, ptr %s.addr, align 8
  %72 = load ptr, ptr %71, align 8
  %avail_in78 = getelementptr inbounds %struct.z_stream_s, ptr %72, i64 0, i32 1
  %73 = load i32, ptr %avail_in78, align 8
  %cmp79 = icmp ne i32 %73, 0
  br i1 %cmp79, label %do.body, label %do.end81, !llvm.loop !15

do.end81:                                         ; preds = %do.cond73, %if.end, %land.rhs
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
  %wrap = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 6
  %7 = load i32, ptr %wrap, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %8 = load ptr, ptr %strm.addr, align 8
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 12
  %9 = load i64, ptr %adler, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load i32, ptr %len, align 4
  %call = call i64 @adler32(i64 noundef %9, ptr noundef %10, i32 noundef %11) #5
  %adler7 = getelementptr inbounds %struct.z_stream_s, ptr %8, i64 0, i32 12
  store i64 %call, ptr %adler7, align 8
  br label %if.end17

if.else:                                          ; preds = %if.end3
  %12 = load ptr, ptr %strm.addr, align 8
  %state8 = getelementptr inbounds %struct.z_stream_s, ptr %12, i64 0, i32 7
  %13 = load ptr, ptr %state8, align 8
  %wrap9 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 6
  %14 = load i32, ptr %wrap9, align 4
  %cmp10 = icmp eq i32 %14, 2
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.else
  %15 = load ptr, ptr %strm.addr, align 8
  %adler12 = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 12
  %16 = load i64, ptr %adler12, align 8
  %17 = load ptr, ptr %15, align 8
  %18 = load i32, ptr %len, align 4
  %call14 = call i64 @crc32(i64 noundef %16, ptr noundef %17, i32 noundef %18) #5
  %adler15 = getelementptr inbounds %struct.z_stream_s, ptr %15, i64 0, i32 12
  store i64 %call14, ptr %adler15, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then11, %if.then6
  %19 = load ptr, ptr %buf.addr, align 8
  %20 = load ptr, ptr %strm.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %len, align 4
  %conv = zext i32 %22 to i64
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call19 = call ptr @__memcpy_chk(ptr noundef %19, ptr noundef %21, i64 noundef %conv, i64 noundef %23) #5
  %24 = load ptr, ptr %20, align 8
  %idx.ext = zext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  store ptr %add.ptr, ptr %20, align 8
  %25 = load i32, ptr %len, align 4
  %conv21 = zext i32 %25 to i64
  %26 = load ptr, ptr %strm.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %26, i64 0, i32 2
  %27 = load i64, ptr %total_in, align 8
  %add = add i64 %27, %conv21
  store i64 %add, ptr %total_in, align 8
  %28 = load i32, ptr %len, align 4
  br label %return

return:                                           ; preds = %if.end, %if.end17
  %storemerge = phi i32 [ %28, %if.end17 ], [ 0, %if.end ]
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
  %8 = load i32, ptr %w_size, align 4
  %sub = add i32 %8, -262
  %cmp = icmp ugt i32 %7, %sub
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %9 = load ptr, ptr %s.addr, align 8
  %strstart3 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 27
  %10 = load i32, ptr %strstart3, align 4
  %w_size4 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %w_size4, align 4
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
  %14 = load i32, ptr %w_mask, align 4
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
  br i1 %cmp107, label %do.body52, label %do.end, !llvm.loop !16

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
  br i1 %cmp132, label %do.body, label %do.end135, !llvm.loop !17

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
  %window = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 14
  %0 = load ptr, ptr %window, align 8
  %strstart = getelementptr inbounds %struct.internal_state, ptr %s, i64 0, i32 27
  %1 = load i32, ptr %strstart, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %scan, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %window1 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 14
  %3 = load ptr, ptr %window1, align 8
  %strstart2 = getelementptr inbounds %struct.internal_state, ptr %2, i64 0, i32 27
  %4 = load i32, ptr %strstart2, align 4
  %idx.ext3 = zext i32 %4 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %3, i64 %idx.ext3
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr4, i64 258
  store ptr %add.ptr5, ptr %strend, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %window6 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 14
  %6 = load ptr, ptr %window6, align 8
  %7 = load i32, ptr %cur_match.addr, align 4
  %idx.ext7 = zext i32 %7 to i64
  %add.ptr8 = getelementptr inbounds i8, ptr %6, i64 %idx.ext7
  store ptr %add.ptr8, ptr %match, align 8
  %8 = load i8, ptr %add.ptr8, align 1
  %9 = load ptr, ptr %scan, align 8
  %10 = load i8, ptr %9, align 1
  %cmp.not = icmp eq i8 %8, %10
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %11 = load ptr, ptr %match, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx12, align 1
  %13 = load ptr, ptr %scan, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx14, align 1
  %cmp16.not = icmp eq i8 %12, %14
  br i1 %cmp16.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %15 = load ptr, ptr %scan, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %15, i64 2
  store ptr %add.ptr18, ptr %scan, align 8
  %16 = load ptr, ptr %match, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %16, i64 2
  store ptr %add.ptr19, ptr %match, align 8
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end
  %17 = load ptr, ptr %scan, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %scan, align 8
  %18 = load i8, ptr %incdec.ptr, align 1
  %19 = load ptr, ptr %match, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr21, ptr %match, align 8
  %20 = load i8, ptr %incdec.ptr21, align 1
  %cmp23 = icmp eq i8 %18, %20
  br i1 %cmp23, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %do.body
  %21 = load ptr, ptr %scan, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr25, ptr %scan, align 8
  %22 = load i8, ptr %incdec.ptr25, align 1
  %23 = load ptr, ptr %match, align 8
  %incdec.ptr27 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr27, ptr %match, align 8
  %24 = load i8, ptr %incdec.ptr27, align 1
  %cmp29 = icmp eq i8 %22, %24
  br i1 %cmp29, label %land.lhs.true31, label %do.end

land.lhs.true31:                                  ; preds = %land.lhs.true
  %25 = load ptr, ptr %scan, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr32, ptr %scan, align 8
  %26 = load i8, ptr %incdec.ptr32, align 1
  %27 = load ptr, ptr %match, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr34, ptr %match, align 8
  %28 = load i8, ptr %incdec.ptr34, align 1
  %cmp36 = icmp eq i8 %26, %28
  br i1 %cmp36, label %land.lhs.true38, label %do.end

land.lhs.true38:                                  ; preds = %land.lhs.true31
  %29 = load ptr, ptr %scan, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr39, ptr %scan, align 8
  %30 = load i8, ptr %incdec.ptr39, align 1
  %31 = load ptr, ptr %match, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr41, ptr %match, align 8
  %32 = load i8, ptr %incdec.ptr41, align 1
  %cmp43 = icmp eq i8 %30, %32
  br i1 %cmp43, label %land.lhs.true45, label %do.end

land.lhs.true45:                                  ; preds = %land.lhs.true38
  %33 = load ptr, ptr %scan, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr46, ptr %scan, align 8
  %34 = load i8, ptr %incdec.ptr46, align 1
  %35 = load ptr, ptr %match, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr48, ptr %match, align 8
  %36 = load i8, ptr %incdec.ptr48, align 1
  %cmp50 = icmp eq i8 %34, %36
  br i1 %cmp50, label %land.lhs.true52, label %do.end

land.lhs.true52:                                  ; preds = %land.lhs.true45
  %37 = load ptr, ptr %scan, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %incdec.ptr53, ptr %scan, align 8
  %38 = load i8, ptr %incdec.ptr53, align 1
  %39 = load ptr, ptr %match, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr55, ptr %match, align 8
  %40 = load i8, ptr %incdec.ptr55, align 1
  %cmp57 = icmp eq i8 %38, %40
  br i1 %cmp57, label %land.lhs.true59, label %do.end

land.lhs.true59:                                  ; preds = %land.lhs.true52
  %41 = load ptr, ptr %scan, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr60, ptr %scan, align 8
  %42 = load i8, ptr %incdec.ptr60, align 1
  %43 = load ptr, ptr %match, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %incdec.ptr62, ptr %match, align 8
  %44 = load i8, ptr %incdec.ptr62, align 1
  %cmp64 = icmp eq i8 %42, %44
  br i1 %cmp64, label %land.lhs.true66, label %do.end

land.lhs.true66:                                  ; preds = %land.lhs.true59
  %45 = load ptr, ptr %scan, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr67, ptr %scan, align 8
  %46 = load i8, ptr %incdec.ptr67, align 1
  %47 = load ptr, ptr %match, align 8
  %incdec.ptr69 = getelementptr inbounds i8, ptr %47, i64 1
  store ptr %incdec.ptr69, ptr %match, align 8
  %48 = load i8, ptr %incdec.ptr69, align 1
  %cmp71 = icmp eq i8 %46, %48
  br i1 %cmp71, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %land.lhs.true66
  %49 = load ptr, ptr %scan, align 8
  %50 = load ptr, ptr %strend, align 8
  %cmp73 = icmp ult ptr %49, %50
  br i1 %cmp73, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %land.lhs.true66, %land.lhs.true59, %land.lhs.true52, %land.lhs.true45, %land.lhs.true38, %land.lhs.true31, %land.lhs.true, %do.body, %land.rhs
  %51 = load ptr, ptr %strend, align 8
  %52 = load ptr, ptr %scan, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %51 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %52 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %conv75.neg = trunc i64 %sub.ptr.sub.neg to i32
  %sub = add i32 %conv75.neg, 258
  store i32 %sub, ptr %len, align 4
  %cmp76 = icmp slt i32 %sub, 3
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %do.end
  %53 = load i32, ptr %cur_match.addr, align 4
  %54 = load ptr, ptr %s.addr, align 8
  %match_start = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 28
  store i32 %53, ptr %match_start, align 8
  %55 = load i32, ptr %len, align 4
  %lookahead = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 29
  %56 = load i32, ptr %lookahead, align 4
  %cmp80.not = icmp ugt i32 %55, %56
  br i1 %cmp80.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end79
  %57 = load i32, ptr %len, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end79
  %58 = load ptr, ptr %s.addr, align 8
  %lookahead82 = getelementptr inbounds %struct.internal_state, ptr %58, i64 0, i32 29
  %59 = load i32, ptr %lookahead82, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %57, %cond.true ], [ %59, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then78, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
