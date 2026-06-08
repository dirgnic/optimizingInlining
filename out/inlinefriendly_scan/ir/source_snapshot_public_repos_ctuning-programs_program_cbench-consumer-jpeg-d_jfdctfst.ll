; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jfdctfst.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jfdctfst.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_fdct_ifast(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
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
  %z1 = alloca i32, align 4
  %z2 = alloca i32, align 4
  %z3 = alloca i32, align 4
  %z4 = alloca i32, align 4
  %z5 = alloca i32, align 4
  %z11 = alloca i32, align 4
  %z13 = alloca i32, align 4
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
  store i32 %add, ptr %tmp0, align 4
  %6 = load ptr, ptr %dataptr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 0
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load ptr, ptr %dataptr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 7
  %9 = load i32, ptr %arrayidx3, align 4
  %sub = sub nsw i32 %7, %9
  store i32 %sub, ptr %tmp7, align 4
  %10 = load ptr, ptr %dataptr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 1
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %dataptr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 6
  %13 = load i32, ptr %arrayidx5, align 4
  %add6 = add nsw i32 %11, %13
  store i32 %add6, ptr %tmp1, align 4
  %14 = load ptr, ptr %dataptr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx7, align 4
  %16 = load ptr, ptr %dataptr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 6
  %17 = load i32, ptr %arrayidx8, align 4
  %sub9 = sub nsw i32 %15, %17
  store i32 %sub9, ptr %tmp6, align 4
  %18 = load ptr, ptr %dataptr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 2
  %19 = load i32, ptr %arrayidx10, align 4
  %20 = load ptr, ptr %dataptr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %20, i64 5
  %21 = load i32, ptr %arrayidx11, align 4
  %add12 = add nsw i32 %19, %21
  store i32 %add12, ptr %tmp2, align 4
  %22 = load ptr, ptr %dataptr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %22, i64 2
  %23 = load i32, ptr %arrayidx13, align 4
  %24 = load ptr, ptr %dataptr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %24, i64 5
  %25 = load i32, ptr %arrayidx14, align 4
  %sub15 = sub nsw i32 %23, %25
  store i32 %sub15, ptr %tmp5, align 4
  %26 = load ptr, ptr %dataptr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load i32, ptr %arrayidx16, align 4
  %28 = load ptr, ptr %dataptr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %28, i64 4
  %29 = load i32, ptr %arrayidx17, align 4
  %add18 = add nsw i32 %27, %29
  store i32 %add18, ptr %tmp3, align 4
  %30 = load ptr, ptr %dataptr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %30, i64 3
  %31 = load i32, ptr %arrayidx19, align 4
  %32 = load ptr, ptr %dataptr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %32, i64 4
  %33 = load i32, ptr %arrayidx20, align 4
  %sub21 = sub nsw i32 %31, %33
  store i32 %sub21, ptr %tmp4, align 4
  %34 = load i32, ptr %tmp0, align 4
  %35 = load i32, ptr %tmp3, align 4
  %add22 = add nsw i32 %34, %35
  store i32 %add22, ptr %tmp10, align 4
  %36 = load i32, ptr %tmp0, align 4
  %37 = load i32, ptr %tmp3, align 4
  %sub23 = sub nsw i32 %36, %37
  store i32 %sub23, ptr %tmp13, align 4
  %38 = load i32, ptr %tmp1, align 4
  %39 = load i32, ptr %tmp2, align 4
  %add24 = add nsw i32 %38, %39
  store i32 %add24, ptr %tmp11, align 4
  %40 = load i32, ptr %tmp1, align 4
  %41 = load i32, ptr %tmp2, align 4
  %sub25 = sub nsw i32 %40, %41
  store i32 %sub25, ptr %tmp12, align 4
  %42 = load i32, ptr %tmp10, align 4
  %43 = load i32, ptr %tmp11, align 4
  %add26 = add nsw i32 %42, %43
  %44 = load ptr, ptr %dataptr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %44, i64 0
  store i32 %add26, ptr %arrayidx27, align 4
  %45 = load i32, ptr %tmp10, align 4
  %46 = load i32, ptr %tmp11, align 4
  %sub28 = sub nsw i32 %45, %46
  %47 = load ptr, ptr %dataptr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %47, i64 4
  store i32 %sub28, ptr %arrayidx29, align 4
  %48 = load i32, ptr %tmp12, align 4
  %49 = load i32, ptr %tmp13, align 4
  %add30 = add nsw i32 %48, %49
  %conv = sext i32 %add30 to i64
  %mul = mul nsw i64 %conv, 181
  %shr = ashr i64 %mul, 8
  %conv31 = trunc i64 %shr to i32
  store i32 %conv31, ptr %z1, align 4
  %50 = load i32, ptr %tmp13, align 4
  %51 = load i32, ptr %z1, align 4
  %add32 = add nsw i32 %50, %51
  %52 = load ptr, ptr %dataptr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %52, i64 2
  store i32 %add32, ptr %arrayidx33, align 4
  %53 = load i32, ptr %tmp13, align 4
  %54 = load i32, ptr %z1, align 4
  %sub34 = sub nsw i32 %53, %54
  %55 = load ptr, ptr %dataptr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %55, i64 6
  store i32 %sub34, ptr %arrayidx35, align 4
  %56 = load i32, ptr %tmp4, align 4
  %57 = load i32, ptr %tmp5, align 4
  %add36 = add nsw i32 %56, %57
  store i32 %add36, ptr %tmp10, align 4
  %58 = load i32, ptr %tmp5, align 4
  %59 = load i32, ptr %tmp6, align 4
  %add37 = add nsw i32 %58, %59
  store i32 %add37, ptr %tmp11, align 4
  %60 = load i32, ptr %tmp6, align 4
  %61 = load i32, ptr %tmp7, align 4
  %add38 = add nsw i32 %60, %61
  store i32 %add38, ptr %tmp12, align 4
  %62 = load i32, ptr %tmp10, align 4
  %63 = load i32, ptr %tmp12, align 4
  %sub39 = sub nsw i32 %62, %63
  %conv40 = sext i32 %sub39 to i64
  %mul41 = mul nsw i64 %conv40, 98
  %shr42 = ashr i64 %mul41, 8
  %conv43 = trunc i64 %shr42 to i32
  store i32 %conv43, ptr %z5, align 4
  %64 = load i32, ptr %tmp10, align 4
  %conv44 = sext i32 %64 to i64
  %mul45 = mul nsw i64 %conv44, 139
  %shr46 = ashr i64 %mul45, 8
  %conv47 = trunc i64 %shr46 to i32
  %65 = load i32, ptr %z5, align 4
  %add48 = add nsw i32 %conv47, %65
  store i32 %add48, ptr %z2, align 4
  %66 = load i32, ptr %tmp12, align 4
  %conv49 = sext i32 %66 to i64
  %mul50 = mul nsw i64 %conv49, 334
  %shr51 = ashr i64 %mul50, 8
  %conv52 = trunc i64 %shr51 to i32
  %67 = load i32, ptr %z5, align 4
  %add53 = add nsw i32 %conv52, %67
  store i32 %add53, ptr %z4, align 4
  %68 = load i32, ptr %tmp11, align 4
  %conv54 = sext i32 %68 to i64
  %mul55 = mul nsw i64 %conv54, 181
  %shr56 = ashr i64 %mul55, 8
  %conv57 = trunc i64 %shr56 to i32
  store i32 %conv57, ptr %z3, align 4
  %69 = load i32, ptr %tmp7, align 4
  %70 = load i32, ptr %z3, align 4
  %add58 = add nsw i32 %69, %70
  store i32 %add58, ptr %z11, align 4
  %71 = load i32, ptr %tmp7, align 4
  %72 = load i32, ptr %z3, align 4
  %sub59 = sub nsw i32 %71, %72
  store i32 %sub59, ptr %z13, align 4
  %73 = load i32, ptr %z13, align 4
  %74 = load i32, ptr %z2, align 4
  %add60 = add nsw i32 %73, %74
  %75 = load ptr, ptr %dataptr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %75, i64 5
  store i32 %add60, ptr %arrayidx61, align 4
  %76 = load i32, ptr %z13, align 4
  %77 = load i32, ptr %z2, align 4
  %sub62 = sub nsw i32 %76, %77
  %78 = load ptr, ptr %dataptr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %78, i64 3
  store i32 %sub62, ptr %arrayidx63, align 4
  %79 = load i32, ptr %z11, align 4
  %80 = load i32, ptr %z4, align 4
  %add64 = add nsw i32 %79, %80
  %81 = load ptr, ptr %dataptr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %81, i64 1
  store i32 %add64, ptr %arrayidx65, align 4
  %82 = load i32, ptr %z11, align 4
  %83 = load i32, ptr %z4, align 4
  %sub66 = sub nsw i32 %82, %83
  %84 = load ptr, ptr %dataptr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %84, i64 7
  store i32 %sub66, ptr %arrayidx67, align 4
  %85 = load ptr, ptr %dataptr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %85, i64 8
  store ptr %add.ptr, ptr %dataptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, ptr %ctr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %87 = load ptr, ptr %data.addr, align 8
  store ptr %87, ptr %dataptr, align 8
  store i32 7, ptr %ctr, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc145, %for.end
  %88 = load i32, ptr %ctr, align 4
  %cmp69 = icmp sge i32 %88, 0
  br i1 %cmp69, label %for.body71, label %for.end147

for.body71:                                       ; preds = %for.cond68
  %89 = load ptr, ptr %dataptr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %89, i64 0
  %90 = load i32, ptr %arrayidx72, align 4
  %91 = load ptr, ptr %dataptr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %91, i64 56
  %92 = load i32, ptr %arrayidx73, align 4
  %add74 = add nsw i32 %90, %92
  store i32 %add74, ptr %tmp0, align 4
  %93 = load ptr, ptr %dataptr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %93, i64 0
  %94 = load i32, ptr %arrayidx75, align 4
  %95 = load ptr, ptr %dataptr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %95, i64 56
  %96 = load i32, ptr %arrayidx76, align 4
  %sub77 = sub nsw i32 %94, %96
  store i32 %sub77, ptr %tmp7, align 4
  %97 = load ptr, ptr %dataptr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %97, i64 8
  %98 = load i32, ptr %arrayidx78, align 4
  %99 = load ptr, ptr %dataptr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %99, i64 48
  %100 = load i32, ptr %arrayidx79, align 4
  %add80 = add nsw i32 %98, %100
  store i32 %add80, ptr %tmp1, align 4
  %101 = load ptr, ptr %dataptr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %101, i64 8
  %102 = load i32, ptr %arrayidx81, align 4
  %103 = load ptr, ptr %dataptr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %103, i64 48
  %104 = load i32, ptr %arrayidx82, align 4
  %sub83 = sub nsw i32 %102, %104
  store i32 %sub83, ptr %tmp6, align 4
  %105 = load ptr, ptr %dataptr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %105, i64 16
  %106 = load i32, ptr %arrayidx84, align 4
  %107 = load ptr, ptr %dataptr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %107, i64 40
  %108 = load i32, ptr %arrayidx85, align 4
  %add86 = add nsw i32 %106, %108
  store i32 %add86, ptr %tmp2, align 4
  %109 = load ptr, ptr %dataptr, align 8
  %arrayidx87 = getelementptr inbounds i32, ptr %109, i64 16
  %110 = load i32, ptr %arrayidx87, align 4
  %111 = load ptr, ptr %dataptr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %111, i64 40
  %112 = load i32, ptr %arrayidx88, align 4
  %sub89 = sub nsw i32 %110, %112
  store i32 %sub89, ptr %tmp5, align 4
  %113 = load ptr, ptr %dataptr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %113, i64 24
  %114 = load i32, ptr %arrayidx90, align 4
  %115 = load ptr, ptr %dataptr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %115, i64 32
  %116 = load i32, ptr %arrayidx91, align 4
  %add92 = add nsw i32 %114, %116
  store i32 %add92, ptr %tmp3, align 4
  %117 = load ptr, ptr %dataptr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %117, i64 24
  %118 = load i32, ptr %arrayidx93, align 4
  %119 = load ptr, ptr %dataptr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %119, i64 32
  %120 = load i32, ptr %arrayidx94, align 4
  %sub95 = sub nsw i32 %118, %120
  store i32 %sub95, ptr %tmp4, align 4
  %121 = load i32, ptr %tmp0, align 4
  %122 = load i32, ptr %tmp3, align 4
  %add96 = add nsw i32 %121, %122
  store i32 %add96, ptr %tmp10, align 4
  %123 = load i32, ptr %tmp0, align 4
  %124 = load i32, ptr %tmp3, align 4
  %sub97 = sub nsw i32 %123, %124
  store i32 %sub97, ptr %tmp13, align 4
  %125 = load i32, ptr %tmp1, align 4
  %126 = load i32, ptr %tmp2, align 4
  %add98 = add nsw i32 %125, %126
  store i32 %add98, ptr %tmp11, align 4
  %127 = load i32, ptr %tmp1, align 4
  %128 = load i32, ptr %tmp2, align 4
  %sub99 = sub nsw i32 %127, %128
  store i32 %sub99, ptr %tmp12, align 4
  %129 = load i32, ptr %tmp10, align 4
  %130 = load i32, ptr %tmp11, align 4
  %add100 = add nsw i32 %129, %130
  %131 = load ptr, ptr %dataptr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %131, i64 0
  store i32 %add100, ptr %arrayidx101, align 4
  %132 = load i32, ptr %tmp10, align 4
  %133 = load i32, ptr %tmp11, align 4
  %sub102 = sub nsw i32 %132, %133
  %134 = load ptr, ptr %dataptr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %134, i64 32
  store i32 %sub102, ptr %arrayidx103, align 4
  %135 = load i32, ptr %tmp12, align 4
  %136 = load i32, ptr %tmp13, align 4
  %add104 = add nsw i32 %135, %136
  %conv105 = sext i32 %add104 to i64
  %mul106 = mul nsw i64 %conv105, 181
  %shr107 = ashr i64 %mul106, 8
  %conv108 = trunc i64 %shr107 to i32
  store i32 %conv108, ptr %z1, align 4
  %137 = load i32, ptr %tmp13, align 4
  %138 = load i32, ptr %z1, align 4
  %add109 = add nsw i32 %137, %138
  %139 = load ptr, ptr %dataptr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %139, i64 16
  store i32 %add109, ptr %arrayidx110, align 4
  %140 = load i32, ptr %tmp13, align 4
  %141 = load i32, ptr %z1, align 4
  %sub111 = sub nsw i32 %140, %141
  %142 = load ptr, ptr %dataptr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %142, i64 48
  store i32 %sub111, ptr %arrayidx112, align 4
  %143 = load i32, ptr %tmp4, align 4
  %144 = load i32, ptr %tmp5, align 4
  %add113 = add nsw i32 %143, %144
  store i32 %add113, ptr %tmp10, align 4
  %145 = load i32, ptr %tmp5, align 4
  %146 = load i32, ptr %tmp6, align 4
  %add114 = add nsw i32 %145, %146
  store i32 %add114, ptr %tmp11, align 4
  %147 = load i32, ptr %tmp6, align 4
  %148 = load i32, ptr %tmp7, align 4
  %add115 = add nsw i32 %147, %148
  store i32 %add115, ptr %tmp12, align 4
  %149 = load i32, ptr %tmp10, align 4
  %150 = load i32, ptr %tmp12, align 4
  %sub116 = sub nsw i32 %149, %150
  %conv117 = sext i32 %sub116 to i64
  %mul118 = mul nsw i64 %conv117, 98
  %shr119 = ashr i64 %mul118, 8
  %conv120 = trunc i64 %shr119 to i32
  store i32 %conv120, ptr %z5, align 4
  %151 = load i32, ptr %tmp10, align 4
  %conv121 = sext i32 %151 to i64
  %mul122 = mul nsw i64 %conv121, 139
  %shr123 = ashr i64 %mul122, 8
  %conv124 = trunc i64 %shr123 to i32
  %152 = load i32, ptr %z5, align 4
  %add125 = add nsw i32 %conv124, %152
  store i32 %add125, ptr %z2, align 4
  %153 = load i32, ptr %tmp12, align 4
  %conv126 = sext i32 %153 to i64
  %mul127 = mul nsw i64 %conv126, 334
  %shr128 = ashr i64 %mul127, 8
  %conv129 = trunc i64 %shr128 to i32
  %154 = load i32, ptr %z5, align 4
  %add130 = add nsw i32 %conv129, %154
  store i32 %add130, ptr %z4, align 4
  %155 = load i32, ptr %tmp11, align 4
  %conv131 = sext i32 %155 to i64
  %mul132 = mul nsw i64 %conv131, 181
  %shr133 = ashr i64 %mul132, 8
  %conv134 = trunc i64 %shr133 to i32
  store i32 %conv134, ptr %z3, align 4
  %156 = load i32, ptr %tmp7, align 4
  %157 = load i32, ptr %z3, align 4
  %add135 = add nsw i32 %156, %157
  store i32 %add135, ptr %z11, align 4
  %158 = load i32, ptr %tmp7, align 4
  %159 = load i32, ptr %z3, align 4
  %sub136 = sub nsw i32 %158, %159
  store i32 %sub136, ptr %z13, align 4
  %160 = load i32, ptr %z13, align 4
  %161 = load i32, ptr %z2, align 4
  %add137 = add nsw i32 %160, %161
  %162 = load ptr, ptr %dataptr, align 8
  %arrayidx138 = getelementptr inbounds i32, ptr %162, i64 40
  store i32 %add137, ptr %arrayidx138, align 4
  %163 = load i32, ptr %z13, align 4
  %164 = load i32, ptr %z2, align 4
  %sub139 = sub nsw i32 %163, %164
  %165 = load ptr, ptr %dataptr, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %165, i64 24
  store i32 %sub139, ptr %arrayidx140, align 4
  %166 = load i32, ptr %z11, align 4
  %167 = load i32, ptr %z4, align 4
  %add141 = add nsw i32 %166, %167
  %168 = load ptr, ptr %dataptr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %168, i64 8
  store i32 %add141, ptr %arrayidx142, align 4
  %169 = load i32, ptr %z11, align 4
  %170 = load i32, ptr %z4, align 4
  %sub143 = sub nsw i32 %169, %170
  %171 = load ptr, ptr %dataptr, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %171, i64 56
  store i32 %sub143, ptr %arrayidx144, align 4
  %172 = load ptr, ptr %dataptr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %172, i32 1
  store ptr %incdec.ptr, ptr %dataptr, align 8
  br label %for.inc145

for.inc145:                                       ; preds = %for.body71
  %173 = load i32, ptr %ctr, align 4
  %dec146 = add nsw i32 %173, -1
  store i32 %dec146, ptr %ctr, align 4
  br label %for.cond68, !llvm.loop !8

for.end147:                                       ; preds = %for.cond68
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
