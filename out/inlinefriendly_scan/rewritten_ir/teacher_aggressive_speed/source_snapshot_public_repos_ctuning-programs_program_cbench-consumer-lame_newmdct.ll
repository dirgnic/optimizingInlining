; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-lame_newmdct.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/newmdct.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }

@mdct_sub48.init = internal global i32 0, align 4
@sb_sample = internal global [2 x [2 x [18 x [32 x double]]]] zeroinitializer, align 8
@win = internal global [4 x [36 x double]] zeroinitializer, align 8
@ca = internal global [8 x double] zeroinitializer, align 8
@cs = internal global [8 x double] zeroinitializer, align 8
@mdct_init48.c = internal constant [8 x double] [double -6.000000e-01, double -5.350000e-01, double -3.300000e-01, double -1.850000e-01, double -9.500000e-02, double -4.100000e-02, double -1.420000e-02, double -3.700000e-03], align 8
@cos_l = internal global [244 x double] zeroinitializer, align 8
@mdct_init48.d3 = internal constant [4 x i32] [i32 1, i32 7, i32 10, i32 16], align 4
@mdct_init48.d9 = internal constant [2 x i32] [i32 4, i32 13], align 4
@all = internal constant [12 x i32] [i32 0, i32 2, i32 3, i32 5, i32 6, i32 8, i32 9, i32 11, i32 12, i32 14, i32 15, i32 17], align 4
@enwindow = internal global [256 x double] [double 0x3FA251E002C5BE4C, double 0x3F924E1FFC2760F6, double 0x3F69ADFFBE4CE877, double 0x3F642100110318CA, double 9.713170e-04, double 2.188680e-04, double 1.015660e-04, double 1.382800e-05, double 0x3FA24EFFFE8EA200, double 0x3F6BDDFFD89B6AB3, double 9.837150e-04, double 9.918200e-05, double -4.770000e-07, double 1.039510e-04, double 0x3F4F3FFF520DC771, double 0x3F67470033705EA7, double 1.239800e-05, double 1.912120e-04, double 0x3F62B3FFD4EA8624, double 0x3F9166FFFA87D736, double 0x3F9334FFF82E8B95, double 0x3F658D0036BA2EEE, double 2.474780e-04, double 1.478200e-05, double 0x3FA2467FFD4C82A1, double 0x3F6DD8000F4D029B, double 0x3F503FFFB08B08EE, double 9.632100e-05, double -4.770000e-07, double 1.058580e-04, double 0x3F4E7FFFB6FC4D65, double 0x3F64A8000EC3923C, double 1.144400e-05, double 1.654620e-04, double 0x3F6148FFC594EC83, double 0x3F907FDFF8E84D76, double 0x3F941B0002FC8112, double 0x3F66F7002FAE4C0C, double 2.770420e-04, double 1.668900e-05, double 0x3FA2385FFEFF602E, double 0x3F6F9BFFD8F150EE, double 9.951590e-04, double 9.346000e-05, double -4.770000e-07, double 1.072880e-04, double 9.026530e-04, double 0x3F61D0FFD9B6E277, double 1.001400e-05, double 1.401900e-04, double 0x3F5FBDFF99419ECB, double 0x3F8F32C00A8B630F, double 0x3F94FFC002FEA6D3, double 0x3F685CFFCF1C771E, double 3.075600e-04, double 1.812000e-05, double 3.543520e-02, double 0x3F7095FFF5DDD6FA, double 9.942050e-04, double 9.059900e-05, double -4.770000e-07, double 1.082420e-04, double 8.687970e-04, double 0x3F5D7FFFE1EF6B2A, double 0x3EE3000CEB1FF411, double 1.163480e-04, double 0x3F5CF2005A6548A7, double 0x3F8D680010E953B9, double 0x3F95E29FFB661AF0, double 3.141880e-03, double 3.390310e-04, double 1.955000e-05, double 0x3FA20B4002AD0C1B, double 4.215240e-03, double 9.894370e-04, double 8.726100e-05, double -4.770000e-07, double 1.087190e-04, double 0x3F4B2C0063FE014D, double 0x3F56EDFFEFB14AB3, double 8.106000e-06, double 9.393700e-05, double 0x3F5A2DFFA8D35995, double 0x3F8BA03FF357727A, double 0x3F96C320035E36F6, double 0x3F6B17002A4FE853, double 3.714560e-04, double 2.145800e-05, double 3.500700e-02, double 0x3F71D9800E83258F, double 9.808540e-04, double 8.392300e-05, double -4.770000e-07, double 1.087190e-04, double 7.839200e-04, double 9.713170e-04, double 7.629000e-06, double 7.295600e-05, double 0x3F577800309639AD, double 0x3F89DC800CEF6B77, double 0x3F97A0BFFE8830BC, double 0x3F6C6700031EDD2A, double 4.043580e-04, double 2.336500e-05, double 0x3FA1C82FFC6969F3, double 0x3F72567FFA9D50C4, double 9.689330e-04, double 8.058500e-05, double -9.540000e-07, double 1.082420e-04, double 7.319450e-04, double 5.159380e-04, double 6.676000e-06, double 5.292900e-05, double 0x3F54CDFF9F2972E2, double 0x3F881D80076614A1, double 0x3F987B2006DB9161, double 0x3F6DAD000EFFB365, double 4.382130e-04, double 2.527200e-05, double 0x3FA19E90011D1416, double 0x3F72BBFFFE860AFA, double 0x3F4F43FFAB93B97D, double 7.677100e-05, double -9.540000e-07, double 1.068120e-04, double 6.742480e-04, double 3.337900e-05, double 6.199000e-06, double 3.433200e-05, double 0x3F52340073D47447, double 0x3F86643FF91CEA7A, double 0x3F99519FFD2D5F2B, double 0x3F6EE6000ACDF57D, double 4.725460e-04, double 2.765700e-05, double 0x3FA16FC0016255B6, double 0x3F730AFFEBE6A112, double 9.355550e-04, double 0x3F13400155732CA6, double -9.540000e-07, double 1.053810e-04, double 6.103520e-04, double -4.758830e-04, double 5.245000e-06, double 1.716600e-05, double 9.565350e-04, double 0x3F84B1400FA0C315, double 2.552700e-02, double 0x3F70087FF0141377, double 5.073550e-04, double 3.004100e-05, double 0x3FA13BE000055E64, double 0x3F734380077742AD, double 0x3F4DFC010F4107FF, double 7.009500e-05, double -9.540000e-07, double 1.025200e-04, double 5.393030e-04, double 0xBF5093FF8462AE54, double 4.768000e-06, double 9.540000e-07, double 8.068080e-04, double 0x3F83057FFA3ED383, double 0x3F9AF14004E3FBA4, double 0x3F70957FEAAD18B9, double 5.421640e-04, double 3.242500e-05, double 0x3FA102EFFD062E20, double 0x3F73677FF48A898F, double 8.916850e-04, double 6.628000e-05, double -1.431000e-06, double 9.918200e-05, double 4.625320e-04, double 0xBF59C80067E27000, double 4.292000e-06, double -1.382800e-05, double 6.618500e-04, double 0x3F8161C00E7868C7, double 0x3F9BB93FFD1B1E3F, double 0x3F71197FEA014C42, double 5.769730e-04, double 3.480900e-05, double 0x3FA0C53FFF633BD3, double 0x3F7376FFF7D8A559, double 8.664130e-04, double 6.294300e-05, double -1.431000e-06, double 9.536700e-05, double 3.786090e-04, double 0xBF61B500163F206B, double 3.815000e-06, double -2.718000e-05, double 5.221370e-04, double 0x3F7F8D7FEC04B1A7, double 0x3F9C7BA000DE43BA, double 0x3F7193001136A2EE, double 6.117820e-04, double 3.767000e-05, double 0x3FA082CFFE85818A, double 0x3F73737FEE3BA130, double 0x3F4B7C00F1307329, double 5.960500e-05, double -1.907000e-06, double 9.012200e-05, double 2.884860e-04, double 0xBF66BA0038D75965, double 3.338000e-06, double -3.957700e-05, double 3.881450e-04, double 0x3F7C6A00018B2312, double 0x3F9D37C002307E44, double 0x3F72018010642EDC, double 6.465910e-04, double 4.053100e-05, double 0x3FA03BE000055E64, double 0x3F735DFFEE14F995, double 0x3F4A87FEF0132B89, double 5.579000e-05, double -1.907000e-06, double 8.440000e-05, double 1.916890e-04, double 0xBF6BF1FFFBE8072A, double 3.338000e-06, double -5.054500e-05, double 2.598760e-04, double 0x3F7959FFEA754312, double 0x3F9DED20070F1B84, double 0x3F72640015E0A32A, double 6.809230e-04, double 4.339200e-05, double 0x3F9FE13FFEFC278C, double 0x3F73370002956CCA, double 7.791520e-04, double 5.292900e-05, double -2.384000e-06, double 7.772400e-05, double 8.821500e-05, double 0xBF70ADFFE940063C, double 2.861000e-06, double -6.055800e-05, double 1.373290e-04, double 5.462170e-03, double 0x3F9E9B7FF8B3B071, double 0x3F72B87FF4E906D0, double 7.143020e-04, double 4.625300e-05, double 0x3F9F425FFF77A281, double 0x3F72FF7FFD6647B3, double 7.472040e-04, double 4.959100e-05, double 0x3F737B8017D72606, double 2.145800e-05, double 0xBF123FFC220291DE, double 2.384000e-06], align 8
@mm = internal global [16 x [31 x double]] zeroinitializer, align 8
@cos_s = internal global [6 x [6 x double]] zeroinitializer, align 8

; Function Attrs: nounwind ssp uwtable
define void @mdct_sub48(ptr noundef %gfp, ptr noundef %w0, ptr noundef %w1, ptr noundef %mdct_freq, ptr noundef %l3_side) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %w0.addr = alloca ptr, align 8
  %w1.addr = alloca ptr, align 8
  %mdct_freq.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %gr = alloca i32, align 4
  %k = alloca i32, align 4
  %ch = alloca i32, align 4
  %wk = alloca ptr, align 8
  %band = alloca i32, align 4
  %mdct_enc = alloca ptr, align 8
  %gi = alloca ptr, align 8
  %samp = alloca ptr, align 8
  %amp = alloca double, align 8
  %freq = alloca double, align 8
  %type = alloca i32, align 4
  %w1131 = alloca double, align 8
  %bu = alloca double, align 8
  %bd = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %w0, ptr %w0.addr, align 8
  store ptr %w1, ptr %w1.addr, align 8
  store ptr %mdct_freq, ptr %mdct_freq.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  %0 = load i32, ptr @mdct_sub48.init, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @mdct_init48()
  %1 = load i32, ptr @mdct_sub48.init, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @mdct_sub48.init, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %w0.addr, align 8
  store ptr %2, ptr %wk, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc416, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc417, %for.inc416 ]
  store i32 %storemerge, ptr %ch, align 4
  %3 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 46
  %4 = load i32, ptr %stereo, align 4
  %cmp1 = icmp slt i32 %storemerge, %4
  br i1 %cmp1, label %for.cond2, label %for.end418

for.cond2:                                        ; preds = %for.cond, %for.inc395
  %storemerge1 = phi i32 [ %inc396, %for.inc395 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %gr, align 4
  %5 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %5, i64 0, i32 45
  %6 = load i32, ptr %mode_gr, align 8
  %cmp3 = icmp slt i32 %storemerge1, %6
  br i1 %cmp3, label %for.body4, label %for.end397

for.body4:                                        ; preds = %for.cond2
  %7 = load ptr, ptr %mdct_freq.addr, align 8
  %8 = load i32, ptr %gr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, ptr %ch, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [2 x [576 x double]], ptr %7, i64 %idxprom, i64 %idxprom5
  store ptr %arrayidx6, ptr %mdct_enc, align 8
  %10 = load ptr, ptr %l3_side.addr, align 8
  %11 = load i32, ptr %gr, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds %struct.III_side_info_t, ptr %10, i64 0, i32 4, i64 %idxprom8
  %12 = load i32, ptr %ch, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx9, i64 0, i64 %idxprom11
  store ptr %arrayidx12, ptr %gi, align 8
  %idxprom13 = sext i32 %12 to i64
  %13 = load i32, ptr %gr, align 4
  %sub = sub nsw i32 1, %13
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom13, i64 %idxprom15
  store ptr %arrayidx16, ptr %samp, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.end, %for.body4
  %storemerge2 = phi i32 [ 0, %for.body4 ], [ %inc32, %for.end ]
  store i32 %storemerge2, ptr %k, align 4
  %cmp20 = icmp slt i32 %storemerge2, 9
  br i1 %cmp20, label %for.body21, label %for.end33

for.body21:                                       ; preds = %for.cond19
  %14 = load ptr, ptr %wk, align 8
  %15 = load ptr, ptr %samp, align 8
  call void @window_subband(ptr noundef %14, ptr noundef %15, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4))
  %add.ptr = getelementptr inbounds i16, ptr %14, i64 32
  %add.ptr22 = getelementptr inbounds double, ptr %15, i64 32
  call void @window_subband(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr22, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4))
  br label %for.cond23

for.cond23:                                       ; preds = %for.body25, %for.body21
  %storemerge9 = phi i32 [ 1, %for.body21 ], [ %add28, %for.body25 ]
  store i32 %storemerge9, ptr %band, align 4
  %cmp24 = icmp slt i32 %storemerge9, 32
  br i1 %cmp24, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond23
  %16 = load ptr, ptr %samp, align 8
  %17 = load i32, ptr %band, align 4
  %add = add nsw i32 %17, 32
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds double, ptr %16, i64 %idxprom26
  %18 = load double, ptr %arrayidx27, align 8
  %mul = fneg double %18
  store double %mul, ptr %arrayidx27, align 8
  %19 = load i32, ptr %band, align 4
  %add28 = add nsw i32 %19, 2
  br label %for.cond23, !llvm.loop !6

for.end:                                          ; preds = %for.cond23
  %20 = load ptr, ptr %samp, align 8
  %add.ptr29 = getelementptr inbounds double, ptr %20, i64 64
  store ptr %add.ptr29, ptr %samp, align 8
  %21 = load ptr, ptr %wk, align 8
  %add.ptr30 = getelementptr inbounds i16, ptr %21, i64 64
  store ptr %add.ptr30, ptr %wk, align 8
  %22 = load i32, ptr %k, align 4
  %inc32 = add nsw i32 %22, 1
  br label %for.cond19, !llvm.loop !8

for.end33:                                        ; preds = %for.cond19
  %23 = load ptr, ptr %gfp.addr, align 8
  %filter_type = getelementptr inbounds %struct.lame_global_flags, ptr %23, i64 0, i32 59
  %24 = load i32, ptr %filter_type, align 8
  %cmp34 = icmp eq i32 %24, 0
  br i1 %cmp34, label %if.then35, label %if.end112

if.then35:                                        ; preds = %for.end33
  %25 = load ptr, ptr %gfp.addr, align 8
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %25, i64 0, i32 58
  %26 = load i32, ptr %highpass_band, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc109, %if.then35
  %storemerge6.in = phi i32 [ %26, %if.then35 ], [ %69, %for.inc109 ]
  %storemerge6 = add nsw i32 %storemerge6.in, 1
  store i32 %storemerge6, ptr %band, align 4
  %27 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %27, i64 0, i32 57
  %28 = load i32, ptr %lowpass_band, align 8
  %cmp38 = icmp slt i32 %storemerge6, %28
  br i1 %cmp38, label %for.body39, label %if.end112

for.body39:                                       ; preds = %for.cond37
  %29 = load i32, ptr %band, align 4
  %conv = sitofp i32 %29 to double
  %div = fdiv double %conv, 3.100000e+01
  store double %div, ptr %freq, align 8
  %30 = load ptr, ptr %gfp.addr, align 8
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %30, i64 0, i32 53
  %31 = load float, ptr %lowpass1, align 8
  %conv40 = fpext float %31 to double
  %cmp41 = fcmp ogt double %div, %conv40
  br i1 %cmp41, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %for.body39
  %32 = load double, ptr %freq, align 8
  %33 = load ptr, ptr %gfp.addr, align 8
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %33, i64 0, i32 54
  %34 = load float, ptr %lowpass2, align 4
  %conv43 = fpext float %34 to double
  %cmp44 = fcmp olt double %32, %conv43
  br i1 %cmp44, label %if.then46, label %if.end73

if.then46:                                        ; preds = %land.lhs.true
  %35 = load ptr, ptr %gfp.addr, align 8
  %lowpass147 = getelementptr inbounds %struct.lame_global_flags, ptr %35, i64 0, i32 53
  %36 = load float, ptr %lowpass147, align 8
  %conv48 = fpext float %36 to double
  %37 = load double, ptr %freq, align 8
  %sub49 = fsub double %conv48, %37
  %mul50 = fmul double %sub49, 0x3FF921FB54442D18
  %38 = load ptr, ptr %gfp.addr, align 8
  %lowpass251 = getelementptr inbounds %struct.lame_global_flags, ptr %38, i64 0, i32 54
  %39 = load float, ptr %lowpass251, align 4
  %lowpass152 = getelementptr inbounds %struct.lame_global_flags, ptr %38, i64 0, i32 53
  %40 = load float, ptr %lowpass152, align 8
  %sub53 = fsub float %39, %40
  %conv54 = fpext float %sub53 to double
  %div55 = fdiv double %mul50, %conv54
  %41 = call double @llvm.cos.f64(double %div55)
  store double %41, ptr %amp, align 8
  br label %for.cond56

for.cond56:                                       ; preds = %for.body59, %if.then46
  %storemerge8 = phi i32 [ 0, %if.then46 ], [ %inc71, %for.body59 ]
  store i32 %storemerge8, ptr %k, align 4
  %cmp57 = icmp slt i32 %storemerge8, 18
  br i1 %cmp57, label %for.body59, label %if.end73

for.body59:                                       ; preds = %for.cond56
  %42 = load double, ptr %amp, align 8
  %43 = load i32, ptr %ch, align 4
  %idxprom60 = sext i32 %43 to i64
  %44 = load i32, ptr %gr, align 4
  %sub62 = sub nsw i32 1, %44
  %idxprom63 = sext i32 %sub62 to i64
  %45 = load i32, ptr %k, align 4
  %idxprom65 = sext i32 %45 to i64
  %46 = load i32, ptr %band, align 4
  %idxprom67 = sext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom60, i64 %idxprom63, i64 %idxprom65, i64 %idxprom67
  %47 = load double, ptr %arrayidx68, align 8
  %mul69 = fmul double %47, %42
  store double %mul69, ptr %arrayidx68, align 8
  %48 = load i32, ptr %k, align 4
  %inc71 = add nsw i32 %48, 1
  br label %for.cond56, !llvm.loop !9

if.end73:                                         ; preds = %for.cond56, %land.lhs.true, %for.body39
  %49 = load ptr, ptr %gfp.addr, align 8
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %49, i64 0, i32 55
  %50 = load float, ptr %highpass1, align 8
  %conv74 = fpext float %50 to double
  %51 = load double, ptr %freq, align 8
  %cmp75 = fcmp ogt double %51, %conv74
  br i1 %cmp75, label %land.lhs.true77, label %for.inc109

land.lhs.true77:                                  ; preds = %if.end73
  %52 = load double, ptr %freq, align 8
  %53 = load ptr, ptr %gfp.addr, align 8
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %53, i64 0, i32 56
  %54 = load float, ptr %highpass2, align 4
  %conv78 = fpext float %54 to double
  %cmp79 = fcmp olt double %52, %conv78
  br i1 %cmp79, label %if.then81, label %for.inc109

if.then81:                                        ; preds = %land.lhs.true77
  %55 = load ptr, ptr %gfp.addr, align 8
  %highpass282 = getelementptr inbounds %struct.lame_global_flags, ptr %55, i64 0, i32 56
  %56 = load float, ptr %highpass282, align 4
  %conv83 = fpext float %56 to double
  %57 = load double, ptr %freq, align 8
  %sub84 = fsub double %conv83, %57
  %mul85 = fmul double %sub84, 0x3FF921FB54442D18
  %58 = load ptr, ptr %gfp.addr, align 8
  %highpass286 = getelementptr inbounds %struct.lame_global_flags, ptr %58, i64 0, i32 56
  %59 = load float, ptr %highpass286, align 4
  %highpass187 = getelementptr inbounds %struct.lame_global_flags, ptr %58, i64 0, i32 55
  %60 = load float, ptr %highpass187, align 8
  %sub88 = fsub float %59, %60
  %conv89 = fpext float %sub88 to double
  %div90 = fdiv double %mul85, %conv89
  %61 = call double @llvm.cos.f64(double %div90)
  store double %61, ptr %amp, align 8
  br label %for.cond91

for.cond91:                                       ; preds = %for.body94, %if.then81
  %storemerge7 = phi i32 [ 0, %if.then81 ], [ %inc106, %for.body94 ]
  store i32 %storemerge7, ptr %k, align 4
  %cmp92 = icmp slt i32 %storemerge7, 18
  br i1 %cmp92, label %for.body94, label %for.inc109

for.body94:                                       ; preds = %for.cond91
  %62 = load double, ptr %amp, align 8
  %63 = load i32, ptr %ch, align 4
  %idxprom95 = sext i32 %63 to i64
  %64 = load i32, ptr %gr, align 4
  %sub97 = sub nsw i32 1, %64
  %idxprom98 = sext i32 %sub97 to i64
  %65 = load i32, ptr %k, align 4
  %idxprom100 = sext i32 %65 to i64
  %66 = load i32, ptr %band, align 4
  %idxprom102 = sext i32 %66 to i64
  %arrayidx103 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom95, i64 %idxprom98, i64 %idxprom100, i64 %idxprom102
  %67 = load double, ptr %arrayidx103, align 8
  %mul104 = fmul double %67, %62
  store double %mul104, ptr %arrayidx103, align 8
  %68 = load i32, ptr %k, align 4
  %inc106 = add nsw i32 %68, 1
  br label %for.cond91, !llvm.loop !10

for.inc109:                                       ; preds = %if.end73, %land.lhs.true77, %for.cond91
  %69 = load i32, ptr %band, align 4
  br label %for.cond37, !llvm.loop !11

if.end112:                                        ; preds = %for.cond37, %for.end33
  store i32 0, ptr %band, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc391, %if.end112
  %70 = load i32, ptr %band, align 4
  %cmp114 = icmp slt i32 %70, 32
  br i1 %cmp114, label %for.body116, label %for.inc395

for.body116:                                      ; preds = %for.cond113
  %71 = load ptr, ptr %gi, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %71, i64 0, i32 6
  %72 = load i32, ptr %block_type, align 8
  store i32 %72, ptr %type, align 4
  %73 = load i32, ptr %band, align 4
  %74 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band117 = getelementptr inbounds %struct.lame_global_flags, ptr %74, i64 0, i32 57
  %75 = load i32, ptr %lowpass_band117, align 8
  %cmp118.not = icmp slt i32 %73, %75
  br i1 %cmp118.not, label %lor.lhs.false, label %if.then123

lor.lhs.false:                                    ; preds = %for.body116
  %76 = load i32, ptr %band, align 4
  %77 = load ptr, ptr %gfp.addr, align 8
  %highpass_band120 = getelementptr inbounds %struct.lame_global_flags, ptr %77, i64 0, i32 58
  %78 = load i32, ptr %highpass_band120, align 4
  %cmp121.not = icmp sgt i32 %76, %78
  br i1 %cmp121.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %lor.lhs.false, %for.body116
  %79 = load ptr, ptr %mdct_enc, align 8
  %80 = call i64 @llvm.objectsize.i64.p0(ptr %79, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %79, i32 noundef 0, i64 noundef 144, i64 noundef %80) #4
  br label %if.end347

if.else:                                          ; preds = %lor.lhs.false
  %81 = load i32, ptr %type, align 4
  %cmp124 = icmp eq i32 %81, 2
  br i1 %cmp124, label %for.cond127, label %for.cond274

for.cond127:                                      ; preds = %if.else, %for.body130
  %storemerge5 = phi i32 [ %dec, %for.body130 ], [ 2, %if.else ]
  store i32 %storemerge5, ptr %k, align 4
  %cmp128 = icmp sgt i32 %storemerge5, -1
  br i1 %cmp128, label %for.body130, label %for.end272

for.body130:                                      ; preds = %for.cond127
  %82 = load i32, ptr %k, align 4
  %idxprom132 = sext i32 %82 to i64
  %arrayidx133 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 2, i64 %idxprom132
  %83 = load double, ptr %arrayidx133, align 8
  store double %83, ptr %w1131, align 8
  %84 = load i32, ptr %ch, align 4
  %idxprom134 = sext i32 %84 to i64
  %85 = load i32, ptr %gr, align 4
  %idxprom136 = sext i32 %85 to i64
  %86 = load i32, ptr %k, align 4
  %add138 = add nsw i32 %86, 6
  %idxprom139 = sext i32 %add138 to i64
  %87 = load i32, ptr %band, align 4
  %idxprom141 = sext i32 %87 to i64
  %arrayidx142 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom134, i64 %idxprom136, i64 %idxprom139, i64 %idxprom141
  %88 = load double, ptr %arrayidx142, align 8
  %89 = load double, ptr %w1131, align 8
  %90 = load i32, ptr %ch, align 4
  %idxprom144 = sext i32 %90 to i64
  %91 = load i32, ptr %gr, align 4
  %idxprom146 = sext i32 %91 to i64
  %92 = load i32, ptr %k, align 4
  %sub148 = sub nsw i32 11, %92
  %idxprom149 = sext i32 %sub148 to i64
  %93 = load i32, ptr %band, align 4
  %idxprom151 = sext i32 %93 to i64
  %arrayidx152 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom144, i64 %idxprom146, i64 %idxprom149, i64 %idxprom151
  %94 = load double, ptr %arrayidx152, align 8
  %neg = fneg double %94
  %95 = call double @llvm.fmuladd.f64(double %88, double %89, double %neg)
  %96 = load i32, ptr %k, align 4
  %idxprom153 = sext i32 %96 to i64
  %arrayidx154 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom153
  store double %95, ptr %arrayidx154, align 8
  %97 = load i32, ptr %ch, align 4
  %idxprom155 = sext i32 %97 to i64
  %98 = load i32, ptr %gr, align 4
  %idxprom157 = sext i32 %98 to i64
  %99 = load i32, ptr %k, align 4
  %add159 = add nsw i32 %99, 12
  %idxprom160 = sext i32 %add159 to i64
  %100 = load i32, ptr %band, align 4
  %idxprom162 = sext i32 %100 to i64
  %arrayidx163 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom155, i64 %idxprom157, i64 %idxprom160, i64 %idxprom162
  %101 = load double, ptr %arrayidx163, align 8
  %102 = load i32, ptr %ch, align 4
  %idxprom164 = sext i32 %102 to i64
  %103 = load i32, ptr %gr, align 4
  %idxprom166 = sext i32 %103 to i64
  %104 = load i32, ptr %k, align 4
  %sub168 = sub nsw i32 17, %104
  %idxprom169 = sext i32 %sub168 to i64
  %105 = load i32, ptr %band, align 4
  %idxprom171 = sext i32 %105 to i64
  %arrayidx172 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom164, i64 %idxprom166, i64 %idxprom169, i64 %idxprom171
  %106 = load double, ptr %arrayidx172, align 8
  %107 = load double, ptr %w1131, align 8
  %108 = call double @llvm.fmuladd.f64(double %106, double %107, double %101)
  %109 = load i32, ptr %k, align 4
  %add174 = add nsw i32 %109, 3
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom175
  store double %108, ptr %arrayidx176, align 8
  %110 = load i32, ptr %ch, align 4
  %idxprom177 = sext i32 %110 to i64
  %111 = load i32, ptr %gr, align 4
  %idxprom179 = sext i32 %111 to i64
  %112 = load i32, ptr %k, align 4
  %add181 = add nsw i32 %112, 12
  %idxprom182 = sext i32 %add181 to i64
  %113 = load i32, ptr %band, align 4
  %idxprom184 = sext i32 %113 to i64
  %arrayidx185 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom177, i64 %idxprom179, i64 %idxprom182, i64 %idxprom184
  %114 = load double, ptr %arrayidx185, align 8
  %115 = load double, ptr %w1131, align 8
  %116 = load i32, ptr %ch, align 4
  %idxprom187 = sext i32 %116 to i64
  %117 = load i32, ptr %gr, align 4
  %idxprom189 = sext i32 %117 to i64
  %118 = load i32, ptr %k, align 4
  %sub191 = sub nsw i32 17, %118
  %idxprom192 = sext i32 %sub191 to i64
  %119 = load i32, ptr %band, align 4
  %idxprom194 = sext i32 %119 to i64
  %arrayidx195 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom187, i64 %idxprom189, i64 %idxprom192, i64 %idxprom194
  %120 = load double, ptr %arrayidx195, align 8
  %neg196 = fneg double %120
  %121 = call double @llvm.fmuladd.f64(double %114, double %115, double %neg196)
  %122 = load i32, ptr %k, align 4
  %add197 = add nsw i32 %122, 6
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom198
  store double %121, ptr %arrayidx199, align 8
  %123 = load i32, ptr %ch, align 4
  %idxprom200 = sext i32 %123 to i64
  %124 = load i32, ptr %gr, align 4
  %sub202 = sub nsw i32 1, %124
  %idxprom203 = sext i32 %sub202 to i64
  %125 = load i32, ptr %k, align 4
  %idxprom205 = sext i32 %125 to i64
  %126 = load i32, ptr %band, align 4
  %idxprom207 = sext i32 %126 to i64
  %arrayidx208 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom200, i64 %idxprom203, i64 %idxprom205, i64 %idxprom207
  %127 = load double, ptr %arrayidx208, align 8
  %128 = load i32, ptr %ch, align 4
  %idxprom209 = sext i32 %128 to i64
  %129 = load i32, ptr %gr, align 4
  %sub211 = sub nsw i32 1, %129
  %idxprom212 = sext i32 %sub211 to i64
  %130 = load i32, ptr %k, align 4
  %sub214 = sub nsw i32 5, %130
  %idxprom215 = sext i32 %sub214 to i64
  %131 = load i32, ptr %band, align 4
  %idxprom217 = sext i32 %131 to i64
  %arrayidx218 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom209, i64 %idxprom212, i64 %idxprom215, i64 %idxprom217
  %132 = load double, ptr %arrayidx218, align 8
  %133 = load double, ptr %w1131, align 8
  %134 = call double @llvm.fmuladd.f64(double %132, double %133, double %127)
  %135 = load i32, ptr %k, align 4
  %add220 = add nsw i32 %135, 9
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom221
  store double %134, ptr %arrayidx222, align 8
  %136 = load i32, ptr %ch, align 4
  %idxprom223 = sext i32 %136 to i64
  %137 = load i32, ptr %gr, align 4
  %sub225 = sub nsw i32 1, %137
  %idxprom226 = sext i32 %sub225 to i64
  %138 = load i32, ptr %k, align 4
  %idxprom228 = sext i32 %138 to i64
  %139 = load i32, ptr %band, align 4
  %idxprom230 = sext i32 %139 to i64
  %arrayidx231 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom223, i64 %idxprom226, i64 %idxprom228, i64 %idxprom230
  %140 = load double, ptr %arrayidx231, align 8
  %141 = load double, ptr %w1131, align 8
  %142 = load i32, ptr %ch, align 4
  %idxprom233 = sext i32 %142 to i64
  %143 = load i32, ptr %gr, align 4
  %sub235 = sub nsw i32 1, %143
  %idxprom236 = sext i32 %sub235 to i64
  %144 = load i32, ptr %k, align 4
  %sub238 = sub nsw i32 5, %144
  %idxprom239 = sext i32 %sub238 to i64
  %145 = load i32, ptr %band, align 4
  %idxprom241 = sext i32 %145 to i64
  %arrayidx242 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom233, i64 %idxprom236, i64 %idxprom239, i64 %idxprom241
  %146 = load double, ptr %arrayidx242, align 8
  %neg243 = fneg double %146
  %147 = call double @llvm.fmuladd.f64(double %140, double %141, double %neg243)
  %148 = load i32, ptr %k, align 4
  %add244 = add nsw i32 %148, 12
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom245
  store double %147, ptr %arrayidx246, align 8
  %149 = load i32, ptr %ch, align 4
  %idxprom247 = sext i32 %149 to i64
  %150 = load i32, ptr %gr, align 4
  %sub249 = sub nsw i32 1, %150
  %idxprom250 = sext i32 %sub249 to i64
  %151 = load i32, ptr %k, align 4
  %add252 = add nsw i32 %151, 6
  %idxprom253 = sext i32 %add252 to i64
  %152 = load i32, ptr %band, align 4
  %idxprom255 = sext i32 %152 to i64
  %arrayidx256 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom247, i64 %idxprom250, i64 %idxprom253, i64 %idxprom255
  %153 = load double, ptr %arrayidx256, align 8
  %154 = load i32, ptr %ch, align 4
  %idxprom257 = sext i32 %154 to i64
  %155 = load i32, ptr %gr, align 4
  %sub259 = sub nsw i32 1, %155
  %idxprom260 = sext i32 %sub259 to i64
  %156 = load i32, ptr %k, align 4
  %sub262 = sub nsw i32 11, %156
  %idxprom263 = sext i32 %sub262 to i64
  %157 = load i32, ptr %band, align 4
  %idxprom265 = sext i32 %157 to i64
  %arrayidx266 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom257, i64 %idxprom260, i64 %idxprom263, i64 %idxprom265
  %158 = load double, ptr %arrayidx266, align 8
  %159 = load double, ptr %w1131, align 8
  %160 = call double @llvm.fmuladd.f64(double %158, double %159, double %153)
  %161 = load i32, ptr %k, align 4
  %add268 = add nsw i32 %161, 15
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom269
  store double %160, ptr %arrayidx270, align 8
  %162 = load i32, ptr %k, align 4
  %dec = add nsw i32 %162, -1
  br label %for.cond127, !llvm.loop !12

for.end272:                                       ; preds = %for.cond127
  %163 = load ptr, ptr %mdct_enc, align 8
  call void @mdct_short(ptr noundef %163, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4))
  br label %if.end347

for.cond274:                                      ; preds = %if.else, %for.body277
  %storemerge3 = phi i32 [ %dec344, %for.body277 ], [ 8, %if.else ]
  store i32 %storemerge3, ptr %k, align 4
  %cmp275 = icmp sgt i32 %storemerge3, -1
  br i1 %cmp275, label %for.body277, label %for.end345

for.body277:                                      ; preds = %for.cond274
  %164 = load i32, ptr %type, align 4
  %idxprom278 = sext i32 %164 to i64
  %165 = load i32, ptr %k, align 4
  %idxprom280 = sext i32 %165 to i64
  %arrayidx281 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom278, i64 %idxprom280
  %166 = load double, ptr %arrayidx281, align 8
  %167 = load i32, ptr %ch, align 4
  %idxprom282 = sext i32 %167 to i64
  %168 = load i32, ptr %gr, align 4
  %idxprom284 = sext i32 %168 to i64
  %169 = load i32, ptr %k, align 4
  %idxprom286 = sext i32 %169 to i64
  %170 = load i32, ptr %band, align 4
  %idxprom288 = sext i32 %170 to i64
  %arrayidx289 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom282, i64 %idxprom284, i64 %idxprom286, i64 %idxprom288
  %171 = load double, ptr %arrayidx289, align 8
  %172 = load i32, ptr %type, align 4
  %idxprom291 = sext i32 %172 to i64
  %173 = load i32, ptr %k, align 4
  %add293 = add nsw i32 %173, 9
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom291, i64 %idxprom294
  %174 = load double, ptr %arrayidx295, align 8
  %175 = load i32, ptr %ch, align 4
  %idxprom296 = sext i32 %175 to i64
  %176 = load i32, ptr %gr, align 4
  %idxprom298 = sext i32 %176 to i64
  %177 = load i32, ptr %k, align 4
  %sub300 = sub nsw i32 17, %177
  %idxprom301 = sext i32 %sub300 to i64
  %178 = load i32, ptr %band, align 4
  %idxprom303 = sext i32 %178 to i64
  %arrayidx304 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom296, i64 %idxprom298, i64 %idxprom301, i64 %idxprom303
  %179 = load double, ptr %arrayidx304, align 8
  %180 = fneg double %174
  %neg306 = fmul double %179, %180
  %181 = call double @llvm.fmuladd.f64(double %166, double %171, double %neg306)
  %182 = load i32, ptr %k, align 4
  %idxprom307 = sext i32 %182 to i64
  %arrayidx308 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom307
  store double %181, ptr %arrayidx308, align 8
  %183 = load i32, ptr %type, align 4
  %idxprom309 = sext i32 %183 to i64
  %add311 = add nsw i32 %182, 18
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom309, i64 %idxprom312
  %184 = load double, ptr %arrayidx313, align 8
  %185 = load i32, ptr %ch, align 4
  %idxprom314 = sext i32 %185 to i64
  %186 = load i32, ptr %gr, align 4
  %sub316 = sub nsw i32 1, %186
  %idxprom317 = sext i32 %sub316 to i64
  %187 = load i32, ptr %k, align 4
  %idxprom319 = sext i32 %187 to i64
  %188 = load i32, ptr %band, align 4
  %idxprom321 = sext i32 %188 to i64
  %arrayidx322 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom314, i64 %idxprom317, i64 %idxprom319, i64 %idxprom321
  %189 = load double, ptr %arrayidx322, align 8
  %190 = load i32, ptr %type, align 4
  %idxprom324 = sext i32 %190 to i64
  %191 = load i32, ptr %k, align 4
  %add326 = add nsw i32 %191, 27
  %idxprom327 = sext i32 %add326 to i64
  %arrayidx328 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom324, i64 %idxprom327
  %192 = load double, ptr %arrayidx328, align 8
  %193 = load i32, ptr %ch, align 4
  %idxprom329 = sext i32 %193 to i64
  %194 = load i32, ptr %gr, align 4
  %sub331 = sub nsw i32 1, %194
  %idxprom332 = sext i32 %sub331 to i64
  %195 = load i32, ptr %k, align 4
  %sub334 = sub nsw i32 17, %195
  %idxprom335 = sext i32 %sub334 to i64
  %196 = load i32, ptr %band, align 4
  %idxprom337 = sext i32 %196 to i64
  %arrayidx338 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom329, i64 %idxprom332, i64 %idxprom335, i64 %idxprom337
  %197 = load double, ptr %arrayidx338, align 8
  %mul339 = fmul double %192, %197
  %198 = call double @llvm.fmuladd.f64(double %184, double %189, double %mul339)
  %199 = load i32, ptr %k, align 4
  %add340 = add nsw i32 %199, 9
  %idxprom341 = sext i32 %add340 to i64
  %arrayidx342 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom341
  store double %198, ptr %arrayidx342, align 8
  %200 = load i32, ptr %k, align 4
  %dec344 = add nsw i32 %200, -1
  br label %for.cond274, !llvm.loop !13

for.end345:                                       ; preds = %for.cond274
  %201 = load ptr, ptr %mdct_enc, align 8
  call void @mdct_long(ptr noundef %201, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4))
  br label %if.end347

if.end347:                                        ; preds = %for.end272, %for.end345, %if.then123
  %202 = load i32, ptr %type, align 4
  %cmp348.not = icmp eq i32 %202, 2
  %203 = load i32, ptr %band, align 4
  %cmp351 = icmp eq i32 %203, 0
  %or.cond = select i1 %cmp348.not, i1 true, i1 %cmp351
  br i1 %or.cond, label %for.inc391, label %for.cond355

for.cond355:                                      ; preds = %if.end347, %for.body358
  %storemerge4 = phi i32 [ %dec388, %for.body358 ], [ 7, %if.end347 ]
  store i32 %storemerge4, ptr %k, align 4
  %cmp356 = icmp sgt i32 %storemerge4, -1
  br i1 %cmp356, label %for.body358, label %for.inc391

for.body358:                                      ; preds = %for.cond355
  %204 = load ptr, ptr %mdct_enc, align 8
  %205 = load i32, ptr %k, align 4
  %idxprom359 = sext i32 %205 to i64
  %arrayidx360 = getelementptr inbounds double, ptr %204, i64 %idxprom359
  %206 = load double, ptr %arrayidx360, align 8
  %idxprom361 = sext i32 %205 to i64
  %arrayidx362 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %idxprom361
  %207 = load double, ptr %arrayidx362, align 8
  %208 = load ptr, ptr %mdct_enc, align 8
  %209 = load i32, ptr %k, align 4
  %sub364 = xor i32 %209, -1
  %idxprom365 = sext i32 %sub364 to i64
  %arrayidx366 = getelementptr inbounds double, ptr %208, i64 %idxprom365
  %210 = load double, ptr %arrayidx366, align 8
  %idxprom367 = sext i32 %209 to i64
  %arrayidx368 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %idxprom367
  %211 = load double, ptr %arrayidx368, align 8
  %mul369 = fmul double %210, %211
  %212 = call double @llvm.fmuladd.f64(double %206, double %207, double %mul369)
  store double %212, ptr %bu, align 8
  %213 = load ptr, ptr %mdct_enc, align 8
  %214 = load i32, ptr %k, align 4
  %idxprom370 = sext i32 %214 to i64
  %arrayidx371 = getelementptr inbounds double, ptr %213, i64 %idxprom370
  %215 = load double, ptr %arrayidx371, align 8
  %idxprom372 = sext i32 %214 to i64
  %arrayidx373 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %idxprom372
  %216 = load double, ptr %arrayidx373, align 8
  %217 = load ptr, ptr %mdct_enc, align 8
  %218 = load i32, ptr %k, align 4
  %sub375 = xor i32 %218, -1
  %idxprom376 = sext i32 %sub375 to i64
  %arrayidx377 = getelementptr inbounds double, ptr %217, i64 %idxprom376
  %219 = load double, ptr %arrayidx377, align 8
  %idxprom378 = sext i32 %218 to i64
  %arrayidx379 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %idxprom378
  %220 = load double, ptr %arrayidx379, align 8
  %221 = fneg double %219
  %neg381 = fmul double %220, %221
  %222 = call double @llvm.fmuladd.f64(double %215, double %216, double %neg381)
  store double %222, ptr %bd, align 8
  %223 = load double, ptr %bu, align 8
  %224 = load ptr, ptr %mdct_enc, align 8
  %225 = load i32, ptr %k, align 4
  %sub382 = xor i32 %225, -1
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds double, ptr %224, i64 %idxprom383
  store double %223, ptr %arrayidx384, align 8
  %226 = load double, ptr %bd, align 8
  %227 = load ptr, ptr %mdct_enc, align 8
  %228 = load i32, ptr %k, align 4
  %idxprom385 = sext i32 %228 to i64
  %arrayidx386 = getelementptr inbounds double, ptr %227, i64 %idxprom385
  store double %226, ptr %arrayidx386, align 8
  %229 = load i32, ptr %k, align 4
  %dec388 = add nsw i32 %229, -1
  br label %for.cond355, !llvm.loop !14

for.inc391:                                       ; preds = %if.end347, %for.cond355
  %230 = load i32, ptr %band, align 4
  %inc392 = add nsw i32 %230, 1
  store i32 %inc392, ptr %band, align 4
  %231 = load ptr, ptr %mdct_enc, align 8
  %add.ptr393 = getelementptr inbounds double, ptr %231, i64 18
  store ptr %add.ptr393, ptr %mdct_enc, align 8
  br label %for.cond113, !llvm.loop !15

for.inc395:                                       ; preds = %for.cond113
  %232 = load i32, ptr %gr, align 4
  %inc396 = add nsw i32 %232, 1
  br label %for.cond2, !llvm.loop !16

for.end397:                                       ; preds = %for.cond2
  %233 = load ptr, ptr %w1.addr, align 8
  store ptr %233, ptr %wk, align 8
  %234 = load ptr, ptr %gfp.addr, align 8
  %mode_gr398 = getelementptr inbounds %struct.lame_global_flags, ptr %234, i64 0, i32 45
  %235 = load i32, ptr %mode_gr398, align 8
  %cmp399 = icmp eq i32 %235, 1
  br i1 %cmp399, label %if.then401, label %for.inc416

if.then401:                                       ; preds = %for.end397
  %236 = load i32, ptr %ch, align 4
  %idxprom402 = sext i32 %236 to i64
  %arrayidx403 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom402
  %idxprom406 = sext i32 %236 to i64
  %arrayidx408 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom406, i64 1
  %idxprom410 = sext i32 %236 to i64
  %arrayidx411 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom410
  %237 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx411, i1 false, i1 true, i1 false)
  %call414 = call ptr @__memcpy_chk(ptr noundef nonnull %arrayidx403, ptr noundef nonnull %arrayidx408, i64 noundef 4608, i64 noundef %237) #4
  br label %for.inc416

for.inc416:                                       ; preds = %for.end397, %if.then401
  %238 = load i32, ptr %ch, align 4
  %inc417 = add nsw i32 %238, 1
  br label %for.cond, !llvm.loop !17

for.end418:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @mdct_init48() #0 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %sq = alloca double, align 8
  %max = alloca double, align 8
  %cos_l0 = alloca ptr, align 8
  %j = alloca i32, align 4
  %wp = alloca ptr, align 8
  %wr = alloca ptr, align 8
  %mmax = alloca [31 x double], align 8
  %w = alloca double, align 8
  %w192 = alloca double, align 8
  %a = alloca double, align 8
  %w2 = alloca double, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %k, align 4
  %cmp = icmp slt i32 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.cond10

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %k, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x double], ptr @mdct_init48.c, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8
  %idxprom1 = sext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds [8 x double], ptr @mdct_init48.c, i64 0, i64 %idxprom1
  %2 = load double, ptr %arrayidx2, align 8
  %3 = call double @llvm.fmuladd.f64(double %1, double %2, double 1.000000e+00)
  %4 = call double @llvm.sqrt.f64(double %3)
  store double %4, ptr %sq, align 8
  %5 = load i32, ptr %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [8 x double], ptr @mdct_init48.c, i64 0, i64 %idxprom3
  %6 = load double, ptr %arrayidx4, align 8
  %div = fdiv double %6, %4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %idxprom5
  store double %div, ptr %arrayidx6, align 8
  %7 = load double, ptr %sq, align 8
  %div7 = fdiv double 1.000000e+00, %7
  %8 = load i32, ptr %k, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %idxprom8
  store double %div7, ptr %arrayidx9, align 8
  %9 = load i32, ptr %k, align 4
  %inc = add nsw i32 %9, 1
  br label %for.cond, !llvm.loop !18

for.cond10:                                       ; preds = %for.cond, %for.body12
  %storemerge1 = phi i32 [ %inc16, %for.body12 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp11 = icmp slt i32 %storemerge1, 36
  br i1 %cmp11, label %for.body12, label %for.cond18

for.body12:                                       ; preds = %for.cond10
  %10 = load i32, ptr %i, align 4
  %conv = sitofp i32 %10 to double
  %add = fadd double %conv, 5.000000e-01
  %mul = fmul double %add, 0x3FB657184AE74487
  %11 = call double @llvm.sin.f64(double %mul)
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom13
  store double %11, ptr %arrayidx14, align 8
  %12 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %12, 1
  br label %for.cond10, !llvm.loop !19

for.cond18:                                       ; preds = %for.cond10, %for.body21
  %storemerge2 = phi i32 [ %inc27, %for.body21 ], [ 0, %for.cond10 ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp19 = icmp slt i32 %storemerge2, 18
  br i1 %cmp19, label %for.body21, label %for.cond29

for.body21:                                       ; preds = %for.cond18
  %13 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom22
  %14 = load double, ptr %arrayidx23, align 8
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom24
  store double %14, ptr %arrayidx25, align 8
  %15 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %15, 1
  br label %for.cond18, !llvm.loop !20

for.cond29:                                       ; preds = %for.cond18, %for.body32
  %16 = load i32, ptr %i, align 4
  %cmp30 = icmp slt i32 %16, 24
  br i1 %cmp30, label %for.body32, label %for.cond38

for.body32:                                       ; preds = %for.cond29
  %17 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %17 to i64
  %arrayidx34 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom33
  store double 1.000000e+00, ptr %arrayidx34, align 8
  %18 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %18, 1
  store i32 %inc36, ptr %i, align 4
  br label %for.cond29, !llvm.loop !21

for.cond38:                                       ; preds = %for.cond29, %for.body41
  %19 = load i32, ptr %i, align 4
  %cmp39 = icmp slt i32 %19, 30
  br i1 %cmp39, label %for.body41, label %for.cond50

for.body41:                                       ; preds = %for.cond38
  %20 = load i32, ptr %i, align 4
  %conv42 = sitofp i32 %20 to double
  %add43 = fadd double %conv42, 5.000000e-01
  %mul44 = fmul double %add43, 0x3FD0C152382D7365
  %21 = call double @llvm.cos.f64(double %mul44)
  %idxprom45 = sext i32 %20 to i64
  %arrayidx46 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom45
  store double %21, ptr %arrayidx46, align 8
  %22 = load i32, ptr %i, align 4
  %inc48 = add nsw i32 %22, 1
  store i32 %inc48, ptr %i, align 4
  br label %for.cond38, !llvm.loop !22

for.cond50:                                       ; preds = %for.cond38, %for.body53
  %23 = load i32, ptr %i, align 4
  %cmp51 = icmp slt i32 %23, 36
  br i1 %cmp51, label %for.body53, label %for.cond59

for.body53:                                       ; preds = %for.cond50
  %24 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %24 to i64
  %arrayidx55 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom54
  store double 0.000000e+00, ptr %arrayidx55, align 8
  %25 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %25, 1
  store i32 %inc57, ptr %i, align 4
  br label %for.cond50, !llvm.loop !23

for.cond59:                                       ; preds = %for.cond50, %for.body62
  %storemerge3 = phi i32 [ %inc68, %for.body62 ], [ 0, %for.cond50 ]
  store i32 %storemerge3, ptr %i, align 4
  %cmp60 = icmp slt i32 %storemerge3, 36
  br i1 %cmp60, label %for.body62, label %for.end69

for.body62:                                       ; preds = %for.cond59
  %26 = load i32, ptr %i, align 4
  %sub = sub nsw i32 35, %26
  %idxprom63 = sext i32 %sub to i64
  %arrayidx64 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom63
  %27 = load double, ptr %arrayidx64, align 8
  %idxprom65 = sext i32 %26 to i64
  %arrayidx66 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom65
  store double %27, ptr %arrayidx66, align 8
  %28 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %28, 1
  br label %for.cond59, !llvm.loop !24

for.end69:                                        ; preds = %for.cond59
  store double 0x3FBC71C71C71C71C, ptr %sq, align 8
  store ptr @cos_l, ptr %cos_l0, align 8
  store i32 11, ptr %j, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end69
  %29 = load i32, ptr %j, align 4
  %idxprom70 = sext i32 %29 to i64
  %arrayidx71 = getelementptr inbounds [12 x i32], ptr @all, i64 0, i64 %idxprom70
  %30 = load i32, ptr %arrayidx71, align 4
  store i32 %30, ptr %m, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.body75, %do.body
  %storemerge4 = phi i32 [ 0, %do.body ], [ %inc87, %for.body75 ]
  store i32 %storemerge4, ptr %k, align 4
  %cmp73 = icmp slt i32 %storemerge4, 9
  br i1 %cmp73, label %for.body75, label %for.cond89

for.body75:                                       ; preds = %for.cond72
  %31 = load double, ptr %sq, align 8
  %32 = load i32, ptr %m, align 4
  %mul76 = shl nsw i32 %32, 1
  %add77 = or i32 %mul76, 1
  %conv78 = sitofp i32 %add77 to double
  %mul79 = fmul double %conv78, 0x3F9657184AE74487
  %33 = load i32, ptr %k, align 4
  %mul80 = shl nsw i32 %33, 2
  %add82 = add i32 %mul80, 38
  %conv83 = sitofp i32 %add82 to double
  %mul84 = fmul double %mul79, %conv83
  %34 = call double @llvm.cos.f64(double %mul84)
  %mul85 = fmul double %31, %34
  %35 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %35, i64 1
  store ptr %incdec.ptr, ptr %cos_l0, align 8
  store double %mul85, ptr %35, align 8
  %36 = load i32, ptr %k, align 4
  %inc87 = add nsw i32 %36, 1
  br label %for.cond72, !llvm.loop !25

for.cond89:                                       ; preds = %for.cond72, %for.body92
  %storemerge5 = phi i32 [ %inc105, %for.body92 ], [ 0, %for.cond72 ]
  store i32 %storemerge5, ptr %k, align 4
  %cmp90 = icmp slt i32 %storemerge5, 9
  br i1 %cmp90, label %for.body92, label %do.cond

for.body92:                                       ; preds = %for.cond89
  %37 = load double, ptr %sq, align 8
  %38 = load i32, ptr %m, align 4
  %mul93 = shl nsw i32 %38, 1
  %add94 = or i32 %mul93, 1
  %conv95 = sitofp i32 %add94 to double
  %mul96 = fmul double %conv95, 0x3F9657184AE74487
  %39 = load i32, ptr %k, align 4
  %mul97 = shl nsw i32 %39, 2
  %add99 = add i32 %mul97, 110
  %conv100 = sitofp i32 %add99 to double
  %mul101 = fmul double %mul96, %conv100
  %40 = call double @llvm.cos.f64(double %mul101)
  %mul102 = fmul double %37, %40
  %41 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr103 = getelementptr inbounds double, ptr %41, i64 1
  store ptr %incdec.ptr103, ptr %cos_l0, align 8
  store double %mul102, ptr %41, align 8
  %42 = load i32, ptr %k, align 4
  %inc105 = add nsw i32 %42, 1
  br label %for.cond89, !llvm.loop !26

do.cond:                                          ; preds = %for.cond89
  %43 = load i32, ptr %j, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, ptr %j, align 4
  %cmp107 = icmp sgt i32 %43, 0
  br i1 %cmp107, label %do.body, label %do.end, !llvm.loop !27

do.end:                                           ; preds = %do.cond
  store i32 3, ptr %j, align 4
  br label %do.body109

do.body109:                                       ; preds = %do.cond148, %do.end
  %44 = load i32, ptr %j, align 4
  %idxprom110 = sext i32 %44 to i64
  %arrayidx111 = getelementptr inbounds [4 x i32], ptr @mdct_init48.d3, i64 0, i64 %idxprom110
  %45 = load i32, ptr %arrayidx111, align 4
  store i32 %45, ptr %m, align 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.body115, %do.body109
  %storemerge6 = phi i32 [ 0, %do.body109 ], [ %inc128, %for.body115 ]
  store i32 %storemerge6, ptr %k, align 4
  %cmp113 = icmp slt i32 %storemerge6, 3
  br i1 %cmp113, label %for.body115, label %for.cond130

for.body115:                                      ; preds = %for.cond112
  %46 = load double, ptr %sq, align 8
  %47 = load i32, ptr %m, align 4
  %mul116 = shl nsw i32 %47, 1
  %add117 = or i32 %mul116, 1
  %conv118 = sitofp i32 %add117 to double
  %mul119 = fmul double %conv118, 0x3F9657184AE74487
  %48 = load i32, ptr %k, align 4
  %mul120 = shl nsw i32 %48, 2
  %add122 = add i32 %mul120, 38
  %conv123 = sitofp i32 %add122 to double
  %mul124 = fmul double %mul119, %conv123
  %49 = call double @llvm.cos.f64(double %mul124)
  %mul125 = fmul double %46, %49
  %50 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr126 = getelementptr inbounds double, ptr %50, i64 1
  store ptr %incdec.ptr126, ptr %cos_l0, align 8
  store double %mul125, ptr %50, align 8
  %51 = load i32, ptr %k, align 4
  %inc128 = add nsw i32 %51, 1
  br label %for.cond112, !llvm.loop !28

for.cond130:                                      ; preds = %for.cond112, %for.body133
  %storemerge7 = phi i32 [ %inc146, %for.body133 ], [ 6, %for.cond112 ]
  store i32 %storemerge7, ptr %k, align 4
  %cmp131 = icmp slt i32 %storemerge7, 9
  br i1 %cmp131, label %for.body133, label %do.cond148

for.body133:                                      ; preds = %for.cond130
  %52 = load double, ptr %sq, align 8
  %53 = load i32, ptr %m, align 4
  %mul134 = shl nsw i32 %53, 1
  %add135 = or i32 %mul134, 1
  %conv136 = sitofp i32 %add135 to double
  %mul137 = fmul double %conv136, 0x3F9657184AE74487
  %54 = load i32, ptr %k, align 4
  %mul138 = shl nsw i32 %54, 2
  %add140 = add i32 %mul138, 38
  %conv141 = sitofp i32 %add140 to double
  %mul142 = fmul double %mul137, %conv141
  %55 = call double @llvm.cos.f64(double %mul142)
  %mul143 = fmul double %52, %55
  %56 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr144 = getelementptr inbounds double, ptr %56, i64 1
  store ptr %incdec.ptr144, ptr %cos_l0, align 8
  store double %mul143, ptr %56, align 8
  %57 = load i32, ptr %k, align 4
  %inc146 = add nsw i32 %57, 1
  br label %for.cond130, !llvm.loop !29

do.cond148:                                       ; preds = %for.cond130
  %58 = load i32, ptr %j, align 4
  %dec149 = add nsw i32 %58, -1
  store i32 %dec149, ptr %j, align 4
  %cmp150 = icmp sgt i32 %58, 0
  br i1 %cmp150, label %do.body109, label %do.end152, !llvm.loop !30

do.end152:                                        ; preds = %do.cond148
  store i32 1, ptr %j, align 4
  br label %do.body153

do.body153:                                       ; preds = %do.body153, %do.end152
  %59 = load i32, ptr %j, align 4
  %idxprom154 = sext i32 %59 to i64
  %arrayidx155 = getelementptr inbounds [2 x i32], ptr @mdct_init48.d9, i64 0, i64 %idxprom154
  %60 = load i32, ptr %arrayidx155, align 4
  store i32 %60, ptr %m, align 4
  %61 = load double, ptr %sq, align 8
  %mul156 = shl nsw i32 %60, 1
  %add157 = or i32 %mul156, 1
  %conv158 = sitofp i32 %add157 to double
  %mul159 = fmul double %conv158, 0x3F9657184AE74487
  %mul160 = fmul double %mul159, 3.800000e+01
  %62 = call double @llvm.cos.f64(double %mul160)
  %mul161 = fmul double %61, %62
  %63 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr162 = getelementptr inbounds double, ptr %63, i64 1
  store ptr %incdec.ptr162, ptr %cos_l0, align 8
  store double %mul161, ptr %63, align 8
  %64 = load double, ptr %sq, align 8
  %65 = load i32, ptr %m, align 4
  %mul163 = shl nsw i32 %65, 1
  %add164 = or i32 %mul163, 1
  %conv165 = sitofp i32 %add164 to double
  %mul166 = fmul double %conv165, 0x3F9657184AE74487
  %mul167 = fmul double %mul166, 4.600000e+01
  %66 = call double @llvm.cos.f64(double %mul167)
  %mul168 = fmul double %64, %66
  %67 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr169 = getelementptr inbounds double, ptr %67, i64 1
  store ptr %incdec.ptr169, ptr %cos_l0, align 8
  store double %mul168, ptr %67, align 8
  %68 = load i32, ptr %j, align 4
  %dec171 = add nsw i32 %68, -1
  store i32 %dec171, ptr %j, align 4
  %cmp172 = icmp sgt i32 %68, 0
  br i1 %cmp172, label %do.body153, label %do.end174, !llvm.loop !31

do.end174:                                        ; preds = %do.body153
  %69 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 248), align 8
  store double %69, ptr %max, align 8
  store ptr @enwindow, ptr %wp, align 8
  store ptr @enwindow, ptr %wr, align 8
  store ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 1), ptr %wp, align 8
  %70 = load double, ptr @enwindow, align 8
  store double %70, ptr %w, align 8
  %div176 = fdiv double %70, %69
  %arrayidx177 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 15
  store double %div176, ptr %arrayidx177, align 8
  br label %for.cond178

for.cond178:                                      ; preds = %for.body181, %do.end174
  %storemerge8 = phi i32 [ 0, %do.end174 ], [ %inc186, %for.body181 ]
  store i32 %storemerge8, ptr %k, align 4
  %cmp179 = icmp slt i32 %storemerge8, 7
  br i1 %cmp179, label %for.body181, label %for.cond188

for.body181:                                      ; preds = %for.cond178
  %71 = load ptr, ptr %wp, align 8
  %incdec.ptr182 = getelementptr inbounds double, ptr %71, i64 1
  store ptr %incdec.ptr182, ptr %wp, align 8
  %72 = load double, ptr %71, align 8
  %73 = load double, ptr %w, align 8
  %div183 = fdiv double %72, %73
  %74 = load ptr, ptr %wr, align 8
  %incdec.ptr184 = getelementptr inbounds double, ptr %74, i64 1
  store ptr %incdec.ptr184, ptr %wr, align 8
  store double %div183, ptr %74, align 8
  %75 = load i32, ptr %k, align 4
  %inc186 = add nsw i32 %75, 1
  br label %for.cond178, !llvm.loop !32

for.cond188:                                      ; preds = %for.cond178, %for.inc210
  %storemerge9 = phi i32 [ %dec211, %for.inc210 ], [ 14, %for.cond178 ]
  store i32 %storemerge9, ptr %i, align 4
  %cmp189 = icmp sgt i32 %storemerge9, -1
  br i1 %cmp189, label %for.body191, label %for.end212

for.body191:                                      ; preds = %for.cond188
  %76 = load ptr, ptr %wp, align 8
  %incdec.ptr193 = getelementptr inbounds double, ptr %76, i64 1
  store ptr %incdec.ptr193, ptr %wp, align 8
  %77 = load double, ptr %76, align 8
  store double %77, ptr %w192, align 8
  %78 = load double, ptr %max, align 8
  %div194 = fdiv double %77, %78
  %79 = load i32, ptr %i, align 4
  %sub195 = sub nsw i32 30, %79
  %idxprom196 = sext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 %idxprom196
  store double %div194, ptr %arrayidx197, align 8
  %idxprom198 = sext i32 %79 to i64
  %arrayidx199 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 %idxprom198
  store double %div194, ptr %arrayidx199, align 8
  br label %for.cond200

for.cond200:                                      ; preds = %for.body203, %for.body191
  %storemerge17 = phi i32 [ 0, %for.body191 ], [ %inc208, %for.body203 ]
  store i32 %storemerge17, ptr %k, align 4
  %cmp201 = icmp slt i32 %storemerge17, 15
  br i1 %cmp201, label %for.body203, label %for.inc210

for.body203:                                      ; preds = %for.cond200
  %80 = load ptr, ptr %wp, align 8
  %incdec.ptr204 = getelementptr inbounds double, ptr %80, i64 1
  store ptr %incdec.ptr204, ptr %wp, align 8
  %81 = load double, ptr %80, align 8
  %82 = load double, ptr %w192, align 8
  %div205 = fdiv double %81, %82
  %83 = load ptr, ptr %wr, align 8
  %incdec.ptr206 = getelementptr inbounds double, ptr %83, i64 1
  store ptr %incdec.ptr206, ptr %wr, align 8
  store double %div205, ptr %83, align 8
  %84 = load i32, ptr %k, align 4
  %inc208 = add nsw i32 %84, 1
  br label %for.cond200, !llvm.loop !33

for.inc210:                                       ; preds = %for.cond200
  %85 = load i32, ptr %i, align 4
  %dec211 = add nsw i32 %85, -1
  br label %for.cond188, !llvm.loop !34

for.end212:                                       ; preds = %for.cond188
  %86 = load ptr, ptr %wp, align 8
  %incdec.ptr213 = getelementptr inbounds double, ptr %86, i64 1
  store ptr %incdec.ptr213, ptr %wp, align 8
  br label %for.cond214

for.cond214:                                      ; preds = %for.body217, %for.end212
  %storemerge10 = phi i32 [ 0, %for.end212 ], [ %inc222, %for.body217 ]
  store i32 %storemerge10, ptr %k, align 4
  %cmp215 = icmp slt i32 %storemerge10, 7
  br i1 %cmp215, label %for.body217, label %for.end223

for.body217:                                      ; preds = %for.cond214
  %87 = load ptr, ptr %wp, align 8
  %incdec.ptr218 = getelementptr inbounds double, ptr %87, i64 1
  store ptr %incdec.ptr218, ptr %wp, align 8
  %88 = load double, ptr %87, align 8
  %89 = load double, ptr %max, align 8
  %div219 = fdiv double %88, %89
  %90 = load ptr, ptr %wr, align 8
  %incdec.ptr220 = getelementptr inbounds double, ptr %90, i64 1
  store ptr %incdec.ptr220, ptr %wr, align 8
  store double %div219, ptr %90, align 8
  %91 = load i32, ptr %k, align 4
  %inc222 = add nsw i32 %91, 1
  br label %for.cond214, !llvm.loop !35

for.end223:                                       ; preds = %for.cond214
  store ptr @mm, ptr %wp, align 8
  br label %for.cond224

for.cond224:                                      ; preds = %for.inc246, %for.end223
  %storemerge11 = phi i32 [ 15, %for.end223 ], [ %dec247, %for.inc246 ]
  store i32 %storemerge11, ptr %i, align 4
  %cmp225 = icmp sgt i32 %storemerge11, -1
  br i1 %cmp225, label %for.cond228, label %for.cond249

for.cond228:                                      ; preds = %for.cond224, %for.body231
  %storemerge16 = phi i32 [ %inc244, %for.body231 ], [ 1, %for.cond224 ]
  store i32 %storemerge16, ptr %k, align 4
  %cmp229 = icmp slt i32 %storemerge16, 32
  br i1 %cmp229, label %for.body231, label %for.inc246

for.body231:                                      ; preds = %for.cond228
  %92 = load i32, ptr %i, align 4
  %mul232 = shl nsw i32 %92, 1
  %add233 = or i32 %mul232, 1
  %93 = load i32, ptr %k, align 4
  %mul234 = mul nsw i32 %add233, %93
  %conv235 = sitofp i32 %mul234 to double
  %mul236 = fmul double %conv235, 0x400921FB54442D18
  %div237 = fmul double %mul236, 1.562500e-02
  %94 = call double @llvm.cos.f64(double %div237)
  %sub238 = add nsw i32 %93, -1
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 %idxprom239
  %95 = load double, ptr %arrayidx240, align 8
  %mul241 = fmul double %94, %95
  %96 = load ptr, ptr %wp, align 8
  %incdec.ptr242 = getelementptr inbounds double, ptr %96, i64 1
  store ptr %incdec.ptr242, ptr %wp, align 8
  store double %mul241, ptr %96, align 8
  %97 = load i32, ptr %k, align 4
  %inc244 = add nsw i32 %97, 1
  br label %for.cond228, !llvm.loop !36

for.inc246:                                       ; preds = %for.cond228
  %98 = load i32, ptr %i, align 4
  %dec247 = add nsw i32 %98, -1
  br label %for.cond224, !llvm.loop !37

for.cond249:                                      ; preds = %for.cond224, %for.body252
  %storemerge12 = phi i32 [ %inc326, %for.body252 ], [ 0, %for.cond224 ]
  store i32 %storemerge12, ptr %k, align 4
  %cmp250 = icmp slt i32 %storemerge12, 4
  br i1 %cmp250, label %for.body252, label %for.cond328

for.body252:                                      ; preds = %for.cond249
  %99 = load i32, ptr %k, align 4
  %sub253 = sub nsw i32 17, %99
  %idxprom254 = sext i32 %sub253 to i64
  %arrayidx255 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom254
  %100 = load double, ptr %arrayidx255, align 8
  store double %100, ptr %a, align 8
  %add256 = add nsw i32 %99, 9
  %idxprom257 = sext i32 %add256 to i64
  %arrayidx258 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom257
  %101 = load double, ptr %arrayidx258, align 8
  %102 = load i32, ptr %k, align 4
  %sub259 = sub nsw i32 17, %102
  %idxprom260 = sext i32 %sub259 to i64
  %arrayidx261 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom260
  store double %101, ptr %arrayidx261, align 8
  %103 = load double, ptr %a, align 8
  %add262 = add nsw i32 %102, 9
  %idxprom263 = sext i32 %add262 to i64
  %arrayidx264 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom263
  store double %103, ptr %arrayidx264, align 8
  %104 = load i32, ptr %k, align 4
  %sub265 = sub nsw i32 35, %104
  %idxprom266 = sext i32 %sub265 to i64
  %arrayidx267 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom266
  %105 = load double, ptr %arrayidx267, align 8
  store double %105, ptr %a, align 8
  %add268 = add nsw i32 %104, 27
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom269
  %106 = load double, ptr %arrayidx270, align 8
  %107 = load i32, ptr %k, align 4
  %sub271 = sub nsw i32 35, %107
  %idxprom272 = sext i32 %sub271 to i64
  %arrayidx273 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom272
  store double %106, ptr %arrayidx273, align 8
  %108 = load double, ptr %a, align 8
  %add274 = add nsw i32 %107, 27
  %idxprom275 = sext i32 %add274 to i64
  %arrayidx276 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom275
  store double %108, ptr %arrayidx276, align 8
  %109 = load i32, ptr %k, align 4
  %sub277 = sub nsw i32 17, %109
  %idxprom278 = sext i32 %sub277 to i64
  %arrayidx279 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom278
  %110 = load double, ptr %arrayidx279, align 8
  store double %110, ptr %a, align 8
  %add280 = add nsw i32 %109, 9
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom281
  %111 = load double, ptr %arrayidx282, align 8
  %112 = load i32, ptr %k, align 4
  %sub283 = sub nsw i32 17, %112
  %idxprom284 = sext i32 %sub283 to i64
  %arrayidx285 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom284
  store double %111, ptr %arrayidx285, align 8
  %113 = load double, ptr %a, align 8
  %add286 = add nsw i32 %112, 9
  %idxprom287 = sext i32 %add286 to i64
  %arrayidx288 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom287
  store double %113, ptr %arrayidx288, align 8
  %114 = load i32, ptr %k, align 4
  %sub289 = sub nsw i32 35, %114
  %idxprom290 = sext i32 %sub289 to i64
  %arrayidx291 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom290
  %115 = load double, ptr %arrayidx291, align 8
  store double %115, ptr %a, align 8
  %add292 = add nsw i32 %114, 27
  %idxprom293 = sext i32 %add292 to i64
  %arrayidx294 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom293
  %116 = load double, ptr %arrayidx294, align 8
  %117 = load i32, ptr %k, align 4
  %sub295 = sub nsw i32 35, %117
  %idxprom296 = sext i32 %sub295 to i64
  %arrayidx297 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom296
  store double %116, ptr %arrayidx297, align 8
  %118 = load double, ptr %a, align 8
  %add298 = add nsw i32 %117, 27
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom299
  store double %118, ptr %arrayidx300, align 8
  %119 = load i32, ptr %k, align 4
  %sub301 = sub nsw i32 17, %119
  %idxprom302 = sext i32 %sub301 to i64
  %arrayidx303 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom302
  %120 = load double, ptr %arrayidx303, align 8
  store double %120, ptr %a, align 8
  %add304 = add nsw i32 %119, 9
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom305
  %121 = load double, ptr %arrayidx306, align 8
  %122 = load i32, ptr %k, align 4
  %sub307 = sub nsw i32 17, %122
  %idxprom308 = sext i32 %sub307 to i64
  %arrayidx309 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom308
  store double %121, ptr %arrayidx309, align 8
  %123 = load double, ptr %a, align 8
  %add310 = add nsw i32 %122, 9
  %idxprom311 = sext i32 %add310 to i64
  %arrayidx312 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom311
  store double %123, ptr %arrayidx312, align 8
  %124 = load i32, ptr %k, align 4
  %sub313 = sub nsw i32 35, %124
  %idxprom314 = sext i32 %sub313 to i64
  %arrayidx315 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom314
  %125 = load double, ptr %arrayidx315, align 8
  store double %125, ptr %a, align 8
  %add316 = add nsw i32 %124, 27
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom317
  %126 = load double, ptr %arrayidx318, align 8
  %127 = load i32, ptr %k, align 4
  %sub319 = sub nsw i32 35, %127
  %idxprom320 = sext i32 %sub319 to i64
  %arrayidx321 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom320
  store double %126, ptr %arrayidx321, align 8
  %128 = load double, ptr %a, align 8
  %add322 = add nsw i32 %127, 27
  %idxprom323 = sext i32 %add322 to i64
  %arrayidx324 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom323
  store double %128, ptr %arrayidx324, align 8
  %129 = load i32, ptr %k, align 4
  %inc326 = add nsw i32 %129, 1
  br label %for.cond249, !llvm.loop !38

for.cond328:                                      ; preds = %for.cond249, %for.body331
  %storemerge13 = phi i32 [ %inc345, %for.body331 ], [ 0, %for.cond249 ]
  store i32 %storemerge13, ptr %i, align 4
  %cmp329 = icmp slt i32 %storemerge13, 36
  br i1 %cmp329, label %for.body331, label %for.end346

for.body331:                                      ; preds = %for.cond328
  %130 = load double, ptr %max, align 8
  %div332 = fmul double %130, 0x3F00000000000000
  %131 = load i32, ptr %i, align 4
  %idxprom333 = sext i32 %131 to i64
  %arrayidx334 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom333
  %132 = load double, ptr %arrayidx334, align 8
  %mul335 = fmul double %132, %div332
  store double %mul335, ptr %arrayidx334, align 8
  %133 = load double, ptr %max, align 8
  %div336 = fmul double %133, 0x3F00000000000000
  %134 = load i32, ptr %i, align 4
  %idxprom337 = sext i32 %134 to i64
  %arrayidx338 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %idxprom337
  %135 = load double, ptr %arrayidx338, align 8
  %mul339 = fmul double %135, %div336
  store double %mul339, ptr %arrayidx338, align 8
  %136 = load double, ptr %max, align 8
  %div340 = fmul double %136, 0x3F00000000000000
  %137 = load i32, ptr %i, align 4
  %idxprom341 = sext i32 %137 to i64
  %arrayidx342 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %idxprom341
  %138 = load double, ptr %arrayidx342, align 8
  %mul343 = fmul double %138, %div340
  store double %mul343, ptr %arrayidx342, align 8
  %139 = load i32, ptr %i, align 4
  %inc345 = add nsw i32 %139, 1
  br label %for.cond328, !llvm.loop !39

for.end346:                                       ; preds = %for.cond328
  store double 0x3FD5555555555555, ptr %sq, align 8
  br label %for.cond347

for.cond347:                                      ; preds = %for.inc398, %for.end346
  %storemerge14 = phi i32 [ 0, %for.end346 ], [ %inc399, %for.inc398 ]
  store i32 %storemerge14, ptr %i, align 4
  %cmp348 = icmp slt i32 %storemerge14, 3
  br i1 %cmp348, label %for.body350, label %for.end400

for.body350:                                      ; preds = %for.cond347
  %140 = load i32, ptr %i, align 4
  %conv351 = sitofp i32 %140 to double
  %add352 = fadd double %conv351, 5.000000e-01
  %mul353 = fmul double %add352, 0x3FD0C152382D7365
  %141 = call double @llvm.cos.f64(double %mul353)
  %142 = load double, ptr %max, align 8
  %mul354 = fmul double %141, %142
  %div355 = fmul double %mul354, 0x3F00000000000000
  %143 = load double, ptr %sq, align 8
  %mul356 = fmul double %div355, %143
  store double %mul356, ptr %w2, align 8
  %144 = load i32, ptr %i, align 4
  %conv357 = sitofp i32 %144 to double
  %add358 = fadd double %conv357, 5.000000e-01
  %mul359 = fmul double %add358, 0x3FD0C152382D7365
  %call = call double @tan(double noundef %mul359) #5
  %idxprom360 = sext i32 %144 to i64
  %arrayidx361 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 2, i64 %idxprom360
  store double %call, ptr %arrayidx361, align 8
  br label %for.cond362

for.cond362:                                      ; preds = %for.body365, %for.body350
  %storemerge15 = phi i32 [ 0, %for.body350 ], [ %inc396, %for.body365 ]
  store i32 %storemerge15, ptr %m, align 4
  %cmp363 = icmp slt i32 %storemerge15, 6
  br i1 %cmp363, label %for.body365, label %for.inc398

for.body365:                                      ; preds = %for.cond362
  %145 = load double, ptr %w2, align 8
  %146 = load i32, ptr %m, align 4
  %mul366 = shl nsw i32 %146, 1
  %add367 = or i32 %mul366, 1
  %conv368 = sitofp i32 %add367 to double
  %mul369 = fmul double %conv368, 0x3FB0C152382D7365
  %147 = load i32, ptr %i, align 4
  %mul370 = shl nsw i32 %147, 2
  %add372 = add i32 %mul370, 14
  %conv373 = sitofp i32 %add372 to double
  %mul374 = fmul double %mul369, %conv373
  %148 = call double @llvm.cos.f64(double %mul374)
  %mul375 = fmul double %145, %148
  %149 = load i32, ptr %m, align 4
  %idxprom376 = sext i32 %149 to i64
  %150 = load i32, ptr %i, align 4
  %idxprom378 = sext i32 %150 to i64
  %arrayidx379 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom376, i64 %idxprom378
  store double %mul375, ptr %arrayidx379, align 8
  %151 = load double, ptr %w2, align 8
  %152 = load i32, ptr %m, align 4
  %mul380 = shl nsw i32 %152, 1
  %add381 = or i32 %mul380, 1
  %conv382 = sitofp i32 %add381 to double
  %mul383 = fmul double %conv382, 0x3FB0C152382D7365
  %153 = load i32, ptr %i, align 4
  %mul384 = shl nsw i32 %153, 2
  %add386 = add i32 %mul384, 38
  %conv387 = sitofp i32 %add386 to double
  %mul388 = fmul double %mul383, %conv387
  %154 = call double @llvm.cos.f64(double %mul388)
  %mul389 = fmul double %151, %154
  %155 = load i32, ptr %m, align 4
  %idxprom390 = sext i32 %155 to i64
  %156 = load i32, ptr %i, align 4
  %add392 = add nsw i32 %156, 3
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom390, i64 %idxprom393
  store double %mul389, ptr %arrayidx394, align 8
  %157 = load i32, ptr %m, align 4
  %inc396 = add nsw i32 %157, 1
  br label %for.cond362, !llvm.loop !40

for.inc398:                                       ; preds = %for.cond362
  %158 = load i32, ptr %i, align 4
  %inc399 = add nsw i32 %158, 1
  br label %for.cond347, !llvm.loop !41

for.end400:                                       ; preds = %for.cond347
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @window_subband(ptr noundef %xk, ptr noundef %d, ptr noundef %in) #0 {
entry:
  %xk.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %s = alloca double, align 8
  %t = alloca double, align 8
  %wp = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %w = alloca double, align 8
  %j = alloca i32, align 4
  %s0 = alloca double, align 8
  %s1 = alloca double, align 8
  store ptr %xk, ptr %xk.addr, align 8
  store ptr %d, ptr %d.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr @enwindow, ptr %wp, align 8
  %arrayidx = getelementptr inbounds i16, ptr %xk, i64 255
  %0 = load i16, ptr %arrayidx, align 2
  %conv = sitofp i16 %0 to double
  store double %conv, ptr %t, align 8
  %1 = load ptr, ptr %xk.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, ptr %1, i64 223
  %2 = load i16, ptr %arrayidx1, align 2
  %conv2 = sext i16 %2 to i32
  %arrayidx3 = getelementptr inbounds i16, ptr %1, i64 287
  %3 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv2, %conv4
  %conv5 = sitofp i32 %sub to double
  %4 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %5 = load double, ptr %4, align 8
  %6 = load double, ptr %t, align 8
  %7 = call double @llvm.fmuladd.f64(double %conv5, double %5, double %6)
  store double %7, ptr %t, align 8
  %8 = load ptr, ptr %xk.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, ptr %8, i64 191
  %9 = load i16, ptr %arrayidx6, align 2
  %conv7 = sext i16 %9 to i32
  %arrayidx8 = getelementptr inbounds i16, ptr %8, i64 319
  %10 = load i16, ptr %arrayidx8, align 2
  %conv9 = sext i16 %10 to i32
  %add = add nsw i32 %conv7, %conv9
  %conv10 = sitofp i32 %add to double
  %11 = load ptr, ptr %wp, align 8
  %incdec.ptr11 = getelementptr inbounds double, ptr %11, i64 1
  store ptr %incdec.ptr11, ptr %wp, align 8
  %12 = load double, ptr %11, align 8
  %13 = load double, ptr %t, align 8
  %14 = call double @llvm.fmuladd.f64(double %conv10, double %12, double %13)
  store double %14, ptr %t, align 8
  %15 = load ptr, ptr %xk.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, ptr %15, i64 159
  %16 = load i16, ptr %arrayidx12, align 2
  %conv13 = sext i16 %16 to i32
  %arrayidx14 = getelementptr inbounds i16, ptr %15, i64 351
  %17 = load i16, ptr %arrayidx14, align 2
  %conv15 = sext i16 %17 to i32
  %sub16 = sub nsw i32 %conv13, %conv15
  %conv17 = sitofp i32 %sub16 to double
  %18 = load ptr, ptr %wp, align 8
  %incdec.ptr18 = getelementptr inbounds double, ptr %18, i64 1
  store ptr %incdec.ptr18, ptr %wp, align 8
  %19 = load double, ptr %18, align 8
  %20 = load double, ptr %t, align 8
  %21 = call double @llvm.fmuladd.f64(double %conv17, double %19, double %20)
  store double %21, ptr %t, align 8
  %22 = load ptr, ptr %xk.addr, align 8
  %arrayidx19 = getelementptr inbounds i16, ptr %22, i64 127
  %23 = load i16, ptr %arrayidx19, align 2
  %conv20 = sext i16 %23 to i32
  %arrayidx21 = getelementptr inbounds i16, ptr %22, i64 383
  %24 = load i16, ptr %arrayidx21, align 2
  %conv22 = sext i16 %24 to i32
  %add23 = add nsw i32 %conv20, %conv22
  %conv24 = sitofp i32 %add23 to double
  %25 = load ptr, ptr %wp, align 8
  %incdec.ptr25 = getelementptr inbounds double, ptr %25, i64 1
  store ptr %incdec.ptr25, ptr %wp, align 8
  %26 = load double, ptr %25, align 8
  %27 = load double, ptr %t, align 8
  %28 = call double @llvm.fmuladd.f64(double %conv24, double %26, double %27)
  store double %28, ptr %t, align 8
  %29 = load ptr, ptr %xk.addr, align 8
  %arrayidx26 = getelementptr inbounds i16, ptr %29, i64 95
  %30 = load i16, ptr %arrayidx26, align 2
  %conv27 = sext i16 %30 to i32
  %arrayidx28 = getelementptr inbounds i16, ptr %29, i64 415
  %31 = load i16, ptr %arrayidx28, align 2
  %conv29 = sext i16 %31 to i32
  %sub30 = sub nsw i32 %conv27, %conv29
  %conv31 = sitofp i32 %sub30 to double
  %32 = load ptr, ptr %wp, align 8
  %incdec.ptr32 = getelementptr inbounds double, ptr %32, i64 1
  store ptr %incdec.ptr32, ptr %wp, align 8
  %33 = load double, ptr %32, align 8
  %34 = load double, ptr %t, align 8
  %35 = call double @llvm.fmuladd.f64(double %conv31, double %33, double %34)
  store double %35, ptr %t, align 8
  %36 = load ptr, ptr %xk.addr, align 8
  %arrayidx33 = getelementptr inbounds i16, ptr %36, i64 63
  %37 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %37 to i32
  %arrayidx35 = getelementptr inbounds i16, ptr %36, i64 447
  %38 = load i16, ptr %arrayidx35, align 2
  %conv36 = sext i16 %38 to i32
  %add37 = add nsw i32 %conv34, %conv36
  %conv38 = sitofp i32 %add37 to double
  %39 = load ptr, ptr %wp, align 8
  %incdec.ptr39 = getelementptr inbounds double, ptr %39, i64 1
  store ptr %incdec.ptr39, ptr %wp, align 8
  %40 = load double, ptr %39, align 8
  %41 = load double, ptr %t, align 8
  %42 = call double @llvm.fmuladd.f64(double %conv38, double %40, double %41)
  store double %42, ptr %t, align 8
  %43 = load ptr, ptr %xk.addr, align 8
  %arrayidx40 = getelementptr inbounds i16, ptr %43, i64 31
  %44 = load i16, ptr %arrayidx40, align 2
  %conv41 = sext i16 %44 to i32
  %arrayidx42 = getelementptr inbounds i16, ptr %43, i64 479
  %45 = load i16, ptr %arrayidx42, align 2
  %conv43 = sext i16 %45 to i32
  %sub44 = sub nsw i32 %conv41, %conv43
  %conv45 = sitofp i32 %sub44 to double
  %46 = load ptr, ptr %wp, align 8
  %incdec.ptr46 = getelementptr inbounds double, ptr %46, i64 1
  store ptr %incdec.ptr46, ptr %wp, align 8
  %47 = load double, ptr %46, align 8
  %48 = load double, ptr %t, align 8
  %49 = call double @llvm.fmuladd.f64(double %conv45, double %47, double %48)
  store double %49, ptr %t, align 8
  %50 = load ptr, ptr %in.addr, align 8
  %arrayidx47 = getelementptr inbounds double, ptr %50, i64 15
  store double %49, ptr %arrayidx47, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 14, %entry ], [ %dec, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp sgt i32 %storemerge, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load ptr, ptr %xk.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom = sext i32 %52 to i64
  %arrayidx49 = getelementptr inbounds i16, ptr %51, i64 %idxprom
  store ptr %arrayidx49, ptr %x1, align 8
  %sub50 = sub nsw i32 0, %52
  %idxprom51 = sext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %51, i64 %idxprom51
  store ptr %arrayidx52, ptr %x2, align 8
  %arrayidx53 = getelementptr inbounds i16, ptr %arrayidx52, i64 270
  %53 = load i16, ptr %arrayidx53, align 2
  %conv54 = sitofp i16 %53 to double
  store double %conv54, ptr %s, align 8
  %54 = load ptr, ptr %x1, align 8
  %arrayidx55 = getelementptr inbounds i16, ptr %54, i64 240
  %55 = load i16, ptr %arrayidx55, align 2
  %conv56 = sitofp i16 %55 to double
  store double %conv56, ptr %t, align 8
  %56 = load ptr, ptr %wp, align 8
  %incdec.ptr57 = getelementptr inbounds double, ptr %56, i64 1
  store ptr %incdec.ptr57, ptr %wp, align 8
  %57 = load double, ptr %56, align 8
  store double %57, ptr %w, align 8
  %58 = load ptr, ptr %x2, align 8
  %arrayidx58 = getelementptr inbounds i16, ptr %58, i64 334
  %59 = load i16, ptr %arrayidx58, align 2
  %conv60 = sitofp i16 %59 to double
  %60 = load double, ptr %s, align 8
  %61 = call double @llvm.fmuladd.f64(double %conv60, double %57, double %60)
  store double %61, ptr %s, align 8
  %62 = load ptr, ptr %x1, align 8
  %arrayidx61 = getelementptr inbounds i16, ptr %62, i64 176
  %63 = load i16, ptr %arrayidx61, align 2
  %conv63 = sitofp i16 %63 to double
  %64 = load double, ptr %w, align 8
  %65 = load double, ptr %t, align 8
  %66 = call double @llvm.fmuladd.f64(double %conv63, double %64, double %65)
  store double %66, ptr %t, align 8
  %67 = load ptr, ptr %wp, align 8
  %incdec.ptr64 = getelementptr inbounds double, ptr %67, i64 1
  store ptr %incdec.ptr64, ptr %wp, align 8
  %68 = load double, ptr %67, align 8
  store double %68, ptr %w, align 8
  %69 = load ptr, ptr %x2, align 8
  %arrayidx65 = getelementptr inbounds i16, ptr %69, i64 398
  %70 = load i16, ptr %arrayidx65, align 2
  %conv67 = sitofp i16 %70 to double
  %71 = load double, ptr %s, align 8
  %72 = call double @llvm.fmuladd.f64(double %conv67, double %68, double %71)
  store double %72, ptr %s, align 8
  %73 = load ptr, ptr %x1, align 8
  %arrayidx68 = getelementptr inbounds i16, ptr %73, i64 112
  %74 = load i16, ptr %arrayidx68, align 2
  %conv70 = sitofp i16 %74 to double
  %75 = load double, ptr %w, align 8
  %76 = load double, ptr %t, align 8
  %77 = call double @llvm.fmuladd.f64(double %conv70, double %75, double %76)
  store double %77, ptr %t, align 8
  %78 = load ptr, ptr %wp, align 8
  %incdec.ptr71 = getelementptr inbounds double, ptr %78, i64 1
  store ptr %incdec.ptr71, ptr %wp, align 8
  %79 = load double, ptr %78, align 8
  store double %79, ptr %w, align 8
  %80 = load ptr, ptr %x2, align 8
  %arrayidx72 = getelementptr inbounds i16, ptr %80, i64 462
  %81 = load i16, ptr %arrayidx72, align 2
  %conv74 = sitofp i16 %81 to double
  %82 = load double, ptr %s, align 8
  %83 = call double @llvm.fmuladd.f64(double %conv74, double %79, double %82)
  store double %83, ptr %s, align 8
  %84 = load ptr, ptr %x1, align 8
  %arrayidx75 = getelementptr inbounds i16, ptr %84, i64 48
  %85 = load i16, ptr %arrayidx75, align 2
  %conv77 = sitofp i16 %85 to double
  %86 = load double, ptr %w, align 8
  %87 = load double, ptr %t, align 8
  %88 = call double @llvm.fmuladd.f64(double %conv77, double %86, double %87)
  store double %88, ptr %t, align 8
  %89 = load ptr, ptr %wp, align 8
  %incdec.ptr78 = getelementptr inbounds double, ptr %89, i64 1
  store ptr %incdec.ptr78, ptr %wp, align 8
  %90 = load double, ptr %89, align 8
  store double %90, ptr %w, align 8
  %91 = load ptr, ptr %x2, align 8
  %arrayidx79 = getelementptr inbounds i16, ptr %91, i64 14
  %92 = load i16, ptr %arrayidx79, align 2
  %conv81 = sitofp i16 %92 to double
  %93 = load double, ptr %s, align 8
  %94 = call double @llvm.fmuladd.f64(double %conv81, double %90, double %93)
  store double %94, ptr %s, align 8
  %95 = load ptr, ptr %x1, align 8
  %arrayidx82 = getelementptr inbounds i16, ptr %95, i64 496
  %96 = load i16, ptr %arrayidx82, align 2
  %conv84 = sitofp i16 %96 to double
  %97 = load double, ptr %w, align 8
  %98 = load double, ptr %t, align 8
  %99 = call double @llvm.fmuladd.f64(double %conv84, double %97, double %98)
  store double %99, ptr %t, align 8
  %100 = load ptr, ptr %wp, align 8
  %incdec.ptr85 = getelementptr inbounds double, ptr %100, i64 1
  store ptr %incdec.ptr85, ptr %wp, align 8
  %101 = load double, ptr %100, align 8
  store double %101, ptr %w, align 8
  %102 = load ptr, ptr %x2, align 8
  %arrayidx86 = getelementptr inbounds i16, ptr %102, i64 78
  %103 = load i16, ptr %arrayidx86, align 2
  %conv88 = sitofp i16 %103 to double
  %104 = load double, ptr %s, align 8
  %105 = call double @llvm.fmuladd.f64(double %conv88, double %101, double %104)
  store double %105, ptr %s, align 8
  %106 = load ptr, ptr %x1, align 8
  %arrayidx89 = getelementptr inbounds i16, ptr %106, i64 432
  %107 = load i16, ptr %arrayidx89, align 2
  %conv91 = sitofp i16 %107 to double
  %108 = load double, ptr %w, align 8
  %109 = load double, ptr %t, align 8
  %110 = call double @llvm.fmuladd.f64(double %conv91, double %108, double %109)
  store double %110, ptr %t, align 8
  %111 = load ptr, ptr %wp, align 8
  %incdec.ptr92 = getelementptr inbounds double, ptr %111, i64 1
  store ptr %incdec.ptr92, ptr %wp, align 8
  %112 = load double, ptr %111, align 8
  store double %112, ptr %w, align 8
  %113 = load ptr, ptr %x2, align 8
  %arrayidx93 = getelementptr inbounds i16, ptr %113, i64 142
  %114 = load i16, ptr %arrayidx93, align 2
  %conv95 = sitofp i16 %114 to double
  %115 = load double, ptr %s, align 8
  %116 = call double @llvm.fmuladd.f64(double %conv95, double %112, double %115)
  store double %116, ptr %s, align 8
  %117 = load ptr, ptr %x1, align 8
  %arrayidx96 = getelementptr inbounds i16, ptr %117, i64 368
  %118 = load i16, ptr %arrayidx96, align 2
  %conv98 = sitofp i16 %118 to double
  %119 = load double, ptr %w, align 8
  %120 = load double, ptr %t, align 8
  %121 = call double @llvm.fmuladd.f64(double %conv98, double %119, double %120)
  store double %121, ptr %t, align 8
  %122 = load ptr, ptr %wp, align 8
  %incdec.ptr99 = getelementptr inbounds double, ptr %122, i64 1
  store ptr %incdec.ptr99, ptr %wp, align 8
  %123 = load double, ptr %122, align 8
  store double %123, ptr %w, align 8
  %124 = load ptr, ptr %x2, align 8
  %arrayidx100 = getelementptr inbounds i16, ptr %124, i64 206
  %125 = load i16, ptr %arrayidx100, align 2
  %conv102 = sitofp i16 %125 to double
  %126 = load double, ptr %s, align 8
  %127 = call double @llvm.fmuladd.f64(double %conv102, double %123, double %126)
  store double %127, ptr %s, align 8
  %128 = load ptr, ptr %x1, align 8
  %arrayidx103 = getelementptr inbounds i16, ptr %128, i64 304
  %129 = load i16, ptr %arrayidx103, align 2
  %conv105 = sitofp i16 %129 to double
  %130 = load double, ptr %w, align 8
  %131 = load double, ptr %t, align 8
  %132 = call double @llvm.fmuladd.f64(double %conv105, double %130, double %131)
  store double %132, ptr %t, align 8
  %133 = load ptr, ptr %wp, align 8
  %incdec.ptr106 = getelementptr inbounds double, ptr %133, i64 1
  store ptr %incdec.ptr106, ptr %wp, align 8
  %134 = load double, ptr %133, align 8
  store double %134, ptr %w, align 8
  %135 = load ptr, ptr %x1, align 8
  %arrayidx107 = getelementptr inbounds i16, ptr %135, i64 16
  %136 = load i16, ptr %arrayidx107, align 2
  %conv109 = sitofp i16 %136 to double
  %137 = load double, ptr %s, align 8
  %138 = call double @llvm.fmuladd.f64(double %conv109, double %134, double %137)
  store double %138, ptr %s, align 8
  %139 = load ptr, ptr %x2, align 8
  %arrayidx110 = getelementptr inbounds i16, ptr %139, i64 494
  %140 = load i16, ptr %arrayidx110, align 2
  %conv112 = sitofp i16 %140 to double
  %141 = load double, ptr %w, align 8
  %142 = load double, ptr %t, align 8
  %neg = fneg double %conv112
  %143 = call double @llvm.fmuladd.f64(double %neg, double %141, double %142)
  store double %143, ptr %t, align 8
  %144 = load ptr, ptr %wp, align 8
  %incdec.ptr113 = getelementptr inbounds double, ptr %144, i64 1
  store ptr %incdec.ptr113, ptr %wp, align 8
  %145 = load double, ptr %144, align 8
  store double %145, ptr %w, align 8
  %146 = load ptr, ptr %x1, align 8
  %arrayidx114 = getelementptr inbounds i16, ptr %146, i64 80
  %147 = load i16, ptr %arrayidx114, align 2
  %conv116 = sitofp i16 %147 to double
  %148 = load double, ptr %s, align 8
  %149 = call double @llvm.fmuladd.f64(double %conv116, double %145, double %148)
  store double %149, ptr %s, align 8
  %150 = load ptr, ptr %x2, align 8
  %arrayidx117 = getelementptr inbounds i16, ptr %150, i64 430
  %151 = load i16, ptr %arrayidx117, align 2
  %conv119 = sitofp i16 %151 to double
  %152 = load double, ptr %w, align 8
  %153 = load double, ptr %t, align 8
  %neg120 = fneg double %conv119
  %154 = call double @llvm.fmuladd.f64(double %neg120, double %152, double %153)
  store double %154, ptr %t, align 8
  %155 = load ptr, ptr %wp, align 8
  %incdec.ptr121 = getelementptr inbounds double, ptr %155, i64 1
  store ptr %incdec.ptr121, ptr %wp, align 8
  %156 = load double, ptr %155, align 8
  store double %156, ptr %w, align 8
  %157 = load ptr, ptr %x1, align 8
  %arrayidx122 = getelementptr inbounds i16, ptr %157, i64 144
  %158 = load i16, ptr %arrayidx122, align 2
  %conv124 = sitofp i16 %158 to double
  %159 = load double, ptr %s, align 8
  %160 = call double @llvm.fmuladd.f64(double %conv124, double %156, double %159)
  store double %160, ptr %s, align 8
  %161 = load ptr, ptr %x2, align 8
  %arrayidx125 = getelementptr inbounds i16, ptr %161, i64 366
  %162 = load i16, ptr %arrayidx125, align 2
  %conv127 = sitofp i16 %162 to double
  %163 = load double, ptr %w, align 8
  %164 = load double, ptr %t, align 8
  %neg128 = fneg double %conv127
  %165 = call double @llvm.fmuladd.f64(double %neg128, double %163, double %164)
  store double %165, ptr %t, align 8
  %166 = load ptr, ptr %wp, align 8
  %incdec.ptr129 = getelementptr inbounds double, ptr %166, i64 1
  store ptr %incdec.ptr129, ptr %wp, align 8
  %167 = load double, ptr %166, align 8
  store double %167, ptr %w, align 8
  %168 = load ptr, ptr %x1, align 8
  %arrayidx130 = getelementptr inbounds i16, ptr %168, i64 208
  %169 = load i16, ptr %arrayidx130, align 2
  %conv132 = sitofp i16 %169 to double
  %170 = load double, ptr %s, align 8
  %171 = call double @llvm.fmuladd.f64(double %conv132, double %167, double %170)
  store double %171, ptr %s, align 8
  %172 = load ptr, ptr %x2, align 8
  %arrayidx133 = getelementptr inbounds i16, ptr %172, i64 302
  %173 = load i16, ptr %arrayidx133, align 2
  %conv135 = sitofp i16 %173 to double
  %174 = load double, ptr %w, align 8
  %175 = load double, ptr %t, align 8
  %neg136 = fneg double %conv135
  %176 = call double @llvm.fmuladd.f64(double %neg136, double %174, double %175)
  store double %176, ptr %t, align 8
  %177 = load ptr, ptr %wp, align 8
  %incdec.ptr137 = getelementptr inbounds double, ptr %177, i64 1
  store ptr %incdec.ptr137, ptr %wp, align 8
  %178 = load double, ptr %177, align 8
  store double %178, ptr %w, align 8
  %179 = load ptr, ptr %x1, align 8
  %arrayidx138 = getelementptr inbounds i16, ptr %179, i64 272
  %180 = load i16, ptr %arrayidx138, align 2
  %conv140 = sitofp i16 %180 to double
  %181 = load double, ptr %s, align 8
  %neg141 = fneg double %conv140
  %182 = call double @llvm.fmuladd.f64(double %neg141, double %178, double %181)
  store double %182, ptr %s, align 8
  %183 = load ptr, ptr %x2, align 8
  %arrayidx142 = getelementptr inbounds i16, ptr %183, i64 238
  %184 = load i16, ptr %arrayidx142, align 2
  %conv144 = sitofp i16 %184 to double
  %185 = load double, ptr %w, align 8
  %186 = load double, ptr %t, align 8
  %187 = call double @llvm.fmuladd.f64(double %conv144, double %185, double %186)
  store double %187, ptr %t, align 8
  %188 = load ptr, ptr %wp, align 8
  %incdec.ptr145 = getelementptr inbounds double, ptr %188, i64 1
  store ptr %incdec.ptr145, ptr %wp, align 8
  %189 = load double, ptr %188, align 8
  store double %189, ptr %w, align 8
  %190 = load ptr, ptr %x1, align 8
  %arrayidx146 = getelementptr inbounds i16, ptr %190, i64 336
  %191 = load i16, ptr %arrayidx146, align 2
  %conv148 = sitofp i16 %191 to double
  %192 = load double, ptr %s, align 8
  %neg149 = fneg double %conv148
  %193 = call double @llvm.fmuladd.f64(double %neg149, double %189, double %192)
  store double %193, ptr %s, align 8
  %194 = load ptr, ptr %x2, align 8
  %arrayidx150 = getelementptr inbounds i16, ptr %194, i64 174
  %195 = load i16, ptr %arrayidx150, align 2
  %conv152 = sitofp i16 %195 to double
  %196 = load double, ptr %w, align 8
  %197 = load double, ptr %t, align 8
  %198 = call double @llvm.fmuladd.f64(double %conv152, double %196, double %197)
  store double %198, ptr %t, align 8
  %199 = load ptr, ptr %wp, align 8
  %incdec.ptr153 = getelementptr inbounds double, ptr %199, i64 1
  store ptr %incdec.ptr153, ptr %wp, align 8
  %200 = load double, ptr %199, align 8
  store double %200, ptr %w, align 8
  %201 = load ptr, ptr %x1, align 8
  %arrayidx154 = getelementptr inbounds i16, ptr %201, i64 400
  %202 = load i16, ptr %arrayidx154, align 2
  %conv156 = sitofp i16 %202 to double
  %203 = load double, ptr %s, align 8
  %neg157 = fneg double %conv156
  %204 = call double @llvm.fmuladd.f64(double %neg157, double %200, double %203)
  store double %204, ptr %s, align 8
  %205 = load ptr, ptr %x2, align 8
  %arrayidx158 = getelementptr inbounds i16, ptr %205, i64 110
  %206 = load i16, ptr %arrayidx158, align 2
  %conv160 = sitofp i16 %206 to double
  %207 = load double, ptr %w, align 8
  %208 = load double, ptr %t, align 8
  %209 = call double @llvm.fmuladd.f64(double %conv160, double %207, double %208)
  store double %209, ptr %t, align 8
  %210 = load ptr, ptr %wp, align 8
  %incdec.ptr161 = getelementptr inbounds double, ptr %210, i64 1
  store ptr %incdec.ptr161, ptr %wp, align 8
  %211 = load double, ptr %210, align 8
  store double %211, ptr %w, align 8
  %212 = load ptr, ptr %x1, align 8
  %arrayidx162 = getelementptr inbounds i16, ptr %212, i64 464
  %213 = load i16, ptr %arrayidx162, align 2
  %conv164 = sitofp i16 %213 to double
  %214 = load double, ptr %s, align 8
  %neg165 = fneg double %conv164
  %215 = call double @llvm.fmuladd.f64(double %neg165, double %211, double %214)
  store double %215, ptr %s, align 8
  %216 = load ptr, ptr %x2, align 8
  %arrayidx166 = getelementptr inbounds i16, ptr %216, i64 46
  %217 = load i16, ptr %arrayidx166, align 2
  %conv168 = sitofp i16 %217 to double
  %218 = load double, ptr %w, align 8
  %219 = load double, ptr %t, align 8
  %220 = call double @llvm.fmuladd.f64(double %conv168, double %218, double %219)
  store double %220, ptr %t, align 8
  %221 = load double, ptr %s, align 8
  %222 = load ptr, ptr %in.addr, align 8
  %223 = load i32, ptr %i, align 4
  %sub169 = sub nsw i32 30, %223
  %idxprom170 = sext i32 %sub169 to i64
  %arrayidx171 = getelementptr inbounds double, ptr %222, i64 %idxprom170
  store double %221, ptr %arrayidx171, align 8
  %224 = load double, ptr %t, align 8
  %225 = load ptr, ptr %in.addr, align 8
  %226 = load i32, ptr %i, align 4
  %idxprom172 = sext i32 %226 to i64
  %arrayidx173 = getelementptr inbounds double, ptr %225, i64 %idxprom172
  store double %224, ptr %arrayidx173, align 8
  %227 = load i32, ptr %i, align 4
  %dec = add nsw i32 %227, -1
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  %228 = load ptr, ptr %xk.addr, align 8
  %arrayidx174 = getelementptr inbounds i16, ptr %228, i64 239
  %229 = load i16, ptr %arrayidx174, align 2
  %conv175 = sitofp i16 %229 to double
  store double %conv175, ptr %s, align 8
  %arrayidx176 = getelementptr inbounds i16, ptr %228, i64 175
  %230 = load i16, ptr %arrayidx176, align 2
  %conv178 = sitofp i16 %230 to double
  %231 = load ptr, ptr %wp, align 8
  %incdec.ptr179 = getelementptr inbounds double, ptr %231, i64 1
  store ptr %incdec.ptr179, ptr %wp, align 8
  %232 = load double, ptr %231, align 8
  %233 = load double, ptr %s, align 8
  %234 = call double @llvm.fmuladd.f64(double %conv178, double %232, double %233)
  store double %234, ptr %s, align 8
  %235 = load ptr, ptr %xk.addr, align 8
  %arrayidx180 = getelementptr inbounds i16, ptr %235, i64 111
  %236 = load i16, ptr %arrayidx180, align 2
  %conv182 = sitofp i16 %236 to double
  %237 = load ptr, ptr %wp, align 8
  %incdec.ptr183 = getelementptr inbounds double, ptr %237, i64 1
  store ptr %incdec.ptr183, ptr %wp, align 8
  %238 = load double, ptr %237, align 8
  %239 = load double, ptr %s, align 8
  %240 = call double @llvm.fmuladd.f64(double %conv182, double %238, double %239)
  store double %240, ptr %s, align 8
  %241 = load ptr, ptr %xk.addr, align 8
  %arrayidx184 = getelementptr inbounds i16, ptr %241, i64 47
  %242 = load i16, ptr %arrayidx184, align 2
  %conv186 = sitofp i16 %242 to double
  %243 = load ptr, ptr %wp, align 8
  %incdec.ptr187 = getelementptr inbounds double, ptr %243, i64 1
  store ptr %incdec.ptr187, ptr %wp, align 8
  %244 = load double, ptr %243, align 8
  %245 = load double, ptr %s, align 8
  %246 = call double @llvm.fmuladd.f64(double %conv186, double %244, double %245)
  store double %246, ptr %s, align 8
  %247 = load ptr, ptr %xk.addr, align 8
  %arrayidx188 = getelementptr inbounds i16, ptr %247, i64 303
  %248 = load i16, ptr %arrayidx188, align 2
  %conv190 = sitofp i16 %248 to double
  %249 = load ptr, ptr %wp, align 8
  %incdec.ptr191 = getelementptr inbounds double, ptr %249, i64 1
  store ptr %incdec.ptr191, ptr %wp, align 8
  %250 = load double, ptr %249, align 8
  %251 = load double, ptr %s, align 8
  %neg192 = fneg double %conv190
  %252 = call double @llvm.fmuladd.f64(double %neg192, double %250, double %251)
  store double %252, ptr %s, align 8
  %253 = load ptr, ptr %xk.addr, align 8
  %arrayidx193 = getelementptr inbounds i16, ptr %253, i64 367
  %254 = load i16, ptr %arrayidx193, align 2
  %conv195 = sitofp i16 %254 to double
  %255 = load ptr, ptr %wp, align 8
  %incdec.ptr196 = getelementptr inbounds double, ptr %255, i64 1
  store ptr %incdec.ptr196, ptr %wp, align 8
  %256 = load double, ptr %255, align 8
  %257 = load double, ptr %s, align 8
  %neg197 = fneg double %conv195
  %258 = call double @llvm.fmuladd.f64(double %neg197, double %256, double %257)
  store double %258, ptr %s, align 8
  %259 = load ptr, ptr %xk.addr, align 8
  %arrayidx198 = getelementptr inbounds i16, ptr %259, i64 431
  %260 = load i16, ptr %arrayidx198, align 2
  %conv200 = sitofp i16 %260 to double
  %261 = load ptr, ptr %wp, align 8
  %incdec.ptr201 = getelementptr inbounds double, ptr %261, i64 1
  store ptr %incdec.ptr201, ptr %wp, align 8
  %262 = load double, ptr %261, align 8
  %263 = load double, ptr %s, align 8
  %neg202 = fneg double %conv200
  %264 = call double @llvm.fmuladd.f64(double %neg202, double %262, double %263)
  store double %264, ptr %s, align 8
  %265 = load ptr, ptr %xk.addr, align 8
  %arrayidx203 = getelementptr inbounds i16, ptr %265, i64 495
  %266 = load i16, ptr %arrayidx203, align 2
  %conv205 = sitofp i16 %266 to double
  %267 = load ptr, ptr %wp, align 8
  %incdec.ptr206 = getelementptr inbounds double, ptr %267, i64 1
  store ptr %incdec.ptr206, ptr %wp, align 8
  %268 = load double, ptr %267, align 8
  %269 = load double, ptr %s, align 8
  %neg207 = fneg double %conv205
  %270 = call double @llvm.fmuladd.f64(double %neg207, double %268, double %269)
  store double %270, ptr %s, align 8
  %271 = load ptr, ptr %in.addr, align 8
  %incdec.ptr208 = getelementptr inbounds double, ptr %271, i64 1
  store ptr %incdec.ptr208, ptr %in.addr, align 8
  store ptr @mm, ptr %wp, align 8
  br label %for.cond209

for.cond209:                                      ; preds = %for.end226, %for.end
  %storemerge1 = phi i32 [ 15, %for.end ], [ %dec235, %for.end226 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp210 = icmp sgt i32 %storemerge1, -1
  br i1 %cmp210, label %for.body212, label %for.end236

for.body212:                                      ; preds = %for.cond209
  %272 = load double, ptr %s, align 8
  store double %272, ptr %s0, align 8
  %273 = load double, ptr %t, align 8
  %274 = load ptr, ptr %wp, align 8
  %incdec.ptr213 = getelementptr inbounds double, ptr %274, i64 1
  store ptr %incdec.ptr213, ptr %wp, align 8
  %275 = load double, ptr %274, align 8
  %mul = fmul double %273, %275
  store double %mul, ptr %s1, align 8
  br label %for.cond214

for.cond214:                                      ; preds = %for.body217, %for.body212
  %storemerge2 = phi i32 [ 14, %for.body212 ], [ %dec225, %for.body217 ]
  store i32 %storemerge2, ptr %j, align 4
  %cmp215 = icmp sgt i32 %storemerge2, -1
  br i1 %cmp215, label %for.body217, label %for.end226

for.body217:                                      ; preds = %for.cond214
  %276 = load ptr, ptr %wp, align 8
  %incdec.ptr218 = getelementptr inbounds double, ptr %276, i64 1
  store ptr %incdec.ptr218, ptr %wp, align 8
  %277 = load double, ptr %276, align 8
  %278 = load ptr, ptr %in.addr, align 8
  %incdec.ptr219 = getelementptr inbounds double, ptr %278, i64 1
  store ptr %incdec.ptr219, ptr %in.addr, align 8
  %279 = load double, ptr %278, align 8
  %280 = load double, ptr %s0, align 8
  %281 = call double @llvm.fmuladd.f64(double %277, double %279, double %280)
  store double %281, ptr %s0, align 8
  %282 = load ptr, ptr %wp, align 8
  %incdec.ptr221 = getelementptr inbounds double, ptr %282, i64 1
  store ptr %incdec.ptr221, ptr %wp, align 8
  %283 = load double, ptr %282, align 8
  %284 = load ptr, ptr %in.addr, align 8
  %incdec.ptr222 = getelementptr inbounds double, ptr %284, i64 1
  store ptr %incdec.ptr222, ptr %in.addr, align 8
  %285 = load double, ptr %284, align 8
  %286 = load double, ptr %s1, align 8
  %287 = call double @llvm.fmuladd.f64(double %283, double %285, double %286)
  store double %287, ptr %s1, align 8
  %288 = load i32, ptr %j, align 4
  %dec225 = add nsw i32 %288, -1
  br label %for.cond214, !llvm.loop !43

for.end226:                                       ; preds = %for.cond214
  %289 = load ptr, ptr %in.addr, align 8
  %add.ptr = getelementptr inbounds double, ptr %289, i64 -30
  store ptr %add.ptr, ptr %in.addr, align 8
  %290 = load double, ptr %s0, align 8
  %291 = load double, ptr %s1, align 8
  %add227 = fadd double %290, %291
  %292 = load ptr, ptr %d.addr, align 8
  %293 = load i32, ptr %i, align 4
  %idxprom228 = sext i32 %293 to i64
  %arrayidx229 = getelementptr inbounds double, ptr %292, i64 %idxprom228
  store double %add227, ptr %arrayidx229, align 8
  %294 = load double, ptr %s0, align 8
  %295 = load double, ptr %s1, align 8
  %sub230 = fsub double %294, %295
  %296 = load ptr, ptr %d.addr, align 8
  %297 = load i32, ptr %i, align 4
  %sub231 = sub nsw i32 31, %297
  %idxprom232 = sext i32 %sub231 to i64
  %arrayidx233 = getelementptr inbounds double, ptr %296, i64 %idxprom232
  store double %sub230, ptr %arrayidx233, align 8
  %298 = load i32, ptr %i, align 4
  %dec235 = add nsw i32 %298, -1
  br label %for.cond209, !llvm.loop !44

for.end236:                                       ; preds = %for.cond209
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind ssp uwtable
define internal void @mdct_short(ptr noundef %out, ptr noundef %in) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %l = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %a3 = alloca double, align 8
  %a4 = alloca double, align 8
  %a5 = alloca double, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %storemerge = phi i32 [ 5, %entry ], [ %dec52, %for.inc51 ]
  store i32 %storemerge, ptr %m, align 4
  %cmp = icmp sgt i32 %storemerge, -1
  br i1 %cmp, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %m, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8
  store double %1, ptr %a0, align 8
  %idxprom2 = sext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom2, i64 1
  %2 = load double, ptr %arrayidx4, align 8
  store double %2, ptr %a1, align 8
  %3 = load i32, ptr %m, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx7 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom5, i64 2
  %4 = load double, ptr %arrayidx7, align 8
  store double %4, ptr %a2, align 8
  %idxprom8 = sext i32 %3 to i64
  %arrayidx10 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom8, i64 3
  %5 = load double, ptr %arrayidx10, align 8
  store double %5, ptr %a3, align 8
  %6 = load i32, ptr %m, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom11, i64 4
  %7 = load double, ptr %arrayidx13, align 8
  store double %7, ptr %a4, align 8
  %idxprom14 = sext i32 %6 to i64
  %arrayidx16 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom14, i64 5
  %8 = load double, ptr %arrayidx16, align 8
  store double %8, ptr %a5, align 8
  br label %for.cond17

for.cond17:                                       ; preds = %for.body19, %for.body
  %storemerge1 = phi i32 [ 2, %for.body ], [ %dec, %for.body19 ]
  store i32 %storemerge1, ptr %l, align 4
  %cmp18 = icmp sgt i32 %storemerge1, -1
  br i1 %cmp18, label %for.body19, label %for.inc51

for.body19:                                       ; preds = %for.cond17
  %9 = load double, ptr %a0, align 8
  %10 = load ptr, ptr %in.addr, align 8
  %11 = load i32, ptr %l, align 4
  %mul = mul nsw i32 %11, 6
  %idxprom20 = sext i32 %mul to i64
  %arrayidx21 = getelementptr inbounds double, ptr %10, i64 %idxprom20
  %12 = load double, ptr %arrayidx21, align 8
  %13 = load double, ptr %a1, align 8
  %14 = load ptr, ptr %in.addr, align 8
  %15 = load i32, ptr %l, align 4
  %mul23 = mul nsw i32 %15, 6
  %add = or i32 %mul23, 1
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds double, ptr %14, i64 %idxprom24
  %16 = load double, ptr %arrayidx25, align 8
  %mul26 = fmul double %13, %16
  %17 = call double @llvm.fmuladd.f64(double %9, double %12, double %mul26)
  %18 = load double, ptr %a2, align 8
  %19 = load ptr, ptr %in.addr, align 8
  %20 = load i32, ptr %l, align 4
  %mul27 = mul nsw i32 %20, 6
  %add28 = add nsw i32 %mul27, 2
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %19, i64 %idxprom29
  %21 = load double, ptr %arrayidx30, align 8
  %22 = call double @llvm.fmuladd.f64(double %18, double %21, double %17)
  %23 = load double, ptr %a3, align 8
  %24 = load ptr, ptr %in.addr, align 8
  %25 = load i32, ptr %l, align 4
  %mul32 = mul nsw i32 %25, 6
  %add33 = add nsw i32 %mul32, 3
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds double, ptr %24, i64 %idxprom34
  %26 = load double, ptr %arrayidx35, align 8
  %27 = call double @llvm.fmuladd.f64(double %23, double %26, double %22)
  %28 = load double, ptr %a4, align 8
  %29 = load ptr, ptr %in.addr, align 8
  %30 = load i32, ptr %l, align 4
  %mul37 = mul nsw i32 %30, 6
  %add38 = add nsw i32 %mul37, 4
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds double, ptr %29, i64 %idxprom39
  %31 = load double, ptr %arrayidx40, align 8
  %32 = call double @llvm.fmuladd.f64(double %28, double %31, double %27)
  %33 = load double, ptr %a5, align 8
  %34 = load ptr, ptr %in.addr, align 8
  %35 = load i32, ptr %l, align 4
  %mul42 = mul nsw i32 %35, 6
  %add43 = add nsw i32 %mul42, 5
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %34, i64 %idxprom44
  %36 = load double, ptr %arrayidx45, align 8
  %37 = call double @llvm.fmuladd.f64(double %33, double %36, double %32)
  %38 = load ptr, ptr %out.addr, align 8
  %39 = load i32, ptr %m, align 4
  %mul47 = mul nsw i32 %39, 3
  %40 = load i32, ptr %l, align 4
  %add48 = add nsw i32 %mul47, %40
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %38, i64 %idxprom49
  store double %37, ptr %arrayidx50, align 8
  %41 = load i32, ptr %l, align 4
  %dec = add nsw i32 %41, -1
  br label %for.cond17, !llvm.loop !45

for.inc51:                                        ; preds = %for.cond17
  %42 = load i32, ptr %m, align 4
  %dec52 = add nsw i32 %42, -1
  br label %for.cond, !llvm.loop !46

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @mdct_long(ptr noundef %out, ptr noundef %in) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %s0 = alloca double, align 8
  %s1 = alloca double, align 8
  %s2 = alloca double, align 8
  %s3 = alloca double, align 8
  %s4 = alloca double, align 8
  %s5 = alloca double, align 8
  %j = alloca i32, align 4
  %cos_l0 = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store i32 11, ptr %j, align 4
  store ptr @cos_l, ptr %cos_l0, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %0 = load ptr, ptr %in.addr, align 8
  %1 = load double, ptr %0, align 8
  %2 = load ptr, ptr %cos_l0, align 8
  %3 = load double, ptr %2, align 8
  %arrayidx2 = getelementptr inbounds double, ptr %0, i64 1
  %4 = load double, ptr %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds double, ptr %2, i64 1
  %5 = load double, ptr %arrayidx3, align 8
  %mul4 = fmul double %4, %5
  %6 = call double @llvm.fmuladd.f64(double %1, double %3, double %mul4)
  %7 = load ptr, ptr %in.addr, align 8
  %arrayidx5 = getelementptr inbounds double, ptr %7, i64 2
  %8 = load double, ptr %arrayidx5, align 8
  %9 = load ptr, ptr %cos_l0, align 8
  %arrayidx6 = getelementptr inbounds double, ptr %9, i64 2
  %10 = load double, ptr %arrayidx6, align 8
  %11 = call double @llvm.fmuladd.f64(double %8, double %10, double %6)
  %12 = load ptr, ptr %in.addr, align 8
  %arrayidx7 = getelementptr inbounds double, ptr %12, i64 3
  %13 = load double, ptr %arrayidx7, align 8
  %14 = load ptr, ptr %cos_l0, align 8
  %arrayidx8 = getelementptr inbounds double, ptr %14, i64 3
  %15 = load double, ptr %arrayidx8, align 8
  %16 = call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  %17 = load ptr, ptr %in.addr, align 8
  %arrayidx9 = getelementptr inbounds double, ptr %17, i64 4
  %18 = load double, ptr %arrayidx9, align 8
  %19 = load ptr, ptr %cos_l0, align 8
  %arrayidx10 = getelementptr inbounds double, ptr %19, i64 4
  %20 = load double, ptr %arrayidx10, align 8
  %21 = call double @llvm.fmuladd.f64(double %18, double %20, double %16)
  %22 = load ptr, ptr %in.addr, align 8
  %arrayidx11 = getelementptr inbounds double, ptr %22, i64 5
  %23 = load double, ptr %arrayidx11, align 8
  %24 = load ptr, ptr %cos_l0, align 8
  %arrayidx12 = getelementptr inbounds double, ptr %24, i64 5
  %25 = load double, ptr %arrayidx12, align 8
  %26 = call double @llvm.fmuladd.f64(double %23, double %25, double %21)
  %27 = load ptr, ptr %in.addr, align 8
  %arrayidx13 = getelementptr inbounds double, ptr %27, i64 6
  %28 = load double, ptr %arrayidx13, align 8
  %29 = load ptr, ptr %cos_l0, align 8
  %arrayidx14 = getelementptr inbounds double, ptr %29, i64 6
  %30 = load double, ptr %arrayidx14, align 8
  %31 = call double @llvm.fmuladd.f64(double %28, double %30, double %26)
  %32 = load ptr, ptr %in.addr, align 8
  %arrayidx15 = getelementptr inbounds double, ptr %32, i64 7
  %33 = load double, ptr %arrayidx15, align 8
  %34 = load ptr, ptr %cos_l0, align 8
  %arrayidx16 = getelementptr inbounds double, ptr %34, i64 7
  %35 = load double, ptr %arrayidx16, align 8
  %36 = call double @llvm.fmuladd.f64(double %33, double %35, double %31)
  %37 = load ptr, ptr %in.addr, align 8
  %arrayidx17 = getelementptr inbounds double, ptr %37, i64 8
  %38 = load double, ptr %arrayidx17, align 8
  %39 = load ptr, ptr %cos_l0, align 8
  %arrayidx18 = getelementptr inbounds double, ptr %39, i64 8
  %40 = load double, ptr %arrayidx18, align 8
  %41 = call double @llvm.fmuladd.f64(double %38, double %40, double %36)
  %42 = load ptr, ptr %in.addr, align 8
  %arrayidx19 = getelementptr inbounds double, ptr %42, i64 9
  %43 = load double, ptr %arrayidx19, align 8
  %44 = load ptr, ptr %cos_l0, align 8
  %arrayidx20 = getelementptr inbounds double, ptr %44, i64 9
  %45 = load double, ptr %arrayidx20, align 8
  %46 = call double @llvm.fmuladd.f64(double %43, double %45, double %41)
  %47 = load ptr, ptr %in.addr, align 8
  %arrayidx21 = getelementptr inbounds double, ptr %47, i64 10
  %48 = load double, ptr %arrayidx21, align 8
  %49 = load ptr, ptr %cos_l0, align 8
  %arrayidx22 = getelementptr inbounds double, ptr %49, i64 10
  %50 = load double, ptr %arrayidx22, align 8
  %51 = call double @llvm.fmuladd.f64(double %48, double %50, double %46)
  %52 = load ptr, ptr %in.addr, align 8
  %arrayidx23 = getelementptr inbounds double, ptr %52, i64 11
  %53 = load double, ptr %arrayidx23, align 8
  %54 = load ptr, ptr %cos_l0, align 8
  %arrayidx24 = getelementptr inbounds double, ptr %54, i64 11
  %55 = load double, ptr %arrayidx24, align 8
  %56 = call double @llvm.fmuladd.f64(double %53, double %55, double %51)
  %57 = load ptr, ptr %in.addr, align 8
  %arrayidx25 = getelementptr inbounds double, ptr %57, i64 12
  %58 = load double, ptr %arrayidx25, align 8
  %59 = load ptr, ptr %cos_l0, align 8
  %arrayidx26 = getelementptr inbounds double, ptr %59, i64 12
  %60 = load double, ptr %arrayidx26, align 8
  %61 = call double @llvm.fmuladd.f64(double %58, double %60, double %56)
  %62 = load ptr, ptr %in.addr, align 8
  %arrayidx27 = getelementptr inbounds double, ptr %62, i64 13
  %63 = load double, ptr %arrayidx27, align 8
  %64 = load ptr, ptr %cos_l0, align 8
  %arrayidx28 = getelementptr inbounds double, ptr %64, i64 13
  %65 = load double, ptr %arrayidx28, align 8
  %66 = call double @llvm.fmuladd.f64(double %63, double %65, double %61)
  %67 = load ptr, ptr %in.addr, align 8
  %arrayidx29 = getelementptr inbounds double, ptr %67, i64 14
  %68 = load double, ptr %arrayidx29, align 8
  %69 = load ptr, ptr %cos_l0, align 8
  %arrayidx30 = getelementptr inbounds double, ptr %69, i64 14
  %70 = load double, ptr %arrayidx30, align 8
  %71 = call double @llvm.fmuladd.f64(double %68, double %70, double %66)
  %72 = load ptr, ptr %in.addr, align 8
  %arrayidx31 = getelementptr inbounds double, ptr %72, i64 15
  %73 = load double, ptr %arrayidx31, align 8
  %74 = load ptr, ptr %cos_l0, align 8
  %arrayidx32 = getelementptr inbounds double, ptr %74, i64 15
  %75 = load double, ptr %arrayidx32, align 8
  %76 = call double @llvm.fmuladd.f64(double %73, double %75, double %71)
  %77 = load ptr, ptr %in.addr, align 8
  %arrayidx33 = getelementptr inbounds double, ptr %77, i64 16
  %78 = load double, ptr %arrayidx33, align 8
  %79 = load ptr, ptr %cos_l0, align 8
  %arrayidx34 = getelementptr inbounds double, ptr %79, i64 16
  %80 = load double, ptr %arrayidx34, align 8
  %81 = call double @llvm.fmuladd.f64(double %78, double %80, double %76)
  %82 = load ptr, ptr %in.addr, align 8
  %arrayidx35 = getelementptr inbounds double, ptr %82, i64 17
  %83 = load double, ptr %arrayidx35, align 8
  %84 = load ptr, ptr %cos_l0, align 8
  %arrayidx36 = getelementptr inbounds double, ptr %84, i64 17
  %85 = load double, ptr %arrayidx36, align 8
  %86 = call double @llvm.fmuladd.f64(double %83, double %85, double %81)
  %87 = load ptr, ptr %out.addr, align 8
  %88 = load i32, ptr %j, align 4
  %idxprom = sext i32 %88 to i64
  %arrayidx37 = getelementptr inbounds [12 x i32], ptr @all, i64 0, i64 %idxprom
  %89 = load i32, ptr %arrayidx37, align 4
  %idxprom38 = sext i32 %89 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %87, i64 %idxprom38
  store double %86, ptr %arrayidx39, align 8
  %90 = load ptr, ptr %cos_l0, align 8
  %add.ptr = getelementptr inbounds double, ptr %90, i64 18
  store ptr %add.ptr, ptr %cos_l0, align 8
  %91 = load i32, ptr %j, align 4
  %dec = add nsw i32 %91, -1
  store i32 %dec, ptr %j, align 4
  %cmp = icmp sgt i32 %91, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !47

do.end:                                           ; preds = %do.body
  %92 = load ptr, ptr %in.addr, align 8
  %93 = load double, ptr %92, align 8
  %arrayidx41 = getelementptr inbounds double, ptr %92, i64 5
  %94 = load double, ptr %arrayidx41, align 8
  %add = fadd double %93, %94
  %arrayidx42 = getelementptr inbounds double, ptr %92, i64 15
  %95 = load double, ptr %arrayidx42, align 8
  %add43 = fadd double %add, %95
  store double %add43, ptr %s0, align 8
  %96 = load ptr, ptr %in.addr, align 8
  %arrayidx44 = getelementptr inbounds double, ptr %96, i64 1
  %97 = load double, ptr %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds double, ptr %96, i64 4
  %98 = load double, ptr %arrayidx45, align 8
  %add46 = fadd double %97, %98
  %arrayidx47 = getelementptr inbounds double, ptr %96, i64 16
  %99 = load double, ptr %arrayidx47, align 8
  %add48 = fadd double %add46, %99
  store double %add48, ptr %s1, align 8
  %100 = load ptr, ptr %in.addr, align 8
  %arrayidx49 = getelementptr inbounds double, ptr %100, i64 2
  %101 = load double, ptr %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds double, ptr %100, i64 3
  %102 = load double, ptr %arrayidx50, align 8
  %add51 = fadd double %101, %102
  %arrayidx52 = getelementptr inbounds double, ptr %100, i64 17
  %103 = load double, ptr %arrayidx52, align 8
  %add53 = fadd double %add51, %103
  store double %add53, ptr %s2, align 8
  %104 = load ptr, ptr %in.addr, align 8
  %arrayidx54 = getelementptr inbounds double, ptr %104, i64 6
  %105 = load double, ptr %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds double, ptr %104, i64 9
  %106 = load double, ptr %arrayidx55, align 8
  %sub = fsub double %105, %106
  %arrayidx56 = getelementptr inbounds double, ptr %104, i64 14
  %107 = load double, ptr %arrayidx56, align 8
  %add57 = fadd double %sub, %107
  store double %add57, ptr %s3, align 8
  %108 = load ptr, ptr %in.addr, align 8
  %arrayidx58 = getelementptr inbounds double, ptr %108, i64 7
  %109 = load double, ptr %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds double, ptr %108, i64 10
  %110 = load double, ptr %arrayidx59, align 8
  %sub60 = fsub double %109, %110
  %arrayidx61 = getelementptr inbounds double, ptr %108, i64 13
  %111 = load double, ptr %arrayidx61, align 8
  %add62 = fadd double %sub60, %111
  store double %add62, ptr %s4, align 8
  %112 = load ptr, ptr %in.addr, align 8
  %arrayidx63 = getelementptr inbounds double, ptr %112, i64 8
  %113 = load double, ptr %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds double, ptr %112, i64 11
  %114 = load double, ptr %arrayidx64, align 8
  %sub65 = fsub double %113, %114
  %arrayidx66 = getelementptr inbounds double, ptr %112, i64 12
  %115 = load double, ptr %arrayidx66, align 8
  %add67 = fadd double %sub65, %115
  store double %add67, ptr %s5, align 8
  %116 = load double, ptr %s0, align 8
  %117 = load ptr, ptr %cos_l0, align 8
  %118 = load double, ptr %117, align 8
  %119 = load double, ptr %s1, align 8
  %arrayidx69 = getelementptr inbounds double, ptr %117, i64 1
  %120 = load double, ptr %arrayidx69, align 8
  %mul70 = fmul double %119, %120
  %121 = call double @llvm.fmuladd.f64(double %116, double %118, double %mul70)
  %122 = load double, ptr %s2, align 8
  %123 = load ptr, ptr %cos_l0, align 8
  %arrayidx71 = getelementptr inbounds double, ptr %123, i64 2
  %124 = load double, ptr %arrayidx71, align 8
  %125 = call double @llvm.fmuladd.f64(double %122, double %124, double %121)
  %126 = load double, ptr %s3, align 8
  %arrayidx72 = getelementptr inbounds double, ptr %123, i64 3
  %127 = load double, ptr %arrayidx72, align 8
  %128 = call double @llvm.fmuladd.f64(double %126, double %127, double %125)
  %129 = load double, ptr %s4, align 8
  %130 = load ptr, ptr %cos_l0, align 8
  %arrayidx73 = getelementptr inbounds double, ptr %130, i64 4
  %131 = load double, ptr %arrayidx73, align 8
  %132 = call double @llvm.fmuladd.f64(double %129, double %131, double %128)
  %133 = load double, ptr %s5, align 8
  %arrayidx74 = getelementptr inbounds double, ptr %130, i64 5
  %134 = load double, ptr %arrayidx74, align 8
  %135 = call double @llvm.fmuladd.f64(double %133, double %134, double %132)
  %136 = load ptr, ptr %out.addr, align 8
  %arrayidx75 = getelementptr inbounds double, ptr %136, i64 16
  store double %135, ptr %arrayidx75, align 8
  %137 = load ptr, ptr %cos_l0, align 8
  %add.ptr76 = getelementptr inbounds double, ptr %137, i64 6
  store ptr %add.ptr76, ptr %cos_l0, align 8
  %138 = load double, ptr %s0, align 8
  %139 = load double, ptr %add.ptr76, align 8
  %140 = load double, ptr %s1, align 8
  %arrayidx78 = getelementptr inbounds double, ptr %137, i64 7
  %141 = load double, ptr %arrayidx78, align 8
  %mul79 = fmul double %140, %141
  %142 = call double @llvm.fmuladd.f64(double %138, double %139, double %mul79)
  %143 = load double, ptr %s2, align 8
  %144 = load ptr, ptr %cos_l0, align 8
  %arrayidx80 = getelementptr inbounds double, ptr %144, i64 2
  %145 = load double, ptr %arrayidx80, align 8
  %146 = call double @llvm.fmuladd.f64(double %143, double %145, double %142)
  %147 = load double, ptr %s3, align 8
  %arrayidx81 = getelementptr inbounds double, ptr %144, i64 3
  %148 = load double, ptr %arrayidx81, align 8
  %149 = call double @llvm.fmuladd.f64(double %147, double %148, double %146)
  %150 = load double, ptr %s4, align 8
  %151 = load ptr, ptr %cos_l0, align 8
  %arrayidx82 = getelementptr inbounds double, ptr %151, i64 4
  %152 = load double, ptr %arrayidx82, align 8
  %153 = call double @llvm.fmuladd.f64(double %150, double %152, double %149)
  %154 = load double, ptr %s5, align 8
  %arrayidx83 = getelementptr inbounds double, ptr %151, i64 5
  %155 = load double, ptr %arrayidx83, align 8
  %156 = call double @llvm.fmuladd.f64(double %154, double %155, double %153)
  %157 = load ptr, ptr %out.addr, align 8
  %arrayidx84 = getelementptr inbounds double, ptr %157, i64 10
  store double %156, ptr %arrayidx84, align 8
  %158 = load ptr, ptr %cos_l0, align 8
  %add.ptr85 = getelementptr inbounds double, ptr %158, i64 6
  store ptr %add.ptr85, ptr %cos_l0, align 8
  %159 = load double, ptr %s0, align 8
  %160 = load double, ptr %add.ptr85, align 8
  %161 = load double, ptr %s1, align 8
  %arrayidx87 = getelementptr inbounds double, ptr %158, i64 7
  %162 = load double, ptr %arrayidx87, align 8
  %mul88 = fmul double %161, %162
  %163 = call double @llvm.fmuladd.f64(double %159, double %160, double %mul88)
  %164 = load double, ptr %s2, align 8
  %165 = load ptr, ptr %cos_l0, align 8
  %arrayidx89 = getelementptr inbounds double, ptr %165, i64 2
  %166 = load double, ptr %arrayidx89, align 8
  %167 = call double @llvm.fmuladd.f64(double %164, double %166, double %163)
  %168 = load double, ptr %s3, align 8
  %arrayidx90 = getelementptr inbounds double, ptr %165, i64 3
  %169 = load double, ptr %arrayidx90, align 8
  %170 = call double @llvm.fmuladd.f64(double %168, double %169, double %167)
  %171 = load double, ptr %s4, align 8
  %172 = load ptr, ptr %cos_l0, align 8
  %arrayidx91 = getelementptr inbounds double, ptr %172, i64 4
  %173 = load double, ptr %arrayidx91, align 8
  %174 = call double @llvm.fmuladd.f64(double %171, double %173, double %170)
  %175 = load double, ptr %s5, align 8
  %arrayidx92 = getelementptr inbounds double, ptr %172, i64 5
  %176 = load double, ptr %arrayidx92, align 8
  %177 = call double @llvm.fmuladd.f64(double %175, double %176, double %174)
  %178 = load ptr, ptr %out.addr, align 8
  %arrayidx93 = getelementptr inbounds double, ptr %178, i64 7
  store double %177, ptr %arrayidx93, align 8
  %179 = load ptr, ptr %cos_l0, align 8
  %add.ptr94 = getelementptr inbounds double, ptr %179, i64 6
  store ptr %add.ptr94, ptr %cos_l0, align 8
  %180 = load double, ptr %s0, align 8
  %181 = load double, ptr %add.ptr94, align 8
  %182 = load double, ptr %s1, align 8
  %arrayidx96 = getelementptr inbounds double, ptr %179, i64 7
  %183 = load double, ptr %arrayidx96, align 8
  %mul97 = fmul double %182, %183
  %184 = call double @llvm.fmuladd.f64(double %180, double %181, double %mul97)
  %185 = load double, ptr %s2, align 8
  %186 = load ptr, ptr %cos_l0, align 8
  %arrayidx98 = getelementptr inbounds double, ptr %186, i64 2
  %187 = load double, ptr %arrayidx98, align 8
  %188 = call double @llvm.fmuladd.f64(double %185, double %187, double %184)
  %189 = load double, ptr %s3, align 8
  %arrayidx99 = getelementptr inbounds double, ptr %186, i64 3
  %190 = load double, ptr %arrayidx99, align 8
  %191 = call double @llvm.fmuladd.f64(double %189, double %190, double %188)
  %192 = load double, ptr %s4, align 8
  %193 = load ptr, ptr %cos_l0, align 8
  %arrayidx100 = getelementptr inbounds double, ptr %193, i64 4
  %194 = load double, ptr %arrayidx100, align 8
  %195 = call double @llvm.fmuladd.f64(double %192, double %194, double %191)
  %196 = load double, ptr %s5, align 8
  %arrayidx101 = getelementptr inbounds double, ptr %193, i64 5
  %197 = load double, ptr %arrayidx101, align 8
  %198 = call double @llvm.fmuladd.f64(double %196, double %197, double %195)
  %199 = load ptr, ptr %out.addr, align 8
  %arrayidx102 = getelementptr inbounds double, ptr %199, i64 1
  store double %198, ptr %arrayidx102, align 8
  %200 = load ptr, ptr %cos_l0, align 8
  %add.ptr103 = getelementptr inbounds double, ptr %200, i64 6
  store ptr %add.ptr103, ptr %cos_l0, align 8
  %201 = load double, ptr %s0, align 8
  %202 = load double, ptr %s1, align 8
  %sub104 = fsub double %201, %202
  %203 = load double, ptr %s5, align 8
  %add105 = fadd double %sub104, %203
  store double %add105, ptr %s0, align 8
  %204 = load double, ptr %s2, align 8
  %205 = load double, ptr %s3, align 8
  %sub106 = fsub double %204, %205
  %206 = load double, ptr %s4, align 8
  %sub107 = fsub double %sub106, %206
  store double %sub107, ptr %s2, align 8
  %207 = load double, ptr %s0, align 8
  %208 = load ptr, ptr %cos_l0, align 8
  %209 = load double, ptr %208, align 8
  %arrayidx109 = getelementptr inbounds double, ptr %208, i64 1
  %210 = load double, ptr %arrayidx109, align 8
  %mul110 = fmul double %sub107, %210
  %211 = call double @llvm.fmuladd.f64(double %207, double %209, double %mul110)
  %212 = load ptr, ptr %out.addr, align 8
  %arrayidx111 = getelementptr inbounds double, ptr %212, i64 13
  store double %211, ptr %arrayidx111, align 8
  %213 = load double, ptr %s0, align 8
  %214 = load ptr, ptr %cos_l0, align 8
  %arrayidx112 = getelementptr inbounds double, ptr %214, i64 2
  %215 = load double, ptr %arrayidx112, align 8
  %216 = load double, ptr %s2, align 8
  %arrayidx113 = getelementptr inbounds double, ptr %214, i64 3
  %217 = load double, ptr %arrayidx113, align 8
  %mul114 = fmul double %216, %217
  %218 = call double @llvm.fmuladd.f64(double %213, double %215, double %mul114)
  %219 = load ptr, ptr %out.addr, align 8
  %arrayidx115 = getelementptr inbounds double, ptr %219, i64 4
  store double %218, ptr %arrayidx115, align 8
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #1

; Function Attrs: nounwind readnone willreturn
declare double @tan(double noundef) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

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
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
