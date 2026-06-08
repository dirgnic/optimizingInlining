; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_llvm_like_size/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdphuff.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdphuff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phuff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x ptr], ptr }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { i32, [4 x i32] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.bitread_working_state = type { ptr, i64, i32, i64, i32, ptr, ptr }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], ptr, [256 x i32], [256 x i8] }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }

@extend_test = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 4
@extend_offset = internal constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 4
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jinit_phuff_decoder(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %coef_bit_ptr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 96) #3
  store ptr %call, ptr %entropy, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  store ptr %call, ptr %entropy1, align 8
  store ptr @start_pass_phuff_decoder, ptr %call, align 8
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
  %arrayidx = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %2, i64 0, i32 4, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %mem2, align 8
  %7 = load ptr, ptr %6, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 8
  %8 = load i32, ptr %num_components, align 8
  %mul = shl nsw i32 %8, 6
  %conv = sext i32 %mul to i64
  %mul4 = shl nsw i64 %conv, 2
  %call5 = call ptr %7(ptr noundef %5, i32 noundef 1, i64 noundef %mul4) #3
  %9 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 38
  store ptr %call5, ptr %coef_bits, align 8
  store ptr %call5, ptr %coef_bit_ptr, align 8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc21, %for.end
  %storemerge1 = phi i32 [ 0, %for.end ], [ %inc22, %for.inc21 ]
  store i32 %storemerge1, ptr %ci, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %num_components10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 8
  %11 = load i32, ptr %num_components10, align 8
  %cmp11 = icmp slt i32 %storemerge1, %11
  br i1 %cmp11, label %for.cond14, label %for.end23

for.cond14:                                       ; preds = %for.cond9, %for.body17
  %storemerge2 = phi i32 [ %inc19, %for.body17 ], [ 0, %for.cond9 ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp15 = icmp slt i32 %storemerge2, 64
  br i1 %cmp15, label %for.body17, label %for.inc21

for.body17:                                       ; preds = %for.cond14
  %12 = load ptr, ptr %coef_bit_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %12, i64 1
  store ptr %incdec.ptr, ptr %coef_bit_ptr, align 8
  store i32 -1, ptr %12, align 4
  %13 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %13, 1
  br label %for.cond14, !llvm.loop !8

for.inc21:                                        ; preds = %for.cond14
  %14 = load i32, ptr %ci, align 4
  %inc22 = add nsw i32 %14, 1
  br label %for.cond9, !llvm.loop !9

for.end23:                                        ; preds = %for.cond9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_phuff_decoder(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %is_DC_band = alloca i32, align 4
  %bad = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %tbl = alloca i32, align 4
  %coef_bit_ptr = alloca ptr, align 8
  %compptr = alloca ptr, align 8
  %cindex = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 68
  %1 = load i32, ptr %Ss, align 4
  %cmp = icmp eq i32 %1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %is_DC_band, align 4
  store i32 0, ptr %bad, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 69
  %3 = load i32, ptr %Se, align 8
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %if.end18, label %if.then4

if.then4:                                         ; preds = %if.then
  store i32 1, ptr %bad, align 4
  br label %if.end18

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %Ss5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 68
  %5 = load i32, ptr %Ss5, align 4
  %Se6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 69
  %6 = load i32, ptr %Se6, align 8
  %cmp7 = icmp sgt i32 %5, %6
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load ptr, ptr %cinfo.addr, align 8
  %Se9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 69
  %8 = load i32, ptr %Se9, align 8
  %cmp10 = icmp sgt i32 %8, 63
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %if.else
  store i32 1, ptr %bad, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false
  %9 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 62
  %10 = load i32, ptr %comps_in_scan, align 8
  %cmp14.not = icmp eq i32 %10, 1
  br i1 %cmp14.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  store i32 1, ptr %bad, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end13, %if.then16, %if.then, %if.then4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 70
  %12 = load i32, ptr %Ah, align 4
  %cmp19.not = icmp eq i32 %12, 0
  br i1 %cmp19.not, label %if.end27, label %if.then21

if.then21:                                        ; preds = %if.end18
  %13 = load ptr, ptr %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 71
  %14 = load i32, ptr %Al, align 8
  %Ah22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 70
  %15 = load i32, ptr %Ah22, align 4
  %sub = add nsw i32 %15, -1
  %cmp23.not = icmp eq i32 %14, %sub
  br i1 %cmp23.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.then21
  store i32 1, ptr %bad, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.then25, %if.end18
  %16 = load ptr, ptr %cinfo.addr, align 8
  %Al28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 71
  %17 = load i32, ptr %Al28, align 8
  %cmp29 = icmp sgt i32 %17, 13
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  store i32 1, ptr %bad, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27
  %18 = load i32, ptr %bad, align 4
  %tobool33.not = icmp eq i32 %18, 0
  br i1 %tobool33.not, label %if.end50, label %if.then34

if.then34:                                        ; preds = %if.end32
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 14, ptr %msg_code, align 8
  %Ss35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 68
  %21 = load i32, ptr %Ss35, align 4
  %22 = load ptr, ptr %19, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 6
  store i32 %21, ptr %msg_parm, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %Se37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 69
  %24 = load i32, ptr %Se37, align 8
  %25 = load ptr, ptr %23, align 8
  %arrayidx40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 6, i32 0, i64 1
  store i32 %24, ptr %arrayidx40, align 4
  %Ah41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 70
  %26 = load i32, ptr %Ah41, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %arrayidx44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 6, i32 0, i64 2
  store i32 %26, ptr %arrayidx44, align 4
  %Al45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 71
  %29 = load i32, ptr %Al45, align 8
  %30 = load ptr, ptr %27, align 8
  %arrayidx48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i64 0, i32 6, i32 0, i64 3
  store i32 %29, ptr %arrayidx48, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull %31) #3
  br label %if.end50

if.end50:                                         ; preds = %if.then34, %if.end32
  br label %for.cond

for.cond:                                         ; preds = %for.inc103, %if.end50
  %storemerge = phi i32 [ 0, %if.end50 ], [ %inc104, %for.inc103 ]
  store i32 %storemerge, ptr %ci, align 4
  %34 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i64 0, i32 62
  %35 = load i32, ptr %comps_in_scan51, align 8
  %cmp52 = icmp slt i32 %storemerge, %35
  br i1 %cmp52, label %for.body, label %for.end105

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %cinfo.addr, align 8
  %37 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i64 0, i32 63, i64 %idxprom
  %38 = load ptr, ptr %arrayidx54, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, i32 1
  %39 = load i32, ptr %component_index, align 4
  store i32 %39, ptr %cindex, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i64 0, i32 38
  %41 = load ptr, ptr %coef_bits, align 8
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds [64 x i32], ptr %41, i64 %idxprom55
  store ptr %arrayidx56, ptr %coef_bit_ptr, align 8
  %42 = load i32, ptr %is_DC_band, align 4
  %tobool58.not = icmp eq i32 %42, 0
  br i1 %tobool58.not, label %land.lhs.true, label %if.end72

land.lhs.true:                                    ; preds = %for.body
  %43 = load ptr, ptr %coef_bit_ptr, align 8
  %44 = load i32, ptr %43, align 4
  %cmp60 = icmp slt i32 %44, 0
  br i1 %cmp60, label %if.then62, label %if.end72

if.then62:                                        ; preds = %land.lhs.true
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %msg_code64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 5
  store i32 111, ptr %msg_code64, align 8
  %47 = load i32, ptr %cindex, align 4
  %48 = load ptr, ptr %45, align 8
  %msg_parm66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 6
  store i32 %47, ptr %msg_parm66, align 4
  %49 = load ptr, ptr %cinfo.addr, align 8
  %50 = load ptr, ptr %49, align 8
  %arrayidx70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 6, i32 0, i64 1
  store i32 0, ptr %arrayidx70, align 4
  %51 = load ptr, ptr %49, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 1
  %52 = load ptr, ptr %emit_message, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  call void %52(ptr noundef %53, i32 noundef -1) #3
  br label %if.end72

if.end72:                                         ; preds = %if.then62, %land.lhs.true, %for.body
  %54 = load ptr, ptr %cinfo.addr, align 8
  %Ss73 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i64 0, i32 68
  %55 = load i32, ptr %Ss73, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %if.end99, %if.end72
  %storemerge2 = phi i32 [ %55, %if.end72 ], [ %inc, %if.end99 ]
  store i32 %storemerge2, ptr %coefi, align 4
  %56 = load ptr, ptr %cinfo.addr, align 8
  %Se75 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i64 0, i32 69
  %57 = load i32, ptr %Se75, align 8
  %cmp76.not = icmp sgt i32 %storemerge2, %57
  br i1 %cmp76.not, label %for.inc103, label %for.body78

for.body78:                                       ; preds = %for.cond74
  %58 = load ptr, ptr %coef_bit_ptr, align 8
  %59 = load i32, ptr %coefi, align 4
  %idxprom79 = sext i32 %59 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %58, i64 %idxprom79
  %60 = load i32, ptr %arrayidx80, align 4
  %cmp81 = icmp slt i32 %60, 0
  br i1 %cmp81, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body78
  %61 = load ptr, ptr %coef_bit_ptr, align 8
  %62 = load i32, ptr %coefi, align 4
  %idxprom83 = sext i32 %62 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %61, i64 %idxprom83
  %63 = load i32, ptr %arrayidx84, align 4
  br label %cond.end

cond.end:                                         ; preds = %for.body78, %cond.false
  %cond = phi i32 [ %63, %cond.false ], [ 0, %for.body78 ]
  %64 = load ptr, ptr %cinfo.addr, align 8
  %Ah85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i64 0, i32 70
  %65 = load i32, ptr %Ah85, align 4
  %cmp86.not = icmp eq i32 %65, %cond
  br i1 %cmp86.not, label %if.end99, label %if.then88

if.then88:                                        ; preds = %cond.end
  %66 = load ptr, ptr %cinfo.addr, align 8
  %67 = load ptr, ptr %66, align 8
  %msg_code90 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 5
  store i32 111, ptr %msg_code90, align 8
  %68 = load i32, ptr %cindex, align 4
  %69 = load ptr, ptr %66, align 8
  %msg_parm92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i64 0, i32 6
  store i32 %68, ptr %msg_parm92, align 4
  %70 = load i32, ptr %coefi, align 4
  %71 = load ptr, ptr %cinfo.addr, align 8
  %72 = load ptr, ptr %71, align 8
  %arrayidx96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i64 0, i32 6, i32 0, i64 1
  store i32 %70, ptr %arrayidx96, align 4
  %73 = load ptr, ptr %71, align 8
  %emit_message98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 1
  %74 = load ptr, ptr %emit_message98, align 8
  %75 = load ptr, ptr %cinfo.addr, align 8
  call void %74(ptr noundef %75, i32 noundef -1) #3
  br label %if.end99

if.end99:                                         ; preds = %if.then88, %cond.end
  %76 = load ptr, ptr %cinfo.addr, align 8
  %Al100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i64 0, i32 71
  %77 = load i32, ptr %Al100, align 8
  %78 = load ptr, ptr %coef_bit_ptr, align 8
  %79 = load i32, ptr %coefi, align 4
  %idxprom101 = sext i32 %79 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %78, i64 %idxprom101
  store i32 %77, ptr %arrayidx102, align 4
  %80 = load i32, ptr %coefi, align 4
  %inc = add nsw i32 %80, 1
  br label %for.cond74, !llvm.loop !10

for.inc103:                                       ; preds = %for.cond74
  %81 = load i32, ptr %ci, align 4
  %inc104 = add nsw i32 %81, 1
  br label %for.cond, !llvm.loop !11

for.end105:                                       ; preds = %for.cond
  %82 = load ptr, ptr %cinfo.addr, align 8
  %Ah106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i64 0, i32 70
  %83 = load i32, ptr %Ah106, align 4
  %cmp107 = icmp eq i32 %83, 0
  br i1 %cmp107, label %if.then109, label %if.else116

if.then109:                                       ; preds = %for.end105
  %84 = load i32, ptr %is_DC_band, align 4
  %tobool110.not = icmp eq i32 %84, 0
  br i1 %tobool110.not, label %if.else112, label %if.then111

if.then111:                                       ; preds = %if.then109
  %85 = load ptr, ptr %entropy, align 8
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %85, i64 0, i32 1
  store ptr @decode_mcu_DC_first, ptr %decode_mcu, align 8
  br label %if.end125

if.else112:                                       ; preds = %if.then109
  %86 = load ptr, ptr %entropy, align 8
  %decode_mcu114 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %86, i64 0, i32 1
  store ptr @decode_mcu_AC_first, ptr %decode_mcu114, align 8
  br label %if.end125

if.else116:                                       ; preds = %for.end105
  %87 = load i32, ptr %is_DC_band, align 4
  %tobool117.not = icmp eq i32 %87, 0
  br i1 %tobool117.not, label %if.else121, label %if.then118

if.then118:                                       ; preds = %if.else116
  %88 = load ptr, ptr %entropy, align 8
  %decode_mcu120 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %88, i64 0, i32 1
  store ptr @decode_mcu_DC_refine, ptr %decode_mcu120, align 8
  br label %if.end125

if.else121:                                       ; preds = %if.else116
  %89 = load ptr, ptr %entropy, align 8
  %decode_mcu123 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %89, i64 0, i32 1
  store ptr @decode_mcu_AC_refine, ptr %decode_mcu123, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then118, %if.else121, %if.then111, %if.else112
  br label %for.cond126

for.cond126:                                      ; preds = %if.end194, %if.end125
  %storemerge1 = phi i32 [ 0, %if.end125 ], [ %inc198, %if.end194 ]
  store i32 %storemerge1, ptr %ci, align 4
  %90 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan127 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i64 0, i32 62
  %91 = load i32, ptr %comps_in_scan127, align 8
  %cmp128 = icmp slt i32 %storemerge1, %91
  br i1 %cmp128, label %for.body130, label %for.end199

for.body130:                                      ; preds = %for.cond126
  %92 = load ptr, ptr %cinfo.addr, align 8
  %93 = load i32, ptr %ci, align 4
  %idxprom132 = sext i32 %93 to i64
  %arrayidx133 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %92, i64 0, i32 63, i64 %idxprom132
  %94 = load ptr, ptr %arrayidx133, align 8
  store ptr %94, ptr %compptr, align 8
  %95 = load i32, ptr %is_DC_band, align 4
  %tobool134.not = icmp eq i32 %95, 0
  br i1 %tobool134.not, label %if.else165, label %if.then135

if.then135:                                       ; preds = %for.body130
  %96 = load ptr, ptr %cinfo.addr, align 8
  %Ah136 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i64 0, i32 70
  %97 = load i32, ptr %Ah136, align 4
  %cmp137 = icmp eq i32 %97, 0
  br i1 %cmp137, label %if.then139, label %if.end194

if.then139:                                       ; preds = %if.then135
  %98 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %98, i64 0, i32 5
  %99 = load i32, ptr %dc_tbl_no, align 4
  store i32 %99, ptr %tbl, align 4
  %cmp140 = icmp slt i32 %99, 0
  %100 = load i32, ptr %tbl, align 4
  %cmp143 = icmp sgt i32 %100, 3
  %or.cond = select i1 %cmp140, i1 true, i1 %cmp143
  br i1 %or.cond, label %if.then150, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %if.then139
  %101 = load ptr, ptr %cinfo.addr, align 8
  %102 = load i32, ptr %tbl, align 4
  %idxprom146 = sext i32 %102 to i64
  %arrayidx147 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %101, i64 0, i32 40, i64 %idxprom146
  %103 = load ptr, ptr %arrayidx147, align 8
  %cmp148 = icmp eq ptr %103, null
  br i1 %cmp148, label %if.then150, label %if.end158

if.then150:                                       ; preds = %lor.lhs.false145, %if.then139
  %104 = load ptr, ptr %cinfo.addr, align 8
  %105 = load ptr, ptr %104, align 8
  %msg_code152 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %105, i64 0, i32 5
  store i32 49, ptr %msg_code152, align 8
  %106 = load i32, ptr %tbl, align 4
  %107 = load ptr, ptr %104, align 8
  %msg_parm154 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 6
  store i32 %106, ptr %msg_parm154, align 4
  %108 = load ptr, ptr %cinfo.addr, align 8
  %109 = load ptr, ptr %108, align 8
  %110 = load ptr, ptr %109, align 8
  call void %110(ptr noundef nonnull %108) #3
  br label %if.end158

if.end158:                                        ; preds = %if.then150, %lor.lhs.false145
  %111 = load ptr, ptr %cinfo.addr, align 8
  %112 = load i32, ptr %tbl, align 4
  %idxprom160 = sext i32 %112 to i64
  %arrayidx161 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %111, i64 0, i32 40, i64 %idxprom160
  %113 = load ptr, ptr %arrayidx161, align 8
  %114 = load ptr, ptr %entropy, align 8
  %idxprom162 = sext i32 %112 to i64
  %arrayidx163 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %114, i64 0, i32 4, i64 %idxprom162
  call void @jpeg_make_d_derived_tbl(ptr noundef %111, ptr noundef %113, ptr noundef nonnull %arrayidx163) #3
  br label %if.end194

if.else165:                                       ; preds = %for.body130
  %115 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %115, i64 0, i32 6
  %116 = load i32, ptr %ac_tbl_no, align 8
  store i32 %116, ptr %tbl, align 4
  %cmp166 = icmp slt i32 %116, 0
  %117 = load i32, ptr %tbl, align 4
  %cmp169 = icmp sgt i32 %117, 3
  %or.cond3 = select i1 %cmp166, i1 true, i1 %cmp169
  br i1 %or.cond3, label %if.then176, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %if.else165
  %118 = load ptr, ptr %cinfo.addr, align 8
  %119 = load i32, ptr %tbl, align 4
  %idxprom172 = sext i32 %119 to i64
  %arrayidx173 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %118, i64 0, i32 41, i64 %idxprom172
  %120 = load ptr, ptr %arrayidx173, align 8
  %cmp174 = icmp eq ptr %120, null
  br i1 %cmp174, label %if.then176, label %if.end184

if.then176:                                       ; preds = %lor.lhs.false171, %if.else165
  %121 = load ptr, ptr %cinfo.addr, align 8
  %122 = load ptr, ptr %121, align 8
  %msg_code178 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %122, i64 0, i32 5
  store i32 49, ptr %msg_code178, align 8
  %123 = load i32, ptr %tbl, align 4
  %124 = load ptr, ptr %121, align 8
  %msg_parm180 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 6
  store i32 %123, ptr %msg_parm180, align 4
  %125 = load ptr, ptr %cinfo.addr, align 8
  %126 = load ptr, ptr %125, align 8
  %127 = load ptr, ptr %126, align 8
  call void %127(ptr noundef nonnull %125) #3
  br label %if.end184

if.end184:                                        ; preds = %if.then176, %lor.lhs.false171
  %128 = load ptr, ptr %cinfo.addr, align 8
  %129 = load i32, ptr %tbl, align 4
  %idxprom186 = sext i32 %129 to i64
  %arrayidx187 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %128, i64 0, i32 41, i64 %idxprom186
  %130 = load ptr, ptr %arrayidx187, align 8
  %131 = load ptr, ptr %entropy, align 8
  %idxprom189 = sext i32 %129 to i64
  %arrayidx190 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %131, i64 0, i32 4, i64 %idxprom189
  call void @jpeg_make_d_derived_tbl(ptr noundef %128, ptr noundef %130, ptr noundef nonnull %arrayidx190) #3
  %132 = load i32, ptr %tbl, align 4
  %idxprom192 = sext i32 %132 to i64
  %arrayidx193 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %131, i64 0, i32 4, i64 %idxprom192
  %133 = load ptr, ptr %arrayidx193, align 8
  %134 = load ptr, ptr %entropy, align 8
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %134, i64 0, i32 5
  store ptr %133, ptr %ac_derived_tbl, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.then135, %if.end158, %if.end184
  %135 = load ptr, ptr %entropy, align 8
  %136 = load i32, ptr %ci, align 4
  %idxprom195 = sext i32 %136 to i64
  %arrayidx196 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %135, i64 0, i32 2, i32 1, i64 %idxprom195
  store i32 0, ptr %arrayidx196, align 4
  %137 = load i32, ptr %ci, align 4
  %inc198 = add nsw i32 %137, 1
  br label %for.cond126, !llvm.loop !12

for.end199:                                       ; preds = %for.cond126
  %138 = load ptr, ptr %entropy, align 8
  %bits_left = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %138, i64 0, i32 1, i32 1
  store i32 0, ptr %bits_left, align 8
  %bitstate200 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %138, i64 0, i32 1
  store i64 0, ptr %bitstate200, align 8
  %printed_eod = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %138, i64 0, i32 1, i32 2
  store i32 0, ptr %printed_eod, align 4
  %139 = load ptr, ptr %entropy, align 8
  %saved202 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %139, i64 0, i32 2
  store i32 0, ptr %saved202, align 8
  %140 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %140, i64 0, i32 49
  %141 = load i32, ptr %restart_interval, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %139, i64 0, i32 3
  store i32 %141, ptr %restarts_to_go, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu_DC_first(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %Al = alloca i32, align 4
  %s = alloca i32, align 4
  %r = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %block = alloca ptr, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %state = alloca %struct.savable_state, align 4
  %tbl = alloca ptr, align 8
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Al2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 71
  %1 = load i32, ptr %Al2, align 8
  store i32 %1, ptr %Al, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 49
  %3 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %restarts_to_go, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @process_restart(ptr noundef %6)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then, %if.then3, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %cinfo8 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 5
  store ptr %7, ptr %cinfo8, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %src, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %br_state, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %src10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 5
  %11 = load ptr, ptr %src10, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %11, i64 0, i32 1
  %12 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer11 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  store i64 %12, ptr %bytes_in_buffer11, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 72
  %14 = load i32, ptr %unread_marker, align 4
  %unread_marker12 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  store i32 %14, ptr %unread_marker12, align 8
  %15 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %15, i64 0, i32 1
  %16 = load i64, ptr %bitstate, align 8
  store i64 %16, ptr %get_buffer, align 8
  %bits_left15 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %15, i64 0, i32 1, i32 1
  %17 = load i32, ptr %bits_left15, align 8
  store i32 %17, ptr %bits_left, align 4
  %18 = load ptr, ptr %entropy, align 8
  %printed_eod = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %18, i64 0, i32 1, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %18, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %state, ptr noundef nonnull align 8 dereferenceable(20) %saved, i64 20, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %if.end77, %if.end7
  %storemerge = phi i32 [ 0, %if.end7 ], [ %inc, %if.end77 ]
  store i32 %storemerge, ptr %blkn, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 66
  %20 = load i32, ptr %blocks_in_MCU, align 8
  %cmp17 = icmp slt i32 %storemerge, %20
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %MCU_data.addr, align 8
  %22 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %21, i64 %idxprom
  %23 = load ptr, ptr %arrayidx, align 8
  store ptr %23, ptr %block, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 67, i64 %idxprom18
  %25 = load i32, ptr %arrayidx19, align 4
  store i32 %25, ptr %ci, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 63, i64 %idxprom20
  %26 = load ptr, ptr %arrayidx21, align 8
  %27 = load ptr, ptr %entropy, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %dc_tbl_no, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %27, i64 0, i32 4, i64 %idxprom22
  %29 = load ptr, ptr %arrayidx23, align 8
  store ptr %29, ptr %tbl, align 8
  %30 = load i32, ptr %bits_left, align 4
  %cmp24 = icmp slt i32 %30, 8
  br i1 %cmp24, label %if.then25, label %if.end35

if.then25:                                        ; preds = %for.body
  %31 = load i64, ptr %get_buffer, align 8
  %32 = load i32, ptr %bits_left, align 4
  %call26 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %31, i32 noundef %32, i32 noundef 0) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then25
  %get_buffer30 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %33 = load i64, ptr %get_buffer30, align 8
  store i64 %33, ptr %get_buffer, align 8
  %bits_left31 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %34 = load i32, ptr %bits_left31, align 8
  store i32 %34, ptr %bits_left, align 4
  %cmp32 = icmp slt i32 %34, 8
  br i1 %cmp32, label %label1, label %if.end35

if.end35:                                         ; preds = %if.end29, %for.body
  %35 = load i64, ptr %get_buffer, align 8
  %36 = load i32, ptr %bits_left, align 4
  %sub = add nsw i32 %36, -8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %35, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, ptr %look, align 4
  %37 = load ptr, ptr %tbl, align 8
  %idxprom36 = zext i32 %and to i64
  %arrayidx37 = getelementptr inbounds %struct.d_derived_tbl, ptr %37, i64 0, i32 4, i64 %idxprom36
  %38 = load i32, ptr %arrayidx37, align 4
  store i32 %38, ptr %nb, align 4
  %cmp38.not = icmp eq i32 %38, 0
  br i1 %cmp38.not, label %label1, label %if.then40

if.then40:                                        ; preds = %if.end35
  %39 = load i32, ptr %nb, align 4
  %40 = load i32, ptr %bits_left, align 4
  %sub41 = sub nsw i32 %40, %39
  store i32 %sub41, ptr %bits_left, align 4
  %41 = load ptr, ptr %tbl, align 8
  %42 = load i32, ptr %look, align 4
  %idxprom42 = sext i32 %42 to i64
  %arrayidx43 = getelementptr inbounds %struct.d_derived_tbl, ptr %41, i64 0, i32 5, i64 %idxprom42
  %43 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %43 to i32
  store i32 %conv44, ptr %s, align 4
  br label %if.end52

label1:                                           ; preds = %if.end35, %if.end29
  %storemerge1 = phi i32 [ 1, %if.end29 ], [ 9, %if.end35 ]
  store i32 %storemerge1, ptr %nb, align 4
  %44 = load i64, ptr %get_buffer, align 8
  %45 = load i32, ptr %bits_left, align 4
  %46 = load ptr, ptr %tbl, align 8
  %call45 = call i32 @jpeg_huff_decode(ptr noundef nonnull %br_state, i64 noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %storemerge1) #3
  store i32 %call45, ptr %s, align 4
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %label1
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %label1
  %get_buffer50 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %47 = load i64, ptr %get_buffer50, align 8
  store i64 %47, ptr %get_buffer, align 8
  %bits_left51 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %48 = load i32, ptr %bits_left51, align 8
  store i32 %48, ptr %bits_left, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.then40
  %49 = load i32, ptr %s, align 4
  %tobool53.not = icmp eq i32 %49, 0
  br i1 %tobool53.not, label %if.end77, label %if.then54

if.then54:                                        ; preds = %if.end52
  %50 = load i32, ptr %bits_left, align 4
  %51 = load i32, ptr %s, align 4
  %cmp55 = icmp slt i32 %50, %51
  br i1 %cmp55, label %if.then57, label %if.end64

if.then57:                                        ; preds = %if.then54
  %52 = load i64, ptr %get_buffer, align 8
  %53 = load i32, ptr %bits_left, align 4
  %54 = load i32, ptr %s, align 4
  %call58 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %52, i32 noundef %53, i32 noundef %54) #3
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then57
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then57
  %get_buffer62 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %55 = load i64, ptr %get_buffer62, align 8
  store i64 %55, ptr %get_buffer, align 8
  %bits_left63 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %56 = load i32, ptr %bits_left63, align 8
  store i32 %56, ptr %bits_left, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.then54
  %57 = load i64, ptr %get_buffer, align 8
  %58 = load i32, ptr %s, align 4
  %59 = load i32, ptr %bits_left, align 4
  %sub65 = sub nsw i32 %59, %58
  store i32 %sub65, ptr %bits_left, align 4
  %sh_prom66 = zext i32 %sub65 to i64
  %shr67 = ashr i64 %57, %sh_prom66
  %conv68 = trunc i64 %shr67 to i32
  %60 = load i32, ptr %s, align 4
  %notmask = shl nsw i32 -1, %60
  %sub69 = xor i32 %notmask, -1
  %and70 = and i32 %conv68, %sub69
  store i32 %and70, ptr %r, align 4
  %idxprom71 = sext i32 %60 to i64
  %arrayidx72 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %idxprom71
  %61 = load i32, ptr %arrayidx72, align 4
  %cmp73 = icmp slt i32 %and70, %61
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end64
  %62 = load i32, ptr %r, align 4
  %63 = load i32, ptr %s, align 4
  %idxprom75 = sext i32 %63 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %idxprom75
  %64 = load i32, ptr %arrayidx76, align 4
  %add = add nsw i32 %62, %64
  br label %cond.end

cond.false:                                       ; preds = %if.end64
  %65 = load i32, ptr %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %65, %cond.false ]
  store i32 %cond, ptr %s, align 4
  br label %if.end77

if.end77:                                         ; preds = %cond.end, %if.end52
  %66 = load i32, ptr %ci, align 4
  %idxprom78 = sext i32 %66 to i64
  %arrayidx79 = getelementptr inbounds %struct.savable_state, ptr %state, i64 0, i32 1, i64 %idxprom78
  %67 = load i32, ptr %arrayidx79, align 4
  %68 = load i32, ptr %s, align 4
  %add80 = add nsw i32 %68, %67
  store i32 %add80, ptr %s, align 4
  %69 = load i32, ptr %ci, align 4
  %idxprom82 = sext i32 %69 to i64
  %arrayidx83 = getelementptr inbounds %struct.savable_state, ptr %state, i64 0, i32 1, i64 %idxprom82
  store i32 %add80, ptr %arrayidx83, align 4
  %70 = load i32, ptr %Al, align 4
  %shl84 = shl i32 %add80, %70
  %conv85 = trunc i32 %shl84 to i16
  %71 = load ptr, ptr %block, align 8
  store i16 %conv85, ptr %71, align 2
  %72 = load i32, ptr %blkn, align 4
  %inc = add nsw i32 %72, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %73 = load ptr, ptr %br_state, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  %src88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %74, i64 0, i32 5
  %75 = load ptr, ptr %src88, align 8
  store ptr %73, ptr %75, align 8
  %bytes_in_buffer90 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  %76 = load i64, ptr %bytes_in_buffer90, align 8
  %src91 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %74, i64 0, i32 5
  %77 = load ptr, ptr %src91, align 8
  %bytes_in_buffer92 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %77, i64 0, i32 1
  store i64 %76, ptr %bytes_in_buffer92, align 8
  %unread_marker93 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  %78 = load i32, ptr %unread_marker93, align 8
  %79 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker94 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i64 0, i32 72
  store i32 %78, ptr %unread_marker94, align 4
  %80 = load i64, ptr %get_buffer, align 8
  %81 = load ptr, ptr %entropy, align 8
  %bitstate95 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %81, i64 0, i32 1
  store i64 %80, ptr %bitstate95, align 8
  %82 = load i32, ptr %bits_left, align 4
  %bits_left98 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %81, i64 0, i32 1, i32 1
  store i32 %82, ptr %bits_left98, align 8
  %saved99 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %81, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %saved99, ptr noundef nonnull align 4 dereferenceable(20) %state, i64 20, i1 false)
  %83 = load ptr, ptr %entropy, align 8
  %restarts_to_go100 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %83, i64 0, i32 3
  %84 = load i32, ptr %restarts_to_go100, align 4
  %dec = add i32 %84, -1
  store i32 %dec, ptr %restarts_to_go100, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then60, %if.then48, %if.then28, %if.then5
  %85 = load i32, ptr %retval, align 4
  ret i32 %85
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu_AC_first(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %EOBRUN = alloca i32, align 4
  %block = alloca ptr, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %tbl = alloca ptr, align 8
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 69
  %1 = load i32, ptr %Se2, align 8
  store i32 %1, ptr %Se, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 71
  %3 = load i32, ptr %Al3, align 8
  store i32 %3, ptr %Al, align 4
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 49
  %4 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 3
  %6 = load i32, ptr %restarts_to_go, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @process_restart(ptr noundef %7)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then, %if.then4, %entry
  %8 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %saved, align 8
  store i32 %9, ptr %EOBRUN, align 4
  %cmp10.not = icmp eq i32 %9, 0
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  %10 = load i32, ptr %EOBRUN, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %EOBRUN, align 4
  br label %if.end127

if.else:                                          ; preds = %if.end8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %cinfo12 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 5
  store ptr %11, ptr %cinfo12, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 5
  %12 = load ptr, ptr %src, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %br_state, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %src14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 5
  %15 = load ptr, ptr %src14, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %15, i64 0, i32 1
  %16 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer15 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  store i64 %16, ptr %bytes_in_buffer15, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 72
  %18 = load i32, ptr %unread_marker, align 4
  %unread_marker16 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  store i32 %18, ptr %unread_marker16, align 8
  %19 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %19, i64 0, i32 1
  %20 = load i64, ptr %bitstate, align 8
  store i64 %20, ptr %get_buffer, align 8
  %bits_left19 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %19, i64 0, i32 1, i32 1
  %21 = load i32, ptr %bits_left19, align 8
  store i32 %21, ptr %bits_left, align 4
  %22 = load ptr, ptr %entropy, align 8
  %printed_eod = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %22, i64 0, i32 1, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  %23 = load ptr, ptr %MCU_data.addr, align 8
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %block, align 8
  %25 = load ptr, ptr %entropy, align 8
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %25, i64 0, i32 5
  %26 = load ptr, ptr %ac_derived_tbl, align 8
  store ptr %26, ptr %tbl, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 68
  %28 = load i32, ptr %Ss, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %storemerge = phi i32 [ %28, %if.else ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %k, align 4
  %29 = load i32, ptr %Se, align 4
  %cmp21.not = icmp sgt i32 %storemerge, %29
  br i1 %cmp21.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %30 = load i32, ptr %bits_left, align 4
  %cmp22 = icmp slt i32 %30, 8
  br i1 %cmp22, label %if.then23, label %if.end33

if.then23:                                        ; preds = %for.body
  %31 = load i64, ptr %get_buffer, align 8
  %32 = load i32, ptr %bits_left, align 4
  %call24 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %31, i32 noundef %32, i32 noundef 0) #3
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then23
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.then23
  %get_buffer28 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %33 = load i64, ptr %get_buffer28, align 8
  store i64 %33, ptr %get_buffer, align 8
  %bits_left29 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %34 = load i32, ptr %bits_left29, align 8
  store i32 %34, ptr %bits_left, align 4
  %cmp30 = icmp slt i32 %34, 8
  br i1 %cmp30, label %label2, label %if.end33

if.end33:                                         ; preds = %if.end27, %for.body
  %35 = load i64, ptr %get_buffer, align 8
  %36 = load i32, ptr %bits_left, align 4
  %sub = add nsw i32 %36, -8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %35, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, ptr %look, align 4
  %37 = load ptr, ptr %tbl, align 8
  %idxprom = zext i32 %and to i64
  %arrayidx34 = getelementptr inbounds %struct.d_derived_tbl, ptr %37, i64 0, i32 4, i64 %idxprom
  %38 = load i32, ptr %arrayidx34, align 4
  store i32 %38, ptr %nb, align 4
  %cmp35.not = icmp eq i32 %38, 0
  br i1 %cmp35.not, label %label2, label %if.then37

if.then37:                                        ; preds = %if.end33
  %39 = load i32, ptr %nb, align 4
  %40 = load i32, ptr %bits_left, align 4
  %sub38 = sub nsw i32 %40, %39
  store i32 %sub38, ptr %bits_left, align 4
  %41 = load ptr, ptr %tbl, align 8
  %42 = load i32, ptr %look, align 4
  %idxprom39 = sext i32 %42 to i64
  %arrayidx40 = getelementptr inbounds %struct.d_derived_tbl, ptr %41, i64 0, i32 5, i64 %idxprom39
  %43 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %43 to i32
  store i32 %conv41, ptr %s, align 4
  br label %if.end50

label2:                                           ; preds = %if.end33, %if.end27
  %storemerge1 = phi i32 [ 1, %if.end27 ], [ 9, %if.end33 ]
  store i32 %storemerge1, ptr %nb, align 4
  %44 = load i64, ptr %get_buffer, align 8
  %45 = load i32, ptr %bits_left, align 4
  %46 = load ptr, ptr %tbl, align 8
  %call43 = call i32 @jpeg_huff_decode(ptr noundef nonnull %br_state, i64 noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %storemerge1) #3
  store i32 %call43, ptr %s, align 4
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %label2
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %label2
  %get_buffer48 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %47 = load i64, ptr %get_buffer48, align 8
  store i64 %47, ptr %get_buffer, align 8
  %bits_left49 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %48 = load i32, ptr %bits_left49, align 8
  store i32 %48, ptr %bits_left, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then37
  %49 = load i32, ptr %s, align 4
  %shr51 = ashr i32 %49, 4
  store i32 %shr51, ptr %r, align 4
  %and52 = and i32 %49, 15
  store i32 %and52, ptr %s, align 4
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else84, label %if.then54

if.then54:                                        ; preds = %if.end50
  %50 = load i32, ptr %r, align 4
  %51 = load i32, ptr %k, align 4
  %add = add nsw i32 %51, %50
  store i32 %add, ptr %k, align 4
  %52 = load i32, ptr %bits_left, align 4
  %53 = load i32, ptr %s, align 4
  %cmp55 = icmp slt i32 %52, %53
  br i1 %cmp55, label %if.then57, label %if.end64

if.then57:                                        ; preds = %if.then54
  %54 = load i64, ptr %get_buffer, align 8
  %55 = load i32, ptr %bits_left, align 4
  %56 = load i32, ptr %s, align 4
  %call58 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %54, i32 noundef %55, i32 noundef %56) #3
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then57
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then57
  %get_buffer62 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %57 = load i64, ptr %get_buffer62, align 8
  store i64 %57, ptr %get_buffer, align 8
  %bits_left63 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %58 = load i32, ptr %bits_left63, align 8
  store i32 %58, ptr %bits_left, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.then54
  %59 = load i64, ptr %get_buffer, align 8
  %60 = load i32, ptr %s, align 4
  %61 = load i32, ptr %bits_left, align 4
  %sub65 = sub nsw i32 %61, %60
  store i32 %sub65, ptr %bits_left, align 4
  %sh_prom66 = zext i32 %sub65 to i64
  %shr67 = ashr i64 %59, %sh_prom66
  %conv68 = trunc i64 %shr67 to i32
  %62 = load i32, ptr %s, align 4
  %notmask2 = shl nsw i32 -1, %62
  %sub69 = xor i32 %notmask2, -1
  %and70 = and i32 %conv68, %sub69
  store i32 %and70, ptr %r, align 4
  %idxprom71 = sext i32 %62 to i64
  %arrayidx72 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %idxprom71
  %63 = load i32, ptr %arrayidx72, align 4
  %cmp73 = icmp slt i32 %and70, %63
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end64
  %64 = load i32, ptr %r, align 4
  %65 = load i32, ptr %s, align 4
  %idxprom75 = sext i32 %65 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %idxprom75
  %66 = load i32, ptr %arrayidx76, align 4
  %add77 = add nsw i32 %64, %66
  br label %cond.end

cond.false:                                       ; preds = %if.end64
  %67 = load i32, ptr %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add77, %cond.true ], [ %67, %cond.false ]
  store i32 %cond, ptr %s, align 4
  %68 = load i32, ptr %Al, align 4
  %shl78 = shl i32 %cond, %68
  %conv79 = trunc i32 %shl78 to i16
  %69 = load ptr, ptr %block, align 8
  %70 = load i32, ptr %k, align 4
  %idxprom80 = sext i32 %70 to i64
  %arrayidx81 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom80
  %71 = load i32, ptr %arrayidx81, align 4
  %idxprom82 = sext i32 %71 to i64
  %arrayidx83 = getelementptr inbounds [64 x i16], ptr %69, i64 0, i64 %idxprom82
  store i16 %conv79, ptr %arrayidx83, align 2
  br label %for.inc

if.else84:                                        ; preds = %if.end50
  %72 = load i32, ptr %r, align 4
  %cmp85 = icmp eq i32 %72, 15
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.else84
  %73 = load i32, ptr %k, align 4
  %add88 = add nsw i32 %73, 15
  store i32 %add88, ptr %k, align 4
  br label %for.inc

if.else89:                                        ; preds = %if.else84
  %74 = load i32, ptr %r, align 4
  %shl90 = shl i32 1, %74
  store i32 %shl90, ptr %EOBRUN, align 4
  %tobool91.not = icmp eq i32 %74, 0
  br i1 %tobool91.not, label %if.end111, label %if.then92

if.then92:                                        ; preds = %if.else89
  %75 = load i32, ptr %bits_left, align 4
  %76 = load i32, ptr %r, align 4
  %cmp93 = icmp slt i32 %75, %76
  br i1 %cmp93, label %if.then95, label %if.end102

if.then95:                                        ; preds = %if.then92
  %77 = load i64, ptr %get_buffer, align 8
  %78 = load i32, ptr %bits_left, align 4
  %79 = load i32, ptr %r, align 4
  %call96 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %77, i32 noundef %78, i32 noundef %79) #3
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then95
  store i32 0, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %if.then95
  %get_buffer100 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %80 = load i64, ptr %get_buffer100, align 8
  store i64 %80, ptr %get_buffer, align 8
  %bits_left101 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %81 = load i32, ptr %bits_left101, align 8
  store i32 %81, ptr %bits_left, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end99, %if.then92
  %82 = load i64, ptr %get_buffer, align 8
  %83 = load i32, ptr %r, align 4
  %84 = load i32, ptr %bits_left, align 4
  %sub103 = sub nsw i32 %84, %83
  store i32 %sub103, ptr %bits_left, align 4
  %sh_prom104 = zext i32 %sub103 to i64
  %shr105 = ashr i64 %82, %sh_prom104
  %conv106 = trunc i64 %shr105 to i32
  %85 = load i32, ptr %r, align 4
  %notmask = shl nsw i32 -1, %85
  %sub108 = xor i32 %notmask, -1
  %and109 = and i32 %conv106, %sub108
  store i32 %and109, ptr %r, align 4
  %86 = load i32, ptr %EOBRUN, align 4
  %add110 = add i32 %86, %and109
  store i32 %add110, ptr %EOBRUN, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end102, %if.else89
  %87 = load i32, ptr %EOBRUN, align 4
  %dec112 = add i32 %87, -1
  store i32 %dec112, ptr %EOBRUN, align 4
  br label %for.end

for.inc:                                          ; preds = %cond.end, %if.then87
  %88 = load i32, ptr %k, align 4
  %inc = add nsw i32 %88, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %if.end111, %for.cond
  %89 = load ptr, ptr %br_state, align 8
  %90 = load ptr, ptr %cinfo.addr, align 8
  %src116 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i64 0, i32 5
  %91 = load ptr, ptr %src116, align 8
  store ptr %89, ptr %91, align 8
  %bytes_in_buffer118 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  %92 = load i64, ptr %bytes_in_buffer118, align 8
  %src119 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i64 0, i32 5
  %93 = load ptr, ptr %src119, align 8
  %bytes_in_buffer120 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %93, i64 0, i32 1
  store i64 %92, ptr %bytes_in_buffer120, align 8
  %unread_marker121 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  %94 = load i32, ptr %unread_marker121, align 8
  %95 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker122 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %95, i64 0, i32 72
  store i32 %94, ptr %unread_marker122, align 4
  %96 = load i64, ptr %get_buffer, align 8
  %97 = load ptr, ptr %entropy, align 8
  %bitstate123 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %97, i64 0, i32 1
  store i64 %96, ptr %bitstate123, align 8
  %98 = load i32, ptr %bits_left, align 4
  %bits_left126 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %97, i64 0, i32 1, i32 1
  store i32 %98, ptr %bits_left126, align 8
  br label %if.end127

if.end127:                                        ; preds = %for.end, %if.then11
  %99 = load i32, ptr %EOBRUN, align 4
  %100 = load ptr, ptr %entropy, align 8
  %saved128 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %100, i64 0, i32 2
  store i32 %99, ptr %saved128, align 8
  %restarts_to_go130 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %100, i64 0, i32 3
  %101 = load i32, ptr %restarts_to_go130, align 4
  %dec131 = add i32 %101, -1
  store i32 %dec131, ptr %restarts_to_go130, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end127, %if.then98, %if.then60, %if.then46, %if.then26, %if.then6
  %102 = load i32, ptr %retval, align 4
  ret i32 %102
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu_DC_refine(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %p1 = alloca i32, align 4
  %blkn = alloca i32, align 4
  %block = alloca ptr, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 71
  %1 = load i32, ptr %Al, align 8
  %shl = shl i32 1, %1
  store i32 %shl, ptr %p1, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 49
  %3 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %restarts_to_go, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @process_restart(ptr noundef %6)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then, %if.then2, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %cinfo7 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 5
  store ptr %7, ptr %cinfo7, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %src, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %br_state, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %src9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 5
  %11 = load ptr, ptr %src9, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %11, i64 0, i32 1
  %12 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer10 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  store i64 %12, ptr %bytes_in_buffer10, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i64 0, i32 72
  %14 = load i32, ptr %unread_marker, align 4
  %unread_marker11 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  store i32 %14, ptr %unread_marker11, align 8
  %15 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %15, i64 0, i32 1
  %16 = load i64, ptr %bitstate, align 8
  store i64 %16, ptr %get_buffer, align 8
  %bits_left14 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %15, i64 0, i32 1, i32 1
  %17 = load i32, ptr %bits_left14, align 8
  store i32 %17, ptr %bits_left, align 4
  %18 = load ptr, ptr %entropy, align 8
  %printed_eod = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %18, i64 0, i32 1, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %storemerge = phi i32 [ 0, %if.end6 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %blkn, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 66
  %20 = load i32, ptr %blocks_in_MCU, align 8
  %cmp16 = icmp slt i32 %storemerge, %20
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %MCU_data.addr, align 8
  %22 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %21, i64 %idxprom
  %23 = load ptr, ptr %arrayidx, align 8
  store ptr %23, ptr %block, align 8
  %24 = load i32, ptr %bits_left, align 4
  %cmp17 = icmp slt i32 %24, 1
  br i1 %cmp17, label %if.then18, label %if.end25

if.then18:                                        ; preds = %for.body
  %25 = load i64, ptr %get_buffer, align 8
  %26 = load i32, ptr %bits_left, align 4
  %call19 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %25, i32 noundef %26, i32 noundef 1) #3
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then18
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then18
  %get_buffer23 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %27 = load i64, ptr %get_buffer23, align 8
  store i64 %27, ptr %get_buffer, align 8
  %bits_left24 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %28 = load i32, ptr %bits_left24, align 8
  store i32 %28, ptr %bits_left, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %for.body
  %29 = load i64, ptr %get_buffer, align 8
  %30 = load i32, ptr %bits_left, align 4
  %sub = add nsw i32 %30, -1
  store i32 %sub, ptr %bits_left, align 4
  %sh_prom = zext i32 %sub to i64
  %31 = shl i64 1, %sh_prom
  %32 = and i64 %29, %31
  %tobool26.not = icmp eq i64 %32, 0
  br i1 %tobool26.not, label %for.inc, label %if.then27

if.then27:                                        ; preds = %if.end25
  %33 = load i32, ptr %p1, align 4
  %34 = load ptr, ptr %block, align 8
  %35 = load i16, ptr %34, align 2
  %36 = trunc i32 %33 to i16
  %conv30 = or i16 %35, %36
  store i16 %conv30, ptr %34, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %if.then27
  %37 = load i32, ptr %blkn, align 4
  %inc = add nsw i32 %37, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %br_state, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %src33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i64 0, i32 5
  %40 = load ptr, ptr %src33, align 8
  store ptr %38, ptr %40, align 8
  %bytes_in_buffer35 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  %41 = load i64, ptr %bytes_in_buffer35, align 8
  %src36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i64 0, i32 5
  %42 = load ptr, ptr %src36, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %42, i64 0, i32 1
  store i64 %41, ptr %bytes_in_buffer37, align 8
  %unread_marker38 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  %43 = load i32, ptr %unread_marker38, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i64 0, i32 72
  store i32 %43, ptr %unread_marker39, align 4
  %45 = load i64, ptr %get_buffer, align 8
  %46 = load ptr, ptr %entropy, align 8
  %bitstate40 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %46, i64 0, i32 1
  store i64 %45, ptr %bitstate40, align 8
  %47 = load i32, ptr %bits_left, align 4
  %bits_left43 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %46, i64 0, i32 1, i32 1
  store i32 %47, ptr %bits_left43, align 8
  %restarts_to_go44 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %restarts_to_go44, align 4
  %dec = add i32 %48, -1
  store i32 %dec, ptr %restarts_to_go44, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then21, %if.then4
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu_AC_refine(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %Se = alloca i32, align 4
  %p1 = alloca i32, align 4
  %m1 = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %EOBRUN = alloca i32, align 4
  %block = alloca ptr, align 8
  %thiscoef = alloca ptr, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %tbl = alloca ptr, align 8
  %num_newnz = alloca i32, align 4
  %newnz_pos = alloca [64 x i32], align 4
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  %pos = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 79
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 69
  %1 = load i32, ptr %Se2, align 8
  store i32 %1, ptr %Se, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 71
  %3 = load i32, ptr %Al, align 8
  %shl = shl i32 1, %3
  store i32 %shl, ptr %p1, align 4
  %shl4 = shl i32 -1, %3
  store i32 %shl4, ptr %m1, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 49
  %5 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %restarts_to_go, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.then
  %8 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @process_restart(ptr noundef %8)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then, %if.then5, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %cinfo10 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 5
  store ptr %9, ptr %cinfo10, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 5
  %10 = load ptr, ptr %src, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %br_state, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %src12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 5
  %13 = load ptr, ptr %src12, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i64 0, i32 1
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer13 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  store i64 %14, ptr %bytes_in_buffer13, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 72
  %16 = load i32, ptr %unread_marker, align 4
  %unread_marker14 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  store i32 %16, ptr %unread_marker14, align 8
  %17 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %17, i64 0, i32 1
  %18 = load i64, ptr %bitstate, align 8
  store i64 %18, ptr %get_buffer, align 8
  %bits_left17 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %17, i64 0, i32 1, i32 1
  %19 = load i32, ptr %bits_left17, align 8
  store i32 %19, ptr %bits_left, align 4
  %20 = load ptr, ptr %entropy, align 8
  %printed_eod = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %20, i64 0, i32 1, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %20, i64 0, i32 2
  %21 = load i32, ptr %saved, align 8
  store i32 %21, ptr %EOBRUN, align 4
  %22 = load ptr, ptr %MCU_data.addr, align 8
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %block, align 8
  %24 = load ptr, ptr %entropy, align 8
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %24, i64 0, i32 5
  %25 = load ptr, ptr %ac_derived_tbl, align 8
  store ptr %25, ptr %tbl, align 8
  store i32 0, ptr %num_newnz, align 4
  %26 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i64 0, i32 68
  %27 = load i32, ptr %Ss, align 4
  store i32 %27, ptr %k, align 4
  %28 = load i32, ptr %EOBRUN, align 4
  %cmp20 = icmp eq i32 %28, 0
  br i1 %cmp20, label %for.cond, label %if.end168

for.cond:                                         ; preds = %if.end9, %for.inc
  %29 = load i32, ptr %k, align 4
  %30 = load i32, ptr %Se, align 4
  %cmp22.not = icmp sgt i32 %29, %30
  br i1 %cmp22.not, label %if.end168, label %for.body

for.body:                                         ; preds = %for.cond
  %31 = load i32, ptr %bits_left, align 4
  %cmp23 = icmp slt i32 %31, 8
  br i1 %cmp23, label %if.then24, label %if.end34

if.then24:                                        ; preds = %for.body
  %32 = load i64, ptr %get_buffer, align 8
  %33 = load i32, ptr %bits_left, align 4
  %call25 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %32, i32 noundef %33, i32 noundef 0) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %undoit, label %if.end28

if.end28:                                         ; preds = %if.then24
  %get_buffer29 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %34 = load i64, ptr %get_buffer29, align 8
  store i64 %34, ptr %get_buffer, align 8
  %bits_left30 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %35 = load i32, ptr %bits_left30, align 8
  store i32 %35, ptr %bits_left, align 4
  %cmp31 = icmp slt i32 %35, 8
  br i1 %cmp31, label %label3, label %if.end34

if.end34:                                         ; preds = %if.end28, %for.body
  %36 = load i64, ptr %get_buffer, align 8
  %37 = load i32, ptr %bits_left, align 4
  %sub = add nsw i32 %37, -8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %36, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, ptr %look, align 4
  %38 = load ptr, ptr %tbl, align 8
  %idxprom = zext i32 %and to i64
  %arrayidx35 = getelementptr inbounds %struct.d_derived_tbl, ptr %38, i64 0, i32 4, i64 %idxprom
  %39 = load i32, ptr %arrayidx35, align 4
  store i32 %39, ptr %nb, align 4
  %cmp36.not = icmp eq i32 %39, 0
  br i1 %cmp36.not, label %label3, label %if.then38

if.then38:                                        ; preds = %if.end34
  %40 = load i32, ptr %nb, align 4
  %41 = load i32, ptr %bits_left, align 4
  %sub39 = sub nsw i32 %41, %40
  store i32 %sub39, ptr %bits_left, align 4
  %42 = load ptr, ptr %tbl, align 8
  %43 = load i32, ptr %look, align 4
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds %struct.d_derived_tbl, ptr %42, i64 0, i32 5, i64 %idxprom40
  %44 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %44 to i32
  store i32 %conv42, ptr %s, align 4
  br label %if.end50

label3:                                           ; preds = %if.end34, %if.end28
  %storemerge = phi i32 [ 1, %if.end28 ], [ 9, %if.end34 ]
  store i32 %storemerge, ptr %nb, align 4
  %45 = load i64, ptr %get_buffer, align 8
  %46 = load i32, ptr %bits_left, align 4
  %47 = load ptr, ptr %tbl, align 8
  %call43 = call i32 @jpeg_huff_decode(ptr noundef nonnull %br_state, i64 noundef %45, i32 noundef %46, ptr noundef %47, i32 noundef %storemerge) #3
  store i32 %call43, ptr %s, align 4
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %undoit, label %if.end47

if.end47:                                         ; preds = %label3
  %get_buffer48 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %48 = load i64, ptr %get_buffer48, align 8
  store i64 %48, ptr %get_buffer, align 8
  %bits_left49 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %49 = load i32, ptr %bits_left49, align 8
  store i32 %49, ptr %bits_left, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then38
  %50 = load i32, ptr %s, align 4
  %shr51 = ashr i32 %50, 4
  store i32 %shr51, ptr %r, align 4
  %and52 = and i32 %50, 15
  store i32 %and52, ptr %s, align 4
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else79, label %if.then54

if.then54:                                        ; preds = %if.end50
  %51 = load i32, ptr %s, align 4
  %cmp55.not = icmp eq i32 %51, 1
  br i1 %cmp55.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.then54
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 5
  store i32 114, ptr %msg_code, align 8
  %54 = load ptr, ptr %52, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 1
  %55 = load ptr, ptr %emit_message, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  call void %55(ptr noundef %56, i32 noundef -1) #3
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then54
  %57 = load i32, ptr %bits_left, align 4
  %cmp60 = icmp slt i32 %57, 1
  br i1 %cmp60, label %if.then62, label %if.end69

if.then62:                                        ; preds = %if.end59
  %58 = load i64, ptr %get_buffer, align 8
  %59 = load i32, ptr %bits_left, align 4
  %call63 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %58, i32 noundef %59, i32 noundef 1) #3
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %undoit, label %if.end66

if.end66:                                         ; preds = %if.then62
  %get_buffer67 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %60 = load i64, ptr %get_buffer67, align 8
  store i64 %60, ptr %get_buffer, align 8
  %bits_left68 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %61 = load i32, ptr %bits_left68, align 8
  store i32 %61, ptr %bits_left, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %if.end59
  %62 = load i64, ptr %get_buffer, align 8
  %63 = load i32, ptr %bits_left, align 4
  %sub70 = add nsw i32 %63, -1
  store i32 %sub70, ptr %bits_left, align 4
  %sh_prom71 = zext i32 %sub70 to i64
  %64 = shl i64 1, %sh_prom71
  %65 = and i64 %62, %64
  %tobool75.not = icmp eq i64 %65, 0
  %66 = load i32, ptr %m1, align 4
  %67 = load i32, ptr %p1, align 4
  %storemerge11 = select i1 %tobool75.not, i32 %66, i32 %67
  store i32 %storemerge11, ptr %s, align 4
  br label %if.end105

if.else79:                                        ; preds = %if.end50
  %68 = load i32, ptr %r, align 4
  %cmp80.not = icmp eq i32 %68, 15
  br i1 %cmp80.not, label %if.end105, label %if.then82

if.then82:                                        ; preds = %if.else79
  %69 = load i32, ptr %r, align 4
  %shl83 = shl i32 1, %69
  store i32 %shl83, ptr %EOBRUN, align 4
  %tobool84.not = icmp eq i32 %69, 0
  br i1 %tobool84.not, label %if.end168, label %if.then85

if.then85:                                        ; preds = %if.then82
  %70 = load i32, ptr %bits_left, align 4
  %71 = load i32, ptr %r, align 4
  %cmp86 = icmp slt i32 %70, %71
  br i1 %cmp86, label %if.then88, label %if.end95

if.then88:                                        ; preds = %if.then85
  %72 = load i64, ptr %get_buffer, align 8
  %73 = load i32, ptr %bits_left, align 4
  %74 = load i32, ptr %r, align 4
  %call89 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %72, i32 noundef %73, i32 noundef %74) #3
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %undoit, label %if.end92

if.end92:                                         ; preds = %if.then88
  %get_buffer93 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %75 = load i64, ptr %get_buffer93, align 8
  store i64 %75, ptr %get_buffer, align 8
  %bits_left94 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %76 = load i32, ptr %bits_left94, align 8
  store i32 %76, ptr %bits_left, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end92, %if.then85
  %77 = load i64, ptr %get_buffer, align 8
  %78 = load i32, ptr %r, align 4
  %79 = load i32, ptr %bits_left, align 4
  %sub96 = sub nsw i32 %79, %78
  store i32 %sub96, ptr %bits_left, align 4
  %sh_prom97 = zext i32 %sub96 to i64
  %shr98 = ashr i64 %77, %sh_prom97
  %conv99 = trunc i64 %shr98 to i32
  %80 = load i32, ptr %r, align 4
  %notmask = shl nsw i32 -1, %80
  %sub101 = xor i32 %notmask, -1
  %and102 = and i32 %conv99, %sub101
  store i32 %and102, ptr %r, align 4
  %81 = load i32, ptr %EOBRUN, align 4
  %add = add i32 %81, %and102
  store i32 %add, ptr %EOBRUN, align 4
  br label %if.end168

if.end105:                                        ; preds = %if.else79, %if.end69
  br label %do.body

do.body:                                          ; preds = %if.end153, %if.end105
  %82 = load ptr, ptr %block, align 8
  %83 = load i32, ptr %k, align 4
  %idxprom106 = sext i32 %83 to i64
  %arrayidx107 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom106
  %84 = load i32, ptr %arrayidx107, align 4
  %idx.ext = sext i32 %84 to i64
  %add.ptr = getelementptr inbounds i16, ptr %82, i64 %idx.ext
  store ptr %add.ptr, ptr %thiscoef, align 8
  %85 = load i16, ptr %add.ptr, align 2
  %cmp109.not = icmp eq i16 %85, 0
  br i1 %cmp109.not, label %if.else148, label %if.then111

if.then111:                                       ; preds = %do.body
  %86 = load i32, ptr %bits_left, align 4
  %cmp112 = icmp slt i32 %86, 1
  br i1 %cmp112, label %if.then114, label %if.end121

if.then114:                                       ; preds = %if.then111
  %87 = load i64, ptr %get_buffer, align 8
  %88 = load i32, ptr %bits_left, align 4
  %call115 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %87, i32 noundef %88, i32 noundef 1) #3
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %undoit, label %if.end118

if.end118:                                        ; preds = %if.then114
  %get_buffer119 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %89 = load i64, ptr %get_buffer119, align 8
  store i64 %89, ptr %get_buffer, align 8
  %bits_left120 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %90 = load i32, ptr %bits_left120, align 8
  store i32 %90, ptr %bits_left, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.end118, %if.then111
  %91 = load i64, ptr %get_buffer, align 8
  %92 = load i32, ptr %bits_left, align 4
  %sub122 = add nsw i32 %92, -1
  store i32 %sub122, ptr %bits_left, align 4
  %sh_prom123 = zext i32 %sub122 to i64
  %93 = shl i64 1, %sh_prom123
  %94 = and i64 %91, %93
  %tobool127.not = icmp eq i64 %94, 0
  br i1 %tobool127.not, label %if.end153, label %if.then128

if.then128:                                       ; preds = %if.end121
  %95 = load ptr, ptr %thiscoef, align 8
  %96 = load i16, ptr %95, align 2
  %conv129 = sext i16 %96 to i32
  %97 = load i32, ptr %p1, align 4
  %and130 = and i32 %97, %conv129
  %cmp131 = icmp eq i32 %and130, 0
  br i1 %cmp131, label %if.then133, label %if.end153

if.then133:                                       ; preds = %if.then128
  %98 = load ptr, ptr %thiscoef, align 8
  %99 = load i16, ptr %98, align 2
  %cmp135 = icmp sgt i16 %99, -1
  br i1 %cmp135, label %if.then137, label %if.else141

if.then137:                                       ; preds = %if.then133
  %100 = load i32, ptr %p1, align 4
  %101 = load ptr, ptr %thiscoef, align 8
  %102 = load i16, ptr %101, align 2
  %103 = trunc i32 %100 to i16
  %conv140 = add i16 %102, %103
  store i16 %conv140, ptr %101, align 2
  br label %if.end153

if.else141:                                       ; preds = %if.then133
  %104 = load i32, ptr %m1, align 4
  %105 = load ptr, ptr %thiscoef, align 8
  %106 = load i16, ptr %105, align 2
  %107 = trunc i32 %104 to i16
  %conv144 = add i16 %106, %107
  store i16 %conv144, ptr %105, align 2
  br label %if.end153

if.else148:                                       ; preds = %do.body
  %108 = load i32, ptr %r, align 4
  %dec = add nsw i32 %108, -1
  store i32 %dec, ptr %r, align 4
  %cmp149 = icmp slt i32 %108, 1
  br i1 %cmp149, label %do.end, label %if.end153

if.end153:                                        ; preds = %if.else148, %if.end121, %if.then137, %if.else141, %if.then128
  %109 = load i32, ptr %k, align 4
  %inc = add nsw i32 %109, 1
  store i32 %inc, ptr %k, align 4
  %110 = load i32, ptr %k, align 4
  %111 = load i32, ptr %Se, align 4
  %cmp154.not = icmp sgt i32 %110, %111
  br i1 %cmp154.not, label %do.end, label %do.body, !llvm.loop !16

do.end:                                           ; preds = %if.else148, %if.end153
  %112 = load i32, ptr %s, align 4
  %tobool156.not = icmp eq i32 %112, 0
  br i1 %tobool156.not, label %for.inc, label %if.then157

if.then157:                                       ; preds = %do.end
  %113 = load i32, ptr %k, align 4
  %idxprom158 = sext i32 %113 to i64
  %arrayidx159 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom158
  %114 = load i32, ptr %arrayidx159, align 4
  store i32 %114, ptr %pos, align 4
  %115 = load i32, ptr %s, align 4
  %conv160 = trunc i32 %115 to i16
  %116 = load ptr, ptr %block, align 8
  %idxprom161 = sext i32 %114 to i64
  %arrayidx162 = getelementptr inbounds [64 x i16], ptr %116, i64 0, i64 %idxprom161
  store i16 %conv160, ptr %arrayidx162, align 2
  %117 = load i32, ptr %pos, align 4
  %118 = load i32, ptr %num_newnz, align 4
  %inc163 = add nsw i32 %118, 1
  store i32 %inc163, ptr %num_newnz, align 4
  %idxprom164 = sext i32 %118 to i64
  %arrayidx165 = getelementptr inbounds [64 x i32], ptr %newnz_pos, i64 0, i64 %idxprom164
  store i32 %117, ptr %arrayidx165, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then157
  %119 = load i32, ptr %k, align 4
  %inc167 = add nsw i32 %119, 1
  store i32 %inc167, ptr %k, align 4
  br label %for.cond, !llvm.loop !17

if.end168:                                        ; preds = %for.cond, %if.end95, %if.then82, %if.end9
  %120 = load i32, ptr %EOBRUN, align 4
  %cmp169.not = icmp eq i32 %120, 0
  br i1 %cmp169.not, label %if.end226, label %for.cond172

for.cond172:                                      ; preds = %if.end168, %for.inc222
  %121 = load i32, ptr %k, align 4
  %122 = load i32, ptr %Se, align 4
  %cmp173.not = icmp sgt i32 %121, %122
  br i1 %cmp173.not, label %for.end224, label %for.body175

for.body175:                                      ; preds = %for.cond172
  %123 = load ptr, ptr %block, align 8
  %124 = load i32, ptr %k, align 4
  %idxprom177 = sext i32 %124 to i64
  %arrayidx178 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom177
  %125 = load i32, ptr %arrayidx178, align 4
  %idx.ext179 = sext i32 %125 to i64
  %add.ptr180 = getelementptr inbounds i16, ptr %123, i64 %idx.ext179
  store ptr %add.ptr180, ptr %thiscoef, align 8
  %126 = load i16, ptr %add.ptr180, align 2
  %cmp182.not = icmp eq i16 %126, 0
  br i1 %cmp182.not, label %for.inc222, label %if.then184

if.then184:                                       ; preds = %for.body175
  %127 = load i32, ptr %bits_left, align 4
  %cmp185 = icmp slt i32 %127, 1
  br i1 %cmp185, label %if.then187, label %if.end194

if.then187:                                       ; preds = %if.then184
  %128 = load i64, ptr %get_buffer, align 8
  %129 = load i32, ptr %bits_left, align 4
  %call188 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %br_state, i64 noundef %128, i32 noundef %129, i32 noundef 1) #3
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %undoit, label %if.end191

if.end191:                                        ; preds = %if.then187
  %get_buffer192 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 3
  %130 = load i64, ptr %get_buffer192, align 8
  store i64 %130, ptr %get_buffer, align 8
  %bits_left193 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 4
  %131 = load i32, ptr %bits_left193, align 8
  store i32 %131, ptr %bits_left, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.end191, %if.then184
  %132 = load i64, ptr %get_buffer, align 8
  %133 = load i32, ptr %bits_left, align 4
  %sub195 = add nsw i32 %133, -1
  store i32 %sub195, ptr %bits_left, align 4
  %sh_prom196 = zext i32 %sub195 to i64
  %134 = shl i64 1, %sh_prom196
  %135 = and i64 %132, %134
  %tobool200.not = icmp eq i64 %135, 0
  br i1 %tobool200.not, label %for.inc222, label %if.then201

if.then201:                                       ; preds = %if.end194
  %136 = load ptr, ptr %thiscoef, align 8
  %137 = load i16, ptr %136, align 2
  %conv202 = sext i16 %137 to i32
  %138 = load i32, ptr %p1, align 4
  %and203 = and i32 %138, %conv202
  %cmp204 = icmp eq i32 %and203, 0
  br i1 %cmp204, label %if.then206, label %for.inc222

if.then206:                                       ; preds = %if.then201
  %139 = load ptr, ptr %thiscoef, align 8
  %140 = load i16, ptr %139, align 2
  %cmp208 = icmp sgt i16 %140, -1
  br i1 %cmp208, label %if.then210, label %if.else214

if.then210:                                       ; preds = %if.then206
  %141 = load i32, ptr %p1, align 4
  %142 = load ptr, ptr %thiscoef, align 8
  %143 = load i16, ptr %142, align 2
  %144 = trunc i32 %141 to i16
  %conv213 = add i16 %143, %144
  store i16 %conv213, ptr %142, align 2
  br label %for.inc222

if.else214:                                       ; preds = %if.then206
  %145 = load i32, ptr %m1, align 4
  %146 = load ptr, ptr %thiscoef, align 8
  %147 = load i16, ptr %146, align 2
  %148 = trunc i32 %145 to i16
  %conv217 = add i16 %147, %148
  store i16 %conv217, ptr %146, align 2
  br label %for.inc222

for.inc222:                                       ; preds = %for.body175, %if.then201, %if.else214, %if.then210, %if.end194
  %149 = load i32, ptr %k, align 4
  %inc223 = add nsw i32 %149, 1
  store i32 %inc223, ptr %k, align 4
  br label %for.cond172, !llvm.loop !18

for.end224:                                       ; preds = %for.cond172
  %150 = load i32, ptr %EOBRUN, align 4
  %dec225 = add i32 %150, -1
  store i32 %dec225, ptr %EOBRUN, align 4
  br label %if.end226

if.end226:                                        ; preds = %for.end224, %if.end168
  %151 = load ptr, ptr %br_state, align 8
  %152 = load ptr, ptr %cinfo.addr, align 8
  %src228 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %152, i64 0, i32 5
  %153 = load ptr, ptr %src228, align 8
  store ptr %151, ptr %153, align 8
  %bytes_in_buffer230 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 1
  %154 = load i64, ptr %bytes_in_buffer230, align 8
  %src231 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %152, i64 0, i32 5
  %155 = load ptr, ptr %src231, align 8
  %bytes_in_buffer232 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %155, i64 0, i32 1
  store i64 %154, ptr %bytes_in_buffer232, align 8
  %unread_marker233 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i64 0, i32 2
  %156 = load i32, ptr %unread_marker233, align 8
  %157 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker234 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %157, i64 0, i32 72
  store i32 %156, ptr %unread_marker234, align 4
  %158 = load i64, ptr %get_buffer, align 8
  %159 = load ptr, ptr %entropy, align 8
  %bitstate235 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %159, i64 0, i32 1
  store i64 %158, ptr %bitstate235, align 8
  %160 = load i32, ptr %bits_left, align 4
  %bits_left238 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %159, i64 0, i32 1, i32 1
  store i32 %160, ptr %bits_left238, align 8
  %161 = load i32, ptr %EOBRUN, align 4
  %162 = load ptr, ptr %entropy, align 8
  %saved239 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %162, i64 0, i32 2
  store i32 %161, ptr %saved239, align 8
  %restarts_to_go241 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %162, i64 0, i32 3
  %163 = load i32, ptr %restarts_to_go241, align 4
  %dec242 = add i32 %163, -1
  store i32 %dec242, ptr %restarts_to_go241, align 4
  store i32 1, ptr %retval, align 4
  br label %return

undoit:                                           ; preds = %if.then187, %if.then114, %if.then88, %if.then62, %label3, %if.then24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %undoit
  %164 = load i32, ptr %num_newnz, align 4
  %cmp243 = icmp sgt i32 %164, 0
  br i1 %cmp243, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %165 = load ptr, ptr %block, align 8
  %166 = load i32, ptr %num_newnz, align 4
  %dec245 = add nsw i32 %166, -1
  store i32 %dec245, ptr %num_newnz, align 4
  %idxprom246 = sext i32 %dec245 to i64
  %arrayidx247 = getelementptr inbounds [64 x i32], ptr %newnz_pos, i64 0, i64 %idxprom246
  %167 = load i32, ptr %arrayidx247, align 4
  %idxprom248 = sext i32 %167 to i64
  %arrayidx249 = getelementptr inbounds [64 x i16], ptr %165, i64 0, i64 %idxprom248
  store i16 0, ptr %arrayidx249, align 2
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end226, %if.then7
  %168 = load i32, ptr %retval, align 4
  ret i32 %168
}

declare void @jpeg_make_d_derived_tbl(ptr noundef, ptr noundef, ptr noundef) #1

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
  %bits_left = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %0, i64 0, i32 1, i32 1
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
  %bits_left3 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1, i32 1
  store i32 0, ptr %bits_left3, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 78
  %7 = load ptr, ptr %marker4, align 8
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %read_restart_marker, align 8
  %call = call i32 %8(ptr noundef %6) #3
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
  %12 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %11, i64 0, i32 2, i32 1, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %13 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %13, 1
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %entropy, align 8
  %saved5 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %14, i64 0, i32 2
  store i32 0, ptr %saved5, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 49
  %16 = load i32, ptr %restart_interval, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %14, i64 0, i32 3
  store i32 %16, ptr %restarts_to_go, align 4
  %17 = load ptr, ptr %entropy, align 8
  %printed_eod = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %17, i64 0, i32 1, i32 2
  store i32 0, ptr %printed_eod, align 4
  br label %return

return:                                           ; preds = %entry, %for.end
  %storemerge = phi i32 [ 1, %for.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @jpeg_fill_bit_buffer(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @jpeg_huff_decode(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { nounwind }

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
