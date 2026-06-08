; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_mibench_consumer_lame_lame3.70_fft.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/fft.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@rv_tbl = internal constant [128 x i16] [i16 0, i16 128, i16 64, i16 192, i16 32, i16 160, i16 96, i16 224, i16 16, i16 144, i16 80, i16 208, i16 48, i16 176, i16 112, i16 240, i16 8, i16 136, i16 72, i16 200, i16 40, i16 168, i16 104, i16 232, i16 24, i16 152, i16 88, i16 216, i16 56, i16 184, i16 120, i16 248, i16 4, i16 132, i16 68, i16 196, i16 36, i16 164, i16 100, i16 228, i16 20, i16 148, i16 84, i16 212, i16 52, i16 180, i16 116, i16 244, i16 12, i16 140, i16 76, i16 204, i16 44, i16 172, i16 108, i16 236, i16 28, i16 156, i16 92, i16 220, i16 60, i16 188, i16 124, i16 252, i16 2, i16 130, i16 66, i16 194, i16 34, i16 162, i16 98, i16 226, i16 18, i16 146, i16 82, i16 210, i16 50, i16 178, i16 114, i16 242, i16 10, i16 138, i16 74, i16 202, i16 42, i16 170, i16 106, i16 234, i16 26, i16 154, i16 90, i16 218, i16 58, i16 186, i16 122, i16 250, i16 6, i16 134, i16 70, i16 198, i16 38, i16 166, i16 102, i16 230, i16 22, i16 150, i16 86, i16 214, i16 54, i16 182, i16 118, i16 246, i16 14, i16 142, i16 78, i16 206, i16 46, i16 174, i16 110, i16 238, i16 30, i16 158, i16 94, i16 222, i16 62, i16 190, i16 126, i16 254], align 2
@window_s = internal global [128 x float] zeroinitializer, align 4
@window = internal global [512 x float] zeroinitializer, align 4
@costab = internal global [8 x float] zeroinitializer, align 4

; Function Attrs: nounwind ssp uwtable
define void @fft_short(ptr noundef %x_real, i32 noundef %chn, ptr noundef %buffer) #0 {
entry:
  %x_real.addr = alloca ptr, align 8
  %chn.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %b = alloca i16, align 2
  %x = alloca ptr, align 8
  %k = alloca i16, align 2
  %f0 = alloca float, align 4
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  %f3 = alloca float, align 4
  %f0157 = alloca float, align 4
  %f1158 = alloca float, align 4
  %f2159 = alloca float, align 4
  %f3160 = alloca float, align 4
  %f0387 = alloca float, align 4
  %f1388 = alloca float, align 4
  %f2389 = alloca float, align 4
  %f3390 = alloca float, align 4
  store ptr %x_real, ptr %x_real.addr, align 8
  store i32 %chn, ptr %chn.addr, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end615, %entry
  %storemerge = phi i16 [ 0, %entry ], [ %inc, %if.end615 ]
  store i16 %storemerge, ptr %b, align 2
  %cmp = icmp slt i16 %storemerge, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %x_real.addr, align 8
  %1 = load i16, ptr %b, align 2
  %idxprom = sext i16 %1 to i64
  %arrayidx2 = getelementptr inbounds [256 x float], ptr %0, i64 %idxprom, i64 128
  store ptr %arrayidx2, ptr %x, align 8
  %2 = mul i16 %1, 192
  %mul = add i16 %2, 192
  store i16 %mul, ptr %k, align 2
  store i16 31, ptr %j, align 2
  %3 = load i32, ptr %chn.addr, align 4
  %cmp5 = icmp slt i32 %3, 2
  br i1 %cmp5, label %do.body, label %if.else

do.body:                                          ; preds = %for.body, %do.body
  %4 = load i16, ptr %j, align 2
  %conv7 = sext i16 %4 to i32
  %shl = shl nsw i32 %conv7, 2
  %idxprom8 = sext i32 %shl to i64
  %arrayidx9 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom8
  %5 = load i16, ptr %arrayidx9, align 2
  store i16 %5, ptr %i, align 2
  %idxprom10 = sext i16 %5 to i64
  %arrayidx11 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom10
  %6 = load float, ptr %arrayidx11, align 4
  %7 = load ptr, ptr %buffer.addr, align 8
  %8 = load i32, ptr %chn.addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %7, i64 %idxprom12
  %9 = load ptr, ptr %arrayidx13, align 8
  %10 = load i16, ptr %i, align 2
  %conv14 = sext i16 %10 to i64
  %11 = load i16, ptr %k, align 2
  %conv15 = sext i16 %11 to i64
  %add16 = add nsw i64 %conv14, %conv15
  %arrayidx18 = getelementptr inbounds i16, ptr %9, i64 %add16
  %12 = load i16, ptr %arrayidx18, align 2
  %conv20 = sitofp i16 %12 to float
  %mul21 = fmul float %6, %conv20
  store float %mul21, ptr %f0, align 4
  %13 = load i16, ptr %i, align 2
  %conv22 = sext i16 %13 to i64
  %sub = sub nsw i64 127, %conv22
  %arrayidx24 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub
  %14 = load float, ptr %arrayidx24, align 4
  %15 = load ptr, ptr %buffer.addr, align 8
  %16 = load i32, ptr %chn.addr, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %15, i64 %idxprom25
  %17 = load ptr, ptr %arrayidx26, align 8
  %18 = load i16, ptr %i, align 2
  %conv27 = sext i16 %18 to i64
  %19 = load i16, ptr %k, align 2
  %conv28 = sext i16 %19 to i64
  %add29 = add nsw i64 %conv27, %conv28
  %add30 = add nsw i64 %add29, 128
  %arrayidx32 = getelementptr inbounds i16, ptr %17, i64 %add30
  %20 = load i16, ptr %arrayidx32, align 2
  %conv34 = sitofp i16 %20 to float
  %mul35 = fmul float %14, %conv34
  %21 = load float, ptr %f0, align 4
  %sub36 = fsub float %21, %mul35
  store float %sub36, ptr %f1, align 4
  %add37 = fadd float %21, %mul35
  store float %add37, ptr %f0, align 4
  %22 = load i16, ptr %i, align 2
  %conv38 = sext i16 %22 to i64
  %add39 = add nsw i64 %conv38, 64
  %arrayidx41 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %add39
  %23 = load float, ptr %arrayidx41, align 4
  %24 = load ptr, ptr %buffer.addr, align 8
  %25 = load i32, ptr %chn.addr, align 4
  %idxprom42 = sext i32 %25 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %24, i64 %idxprom42
  %26 = load ptr, ptr %arrayidx43, align 8
  %27 = load i16, ptr %i, align 2
  %conv44 = sext i16 %27 to i64
  %28 = load i16, ptr %k, align 2
  %conv45 = sext i16 %28 to i64
  %add46 = add nsw i64 %conv44, %conv45
  %add47 = add nsw i64 %add46, 64
  %arrayidx49 = getelementptr inbounds i16, ptr %26, i64 %add47
  %29 = load i16, ptr %arrayidx49, align 2
  %conv51 = sitofp i16 %29 to float
  %mul52 = fmul float %23, %conv51
  store float %mul52, ptr %f2, align 4
  %30 = load i16, ptr %i, align 2
  %conv53 = sext i16 %30 to i64
  %sub54 = sub nsw i64 63, %conv53
  %arrayidx56 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub54
  %31 = load float, ptr %arrayidx56, align 4
  %32 = load ptr, ptr %buffer.addr, align 8
  %33 = load i32, ptr %chn.addr, align 4
  %idxprom57 = sext i32 %33 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %32, i64 %idxprom57
  %34 = load ptr, ptr %arrayidx58, align 8
  %35 = load i16, ptr %i, align 2
  %conv59 = sext i16 %35 to i64
  %36 = load i16, ptr %k, align 2
  %conv60 = sext i16 %36 to i64
  %add61 = add nsw i64 %conv59, %conv60
  %add62 = add nsw i64 %add61, 192
  %arrayidx64 = getelementptr inbounds i16, ptr %34, i64 %add62
  %37 = load i16, ptr %arrayidx64, align 2
  %conv66 = sitofp i16 %37 to float
  %mul67 = fmul float %31, %conv66
  %38 = load float, ptr %f2, align 4
  %sub68 = fsub float %38, %mul67
  store float %sub68, ptr %f3, align 4
  %add69 = fadd float %38, %mul67
  store float %add69, ptr %f2, align 4
  %39 = load ptr, ptr %x, align 8
  %add.ptr = getelementptr inbounds float, ptr %39, i64 -4
  store ptr %add.ptr, ptr %x, align 8
  %40 = load float, ptr %f0, align 4
  %add70 = fadd float %40, %add69
  store float %add70, ptr %add.ptr, align 4
  %41 = load float, ptr %f2, align 4
  %sub72 = fsub float %40, %41
  %arrayidx73 = getelementptr inbounds float, ptr %39, i64 -2
  store float %sub72, ptr %arrayidx73, align 4
  %42 = load float, ptr %f1, align 4
  %43 = load float, ptr %f3, align 4
  %add74 = fadd float %42, %43
  %44 = load ptr, ptr %x, align 8
  %arrayidx75 = getelementptr inbounds float, ptr %44, i64 1
  store float %add74, ptr %arrayidx75, align 4
  %sub76 = fsub float %42, %43
  %arrayidx77 = getelementptr inbounds float, ptr %44, i64 3
  store float %sub76, ptr %arrayidx77, align 4
  %45 = load i16, ptr %i, align 2
  %conv78 = sext i16 %45 to i64
  %add79 = add nsw i64 %conv78, 1
  %arrayidx81 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %add79
  %46 = load float, ptr %arrayidx81, align 4
  %47 = load ptr, ptr %buffer.addr, align 8
  %48 = load i32, ptr %chn.addr, align 4
  %idxprom82 = sext i32 %48 to i64
  %arrayidx83 = getelementptr inbounds ptr, ptr %47, i64 %idxprom82
  %49 = load ptr, ptr %arrayidx83, align 8
  %50 = load i16, ptr %i, align 2
  %conv84 = sext i16 %50 to i64
  %51 = load i16, ptr %k, align 2
  %conv85 = sext i16 %51 to i64
  %add86 = add nsw i64 %conv84, %conv85
  %add87 = add nsw i64 %add86, 1
  %arrayidx89 = getelementptr inbounds i16, ptr %49, i64 %add87
  %52 = load i16, ptr %arrayidx89, align 2
  %conv91 = sitofp i16 %52 to float
  %mul92 = fmul float %46, %conv91
  store float %mul92, ptr %f0, align 4
  %53 = load i16, ptr %i, align 2
  %conv93 = sext i16 %53 to i64
  %sub94 = sub nsw i64 126, %conv93
  %arrayidx96 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub94
  %54 = load float, ptr %arrayidx96, align 4
  %55 = load ptr, ptr %buffer.addr, align 8
  %56 = load i32, ptr %chn.addr, align 4
  %idxprom97 = sext i32 %56 to i64
  %arrayidx98 = getelementptr inbounds ptr, ptr %55, i64 %idxprom97
  %57 = load ptr, ptr %arrayidx98, align 8
  %58 = load i16, ptr %i, align 2
  %conv99 = sext i16 %58 to i64
  %59 = load i16, ptr %k, align 2
  %conv100 = sext i16 %59 to i64
  %add101 = add nsw i64 %conv99, %conv100
  %add102 = add nsw i64 %add101, 129
  %arrayidx104 = getelementptr inbounds i16, ptr %57, i64 %add102
  %60 = load i16, ptr %arrayidx104, align 2
  %conv106 = sitofp i16 %60 to float
  %mul107 = fmul float %54, %conv106
  %61 = load float, ptr %f0, align 4
  %sub108 = fsub float %61, %mul107
  store float %sub108, ptr %f1, align 4
  %add109 = fadd float %61, %mul107
  store float %add109, ptr %f0, align 4
  %62 = load i16, ptr %i, align 2
  %conv110 = sext i16 %62 to i64
  %add111 = add nsw i64 %conv110, 65
  %arrayidx113 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %add111
  %63 = load float, ptr %arrayidx113, align 4
  %64 = load ptr, ptr %buffer.addr, align 8
  %65 = load i32, ptr %chn.addr, align 4
  %idxprom114 = sext i32 %65 to i64
  %arrayidx115 = getelementptr inbounds ptr, ptr %64, i64 %idxprom114
  %66 = load ptr, ptr %arrayidx115, align 8
  %67 = load i16, ptr %i, align 2
  %conv116 = sext i16 %67 to i64
  %68 = load i16, ptr %k, align 2
  %conv117 = sext i16 %68 to i64
  %add118 = add nsw i64 %conv116, %conv117
  %add119 = add nsw i64 %add118, 65
  %arrayidx121 = getelementptr inbounds i16, ptr %66, i64 %add119
  %69 = load i16, ptr %arrayidx121, align 2
  %conv123 = sitofp i16 %69 to float
  %mul124 = fmul float %63, %conv123
  store float %mul124, ptr %f2, align 4
  %70 = load i16, ptr %i, align 2
  %conv125 = sext i16 %70 to i64
  %sub126 = sub nsw i64 62, %conv125
  %arrayidx128 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub126
  %71 = load float, ptr %arrayidx128, align 4
  %72 = load ptr, ptr %buffer.addr, align 8
  %73 = load i32, ptr %chn.addr, align 4
  %idxprom129 = sext i32 %73 to i64
  %arrayidx130 = getelementptr inbounds ptr, ptr %72, i64 %idxprom129
  %74 = load ptr, ptr %arrayidx130, align 8
  %75 = load i16, ptr %i, align 2
  %conv131 = sext i16 %75 to i64
  %76 = load i16, ptr %k, align 2
  %conv132 = sext i16 %76 to i64
  %add133 = add nsw i64 %conv131, %conv132
  %add134 = add nsw i64 %add133, 193
  %arrayidx136 = getelementptr inbounds i16, ptr %74, i64 %add134
  %77 = load i16, ptr %arrayidx136, align 2
  %conv138 = sitofp i16 %77 to float
  %mul139 = fmul float %71, %conv138
  %78 = load float, ptr %f2, align 4
  %sub140 = fsub float %78, %mul139
  store float %sub140, ptr %f3, align 4
  %add141 = fadd float %78, %mul139
  store float %add141, ptr %f2, align 4
  %79 = load float, ptr %f0, align 4
  %add142 = fadd float %79, %add141
  %80 = load ptr, ptr %x, align 8
  %arrayidx143 = getelementptr inbounds float, ptr %80, i64 128
  store float %add142, ptr %arrayidx143, align 4
  %sub144 = fsub float %79, %add141
  %arrayidx145 = getelementptr inbounds float, ptr %80, i64 130
  store float %sub144, ptr %arrayidx145, align 4
  %81 = load float, ptr %f1, align 4
  %82 = load float, ptr %f3, align 4
  %add146 = fadd float %81, %82
  %83 = load ptr, ptr %x, align 8
  %arrayidx147 = getelementptr inbounds float, ptr %83, i64 129
  store float %add146, ptr %arrayidx147, align 4
  %sub148 = fsub float %81, %82
  %arrayidx149 = getelementptr inbounds float, ptr %83, i64 131
  store float %sub148, ptr %arrayidx149, align 4
  %84 = load i16, ptr %j, align 2
  %dec = add i16 %84, -1
  store i16 %dec, ptr %j, align 2
  %cmp151 = icmp sgt i16 %dec, -1
  br i1 %cmp151, label %do.body, label %if.end615, !llvm.loop !6

if.else:                                          ; preds = %for.body
  %85 = load i32, ptr %chn.addr, align 4
  %cmp153 = icmp eq i32 %85, 2
  br i1 %cmp153, label %do.body156, label %do.body386

do.body156:                                       ; preds = %if.else, %do.body156
  %86 = load i16, ptr %j, align 2
  %conv162 = sext i16 %86 to i32
  %shl163 = shl nsw i32 %conv162, 2
  %idxprom164 = sext i32 %shl163 to i64
  %arrayidx165 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom164
  %87 = load i16, ptr %arrayidx165, align 2
  store i16 %87, ptr %i, align 2
  %idxprom166 = sext i16 %87 to i64
  %arrayidx167 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom166
  %88 = load float, ptr %arrayidx167, align 4
  %89 = load ptr, ptr %buffer.addr, align 8
  %90 = load ptr, ptr %89, align 8
  %conv169 = sext i16 %87 to i64
  %91 = load i16, ptr %k, align 2
  %conv170 = sext i16 %91 to i64
  %add171 = add nsw i64 %conv169, %conv170
  %arrayidx173 = getelementptr inbounds i16, ptr %90, i64 %add171
  %92 = load i16, ptr %arrayidx173, align 2
  %conv174 = sext i16 %92 to i32
  %93 = load ptr, ptr %buffer.addr, align 8
  %arrayidx175 = getelementptr inbounds ptr, ptr %93, i64 1
  %94 = load ptr, ptr %arrayidx175, align 8
  %95 = load i16, ptr %i, align 2
  %conv176 = sext i16 %95 to i64
  %96 = load i16, ptr %k, align 2
  %conv177 = sext i16 %96 to i64
  %add178 = add nsw i64 %conv176, %conv177
  %arrayidx180 = getelementptr inbounds i16, ptr %94, i64 %add178
  %97 = load i16, ptr %arrayidx180, align 2
  %conv181 = sext i16 %97 to i32
  %add182 = add nsw i32 %conv174, %conv181
  %conv183 = sitofp i32 %add182 to float
  %mul184 = fmul float %conv183, 0x3FE6A09E60000000
  %mul185 = fmul float %88, %mul184
  store float %mul185, ptr %f0157, align 4
  %98 = load i16, ptr %i, align 2
  %conv186 = sext i16 %98 to i64
  %sub187 = sub nsw i64 127, %conv186
  %arrayidx189 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub187
  %99 = load float, ptr %arrayidx189, align 4
  %100 = load ptr, ptr %buffer.addr, align 8
  %101 = load ptr, ptr %100, align 8
  %102 = load i16, ptr %i, align 2
  %conv191 = sext i16 %102 to i64
  %103 = load i16, ptr %k, align 2
  %conv192 = sext i16 %103 to i64
  %add193 = add nsw i64 %conv191, %conv192
  %add194 = add nsw i64 %add193, 128
  %arrayidx196 = getelementptr inbounds i16, ptr %101, i64 %add194
  %104 = load i16, ptr %arrayidx196, align 2
  %conv197 = sext i16 %104 to i32
  %105 = load ptr, ptr %buffer.addr, align 8
  %arrayidx198 = getelementptr inbounds ptr, ptr %105, i64 1
  %106 = load ptr, ptr %arrayidx198, align 8
  %107 = load i16, ptr %i, align 2
  %conv199 = sext i16 %107 to i64
  %108 = load i16, ptr %k, align 2
  %conv200 = sext i16 %108 to i64
  %add201 = add nsw i64 %conv199, %conv200
  %add202 = add nsw i64 %add201, 128
  %arrayidx204 = getelementptr inbounds i16, ptr %106, i64 %add202
  %109 = load i16, ptr %arrayidx204, align 2
  %conv205 = sext i16 %109 to i32
  %add206 = add nsw i32 %conv197, %conv205
  %conv207 = sitofp i32 %add206 to float
  %mul208 = fmul float %conv207, 0x3FE6A09E60000000
  %mul209 = fmul float %99, %mul208
  %110 = load float, ptr %f0157, align 4
  %sub210 = fsub float %110, %mul209
  store float %sub210, ptr %f1158, align 4
  %add211 = fadd float %110, %mul209
  store float %add211, ptr %f0157, align 4
  %111 = load i16, ptr %i, align 2
  %conv212 = sext i16 %111 to i64
  %add213 = add nsw i64 %conv212, 64
  %arrayidx215 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %add213
  %112 = load float, ptr %arrayidx215, align 4
  %113 = load ptr, ptr %buffer.addr, align 8
  %114 = load ptr, ptr %113, align 8
  %115 = load i16, ptr %i, align 2
  %conv217 = sext i16 %115 to i64
  %116 = load i16, ptr %k, align 2
  %conv218 = sext i16 %116 to i64
  %add219 = add nsw i64 %conv217, %conv218
  %add220 = add nsw i64 %add219, 64
  %arrayidx222 = getelementptr inbounds i16, ptr %114, i64 %add220
  %117 = load i16, ptr %arrayidx222, align 2
  %conv223 = sext i16 %117 to i32
  %118 = load ptr, ptr %buffer.addr, align 8
  %arrayidx224 = getelementptr inbounds ptr, ptr %118, i64 1
  %119 = load ptr, ptr %arrayidx224, align 8
  %120 = load i16, ptr %i, align 2
  %conv225 = sext i16 %120 to i64
  %121 = load i16, ptr %k, align 2
  %conv226 = sext i16 %121 to i64
  %add227 = add nsw i64 %conv225, %conv226
  %add228 = add nsw i64 %add227, 64
  %arrayidx230 = getelementptr inbounds i16, ptr %119, i64 %add228
  %122 = load i16, ptr %arrayidx230, align 2
  %conv231 = sext i16 %122 to i32
  %add232 = add nsw i32 %conv223, %conv231
  %conv233 = sitofp i32 %add232 to float
  %mul234 = fmul float %conv233, 0x3FE6A09E60000000
  %mul235 = fmul float %112, %mul234
  store float %mul235, ptr %f2159, align 4
  %123 = load i16, ptr %i, align 2
  %conv236 = sext i16 %123 to i64
  %sub237 = sub nsw i64 63, %conv236
  %arrayidx239 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub237
  %124 = load float, ptr %arrayidx239, align 4
  %125 = load ptr, ptr %buffer.addr, align 8
  %126 = load ptr, ptr %125, align 8
  %127 = load i16, ptr %i, align 2
  %conv241 = sext i16 %127 to i64
  %128 = load i16, ptr %k, align 2
  %conv242 = sext i16 %128 to i64
  %add243 = add nsw i64 %conv241, %conv242
  %add244 = add nsw i64 %add243, 192
  %arrayidx246 = getelementptr inbounds i16, ptr %126, i64 %add244
  %129 = load i16, ptr %arrayidx246, align 2
  %conv247 = sext i16 %129 to i32
  %130 = load ptr, ptr %buffer.addr, align 8
  %arrayidx248 = getelementptr inbounds ptr, ptr %130, i64 1
  %131 = load ptr, ptr %arrayidx248, align 8
  %132 = load i16, ptr %i, align 2
  %conv249 = sext i16 %132 to i64
  %133 = load i16, ptr %k, align 2
  %conv250 = sext i16 %133 to i64
  %add251 = add nsw i64 %conv249, %conv250
  %add252 = add nsw i64 %add251, 192
  %arrayidx254 = getelementptr inbounds i16, ptr %131, i64 %add252
  %134 = load i16, ptr %arrayidx254, align 2
  %conv255 = sext i16 %134 to i32
  %add256 = add nsw i32 %conv247, %conv255
  %conv257 = sitofp i32 %add256 to float
  %mul258 = fmul float %conv257, 0x3FE6A09E60000000
  %mul259 = fmul float %124, %mul258
  %135 = load float, ptr %f2159, align 4
  %sub260 = fsub float %135, %mul259
  store float %sub260, ptr %f3160, align 4
  %add261 = fadd float %135, %mul259
  store float %add261, ptr %f2159, align 4
  %136 = load ptr, ptr %x, align 8
  %add.ptr262 = getelementptr inbounds float, ptr %136, i64 -4
  store ptr %add.ptr262, ptr %x, align 8
  %137 = load float, ptr %f0157, align 4
  %add263 = fadd float %137, %add261
  store float %add263, ptr %add.ptr262, align 4
  %138 = load float, ptr %f2159, align 4
  %sub265 = fsub float %137, %138
  %arrayidx266 = getelementptr inbounds float, ptr %136, i64 -2
  store float %sub265, ptr %arrayidx266, align 4
  %139 = load float, ptr %f1158, align 4
  %140 = load float, ptr %f3160, align 4
  %add267 = fadd float %139, %140
  %141 = load ptr, ptr %x, align 8
  %arrayidx268 = getelementptr inbounds float, ptr %141, i64 1
  store float %add267, ptr %arrayidx268, align 4
  %sub269 = fsub float %139, %140
  %arrayidx270 = getelementptr inbounds float, ptr %141, i64 3
  store float %sub269, ptr %arrayidx270, align 4
  %142 = load i16, ptr %i, align 2
  %conv271 = sext i16 %142 to i64
  %add272 = add nsw i64 %conv271, 1
  %arrayidx274 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %add272
  %143 = load float, ptr %arrayidx274, align 4
  %144 = load ptr, ptr %buffer.addr, align 8
  %145 = load ptr, ptr %144, align 8
  %146 = load i16, ptr %i, align 2
  %conv276 = sext i16 %146 to i64
  %147 = load i16, ptr %k, align 2
  %conv277 = sext i16 %147 to i64
  %add278 = add nsw i64 %conv276, %conv277
  %add279 = add nsw i64 %add278, 1
  %arrayidx281 = getelementptr inbounds i16, ptr %145, i64 %add279
  %148 = load i16, ptr %arrayidx281, align 2
  %conv282 = sext i16 %148 to i32
  %149 = load ptr, ptr %buffer.addr, align 8
  %arrayidx283 = getelementptr inbounds ptr, ptr %149, i64 1
  %150 = load ptr, ptr %arrayidx283, align 8
  %151 = load i16, ptr %i, align 2
  %conv284 = sext i16 %151 to i64
  %152 = load i16, ptr %k, align 2
  %conv285 = sext i16 %152 to i64
  %add286 = add nsw i64 %conv284, %conv285
  %add287 = add nsw i64 %add286, 1
  %arrayidx289 = getelementptr inbounds i16, ptr %150, i64 %add287
  %153 = load i16, ptr %arrayidx289, align 2
  %conv290 = sext i16 %153 to i32
  %add291 = add nsw i32 %conv282, %conv290
  %conv292 = sitofp i32 %add291 to float
  %mul293 = fmul float %conv292, 0x3FE6A09E60000000
  %mul294 = fmul float %143, %mul293
  store float %mul294, ptr %f0157, align 4
  %154 = load i16, ptr %i, align 2
  %conv295 = sext i16 %154 to i64
  %sub296 = sub nsw i64 126, %conv295
  %arrayidx298 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub296
  %155 = load float, ptr %arrayidx298, align 4
  %156 = load ptr, ptr %buffer.addr, align 8
  %157 = load ptr, ptr %156, align 8
  %158 = load i16, ptr %i, align 2
  %conv300 = sext i16 %158 to i64
  %159 = load i16, ptr %k, align 2
  %conv301 = sext i16 %159 to i64
  %add302 = add nsw i64 %conv300, %conv301
  %add303 = add nsw i64 %add302, 129
  %arrayidx305 = getelementptr inbounds i16, ptr %157, i64 %add303
  %160 = load i16, ptr %arrayidx305, align 2
  %conv306 = sext i16 %160 to i32
  %161 = load ptr, ptr %buffer.addr, align 8
  %arrayidx307 = getelementptr inbounds ptr, ptr %161, i64 1
  %162 = load ptr, ptr %arrayidx307, align 8
  %163 = load i16, ptr %i, align 2
  %conv308 = sext i16 %163 to i64
  %164 = load i16, ptr %k, align 2
  %conv309 = sext i16 %164 to i64
  %add310 = add nsw i64 %conv308, %conv309
  %add311 = add nsw i64 %add310, 129
  %arrayidx313 = getelementptr inbounds i16, ptr %162, i64 %add311
  %165 = load i16, ptr %arrayidx313, align 2
  %conv314 = sext i16 %165 to i32
  %add315 = add nsw i32 %conv306, %conv314
  %conv316 = sitofp i32 %add315 to float
  %mul317 = fmul float %conv316, 0x3FE6A09E60000000
  %mul318 = fmul float %155, %mul317
  %166 = load float, ptr %f0157, align 4
  %sub319 = fsub float %166, %mul318
  store float %sub319, ptr %f1158, align 4
  %add320 = fadd float %166, %mul318
  store float %add320, ptr %f0157, align 4
  %167 = load i16, ptr %i, align 2
  %conv321 = sext i16 %167 to i64
  %add322 = add nsw i64 %conv321, 65
  %arrayidx324 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %add322
  %168 = load float, ptr %arrayidx324, align 4
  %169 = load ptr, ptr %buffer.addr, align 8
  %170 = load ptr, ptr %169, align 8
  %171 = load i16, ptr %i, align 2
  %conv326 = sext i16 %171 to i64
  %172 = load i16, ptr %k, align 2
  %conv327 = sext i16 %172 to i64
  %add328 = add nsw i64 %conv326, %conv327
  %add329 = add nsw i64 %add328, 65
  %arrayidx331 = getelementptr inbounds i16, ptr %170, i64 %add329
  %173 = load i16, ptr %arrayidx331, align 2
  %conv332 = sext i16 %173 to i32
  %174 = load ptr, ptr %buffer.addr, align 8
  %arrayidx333 = getelementptr inbounds ptr, ptr %174, i64 1
  %175 = load ptr, ptr %arrayidx333, align 8
  %176 = load i16, ptr %i, align 2
  %conv334 = sext i16 %176 to i64
  %177 = load i16, ptr %k, align 2
  %conv335 = sext i16 %177 to i64
  %add336 = add nsw i64 %conv334, %conv335
  %add337 = add nsw i64 %add336, 65
  %arrayidx339 = getelementptr inbounds i16, ptr %175, i64 %add337
  %178 = load i16, ptr %arrayidx339, align 2
  %conv340 = sext i16 %178 to i32
  %add341 = add nsw i32 %conv332, %conv340
  %conv342 = sitofp i32 %add341 to float
  %mul343 = fmul float %conv342, 0x3FE6A09E60000000
  %mul344 = fmul float %168, %mul343
  store float %mul344, ptr %f2159, align 4
  %179 = load i16, ptr %i, align 2
  %conv345 = sext i16 %179 to i64
  %sub346 = sub nsw i64 62, %conv345
  %arrayidx348 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub346
  %180 = load float, ptr %arrayidx348, align 4
  %181 = load ptr, ptr %buffer.addr, align 8
  %182 = load ptr, ptr %181, align 8
  %183 = load i16, ptr %i, align 2
  %conv350 = sext i16 %183 to i64
  %184 = load i16, ptr %k, align 2
  %conv351 = sext i16 %184 to i64
  %add352 = add nsw i64 %conv350, %conv351
  %add353 = add nsw i64 %add352, 193
  %arrayidx355 = getelementptr inbounds i16, ptr %182, i64 %add353
  %185 = load i16, ptr %arrayidx355, align 2
  %conv356 = sext i16 %185 to i32
  %186 = load ptr, ptr %buffer.addr, align 8
  %arrayidx357 = getelementptr inbounds ptr, ptr %186, i64 1
  %187 = load ptr, ptr %arrayidx357, align 8
  %188 = load i16, ptr %i, align 2
  %conv358 = sext i16 %188 to i64
  %189 = load i16, ptr %k, align 2
  %conv359 = sext i16 %189 to i64
  %add360 = add nsw i64 %conv358, %conv359
  %add361 = add nsw i64 %add360, 193
  %arrayidx363 = getelementptr inbounds i16, ptr %187, i64 %add361
  %190 = load i16, ptr %arrayidx363, align 2
  %conv364 = sext i16 %190 to i32
  %add365 = add nsw i32 %conv356, %conv364
  %conv366 = sitofp i32 %add365 to float
  %mul367 = fmul float %conv366, 0x3FE6A09E60000000
  %mul368 = fmul float %180, %mul367
  %191 = load float, ptr %f2159, align 4
  %sub369 = fsub float %191, %mul368
  store float %sub369, ptr %f3160, align 4
  %add370 = fadd float %191, %mul368
  store float %add370, ptr %f2159, align 4
  %192 = load float, ptr %f0157, align 4
  %add371 = fadd float %192, %add370
  %193 = load ptr, ptr %x, align 8
  %arrayidx372 = getelementptr inbounds float, ptr %193, i64 128
  store float %add371, ptr %arrayidx372, align 4
  %sub373 = fsub float %192, %add370
  %arrayidx374 = getelementptr inbounds float, ptr %193, i64 130
  store float %sub373, ptr %arrayidx374, align 4
  %194 = load float, ptr %f1158, align 4
  %195 = load float, ptr %f3160, align 4
  %add375 = fadd float %194, %195
  %196 = load ptr, ptr %x, align 8
  %arrayidx376 = getelementptr inbounds float, ptr %196, i64 129
  store float %add375, ptr %arrayidx376, align 4
  %sub377 = fsub float %194, %195
  %arrayidx378 = getelementptr inbounds float, ptr %196, i64 131
  store float %sub377, ptr %arrayidx378, align 4
  %197 = load i16, ptr %j, align 2
  %dec380 = add i16 %197, -1
  store i16 %dec380, ptr %j, align 2
  %cmp382 = icmp sgt i16 %dec380, -1
  br i1 %cmp382, label %do.body156, label %if.end615, !llvm.loop !8

do.body386:                                       ; preds = %if.else, %do.body386
  %198 = load i16, ptr %j, align 2
  %conv392 = sext i16 %198 to i32
  %shl393 = shl nsw i32 %conv392, 2
  %idxprom394 = sext i32 %shl393 to i64
  %arrayidx395 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom394
  %199 = load i16, ptr %arrayidx395, align 2
  store i16 %199, ptr %i, align 2
  %idxprom396 = sext i16 %199 to i64
  %arrayidx397 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom396
  %200 = load float, ptr %arrayidx397, align 4
  %201 = load ptr, ptr %buffer.addr, align 8
  %202 = load ptr, ptr %201, align 8
  %conv399 = sext i16 %199 to i64
  %203 = load i16, ptr %k, align 2
  %conv400 = sext i16 %203 to i64
  %add401 = add nsw i64 %conv399, %conv400
  %arrayidx403 = getelementptr inbounds i16, ptr %202, i64 %add401
  %204 = load i16, ptr %arrayidx403, align 2
  %conv404 = sext i16 %204 to i32
  %205 = load ptr, ptr %buffer.addr, align 8
  %arrayidx405 = getelementptr inbounds ptr, ptr %205, i64 1
  %206 = load ptr, ptr %arrayidx405, align 8
  %207 = load i16, ptr %i, align 2
  %conv406 = sext i16 %207 to i64
  %208 = load i16, ptr %k, align 2
  %conv407 = sext i16 %208 to i64
  %add408 = add nsw i64 %conv406, %conv407
  %arrayidx410 = getelementptr inbounds i16, ptr %206, i64 %add408
  %209 = load i16, ptr %arrayidx410, align 2
  %conv411 = sext i16 %209 to i32
  %sub412 = sub nsw i32 %conv404, %conv411
  %conv413 = sitofp i32 %sub412 to float
  %mul414 = fmul float %conv413, 0x3FE6A09E60000000
  %mul415 = fmul float %200, %mul414
  store float %mul415, ptr %f0387, align 4
  %210 = load i16, ptr %i, align 2
  %conv416 = sext i16 %210 to i64
  %sub417 = sub nsw i64 127, %conv416
  %arrayidx419 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub417
  %211 = load float, ptr %arrayidx419, align 4
  %212 = load ptr, ptr %buffer.addr, align 8
  %213 = load ptr, ptr %212, align 8
  %214 = load i16, ptr %i, align 2
  %conv421 = sext i16 %214 to i64
  %215 = load i16, ptr %k, align 2
  %conv422 = sext i16 %215 to i64
  %add423 = add nsw i64 %conv421, %conv422
  %add424 = add nsw i64 %add423, 128
  %arrayidx426 = getelementptr inbounds i16, ptr %213, i64 %add424
  %216 = load i16, ptr %arrayidx426, align 2
  %conv427 = sext i16 %216 to i32
  %217 = load ptr, ptr %buffer.addr, align 8
  %arrayidx428 = getelementptr inbounds ptr, ptr %217, i64 1
  %218 = load ptr, ptr %arrayidx428, align 8
  %219 = load i16, ptr %i, align 2
  %conv429 = sext i16 %219 to i64
  %220 = load i16, ptr %k, align 2
  %conv430 = sext i16 %220 to i64
  %add431 = add nsw i64 %conv429, %conv430
  %add432 = add nsw i64 %add431, 128
  %arrayidx434 = getelementptr inbounds i16, ptr %218, i64 %add432
  %221 = load i16, ptr %arrayidx434, align 2
  %conv435 = sext i16 %221 to i32
  %sub436 = sub nsw i32 %conv427, %conv435
  %conv437 = sitofp i32 %sub436 to float
  %mul438 = fmul float %conv437, 0x3FE6A09E60000000
  %mul439 = fmul float %211, %mul438
  %222 = load float, ptr %f0387, align 4
  %sub440 = fsub float %222, %mul439
  store float %sub440, ptr %f1388, align 4
  %add441 = fadd float %222, %mul439
  store float %add441, ptr %f0387, align 4
  %223 = load i16, ptr %i, align 2
  %conv442 = sext i16 %223 to i64
  %add443 = add nsw i64 %conv442, 64
  %arrayidx445 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %add443
  %224 = load float, ptr %arrayidx445, align 4
  %225 = load ptr, ptr %buffer.addr, align 8
  %226 = load ptr, ptr %225, align 8
  %227 = load i16, ptr %i, align 2
  %conv447 = sext i16 %227 to i64
  %228 = load i16, ptr %k, align 2
  %conv448 = sext i16 %228 to i64
  %add449 = add nsw i64 %conv447, %conv448
  %add450 = add nsw i64 %add449, 64
  %arrayidx452 = getelementptr inbounds i16, ptr %226, i64 %add450
  %229 = load i16, ptr %arrayidx452, align 2
  %conv453 = sext i16 %229 to i32
  %230 = load ptr, ptr %buffer.addr, align 8
  %arrayidx454 = getelementptr inbounds ptr, ptr %230, i64 1
  %231 = load ptr, ptr %arrayidx454, align 8
  %232 = load i16, ptr %i, align 2
  %conv455 = sext i16 %232 to i64
  %233 = load i16, ptr %k, align 2
  %conv456 = sext i16 %233 to i64
  %add457 = add nsw i64 %conv455, %conv456
  %add458 = add nsw i64 %add457, 64
  %arrayidx460 = getelementptr inbounds i16, ptr %231, i64 %add458
  %234 = load i16, ptr %arrayidx460, align 2
  %conv461 = sext i16 %234 to i32
  %sub462 = sub nsw i32 %conv453, %conv461
  %conv463 = sitofp i32 %sub462 to float
  %mul464 = fmul float %conv463, 0x3FE6A09E60000000
  %mul465 = fmul float %224, %mul464
  store float %mul465, ptr %f2389, align 4
  %235 = load i16, ptr %i, align 2
  %conv466 = sext i16 %235 to i64
  %sub467 = sub nsw i64 63, %conv466
  %arrayidx469 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub467
  %236 = load float, ptr %arrayidx469, align 4
  %237 = load ptr, ptr %buffer.addr, align 8
  %238 = load ptr, ptr %237, align 8
  %239 = load i16, ptr %i, align 2
  %conv471 = sext i16 %239 to i64
  %240 = load i16, ptr %k, align 2
  %conv472 = sext i16 %240 to i64
  %add473 = add nsw i64 %conv471, %conv472
  %add474 = add nsw i64 %add473, 192
  %arrayidx476 = getelementptr inbounds i16, ptr %238, i64 %add474
  %241 = load i16, ptr %arrayidx476, align 2
  %conv477 = sext i16 %241 to i32
  %242 = load ptr, ptr %buffer.addr, align 8
  %arrayidx478 = getelementptr inbounds ptr, ptr %242, i64 1
  %243 = load ptr, ptr %arrayidx478, align 8
  %244 = load i16, ptr %i, align 2
  %conv479 = sext i16 %244 to i64
  %245 = load i16, ptr %k, align 2
  %conv480 = sext i16 %245 to i64
  %add481 = add nsw i64 %conv479, %conv480
  %add482 = add nsw i64 %add481, 192
  %arrayidx484 = getelementptr inbounds i16, ptr %243, i64 %add482
  %246 = load i16, ptr %arrayidx484, align 2
  %conv485 = sext i16 %246 to i32
  %sub486 = sub nsw i32 %conv477, %conv485
  %conv487 = sitofp i32 %sub486 to float
  %mul488 = fmul float %conv487, 0x3FE6A09E60000000
  %mul489 = fmul float %236, %mul488
  %247 = load float, ptr %f2389, align 4
  %sub490 = fsub float %247, %mul489
  store float %sub490, ptr %f3390, align 4
  %add491 = fadd float %247, %mul489
  store float %add491, ptr %f2389, align 4
  %248 = load ptr, ptr %x, align 8
  %add.ptr492 = getelementptr inbounds float, ptr %248, i64 -4
  store ptr %add.ptr492, ptr %x, align 8
  %249 = load float, ptr %f0387, align 4
  %add493 = fadd float %249, %add491
  store float %add493, ptr %add.ptr492, align 4
  %250 = load float, ptr %f2389, align 4
  %sub495 = fsub float %249, %250
  %arrayidx496 = getelementptr inbounds float, ptr %248, i64 -2
  store float %sub495, ptr %arrayidx496, align 4
  %251 = load float, ptr %f1388, align 4
  %252 = load float, ptr %f3390, align 4
  %add497 = fadd float %251, %252
  %253 = load ptr, ptr %x, align 8
  %arrayidx498 = getelementptr inbounds float, ptr %253, i64 1
  store float %add497, ptr %arrayidx498, align 4
  %sub499 = fsub float %251, %252
  %arrayidx500 = getelementptr inbounds float, ptr %253, i64 3
  store float %sub499, ptr %arrayidx500, align 4
  %254 = load i16, ptr %i, align 2
  %conv501 = sext i16 %254 to i64
  %add502 = add nsw i64 %conv501, 1
  %arrayidx504 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %add502
  %255 = load float, ptr %arrayidx504, align 4
  %256 = load ptr, ptr %buffer.addr, align 8
  %257 = load ptr, ptr %256, align 8
  %258 = load i16, ptr %i, align 2
  %conv506 = sext i16 %258 to i64
  %259 = load i16, ptr %k, align 2
  %conv507 = sext i16 %259 to i64
  %add508 = add nsw i64 %conv506, %conv507
  %add509 = add nsw i64 %add508, 1
  %arrayidx511 = getelementptr inbounds i16, ptr %257, i64 %add509
  %260 = load i16, ptr %arrayidx511, align 2
  %conv512 = sext i16 %260 to i32
  %261 = load ptr, ptr %buffer.addr, align 8
  %arrayidx513 = getelementptr inbounds ptr, ptr %261, i64 1
  %262 = load ptr, ptr %arrayidx513, align 8
  %263 = load i16, ptr %i, align 2
  %conv514 = sext i16 %263 to i64
  %264 = load i16, ptr %k, align 2
  %conv515 = sext i16 %264 to i64
  %add516 = add nsw i64 %conv514, %conv515
  %add517 = add nsw i64 %add516, 1
  %arrayidx519 = getelementptr inbounds i16, ptr %262, i64 %add517
  %265 = load i16, ptr %arrayidx519, align 2
  %conv520 = sext i16 %265 to i32
  %sub521 = sub nsw i32 %conv512, %conv520
  %conv522 = sitofp i32 %sub521 to float
  %mul523 = fmul float %conv522, 0x3FE6A09E60000000
  %mul524 = fmul float %255, %mul523
  store float %mul524, ptr %f0387, align 4
  %266 = load i16, ptr %i, align 2
  %conv525 = sext i16 %266 to i64
  %sub526 = sub nsw i64 126, %conv525
  %arrayidx528 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub526
  %267 = load float, ptr %arrayidx528, align 4
  %268 = load ptr, ptr %buffer.addr, align 8
  %269 = load ptr, ptr %268, align 8
  %270 = load i16, ptr %i, align 2
  %conv530 = sext i16 %270 to i64
  %271 = load i16, ptr %k, align 2
  %conv531 = sext i16 %271 to i64
  %add532 = add nsw i64 %conv530, %conv531
  %add533 = add nsw i64 %add532, 129
  %arrayidx535 = getelementptr inbounds i16, ptr %269, i64 %add533
  %272 = load i16, ptr %arrayidx535, align 2
  %conv536 = sext i16 %272 to i32
  %273 = load ptr, ptr %buffer.addr, align 8
  %arrayidx537 = getelementptr inbounds ptr, ptr %273, i64 1
  %274 = load ptr, ptr %arrayidx537, align 8
  %275 = load i16, ptr %i, align 2
  %conv538 = sext i16 %275 to i64
  %276 = load i16, ptr %k, align 2
  %conv539 = sext i16 %276 to i64
  %add540 = add nsw i64 %conv538, %conv539
  %add541 = add nsw i64 %add540, 129
  %arrayidx543 = getelementptr inbounds i16, ptr %274, i64 %add541
  %277 = load i16, ptr %arrayidx543, align 2
  %conv544 = sext i16 %277 to i32
  %sub545 = sub nsw i32 %conv536, %conv544
  %conv546 = sitofp i32 %sub545 to float
  %mul547 = fmul float %conv546, 0x3FE6A09E60000000
  %mul548 = fmul float %267, %mul547
  %278 = load float, ptr %f0387, align 4
  %sub549 = fsub float %278, %mul548
  store float %sub549, ptr %f1388, align 4
  %add550 = fadd float %278, %mul548
  store float %add550, ptr %f0387, align 4
  %279 = load i16, ptr %i, align 2
  %conv551 = sext i16 %279 to i64
  %add552 = add nsw i64 %conv551, 65
  %arrayidx554 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %add552
  %280 = load float, ptr %arrayidx554, align 4
  %281 = load ptr, ptr %buffer.addr, align 8
  %282 = load ptr, ptr %281, align 8
  %283 = load i16, ptr %i, align 2
  %conv556 = sext i16 %283 to i64
  %284 = load i16, ptr %k, align 2
  %conv557 = sext i16 %284 to i64
  %add558 = add nsw i64 %conv556, %conv557
  %add559 = add nsw i64 %add558, 65
  %arrayidx561 = getelementptr inbounds i16, ptr %282, i64 %add559
  %285 = load i16, ptr %arrayidx561, align 2
  %conv562 = sext i16 %285 to i32
  %286 = load ptr, ptr %buffer.addr, align 8
  %arrayidx563 = getelementptr inbounds ptr, ptr %286, i64 1
  %287 = load ptr, ptr %arrayidx563, align 8
  %288 = load i16, ptr %i, align 2
  %conv564 = sext i16 %288 to i64
  %289 = load i16, ptr %k, align 2
  %conv565 = sext i16 %289 to i64
  %add566 = add nsw i64 %conv564, %conv565
  %add567 = add nsw i64 %add566, 65
  %arrayidx569 = getelementptr inbounds i16, ptr %287, i64 %add567
  %290 = load i16, ptr %arrayidx569, align 2
  %conv570 = sext i16 %290 to i32
  %sub571 = sub nsw i32 %conv562, %conv570
  %conv572 = sitofp i32 %sub571 to float
  %mul573 = fmul float %conv572, 0x3FE6A09E60000000
  %mul574 = fmul float %280, %mul573
  store float %mul574, ptr %f2389, align 4
  %291 = load i16, ptr %i, align 2
  %conv575 = sext i16 %291 to i64
  %sub576 = sub nsw i64 62, %conv575
  %arrayidx578 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %sub576
  %292 = load float, ptr %arrayidx578, align 4
  %293 = load ptr, ptr %buffer.addr, align 8
  %294 = load ptr, ptr %293, align 8
  %295 = load i16, ptr %i, align 2
  %conv580 = sext i16 %295 to i64
  %296 = load i16, ptr %k, align 2
  %conv581 = sext i16 %296 to i64
  %add582 = add nsw i64 %conv580, %conv581
  %add583 = add nsw i64 %add582, 193
  %arrayidx585 = getelementptr inbounds i16, ptr %294, i64 %add583
  %297 = load i16, ptr %arrayidx585, align 2
  %conv586 = sext i16 %297 to i32
  %298 = load ptr, ptr %buffer.addr, align 8
  %arrayidx587 = getelementptr inbounds ptr, ptr %298, i64 1
  %299 = load ptr, ptr %arrayidx587, align 8
  %300 = load i16, ptr %i, align 2
  %conv588 = sext i16 %300 to i64
  %301 = load i16, ptr %k, align 2
  %conv589 = sext i16 %301 to i64
  %add590 = add nsw i64 %conv588, %conv589
  %add591 = add nsw i64 %add590, 193
  %arrayidx593 = getelementptr inbounds i16, ptr %299, i64 %add591
  %302 = load i16, ptr %arrayidx593, align 2
  %conv594 = sext i16 %302 to i32
  %sub595 = sub nsw i32 %conv586, %conv594
  %conv596 = sitofp i32 %sub595 to float
  %mul597 = fmul float %conv596, 0x3FE6A09E60000000
  %mul598 = fmul float %292, %mul597
  %303 = load float, ptr %f2389, align 4
  %sub599 = fsub float %303, %mul598
  store float %sub599, ptr %f3390, align 4
  %add600 = fadd float %303, %mul598
  store float %add600, ptr %f2389, align 4
  %304 = load float, ptr %f0387, align 4
  %add601 = fadd float %304, %add600
  %305 = load ptr, ptr %x, align 8
  %arrayidx602 = getelementptr inbounds float, ptr %305, i64 128
  store float %add601, ptr %arrayidx602, align 4
  %sub603 = fsub float %304, %add600
  %arrayidx604 = getelementptr inbounds float, ptr %305, i64 130
  store float %sub603, ptr %arrayidx604, align 4
  %306 = load float, ptr %f1388, align 4
  %307 = load float, ptr %f3390, align 4
  %add605 = fadd float %306, %307
  %308 = load ptr, ptr %x, align 8
  %arrayidx606 = getelementptr inbounds float, ptr %308, i64 129
  store float %add605, ptr %arrayidx606, align 4
  %sub607 = fsub float %306, %307
  %arrayidx608 = getelementptr inbounds float, ptr %308, i64 131
  store float %sub607, ptr %arrayidx608, align 4
  %309 = load i16, ptr %j, align 2
  %dec610 = add i16 %309, -1
  store i16 %dec610, ptr %j, align 2
  %cmp612 = icmp sgt i16 %dec610, -1
  br i1 %cmp612, label %do.body386, label %if.end615, !llvm.loop !9

if.end615:                                        ; preds = %do.body156, %do.body386, %do.body
  %310 = load ptr, ptr %x, align 8
  call void @fht(ptr noundef %310, i16 noundef signext 256)
  %311 = load i16, ptr %b, align 2
  %inc = add i16 %311, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fht(ptr noundef %fz, i16 noundef signext %n) #0 {
entry:
  %fz.addr = alloca ptr, align 8
  %n.addr = alloca i16, align 2
  %k4 = alloca i16, align 2
  %fi = alloca ptr, align 8
  %fn = alloca ptr, align 8
  %gi = alloca ptr, align 8
  %tri = alloca ptr, align 8
  %s1 = alloca float, align 4
  %c1 = alloca float, align 4
  %i = alloca i16, align 2
  %k1 = alloca i16, align 2
  %k2 = alloca i16, align 2
  %k3 = alloca i16, align 2
  %kx = alloca i16, align 2
  %f0 = alloca float, align 4
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  %f3 = alloca float, align 4
  %c2 = alloca float, align 4
  %s2 = alloca float, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %g0 = alloca float, align 4
  %f096 = alloca float, align 4
  %f197 = alloca float, align 4
  %g1 = alloca float, align 4
  %f298 = alloca float, align 4
  %g2 = alloca float, align 4
  %f399 = alloca float, align 4
  %g3 = alloca float, align 4
  store ptr %fz, ptr %fz.addr, align 8
  store i16 %n, ptr %n.addr, align 2
  %idx.ext = sext i16 %n to i64
  %add.ptr = getelementptr inbounds float, ptr %fz, i64 %idx.ext
  store ptr %add.ptr, ptr %fn, align 8
  store ptr @costab, ptr %tri, align 8
  store i16 4, ptr %k4, align 2
  br label %do.body

do.body:                                          ; preds = %for.end, %entry
  %0 = load i16, ptr %k4, align 2
  %1 = ashr i16 %0, 1
  store i16 %1, ptr %kx, align 2
  store i16 %0, ptr %k1, align 2
  %shl = shl i16 %0, 1
  store i16 %shl, ptr %k2, align 2
  %add = mul i16 %0, 3
  store i16 %add, ptr %k3, align 2
  %shl9 = shl i16 %0, 2
  store i16 %shl9, ptr %k4, align 2
  %2 = load ptr, ptr %fz.addr, align 8
  store ptr %2, ptr %fi, align 8
  %3 = load i16, ptr %kx, align 2
  %idx.ext12 = sext i16 %3 to i64
  %add.ptr13 = getelementptr inbounds float, ptr %2, i64 %idx.ext12
  store ptr %add.ptr13, ptr %gi, align 8
  br label %do.body14

do.body14:                                        ; preds = %do.body14, %do.body
  %4 = load ptr, ptr %fi, align 8
  %5 = load float, ptr %4, align 4
  %6 = load i16, ptr %k1, align 2
  %idxprom = sext i16 %6 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %4, i64 %idxprom
  %7 = load float, ptr %arrayidx15, align 4
  %sub = fsub float %5, %7
  store float %sub, ptr %f1, align 4
  %8 = load ptr, ptr %fi, align 8
  %9 = load float, ptr %8, align 4
  %10 = load i16, ptr %k1, align 2
  %idxprom17 = sext i16 %10 to i64
  %arrayidx18 = getelementptr inbounds float, ptr %8, i64 %idxprom17
  %11 = load float, ptr %arrayidx18, align 4
  %add19 = fadd float %9, %11
  store float %add19, ptr %f0, align 4
  %12 = load ptr, ptr %fi, align 8
  %13 = load i16, ptr %k2, align 2
  %idxprom20 = sext i16 %13 to i64
  %arrayidx21 = getelementptr inbounds float, ptr %12, i64 %idxprom20
  %14 = load float, ptr %arrayidx21, align 4
  %15 = load i16, ptr %k3, align 2
  %idxprom22 = sext i16 %15 to i64
  %arrayidx23 = getelementptr inbounds float, ptr %12, i64 %idxprom22
  %16 = load float, ptr %arrayidx23, align 4
  %sub24 = fsub float %14, %16
  store float %sub24, ptr %f3, align 4
  %17 = load ptr, ptr %fi, align 8
  %18 = load i16, ptr %k2, align 2
  %idxprom25 = sext i16 %18 to i64
  %arrayidx26 = getelementptr inbounds float, ptr %17, i64 %idxprom25
  %19 = load float, ptr %arrayidx26, align 4
  %20 = load i16, ptr %k3, align 2
  %idxprom27 = sext i16 %20 to i64
  %arrayidx28 = getelementptr inbounds float, ptr %17, i64 %idxprom27
  %21 = load float, ptr %arrayidx28, align 4
  %add29 = fadd float %19, %21
  store float %add29, ptr %f2, align 4
  %22 = load float, ptr %f0, align 4
  %sub30 = fsub float %22, %add29
  %23 = load ptr, ptr %fi, align 8
  %24 = load i16, ptr %k2, align 2
  %idxprom31 = sext i16 %24 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %23, i64 %idxprom31
  store float %sub30, ptr %arrayidx32, align 4
  %25 = load float, ptr %f0, align 4
  %26 = load float, ptr %f2, align 4
  %add33 = fadd float %25, %26
  %27 = load ptr, ptr %fi, align 8
  store float %add33, ptr %27, align 4
  %28 = load float, ptr %f1, align 4
  %29 = load float, ptr %f3, align 4
  %sub35 = fsub float %28, %29
  %30 = load i16, ptr %k3, align 2
  %idxprom36 = sext i16 %30 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %27, i64 %idxprom36
  store float %sub35, ptr %arrayidx37, align 4
  %31 = load float, ptr %f1, align 4
  %32 = load float, ptr %f3, align 4
  %add38 = fadd float %31, %32
  %33 = load ptr, ptr %fi, align 8
  %34 = load i16, ptr %k1, align 2
  %idxprom39 = sext i16 %34 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %33, i64 %idxprom39
  store float %add38, ptr %arrayidx40, align 4
  %35 = load ptr, ptr %gi, align 8
  %36 = load float, ptr %35, align 4
  %idxprom42 = sext i16 %34 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %35, i64 %idxprom42
  %37 = load float, ptr %arrayidx43, align 4
  %sub44 = fsub float %36, %37
  store float %sub44, ptr %f1, align 4
  %38 = load ptr, ptr %gi, align 8
  %39 = load float, ptr %38, align 4
  %40 = load i16, ptr %k1, align 2
  %idxprom46 = sext i16 %40 to i64
  %arrayidx47 = getelementptr inbounds float, ptr %38, i64 %idxprom46
  %41 = load float, ptr %arrayidx47, align 4
  %add48 = fadd float %39, %41
  store float %add48, ptr %f0, align 4
  %42 = load ptr, ptr %gi, align 8
  %43 = load i16, ptr %k3, align 2
  %idxprom49 = sext i16 %43 to i64
  %arrayidx50 = getelementptr inbounds float, ptr %42, i64 %idxprom49
  %44 = load float, ptr %arrayidx50, align 4
  %conv51 = fpext float %44 to double
  %mul = fmul double %conv51, 0x3FF6A09E667F3BCD
  %conv52 = fptrunc double %mul to float
  store float %conv52, ptr %f3, align 4
  %45 = load ptr, ptr %gi, align 8
  %46 = load i16, ptr %k2, align 2
  %idxprom53 = sext i16 %46 to i64
  %arrayidx54 = getelementptr inbounds float, ptr %45, i64 %idxprom53
  %47 = load float, ptr %arrayidx54, align 4
  %conv55 = fpext float %47 to double
  %mul56 = fmul double %conv55, 0x3FF6A09E667F3BCD
  %conv57 = fptrunc double %mul56 to float
  store float %conv57, ptr %f2, align 4
  %48 = load float, ptr %f0, align 4
  %sub58 = fsub float %48, %conv57
  %49 = load ptr, ptr %gi, align 8
  %50 = load i16, ptr %k2, align 2
  %idxprom59 = sext i16 %50 to i64
  %arrayidx60 = getelementptr inbounds float, ptr %49, i64 %idxprom59
  store float %sub58, ptr %arrayidx60, align 4
  %51 = load float, ptr %f0, align 4
  %52 = load float, ptr %f2, align 4
  %add61 = fadd float %51, %52
  %53 = load ptr, ptr %gi, align 8
  store float %add61, ptr %53, align 4
  %54 = load float, ptr %f1, align 4
  %55 = load float, ptr %f3, align 4
  %sub63 = fsub float %54, %55
  %56 = load i16, ptr %k3, align 2
  %idxprom64 = sext i16 %56 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %53, i64 %idxprom64
  store float %sub63, ptr %arrayidx65, align 4
  %57 = load float, ptr %f1, align 4
  %58 = load float, ptr %f3, align 4
  %add66 = fadd float %57, %58
  %59 = load ptr, ptr %gi, align 8
  %60 = load i16, ptr %k1, align 2
  %idxprom67 = sext i16 %60 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %59, i64 %idxprom67
  store float %add66, ptr %arrayidx68, align 4
  %61 = load i16, ptr %k4, align 2
  %idx.ext70 = sext i16 %61 to i64
  %add.ptr71 = getelementptr inbounds float, ptr %59, i64 %idx.ext70
  store ptr %add.ptr71, ptr %gi, align 8
  %62 = load ptr, ptr %fi, align 8
  %idx.ext73 = sext i16 %61 to i64
  %add.ptr74 = getelementptr inbounds float, ptr %62, i64 %idx.ext73
  store ptr %add.ptr74, ptr %fi, align 8
  %63 = load ptr, ptr %fi, align 8
  %64 = load ptr, ptr %fn, align 8
  %cmp = icmp ult ptr %63, %64
  br i1 %cmp, label %do.body14, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.body14
  %65 = load ptr, ptr %tri, align 8
  %66 = load float, ptr %65, align 4
  store float %66, ptr %c1, align 4
  %arrayidx77 = getelementptr inbounds float, ptr %65, i64 1
  %67 = load float, ptr %arrayidx77, align 4
  store float %67, ptr %s1, align 4
  br label %for.cond

for.cond:                                         ; preds = %do.end187, %do.end
  %storemerge = phi i16 [ 1, %do.end ], [ %inc, %do.end187 ]
  store i16 %storemerge, ptr %i, align 2
  %68 = load i16, ptr %kx, align 2
  %cmp80 = icmp slt i16 %storemerge, %68
  br i1 %cmp80, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load float, ptr %s1, align 4
  %neg = fmul float %69, -2.000000e+00
  %70 = call float @llvm.fmuladd.f32(float %neg, float %69, float 1.000000e+00)
  store float %70, ptr %c2, align 4
  %mul84 = fmul float %69, 2.000000e+00
  %71 = load float, ptr %c1, align 4
  %mul85 = fmul float %mul84, %71
  store float %mul85, ptr %s2, align 4
  %72 = load ptr, ptr %fz.addr, align 8
  %73 = load i16, ptr %i, align 2
  %idx.ext87 = sext i16 %73 to i64
  %add.ptr88 = getelementptr inbounds float, ptr %72, i64 %idx.ext87
  store ptr %add.ptr88, ptr %fi, align 8
  %74 = load i16, ptr %k1, align 2
  %idx.ext90 = sext i16 %74 to i64
  %add.ptr91 = getelementptr inbounds float, ptr %72, i64 %idx.ext90
  %75 = load i16, ptr %i, align 2
  %idx.ext93 = sext i16 %75 to i64
  %idx.neg = sub nsw i64 0, %idx.ext93
  %add.ptr94 = getelementptr inbounds float, ptr %add.ptr91, i64 %idx.neg
  store ptr %add.ptr94, ptr %gi, align 8
  br label %do.body95

do.body95:                                        ; preds = %do.body95, %for.body
  %76 = load float, ptr %s2, align 4
  %77 = load ptr, ptr %fi, align 8
  %78 = load i16, ptr %k1, align 2
  %idxprom100 = sext i16 %78 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %77, i64 %idxprom100
  %79 = load float, ptr %arrayidx101, align 4
  %80 = load float, ptr %c2, align 4
  %81 = load ptr, ptr %gi, align 8
  %idxprom103 = sext i16 %78 to i64
  %arrayidx104 = getelementptr inbounds float, ptr %81, i64 %idxprom103
  %82 = load float, ptr %arrayidx104, align 4
  %83 = fneg float %80
  %neg106 = fmul float %82, %83
  %84 = call float @llvm.fmuladd.f32(float %76, float %79, float %neg106)
  store float %84, ptr %b, align 4
  %85 = load float, ptr %c2, align 4
  %86 = load ptr, ptr %fi, align 8
  %87 = load i16, ptr %k1, align 2
  %idxprom107 = sext i16 %87 to i64
  %arrayidx108 = getelementptr inbounds float, ptr %86, i64 %idxprom107
  %88 = load float, ptr %arrayidx108, align 4
  %89 = load float, ptr %s2, align 4
  %90 = load ptr, ptr %gi, align 8
  %idxprom110 = sext i16 %87 to i64
  %arrayidx111 = getelementptr inbounds float, ptr %90, i64 %idxprom110
  %91 = load float, ptr %arrayidx111, align 4
  %mul112 = fmul float %89, %91
  %92 = call float @llvm.fmuladd.f32(float %85, float %88, float %mul112)
  store float %92, ptr %a, align 4
  %93 = load ptr, ptr %fi, align 8
  %94 = load float, ptr %93, align 4
  %sub114 = fsub float %94, %92
  store float %sub114, ptr %f197, align 4
  %add116 = fadd float %94, %92
  store float %add116, ptr %f096, align 4
  %95 = load ptr, ptr %gi, align 8
  %96 = load float, ptr %95, align 4
  %97 = load float, ptr %b, align 4
  %sub118 = fsub float %96, %97
  store float %sub118, ptr %g1, align 4
  %add120 = fadd float %96, %97
  store float %add120, ptr %g0, align 4
  %98 = load float, ptr %s2, align 4
  %99 = load ptr, ptr %fi, align 8
  %100 = load i16, ptr %k3, align 2
  %idxprom121 = sext i16 %100 to i64
  %arrayidx122 = getelementptr inbounds float, ptr %99, i64 %idxprom121
  %101 = load float, ptr %arrayidx122, align 4
  %102 = load float, ptr %c2, align 4
  %103 = load ptr, ptr %gi, align 8
  %idxprom124 = sext i16 %100 to i64
  %arrayidx125 = getelementptr inbounds float, ptr %103, i64 %idxprom124
  %104 = load float, ptr %arrayidx125, align 4
  %105 = fneg float %102
  %neg127 = fmul float %104, %105
  %106 = call float @llvm.fmuladd.f32(float %98, float %101, float %neg127)
  store float %106, ptr %b, align 4
  %107 = load float, ptr %c2, align 4
  %108 = load ptr, ptr %fi, align 8
  %109 = load i16, ptr %k3, align 2
  %idxprom128 = sext i16 %109 to i64
  %arrayidx129 = getelementptr inbounds float, ptr %108, i64 %idxprom128
  %110 = load float, ptr %arrayidx129, align 4
  %111 = load float, ptr %s2, align 4
  %112 = load ptr, ptr %gi, align 8
  %idxprom131 = sext i16 %109 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %112, i64 %idxprom131
  %113 = load float, ptr %arrayidx132, align 4
  %mul133 = fmul float %111, %113
  %114 = call float @llvm.fmuladd.f32(float %107, float %110, float %mul133)
  store float %114, ptr %a, align 4
  %115 = load ptr, ptr %fi, align 8
  %116 = load i16, ptr %k2, align 2
  %idxprom134 = sext i16 %116 to i64
  %arrayidx135 = getelementptr inbounds float, ptr %115, i64 %idxprom134
  %117 = load float, ptr %arrayidx135, align 4
  %sub136 = fsub float %117, %114
  store float %sub136, ptr %f399, align 4
  %118 = load ptr, ptr %fi, align 8
  %119 = load i16, ptr %k2, align 2
  %idxprom137 = sext i16 %119 to i64
  %arrayidx138 = getelementptr inbounds float, ptr %118, i64 %idxprom137
  %120 = load float, ptr %arrayidx138, align 4
  %121 = load float, ptr %a, align 4
  %add139 = fadd float %120, %121
  store float %add139, ptr %f298, align 4
  %122 = load ptr, ptr %gi, align 8
  %123 = load i16, ptr %k2, align 2
  %idxprom140 = sext i16 %123 to i64
  %arrayidx141 = getelementptr inbounds float, ptr %122, i64 %idxprom140
  %124 = load float, ptr %arrayidx141, align 4
  %125 = load float, ptr %b, align 4
  %sub142 = fsub float %124, %125
  store float %sub142, ptr %g3, align 4
  %126 = load ptr, ptr %gi, align 8
  %127 = load i16, ptr %k2, align 2
  %idxprom143 = sext i16 %127 to i64
  %arrayidx144 = getelementptr inbounds float, ptr %126, i64 %idxprom143
  %128 = load float, ptr %arrayidx144, align 4
  %129 = load float, ptr %b, align 4
  %add145 = fadd float %128, %129
  store float %add145, ptr %g2, align 4
  %130 = load float, ptr %s1, align 4
  %131 = load float, ptr %f298, align 4
  %132 = load float, ptr %c1, align 4
  %133 = load float, ptr %g3, align 4
  %134 = fneg float %132
  %neg148 = fmul float %133, %134
  %135 = call float @llvm.fmuladd.f32(float %130, float %131, float %neg148)
  store float %135, ptr %b, align 4
  %136 = load float, ptr %f298, align 4
  %137 = load float, ptr %s1, align 4
  %138 = load float, ptr %g3, align 4
  %mul150 = fmul float %137, %138
  %139 = call float @llvm.fmuladd.f32(float %132, float %136, float %mul150)
  store float %139, ptr %a, align 4
  %140 = load float, ptr %f096, align 4
  %sub151 = fsub float %140, %139
  %141 = load ptr, ptr %fi, align 8
  %142 = load i16, ptr %k2, align 2
  %idxprom152 = sext i16 %142 to i64
  %arrayidx153 = getelementptr inbounds float, ptr %141, i64 %idxprom152
  store float %sub151, ptr %arrayidx153, align 4
  %143 = load float, ptr %f096, align 4
  %144 = load float, ptr %a, align 4
  %add154 = fadd float %143, %144
  %145 = load ptr, ptr %fi, align 8
  store float %add154, ptr %145, align 4
  %146 = load float, ptr %g1, align 4
  %147 = load float, ptr %b, align 4
  %sub156 = fsub float %146, %147
  %148 = load ptr, ptr %gi, align 8
  %149 = load i16, ptr %k3, align 2
  %idxprom157 = sext i16 %149 to i64
  %arrayidx158 = getelementptr inbounds float, ptr %148, i64 %idxprom157
  store float %sub156, ptr %arrayidx158, align 4
  %150 = load float, ptr %g1, align 4
  %151 = load float, ptr %b, align 4
  %add159 = fadd float %150, %151
  %152 = load ptr, ptr %gi, align 8
  %153 = load i16, ptr %k1, align 2
  %idxprom160 = sext i16 %153 to i64
  %arrayidx161 = getelementptr inbounds float, ptr %152, i64 %idxprom160
  store float %add159, ptr %arrayidx161, align 4
  %154 = load float, ptr %c1, align 4
  %155 = load float, ptr %g2, align 4
  %156 = load float, ptr %s1, align 4
  %157 = load float, ptr %f399, align 4
  %158 = fneg float %156
  %neg164 = fmul float %157, %158
  %159 = call float @llvm.fmuladd.f32(float %154, float %155, float %neg164)
  store float %159, ptr %b, align 4
  %160 = load float, ptr %g2, align 4
  %161 = load float, ptr %c1, align 4
  %162 = load float, ptr %f399, align 4
  %mul166 = fmul float %161, %162
  %163 = call float @llvm.fmuladd.f32(float %156, float %160, float %mul166)
  store float %163, ptr %a, align 4
  %164 = load float, ptr %g0, align 4
  %sub167 = fsub float %164, %163
  %165 = load ptr, ptr %gi, align 8
  %166 = load i16, ptr %k2, align 2
  %idxprom168 = sext i16 %166 to i64
  %arrayidx169 = getelementptr inbounds float, ptr %165, i64 %idxprom168
  store float %sub167, ptr %arrayidx169, align 4
  %167 = load float, ptr %g0, align 4
  %168 = load float, ptr %a, align 4
  %add170 = fadd float %167, %168
  %169 = load ptr, ptr %gi, align 8
  store float %add170, ptr %169, align 4
  %170 = load float, ptr %f197, align 4
  %171 = load float, ptr %b, align 4
  %sub172 = fsub float %170, %171
  %172 = load ptr, ptr %fi, align 8
  %173 = load i16, ptr %k3, align 2
  %idxprom173 = sext i16 %173 to i64
  %arrayidx174 = getelementptr inbounds float, ptr %172, i64 %idxprom173
  store float %sub172, ptr %arrayidx174, align 4
  %174 = load float, ptr %f197, align 4
  %175 = load float, ptr %b, align 4
  %add175 = fadd float %174, %175
  %176 = load ptr, ptr %fi, align 8
  %177 = load i16, ptr %k1, align 2
  %idxprom176 = sext i16 %177 to i64
  %arrayidx177 = getelementptr inbounds float, ptr %176, i64 %idxprom176
  store float %add175, ptr %arrayidx177, align 4
  %178 = load i16, ptr %k4, align 2
  %179 = load ptr, ptr %gi, align 8
  %idx.ext179 = sext i16 %178 to i64
  %add.ptr180 = getelementptr inbounds float, ptr %179, i64 %idx.ext179
  store ptr %add.ptr180, ptr %gi, align 8
  %180 = load ptr, ptr %fi, align 8
  %idx.ext182 = sext i16 %178 to i64
  %add.ptr183 = getelementptr inbounds float, ptr %180, i64 %idx.ext182
  store ptr %add.ptr183, ptr %fi, align 8
  %181 = load ptr, ptr %fi, align 8
  %182 = load ptr, ptr %fn, align 8
  %cmp185 = icmp ult ptr %181, %182
  br i1 %cmp185, label %do.body95, label %do.end187, !llvm.loop !12

do.end187:                                        ; preds = %do.body95
  %183 = load float, ptr %c1, align 4
  store float %183, ptr %c2, align 4
  %184 = load ptr, ptr %tri, align 8
  %185 = load float, ptr %184, align 4
  %186 = load float, ptr %s1, align 4
  %arrayidx190 = getelementptr inbounds float, ptr %184, i64 1
  %187 = load float, ptr %arrayidx190, align 4
  %188 = fneg float %186
  %neg192 = fmul float %187, %188
  %189 = call float @llvm.fmuladd.f32(float %183, float %185, float %neg192)
  store float %189, ptr %c1, align 4
  %190 = load float, ptr %c2, align 4
  %191 = load ptr, ptr %tri, align 8
  %arrayidx193 = getelementptr inbounds float, ptr %191, i64 1
  %192 = load float, ptr %arrayidx193, align 4
  %193 = load float, ptr %s1, align 4
  %194 = load float, ptr %191, align 4
  %mul196 = fmul float %193, %194
  %195 = call float @llvm.fmuladd.f32(float %190, float %192, float %mul196)
  store float %195, ptr %s1, align 4
  %196 = load i16, ptr %i, align 2
  %inc = add i16 %196, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %197 = load ptr, ptr %tri, align 8
  %add.ptr197 = getelementptr inbounds float, ptr %197, i64 2
  store ptr %add.ptr197, ptr %tri, align 8
  %198 = load i16, ptr %k4, align 2
  %199 = load i16, ptr %n.addr, align 2
  %cmp201 = icmp slt i16 %198, %199
  br i1 %cmp201, label %do.body, label %do.end203, !llvm.loop !14

do.end203:                                        ; preds = %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @fft_long(ptr noundef %x, i32 noundef %chn, ptr noundef %buffer) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %chn.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %i = alloca i16, align 2
  %jj = alloca i16, align 2
  %f0 = alloca float, align 4
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  %f3 = alloca float, align 4
  %f0129 = alloca float, align 4
  %f1130 = alloca float, align 4
  %f2131 = alloca float, align 4
  %f3132 = alloca float, align 4
  %f0323 = alloca float, align 4
  %f1324 = alloca float, align 4
  %f2325 = alloca float, align 4
  %f3326 = alloca float, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %chn, ptr %chn.addr, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  store i16 127, ptr %jj, align 2
  %add.ptr = getelementptr inbounds float, ptr %x, i64 512
  store ptr %add.ptr, ptr %x.addr, align 8
  %cmp = icmp slt i32 %chn, 2
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry, %do.body
  %0 = load i16, ptr %jj, align 2
  %idxprom = sext i16 %0 to i64
  %arrayidx = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom
  %1 = load i16, ptr %arrayidx, align 2
  store i16 %1, ptr %i, align 2
  %idxprom1 = sext i16 %1 to i64
  %arrayidx2 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom1
  %2 = load float, ptr %arrayidx2, align 4
  %3 = load ptr, ptr %buffer.addr, align 8
  %4 = load i32, ptr %chn.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %3, i64 %idxprom3
  %5 = load ptr, ptr %arrayidx4, align 8
  %6 = load i16, ptr %i, align 2
  %idxprom5 = sext i16 %6 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %5, i64 %idxprom5
  %7 = load i16, ptr %arrayidx6, align 2
  %conv7 = sitofp i16 %7 to float
  %mul = fmul float %2, %conv7
  store float %mul, ptr %f0, align 4
  %8 = load i16, ptr %i, align 2
  %conv8 = sext i16 %8 to i64
  %sub = sub nsw i64 511, %conv8
  %arrayidx10 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub
  %9 = load float, ptr %arrayidx10, align 4
  %10 = load ptr, ptr %buffer.addr, align 8
  %11 = load i32, ptr %chn.addr, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %10, i64 %idxprom11
  %12 = load ptr, ptr %arrayidx12, align 8
  %13 = load i16, ptr %i, align 2
  %conv13 = sext i16 %13 to i64
  %add = add nsw i64 %conv13, 512
  %arrayidx15 = getelementptr inbounds i16, ptr %12, i64 %add
  %14 = load i16, ptr %arrayidx15, align 2
  %conv17 = sitofp i16 %14 to float
  %mul18 = fmul float %9, %conv17
  %15 = load float, ptr %f0, align 4
  %sub19 = fsub float %15, %mul18
  store float %sub19, ptr %f1, align 4
  %add20 = fadd float %15, %mul18
  store float %add20, ptr %f0, align 4
  %16 = load i16, ptr %i, align 2
  %conv21 = sext i16 %16 to i64
  %add22 = add nsw i64 %conv21, 256
  %arrayidx24 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %add22
  %17 = load float, ptr %arrayidx24, align 4
  %18 = load ptr, ptr %buffer.addr, align 8
  %19 = load i32, ptr %chn.addr, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %18, i64 %idxprom25
  %20 = load ptr, ptr %arrayidx26, align 8
  %21 = load i16, ptr %i, align 2
  %conv27 = sext i16 %21 to i64
  %add28 = add nsw i64 %conv27, 256
  %arrayidx30 = getelementptr inbounds i16, ptr %20, i64 %add28
  %22 = load i16, ptr %arrayidx30, align 2
  %conv32 = sitofp i16 %22 to float
  %mul33 = fmul float %17, %conv32
  store float %mul33, ptr %f2, align 4
  %23 = load i16, ptr %i, align 2
  %conv34 = sext i16 %23 to i64
  %sub35 = sub nsw i64 255, %conv34
  %arrayidx37 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub35
  %24 = load float, ptr %arrayidx37, align 4
  %25 = load ptr, ptr %buffer.addr, align 8
  %26 = load i32, ptr %chn.addr, align 4
  %idxprom38 = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %25, i64 %idxprom38
  %27 = load ptr, ptr %arrayidx39, align 8
  %28 = load i16, ptr %i, align 2
  %conv40 = sext i16 %28 to i64
  %add41 = add nsw i64 %conv40, 768
  %arrayidx43 = getelementptr inbounds i16, ptr %27, i64 %add41
  %29 = load i16, ptr %arrayidx43, align 2
  %conv45 = sitofp i16 %29 to float
  %mul46 = fmul float %24, %conv45
  %30 = load float, ptr %f2, align 4
  %sub47 = fsub float %30, %mul46
  store float %sub47, ptr %f3, align 4
  %add48 = fadd float %30, %mul46
  store float %add48, ptr %f2, align 4
  %31 = load ptr, ptr %x.addr, align 8
  %add.ptr49 = getelementptr inbounds float, ptr %31, i64 -4
  store ptr %add.ptr49, ptr %x.addr, align 8
  %32 = load float, ptr %f0, align 4
  %add50 = fadd float %32, %add48
  store float %add50, ptr %add.ptr49, align 4
  %33 = load float, ptr %f2, align 4
  %sub52 = fsub float %32, %33
  %arrayidx53 = getelementptr inbounds float, ptr %31, i64 -2
  store float %sub52, ptr %arrayidx53, align 4
  %34 = load float, ptr %f1, align 4
  %35 = load float, ptr %f3, align 4
  %add54 = fadd float %34, %35
  %36 = load ptr, ptr %x.addr, align 8
  %arrayidx55 = getelementptr inbounds float, ptr %36, i64 1
  store float %add54, ptr %arrayidx55, align 4
  %sub56 = fsub float %34, %35
  %arrayidx57 = getelementptr inbounds float, ptr %36, i64 3
  store float %sub56, ptr %arrayidx57, align 4
  %37 = load i16, ptr %i, align 2
  %conv58 = sext i16 %37 to i64
  %add59 = add nsw i64 %conv58, 1
  %arrayidx61 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %add59
  %38 = load float, ptr %arrayidx61, align 4
  %39 = load ptr, ptr %buffer.addr, align 8
  %40 = load i32, ptr %chn.addr, align 4
  %idxprom62 = sext i32 %40 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %39, i64 %idxprom62
  %41 = load ptr, ptr %arrayidx63, align 8
  %42 = load i16, ptr %i, align 2
  %conv64 = sext i16 %42 to i64
  %add65 = add nsw i64 %conv64, 1
  %arrayidx67 = getelementptr inbounds i16, ptr %41, i64 %add65
  %43 = load i16, ptr %arrayidx67, align 2
  %conv69 = sitofp i16 %43 to float
  %mul70 = fmul float %38, %conv69
  store float %mul70, ptr %f0, align 4
  %44 = load i16, ptr %i, align 2
  %conv71 = sext i16 %44 to i64
  %sub72 = sub nsw i64 510, %conv71
  %arrayidx74 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub72
  %45 = load float, ptr %arrayidx74, align 4
  %46 = load ptr, ptr %buffer.addr, align 8
  %47 = load i32, ptr %chn.addr, align 4
  %idxprom75 = sext i32 %47 to i64
  %arrayidx76 = getelementptr inbounds ptr, ptr %46, i64 %idxprom75
  %48 = load ptr, ptr %arrayidx76, align 8
  %49 = load i16, ptr %i, align 2
  %conv77 = sext i16 %49 to i64
  %add78 = add nsw i64 %conv77, 513
  %arrayidx80 = getelementptr inbounds i16, ptr %48, i64 %add78
  %50 = load i16, ptr %arrayidx80, align 2
  %conv82 = sitofp i16 %50 to float
  %mul83 = fmul float %45, %conv82
  %51 = load float, ptr %f0, align 4
  %sub84 = fsub float %51, %mul83
  store float %sub84, ptr %f1, align 4
  %add85 = fadd float %51, %mul83
  store float %add85, ptr %f0, align 4
  %52 = load i16, ptr %i, align 2
  %conv86 = sext i16 %52 to i64
  %add87 = add nsw i64 %conv86, 257
  %arrayidx89 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %add87
  %53 = load float, ptr %arrayidx89, align 4
  %54 = load ptr, ptr %buffer.addr, align 8
  %55 = load i32, ptr %chn.addr, align 4
  %idxprom90 = sext i32 %55 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %54, i64 %idxprom90
  %56 = load ptr, ptr %arrayidx91, align 8
  %57 = load i16, ptr %i, align 2
  %conv92 = sext i16 %57 to i64
  %add93 = add nsw i64 %conv92, 257
  %arrayidx95 = getelementptr inbounds i16, ptr %56, i64 %add93
  %58 = load i16, ptr %arrayidx95, align 2
  %conv97 = sitofp i16 %58 to float
  %mul98 = fmul float %53, %conv97
  store float %mul98, ptr %f2, align 4
  %59 = load i16, ptr %i, align 2
  %conv99 = sext i16 %59 to i64
  %sub100 = sub nsw i64 254, %conv99
  %arrayidx102 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub100
  %60 = load float, ptr %arrayidx102, align 4
  %61 = load ptr, ptr %buffer.addr, align 8
  %62 = load i32, ptr %chn.addr, align 4
  %idxprom103 = sext i32 %62 to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %61, i64 %idxprom103
  %63 = load ptr, ptr %arrayidx104, align 8
  %64 = load i16, ptr %i, align 2
  %conv105 = sext i16 %64 to i64
  %add106 = add nsw i64 %conv105, 769
  %arrayidx108 = getelementptr inbounds i16, ptr %63, i64 %add106
  %65 = load i16, ptr %arrayidx108, align 2
  %conv110 = sitofp i16 %65 to float
  %mul111 = fmul float %60, %conv110
  %66 = load float, ptr %f2, align 4
  %sub112 = fsub float %66, %mul111
  store float %sub112, ptr %f3, align 4
  %add113 = fadd float %66, %mul111
  store float %add113, ptr %f2, align 4
  %67 = load float, ptr %f0, align 4
  %add114 = fadd float %67, %add113
  %68 = load ptr, ptr %x.addr, align 8
  %arrayidx115 = getelementptr inbounds float, ptr %68, i64 512
  store float %add114, ptr %arrayidx115, align 4
  %sub116 = fsub float %67, %add113
  %arrayidx117 = getelementptr inbounds float, ptr %68, i64 514
  store float %sub116, ptr %arrayidx117, align 4
  %69 = load float, ptr %f1, align 4
  %70 = load float, ptr %f3, align 4
  %add118 = fadd float %69, %70
  %71 = load ptr, ptr %x.addr, align 8
  %arrayidx119 = getelementptr inbounds float, ptr %71, i64 513
  store float %add118, ptr %arrayidx119, align 4
  %sub120 = fsub float %69, %70
  %arrayidx121 = getelementptr inbounds float, ptr %71, i64 515
  store float %sub120, ptr %arrayidx121, align 4
  %72 = load i16, ptr %jj, align 2
  %dec = add i16 %72, -1
  store i16 %dec, ptr %jj, align 2
  %cmp123 = icmp sgt i16 %dec, -1
  br i1 %cmp123, label %do.body, label %if.end515, !llvm.loop !15

if.else:                                          ; preds = %entry
  %73 = load i32, ptr %chn.addr, align 4
  %cmp125 = icmp eq i32 %73, 2
  br i1 %cmp125, label %do.body128, label %do.body322

do.body128:                                       ; preds = %if.else, %do.body128
  %74 = load i16, ptr %jj, align 2
  %idxprom134 = sext i16 %74 to i64
  %arrayidx135 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom134
  %75 = load i16, ptr %arrayidx135, align 2
  store i16 %75, ptr %i, align 2
  %idxprom136 = sext i16 %75 to i64
  %arrayidx137 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom136
  %76 = load float, ptr %arrayidx137, align 4
  %77 = load ptr, ptr %buffer.addr, align 8
  %78 = load ptr, ptr %77, align 8
  %idxprom139 = sext i16 %75 to i64
  %arrayidx140 = getelementptr inbounds i16, ptr %78, i64 %idxprom139
  %79 = load i16, ptr %arrayidx140, align 2
  %conv141 = sext i16 %79 to i32
  %arrayidx142 = getelementptr inbounds ptr, ptr %77, i64 1
  %80 = load ptr, ptr %arrayidx142, align 8
  %81 = load i16, ptr %i, align 2
  %idxprom143 = sext i16 %81 to i64
  %arrayidx144 = getelementptr inbounds i16, ptr %80, i64 %idxprom143
  %82 = load i16, ptr %arrayidx144, align 2
  %conv145 = sext i16 %82 to i32
  %add146 = add nsw i32 %conv141, %conv145
  %conv147 = sitofp i32 %add146 to float
  %mul148 = fmul float %conv147, 0x3FE6A09E60000000
  %mul149 = fmul float %76, %mul148
  store float %mul149, ptr %f0129, align 4
  %83 = load i16, ptr %i, align 2
  %conv150 = sext i16 %83 to i64
  %sub151 = sub nsw i64 511, %conv150
  %arrayidx153 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub151
  %84 = load float, ptr %arrayidx153, align 4
  %85 = load ptr, ptr %buffer.addr, align 8
  %86 = load ptr, ptr %85, align 8
  %87 = load i16, ptr %i, align 2
  %conv155 = sext i16 %87 to i64
  %add156 = add nsw i64 %conv155, 512
  %arrayidx158 = getelementptr inbounds i16, ptr %86, i64 %add156
  %88 = load i16, ptr %arrayidx158, align 2
  %conv159 = sext i16 %88 to i32
  %89 = load ptr, ptr %buffer.addr, align 8
  %arrayidx160 = getelementptr inbounds ptr, ptr %89, i64 1
  %90 = load ptr, ptr %arrayidx160, align 8
  %91 = load i16, ptr %i, align 2
  %conv161 = sext i16 %91 to i64
  %add162 = add nsw i64 %conv161, 512
  %arrayidx164 = getelementptr inbounds i16, ptr %90, i64 %add162
  %92 = load i16, ptr %arrayidx164, align 2
  %conv165 = sext i16 %92 to i32
  %add166 = add nsw i32 %conv159, %conv165
  %conv167 = sitofp i32 %add166 to float
  %mul168 = fmul float %conv167, 0x3FE6A09E60000000
  %mul169 = fmul float %84, %mul168
  %93 = load float, ptr %f0129, align 4
  %sub170 = fsub float %93, %mul169
  store float %sub170, ptr %f1130, align 4
  %add171 = fadd float %93, %mul169
  store float %add171, ptr %f0129, align 4
  %94 = load i16, ptr %i, align 2
  %conv172 = sext i16 %94 to i64
  %add173 = add nsw i64 %conv172, 256
  %arrayidx175 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %add173
  %95 = load float, ptr %arrayidx175, align 4
  %96 = load ptr, ptr %buffer.addr, align 8
  %97 = load ptr, ptr %96, align 8
  %98 = load i16, ptr %i, align 2
  %conv177 = sext i16 %98 to i64
  %add178 = add nsw i64 %conv177, 256
  %arrayidx180 = getelementptr inbounds i16, ptr %97, i64 %add178
  %99 = load i16, ptr %arrayidx180, align 2
  %conv181 = sext i16 %99 to i32
  %100 = load ptr, ptr %buffer.addr, align 8
  %arrayidx182 = getelementptr inbounds ptr, ptr %100, i64 1
  %101 = load ptr, ptr %arrayidx182, align 8
  %102 = load i16, ptr %i, align 2
  %conv183 = sext i16 %102 to i64
  %add184 = add nsw i64 %conv183, 256
  %arrayidx186 = getelementptr inbounds i16, ptr %101, i64 %add184
  %103 = load i16, ptr %arrayidx186, align 2
  %conv187 = sext i16 %103 to i32
  %add188 = add nsw i32 %conv181, %conv187
  %conv189 = sitofp i32 %add188 to float
  %mul190 = fmul float %conv189, 0x3FE6A09E60000000
  %mul191 = fmul float %95, %mul190
  store float %mul191, ptr %f2131, align 4
  %104 = load i16, ptr %i, align 2
  %conv192 = sext i16 %104 to i64
  %sub193 = sub nsw i64 255, %conv192
  %arrayidx195 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub193
  %105 = load float, ptr %arrayidx195, align 4
  %106 = load ptr, ptr %buffer.addr, align 8
  %107 = load ptr, ptr %106, align 8
  %108 = load i16, ptr %i, align 2
  %conv197 = sext i16 %108 to i64
  %add198 = add nsw i64 %conv197, 768
  %arrayidx200 = getelementptr inbounds i16, ptr %107, i64 %add198
  %109 = load i16, ptr %arrayidx200, align 2
  %conv201 = sext i16 %109 to i32
  %110 = load ptr, ptr %buffer.addr, align 8
  %arrayidx202 = getelementptr inbounds ptr, ptr %110, i64 1
  %111 = load ptr, ptr %arrayidx202, align 8
  %112 = load i16, ptr %i, align 2
  %conv203 = sext i16 %112 to i64
  %add204 = add nsw i64 %conv203, 768
  %arrayidx206 = getelementptr inbounds i16, ptr %111, i64 %add204
  %113 = load i16, ptr %arrayidx206, align 2
  %conv207 = sext i16 %113 to i32
  %add208 = add nsw i32 %conv201, %conv207
  %conv209 = sitofp i32 %add208 to float
  %mul210 = fmul float %conv209, 0x3FE6A09E60000000
  %mul211 = fmul float %105, %mul210
  %114 = load float, ptr %f2131, align 4
  %sub212 = fsub float %114, %mul211
  store float %sub212, ptr %f3132, align 4
  %add213 = fadd float %114, %mul211
  store float %add213, ptr %f2131, align 4
  %115 = load ptr, ptr %x.addr, align 8
  %add.ptr214 = getelementptr inbounds float, ptr %115, i64 -4
  store ptr %add.ptr214, ptr %x.addr, align 8
  %116 = load float, ptr %f0129, align 4
  %add215 = fadd float %116, %add213
  store float %add215, ptr %add.ptr214, align 4
  %117 = load float, ptr %f2131, align 4
  %sub217 = fsub float %116, %117
  %arrayidx218 = getelementptr inbounds float, ptr %115, i64 -2
  store float %sub217, ptr %arrayidx218, align 4
  %118 = load float, ptr %f1130, align 4
  %119 = load float, ptr %f3132, align 4
  %add219 = fadd float %118, %119
  %120 = load ptr, ptr %x.addr, align 8
  %arrayidx220 = getelementptr inbounds float, ptr %120, i64 1
  store float %add219, ptr %arrayidx220, align 4
  %sub221 = fsub float %118, %119
  %arrayidx222 = getelementptr inbounds float, ptr %120, i64 3
  store float %sub221, ptr %arrayidx222, align 4
  %121 = load i16, ptr %i, align 2
  %conv223 = sext i16 %121 to i64
  %add224 = add nsw i64 %conv223, 1
  %arrayidx226 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %add224
  %122 = load float, ptr %arrayidx226, align 4
  %123 = load ptr, ptr %buffer.addr, align 8
  %124 = load ptr, ptr %123, align 8
  %125 = load i16, ptr %i, align 2
  %conv228 = sext i16 %125 to i64
  %add229 = add nsw i64 %conv228, 1
  %arrayidx231 = getelementptr inbounds i16, ptr %124, i64 %add229
  %126 = load i16, ptr %arrayidx231, align 2
  %conv232 = sext i16 %126 to i32
  %127 = load ptr, ptr %buffer.addr, align 8
  %arrayidx233 = getelementptr inbounds ptr, ptr %127, i64 1
  %128 = load ptr, ptr %arrayidx233, align 8
  %129 = load i16, ptr %i, align 2
  %conv234 = sext i16 %129 to i64
  %add235 = add nsw i64 %conv234, 1
  %arrayidx237 = getelementptr inbounds i16, ptr %128, i64 %add235
  %130 = load i16, ptr %arrayidx237, align 2
  %conv238 = sext i16 %130 to i32
  %add239 = add nsw i32 %conv232, %conv238
  %conv240 = sitofp i32 %add239 to float
  %mul241 = fmul float %conv240, 0x3FE6A09E60000000
  %mul242 = fmul float %122, %mul241
  store float %mul242, ptr %f0129, align 4
  %131 = load i16, ptr %i, align 2
  %conv243 = sext i16 %131 to i64
  %sub244 = sub nsw i64 510, %conv243
  %arrayidx246 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub244
  %132 = load float, ptr %arrayidx246, align 4
  %133 = load ptr, ptr %buffer.addr, align 8
  %134 = load ptr, ptr %133, align 8
  %135 = load i16, ptr %i, align 2
  %conv248 = sext i16 %135 to i64
  %add249 = add nsw i64 %conv248, 513
  %arrayidx251 = getelementptr inbounds i16, ptr %134, i64 %add249
  %136 = load i16, ptr %arrayidx251, align 2
  %conv252 = sext i16 %136 to i32
  %137 = load ptr, ptr %buffer.addr, align 8
  %arrayidx253 = getelementptr inbounds ptr, ptr %137, i64 1
  %138 = load ptr, ptr %arrayidx253, align 8
  %139 = load i16, ptr %i, align 2
  %conv254 = sext i16 %139 to i64
  %add255 = add nsw i64 %conv254, 513
  %arrayidx257 = getelementptr inbounds i16, ptr %138, i64 %add255
  %140 = load i16, ptr %arrayidx257, align 2
  %conv258 = sext i16 %140 to i32
  %add259 = add nsw i32 %conv252, %conv258
  %conv260 = sitofp i32 %add259 to float
  %mul261 = fmul float %conv260, 0x3FE6A09E60000000
  %mul262 = fmul float %132, %mul261
  %141 = load float, ptr %f0129, align 4
  %sub263 = fsub float %141, %mul262
  store float %sub263, ptr %f1130, align 4
  %add264 = fadd float %141, %mul262
  store float %add264, ptr %f0129, align 4
  %142 = load i16, ptr %i, align 2
  %conv265 = sext i16 %142 to i64
  %add266 = add nsw i64 %conv265, 257
  %arrayidx268 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %add266
  %143 = load float, ptr %arrayidx268, align 4
  %144 = load ptr, ptr %buffer.addr, align 8
  %145 = load ptr, ptr %144, align 8
  %146 = load i16, ptr %i, align 2
  %conv270 = sext i16 %146 to i64
  %add271 = add nsw i64 %conv270, 257
  %arrayidx273 = getelementptr inbounds i16, ptr %145, i64 %add271
  %147 = load i16, ptr %arrayidx273, align 2
  %conv274 = sext i16 %147 to i32
  %148 = load ptr, ptr %buffer.addr, align 8
  %arrayidx275 = getelementptr inbounds ptr, ptr %148, i64 1
  %149 = load ptr, ptr %arrayidx275, align 8
  %150 = load i16, ptr %i, align 2
  %conv276 = sext i16 %150 to i64
  %add277 = add nsw i64 %conv276, 257
  %arrayidx279 = getelementptr inbounds i16, ptr %149, i64 %add277
  %151 = load i16, ptr %arrayidx279, align 2
  %conv280 = sext i16 %151 to i32
  %add281 = add nsw i32 %conv274, %conv280
  %conv282 = sitofp i32 %add281 to float
  %mul283 = fmul float %conv282, 0x3FE6A09E60000000
  %mul284 = fmul float %143, %mul283
  store float %mul284, ptr %f2131, align 4
  %152 = load i16, ptr %i, align 2
  %conv285 = sext i16 %152 to i64
  %sub286 = sub nsw i64 254, %conv285
  %arrayidx288 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub286
  %153 = load float, ptr %arrayidx288, align 4
  %154 = load ptr, ptr %buffer.addr, align 8
  %155 = load ptr, ptr %154, align 8
  %156 = load i16, ptr %i, align 2
  %conv290 = sext i16 %156 to i64
  %add291 = add nsw i64 %conv290, 769
  %arrayidx293 = getelementptr inbounds i16, ptr %155, i64 %add291
  %157 = load i16, ptr %arrayidx293, align 2
  %conv294 = sext i16 %157 to i32
  %158 = load ptr, ptr %buffer.addr, align 8
  %arrayidx295 = getelementptr inbounds ptr, ptr %158, i64 1
  %159 = load ptr, ptr %arrayidx295, align 8
  %160 = load i16, ptr %i, align 2
  %conv296 = sext i16 %160 to i64
  %add297 = add nsw i64 %conv296, 769
  %arrayidx299 = getelementptr inbounds i16, ptr %159, i64 %add297
  %161 = load i16, ptr %arrayidx299, align 2
  %conv300 = sext i16 %161 to i32
  %add301 = add nsw i32 %conv294, %conv300
  %conv302 = sitofp i32 %add301 to float
  %mul303 = fmul float %conv302, 0x3FE6A09E60000000
  %mul304 = fmul float %153, %mul303
  %162 = load float, ptr %f2131, align 4
  %sub305 = fsub float %162, %mul304
  store float %sub305, ptr %f3132, align 4
  %add306 = fadd float %162, %mul304
  store float %add306, ptr %f2131, align 4
  %163 = load float, ptr %f0129, align 4
  %add307 = fadd float %163, %add306
  %164 = load ptr, ptr %x.addr, align 8
  %arrayidx308 = getelementptr inbounds float, ptr %164, i64 512
  store float %add307, ptr %arrayidx308, align 4
  %sub309 = fsub float %163, %add306
  %arrayidx310 = getelementptr inbounds float, ptr %164, i64 514
  store float %sub309, ptr %arrayidx310, align 4
  %165 = load float, ptr %f1130, align 4
  %166 = load float, ptr %f3132, align 4
  %add311 = fadd float %165, %166
  %167 = load ptr, ptr %x.addr, align 8
  %arrayidx312 = getelementptr inbounds float, ptr %167, i64 513
  store float %add311, ptr %arrayidx312, align 4
  %sub313 = fsub float %165, %166
  %arrayidx314 = getelementptr inbounds float, ptr %167, i64 515
  store float %sub313, ptr %arrayidx314, align 4
  %168 = load i16, ptr %jj, align 2
  %dec316 = add i16 %168, -1
  store i16 %dec316, ptr %jj, align 2
  %cmp318 = icmp sgt i16 %dec316, -1
  br i1 %cmp318, label %do.body128, label %if.end515, !llvm.loop !16

do.body322:                                       ; preds = %if.else, %do.body322
  %169 = load i16, ptr %jj, align 2
  %idxprom328 = sext i16 %169 to i64
  %arrayidx329 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom328
  %170 = load i16, ptr %arrayidx329, align 2
  store i16 %170, ptr %i, align 2
  %idxprom330 = sext i16 %170 to i64
  %arrayidx331 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom330
  %171 = load float, ptr %arrayidx331, align 4
  %172 = load ptr, ptr %buffer.addr, align 8
  %173 = load ptr, ptr %172, align 8
  %idxprom333 = sext i16 %170 to i64
  %arrayidx334 = getelementptr inbounds i16, ptr %173, i64 %idxprom333
  %174 = load i16, ptr %arrayidx334, align 2
  %conv335 = sext i16 %174 to i32
  %arrayidx336 = getelementptr inbounds ptr, ptr %172, i64 1
  %175 = load ptr, ptr %arrayidx336, align 8
  %176 = load i16, ptr %i, align 2
  %idxprom337 = sext i16 %176 to i64
  %arrayidx338 = getelementptr inbounds i16, ptr %175, i64 %idxprom337
  %177 = load i16, ptr %arrayidx338, align 2
  %conv339 = sext i16 %177 to i32
  %sub340 = sub nsw i32 %conv335, %conv339
  %conv341 = sitofp i32 %sub340 to float
  %mul342 = fmul float %conv341, 0x3FE6A09E60000000
  %mul343 = fmul float %171, %mul342
  store float %mul343, ptr %f0323, align 4
  %178 = load i16, ptr %i, align 2
  %conv344 = sext i16 %178 to i64
  %sub345 = sub nsw i64 511, %conv344
  %arrayidx347 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub345
  %179 = load float, ptr %arrayidx347, align 4
  %180 = load ptr, ptr %buffer.addr, align 8
  %181 = load ptr, ptr %180, align 8
  %182 = load i16, ptr %i, align 2
  %conv349 = sext i16 %182 to i64
  %add350 = add nsw i64 %conv349, 512
  %arrayidx352 = getelementptr inbounds i16, ptr %181, i64 %add350
  %183 = load i16, ptr %arrayidx352, align 2
  %conv353 = sext i16 %183 to i32
  %184 = load ptr, ptr %buffer.addr, align 8
  %arrayidx354 = getelementptr inbounds ptr, ptr %184, i64 1
  %185 = load ptr, ptr %arrayidx354, align 8
  %186 = load i16, ptr %i, align 2
  %conv355 = sext i16 %186 to i64
  %add356 = add nsw i64 %conv355, 512
  %arrayidx358 = getelementptr inbounds i16, ptr %185, i64 %add356
  %187 = load i16, ptr %arrayidx358, align 2
  %conv359 = sext i16 %187 to i32
  %sub360 = sub nsw i32 %conv353, %conv359
  %conv361 = sitofp i32 %sub360 to float
  %mul362 = fmul float %conv361, 0x3FE6A09E60000000
  %mul363 = fmul float %179, %mul362
  %188 = load float, ptr %f0323, align 4
  %sub364 = fsub float %188, %mul363
  store float %sub364, ptr %f1324, align 4
  %add365 = fadd float %188, %mul363
  store float %add365, ptr %f0323, align 4
  %189 = load i16, ptr %i, align 2
  %conv366 = sext i16 %189 to i64
  %add367 = add nsw i64 %conv366, 256
  %arrayidx369 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %add367
  %190 = load float, ptr %arrayidx369, align 4
  %191 = load ptr, ptr %buffer.addr, align 8
  %192 = load ptr, ptr %191, align 8
  %193 = load i16, ptr %i, align 2
  %conv371 = sext i16 %193 to i64
  %add372 = add nsw i64 %conv371, 256
  %arrayidx374 = getelementptr inbounds i16, ptr %192, i64 %add372
  %194 = load i16, ptr %arrayidx374, align 2
  %conv375 = sext i16 %194 to i32
  %195 = load ptr, ptr %buffer.addr, align 8
  %arrayidx376 = getelementptr inbounds ptr, ptr %195, i64 1
  %196 = load ptr, ptr %arrayidx376, align 8
  %197 = load i16, ptr %i, align 2
  %conv377 = sext i16 %197 to i64
  %add378 = add nsw i64 %conv377, 256
  %arrayidx380 = getelementptr inbounds i16, ptr %196, i64 %add378
  %198 = load i16, ptr %arrayidx380, align 2
  %conv381 = sext i16 %198 to i32
  %sub382 = sub nsw i32 %conv375, %conv381
  %conv383 = sitofp i32 %sub382 to float
  %mul384 = fmul float %conv383, 0x3FE6A09E60000000
  %mul385 = fmul float %190, %mul384
  store float %mul385, ptr %f2325, align 4
  %199 = load i16, ptr %i, align 2
  %conv386 = sext i16 %199 to i64
  %sub387 = sub nsw i64 255, %conv386
  %arrayidx389 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub387
  %200 = load float, ptr %arrayidx389, align 4
  %201 = load ptr, ptr %buffer.addr, align 8
  %202 = load ptr, ptr %201, align 8
  %203 = load i16, ptr %i, align 2
  %conv391 = sext i16 %203 to i64
  %add392 = add nsw i64 %conv391, 768
  %arrayidx394 = getelementptr inbounds i16, ptr %202, i64 %add392
  %204 = load i16, ptr %arrayidx394, align 2
  %conv395 = sext i16 %204 to i32
  %205 = load ptr, ptr %buffer.addr, align 8
  %arrayidx396 = getelementptr inbounds ptr, ptr %205, i64 1
  %206 = load ptr, ptr %arrayidx396, align 8
  %207 = load i16, ptr %i, align 2
  %conv397 = sext i16 %207 to i64
  %add398 = add nsw i64 %conv397, 768
  %arrayidx400 = getelementptr inbounds i16, ptr %206, i64 %add398
  %208 = load i16, ptr %arrayidx400, align 2
  %conv401 = sext i16 %208 to i32
  %sub402 = sub nsw i32 %conv395, %conv401
  %conv403 = sitofp i32 %sub402 to float
  %mul404 = fmul float %conv403, 0x3FE6A09E60000000
  %mul405 = fmul float %200, %mul404
  %209 = load float, ptr %f2325, align 4
  %sub406 = fsub float %209, %mul405
  store float %sub406, ptr %f3326, align 4
  %add407 = fadd float %209, %mul405
  store float %add407, ptr %f2325, align 4
  %210 = load ptr, ptr %x.addr, align 8
  %add.ptr408 = getelementptr inbounds float, ptr %210, i64 -4
  store ptr %add.ptr408, ptr %x.addr, align 8
  %211 = load float, ptr %f0323, align 4
  %add409 = fadd float %211, %add407
  store float %add409, ptr %add.ptr408, align 4
  %212 = load float, ptr %f2325, align 4
  %sub411 = fsub float %211, %212
  %arrayidx412 = getelementptr inbounds float, ptr %210, i64 -2
  store float %sub411, ptr %arrayidx412, align 4
  %213 = load float, ptr %f1324, align 4
  %214 = load float, ptr %f3326, align 4
  %add413 = fadd float %213, %214
  %215 = load ptr, ptr %x.addr, align 8
  %arrayidx414 = getelementptr inbounds float, ptr %215, i64 1
  store float %add413, ptr %arrayidx414, align 4
  %sub415 = fsub float %213, %214
  %arrayidx416 = getelementptr inbounds float, ptr %215, i64 3
  store float %sub415, ptr %arrayidx416, align 4
  %216 = load i16, ptr %i, align 2
  %conv417 = sext i16 %216 to i64
  %add418 = add nsw i64 %conv417, 1
  %arrayidx420 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %add418
  %217 = load float, ptr %arrayidx420, align 4
  %218 = load ptr, ptr %buffer.addr, align 8
  %219 = load ptr, ptr %218, align 8
  %220 = load i16, ptr %i, align 2
  %conv422 = sext i16 %220 to i64
  %add423 = add nsw i64 %conv422, 1
  %arrayidx425 = getelementptr inbounds i16, ptr %219, i64 %add423
  %221 = load i16, ptr %arrayidx425, align 2
  %conv426 = sext i16 %221 to i32
  %222 = load ptr, ptr %buffer.addr, align 8
  %arrayidx427 = getelementptr inbounds ptr, ptr %222, i64 1
  %223 = load ptr, ptr %arrayidx427, align 8
  %224 = load i16, ptr %i, align 2
  %conv428 = sext i16 %224 to i64
  %add429 = add nsw i64 %conv428, 1
  %arrayidx431 = getelementptr inbounds i16, ptr %223, i64 %add429
  %225 = load i16, ptr %arrayidx431, align 2
  %conv432 = sext i16 %225 to i32
  %sub433 = sub nsw i32 %conv426, %conv432
  %conv434 = sitofp i32 %sub433 to float
  %mul435 = fmul float %conv434, 0x3FE6A09E60000000
  %mul436 = fmul float %217, %mul435
  store float %mul436, ptr %f0323, align 4
  %226 = load i16, ptr %i, align 2
  %conv437 = sext i16 %226 to i64
  %sub438 = sub nsw i64 510, %conv437
  %arrayidx440 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub438
  %227 = load float, ptr %arrayidx440, align 4
  %228 = load ptr, ptr %buffer.addr, align 8
  %229 = load ptr, ptr %228, align 8
  %230 = load i16, ptr %i, align 2
  %conv442 = sext i16 %230 to i64
  %add443 = add nsw i64 %conv442, 513
  %arrayidx445 = getelementptr inbounds i16, ptr %229, i64 %add443
  %231 = load i16, ptr %arrayidx445, align 2
  %conv446 = sext i16 %231 to i32
  %232 = load ptr, ptr %buffer.addr, align 8
  %arrayidx447 = getelementptr inbounds ptr, ptr %232, i64 1
  %233 = load ptr, ptr %arrayidx447, align 8
  %234 = load i16, ptr %i, align 2
  %conv448 = sext i16 %234 to i64
  %add449 = add nsw i64 %conv448, 513
  %arrayidx451 = getelementptr inbounds i16, ptr %233, i64 %add449
  %235 = load i16, ptr %arrayidx451, align 2
  %conv452 = sext i16 %235 to i32
  %sub453 = sub nsw i32 %conv446, %conv452
  %conv454 = sitofp i32 %sub453 to float
  %mul455 = fmul float %conv454, 0x3FE6A09E60000000
  %mul456 = fmul float %227, %mul455
  %236 = load float, ptr %f0323, align 4
  %sub457 = fsub float %236, %mul456
  store float %sub457, ptr %f1324, align 4
  %add458 = fadd float %236, %mul456
  store float %add458, ptr %f0323, align 4
  %237 = load i16, ptr %i, align 2
  %conv459 = sext i16 %237 to i64
  %add460 = add nsw i64 %conv459, 257
  %arrayidx462 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %add460
  %238 = load float, ptr %arrayidx462, align 4
  %239 = load ptr, ptr %buffer.addr, align 8
  %240 = load ptr, ptr %239, align 8
  %241 = load i16, ptr %i, align 2
  %conv464 = sext i16 %241 to i64
  %add465 = add nsw i64 %conv464, 257
  %arrayidx467 = getelementptr inbounds i16, ptr %240, i64 %add465
  %242 = load i16, ptr %arrayidx467, align 2
  %conv468 = sext i16 %242 to i32
  %243 = load ptr, ptr %buffer.addr, align 8
  %arrayidx469 = getelementptr inbounds ptr, ptr %243, i64 1
  %244 = load ptr, ptr %arrayidx469, align 8
  %245 = load i16, ptr %i, align 2
  %conv470 = sext i16 %245 to i64
  %add471 = add nsw i64 %conv470, 257
  %arrayidx473 = getelementptr inbounds i16, ptr %244, i64 %add471
  %246 = load i16, ptr %arrayidx473, align 2
  %conv474 = sext i16 %246 to i32
  %sub475 = sub nsw i32 %conv468, %conv474
  %conv476 = sitofp i32 %sub475 to float
  %mul477 = fmul float %conv476, 0x3FE6A09E60000000
  %mul478 = fmul float %238, %mul477
  store float %mul478, ptr %f2325, align 4
  %247 = load i16, ptr %i, align 2
  %conv479 = sext i16 %247 to i64
  %sub480 = sub nsw i64 254, %conv479
  %arrayidx482 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %sub480
  %248 = load float, ptr %arrayidx482, align 4
  %249 = load ptr, ptr %buffer.addr, align 8
  %250 = load ptr, ptr %249, align 8
  %251 = load i16, ptr %i, align 2
  %conv484 = sext i16 %251 to i64
  %add485 = add nsw i64 %conv484, 769
  %arrayidx487 = getelementptr inbounds i16, ptr %250, i64 %add485
  %252 = load i16, ptr %arrayidx487, align 2
  %conv488 = sext i16 %252 to i32
  %253 = load ptr, ptr %buffer.addr, align 8
  %arrayidx489 = getelementptr inbounds ptr, ptr %253, i64 1
  %254 = load ptr, ptr %arrayidx489, align 8
  %255 = load i16, ptr %i, align 2
  %conv490 = sext i16 %255 to i64
  %add491 = add nsw i64 %conv490, 769
  %arrayidx493 = getelementptr inbounds i16, ptr %254, i64 %add491
  %256 = load i16, ptr %arrayidx493, align 2
  %conv494 = sext i16 %256 to i32
  %sub495 = sub nsw i32 %conv488, %conv494
  %conv496 = sitofp i32 %sub495 to float
  %mul497 = fmul float %conv496, 0x3FE6A09E60000000
  %mul498 = fmul float %248, %mul497
  %257 = load float, ptr %f2325, align 4
  %sub499 = fsub float %257, %mul498
  store float %sub499, ptr %f3326, align 4
  %add500 = fadd float %257, %mul498
  store float %add500, ptr %f2325, align 4
  %258 = load float, ptr %f0323, align 4
  %add501 = fadd float %258, %add500
  %259 = load ptr, ptr %x.addr, align 8
  %arrayidx502 = getelementptr inbounds float, ptr %259, i64 512
  store float %add501, ptr %arrayidx502, align 4
  %sub503 = fsub float %258, %add500
  %arrayidx504 = getelementptr inbounds float, ptr %259, i64 514
  store float %sub503, ptr %arrayidx504, align 4
  %260 = load float, ptr %f1324, align 4
  %261 = load float, ptr %f3326, align 4
  %add505 = fadd float %260, %261
  %262 = load ptr, ptr %x.addr, align 8
  %arrayidx506 = getelementptr inbounds float, ptr %262, i64 513
  store float %add505, ptr %arrayidx506, align 4
  %sub507 = fsub float %260, %261
  %arrayidx508 = getelementptr inbounds float, ptr %262, i64 515
  store float %sub507, ptr %arrayidx508, align 4
  %263 = load i16, ptr %jj, align 2
  %dec510 = add i16 %263, -1
  store i16 %dec510, ptr %jj, align 2
  %cmp512 = icmp sgt i16 %dec510, -1
  br i1 %cmp512, label %do.body322, label %if.end515, !llvm.loop !17

if.end515:                                        ; preds = %do.body128, %do.body322, %do.body
  %264 = load ptr, ptr %x.addr, align 8
  call void @fht(ptr noundef %264, i16 noundef signext 1024)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @init_fft() #0 {
entry:
  %i = alloca i32, align 4
  %r = alloca float, align 4
  store float 0x3FD921FB60000000, ptr %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.cond10

for.body:                                         ; preds = %for.cond
  %0 = load float, ptr %r, align 4
  %conv = fpext float %0 to double
  %1 = call double @llvm.cos.f64(double %conv)
  %conv1 = fptrunc double %1 to float
  %2 = load i32, ptr %i, align 4
  %mul = shl nsw i32 %2, 1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [8 x float], ptr @costab, i64 0, i64 %idxprom
  store float %conv1, ptr %arrayidx, align 4
  %3 = load float, ptr %r, align 4
  %conv2 = fpext float %3 to double
  %4 = call double @llvm.sin.f64(double %conv2)
  %conv3 = fptrunc double %4 to float
  %5 = load i32, ptr %i, align 4
  %mul4 = shl nsw i32 %5, 1
  %add = or i32 %mul4, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [8 x float], ptr @costab, i64 0, i64 %idxprom5
  store float %conv3, ptr %arrayidx6, align 4
  %6 = load float, ptr %r, align 4
  %conv9 = fmul float %6, 2.500000e-01
  store float %conv9, ptr %r, align 4
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  br label %for.cond, !llvm.loop !18

for.cond10:                                       ; preds = %for.cond, %for.body13
  %storemerge1 = phi i32 [ %inc22, %for.body13 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp11 = icmp slt i32 %storemerge1, 512
  br i1 %cmp11, label %for.body13, label %for.cond24

for.body13:                                       ; preds = %for.cond10
  %8 = load i32, ptr %i, align 4
  %conv14 = sitofp i32 %8 to double
  %add15 = fadd double %conv14, 5.000000e-01
  %mul16 = fmul double %add15, 0x401921FB54442D18
  %div = fmul double %mul16, 0x3F50000000000000
  %9 = call double @llvm.cos.f64(double %div)
  %sub = fsub double 1.000000e+00, %9
  %mul17 = fmul double %sub, 5.000000e-01
  %conv18 = fptrunc double %mul17 to float
  %10 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom19
  store float %conv18, ptr %arrayidx20, align 4
  %11 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %11, 1
  br label %for.cond10, !llvm.loop !19

for.cond24:                                       ; preds = %for.cond10, %for.body27
  %storemerge2 = phi i32 [ %inc38, %for.body27 ], [ 0, %for.cond10 ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp25 = icmp slt i32 %storemerge2, 128
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  %12 = load i32, ptr %i, align 4
  %conv28 = sitofp i32 %12 to double
  %add29 = fadd double %conv28, 5.000000e-01
  %mul30 = fmul double %add29, 0x401921FB54442D18
  %div31 = fmul double %mul30, 3.906250e-03
  %13 = call double @llvm.cos.f64(double %div31)
  %sub32 = fsub double 1.000000e+00, %13
  %mul33 = fmul double %sub32, 5.000000e-01
  %conv34 = fptrunc double %mul33 to float
  %14 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %14 to i64
  %arrayidx36 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom35
  store float %conv34, ptr %arrayidx36, align 4
  %15 = load i32, ptr %i, align 4
  %inc38 = add nsw i32 %15, 1
  br label %for.cond24, !llvm.loop !20

for.end39:                                        ; preds = %for.cond24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
