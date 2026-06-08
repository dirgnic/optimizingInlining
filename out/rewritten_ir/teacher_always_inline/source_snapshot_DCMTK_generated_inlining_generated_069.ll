; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_069.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_069.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @image_069_entry(i32 noundef %x) #0 {
entry:
  %x.addr.i152 = alloca i32, align 4
  %s.i153 = alloca i32, align 4
  %mode.addr.i131 = alloca i32, align 4
  %t.i133 = alloca i32, align 4
  %retval.i116 = alloca i32, align 4
  %x.addr.i118 = alloca i32, align 4
  %x.addr.i45 = alloca i32, align 4
  %s.i46 = alloca i32, align 4
  %retval.i23 = alloca i32, align 4
  %x.addr.i25 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i14 = alloca i32, align 4
  %x.addr.i6 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i, align 4
  store i32 4, ptr %t.i, align 4
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i2 = mul nsw i32 %0, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %2 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %2, %mul.i2
  %add4 = add nsw i32 %add2, 38
  store i32 %add4, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 6, ptr %x.addr.i6, align 4
  store i32 26, ptr %s.i, align 4
  %3 = load i32, ptr %s.i, align 4
  %sub.i11 = add nsw i32 %3, -1
  store i32 %sub.i11, ptr %s.i, align 4
  %4 = load i32, ptr %x.addr.i6, align 4
  %and2.i = and i32 %4, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 11
  %add4.i = add nsw i32 %sub.i11, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %5 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %5, 3
  %6 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %6, -2
  %storemerge223 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge223, ptr %s.i, align 4
  %7 = load i32, ptr %x.addr.i6, align 4
  %and12.i = and i32 %7, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 12
  %add14.i = add nsw i32 %storemerge223, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %8 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %8, 0
  %9 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %9, 5
  %10 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %10, -3
  %storemerge224 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge224, ptr %s.i, align 4
  %11 = load i32, ptr %x.addr.i6, align 4
  %and22.i = and i32 %11, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 13
  %add24.i = add nsw i32 %storemerge224, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %12 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %12, 7
  %13 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %13, -4
  %storemerge225 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge225, ptr %s.i, align 4
  %14 = load i32, ptr %x.addr.i6, align 4
  %and32.i = and i32 %14, 7
  %mul33.i = mul nuw nsw i32 %and32.i, 14
  %add34.i = add nsw i32 %storemerge225, %mul33.i
  store i32 %add34.i, ptr %s.i, align 4
  %rem35.i = srem i32 %add34.i, 6
  %cmp36.i = icmp eq i32 %rem35.i, 0
  %15 = load i32, ptr %s.i, align 4
  %add40.i = add nsw i32 %15, 9
  %16 = load i32, ptr %s.i, align 4
  %sub38.i = add nsw i32 %16, -5
  %storemerge226 = select i1 %cmp36.i, i32 %sub38.i, i32 %add40.i
  store i32 %storemerge226, ptr %s.i, align 4
  %17 = load i32, ptr %x.addr.i6, align 4
  %and42.i = and i32 %17, 8
  %mul43.i = mul nuw nsw i32 %and42.i, 15
  %add44.i = add nsw i32 %storemerge226, %mul43.i
  store i32 %add44.i, ptr %s.i, align 4
  %rem45.i = srem i32 %add44.i, 7
  %cmp46.i = icmp eq i32 %rem45.i, 0
  %18 = load i32, ptr %s.i, align 4
  %add50.i = add nsw i32 %18, 11
  %19 = load i32, ptr %s.i, align 4
  %sub48.i = add nsw i32 %19, -6
  %storemerge227 = select i1 %cmp46.i, i32 %sub48.i, i32 %add50.i
  store i32 %storemerge227, ptr %s.i, align 4
  %20 = load i32, ptr %x.addr.i6, align 4
  %and52.i = shl i32 %20, 4
  %mul53.i = and i32 %and52.i, 144
  %add54.i = add nsw i32 %storemerge227, %mul53.i
  store i32 %add54.i, ptr %s.i, align 4
  %21 = and i32 %add54.i, 7
  %cmp56.i = icmp eq i32 %21, 0
  %22 = load i32, ptr %s.i, align 4
  %add60.i = add nsw i32 %22, 13
  %23 = load i32, ptr %s.i, align 4
  %sub58.i = add nsw i32 %23, -7
  %storemerge228 = select i1 %cmp56.i, i32 %sub58.i, i32 %add60.i
  store i32 %storemerge228, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %24 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %24, %storemerge228
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i14)
  store i32 7, ptr %x.addr.i14, align 4
  %25 = load i32, ptr %x.addr.i14, align 4
  %xor.i17 = xor i32 %25, 6
  store i32 %xor.i17, ptr %retval.i, align 4
  %26 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i14)
  %27 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %27, %26
  store i32 %add8, ptr %total, align 4
  %call9 = call noundef i32 @_ZL19image_069_recursivei(i32 noundef 1)
  %add10 = add nsw i32 %add8, %call9
  %add12 = add nsw i32 %add10, 33
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i25)
  store i32 10, ptr %x.addr.i25, align 4
  %28 = load i32, ptr %x.addr.i25, align 4
  %xor.i29 = xor i32 %28, 13
  store i32 %xor.i29, ptr %retval.i23, align 4
  %29 = load i32, ptr %retval.i23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i25)
  %30 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %30, %29
  %add16 = add nsw i32 %add14, 40
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i46)
  store i32 1, ptr %x.addr.i45, align 4
  store i32 11, ptr %s.i46, align 4
  %31 = load i32, ptr %s.i46, align 4
  %add1.i54 = add nsw i32 %31, 1
  store i32 %add1.i54, ptr %s.i46, align 4
  %32 = load i32, ptr %x.addr.i45, align 4
  %and2.i56 = and i32 %32, 4
  %mul3.i57 = mul nuw nsw i32 %and2.i56, 11
  %add4.i58 = add nsw i32 %add1.i54, %mul3.i57
  store i32 %add4.i58, ptr %s.i46, align 4
  %rem5.i59 = srem i32 %add4.i58, 3
  %cmp6.i60 = icmp eq i32 %rem5.i59, 0
  %33 = load i32, ptr %s.i46, align 4
  %add10.i64 = add nsw i32 %33, 3
  %34 = load i32, ptr %s.i46, align 4
  %sub8.i62 = add nsw i32 %34, -2
  %storemerge230 = select i1 %cmp6.i60, i32 %sub8.i62, i32 %add10.i64
  store i32 %storemerge230, ptr %s.i46, align 4
  %35 = load i32, ptr %x.addr.i45, align 4
  %and12.i66 = and i32 %35, 5
  %mul13.i67 = mul nuw nsw i32 %and12.i66, 12
  %add14.i68 = add nsw i32 %storemerge230, %mul13.i67
  store i32 %add14.i68, ptr %s.i46, align 4
  %36 = and i32 %add14.i68, 3
  %cmp16.i70 = icmp eq i32 %36, 0
  %37 = load i32, ptr %s.i46, align 4
  %add20.i74 = add nsw i32 %37, 5
  %38 = load i32, ptr %s.i46, align 4
  %sub18.i72 = add nsw i32 %38, -3
  %storemerge231 = select i1 %cmp16.i70, i32 %sub18.i72, i32 %add20.i74
  store i32 %storemerge231, ptr %s.i46, align 4
  %39 = load i32, ptr %x.addr.i45, align 4
  %and22.i76 = and i32 %39, 6
  %mul23.i77 = mul nuw nsw i32 %and22.i76, 13
  %add24.i78 = add nsw i32 %storemerge231, %mul23.i77
  store i32 %add24.i78, ptr %s.i46, align 4
  %rem25.i79 = srem i32 %add24.i78, 5
  %cmp26.i80 = icmp eq i32 %rem25.i79, 0
  %40 = load i32, ptr %s.i46, align 4
  %add30.i84 = add nsw i32 %40, 7
  %41 = load i32, ptr %s.i46, align 4
  %sub28.i82 = add nsw i32 %41, -4
  %storemerge232 = select i1 %cmp26.i80, i32 %sub28.i82, i32 %add30.i84
  store i32 %storemerge232, ptr %s.i46, align 4
  %42 = load i32, ptr %x.addr.i45, align 4
  %and32.i86 = and i32 %42, 7
  %mul33.i87 = mul nuw nsw i32 %and32.i86, 14
  %add34.i88 = add nsw i32 %storemerge232, %mul33.i87
  store i32 %add34.i88, ptr %s.i46, align 4
  %rem35.i89 = srem i32 %add34.i88, 6
  %cmp36.i90 = icmp eq i32 %rem35.i89, 0
  %43 = load i32, ptr %s.i46, align 4
  %add40.i94 = add nsw i32 %43, 9
  %44 = load i32, ptr %s.i46, align 4
  %sub38.i92 = add nsw i32 %44, -5
  %storemerge233 = select i1 %cmp36.i90, i32 %sub38.i92, i32 %add40.i94
  store i32 %storemerge233, ptr %s.i46, align 4
  %45 = load i32, ptr %x.addr.i45, align 4
  %and42.i96 = and i32 %45, 8
  %mul43.i97 = mul nuw nsw i32 %and42.i96, 15
  %add44.i98 = add nsw i32 %storemerge233, %mul43.i97
  store i32 %add44.i98, ptr %s.i46, align 4
  %rem45.i99 = srem i32 %add44.i98, 7
  %cmp46.i100 = icmp eq i32 %rem45.i99, 0
  %46 = load i32, ptr %s.i46, align 4
  %add50.i104 = add nsw i32 %46, 11
  %47 = load i32, ptr %s.i46, align 4
  %sub48.i102 = add nsw i32 %47, -6
  %storemerge234 = select i1 %cmp46.i100, i32 %sub48.i102, i32 %add50.i104
  store i32 %storemerge234, ptr %s.i46, align 4
  %48 = load i32, ptr %x.addr.i45, align 4
  %and52.i106 = shl i32 %48, 4
  %mul53.i107 = and i32 %and52.i106, 144
  %add54.i108 = add nsw i32 %storemerge234, %mul53.i107
  store i32 %add54.i108, ptr %s.i46, align 4
  %49 = and i32 %add54.i108, 7
  %cmp56.i110 = icmp eq i32 %49, 0
  %50 = load i32, ptr %s.i46, align 4
  %add60.i114 = add nsw i32 %50, 13
  %51 = load i32, ptr %s.i46, align 4
  %sub58.i112 = add nsw i32 %51, -7
  %storemerge235 = select i1 %cmp56.i110, i32 %sub58.i112, i32 %add60.i114
  store i32 %storemerge235, ptr %s.i46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i46)
  %52 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %52, %storemerge235
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i116)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i118)
  store i32 2, ptr %x.addr.i118, align 4
  %53 = load i32, ptr %x.addr.i118, align 4
  %xor.i122 = xor i32 %53, 6
  store i32 %xor.i122, ptr %retval.i116, align 4
  %54 = load i32, ptr %retval.i116, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i118)
  %55 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %55, %54
  store i32 %add20, ptr %total, align 4
  %call21 = call noundef i32 @_ZL19image_069_recursivei(i32 noundef 3)
  %add22 = add nsw i32 %add20, %call21
  %add24 = add nsw i32 %add22, 28
  store i32 %add24, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i131)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i133)
  store i32 1, ptr %mode.addr.i131, align 4
  store i32 9, ptr %t.i133, align 4
  %56 = load i32, ptr %t.i133, align 4
  %57 = load i32, ptr %mode.addr.i131, align 4
  %add1.i136 = add nsw i32 %57, 1
  %mul.i137 = mul nsw i32 %56, %add1.i136
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i131)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i133)
  %58 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %58, %mul.i137
  %add28 = add nsw i32 %add26, 64
  store i32 %add28, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i152)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i153)
  store i32 7, ptr %x.addr.i152, align 4
  store i32 37, ptr %s.i153, align 4
  %59 = load i32, ptr %s.i153, align 4
  %add1.i161 = add nsw i32 %59, 1
  store i32 %add1.i161, ptr %s.i153, align 4
  %60 = load i32, ptr %x.addr.i152, align 4
  %and2.i163 = and i32 %60, 4
  %mul3.i164 = mul nuw nsw i32 %and2.i163, 11
  %add4.i165 = add nsw i32 %add1.i161, %mul3.i164
  store i32 %add4.i165, ptr %s.i153, align 4
  %rem5.i166 = srem i32 %add4.i165, 3
  %cmp6.i167 = icmp eq i32 %rem5.i166, 0
  %61 = load i32, ptr %s.i153, align 4
  %add10.i171 = add nsw i32 %61, 3
  %62 = load i32, ptr %s.i153, align 4
  %sub8.i169 = add nsw i32 %62, -2
  %storemerge237 = select i1 %cmp6.i167, i32 %sub8.i169, i32 %add10.i171
  store i32 %storemerge237, ptr %s.i153, align 4
  %63 = load i32, ptr %x.addr.i152, align 4
  %and12.i173 = and i32 %63, 5
  %mul13.i174 = mul nuw nsw i32 %and12.i173, 12
  %add14.i175 = add nsw i32 %storemerge237, %mul13.i174
  store i32 %add14.i175, ptr %s.i153, align 4
  %64 = and i32 %add14.i175, 3
  %cmp16.i177 = icmp eq i32 %64, 0
  %65 = load i32, ptr %s.i153, align 4
  %add20.i181 = add nsw i32 %65, 5
  %66 = load i32, ptr %s.i153, align 4
  %sub18.i179 = add nsw i32 %66, -3
  %storemerge238 = select i1 %cmp16.i177, i32 %sub18.i179, i32 %add20.i181
  store i32 %storemerge238, ptr %s.i153, align 4
  %67 = load i32, ptr %x.addr.i152, align 4
  %and22.i183 = and i32 %67, 6
  %mul23.i184 = mul nuw nsw i32 %and22.i183, 13
  %add24.i185 = add nsw i32 %storemerge238, %mul23.i184
  store i32 %add24.i185, ptr %s.i153, align 4
  %rem25.i186 = srem i32 %add24.i185, 5
  %cmp26.i187 = icmp eq i32 %rem25.i186, 0
  %68 = load i32, ptr %s.i153, align 4
  %add30.i191 = add nsw i32 %68, 7
  %69 = load i32, ptr %s.i153, align 4
  %sub28.i189 = add nsw i32 %69, -4
  %storemerge239 = select i1 %cmp26.i187, i32 %sub28.i189, i32 %add30.i191
  store i32 %storemerge239, ptr %s.i153, align 4
  %70 = load i32, ptr %x.addr.i152, align 4
  %and32.i193 = and i32 %70, 7
  %mul33.i194 = mul nuw nsw i32 %and32.i193, 14
  %add34.i195 = add nsw i32 %storemerge239, %mul33.i194
  store i32 %add34.i195, ptr %s.i153, align 4
  %rem35.i196 = srem i32 %add34.i195, 6
  %cmp36.i197 = icmp eq i32 %rem35.i196, 0
  %71 = load i32, ptr %s.i153, align 4
  %add40.i201 = add nsw i32 %71, 9
  %72 = load i32, ptr %s.i153, align 4
  %sub38.i199 = add nsw i32 %72, -5
  %storemerge240 = select i1 %cmp36.i197, i32 %sub38.i199, i32 %add40.i201
  store i32 %storemerge240, ptr %s.i153, align 4
  %73 = load i32, ptr %x.addr.i152, align 4
  %and42.i203 = and i32 %73, 8
  %mul43.i204 = mul nuw nsw i32 %and42.i203, 15
  %add44.i205 = add nsw i32 %storemerge240, %mul43.i204
  store i32 %add44.i205, ptr %s.i153, align 4
  %rem45.i206 = srem i32 %add44.i205, 7
  %cmp46.i207 = icmp eq i32 %rem45.i206, 0
  %74 = load i32, ptr %s.i153, align 4
  %add50.i211 = add nsw i32 %74, 11
  %75 = load i32, ptr %s.i153, align 4
  %sub48.i209 = add nsw i32 %75, -6
  %storemerge241 = select i1 %cmp46.i207, i32 %sub48.i209, i32 %add50.i211
  store i32 %storemerge241, ptr %s.i153, align 4
  %76 = load i32, ptr %x.addr.i152, align 4
  %and52.i213 = shl i32 %76, 4
  %mul53.i214 = and i32 %and52.i213, 144
  %add54.i215 = add nsw i32 %storemerge241, %mul53.i214
  store i32 %add54.i215, ptr %s.i153, align 4
  %77 = and i32 %add54.i215, 7
  %cmp56.i217 = icmp eq i32 %77, 0
  %78 = load i32, ptr %s.i153, align 4
  %add60.i221 = add nsw i32 %78, 13
  %79 = load i32, ptr %s.i153, align 4
  %sub58.i219 = add nsw i32 %79, -7
  %storemerge242 = select i1 %cmp56.i217, i32 %sub58.i219, i32 %add60.i221
  store i32 %storemerge242, ptr %s.i153, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i152)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i153)
  %80 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %80, %storemerge242
  store i32 %add30, ptr %total, align 4
  ret i32 %add30
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL19image_069_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL19image_069_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
