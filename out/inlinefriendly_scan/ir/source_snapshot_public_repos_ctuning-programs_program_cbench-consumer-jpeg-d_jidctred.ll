; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jidctred.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jidctred.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_idct_4x4(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %z4 = alloca i64, align 8
  %inptr = alloca ptr, align 8
  %quantptr = alloca ptr, align 8
  %wsptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %range_limit = alloca ptr, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [32 x i32], align 4
  %dcval = alloca i32, align 4
  %dcval122 = alloca i8, align 1
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
  %arraydecay = getelementptr inbounds [32 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay, ptr %wsptr, align 8
  store i32 8, ptr %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %ctr, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %ctr, align 4
  %cmp1 = icmp eq i32 %6, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %inptr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 8
  %8 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %8 to i32
  %9 = load ptr, ptr %inptr, align 8
  %arrayidx2 = getelementptr inbounds i16, ptr %9, i64 16
  %10 = load i16, ptr %arrayidx2, align 2
  %conv3 = sext i16 %10 to i32
  %or = or i32 %conv, %conv3
  %11 = load ptr, ptr %inptr, align 8
  %arrayidx4 = getelementptr inbounds i16, ptr %11, i64 24
  %12 = load i16, ptr %arrayidx4, align 2
  %conv5 = sext i16 %12 to i32
  %or6 = or i32 %or, %conv5
  %13 = load ptr, ptr %inptr, align 8
  %arrayidx7 = getelementptr inbounds i16, ptr %13, i64 40
  %14 = load i16, ptr %arrayidx7, align 2
  %conv8 = sext i16 %14 to i32
  %or9 = or i32 %or6, %conv8
  %15 = load ptr, ptr %inptr, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %15, i64 48
  %16 = load i16, ptr %arrayidx10, align 2
  %conv11 = sext i16 %16 to i32
  %or12 = or i32 %or9, %conv11
  %17 = load ptr, ptr %inptr, align 8
  %arrayidx13 = getelementptr inbounds i16, ptr %17, i64 56
  %18 = load i16, ptr %arrayidx13, align 2
  %conv14 = sext i16 %18 to i32
  %or15 = or i32 %or12, %conv14
  %cmp16 = icmp eq i32 %or15, 0
  br i1 %cmp16, label %if.then18, label %if.end26

if.then18:                                        ; preds = %if.end
  %19 = load ptr, ptr %inptr, align 8
  %arrayidx19 = getelementptr inbounds i16, ptr %19, i64 0
  %20 = load i16, ptr %arrayidx19, align 2
  %conv20 = sext i16 %20 to i32
  %21 = load ptr, ptr %quantptr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %21, i64 0
  %22 = load i32, ptr %arrayidx21, align 4
  %mul = mul nsw i32 %conv20, %22
  %shl = shl i32 %mul, 2
  store i32 %shl, ptr %dcval, align 4
  %23 = load i32, ptr %dcval, align 4
  %24 = load ptr, ptr %wsptr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %24, i64 0
  store i32 %23, ptr %arrayidx22, align 4
  %25 = load i32, ptr %dcval, align 4
  %26 = load ptr, ptr %wsptr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %26, i64 8
  store i32 %25, ptr %arrayidx23, align 4
  %27 = load i32, ptr %dcval, align 4
  %28 = load ptr, ptr %wsptr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %28, i64 16
  store i32 %27, ptr %arrayidx24, align 4
  %29 = load i32, ptr %dcval, align 4
  %30 = load ptr, ptr %wsptr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %30, i64 24
  store i32 %29, ptr %arrayidx25, align 4
  br label %for.inc

if.end26:                                         ; preds = %if.end
  %31 = load ptr, ptr %inptr, align 8
  %arrayidx27 = getelementptr inbounds i16, ptr %31, i64 0
  %32 = load i16, ptr %arrayidx27, align 2
  %conv28 = sext i16 %32 to i32
  %33 = load ptr, ptr %quantptr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %33, i64 0
  %34 = load i32, ptr %arrayidx29, align 4
  %mul30 = mul nsw i32 %conv28, %34
  %conv31 = sext i32 %mul30 to i64
  store i64 %conv31, ptr %tmp0, align 8
  %35 = load i64, ptr %tmp0, align 8
  %shl32 = shl i64 %35, 14
  store i64 %shl32, ptr %tmp0, align 8
  %36 = load ptr, ptr %inptr, align 8
  %arrayidx33 = getelementptr inbounds i16, ptr %36, i64 16
  %37 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %37 to i32
  %38 = load ptr, ptr %quantptr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %38, i64 16
  %39 = load i32, ptr %arrayidx35, align 4
  %mul36 = mul nsw i32 %conv34, %39
  %conv37 = sext i32 %mul36 to i64
  store i64 %conv37, ptr %z2, align 8
  %40 = load ptr, ptr %inptr, align 8
  %arrayidx38 = getelementptr inbounds i16, ptr %40, i64 48
  %41 = load i16, ptr %arrayidx38, align 2
  %conv39 = sext i16 %41 to i32
  %42 = load ptr, ptr %quantptr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %42, i64 48
  %43 = load i32, ptr %arrayidx40, align 4
  %mul41 = mul nsw i32 %conv39, %43
  %conv42 = sext i32 %mul41 to i64
  store i64 %conv42, ptr %z3, align 8
  %44 = load i64, ptr %z2, align 8
  %mul43 = mul nsw i64 %44, 15137
  %45 = load i64, ptr %z3, align 8
  %mul44 = mul nsw i64 %45, -6270
  %add = add nsw i64 %mul43, %mul44
  store i64 %add, ptr %tmp2, align 8
  %46 = load i64, ptr %tmp0, align 8
  %47 = load i64, ptr %tmp2, align 8
  %add45 = add nsw i64 %46, %47
  store i64 %add45, ptr %tmp10, align 8
  %48 = load i64, ptr %tmp0, align 8
  %49 = load i64, ptr %tmp2, align 8
  %sub = sub nsw i64 %48, %49
  store i64 %sub, ptr %tmp12, align 8
  %50 = load ptr, ptr %inptr, align 8
  %arrayidx46 = getelementptr inbounds i16, ptr %50, i64 56
  %51 = load i16, ptr %arrayidx46, align 2
  %conv47 = sext i16 %51 to i32
  %52 = load ptr, ptr %quantptr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %52, i64 56
  %53 = load i32, ptr %arrayidx48, align 4
  %mul49 = mul nsw i32 %conv47, %53
  %conv50 = sext i32 %mul49 to i64
  store i64 %conv50, ptr %z1, align 8
  %54 = load ptr, ptr %inptr, align 8
  %arrayidx51 = getelementptr inbounds i16, ptr %54, i64 40
  %55 = load i16, ptr %arrayidx51, align 2
  %conv52 = sext i16 %55 to i32
  %56 = load ptr, ptr %quantptr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %56, i64 40
  %57 = load i32, ptr %arrayidx53, align 4
  %mul54 = mul nsw i32 %conv52, %57
  %conv55 = sext i32 %mul54 to i64
  store i64 %conv55, ptr %z2, align 8
  %58 = load ptr, ptr %inptr, align 8
  %arrayidx56 = getelementptr inbounds i16, ptr %58, i64 24
  %59 = load i16, ptr %arrayidx56, align 2
  %conv57 = sext i16 %59 to i32
  %60 = load ptr, ptr %quantptr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %60, i64 24
  %61 = load i32, ptr %arrayidx58, align 4
  %mul59 = mul nsw i32 %conv57, %61
  %conv60 = sext i32 %mul59 to i64
  store i64 %conv60, ptr %z3, align 8
  %62 = load ptr, ptr %inptr, align 8
  %arrayidx61 = getelementptr inbounds i16, ptr %62, i64 8
  %63 = load i16, ptr %arrayidx61, align 2
  %conv62 = sext i16 %63 to i32
  %64 = load ptr, ptr %quantptr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %64, i64 8
  %65 = load i32, ptr %arrayidx63, align 4
  %mul64 = mul nsw i32 %conv62, %65
  %conv65 = sext i32 %mul64 to i64
  store i64 %conv65, ptr %z4, align 8
  %66 = load i64, ptr %z1, align 8
  %mul66 = mul nsw i64 %66, -1730
  %67 = load i64, ptr %z2, align 8
  %mul67 = mul nsw i64 %67, 11893
  %add68 = add nsw i64 %mul66, %mul67
  %68 = load i64, ptr %z3, align 8
  %mul69 = mul nsw i64 %68, -17799
  %add70 = add nsw i64 %add68, %mul69
  %69 = load i64, ptr %z4, align 8
  %mul71 = mul nsw i64 %69, 8697
  %add72 = add nsw i64 %add70, %mul71
  store i64 %add72, ptr %tmp0, align 8
  %70 = load i64, ptr %z1, align 8
  %mul73 = mul nsw i64 %70, -4176
  %71 = load i64, ptr %z2, align 8
  %mul74 = mul nsw i64 %71, -4926
  %add75 = add nsw i64 %mul73, %mul74
  %72 = load i64, ptr %z3, align 8
  %mul76 = mul nsw i64 %72, 7373
  %add77 = add nsw i64 %add75, %mul76
  %73 = load i64, ptr %z4, align 8
  %mul78 = mul nsw i64 %73, 20995
  %add79 = add nsw i64 %add77, %mul78
  store i64 %add79, ptr %tmp2, align 8
  %74 = load i64, ptr %tmp10, align 8
  %75 = load i64, ptr %tmp2, align 8
  %add80 = add nsw i64 %74, %75
  %add81 = add nsw i64 %add80, 2048
  %shr = ashr i64 %add81, 12
  %conv82 = trunc i64 %shr to i32
  %76 = load ptr, ptr %wsptr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %76, i64 0
  store i32 %conv82, ptr %arrayidx83, align 4
  %77 = load i64, ptr %tmp10, align 8
  %78 = load i64, ptr %tmp2, align 8
  %sub84 = sub nsw i64 %77, %78
  %add85 = add nsw i64 %sub84, 2048
  %shr86 = ashr i64 %add85, 12
  %conv87 = trunc i64 %shr86 to i32
  %79 = load ptr, ptr %wsptr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %79, i64 24
  store i32 %conv87, ptr %arrayidx88, align 4
  %80 = load i64, ptr %tmp12, align 8
  %81 = load i64, ptr %tmp0, align 8
  %add89 = add nsw i64 %80, %81
  %add90 = add nsw i64 %add89, 2048
  %shr91 = ashr i64 %add90, 12
  %conv92 = trunc i64 %shr91 to i32
  %82 = load ptr, ptr %wsptr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %82, i64 8
  store i32 %conv92, ptr %arrayidx93, align 4
  %83 = load i64, ptr %tmp12, align 8
  %84 = load i64, ptr %tmp0, align 8
  %sub94 = sub nsw i64 %83, %84
  %add95 = add nsw i64 %sub94, 2048
  %shr96 = ashr i64 %add95, 12
  %conv97 = trunc i64 %shr96 to i32
  %85 = load ptr, ptr %wsptr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %85, i64 16
  store i32 %conv97, ptr %arrayidx98, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %if.then18, %if.then
  %86 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %86, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %87 = load ptr, ptr %quantptr, align 8
  %incdec.ptr99 = getelementptr inbounds i32, ptr %87, i32 1
  store ptr %incdec.ptr99, ptr %quantptr, align 8
  %88 = load ptr, ptr %wsptr, align 8
  %incdec.ptr100 = getelementptr inbounds i32, ptr %88, i32 1
  store ptr %incdec.ptr100, ptr %wsptr, align 8
  %89 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %89, -1
  store i32 %dec, ptr %ctr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay101 = getelementptr inbounds [32 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay101, ptr %wsptr, align 8
  store i32 0, ptr %ctr, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc203, %for.end
  %90 = load i32, ptr %ctr, align 4
  %cmp103 = icmp slt i32 %90, 4
  br i1 %cmp103, label %for.body105, label %for.end204

for.body105:                                      ; preds = %for.cond102
  %91 = load ptr, ptr %output_buf.addr, align 8
  %92 = load i32, ptr %ctr, align 4
  %idxprom = sext i32 %92 to i64
  %arrayidx106 = getelementptr inbounds ptr, ptr %91, i64 %idxprom
  %93 = load ptr, ptr %arrayidx106, align 8
  %94 = load i32, ptr %output_col.addr, align 4
  %idx.ext = zext i32 %94 to i64
  %add.ptr107 = getelementptr inbounds i8, ptr %93, i64 %idx.ext
  store ptr %add.ptr107, ptr %outptr, align 8
  %95 = load ptr, ptr %wsptr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %95, i64 1
  %96 = load i32, ptr %arrayidx108, align 4
  %97 = load ptr, ptr %wsptr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %97, i64 2
  %98 = load i32, ptr %arrayidx109, align 4
  %or110 = or i32 %96, %98
  %99 = load ptr, ptr %wsptr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %99, i64 3
  %100 = load i32, ptr %arrayidx111, align 4
  %or112 = or i32 %or110, %100
  %101 = load ptr, ptr %wsptr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %101, i64 5
  %102 = load i32, ptr %arrayidx113, align 4
  %or114 = or i32 %or112, %102
  %103 = load ptr, ptr %wsptr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %103, i64 6
  %104 = load i32, ptr %arrayidx115, align 4
  %or116 = or i32 %or114, %104
  %105 = load ptr, ptr %wsptr, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %105, i64 7
  %106 = load i32, ptr %arrayidx117, align 4
  %or118 = or i32 %or116, %106
  %cmp119 = icmp eq i32 %or118, 0
  br i1 %cmp119, label %if.then121, label %if.end135

if.then121:                                       ; preds = %for.body105
  %107 = load ptr, ptr %range_limit, align 8
  %108 = load ptr, ptr %wsptr, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %108, i64 0
  %109 = load i32, ptr %arrayidx123, align 4
  %conv124 = sext i32 %109 to i64
  %add125 = add nsw i64 %conv124, 16
  %shr126 = ashr i64 %add125, 5
  %conv127 = trunc i64 %shr126 to i32
  %and = and i32 %conv127, 1023
  %idxprom128 = sext i32 %and to i64
  %arrayidx129 = getelementptr inbounds i8, ptr %107, i64 %idxprom128
  %110 = load i8, ptr %arrayidx129, align 1
  store i8 %110, ptr %dcval122, align 1
  %111 = load i8, ptr %dcval122, align 1
  %112 = load ptr, ptr %outptr, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %112, i64 0
  store i8 %111, ptr %arrayidx130, align 1
  %113 = load i8, ptr %dcval122, align 1
  %114 = load ptr, ptr %outptr, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %114, i64 1
  store i8 %113, ptr %arrayidx131, align 1
  %115 = load i8, ptr %dcval122, align 1
  %116 = load ptr, ptr %outptr, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %116, i64 2
  store i8 %115, ptr %arrayidx132, align 1
  %117 = load i8, ptr %dcval122, align 1
  %118 = load ptr, ptr %outptr, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %118, i64 3
  store i8 %117, ptr %arrayidx133, align 1
  %119 = load ptr, ptr %wsptr, align 8
  %add.ptr134 = getelementptr inbounds i32, ptr %119, i64 8
  store ptr %add.ptr134, ptr %wsptr, align 8
  br label %for.inc203

if.end135:                                        ; preds = %for.body105
  %120 = load ptr, ptr %wsptr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %120, i64 0
  %121 = load i32, ptr %arrayidx136, align 4
  %conv137 = sext i32 %121 to i64
  %shl138 = shl i64 %conv137, 14
  store i64 %shl138, ptr %tmp0, align 8
  %122 = load ptr, ptr %wsptr, align 8
  %arrayidx139 = getelementptr inbounds i32, ptr %122, i64 2
  %123 = load i32, ptr %arrayidx139, align 4
  %conv140 = sext i32 %123 to i64
  %mul141 = mul nsw i64 %conv140, 15137
  %124 = load ptr, ptr %wsptr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %124, i64 6
  %125 = load i32, ptr %arrayidx142, align 4
  %conv143 = sext i32 %125 to i64
  %mul144 = mul nsw i64 %conv143, -6270
  %add145 = add nsw i64 %mul141, %mul144
  store i64 %add145, ptr %tmp2, align 8
  %126 = load i64, ptr %tmp0, align 8
  %127 = load i64, ptr %tmp2, align 8
  %add146 = add nsw i64 %126, %127
  store i64 %add146, ptr %tmp10, align 8
  %128 = load i64, ptr %tmp0, align 8
  %129 = load i64, ptr %tmp2, align 8
  %sub147 = sub nsw i64 %128, %129
  store i64 %sub147, ptr %tmp12, align 8
  %130 = load ptr, ptr %wsptr, align 8
  %arrayidx148 = getelementptr inbounds i32, ptr %130, i64 7
  %131 = load i32, ptr %arrayidx148, align 4
  %conv149 = sext i32 %131 to i64
  store i64 %conv149, ptr %z1, align 8
  %132 = load ptr, ptr %wsptr, align 8
  %arrayidx150 = getelementptr inbounds i32, ptr %132, i64 5
  %133 = load i32, ptr %arrayidx150, align 4
  %conv151 = sext i32 %133 to i64
  store i64 %conv151, ptr %z2, align 8
  %134 = load ptr, ptr %wsptr, align 8
  %arrayidx152 = getelementptr inbounds i32, ptr %134, i64 3
  %135 = load i32, ptr %arrayidx152, align 4
  %conv153 = sext i32 %135 to i64
  store i64 %conv153, ptr %z3, align 8
  %136 = load ptr, ptr %wsptr, align 8
  %arrayidx154 = getelementptr inbounds i32, ptr %136, i64 1
  %137 = load i32, ptr %arrayidx154, align 4
  %conv155 = sext i32 %137 to i64
  store i64 %conv155, ptr %z4, align 8
  %138 = load i64, ptr %z1, align 8
  %mul156 = mul nsw i64 %138, -1730
  %139 = load i64, ptr %z2, align 8
  %mul157 = mul nsw i64 %139, 11893
  %add158 = add nsw i64 %mul156, %mul157
  %140 = load i64, ptr %z3, align 8
  %mul159 = mul nsw i64 %140, -17799
  %add160 = add nsw i64 %add158, %mul159
  %141 = load i64, ptr %z4, align 8
  %mul161 = mul nsw i64 %141, 8697
  %add162 = add nsw i64 %add160, %mul161
  store i64 %add162, ptr %tmp0, align 8
  %142 = load i64, ptr %z1, align 8
  %mul163 = mul nsw i64 %142, -4176
  %143 = load i64, ptr %z2, align 8
  %mul164 = mul nsw i64 %143, -4926
  %add165 = add nsw i64 %mul163, %mul164
  %144 = load i64, ptr %z3, align 8
  %mul166 = mul nsw i64 %144, 7373
  %add167 = add nsw i64 %add165, %mul166
  %145 = load i64, ptr %z4, align 8
  %mul168 = mul nsw i64 %145, 20995
  %add169 = add nsw i64 %add167, %mul168
  store i64 %add169, ptr %tmp2, align 8
  %146 = load ptr, ptr %range_limit, align 8
  %147 = load i64, ptr %tmp10, align 8
  %148 = load i64, ptr %tmp2, align 8
  %add170 = add nsw i64 %147, %148
  %add171 = add nsw i64 %add170, 262144
  %shr172 = ashr i64 %add171, 19
  %conv173 = trunc i64 %shr172 to i32
  %and174 = and i32 %conv173, 1023
  %idxprom175 = sext i32 %and174 to i64
  %arrayidx176 = getelementptr inbounds i8, ptr %146, i64 %idxprom175
  %149 = load i8, ptr %arrayidx176, align 1
  %150 = load ptr, ptr %outptr, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %150, i64 0
  store i8 %149, ptr %arrayidx177, align 1
  %151 = load ptr, ptr %range_limit, align 8
  %152 = load i64, ptr %tmp10, align 8
  %153 = load i64, ptr %tmp2, align 8
  %sub178 = sub nsw i64 %152, %153
  %add179 = add nsw i64 %sub178, 262144
  %shr180 = ashr i64 %add179, 19
  %conv181 = trunc i64 %shr180 to i32
  %and182 = and i32 %conv181, 1023
  %idxprom183 = sext i32 %and182 to i64
  %arrayidx184 = getelementptr inbounds i8, ptr %151, i64 %idxprom183
  %154 = load i8, ptr %arrayidx184, align 1
  %155 = load ptr, ptr %outptr, align 8
  %arrayidx185 = getelementptr inbounds i8, ptr %155, i64 3
  store i8 %154, ptr %arrayidx185, align 1
  %156 = load ptr, ptr %range_limit, align 8
  %157 = load i64, ptr %tmp12, align 8
  %158 = load i64, ptr %tmp0, align 8
  %add186 = add nsw i64 %157, %158
  %add187 = add nsw i64 %add186, 262144
  %shr188 = ashr i64 %add187, 19
  %conv189 = trunc i64 %shr188 to i32
  %and190 = and i32 %conv189, 1023
  %idxprom191 = sext i32 %and190 to i64
  %arrayidx192 = getelementptr inbounds i8, ptr %156, i64 %idxprom191
  %159 = load i8, ptr %arrayidx192, align 1
  %160 = load ptr, ptr %outptr, align 8
  %arrayidx193 = getelementptr inbounds i8, ptr %160, i64 1
  store i8 %159, ptr %arrayidx193, align 1
  %161 = load ptr, ptr %range_limit, align 8
  %162 = load i64, ptr %tmp12, align 8
  %163 = load i64, ptr %tmp0, align 8
  %sub194 = sub nsw i64 %162, %163
  %add195 = add nsw i64 %sub194, 262144
  %shr196 = ashr i64 %add195, 19
  %conv197 = trunc i64 %shr196 to i32
  %and198 = and i32 %conv197, 1023
  %idxprom199 = sext i32 %and198 to i64
  %arrayidx200 = getelementptr inbounds i8, ptr %161, i64 %idxprom199
  %164 = load i8, ptr %arrayidx200, align 1
  %165 = load ptr, ptr %outptr, align 8
  %arrayidx201 = getelementptr inbounds i8, ptr %165, i64 2
  store i8 %164, ptr %arrayidx201, align 1
  %166 = load ptr, ptr %wsptr, align 8
  %add.ptr202 = getelementptr inbounds i32, ptr %166, i64 8
  store ptr %add.ptr202, ptr %wsptr, align 8
  br label %for.inc203

for.inc203:                                       ; preds = %if.end135, %if.then121
  %167 = load i32, ptr %ctr, align 4
  %inc = add nsw i32 %167, 1
  store i32 %inc, ptr %ctr, align 4
  br label %for.cond102, !llvm.loop !8

for.end204:                                       ; preds = %for.cond102
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_idct_2x2(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %inptr = alloca ptr, align 8
  %quantptr = alloca ptr, align 8
  %wsptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %range_limit = alloca ptr, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [16 x i32], align 4
  %dcval = alloca i32, align 4
  %dcval81 = alloca i8, align 1
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
  %arraydecay = getelementptr inbounds [16 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay, ptr %wsptr, align 8
  store i32 8, ptr %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %ctr, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %ctr, align 4
  %cmp1 = icmp eq i32 %6, 6
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, ptr %ctr, align 4
  %cmp2 = icmp eq i32 %7, 4
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = load i32, ptr %ctr, align 4
  %cmp4 = icmp eq i32 %8, 2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false3
  %9 = load ptr, ptr %inptr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 8
  %10 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %10 to i32
  %11 = load ptr, ptr %inptr, align 8
  %arrayidx5 = getelementptr inbounds i16, ptr %11, i64 24
  %12 = load i16, ptr %arrayidx5, align 2
  %conv6 = sext i16 %12 to i32
  %or = or i32 %conv, %conv6
  %13 = load ptr, ptr %inptr, align 8
  %arrayidx7 = getelementptr inbounds i16, ptr %13, i64 40
  %14 = load i16, ptr %arrayidx7, align 2
  %conv8 = sext i16 %14 to i32
  %or9 = or i32 %or, %conv8
  %15 = load ptr, ptr %inptr, align 8
  %arrayidx10 = getelementptr inbounds i16, ptr %15, i64 56
  %16 = load i16, ptr %arrayidx10, align 2
  %conv11 = sext i16 %16 to i32
  %or12 = or i32 %or9, %conv11
  %cmp13 = icmp eq i32 %or12, 0
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end
  %17 = load ptr, ptr %inptr, align 8
  %arrayidx16 = getelementptr inbounds i16, ptr %17, i64 0
  %18 = load i16, ptr %arrayidx16, align 2
  %conv17 = sext i16 %18 to i32
  %19 = load ptr, ptr %quantptr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %19, i64 0
  %20 = load i32, ptr %arrayidx18, align 4
  %mul = mul nsw i32 %conv17, %20
  %shl = shl i32 %mul, 2
  store i32 %shl, ptr %dcval, align 4
  %21 = load i32, ptr %dcval, align 4
  %22 = load ptr, ptr %wsptr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %22, i64 0
  store i32 %21, ptr %arrayidx19, align 4
  %23 = load i32, ptr %dcval, align 4
  %24 = load ptr, ptr %wsptr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %24, i64 8
  store i32 %23, ptr %arrayidx20, align 4
  br label %for.inc

if.end21:                                         ; preds = %if.end
  %25 = load ptr, ptr %inptr, align 8
  %arrayidx22 = getelementptr inbounds i16, ptr %25, i64 0
  %26 = load i16, ptr %arrayidx22, align 2
  %conv23 = sext i16 %26 to i32
  %27 = load ptr, ptr %quantptr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %27, i64 0
  %28 = load i32, ptr %arrayidx24, align 4
  %mul25 = mul nsw i32 %conv23, %28
  %conv26 = sext i32 %mul25 to i64
  store i64 %conv26, ptr %z1, align 8
  %29 = load i64, ptr %z1, align 8
  %shl27 = shl i64 %29, 15
  store i64 %shl27, ptr %tmp10, align 8
  %30 = load ptr, ptr %inptr, align 8
  %arrayidx28 = getelementptr inbounds i16, ptr %30, i64 56
  %31 = load i16, ptr %arrayidx28, align 2
  %conv29 = sext i16 %31 to i32
  %32 = load ptr, ptr %quantptr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %32, i64 56
  %33 = load i32, ptr %arrayidx30, align 4
  %mul31 = mul nsw i32 %conv29, %33
  %conv32 = sext i32 %mul31 to i64
  store i64 %conv32, ptr %z1, align 8
  %34 = load i64, ptr %z1, align 8
  %mul33 = mul nsw i64 %34, -5906
  store i64 %mul33, ptr %tmp0, align 8
  %35 = load ptr, ptr %inptr, align 8
  %arrayidx34 = getelementptr inbounds i16, ptr %35, i64 40
  %36 = load i16, ptr %arrayidx34, align 2
  %conv35 = sext i16 %36 to i32
  %37 = load ptr, ptr %quantptr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %37, i64 40
  %38 = load i32, ptr %arrayidx36, align 4
  %mul37 = mul nsw i32 %conv35, %38
  %conv38 = sext i32 %mul37 to i64
  store i64 %conv38, ptr %z1, align 8
  %39 = load i64, ptr %z1, align 8
  %mul39 = mul nsw i64 %39, 6967
  %40 = load i64, ptr %tmp0, align 8
  %add = add nsw i64 %40, %mul39
  store i64 %add, ptr %tmp0, align 8
  %41 = load ptr, ptr %inptr, align 8
  %arrayidx40 = getelementptr inbounds i16, ptr %41, i64 24
  %42 = load i16, ptr %arrayidx40, align 2
  %conv41 = sext i16 %42 to i32
  %43 = load ptr, ptr %quantptr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %43, i64 24
  %44 = load i32, ptr %arrayidx42, align 4
  %mul43 = mul nsw i32 %conv41, %44
  %conv44 = sext i32 %mul43 to i64
  store i64 %conv44, ptr %z1, align 8
  %45 = load i64, ptr %z1, align 8
  %mul45 = mul nsw i64 %45, -10426
  %46 = load i64, ptr %tmp0, align 8
  %add46 = add nsw i64 %46, %mul45
  store i64 %add46, ptr %tmp0, align 8
  %47 = load ptr, ptr %inptr, align 8
  %arrayidx47 = getelementptr inbounds i16, ptr %47, i64 8
  %48 = load i16, ptr %arrayidx47, align 2
  %conv48 = sext i16 %48 to i32
  %49 = load ptr, ptr %quantptr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %49, i64 8
  %50 = load i32, ptr %arrayidx49, align 4
  %mul50 = mul nsw i32 %conv48, %50
  %conv51 = sext i32 %mul50 to i64
  store i64 %conv51, ptr %z1, align 8
  %51 = load i64, ptr %z1, align 8
  %mul52 = mul nsw i64 %51, 29692
  %52 = load i64, ptr %tmp0, align 8
  %add53 = add nsw i64 %52, %mul52
  store i64 %add53, ptr %tmp0, align 8
  %53 = load i64, ptr %tmp10, align 8
  %54 = load i64, ptr %tmp0, align 8
  %add54 = add nsw i64 %53, %54
  %add55 = add nsw i64 %add54, 4096
  %shr = ashr i64 %add55, 13
  %conv56 = trunc i64 %shr to i32
  %55 = load ptr, ptr %wsptr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %55, i64 0
  store i32 %conv56, ptr %arrayidx57, align 4
  %56 = load i64, ptr %tmp10, align 8
  %57 = load i64, ptr %tmp0, align 8
  %sub = sub nsw i64 %56, %57
  %add58 = add nsw i64 %sub, 4096
  %shr59 = ashr i64 %add58, 13
  %conv60 = trunc i64 %shr59 to i32
  %58 = load ptr, ptr %wsptr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %58, i64 8
  store i32 %conv60, ptr %arrayidx61, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.then15, %if.then
  %59 = load ptr, ptr %inptr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %59, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8
  %60 = load ptr, ptr %quantptr, align 8
  %incdec.ptr62 = getelementptr inbounds i32, ptr %60, i32 1
  store ptr %incdec.ptr62, ptr %quantptr, align 8
  %61 = load ptr, ptr %wsptr, align 8
  %incdec.ptr63 = getelementptr inbounds i32, ptr %61, i32 1
  store ptr %incdec.ptr63, ptr %wsptr, align 8
  %62 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %62, -1
  store i32 %dec, ptr %ctr, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arraydecay64 = getelementptr inbounds [16 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay64, ptr %wsptr, align 8
  store i32 0, ptr %ctr, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc128, %for.end
  %63 = load i32, ptr %ctr, align 4
  %cmp66 = icmp slt i32 %63, 2
  br i1 %cmp66, label %for.body68, label %for.end129

for.body68:                                       ; preds = %for.cond65
  %64 = load ptr, ptr %output_buf.addr, align 8
  %65 = load i32, ptr %ctr, align 4
  %idxprom = sext i32 %65 to i64
  %arrayidx69 = getelementptr inbounds ptr, ptr %64, i64 %idxprom
  %66 = load ptr, ptr %arrayidx69, align 8
  %67 = load i32, ptr %output_col.addr, align 4
  %idx.ext = zext i32 %67 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %66, i64 %idx.ext
  store ptr %add.ptr70, ptr %outptr, align 8
  %68 = load ptr, ptr %wsptr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %68, i64 1
  %69 = load i32, ptr %arrayidx71, align 4
  %70 = load ptr, ptr %wsptr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %70, i64 3
  %71 = load i32, ptr %arrayidx72, align 4
  %or73 = or i32 %69, %71
  %72 = load ptr, ptr %wsptr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %72, i64 5
  %73 = load i32, ptr %arrayidx74, align 4
  %or75 = or i32 %or73, %73
  %74 = load ptr, ptr %wsptr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %74, i64 7
  %75 = load i32, ptr %arrayidx76, align 4
  %or77 = or i32 %or75, %75
  %cmp78 = icmp eq i32 %or77, 0
  br i1 %cmp78, label %if.then80, label %if.end92

if.then80:                                        ; preds = %for.body68
  %76 = load ptr, ptr %range_limit, align 8
  %77 = load ptr, ptr %wsptr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %77, i64 0
  %78 = load i32, ptr %arrayidx82, align 4
  %conv83 = sext i32 %78 to i64
  %add84 = add nsw i64 %conv83, 16
  %shr85 = ashr i64 %add84, 5
  %conv86 = trunc i64 %shr85 to i32
  %and = and i32 %conv86, 1023
  %idxprom87 = sext i32 %and to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %76, i64 %idxprom87
  %79 = load i8, ptr %arrayidx88, align 1
  store i8 %79, ptr %dcval81, align 1
  %80 = load i8, ptr %dcval81, align 1
  %81 = load ptr, ptr %outptr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %81, i64 0
  store i8 %80, ptr %arrayidx89, align 1
  %82 = load i8, ptr %dcval81, align 1
  %83 = load ptr, ptr %outptr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 %82, ptr %arrayidx90, align 1
  %84 = load ptr, ptr %wsptr, align 8
  %add.ptr91 = getelementptr inbounds i32, ptr %84, i64 8
  store ptr %add.ptr91, ptr %wsptr, align 8
  br label %for.inc128

if.end92:                                         ; preds = %for.body68
  %85 = load ptr, ptr %wsptr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %85, i64 0
  %86 = load i32, ptr %arrayidx93, align 4
  %conv94 = sext i32 %86 to i64
  %shl95 = shl i64 %conv94, 15
  store i64 %shl95, ptr %tmp10, align 8
  %87 = load ptr, ptr %wsptr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %87, i64 7
  %88 = load i32, ptr %arrayidx96, align 4
  %conv97 = sext i32 %88 to i64
  %mul98 = mul nsw i64 %conv97, -5906
  %89 = load ptr, ptr %wsptr, align 8
  %arrayidx99 = getelementptr inbounds i32, ptr %89, i64 5
  %90 = load i32, ptr %arrayidx99, align 4
  %conv100 = sext i32 %90 to i64
  %mul101 = mul nsw i64 %conv100, 6967
  %add102 = add nsw i64 %mul98, %mul101
  %91 = load ptr, ptr %wsptr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %91, i64 3
  %92 = load i32, ptr %arrayidx103, align 4
  %conv104 = sext i32 %92 to i64
  %mul105 = mul nsw i64 %conv104, -10426
  %add106 = add nsw i64 %add102, %mul105
  %93 = load ptr, ptr %wsptr, align 8
  %arrayidx107 = getelementptr inbounds i32, ptr %93, i64 1
  %94 = load i32, ptr %arrayidx107, align 4
  %conv108 = sext i32 %94 to i64
  %mul109 = mul nsw i64 %conv108, 29692
  %add110 = add nsw i64 %add106, %mul109
  store i64 %add110, ptr %tmp0, align 8
  %95 = load ptr, ptr %range_limit, align 8
  %96 = load i64, ptr %tmp10, align 8
  %97 = load i64, ptr %tmp0, align 8
  %add111 = add nsw i64 %96, %97
  %add112 = add nsw i64 %add111, 524288
  %shr113 = ashr i64 %add112, 20
  %conv114 = trunc i64 %shr113 to i32
  %and115 = and i32 %conv114, 1023
  %idxprom116 = sext i32 %and115 to i64
  %arrayidx117 = getelementptr inbounds i8, ptr %95, i64 %idxprom116
  %98 = load i8, ptr %arrayidx117, align 1
  %99 = load ptr, ptr %outptr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %99, i64 0
  store i8 %98, ptr %arrayidx118, align 1
  %100 = load ptr, ptr %range_limit, align 8
  %101 = load i64, ptr %tmp10, align 8
  %102 = load i64, ptr %tmp0, align 8
  %sub119 = sub nsw i64 %101, %102
  %add120 = add nsw i64 %sub119, 524288
  %shr121 = ashr i64 %add120, 20
  %conv122 = trunc i64 %shr121 to i32
  %and123 = and i32 %conv122, 1023
  %idxprom124 = sext i32 %and123 to i64
  %arrayidx125 = getelementptr inbounds i8, ptr %100, i64 %idxprom124
  %103 = load i8, ptr %arrayidx125, align 1
  %104 = load ptr, ptr %outptr, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 %103, ptr %arrayidx126, align 1
  %105 = load ptr, ptr %wsptr, align 8
  %add.ptr127 = getelementptr inbounds i32, ptr %105, i64 8
  store ptr %add.ptr127, ptr %wsptr, align 8
  br label %for.inc128

for.inc128:                                       ; preds = %if.end92, %if.then80
  %106 = load i32, ptr %ctr, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, ptr %ctr, align 4
  br label %for.cond65, !llvm.loop !10

for.end129:                                       ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_idct_1x1(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  %dcval = alloca i32, align 4
  %quantptr = alloca ptr, align 8
  %range_limit = alloca ptr, align 8
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
  %2 = load ptr, ptr %compptr.addr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %2, i32 0, i32 20
  %3 = load ptr, ptr %dct_table, align 8
  store ptr %3, ptr %quantptr, align 8
  %4 = load ptr, ptr %coef_block.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 0
  %5 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %6 = load ptr, ptr %quantptr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %6, i64 0
  %7 = load i32, ptr %arrayidx1, align 4
  %mul = mul nsw i32 %conv, %7
  store i32 %mul, ptr %dcval, align 4
  %8 = load i32, ptr %dcval, align 4
  %conv2 = sext i32 %8 to i64
  %add = add nsw i64 %conv2, 4
  %shr = ashr i64 %add, 3
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, ptr %dcval, align 4
  %9 = load ptr, ptr %range_limit, align 8
  %10 = load i32, ptr %dcval, align 4
  %and = and i32 %10, 1023
  %idxprom = sext i32 %and to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %11 = load i8, ptr %arrayidx4, align 1
  %12 = load ptr, ptr %output_buf.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx5, align 8
  %14 = load i32, ptr %output_col.addr, align 4
  %idxprom6 = zext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %13, i64 %idxprom6
  store i8 %11, ptr %arrayidx7, align 1
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
