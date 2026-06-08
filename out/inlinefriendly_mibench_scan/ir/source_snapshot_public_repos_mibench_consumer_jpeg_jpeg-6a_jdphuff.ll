; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdphuff.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdphuff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_phuff_decoder(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %coef_bit_ptr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 96)
  store ptr %call, ptr %entropy, align 8
  %4 = load ptr, ptr %entropy, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 79
  store ptr %4, ptr %entropy1, align 8
  %6 = load ptr, ptr %entropy, align 8
  %pub = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %pub, i32 0, i32 0
  store ptr @start_pass_phuff_decoder, ptr %start_pass, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %7, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %derived_tbls, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %mem2, align 8
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %alloc_small3, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %num_components, align 8
  %mul = mul nsw i32 %16, 64
  %conv = sext i32 %mul to i64
  %mul4 = mul i64 %conv, 4
  %call5 = call ptr %13(ptr noundef %14, i32 noundef 1, i64 noundef %mul4)
  %17 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 38
  store ptr %call5, ptr %coef_bits, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 38
  %19 = load ptr, ptr %coef_bits6, align 8
  %arrayidx7 = getelementptr inbounds [64 x i32], ptr %19, i64 0
  %arrayidx8 = getelementptr inbounds [64 x i32], ptr %arrayidx7, i64 0, i64 0
  store ptr %arrayidx8, ptr %coef_bit_ptr, align 8
  store i32 0, ptr %ci, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc21, %for.end
  %20 = load i32, ptr %ci, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %num_components10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 8
  %22 = load i32, ptr %num_components10, align 8
  %cmp11 = icmp slt i32 %20, %22
  br i1 %cmp11, label %for.body13, label %for.end23

for.body13:                                       ; preds = %for.cond9
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc18, %for.body13
  %23 = load i32, ptr %i, align 4
  %cmp15 = icmp slt i32 %23, 64
  br i1 %cmp15, label %for.body17, label %for.end20

for.body17:                                       ; preds = %for.cond14
  %24 = load ptr, ptr %coef_bit_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %coef_bit_ptr, align 8
  store i32 -1, ptr %24, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body17
  %25 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %25, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond14, !llvm.loop !8

for.end20:                                        ; preds = %for.cond14
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %26 = load i32, ptr %ci, align 4
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, ptr %ci, align 4
  br label %for.cond9, !llvm.loop !9

for.end23:                                        ; preds = %for.cond9
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %expected = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 79
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 68
  %3 = load i32, ptr %Ss, align 4
  %cmp = icmp eq i32 %3, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %is_DC_band, align 4
  store i32 0, ptr %bad, align 4
  %4 = load i32, ptr %is_DC_band, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 69
  %6 = load i32, ptr %Se, align 8
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 1, ptr %bad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end18

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %Ss5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 68
  %8 = load i32, ptr %Ss5, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %Se6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 69
  %10 = load i32, ptr %Se6, align 8
  %cmp7 = icmp sgt i32 %8, %10
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %11 = load ptr, ptr %cinfo.addr, align 8
  %Se9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 69
  %12 = load i32, ptr %Se9, align 8
  %cmp10 = icmp sge i32 %12, 64
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %if.else
  store i32 1, ptr %bad, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false
  %13 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 62
  %14 = load i32, ptr %comps_in_scan, align 8
  %cmp14 = icmp ne i32 %14, 1
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 1, ptr %bad, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 70
  %16 = load i32, ptr %Ah, align 4
  %cmp19 = icmp ne i32 %16, 0
  br i1 %cmp19, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.end18
  %17 = load ptr, ptr %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 71
  %18 = load i32, ptr %Al, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %Ah22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 70
  %20 = load i32, ptr %Ah22, align 4
  %sub = sub nsw i32 %20, 1
  %cmp23 = icmp ne i32 %18, %sub
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  store i32 1, ptr %bad, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then21
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end18
  %21 = load ptr, ptr %cinfo.addr, align 8
  %Al28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 71
  %22 = load i32, ptr %Al28, align 8
  %cmp29 = icmp sgt i32 %22, 13
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  store i32 1, ptr %bad, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27
  %23 = load i32, ptr %bad, align 4
  %tobool33 = icmp ne i32 %23, 0
  br i1 %tobool33, label %if.then34, label %if.end50

if.then34:                                        ; preds = %if.end32
  %24 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i32 0, i32 5
  store i32 14, ptr %msg_code, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %Ss35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 68
  %27 = load i32, ptr %Ss35, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err36, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %27, ptr %arrayidx, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %Se37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 69
  %31 = load i32, ptr %Se37, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err38, align 8
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 6
  %arrayidx40 = getelementptr inbounds [8 x i32], ptr %msg_parm39, i64 0, i64 1
  store i32 %31, ptr %arrayidx40, align 4
  %34 = load ptr, ptr %cinfo.addr, align 8
  %Ah41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 70
  %35 = load i32, ptr %Ah41, align 4
  %36 = load ptr, ptr %cinfo.addr, align 8
  %err42 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err42, align 8
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 6
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %msg_parm43, i64 0, i64 2
  store i32 %35, ptr %arrayidx44, align 4
  %38 = load ptr, ptr %cinfo.addr, align 8
  %Al45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 71
  %39 = load i32, ptr %Al45, align 8
  %40 = load ptr, ptr %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %err46, align 8
  %msg_parm47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i32 0, i32 6
  %arrayidx48 = getelementptr inbounds [8 x i32], ptr %msg_parm47, i64 0, i64 3
  store i32 %39, ptr %arrayidx48, align 4
  %42 = load ptr, ptr %cinfo.addr, align 8
  %err49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err49, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %error_exit, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  call void %44(ptr noundef %45)
  br label %if.end50

if.end50:                                         ; preds = %if.then34, %if.end32
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc103, %if.end50
  %46 = load i32, ptr %ci, align 4
  %47 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 62
  %48 = load i32, ptr %comps_in_scan51, align 8
  %cmp52 = icmp slt i32 %46, %48
  br i1 %cmp52, label %for.body, label %for.end105

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 63
  %50 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %50 to i64
  %arrayidx54 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %51 = load ptr, ptr %arrayidx54, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %component_index, align 4
  store i32 %52, ptr %cindex, align 4
  %53 = load ptr, ptr %cinfo.addr, align 8
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 38
  %54 = load ptr, ptr %coef_bits, align 8
  %55 = load i32, ptr %cindex, align 4
  %idxprom55 = sext i32 %55 to i64
  %arrayidx56 = getelementptr inbounds [64 x i32], ptr %54, i64 %idxprom55
  %arrayidx57 = getelementptr inbounds [64 x i32], ptr %arrayidx56, i64 0, i64 0
  store ptr %arrayidx57, ptr %coef_bit_ptr, align 8
  %56 = load i32, ptr %is_DC_band, align 4
  %tobool58 = icmp ne i32 %56, 0
  br i1 %tobool58, label %if.end72, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %57 = load ptr, ptr %coef_bit_ptr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %57, i64 0
  %58 = load i32, ptr %arrayidx59, align 4
  %cmp60 = icmp slt i32 %58, 0
  br i1 %cmp60, label %if.then62, label %if.end72

if.then62:                                        ; preds = %land.lhs.true
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err63, align 8
  %msg_code64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 5
  store i32 111, ptr %msg_code64, align 8
  %61 = load i32, ptr %cindex, align 4
  %62 = load ptr, ptr %cinfo.addr, align 8
  %err65 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err65, align 8
  %msg_parm66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i32 0, i32 6
  %arrayidx67 = getelementptr inbounds [8 x i32], ptr %msg_parm66, i64 0, i64 0
  store i32 %61, ptr %arrayidx67, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err68, align 8
  %msg_parm69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 6
  %arrayidx70 = getelementptr inbounds [8 x i32], ptr %msg_parm69, i64 0, i64 1
  store i32 0, ptr %arrayidx70, align 4
  %66 = load ptr, ptr %cinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err71, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %emit_message, align 8
  %69 = load ptr, ptr %cinfo.addr, align 8
  call void %68(ptr noundef %69, i32 noundef -1)
  br label %if.end72

if.end72:                                         ; preds = %if.then62, %land.lhs.true, %for.body
  %70 = load ptr, ptr %cinfo.addr, align 8
  %Ss73 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i32 0, i32 68
  %71 = load i32, ptr %Ss73, align 4
  store i32 %71, ptr %coefi, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc, %if.end72
  %72 = load i32, ptr %coefi, align 4
  %73 = load ptr, ptr %cinfo.addr, align 8
  %Se75 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 69
  %74 = load i32, ptr %Se75, align 8
  %cmp76 = icmp sle i32 %72, %74
  br i1 %cmp76, label %for.body78, label %for.end

for.body78:                                       ; preds = %for.cond74
  %75 = load ptr, ptr %coef_bit_ptr, align 8
  %76 = load i32, ptr %coefi, align 4
  %idxprom79 = sext i32 %76 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %75, i64 %idxprom79
  %77 = load i32, ptr %arrayidx80, align 4
  %cmp81 = icmp slt i32 %77, 0
  br i1 %cmp81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body78
  br label %cond.end

cond.false:                                       ; preds = %for.body78
  %78 = load ptr, ptr %coef_bit_ptr, align 8
  %79 = load i32, ptr %coefi, align 4
  %idxprom83 = sext i32 %79 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %78, i64 %idxprom83
  %80 = load i32, ptr %arrayidx84, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %80, %cond.false ]
  store i32 %cond, ptr %expected, align 4
  %81 = load ptr, ptr %cinfo.addr, align 8
  %Ah85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 70
  %82 = load i32, ptr %Ah85, align 4
  %83 = load i32, ptr %expected, align 4
  %cmp86 = icmp ne i32 %82, %83
  br i1 %cmp86, label %if.then88, label %if.end99

if.then88:                                        ; preds = %cond.end
  %84 = load ptr, ptr %cinfo.addr, align 8
  %err89 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %err89, align 8
  %msg_code90 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i32 0, i32 5
  store i32 111, ptr %msg_code90, align 8
  %86 = load i32, ptr %cindex, align 4
  %87 = load ptr, ptr %cinfo.addr, align 8
  %err91 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %err91, align 8
  %msg_parm92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i32 0, i32 6
  %arrayidx93 = getelementptr inbounds [8 x i32], ptr %msg_parm92, i64 0, i64 0
  store i32 %86, ptr %arrayidx93, align 4
  %89 = load i32, ptr %coefi, align 4
  %90 = load ptr, ptr %cinfo.addr, align 8
  %err94 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %err94, align 8
  %msg_parm95 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i32 0, i32 6
  %arrayidx96 = getelementptr inbounds [8 x i32], ptr %msg_parm95, i64 0, i64 1
  store i32 %89, ptr %arrayidx96, align 4
  %92 = load ptr, ptr %cinfo.addr, align 8
  %err97 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %err97, align 8
  %emit_message98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %emit_message98, align 8
  %95 = load ptr, ptr %cinfo.addr, align 8
  call void %94(ptr noundef %95, i32 noundef -1)
  br label %if.end99

if.end99:                                         ; preds = %if.then88, %cond.end
  %96 = load ptr, ptr %cinfo.addr, align 8
  %Al100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i32 0, i32 71
  %97 = load i32, ptr %Al100, align 8
  %98 = load ptr, ptr %coef_bit_ptr, align 8
  %99 = load i32, ptr %coefi, align 4
  %idxprom101 = sext i32 %99 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %98, i64 %idxprom101
  store i32 %97, ptr %arrayidx102, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end99
  %100 = load i32, ptr %coefi, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, ptr %coefi, align 4
  br label %for.cond74, !llvm.loop !10

for.end:                                          ; preds = %for.cond74
  br label %for.inc103

for.inc103:                                       ; preds = %for.end
  %101 = load i32, ptr %ci, align 4
  %inc104 = add nsw i32 %101, 1
  store i32 %inc104, ptr %ci, align 4
  br label %for.cond, !llvm.loop !11

for.end105:                                       ; preds = %for.cond
  %102 = load ptr, ptr %cinfo.addr, align 8
  %Ah106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %102, i32 0, i32 70
  %103 = load i32, ptr %Ah106, align 4
  %cmp107 = icmp eq i32 %103, 0
  br i1 %cmp107, label %if.then109, label %if.else116

if.then109:                                       ; preds = %for.end105
  %104 = load i32, ptr %is_DC_band, align 4
  %tobool110 = icmp ne i32 %104, 0
  br i1 %tobool110, label %if.then111, label %if.else112

if.then111:                                       ; preds = %if.then109
  %105 = load ptr, ptr %entropy, align 8
  %pub = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %105, i32 0, i32 0
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %pub, i32 0, i32 1
  store ptr @decode_mcu_DC_first, ptr %decode_mcu, align 8
  br label %if.end115

if.else112:                                       ; preds = %if.then109
  %106 = load ptr, ptr %entropy, align 8
  %pub113 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %106, i32 0, i32 0
  %decode_mcu114 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %pub113, i32 0, i32 1
  store ptr @decode_mcu_AC_first, ptr %decode_mcu114, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.else112, %if.then111
  br label %if.end125

if.else116:                                       ; preds = %for.end105
  %107 = load i32, ptr %is_DC_band, align 4
  %tobool117 = icmp ne i32 %107, 0
  br i1 %tobool117, label %if.then118, label %if.else121

if.then118:                                       ; preds = %if.else116
  %108 = load ptr, ptr %entropy, align 8
  %pub119 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %108, i32 0, i32 0
  %decode_mcu120 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %pub119, i32 0, i32 1
  store ptr @decode_mcu_DC_refine, ptr %decode_mcu120, align 8
  br label %if.end124

if.else121:                                       ; preds = %if.else116
  %109 = load ptr, ptr %entropy, align 8
  %pub122 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %109, i32 0, i32 0
  %decode_mcu123 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %pub122, i32 0, i32 1
  store ptr @decode_mcu_AC_refine, ptr %decode_mcu123, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.else121, %if.then118
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end115
  store i32 0, ptr %ci, align 4
  br label %for.cond126

for.cond126:                                      ; preds = %for.inc197, %if.end125
  %110 = load i32, ptr %ci, align 4
  %111 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan127 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 62
  %112 = load i32, ptr %comps_in_scan127, align 8
  %cmp128 = icmp slt i32 %110, %112
  br i1 %cmp128, label %for.body130, label %for.end199

for.body130:                                      ; preds = %for.cond126
  %113 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info131 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 63
  %114 = load i32, ptr %ci, align 4
  %idxprom132 = sext i32 %114 to i64
  %arrayidx133 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info131, i64 0, i64 %idxprom132
  %115 = load ptr, ptr %arrayidx133, align 8
  store ptr %115, ptr %compptr, align 8
  %116 = load i32, ptr %is_DC_band, align 4
  %tobool134 = icmp ne i32 %116, 0
  br i1 %tobool134, label %if.then135, label %if.else165

if.then135:                                       ; preds = %for.body130
  %117 = load ptr, ptr %cinfo.addr, align 8
  %Ah136 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %117, i32 0, i32 70
  %118 = load i32, ptr %Ah136, align 4
  %cmp137 = icmp eq i32 %118, 0
  br i1 %cmp137, label %if.then139, label %if.end164

if.then139:                                       ; preds = %if.then135
  %119 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %119, i32 0, i32 5
  %120 = load i32, ptr %dc_tbl_no, align 4
  store i32 %120, ptr %tbl, align 4
  %121 = load i32, ptr %tbl, align 4
  %cmp140 = icmp slt i32 %121, 0
  br i1 %cmp140, label %if.then150, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.then139
  %122 = load i32, ptr %tbl, align 4
  %cmp143 = icmp sge i32 %122, 4
  br i1 %cmp143, label %if.then150, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %lor.lhs.false142
  %123 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %123, i32 0, i32 40
  %124 = load i32, ptr %tbl, align 4
  %idxprom146 = sext i32 %124 to i64
  %arrayidx147 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom146
  %125 = load ptr, ptr %arrayidx147, align 8
  %cmp148 = icmp eq ptr %125, null
  br i1 %cmp148, label %if.then150, label %if.end158

if.then150:                                       ; preds = %lor.lhs.false145, %lor.lhs.false142, %if.then139
  %126 = load ptr, ptr %cinfo.addr, align 8
  %err151 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %err151, align 8
  %msg_code152 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i32 0, i32 5
  store i32 49, ptr %msg_code152, align 8
  %128 = load i32, ptr %tbl, align 4
  %129 = load ptr, ptr %cinfo.addr, align 8
  %err153 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %err153, align 8
  %msg_parm154 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %130, i32 0, i32 6
  %arrayidx155 = getelementptr inbounds [8 x i32], ptr %msg_parm154, i64 0, i64 0
  store i32 %128, ptr %arrayidx155, align 4
  %131 = load ptr, ptr %cinfo.addr, align 8
  %err156 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %err156, align 8
  %error_exit157 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %error_exit157, align 8
  %134 = load ptr, ptr %cinfo.addr, align 8
  call void %133(ptr noundef %134)
  br label %if.end158

if.end158:                                        ; preds = %if.then150, %lor.lhs.false145
  %135 = load ptr, ptr %cinfo.addr, align 8
  %136 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs159 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %136, i32 0, i32 40
  %137 = load i32, ptr %tbl, align 4
  %idxprom160 = sext i32 %137 to i64
  %arrayidx161 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs159, i64 0, i64 %idxprom160
  %138 = load ptr, ptr %arrayidx161, align 8
  %139 = load ptr, ptr %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %139, i32 0, i32 4
  %140 = load i32, ptr %tbl, align 4
  %idxprom162 = sext i32 %140 to i64
  %arrayidx163 = getelementptr inbounds [4 x ptr], ptr %derived_tbls, i64 0, i64 %idxprom162
  call void @jpeg_make_d_derived_tbl(ptr noundef %135, ptr noundef %138, ptr noundef %arrayidx163)
  br label %if.end164

if.end164:                                        ; preds = %if.end158, %if.then135
  br label %if.end194

if.else165:                                       ; preds = %for.body130
  %141 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %141, i32 0, i32 6
  %142 = load i32, ptr %ac_tbl_no, align 8
  store i32 %142, ptr %tbl, align 4
  %143 = load i32, ptr %tbl, align 4
  %cmp166 = icmp slt i32 %143, 0
  br i1 %cmp166, label %if.then176, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %if.else165
  %144 = load i32, ptr %tbl, align 4
  %cmp169 = icmp sge i32 %144, 4
  br i1 %cmp169, label %if.then176, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %lor.lhs.false168
  %145 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %145, i32 0, i32 41
  %146 = load i32, ptr %tbl, align 4
  %idxprom172 = sext i32 %146 to i64
  %arrayidx173 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom172
  %147 = load ptr, ptr %arrayidx173, align 8
  %cmp174 = icmp eq ptr %147, null
  br i1 %cmp174, label %if.then176, label %if.end184

if.then176:                                       ; preds = %lor.lhs.false171, %lor.lhs.false168, %if.else165
  %148 = load ptr, ptr %cinfo.addr, align 8
  %err177 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %148, i32 0, i32 0
  %149 = load ptr, ptr %err177, align 8
  %msg_code178 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %149, i32 0, i32 5
  store i32 49, ptr %msg_code178, align 8
  %150 = load i32, ptr %tbl, align 4
  %151 = load ptr, ptr %cinfo.addr, align 8
  %err179 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %err179, align 8
  %msg_parm180 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %152, i32 0, i32 6
  %arrayidx181 = getelementptr inbounds [8 x i32], ptr %msg_parm180, i64 0, i64 0
  store i32 %150, ptr %arrayidx181, align 4
  %153 = load ptr, ptr %cinfo.addr, align 8
  %err182 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %153, i32 0, i32 0
  %154 = load ptr, ptr %err182, align 8
  %error_exit183 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %error_exit183, align 8
  %156 = load ptr, ptr %cinfo.addr, align 8
  call void %155(ptr noundef %156)
  br label %if.end184

if.end184:                                        ; preds = %if.then176, %lor.lhs.false171
  %157 = load ptr, ptr %cinfo.addr, align 8
  %158 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs185 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %158, i32 0, i32 41
  %159 = load i32, ptr %tbl, align 4
  %idxprom186 = sext i32 %159 to i64
  %arrayidx187 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs185, i64 0, i64 %idxprom186
  %160 = load ptr, ptr %arrayidx187, align 8
  %161 = load ptr, ptr %entropy, align 8
  %derived_tbls188 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %161, i32 0, i32 4
  %162 = load i32, ptr %tbl, align 4
  %idxprom189 = sext i32 %162 to i64
  %arrayidx190 = getelementptr inbounds [4 x ptr], ptr %derived_tbls188, i64 0, i64 %idxprom189
  call void @jpeg_make_d_derived_tbl(ptr noundef %157, ptr noundef %160, ptr noundef %arrayidx190)
  %163 = load ptr, ptr %entropy, align 8
  %derived_tbls191 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %163, i32 0, i32 4
  %164 = load i32, ptr %tbl, align 4
  %idxprom192 = sext i32 %164 to i64
  %arrayidx193 = getelementptr inbounds [4 x ptr], ptr %derived_tbls191, i64 0, i64 %idxprom192
  %165 = load ptr, ptr %arrayidx193, align 8
  %166 = load ptr, ptr %entropy, align 8
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %166, i32 0, i32 5
  store ptr %165, ptr %ac_derived_tbl, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.end184, %if.end164
  %167 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %167, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %saved, i32 0, i32 1
  %168 = load i32, ptr %ci, align 4
  %idxprom195 = sext i32 %168 to i64
  %arrayidx196 = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom195
  store i32 0, ptr %arrayidx196, align 4
  br label %for.inc197

for.inc197:                                       ; preds = %if.end194
  %169 = load i32, ptr %ci, align 4
  %inc198 = add nsw i32 %169, 1
  store i32 %inc198, ptr %ci, align 4
  br label %for.cond126, !llvm.loop !12

for.end199:                                       ; preds = %for.cond126
  %170 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %170, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate, i32 0, i32 1
  store i32 0, ptr %bits_left, align 8
  %171 = load ptr, ptr %entropy, align 8
  %bitstate200 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %171, i32 0, i32 1
  %get_buffer = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate200, i32 0, i32 0
  store i64 0, ptr %get_buffer, align 8
  %172 = load ptr, ptr %entropy, align 8
  %bitstate201 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %172, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate201, i32 0, i32 2
  store i32 0, ptr %printed_eod, align 4
  %173 = load ptr, ptr %entropy, align 8
  %saved202 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %173, i32 0, i32 2
  %EOBRUN = getelementptr inbounds %struct.savable_state, ptr %saved202, i32 0, i32 0
  store i32 0, ptr %EOBRUN, align 8
  %174 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %174, i32 0, i32 49
  %175 = load i32, ptr %restart_interval, align 8
  %176 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %176, i32 0, i32 3
  store i32 %175, ptr %restarts_to_go, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %compptr = alloca ptr, align 8
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 79
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Al2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 71
  %3 = load i32, ptr %Al2, align 8
  store i32 %3, ptr %Al, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 49
  %5 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %restarts_to_go, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @process_restart(ptr noundef %8)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then3
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %cinfo8 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 5
  store ptr %9, ptr %cinfo8, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %next_input_byte, align 8
  %next_input_byte9 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  store ptr %12, ptr %next_input_byte9, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %src10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %src10, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer11 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  store i64 %15, ptr %bytes_in_buffer11, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 72
  %17 = load i32, ptr %unread_marker, align 4
  %unread_marker12 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  store i32 %17, ptr %unread_marker12, align 8
  %18 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %18, i32 0, i32 1
  %get_buffer13 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate, i32 0, i32 0
  %19 = load i64, ptr %get_buffer13, align 8
  store i64 %19, ptr %get_buffer, align 8
  %20 = load ptr, ptr %entropy, align 8
  %bitstate14 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %20, i32 0, i32 1
  %bits_left15 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate14, i32 0, i32 1
  %21 = load i32, ptr %bits_left15, align 8
  store i32 %21, ptr %bits_left, align 4
  %22 = load ptr, ptr %entropy, align 8
  %bitstate16 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %22, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate16, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  %23 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %23, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %state, ptr align 8 %saved, i64 20, i1 false)
  store i32 0, ptr %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %24 = load i32, ptr %blkn, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 66
  %26 = load i32, ptr %blocks_in_MCU, align 8
  %cmp17 = icmp slt i32 %24, %26
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %MCU_data.addr, align 8
  %28 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %27, i64 %idxprom
  %29 = load ptr, ptr %arrayidx, align 8
  store ptr %29, ptr %block, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 67
  %31 = load i32, ptr %blkn, align 4
  %idxprom18 = sext i32 %31 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], ptr %MCU_membership, i64 0, i64 %idxprom18
  %32 = load i32, ptr %arrayidx19, align 4
  store i32 %32, ptr %ci, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 63
  %34 = load i32, ptr %ci, align 4
  %idxprom20 = sext i32 %34 to i64
  %arrayidx21 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom20
  %35 = load ptr, ptr %arrayidx21, align 8
  store ptr %35, ptr %compptr, align 8
  %36 = load ptr, ptr %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %36, i32 0, i32 4
  %37 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i32 0, i32 5
  %38 = load i32, ptr %dc_tbl_no, align 4
  %idxprom22 = sext i32 %38 to i64
  %arrayidx23 = getelementptr inbounds [4 x ptr], ptr %derived_tbls, i64 0, i64 %idxprom22
  %39 = load ptr, ptr %arrayidx23, align 8
  store ptr %39, ptr %tbl, align 8
  %40 = load i32, ptr %bits_left, align 4
  %cmp24 = icmp slt i32 %40, 8
  br i1 %cmp24, label %if.then25, label %if.end35

if.then25:                                        ; preds = %for.body
  %41 = load i64, ptr %get_buffer, align 8
  %42 = load i32, ptr %bits_left, align 4
  %call26 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %41, i32 noundef %42, i32 noundef 0)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.then25
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then25
  %get_buffer30 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %43 = load i64, ptr %get_buffer30, align 8
  store i64 %43, ptr %get_buffer, align 8
  %bits_left31 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %44 = load i32, ptr %bits_left31, align 8
  store i32 %44, ptr %bits_left, align 4
  %45 = load i32, ptr %bits_left, align 4
  %cmp32 = icmp slt i32 %45, 8
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  store i32 1, ptr %nb, align 4
  br label %label1

if.end34:                                         ; preds = %if.end29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %for.body
  %46 = load i64, ptr %get_buffer, align 8
  %47 = load i32, ptr %bits_left, align 4
  %sub = sub nsw i32 %47, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %46, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, ptr %look, align 4
  %48 = load ptr, ptr %tbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, ptr %48, i32 0, i32 4
  %49 = load i32, ptr %look, align 4
  %idxprom36 = sext i32 %49 to i64
  %arrayidx37 = getelementptr inbounds [256 x i32], ptr %look_nbits, i64 0, i64 %idxprom36
  %50 = load i32, ptr %arrayidx37, align 4
  store i32 %50, ptr %nb, align 4
  %cmp38 = icmp ne i32 %50, 0
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end35
  %51 = load i32, ptr %nb, align 4
  %52 = load i32, ptr %bits_left, align 4
  %sub41 = sub nsw i32 %52, %51
  store i32 %sub41, ptr %bits_left, align 4
  %53 = load ptr, ptr %tbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, ptr %53, i32 0, i32 5
  %54 = load i32, ptr %look, align 4
  %idxprom42 = sext i32 %54 to i64
  %arrayidx43 = getelementptr inbounds [256 x i8], ptr %look_sym, i64 0, i64 %idxprom42
  %55 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %55 to i32
  store i32 %conv44, ptr %s, align 4
  br label %if.end52

if.else:                                          ; preds = %if.end35
  store i32 9, ptr %nb, align 4
  br label %label1

label1:                                           ; preds = %if.else, %if.then33
  %56 = load i64, ptr %get_buffer, align 8
  %57 = load i32, ptr %bits_left, align 4
  %58 = load ptr, ptr %tbl, align 8
  %59 = load i32, ptr %nb, align 4
  %call45 = call i32 @jpeg_huff_decode(ptr noundef %br_state, i64 noundef %56, i32 noundef %57, ptr noundef %58, i32 noundef %59)
  store i32 %call45, ptr %s, align 4
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %label1
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %label1
  %get_buffer50 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %60 = load i64, ptr %get_buffer50, align 8
  store i64 %60, ptr %get_buffer, align 8
  %bits_left51 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %61 = load i32, ptr %bits_left51, align 8
  store i32 %61, ptr %bits_left, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.then40
  %62 = load i32, ptr %s, align 4
  %tobool53 = icmp ne i32 %62, 0
  br i1 %tobool53, label %if.then54, label %if.end77

if.then54:                                        ; preds = %if.end52
  %63 = load i32, ptr %bits_left, align 4
  %64 = load i32, ptr %s, align 4
  %cmp55 = icmp slt i32 %63, %64
  br i1 %cmp55, label %if.then57, label %if.end64

if.then57:                                        ; preds = %if.then54
  %65 = load i64, ptr %get_buffer, align 8
  %66 = load i32, ptr %bits_left, align 4
  %67 = load i32, ptr %s, align 4
  %call58 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %65, i32 noundef %66, i32 noundef %67)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.then57
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then57
  %get_buffer62 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %68 = load i64, ptr %get_buffer62, align 8
  store i64 %68, ptr %get_buffer, align 8
  %bits_left63 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %69 = load i32, ptr %bits_left63, align 8
  store i32 %69, ptr %bits_left, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.then54
  %70 = load i64, ptr %get_buffer, align 8
  %71 = load i32, ptr %s, align 4
  %72 = load i32, ptr %bits_left, align 4
  %sub65 = sub nsw i32 %72, %71
  store i32 %sub65, ptr %bits_left, align 4
  %sh_prom66 = zext i32 %sub65 to i64
  %shr67 = ashr i64 %70, %sh_prom66
  %conv68 = trunc i64 %shr67 to i32
  %73 = load i32, ptr %s, align 4
  %shl = shl i32 1, %73
  %sub69 = sub nsw i32 %shl, 1
  %and70 = and i32 %conv68, %sub69
  store i32 %and70, ptr %r, align 4
  %74 = load i32, ptr %r, align 4
  %75 = load i32, ptr %s, align 4
  %idxprom71 = sext i32 %75 to i64
  %arrayidx72 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %idxprom71
  %76 = load i32, ptr %arrayidx72, align 4
  %cmp73 = icmp slt i32 %74, %76
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end64
  %77 = load i32, ptr %r, align 4
  %78 = load i32, ptr %s, align 4
  %idxprom75 = sext i32 %78 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %idxprom75
  %79 = load i32, ptr %arrayidx76, align 4
  %add = add nsw i32 %77, %79
  br label %cond.end

cond.false:                                       ; preds = %if.end64
  %80 = load i32, ptr %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %80, %cond.false ]
  store i32 %cond, ptr %s, align 4
  br label %if.end77

if.end77:                                         ; preds = %cond.end, %if.end52
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %state, i32 0, i32 1
  %81 = load i32, ptr %ci, align 4
  %idxprom78 = sext i32 %81 to i64
  %arrayidx79 = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom78
  %82 = load i32, ptr %arrayidx79, align 4
  %83 = load i32, ptr %s, align 4
  %add80 = add nsw i32 %83, %82
  store i32 %add80, ptr %s, align 4
  %84 = load i32, ptr %s, align 4
  %last_dc_val81 = getelementptr inbounds %struct.savable_state, ptr %state, i32 0, i32 1
  %85 = load i32, ptr %ci, align 4
  %idxprom82 = sext i32 %85 to i64
  %arrayidx83 = getelementptr inbounds [4 x i32], ptr %last_dc_val81, i64 0, i64 %idxprom82
  store i32 %84, ptr %arrayidx83, align 4
  %86 = load i32, ptr %s, align 4
  %87 = load i32, ptr %Al, align 4
  %shl84 = shl i32 %86, %87
  %conv85 = trunc i32 %shl84 to i16
  %88 = load ptr, ptr %block, align 8
  %arrayidx86 = getelementptr inbounds [64 x i16], ptr %88, i64 0, i64 0
  store i16 %conv85, ptr %arrayidx86, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end77
  %89 = load i32, ptr %blkn, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, ptr %blkn, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %next_input_byte87 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  %90 = load ptr, ptr %next_input_byte87, align 8
  %91 = load ptr, ptr %cinfo.addr, align 8
  %src88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 5
  %92 = load ptr, ptr %src88, align 8
  %next_input_byte89 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %92, i32 0, i32 0
  store ptr %90, ptr %next_input_byte89, align 8
  %bytes_in_buffer90 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  %93 = load i64, ptr %bytes_in_buffer90, align 8
  %94 = load ptr, ptr %cinfo.addr, align 8
  %src91 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 5
  %95 = load ptr, ptr %src91, align 8
  %bytes_in_buffer92 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %95, i32 0, i32 1
  store i64 %93, ptr %bytes_in_buffer92, align 8
  %unread_marker93 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  %96 = load i32, ptr %unread_marker93, align 8
  %97 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker94 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 72
  store i32 %96, ptr %unread_marker94, align 4
  %98 = load i64, ptr %get_buffer, align 8
  %99 = load ptr, ptr %entropy, align 8
  %bitstate95 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %99, i32 0, i32 1
  %get_buffer96 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate95, i32 0, i32 0
  store i64 %98, ptr %get_buffer96, align 8
  %100 = load i32, ptr %bits_left, align 4
  %101 = load ptr, ptr %entropy, align 8
  %bitstate97 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %101, i32 0, i32 1
  %bits_left98 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate97, i32 0, i32 1
  store i32 %100, ptr %bits_left98, align 8
  %102 = load ptr, ptr %entropy, align 8
  %saved99 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %102, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %saved99, ptr align 4 %state, i64 20, i1 false)
  %103 = load ptr, ptr %entropy, align 8
  %restarts_to_go100 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %103, i32 0, i32 3
  %104 = load i32, ptr %restarts_to_go100, align 4
  %dec = add i32 %104, -1
  store i32 %dec, ptr %restarts_to_go100, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then60, %if.then48, %if.then28, %if.then5
  %105 = load i32, ptr %retval, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 79
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 69
  %3 = load i32, ptr %Se2, align 8
  store i32 %3, ptr %Se, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 71
  %5 = load i32, ptr %Al3, align 8
  store i32 %5, ptr %Al, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 49
  %7 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %restarts_to_go, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.then
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @process_restart(ptr noundef %10)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %11 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %11, i32 0, i32 2
  %EOBRUN9 = getelementptr inbounds %struct.savable_state, ptr %saved, i32 0, i32 0
  %12 = load i32, ptr %EOBRUN9, align 8
  store i32 %12, ptr %EOBRUN, align 4
  %13 = load i32, ptr %EOBRUN, align 4
  %cmp10 = icmp ugt i32 %13, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %14 = load i32, ptr %EOBRUN, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %EOBRUN, align 4
  br label %if.end127

if.else:                                          ; preds = %if.end8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %cinfo12 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 5
  store ptr %15, ptr %cinfo12, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %next_input_byte, align 8
  %next_input_byte13 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  store ptr %18, ptr %next_input_byte13, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %src14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %src14, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer15 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  store i64 %21, ptr %bytes_in_buffer15, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 72
  %23 = load i32, ptr %unread_marker, align 4
  %unread_marker16 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  store i32 %23, ptr %unread_marker16, align 8
  %24 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %24, i32 0, i32 1
  %get_buffer17 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate, i32 0, i32 0
  %25 = load i64, ptr %get_buffer17, align 8
  store i64 %25, ptr %get_buffer, align 8
  %26 = load ptr, ptr %entropy, align 8
  %bitstate18 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %26, i32 0, i32 1
  %bits_left19 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate18, i32 0, i32 1
  %27 = load i32, ptr %bits_left19, align 8
  store i32 %27, ptr %bits_left, align 4
  %28 = load ptr, ptr %entropy, align 8
  %bitstate20 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %28, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate20, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  %29 = load ptr, ptr %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %29, i64 0
  %30 = load ptr, ptr %arrayidx, align 8
  store ptr %30, ptr %block, align 8
  %31 = load ptr, ptr %entropy, align 8
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %ac_derived_tbl, align 8
  store ptr %32, ptr %tbl, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 68
  %34 = load i32, ptr %Ss, align 4
  store i32 %34, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %35 = load i32, ptr %k, align 4
  %36 = load i32, ptr %Se, align 4
  %cmp21 = icmp sle i32 %35, %36
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, ptr %bits_left, align 4
  %cmp22 = icmp slt i32 %37, 8
  br i1 %cmp22, label %if.then23, label %if.end33

if.then23:                                        ; preds = %for.body
  %38 = load i64, ptr %get_buffer, align 8
  %39 = load i32, ptr %bits_left, align 4
  %call24 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %38, i32 noundef %39, i32 noundef 0)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.then23
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.then23
  %get_buffer28 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %40 = load i64, ptr %get_buffer28, align 8
  store i64 %40, ptr %get_buffer, align 8
  %bits_left29 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %41 = load i32, ptr %bits_left29, align 8
  store i32 %41, ptr %bits_left, align 4
  %42 = load i32, ptr %bits_left, align 4
  %cmp30 = icmp slt i32 %42, 8
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  store i32 1, ptr %nb, align 4
  br label %label2

if.end32:                                         ; preds = %if.end27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %for.body
  %43 = load i64, ptr %get_buffer, align 8
  %44 = load i32, ptr %bits_left, align 4
  %sub = sub nsw i32 %44, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %43, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, ptr %look, align 4
  %45 = load ptr, ptr %tbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, ptr %45, i32 0, i32 4
  %46 = load i32, ptr %look, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx34 = getelementptr inbounds [256 x i32], ptr %look_nbits, i64 0, i64 %idxprom
  %47 = load i32, ptr %arrayidx34, align 4
  store i32 %47, ptr %nb, align 4
  %cmp35 = icmp ne i32 %47, 0
  br i1 %cmp35, label %if.then37, label %if.else42

if.then37:                                        ; preds = %if.end33
  %48 = load i32, ptr %nb, align 4
  %49 = load i32, ptr %bits_left, align 4
  %sub38 = sub nsw i32 %49, %48
  store i32 %sub38, ptr %bits_left, align 4
  %50 = load ptr, ptr %tbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, ptr %50, i32 0, i32 5
  %51 = load i32, ptr %look, align 4
  %idxprom39 = sext i32 %51 to i64
  %arrayidx40 = getelementptr inbounds [256 x i8], ptr %look_sym, i64 0, i64 %idxprom39
  %52 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %52 to i32
  store i32 %conv41, ptr %s, align 4
  br label %if.end50

if.else42:                                        ; preds = %if.end33
  store i32 9, ptr %nb, align 4
  br label %label2

label2:                                           ; preds = %if.else42, %if.then31
  %53 = load i64, ptr %get_buffer, align 8
  %54 = load i32, ptr %bits_left, align 4
  %55 = load ptr, ptr %tbl, align 8
  %56 = load i32, ptr %nb, align 4
  %call43 = call i32 @jpeg_huff_decode(ptr noundef %br_state, i64 noundef %53, i32 noundef %54, ptr noundef %55, i32 noundef %56)
  store i32 %call43, ptr %s, align 4
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %label2
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %label2
  %get_buffer48 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %57 = load i64, ptr %get_buffer48, align 8
  store i64 %57, ptr %get_buffer, align 8
  %bits_left49 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %58 = load i32, ptr %bits_left49, align 8
  store i32 %58, ptr %bits_left, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then37
  %59 = load i32, ptr %s, align 4
  %shr51 = ashr i32 %59, 4
  store i32 %shr51, ptr %r, align 4
  %60 = load i32, ptr %s, align 4
  %and52 = and i32 %60, 15
  store i32 %and52, ptr %s, align 4
  %61 = load i32, ptr %s, align 4
  %tobool53 = icmp ne i32 %61, 0
  br i1 %tobool53, label %if.then54, label %if.else84

if.then54:                                        ; preds = %if.end50
  %62 = load i32, ptr %r, align 4
  %63 = load i32, ptr %k, align 4
  %add = add nsw i32 %63, %62
  store i32 %add, ptr %k, align 4
  %64 = load i32, ptr %bits_left, align 4
  %65 = load i32, ptr %s, align 4
  %cmp55 = icmp slt i32 %64, %65
  br i1 %cmp55, label %if.then57, label %if.end64

if.then57:                                        ; preds = %if.then54
  %66 = load i64, ptr %get_buffer, align 8
  %67 = load i32, ptr %bits_left, align 4
  %68 = load i32, ptr %s, align 4
  %call58 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %66, i32 noundef %67, i32 noundef %68)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.then57
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then57
  %get_buffer62 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %69 = load i64, ptr %get_buffer62, align 8
  store i64 %69, ptr %get_buffer, align 8
  %bits_left63 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %70 = load i32, ptr %bits_left63, align 8
  store i32 %70, ptr %bits_left, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.then54
  %71 = load i64, ptr %get_buffer, align 8
  %72 = load i32, ptr %s, align 4
  %73 = load i32, ptr %bits_left, align 4
  %sub65 = sub nsw i32 %73, %72
  store i32 %sub65, ptr %bits_left, align 4
  %sh_prom66 = zext i32 %sub65 to i64
  %shr67 = ashr i64 %71, %sh_prom66
  %conv68 = trunc i64 %shr67 to i32
  %74 = load i32, ptr %s, align 4
  %shl = shl i32 1, %74
  %sub69 = sub nsw i32 %shl, 1
  %and70 = and i32 %conv68, %sub69
  store i32 %and70, ptr %r, align 4
  %75 = load i32, ptr %r, align 4
  %76 = load i32, ptr %s, align 4
  %idxprom71 = sext i32 %76 to i64
  %arrayidx72 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %idxprom71
  %77 = load i32, ptr %arrayidx72, align 4
  %cmp73 = icmp slt i32 %75, %77
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end64
  %78 = load i32, ptr %r, align 4
  %79 = load i32, ptr %s, align 4
  %idxprom75 = sext i32 %79 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %idxprom75
  %80 = load i32, ptr %arrayidx76, align 4
  %add77 = add nsw i32 %78, %80
  br label %cond.end

cond.false:                                       ; preds = %if.end64
  %81 = load i32, ptr %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add77, %cond.true ], [ %81, %cond.false ]
  store i32 %cond, ptr %s, align 4
  %82 = load i32, ptr %s, align 4
  %83 = load i32, ptr %Al, align 4
  %shl78 = shl i32 %82, %83
  %conv79 = trunc i32 %shl78 to i16
  %84 = load ptr, ptr %block, align 8
  %85 = load i32, ptr %k, align 4
  %idxprom80 = sext i32 %85 to i64
  %arrayidx81 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom80
  %86 = load i32, ptr %arrayidx81, align 4
  %idxprom82 = sext i32 %86 to i64
  %arrayidx83 = getelementptr inbounds [64 x i16], ptr %84, i64 0, i64 %idxprom82
  store i16 %conv79, ptr %arrayidx83, align 2
  br label %if.end114

if.else84:                                        ; preds = %if.end50
  %87 = load i32, ptr %r, align 4
  %cmp85 = icmp eq i32 %87, 15
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.else84
  %88 = load i32, ptr %k, align 4
  %add88 = add nsw i32 %88, 15
  store i32 %add88, ptr %k, align 4
  br label %if.end113

if.else89:                                        ; preds = %if.else84
  %89 = load i32, ptr %r, align 4
  %shl90 = shl i32 1, %89
  store i32 %shl90, ptr %EOBRUN, align 4
  %90 = load i32, ptr %r, align 4
  %tobool91 = icmp ne i32 %90, 0
  br i1 %tobool91, label %if.then92, label %if.end111

if.then92:                                        ; preds = %if.else89
  %91 = load i32, ptr %bits_left, align 4
  %92 = load i32, ptr %r, align 4
  %cmp93 = icmp slt i32 %91, %92
  br i1 %cmp93, label %if.then95, label %if.end102

if.then95:                                        ; preds = %if.then92
  %93 = load i64, ptr %get_buffer, align 8
  %94 = load i32, ptr %bits_left, align 4
  %95 = load i32, ptr %r, align 4
  %call96 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %93, i32 noundef %94, i32 noundef %95)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.then95
  store i32 0, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %if.then95
  %get_buffer100 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %96 = load i64, ptr %get_buffer100, align 8
  store i64 %96, ptr %get_buffer, align 8
  %bits_left101 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %97 = load i32, ptr %bits_left101, align 8
  store i32 %97, ptr %bits_left, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end99, %if.then92
  %98 = load i64, ptr %get_buffer, align 8
  %99 = load i32, ptr %r, align 4
  %100 = load i32, ptr %bits_left, align 4
  %sub103 = sub nsw i32 %100, %99
  store i32 %sub103, ptr %bits_left, align 4
  %sh_prom104 = zext i32 %sub103 to i64
  %shr105 = ashr i64 %98, %sh_prom104
  %conv106 = trunc i64 %shr105 to i32
  %101 = load i32, ptr %r, align 4
  %shl107 = shl i32 1, %101
  %sub108 = sub nsw i32 %shl107, 1
  %and109 = and i32 %conv106, %sub108
  store i32 %and109, ptr %r, align 4
  %102 = load i32, ptr %r, align 4
  %103 = load i32, ptr %EOBRUN, align 4
  %add110 = add i32 %103, %102
  store i32 %add110, ptr %EOBRUN, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end102, %if.else89
  %104 = load i32, ptr %EOBRUN, align 4
  %dec112 = add i32 %104, -1
  store i32 %dec112, ptr %EOBRUN, align 4
  br label %for.end

if.end113:                                        ; preds = %if.then87
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end114
  %105 = load i32, ptr %k, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %if.end111, %for.cond
  %next_input_byte115 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  %106 = load ptr, ptr %next_input_byte115, align 8
  %107 = load ptr, ptr %cinfo.addr, align 8
  %src116 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %107, i32 0, i32 5
  %108 = load ptr, ptr %src116, align 8
  %next_input_byte117 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %108, i32 0, i32 0
  store ptr %106, ptr %next_input_byte117, align 8
  %bytes_in_buffer118 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  %109 = load i64, ptr %bytes_in_buffer118, align 8
  %110 = load ptr, ptr %cinfo.addr, align 8
  %src119 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %110, i32 0, i32 5
  %111 = load ptr, ptr %src119, align 8
  %bytes_in_buffer120 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %111, i32 0, i32 1
  store i64 %109, ptr %bytes_in_buffer120, align 8
  %unread_marker121 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  %112 = load i32, ptr %unread_marker121, align 8
  %113 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker122 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 72
  store i32 %112, ptr %unread_marker122, align 4
  %114 = load i64, ptr %get_buffer, align 8
  %115 = load ptr, ptr %entropy, align 8
  %bitstate123 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %115, i32 0, i32 1
  %get_buffer124 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate123, i32 0, i32 0
  store i64 %114, ptr %get_buffer124, align 8
  %116 = load i32, ptr %bits_left, align 4
  %117 = load ptr, ptr %entropy, align 8
  %bitstate125 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %117, i32 0, i32 1
  %bits_left126 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate125, i32 0, i32 1
  store i32 %116, ptr %bits_left126, align 8
  br label %if.end127

if.end127:                                        ; preds = %for.end, %if.then11
  %118 = load i32, ptr %EOBRUN, align 4
  %119 = load ptr, ptr %entropy, align 8
  %saved128 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %119, i32 0, i32 2
  %EOBRUN129 = getelementptr inbounds %struct.savable_state, ptr %saved128, i32 0, i32 0
  store i32 %118, ptr %EOBRUN129, align 8
  %120 = load ptr, ptr %entropy, align 8
  %restarts_to_go130 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %120, i32 0, i32 3
  %121 = load i32, ptr %restarts_to_go130, align 4
  %dec131 = add i32 %121, -1
  store i32 %dec131, ptr %restarts_to_go130, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end127, %if.then98, %if.then60, %if.then46, %if.then26, %if.then6
  %122 = load i32, ptr %retval, align 4
  ret i32 %122
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 79
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 71
  %3 = load i32, ptr %Al, align 8
  %shl = shl i32 1, %3
  store i32 %shl, ptr %p1, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 49
  %5 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %restarts_to_go, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @process_restart(ptr noundef %8)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %cinfo7 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 5
  store ptr %9, ptr %cinfo7, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %next_input_byte, align 8
  %next_input_byte8 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  store ptr %12, ptr %next_input_byte8, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %src9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %src9, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer10 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  store i64 %15, ptr %bytes_in_buffer10, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 72
  %17 = load i32, ptr %unread_marker, align 4
  %unread_marker11 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  store i32 %17, ptr %unread_marker11, align 8
  %18 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %18, i32 0, i32 1
  %get_buffer12 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate, i32 0, i32 0
  %19 = load i64, ptr %get_buffer12, align 8
  store i64 %19, ptr %get_buffer, align 8
  %20 = load ptr, ptr %entropy, align 8
  %bitstate13 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %20, i32 0, i32 1
  %bits_left14 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate13, i32 0, i32 1
  %21 = load i32, ptr %bits_left14, align 8
  store i32 %21, ptr %bits_left, align 4
  %22 = load ptr, ptr %entropy, align 8
  %bitstate15 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %22, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate15, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  store i32 0, ptr %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %23 = load i32, ptr %blkn, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 66
  %25 = load i32, ptr %blocks_in_MCU, align 8
  %cmp16 = icmp slt i32 %23, %25
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %MCU_data.addr, align 8
  %27 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %26, i64 %idxprom
  %28 = load ptr, ptr %arrayidx, align 8
  store ptr %28, ptr %block, align 8
  %29 = load i32, ptr %bits_left, align 4
  %cmp17 = icmp slt i32 %29, 1
  br i1 %cmp17, label %if.then18, label %if.end25

if.then18:                                        ; preds = %for.body
  %30 = load i64, ptr %get_buffer, align 8
  %31 = load i32, ptr %bits_left, align 4
  %call19 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %30, i32 noundef %31, i32 noundef 1)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.then18
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then18
  %get_buffer23 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %32 = load i64, ptr %get_buffer23, align 8
  store i64 %32, ptr %get_buffer, align 8
  %bits_left24 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %33 = load i32, ptr %bits_left24, align 8
  store i32 %33, ptr %bits_left, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %for.body
  %34 = load i64, ptr %get_buffer, align 8
  %35 = load i32, ptr %bits_left, align 4
  %sub = sub nsw i32 %35, 1
  store i32 %sub, ptr %bits_left, align 4
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %34, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 1
  %tobool26 = icmp ne i32 %and, 0
  br i1 %tobool26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end25
  %36 = load i32, ptr %p1, align 4
  %37 = load ptr, ptr %block, align 8
  %arrayidx28 = getelementptr inbounds [64 x i16], ptr %37, i64 0, i64 0
  %38 = load i16, ptr %arrayidx28, align 2
  %conv29 = sext i16 %38 to i32
  %or = or i32 %conv29, %36
  %conv30 = trunc i32 %or to i16
  store i16 %conv30, ptr %arrayidx28, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end25
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %39 = load i32, ptr %blkn, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %blkn, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %next_input_byte32 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  %40 = load ptr, ptr %next_input_byte32, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  %src33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 5
  %42 = load ptr, ptr %src33, align 8
  %next_input_byte34 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %42, i32 0, i32 0
  store ptr %40, ptr %next_input_byte34, align 8
  %bytes_in_buffer35 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  %43 = load i64, ptr %bytes_in_buffer35, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %src36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 5
  %45 = load ptr, ptr %src36, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %45, i32 0, i32 1
  store i64 %43, ptr %bytes_in_buffer37, align 8
  %unread_marker38 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  %46 = load i32, ptr %unread_marker38, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 72
  store i32 %46, ptr %unread_marker39, align 4
  %48 = load i64, ptr %get_buffer, align 8
  %49 = load ptr, ptr %entropy, align 8
  %bitstate40 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %49, i32 0, i32 1
  %get_buffer41 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate40, i32 0, i32 0
  store i64 %48, ptr %get_buffer41, align 8
  %50 = load i32, ptr %bits_left, align 4
  %51 = load ptr, ptr %entropy, align 8
  %bitstate42 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %51, i32 0, i32 1
  %bits_left43 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate42, i32 0, i32 1
  store i32 %50, ptr %bits_left43, align 8
  %52 = load ptr, ptr %entropy, align 8
  %restarts_to_go44 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %restarts_to_go44, align 4
  %dec = add i32 %53, -1
  store i32 %dec, ptr %restarts_to_go44, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then21, %if.then4
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 79
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 69
  %3 = load i32, ptr %Se2, align 8
  store i32 %3, ptr %Se, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 71
  %5 = load i32, ptr %Al, align 8
  %shl = shl i32 1, %5
  store i32 %shl, ptr %p1, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 71
  %7 = load i32, ptr %Al3, align 8
  %shl4 = shl i32 -1, %7
  store i32 %shl4, ptr %m1, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 49
  %9 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %restarts_to_go, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then
  %12 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @process_restart(ptr noundef %12)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then5
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  %13 = load ptr, ptr %cinfo.addr, align 8
  %cinfo10 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 5
  store ptr %13, ptr %cinfo10, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %next_input_byte, align 8
  %next_input_byte11 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  store ptr %16, ptr %next_input_byte11, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %src12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %src12, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer13 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  store i64 %19, ptr %bytes_in_buffer13, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 72
  %21 = load i32, ptr %unread_marker, align 4
  %unread_marker14 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  store i32 %21, ptr %unread_marker14, align 8
  %22 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %22, i32 0, i32 1
  %get_buffer15 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate, i32 0, i32 0
  %23 = load i64, ptr %get_buffer15, align 8
  store i64 %23, ptr %get_buffer, align 8
  %24 = load ptr, ptr %entropy, align 8
  %bitstate16 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %24, i32 0, i32 1
  %bits_left17 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate16, i32 0, i32 1
  %25 = load i32, ptr %bits_left17, align 8
  store i32 %25, ptr %bits_left, align 4
  %26 = load ptr, ptr %entropy, align 8
  %bitstate18 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %26, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate18, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  %27 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %27, i32 0, i32 2
  %EOBRUN19 = getelementptr inbounds %struct.savable_state, ptr %saved, i32 0, i32 0
  %28 = load i32, ptr %EOBRUN19, align 8
  store i32 %28, ptr %EOBRUN, align 4
  %29 = load ptr, ptr %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %29, i64 0
  %30 = load ptr, ptr %arrayidx, align 8
  store ptr %30, ptr %block, align 8
  %31 = load ptr, ptr %entropy, align 8
  %ac_derived_tbl = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %ac_derived_tbl, align 8
  store ptr %32, ptr %tbl, align 8
  store i32 0, ptr %num_newnz, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 68
  %34 = load i32, ptr %Ss, align 4
  store i32 %34, ptr %k, align 4
  %35 = load i32, ptr %EOBRUN, align 4
  %cmp20 = icmp eq i32 %35, 0
  br i1 %cmp20, label %if.then21, label %if.end168

if.then21:                                        ; preds = %if.end9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then21
  %36 = load i32, ptr %k, align 4
  %37 = load i32, ptr %Se, align 4
  %cmp22 = icmp sle i32 %36, %37
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, ptr %bits_left, align 4
  %cmp23 = icmp slt i32 %38, 8
  br i1 %cmp23, label %if.then24, label %if.end34

if.then24:                                        ; preds = %for.body
  %39 = load i64, ptr %get_buffer, align 8
  %40 = load i32, ptr %bits_left, align 4
  %call25 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %39, i32 noundef %40, i32 noundef 0)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then24
  br label %undoit

if.end28:                                         ; preds = %if.then24
  %get_buffer29 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %41 = load i64, ptr %get_buffer29, align 8
  store i64 %41, ptr %get_buffer, align 8
  %bits_left30 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %42 = load i32, ptr %bits_left30, align 8
  store i32 %42, ptr %bits_left, align 4
  %43 = load i32, ptr %bits_left, align 4
  %cmp31 = icmp slt i32 %43, 8
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  store i32 1, ptr %nb, align 4
  br label %label3

if.end33:                                         ; preds = %if.end28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %for.body
  %44 = load i64, ptr %get_buffer, align 8
  %45 = load i32, ptr %bits_left, align 4
  %sub = sub nsw i32 %45, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %44, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, ptr %look, align 4
  %46 = load ptr, ptr %tbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, ptr %46, i32 0, i32 4
  %47 = load i32, ptr %look, align 4
  %idxprom = sext i32 %47 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], ptr %look_nbits, i64 0, i64 %idxprom
  %48 = load i32, ptr %arrayidx35, align 4
  store i32 %48, ptr %nb, align 4
  %cmp36 = icmp ne i32 %48, 0
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  %49 = load i32, ptr %nb, align 4
  %50 = load i32, ptr %bits_left, align 4
  %sub39 = sub nsw i32 %50, %49
  store i32 %sub39, ptr %bits_left, align 4
  %51 = load ptr, ptr %tbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, ptr %51, i32 0, i32 5
  %52 = load i32, ptr %look, align 4
  %idxprom40 = sext i32 %52 to i64
  %arrayidx41 = getelementptr inbounds [256 x i8], ptr %look_sym, i64 0, i64 %idxprom40
  %53 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %53 to i32
  store i32 %conv42, ptr %s, align 4
  br label %if.end50

if.else:                                          ; preds = %if.end34
  store i32 9, ptr %nb, align 4
  br label %label3

label3:                                           ; preds = %if.else, %if.then32
  %54 = load i64, ptr %get_buffer, align 8
  %55 = load i32, ptr %bits_left, align 4
  %56 = load ptr, ptr %tbl, align 8
  %57 = load i32, ptr %nb, align 4
  %call43 = call i32 @jpeg_huff_decode(ptr noundef %br_state, i64 noundef %54, i32 noundef %55, ptr noundef %56, i32 noundef %57)
  store i32 %call43, ptr %s, align 4
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %label3
  br label %undoit

if.end47:                                         ; preds = %label3
  %get_buffer48 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %58 = load i64, ptr %get_buffer48, align 8
  store i64 %58, ptr %get_buffer, align 8
  %bits_left49 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %59 = load i32, ptr %bits_left49, align 8
  store i32 %59, ptr %bits_left, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then38
  %60 = load i32, ptr %s, align 4
  %shr51 = ashr i32 %60, 4
  store i32 %shr51, ptr %r, align 4
  %61 = load i32, ptr %s, align 4
  %and52 = and i32 %61, 15
  store i32 %and52, ptr %s, align 4
  %62 = load i32, ptr %s, align 4
  %tobool53 = icmp ne i32 %62, 0
  br i1 %tobool53, label %if.then54, label %if.else79

if.then54:                                        ; preds = %if.end50
  %63 = load i32, ptr %s, align 4
  %cmp55 = icmp ne i32 %63, 1
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then54
  %64 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 5
  store i32 114, ptr %msg_code, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err58, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %emit_message, align 8
  %69 = load ptr, ptr %cinfo.addr, align 8
  call void %68(ptr noundef %69, i32 noundef -1)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then54
  %70 = load i32, ptr %bits_left, align 4
  %cmp60 = icmp slt i32 %70, 1
  br i1 %cmp60, label %if.then62, label %if.end69

if.then62:                                        ; preds = %if.end59
  %71 = load i64, ptr %get_buffer, align 8
  %72 = load i32, ptr %bits_left, align 4
  %call63 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %71, i32 noundef %72, i32 noundef 1)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.then62
  br label %undoit

if.end66:                                         ; preds = %if.then62
  %get_buffer67 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %73 = load i64, ptr %get_buffer67, align 8
  store i64 %73, ptr %get_buffer, align 8
  %bits_left68 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %74 = load i32, ptr %bits_left68, align 8
  store i32 %74, ptr %bits_left, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %if.end59
  %75 = load i64, ptr %get_buffer, align 8
  %76 = load i32, ptr %bits_left, align 4
  %sub70 = sub nsw i32 %76, 1
  store i32 %sub70, ptr %bits_left, align 4
  %sh_prom71 = zext i32 %sub70 to i64
  %shr72 = ashr i64 %75, %sh_prom71
  %conv73 = trunc i64 %shr72 to i32
  %and74 = and i32 %conv73, 1
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then76, label %if.else77

if.then76:                                        ; preds = %if.end69
  %77 = load i32, ptr %p1, align 4
  store i32 %77, ptr %s, align 4
  br label %if.end78

if.else77:                                        ; preds = %if.end69
  %78 = load i32, ptr %m1, align 4
  store i32 %78, ptr %s, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.else77, %if.then76
  br label %if.end105

if.else79:                                        ; preds = %if.end50
  %79 = load i32, ptr %r, align 4
  %cmp80 = icmp ne i32 %79, 15
  br i1 %cmp80, label %if.then82, label %if.end104

if.then82:                                        ; preds = %if.else79
  %80 = load i32, ptr %r, align 4
  %shl83 = shl i32 1, %80
  store i32 %shl83, ptr %EOBRUN, align 4
  %81 = load i32, ptr %r, align 4
  %tobool84 = icmp ne i32 %81, 0
  br i1 %tobool84, label %if.then85, label %if.end103

if.then85:                                        ; preds = %if.then82
  %82 = load i32, ptr %bits_left, align 4
  %83 = load i32, ptr %r, align 4
  %cmp86 = icmp slt i32 %82, %83
  br i1 %cmp86, label %if.then88, label %if.end95

if.then88:                                        ; preds = %if.then85
  %84 = load i64, ptr %get_buffer, align 8
  %85 = load i32, ptr %bits_left, align 4
  %86 = load i32, ptr %r, align 4
  %call89 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %84, i32 noundef %85, i32 noundef %86)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.then88
  br label %undoit

if.end92:                                         ; preds = %if.then88
  %get_buffer93 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %87 = load i64, ptr %get_buffer93, align 8
  store i64 %87, ptr %get_buffer, align 8
  %bits_left94 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %88 = load i32, ptr %bits_left94, align 8
  store i32 %88, ptr %bits_left, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end92, %if.then85
  %89 = load i64, ptr %get_buffer, align 8
  %90 = load i32, ptr %r, align 4
  %91 = load i32, ptr %bits_left, align 4
  %sub96 = sub nsw i32 %91, %90
  store i32 %sub96, ptr %bits_left, align 4
  %sh_prom97 = zext i32 %sub96 to i64
  %shr98 = ashr i64 %89, %sh_prom97
  %conv99 = trunc i64 %shr98 to i32
  %92 = load i32, ptr %r, align 4
  %shl100 = shl i32 1, %92
  %sub101 = sub nsw i32 %shl100, 1
  %and102 = and i32 %conv99, %sub101
  store i32 %and102, ptr %r, align 4
  %93 = load i32, ptr %r, align 4
  %94 = load i32, ptr %EOBRUN, align 4
  %add = add i32 %94, %93
  store i32 %add, ptr %EOBRUN, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end95, %if.then82
  br label %for.end

if.end104:                                        ; preds = %if.else79
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end78
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end105
  %95 = load ptr, ptr %block, align 8
  %arraydecay = getelementptr inbounds [64 x i16], ptr %95, i64 0, i64 0
  %96 = load i32, ptr %k, align 4
  %idxprom106 = sext i32 %96 to i64
  %arrayidx107 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom106
  %97 = load i32, ptr %arrayidx107, align 4
  %idx.ext = sext i32 %97 to i64
  %add.ptr = getelementptr inbounds i16, ptr %arraydecay, i64 %idx.ext
  store ptr %add.ptr, ptr %thiscoef, align 8
  %98 = load ptr, ptr %thiscoef, align 8
  %99 = load i16, ptr %98, align 2
  %conv108 = sext i16 %99 to i32
  %cmp109 = icmp ne i32 %conv108, 0
  br i1 %cmp109, label %if.then111, label %if.else148

if.then111:                                       ; preds = %do.body
  %100 = load i32, ptr %bits_left, align 4
  %cmp112 = icmp slt i32 %100, 1
  br i1 %cmp112, label %if.then114, label %if.end121

if.then114:                                       ; preds = %if.then111
  %101 = load i64, ptr %get_buffer, align 8
  %102 = load i32, ptr %bits_left, align 4
  %call115 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %101, i32 noundef %102, i32 noundef 1)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %if.then114
  br label %undoit

if.end118:                                        ; preds = %if.then114
  %get_buffer119 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %103 = load i64, ptr %get_buffer119, align 8
  store i64 %103, ptr %get_buffer, align 8
  %bits_left120 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %104 = load i32, ptr %bits_left120, align 8
  store i32 %104, ptr %bits_left, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.end118, %if.then111
  %105 = load i64, ptr %get_buffer, align 8
  %106 = load i32, ptr %bits_left, align 4
  %sub122 = sub nsw i32 %106, 1
  store i32 %sub122, ptr %bits_left, align 4
  %sh_prom123 = zext i32 %sub122 to i64
  %shr124 = ashr i64 %105, %sh_prom123
  %conv125 = trunc i64 %shr124 to i32
  %and126 = and i32 %conv125, 1
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.then128, label %if.end147

if.then128:                                       ; preds = %if.end121
  %107 = load ptr, ptr %thiscoef, align 8
  %108 = load i16, ptr %107, align 2
  %conv129 = sext i16 %108 to i32
  %109 = load i32, ptr %p1, align 4
  %and130 = and i32 %conv129, %109
  %cmp131 = icmp eq i32 %and130, 0
  br i1 %cmp131, label %if.then133, label %if.end146

if.then133:                                       ; preds = %if.then128
  %110 = load ptr, ptr %thiscoef, align 8
  %111 = load i16, ptr %110, align 2
  %conv134 = sext i16 %111 to i32
  %cmp135 = icmp sge i32 %conv134, 0
  br i1 %cmp135, label %if.then137, label %if.else141

if.then137:                                       ; preds = %if.then133
  %112 = load i32, ptr %p1, align 4
  %113 = load ptr, ptr %thiscoef, align 8
  %114 = load i16, ptr %113, align 2
  %conv138 = sext i16 %114 to i32
  %add139 = add nsw i32 %conv138, %112
  %conv140 = trunc i32 %add139 to i16
  store i16 %conv140, ptr %113, align 2
  br label %if.end145

if.else141:                                       ; preds = %if.then133
  %115 = load i32, ptr %m1, align 4
  %116 = load ptr, ptr %thiscoef, align 8
  %117 = load i16, ptr %116, align 2
  %conv142 = sext i16 %117 to i32
  %add143 = add nsw i32 %conv142, %115
  %conv144 = trunc i32 %add143 to i16
  store i16 %conv144, ptr %116, align 2
  br label %if.end145

if.end145:                                        ; preds = %if.else141, %if.then137
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.then128
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end121
  br label %if.end153

if.else148:                                       ; preds = %do.body
  %118 = load i32, ptr %r, align 4
  %dec = add nsw i32 %118, -1
  store i32 %dec, ptr %r, align 4
  %cmp149 = icmp slt i32 %dec, 0
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.else148
  br label %do.end

if.end152:                                        ; preds = %if.else148
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end147
  %119 = load i32, ptr %k, align 4
  %inc = add nsw i32 %119, 1
  store i32 %inc, ptr %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end153
  %120 = load i32, ptr %k, align 4
  %121 = load i32, ptr %Se, align 4
  %cmp154 = icmp sle i32 %120, %121
  br i1 %cmp154, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond, %if.then151
  %122 = load i32, ptr %s, align 4
  %tobool156 = icmp ne i32 %122, 0
  br i1 %tobool156, label %if.then157, label %if.end166

if.then157:                                       ; preds = %do.end
  %123 = load i32, ptr %k, align 4
  %idxprom158 = sext i32 %123 to i64
  %arrayidx159 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom158
  %124 = load i32, ptr %arrayidx159, align 4
  store i32 %124, ptr %pos, align 4
  %125 = load i32, ptr %s, align 4
  %conv160 = trunc i32 %125 to i16
  %126 = load ptr, ptr %block, align 8
  %127 = load i32, ptr %pos, align 4
  %idxprom161 = sext i32 %127 to i64
  %arrayidx162 = getelementptr inbounds [64 x i16], ptr %126, i64 0, i64 %idxprom161
  store i16 %conv160, ptr %arrayidx162, align 2
  %128 = load i32, ptr %pos, align 4
  %129 = load i32, ptr %num_newnz, align 4
  %inc163 = add nsw i32 %129, 1
  store i32 %inc163, ptr %num_newnz, align 4
  %idxprom164 = sext i32 %129 to i64
  %arrayidx165 = getelementptr inbounds [64 x i32], ptr %newnz_pos, i64 0, i64 %idxprom164
  store i32 %128, ptr %arrayidx165, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then157, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end166
  %130 = load i32, ptr %k, align 4
  %inc167 = add nsw i32 %130, 1
  store i32 %inc167, ptr %k, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %if.end103, %for.cond
  br label %if.end168

if.end168:                                        ; preds = %for.end, %if.end9
  %131 = load i32, ptr %EOBRUN, align 4
  %cmp169 = icmp ugt i32 %131, 0
  br i1 %cmp169, label %if.then171, label %if.end226

if.then171:                                       ; preds = %if.end168
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc222, %if.then171
  %132 = load i32, ptr %k, align 4
  %133 = load i32, ptr %Se, align 4
  %cmp173 = icmp sle i32 %132, %133
  br i1 %cmp173, label %for.body175, label %for.end224

for.body175:                                      ; preds = %for.cond172
  %134 = load ptr, ptr %block, align 8
  %arraydecay176 = getelementptr inbounds [64 x i16], ptr %134, i64 0, i64 0
  %135 = load i32, ptr %k, align 4
  %idxprom177 = sext i32 %135 to i64
  %arrayidx178 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom177
  %136 = load i32, ptr %arrayidx178, align 4
  %idx.ext179 = sext i32 %136 to i64
  %add.ptr180 = getelementptr inbounds i16, ptr %arraydecay176, i64 %idx.ext179
  store ptr %add.ptr180, ptr %thiscoef, align 8
  %137 = load ptr, ptr %thiscoef, align 8
  %138 = load i16, ptr %137, align 2
  %conv181 = sext i16 %138 to i32
  %cmp182 = icmp ne i32 %conv181, 0
  br i1 %cmp182, label %if.then184, label %if.end221

if.then184:                                       ; preds = %for.body175
  %139 = load i32, ptr %bits_left, align 4
  %cmp185 = icmp slt i32 %139, 1
  br i1 %cmp185, label %if.then187, label %if.end194

if.then187:                                       ; preds = %if.then184
  %140 = load i64, ptr %get_buffer, align 8
  %141 = load i32, ptr %bits_left, align 4
  %call188 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %140, i32 noundef %141, i32 noundef 1)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.end191, label %if.then190

if.then190:                                       ; preds = %if.then187
  br label %undoit

if.end191:                                        ; preds = %if.then187
  %get_buffer192 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %142 = load i64, ptr %get_buffer192, align 8
  store i64 %142, ptr %get_buffer, align 8
  %bits_left193 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %143 = load i32, ptr %bits_left193, align 8
  store i32 %143, ptr %bits_left, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.end191, %if.then184
  %144 = load i64, ptr %get_buffer, align 8
  %145 = load i32, ptr %bits_left, align 4
  %sub195 = sub nsw i32 %145, 1
  store i32 %sub195, ptr %bits_left, align 4
  %sh_prom196 = zext i32 %sub195 to i64
  %shr197 = ashr i64 %144, %sh_prom196
  %conv198 = trunc i64 %shr197 to i32
  %and199 = and i32 %conv198, 1
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %if.then201, label %if.end220

if.then201:                                       ; preds = %if.end194
  %146 = load ptr, ptr %thiscoef, align 8
  %147 = load i16, ptr %146, align 2
  %conv202 = sext i16 %147 to i32
  %148 = load i32, ptr %p1, align 4
  %and203 = and i32 %conv202, %148
  %cmp204 = icmp eq i32 %and203, 0
  br i1 %cmp204, label %if.then206, label %if.end219

if.then206:                                       ; preds = %if.then201
  %149 = load ptr, ptr %thiscoef, align 8
  %150 = load i16, ptr %149, align 2
  %conv207 = sext i16 %150 to i32
  %cmp208 = icmp sge i32 %conv207, 0
  br i1 %cmp208, label %if.then210, label %if.else214

if.then210:                                       ; preds = %if.then206
  %151 = load i32, ptr %p1, align 4
  %152 = load ptr, ptr %thiscoef, align 8
  %153 = load i16, ptr %152, align 2
  %conv211 = sext i16 %153 to i32
  %add212 = add nsw i32 %conv211, %151
  %conv213 = trunc i32 %add212 to i16
  store i16 %conv213, ptr %152, align 2
  br label %if.end218

if.else214:                                       ; preds = %if.then206
  %154 = load i32, ptr %m1, align 4
  %155 = load ptr, ptr %thiscoef, align 8
  %156 = load i16, ptr %155, align 2
  %conv215 = sext i16 %156 to i32
  %add216 = add nsw i32 %conv215, %154
  %conv217 = trunc i32 %add216 to i16
  store i16 %conv217, ptr %155, align 2
  br label %if.end218

if.end218:                                        ; preds = %if.else214, %if.then210
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.then201
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.end194
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %for.body175
  br label %for.inc222

for.inc222:                                       ; preds = %if.end221
  %157 = load i32, ptr %k, align 4
  %inc223 = add nsw i32 %157, 1
  store i32 %inc223, ptr %k, align 4
  br label %for.cond172, !llvm.loop !18

for.end224:                                       ; preds = %for.cond172
  %158 = load i32, ptr %EOBRUN, align 4
  %dec225 = add i32 %158, -1
  store i32 %dec225, ptr %EOBRUN, align 4
  br label %if.end226

if.end226:                                        ; preds = %for.end224, %if.end168
  %next_input_byte227 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  %159 = load ptr, ptr %next_input_byte227, align 8
  %160 = load ptr, ptr %cinfo.addr, align 8
  %src228 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %160, i32 0, i32 5
  %161 = load ptr, ptr %src228, align 8
  %next_input_byte229 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %161, i32 0, i32 0
  store ptr %159, ptr %next_input_byte229, align 8
  %bytes_in_buffer230 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  %162 = load i64, ptr %bytes_in_buffer230, align 8
  %163 = load ptr, ptr %cinfo.addr, align 8
  %src231 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %163, i32 0, i32 5
  %164 = load ptr, ptr %src231, align 8
  %bytes_in_buffer232 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %164, i32 0, i32 1
  store i64 %162, ptr %bytes_in_buffer232, align 8
  %unread_marker233 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  %165 = load i32, ptr %unread_marker233, align 8
  %166 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker234 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %166, i32 0, i32 72
  store i32 %165, ptr %unread_marker234, align 4
  %167 = load i64, ptr %get_buffer, align 8
  %168 = load ptr, ptr %entropy, align 8
  %bitstate235 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %168, i32 0, i32 1
  %get_buffer236 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate235, i32 0, i32 0
  store i64 %167, ptr %get_buffer236, align 8
  %169 = load i32, ptr %bits_left, align 4
  %170 = load ptr, ptr %entropy, align 8
  %bitstate237 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %170, i32 0, i32 1
  %bits_left238 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate237, i32 0, i32 1
  store i32 %169, ptr %bits_left238, align 8
  %171 = load i32, ptr %EOBRUN, align 4
  %172 = load ptr, ptr %entropy, align 8
  %saved239 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %172, i32 0, i32 2
  %EOBRUN240 = getelementptr inbounds %struct.savable_state, ptr %saved239, i32 0, i32 0
  store i32 %171, ptr %EOBRUN240, align 8
  %173 = load ptr, ptr %entropy, align 8
  %restarts_to_go241 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %173, i32 0, i32 3
  %174 = load i32, ptr %restarts_to_go241, align 4
  %dec242 = add i32 %174, -1
  store i32 %dec242, ptr %restarts_to_go241, align 4
  store i32 1, ptr %retval, align 4
  br label %return

undoit:                                           ; preds = %if.then190, %if.then117, %if.then91, %if.then65, %if.then46, %if.then27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %undoit
  %175 = load i32, ptr %num_newnz, align 4
  %cmp243 = icmp sgt i32 %175, 0
  br i1 %cmp243, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %176 = load ptr, ptr %block, align 8
  %177 = load i32, ptr %num_newnz, align 4
  %dec245 = add nsw i32 %177, -1
  store i32 %dec245, ptr %num_newnz, align 4
  %idxprom246 = sext i32 %dec245 to i64
  %arrayidx247 = getelementptr inbounds [64 x i32], ptr %newnz_pos, i64 0, i64 %idxprom246
  %178 = load i32, ptr %arrayidx247, align 4
  %idxprom248 = sext i32 %178 to i64
  %arrayidx249 = getelementptr inbounds [64 x i16], ptr %176, i64 0, i64 %idxprom248
  store i16 0, ptr %arrayidx249, align 2
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end226, %if.then7
  %179 = load i32, ptr %retval, align 4
  ret i32 %179
}

declare void @jpeg_make_d_derived_tbl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @process_restart(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %ci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 79
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %2, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate, i32 0, i32 1
  %3 = load i32, ptr %bits_left, align 8
  %div = sdiv i32 %3, 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 78
  %5 = load ptr, ptr %marker, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %discarded_bytes, align 4
  %add = add i32 %6, %div
  store i32 %add, ptr %discarded_bytes, align 4
  %7 = load ptr, ptr %entropy, align 8
  %bitstate2 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %7, i32 0, i32 1
  %bits_left3 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate2, i32 0, i32 1
  store i32 0, ptr %bits_left3, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 78
  %9 = load ptr, ptr %marker4, align 8
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %read_restart_marker, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %10(ptr noundef %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, ptr %ci, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 62
  %14 = load i32, ptr %comps_in_scan, align 8
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %15, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %saved, i32 0, i32 1
  %16 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %entropy, align 8
  %saved5 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %18, i32 0, i32 2
  %EOBRUN = getelementptr inbounds %struct.savable_state, ptr %saved5, i32 0, i32 0
  store i32 0, ptr %EOBRUN, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 49
  %20 = load i32, ptr %restart_interval, align 8
  %21 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %21, i32 0, i32 3
  store i32 %20, ptr %restarts_to_go, align 4
  %22 = load ptr, ptr %entropy, align 8
  %bitstate6 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %22, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate6, i32 0, i32 2
  store i32 0, ptr %printed_eod, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @jpeg_fill_bit_buffer(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @jpeg_huff_decode(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }

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
