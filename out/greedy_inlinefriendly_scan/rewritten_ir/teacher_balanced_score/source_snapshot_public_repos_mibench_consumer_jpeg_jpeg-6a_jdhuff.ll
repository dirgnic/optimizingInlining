; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdhuff.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdhuff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], ptr, [256 x i32], [256 x i8] }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.bitread_working_state = type { ptr, i64, i32, i64, i32, ptr, ptr }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.huff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x ptr], [4 x ptr] }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { [4 x i32] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }

@extend_test = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 4
@extend_offset = internal constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 4
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jpeg_make_d_derived_tbl(ptr noundef %cinfo, ptr noundef %htbl, ptr noundef %pdtbl) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %htbl.addr = alloca ptr, align 8
  %pdtbl.addr = alloca ptr, align 8
  %dtbl = alloca ptr, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %si = alloca i32, align 4
  %lookbits = alloca i32, align 4
  %ctr = alloca i32, align 4
  %huffsize = alloca [257 x i8], align 1
  %huffcode = alloca [257 x i32], align 4
  %code = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %htbl, ptr %htbl.addr, align 8
  store ptr %pdtbl, ptr %pdtbl.addr, align 8
  %0 = load ptr, ptr %pdtbl, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %mem, align 8
  %3 = load ptr, ptr %2, align 8
  %call = call ptr %3(ptr noundef %1, i32 noundef 1, i64 noundef 1640) #4
  %4 = load ptr, ptr %pdtbl.addr, align 8
  store ptr %call, ptr %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %pdtbl.addr, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %dtbl, align 8
  %7 = load ptr, ptr %htbl.addr, align 8
  %pub = getelementptr inbounds %struct.d_derived_tbl, ptr %6, i64 0, i32 3
  store ptr %7, ptr %pub, align 8
  store i32 0, ptr %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ %inc11, %for.inc10 ]
  store i32 %storemerge, ptr %l, align 4
  %cmp1 = icmp slt i32 %storemerge, 17
  br i1 %cmp1, label %for.cond2, label %for.end12

for.cond2:                                        ; preds = %for.cond, %for.body5
  %storemerge4 = phi i32 [ %inc9, %for.body5 ], [ 1, %for.cond ]
  store i32 %storemerge4, ptr %i, align 4
  %8 = load ptr, ptr %htbl.addr, align 8
  %9 = load i32, ptr %l, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [17 x i8], ptr %8, i64 0, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %cmp3.not = icmp sgt i32 %storemerge4, %conv
  br i1 %cmp3.not, label %for.inc10, label %for.body5

for.body5:                                        ; preds = %for.cond2
  %11 = load i32, ptr %l, align 4
  %conv6 = trunc i32 %11 to i8
  %12 = load i32, ptr %p, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %p, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom7
  store i8 %conv6, ptr %arrayidx8, align 1
  %13 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %13, 1
  br label %for.cond2, !llvm.loop !6

for.inc10:                                        ; preds = %for.cond2
  %14 = load i32, ptr %l, align 4
  %inc11 = add nsw i32 %14, 1
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
  %15 = load i32, ptr %p, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom13
  store i8 0, ptr %arrayidx14, align 1
  store i32 0, ptr %code, align 4
  %16 = load i8, ptr %huffsize, align 1
  %conv16 = sext i8 %16 to i32
  store i32 %conv16, ptr %si, align 4
  store i32 0, ptr %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end12
  %17 = load i32, ptr %p, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom17
  %18 = load i8, ptr %arrayidx18, align 1
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %while.end31, label %while.cond19

while.cond19:                                     ; preds = %while.cond, %while.body25
  %19 = load i32, ptr %p, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom20
  %20 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %20 to i32
  %21 = load i32, ptr %si, align 4
  %cmp23 = icmp eq i32 %21, %conv22
  br i1 %cmp23, label %while.body25, label %while.end

while.body25:                                     ; preds = %while.cond19
  %22 = load i32, ptr %code, align 4
  %23 = load i32, ptr %p, align 4
  %inc26 = add nsw i32 %23, 1
  store i32 %inc26, ptr %p, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom27
  store i32 %22, ptr %arrayidx28, align 4
  %24 = load i32, ptr %code, align 4
  %inc29 = add i32 %24, 1
  store i32 %inc29, ptr %code, align 4
  br label %while.cond19, !llvm.loop !9

while.end:                                        ; preds = %while.cond19
  %25 = load i32, ptr %code, align 4
  %shl = shl i32 %25, 1
  store i32 %shl, ptr %code, align 4
  %26 = load i32, ptr %si, align 4
  %inc30 = add nsw i32 %26, 1
  store i32 %inc30, ptr %si, align 4
  br label %while.cond, !llvm.loop !10

while.end31:                                      ; preds = %while.cond
  store i32 0, ptr %p, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc61, %while.end31
  %storemerge1 = phi i32 [ 1, %while.end31 ], [ %inc62, %for.inc61 ]
  store i32 %storemerge1, ptr %l, align 4
  %cmp33 = icmp slt i32 %storemerge1, 17
  br i1 %cmp33, label %for.body35, label %for.end63

for.body35:                                       ; preds = %for.cond32
  %27 = load ptr, ptr %htbl.addr, align 8
  %28 = load i32, ptr %l, align 4
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [17 x i8], ptr %27, i64 0, i64 %idxprom37
  %29 = load i8, ptr %arrayidx38, align 1
  %tobool39.not = icmp eq i8 %29, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %for.body35
  %30 = load i32, ptr %p, align 4
  %31 = load ptr, ptr %dtbl, align 8
  %32 = load i32, ptr %l, align 4
  %idxprom41 = sext i32 %32 to i64
  %arrayidx42 = getelementptr inbounds %struct.d_derived_tbl, ptr %31, i64 0, i32 2, i64 %idxprom41
  store i32 %30, ptr %arrayidx42, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom43
  %33 = load i32, ptr %arrayidx44, align 4
  %conv45 = zext i32 %33 to i64
  %34 = load ptr, ptr %dtbl, align 8
  %35 = load i32, ptr %l, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [17 x i64], ptr %34, i64 0, i64 %idxprom46
  store i64 %conv45, ptr %arrayidx47, align 8
  %36 = load ptr, ptr %htbl.addr, align 8
  %idxprom49 = sext i32 %35 to i64
  %arrayidx50 = getelementptr inbounds [17 x i8], ptr %36, i64 0, i64 %idxprom49
  %37 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %37 to i32
  %38 = load i32, ptr %p, align 4
  %add = add nsw i32 %38, %conv51
  store i32 %add, ptr %p, align 4
  %sub = add nsw i32 %add, -1
  %idxprom52 = sext i32 %sub to i64
  %arrayidx53 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom52
  %39 = load i32, ptr %arrayidx53, align 4
  %conv54 = zext i32 %39 to i64
  %40 = load ptr, ptr %dtbl, align 8
  %41 = load i32, ptr %l, align 4
  %idxprom55 = sext i32 %41 to i64
  %arrayidx56 = getelementptr inbounds %struct.d_derived_tbl, ptr %40, i64 0, i32 1, i64 %idxprom55
  store i64 %conv54, ptr %arrayidx56, align 8
  br label %for.inc61

if.else:                                          ; preds = %for.body35
  %42 = load ptr, ptr %dtbl, align 8
  %43 = load i32, ptr %l, align 4
  %idxprom58 = sext i32 %43 to i64
  %arrayidx59 = getelementptr inbounds %struct.d_derived_tbl, ptr %42, i64 0, i32 1, i64 %idxprom58
  store i64 -1, ptr %arrayidx59, align 8
  br label %for.inc61

for.inc61:                                        ; preds = %if.then40, %if.else
  %44 = load i32, ptr %l, align 4
  %inc62 = add nsw i32 %44, 1
  br label %for.cond32, !llvm.loop !11

for.end63:                                        ; preds = %for.cond32
  %45 = load ptr, ptr %dtbl, align 8
  %arrayidx65 = getelementptr inbounds %struct.d_derived_tbl, ptr %45, i64 0, i32 1, i64 17
  store i64 1048575, ptr %arrayidx65, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, ptr %45, i64 0, i32 4
  %look_nbits66 = getelementptr inbounds %struct.d_derived_tbl, ptr %45, i64 0, i32 4
  %46 = call i64 @llvm.objectsize.i64.p0(ptr %look_nbits66, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memset_chk(ptr noundef nonnull %look_nbits, i32 noundef 0, i64 noundef 1024, i64 noundef %46) #4
  store i32 0, ptr %p, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc105, %for.end63
  %storemerge2 = phi i32 [ 1, %for.end63 ], [ %inc106, %for.inc105 ]
  store i32 %storemerge2, ptr %l, align 4
  %cmp70 = icmp slt i32 %storemerge2, 9
  br i1 %cmp70, label %for.body72, label %for.end107

for.body72:                                       ; preds = %for.cond69
  store i32 1, ptr %i, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc101, %for.body72
  %47 = load i32, ptr %i, align 4
  %48 = load ptr, ptr %htbl.addr, align 8
  %49 = load i32, ptr %l, align 4
  %idxprom75 = sext i32 %49 to i64
  %arrayidx76 = getelementptr inbounds [17 x i8], ptr %48, i64 0, i64 %idxprom75
  %50 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %50 to i32
  %cmp78.not = icmp sgt i32 %47, %conv77
  br i1 %cmp78.not, label %for.inc105, label %for.body80

for.body80:                                       ; preds = %for.cond73
  %51 = load i32, ptr %p, align 4
  %idxprom81 = sext i32 %51 to i64
  %arrayidx82 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom81
  %52 = load i32, ptr %arrayidx82, align 4
  %53 = load i32, ptr %l, align 4
  %sub83 = sub nsw i32 8, %53
  %shl84 = shl i32 %52, %sub83
  store i32 %shl84, ptr %lookbits, align 4
  %sub85 = sub nsw i32 8, %53
  %shl86 = shl i32 1, %sub85
  br label %for.cond87

for.cond87:                                       ; preds = %for.body90, %for.body80
  %storemerge3 = phi i32 [ %shl86, %for.body80 ], [ %dec, %for.body90 ]
  store i32 %storemerge3, ptr %ctr, align 4
  %cmp88 = icmp sgt i32 %storemerge3, 0
  br i1 %cmp88, label %for.body90, label %for.inc101

for.body90:                                       ; preds = %for.cond87
  %54 = load i32, ptr %l, align 4
  %55 = load ptr, ptr %dtbl, align 8
  %56 = load i32, ptr %lookbits, align 4
  %idxprom92 = sext i32 %56 to i64
  %arrayidx93 = getelementptr inbounds %struct.d_derived_tbl, ptr %55, i64 0, i32 4, i64 %idxprom92
  store i32 %54, ptr %arrayidx93, align 4
  %57 = load ptr, ptr %htbl.addr, align 8
  %58 = load i32, ptr %p, align 4
  %idxprom94 = sext i32 %58 to i64
  %arrayidx95 = getelementptr inbounds %struct.JHUFF_TBL, ptr %57, i64 0, i32 1, i64 %idxprom94
  %59 = load i8, ptr %arrayidx95, align 1
  %60 = load ptr, ptr %dtbl, align 8
  %61 = load i32, ptr %lookbits, align 4
  %idxprom96 = sext i32 %61 to i64
  %arrayidx97 = getelementptr inbounds %struct.d_derived_tbl, ptr %60, i64 0, i32 5, i64 %idxprom96
  store i8 %59, ptr %arrayidx97, align 1
  %inc98 = add nsw i32 %61, 1
  store i32 %inc98, ptr %lookbits, align 4
  %62 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %62, -1
  br label %for.cond87, !llvm.loop !12

for.inc101:                                       ; preds = %for.cond87
  %63 = load i32, ptr %i, align 4
  %inc102 = add nsw i32 %63, 1
  store i32 %inc102, ptr %i, align 4
  %64 = load i32, ptr %p, align 4
  %inc103 = add nsw i32 %64, 1
  store i32 %inc103, ptr %p, align 4
  br label %for.cond73, !llvm.loop !13

for.inc105:                                       ; preds = %for.cond73
  %65 = load i32, ptr %l, align 4
  %inc106 = add nsw i32 %65, 1
  br label %for.cond69, !llvm.loop !14

for.end107:                                       ; preds = %for.cond69
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_fill_bit_buffer(ptr noundef %state, i64 noundef %get_buffer, i32 noundef %bits_left, i32 noundef %nbits) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %get_buffer.addr = alloca i64, align 8
  %bits_left.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %c = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store i64 %get_buffer, ptr %get_buffer.addr, align 8
  store i32 %bits_left, ptr %bits_left.addr, align 4
  store i32 %nbits, ptr %nbits.addr, align 4
  %0 = load ptr, ptr %state, align 8
  store ptr %0, ptr %next_input_byte, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.bitread_working_state, ptr %state, i64 0, i32 1
  %1 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %1, ptr %bytes_in_buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end59, %entry
  %2 = load i32, ptr %bits_left.addr, align 4
  %cmp = icmp slt i32 %2, 25
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %state.addr, align 8
  %unread_marker = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %unread_marker, align 8
  %cmp3.not = icmp eq i32 %4, 0
  br i1 %cmp3.not, label %if.end, label %no_more_data

if.end:                                           ; preds = %while.body
  %5 = load i64, ptr %bytes_in_buffer, align 8
  %cmp4 = icmp eq i64 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.bitread_working_state, ptr %6, i64 0, i32 5
  %7 = load ptr, ptr %cinfo, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %src, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %8, i64 0, i32 3
  %9 = load ptr, ptr %fill_input_buffer, align 8
  %10 = load ptr, ptr %state.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.bitread_working_state, ptr %10, i64 0, i32 5
  %11 = load ptr, ptr %cinfo6, align 8
  %call = call i32 %9(ptr noundef %11) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then5
  %12 = load ptr, ptr %state.addr, align 8
  %cinfo9 = getelementptr inbounds %struct.bitread_working_state, ptr %12, i64 0, i32 5
  %13 = load ptr, ptr %cinfo9, align 8
  %src10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 5
  %14 = load ptr, ptr %src10, align 8
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %next_input_byte, align 8
  %16 = load ptr, ptr %state.addr, align 8
  %cinfo12 = getelementptr inbounds %struct.bitread_working_state, ptr %16, i64 0, i32 5
  %17 = load ptr, ptr %cinfo12, align 8
  %src13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 5
  %18 = load ptr, ptr %src13, align 8
  %bytes_in_buffer14 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i64 0, i32 1
  %19 = load i64, ptr %bytes_in_buffer14, align 8
  store i64 %19, ptr %bytes_in_buffer, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end8, %if.end
  %20 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %20, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %21 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %22 = load i8, ptr %21, align 1
  %conv = zext i8 %22 to i32
  store i32 %conv, ptr %c, align 4
  %cmp16 = icmp eq i8 %22, -1
  br i1 %cmp16, label %do.body, label %if.end59

do.body:                                          ; preds = %if.end15, %if.end36
  %23 = load i64, ptr %bytes_in_buffer, align 8
  %cmp19 = icmp eq i64 %23, 0
  br i1 %cmp19, label %if.then21, label %if.end36

if.then21:                                        ; preds = %do.body
  %24 = load ptr, ptr %state.addr, align 8
  %cinfo22 = getelementptr inbounds %struct.bitread_working_state, ptr %24, i64 0, i32 5
  %25 = load ptr, ptr %cinfo22, align 8
  %src23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i64 0, i32 5
  %26 = load ptr, ptr %src23, align 8
  %fill_input_buffer24 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %26, i64 0, i32 3
  %27 = load ptr, ptr %fill_input_buffer24, align 8
  %28 = load ptr, ptr %state.addr, align 8
  %cinfo25 = getelementptr inbounds %struct.bitread_working_state, ptr %28, i64 0, i32 5
  %29 = load ptr, ptr %cinfo25, align 8
  %call26 = call i32 %27(ptr noundef %29) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then21
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then21
  %30 = load ptr, ptr %state.addr, align 8
  %cinfo30 = getelementptr inbounds %struct.bitread_working_state, ptr %30, i64 0, i32 5
  %31 = load ptr, ptr %cinfo30, align 8
  %src31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 5
  %32 = load ptr, ptr %src31, align 8
  %33 = load ptr, ptr %32, align 8
  store ptr %33, ptr %next_input_byte, align 8
  %34 = load ptr, ptr %state.addr, align 8
  %cinfo33 = getelementptr inbounds %struct.bitread_working_state, ptr %34, i64 0, i32 5
  %35 = load ptr, ptr %cinfo33, align 8
  %src34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 5
  %36 = load ptr, ptr %src34, align 8
  %bytes_in_buffer35 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %36, i64 0, i32 1
  %37 = load i64, ptr %bytes_in_buffer35, align 8
  store i64 %37, ptr %bytes_in_buffer, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end29, %do.body
  %38 = load i64, ptr %bytes_in_buffer, align 8
  %dec37 = add i64 %38, -1
  store i64 %dec37, ptr %bytes_in_buffer, align 8
  %39 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr38, ptr %next_input_byte, align 8
  %40 = load i8, ptr %39, align 1
  %conv39 = zext i8 %40 to i32
  store i32 %conv39, ptr %c, align 4
  %41 = load i32, ptr %c, align 4
  %cmp40 = icmp eq i32 %41, 255
  br i1 %cmp40, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %if.end36
  %42 = load i32, ptr %c, align 4
  %cmp42 = icmp eq i32 %42, 0
  br i1 %cmp42, label %if.end58, label %if.else

if.else:                                          ; preds = %do.end
  %43 = load i32, ptr %c, align 4
  %44 = load ptr, ptr %state.addr, align 8
  %unread_marker45 = getelementptr inbounds %struct.bitread_working_state, ptr %44, i64 0, i32 2
  store i32 %43, ptr %unread_marker45, align 8
  br label %no_more_data

no_more_data:                                     ; preds = %while.body, %if.else
  %45 = load i32, ptr %bits_left.addr, align 4
  %46 = load i32, ptr %nbits.addr, align 4
  %cmp46.not = icmp slt i32 %45, %46
  br i1 %cmp46.not, label %if.end49, label %while.end

if.end49:                                         ; preds = %no_more_data
  %47 = load ptr, ptr %state.addr, align 8
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %47, i64 0, i32 6
  %48 = load ptr, ptr %printed_eod_ptr, align 8
  %49 = load i32, ptr %48, align 4
  %tobool50.not = icmp eq i32 %49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end58

if.then51:                                        ; preds = %if.end49
  %50 = load ptr, ptr %state.addr, align 8
  %cinfo52 = getelementptr inbounds %struct.bitread_working_state, ptr %50, i64 0, i32 5
  %51 = load ptr, ptr %cinfo52, align 8
  %52 = load ptr, ptr %51, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 5
  store i32 113, ptr %msg_code, align 8
  %cinfo53 = getelementptr inbounds %struct.bitread_working_state, ptr %50, i64 0, i32 5
  %53 = load ptr, ptr %cinfo53, align 8
  %54 = load ptr, ptr %53, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 1
  %55 = load ptr, ptr %emit_message, align 8
  %56 = load ptr, ptr %state.addr, align 8
  %cinfo55 = getelementptr inbounds %struct.bitread_working_state, ptr %56, i64 0, i32 5
  %57 = load ptr, ptr %cinfo55, align 8
  call void %55(ptr noundef %57, i32 noundef -1) #4
  %printed_eod_ptr56 = getelementptr inbounds %struct.bitread_working_state, ptr %56, i64 0, i32 6
  %58 = load ptr, ptr %printed_eod_ptr56, align 8
  store i32 1, ptr %58, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end49, %if.then51, %do.end
  %storemerge = phi i32 [ 255, %do.end ], [ 0, %if.then51 ], [ 0, %if.end49 ]
  store i32 %storemerge, ptr %c, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end15
  %59 = load i64, ptr %get_buffer.addr, align 8
  %shl = shl i64 %59, 8
  %60 = load i32, ptr %c, align 4
  %conv60 = sext i32 %60 to i64
  %or = or i64 %shl, %conv60
  store i64 %or, ptr %get_buffer.addr, align 8
  %61 = load i32, ptr %bits_left.addr, align 4
  %add = add nsw i32 %61, 8
  store i32 %add, ptr %bits_left.addr, align 4
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %no_more_data, %while.cond
  %62 = load ptr, ptr %next_input_byte, align 8
  %63 = load ptr, ptr %state.addr, align 8
  store ptr %62, ptr %63, align 8
  %64 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer62 = getelementptr inbounds %struct.bitread_working_state, ptr %63, i64 0, i32 1
  store i64 %64, ptr %bytes_in_buffer62, align 8
  %65 = load i64, ptr %get_buffer.addr, align 8
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, ptr %63, i64 0, i32 3
  store i64 %65, ptr %get_buffer63, align 8
  %66 = load i32, ptr %bits_left.addr, align 4
  %67 = load ptr, ptr %state.addr, align 8
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, ptr %67, i64 0, i32 4
  store i32 %66, ptr %bits_left64, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then28, %if.then7
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_huff_decode(ptr noundef %state, i64 noundef %get_buffer, i32 noundef %bits_left, ptr noundef %htbl, i32 noundef %min_bits) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %get_buffer.addr = alloca i64, align 8
  %bits_left.addr = alloca i32, align 4
  %htbl.addr = alloca ptr, align 8
  %l = alloca i32, align 4
  %code = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  store i64 %get_buffer, ptr %get_buffer.addr, align 8
  store i32 %bits_left, ptr %bits_left.addr, align 4
  store ptr %htbl, ptr %htbl.addr, align 8
  store i32 %min_bits, ptr %l, align 4
  %cmp = icmp slt i32 %bits_left, %min_bits
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %state.addr, align 8
  %1 = load i64, ptr %get_buffer.addr, align 8
  %2 = load i32, ptr %bits_left.addr, align 4
  %3 = load i32, ptr %l, align 4
  %call = call i32 @jpeg_fill_bit_buffer(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %state.addr, align 8
  %get_buffer2 = getelementptr inbounds %struct.bitread_working_state, ptr %4, i64 0, i32 3
  %5 = load i64, ptr %get_buffer2, align 8
  store i64 %5, ptr %get_buffer.addr, align 8
  %bits_left3 = getelementptr inbounds %struct.bitread_working_state, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %bits_left3, align 8
  store i32 %6, ptr %bits_left.addr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %7 = load i64, ptr %get_buffer.addr, align 8
  %8 = load i32, ptr %l, align 4
  %9 = load i32, ptr %bits_left.addr, align 4
  %sub = sub nsw i32 %9, %8
  store i32 %sub, ptr %bits_left.addr, align 4
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %7, %sh_prom
  %conv = trunc i64 %shr to i32
  %10 = load i32, ptr %l, align 4
  %notmask = shl nsw i32 -1, %10
  %sub5 = xor i32 %notmask, -1
  %and = and i32 %conv, %sub5
  %conv6 = sext i32 %and to i64
  store i64 %conv6, ptr %code, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end4
  %11 = load i64, ptr %code, align 8
  %12 = load ptr, ptr %htbl.addr, align 8
  %13 = load i32, ptr %l, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.d_derived_tbl, ptr %12, i64 0, i32 1, i64 %idxprom
  %14 = load i64, ptr %arrayidx, align 8
  %cmp7 = icmp sgt i64 %11, %14
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i64, ptr %code, align 8
  %shl9 = shl i64 %15, 1
  store i64 %shl9, ptr %code, align 8
  %16 = load i32, ptr %bits_left.addr, align 4
  %cmp10 = icmp slt i32 %16, 1
  br i1 %cmp10, label %if.then12, label %if.end19

if.then12:                                        ; preds = %while.body
  %17 = load ptr, ptr %state.addr, align 8
  %18 = load i64, ptr %get_buffer.addr, align 8
  %19 = load i32, ptr %bits_left.addr, align 4
  %call13 = call i32 @jpeg_fill_bit_buffer(ptr noundef %17, i64 noundef %18, i32 noundef %19, i32 noundef 1)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  store i32 -1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then12
  %20 = load ptr, ptr %state.addr, align 8
  %get_buffer17 = getelementptr inbounds %struct.bitread_working_state, ptr %20, i64 0, i32 3
  %21 = load i64, ptr %get_buffer17, align 8
  store i64 %21, ptr %get_buffer.addr, align 8
  %bits_left18 = getelementptr inbounds %struct.bitread_working_state, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %bits_left18, align 8
  store i32 %22, ptr %bits_left.addr, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %while.body
  %23 = load i64, ptr %get_buffer.addr, align 8
  %24 = load i32, ptr %bits_left.addr, align 4
  %sub20 = add nsw i32 %24, -1
  store i32 %sub20, ptr %bits_left.addr, align 4
  %sh_prom21 = zext i32 %sub20 to i64
  %shr221 = lshr i64 %23, %sh_prom21
  %and24 = and i64 %shr221, 1
  %25 = load i64, ptr %code, align 8
  %or = or i64 %25, %and24
  store i64 %or, ptr %code, align 8
  %26 = load i32, ptr %l, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %l, align 4
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %27 = load i64, ptr %get_buffer.addr, align 8
  %28 = load ptr, ptr %state.addr, align 8
  %get_buffer26 = getelementptr inbounds %struct.bitread_working_state, ptr %28, i64 0, i32 3
  store i64 %27, ptr %get_buffer26, align 8
  %29 = load i32, ptr %bits_left.addr, align 4
  %bits_left27 = getelementptr inbounds %struct.bitread_working_state, ptr %28, i64 0, i32 4
  store i32 %29, ptr %bits_left27, align 8
  %30 = load i32, ptr %l, align 4
  %cmp28 = icmp sgt i32 %30, 16
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %while.end
  %31 = load ptr, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.bitread_working_state, ptr %31, i64 0, i32 5
  %32 = load ptr, ptr %cinfo, align 8
  %33 = load ptr, ptr %32, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 5
  store i32 114, ptr %msg_code, align 8
  %cinfo31 = getelementptr inbounds %struct.bitread_working_state, ptr %31, i64 0, i32 5
  %34 = load ptr, ptr %cinfo31, align 8
  %35 = load ptr, ptr %34, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 1
  %36 = load ptr, ptr %emit_message, align 8
  %37 = load ptr, ptr %state.addr, align 8
  %cinfo33 = getelementptr inbounds %struct.bitread_working_state, ptr %37, i64 0, i32 5
  %38 = load ptr, ptr %cinfo33, align 8
  call void %36(ptr noundef %38, i32 noundef -1) #4
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %while.end
  %39 = load ptr, ptr %htbl.addr, align 8
  %pub = getelementptr inbounds %struct.d_derived_tbl, ptr %39, i64 0, i32 3
  %40 = load ptr, ptr %pub, align 8
  %41 = load i32, ptr %l, align 4
  %idxprom35 = sext i32 %41 to i64
  %arrayidx36 = getelementptr inbounds %struct.d_derived_tbl, ptr %39, i64 0, i32 2, i64 %idxprom35
  %42 = load i32, ptr %arrayidx36, align 4
  %43 = load i64, ptr %code, align 8
  %44 = load ptr, ptr %htbl.addr, align 8
  %idxprom37 = sext i32 %41 to i64
  %arrayidx38 = getelementptr inbounds [17 x i64], ptr %44, i64 0, i64 %idxprom37
  %45 = load i64, ptr %arrayidx38, align 8
  %sub39 = sub nsw i64 %43, %45
  %conv40 = trunc i64 %sub39 to i32
  %add = add nsw i32 %42, %conv40
  %idxprom41 = sext i32 %add to i64
  %arrayidx42 = getelementptr inbounds %struct.JHUFF_TBL, ptr %40, i64 0, i32 1, i64 %idxprom41
  %46 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %46 to i32
  store i32 %conv43, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then30, %if.then15, %if.then1
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind ssp uwtable
define void @jinit_huff_decoder(ptr noundef %cinfo) #0 {
entry:
  %entropy = alloca ptr, align 8
  %i = alloca i32, align 4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 120) #4
  store ptr %call, ptr %entropy, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  store ptr %call, ptr %entropy1, align 8
  store ptr @start_pass_huff_decoder, ptr %call, align 8
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %call, i64 0, i32 1
  store ptr @decode_mcu, ptr %decode_mcu, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %entropy, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.huff_entropy_decoder, ptr %2, i64 0, i32 5, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %2, i64 0, i32 4, i64 %idxprom3
  store ptr null, ptr %arrayidx4, align 8
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_huff_decoder(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %ci = alloca i32, align 4
  %dctbl = alloca i32, align 4
  %actbl = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 68
  %1 = load i32, ptr %Ss, align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 69
  %3 = load i32, ptr %Se, align 8
  %cmp2.not = icmp eq i32 %3, 63
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 70
  %5 = load i32, ptr %Ah, align 4
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %6 = load ptr, ptr %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 71
  %7 = load i32, ptr %Al, align 8
  %cmp6.not = icmp eq i32 %7, 0
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 118, ptr %msg_code, align 8
  %10 = load ptr, ptr %8, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 1
  %11 = load ptr, ptr %emit_message, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void %11(ptr noundef %12, i32 noundef -1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false5
  br label %for.cond

for.cond:                                         ; preds = %if.end38, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %if.end38 ]
  store i32 %storemerge, ptr %ci, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 62
  %14 = load i32, ptr %comps_in_scan, align 8
  %cmp8 = icmp slt i32 %storemerge, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 63, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 5
  %18 = load i32, ptr %dc_tbl_no, align 4
  store i32 %18, ptr %dctbl, align 4
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 0, i32 6
  %19 = load i32, ptr %ac_tbl_no, align 8
  store i32 %19, ptr %actbl, align 4
  %cmp9 = icmp slt i32 %18, 0
  %20 = load i32, ptr %dctbl, align 4
  %cmp11 = icmp sgt i32 %20, 3
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %for.body
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load i32, ptr %dctbl, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 40, i64 %idxprom13
  %23 = load ptr, ptr %arrayidx14, align 8
  %cmp15 = icmp eq ptr %23, null
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %lor.lhs.false12, %for.body
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %msg_code18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 49, ptr %msg_code18, align 8
  %26 = load i32, ptr %dctbl, align 4
  %27 = load ptr, ptr %24, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 6
  store i32 %26, ptr %msg_parm, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr noundef nonnull %28) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %lor.lhs.false12
  %31 = load i32, ptr %actbl, align 4
  %cmp23 = icmp slt i32 %31, 0
  %32 = load i32, ptr %actbl, align 4
  %cmp25 = icmp sgt i32 %32, 3
  %or.cond1 = select i1 %cmp23, i1 true, i1 %cmp25
  br i1 %or.cond1, label %if.then30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end22
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load i32, ptr %actbl, align 4
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 41, i64 %idxprom27
  %35 = load ptr, ptr %arrayidx28, align 8
  %cmp29 = icmp eq ptr %35, null
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %lor.lhs.false26, %if.end22
  %36 = load ptr, ptr %cinfo.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 49, ptr %msg_code32, align 8
  %38 = load i32, ptr %actbl, align 4
  %39 = load ptr, ptr %36, align 8
  %msg_parm34 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 6
  store i32 %38, ptr %msg_parm34, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %41, align 8
  call void %42(ptr noundef nonnull %40) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %lor.lhs.false26
  %43 = load ptr, ptr %cinfo.addr, align 8
  %44 = load i32, ptr %dctbl, align 4
  %idxprom40 = sext i32 %44 to i64
  %arrayidx41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i64 0, i32 40, i64 %idxprom40
  %45 = load ptr, ptr %arrayidx41, align 8
  %46 = load ptr, ptr %entropy, align 8
  %idxprom42 = sext i32 %44 to i64
  %arrayidx43 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %46, i64 0, i32 4, i64 %idxprom42
  call void @jpeg_make_d_derived_tbl(ptr noundef %43, ptr noundef %45, ptr noundef nonnull %arrayidx43)
  %47 = load ptr, ptr %cinfo.addr, align 8
  %48 = load i32, ptr %actbl, align 4
  %idxprom45 = sext i32 %48 to i64
  %arrayidx46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i64 0, i32 41, i64 %idxprom45
  %49 = load ptr, ptr %arrayidx46, align 8
  %50 = load ptr, ptr %entropy, align 8
  %idxprom47 = sext i32 %48 to i64
  %arrayidx48 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %50, i64 0, i32 5, i64 %idxprom47
  call void @jpeg_make_d_derived_tbl(ptr noundef %47, ptr noundef %49, ptr noundef nonnull %arrayidx48)
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, ptr %50, i64 0, i32 2
  %51 = load i32, ptr %ci, align 4
  %idxprom49 = sext i32 %51 to i64
  %arrayidx50 = getelementptr inbounds [4 x i32], ptr %saved, i64 0, i64 %idxprom49
  store i32 0, ptr %arrayidx50, align 4
  %52 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %52, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %53 = load ptr, ptr %entropy, align 8
  %bits_left = getelementptr inbounds %struct.huff_entropy_decoder, ptr %53, i64 0, i32 1, i32 1
  store i32 0, ptr %bits_left, align 8
  %bitstate51 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %53, i64 0, i32 1
  store i64 0, ptr %bitstate51, align 8
  %printed_eod = getelementptr inbounds %struct.huff_entropy_decoder, ptr %53, i64 0, i32 1, i32 2
  store i32 0, ptr %printed_eod, align 4
  %54 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i64 0, i32 49
  %55 = load i32, ptr %restart_interval, align 8
  %56 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, ptr %56, i64 0, i32 3
  store i32 %55, ptr %restarts_to_go, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %block = alloca ptr, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %state = alloca %struct.savable_state, align 4
  %dctbl = alloca ptr, align 8
  %actbl = alloca ptr, align 8
  %compptr = alloca ptr, align 8
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  %nb97 = alloca i32, align 4
  %look98 = alloca i32, align 4
  %nb188 = alloca i32, align 4
  %look189 = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 49
  %1 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, ptr %2, i64 0, i32 3
  %3 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @process_restart(ptr noundef %4)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then, %if.then2, %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %cinfo7 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 5
  store ptr %5, ptr %cinfo7, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 5
  %6 = load ptr, ptr %src, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %br_state, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %src9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 5
  %9 = load ptr, ptr %src9, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %9, i64 0, i32 1
  %10 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer10 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  store i64 %10, ptr %bytes_in_buffer10, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 72
  %12 = load i32, ptr %unread_marker, align 4
  %unread_marker11 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  store i32 %12, ptr %unread_marker11, align 8
  %13 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, ptr %13, i64 0, i32 1
  %14 = load i64, ptr %bitstate, align 8
  store i64 %14, ptr %get_buffer, align 8
  %bits_left14 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %13, i64 0, i32 1, i32 1
  %15 = load i32, ptr %bits_left14, align 8
  store i32 %15, ptr %bits_left, align 4
  %16 = load ptr, ptr %entropy, align 8
  %printed_eod = getelementptr inbounds %struct.huff_entropy_decoder, ptr %16, i64 0, i32 1, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, ptr %16, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %state, ptr noundef nonnull align 8 dereferenceable(16) %saved, i64 16, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc256, %if.end6
  %storemerge = phi i32 [ 0, %if.end6 ], [ %inc257, %for.inc256 ]
  store i32 %storemerge, ptr %blkn, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 66
  %18 = load i32, ptr %blocks_in_MCU, align 8
  %cmp16 = icmp slt i32 %storemerge, %18
  br i1 %cmp16, label %for.body, label %for.end258

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %MCU_data.addr, align 8
  %20 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 %idxprom
  %21 = load ptr, ptr %arrayidx, align 8
  store ptr %21, ptr %block, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 67, i64 %idxprom17
  %23 = load i32, ptr %arrayidx18, align 4
  store i32 %23, ptr %ci, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 63, i64 %idxprom19
  %24 = load ptr, ptr %arrayidx20, align 8
  store ptr %24, ptr %compptr, align 8
  %25 = load ptr, ptr %entropy, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 0, i32 5
  %26 = load i32, ptr %dc_tbl_no, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %25, i64 0, i32 4, i64 %idxprom21
  %27 = load ptr, ptr %arrayidx22, align 8
  store ptr %27, ptr %dctbl, align 8
  %28 = load ptr, ptr %entropy, align 8
  %29 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i64 0, i32 6
  %30 = load i32, ptr %ac_tbl_no, align 8
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %28, i64 0, i32 5, i64 %idxprom23
  %31 = load ptr, ptr %arrayidx24, align 8
  store ptr %31, ptr %actbl, align 8
  %32 = load i32, ptr %bits_left, align 4
  %cmp25 = icmp slt i32 %32, 8
  br i1 %cmp25, label %if.then26, label %if.end36

if.then26:                                        ; preds = %for.body
  %33 = load i64, ptr %get_buffer, align 8
  %34 = load i32, ptr %bits_left, align 4
  %call27 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %33, i32 noundef %34, i32 noundef 0)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then26
  %get_buffer31 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %35 = load i64, ptr %get_buffer31, align 8
  store i64 %35, ptr %get_buffer, align 8
  %bits_left32 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %36 = load i32, ptr %bits_left32, align 8
  store i32 %36, ptr %bits_left, align 4
  %cmp33 = icmp slt i32 %36, 8
  br i1 %cmp33, label %label1, label %if.end36

if.end36:                                         ; preds = %if.end30, %for.body
  %37 = load i64, ptr %get_buffer, align 8
  %38 = load i32, ptr %bits_left, align 4
  %sub = add nsw i32 %38, -8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %37, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, ptr %look, align 4
  %39 = load ptr, ptr %dctbl, align 8
  %idxprom37 = zext i32 %and to i64
  %arrayidx38 = getelementptr inbounds %struct.d_derived_tbl, ptr %39, i64 0, i32 4, i64 %idxprom37
  %40 = load i32, ptr %arrayidx38, align 4
  store i32 %40, ptr %nb, align 4
  %cmp39.not = icmp eq i32 %40, 0
  br i1 %cmp39.not, label %label1, label %if.then41

if.then41:                                        ; preds = %if.end36
  %41 = load i32, ptr %nb, align 4
  %42 = load i32, ptr %bits_left, align 4
  %sub42 = sub nsw i32 %42, %41
  store i32 %sub42, ptr %bits_left, align 4
  %43 = load ptr, ptr %dctbl, align 8
  %44 = load i32, ptr %look, align 4
  %idxprom43 = sext i32 %44 to i64
  %arrayidx44 = getelementptr inbounds %struct.d_derived_tbl, ptr %43, i64 0, i32 5, i64 %idxprom43
  %45 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %45 to i32
  store i32 %conv45, ptr %s, align 4
  br label %if.end53

label1:                                           ; preds = %if.end36, %if.end30
  %storemerge1 = phi i32 [ 1, %if.end30 ], [ 9, %if.end36 ]
  store i32 %storemerge1, ptr %nb, align 4
  %46 = load i64, ptr %get_buffer, align 8
  %47 = load i32, ptr %bits_left, align 4
  %48 = load ptr, ptr %dctbl, align 8
  %call46 = call i32 @jpeg_huff_decode(ptr noundef nonnull %br_state, i64 noundef %46, i32 noundef %47, ptr noundef %48, i32 noundef %storemerge1)
  store i32 %call46, ptr %s, align 4
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %label1
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %label1
  %get_buffer51 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %49 = load i64, ptr %get_buffer51, align 8
  store i64 %49, ptr %get_buffer, align 8
  %bits_left52 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %50 = load i32, ptr %bits_left52, align 8
  store i32 %50, ptr %bits_left, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.then41
  %51 = load i32, ptr %s, align 4
  %tobool54.not = icmp eq i32 %51, 0
  br i1 %tobool54.not, label %if.end78, label %if.then55

if.then55:                                        ; preds = %if.end53
  %52 = load i32, ptr %bits_left, align 4
  %53 = load i32, ptr %s, align 4
  %cmp56 = icmp slt i32 %52, %53
  br i1 %cmp56, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.then55
  %54 = load i64, ptr %get_buffer, align 8
  %55 = load i32, ptr %bits_left, align 4
  %56 = load i32, ptr %s, align 4
  %call59 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %54, i32 noundef %55, i32 noundef %56)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then58
  store i32 0, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.then58
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %57 = load i64, ptr %get_buffer63, align 8
  store i64 %57, ptr %get_buffer, align 8
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %58 = load i32, ptr %bits_left64, align 8
  store i32 %58, ptr %bits_left, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end62, %if.then55
  %59 = load i64, ptr %get_buffer, align 8
  %60 = load i32, ptr %s, align 4
  %61 = load i32, ptr %bits_left, align 4
  %sub66 = sub nsw i32 %61, %60
  store i32 %sub66, ptr %bits_left, align 4
  %sh_prom67 = zext i32 %sub66 to i64
  %shr68 = ashr i64 %59, %sh_prom67
  %conv69 = trunc i64 %shr68 to i32
  %62 = load i32, ptr %s, align 4
  %notmask6 = shl nsw i32 -1, %62
  %sub70 = xor i32 %notmask6, -1
  %and71 = and i32 %conv69, %sub70
  store i32 %and71, ptr %r, align 4
  %idxprom72 = sext i32 %62 to i64
  %arrayidx73 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %idxprom72
  %63 = load i32, ptr %arrayidx73, align 4
  %cmp74 = icmp slt i32 %and71, %63
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end65
  %64 = load i32, ptr %r, align 4
  %65 = load i32, ptr %s, align 4
  %idxprom76 = sext i32 %65 to i64
  %arrayidx77 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %idxprom76
  %66 = load i32, ptr %arrayidx77, align 4
  %add = add nsw i32 %64, %66
  br label %cond.end

cond.false:                                       ; preds = %if.end65
  %67 = load i32, ptr %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %67, %cond.false ]
  store i32 %cond, ptr %s, align 4
  br label %if.end78

if.end78:                                         ; preds = %cond.end, %if.end53
  %68 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %68, i64 0, i32 12
  %69 = load i32, ptr %component_needed, align 8
  %tobool79.not = icmp eq i32 %69, 0
  br i1 %tobool79.not, label %skip_ACs, label %if.end81

if.end81:                                         ; preds = %if.end78
  %70 = load i32, ptr %ci, align 4
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds [4 x i32], ptr %state, i64 0, i64 %idxprom82
  %71 = load i32, ptr %arrayidx83, align 4
  %72 = load i32, ptr %s, align 4
  %add84 = add nsw i32 %72, %71
  store i32 %add84, ptr %s, align 4
  %73 = load i32, ptr %ci, align 4
  %idxprom86 = sext i32 %73 to i64
  %arrayidx87 = getelementptr inbounds [4 x i32], ptr %state, i64 0, i64 %idxprom86
  store i32 %add84, ptr %arrayidx87, align 4
  %conv88 = trunc i32 %add84 to i16
  %74 = load ptr, ptr %block, align 8
  store i16 %conv88, ptr %74, align 2
  %75 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 9
  %76 = load i32, ptr %DCT_scaled_size, align 4
  %cmp90 = icmp sgt i32 %76, 1
  br i1 %cmp90, label %for.cond93, label %skip_ACs

for.cond93:                                       ; preds = %if.end81, %for.inc
  %storemerge4 = phi i32 [ %inc, %for.inc ], [ 1, %if.end81 ]
  store i32 %storemerge4, ptr %k, align 4
  %cmp94 = icmp slt i32 %storemerge4, 64
  br i1 %cmp94, label %for.body96, label %for.inc256

for.body96:                                       ; preds = %for.cond93
  %77 = load i32, ptr %bits_left, align 4
  %cmp99 = icmp slt i32 %77, 8
  br i1 %cmp99, label %if.then101, label %if.end112

if.then101:                                       ; preds = %for.body96
  %78 = load i64, ptr %get_buffer, align 8
  %79 = load i32, ptr %bits_left, align 4
  %call102 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %78, i32 noundef %79, i32 noundef 0)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then101
  store i32 0, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %if.then101
  %get_buffer106 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %80 = load i64, ptr %get_buffer106, align 8
  store i64 %80, ptr %get_buffer, align 8
  %bits_left107 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %81 = load i32, ptr %bits_left107, align 8
  store i32 %81, ptr %bits_left, align 4
  %cmp108 = icmp slt i32 %81, 8
  br i1 %cmp108, label %label2, label %if.end112

if.end112:                                        ; preds = %if.end105, %for.body96
  %82 = load i64, ptr %get_buffer, align 8
  %83 = load i32, ptr %bits_left, align 4
  %sub113 = add nsw i32 %83, -8
  %sh_prom114 = zext i32 %sub113 to i64
  %shr115 = ashr i64 %82, %sh_prom114
  %conv116 = trunc i64 %shr115 to i32
  %and117 = and i32 %conv116, 255
  store i32 %and117, ptr %look98, align 4
  %84 = load ptr, ptr %actbl, align 8
  %idxprom119 = zext i32 %and117 to i64
  %arrayidx120 = getelementptr inbounds %struct.d_derived_tbl, ptr %84, i64 0, i32 4, i64 %idxprom119
  %85 = load i32, ptr %arrayidx120, align 4
  store i32 %85, ptr %nb97, align 4
  %cmp121.not = icmp eq i32 %85, 0
  br i1 %cmp121.not, label %label2, label %if.then123

if.then123:                                       ; preds = %if.end112
  %86 = load i32, ptr %nb97, align 4
  %87 = load i32, ptr %bits_left, align 4
  %sub124 = sub nsw i32 %87, %86
  store i32 %sub124, ptr %bits_left, align 4
  %88 = load ptr, ptr %actbl, align 8
  %89 = load i32, ptr %look98, align 4
  %idxprom126 = sext i32 %89 to i64
  %arrayidx127 = getelementptr inbounds %struct.d_derived_tbl, ptr %88, i64 0, i32 5, i64 %idxprom126
  %90 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %90 to i32
  store i32 %conv128, ptr %s, align 4
  br label %if.end137

label2:                                           ; preds = %if.end112, %if.end105
  %storemerge5 = phi i32 [ 1, %if.end105 ], [ 9, %if.end112 ]
  store i32 %storemerge5, ptr %nb97, align 4
  %91 = load i64, ptr %get_buffer, align 8
  %92 = load i32, ptr %bits_left, align 4
  %93 = load ptr, ptr %actbl, align 8
  %call130 = call i32 @jpeg_huff_decode(ptr noundef nonnull %br_state, i64 noundef %91, i32 noundef %92, ptr noundef %93, i32 noundef %storemerge5)
  store i32 %call130, ptr %s, align 4
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %label2
  store i32 0, ptr %retval, align 4
  br label %return

if.end134:                                        ; preds = %label2
  %get_buffer135 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %94 = load i64, ptr %get_buffer135, align 8
  store i64 %94, ptr %get_buffer, align 8
  %bits_left136 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %95 = load i32, ptr %bits_left136, align 8
  store i32 %95, ptr %bits_left, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.end134, %if.then123
  %96 = load i32, ptr %s, align 4
  %shr138 = ashr i32 %96, 4
  store i32 %shr138, ptr %r, align 4
  %and139 = and i32 %96, 15
  store i32 %and139, ptr %s, align 4
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.else176, label %if.then141

if.then141:                                       ; preds = %if.end137
  %97 = load i32, ptr %r, align 4
  %98 = load i32, ptr %k, align 4
  %add142 = add nsw i32 %98, %97
  store i32 %add142, ptr %k, align 4
  %99 = load i32, ptr %bits_left, align 4
  %100 = load i32, ptr %s, align 4
  %cmp143 = icmp slt i32 %99, %100
  br i1 %cmp143, label %if.then145, label %if.end152

if.then145:                                       ; preds = %if.then141
  %101 = load i64, ptr %get_buffer, align 8
  %102 = load i32, ptr %bits_left, align 4
  %103 = load i32, ptr %s, align 4
  %call146 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %101, i32 noundef %102, i32 noundef %103)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.then145
  store i32 0, ptr %retval, align 4
  br label %return

if.end149:                                        ; preds = %if.then145
  %get_buffer150 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %104 = load i64, ptr %get_buffer150, align 8
  store i64 %104, ptr %get_buffer, align 8
  %bits_left151 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %105 = load i32, ptr %bits_left151, align 8
  store i32 %105, ptr %bits_left, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.end149, %if.then141
  %106 = load i64, ptr %get_buffer, align 8
  %107 = load i32, ptr %s, align 4
  %108 = load i32, ptr %bits_left, align 4
  %sub153 = sub nsw i32 %108, %107
  store i32 %sub153, ptr %bits_left, align 4
  %sh_prom154 = zext i32 %sub153 to i64
  %shr155 = ashr i64 %106, %sh_prom154
  %conv156 = trunc i64 %shr155 to i32
  %109 = load i32, ptr %s, align 4
  %notmask = shl nsw i32 -1, %109
  %sub158 = xor i32 %notmask, -1
  %and159 = and i32 %conv156, %sub158
  store i32 %and159, ptr %r, align 4
  %idxprom160 = sext i32 %109 to i64
  %arrayidx161 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %idxprom160
  %110 = load i32, ptr %arrayidx161, align 4
  %cmp162 = icmp slt i32 %and159, %110
  br i1 %cmp162, label %cond.true164, label %cond.false168

cond.true164:                                     ; preds = %if.end152
  %111 = load i32, ptr %r, align 4
  %112 = load i32, ptr %s, align 4
  %idxprom165 = sext i32 %112 to i64
  %arrayidx166 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %idxprom165
  %113 = load i32, ptr %arrayidx166, align 4
  %add167 = add nsw i32 %111, %113
  br label %cond.end169

cond.false168:                                    ; preds = %if.end152
  %114 = load i32, ptr %r, align 4
  br label %cond.end169

cond.end169:                                      ; preds = %cond.false168, %cond.true164
  %cond170 = phi i32 [ %add167, %cond.true164 ], [ %114, %cond.false168 ]
  store i32 %cond170, ptr %s, align 4
  %conv171 = trunc i32 %cond170 to i16
  %115 = load ptr, ptr %block, align 8
  %116 = load i32, ptr %k, align 4
  %idxprom172 = sext i32 %116 to i64
  %arrayidx173 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom172
  %117 = load i32, ptr %arrayidx173, align 4
  %idxprom174 = sext i32 %117 to i64
  %arrayidx175 = getelementptr inbounds [64 x i16], ptr %115, i64 0, i64 %idxprom174
  store i16 %conv171, ptr %arrayidx175, align 2
  br label %for.inc

if.else176:                                       ; preds = %if.end137
  %118 = load i32, ptr %r, align 4
  %cmp177.not = icmp eq i32 %118, 15
  br i1 %cmp177.not, label %if.end180, label %for.inc256

if.end180:                                        ; preds = %if.else176
  %119 = load i32, ptr %k, align 4
  %add181 = add nsw i32 %119, 15
  store i32 %add181, ptr %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end169, %if.end180
  %120 = load i32, ptr %k, align 4
  %inc = add nsw i32 %120, 1
  br label %for.cond93, !llvm.loop !20

skip_ACs:                                         ; preds = %if.end81, %if.end78
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc252, %skip_ACs
  %storemerge2 = phi i32 [ 1, %skip_ACs ], [ %inc253, %for.inc252 ]
  store i32 %storemerge2, ptr %k, align 4
  %cmp185 = icmp slt i32 %storemerge2, 64
  br i1 %cmp185, label %for.body187, label %for.inc256

for.body187:                                      ; preds = %for.cond184
  %121 = load i32, ptr %bits_left, align 4
  %cmp190 = icmp slt i32 %121, 8
  br i1 %cmp190, label %if.then192, label %if.end203

if.then192:                                       ; preds = %for.body187
  %122 = load i64, ptr %get_buffer, align 8
  %123 = load i32, ptr %bits_left, align 4
  %call193 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %122, i32 noundef %123, i32 noundef 0)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.then192
  store i32 0, ptr %retval, align 4
  br label %return

if.end196:                                        ; preds = %if.then192
  %get_buffer197 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %124 = load i64, ptr %get_buffer197, align 8
  store i64 %124, ptr %get_buffer, align 8
  %bits_left198 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %125 = load i32, ptr %bits_left198, align 8
  store i32 %125, ptr %bits_left, align 4
  %cmp199 = icmp slt i32 %125, 8
  br i1 %cmp199, label %label3, label %if.end203

if.end203:                                        ; preds = %if.end196, %for.body187
  %126 = load i64, ptr %get_buffer, align 8
  %127 = load i32, ptr %bits_left, align 4
  %sub204 = add nsw i32 %127, -8
  %sh_prom205 = zext i32 %sub204 to i64
  %shr206 = ashr i64 %126, %sh_prom205
  %conv207 = trunc i64 %shr206 to i32
  %and208 = and i32 %conv207, 255
  store i32 %and208, ptr %look189, align 4
  %128 = load ptr, ptr %actbl, align 8
  %idxprom210 = zext i32 %and208 to i64
  %arrayidx211 = getelementptr inbounds %struct.d_derived_tbl, ptr %128, i64 0, i32 4, i64 %idxprom210
  %129 = load i32, ptr %arrayidx211, align 4
  store i32 %129, ptr %nb188, align 4
  %cmp212.not = icmp eq i32 %129, 0
  br i1 %cmp212.not, label %label3, label %if.then214

if.then214:                                       ; preds = %if.end203
  %130 = load i32, ptr %nb188, align 4
  %131 = load i32, ptr %bits_left, align 4
  %sub215 = sub nsw i32 %131, %130
  store i32 %sub215, ptr %bits_left, align 4
  %132 = load ptr, ptr %actbl, align 8
  %133 = load i32, ptr %look189, align 4
  %idxprom217 = sext i32 %133 to i64
  %arrayidx218 = getelementptr inbounds %struct.d_derived_tbl, ptr %132, i64 0, i32 5, i64 %idxprom217
  %134 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %134 to i32
  store i32 %conv219, ptr %s, align 4
  br label %if.end228

label3:                                           ; preds = %if.end203, %if.end196
  %storemerge3 = phi i32 [ 1, %if.end196 ], [ 9, %if.end203 ]
  store i32 %storemerge3, ptr %nb188, align 4
  %135 = load i64, ptr %get_buffer, align 8
  %136 = load i32, ptr %bits_left, align 4
  %137 = load ptr, ptr %actbl, align 8
  %call221 = call i32 @jpeg_huff_decode(ptr noundef nonnull %br_state, i64 noundef %135, i32 noundef %136, ptr noundef %137, i32 noundef %storemerge3)
  store i32 %call221, ptr %s, align 4
  %cmp222 = icmp slt i32 %call221, 0
  br i1 %cmp222, label %if.then224, label %if.end225

if.then224:                                       ; preds = %label3
  store i32 0, ptr %retval, align 4
  br label %return

if.end225:                                        ; preds = %label3
  %get_buffer226 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %138 = load i64, ptr %get_buffer226, align 8
  store i64 %138, ptr %get_buffer, align 8
  %bits_left227 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %139 = load i32, ptr %bits_left227, align 8
  store i32 %139, ptr %bits_left, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.end225, %if.then214
  %140 = load i32, ptr %s, align 4
  %shr229 = ashr i32 %140, 4
  store i32 %shr229, ptr %r, align 4
  %and230 = and i32 %140, 15
  store i32 %and230, ptr %s, align 4
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.else245, label %if.then232

if.then232:                                       ; preds = %if.end228
  %141 = load i32, ptr %r, align 4
  %142 = load i32, ptr %k, align 4
  %add233 = add nsw i32 %142, %141
  store i32 %add233, ptr %k, align 4
  %143 = load i32, ptr %bits_left, align 4
  %144 = load i32, ptr %s, align 4
  %cmp234 = icmp slt i32 %143, %144
  br i1 %cmp234, label %if.then236, label %if.end243

if.then236:                                       ; preds = %if.then232
  %145 = load i64, ptr %get_buffer, align 8
  %146 = load i32, ptr %bits_left, align 4
  %147 = load i32, ptr %s, align 4
  %call237 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %145, i32 noundef %146, i32 noundef %147)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.then236
  store i32 0, ptr %retval, align 4
  br label %return

if.end240:                                        ; preds = %if.then236
  %get_buffer241 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %148 = load i64, ptr %get_buffer241, align 8
  store i64 %148, ptr %get_buffer, align 8
  %bits_left242 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %149 = load i32, ptr %bits_left242, align 8
  store i32 %149, ptr %bits_left, align 4
  br label %if.end243

if.end243:                                        ; preds = %if.end240, %if.then232
  %150 = load i32, ptr %s, align 4
  %151 = load i32, ptr %bits_left, align 4
  %sub244 = sub nsw i32 %151, %150
  store i32 %sub244, ptr %bits_left, align 4
  br label %for.inc252

if.else245:                                       ; preds = %if.end228
  %152 = load i32, ptr %r, align 4
  %cmp246.not = icmp eq i32 %152, 15
  br i1 %cmp246.not, label %if.end249, label %for.inc256

if.end249:                                        ; preds = %if.else245
  %153 = load i32, ptr %k, align 4
  %add250 = add nsw i32 %153, 15
  store i32 %add250, ptr %k, align 4
  br label %for.inc252

for.inc252:                                       ; preds = %if.end243, %if.end249
  %154 = load i32, ptr %k, align 4
  %inc253 = add nsw i32 %154, 1
  br label %for.cond184, !llvm.loop !21

for.inc256:                                       ; preds = %if.else176, %for.cond93, %if.else245, %for.cond184
  %155 = load i32, ptr %blkn, align 4
  %inc257 = add nsw i32 %155, 1
  br label %for.cond, !llvm.loop !22

for.end258:                                       ; preds = %for.cond
  %156 = load ptr, ptr %br_state, align 8
  %157 = load ptr, ptr %cinfo.addr, align 8
  %src260 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %157, i64 0, i32 5
  %158 = load ptr, ptr %src260, align 8
  store ptr %156, ptr %158, align 8
  %bytes_in_buffer262 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  %159 = load i64, ptr %bytes_in_buffer262, align 8
  %src263 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %157, i64 0, i32 5
  %160 = load ptr, ptr %src263, align 8
  %bytes_in_buffer264 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %160, i64 0, i32 1
  store i64 %159, ptr %bytes_in_buffer264, align 8
  %unread_marker265 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  %161 = load i32, ptr %unread_marker265, align 8
  %162 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker266 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %162, i64 0, i32 72
  store i32 %161, ptr %unread_marker266, align 4
  %163 = load i64, ptr %get_buffer, align 8
  %164 = load ptr, ptr %entropy, align 8
  %bitstate267 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %164, i64 0, i32 1
  store i64 %163, ptr %bitstate267, align 8
  %165 = load i32, ptr %bits_left, align 4
  %bits_left270 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %164, i64 0, i32 1, i32 1
  store i32 %165, ptr %bits_left270, align 8
  %saved271 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %164, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %saved271, ptr noundef nonnull align 4 dereferenceable(16) %state, i64 16, i1 false)
  %166 = load ptr, ptr %entropy, align 8
  %restarts_to_go272 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %166, i64 0, i32 3
  %167 = load i32, ptr %restarts_to_go272, align 8
  %dec = add i32 %167, -1
  store i32 %dec, ptr %restarts_to_go272, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end258, %if.then239, %if.then224, %if.then195, %if.then148, %if.then133, %if.then104, %if.then61, %if.then49, %if.then29, %if.then4
  %168 = load i32, ptr %retval, align 4
  ret i32 %168
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_restart(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %ci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %bits_left = getelementptr inbounds %struct.huff_entropy_decoder, ptr %0, i64 0, i32 1, i32 1
  %1 = load i32, ptr %bits_left, align 8
  %div = sdiv i32 %1, 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 78
  %3 = load ptr, ptr %marker, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %3, i64 0, i32 8
  %4 = load i32, ptr %discarded_bytes, align 4
  %add = add i32 %4, %div
  store i32 %add, ptr %discarded_bytes, align 4
  %5 = load ptr, ptr %entropy, align 8
  %bits_left3 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %5, i64 0, i32 1, i32 1
  store i32 0, ptr %bits_left3, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 78
  %7 = load ptr, ptr %marker4, align 8
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %read_restart_marker, align 8
  %call = call i32 %8(ptr noundef %6) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %for.cond

for.cond:                                         ; preds = %entry, %for.body
  %storemerge1 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  store i32 %storemerge1, ptr %ci, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 62
  %10 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp slt i32 %storemerge1, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, ptr %11, i64 0, i32 2
  %12 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %saved, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %13 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %13, 1
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 49
  %15 = load i32, ptr %restart_interval, align 8
  %16 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, ptr %16, i64 0, i32 3
  store i32 %15, ptr %restarts_to_go, align 8
  %printed_eod = getelementptr inbounds %struct.huff_entropy_decoder, ptr %16, i64 0, i32 1, i32 2
  store i32 0, ptr %printed_eod, align 4
  br label %return

return:                                           ; preds = %entry, %for.end
  %storemerge = phi i32 [ 1, %for.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
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
