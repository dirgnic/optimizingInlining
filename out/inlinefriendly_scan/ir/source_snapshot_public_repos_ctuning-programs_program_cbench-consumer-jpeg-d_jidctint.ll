; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jidctint.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jidctint.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_idct_islow(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %z4 = alloca i64, align 8
  %z5 = alloca i64, align 8
  %inptr = alloca ptr, align 8
  %quantptr = alloca ptr, align 8
  %wsptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %range_limit = alloca ptr, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x i32], align 4
  %dcval = alloca i32, align 4
  %dcval174 = alloca i8, align 1
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
  %shl = shl i32 %mul, 2
  store i32 %shl, ptr %dcval, align 4
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
  %arrayidx33 = getelementptr inbounds i16, ptr %43, i64 16
  %44 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %44 to i32
  %45 = load ptr, ptr %quantptr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %45, i64 16
  %46 = load i32, ptr %arrayidx35, align 4
  %mul36 = mul nsw i32 %conv34, %46
  %conv37 = sext i32 %mul36 to i64
  store i64 %conv37, ptr %z2, align 8
  %47 = load ptr, ptr %inptr, align 8
  %arrayidx38 = getelementptr inbounds i16, ptr %47, i64 48
  %48 = load i16, ptr %arrayidx38, align 2
  %conv39 = sext i16 %48 to i32
  %49 = load ptr, ptr %quantptr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %49, i64 48
  %50 = load i32, ptr %arrayidx40, align 4
  %mul41 = mul nsw i32 %conv39, %50
  %conv42 = sext i32 %mul41 to i64
  store i64 %conv42, ptr %z3, align 8
  %51 = load i64, ptr %z2, align 8
  %52 = load i64, ptr %z3, align 8
  %add = add nsw i64 %51, %52
  %mul43 = mul nsw i64 %add, 4433
  store i64 %mul43, ptr %z1, align 8
  %53 = load i64, ptr %z1, align 8
  %54 = load i64, ptr %z3, align 8
  %mul44 = mul nsw i64 %54, -15137
  %add45 = add nsw i64 %53, %mul44
  store i64 %add45, ptr %tmp2, align 8
  %55 = load i64, ptr %z1, align 8
  %56 = load i64, ptr %z2, align 8
  %mul46 = mul nsw i64 %56, 6270
  %add47 = add nsw i64 %55, %mul46
  store i64 %add47, ptr %tmp3, align 8
  %57 = load ptr, ptr %inptr, align 8
  %arrayidx48 = getelementptr inbounds i16, ptr %57, i64 0
  %58 = load i16, ptr %arrayidx48, align 2
  %conv49 = sext i16 %58 to i32
  %59 = load ptr, ptr %quantptr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %59, i64 0
  %60 = load i32, ptr %arrayidx50, align 4
  %mul51 = mul nsw i32 %conv49, %60
  %conv52 = sext i32 %mul51 to i64
  store i64 %conv52, ptr %z2, align 8
  %61 = load ptr, ptr %inptr, align 8
  %arrayidx53 = getelementptr inbounds i16, ptr %61, i64 32
  %62 = load i16, ptr %arrayidx53, align 2
  %conv54 = sext i16 %62 to i32
  %63 = load ptr, ptr %quantptr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %63, i64 32
  %64 = load i32, ptr %arrayidx55, align 4
  %mul56 = mul nsw i32 %conv54, %64
  %conv57 = sext i32 %mul56 to i64
  store i64 %conv57, ptr %z3, align 8
  %65 = load i64, ptr %z2, align 8
  %66 = load i64, ptr %z3, align 8
  %add58 = add nsw i64 %65, %66
  %shl59 = shl i64 %add58, 13
  store i64 %shl59, ptr %tmp0, align 8
  %67 = load i64, ptr %z2, align 8
  %68 = load i64, ptr %z3, align 8
  %sub = sub nsw i64 %67, %68
  %shl60 = shl i64 %sub, 13
  store i64 %shl60, ptr %tmp1, align 8
  %69 = load i64, ptr %tmp0, align 8
  %70 = load i64, ptr %tmp3, align 8
  %add61 = add nsw i64 %69, %70
  store i64 %add61, ptr %tmp10, align 8
  %71 = load i64, ptr %tmp0, align 8
  %72 = load i64, ptr %tmp3, align 8
  %sub62 = sub nsw i64 %71, %72
  store i64 %sub62, ptr %tmp13, align 8
  %73 = load i64, ptr %tmp1, align 8
  %74 = load i64, ptr %tmp2, align 8
  %add63 = add nsw i64 %73, %74
  store i64 %add63, ptr %tmp11, align 8
  %75 = load i64, ptr %tmp1, align 8
  %76 = load i64, ptr %tmp2, align 8
  %sub64 = sub nsw i64 %75, %76
  store i64 %sub64, ptr %tmp12, align 8
  %77 = load ptr, ptr %inptr, align 8
  %arrayidx65 = getelementptr inbounds i16, ptr %77, i64 56
  %78 = load i16, ptr %arrayidx65, align 2
  %conv66 = sext i16 %78 to i32
  %79 = load ptr, ptr %quantptr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %79, i64 56
  %80 = load i32, ptr %arrayidx67, align 4
  %mul68 = mul nsw i32 %conv66, %80
  %conv69 = sext i32 %mul68 to i64
  store i64 %conv69, ptr %tmp0, align 8
  %81 = load ptr, ptr %inptr, align 8
  %arrayidx70 = getelementptr inbounds i16, ptr %81, i64 40
  %82 = load i16, ptr %arrayidx70, align 2
  %conv71 = sext i16 %82 to i32
  %83 = load ptr, ptr %quantptr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %83, i64 40
  %84 = load i32, ptr %arrayidx72, align 4
  %mul73 = mul nsw i32 %conv71, %84
  %conv74 = sext i32 %mul73 to i64
  store i64 %conv74, ptr %tmp1, align 8
  %85 = load ptr, ptr %inptr, align 8
  %arrayidx75 = getelementptr inbounds i16, ptr %85, i64 24
  %86 = load i16, ptr %arrayidx75, align 2
  %conv76 = sext i16 %86 to i32
  %87 = load ptr, ptr %quantptr, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %87, i64 24
  %88 = load i32, ptr %arrayidx77, align 4
  %mul78 = mul nsw i32 %conv76, %88
  %conv79 = sext i32 %mul78 to i64
  store i64 %conv79, ptr %tmp2, align 8
  %89 = load ptr, ptr %inptr, align 8
  %arrayidx80 = getelementptr inbounds i16, ptr %89, i64 8
  %90 = load i16, ptr %arrayidx80, align 2
  %conv81 = sext i16 %90 to i32
  %91 = load ptr, ptr %quantptr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %91, i64 8
  %92 = load i32, ptr %arrayidx82, align 4
  %mul83 = mul nsw i32 %conv81, %92
  %conv84 = sext i32 %mul83 to i64
  store i64 %conv84, ptr %tmp3, align 8
  %93 = load i64, ptr %tmp0, align 8
  %94 = load i64, ptr %tmp3, align 8
  %add85 = add nsw i64 %93, %94
  store i64 %add85, ptr %z1, align 8
  %95 = load i64, ptr %tmp1, align 8
  %96 = load i64, ptr %tmp2, align 8
  %add86 = add nsw i64 %95, %96
  store i64 %add86, ptr %z2, align 8
  %97 = load i64, ptr %tmp0, align 8
  %98 = load i64, ptr %tmp2, align 8
  %add87 = add nsw i64 %97, %98
  store i64 %add87, ptr %z3, align 8
  %99 = load i64, ptr %tmp1, align 8
  %100 = load i64, ptr %tmp3, align 8
  %add88 = add nsw i64 %99, %100
  store i64 %add88, ptr %z4, align 8
  %101 = load i64, ptr %z3, align 8
  %102 = load i64, ptr %z4, align 8
  %add89 = add nsw i64 %101, %102
  %mul90 = mul nsw i64 %add89, 9633
  store i64 %mul90, ptr %z5, align 8
  %103 = load i64, ptr %tmp0, align 8
  %mul91 = mul nsw i64 %103, 2446
  store i64 %mul91, ptr %tmp0, align 8
  %104 = load i64, ptr %tmp1, align 8
  %mul92 = mul nsw i64 %104, 16819
  store i64 %mul92, ptr %tmp1, align 8
  %105 = load i64, ptr %tmp2, align 8
  %mul93 = mul nsw i64 %105, 25172
  store i64 %mul93, ptr %tmp2, align 8
  %106 = load i64, ptr %tmp3, align 8
  %mul94 = mul nsw i64 %106, 12299
  store i64 %mul94, ptr %tmp3, align 8
  %107 = load i64, ptr %z1, align 8
  %mul95 = mul nsw i64 %107, -7373
  store i64 %mul95, ptr %z1, align 8
  %108 = load i64, ptr %z2, align 8
  %mul96 = mul nsw i64 %108, -20995
  store i64 %mul96, ptr %z2, align 8
  %109 = load i64, ptr %z3, align 8
  %mul97 = mul nsw i64 %109, -16069
  store i64 %mul97, ptr %z3, align 8
  %110 = load i64, ptr %z4, align 8
  %mul98 = mul nsw i64 %110, -3196
  store i64 %mul98, ptr %z4, align 8
  %111 = load i64, ptr %z5, align 8
  %112 = load i64, ptr %z3, align 8
  %add99 = add nsw i64 %112, %111
  store i64 %add99, ptr %z3, align 8
  %113 = load i64, ptr %z5, align 8
  %114 = load i64, ptr %z4, align 8
  %add100 = add nsw i64 %114, %113
  store i64 %add100, ptr %z4, align 8
  %115 = load i64, ptr %z1, align 8
  %116 = load i64, ptr %z3, align 8
  %add101 = add nsw i64 %115, %116
  %117 = load i64, ptr %tmp0, align 8
  %add102 = add nsw i64 %117, %add101
  store i64 %add102, ptr %tmp0, align 8
  %118 = load i64, ptr %z2, align 8
  %119 = load i64, ptr %z4, align 8
  %add103 = add nsw i64 %118, %119
  %120 = load i64, ptr %tmp1, align 8
  %add104 = add nsw i64 %120, %add103
  store i64 %add104, ptr %tmp1, align 8
  %121 = load i64, ptr %z2, align 8
  %122 = load i64, ptr %z3, align 8
  %add105 = add nsw i64 %121, %122
  %123 = load i64, ptr %tmp2, align 8
  %add106 = add nsw i64 %123, %add105
  store i64 %add106, ptr %tmp2, align 8
  %124 = load i64, ptr %z1, align 8
  %125 = load i64, ptr %z4, align 8
  %add107 = add nsw i64 %124, %125
  %126 = load i64, ptr %tmp3, align 8
  %add108 = add nsw i64 %126, %add107
  store i64 %add108, ptr %tmp3, align 8
  %127 = load i64, ptr %tmp10, align 8
  %128 = load i64, ptr %tmp3, align 8
  %add109 = add nsw i64 %127, %128
  %add110 = add nsw i64 %add109, 1024
  %shr = ashr i64 %add110, 11
  %conv111 = trunc i64 %shr to i32
  %129 = load ptr, ptr %wsptr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %129, i64 0
  store i32 %conv111, ptr %arrayidx112, align 4
  %130 = load i64, ptr %tmp10, align 8
  %131 = load i64, ptr %tmp3, align 8
  %sub113 = sub nsw i64 %130, %131
  %add114 = add nsw i64 %sub113, 1024
  %shr115 = ashr i64 %add114, 11
  %conv116 = trunc i64 %shr115 to i32
  %132 = load ptr, ptr %wsptr, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %132, i64 56
  store i32 %conv116, ptr %arrayidx117, align 4
  %133 = load i64, ptr %tmp11, align 8
  %134 = load i64, ptr %tmp2, align 8
  %add118 = add nsw i64 %133, %134
  %add119 = add nsw i64 %add118, 1024
  %shr120 = ashr i64 %add119, 11
  %conv121 = trunc i64 %shr120 to i32
  %135 = load ptr, ptr %wsptr, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %135, i64 8
  store i32 %conv121, ptr %arrayidx122, align 4
  %136 = load i64, ptr %tmp11, align 8
  %137 = load i64, ptr %tmp2, align 8
  %sub123 = sub nsw i64 %136, %137
  %add124 = add nsw i64 %sub123, 1024
  %shr125 = ashr i64 %add124, 11
  %conv126 = trunc i64 %shr125 to i32
  %138 = load ptr, ptr %wsptr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %138, i64 48
  store i32 %conv126, ptr %arrayidx127, align 4
  %139 = load i64, ptr %tmp12, align 8
  %140 = load i64, ptr %tmp1, align 8
  %add128 = add nsw i64 %139, %140
  %add129 = add nsw i64 %add128, 1024
  %shr130 = ashr i64 %add129, 11
  %conv131 = trunc i64 %shr130 to i32
  %141 = load ptr, ptr %wsptr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %141, i64 16
  store i32 %conv131, ptr %arrayidx132, align 4
  %142 = load i64, ptr %tmp12, align 8
  %143 = load i64, ptr %tmp1, align 8
  %sub133 = sub nsw i64 %142, %143
  %add134 = add nsw i64 %sub133, 1024
  %shr135 = ashr i64 %add134, 11
  %conv136 = trunc i64 %shr135 to i32
  %144 = load ptr, ptr %wsptr, align 8
  %arrayidx137 = getelementptr inbounds i32, ptr %144, i64 40
  store i32 %conv136, ptr %arrayidx137, align 4
  %145 = load i64, ptr %tmp13, align 8
  %146 = load i64, ptr %tmp0, align 8
  %add138 = add nsw i64 %145, %146
  %add139 = add nsw i64 %add138, 1024
  %shr140 = ashr i64 %add139, 11
  %conv141 = trunc i64 %shr140 to i32
  %147 = load ptr, ptr %wsptr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %147, i64 24
  store i32 %conv141, ptr %arrayidx142, align 4
  %148 = load i64, ptr %tmp13, align 8
  %149 = load i64, ptr %tmp0, align 8
  %sub143 = sub nsw i64 %148, %149
  %add144 = add nsw i64 %sub143, 1024
  %shr145 = ashr i64 %add144, 11
  %conv146 = trunc i64 %shr145 to i32
  %150 = load ptr, ptr %wsptr, align 8
  %arrayidx147 = getelementptr inbounds i32, ptr %150, i64 32
  store i32 %conv146, ptr %arrayidx147, align 4
  %151 = load ptr, ptr %inptr, align 8
  %incdec.ptr148 = getelementptr inbounds i16, ptr %151, i32 1
  store ptr %incdec.ptr148, ptr %inptr, align 8
  %152 = load ptr, ptr %quantptr, align 8
  %incdec.ptr149 = getelementptr inbounds i32, ptr %152, i32 1
  store ptr %incdec.ptr149, ptr %quantptr, align 8
  %153 = load ptr, ptr %wsptr, align 8
  %incdec.ptr150 = getelementptr inbounds i32, ptr %153, i32 1
  store ptr %incdec.ptr150, ptr %wsptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %154 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %154, -1
  store i32 %dec, ptr %ctr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay151 = getelementptr inbounds [64 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay151, ptr %wsptr, align 8
  store i32 0, ptr %ctr, align 4
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc315, %for.end
  %155 = load i32, ptr %ctr, align 4
  %cmp153 = icmp slt i32 %155, 8
  br i1 %cmp153, label %for.body155, label %for.end316

for.body155:                                      ; preds = %for.cond152
  %156 = load ptr, ptr %output_buf.addr, align 8
  %157 = load i32, ptr %ctr, align 4
  %idxprom = sext i32 %157 to i64
  %arrayidx156 = getelementptr inbounds ptr, ptr %156, i64 %idxprom
  %158 = load ptr, ptr %arrayidx156, align 8
  %159 = load i32, ptr %output_col.addr, align 4
  %idx.ext = zext i32 %159 to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %158, i64 %idx.ext
  store ptr %add.ptr157, ptr %outptr, align 8
  %160 = load ptr, ptr %wsptr, align 8
  %arrayidx158 = getelementptr inbounds i32, ptr %160, i64 1
  %161 = load i32, ptr %arrayidx158, align 4
  %162 = load ptr, ptr %wsptr, align 8
  %arrayidx159 = getelementptr inbounds i32, ptr %162, i64 2
  %163 = load i32, ptr %arrayidx159, align 4
  %or160 = or i32 %161, %163
  %164 = load ptr, ptr %wsptr, align 8
  %arrayidx161 = getelementptr inbounds i32, ptr %164, i64 3
  %165 = load i32, ptr %arrayidx161, align 4
  %or162 = or i32 %or160, %165
  %166 = load ptr, ptr %wsptr, align 8
  %arrayidx163 = getelementptr inbounds i32, ptr %166, i64 4
  %167 = load i32, ptr %arrayidx163, align 4
  %or164 = or i32 %or162, %167
  %168 = load ptr, ptr %wsptr, align 8
  %arrayidx165 = getelementptr inbounds i32, ptr %168, i64 5
  %169 = load i32, ptr %arrayidx165, align 4
  %or166 = or i32 %or164, %169
  %170 = load ptr, ptr %wsptr, align 8
  %arrayidx167 = getelementptr inbounds i32, ptr %170, i64 6
  %171 = load i32, ptr %arrayidx167, align 4
  %or168 = or i32 %or166, %171
  %172 = load ptr, ptr %wsptr, align 8
  %arrayidx169 = getelementptr inbounds i32, ptr %172, i64 7
  %173 = load i32, ptr %arrayidx169, align 4
  %or170 = or i32 %or168, %173
  %cmp171 = icmp eq i32 %or170, 0
  br i1 %cmp171, label %if.then173, label %if.end191

if.then173:                                       ; preds = %for.body155
  %174 = load ptr, ptr %range_limit, align 8
  %175 = load ptr, ptr %wsptr, align 8
  %arrayidx175 = getelementptr inbounds i32, ptr %175, i64 0
  %176 = load i32, ptr %arrayidx175, align 4
  %conv176 = sext i32 %176 to i64
  %add177 = add nsw i64 %conv176, 16
  %shr178 = ashr i64 %add177, 5
  %conv179 = trunc i64 %shr178 to i32
  %and = and i32 %conv179, 1023
  %idxprom180 = sext i32 %and to i64
  %arrayidx181 = getelementptr inbounds i8, ptr %174, i64 %idxprom180
  %177 = load i8, ptr %arrayidx181, align 1
  store i8 %177, ptr %dcval174, align 1
  %178 = load i8, ptr %dcval174, align 1
  %179 = load ptr, ptr %outptr, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %179, i64 0
  store i8 %178, ptr %arrayidx182, align 1
  %180 = load i8, ptr %dcval174, align 1
  %181 = load ptr, ptr %outptr, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %181, i64 1
  store i8 %180, ptr %arrayidx183, align 1
  %182 = load i8, ptr %dcval174, align 1
  %183 = load ptr, ptr %outptr, align 8
  %arrayidx184 = getelementptr inbounds i8, ptr %183, i64 2
  store i8 %182, ptr %arrayidx184, align 1
  %184 = load i8, ptr %dcval174, align 1
  %185 = load ptr, ptr %outptr, align 8
  %arrayidx185 = getelementptr inbounds i8, ptr %185, i64 3
  store i8 %184, ptr %arrayidx185, align 1
  %186 = load i8, ptr %dcval174, align 1
  %187 = load ptr, ptr %outptr, align 8
  %arrayidx186 = getelementptr inbounds i8, ptr %187, i64 4
  store i8 %186, ptr %arrayidx186, align 1
  %188 = load i8, ptr %dcval174, align 1
  %189 = load ptr, ptr %outptr, align 8
  %arrayidx187 = getelementptr inbounds i8, ptr %189, i64 5
  store i8 %188, ptr %arrayidx187, align 1
  %190 = load i8, ptr %dcval174, align 1
  %191 = load ptr, ptr %outptr, align 8
  %arrayidx188 = getelementptr inbounds i8, ptr %191, i64 6
  store i8 %190, ptr %arrayidx188, align 1
  %192 = load i8, ptr %dcval174, align 1
  %193 = load ptr, ptr %outptr, align 8
  %arrayidx189 = getelementptr inbounds i8, ptr %193, i64 7
  store i8 %192, ptr %arrayidx189, align 1
  %194 = load ptr, ptr %wsptr, align 8
  %add.ptr190 = getelementptr inbounds i32, ptr %194, i64 8
  store ptr %add.ptr190, ptr %wsptr, align 8
  br label %for.inc315

if.end191:                                        ; preds = %for.body155
  %195 = load ptr, ptr %wsptr, align 8
  %arrayidx192 = getelementptr inbounds i32, ptr %195, i64 2
  %196 = load i32, ptr %arrayidx192, align 4
  %conv193 = sext i32 %196 to i64
  store i64 %conv193, ptr %z2, align 8
  %197 = load ptr, ptr %wsptr, align 8
  %arrayidx194 = getelementptr inbounds i32, ptr %197, i64 6
  %198 = load i32, ptr %arrayidx194, align 4
  %conv195 = sext i32 %198 to i64
  store i64 %conv195, ptr %z3, align 8
  %199 = load i64, ptr %z2, align 8
  %200 = load i64, ptr %z3, align 8
  %add196 = add nsw i64 %199, %200
  %mul197 = mul nsw i64 %add196, 4433
  store i64 %mul197, ptr %z1, align 8
  %201 = load i64, ptr %z1, align 8
  %202 = load i64, ptr %z3, align 8
  %mul198 = mul nsw i64 %202, -15137
  %add199 = add nsw i64 %201, %mul198
  store i64 %add199, ptr %tmp2, align 8
  %203 = load i64, ptr %z1, align 8
  %204 = load i64, ptr %z2, align 8
  %mul200 = mul nsw i64 %204, 6270
  %add201 = add nsw i64 %203, %mul200
  store i64 %add201, ptr %tmp3, align 8
  %205 = load ptr, ptr %wsptr, align 8
  %arrayidx202 = getelementptr inbounds i32, ptr %205, i64 0
  %206 = load i32, ptr %arrayidx202, align 4
  %conv203 = sext i32 %206 to i64
  %207 = load ptr, ptr %wsptr, align 8
  %arrayidx204 = getelementptr inbounds i32, ptr %207, i64 4
  %208 = load i32, ptr %arrayidx204, align 4
  %conv205 = sext i32 %208 to i64
  %add206 = add nsw i64 %conv203, %conv205
  %shl207 = shl i64 %add206, 13
  store i64 %shl207, ptr %tmp0, align 8
  %209 = load ptr, ptr %wsptr, align 8
  %arrayidx208 = getelementptr inbounds i32, ptr %209, i64 0
  %210 = load i32, ptr %arrayidx208, align 4
  %conv209 = sext i32 %210 to i64
  %211 = load ptr, ptr %wsptr, align 8
  %arrayidx210 = getelementptr inbounds i32, ptr %211, i64 4
  %212 = load i32, ptr %arrayidx210, align 4
  %conv211 = sext i32 %212 to i64
  %sub212 = sub nsw i64 %conv209, %conv211
  %shl213 = shl i64 %sub212, 13
  store i64 %shl213, ptr %tmp1, align 8
  %213 = load i64, ptr %tmp0, align 8
  %214 = load i64, ptr %tmp3, align 8
  %add214 = add nsw i64 %213, %214
  store i64 %add214, ptr %tmp10, align 8
  %215 = load i64, ptr %tmp0, align 8
  %216 = load i64, ptr %tmp3, align 8
  %sub215 = sub nsw i64 %215, %216
  store i64 %sub215, ptr %tmp13, align 8
  %217 = load i64, ptr %tmp1, align 8
  %218 = load i64, ptr %tmp2, align 8
  %add216 = add nsw i64 %217, %218
  store i64 %add216, ptr %tmp11, align 8
  %219 = load i64, ptr %tmp1, align 8
  %220 = load i64, ptr %tmp2, align 8
  %sub217 = sub nsw i64 %219, %220
  store i64 %sub217, ptr %tmp12, align 8
  %221 = load ptr, ptr %wsptr, align 8
  %arrayidx218 = getelementptr inbounds i32, ptr %221, i64 7
  %222 = load i32, ptr %arrayidx218, align 4
  %conv219 = sext i32 %222 to i64
  store i64 %conv219, ptr %tmp0, align 8
  %223 = load ptr, ptr %wsptr, align 8
  %arrayidx220 = getelementptr inbounds i32, ptr %223, i64 5
  %224 = load i32, ptr %arrayidx220, align 4
  %conv221 = sext i32 %224 to i64
  store i64 %conv221, ptr %tmp1, align 8
  %225 = load ptr, ptr %wsptr, align 8
  %arrayidx222 = getelementptr inbounds i32, ptr %225, i64 3
  %226 = load i32, ptr %arrayidx222, align 4
  %conv223 = sext i32 %226 to i64
  store i64 %conv223, ptr %tmp2, align 8
  %227 = load ptr, ptr %wsptr, align 8
  %arrayidx224 = getelementptr inbounds i32, ptr %227, i64 1
  %228 = load i32, ptr %arrayidx224, align 4
  %conv225 = sext i32 %228 to i64
  store i64 %conv225, ptr %tmp3, align 8
  %229 = load i64, ptr %tmp0, align 8
  %230 = load i64, ptr %tmp3, align 8
  %add226 = add nsw i64 %229, %230
  store i64 %add226, ptr %z1, align 8
  %231 = load i64, ptr %tmp1, align 8
  %232 = load i64, ptr %tmp2, align 8
  %add227 = add nsw i64 %231, %232
  store i64 %add227, ptr %z2, align 8
  %233 = load i64, ptr %tmp0, align 8
  %234 = load i64, ptr %tmp2, align 8
  %add228 = add nsw i64 %233, %234
  store i64 %add228, ptr %z3, align 8
  %235 = load i64, ptr %tmp1, align 8
  %236 = load i64, ptr %tmp3, align 8
  %add229 = add nsw i64 %235, %236
  store i64 %add229, ptr %z4, align 8
  %237 = load i64, ptr %z3, align 8
  %238 = load i64, ptr %z4, align 8
  %add230 = add nsw i64 %237, %238
  %mul231 = mul nsw i64 %add230, 9633
  store i64 %mul231, ptr %z5, align 8
  %239 = load i64, ptr %tmp0, align 8
  %mul232 = mul nsw i64 %239, 2446
  store i64 %mul232, ptr %tmp0, align 8
  %240 = load i64, ptr %tmp1, align 8
  %mul233 = mul nsw i64 %240, 16819
  store i64 %mul233, ptr %tmp1, align 8
  %241 = load i64, ptr %tmp2, align 8
  %mul234 = mul nsw i64 %241, 25172
  store i64 %mul234, ptr %tmp2, align 8
  %242 = load i64, ptr %tmp3, align 8
  %mul235 = mul nsw i64 %242, 12299
  store i64 %mul235, ptr %tmp3, align 8
  %243 = load i64, ptr %z1, align 8
  %mul236 = mul nsw i64 %243, -7373
  store i64 %mul236, ptr %z1, align 8
  %244 = load i64, ptr %z2, align 8
  %mul237 = mul nsw i64 %244, -20995
  store i64 %mul237, ptr %z2, align 8
  %245 = load i64, ptr %z3, align 8
  %mul238 = mul nsw i64 %245, -16069
  store i64 %mul238, ptr %z3, align 8
  %246 = load i64, ptr %z4, align 8
  %mul239 = mul nsw i64 %246, -3196
  store i64 %mul239, ptr %z4, align 8
  %247 = load i64, ptr %z5, align 8
  %248 = load i64, ptr %z3, align 8
  %add240 = add nsw i64 %248, %247
  store i64 %add240, ptr %z3, align 8
  %249 = load i64, ptr %z5, align 8
  %250 = load i64, ptr %z4, align 8
  %add241 = add nsw i64 %250, %249
  store i64 %add241, ptr %z4, align 8
  %251 = load i64, ptr %z1, align 8
  %252 = load i64, ptr %z3, align 8
  %add242 = add nsw i64 %251, %252
  %253 = load i64, ptr %tmp0, align 8
  %add243 = add nsw i64 %253, %add242
  store i64 %add243, ptr %tmp0, align 8
  %254 = load i64, ptr %z2, align 8
  %255 = load i64, ptr %z4, align 8
  %add244 = add nsw i64 %254, %255
  %256 = load i64, ptr %tmp1, align 8
  %add245 = add nsw i64 %256, %add244
  store i64 %add245, ptr %tmp1, align 8
  %257 = load i64, ptr %z2, align 8
  %258 = load i64, ptr %z3, align 8
  %add246 = add nsw i64 %257, %258
  %259 = load i64, ptr %tmp2, align 8
  %add247 = add nsw i64 %259, %add246
  store i64 %add247, ptr %tmp2, align 8
  %260 = load i64, ptr %z1, align 8
  %261 = load i64, ptr %z4, align 8
  %add248 = add nsw i64 %260, %261
  %262 = load i64, ptr %tmp3, align 8
  %add249 = add nsw i64 %262, %add248
  store i64 %add249, ptr %tmp3, align 8
  %263 = load ptr, ptr %range_limit, align 8
  %264 = load i64, ptr %tmp10, align 8
  %265 = load i64, ptr %tmp3, align 8
  %add250 = add nsw i64 %264, %265
  %add251 = add nsw i64 %add250, 131072
  %shr252 = ashr i64 %add251, 18
  %conv253 = trunc i64 %shr252 to i32
  %and254 = and i32 %conv253, 1023
  %idxprom255 = sext i32 %and254 to i64
  %arrayidx256 = getelementptr inbounds i8, ptr %263, i64 %idxprom255
  %266 = load i8, ptr %arrayidx256, align 1
  %267 = load ptr, ptr %outptr, align 8
  %arrayidx257 = getelementptr inbounds i8, ptr %267, i64 0
  store i8 %266, ptr %arrayidx257, align 1
  %268 = load ptr, ptr %range_limit, align 8
  %269 = load i64, ptr %tmp10, align 8
  %270 = load i64, ptr %tmp3, align 8
  %sub258 = sub nsw i64 %269, %270
  %add259 = add nsw i64 %sub258, 131072
  %shr260 = ashr i64 %add259, 18
  %conv261 = trunc i64 %shr260 to i32
  %and262 = and i32 %conv261, 1023
  %idxprom263 = sext i32 %and262 to i64
  %arrayidx264 = getelementptr inbounds i8, ptr %268, i64 %idxprom263
  %271 = load i8, ptr %arrayidx264, align 1
  %272 = load ptr, ptr %outptr, align 8
  %arrayidx265 = getelementptr inbounds i8, ptr %272, i64 7
  store i8 %271, ptr %arrayidx265, align 1
  %273 = load ptr, ptr %range_limit, align 8
  %274 = load i64, ptr %tmp11, align 8
  %275 = load i64, ptr %tmp2, align 8
  %add266 = add nsw i64 %274, %275
  %add267 = add nsw i64 %add266, 131072
  %shr268 = ashr i64 %add267, 18
  %conv269 = trunc i64 %shr268 to i32
  %and270 = and i32 %conv269, 1023
  %idxprom271 = sext i32 %and270 to i64
  %arrayidx272 = getelementptr inbounds i8, ptr %273, i64 %idxprom271
  %276 = load i8, ptr %arrayidx272, align 1
  %277 = load ptr, ptr %outptr, align 8
  %arrayidx273 = getelementptr inbounds i8, ptr %277, i64 1
  store i8 %276, ptr %arrayidx273, align 1
  %278 = load ptr, ptr %range_limit, align 8
  %279 = load i64, ptr %tmp11, align 8
  %280 = load i64, ptr %tmp2, align 8
  %sub274 = sub nsw i64 %279, %280
  %add275 = add nsw i64 %sub274, 131072
  %shr276 = ashr i64 %add275, 18
  %conv277 = trunc i64 %shr276 to i32
  %and278 = and i32 %conv277, 1023
  %idxprom279 = sext i32 %and278 to i64
  %arrayidx280 = getelementptr inbounds i8, ptr %278, i64 %idxprom279
  %281 = load i8, ptr %arrayidx280, align 1
  %282 = load ptr, ptr %outptr, align 8
  %arrayidx281 = getelementptr inbounds i8, ptr %282, i64 6
  store i8 %281, ptr %arrayidx281, align 1
  %283 = load ptr, ptr %range_limit, align 8
  %284 = load i64, ptr %tmp12, align 8
  %285 = load i64, ptr %tmp1, align 8
  %add282 = add nsw i64 %284, %285
  %add283 = add nsw i64 %add282, 131072
  %shr284 = ashr i64 %add283, 18
  %conv285 = trunc i64 %shr284 to i32
  %and286 = and i32 %conv285, 1023
  %idxprom287 = sext i32 %and286 to i64
  %arrayidx288 = getelementptr inbounds i8, ptr %283, i64 %idxprom287
  %286 = load i8, ptr %arrayidx288, align 1
  %287 = load ptr, ptr %outptr, align 8
  %arrayidx289 = getelementptr inbounds i8, ptr %287, i64 2
  store i8 %286, ptr %arrayidx289, align 1
  %288 = load ptr, ptr %range_limit, align 8
  %289 = load i64, ptr %tmp12, align 8
  %290 = load i64, ptr %tmp1, align 8
  %sub290 = sub nsw i64 %289, %290
  %add291 = add nsw i64 %sub290, 131072
  %shr292 = ashr i64 %add291, 18
  %conv293 = trunc i64 %shr292 to i32
  %and294 = and i32 %conv293, 1023
  %idxprom295 = sext i32 %and294 to i64
  %arrayidx296 = getelementptr inbounds i8, ptr %288, i64 %idxprom295
  %291 = load i8, ptr %arrayidx296, align 1
  %292 = load ptr, ptr %outptr, align 8
  %arrayidx297 = getelementptr inbounds i8, ptr %292, i64 5
  store i8 %291, ptr %arrayidx297, align 1
  %293 = load ptr, ptr %range_limit, align 8
  %294 = load i64, ptr %tmp13, align 8
  %295 = load i64, ptr %tmp0, align 8
  %add298 = add nsw i64 %294, %295
  %add299 = add nsw i64 %add298, 131072
  %shr300 = ashr i64 %add299, 18
  %conv301 = trunc i64 %shr300 to i32
  %and302 = and i32 %conv301, 1023
  %idxprom303 = sext i32 %and302 to i64
  %arrayidx304 = getelementptr inbounds i8, ptr %293, i64 %idxprom303
  %296 = load i8, ptr %arrayidx304, align 1
  %297 = load ptr, ptr %outptr, align 8
  %arrayidx305 = getelementptr inbounds i8, ptr %297, i64 3
  store i8 %296, ptr %arrayidx305, align 1
  %298 = load ptr, ptr %range_limit, align 8
  %299 = load i64, ptr %tmp13, align 8
  %300 = load i64, ptr %tmp0, align 8
  %sub306 = sub nsw i64 %299, %300
  %add307 = add nsw i64 %sub306, 131072
  %shr308 = ashr i64 %add307, 18
  %conv309 = trunc i64 %shr308 to i32
  %and310 = and i32 %conv309, 1023
  %idxprom311 = sext i32 %and310 to i64
  %arrayidx312 = getelementptr inbounds i8, ptr %298, i64 %idxprom311
  %301 = load i8, ptr %arrayidx312, align 1
  %302 = load ptr, ptr %outptr, align 8
  %arrayidx313 = getelementptr inbounds i8, ptr %302, i64 4
  store i8 %301, ptr %arrayidx313, align 1
  %303 = load ptr, ptr %wsptr, align 8
  %add.ptr314 = getelementptr inbounds i32, ptr %303, i64 8
  store ptr %add.ptr314, ptr %wsptr, align 8
  br label %for.inc315

for.inc315:                                       ; preds = %if.end191, %if.then173
  %304 = load i32, ptr %ctr, align 4
  %inc = add nsw i32 %304, 1
  store i32 %inc, ptr %ctr, align 4
  br label %for.cond152, !llvm.loop !8

for.end316:                                       ; preds = %for.cond152
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
