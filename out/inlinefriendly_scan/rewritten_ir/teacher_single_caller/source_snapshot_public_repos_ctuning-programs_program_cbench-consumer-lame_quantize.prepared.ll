; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/quantize.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/quantize.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@bitrate_table = external global [2 x [15 x i32]], align 4
@convert_mdct = external global i32, align 4
@reduce_sidechannel = external global i32, align 4
@masking_lower = external global float, align 4
@__func__.VBR_iteration_loop = private unnamed_addr constant [19 x i8] c"VBR_iteration_loop\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"quantize.c\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"this_bits>=min_bits\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"this_bits<=max_bits\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"(int)cod_info->part2_3_length <= max_bits\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"used_bits <= bits\00", align 1
@nr_of_sfb_block = external global [6 x [3 x [4 x i32]]], align 4
@outer_loop.OldValue = internal global [2 x i32] [i32 180, i32 180], align 4
@__func__.outer_loop = private unnamed_addr constant [11 x i8] c"outer_loop\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"iteration != 1\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"cod_info->global_gain < 256\00", align 1
@pretab = external global [21 x i32], align 4
@__func__.calc_noise1 = private unnamed_addr constant [12 x i8] c"calc_noise1\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"s<Q_MAX\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"s>=0\00", align 1
@pow20 = external global [256 x double], align 8
@scalefac_band = external global %struct.scalefac_struct, align 4
@pow43 = external global [8208 x double], align 8

; Function Attrs: nounwind ssp uwtable
define void @iteration_loop(ptr noundef %gfp, ptr noundef %pe, ptr noundef %ms_ener_ratio, ptr noundef %xr, ptr noundef %ratio, ptr noundef %l3_side, ptr noundef %l3_enc, ptr noundef %scalefac) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %pe.addr = alloca ptr, align 8
  %ms_ener_ratio.addr = alloca ptr, align 8
  %xr.addr = alloca ptr, align 8
  %ratio.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %l3_enc.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %xfsf = alloca [4 x [21 x double]], align 8
  %noise = alloca [4 x double], align 8
  %l3_xmin = alloca [2 x %struct.III_psy_xmin], align 8
  %cod_info = alloca ptr, align 8
  %bitsPerFrame = alloca i32, align 4
  %mean_bits = alloca i32, align 4
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %i = alloca i32, align 4
  %bit_rate = alloca i32, align 4
  %targ_bits = alloca [2 x i32], align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %pe, ptr %pe.addr, align 8
  store ptr %ms_ener_ratio, ptr %ms_ener_ratio.addr, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ratio, ptr %ratio.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  %0 = load ptr, ptr %gfp.addr, align 8
  %1 = load ptr, ptr %l3_side.addr, align 8
  %2 = load ptr, ptr %l3_enc.addr, align 8
  call void @iteration_init(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %3, i32 0, i32 43
  %4 = load i32, ptr %version, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom
  %5 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %5, i32 0, i32 50
  %6 = load i32, ptr %bitrate_index, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [15 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  store i32 %7, ptr %bit_rate, align 4
  %8 = load ptr, ptr %gfp.addr, align 8
  call void @getframebits(ptr noundef %8, ptr noundef %bitsPerFrame, ptr noundef %mean_bits)
  %9 = load ptr, ptr %gfp.addr, align 8
  %10 = load ptr, ptr %l3_side.addr, align 8
  %11 = load i32, ptr %mean_bits, align 4
  %12 = load i32, ptr %bitsPerFrame, align 4
  %call = call i32 @ResvFrameBegin(ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12)
  store i32 0, ptr %gr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc119, %entry
  %13 = load i32, ptr %gr, align 4
  %14 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %14, i32 0, i32 45
  %15 = load i32, ptr %mode_gr, align 8
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end121

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr @convert_mdct, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load ptr, ptr %xr.addr, align 8
  %18 = load i32, ptr %gr, align 4
  %idxprom3 = sext i32 %18 to i64
  %arrayidx4 = getelementptr inbounds [2 x [576 x double]], ptr %17, i64 %idxprom3
  %arraydecay = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx4, i64 0, i64 0
  %19 = load ptr, ptr %xr.addr, align 8
  %20 = load i32, ptr %gr, align 4
  %idxprom5 = sext i32 %20 to i64
  %arrayidx6 = getelementptr inbounds [2 x [576 x double]], ptr %19, i64 %idxprom5
  %arraydecay7 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx6, i64 0, i64 0
  call void @ms_convert(ptr noundef %arraydecay, ptr noundef %arraydecay7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %21 = load ptr, ptr %gfp.addr, align 8
  %22 = load ptr, ptr %pe.addr, align 8
  %23 = load ptr, ptr %l3_side.addr, align 8
  %arraydecay8 = getelementptr inbounds [2 x i32], ptr %targ_bits, i64 0, i64 0
  %24 = load i32, ptr %mean_bits, align 4
  %25 = load i32, ptr %gr, align 4
  call void @on_pe(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %arraydecay8, i32 noundef %24, i32 noundef %25)
  %26 = load i32, ptr @reduce_sidechannel, align 4
  %tobool9 = icmp ne i32 %26, 0
  br i1 %tobool9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %arraydecay11 = getelementptr inbounds [2 x i32], ptr %targ_bits, i64 0, i64 0
  %27 = load ptr, ptr %ms_ener_ratio.addr, align 8
  %28 = load i32, ptr %gr, align 4
  %idxprom12 = sext i32 %28 to i64
  %arrayidx13 = getelementptr inbounds double, ptr %27, i64 %idxprom12
  %29 = load double, ptr %arrayidx13, align 8
  %30 = load i32, ptr %mean_bits, align 4
  call void @reduce_side(ptr noundef %arraydecay11, double noundef %29, i32 noundef %30)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  store i32 0, ptr %ch, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc116, %if.end14
  %31 = load i32, ptr %ch, align 4
  %32 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %32, i32 0, i32 46
  %33 = load i32, ptr %stereo, align 4
  %cmp16 = icmp slt i32 %31, %33
  br i1 %cmp16, label %for.body17, label %for.end118

for.body17:                                       ; preds = %for.cond15
  %34 = load ptr, ptr %l3_side.addr, align 8
  %gr18 = getelementptr inbounds %struct.III_side_info_t, ptr %34, i32 0, i32 4
  %35 = load i32, ptr %gr, align 4
  %idxprom19 = sext i32 %35 to i64
  %arrayidx20 = getelementptr inbounds [2 x %struct.anon], ptr %gr18, i64 0, i64 %idxprom19
  %ch21 = getelementptr inbounds %struct.anon, ptr %arrayidx20, i32 0, i32 0
  %36 = load i32, ptr %ch, align 4
  %idxprom22 = sext i32 %36 to i64
  %arrayidx23 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch21, i64 0, i64 %idxprom22
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx23, i32 0, i32 0
  store ptr %tt, ptr %cod_info, align 8
  %37 = load ptr, ptr %gfp.addr, align 8
  %38 = load ptr, ptr %xr.addr, align 8
  %39 = load i32, ptr %gr, align 4
  %idxprom24 = sext i32 %39 to i64
  %arrayidx25 = getelementptr inbounds [2 x [576 x double]], ptr %38, i64 %idxprom24
  %40 = load i32, ptr %ch, align 4
  %idxprom26 = sext i32 %40 to i64
  %arrayidx27 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx25, i64 0, i64 %idxprom26
  %arraydecay28 = getelementptr inbounds [576 x double], ptr %arrayidx27, i64 0, i64 0
  %41 = load ptr, ptr %cod_info, align 8
  %call29 = call i32 @init_outer_loop(ptr noundef %37, ptr noundef %arraydecay28, ptr noundef %41)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else, label %if.then31

if.then31:                                        ; preds = %for.body17
  %42 = load ptr, ptr %scalefac.addr, align 8
  %43 = load i32, ptr %gr, align 4
  %idxprom32 = sext i32 %43 to i64
  %arrayidx33 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %42, i64 %idxprom32
  %44 = load i32, ptr %ch, align 4
  %idxprom34 = sext i32 %44 to i64
  %arrayidx35 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx33, i64 0, i64 %idxprom34
  %45 = load ptr, ptr %scalefac.addr, align 8
  %46 = load i32, ptr %gr, align 4
  %idxprom36 = sext i32 %46 to i64
  %arrayidx37 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %45, i64 %idxprom36
  %47 = load i32, ptr %ch, align 4
  %idxprom38 = sext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx37, i64 0, i64 %idxprom38
  %48 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx39, i1 false, i1 true, i1 false)
  %call40 = call ptr @__memset_chk(ptr noundef %arrayidx35, i32 noundef 0, i64 noundef 244, i64 noundef %48) #7
  %49 = load ptr, ptr %l3_enc.addr, align 8
  %50 = load i32, ptr %gr, align 4
  %idxprom41 = sext i32 %50 to i64
  %arrayidx42 = getelementptr inbounds [2 x [576 x i32]], ptr %49, i64 %idxprom41
  %51 = load i32, ptr %ch, align 4
  %idxprom43 = sext i32 %51 to i64
  %arrayidx44 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx42, i64 0, i64 %idxprom43
  %arraydecay45 = getelementptr inbounds [576 x i32], ptr %arrayidx44, i64 0, i64 0
  %52 = load ptr, ptr %l3_enc.addr, align 8
  %53 = load i32, ptr %gr, align 4
  %idxprom46 = sext i32 %53 to i64
  %arrayidx47 = getelementptr inbounds [2 x [576 x i32]], ptr %52, i64 %idxprom46
  %54 = load i32, ptr %ch, align 4
  %idxprom48 = sext i32 %54 to i64
  %arrayidx49 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx47, i64 0, i64 %idxprom48
  %arraydecay50 = getelementptr inbounds [576 x i32], ptr %arrayidx49, i64 0, i64 0
  %55 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay50, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memset_chk(ptr noundef %arraydecay45, i32 noundef 0, i64 noundef 2304, i64 noundef %55) #7
  %arrayidx52 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 3
  store double 0.000000e+00, ptr %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 2
  store double 0.000000e+00, ptr %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx55, align 8
  br label %if.end88

if.else:                                          ; preds = %for.body17
  %56 = load ptr, ptr %gfp.addr, align 8
  %57 = load ptr, ptr %xr.addr, align 8
  %58 = load i32, ptr %gr, align 4
  %idxprom56 = sext i32 %58 to i64
  %arrayidx57 = getelementptr inbounds [2 x [576 x double]], ptr %57, i64 %idxprom56
  %59 = load i32, ptr %ch, align 4
  %idxprom58 = sext i32 %59 to i64
  %arrayidx59 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx57, i64 0, i64 %idxprom58
  %arraydecay60 = getelementptr inbounds [576 x double], ptr %arrayidx59, i64 0, i64 0
  %60 = load ptr, ptr %ratio.addr, align 8
  %61 = load i32, ptr %gr, align 4
  %idxprom61 = sext i32 %61 to i64
  %arrayidx62 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %60, i64 %idxprom61
  %62 = load i32, ptr %ch, align 4
  %idxprom63 = sext i32 %62 to i64
  %arrayidx64 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %arrayidx62, i64 0, i64 %idxprom63
  %63 = load ptr, ptr %cod_info, align 8
  %64 = load i32, ptr %ch, align 4
  %idxprom65 = sext i32 %64 to i64
  %arrayidx66 = getelementptr inbounds [2 x %struct.III_psy_xmin], ptr %l3_xmin, i64 0, i64 %idxprom65
  %call67 = call i32 @calc_xmin(ptr noundef %56, ptr noundef %arraydecay60, ptr noundef %arrayidx64, ptr noundef %63, ptr noundef %arrayidx66)
  %65 = load ptr, ptr %gfp.addr, align 8
  %66 = load ptr, ptr %xr.addr, align 8
  %67 = load i32, ptr %gr, align 4
  %idxprom68 = sext i32 %67 to i64
  %arrayidx69 = getelementptr inbounds [2 x [576 x double]], ptr %66, i64 %idxprom68
  %68 = load i32, ptr %ch, align 4
  %idxprom70 = sext i32 %68 to i64
  %arrayidx71 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx69, i64 0, i64 %idxprom70
  %arraydecay72 = getelementptr inbounds [576 x double], ptr %arrayidx71, i64 0, i64 0
  %69 = load i32, ptr %ch, align 4
  %idxprom73 = sext i32 %69 to i64
  %arrayidx74 = getelementptr inbounds [2 x i32], ptr %targ_bits, i64 0, i64 %idxprom73
  %70 = load i32, ptr %arrayidx74, align 4
  %arraydecay75 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 0
  %71 = load i32, ptr %ch, align 4
  %idxprom76 = sext i32 %71 to i64
  %arrayidx77 = getelementptr inbounds [2 x %struct.III_psy_xmin], ptr %l3_xmin, i64 0, i64 %idxprom76
  %72 = load ptr, ptr %l3_enc.addr, align 8
  %73 = load i32, ptr %gr, align 4
  %idxprom78 = sext i32 %73 to i64
  %arrayidx79 = getelementptr inbounds [2 x [576 x i32]], ptr %72, i64 %idxprom78
  %74 = load i32, ptr %ch, align 4
  %idxprom80 = sext i32 %74 to i64
  %arrayidx81 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx79, i64 0, i64 %idxprom80
  %arraydecay82 = getelementptr inbounds [576 x i32], ptr %arrayidx81, i64 0, i64 0
  %75 = load ptr, ptr %scalefac.addr, align 8
  %76 = load i32, ptr %gr, align 4
  %idxprom83 = sext i32 %76 to i64
  %arrayidx84 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %75, i64 %idxprom83
  %77 = load i32, ptr %ch, align 4
  %idxprom85 = sext i32 %77 to i64
  %arrayidx86 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx84, i64 0, i64 %idxprom85
  %78 = load ptr, ptr %cod_info, align 8
  %arraydecay87 = getelementptr inbounds [4 x [21 x double]], ptr %xfsf, i64 0, i64 0
  %79 = load i32, ptr %ch, align 4
  call void @outer_loop(ptr noundef %65, ptr noundef %arraydecay72, i32 noundef %70, ptr noundef %arraydecay75, ptr noundef %arrayidx77, ptr noundef %arraydecay82, ptr noundef %arrayidx86, ptr noundef %78, ptr noundef %arraydecay87, i32 noundef %79)
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then31
  %80 = load ptr, ptr %gfp.addr, align 8
  %81 = load i32, ptr %gr, align 4
  %82 = load i32, ptr %ch, align 4
  %83 = load ptr, ptr %l3_enc.addr, align 8
  %84 = load ptr, ptr %l3_side.addr, align 8
  %85 = load ptr, ptr %scalefac.addr, align 8
  call void @best_scalefac_store(ptr noundef %80, i32 noundef %81, i32 noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %85)
  %86 = load ptr, ptr %gfp.addr, align 8
  %use_best_huffman = getelementptr inbounds %struct.lame_global_flags, ptr %86, i32 0, i32 64
  %87 = load i32, ptr %use_best_huffman, align 4
  %cmp89 = icmp eq i32 %87, 1
  br i1 %cmp89, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %if.end88
  %88 = load ptr, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %88, i32 0, i32 6
  %89 = load i32, ptr %block_type, align 8
  %cmp90 = icmp eq i32 %89, 0
  br i1 %cmp90, label %if.then91, label %if.end97

if.then91:                                        ; preds = %land.lhs.true
  %90 = load i32, ptr %gr, align 4
  %91 = load i32, ptr %ch, align 4
  %92 = load ptr, ptr %cod_info, align 8
  %93 = load ptr, ptr %l3_enc.addr, align 8
  %94 = load i32, ptr %gr, align 4
  %idxprom92 = sext i32 %94 to i64
  %arrayidx93 = getelementptr inbounds [2 x [576 x i32]], ptr %93, i64 %idxprom92
  %95 = load i32, ptr %ch, align 4
  %idxprom94 = sext i32 %95 to i64
  %arrayidx95 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx93, i64 0, i64 %idxprom94
  %arraydecay96 = getelementptr inbounds [576 x i32], ptr %arrayidx95, i64 0, i64 0
  call void @best_huffman_divide(i32 noundef %90, i32 noundef %91, ptr noundef %92, ptr noundef %arraydecay96)
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %land.lhs.true, %if.end88
  %96 = load ptr, ptr %gfp.addr, align 8
  %97 = load ptr, ptr %cod_info, align 8
  %98 = load ptr, ptr %l3_side.addr, align 8
  %99 = load i32, ptr %mean_bits, align 4
  call void @ResvAdjust(ptr noundef %96, ptr noundef %97, ptr noundef %98, i32 noundef %99)
  store i32 0, ptr %i, align 4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc, %if.end97
  %100 = load i32, ptr %i, align 4
  %cmp99 = icmp slt i32 %100, 576
  br i1 %cmp99, label %for.body100, label %for.end

for.body100:                                      ; preds = %for.cond98
  %101 = load ptr, ptr %xr.addr, align 8
  %102 = load i32, ptr %gr, align 4
  %idxprom101 = sext i32 %102 to i64
  %arrayidx102 = getelementptr inbounds [2 x [576 x double]], ptr %101, i64 %idxprom101
  %103 = load i32, ptr %ch, align 4
  %idxprom103 = sext i32 %103 to i64
  %arrayidx104 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx102, i64 0, i64 %idxprom103
  %104 = load i32, ptr %i, align 4
  %idxprom105 = sext i32 %104 to i64
  %arrayidx106 = getelementptr inbounds [576 x double], ptr %arrayidx104, i64 0, i64 %idxprom105
  %105 = load double, ptr %arrayidx106, align 8
  %cmp107 = fcmp olt double %105, 0.000000e+00
  br i1 %cmp107, label %if.then108, label %if.end115

if.then108:                                       ; preds = %for.body100
  %106 = load ptr, ptr %l3_enc.addr, align 8
  %107 = load i32, ptr %gr, align 4
  %idxprom109 = sext i32 %107 to i64
  %arrayidx110 = getelementptr inbounds [2 x [576 x i32]], ptr %106, i64 %idxprom109
  %108 = load i32, ptr %ch, align 4
  %idxprom111 = sext i32 %108 to i64
  %arrayidx112 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx110, i64 0, i64 %idxprom111
  %109 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %109 to i64
  %arrayidx114 = getelementptr inbounds [576 x i32], ptr %arrayidx112, i64 0, i64 %idxprom113
  %110 = load i32, ptr %arrayidx114, align 4
  %mul = mul nsw i32 %110, -1
  store i32 %mul, ptr %arrayidx114, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %for.body100
  br label %for.inc

for.inc:                                          ; preds = %if.end115
  %111 = load i32, ptr %i, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond98, !llvm.loop !6

for.end:                                          ; preds = %for.cond98
  br label %for.inc116

for.inc116:                                       ; preds = %for.end
  %112 = load i32, ptr %ch, align 4
  %inc117 = add nsw i32 %112, 1
  store i32 %inc117, ptr %ch, align 4
  br label %for.cond15, !llvm.loop !8

for.end118:                                       ; preds = %for.cond15
  br label %for.inc119

for.inc119:                                       ; preds = %for.end118
  %113 = load i32, ptr %gr, align 4
  %inc120 = add nsw i32 %113, 1
  store i32 %inc120, ptr %gr, align 4
  br label %for.cond, !llvm.loop !9

for.end121:                                       ; preds = %for.cond
  %114 = load ptr, ptr %gfp.addr, align 8
  %115 = load ptr, ptr %l3_side.addr, align 8
  %116 = load i32, ptr %mean_bits, align 4
  call void @ResvFrameEnd(ptr noundef %114, ptr noundef %115, i32 noundef %116)
  ret void
}

declare void @iteration_init(ptr noundef, ptr noundef, ptr noundef) #1

declare void @getframebits(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ResvFrameBegin(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @ms_convert(ptr noundef, ptr noundef) #1

declare void @on_pe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @reduce_side(ptr noundef, double noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @init_outer_loop(ptr noundef %gfp, ptr noundef %xr, ptr noundef %cod_info) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca ptr, align 8
  %xr.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %en = alloca [3 x double], align 8
  %mx = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %cod_info.addr, align 8
  %slen = getelementptr inbounds %struct.gr_info, ptr %1, i32 0, i32 20
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %slen, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %cod_info.addr, align 8
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, ptr %4, i32 0, i32 19
  store ptr @nr_of_sfb_block, ptr %sfb_partition_table, align 8
  %5 = load ptr, ptr %cod_info.addr, align 8
  %part2_3_length = getelementptr inbounds %struct.gr_info, ptr %5, i32 0, i32 0
  store i32 0, ptr %part2_3_length, align 8
  %6 = load ptr, ptr %cod_info.addr, align 8
  %big_values = getelementptr inbounds %struct.gr_info, ptr %6, i32 0, i32 1
  store i32 0, ptr %big_values, align 4
  %7 = load ptr, ptr %cod_info.addr, align 8
  %count1 = getelementptr inbounds %struct.gr_info, ptr %7, i32 0, i32 2
  store i32 0, ptr %count1, align 8
  %8 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %8, i32 0, i32 4
  store i32 0, ptr %scalefac_compress, align 8
  %9 = load ptr, ptr %cod_info.addr, align 8
  %table_select = getelementptr inbounds %struct.gr_info, ptr %9, i32 0, i32 8
  %arrayidx1 = getelementptr inbounds [3 x i32], ptr %table_select, i64 0, i64 0
  store i32 0, ptr %arrayidx1, align 8
  %10 = load ptr, ptr %cod_info.addr, align 8
  %table_select2 = getelementptr inbounds %struct.gr_info, ptr %10, i32 0, i32 8
  %arrayidx3 = getelementptr inbounds [3 x i32], ptr %table_select2, i64 0, i64 1
  store i32 0, ptr %arrayidx3, align 4
  %11 = load ptr, ptr %cod_info.addr, align 8
  %table_select4 = getelementptr inbounds %struct.gr_info, ptr %11, i32 0, i32 8
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %table_select4, i64 0, i64 2
  store i32 0, ptr %arrayidx5, align 8
  %12 = load ptr, ptr %cod_info.addr, align 8
  %subblock_gain = getelementptr inbounds %struct.gr_info, ptr %12, i32 0, i32 9
  %arrayidx6 = getelementptr inbounds [3 x i32], ptr %subblock_gain, i64 0, i64 0
  store i32 0, ptr %arrayidx6, align 4
  %13 = load ptr, ptr %cod_info.addr, align 8
  %subblock_gain7 = getelementptr inbounds %struct.gr_info, ptr %13, i32 0, i32 9
  %arrayidx8 = getelementptr inbounds [3 x i32], ptr %subblock_gain7, i64 0, i64 1
  store i32 0, ptr %arrayidx8, align 4
  %14 = load ptr, ptr %cod_info.addr, align 8
  %subblock_gain9 = getelementptr inbounds %struct.gr_info, ptr %14, i32 0, i32 9
  %arrayidx10 = getelementptr inbounds [3 x i32], ptr %subblock_gain9, i64 0, i64 2
  store i32 0, ptr %arrayidx10, align 4
  %15 = load ptr, ptr %cod_info.addr, align 8
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %15, i32 0, i32 10
  store i32 0, ptr %region0_count, align 8
  %16 = load ptr, ptr %cod_info.addr, align 8
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %16, i32 0, i32 11
  store i32 0, ptr %region1_count, align 4
  %17 = load ptr, ptr %cod_info.addr, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %17, i32 0, i32 15
  store i32 0, ptr %part2_length, align 4
  %18 = load ptr, ptr %cod_info.addr, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %18, i32 0, i32 12
  store i32 0, ptr %preflag, align 8
  %19 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %19, i32 0, i32 13
  store i32 0, ptr %scalefac_scale, align 4
  %20 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %20, i32 0, i32 3
  store i32 210, ptr %global_gain, align 4
  %21 = load ptr, ptr %cod_info.addr, align 8
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %21, i32 0, i32 14
  store i32 0, ptr %count1table_select, align 8
  %22 = load ptr, ptr %cod_info.addr, align 8
  %count1bits = getelementptr inbounds %struct.gr_info, ptr %22, i32 0, i32 18
  store i32 0, ptr %count1bits, align 8
  %23 = load ptr, ptr %gfp.addr, align 8
  %experimentalZ = getelementptr inbounds %struct.lame_global_flags, ptr %23, i32 0, i32 20
  %24 = load i32, ptr %experimentalZ, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then, label %if.end108

if.then:                                          ; preds = %for.end
  %25 = load ptr, ptr %cod_info.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %block_type, align 8
  %cmp11 = icmp eq i32 %26, 2
  br i1 %cmp11, label %if.then12, label %if.end107

if.then12:                                        ; preds = %if.then
  store i32 0, ptr %b, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc18, %if.then12
  %27 = load i32, ptr %b, align 4
  %cmp14 = icmp slt i32 %27, 3
  br i1 %cmp14, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond13
  %28 = load i32, ptr %b, align 4
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom16
  store double 0.000000e+00, ptr %arrayidx17, align 8
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %29 = load i32, ptr %b, align 4
  %inc19 = add nsw i32 %29, 1
  store i32 %inc19, ptr %b, align 4
  br label %for.cond13, !llvm.loop !11

for.end20:                                        ; preds = %for.cond13
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc37, %for.end20
  %30 = load i32, ptr %j, align 4
  %cmp22 = icmp slt i32 %30, 192
  br i1 %cmp22, label %for.body23, label %for.end39

for.body23:                                       ; preds = %for.cond21
  store i32 0, ptr %b, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc34, %for.body23
  %31 = load i32, ptr %b, align 4
  %cmp25 = icmp slt i32 %31, 3
  br i1 %cmp25, label %for.body26, label %for.end36

for.body26:                                       ; preds = %for.cond24
  %32 = load ptr, ptr %xr.addr, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %32, i64 %idxprom27
  %34 = load double, ptr %arrayidx28, align 8
  %35 = load ptr, ptr %xr.addr, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %35, i64 %idxprom29
  %37 = load double, ptr %arrayidx30, align 8
  %38 = load i32, ptr %b, align 4
  %idxprom31 = sext i32 %38 to i64
  %arrayidx32 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom31
  %39 = load double, ptr %arrayidx32, align 8
  %40 = call double @llvm.fmuladd.f64(double %34, double %37, double %39)
  store double %40, ptr %arrayidx32, align 8
  %41 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %41, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body26
  %42 = load i32, ptr %b, align 4
  %inc35 = add nsw i32 %42, 1
  store i32 %inc35, ptr %b, align 4
  br label %for.cond24, !llvm.loop !12

for.end36:                                        ; preds = %for.cond24
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %43 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %43, 1
  store i32 %inc38, ptr %j, align 4
  br label %for.cond21, !llvm.loop !13

for.end39:                                        ; preds = %for.cond21
  store double 0x3D719799812DEA11, ptr %mx, align 8
  store i32 0, ptr %b, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc48, %for.end39
  %44 = load i32, ptr %b, align 4
  %cmp41 = icmp slt i32 %44, 3
  br i1 %cmp41, label %for.body42, label %for.end50

for.body42:                                       ; preds = %for.cond40
  %45 = load double, ptr %mx, align 8
  %46 = load i32, ptr %b, align 4
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom43
  %47 = load double, ptr %arrayidx44, align 8
  %cmp45 = fcmp ogt double %45, %47
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body42
  %48 = load double, ptr %mx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body42
  %49 = load i32, ptr %b, align 4
  %idxprom46 = sext i32 %49 to i64
  %arrayidx47 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom46
  %50 = load double, ptr %arrayidx47, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %48, %cond.true ], [ %50, %cond.false ]
  store double %cond, ptr %mx, align 8
  br label %for.inc48

for.inc48:                                        ; preds = %cond.end
  %51 = load i32, ptr %b, align 4
  %inc49 = add nsw i32 %51, 1
  store i32 %inc49, ptr %b, align 4
  br label %for.cond40, !llvm.loop !14

for.end50:                                        ; preds = %for.cond40
  store i32 0, ptr %b, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc65, %for.end50
  %52 = load i32, ptr %b, align 4
  %cmp52 = icmp slt i32 %52, 3
  br i1 %cmp52, label %for.body53, label %for.end67

for.body53:                                       ; preds = %for.cond51
  %53 = load i32, ptr %b, align 4
  %idxprom54 = sext i32 %53 to i64
  %arrayidx55 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom54
  %54 = load double, ptr %arrayidx55, align 8
  %cmp56 = fcmp ogt double %54, 0x3D719799812DEA11
  br i1 %cmp56, label %cond.true57, label %cond.false60

cond.true57:                                      ; preds = %for.body53
  %55 = load i32, ptr %b, align 4
  %idxprom58 = sext i32 %55 to i64
  %arrayidx59 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom58
  %56 = load double, ptr %arrayidx59, align 8
  br label %cond.end61

cond.false60:                                     ; preds = %for.body53
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.true57
  %cond62 = phi double [ %56, %cond.true57 ], [ 0x3D719799812DEA11, %cond.false60 ]
  %57 = load double, ptr %mx, align 8
  %div = fdiv double %cond62, %57
  %58 = load i32, ptr %b, align 4
  %idxprom63 = sext i32 %58 to i64
  %arrayidx64 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom63
  store double %div, ptr %arrayidx64, align 8
  br label %for.inc65

for.inc65:                                        ; preds = %cond.end61
  %59 = load i32, ptr %b, align 4
  %inc66 = add nsw i32 %59, 1
  store i32 %inc66, ptr %b, align 4
  br label %for.cond51, !llvm.loop !15

for.end67:                                        ; preds = %for.cond51
  store i32 0, ptr %b, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc96, %for.end67
  %60 = load i32, ptr %b, align 4
  %cmp69 = icmp slt i32 %60, 3
  br i1 %cmp69, label %for.body70, label %for.end98

for.body70:                                       ; preds = %for.cond68
  %61 = load i32, ptr %b, align 4
  %idxprom71 = sext i32 %61 to i64
  %arrayidx72 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom71
  %62 = load double, ptr %arrayidx72, align 8
  %63 = call double @llvm.log.f64(double %62)
  %mul = fmul double -5.000000e-01, %63
  %div73 = fdiv double %mul, 0x3FE62E42FEFA39EF
  %add = fadd double %div73, 5.000000e-01
  %conv = fptosi double %add to i32
  %64 = load ptr, ptr %cod_info.addr, align 8
  %subblock_gain74 = getelementptr inbounds %struct.gr_info, ptr %64, i32 0, i32 9
  %65 = load i32, ptr %b, align 4
  %idxprom75 = sext i32 %65 to i64
  %arrayidx76 = getelementptr inbounds [3 x i32], ptr %subblock_gain74, i64 0, i64 %idxprom75
  store i32 %conv, ptr %arrayidx76, align 4
  %66 = load ptr, ptr %cod_info.addr, align 8
  %subblock_gain77 = getelementptr inbounds %struct.gr_info, ptr %66, i32 0, i32 9
  %67 = load i32, ptr %b, align 4
  %idxprom78 = sext i32 %67 to i64
  %arrayidx79 = getelementptr inbounds [3 x i32], ptr %subblock_gain77, i64 0, i64 %idxprom78
  %68 = load i32, ptr %arrayidx79, align 4
  %cmp80 = icmp sgt i32 %68, 2
  br i1 %cmp80, label %if.then82, label %if.end

if.then82:                                        ; preds = %for.body70
  %69 = load ptr, ptr %cod_info.addr, align 8
  %subblock_gain83 = getelementptr inbounds %struct.gr_info, ptr %69, i32 0, i32 9
  %70 = load i32, ptr %b, align 4
  %idxprom84 = sext i32 %70 to i64
  %arrayidx85 = getelementptr inbounds [3 x i32], ptr %subblock_gain83, i64 0, i64 %idxprom84
  store i32 2, ptr %arrayidx85, align 4
  br label %if.end

if.end:                                           ; preds = %if.then82, %for.body70
  %71 = load ptr, ptr %cod_info.addr, align 8
  %subblock_gain86 = getelementptr inbounds %struct.gr_info, ptr %71, i32 0, i32 9
  %72 = load i32, ptr %b, align 4
  %idxprom87 = sext i32 %72 to i64
  %arrayidx88 = getelementptr inbounds [3 x i32], ptr %subblock_gain86, i64 0, i64 %idxprom87
  %73 = load i32, ptr %arrayidx88, align 4
  %cmp89 = icmp slt i32 %73, 0
  br i1 %cmp89, label %if.then91, label %if.end95

if.then91:                                        ; preds = %if.end
  %74 = load ptr, ptr %cod_info.addr, align 8
  %subblock_gain92 = getelementptr inbounds %struct.gr_info, ptr %74, i32 0, i32 9
  %75 = load i32, ptr %b, align 4
  %idxprom93 = sext i32 %75 to i64
  %arrayidx94 = getelementptr inbounds [3 x i32], ptr %subblock_gain92, i64 0, i64 %idxprom93
  store i32 0, ptr %arrayidx94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end
  br label %for.inc96

for.inc96:                                        ; preds = %if.end95
  %76 = load i32, ptr %b, align 4
  %inc97 = add nsw i32 %76, 1
  store i32 %inc97, ptr %b, align 4
  br label %for.cond68, !llvm.loop !16

for.end98:                                        ; preds = %for.cond68
  %arrayidx99 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 0
  %77 = load double, ptr %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 1
  %78 = load double, ptr %arrayidx100, align 8
  %add101 = fadd double %77, %78
  %arrayidx102 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 2
  %79 = load double, ptr %arrayidx102, align 8
  %add103 = fadd double %add101, %79
  %cmp104 = fcmp olt double 1.000000e-99, %add103
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %for.end98
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end98
  store i32 0, ptr %retval, align 4
  br label %return

if.end107:                                        ; preds = %if.then
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %for.end
  store i32 0, ptr %i, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc119, %if.end108
  %80 = load i32, ptr %i, align 4
  %cmp110 = icmp slt i32 %80, 576
  br i1 %cmp110, label %for.body112, label %for.end121

for.body112:                                      ; preds = %for.cond109
  %81 = load ptr, ptr %xr.addr, align 8
  %82 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %82 to i64
  %arrayidx114 = getelementptr inbounds double, ptr %81, i64 %idxprom113
  %83 = load double, ptr %arrayidx114, align 8
  %84 = call double @llvm.fabs.f64(double %83)
  %cmp115 = fcmp olt double 1.000000e-99, %84
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %for.body112
  store i32 1, ptr %retval, align 4
  br label %return

if.end118:                                        ; preds = %for.body112
  br label %for.inc119

for.inc119:                                       ; preds = %if.end118
  %85 = load i32, ptr %i, align 4
  %inc120 = add nsw i32 %85, 1
  store i32 %inc120, ptr %i, align 4
  br label %for.cond109, !llvm.loop !17

for.end121:                                       ; preds = %for.cond109
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end121, %if.then117, %if.else, %if.then106
  %86 = load i32, ptr %retval, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i32 @calc_xmin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @outer_loop(ptr noundef %gfp, ptr noundef %xr, i32 noundef %targ_bits, ptr noundef %best_noise, ptr noundef %l3_xmin, ptr noundef %l3_enc, ptr noundef %scalefac, ptr noundef %cod_info, ptr noundef %xfsf, i32 noundef %ch) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %xr.addr = alloca ptr, align 8
  %targ_bits.addr = alloca i32, align 4
  %best_noise.addr = alloca ptr, align 8
  %l3_xmin.addr = alloca ptr, align 8
  %l3_enc.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %xfsf.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %scalefac_w = alloca %struct.III_scalefac_t, align 4
  %save_cod_info = alloca %struct.gr_info, align 8
  %l3_enc_w = alloca [576 x i32], align 4
  %i = alloca i32, align 4
  %iteration = alloca i32, align 4
  %status = alloca i32, align 4
  %bits_found = alloca i32, align 4
  %huff_bits = alloca i32, align 4
  %xrpow = alloca [576 x double], align 8
  %temp = alloca double, align 8
  %better = alloca i32, align 4
  %over = alloca i32, align 4
  %max_noise = alloca double, align 8
  %over_noise = alloca double, align 8
  %tot_noise = alloca double, align 8
  %best_over = alloca i32, align 4
  %best_max_noise = alloca double, align 8
  %best_over_noise = alloca double, align 8
  %best_tot_noise = alloca double, align 8
  %xfsf_w = alloca [4 x [21 x double]], align 8
  %distort = alloca [4 x [21 x double]], align 8
  %compute_stepsize = alloca i32, align 4
  %notdone = alloca i32, align 4
  %try_scale = alloca i32, align 4
  %real_bits = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store i32 %targ_bits, ptr %targ_bits.addr, align 4
  store ptr %best_noise, ptr %best_noise.addr, align 8
  store ptr %l3_xmin, ptr %l3_xmin.addr, align 8
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store ptr %xfsf, ptr %xfsf.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store i32 0, ptr %bits_found, align 4
  store i32 0, ptr %over, align 4
  store i32 100, ptr %best_over, align 4
  store double 0.000000e+00, ptr %best_max_noise, align 8
  store double 0.000000e+00, ptr %best_over_noise, align 8
  store double 0.000000e+00, ptr %best_tot_noise, align 8
  store i32 1, ptr %compute_stepsize, align 4
  store i32 1, ptr %notdone, align 4
  store i32 0, ptr %iteration, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end93, %entry
  %0 = load i32, ptr %notdone, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %try_scale, align 4
  %1 = load i32, ptr %iteration, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %iteration, align 4
  %2 = load i32, ptr %compute_stepsize, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %compute_stepsize, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %scalefac_w, i8 0, i64 244, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %xr.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %idxprom
  %6 = load double, ptr %arrayidx, align 8
  %7 = call double @llvm.fabs.f64(double %6)
  store double %7, ptr %temp, align 8
  %8 = load double, ptr %temp, align 8
  %9 = call double @llvm.sqrt.f64(double %8)
  %10 = load double, ptr %temp, align 8
  %mul = fmul double %9, %10
  %11 = call double @llvm.sqrt.f64(double %mul)
  %12 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [576 x double], ptr %xrpow, i64 0, i64 %idxprom2
  store double %11, ptr %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc4 = add nsw i32 %13, 1
  store i32 %inc4, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %gfp.addr, align 8
  %15 = load i32, ptr %targ_bits.addr, align 4
  %16 = load i32, ptr %ch.addr, align 4
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr @outer_loop.OldValue, i64 0, i64 %idxprom5
  %17 = load i32, ptr %arrayidx6, align 4
  %arraydecay = getelementptr inbounds [576 x i32], ptr %l3_enc_w, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [576 x double], ptr %xrpow, i64 0, i64 0
  %18 = load ptr, ptr %cod_info.addr, align 8
  %call = call i32 @bin_search_StepSize2(ptr noundef %14, i32 noundef %15, i32 noundef %17, ptr noundef %arraydecay, ptr noundef %arraydecay7, ptr noundef %18)
  store i32 %call, ptr %bits_found, align 4
  %19 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %global_gain, align 4
  %21 = load i32, ptr %ch.addr, align 4
  %idxprom8 = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr @outer_loop.OldValue, i64 0, i64 %idxprom8
  store i32 %20, ptr %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %while.body
  %22 = load i32, ptr %targ_bits.addr, align 4
  %23 = load ptr, ptr %cod_info.addr, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %23, i32 0, i32 15
  %24 = load i32, ptr %part2_length, align 4
  %sub = sub i32 %22, %24
  store i32 %sub, ptr %huff_bits, align 4
  %25 = load i32, ptr %huff_bits, align 4
  %cmp10 = icmp slt i32 %25, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %26 = load i32, ptr %iteration, align 4
  %cmp12 = icmp ne i32 %26, 1
  %lnot = xor i1 %cmp12, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool13 = icmp ne i64 %conv, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then11
  call void @__assert_rtn(ptr noundef @__func__.outer_loop, ptr noundef @.str, i32 noundef 805, ptr noundef @.str.5) #8
  unreachable

27:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %27
  store i32 0, ptr %notdone, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end
  %28 = load i32, ptr %iteration, align 4
  %cmp14 = icmp eq i32 %28, 1
  br i1 %cmp14, label %if.then16, label %if.else27

if.then16:                                        ; preds = %if.else
  %29 = load i32, ptr %bits_found, align 4
  %30 = load i32, ptr %huff_bits, align 4
  %cmp17 = icmp sgt i32 %29, %30
  br i1 %cmp17, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.then16
  %31 = load ptr, ptr %cod_info.addr, align 8
  %global_gain20 = getelementptr inbounds %struct.gr_info, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %global_gain20, align 4
  %inc21 = add i32 %32, 1
  store i32 %inc21, ptr %global_gain20, align 4
  %33 = load ptr, ptr %gfp.addr, align 8
  %arraydecay22 = getelementptr inbounds [576 x double], ptr %xrpow, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [576 x i32], ptr %l3_enc_w, i64 0, i64 0
  %34 = load i32, ptr %huff_bits, align 4
  %35 = load ptr, ptr %cod_info.addr, align 8
  %call24 = call i32 @inner_loop(ptr noundef %33, ptr noundef %arraydecay22, ptr noundef %arraydecay23, i32 noundef %34, ptr noundef %35)
  store i32 %call24, ptr %real_bits, align 4
  br label %if.end26

if.else25:                                        ; preds = %if.then16
  %36 = load i32, ptr %bits_found, align 4
  store i32 %36, ptr %real_bits, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then19
  br label %if.end31

if.else27:                                        ; preds = %if.else
  %37 = load ptr, ptr %gfp.addr, align 8
  %arraydecay28 = getelementptr inbounds [576 x double], ptr %xrpow, i64 0, i64 0
  %arraydecay29 = getelementptr inbounds [576 x i32], ptr %l3_enc_w, i64 0, i64 0
  %38 = load i32, ptr %huff_bits, align 4
  %39 = load ptr, ptr %cod_info.addr, align 8
  %call30 = call i32 @inner_loop(ptr noundef %37, ptr noundef %arraydecay28, ptr noundef %arraydecay29, i32 noundef %38, ptr noundef %39)
  store i32 %call30, ptr %real_bits, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.end26
  %40 = load i32, ptr %real_bits, align 4
  %41 = load ptr, ptr %cod_info.addr, align 8
  %part2_3_length = getelementptr inbounds %struct.gr_info, ptr %41, i32 0, i32 0
  store i32 %40, ptr %part2_3_length, align 8
  %42 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping = getelementptr inbounds %struct.lame_global_flags, ptr %42, i32 0, i32 61
  %43 = load i32, ptr %noise_shaping, align 8
  %cmp32 = icmp eq i32 %43, 0
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.end31
  store i32 0, ptr %over, align 4
  br label %if.end40

if.else35:                                        ; preds = %if.end31
  %44 = load ptr, ptr %xr.addr, align 8
  %arraydecay36 = getelementptr inbounds [576 x i32], ptr %l3_enc_w, i64 0, i64 0
  %45 = load ptr, ptr %cod_info.addr, align 8
  %arraydecay37 = getelementptr inbounds [4 x [21 x double]], ptr %xfsf_w, i64 0, i64 0
  %arraydecay38 = getelementptr inbounds [4 x [21 x double]], ptr %distort, i64 0, i64 0
  %46 = load ptr, ptr %l3_xmin.addr, align 8
  %call39 = call i32 @calc_noise1(ptr noundef %44, ptr noundef %arraydecay36, ptr noundef %45, ptr noundef %arraydecay37, ptr noundef %arraydecay38, ptr noundef %46, ptr noundef %scalefac_w, ptr noundef %over_noise, ptr noundef %tot_noise, ptr noundef %max_noise)
  store i32 %call39, ptr %over, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else35, %if.then34
  %47 = load i32, ptr %iteration, align 4
  %cmp41 = icmp eq i32 %47, 1
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.end40
  store i32 1, ptr %better, align 4
  br label %if.end46

if.else44:                                        ; preds = %if.end40
  %48 = load ptr, ptr %gfp.addr, align 8
  %experimentalX = getelementptr inbounds %struct.lame_global_flags, ptr %48, i32 0, i32 18
  %49 = load i32, ptr %experimentalX, align 4
  %50 = load i32, ptr %best_over, align 4
  %51 = load double, ptr %best_tot_noise, align 8
  %52 = load double, ptr %best_over_noise, align 8
  %53 = load double, ptr %best_max_noise, align 8
  %54 = load i32, ptr %over, align 4
  %55 = load double, ptr %tot_noise, align 8
  %56 = load double, ptr %over_noise, align 8
  %57 = load double, ptr %max_noise, align 8
  %call45 = call i32 @quant_compare(i32 noundef %49, i32 noundef %50, double noundef %51, double noundef %52, double noundef %53, i32 noundef %54, double noundef %55, double noundef %56, double noundef %57)
  store i32 %call45, ptr %better, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then43
  %58 = load i32, ptr %better, align 4
  %tobool47 = icmp ne i32 %58, 0
  br i1 %tobool47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end46
  %59 = load i32, ptr %over, align 4
  store i32 %59, ptr %best_over, align 4
  %60 = load double, ptr %max_noise, align 8
  store double %60, ptr %best_max_noise, align 8
  %61 = load double, ptr %over_noise, align 8
  store double %61, ptr %best_over_noise, align 8
  %62 = load double, ptr %tot_noise, align 8
  store double %62, ptr %best_tot_noise, align 8
  %63 = load ptr, ptr %scalefac.addr, align 8
  %64 = load ptr, ptr %scalefac.addr, align 8
  %65 = call i64 @llvm.objectsize.i64.p0(ptr %64, i1 false, i1 true, i1 false)
  %call49 = call ptr @__memcpy_chk(ptr noundef %63, ptr noundef %scalefac_w, i64 noundef 244, i64 noundef %65) #7
  %66 = load ptr, ptr %l3_enc.addr, align 8
  %arraydecay50 = getelementptr inbounds [576 x i32], ptr %l3_enc_w, i64 0, i64 0
  %67 = load ptr, ptr %l3_enc.addr, align 8
  %68 = call i64 @llvm.objectsize.i64.p0(ptr %67, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %66, ptr noundef %arraydecay50, i64 noundef 2304, i64 noundef %68) #7
  %69 = load ptr, ptr %cod_info.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %save_cod_info, ptr align 8 %69, i64 120, i1 false)
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %cond.end
  %70 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping_stop = getelementptr inbounds %struct.lame_global_flags, ptr %70, i32 0, i32 62
  %71 = load i32, ptr %noise_shaping_stop, align 4
  %cmp54 = icmp eq i32 %71, 0
  br i1 %cmp54, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.end53
  %72 = load i32, ptr %over, align 4
  %cmp57 = icmp eq i32 %72, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then56
  store i32 0, ptr %notdone, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then56
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end53
  %73 = load i32, ptr %notdone, align 4
  %tobool62 = icmp ne i32 %73, 0
  br i1 %tobool62, label %if.then63, label %if.end86

if.then63:                                        ; preds = %if.end61
  %arraydecay64 = getelementptr inbounds [576 x double], ptr %xrpow, i64 0, i64 0
  %74 = load ptr, ptr %cod_info.addr, align 8
  %arraydecay65 = getelementptr inbounds [4 x [21 x double]], ptr %distort, i64 0, i64 0
  call void @amp_scalefac_bands(ptr noundef %arraydecay64, ptr noundef %74, ptr noundef %scalefac_w, ptr noundef %arraydecay65)
  %75 = load ptr, ptr %cod_info.addr, align 8
  %call66 = call i32 @loop_break(ptr noundef %scalefac_w, ptr noundef %75)
  store i32 %call66, ptr %status, align 4
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end82

if.then69:                                        ; preds = %if.then63
  %76 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %76, i32 0, i32 43
  %77 = load i32, ptr %version, align 8
  %cmp70 = icmp eq i32 %77, 1
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.then69
  %78 = load ptr, ptr %cod_info.addr, align 8
  %call73 = call i32 @scale_bitcount(ptr noundef %scalefac_w, ptr noundef %78)
  store i32 %call73, ptr %status, align 4
  br label %if.end76

if.else74:                                        ; preds = %if.then69
  %79 = load ptr, ptr %cod_info.addr, align 8
  %call75 = call i32 @scale_bitcount_lsf(ptr noundef %scalefac_w, ptr noundef %79)
  store i32 %call75, ptr %status, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then72
  %80 = load i32, ptr %status, align 4
  %tobool77 = icmp ne i32 %80, 0
  br i1 %tobool77, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %if.end76
  %81 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %81, i32 0, i32 13
  %82 = load i32, ptr %scalefac_scale, align 4
  %cmp78 = icmp eq i32 %82, 0
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %land.lhs.true
  store i32 1, ptr %try_scale, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %land.lhs.true, %if.end76
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then63
  %83 = load i32, ptr %status, align 4
  %tobool83 = icmp ne i32 %83, 0
  %lnot84 = xor i1 %tobool83, true
  %lnot.ext85 = zext i1 %lnot84 to i32
  store i32 %lnot.ext85, ptr %notdone, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end82, %if.end61
  %84 = load i32, ptr %try_scale, align 4
  %tobool87 = icmp ne i32 %84, 0
  br i1 %tobool87, label %land.lhs.true88, label %if.end93

land.lhs.true88:                                  ; preds = %if.end86
  %85 = load ptr, ptr %gfp.addr, align 8
  %experimentalY = getelementptr inbounds %struct.lame_global_flags, ptr %85, i32 0, i32 19
  %86 = load i32, ptr %experimentalY, align 8
  %tobool89 = icmp ne i32 %86, 0
  br i1 %tobool89, label %if.then90, label %if.end93

if.then90:                                        ; preds = %land.lhs.true88
  %87 = load ptr, ptr %gfp.addr, align 8
  %88 = load ptr, ptr %xr.addr, align 8
  %89 = load ptr, ptr %cod_info.addr, align 8
  %call91 = call i32 @init_outer_loop(ptr noundef %87, ptr noundef %88, ptr noundef %89)
  store i32 1, ptr %compute_stepsize, align 4
  store i32 1, ptr %notdone, align 4
  %90 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale92 = getelementptr inbounds %struct.gr_info, ptr %90, i32 0, i32 13
  store i32 1, ptr %scalefac_scale92, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %land.lhs.true88, %if.end86
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %91 = load ptr, ptr %cod_info.addr, align 8
  %92 = load ptr, ptr %cod_info.addr, align 8
  %93 = call i64 @llvm.objectsize.i64.p0(ptr %92, i1 false, i1 true, i1 false)
  %call94 = call ptr @__memcpy_chk(ptr noundef %91, ptr noundef %save_cod_info, i64 noundef 120, i64 noundef %93) #7
  %94 = load ptr, ptr %cod_info.addr, align 8
  %part2_length95 = getelementptr inbounds %struct.gr_info, ptr %94, i32 0, i32 15
  %95 = load i32, ptr %part2_length95, align 4
  %96 = load ptr, ptr %cod_info.addr, align 8
  %part2_3_length96 = getelementptr inbounds %struct.gr_info, ptr %96, i32 0, i32 0
  %97 = load i32, ptr %part2_3_length96, align 8
  %add = add i32 %97, %95
  store i32 %add, ptr %part2_3_length96, align 8
  %98 = load ptr, ptr %cod_info.addr, align 8
  %global_gain97 = getelementptr inbounds %struct.gr_info, ptr %98, i32 0, i32 3
  %99 = load i32, ptr %global_gain97, align 4
  %cmp98 = icmp ult i32 %99, 256
  %lnot100 = xor i1 %cmp98, true
  %lnot.ext101 = zext i1 %lnot100 to i32
  %conv102 = sext i32 %lnot.ext101 to i64
  %tobool103 = icmp ne i64 %conv102, 0
  br i1 %tobool103, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %while.end
  call void @__assert_rtn(ptr noundef @__func__.outer_loop, ptr noundef @.str, i32 noundef 891, ptr noundef @.str.6) #8
  unreachable

100:                                              ; No predecessors!
  br label %cond.end106

cond.false105:                                    ; preds = %while.end
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false105, %100
  %101 = load i32, ptr %best_over, align 4
  %conv107 = sitofp i32 %101 to double
  %102 = load ptr, ptr %best_noise.addr, align 8
  %arrayidx108 = getelementptr inbounds double, ptr %102, i64 0
  store double %conv107, ptr %arrayidx108, align 8
  %103 = load double, ptr %best_max_noise, align 8
  %104 = load ptr, ptr %best_noise.addr, align 8
  %arrayidx109 = getelementptr inbounds double, ptr %104, i64 1
  store double %103, ptr %arrayidx109, align 8
  %105 = load double, ptr %best_over_noise, align 8
  %106 = load ptr, ptr %best_noise.addr, align 8
  %arrayidx110 = getelementptr inbounds double, ptr %106, i64 2
  store double %105, ptr %arrayidx110, align 8
  %107 = load double, ptr %best_tot_noise, align 8
  %108 = load ptr, ptr %best_noise.addr, align 8
  %arrayidx111 = getelementptr inbounds double, ptr %108, i64 3
  store double %107, ptr %arrayidx111, align 8
  ret void
}

declare void @best_scalefac_store(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @best_huffman_divide(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare void @ResvAdjust(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @ResvFrameEnd(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @set_masking_lower(i32 noundef %VBR_q, i32 noundef %nbits) #0 {
entry:
  %VBR_q.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %masking_lower_db = alloca float, align 4
  %adjust = alloca float, align 4
  store i32 %VBR_q, ptr %VBR_q.addr, align 4
  store i32 %nbits, ptr %nbits.addr, align 4
  %0 = load i32, ptr %VBR_q.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 -6, %mul
  %conv = sitofp i32 %add to float
  store float %conv, ptr %masking_lower_db, align 4
  %1 = load i32, ptr %nbits.addr, align 4
  %sub = sub nsw i32 %1, 125
  %conv1 = sitofp i32 %sub to double
  %div = fdiv double %conv1, 2.375000e+03
  %conv2 = fptrunc double %div to float
  store float %conv2, ptr %adjust, align 4
  %2 = load float, ptr %adjust, align 4
  %sub3 = fsub float %2, 1.000000e+00
  %mul4 = fmul float 4.000000e+00, %sub3
  store float %mul4, ptr %adjust, align 4
  %3 = load float, ptr %adjust, align 4
  %4 = load float, ptr %masking_lower_db, align 4
  %add5 = fadd float %4, %3
  store float %add5, ptr %masking_lower_db, align 4
  %5 = load float, ptr %masking_lower_db, align 4
  %div6 = fdiv float %5, 1.000000e+01
  %conv7 = fpext float %div6 to double
  %6 = call double @llvm.pow.f64(double 1.000000e+01, double %conv7)
  %conv8 = fptrunc double %6 to float
  store float %conv8, ptr @masking_lower, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: nounwind ssp uwtable
define void @VBR_iteration_loop(ptr noundef %gfp, ptr noundef %pe, ptr noundef %ms_ener_ratio, ptr noundef %xr, ptr noundef %ratio, ptr noundef %l3_side, ptr noundef %l3_enc, ptr noundef %scalefac) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %pe.addr = alloca ptr, align 8
  %ms_ener_ratio.addr = alloca ptr, align 8
  %xr.addr = alloca ptr, align 8
  %ratio.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %l3_enc.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %bst_cod_info = alloca %struct.gr_info, align 8
  %clean_cod_info = alloca %struct.gr_info, align 8
  %bst_scalefac = alloca %struct.III_scalefac_t, align 4
  %bst_l3_enc = alloca [576 x i32], align 4
  %l3_xmin = alloca %struct.III_psy_xmin, align 8
  %cod_info = alloca ptr, align 8
  %save_bits = alloca [2 x [2 x i32]], align 4
  %noise = alloca [4 x double], align 8
  %targ_noise = alloca [4 x double], align 8
  %xfsf = alloca [4 x [21 x double]], align 8
  %this_bits = alloca i32, align 4
  %dbits = alloca i32, align 4
  %used_bits = alloca i32, align 4
  %min_bits = alloca i32, align 4
  %max_bits = alloca i32, align 4
  %min_mean_bits = alloca i32, align 4
  %frameBits = alloca [15 x i32], align 4
  %bitsPerFrame = alloca i32, align 4
  %bits = alloca i32, align 4
  %mean_bits = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %analog_silence = alloca i32, align 4
  %reparted = alloca i32, align 4
  %num_chan = alloca i32, align 4
  %real_bits = alloca i32, align 4
  %better = alloca i32, align 4
  %fac = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %pe, ptr %pe.addr, align 8
  store ptr %ms_ener_ratio, ptr %ms_ener_ratio.addr, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ratio, ptr %ratio.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr null, ptr %cod_info, align 8
  store i32 0, ptr %used_bits, align 4
  store i32 0, ptr %min_mean_bits, align 4
  store i32 0, ptr %reparted, align 4
  %0 = load ptr, ptr %gfp.addr, align 8
  %1 = load ptr, ptr %l3_side.addr, align 8
  %2 = load ptr, ptr %l3_enc.addr, align 8
  call void @iteration_init(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %3, i32 0, i32 50
  store i32 1, ptr %bitrate_index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index1 = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 50
  %5 = load i32, ptr %bitrate_index1, align 4
  %6 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %6, i32 0, i32 48
  %7 = load i32, ptr %VBR_max_bitrate, align 4
  %cmp = icmp sle i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %gfp.addr, align 8
  call void @getframebits(ptr noundef %8, ptr noundef %bitsPerFrame, ptr noundef %mean_bits)
  %9 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index2 = getelementptr inbounds %struct.lame_global_flags, ptr %9, i32 0, i32 50
  %10 = load i32, ptr %bitrate_index2, align 4
  %11 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %11, i32 0, i32 47
  %12 = load i32, ptr %VBR_min_bitrate, align 8
  %cmp3 = icmp eq i32 %10, %12
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, ptr %mean_bits, align 4
  %14 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %14, i32 0, i32 46
  %15 = load i32, ptr %stereo, align 4
  %div = sdiv i32 %13, %15
  store i32 %div, ptr %min_mean_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %16 = load ptr, ptr %gfp.addr, align 8
  %17 = load ptr, ptr %l3_side.addr, align 8
  %18 = load i32, ptr %mean_bits, align 4
  %19 = load i32, ptr %bitsPerFrame, align 4
  %call = call i32 @ResvFrameBegin(ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef %19)
  %20 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index4 = getelementptr inbounds %struct.lame_global_flags, ptr %20, i32 0, i32 50
  %21 = load i32, ptr %bitrate_index4, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom
  store i32 %call, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index5 = getelementptr inbounds %struct.lame_global_flags, ptr %22, i32 0, i32 50
  %23 = load i32, ptr %bitrate_index5, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %bitrate_index5, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate6 = getelementptr inbounds %struct.lame_global_flags, ptr %24, i32 0, i32 48
  %25 = load i32, ptr %VBR_max_bitrate6, align 4
  %26 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index7 = getelementptr inbounds %struct.lame_global_flags, ptr %26, i32 0, i32 50
  store i32 %25, ptr %bitrate_index7, align 4
  store i32 0, ptr %analog_silence, align 4
  store i32 0, ptr %gr, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc274, %for.end
  %27 = load i32, ptr %gr, align 4
  %28 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %28, i32 0, i32 45
  %29 = load i32, ptr %mode_gr, align 8
  %cmp9 = icmp slt i32 %27, %29
  br i1 %cmp9, label %for.body10, label %for.end276

for.body10:                                       ; preds = %for.cond8
  %30 = load ptr, ptr %gfp.addr, align 8
  %stereo11 = getelementptr inbounds %struct.lame_global_flags, ptr %30, i32 0, i32 46
  %31 = load i32, ptr %stereo11, align 4
  store i32 %31, ptr %num_chan, align 4
  %32 = load i32, ptr @reduce_sidechannel, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body10
  store i32 1, ptr %num_chan, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.body10
  %33 = load i32, ptr @convert_mdct, align 4
  %tobool14 = icmp ne i32 %33, 0
  br i1 %tobool14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end13
  %34 = load ptr, ptr %xr.addr, align 8
  %35 = load i32, ptr %gr, align 4
  %idxprom16 = sext i32 %35 to i64
  %arrayidx17 = getelementptr inbounds [2 x [576 x double]], ptr %34, i64 %idxprom16
  %arraydecay = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx17, i64 0, i64 0
  %36 = load ptr, ptr %xr.addr, align 8
  %37 = load i32, ptr %gr, align 4
  %idxprom18 = sext i32 %37 to i64
  %arrayidx19 = getelementptr inbounds [2 x [576 x double]], ptr %36, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx19, i64 0, i64 0
  call void @ms_convert(ptr noundef %arraydecay, ptr noundef %arraydecay20)
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13
  store i32 0, ptr %ch, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc271, %if.end21
  %38 = load i32, ptr %ch, align 4
  %39 = load i32, ptr %num_chan, align 4
  %cmp23 = icmp slt i32 %38, %39
  br i1 %cmp23, label %for.body24, label %for.end273

for.body24:                                       ; preds = %for.cond22
  %40 = load ptr, ptr %l3_side.addr, align 8
  %gr25 = getelementptr inbounds %struct.III_side_info_t, ptr %40, i32 0, i32 4
  %41 = load i32, ptr %gr, align 4
  %idxprom26 = sext i32 %41 to i64
  %arrayidx27 = getelementptr inbounds [2 x %struct.anon], ptr %gr25, i64 0, i64 %idxprom26
  %ch28 = getelementptr inbounds %struct.anon, ptr %arrayidx27, i32 0, i32 0
  %42 = load i32, ptr %ch, align 4
  %idxprom29 = sext i32 %42 to i64
  %arrayidx30 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch28, i64 0, i64 %idxprom29
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx30, i32 0, i32 0
  store ptr %tt, ptr %cod_info, align 8
  %43 = load i32, ptr %min_mean_bits, align 4
  %cmp31 = icmp sgt i32 125, %43
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body24
  br label %cond.end

cond.false:                                       ; preds = %for.body24
  %44 = load i32, ptr %min_mean_bits, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 125, %cond.true ], [ %44, %cond.false ]
  store i32 %cond, ptr %min_bits, align 4
  %45 = load ptr, ptr %gfp.addr, align 8
  %46 = load ptr, ptr %xr.addr, align 8
  %47 = load i32, ptr %gr, align 4
  %idxprom32 = sext i32 %47 to i64
  %arrayidx33 = getelementptr inbounds [2 x [576 x double]], ptr %46, i64 %idxprom32
  %48 = load i32, ptr %ch, align 4
  %idxprom34 = sext i32 %48 to i64
  %arrayidx35 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx33, i64 0, i64 %idxprom34
  %arraydecay36 = getelementptr inbounds [576 x double], ptr %arrayidx35, i64 0, i64 0
  %49 = load ptr, ptr %cod_info, align 8
  %call37 = call i32 @init_outer_loop(ptr noundef %45, ptr noundef %arraydecay36, ptr noundef %49)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end64, label %if.then39

if.then39:                                        ; preds = %cond.end
  %50 = load ptr, ptr %scalefac.addr, align 8
  %51 = load i32, ptr %gr, align 4
  %idxprom40 = sext i32 %51 to i64
  %arrayidx41 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %50, i64 %idxprom40
  %52 = load i32, ptr %ch, align 4
  %idxprom42 = sext i32 %52 to i64
  %arrayidx43 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx41, i64 0, i64 %idxprom42
  %53 = load ptr, ptr %scalefac.addr, align 8
  %54 = load i32, ptr %gr, align 4
  %idxprom44 = sext i32 %54 to i64
  %arrayidx45 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %53, i64 %idxprom44
  %55 = load i32, ptr %ch, align 4
  %idxprom46 = sext i32 %55 to i64
  %arrayidx47 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx45, i64 0, i64 %idxprom46
  %56 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx47, i1 false, i1 true, i1 false)
  %call48 = call ptr @__memset_chk(ptr noundef %arrayidx43, i32 noundef 0, i64 noundef 244, i64 noundef %56) #7
  %57 = load ptr, ptr %l3_enc.addr, align 8
  %58 = load i32, ptr %gr, align 4
  %idxprom49 = sext i32 %58 to i64
  %arrayidx50 = getelementptr inbounds [2 x [576 x i32]], ptr %57, i64 %idxprom49
  %59 = load i32, ptr %ch, align 4
  %idxprom51 = sext i32 %59 to i64
  %arrayidx52 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx50, i64 0, i64 %idxprom51
  %arraydecay53 = getelementptr inbounds [576 x i32], ptr %arrayidx52, i64 0, i64 0
  %60 = load ptr, ptr %l3_enc.addr, align 8
  %61 = load i32, ptr %gr, align 4
  %idxprom54 = sext i32 %61 to i64
  %arrayidx55 = getelementptr inbounds [2 x [576 x i32]], ptr %60, i64 %idxprom54
  %62 = load i32, ptr %ch, align 4
  %idxprom56 = sext i32 %62 to i64
  %arrayidx57 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx55, i64 0, i64 %idxprom56
  %arraydecay58 = getelementptr inbounds [576 x i32], ptr %arrayidx57, i64 0, i64 0
  %63 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay58, i1 false, i1 true, i1 false)
  %call59 = call ptr @__memset_chk(ptr noundef %arraydecay53, i32 noundef 0, i64 noundef 2304, i64 noundef %63) #7
  %64 = load i32, ptr %gr, align 4
  %idxprom60 = sext i32 %64 to i64
  %arrayidx61 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom60
  %65 = load i32, ptr %ch, align 4
  %idxprom62 = sext i32 %65 to i64
  %arrayidx63 = getelementptr inbounds [2 x i32], ptr %arrayidx61, i64 0, i64 %idxprom62
  store i32 0, ptr %arrayidx63, align 4
  store i32 1, ptr %analog_silence, align 4
  br label %for.inc271

if.end64:                                         ; preds = %cond.end
  %66 = load ptr, ptr %cod_info, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %clean_cod_info, ptr align 8 %66, i64 120, i1 false)
  %67 = load ptr, ptr %gfp.addr, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %67, i32 0, i32 22
  %68 = load i32, ptr %VBR_q, align 4
  call void @set_masking_lower(i32 noundef %68, i32 noundef 2500)
  %69 = load ptr, ptr %gfp.addr, align 8
  %70 = load ptr, ptr %xr.addr, align 8
  %71 = load i32, ptr %gr, align 4
  %idxprom65 = sext i32 %71 to i64
  %arrayidx66 = getelementptr inbounds [2 x [576 x double]], ptr %70, i64 %idxprom65
  %72 = load i32, ptr %ch, align 4
  %idxprom67 = sext i32 %72 to i64
  %arrayidx68 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx66, i64 0, i64 %idxprom67
  %arraydecay69 = getelementptr inbounds [576 x double], ptr %arrayidx68, i64 0, i64 0
  %73 = load ptr, ptr %ratio.addr, align 8
  %74 = load i32, ptr %gr, align 4
  %idxprom70 = sext i32 %74 to i64
  %arrayidx71 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %73, i64 %idxprom70
  %75 = load i32, ptr %ch, align 4
  %idxprom72 = sext i32 %75 to i64
  %arrayidx73 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %arrayidx71, i64 0, i64 %idxprom72
  %76 = load ptr, ptr %cod_info, align 8
  %call74 = call i32 @calc_xmin(ptr noundef %69, ptr noundef %arraydecay69, ptr noundef %arrayidx73, ptr noundef %76, ptr noundef %l3_xmin)
  %cmp75 = icmp eq i32 0, %call74
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end64
  store i32 1, ptr %analog_silence, align 4
  store i32 125, ptr %min_bits, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end64
  %77 = load ptr, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %77, i32 0, i32 6
  %78 = load i32, ptr %block_type, align 8
  %cmp78 = icmp eq i32 %78, 2
  br i1 %cmp78, label %if.then79, label %if.end100

if.then79:                                        ; preds = %if.end77
  %79 = load ptr, ptr %pe.addr, align 8
  %80 = load i32, ptr %gr, align 4
  %idxprom80 = sext i32 %80 to i64
  %arrayidx81 = getelementptr inbounds [2 x double], ptr %79, i64 %idxprom80
  %81 = load i32, ptr %ch, align 4
  %idxprom82 = sext i32 %81 to i64
  %arrayidx83 = getelementptr inbounds [2 x double], ptr %arrayidx81, i64 0, i64 %idxprom82
  %82 = load double, ptr %arrayidx83, align 8
  %cmp84 = fcmp ogt double 1.100000e+03, %82
  br i1 %cmp84, label %cond.true85, label %cond.false86

cond.true85:                                      ; preds = %if.then79
  br label %cond.end91

cond.false86:                                     ; preds = %if.then79
  %83 = load ptr, ptr %pe.addr, align 8
  %84 = load i32, ptr %gr, align 4
  %idxprom87 = sext i32 %84 to i64
  %arrayidx88 = getelementptr inbounds [2 x double], ptr %83, i64 %idxprom87
  %85 = load i32, ptr %ch, align 4
  %idxprom89 = sext i32 %85 to i64
  %arrayidx90 = getelementptr inbounds [2 x double], ptr %arrayidx88, i64 0, i64 %idxprom89
  %86 = load double, ptr %arrayidx90, align 8
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false86, %cond.true85
  %cond92 = phi double [ 1.100000e+03, %cond.true85 ], [ %86, %cond.false86 ]
  %87 = load i32, ptr %min_bits, align 4
  %conv = sitofp i32 %87 to double
  %add = fadd double %conv, %cond92
  %conv93 = fptosi double %add to i32
  store i32 %conv93, ptr %min_bits, align 4
  %88 = load i32, ptr %min_bits, align 4
  %cmp94 = icmp slt i32 %88, 1800
  br i1 %cmp94, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %cond.end91
  %89 = load i32, ptr %min_bits, align 4
  br label %cond.end98

cond.false97:                                     ; preds = %cond.end91
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false97, %cond.true96
  %cond99 = phi i32 [ %89, %cond.true96 ], [ 1800, %cond.false97 ]
  store i32 %cond99, ptr %min_bits, align 4
  br label %if.end100

if.end100:                                        ; preds = %cond.end98, %if.end77
  %90 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate101 = getelementptr inbounds %struct.lame_global_flags, ptr %90, i32 0, i32 48
  %91 = load i32, ptr %VBR_max_bitrate101, align 4
  %idxprom102 = sext i32 %91 to i64
  %arrayidx103 = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom102
  %92 = load i32, ptr %arrayidx103, align 4
  %93 = load ptr, ptr %gfp.addr, align 8
  %stereo104 = getelementptr inbounds %struct.lame_global_flags, ptr %93, i32 0, i32 46
  %94 = load i32, ptr %stereo104, align 4
  %95 = load ptr, ptr %gfp.addr, align 8
  %mode_gr105 = getelementptr inbounds %struct.lame_global_flags, ptr %95, i32 0, i32 45
  %96 = load i32, ptr %mode_gr105, align 8
  %mul = mul nsw i32 %94, %96
  %div106 = sdiv i32 %92, %mul
  %add107 = add nsw i32 1200, %div106
  store i32 %add107, ptr %max_bits, align 4
  %97 = load i32, ptr %max_bits, align 4
  %cmp108 = icmp slt i32 %97, 2500
  br i1 %cmp108, label %cond.true110, label %cond.false111

cond.true110:                                     ; preds = %if.end100
  %98 = load i32, ptr %max_bits, align 4
  br label %cond.end112

cond.false111:                                    ; preds = %if.end100
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false111, %cond.true110
  %cond113 = phi i32 [ %98, %cond.true110 ], [ 2500, %cond.false111 ]
  store i32 %cond113, ptr %max_bits, align 4
  %99 = load i32, ptr %max_bits, align 4
  %100 = load i32, ptr %min_bits, align 4
  %cmp114 = icmp sgt i32 %99, %100
  br i1 %cmp114, label %cond.true116, label %cond.false117

cond.true116:                                     ; preds = %cond.end112
  %101 = load i32, ptr %max_bits, align 4
  br label %cond.end118

cond.false117:                                    ; preds = %cond.end112
  %102 = load i32, ptr %min_bits, align 4
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false117, %cond.true116
  %cond119 = phi i32 [ %101, %cond.true116 ], [ %102, %cond.false117 ]
  store i32 %cond119, ptr %max_bits, align 4
  %103 = load i32, ptr %max_bits, align 4
  %104 = load i32, ptr %min_bits, align 4
  %sub = sub nsw i32 %103, %104
  %div120 = sdiv i32 %sub, 4
  store i32 %div120, ptr %dbits, align 4
  %105 = load i32, ptr %max_bits, align 4
  %106 = load i32, ptr %min_bits, align 4
  %add121 = add nsw i32 %105, %106
  %div122 = sdiv i32 %add121, 2
  store i32 %div122, ptr %this_bits, align 4
  %107 = load i32, ptr %max_bits, align 4
  %add123 = add nsw i32 %107, 1
  store i32 %add123, ptr %real_bits, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end118
  %108 = load i32, ptr %this_bits, align 4
  %109 = load i32, ptr %min_bits, align 4
  %cmp124 = icmp sge i32 %108, %109
  %lnot = xor i1 %cmp124, true
  %lnot.ext = zext i1 %lnot to i32
  %conv126 = sext i32 %lnot.ext to i64
  %tobool127 = icmp ne i64 %conv126, 0
  br i1 %tobool127, label %cond.true128, label %cond.false129

cond.true128:                                     ; preds = %do.body
  call void @__assert_rtn(ptr noundef @__func__.VBR_iteration_loop, ptr noundef @.str, i32 noundef 400, ptr noundef @.str.1) #8
  unreachable

110:                                              ; No predecessors!
  br label %cond.end130

cond.false129:                                    ; preds = %do.body
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false129, %110
  %111 = load i32, ptr %this_bits, align 4
  %112 = load i32, ptr %max_bits, align 4
  %cmp131 = icmp sle i32 %111, %112
  %lnot133 = xor i1 %cmp131, true
  %lnot.ext134 = zext i1 %lnot133 to i32
  %conv135 = sext i32 %lnot.ext134 to i64
  %tobool136 = icmp ne i64 %conv135, 0
  br i1 %tobool136, label %cond.true137, label %cond.false138

cond.true137:                                     ; preds = %cond.end130
  call void @__assert_rtn(ptr noundef @__func__.VBR_iteration_loop, ptr noundef @.str, i32 noundef 401, ptr noundef @.str.2) #8
  unreachable

113:                                              ; No predecessors!
  br label %cond.end139

cond.false138:                                    ; preds = %cond.end130
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false138, %113
  %114 = load i32, ptr %this_bits, align 4
  %115 = load i32, ptr %real_bits, align 4
  %cmp140 = icmp sge i32 %114, %115
  br i1 %cmp140, label %if.then142, label %if.end145

if.then142:                                       ; preds = %cond.end139
  %116 = load i32, ptr %dbits, align 4
  %117 = load i32, ptr %this_bits, align 4
  %sub143 = sub nsw i32 %117, %116
  store i32 %sub143, ptr %this_bits, align 4
  %118 = load i32, ptr %dbits, align 4
  %div144 = sdiv i32 %118, 2
  store i32 %div144, ptr %dbits, align 4
  br label %do.cond

if.end145:                                        ; preds = %cond.end139
  %arrayidx146 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  store double 0.000000e+00, ptr %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 3
  store double 0.000000e+00, ptr %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 0
  %119 = load double, ptr %arrayidx150, align 8
  %cmp151 = fcmp ogt double 0.000000e+00, %119
  br i1 %cmp151, label %cond.true153, label %cond.false154

cond.true153:                                     ; preds = %if.end145
  br label %cond.end156

cond.false154:                                    ; preds = %if.end145
  %arrayidx155 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 0
  %120 = load double, ptr %arrayidx155, align 8
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false154, %cond.true153
  %cond157 = phi double [ 0.000000e+00, %cond.true153 ], [ %120, %cond.false154 ]
  %arrayidx158 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 0
  store double %cond157, ptr %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  %121 = load double, ptr %arrayidx159, align 8
  %cmp160 = fcmp ogt double 0.000000e+00, %121
  br i1 %cmp160, label %cond.true162, label %cond.false163

cond.true162:                                     ; preds = %cond.end156
  br label %cond.end165

cond.false163:                                    ; preds = %cond.end156
  %arrayidx164 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  %122 = load double, ptr %arrayidx164, align 8
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false163, %cond.true162
  %cond166 = phi double [ 0.000000e+00, %cond.true162 ], [ %122, %cond.false163 ]
  %arrayidx167 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  store double %cond166, ptr %arrayidx167, align 8
  %123 = load ptr, ptr %cod_info, align 8
  %124 = load ptr, ptr %cod_info, align 8
  %125 = call i64 @llvm.objectsize.i64.p0(ptr %124, i1 false, i1 true, i1 false)
  %call168 = call ptr @__memcpy_chk(ptr noundef %123, ptr noundef %clean_cod_info, i64 noundef 120, i64 noundef %125) #7
  %126 = load ptr, ptr %gfp.addr, align 8
  %VBR_q169 = getelementptr inbounds %struct.lame_global_flags, ptr %126, i32 0, i32 22
  %127 = load i32, ptr %VBR_q169, align 4
  %128 = load i32, ptr %this_bits, align 4
  call void @set_masking_lower(i32 noundef %127, i32 noundef %128)
  %129 = load ptr, ptr %gfp.addr, align 8
  %130 = load ptr, ptr %xr.addr, align 8
  %131 = load i32, ptr %gr, align 4
  %idxprom170 = sext i32 %131 to i64
  %arrayidx171 = getelementptr inbounds [2 x [576 x double]], ptr %130, i64 %idxprom170
  %132 = load i32, ptr %ch, align 4
  %idxprom172 = sext i32 %132 to i64
  %arrayidx173 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx171, i64 0, i64 %idxprom172
  %arraydecay174 = getelementptr inbounds [576 x double], ptr %arrayidx173, i64 0, i64 0
  %133 = load ptr, ptr %ratio.addr, align 8
  %134 = load i32, ptr %gr, align 4
  %idxprom175 = sext i32 %134 to i64
  %arrayidx176 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %133, i64 %idxprom175
  %135 = load i32, ptr %ch, align 4
  %idxprom177 = sext i32 %135 to i64
  %arrayidx178 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %arrayidx176, i64 0, i64 %idxprom177
  %136 = load ptr, ptr %cod_info, align 8
  %call179 = call i32 @calc_xmin(ptr noundef %129, ptr noundef %arraydecay174, ptr noundef %arrayidx178, ptr noundef %136, ptr noundef %l3_xmin)
  %137 = load ptr, ptr %gfp.addr, align 8
  %138 = load ptr, ptr %xr.addr, align 8
  %139 = load i32, ptr %gr, align 4
  %idxprom180 = sext i32 %139 to i64
  %arrayidx181 = getelementptr inbounds [2 x [576 x double]], ptr %138, i64 %idxprom180
  %140 = load i32, ptr %ch, align 4
  %idxprom182 = sext i32 %140 to i64
  %arrayidx183 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx181, i64 0, i64 %idxprom182
  %arraydecay184 = getelementptr inbounds [576 x double], ptr %arrayidx183, i64 0, i64 0
  %141 = load i32, ptr %this_bits, align 4
  %arraydecay185 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 0
  %142 = load ptr, ptr %l3_enc.addr, align 8
  %143 = load i32, ptr %gr, align 4
  %idxprom186 = sext i32 %143 to i64
  %arrayidx187 = getelementptr inbounds [2 x [576 x i32]], ptr %142, i64 %idxprom186
  %144 = load i32, ptr %ch, align 4
  %idxprom188 = sext i32 %144 to i64
  %arrayidx189 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx187, i64 0, i64 %idxprom188
  %arraydecay190 = getelementptr inbounds [576 x i32], ptr %arrayidx189, i64 0, i64 0
  %145 = load ptr, ptr %scalefac.addr, align 8
  %146 = load i32, ptr %gr, align 4
  %idxprom191 = sext i32 %146 to i64
  %arrayidx192 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %145, i64 %idxprom191
  %147 = load i32, ptr %ch, align 4
  %idxprom193 = sext i32 %147 to i64
  %arrayidx194 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx192, i64 0, i64 %idxprom193
  %148 = load ptr, ptr %cod_info, align 8
  %arraydecay195 = getelementptr inbounds [4 x [21 x double]], ptr %xfsf, i64 0, i64 0
  %149 = load i32, ptr %ch, align 4
  call void @outer_loop(ptr noundef %137, ptr noundef %arraydecay184, i32 noundef %141, ptr noundef %arraydecay185, ptr noundef %l3_xmin, ptr noundef %arraydecay190, ptr noundef %arrayidx194, ptr noundef %148, ptr noundef %arraydecay195, i32 noundef %149)
  %arrayidx196 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 0
  %150 = load double, ptr %arrayidx196, align 8
  %conv197 = fptosi double %150 to i32
  %arrayidx198 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 3
  %151 = load double, ptr %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  %152 = load double, ptr %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 1
  %153 = load double, ptr %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 0
  %154 = load double, ptr %arrayidx201, align 8
  %conv202 = fptosi double %154 to i32
  %arrayidx203 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 3
  %155 = load double, ptr %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 2
  %156 = load double, ptr %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 1
  %157 = load double, ptr %arrayidx205, align 8
  %call206 = call i32 @VBR_compare(i32 noundef %conv197, double noundef %151, double noundef %152, double noundef %153, i32 noundef %conv202, double noundef %155, double noundef %156, double noundef %157)
  store i32 %call206, ptr %better, align 4
  %158 = load i32, ptr %better, align 4
  %tobool207 = icmp ne i32 %158, 0
  br i1 %tobool207, label %if.then208, label %if.else

if.then208:                                       ; preds = %cond.end165
  %159 = load ptr, ptr %cod_info, align 8
  %part2_3_length = getelementptr inbounds %struct.gr_info, ptr %159, i32 0, i32 0
  %160 = load i32, ptr %part2_3_length, align 8
  store i32 %160, ptr %real_bits, align 4
  %161 = load ptr, ptr %scalefac.addr, align 8
  %162 = load i32, ptr %gr, align 4
  %idxprom209 = sext i32 %162 to i64
  %arrayidx210 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %161, i64 %idxprom209
  %163 = load i32, ptr %ch, align 4
  %idxprom211 = sext i32 %163 to i64
  %arrayidx212 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx210, i64 0, i64 %idxprom211
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %bst_scalefac, ptr align 4 %arrayidx212, i64 244, i1 false)
  %arraydecay213 = getelementptr inbounds [576 x i32], ptr %bst_l3_enc, i64 0, i64 0
  %164 = load ptr, ptr %l3_enc.addr, align 8
  %165 = load i32, ptr %gr, align 4
  %idxprom214 = sext i32 %165 to i64
  %arrayidx215 = getelementptr inbounds [2 x [576 x i32]], ptr %164, i64 %idxprom214
  %166 = load i32, ptr %ch, align 4
  %idxprom216 = sext i32 %166 to i64
  %arrayidx217 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx215, i64 0, i64 %idxprom216
  %arraydecay218 = getelementptr inbounds [576 x i32], ptr %arrayidx217, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay213, ptr align 4 %arraydecay218, i64 2304, i1 false)
  %167 = load ptr, ptr %cod_info, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %bst_cod_info, ptr align 8 %167, i64 120, i1 false)
  %168 = load i32, ptr %dbits, align 4
  %169 = load i32, ptr %this_bits, align 4
  %sub219 = sub nsw i32 %169, %168
  store i32 %sub219, ptr %this_bits, align 4
  br label %if.end221

if.else:                                          ; preds = %cond.end165
  %170 = load i32, ptr %dbits, align 4
  %171 = load i32, ptr %this_bits, align 4
  %add220 = add nsw i32 %171, %170
  store i32 %add220, ptr %this_bits, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else, %if.then208
  %172 = load i32, ptr %dbits, align 4
  %div222 = sdiv i32 %172, 2
  store i32 %div222, ptr %dbits, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end221, %if.then142
  %173 = load i32, ptr %dbits, align 4
  %cmp223 = icmp sgt i32 %173, 10
  br i1 %cmp223, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  %174 = load i32, ptr %real_bits, align 4
  %175 = load i32, ptr %max_bits, align 4
  %cmp225 = icmp sle i32 %174, %175
  br i1 %cmp225, label %if.then227, label %if.end250

if.then227:                                       ; preds = %do.end
  %176 = load ptr, ptr %cod_info, align 8
  %177 = load ptr, ptr %cod_info, align 8
  %178 = call i64 @llvm.objectsize.i64.p0(ptr %177, i1 false, i1 true, i1 false)
  %call228 = call ptr @__memcpy_chk(ptr noundef %176, ptr noundef %bst_cod_info, i64 noundef 120, i64 noundef %178) #7
  %179 = load ptr, ptr %scalefac.addr, align 8
  %180 = load i32, ptr %gr, align 4
  %idxprom229 = sext i32 %180 to i64
  %arrayidx230 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %179, i64 %idxprom229
  %181 = load i32, ptr %ch, align 4
  %idxprom231 = sext i32 %181 to i64
  %arrayidx232 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx230, i64 0, i64 %idxprom231
  %182 = load ptr, ptr %scalefac.addr, align 8
  %183 = load i32, ptr %gr, align 4
  %idxprom233 = sext i32 %183 to i64
  %arrayidx234 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %182, i64 %idxprom233
  %184 = load i32, ptr %ch, align 4
  %idxprom235 = sext i32 %184 to i64
  %arrayidx236 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx234, i64 0, i64 %idxprom235
  %185 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx236, i1 false, i1 true, i1 false)
  %call237 = call ptr @__memcpy_chk(ptr noundef %arrayidx232, ptr noundef %bst_scalefac, i64 noundef 244, i64 noundef %185) #7
  %186 = load ptr, ptr %l3_enc.addr, align 8
  %187 = load i32, ptr %gr, align 4
  %idxprom238 = sext i32 %187 to i64
  %arrayidx239 = getelementptr inbounds [2 x [576 x i32]], ptr %186, i64 %idxprom238
  %188 = load i32, ptr %ch, align 4
  %idxprom240 = sext i32 %188 to i64
  %arrayidx241 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx239, i64 0, i64 %idxprom240
  %arraydecay242 = getelementptr inbounds [576 x i32], ptr %arrayidx241, i64 0, i64 0
  %arraydecay243 = getelementptr inbounds [576 x i32], ptr %bst_l3_enc, i64 0, i64 0
  %189 = load ptr, ptr %l3_enc.addr, align 8
  %190 = load i32, ptr %gr, align 4
  %idxprom244 = sext i32 %190 to i64
  %arrayidx245 = getelementptr inbounds [2 x [576 x i32]], ptr %189, i64 %idxprom244
  %191 = load i32, ptr %ch, align 4
  %idxprom246 = sext i32 %191 to i64
  %arrayidx247 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx245, i64 0, i64 %idxprom246
  %arraydecay248 = getelementptr inbounds [576 x i32], ptr %arrayidx247, i64 0, i64 0
  %192 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay248, i1 false, i1 true, i1 false)
  %call249 = call ptr @__memcpy_chk(ptr noundef %arraydecay242, ptr noundef %arraydecay243, i64 noundef 2304, i64 noundef %192) #7
  br label %if.end250

if.end250:                                        ; preds = %if.then227, %do.end
  %193 = load ptr, ptr %cod_info, align 8
  %part2_3_length251 = getelementptr inbounds %struct.gr_info, ptr %193, i32 0, i32 0
  %194 = load i32, ptr %part2_3_length251, align 8
  %195 = load i32, ptr %max_bits, align 4
  %cmp252 = icmp sle i32 %194, %195
  %lnot254 = xor i1 %cmp252, true
  %lnot.ext255 = zext i1 %lnot254 to i32
  %conv256 = sext i32 %lnot.ext255 to i64
  %tobool257 = icmp ne i64 %conv256, 0
  br i1 %tobool257, label %cond.true258, label %cond.false259

cond.true258:                                     ; preds = %if.end250
  call void @__assert_rtn(ptr noundef @__func__.VBR_iteration_loop, ptr noundef @.str, i32 noundef 497, ptr noundef @.str.3) #8
  unreachable

196:                                              ; No predecessors!
  br label %cond.end260

cond.false259:                                    ; preds = %if.end250
  br label %cond.end260

cond.end260:                                      ; preds = %cond.false259, %196
  %197 = load ptr, ptr %cod_info, align 8
  %part2_3_length261 = getelementptr inbounds %struct.gr_info, ptr %197, i32 0, i32 0
  %198 = load i32, ptr %part2_3_length261, align 8
  %199 = load i32, ptr %gr, align 4
  %idxprom262 = sext i32 %199 to i64
  %arrayidx263 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom262
  %200 = load i32, ptr %ch, align 4
  %idxprom264 = sext i32 %200 to i64
  %arrayidx265 = getelementptr inbounds [2 x i32], ptr %arrayidx263, i64 0, i64 %idxprom264
  store i32 %198, ptr %arrayidx265, align 4
  %201 = load i32, ptr %gr, align 4
  %idxprom266 = sext i32 %201 to i64
  %arrayidx267 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom266
  %202 = load i32, ptr %ch, align 4
  %idxprom268 = sext i32 %202 to i64
  %arrayidx269 = getelementptr inbounds [2 x i32], ptr %arrayidx267, i64 0, i64 %idxprom268
  %203 = load i32, ptr %arrayidx269, align 4
  %204 = load i32, ptr %used_bits, align 4
  %add270 = add nsw i32 %204, %203
  store i32 %add270, ptr %used_bits, align 4
  br label %for.inc271

for.inc271:                                       ; preds = %cond.end260, %if.then39
  %205 = load i32, ptr %ch, align 4
  %inc272 = add nsw i32 %205, 1
  store i32 %inc272, ptr %ch, align 4
  br label %for.cond22, !llvm.loop !22

for.end273:                                       ; preds = %for.cond22
  br label %for.inc274

for.inc274:                                       ; preds = %for.end273
  %206 = load i32, ptr %gr, align 4
  %inc275 = add nsw i32 %206, 1
  store i32 %inc275, ptr %gr, align 4
  br label %for.cond8, !llvm.loop !23

for.end276:                                       ; preds = %for.cond8
  %207 = load i32, ptr @reduce_sidechannel, align 4
  %tobool277 = icmp ne i32 %207, 0
  br i1 %tobool277, label %if.then278, label %if.end323

if.then278:                                       ; preds = %for.end276
  store i32 0, ptr %gr, align 4
  br label %for.cond279

for.cond279:                                      ; preds = %for.inc320, %if.then278
  %208 = load i32, ptr %gr, align 4
  %209 = load ptr, ptr %gfp.addr, align 8
  %mode_gr280 = getelementptr inbounds %struct.lame_global_flags, ptr %209, i32 0, i32 45
  %210 = load i32, ptr %mode_gr280, align 8
  %cmp281 = icmp slt i32 %208, %210
  br i1 %cmp281, label %for.body283, label %for.end322

for.body283:                                      ; preds = %for.cond279
  %211 = load ptr, ptr %ms_ener_ratio.addr, align 8
  %212 = load i32, ptr %gr, align 4
  %idxprom284 = sext i32 %212 to i64
  %arrayidx285 = getelementptr inbounds double, ptr %211, i64 %idxprom284
  %213 = load double, ptr %arrayidx285, align 8
  %sub286 = fsub double 5.000000e-01, %213
  %mul287 = fmul double 3.300000e-01, %sub286
  %div288 = fdiv double %mul287, 5.000000e-01
  store double %div288, ptr %fac, align 8
  %214 = load double, ptr %fac, align 8
  %sub289 = fsub double 1.000000e+00, %214
  %215 = load double, ptr %fac, align 8
  %add290 = fadd double 1.000000e+00, %215
  %div291 = fdiv double %sub289, %add290
  %216 = load i32, ptr %gr, align 4
  %idxprom292 = sext i32 %216 to i64
  %arrayidx293 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom292
  %arrayidx294 = getelementptr inbounds [2 x i32], ptr %arrayidx293, i64 0, i64 0
  %217 = load i32, ptr %arrayidx294, align 4
  %conv295 = sitofp i32 %217 to double
  %mul296 = fmul double %div291, %conv295
  %conv297 = fptosi double %mul296 to i32
  %218 = load i32, ptr %gr, align 4
  %idxprom298 = sext i32 %218 to i64
  %arrayidx299 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom298
  %arrayidx300 = getelementptr inbounds [2 x i32], ptr %arrayidx299, i64 0, i64 1
  store i32 %conv297, ptr %arrayidx300, align 4
  %219 = load i32, ptr %gr, align 4
  %idxprom301 = sext i32 %219 to i64
  %arrayidx302 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom301
  %arrayidx303 = getelementptr inbounds [2 x i32], ptr %arrayidx302, i64 0, i64 1
  %220 = load i32, ptr %arrayidx303, align 4
  %cmp304 = icmp sgt i32 125, %220
  br i1 %cmp304, label %cond.true306, label %cond.false307

cond.true306:                                     ; preds = %for.body283
  br label %cond.end311

cond.false307:                                    ; preds = %for.body283
  %221 = load i32, ptr %gr, align 4
  %idxprom308 = sext i32 %221 to i64
  %arrayidx309 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom308
  %arrayidx310 = getelementptr inbounds [2 x i32], ptr %arrayidx309, i64 0, i64 1
  %222 = load i32, ptr %arrayidx310, align 4
  br label %cond.end311

cond.end311:                                      ; preds = %cond.false307, %cond.true306
  %cond312 = phi i32 [ 125, %cond.true306 ], [ %222, %cond.false307 ]
  %223 = load i32, ptr %gr, align 4
  %idxprom313 = sext i32 %223 to i64
  %arrayidx314 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom313
  %arrayidx315 = getelementptr inbounds [2 x i32], ptr %arrayidx314, i64 0, i64 1
  store i32 %cond312, ptr %arrayidx315, align 4
  %224 = load i32, ptr %gr, align 4
  %idxprom316 = sext i32 %224 to i64
  %arrayidx317 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom316
  %arrayidx318 = getelementptr inbounds [2 x i32], ptr %arrayidx317, i64 0, i64 1
  %225 = load i32, ptr %arrayidx318, align 4
  %226 = load i32, ptr %used_bits, align 4
  %add319 = add nsw i32 %226, %225
  store i32 %add319, ptr %used_bits, align 4
  br label %for.inc320

for.inc320:                                       ; preds = %cond.end311
  %227 = load i32, ptr %gr, align 4
  %inc321 = add nsw i32 %227, 1
  store i32 %inc321, ptr %gr, align 4
  br label %for.cond279, !llvm.loop !24

for.end322:                                       ; preds = %for.cond279
  br label %if.end323

if.end323:                                        ; preds = %for.end322, %for.end276
  %228 = load i32, ptr %analog_silence, align 4
  %tobool324 = icmp ne i32 %228, 0
  br i1 %tobool324, label %cond.true325, label %cond.false326

cond.true325:                                     ; preds = %if.end323
  br label %cond.end328

cond.false326:                                    ; preds = %if.end323
  %229 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate327 = getelementptr inbounds %struct.lame_global_flags, ptr %229, i32 0, i32 47
  %230 = load i32, ptr %VBR_min_bitrate327, align 8
  br label %cond.end328

cond.end328:                                      ; preds = %cond.false326, %cond.true325
  %cond329 = phi i32 [ 1, %cond.true325 ], [ %230, %cond.false326 ]
  %231 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index330 = getelementptr inbounds %struct.lame_global_flags, ptr %231, i32 0, i32 50
  store i32 %cond329, ptr %bitrate_index330, align 4
  br label %for.cond331

for.cond331:                                      ; preds = %for.inc344, %cond.end328
  %232 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index332 = getelementptr inbounds %struct.lame_global_flags, ptr %232, i32 0, i32 50
  %233 = load i32, ptr %bitrate_index332, align 4
  %234 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate333 = getelementptr inbounds %struct.lame_global_flags, ptr %234, i32 0, i32 48
  %235 = load i32, ptr %VBR_max_bitrate333, align 4
  %cmp334 = icmp slt i32 %233, %235
  br i1 %cmp334, label %for.body336, label %for.end347

for.body336:                                      ; preds = %for.cond331
  %236 = load i32, ptr %used_bits, align 4
  %237 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index337 = getelementptr inbounds %struct.lame_global_flags, ptr %237, i32 0, i32 50
  %238 = load i32, ptr %bitrate_index337, align 4
  %idxprom338 = sext i32 %238 to i64
  %arrayidx339 = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom338
  %239 = load i32, ptr %arrayidx339, align 4
  %cmp340 = icmp sle i32 %236, %239
  br i1 %cmp340, label %if.then342, label %if.end343

if.then342:                                       ; preds = %for.body336
  br label %for.end347

if.end343:                                        ; preds = %for.body336
  br label %for.inc344

for.inc344:                                       ; preds = %if.end343
  %240 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index345 = getelementptr inbounds %struct.lame_global_flags, ptr %240, i32 0, i32 50
  %241 = load i32, ptr %bitrate_index345, align 4
  %inc346 = add nsw i32 %241, 1
  store i32 %inc346, ptr %bitrate_index345, align 4
  br label %for.cond331, !llvm.loop !25

for.end347:                                       ; preds = %if.then342, %for.cond331
  %242 = load ptr, ptr %gfp.addr, align 8
  call void @getframebits(ptr noundef %242, ptr noundef %bitsPerFrame, ptr noundef %mean_bits)
  %243 = load ptr, ptr %gfp.addr, align 8
  %244 = load ptr, ptr %l3_side.addr, align 8
  %245 = load i32, ptr %mean_bits, align 4
  %246 = load i32, ptr %bitsPerFrame, align 4
  %call348 = call i32 @ResvFrameBegin(ptr noundef %243, ptr noundef %244, i32 noundef %245, i32 noundef %246)
  store i32 %call348, ptr %bits, align 4
  %247 = load i32, ptr %used_bits, align 4
  %248 = load i32, ptr %bits, align 4
  %cmp349 = icmp sgt i32 %247, %248
  br i1 %cmp349, label %if.then351, label %if.end402

if.then351:                                       ; preds = %for.end347
  store i32 1, ptr %reparted, align 4
  store i32 0, ptr %gr, align 4
  br label %for.cond352

for.cond352:                                      ; preds = %for.inc378, %if.then351
  %249 = load i32, ptr %gr, align 4
  %250 = load ptr, ptr %gfp.addr, align 8
  %mode_gr353 = getelementptr inbounds %struct.lame_global_flags, ptr %250, i32 0, i32 45
  %251 = load i32, ptr %mode_gr353, align 8
  %cmp354 = icmp slt i32 %249, %251
  br i1 %cmp354, label %for.body356, label %for.end380

for.body356:                                      ; preds = %for.cond352
  store i32 0, ptr %ch, align 4
  br label %for.cond357

for.cond357:                                      ; preds = %for.inc375, %for.body356
  %252 = load i32, ptr %ch, align 4
  %253 = load ptr, ptr %gfp.addr, align 8
  %stereo358 = getelementptr inbounds %struct.lame_global_flags, ptr %253, i32 0, i32 46
  %254 = load i32, ptr %stereo358, align 4
  %cmp359 = icmp slt i32 %252, %254
  br i1 %cmp359, label %for.body361, label %for.end377

for.body361:                                      ; preds = %for.cond357
  %255 = load i32, ptr %gr, align 4
  %idxprom362 = sext i32 %255 to i64
  %arrayidx363 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom362
  %256 = load i32, ptr %ch, align 4
  %idxprom364 = sext i32 %256 to i64
  %arrayidx365 = getelementptr inbounds [2 x i32], ptr %arrayidx363, i64 0, i64 %idxprom364
  %257 = load i32, ptr %arrayidx365, align 4
  %258 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index366 = getelementptr inbounds %struct.lame_global_flags, ptr %258, i32 0, i32 50
  %259 = load i32, ptr %bitrate_index366, align 4
  %idxprom367 = sext i32 %259 to i64
  %arrayidx368 = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom367
  %260 = load i32, ptr %arrayidx368, align 4
  %mul369 = mul nsw i32 %257, %260
  %261 = load i32, ptr %used_bits, align 4
  %div370 = sdiv i32 %mul369, %261
  %262 = load i32, ptr %gr, align 4
  %idxprom371 = sext i32 %262 to i64
  %arrayidx372 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom371
  %263 = load i32, ptr %ch, align 4
  %idxprom373 = sext i32 %263 to i64
  %arrayidx374 = getelementptr inbounds [2 x i32], ptr %arrayidx372, i64 0, i64 %idxprom373
  store i32 %div370, ptr %arrayidx374, align 4
  br label %for.inc375

for.inc375:                                       ; preds = %for.body361
  %264 = load i32, ptr %ch, align 4
  %inc376 = add nsw i32 %264, 1
  store i32 %inc376, ptr %ch, align 4
  br label %for.cond357, !llvm.loop !26

for.end377:                                       ; preds = %for.cond357
  br label %for.inc378

for.inc378:                                       ; preds = %for.end377
  %265 = load i32, ptr %gr, align 4
  %inc379 = add nsw i32 %265, 1
  store i32 %inc379, ptr %gr, align 4
  br label %for.cond352, !llvm.loop !27

for.end380:                                       ; preds = %for.cond352
  store i32 0, ptr %used_bits, align 4
  store i32 0, ptr %gr, align 4
  br label %for.cond381

for.cond381:                                      ; preds = %for.inc399, %for.end380
  %266 = load i32, ptr %gr, align 4
  %267 = load ptr, ptr %gfp.addr, align 8
  %mode_gr382 = getelementptr inbounds %struct.lame_global_flags, ptr %267, i32 0, i32 45
  %268 = load i32, ptr %mode_gr382, align 8
  %cmp383 = icmp slt i32 %266, %268
  br i1 %cmp383, label %for.body385, label %for.end401

for.body385:                                      ; preds = %for.cond381
  store i32 0, ptr %ch, align 4
  br label %for.cond386

for.cond386:                                      ; preds = %for.inc396, %for.body385
  %269 = load i32, ptr %ch, align 4
  %270 = load ptr, ptr %gfp.addr, align 8
  %stereo387 = getelementptr inbounds %struct.lame_global_flags, ptr %270, i32 0, i32 46
  %271 = load i32, ptr %stereo387, align 4
  %cmp388 = icmp slt i32 %269, %271
  br i1 %cmp388, label %for.body390, label %for.end398

for.body390:                                      ; preds = %for.cond386
  %272 = load i32, ptr %gr, align 4
  %idxprom391 = sext i32 %272 to i64
  %arrayidx392 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom391
  %273 = load i32, ptr %ch, align 4
  %idxprom393 = sext i32 %273 to i64
  %arrayidx394 = getelementptr inbounds [2 x i32], ptr %arrayidx392, i64 0, i64 %idxprom393
  %274 = load i32, ptr %arrayidx394, align 4
  %275 = load i32, ptr %used_bits, align 4
  %add395 = add nsw i32 %275, %274
  store i32 %add395, ptr %used_bits, align 4
  br label %for.inc396

for.inc396:                                       ; preds = %for.body390
  %276 = load i32, ptr %ch, align 4
  %inc397 = add nsw i32 %276, 1
  store i32 %inc397, ptr %ch, align 4
  br label %for.cond386, !llvm.loop !28

for.end398:                                       ; preds = %for.cond386
  br label %for.inc399

for.inc399:                                       ; preds = %for.end398
  %277 = load i32, ptr %gr, align 4
  %inc400 = add nsw i32 %277, 1
  store i32 %inc400, ptr %gr, align 4
  br label %for.cond381, !llvm.loop !29

for.end401:                                       ; preds = %for.cond381
  br label %if.end402

if.end402:                                        ; preds = %for.end401, %for.end347
  %278 = load i32, ptr %used_bits, align 4
  %279 = load i32, ptr %bits, align 4
  %cmp403 = icmp sle i32 %278, %279
  %lnot405 = xor i1 %cmp403, true
  %lnot.ext406 = zext i1 %lnot405 to i32
  %conv407 = sext i32 %lnot.ext406 to i64
  %tobool408 = icmp ne i64 %conv407, 0
  br i1 %tobool408, label %cond.true409, label %cond.false410

cond.true409:                                     ; preds = %if.end402
  call void @__assert_rtn(ptr noundef @__func__.VBR_iteration_loop, ptr noundef @.str, i32 noundef 552, ptr noundef @.str.4) #8
  unreachable

280:                                              ; No predecessors!
  br label %cond.end411

cond.false410:                                    ; preds = %if.end402
  br label %cond.end411

cond.end411:                                      ; preds = %cond.false410, %280
  store i32 0, ptr %gr, align 4
  br label %for.cond412

for.cond412:                                      ; preds = %for.inc507, %cond.end411
  %281 = load i32, ptr %gr, align 4
  %282 = load ptr, ptr %gfp.addr, align 8
  %mode_gr413 = getelementptr inbounds %struct.lame_global_flags, ptr %282, i32 0, i32 45
  %283 = load i32, ptr %mode_gr413, align 8
  %cmp414 = icmp slt i32 %281, %283
  br i1 %cmp414, label %for.body416, label %for.end509

for.body416:                                      ; preds = %for.cond412
  store i32 0, ptr %ch, align 4
  br label %for.cond417

for.cond417:                                      ; preds = %for.inc504, %for.body416
  %284 = load i32, ptr %ch, align 4
  %285 = load ptr, ptr %gfp.addr, align 8
  %stereo418 = getelementptr inbounds %struct.lame_global_flags, ptr %285, i32 0, i32 46
  %286 = load i32, ptr %stereo418, align 4
  %cmp419 = icmp slt i32 %284, %286
  br i1 %cmp419, label %for.body421, label %for.end506

for.body421:                                      ; preds = %for.cond417
  %287 = load i32, ptr %reparted, align 4
  %tobool422 = icmp ne i32 %287, 0
  br i1 %tobool422, label %if.then426, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body421
  %288 = load i32, ptr @reduce_sidechannel, align 4
  %tobool423 = icmp ne i32 %288, 0
  br i1 %tobool423, label %land.lhs.true, label %if.end503

land.lhs.true:                                    ; preds = %lor.lhs.false
  %289 = load i32, ptr %ch, align 4
  %cmp424 = icmp eq i32 %289, 1
  br i1 %cmp424, label %if.then426, label %if.end503

if.then426:                                       ; preds = %land.lhs.true, %for.body421
  %290 = load ptr, ptr %l3_side.addr, align 8
  %gr427 = getelementptr inbounds %struct.III_side_info_t, ptr %290, i32 0, i32 4
  %291 = load i32, ptr %gr, align 4
  %idxprom428 = sext i32 %291 to i64
  %arrayidx429 = getelementptr inbounds [2 x %struct.anon], ptr %gr427, i64 0, i64 %idxprom428
  %ch430 = getelementptr inbounds %struct.anon, ptr %arrayidx429, i32 0, i32 0
  %292 = load i32, ptr %ch, align 4
  %idxprom431 = sext i32 %292 to i64
  %arrayidx432 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch430, i64 0, i64 %idxprom431
  %tt433 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx432, i32 0, i32 0
  store ptr %tt433, ptr %cod_info, align 8
  %293 = load ptr, ptr %gfp.addr, align 8
  %294 = load ptr, ptr %xr.addr, align 8
  %295 = load i32, ptr %gr, align 4
  %idxprom434 = sext i32 %295 to i64
  %arrayidx435 = getelementptr inbounds [2 x [576 x double]], ptr %294, i64 %idxprom434
  %296 = load i32, ptr %ch, align 4
  %idxprom436 = sext i32 %296 to i64
  %arrayidx437 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx435, i64 0, i64 %idxprom436
  %arraydecay438 = getelementptr inbounds [576 x double], ptr %arrayidx437, i64 0, i64 0
  %297 = load ptr, ptr %cod_info, align 8
  %call439 = call i32 @init_outer_loop(ptr noundef %293, ptr noundef %arraydecay438, ptr noundef %297)
  %tobool440 = icmp ne i32 %call439, 0
  br i1 %tobool440, label %if.else466, label %if.then441

if.then441:                                       ; preds = %if.then426
  %298 = load ptr, ptr %scalefac.addr, align 8
  %299 = load i32, ptr %gr, align 4
  %idxprom442 = sext i32 %299 to i64
  %arrayidx443 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %298, i64 %idxprom442
  %300 = load i32, ptr %ch, align 4
  %idxprom444 = sext i32 %300 to i64
  %arrayidx445 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx443, i64 0, i64 %idxprom444
  %301 = load ptr, ptr %scalefac.addr, align 8
  %302 = load i32, ptr %gr, align 4
  %idxprom446 = sext i32 %302 to i64
  %arrayidx447 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %301, i64 %idxprom446
  %303 = load i32, ptr %ch, align 4
  %idxprom448 = sext i32 %303 to i64
  %arrayidx449 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx447, i64 0, i64 %idxprom448
  %304 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx449, i1 false, i1 true, i1 false)
  %call450 = call ptr @__memset_chk(ptr noundef %arrayidx445, i32 noundef 0, i64 noundef 244, i64 noundef %304) #7
  %305 = load ptr, ptr %l3_enc.addr, align 8
  %306 = load i32, ptr %gr, align 4
  %idxprom451 = sext i32 %306 to i64
  %arrayidx452 = getelementptr inbounds [2 x [576 x i32]], ptr %305, i64 %idxprom451
  %307 = load i32, ptr %ch, align 4
  %idxprom453 = sext i32 %307 to i64
  %arrayidx454 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx452, i64 0, i64 %idxprom453
  %arraydecay455 = getelementptr inbounds [576 x i32], ptr %arrayidx454, i64 0, i64 0
  %308 = load ptr, ptr %l3_enc.addr, align 8
  %309 = load i32, ptr %gr, align 4
  %idxprom456 = sext i32 %309 to i64
  %arrayidx457 = getelementptr inbounds [2 x [576 x i32]], ptr %308, i64 %idxprom456
  %310 = load i32, ptr %ch, align 4
  %idxprom458 = sext i32 %310 to i64
  %arrayidx459 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx457, i64 0, i64 %idxprom458
  %arraydecay460 = getelementptr inbounds [576 x i32], ptr %arrayidx459, i64 0, i64 0
  %311 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay460, i1 false, i1 true, i1 false)
  %call461 = call ptr @__memset_chk(ptr noundef %arraydecay455, i32 noundef 0, i64 noundef 2304, i64 noundef %311) #7
  %arrayidx462 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 3
  store double 0.000000e+00, ptr %arrayidx462, align 8
  %arrayidx463 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 2
  store double 0.000000e+00, ptr %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx464, align 8
  %arrayidx465 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx465, align 8
  br label %if.end502

if.else466:                                       ; preds = %if.then426
  %312 = load ptr, ptr %gfp.addr, align 8
  %VBR_q467 = getelementptr inbounds %struct.lame_global_flags, ptr %312, i32 0, i32 22
  %313 = load i32, ptr %VBR_q467, align 4
  %314 = load i32, ptr %gr, align 4
  %idxprom468 = sext i32 %314 to i64
  %arrayidx469 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom468
  %315 = load i32, ptr %ch, align 4
  %idxprom470 = sext i32 %315 to i64
  %arrayidx471 = getelementptr inbounds [2 x i32], ptr %arrayidx469, i64 0, i64 %idxprom470
  %316 = load i32, ptr %arrayidx471, align 4
  call void @set_masking_lower(i32 noundef %313, i32 noundef %316)
  %317 = load ptr, ptr %gfp.addr, align 8
  %318 = load ptr, ptr %xr.addr, align 8
  %319 = load i32, ptr %gr, align 4
  %idxprom472 = sext i32 %319 to i64
  %arrayidx473 = getelementptr inbounds [2 x [576 x double]], ptr %318, i64 %idxprom472
  %320 = load i32, ptr %ch, align 4
  %idxprom474 = sext i32 %320 to i64
  %arrayidx475 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx473, i64 0, i64 %idxprom474
  %arraydecay476 = getelementptr inbounds [576 x double], ptr %arrayidx475, i64 0, i64 0
  %321 = load ptr, ptr %ratio.addr, align 8
  %322 = load i32, ptr %gr, align 4
  %idxprom477 = sext i32 %322 to i64
  %arrayidx478 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %321, i64 %idxprom477
  %323 = load i32, ptr %ch, align 4
  %idxprom479 = sext i32 %323 to i64
  %arrayidx480 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %arrayidx478, i64 0, i64 %idxprom479
  %324 = load ptr, ptr %cod_info, align 8
  %call481 = call i32 @calc_xmin(ptr noundef %317, ptr noundef %arraydecay476, ptr noundef %arrayidx480, ptr noundef %324, ptr noundef %l3_xmin)
  %325 = load ptr, ptr %gfp.addr, align 8
  %326 = load ptr, ptr %xr.addr, align 8
  %327 = load i32, ptr %gr, align 4
  %idxprom482 = sext i32 %327 to i64
  %arrayidx483 = getelementptr inbounds [2 x [576 x double]], ptr %326, i64 %idxprom482
  %328 = load i32, ptr %ch, align 4
  %idxprom484 = sext i32 %328 to i64
  %arrayidx485 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx483, i64 0, i64 %idxprom484
  %arraydecay486 = getelementptr inbounds [576 x double], ptr %arrayidx485, i64 0, i64 0
  %329 = load i32, ptr %gr, align 4
  %idxprom487 = sext i32 %329 to i64
  %arrayidx488 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom487
  %330 = load i32, ptr %ch, align 4
  %idxprom489 = sext i32 %330 to i64
  %arrayidx490 = getelementptr inbounds [2 x i32], ptr %arrayidx488, i64 0, i64 %idxprom489
  %331 = load i32, ptr %arrayidx490, align 4
  %arraydecay491 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 0
  %332 = load ptr, ptr %l3_enc.addr, align 8
  %333 = load i32, ptr %gr, align 4
  %idxprom492 = sext i32 %333 to i64
  %arrayidx493 = getelementptr inbounds [2 x [576 x i32]], ptr %332, i64 %idxprom492
  %334 = load i32, ptr %ch, align 4
  %idxprom494 = sext i32 %334 to i64
  %arrayidx495 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx493, i64 0, i64 %idxprom494
  %arraydecay496 = getelementptr inbounds [576 x i32], ptr %arrayidx495, i64 0, i64 0
  %335 = load ptr, ptr %scalefac.addr, align 8
  %336 = load i32, ptr %gr, align 4
  %idxprom497 = sext i32 %336 to i64
  %arrayidx498 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %335, i64 %idxprom497
  %337 = load i32, ptr %ch, align 4
  %idxprom499 = sext i32 %337 to i64
  %arrayidx500 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx498, i64 0, i64 %idxprom499
  %338 = load ptr, ptr %cod_info, align 8
  %arraydecay501 = getelementptr inbounds [4 x [21 x double]], ptr %xfsf, i64 0, i64 0
  %339 = load i32, ptr %ch, align 4
  call void @outer_loop(ptr noundef %325, ptr noundef %arraydecay486, i32 noundef %331, ptr noundef %arraydecay491, ptr noundef %l3_xmin, ptr noundef %arraydecay496, ptr noundef %arrayidx500, ptr noundef %338, ptr noundef %arraydecay501, i32 noundef %339)
  br label %if.end502

if.end502:                                        ; preds = %if.else466, %if.then441
  br label %if.end503

if.end503:                                        ; preds = %if.end502, %land.lhs.true, %lor.lhs.false
  br label %for.inc504

for.inc504:                                       ; preds = %if.end503
  %340 = load i32, ptr %ch, align 4
  %inc505 = add nsw i32 %340, 1
  store i32 %inc505, ptr %ch, align 4
  br label %for.cond417, !llvm.loop !30

for.end506:                                       ; preds = %for.cond417
  br label %for.inc507

for.inc507:                                       ; preds = %for.end506
  %341 = load i32, ptr %gr, align 4
  %inc508 = add nsw i32 %341, 1
  store i32 %inc508, ptr %gr, align 4
  br label %for.cond412, !llvm.loop !31

for.end509:                                       ; preds = %for.cond412
  store i32 0, ptr %gr, align 4
  br label %for.cond510

for.cond510:                                      ; preds = %for.inc540, %for.end509
  %342 = load i32, ptr %gr, align 4
  %343 = load ptr, ptr %gfp.addr, align 8
  %mode_gr511 = getelementptr inbounds %struct.lame_global_flags, ptr %343, i32 0, i32 45
  %344 = load i32, ptr %mode_gr511, align 8
  %cmp512 = icmp slt i32 %342, %344
  br i1 %cmp512, label %for.body514, label %for.end542

for.body514:                                      ; preds = %for.cond510
  store i32 0, ptr %ch, align 4
  br label %for.cond515

for.cond515:                                      ; preds = %for.inc537, %for.body514
  %345 = load i32, ptr %ch, align 4
  %346 = load ptr, ptr %gfp.addr, align 8
  %stereo516 = getelementptr inbounds %struct.lame_global_flags, ptr %346, i32 0, i32 46
  %347 = load i32, ptr %stereo516, align 4
  %cmp517 = icmp slt i32 %345, %347
  br i1 %cmp517, label %for.body519, label %for.end539

for.body519:                                      ; preds = %for.cond515
  %348 = load ptr, ptr %l3_side.addr, align 8
  %gr520 = getelementptr inbounds %struct.III_side_info_t, ptr %348, i32 0, i32 4
  %349 = load i32, ptr %gr, align 4
  %idxprom521 = sext i32 %349 to i64
  %arrayidx522 = getelementptr inbounds [2 x %struct.anon], ptr %gr520, i64 0, i64 %idxprom521
  %ch523 = getelementptr inbounds %struct.anon, ptr %arrayidx522, i32 0, i32 0
  %350 = load i32, ptr %ch, align 4
  %idxprom524 = sext i32 %350 to i64
  %arrayidx525 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch523, i64 0, i64 %idxprom524
  %tt526 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx525, i32 0, i32 0
  store ptr %tt526, ptr %cod_info, align 8
  %351 = load ptr, ptr %gfp.addr, align 8
  %352 = load i32, ptr %gr, align 4
  %353 = load i32, ptr %ch, align 4
  %354 = load ptr, ptr %l3_enc.addr, align 8
  %355 = load ptr, ptr %l3_side.addr, align 8
  %356 = load ptr, ptr %scalefac.addr, align 8
  call void @best_scalefac_store(ptr noundef %351, i32 noundef %352, i32 noundef %353, ptr noundef %354, ptr noundef %355, ptr noundef %356)
  %357 = load ptr, ptr %cod_info, align 8
  %block_type527 = getelementptr inbounds %struct.gr_info, ptr %357, i32 0, i32 6
  %358 = load i32, ptr %block_type527, align 8
  %cmp528 = icmp eq i32 %358, 0
  br i1 %cmp528, label %if.then530, label %if.end536

if.then530:                                       ; preds = %for.body519
  %359 = load i32, ptr %gr, align 4
  %360 = load i32, ptr %ch, align 4
  %361 = load ptr, ptr %cod_info, align 8
  %362 = load ptr, ptr %l3_enc.addr, align 8
  %363 = load i32, ptr %gr, align 4
  %idxprom531 = sext i32 %363 to i64
  %arrayidx532 = getelementptr inbounds [2 x [576 x i32]], ptr %362, i64 %idxprom531
  %364 = load i32, ptr %ch, align 4
  %idxprom533 = sext i32 %364 to i64
  %arrayidx534 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx532, i64 0, i64 %idxprom533
  %arraydecay535 = getelementptr inbounds [576 x i32], ptr %arrayidx534, i64 0, i64 0
  call void @best_huffman_divide(i32 noundef %359, i32 noundef %360, ptr noundef %361, ptr noundef %arraydecay535)
  br label %if.end536

if.end536:                                        ; preds = %if.then530, %for.body519
  %365 = load ptr, ptr %gfp.addr, align 8
  %366 = load ptr, ptr %cod_info, align 8
  %367 = load ptr, ptr %l3_side.addr, align 8
  %368 = load i32, ptr %mean_bits, align 4
  call void @ResvAdjust(ptr noundef %365, ptr noundef %366, ptr noundef %367, i32 noundef %368)
  br label %for.inc537

for.inc537:                                       ; preds = %if.end536
  %369 = load i32, ptr %ch, align 4
  %inc538 = add nsw i32 %369, 1
  store i32 %inc538, ptr %ch, align 4
  br label %for.cond515, !llvm.loop !32

for.end539:                                       ; preds = %for.cond515
  br label %for.inc540

for.inc540:                                       ; preds = %for.end539
  %370 = load i32, ptr %gr, align 4
  %inc541 = add nsw i32 %370, 1
  store i32 %inc541, ptr %gr, align 4
  br label %for.cond510, !llvm.loop !33

for.end542:                                       ; preds = %for.cond510
  store i32 0, ptr %gr, align 4
  br label %for.cond543

for.cond543:                                      ; preds = %for.inc580, %for.end542
  %371 = load i32, ptr %gr, align 4
  %372 = load ptr, ptr %gfp.addr, align 8
  %mode_gr544 = getelementptr inbounds %struct.lame_global_flags, ptr %372, i32 0, i32 45
  %373 = load i32, ptr %mode_gr544, align 8
  %cmp545 = icmp slt i32 %371, %373
  br i1 %cmp545, label %for.body547, label %for.end582

for.body547:                                      ; preds = %for.cond543
  store i32 0, ptr %ch, align 4
  br label %for.cond548

for.cond548:                                      ; preds = %for.inc577, %for.body547
  %374 = load i32, ptr %ch, align 4
  %375 = load ptr, ptr %gfp.addr, align 8
  %stereo549 = getelementptr inbounds %struct.lame_global_flags, ptr %375, i32 0, i32 46
  %376 = load i32, ptr %stereo549, align 4
  %cmp550 = icmp slt i32 %374, %376
  br i1 %cmp550, label %for.body552, label %for.end579

for.body552:                                      ; preds = %for.cond548
  store i32 0, ptr %i, align 4
  br label %for.cond553

for.cond553:                                      ; preds = %for.inc574, %for.body552
  %377 = load i32, ptr %i, align 4
  %cmp554 = icmp slt i32 %377, 576
  br i1 %cmp554, label %for.body556, label %for.end576

for.body556:                                      ; preds = %for.cond553
  %378 = load ptr, ptr %xr.addr, align 8
  %379 = load i32, ptr %gr, align 4
  %idxprom557 = sext i32 %379 to i64
  %arrayidx558 = getelementptr inbounds [2 x [576 x double]], ptr %378, i64 %idxprom557
  %380 = load i32, ptr %ch, align 4
  %idxprom559 = sext i32 %380 to i64
  %arrayidx560 = getelementptr inbounds [2 x [576 x double]], ptr %arrayidx558, i64 0, i64 %idxprom559
  %381 = load i32, ptr %i, align 4
  %idxprom561 = sext i32 %381 to i64
  %arrayidx562 = getelementptr inbounds [576 x double], ptr %arrayidx560, i64 0, i64 %idxprom561
  %382 = load double, ptr %arrayidx562, align 8
  %cmp563 = fcmp olt double %382, 0.000000e+00
  br i1 %cmp563, label %if.then565, label %if.end573

if.then565:                                       ; preds = %for.body556
  %383 = load ptr, ptr %l3_enc.addr, align 8
  %384 = load i32, ptr %gr, align 4
  %idxprom566 = sext i32 %384 to i64
  %arrayidx567 = getelementptr inbounds [2 x [576 x i32]], ptr %383, i64 %idxprom566
  %385 = load i32, ptr %ch, align 4
  %idxprom568 = sext i32 %385 to i64
  %arrayidx569 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx567, i64 0, i64 %idxprom568
  %386 = load i32, ptr %i, align 4
  %idxprom570 = sext i32 %386 to i64
  %arrayidx571 = getelementptr inbounds [576 x i32], ptr %arrayidx569, i64 0, i64 %idxprom570
  %387 = load i32, ptr %arrayidx571, align 4
  %mul572 = mul nsw i32 %387, -1
  store i32 %mul572, ptr %arrayidx571, align 4
  br label %if.end573

if.end573:                                        ; preds = %if.then565, %for.body556
  br label %for.inc574

for.inc574:                                       ; preds = %if.end573
  %388 = load i32, ptr %i, align 4
  %inc575 = add nsw i32 %388, 1
  store i32 %inc575, ptr %i, align 4
  br label %for.cond553, !llvm.loop !34

for.end576:                                       ; preds = %for.cond553
  br label %for.inc577

for.inc577:                                       ; preds = %for.end576
  %389 = load i32, ptr %ch, align 4
  %inc578 = add nsw i32 %389, 1
  store i32 %inc578, ptr %ch, align 4
  br label %for.cond548, !llvm.loop !35

for.end579:                                       ; preds = %for.cond548
  br label %for.inc580

for.inc580:                                       ; preds = %for.end579
  %390 = load i32, ptr %gr, align 4
  %inc581 = add nsw i32 %390, 1
  store i32 %inc581, ptr %gr, align 4
  br label %for.cond543, !llvm.loop !36

for.end582:                                       ; preds = %for.cond543
  %391 = load ptr, ptr %gfp.addr, align 8
  %392 = load ptr, ptr %l3_side.addr, align 8
  %393 = load i32, ptr %mean_bits, align 4
  call void @ResvFrameEnd(ptr noundef %391, ptr noundef %392, i32 noundef %393)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @VBR_compare(i32 noundef %best_over, double noundef %best_tot_noise, double noundef %best_over_noise, double noundef %best_max_noise, i32 noundef %over, double noundef %tot_noise, double noundef %over_noise, double noundef %max_noise) #0 {
entry:
  %best_over.addr = alloca i32, align 4
  %best_tot_noise.addr = alloca double, align 8
  %best_over_noise.addr = alloca double, align 8
  %best_max_noise.addr = alloca double, align 8
  %over.addr = alloca i32, align 4
  %tot_noise.addr = alloca double, align 8
  %over_noise.addr = alloca double, align 8
  %max_noise.addr = alloca double, align 8
  %better = alloca i32, align 4
  store i32 %best_over, ptr %best_over.addr, align 4
  store double %best_tot_noise, ptr %best_tot_noise.addr, align 8
  store double %best_over_noise, ptr %best_over_noise.addr, align 8
  store double %best_max_noise, ptr %best_max_noise.addr, align 8
  store i32 %over, ptr %over.addr, align 4
  store double %tot_noise, ptr %tot_noise.addr, align 8
  store double %over_noise, ptr %over_noise.addr, align 8
  store double %max_noise, ptr %max_noise.addr, align 8
  store i32 0, ptr %better, align 4
  %0 = load i32, ptr %over.addr, align 4
  %1 = load i32, ptr %best_over.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load double, ptr %over_noise.addr, align 8
  %3 = load double, ptr %best_over_noise.addr, align 8
  %cmp1 = fcmp ole double %2, %3
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load double, ptr %tot_noise.addr, align 8
  %5 = load double, ptr %best_tot_noise.addr, align 8
  %cmp3 = fcmp ole double %4, %5
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %6 = load double, ptr %max_noise.addr, align 8
  %7 = load double, ptr %best_max_noise.addr, align 8
  %cmp4 = fcmp ole double %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, ptr %better, align 4
  %9 = load i32, ptr %better, align 4
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #3

declare i32 @bin_search_StepSize2(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @inner_loop(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @calc_noise1(ptr noundef %xr, ptr noundef %ix, ptr noundef %cod_info, ptr noundef %xfsf, ptr noundef %distort, ptr noundef %l3_xmin, ptr noundef %scalefac, ptr noundef %over_noise, ptr noundef %tot_noise, ptr noundef %max_noise) #0 {
entry:
  %xr.addr = alloca ptr, align 8
  %ix.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %xfsf.addr = alloca ptr, align 8
  %distort.addr = alloca ptr, align 8
  %l3_xmin.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %over_noise.addr = alloca ptr, align 8
  %tot_noise.addr = alloca ptr, align 8
  %max_noise.addr = alloca ptr, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %over = alloca i32, align 4
  %sfb = alloca i32, align 4
  %sum = alloca double, align 8
  %step = alloca double, align 8
  %bw = alloca double, align 8
  %count = alloca i32, align 4
  %noise = alloca double, align 8
  %step1 = alloca double, align 8
  %s = alloca i32, align 4
  %temp = alloca double, align 8
  %s86 = alloca i32, align 4
  %temp132 = alloca double, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store ptr %xfsf, ptr %xfsf.addr, align 8
  store ptr %distort, ptr %distort.addr, align 8
  store ptr %l3_xmin, ptr %l3_xmin.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr %over_noise, ptr %over_noise.addr, align 8
  store ptr %tot_noise, ptr %tot_noise.addr, align 8
  store ptr %max_noise, ptr %max_noise.addr, align 8
  store i32 0, ptr %over, align 4
  store i32 0, ptr %count, align 4
  %0 = load ptr, ptr %over_noise.addr, align 8
  store double 0.000000e+00, ptr %0, align 8
  %1 = load ptr, ptr %tot_noise.addr, align 8
  store double 0.000000e+00, ptr %1, align 8
  %2 = load ptr, ptr %max_noise.addr, align 8
  store double -9.990000e+02, ptr %2, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc75, %entry
  %3 = load i32, ptr %sfb, align 4
  %4 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %4, i32 0, i32 16
  %5 = load i32, ptr %sfb_lmax, align 8
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %scalefac.addr, align 8
  %l2 = getelementptr inbounds %struct.III_scalefac_t, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %sfb, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [22 x i32], ptr %l2, i64 0, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  store i32 %8, ptr %s, align 4
  %9 = load ptr, ptr %cod_info.addr, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %9, i32 0, i32 12
  %10 = load i32, ptr %preflag, align 8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %sfb, align 4
  %idxprom3 = zext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom3
  %12 = load i32, ptr %arrayidx4, align 4
  %13 = load i32, ptr %s, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, ptr %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %global_gain, align 4
  %16 = load i32, ptr %s, align 4
  %17 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %17, i32 0, i32 13
  %18 = load i32, ptr %scalefac_scale, align 4
  %add5 = add i32 %18, 1
  %shl = shl i32 %16, %add5
  %sub = sub i32 %15, %shl
  store i32 %sub, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %cmp6 = icmp slt i32 %19, 256
  %lnot = xor i1 %cmp6, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool7 = icmp ne i64 %conv, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.calc_noise1, ptr noundef @.str, i32 noundef 945, ptr noundef @.str.7) #8
  unreachable

20:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %20
  %21 = load i32, ptr %s, align 4
  %cmp8 = icmp sge i32 %21, 0
  %lnot10 = xor i1 %cmp8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %tobool13 = icmp ne i64 %conv12, 0
  br i1 %tobool13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.calc_noise1, ptr noundef @.str, i32 noundef 946, ptr noundef @.str.8) #8
  unreachable

22:                                               ; No predecessors!
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %22
  %23 = load i32, ptr %s, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %idxprom17
  %24 = load double, ptr %arrayidx18, align 8
  store double %24, ptr %step1, align 8
  %25 = load i32, ptr %sfb, align 4
  %idxprom19 = zext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom19
  %26 = load i32, ptr %arrayidx20, align 4
  store i32 %26, ptr %start, align 4
  %27 = load i32, ptr %sfb, align 4
  %add21 = add i32 %27, 1
  %idxprom22 = zext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom22
  %28 = load i32, ptr %arrayidx23, align 4
  store i32 %28, ptr %end, align 4
  %29 = load i32, ptr %end, align 4
  %30 = load i32, ptr %start, align 4
  %sub24 = sub nsw i32 %29, %30
  %conv25 = sitofp i32 %sub24 to double
  store double %conv25, ptr %bw, align 8
  store double 0.000000e+00, ptr %sum, align 8
  %31 = load i32, ptr %start, align 4
  store i32 %31, ptr %l, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %cond.end16
  %32 = load i32, ptr %l, align 4
  %33 = load i32, ptr %end, align 4
  %cmp27 = icmp slt i32 %32, %33
  br i1 %cmp27, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26
  %34 = load ptr, ptr %xr.addr, align 8
  %35 = load i32, ptr %l, align 4
  %idxprom30 = sext i32 %35 to i64
  %arrayidx31 = getelementptr inbounds double, ptr %34, i64 %idxprom30
  %36 = load double, ptr %arrayidx31, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = load ptr, ptr %ix.addr, align 8
  %39 = load i32, ptr %l, align 4
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %38, i64 %idxprom32
  %40 = load i32, ptr %arrayidx33, align 4
  %idxprom34 = sext i32 %40 to i64
  %arrayidx35 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom34
  %41 = load double, ptr %arrayidx35, align 8
  %42 = load double, ptr %step1, align 8
  %neg = fneg double %41
  %43 = call double @llvm.fmuladd.f64(double %neg, double %42, double %37)
  store double %43, ptr %temp, align 8
  %44 = load double, ptr %temp, align 8
  %45 = load double, ptr %temp, align 8
  %46 = load double, ptr %sum, align 8
  %47 = call double @llvm.fmuladd.f64(double %44, double %45, double %46)
  store double %47, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body29
  %48 = load i32, ptr %l, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %l, align 4
  br label %for.cond26, !llvm.loop !37

for.end:                                          ; preds = %for.cond26
  %49 = load double, ptr %sum, align 8
  %50 = load double, ptr %bw, align 8
  %div = fdiv double %49, %50
  %51 = load ptr, ptr %xfsf.addr, align 8
  %arrayidx36 = getelementptr inbounds [21 x double], ptr %51, i64 0
  %52 = load i32, ptr %sfb, align 4
  %idxprom37 = zext i32 %52 to i64
  %arrayidx38 = getelementptr inbounds [21 x double], ptr %arrayidx36, i64 0, i64 %idxprom37
  store double %div, ptr %arrayidx38, align 8
  %53 = load ptr, ptr %xfsf.addr, align 8
  %arrayidx39 = getelementptr inbounds [21 x double], ptr %53, i64 0
  %54 = load i32, ptr %sfb, align 4
  %idxprom40 = zext i32 %54 to i64
  %arrayidx41 = getelementptr inbounds [21 x double], ptr %arrayidx39, i64 0, i64 %idxprom40
  %55 = load double, ptr %arrayidx41, align 8
  %56 = load ptr, ptr %l3_xmin.addr, align 8
  %l42 = getelementptr inbounds %struct.III_psy_xmin, ptr %56, i32 0, i32 0
  %57 = load i32, ptr %sfb, align 4
  %idxprom43 = zext i32 %57 to i64
  %arrayidx44 = getelementptr inbounds [22 x double], ptr %l42, i64 0, i64 %idxprom43
  %58 = load double, ptr %arrayidx44, align 8
  %div45 = fdiv double %55, %58
  %cmp46 = fcmp ogt double 1.000000e-03, %div45
  br i1 %cmp46, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %for.end
  br label %cond.end57

cond.false49:                                     ; preds = %for.end
  %59 = load ptr, ptr %xfsf.addr, align 8
  %arrayidx50 = getelementptr inbounds [21 x double], ptr %59, i64 0
  %60 = load i32, ptr %sfb, align 4
  %idxprom51 = zext i32 %60 to i64
  %arrayidx52 = getelementptr inbounds [21 x double], ptr %arrayidx50, i64 0, i64 %idxprom51
  %61 = load double, ptr %arrayidx52, align 8
  %62 = load ptr, ptr %l3_xmin.addr, align 8
  %l53 = getelementptr inbounds %struct.III_psy_xmin, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %sfb, align 4
  %idxprom54 = zext i32 %63 to i64
  %arrayidx55 = getelementptr inbounds [22 x double], ptr %l53, i64 0, i64 %idxprom54
  %64 = load double, ptr %arrayidx55, align 8
  %div56 = fdiv double %61, %64
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false49, %cond.true48
  %cond = phi double [ 1.000000e-03, %cond.true48 ], [ %div56, %cond.false49 ]
  %65 = call double @llvm.log10.f64(double %cond)
  %mul = fmul double 1.000000e+01, %65
  store double %mul, ptr %noise, align 8
  %66 = load double, ptr %noise, align 8
  %67 = load ptr, ptr %distort.addr, align 8
  %arrayidx58 = getelementptr inbounds [21 x double], ptr %67, i64 0
  %68 = load i32, ptr %sfb, align 4
  %idxprom59 = zext i32 %68 to i64
  %arrayidx60 = getelementptr inbounds [21 x double], ptr %arrayidx58, i64 0, i64 %idxprom59
  store double %66, ptr %arrayidx60, align 8
  %69 = load double, ptr %noise, align 8
  %cmp61 = fcmp ogt double %69, 0.000000e+00
  br i1 %cmp61, label %if.then63, label %if.end66

if.then63:                                        ; preds = %cond.end57
  %70 = load i32, ptr %over, align 4
  %inc64 = add nsw i32 %70, 1
  store i32 %inc64, ptr %over, align 4
  %71 = load double, ptr %noise, align 8
  %72 = load ptr, ptr %over_noise.addr, align 8
  %73 = load double, ptr %72, align 8
  %add65 = fadd double %73, %71
  store double %add65, ptr %72, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %cond.end57
  %74 = load double, ptr %noise, align 8
  %75 = load ptr, ptr %tot_noise.addr, align 8
  %76 = load double, ptr %75, align 8
  %add67 = fadd double %76, %74
  store double %add67, ptr %75, align 8
  %77 = load ptr, ptr %max_noise.addr, align 8
  %78 = load double, ptr %77, align 8
  %79 = load double, ptr %noise, align 8
  %cmp68 = fcmp ogt double %78, %79
  br i1 %cmp68, label %cond.true70, label %cond.false71

cond.true70:                                      ; preds = %if.end66
  %80 = load ptr, ptr %max_noise.addr, align 8
  %81 = load double, ptr %80, align 8
  br label %cond.end72

cond.false71:                                     ; preds = %if.end66
  %82 = load double, ptr %noise, align 8
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false71, %cond.true70
  %cond73 = phi double [ %81, %cond.true70 ], [ %82, %cond.false71 ]
  %83 = load ptr, ptr %max_noise.addr, align 8
  store double %cond73, ptr %83, align 8
  %84 = load i32, ptr %count, align 4
  %inc74 = add nsw i32 %84, 1
  store i32 %inc74, ptr %count, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %cond.end72
  %85 = load i32, ptr %sfb, align 4
  %inc76 = add i32 %85, 1
  store i32 %inc76, ptr %sfb, align 4
  br label %for.cond, !llvm.loop !38

for.end77:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc206, %for.end77
  %86 = load i32, ptr %i, align 4
  %cmp79 = icmp slt i32 %86, 3
  br i1 %cmp79, label %for.body81, label %for.end208

for.body81:                                       ; preds = %for.cond78
  %87 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %87, i32 0, i32 17
  %88 = load i32, ptr %sfb_smax, align 4
  store i32 %88, ptr %sfb, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc203, %for.body81
  %89 = load i32, ptr %sfb, align 4
  %cmp83 = icmp ult i32 %89, 12
  br i1 %cmp83, label %for.body85, label %for.end205

for.body85:                                       ; preds = %for.cond82
  %90 = load ptr, ptr %scalefac.addr, align 8
  %s87 = getelementptr inbounds %struct.III_scalefac_t, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %sfb, align 4
  %idxprom88 = zext i32 %91 to i64
  %arrayidx89 = getelementptr inbounds [13 x [3 x i32]], ptr %s87, i64 0, i64 %idxprom88
  %92 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %92 to i64
  %arrayidx91 = getelementptr inbounds [3 x i32], ptr %arrayidx89, i64 0, i64 %idxprom90
  %93 = load i32, ptr %arrayidx91, align 4
  %94 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale92 = getelementptr inbounds %struct.gr_info, ptr %94, i32 0, i32 13
  %95 = load i32, ptr %scalefac_scale92, align 4
  %add93 = add i32 %95, 1
  %shl94 = shl i32 %93, %add93
  %96 = load ptr, ptr %cod_info.addr, align 8
  %subblock_gain = getelementptr inbounds %struct.gr_info, ptr %96, i32 0, i32 9
  %97 = load i32, ptr %i, align 4
  %idxprom95 = sext i32 %97 to i64
  %arrayidx96 = getelementptr inbounds [3 x i32], ptr %subblock_gain, i64 0, i64 %idxprom95
  %98 = load i32, ptr %arrayidx96, align 4
  %mul97 = mul nsw i32 %98, 8
  %add98 = add nsw i32 %shl94, %mul97
  store i32 %add98, ptr %s86, align 4
  %99 = load ptr, ptr %cod_info.addr, align 8
  %global_gain99 = getelementptr inbounds %struct.gr_info, ptr %99, i32 0, i32 3
  %100 = load i32, ptr %global_gain99, align 4
  %101 = load i32, ptr %s86, align 4
  %sub100 = sub i32 %100, %101
  store i32 %sub100, ptr %s86, align 4
  %102 = load i32, ptr %s86, align 4
  %cmp101 = icmp slt i32 %102, 256
  %lnot103 = xor i1 %cmp101, true
  %lnot.ext104 = zext i1 %lnot103 to i32
  %conv105 = sext i32 %lnot.ext104 to i64
  %tobool106 = icmp ne i64 %conv105, 0
  br i1 %tobool106, label %cond.true107, label %cond.false108

cond.true107:                                     ; preds = %for.body85
  call void @__assert_rtn(ptr noundef @__func__.calc_noise1, ptr noundef @.str, i32 noundef 1000, ptr noundef @.str.7) #8
  unreachable

103:                                              ; No predecessors!
  br label %cond.end109

cond.false108:                                    ; preds = %for.body85
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false108, %103
  %104 = load i32, ptr %s86, align 4
  %cmp110 = icmp sge i32 %104, 0
  %lnot112 = xor i1 %cmp110, true
  %lnot.ext113 = zext i1 %lnot112 to i32
  %conv114 = sext i32 %lnot.ext113 to i64
  %tobool115 = icmp ne i64 %conv114, 0
  br i1 %tobool115, label %cond.true116, label %cond.false117

cond.true116:                                     ; preds = %cond.end109
  call void @__assert_rtn(ptr noundef @__func__.calc_noise1, ptr noundef @.str, i32 noundef 1001, ptr noundef @.str.8) #8
  unreachable

105:                                              ; No predecessors!
  br label %cond.end118

cond.false117:                                    ; preds = %cond.end109
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false117, %105
  %106 = load i32, ptr %s86, align 4
  %idxprom119 = sext i32 %106 to i64
  %arrayidx120 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %idxprom119
  %107 = load double, ptr %arrayidx120, align 8
  store double %107, ptr %step, align 8
  %108 = load i32, ptr %sfb, align 4
  %idxprom121 = zext i32 %108 to i64
  %arrayidx122 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom121
  %109 = load i32, ptr %arrayidx122, align 4
  store i32 %109, ptr %start, align 4
  %110 = load i32, ptr %sfb, align 4
  %add123 = add i32 %110, 1
  %idxprom124 = zext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom124
  %111 = load i32, ptr %arrayidx125, align 4
  store i32 %111, ptr %end, align 4
  %112 = load i32, ptr %end, align 4
  %113 = load i32, ptr %start, align 4
  %sub126 = sub nsw i32 %112, %113
  %conv127 = sitofp i32 %sub126 to double
  store double %conv127, ptr %bw, align 8
  store double 0.000000e+00, ptr %sum, align 8
  %114 = load i32, ptr %start, align 4
  store i32 %114, ptr %l, align 4
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc146, %cond.end118
  %115 = load i32, ptr %l, align 4
  %116 = load i32, ptr %end, align 4
  %cmp129 = icmp slt i32 %115, %116
  br i1 %cmp129, label %for.body131, label %for.end148

for.body131:                                      ; preds = %for.cond128
  %117 = load ptr, ptr %xr.addr, align 8
  %118 = load i32, ptr %l, align 4
  %mul133 = mul nsw i32 %118, 3
  %119 = load i32, ptr %i, align 4
  %add134 = add nsw i32 %mul133, %119
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %117, i64 %idxprom135
  %120 = load double, ptr %arrayidx136, align 8
  %121 = call double @llvm.fabs.f64(double %120)
  %122 = load ptr, ptr %ix.addr, align 8
  %123 = load i32, ptr %l, align 4
  %mul137 = mul nsw i32 %123, 3
  %124 = load i32, ptr %i, align 4
  %add138 = add nsw i32 %mul137, %124
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds i32, ptr %122, i64 %idxprom139
  %125 = load i32, ptr %arrayidx140, align 4
  %idxprom141 = sext i32 %125 to i64
  %arrayidx142 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom141
  %126 = load double, ptr %arrayidx142, align 8
  %127 = load double, ptr %step, align 8
  %neg144 = fneg double %126
  %128 = call double @llvm.fmuladd.f64(double %neg144, double %127, double %121)
  store double %128, ptr %temp132, align 8
  %129 = load double, ptr %temp132, align 8
  %130 = load double, ptr %temp132, align 8
  %131 = load double, ptr %sum, align 8
  %132 = call double @llvm.fmuladd.f64(double %129, double %130, double %131)
  store double %132, ptr %sum, align 8
  br label %for.inc146

for.inc146:                                       ; preds = %for.body131
  %133 = load i32, ptr %l, align 4
  %inc147 = add nsw i32 %133, 1
  store i32 %inc147, ptr %l, align 4
  br label %for.cond128, !llvm.loop !39

for.end148:                                       ; preds = %for.cond128
  %134 = load double, ptr %sum, align 8
  %135 = load double, ptr %bw, align 8
  %div149 = fdiv double %134, %135
  %136 = load ptr, ptr %xfsf.addr, align 8
  %137 = load i32, ptr %i, align 4
  %add150 = add nsw i32 %137, 1
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds [21 x double], ptr %136, i64 %idxprom151
  %138 = load i32, ptr %sfb, align 4
  %idxprom153 = zext i32 %138 to i64
  %arrayidx154 = getelementptr inbounds [21 x double], ptr %arrayidx152, i64 0, i64 %idxprom153
  store double %div149, ptr %arrayidx154, align 8
  %139 = load ptr, ptr %xfsf.addr, align 8
  %140 = load i32, ptr %i, align 4
  %add155 = add nsw i32 %140, 1
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds [21 x double], ptr %139, i64 %idxprom156
  %141 = load i32, ptr %sfb, align 4
  %idxprom158 = zext i32 %141 to i64
  %arrayidx159 = getelementptr inbounds [21 x double], ptr %arrayidx157, i64 0, i64 %idxprom158
  %142 = load double, ptr %arrayidx159, align 8
  %143 = load ptr, ptr %l3_xmin.addr, align 8
  %s160 = getelementptr inbounds %struct.III_psy_xmin, ptr %143, i32 0, i32 1
  %144 = load i32, ptr %sfb, align 4
  %idxprom161 = zext i32 %144 to i64
  %arrayidx162 = getelementptr inbounds [13 x [3 x double]], ptr %s160, i64 0, i64 %idxprom161
  %145 = load i32, ptr %i, align 4
  %idxprom163 = sext i32 %145 to i64
  %arrayidx164 = getelementptr inbounds [3 x double], ptr %arrayidx162, i64 0, i64 %idxprom163
  %146 = load double, ptr %arrayidx164, align 8
  %div165 = fdiv double %142, %146
  %cmp166 = fcmp ogt double 1.000000e-03, %div165
  br i1 %cmp166, label %cond.true168, label %cond.false169

cond.true168:                                     ; preds = %for.end148
  br label %cond.end181

cond.false169:                                    ; preds = %for.end148
  %147 = load ptr, ptr %xfsf.addr, align 8
  %148 = load i32, ptr %i, align 4
  %add170 = add nsw i32 %148, 1
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds [21 x double], ptr %147, i64 %idxprom171
  %149 = load i32, ptr %sfb, align 4
  %idxprom173 = zext i32 %149 to i64
  %arrayidx174 = getelementptr inbounds [21 x double], ptr %arrayidx172, i64 0, i64 %idxprom173
  %150 = load double, ptr %arrayidx174, align 8
  %151 = load ptr, ptr %l3_xmin.addr, align 8
  %s175 = getelementptr inbounds %struct.III_psy_xmin, ptr %151, i32 0, i32 1
  %152 = load i32, ptr %sfb, align 4
  %idxprom176 = zext i32 %152 to i64
  %arrayidx177 = getelementptr inbounds [13 x [3 x double]], ptr %s175, i64 0, i64 %idxprom176
  %153 = load i32, ptr %i, align 4
  %idxprom178 = sext i32 %153 to i64
  %arrayidx179 = getelementptr inbounds [3 x double], ptr %arrayidx177, i64 0, i64 %idxprom178
  %154 = load double, ptr %arrayidx179, align 8
  %div180 = fdiv double %150, %154
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false169, %cond.true168
  %cond182 = phi double [ 1.000000e-03, %cond.true168 ], [ %div180, %cond.false169 ]
  %155 = call double @llvm.log10.f64(double %cond182)
  %mul183 = fmul double 1.000000e+01, %155
  store double %mul183, ptr %noise, align 8
  %156 = load double, ptr %noise, align 8
  %157 = load ptr, ptr %distort.addr, align 8
  %158 = load i32, ptr %i, align 4
  %add184 = add nsw i32 %158, 1
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds [21 x double], ptr %157, i64 %idxprom185
  %159 = load i32, ptr %sfb, align 4
  %idxprom187 = zext i32 %159 to i64
  %arrayidx188 = getelementptr inbounds [21 x double], ptr %arrayidx186, i64 0, i64 %idxprom187
  store double %156, ptr %arrayidx188, align 8
  %160 = load double, ptr %noise, align 8
  %cmp189 = fcmp ogt double %160, 0.000000e+00
  br i1 %cmp189, label %if.then191, label %if.end194

if.then191:                                       ; preds = %cond.end181
  %161 = load i32, ptr %over, align 4
  %inc192 = add nsw i32 %161, 1
  store i32 %inc192, ptr %over, align 4
  %162 = load double, ptr %noise, align 8
  %163 = load ptr, ptr %over_noise.addr, align 8
  %164 = load double, ptr %163, align 8
  %add193 = fadd double %164, %162
  store double %add193, ptr %163, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.then191, %cond.end181
  %165 = load double, ptr %noise, align 8
  %166 = load ptr, ptr %tot_noise.addr, align 8
  %167 = load double, ptr %166, align 8
  %add195 = fadd double %167, %165
  store double %add195, ptr %166, align 8
  %168 = load ptr, ptr %max_noise.addr, align 8
  %169 = load double, ptr %168, align 8
  %170 = load double, ptr %noise, align 8
  %cmp196 = fcmp ogt double %169, %170
  br i1 %cmp196, label %cond.true198, label %cond.false199

cond.true198:                                     ; preds = %if.end194
  %171 = load ptr, ptr %max_noise.addr, align 8
  %172 = load double, ptr %171, align 8
  br label %cond.end200

cond.false199:                                    ; preds = %if.end194
  %173 = load double, ptr %noise, align 8
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false199, %cond.true198
  %cond201 = phi double [ %172, %cond.true198 ], [ %173, %cond.false199 ]
  %174 = load ptr, ptr %max_noise.addr, align 8
  store double %cond201, ptr %174, align 8
  %175 = load i32, ptr %count, align 4
  %inc202 = add nsw i32 %175, 1
  store i32 %inc202, ptr %count, align 4
  br label %for.inc203

for.inc203:                                       ; preds = %cond.end200
  %176 = load i32, ptr %sfb, align 4
  %inc204 = add i32 %176, 1
  store i32 %inc204, ptr %sfb, align 4
  br label %for.cond82, !llvm.loop !40

for.end205:                                       ; preds = %for.cond82
  br label %for.inc206

for.inc206:                                       ; preds = %for.end205
  %177 = load i32, ptr %i, align 4
  %inc207 = add nsw i32 %177, 1
  store i32 %inc207, ptr %i, align 4
  br label %for.cond78, !llvm.loop !41

for.end208:                                       ; preds = %for.cond78
  %178 = load i32, ptr %count, align 4
  %cmp209 = icmp sgt i32 %178, 1
  br i1 %cmp209, label %if.then211, label %if.end214

if.then211:                                       ; preds = %for.end208
  %179 = load i32, ptr %count, align 4
  %conv212 = sitofp i32 %179 to double
  %180 = load ptr, ptr %tot_noise.addr, align 8
  %181 = load double, ptr %180, align 8
  %div213 = fdiv double %181, %conv212
  store double %div213, ptr %180, align 8
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %for.end208
  %182 = load i32, ptr %over, align 4
  %cmp215 = icmp sgt i32 %182, 1
  br i1 %cmp215, label %if.then217, label %if.end220

if.then217:                                       ; preds = %if.end214
  %183 = load i32, ptr %over, align 4
  %conv218 = sitofp i32 %183 to double
  %184 = load ptr, ptr %over_noise.addr, align 8
  %185 = load double, ptr %184, align 8
  %div219 = fdiv double %185, %conv218
  store double %div219, ptr %184, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.end214
  %186 = load i32, ptr %over, align 4
  ret i32 %186
}

; Function Attrs: nounwind ssp uwtable
define i32 @quant_compare(i32 noundef %experimentalX, i32 noundef %best_over, double noundef %best_tot_noise, double noundef %best_over_noise, double noundef %best_max_noise, i32 noundef %over, double noundef %tot_noise, double noundef %over_noise, double noundef %max_noise) #0 {
entry:
  %experimentalX.addr = alloca i32, align 4
  %best_over.addr = alloca i32, align 4
  %best_tot_noise.addr = alloca double, align 8
  %best_over_noise.addr = alloca double, align 8
  %best_max_noise.addr = alloca double, align 8
  %over.addr = alloca i32, align 4
  %tot_noise.addr = alloca double, align 8
  %over_noise.addr = alloca double, align 8
  %max_noise.addr = alloca double, align 8
  %better = alloca i32, align 4
  store i32 %experimentalX, ptr %experimentalX.addr, align 4
  store i32 %best_over, ptr %best_over.addr, align 4
  store double %best_tot_noise, ptr %best_tot_noise.addr, align 8
  store double %best_over_noise, ptr %best_over_noise.addr, align 8
  store double %best_max_noise, ptr %best_max_noise.addr, align 8
  store i32 %over, ptr %over.addr, align 4
  store double %tot_noise, ptr %tot_noise.addr, align 8
  store double %over_noise, ptr %over_noise.addr, align 8
  store double %max_noise, ptr %max_noise.addr, align 8
  store i32 0, ptr %better, align 4
  %0 = load i32, ptr %experimentalX.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %over.addr, align 4
  %2 = load i32, ptr %best_over.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %3 = load i32, ptr %over.addr, align 4
  %4 = load i32, ptr %best_over.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %5 = load double, ptr %over_noise.addr, align 8
  %6 = load double, ptr %best_over_noise.addr, align 8
  %cmp3 = fcmp ole double %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %7 = phi i1 [ false, %lor.rhs ], [ %cmp3, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.then
  %8 = phi i1 [ true, %if.then ], [ %7, %land.end ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, ptr %better, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  %9 = load i32, ptr %experimentalX.addr, align 4
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load double, ptr %max_noise.addr, align 8
  %11 = load double, ptr %best_max_noise.addr, align 8
  %cmp6 = fcmp olt double %10, %11
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, ptr %better, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %12 = load i32, ptr %experimentalX.addr, align 4
  %cmp8 = icmp eq i32 %12, 2
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  %13 = load double, ptr %tot_noise.addr, align 8
  %14 = load double, ptr %best_tot_noise.addr, align 8
  %cmp11 = fcmp olt double %13, %14
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, ptr %better, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %15 = load i32, ptr %experimentalX.addr, align 4
  %cmp14 = icmp eq i32 %15, 3
  br i1 %cmp14, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.end13
  %16 = load double, ptr %tot_noise.addr, align 8
  %17 = load double, ptr %best_tot_noise.addr, align 8
  %cmp17 = fcmp olt double %16, %17
  br i1 %cmp17, label %land.rhs19, label %land.end22

land.rhs19:                                       ; preds = %if.then16
  %18 = load double, ptr %max_noise.addr, align 8
  %19 = load double, ptr %best_max_noise.addr, align 8
  %add = fadd double %19, 2.000000e+00
  %cmp20 = fcmp olt double %18, %add
  br label %land.end22

land.end22:                                       ; preds = %land.rhs19, %if.then16
  %20 = phi i1 [ false, %if.then16 ], [ %cmp20, %land.rhs19 ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, ptr %better, align 4
  br label %if.end23

if.end23:                                         ; preds = %land.end22, %if.end13
  %21 = load i32, ptr %experimentalX.addr, align 4
  %cmp24 = icmp eq i32 %21, 4
  br i1 %cmp24, label %if.then26, label %if.end93

if.then26:                                        ; preds = %if.end23
  %22 = load double, ptr %max_noise.addr, align 8
  %cmp27 = fcmp oge double 0.000000e+00, %22
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then26
  %23 = load double, ptr %best_max_noise.addr, align 8
  %cmp29 = fcmp ogt double %23, 2.000000e+00
  br i1 %cmp29, label %lor.end91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then26
  %24 = load double, ptr %max_noise.addr, align 8
  %cmp31 = fcmp oge double 0.000000e+00, %24
  br i1 %cmp31, label %land.lhs.true33, label %lor.lhs.false43

land.lhs.true33:                                  ; preds = %lor.lhs.false
  %25 = load double, ptr %best_max_noise.addr, align 8
  %cmp34 = fcmp olt double %25, 0.000000e+00
  br i1 %cmp34, label %land.lhs.true36, label %lor.lhs.false43

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %26 = load double, ptr %best_max_noise.addr, align 8
  %add37 = fadd double %26, 2.000000e+00
  %27 = load double, ptr %max_noise.addr, align 8
  %cmp38 = fcmp ogt double %add37, %27
  br i1 %cmp38, label %land.lhs.true40, label %lor.lhs.false43

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %28 = load double, ptr %tot_noise.addr, align 8
  %29 = load double, ptr %best_tot_noise.addr, align 8
  %cmp41 = fcmp olt double %28, %29
  br i1 %cmp41, label %lor.end91, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %land.lhs.true40, %land.lhs.true36, %land.lhs.true33, %lor.lhs.false
  %30 = load double, ptr %max_noise.addr, align 8
  %cmp44 = fcmp oge double 0.000000e+00, %30
  br i1 %cmp44, label %land.lhs.true46, label %lor.lhs.false57

land.lhs.true46:                                  ; preds = %lor.lhs.false43
  %31 = load double, ptr %best_max_noise.addr, align 8
  %cmp47 = fcmp ogt double %31, 0.000000e+00
  br i1 %cmp47, label %land.lhs.true49, label %lor.lhs.false57

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %32 = load double, ptr %best_max_noise.addr, align 8
  %add50 = fadd double %32, 2.000000e+00
  %33 = load double, ptr %max_noise.addr, align 8
  %cmp51 = fcmp ogt double %add50, %33
  br i1 %cmp51, label %land.lhs.true53, label %lor.lhs.false57

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %34 = load double, ptr %tot_noise.addr, align 8
  %35 = load double, ptr %best_tot_noise.addr, align 8
  %36 = load double, ptr %best_over_noise.addr, align 8
  %add54 = fadd double %35, %36
  %cmp55 = fcmp olt double %34, %add54
  br i1 %cmp55, label %lor.end91, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %land.lhs.true53, %land.lhs.true49, %land.lhs.true46, %lor.lhs.false43
  %37 = load double, ptr %max_noise.addr, align 8
  %cmp58 = fcmp olt double 0.000000e+00, %37
  br i1 %cmp58, label %land.lhs.true60, label %lor.rhs72

land.lhs.true60:                                  ; preds = %lor.lhs.false57
  %38 = load double, ptr %best_max_noise.addr, align 8
  %cmp61 = fcmp ogt double %38, -5.000000e-01
  br i1 %cmp61, label %land.lhs.true63, label %lor.rhs72

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %39 = load double, ptr %best_max_noise.addr, align 8
  %add64 = fadd double %39, 1.000000e+00
  %40 = load double, ptr %max_noise.addr, align 8
  %cmp65 = fcmp ogt double %add64, %40
  br i1 %cmp65, label %land.lhs.true67, label %lor.rhs72

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %41 = load double, ptr %tot_noise.addr, align 8
  %42 = load double, ptr %over_noise.addr, align 8
  %add68 = fadd double %41, %42
  %43 = load double, ptr %best_tot_noise.addr, align 8
  %44 = load double, ptr %best_over_noise.addr, align 8
  %add69 = fadd double %43, %44
  %cmp70 = fcmp olt double %add68, %add69
  br i1 %cmp70, label %lor.end91, label %lor.rhs72

lor.rhs72:                                        ; preds = %land.lhs.true67, %land.lhs.true63, %land.lhs.true60, %lor.lhs.false57
  %45 = load double, ptr %max_noise.addr, align 8
  %cmp73 = fcmp olt double 0.000000e+00, %45
  br i1 %cmp73, label %land.lhs.true75, label %land.end89

land.lhs.true75:                                  ; preds = %lor.rhs72
  %46 = load double, ptr %best_max_noise.addr, align 8
  %cmp76 = fcmp ogt double %46, -1.000000e+00
  br i1 %cmp76, label %land.lhs.true78, label %land.end89

land.lhs.true78:                                  ; preds = %land.lhs.true75
  %47 = load double, ptr %best_max_noise.addr, align 8
  %add79 = fadd double %47, 1.500000e+00
  %48 = load double, ptr %max_noise.addr, align 8
  %cmp80 = fcmp ogt double %add79, %48
  br i1 %cmp80, label %land.rhs82, label %land.end89

land.rhs82:                                       ; preds = %land.lhs.true78
  %49 = load double, ptr %tot_noise.addr, align 8
  %50 = load double, ptr %over_noise.addr, align 8
  %add83 = fadd double %49, %50
  %51 = load double, ptr %over_noise.addr, align 8
  %add84 = fadd double %add83, %51
  %52 = load double, ptr %best_tot_noise.addr, align 8
  %53 = load double, ptr %best_over_noise.addr, align 8
  %add85 = fadd double %52, %53
  %54 = load double, ptr %best_over_noise.addr, align 8
  %add86 = fadd double %add85, %54
  %cmp87 = fcmp olt double %add84, %add86
  br label %land.end89

land.end89:                                       ; preds = %land.rhs82, %land.lhs.true78, %land.lhs.true75, %lor.rhs72
  %55 = phi i1 [ false, %land.lhs.true78 ], [ false, %land.lhs.true75 ], [ false, %lor.rhs72 ], [ %cmp87, %land.rhs82 ]
  br label %lor.end91

lor.end91:                                        ; preds = %land.end89, %land.lhs.true67, %land.lhs.true53, %land.lhs.true40, %land.lhs.true
  %56 = phi i1 [ true, %land.lhs.true67 ], [ true, %land.lhs.true53 ], [ true, %land.lhs.true40 ], [ true, %land.lhs.true ], [ %55, %land.end89 ]
  %lor.ext92 = zext i1 %56 to i32
  store i32 %lor.ext92, ptr %better, align 4
  br label %if.end93

if.end93:                                         ; preds = %lor.end91, %if.end23
  %57 = load i32, ptr %experimentalX.addr, align 4
  %cmp94 = icmp eq i32 %57, 5
  br i1 %cmp94, label %if.then96, label %if.end109

if.then96:                                        ; preds = %if.end93
  %58 = load double, ptr %over_noise.addr, align 8
  %59 = load double, ptr %best_over_noise.addr, align 8
  %cmp97 = fcmp olt double %58, %59
  br i1 %cmp97, label %lor.end107, label %lor.rhs99

lor.rhs99:                                        ; preds = %if.then96
  %60 = load double, ptr %over_noise.addr, align 8
  %61 = load double, ptr %best_over_noise.addr, align 8
  %cmp100 = fcmp oeq double %60, %61
  br i1 %cmp100, label %land.rhs102, label %land.end105

land.rhs102:                                      ; preds = %lor.rhs99
  %62 = load double, ptr %tot_noise.addr, align 8
  %63 = load double, ptr %best_tot_noise.addr, align 8
  %cmp103 = fcmp olt double %62, %63
  br label %land.end105

land.end105:                                      ; preds = %land.rhs102, %lor.rhs99
  %64 = phi i1 [ false, %lor.rhs99 ], [ %cmp103, %land.rhs102 ]
  br label %lor.end107

lor.end107:                                       ; preds = %land.end105, %if.then96
  %65 = phi i1 [ true, %if.then96 ], [ %64, %land.end105 ]
  %lor.ext108 = zext i1 %65 to i32
  store i32 %lor.ext108, ptr %better, align 4
  br label %if.end109

if.end109:                                        ; preds = %lor.end107, %if.end93
  %66 = load i32, ptr %experimentalX.addr, align 4
  %cmp110 = icmp eq i32 %66, 6
  br i1 %cmp110, label %if.then112, label %if.end135

if.then112:                                       ; preds = %if.end109
  %67 = load double, ptr %over_noise.addr, align 8
  %68 = load double, ptr %best_over_noise.addr, align 8
  %cmp113 = fcmp olt double %67, %68
  br i1 %cmp113, label %lor.end133, label %lor.rhs115

lor.rhs115:                                       ; preds = %if.then112
  %69 = load double, ptr %over_noise.addr, align 8
  %70 = load double, ptr %best_over_noise.addr, align 8
  %cmp116 = fcmp oeq double %69, %70
  br i1 %cmp116, label %land.rhs118, label %land.end131

land.rhs118:                                      ; preds = %lor.rhs115
  %71 = load double, ptr %max_noise.addr, align 8
  %72 = load double, ptr %best_max_noise.addr, align 8
  %cmp119 = fcmp olt double %71, %72
  br i1 %cmp119, label %lor.end129, label %lor.rhs121

lor.rhs121:                                       ; preds = %land.rhs118
  %73 = load double, ptr %max_noise.addr, align 8
  %74 = load double, ptr %best_max_noise.addr, align 8
  %cmp122 = fcmp oeq double %73, %74
  br i1 %cmp122, label %land.rhs124, label %land.end127

land.rhs124:                                      ; preds = %lor.rhs121
  %75 = load double, ptr %tot_noise.addr, align 8
  %76 = load double, ptr %best_tot_noise.addr, align 8
  %cmp125 = fcmp ole double %75, %76
  br label %land.end127

land.end127:                                      ; preds = %land.rhs124, %lor.rhs121
  %77 = phi i1 [ false, %lor.rhs121 ], [ %cmp125, %land.rhs124 ]
  br label %lor.end129

lor.end129:                                       ; preds = %land.end127, %land.rhs118
  %78 = phi i1 [ true, %land.rhs118 ], [ %77, %land.end127 ]
  br label %land.end131

land.end131:                                      ; preds = %lor.end129, %lor.rhs115
  %79 = phi i1 [ false, %lor.rhs115 ], [ %78, %lor.end129 ]
  br label %lor.end133

lor.end133:                                       ; preds = %land.end131, %if.then112
  %80 = phi i1 [ true, %if.then112 ], [ %79, %land.end131 ]
  %lor.ext134 = zext i1 %80 to i32
  store i32 %lor.ext134, ptr %better, align 4
  br label %if.end135

if.end135:                                        ; preds = %lor.end133, %if.end109
  %81 = load i32, ptr %better, align 4
  ret i32 %81
}

; Function Attrs: nounwind ssp uwtable
define void @amp_scalefac_bands(ptr noundef %xrpow, ptr noundef %cod_info, ptr noundef %scalefac, ptr noundef %distort) #0 {
entry:
  %xrpow.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %distort.addr = alloca ptr, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %sfb = alloca i32, align 4
  %ifqstep34 = alloca double, align 8
  %distort_thresh = alloca double, align 8
  store ptr %xrpow, ptr %xrpow.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr %distort, ptr %distort.addr, align 8
  %0 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %scalefac_scale, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0x3FF4BFDAD5362A27, ptr %ifqstep34, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store double 0x3FFAE89F995AD3AE, ptr %ifqstep34, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store double -9.000000e+02, ptr %distort_thresh, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %sfb, align 4
  %3 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %3, i32 0, i32 16
  %4 = load i32, ptr %sfb_lmax, align 8
  %cmp1 = icmp ult i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %distort.addr, align 8
  %arrayidx = getelementptr inbounds [21 x double], ptr %5, i64 0
  %6 = load i32, ptr %sfb, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [21 x double], ptr %arrayidx, i64 0, i64 %idxprom
  %7 = load double, ptr %arrayidx2, align 8
  %8 = load double, ptr %distort_thresh, align 8
  %cmp3 = fcmp ogt double %7, %8
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load ptr, ptr %distort.addr, align 8
  %arrayidx4 = getelementptr inbounds [21 x double], ptr %9, i64 0
  %10 = load i32, ptr %sfb, align 4
  %idxprom5 = zext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [21 x double], ptr %arrayidx4, i64 0, i64 %idxprom5
  %11 = load double, ptr %arrayidx6, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load double, ptr %distort_thresh, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %11, %cond.true ], [ %12, %cond.false ]
  store double %cond, ptr %distort_thresh, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %13 = load i32, ptr %sfb, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %sfb, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %14, i32 0, i32 17
  %15 = load i32, ptr %sfb_smax, align 4
  store i32 %15, ptr %sfb, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc30, %for.end
  %16 = load i32, ptr %sfb, align 4
  %cmp8 = icmp ult i32 %16, 12
  br i1 %cmp8, label %for.body9, label %for.end32

for.body9:                                        ; preds = %for.cond7
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc27, %for.body9
  %17 = load i32, ptr %i, align 4
  %cmp11 = icmp slt i32 %17, 3
  br i1 %cmp11, label %for.body12, label %for.end29

for.body12:                                       ; preds = %for.cond10
  %18 = load ptr, ptr %distort.addr, align 8
  %19 = load i32, ptr %i, align 4
  %add = add nsw i32 %19, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [21 x double], ptr %18, i64 %idxprom13
  %20 = load i32, ptr %sfb, align 4
  %idxprom15 = zext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [21 x double], ptr %arrayidx14, i64 0, i64 %idxprom15
  %21 = load double, ptr %arrayidx16, align 8
  %22 = load double, ptr %distort_thresh, align 8
  %cmp17 = fcmp ogt double %21, %22
  br i1 %cmp17, label %cond.true18, label %cond.false24

cond.true18:                                      ; preds = %for.body12
  %23 = load ptr, ptr %distort.addr, align 8
  %24 = load i32, ptr %i, align 4
  %add19 = add nsw i32 %24, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [21 x double], ptr %23, i64 %idxprom20
  %25 = load i32, ptr %sfb, align 4
  %idxprom22 = zext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [21 x double], ptr %arrayidx21, i64 0, i64 %idxprom22
  %26 = load double, ptr %arrayidx23, align 8
  br label %cond.end25

cond.false24:                                     ; preds = %for.body12
  %27 = load double, ptr %distort_thresh, align 8
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.true18
  %cond26 = phi double [ %26, %cond.true18 ], [ %27, %cond.false24 ]
  store double %cond26, ptr %distort_thresh, align 8
  br label %for.inc27

for.inc27:                                        ; preds = %cond.end25
  %28 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond10, !llvm.loop !43

for.end29:                                        ; preds = %for.cond10
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %29 = load i32, ptr %sfb, align 4
  %inc31 = add i32 %29, 1
  store i32 %inc31, ptr %sfb, align 4
  br label %for.cond7, !llvm.loop !44

for.end32:                                        ; preds = %for.cond7
  %30 = load double, ptr %distort_thresh, align 8
  %mul = fmul double %30, 1.050000e+00
  %cmp33 = fcmp olt double %mul, 0.000000e+00
  br i1 %cmp33, label %cond.true34, label %cond.false36

cond.true34:                                      ; preds = %for.end32
  %31 = load double, ptr %distort_thresh, align 8
  %mul35 = fmul double %31, 1.050000e+00
  br label %cond.end37

cond.false36:                                     ; preds = %for.end32
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %cond.true34
  %cond38 = phi double [ %mul35, %cond.true34 ], [ 0.000000e+00, %cond.false36 ]
  store double %cond38, ptr %distort_thresh, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc67, %cond.end37
  %32 = load i32, ptr %sfb, align 4
  %33 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax40 = getelementptr inbounds %struct.gr_info, ptr %33, i32 0, i32 16
  %34 = load i32, ptr %sfb_lmax40, align 8
  %cmp41 = icmp ult i32 %32, %34
  br i1 %cmp41, label %for.body42, label %for.end69

for.body42:                                       ; preds = %for.cond39
  %35 = load ptr, ptr %distort.addr, align 8
  %arrayidx43 = getelementptr inbounds [21 x double], ptr %35, i64 0
  %36 = load i32, ptr %sfb, align 4
  %idxprom44 = zext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds [21 x double], ptr %arrayidx43, i64 0, i64 %idxprom44
  %37 = load double, ptr %arrayidx45, align 8
  %38 = load double, ptr %distort_thresh, align 8
  %cmp46 = fcmp ogt double %37, %38
  br i1 %cmp46, label %if.then47, label %if.end66

if.then47:                                        ; preds = %for.body42
  %39 = load ptr, ptr %scalefac.addr, align 8
  %l48 = getelementptr inbounds %struct.III_scalefac_t, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %sfb, align 4
  %idxprom49 = zext i32 %40 to i64
  %arrayidx50 = getelementptr inbounds [22 x i32], ptr %l48, i64 0, i64 %idxprom49
  %41 = load i32, ptr %arrayidx50, align 4
  %inc51 = add nsw i32 %41, 1
  store i32 %inc51, ptr %arrayidx50, align 4
  %42 = load i32, ptr %sfb, align 4
  %idxprom52 = zext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom52
  %43 = load i32, ptr %arrayidx53, align 4
  store i32 %43, ptr %start, align 4
  %44 = load i32, ptr %sfb, align 4
  %add54 = add i32 %44, 1
  %idxprom55 = zext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom55
  %45 = load i32, ptr %arrayidx56, align 4
  store i32 %45, ptr %end, align 4
  %46 = load i32, ptr %start, align 4
  store i32 %46, ptr %l, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc63, %if.then47
  %47 = load i32, ptr %l, align 4
  %48 = load i32, ptr %end, align 4
  %cmp58 = icmp slt i32 %47, %48
  br i1 %cmp58, label %for.body59, label %for.end65

for.body59:                                       ; preds = %for.cond57
  %49 = load double, ptr %ifqstep34, align 8
  %50 = load ptr, ptr %xrpow.addr, align 8
  %51 = load i32, ptr %l, align 4
  %idxprom60 = sext i32 %51 to i64
  %arrayidx61 = getelementptr inbounds double, ptr %50, i64 %idxprom60
  %52 = load double, ptr %arrayidx61, align 8
  %mul62 = fmul double %52, %49
  store double %mul62, ptr %arrayidx61, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %for.body59
  %53 = load i32, ptr %l, align 4
  %inc64 = add nsw i32 %53, 1
  store i32 %inc64, ptr %l, align 4
  br label %for.cond57, !llvm.loop !45

for.end65:                                        ; preds = %for.cond57
  br label %if.end66

if.end66:                                         ; preds = %for.end65, %for.body42
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66
  %54 = load i32, ptr %sfb, align 4
  %inc68 = add i32 %54, 1
  store i32 %inc68, ptr %sfb, align 4
  br label %for.cond39, !llvm.loop !46

for.end69:                                        ; preds = %for.cond39
  store i32 0, ptr %i, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc109, %for.end69
  %55 = load i32, ptr %i, align 4
  %cmp71 = icmp slt i32 %55, 3
  br i1 %cmp71, label %for.body72, label %for.end111

for.body72:                                       ; preds = %for.cond70
  %56 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax73 = getelementptr inbounds %struct.gr_info, ptr %56, i32 0, i32 17
  %57 = load i32, ptr %sfb_smax73, align 4
  store i32 %57, ptr %sfb, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc106, %for.body72
  %58 = load i32, ptr %sfb, align 4
  %cmp75 = icmp ult i32 %58, 12
  br i1 %cmp75, label %for.body76, label %for.end108

for.body76:                                       ; preds = %for.cond74
  %59 = load ptr, ptr %distort.addr, align 8
  %60 = load i32, ptr %i, align 4
  %add77 = add nsw i32 %60, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [21 x double], ptr %59, i64 %idxprom78
  %61 = load i32, ptr %sfb, align 4
  %idxprom80 = zext i32 %61 to i64
  %arrayidx81 = getelementptr inbounds [21 x double], ptr %arrayidx79, i64 0, i64 %idxprom80
  %62 = load double, ptr %arrayidx81, align 8
  %63 = load double, ptr %distort_thresh, align 8
  %cmp82 = fcmp ogt double %62, %63
  br i1 %cmp82, label %if.then83, label %if.end105

if.then83:                                        ; preds = %for.body76
  %64 = load ptr, ptr %scalefac.addr, align 8
  %s = getelementptr inbounds %struct.III_scalefac_t, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %sfb, align 4
  %idxprom84 = zext i32 %65 to i64
  %arrayidx85 = getelementptr inbounds [13 x [3 x i32]], ptr %s, i64 0, i64 %idxprom84
  %66 = load i32, ptr %i, align 4
  %idxprom86 = sext i32 %66 to i64
  %arrayidx87 = getelementptr inbounds [3 x i32], ptr %arrayidx85, i64 0, i64 %idxprom86
  %67 = load i32, ptr %arrayidx87, align 4
  %inc88 = add nsw i32 %67, 1
  store i32 %inc88, ptr %arrayidx87, align 4
  %68 = load i32, ptr %sfb, align 4
  %idxprom89 = zext i32 %68 to i64
  %arrayidx90 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom89
  %69 = load i32, ptr %arrayidx90, align 4
  store i32 %69, ptr %start, align 4
  %70 = load i32, ptr %sfb, align 4
  %add91 = add i32 %70, 1
  %idxprom92 = zext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom92
  %71 = load i32, ptr %arrayidx93, align 4
  store i32 %71, ptr %end, align 4
  %72 = load i32, ptr %start, align 4
  store i32 %72, ptr %l, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc102, %if.then83
  %73 = load i32, ptr %l, align 4
  %74 = load i32, ptr %end, align 4
  %cmp95 = icmp slt i32 %73, %74
  br i1 %cmp95, label %for.body96, label %for.end104

for.body96:                                       ; preds = %for.cond94
  %75 = load double, ptr %ifqstep34, align 8
  %76 = load ptr, ptr %xrpow.addr, align 8
  %77 = load i32, ptr %l, align 4
  %mul97 = mul nsw i32 %77, 3
  %78 = load i32, ptr %i, align 4
  %add98 = add nsw i32 %mul97, %78
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds double, ptr %76, i64 %idxprom99
  %79 = load double, ptr %arrayidx100, align 8
  %mul101 = fmul double %79, %75
  store double %mul101, ptr %arrayidx100, align 8
  br label %for.inc102

for.inc102:                                       ; preds = %for.body96
  %80 = load i32, ptr %l, align 4
  %inc103 = add nsw i32 %80, 1
  store i32 %inc103, ptr %l, align 4
  br label %for.cond94, !llvm.loop !47

for.end104:                                       ; preds = %for.cond94
  br label %if.end105

if.end105:                                        ; preds = %for.end104, %for.body76
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %81 = load i32, ptr %sfb, align 4
  %inc107 = add i32 %81, 1
  store i32 %inc107, ptr %sfb, align 4
  br label %for.cond74, !llvm.loop !48

for.end108:                                       ; preds = %for.cond74
  br label %for.inc109

for.inc109:                                       ; preds = %for.end108
  %82 = load i32, ptr %i, align 4
  %inc110 = add nsw i32 %82, 1
  store i32 %inc110, ptr %i, align 4
  br label %for.cond70, !llvm.loop !49

for.end111:                                       ; preds = %for.cond70
  ret void
}

declare i32 @loop_break(ptr noundef, ptr noundef) #1

declare i32 @scale_bitcount(ptr noundef, ptr noundef) #1

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log10.f64(double) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn }

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
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
