; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jidctflt.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jidctflt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_idct_float(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca float, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %tmp3 = alloca float, align 4
  %tmp4 = alloca float, align 4
  %tmp5 = alloca float, align 4
  %tmp6 = alloca float, align 4
  %tmp7 = alloca float, align 4
  %tmp10 = alloca float, align 4
  %tmp11 = alloca float, align 4
  %tmp12 = alloca float, align 4
  %tmp13 = alloca float, align 4
  %z5 = alloca float, align 4
  %z10 = alloca float, align 4
  %z11 = alloca float, align 4
  %z12 = alloca float, align 4
  %z13 = alloca float, align 4
  %inptr = alloca ptr, align 8
  %quantptr = alloca ptr, align 8
  %wsptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %range_limit = alloca ptr, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x float], align 4
  %dcval = alloca float, align 4
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
  %arraydecay = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 0
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
  %conv21 = sitofp i16 %21 to float
  %22 = load ptr, ptr %quantptr, align 8
  %arrayidx22 = getelementptr inbounds float, ptr %22, i64 0
  %23 = load float, ptr %arrayidx22, align 4
  %mul = fmul float %conv21, %23
  store float %mul, ptr %dcval, align 4
  %24 = load float, ptr %dcval, align 4
  %25 = load ptr, ptr %wsptr, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %25, i64 0
  store float %24, ptr %arrayidx23, align 4
  %26 = load float, ptr %dcval, align 4
  %27 = load ptr, ptr %wsptr, align 8
  %arrayidx24 = getelementptr inbounds float, ptr %27, i64 8
  store float %26, ptr %arrayidx24, align 4
  %28 = load float, ptr %dcval, align 4
  %29 = load ptr, ptr %wsptr, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %29, i64 16
  store float %28, ptr %arrayidx25, align 4
  %30 = load float, ptr %dcval, align 4
  %31 = load ptr, ptr %wsptr, align 8
  %arrayidx26 = getelementptr inbounds float, ptr %31, i64 24
  store float %30, ptr %arrayidx26, align 4
  %32 = load float, ptr %dcval, align 4
  %33 = load ptr, ptr %wsptr, align 8
  %arrayidx27 = getelementptr inbounds float, ptr %33, i64 32
  store float %32, ptr %arrayidx27, align 4
  %34 = load float, ptr %dcval, align 4
  %35 = load ptr, ptr %wsptr, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %35, i64 40
  store float %34, ptr %arrayidx28, align 4
  %36 = load float, ptr %dcval, align 4
  %37 = load ptr, ptr %wsptr, align 8
  %arrayidx29 = getelementptr inbounds float, ptr %37, i64 48
  store float %36, ptr %arrayidx29, align 4
  %38 = load float, ptr %dcval, align 4
  %39 = load ptr, ptr %wsptr, align 8
  %arrayidx30 = getelementptr inbounds float, ptr %39, i64 56
  store float %38, ptr %arrayidx30, align 4
  %40 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %41 = load ptr, ptr %quantptr, align 8
  %incdec.ptr31 = getelementptr inbounds float, ptr %41, i32 1
  store ptr %incdec.ptr31, ptr %quantptr, align 8
  %42 = load ptr, ptr %wsptr, align 8
  %incdec.ptr32 = getelementptr inbounds float, ptr %42, i32 1
  store ptr %incdec.ptr32, ptr %wsptr, align 8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %43 = load ptr, ptr %inptr, align 8
  %arrayidx33 = getelementptr inbounds i16, ptr %43, i64 0
  %44 = load i16, ptr %arrayidx33, align 2
  %conv34 = sitofp i16 %44 to float
  %45 = load ptr, ptr %quantptr, align 8
  %arrayidx35 = getelementptr inbounds float, ptr %45, i64 0
  %46 = load float, ptr %arrayidx35, align 4
  %mul36 = fmul float %conv34, %46
  store float %mul36, ptr %tmp0, align 4
  %47 = load ptr, ptr %inptr, align 8
  %arrayidx37 = getelementptr inbounds i16, ptr %47, i64 16
  %48 = load i16, ptr %arrayidx37, align 2
  %conv38 = sitofp i16 %48 to float
  %49 = load ptr, ptr %quantptr, align 8
  %arrayidx39 = getelementptr inbounds float, ptr %49, i64 16
  %50 = load float, ptr %arrayidx39, align 4
  %mul40 = fmul float %conv38, %50
  store float %mul40, ptr %tmp1, align 4
  %51 = load ptr, ptr %inptr, align 8
  %arrayidx41 = getelementptr inbounds i16, ptr %51, i64 32
  %52 = load i16, ptr %arrayidx41, align 2
  %conv42 = sitofp i16 %52 to float
  %53 = load ptr, ptr %quantptr, align 8
  %arrayidx43 = getelementptr inbounds float, ptr %53, i64 32
  %54 = load float, ptr %arrayidx43, align 4
  %mul44 = fmul float %conv42, %54
  store float %mul44, ptr %tmp2, align 4
  %55 = load ptr, ptr %inptr, align 8
  %arrayidx45 = getelementptr inbounds i16, ptr %55, i64 48
  %56 = load i16, ptr %arrayidx45, align 2
  %conv46 = sitofp i16 %56 to float
  %57 = load ptr, ptr %quantptr, align 8
  %arrayidx47 = getelementptr inbounds float, ptr %57, i64 48
  %58 = load float, ptr %arrayidx47, align 4
  %mul48 = fmul float %conv46, %58
  store float %mul48, ptr %tmp3, align 4
  %59 = load float, ptr %tmp0, align 4
  %60 = load float, ptr %tmp2, align 4
  %add = fadd float %59, %60
  store float %add, ptr %tmp10, align 4
  %61 = load float, ptr %tmp0, align 4
  %62 = load float, ptr %tmp2, align 4
  %sub = fsub float %61, %62
  store float %sub, ptr %tmp11, align 4
  %63 = load float, ptr %tmp1, align 4
  %64 = load float, ptr %tmp3, align 4
  %add49 = fadd float %63, %64
  store float %add49, ptr %tmp13, align 4
  %65 = load float, ptr %tmp1, align 4
  %66 = load float, ptr %tmp3, align 4
  %sub50 = fsub float %65, %66
  %67 = load float, ptr %tmp13, align 4
  %neg = fneg float %67
  %68 = call float @llvm.fmuladd.f32(float %sub50, float 0x3FF6A09E60000000, float %neg)
  store float %68, ptr %tmp12, align 4
  %69 = load float, ptr %tmp10, align 4
  %70 = load float, ptr %tmp13, align 4
  %add52 = fadd float %69, %70
  store float %add52, ptr %tmp0, align 4
  %71 = load float, ptr %tmp10, align 4
  %72 = load float, ptr %tmp13, align 4
  %sub53 = fsub float %71, %72
  store float %sub53, ptr %tmp3, align 4
  %73 = load float, ptr %tmp11, align 4
  %74 = load float, ptr %tmp12, align 4
  %add54 = fadd float %73, %74
  store float %add54, ptr %tmp1, align 4
  %75 = load float, ptr %tmp11, align 4
  %76 = load float, ptr %tmp12, align 4
  %sub55 = fsub float %75, %76
  store float %sub55, ptr %tmp2, align 4
  %77 = load ptr, ptr %inptr, align 8
  %arrayidx56 = getelementptr inbounds i16, ptr %77, i64 8
  %78 = load i16, ptr %arrayidx56, align 2
  %conv57 = sitofp i16 %78 to float
  %79 = load ptr, ptr %quantptr, align 8
  %arrayidx58 = getelementptr inbounds float, ptr %79, i64 8
  %80 = load float, ptr %arrayidx58, align 4
  %mul59 = fmul float %conv57, %80
  store float %mul59, ptr %tmp4, align 4
  %81 = load ptr, ptr %inptr, align 8
  %arrayidx60 = getelementptr inbounds i16, ptr %81, i64 24
  %82 = load i16, ptr %arrayidx60, align 2
  %conv61 = sitofp i16 %82 to float
  %83 = load ptr, ptr %quantptr, align 8
  %arrayidx62 = getelementptr inbounds float, ptr %83, i64 24
  %84 = load float, ptr %arrayidx62, align 4
  %mul63 = fmul float %conv61, %84
  store float %mul63, ptr %tmp5, align 4
  %85 = load ptr, ptr %inptr, align 8
  %arrayidx64 = getelementptr inbounds i16, ptr %85, i64 40
  %86 = load i16, ptr %arrayidx64, align 2
  %conv65 = sitofp i16 %86 to float
  %87 = load ptr, ptr %quantptr, align 8
  %arrayidx66 = getelementptr inbounds float, ptr %87, i64 40
  %88 = load float, ptr %arrayidx66, align 4
  %mul67 = fmul float %conv65, %88
  store float %mul67, ptr %tmp6, align 4
  %89 = load ptr, ptr %inptr, align 8
  %arrayidx68 = getelementptr inbounds i16, ptr %89, i64 56
  %90 = load i16, ptr %arrayidx68, align 2
  %conv69 = sitofp i16 %90 to float
  %91 = load ptr, ptr %quantptr, align 8
  %arrayidx70 = getelementptr inbounds float, ptr %91, i64 56
  %92 = load float, ptr %arrayidx70, align 4
  %mul71 = fmul float %conv69, %92
  store float %mul71, ptr %tmp7, align 4
  %93 = load float, ptr %tmp6, align 4
  %94 = load float, ptr %tmp5, align 4
  %add72 = fadd float %93, %94
  store float %add72, ptr %z13, align 4
  %95 = load float, ptr %tmp6, align 4
  %96 = load float, ptr %tmp5, align 4
  %sub73 = fsub float %95, %96
  store float %sub73, ptr %z10, align 4
  %97 = load float, ptr %tmp4, align 4
  %98 = load float, ptr %tmp7, align 4
  %add74 = fadd float %97, %98
  store float %add74, ptr %z11, align 4
  %99 = load float, ptr %tmp4, align 4
  %100 = load float, ptr %tmp7, align 4
  %sub75 = fsub float %99, %100
  store float %sub75, ptr %z12, align 4
  %101 = load float, ptr %z11, align 4
  %102 = load float, ptr %z13, align 4
  %add76 = fadd float %101, %102
  store float %add76, ptr %tmp7, align 4
  %103 = load float, ptr %z11, align 4
  %104 = load float, ptr %z13, align 4
  %sub77 = fsub float %103, %104
  %mul78 = fmul float %sub77, 0x3FF6A09E60000000
  store float %mul78, ptr %tmp11, align 4
  %105 = load float, ptr %z10, align 4
  %106 = load float, ptr %z12, align 4
  %add79 = fadd float %105, %106
  %mul80 = fmul float %add79, 0x3FFD906BC0000000
  store float %mul80, ptr %z5, align 4
  %107 = load float, ptr %z12, align 4
  %108 = load float, ptr %z5, align 4
  %neg82 = fneg float %108
  %109 = call float @llvm.fmuladd.f32(float 0x3FF1517A80000000, float %107, float %neg82)
  store float %109, ptr %tmp10, align 4
  %110 = load float, ptr %z10, align 4
  %111 = load float, ptr %z5, align 4
  %112 = call float @llvm.fmuladd.f32(float 0xC004E7AEA0000000, float %110, float %111)
  store float %112, ptr %tmp12, align 4
  %113 = load float, ptr %tmp12, align 4
  %114 = load float, ptr %tmp7, align 4
  %sub84 = fsub float %113, %114
  store float %sub84, ptr %tmp6, align 4
  %115 = load float, ptr %tmp11, align 4
  %116 = load float, ptr %tmp6, align 4
  %sub85 = fsub float %115, %116
  store float %sub85, ptr %tmp5, align 4
  %117 = load float, ptr %tmp10, align 4
  %118 = load float, ptr %tmp5, align 4
  %add86 = fadd float %117, %118
  store float %add86, ptr %tmp4, align 4
  %119 = load float, ptr %tmp0, align 4
  %120 = load float, ptr %tmp7, align 4
  %add87 = fadd float %119, %120
  %121 = load ptr, ptr %wsptr, align 8
  %arrayidx88 = getelementptr inbounds float, ptr %121, i64 0
  store float %add87, ptr %arrayidx88, align 4
  %122 = load float, ptr %tmp0, align 4
  %123 = load float, ptr %tmp7, align 4
  %sub89 = fsub float %122, %123
  %124 = load ptr, ptr %wsptr, align 8
  %arrayidx90 = getelementptr inbounds float, ptr %124, i64 56
  store float %sub89, ptr %arrayidx90, align 4
  %125 = load float, ptr %tmp1, align 4
  %126 = load float, ptr %tmp6, align 4
  %add91 = fadd float %125, %126
  %127 = load ptr, ptr %wsptr, align 8
  %arrayidx92 = getelementptr inbounds float, ptr %127, i64 8
  store float %add91, ptr %arrayidx92, align 4
  %128 = load float, ptr %tmp1, align 4
  %129 = load float, ptr %tmp6, align 4
  %sub93 = fsub float %128, %129
  %130 = load ptr, ptr %wsptr, align 8
  %arrayidx94 = getelementptr inbounds float, ptr %130, i64 48
  store float %sub93, ptr %arrayidx94, align 4
  %131 = load float, ptr %tmp2, align 4
  %132 = load float, ptr %tmp5, align 4
  %add95 = fadd float %131, %132
  %133 = load ptr, ptr %wsptr, align 8
  %arrayidx96 = getelementptr inbounds float, ptr %133, i64 16
  store float %add95, ptr %arrayidx96, align 4
  %134 = load float, ptr %tmp2, align 4
  %135 = load float, ptr %tmp5, align 4
  %sub97 = fsub float %134, %135
  %136 = load ptr, ptr %wsptr, align 8
  %arrayidx98 = getelementptr inbounds float, ptr %136, i64 40
  store float %sub97, ptr %arrayidx98, align 4
  %137 = load float, ptr %tmp3, align 4
  %138 = load float, ptr %tmp4, align 4
  %add99 = fadd float %137, %138
  %139 = load ptr, ptr %wsptr, align 8
  %arrayidx100 = getelementptr inbounds float, ptr %139, i64 32
  store float %add99, ptr %arrayidx100, align 4
  %140 = load float, ptr %tmp3, align 4
  %141 = load float, ptr %tmp4, align 4
  %sub101 = fsub float %140, %141
  %142 = load ptr, ptr %wsptr, align 8
  %arrayidx102 = getelementptr inbounds float, ptr %142, i64 24
  store float %sub101, ptr %arrayidx102, align 4
  %143 = load ptr, ptr %inptr, align 8
  %incdec.ptr103 = getelementptr inbounds i16, ptr %143, i32 1
  store ptr %incdec.ptr103, ptr %inptr, align 8
  %144 = load ptr, ptr %quantptr, align 8
  %incdec.ptr104 = getelementptr inbounds float, ptr %144, i32 1
  store ptr %incdec.ptr104, ptr %quantptr, align 8
  %145 = load ptr, ptr %wsptr, align 8
  %incdec.ptr105 = getelementptr inbounds float, ptr %145, i32 1
  store ptr %incdec.ptr105, ptr %wsptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %146 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %146, -1
  store i32 %dec, ptr %ctr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay106 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay106, ptr %wsptr, align 8
  store i32 0, ptr %ctr, align 4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc225, %for.end
  %147 = load i32, ptr %ctr, align 4
  %cmp108 = icmp slt i32 %147, 8
  br i1 %cmp108, label %for.body110, label %for.end226

for.body110:                                      ; preds = %for.cond107
  %148 = load ptr, ptr %output_buf.addr, align 8
  %149 = load i32, ptr %ctr, align 4
  %idxprom = sext i32 %149 to i64
  %arrayidx111 = getelementptr inbounds ptr, ptr %148, i64 %idxprom
  %150 = load ptr, ptr %arrayidx111, align 8
  %151 = load i32, ptr %output_col.addr, align 4
  %idx.ext = zext i32 %151 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %150, i64 %idx.ext
  store ptr %add.ptr112, ptr %outptr, align 8
  %152 = load ptr, ptr %wsptr, align 8
  %arrayidx113 = getelementptr inbounds float, ptr %152, i64 0
  %153 = load float, ptr %arrayidx113, align 4
  %154 = load ptr, ptr %wsptr, align 8
  %arrayidx114 = getelementptr inbounds float, ptr %154, i64 4
  %155 = load float, ptr %arrayidx114, align 4
  %add115 = fadd float %153, %155
  store float %add115, ptr %tmp10, align 4
  %156 = load ptr, ptr %wsptr, align 8
  %arrayidx116 = getelementptr inbounds float, ptr %156, i64 0
  %157 = load float, ptr %arrayidx116, align 4
  %158 = load ptr, ptr %wsptr, align 8
  %arrayidx117 = getelementptr inbounds float, ptr %158, i64 4
  %159 = load float, ptr %arrayidx117, align 4
  %sub118 = fsub float %157, %159
  store float %sub118, ptr %tmp11, align 4
  %160 = load ptr, ptr %wsptr, align 8
  %arrayidx119 = getelementptr inbounds float, ptr %160, i64 2
  %161 = load float, ptr %arrayidx119, align 4
  %162 = load ptr, ptr %wsptr, align 8
  %arrayidx120 = getelementptr inbounds float, ptr %162, i64 6
  %163 = load float, ptr %arrayidx120, align 4
  %add121 = fadd float %161, %163
  store float %add121, ptr %tmp13, align 4
  %164 = load ptr, ptr %wsptr, align 8
  %arrayidx122 = getelementptr inbounds float, ptr %164, i64 2
  %165 = load float, ptr %arrayidx122, align 4
  %166 = load ptr, ptr %wsptr, align 8
  %arrayidx123 = getelementptr inbounds float, ptr %166, i64 6
  %167 = load float, ptr %arrayidx123, align 4
  %sub124 = fsub float %165, %167
  %168 = load float, ptr %tmp13, align 4
  %neg126 = fneg float %168
  %169 = call float @llvm.fmuladd.f32(float %sub124, float 0x3FF6A09E60000000, float %neg126)
  store float %169, ptr %tmp12, align 4
  %170 = load float, ptr %tmp10, align 4
  %171 = load float, ptr %tmp13, align 4
  %add127 = fadd float %170, %171
  store float %add127, ptr %tmp0, align 4
  %172 = load float, ptr %tmp10, align 4
  %173 = load float, ptr %tmp13, align 4
  %sub128 = fsub float %172, %173
  store float %sub128, ptr %tmp3, align 4
  %174 = load float, ptr %tmp11, align 4
  %175 = load float, ptr %tmp12, align 4
  %add129 = fadd float %174, %175
  store float %add129, ptr %tmp1, align 4
  %176 = load float, ptr %tmp11, align 4
  %177 = load float, ptr %tmp12, align 4
  %sub130 = fsub float %176, %177
  store float %sub130, ptr %tmp2, align 4
  %178 = load ptr, ptr %wsptr, align 8
  %arrayidx131 = getelementptr inbounds float, ptr %178, i64 5
  %179 = load float, ptr %arrayidx131, align 4
  %180 = load ptr, ptr %wsptr, align 8
  %arrayidx132 = getelementptr inbounds float, ptr %180, i64 3
  %181 = load float, ptr %arrayidx132, align 4
  %add133 = fadd float %179, %181
  store float %add133, ptr %z13, align 4
  %182 = load ptr, ptr %wsptr, align 8
  %arrayidx134 = getelementptr inbounds float, ptr %182, i64 5
  %183 = load float, ptr %arrayidx134, align 4
  %184 = load ptr, ptr %wsptr, align 8
  %arrayidx135 = getelementptr inbounds float, ptr %184, i64 3
  %185 = load float, ptr %arrayidx135, align 4
  %sub136 = fsub float %183, %185
  store float %sub136, ptr %z10, align 4
  %186 = load ptr, ptr %wsptr, align 8
  %arrayidx137 = getelementptr inbounds float, ptr %186, i64 1
  %187 = load float, ptr %arrayidx137, align 4
  %188 = load ptr, ptr %wsptr, align 8
  %arrayidx138 = getelementptr inbounds float, ptr %188, i64 7
  %189 = load float, ptr %arrayidx138, align 4
  %add139 = fadd float %187, %189
  store float %add139, ptr %z11, align 4
  %190 = load ptr, ptr %wsptr, align 8
  %arrayidx140 = getelementptr inbounds float, ptr %190, i64 1
  %191 = load float, ptr %arrayidx140, align 4
  %192 = load ptr, ptr %wsptr, align 8
  %arrayidx141 = getelementptr inbounds float, ptr %192, i64 7
  %193 = load float, ptr %arrayidx141, align 4
  %sub142 = fsub float %191, %193
  store float %sub142, ptr %z12, align 4
  %194 = load float, ptr %z11, align 4
  %195 = load float, ptr %z13, align 4
  %add143 = fadd float %194, %195
  store float %add143, ptr %tmp7, align 4
  %196 = load float, ptr %z11, align 4
  %197 = load float, ptr %z13, align 4
  %sub144 = fsub float %196, %197
  %mul145 = fmul float %sub144, 0x3FF6A09E60000000
  store float %mul145, ptr %tmp11, align 4
  %198 = load float, ptr %z10, align 4
  %199 = load float, ptr %z12, align 4
  %add146 = fadd float %198, %199
  %mul147 = fmul float %add146, 0x3FFD906BC0000000
  store float %mul147, ptr %z5, align 4
  %200 = load float, ptr %z12, align 4
  %201 = load float, ptr %z5, align 4
  %neg149 = fneg float %201
  %202 = call float @llvm.fmuladd.f32(float 0x3FF1517A80000000, float %200, float %neg149)
  store float %202, ptr %tmp10, align 4
  %203 = load float, ptr %z10, align 4
  %204 = load float, ptr %z5, align 4
  %205 = call float @llvm.fmuladd.f32(float 0xC004E7AEA0000000, float %203, float %204)
  store float %205, ptr %tmp12, align 4
  %206 = load float, ptr %tmp12, align 4
  %207 = load float, ptr %tmp7, align 4
  %sub151 = fsub float %206, %207
  store float %sub151, ptr %tmp6, align 4
  %208 = load float, ptr %tmp11, align 4
  %209 = load float, ptr %tmp6, align 4
  %sub152 = fsub float %208, %209
  store float %sub152, ptr %tmp5, align 4
  %210 = load float, ptr %tmp10, align 4
  %211 = load float, ptr %tmp5, align 4
  %add153 = fadd float %210, %211
  store float %add153, ptr %tmp4, align 4
  %212 = load ptr, ptr %range_limit, align 8
  %213 = load float, ptr %tmp0, align 4
  %214 = load float, ptr %tmp7, align 4
  %add154 = fadd float %213, %214
  %conv155 = fptosi float %add154 to i64
  %add156 = add nsw i64 %conv155, 4
  %shr = ashr i64 %add156, 3
  %conv157 = trunc i64 %shr to i32
  %and = and i32 %conv157, 1023
  %idxprom158 = sext i32 %and to i64
  %arrayidx159 = getelementptr inbounds i8, ptr %212, i64 %idxprom158
  %215 = load i8, ptr %arrayidx159, align 1
  %216 = load ptr, ptr %outptr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %216, i64 0
  store i8 %215, ptr %arrayidx160, align 1
  %217 = load ptr, ptr %range_limit, align 8
  %218 = load float, ptr %tmp0, align 4
  %219 = load float, ptr %tmp7, align 4
  %sub161 = fsub float %218, %219
  %conv162 = fptosi float %sub161 to i64
  %add163 = add nsw i64 %conv162, 4
  %shr164 = ashr i64 %add163, 3
  %conv165 = trunc i64 %shr164 to i32
  %and166 = and i32 %conv165, 1023
  %idxprom167 = sext i32 %and166 to i64
  %arrayidx168 = getelementptr inbounds i8, ptr %217, i64 %idxprom167
  %220 = load i8, ptr %arrayidx168, align 1
  %221 = load ptr, ptr %outptr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %221, i64 7
  store i8 %220, ptr %arrayidx169, align 1
  %222 = load ptr, ptr %range_limit, align 8
  %223 = load float, ptr %tmp1, align 4
  %224 = load float, ptr %tmp6, align 4
  %add170 = fadd float %223, %224
  %conv171 = fptosi float %add170 to i64
  %add172 = add nsw i64 %conv171, 4
  %shr173 = ashr i64 %add172, 3
  %conv174 = trunc i64 %shr173 to i32
  %and175 = and i32 %conv174, 1023
  %idxprom176 = sext i32 %and175 to i64
  %arrayidx177 = getelementptr inbounds i8, ptr %222, i64 %idxprom176
  %225 = load i8, ptr %arrayidx177, align 1
  %226 = load ptr, ptr %outptr, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %226, i64 1
  store i8 %225, ptr %arrayidx178, align 1
  %227 = load ptr, ptr %range_limit, align 8
  %228 = load float, ptr %tmp1, align 4
  %229 = load float, ptr %tmp6, align 4
  %sub179 = fsub float %228, %229
  %conv180 = fptosi float %sub179 to i64
  %add181 = add nsw i64 %conv180, 4
  %shr182 = ashr i64 %add181, 3
  %conv183 = trunc i64 %shr182 to i32
  %and184 = and i32 %conv183, 1023
  %idxprom185 = sext i32 %and184 to i64
  %arrayidx186 = getelementptr inbounds i8, ptr %227, i64 %idxprom185
  %230 = load i8, ptr %arrayidx186, align 1
  %231 = load ptr, ptr %outptr, align 8
  %arrayidx187 = getelementptr inbounds i8, ptr %231, i64 6
  store i8 %230, ptr %arrayidx187, align 1
  %232 = load ptr, ptr %range_limit, align 8
  %233 = load float, ptr %tmp2, align 4
  %234 = load float, ptr %tmp5, align 4
  %add188 = fadd float %233, %234
  %conv189 = fptosi float %add188 to i64
  %add190 = add nsw i64 %conv189, 4
  %shr191 = ashr i64 %add190, 3
  %conv192 = trunc i64 %shr191 to i32
  %and193 = and i32 %conv192, 1023
  %idxprom194 = sext i32 %and193 to i64
  %arrayidx195 = getelementptr inbounds i8, ptr %232, i64 %idxprom194
  %235 = load i8, ptr %arrayidx195, align 1
  %236 = load ptr, ptr %outptr, align 8
  %arrayidx196 = getelementptr inbounds i8, ptr %236, i64 2
  store i8 %235, ptr %arrayidx196, align 1
  %237 = load ptr, ptr %range_limit, align 8
  %238 = load float, ptr %tmp2, align 4
  %239 = load float, ptr %tmp5, align 4
  %sub197 = fsub float %238, %239
  %conv198 = fptosi float %sub197 to i64
  %add199 = add nsw i64 %conv198, 4
  %shr200 = ashr i64 %add199, 3
  %conv201 = trunc i64 %shr200 to i32
  %and202 = and i32 %conv201, 1023
  %idxprom203 = sext i32 %and202 to i64
  %arrayidx204 = getelementptr inbounds i8, ptr %237, i64 %idxprom203
  %240 = load i8, ptr %arrayidx204, align 1
  %241 = load ptr, ptr %outptr, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %241, i64 5
  store i8 %240, ptr %arrayidx205, align 1
  %242 = load ptr, ptr %range_limit, align 8
  %243 = load float, ptr %tmp3, align 4
  %244 = load float, ptr %tmp4, align 4
  %add206 = fadd float %243, %244
  %conv207 = fptosi float %add206 to i64
  %add208 = add nsw i64 %conv207, 4
  %shr209 = ashr i64 %add208, 3
  %conv210 = trunc i64 %shr209 to i32
  %and211 = and i32 %conv210, 1023
  %idxprom212 = sext i32 %and211 to i64
  %arrayidx213 = getelementptr inbounds i8, ptr %242, i64 %idxprom212
  %245 = load i8, ptr %arrayidx213, align 1
  %246 = load ptr, ptr %outptr, align 8
  %arrayidx214 = getelementptr inbounds i8, ptr %246, i64 4
  store i8 %245, ptr %arrayidx214, align 1
  %247 = load ptr, ptr %range_limit, align 8
  %248 = load float, ptr %tmp3, align 4
  %249 = load float, ptr %tmp4, align 4
  %sub215 = fsub float %248, %249
  %conv216 = fptosi float %sub215 to i64
  %add217 = add nsw i64 %conv216, 4
  %shr218 = ashr i64 %add217, 3
  %conv219 = trunc i64 %shr218 to i32
  %and220 = and i32 %conv219, 1023
  %idxprom221 = sext i32 %and220 to i64
  %arrayidx222 = getelementptr inbounds i8, ptr %247, i64 %idxprom221
  %250 = load i8, ptr %arrayidx222, align 1
  %251 = load ptr, ptr %outptr, align 8
  %arrayidx223 = getelementptr inbounds i8, ptr %251, i64 3
  store i8 %250, ptr %arrayidx223, align 1
  %252 = load ptr, ptr %wsptr, align 8
  %add.ptr224 = getelementptr inbounds float, ptr %252, i64 8
  store ptr %add.ptr224, ptr %wsptr, align 8
  br label %for.inc225

for.inc225:                                       ; preds = %for.body110
  %253 = load i32, ptr %ctr, align 4
  %inc = add nsw i32 %253, 1
  store i32 %inc, ptr %ctr, align 4
  br label %for.cond107, !llvm.loop !8

for.end226:                                       ; preds = %for.cond107
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
