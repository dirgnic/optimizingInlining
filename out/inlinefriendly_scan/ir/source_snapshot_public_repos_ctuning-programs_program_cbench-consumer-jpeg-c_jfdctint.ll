; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jfdctint.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jfdctint.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_fdct_islow(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %z4 = alloca i64, align 8
  %z5 = alloca i64, align 8
  %dataptr = alloca ptr, align 8
  %ctr = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %dataptr, align 8
  store i32 7, ptr %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %ctr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %dataptr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load ptr, ptr %dataptr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 7
  %5 = load i32, ptr %arrayidx1, align 4
  %add = add nsw i32 %3, %5
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %tmp0, align 8
  %6 = load ptr, ptr %dataptr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 0
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load ptr, ptr %dataptr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 7
  %9 = load i32, ptr %arrayidx3, align 4
  %sub = sub nsw i32 %7, %9
  %conv4 = sext i32 %sub to i64
  store i64 %conv4, ptr %tmp7, align 8
  %10 = load ptr, ptr %dataptr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 1
  %11 = load i32, ptr %arrayidx5, align 4
  %12 = load ptr, ptr %dataptr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 6
  %13 = load i32, ptr %arrayidx6, align 4
  %add7 = add nsw i32 %11, %13
  %conv8 = sext i32 %add7 to i64
  store i64 %conv8, ptr %tmp1, align 8
  %14 = load ptr, ptr %dataptr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = load ptr, ptr %dataptr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 6
  %17 = load i32, ptr %arrayidx10, align 4
  %sub11 = sub nsw i32 %15, %17
  %conv12 = sext i32 %sub11 to i64
  store i64 %conv12, ptr %tmp6, align 8
  %18 = load ptr, ptr %dataptr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %18, i64 2
  %19 = load i32, ptr %arrayidx13, align 4
  %20 = load ptr, ptr %dataptr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %20, i64 5
  %21 = load i32, ptr %arrayidx14, align 4
  %add15 = add nsw i32 %19, %21
  %conv16 = sext i32 %add15 to i64
  store i64 %conv16, ptr %tmp2, align 8
  %22 = load ptr, ptr %dataptr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %22, i64 2
  %23 = load i32, ptr %arrayidx17, align 4
  %24 = load ptr, ptr %dataptr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %24, i64 5
  %25 = load i32, ptr %arrayidx18, align 4
  %sub19 = sub nsw i32 %23, %25
  %conv20 = sext i32 %sub19 to i64
  store i64 %conv20, ptr %tmp5, align 8
  %26 = load ptr, ptr %dataptr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load i32, ptr %arrayidx21, align 4
  %28 = load ptr, ptr %dataptr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %28, i64 4
  %29 = load i32, ptr %arrayidx22, align 4
  %add23 = add nsw i32 %27, %29
  %conv24 = sext i32 %add23 to i64
  store i64 %conv24, ptr %tmp3, align 8
  %30 = load ptr, ptr %dataptr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %30, i64 3
  %31 = load i32, ptr %arrayidx25, align 4
  %32 = load ptr, ptr %dataptr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %32, i64 4
  %33 = load i32, ptr %arrayidx26, align 4
  %sub27 = sub nsw i32 %31, %33
  %conv28 = sext i32 %sub27 to i64
  store i64 %conv28, ptr %tmp4, align 8
  %34 = load i64, ptr %tmp0, align 8
  %35 = load i64, ptr %tmp3, align 8
  %add29 = add nsw i64 %34, %35
  store i64 %add29, ptr %tmp10, align 8
  %36 = load i64, ptr %tmp0, align 8
  %37 = load i64, ptr %tmp3, align 8
  %sub30 = sub nsw i64 %36, %37
  store i64 %sub30, ptr %tmp13, align 8
  %38 = load i64, ptr %tmp1, align 8
  %39 = load i64, ptr %tmp2, align 8
  %add31 = add nsw i64 %38, %39
  store i64 %add31, ptr %tmp11, align 8
  %40 = load i64, ptr %tmp1, align 8
  %41 = load i64, ptr %tmp2, align 8
  %sub32 = sub nsw i64 %40, %41
  store i64 %sub32, ptr %tmp12, align 8
  %42 = load i64, ptr %tmp10, align 8
  %43 = load i64, ptr %tmp11, align 8
  %add33 = add nsw i64 %42, %43
  %shl = shl i64 %add33, 2
  %conv34 = trunc i64 %shl to i32
  %44 = load ptr, ptr %dataptr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %44, i64 0
  store i32 %conv34, ptr %arrayidx35, align 4
  %45 = load i64, ptr %tmp10, align 8
  %46 = load i64, ptr %tmp11, align 8
  %sub36 = sub nsw i64 %45, %46
  %shl37 = shl i64 %sub36, 2
  %conv38 = trunc i64 %shl37 to i32
  %47 = load ptr, ptr %dataptr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %47, i64 4
  store i32 %conv38, ptr %arrayidx39, align 4
  %48 = load i64, ptr %tmp12, align 8
  %49 = load i64, ptr %tmp13, align 8
  %add40 = add nsw i64 %48, %49
  %mul = mul nsw i64 %add40, 4433
  store i64 %mul, ptr %z1, align 8
  %50 = load i64, ptr %z1, align 8
  %51 = load i64, ptr %tmp13, align 8
  %mul41 = mul nsw i64 %51, 6270
  %add42 = add nsw i64 %50, %mul41
  %add43 = add nsw i64 %add42, 1024
  %shr = ashr i64 %add43, 11
  %conv44 = trunc i64 %shr to i32
  %52 = load ptr, ptr %dataptr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %52, i64 2
  store i32 %conv44, ptr %arrayidx45, align 4
  %53 = load i64, ptr %z1, align 8
  %54 = load i64, ptr %tmp12, align 8
  %mul46 = mul nsw i64 %54, -15137
  %add47 = add nsw i64 %53, %mul46
  %add48 = add nsw i64 %add47, 1024
  %shr49 = ashr i64 %add48, 11
  %conv50 = trunc i64 %shr49 to i32
  %55 = load ptr, ptr %dataptr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %55, i64 6
  store i32 %conv50, ptr %arrayidx51, align 4
  %56 = load i64, ptr %tmp4, align 8
  %57 = load i64, ptr %tmp7, align 8
  %add52 = add nsw i64 %56, %57
  store i64 %add52, ptr %z1, align 8
  %58 = load i64, ptr %tmp5, align 8
  %59 = load i64, ptr %tmp6, align 8
  %add53 = add nsw i64 %58, %59
  store i64 %add53, ptr %z2, align 8
  %60 = load i64, ptr %tmp4, align 8
  %61 = load i64, ptr %tmp6, align 8
  %add54 = add nsw i64 %60, %61
  store i64 %add54, ptr %z3, align 8
  %62 = load i64, ptr %tmp5, align 8
  %63 = load i64, ptr %tmp7, align 8
  %add55 = add nsw i64 %62, %63
  store i64 %add55, ptr %z4, align 8
  %64 = load i64, ptr %z3, align 8
  %65 = load i64, ptr %z4, align 8
  %add56 = add nsw i64 %64, %65
  %mul57 = mul nsw i64 %add56, 9633
  store i64 %mul57, ptr %z5, align 8
  %66 = load i64, ptr %tmp4, align 8
  %mul58 = mul nsw i64 %66, 2446
  store i64 %mul58, ptr %tmp4, align 8
  %67 = load i64, ptr %tmp5, align 8
  %mul59 = mul nsw i64 %67, 16819
  store i64 %mul59, ptr %tmp5, align 8
  %68 = load i64, ptr %tmp6, align 8
  %mul60 = mul nsw i64 %68, 25172
  store i64 %mul60, ptr %tmp6, align 8
  %69 = load i64, ptr %tmp7, align 8
  %mul61 = mul nsw i64 %69, 12299
  store i64 %mul61, ptr %tmp7, align 8
  %70 = load i64, ptr %z1, align 8
  %mul62 = mul nsw i64 %70, -7373
  store i64 %mul62, ptr %z1, align 8
  %71 = load i64, ptr %z2, align 8
  %mul63 = mul nsw i64 %71, -20995
  store i64 %mul63, ptr %z2, align 8
  %72 = load i64, ptr %z3, align 8
  %mul64 = mul nsw i64 %72, -16069
  store i64 %mul64, ptr %z3, align 8
  %73 = load i64, ptr %z4, align 8
  %mul65 = mul nsw i64 %73, -3196
  store i64 %mul65, ptr %z4, align 8
  %74 = load i64, ptr %z5, align 8
  %75 = load i64, ptr %z3, align 8
  %add66 = add nsw i64 %75, %74
  store i64 %add66, ptr %z3, align 8
  %76 = load i64, ptr %z5, align 8
  %77 = load i64, ptr %z4, align 8
  %add67 = add nsw i64 %77, %76
  store i64 %add67, ptr %z4, align 8
  %78 = load i64, ptr %tmp4, align 8
  %79 = load i64, ptr %z1, align 8
  %add68 = add nsw i64 %78, %79
  %80 = load i64, ptr %z3, align 8
  %add69 = add nsw i64 %add68, %80
  %add70 = add nsw i64 %add69, 1024
  %shr71 = ashr i64 %add70, 11
  %conv72 = trunc i64 %shr71 to i32
  %81 = load ptr, ptr %dataptr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %81, i64 7
  store i32 %conv72, ptr %arrayidx73, align 4
  %82 = load i64, ptr %tmp5, align 8
  %83 = load i64, ptr %z2, align 8
  %add74 = add nsw i64 %82, %83
  %84 = load i64, ptr %z4, align 8
  %add75 = add nsw i64 %add74, %84
  %add76 = add nsw i64 %add75, 1024
  %shr77 = ashr i64 %add76, 11
  %conv78 = trunc i64 %shr77 to i32
  %85 = load ptr, ptr %dataptr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %85, i64 5
  store i32 %conv78, ptr %arrayidx79, align 4
  %86 = load i64, ptr %tmp6, align 8
  %87 = load i64, ptr %z2, align 8
  %add80 = add nsw i64 %86, %87
  %88 = load i64, ptr %z3, align 8
  %add81 = add nsw i64 %add80, %88
  %add82 = add nsw i64 %add81, 1024
  %shr83 = ashr i64 %add82, 11
  %conv84 = trunc i64 %shr83 to i32
  %89 = load ptr, ptr %dataptr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %89, i64 3
  store i32 %conv84, ptr %arrayidx85, align 4
  %90 = load i64, ptr %tmp7, align 8
  %91 = load i64, ptr %z1, align 8
  %add86 = add nsw i64 %90, %91
  %92 = load i64, ptr %z4, align 8
  %add87 = add nsw i64 %add86, %92
  %add88 = add nsw i64 %add87, 1024
  %shr89 = ashr i64 %add88, 11
  %conv90 = trunc i64 %shr89 to i32
  %93 = load ptr, ptr %dataptr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %93, i64 1
  store i32 %conv90, ptr %arrayidx91, align 4
  %94 = load ptr, ptr %dataptr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %94, i64 8
  store ptr %add.ptr, ptr %dataptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %95 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %95, -1
  store i32 %dec, ptr %ctr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %96 = load ptr, ptr %data.addr, align 8
  store ptr %96, ptr %dataptr, align 8
  store i32 7, ptr %ctr, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc196, %for.end
  %97 = load i32, ptr %ctr, align 4
  %cmp93 = icmp sge i32 %97, 0
  br i1 %cmp93, label %for.body95, label %for.end198

for.body95:                                       ; preds = %for.cond92
  %98 = load ptr, ptr %dataptr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %98, i64 0
  %99 = load i32, ptr %arrayidx96, align 4
  %100 = load ptr, ptr %dataptr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %100, i64 56
  %101 = load i32, ptr %arrayidx97, align 4
  %add98 = add nsw i32 %99, %101
  %conv99 = sext i32 %add98 to i64
  store i64 %conv99, ptr %tmp0, align 8
  %102 = load ptr, ptr %dataptr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %102, i64 0
  %103 = load i32, ptr %arrayidx100, align 4
  %104 = load ptr, ptr %dataptr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %104, i64 56
  %105 = load i32, ptr %arrayidx101, align 4
  %sub102 = sub nsw i32 %103, %105
  %conv103 = sext i32 %sub102 to i64
  store i64 %conv103, ptr %tmp7, align 8
  %106 = load ptr, ptr %dataptr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %106, i64 8
  %107 = load i32, ptr %arrayidx104, align 4
  %108 = load ptr, ptr %dataptr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %108, i64 48
  %109 = load i32, ptr %arrayidx105, align 4
  %add106 = add nsw i32 %107, %109
  %conv107 = sext i32 %add106 to i64
  store i64 %conv107, ptr %tmp1, align 8
  %110 = load ptr, ptr %dataptr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %110, i64 8
  %111 = load i32, ptr %arrayidx108, align 4
  %112 = load ptr, ptr %dataptr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %112, i64 48
  %113 = load i32, ptr %arrayidx109, align 4
  %sub110 = sub nsw i32 %111, %113
  %conv111 = sext i32 %sub110 to i64
  store i64 %conv111, ptr %tmp6, align 8
  %114 = load ptr, ptr %dataptr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %114, i64 16
  %115 = load i32, ptr %arrayidx112, align 4
  %116 = load ptr, ptr %dataptr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %116, i64 40
  %117 = load i32, ptr %arrayidx113, align 4
  %add114 = add nsw i32 %115, %117
  %conv115 = sext i32 %add114 to i64
  store i64 %conv115, ptr %tmp2, align 8
  %118 = load ptr, ptr %dataptr, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %118, i64 16
  %119 = load i32, ptr %arrayidx116, align 4
  %120 = load ptr, ptr %dataptr, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %120, i64 40
  %121 = load i32, ptr %arrayidx117, align 4
  %sub118 = sub nsw i32 %119, %121
  %conv119 = sext i32 %sub118 to i64
  store i64 %conv119, ptr %tmp5, align 8
  %122 = load ptr, ptr %dataptr, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %122, i64 24
  %123 = load i32, ptr %arrayidx120, align 4
  %124 = load ptr, ptr %dataptr, align 8
  %arrayidx121 = getelementptr inbounds i32, ptr %124, i64 32
  %125 = load i32, ptr %arrayidx121, align 4
  %add122 = add nsw i32 %123, %125
  %conv123 = sext i32 %add122 to i64
  store i64 %conv123, ptr %tmp3, align 8
  %126 = load ptr, ptr %dataptr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %126, i64 24
  %127 = load i32, ptr %arrayidx124, align 4
  %128 = load ptr, ptr %dataptr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %128, i64 32
  %129 = load i32, ptr %arrayidx125, align 4
  %sub126 = sub nsw i32 %127, %129
  %conv127 = sext i32 %sub126 to i64
  store i64 %conv127, ptr %tmp4, align 8
  %130 = load i64, ptr %tmp0, align 8
  %131 = load i64, ptr %tmp3, align 8
  %add128 = add nsw i64 %130, %131
  store i64 %add128, ptr %tmp10, align 8
  %132 = load i64, ptr %tmp0, align 8
  %133 = load i64, ptr %tmp3, align 8
  %sub129 = sub nsw i64 %132, %133
  store i64 %sub129, ptr %tmp13, align 8
  %134 = load i64, ptr %tmp1, align 8
  %135 = load i64, ptr %tmp2, align 8
  %add130 = add nsw i64 %134, %135
  store i64 %add130, ptr %tmp11, align 8
  %136 = load i64, ptr %tmp1, align 8
  %137 = load i64, ptr %tmp2, align 8
  %sub131 = sub nsw i64 %136, %137
  store i64 %sub131, ptr %tmp12, align 8
  %138 = load i64, ptr %tmp10, align 8
  %139 = load i64, ptr %tmp11, align 8
  %add132 = add nsw i64 %138, %139
  %add133 = add nsw i64 %add132, 2
  %shr134 = ashr i64 %add133, 2
  %conv135 = trunc i64 %shr134 to i32
  %140 = load ptr, ptr %dataptr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %140, i64 0
  store i32 %conv135, ptr %arrayidx136, align 4
  %141 = load i64, ptr %tmp10, align 8
  %142 = load i64, ptr %tmp11, align 8
  %sub137 = sub nsw i64 %141, %142
  %add138 = add nsw i64 %sub137, 2
  %shr139 = ashr i64 %add138, 2
  %conv140 = trunc i64 %shr139 to i32
  %143 = load ptr, ptr %dataptr, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %143, i64 32
  store i32 %conv140, ptr %arrayidx141, align 4
  %144 = load i64, ptr %tmp12, align 8
  %145 = load i64, ptr %tmp13, align 8
  %add142 = add nsw i64 %144, %145
  %mul143 = mul nsw i64 %add142, 4433
  store i64 %mul143, ptr %z1, align 8
  %146 = load i64, ptr %z1, align 8
  %147 = load i64, ptr %tmp13, align 8
  %mul144 = mul nsw i64 %147, 6270
  %add145 = add nsw i64 %146, %mul144
  %add146 = add nsw i64 %add145, 16384
  %shr147 = ashr i64 %add146, 15
  %conv148 = trunc i64 %shr147 to i32
  %148 = load ptr, ptr %dataptr, align 8
  %arrayidx149 = getelementptr inbounds i32, ptr %148, i64 16
  store i32 %conv148, ptr %arrayidx149, align 4
  %149 = load i64, ptr %z1, align 8
  %150 = load i64, ptr %tmp12, align 8
  %mul150 = mul nsw i64 %150, -15137
  %add151 = add nsw i64 %149, %mul150
  %add152 = add nsw i64 %add151, 16384
  %shr153 = ashr i64 %add152, 15
  %conv154 = trunc i64 %shr153 to i32
  %151 = load ptr, ptr %dataptr, align 8
  %arrayidx155 = getelementptr inbounds i32, ptr %151, i64 48
  store i32 %conv154, ptr %arrayidx155, align 4
  %152 = load i64, ptr %tmp4, align 8
  %153 = load i64, ptr %tmp7, align 8
  %add156 = add nsw i64 %152, %153
  store i64 %add156, ptr %z1, align 8
  %154 = load i64, ptr %tmp5, align 8
  %155 = load i64, ptr %tmp6, align 8
  %add157 = add nsw i64 %154, %155
  store i64 %add157, ptr %z2, align 8
  %156 = load i64, ptr %tmp4, align 8
  %157 = load i64, ptr %tmp6, align 8
  %add158 = add nsw i64 %156, %157
  store i64 %add158, ptr %z3, align 8
  %158 = load i64, ptr %tmp5, align 8
  %159 = load i64, ptr %tmp7, align 8
  %add159 = add nsw i64 %158, %159
  store i64 %add159, ptr %z4, align 8
  %160 = load i64, ptr %z3, align 8
  %161 = load i64, ptr %z4, align 8
  %add160 = add nsw i64 %160, %161
  %mul161 = mul nsw i64 %add160, 9633
  store i64 %mul161, ptr %z5, align 8
  %162 = load i64, ptr %tmp4, align 8
  %mul162 = mul nsw i64 %162, 2446
  store i64 %mul162, ptr %tmp4, align 8
  %163 = load i64, ptr %tmp5, align 8
  %mul163 = mul nsw i64 %163, 16819
  store i64 %mul163, ptr %tmp5, align 8
  %164 = load i64, ptr %tmp6, align 8
  %mul164 = mul nsw i64 %164, 25172
  store i64 %mul164, ptr %tmp6, align 8
  %165 = load i64, ptr %tmp7, align 8
  %mul165 = mul nsw i64 %165, 12299
  store i64 %mul165, ptr %tmp7, align 8
  %166 = load i64, ptr %z1, align 8
  %mul166 = mul nsw i64 %166, -7373
  store i64 %mul166, ptr %z1, align 8
  %167 = load i64, ptr %z2, align 8
  %mul167 = mul nsw i64 %167, -20995
  store i64 %mul167, ptr %z2, align 8
  %168 = load i64, ptr %z3, align 8
  %mul168 = mul nsw i64 %168, -16069
  store i64 %mul168, ptr %z3, align 8
  %169 = load i64, ptr %z4, align 8
  %mul169 = mul nsw i64 %169, -3196
  store i64 %mul169, ptr %z4, align 8
  %170 = load i64, ptr %z5, align 8
  %171 = load i64, ptr %z3, align 8
  %add170 = add nsw i64 %171, %170
  store i64 %add170, ptr %z3, align 8
  %172 = load i64, ptr %z5, align 8
  %173 = load i64, ptr %z4, align 8
  %add171 = add nsw i64 %173, %172
  store i64 %add171, ptr %z4, align 8
  %174 = load i64, ptr %tmp4, align 8
  %175 = load i64, ptr %z1, align 8
  %add172 = add nsw i64 %174, %175
  %176 = load i64, ptr %z3, align 8
  %add173 = add nsw i64 %add172, %176
  %add174 = add nsw i64 %add173, 16384
  %shr175 = ashr i64 %add174, 15
  %conv176 = trunc i64 %shr175 to i32
  %177 = load ptr, ptr %dataptr, align 8
  %arrayidx177 = getelementptr inbounds i32, ptr %177, i64 56
  store i32 %conv176, ptr %arrayidx177, align 4
  %178 = load i64, ptr %tmp5, align 8
  %179 = load i64, ptr %z2, align 8
  %add178 = add nsw i64 %178, %179
  %180 = load i64, ptr %z4, align 8
  %add179 = add nsw i64 %add178, %180
  %add180 = add nsw i64 %add179, 16384
  %shr181 = ashr i64 %add180, 15
  %conv182 = trunc i64 %shr181 to i32
  %181 = load ptr, ptr %dataptr, align 8
  %arrayidx183 = getelementptr inbounds i32, ptr %181, i64 40
  store i32 %conv182, ptr %arrayidx183, align 4
  %182 = load i64, ptr %tmp6, align 8
  %183 = load i64, ptr %z2, align 8
  %add184 = add nsw i64 %182, %183
  %184 = load i64, ptr %z3, align 8
  %add185 = add nsw i64 %add184, %184
  %add186 = add nsw i64 %add185, 16384
  %shr187 = ashr i64 %add186, 15
  %conv188 = trunc i64 %shr187 to i32
  %185 = load ptr, ptr %dataptr, align 8
  %arrayidx189 = getelementptr inbounds i32, ptr %185, i64 24
  store i32 %conv188, ptr %arrayidx189, align 4
  %186 = load i64, ptr %tmp7, align 8
  %187 = load i64, ptr %z1, align 8
  %add190 = add nsw i64 %186, %187
  %188 = load i64, ptr %z4, align 8
  %add191 = add nsw i64 %add190, %188
  %add192 = add nsw i64 %add191, 16384
  %shr193 = ashr i64 %add192, 15
  %conv194 = trunc i64 %shr193 to i32
  %189 = load ptr, ptr %dataptr, align 8
  %arrayidx195 = getelementptr inbounds i32, ptr %189, i64 8
  store i32 %conv194, ptr %arrayidx195, align 4
  %190 = load ptr, ptr %dataptr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %190, i32 1
  store ptr %incdec.ptr, ptr %dataptr, align 8
  br label %for.inc196

for.inc196:                                       ; preds = %for.body95
  %191 = load i32, ptr %ctr, align 4
  %dec197 = add nsw i32 %191, -1
  store i32 %dec197, ptr %ctr, align 4
  br label %for.cond92, !llvm.loop !8

for.end198:                                       ; preds = %for.cond92
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
