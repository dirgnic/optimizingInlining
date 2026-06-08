; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-lame_quantize.prepared.ll'
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
  call void @iteration_init(ptr noundef %0, ptr noundef %l3_side, ptr noundef %l3_enc) #9
  call void @getframebits(ptr noundef %0, ptr noundef nonnull %bitsPerFrame, ptr noundef nonnull %mean_bits) #9
  %1 = load i32, ptr %mean_bits, align 4
  %2 = load i32, ptr %bitsPerFrame, align 4
  %call = call i32 @ResvFrameBegin(ptr noundef %0, ptr noundef %l3_side, i32 noundef %1, i32 noundef %2) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc119, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc120, %for.inc119 ]
  store i32 %storemerge, ptr %gr, align 4
  %3 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 45
  %4 = load i32, ptr %mode_gr, align 8
  %cmp = icmp slt i32 %storemerge, %4
  br i1 %cmp, label %for.body, label %for.end121

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr @convert_mdct, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %xr.addr, align 8
  %7 = load i32, ptr %gr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [2 x [576 x double]], ptr %6, i64 %idxprom3
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [2 x [576 x double]], ptr %6, i64 %idxprom5
  call void @ms_convert(ptr noundef %arrayidx4, ptr noundef %arrayidx6) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load ptr, ptr %gfp.addr, align 8
  %9 = load ptr, ptr %pe.addr, align 8
  %10 = load ptr, ptr %l3_side.addr, align 8
  %11 = load i32, ptr %mean_bits, align 4
  %12 = load i32, ptr %gr, align 4
  call void @on_pe(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %targ_bits, i32 noundef %11, i32 noundef %12) #9
  %13 = load i32, ptr @reduce_sidechannel, align 4
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  %14 = load ptr, ptr %ms_ener_ratio.addr, align 8
  %15 = load i32, ptr %gr, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds double, ptr %14, i64 %idxprom12
  %16 = load double, ptr %arrayidx13, align 8
  %17 = load i32, ptr %mean_bits, align 4
  call void @reduce_side(ptr noundef nonnull %targ_bits, double noundef %16, i32 noundef %17) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc116, %if.end14
  %storemerge1 = phi i32 [ 0, %if.end14 ], [ %inc117, %for.inc116 ]
  store i32 %storemerge1, ptr %ch, align 4
  %18 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %18, i64 0, i32 46
  %19 = load i32, ptr %stereo, align 4
  %cmp16 = icmp slt i32 %storemerge1, %19
  br i1 %cmp16, label %for.body17, label %for.inc119

for.body17:                                       ; preds = %for.cond15
  %20 = load ptr, ptr %l3_side.addr, align 8
  %21 = load i32, ptr %gr, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds %struct.III_side_info_t, ptr %20, i64 0, i32 4, i64 %idxprom19
  %22 = load i32, ptr %ch, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx20, i64 0, i64 %idxprom22
  store ptr %arrayidx23, ptr %cod_info, align 8
  %23 = load ptr, ptr %gfp.addr, align 8
  %24 = load ptr, ptr %xr.addr, align 8
  %25 = load i32, ptr %gr, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load i32, ptr %ch, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds [2 x [576 x double]], ptr %24, i64 %idxprom24, i64 %idxprom26
  %27 = load ptr, ptr %cod_info, align 8
  %call29 = call i32 @init_outer_loop(ptr noundef %23, ptr noundef %arrayidx27, ptr noundef %27)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body17
  %28 = load ptr, ptr %scalefac.addr, align 8
  %29 = load i32, ptr %gr, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load i32, ptr %ch, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %28, i64 %idxprom32, i64 %idxprom34
  %idxprom36 = sext i32 %29 to i64
  %idxprom38 = sext i32 %30 to i64
  %arrayidx39 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %28, i64 %idxprom36, i64 %idxprom38
  %31 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx39, i1 false, i1 true, i1 false)
  %call40 = call ptr @__memset_chk(ptr noundef %arrayidx35, i32 noundef 0, i64 noundef 244, i64 noundef %31) #9
  %32 = load ptr, ptr %l3_enc.addr, align 8
  %33 = load i32, ptr %gr, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load i32, ptr %ch, align 4
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds [2 x [576 x i32]], ptr %32, i64 %idxprom41, i64 %idxprom43
  %idxprom46 = sext i32 %33 to i64
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds [2 x [576 x i32]], ptr %32, i64 %idxprom46, i64 %idxprom48
  %35 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx49, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memset_chk(ptr noundef %arrayidx44, i32 noundef 0, i64 noundef 2304, i64 noundef %35) #9
  %arrayidx52 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 3
  store double 0.000000e+00, ptr %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 2
  store double 0.000000e+00, ptr %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx54, align 8
  store double 0.000000e+00, ptr %noise, align 8
  br label %if.end88

if.else:                                          ; preds = %for.body17
  %36 = load ptr, ptr %gfp.addr, align 8
  %37 = load ptr, ptr %xr.addr, align 8
  %38 = load i32, ptr %gr, align 4
  %idxprom56 = sext i32 %38 to i64
  %39 = load i32, ptr %ch, align 4
  %idxprom58 = sext i32 %39 to i64
  %arrayidx59 = getelementptr inbounds [2 x [576 x double]], ptr %37, i64 %idxprom56, i64 %idxprom58
  %40 = load ptr, ptr %ratio.addr, align 8
  %idxprom61 = sext i32 %38 to i64
  %idxprom63 = sext i32 %39 to i64
  %arrayidx64 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %40, i64 %idxprom61, i64 %idxprom63
  %41 = load ptr, ptr %cod_info, align 8
  %42 = load i32, ptr %ch, align 4
  %idxprom65 = sext i32 %42 to i64
  %arrayidx66 = getelementptr inbounds [2 x %struct.III_psy_xmin], ptr %l3_xmin, i64 0, i64 %idxprom65
  %call67 = call i32 @calc_xmin(ptr noundef %36, ptr noundef %arrayidx59, ptr noundef %arrayidx64, ptr noundef %41, ptr noundef nonnull %arrayidx66) #9
  %43 = load ptr, ptr %gfp.addr, align 8
  %44 = load ptr, ptr %xr.addr, align 8
  %45 = load i32, ptr %gr, align 4
  %idxprom68 = sext i32 %45 to i64
  %46 = load i32, ptr %ch, align 4
  %idxprom70 = sext i32 %46 to i64
  %arrayidx71 = getelementptr inbounds [2 x [576 x double]], ptr %44, i64 %idxprom68, i64 %idxprom70
  %idxprom73 = sext i32 %46 to i64
  %arrayidx74 = getelementptr inbounds [2 x i32], ptr %targ_bits, i64 0, i64 %idxprom73
  %47 = load i32, ptr %arrayidx74, align 4
  %idxprom76 = sext i32 %46 to i64
  %arrayidx77 = getelementptr inbounds [2 x %struct.III_psy_xmin], ptr %l3_xmin, i64 0, i64 %idxprom76
  %48 = load ptr, ptr %l3_enc.addr, align 8
  %49 = load i32, ptr %gr, align 4
  %idxprom78 = sext i32 %49 to i64
  %50 = load i32, ptr %ch, align 4
  %idxprom80 = sext i32 %50 to i64
  %arrayidx81 = getelementptr inbounds [2 x [576 x i32]], ptr %48, i64 %idxprom78, i64 %idxprom80
  %51 = load ptr, ptr %scalefac.addr, align 8
  %idxprom83 = sext i32 %49 to i64
  %idxprom85 = sext i32 %50 to i64
  %arrayidx86 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %51, i64 %idxprom83, i64 %idxprom85
  %52 = load ptr, ptr %cod_info, align 8
  %53 = load i32, ptr %ch, align 4
  call void @outer_loop(ptr noundef %43, ptr noundef %arrayidx71, i32 noundef %47, ptr noundef nonnull %noise, ptr noundef nonnull %arrayidx77, ptr noundef %arrayidx81, ptr noundef %arrayidx86, ptr noundef %52, ptr noundef nonnull %xfsf, i32 noundef %53)
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then31
  %54 = load ptr, ptr %gfp.addr, align 8
  %55 = load i32, ptr %gr, align 4
  %56 = load i32, ptr %ch, align 4
  %57 = load ptr, ptr %l3_enc.addr, align 8
  %58 = load ptr, ptr %l3_side.addr, align 8
  %59 = load ptr, ptr %scalefac.addr, align 8
  call void @best_scalefac_store(ptr noundef %54, i32 noundef %55, i32 noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59) #9
  %60 = load ptr, ptr %gfp.addr, align 8
  %use_best_huffman = getelementptr inbounds %struct.lame_global_flags, ptr %60, i64 0, i32 64
  %61 = load i32, ptr %use_best_huffman, align 4
  %cmp89 = icmp eq i32 %61, 1
  br i1 %cmp89, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %if.end88
  %62 = load ptr, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %62, i64 0, i32 6
  %63 = load i32, ptr %block_type, align 8
  %cmp90 = icmp eq i32 %63, 0
  br i1 %cmp90, label %if.then91, label %if.end97

if.then91:                                        ; preds = %land.lhs.true
  %64 = load i32, ptr %gr, align 4
  %65 = load i32, ptr %ch, align 4
  %66 = load ptr, ptr %cod_info, align 8
  %67 = load ptr, ptr %l3_enc.addr, align 8
  %idxprom92 = sext i32 %64 to i64
  %idxprom94 = sext i32 %65 to i64
  %arrayidx95 = getelementptr inbounds [2 x [576 x i32]], ptr %67, i64 %idxprom92, i64 %idxprom94
  call void @best_huffman_divide(i32 noundef %64, i32 noundef %65, ptr noundef %66, ptr noundef %arrayidx95) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %land.lhs.true, %if.end88
  %68 = load ptr, ptr %gfp.addr, align 8
  %69 = load ptr, ptr %cod_info, align 8
  %70 = load ptr, ptr %l3_side.addr, align 8
  %71 = load i32, ptr %mean_bits, align 4
  call void @ResvAdjust(ptr noundef %68, ptr noundef %69, ptr noundef %70, i32 noundef %71) #9
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc, %if.end97
  %storemerge2 = phi i32 [ 0, %if.end97 ], [ %inc, %for.inc ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp99 = icmp slt i32 %storemerge2, 576
  br i1 %cmp99, label %for.body100, label %for.inc116

for.body100:                                      ; preds = %for.cond98
  %72 = load ptr, ptr %xr.addr, align 8
  %73 = load i32, ptr %gr, align 4
  %idxprom101 = sext i32 %73 to i64
  %74 = load i32, ptr %ch, align 4
  %idxprom103 = sext i32 %74 to i64
  %75 = load i32, ptr %i, align 4
  %idxprom105 = sext i32 %75 to i64
  %arrayidx106 = getelementptr inbounds [2 x [576 x double]], ptr %72, i64 %idxprom101, i64 %idxprom103, i64 %idxprom105
  %76 = load double, ptr %arrayidx106, align 8
  %cmp107 = fcmp olt double %76, 0.000000e+00
  br i1 %cmp107, label %if.then108, label %for.inc

if.then108:                                       ; preds = %for.body100
  %77 = load ptr, ptr %l3_enc.addr, align 8
  %78 = load i32, ptr %gr, align 4
  %idxprom109 = sext i32 %78 to i64
  %79 = load i32, ptr %ch, align 4
  %idxprom111 = sext i32 %79 to i64
  %80 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %80 to i64
  %arrayidx114 = getelementptr inbounds [2 x [576 x i32]], ptr %77, i64 %idxprom109, i64 %idxprom111, i64 %idxprom113
  %81 = load i32, ptr %arrayidx114, align 4
  %mul = sub nsw i32 0, %81
  store i32 %mul, ptr %arrayidx114, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body100, %if.then108
  %82 = load i32, ptr %i, align 4
  %inc = add nsw i32 %82, 1
  br label %for.cond98, !llvm.loop !6

for.inc116:                                       ; preds = %for.cond98
  %83 = load i32, ptr %ch, align 4
  %inc117 = add nsw i32 %83, 1
  br label %for.cond15, !llvm.loop !8

for.inc119:                                       ; preds = %for.cond15
  %84 = load i32, ptr %gr, align 4
  %inc120 = add nsw i32 %84, 1
  br label %for.cond, !llvm.loop !9

for.end121:                                       ; preds = %for.cond
  %85 = load ptr, ptr %gfp.addr, align 8
  %86 = load ptr, ptr %l3_side.addr, align 8
  %87 = load i32, ptr %mean_bits, align 4
  call void @ResvFrameEnd(ptr noundef %85, ptr noundef %86, i32 noundef %87) #9
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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %cod_info.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.gr_info, ptr %0, i64 0, i32 20, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr %cod_info.addr, align 8
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 19
  store ptr @nr_of_sfb_block, ptr %sfb_partition_table, align 8
  store i32 0, ptr %3, align 8
  %big_values = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 1
  store i32 0, ptr %big_values, align 4
  %count1 = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 2
  store i32 0, ptr %count1, align 8
  %4 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %4, i64 0, i32 4
  store i32 0, ptr %scalefac_compress, align 8
  %table_select = getelementptr inbounds %struct.gr_info, ptr %4, i64 0, i32 8
  store i32 0, ptr %table_select, align 8
  %arrayidx3 = getelementptr inbounds %struct.gr_info, ptr %4, i64 0, i32 8, i64 1
  store i32 0, ptr %arrayidx3, align 4
  %5 = load ptr, ptr %cod_info.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.gr_info, ptr %5, i64 0, i32 8, i64 2
  store i32 0, ptr %arrayidx5, align 8
  %subblock_gain = getelementptr inbounds %struct.gr_info, ptr %5, i64 0, i32 9
  store i32 0, ptr %subblock_gain, align 4
  %arrayidx8 = getelementptr inbounds %struct.gr_info, ptr %5, i64 0, i32 9, i64 1
  store i32 0, ptr %arrayidx8, align 4
  %6 = load ptr, ptr %cod_info.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.gr_info, ptr %6, i64 0, i32 9, i64 2
  store i32 0, ptr %arrayidx10, align 4
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %6, i64 0, i32 10
  store i32 0, ptr %region0_count, align 8
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %6, i64 0, i32 11
  store i32 0, ptr %region1_count, align 4
  %7 = load ptr, ptr %cod_info.addr, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %7, i64 0, i32 15
  store i32 0, ptr %part2_length, align 4
  %preflag = getelementptr inbounds %struct.gr_info, ptr %7, i64 0, i32 12
  store i32 0, ptr %preflag, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %7, i64 0, i32 13
  store i32 0, ptr %scalefac_scale, align 4
  %8 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 3
  store i32 210, ptr %global_gain, align 4
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 14
  store i32 0, ptr %count1table_select, align 8
  %count1bits = getelementptr inbounds %struct.gr_info, ptr %8, i64 0, i32 18
  store i32 0, ptr %count1bits, align 8
  %9 = load ptr, ptr %gfp.addr, align 8
  %experimentalZ = getelementptr inbounds %struct.lame_global_flags, ptr %9, i64 0, i32 20
  %10 = load i32, ptr %experimentalZ, align 4
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end108, label %if.then

if.then:                                          ; preds = %for.end
  %11 = load ptr, ptr %cod_info.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %11, i64 0, i32 6
  %12 = load i32, ptr %block_type, align 8
  %cmp11 = icmp eq i32 %12, 2
  br i1 %cmp11, label %for.cond13, label %if.end108

for.cond13:                                       ; preds = %if.then, %for.body15
  %storemerge2 = phi i32 [ %inc19, %for.body15 ], [ 0, %if.then ]
  store i32 %storemerge2, ptr %b, align 4
  %cmp14 = icmp slt i32 %storemerge2, 3
  br i1 %cmp14, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond13
  %13 = load i32, ptr %b, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom16
  store double 0.000000e+00, ptr %arrayidx17, align 8
  %14 = load i32, ptr %b, align 4
  %inc19 = add nsw i32 %14, 1
  br label %for.cond13, !llvm.loop !11

for.end20:                                        ; preds = %for.cond13
  store i32 0, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc37, %for.end20
  %storemerge3 = phi i32 [ 0, %for.end20 ], [ %inc38, %for.inc37 ]
  store i32 %storemerge3, ptr %j, align 4
  %cmp22 = icmp slt i32 %storemerge3, 192
  br i1 %cmp22, label %for.cond24, label %for.end39

for.cond24:                                       ; preds = %for.cond21, %for.body26
  %storemerge7 = phi i32 [ %inc35, %for.body26 ], [ 0, %for.cond21 ]
  store i32 %storemerge7, ptr %b, align 4
  %cmp25 = icmp slt i32 %storemerge7, 3
  br i1 %cmp25, label %for.body26, label %for.inc37

for.body26:                                       ; preds = %for.cond24
  %15 = load ptr, ptr %xr.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %15, i64 %idxprom27
  %17 = load double, ptr %arrayidx28, align 8
  %idxprom29 = sext i32 %16 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %15, i64 %idxprom29
  %18 = load double, ptr %arrayidx30, align 8
  %19 = load i32, ptr %b, align 4
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom31
  %20 = load double, ptr %arrayidx32, align 8
  %21 = call double @llvm.fmuladd.f64(double %17, double %18, double %20)
  store double %21, ptr %arrayidx32, align 8
  %22 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, ptr %i, align 4
  %23 = load i32, ptr %b, align 4
  %inc35 = add nsw i32 %23, 1
  br label %for.cond24, !llvm.loop !12

for.inc37:                                        ; preds = %for.cond24
  %24 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %24, 1
  br label %for.cond21, !llvm.loop !13

for.end39:                                        ; preds = %for.cond21
  store double 0x3D719799812DEA11, ptr %mx, align 8
  br label %for.cond40

for.cond40:                                       ; preds = %cond.end, %for.end39
  %storemerge4 = phi i32 [ 0, %for.end39 ], [ %inc49, %cond.end ]
  store i32 %storemerge4, ptr %b, align 4
  %cmp41 = icmp slt i32 %storemerge4, 3
  br i1 %cmp41, label %for.body42, label %for.cond51

for.body42:                                       ; preds = %for.cond40
  %25 = load double, ptr %mx, align 8
  %26 = load i32, ptr %b, align 4
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom43
  %27 = load double, ptr %arrayidx44, align 8
  %cmp45 = fcmp ogt double %25, %27
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body42
  %28 = load double, ptr %mx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body42
  %29 = load i32, ptr %b, align 4
  %idxprom46 = sext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom46
  %30 = load double, ptr %arrayidx47, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %28, %cond.true ], [ %30, %cond.false ]
  store double %cond, ptr %mx, align 8
  %31 = load i32, ptr %b, align 4
  %inc49 = add nsw i32 %31, 1
  br label %for.cond40, !llvm.loop !14

for.cond51:                                       ; preds = %for.cond40, %cond.end61
  %storemerge5 = phi i32 [ %inc66, %cond.end61 ], [ 0, %for.cond40 ]
  store i32 %storemerge5, ptr %b, align 4
  %cmp52 = icmp slt i32 %storemerge5, 3
  br i1 %cmp52, label %for.body53, label %for.cond68

for.body53:                                       ; preds = %for.cond51
  %32 = load i32, ptr %b, align 4
  %idxprom54 = sext i32 %32 to i64
  %arrayidx55 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom54
  %33 = load double, ptr %arrayidx55, align 8
  %cmp56 = fcmp ogt double %33, 0x3D719799812DEA11
  br i1 %cmp56, label %cond.true57, label %cond.end61

cond.true57:                                      ; preds = %for.body53
  %34 = load i32, ptr %b, align 4
  %idxprom58 = sext i32 %34 to i64
  %arrayidx59 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom58
  %35 = load double, ptr %arrayidx59, align 8
  br label %cond.end61

cond.end61:                                       ; preds = %for.body53, %cond.true57
  %cond62 = phi double [ %35, %cond.true57 ], [ 0x3D719799812DEA11, %for.body53 ]
  %36 = load double, ptr %mx, align 8
  %div = fdiv double %cond62, %36
  %37 = load i32, ptr %b, align 4
  %idxprom63 = sext i32 %37 to i64
  %arrayidx64 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom63
  store double %div, ptr %arrayidx64, align 8
  %38 = load i32, ptr %b, align 4
  %inc66 = add nsw i32 %38, 1
  br label %for.cond51, !llvm.loop !15

for.cond68:                                       ; preds = %for.cond51, %for.inc96
  %storemerge6 = phi i32 [ %inc97, %for.inc96 ], [ 0, %for.cond51 ]
  store i32 %storemerge6, ptr %b, align 4
  %cmp69 = icmp slt i32 %storemerge6, 3
  br i1 %cmp69, label %for.body70, label %for.end98

for.body70:                                       ; preds = %for.cond68
  %39 = load i32, ptr %b, align 4
  %idxprom71 = sext i32 %39 to i64
  %arrayidx72 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %idxprom71
  %40 = load double, ptr %arrayidx72, align 8
  %41 = call double @llvm.log.f64(double %40)
  %mul = fmul double %41, -5.000000e-01
  %div73 = fdiv double %mul, 0x3FE62E42FEFA39EF
  %add = fadd double %div73, 5.000000e-01
  %conv = fptosi double %add to i32
  %42 = load ptr, ptr %cod_info.addr, align 8
  %43 = load i32, ptr %b, align 4
  %idxprom75 = sext i32 %43 to i64
  %arrayidx76 = getelementptr inbounds %struct.gr_info, ptr %42, i64 0, i32 9, i64 %idxprom75
  store i32 %conv, ptr %arrayidx76, align 4
  %idxprom78 = sext i32 %43 to i64
  %arrayidx79 = getelementptr inbounds %struct.gr_info, ptr %42, i64 0, i32 9, i64 %idxprom78
  %44 = load i32, ptr %arrayidx79, align 4
  %cmp80 = icmp sgt i32 %44, 2
  br i1 %cmp80, label %if.then82, label %if.end

if.then82:                                        ; preds = %for.body70
  %45 = load ptr, ptr %cod_info.addr, align 8
  %46 = load i32, ptr %b, align 4
  %idxprom84 = sext i32 %46 to i64
  %arrayidx85 = getelementptr inbounds %struct.gr_info, ptr %45, i64 0, i32 9, i64 %idxprom84
  store i32 2, ptr %arrayidx85, align 4
  br label %if.end

if.end:                                           ; preds = %if.then82, %for.body70
  %47 = load ptr, ptr %cod_info.addr, align 8
  %48 = load i32, ptr %b, align 4
  %idxprom87 = sext i32 %48 to i64
  %arrayidx88 = getelementptr inbounds %struct.gr_info, ptr %47, i64 0, i32 9, i64 %idxprom87
  %49 = load i32, ptr %arrayidx88, align 4
  %cmp89 = icmp slt i32 %49, 0
  br i1 %cmp89, label %if.then91, label %for.inc96

if.then91:                                        ; preds = %if.end
  %50 = load ptr, ptr %cod_info.addr, align 8
  %51 = load i32, ptr %b, align 4
  %idxprom93 = sext i32 %51 to i64
  %arrayidx94 = getelementptr inbounds %struct.gr_info, ptr %50, i64 0, i32 9, i64 %idxprom93
  store i32 0, ptr %arrayidx94, align 4
  br label %for.inc96

for.inc96:                                        ; preds = %if.end, %if.then91
  %52 = load i32, ptr %b, align 4
  %inc97 = add nsw i32 %52, 1
  br label %for.cond68, !llvm.loop !16

for.end98:                                        ; preds = %for.cond68
  %53 = load double, ptr %en, align 8
  %arrayidx100 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 1
  %54 = load double, ptr %arrayidx100, align 8
  %add101 = fadd double %53, %54
  %arrayidx102 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 2
  %55 = load double, ptr %arrayidx102, align 8
  %add103 = fadd double %add101, %55
  %cmp104 = fcmp ogt double %add103, 1.000000e-99
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %for.end98
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end98
  store i32 0, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.then, %for.end
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc119, %if.end108
  %storemerge1 = phi i32 [ 0, %if.end108 ], [ %inc120, %for.inc119 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp110 = icmp slt i32 %storemerge1, 576
  br i1 %cmp110, label %for.body112, label %for.end121

for.body112:                                      ; preds = %for.cond109
  %56 = load ptr, ptr %xr.addr, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %57 to i64
  %arrayidx114 = getelementptr inbounds double, ptr %56, i64 %idxprom113
  %58 = load double, ptr %arrayidx114, align 8
  %59 = call double @llvm.fabs.f64(double %58)
  %cmp115 = fcmp ogt double %59, 1.000000e-99
  br i1 %cmp115, label %if.then117, label %for.inc119

if.then117:                                       ; preds = %for.body112
  store i32 1, ptr %retval, align 4
  br label %return

for.inc119:                                       ; preds = %for.body112
  %60 = load i32, ptr %i, align 4
  %inc120 = add nsw i32 %60, 1
  br label %for.cond109, !llvm.loop !17

for.end121:                                       ; preds = %for.cond109
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end121, %if.then117, %if.else, %if.then106
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
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
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store i32 %targ_bits, ptr %targ_bits.addr, align 4
  store ptr %best_noise, ptr %best_noise.addr, align 8
  store ptr %l3_xmin, ptr %l3_xmin.addr, align 8
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
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
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %try_scale, align 4
  %1 = load i32, ptr %iteration, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %iteration, align 4
  %2 = load i32, ptr %compute_stepsize, align 4
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, ptr %compute_stepsize, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %scalefac_w, i8 0, i64 244, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %storemerge5 = phi i32 [ 0, %if.then ], [ %inc4, %for.body ]
  store i32 %storemerge5, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge5, 576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %xr.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, ptr %3, i64 %idxprom
  %5 = load double, ptr %arrayidx, align 8
  %6 = call double @llvm.fabs.f64(double %5)
  %7 = call double @llvm.sqrt.f64(double %6)
  %mul = fmul double %7, %6
  %8 = call double @llvm.sqrt.f64(double %mul)
  %9 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds [576 x double], ptr %xrpow, i64 0, i64 %idxprom2
  store double %8, ptr %arrayidx3, align 8
  %10 = load i32, ptr %i, align 4
  %inc4 = add nsw i32 %10, 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %gfp.addr, align 8
  %12 = load i32, ptr %targ_bits.addr, align 4
  %13 = load i32, ptr %ch.addr, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr @outer_loop.OldValue, i64 0, i64 %idxprom5
  %14 = load i32, ptr %arrayidx6, align 4
  %15 = load ptr, ptr %cod_info.addr, align 8
  %call = call i32 @bin_search_StepSize2(ptr noundef %11, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %l3_enc_w, ptr noundef nonnull %xrpow, ptr noundef %15) #9
  store i32 %call, ptr %bits_found, align 4
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %global_gain, align 4
  %17 = load i32, ptr %ch.addr, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr @outer_loop.OldValue, i64 0, i64 %idxprom8
  store i32 %16, ptr %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %while.body
  %18 = load i32, ptr %targ_bits.addr, align 4
  %19 = load ptr, ptr %cod_info.addr, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %19, i64 0, i32 15
  %20 = load i32, ptr %part2_length, align 4
  %sub = sub i32 %18, %20
  store i32 %sub, ptr %huff_bits, align 4
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %21 = load i32, ptr %iteration, align 4
  %cmp12.not = icmp eq i32 %21, 1
  br i1 %cmp12.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then11
  call void @__assert_rtn(ptr noundef nonnull @__func__.outer_loop, ptr noundef nonnull @.str, i32 noundef 805, ptr noundef nonnull @.str.5) #10
  unreachable

cond.end:                                         ; preds = %if.then11
  store i32 0, ptr %notdone, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end
  %22 = load i32, ptr %iteration, align 4
  %cmp14 = icmp eq i32 %22, 1
  br i1 %cmp14, label %if.then16, label %if.else27

if.then16:                                        ; preds = %if.else
  %23 = load i32, ptr %bits_found, align 4
  %24 = load i32, ptr %huff_bits, align 4
  %cmp17 = icmp sgt i32 %23, %24
  br i1 %cmp17, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.then16
  %25 = load ptr, ptr %cod_info.addr, align 8
  %global_gain20 = getelementptr inbounds %struct.gr_info, ptr %25, i64 0, i32 3
  %26 = load i32, ptr %global_gain20, align 4
  %inc21 = add i32 %26, 1
  store i32 %inc21, ptr %global_gain20, align 4
  %27 = load ptr, ptr %gfp.addr, align 8
  %28 = load i32, ptr %huff_bits, align 4
  %29 = load ptr, ptr %cod_info.addr, align 8
  %call24 = call i32 @inner_loop(ptr noundef %27, ptr noundef nonnull %xrpow, ptr noundef nonnull %l3_enc_w, i32 noundef %28, ptr noundef %29) #9
  br label %if.end31

if.else25:                                        ; preds = %if.then16
  %30 = load i32, ptr %bits_found, align 4
  br label %if.end31

if.else27:                                        ; preds = %if.else
  %31 = load ptr, ptr %gfp.addr, align 8
  %32 = load i32, ptr %huff_bits, align 4
  %33 = load ptr, ptr %cod_info.addr, align 8
  %call30 = call i32 @inner_loop(ptr noundef %31, ptr noundef nonnull %xrpow, ptr noundef nonnull %l3_enc_w, i32 noundef %32, ptr noundef %33) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then19, %if.else25, %if.else27
  %storemerge4 = phi i32 [ %call30, %if.else27 ], [ %30, %if.else25 ], [ %call24, %if.then19 ]
  %34 = load ptr, ptr %cod_info.addr, align 8
  store i32 %storemerge4, ptr %34, align 8
  %35 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping = getelementptr inbounds %struct.lame_global_flags, ptr %35, i64 0, i32 61
  %36 = load i32, ptr %noise_shaping, align 8
  %cmp32 = icmp eq i32 %36, 0
  br i1 %cmp32, label %if.end40, label %if.else35

if.else35:                                        ; preds = %if.end31
  %37 = load ptr, ptr %xr.addr, align 8
  %38 = load ptr, ptr %cod_info.addr, align 8
  %39 = load ptr, ptr %l3_xmin.addr, align 8
  %call39 = call i32 @calc_noise1(ptr noundef %37, ptr noundef nonnull %l3_enc_w, ptr noundef %38, ptr noundef nonnull %xfsf_w, ptr noundef nonnull %distort, ptr noundef %39, ptr noundef nonnull %scalefac_w, ptr noundef nonnull %over_noise, ptr noundef nonnull %tot_noise, ptr noundef nonnull %max_noise)
  br label %if.end40

if.end40:                                         ; preds = %if.end31, %if.else35
  %storemerge = phi i32 [ %call39, %if.else35 ], [ 0, %if.end31 ]
  store i32 %storemerge, ptr %over, align 4
  %40 = load i32, ptr %iteration, align 4
  %cmp41 = icmp eq i32 %40, 1
  br i1 %cmp41, label %if.end46, label %if.else44

if.else44:                                        ; preds = %if.end40
  %41 = load ptr, ptr %gfp.addr, align 8
  %experimentalX = getelementptr inbounds %struct.lame_global_flags, ptr %41, i64 0, i32 18
  %42 = load i32, ptr %experimentalX, align 4
  %43 = load i32, ptr %best_over, align 4
  %44 = load double, ptr %best_tot_noise, align 8
  %45 = load double, ptr %best_over_noise, align 8
  %46 = load double, ptr %best_max_noise, align 8
  %47 = load i32, ptr %over, align 4
  %48 = load double, ptr %tot_noise, align 8
  %49 = load double, ptr %over_noise, align 8
  %50 = load double, ptr %max_noise, align 8
  %call45 = call i32 @quant_compare(i32 noundef %42, i32 noundef %43, double noundef %44, double noundef %45, double noundef %46, i32 noundef %47, double noundef %48, double noundef %49, double noundef %50)
  br label %if.end46

if.end46:                                         ; preds = %if.end40, %if.else44
  %storemerge1 = phi i32 [ %call45, %if.else44 ], [ 1, %if.end40 ]
  %tobool47.not = icmp eq i32 %storemerge1, 0
  br i1 %tobool47.not, label %if.end53, label %if.then48

if.then48:                                        ; preds = %if.end46
  %51 = load i32, ptr %over, align 4
  store i32 %51, ptr %best_over, align 4
  %52 = load double, ptr %max_noise, align 8
  store double %52, ptr %best_max_noise, align 8
  %53 = load double, ptr %over_noise, align 8
  store double %53, ptr %best_over_noise, align 8
  %54 = load double, ptr %tot_noise, align 8
  store double %54, ptr %best_tot_noise, align 8
  %55 = load ptr, ptr %scalefac.addr, align 8
  %56 = call i64 @llvm.objectsize.i64.p0(ptr %55, i1 false, i1 true, i1 false)
  %call49 = call ptr @__memcpy_chk(ptr noundef %55, ptr noundef nonnull %scalefac_w, i64 noundef 244, i64 noundef %56) #9
  %57 = load ptr, ptr %l3_enc.addr, align 8
  %58 = call i64 @llvm.objectsize.i64.p0(ptr %57, i1 false, i1 true, i1 false)
  %call51 = call ptr @__memcpy_chk(ptr noundef %57, ptr noundef nonnull %l3_enc_w, i64 noundef 2304, i64 noundef %58) #9
  %59 = load ptr, ptr %cod_info.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %save_cod_info, ptr noundef nonnull align 8 dereferenceable(120) %59, i64 120, i1 false)
  br label %if.end53

if.end53:                                         ; preds = %if.end46, %if.then48, %cond.end
  %60 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping_stop = getelementptr inbounds %struct.lame_global_flags, ptr %60, i64 0, i32 62
  %61 = load i32, ptr %noise_shaping_stop, align 4
  %cmp54 = icmp eq i32 %61, 0
  %62 = load i32, ptr %over, align 4
  %cmp57 = icmp eq i32 %62, 0
  %or.cond = select i1 %cmp54, i1 %cmp57, i1 false
  br i1 %or.cond, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end53
  store i32 0, ptr %notdone, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end53
  %63 = load i32, ptr %notdone, align 4
  %tobool62.not = icmp eq i32 %63, 0
  br i1 %tobool62.not, label %if.end86, label %if.then63

if.then63:                                        ; preds = %if.end61
  %64 = load ptr, ptr %cod_info.addr, align 8
  call void @amp_scalefac_bands(ptr noundef nonnull %xrpow, ptr noundef %64, ptr noundef nonnull %scalefac_w, ptr noundef nonnull %distort)
  %call66 = call i32 @loop_break(ptr noundef nonnull %scalefac_w, ptr noundef %64) #9
  store i32 %call66, ptr %status, align 4
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end82

if.then69:                                        ; preds = %if.then63
  %65 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %65, i64 0, i32 43
  %66 = load i32, ptr %version, align 8
  %cmp70 = icmp eq i32 %66, 1
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.then69
  %67 = load ptr, ptr %cod_info.addr, align 8
  %call73 = call i32 @scale_bitcount(ptr noundef nonnull %scalefac_w, ptr noundef %67) #9
  br label %if.end76

if.else74:                                        ; preds = %if.then69
  %68 = load ptr, ptr %cod_info.addr, align 8
  %call75 = call i32 @scale_bitcount_lsf(ptr noundef nonnull %scalefac_w, ptr noundef %68) #9
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then72
  %storemerge2 = phi i32 [ %call75, %if.else74 ], [ %call73, %if.then72 ]
  store i32 %storemerge2, ptr %status, align 4
  %tobool77.not = icmp eq i32 %storemerge2, 0
  br i1 %tobool77.not, label %if.end82, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end76
  %69 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %69, i64 0, i32 13
  %70 = load i32, ptr %scalefac_scale, align 4
  %cmp78 = icmp eq i32 %70, 0
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %land.lhs.true
  store i32 1, ptr %try_scale, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end76, %land.lhs.true, %if.then80, %if.then63
  %71 = load i32, ptr %status, align 4
  %tobool83.not = icmp eq i32 %71, 0
  %lnot.ext85 = zext i1 %tobool83.not to i32
  store i32 %lnot.ext85, ptr %notdone, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end82, %if.end61
  %72 = load i32, ptr %try_scale, align 4
  %tobool87.not = icmp eq i32 %72, 0
  br i1 %tobool87.not, label %if.end93, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %if.end86
  %73 = load ptr, ptr %gfp.addr, align 8
  %experimentalY = getelementptr inbounds %struct.lame_global_flags, ptr %73, i64 0, i32 19
  %74 = load i32, ptr %experimentalY, align 8
  %tobool89.not = icmp eq i32 %74, 0
  br i1 %tobool89.not, label %if.end93, label %if.then90

if.then90:                                        ; preds = %land.lhs.true88
  %75 = load ptr, ptr %gfp.addr, align 8
  %76 = load ptr, ptr %xr.addr, align 8
  %77 = load ptr, ptr %cod_info.addr, align 8
  %call91 = call i32 @init_outer_loop(ptr noundef %75, ptr noundef %76, ptr noundef %77)
  store i32 1, ptr %compute_stepsize, align 4
  store i32 1, ptr %notdone, align 4
  %scalefac_scale92 = getelementptr inbounds %struct.gr_info, ptr %77, i64 0, i32 13
  store i32 1, ptr %scalefac_scale92, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %land.lhs.true88, %if.end86
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %78 = load ptr, ptr %cod_info.addr, align 8
  %79 = call i64 @llvm.objectsize.i64.p0(ptr %78, i1 false, i1 true, i1 false)
  %call94 = call ptr @__memcpy_chk(ptr noundef %78, ptr noundef nonnull %save_cod_info, i64 noundef 120, i64 noundef %79) #9
  %part2_length95 = getelementptr inbounds %struct.gr_info, ptr %78, i64 0, i32 15
  %80 = load i32, ptr %part2_length95, align 4
  %81 = load i32, ptr %78, align 8
  %add = add i32 %81, %80
  store i32 %add, ptr %78, align 8
  %82 = load ptr, ptr %cod_info.addr, align 8
  %global_gain97 = getelementptr inbounds %struct.gr_info, ptr %82, i64 0, i32 3
  %83 = load i32, ptr %global_gain97, align 4
  %cmp98 = icmp ugt i32 %83, 255
  br i1 %cmp98, label %cond.true104, label %cond.end106

cond.true104:                                     ; preds = %while.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.outer_loop, ptr noundef nonnull @.str, i32 noundef 891, ptr noundef nonnull @.str.6) #10
  unreachable

cond.end106:                                      ; preds = %while.end
  %84 = load i32, ptr %best_over, align 4
  %conv107 = sitofp i32 %84 to double
  %85 = load ptr, ptr %best_noise.addr, align 8
  store double %conv107, ptr %85, align 8
  %86 = load double, ptr %best_max_noise, align 8
  %arrayidx109 = getelementptr inbounds double, ptr %85, i64 1
  store double %86, ptr %arrayidx109, align 8
  %87 = load double, ptr %best_over_noise, align 8
  %arrayidx110 = getelementptr inbounds double, ptr %85, i64 2
  store double %87, ptr %arrayidx110, align 8
  %88 = load double, ptr %best_tot_noise, align 8
  %89 = load ptr, ptr %best_noise.addr, align 8
  %arrayidx111 = getelementptr inbounds double, ptr %89, i64 3
  store double %88, ptr %arrayidx111, align 8
  ret void
}

declare void @best_scalefac_store(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @best_huffman_divide(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare void @ResvAdjust(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @ResvFrameEnd(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @set_masking_lower(i32 noundef %VBR_q, i32 noundef %nbits) #0 {
entry:
  %masking_lower_db = alloca float, align 4
  %mul = shl nsw i32 %VBR_q, 1
  %add = add nsw i32 %mul, -6
  %conv = sitofp i32 %add to float
  store float %conv, ptr %masking_lower_db, align 4
  %sub = add nsw i32 %nbits, -125
  %conv1 = sitofp i32 %sub to double
  %div = fdiv double %conv1, 2.375000e+03
  %conv2 = fptrunc double %div to float
  %sub3 = fadd float %conv2, -1.000000e+00
  %mul4 = fmul float %sub3, 4.000000e+00
  %0 = load float, ptr %masking_lower_db, align 4
  %add5 = fadd float %0, %mul4
  store float %add5, ptr %masking_lower_db, align 4
  %div6 = fdiv float %add5, 1.000000e+01
  %conv7 = fpext float %div6 to double
  %__exp10 = call double @__exp10(double %conv7) #9
  %conv8 = fptrunc double %__exp10 to float
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
  call void @iteration_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 50
  store i32 1, ptr %bitrate_index, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %3 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index1 = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 50
  %4 = load i32, ptr %bitrate_index1, align 4
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 48
  %5 = load i32, ptr %VBR_max_bitrate, align 4
  %cmp.not = icmp sgt i32 %4, %5
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %gfp.addr, align 8
  call void @getframebits(ptr noundef %6, ptr noundef nonnull %bitsPerFrame, ptr noundef nonnull %mean_bits) #9
  %bitrate_index2 = getelementptr inbounds %struct.lame_global_flags, ptr %6, i64 0, i32 50
  %7 = load i32, ptr %bitrate_index2, align 4
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %6, i64 0, i32 47
  %8 = load i32, ptr %VBR_min_bitrate, align 8
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %mean_bits, align 4
  %10 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 46
  %11 = load i32, ptr %stereo, align 4
  %div = sdiv i32 %9, %11
  store i32 %div, ptr %min_mean_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load ptr, ptr %gfp.addr, align 8
  %13 = load ptr, ptr %l3_side.addr, align 8
  %14 = load i32, ptr %mean_bits, align 4
  %15 = load i32, ptr %bitsPerFrame, align 4
  %call = call i32 @ResvFrameBegin(ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15) #9
  %bitrate_index4 = getelementptr inbounds %struct.lame_global_flags, ptr %12, i64 0, i32 50
  %16 = load i32, ptr %bitrate_index4, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom
  store i32 %call, ptr %arrayidx, align 4
  %17 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index5 = getelementptr inbounds %struct.lame_global_flags, ptr %17, i64 0, i32 50
  %18 = load i32, ptr %bitrate_index5, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %bitrate_index5, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate6 = getelementptr inbounds %struct.lame_global_flags, ptr %19, i64 0, i32 48
  %20 = load i32, ptr %VBR_max_bitrate6, align 4
  %bitrate_index7 = getelementptr inbounds %struct.lame_global_flags, ptr %19, i64 0, i32 50
  store i32 %20, ptr %bitrate_index7, align 4
  store i32 0, ptr %analog_silence, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc274, %for.end
  %storemerge = phi i32 [ 0, %for.end ], [ %inc275, %for.inc274 ]
  store i32 %storemerge, ptr %gr, align 4
  %21 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %21, i64 0, i32 45
  %22 = load i32, ptr %mode_gr, align 8
  %cmp9 = icmp slt i32 %storemerge, %22
  br i1 %cmp9, label %for.body10, label %for.end276

for.body10:                                       ; preds = %for.cond8
  %23 = load ptr, ptr %gfp.addr, align 8
  %stereo11 = getelementptr inbounds %struct.lame_global_flags, ptr %23, i64 0, i32 46
  %24 = load i32, ptr %stereo11, align 4
  store i32 %24, ptr %num_chan, align 4
  %25 = load i32, ptr @reduce_sidechannel, align 4
  %tobool.not = icmp eq i32 %25, 0
  %spec.store.select = select i1 %tobool.not, i32 %24, i32 1
  store i32 %spec.store.select, ptr %num_chan, align 4
  %26 = load i32, ptr @convert_mdct, align 4
  %tobool14.not = icmp eq i32 %26, 0
  br i1 %tobool14.not, label %if.end21, label %if.then15

if.then15:                                        ; preds = %for.body10
  %27 = load ptr, ptr %xr.addr, align 8
  %28 = load i32, ptr %gr, align 4
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds [2 x [576 x double]], ptr %27, i64 %idxprom16
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds [2 x [576 x double]], ptr %27, i64 %idxprom18
  call void @ms_convert(ptr noundef %arrayidx17, ptr noundef %arrayidx19) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %for.body10
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc271, %if.end21
  %storemerge13 = phi i32 [ 0, %if.end21 ], [ %inc272, %for.inc271 ]
  store i32 %storemerge13, ptr %ch, align 4
  %29 = load i32, ptr %num_chan, align 4
  %cmp23 = icmp slt i32 %storemerge13, %29
  br i1 %cmp23, label %for.body24, label %for.inc274

for.body24:                                       ; preds = %for.cond22
  %30 = load ptr, ptr %l3_side.addr, align 8
  %31 = load i32, ptr %gr, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds %struct.III_side_info_t, ptr %30, i64 0, i32 4, i64 %idxprom26
  %32 = load i32, ptr %ch, align 4
  %idxprom29 = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx27, i64 0, i64 %idxprom29
  store ptr %arrayidx30, ptr %cod_info, align 8
  %33 = load i32, ptr %min_mean_bits, align 4
  %cmp31 = icmp slt i32 %33, 125
  %34 = load i32, ptr %min_mean_bits, align 4
  %cond = select i1 %cmp31, i32 125, i32 %34
  store i32 %cond, ptr %min_bits, align 4
  %35 = load ptr, ptr %gfp.addr, align 8
  %36 = load ptr, ptr %xr.addr, align 8
  %37 = load i32, ptr %gr, align 4
  %idxprom32 = sext i32 %37 to i64
  %38 = load i32, ptr %ch, align 4
  %idxprom34 = sext i32 %38 to i64
  %arrayidx35 = getelementptr inbounds [2 x [576 x double]], ptr %36, i64 %idxprom32, i64 %idxprom34
  %39 = load ptr, ptr %cod_info, align 8
  %call37 = call i32 @init_outer_loop(ptr noundef %35, ptr noundef %arrayidx35, ptr noundef %39)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end64

if.then39:                                        ; preds = %for.body24
  %40 = load ptr, ptr %scalefac.addr, align 8
  %41 = load i32, ptr %gr, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load i32, ptr %ch, align 4
  %idxprom42 = sext i32 %42 to i64
  %arrayidx43 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %40, i64 %idxprom40, i64 %idxprom42
  %idxprom44 = sext i32 %41 to i64
  %idxprom46 = sext i32 %42 to i64
  %arrayidx47 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %40, i64 %idxprom44, i64 %idxprom46
  %43 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx47, i1 false, i1 true, i1 false)
  %call48 = call ptr @__memset_chk(ptr noundef %arrayidx43, i32 noundef 0, i64 noundef 244, i64 noundef %43) #9
  %44 = load ptr, ptr %l3_enc.addr, align 8
  %45 = load i32, ptr %gr, align 4
  %idxprom49 = sext i32 %45 to i64
  %46 = load i32, ptr %ch, align 4
  %idxprom51 = sext i32 %46 to i64
  %arrayidx52 = getelementptr inbounds [2 x [576 x i32]], ptr %44, i64 %idxprom49, i64 %idxprom51
  %idxprom54 = sext i32 %45 to i64
  %idxprom56 = sext i32 %46 to i64
  %arrayidx57 = getelementptr inbounds [2 x [576 x i32]], ptr %44, i64 %idxprom54, i64 %idxprom56
  %47 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx57, i1 false, i1 true, i1 false)
  %call59 = call ptr @__memset_chk(ptr noundef %arrayidx52, i32 noundef 0, i64 noundef 2304, i64 noundef %47) #9
  %48 = load i32, ptr %gr, align 4
  %idxprom60 = sext i32 %48 to i64
  %49 = load i32, ptr %ch, align 4
  %idxprom62 = sext i32 %49 to i64
  %arrayidx63 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom60, i64 %idxprom62
  store i32 0, ptr %arrayidx63, align 4
  store i32 1, ptr %analog_silence, align 4
  br label %for.inc271

if.end64:                                         ; preds = %for.body24
  %50 = load ptr, ptr %cod_info, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %clean_cod_info, ptr noundef nonnull align 8 dereferenceable(120) %50, i64 120, i1 false)
  %51 = load ptr, ptr %gfp.addr, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %51, i64 0, i32 22
  %52 = load i32, ptr %VBR_q, align 4
  %mul.i = shl nsw i32 %52, 1
  %add.i = add nsw i32 %mul.i, -6
  %conv.i = sitofp i32 %add.i to float
  %div6.i = fdiv float %conv.i, 1.000000e+01
  %conv7.i = fpext float %div6.i to double
  %__exp10 = call double @__exp10(double %conv7.i) #9
  %conv8.i = fptrunc double %__exp10 to float
  store float %conv8.i, ptr @masking_lower, align 4
  %53 = load ptr, ptr %gfp.addr, align 8
  %54 = load ptr, ptr %xr.addr, align 8
  %55 = load i32, ptr %gr, align 4
  %idxprom65 = sext i32 %55 to i64
  %56 = load i32, ptr %ch, align 4
  %idxprom67 = sext i32 %56 to i64
  %arrayidx68 = getelementptr inbounds [2 x [576 x double]], ptr %54, i64 %idxprom65, i64 %idxprom67
  %57 = load ptr, ptr %ratio.addr, align 8
  %idxprom70 = sext i32 %55 to i64
  %idxprom72 = sext i32 %56 to i64
  %arrayidx73 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %57, i64 %idxprom70, i64 %idxprom72
  %58 = load ptr, ptr %cod_info, align 8
  %call74 = call i32 @calc_xmin(ptr noundef %53, ptr noundef %arrayidx68, ptr noundef %arrayidx73, ptr noundef %58, ptr noundef nonnull %l3_xmin) #9
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end64
  store i32 1, ptr %analog_silence, align 4
  store i32 125, ptr %min_bits, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end64
  %59 = load ptr, ptr %cod_info, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %59, i64 0, i32 6
  %60 = load i32, ptr %block_type, align 8
  %cmp78 = icmp eq i32 %60, 2
  br i1 %cmp78, label %if.then79, label %if.end100

if.then79:                                        ; preds = %if.end77
  %61 = load ptr, ptr %pe.addr, align 8
  %62 = load i32, ptr %gr, align 4
  %idxprom80 = sext i32 %62 to i64
  %63 = load i32, ptr %ch, align 4
  %idxprom82 = sext i32 %63 to i64
  %arrayidx83 = getelementptr inbounds [2 x double], ptr %61, i64 %idxprom80, i64 %idxprom82
  %64 = load double, ptr %arrayidx83, align 8
  %cmp84 = fcmp olt double %64, 1.100000e+03
  br i1 %cmp84, label %cond.end91, label %cond.false86

cond.false86:                                     ; preds = %if.then79
  %65 = load ptr, ptr %pe.addr, align 8
  %66 = load i32, ptr %gr, align 4
  %idxprom87 = sext i32 %66 to i64
  %67 = load i32, ptr %ch, align 4
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds [2 x double], ptr %65, i64 %idxprom87, i64 %idxprom89
  %68 = load double, ptr %arrayidx90, align 8
  br label %cond.end91

cond.end91:                                       ; preds = %if.then79, %cond.false86
  %cond92 = phi double [ %68, %cond.false86 ], [ 1.100000e+03, %if.then79 ]
  %69 = load i32, ptr %min_bits, align 4
  %conv = sitofp i32 %69 to double
  %add = fadd double %cond92, %conv
  %conv93 = fptosi double %add to i32
  store i32 %conv93, ptr %min_bits, align 4
  %cmp94 = icmp slt i32 %conv93, 1800
  %70 = load i32, ptr %min_bits, align 4
  %cond99 = select i1 %cmp94, i32 %70, i32 1800
  store i32 %cond99, ptr %min_bits, align 4
  br label %if.end100

if.end100:                                        ; preds = %cond.end91, %if.end77
  %71 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate101 = getelementptr inbounds %struct.lame_global_flags, ptr %71, i64 0, i32 48
  %72 = load i32, ptr %VBR_max_bitrate101, align 4
  %idxprom102 = sext i32 %72 to i64
  %arrayidx103 = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom102
  %73 = load i32, ptr %arrayidx103, align 4
  %stereo104 = getelementptr inbounds %struct.lame_global_flags, ptr %71, i64 0, i32 46
  %74 = load i32, ptr %stereo104, align 4
  %75 = load ptr, ptr %gfp.addr, align 8
  %mode_gr105 = getelementptr inbounds %struct.lame_global_flags, ptr %75, i64 0, i32 45
  %76 = load i32, ptr %mode_gr105, align 8
  %mul = mul nsw i32 %74, %76
  %div106 = sdiv i32 %73, %mul
  %add107 = add nsw i32 %div106, 1200
  store i32 %add107, ptr %max_bits, align 4
  %cmp108 = icmp slt i32 %div106, 1300
  %77 = load i32, ptr %max_bits, align 4
  %cond113 = select i1 %cmp108, i32 %77, i32 2500
  store i32 %cond113, ptr %max_bits, align 4
  %78 = load i32, ptr %min_bits, align 4
  %cmp114 = icmp sgt i32 %cond113, %78
  %79 = load i32, ptr %max_bits, align 4
  %80 = load i32, ptr %min_bits, align 4
  %cond119 = select i1 %cmp114, i32 %79, i32 %80
  store i32 %cond119, ptr %max_bits, align 4
  %81 = load i32, ptr %min_bits, align 4
  %sub = sub nsw i32 %cond119, %81
  %div120 = sdiv i32 %sub, 4
  store i32 %div120, ptr %dbits, align 4
  %add121 = add nsw i32 %cond119, %81
  %div122 = sdiv i32 %add121, 2
  store i32 %div122, ptr %this_bits, align 4
  %82 = load i32, ptr %max_bits, align 4
  %add123 = add nsw i32 %82, 1
  store i32 %add123, ptr %real_bits, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end100
  %83 = load i32, ptr %this_bits, align 4
  %84 = load i32, ptr %min_bits, align 4
  %cmp124.not = icmp slt i32 %83, %84
  br i1 %cmp124.not, label %cond.true128, label %cond.end130

cond.true128:                                     ; preds = %do.body
  call void @__assert_rtn(ptr noundef nonnull @__func__.VBR_iteration_loop, ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #10
  unreachable

cond.end130:                                      ; preds = %do.body
  %85 = load i32, ptr %this_bits, align 4
  %86 = load i32, ptr %max_bits, align 4
  %cmp131.not = icmp sgt i32 %85, %86
  br i1 %cmp131.not, label %cond.true137, label %cond.end139

cond.true137:                                     ; preds = %cond.end130
  call void @__assert_rtn(ptr noundef nonnull @__func__.VBR_iteration_loop, ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @.str.2) #10
  unreachable

cond.end139:                                      ; preds = %cond.end130
  %87 = load i32, ptr %this_bits, align 4
  %88 = load i32, ptr %real_bits, align 4
  %cmp140.not = icmp slt i32 %87, %88
  br i1 %cmp140.not, label %if.end145, label %if.then142

if.then142:                                       ; preds = %cond.end139
  %89 = load i32, ptr %dbits, align 4
  %90 = load i32, ptr %this_bits, align 4
  %sub143 = sub nsw i32 %90, %89
  store i32 %sub143, ptr %this_bits, align 4
  br label %do.cond

if.end145:                                        ; preds = %cond.end139
  store double 0.000000e+00, ptr %targ_noise, align 8
  %arrayidx147 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  store double 0.000000e+00, ptr %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 3
  store double 0.000000e+00, ptr %arrayidx149, align 8
  %91 = load double, ptr %targ_noise, align 8
  %cmp151 = fcmp olt double %91, 0.000000e+00
  %92 = load double, ptr %targ_noise, align 8
  %cond157 = select i1 %cmp151, double 0.000000e+00, double %92
  store double %cond157, ptr %targ_noise, align 8
  %arrayidx159 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  %93 = load double, ptr %arrayidx159, align 8
  %cmp160 = fcmp olt double %93, 0.000000e+00
  %arrayidx164 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  %94 = load double, ptr %arrayidx164, align 8
  %cond166 = select i1 %cmp160, double 0.000000e+00, double %94
  %arrayidx167 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  store double %cond166, ptr %arrayidx167, align 8
  %95 = load ptr, ptr %cod_info, align 8
  %96 = call i64 @llvm.objectsize.i64.p0(ptr %95, i1 false, i1 true, i1 false)
  %call168 = call ptr @__memcpy_chk(ptr noundef %95, ptr noundef nonnull %clean_cod_info, i64 noundef 120, i64 noundef %96) #9
  %97 = load ptr, ptr %gfp.addr, align 8
  %VBR_q169 = getelementptr inbounds %struct.lame_global_flags, ptr %97, i64 0, i32 22
  %98 = load i32, ptr %VBR_q169, align 4
  %99 = load i32, ptr %this_bits, align 4
  call void @set_masking_lower(i32 noundef %98, i32 noundef %99)
  %100 = load ptr, ptr %xr.addr, align 8
  %101 = load i32, ptr %gr, align 4
  %idxprom170 = sext i32 %101 to i64
  %102 = load i32, ptr %ch, align 4
  %idxprom172 = sext i32 %102 to i64
  %arrayidx173 = getelementptr inbounds [2 x [576 x double]], ptr %100, i64 %idxprom170, i64 %idxprom172
  %103 = load ptr, ptr %ratio.addr, align 8
  %idxprom175 = sext i32 %101 to i64
  %idxprom177 = sext i32 %102 to i64
  %arrayidx178 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %103, i64 %idxprom175, i64 %idxprom177
  %104 = load ptr, ptr %cod_info, align 8
  %call179 = call i32 @calc_xmin(ptr noundef %97, ptr noundef %arrayidx173, ptr noundef %arrayidx178, ptr noundef %104, ptr noundef nonnull %l3_xmin) #9
  %105 = load ptr, ptr %gfp.addr, align 8
  %106 = load ptr, ptr %xr.addr, align 8
  %107 = load i32, ptr %gr, align 4
  %idxprom180 = sext i32 %107 to i64
  %108 = load i32, ptr %ch, align 4
  %idxprom182 = sext i32 %108 to i64
  %arrayidx183 = getelementptr inbounds [2 x [576 x double]], ptr %106, i64 %idxprom180, i64 %idxprom182
  %109 = load i32, ptr %this_bits, align 4
  %110 = load ptr, ptr %l3_enc.addr, align 8
  %111 = load i32, ptr %gr, align 4
  %idxprom186 = sext i32 %111 to i64
  %112 = load i32, ptr %ch, align 4
  %idxprom188 = sext i32 %112 to i64
  %arrayidx189 = getelementptr inbounds [2 x [576 x i32]], ptr %110, i64 %idxprom186, i64 %idxprom188
  %113 = load ptr, ptr %scalefac.addr, align 8
  %idxprom191 = sext i32 %111 to i64
  %idxprom193 = sext i32 %112 to i64
  %arrayidx194 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %113, i64 %idxprom191, i64 %idxprom193
  %114 = load ptr, ptr %cod_info, align 8
  %115 = load i32, ptr %ch, align 4
  call void @outer_loop(ptr noundef %105, ptr noundef %arrayidx183, i32 noundef %109, ptr noundef nonnull %noise, ptr noundef nonnull %l3_xmin, ptr noundef %arrayidx189, ptr noundef %arrayidx194, ptr noundef %114, ptr noundef nonnull %xfsf, i32 noundef %115)
  %116 = load double, ptr %targ_noise, align 8
  %conv197 = fptosi double %116 to i32
  %arrayidx198 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 3
  %117 = load double, ptr %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 2
  %118 = load double, ptr %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds [4 x double], ptr %targ_noise, i64 0, i64 1
  %119 = load double, ptr %arrayidx200, align 8
  %120 = load double, ptr %noise, align 8
  %conv202 = fptosi double %120 to i32
  %arrayidx203 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 3
  %121 = load double, ptr %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 2
  %122 = load double, ptr %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 1
  %123 = load double, ptr %arrayidx205, align 8
  %call206 = call i32 @VBR_compare(i32 noundef %conv197, double noundef %117, double noundef %118, double noundef %119, i32 noundef %conv202, double noundef %121, double noundef %122, double noundef %123)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.else, label %if.then208

if.then208:                                       ; preds = %if.end145
  %124 = load ptr, ptr %cod_info, align 8
  %125 = load i32, ptr %124, align 8
  store i32 %125, ptr %real_bits, align 4
  %126 = load ptr, ptr %scalefac.addr, align 8
  %127 = load i32, ptr %gr, align 4
  %idxprom209 = sext i32 %127 to i64
  %128 = load i32, ptr %ch, align 4
  %idxprom211 = sext i32 %128 to i64
  %arrayidx212 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %126, i64 %idxprom209, i64 %idxprom211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %bst_scalefac, ptr noundef nonnull align 4 dereferenceable(244) %arrayidx212, i64 244, i1 false)
  %129 = load ptr, ptr %l3_enc.addr, align 8
  %130 = load i32, ptr %gr, align 4
  %idxprom214 = sext i32 %130 to i64
  %131 = load i32, ptr %ch, align 4
  %idxprom216 = sext i32 %131 to i64
  %arrayidx217 = getelementptr inbounds [2 x [576 x i32]], ptr %129, i64 %idxprom214, i64 %idxprom216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %bst_l3_enc, ptr noundef nonnull align 4 dereferenceable(2304) %arrayidx217, i64 2304, i1 false)
  %132 = load ptr, ptr %cod_info, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %bst_cod_info, ptr noundef nonnull align 8 dereferenceable(120) %132, i64 120, i1 false)
  %133 = load i32, ptr %dbits, align 4
  %134 = load i32, ptr %this_bits, align 4
  %sub219 = sub nsw i32 %134, %133
  br label %if.end221

if.else:                                          ; preds = %if.end145
  %135 = load i32, ptr %dbits, align 4
  %136 = load i32, ptr %this_bits, align 4
  %add220 = add nsw i32 %136, %135
  br label %if.end221

if.end221:                                        ; preds = %if.else, %if.then208
  %storemerge14 = phi i32 [ %add220, %if.else ], [ %sub219, %if.then208 ]
  store i32 %storemerge14, ptr %this_bits, align 4
  %137 = load i32, ptr %dbits, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end221, %if.then142
  %storemerge15.in = phi i32 [ %137, %if.end221 ], [ %89, %if.then142 ]
  %storemerge15 = sdiv i32 %storemerge15.in, 2
  store i32 %storemerge15, ptr %dbits, align 4
  %cmp223 = icmp sgt i32 %storemerge15.in, 21
  br i1 %cmp223, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  %138 = load i32, ptr %real_bits, align 4
  %139 = load i32, ptr %max_bits, align 4
  %cmp225.not = icmp sgt i32 %138, %139
  br i1 %cmp225.not, label %if.end250, label %if.then227

if.then227:                                       ; preds = %do.end
  %140 = load ptr, ptr %cod_info, align 8
  %141 = call i64 @llvm.objectsize.i64.p0(ptr %140, i1 false, i1 true, i1 false)
  %call228 = call ptr @__memcpy_chk(ptr noundef %140, ptr noundef nonnull %bst_cod_info, i64 noundef 120, i64 noundef %141) #9
  %142 = load ptr, ptr %scalefac.addr, align 8
  %143 = load i32, ptr %gr, align 4
  %idxprom229 = sext i32 %143 to i64
  %144 = load i32, ptr %ch, align 4
  %idxprom231 = sext i32 %144 to i64
  %arrayidx232 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %142, i64 %idxprom229, i64 %idxprom231
  %idxprom233 = sext i32 %143 to i64
  %idxprom235 = sext i32 %144 to i64
  %arrayidx236 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %142, i64 %idxprom233, i64 %idxprom235
  %145 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx236, i1 false, i1 true, i1 false)
  %call237 = call ptr @__memcpy_chk(ptr noundef %arrayidx232, ptr noundef nonnull %bst_scalefac, i64 noundef 244, i64 noundef %145) #9
  %146 = load ptr, ptr %l3_enc.addr, align 8
  %147 = load i32, ptr %gr, align 4
  %idxprom238 = sext i32 %147 to i64
  %148 = load i32, ptr %ch, align 4
  %idxprom240 = sext i32 %148 to i64
  %arrayidx241 = getelementptr inbounds [2 x [576 x i32]], ptr %146, i64 %idxprom238, i64 %idxprom240
  %idxprom244 = sext i32 %147 to i64
  %idxprom246 = sext i32 %148 to i64
  %arrayidx247 = getelementptr inbounds [2 x [576 x i32]], ptr %146, i64 %idxprom244, i64 %idxprom246
  %149 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx247, i1 false, i1 true, i1 false)
  %call249 = call ptr @__memcpy_chk(ptr noundef %arrayidx241, ptr noundef nonnull %bst_l3_enc, i64 noundef 2304, i64 noundef %149) #9
  br label %if.end250

if.end250:                                        ; preds = %if.then227, %do.end
  %150 = load ptr, ptr %cod_info, align 8
  %151 = load i32, ptr %150, align 8
  %152 = load i32, ptr %max_bits, align 4
  %cmp252.not = icmp sgt i32 %151, %152
  br i1 %cmp252.not, label %cond.true258, label %cond.end260

cond.true258:                                     ; preds = %if.end250
  call void @__assert_rtn(ptr noundef nonnull @__func__.VBR_iteration_loop, ptr noundef nonnull @.str, i32 noundef 497, ptr noundef nonnull @.str.3) #10
  unreachable

cond.end260:                                      ; preds = %if.end250
  %153 = load ptr, ptr %cod_info, align 8
  %154 = load i32, ptr %153, align 8
  %155 = load i32, ptr %gr, align 4
  %idxprom262 = sext i32 %155 to i64
  %156 = load i32, ptr %ch, align 4
  %idxprom264 = sext i32 %156 to i64
  %arrayidx265 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom262, i64 %idxprom264
  store i32 %154, ptr %arrayidx265, align 4
  %idxprom266 = sext i32 %155 to i64
  %idxprom268 = sext i32 %156 to i64
  %arrayidx269 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom266, i64 %idxprom268
  %157 = load i32, ptr %arrayidx269, align 4
  %158 = load i32, ptr %used_bits, align 4
  %add270 = add nsw i32 %158, %157
  store i32 %add270, ptr %used_bits, align 4
  br label %for.inc271

for.inc271:                                       ; preds = %cond.end260, %if.then39
  %159 = load i32, ptr %ch, align 4
  %inc272 = add nsw i32 %159, 1
  br label %for.cond22, !llvm.loop !22

for.inc274:                                       ; preds = %for.cond22
  %160 = load i32, ptr %gr, align 4
  %inc275 = add nsw i32 %160, 1
  br label %for.cond8, !llvm.loop !23

for.end276:                                       ; preds = %for.cond8
  %161 = load i32, ptr @reduce_sidechannel, align 4
  %tobool277.not = icmp eq i32 %161, 0
  br i1 %tobool277.not, label %if.end323, label %for.cond279

for.cond279:                                      ; preds = %for.end276, %cond.end311
  %storemerge12 = phi i32 [ %inc321, %cond.end311 ], [ 0, %for.end276 ]
  store i32 %storemerge12, ptr %gr, align 4
  %162 = load ptr, ptr %gfp.addr, align 8
  %mode_gr280 = getelementptr inbounds %struct.lame_global_flags, ptr %162, i64 0, i32 45
  %163 = load i32, ptr %mode_gr280, align 8
  %cmp281 = icmp slt i32 %storemerge12, %163
  br i1 %cmp281, label %for.body283, label %if.end323

for.body283:                                      ; preds = %for.cond279
  %164 = load ptr, ptr %ms_ener_ratio.addr, align 8
  %165 = load i32, ptr %gr, align 4
  %idxprom284 = sext i32 %165 to i64
  %arrayidx285 = getelementptr inbounds double, ptr %164, i64 %idxprom284
  %166 = load double, ptr %arrayidx285, align 8
  %sub286 = fsub double 5.000000e-01, %166
  %mul287 = fmul double %sub286, 3.300000e-01
  %div288 = fmul double %mul287, 2.000000e+00
  %sub289 = fsub double 1.000000e+00, %div288
  %add290 = fadd double %div288, 1.000000e+00
  %div291 = fdiv double %sub289, %add290
  %167 = load i32, ptr %gr, align 4
  %idxprom292 = sext i32 %167 to i64
  %arrayidx293 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom292
  %168 = load i32, ptr %arrayidx293, align 4
  %conv295 = sitofp i32 %168 to double
  %mul296 = fmul double %div291, %conv295
  %conv297 = fptosi double %mul296 to i32
  %169 = load i32, ptr %gr, align 4
  %idxprom298 = sext i32 %169 to i64
  %arrayidx300 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom298, i64 1
  store i32 %conv297, ptr %arrayidx300, align 4
  %idxprom301 = sext i32 %169 to i64
  %arrayidx303 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom301, i64 1
  %170 = load i32, ptr %arrayidx303, align 4
  %cmp304 = icmp slt i32 %170, 125
  br i1 %cmp304, label %cond.end311, label %cond.false307

cond.false307:                                    ; preds = %for.body283
  %171 = load i32, ptr %gr, align 4
  %idxprom308 = sext i32 %171 to i64
  %arrayidx310 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom308, i64 1
  %172 = load i32, ptr %arrayidx310, align 4
  br label %cond.end311

cond.end311:                                      ; preds = %for.body283, %cond.false307
  %cond312 = phi i32 [ %172, %cond.false307 ], [ 125, %for.body283 ]
  %173 = load i32, ptr %gr, align 4
  %idxprom313 = sext i32 %173 to i64
  %arrayidx315 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom313, i64 1
  store i32 %cond312, ptr %arrayidx315, align 4
  %idxprom316 = sext i32 %173 to i64
  %arrayidx318 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom316, i64 1
  %174 = load i32, ptr %arrayidx318, align 4
  %175 = load i32, ptr %used_bits, align 4
  %add319 = add nsw i32 %175, %174
  store i32 %add319, ptr %used_bits, align 4
  %176 = load i32, ptr %gr, align 4
  %inc321 = add nsw i32 %176, 1
  br label %for.cond279, !llvm.loop !24

if.end323:                                        ; preds = %for.cond279, %for.end276
  %177 = load i32, ptr %analog_silence, align 4
  %tobool324.not = icmp eq i32 %177, 0
  br i1 %tobool324.not, label %cond.false326, label %cond.end328

cond.false326:                                    ; preds = %if.end323
  %178 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate327 = getelementptr inbounds %struct.lame_global_flags, ptr %178, i64 0, i32 47
  %179 = load i32, ptr %VBR_min_bitrate327, align 8
  br label %cond.end328

cond.end328:                                      ; preds = %if.end323, %cond.false326
  %cond329 = phi i32 [ %179, %cond.false326 ], [ 1, %if.end323 ]
  %180 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index330 = getelementptr inbounds %struct.lame_global_flags, ptr %180, i64 0, i32 50
  store i32 %cond329, ptr %bitrate_index330, align 4
  br label %for.cond331

for.cond331:                                      ; preds = %for.inc344, %cond.end328
  %181 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index332 = getelementptr inbounds %struct.lame_global_flags, ptr %181, i64 0, i32 50
  %182 = load i32, ptr %bitrate_index332, align 4
  %VBR_max_bitrate333 = getelementptr inbounds %struct.lame_global_flags, ptr %181, i64 0, i32 48
  %183 = load i32, ptr %VBR_max_bitrate333, align 4
  %cmp334 = icmp slt i32 %182, %183
  br i1 %cmp334, label %for.body336, label %for.end347

for.body336:                                      ; preds = %for.cond331
  %184 = load i32, ptr %used_bits, align 4
  %185 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index337 = getelementptr inbounds %struct.lame_global_flags, ptr %185, i64 0, i32 50
  %186 = load i32, ptr %bitrate_index337, align 4
  %idxprom338 = sext i32 %186 to i64
  %arrayidx339 = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom338
  %187 = load i32, ptr %arrayidx339, align 4
  %cmp340.not = icmp sgt i32 %184, %187
  br i1 %cmp340.not, label %for.inc344, label %for.end347

for.inc344:                                       ; preds = %for.body336
  %188 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index345 = getelementptr inbounds %struct.lame_global_flags, ptr %188, i64 0, i32 50
  %189 = load i32, ptr %bitrate_index345, align 4
  %inc346 = add nsw i32 %189, 1
  store i32 %inc346, ptr %bitrate_index345, align 4
  br label %for.cond331, !llvm.loop !25

for.end347:                                       ; preds = %for.body336, %for.cond331
  %190 = load ptr, ptr %gfp.addr, align 8
  call void @getframebits(ptr noundef %190, ptr noundef nonnull %bitsPerFrame, ptr noundef nonnull %mean_bits) #9
  %191 = load ptr, ptr %l3_side.addr, align 8
  %192 = load i32, ptr %mean_bits, align 4
  %193 = load i32, ptr %bitsPerFrame, align 4
  %call348 = call i32 @ResvFrameBegin(ptr noundef %190, ptr noundef %191, i32 noundef %192, i32 noundef %193) #9
  store i32 %call348, ptr %bits, align 4
  %194 = load i32, ptr %used_bits, align 4
  %cmp349 = icmp sgt i32 %194, %call348
  br i1 %cmp349, label %if.then351, label %if.end402

if.then351:                                       ; preds = %for.end347
  store i32 1, ptr %reparted, align 4
  br label %for.cond352

for.cond352:                                      ; preds = %for.inc378, %if.then351
  %storemerge8 = phi i32 [ 0, %if.then351 ], [ %inc379, %for.inc378 ]
  store i32 %storemerge8, ptr %gr, align 4
  %195 = load ptr, ptr %gfp.addr, align 8
  %mode_gr353 = getelementptr inbounds %struct.lame_global_flags, ptr %195, i64 0, i32 45
  %196 = load i32, ptr %mode_gr353, align 8
  %cmp354 = icmp slt i32 %storemerge8, %196
  br i1 %cmp354, label %for.cond357, label %for.end380

for.cond357:                                      ; preds = %for.cond352, %for.body361
  %storemerge11 = phi i32 [ %inc376, %for.body361 ], [ 0, %for.cond352 ]
  store i32 %storemerge11, ptr %ch, align 4
  %197 = load ptr, ptr %gfp.addr, align 8
  %stereo358 = getelementptr inbounds %struct.lame_global_flags, ptr %197, i64 0, i32 46
  %198 = load i32, ptr %stereo358, align 4
  %cmp359 = icmp slt i32 %storemerge11, %198
  br i1 %cmp359, label %for.body361, label %for.inc378

for.body361:                                      ; preds = %for.cond357
  %199 = load i32, ptr %gr, align 4
  %idxprom362 = sext i32 %199 to i64
  %200 = load i32, ptr %ch, align 4
  %idxprom364 = sext i32 %200 to i64
  %arrayidx365 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom362, i64 %idxprom364
  %201 = load i32, ptr %arrayidx365, align 4
  %202 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index366 = getelementptr inbounds %struct.lame_global_flags, ptr %202, i64 0, i32 50
  %203 = load i32, ptr %bitrate_index366, align 4
  %idxprom367 = sext i32 %203 to i64
  %arrayidx368 = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom367
  %204 = load i32, ptr %arrayidx368, align 4
  %mul369 = mul nsw i32 %201, %204
  %205 = load i32, ptr %used_bits, align 4
  %div370 = sdiv i32 %mul369, %205
  %206 = load i32, ptr %gr, align 4
  %idxprom371 = sext i32 %206 to i64
  %207 = load i32, ptr %ch, align 4
  %idxprom373 = sext i32 %207 to i64
  %arrayidx374 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom371, i64 %idxprom373
  store i32 %div370, ptr %arrayidx374, align 4
  %208 = load i32, ptr %ch, align 4
  %inc376 = add nsw i32 %208, 1
  br label %for.cond357, !llvm.loop !26

for.inc378:                                       ; preds = %for.cond357
  %209 = load i32, ptr %gr, align 4
  %inc379 = add nsw i32 %209, 1
  br label %for.cond352, !llvm.loop !27

for.end380:                                       ; preds = %for.cond352
  store i32 0, ptr %used_bits, align 4
  br label %for.cond381

for.cond381:                                      ; preds = %for.inc399, %for.end380
  %storemerge9 = phi i32 [ 0, %for.end380 ], [ %inc400, %for.inc399 ]
  store i32 %storemerge9, ptr %gr, align 4
  %210 = load ptr, ptr %gfp.addr, align 8
  %mode_gr382 = getelementptr inbounds %struct.lame_global_flags, ptr %210, i64 0, i32 45
  %211 = load i32, ptr %mode_gr382, align 8
  %cmp383 = icmp slt i32 %storemerge9, %211
  br i1 %cmp383, label %for.cond386, label %if.end402

for.cond386:                                      ; preds = %for.cond381, %for.body390
  %storemerge10 = phi i32 [ %inc397, %for.body390 ], [ 0, %for.cond381 ]
  store i32 %storemerge10, ptr %ch, align 4
  %212 = load ptr, ptr %gfp.addr, align 8
  %stereo387 = getelementptr inbounds %struct.lame_global_flags, ptr %212, i64 0, i32 46
  %213 = load i32, ptr %stereo387, align 4
  %cmp388 = icmp slt i32 %storemerge10, %213
  br i1 %cmp388, label %for.body390, label %for.inc399

for.body390:                                      ; preds = %for.cond386
  %214 = load i32, ptr %gr, align 4
  %idxprom391 = sext i32 %214 to i64
  %215 = load i32, ptr %ch, align 4
  %idxprom393 = sext i32 %215 to i64
  %arrayidx394 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom391, i64 %idxprom393
  %216 = load i32, ptr %arrayidx394, align 4
  %217 = load i32, ptr %used_bits, align 4
  %add395 = add nsw i32 %217, %216
  store i32 %add395, ptr %used_bits, align 4
  %218 = load i32, ptr %ch, align 4
  %inc397 = add nsw i32 %218, 1
  br label %for.cond386, !llvm.loop !28

for.inc399:                                       ; preds = %for.cond386
  %219 = load i32, ptr %gr, align 4
  %inc400 = add nsw i32 %219, 1
  br label %for.cond381, !llvm.loop !29

if.end402:                                        ; preds = %for.cond381, %for.end347
  %220 = load i32, ptr %used_bits, align 4
  %221 = load i32, ptr %bits, align 4
  %cmp403.not = icmp sgt i32 %220, %221
  br i1 %cmp403.not, label %cond.true409, label %for.cond412

cond.true409:                                     ; preds = %if.end402
  call void @__assert_rtn(ptr noundef nonnull @__func__.VBR_iteration_loop, ptr noundef nonnull @.str, i32 noundef 552, ptr noundef nonnull @.str.4) #10
  unreachable

for.cond412:                                      ; preds = %if.end402, %for.inc507
  %storemerge1 = phi i32 [ %inc508, %for.inc507 ], [ 0, %if.end402 ]
  store i32 %storemerge1, ptr %gr, align 4
  %222 = load ptr, ptr %gfp.addr, align 8
  %mode_gr413 = getelementptr inbounds %struct.lame_global_flags, ptr %222, i64 0, i32 45
  %223 = load i32, ptr %mode_gr413, align 8
  %cmp414 = icmp slt i32 %storemerge1, %223
  br i1 %cmp414, label %for.cond417, label %for.cond510

for.cond417:                                      ; preds = %for.cond412, %for.inc504
  %storemerge7 = phi i32 [ %inc505, %for.inc504 ], [ 0, %for.cond412 ]
  store i32 %storemerge7, ptr %ch, align 4
  %224 = load ptr, ptr %gfp.addr, align 8
  %stereo418 = getelementptr inbounds %struct.lame_global_flags, ptr %224, i64 0, i32 46
  %225 = load i32, ptr %stereo418, align 4
  %cmp419 = icmp slt i32 %storemerge7, %225
  br i1 %cmp419, label %for.body421, label %for.inc507

for.body421:                                      ; preds = %for.cond417
  %226 = load i32, ptr %reparted, align 4
  %tobool422.not = icmp eq i32 %226, 0
  br i1 %tobool422.not, label %lor.lhs.false, label %if.then426

lor.lhs.false:                                    ; preds = %for.body421
  %227 = load i32, ptr @reduce_sidechannel, align 4
  %tobool423.not = icmp ne i32 %227, 0
  %228 = load i32, ptr %ch, align 4
  %cmp424 = icmp eq i32 %228, 1
  %or.cond = select i1 %tobool423.not, i1 %cmp424, i1 false
  br i1 %or.cond, label %if.then426, label %for.inc504

if.then426:                                       ; preds = %lor.lhs.false, %for.body421
  %229 = load ptr, ptr %l3_side.addr, align 8
  %230 = load i32, ptr %gr, align 4
  %idxprom428 = sext i32 %230 to i64
  %arrayidx429 = getelementptr inbounds %struct.III_side_info_t, ptr %229, i64 0, i32 4, i64 %idxprom428
  %231 = load i32, ptr %ch, align 4
  %idxprom431 = sext i32 %231 to i64
  %arrayidx432 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx429, i64 0, i64 %idxprom431
  store ptr %arrayidx432, ptr %cod_info, align 8
  %232 = load ptr, ptr %gfp.addr, align 8
  %233 = load ptr, ptr %xr.addr, align 8
  %234 = load i32, ptr %gr, align 4
  %idxprom434 = sext i32 %234 to i64
  %235 = load i32, ptr %ch, align 4
  %idxprom436 = sext i32 %235 to i64
  %arrayidx437 = getelementptr inbounds [2 x [576 x double]], ptr %233, i64 %idxprom434, i64 %idxprom436
  %236 = load ptr, ptr %cod_info, align 8
  %call439 = call i32 @init_outer_loop(ptr noundef %232, ptr noundef %arrayidx437, ptr noundef %236)
  %tobool440.not = icmp eq i32 %call439, 0
  br i1 %tobool440.not, label %if.then441, label %if.else466

if.then441:                                       ; preds = %if.then426
  %237 = load ptr, ptr %scalefac.addr, align 8
  %238 = load i32, ptr %gr, align 4
  %idxprom442 = sext i32 %238 to i64
  %239 = load i32, ptr %ch, align 4
  %idxprom444 = sext i32 %239 to i64
  %arrayidx445 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %237, i64 %idxprom442, i64 %idxprom444
  %idxprom446 = sext i32 %238 to i64
  %idxprom448 = sext i32 %239 to i64
  %arrayidx449 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %237, i64 %idxprom446, i64 %idxprom448
  %240 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx449, i1 false, i1 true, i1 false)
  %call450 = call ptr @__memset_chk(ptr noundef %arrayidx445, i32 noundef 0, i64 noundef 244, i64 noundef %240) #9
  %241 = load ptr, ptr %l3_enc.addr, align 8
  %242 = load i32, ptr %gr, align 4
  %idxprom451 = sext i32 %242 to i64
  %243 = load i32, ptr %ch, align 4
  %idxprom453 = sext i32 %243 to i64
  %arrayidx454 = getelementptr inbounds [2 x [576 x i32]], ptr %241, i64 %idxprom451, i64 %idxprom453
  %idxprom456 = sext i32 %242 to i64
  %idxprom458 = sext i32 %243 to i64
  %arrayidx459 = getelementptr inbounds [2 x [576 x i32]], ptr %241, i64 %idxprom456, i64 %idxprom458
  %244 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx459, i1 false, i1 true, i1 false)
  %call461 = call ptr @__memset_chk(ptr noundef %arrayidx454, i32 noundef 0, i64 noundef 2304, i64 noundef %244) #9
  %arrayidx462 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 3
  store double 0.000000e+00, ptr %arrayidx462, align 8
  %arrayidx463 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 2
  store double 0.000000e+00, ptr %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx464, align 8
  store double 0.000000e+00, ptr %noise, align 8
  br label %for.inc504

if.else466:                                       ; preds = %if.then426
  %245 = load ptr, ptr %gfp.addr, align 8
  %VBR_q467 = getelementptr inbounds %struct.lame_global_flags, ptr %245, i64 0, i32 22
  %246 = load i32, ptr %VBR_q467, align 4
  %247 = load i32, ptr %gr, align 4
  %idxprom468 = sext i32 %247 to i64
  %248 = load i32, ptr %ch, align 4
  %idxprom470 = sext i32 %248 to i64
  %arrayidx471 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom468, i64 %idxprom470
  %249 = load i32, ptr %arrayidx471, align 4
  call void @set_masking_lower(i32 noundef %246, i32 noundef %249)
  %250 = load ptr, ptr %gfp.addr, align 8
  %251 = load ptr, ptr %xr.addr, align 8
  %252 = load i32, ptr %gr, align 4
  %idxprom472 = sext i32 %252 to i64
  %253 = load i32, ptr %ch, align 4
  %idxprom474 = sext i32 %253 to i64
  %arrayidx475 = getelementptr inbounds [2 x [576 x double]], ptr %251, i64 %idxprom472, i64 %idxprom474
  %254 = load ptr, ptr %ratio.addr, align 8
  %idxprom477 = sext i32 %252 to i64
  %idxprom479 = sext i32 %253 to i64
  %arrayidx480 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %254, i64 %idxprom477, i64 %idxprom479
  %255 = load ptr, ptr %cod_info, align 8
  %call481 = call i32 @calc_xmin(ptr noundef %250, ptr noundef %arrayidx475, ptr noundef %arrayidx480, ptr noundef %255, ptr noundef nonnull %l3_xmin) #9
  %256 = load ptr, ptr %gfp.addr, align 8
  %257 = load ptr, ptr %xr.addr, align 8
  %258 = load i32, ptr %gr, align 4
  %idxprom482 = sext i32 %258 to i64
  %259 = load i32, ptr %ch, align 4
  %idxprom484 = sext i32 %259 to i64
  %arrayidx485 = getelementptr inbounds [2 x [576 x double]], ptr %257, i64 %idxprom482, i64 %idxprom484
  %idxprom487 = sext i32 %258 to i64
  %idxprom489 = sext i32 %259 to i64
  %arrayidx490 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %idxprom487, i64 %idxprom489
  %260 = load i32, ptr %arrayidx490, align 4
  %261 = load ptr, ptr %l3_enc.addr, align 8
  %262 = load i32, ptr %gr, align 4
  %idxprom492 = sext i32 %262 to i64
  %263 = load i32, ptr %ch, align 4
  %idxprom494 = sext i32 %263 to i64
  %arrayidx495 = getelementptr inbounds [2 x [576 x i32]], ptr %261, i64 %idxprom492, i64 %idxprom494
  %264 = load ptr, ptr %scalefac.addr, align 8
  %idxprom497 = sext i32 %262 to i64
  %idxprom499 = sext i32 %263 to i64
  %arrayidx500 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %264, i64 %idxprom497, i64 %idxprom499
  %265 = load ptr, ptr %cod_info, align 8
  %266 = load i32, ptr %ch, align 4
  call void @outer_loop(ptr noundef %256, ptr noundef %arrayidx485, i32 noundef %260, ptr noundef nonnull %noise, ptr noundef nonnull %l3_xmin, ptr noundef %arrayidx495, ptr noundef %arrayidx500, ptr noundef %265, ptr noundef nonnull %xfsf, i32 noundef %266)
  br label %for.inc504

for.inc504:                                       ; preds = %lor.lhs.false, %if.else466, %if.then441
  %267 = load i32, ptr %ch, align 4
  %inc505 = add nsw i32 %267, 1
  br label %for.cond417, !llvm.loop !30

for.inc507:                                       ; preds = %for.cond417
  %268 = load i32, ptr %gr, align 4
  %inc508 = add nsw i32 %268, 1
  br label %for.cond412, !llvm.loop !31

for.cond510:                                      ; preds = %for.cond412, %for.inc540
  %storemerge2 = phi i32 [ %inc541, %for.inc540 ], [ 0, %for.cond412 ]
  store i32 %storemerge2, ptr %gr, align 4
  %269 = load ptr, ptr %gfp.addr, align 8
  %mode_gr511 = getelementptr inbounds %struct.lame_global_flags, ptr %269, i64 0, i32 45
  %270 = load i32, ptr %mode_gr511, align 8
  %cmp512 = icmp slt i32 %storemerge2, %270
  br i1 %cmp512, label %for.cond515, label %for.cond543

for.cond515:                                      ; preds = %for.cond510, %if.end536
  %storemerge6 = phi i32 [ %inc538, %if.end536 ], [ 0, %for.cond510 ]
  store i32 %storemerge6, ptr %ch, align 4
  %271 = load ptr, ptr %gfp.addr, align 8
  %stereo516 = getelementptr inbounds %struct.lame_global_flags, ptr %271, i64 0, i32 46
  %272 = load i32, ptr %stereo516, align 4
  %cmp517 = icmp slt i32 %storemerge6, %272
  br i1 %cmp517, label %for.body519, label %for.inc540

for.body519:                                      ; preds = %for.cond515
  %273 = load ptr, ptr %l3_side.addr, align 8
  %274 = load i32, ptr %gr, align 4
  %idxprom521 = sext i32 %274 to i64
  %arrayidx522 = getelementptr inbounds %struct.III_side_info_t, ptr %273, i64 0, i32 4, i64 %idxprom521
  %275 = load i32, ptr %ch, align 4
  %idxprom524 = sext i32 %275 to i64
  %arrayidx525 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx522, i64 0, i64 %idxprom524
  store ptr %arrayidx525, ptr %cod_info, align 8
  %276 = load ptr, ptr %gfp.addr, align 8
  %277 = load i32, ptr %gr, align 4
  %278 = load ptr, ptr %l3_enc.addr, align 8
  %279 = load ptr, ptr %l3_side.addr, align 8
  %280 = load ptr, ptr %scalefac.addr, align 8
  call void @best_scalefac_store(ptr noundef %276, i32 noundef %277, i32 noundef %275, ptr noundef %278, ptr noundef %279, ptr noundef %280) #9
  %281 = load ptr, ptr %cod_info, align 8
  %block_type527 = getelementptr inbounds %struct.gr_info, ptr %281, i64 0, i32 6
  %282 = load i32, ptr %block_type527, align 8
  %cmp528 = icmp eq i32 %282, 0
  br i1 %cmp528, label %if.then530, label %if.end536

if.then530:                                       ; preds = %for.body519
  %283 = load i32, ptr %gr, align 4
  %284 = load i32, ptr %ch, align 4
  %285 = load ptr, ptr %cod_info, align 8
  %286 = load ptr, ptr %l3_enc.addr, align 8
  %idxprom531 = sext i32 %283 to i64
  %idxprom533 = sext i32 %284 to i64
  %arrayidx534 = getelementptr inbounds [2 x [576 x i32]], ptr %286, i64 %idxprom531, i64 %idxprom533
  call void @best_huffman_divide(i32 noundef %283, i32 noundef %284, ptr noundef %285, ptr noundef %arrayidx534) #9
  br label %if.end536

if.end536:                                        ; preds = %if.then530, %for.body519
  %287 = load ptr, ptr %gfp.addr, align 8
  %288 = load ptr, ptr %cod_info, align 8
  %289 = load ptr, ptr %l3_side.addr, align 8
  %290 = load i32, ptr %mean_bits, align 4
  call void @ResvAdjust(ptr noundef %287, ptr noundef %288, ptr noundef %289, i32 noundef %290) #9
  %291 = load i32, ptr %ch, align 4
  %inc538 = add nsw i32 %291, 1
  br label %for.cond515, !llvm.loop !32

for.inc540:                                       ; preds = %for.cond515
  %292 = load i32, ptr %gr, align 4
  %inc541 = add nsw i32 %292, 1
  br label %for.cond510, !llvm.loop !33

for.cond543:                                      ; preds = %for.cond510, %for.inc580
  %storemerge3 = phi i32 [ %inc581, %for.inc580 ], [ 0, %for.cond510 ]
  store i32 %storemerge3, ptr %gr, align 4
  %293 = load ptr, ptr %gfp.addr, align 8
  %mode_gr544 = getelementptr inbounds %struct.lame_global_flags, ptr %293, i64 0, i32 45
  %294 = load i32, ptr %mode_gr544, align 8
  %cmp545 = icmp slt i32 %storemerge3, %294
  br i1 %cmp545, label %for.cond548, label %for.end582

for.cond548:                                      ; preds = %for.cond543, %for.inc577
  %storemerge4 = phi i32 [ %inc578, %for.inc577 ], [ 0, %for.cond543 ]
  store i32 %storemerge4, ptr %ch, align 4
  %295 = load ptr, ptr %gfp.addr, align 8
  %stereo549 = getelementptr inbounds %struct.lame_global_flags, ptr %295, i64 0, i32 46
  %296 = load i32, ptr %stereo549, align 4
  %cmp550 = icmp slt i32 %storemerge4, %296
  br i1 %cmp550, label %for.cond553, label %for.inc580

for.cond553:                                      ; preds = %for.cond548, %for.inc574
  %storemerge5 = phi i32 [ %inc575, %for.inc574 ], [ 0, %for.cond548 ]
  store i32 %storemerge5, ptr %i, align 4
  %cmp554 = icmp slt i32 %storemerge5, 576
  br i1 %cmp554, label %for.body556, label %for.inc577

for.body556:                                      ; preds = %for.cond553
  %297 = load ptr, ptr %xr.addr, align 8
  %298 = load i32, ptr %gr, align 4
  %idxprom557 = sext i32 %298 to i64
  %299 = load i32, ptr %ch, align 4
  %idxprom559 = sext i32 %299 to i64
  %300 = load i32, ptr %i, align 4
  %idxprom561 = sext i32 %300 to i64
  %arrayidx562 = getelementptr inbounds [2 x [576 x double]], ptr %297, i64 %idxprom557, i64 %idxprom559, i64 %idxprom561
  %301 = load double, ptr %arrayidx562, align 8
  %cmp563 = fcmp olt double %301, 0.000000e+00
  br i1 %cmp563, label %if.then565, label %for.inc574

if.then565:                                       ; preds = %for.body556
  %302 = load ptr, ptr %l3_enc.addr, align 8
  %303 = load i32, ptr %gr, align 4
  %idxprom566 = sext i32 %303 to i64
  %304 = load i32, ptr %ch, align 4
  %idxprom568 = sext i32 %304 to i64
  %305 = load i32, ptr %i, align 4
  %idxprom570 = sext i32 %305 to i64
  %arrayidx571 = getelementptr inbounds [2 x [576 x i32]], ptr %302, i64 %idxprom566, i64 %idxprom568, i64 %idxprom570
  %306 = load i32, ptr %arrayidx571, align 4
  %mul572 = sub nsw i32 0, %306
  store i32 %mul572, ptr %arrayidx571, align 4
  br label %for.inc574

for.inc574:                                       ; preds = %for.body556, %if.then565
  %307 = load i32, ptr %i, align 4
  %inc575 = add nsw i32 %307, 1
  br label %for.cond553, !llvm.loop !34

for.inc577:                                       ; preds = %for.cond553
  %308 = load i32, ptr %ch, align 4
  %inc578 = add nsw i32 %308, 1
  br label %for.cond548, !llvm.loop !35

for.inc580:                                       ; preds = %for.cond548
  %309 = load i32, ptr %gr, align 4
  %inc581 = add nsw i32 %309, 1
  br label %for.cond543, !llvm.loop !36

for.end582:                                       ; preds = %for.cond543
  %310 = load ptr, ptr %gfp.addr, align 8
  %311 = load ptr, ptr %l3_side.addr, align 8
  %312 = load i32, ptr %mean_bits, align 4
  call void @ResvFrameEnd(ptr noundef %310, ptr noundef %311, i32 noundef %312) #9
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
  %tot_noise.addr = alloca double, align 8
  %over_noise.addr = alloca double, align 8
  %max_noise.addr = alloca double, align 8
  store i32 %best_over, ptr %best_over.addr, align 4
  store double %best_tot_noise, ptr %best_tot_noise.addr, align 8
  store double %best_over_noise, ptr %best_over_noise.addr, align 8
  store double %best_max_noise, ptr %best_max_noise.addr, align 8
  store double %tot_noise, ptr %tot_noise.addr, align 8
  store double %over_noise, ptr %over_noise.addr, align 8
  store double %max_noise, ptr %max_noise.addr, align 8
  %0 = load i32, ptr %best_over.addr, align 4
  %cmp.not = icmp slt i32 %0, %over
  br i1 %cmp.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load double, ptr %over_noise.addr, align 8
  %2 = load double, ptr %best_over_noise.addr, align 8
  %cmp1 = fcmp ugt double %1, %2
  br i1 %cmp1, label %land.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load double, ptr %tot_noise.addr, align 8
  %4 = load double, ptr %best_tot_noise.addr, align 8
  %cmp3 = fcmp ugt double %3, %4
  br i1 %cmp3, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true2
  %5 = load double, ptr %max_noise.addr, align 8
  %6 = load double, ptr %best_max_noise.addr, align 8
  %cmp4 = fcmp ole double %5, %6
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %7 = phi i32 [ 0, %land.lhs.true2 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %7
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
  %s86 = alloca i32, align 4
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
  store double 0.000000e+00, ptr %over_noise, align 8
  store double 0.000000e+00, ptr %tot_noise, align 8
  store double -9.990000e+02, ptr %max_noise, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end72, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc76, %cond.end72 ]
  store i32 %storemerge, ptr %sfb, align 4
  %0 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %0, i64 0, i32 16
  %1 = load i32, ptr %sfb_lmax, align 8
  %cmp = icmp ult i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.cond78

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %scalefac.addr, align 8
  %3 = load i32, ptr %sfb, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [22 x i32], ptr %2, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %s, align 4
  %5 = load ptr, ptr %cod_info.addr, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %5, i64 0, i32 12
  %6 = load i32, ptr %preflag, align 8
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %sfb, align 4
  %idxprom3 = zext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %idxprom3
  %8 = load i32, ptr %arrayidx4, align 4
  %9 = load i32, ptr %s, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, ptr %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %global_gain, align 4
  %12 = load i32, ptr %s, align 4
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %10, i64 0, i32 13
  %13 = load i32, ptr %scalefac_scale, align 4
  %add5 = add i32 %13, 1
  %shl = shl i32 %12, %add5
  %sub = sub i32 %11, %shl
  store i32 %sub, ptr %s, align 4
  %cmp6 = icmp sgt i32 %sub, 255
  br i1 %cmp6, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.calc_noise1, ptr noundef nonnull @.str, i32 noundef 945, ptr noundef nonnull @.str.7) #10
  unreachable

cond.end:                                         ; preds = %if.end
  %14 = load i32, ptr %s, align 4
  %tobool13.not = icmp sgt i32 %14, -1
  br i1 %tobool13.not, label %cond.end16, label %cond.true14

cond.true14:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.calc_noise1, ptr noundef nonnull @.str, i32 noundef 946, ptr noundef nonnull @.str.8) #10
  unreachable

cond.end16:                                       ; preds = %cond.end
  %15 = load i32, ptr %s, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %idxprom17
  %16 = load double, ptr %arrayidx18, align 8
  store double %16, ptr %step1, align 8
  %17 = load i32, ptr %sfb, align 4
  %idxprom19 = zext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom19
  %18 = load i32, ptr %arrayidx20, align 4
  store i32 %18, ptr %start, align 4
  %add21 = add i32 %17, 1
  %idxprom22 = zext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom22
  %19 = load i32, ptr %arrayidx23, align 4
  store i32 %19, ptr %end, align 4
  %sub24 = sub nsw i32 %19, %18
  %conv25 = sitofp i32 %sub24 to double
  store double %conv25, ptr %bw, align 8
  store double 0.000000e+00, ptr %sum, align 8
  %20 = load i32, ptr %start, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.body29, %cond.end16
  %storemerge4 = phi i32 [ %20, %cond.end16 ], [ %inc, %for.body29 ]
  store i32 %storemerge4, ptr %l, align 4
  %21 = load i32, ptr %end, align 4
  %cmp27 = icmp slt i32 %storemerge4, %21
  br i1 %cmp27, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26
  %22 = load ptr, ptr %xr.addr, align 8
  %23 = load i32, ptr %l, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds double, ptr %22, i64 %idxprom30
  %24 = load double, ptr %arrayidx31, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = load ptr, ptr %ix.addr, align 8
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %26, i64 %idxprom32
  %27 = load i32, ptr %arrayidx33, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom34
  %28 = load double, ptr %arrayidx35, align 8
  %29 = load double, ptr %step1, align 8
  %neg = fneg double %28
  %30 = call double @llvm.fmuladd.f64(double %neg, double %29, double %25)
  %31 = load double, ptr %sum, align 8
  %32 = call double @llvm.fmuladd.f64(double %30, double %30, double %31)
  store double %32, ptr %sum, align 8
  %33 = load i32, ptr %l, align 4
  %inc = add nsw i32 %33, 1
  br label %for.cond26, !llvm.loop !37

for.end:                                          ; preds = %for.cond26
  %34 = load double, ptr %sum, align 8
  %35 = load double, ptr %bw, align 8
  %div = fdiv double %34, %35
  %36 = load ptr, ptr %xfsf.addr, align 8
  %37 = load i32, ptr %sfb, align 4
  %idxprom37 = zext i32 %37 to i64
  %arrayidx38 = getelementptr inbounds [21 x double], ptr %36, i64 0, i64 %idxprom37
  store double %div, ptr %arrayidx38, align 8
  %idxprom40 = zext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds [21 x double], ptr %36, i64 0, i64 %idxprom40
  %38 = load double, ptr %arrayidx41, align 8
  %39 = load ptr, ptr %l3_xmin.addr, align 8
  %40 = load i32, ptr %sfb, align 4
  %idxprom43 = zext i32 %40 to i64
  %arrayidx44 = getelementptr inbounds [22 x double], ptr %39, i64 0, i64 %idxprom43
  %41 = load double, ptr %arrayidx44, align 8
  %div45 = fdiv double %38, %41
  %cmp46 = fcmp olt double %div45, 1.000000e-03
  br i1 %cmp46, label %cond.end57, label %cond.false49

cond.false49:                                     ; preds = %for.end
  %42 = load ptr, ptr %xfsf.addr, align 8
  %43 = load i32, ptr %sfb, align 4
  %idxprom51 = zext i32 %43 to i64
  %arrayidx52 = getelementptr inbounds [21 x double], ptr %42, i64 0, i64 %idxprom51
  %44 = load double, ptr %arrayidx52, align 8
  %45 = load ptr, ptr %l3_xmin.addr, align 8
  %idxprom54 = zext i32 %43 to i64
  %arrayidx55 = getelementptr inbounds [22 x double], ptr %45, i64 0, i64 %idxprom54
  %46 = load double, ptr %arrayidx55, align 8
  %div56 = fdiv double %44, %46
  br label %cond.end57

cond.end57:                                       ; preds = %for.end, %cond.false49
  %cond = phi double [ %div56, %cond.false49 ], [ 1.000000e-03, %for.end ]
  %47 = call double @llvm.log10.f64(double %cond)
  %mul = fmul double %47, 1.000000e+01
  store double %mul, ptr %noise, align 8
  %48 = load ptr, ptr %distort.addr, align 8
  %49 = load i32, ptr %sfb, align 4
  %idxprom59 = zext i32 %49 to i64
  %arrayidx60 = getelementptr inbounds [21 x double], ptr %48, i64 0, i64 %idxprom59
  store double %mul, ptr %arrayidx60, align 8
  %cmp61 = fcmp ogt double %mul, 0.000000e+00
  br i1 %cmp61, label %if.then63, label %if.end66

if.then63:                                        ; preds = %cond.end57
  %50 = load i32, ptr %over, align 4
  %inc64 = add nsw i32 %50, 1
  store i32 %inc64, ptr %over, align 4
  %51 = load double, ptr %noise, align 8
  %52 = load ptr, ptr %over_noise.addr, align 8
  %53 = load double, ptr %52, align 8
  %add65 = fadd double %53, %51
  store double %add65, ptr %52, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %cond.end57
  %54 = load double, ptr %noise, align 8
  %55 = load ptr, ptr %tot_noise.addr, align 8
  %56 = load double, ptr %55, align 8
  %add67 = fadd double %56, %54
  store double %add67, ptr %55, align 8
  %57 = load ptr, ptr %max_noise.addr, align 8
  %58 = load double, ptr %57, align 8
  %59 = load double, ptr %noise, align 8
  %cmp68 = fcmp ogt double %58, %59
  br i1 %cmp68, label %cond.true70, label %cond.false71

cond.true70:                                      ; preds = %if.end66
  %60 = load ptr, ptr %max_noise.addr, align 8
  %61 = load double, ptr %60, align 8
  br label %cond.end72

cond.false71:                                     ; preds = %if.end66
  %62 = load double, ptr %noise, align 8
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false71, %cond.true70
  %cond73 = phi double [ %61, %cond.true70 ], [ %62, %cond.false71 ]
  %63 = load ptr, ptr %max_noise.addr, align 8
  store double %cond73, ptr %63, align 8
  %64 = load i32, ptr %count, align 4
  %inc74 = add nsw i32 %64, 1
  store i32 %inc74, ptr %count, align 4
  %65 = load i32, ptr %sfb, align 4
  %inc76 = add i32 %65, 1
  br label %for.cond, !llvm.loop !38

for.cond78:                                       ; preds = %for.cond, %for.inc206
  %storemerge1 = phi i32 [ %inc207, %for.inc206 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp79 = icmp slt i32 %storemerge1, 3
  br i1 %cmp79, label %for.body81, label %for.end208

for.body81:                                       ; preds = %for.cond78
  %66 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %66, i64 0, i32 17
  %67 = load i32, ptr %sfb_smax, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %cond.end200, %for.body81
  %storemerge2 = phi i32 [ %67, %for.body81 ], [ %inc204, %cond.end200 ]
  store i32 %storemerge2, ptr %sfb, align 4
  %cmp83 = icmp ult i32 %storemerge2, 12
  br i1 %cmp83, label %for.body85, label %for.inc206

for.body85:                                       ; preds = %for.cond82
  %68 = load ptr, ptr %scalefac.addr, align 8
  %69 = load i32, ptr %sfb, align 4
  %idxprom88 = zext i32 %69 to i64
  %70 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %70 to i64
  %arrayidx91 = getelementptr inbounds %struct.III_scalefac_t, ptr %68, i64 0, i32 1, i64 %idxprom88, i64 %idxprom90
  %71 = load i32, ptr %arrayidx91, align 4
  %72 = load ptr, ptr %cod_info.addr, align 8
  %scalefac_scale92 = getelementptr inbounds %struct.gr_info, ptr %72, i64 0, i32 13
  %73 = load i32, ptr %scalefac_scale92, align 4
  %add93 = add i32 %73, 1
  %shl94 = shl i32 %71, %add93
  %74 = load i32, ptr %i, align 4
  %idxprom95 = sext i32 %74 to i64
  %arrayidx96 = getelementptr inbounds %struct.gr_info, ptr %72, i64 0, i32 9, i64 %idxprom95
  %75 = load i32, ptr %arrayidx96, align 4
  %mul97 = shl nsw i32 %75, 3
  %add98 = add nsw i32 %shl94, %mul97
  store i32 %add98, ptr %s86, align 4
  %76 = load ptr, ptr %cod_info.addr, align 8
  %global_gain99 = getelementptr inbounds %struct.gr_info, ptr %76, i64 0, i32 3
  %77 = load i32, ptr %global_gain99, align 4
  %sub100 = sub i32 %77, %add98
  store i32 %sub100, ptr %s86, align 4
  %cmp101 = icmp sgt i32 %sub100, 255
  br i1 %cmp101, label %cond.true107, label %cond.end109

cond.true107:                                     ; preds = %for.body85
  call void @__assert_rtn(ptr noundef nonnull @__func__.calc_noise1, ptr noundef nonnull @.str, i32 noundef 1000, ptr noundef nonnull @.str.7) #10
  unreachable

cond.end109:                                      ; preds = %for.body85
  %78 = load i32, ptr %s86, align 4
  %tobool115.not = icmp sgt i32 %78, -1
  br i1 %tobool115.not, label %cond.end118, label %cond.true116

cond.true116:                                     ; preds = %cond.end109
  call void @__assert_rtn(ptr noundef nonnull @__func__.calc_noise1, ptr noundef nonnull @.str, i32 noundef 1001, ptr noundef nonnull @.str.8) #10
  unreachable

cond.end118:                                      ; preds = %cond.end109
  %79 = load i32, ptr %s86, align 4
  %idxprom119 = sext i32 %79 to i64
  %arrayidx120 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %idxprom119
  %80 = load double, ptr %arrayidx120, align 8
  store double %80, ptr %step, align 8
  %81 = load i32, ptr %sfb, align 4
  %idxprom121 = zext i32 %81 to i64
  %arrayidx122 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom121
  %82 = load i32, ptr %arrayidx122, align 4
  store i32 %82, ptr %start, align 4
  %add123 = add i32 %81, 1
  %idxprom124 = zext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom124
  %83 = load i32, ptr %arrayidx125, align 4
  store i32 %83, ptr %end, align 4
  %sub126 = sub nsw i32 %83, %82
  %conv127 = sitofp i32 %sub126 to double
  store double %conv127, ptr %bw, align 8
  store double 0.000000e+00, ptr %sum, align 8
  %84 = load i32, ptr %start, align 4
  br label %for.cond128

for.cond128:                                      ; preds = %for.body131, %cond.end118
  %storemerge3 = phi i32 [ %84, %cond.end118 ], [ %inc147, %for.body131 ]
  store i32 %storemerge3, ptr %l, align 4
  %85 = load i32, ptr %end, align 4
  %cmp129 = icmp slt i32 %storemerge3, %85
  br i1 %cmp129, label %for.body131, label %for.end148

for.body131:                                      ; preds = %for.cond128
  %86 = load ptr, ptr %xr.addr, align 8
  %87 = load i32, ptr %l, align 4
  %mul133 = mul nsw i32 %87, 3
  %88 = load i32, ptr %i, align 4
  %add134 = add nsw i32 %mul133, %88
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %86, i64 %idxprom135
  %89 = load double, ptr %arrayidx136, align 8
  %90 = call double @llvm.fabs.f64(double %89)
  %91 = load ptr, ptr %ix.addr, align 8
  %92 = load i32, ptr %l, align 4
  %mul137 = mul nsw i32 %92, 3
  %93 = load i32, ptr %i, align 4
  %add138 = add nsw i32 %mul137, %93
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds i32, ptr %91, i64 %idxprom139
  %94 = load i32, ptr %arrayidx140, align 4
  %idxprom141 = sext i32 %94 to i64
  %arrayidx142 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom141
  %95 = load double, ptr %arrayidx142, align 8
  %96 = load double, ptr %step, align 8
  %neg144 = fneg double %95
  %97 = call double @llvm.fmuladd.f64(double %neg144, double %96, double %90)
  %98 = load double, ptr %sum, align 8
  %99 = call double @llvm.fmuladd.f64(double %97, double %97, double %98)
  store double %99, ptr %sum, align 8
  %100 = load i32, ptr %l, align 4
  %inc147 = add nsw i32 %100, 1
  br label %for.cond128, !llvm.loop !39

for.end148:                                       ; preds = %for.cond128
  %101 = load double, ptr %sum, align 8
  %102 = load double, ptr %bw, align 8
  %div149 = fdiv double %101, %102
  %103 = load ptr, ptr %xfsf.addr, align 8
  %104 = load i32, ptr %i, align 4
  %add150 = add nsw i32 %104, 1
  %idxprom151 = sext i32 %add150 to i64
  %105 = load i32, ptr %sfb, align 4
  %idxprom153 = zext i32 %105 to i64
  %arrayidx154 = getelementptr inbounds [21 x double], ptr %103, i64 %idxprom151, i64 %idxprom153
  store double %div149, ptr %arrayidx154, align 8
  %106 = load ptr, ptr %xfsf.addr, align 8
  %107 = load i32, ptr %i, align 4
  %add155 = add nsw i32 %107, 1
  %idxprom156 = sext i32 %add155 to i64
  %108 = load i32, ptr %sfb, align 4
  %idxprom158 = zext i32 %108 to i64
  %arrayidx159 = getelementptr inbounds [21 x double], ptr %106, i64 %idxprom156, i64 %idxprom158
  %109 = load double, ptr %arrayidx159, align 8
  %110 = load ptr, ptr %l3_xmin.addr, align 8
  %idxprom161 = zext i32 %108 to i64
  %111 = load i32, ptr %i, align 4
  %idxprom163 = sext i32 %111 to i64
  %arrayidx164 = getelementptr inbounds %struct.III_psy_xmin, ptr %110, i64 0, i32 1, i64 %idxprom161, i64 %idxprom163
  %112 = load double, ptr %arrayidx164, align 8
  %div165 = fdiv double %109, %112
  %cmp166 = fcmp olt double %div165, 1.000000e-03
  br i1 %cmp166, label %cond.end181, label %cond.false169

cond.false169:                                    ; preds = %for.end148
  %113 = load ptr, ptr %xfsf.addr, align 8
  %114 = load i32, ptr %i, align 4
  %add170 = add nsw i32 %114, 1
  %idxprom171 = sext i32 %add170 to i64
  %115 = load i32, ptr %sfb, align 4
  %idxprom173 = zext i32 %115 to i64
  %arrayidx174 = getelementptr inbounds [21 x double], ptr %113, i64 %idxprom171, i64 %idxprom173
  %116 = load double, ptr %arrayidx174, align 8
  %117 = load ptr, ptr %l3_xmin.addr, align 8
  %idxprom176 = zext i32 %115 to i64
  %118 = load i32, ptr %i, align 4
  %idxprom178 = sext i32 %118 to i64
  %arrayidx179 = getelementptr inbounds %struct.III_psy_xmin, ptr %117, i64 0, i32 1, i64 %idxprom176, i64 %idxprom178
  %119 = load double, ptr %arrayidx179, align 8
  %div180 = fdiv double %116, %119
  br label %cond.end181

cond.end181:                                      ; preds = %for.end148, %cond.false169
  %cond182 = phi double [ %div180, %cond.false169 ], [ 1.000000e-03, %for.end148 ]
  %120 = call double @llvm.log10.f64(double %cond182)
  %mul183 = fmul double %120, 1.000000e+01
  store double %mul183, ptr %noise, align 8
  %121 = load ptr, ptr %distort.addr, align 8
  %122 = load i32, ptr %i, align 4
  %add184 = add nsw i32 %122, 1
  %idxprom185 = sext i32 %add184 to i64
  %123 = load i32, ptr %sfb, align 4
  %idxprom187 = zext i32 %123 to i64
  %arrayidx188 = getelementptr inbounds [21 x double], ptr %121, i64 %idxprom185, i64 %idxprom187
  store double %mul183, ptr %arrayidx188, align 8
  %124 = load double, ptr %noise, align 8
  %cmp189 = fcmp ogt double %124, 0.000000e+00
  br i1 %cmp189, label %if.then191, label %if.end194

if.then191:                                       ; preds = %cond.end181
  %125 = load i32, ptr %over, align 4
  %inc192 = add nsw i32 %125, 1
  store i32 %inc192, ptr %over, align 4
  %126 = load double, ptr %noise, align 8
  %127 = load ptr, ptr %over_noise.addr, align 8
  %128 = load double, ptr %127, align 8
  %add193 = fadd double %128, %126
  store double %add193, ptr %127, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.then191, %cond.end181
  %129 = load double, ptr %noise, align 8
  %130 = load ptr, ptr %tot_noise.addr, align 8
  %131 = load double, ptr %130, align 8
  %add195 = fadd double %131, %129
  store double %add195, ptr %130, align 8
  %132 = load ptr, ptr %max_noise.addr, align 8
  %133 = load double, ptr %132, align 8
  %134 = load double, ptr %noise, align 8
  %cmp196 = fcmp ogt double %133, %134
  br i1 %cmp196, label %cond.true198, label %cond.false199

cond.true198:                                     ; preds = %if.end194
  %135 = load ptr, ptr %max_noise.addr, align 8
  %136 = load double, ptr %135, align 8
  br label %cond.end200

cond.false199:                                    ; preds = %if.end194
  %137 = load double, ptr %noise, align 8
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false199, %cond.true198
  %cond201 = phi double [ %136, %cond.true198 ], [ %137, %cond.false199 ]
  %138 = load ptr, ptr %max_noise.addr, align 8
  store double %cond201, ptr %138, align 8
  %139 = load i32, ptr %count, align 4
  %inc202 = add nsw i32 %139, 1
  store i32 %inc202, ptr %count, align 4
  %140 = load i32, ptr %sfb, align 4
  %inc204 = add i32 %140, 1
  br label %for.cond82, !llvm.loop !40

for.inc206:                                       ; preds = %for.cond82
  %141 = load i32, ptr %i, align 4
  %inc207 = add nsw i32 %141, 1
  br label %for.cond78, !llvm.loop !41

for.end208:                                       ; preds = %for.cond78
  %142 = load i32, ptr %count, align 4
  %cmp209 = icmp sgt i32 %142, 1
  br i1 %cmp209, label %if.then211, label %if.end214

if.then211:                                       ; preds = %for.end208
  %143 = load i32, ptr %count, align 4
  %conv212 = sitofp i32 %143 to double
  %144 = load ptr, ptr %tot_noise.addr, align 8
  %145 = load double, ptr %144, align 8
  %div213 = fdiv double %145, %conv212
  store double %div213, ptr %144, align 8
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %for.end208
  %146 = load i32, ptr %over, align 4
  %cmp215 = icmp sgt i32 %146, 1
  br i1 %cmp215, label %if.then217, label %if.end220

if.then217:                                       ; preds = %if.end214
  %147 = load i32, ptr %over, align 4
  %conv218 = sitofp i32 %147 to double
  %148 = load ptr, ptr %over_noise.addr, align 8
  %149 = load double, ptr %148, align 8
  %div219 = fdiv double %149, %conv218
  store double %div219, ptr %148, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.end214
  %150 = load i32, ptr %over, align 4
  ret i32 %150
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
  %5 = load double, ptr %over_noise.addr, align 8
  %6 = load double, ptr %best_over_noise.addr, align 8
  %cmp3 = fcmp ole double %5, %6
  %7 = select i1 %cmp2, i1 %cmp3, i1 false
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %8 = phi i1 [ true, %if.then ], [ %7, %lor.rhs ]
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
  %18 = load double, ptr %max_noise.addr, align 8
  %19 = load double, ptr %best_max_noise.addr, align 8
  %add = fadd double %19, 2.000000e+00
  %cmp20 = fcmp olt double %18, %add
  %20 = select i1 %cmp17, i1 %cmp20, i1 false
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, ptr %better, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.end13
  %21 = load i32, ptr %experimentalX.addr, align 4
  %cmp24 = icmp eq i32 %21, 4
  br i1 %cmp24, label %if.then26, label %if.end93

if.then26:                                        ; preds = %if.end23
  %22 = load double, ptr %max_noise.addr, align 8
  %cmp27 = fcmp ole double %22, 0.000000e+00
  %23 = load double, ptr %best_max_noise.addr, align 8
  %cmp29 = fcmp ogt double %23, 2.000000e+00
  %or.cond = select i1 %cmp27, i1 %cmp29, i1 false
  br i1 %or.cond, label %lor.end91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26
  %24 = load double, ptr %max_noise.addr, align 8
  %cmp31 = fcmp ole double %24, 0.000000e+00
  %25 = load double, ptr %best_max_noise.addr, align 8
  %cmp34 = fcmp olt double %25, 0.000000e+00
  %or.cond1 = select i1 %cmp31, i1 %cmp34, i1 false
  br i1 %or.cond1, label %land.lhs.true36, label %lor.lhs.false43

land.lhs.true36:                                  ; preds = %lor.lhs.false
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

lor.lhs.false43:                                  ; preds = %land.lhs.true40, %land.lhs.true36, %lor.lhs.false
  %30 = load double, ptr %max_noise.addr, align 8
  %cmp44 = fcmp ole double %30, 0.000000e+00
  %31 = load double, ptr %best_max_noise.addr, align 8
  %cmp47 = fcmp ogt double %31, 0.000000e+00
  %or.cond2 = select i1 %cmp44, i1 %cmp47, i1 false
  br i1 %or.cond2, label %land.lhs.true49, label %lor.lhs.false57

land.lhs.true49:                                  ; preds = %lor.lhs.false43
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

lor.lhs.false57:                                  ; preds = %land.lhs.true53, %land.lhs.true49, %lor.lhs.false43
  %37 = load double, ptr %max_noise.addr, align 8
  %cmp58 = fcmp ogt double %37, 0.000000e+00
  %38 = load double, ptr %best_max_noise.addr, align 8
  %cmp61 = fcmp ogt double %38, -5.000000e-01
  %or.cond3 = select i1 %cmp58, i1 %cmp61, i1 false
  br i1 %or.cond3, label %land.lhs.true63, label %lor.rhs72

land.lhs.true63:                                  ; preds = %lor.lhs.false57
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

lor.rhs72:                                        ; preds = %land.lhs.true67, %land.lhs.true63, %lor.lhs.false57
  %45 = load double, ptr %max_noise.addr, align 8
  %cmp73 = fcmp ogt double %45, 0.000000e+00
  %46 = load double, ptr %best_max_noise.addr, align 8
  %cmp76 = fcmp ogt double %46, -1.000000e+00
  %or.cond4 = select i1 %cmp73, i1 %cmp76, i1 false
  br i1 %or.cond4, label %land.lhs.true78, label %lor.end91

land.lhs.true78:                                  ; preds = %lor.rhs72
  %47 = load double, ptr %best_max_noise.addr, align 8
  %add79 = fadd double %47, 1.500000e+00
  %48 = load double, ptr %max_noise.addr, align 8
  %cmp80 = fcmp ogt double %add79, %48
  br i1 %cmp80, label %land.rhs82, label %lor.end91

land.rhs82:                                       ; preds = %land.lhs.true78
  %49 = load double, ptr %tot_noise.addr, align 8
  %50 = load double, ptr %over_noise.addr, align 8
  %add83 = fadd double %49, %50
  %add84 = fadd double %add83, %50
  %51 = load double, ptr %best_tot_noise.addr, align 8
  %52 = load double, ptr %best_over_noise.addr, align 8
  %add85 = fadd double %51, %52
  %add86 = fadd double %add85, %52
  %cmp87 = fcmp olt double %add84, %add86
  br label %lor.end91

lor.end91:                                        ; preds = %lor.rhs72, %land.lhs.true78, %land.rhs82, %if.then26, %land.lhs.true67, %land.lhs.true53, %land.lhs.true40
  %53 = phi i1 [ true, %land.lhs.true67 ], [ true, %land.lhs.true53 ], [ true, %land.lhs.true40 ], [ true, %if.then26 ], [ false, %land.lhs.true78 ], [ false, %lor.rhs72 ], [ %cmp87, %land.rhs82 ]
  %lor.ext92 = zext i1 %53 to i32
  store i32 %lor.ext92, ptr %better, align 4
  br label %if.end93

if.end93:                                         ; preds = %lor.end91, %if.end23
  %54 = load i32, ptr %experimentalX.addr, align 4
  %cmp94 = icmp eq i32 %54, 5
  br i1 %cmp94, label %if.then96, label %if.end109

if.then96:                                        ; preds = %if.end93
  %55 = load double, ptr %over_noise.addr, align 8
  %56 = load double, ptr %best_over_noise.addr, align 8
  %cmp97 = fcmp olt double %55, %56
  br i1 %cmp97, label %lor.end107, label %lor.rhs99

lor.rhs99:                                        ; preds = %if.then96
  %57 = load double, ptr %over_noise.addr, align 8
  %58 = load double, ptr %best_over_noise.addr, align 8
  %cmp100 = fcmp oeq double %57, %58
  %59 = load double, ptr %tot_noise.addr, align 8
  %60 = load double, ptr %best_tot_noise.addr, align 8
  %cmp103 = fcmp olt double %59, %60
  %61 = select i1 %cmp100, i1 %cmp103, i1 false
  br label %lor.end107

lor.end107:                                       ; preds = %lor.rhs99, %if.then96
  %62 = phi i1 [ true, %if.then96 ], [ %61, %lor.rhs99 ]
  %lor.ext108 = zext i1 %62 to i32
  store i32 %lor.ext108, ptr %better, align 4
  br label %if.end109

if.end109:                                        ; preds = %lor.end107, %if.end93
  %63 = load i32, ptr %experimentalX.addr, align 4
  %cmp110 = icmp eq i32 %63, 6
  br i1 %cmp110, label %if.then112, label %if.end135

if.then112:                                       ; preds = %if.end109
  %64 = load double, ptr %over_noise.addr, align 8
  %65 = load double, ptr %best_over_noise.addr, align 8
  %cmp113 = fcmp olt double %64, %65
  br i1 %cmp113, label %lor.end133, label %lor.rhs115

lor.rhs115:                                       ; preds = %if.then112
  %66 = load double, ptr %over_noise.addr, align 8
  %67 = load double, ptr %best_over_noise.addr, align 8
  %cmp116 = fcmp oeq double %66, %67
  br i1 %cmp116, label %land.rhs118, label %lor.end133

land.rhs118:                                      ; preds = %lor.rhs115
  %68 = load double, ptr %max_noise.addr, align 8
  %69 = load double, ptr %best_max_noise.addr, align 8
  %cmp119 = fcmp olt double %68, %69
  br i1 %cmp119, label %lor.end133, label %lor.rhs121

lor.rhs121:                                       ; preds = %land.rhs118
  %70 = load double, ptr %max_noise.addr, align 8
  %71 = load double, ptr %best_max_noise.addr, align 8
  %cmp122 = fcmp oeq double %70, %71
  %72 = load double, ptr %tot_noise.addr, align 8
  %73 = load double, ptr %best_tot_noise.addr, align 8
  %cmp125 = fcmp ole double %72, %73
  %74 = select i1 %cmp122, i1 %cmp125, i1 false
  br label %lor.end133

lor.end133:                                       ; preds = %lor.rhs115, %lor.rhs121, %land.rhs118, %if.then112
  %75 = phi i1 [ true, %if.then112 ], [ false, %lor.rhs115 ], [ true, %land.rhs118 ], [ %74, %lor.rhs121 ]
  %lor.ext134 = zext i1 %75 to i32
  store i32 %lor.ext134, ptr %better, align 4
  br label %if.end135

if.end135:                                        ; preds = %lor.end133, %if.end109
  %76 = load i32, ptr %better, align 4
  ret i32 %76
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
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 13
  %0 = load i32, ptr %scalefac_scale, align 4
  %cmp = icmp eq i32 %0, 0
  %. = select i1 %cmp, double 0x3FF4BFDAD5362A27, double 0x3FFAE89F995AD3AE
  store double %., ptr %ifqstep34, align 8
  store double -9.000000e+02, ptr %distort_thresh, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %storemerge1 = phi i32 [ 0, %entry ], [ %inc, %cond.end ]
  store i32 %storemerge1, ptr %sfb, align 4
  %1 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 16
  %2 = load i32, ptr %sfb_lmax, align 8
  %cmp1 = icmp ult i32 %storemerge1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %distort.addr, align 8
  %4 = load i32, ptr %sfb, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [21 x double], ptr %3, i64 0, i64 %idxprom
  %5 = load double, ptr %arrayidx2, align 8
  %6 = load double, ptr %distort_thresh, align 8
  %cmp3 = fcmp ogt double %5, %6
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load ptr, ptr %distort.addr, align 8
  %8 = load i32, ptr %sfb, align 4
  %idxprom5 = zext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [21 x double], ptr %7, i64 0, i64 %idxprom5
  %9 = load double, ptr %arrayidx6, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %10 = load double, ptr %distort_thresh, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %9, %cond.true ], [ %10, %cond.false ]
  store double %cond, ptr %distort_thresh, align 8
  %11 = load i32, ptr %sfb, align 4
  %inc = add i32 %11, 1
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %12, i64 0, i32 17
  %13 = load i32, ptr %sfb_smax, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc30, %for.end
  %storemerge2 = phi i32 [ %13, %for.end ], [ %inc31, %for.inc30 ]
  store i32 %storemerge2, ptr %sfb, align 4
  %cmp8 = icmp ult i32 %storemerge2, 12
  br i1 %cmp8, label %for.cond10, label %for.end32

for.cond10:                                       ; preds = %for.cond7, %cond.end25
  %storemerge8 = phi i32 [ %inc28, %cond.end25 ], [ 0, %for.cond7 ]
  store i32 %storemerge8, ptr %i, align 4
  %cmp11 = icmp slt i32 %storemerge8, 3
  br i1 %cmp11, label %for.body12, label %for.inc30

for.body12:                                       ; preds = %for.cond10
  %14 = load ptr, ptr %distort.addr, align 8
  %15 = load i32, ptr %i, align 4
  %add = add nsw i32 %15, 1
  %idxprom13 = sext i32 %add to i64
  %16 = load i32, ptr %sfb, align 4
  %idxprom15 = zext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [21 x double], ptr %14, i64 %idxprom13, i64 %idxprom15
  %17 = load double, ptr %arrayidx16, align 8
  %18 = load double, ptr %distort_thresh, align 8
  %cmp17 = fcmp ogt double %17, %18
  br i1 %cmp17, label %cond.true18, label %cond.false24

cond.true18:                                      ; preds = %for.body12
  %19 = load ptr, ptr %distort.addr, align 8
  %20 = load i32, ptr %i, align 4
  %add19 = add nsw i32 %20, 1
  %idxprom20 = sext i32 %add19 to i64
  %21 = load i32, ptr %sfb, align 4
  %idxprom22 = zext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [21 x double], ptr %19, i64 %idxprom20, i64 %idxprom22
  %22 = load double, ptr %arrayidx23, align 8
  br label %cond.end25

cond.false24:                                     ; preds = %for.body12
  %23 = load double, ptr %distort_thresh, align 8
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.true18
  %cond26 = phi double [ %22, %cond.true18 ], [ %23, %cond.false24 ]
  store double %cond26, ptr %distort_thresh, align 8
  %24 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %24, 1
  br label %for.cond10, !llvm.loop !43

for.inc30:                                        ; preds = %for.cond10
  %25 = load i32, ptr %sfb, align 4
  %inc31 = add i32 %25, 1
  br label %for.cond7, !llvm.loop !44

for.end32:                                        ; preds = %for.cond7
  %26 = load double, ptr %distort_thresh, align 8
  %mul = fmul double %26, 1.050000e+00
  %cmp33 = fcmp olt double %mul, 0.000000e+00
  %27 = load double, ptr %distort_thresh, align 8
  %mul35 = fmul double %27, 1.050000e+00
  %cond38 = select i1 %cmp33, double %mul35, double 0.000000e+00
  store double %cond38, ptr %distort_thresh, align 8
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc67, %for.end32
  %storemerge3 = phi i32 [ 0, %for.end32 ], [ %inc68, %for.inc67 ]
  store i32 %storemerge3, ptr %sfb, align 4
  %28 = load ptr, ptr %cod_info.addr, align 8
  %sfb_lmax40 = getelementptr inbounds %struct.gr_info, ptr %28, i64 0, i32 16
  %29 = load i32, ptr %sfb_lmax40, align 8
  %cmp41 = icmp ult i32 %storemerge3, %29
  br i1 %cmp41, label %for.body42, label %for.cond70

for.body42:                                       ; preds = %for.cond39
  %30 = load ptr, ptr %distort.addr, align 8
  %31 = load i32, ptr %sfb, align 4
  %idxprom44 = zext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [21 x double], ptr %30, i64 0, i64 %idxprom44
  %32 = load double, ptr %arrayidx45, align 8
  %33 = load double, ptr %distort_thresh, align 8
  %cmp46 = fcmp ogt double %32, %33
  br i1 %cmp46, label %if.then47, label %for.inc67

if.then47:                                        ; preds = %for.body42
  %34 = load ptr, ptr %scalefac.addr, align 8
  %35 = load i32, ptr %sfb, align 4
  %idxprom49 = zext i32 %35 to i64
  %arrayidx50 = getelementptr inbounds [22 x i32], ptr %34, i64 0, i64 %idxprom49
  %36 = load i32, ptr %arrayidx50, align 4
  %inc51 = add nsw i32 %36, 1
  store i32 %inc51, ptr %arrayidx50, align 4
  %idxprom52 = zext i32 %35 to i64
  %arrayidx53 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom52
  %37 = load i32, ptr %arrayidx53, align 4
  store i32 %37, ptr %start, align 4
  %38 = load i32, ptr %sfb, align 4
  %add54 = add i32 %38, 1
  %idxprom55 = zext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom55
  %39 = load i32, ptr %arrayidx56, align 4
  store i32 %39, ptr %end, align 4
  %40 = load i32, ptr %start, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.body59, %if.then47
  %storemerge7 = phi i32 [ %40, %if.then47 ], [ %inc64, %for.body59 ]
  store i32 %storemerge7, ptr %l, align 4
  %41 = load i32, ptr %end, align 4
  %cmp58 = icmp slt i32 %storemerge7, %41
  br i1 %cmp58, label %for.body59, label %for.inc67

for.body59:                                       ; preds = %for.cond57
  %42 = load double, ptr %ifqstep34, align 8
  %43 = load ptr, ptr %xrpow.addr, align 8
  %44 = load i32, ptr %l, align 4
  %idxprom60 = sext i32 %44 to i64
  %arrayidx61 = getelementptr inbounds double, ptr %43, i64 %idxprom60
  %45 = load double, ptr %arrayidx61, align 8
  %mul62 = fmul double %45, %42
  store double %mul62, ptr %arrayidx61, align 8
  %46 = load i32, ptr %l, align 4
  %inc64 = add nsw i32 %46, 1
  br label %for.cond57, !llvm.loop !45

for.inc67:                                        ; preds = %for.body42, %for.cond57
  %47 = load i32, ptr %sfb, align 4
  %inc68 = add i32 %47, 1
  br label %for.cond39, !llvm.loop !46

for.cond70:                                       ; preds = %for.cond39, %for.inc109
  %storemerge4 = phi i32 [ %inc110, %for.inc109 ], [ 0, %for.cond39 ]
  store i32 %storemerge4, ptr %i, align 4
  %cmp71 = icmp slt i32 %storemerge4, 3
  br i1 %cmp71, label %for.body72, label %for.end111

for.body72:                                       ; preds = %for.cond70
  %48 = load ptr, ptr %cod_info.addr, align 8
  %sfb_smax73 = getelementptr inbounds %struct.gr_info, ptr %48, i64 0, i32 17
  %49 = load i32, ptr %sfb_smax73, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc106, %for.body72
  %storemerge5 = phi i32 [ %49, %for.body72 ], [ %inc107, %for.inc106 ]
  store i32 %storemerge5, ptr %sfb, align 4
  %cmp75 = icmp ult i32 %storemerge5, 12
  br i1 %cmp75, label %for.body76, label %for.inc109

for.body76:                                       ; preds = %for.cond74
  %50 = load ptr, ptr %distort.addr, align 8
  %51 = load i32, ptr %i, align 4
  %add77 = add nsw i32 %51, 1
  %idxprom78 = sext i32 %add77 to i64
  %52 = load i32, ptr %sfb, align 4
  %idxprom80 = zext i32 %52 to i64
  %arrayidx81 = getelementptr inbounds [21 x double], ptr %50, i64 %idxprom78, i64 %idxprom80
  %53 = load double, ptr %arrayidx81, align 8
  %54 = load double, ptr %distort_thresh, align 8
  %cmp82 = fcmp ogt double %53, %54
  br i1 %cmp82, label %if.then83, label %for.inc106

if.then83:                                        ; preds = %for.body76
  %55 = load ptr, ptr %scalefac.addr, align 8
  %56 = load i32, ptr %sfb, align 4
  %idxprom84 = zext i32 %56 to i64
  %57 = load i32, ptr %i, align 4
  %idxprom86 = sext i32 %57 to i64
  %arrayidx87 = getelementptr inbounds %struct.III_scalefac_t, ptr %55, i64 0, i32 1, i64 %idxprom84, i64 %idxprom86
  %58 = load i32, ptr %arrayidx87, align 4
  %inc88 = add nsw i32 %58, 1
  store i32 %inc88, ptr %arrayidx87, align 4
  %59 = load i32, ptr %sfb, align 4
  %idxprom89 = zext i32 %59 to i64
  %arrayidx90 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom89
  %60 = load i32, ptr %arrayidx90, align 4
  store i32 %60, ptr %start, align 4
  %add91 = add i32 %59, 1
  %idxprom92 = zext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom92
  %61 = load i32, ptr %arrayidx93, align 4
  store i32 %61, ptr %end, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.body96, %if.then83
  %storemerge6 = phi i32 [ %60, %if.then83 ], [ %inc103, %for.body96 ]
  store i32 %storemerge6, ptr %l, align 4
  %62 = load i32, ptr %end, align 4
  %cmp95 = icmp slt i32 %storemerge6, %62
  br i1 %cmp95, label %for.body96, label %for.inc106

for.body96:                                       ; preds = %for.cond94
  %63 = load double, ptr %ifqstep34, align 8
  %64 = load ptr, ptr %xrpow.addr, align 8
  %65 = load i32, ptr %l, align 4
  %mul97 = mul nsw i32 %65, 3
  %66 = load i32, ptr %i, align 4
  %add98 = add nsw i32 %mul97, %66
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds double, ptr %64, i64 %idxprom99
  %67 = load double, ptr %arrayidx100, align 8
  %mul101 = fmul double %67, %63
  store double %mul101, ptr %arrayidx100, align 8
  %68 = load i32, ptr %l, align 4
  %inc103 = add nsw i32 %68, 1
  br label %for.cond94, !llvm.loop !47

for.inc106:                                       ; preds = %for.body76, %for.cond94
  %69 = load i32, ptr %sfb, align 4
  %inc107 = add i32 %69, 1
  br label %for.cond74, !llvm.loop !48

for.inc109:                                       ; preds = %for.cond74
  %70 = load i32, ptr %i, align 4
  %inc110 = add nsw i32 %70, 1
  br label %for.cond70, !llvm.loop !49

for.end111:                                       ; preds = %for.cond70
  ret void
}

declare i32 @loop_break(ptr noundef, ptr noundef) #1

declare i32 @scale_bitcount(ptr noundef, ptr noundef) #1

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log10.f64(double) #3

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_lame_quantize_0(i32 noundef %VBR_q, i32 noundef %nbits) #7 {
entry:
  %masking_lower_db = alloca float, align 4
  %mul = shl nsw i32 %VBR_q, 1
  %add = add nsw i32 %mul, -6
  %conv = sitofp i32 %add to float
  store float %conv, ptr %masking_lower_db, align 4
  %sub = add nsw i32 %nbits, -125
  %conv1 = sitofp i32 %sub to double
  %div = fdiv double %conv1, 2.375000e+03
  %conv2 = fptrunc double %div to float
  %sub3 = fadd float %conv2, -1.000000e+00
  %mul4 = fmul float %sub3, 4.000000e+00
  %0 = load float, ptr %masking_lower_db, align 4
  %add5 = fadd float %0, %mul4
  store float %add5, ptr %masking_lower_db, align 4
  %div6 = fdiv float %add5, 1.000000e+01
  %conv7 = fpext float %div6 to double
  %__exp10 = call double @__exp10(double %conv7) #9
  %conv8 = fptrunc double %__exp10 to float
  store float %conv8, ptr @masking_lower, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

declare double @__exp10(double)

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #7 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn nounwind }

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
