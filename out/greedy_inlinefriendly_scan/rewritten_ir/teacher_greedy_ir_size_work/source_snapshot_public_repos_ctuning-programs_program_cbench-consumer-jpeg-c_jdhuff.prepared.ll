; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdhuff.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdhuff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], ptr, [256 x i32], [256 x i8] }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.bitread_working_state = type { ptr, i64, i32, i64, i32, ptr, ptr }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.huff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x ptr], [4 x ptr] }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
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
  %0 = load ptr, ptr %pdtbl.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %4(ptr noundef %5, i32 noundef 1, i64 noundef 1640)
  %6 = load ptr, ptr %pdtbl.addr, align 8
  store ptr %call, ptr %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pdtbl.addr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %dtbl, align 8
  %9 = load ptr, ptr %htbl.addr, align 8
  %10 = load ptr, ptr %dtbl, align 8
  %pub = getelementptr inbounds %struct.d_derived_tbl, ptr %10, i32 0, i32 3
  store ptr %9, ptr %pub, align 8
  store i32 0, ptr %p, align 4
  store i32 1, ptr %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.end
  %11 = load i32, ptr %l, align 4
  %cmp1 = icmp sle i32 %11, 16
  br i1 %cmp1, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %htbl.addr, align 8
  %bits = getelementptr inbounds %struct.JHUFF_TBL, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %l, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %cmp3 = icmp sle i32 %12, %conv
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %16 = load i32, ptr %l, align 4
  %conv6 = trunc i32 %16 to i8
  %17 = load i32, ptr %p, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %p, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom7
  store i8 %conv6, ptr %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %18 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %18, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %19 = load i32, ptr %l, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, ptr %l, align 4
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
  %20 = load i32, ptr %p, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom13
  store i8 0, ptr %arrayidx14, align 1
  store i32 0, ptr %code, align 4
  %arrayidx15 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 0
  %21 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %21 to i32
  store i32 %conv16, ptr %si, align 4
  store i32 0, ptr %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end12
  %22 = load i32, ptr %p, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom17
  %23 = load i8, ptr %arrayidx18, align 1
  %tobool = icmp ne i8 %23, 0
  br i1 %tobool, label %while.body, label %while.end31

while.body:                                       ; preds = %while.cond
  br label %while.cond19

while.cond19:                                     ; preds = %while.body25, %while.body
  %24 = load i32, ptr %p, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom20
  %25 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %25 to i32
  %26 = load i32, ptr %si, align 4
  %cmp23 = icmp eq i32 %conv22, %26
  br i1 %cmp23, label %while.body25, label %while.end

while.body25:                                     ; preds = %while.cond19
  %27 = load i32, ptr %code, align 4
  %28 = load i32, ptr %p, align 4
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, ptr %p, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom27
  store i32 %27, ptr %arrayidx28, align 4
  %29 = load i32, ptr %code, align 4
  %inc29 = add i32 %29, 1
  store i32 %inc29, ptr %code, align 4
  br label %while.cond19, !llvm.loop !9

while.end:                                        ; preds = %while.cond19
  %30 = load i32, ptr %code, align 4
  %shl = shl i32 %30, 1
  store i32 %shl, ptr %code, align 4
  %31 = load i32, ptr %si, align 4
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, ptr %si, align 4
  br label %while.cond, !llvm.loop !10

while.end31:                                      ; preds = %while.cond
  store i32 0, ptr %p, align 4
  store i32 1, ptr %l, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc61, %while.end31
  %32 = load i32, ptr %l, align 4
  %cmp33 = icmp sle i32 %32, 16
  br i1 %cmp33, label %for.body35, label %for.end63

for.body35:                                       ; preds = %for.cond32
  %33 = load ptr, ptr %htbl.addr, align 8
  %bits36 = getelementptr inbounds %struct.JHUFF_TBL, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %l, align 4
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds [17 x i8], ptr %bits36, i64 0, i64 %idxprom37
  %35 = load i8, ptr %arrayidx38, align 1
  %tobool39 = icmp ne i8 %35, 0
  br i1 %tobool39, label %if.then40, label %if.else

if.then40:                                        ; preds = %for.body35
  %36 = load i32, ptr %p, align 4
  %37 = load ptr, ptr %dtbl, align 8
  %valptr = getelementptr inbounds %struct.d_derived_tbl, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %l, align 4
  %idxprom41 = sext i32 %38 to i64
  %arrayidx42 = getelementptr inbounds [17 x i32], ptr %valptr, i64 0, i64 %idxprom41
  store i32 %36, ptr %arrayidx42, align 4
  %39 = load i32, ptr %p, align 4
  %idxprom43 = sext i32 %39 to i64
  %arrayidx44 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom43
  %40 = load i32, ptr %arrayidx44, align 4
  %conv45 = zext i32 %40 to i64
  %41 = load ptr, ptr %dtbl, align 8
  %mincode = getelementptr inbounds %struct.d_derived_tbl, ptr %41, i32 0, i32 0
  %42 = load i32, ptr %l, align 4
  %idxprom46 = sext i32 %42 to i64
  %arrayidx47 = getelementptr inbounds [17 x i64], ptr %mincode, i64 0, i64 %idxprom46
  store i64 %conv45, ptr %arrayidx47, align 8
  %43 = load ptr, ptr %htbl.addr, align 8
  %bits48 = getelementptr inbounds %struct.JHUFF_TBL, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %l, align 4
  %idxprom49 = sext i32 %44 to i64
  %arrayidx50 = getelementptr inbounds [17 x i8], ptr %bits48, i64 0, i64 %idxprom49
  %45 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %45 to i32
  %46 = load i32, ptr %p, align 4
  %add = add nsw i32 %46, %conv51
  store i32 %add, ptr %p, align 4
  %47 = load i32, ptr %p, align 4
  %sub = sub nsw i32 %47, 1
  %idxprom52 = sext i32 %sub to i64
  %arrayidx53 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom52
  %48 = load i32, ptr %arrayidx53, align 4
  %conv54 = zext i32 %48 to i64
  %49 = load ptr, ptr %dtbl, align 8
  %maxcode = getelementptr inbounds %struct.d_derived_tbl, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %l, align 4
  %idxprom55 = sext i32 %50 to i64
  %arrayidx56 = getelementptr inbounds [18 x i64], ptr %maxcode, i64 0, i64 %idxprom55
  store i64 %conv54, ptr %arrayidx56, align 8
  br label %if.end60

if.else:                                          ; preds = %for.body35
  %51 = load ptr, ptr %dtbl, align 8
  %maxcode57 = getelementptr inbounds %struct.d_derived_tbl, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %l, align 4
  %idxprom58 = sext i32 %52 to i64
  %arrayidx59 = getelementptr inbounds [18 x i64], ptr %maxcode57, i64 0, i64 %idxprom58
  store i64 -1, ptr %arrayidx59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then40
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %53 = load i32, ptr %l, align 4
  %inc62 = add nsw i32 %53, 1
  store i32 %inc62, ptr %l, align 4
  br label %for.cond32, !llvm.loop !11

for.end63:                                        ; preds = %for.cond32
  %54 = load ptr, ptr %dtbl, align 8
  %maxcode64 = getelementptr inbounds %struct.d_derived_tbl, ptr %54, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [18 x i64], ptr %maxcode64, i64 0, i64 17
  store i64 1048575, ptr %arrayidx65, align 8
  %55 = load ptr, ptr %dtbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, ptr %55, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i32], ptr %look_nbits, i64 0, i64 0
  %56 = load ptr, ptr %dtbl, align 8
  %look_nbits66 = getelementptr inbounds %struct.d_derived_tbl, ptr %56, i32 0, i32 4
  %arraydecay67 = getelementptr inbounds [256 x i32], ptr %look_nbits66, i64 0, i64 0
  %57 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay67, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memset_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 1024, i64 noundef %57) #4
  store i32 0, ptr %p, align 4
  store i32 1, ptr %l, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc105, %for.end63
  %58 = load i32, ptr %l, align 4
  %cmp70 = icmp sle i32 %58, 8
  br i1 %cmp70, label %for.body72, label %for.end107

for.body72:                                       ; preds = %for.cond69
  store i32 1, ptr %i, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc101, %for.body72
  %59 = load i32, ptr %i, align 4
  %60 = load ptr, ptr %htbl.addr, align 8
  %bits74 = getelementptr inbounds %struct.JHUFF_TBL, ptr %60, i32 0, i32 0
  %61 = load i32, ptr %l, align 4
  %idxprom75 = sext i32 %61 to i64
  %arrayidx76 = getelementptr inbounds [17 x i8], ptr %bits74, i64 0, i64 %idxprom75
  %62 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %62 to i32
  %cmp78 = icmp sle i32 %59, %conv77
  br i1 %cmp78, label %for.body80, label %for.end104

for.body80:                                       ; preds = %for.cond73
  %63 = load i32, ptr %p, align 4
  %idxprom81 = sext i32 %63 to i64
  %arrayidx82 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom81
  %64 = load i32, ptr %arrayidx82, align 4
  %65 = load i32, ptr %l, align 4
  %sub83 = sub nsw i32 8, %65
  %shl84 = shl i32 %64, %sub83
  store i32 %shl84, ptr %lookbits, align 4
  %66 = load i32, ptr %l, align 4
  %sub85 = sub nsw i32 8, %66
  %shl86 = shl i32 1, %sub85
  store i32 %shl86, ptr %ctr, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc99, %for.body80
  %67 = load i32, ptr %ctr, align 4
  %cmp88 = icmp sgt i32 %67, 0
  br i1 %cmp88, label %for.body90, label %for.end100

for.body90:                                       ; preds = %for.cond87
  %68 = load i32, ptr %l, align 4
  %69 = load ptr, ptr %dtbl, align 8
  %look_nbits91 = getelementptr inbounds %struct.d_derived_tbl, ptr %69, i32 0, i32 4
  %70 = load i32, ptr %lookbits, align 4
  %idxprom92 = sext i32 %70 to i64
  %arrayidx93 = getelementptr inbounds [256 x i32], ptr %look_nbits91, i64 0, i64 %idxprom92
  store i32 %68, ptr %arrayidx93, align 4
  %71 = load ptr, ptr %htbl.addr, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %p, align 4
  %idxprom94 = sext i32 %72 to i64
  %arrayidx95 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 %idxprom94
  %73 = load i8, ptr %arrayidx95, align 1
  %74 = load ptr, ptr %dtbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, ptr %74, i32 0, i32 5
  %75 = load i32, ptr %lookbits, align 4
  %idxprom96 = sext i32 %75 to i64
  %arrayidx97 = getelementptr inbounds [256 x i8], ptr %look_sym, i64 0, i64 %idxprom96
  store i8 %73, ptr %arrayidx97, align 1
  %76 = load i32, ptr %lookbits, align 4
  %inc98 = add nsw i32 %76, 1
  store i32 %inc98, ptr %lookbits, align 4
  br label %for.inc99

for.inc99:                                        ; preds = %for.body90
  %77 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %77, -1
  store i32 %dec, ptr %ctr, align 4
  br label %for.cond87, !llvm.loop !12

for.end100:                                       ; preds = %for.cond87
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %78 = load i32, ptr %i, align 4
  %inc102 = add nsw i32 %78, 1
  store i32 %inc102, ptr %i, align 4
  %79 = load i32, ptr %p, align 4
  %inc103 = add nsw i32 %79, 1
  store i32 %inc103, ptr %p, align 4
  br label %for.cond73, !llvm.loop !13

for.end104:                                       ; preds = %for.cond73
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %80 = load i32, ptr %l, align 4
  %inc106 = add nsw i32 %80, 1
  store i32 %inc106, ptr %l, align 4
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
  %0 = load ptr, ptr %state.addr, align 8
  %next_input_byte1 = getelementptr inbounds %struct.bitread_working_state, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next_input_byte1, align 8
  store ptr %1, ptr %next_input_byte, align 8
  %2 = load ptr, ptr %state.addr, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.bitread_working_state, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %3, ptr %bytes_in_buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end59, %entry
  %4 = load i32, ptr %bits_left.addr, align 4
  %cmp = icmp slt i32 %4, 25
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %state.addr, align 8
  %unread_marker = getelementptr inbounds %struct.bitread_working_state, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %unread_marker, align 8
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %no_more_data

if.end:                                           ; preds = %while.body
  %7 = load i64, ptr %bytes_in_buffer, align 8
  %cmp4 = icmp eq i64 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.bitread_working_state, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %cinfo, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %src, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %fill_input_buffer, align 8
  %12 = load ptr, ptr %state.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.bitread_working_state, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %cinfo6, align 8
  %call = call i32 %11(ptr noundef %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then5
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then5
  %14 = load ptr, ptr %state.addr, align 8
  %cinfo9 = getelementptr inbounds %struct.bitread_working_state, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %cinfo9, align 8
  %src10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %src10, align 8
  %next_input_byte11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next_input_byte11, align 8
  store ptr %17, ptr %next_input_byte, align 8
  %18 = load ptr, ptr %state.addr, align 8
  %cinfo12 = getelementptr inbounds %struct.bitread_working_state, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %cinfo12, align 8
  %src13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %src13, align 8
  %bytes_in_buffer14 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %bytes_in_buffer14, align 8
  store i64 %21, ptr %bytes_in_buffer, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end8, %if.end
  %22 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %22, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %23 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %24 = load i8, ptr %23, align 1
  %conv = zext i8 %24 to i32
  store i32 %conv, ptr %c, align 4
  %25 = load i32, ptr %c, align 4
  %cmp16 = icmp eq i32 %25, 255
  br i1 %cmp16, label %if.then18, label %if.end59

if.then18:                                        ; preds = %if.end15
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then18
  %26 = load i64, ptr %bytes_in_buffer, align 8
  %cmp19 = icmp eq i64 %26, 0
  br i1 %cmp19, label %if.then21, label %if.end36

if.then21:                                        ; preds = %do.body
  %27 = load ptr, ptr %state.addr, align 8
  %cinfo22 = getelementptr inbounds %struct.bitread_working_state, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %cinfo22, align 8
  %src23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %src23, align 8
  %fill_input_buffer24 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %fill_input_buffer24, align 8
  %31 = load ptr, ptr %state.addr, align 8
  %cinfo25 = getelementptr inbounds %struct.bitread_working_state, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %cinfo25, align 8
  %call26 = call i32 %30(ptr noundef %32)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.then21
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then21
  %33 = load ptr, ptr %state.addr, align 8
  %cinfo30 = getelementptr inbounds %struct.bitread_working_state, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %cinfo30, align 8
  %src31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %src31, align 8
  %next_input_byte32 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %next_input_byte32, align 8
  store ptr %36, ptr %next_input_byte, align 8
  %37 = load ptr, ptr %state.addr, align 8
  %cinfo33 = getelementptr inbounds %struct.bitread_working_state, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %cinfo33, align 8
  %src34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %src34, align 8
  %bytes_in_buffer35 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %39, i32 0, i32 1
  %40 = load i64, ptr %bytes_in_buffer35, align 8
  store i64 %40, ptr %bytes_in_buffer, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end29, %do.body
  %41 = load i64, ptr %bytes_in_buffer, align 8
  %dec37 = add i64 %41, -1
  store i64 %dec37, ptr %bytes_in_buffer, align 8
  %42 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr38, ptr %next_input_byte, align 8
  %43 = load i8, ptr %42, align 1
  %conv39 = zext i8 %43 to i32
  store i32 %conv39, ptr %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end36
  %44 = load i32, ptr %c, align 4
  %cmp40 = icmp eq i32 %44, 255
  br i1 %cmp40, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %45 = load i32, ptr %c, align 4
  %cmp42 = icmp eq i32 %45, 0
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %do.end
  store i32 255, ptr %c, align 4
  br label %if.end58

if.else:                                          ; preds = %do.end
  %46 = load i32, ptr %c, align 4
  %47 = load ptr, ptr %state.addr, align 8
  %unread_marker45 = getelementptr inbounds %struct.bitread_working_state, ptr %47, i32 0, i32 2
  store i32 %46, ptr %unread_marker45, align 8
  br label %no_more_data

no_more_data:                                     ; preds = %if.else, %if.then
  %48 = load i32, ptr %bits_left.addr, align 4
  %49 = load i32, ptr %nbits.addr, align 4
  %cmp46 = icmp sge i32 %48, %49
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %no_more_data
  br label %while.end

if.end49:                                         ; preds = %no_more_data
  %50 = load ptr, ptr %state.addr, align 8
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %printed_eod_ptr, align 8
  %52 = load i32, ptr %51, align 4
  %tobool50 = icmp ne i32 %52, 0
  br i1 %tobool50, label %if.end57, label %if.then51

if.then51:                                        ; preds = %if.end49
  %53 = load ptr, ptr %state.addr, align 8
  %cinfo52 = getelementptr inbounds %struct.bitread_working_state, ptr %53, i32 0, i32 5
  %54 = load ptr, ptr %cinfo52, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %55, i32 0, i32 5
  store i32 113, ptr %msg_code, align 8
  %56 = load ptr, ptr %state.addr, align 8
  %cinfo53 = getelementptr inbounds %struct.bitread_working_state, ptr %56, i32 0, i32 5
  %57 = load ptr, ptr %cinfo53, align 8
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err54, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %emit_message, align 8
  %60 = load ptr, ptr %state.addr, align 8
  %cinfo55 = getelementptr inbounds %struct.bitread_working_state, ptr %60, i32 0, i32 5
  %61 = load ptr, ptr %cinfo55, align 8
  call void %59(ptr noundef %61, i32 noundef -1)
  %62 = load ptr, ptr %state.addr, align 8
  %printed_eod_ptr56 = getelementptr inbounds %struct.bitread_working_state, ptr %62, i32 0, i32 6
  %63 = load ptr, ptr %printed_eod_ptr56, align 8
  store i32 1, ptr %63, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end49
  store i32 0, ptr %c, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then44
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end15
  %64 = load i64, ptr %get_buffer.addr, align 8
  %shl = shl i64 %64, 8
  %65 = load i32, ptr %c, align 4
  %conv60 = sext i32 %65 to i64
  %or = or i64 %shl, %conv60
  store i64 %or, ptr %get_buffer.addr, align 8
  %66 = load i32, ptr %bits_left.addr, align 4
  %add = add nsw i32 %66, 8
  store i32 %add, ptr %bits_left.addr, align 4
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %if.then48, %while.cond
  %67 = load ptr, ptr %next_input_byte, align 8
  %68 = load ptr, ptr %state.addr, align 8
  %next_input_byte61 = getelementptr inbounds %struct.bitread_working_state, ptr %68, i32 0, i32 0
  store ptr %67, ptr %next_input_byte61, align 8
  %69 = load i64, ptr %bytes_in_buffer, align 8
  %70 = load ptr, ptr %state.addr, align 8
  %bytes_in_buffer62 = getelementptr inbounds %struct.bitread_working_state, ptr %70, i32 0, i32 1
  store i64 %69, ptr %bytes_in_buffer62, align 8
  %71 = load i64, ptr %get_buffer.addr, align 8
  %72 = load ptr, ptr %state.addr, align 8
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, ptr %72, i32 0, i32 3
  store i64 %71, ptr %get_buffer63, align 8
  %73 = load i32, ptr %bits_left.addr, align 4
  %74 = load ptr, ptr %state.addr, align 8
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, ptr %74, i32 0, i32 4
  store i32 %73, ptr %bits_left64, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then28, %if.then7
  %75 = load i32, ptr %retval, align 4
  ret i32 %75
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_huff_decode(ptr noundef %state, i64 noundef %get_buffer, i32 noundef %bits_left, ptr noundef %htbl, i32 noundef %min_bits) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %get_buffer.addr = alloca i64, align 8
  %bits_left.addr = alloca i32, align 4
  %htbl.addr = alloca ptr, align 8
  %min_bits.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %code = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  store i64 %get_buffer, ptr %get_buffer.addr, align 8
  store i32 %bits_left, ptr %bits_left.addr, align 4
  store ptr %htbl, ptr %htbl.addr, align 8
  store i32 %min_bits, ptr %min_bits.addr, align 4
  %0 = load i32, ptr %min_bits.addr, align 4
  store i32 %0, ptr %l, align 4
  %1 = load i32, ptr %bits_left.addr, align 4
  %2 = load i32, ptr %l, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %state.addr, align 8
  %4 = load i64, ptr %get_buffer.addr, align 8
  %5 = load i32, ptr %bits_left.addr, align 4
  %6 = load i32, ptr %l, align 4
  %call = call i32 @jpeg_fill_bit_buffer(ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %state.addr, align 8
  %get_buffer2 = getelementptr inbounds %struct.bitread_working_state, ptr %7, i32 0, i32 3
  %8 = load i64, ptr %get_buffer2, align 8
  store i64 %8, ptr %get_buffer.addr, align 8
  %9 = load ptr, ptr %state.addr, align 8
  %bits_left3 = getelementptr inbounds %struct.bitread_working_state, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %bits_left3, align 8
  store i32 %10, ptr %bits_left.addr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %11 = load i64, ptr %get_buffer.addr, align 8
  %12 = load i32, ptr %l, align 4
  %13 = load i32, ptr %bits_left.addr, align 4
  %sub = sub nsw i32 %13, %12
  store i32 %sub, ptr %bits_left.addr, align 4
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %11, %sh_prom
  %conv = trunc i64 %shr to i32
  %14 = load i32, ptr %l, align 4
  %shl = shl i32 1, %14
  %sub5 = sub nsw i32 %shl, 1
  %and = and i32 %conv, %sub5
  %conv6 = sext i32 %and to i64
  store i64 %conv6, ptr %code, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end4
  %15 = load i64, ptr %code, align 8
  %16 = load ptr, ptr %htbl.addr, align 8
  %maxcode = getelementptr inbounds %struct.d_derived_tbl, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %l, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [18 x i64], ptr %maxcode, i64 0, i64 %idxprom
  %18 = load i64, ptr %arrayidx, align 8
  %cmp7 = icmp sgt i64 %15, %18
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i64, ptr %code, align 8
  %shl9 = shl i64 %19, 1
  store i64 %shl9, ptr %code, align 8
  %20 = load i32, ptr %bits_left.addr, align 4
  %cmp10 = icmp slt i32 %20, 1
  br i1 %cmp10, label %if.then12, label %if.end19

if.then12:                                        ; preds = %while.body
  %21 = load ptr, ptr %state.addr, align 8
  %22 = load i64, ptr %get_buffer.addr, align 8
  %23 = load i32, ptr %bits_left.addr, align 4
  %call13 = call i32 @jpeg_fill_bit_buffer(ptr noundef %21, i64 noundef %22, i32 noundef %23, i32 noundef 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then12
  store i32 -1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then12
  %24 = load ptr, ptr %state.addr, align 8
  %get_buffer17 = getelementptr inbounds %struct.bitread_working_state, ptr %24, i32 0, i32 3
  %25 = load i64, ptr %get_buffer17, align 8
  store i64 %25, ptr %get_buffer.addr, align 8
  %26 = load ptr, ptr %state.addr, align 8
  %bits_left18 = getelementptr inbounds %struct.bitread_working_state, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %bits_left18, align 8
  store i32 %27, ptr %bits_left.addr, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %while.body
  %28 = load i64, ptr %get_buffer.addr, align 8
  %29 = load i32, ptr %bits_left.addr, align 4
  %sub20 = sub nsw i32 %29, 1
  store i32 %sub20, ptr %bits_left.addr, align 4
  %sh_prom21 = zext i32 %sub20 to i64
  %shr22 = ashr i64 %28, %sh_prom21
  %conv23 = trunc i64 %shr22 to i32
  %and24 = and i32 %conv23, 1
  %conv25 = sext i32 %and24 to i64
  %30 = load i64, ptr %code, align 8
  %or = or i64 %30, %conv25
  store i64 %or, ptr %code, align 8
  %31 = load i32, ptr %l, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %l, align 4
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %32 = load i64, ptr %get_buffer.addr, align 8
  %33 = load ptr, ptr %state.addr, align 8
  %get_buffer26 = getelementptr inbounds %struct.bitread_working_state, ptr %33, i32 0, i32 3
  store i64 %32, ptr %get_buffer26, align 8
  %34 = load i32, ptr %bits_left.addr, align 4
  %35 = load ptr, ptr %state.addr, align 8
  %bits_left27 = getelementptr inbounds %struct.bitread_working_state, ptr %35, i32 0, i32 4
  store i32 %34, ptr %bits_left27, align 8
  %36 = load i32, ptr %l, align 4
  %cmp28 = icmp sgt i32 %36, 16
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %while.end
  %37 = load ptr, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.bitread_working_state, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i32 0, i32 5
  store i32 114, ptr %msg_code, align 8
  %40 = load ptr, ptr %state.addr, align 8
  %cinfo31 = getelementptr inbounds %struct.bitread_working_state, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %cinfo31, align 8
  %err32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %err32, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %emit_message, align 8
  %44 = load ptr, ptr %state.addr, align 8
  %cinfo33 = getelementptr inbounds %struct.bitread_working_state, ptr %44, i32 0, i32 5
  %45 = load ptr, ptr %cinfo33, align 8
  call void %43(ptr noundef %45, i32 noundef -1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %while.end
  %46 = load ptr, ptr %htbl.addr, align 8
  %pub = getelementptr inbounds %struct.d_derived_tbl, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %pub, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %htbl.addr, align 8
  %valptr = getelementptr inbounds %struct.d_derived_tbl, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %l, align 4
  %idxprom35 = sext i32 %49 to i64
  %arrayidx36 = getelementptr inbounds [17 x i32], ptr %valptr, i64 0, i64 %idxprom35
  %50 = load i32, ptr %arrayidx36, align 4
  %51 = load i64, ptr %code, align 8
  %52 = load ptr, ptr %htbl.addr, align 8
  %mincode = getelementptr inbounds %struct.d_derived_tbl, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %l, align 4
  %idxprom37 = sext i32 %53 to i64
  %arrayidx38 = getelementptr inbounds [17 x i64], ptr %mincode, i64 0, i64 %idxprom37
  %54 = load i64, ptr %arrayidx38, align 8
  %sub39 = sub nsw i64 %51, %54
  %conv40 = trunc i64 %sub39 to i32
  %add = add nsw i32 %50, %conv40
  %idxprom41 = sext i32 %add to i64
  %arrayidx42 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 %idxprom41
  %55 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %55 to i32
  store i32 %conv43, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then30, %if.then15, %if.then1
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind ssp uwtable
define void @jinit_huff_decoder(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 120)
  store ptr %call, ptr %entropy, align 8
  %4 = load ptr, ptr %entropy, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 79
  store ptr %4, ptr %entropy1, align 8
  %6 = load ptr, ptr %entropy, align 8
  %pub = getelementptr inbounds %struct.huff_entropy_decoder, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %pub, i32 0, i32 0
  store ptr @start_pass_huff_decoder, ptr %start_pass, align 8
  %7 = load ptr, ptr %entropy, align 8
  %pub2 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %7, i32 0, i32 0
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %pub2, i32 0, i32 1
  store ptr @decode_mcu, ptr %decode_mcu, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ac_derived_tbls, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  %11 = load ptr, ptr %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds [4 x ptr], ptr %dc_derived_tbls, i64 0, i64 %idxprom3
  store ptr null, ptr %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
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
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 79
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 68
  %3 = load i32, ptr %Ss, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 69
  %5 = load i32, ptr %Se, align 8
  %cmp2 = icmp ne i32 %5, 63
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 70
  %7 = load i32, ptr %Ah, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %8 = load ptr, ptr %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 71
  %9 = load i32, ptr %Al, align 8
  %cmp6 = icmp ne i32 %9, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 118, ptr %msg_code, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err7, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %emit_message, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false5
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, ptr %ci, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 62
  %18 = load i32, ptr %comps_in_scan, align 8
  %cmp8 = icmp slt i32 %16, %18
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 63
  %20 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %21 = load ptr, ptr %arrayidx, align 8
  store ptr %21, ptr %compptr, align 8
  %22 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %dc_tbl_no, align 4
  store i32 %23, ptr %dctbl, align 4
  %24 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %ac_tbl_no, align 8
  store i32 %25, ptr %actbl, align 4
  %26 = load i32, ptr %dctbl, align 4
  %cmp9 = icmp slt i32 %26, 0
  br i1 %cmp9, label %if.then16, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %for.body
  %27 = load i32, ptr %dctbl, align 4
  %cmp11 = icmp sge i32 %27, 4
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %28 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 40
  %29 = load i32, ptr %dctbl, align 4
  %idxprom13 = sext i32 %29 to i64
  %arrayidx14 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom13
  %30 = load ptr, ptr %arrayidx14, align 8
  %cmp15 = icmp eq ptr %30, null
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %lor.lhs.false12, %lor.lhs.false10, %for.body
  %31 = load ptr, ptr %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %err17, align 8
  %msg_code18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i32 0, i32 5
  store i32 49, ptr %msg_code18, align 8
  %33 = load i32, ptr %dctbl, align 4
  %34 = load ptr, ptr %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err19, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %33, ptr %arrayidx20, align 4
  %36 = load ptr, ptr %cinfo.addr, align 8
  %err21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err21, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %error_exit, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  call void %38(ptr noundef %39)
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %lor.lhs.false12
  %40 = load i32, ptr %actbl, align 4
  %cmp23 = icmp slt i32 %40, 0
  br i1 %cmp23, label %if.then30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end22
  %41 = load i32, ptr %actbl, align 4
  %cmp25 = icmp sge i32 %41, 4
  br i1 %cmp25, label %if.then30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %42 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 41
  %43 = load i32, ptr %actbl, align 4
  %idxprom27 = sext i32 %43 to i64
  %arrayidx28 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom27
  %44 = load ptr, ptr %arrayidx28, align 8
  %cmp29 = icmp eq ptr %44, null
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %lor.lhs.false26, %lor.lhs.false24, %if.end22
  %45 = load ptr, ptr %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err31, align 8
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i32 0, i32 5
  store i32 49, ptr %msg_code32, align 8
  %47 = load i32, ptr %actbl, align 4
  %48 = load ptr, ptr %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %err33, align 8
  %msg_parm34 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i32 0, i32 6
  %arrayidx35 = getelementptr inbounds [8 x i32], ptr %msg_parm34, i64 0, i64 0
  store i32 %47, ptr %arrayidx35, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %err36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %err36, align 8
  %error_exit37 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %error_exit37, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  call void %52(ptr noundef %53)
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %lor.lhs.false26
  %54 = load ptr, ptr %cinfo.addr, align 8
  %55 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 40
  %56 = load i32, ptr %dctbl, align 4
  %idxprom40 = sext i32 %56 to i64
  %arrayidx41 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs39, i64 0, i64 %idxprom40
  %57 = load ptr, ptr %arrayidx41, align 8
  %58 = load ptr, ptr %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, ptr %58, i32 0, i32 4
  %59 = load i32, ptr %dctbl, align 4
  %idxprom42 = sext i32 %59 to i64
  %arrayidx43 = getelementptr inbounds [4 x ptr], ptr %dc_derived_tbls, i64 0, i64 %idxprom42
  call void @jpeg_make_d_derived_tbl(ptr noundef %54, ptr noundef %57, ptr noundef %arrayidx43)
  %60 = load ptr, ptr %cinfo.addr, align 8
  %61 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 41
  %62 = load i32, ptr %actbl, align 4
  %idxprom45 = sext i32 %62 to i64
  %arrayidx46 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs44, i64 0, i64 %idxprom45
  %63 = load ptr, ptr %arrayidx46, align 8
  %64 = load ptr, ptr %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, ptr %64, i32 0, i32 5
  %65 = load i32, ptr %actbl, align 4
  %idxprom47 = sext i32 %65 to i64
  %arrayidx48 = getelementptr inbounds [4 x ptr], ptr %ac_derived_tbls, i64 0, i64 %idxprom47
  call void @jpeg_make_d_derived_tbl(ptr noundef %60, ptr noundef %63, ptr noundef %arrayidx48)
  %66 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, ptr %66, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %saved, i32 0, i32 0
  %67 = load i32, ptr %ci, align 4
  %idxprom49 = sext i32 %67 to i64
  %arrayidx50 = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom49
  store i32 0, ptr %arrayidx50, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %68 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %69 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, ptr %69, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate, i32 0, i32 1
  store i32 0, ptr %bits_left, align 8
  %70 = load ptr, ptr %entropy, align 8
  %bitstate51 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %70, i32 0, i32 1
  %get_buffer = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate51, i32 0, i32 0
  store i64 0, ptr %get_buffer, align 8
  %71 = load ptr, ptr %entropy, align 8
  %bitstate52 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %71, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate52, i32 0, i32 2
  store i32 0, ptr %printed_eod, align 4
  %72 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 49
  %73 = load i32, ptr %restart_interval, align 8
  %74 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, ptr %74, i32 0, i32 3
  store i32 %73, ptr %restarts_to_go, align 8
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 79
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 49
  %3 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jdhuff_0(ptr noundef %6)
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
  %7 = load ptr, ptr %cinfo.addr, align 8
  %cinfo7 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 5
  store ptr %7, ptr %cinfo7, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %next_input_byte, align 8
  %next_input_byte8 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  store ptr %10, ptr %next_input_byte8, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %src9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %src9, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer10 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  store i64 %13, ptr %bytes_in_buffer10, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 72
  %15 = load i32, ptr %unread_marker, align 4
  %unread_marker11 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  store i32 %15, ptr %unread_marker11, align 8
  %16 = load ptr, ptr %entropy, align 8
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, ptr %16, i32 0, i32 1
  %get_buffer12 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate, i32 0, i32 0
  %17 = load i64, ptr %get_buffer12, align 8
  store i64 %17, ptr %get_buffer, align 8
  %18 = load ptr, ptr %entropy, align 8
  %bitstate13 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %18, i32 0, i32 1
  %bits_left14 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate13, i32 0, i32 1
  %19 = load i32, ptr %bits_left14, align 8
  store i32 %19, ptr %bits_left, align 4
  %20 = load ptr, ptr %entropy, align 8
  %bitstate15 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %20, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate15, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 6
  store ptr %printed_eod, ptr %printed_eod_ptr, align 8
  %21 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, ptr %21, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %state, ptr align 8 %saved, i64 16, i1 false)
  store i32 0, ptr %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc256, %if.end6
  %22 = load i32, ptr %blkn, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 66
  %24 = load i32, ptr %blocks_in_MCU, align 8
  %cmp16 = icmp slt i32 %22, %24
  br i1 %cmp16, label %for.body, label %for.end258

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %MCU_data.addr, align 8
  %26 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %25, i64 %idxprom
  %27 = load ptr, ptr %arrayidx, align 8
  store ptr %27, ptr %block, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 67
  %29 = load i32, ptr %blkn, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr %MCU_membership, i64 0, i64 %idxprom17
  %30 = load i32, ptr %arrayidx18, align 4
  store i32 %30, ptr %ci, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 63
  %32 = load i32, ptr %ci, align 4
  %idxprom19 = sext i32 %32 to i64
  %arrayidx20 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom19
  %33 = load ptr, ptr %arrayidx20, align 8
  store ptr %33, ptr %compptr, align 8
  %34 = load ptr, ptr %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 5
  %36 = load i32, ptr %dc_tbl_no, align 4
  %idxprom21 = sext i32 %36 to i64
  %arrayidx22 = getelementptr inbounds [4 x ptr], ptr %dc_derived_tbls, i64 0, i64 %idxprom21
  %37 = load ptr, ptr %arrayidx22, align 8
  store ptr %37, ptr %dctbl, align 8
  %38 = load ptr, ptr %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i32 0, i32 6
  %40 = load i32, ptr %ac_tbl_no, align 8
  %idxprom23 = sext i32 %40 to i64
  %arrayidx24 = getelementptr inbounds [4 x ptr], ptr %ac_derived_tbls, i64 0, i64 %idxprom23
  %41 = load ptr, ptr %arrayidx24, align 8
  store ptr %41, ptr %actbl, align 8
  %42 = load i32, ptr %bits_left, align 4
  %cmp25 = icmp slt i32 %42, 8
  br i1 %cmp25, label %if.then26, label %if.end36

if.then26:                                        ; preds = %for.body
  %43 = load i64, ptr %get_buffer, align 8
  %44 = load i32, ptr %bits_left, align 4
  %call27 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %43, i32 noundef %44, i32 noundef 0)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then26
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then26
  %get_buffer31 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %45 = load i64, ptr %get_buffer31, align 8
  store i64 %45, ptr %get_buffer, align 8
  %bits_left32 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %46 = load i32, ptr %bits_left32, align 8
  store i32 %46, ptr %bits_left, align 4
  %47 = load i32, ptr %bits_left, align 4
  %cmp33 = icmp slt i32 %47, 8
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  store i32 1, ptr %nb, align 4
  br label %label1

if.end35:                                         ; preds = %if.end30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %for.body
  %48 = load i64, ptr %get_buffer, align 8
  %49 = load i32, ptr %bits_left, align 4
  %sub = sub nsw i32 %49, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %48, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, ptr %look, align 4
  %50 = load ptr, ptr %dctbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, ptr %50, i32 0, i32 4
  %51 = load i32, ptr %look, align 4
  %idxprom37 = sext i32 %51 to i64
  %arrayidx38 = getelementptr inbounds [256 x i32], ptr %look_nbits, i64 0, i64 %idxprom37
  %52 = load i32, ptr %arrayidx38, align 4
  store i32 %52, ptr %nb, align 4
  %cmp39 = icmp ne i32 %52, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end36
  %53 = load i32, ptr %nb, align 4
  %54 = load i32, ptr %bits_left, align 4
  %sub42 = sub nsw i32 %54, %53
  store i32 %sub42, ptr %bits_left, align 4
  %55 = load ptr, ptr %dctbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, ptr %55, i32 0, i32 5
  %56 = load i32, ptr %look, align 4
  %idxprom43 = sext i32 %56 to i64
  %arrayidx44 = getelementptr inbounds [256 x i8], ptr %look_sym, i64 0, i64 %idxprom43
  %57 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %57 to i32
  store i32 %conv45, ptr %s, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end36
  store i32 9, ptr %nb, align 4
  br label %label1

label1:                                           ; preds = %if.else, %if.then34
  %58 = load i64, ptr %get_buffer, align 8
  %59 = load i32, ptr %bits_left, align 4
  %60 = load ptr, ptr %dctbl, align 8
  %61 = load i32, ptr %nb, align 4
  %call46 = call i32 @jpeg_huff_decode(ptr noundef %br_state, i64 noundef %58, i32 noundef %59, ptr noundef %60, i32 noundef %61)
  store i32 %call46, ptr %s, align 4
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %label1
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %label1
  %get_buffer51 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %62 = load i64, ptr %get_buffer51, align 8
  store i64 %62, ptr %get_buffer, align 8
  %bits_left52 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %63 = load i32, ptr %bits_left52, align 8
  store i32 %63, ptr %bits_left, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.then41
  %64 = load i32, ptr %s, align 4
  %tobool54 = icmp ne i32 %64, 0
  br i1 %tobool54, label %if.then55, label %if.end78

if.then55:                                        ; preds = %if.end53
  %65 = load i32, ptr %bits_left, align 4
  %66 = load i32, ptr %s, align 4
  %cmp56 = icmp slt i32 %65, %66
  br i1 %cmp56, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.then55
  %67 = load i64, ptr %get_buffer, align 8
  %68 = load i32, ptr %bits_left, align 4
  %69 = load i32, ptr %s, align 4
  %call59 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %67, i32 noundef %68, i32 noundef %69)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.then58
  store i32 0, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.then58
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %70 = load i64, ptr %get_buffer63, align 8
  store i64 %70, ptr %get_buffer, align 8
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %71 = load i32, ptr %bits_left64, align 8
  store i32 %71, ptr %bits_left, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end62, %if.then55
  %72 = load i64, ptr %get_buffer, align 8
  %73 = load i32, ptr %s, align 4
  %74 = load i32, ptr %bits_left, align 4
  %sub66 = sub nsw i32 %74, %73
  store i32 %sub66, ptr %bits_left, align 4
  %sh_prom67 = zext i32 %sub66 to i64
  %shr68 = ashr i64 %72, %sh_prom67
  %conv69 = trunc i64 %shr68 to i32
  %75 = load i32, ptr %s, align 4
  %shl = shl i32 1, %75
  %sub70 = sub nsw i32 %shl, 1
  %and71 = and i32 %conv69, %sub70
  store i32 %and71, ptr %r, align 4
  %76 = load i32, ptr %r, align 4
  %77 = load i32, ptr %s, align 4
  %idxprom72 = sext i32 %77 to i64
  %arrayidx73 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %idxprom72
  %78 = load i32, ptr %arrayidx73, align 4
  %cmp74 = icmp slt i32 %76, %78
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end65
  %79 = load i32, ptr %r, align 4
  %80 = load i32, ptr %s, align 4
  %idxprom76 = sext i32 %80 to i64
  %arrayidx77 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %idxprom76
  %81 = load i32, ptr %arrayidx77, align 4
  %add = add nsw i32 %79, %81
  br label %cond.end

cond.false:                                       ; preds = %if.end65
  %82 = load i32, ptr %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %82, %cond.false ]
  store i32 %cond, ptr %s, align 4
  br label %if.end78

if.end78:                                         ; preds = %cond.end, %if.end53
  %83 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %83, i32 0, i32 12
  %84 = load i32, ptr %component_needed, align 8
  %tobool79 = icmp ne i32 %84, 0
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end78
  br label %skip_ACs

if.end81:                                         ; preds = %if.end78
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %state, i32 0, i32 0
  %85 = load i32, ptr %ci, align 4
  %idxprom82 = sext i32 %85 to i64
  %arrayidx83 = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom82
  %86 = load i32, ptr %arrayidx83, align 4
  %87 = load i32, ptr %s, align 4
  %add84 = add nsw i32 %87, %86
  store i32 %add84, ptr %s, align 4
  %88 = load i32, ptr %s, align 4
  %last_dc_val85 = getelementptr inbounds %struct.savable_state, ptr %state, i32 0, i32 0
  %89 = load i32, ptr %ci, align 4
  %idxprom86 = sext i32 %89 to i64
  %arrayidx87 = getelementptr inbounds [4 x i32], ptr %last_dc_val85, i64 0, i64 %idxprom86
  store i32 %88, ptr %arrayidx87, align 4
  %90 = load i32, ptr %s, align 4
  %conv88 = trunc i32 %90 to i16
  %91 = load ptr, ptr %block, align 8
  %arrayidx89 = getelementptr inbounds [64 x i16], ptr %91, i64 0, i64 0
  store i16 %conv88, ptr %arrayidx89, align 2
  %92 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %92, i32 0, i32 9
  %93 = load i32, ptr %DCT_scaled_size, align 4
  %cmp90 = icmp sgt i32 %93, 1
  br i1 %cmp90, label %if.then92, label %if.else183

if.then92:                                        ; preds = %if.end81
  store i32 1, ptr %k, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc, %if.then92
  %94 = load i32, ptr %k, align 4
  %cmp94 = icmp slt i32 %94, 64
  br i1 %cmp94, label %for.body96, label %for.end

for.body96:                                       ; preds = %for.cond93
  %95 = load i32, ptr %bits_left, align 4
  %cmp99 = icmp slt i32 %95, 8
  br i1 %cmp99, label %if.then101, label %if.end112

if.then101:                                       ; preds = %for.body96
  %96 = load i64, ptr %get_buffer, align 8
  %97 = load i32, ptr %bits_left, align 4
  %call102 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %96, i32 noundef %97, i32 noundef 0)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.then101
  store i32 0, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %if.then101
  %get_buffer106 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %98 = load i64, ptr %get_buffer106, align 8
  store i64 %98, ptr %get_buffer, align 8
  %bits_left107 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %99 = load i32, ptr %bits_left107, align 8
  store i32 %99, ptr %bits_left, align 4
  %100 = load i32, ptr %bits_left, align 4
  %cmp108 = icmp slt i32 %100, 8
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end105
  store i32 1, ptr %nb97, align 4
  br label %label2

if.end111:                                        ; preds = %if.end105
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %for.body96
  %101 = load i64, ptr %get_buffer, align 8
  %102 = load i32, ptr %bits_left, align 4
  %sub113 = sub nsw i32 %102, 8
  %sh_prom114 = zext i32 %sub113 to i64
  %shr115 = ashr i64 %101, %sh_prom114
  %conv116 = trunc i64 %shr115 to i32
  %and117 = and i32 %conv116, 255
  store i32 %and117, ptr %look98, align 4
  %103 = load ptr, ptr %actbl, align 8
  %look_nbits118 = getelementptr inbounds %struct.d_derived_tbl, ptr %103, i32 0, i32 4
  %104 = load i32, ptr %look98, align 4
  %idxprom119 = sext i32 %104 to i64
  %arrayidx120 = getelementptr inbounds [256 x i32], ptr %look_nbits118, i64 0, i64 %idxprom119
  %105 = load i32, ptr %arrayidx120, align 4
  store i32 %105, ptr %nb97, align 4
  %cmp121 = icmp ne i32 %105, 0
  br i1 %cmp121, label %if.then123, label %if.else129

if.then123:                                       ; preds = %if.end112
  %106 = load i32, ptr %nb97, align 4
  %107 = load i32, ptr %bits_left, align 4
  %sub124 = sub nsw i32 %107, %106
  store i32 %sub124, ptr %bits_left, align 4
  %108 = load ptr, ptr %actbl, align 8
  %look_sym125 = getelementptr inbounds %struct.d_derived_tbl, ptr %108, i32 0, i32 5
  %109 = load i32, ptr %look98, align 4
  %idxprom126 = sext i32 %109 to i64
  %arrayidx127 = getelementptr inbounds [256 x i8], ptr %look_sym125, i64 0, i64 %idxprom126
  %110 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %110 to i32
  store i32 %conv128, ptr %s, align 4
  br label %if.end137

if.else129:                                       ; preds = %if.end112
  store i32 9, ptr %nb97, align 4
  br label %label2

label2:                                           ; preds = %if.else129, %if.then110
  %111 = load i64, ptr %get_buffer, align 8
  %112 = load i32, ptr %bits_left, align 4
  %113 = load ptr, ptr %actbl, align 8
  %114 = load i32, ptr %nb97, align 4
  %call130 = call i32 @jpeg_huff_decode(ptr noundef %br_state, i64 noundef %111, i32 noundef %112, ptr noundef %113, i32 noundef %114)
  store i32 %call130, ptr %s, align 4
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %label2
  store i32 0, ptr %retval, align 4
  br label %return

if.end134:                                        ; preds = %label2
  %get_buffer135 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %115 = load i64, ptr %get_buffer135, align 8
  store i64 %115, ptr %get_buffer, align 8
  %bits_left136 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %116 = load i32, ptr %bits_left136, align 8
  store i32 %116, ptr %bits_left, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.end134, %if.then123
  %117 = load i32, ptr %s, align 4
  %shr138 = ashr i32 %117, 4
  store i32 %shr138, ptr %r, align 4
  %118 = load i32, ptr %s, align 4
  %and139 = and i32 %118, 15
  store i32 %and139, ptr %s, align 4
  %119 = load i32, ptr %s, align 4
  %tobool140 = icmp ne i32 %119, 0
  br i1 %tobool140, label %if.then141, label %if.else176

if.then141:                                       ; preds = %if.end137
  %120 = load i32, ptr %r, align 4
  %121 = load i32, ptr %k, align 4
  %add142 = add nsw i32 %121, %120
  store i32 %add142, ptr %k, align 4
  %122 = load i32, ptr %bits_left, align 4
  %123 = load i32, ptr %s, align 4
  %cmp143 = icmp slt i32 %122, %123
  br i1 %cmp143, label %if.then145, label %if.end152

if.then145:                                       ; preds = %if.then141
  %124 = load i64, ptr %get_buffer, align 8
  %125 = load i32, ptr %bits_left, align 4
  %126 = load i32, ptr %s, align 4
  %call146 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %124, i32 noundef %125, i32 noundef %126)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.end149, label %if.then148

if.then148:                                       ; preds = %if.then145
  store i32 0, ptr %retval, align 4
  br label %return

if.end149:                                        ; preds = %if.then145
  %get_buffer150 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %127 = load i64, ptr %get_buffer150, align 8
  store i64 %127, ptr %get_buffer, align 8
  %bits_left151 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %128 = load i32, ptr %bits_left151, align 8
  store i32 %128, ptr %bits_left, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.end149, %if.then141
  %129 = load i64, ptr %get_buffer, align 8
  %130 = load i32, ptr %s, align 4
  %131 = load i32, ptr %bits_left, align 4
  %sub153 = sub nsw i32 %131, %130
  store i32 %sub153, ptr %bits_left, align 4
  %sh_prom154 = zext i32 %sub153 to i64
  %shr155 = ashr i64 %129, %sh_prom154
  %conv156 = trunc i64 %shr155 to i32
  %132 = load i32, ptr %s, align 4
  %shl157 = shl i32 1, %132
  %sub158 = sub nsw i32 %shl157, 1
  %and159 = and i32 %conv156, %sub158
  store i32 %and159, ptr %r, align 4
  %133 = load i32, ptr %r, align 4
  %134 = load i32, ptr %s, align 4
  %idxprom160 = sext i32 %134 to i64
  %arrayidx161 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %idxprom160
  %135 = load i32, ptr %arrayidx161, align 4
  %cmp162 = icmp slt i32 %133, %135
  br i1 %cmp162, label %cond.true164, label %cond.false168

cond.true164:                                     ; preds = %if.end152
  %136 = load i32, ptr %r, align 4
  %137 = load i32, ptr %s, align 4
  %idxprom165 = sext i32 %137 to i64
  %arrayidx166 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %idxprom165
  %138 = load i32, ptr %arrayidx166, align 4
  %add167 = add nsw i32 %136, %138
  br label %cond.end169

cond.false168:                                    ; preds = %if.end152
  %139 = load i32, ptr %r, align 4
  br label %cond.end169

cond.end169:                                      ; preds = %cond.false168, %cond.true164
  %cond170 = phi i32 [ %add167, %cond.true164 ], [ %139, %cond.false168 ]
  store i32 %cond170, ptr %s, align 4
  %140 = load i32, ptr %s, align 4
  %conv171 = trunc i32 %140 to i16
  %141 = load ptr, ptr %block, align 8
  %142 = load i32, ptr %k, align 4
  %idxprom172 = sext i32 %142 to i64
  %arrayidx173 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom172
  %143 = load i32, ptr %arrayidx173, align 4
  %idxprom174 = sext i32 %143 to i64
  %arrayidx175 = getelementptr inbounds [64 x i16], ptr %141, i64 0, i64 %idxprom174
  store i16 %conv171, ptr %arrayidx175, align 2
  br label %if.end182

if.else176:                                       ; preds = %if.end137
  %144 = load i32, ptr %r, align 4
  %cmp177 = icmp ne i32 %144, 15
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %if.else176
  br label %for.end

if.end180:                                        ; preds = %if.else176
  %145 = load i32, ptr %k, align 4
  %add181 = add nsw i32 %145, 15
  store i32 %add181, ptr %k, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.end180, %cond.end169
  br label %for.inc

for.inc:                                          ; preds = %if.end182
  %146 = load i32, ptr %k, align 4
  %inc = add nsw i32 %146, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond93, !llvm.loop !20

for.end:                                          ; preds = %if.then179, %for.cond93
  br label %if.end255

if.else183:                                       ; preds = %if.end81
  br label %skip_ACs

skip_ACs:                                         ; preds = %if.else183, %if.then80
  store i32 1, ptr %k, align 4
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc252, %skip_ACs
  %147 = load i32, ptr %k, align 4
  %cmp185 = icmp slt i32 %147, 64
  br i1 %cmp185, label %for.body187, label %for.end254

for.body187:                                      ; preds = %for.cond184
  %148 = load i32, ptr %bits_left, align 4
  %cmp190 = icmp slt i32 %148, 8
  br i1 %cmp190, label %if.then192, label %if.end203

if.then192:                                       ; preds = %for.body187
  %149 = load i64, ptr %get_buffer, align 8
  %150 = load i32, ptr %bits_left, align 4
  %call193 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %149, i32 noundef %150, i32 noundef 0)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.end196, label %if.then195

if.then195:                                       ; preds = %if.then192
  store i32 0, ptr %retval, align 4
  br label %return

if.end196:                                        ; preds = %if.then192
  %get_buffer197 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %151 = load i64, ptr %get_buffer197, align 8
  store i64 %151, ptr %get_buffer, align 8
  %bits_left198 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %152 = load i32, ptr %bits_left198, align 8
  store i32 %152, ptr %bits_left, align 4
  %153 = load i32, ptr %bits_left, align 4
  %cmp199 = icmp slt i32 %153, 8
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.end196
  store i32 1, ptr %nb188, align 4
  br label %label3

if.end202:                                        ; preds = %if.end196
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %for.body187
  %154 = load i64, ptr %get_buffer, align 8
  %155 = load i32, ptr %bits_left, align 4
  %sub204 = sub nsw i32 %155, 8
  %sh_prom205 = zext i32 %sub204 to i64
  %shr206 = ashr i64 %154, %sh_prom205
  %conv207 = trunc i64 %shr206 to i32
  %and208 = and i32 %conv207, 255
  store i32 %and208, ptr %look189, align 4
  %156 = load ptr, ptr %actbl, align 8
  %look_nbits209 = getelementptr inbounds %struct.d_derived_tbl, ptr %156, i32 0, i32 4
  %157 = load i32, ptr %look189, align 4
  %idxprom210 = sext i32 %157 to i64
  %arrayidx211 = getelementptr inbounds [256 x i32], ptr %look_nbits209, i64 0, i64 %idxprom210
  %158 = load i32, ptr %arrayidx211, align 4
  store i32 %158, ptr %nb188, align 4
  %cmp212 = icmp ne i32 %158, 0
  br i1 %cmp212, label %if.then214, label %if.else220

if.then214:                                       ; preds = %if.end203
  %159 = load i32, ptr %nb188, align 4
  %160 = load i32, ptr %bits_left, align 4
  %sub215 = sub nsw i32 %160, %159
  store i32 %sub215, ptr %bits_left, align 4
  %161 = load ptr, ptr %actbl, align 8
  %look_sym216 = getelementptr inbounds %struct.d_derived_tbl, ptr %161, i32 0, i32 5
  %162 = load i32, ptr %look189, align 4
  %idxprom217 = sext i32 %162 to i64
  %arrayidx218 = getelementptr inbounds [256 x i8], ptr %look_sym216, i64 0, i64 %idxprom217
  %163 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %163 to i32
  store i32 %conv219, ptr %s, align 4
  br label %if.end228

if.else220:                                       ; preds = %if.end203
  store i32 9, ptr %nb188, align 4
  br label %label3

label3:                                           ; preds = %if.else220, %if.then201
  %164 = load i64, ptr %get_buffer, align 8
  %165 = load i32, ptr %bits_left, align 4
  %166 = load ptr, ptr %actbl, align 8
  %167 = load i32, ptr %nb188, align 4
  %call221 = call i32 @jpeg_huff_decode(ptr noundef %br_state, i64 noundef %164, i32 noundef %165, ptr noundef %166, i32 noundef %167)
  store i32 %call221, ptr %s, align 4
  %cmp222 = icmp slt i32 %call221, 0
  br i1 %cmp222, label %if.then224, label %if.end225

if.then224:                                       ; preds = %label3
  store i32 0, ptr %retval, align 4
  br label %return

if.end225:                                        ; preds = %label3
  %get_buffer226 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %168 = load i64, ptr %get_buffer226, align 8
  store i64 %168, ptr %get_buffer, align 8
  %bits_left227 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %169 = load i32, ptr %bits_left227, align 8
  store i32 %169, ptr %bits_left, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.end225, %if.then214
  %170 = load i32, ptr %s, align 4
  %shr229 = ashr i32 %170, 4
  store i32 %shr229, ptr %r, align 4
  %171 = load i32, ptr %s, align 4
  %and230 = and i32 %171, 15
  store i32 %and230, ptr %s, align 4
  %172 = load i32, ptr %s, align 4
  %tobool231 = icmp ne i32 %172, 0
  br i1 %tobool231, label %if.then232, label %if.else245

if.then232:                                       ; preds = %if.end228
  %173 = load i32, ptr %r, align 4
  %174 = load i32, ptr %k, align 4
  %add233 = add nsw i32 %174, %173
  store i32 %add233, ptr %k, align 4
  %175 = load i32, ptr %bits_left, align 4
  %176 = load i32, ptr %s, align 4
  %cmp234 = icmp slt i32 %175, %176
  br i1 %cmp234, label %if.then236, label %if.end243

if.then236:                                       ; preds = %if.then232
  %177 = load i64, ptr %get_buffer, align 8
  %178 = load i32, ptr %bits_left, align 4
  %179 = load i32, ptr %s, align 4
  %call237 = call i32 @jpeg_fill_bit_buffer(ptr noundef %br_state, i64 noundef %177, i32 noundef %178, i32 noundef %179)
  %tobool238 = icmp ne i32 %call237, 0
  br i1 %tobool238, label %if.end240, label %if.then239

if.then239:                                       ; preds = %if.then236
  store i32 0, ptr %retval, align 4
  br label %return

if.end240:                                        ; preds = %if.then236
  %get_buffer241 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 3
  %180 = load i64, ptr %get_buffer241, align 8
  store i64 %180, ptr %get_buffer, align 8
  %bits_left242 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 4
  %181 = load i32, ptr %bits_left242, align 8
  store i32 %181, ptr %bits_left, align 4
  br label %if.end243

if.end243:                                        ; preds = %if.end240, %if.then232
  %182 = load i32, ptr %s, align 4
  %183 = load i32, ptr %bits_left, align 4
  %sub244 = sub nsw i32 %183, %182
  store i32 %sub244, ptr %bits_left, align 4
  br label %if.end251

if.else245:                                       ; preds = %if.end228
  %184 = load i32, ptr %r, align 4
  %cmp246 = icmp ne i32 %184, 15
  br i1 %cmp246, label %if.then248, label %if.end249

if.then248:                                       ; preds = %if.else245
  br label %for.end254

if.end249:                                        ; preds = %if.else245
  %185 = load i32, ptr %k, align 4
  %add250 = add nsw i32 %185, 15
  store i32 %add250, ptr %k, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.end249, %if.end243
  br label %for.inc252

for.inc252:                                       ; preds = %if.end251
  %186 = load i32, ptr %k, align 4
  %inc253 = add nsw i32 %186, 1
  store i32 %inc253, ptr %k, align 4
  br label %for.cond184, !llvm.loop !21

for.end254:                                       ; preds = %if.then248, %for.cond184
  br label %if.end255

if.end255:                                        ; preds = %for.end254, %for.end
  br label %for.inc256

for.inc256:                                       ; preds = %if.end255
  %187 = load i32, ptr %blkn, align 4
  %inc257 = add nsw i32 %187, 1
  store i32 %inc257, ptr %blkn, align 4
  br label %for.cond, !llvm.loop !22

for.end258:                                       ; preds = %for.cond
  %next_input_byte259 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 0
  %188 = load ptr, ptr %next_input_byte259, align 8
  %189 = load ptr, ptr %cinfo.addr, align 8
  %src260 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %189, i32 0, i32 5
  %190 = load ptr, ptr %src260, align 8
  %next_input_byte261 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %190, i32 0, i32 0
  store ptr %188, ptr %next_input_byte261, align 8
  %bytes_in_buffer262 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 1
  %191 = load i64, ptr %bytes_in_buffer262, align 8
  %192 = load ptr, ptr %cinfo.addr, align 8
  %src263 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %192, i32 0, i32 5
  %193 = load ptr, ptr %src263, align 8
  %bytes_in_buffer264 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %193, i32 0, i32 1
  store i64 %191, ptr %bytes_in_buffer264, align 8
  %unread_marker265 = getelementptr inbounds %struct.bitread_working_state, ptr %br_state, i32 0, i32 2
  %194 = load i32, ptr %unread_marker265, align 8
  %195 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker266 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %195, i32 0, i32 72
  store i32 %194, ptr %unread_marker266, align 4
  %196 = load i64, ptr %get_buffer, align 8
  %197 = load ptr, ptr %entropy, align 8
  %bitstate267 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %197, i32 0, i32 1
  %get_buffer268 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate267, i32 0, i32 0
  store i64 %196, ptr %get_buffer268, align 8
  %198 = load i32, ptr %bits_left, align 4
  %199 = load ptr, ptr %entropy, align 8
  %bitstate269 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %199, i32 0, i32 1
  %bits_left270 = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate269, i32 0, i32 1
  store i32 %198, ptr %bits_left270, align 8
  %200 = load ptr, ptr %entropy, align 8
  %saved271 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %200, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %saved271, ptr align 4 %state, i64 16, i1 false)
  %201 = load ptr, ptr %entropy, align 8
  %restarts_to_go272 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %201, i32 0, i32 3
  %202 = load i32, ptr %restarts_to_go272, align 8
  %dec = add i32 %202, -1
  store i32 %dec, ptr %restarts_to_go272, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end258, %if.then239, %if.then224, %if.then195, %if.then148, %if.then133, %if.then104, %if.then61, %if.then49, %if.then29, %if.then4
  %203 = load i32, ptr %retval, align 4
  ret i32 %203
}

; Function Attrs: nounwind ssp uwtable
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
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, ptr %2, i32 0, i32 1
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
  %bitstate2 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %7, i32 0, i32 1
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
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, ptr %15, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %saved, i32 0, i32 0
  %16 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 49
  %19 = load i32, ptr %restart_interval, align 8
  %20 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, ptr %20, i32 0, i32 3
  store i32 %19, ptr %restarts_to_go, align 8
  %21 = load ptr, ptr %entropy, align 8
  %bitstate5 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %21, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate5, i32 0, i32 2
  store i32 0, ptr %printed_eod, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
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


define internal i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jdhuff_0(ptr noundef %cinfo)  alwaysinline#0 {
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
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, ptr %2, i32 0, i32 1
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
  %bitstate2 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %7, i32 0, i32 1
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
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, ptr %15, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %saved, i32 0, i32 0
  %16 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 49
  %19 = load i32, ptr %restart_interval, align 8
  %20 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, ptr %20, i32 0, i32 3
  store i32 %19, ptr %restarts_to_go, align 8
  %21 = load ptr, ptr %entropy, align 8
  %bitstate5 = getelementptr inbounds %struct.huff_entropy_decoder, ptr %21, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, ptr %bitstate5, i32 0, i32 2
  store i32 0, ptr %printed_eod, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

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
