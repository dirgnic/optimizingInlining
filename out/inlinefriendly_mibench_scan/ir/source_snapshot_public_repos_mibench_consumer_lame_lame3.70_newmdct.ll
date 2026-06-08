; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/newmdct.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/newmdct.c"
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc416, %if.end
  %3 = load i32, ptr %ch, align 4
  %4 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 46
  %5 = load i32, ptr %stereo, align 4
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %for.body, label %for.end418

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %gr, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc395, %for.body
  %6 = load i32, ptr %gr, align 4
  %7 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %7, i32 0, i32 45
  %8 = load i32, ptr %mode_gr, align 8
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body4, label %for.end397

for.body4:                                        ; preds = %for.cond2
  %9 = load ptr, ptr %mdct_freq.addr, align 8
  %10 = load i32, ptr %gr, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [2 x [576 x double]], ptr %9, i64 %idxprom
  %11 = load i32, ptr %ch, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx, i64 0, i64 %idxprom5
  %arraydecay = getelementptr inbounds [576 x double], ptr %arrayidx6, i64 0, i64 0
  store ptr %arraydecay, ptr %mdct_enc, align 8
  %12 = load ptr, ptr %l3_side.addr, align 8
  %gr7 = getelementptr inbounds %struct.III_side_info_t, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %gr, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [2 x %struct.anon], ptr %gr7, i64 0, i64 %idxprom8
  %ch10 = getelementptr inbounds %struct.anon, ptr %arrayidx9, i32 0, i32 0
  %14 = load i32, ptr %ch, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch10, i64 0, i64 %idxprom11
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx12, i32 0, i32 0
  store ptr %tt, ptr %gi, align 8
  %15 = load i32, ptr %ch, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom13
  %16 = load i32, ptr %gr, align 4
  %sub = sub nsw i32 1, %16
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx14, i64 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx16, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [32 x double], ptr %arrayidx17, i64 0, i64 0
  store ptr %arraydecay18, ptr %samp, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc31, %for.body4
  %17 = load i32, ptr %k, align 4
  %cmp20 = icmp slt i32 %17, 9
  br i1 %cmp20, label %for.body21, label %for.end33

for.body21:                                       ; preds = %for.cond19
  %18 = load ptr, ptr %wk, align 8
  %19 = load ptr, ptr %samp, align 8
  call void @window_subband(ptr noundef %18, ptr noundef %19, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4))
  %20 = load ptr, ptr %wk, align 8
  %add.ptr = getelementptr inbounds i16, ptr %20, i64 32
  %21 = load ptr, ptr %samp, align 8
  %add.ptr22 = getelementptr inbounds double, ptr %21, i64 32
  call void @window_subband(ptr noundef %add.ptr, ptr noundef %add.ptr22, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4))
  store i32 1, ptr %band, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %for.body21
  %22 = load i32, ptr %band, align 4
  %cmp24 = icmp slt i32 %22, 32
  br i1 %cmp24, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond23
  %23 = load ptr, ptr %samp, align 8
  %24 = load i32, ptr %band, align 4
  %add = add nsw i32 %24, 32
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds double, ptr %23, i64 %idxprom26
  %25 = load double, ptr %arrayidx27, align 8
  %mul = fmul double %25, -1.000000e+00
  store double %mul, ptr %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body25
  %26 = load i32, ptr %band, align 4
  %add28 = add nsw i32 %26, 2
  store i32 %add28, ptr %band, align 4
  br label %for.cond23, !llvm.loop !6

for.end:                                          ; preds = %for.cond23
  %27 = load ptr, ptr %samp, align 8
  %add.ptr29 = getelementptr inbounds double, ptr %27, i64 64
  store ptr %add.ptr29, ptr %samp, align 8
  %28 = load ptr, ptr %wk, align 8
  %add.ptr30 = getelementptr inbounds i16, ptr %28, i64 64
  store ptr %add.ptr30, ptr %wk, align 8
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %29 = load i32, ptr %k, align 4
  %inc32 = add nsw i32 %29, 1
  store i32 %inc32, ptr %k, align 4
  br label %for.cond19, !llvm.loop !8

for.end33:                                        ; preds = %for.cond19
  %30 = load ptr, ptr %gfp.addr, align 8
  %filter_type = getelementptr inbounds %struct.lame_global_flags, ptr %30, i32 0, i32 59
  %31 = load i32, ptr %filter_type, align 8
  %cmp34 = icmp eq i32 %31, 0
  br i1 %cmp34, label %if.then35, label %if.end112

if.then35:                                        ; preds = %for.end33
  %32 = load ptr, ptr %gfp.addr, align 8
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %32, i32 0, i32 58
  %33 = load i32, ptr %highpass_band, align 4
  %add36 = add nsw i32 %33, 1
  store i32 %add36, ptr %band, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc109, %if.then35
  %34 = load i32, ptr %band, align 4
  %35 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %35, i32 0, i32 57
  %36 = load i32, ptr %lowpass_band, align 8
  %cmp38 = icmp slt i32 %34, %36
  br i1 %cmp38, label %for.body39, label %for.end111

for.body39:                                       ; preds = %for.cond37
  %37 = load i32, ptr %band, align 4
  %conv = sitofp i32 %37 to double
  %div = fdiv double %conv, 3.100000e+01
  store double %div, ptr %freq, align 8
  %38 = load ptr, ptr %gfp.addr, align 8
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %38, i32 0, i32 53
  %39 = load float, ptr %lowpass1, align 8
  %conv40 = fpext float %39 to double
  %40 = load double, ptr %freq, align 8
  %cmp41 = fcmp olt double %conv40, %40
  br i1 %cmp41, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %for.body39
  %41 = load double, ptr %freq, align 8
  %42 = load ptr, ptr %gfp.addr, align 8
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %42, i32 0, i32 54
  %43 = load float, ptr %lowpass2, align 4
  %conv43 = fpext float %43 to double
  %cmp44 = fcmp olt double %41, %conv43
  br i1 %cmp44, label %if.then46, label %if.end73

if.then46:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %gfp.addr, align 8
  %lowpass147 = getelementptr inbounds %struct.lame_global_flags, ptr %44, i32 0, i32 53
  %45 = load float, ptr %lowpass147, align 8
  %conv48 = fpext float %45 to double
  %46 = load double, ptr %freq, align 8
  %sub49 = fsub double %conv48, %46
  %mul50 = fmul double 0x3FF921FB54442D18, %sub49
  %47 = load ptr, ptr %gfp.addr, align 8
  %lowpass251 = getelementptr inbounds %struct.lame_global_flags, ptr %47, i32 0, i32 54
  %48 = load float, ptr %lowpass251, align 4
  %49 = load ptr, ptr %gfp.addr, align 8
  %lowpass152 = getelementptr inbounds %struct.lame_global_flags, ptr %49, i32 0, i32 53
  %50 = load float, ptr %lowpass152, align 8
  %sub53 = fsub float %48, %50
  %conv54 = fpext float %sub53 to double
  %div55 = fdiv double %mul50, %conv54
  %51 = call double @llvm.cos.f64(double %div55)
  store double %51, ptr %amp, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc70, %if.then46
  %52 = load i32, ptr %k, align 4
  %cmp57 = icmp slt i32 %52, 18
  br i1 %cmp57, label %for.body59, label %for.end72

for.body59:                                       ; preds = %for.cond56
  %53 = load double, ptr %amp, align 8
  %54 = load i32, ptr %ch, align 4
  %idxprom60 = sext i32 %54 to i64
  %arrayidx61 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom60
  %55 = load i32, ptr %gr, align 4
  %sub62 = sub nsw i32 1, %55
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx61, i64 0, i64 %idxprom63
  %56 = load i32, ptr %k, align 4
  %idxprom65 = sext i32 %56 to i64
  %arrayidx66 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx64, i64 0, i64 %idxprom65
  %57 = load i32, ptr %band, align 4
  %idxprom67 = sext i32 %57 to i64
  %arrayidx68 = getelementptr inbounds [32 x double], ptr %arrayidx66, i64 0, i64 %idxprom67
  %58 = load double, ptr %arrayidx68, align 8
  %mul69 = fmul double %58, %53
  store double %mul69, ptr %arrayidx68, align 8
  br label %for.inc70

for.inc70:                                        ; preds = %for.body59
  %59 = load i32, ptr %k, align 4
  %inc71 = add nsw i32 %59, 1
  store i32 %inc71, ptr %k, align 4
  br label %for.cond56, !llvm.loop !9

for.end72:                                        ; preds = %for.cond56
  br label %if.end73

if.end73:                                         ; preds = %for.end72, %land.lhs.true, %for.body39
  %60 = load ptr, ptr %gfp.addr, align 8
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %60, i32 0, i32 55
  %61 = load float, ptr %highpass1, align 8
  %conv74 = fpext float %61 to double
  %62 = load double, ptr %freq, align 8
  %cmp75 = fcmp olt double %conv74, %62
  br i1 %cmp75, label %land.lhs.true77, label %if.end108

land.lhs.true77:                                  ; preds = %if.end73
  %63 = load double, ptr %freq, align 8
  %64 = load ptr, ptr %gfp.addr, align 8
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %64, i32 0, i32 56
  %65 = load float, ptr %highpass2, align 4
  %conv78 = fpext float %65 to double
  %cmp79 = fcmp olt double %63, %conv78
  br i1 %cmp79, label %if.then81, label %if.end108

if.then81:                                        ; preds = %land.lhs.true77
  %66 = load ptr, ptr %gfp.addr, align 8
  %highpass282 = getelementptr inbounds %struct.lame_global_flags, ptr %66, i32 0, i32 56
  %67 = load float, ptr %highpass282, align 4
  %conv83 = fpext float %67 to double
  %68 = load double, ptr %freq, align 8
  %sub84 = fsub double %conv83, %68
  %mul85 = fmul double 0x3FF921FB54442D18, %sub84
  %69 = load ptr, ptr %gfp.addr, align 8
  %highpass286 = getelementptr inbounds %struct.lame_global_flags, ptr %69, i32 0, i32 56
  %70 = load float, ptr %highpass286, align 4
  %71 = load ptr, ptr %gfp.addr, align 8
  %highpass187 = getelementptr inbounds %struct.lame_global_flags, ptr %71, i32 0, i32 55
  %72 = load float, ptr %highpass187, align 8
  %sub88 = fsub float %70, %72
  %conv89 = fpext float %sub88 to double
  %div90 = fdiv double %mul85, %conv89
  %73 = call double @llvm.cos.f64(double %div90)
  store double %73, ptr %amp, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc105, %if.then81
  %74 = load i32, ptr %k, align 4
  %cmp92 = icmp slt i32 %74, 18
  br i1 %cmp92, label %for.body94, label %for.end107

for.body94:                                       ; preds = %for.cond91
  %75 = load double, ptr %amp, align 8
  %76 = load i32, ptr %ch, align 4
  %idxprom95 = sext i32 %76 to i64
  %arrayidx96 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom95
  %77 = load i32, ptr %gr, align 4
  %sub97 = sub nsw i32 1, %77
  %idxprom98 = sext i32 %sub97 to i64
  %arrayidx99 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx96, i64 0, i64 %idxprom98
  %78 = load i32, ptr %k, align 4
  %idxprom100 = sext i32 %78 to i64
  %arrayidx101 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx99, i64 0, i64 %idxprom100
  %79 = load i32, ptr %band, align 4
  %idxprom102 = sext i32 %79 to i64
  %arrayidx103 = getelementptr inbounds [32 x double], ptr %arrayidx101, i64 0, i64 %idxprom102
  %80 = load double, ptr %arrayidx103, align 8
  %mul104 = fmul double %80, %75
  store double %mul104, ptr %arrayidx103, align 8
  br label %for.inc105

for.inc105:                                       ; preds = %for.body94
  %81 = load i32, ptr %k, align 4
  %inc106 = add nsw i32 %81, 1
  store i32 %inc106, ptr %k, align 4
  br label %for.cond91, !llvm.loop !10

for.end107:                                       ; preds = %for.cond91
  br label %if.end108

if.end108:                                        ; preds = %for.end107, %land.lhs.true77, %if.end73
  br label %for.inc109

for.inc109:                                       ; preds = %if.end108
  %82 = load i32, ptr %band, align 4
  %inc110 = add nsw i32 %82, 1
  store i32 %inc110, ptr %band, align 4
  br label %for.cond37, !llvm.loop !11

for.end111:                                       ; preds = %for.cond37
  br label %if.end112

if.end112:                                        ; preds = %for.end111, %for.end33
  store i32 0, ptr %band, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc391, %if.end112
  %83 = load i32, ptr %band, align 4
  %cmp114 = icmp slt i32 %83, 32
  br i1 %cmp114, label %for.body116, label %for.end394

for.body116:                                      ; preds = %for.cond113
  %84 = load ptr, ptr %gi, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %84, i32 0, i32 6
  %85 = load i32, ptr %block_type, align 8
  store i32 %85, ptr %type, align 4
  %86 = load i32, ptr %band, align 4
  %87 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band117 = getelementptr inbounds %struct.lame_global_flags, ptr %87, i32 0, i32 57
  %88 = load i32, ptr %lowpass_band117, align 8
  %cmp118 = icmp sge i32 %86, %88
  br i1 %cmp118, label %if.then123, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body116
  %89 = load i32, ptr %band, align 4
  %90 = load ptr, ptr %gfp.addr, align 8
  %highpass_band120 = getelementptr inbounds %struct.lame_global_flags, ptr %90, i32 0, i32 58
  %91 = load i32, ptr %highpass_band120, align 4
  %cmp121 = icmp sle i32 %89, %91
  br i1 %cmp121, label %if.then123, label %if.else

if.then123:                                       ; preds = %lor.lhs.false, %for.body116
  %92 = load ptr, ptr %mdct_enc, align 8
  %93 = load ptr, ptr %mdct_enc, align 8
  %94 = call i64 @llvm.objectsize.i64.p0(ptr %93, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %92, i32 noundef 0, i64 noundef 144, i64 noundef %94) #4
  br label %if.end347

if.else:                                          ; preds = %lor.lhs.false
  %95 = load i32, ptr %type, align 4
  %cmp124 = icmp eq i32 %95, 2
  br i1 %cmp124, label %if.then126, label %if.else273

if.then126:                                       ; preds = %if.else
  store i32 2, ptr %k, align 4
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc271, %if.then126
  %96 = load i32, ptr %k, align 4
  %cmp128 = icmp sge i32 %96, 0
  br i1 %cmp128, label %for.body130, label %for.end272

for.body130:                                      ; preds = %for.cond127
  %97 = load i32, ptr %k, align 4
  %idxprom132 = sext i32 %97 to i64
  %arrayidx133 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2), i64 0, i64 %idxprom132
  %98 = load double, ptr %arrayidx133, align 8
  store double %98, ptr %w1131, align 8
  %99 = load i32, ptr %ch, align 4
  %idxprom134 = sext i32 %99 to i64
  %arrayidx135 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom134
  %100 = load i32, ptr %gr, align 4
  %idxprom136 = sext i32 %100 to i64
  %arrayidx137 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx135, i64 0, i64 %idxprom136
  %101 = load i32, ptr %k, align 4
  %add138 = add nsw i32 %101, 6
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx137, i64 0, i64 %idxprom139
  %102 = load i32, ptr %band, align 4
  %idxprom141 = sext i32 %102 to i64
  %arrayidx142 = getelementptr inbounds [32 x double], ptr %arrayidx140, i64 0, i64 %idxprom141
  %103 = load double, ptr %arrayidx142, align 8
  %104 = load double, ptr %w1131, align 8
  %105 = load i32, ptr %ch, align 4
  %idxprom144 = sext i32 %105 to i64
  %arrayidx145 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom144
  %106 = load i32, ptr %gr, align 4
  %idxprom146 = sext i32 %106 to i64
  %arrayidx147 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx145, i64 0, i64 %idxprom146
  %107 = load i32, ptr %k, align 4
  %sub148 = sub nsw i32 11, %107
  %idxprom149 = sext i32 %sub148 to i64
  %arrayidx150 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx147, i64 0, i64 %idxprom149
  %108 = load i32, ptr %band, align 4
  %idxprom151 = sext i32 %108 to i64
  %arrayidx152 = getelementptr inbounds [32 x double], ptr %arrayidx150, i64 0, i64 %idxprom151
  %109 = load double, ptr %arrayidx152, align 8
  %neg = fneg double %109
  %110 = call double @llvm.fmuladd.f64(double %103, double %104, double %neg)
  %111 = load i32, ptr %k, align 4
  %idxprom153 = sext i32 %111 to i64
  %arrayidx154 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom153
  store double %110, ptr %arrayidx154, align 8
  %112 = load i32, ptr %ch, align 4
  %idxprom155 = sext i32 %112 to i64
  %arrayidx156 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom155
  %113 = load i32, ptr %gr, align 4
  %idxprom157 = sext i32 %113 to i64
  %arrayidx158 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx156, i64 0, i64 %idxprom157
  %114 = load i32, ptr %k, align 4
  %add159 = add nsw i32 %114, 12
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx158, i64 0, i64 %idxprom160
  %115 = load i32, ptr %band, align 4
  %idxprom162 = sext i32 %115 to i64
  %arrayidx163 = getelementptr inbounds [32 x double], ptr %arrayidx161, i64 0, i64 %idxprom162
  %116 = load double, ptr %arrayidx163, align 8
  %117 = load i32, ptr %ch, align 4
  %idxprom164 = sext i32 %117 to i64
  %arrayidx165 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom164
  %118 = load i32, ptr %gr, align 4
  %idxprom166 = sext i32 %118 to i64
  %arrayidx167 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx165, i64 0, i64 %idxprom166
  %119 = load i32, ptr %k, align 4
  %sub168 = sub nsw i32 17, %119
  %idxprom169 = sext i32 %sub168 to i64
  %arrayidx170 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx167, i64 0, i64 %idxprom169
  %120 = load i32, ptr %band, align 4
  %idxprom171 = sext i32 %120 to i64
  %arrayidx172 = getelementptr inbounds [32 x double], ptr %arrayidx170, i64 0, i64 %idxprom171
  %121 = load double, ptr %arrayidx172, align 8
  %122 = load double, ptr %w1131, align 8
  %123 = call double @llvm.fmuladd.f64(double %121, double %122, double %116)
  %124 = load i32, ptr %k, align 4
  %add174 = add nsw i32 %124, 3
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom175
  store double %123, ptr %arrayidx176, align 8
  %125 = load i32, ptr %ch, align 4
  %idxprom177 = sext i32 %125 to i64
  %arrayidx178 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom177
  %126 = load i32, ptr %gr, align 4
  %idxprom179 = sext i32 %126 to i64
  %arrayidx180 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx178, i64 0, i64 %idxprom179
  %127 = load i32, ptr %k, align 4
  %add181 = add nsw i32 %127, 12
  %idxprom182 = sext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx180, i64 0, i64 %idxprom182
  %128 = load i32, ptr %band, align 4
  %idxprom184 = sext i32 %128 to i64
  %arrayidx185 = getelementptr inbounds [32 x double], ptr %arrayidx183, i64 0, i64 %idxprom184
  %129 = load double, ptr %arrayidx185, align 8
  %130 = load double, ptr %w1131, align 8
  %131 = load i32, ptr %ch, align 4
  %idxprom187 = sext i32 %131 to i64
  %arrayidx188 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom187
  %132 = load i32, ptr %gr, align 4
  %idxprom189 = sext i32 %132 to i64
  %arrayidx190 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx188, i64 0, i64 %idxprom189
  %133 = load i32, ptr %k, align 4
  %sub191 = sub nsw i32 17, %133
  %idxprom192 = sext i32 %sub191 to i64
  %arrayidx193 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx190, i64 0, i64 %idxprom192
  %134 = load i32, ptr %band, align 4
  %idxprom194 = sext i32 %134 to i64
  %arrayidx195 = getelementptr inbounds [32 x double], ptr %arrayidx193, i64 0, i64 %idxprom194
  %135 = load double, ptr %arrayidx195, align 8
  %neg196 = fneg double %135
  %136 = call double @llvm.fmuladd.f64(double %129, double %130, double %neg196)
  %137 = load i32, ptr %k, align 4
  %add197 = add nsw i32 %137, 6
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom198
  store double %136, ptr %arrayidx199, align 8
  %138 = load i32, ptr %ch, align 4
  %idxprom200 = sext i32 %138 to i64
  %arrayidx201 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom200
  %139 = load i32, ptr %gr, align 4
  %sub202 = sub nsw i32 1, %139
  %idxprom203 = sext i32 %sub202 to i64
  %arrayidx204 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx201, i64 0, i64 %idxprom203
  %140 = load i32, ptr %k, align 4
  %idxprom205 = sext i32 %140 to i64
  %arrayidx206 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx204, i64 0, i64 %idxprom205
  %141 = load i32, ptr %band, align 4
  %idxprom207 = sext i32 %141 to i64
  %arrayidx208 = getelementptr inbounds [32 x double], ptr %arrayidx206, i64 0, i64 %idxprom207
  %142 = load double, ptr %arrayidx208, align 8
  %143 = load i32, ptr %ch, align 4
  %idxprom209 = sext i32 %143 to i64
  %arrayidx210 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom209
  %144 = load i32, ptr %gr, align 4
  %sub211 = sub nsw i32 1, %144
  %idxprom212 = sext i32 %sub211 to i64
  %arrayidx213 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx210, i64 0, i64 %idxprom212
  %145 = load i32, ptr %k, align 4
  %sub214 = sub nsw i32 5, %145
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx213, i64 0, i64 %idxprom215
  %146 = load i32, ptr %band, align 4
  %idxprom217 = sext i32 %146 to i64
  %arrayidx218 = getelementptr inbounds [32 x double], ptr %arrayidx216, i64 0, i64 %idxprom217
  %147 = load double, ptr %arrayidx218, align 8
  %148 = load double, ptr %w1131, align 8
  %149 = call double @llvm.fmuladd.f64(double %147, double %148, double %142)
  %150 = load i32, ptr %k, align 4
  %add220 = add nsw i32 %150, 9
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom221
  store double %149, ptr %arrayidx222, align 8
  %151 = load i32, ptr %ch, align 4
  %idxprom223 = sext i32 %151 to i64
  %arrayidx224 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom223
  %152 = load i32, ptr %gr, align 4
  %sub225 = sub nsw i32 1, %152
  %idxprom226 = sext i32 %sub225 to i64
  %arrayidx227 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx224, i64 0, i64 %idxprom226
  %153 = load i32, ptr %k, align 4
  %idxprom228 = sext i32 %153 to i64
  %arrayidx229 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx227, i64 0, i64 %idxprom228
  %154 = load i32, ptr %band, align 4
  %idxprom230 = sext i32 %154 to i64
  %arrayidx231 = getelementptr inbounds [32 x double], ptr %arrayidx229, i64 0, i64 %idxprom230
  %155 = load double, ptr %arrayidx231, align 8
  %156 = load double, ptr %w1131, align 8
  %157 = load i32, ptr %ch, align 4
  %idxprom233 = sext i32 %157 to i64
  %arrayidx234 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom233
  %158 = load i32, ptr %gr, align 4
  %sub235 = sub nsw i32 1, %158
  %idxprom236 = sext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx234, i64 0, i64 %idxprom236
  %159 = load i32, ptr %k, align 4
  %sub238 = sub nsw i32 5, %159
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx237, i64 0, i64 %idxprom239
  %160 = load i32, ptr %band, align 4
  %idxprom241 = sext i32 %160 to i64
  %arrayidx242 = getelementptr inbounds [32 x double], ptr %arrayidx240, i64 0, i64 %idxprom241
  %161 = load double, ptr %arrayidx242, align 8
  %neg243 = fneg double %161
  %162 = call double @llvm.fmuladd.f64(double %155, double %156, double %neg243)
  %163 = load i32, ptr %k, align 4
  %add244 = add nsw i32 %163, 12
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom245
  store double %162, ptr %arrayidx246, align 8
  %164 = load i32, ptr %ch, align 4
  %idxprom247 = sext i32 %164 to i64
  %arrayidx248 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom247
  %165 = load i32, ptr %gr, align 4
  %sub249 = sub nsw i32 1, %165
  %idxprom250 = sext i32 %sub249 to i64
  %arrayidx251 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx248, i64 0, i64 %idxprom250
  %166 = load i32, ptr %k, align 4
  %add252 = add nsw i32 %166, 6
  %idxprom253 = sext i32 %add252 to i64
  %arrayidx254 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx251, i64 0, i64 %idxprom253
  %167 = load i32, ptr %band, align 4
  %idxprom255 = sext i32 %167 to i64
  %arrayidx256 = getelementptr inbounds [32 x double], ptr %arrayidx254, i64 0, i64 %idxprom255
  %168 = load double, ptr %arrayidx256, align 8
  %169 = load i32, ptr %ch, align 4
  %idxprom257 = sext i32 %169 to i64
  %arrayidx258 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom257
  %170 = load i32, ptr %gr, align 4
  %sub259 = sub nsw i32 1, %170
  %idxprom260 = sext i32 %sub259 to i64
  %arrayidx261 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx258, i64 0, i64 %idxprom260
  %171 = load i32, ptr %k, align 4
  %sub262 = sub nsw i32 11, %171
  %idxprom263 = sext i32 %sub262 to i64
  %arrayidx264 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx261, i64 0, i64 %idxprom263
  %172 = load i32, ptr %band, align 4
  %idxprom265 = sext i32 %172 to i64
  %arrayidx266 = getelementptr inbounds [32 x double], ptr %arrayidx264, i64 0, i64 %idxprom265
  %173 = load double, ptr %arrayidx266, align 8
  %174 = load double, ptr %w1131, align 8
  %175 = call double @llvm.fmuladd.f64(double %173, double %174, double %168)
  %176 = load i32, ptr %k, align 4
  %add268 = add nsw i32 %176, 15
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom269
  store double %175, ptr %arrayidx270, align 8
  br label %for.inc271

for.inc271:                                       ; preds = %for.body130
  %177 = load i32, ptr %k, align 4
  %dec = add nsw i32 %177, -1
  store i32 %dec, ptr %k, align 4
  br label %for.cond127, !llvm.loop !12

for.end272:                                       ; preds = %for.cond127
  %178 = load ptr, ptr %mdct_enc, align 8
  call void @mdct_short(ptr noundef %178, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4))
  br label %if.end346

if.else273:                                       ; preds = %if.else
  store i32 8, ptr %k, align 4
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc343, %if.else273
  %179 = load i32, ptr %k, align 4
  %cmp275 = icmp sge i32 %179, 0
  br i1 %cmp275, label %for.body277, label %for.end345

for.body277:                                      ; preds = %for.cond274
  %180 = load i32, ptr %type, align 4
  %idxprom278 = sext i32 %180 to i64
  %arrayidx279 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom278
  %181 = load i32, ptr %k, align 4
  %idxprom280 = sext i32 %181 to i64
  %arrayidx281 = getelementptr inbounds [36 x double], ptr %arrayidx279, i64 0, i64 %idxprom280
  %182 = load double, ptr %arrayidx281, align 8
  %183 = load i32, ptr %ch, align 4
  %idxprom282 = sext i32 %183 to i64
  %arrayidx283 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom282
  %184 = load i32, ptr %gr, align 4
  %idxprom284 = sext i32 %184 to i64
  %arrayidx285 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx283, i64 0, i64 %idxprom284
  %185 = load i32, ptr %k, align 4
  %idxprom286 = sext i32 %185 to i64
  %arrayidx287 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx285, i64 0, i64 %idxprom286
  %186 = load i32, ptr %band, align 4
  %idxprom288 = sext i32 %186 to i64
  %arrayidx289 = getelementptr inbounds [32 x double], ptr %arrayidx287, i64 0, i64 %idxprom288
  %187 = load double, ptr %arrayidx289, align 8
  %188 = load i32, ptr %type, align 4
  %idxprom291 = sext i32 %188 to i64
  %arrayidx292 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom291
  %189 = load i32, ptr %k, align 4
  %add293 = add nsw i32 %189, 9
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds [36 x double], ptr %arrayidx292, i64 0, i64 %idxprom294
  %190 = load double, ptr %arrayidx295, align 8
  %191 = load i32, ptr %ch, align 4
  %idxprom296 = sext i32 %191 to i64
  %arrayidx297 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom296
  %192 = load i32, ptr %gr, align 4
  %idxprom298 = sext i32 %192 to i64
  %arrayidx299 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx297, i64 0, i64 %idxprom298
  %193 = load i32, ptr %k, align 4
  %sub300 = sub nsw i32 17, %193
  %idxprom301 = sext i32 %sub300 to i64
  %arrayidx302 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx299, i64 0, i64 %idxprom301
  %194 = load i32, ptr %band, align 4
  %idxprom303 = sext i32 %194 to i64
  %arrayidx304 = getelementptr inbounds [32 x double], ptr %arrayidx302, i64 0, i64 %idxprom303
  %195 = load double, ptr %arrayidx304, align 8
  %mul305 = fmul double %190, %195
  %neg306 = fneg double %mul305
  %196 = call double @llvm.fmuladd.f64(double %182, double %187, double %neg306)
  %197 = load i32, ptr %k, align 4
  %idxprom307 = sext i32 %197 to i64
  %arrayidx308 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom307
  store double %196, ptr %arrayidx308, align 8
  %198 = load i32, ptr %type, align 4
  %idxprom309 = sext i32 %198 to i64
  %arrayidx310 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom309
  %199 = load i32, ptr %k, align 4
  %add311 = add nsw i32 %199, 18
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds [36 x double], ptr %arrayidx310, i64 0, i64 %idxprom312
  %200 = load double, ptr %arrayidx313, align 8
  %201 = load i32, ptr %ch, align 4
  %idxprom314 = sext i32 %201 to i64
  %arrayidx315 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom314
  %202 = load i32, ptr %gr, align 4
  %sub316 = sub nsw i32 1, %202
  %idxprom317 = sext i32 %sub316 to i64
  %arrayidx318 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx315, i64 0, i64 %idxprom317
  %203 = load i32, ptr %k, align 4
  %idxprom319 = sext i32 %203 to i64
  %arrayidx320 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx318, i64 0, i64 %idxprom319
  %204 = load i32, ptr %band, align 4
  %idxprom321 = sext i32 %204 to i64
  %arrayidx322 = getelementptr inbounds [32 x double], ptr %arrayidx320, i64 0, i64 %idxprom321
  %205 = load double, ptr %arrayidx322, align 8
  %206 = load i32, ptr %type, align 4
  %idxprom324 = sext i32 %206 to i64
  %arrayidx325 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom324
  %207 = load i32, ptr %k, align 4
  %add326 = add nsw i32 %207, 27
  %idxprom327 = sext i32 %add326 to i64
  %arrayidx328 = getelementptr inbounds [36 x double], ptr %arrayidx325, i64 0, i64 %idxprom327
  %208 = load double, ptr %arrayidx328, align 8
  %209 = load i32, ptr %ch, align 4
  %idxprom329 = sext i32 %209 to i64
  %arrayidx330 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom329
  %210 = load i32, ptr %gr, align 4
  %sub331 = sub nsw i32 1, %210
  %idxprom332 = sext i32 %sub331 to i64
  %arrayidx333 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx330, i64 0, i64 %idxprom332
  %211 = load i32, ptr %k, align 4
  %sub334 = sub nsw i32 17, %211
  %idxprom335 = sext i32 %sub334 to i64
  %arrayidx336 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx333, i64 0, i64 %idxprom335
  %212 = load i32, ptr %band, align 4
  %idxprom337 = sext i32 %212 to i64
  %arrayidx338 = getelementptr inbounds [32 x double], ptr %arrayidx336, i64 0, i64 %idxprom337
  %213 = load double, ptr %arrayidx338, align 8
  %mul339 = fmul double %208, %213
  %214 = call double @llvm.fmuladd.f64(double %200, double %205, double %mul339)
  %215 = load i32, ptr %k, align 4
  %add340 = add nsw i32 9, %215
  %idxprom341 = sext i32 %add340 to i64
  %arrayidx342 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %idxprom341
  store double %214, ptr %arrayidx342, align 8
  br label %for.inc343

for.inc343:                                       ; preds = %for.body277
  %216 = load i32, ptr %k, align 4
  %dec344 = add nsw i32 %216, -1
  store i32 %dec344, ptr %k, align 4
  br label %for.cond274, !llvm.loop !13

for.end345:                                       ; preds = %for.cond274
  %217 = load ptr, ptr %mdct_enc, align 8
  call void @mdct_long(ptr noundef %217, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4))
  br label %if.end346

if.end346:                                        ; preds = %for.end345, %for.end272
  br label %if.end347

if.end347:                                        ; preds = %if.end346, %if.then123
  %218 = load i32, ptr %type, align 4
  %cmp348 = icmp ne i32 %218, 2
  br i1 %cmp348, label %if.then350, label %if.end390

if.then350:                                       ; preds = %if.end347
  %219 = load i32, ptr %band, align 4
  %cmp351 = icmp eq i32 %219, 0
  br i1 %cmp351, label %if.then353, label %if.end354

if.then353:                                       ; preds = %if.then350
  br label %for.inc391

if.end354:                                        ; preds = %if.then350
  store i32 7, ptr %k, align 4
  br label %for.cond355

for.cond355:                                      ; preds = %for.inc387, %if.end354
  %220 = load i32, ptr %k, align 4
  %cmp356 = icmp sge i32 %220, 0
  br i1 %cmp356, label %for.body358, label %for.end389

for.body358:                                      ; preds = %for.cond355
  %221 = load ptr, ptr %mdct_enc, align 8
  %222 = load i32, ptr %k, align 4
  %idxprom359 = sext i32 %222 to i64
  %arrayidx360 = getelementptr inbounds double, ptr %221, i64 %idxprom359
  %223 = load double, ptr %arrayidx360, align 8
  %224 = load i32, ptr %k, align 4
  %idxprom361 = sext i32 %224 to i64
  %arrayidx362 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %idxprom361
  %225 = load double, ptr %arrayidx362, align 8
  %226 = load ptr, ptr %mdct_enc, align 8
  %227 = load i32, ptr %k, align 4
  %sub364 = sub nsw i32 -1, %227
  %idxprom365 = sext i32 %sub364 to i64
  %arrayidx366 = getelementptr inbounds double, ptr %226, i64 %idxprom365
  %228 = load double, ptr %arrayidx366, align 8
  %229 = load i32, ptr %k, align 4
  %idxprom367 = sext i32 %229 to i64
  %arrayidx368 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %idxprom367
  %230 = load double, ptr %arrayidx368, align 8
  %mul369 = fmul double %228, %230
  %231 = call double @llvm.fmuladd.f64(double %223, double %225, double %mul369)
  store double %231, ptr %bu, align 8
  %232 = load ptr, ptr %mdct_enc, align 8
  %233 = load i32, ptr %k, align 4
  %idxprom370 = sext i32 %233 to i64
  %arrayidx371 = getelementptr inbounds double, ptr %232, i64 %idxprom370
  %234 = load double, ptr %arrayidx371, align 8
  %235 = load i32, ptr %k, align 4
  %idxprom372 = sext i32 %235 to i64
  %arrayidx373 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %idxprom372
  %236 = load double, ptr %arrayidx373, align 8
  %237 = load ptr, ptr %mdct_enc, align 8
  %238 = load i32, ptr %k, align 4
  %sub375 = sub nsw i32 -1, %238
  %idxprom376 = sext i32 %sub375 to i64
  %arrayidx377 = getelementptr inbounds double, ptr %237, i64 %idxprom376
  %239 = load double, ptr %arrayidx377, align 8
  %240 = load i32, ptr %k, align 4
  %idxprom378 = sext i32 %240 to i64
  %arrayidx379 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %idxprom378
  %241 = load double, ptr %arrayidx379, align 8
  %mul380 = fmul double %239, %241
  %neg381 = fneg double %mul380
  %242 = call double @llvm.fmuladd.f64(double %234, double %236, double %neg381)
  store double %242, ptr %bd, align 8
  %243 = load double, ptr %bu, align 8
  %244 = load ptr, ptr %mdct_enc, align 8
  %245 = load i32, ptr %k, align 4
  %sub382 = sub nsw i32 -1, %245
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds double, ptr %244, i64 %idxprom383
  store double %243, ptr %arrayidx384, align 8
  %246 = load double, ptr %bd, align 8
  %247 = load ptr, ptr %mdct_enc, align 8
  %248 = load i32, ptr %k, align 4
  %idxprom385 = sext i32 %248 to i64
  %arrayidx386 = getelementptr inbounds double, ptr %247, i64 %idxprom385
  store double %246, ptr %arrayidx386, align 8
  br label %for.inc387

for.inc387:                                       ; preds = %for.body358
  %249 = load i32, ptr %k, align 4
  %dec388 = add nsw i32 %249, -1
  store i32 %dec388, ptr %k, align 4
  br label %for.cond355, !llvm.loop !14

for.end389:                                       ; preds = %for.cond355
  br label %if.end390

if.end390:                                        ; preds = %for.end389, %if.end347
  br label %for.inc391

for.inc391:                                       ; preds = %if.end390, %if.then353
  %250 = load i32, ptr %band, align 4
  %inc392 = add nsw i32 %250, 1
  store i32 %inc392, ptr %band, align 4
  %251 = load ptr, ptr %mdct_enc, align 8
  %add.ptr393 = getelementptr inbounds double, ptr %251, i64 18
  store ptr %add.ptr393, ptr %mdct_enc, align 8
  br label %for.cond113, !llvm.loop !15

for.end394:                                       ; preds = %for.cond113
  br label %for.inc395

for.inc395:                                       ; preds = %for.end394
  %252 = load i32, ptr %gr, align 4
  %inc396 = add nsw i32 %252, 1
  store i32 %inc396, ptr %gr, align 4
  br label %for.cond2, !llvm.loop !16

for.end397:                                       ; preds = %for.cond2
  %253 = load ptr, ptr %w1.addr, align 8
  store ptr %253, ptr %wk, align 8
  %254 = load ptr, ptr %gfp.addr, align 8
  %mode_gr398 = getelementptr inbounds %struct.lame_global_flags, ptr %254, i32 0, i32 45
  %255 = load i32, ptr %mode_gr398, align 8
  %cmp399 = icmp eq i32 %255, 1
  br i1 %cmp399, label %if.then401, label %if.end415

if.then401:                                       ; preds = %for.end397
  %256 = load i32, ptr %ch, align 4
  %idxprom402 = sext i32 %256 to i64
  %arrayidx403 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom402
  %arrayidx404 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx403, i64 0, i64 0
  %arraydecay405 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx404, i64 0, i64 0
  %257 = load i32, ptr %ch, align 4
  %idxprom406 = sext i32 %257 to i64
  %arrayidx407 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom406
  %arrayidx408 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx407, i64 0, i64 1
  %arraydecay409 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx408, i64 0, i64 0
  %258 = load i32, ptr %ch, align 4
  %idxprom410 = sext i32 %258 to i64
  %arrayidx411 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %idxprom410
  %arrayidx412 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr %arrayidx411, i64 0, i64 0
  %arraydecay413 = getelementptr inbounds [18 x [32 x double]], ptr %arrayidx412, i64 0, i64 0
  %259 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay413, i1 false, i1 true, i1 false)
  %call414 = call ptr @__memcpy_chk(ptr noundef %arraydecay405, ptr noundef %arraydecay409, i64 noundef 4608, i64 noundef %259) #4
  br label %if.end415

if.end415:                                        ; preds = %if.then401, %for.end397
  br label %for.inc416

for.inc416:                                       ; preds = %if.end415
  %260 = load i32, ptr %ch, align 4
  %inc417 = add nsw i32 %260, 1
  store i32 %inc417, ptr %ch, align 4
  br label %for.cond, !llvm.loop !17

for.end418:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x double], ptr @mdct_init48.c, i64 0, i64 %idxprom
  %2 = load double, ptr %arrayidx, align 8
  %3 = load i32, ptr %k, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [8 x double], ptr @mdct_init48.c, i64 0, i64 %idxprom1
  %4 = load double, ptr %arrayidx2, align 8
  %5 = call double @llvm.fmuladd.f64(double %2, double %4, double 1.000000e+00)
  store double %5, ptr %sq, align 8
  %6 = load double, ptr %sq, align 8
  %7 = call double @llvm.sqrt.f64(double %6)
  store double %7, ptr %sq, align 8
  %8 = load i32, ptr %k, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [8 x double], ptr @mdct_init48.c, i64 0, i64 %idxprom3
  %9 = load double, ptr %arrayidx4, align 8
  %10 = load double, ptr %sq, align 8
  %div = fdiv double %9, %10
  %11 = load i32, ptr %k, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %idxprom5
  store double %div, ptr %arrayidx6, align 8
  %12 = load double, ptr %sq, align 8
  %div7 = fdiv double 1.000000e+00, %12
  %13 = load i32, ptr %k, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %idxprom8
  store double %div7, ptr %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end
  %15 = load i32, ptr %i, align 4
  %cmp11 = icmp slt i32 %15, 36
  br i1 %cmp11, label %for.body12, label %for.end17

for.body12:                                       ; preds = %for.cond10
  %16 = load i32, ptr %i, align 4
  %conv = sitofp i32 %16 to double
  %add = fadd double %conv, 5.000000e-01
  %mul = fmul double 0x3FB657184AE74487, %add
  %17 = call double @llvm.sin.f64(double %mul)
  %18 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom13
  store double %17, ptr %arrayidx14, align 8
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %19 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond10, !llvm.loop !19

for.end17:                                        ; preds = %for.cond10
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc26, %for.end17
  %20 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %20, 18
  br i1 %cmp19, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond18
  %21 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom22
  %22 = load double, ptr %arrayidx23, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom24
  store double %22, ptr %arrayidx25, align 8
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %24 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %24, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond18, !llvm.loop !20

for.end28:                                        ; preds = %for.cond18
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc35, %for.end28
  %25 = load i32, ptr %i, align 4
  %cmp30 = icmp slt i32 %25, 24
  br i1 %cmp30, label %for.body32, label %for.end37

for.body32:                                       ; preds = %for.cond29
  %26 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom33
  store double 1.000000e+00, ptr %arrayidx34, align 8
  br label %for.inc35

for.inc35:                                        ; preds = %for.body32
  %27 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %27, 1
  store i32 %inc36, ptr %i, align 4
  br label %for.cond29, !llvm.loop !21

for.end37:                                        ; preds = %for.cond29
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc47, %for.end37
  %28 = load i32, ptr %i, align 4
  %cmp39 = icmp slt i32 %28, 30
  br i1 %cmp39, label %for.body41, label %for.end49

for.body41:                                       ; preds = %for.cond38
  %29 = load i32, ptr %i, align 4
  %conv42 = sitofp i32 %29 to double
  %add43 = fadd double %conv42, 5.000000e-01
  %mul44 = fmul double 0x3FD0C152382D7365, %add43
  %30 = call double @llvm.cos.f64(double %mul44)
  %31 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %31 to i64
  %arrayidx46 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom45
  store double %30, ptr %arrayidx46, align 8
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %32 = load i32, ptr %i, align 4
  %inc48 = add nsw i32 %32, 1
  store i32 %inc48, ptr %i, align 4
  br label %for.cond38, !llvm.loop !22

for.end49:                                        ; preds = %for.cond38
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc56, %for.end49
  %33 = load i32, ptr %i, align 4
  %cmp51 = icmp slt i32 %33, 36
  br i1 %cmp51, label %for.body53, label %for.end58

for.body53:                                       ; preds = %for.cond50
  %34 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %34 to i64
  %arrayidx55 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom54
  store double 0.000000e+00, ptr %arrayidx55, align 8
  br label %for.inc56

for.inc56:                                        ; preds = %for.body53
  %35 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %35, 1
  store i32 %inc57, ptr %i, align 4
  br label %for.cond50, !llvm.loop !23

for.end58:                                        ; preds = %for.cond50
  store i32 0, ptr %i, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc67, %for.end58
  %36 = load i32, ptr %i, align 4
  %cmp60 = icmp slt i32 %36, 36
  br i1 %cmp60, label %for.body62, label %for.end69

for.body62:                                       ; preds = %for.cond59
  %37 = load i32, ptr %i, align 4
  %sub = sub nsw i32 35, %37
  %idxprom63 = sext i32 %sub to i64
  %arrayidx64 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom63
  %38 = load double, ptr %arrayidx64, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %39 to i64
  %arrayidx66 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom65
  store double %38, ptr %arrayidx66, align 8
  br label %for.inc67

for.inc67:                                        ; preds = %for.body62
  %40 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %40, 1
  store i32 %inc68, ptr %i, align 4
  br label %for.cond59, !llvm.loop !24

for.end69:                                        ; preds = %for.cond59
  store double 0x3FBC71C71C71C71C, ptr %sq, align 8
  store ptr @cos_l, ptr %cos_l0, align 8
  store i32 11, ptr %j, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end69
  %41 = load i32, ptr %j, align 4
  %idxprom70 = sext i32 %41 to i64
  %arrayidx71 = getelementptr inbounds [12 x i32], ptr @all, i64 0, i64 %idxprom70
  %42 = load i32, ptr %arrayidx71, align 4
  store i32 %42, ptr %m, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc86, %do.body
  %43 = load i32, ptr %k, align 4
  %cmp73 = icmp slt i32 %43, 9
  br i1 %cmp73, label %for.body75, label %for.end88

for.body75:                                       ; preds = %for.cond72
  %44 = load double, ptr %sq, align 8
  %45 = load i32, ptr %m, align 4
  %mul76 = mul nsw i32 2, %45
  %add77 = add nsw i32 %mul76, 1
  %conv78 = sitofp i32 %add77 to double
  %mul79 = fmul double 0x3F9657184AE74487, %conv78
  %46 = load i32, ptr %k, align 4
  %mul80 = mul nsw i32 4, %46
  %add81 = add nsw i32 %mul80, 2
  %add82 = add nsw i32 %add81, 36
  %conv83 = sitofp i32 %add82 to double
  %mul84 = fmul double %mul79, %conv83
  %47 = call double @llvm.cos.f64(double %mul84)
  %mul85 = fmul double %44, %47
  %48 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %48, i32 1
  store ptr %incdec.ptr, ptr %cos_l0, align 8
  store double %mul85, ptr %48, align 8
  br label %for.inc86

for.inc86:                                        ; preds = %for.body75
  %49 = load i32, ptr %k, align 4
  %inc87 = add nsw i32 %49, 1
  store i32 %inc87, ptr %k, align 4
  br label %for.cond72, !llvm.loop !25

for.end88:                                        ; preds = %for.cond72
  store i32 0, ptr %k, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc104, %for.end88
  %50 = load i32, ptr %k, align 4
  %cmp90 = icmp slt i32 %50, 9
  br i1 %cmp90, label %for.body92, label %for.end106

for.body92:                                       ; preds = %for.cond89
  %51 = load double, ptr %sq, align 8
  %52 = load i32, ptr %m, align 4
  %mul93 = mul nsw i32 2, %52
  %add94 = add nsw i32 %mul93, 1
  %conv95 = sitofp i32 %add94 to double
  %mul96 = fmul double 0x3F9657184AE74487, %conv95
  %53 = load i32, ptr %k, align 4
  %mul97 = mul nsw i32 4, %53
  %add98 = add nsw i32 %mul97, 2
  %add99 = add nsw i32 %add98, 108
  %conv100 = sitofp i32 %add99 to double
  %mul101 = fmul double %mul96, %conv100
  %54 = call double @llvm.cos.f64(double %mul101)
  %mul102 = fmul double %51, %54
  %55 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr103 = getelementptr inbounds double, ptr %55, i32 1
  store ptr %incdec.ptr103, ptr %cos_l0, align 8
  store double %mul102, ptr %55, align 8
  br label %for.inc104

for.inc104:                                       ; preds = %for.body92
  %56 = load i32, ptr %k, align 4
  %inc105 = add nsw i32 %56, 1
  store i32 %inc105, ptr %k, align 4
  br label %for.cond89, !llvm.loop !26

for.end106:                                       ; preds = %for.cond89
  br label %do.cond

do.cond:                                          ; preds = %for.end106
  %57 = load i32, ptr %j, align 4
  %dec = add nsw i32 %57, -1
  store i32 %dec, ptr %j, align 4
  %cmp107 = icmp sge i32 %dec, 0
  br i1 %cmp107, label %do.body, label %do.end, !llvm.loop !27

do.end:                                           ; preds = %do.cond
  store i32 3, ptr %j, align 4
  br label %do.body109

do.body109:                                       ; preds = %do.cond148, %do.end
  %58 = load i32, ptr %j, align 4
  %idxprom110 = sext i32 %58 to i64
  %arrayidx111 = getelementptr inbounds [4 x i32], ptr @mdct_init48.d3, i64 0, i64 %idxprom110
  %59 = load i32, ptr %arrayidx111, align 4
  store i32 %59, ptr %m, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc127, %do.body109
  %60 = load i32, ptr %k, align 4
  %cmp113 = icmp slt i32 %60, 3
  br i1 %cmp113, label %for.body115, label %for.end129

for.body115:                                      ; preds = %for.cond112
  %61 = load double, ptr %sq, align 8
  %62 = load i32, ptr %m, align 4
  %mul116 = mul nsw i32 2, %62
  %add117 = add nsw i32 %mul116, 1
  %conv118 = sitofp i32 %add117 to double
  %mul119 = fmul double 0x3F9657184AE74487, %conv118
  %63 = load i32, ptr %k, align 4
  %mul120 = mul nsw i32 4, %63
  %add121 = add nsw i32 %mul120, 2
  %add122 = add nsw i32 %add121, 36
  %conv123 = sitofp i32 %add122 to double
  %mul124 = fmul double %mul119, %conv123
  %64 = call double @llvm.cos.f64(double %mul124)
  %mul125 = fmul double %61, %64
  %65 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr126 = getelementptr inbounds double, ptr %65, i32 1
  store ptr %incdec.ptr126, ptr %cos_l0, align 8
  store double %mul125, ptr %65, align 8
  br label %for.inc127

for.inc127:                                       ; preds = %for.body115
  %66 = load i32, ptr %k, align 4
  %inc128 = add nsw i32 %66, 1
  store i32 %inc128, ptr %k, align 4
  br label %for.cond112, !llvm.loop !28

for.end129:                                       ; preds = %for.cond112
  store i32 6, ptr %k, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc145, %for.end129
  %67 = load i32, ptr %k, align 4
  %cmp131 = icmp slt i32 %67, 9
  br i1 %cmp131, label %for.body133, label %for.end147

for.body133:                                      ; preds = %for.cond130
  %68 = load double, ptr %sq, align 8
  %69 = load i32, ptr %m, align 4
  %mul134 = mul nsw i32 2, %69
  %add135 = add nsw i32 %mul134, 1
  %conv136 = sitofp i32 %add135 to double
  %mul137 = fmul double 0x3F9657184AE74487, %conv136
  %70 = load i32, ptr %k, align 4
  %mul138 = mul nsw i32 4, %70
  %add139 = add nsw i32 %mul138, 2
  %add140 = add nsw i32 %add139, 36
  %conv141 = sitofp i32 %add140 to double
  %mul142 = fmul double %mul137, %conv141
  %71 = call double @llvm.cos.f64(double %mul142)
  %mul143 = fmul double %68, %71
  %72 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr144 = getelementptr inbounds double, ptr %72, i32 1
  store ptr %incdec.ptr144, ptr %cos_l0, align 8
  store double %mul143, ptr %72, align 8
  br label %for.inc145

for.inc145:                                       ; preds = %for.body133
  %73 = load i32, ptr %k, align 4
  %inc146 = add nsw i32 %73, 1
  store i32 %inc146, ptr %k, align 4
  br label %for.cond130, !llvm.loop !29

for.end147:                                       ; preds = %for.cond130
  br label %do.cond148

do.cond148:                                       ; preds = %for.end147
  %74 = load i32, ptr %j, align 4
  %dec149 = add nsw i32 %74, -1
  store i32 %dec149, ptr %j, align 4
  %cmp150 = icmp sge i32 %dec149, 0
  br i1 %cmp150, label %do.body109, label %do.end152, !llvm.loop !30

do.end152:                                        ; preds = %do.cond148
  store i32 1, ptr %j, align 4
  br label %do.body153

do.body153:                                       ; preds = %do.cond170, %do.end152
  %75 = load i32, ptr %j, align 4
  %idxprom154 = sext i32 %75 to i64
  %arrayidx155 = getelementptr inbounds [2 x i32], ptr @mdct_init48.d9, i64 0, i64 %idxprom154
  %76 = load i32, ptr %arrayidx155, align 4
  store i32 %76, ptr %m, align 4
  %77 = load double, ptr %sq, align 8
  %78 = load i32, ptr %m, align 4
  %mul156 = mul nsw i32 2, %78
  %add157 = add nsw i32 %mul156, 1
  %conv158 = sitofp i32 %add157 to double
  %mul159 = fmul double 0x3F9657184AE74487, %conv158
  %mul160 = fmul double %mul159, 3.800000e+01
  %79 = call double @llvm.cos.f64(double %mul160)
  %mul161 = fmul double %77, %79
  %80 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr162 = getelementptr inbounds double, ptr %80, i32 1
  store ptr %incdec.ptr162, ptr %cos_l0, align 8
  store double %mul161, ptr %80, align 8
  %81 = load double, ptr %sq, align 8
  %82 = load i32, ptr %m, align 4
  %mul163 = mul nsw i32 2, %82
  %add164 = add nsw i32 %mul163, 1
  %conv165 = sitofp i32 %add164 to double
  %mul166 = fmul double 0x3F9657184AE74487, %conv165
  %mul167 = fmul double %mul166, 4.600000e+01
  %83 = call double @llvm.cos.f64(double %mul167)
  %mul168 = fmul double %81, %83
  %84 = load ptr, ptr %cos_l0, align 8
  %incdec.ptr169 = getelementptr inbounds double, ptr %84, i32 1
  store ptr %incdec.ptr169, ptr %cos_l0, align 8
  store double %mul168, ptr %84, align 8
  br label %do.cond170

do.cond170:                                       ; preds = %do.body153
  %85 = load i32, ptr %j, align 4
  %dec171 = add nsw i32 %85, -1
  store i32 %dec171, ptr %j, align 4
  %cmp172 = icmp sge i32 %dec171, 0
  br i1 %cmp172, label %do.body153, label %do.end174, !llvm.loop !31

do.end174:                                        ; preds = %do.cond170
  %86 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 248), align 8
  store double %86, ptr %max, align 8
  store ptr @enwindow, ptr %wp, align 8
  store ptr @enwindow, ptr %wr, align 8
  %87 = load ptr, ptr %wp, align 8
  %incdec.ptr175 = getelementptr inbounds double, ptr %87, i32 1
  store ptr %incdec.ptr175, ptr %wp, align 8
  %88 = load double, ptr %87, align 8
  store double %88, ptr %w, align 8
  %89 = load double, ptr %w, align 8
  %90 = load double, ptr %max, align 8
  %div176 = fdiv double %89, %90
  %arrayidx177 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 15
  store double %div176, ptr %arrayidx177, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc185, %do.end174
  %91 = load i32, ptr %k, align 4
  %cmp179 = icmp slt i32 %91, 7
  br i1 %cmp179, label %for.body181, label %for.end187

for.body181:                                      ; preds = %for.cond178
  %92 = load ptr, ptr %wp, align 8
  %incdec.ptr182 = getelementptr inbounds double, ptr %92, i32 1
  store ptr %incdec.ptr182, ptr %wp, align 8
  %93 = load double, ptr %92, align 8
  %94 = load double, ptr %w, align 8
  %div183 = fdiv double %93, %94
  %95 = load ptr, ptr %wr, align 8
  %incdec.ptr184 = getelementptr inbounds double, ptr %95, i32 1
  store ptr %incdec.ptr184, ptr %wr, align 8
  store double %div183, ptr %95, align 8
  br label %for.inc185

for.inc185:                                       ; preds = %for.body181
  %96 = load i32, ptr %k, align 4
  %inc186 = add nsw i32 %96, 1
  store i32 %inc186, ptr %k, align 4
  br label %for.cond178, !llvm.loop !32

for.end187:                                       ; preds = %for.cond178
  store i32 14, ptr %i, align 4
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc210, %for.end187
  %97 = load i32, ptr %i, align 4
  %cmp189 = icmp sge i32 %97, 0
  br i1 %cmp189, label %for.body191, label %for.end212

for.body191:                                      ; preds = %for.cond188
  %98 = load ptr, ptr %wp, align 8
  %incdec.ptr193 = getelementptr inbounds double, ptr %98, i32 1
  store ptr %incdec.ptr193, ptr %wp, align 8
  %99 = load double, ptr %98, align 8
  store double %99, ptr %w192, align 8
  %100 = load double, ptr %w192, align 8
  %101 = load double, ptr %max, align 8
  %div194 = fdiv double %100, %101
  %102 = load i32, ptr %i, align 4
  %sub195 = sub nsw i32 30, %102
  %idxprom196 = sext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 %idxprom196
  store double %div194, ptr %arrayidx197, align 8
  %103 = load i32, ptr %i, align 4
  %idxprom198 = sext i32 %103 to i64
  %arrayidx199 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 %idxprom198
  store double %div194, ptr %arrayidx199, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond200

for.cond200:                                      ; preds = %for.inc207, %for.body191
  %104 = load i32, ptr %k, align 4
  %cmp201 = icmp slt i32 %104, 15
  br i1 %cmp201, label %for.body203, label %for.end209

for.body203:                                      ; preds = %for.cond200
  %105 = load ptr, ptr %wp, align 8
  %incdec.ptr204 = getelementptr inbounds double, ptr %105, i32 1
  store ptr %incdec.ptr204, ptr %wp, align 8
  %106 = load double, ptr %105, align 8
  %107 = load double, ptr %w192, align 8
  %div205 = fdiv double %106, %107
  %108 = load ptr, ptr %wr, align 8
  %incdec.ptr206 = getelementptr inbounds double, ptr %108, i32 1
  store ptr %incdec.ptr206, ptr %wr, align 8
  store double %div205, ptr %108, align 8
  br label %for.inc207

for.inc207:                                       ; preds = %for.body203
  %109 = load i32, ptr %k, align 4
  %inc208 = add nsw i32 %109, 1
  store i32 %inc208, ptr %k, align 4
  br label %for.cond200, !llvm.loop !33

for.end209:                                       ; preds = %for.cond200
  br label %for.inc210

for.inc210:                                       ; preds = %for.end209
  %110 = load i32, ptr %i, align 4
  %dec211 = add nsw i32 %110, -1
  store i32 %dec211, ptr %i, align 4
  br label %for.cond188, !llvm.loop !34

for.end212:                                       ; preds = %for.cond188
  %111 = load ptr, ptr %wp, align 8
  %incdec.ptr213 = getelementptr inbounds double, ptr %111, i32 1
  store ptr %incdec.ptr213, ptr %wp, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc221, %for.end212
  %112 = load i32, ptr %k, align 4
  %cmp215 = icmp slt i32 %112, 7
  br i1 %cmp215, label %for.body217, label %for.end223

for.body217:                                      ; preds = %for.cond214
  %113 = load ptr, ptr %wp, align 8
  %incdec.ptr218 = getelementptr inbounds double, ptr %113, i32 1
  store ptr %incdec.ptr218, ptr %wp, align 8
  %114 = load double, ptr %113, align 8
  %115 = load double, ptr %max, align 8
  %div219 = fdiv double %114, %115
  %116 = load ptr, ptr %wr, align 8
  %incdec.ptr220 = getelementptr inbounds double, ptr %116, i32 1
  store ptr %incdec.ptr220, ptr %wr, align 8
  store double %div219, ptr %116, align 8
  br label %for.inc221

for.inc221:                                       ; preds = %for.body217
  %117 = load i32, ptr %k, align 4
  %inc222 = add nsw i32 %117, 1
  store i32 %inc222, ptr %k, align 4
  br label %for.cond214, !llvm.loop !35

for.end223:                                       ; preds = %for.cond214
  store ptr @mm, ptr %wp, align 8
  store i32 15, ptr %i, align 4
  br label %for.cond224

for.cond224:                                      ; preds = %for.inc246, %for.end223
  %118 = load i32, ptr %i, align 4
  %cmp225 = icmp sge i32 %118, 0
  br i1 %cmp225, label %for.body227, label %for.end248

for.body227:                                      ; preds = %for.cond224
  store i32 1, ptr %k, align 4
  br label %for.cond228

for.cond228:                                      ; preds = %for.inc243, %for.body227
  %119 = load i32, ptr %k, align 4
  %cmp229 = icmp slt i32 %119, 32
  br i1 %cmp229, label %for.body231, label %for.end245

for.body231:                                      ; preds = %for.cond228
  %120 = load i32, ptr %i, align 4
  %mul232 = mul nsw i32 2, %120
  %add233 = add nsw i32 %mul232, 1
  %121 = load i32, ptr %k, align 4
  %mul234 = mul nsw i32 %add233, %121
  %conv235 = sitofp i32 %mul234 to double
  %mul236 = fmul double %conv235, 0x400921FB54442D18
  %div237 = fdiv double %mul236, 6.400000e+01
  %122 = call double @llvm.cos.f64(double %div237)
  %123 = load i32, ptr %k, align 4
  %sub238 = sub nsw i32 %123, 1
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 %idxprom239
  %124 = load double, ptr %arrayidx240, align 8
  %mul241 = fmul double %122, %124
  %125 = load ptr, ptr %wp, align 8
  %incdec.ptr242 = getelementptr inbounds double, ptr %125, i32 1
  store ptr %incdec.ptr242, ptr %wp, align 8
  store double %mul241, ptr %125, align 8
  br label %for.inc243

for.inc243:                                       ; preds = %for.body231
  %126 = load i32, ptr %k, align 4
  %inc244 = add nsw i32 %126, 1
  store i32 %inc244, ptr %k, align 4
  br label %for.cond228, !llvm.loop !36

for.end245:                                       ; preds = %for.cond228
  br label %for.inc246

for.inc246:                                       ; preds = %for.end245
  %127 = load i32, ptr %i, align 4
  %dec247 = add nsw i32 %127, -1
  store i32 %dec247, ptr %i, align 4
  br label %for.cond224, !llvm.loop !37

for.end248:                                       ; preds = %for.cond224
  store i32 0, ptr %k, align 4
  br label %for.cond249

for.cond249:                                      ; preds = %for.inc325, %for.end248
  %128 = load i32, ptr %k, align 4
  %cmp250 = icmp slt i32 %128, 4
  br i1 %cmp250, label %for.body252, label %for.end327

for.body252:                                      ; preds = %for.cond249
  %129 = load i32, ptr %k, align 4
  %sub253 = sub nsw i32 17, %129
  %idxprom254 = sext i32 %sub253 to i64
  %arrayidx255 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom254
  %130 = load double, ptr %arrayidx255, align 8
  store double %130, ptr %a, align 8
  %131 = load i32, ptr %k, align 4
  %add256 = add nsw i32 9, %131
  %idxprom257 = sext i32 %add256 to i64
  %arrayidx258 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom257
  %132 = load double, ptr %arrayidx258, align 8
  %133 = load i32, ptr %k, align 4
  %sub259 = sub nsw i32 17, %133
  %idxprom260 = sext i32 %sub259 to i64
  %arrayidx261 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom260
  store double %132, ptr %arrayidx261, align 8
  %134 = load double, ptr %a, align 8
  %135 = load i32, ptr %k, align 4
  %add262 = add nsw i32 9, %135
  %idxprom263 = sext i32 %add262 to i64
  %arrayidx264 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom263
  store double %134, ptr %arrayidx264, align 8
  %136 = load i32, ptr %k, align 4
  %sub265 = sub nsw i32 35, %136
  %idxprom266 = sext i32 %sub265 to i64
  %arrayidx267 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom266
  %137 = load double, ptr %arrayidx267, align 8
  store double %137, ptr %a, align 8
  %138 = load i32, ptr %k, align 4
  %add268 = add nsw i32 27, %138
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom269
  %139 = load double, ptr %arrayidx270, align 8
  %140 = load i32, ptr %k, align 4
  %sub271 = sub nsw i32 35, %140
  %idxprom272 = sext i32 %sub271 to i64
  %arrayidx273 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom272
  store double %139, ptr %arrayidx273, align 8
  %141 = load double, ptr %a, align 8
  %142 = load i32, ptr %k, align 4
  %add274 = add nsw i32 27, %142
  %idxprom275 = sext i32 %add274 to i64
  %arrayidx276 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom275
  store double %141, ptr %arrayidx276, align 8
  %143 = load i32, ptr %k, align 4
  %sub277 = sub nsw i32 17, %143
  %idxprom278 = sext i32 %sub277 to i64
  %arrayidx279 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom278
  %144 = load double, ptr %arrayidx279, align 8
  store double %144, ptr %a, align 8
  %145 = load i32, ptr %k, align 4
  %add280 = add nsw i32 9, %145
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom281
  %146 = load double, ptr %arrayidx282, align 8
  %147 = load i32, ptr %k, align 4
  %sub283 = sub nsw i32 17, %147
  %idxprom284 = sext i32 %sub283 to i64
  %arrayidx285 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom284
  store double %146, ptr %arrayidx285, align 8
  %148 = load double, ptr %a, align 8
  %149 = load i32, ptr %k, align 4
  %add286 = add nsw i32 9, %149
  %idxprom287 = sext i32 %add286 to i64
  %arrayidx288 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom287
  store double %148, ptr %arrayidx288, align 8
  %150 = load i32, ptr %k, align 4
  %sub289 = sub nsw i32 35, %150
  %idxprom290 = sext i32 %sub289 to i64
  %arrayidx291 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom290
  %151 = load double, ptr %arrayidx291, align 8
  store double %151, ptr %a, align 8
  %152 = load i32, ptr %k, align 4
  %add292 = add nsw i32 27, %152
  %idxprom293 = sext i32 %add292 to i64
  %arrayidx294 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom293
  %153 = load double, ptr %arrayidx294, align 8
  %154 = load i32, ptr %k, align 4
  %sub295 = sub nsw i32 35, %154
  %idxprom296 = sext i32 %sub295 to i64
  %arrayidx297 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom296
  store double %153, ptr %arrayidx297, align 8
  %155 = load double, ptr %a, align 8
  %156 = load i32, ptr %k, align 4
  %add298 = add nsw i32 27, %156
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom299
  store double %155, ptr %arrayidx300, align 8
  %157 = load i32, ptr %k, align 4
  %sub301 = sub nsw i32 17, %157
  %idxprom302 = sext i32 %sub301 to i64
  %arrayidx303 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom302
  %158 = load double, ptr %arrayidx303, align 8
  store double %158, ptr %a, align 8
  %159 = load i32, ptr %k, align 4
  %add304 = add nsw i32 9, %159
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom305
  %160 = load double, ptr %arrayidx306, align 8
  %161 = load i32, ptr %k, align 4
  %sub307 = sub nsw i32 17, %161
  %idxprom308 = sext i32 %sub307 to i64
  %arrayidx309 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom308
  store double %160, ptr %arrayidx309, align 8
  %162 = load double, ptr %a, align 8
  %163 = load i32, ptr %k, align 4
  %add310 = add nsw i32 9, %163
  %idxprom311 = sext i32 %add310 to i64
  %arrayidx312 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom311
  store double %162, ptr %arrayidx312, align 8
  %164 = load i32, ptr %k, align 4
  %sub313 = sub nsw i32 35, %164
  %idxprom314 = sext i32 %sub313 to i64
  %arrayidx315 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom314
  %165 = load double, ptr %arrayidx315, align 8
  store double %165, ptr %a, align 8
  %166 = load i32, ptr %k, align 4
  %add316 = add nsw i32 27, %166
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom317
  %167 = load double, ptr %arrayidx318, align 8
  %168 = load i32, ptr %k, align 4
  %sub319 = sub nsw i32 35, %168
  %idxprom320 = sext i32 %sub319 to i64
  %arrayidx321 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom320
  store double %167, ptr %arrayidx321, align 8
  %169 = load double, ptr %a, align 8
  %170 = load i32, ptr %k, align 4
  %add322 = add nsw i32 27, %170
  %idxprom323 = sext i32 %add322 to i64
  %arrayidx324 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom323
  store double %169, ptr %arrayidx324, align 8
  br label %for.inc325

for.inc325:                                       ; preds = %for.body252
  %171 = load i32, ptr %k, align 4
  %inc326 = add nsw i32 %171, 1
  store i32 %inc326, ptr %k, align 4
  br label %for.cond249, !llvm.loop !38

for.end327:                                       ; preds = %for.cond249
  store i32 0, ptr %i, align 4
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc344, %for.end327
  %172 = load i32, ptr %i, align 4
  %cmp329 = icmp slt i32 %172, 36
  br i1 %cmp329, label %for.body331, label %for.end346

for.body331:                                      ; preds = %for.cond328
  %173 = load double, ptr %max, align 8
  %div332 = fdiv double %173, 3.276800e+04
  %174 = load i32, ptr %i, align 4
  %idxprom333 = sext i32 %174 to i64
  %arrayidx334 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %idxprom333
  %175 = load double, ptr %arrayidx334, align 8
  %mul335 = fmul double %175, %div332
  store double %mul335, ptr %arrayidx334, align 8
  %176 = load double, ptr %max, align 8
  %div336 = fdiv double %176, 3.276800e+04
  %177 = load i32, ptr %i, align 4
  %idxprom337 = sext i32 %177 to i64
  %arrayidx338 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1), i64 0, i64 %idxprom337
  %178 = load double, ptr %arrayidx338, align 8
  %mul339 = fmul double %178, %div336
  store double %mul339, ptr %arrayidx338, align 8
  %179 = load double, ptr %max, align 8
  %div340 = fdiv double %179, 3.276800e+04
  %180 = load i32, ptr %i, align 4
  %idxprom341 = sext i32 %180 to i64
  %arrayidx342 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 3), i64 0, i64 %idxprom341
  %181 = load double, ptr %arrayidx342, align 8
  %mul343 = fmul double %181, %div340
  store double %mul343, ptr %arrayidx342, align 8
  br label %for.inc344

for.inc344:                                       ; preds = %for.body331
  %182 = load i32, ptr %i, align 4
  %inc345 = add nsw i32 %182, 1
  store i32 %inc345, ptr %i, align 4
  br label %for.cond328, !llvm.loop !39

for.end346:                                       ; preds = %for.cond328
  store double 0x3FD5555555555555, ptr %sq, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond347

for.cond347:                                      ; preds = %for.inc398, %for.end346
  %183 = load i32, ptr %i, align 4
  %cmp348 = icmp slt i32 %183, 3
  br i1 %cmp348, label %for.body350, label %for.end400

for.body350:                                      ; preds = %for.cond347
  %184 = load i32, ptr %i, align 4
  %conv351 = sitofp i32 %184 to double
  %add352 = fadd double %conv351, 5.000000e-01
  %mul353 = fmul double 0x3FD0C152382D7365, %add352
  %185 = call double @llvm.cos.f64(double %mul353)
  %186 = load double, ptr %max, align 8
  %mul354 = fmul double %185, %186
  %div355 = fdiv double %mul354, 3.276800e+04
  %187 = load double, ptr %sq, align 8
  %mul356 = fmul double %div355, %187
  store double %mul356, ptr %w2, align 8
  %188 = load i32, ptr %i, align 4
  %conv357 = sitofp i32 %188 to double
  %add358 = fadd double %conv357, 5.000000e-01
  %mul359 = fmul double 0x3FD0C152382D7365, %add358
  %call = call double @tan(double noundef %mul359) #5
  %189 = load i32, ptr %i, align 4
  %idxprom360 = sext i32 %189 to i64
  %arrayidx361 = getelementptr inbounds [36 x double], ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2), i64 0, i64 %idxprom360
  store double %call, ptr %arrayidx361, align 8
  store i32 0, ptr %m, align 4
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc395, %for.body350
  %190 = load i32, ptr %m, align 4
  %cmp363 = icmp slt i32 %190, 6
  br i1 %cmp363, label %for.body365, label %for.end397

for.body365:                                      ; preds = %for.cond362
  %191 = load double, ptr %w2, align 8
  %192 = load i32, ptr %m, align 4
  %mul366 = mul nsw i32 2, %192
  %add367 = add nsw i32 %mul366, 1
  %conv368 = sitofp i32 %add367 to double
  %mul369 = fmul double 0x3FB0C152382D7365, %conv368
  %193 = load i32, ptr %i, align 4
  %mul370 = mul nsw i32 4, %193
  %add371 = add nsw i32 %mul370, 2
  %add372 = add nsw i32 %add371, 12
  %conv373 = sitofp i32 %add372 to double
  %mul374 = fmul double %mul369, %conv373
  %194 = call double @llvm.cos.f64(double %mul374)
  %mul375 = fmul double %191, %194
  %195 = load i32, ptr %m, align 4
  %idxprom376 = sext i32 %195 to i64
  %arrayidx377 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom376
  %196 = load i32, ptr %i, align 4
  %idxprom378 = sext i32 %196 to i64
  %arrayidx379 = getelementptr inbounds [6 x double], ptr %arrayidx377, i64 0, i64 %idxprom378
  store double %mul375, ptr %arrayidx379, align 8
  %197 = load double, ptr %w2, align 8
  %198 = load i32, ptr %m, align 4
  %mul380 = mul nsw i32 2, %198
  %add381 = add nsw i32 %mul380, 1
  %conv382 = sitofp i32 %add381 to double
  %mul383 = fmul double 0x3FB0C152382D7365, %conv382
  %199 = load i32, ptr %i, align 4
  %mul384 = mul nsw i32 4, %199
  %add385 = add nsw i32 %mul384, 2
  %add386 = add nsw i32 %add385, 36
  %conv387 = sitofp i32 %add386 to double
  %mul388 = fmul double %mul383, %conv387
  %200 = call double @llvm.cos.f64(double %mul388)
  %mul389 = fmul double %197, %200
  %201 = load i32, ptr %m, align 4
  %idxprom390 = sext i32 %201 to i64
  %arrayidx391 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom390
  %202 = load i32, ptr %i, align 4
  %add392 = add nsw i32 %202, 3
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds [6 x double], ptr %arrayidx391, i64 0, i64 %idxprom393
  store double %mul389, ptr %arrayidx394, align 8
  br label %for.inc395

for.inc395:                                       ; preds = %for.body365
  %203 = load i32, ptr %m, align 4
  %inc396 = add nsw i32 %203, 1
  store i32 %inc396, ptr %m, align 4
  br label %for.cond362, !llvm.loop !40

for.end397:                                       ; preds = %for.cond362
  br label %for.inc398

for.inc398:                                       ; preds = %for.end397
  %204 = load i32, ptr %i, align 4
  %inc399 = add nsw i32 %204, 1
  store i32 %inc399, ptr %i, align 4
  br label %for.cond347, !llvm.loop !41

for.end400:                                       ; preds = %for.cond347
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  %0 = load ptr, ptr %xk.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 255
  %1 = load i16, ptr %arrayidx, align 2
  %conv = sitofp i16 %1 to double
  store double %conv, ptr %t, align 8
  %2 = load ptr, ptr %xk.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, ptr %2, i64 223
  %3 = load i16, ptr %arrayidx1, align 2
  %conv2 = sext i16 %3 to i32
  %4 = load ptr, ptr %xk.addr, align 8
  %arrayidx3 = getelementptr inbounds i16, ptr %4, i64 287
  %5 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %5 to i32
  %sub = sub nsw i32 %conv2, %conv4
  %conv5 = sitofp i32 %sub to double
  %6 = load ptr, ptr %wp, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %wp, align 8
  %7 = load double, ptr %6, align 8
  %8 = load double, ptr %t, align 8
  %9 = call double @llvm.fmuladd.f64(double %conv5, double %7, double %8)
  store double %9, ptr %t, align 8
  %10 = load ptr, ptr %xk.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, ptr %10, i64 191
  %11 = load i16, ptr %arrayidx6, align 2
  %conv7 = sext i16 %11 to i32
  %12 = load ptr, ptr %xk.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %12, i64 319
  %13 = load i16, ptr %arrayidx8, align 2
  %conv9 = sext i16 %13 to i32
  %add = add nsw i32 %conv7, %conv9
  %conv10 = sitofp i32 %add to double
  %14 = load ptr, ptr %wp, align 8
  %incdec.ptr11 = getelementptr inbounds double, ptr %14, i32 1
  store ptr %incdec.ptr11, ptr %wp, align 8
  %15 = load double, ptr %14, align 8
  %16 = load double, ptr %t, align 8
  %17 = call double @llvm.fmuladd.f64(double %conv10, double %15, double %16)
  store double %17, ptr %t, align 8
  %18 = load ptr, ptr %xk.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, ptr %18, i64 159
  %19 = load i16, ptr %arrayidx12, align 2
  %conv13 = sext i16 %19 to i32
  %20 = load ptr, ptr %xk.addr, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %20, i64 351
  %21 = load i16, ptr %arrayidx14, align 2
  %conv15 = sext i16 %21 to i32
  %sub16 = sub nsw i32 %conv13, %conv15
  %conv17 = sitofp i32 %sub16 to double
  %22 = load ptr, ptr %wp, align 8
  %incdec.ptr18 = getelementptr inbounds double, ptr %22, i32 1
  store ptr %incdec.ptr18, ptr %wp, align 8
  %23 = load double, ptr %22, align 8
  %24 = load double, ptr %t, align 8
  %25 = call double @llvm.fmuladd.f64(double %conv17, double %23, double %24)
  store double %25, ptr %t, align 8
  %26 = load ptr, ptr %xk.addr, align 8
  %arrayidx19 = getelementptr inbounds i16, ptr %26, i64 127
  %27 = load i16, ptr %arrayidx19, align 2
  %conv20 = sext i16 %27 to i32
  %28 = load ptr, ptr %xk.addr, align 8
  %arrayidx21 = getelementptr inbounds i16, ptr %28, i64 383
  %29 = load i16, ptr %arrayidx21, align 2
  %conv22 = sext i16 %29 to i32
  %add23 = add nsw i32 %conv20, %conv22
  %conv24 = sitofp i32 %add23 to double
  %30 = load ptr, ptr %wp, align 8
  %incdec.ptr25 = getelementptr inbounds double, ptr %30, i32 1
  store ptr %incdec.ptr25, ptr %wp, align 8
  %31 = load double, ptr %30, align 8
  %32 = load double, ptr %t, align 8
  %33 = call double @llvm.fmuladd.f64(double %conv24, double %31, double %32)
  store double %33, ptr %t, align 8
  %34 = load ptr, ptr %xk.addr, align 8
  %arrayidx26 = getelementptr inbounds i16, ptr %34, i64 95
  %35 = load i16, ptr %arrayidx26, align 2
  %conv27 = sext i16 %35 to i32
  %36 = load ptr, ptr %xk.addr, align 8
  %arrayidx28 = getelementptr inbounds i16, ptr %36, i64 415
  %37 = load i16, ptr %arrayidx28, align 2
  %conv29 = sext i16 %37 to i32
  %sub30 = sub nsw i32 %conv27, %conv29
  %conv31 = sitofp i32 %sub30 to double
  %38 = load ptr, ptr %wp, align 8
  %incdec.ptr32 = getelementptr inbounds double, ptr %38, i32 1
  store ptr %incdec.ptr32, ptr %wp, align 8
  %39 = load double, ptr %38, align 8
  %40 = load double, ptr %t, align 8
  %41 = call double @llvm.fmuladd.f64(double %conv31, double %39, double %40)
  store double %41, ptr %t, align 8
  %42 = load ptr, ptr %xk.addr, align 8
  %arrayidx33 = getelementptr inbounds i16, ptr %42, i64 63
  %43 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %43 to i32
  %44 = load ptr, ptr %xk.addr, align 8
  %arrayidx35 = getelementptr inbounds i16, ptr %44, i64 447
  %45 = load i16, ptr %arrayidx35, align 2
  %conv36 = sext i16 %45 to i32
  %add37 = add nsw i32 %conv34, %conv36
  %conv38 = sitofp i32 %add37 to double
  %46 = load ptr, ptr %wp, align 8
  %incdec.ptr39 = getelementptr inbounds double, ptr %46, i32 1
  store ptr %incdec.ptr39, ptr %wp, align 8
  %47 = load double, ptr %46, align 8
  %48 = load double, ptr %t, align 8
  %49 = call double @llvm.fmuladd.f64(double %conv38, double %47, double %48)
  store double %49, ptr %t, align 8
  %50 = load ptr, ptr %xk.addr, align 8
  %arrayidx40 = getelementptr inbounds i16, ptr %50, i64 31
  %51 = load i16, ptr %arrayidx40, align 2
  %conv41 = sext i16 %51 to i32
  %52 = load ptr, ptr %xk.addr, align 8
  %arrayidx42 = getelementptr inbounds i16, ptr %52, i64 479
  %53 = load i16, ptr %arrayidx42, align 2
  %conv43 = sext i16 %53 to i32
  %sub44 = sub nsw i32 %conv41, %conv43
  %conv45 = sitofp i32 %sub44 to double
  %54 = load ptr, ptr %wp, align 8
  %incdec.ptr46 = getelementptr inbounds double, ptr %54, i32 1
  store ptr %incdec.ptr46, ptr %wp, align 8
  %55 = load double, ptr %54, align 8
  %56 = load double, ptr %t, align 8
  %57 = call double @llvm.fmuladd.f64(double %conv45, double %55, double %56)
  store double %57, ptr %t, align 8
  %58 = load double, ptr %t, align 8
  %59 = load ptr, ptr %in.addr, align 8
  %arrayidx47 = getelementptr inbounds double, ptr %59, i64 15
  store double %58, ptr %arrayidx47, align 8
  store i32 14, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %60 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %60, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load ptr, ptr %xk.addr, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom = sext i32 %62 to i64
  %arrayidx49 = getelementptr inbounds i16, ptr %61, i64 %idxprom
  store ptr %arrayidx49, ptr %x1, align 8
  %63 = load ptr, ptr %xk.addr, align 8
  %64 = load i32, ptr %i, align 4
  %sub50 = sub nsw i32 0, %64
  %idxprom51 = sext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %63, i64 %idxprom51
  store ptr %arrayidx52, ptr %x2, align 8
  %65 = load ptr, ptr %x2, align 8
  %arrayidx53 = getelementptr inbounds i16, ptr %65, i64 270
  %66 = load i16, ptr %arrayidx53, align 2
  %conv54 = sitofp i16 %66 to double
  store double %conv54, ptr %s, align 8
  %67 = load ptr, ptr %x1, align 8
  %arrayidx55 = getelementptr inbounds i16, ptr %67, i64 240
  %68 = load i16, ptr %arrayidx55, align 2
  %conv56 = sitofp i16 %68 to double
  store double %conv56, ptr %t, align 8
  %69 = load ptr, ptr %wp, align 8
  %incdec.ptr57 = getelementptr inbounds double, ptr %69, i32 1
  store ptr %incdec.ptr57, ptr %wp, align 8
  %70 = load double, ptr %69, align 8
  store double %70, ptr %w, align 8
  %71 = load ptr, ptr %x2, align 8
  %arrayidx58 = getelementptr inbounds i16, ptr %71, i64 334
  %72 = load i16, ptr %arrayidx58, align 2
  %conv59 = sext i16 %72 to i32
  %conv60 = sitofp i32 %conv59 to double
  %73 = load double, ptr %w, align 8
  %74 = load double, ptr %s, align 8
  %75 = call double @llvm.fmuladd.f64(double %conv60, double %73, double %74)
  store double %75, ptr %s, align 8
  %76 = load ptr, ptr %x1, align 8
  %arrayidx61 = getelementptr inbounds i16, ptr %76, i64 176
  %77 = load i16, ptr %arrayidx61, align 2
  %conv62 = sext i16 %77 to i32
  %conv63 = sitofp i32 %conv62 to double
  %78 = load double, ptr %w, align 8
  %79 = load double, ptr %t, align 8
  %80 = call double @llvm.fmuladd.f64(double %conv63, double %78, double %79)
  store double %80, ptr %t, align 8
  %81 = load ptr, ptr %wp, align 8
  %incdec.ptr64 = getelementptr inbounds double, ptr %81, i32 1
  store ptr %incdec.ptr64, ptr %wp, align 8
  %82 = load double, ptr %81, align 8
  store double %82, ptr %w, align 8
  %83 = load ptr, ptr %x2, align 8
  %arrayidx65 = getelementptr inbounds i16, ptr %83, i64 398
  %84 = load i16, ptr %arrayidx65, align 2
  %conv66 = sext i16 %84 to i32
  %conv67 = sitofp i32 %conv66 to double
  %85 = load double, ptr %w, align 8
  %86 = load double, ptr %s, align 8
  %87 = call double @llvm.fmuladd.f64(double %conv67, double %85, double %86)
  store double %87, ptr %s, align 8
  %88 = load ptr, ptr %x1, align 8
  %arrayidx68 = getelementptr inbounds i16, ptr %88, i64 112
  %89 = load i16, ptr %arrayidx68, align 2
  %conv69 = sext i16 %89 to i32
  %conv70 = sitofp i32 %conv69 to double
  %90 = load double, ptr %w, align 8
  %91 = load double, ptr %t, align 8
  %92 = call double @llvm.fmuladd.f64(double %conv70, double %90, double %91)
  store double %92, ptr %t, align 8
  %93 = load ptr, ptr %wp, align 8
  %incdec.ptr71 = getelementptr inbounds double, ptr %93, i32 1
  store ptr %incdec.ptr71, ptr %wp, align 8
  %94 = load double, ptr %93, align 8
  store double %94, ptr %w, align 8
  %95 = load ptr, ptr %x2, align 8
  %arrayidx72 = getelementptr inbounds i16, ptr %95, i64 462
  %96 = load i16, ptr %arrayidx72, align 2
  %conv73 = sext i16 %96 to i32
  %conv74 = sitofp i32 %conv73 to double
  %97 = load double, ptr %w, align 8
  %98 = load double, ptr %s, align 8
  %99 = call double @llvm.fmuladd.f64(double %conv74, double %97, double %98)
  store double %99, ptr %s, align 8
  %100 = load ptr, ptr %x1, align 8
  %arrayidx75 = getelementptr inbounds i16, ptr %100, i64 48
  %101 = load i16, ptr %arrayidx75, align 2
  %conv76 = sext i16 %101 to i32
  %conv77 = sitofp i32 %conv76 to double
  %102 = load double, ptr %w, align 8
  %103 = load double, ptr %t, align 8
  %104 = call double @llvm.fmuladd.f64(double %conv77, double %102, double %103)
  store double %104, ptr %t, align 8
  %105 = load ptr, ptr %wp, align 8
  %incdec.ptr78 = getelementptr inbounds double, ptr %105, i32 1
  store ptr %incdec.ptr78, ptr %wp, align 8
  %106 = load double, ptr %105, align 8
  store double %106, ptr %w, align 8
  %107 = load ptr, ptr %x2, align 8
  %arrayidx79 = getelementptr inbounds i16, ptr %107, i64 14
  %108 = load i16, ptr %arrayidx79, align 2
  %conv80 = sext i16 %108 to i32
  %conv81 = sitofp i32 %conv80 to double
  %109 = load double, ptr %w, align 8
  %110 = load double, ptr %s, align 8
  %111 = call double @llvm.fmuladd.f64(double %conv81, double %109, double %110)
  store double %111, ptr %s, align 8
  %112 = load ptr, ptr %x1, align 8
  %arrayidx82 = getelementptr inbounds i16, ptr %112, i64 496
  %113 = load i16, ptr %arrayidx82, align 2
  %conv83 = sext i16 %113 to i32
  %conv84 = sitofp i32 %conv83 to double
  %114 = load double, ptr %w, align 8
  %115 = load double, ptr %t, align 8
  %116 = call double @llvm.fmuladd.f64(double %conv84, double %114, double %115)
  store double %116, ptr %t, align 8
  %117 = load ptr, ptr %wp, align 8
  %incdec.ptr85 = getelementptr inbounds double, ptr %117, i32 1
  store ptr %incdec.ptr85, ptr %wp, align 8
  %118 = load double, ptr %117, align 8
  store double %118, ptr %w, align 8
  %119 = load ptr, ptr %x2, align 8
  %arrayidx86 = getelementptr inbounds i16, ptr %119, i64 78
  %120 = load i16, ptr %arrayidx86, align 2
  %conv87 = sext i16 %120 to i32
  %conv88 = sitofp i32 %conv87 to double
  %121 = load double, ptr %w, align 8
  %122 = load double, ptr %s, align 8
  %123 = call double @llvm.fmuladd.f64(double %conv88, double %121, double %122)
  store double %123, ptr %s, align 8
  %124 = load ptr, ptr %x1, align 8
  %arrayidx89 = getelementptr inbounds i16, ptr %124, i64 432
  %125 = load i16, ptr %arrayidx89, align 2
  %conv90 = sext i16 %125 to i32
  %conv91 = sitofp i32 %conv90 to double
  %126 = load double, ptr %w, align 8
  %127 = load double, ptr %t, align 8
  %128 = call double @llvm.fmuladd.f64(double %conv91, double %126, double %127)
  store double %128, ptr %t, align 8
  %129 = load ptr, ptr %wp, align 8
  %incdec.ptr92 = getelementptr inbounds double, ptr %129, i32 1
  store ptr %incdec.ptr92, ptr %wp, align 8
  %130 = load double, ptr %129, align 8
  store double %130, ptr %w, align 8
  %131 = load ptr, ptr %x2, align 8
  %arrayidx93 = getelementptr inbounds i16, ptr %131, i64 142
  %132 = load i16, ptr %arrayidx93, align 2
  %conv94 = sext i16 %132 to i32
  %conv95 = sitofp i32 %conv94 to double
  %133 = load double, ptr %w, align 8
  %134 = load double, ptr %s, align 8
  %135 = call double @llvm.fmuladd.f64(double %conv95, double %133, double %134)
  store double %135, ptr %s, align 8
  %136 = load ptr, ptr %x1, align 8
  %arrayidx96 = getelementptr inbounds i16, ptr %136, i64 368
  %137 = load i16, ptr %arrayidx96, align 2
  %conv97 = sext i16 %137 to i32
  %conv98 = sitofp i32 %conv97 to double
  %138 = load double, ptr %w, align 8
  %139 = load double, ptr %t, align 8
  %140 = call double @llvm.fmuladd.f64(double %conv98, double %138, double %139)
  store double %140, ptr %t, align 8
  %141 = load ptr, ptr %wp, align 8
  %incdec.ptr99 = getelementptr inbounds double, ptr %141, i32 1
  store ptr %incdec.ptr99, ptr %wp, align 8
  %142 = load double, ptr %141, align 8
  store double %142, ptr %w, align 8
  %143 = load ptr, ptr %x2, align 8
  %arrayidx100 = getelementptr inbounds i16, ptr %143, i64 206
  %144 = load i16, ptr %arrayidx100, align 2
  %conv101 = sext i16 %144 to i32
  %conv102 = sitofp i32 %conv101 to double
  %145 = load double, ptr %w, align 8
  %146 = load double, ptr %s, align 8
  %147 = call double @llvm.fmuladd.f64(double %conv102, double %145, double %146)
  store double %147, ptr %s, align 8
  %148 = load ptr, ptr %x1, align 8
  %arrayidx103 = getelementptr inbounds i16, ptr %148, i64 304
  %149 = load i16, ptr %arrayidx103, align 2
  %conv104 = sext i16 %149 to i32
  %conv105 = sitofp i32 %conv104 to double
  %150 = load double, ptr %w, align 8
  %151 = load double, ptr %t, align 8
  %152 = call double @llvm.fmuladd.f64(double %conv105, double %150, double %151)
  store double %152, ptr %t, align 8
  %153 = load ptr, ptr %wp, align 8
  %incdec.ptr106 = getelementptr inbounds double, ptr %153, i32 1
  store ptr %incdec.ptr106, ptr %wp, align 8
  %154 = load double, ptr %153, align 8
  store double %154, ptr %w, align 8
  %155 = load ptr, ptr %x1, align 8
  %arrayidx107 = getelementptr inbounds i16, ptr %155, i64 16
  %156 = load i16, ptr %arrayidx107, align 2
  %conv108 = sext i16 %156 to i32
  %conv109 = sitofp i32 %conv108 to double
  %157 = load double, ptr %w, align 8
  %158 = load double, ptr %s, align 8
  %159 = call double @llvm.fmuladd.f64(double %conv109, double %157, double %158)
  store double %159, ptr %s, align 8
  %160 = load ptr, ptr %x2, align 8
  %arrayidx110 = getelementptr inbounds i16, ptr %160, i64 494
  %161 = load i16, ptr %arrayidx110, align 2
  %conv111 = sext i16 %161 to i32
  %conv112 = sitofp i32 %conv111 to double
  %162 = load double, ptr %w, align 8
  %163 = load double, ptr %t, align 8
  %neg = fneg double %conv112
  %164 = call double @llvm.fmuladd.f64(double %neg, double %162, double %163)
  store double %164, ptr %t, align 8
  %165 = load ptr, ptr %wp, align 8
  %incdec.ptr113 = getelementptr inbounds double, ptr %165, i32 1
  store ptr %incdec.ptr113, ptr %wp, align 8
  %166 = load double, ptr %165, align 8
  store double %166, ptr %w, align 8
  %167 = load ptr, ptr %x1, align 8
  %arrayidx114 = getelementptr inbounds i16, ptr %167, i64 80
  %168 = load i16, ptr %arrayidx114, align 2
  %conv115 = sext i16 %168 to i32
  %conv116 = sitofp i32 %conv115 to double
  %169 = load double, ptr %w, align 8
  %170 = load double, ptr %s, align 8
  %171 = call double @llvm.fmuladd.f64(double %conv116, double %169, double %170)
  store double %171, ptr %s, align 8
  %172 = load ptr, ptr %x2, align 8
  %arrayidx117 = getelementptr inbounds i16, ptr %172, i64 430
  %173 = load i16, ptr %arrayidx117, align 2
  %conv118 = sext i16 %173 to i32
  %conv119 = sitofp i32 %conv118 to double
  %174 = load double, ptr %w, align 8
  %175 = load double, ptr %t, align 8
  %neg120 = fneg double %conv119
  %176 = call double @llvm.fmuladd.f64(double %neg120, double %174, double %175)
  store double %176, ptr %t, align 8
  %177 = load ptr, ptr %wp, align 8
  %incdec.ptr121 = getelementptr inbounds double, ptr %177, i32 1
  store ptr %incdec.ptr121, ptr %wp, align 8
  %178 = load double, ptr %177, align 8
  store double %178, ptr %w, align 8
  %179 = load ptr, ptr %x1, align 8
  %arrayidx122 = getelementptr inbounds i16, ptr %179, i64 144
  %180 = load i16, ptr %arrayidx122, align 2
  %conv123 = sext i16 %180 to i32
  %conv124 = sitofp i32 %conv123 to double
  %181 = load double, ptr %w, align 8
  %182 = load double, ptr %s, align 8
  %183 = call double @llvm.fmuladd.f64(double %conv124, double %181, double %182)
  store double %183, ptr %s, align 8
  %184 = load ptr, ptr %x2, align 8
  %arrayidx125 = getelementptr inbounds i16, ptr %184, i64 366
  %185 = load i16, ptr %arrayidx125, align 2
  %conv126 = sext i16 %185 to i32
  %conv127 = sitofp i32 %conv126 to double
  %186 = load double, ptr %w, align 8
  %187 = load double, ptr %t, align 8
  %neg128 = fneg double %conv127
  %188 = call double @llvm.fmuladd.f64(double %neg128, double %186, double %187)
  store double %188, ptr %t, align 8
  %189 = load ptr, ptr %wp, align 8
  %incdec.ptr129 = getelementptr inbounds double, ptr %189, i32 1
  store ptr %incdec.ptr129, ptr %wp, align 8
  %190 = load double, ptr %189, align 8
  store double %190, ptr %w, align 8
  %191 = load ptr, ptr %x1, align 8
  %arrayidx130 = getelementptr inbounds i16, ptr %191, i64 208
  %192 = load i16, ptr %arrayidx130, align 2
  %conv131 = sext i16 %192 to i32
  %conv132 = sitofp i32 %conv131 to double
  %193 = load double, ptr %w, align 8
  %194 = load double, ptr %s, align 8
  %195 = call double @llvm.fmuladd.f64(double %conv132, double %193, double %194)
  store double %195, ptr %s, align 8
  %196 = load ptr, ptr %x2, align 8
  %arrayidx133 = getelementptr inbounds i16, ptr %196, i64 302
  %197 = load i16, ptr %arrayidx133, align 2
  %conv134 = sext i16 %197 to i32
  %conv135 = sitofp i32 %conv134 to double
  %198 = load double, ptr %w, align 8
  %199 = load double, ptr %t, align 8
  %neg136 = fneg double %conv135
  %200 = call double @llvm.fmuladd.f64(double %neg136, double %198, double %199)
  store double %200, ptr %t, align 8
  %201 = load ptr, ptr %wp, align 8
  %incdec.ptr137 = getelementptr inbounds double, ptr %201, i32 1
  store ptr %incdec.ptr137, ptr %wp, align 8
  %202 = load double, ptr %201, align 8
  store double %202, ptr %w, align 8
  %203 = load ptr, ptr %x1, align 8
  %arrayidx138 = getelementptr inbounds i16, ptr %203, i64 272
  %204 = load i16, ptr %arrayidx138, align 2
  %conv139 = sext i16 %204 to i32
  %conv140 = sitofp i32 %conv139 to double
  %205 = load double, ptr %w, align 8
  %206 = load double, ptr %s, align 8
  %neg141 = fneg double %conv140
  %207 = call double @llvm.fmuladd.f64(double %neg141, double %205, double %206)
  store double %207, ptr %s, align 8
  %208 = load ptr, ptr %x2, align 8
  %arrayidx142 = getelementptr inbounds i16, ptr %208, i64 238
  %209 = load i16, ptr %arrayidx142, align 2
  %conv143 = sext i16 %209 to i32
  %conv144 = sitofp i32 %conv143 to double
  %210 = load double, ptr %w, align 8
  %211 = load double, ptr %t, align 8
  %212 = call double @llvm.fmuladd.f64(double %conv144, double %210, double %211)
  store double %212, ptr %t, align 8
  %213 = load ptr, ptr %wp, align 8
  %incdec.ptr145 = getelementptr inbounds double, ptr %213, i32 1
  store ptr %incdec.ptr145, ptr %wp, align 8
  %214 = load double, ptr %213, align 8
  store double %214, ptr %w, align 8
  %215 = load ptr, ptr %x1, align 8
  %arrayidx146 = getelementptr inbounds i16, ptr %215, i64 336
  %216 = load i16, ptr %arrayidx146, align 2
  %conv147 = sext i16 %216 to i32
  %conv148 = sitofp i32 %conv147 to double
  %217 = load double, ptr %w, align 8
  %218 = load double, ptr %s, align 8
  %neg149 = fneg double %conv148
  %219 = call double @llvm.fmuladd.f64(double %neg149, double %217, double %218)
  store double %219, ptr %s, align 8
  %220 = load ptr, ptr %x2, align 8
  %arrayidx150 = getelementptr inbounds i16, ptr %220, i64 174
  %221 = load i16, ptr %arrayidx150, align 2
  %conv151 = sext i16 %221 to i32
  %conv152 = sitofp i32 %conv151 to double
  %222 = load double, ptr %w, align 8
  %223 = load double, ptr %t, align 8
  %224 = call double @llvm.fmuladd.f64(double %conv152, double %222, double %223)
  store double %224, ptr %t, align 8
  %225 = load ptr, ptr %wp, align 8
  %incdec.ptr153 = getelementptr inbounds double, ptr %225, i32 1
  store ptr %incdec.ptr153, ptr %wp, align 8
  %226 = load double, ptr %225, align 8
  store double %226, ptr %w, align 8
  %227 = load ptr, ptr %x1, align 8
  %arrayidx154 = getelementptr inbounds i16, ptr %227, i64 400
  %228 = load i16, ptr %arrayidx154, align 2
  %conv155 = sext i16 %228 to i32
  %conv156 = sitofp i32 %conv155 to double
  %229 = load double, ptr %w, align 8
  %230 = load double, ptr %s, align 8
  %neg157 = fneg double %conv156
  %231 = call double @llvm.fmuladd.f64(double %neg157, double %229, double %230)
  store double %231, ptr %s, align 8
  %232 = load ptr, ptr %x2, align 8
  %arrayidx158 = getelementptr inbounds i16, ptr %232, i64 110
  %233 = load i16, ptr %arrayidx158, align 2
  %conv159 = sext i16 %233 to i32
  %conv160 = sitofp i32 %conv159 to double
  %234 = load double, ptr %w, align 8
  %235 = load double, ptr %t, align 8
  %236 = call double @llvm.fmuladd.f64(double %conv160, double %234, double %235)
  store double %236, ptr %t, align 8
  %237 = load ptr, ptr %wp, align 8
  %incdec.ptr161 = getelementptr inbounds double, ptr %237, i32 1
  store ptr %incdec.ptr161, ptr %wp, align 8
  %238 = load double, ptr %237, align 8
  store double %238, ptr %w, align 8
  %239 = load ptr, ptr %x1, align 8
  %arrayidx162 = getelementptr inbounds i16, ptr %239, i64 464
  %240 = load i16, ptr %arrayidx162, align 2
  %conv163 = sext i16 %240 to i32
  %conv164 = sitofp i32 %conv163 to double
  %241 = load double, ptr %w, align 8
  %242 = load double, ptr %s, align 8
  %neg165 = fneg double %conv164
  %243 = call double @llvm.fmuladd.f64(double %neg165, double %241, double %242)
  store double %243, ptr %s, align 8
  %244 = load ptr, ptr %x2, align 8
  %arrayidx166 = getelementptr inbounds i16, ptr %244, i64 46
  %245 = load i16, ptr %arrayidx166, align 2
  %conv167 = sext i16 %245 to i32
  %conv168 = sitofp i32 %conv167 to double
  %246 = load double, ptr %w, align 8
  %247 = load double, ptr %t, align 8
  %248 = call double @llvm.fmuladd.f64(double %conv168, double %246, double %247)
  store double %248, ptr %t, align 8
  %249 = load double, ptr %s, align 8
  %250 = load ptr, ptr %in.addr, align 8
  %251 = load i32, ptr %i, align 4
  %sub169 = sub nsw i32 30, %251
  %idxprom170 = sext i32 %sub169 to i64
  %arrayidx171 = getelementptr inbounds double, ptr %250, i64 %idxprom170
  store double %249, ptr %arrayidx171, align 8
  %252 = load double, ptr %t, align 8
  %253 = load ptr, ptr %in.addr, align 8
  %254 = load i32, ptr %i, align 4
  %idxprom172 = sext i32 %254 to i64
  %arrayidx173 = getelementptr inbounds double, ptr %253, i64 %idxprom172
  store double %252, ptr %arrayidx173, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %255 = load i32, ptr %i, align 4
  %dec = add nsw i32 %255, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  %256 = load ptr, ptr %xk.addr, align 8
  %arrayidx174 = getelementptr inbounds i16, ptr %256, i64 239
  %257 = load i16, ptr %arrayidx174, align 2
  %conv175 = sitofp i16 %257 to double
  store double %conv175, ptr %s, align 8
  %258 = load ptr, ptr %xk.addr, align 8
  %arrayidx176 = getelementptr inbounds i16, ptr %258, i64 175
  %259 = load i16, ptr %arrayidx176, align 2
  %conv177 = sext i16 %259 to i32
  %conv178 = sitofp i32 %conv177 to double
  %260 = load ptr, ptr %wp, align 8
  %incdec.ptr179 = getelementptr inbounds double, ptr %260, i32 1
  store ptr %incdec.ptr179, ptr %wp, align 8
  %261 = load double, ptr %260, align 8
  %262 = load double, ptr %s, align 8
  %263 = call double @llvm.fmuladd.f64(double %conv178, double %261, double %262)
  store double %263, ptr %s, align 8
  %264 = load ptr, ptr %xk.addr, align 8
  %arrayidx180 = getelementptr inbounds i16, ptr %264, i64 111
  %265 = load i16, ptr %arrayidx180, align 2
  %conv181 = sext i16 %265 to i32
  %conv182 = sitofp i32 %conv181 to double
  %266 = load ptr, ptr %wp, align 8
  %incdec.ptr183 = getelementptr inbounds double, ptr %266, i32 1
  store ptr %incdec.ptr183, ptr %wp, align 8
  %267 = load double, ptr %266, align 8
  %268 = load double, ptr %s, align 8
  %269 = call double @llvm.fmuladd.f64(double %conv182, double %267, double %268)
  store double %269, ptr %s, align 8
  %270 = load ptr, ptr %xk.addr, align 8
  %arrayidx184 = getelementptr inbounds i16, ptr %270, i64 47
  %271 = load i16, ptr %arrayidx184, align 2
  %conv185 = sext i16 %271 to i32
  %conv186 = sitofp i32 %conv185 to double
  %272 = load ptr, ptr %wp, align 8
  %incdec.ptr187 = getelementptr inbounds double, ptr %272, i32 1
  store ptr %incdec.ptr187, ptr %wp, align 8
  %273 = load double, ptr %272, align 8
  %274 = load double, ptr %s, align 8
  %275 = call double @llvm.fmuladd.f64(double %conv186, double %273, double %274)
  store double %275, ptr %s, align 8
  %276 = load ptr, ptr %xk.addr, align 8
  %arrayidx188 = getelementptr inbounds i16, ptr %276, i64 303
  %277 = load i16, ptr %arrayidx188, align 2
  %conv189 = sext i16 %277 to i32
  %conv190 = sitofp i32 %conv189 to double
  %278 = load ptr, ptr %wp, align 8
  %incdec.ptr191 = getelementptr inbounds double, ptr %278, i32 1
  store ptr %incdec.ptr191, ptr %wp, align 8
  %279 = load double, ptr %278, align 8
  %280 = load double, ptr %s, align 8
  %neg192 = fneg double %conv190
  %281 = call double @llvm.fmuladd.f64(double %neg192, double %279, double %280)
  store double %281, ptr %s, align 8
  %282 = load ptr, ptr %xk.addr, align 8
  %arrayidx193 = getelementptr inbounds i16, ptr %282, i64 367
  %283 = load i16, ptr %arrayidx193, align 2
  %conv194 = sext i16 %283 to i32
  %conv195 = sitofp i32 %conv194 to double
  %284 = load ptr, ptr %wp, align 8
  %incdec.ptr196 = getelementptr inbounds double, ptr %284, i32 1
  store ptr %incdec.ptr196, ptr %wp, align 8
  %285 = load double, ptr %284, align 8
  %286 = load double, ptr %s, align 8
  %neg197 = fneg double %conv195
  %287 = call double @llvm.fmuladd.f64(double %neg197, double %285, double %286)
  store double %287, ptr %s, align 8
  %288 = load ptr, ptr %xk.addr, align 8
  %arrayidx198 = getelementptr inbounds i16, ptr %288, i64 431
  %289 = load i16, ptr %arrayidx198, align 2
  %conv199 = sext i16 %289 to i32
  %conv200 = sitofp i32 %conv199 to double
  %290 = load ptr, ptr %wp, align 8
  %incdec.ptr201 = getelementptr inbounds double, ptr %290, i32 1
  store ptr %incdec.ptr201, ptr %wp, align 8
  %291 = load double, ptr %290, align 8
  %292 = load double, ptr %s, align 8
  %neg202 = fneg double %conv200
  %293 = call double @llvm.fmuladd.f64(double %neg202, double %291, double %292)
  store double %293, ptr %s, align 8
  %294 = load ptr, ptr %xk.addr, align 8
  %arrayidx203 = getelementptr inbounds i16, ptr %294, i64 495
  %295 = load i16, ptr %arrayidx203, align 2
  %conv204 = sext i16 %295 to i32
  %conv205 = sitofp i32 %conv204 to double
  %296 = load ptr, ptr %wp, align 8
  %incdec.ptr206 = getelementptr inbounds double, ptr %296, i32 1
  store ptr %incdec.ptr206, ptr %wp, align 8
  %297 = load double, ptr %296, align 8
  %298 = load double, ptr %s, align 8
  %neg207 = fneg double %conv205
  %299 = call double @llvm.fmuladd.f64(double %neg207, double %297, double %298)
  store double %299, ptr %s, align 8
  %300 = load ptr, ptr %in.addr, align 8
  %incdec.ptr208 = getelementptr inbounds double, ptr %300, i32 1
  store ptr %incdec.ptr208, ptr %in.addr, align 8
  store ptr @mm, ptr %wp, align 8
  store i32 15, ptr %i, align 4
  br label %for.cond209

for.cond209:                                      ; preds = %for.inc234, %for.end
  %301 = load i32, ptr %i, align 4
  %cmp210 = icmp sge i32 %301, 0
  br i1 %cmp210, label %for.body212, label %for.end236

for.body212:                                      ; preds = %for.cond209
  %302 = load double, ptr %s, align 8
  store double %302, ptr %s0, align 8
  %303 = load double, ptr %t, align 8
  %304 = load ptr, ptr %wp, align 8
  %incdec.ptr213 = getelementptr inbounds double, ptr %304, i32 1
  store ptr %incdec.ptr213, ptr %wp, align 8
  %305 = load double, ptr %304, align 8
  %mul = fmul double %303, %305
  store double %mul, ptr %s1, align 8
  store i32 14, ptr %j, align 4
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc224, %for.body212
  %306 = load i32, ptr %j, align 4
  %cmp215 = icmp sge i32 %306, 0
  br i1 %cmp215, label %for.body217, label %for.end226

for.body217:                                      ; preds = %for.cond214
  %307 = load ptr, ptr %wp, align 8
  %incdec.ptr218 = getelementptr inbounds double, ptr %307, i32 1
  store ptr %incdec.ptr218, ptr %wp, align 8
  %308 = load double, ptr %307, align 8
  %309 = load ptr, ptr %in.addr, align 8
  %incdec.ptr219 = getelementptr inbounds double, ptr %309, i32 1
  store ptr %incdec.ptr219, ptr %in.addr, align 8
  %310 = load double, ptr %309, align 8
  %311 = load double, ptr %s0, align 8
  %312 = call double @llvm.fmuladd.f64(double %308, double %310, double %311)
  store double %312, ptr %s0, align 8
  %313 = load ptr, ptr %wp, align 8
  %incdec.ptr221 = getelementptr inbounds double, ptr %313, i32 1
  store ptr %incdec.ptr221, ptr %wp, align 8
  %314 = load double, ptr %313, align 8
  %315 = load ptr, ptr %in.addr, align 8
  %incdec.ptr222 = getelementptr inbounds double, ptr %315, i32 1
  store ptr %incdec.ptr222, ptr %in.addr, align 8
  %316 = load double, ptr %315, align 8
  %317 = load double, ptr %s1, align 8
  %318 = call double @llvm.fmuladd.f64(double %314, double %316, double %317)
  store double %318, ptr %s1, align 8
  br label %for.inc224

for.inc224:                                       ; preds = %for.body217
  %319 = load i32, ptr %j, align 4
  %dec225 = add nsw i32 %319, -1
  store i32 %dec225, ptr %j, align 4
  br label %for.cond214, !llvm.loop !43

for.end226:                                       ; preds = %for.cond214
  %320 = load ptr, ptr %in.addr, align 8
  %add.ptr = getelementptr inbounds double, ptr %320, i64 -30
  store ptr %add.ptr, ptr %in.addr, align 8
  %321 = load double, ptr %s0, align 8
  %322 = load double, ptr %s1, align 8
  %add227 = fadd double %321, %322
  %323 = load ptr, ptr %d.addr, align 8
  %324 = load i32, ptr %i, align 4
  %idxprom228 = sext i32 %324 to i64
  %arrayidx229 = getelementptr inbounds double, ptr %323, i64 %idxprom228
  store double %add227, ptr %arrayidx229, align 8
  %325 = load double, ptr %s0, align 8
  %326 = load double, ptr %s1, align 8
  %sub230 = fsub double %325, %326
  %327 = load ptr, ptr %d.addr, align 8
  %328 = load i32, ptr %i, align 4
  %sub231 = sub nsw i32 31, %328
  %idxprom232 = sext i32 %sub231 to i64
  %arrayidx233 = getelementptr inbounds double, ptr %327, i64 %idxprom232
  store double %sub230, ptr %arrayidx233, align 8
  br label %for.inc234

for.inc234:                                       ; preds = %for.end226
  %329 = load i32, ptr %i, align 4
  %dec235 = add nsw i32 %329, -1
  store i32 %dec235, ptr %i, align 4
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

; Function Attrs: noinline nounwind optnone ssp uwtable
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
  store i32 5, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %0 = load i32, ptr %m, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %m, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [6 x double], ptr %arrayidx, i64 0, i64 0
  %2 = load double, ptr %arrayidx1, align 8
  store double %2, ptr %a0, align 8
  %3 = load i32, ptr %m, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [6 x double], ptr %arrayidx3, i64 0, i64 1
  %4 = load double, ptr %arrayidx4, align 8
  store double %4, ptr %a1, align 8
  %5 = load i32, ptr %m, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [6 x double], ptr %arrayidx6, i64 0, i64 2
  %6 = load double, ptr %arrayidx7, align 8
  store double %6, ptr %a2, align 8
  %7 = load i32, ptr %m, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [6 x double], ptr %arrayidx9, i64 0, i64 3
  %8 = load double, ptr %arrayidx10, align 8
  store double %8, ptr %a3, align 8
  %9 = load i32, ptr %m, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [6 x double], ptr %arrayidx12, i64 0, i64 4
  %10 = load double, ptr %arrayidx13, align 8
  store double %10, ptr %a4, align 8
  %11 = load i32, ptr %m, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [6 x double], ptr %arrayidx15, i64 0, i64 5
  %12 = load double, ptr %arrayidx16, align 8
  store double %12, ptr %a5, align 8
  store i32 2, ptr %l, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %13 = load i32, ptr %l, align 4
  %cmp18 = icmp sge i32 %13, 0
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %14 = load double, ptr %a0, align 8
  %15 = load ptr, ptr %in.addr, align 8
  %16 = load i32, ptr %l, align 4
  %mul = mul nsw i32 6, %16
  %idxprom20 = sext i32 %mul to i64
  %arrayidx21 = getelementptr inbounds double, ptr %15, i64 %idxprom20
  %17 = load double, ptr %arrayidx21, align 8
  %18 = load double, ptr %a1, align 8
  %19 = load ptr, ptr %in.addr, align 8
  %20 = load i32, ptr %l, align 4
  %mul23 = mul nsw i32 6, %20
  %add = add nsw i32 %mul23, 1
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds double, ptr %19, i64 %idxprom24
  %21 = load double, ptr %arrayidx25, align 8
  %mul26 = fmul double %18, %21
  %22 = call double @llvm.fmuladd.f64(double %14, double %17, double %mul26)
  %23 = load double, ptr %a2, align 8
  %24 = load ptr, ptr %in.addr, align 8
  %25 = load i32, ptr %l, align 4
  %mul27 = mul nsw i32 6, %25
  %add28 = add nsw i32 %mul27, 2
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %24, i64 %idxprom29
  %26 = load double, ptr %arrayidx30, align 8
  %27 = call double @llvm.fmuladd.f64(double %23, double %26, double %22)
  %28 = load double, ptr %a3, align 8
  %29 = load ptr, ptr %in.addr, align 8
  %30 = load i32, ptr %l, align 4
  %mul32 = mul nsw i32 6, %30
  %add33 = add nsw i32 %mul32, 3
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds double, ptr %29, i64 %idxprom34
  %31 = load double, ptr %arrayidx35, align 8
  %32 = call double @llvm.fmuladd.f64(double %28, double %31, double %27)
  %33 = load double, ptr %a4, align 8
  %34 = load ptr, ptr %in.addr, align 8
  %35 = load i32, ptr %l, align 4
  %mul37 = mul nsw i32 6, %35
  %add38 = add nsw i32 %mul37, 4
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds double, ptr %34, i64 %idxprom39
  %36 = load double, ptr %arrayidx40, align 8
  %37 = call double @llvm.fmuladd.f64(double %33, double %36, double %32)
  %38 = load double, ptr %a5, align 8
  %39 = load ptr, ptr %in.addr, align 8
  %40 = load i32, ptr %l, align 4
  %mul42 = mul nsw i32 6, %40
  %add43 = add nsw i32 %mul42, 5
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %39, i64 %idxprom44
  %41 = load double, ptr %arrayidx45, align 8
  %42 = call double @llvm.fmuladd.f64(double %38, double %41, double %37)
  %43 = load ptr, ptr %out.addr, align 8
  %44 = load i32, ptr %m, align 4
  %mul47 = mul nsw i32 3, %44
  %45 = load i32, ptr %l, align 4
  %add48 = add nsw i32 %mul47, %45
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %43, i64 %idxprom49
  store double %42, ptr %arrayidx50, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %46 = load i32, ptr %l, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, ptr %l, align 4
  br label %for.cond17, !llvm.loop !45

for.end:                                          ; preds = %for.cond17
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %47 = load i32, ptr %m, align 4
  %dec52 = add nsw i32 %47, -1
  store i32 %dec52, ptr %m, align 4
  br label %for.cond, !llvm.loop !46

for.end53:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %in.addr, align 8
  %arrayidx = getelementptr inbounds double, ptr %0, i64 0
  %1 = load double, ptr %arrayidx, align 8
  %2 = load ptr, ptr %cos_l0, align 8
  %arrayidx1 = getelementptr inbounds double, ptr %2, i64 0
  %3 = load double, ptr %arrayidx1, align 8
  %4 = load ptr, ptr %in.addr, align 8
  %arrayidx2 = getelementptr inbounds double, ptr %4, i64 1
  %5 = load double, ptr %arrayidx2, align 8
  %6 = load ptr, ptr %cos_l0, align 8
  %arrayidx3 = getelementptr inbounds double, ptr %6, i64 1
  %7 = load double, ptr %arrayidx3, align 8
  %mul4 = fmul double %5, %7
  %8 = call double @llvm.fmuladd.f64(double %1, double %3, double %mul4)
  %9 = load ptr, ptr %in.addr, align 8
  %arrayidx5 = getelementptr inbounds double, ptr %9, i64 2
  %10 = load double, ptr %arrayidx5, align 8
  %11 = load ptr, ptr %cos_l0, align 8
  %arrayidx6 = getelementptr inbounds double, ptr %11, i64 2
  %12 = load double, ptr %arrayidx6, align 8
  %13 = call double @llvm.fmuladd.f64(double %10, double %12, double %8)
  %14 = load ptr, ptr %in.addr, align 8
  %arrayidx7 = getelementptr inbounds double, ptr %14, i64 3
  %15 = load double, ptr %arrayidx7, align 8
  %16 = load ptr, ptr %cos_l0, align 8
  %arrayidx8 = getelementptr inbounds double, ptr %16, i64 3
  %17 = load double, ptr %arrayidx8, align 8
  %18 = call double @llvm.fmuladd.f64(double %15, double %17, double %13)
  %19 = load ptr, ptr %in.addr, align 8
  %arrayidx9 = getelementptr inbounds double, ptr %19, i64 4
  %20 = load double, ptr %arrayidx9, align 8
  %21 = load ptr, ptr %cos_l0, align 8
  %arrayidx10 = getelementptr inbounds double, ptr %21, i64 4
  %22 = load double, ptr %arrayidx10, align 8
  %23 = call double @llvm.fmuladd.f64(double %20, double %22, double %18)
  %24 = load ptr, ptr %in.addr, align 8
  %arrayidx11 = getelementptr inbounds double, ptr %24, i64 5
  %25 = load double, ptr %arrayidx11, align 8
  %26 = load ptr, ptr %cos_l0, align 8
  %arrayidx12 = getelementptr inbounds double, ptr %26, i64 5
  %27 = load double, ptr %arrayidx12, align 8
  %28 = call double @llvm.fmuladd.f64(double %25, double %27, double %23)
  %29 = load ptr, ptr %in.addr, align 8
  %arrayidx13 = getelementptr inbounds double, ptr %29, i64 6
  %30 = load double, ptr %arrayidx13, align 8
  %31 = load ptr, ptr %cos_l0, align 8
  %arrayidx14 = getelementptr inbounds double, ptr %31, i64 6
  %32 = load double, ptr %arrayidx14, align 8
  %33 = call double @llvm.fmuladd.f64(double %30, double %32, double %28)
  %34 = load ptr, ptr %in.addr, align 8
  %arrayidx15 = getelementptr inbounds double, ptr %34, i64 7
  %35 = load double, ptr %arrayidx15, align 8
  %36 = load ptr, ptr %cos_l0, align 8
  %arrayidx16 = getelementptr inbounds double, ptr %36, i64 7
  %37 = load double, ptr %arrayidx16, align 8
  %38 = call double @llvm.fmuladd.f64(double %35, double %37, double %33)
  %39 = load ptr, ptr %in.addr, align 8
  %arrayidx17 = getelementptr inbounds double, ptr %39, i64 8
  %40 = load double, ptr %arrayidx17, align 8
  %41 = load ptr, ptr %cos_l0, align 8
  %arrayidx18 = getelementptr inbounds double, ptr %41, i64 8
  %42 = load double, ptr %arrayidx18, align 8
  %43 = call double @llvm.fmuladd.f64(double %40, double %42, double %38)
  %44 = load ptr, ptr %in.addr, align 8
  %arrayidx19 = getelementptr inbounds double, ptr %44, i64 9
  %45 = load double, ptr %arrayidx19, align 8
  %46 = load ptr, ptr %cos_l0, align 8
  %arrayidx20 = getelementptr inbounds double, ptr %46, i64 9
  %47 = load double, ptr %arrayidx20, align 8
  %48 = call double @llvm.fmuladd.f64(double %45, double %47, double %43)
  %49 = load ptr, ptr %in.addr, align 8
  %arrayidx21 = getelementptr inbounds double, ptr %49, i64 10
  %50 = load double, ptr %arrayidx21, align 8
  %51 = load ptr, ptr %cos_l0, align 8
  %arrayidx22 = getelementptr inbounds double, ptr %51, i64 10
  %52 = load double, ptr %arrayidx22, align 8
  %53 = call double @llvm.fmuladd.f64(double %50, double %52, double %48)
  %54 = load ptr, ptr %in.addr, align 8
  %arrayidx23 = getelementptr inbounds double, ptr %54, i64 11
  %55 = load double, ptr %arrayidx23, align 8
  %56 = load ptr, ptr %cos_l0, align 8
  %arrayidx24 = getelementptr inbounds double, ptr %56, i64 11
  %57 = load double, ptr %arrayidx24, align 8
  %58 = call double @llvm.fmuladd.f64(double %55, double %57, double %53)
  %59 = load ptr, ptr %in.addr, align 8
  %arrayidx25 = getelementptr inbounds double, ptr %59, i64 12
  %60 = load double, ptr %arrayidx25, align 8
  %61 = load ptr, ptr %cos_l0, align 8
  %arrayidx26 = getelementptr inbounds double, ptr %61, i64 12
  %62 = load double, ptr %arrayidx26, align 8
  %63 = call double @llvm.fmuladd.f64(double %60, double %62, double %58)
  %64 = load ptr, ptr %in.addr, align 8
  %arrayidx27 = getelementptr inbounds double, ptr %64, i64 13
  %65 = load double, ptr %arrayidx27, align 8
  %66 = load ptr, ptr %cos_l0, align 8
  %arrayidx28 = getelementptr inbounds double, ptr %66, i64 13
  %67 = load double, ptr %arrayidx28, align 8
  %68 = call double @llvm.fmuladd.f64(double %65, double %67, double %63)
  %69 = load ptr, ptr %in.addr, align 8
  %arrayidx29 = getelementptr inbounds double, ptr %69, i64 14
  %70 = load double, ptr %arrayidx29, align 8
  %71 = load ptr, ptr %cos_l0, align 8
  %arrayidx30 = getelementptr inbounds double, ptr %71, i64 14
  %72 = load double, ptr %arrayidx30, align 8
  %73 = call double @llvm.fmuladd.f64(double %70, double %72, double %68)
  %74 = load ptr, ptr %in.addr, align 8
  %arrayidx31 = getelementptr inbounds double, ptr %74, i64 15
  %75 = load double, ptr %arrayidx31, align 8
  %76 = load ptr, ptr %cos_l0, align 8
  %arrayidx32 = getelementptr inbounds double, ptr %76, i64 15
  %77 = load double, ptr %arrayidx32, align 8
  %78 = call double @llvm.fmuladd.f64(double %75, double %77, double %73)
  %79 = load ptr, ptr %in.addr, align 8
  %arrayidx33 = getelementptr inbounds double, ptr %79, i64 16
  %80 = load double, ptr %arrayidx33, align 8
  %81 = load ptr, ptr %cos_l0, align 8
  %arrayidx34 = getelementptr inbounds double, ptr %81, i64 16
  %82 = load double, ptr %arrayidx34, align 8
  %83 = call double @llvm.fmuladd.f64(double %80, double %82, double %78)
  %84 = load ptr, ptr %in.addr, align 8
  %arrayidx35 = getelementptr inbounds double, ptr %84, i64 17
  %85 = load double, ptr %arrayidx35, align 8
  %86 = load ptr, ptr %cos_l0, align 8
  %arrayidx36 = getelementptr inbounds double, ptr %86, i64 17
  %87 = load double, ptr %arrayidx36, align 8
  %88 = call double @llvm.fmuladd.f64(double %85, double %87, double %83)
  %89 = load ptr, ptr %out.addr, align 8
  %90 = load i32, ptr %j, align 4
  %idxprom = sext i32 %90 to i64
  %arrayidx37 = getelementptr inbounds [12 x i32], ptr @all, i64 0, i64 %idxprom
  %91 = load i32, ptr %arrayidx37, align 4
  %idxprom38 = sext i32 %91 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %89, i64 %idxprom38
  store double %88, ptr %arrayidx39, align 8
  %92 = load ptr, ptr %cos_l0, align 8
  %add.ptr = getelementptr inbounds double, ptr %92, i64 18
  store ptr %add.ptr, ptr %cos_l0, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %93 = load i32, ptr %j, align 4
  %dec = add nsw i32 %93, -1
  store i32 %dec, ptr %j, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !47

do.end:                                           ; preds = %do.cond
  %94 = load ptr, ptr %in.addr, align 8
  %arrayidx40 = getelementptr inbounds double, ptr %94, i64 0
  %95 = load double, ptr %arrayidx40, align 8
  %96 = load ptr, ptr %in.addr, align 8
  %arrayidx41 = getelementptr inbounds double, ptr %96, i64 5
  %97 = load double, ptr %arrayidx41, align 8
  %add = fadd double %95, %97
  %98 = load ptr, ptr %in.addr, align 8
  %arrayidx42 = getelementptr inbounds double, ptr %98, i64 15
  %99 = load double, ptr %arrayidx42, align 8
  %add43 = fadd double %add, %99
  store double %add43, ptr %s0, align 8
  %100 = load ptr, ptr %in.addr, align 8
  %arrayidx44 = getelementptr inbounds double, ptr %100, i64 1
  %101 = load double, ptr %arrayidx44, align 8
  %102 = load ptr, ptr %in.addr, align 8
  %arrayidx45 = getelementptr inbounds double, ptr %102, i64 4
  %103 = load double, ptr %arrayidx45, align 8
  %add46 = fadd double %101, %103
  %104 = load ptr, ptr %in.addr, align 8
  %arrayidx47 = getelementptr inbounds double, ptr %104, i64 16
  %105 = load double, ptr %arrayidx47, align 8
  %add48 = fadd double %add46, %105
  store double %add48, ptr %s1, align 8
  %106 = load ptr, ptr %in.addr, align 8
  %arrayidx49 = getelementptr inbounds double, ptr %106, i64 2
  %107 = load double, ptr %arrayidx49, align 8
  %108 = load ptr, ptr %in.addr, align 8
  %arrayidx50 = getelementptr inbounds double, ptr %108, i64 3
  %109 = load double, ptr %arrayidx50, align 8
  %add51 = fadd double %107, %109
  %110 = load ptr, ptr %in.addr, align 8
  %arrayidx52 = getelementptr inbounds double, ptr %110, i64 17
  %111 = load double, ptr %arrayidx52, align 8
  %add53 = fadd double %add51, %111
  store double %add53, ptr %s2, align 8
  %112 = load ptr, ptr %in.addr, align 8
  %arrayidx54 = getelementptr inbounds double, ptr %112, i64 6
  %113 = load double, ptr %arrayidx54, align 8
  %114 = load ptr, ptr %in.addr, align 8
  %arrayidx55 = getelementptr inbounds double, ptr %114, i64 9
  %115 = load double, ptr %arrayidx55, align 8
  %sub = fsub double %113, %115
  %116 = load ptr, ptr %in.addr, align 8
  %arrayidx56 = getelementptr inbounds double, ptr %116, i64 14
  %117 = load double, ptr %arrayidx56, align 8
  %add57 = fadd double %sub, %117
  store double %add57, ptr %s3, align 8
  %118 = load ptr, ptr %in.addr, align 8
  %arrayidx58 = getelementptr inbounds double, ptr %118, i64 7
  %119 = load double, ptr %arrayidx58, align 8
  %120 = load ptr, ptr %in.addr, align 8
  %arrayidx59 = getelementptr inbounds double, ptr %120, i64 10
  %121 = load double, ptr %arrayidx59, align 8
  %sub60 = fsub double %119, %121
  %122 = load ptr, ptr %in.addr, align 8
  %arrayidx61 = getelementptr inbounds double, ptr %122, i64 13
  %123 = load double, ptr %arrayidx61, align 8
  %add62 = fadd double %sub60, %123
  store double %add62, ptr %s4, align 8
  %124 = load ptr, ptr %in.addr, align 8
  %arrayidx63 = getelementptr inbounds double, ptr %124, i64 8
  %125 = load double, ptr %arrayidx63, align 8
  %126 = load ptr, ptr %in.addr, align 8
  %arrayidx64 = getelementptr inbounds double, ptr %126, i64 11
  %127 = load double, ptr %arrayidx64, align 8
  %sub65 = fsub double %125, %127
  %128 = load ptr, ptr %in.addr, align 8
  %arrayidx66 = getelementptr inbounds double, ptr %128, i64 12
  %129 = load double, ptr %arrayidx66, align 8
  %add67 = fadd double %sub65, %129
  store double %add67, ptr %s5, align 8
  %130 = load double, ptr %s0, align 8
  %131 = load ptr, ptr %cos_l0, align 8
  %arrayidx68 = getelementptr inbounds double, ptr %131, i64 0
  %132 = load double, ptr %arrayidx68, align 8
  %133 = load double, ptr %s1, align 8
  %134 = load ptr, ptr %cos_l0, align 8
  %arrayidx69 = getelementptr inbounds double, ptr %134, i64 1
  %135 = load double, ptr %arrayidx69, align 8
  %mul70 = fmul double %133, %135
  %136 = call double @llvm.fmuladd.f64(double %130, double %132, double %mul70)
  %137 = load double, ptr %s2, align 8
  %138 = load ptr, ptr %cos_l0, align 8
  %arrayidx71 = getelementptr inbounds double, ptr %138, i64 2
  %139 = load double, ptr %arrayidx71, align 8
  %140 = call double @llvm.fmuladd.f64(double %137, double %139, double %136)
  %141 = load double, ptr %s3, align 8
  %142 = load ptr, ptr %cos_l0, align 8
  %arrayidx72 = getelementptr inbounds double, ptr %142, i64 3
  %143 = load double, ptr %arrayidx72, align 8
  %144 = call double @llvm.fmuladd.f64(double %141, double %143, double %140)
  %145 = load double, ptr %s4, align 8
  %146 = load ptr, ptr %cos_l0, align 8
  %arrayidx73 = getelementptr inbounds double, ptr %146, i64 4
  %147 = load double, ptr %arrayidx73, align 8
  %148 = call double @llvm.fmuladd.f64(double %145, double %147, double %144)
  %149 = load double, ptr %s5, align 8
  %150 = load ptr, ptr %cos_l0, align 8
  %arrayidx74 = getelementptr inbounds double, ptr %150, i64 5
  %151 = load double, ptr %arrayidx74, align 8
  %152 = call double @llvm.fmuladd.f64(double %149, double %151, double %148)
  %153 = load ptr, ptr %out.addr, align 8
  %arrayidx75 = getelementptr inbounds double, ptr %153, i64 16
  store double %152, ptr %arrayidx75, align 8
  %154 = load ptr, ptr %cos_l0, align 8
  %add.ptr76 = getelementptr inbounds double, ptr %154, i64 6
  store ptr %add.ptr76, ptr %cos_l0, align 8
  %155 = load double, ptr %s0, align 8
  %156 = load ptr, ptr %cos_l0, align 8
  %arrayidx77 = getelementptr inbounds double, ptr %156, i64 0
  %157 = load double, ptr %arrayidx77, align 8
  %158 = load double, ptr %s1, align 8
  %159 = load ptr, ptr %cos_l0, align 8
  %arrayidx78 = getelementptr inbounds double, ptr %159, i64 1
  %160 = load double, ptr %arrayidx78, align 8
  %mul79 = fmul double %158, %160
  %161 = call double @llvm.fmuladd.f64(double %155, double %157, double %mul79)
  %162 = load double, ptr %s2, align 8
  %163 = load ptr, ptr %cos_l0, align 8
  %arrayidx80 = getelementptr inbounds double, ptr %163, i64 2
  %164 = load double, ptr %arrayidx80, align 8
  %165 = call double @llvm.fmuladd.f64(double %162, double %164, double %161)
  %166 = load double, ptr %s3, align 8
  %167 = load ptr, ptr %cos_l0, align 8
  %arrayidx81 = getelementptr inbounds double, ptr %167, i64 3
  %168 = load double, ptr %arrayidx81, align 8
  %169 = call double @llvm.fmuladd.f64(double %166, double %168, double %165)
  %170 = load double, ptr %s4, align 8
  %171 = load ptr, ptr %cos_l0, align 8
  %arrayidx82 = getelementptr inbounds double, ptr %171, i64 4
  %172 = load double, ptr %arrayidx82, align 8
  %173 = call double @llvm.fmuladd.f64(double %170, double %172, double %169)
  %174 = load double, ptr %s5, align 8
  %175 = load ptr, ptr %cos_l0, align 8
  %arrayidx83 = getelementptr inbounds double, ptr %175, i64 5
  %176 = load double, ptr %arrayidx83, align 8
  %177 = call double @llvm.fmuladd.f64(double %174, double %176, double %173)
  %178 = load ptr, ptr %out.addr, align 8
  %arrayidx84 = getelementptr inbounds double, ptr %178, i64 10
  store double %177, ptr %arrayidx84, align 8
  %179 = load ptr, ptr %cos_l0, align 8
  %add.ptr85 = getelementptr inbounds double, ptr %179, i64 6
  store ptr %add.ptr85, ptr %cos_l0, align 8
  %180 = load double, ptr %s0, align 8
  %181 = load ptr, ptr %cos_l0, align 8
  %arrayidx86 = getelementptr inbounds double, ptr %181, i64 0
  %182 = load double, ptr %arrayidx86, align 8
  %183 = load double, ptr %s1, align 8
  %184 = load ptr, ptr %cos_l0, align 8
  %arrayidx87 = getelementptr inbounds double, ptr %184, i64 1
  %185 = load double, ptr %arrayidx87, align 8
  %mul88 = fmul double %183, %185
  %186 = call double @llvm.fmuladd.f64(double %180, double %182, double %mul88)
  %187 = load double, ptr %s2, align 8
  %188 = load ptr, ptr %cos_l0, align 8
  %arrayidx89 = getelementptr inbounds double, ptr %188, i64 2
  %189 = load double, ptr %arrayidx89, align 8
  %190 = call double @llvm.fmuladd.f64(double %187, double %189, double %186)
  %191 = load double, ptr %s3, align 8
  %192 = load ptr, ptr %cos_l0, align 8
  %arrayidx90 = getelementptr inbounds double, ptr %192, i64 3
  %193 = load double, ptr %arrayidx90, align 8
  %194 = call double @llvm.fmuladd.f64(double %191, double %193, double %190)
  %195 = load double, ptr %s4, align 8
  %196 = load ptr, ptr %cos_l0, align 8
  %arrayidx91 = getelementptr inbounds double, ptr %196, i64 4
  %197 = load double, ptr %arrayidx91, align 8
  %198 = call double @llvm.fmuladd.f64(double %195, double %197, double %194)
  %199 = load double, ptr %s5, align 8
  %200 = load ptr, ptr %cos_l0, align 8
  %arrayidx92 = getelementptr inbounds double, ptr %200, i64 5
  %201 = load double, ptr %arrayidx92, align 8
  %202 = call double @llvm.fmuladd.f64(double %199, double %201, double %198)
  %203 = load ptr, ptr %out.addr, align 8
  %arrayidx93 = getelementptr inbounds double, ptr %203, i64 7
  store double %202, ptr %arrayidx93, align 8
  %204 = load ptr, ptr %cos_l0, align 8
  %add.ptr94 = getelementptr inbounds double, ptr %204, i64 6
  store ptr %add.ptr94, ptr %cos_l0, align 8
  %205 = load double, ptr %s0, align 8
  %206 = load ptr, ptr %cos_l0, align 8
  %arrayidx95 = getelementptr inbounds double, ptr %206, i64 0
  %207 = load double, ptr %arrayidx95, align 8
  %208 = load double, ptr %s1, align 8
  %209 = load ptr, ptr %cos_l0, align 8
  %arrayidx96 = getelementptr inbounds double, ptr %209, i64 1
  %210 = load double, ptr %arrayidx96, align 8
  %mul97 = fmul double %208, %210
  %211 = call double @llvm.fmuladd.f64(double %205, double %207, double %mul97)
  %212 = load double, ptr %s2, align 8
  %213 = load ptr, ptr %cos_l0, align 8
  %arrayidx98 = getelementptr inbounds double, ptr %213, i64 2
  %214 = load double, ptr %arrayidx98, align 8
  %215 = call double @llvm.fmuladd.f64(double %212, double %214, double %211)
  %216 = load double, ptr %s3, align 8
  %217 = load ptr, ptr %cos_l0, align 8
  %arrayidx99 = getelementptr inbounds double, ptr %217, i64 3
  %218 = load double, ptr %arrayidx99, align 8
  %219 = call double @llvm.fmuladd.f64(double %216, double %218, double %215)
  %220 = load double, ptr %s4, align 8
  %221 = load ptr, ptr %cos_l0, align 8
  %arrayidx100 = getelementptr inbounds double, ptr %221, i64 4
  %222 = load double, ptr %arrayidx100, align 8
  %223 = call double @llvm.fmuladd.f64(double %220, double %222, double %219)
  %224 = load double, ptr %s5, align 8
  %225 = load ptr, ptr %cos_l0, align 8
  %arrayidx101 = getelementptr inbounds double, ptr %225, i64 5
  %226 = load double, ptr %arrayidx101, align 8
  %227 = call double @llvm.fmuladd.f64(double %224, double %226, double %223)
  %228 = load ptr, ptr %out.addr, align 8
  %arrayidx102 = getelementptr inbounds double, ptr %228, i64 1
  store double %227, ptr %arrayidx102, align 8
  %229 = load ptr, ptr %cos_l0, align 8
  %add.ptr103 = getelementptr inbounds double, ptr %229, i64 6
  store ptr %add.ptr103, ptr %cos_l0, align 8
  %230 = load double, ptr %s0, align 8
  %231 = load double, ptr %s1, align 8
  %sub104 = fsub double %230, %231
  %232 = load double, ptr %s5, align 8
  %add105 = fadd double %sub104, %232
  store double %add105, ptr %s0, align 8
  %233 = load double, ptr %s2, align 8
  %234 = load double, ptr %s3, align 8
  %sub106 = fsub double %233, %234
  %235 = load double, ptr %s4, align 8
  %sub107 = fsub double %sub106, %235
  store double %sub107, ptr %s2, align 8
  %236 = load double, ptr %s0, align 8
  %237 = load ptr, ptr %cos_l0, align 8
  %arrayidx108 = getelementptr inbounds double, ptr %237, i64 0
  %238 = load double, ptr %arrayidx108, align 8
  %239 = load double, ptr %s2, align 8
  %240 = load ptr, ptr %cos_l0, align 8
  %arrayidx109 = getelementptr inbounds double, ptr %240, i64 1
  %241 = load double, ptr %arrayidx109, align 8
  %mul110 = fmul double %239, %241
  %242 = call double @llvm.fmuladd.f64(double %236, double %238, double %mul110)
  %243 = load ptr, ptr %out.addr, align 8
  %arrayidx111 = getelementptr inbounds double, ptr %243, i64 13
  store double %242, ptr %arrayidx111, align 8
  %244 = load double, ptr %s0, align 8
  %245 = load ptr, ptr %cos_l0, align 8
  %arrayidx112 = getelementptr inbounds double, ptr %245, i64 2
  %246 = load double, ptr %arrayidx112, align 8
  %247 = load double, ptr %s2, align 8
  %248 = load ptr, ptr %cos_l0, align 8
  %arrayidx113 = getelementptr inbounds double, ptr %248, i64 3
  %249 = load double, ptr %arrayidx113, align 8
  %mul114 = fmul double %247, %249
  %250 = call double @llvm.fmuladd.f64(double %244, double %246, double %mul114)
  %251 = load ptr, ptr %out.addr, align 8
  %arrayidx115 = getelementptr inbounds double, ptr %251, i64 4
  store double %250, ptr %arrayidx115, align 8
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

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
