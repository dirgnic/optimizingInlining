; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jidctfst.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jidctfst.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_idct_ifast(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %z5 = alloca i32, align 4
  %z10 = alloca i32, align 4
  %z11 = alloca i32, align 4
  %z12 = alloca i32, align 4
  %z13 = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %quantptr = alloca ptr, align 8
  %wsptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %range_limit = alloca ptr, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x i32], align 4
  %dcval = alloca i32, align 4
  %dcval145 = alloca i8, align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %coef_block, ptr %coef_block.addr, align 8
  store ptr %output_buf, ptr %output_buf.addr, align 8
  store i32 %output_col, ptr %output_col.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 61
  %1 = load ptr, ptr %sample_range_limit, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 128
  store ptr %add.ptr, ptr %range_limit, align 8
  %2 = load ptr, ptr %coef_block.addr, align 8
  store ptr %2, ptr %inptr, align 8
  %3 = load ptr, ptr %compptr.addr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %3, i32 0, i32 20
  %4 = load ptr, ptr %dct_table, align 8
  store ptr %4, ptr %quantptr, align 8
  %arraydecay = getelementptr inbounds [64 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay, ptr %wsptr, align 8
  store i32 8, ptr %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %ctr, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %inptr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 8
  %7 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %7 to i32
  %8 = load ptr, ptr %inptr, align 8
  %arrayidx1 = getelementptr inbounds i16, ptr %8, i64 16
  %9 = load i16, ptr %arrayidx1, align 2
  %conv2 = sext i16 %9 to i32
  %or = or i32 %conv, %conv2
  %10 = load ptr, ptr %inptr, align 8
  %arrayidx3 = getelementptr inbounds i16, ptr %10, i64 24
  %11 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %11 to i32
  %or5 = or i32 %or, %conv4
  %12 = load ptr, ptr %inptr, align 8
  %arrayidx6 = getelementptr inbounds i16, ptr %12, i64 32
  %13 = load i16, ptr %arrayidx6, align 2
  %conv7 = sext i16 %13 to i32
  %or8 = or i32 %or5, %conv7
  %14 = load ptr, ptr %inptr, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %14, i64 40
  %15 = load i16, ptr %arrayidx9, align 2
  %conv10 = sext i16 %15 to i32
  %or11 = or i32 %or8, %conv10
  %16 = load ptr, ptr %inptr, align 8
  %arrayidx12 = getelementptr inbounds i16, ptr %16, i64 48
  %17 = load i16, ptr %arrayidx12, align 2
  %conv13 = sext i16 %17 to i32
  %or14 = or i32 %or11, %conv13
  %18 = load ptr, ptr %inptr, align 8
  %arrayidx15 = getelementptr inbounds i16, ptr %18, i64 56
  %19 = load i16, ptr %arrayidx15, align 2
  %conv16 = sext i16 %19 to i32
  %or17 = or i32 %or14, %conv16
  %cmp18 = icmp eq i32 %or17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %20 = load ptr, ptr %inptr, align 8
  %arrayidx20 = getelementptr inbounds i16, ptr %20, i64 0
  %21 = load i16, ptr %arrayidx20, align 2
  %conv21 = sext i16 %21 to i32
  %22 = load ptr, ptr %quantptr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %22, i64 0
  %23 = load i32, ptr %arrayidx22, align 4
  %mul = mul nsw i32 %conv21, %23
  store i32 %mul, ptr %dcval, align 4
  %24 = load i32, ptr %dcval, align 4
  %25 = load ptr, ptr %wsptr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %25, i64 0
  store i32 %24, ptr %arrayidx23, align 4
  %26 = load i32, ptr %dcval, align 4
  %27 = load ptr, ptr %wsptr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %27, i64 8
  store i32 %26, ptr %arrayidx24, align 4
  %28 = load i32, ptr %dcval, align 4
  %29 = load ptr, ptr %wsptr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %29, i64 16
  store i32 %28, ptr %arrayidx25, align 4
  %30 = load i32, ptr %dcval, align 4
  %31 = load ptr, ptr %wsptr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %31, i64 24
  store i32 %30, ptr %arrayidx26, align 4
  %32 = load i32, ptr %dcval, align 4
  %33 = load ptr, ptr %wsptr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %33, i64 32
  store i32 %32, ptr %arrayidx27, align 4
  %34 = load i32, ptr %dcval, align 4
  %35 = load ptr, ptr %wsptr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %35, i64 40
  store i32 %34, ptr %arrayidx28, align 4
  %36 = load i32, ptr %dcval, align 4
  %37 = load ptr, ptr %wsptr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %37, i64 48
  store i32 %36, ptr %arrayidx29, align 4
  %38 = load i32, ptr %dcval, align 4
  %39 = load ptr, ptr %wsptr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %39, i64 56
  store i32 %38, ptr %arrayidx30, align 4
  %40 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %41 = load ptr, ptr %quantptr, align 8
  %incdec.ptr31 = getelementptr inbounds i32, ptr %41, i32 1
  store ptr %incdec.ptr31, ptr %quantptr, align 8
  %42 = load ptr, ptr %wsptr, align 8
  %incdec.ptr32 = getelementptr inbounds i32, ptr %42, i32 1
  store ptr %incdec.ptr32, ptr %wsptr, align 8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %43 = load ptr, ptr %inptr, align 8
  %arrayidx33 = getelementptr inbounds i16, ptr %43, i64 0
  %44 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %44 to i32
  %45 = load ptr, ptr %quantptr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %45, i64 0
  %46 = load i32, ptr %arrayidx35, align 4
  %mul36 = mul nsw i32 %conv34, %46
  store i32 %mul36, ptr %tmp0, align 4
  %47 = load ptr, ptr %inptr, align 8
  %arrayidx37 = getelementptr inbounds i16, ptr %47, i64 16
  %48 = load i16, ptr %arrayidx37, align 2
  %conv38 = sext i16 %48 to i32
  %49 = load ptr, ptr %quantptr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %49, i64 16
  %50 = load i32, ptr %arrayidx39, align 4
  %mul40 = mul nsw i32 %conv38, %50
  store i32 %mul40, ptr %tmp1, align 4
  %51 = load ptr, ptr %inptr, align 8
  %arrayidx41 = getelementptr inbounds i16, ptr %51, i64 32
  %52 = load i16, ptr %arrayidx41, align 2
  %conv42 = sext i16 %52 to i32
  %53 = load ptr, ptr %quantptr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %53, i64 32
  %54 = load i32, ptr %arrayidx43, align 4
  %mul44 = mul nsw i32 %conv42, %54
  store i32 %mul44, ptr %tmp2, align 4
  %55 = load ptr, ptr %inptr, align 8
  %arrayidx45 = getelementptr inbounds i16, ptr %55, i64 48
  %56 = load i16, ptr %arrayidx45, align 2
  %conv46 = sext i16 %56 to i32
  %57 = load ptr, ptr %quantptr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %57, i64 48
  %58 = load i32, ptr %arrayidx47, align 4
  %mul48 = mul nsw i32 %conv46, %58
  store i32 %mul48, ptr %tmp3, align 4
  %59 = load i32, ptr %tmp0, align 4
  %60 = load i32, ptr %tmp2, align 4
  %add = add nsw i32 %59, %60
  store i32 %add, ptr %tmp10, align 4
  %61 = load i32, ptr %tmp0, align 4
  %62 = load i32, ptr %tmp2, align 4
  %sub = sub nsw i32 %61, %62
  store i32 %sub, ptr %tmp11, align 4
  %63 = load i32, ptr %tmp1, align 4
  %64 = load i32, ptr %tmp3, align 4
  %add49 = add nsw i32 %63, %64
  store i32 %add49, ptr %tmp13, align 4
  %65 = load i32, ptr %tmp1, align 4
  %66 = load i32, ptr %tmp3, align 4
  %sub50 = sub nsw i32 %65, %66
  %conv51 = sext i32 %sub50 to i64
  %mul52 = mul nsw i64 %conv51, 362
  %shr = ashr i64 %mul52, 8
  %conv53 = trunc i64 %shr to i32
  %67 = load i32, ptr %tmp13, align 4
  %sub54 = sub nsw i32 %conv53, %67
  store i32 %sub54, ptr %tmp12, align 4
  %68 = load i32, ptr %tmp10, align 4
  %69 = load i32, ptr %tmp13, align 4
  %add55 = add nsw i32 %68, %69
  store i32 %add55, ptr %tmp0, align 4
  %70 = load i32, ptr %tmp10, align 4
  %71 = load i32, ptr %tmp13, align 4
  %sub56 = sub nsw i32 %70, %71
  store i32 %sub56, ptr %tmp3, align 4
  %72 = load i32, ptr %tmp11, align 4
  %73 = load i32, ptr %tmp12, align 4
  %add57 = add nsw i32 %72, %73
  store i32 %add57, ptr %tmp1, align 4
  %74 = load i32, ptr %tmp11, align 4
  %75 = load i32, ptr %tmp12, align 4
  %sub58 = sub nsw i32 %74, %75
  store i32 %sub58, ptr %tmp2, align 4
  %76 = load ptr, ptr %inptr, align 8
  %arrayidx59 = getelementptr inbounds i16, ptr %76, i64 8
  %77 = load i16, ptr %arrayidx59, align 2
  %conv60 = sext i16 %77 to i32
  %78 = load ptr, ptr %quantptr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %78, i64 8
  %79 = load i32, ptr %arrayidx61, align 4
  %mul62 = mul nsw i32 %conv60, %79
  store i32 %mul62, ptr %tmp4, align 4
  %80 = load ptr, ptr %inptr, align 8
  %arrayidx63 = getelementptr inbounds i16, ptr %80, i64 24
  %81 = load i16, ptr %arrayidx63, align 2
  %conv64 = sext i16 %81 to i32
  %82 = load ptr, ptr %quantptr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %82, i64 24
  %83 = load i32, ptr %arrayidx65, align 4
  %mul66 = mul nsw i32 %conv64, %83
  store i32 %mul66, ptr %tmp5, align 4
  %84 = load ptr, ptr %inptr, align 8
  %arrayidx67 = getelementptr inbounds i16, ptr %84, i64 40
  %85 = load i16, ptr %arrayidx67, align 2
  %conv68 = sext i16 %85 to i32
  %86 = load ptr, ptr %quantptr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %86, i64 40
  %87 = load i32, ptr %arrayidx69, align 4
  %mul70 = mul nsw i32 %conv68, %87
  store i32 %mul70, ptr %tmp6, align 4
  %88 = load ptr, ptr %inptr, align 8
  %arrayidx71 = getelementptr inbounds i16, ptr %88, i64 56
  %89 = load i16, ptr %arrayidx71, align 2
  %conv72 = sext i16 %89 to i32
  %90 = load ptr, ptr %quantptr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %90, i64 56
  %91 = load i32, ptr %arrayidx73, align 4
  %mul74 = mul nsw i32 %conv72, %91
  store i32 %mul74, ptr %tmp7, align 4
  %92 = load i32, ptr %tmp6, align 4
  %93 = load i32, ptr %tmp5, align 4
  %add75 = add nsw i32 %92, %93
  store i32 %add75, ptr %z13, align 4
  %94 = load i32, ptr %tmp6, align 4
  %95 = load i32, ptr %tmp5, align 4
  %sub76 = sub nsw i32 %94, %95
  store i32 %sub76, ptr %z10, align 4
  %96 = load i32, ptr %tmp4, align 4
  %97 = load i32, ptr %tmp7, align 4
  %add77 = add nsw i32 %96, %97
  store i32 %add77, ptr %z11, align 4
  %98 = load i32, ptr %tmp4, align 4
  %99 = load i32, ptr %tmp7, align 4
  %sub78 = sub nsw i32 %98, %99
  store i32 %sub78, ptr %z12, align 4
  %100 = load i32, ptr %z11, align 4
  %101 = load i32, ptr %z13, align 4
  %add79 = add nsw i32 %100, %101
  store i32 %add79, ptr %tmp7, align 4
  %102 = load i32, ptr %z11, align 4
  %103 = load i32, ptr %z13, align 4
  %sub80 = sub nsw i32 %102, %103
  %conv81 = sext i32 %sub80 to i64
  %mul82 = mul nsw i64 %conv81, 362
  %shr83 = ashr i64 %mul82, 8
  %conv84 = trunc i64 %shr83 to i32
  store i32 %conv84, ptr %tmp11, align 4
  %104 = load i32, ptr %z10, align 4
  %105 = load i32, ptr %z12, align 4
  %add85 = add nsw i32 %104, %105
  %conv86 = sext i32 %add85 to i64
  %mul87 = mul nsw i64 %conv86, 473
  %shr88 = ashr i64 %mul87, 8
  %conv89 = trunc i64 %shr88 to i32
  store i32 %conv89, ptr %z5, align 4
  %106 = load i32, ptr %z12, align 4
  %conv90 = sext i32 %106 to i64
  %mul91 = mul nsw i64 %conv90, 277
  %shr92 = ashr i64 %mul91, 8
  %conv93 = trunc i64 %shr92 to i32
  %107 = load i32, ptr %z5, align 4
  %sub94 = sub nsw i32 %conv93, %107
  store i32 %sub94, ptr %tmp10, align 4
  %108 = load i32, ptr %z10, align 4
  %conv95 = sext i32 %108 to i64
  %mul96 = mul nsw i64 %conv95, -669
  %shr97 = ashr i64 %mul96, 8
  %conv98 = trunc i64 %shr97 to i32
  %109 = load i32, ptr %z5, align 4
  %add99 = add nsw i32 %conv98, %109
  store i32 %add99, ptr %tmp12, align 4
  %110 = load i32, ptr %tmp12, align 4
  %111 = load i32, ptr %tmp7, align 4
  %sub100 = sub nsw i32 %110, %111
  store i32 %sub100, ptr %tmp6, align 4
  %112 = load i32, ptr %tmp11, align 4
  %113 = load i32, ptr %tmp6, align 4
  %sub101 = sub nsw i32 %112, %113
  store i32 %sub101, ptr %tmp5, align 4
  %114 = load i32, ptr %tmp10, align 4
  %115 = load i32, ptr %tmp5, align 4
  %add102 = add nsw i32 %114, %115
  store i32 %add102, ptr %tmp4, align 4
  %116 = load i32, ptr %tmp0, align 4
  %117 = load i32, ptr %tmp7, align 4
  %add103 = add nsw i32 %116, %117
  %118 = load ptr, ptr %wsptr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %118, i64 0
  store i32 %add103, ptr %arrayidx104, align 4
  %119 = load i32, ptr %tmp0, align 4
  %120 = load i32, ptr %tmp7, align 4
  %sub105 = sub nsw i32 %119, %120
  %121 = load ptr, ptr %wsptr, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %121, i64 56
  store i32 %sub105, ptr %arrayidx106, align 4
  %122 = load i32, ptr %tmp1, align 4
  %123 = load i32, ptr %tmp6, align 4
  %add107 = add nsw i32 %122, %123
  %124 = load ptr, ptr %wsptr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %124, i64 8
  store i32 %add107, ptr %arrayidx108, align 4
  %125 = load i32, ptr %tmp1, align 4
  %126 = load i32, ptr %tmp6, align 4
  %sub109 = sub nsw i32 %125, %126
  %127 = load ptr, ptr %wsptr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %127, i64 48
  store i32 %sub109, ptr %arrayidx110, align 4
  %128 = load i32, ptr %tmp2, align 4
  %129 = load i32, ptr %tmp5, align 4
  %add111 = add nsw i32 %128, %129
  %130 = load ptr, ptr %wsptr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %130, i64 16
  store i32 %add111, ptr %arrayidx112, align 4
  %131 = load i32, ptr %tmp2, align 4
  %132 = load i32, ptr %tmp5, align 4
  %sub113 = sub nsw i32 %131, %132
  %133 = load ptr, ptr %wsptr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %133, i64 40
  store i32 %sub113, ptr %arrayidx114, align 4
  %134 = load i32, ptr %tmp3, align 4
  %135 = load i32, ptr %tmp4, align 4
  %add115 = add nsw i32 %134, %135
  %136 = load ptr, ptr %wsptr, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %136, i64 32
  store i32 %add115, ptr %arrayidx116, align 4
  %137 = load i32, ptr %tmp3, align 4
  %138 = load i32, ptr %tmp4, align 4
  %sub117 = sub nsw i32 %137, %138
  %139 = load ptr, ptr %wsptr, align 8
  %arrayidx118 = getelementptr inbounds i32, ptr %139, i64 24
  store i32 %sub117, ptr %arrayidx118, align 4
  %140 = load ptr, ptr %inptr, align 8
  %incdec.ptr119 = getelementptr inbounds i16, ptr %140, i32 1
  store ptr %incdec.ptr119, ptr %inptr, align 8
  %141 = load ptr, ptr %quantptr, align 8
  %incdec.ptr120 = getelementptr inbounds i32, ptr %141, i32 1
  store ptr %incdec.ptr120, ptr %quantptr, align 8
  %142 = load ptr, ptr %wsptr, align 8
  %incdec.ptr121 = getelementptr inbounds i32, ptr %142, i32 1
  store ptr %incdec.ptr121, ptr %wsptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %143 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %143, -1
  store i32 %dec, ptr %ctr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay122 = getelementptr inbounds [64 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay122, ptr %wsptr, align 8
  store i32 0, ptr %ctr, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc266, %for.end
  %144 = load i32, ptr %ctr, align 4
  %cmp124 = icmp slt i32 %144, 8
  br i1 %cmp124, label %for.body126, label %for.end267

for.body126:                                      ; preds = %for.cond123
  %145 = load ptr, ptr %output_buf.addr, align 8
  %146 = load i32, ptr %ctr, align 4
  %idxprom = sext i32 %146 to i64
  %arrayidx127 = getelementptr inbounds ptr, ptr %145, i64 %idxprom
  %147 = load ptr, ptr %arrayidx127, align 8
  %148 = load i32, ptr %output_col.addr, align 4
  %idx.ext = zext i32 %148 to i64
  %add.ptr128 = getelementptr inbounds i8, ptr %147, i64 %idx.ext
  store ptr %add.ptr128, ptr %outptr, align 8
  %149 = load ptr, ptr %wsptr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %149, i64 1
  %150 = load i32, ptr %arrayidx129, align 4
  %151 = load ptr, ptr %wsptr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %151, i64 2
  %152 = load i32, ptr %arrayidx130, align 4
  %or131 = or i32 %150, %152
  %153 = load ptr, ptr %wsptr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %153, i64 3
  %154 = load i32, ptr %arrayidx132, align 4
  %or133 = or i32 %or131, %154
  %155 = load ptr, ptr %wsptr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %155, i64 4
  %156 = load i32, ptr %arrayidx134, align 4
  %or135 = or i32 %or133, %156
  %157 = load ptr, ptr %wsptr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %157, i64 5
  %158 = load i32, ptr %arrayidx136, align 4
  %or137 = or i32 %or135, %158
  %159 = load ptr, ptr %wsptr, align 8
  %arrayidx138 = getelementptr inbounds i32, ptr %159, i64 6
  %160 = load i32, ptr %arrayidx138, align 4
  %or139 = or i32 %or137, %160
  %161 = load ptr, ptr %wsptr, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %161, i64 7
  %162 = load i32, ptr %arrayidx140, align 4
  %or141 = or i32 %or139, %162
  %cmp142 = icmp eq i32 %or141, 0
  br i1 %cmp142, label %if.then144, label %if.end159

if.then144:                                       ; preds = %for.body126
  %163 = load ptr, ptr %range_limit, align 8
  %164 = load ptr, ptr %wsptr, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %164, i64 0
  %165 = load i32, ptr %arrayidx146, align 4
  %shr147 = ashr i32 %165, 5
  %and = and i32 %shr147, 1023
  %idxprom148 = sext i32 %and to i64
  %arrayidx149 = getelementptr inbounds i8, ptr %163, i64 %idxprom148
  %166 = load i8, ptr %arrayidx149, align 1
  store i8 %166, ptr %dcval145, align 1
  %167 = load i8, ptr %dcval145, align 1
  %168 = load ptr, ptr %outptr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %168, i64 0
  store i8 %167, ptr %arrayidx150, align 1
  %169 = load i8, ptr %dcval145, align 1
  %170 = load ptr, ptr %outptr, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %170, i64 1
  store i8 %169, ptr %arrayidx151, align 1
  %171 = load i8, ptr %dcval145, align 1
  %172 = load ptr, ptr %outptr, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %172, i64 2
  store i8 %171, ptr %arrayidx152, align 1
  %173 = load i8, ptr %dcval145, align 1
  %174 = load ptr, ptr %outptr, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %174, i64 3
  store i8 %173, ptr %arrayidx153, align 1
  %175 = load i8, ptr %dcval145, align 1
  %176 = load ptr, ptr %outptr, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %176, i64 4
  store i8 %175, ptr %arrayidx154, align 1
  %177 = load i8, ptr %dcval145, align 1
  %178 = load ptr, ptr %outptr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %178, i64 5
  store i8 %177, ptr %arrayidx155, align 1
  %179 = load i8, ptr %dcval145, align 1
  %180 = load ptr, ptr %outptr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %180, i64 6
  store i8 %179, ptr %arrayidx156, align 1
  %181 = load i8, ptr %dcval145, align 1
  %182 = load ptr, ptr %outptr, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %182, i64 7
  store i8 %181, ptr %arrayidx157, align 1
  %183 = load ptr, ptr %wsptr, align 8
  %add.ptr158 = getelementptr inbounds i32, ptr %183, i64 8
  store ptr %add.ptr158, ptr %wsptr, align 8
  br label %for.inc266

if.end159:                                        ; preds = %for.body126
  %184 = load ptr, ptr %wsptr, align 8
  %arrayidx160 = getelementptr inbounds i32, ptr %184, i64 0
  %185 = load i32, ptr %arrayidx160, align 4
  %186 = load ptr, ptr %wsptr, align 8
  %arrayidx161 = getelementptr inbounds i32, ptr %186, i64 4
  %187 = load i32, ptr %arrayidx161, align 4
  %add162 = add nsw i32 %185, %187
  store i32 %add162, ptr %tmp10, align 4
  %188 = load ptr, ptr %wsptr, align 8
  %arrayidx163 = getelementptr inbounds i32, ptr %188, i64 0
  %189 = load i32, ptr %arrayidx163, align 4
  %190 = load ptr, ptr %wsptr, align 8
  %arrayidx164 = getelementptr inbounds i32, ptr %190, i64 4
  %191 = load i32, ptr %arrayidx164, align 4
  %sub165 = sub nsw i32 %189, %191
  store i32 %sub165, ptr %tmp11, align 4
  %192 = load ptr, ptr %wsptr, align 8
  %arrayidx166 = getelementptr inbounds i32, ptr %192, i64 2
  %193 = load i32, ptr %arrayidx166, align 4
  %194 = load ptr, ptr %wsptr, align 8
  %arrayidx167 = getelementptr inbounds i32, ptr %194, i64 6
  %195 = load i32, ptr %arrayidx167, align 4
  %add168 = add nsw i32 %193, %195
  store i32 %add168, ptr %tmp13, align 4
  %196 = load ptr, ptr %wsptr, align 8
  %arrayidx169 = getelementptr inbounds i32, ptr %196, i64 2
  %197 = load i32, ptr %arrayidx169, align 4
  %198 = load ptr, ptr %wsptr, align 8
  %arrayidx170 = getelementptr inbounds i32, ptr %198, i64 6
  %199 = load i32, ptr %arrayidx170, align 4
  %sub171 = sub nsw i32 %197, %199
  %conv172 = sext i32 %sub171 to i64
  %mul173 = mul nsw i64 %conv172, 362
  %shr174 = ashr i64 %mul173, 8
  %conv175 = trunc i64 %shr174 to i32
  %200 = load i32, ptr %tmp13, align 4
  %sub176 = sub nsw i32 %conv175, %200
  store i32 %sub176, ptr %tmp12, align 4
  %201 = load i32, ptr %tmp10, align 4
  %202 = load i32, ptr %tmp13, align 4
  %add177 = add nsw i32 %201, %202
  store i32 %add177, ptr %tmp0, align 4
  %203 = load i32, ptr %tmp10, align 4
  %204 = load i32, ptr %tmp13, align 4
  %sub178 = sub nsw i32 %203, %204
  store i32 %sub178, ptr %tmp3, align 4
  %205 = load i32, ptr %tmp11, align 4
  %206 = load i32, ptr %tmp12, align 4
  %add179 = add nsw i32 %205, %206
  store i32 %add179, ptr %tmp1, align 4
  %207 = load i32, ptr %tmp11, align 4
  %208 = load i32, ptr %tmp12, align 4
  %sub180 = sub nsw i32 %207, %208
  store i32 %sub180, ptr %tmp2, align 4
  %209 = load ptr, ptr %wsptr, align 8
  %arrayidx181 = getelementptr inbounds i32, ptr %209, i64 5
  %210 = load i32, ptr %arrayidx181, align 4
  %211 = load ptr, ptr %wsptr, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %211, i64 3
  %212 = load i32, ptr %arrayidx182, align 4
  %add183 = add nsw i32 %210, %212
  store i32 %add183, ptr %z13, align 4
  %213 = load ptr, ptr %wsptr, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %213, i64 5
  %214 = load i32, ptr %arrayidx184, align 4
  %215 = load ptr, ptr %wsptr, align 8
  %arrayidx185 = getelementptr inbounds i32, ptr %215, i64 3
  %216 = load i32, ptr %arrayidx185, align 4
  %sub186 = sub nsw i32 %214, %216
  store i32 %sub186, ptr %z10, align 4
  %217 = load ptr, ptr %wsptr, align 8
  %arrayidx187 = getelementptr inbounds i32, ptr %217, i64 1
  %218 = load i32, ptr %arrayidx187, align 4
  %219 = load ptr, ptr %wsptr, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %219, i64 7
  %220 = load i32, ptr %arrayidx188, align 4
  %add189 = add nsw i32 %218, %220
  store i32 %add189, ptr %z11, align 4
  %221 = load ptr, ptr %wsptr, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %221, i64 1
  %222 = load i32, ptr %arrayidx190, align 4
  %223 = load ptr, ptr %wsptr, align 8
  %arrayidx191 = getelementptr inbounds i32, ptr %223, i64 7
  %224 = load i32, ptr %arrayidx191, align 4
  %sub192 = sub nsw i32 %222, %224
  store i32 %sub192, ptr %z12, align 4
  %225 = load i32, ptr %z11, align 4
  %226 = load i32, ptr %z13, align 4
  %add193 = add nsw i32 %225, %226
  store i32 %add193, ptr %tmp7, align 4
  %227 = load i32, ptr %z11, align 4
  %228 = load i32, ptr %z13, align 4
  %sub194 = sub nsw i32 %227, %228
  %conv195 = sext i32 %sub194 to i64
  %mul196 = mul nsw i64 %conv195, 362
  %shr197 = ashr i64 %mul196, 8
  %conv198 = trunc i64 %shr197 to i32
  store i32 %conv198, ptr %tmp11, align 4
  %229 = load i32, ptr %z10, align 4
  %230 = load i32, ptr %z12, align 4
  %add199 = add nsw i32 %229, %230
  %conv200 = sext i32 %add199 to i64
  %mul201 = mul nsw i64 %conv200, 473
  %shr202 = ashr i64 %mul201, 8
  %conv203 = trunc i64 %shr202 to i32
  store i32 %conv203, ptr %z5, align 4
  %231 = load i32, ptr %z12, align 4
  %conv204 = sext i32 %231 to i64
  %mul205 = mul nsw i64 %conv204, 277
  %shr206 = ashr i64 %mul205, 8
  %conv207 = trunc i64 %shr206 to i32
  %232 = load i32, ptr %z5, align 4
  %sub208 = sub nsw i32 %conv207, %232
  store i32 %sub208, ptr %tmp10, align 4
  %233 = load i32, ptr %z10, align 4
  %conv209 = sext i32 %233 to i64
  %mul210 = mul nsw i64 %conv209, -669
  %shr211 = ashr i64 %mul210, 8
  %conv212 = trunc i64 %shr211 to i32
  %234 = load i32, ptr %z5, align 4
  %add213 = add nsw i32 %conv212, %234
  store i32 %add213, ptr %tmp12, align 4
  %235 = load i32, ptr %tmp12, align 4
  %236 = load i32, ptr %tmp7, align 4
  %sub214 = sub nsw i32 %235, %236
  store i32 %sub214, ptr %tmp6, align 4
  %237 = load i32, ptr %tmp11, align 4
  %238 = load i32, ptr %tmp6, align 4
  %sub215 = sub nsw i32 %237, %238
  store i32 %sub215, ptr %tmp5, align 4
  %239 = load i32, ptr %tmp10, align 4
  %240 = load i32, ptr %tmp5, align 4
  %add216 = add nsw i32 %239, %240
  store i32 %add216, ptr %tmp4, align 4
  %241 = load ptr, ptr %range_limit, align 8
  %242 = load i32, ptr %tmp0, align 4
  %243 = load i32, ptr %tmp7, align 4
  %add217 = add nsw i32 %242, %243
  %shr218 = ashr i32 %add217, 5
  %and219 = and i32 %shr218, 1023
  %idxprom220 = sext i32 %and219 to i64
  %arrayidx221 = getelementptr inbounds i8, ptr %241, i64 %idxprom220
  %244 = load i8, ptr %arrayidx221, align 1
  %245 = load ptr, ptr %outptr, align 8
  %arrayidx222 = getelementptr inbounds i8, ptr %245, i64 0
  store i8 %244, ptr %arrayidx222, align 1
  %246 = load ptr, ptr %range_limit, align 8
  %247 = load i32, ptr %tmp0, align 4
  %248 = load i32, ptr %tmp7, align 4
  %sub223 = sub nsw i32 %247, %248
  %shr224 = ashr i32 %sub223, 5
  %and225 = and i32 %shr224, 1023
  %idxprom226 = sext i32 %and225 to i64
  %arrayidx227 = getelementptr inbounds i8, ptr %246, i64 %idxprom226
  %249 = load i8, ptr %arrayidx227, align 1
  %250 = load ptr, ptr %outptr, align 8
  %arrayidx228 = getelementptr inbounds i8, ptr %250, i64 7
  store i8 %249, ptr %arrayidx228, align 1
  %251 = load ptr, ptr %range_limit, align 8
  %252 = load i32, ptr %tmp1, align 4
  %253 = load i32, ptr %tmp6, align 4
  %add229 = add nsw i32 %252, %253
  %shr230 = ashr i32 %add229, 5
  %and231 = and i32 %shr230, 1023
  %idxprom232 = sext i32 %and231 to i64
  %arrayidx233 = getelementptr inbounds i8, ptr %251, i64 %idxprom232
  %254 = load i8, ptr %arrayidx233, align 1
  %255 = load ptr, ptr %outptr, align 8
  %arrayidx234 = getelementptr inbounds i8, ptr %255, i64 1
  store i8 %254, ptr %arrayidx234, align 1
  %256 = load ptr, ptr %range_limit, align 8
  %257 = load i32, ptr %tmp1, align 4
  %258 = load i32, ptr %tmp6, align 4
  %sub235 = sub nsw i32 %257, %258
  %shr236 = ashr i32 %sub235, 5
  %and237 = and i32 %shr236, 1023
  %idxprom238 = sext i32 %and237 to i64
  %arrayidx239 = getelementptr inbounds i8, ptr %256, i64 %idxprom238
  %259 = load i8, ptr %arrayidx239, align 1
  %260 = load ptr, ptr %outptr, align 8
  %arrayidx240 = getelementptr inbounds i8, ptr %260, i64 6
  store i8 %259, ptr %arrayidx240, align 1
  %261 = load ptr, ptr %range_limit, align 8
  %262 = load i32, ptr %tmp2, align 4
  %263 = load i32, ptr %tmp5, align 4
  %add241 = add nsw i32 %262, %263
  %shr242 = ashr i32 %add241, 5
  %and243 = and i32 %shr242, 1023
  %idxprom244 = sext i32 %and243 to i64
  %arrayidx245 = getelementptr inbounds i8, ptr %261, i64 %idxprom244
  %264 = load i8, ptr %arrayidx245, align 1
  %265 = load ptr, ptr %outptr, align 8
  %arrayidx246 = getelementptr inbounds i8, ptr %265, i64 2
  store i8 %264, ptr %arrayidx246, align 1
  %266 = load ptr, ptr %range_limit, align 8
  %267 = load i32, ptr %tmp2, align 4
  %268 = load i32, ptr %tmp5, align 4
  %sub247 = sub nsw i32 %267, %268
  %shr248 = ashr i32 %sub247, 5
  %and249 = and i32 %shr248, 1023
  %idxprom250 = sext i32 %and249 to i64
  %arrayidx251 = getelementptr inbounds i8, ptr %266, i64 %idxprom250
  %269 = load i8, ptr %arrayidx251, align 1
  %270 = load ptr, ptr %outptr, align 8
  %arrayidx252 = getelementptr inbounds i8, ptr %270, i64 5
  store i8 %269, ptr %arrayidx252, align 1
  %271 = load ptr, ptr %range_limit, align 8
  %272 = load i32, ptr %tmp3, align 4
  %273 = load i32, ptr %tmp4, align 4
  %add253 = add nsw i32 %272, %273
  %shr254 = ashr i32 %add253, 5
  %and255 = and i32 %shr254, 1023
  %idxprom256 = sext i32 %and255 to i64
  %arrayidx257 = getelementptr inbounds i8, ptr %271, i64 %idxprom256
  %274 = load i8, ptr %arrayidx257, align 1
  %275 = load ptr, ptr %outptr, align 8
  %arrayidx258 = getelementptr inbounds i8, ptr %275, i64 4
  store i8 %274, ptr %arrayidx258, align 1
  %276 = load ptr, ptr %range_limit, align 8
  %277 = load i32, ptr %tmp3, align 4
  %278 = load i32, ptr %tmp4, align 4
  %sub259 = sub nsw i32 %277, %278
  %shr260 = ashr i32 %sub259, 5
  %and261 = and i32 %shr260, 1023
  %idxprom262 = sext i32 %and261 to i64
  %arrayidx263 = getelementptr inbounds i8, ptr %276, i64 %idxprom262
  %279 = load i8, ptr %arrayidx263, align 1
  %280 = load ptr, ptr %outptr, align 8
  %arrayidx264 = getelementptr inbounds i8, ptr %280, i64 3
  store i8 %279, ptr %arrayidx264, align 1
  %281 = load ptr, ptr %wsptr, align 8
  %add.ptr265 = getelementptr inbounds i32, ptr %281, i64 8
  store ptr %add.ptr265, ptr %wsptr, align 8
  br label %for.inc266

for.inc266:                                       ; preds = %if.end159, %if.then144
  %282 = load i32, ptr %ctr, align 4
  %inc = add nsw i32 %282, 1
  store i32 %inc, ptr %ctr, align 4
  br label %for.cond123, !llvm.loop !8

for.end267:                                       ; preds = %for.cond123
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
