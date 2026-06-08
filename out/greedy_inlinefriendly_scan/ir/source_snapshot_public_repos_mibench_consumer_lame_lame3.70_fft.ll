; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/fft.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/fft.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@rv_tbl = internal constant [128 x i16] [i16 0, i16 128, i16 64, i16 192, i16 32, i16 160, i16 96, i16 224, i16 16, i16 144, i16 80, i16 208, i16 48, i16 176, i16 112, i16 240, i16 8, i16 136, i16 72, i16 200, i16 40, i16 168, i16 104, i16 232, i16 24, i16 152, i16 88, i16 216, i16 56, i16 184, i16 120, i16 248, i16 4, i16 132, i16 68, i16 196, i16 36, i16 164, i16 100, i16 228, i16 20, i16 148, i16 84, i16 212, i16 52, i16 180, i16 116, i16 244, i16 12, i16 140, i16 76, i16 204, i16 44, i16 172, i16 108, i16 236, i16 28, i16 156, i16 92, i16 220, i16 60, i16 188, i16 124, i16 252, i16 2, i16 130, i16 66, i16 194, i16 34, i16 162, i16 98, i16 226, i16 18, i16 146, i16 82, i16 210, i16 50, i16 178, i16 114, i16 242, i16 10, i16 138, i16 74, i16 202, i16 42, i16 170, i16 106, i16 234, i16 26, i16 154, i16 90, i16 218, i16 58, i16 186, i16 122, i16 250, i16 6, i16 134, i16 70, i16 198, i16 38, i16 166, i16 102, i16 230, i16 22, i16 150, i16 86, i16 214, i16 54, i16 182, i16 118, i16 246, i16 14, i16 142, i16 78, i16 206, i16 46, i16 174, i16 110, i16 238, i16 30, i16 158, i16 94, i16 222, i16 62, i16 190, i16 126, i16 254], align 2
@window_s = internal global [128 x float] zeroinitializer, align 4
@window = internal global [512 x float] zeroinitializer, align 4
@costab = internal global [8 x float] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %w = alloca float, align 4
  %f0157 = alloca float, align 4
  %f1158 = alloca float, align 4
  %f2159 = alloca float, align 4
  %f3160 = alloca float, align 4
  %w161 = alloca float, align 4
  %f0387 = alloca float, align 4
  %f1388 = alloca float, align 4
  %f2389 = alloca float, align 4
  %f3390 = alloca float, align 4
  %w391 = alloca float, align 4
  store ptr %x_real, ptr %x_real.addr, align 8
  store i32 %chn, ptr %chn.addr, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  store i16 0, ptr %b, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr %b, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %x_real.addr, align 8
  %2 = load i16, ptr %b, align 2
  %idxprom = sext i16 %2 to i64
  %arrayidx = getelementptr inbounds [256 x float], ptr %1, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [256 x float], ptr %arrayidx, i64 0, i64 128
  store ptr %arrayidx2, ptr %x, align 8
  %3 = load i16, ptr %b, align 2
  %conv3 = sext i16 %3 to i32
  %add = add nsw i32 %conv3, 1
  %mul = mul nsw i32 192, %add
  %conv4 = trunc i32 %mul to i16
  store i16 %conv4, ptr %k, align 2
  store i16 31, ptr %j, align 2
  %4 = load i32, ptr %chn.addr, align 4
  %cmp5 = icmp slt i32 %4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %5 = load i16, ptr %j, align 2
  %conv7 = sext i16 %5 to i32
  %shl = shl i32 %conv7, 2
  %idxprom8 = sext i32 %shl to i64
  %arrayidx9 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom8
  %6 = load i16, ptr %arrayidx9, align 2
  store i16 %6, ptr %i, align 2
  %7 = load i16, ptr %i, align 2
  %idxprom10 = sext i16 %7 to i64
  %arrayidx11 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom10
  %8 = load float, ptr %arrayidx11, align 4
  %9 = load ptr, ptr %buffer.addr, align 8
  %10 = load i32, ptr %chn.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %9, i64 %idxprom12
  %11 = load ptr, ptr %arrayidx13, align 8
  %12 = load i16, ptr %i, align 2
  %conv14 = sext i16 %12 to i32
  %13 = load i16, ptr %k, align 2
  %conv15 = sext i16 %13 to i32
  %add16 = add nsw i32 %conv14, %conv15
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %11, i64 %idxprom17
  %14 = load i16, ptr %arrayidx18, align 2
  %conv19 = sext i16 %14 to i32
  %conv20 = sitofp i32 %conv19 to float
  %mul21 = fmul float %8, %conv20
  store float %mul21, ptr %f0, align 4
  %15 = load i16, ptr %i, align 2
  %conv22 = sext i16 %15 to i32
  %sub = sub nsw i32 127, %conv22
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom23
  %16 = load float, ptr %arrayidx24, align 4
  %17 = load ptr, ptr %buffer.addr, align 8
  %18 = load i32, ptr %chn.addr, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %17, i64 %idxprom25
  %19 = load ptr, ptr %arrayidx26, align 8
  %20 = load i16, ptr %i, align 2
  %conv27 = sext i16 %20 to i32
  %21 = load i16, ptr %k, align 2
  %conv28 = sext i16 %21 to i32
  %add29 = add nsw i32 %conv27, %conv28
  %add30 = add nsw i32 %add29, 128
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %19, i64 %idxprom31
  %22 = load i16, ptr %arrayidx32, align 2
  %conv33 = sext i16 %22 to i32
  %conv34 = sitofp i32 %conv33 to float
  %mul35 = fmul float %16, %conv34
  store float %mul35, ptr %w, align 4
  %23 = load float, ptr %f0, align 4
  %24 = load float, ptr %w, align 4
  %sub36 = fsub float %23, %24
  store float %sub36, ptr %f1, align 4
  %25 = load float, ptr %f0, align 4
  %26 = load float, ptr %w, align 4
  %add37 = fadd float %25, %26
  store float %add37, ptr %f0, align 4
  %27 = load i16, ptr %i, align 2
  %conv38 = sext i16 %27 to i32
  %add39 = add nsw i32 %conv38, 64
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom40
  %28 = load float, ptr %arrayidx41, align 4
  %29 = load ptr, ptr %buffer.addr, align 8
  %30 = load i32, ptr %chn.addr, align 4
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %29, i64 %idxprom42
  %31 = load ptr, ptr %arrayidx43, align 8
  %32 = load i16, ptr %i, align 2
  %conv44 = sext i16 %32 to i32
  %33 = load i16, ptr %k, align 2
  %conv45 = sext i16 %33 to i32
  %add46 = add nsw i32 %conv44, %conv45
  %add47 = add nsw i32 %add46, 64
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds i16, ptr %31, i64 %idxprom48
  %34 = load i16, ptr %arrayidx49, align 2
  %conv50 = sext i16 %34 to i32
  %conv51 = sitofp i32 %conv50 to float
  %mul52 = fmul float %28, %conv51
  store float %mul52, ptr %f2, align 4
  %35 = load i16, ptr %i, align 2
  %conv53 = sext i16 %35 to i32
  %sub54 = sub nsw i32 63, %conv53
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom55
  %36 = load float, ptr %arrayidx56, align 4
  %37 = load ptr, ptr %buffer.addr, align 8
  %38 = load i32, ptr %chn.addr, align 4
  %idxprom57 = sext i32 %38 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %37, i64 %idxprom57
  %39 = load ptr, ptr %arrayidx58, align 8
  %40 = load i16, ptr %i, align 2
  %conv59 = sext i16 %40 to i32
  %41 = load i16, ptr %k, align 2
  %conv60 = sext i16 %41 to i32
  %add61 = add nsw i32 %conv59, %conv60
  %add62 = add nsw i32 %add61, 192
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %39, i64 %idxprom63
  %42 = load i16, ptr %arrayidx64, align 2
  %conv65 = sext i16 %42 to i32
  %conv66 = sitofp i32 %conv65 to float
  %mul67 = fmul float %36, %conv66
  store float %mul67, ptr %w, align 4
  %43 = load float, ptr %f2, align 4
  %44 = load float, ptr %w, align 4
  %sub68 = fsub float %43, %44
  store float %sub68, ptr %f3, align 4
  %45 = load float, ptr %f2, align 4
  %46 = load float, ptr %w, align 4
  %add69 = fadd float %45, %46
  store float %add69, ptr %f2, align 4
  %47 = load ptr, ptr %x, align 8
  %add.ptr = getelementptr inbounds float, ptr %47, i64 -4
  store ptr %add.ptr, ptr %x, align 8
  %48 = load float, ptr %f0, align 4
  %49 = load float, ptr %f2, align 4
  %add70 = fadd float %48, %49
  %50 = load ptr, ptr %x, align 8
  %arrayidx71 = getelementptr inbounds float, ptr %50, i64 0
  store float %add70, ptr %arrayidx71, align 4
  %51 = load float, ptr %f0, align 4
  %52 = load float, ptr %f2, align 4
  %sub72 = fsub float %51, %52
  %53 = load ptr, ptr %x, align 8
  %arrayidx73 = getelementptr inbounds float, ptr %53, i64 2
  store float %sub72, ptr %arrayidx73, align 4
  %54 = load float, ptr %f1, align 4
  %55 = load float, ptr %f3, align 4
  %add74 = fadd float %54, %55
  %56 = load ptr, ptr %x, align 8
  %arrayidx75 = getelementptr inbounds float, ptr %56, i64 1
  store float %add74, ptr %arrayidx75, align 4
  %57 = load float, ptr %f1, align 4
  %58 = load float, ptr %f3, align 4
  %sub76 = fsub float %57, %58
  %59 = load ptr, ptr %x, align 8
  %arrayidx77 = getelementptr inbounds float, ptr %59, i64 3
  store float %sub76, ptr %arrayidx77, align 4
  %60 = load i16, ptr %i, align 2
  %conv78 = sext i16 %60 to i32
  %add79 = add nsw i32 %conv78, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom80
  %61 = load float, ptr %arrayidx81, align 4
  %62 = load ptr, ptr %buffer.addr, align 8
  %63 = load i32, ptr %chn.addr, align 4
  %idxprom82 = sext i32 %63 to i64
  %arrayidx83 = getelementptr inbounds ptr, ptr %62, i64 %idxprom82
  %64 = load ptr, ptr %arrayidx83, align 8
  %65 = load i16, ptr %i, align 2
  %conv84 = sext i16 %65 to i32
  %66 = load i16, ptr %k, align 2
  %conv85 = sext i16 %66 to i32
  %add86 = add nsw i32 %conv84, %conv85
  %add87 = add nsw i32 %add86, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds i16, ptr %64, i64 %idxprom88
  %67 = load i16, ptr %arrayidx89, align 2
  %conv90 = sext i16 %67 to i32
  %conv91 = sitofp i32 %conv90 to float
  %mul92 = fmul float %61, %conv91
  store float %mul92, ptr %f0, align 4
  %68 = load i16, ptr %i, align 2
  %conv93 = sext i16 %68 to i32
  %sub94 = sub nsw i32 126, %conv93
  %idxprom95 = sext i32 %sub94 to i64
  %arrayidx96 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom95
  %69 = load float, ptr %arrayidx96, align 4
  %70 = load ptr, ptr %buffer.addr, align 8
  %71 = load i32, ptr %chn.addr, align 4
  %idxprom97 = sext i32 %71 to i64
  %arrayidx98 = getelementptr inbounds ptr, ptr %70, i64 %idxprom97
  %72 = load ptr, ptr %arrayidx98, align 8
  %73 = load i16, ptr %i, align 2
  %conv99 = sext i16 %73 to i32
  %74 = load i16, ptr %k, align 2
  %conv100 = sext i16 %74 to i32
  %add101 = add nsw i32 %conv99, %conv100
  %add102 = add nsw i32 %add101, 129
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i16, ptr %72, i64 %idxprom103
  %75 = load i16, ptr %arrayidx104, align 2
  %conv105 = sext i16 %75 to i32
  %conv106 = sitofp i32 %conv105 to float
  %mul107 = fmul float %69, %conv106
  store float %mul107, ptr %w, align 4
  %76 = load float, ptr %f0, align 4
  %77 = load float, ptr %w, align 4
  %sub108 = fsub float %76, %77
  store float %sub108, ptr %f1, align 4
  %78 = load float, ptr %f0, align 4
  %79 = load float, ptr %w, align 4
  %add109 = fadd float %78, %79
  store float %add109, ptr %f0, align 4
  %80 = load i16, ptr %i, align 2
  %conv110 = sext i16 %80 to i32
  %add111 = add nsw i32 %conv110, 65
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom112
  %81 = load float, ptr %arrayidx113, align 4
  %82 = load ptr, ptr %buffer.addr, align 8
  %83 = load i32, ptr %chn.addr, align 4
  %idxprom114 = sext i32 %83 to i64
  %arrayidx115 = getelementptr inbounds ptr, ptr %82, i64 %idxprom114
  %84 = load ptr, ptr %arrayidx115, align 8
  %85 = load i16, ptr %i, align 2
  %conv116 = sext i16 %85 to i32
  %86 = load i16, ptr %k, align 2
  %conv117 = sext i16 %86 to i32
  %add118 = add nsw i32 %conv116, %conv117
  %add119 = add nsw i32 %add118, 65
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds i16, ptr %84, i64 %idxprom120
  %87 = load i16, ptr %arrayidx121, align 2
  %conv122 = sext i16 %87 to i32
  %conv123 = sitofp i32 %conv122 to float
  %mul124 = fmul float %81, %conv123
  store float %mul124, ptr %f2, align 4
  %88 = load i16, ptr %i, align 2
  %conv125 = sext i16 %88 to i32
  %sub126 = sub nsw i32 62, %conv125
  %idxprom127 = sext i32 %sub126 to i64
  %arrayidx128 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom127
  %89 = load float, ptr %arrayidx128, align 4
  %90 = load ptr, ptr %buffer.addr, align 8
  %91 = load i32, ptr %chn.addr, align 4
  %idxprom129 = sext i32 %91 to i64
  %arrayidx130 = getelementptr inbounds ptr, ptr %90, i64 %idxprom129
  %92 = load ptr, ptr %arrayidx130, align 8
  %93 = load i16, ptr %i, align 2
  %conv131 = sext i16 %93 to i32
  %94 = load i16, ptr %k, align 2
  %conv132 = sext i16 %94 to i32
  %add133 = add nsw i32 %conv131, %conv132
  %add134 = add nsw i32 %add133, 193
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds i16, ptr %92, i64 %idxprom135
  %95 = load i16, ptr %arrayidx136, align 2
  %conv137 = sext i16 %95 to i32
  %conv138 = sitofp i32 %conv137 to float
  %mul139 = fmul float %89, %conv138
  store float %mul139, ptr %w, align 4
  %96 = load float, ptr %f2, align 4
  %97 = load float, ptr %w, align 4
  %sub140 = fsub float %96, %97
  store float %sub140, ptr %f3, align 4
  %98 = load float, ptr %f2, align 4
  %99 = load float, ptr %w, align 4
  %add141 = fadd float %98, %99
  store float %add141, ptr %f2, align 4
  %100 = load float, ptr %f0, align 4
  %101 = load float, ptr %f2, align 4
  %add142 = fadd float %100, %101
  %102 = load ptr, ptr %x, align 8
  %arrayidx143 = getelementptr inbounds float, ptr %102, i64 128
  store float %add142, ptr %arrayidx143, align 4
  %103 = load float, ptr %f0, align 4
  %104 = load float, ptr %f2, align 4
  %sub144 = fsub float %103, %104
  %105 = load ptr, ptr %x, align 8
  %arrayidx145 = getelementptr inbounds float, ptr %105, i64 130
  store float %sub144, ptr %arrayidx145, align 4
  %106 = load float, ptr %f1, align 4
  %107 = load float, ptr %f3, align 4
  %add146 = fadd float %106, %107
  %108 = load ptr, ptr %x, align 8
  %arrayidx147 = getelementptr inbounds float, ptr %108, i64 129
  store float %add146, ptr %arrayidx147, align 4
  %109 = load float, ptr %f1, align 4
  %110 = load float, ptr %f3, align 4
  %sub148 = fsub float %109, %110
  %111 = load ptr, ptr %x, align 8
  %arrayidx149 = getelementptr inbounds float, ptr %111, i64 131
  store float %sub148, ptr %arrayidx149, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %112 = load i16, ptr %j, align 2
  %dec = add i16 %112, -1
  store i16 %dec, ptr %j, align 2
  %conv150 = sext i16 %dec to i32
  %cmp151 = icmp sge i32 %conv150, 0
  br i1 %cmp151, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end615

if.else:                                          ; preds = %for.body
  %113 = load i32, ptr %chn.addr, align 4
  %cmp153 = icmp eq i32 %113, 2
  br i1 %cmp153, label %if.then155, label %if.else385

if.then155:                                       ; preds = %if.else
  br label %do.body156

do.body156:                                       ; preds = %do.cond379, %if.then155
  %114 = load i16, ptr %j, align 2
  %conv162 = sext i16 %114 to i32
  %shl163 = shl i32 %conv162, 2
  %idxprom164 = sext i32 %shl163 to i64
  %arrayidx165 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom164
  %115 = load i16, ptr %arrayidx165, align 2
  store i16 %115, ptr %i, align 2
  %116 = load i16, ptr %i, align 2
  %idxprom166 = sext i16 %116 to i64
  %arrayidx167 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom166
  %117 = load float, ptr %arrayidx167, align 4
  %118 = load ptr, ptr %buffer.addr, align 8
  %arrayidx168 = getelementptr inbounds ptr, ptr %118, i64 0
  %119 = load ptr, ptr %arrayidx168, align 8
  %120 = load i16, ptr %i, align 2
  %conv169 = sext i16 %120 to i32
  %121 = load i16, ptr %k, align 2
  %conv170 = sext i16 %121 to i32
  %add171 = add nsw i32 %conv169, %conv170
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds i16, ptr %119, i64 %idxprom172
  %122 = load i16, ptr %arrayidx173, align 2
  %conv174 = sext i16 %122 to i32
  %123 = load ptr, ptr %buffer.addr, align 8
  %arrayidx175 = getelementptr inbounds ptr, ptr %123, i64 1
  %124 = load ptr, ptr %arrayidx175, align 8
  %125 = load i16, ptr %i, align 2
  %conv176 = sext i16 %125 to i32
  %126 = load i16, ptr %k, align 2
  %conv177 = sext i16 %126 to i32
  %add178 = add nsw i32 %conv176, %conv177
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds i16, ptr %124, i64 %idxprom179
  %127 = load i16, ptr %arrayidx180, align 2
  %conv181 = sext i16 %127 to i32
  %add182 = add nsw i32 %conv174, %conv181
  %conv183 = sitofp i32 %add182 to float
  %mul184 = fmul float 0x3FE6A09E60000000, %conv183
  %mul185 = fmul float %117, %mul184
  store float %mul185, ptr %f0157, align 4
  %128 = load i16, ptr %i, align 2
  %conv186 = sext i16 %128 to i32
  %sub187 = sub nsw i32 127, %conv186
  %idxprom188 = sext i32 %sub187 to i64
  %arrayidx189 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom188
  %129 = load float, ptr %arrayidx189, align 4
  %130 = load ptr, ptr %buffer.addr, align 8
  %arrayidx190 = getelementptr inbounds ptr, ptr %130, i64 0
  %131 = load ptr, ptr %arrayidx190, align 8
  %132 = load i16, ptr %i, align 2
  %conv191 = sext i16 %132 to i32
  %133 = load i16, ptr %k, align 2
  %conv192 = sext i16 %133 to i32
  %add193 = add nsw i32 %conv191, %conv192
  %add194 = add nsw i32 %add193, 128
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds i16, ptr %131, i64 %idxprom195
  %134 = load i16, ptr %arrayidx196, align 2
  %conv197 = sext i16 %134 to i32
  %135 = load ptr, ptr %buffer.addr, align 8
  %arrayidx198 = getelementptr inbounds ptr, ptr %135, i64 1
  %136 = load ptr, ptr %arrayidx198, align 8
  %137 = load i16, ptr %i, align 2
  %conv199 = sext i16 %137 to i32
  %138 = load i16, ptr %k, align 2
  %conv200 = sext i16 %138 to i32
  %add201 = add nsw i32 %conv199, %conv200
  %add202 = add nsw i32 %add201, 128
  %idxprom203 = sext i32 %add202 to i64
  %arrayidx204 = getelementptr inbounds i16, ptr %136, i64 %idxprom203
  %139 = load i16, ptr %arrayidx204, align 2
  %conv205 = sext i16 %139 to i32
  %add206 = add nsw i32 %conv197, %conv205
  %conv207 = sitofp i32 %add206 to float
  %mul208 = fmul float 0x3FE6A09E60000000, %conv207
  %mul209 = fmul float %129, %mul208
  store float %mul209, ptr %w161, align 4
  %140 = load float, ptr %f0157, align 4
  %141 = load float, ptr %w161, align 4
  %sub210 = fsub float %140, %141
  store float %sub210, ptr %f1158, align 4
  %142 = load float, ptr %f0157, align 4
  %143 = load float, ptr %w161, align 4
  %add211 = fadd float %142, %143
  store float %add211, ptr %f0157, align 4
  %144 = load i16, ptr %i, align 2
  %conv212 = sext i16 %144 to i32
  %add213 = add nsw i32 %conv212, 64
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom214
  %145 = load float, ptr %arrayidx215, align 4
  %146 = load ptr, ptr %buffer.addr, align 8
  %arrayidx216 = getelementptr inbounds ptr, ptr %146, i64 0
  %147 = load ptr, ptr %arrayidx216, align 8
  %148 = load i16, ptr %i, align 2
  %conv217 = sext i16 %148 to i32
  %149 = load i16, ptr %k, align 2
  %conv218 = sext i16 %149 to i32
  %add219 = add nsw i32 %conv217, %conv218
  %add220 = add nsw i32 %add219, 64
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds i16, ptr %147, i64 %idxprom221
  %150 = load i16, ptr %arrayidx222, align 2
  %conv223 = sext i16 %150 to i32
  %151 = load ptr, ptr %buffer.addr, align 8
  %arrayidx224 = getelementptr inbounds ptr, ptr %151, i64 1
  %152 = load ptr, ptr %arrayidx224, align 8
  %153 = load i16, ptr %i, align 2
  %conv225 = sext i16 %153 to i32
  %154 = load i16, ptr %k, align 2
  %conv226 = sext i16 %154 to i32
  %add227 = add nsw i32 %conv225, %conv226
  %add228 = add nsw i32 %add227, 64
  %idxprom229 = sext i32 %add228 to i64
  %arrayidx230 = getelementptr inbounds i16, ptr %152, i64 %idxprom229
  %155 = load i16, ptr %arrayidx230, align 2
  %conv231 = sext i16 %155 to i32
  %add232 = add nsw i32 %conv223, %conv231
  %conv233 = sitofp i32 %add232 to float
  %mul234 = fmul float 0x3FE6A09E60000000, %conv233
  %mul235 = fmul float %145, %mul234
  store float %mul235, ptr %f2159, align 4
  %156 = load i16, ptr %i, align 2
  %conv236 = sext i16 %156 to i32
  %sub237 = sub nsw i32 63, %conv236
  %idxprom238 = sext i32 %sub237 to i64
  %arrayidx239 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom238
  %157 = load float, ptr %arrayidx239, align 4
  %158 = load ptr, ptr %buffer.addr, align 8
  %arrayidx240 = getelementptr inbounds ptr, ptr %158, i64 0
  %159 = load ptr, ptr %arrayidx240, align 8
  %160 = load i16, ptr %i, align 2
  %conv241 = sext i16 %160 to i32
  %161 = load i16, ptr %k, align 2
  %conv242 = sext i16 %161 to i32
  %add243 = add nsw i32 %conv241, %conv242
  %add244 = add nsw i32 %add243, 192
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds i16, ptr %159, i64 %idxprom245
  %162 = load i16, ptr %arrayidx246, align 2
  %conv247 = sext i16 %162 to i32
  %163 = load ptr, ptr %buffer.addr, align 8
  %arrayidx248 = getelementptr inbounds ptr, ptr %163, i64 1
  %164 = load ptr, ptr %arrayidx248, align 8
  %165 = load i16, ptr %i, align 2
  %conv249 = sext i16 %165 to i32
  %166 = load i16, ptr %k, align 2
  %conv250 = sext i16 %166 to i32
  %add251 = add nsw i32 %conv249, %conv250
  %add252 = add nsw i32 %add251, 192
  %idxprom253 = sext i32 %add252 to i64
  %arrayidx254 = getelementptr inbounds i16, ptr %164, i64 %idxprom253
  %167 = load i16, ptr %arrayidx254, align 2
  %conv255 = sext i16 %167 to i32
  %add256 = add nsw i32 %conv247, %conv255
  %conv257 = sitofp i32 %add256 to float
  %mul258 = fmul float 0x3FE6A09E60000000, %conv257
  %mul259 = fmul float %157, %mul258
  store float %mul259, ptr %w161, align 4
  %168 = load float, ptr %f2159, align 4
  %169 = load float, ptr %w161, align 4
  %sub260 = fsub float %168, %169
  store float %sub260, ptr %f3160, align 4
  %170 = load float, ptr %f2159, align 4
  %171 = load float, ptr %w161, align 4
  %add261 = fadd float %170, %171
  store float %add261, ptr %f2159, align 4
  %172 = load ptr, ptr %x, align 8
  %add.ptr262 = getelementptr inbounds float, ptr %172, i64 -4
  store ptr %add.ptr262, ptr %x, align 8
  %173 = load float, ptr %f0157, align 4
  %174 = load float, ptr %f2159, align 4
  %add263 = fadd float %173, %174
  %175 = load ptr, ptr %x, align 8
  %arrayidx264 = getelementptr inbounds float, ptr %175, i64 0
  store float %add263, ptr %arrayidx264, align 4
  %176 = load float, ptr %f0157, align 4
  %177 = load float, ptr %f2159, align 4
  %sub265 = fsub float %176, %177
  %178 = load ptr, ptr %x, align 8
  %arrayidx266 = getelementptr inbounds float, ptr %178, i64 2
  store float %sub265, ptr %arrayidx266, align 4
  %179 = load float, ptr %f1158, align 4
  %180 = load float, ptr %f3160, align 4
  %add267 = fadd float %179, %180
  %181 = load ptr, ptr %x, align 8
  %arrayidx268 = getelementptr inbounds float, ptr %181, i64 1
  store float %add267, ptr %arrayidx268, align 4
  %182 = load float, ptr %f1158, align 4
  %183 = load float, ptr %f3160, align 4
  %sub269 = fsub float %182, %183
  %184 = load ptr, ptr %x, align 8
  %arrayidx270 = getelementptr inbounds float, ptr %184, i64 3
  store float %sub269, ptr %arrayidx270, align 4
  %185 = load i16, ptr %i, align 2
  %conv271 = sext i16 %185 to i32
  %add272 = add nsw i32 %conv271, 1
  %idxprom273 = sext i32 %add272 to i64
  %arrayidx274 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom273
  %186 = load float, ptr %arrayidx274, align 4
  %187 = load ptr, ptr %buffer.addr, align 8
  %arrayidx275 = getelementptr inbounds ptr, ptr %187, i64 0
  %188 = load ptr, ptr %arrayidx275, align 8
  %189 = load i16, ptr %i, align 2
  %conv276 = sext i16 %189 to i32
  %190 = load i16, ptr %k, align 2
  %conv277 = sext i16 %190 to i32
  %add278 = add nsw i32 %conv276, %conv277
  %add279 = add nsw i32 %add278, 1
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds i16, ptr %188, i64 %idxprom280
  %191 = load i16, ptr %arrayidx281, align 2
  %conv282 = sext i16 %191 to i32
  %192 = load ptr, ptr %buffer.addr, align 8
  %arrayidx283 = getelementptr inbounds ptr, ptr %192, i64 1
  %193 = load ptr, ptr %arrayidx283, align 8
  %194 = load i16, ptr %i, align 2
  %conv284 = sext i16 %194 to i32
  %195 = load i16, ptr %k, align 2
  %conv285 = sext i16 %195 to i32
  %add286 = add nsw i32 %conv284, %conv285
  %add287 = add nsw i32 %add286, 1
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds i16, ptr %193, i64 %idxprom288
  %196 = load i16, ptr %arrayidx289, align 2
  %conv290 = sext i16 %196 to i32
  %add291 = add nsw i32 %conv282, %conv290
  %conv292 = sitofp i32 %add291 to float
  %mul293 = fmul float 0x3FE6A09E60000000, %conv292
  %mul294 = fmul float %186, %mul293
  store float %mul294, ptr %f0157, align 4
  %197 = load i16, ptr %i, align 2
  %conv295 = sext i16 %197 to i32
  %sub296 = sub nsw i32 126, %conv295
  %idxprom297 = sext i32 %sub296 to i64
  %arrayidx298 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom297
  %198 = load float, ptr %arrayidx298, align 4
  %199 = load ptr, ptr %buffer.addr, align 8
  %arrayidx299 = getelementptr inbounds ptr, ptr %199, i64 0
  %200 = load ptr, ptr %arrayidx299, align 8
  %201 = load i16, ptr %i, align 2
  %conv300 = sext i16 %201 to i32
  %202 = load i16, ptr %k, align 2
  %conv301 = sext i16 %202 to i32
  %add302 = add nsw i32 %conv300, %conv301
  %add303 = add nsw i32 %add302, 129
  %idxprom304 = sext i32 %add303 to i64
  %arrayidx305 = getelementptr inbounds i16, ptr %200, i64 %idxprom304
  %203 = load i16, ptr %arrayidx305, align 2
  %conv306 = sext i16 %203 to i32
  %204 = load ptr, ptr %buffer.addr, align 8
  %arrayidx307 = getelementptr inbounds ptr, ptr %204, i64 1
  %205 = load ptr, ptr %arrayidx307, align 8
  %206 = load i16, ptr %i, align 2
  %conv308 = sext i16 %206 to i32
  %207 = load i16, ptr %k, align 2
  %conv309 = sext i16 %207 to i32
  %add310 = add nsw i32 %conv308, %conv309
  %add311 = add nsw i32 %add310, 129
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds i16, ptr %205, i64 %idxprom312
  %208 = load i16, ptr %arrayidx313, align 2
  %conv314 = sext i16 %208 to i32
  %add315 = add nsw i32 %conv306, %conv314
  %conv316 = sitofp i32 %add315 to float
  %mul317 = fmul float 0x3FE6A09E60000000, %conv316
  %mul318 = fmul float %198, %mul317
  store float %mul318, ptr %w161, align 4
  %209 = load float, ptr %f0157, align 4
  %210 = load float, ptr %w161, align 4
  %sub319 = fsub float %209, %210
  store float %sub319, ptr %f1158, align 4
  %211 = load float, ptr %f0157, align 4
  %212 = load float, ptr %w161, align 4
  %add320 = fadd float %211, %212
  store float %add320, ptr %f0157, align 4
  %213 = load i16, ptr %i, align 2
  %conv321 = sext i16 %213 to i32
  %add322 = add nsw i32 %conv321, 65
  %idxprom323 = sext i32 %add322 to i64
  %arrayidx324 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom323
  %214 = load float, ptr %arrayidx324, align 4
  %215 = load ptr, ptr %buffer.addr, align 8
  %arrayidx325 = getelementptr inbounds ptr, ptr %215, i64 0
  %216 = load ptr, ptr %arrayidx325, align 8
  %217 = load i16, ptr %i, align 2
  %conv326 = sext i16 %217 to i32
  %218 = load i16, ptr %k, align 2
  %conv327 = sext i16 %218 to i32
  %add328 = add nsw i32 %conv326, %conv327
  %add329 = add nsw i32 %add328, 65
  %idxprom330 = sext i32 %add329 to i64
  %arrayidx331 = getelementptr inbounds i16, ptr %216, i64 %idxprom330
  %219 = load i16, ptr %arrayidx331, align 2
  %conv332 = sext i16 %219 to i32
  %220 = load ptr, ptr %buffer.addr, align 8
  %arrayidx333 = getelementptr inbounds ptr, ptr %220, i64 1
  %221 = load ptr, ptr %arrayidx333, align 8
  %222 = load i16, ptr %i, align 2
  %conv334 = sext i16 %222 to i32
  %223 = load i16, ptr %k, align 2
  %conv335 = sext i16 %223 to i32
  %add336 = add nsw i32 %conv334, %conv335
  %add337 = add nsw i32 %add336, 65
  %idxprom338 = sext i32 %add337 to i64
  %arrayidx339 = getelementptr inbounds i16, ptr %221, i64 %idxprom338
  %224 = load i16, ptr %arrayidx339, align 2
  %conv340 = sext i16 %224 to i32
  %add341 = add nsw i32 %conv332, %conv340
  %conv342 = sitofp i32 %add341 to float
  %mul343 = fmul float 0x3FE6A09E60000000, %conv342
  %mul344 = fmul float %214, %mul343
  store float %mul344, ptr %f2159, align 4
  %225 = load i16, ptr %i, align 2
  %conv345 = sext i16 %225 to i32
  %sub346 = sub nsw i32 62, %conv345
  %idxprom347 = sext i32 %sub346 to i64
  %arrayidx348 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom347
  %226 = load float, ptr %arrayidx348, align 4
  %227 = load ptr, ptr %buffer.addr, align 8
  %arrayidx349 = getelementptr inbounds ptr, ptr %227, i64 0
  %228 = load ptr, ptr %arrayidx349, align 8
  %229 = load i16, ptr %i, align 2
  %conv350 = sext i16 %229 to i32
  %230 = load i16, ptr %k, align 2
  %conv351 = sext i16 %230 to i32
  %add352 = add nsw i32 %conv350, %conv351
  %add353 = add nsw i32 %add352, 193
  %idxprom354 = sext i32 %add353 to i64
  %arrayidx355 = getelementptr inbounds i16, ptr %228, i64 %idxprom354
  %231 = load i16, ptr %arrayidx355, align 2
  %conv356 = sext i16 %231 to i32
  %232 = load ptr, ptr %buffer.addr, align 8
  %arrayidx357 = getelementptr inbounds ptr, ptr %232, i64 1
  %233 = load ptr, ptr %arrayidx357, align 8
  %234 = load i16, ptr %i, align 2
  %conv358 = sext i16 %234 to i32
  %235 = load i16, ptr %k, align 2
  %conv359 = sext i16 %235 to i32
  %add360 = add nsw i32 %conv358, %conv359
  %add361 = add nsw i32 %add360, 193
  %idxprom362 = sext i32 %add361 to i64
  %arrayidx363 = getelementptr inbounds i16, ptr %233, i64 %idxprom362
  %236 = load i16, ptr %arrayidx363, align 2
  %conv364 = sext i16 %236 to i32
  %add365 = add nsw i32 %conv356, %conv364
  %conv366 = sitofp i32 %add365 to float
  %mul367 = fmul float 0x3FE6A09E60000000, %conv366
  %mul368 = fmul float %226, %mul367
  store float %mul368, ptr %w161, align 4
  %237 = load float, ptr %f2159, align 4
  %238 = load float, ptr %w161, align 4
  %sub369 = fsub float %237, %238
  store float %sub369, ptr %f3160, align 4
  %239 = load float, ptr %f2159, align 4
  %240 = load float, ptr %w161, align 4
  %add370 = fadd float %239, %240
  store float %add370, ptr %f2159, align 4
  %241 = load float, ptr %f0157, align 4
  %242 = load float, ptr %f2159, align 4
  %add371 = fadd float %241, %242
  %243 = load ptr, ptr %x, align 8
  %arrayidx372 = getelementptr inbounds float, ptr %243, i64 128
  store float %add371, ptr %arrayidx372, align 4
  %244 = load float, ptr %f0157, align 4
  %245 = load float, ptr %f2159, align 4
  %sub373 = fsub float %244, %245
  %246 = load ptr, ptr %x, align 8
  %arrayidx374 = getelementptr inbounds float, ptr %246, i64 130
  store float %sub373, ptr %arrayidx374, align 4
  %247 = load float, ptr %f1158, align 4
  %248 = load float, ptr %f3160, align 4
  %add375 = fadd float %247, %248
  %249 = load ptr, ptr %x, align 8
  %arrayidx376 = getelementptr inbounds float, ptr %249, i64 129
  store float %add375, ptr %arrayidx376, align 4
  %250 = load float, ptr %f1158, align 4
  %251 = load float, ptr %f3160, align 4
  %sub377 = fsub float %250, %251
  %252 = load ptr, ptr %x, align 8
  %arrayidx378 = getelementptr inbounds float, ptr %252, i64 131
  store float %sub377, ptr %arrayidx378, align 4
  br label %do.cond379

do.cond379:                                       ; preds = %do.body156
  %253 = load i16, ptr %j, align 2
  %dec380 = add i16 %253, -1
  store i16 %dec380, ptr %j, align 2
  %conv381 = sext i16 %dec380 to i32
  %cmp382 = icmp sge i32 %conv381, 0
  br i1 %cmp382, label %do.body156, label %do.end384, !llvm.loop !8

do.end384:                                        ; preds = %do.cond379
  br label %if.end

if.else385:                                       ; preds = %if.else
  br label %do.body386

do.body386:                                       ; preds = %do.cond609, %if.else385
  %254 = load i16, ptr %j, align 2
  %conv392 = sext i16 %254 to i32
  %shl393 = shl i32 %conv392, 2
  %idxprom394 = sext i32 %shl393 to i64
  %arrayidx395 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom394
  %255 = load i16, ptr %arrayidx395, align 2
  store i16 %255, ptr %i, align 2
  %256 = load i16, ptr %i, align 2
  %idxprom396 = sext i16 %256 to i64
  %arrayidx397 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom396
  %257 = load float, ptr %arrayidx397, align 4
  %258 = load ptr, ptr %buffer.addr, align 8
  %arrayidx398 = getelementptr inbounds ptr, ptr %258, i64 0
  %259 = load ptr, ptr %arrayidx398, align 8
  %260 = load i16, ptr %i, align 2
  %conv399 = sext i16 %260 to i32
  %261 = load i16, ptr %k, align 2
  %conv400 = sext i16 %261 to i32
  %add401 = add nsw i32 %conv399, %conv400
  %idxprom402 = sext i32 %add401 to i64
  %arrayidx403 = getelementptr inbounds i16, ptr %259, i64 %idxprom402
  %262 = load i16, ptr %arrayidx403, align 2
  %conv404 = sext i16 %262 to i32
  %263 = load ptr, ptr %buffer.addr, align 8
  %arrayidx405 = getelementptr inbounds ptr, ptr %263, i64 1
  %264 = load ptr, ptr %arrayidx405, align 8
  %265 = load i16, ptr %i, align 2
  %conv406 = sext i16 %265 to i32
  %266 = load i16, ptr %k, align 2
  %conv407 = sext i16 %266 to i32
  %add408 = add nsw i32 %conv406, %conv407
  %idxprom409 = sext i32 %add408 to i64
  %arrayidx410 = getelementptr inbounds i16, ptr %264, i64 %idxprom409
  %267 = load i16, ptr %arrayidx410, align 2
  %conv411 = sext i16 %267 to i32
  %sub412 = sub nsw i32 %conv404, %conv411
  %conv413 = sitofp i32 %sub412 to float
  %mul414 = fmul float 0x3FE6A09E60000000, %conv413
  %mul415 = fmul float %257, %mul414
  store float %mul415, ptr %f0387, align 4
  %268 = load i16, ptr %i, align 2
  %conv416 = sext i16 %268 to i32
  %sub417 = sub nsw i32 127, %conv416
  %idxprom418 = sext i32 %sub417 to i64
  %arrayidx419 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom418
  %269 = load float, ptr %arrayidx419, align 4
  %270 = load ptr, ptr %buffer.addr, align 8
  %arrayidx420 = getelementptr inbounds ptr, ptr %270, i64 0
  %271 = load ptr, ptr %arrayidx420, align 8
  %272 = load i16, ptr %i, align 2
  %conv421 = sext i16 %272 to i32
  %273 = load i16, ptr %k, align 2
  %conv422 = sext i16 %273 to i32
  %add423 = add nsw i32 %conv421, %conv422
  %add424 = add nsw i32 %add423, 128
  %idxprom425 = sext i32 %add424 to i64
  %arrayidx426 = getelementptr inbounds i16, ptr %271, i64 %idxprom425
  %274 = load i16, ptr %arrayidx426, align 2
  %conv427 = sext i16 %274 to i32
  %275 = load ptr, ptr %buffer.addr, align 8
  %arrayidx428 = getelementptr inbounds ptr, ptr %275, i64 1
  %276 = load ptr, ptr %arrayidx428, align 8
  %277 = load i16, ptr %i, align 2
  %conv429 = sext i16 %277 to i32
  %278 = load i16, ptr %k, align 2
  %conv430 = sext i16 %278 to i32
  %add431 = add nsw i32 %conv429, %conv430
  %add432 = add nsw i32 %add431, 128
  %idxprom433 = sext i32 %add432 to i64
  %arrayidx434 = getelementptr inbounds i16, ptr %276, i64 %idxprom433
  %279 = load i16, ptr %arrayidx434, align 2
  %conv435 = sext i16 %279 to i32
  %sub436 = sub nsw i32 %conv427, %conv435
  %conv437 = sitofp i32 %sub436 to float
  %mul438 = fmul float 0x3FE6A09E60000000, %conv437
  %mul439 = fmul float %269, %mul438
  store float %mul439, ptr %w391, align 4
  %280 = load float, ptr %f0387, align 4
  %281 = load float, ptr %w391, align 4
  %sub440 = fsub float %280, %281
  store float %sub440, ptr %f1388, align 4
  %282 = load float, ptr %f0387, align 4
  %283 = load float, ptr %w391, align 4
  %add441 = fadd float %282, %283
  store float %add441, ptr %f0387, align 4
  %284 = load i16, ptr %i, align 2
  %conv442 = sext i16 %284 to i32
  %add443 = add nsw i32 %conv442, 64
  %idxprom444 = sext i32 %add443 to i64
  %arrayidx445 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom444
  %285 = load float, ptr %arrayidx445, align 4
  %286 = load ptr, ptr %buffer.addr, align 8
  %arrayidx446 = getelementptr inbounds ptr, ptr %286, i64 0
  %287 = load ptr, ptr %arrayidx446, align 8
  %288 = load i16, ptr %i, align 2
  %conv447 = sext i16 %288 to i32
  %289 = load i16, ptr %k, align 2
  %conv448 = sext i16 %289 to i32
  %add449 = add nsw i32 %conv447, %conv448
  %add450 = add nsw i32 %add449, 64
  %idxprom451 = sext i32 %add450 to i64
  %arrayidx452 = getelementptr inbounds i16, ptr %287, i64 %idxprom451
  %290 = load i16, ptr %arrayidx452, align 2
  %conv453 = sext i16 %290 to i32
  %291 = load ptr, ptr %buffer.addr, align 8
  %arrayidx454 = getelementptr inbounds ptr, ptr %291, i64 1
  %292 = load ptr, ptr %arrayidx454, align 8
  %293 = load i16, ptr %i, align 2
  %conv455 = sext i16 %293 to i32
  %294 = load i16, ptr %k, align 2
  %conv456 = sext i16 %294 to i32
  %add457 = add nsw i32 %conv455, %conv456
  %add458 = add nsw i32 %add457, 64
  %idxprom459 = sext i32 %add458 to i64
  %arrayidx460 = getelementptr inbounds i16, ptr %292, i64 %idxprom459
  %295 = load i16, ptr %arrayidx460, align 2
  %conv461 = sext i16 %295 to i32
  %sub462 = sub nsw i32 %conv453, %conv461
  %conv463 = sitofp i32 %sub462 to float
  %mul464 = fmul float 0x3FE6A09E60000000, %conv463
  %mul465 = fmul float %285, %mul464
  store float %mul465, ptr %f2389, align 4
  %296 = load i16, ptr %i, align 2
  %conv466 = sext i16 %296 to i32
  %sub467 = sub nsw i32 63, %conv466
  %idxprom468 = sext i32 %sub467 to i64
  %arrayidx469 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom468
  %297 = load float, ptr %arrayidx469, align 4
  %298 = load ptr, ptr %buffer.addr, align 8
  %arrayidx470 = getelementptr inbounds ptr, ptr %298, i64 0
  %299 = load ptr, ptr %arrayidx470, align 8
  %300 = load i16, ptr %i, align 2
  %conv471 = sext i16 %300 to i32
  %301 = load i16, ptr %k, align 2
  %conv472 = sext i16 %301 to i32
  %add473 = add nsw i32 %conv471, %conv472
  %add474 = add nsw i32 %add473, 192
  %idxprom475 = sext i32 %add474 to i64
  %arrayidx476 = getelementptr inbounds i16, ptr %299, i64 %idxprom475
  %302 = load i16, ptr %arrayidx476, align 2
  %conv477 = sext i16 %302 to i32
  %303 = load ptr, ptr %buffer.addr, align 8
  %arrayidx478 = getelementptr inbounds ptr, ptr %303, i64 1
  %304 = load ptr, ptr %arrayidx478, align 8
  %305 = load i16, ptr %i, align 2
  %conv479 = sext i16 %305 to i32
  %306 = load i16, ptr %k, align 2
  %conv480 = sext i16 %306 to i32
  %add481 = add nsw i32 %conv479, %conv480
  %add482 = add nsw i32 %add481, 192
  %idxprom483 = sext i32 %add482 to i64
  %arrayidx484 = getelementptr inbounds i16, ptr %304, i64 %idxprom483
  %307 = load i16, ptr %arrayidx484, align 2
  %conv485 = sext i16 %307 to i32
  %sub486 = sub nsw i32 %conv477, %conv485
  %conv487 = sitofp i32 %sub486 to float
  %mul488 = fmul float 0x3FE6A09E60000000, %conv487
  %mul489 = fmul float %297, %mul488
  store float %mul489, ptr %w391, align 4
  %308 = load float, ptr %f2389, align 4
  %309 = load float, ptr %w391, align 4
  %sub490 = fsub float %308, %309
  store float %sub490, ptr %f3390, align 4
  %310 = load float, ptr %f2389, align 4
  %311 = load float, ptr %w391, align 4
  %add491 = fadd float %310, %311
  store float %add491, ptr %f2389, align 4
  %312 = load ptr, ptr %x, align 8
  %add.ptr492 = getelementptr inbounds float, ptr %312, i64 -4
  store ptr %add.ptr492, ptr %x, align 8
  %313 = load float, ptr %f0387, align 4
  %314 = load float, ptr %f2389, align 4
  %add493 = fadd float %313, %314
  %315 = load ptr, ptr %x, align 8
  %arrayidx494 = getelementptr inbounds float, ptr %315, i64 0
  store float %add493, ptr %arrayidx494, align 4
  %316 = load float, ptr %f0387, align 4
  %317 = load float, ptr %f2389, align 4
  %sub495 = fsub float %316, %317
  %318 = load ptr, ptr %x, align 8
  %arrayidx496 = getelementptr inbounds float, ptr %318, i64 2
  store float %sub495, ptr %arrayidx496, align 4
  %319 = load float, ptr %f1388, align 4
  %320 = load float, ptr %f3390, align 4
  %add497 = fadd float %319, %320
  %321 = load ptr, ptr %x, align 8
  %arrayidx498 = getelementptr inbounds float, ptr %321, i64 1
  store float %add497, ptr %arrayidx498, align 4
  %322 = load float, ptr %f1388, align 4
  %323 = load float, ptr %f3390, align 4
  %sub499 = fsub float %322, %323
  %324 = load ptr, ptr %x, align 8
  %arrayidx500 = getelementptr inbounds float, ptr %324, i64 3
  store float %sub499, ptr %arrayidx500, align 4
  %325 = load i16, ptr %i, align 2
  %conv501 = sext i16 %325 to i32
  %add502 = add nsw i32 %conv501, 1
  %idxprom503 = sext i32 %add502 to i64
  %arrayidx504 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom503
  %326 = load float, ptr %arrayidx504, align 4
  %327 = load ptr, ptr %buffer.addr, align 8
  %arrayidx505 = getelementptr inbounds ptr, ptr %327, i64 0
  %328 = load ptr, ptr %arrayidx505, align 8
  %329 = load i16, ptr %i, align 2
  %conv506 = sext i16 %329 to i32
  %330 = load i16, ptr %k, align 2
  %conv507 = sext i16 %330 to i32
  %add508 = add nsw i32 %conv506, %conv507
  %add509 = add nsw i32 %add508, 1
  %idxprom510 = sext i32 %add509 to i64
  %arrayidx511 = getelementptr inbounds i16, ptr %328, i64 %idxprom510
  %331 = load i16, ptr %arrayidx511, align 2
  %conv512 = sext i16 %331 to i32
  %332 = load ptr, ptr %buffer.addr, align 8
  %arrayidx513 = getelementptr inbounds ptr, ptr %332, i64 1
  %333 = load ptr, ptr %arrayidx513, align 8
  %334 = load i16, ptr %i, align 2
  %conv514 = sext i16 %334 to i32
  %335 = load i16, ptr %k, align 2
  %conv515 = sext i16 %335 to i32
  %add516 = add nsw i32 %conv514, %conv515
  %add517 = add nsw i32 %add516, 1
  %idxprom518 = sext i32 %add517 to i64
  %arrayidx519 = getelementptr inbounds i16, ptr %333, i64 %idxprom518
  %336 = load i16, ptr %arrayidx519, align 2
  %conv520 = sext i16 %336 to i32
  %sub521 = sub nsw i32 %conv512, %conv520
  %conv522 = sitofp i32 %sub521 to float
  %mul523 = fmul float 0x3FE6A09E60000000, %conv522
  %mul524 = fmul float %326, %mul523
  store float %mul524, ptr %f0387, align 4
  %337 = load i16, ptr %i, align 2
  %conv525 = sext i16 %337 to i32
  %sub526 = sub nsw i32 126, %conv525
  %idxprom527 = sext i32 %sub526 to i64
  %arrayidx528 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom527
  %338 = load float, ptr %arrayidx528, align 4
  %339 = load ptr, ptr %buffer.addr, align 8
  %arrayidx529 = getelementptr inbounds ptr, ptr %339, i64 0
  %340 = load ptr, ptr %arrayidx529, align 8
  %341 = load i16, ptr %i, align 2
  %conv530 = sext i16 %341 to i32
  %342 = load i16, ptr %k, align 2
  %conv531 = sext i16 %342 to i32
  %add532 = add nsw i32 %conv530, %conv531
  %add533 = add nsw i32 %add532, 129
  %idxprom534 = sext i32 %add533 to i64
  %arrayidx535 = getelementptr inbounds i16, ptr %340, i64 %idxprom534
  %343 = load i16, ptr %arrayidx535, align 2
  %conv536 = sext i16 %343 to i32
  %344 = load ptr, ptr %buffer.addr, align 8
  %arrayidx537 = getelementptr inbounds ptr, ptr %344, i64 1
  %345 = load ptr, ptr %arrayidx537, align 8
  %346 = load i16, ptr %i, align 2
  %conv538 = sext i16 %346 to i32
  %347 = load i16, ptr %k, align 2
  %conv539 = sext i16 %347 to i32
  %add540 = add nsw i32 %conv538, %conv539
  %add541 = add nsw i32 %add540, 129
  %idxprom542 = sext i32 %add541 to i64
  %arrayidx543 = getelementptr inbounds i16, ptr %345, i64 %idxprom542
  %348 = load i16, ptr %arrayidx543, align 2
  %conv544 = sext i16 %348 to i32
  %sub545 = sub nsw i32 %conv536, %conv544
  %conv546 = sitofp i32 %sub545 to float
  %mul547 = fmul float 0x3FE6A09E60000000, %conv546
  %mul548 = fmul float %338, %mul547
  store float %mul548, ptr %w391, align 4
  %349 = load float, ptr %f0387, align 4
  %350 = load float, ptr %w391, align 4
  %sub549 = fsub float %349, %350
  store float %sub549, ptr %f1388, align 4
  %351 = load float, ptr %f0387, align 4
  %352 = load float, ptr %w391, align 4
  %add550 = fadd float %351, %352
  store float %add550, ptr %f0387, align 4
  %353 = load i16, ptr %i, align 2
  %conv551 = sext i16 %353 to i32
  %add552 = add nsw i32 %conv551, 65
  %idxprom553 = sext i32 %add552 to i64
  %arrayidx554 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom553
  %354 = load float, ptr %arrayidx554, align 4
  %355 = load ptr, ptr %buffer.addr, align 8
  %arrayidx555 = getelementptr inbounds ptr, ptr %355, i64 0
  %356 = load ptr, ptr %arrayidx555, align 8
  %357 = load i16, ptr %i, align 2
  %conv556 = sext i16 %357 to i32
  %358 = load i16, ptr %k, align 2
  %conv557 = sext i16 %358 to i32
  %add558 = add nsw i32 %conv556, %conv557
  %add559 = add nsw i32 %add558, 65
  %idxprom560 = sext i32 %add559 to i64
  %arrayidx561 = getelementptr inbounds i16, ptr %356, i64 %idxprom560
  %359 = load i16, ptr %arrayidx561, align 2
  %conv562 = sext i16 %359 to i32
  %360 = load ptr, ptr %buffer.addr, align 8
  %arrayidx563 = getelementptr inbounds ptr, ptr %360, i64 1
  %361 = load ptr, ptr %arrayidx563, align 8
  %362 = load i16, ptr %i, align 2
  %conv564 = sext i16 %362 to i32
  %363 = load i16, ptr %k, align 2
  %conv565 = sext i16 %363 to i32
  %add566 = add nsw i32 %conv564, %conv565
  %add567 = add nsw i32 %add566, 65
  %idxprom568 = sext i32 %add567 to i64
  %arrayidx569 = getelementptr inbounds i16, ptr %361, i64 %idxprom568
  %364 = load i16, ptr %arrayidx569, align 2
  %conv570 = sext i16 %364 to i32
  %sub571 = sub nsw i32 %conv562, %conv570
  %conv572 = sitofp i32 %sub571 to float
  %mul573 = fmul float 0x3FE6A09E60000000, %conv572
  %mul574 = fmul float %354, %mul573
  store float %mul574, ptr %f2389, align 4
  %365 = load i16, ptr %i, align 2
  %conv575 = sext i16 %365 to i32
  %sub576 = sub nsw i32 62, %conv575
  %idxprom577 = sext i32 %sub576 to i64
  %arrayidx578 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom577
  %366 = load float, ptr %arrayidx578, align 4
  %367 = load ptr, ptr %buffer.addr, align 8
  %arrayidx579 = getelementptr inbounds ptr, ptr %367, i64 0
  %368 = load ptr, ptr %arrayidx579, align 8
  %369 = load i16, ptr %i, align 2
  %conv580 = sext i16 %369 to i32
  %370 = load i16, ptr %k, align 2
  %conv581 = sext i16 %370 to i32
  %add582 = add nsw i32 %conv580, %conv581
  %add583 = add nsw i32 %add582, 193
  %idxprom584 = sext i32 %add583 to i64
  %arrayidx585 = getelementptr inbounds i16, ptr %368, i64 %idxprom584
  %371 = load i16, ptr %arrayidx585, align 2
  %conv586 = sext i16 %371 to i32
  %372 = load ptr, ptr %buffer.addr, align 8
  %arrayidx587 = getelementptr inbounds ptr, ptr %372, i64 1
  %373 = load ptr, ptr %arrayidx587, align 8
  %374 = load i16, ptr %i, align 2
  %conv588 = sext i16 %374 to i32
  %375 = load i16, ptr %k, align 2
  %conv589 = sext i16 %375 to i32
  %add590 = add nsw i32 %conv588, %conv589
  %add591 = add nsw i32 %add590, 193
  %idxprom592 = sext i32 %add591 to i64
  %arrayidx593 = getelementptr inbounds i16, ptr %373, i64 %idxprom592
  %376 = load i16, ptr %arrayidx593, align 2
  %conv594 = sext i16 %376 to i32
  %sub595 = sub nsw i32 %conv586, %conv594
  %conv596 = sitofp i32 %sub595 to float
  %mul597 = fmul float 0x3FE6A09E60000000, %conv596
  %mul598 = fmul float %366, %mul597
  store float %mul598, ptr %w391, align 4
  %377 = load float, ptr %f2389, align 4
  %378 = load float, ptr %w391, align 4
  %sub599 = fsub float %377, %378
  store float %sub599, ptr %f3390, align 4
  %379 = load float, ptr %f2389, align 4
  %380 = load float, ptr %w391, align 4
  %add600 = fadd float %379, %380
  store float %add600, ptr %f2389, align 4
  %381 = load float, ptr %f0387, align 4
  %382 = load float, ptr %f2389, align 4
  %add601 = fadd float %381, %382
  %383 = load ptr, ptr %x, align 8
  %arrayidx602 = getelementptr inbounds float, ptr %383, i64 128
  store float %add601, ptr %arrayidx602, align 4
  %384 = load float, ptr %f0387, align 4
  %385 = load float, ptr %f2389, align 4
  %sub603 = fsub float %384, %385
  %386 = load ptr, ptr %x, align 8
  %arrayidx604 = getelementptr inbounds float, ptr %386, i64 130
  store float %sub603, ptr %arrayidx604, align 4
  %387 = load float, ptr %f1388, align 4
  %388 = load float, ptr %f3390, align 4
  %add605 = fadd float %387, %388
  %389 = load ptr, ptr %x, align 8
  %arrayidx606 = getelementptr inbounds float, ptr %389, i64 129
  store float %add605, ptr %arrayidx606, align 4
  %390 = load float, ptr %f1388, align 4
  %391 = load float, ptr %f3390, align 4
  %sub607 = fsub float %390, %391
  %392 = load ptr, ptr %x, align 8
  %arrayidx608 = getelementptr inbounds float, ptr %392, i64 131
  store float %sub607, ptr %arrayidx608, align 4
  br label %do.cond609

do.cond609:                                       ; preds = %do.body386
  %393 = load i16, ptr %j, align 2
  %dec610 = add i16 %393, -1
  store i16 %dec610, ptr %j, align 2
  %conv611 = sext i16 %dec610 to i32
  %cmp612 = icmp sge i32 %conv611, 0
  br i1 %cmp612, label %do.body386, label %do.end614, !llvm.loop !9

do.end614:                                        ; preds = %do.cond609
  br label %if.end

if.end:                                           ; preds = %do.end614, %do.end384
  br label %if.end615

if.end615:                                        ; preds = %if.end, %do.end
  %394 = load ptr, ptr %x, align 8
  call void @fht(ptr noundef %394, i16 noundef signext 256)
  br label %for.inc

for.inc:                                          ; preds = %if.end615
  %395 = load i16, ptr %b, align 2
  %inc = add i16 %395, 1
  store i16 %inc, ptr %b, align 2
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %fz.addr, align 8
  %1 = load i16, ptr %n.addr, align 2
  %conv = sext i16 %1 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds float, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %fn, align 8
  store ptr @costab, ptr %tri, align 8
  store i16 4, ptr %k4, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond198, %entry
  %2 = load i16, ptr %k4, align 2
  %conv1 = sext i16 %2 to i32
  %shr = ashr i32 %conv1, 1
  %conv2 = trunc i32 %shr to i16
  store i16 %conv2, ptr %kx, align 2
  %3 = load i16, ptr %k4, align 2
  store i16 %3, ptr %k1, align 2
  %4 = load i16, ptr %k4, align 2
  %conv3 = sext i16 %4 to i32
  %shl = shl i32 %conv3, 1
  %conv4 = trunc i32 %shl to i16
  store i16 %conv4, ptr %k2, align 2
  %5 = load i16, ptr %k2, align 2
  %conv5 = sext i16 %5 to i32
  %6 = load i16, ptr %k1, align 2
  %conv6 = sext i16 %6 to i32
  %add = add nsw i32 %conv5, %conv6
  %conv7 = trunc i32 %add to i16
  store i16 %conv7, ptr %k3, align 2
  %7 = load i16, ptr %k2, align 2
  %conv8 = sext i16 %7 to i32
  %shl9 = shl i32 %conv8, 1
  %conv10 = trunc i32 %shl9 to i16
  store i16 %conv10, ptr %k4, align 2
  %8 = load ptr, ptr %fz.addr, align 8
  store ptr %8, ptr %fi, align 8
  %9 = load ptr, ptr %fi, align 8
  %10 = load i16, ptr %kx, align 2
  %conv11 = sext i16 %10 to i32
  %idx.ext12 = sext i32 %conv11 to i64
  %add.ptr13 = getelementptr inbounds float, ptr %9, i64 %idx.ext12
  store ptr %add.ptr13, ptr %gi, align 8
  br label %do.body14

do.body14:                                        ; preds = %do.cond, %do.body
  %11 = load ptr, ptr %fi, align 8
  %arrayidx = getelementptr inbounds float, ptr %11, i64 0
  %12 = load float, ptr %arrayidx, align 4
  %13 = load ptr, ptr %fi, align 8
  %14 = load i16, ptr %k1, align 2
  %idxprom = sext i16 %14 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %13, i64 %idxprom
  %15 = load float, ptr %arrayidx15, align 4
  %sub = fsub float %12, %15
  store float %sub, ptr %f1, align 4
  %16 = load ptr, ptr %fi, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %16, i64 0
  %17 = load float, ptr %arrayidx16, align 4
  %18 = load ptr, ptr %fi, align 8
  %19 = load i16, ptr %k1, align 2
  %idxprom17 = sext i16 %19 to i64
  %arrayidx18 = getelementptr inbounds float, ptr %18, i64 %idxprom17
  %20 = load float, ptr %arrayidx18, align 4
  %add19 = fadd float %17, %20
  store float %add19, ptr %f0, align 4
  %21 = load ptr, ptr %fi, align 8
  %22 = load i16, ptr %k2, align 2
  %idxprom20 = sext i16 %22 to i64
  %arrayidx21 = getelementptr inbounds float, ptr %21, i64 %idxprom20
  %23 = load float, ptr %arrayidx21, align 4
  %24 = load ptr, ptr %fi, align 8
  %25 = load i16, ptr %k3, align 2
  %idxprom22 = sext i16 %25 to i64
  %arrayidx23 = getelementptr inbounds float, ptr %24, i64 %idxprom22
  %26 = load float, ptr %arrayidx23, align 4
  %sub24 = fsub float %23, %26
  store float %sub24, ptr %f3, align 4
  %27 = load ptr, ptr %fi, align 8
  %28 = load i16, ptr %k2, align 2
  %idxprom25 = sext i16 %28 to i64
  %arrayidx26 = getelementptr inbounds float, ptr %27, i64 %idxprom25
  %29 = load float, ptr %arrayidx26, align 4
  %30 = load ptr, ptr %fi, align 8
  %31 = load i16, ptr %k3, align 2
  %idxprom27 = sext i16 %31 to i64
  %arrayidx28 = getelementptr inbounds float, ptr %30, i64 %idxprom27
  %32 = load float, ptr %arrayidx28, align 4
  %add29 = fadd float %29, %32
  store float %add29, ptr %f2, align 4
  %33 = load float, ptr %f0, align 4
  %34 = load float, ptr %f2, align 4
  %sub30 = fsub float %33, %34
  %35 = load ptr, ptr %fi, align 8
  %36 = load i16, ptr %k2, align 2
  %idxprom31 = sext i16 %36 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %35, i64 %idxprom31
  store float %sub30, ptr %arrayidx32, align 4
  %37 = load float, ptr %f0, align 4
  %38 = load float, ptr %f2, align 4
  %add33 = fadd float %37, %38
  %39 = load ptr, ptr %fi, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %39, i64 0
  store float %add33, ptr %arrayidx34, align 4
  %40 = load float, ptr %f1, align 4
  %41 = load float, ptr %f3, align 4
  %sub35 = fsub float %40, %41
  %42 = load ptr, ptr %fi, align 8
  %43 = load i16, ptr %k3, align 2
  %idxprom36 = sext i16 %43 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %42, i64 %idxprom36
  store float %sub35, ptr %arrayidx37, align 4
  %44 = load float, ptr %f1, align 4
  %45 = load float, ptr %f3, align 4
  %add38 = fadd float %44, %45
  %46 = load ptr, ptr %fi, align 8
  %47 = load i16, ptr %k1, align 2
  %idxprom39 = sext i16 %47 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %46, i64 %idxprom39
  store float %add38, ptr %arrayidx40, align 4
  %48 = load ptr, ptr %gi, align 8
  %arrayidx41 = getelementptr inbounds float, ptr %48, i64 0
  %49 = load float, ptr %arrayidx41, align 4
  %50 = load ptr, ptr %gi, align 8
  %51 = load i16, ptr %k1, align 2
  %idxprom42 = sext i16 %51 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %50, i64 %idxprom42
  %52 = load float, ptr %arrayidx43, align 4
  %sub44 = fsub float %49, %52
  store float %sub44, ptr %f1, align 4
  %53 = load ptr, ptr %gi, align 8
  %arrayidx45 = getelementptr inbounds float, ptr %53, i64 0
  %54 = load float, ptr %arrayidx45, align 4
  %55 = load ptr, ptr %gi, align 8
  %56 = load i16, ptr %k1, align 2
  %idxprom46 = sext i16 %56 to i64
  %arrayidx47 = getelementptr inbounds float, ptr %55, i64 %idxprom46
  %57 = load float, ptr %arrayidx47, align 4
  %add48 = fadd float %54, %57
  store float %add48, ptr %f0, align 4
  %58 = load ptr, ptr %gi, align 8
  %59 = load i16, ptr %k3, align 2
  %idxprom49 = sext i16 %59 to i64
  %arrayidx50 = getelementptr inbounds float, ptr %58, i64 %idxprom49
  %60 = load float, ptr %arrayidx50, align 4
  %conv51 = fpext float %60 to double
  %mul = fmul double 0x3FF6A09E667F3BCD, %conv51
  %conv52 = fptrunc double %mul to float
  store float %conv52, ptr %f3, align 4
  %61 = load ptr, ptr %gi, align 8
  %62 = load i16, ptr %k2, align 2
  %idxprom53 = sext i16 %62 to i64
  %arrayidx54 = getelementptr inbounds float, ptr %61, i64 %idxprom53
  %63 = load float, ptr %arrayidx54, align 4
  %conv55 = fpext float %63 to double
  %mul56 = fmul double 0x3FF6A09E667F3BCD, %conv55
  %conv57 = fptrunc double %mul56 to float
  store float %conv57, ptr %f2, align 4
  %64 = load float, ptr %f0, align 4
  %65 = load float, ptr %f2, align 4
  %sub58 = fsub float %64, %65
  %66 = load ptr, ptr %gi, align 8
  %67 = load i16, ptr %k2, align 2
  %idxprom59 = sext i16 %67 to i64
  %arrayidx60 = getelementptr inbounds float, ptr %66, i64 %idxprom59
  store float %sub58, ptr %arrayidx60, align 4
  %68 = load float, ptr %f0, align 4
  %69 = load float, ptr %f2, align 4
  %add61 = fadd float %68, %69
  %70 = load ptr, ptr %gi, align 8
  %arrayidx62 = getelementptr inbounds float, ptr %70, i64 0
  store float %add61, ptr %arrayidx62, align 4
  %71 = load float, ptr %f1, align 4
  %72 = load float, ptr %f3, align 4
  %sub63 = fsub float %71, %72
  %73 = load ptr, ptr %gi, align 8
  %74 = load i16, ptr %k3, align 2
  %idxprom64 = sext i16 %74 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %73, i64 %idxprom64
  store float %sub63, ptr %arrayidx65, align 4
  %75 = load float, ptr %f1, align 4
  %76 = load float, ptr %f3, align 4
  %add66 = fadd float %75, %76
  %77 = load ptr, ptr %gi, align 8
  %78 = load i16, ptr %k1, align 2
  %idxprom67 = sext i16 %78 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %77, i64 %idxprom67
  store float %add66, ptr %arrayidx68, align 4
  %79 = load i16, ptr %k4, align 2
  %conv69 = sext i16 %79 to i32
  %80 = load ptr, ptr %gi, align 8
  %idx.ext70 = sext i32 %conv69 to i64
  %add.ptr71 = getelementptr inbounds float, ptr %80, i64 %idx.ext70
  store ptr %add.ptr71, ptr %gi, align 8
  %81 = load i16, ptr %k4, align 2
  %conv72 = sext i16 %81 to i32
  %82 = load ptr, ptr %fi, align 8
  %idx.ext73 = sext i32 %conv72 to i64
  %add.ptr74 = getelementptr inbounds float, ptr %82, i64 %idx.ext73
  store ptr %add.ptr74, ptr %fi, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body14
  %83 = load ptr, ptr %fi, align 8
  %84 = load ptr, ptr %fn, align 8
  %cmp = icmp ult ptr %83, %84
  br i1 %cmp, label %do.body14, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
  %85 = load ptr, ptr %tri, align 8
  %arrayidx76 = getelementptr inbounds float, ptr %85, i64 0
  %86 = load float, ptr %arrayidx76, align 4
  store float %86, ptr %c1, align 4
  %87 = load ptr, ptr %tri, align 8
  %arrayidx77 = getelementptr inbounds float, ptr %87, i64 1
  %88 = load float, ptr %arrayidx77, align 4
  store float %88, ptr %s1, align 4
  store i16 1, ptr %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %89 = load i16, ptr %i, align 2
  %conv78 = sext i16 %89 to i32
  %90 = load i16, ptr %kx, align 2
  %conv79 = sext i16 %90 to i32
  %cmp80 = icmp slt i32 %conv78, %conv79
  br i1 %cmp80, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %91 = load float, ptr %s1, align 4
  %mul82 = fmul float 2.000000e+00, %91
  %92 = load float, ptr %s1, align 4
  %neg = fneg float %mul82
  %93 = call float @llvm.fmuladd.f32(float %neg, float %92, float 1.000000e+00)
  store float %93, ptr %c2, align 4
  %94 = load float, ptr %s1, align 4
  %mul84 = fmul float 2.000000e+00, %94
  %95 = load float, ptr %c1, align 4
  %mul85 = fmul float %mul84, %95
  store float %mul85, ptr %s2, align 4
  %96 = load ptr, ptr %fz.addr, align 8
  %97 = load i16, ptr %i, align 2
  %conv86 = sext i16 %97 to i32
  %idx.ext87 = sext i32 %conv86 to i64
  %add.ptr88 = getelementptr inbounds float, ptr %96, i64 %idx.ext87
  store ptr %add.ptr88, ptr %fi, align 8
  %98 = load ptr, ptr %fz.addr, align 8
  %99 = load i16, ptr %k1, align 2
  %conv89 = sext i16 %99 to i32
  %idx.ext90 = sext i32 %conv89 to i64
  %add.ptr91 = getelementptr inbounds float, ptr %98, i64 %idx.ext90
  %100 = load i16, ptr %i, align 2
  %conv92 = sext i16 %100 to i32
  %idx.ext93 = sext i32 %conv92 to i64
  %idx.neg = sub i64 0, %idx.ext93
  %add.ptr94 = getelementptr inbounds float, ptr %add.ptr91, i64 %idx.neg
  store ptr %add.ptr94, ptr %gi, align 8
  br label %do.body95

do.body95:                                        ; preds = %do.cond184, %for.body
  %101 = load float, ptr %s2, align 4
  %102 = load ptr, ptr %fi, align 8
  %103 = load i16, ptr %k1, align 2
  %idxprom100 = sext i16 %103 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %102, i64 %idxprom100
  %104 = load float, ptr %arrayidx101, align 4
  %105 = load float, ptr %c2, align 4
  %106 = load ptr, ptr %gi, align 8
  %107 = load i16, ptr %k1, align 2
  %idxprom103 = sext i16 %107 to i64
  %arrayidx104 = getelementptr inbounds float, ptr %106, i64 %idxprom103
  %108 = load float, ptr %arrayidx104, align 4
  %mul105 = fmul float %105, %108
  %neg106 = fneg float %mul105
  %109 = call float @llvm.fmuladd.f32(float %101, float %104, float %neg106)
  store float %109, ptr %b, align 4
  %110 = load float, ptr %c2, align 4
  %111 = load ptr, ptr %fi, align 8
  %112 = load i16, ptr %k1, align 2
  %idxprom107 = sext i16 %112 to i64
  %arrayidx108 = getelementptr inbounds float, ptr %111, i64 %idxprom107
  %113 = load float, ptr %arrayidx108, align 4
  %114 = load float, ptr %s2, align 4
  %115 = load ptr, ptr %gi, align 8
  %116 = load i16, ptr %k1, align 2
  %idxprom110 = sext i16 %116 to i64
  %arrayidx111 = getelementptr inbounds float, ptr %115, i64 %idxprom110
  %117 = load float, ptr %arrayidx111, align 4
  %mul112 = fmul float %114, %117
  %118 = call float @llvm.fmuladd.f32(float %110, float %113, float %mul112)
  store float %118, ptr %a, align 4
  %119 = load ptr, ptr %fi, align 8
  %arrayidx113 = getelementptr inbounds float, ptr %119, i64 0
  %120 = load float, ptr %arrayidx113, align 4
  %121 = load float, ptr %a, align 4
  %sub114 = fsub float %120, %121
  store float %sub114, ptr %f197, align 4
  %122 = load ptr, ptr %fi, align 8
  %arrayidx115 = getelementptr inbounds float, ptr %122, i64 0
  %123 = load float, ptr %arrayidx115, align 4
  %124 = load float, ptr %a, align 4
  %add116 = fadd float %123, %124
  store float %add116, ptr %f096, align 4
  %125 = load ptr, ptr %gi, align 8
  %arrayidx117 = getelementptr inbounds float, ptr %125, i64 0
  %126 = load float, ptr %arrayidx117, align 4
  %127 = load float, ptr %b, align 4
  %sub118 = fsub float %126, %127
  store float %sub118, ptr %g1, align 4
  %128 = load ptr, ptr %gi, align 8
  %arrayidx119 = getelementptr inbounds float, ptr %128, i64 0
  %129 = load float, ptr %arrayidx119, align 4
  %130 = load float, ptr %b, align 4
  %add120 = fadd float %129, %130
  store float %add120, ptr %g0, align 4
  %131 = load float, ptr %s2, align 4
  %132 = load ptr, ptr %fi, align 8
  %133 = load i16, ptr %k3, align 2
  %idxprom121 = sext i16 %133 to i64
  %arrayidx122 = getelementptr inbounds float, ptr %132, i64 %idxprom121
  %134 = load float, ptr %arrayidx122, align 4
  %135 = load float, ptr %c2, align 4
  %136 = load ptr, ptr %gi, align 8
  %137 = load i16, ptr %k3, align 2
  %idxprom124 = sext i16 %137 to i64
  %arrayidx125 = getelementptr inbounds float, ptr %136, i64 %idxprom124
  %138 = load float, ptr %arrayidx125, align 4
  %mul126 = fmul float %135, %138
  %neg127 = fneg float %mul126
  %139 = call float @llvm.fmuladd.f32(float %131, float %134, float %neg127)
  store float %139, ptr %b, align 4
  %140 = load float, ptr %c2, align 4
  %141 = load ptr, ptr %fi, align 8
  %142 = load i16, ptr %k3, align 2
  %idxprom128 = sext i16 %142 to i64
  %arrayidx129 = getelementptr inbounds float, ptr %141, i64 %idxprom128
  %143 = load float, ptr %arrayidx129, align 4
  %144 = load float, ptr %s2, align 4
  %145 = load ptr, ptr %gi, align 8
  %146 = load i16, ptr %k3, align 2
  %idxprom131 = sext i16 %146 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %145, i64 %idxprom131
  %147 = load float, ptr %arrayidx132, align 4
  %mul133 = fmul float %144, %147
  %148 = call float @llvm.fmuladd.f32(float %140, float %143, float %mul133)
  store float %148, ptr %a, align 4
  %149 = load ptr, ptr %fi, align 8
  %150 = load i16, ptr %k2, align 2
  %idxprom134 = sext i16 %150 to i64
  %arrayidx135 = getelementptr inbounds float, ptr %149, i64 %idxprom134
  %151 = load float, ptr %arrayidx135, align 4
  %152 = load float, ptr %a, align 4
  %sub136 = fsub float %151, %152
  store float %sub136, ptr %f399, align 4
  %153 = load ptr, ptr %fi, align 8
  %154 = load i16, ptr %k2, align 2
  %idxprom137 = sext i16 %154 to i64
  %arrayidx138 = getelementptr inbounds float, ptr %153, i64 %idxprom137
  %155 = load float, ptr %arrayidx138, align 4
  %156 = load float, ptr %a, align 4
  %add139 = fadd float %155, %156
  store float %add139, ptr %f298, align 4
  %157 = load ptr, ptr %gi, align 8
  %158 = load i16, ptr %k2, align 2
  %idxprom140 = sext i16 %158 to i64
  %arrayidx141 = getelementptr inbounds float, ptr %157, i64 %idxprom140
  %159 = load float, ptr %arrayidx141, align 4
  %160 = load float, ptr %b, align 4
  %sub142 = fsub float %159, %160
  store float %sub142, ptr %g3, align 4
  %161 = load ptr, ptr %gi, align 8
  %162 = load i16, ptr %k2, align 2
  %idxprom143 = sext i16 %162 to i64
  %arrayidx144 = getelementptr inbounds float, ptr %161, i64 %idxprom143
  %163 = load float, ptr %arrayidx144, align 4
  %164 = load float, ptr %b, align 4
  %add145 = fadd float %163, %164
  store float %add145, ptr %g2, align 4
  %165 = load float, ptr %s1, align 4
  %166 = load float, ptr %f298, align 4
  %167 = load float, ptr %c1, align 4
  %168 = load float, ptr %g3, align 4
  %mul147 = fmul float %167, %168
  %neg148 = fneg float %mul147
  %169 = call float @llvm.fmuladd.f32(float %165, float %166, float %neg148)
  store float %169, ptr %b, align 4
  %170 = load float, ptr %c1, align 4
  %171 = load float, ptr %f298, align 4
  %172 = load float, ptr %s1, align 4
  %173 = load float, ptr %g3, align 4
  %mul150 = fmul float %172, %173
  %174 = call float @llvm.fmuladd.f32(float %170, float %171, float %mul150)
  store float %174, ptr %a, align 4
  %175 = load float, ptr %f096, align 4
  %176 = load float, ptr %a, align 4
  %sub151 = fsub float %175, %176
  %177 = load ptr, ptr %fi, align 8
  %178 = load i16, ptr %k2, align 2
  %idxprom152 = sext i16 %178 to i64
  %arrayidx153 = getelementptr inbounds float, ptr %177, i64 %idxprom152
  store float %sub151, ptr %arrayidx153, align 4
  %179 = load float, ptr %f096, align 4
  %180 = load float, ptr %a, align 4
  %add154 = fadd float %179, %180
  %181 = load ptr, ptr %fi, align 8
  %arrayidx155 = getelementptr inbounds float, ptr %181, i64 0
  store float %add154, ptr %arrayidx155, align 4
  %182 = load float, ptr %g1, align 4
  %183 = load float, ptr %b, align 4
  %sub156 = fsub float %182, %183
  %184 = load ptr, ptr %gi, align 8
  %185 = load i16, ptr %k3, align 2
  %idxprom157 = sext i16 %185 to i64
  %arrayidx158 = getelementptr inbounds float, ptr %184, i64 %idxprom157
  store float %sub156, ptr %arrayidx158, align 4
  %186 = load float, ptr %g1, align 4
  %187 = load float, ptr %b, align 4
  %add159 = fadd float %186, %187
  %188 = load ptr, ptr %gi, align 8
  %189 = load i16, ptr %k1, align 2
  %idxprom160 = sext i16 %189 to i64
  %arrayidx161 = getelementptr inbounds float, ptr %188, i64 %idxprom160
  store float %add159, ptr %arrayidx161, align 4
  %190 = load float, ptr %c1, align 4
  %191 = load float, ptr %g2, align 4
  %192 = load float, ptr %s1, align 4
  %193 = load float, ptr %f399, align 4
  %mul163 = fmul float %192, %193
  %neg164 = fneg float %mul163
  %194 = call float @llvm.fmuladd.f32(float %190, float %191, float %neg164)
  store float %194, ptr %b, align 4
  %195 = load float, ptr %s1, align 4
  %196 = load float, ptr %g2, align 4
  %197 = load float, ptr %c1, align 4
  %198 = load float, ptr %f399, align 4
  %mul166 = fmul float %197, %198
  %199 = call float @llvm.fmuladd.f32(float %195, float %196, float %mul166)
  store float %199, ptr %a, align 4
  %200 = load float, ptr %g0, align 4
  %201 = load float, ptr %a, align 4
  %sub167 = fsub float %200, %201
  %202 = load ptr, ptr %gi, align 8
  %203 = load i16, ptr %k2, align 2
  %idxprom168 = sext i16 %203 to i64
  %arrayidx169 = getelementptr inbounds float, ptr %202, i64 %idxprom168
  store float %sub167, ptr %arrayidx169, align 4
  %204 = load float, ptr %g0, align 4
  %205 = load float, ptr %a, align 4
  %add170 = fadd float %204, %205
  %206 = load ptr, ptr %gi, align 8
  %arrayidx171 = getelementptr inbounds float, ptr %206, i64 0
  store float %add170, ptr %arrayidx171, align 4
  %207 = load float, ptr %f197, align 4
  %208 = load float, ptr %b, align 4
  %sub172 = fsub float %207, %208
  %209 = load ptr, ptr %fi, align 8
  %210 = load i16, ptr %k3, align 2
  %idxprom173 = sext i16 %210 to i64
  %arrayidx174 = getelementptr inbounds float, ptr %209, i64 %idxprom173
  store float %sub172, ptr %arrayidx174, align 4
  %211 = load float, ptr %f197, align 4
  %212 = load float, ptr %b, align 4
  %add175 = fadd float %211, %212
  %213 = load ptr, ptr %fi, align 8
  %214 = load i16, ptr %k1, align 2
  %idxprom176 = sext i16 %214 to i64
  %arrayidx177 = getelementptr inbounds float, ptr %213, i64 %idxprom176
  store float %add175, ptr %arrayidx177, align 4
  %215 = load i16, ptr %k4, align 2
  %conv178 = sext i16 %215 to i32
  %216 = load ptr, ptr %gi, align 8
  %idx.ext179 = sext i32 %conv178 to i64
  %add.ptr180 = getelementptr inbounds float, ptr %216, i64 %idx.ext179
  store ptr %add.ptr180, ptr %gi, align 8
  %217 = load i16, ptr %k4, align 2
  %conv181 = sext i16 %217 to i32
  %218 = load ptr, ptr %fi, align 8
  %idx.ext182 = sext i32 %conv181 to i64
  %add.ptr183 = getelementptr inbounds float, ptr %218, i64 %idx.ext182
  store ptr %add.ptr183, ptr %fi, align 8
  br label %do.cond184

do.cond184:                                       ; preds = %do.body95
  %219 = load ptr, ptr %fi, align 8
  %220 = load ptr, ptr %fn, align 8
  %cmp185 = icmp ult ptr %219, %220
  br i1 %cmp185, label %do.body95, label %do.end187, !llvm.loop !12

do.end187:                                        ; preds = %do.cond184
  %221 = load float, ptr %c1, align 4
  store float %221, ptr %c2, align 4
  %222 = load float, ptr %c2, align 4
  %223 = load ptr, ptr %tri, align 8
  %arrayidx188 = getelementptr inbounds float, ptr %223, i64 0
  %224 = load float, ptr %arrayidx188, align 4
  %225 = load float, ptr %s1, align 4
  %226 = load ptr, ptr %tri, align 8
  %arrayidx190 = getelementptr inbounds float, ptr %226, i64 1
  %227 = load float, ptr %arrayidx190, align 4
  %mul191 = fmul float %225, %227
  %neg192 = fneg float %mul191
  %228 = call float @llvm.fmuladd.f32(float %222, float %224, float %neg192)
  store float %228, ptr %c1, align 4
  %229 = load float, ptr %c2, align 4
  %230 = load ptr, ptr %tri, align 8
  %arrayidx193 = getelementptr inbounds float, ptr %230, i64 1
  %231 = load float, ptr %arrayidx193, align 4
  %232 = load float, ptr %s1, align 4
  %233 = load ptr, ptr %tri, align 8
  %arrayidx195 = getelementptr inbounds float, ptr %233, i64 0
  %234 = load float, ptr %arrayidx195, align 4
  %mul196 = fmul float %232, %234
  %235 = call float @llvm.fmuladd.f32(float %229, float %231, float %mul196)
  store float %235, ptr %s1, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end187
  %236 = load i16, ptr %i, align 2
  %inc = add i16 %236, 1
  store i16 %inc, ptr %i, align 2
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %237 = load ptr, ptr %tri, align 8
  %add.ptr197 = getelementptr inbounds float, ptr %237, i64 2
  store ptr %add.ptr197, ptr %tri, align 8
  br label %do.cond198

do.cond198:                                       ; preds = %for.end
  %238 = load i16, ptr %k4, align 2
  %conv199 = sext i16 %238 to i32
  %239 = load i16, ptr %n.addr, align 2
  %conv200 = sext i16 %239 to i32
  %cmp201 = icmp slt i32 %conv199, %conv200
  br i1 %cmp201, label %do.body, label %do.end203, !llvm.loop !14

do.end203:                                        ; preds = %do.cond198
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %w = alloca float, align 4
  %f0129 = alloca float, align 4
  %f1130 = alloca float, align 4
  %f2131 = alloca float, align 4
  %f3132 = alloca float, align 4
  %w133 = alloca float, align 4
  %f0323 = alloca float, align 4
  %f1324 = alloca float, align 4
  %f2325 = alloca float, align 4
  %f3326 = alloca float, align 4
  %w327 = alloca float, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %chn, ptr %chn.addr, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  store i16 127, ptr %jj, align 2
  %0 = load ptr, ptr %x.addr, align 8
  %add.ptr = getelementptr inbounds float, ptr %0, i64 512
  store ptr %add.ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %chn.addr, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %2 = load i16, ptr %jj, align 2
  %idxprom = sext i16 %2 to i64
  %arrayidx = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  store i16 %3, ptr %i, align 2
  %4 = load i16, ptr %i, align 2
  %idxprom1 = sext i16 %4 to i64
  %arrayidx2 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom1
  %5 = load float, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %buffer.addr, align 8
  %7 = load i32, ptr %chn.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %6, i64 %idxprom3
  %8 = load ptr, ptr %arrayidx4, align 8
  %9 = load i16, ptr %i, align 2
  %idxprom5 = sext i16 %9 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %8, i64 %idxprom5
  %10 = load i16, ptr %arrayidx6, align 2
  %conv = sext i16 %10 to i32
  %conv7 = sitofp i32 %conv to float
  %mul = fmul float %5, %conv7
  store float %mul, ptr %f0, align 4
  %11 = load i16, ptr %i, align 2
  %conv8 = sext i16 %11 to i32
  %sub = sub nsw i32 511, %conv8
  %idxprom9 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom9
  %12 = load float, ptr %arrayidx10, align 4
  %13 = load ptr, ptr %buffer.addr, align 8
  %14 = load i32, ptr %chn.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %13, i64 %idxprom11
  %15 = load ptr, ptr %arrayidx12, align 8
  %16 = load i16, ptr %i, align 2
  %conv13 = sext i16 %16 to i32
  %add = add nsw i32 %conv13, 512
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %15, i64 %idxprom14
  %17 = load i16, ptr %arrayidx15, align 2
  %conv16 = sext i16 %17 to i32
  %conv17 = sitofp i32 %conv16 to float
  %mul18 = fmul float %12, %conv17
  store float %mul18, ptr %w, align 4
  %18 = load float, ptr %f0, align 4
  %19 = load float, ptr %w, align 4
  %sub19 = fsub float %18, %19
  store float %sub19, ptr %f1, align 4
  %20 = load float, ptr %f0, align 4
  %21 = load float, ptr %w, align 4
  %add20 = fadd float %20, %21
  store float %add20, ptr %f0, align 4
  %22 = load i16, ptr %i, align 2
  %conv21 = sext i16 %22 to i32
  %add22 = add nsw i32 %conv21, 256
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom23
  %23 = load float, ptr %arrayidx24, align 4
  %24 = load ptr, ptr %buffer.addr, align 8
  %25 = load i32, ptr %chn.addr, align 4
  %idxprom25 = sext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %24, i64 %idxprom25
  %26 = load ptr, ptr %arrayidx26, align 8
  %27 = load i16, ptr %i, align 2
  %conv27 = sext i16 %27 to i32
  %add28 = add nsw i32 %conv27, 256
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i16, ptr %26, i64 %idxprom29
  %28 = load i16, ptr %arrayidx30, align 2
  %conv31 = sext i16 %28 to i32
  %conv32 = sitofp i32 %conv31 to float
  %mul33 = fmul float %23, %conv32
  store float %mul33, ptr %f2, align 4
  %29 = load i16, ptr %i, align 2
  %conv34 = sext i16 %29 to i32
  %sub35 = sub nsw i32 255, %conv34
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom36
  %30 = load float, ptr %arrayidx37, align 4
  %31 = load ptr, ptr %buffer.addr, align 8
  %32 = load i32, ptr %chn.addr, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %31, i64 %idxprom38
  %33 = load ptr, ptr %arrayidx39, align 8
  %34 = load i16, ptr %i, align 2
  %conv40 = sext i16 %34 to i32
  %add41 = add nsw i32 %conv40, 768
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds i16, ptr %33, i64 %idxprom42
  %35 = load i16, ptr %arrayidx43, align 2
  %conv44 = sext i16 %35 to i32
  %conv45 = sitofp i32 %conv44 to float
  %mul46 = fmul float %30, %conv45
  store float %mul46, ptr %w, align 4
  %36 = load float, ptr %f2, align 4
  %37 = load float, ptr %w, align 4
  %sub47 = fsub float %36, %37
  store float %sub47, ptr %f3, align 4
  %38 = load float, ptr %f2, align 4
  %39 = load float, ptr %w, align 4
  %add48 = fadd float %38, %39
  store float %add48, ptr %f2, align 4
  %40 = load ptr, ptr %x.addr, align 8
  %add.ptr49 = getelementptr inbounds float, ptr %40, i64 -4
  store ptr %add.ptr49, ptr %x.addr, align 8
  %41 = load float, ptr %f0, align 4
  %42 = load float, ptr %f2, align 4
  %add50 = fadd float %41, %42
  %43 = load ptr, ptr %x.addr, align 8
  %arrayidx51 = getelementptr inbounds float, ptr %43, i64 0
  store float %add50, ptr %arrayidx51, align 4
  %44 = load float, ptr %f0, align 4
  %45 = load float, ptr %f2, align 4
  %sub52 = fsub float %44, %45
  %46 = load ptr, ptr %x.addr, align 8
  %arrayidx53 = getelementptr inbounds float, ptr %46, i64 2
  store float %sub52, ptr %arrayidx53, align 4
  %47 = load float, ptr %f1, align 4
  %48 = load float, ptr %f3, align 4
  %add54 = fadd float %47, %48
  %49 = load ptr, ptr %x.addr, align 8
  %arrayidx55 = getelementptr inbounds float, ptr %49, i64 1
  store float %add54, ptr %arrayidx55, align 4
  %50 = load float, ptr %f1, align 4
  %51 = load float, ptr %f3, align 4
  %sub56 = fsub float %50, %51
  %52 = load ptr, ptr %x.addr, align 8
  %arrayidx57 = getelementptr inbounds float, ptr %52, i64 3
  store float %sub56, ptr %arrayidx57, align 4
  %53 = load i16, ptr %i, align 2
  %conv58 = sext i16 %53 to i32
  %add59 = add nsw i32 %conv58, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom60
  %54 = load float, ptr %arrayidx61, align 4
  %55 = load ptr, ptr %buffer.addr, align 8
  %56 = load i32, ptr %chn.addr, align 4
  %idxprom62 = sext i32 %56 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %55, i64 %idxprom62
  %57 = load ptr, ptr %arrayidx63, align 8
  %58 = load i16, ptr %i, align 2
  %conv64 = sext i16 %58 to i32
  %add65 = add nsw i32 %conv64, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds i16, ptr %57, i64 %idxprom66
  %59 = load i16, ptr %arrayidx67, align 2
  %conv68 = sext i16 %59 to i32
  %conv69 = sitofp i32 %conv68 to float
  %mul70 = fmul float %54, %conv69
  store float %mul70, ptr %f0, align 4
  %60 = load i16, ptr %i, align 2
  %conv71 = sext i16 %60 to i32
  %sub72 = sub nsw i32 510, %conv71
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom73
  %61 = load float, ptr %arrayidx74, align 4
  %62 = load ptr, ptr %buffer.addr, align 8
  %63 = load i32, ptr %chn.addr, align 4
  %idxprom75 = sext i32 %63 to i64
  %arrayidx76 = getelementptr inbounds ptr, ptr %62, i64 %idxprom75
  %64 = load ptr, ptr %arrayidx76, align 8
  %65 = load i16, ptr %i, align 2
  %conv77 = sext i16 %65 to i32
  %add78 = add nsw i32 %conv77, 513
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i16, ptr %64, i64 %idxprom79
  %66 = load i16, ptr %arrayidx80, align 2
  %conv81 = sext i16 %66 to i32
  %conv82 = sitofp i32 %conv81 to float
  %mul83 = fmul float %61, %conv82
  store float %mul83, ptr %w, align 4
  %67 = load float, ptr %f0, align 4
  %68 = load float, ptr %w, align 4
  %sub84 = fsub float %67, %68
  store float %sub84, ptr %f1, align 4
  %69 = load float, ptr %f0, align 4
  %70 = load float, ptr %w, align 4
  %add85 = fadd float %69, %70
  store float %add85, ptr %f0, align 4
  %71 = load i16, ptr %i, align 2
  %conv86 = sext i16 %71 to i32
  %add87 = add nsw i32 %conv86, 257
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom88
  %72 = load float, ptr %arrayidx89, align 4
  %73 = load ptr, ptr %buffer.addr, align 8
  %74 = load i32, ptr %chn.addr, align 4
  %idxprom90 = sext i32 %74 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %73, i64 %idxprom90
  %75 = load ptr, ptr %arrayidx91, align 8
  %76 = load i16, ptr %i, align 2
  %conv92 = sext i16 %76 to i32
  %add93 = add nsw i32 %conv92, 257
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds i16, ptr %75, i64 %idxprom94
  %77 = load i16, ptr %arrayidx95, align 2
  %conv96 = sext i16 %77 to i32
  %conv97 = sitofp i32 %conv96 to float
  %mul98 = fmul float %72, %conv97
  store float %mul98, ptr %f2, align 4
  %78 = load i16, ptr %i, align 2
  %conv99 = sext i16 %78 to i32
  %sub100 = sub nsw i32 254, %conv99
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom101
  %79 = load float, ptr %arrayidx102, align 4
  %80 = load ptr, ptr %buffer.addr, align 8
  %81 = load i32, ptr %chn.addr, align 4
  %idxprom103 = sext i32 %81 to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %80, i64 %idxprom103
  %82 = load ptr, ptr %arrayidx104, align 8
  %83 = load i16, ptr %i, align 2
  %conv105 = sext i16 %83 to i32
  %add106 = add nsw i32 %conv105, 769
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds i16, ptr %82, i64 %idxprom107
  %84 = load i16, ptr %arrayidx108, align 2
  %conv109 = sext i16 %84 to i32
  %conv110 = sitofp i32 %conv109 to float
  %mul111 = fmul float %79, %conv110
  store float %mul111, ptr %w, align 4
  %85 = load float, ptr %f2, align 4
  %86 = load float, ptr %w, align 4
  %sub112 = fsub float %85, %86
  store float %sub112, ptr %f3, align 4
  %87 = load float, ptr %f2, align 4
  %88 = load float, ptr %w, align 4
  %add113 = fadd float %87, %88
  store float %add113, ptr %f2, align 4
  %89 = load float, ptr %f0, align 4
  %90 = load float, ptr %f2, align 4
  %add114 = fadd float %89, %90
  %91 = load ptr, ptr %x.addr, align 8
  %arrayidx115 = getelementptr inbounds float, ptr %91, i64 512
  store float %add114, ptr %arrayidx115, align 4
  %92 = load float, ptr %f0, align 4
  %93 = load float, ptr %f2, align 4
  %sub116 = fsub float %92, %93
  %94 = load ptr, ptr %x.addr, align 8
  %arrayidx117 = getelementptr inbounds float, ptr %94, i64 514
  store float %sub116, ptr %arrayidx117, align 4
  %95 = load float, ptr %f1, align 4
  %96 = load float, ptr %f3, align 4
  %add118 = fadd float %95, %96
  %97 = load ptr, ptr %x.addr, align 8
  %arrayidx119 = getelementptr inbounds float, ptr %97, i64 513
  store float %add118, ptr %arrayidx119, align 4
  %98 = load float, ptr %f1, align 4
  %99 = load float, ptr %f3, align 4
  %sub120 = fsub float %98, %99
  %100 = load ptr, ptr %x.addr, align 8
  %arrayidx121 = getelementptr inbounds float, ptr %100, i64 515
  store float %sub120, ptr %arrayidx121, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %101 = load i16, ptr %jj, align 2
  %dec = add i16 %101, -1
  store i16 %dec, ptr %jj, align 2
  %conv122 = sext i16 %dec to i32
  %cmp123 = icmp sge i32 %conv122, 0
  br i1 %cmp123, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  br label %if.end515

if.else:                                          ; preds = %entry
  %102 = load i32, ptr %chn.addr, align 4
  %cmp125 = icmp eq i32 %102, 2
  br i1 %cmp125, label %if.then127, label %if.else321

if.then127:                                       ; preds = %if.else
  br label %do.body128

do.body128:                                       ; preds = %do.cond315, %if.then127
  %103 = load i16, ptr %jj, align 2
  %idxprom134 = sext i16 %103 to i64
  %arrayidx135 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom134
  %104 = load i16, ptr %arrayidx135, align 2
  store i16 %104, ptr %i, align 2
  %105 = load i16, ptr %i, align 2
  %idxprom136 = sext i16 %105 to i64
  %arrayidx137 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom136
  %106 = load float, ptr %arrayidx137, align 4
  %107 = load ptr, ptr %buffer.addr, align 8
  %arrayidx138 = getelementptr inbounds ptr, ptr %107, i64 0
  %108 = load ptr, ptr %arrayidx138, align 8
  %109 = load i16, ptr %i, align 2
  %idxprom139 = sext i16 %109 to i64
  %arrayidx140 = getelementptr inbounds i16, ptr %108, i64 %idxprom139
  %110 = load i16, ptr %arrayidx140, align 2
  %conv141 = sext i16 %110 to i32
  %111 = load ptr, ptr %buffer.addr, align 8
  %arrayidx142 = getelementptr inbounds ptr, ptr %111, i64 1
  %112 = load ptr, ptr %arrayidx142, align 8
  %113 = load i16, ptr %i, align 2
  %idxprom143 = sext i16 %113 to i64
  %arrayidx144 = getelementptr inbounds i16, ptr %112, i64 %idxprom143
  %114 = load i16, ptr %arrayidx144, align 2
  %conv145 = sext i16 %114 to i32
  %add146 = add nsw i32 %conv141, %conv145
  %conv147 = sitofp i32 %add146 to float
  %mul148 = fmul float 0x3FE6A09E60000000, %conv147
  %mul149 = fmul float %106, %mul148
  store float %mul149, ptr %f0129, align 4
  %115 = load i16, ptr %i, align 2
  %conv150 = sext i16 %115 to i32
  %sub151 = sub nsw i32 511, %conv150
  %idxprom152 = sext i32 %sub151 to i64
  %arrayidx153 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom152
  %116 = load float, ptr %arrayidx153, align 4
  %117 = load ptr, ptr %buffer.addr, align 8
  %arrayidx154 = getelementptr inbounds ptr, ptr %117, i64 0
  %118 = load ptr, ptr %arrayidx154, align 8
  %119 = load i16, ptr %i, align 2
  %conv155 = sext i16 %119 to i32
  %add156 = add nsw i32 %conv155, 512
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds i16, ptr %118, i64 %idxprom157
  %120 = load i16, ptr %arrayidx158, align 2
  %conv159 = sext i16 %120 to i32
  %121 = load ptr, ptr %buffer.addr, align 8
  %arrayidx160 = getelementptr inbounds ptr, ptr %121, i64 1
  %122 = load ptr, ptr %arrayidx160, align 8
  %123 = load i16, ptr %i, align 2
  %conv161 = sext i16 %123 to i32
  %add162 = add nsw i32 %conv161, 512
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds i16, ptr %122, i64 %idxprom163
  %124 = load i16, ptr %arrayidx164, align 2
  %conv165 = sext i16 %124 to i32
  %add166 = add nsw i32 %conv159, %conv165
  %conv167 = sitofp i32 %add166 to float
  %mul168 = fmul float 0x3FE6A09E60000000, %conv167
  %mul169 = fmul float %116, %mul168
  store float %mul169, ptr %w133, align 4
  %125 = load float, ptr %f0129, align 4
  %126 = load float, ptr %w133, align 4
  %sub170 = fsub float %125, %126
  store float %sub170, ptr %f1130, align 4
  %127 = load float, ptr %f0129, align 4
  %128 = load float, ptr %w133, align 4
  %add171 = fadd float %127, %128
  store float %add171, ptr %f0129, align 4
  %129 = load i16, ptr %i, align 2
  %conv172 = sext i16 %129 to i32
  %add173 = add nsw i32 %conv172, 256
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom174
  %130 = load float, ptr %arrayidx175, align 4
  %131 = load ptr, ptr %buffer.addr, align 8
  %arrayidx176 = getelementptr inbounds ptr, ptr %131, i64 0
  %132 = load ptr, ptr %arrayidx176, align 8
  %133 = load i16, ptr %i, align 2
  %conv177 = sext i16 %133 to i32
  %add178 = add nsw i32 %conv177, 256
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds i16, ptr %132, i64 %idxprom179
  %134 = load i16, ptr %arrayidx180, align 2
  %conv181 = sext i16 %134 to i32
  %135 = load ptr, ptr %buffer.addr, align 8
  %arrayidx182 = getelementptr inbounds ptr, ptr %135, i64 1
  %136 = load ptr, ptr %arrayidx182, align 8
  %137 = load i16, ptr %i, align 2
  %conv183 = sext i16 %137 to i32
  %add184 = add nsw i32 %conv183, 256
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds i16, ptr %136, i64 %idxprom185
  %138 = load i16, ptr %arrayidx186, align 2
  %conv187 = sext i16 %138 to i32
  %add188 = add nsw i32 %conv181, %conv187
  %conv189 = sitofp i32 %add188 to float
  %mul190 = fmul float 0x3FE6A09E60000000, %conv189
  %mul191 = fmul float %130, %mul190
  store float %mul191, ptr %f2131, align 4
  %139 = load i16, ptr %i, align 2
  %conv192 = sext i16 %139 to i32
  %sub193 = sub nsw i32 255, %conv192
  %idxprom194 = sext i32 %sub193 to i64
  %arrayidx195 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom194
  %140 = load float, ptr %arrayidx195, align 4
  %141 = load ptr, ptr %buffer.addr, align 8
  %arrayidx196 = getelementptr inbounds ptr, ptr %141, i64 0
  %142 = load ptr, ptr %arrayidx196, align 8
  %143 = load i16, ptr %i, align 2
  %conv197 = sext i16 %143 to i32
  %add198 = add nsw i32 %conv197, 768
  %idxprom199 = sext i32 %add198 to i64
  %arrayidx200 = getelementptr inbounds i16, ptr %142, i64 %idxprom199
  %144 = load i16, ptr %arrayidx200, align 2
  %conv201 = sext i16 %144 to i32
  %145 = load ptr, ptr %buffer.addr, align 8
  %arrayidx202 = getelementptr inbounds ptr, ptr %145, i64 1
  %146 = load ptr, ptr %arrayidx202, align 8
  %147 = load i16, ptr %i, align 2
  %conv203 = sext i16 %147 to i32
  %add204 = add nsw i32 %conv203, 768
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds i16, ptr %146, i64 %idxprom205
  %148 = load i16, ptr %arrayidx206, align 2
  %conv207 = sext i16 %148 to i32
  %add208 = add nsw i32 %conv201, %conv207
  %conv209 = sitofp i32 %add208 to float
  %mul210 = fmul float 0x3FE6A09E60000000, %conv209
  %mul211 = fmul float %140, %mul210
  store float %mul211, ptr %w133, align 4
  %149 = load float, ptr %f2131, align 4
  %150 = load float, ptr %w133, align 4
  %sub212 = fsub float %149, %150
  store float %sub212, ptr %f3132, align 4
  %151 = load float, ptr %f2131, align 4
  %152 = load float, ptr %w133, align 4
  %add213 = fadd float %151, %152
  store float %add213, ptr %f2131, align 4
  %153 = load ptr, ptr %x.addr, align 8
  %add.ptr214 = getelementptr inbounds float, ptr %153, i64 -4
  store ptr %add.ptr214, ptr %x.addr, align 8
  %154 = load float, ptr %f0129, align 4
  %155 = load float, ptr %f2131, align 4
  %add215 = fadd float %154, %155
  %156 = load ptr, ptr %x.addr, align 8
  %arrayidx216 = getelementptr inbounds float, ptr %156, i64 0
  store float %add215, ptr %arrayidx216, align 4
  %157 = load float, ptr %f0129, align 4
  %158 = load float, ptr %f2131, align 4
  %sub217 = fsub float %157, %158
  %159 = load ptr, ptr %x.addr, align 8
  %arrayidx218 = getelementptr inbounds float, ptr %159, i64 2
  store float %sub217, ptr %arrayidx218, align 4
  %160 = load float, ptr %f1130, align 4
  %161 = load float, ptr %f3132, align 4
  %add219 = fadd float %160, %161
  %162 = load ptr, ptr %x.addr, align 8
  %arrayidx220 = getelementptr inbounds float, ptr %162, i64 1
  store float %add219, ptr %arrayidx220, align 4
  %163 = load float, ptr %f1130, align 4
  %164 = load float, ptr %f3132, align 4
  %sub221 = fsub float %163, %164
  %165 = load ptr, ptr %x.addr, align 8
  %arrayidx222 = getelementptr inbounds float, ptr %165, i64 3
  store float %sub221, ptr %arrayidx222, align 4
  %166 = load i16, ptr %i, align 2
  %conv223 = sext i16 %166 to i32
  %add224 = add nsw i32 %conv223, 1
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom225
  %167 = load float, ptr %arrayidx226, align 4
  %168 = load ptr, ptr %buffer.addr, align 8
  %arrayidx227 = getelementptr inbounds ptr, ptr %168, i64 0
  %169 = load ptr, ptr %arrayidx227, align 8
  %170 = load i16, ptr %i, align 2
  %conv228 = sext i16 %170 to i32
  %add229 = add nsw i32 %conv228, 1
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds i16, ptr %169, i64 %idxprom230
  %171 = load i16, ptr %arrayidx231, align 2
  %conv232 = sext i16 %171 to i32
  %172 = load ptr, ptr %buffer.addr, align 8
  %arrayidx233 = getelementptr inbounds ptr, ptr %172, i64 1
  %173 = load ptr, ptr %arrayidx233, align 8
  %174 = load i16, ptr %i, align 2
  %conv234 = sext i16 %174 to i32
  %add235 = add nsw i32 %conv234, 1
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds i16, ptr %173, i64 %idxprom236
  %175 = load i16, ptr %arrayidx237, align 2
  %conv238 = sext i16 %175 to i32
  %add239 = add nsw i32 %conv232, %conv238
  %conv240 = sitofp i32 %add239 to float
  %mul241 = fmul float 0x3FE6A09E60000000, %conv240
  %mul242 = fmul float %167, %mul241
  store float %mul242, ptr %f0129, align 4
  %176 = load i16, ptr %i, align 2
  %conv243 = sext i16 %176 to i32
  %sub244 = sub nsw i32 510, %conv243
  %idxprom245 = sext i32 %sub244 to i64
  %arrayidx246 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom245
  %177 = load float, ptr %arrayidx246, align 4
  %178 = load ptr, ptr %buffer.addr, align 8
  %arrayidx247 = getelementptr inbounds ptr, ptr %178, i64 0
  %179 = load ptr, ptr %arrayidx247, align 8
  %180 = load i16, ptr %i, align 2
  %conv248 = sext i16 %180 to i32
  %add249 = add nsw i32 %conv248, 513
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds i16, ptr %179, i64 %idxprom250
  %181 = load i16, ptr %arrayidx251, align 2
  %conv252 = sext i16 %181 to i32
  %182 = load ptr, ptr %buffer.addr, align 8
  %arrayidx253 = getelementptr inbounds ptr, ptr %182, i64 1
  %183 = load ptr, ptr %arrayidx253, align 8
  %184 = load i16, ptr %i, align 2
  %conv254 = sext i16 %184 to i32
  %add255 = add nsw i32 %conv254, 513
  %idxprom256 = sext i32 %add255 to i64
  %arrayidx257 = getelementptr inbounds i16, ptr %183, i64 %idxprom256
  %185 = load i16, ptr %arrayidx257, align 2
  %conv258 = sext i16 %185 to i32
  %add259 = add nsw i32 %conv252, %conv258
  %conv260 = sitofp i32 %add259 to float
  %mul261 = fmul float 0x3FE6A09E60000000, %conv260
  %mul262 = fmul float %177, %mul261
  store float %mul262, ptr %w133, align 4
  %186 = load float, ptr %f0129, align 4
  %187 = load float, ptr %w133, align 4
  %sub263 = fsub float %186, %187
  store float %sub263, ptr %f1130, align 4
  %188 = load float, ptr %f0129, align 4
  %189 = load float, ptr %w133, align 4
  %add264 = fadd float %188, %189
  store float %add264, ptr %f0129, align 4
  %190 = load i16, ptr %i, align 2
  %conv265 = sext i16 %190 to i32
  %add266 = add nsw i32 %conv265, 257
  %idxprom267 = sext i32 %add266 to i64
  %arrayidx268 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom267
  %191 = load float, ptr %arrayidx268, align 4
  %192 = load ptr, ptr %buffer.addr, align 8
  %arrayidx269 = getelementptr inbounds ptr, ptr %192, i64 0
  %193 = load ptr, ptr %arrayidx269, align 8
  %194 = load i16, ptr %i, align 2
  %conv270 = sext i16 %194 to i32
  %add271 = add nsw i32 %conv270, 257
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx273 = getelementptr inbounds i16, ptr %193, i64 %idxprom272
  %195 = load i16, ptr %arrayidx273, align 2
  %conv274 = sext i16 %195 to i32
  %196 = load ptr, ptr %buffer.addr, align 8
  %arrayidx275 = getelementptr inbounds ptr, ptr %196, i64 1
  %197 = load ptr, ptr %arrayidx275, align 8
  %198 = load i16, ptr %i, align 2
  %conv276 = sext i16 %198 to i32
  %add277 = add nsw i32 %conv276, 257
  %idxprom278 = sext i32 %add277 to i64
  %arrayidx279 = getelementptr inbounds i16, ptr %197, i64 %idxprom278
  %199 = load i16, ptr %arrayidx279, align 2
  %conv280 = sext i16 %199 to i32
  %add281 = add nsw i32 %conv274, %conv280
  %conv282 = sitofp i32 %add281 to float
  %mul283 = fmul float 0x3FE6A09E60000000, %conv282
  %mul284 = fmul float %191, %mul283
  store float %mul284, ptr %f2131, align 4
  %200 = load i16, ptr %i, align 2
  %conv285 = sext i16 %200 to i32
  %sub286 = sub nsw i32 254, %conv285
  %idxprom287 = sext i32 %sub286 to i64
  %arrayidx288 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom287
  %201 = load float, ptr %arrayidx288, align 4
  %202 = load ptr, ptr %buffer.addr, align 8
  %arrayidx289 = getelementptr inbounds ptr, ptr %202, i64 0
  %203 = load ptr, ptr %arrayidx289, align 8
  %204 = load i16, ptr %i, align 2
  %conv290 = sext i16 %204 to i32
  %add291 = add nsw i32 %conv290, 769
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds i16, ptr %203, i64 %idxprom292
  %205 = load i16, ptr %arrayidx293, align 2
  %conv294 = sext i16 %205 to i32
  %206 = load ptr, ptr %buffer.addr, align 8
  %arrayidx295 = getelementptr inbounds ptr, ptr %206, i64 1
  %207 = load ptr, ptr %arrayidx295, align 8
  %208 = load i16, ptr %i, align 2
  %conv296 = sext i16 %208 to i32
  %add297 = add nsw i32 %conv296, 769
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds i16, ptr %207, i64 %idxprom298
  %209 = load i16, ptr %arrayidx299, align 2
  %conv300 = sext i16 %209 to i32
  %add301 = add nsw i32 %conv294, %conv300
  %conv302 = sitofp i32 %add301 to float
  %mul303 = fmul float 0x3FE6A09E60000000, %conv302
  %mul304 = fmul float %201, %mul303
  store float %mul304, ptr %w133, align 4
  %210 = load float, ptr %f2131, align 4
  %211 = load float, ptr %w133, align 4
  %sub305 = fsub float %210, %211
  store float %sub305, ptr %f3132, align 4
  %212 = load float, ptr %f2131, align 4
  %213 = load float, ptr %w133, align 4
  %add306 = fadd float %212, %213
  store float %add306, ptr %f2131, align 4
  %214 = load float, ptr %f0129, align 4
  %215 = load float, ptr %f2131, align 4
  %add307 = fadd float %214, %215
  %216 = load ptr, ptr %x.addr, align 8
  %arrayidx308 = getelementptr inbounds float, ptr %216, i64 512
  store float %add307, ptr %arrayidx308, align 4
  %217 = load float, ptr %f0129, align 4
  %218 = load float, ptr %f2131, align 4
  %sub309 = fsub float %217, %218
  %219 = load ptr, ptr %x.addr, align 8
  %arrayidx310 = getelementptr inbounds float, ptr %219, i64 514
  store float %sub309, ptr %arrayidx310, align 4
  %220 = load float, ptr %f1130, align 4
  %221 = load float, ptr %f3132, align 4
  %add311 = fadd float %220, %221
  %222 = load ptr, ptr %x.addr, align 8
  %arrayidx312 = getelementptr inbounds float, ptr %222, i64 513
  store float %add311, ptr %arrayidx312, align 4
  %223 = load float, ptr %f1130, align 4
  %224 = load float, ptr %f3132, align 4
  %sub313 = fsub float %223, %224
  %225 = load ptr, ptr %x.addr, align 8
  %arrayidx314 = getelementptr inbounds float, ptr %225, i64 515
  store float %sub313, ptr %arrayidx314, align 4
  br label %do.cond315

do.cond315:                                       ; preds = %do.body128
  %226 = load i16, ptr %jj, align 2
  %dec316 = add i16 %226, -1
  store i16 %dec316, ptr %jj, align 2
  %conv317 = sext i16 %dec316 to i32
  %cmp318 = icmp sge i32 %conv317, 0
  br i1 %cmp318, label %do.body128, label %do.end320, !llvm.loop !16

do.end320:                                        ; preds = %do.cond315
  br label %if.end

if.else321:                                       ; preds = %if.else
  br label %do.body322

do.body322:                                       ; preds = %do.cond509, %if.else321
  %227 = load i16, ptr %jj, align 2
  %idxprom328 = sext i16 %227 to i64
  %arrayidx329 = getelementptr inbounds [128 x i16], ptr @rv_tbl, i64 0, i64 %idxprom328
  %228 = load i16, ptr %arrayidx329, align 2
  store i16 %228, ptr %i, align 2
  %229 = load i16, ptr %i, align 2
  %idxprom330 = sext i16 %229 to i64
  %arrayidx331 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom330
  %230 = load float, ptr %arrayidx331, align 4
  %231 = load ptr, ptr %buffer.addr, align 8
  %arrayidx332 = getelementptr inbounds ptr, ptr %231, i64 0
  %232 = load ptr, ptr %arrayidx332, align 8
  %233 = load i16, ptr %i, align 2
  %idxprom333 = sext i16 %233 to i64
  %arrayidx334 = getelementptr inbounds i16, ptr %232, i64 %idxprom333
  %234 = load i16, ptr %arrayidx334, align 2
  %conv335 = sext i16 %234 to i32
  %235 = load ptr, ptr %buffer.addr, align 8
  %arrayidx336 = getelementptr inbounds ptr, ptr %235, i64 1
  %236 = load ptr, ptr %arrayidx336, align 8
  %237 = load i16, ptr %i, align 2
  %idxprom337 = sext i16 %237 to i64
  %arrayidx338 = getelementptr inbounds i16, ptr %236, i64 %idxprom337
  %238 = load i16, ptr %arrayidx338, align 2
  %conv339 = sext i16 %238 to i32
  %sub340 = sub nsw i32 %conv335, %conv339
  %conv341 = sitofp i32 %sub340 to float
  %mul342 = fmul float 0x3FE6A09E60000000, %conv341
  %mul343 = fmul float %230, %mul342
  store float %mul343, ptr %f0323, align 4
  %239 = load i16, ptr %i, align 2
  %conv344 = sext i16 %239 to i32
  %sub345 = sub nsw i32 511, %conv344
  %idxprom346 = sext i32 %sub345 to i64
  %arrayidx347 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom346
  %240 = load float, ptr %arrayidx347, align 4
  %241 = load ptr, ptr %buffer.addr, align 8
  %arrayidx348 = getelementptr inbounds ptr, ptr %241, i64 0
  %242 = load ptr, ptr %arrayidx348, align 8
  %243 = load i16, ptr %i, align 2
  %conv349 = sext i16 %243 to i32
  %add350 = add nsw i32 %conv349, 512
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds i16, ptr %242, i64 %idxprom351
  %244 = load i16, ptr %arrayidx352, align 2
  %conv353 = sext i16 %244 to i32
  %245 = load ptr, ptr %buffer.addr, align 8
  %arrayidx354 = getelementptr inbounds ptr, ptr %245, i64 1
  %246 = load ptr, ptr %arrayidx354, align 8
  %247 = load i16, ptr %i, align 2
  %conv355 = sext i16 %247 to i32
  %add356 = add nsw i32 %conv355, 512
  %idxprom357 = sext i32 %add356 to i64
  %arrayidx358 = getelementptr inbounds i16, ptr %246, i64 %idxprom357
  %248 = load i16, ptr %arrayidx358, align 2
  %conv359 = sext i16 %248 to i32
  %sub360 = sub nsw i32 %conv353, %conv359
  %conv361 = sitofp i32 %sub360 to float
  %mul362 = fmul float 0x3FE6A09E60000000, %conv361
  %mul363 = fmul float %240, %mul362
  store float %mul363, ptr %w327, align 4
  %249 = load float, ptr %f0323, align 4
  %250 = load float, ptr %w327, align 4
  %sub364 = fsub float %249, %250
  store float %sub364, ptr %f1324, align 4
  %251 = load float, ptr %f0323, align 4
  %252 = load float, ptr %w327, align 4
  %add365 = fadd float %251, %252
  store float %add365, ptr %f0323, align 4
  %253 = load i16, ptr %i, align 2
  %conv366 = sext i16 %253 to i32
  %add367 = add nsw i32 %conv366, 256
  %idxprom368 = sext i32 %add367 to i64
  %arrayidx369 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom368
  %254 = load float, ptr %arrayidx369, align 4
  %255 = load ptr, ptr %buffer.addr, align 8
  %arrayidx370 = getelementptr inbounds ptr, ptr %255, i64 0
  %256 = load ptr, ptr %arrayidx370, align 8
  %257 = load i16, ptr %i, align 2
  %conv371 = sext i16 %257 to i32
  %add372 = add nsw i32 %conv371, 256
  %idxprom373 = sext i32 %add372 to i64
  %arrayidx374 = getelementptr inbounds i16, ptr %256, i64 %idxprom373
  %258 = load i16, ptr %arrayidx374, align 2
  %conv375 = sext i16 %258 to i32
  %259 = load ptr, ptr %buffer.addr, align 8
  %arrayidx376 = getelementptr inbounds ptr, ptr %259, i64 1
  %260 = load ptr, ptr %arrayidx376, align 8
  %261 = load i16, ptr %i, align 2
  %conv377 = sext i16 %261 to i32
  %add378 = add nsw i32 %conv377, 256
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds i16, ptr %260, i64 %idxprom379
  %262 = load i16, ptr %arrayidx380, align 2
  %conv381 = sext i16 %262 to i32
  %sub382 = sub nsw i32 %conv375, %conv381
  %conv383 = sitofp i32 %sub382 to float
  %mul384 = fmul float 0x3FE6A09E60000000, %conv383
  %mul385 = fmul float %254, %mul384
  store float %mul385, ptr %f2325, align 4
  %263 = load i16, ptr %i, align 2
  %conv386 = sext i16 %263 to i32
  %sub387 = sub nsw i32 255, %conv386
  %idxprom388 = sext i32 %sub387 to i64
  %arrayidx389 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom388
  %264 = load float, ptr %arrayidx389, align 4
  %265 = load ptr, ptr %buffer.addr, align 8
  %arrayidx390 = getelementptr inbounds ptr, ptr %265, i64 0
  %266 = load ptr, ptr %arrayidx390, align 8
  %267 = load i16, ptr %i, align 2
  %conv391 = sext i16 %267 to i32
  %add392 = add nsw i32 %conv391, 768
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds i16, ptr %266, i64 %idxprom393
  %268 = load i16, ptr %arrayidx394, align 2
  %conv395 = sext i16 %268 to i32
  %269 = load ptr, ptr %buffer.addr, align 8
  %arrayidx396 = getelementptr inbounds ptr, ptr %269, i64 1
  %270 = load ptr, ptr %arrayidx396, align 8
  %271 = load i16, ptr %i, align 2
  %conv397 = sext i16 %271 to i32
  %add398 = add nsw i32 %conv397, 768
  %idxprom399 = sext i32 %add398 to i64
  %arrayidx400 = getelementptr inbounds i16, ptr %270, i64 %idxprom399
  %272 = load i16, ptr %arrayidx400, align 2
  %conv401 = sext i16 %272 to i32
  %sub402 = sub nsw i32 %conv395, %conv401
  %conv403 = sitofp i32 %sub402 to float
  %mul404 = fmul float 0x3FE6A09E60000000, %conv403
  %mul405 = fmul float %264, %mul404
  store float %mul405, ptr %w327, align 4
  %273 = load float, ptr %f2325, align 4
  %274 = load float, ptr %w327, align 4
  %sub406 = fsub float %273, %274
  store float %sub406, ptr %f3326, align 4
  %275 = load float, ptr %f2325, align 4
  %276 = load float, ptr %w327, align 4
  %add407 = fadd float %275, %276
  store float %add407, ptr %f2325, align 4
  %277 = load ptr, ptr %x.addr, align 8
  %add.ptr408 = getelementptr inbounds float, ptr %277, i64 -4
  store ptr %add.ptr408, ptr %x.addr, align 8
  %278 = load float, ptr %f0323, align 4
  %279 = load float, ptr %f2325, align 4
  %add409 = fadd float %278, %279
  %280 = load ptr, ptr %x.addr, align 8
  %arrayidx410 = getelementptr inbounds float, ptr %280, i64 0
  store float %add409, ptr %arrayidx410, align 4
  %281 = load float, ptr %f0323, align 4
  %282 = load float, ptr %f2325, align 4
  %sub411 = fsub float %281, %282
  %283 = load ptr, ptr %x.addr, align 8
  %arrayidx412 = getelementptr inbounds float, ptr %283, i64 2
  store float %sub411, ptr %arrayidx412, align 4
  %284 = load float, ptr %f1324, align 4
  %285 = load float, ptr %f3326, align 4
  %add413 = fadd float %284, %285
  %286 = load ptr, ptr %x.addr, align 8
  %arrayidx414 = getelementptr inbounds float, ptr %286, i64 1
  store float %add413, ptr %arrayidx414, align 4
  %287 = load float, ptr %f1324, align 4
  %288 = load float, ptr %f3326, align 4
  %sub415 = fsub float %287, %288
  %289 = load ptr, ptr %x.addr, align 8
  %arrayidx416 = getelementptr inbounds float, ptr %289, i64 3
  store float %sub415, ptr %arrayidx416, align 4
  %290 = load i16, ptr %i, align 2
  %conv417 = sext i16 %290 to i32
  %add418 = add nsw i32 %conv417, 1
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom419
  %291 = load float, ptr %arrayidx420, align 4
  %292 = load ptr, ptr %buffer.addr, align 8
  %arrayidx421 = getelementptr inbounds ptr, ptr %292, i64 0
  %293 = load ptr, ptr %arrayidx421, align 8
  %294 = load i16, ptr %i, align 2
  %conv422 = sext i16 %294 to i32
  %add423 = add nsw i32 %conv422, 1
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds i16, ptr %293, i64 %idxprom424
  %295 = load i16, ptr %arrayidx425, align 2
  %conv426 = sext i16 %295 to i32
  %296 = load ptr, ptr %buffer.addr, align 8
  %arrayidx427 = getelementptr inbounds ptr, ptr %296, i64 1
  %297 = load ptr, ptr %arrayidx427, align 8
  %298 = load i16, ptr %i, align 2
  %conv428 = sext i16 %298 to i32
  %add429 = add nsw i32 %conv428, 1
  %idxprom430 = sext i32 %add429 to i64
  %arrayidx431 = getelementptr inbounds i16, ptr %297, i64 %idxprom430
  %299 = load i16, ptr %arrayidx431, align 2
  %conv432 = sext i16 %299 to i32
  %sub433 = sub nsw i32 %conv426, %conv432
  %conv434 = sitofp i32 %sub433 to float
  %mul435 = fmul float 0x3FE6A09E60000000, %conv434
  %mul436 = fmul float %291, %mul435
  store float %mul436, ptr %f0323, align 4
  %300 = load i16, ptr %i, align 2
  %conv437 = sext i16 %300 to i32
  %sub438 = sub nsw i32 510, %conv437
  %idxprom439 = sext i32 %sub438 to i64
  %arrayidx440 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom439
  %301 = load float, ptr %arrayidx440, align 4
  %302 = load ptr, ptr %buffer.addr, align 8
  %arrayidx441 = getelementptr inbounds ptr, ptr %302, i64 0
  %303 = load ptr, ptr %arrayidx441, align 8
  %304 = load i16, ptr %i, align 2
  %conv442 = sext i16 %304 to i32
  %add443 = add nsw i32 %conv442, 513
  %idxprom444 = sext i32 %add443 to i64
  %arrayidx445 = getelementptr inbounds i16, ptr %303, i64 %idxprom444
  %305 = load i16, ptr %arrayidx445, align 2
  %conv446 = sext i16 %305 to i32
  %306 = load ptr, ptr %buffer.addr, align 8
  %arrayidx447 = getelementptr inbounds ptr, ptr %306, i64 1
  %307 = load ptr, ptr %arrayidx447, align 8
  %308 = load i16, ptr %i, align 2
  %conv448 = sext i16 %308 to i32
  %add449 = add nsw i32 %conv448, 513
  %idxprom450 = sext i32 %add449 to i64
  %arrayidx451 = getelementptr inbounds i16, ptr %307, i64 %idxprom450
  %309 = load i16, ptr %arrayidx451, align 2
  %conv452 = sext i16 %309 to i32
  %sub453 = sub nsw i32 %conv446, %conv452
  %conv454 = sitofp i32 %sub453 to float
  %mul455 = fmul float 0x3FE6A09E60000000, %conv454
  %mul456 = fmul float %301, %mul455
  store float %mul456, ptr %w327, align 4
  %310 = load float, ptr %f0323, align 4
  %311 = load float, ptr %w327, align 4
  %sub457 = fsub float %310, %311
  store float %sub457, ptr %f1324, align 4
  %312 = load float, ptr %f0323, align 4
  %313 = load float, ptr %w327, align 4
  %add458 = fadd float %312, %313
  store float %add458, ptr %f0323, align 4
  %314 = load i16, ptr %i, align 2
  %conv459 = sext i16 %314 to i32
  %add460 = add nsw i32 %conv459, 257
  %idxprom461 = sext i32 %add460 to i64
  %arrayidx462 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom461
  %315 = load float, ptr %arrayidx462, align 4
  %316 = load ptr, ptr %buffer.addr, align 8
  %arrayidx463 = getelementptr inbounds ptr, ptr %316, i64 0
  %317 = load ptr, ptr %arrayidx463, align 8
  %318 = load i16, ptr %i, align 2
  %conv464 = sext i16 %318 to i32
  %add465 = add nsw i32 %conv464, 257
  %idxprom466 = sext i32 %add465 to i64
  %arrayidx467 = getelementptr inbounds i16, ptr %317, i64 %idxprom466
  %319 = load i16, ptr %arrayidx467, align 2
  %conv468 = sext i16 %319 to i32
  %320 = load ptr, ptr %buffer.addr, align 8
  %arrayidx469 = getelementptr inbounds ptr, ptr %320, i64 1
  %321 = load ptr, ptr %arrayidx469, align 8
  %322 = load i16, ptr %i, align 2
  %conv470 = sext i16 %322 to i32
  %add471 = add nsw i32 %conv470, 257
  %idxprom472 = sext i32 %add471 to i64
  %arrayidx473 = getelementptr inbounds i16, ptr %321, i64 %idxprom472
  %323 = load i16, ptr %arrayidx473, align 2
  %conv474 = sext i16 %323 to i32
  %sub475 = sub nsw i32 %conv468, %conv474
  %conv476 = sitofp i32 %sub475 to float
  %mul477 = fmul float 0x3FE6A09E60000000, %conv476
  %mul478 = fmul float %315, %mul477
  store float %mul478, ptr %f2325, align 4
  %324 = load i16, ptr %i, align 2
  %conv479 = sext i16 %324 to i32
  %sub480 = sub nsw i32 254, %conv479
  %idxprom481 = sext i32 %sub480 to i64
  %arrayidx482 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom481
  %325 = load float, ptr %arrayidx482, align 4
  %326 = load ptr, ptr %buffer.addr, align 8
  %arrayidx483 = getelementptr inbounds ptr, ptr %326, i64 0
  %327 = load ptr, ptr %arrayidx483, align 8
  %328 = load i16, ptr %i, align 2
  %conv484 = sext i16 %328 to i32
  %add485 = add nsw i32 %conv484, 769
  %idxprom486 = sext i32 %add485 to i64
  %arrayidx487 = getelementptr inbounds i16, ptr %327, i64 %idxprom486
  %329 = load i16, ptr %arrayidx487, align 2
  %conv488 = sext i16 %329 to i32
  %330 = load ptr, ptr %buffer.addr, align 8
  %arrayidx489 = getelementptr inbounds ptr, ptr %330, i64 1
  %331 = load ptr, ptr %arrayidx489, align 8
  %332 = load i16, ptr %i, align 2
  %conv490 = sext i16 %332 to i32
  %add491 = add nsw i32 %conv490, 769
  %idxprom492 = sext i32 %add491 to i64
  %arrayidx493 = getelementptr inbounds i16, ptr %331, i64 %idxprom492
  %333 = load i16, ptr %arrayidx493, align 2
  %conv494 = sext i16 %333 to i32
  %sub495 = sub nsw i32 %conv488, %conv494
  %conv496 = sitofp i32 %sub495 to float
  %mul497 = fmul float 0x3FE6A09E60000000, %conv496
  %mul498 = fmul float %325, %mul497
  store float %mul498, ptr %w327, align 4
  %334 = load float, ptr %f2325, align 4
  %335 = load float, ptr %w327, align 4
  %sub499 = fsub float %334, %335
  store float %sub499, ptr %f3326, align 4
  %336 = load float, ptr %f2325, align 4
  %337 = load float, ptr %w327, align 4
  %add500 = fadd float %336, %337
  store float %add500, ptr %f2325, align 4
  %338 = load float, ptr %f0323, align 4
  %339 = load float, ptr %f2325, align 4
  %add501 = fadd float %338, %339
  %340 = load ptr, ptr %x.addr, align 8
  %arrayidx502 = getelementptr inbounds float, ptr %340, i64 512
  store float %add501, ptr %arrayidx502, align 4
  %341 = load float, ptr %f0323, align 4
  %342 = load float, ptr %f2325, align 4
  %sub503 = fsub float %341, %342
  %343 = load ptr, ptr %x.addr, align 8
  %arrayidx504 = getelementptr inbounds float, ptr %343, i64 514
  store float %sub503, ptr %arrayidx504, align 4
  %344 = load float, ptr %f1324, align 4
  %345 = load float, ptr %f3326, align 4
  %add505 = fadd float %344, %345
  %346 = load ptr, ptr %x.addr, align 8
  %arrayidx506 = getelementptr inbounds float, ptr %346, i64 513
  store float %add505, ptr %arrayidx506, align 4
  %347 = load float, ptr %f1324, align 4
  %348 = load float, ptr %f3326, align 4
  %sub507 = fsub float %347, %348
  %349 = load ptr, ptr %x.addr, align 8
  %arrayidx508 = getelementptr inbounds float, ptr %349, i64 515
  store float %sub507, ptr %arrayidx508, align 4
  br label %do.cond509

do.cond509:                                       ; preds = %do.body322
  %350 = load i16, ptr %jj, align 2
  %dec510 = add i16 %350, -1
  store i16 %dec510, ptr %jj, align 2
  %conv511 = sext i16 %dec510 to i32
  %cmp512 = icmp sge i32 %conv511, 0
  br i1 %cmp512, label %do.body322, label %do.end514, !llvm.loop !17

do.end514:                                        ; preds = %do.cond509
  br label %if.end

if.end:                                           ; preds = %do.end514, %do.end320
  br label %if.end515

if.end515:                                        ; preds = %if.end, %do.end
  %351 = load ptr, ptr %x.addr, align 8
  call void @fht(ptr noundef %351, i16 noundef signext 1024)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @init_fft() #0 {
entry:
  %i = alloca i32, align 4
  %r = alloca float, align 4
  store float 0x3FD921FB60000000, ptr %r, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float, ptr %r, align 4
  %conv = fpext float %1 to double
  %2 = call double @llvm.cos.f64(double %conv)
  %conv1 = fptrunc double %2 to float
  %3 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %3, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [8 x float], ptr @costab, i64 0, i64 %idxprom
  store float %conv1, ptr %arrayidx, align 4
  %4 = load float, ptr %r, align 4
  %conv2 = fpext float %4 to double
  %5 = call double @llvm.sin.f64(double %conv2)
  %conv3 = fptrunc double %5 to float
  %6 = load i32, ptr %i, align 4
  %mul4 = mul nsw i32 %6, 2
  %add = add nsw i32 %mul4, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [8 x float], ptr @costab, i64 0, i64 %idxprom5
  store float %conv3, ptr %arrayidx6, align 4
  %7 = load float, ptr %r, align 4
  %conv7 = fpext float %7 to double
  %mul8 = fmul double %conv7, 2.500000e-01
  %conv9 = fptrunc double %mul8 to float
  store float %conv9, ptr %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc21, %for.end
  %9 = load i32, ptr %i, align 4
  %cmp11 = icmp slt i32 %9, 512
  br i1 %cmp11, label %for.body13, label %for.end23

for.body13:                                       ; preds = %for.cond10
  %10 = load i32, ptr %i, align 4
  %conv14 = sitofp i32 %10 to double
  %add15 = fadd double %conv14, 5.000000e-01
  %mul16 = fmul double 0x401921FB54442D18, %add15
  %div = fdiv double %mul16, 1.024000e+03
  %11 = call double @llvm.cos.f64(double %div)
  %sub = fsub double 1.000000e+00, %11
  %mul17 = fmul double 5.000000e-01, %sub
  %conv18 = fptrunc double %mul17 to float
  %12 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [512 x float], ptr @window, i64 0, i64 %idxprom19
  store float %conv18, ptr %arrayidx20, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %for.body13
  %13 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %13, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond10, !llvm.loop !19

for.end23:                                        ; preds = %for.cond10
  store i32 0, ptr %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end23
  %14 = load i32, ptr %i, align 4
  %cmp25 = icmp slt i32 %14, 128
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  %15 = load i32, ptr %i, align 4
  %conv28 = sitofp i32 %15 to double
  %add29 = fadd double %conv28, 5.000000e-01
  %mul30 = fmul double 0x401921FB54442D18, %add29
  %div31 = fdiv double %mul30, 2.560000e+02
  %16 = call double @llvm.cos.f64(double %div31)
  %sub32 = fsub double 1.000000e+00, %16
  %mul33 = fmul double 5.000000e-01, %sub32
  %conv34 = fptrunc double %mul33 to float
  %17 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %17 to i64
  %arrayidx36 = getelementptr inbounds [128 x float], ptr @window_s, i64 0, i64 %idxprom35
  store float %conv34, ptr %arrayidx36, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body27
  %18 = load i32, ptr %i, align 4
  %inc38 = add nsw i32 %18, 1
  store i32 %inc38, ptr %i, align 4
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
