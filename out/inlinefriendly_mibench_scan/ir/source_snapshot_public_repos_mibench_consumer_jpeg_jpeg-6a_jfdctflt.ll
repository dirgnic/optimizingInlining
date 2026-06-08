; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jfdctflt.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jfdctflt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_fdct_float(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
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
  %z1 = alloca float, align 4
  %z2 = alloca float, align 4
  %z3 = alloca float, align 4
  %z4 = alloca float, align 4
  %z5 = alloca float, align 4
  %z11 = alloca float, align 4
  %z13 = alloca float, align 4
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
  %arrayidx = getelementptr inbounds float, ptr %2, i64 0
  %3 = load float, ptr %arrayidx, align 4
  %4 = load ptr, ptr %dataptr, align 8
  %arrayidx1 = getelementptr inbounds float, ptr %4, i64 7
  %5 = load float, ptr %arrayidx1, align 4
  %add = fadd float %3, %5
  store float %add, ptr %tmp0, align 4
  %6 = load ptr, ptr %dataptr, align 8
  %arrayidx2 = getelementptr inbounds float, ptr %6, i64 0
  %7 = load float, ptr %arrayidx2, align 4
  %8 = load ptr, ptr %dataptr, align 8
  %arrayidx3 = getelementptr inbounds float, ptr %8, i64 7
  %9 = load float, ptr %arrayidx3, align 4
  %sub = fsub float %7, %9
  store float %sub, ptr %tmp7, align 4
  %10 = load ptr, ptr %dataptr, align 8
  %arrayidx4 = getelementptr inbounds float, ptr %10, i64 1
  %11 = load float, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %dataptr, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %12, i64 6
  %13 = load float, ptr %arrayidx5, align 4
  %add6 = fadd float %11, %13
  store float %add6, ptr %tmp1, align 4
  %14 = load ptr, ptr %dataptr, align 8
  %arrayidx7 = getelementptr inbounds float, ptr %14, i64 1
  %15 = load float, ptr %arrayidx7, align 4
  %16 = load ptr, ptr %dataptr, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %16, i64 6
  %17 = load float, ptr %arrayidx8, align 4
  %sub9 = fsub float %15, %17
  store float %sub9, ptr %tmp6, align 4
  %18 = load ptr, ptr %dataptr, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %18, i64 2
  %19 = load float, ptr %arrayidx10, align 4
  %20 = load ptr, ptr %dataptr, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %20, i64 5
  %21 = load float, ptr %arrayidx11, align 4
  %add12 = fadd float %19, %21
  store float %add12, ptr %tmp2, align 4
  %22 = load ptr, ptr %dataptr, align 8
  %arrayidx13 = getelementptr inbounds float, ptr %22, i64 2
  %23 = load float, ptr %arrayidx13, align 4
  %24 = load ptr, ptr %dataptr, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %24, i64 5
  %25 = load float, ptr %arrayidx14, align 4
  %sub15 = fsub float %23, %25
  store float %sub15, ptr %tmp5, align 4
  %26 = load ptr, ptr %dataptr, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %26, i64 3
  %27 = load float, ptr %arrayidx16, align 4
  %28 = load ptr, ptr %dataptr, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %28, i64 4
  %29 = load float, ptr %arrayidx17, align 4
  %add18 = fadd float %27, %29
  store float %add18, ptr %tmp3, align 4
  %30 = load ptr, ptr %dataptr, align 8
  %arrayidx19 = getelementptr inbounds float, ptr %30, i64 3
  %31 = load float, ptr %arrayidx19, align 4
  %32 = load ptr, ptr %dataptr, align 8
  %arrayidx20 = getelementptr inbounds float, ptr %32, i64 4
  %33 = load float, ptr %arrayidx20, align 4
  %sub21 = fsub float %31, %33
  store float %sub21, ptr %tmp4, align 4
  %34 = load float, ptr %tmp0, align 4
  %35 = load float, ptr %tmp3, align 4
  %add22 = fadd float %34, %35
  store float %add22, ptr %tmp10, align 4
  %36 = load float, ptr %tmp0, align 4
  %37 = load float, ptr %tmp3, align 4
  %sub23 = fsub float %36, %37
  store float %sub23, ptr %tmp13, align 4
  %38 = load float, ptr %tmp1, align 4
  %39 = load float, ptr %tmp2, align 4
  %add24 = fadd float %38, %39
  store float %add24, ptr %tmp11, align 4
  %40 = load float, ptr %tmp1, align 4
  %41 = load float, ptr %tmp2, align 4
  %sub25 = fsub float %40, %41
  store float %sub25, ptr %tmp12, align 4
  %42 = load float, ptr %tmp10, align 4
  %43 = load float, ptr %tmp11, align 4
  %add26 = fadd float %42, %43
  %44 = load ptr, ptr %dataptr, align 8
  %arrayidx27 = getelementptr inbounds float, ptr %44, i64 0
  store float %add26, ptr %arrayidx27, align 4
  %45 = load float, ptr %tmp10, align 4
  %46 = load float, ptr %tmp11, align 4
  %sub28 = fsub float %45, %46
  %47 = load ptr, ptr %dataptr, align 8
  %arrayidx29 = getelementptr inbounds float, ptr %47, i64 4
  store float %sub28, ptr %arrayidx29, align 4
  %48 = load float, ptr %tmp12, align 4
  %49 = load float, ptr %tmp13, align 4
  %add30 = fadd float %48, %49
  %mul = fmul float %add30, 0x3FE6A09E60000000
  store float %mul, ptr %z1, align 4
  %50 = load float, ptr %tmp13, align 4
  %51 = load float, ptr %z1, align 4
  %add31 = fadd float %50, %51
  %52 = load ptr, ptr %dataptr, align 8
  %arrayidx32 = getelementptr inbounds float, ptr %52, i64 2
  store float %add31, ptr %arrayidx32, align 4
  %53 = load float, ptr %tmp13, align 4
  %54 = load float, ptr %z1, align 4
  %sub33 = fsub float %53, %54
  %55 = load ptr, ptr %dataptr, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %55, i64 6
  store float %sub33, ptr %arrayidx34, align 4
  %56 = load float, ptr %tmp4, align 4
  %57 = load float, ptr %tmp5, align 4
  %add35 = fadd float %56, %57
  store float %add35, ptr %tmp10, align 4
  %58 = load float, ptr %tmp5, align 4
  %59 = load float, ptr %tmp6, align 4
  %add36 = fadd float %58, %59
  store float %add36, ptr %tmp11, align 4
  %60 = load float, ptr %tmp6, align 4
  %61 = load float, ptr %tmp7, align 4
  %add37 = fadd float %60, %61
  store float %add37, ptr %tmp12, align 4
  %62 = load float, ptr %tmp10, align 4
  %63 = load float, ptr %tmp12, align 4
  %sub38 = fsub float %62, %63
  %mul39 = fmul float %sub38, 0x3FD87DE2A0000000
  store float %mul39, ptr %z5, align 4
  %64 = load float, ptr %tmp10, align 4
  %65 = load float, ptr %z5, align 4
  %66 = call float @llvm.fmuladd.f32(float 0x3FE1517A80000000, float %64, float %65)
  store float %66, ptr %z2, align 4
  %67 = load float, ptr %tmp12, align 4
  %68 = load float, ptr %z5, align 4
  %69 = call float @llvm.fmuladd.f32(float 0x3FF4E7AEA0000000, float %67, float %68)
  store float %69, ptr %z4, align 4
  %70 = load float, ptr %tmp11, align 4
  %mul42 = fmul float %70, 0x3FE6A09E60000000
  store float %mul42, ptr %z3, align 4
  %71 = load float, ptr %tmp7, align 4
  %72 = load float, ptr %z3, align 4
  %add43 = fadd float %71, %72
  store float %add43, ptr %z11, align 4
  %73 = load float, ptr %tmp7, align 4
  %74 = load float, ptr %z3, align 4
  %sub44 = fsub float %73, %74
  store float %sub44, ptr %z13, align 4
  %75 = load float, ptr %z13, align 4
  %76 = load float, ptr %z2, align 4
  %add45 = fadd float %75, %76
  %77 = load ptr, ptr %dataptr, align 8
  %arrayidx46 = getelementptr inbounds float, ptr %77, i64 5
  store float %add45, ptr %arrayidx46, align 4
  %78 = load float, ptr %z13, align 4
  %79 = load float, ptr %z2, align 4
  %sub47 = fsub float %78, %79
  %80 = load ptr, ptr %dataptr, align 8
  %arrayidx48 = getelementptr inbounds float, ptr %80, i64 3
  store float %sub47, ptr %arrayidx48, align 4
  %81 = load float, ptr %z11, align 4
  %82 = load float, ptr %z4, align 4
  %add49 = fadd float %81, %82
  %83 = load ptr, ptr %dataptr, align 8
  %arrayidx50 = getelementptr inbounds float, ptr %83, i64 1
  store float %add49, ptr %arrayidx50, align 4
  %84 = load float, ptr %z11, align 4
  %85 = load float, ptr %z4, align 4
  %sub51 = fsub float %84, %85
  %86 = load ptr, ptr %dataptr, align 8
  %arrayidx52 = getelementptr inbounds float, ptr %86, i64 7
  store float %sub51, ptr %arrayidx52, align 4
  %87 = load ptr, ptr %dataptr, align 8
  %add.ptr = getelementptr inbounds float, ptr %87, i64 8
  store ptr %add.ptr, ptr %dataptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %88 = load i32, ptr %ctr, align 4
  %dec = add nsw i32 %88, -1
  store i32 %dec, ptr %ctr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %89 = load ptr, ptr %data.addr, align 8
  store ptr %89, ptr %dataptr, align 8
  store i32 7, ptr %ctr, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc112, %for.end
  %90 = load i32, ptr %ctr, align 4
  %cmp54 = icmp sge i32 %90, 0
  br i1 %cmp54, label %for.body55, label %for.end114

for.body55:                                       ; preds = %for.cond53
  %91 = load ptr, ptr %dataptr, align 8
  %arrayidx56 = getelementptr inbounds float, ptr %91, i64 0
  %92 = load float, ptr %arrayidx56, align 4
  %93 = load ptr, ptr %dataptr, align 8
  %arrayidx57 = getelementptr inbounds float, ptr %93, i64 56
  %94 = load float, ptr %arrayidx57, align 4
  %add58 = fadd float %92, %94
  store float %add58, ptr %tmp0, align 4
  %95 = load ptr, ptr %dataptr, align 8
  %arrayidx59 = getelementptr inbounds float, ptr %95, i64 0
  %96 = load float, ptr %arrayidx59, align 4
  %97 = load ptr, ptr %dataptr, align 8
  %arrayidx60 = getelementptr inbounds float, ptr %97, i64 56
  %98 = load float, ptr %arrayidx60, align 4
  %sub61 = fsub float %96, %98
  store float %sub61, ptr %tmp7, align 4
  %99 = load ptr, ptr %dataptr, align 8
  %arrayidx62 = getelementptr inbounds float, ptr %99, i64 8
  %100 = load float, ptr %arrayidx62, align 4
  %101 = load ptr, ptr %dataptr, align 8
  %arrayidx63 = getelementptr inbounds float, ptr %101, i64 48
  %102 = load float, ptr %arrayidx63, align 4
  %add64 = fadd float %100, %102
  store float %add64, ptr %tmp1, align 4
  %103 = load ptr, ptr %dataptr, align 8
  %arrayidx65 = getelementptr inbounds float, ptr %103, i64 8
  %104 = load float, ptr %arrayidx65, align 4
  %105 = load ptr, ptr %dataptr, align 8
  %arrayidx66 = getelementptr inbounds float, ptr %105, i64 48
  %106 = load float, ptr %arrayidx66, align 4
  %sub67 = fsub float %104, %106
  store float %sub67, ptr %tmp6, align 4
  %107 = load ptr, ptr %dataptr, align 8
  %arrayidx68 = getelementptr inbounds float, ptr %107, i64 16
  %108 = load float, ptr %arrayidx68, align 4
  %109 = load ptr, ptr %dataptr, align 8
  %arrayidx69 = getelementptr inbounds float, ptr %109, i64 40
  %110 = load float, ptr %arrayidx69, align 4
  %add70 = fadd float %108, %110
  store float %add70, ptr %tmp2, align 4
  %111 = load ptr, ptr %dataptr, align 8
  %arrayidx71 = getelementptr inbounds float, ptr %111, i64 16
  %112 = load float, ptr %arrayidx71, align 4
  %113 = load ptr, ptr %dataptr, align 8
  %arrayidx72 = getelementptr inbounds float, ptr %113, i64 40
  %114 = load float, ptr %arrayidx72, align 4
  %sub73 = fsub float %112, %114
  store float %sub73, ptr %tmp5, align 4
  %115 = load ptr, ptr %dataptr, align 8
  %arrayidx74 = getelementptr inbounds float, ptr %115, i64 24
  %116 = load float, ptr %arrayidx74, align 4
  %117 = load ptr, ptr %dataptr, align 8
  %arrayidx75 = getelementptr inbounds float, ptr %117, i64 32
  %118 = load float, ptr %arrayidx75, align 4
  %add76 = fadd float %116, %118
  store float %add76, ptr %tmp3, align 4
  %119 = load ptr, ptr %dataptr, align 8
  %arrayidx77 = getelementptr inbounds float, ptr %119, i64 24
  %120 = load float, ptr %arrayidx77, align 4
  %121 = load ptr, ptr %dataptr, align 8
  %arrayidx78 = getelementptr inbounds float, ptr %121, i64 32
  %122 = load float, ptr %arrayidx78, align 4
  %sub79 = fsub float %120, %122
  store float %sub79, ptr %tmp4, align 4
  %123 = load float, ptr %tmp0, align 4
  %124 = load float, ptr %tmp3, align 4
  %add80 = fadd float %123, %124
  store float %add80, ptr %tmp10, align 4
  %125 = load float, ptr %tmp0, align 4
  %126 = load float, ptr %tmp3, align 4
  %sub81 = fsub float %125, %126
  store float %sub81, ptr %tmp13, align 4
  %127 = load float, ptr %tmp1, align 4
  %128 = load float, ptr %tmp2, align 4
  %add82 = fadd float %127, %128
  store float %add82, ptr %tmp11, align 4
  %129 = load float, ptr %tmp1, align 4
  %130 = load float, ptr %tmp2, align 4
  %sub83 = fsub float %129, %130
  store float %sub83, ptr %tmp12, align 4
  %131 = load float, ptr %tmp10, align 4
  %132 = load float, ptr %tmp11, align 4
  %add84 = fadd float %131, %132
  %133 = load ptr, ptr %dataptr, align 8
  %arrayidx85 = getelementptr inbounds float, ptr %133, i64 0
  store float %add84, ptr %arrayidx85, align 4
  %134 = load float, ptr %tmp10, align 4
  %135 = load float, ptr %tmp11, align 4
  %sub86 = fsub float %134, %135
  %136 = load ptr, ptr %dataptr, align 8
  %arrayidx87 = getelementptr inbounds float, ptr %136, i64 32
  store float %sub86, ptr %arrayidx87, align 4
  %137 = load float, ptr %tmp12, align 4
  %138 = load float, ptr %tmp13, align 4
  %add88 = fadd float %137, %138
  %mul89 = fmul float %add88, 0x3FE6A09E60000000
  store float %mul89, ptr %z1, align 4
  %139 = load float, ptr %tmp13, align 4
  %140 = load float, ptr %z1, align 4
  %add90 = fadd float %139, %140
  %141 = load ptr, ptr %dataptr, align 8
  %arrayidx91 = getelementptr inbounds float, ptr %141, i64 16
  store float %add90, ptr %arrayidx91, align 4
  %142 = load float, ptr %tmp13, align 4
  %143 = load float, ptr %z1, align 4
  %sub92 = fsub float %142, %143
  %144 = load ptr, ptr %dataptr, align 8
  %arrayidx93 = getelementptr inbounds float, ptr %144, i64 48
  store float %sub92, ptr %arrayidx93, align 4
  %145 = load float, ptr %tmp4, align 4
  %146 = load float, ptr %tmp5, align 4
  %add94 = fadd float %145, %146
  store float %add94, ptr %tmp10, align 4
  %147 = load float, ptr %tmp5, align 4
  %148 = load float, ptr %tmp6, align 4
  %add95 = fadd float %147, %148
  store float %add95, ptr %tmp11, align 4
  %149 = load float, ptr %tmp6, align 4
  %150 = load float, ptr %tmp7, align 4
  %add96 = fadd float %149, %150
  store float %add96, ptr %tmp12, align 4
  %151 = load float, ptr %tmp10, align 4
  %152 = load float, ptr %tmp12, align 4
  %sub97 = fsub float %151, %152
  %mul98 = fmul float %sub97, 0x3FD87DE2A0000000
  store float %mul98, ptr %z5, align 4
  %153 = load float, ptr %tmp10, align 4
  %154 = load float, ptr %z5, align 4
  %155 = call float @llvm.fmuladd.f32(float 0x3FE1517A80000000, float %153, float %154)
  store float %155, ptr %z2, align 4
  %156 = load float, ptr %tmp12, align 4
  %157 = load float, ptr %z5, align 4
  %158 = call float @llvm.fmuladd.f32(float 0x3FF4E7AEA0000000, float %156, float %157)
  store float %158, ptr %z4, align 4
  %159 = load float, ptr %tmp11, align 4
  %mul101 = fmul float %159, 0x3FE6A09E60000000
  store float %mul101, ptr %z3, align 4
  %160 = load float, ptr %tmp7, align 4
  %161 = load float, ptr %z3, align 4
  %add102 = fadd float %160, %161
  store float %add102, ptr %z11, align 4
  %162 = load float, ptr %tmp7, align 4
  %163 = load float, ptr %z3, align 4
  %sub103 = fsub float %162, %163
  store float %sub103, ptr %z13, align 4
  %164 = load float, ptr %z13, align 4
  %165 = load float, ptr %z2, align 4
  %add104 = fadd float %164, %165
  %166 = load ptr, ptr %dataptr, align 8
  %arrayidx105 = getelementptr inbounds float, ptr %166, i64 40
  store float %add104, ptr %arrayidx105, align 4
  %167 = load float, ptr %z13, align 4
  %168 = load float, ptr %z2, align 4
  %sub106 = fsub float %167, %168
  %169 = load ptr, ptr %dataptr, align 8
  %arrayidx107 = getelementptr inbounds float, ptr %169, i64 24
  store float %sub106, ptr %arrayidx107, align 4
  %170 = load float, ptr %z11, align 4
  %171 = load float, ptr %z4, align 4
  %add108 = fadd float %170, %171
  %172 = load ptr, ptr %dataptr, align 8
  %arrayidx109 = getelementptr inbounds float, ptr %172, i64 8
  store float %add108, ptr %arrayidx109, align 4
  %173 = load float, ptr %z11, align 4
  %174 = load float, ptr %z4, align 4
  %sub110 = fsub float %173, %174
  %175 = load ptr, ptr %dataptr, align 8
  %arrayidx111 = getelementptr inbounds float, ptr %175, i64 56
  store float %sub110, ptr %arrayidx111, align 4
  %176 = load ptr, ptr %dataptr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %176, i32 1
  store ptr %incdec.ptr, ptr %dataptr, align 8
  br label %for.inc112

for.inc112:                                       ; preds = %for.body55
  %177 = load i32, ptr %ctr, align 4
  %dec113 = add nsw i32 %177, -1
  store i32 %dec113, ptr %ctr, align 4
  br label %for.cond53, !llvm.loop !8

for.end114:                                       ; preds = %for.cond53
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
