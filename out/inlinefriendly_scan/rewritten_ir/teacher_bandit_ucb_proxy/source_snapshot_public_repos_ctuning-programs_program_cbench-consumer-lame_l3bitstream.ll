; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_bandit_ucb_proxy/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-lame_l3bitstream.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/l3bitstream.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.huffcodetab = type { i32, i32, ptr, ptr }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BF_FrameData = type { i32, i32, i32, ptr, ptr, [2 x ptr], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], [2 x [2 x ptr]], ptr }
%struct.BF_PartHolder = type { i32, ptr }
%struct.BF_FrameResults = type { i32, i32, i32 }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@frameData = global ptr null, align 8
@frameResults = global ptr null, align 8
@PartHoldersInitialized = global i32 0, align 4
@bs = internal global ptr null, align 8
@__func__.III_format_bitstream = private unnamed_addr constant [21 x i8] c"III_format_bitstream\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"l3bitstream.c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"frameData\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"frameResults\00", align 1
@headerPH = global ptr null, align 8
@frameSIPH = global ptr null, align 8
@channelSIPH = global [2 x ptr] zeroinitializer, align 8
@spectrumSIPH = global [2 x [2 x ptr]] zeroinitializer, align 8
@scaleFactorsPH = global [2 x [2 x ptr]] zeroinitializer, align 8
@codedDataPH = global [2 x [2 x ptr]] zeroinitializer, align 8
@userSpectrumPH = global [2 x [2 x ptr]] zeroinitializer, align 8
@userFrameDataPH = global ptr null, align 8
@ht = external global [34 x %struct.huffcodetab], align 8
@__func__.HuffmanCode = private unnamed_addr constant [12 x i8] c"HuffmanCode\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"linbitsx <= h->linmax\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"linbitsy <= h->linmax\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"*cbits <= 32\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"*xbits <= 32\00", align 1
@slen1_tab = internal global [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 4
@slen2_tab = internal global [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 4
@__func__.encodeMainData = private unnamed_addr constant [15 x i8] c"encodeMainData\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"gi->sfb_partition_table\00", align 1
@scalefac_band = external global %struct.scalefac_struct, align 4
@__func__.Huffmancodebits = private unnamed_addr constant [16 x i8] c"Huffmancodebits\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"tableindex < 32\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"scalefac_index < 23\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"(gi->count1table_select < 2)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"count1End <= 576\00", align 1
@__stderrp = external global ptr, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"opps - adding stuffing bits = %i.\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"this should not happen...\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"bitsWritten == (int)(gi->part2_3_length - gi->part2_length)\00", align 1
@crc = internal global i32 0, align 4
@__func__.encodeSideInfo = private unnamed_addr constant [15 x i8] c"encodeSideInfo\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"gi->block_type == NORM_TYPE\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @putMyBits(i32 noundef %val, i32 noundef %len) #0 {
entry:
  %0 = load ptr, ptr @bs, align 8
  call void @putbits(ptr noundef %0, i32 noundef %val, i32 noundef %len) #5
  ret void
}

declare void @putbits(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @III_format_bitstream(ptr noundef %gfp, i32 noundef %bitsPerFrame, ptr noundef %l3_enc, ptr noundef %l3_side, ptr noundef %scalefac, ptr noundef %in_bs) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %bitsPerFrame.addr = alloca i32, align 4
  %l3_enc.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store i32 %bitsPerFrame, ptr %bitsPerFrame.addr, align 4
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  store ptr %in_bs, ptr @bs, align 8
  %0 = load ptr, ptr @frameData, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call dereferenceable_or_null(184) ptr @calloc(i64 noundef 1, i64 noundef 184) #6
  store ptr %call, ptr @frameData, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.true, label %if.end

cond.true:                                        ; preds = %if.then
  call void @__assert_rtn(ptr noundef nonnull @__func__.III_format_bitstream, ptr noundef nonnull @.str, i32 noundef 73, ptr noundef nonnull @.str.1) #7
  unreachable

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @frameResults, align 8
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.end
  %call5 = call dereferenceable_or_null(12) ptr @calloc(i64 noundef 1, i64 noundef 12) #6
  store ptr %call5, ptr @frameResults, align 8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cond.true11, label %if.end14

cond.true11:                                      ; preds = %if.then4
  call void @__assert_rtn(ptr noundef nonnull @__func__.III_format_bitstream, ptr noundef nonnull @.str, i32 noundef 78, ptr noundef nonnull @.str.2) #7
  unreachable

if.end14:                                         ; preds = %if.then4, %if.end
  %2 = load i32, ptr @PartHoldersInitialized, align 4
  %tobool15.not = icmp eq i32 %2, 0
  br i1 %tobool15.not, label %if.then16, label %if.end57

if.then16:                                        ; preds = %if.end14
  %call17 = call ptr @BF_newPartHolder(i32 noundef 14) #5
  store ptr %call17, ptr @headerPH, align 8
  %call18 = call ptr @BF_newPartHolder(i32 noundef 12) #5
  store ptr %call18, ptr @frameSIPH, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then16
  %storemerge = phi i32 [ 0, %if.then16 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ch, align 4
  %cmp19 = icmp slt i32 %storemerge, 2
  br i1 %cmp19, label %for.body, label %for.cond22

for.body:                                         ; preds = %for.cond
  %call21 = call ptr @BF_newPartHolder(i32 noundef 8) #5
  %3 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %idxprom
  store ptr %call21, ptr %arrayidx, align 8
  %4 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %4, 1
  br label %for.cond, !llvm.loop !6

for.cond22:                                       ; preds = %for.cond, %for.inc53
  %storemerge1 = phi i32 [ %inc54, %for.inc53 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %gr, align 4
  %cmp23 = icmp slt i32 %storemerge1, 2
  br i1 %cmp23, label %for.cond26, label %for.end55

for.cond26:                                       ; preds = %for.cond22, %for.body29
  %storemerge5 = phi i32 [ %inc51, %for.body29 ], [ 0, %for.cond22 ]
  store i32 %storemerge5, ptr %ch, align 4
  %cmp27 = icmp slt i32 %storemerge5, 2
  br i1 %cmp27, label %for.body29, label %for.inc53

for.body29:                                       ; preds = %for.cond26
  %call30 = call ptr @BF_newPartHolder(i32 noundef 32) #5
  %5 = load i32, ptr %gr, align 4
  %idxprom31 = sext i32 %5 to i64
  %6 = load i32, ptr %ch, align 4
  %idxprom33 = sext i32 %6 to i64
  %arrayidx34 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom31, i64 %idxprom33
  store ptr %call30, ptr %arrayidx34, align 8
  %call35 = call ptr @BF_newPartHolder(i32 noundef 64) #5
  %7 = load i32, ptr %gr, align 4
  %idxprom36 = sext i32 %7 to i64
  %8 = load i32, ptr %ch, align 4
  %idxprom38 = sext i32 %8 to i64
  %arrayidx39 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom36, i64 %idxprom38
  store ptr %call35, ptr %arrayidx39, align 8
  %call40 = call ptr @BF_newPartHolder(i32 noundef 576) #5
  %9 = load i32, ptr %gr, align 4
  %idxprom41 = sext i32 %9 to i64
  %10 = load i32, ptr %ch, align 4
  %idxprom43 = sext i32 %10 to i64
  %arrayidx44 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom41, i64 %idxprom43
  store ptr %call40, ptr %arrayidx44, align 8
  %call45 = call ptr @BF_newPartHolder(i32 noundef 4) #5
  %11 = load i32, ptr %gr, align 4
  %idxprom46 = sext i32 %11 to i64
  %12 = load i32, ptr %ch, align 4
  %idxprom48 = sext i32 %12 to i64
  %arrayidx49 = getelementptr inbounds [2 x [2 x ptr]], ptr @userSpectrumPH, i64 0, i64 %idxprom46, i64 %idxprom48
  store ptr %call45, ptr %arrayidx49, align 8
  %13 = load i32, ptr %ch, align 4
  %inc51 = add nsw i32 %13, 1
  br label %for.cond26, !llvm.loop !8

for.inc53:                                        ; preds = %for.cond26
  %14 = load i32, ptr %gr, align 4
  %inc54 = add nsw i32 %14, 1
  br label %for.cond22, !llvm.loop !9

for.end55:                                        ; preds = %for.cond22
  %call56 = call ptr @BF_newPartHolder(i32 noundef 8) #5
  store ptr %call56, ptr @userFrameDataPH, align 8
  store i32 1, ptr @PartHoldersInitialized, align 4
  br label %if.end57

if.end57:                                         ; preds = %for.end55, %if.end14
  %15 = load ptr, ptr %gfp.addr, align 8
  %16 = load ptr, ptr %l3_side.addr, align 8
  %call58 = call i32 @encodeSideInfo(ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %l3_enc.addr, align 8
  %18 = load ptr, ptr %scalefac.addr, align 8
  call void @encodeMainData(ptr noundef %15, ptr noundef %17, ptr noundef %16, ptr noundef %18)
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, ptr %16, i64 0, i32 2
  %19 = load i32, ptr %resvDrain, align 8
  call void @drain_into_ancillary_data(i32 noundef %19)
  %20 = load i32, ptr %bitsPerFrame.addr, align 4
  %21 = load ptr, ptr @frameData, align 8
  store i32 %20, ptr %21, align 8
  %22 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %22, i64 0, i32 45
  %23 = load i32, ptr %mode_gr, align 8
  %24 = load ptr, ptr @frameData, align 8
  %nGranules = getelementptr inbounds %struct.BF_FrameData, ptr %24, i64 0, i32 1
  store i32 %23, ptr %nGranules, align 4
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %22, i64 0, i32 46
  %25 = load i32, ptr %stereo, align 4
  %26 = load ptr, ptr @frameData, align 8
  %nChannels = getelementptr inbounds %struct.BF_FrameData, ptr %26, i64 0, i32 2
  store i32 %25, ptr %nChannels, align 8
  %27 = load ptr, ptr @headerPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %27, i64 0, i32 1
  %28 = load ptr, ptr %part, align 8
  %header = getelementptr inbounds %struct.BF_FrameData, ptr %26, i64 0, i32 3
  store ptr %28, ptr %header, align 8
  %29 = load ptr, ptr @frameSIPH, align 8
  %part59 = getelementptr inbounds %struct.BF_PartHolder, ptr %29, i64 0, i32 1
  %30 = load ptr, ptr %part59, align 8
  %31 = load ptr, ptr @frameData, align 8
  %frameSI = getelementptr inbounds %struct.BF_FrameData, ptr %31, i64 0, i32 4
  store ptr %30, ptr %frameSI, align 8
  br label %for.cond60

for.cond60:                                       ; preds = %for.body64, %if.end57
  %storemerge2 = phi i32 [ 0, %if.end57 ], [ %inc71, %for.body64 ]
  store i32 %storemerge2, ptr %ch, align 4
  %32 = load ptr, ptr %gfp.addr, align 8
  %stereo61 = getelementptr inbounds %struct.lame_global_flags, ptr %32, i64 0, i32 46
  %33 = load i32, ptr %stereo61, align 4
  %cmp62 = icmp slt i32 %storemerge2, %33
  br i1 %cmp62, label %for.body64, label %for.cond73

for.body64:                                       ; preds = %for.cond60
  %34 = load i32, ptr %ch, align 4
  %idxprom65 = sext i32 %34 to i64
  %arrayidx66 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %idxprom65
  %35 = load ptr, ptr %arrayidx66, align 8
  %part67 = getelementptr inbounds %struct.BF_PartHolder, ptr %35, i64 0, i32 1
  %36 = load ptr, ptr %part67, align 8
  %37 = load ptr, ptr @frameData, align 8
  %38 = load i32, ptr %ch, align 4
  %idxprom68 = sext i32 %38 to i64
  %arrayidx69 = getelementptr inbounds %struct.BF_FrameData, ptr %37, i64 0, i32 5, i64 %idxprom68
  store ptr %36, ptr %arrayidx69, align 8
  %39 = load i32, ptr %ch, align 4
  %inc71 = add nsw i32 %39, 1
  br label %for.cond60, !llvm.loop !10

for.cond73:                                       ; preds = %for.cond60, %for.inc122
  %storemerge3 = phi i32 [ %inc123, %for.inc122 ], [ 0, %for.cond60 ]
  store i32 %storemerge3, ptr %gr, align 4
  %40 = load ptr, ptr %gfp.addr, align 8
  %mode_gr74 = getelementptr inbounds %struct.lame_global_flags, ptr %40, i64 0, i32 45
  %41 = load i32, ptr %mode_gr74, align 8
  %cmp75 = icmp slt i32 %storemerge3, %41
  br i1 %cmp75, label %for.cond78, label %for.end124

for.cond78:                                       ; preds = %for.cond73, %for.body82
  %storemerge4 = phi i32 [ %inc120, %for.body82 ], [ 0, %for.cond73 ]
  store i32 %storemerge4, ptr %ch, align 4
  %42 = load ptr, ptr %gfp.addr, align 8
  %stereo79 = getelementptr inbounds %struct.lame_global_flags, ptr %42, i64 0, i32 46
  %43 = load i32, ptr %stereo79, align 4
  %cmp80 = icmp slt i32 %storemerge4, %43
  br i1 %cmp80, label %for.body82, label %for.inc122

for.body82:                                       ; preds = %for.cond78
  %44 = load i32, ptr %gr, align 4
  %idxprom83 = sext i32 %44 to i64
  %45 = load i32, ptr %ch, align 4
  %idxprom85 = sext i32 %45 to i64
  %arrayidx86 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom83, i64 %idxprom85
  %46 = load ptr, ptr %arrayidx86, align 8
  %part87 = getelementptr inbounds %struct.BF_PartHolder, ptr %46, i64 0, i32 1
  %47 = load ptr, ptr %part87, align 8
  %48 = load ptr, ptr @frameData, align 8
  %49 = load i32, ptr %gr, align 4
  %idxprom88 = sext i32 %49 to i64
  %50 = load i32, ptr %ch, align 4
  %idxprom90 = sext i32 %50 to i64
  %arrayidx91 = getelementptr inbounds %struct.BF_FrameData, ptr %48, i64 0, i32 6, i64 %idxprom88, i64 %idxprom90
  store ptr %47, ptr %arrayidx91, align 8
  %idxprom92 = sext i32 %49 to i64
  %idxprom94 = sext i32 %50 to i64
  %arrayidx95 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom92, i64 %idxprom94
  %51 = load ptr, ptr %arrayidx95, align 8
  %part96 = getelementptr inbounds %struct.BF_PartHolder, ptr %51, i64 0, i32 1
  %52 = load ptr, ptr %part96, align 8
  %53 = load ptr, ptr @frameData, align 8
  %54 = load i32, ptr %gr, align 4
  %idxprom97 = sext i32 %54 to i64
  %55 = load i32, ptr %ch, align 4
  %idxprom99 = sext i32 %55 to i64
  %arrayidx100 = getelementptr inbounds %struct.BF_FrameData, ptr %53, i64 0, i32 7, i64 %idxprom97, i64 %idxprom99
  store ptr %52, ptr %arrayidx100, align 8
  %idxprom101 = sext i32 %54 to i64
  %idxprom103 = sext i32 %55 to i64
  %arrayidx104 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom101, i64 %idxprom103
  %56 = load ptr, ptr %arrayidx104, align 8
  %part105 = getelementptr inbounds %struct.BF_PartHolder, ptr %56, i64 0, i32 1
  %57 = load ptr, ptr %part105, align 8
  %58 = load ptr, ptr @frameData, align 8
  %59 = load i32, ptr %gr, align 4
  %idxprom106 = sext i32 %59 to i64
  %60 = load i32, ptr %ch, align 4
  %idxprom108 = sext i32 %60 to i64
  %arrayidx109 = getelementptr inbounds %struct.BF_FrameData, ptr %58, i64 0, i32 8, i64 %idxprom106, i64 %idxprom108
  store ptr %57, ptr %arrayidx109, align 8
  %idxprom110 = sext i32 %59 to i64
  %idxprom112 = sext i32 %60 to i64
  %arrayidx113 = getelementptr inbounds [2 x [2 x ptr]], ptr @userSpectrumPH, i64 0, i64 %idxprom110, i64 %idxprom112
  %61 = load ptr, ptr %arrayidx113, align 8
  %part114 = getelementptr inbounds %struct.BF_PartHolder, ptr %61, i64 0, i32 1
  %62 = load ptr, ptr %part114, align 8
  %63 = load ptr, ptr @frameData, align 8
  %64 = load i32, ptr %gr, align 4
  %idxprom115 = sext i32 %64 to i64
  %65 = load i32, ptr %ch, align 4
  %idxprom117 = sext i32 %65 to i64
  %arrayidx118 = getelementptr inbounds %struct.BF_FrameData, ptr %63, i64 0, i32 9, i64 %idxprom115, i64 %idxprom117
  store ptr %62, ptr %arrayidx118, align 8
  %66 = load i32, ptr %ch, align 4
  %inc120 = add nsw i32 %66, 1
  br label %for.cond78, !llvm.loop !11

for.inc122:                                       ; preds = %for.cond78
  %67 = load i32, ptr %gr, align 4
  %inc123 = add nsw i32 %67, 1
  br label %for.cond73, !llvm.loop !12

for.end124:                                       ; preds = %for.cond73
  %68 = load ptr, ptr @userFrameDataPH, align 8
  %part125 = getelementptr inbounds %struct.BF_PartHolder, ptr %68, i64 0, i32 1
  %69 = load ptr, ptr %part125, align 8
  %70 = load ptr, ptr @frameData, align 8
  %userFrameData = getelementptr inbounds %struct.BF_FrameData, ptr %70, i64 0, i32 10
  store ptr %69, ptr %userFrameData, align 8
  %71 = load ptr, ptr @frameResults, align 8
  call void @BF_BitstreamFrame(ptr noundef %70, ptr noundef %71) #5
  %72 = load ptr, ptr @frameResults, align 8
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, ptr %72, i64 0, i32 2
  %73 = load i32, ptr %nextBackPtr, align 4
  %74 = load ptr, ptr %l3_side.addr, align 8
  store i32 %73, ptr %74, align 8
  ret void
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare ptr @BF_newPartHolder(i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @encodeSideInfo(ptr noundef %gfp, ptr noundef %si) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %si.addr = alloca ptr, align 8
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  %scfsi_band = alloca i32, align 4
  %region = alloca i32, align 4
  %window = alloca i32, align 4
  %bits_sent = alloca i32, align 4
  %pph = alloca ptr, align 8
  %pph72 = alloca ptr, align 8
  %gi = alloca ptr, align 8
  %pph165 = alloca ptr, align 8
  %gi170 = alloca ptr, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %si, ptr %si.addr, align 8
  store i32 65535, ptr @crc, align 4
  %0 = load ptr, ptr @headerPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %part, align 8
  store i32 0, ptr %1, align 8
  %2 = load ptr, ptr @headerPH, align 8
  %call = call ptr @BF_addEntry(ptr noundef %2, i32 noundef 4095, i32 noundef 12) #5
  store ptr %call, ptr @headerPH, align 8
  %3 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 43
  %4 = load i32, ptr %version, align 8
  %call1 = call ptr @BF_addEntry(ptr noundef %call, i32 noundef %4, i32 noundef 1) #5
  store ptr %call1, ptr @headerPH, align 8
  %call2 = call ptr @BF_addEntry(ptr noundef %call1, i32 noundef 1, i32 noundef 2) #5
  store ptr %call2, ptr @headerPH, align 8
  %5 = load ptr, ptr %gfp.addr, align 8
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %5, i64 0, i32 14
  %6 = load i32, ptr %error_protection, align 4
  %tobool.not = icmp eq i32 %6, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call3 = call ptr @BF_addEntry(ptr noundef %call2, i32 noundef %lnot.ext, i32 noundef 1) #5
  store ptr %call3, ptr @headerPH, align 8
  %7 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 50
  %8 = load i32, ptr %bitrate_index, align 4
  %call4 = call ptr @CRC_BF_addEntry(ptr noundef %call3, i32 noundef %8, i32 noundef 4)
  store ptr %call4, ptr @headerPH, align 8
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 51
  %9 = load i32, ptr %samplerate_index, align 8
  %call5 = call ptr @CRC_BF_addEntry(ptr noundef %call4, i32 noundef %9, i32 noundef 2)
  store ptr %call5, ptr @headerPH, align 8
  %10 = load ptr, ptr %gfp.addr, align 8
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 44
  %11 = load i32, ptr %padding, align 4
  %call6 = call ptr @CRC_BF_addEntry(ptr noundef %call5, i32 noundef %11, i32 noundef 1)
  store ptr %call6, ptr @headerPH, align 8
  %extension = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 16
  %12 = load i32, ptr %extension, align 4
  %call7 = call ptr @CRC_BF_addEntry(ptr noundef %call6, i32 noundef %12, i32 noundef 1)
  store ptr %call7, ptr @headerPH, align 8
  %13 = load ptr, ptr %gfp.addr, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %13, i64 0, i32 8
  %14 = load i32, ptr %mode, align 4
  %call8 = call ptr @CRC_BF_addEntry(ptr noundef %call7, i32 noundef %14, i32 noundef 2)
  store ptr %call8, ptr @headerPH, align 8
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %13, i64 0, i32 52
  %15 = load i32, ptr %mode_ext, align 4
  %call9 = call ptr @CRC_BF_addEntry(ptr noundef %call8, i32 noundef %15, i32 noundef 2)
  store ptr %call9, ptr @headerPH, align 8
  %16 = load ptr, ptr %gfp.addr, align 8
  %copyright = getelementptr inbounds %struct.lame_global_flags, ptr %16, i64 0, i32 12
  %17 = load i32, ptr %copyright, align 4
  %call10 = call ptr @CRC_BF_addEntry(ptr noundef %call9, i32 noundef %17, i32 noundef 1)
  store ptr %call10, ptr @headerPH, align 8
  %original = getelementptr inbounds %struct.lame_global_flags, ptr %16, i64 0, i32 13
  %18 = load i32, ptr %original, align 8
  %call11 = call ptr @CRC_BF_addEntry(ptr noundef %call10, i32 noundef %18, i32 noundef 1)
  store ptr %call11, ptr @headerPH, align 8
  %19 = load ptr, ptr %gfp.addr, align 8
  %emphasis = getelementptr inbounds %struct.lame_global_flags, ptr %19, i64 0, i32 38
  %20 = load i32, ptr %emphasis, align 4
  %call12 = call ptr @CRC_BF_addEntry(ptr noundef %call11, i32 noundef %20, i32 noundef 2)
  store ptr %call12, ptr @headerPH, align 8
  store i32 32, ptr %bits_sent, align 4
  %21 = load ptr, ptr @frameSIPH, align 8
  %part13 = getelementptr inbounds %struct.BF_PartHolder, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %part13, align 8
  store i32 0, ptr %22, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ch, align 4
  %23 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %23, i64 0, i32 46
  %24 = load i32, ptr %stereo, align 4
  %cmp = icmp slt i32 %storemerge, %24
  br i1 %cmp, label %for.body, label %for.cond17

for.body:                                         ; preds = %for.cond
  %25 = load i32, ptr %ch, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %idxprom
  %26 = load ptr, ptr %arrayidx, align 8
  %part15 = getelementptr inbounds %struct.BF_PartHolder, ptr %26, i64 0, i32 1
  %27 = load ptr, ptr %part15, align 8
  store i32 0, ptr %27, align 8
  %28 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %28, 1
  br label %for.cond, !llvm.loop !13

for.cond17:                                       ; preds = %for.cond, %for.inc33
  %storemerge1 = phi i32 [ %inc34, %for.inc33 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %gr, align 4
  %29 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %29, i64 0, i32 45
  %30 = load i32, ptr %mode_gr, align 8
  %cmp18 = icmp slt i32 %storemerge1, %30
  br i1 %cmp18, label %for.cond20, label %for.end35

for.cond20:                                       ; preds = %for.cond17, %for.body23
  %storemerge18 = phi i32 [ %inc31, %for.body23 ], [ 0, %for.cond17 ]
  store i32 %storemerge18, ptr %ch, align 4
  %31 = load ptr, ptr %gfp.addr, align 8
  %stereo21 = getelementptr inbounds %struct.lame_global_flags, ptr %31, i64 0, i32 46
  %32 = load i32, ptr %stereo21, align 4
  %cmp22 = icmp slt i32 %storemerge18, %32
  br i1 %cmp22, label %for.body23, label %for.inc33

for.body23:                                       ; preds = %for.cond20
  %33 = load i32, ptr %gr, align 4
  %idxprom24 = sext i32 %33 to i64
  %34 = load i32, ptr %ch, align 4
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom24, i64 %idxprom26
  %35 = load ptr, ptr %arrayidx27, align 8
  %part28 = getelementptr inbounds %struct.BF_PartHolder, ptr %35, i64 0, i32 1
  %36 = load ptr, ptr %part28, align 8
  store i32 0, ptr %36, align 8
  %37 = load i32, ptr %ch, align 4
  %inc31 = add nsw i32 %37, 1
  br label %for.cond20, !llvm.loop !14

for.inc33:                                        ; preds = %for.cond20
  %38 = load i32, ptr %gr, align 4
  %inc34 = add nsw i32 %38, 1
  br label %for.cond17, !llvm.loop !15

for.end35:                                        ; preds = %for.cond17
  %39 = load ptr, ptr %gfp.addr, align 8
  %version36 = getelementptr inbounds %struct.lame_global_flags, ptr %39, i64 0, i32 43
  %40 = load i32, ptr %version36, align 8
  %cmp37 = icmp eq i32 %40, 1
  br i1 %cmp37, label %if.then, label %if.else147

if.then:                                          ; preds = %for.end35
  %41 = load ptr, ptr @frameSIPH, align 8
  %42 = load ptr, ptr %si.addr, align 8
  %43 = load i32, ptr %42, align 8
  %call38 = call ptr @CRC_BF_addEntry(ptr noundef %41, i32 noundef %43, i32 noundef 9)
  store ptr %call38, ptr @frameSIPH, align 8
  %44 = load ptr, ptr %gfp.addr, align 8
  %stereo39 = getelementptr inbounds %struct.lame_global_flags, ptr %44, i64 0, i32 46
  %45 = load i32, ptr %stereo39, align 4
  %cmp40 = icmp eq i32 %45, 2
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then
  %46 = load ptr, ptr @frameSIPH, align 8
  %47 = load ptr, ptr %si.addr, align 8
  %private_bits = getelementptr inbounds %struct.III_side_info_t, ptr %47, i64 0, i32 1
  %48 = load i32, ptr %private_bits, align 4
  %call42 = call ptr @CRC_BF_addEntry(ptr noundef %46, i32 noundef %48, i32 noundef 3)
  br label %if.end

if.else:                                          ; preds = %if.then
  %49 = load ptr, ptr @frameSIPH, align 8
  %50 = load ptr, ptr %si.addr, align 8
  %private_bits43 = getelementptr inbounds %struct.III_side_info_t, ptr %50, i64 0, i32 1
  %51 = load i32, ptr %private_bits43, align 4
  %call44 = call ptr @CRC_BF_addEntry(ptr noundef %49, i32 noundef %51, i32 noundef 5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then41
  %storemerge8 = phi ptr [ %call44, %if.else ], [ %call42, %if.then41 ]
  store ptr %storemerge8, ptr @frameSIPH, align 8
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc62, %if.end
  %storemerge9 = phi i32 [ 0, %if.end ], [ %inc63, %for.inc62 ]
  store i32 %storemerge9, ptr %ch, align 4
  %52 = load ptr, ptr %gfp.addr, align 8
  %stereo46 = getelementptr inbounds %struct.lame_global_flags, ptr %52, i64 0, i32 46
  %53 = load i32, ptr %stereo46, align 4
  %cmp47 = icmp slt i32 %storemerge9, %53
  br i1 %cmp47, label %for.cond49, label %for.cond65

for.cond49:                                       ; preds = %for.cond45, %for.body51
  %storemerge17 = phi i32 [ %inc60, %for.body51 ], [ 0, %for.cond45 ]
  store i32 %storemerge17, ptr %scfsi_band, align 4
  %cmp50 = icmp slt i32 %storemerge17, 4
  br i1 %cmp50, label %for.body51, label %for.inc62

for.body51:                                       ; preds = %for.cond49
  %54 = load i32, ptr %ch, align 4
  %idxprom52 = sext i32 %54 to i64
  %arrayidx53 = getelementptr inbounds [2 x ptr], ptr @channelSIPH, i64 0, i64 %idxprom52
  store ptr %arrayidx53, ptr %pph, align 8
  %55 = load ptr, ptr %arrayidx53, align 8
  %56 = load ptr, ptr %si.addr, align 8
  %idxprom54 = sext i32 %54 to i64
  %57 = load i32, ptr %scfsi_band, align 4
  %idxprom56 = sext i32 %57 to i64
  %arrayidx57 = getelementptr inbounds %struct.III_side_info_t, ptr %56, i64 0, i32 3, i64 %idxprom54, i64 %idxprom56
  %58 = load i32, ptr %arrayidx57, align 4
  %call58 = call ptr @CRC_BF_addEntry(ptr noundef %55, i32 noundef %58, i32 noundef 1)
  %59 = load ptr, ptr %pph, align 8
  store ptr %call58, ptr %59, align 8
  %60 = load i32, ptr %scfsi_band, align 4
  %inc60 = add nsw i32 %60, 1
  br label %for.cond49, !llvm.loop !16

for.inc62:                                        ; preds = %for.cond49
  %61 = load i32, ptr %ch, align 4
  %inc63 = add nsw i32 %61, 1
  br label %for.cond45, !llvm.loop !17

for.cond65:                                       ; preds = %for.cond45, %for.inc137
  %storemerge10 = phi i32 [ %inc138, %for.inc137 ], [ 0, %for.cond45 ]
  store i32 %storemerge10, ptr %gr, align 4
  %cmp66 = icmp slt i32 %storemerge10, 2
  br i1 %cmp66, label %for.cond68, label %for.end139

for.cond68:                                       ; preds = %for.cond65, %if.end130
  %storemerge13 = phi i32 [ %inc135, %if.end130 ], [ 0, %for.cond65 ]
  store i32 %storemerge13, ptr %ch, align 4
  %62 = load ptr, ptr %gfp.addr, align 8
  %stereo69 = getelementptr inbounds %struct.lame_global_flags, ptr %62, i64 0, i32 46
  %63 = load i32, ptr %stereo69, align 4
  %cmp70 = icmp slt i32 %storemerge13, %63
  br i1 %cmp70, label %for.body71, label %for.inc137

for.body71:                                       ; preds = %for.cond68
  %64 = load i32, ptr %gr, align 4
  %idxprom73 = sext i32 %64 to i64
  %65 = load i32, ptr %ch, align 4
  %idxprom75 = sext i32 %65 to i64
  %arrayidx76 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom73, i64 %idxprom75
  store ptr %arrayidx76, ptr %pph72, align 8
  %66 = load ptr, ptr %si.addr, align 8
  %67 = load i32, ptr %gr, align 4
  %idxprom78 = sext i32 %67 to i64
  %arrayidx79 = getelementptr inbounds %struct.III_side_info_t, ptr %66, i64 0, i32 4, i64 %idxprom78
  %68 = load i32, ptr %ch, align 4
  %idxprom81 = sext i32 %68 to i64
  %arrayidx82 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx79, i64 0, i64 %idxprom81
  store ptr %arrayidx82, ptr %gi, align 8
  %69 = load ptr, ptr %pph72, align 8
  %70 = load ptr, ptr %69, align 8
  %71 = load i32, ptr %arrayidx82, align 8
  %call83 = call ptr @CRC_BF_addEntry(ptr noundef %70, i32 noundef %71, i32 noundef 12)
  store ptr %call83, ptr %69, align 8
  %big_values = getelementptr inbounds %struct.gr_info, ptr %arrayidx82, i64 0, i32 1
  %72 = load i32, ptr %big_values, align 4
  %call84 = call ptr @CRC_BF_addEntry(ptr noundef %call83, i32 noundef %72, i32 noundef 9)
  %73 = load ptr, ptr %pph72, align 8
  store ptr %call84, ptr %73, align 8
  %74 = load ptr, ptr %gi, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %74, i64 0, i32 3
  %75 = load i32, ptr %global_gain, align 4
  %call85 = call ptr @CRC_BF_addEntry(ptr noundef %call84, i32 noundef %75, i32 noundef 8)
  store ptr %call85, ptr %73, align 8
  %76 = load ptr, ptr %pph72, align 8
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %gi, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %78, i64 0, i32 4
  %79 = load i32, ptr %scalefac_compress, align 8
  %call86 = call ptr @CRC_BF_addEntry(ptr noundef %77, i32 noundef %79, i32 noundef 4)
  store ptr %call86, ptr %76, align 8
  %80 = load ptr, ptr %pph72, align 8
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr %gi, align 8
  %window_switching_flag = getelementptr inbounds %struct.gr_info, ptr %82, i64 0, i32 5
  %83 = load i32, ptr %window_switching_flag, align 4
  %call87 = call ptr @CRC_BF_addEntry(ptr noundef %81, i32 noundef %83, i32 noundef 1)
  store ptr %call87, ptr %80, align 8
  %window_switching_flag88 = getelementptr inbounds %struct.gr_info, ptr %82, i64 0, i32 5
  %84 = load i32, ptr %window_switching_flag88, align 4
  %tobool89.not = icmp eq i32 %84, 0
  br i1 %tobool89.not, label %if.else111, label %if.then90

if.then90:                                        ; preds = %for.body71
  %85 = load ptr, ptr %pph72, align 8
  %86 = load ptr, ptr %85, align 8
  %87 = load ptr, ptr %gi, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %87, i64 0, i32 6
  %88 = load i32, ptr %block_type, align 8
  %call91 = call ptr @CRC_BF_addEntry(ptr noundef %86, i32 noundef %88, i32 noundef 2)
  store ptr %call91, ptr %85, align 8
  %89 = load ptr, ptr %pph72, align 8
  %90 = load ptr, ptr %89, align 8
  %91 = load ptr, ptr %gi, align 8
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, ptr %91, i64 0, i32 7
  %92 = load i32, ptr %mixed_block_flag, align 4
  %call92 = call ptr @CRC_BF_addEntry(ptr noundef %90, i32 noundef %92, i32 noundef 1)
  store ptr %call92, ptr %89, align 8
  br label %for.cond93

for.cond93:                                       ; preds = %for.body95, %if.then90
  %storemerge15 = phi i32 [ 0, %if.then90 ], [ %inc100, %for.body95 ]
  store i32 %storemerge15, ptr %region, align 4
  %cmp94 = icmp slt i32 %storemerge15, 2
  br i1 %cmp94, label %for.body95, label %for.cond102

for.body95:                                       ; preds = %for.cond93
  %93 = load ptr, ptr %pph72, align 8
  %94 = load ptr, ptr %93, align 8
  %95 = load ptr, ptr %gi, align 8
  %96 = load i32, ptr %region, align 4
  %idxprom96 = sext i32 %96 to i64
  %arrayidx97 = getelementptr inbounds %struct.gr_info, ptr %95, i64 0, i32 8, i64 %idxprom96
  %97 = load i32, ptr %arrayidx97, align 4
  %call98 = call ptr @CRC_BF_addEntry(ptr noundef %94, i32 noundef %97, i32 noundef 5)
  %98 = load ptr, ptr %pph72, align 8
  store ptr %call98, ptr %98, align 8
  %99 = load i32, ptr %region, align 4
  %inc100 = add nsw i32 %99, 1
  br label %for.cond93, !llvm.loop !18

for.cond102:                                      ; preds = %for.cond93, %for.body104
  %storemerge16 = phi i32 [ %inc109, %for.body104 ], [ 0, %for.cond93 ]
  store i32 %storemerge16, ptr %window, align 4
  %cmp103 = icmp slt i32 %storemerge16, 3
  br i1 %cmp103, label %for.body104, label %if.end130

for.body104:                                      ; preds = %for.cond102
  %100 = load ptr, ptr %pph72, align 8
  %101 = load ptr, ptr %100, align 8
  %102 = load ptr, ptr %gi, align 8
  %103 = load i32, ptr %window, align 4
  %idxprom105 = sext i32 %103 to i64
  %arrayidx106 = getelementptr inbounds %struct.gr_info, ptr %102, i64 0, i32 9, i64 %idxprom105
  %104 = load i32, ptr %arrayidx106, align 4
  %call107 = call ptr @CRC_BF_addEntry(ptr noundef %101, i32 noundef %104, i32 noundef 3)
  %105 = load ptr, ptr %pph72, align 8
  store ptr %call107, ptr %105, align 8
  %106 = load i32, ptr %window, align 4
  %inc109 = add nsw i32 %106, 1
  br label %for.cond102, !llvm.loop !19

if.else111:                                       ; preds = %for.body71
  %107 = load ptr, ptr %gi, align 8
  %block_type112 = getelementptr inbounds %struct.gr_info, ptr %107, i64 0, i32 6
  %108 = load i32, ptr %block_type112, align 8
  %cmp113.not = icmp eq i32 %108, 0
  br i1 %cmp113.not, label %for.cond117, label %cond.true

cond.true:                                        ; preds = %if.else111
  call void @__assert_rtn(ptr noundef nonnull @__func__.encodeSideInfo, ptr noundef nonnull @.str, i32 noundef 380, ptr noundef nonnull @.str.15) #7
  unreachable

for.cond117:                                      ; preds = %if.else111, %for.body120
  %storemerge14 = phi i32 [ %inc126, %for.body120 ], [ 0, %if.else111 ]
  store i32 %storemerge14, ptr %region, align 4
  %cmp118 = icmp slt i32 %storemerge14, 3
  br i1 %cmp118, label %for.body120, label %for.end127

for.body120:                                      ; preds = %for.cond117
  %109 = load ptr, ptr %pph72, align 8
  %110 = load ptr, ptr %109, align 8
  %111 = load ptr, ptr %gi, align 8
  %112 = load i32, ptr %region, align 4
  %idxprom122 = sext i32 %112 to i64
  %arrayidx123 = getelementptr inbounds %struct.gr_info, ptr %111, i64 0, i32 8, i64 %idxprom122
  %113 = load i32, ptr %arrayidx123, align 4
  %call124 = call ptr @CRC_BF_addEntry(ptr noundef %110, i32 noundef %113, i32 noundef 5)
  %114 = load ptr, ptr %pph72, align 8
  store ptr %call124, ptr %114, align 8
  %115 = load i32, ptr %region, align 4
  %inc126 = add nsw i32 %115, 1
  br label %for.cond117, !llvm.loop !20

for.end127:                                       ; preds = %for.cond117
  %116 = load ptr, ptr %pph72, align 8
  %117 = load ptr, ptr %116, align 8
  %118 = load ptr, ptr %gi, align 8
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %118, i64 0, i32 10
  %119 = load i32, ptr %region0_count, align 8
  %call128 = call ptr @CRC_BF_addEntry(ptr noundef %117, i32 noundef %119, i32 noundef 4)
  store ptr %call128, ptr %116, align 8
  %120 = load ptr, ptr %pph72, align 8
  %121 = load ptr, ptr %120, align 8
  %122 = load ptr, ptr %gi, align 8
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %122, i64 0, i32 11
  %123 = load i32, ptr %region1_count, align 4
  %call129 = call ptr @CRC_BF_addEntry(ptr noundef %121, i32 noundef %123, i32 noundef 3)
  store ptr %call129, ptr %120, align 8
  br label %if.end130

if.end130:                                        ; preds = %for.cond102, %for.end127
  %124 = load ptr, ptr %pph72, align 8
  %125 = load ptr, ptr %124, align 8
  %126 = load ptr, ptr %gi, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %126, i64 0, i32 12
  %127 = load i32, ptr %preflag, align 8
  %call131 = call ptr @CRC_BF_addEntry(ptr noundef %125, i32 noundef %127, i32 noundef 1)
  store ptr %call131, ptr %124, align 8
  %128 = load ptr, ptr %pph72, align 8
  %129 = load ptr, ptr %128, align 8
  %130 = load ptr, ptr %gi, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %130, i64 0, i32 13
  %131 = load i32, ptr %scalefac_scale, align 4
  %call132 = call ptr @CRC_BF_addEntry(ptr noundef %129, i32 noundef %131, i32 noundef 1)
  store ptr %call132, ptr %128, align 8
  %132 = load ptr, ptr %pph72, align 8
  %133 = load ptr, ptr %132, align 8
  %134 = load ptr, ptr %gi, align 8
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %134, i64 0, i32 14
  %135 = load i32, ptr %count1table_select, align 8
  %call133 = call ptr @CRC_BF_addEntry(ptr noundef %133, i32 noundef %135, i32 noundef 1)
  store ptr %call133, ptr %132, align 8
  %136 = load i32, ptr %ch, align 4
  %inc135 = add nsw i32 %136, 1
  br label %for.cond68, !llvm.loop !21

for.inc137:                                       ; preds = %for.cond68
  %137 = load i32, ptr %gr, align 4
  %inc138 = add nsw i32 %137, 1
  br label %for.cond65, !llvm.loop !22

for.end139:                                       ; preds = %for.cond65
  %138 = load ptr, ptr %gfp.addr, align 8
  %stereo140 = getelementptr inbounds %struct.lame_global_flags, ptr %138, i64 0, i32 46
  %139 = load i32, ptr %stereo140, align 4
  %cmp141 = icmp eq i32 %139, 2
  %140 = load i32, ptr %bits_sent, align 4
  %add145 = add nsw i32 %140, 136
  %141 = load i32, ptr %bits_sent, align 4
  %add = add nsw i32 %141, 256
  %storemerge11 = select i1 %cmp141, i32 %add, i32 %add145
  br label %if.end249

if.else147:                                       ; preds = %for.end35
  %142 = load ptr, ptr @frameSIPH, align 8
  %143 = load ptr, ptr %si.addr, align 8
  %144 = load i32, ptr %143, align 8
  %call149 = call ptr @CRC_BF_addEntry(ptr noundef %142, i32 noundef %144, i32 noundef 8)
  store ptr %call149, ptr @frameSIPH, align 8
  %145 = load ptr, ptr %gfp.addr, align 8
  %stereo150 = getelementptr inbounds %struct.lame_global_flags, ptr %145, i64 0, i32 46
  %146 = load i32, ptr %stereo150, align 4
  %cmp151 = icmp eq i32 %146, 2
  br i1 %cmp151, label %if.then153, label %if.else156

if.then153:                                       ; preds = %if.else147
  %147 = load ptr, ptr @frameSIPH, align 8
  %148 = load ptr, ptr %si.addr, align 8
  %private_bits154 = getelementptr inbounds %struct.III_side_info_t, ptr %148, i64 0, i32 1
  %149 = load i32, ptr %private_bits154, align 4
  %call155 = call ptr @CRC_BF_addEntry(ptr noundef %147, i32 noundef %149, i32 noundef 2)
  br label %if.end159

if.else156:                                       ; preds = %if.else147
  %150 = load ptr, ptr @frameSIPH, align 8
  %151 = load ptr, ptr %si.addr, align 8
  %private_bits157 = getelementptr inbounds %struct.III_side_info_t, ptr %151, i64 0, i32 1
  %152 = load i32, ptr %private_bits157, align 4
  %call158 = call ptr @CRC_BF_addEntry(ptr noundef %150, i32 noundef %152, i32 noundef 1)
  br label %if.end159

if.end159:                                        ; preds = %if.else156, %if.then153
  %storemerge2 = phi ptr [ %call158, %if.else156 ], [ %call155, %if.then153 ]
  store ptr %storemerge2, ptr @frameSIPH, align 8
  store i32 0, ptr %gr, align 4
  br label %for.cond160

for.cond160:                                      ; preds = %if.end233, %if.end159
  %storemerge3 = phi i32 [ 0, %if.end159 ], [ %inc239, %if.end233 ]
  store i32 %storemerge3, ptr %ch, align 4
  %153 = load ptr, ptr %gfp.addr, align 8
  %stereo161 = getelementptr inbounds %struct.lame_global_flags, ptr %153, i64 0, i32 46
  %154 = load i32, ptr %stereo161, align 4
  %cmp162 = icmp slt i32 %storemerge3, %154
  br i1 %cmp162, label %for.body164, label %for.end240

for.body164:                                      ; preds = %for.cond160
  %155 = load i32, ptr %gr, align 4
  %idxprom166 = sext i32 %155 to i64
  %156 = load i32, ptr %ch, align 4
  %idxprom168 = sext i32 %156 to i64
  %arrayidx169 = getelementptr inbounds [2 x [2 x ptr]], ptr @spectrumSIPH, i64 0, i64 %idxprom166, i64 %idxprom168
  store ptr %arrayidx169, ptr %pph165, align 8
  %157 = load ptr, ptr %si.addr, align 8
  %158 = load i32, ptr %gr, align 4
  %idxprom172 = sext i32 %158 to i64
  %arrayidx173 = getelementptr inbounds %struct.III_side_info_t, ptr %157, i64 0, i32 4, i64 %idxprom172
  %159 = load i32, ptr %ch, align 4
  %idxprom175 = sext i32 %159 to i64
  %arrayidx176 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx173, i64 0, i64 %idxprom175
  store ptr %arrayidx176, ptr %gi170, align 8
  %160 = load ptr, ptr %pph165, align 8
  %161 = load ptr, ptr %160, align 8
  %162 = load i32, ptr %arrayidx176, align 8
  %call179 = call ptr @CRC_BF_addEntry(ptr noundef %161, i32 noundef %162, i32 noundef 12)
  store ptr %call179, ptr %160, align 8
  %big_values180 = getelementptr inbounds %struct.gr_info, ptr %arrayidx176, i64 0, i32 1
  %163 = load i32, ptr %big_values180, align 4
  %call181 = call ptr @CRC_BF_addEntry(ptr noundef %call179, i32 noundef %163, i32 noundef 9)
  %164 = load ptr, ptr %pph165, align 8
  store ptr %call181, ptr %164, align 8
  %165 = load ptr, ptr %gi170, align 8
  %global_gain182 = getelementptr inbounds %struct.gr_info, ptr %165, i64 0, i32 3
  %166 = load i32, ptr %global_gain182, align 4
  %call183 = call ptr @CRC_BF_addEntry(ptr noundef %call181, i32 noundef %166, i32 noundef 8)
  store ptr %call183, ptr %164, align 8
  %167 = load ptr, ptr %pph165, align 8
  %168 = load ptr, ptr %167, align 8
  %169 = load ptr, ptr %gi170, align 8
  %scalefac_compress184 = getelementptr inbounds %struct.gr_info, ptr %169, i64 0, i32 4
  %170 = load i32, ptr %scalefac_compress184, align 8
  %call185 = call ptr @CRC_BF_addEntry(ptr noundef %168, i32 noundef %170, i32 noundef 9)
  store ptr %call185, ptr %167, align 8
  %171 = load ptr, ptr %pph165, align 8
  %172 = load ptr, ptr %171, align 8
  %173 = load ptr, ptr %gi170, align 8
  %window_switching_flag186 = getelementptr inbounds %struct.gr_info, ptr %173, i64 0, i32 5
  %174 = load i32, ptr %window_switching_flag186, align 4
  %call187 = call ptr @CRC_BF_addEntry(ptr noundef %172, i32 noundef %174, i32 noundef 1)
  store ptr %call187, ptr %171, align 8
  %window_switching_flag188 = getelementptr inbounds %struct.gr_info, ptr %173, i64 0, i32 5
  %175 = load i32, ptr %window_switching_flag188, align 4
  %tobool189.not = icmp eq i32 %175, 0
  br i1 %tobool189.not, label %for.cond218, label %if.then190

if.then190:                                       ; preds = %for.body164
  %176 = load ptr, ptr %pph165, align 8
  %177 = load ptr, ptr %176, align 8
  %178 = load ptr, ptr %gi170, align 8
  %block_type191 = getelementptr inbounds %struct.gr_info, ptr %178, i64 0, i32 6
  %179 = load i32, ptr %block_type191, align 8
  %call192 = call ptr @CRC_BF_addEntry(ptr noundef %177, i32 noundef %179, i32 noundef 2)
  store ptr %call192, ptr %176, align 8
  %180 = load ptr, ptr %pph165, align 8
  %181 = load ptr, ptr %180, align 8
  %182 = load ptr, ptr %gi170, align 8
  %mixed_block_flag193 = getelementptr inbounds %struct.gr_info, ptr %182, i64 0, i32 7
  %183 = load i32, ptr %mixed_block_flag193, align 4
  %call194 = call ptr @CRC_BF_addEntry(ptr noundef %181, i32 noundef %183, i32 noundef 1)
  store ptr %call194, ptr %180, align 8
  br label %for.cond195

for.cond195:                                      ; preds = %for.body198, %if.then190
  %storemerge6 = phi i32 [ 0, %if.then190 ], [ %inc204, %for.body198 ]
  store i32 %storemerge6, ptr %region, align 4
  %cmp196 = icmp slt i32 %storemerge6, 2
  br i1 %cmp196, label %for.body198, label %for.cond206

for.body198:                                      ; preds = %for.cond195
  %184 = load ptr, ptr %pph165, align 8
  %185 = load ptr, ptr %184, align 8
  %186 = load ptr, ptr %gi170, align 8
  %187 = load i32, ptr %region, align 4
  %idxprom200 = sext i32 %187 to i64
  %arrayidx201 = getelementptr inbounds %struct.gr_info, ptr %186, i64 0, i32 8, i64 %idxprom200
  %188 = load i32, ptr %arrayidx201, align 4
  %call202 = call ptr @CRC_BF_addEntry(ptr noundef %185, i32 noundef %188, i32 noundef 5)
  %189 = load ptr, ptr %pph165, align 8
  store ptr %call202, ptr %189, align 8
  %190 = load i32, ptr %region, align 4
  %inc204 = add nsw i32 %190, 1
  br label %for.cond195, !llvm.loop !23

for.cond206:                                      ; preds = %for.cond195, %for.body209
  %storemerge7 = phi i32 [ %inc215, %for.body209 ], [ 0, %for.cond195 ]
  store i32 %storemerge7, ptr %window, align 4
  %cmp207 = icmp slt i32 %storemerge7, 3
  br i1 %cmp207, label %for.body209, label %if.end233

for.body209:                                      ; preds = %for.cond206
  %191 = load ptr, ptr %pph165, align 8
  %192 = load ptr, ptr %191, align 8
  %193 = load ptr, ptr %gi170, align 8
  %194 = load i32, ptr %window, align 4
  %idxprom211 = sext i32 %194 to i64
  %arrayidx212 = getelementptr inbounds %struct.gr_info, ptr %193, i64 0, i32 9, i64 %idxprom211
  %195 = load i32, ptr %arrayidx212, align 4
  %call213 = call ptr @CRC_BF_addEntry(ptr noundef %192, i32 noundef %195, i32 noundef 3)
  %196 = load ptr, ptr %pph165, align 8
  store ptr %call213, ptr %196, align 8
  %197 = load i32, ptr %window, align 4
  %inc215 = add nsw i32 %197, 1
  br label %for.cond206, !llvm.loop !24

for.cond218:                                      ; preds = %for.body164, %for.body221
  %storemerge5 = phi i32 [ %inc227, %for.body221 ], [ 0, %for.body164 ]
  store i32 %storemerge5, ptr %region, align 4
  %cmp219 = icmp slt i32 %storemerge5, 3
  br i1 %cmp219, label %for.body221, label %for.end228

for.body221:                                      ; preds = %for.cond218
  %198 = load ptr, ptr %pph165, align 8
  %199 = load ptr, ptr %198, align 8
  %200 = load ptr, ptr %gi170, align 8
  %201 = load i32, ptr %region, align 4
  %idxprom223 = sext i32 %201 to i64
  %arrayidx224 = getelementptr inbounds %struct.gr_info, ptr %200, i64 0, i32 8, i64 %idxprom223
  %202 = load i32, ptr %arrayidx224, align 4
  %call225 = call ptr @CRC_BF_addEntry(ptr noundef %199, i32 noundef %202, i32 noundef 5)
  %203 = load ptr, ptr %pph165, align 8
  store ptr %call225, ptr %203, align 8
  %204 = load i32, ptr %region, align 4
  %inc227 = add nsw i32 %204, 1
  br label %for.cond218, !llvm.loop !25

for.end228:                                       ; preds = %for.cond218
  %205 = load ptr, ptr %pph165, align 8
  %206 = load ptr, ptr %205, align 8
  %207 = load ptr, ptr %gi170, align 8
  %region0_count229 = getelementptr inbounds %struct.gr_info, ptr %207, i64 0, i32 10
  %208 = load i32, ptr %region0_count229, align 8
  %call230 = call ptr @CRC_BF_addEntry(ptr noundef %206, i32 noundef %208, i32 noundef 4)
  store ptr %call230, ptr %205, align 8
  %209 = load ptr, ptr %pph165, align 8
  %210 = load ptr, ptr %209, align 8
  %211 = load ptr, ptr %gi170, align 8
  %region1_count231 = getelementptr inbounds %struct.gr_info, ptr %211, i64 0, i32 11
  %212 = load i32, ptr %region1_count231, align 4
  %call232 = call ptr @CRC_BF_addEntry(ptr noundef %210, i32 noundef %212, i32 noundef 3)
  store ptr %call232, ptr %209, align 8
  br label %if.end233

if.end233:                                        ; preds = %for.cond206, %for.end228
  %213 = load ptr, ptr %pph165, align 8
  %214 = load ptr, ptr %213, align 8
  %215 = load ptr, ptr %gi170, align 8
  %scalefac_scale234 = getelementptr inbounds %struct.gr_info, ptr %215, i64 0, i32 13
  %216 = load i32, ptr %scalefac_scale234, align 4
  %call235 = call ptr @CRC_BF_addEntry(ptr noundef %214, i32 noundef %216, i32 noundef 1)
  store ptr %call235, ptr %213, align 8
  %217 = load ptr, ptr %pph165, align 8
  %218 = load ptr, ptr %217, align 8
  %219 = load ptr, ptr %gi170, align 8
  %count1table_select236 = getelementptr inbounds %struct.gr_info, ptr %219, i64 0, i32 14
  %220 = load i32, ptr %count1table_select236, align 8
  %call237 = call ptr @CRC_BF_addEntry(ptr noundef %218, i32 noundef %220, i32 noundef 1)
  store ptr %call237, ptr %217, align 8
  %221 = load i32, ptr %ch, align 4
  %inc239 = add nsw i32 %221, 1
  br label %for.cond160, !llvm.loop !26

for.end240:                                       ; preds = %for.cond160
  %222 = load ptr, ptr %gfp.addr, align 8
  %stereo241 = getelementptr inbounds %struct.lame_global_flags, ptr %222, i64 0, i32 46
  %223 = load i32, ptr %stereo241, align 4
  %cmp242 = icmp eq i32 %223, 2
  %224 = load i32, ptr %bits_sent, align 4
  %add247 = add nsw i32 %224, 72
  %225 = load i32, ptr %bits_sent, align 4
  %add245 = add nsw i32 %225, 136
  %storemerge4 = select i1 %cmp242, i32 %add245, i32 %add247
  br label %if.end249

if.end249:                                        ; preds = %for.end240, %for.end139
  %storemerge12 = phi i32 [ %storemerge11, %for.end139 ], [ %storemerge4, %for.end240 ]
  store i32 %storemerge12, ptr %bits_sent, align 4
  %226 = load ptr, ptr %gfp.addr, align 8
  %error_protection250 = getelementptr inbounds %struct.lame_global_flags, ptr %226, i64 0, i32 14
  %227 = load i32, ptr %error_protection250, align 4
  %tobool251.not = icmp eq i32 %227, 0
  br i1 %tobool251.not, label %if.end255, label %if.then252

if.then252:                                       ; preds = %if.end249
  %228 = load ptr, ptr @headerPH, align 8
  %229 = load i32, ptr @crc, align 4
  %call253 = call ptr @BF_addEntry(ptr noundef %228, i32 noundef %229, i32 noundef 16) #5
  store ptr %call253, ptr @headerPH, align 8
  %230 = load i32, ptr %bits_sent, align 4
  %add254 = add nsw i32 %230, 16
  store i32 %add254, ptr %bits_sent, align 4
  br label %if.end255

if.end255:                                        ; preds = %if.then252, %if.end249
  %231 = load i32, ptr %bits_sent, align 4
  ret i32 %231
}

; Function Attrs: nounwind ssp uwtable
define internal void @encodeMainData(ptr noundef %gfp, ptr noundef %l3_enc, ptr noundef %si, ptr noundef %scalefac) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %l3_enc.addr = alloca ptr, align 8
  %si.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  %sfb = alloca i32, align 4
  %window = alloca i32, align 4
  %pph = alloca ptr, align 8
  %gi = alloca ptr, align 8
  %slen1 = alloca i32, align 4
  %slen2 = alloca i32, align 4
  %ix = alloca ptr, align 8
  %pph205 = alloca ptr, align 8
  %gi210 = alloca ptr, align 8
  %ix218 = alloca ptr, align 8
  %sfb_partition = alloca i32, align 4
  %sfbs = alloca i32, align 4
  %slen = alloca i32, align 4
  %sfbs272 = alloca i32, align 4
  %slen276 = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store ptr %si, ptr %si.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc7, %for.inc6 ]
  store i32 %storemerge, ptr %gr, align 4
  %0 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %1 = load i32, ptr %mode_gr, align 8
  %cmp = icmp slt i32 %storemerge, %1
  br i1 %cmp, label %for.cond1, label %for.cond9

for.cond1:                                        ; preds = %for.cond, %for.body3
  %storemerge17 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ]
  store i32 %storemerge17, ptr %ch, align 4
  %2 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %2, i64 0, i32 46
  %3 = load i32, ptr %stereo, align 4
  %cmp2 = icmp slt i32 %storemerge17, %3
  br i1 %cmp2, label %for.body3, label %for.inc6

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %gr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, ptr %ch, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom, i64 %idxprom4
  %6 = load ptr, ptr %arrayidx5, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %part, align 8
  store i32 0, ptr %7, align 8
  %8 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %8, 1
  br label %for.cond1, !llvm.loop !27

for.inc6:                                         ; preds = %for.cond1
  %9 = load i32, ptr %gr, align 4
  %inc7 = add nsw i32 %9, 1
  br label %for.cond, !llvm.loop !28

for.cond9:                                        ; preds = %for.cond, %for.inc26
  %storemerge1 = phi i32 [ %inc27, %for.inc26 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %gr, align 4
  %10 = load ptr, ptr %gfp.addr, align 8
  %mode_gr10 = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 45
  %11 = load i32, ptr %mode_gr10, align 8
  %cmp11 = icmp slt i32 %storemerge1, %11
  br i1 %cmp11, label %for.cond13, label %for.end28

for.cond13:                                       ; preds = %for.cond9, %for.body16
  %storemerge16 = phi i32 [ %inc24, %for.body16 ], [ 0, %for.cond9 ]
  store i32 %storemerge16, ptr %ch, align 4
  %12 = load ptr, ptr %gfp.addr, align 8
  %stereo14 = getelementptr inbounds %struct.lame_global_flags, ptr %12, i64 0, i32 46
  %13 = load i32, ptr %stereo14, align 4
  %cmp15 = icmp slt i32 %storemerge16, %13
  br i1 %cmp15, label %for.body16, label %for.inc26

for.body16:                                       ; preds = %for.cond13
  %14 = load i32, ptr %gr, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load i32, ptr %ch, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom17, i64 %idxprom19
  %16 = load ptr, ptr %arrayidx20, align 8
  %part21 = getelementptr inbounds %struct.BF_PartHolder, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %part21, align 8
  store i32 0, ptr %17, align 8
  %18 = load i32, ptr %ch, align 4
  %inc24 = add nsw i32 %18, 1
  br label %for.cond13, !llvm.loop !29

for.inc26:                                        ; preds = %for.cond13
  %19 = load i32, ptr %gr, align 4
  %inc27 = add nsw i32 %19, 1
  br label %for.cond9, !llvm.loop !30

for.end28:                                        ; preds = %for.cond9
  %20 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %20, i64 0, i32 43
  %21 = load i32, ptr %version, align 8
  %cmp29 = icmp eq i32 %21, 1
  br i1 %cmp29, label %for.cond30, label %if.else200

for.cond30:                                       ; preds = %for.end28, %for.inc197
  %storemerge6 = phi i32 [ %inc198, %for.inc197 ], [ 0, %for.end28 ]
  store i32 %storemerge6, ptr %gr, align 4
  %cmp31 = icmp slt i32 %storemerge6, 2
  br i1 %cmp31, label %for.cond33, label %if.end307

for.cond33:                                       ; preds = %for.cond30, %if.end189
  %storemerge7 = phi i32 [ %inc195, %if.end189 ], [ 0, %for.cond30 ]
  store i32 %storemerge7, ptr %ch, align 4
  %22 = load ptr, ptr %gfp.addr, align 8
  %stereo34 = getelementptr inbounds %struct.lame_global_flags, ptr %22, i64 0, i32 46
  %23 = load i32, ptr %stereo34, align 4
  %cmp35 = icmp slt i32 %storemerge7, %23
  br i1 %cmp35, label %for.body36, label %for.inc197

for.body36:                                       ; preds = %for.cond33
  %24 = load i32, ptr %gr, align 4
  %idxprom37 = sext i32 %24 to i64
  %25 = load i32, ptr %ch, align 4
  %idxprom39 = sext i32 %25 to i64
  %arrayidx40 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom37, i64 %idxprom39
  store ptr %arrayidx40, ptr %pph, align 8
  %26 = load ptr, ptr %si.addr, align 8
  %27 = load i32, ptr %gr, align 4
  %idxprom42 = sext i32 %27 to i64
  %arrayidx43 = getelementptr inbounds %struct.III_side_info_t, ptr %26, i64 0, i32 4, i64 %idxprom42
  %28 = load i32, ptr %ch, align 4
  %idxprom45 = sext i32 %28 to i64
  %arrayidx46 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx43, i64 0, i64 %idxprom45
  store ptr %arrayidx46, ptr %gi, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %arrayidx46, i64 0, i32 4
  %29 = load i32, ptr %scalefac_compress, align 8
  %idxprom47 = zext i32 %29 to i64
  %arrayidx48 = getelementptr inbounds [16 x i32], ptr @slen1_tab, i64 0, i64 %idxprom47
  %30 = load i32, ptr %arrayidx48, align 4
  store i32 %30, ptr %slen1, align 4
  %31 = load ptr, ptr %gi, align 8
  %scalefac_compress49 = getelementptr inbounds %struct.gr_info, ptr %31, i64 0, i32 4
  %32 = load i32, ptr %scalefac_compress49, align 8
  %idxprom50 = zext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds [16 x i32], ptr @slen2_tab, i64 0, i64 %idxprom50
  %33 = load i32, ptr %arrayidx51, align 4
  store i32 %33, ptr %slen2, align 4
  %34 = load ptr, ptr %l3_enc.addr, align 8
  %35 = load i32, ptr %gr, align 4
  %idxprom52 = sext i32 %35 to i64
  %36 = load i32, ptr %ch, align 4
  %idxprom54 = sext i32 %36 to i64
  %arrayidx55 = getelementptr inbounds [2 x [576 x i32]], ptr %34, i64 %idxprom52, i64 %idxprom54
  store ptr %arrayidx55, ptr %ix, align 8
  %37 = load ptr, ptr %gi, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %37, i64 0, i32 6
  %38 = load i32, ptr %block_type, align 8
  %cmp57 = icmp eq i32 %38, 2
  br i1 %cmp57, label %for.cond59, label %if.else

for.cond59:                                       ; preds = %for.body36, %for.inc76
  %storemerge12 = phi i32 [ %inc77, %for.inc76 ], [ 0, %for.body36 ]
  store i32 %storemerge12, ptr %sfb, align 4
  %cmp60 = icmp slt i32 %storemerge12, 6
  br i1 %cmp60, label %for.cond62, label %for.cond79

for.cond62:                                       ; preds = %for.cond59, %for.body64
  %storemerge15 = phi i32 [ %inc74, %for.body64 ], [ 0, %for.cond59 ]
  store i32 %storemerge15, ptr %window, align 4
  %cmp63 = icmp slt i32 %storemerge15, 3
  br i1 %cmp63, label %for.body64, label %for.inc76

for.body64:                                       ; preds = %for.cond62
  %39 = load ptr, ptr %pph, align 8
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %scalefac.addr, align 8
  %42 = load i32, ptr %gr, align 4
  %idxprom65 = sext i32 %42 to i64
  %43 = load i32, ptr %ch, align 4
  %idxprom67 = sext i32 %43 to i64
  %44 = load i32, ptr %sfb, align 4
  %idxprom69 = sext i32 %44 to i64
  %45 = load i32, ptr %window, align 4
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %41, i64 %idxprom65, i64 %idxprom67, i32 1, i64 %idxprom69, i64 %idxprom71
  %46 = load i32, ptr %arrayidx72, align 4
  %47 = load i32, ptr %slen1, align 4
  %call = call ptr @BF_addEntry(ptr noundef %40, i32 noundef %46, i32 noundef %47) #5
  %48 = load ptr, ptr %pph, align 8
  store ptr %call, ptr %48, align 8
  %49 = load i32, ptr %window, align 4
  %inc74 = add nsw i32 %49, 1
  br label %for.cond62, !llvm.loop !31

for.inc76:                                        ; preds = %for.cond62
  %50 = load i32, ptr %sfb, align 4
  %inc77 = add nsw i32 %50, 1
  br label %for.cond59, !llvm.loop !32

for.cond79:                                       ; preds = %for.cond59, %for.inc98
  %storemerge13 = phi i32 [ %inc99, %for.inc98 ], [ 6, %for.cond59 ]
  store i32 %storemerge13, ptr %sfb, align 4
  %cmp80 = icmp slt i32 %storemerge13, 12
  br i1 %cmp80, label %for.cond82, label %if.end189

for.cond82:                                       ; preds = %for.cond79, %for.body84
  %storemerge14 = phi i32 [ %inc96, %for.body84 ], [ 0, %for.cond79 ]
  store i32 %storemerge14, ptr %window, align 4
  %cmp83 = icmp slt i32 %storemerge14, 3
  br i1 %cmp83, label %for.body84, label %for.inc98

for.body84:                                       ; preds = %for.cond82
  %51 = load ptr, ptr %pph, align 8
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %scalefac.addr, align 8
  %54 = load i32, ptr %gr, align 4
  %idxprom85 = sext i32 %54 to i64
  %55 = load i32, ptr %ch, align 4
  %idxprom87 = sext i32 %55 to i64
  %56 = load i32, ptr %sfb, align 4
  %idxprom90 = sext i32 %56 to i64
  %57 = load i32, ptr %window, align 4
  %idxprom92 = sext i32 %57 to i64
  %arrayidx93 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %53, i64 %idxprom85, i64 %idxprom87, i32 1, i64 %idxprom90, i64 %idxprom92
  %58 = load i32, ptr %arrayidx93, align 4
  %59 = load i32, ptr %slen2, align 4
  %call94 = call ptr @BF_addEntry(ptr noundef %52, i32 noundef %58, i32 noundef %59) #5
  %60 = load ptr, ptr %pph, align 8
  store ptr %call94, ptr %60, align 8
  %61 = load i32, ptr %window, align 4
  %inc96 = add nsw i32 %61, 1
  br label %for.cond82, !llvm.loop !33

for.inc98:                                        ; preds = %for.cond82
  %62 = load i32, ptr %sfb, align 4
  %inc99 = add nsw i32 %62, 1
  br label %for.cond79, !llvm.loop !34

if.else:                                          ; preds = %for.body36
  %63 = load i32, ptr %gr, align 4
  %cmp101 = icmp eq i32 %63, 0
  br i1 %cmp101, label %if.then106, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %64 = load ptr, ptr %si.addr, align 8
  %65 = load i32, ptr %ch, align 4
  %idxprom102 = sext i32 %65 to i64
  %arrayidx103 = getelementptr inbounds %struct.III_side_info_t, ptr %64, i64 0, i32 3, i64 %idxprom102
  %66 = load i32, ptr %arrayidx103, align 4
  %cmp105 = icmp eq i32 %66, 0
  br i1 %cmp105, label %if.then106, label %if.end

if.then106:                                       ; preds = %lor.lhs.false, %if.else
  br label %for.cond107

for.cond107:                                      ; preds = %for.body109, %if.then106
  %storemerge11 = phi i32 [ 0, %if.then106 ], [ %inc118, %for.body109 ]
  store i32 %storemerge11, ptr %sfb, align 4
  %cmp108 = icmp slt i32 %storemerge11, 6
  br i1 %cmp108, label %for.body109, label %if.end

for.body109:                                      ; preds = %for.cond107
  %67 = load ptr, ptr %pph, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %scalefac.addr, align 8
  %70 = load i32, ptr %gr, align 4
  %idxprom110 = sext i32 %70 to i64
  %71 = load i32, ptr %ch, align 4
  %idxprom112 = sext i32 %71 to i64
  %arrayidx113 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %69, i64 %idxprom110, i64 %idxprom112
  %72 = load i32, ptr %sfb, align 4
  %idxprom114 = sext i32 %72 to i64
  %arrayidx115 = getelementptr inbounds [22 x i32], ptr %arrayidx113, i64 0, i64 %idxprom114
  %73 = load i32, ptr %arrayidx115, align 4
  %74 = load i32, ptr %slen1, align 4
  %call116 = call ptr @BF_addEntry(ptr noundef %68, i32 noundef %73, i32 noundef %74) #5
  %75 = load ptr, ptr %pph, align 8
  store ptr %call116, ptr %75, align 8
  %76 = load i32, ptr %sfb, align 4
  %inc118 = add nsw i32 %76, 1
  br label %for.cond107, !llvm.loop !35

if.end:                                           ; preds = %for.cond107, %lor.lhs.false
  %77 = load i32, ptr %gr, align 4
  %cmp120 = icmp eq i32 %77, 0
  br i1 %cmp120, label %if.then127, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %if.end
  %78 = load ptr, ptr %si.addr, align 8
  %79 = load i32, ptr %ch, align 4
  %idxprom123 = sext i32 %79 to i64
  %arrayidx125 = getelementptr inbounds %struct.III_side_info_t, ptr %78, i64 0, i32 3, i64 %idxprom123, i64 1
  %80 = load i32, ptr %arrayidx125, align 4
  %cmp126 = icmp eq i32 %80, 0
  br i1 %cmp126, label %if.then127, label %if.end142

if.then127:                                       ; preds = %lor.lhs.false121, %if.end
  br label %for.cond128

for.cond128:                                      ; preds = %for.body130, %if.then127
  %storemerge10 = phi i32 [ 6, %if.then127 ], [ %inc140, %for.body130 ]
  store i32 %storemerge10, ptr %sfb, align 4
  %cmp129 = icmp slt i32 %storemerge10, 11
  br i1 %cmp129, label %for.body130, label %if.end142

for.body130:                                      ; preds = %for.cond128
  %81 = load ptr, ptr %pph, align 8
  %82 = load ptr, ptr %81, align 8
  %83 = load ptr, ptr %scalefac.addr, align 8
  %84 = load i32, ptr %gr, align 4
  %idxprom131 = sext i32 %84 to i64
  %85 = load i32, ptr %ch, align 4
  %idxprom133 = sext i32 %85 to i64
  %arrayidx134 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %83, i64 %idxprom131, i64 %idxprom133
  %86 = load i32, ptr %sfb, align 4
  %idxprom136 = sext i32 %86 to i64
  %arrayidx137 = getelementptr inbounds [22 x i32], ptr %arrayidx134, i64 0, i64 %idxprom136
  %87 = load i32, ptr %arrayidx137, align 4
  %88 = load i32, ptr %slen1, align 4
  %call138 = call ptr @BF_addEntry(ptr noundef %82, i32 noundef %87, i32 noundef %88) #5
  %89 = load ptr, ptr %pph, align 8
  store ptr %call138, ptr %89, align 8
  %90 = load i32, ptr %sfb, align 4
  %inc140 = add nsw i32 %90, 1
  br label %for.cond128, !llvm.loop !36

if.end142:                                        ; preds = %for.cond128, %lor.lhs.false121
  %91 = load i32, ptr %gr, align 4
  %cmp143 = icmp eq i32 %91, 0
  br i1 %cmp143, label %if.then150, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %if.end142
  %92 = load ptr, ptr %si.addr, align 8
  %93 = load i32, ptr %ch, align 4
  %idxprom146 = sext i32 %93 to i64
  %arrayidx148 = getelementptr inbounds %struct.III_side_info_t, ptr %92, i64 0, i32 3, i64 %idxprom146, i64 2
  %94 = load i32, ptr %arrayidx148, align 4
  %cmp149 = icmp eq i32 %94, 0
  br i1 %cmp149, label %if.then150, label %if.end165

if.then150:                                       ; preds = %lor.lhs.false144, %if.end142
  br label %for.cond151

for.cond151:                                      ; preds = %for.body153, %if.then150
  %storemerge9 = phi i32 [ 11, %if.then150 ], [ %inc163, %for.body153 ]
  store i32 %storemerge9, ptr %sfb, align 4
  %cmp152 = icmp slt i32 %storemerge9, 16
  br i1 %cmp152, label %for.body153, label %if.end165

for.body153:                                      ; preds = %for.cond151
  %95 = load ptr, ptr %pph, align 8
  %96 = load ptr, ptr %95, align 8
  %97 = load ptr, ptr %scalefac.addr, align 8
  %98 = load i32, ptr %gr, align 4
  %idxprom154 = sext i32 %98 to i64
  %99 = load i32, ptr %ch, align 4
  %idxprom156 = sext i32 %99 to i64
  %arrayidx157 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %97, i64 %idxprom154, i64 %idxprom156
  %100 = load i32, ptr %sfb, align 4
  %idxprom159 = sext i32 %100 to i64
  %arrayidx160 = getelementptr inbounds [22 x i32], ptr %arrayidx157, i64 0, i64 %idxprom159
  %101 = load i32, ptr %arrayidx160, align 4
  %102 = load i32, ptr %slen2, align 4
  %call161 = call ptr @BF_addEntry(ptr noundef %96, i32 noundef %101, i32 noundef %102) #5
  %103 = load ptr, ptr %pph, align 8
  store ptr %call161, ptr %103, align 8
  %104 = load i32, ptr %sfb, align 4
  %inc163 = add nsw i32 %104, 1
  br label %for.cond151, !llvm.loop !37

if.end165:                                        ; preds = %for.cond151, %lor.lhs.false144
  %105 = load i32, ptr %gr, align 4
  %cmp166 = icmp eq i32 %105, 0
  br i1 %cmp166, label %if.then173, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %if.end165
  %106 = load ptr, ptr %si.addr, align 8
  %107 = load i32, ptr %ch, align 4
  %idxprom169 = sext i32 %107 to i64
  %arrayidx171 = getelementptr inbounds %struct.III_side_info_t, ptr %106, i64 0, i32 3, i64 %idxprom169, i64 3
  %108 = load i32, ptr %arrayidx171, align 4
  %cmp172 = icmp eq i32 %108, 0
  br i1 %cmp172, label %if.then173, label %if.end189

if.then173:                                       ; preds = %lor.lhs.false167, %if.end165
  br label %for.cond174

for.cond174:                                      ; preds = %for.body176, %if.then173
  %storemerge8 = phi i32 [ 16, %if.then173 ], [ %inc186, %for.body176 ]
  store i32 %storemerge8, ptr %sfb, align 4
  %cmp175 = icmp slt i32 %storemerge8, 21
  br i1 %cmp175, label %for.body176, label %if.end189

for.body176:                                      ; preds = %for.cond174
  %109 = load ptr, ptr %pph, align 8
  %110 = load ptr, ptr %109, align 8
  %111 = load ptr, ptr %scalefac.addr, align 8
  %112 = load i32, ptr %gr, align 4
  %idxprom177 = sext i32 %112 to i64
  %113 = load i32, ptr %ch, align 4
  %idxprom179 = sext i32 %113 to i64
  %arrayidx180 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %111, i64 %idxprom177, i64 %idxprom179
  %114 = load i32, ptr %sfb, align 4
  %idxprom182 = sext i32 %114 to i64
  %arrayidx183 = getelementptr inbounds [22 x i32], ptr %arrayidx180, i64 0, i64 %idxprom182
  %115 = load i32, ptr %arrayidx183, align 4
  %116 = load i32, ptr %slen2, align 4
  %call184 = call ptr @BF_addEntry(ptr noundef %110, i32 noundef %115, i32 noundef %116) #5
  %117 = load ptr, ptr %pph, align 8
  store ptr %call184, ptr %117, align 8
  %118 = load i32, ptr %sfb, align 4
  %inc186 = add nsw i32 %118, 1
  br label %for.cond174, !llvm.loop !38

if.end189:                                        ; preds = %lor.lhs.false167, %for.cond174, %for.cond79
  %119 = load i32, ptr %gr, align 4
  %idxprom190 = sext i32 %119 to i64
  %120 = load i32, ptr %ch, align 4
  %idxprom192 = sext i32 %120 to i64
  %arrayidx193 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom190, i64 %idxprom192
  %121 = load ptr, ptr %ix, align 8
  %122 = load ptr, ptr %gi, align 8
  call void @Huffmancodebits(ptr noundef nonnull %arrayidx193, ptr noundef %121, ptr noundef %122)
  %123 = load i32, ptr %ch, align 4
  %inc195 = add nsw i32 %123, 1
  br label %for.cond33, !llvm.loop !39

for.inc197:                                       ; preds = %for.cond33
  %124 = load i32, ptr %gr, align 4
  %inc198 = add nsw i32 %124, 1
  br label %for.cond30, !llvm.loop !40

if.else200:                                       ; preds = %for.end28
  store i32 0, ptr %gr, align 4
  br label %for.cond201

for.cond201:                                      ; preds = %if.end299, %if.else200
  %storemerge2 = phi i32 [ 0, %if.else200 ], [ %inc305, %if.end299 ]
  store i32 %storemerge2, ptr %ch, align 4
  %125 = load ptr, ptr %gfp.addr, align 8
  %stereo202 = getelementptr inbounds %struct.lame_global_flags, ptr %125, i64 0, i32 46
  %126 = load i32, ptr %stereo202, align 4
  %cmp203 = icmp slt i32 %storemerge2, %126
  br i1 %cmp203, label %for.body204, label %if.end307

for.body204:                                      ; preds = %for.cond201
  %127 = load i32, ptr %gr, align 4
  %idxprom206 = sext i32 %127 to i64
  %128 = load i32, ptr %ch, align 4
  %idxprom208 = sext i32 %128 to i64
  %arrayidx209 = getelementptr inbounds [2 x [2 x ptr]], ptr @scaleFactorsPH, i64 0, i64 %idxprom206, i64 %idxprom208
  store ptr %arrayidx209, ptr %pph205, align 8
  %129 = load ptr, ptr %si.addr, align 8
  %130 = load i32, ptr %gr, align 4
  %idxprom212 = sext i32 %130 to i64
  %arrayidx213 = getelementptr inbounds %struct.III_side_info_t, ptr %129, i64 0, i32 4, i64 %idxprom212
  %131 = load i32, ptr %ch, align 4
  %idxprom215 = sext i32 %131 to i64
  %arrayidx216 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx213, i64 0, i64 %idxprom215
  store ptr %arrayidx216, ptr %gi210, align 8
  %132 = load ptr, ptr %l3_enc.addr, align 8
  %133 = load i32, ptr %gr, align 4
  %idxprom219 = sext i32 %133 to i64
  %134 = load i32, ptr %ch, align 4
  %idxprom221 = sext i32 %134 to i64
  %arrayidx222 = getelementptr inbounds [2 x [576 x i32]], ptr %132, i64 %idxprom219, i64 %idxprom221
  store ptr %arrayidx222, ptr %ix218, align 8
  %135 = load ptr, ptr %gi210, align 8
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, ptr %135, i64 0, i32 19
  %136 = load ptr, ptr %sfb_partition_table, align 8
  %tobool.not = icmp eq ptr %136, null
  br i1 %tobool.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body204
  call void @__assert_rtn(ptr noundef nonnull @__func__.encodeMainData, ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.7) #7
  unreachable

cond.end:                                         ; preds = %for.body204
  %137 = load ptr, ptr %gi210, align 8
  %block_type225 = getelementptr inbounds %struct.gr_info, ptr %137, i64 0, i32 6
  %138 = load i32, ptr %block_type225, align 8
  %cmp226 = icmp eq i32 %138, 2
  br i1 %cmp226, label %if.then228, label %if.else267

if.then228:                                       ; preds = %cond.end
  store i32 0, ptr %sfb, align 4
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc264, %if.then228
  %storemerge4 = phi i32 [ 0, %if.then228 ], [ %inc265, %for.inc264 ]
  store i32 %storemerge4, ptr %sfb_partition, align 4
  %cmp230 = icmp slt i32 %storemerge4, 4
  br i1 %cmp230, label %for.body232, label %if.end299

for.body232:                                      ; preds = %for.cond229
  %139 = load ptr, ptr %gi210, align 8
  %sfb_partition_table233 = getelementptr inbounds %struct.gr_info, ptr %139, i64 0, i32 19
  %140 = load ptr, ptr %sfb_partition_table233, align 8
  %141 = load i32, ptr %sfb_partition, align 4
  %idxprom234 = sext i32 %141 to i64
  %arrayidx235 = getelementptr inbounds i32, ptr %140, i64 %idxprom234
  %142 = load i32, ptr %arrayidx235, align 4
  %div = udiv i32 %142, 3
  store i32 %div, ptr %sfbs, align 4
  %143 = load ptr, ptr %gi210, align 8
  %144 = load i32, ptr %sfb_partition, align 4
  %idxprom237 = sext i32 %144 to i64
  %arrayidx238 = getelementptr inbounds %struct.gr_info, ptr %143, i64 0, i32 20, i64 %idxprom237
  %145 = load i32, ptr %arrayidx238, align 4
  store i32 %145, ptr %slen, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond239

for.cond239:                                      ; preds = %for.inc260, %for.body232
  %146 = load i32, ptr %i, align 4
  %147 = load i32, ptr %sfbs, align 4
  %cmp240 = icmp slt i32 %146, %147
  br i1 %cmp240, label %for.cond243, label %for.inc264

for.cond243:                                      ; preds = %for.cond239, %for.body246
  %storemerge5 = phi i32 [ %inc258, %for.body246 ], [ 0, %for.cond239 ]
  store i32 %storemerge5, ptr %window, align 4
  %cmp244 = icmp slt i32 %storemerge5, 3
  br i1 %cmp244, label %for.body246, label %for.inc260

for.body246:                                      ; preds = %for.cond243
  %148 = load ptr, ptr %pph205, align 8
  %149 = load ptr, ptr %148, align 8
  %150 = load ptr, ptr %scalefac.addr, align 8
  %151 = load i32, ptr %gr, align 4
  %idxprom247 = sext i32 %151 to i64
  %152 = load i32, ptr %ch, align 4
  %idxprom249 = sext i32 %152 to i64
  %153 = load i32, ptr %sfb, align 4
  %idxprom252 = sext i32 %153 to i64
  %154 = load i32, ptr %window, align 4
  %idxprom254 = sext i32 %154 to i64
  %arrayidx255 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %150, i64 %idxprom247, i64 %idxprom249, i32 1, i64 %idxprom252, i64 %idxprom254
  %155 = load i32, ptr %arrayidx255, align 4
  %156 = load i32, ptr %slen, align 4
  %call256 = call ptr @BF_addEntry(ptr noundef %149, i32 noundef %155, i32 noundef %156) #5
  %157 = load ptr, ptr %pph205, align 8
  store ptr %call256, ptr %157, align 8
  %158 = load i32, ptr %window, align 4
  %inc258 = add nsw i32 %158, 1
  br label %for.cond243, !llvm.loop !41

for.inc260:                                       ; preds = %for.cond243
  %159 = load i32, ptr %i, align 4
  %inc261 = add nsw i32 %159, 1
  store i32 %inc261, ptr %i, align 4
  %160 = load i32, ptr %sfb, align 4
  %inc262 = add nsw i32 %160, 1
  store i32 %inc262, ptr %sfb, align 4
  br label %for.cond239, !llvm.loop !42

for.inc264:                                       ; preds = %for.cond239
  %161 = load i32, ptr %sfb_partition, align 4
  %inc265 = add nsw i32 %161, 1
  br label %for.cond229, !llvm.loop !43

if.else267:                                       ; preds = %cond.end
  store i32 0, ptr %sfb, align 4
  br label %for.cond268

for.cond268:                                      ; preds = %for.inc296, %if.else267
  %storemerge3 = phi i32 [ 0, %if.else267 ], [ %inc297, %for.inc296 ]
  store i32 %storemerge3, ptr %sfb_partition, align 4
  %cmp269 = icmp slt i32 %storemerge3, 4
  br i1 %cmp269, label %for.body271, label %if.end299

for.body271:                                      ; preds = %for.cond268
  %162 = load ptr, ptr %gi210, align 8
  %sfb_partition_table273 = getelementptr inbounds %struct.gr_info, ptr %162, i64 0, i32 19
  %163 = load ptr, ptr %sfb_partition_table273, align 8
  %164 = load i32, ptr %sfb_partition, align 4
  %idxprom274 = sext i32 %164 to i64
  %arrayidx275 = getelementptr inbounds i32, ptr %163, i64 %idxprom274
  %165 = load i32, ptr %arrayidx275, align 4
  store i32 %165, ptr %sfbs272, align 4
  %166 = load ptr, ptr %gi210, align 8
  %idxprom278 = sext i32 %164 to i64
  %arrayidx279 = getelementptr inbounds %struct.gr_info, ptr %166, i64 0, i32 20, i64 %idxprom278
  %167 = load i32, ptr %arrayidx279, align 4
  store i32 %167, ptr %slen276, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond280

for.cond280:                                      ; preds = %for.body283, %for.body271
  %168 = load i32, ptr %i, align 4
  %169 = load i32, ptr %sfbs272, align 4
  %cmp281 = icmp slt i32 %168, %169
  br i1 %cmp281, label %for.body283, label %for.inc296

for.body283:                                      ; preds = %for.cond280
  %170 = load ptr, ptr %pph205, align 8
  %171 = load ptr, ptr %170, align 8
  %172 = load ptr, ptr %scalefac.addr, align 8
  %173 = load i32, ptr %gr, align 4
  %idxprom284 = sext i32 %173 to i64
  %174 = load i32, ptr %ch, align 4
  %idxprom286 = sext i32 %174 to i64
  %arrayidx287 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %172, i64 %idxprom284, i64 %idxprom286
  %175 = load i32, ptr %sfb, align 4
  %idxprom289 = sext i32 %175 to i64
  %arrayidx290 = getelementptr inbounds [22 x i32], ptr %arrayidx287, i64 0, i64 %idxprom289
  %176 = load i32, ptr %arrayidx290, align 4
  %177 = load i32, ptr %slen276, align 4
  %call291 = call ptr @BF_addEntry(ptr noundef %171, i32 noundef %176, i32 noundef %177) #5
  %178 = load ptr, ptr %pph205, align 8
  store ptr %call291, ptr %178, align 8
  %179 = load i32, ptr %i, align 4
  %inc293 = add nsw i32 %179, 1
  store i32 %inc293, ptr %i, align 4
  %180 = load i32, ptr %sfb, align 4
  %inc294 = add nsw i32 %180, 1
  store i32 %inc294, ptr %sfb, align 4
  br label %for.cond280, !llvm.loop !44

for.inc296:                                       ; preds = %for.cond280
  %181 = load i32, ptr %sfb_partition, align 4
  %inc297 = add nsw i32 %181, 1
  br label %for.cond268, !llvm.loop !45

if.end299:                                        ; preds = %for.cond268, %for.cond229
  %182 = load i32, ptr %gr, align 4
  %idxprom300 = sext i32 %182 to i64
  %183 = load i32, ptr %ch, align 4
  %idxprom302 = sext i32 %183 to i64
  %arrayidx303 = getelementptr inbounds [2 x [2 x ptr]], ptr @codedDataPH, i64 0, i64 %idxprom300, i64 %idxprom302
  %184 = load ptr, ptr %ix218, align 8
  %185 = load ptr, ptr %gi210, align 8
  call void @Huffmancodebits(ptr noundef nonnull %arrayidx303, ptr noundef %184, ptr noundef %185)
  %186 = load i32, ptr %ch, align 4
  %inc305 = add nsw i32 %186, 1
  br label %for.cond201, !llvm.loop !46

if.end307:                                        ; preds = %for.cond201, %for.cond30
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @drain_into_ancillary_data(i32 noundef %lengthInBits) #0 {
entry:
  %wordsToSend = alloca i32, align 4
  %remainingBits = alloca i32, align 4
  %i = alloca i32, align 4
  %div = sdiv i32 %lengthInBits, 32
  store i32 %div, ptr %wordsToSend, align 4
  %rem = srem i32 %lengthInBits, 32
  store i32 %rem, ptr %remainingBits, align 4
  %0 = load ptr, ptr @userFrameDataPH, align 8
  %part = getelementptr inbounds %struct.BF_PartHolder, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %part, align 8
  store i32 0, ptr %1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %2 = load i32, ptr %wordsToSend, align 4
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @userFrameDataPH, align 8
  %call = call ptr @BF_addEntry(ptr noundef %3, i32 noundef 0, i32 noundef 32) #5
  store ptr %call, ptr @userFrameDataPH, align 8
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %remainingBits, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %6 = load ptr, ptr @userFrameDataPH, align 8
  %7 = load i32, ptr %remainingBits, align 4
  %call1 = call ptr @BF_addEntry(ptr noundef %6, i32 noundef 0, i32 noundef %7) #5
  store ptr %call1, ptr @userFrameDataPH, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

declare void @BF_BitstreamFrame(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @III_FlushBitstream() #0 {
entry:
  %0 = load i32, ptr @PartHoldersInitialized, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @frameData, align 8
  %2 = load ptr, ptr @frameResults, align 8
  call void @BF_FlushBitstream(ptr noundef %1, ptr noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @BF_FlushBitstream(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @abs_and_sign(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load i32, ptr %x, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8
  %2 = load i32, ptr %1, align 4
  %mul = sub nsw i32 0, %2
  store i32 %mul, ptr %1, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @L3_huffman_coder_count1(ptr noundef %pph, ptr noundef %h, i32 noundef %v, i32 noundef %w, i32 noundef %x, i32 noundef %y) #0 {
entry:
  %pph.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %huffbits = alloca i64, align 8
  %signv = alloca i32, align 4
  %signw = alloca i32, align 4
  %signx = alloca i32, align 4
  %signy = alloca i32, align 4
  %p = alloca i32, align 4
  %len = alloca i32, align 4
  %totalBits = alloca i32, align 4
  store ptr %pph, ptr %pph.addr, align 8
  store ptr %h, ptr %h.addr, align 8
  store i32 %v, ptr %v.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 0, ptr %totalBits, align 4
  %call = call i32 @abs_and_sign(ptr noundef nonnull %v.addr)
  store i32 %call, ptr %signv, align 4
  %call1 = call i32 @abs_and_sign(ptr noundef nonnull %w.addr)
  store i32 %call1, ptr %signw, align 4
  %call2 = call i32 @abs_and_sign(ptr noundef nonnull %x.addr)
  store i32 %call2, ptr %signx, align 4
  %call3 = call i32 @abs_and_sign(ptr noundef nonnull %y.addr)
  store i32 %call3, ptr %signy, align 4
  %0 = load i32, ptr %v.addr, align 4
  %shl = shl i32 %0, 3
  %1 = load i32, ptr %w.addr, align 4
  %shl4 = shl i32 %1, 2
  %add = add nsw i32 %shl, %shl4
  %2 = load i32, ptr %x.addr, align 4
  %shl5 = shl i32 %2, 1
  %add6 = add nsw i32 %add, %shl5
  %3 = load i32, ptr %y.addr, align 4
  %add7 = add nsw i32 %add6, %3
  store i32 %add7, ptr %p, align 4
  %4 = load ptr, ptr %h.addr, align 8
  %table = getelementptr inbounds %struct.huffcodetab, ptr %4, i64 0, i32 2
  %5 = load ptr, ptr %table, align 8
  %idxprom = zext i32 %add7 to i64
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %idxprom
  %6 = load i64, ptr %arrayidx, align 8
  store i64 %6, ptr %huffbits, align 8
  %7 = load ptr, ptr %h.addr, align 8
  %hlen = getelementptr inbounds %struct.huffcodetab, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %hlen, align 8
  %9 = load i32, ptr %p, align 4
  %idxprom8 = zext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 %idxprom8
  %10 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %10 to i32
  store i32 %conv, ptr %len, align 4
  %11 = load ptr, ptr %pph.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i64, ptr %huffbits, align 8
  %conv10 = trunc i64 %13 to i32
  %call11 = call ptr @BF_addEntry(ptr noundef %12, i32 noundef %conv10, i32 noundef %conv) #5
  store ptr %call11, ptr %11, align 8
  store i32 0, ptr %totalBits, align 4
  store i32 0, ptr %p, align 4
  %14 = load i32, ptr %v.addr, align 4
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load i32, ptr %signv, align 4
  store i32 %15, ptr %p, align 4
  %16 = load i32, ptr %totalBits, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %totalBits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, ptr %w.addr, align 4
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end
  %18 = load i32, ptr %p, align 4
  %mul = shl i32 %18, 1
  %19 = load i32, ptr %signw, align 4
  %add14 = add i32 %mul, %19
  store i32 %add14, ptr %p, align 4
  %20 = load i32, ptr %totalBits, align 4
  %inc15 = add nsw i32 %20, 1
  store i32 %inc15, ptr %totalBits, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end
  %21 = load i32, ptr %x.addr, align 4
  %tobool17.not = icmp eq i32 %21, 0
  br i1 %tobool17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end16
  %22 = load i32, ptr %p, align 4
  %mul19 = shl i32 %22, 1
  %23 = load i32, ptr %signx, align 4
  %add20 = add i32 %mul19, %23
  store i32 %add20, ptr %p, align 4
  %24 = load i32, ptr %totalBits, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, ptr %totalBits, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16
  %25 = load i32, ptr %y.addr, align 4
  %tobool23.not = icmp eq i32 %25, 0
  br i1 %tobool23.not, label %if.end28, label %if.then24

if.then24:                                        ; preds = %if.end22
  %26 = load i32, ptr %p, align 4
  %mul25 = shl i32 %26, 1
  %27 = load i32, ptr %signy, align 4
  %add26 = add i32 %mul25, %27
  store i32 %add26, ptr %p, align 4
  %28 = load i32, ptr %totalBits, align 4
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, ptr %totalBits, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end22
  %29 = load ptr, ptr %pph.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = load i32, ptr %p, align 4
  %32 = load i32, ptr %totalBits, align 4
  %call29 = call ptr @BF_addEntry(ptr noundef %30, i32 noundef %31, i32 noundef %32) #5
  store ptr %call29, ptr %29, align 8
  %33 = load i32, ptr %len, align 4
  %add30 = add nsw i32 %32, %33
  ret i32 %add30
}

declare ptr @BF_addEntry(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @HuffmanCode(i32 noundef %table_select, i32 noundef %x, i32 noundef %y, ptr noundef %code, ptr noundef %ext, ptr noundef %cbits, ptr noundef %xbits) #0 {
entry:
  %table_select.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %code.addr = alloca ptr, align 8
  %ext.addr = alloca ptr, align 8
  %cbits.addr = alloca ptr, align 8
  %xbits.addr = alloca ptr, align 8
  %signx = alloca i32, align 4
  %signy = alloca i32, align 4
  %linbitsx = alloca i32, align 4
  %linbitsy = alloca i32, align 4
  %linbits = alloca i32, align 4
  %idx = alloca i32, align 4
  %h = alloca ptr, align 8
  store i32 %table_select, ptr %table_select.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store ptr %code, ptr %code.addr, align 8
  store ptr %ext, ptr %ext.addr, align 8
  store ptr %cbits, ptr %cbits.addr, align 8
  store ptr %xbits, ptr %xbits.addr, align 8
  store i32 0, ptr %cbits, align 4
  store i32 0, ptr %xbits, align 4
  store i32 0, ptr %code, align 4
  store i32 0, ptr %ext, align 4
  %0 = load i32, ptr %table_select.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @abs_and_sign(ptr noundef nonnull %x.addr)
  store i32 %call, ptr %signx, align 4
  %call1 = call i32 @abs_and_sign(ptr noundef nonnull %y.addr)
  store i32 %call1, ptr %signy, align 4
  %1 = load i32, ptr %table_select.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %h, align 8
  %cmp2 = icmp sgt i32 %1, 15
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %h, align 8
  %3 = load i32, ptr %2, align 8
  store i32 %3, ptr %linbits, align 4
  store i32 0, ptr %linbitsy, align 4
  store i32 0, ptr %linbitsx, align 4
  %4 = load i32, ptr %x.addr, align 4
  %cmp4 = icmp sgt i32 %4, 14
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  %5 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %5, -15
  store i32 %sub, ptr %linbitsx, align 4
  %6 = load ptr, ptr %h, align 8
  %linmax = getelementptr inbounds %struct.huffcodetab, ptr %6, i64 0, i32 1
  %7 = load i32, ptr %linmax, align 4
  %cmp6.not = icmp ugt i32 %sub, %7
  br i1 %cmp6.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then5
  call void @__assert_rtn(ptr noundef nonnull @__func__.HuffmanCode, ptr noundef nonnull @.str, i32 noundef 797, ptr noundef nonnull @.str.3) #7
  unreachable

cond.end:                                         ; preds = %if.then5
  store i32 15, ptr %x.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.then3
  %8 = load i32, ptr %y.addr, align 4
  %cmp8 = icmp sgt i32 %8, 14
  br i1 %cmp8, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.end7
  %9 = load i32, ptr %y.addr, align 4
  %sub11 = add nsw i32 %9, -15
  store i32 %sub11, ptr %linbitsy, align 4
  %10 = load ptr, ptr %h, align 8
  %linmax12 = getelementptr inbounds %struct.huffcodetab, ptr %10, i64 0, i32 1
  %11 = load i32, ptr %linmax12, align 4
  %cmp13.not = icmp ugt i32 %sub11, %11
  br i1 %cmp13.not, label %cond.true19, label %cond.end21

cond.true19:                                      ; preds = %if.then10
  call void @__assert_rtn(ptr noundef nonnull @__func__.HuffmanCode, ptr noundef nonnull @.str, i32 noundef 803, ptr noundef nonnull @.str.4) #7
  unreachable

cond.end21:                                       ; preds = %if.then10
  store i32 15, ptr %y.addr, align 4
  br label %if.end22

if.end22:                                         ; preds = %cond.end21, %if.end7
  %12 = load i32, ptr %x.addr, align 4
  %mul = shl nsw i32 %12, 4
  %13 = load i32, ptr %y.addr, align 4
  %add = add nsw i32 %mul, %13
  store i32 %add, ptr %idx, align 4
  %14 = load ptr, ptr %h, align 8
  %table = getelementptr inbounds %struct.huffcodetab, ptr %14, i64 0, i32 2
  %15 = load ptr, ptr %table, align 8
  %idxprom23 = zext i32 %add to i64
  %arrayidx24 = getelementptr inbounds i64, ptr %15, i64 %idxprom23
  %16 = load i64, ptr %arrayidx24, align 8
  %conv25 = trunc i64 %16 to i32
  %17 = load ptr, ptr %code.addr, align 8
  store i32 %conv25, ptr %17, align 4
  %18 = load ptr, ptr %h, align 8
  %hlen = getelementptr inbounds %struct.huffcodetab, ptr %18, i64 0, i32 3
  %19 = load ptr, ptr %hlen, align 8
  %20 = load i32, ptr %idx, align 4
  %idxprom26 = zext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %19, i64 %idxprom26
  %21 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %21 to i32
  %22 = load ptr, ptr %cbits.addr, align 8
  store i32 %conv28, ptr %22, align 4
  %23 = load i32, ptr %x.addr, align 4
  %cmp29 = icmp sgt i32 %23, 14
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end22
  %24 = load i32, ptr %linbitsx, align 4
  %25 = load ptr, ptr %ext.addr, align 8
  %26 = load i32, ptr %25, align 4
  %or = or i32 %26, %24
  store i32 %or, ptr %25, align 4
  %27 = load i32, ptr %linbits, align 4
  %28 = load ptr, ptr %xbits.addr, align 8
  %29 = load i32, ptr %28, align 4
  %add32 = add i32 %29, %27
  store i32 %add32, ptr %28, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end22
  %30 = load i32, ptr %x.addr, align 4
  %cmp34.not = icmp eq i32 %30, 0
  br i1 %cmp34.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end33
  %31 = load ptr, ptr %ext.addr, align 8
  %32 = load i32, ptr %31, align 4
  %shl = shl i32 %32, 1
  store i32 %shl, ptr %31, align 4
  %33 = load i32, ptr %signx, align 4
  %or37 = or i32 %shl, %33
  store i32 %or37, ptr %31, align 4
  %34 = load ptr, ptr %xbits.addr, align 8
  %35 = load i32, ptr %34, align 4
  %add38 = add nsw i32 %35, 1
  store i32 %add38, ptr %34, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33
  %36 = load i32, ptr %y.addr, align 4
  %cmp40 = icmp sgt i32 %36, 14
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end39
  %37 = load i32, ptr %linbits, align 4
  %38 = load ptr, ptr %ext.addr, align 8
  %39 = load i32, ptr %38, align 4
  %shl43 = shl i32 %39, %37
  store i32 %shl43, ptr %38, align 4
  %40 = load i32, ptr %linbitsy, align 4
  %or44 = or i32 %shl43, %40
  store i32 %or44, ptr %38, align 4
  %41 = load i32, ptr %linbits, align 4
  %42 = load ptr, ptr %xbits.addr, align 8
  %43 = load i32, ptr %42, align 4
  %add45 = add i32 %43, %41
  store i32 %add45, ptr %42, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end39
  %44 = load i32, ptr %y.addr, align 4
  %cmp47.not = icmp eq i32 %44, 0
  br i1 %cmp47.not, label %if.end79, label %if.then49

if.then49:                                        ; preds = %if.end46
  %45 = load ptr, ptr %ext.addr, align 8
  %46 = load i32, ptr %45, align 4
  %shl50 = shl i32 %46, 1
  store i32 %shl50, ptr %45, align 4
  %47 = load i32, ptr %signy, align 4
  %or51 = or i32 %shl50, %47
  store i32 %or51, ptr %45, align 4
  %48 = load ptr, ptr %xbits.addr, align 8
  %49 = load i32, ptr %48, align 4
  %add52 = add nsw i32 %49, 1
  store i32 %add52, ptr %48, align 4
  br label %if.end79

if.else:                                          ; preds = %if.end
  %50 = load i32, ptr %x.addr, align 4
  %mul54 = shl nsw i32 %50, 4
  %51 = load i32, ptr %y.addr, align 4
  %add55 = add nsw i32 %mul54, %51
  store i32 %add55, ptr %idx, align 4
  %52 = load ptr, ptr %h, align 8
  %table56 = getelementptr inbounds %struct.huffcodetab, ptr %52, i64 0, i32 2
  %53 = load ptr, ptr %table56, align 8
  %idxprom57 = zext i32 %add55 to i64
  %arrayidx58 = getelementptr inbounds i64, ptr %53, i64 %idxprom57
  %54 = load i64, ptr %arrayidx58, align 8
  %conv59 = trunc i64 %54 to i32
  %55 = load ptr, ptr %code.addr, align 8
  store i32 %conv59, ptr %55, align 4
  %56 = load ptr, ptr %h, align 8
  %hlen60 = getelementptr inbounds %struct.huffcodetab, ptr %56, i64 0, i32 3
  %57 = load ptr, ptr %hlen60, align 8
  %58 = load i32, ptr %idx, align 4
  %idxprom61 = zext i32 %58 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %57, i64 %idxprom61
  %59 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %59 to i32
  %60 = load ptr, ptr %cbits.addr, align 8
  %61 = load i32, ptr %60, align 4
  %add64 = add nsw i32 %61, %conv63
  store i32 %add64, ptr %60, align 4
  %62 = load i32, ptr %x.addr, align 4
  %cmp65.not = icmp eq i32 %62, 0
  br i1 %cmp65.not, label %if.end71, label %if.then67

if.then67:                                        ; preds = %if.else
  %63 = load ptr, ptr %code.addr, align 8
  %64 = load i32, ptr %63, align 4
  %shl68 = shl i32 %64, 1
  store i32 %shl68, ptr %63, align 4
  %65 = load i32, ptr %signx, align 4
  %or69 = or i32 %shl68, %65
  store i32 %or69, ptr %63, align 4
  %66 = load ptr, ptr %cbits.addr, align 8
  %67 = load i32, ptr %66, align 4
  %add70 = add nsw i32 %67, 1
  store i32 %add70, ptr %66, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.else
  %68 = load i32, ptr %y.addr, align 4
  %cmp72.not = icmp eq i32 %68, 0
  br i1 %cmp72.not, label %if.end79, label %if.then74

if.then74:                                        ; preds = %if.end71
  %69 = load ptr, ptr %code.addr, align 8
  %70 = load i32, ptr %69, align 4
  %shl75 = shl i32 %70, 1
  store i32 %shl75, ptr %69, align 4
  %71 = load i32, ptr %signy, align 4
  %or76 = or i32 %shl75, %71
  store i32 %or76, ptr %69, align 4
  %72 = load ptr, ptr %cbits.addr, align 8
  %73 = load i32, ptr %72, align 4
  %add77 = add nsw i32 %73, 1
  store i32 %add77, ptr %72, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end71, %if.then74, %if.end46, %if.then49
  %74 = load ptr, ptr %cbits.addr, align 8
  %75 = load i32, ptr %74, align 4
  %cmp80 = icmp sgt i32 %75, 32
  br i1 %cmp80, label %cond.true86, label %cond.end88

cond.true86:                                      ; preds = %if.end79
  call void @__assert_rtn(ptr noundef nonnull @__func__.HuffmanCode, ptr noundef nonnull @.str, i32 noundef 851, ptr noundef nonnull @.str.5) #7
  unreachable

cond.end88:                                       ; preds = %if.end79
  %76 = load ptr, ptr %xbits.addr, align 8
  %77 = load i32, ptr %76, align 4
  %cmp89 = icmp sgt i32 %77, 32
  br i1 %cmp89, label %cond.true95, label %cond.end97

cond.true95:                                      ; preds = %cond.end88
  call void @__assert_rtn(ptr noundef nonnull @__func__.HuffmanCode, ptr noundef nonnull @.str, i32 noundef 852, ptr noundef nonnull @.str.6) #7
  unreachable

cond.end97:                                       ; preds = %cond.end88
  %78 = load ptr, ptr %cbits.addr, align 8
  %79 = load i32, ptr %78, align 4
  %80 = load ptr, ptr %xbits.addr, align 8
  %81 = load i32, ptr %80, align 4
  %add98 = add nsw i32 %79, %81
  br label %return

return:                                           ; preds = %entry, %cond.end97
  %storemerge = phi i32 [ %add98, %cond.end97 ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @Huffmancodebits(ptr noundef %pph, ptr noundef %ix, ptr noundef %gi) #0 {
entry:
  %pph.addr = alloca ptr, align 8
  %ix.addr = alloca ptr, align 8
  %gi.addr = alloca ptr, align 8
  %region1Start = alloca i32, align 4
  %region2Start = alloca i32, align 4
  %i = alloca i32, align 4
  %bigvalues = alloca i32, align 4
  %count1End = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bits = alloca i32, align 4
  %cbits = alloca i32, align 4
  %xbits = alloca i32, align 4
  %stuffingBits = alloca i32, align 4
  %code = alloca i32, align 4
  %ext = alloca i32, align 4
  %bitsWritten = alloca i32, align 4
  %sfb = alloca i32, align 4
  %window = alloca i32, align 4
  %line = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %ix_s = alloca ptr, align 8
  %tableindex = alloca i32, align 4
  %scalefac_index = alloca i32, align 4
  %tableindex74 = alloca i32, align 4
  %stuffingWords = alloca i32, align 4
  %remainingBits = alloca i32, align 4
  store ptr %pph, ptr %pph.addr, align 8
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %gi, ptr %gi.addr, align 8
  store i32 0, ptr %bitsWritten, align 4
  %big_values = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 1
  %0 = load i32, ptr %big_values, align 4
  %mul = shl i32 %0, 1
  store i32 %mul, ptr %bigvalues, align 4
  %tobool.not = icmp eq i32 %mul, 0
  br i1 %tobool.not, label %if.end116, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %gi.addr, align 8
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 7
  %2 = load i32, ptr %mixed_block_flag, align 4
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.else39

land.lhs.true:                                    ; preds = %if.then
  %3 = load ptr, ptr %gi.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %3, i64 0, i32 6
  %4 = load i32, ptr %block_type, align 8
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then2, label %if.else39

if.then2:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %ix.addr, align 8
  store ptr %5, ptr %ix_s, align 8
  store i32 12, ptr %region1Start, align 4
  store i32 576, ptr %region2Start, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %if.then2
  %storemerge5 = phi i32 [ 0, %if.then2 ], [ %inc37, %for.inc36 ]
  store i32 %storemerge5, ptr %sfb, align 4
  %cmp3 = icmp slt i32 %storemerge5, 13
  br i1 %cmp3, label %for.body, label %if.end116

for.body:                                         ; preds = %for.cond
  store i32 100, ptr %tableindex, align 4
  %6 = load i32, ptr %sfb, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %start, align 4
  %add = add nsw i32 %6, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom4
  %8 = load i32, ptr %arrayidx5, align 4
  store i32 %8, ptr %end, align 4
  %9 = load i32, ptr %region1Start, align 4
  %cmp6 = icmp slt i32 %7, %9
  %10 = load ptr, ptr %gi.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.gr_info, ptr %10, i64 0, i32 8, i64 1
  %11 = load ptr, ptr %gi.addr, align 8
  %table_select = getelementptr inbounds %struct.gr_info, ptr %11, i64 0, i32 8
  %storemerge6.in = select i1 %cmp6, ptr %table_select, ptr %arrayidx10
  %storemerge6 = load i32, ptr %storemerge6.in, align 4
  store i32 %storemerge6, ptr %tableindex, align 4
  %cmp11 = icmp ugt i32 %storemerge6, 31
  br i1 %cmp11, label %cond.true, label %for.cond13

cond.true:                                        ; preds = %for.body
  call void @__assert_rtn(ptr noundef nonnull @__func__.Huffmancodebits, ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @.str.8) #7
  unreachable

for.cond13:                                       ; preds = %for.body, %for.inc34
  %storemerge7 = phi i32 [ %inc, %for.inc34 ], [ 0, %for.body ]
  store i32 %storemerge7, ptr %window, align 4
  %cmp14 = icmp slt i32 %storemerge7, 3
  br i1 %cmp14, label %for.body16, label %for.inc36

for.body16:                                       ; preds = %for.cond13
  %12 = load i32, ptr %start, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.body20, %for.body16
  %storemerge8 = phi i32 [ %12, %for.body16 ], [ %add33, %for.body20 ]
  store i32 %storemerge8, ptr %line, align 4
  %13 = load i32, ptr %end, align 4
  %cmp18 = icmp slt i32 %storemerge8, %13
  br i1 %cmp18, label %for.body20, label %for.inc34

for.body20:                                       ; preds = %for.cond17
  %14 = load ptr, ptr %ix_s, align 8
  %15 = load i32, ptr %line, align 4
  %idxprom21 = sext i32 %15 to i64
  %16 = load i32, ptr %window, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [192 x [3 x i32]], ptr %14, i64 0, i64 %idxprom21, i64 %idxprom23
  %17 = load i32, ptr %arrayidx24, align 4
  store i32 %17, ptr %x, align 4
  %18 = load ptr, ptr %ix_s, align 8
  %19 = load i32, ptr %line, align 4
  %add25 = add nsw i32 %19, 1
  %idxprom26 = sext i32 %add25 to i64
  %20 = load i32, ptr %window, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [192 x [3 x i32]], ptr %18, i64 0, i64 %idxprom26, i64 %idxprom28
  %21 = load i32, ptr %arrayidx29, align 4
  store i32 %21, ptr %y, align 4
  %22 = load i32, ptr %tableindex, align 4
  %23 = load i32, ptr %x, align 4
  %call = call i32 @HuffmanCode(i32 noundef %22, i32 noundef %23, i32 noundef %21, ptr noundef nonnull %code, ptr noundef nonnull %ext, ptr noundef nonnull %cbits, ptr noundef nonnull %xbits)
  store i32 %call, ptr %bits, align 4
  %24 = load ptr, ptr %pph.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load i32, ptr %code, align 4
  %27 = load i32, ptr %cbits, align 4
  %call30 = call ptr @BF_addEntry(ptr noundef %25, i32 noundef %26, i32 noundef %27) #5
  store ptr %call30, ptr %24, align 8
  %28 = load i32, ptr %ext, align 4
  %29 = load i32, ptr %xbits, align 4
  %call31 = call ptr @BF_addEntry(ptr noundef %call30, i32 noundef %28, i32 noundef %29) #5
  %30 = load ptr, ptr %pph.addr, align 8
  store ptr %call31, ptr %30, align 8
  %31 = load i32, ptr %bits, align 4
  %32 = load i32, ptr %bitsWritten, align 4
  %add32 = add nsw i32 %32, %31
  store i32 %add32, ptr %bitsWritten, align 4
  %33 = load i32, ptr %line, align 4
  %add33 = add nsw i32 %33, 2
  br label %for.cond17, !llvm.loop !48

for.inc34:                                        ; preds = %for.cond17
  %34 = load i32, ptr %window, align 4
  %inc = add nsw i32 %34, 1
  br label %for.cond13, !llvm.loop !49

for.inc36:                                        ; preds = %for.cond13
  %35 = load i32, ptr %sfb, align 4
  %inc37 = add nsw i32 %35, 1
  br label %for.cond, !llvm.loop !50

if.else39:                                        ; preds = %land.lhs.true, %if.then
  store i32 100, ptr %scalefac_index, align 4
  %36 = load ptr, ptr %gi.addr, align 8
  %mixed_block_flag40 = getelementptr inbounds %struct.gr_info, ptr %36, i64 0, i32 7
  %37 = load i32, ptr %mixed_block_flag40, align 4
  %tobool41.not = icmp eq i32 %37, 0
  br i1 %tobool41.not, label %if.else43, label %if.then42

if.then42:                                        ; preds = %if.else39
  store i32 36, ptr %region1Start, align 4
  br label %if.end69

if.else43:                                        ; preds = %if.else39
  %38 = load ptr, ptr %gi.addr, align 8
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %38, i64 0, i32 10
  %39 = load i32, ptr %region0_count, align 8
  %add44 = add i32 %39, 1
  store i32 %add44, ptr %scalefac_index, align 4
  %cmp45 = icmp ugt i32 %add44, 22
  br i1 %cmp45, label %cond.true51, label %cond.end53

cond.true51:                                      ; preds = %if.else43
  call void @__assert_rtn(ptr noundef nonnull @__func__.Huffmancodebits, ptr noundef nonnull @.str, i32 noundef 605, ptr noundef nonnull @.str.9) #7
  unreachable

cond.end53:                                       ; preds = %if.else43
  %40 = load i32, ptr %scalefac_index, align 4
  %idxprom54 = zext i32 %40 to i64
  %arrayidx55 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom54
  %41 = load i32, ptr %arrayidx55, align 4
  store i32 %41, ptr %region1Start, align 4
  %42 = load ptr, ptr %gi.addr, align 8
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %42, i64 0, i32 11
  %43 = load i32, ptr %region1_count, align 4
  %add56 = add i32 %43, 1
  %44 = load i32, ptr %scalefac_index, align 4
  %add57 = add i32 %44, %add56
  store i32 %add57, ptr %scalefac_index, align 4
  %cmp58 = icmp ugt i32 %add57, 22
  br i1 %cmp58, label %cond.true64, label %cond.end66

cond.true64:                                      ; preds = %cond.end53
  call void @__assert_rtn(ptr noundef nonnull @__func__.Huffmancodebits, ptr noundef nonnull @.str, i32 noundef 608, ptr noundef nonnull @.str.9) #7
  unreachable

cond.end66:                                       ; preds = %cond.end53
  %45 = load i32, ptr %scalefac_index, align 4
  %idxprom67 = zext i32 %45 to i64
  %arrayidx68 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom67
  %46 = load i32, ptr %arrayidx68, align 4
  br label %if.end69

if.end69:                                         ; preds = %cond.end66, %if.then42
  %storemerge1 = phi i32 [ %46, %cond.end66 ], [ 576, %if.then42 ]
  store i32 %storemerge1, ptr %region2Start, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc112, %if.end69
  %storemerge2 = phi i32 [ 0, %if.end69 ], [ %add113, %for.inc112 ]
  store i32 %storemerge2, ptr %i, align 4
  %47 = load i32, ptr %bigvalues, align 4
  %cmp71 = icmp slt i32 %storemerge2, %47
  br i1 %cmp71, label %for.body73, label %if.end116

for.body73:                                       ; preds = %for.cond70
  store i32 100, ptr %tableindex74, align 4
  %48 = load i32, ptr %i, align 4
  %49 = load i32, ptr %region1Start, align 4
  %cmp75 = icmp slt i32 %48, %49
  br i1 %cmp75, label %if.then77, label %if.else80

if.then77:                                        ; preds = %for.body73
  %50 = load ptr, ptr %gi.addr, align 8
  %table_select78 = getelementptr inbounds %struct.gr_info, ptr %50, i64 0, i32 8
  br label %if.end90

if.else80:                                        ; preds = %for.body73
  %51 = load i32, ptr %i, align 4
  %52 = load i32, ptr %region2Start, align 4
  %cmp81 = icmp slt i32 %51, %52
  %53 = load ptr, ptr %gi.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct.gr_info, ptr %53, i64 0, i32 8, i64 2
  %54 = load ptr, ptr %gi.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.gr_info, ptr %54, i64 0, i32 8, i64 1
  %storemerge3.in = select i1 %cmp81, ptr %arrayidx85, ptr %arrayidx88
  br label %if.end90

if.end90:                                         ; preds = %if.else80, %if.then77
  %storemerge4.in = phi ptr [ %storemerge3.in, %if.else80 ], [ %table_select78, %if.then77 ]
  %storemerge4 = load i32, ptr %storemerge4.in, align 4
  store i32 %storemerge4, ptr %tableindex74, align 4
  %cmp91 = icmp ugt i32 %storemerge4, 31
  br i1 %cmp91, label %cond.true97, label %cond.end99

cond.true97:                                      ; preds = %if.end90
  call void @__assert_rtn(ptr noundef nonnull @__func__.Huffmancodebits, ptr noundef nonnull @.str, i32 noundef 629, ptr noundef nonnull @.str.8) #7
  unreachable

cond.end99:                                       ; preds = %if.end90
  %55 = load ptr, ptr %ix.addr, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom100 = sext i32 %56 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %55, i64 %idxprom100
  %57 = load i32, ptr %arrayidx101, align 4
  store i32 %57, ptr %x, align 4
  %add102 = add nsw i32 %56, 1
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %55, i64 %idxprom103
  %58 = load i32, ptr %arrayidx104, align 4
  store i32 %58, ptr %y, align 4
  %59 = load i32, ptr %tableindex74, align 4
  %tobool105.not = icmp eq i32 %59, 0
  br i1 %tobool105.not, label %for.inc112, label %if.then106

if.then106:                                       ; preds = %cond.end99
  %60 = load i32, ptr %tableindex74, align 4
  %61 = load i32, ptr %x, align 4
  %62 = load i32, ptr %y, align 4
  %call107 = call i32 @HuffmanCode(i32 noundef %60, i32 noundef %61, i32 noundef %62, ptr noundef nonnull %code, ptr noundef nonnull %ext, ptr noundef nonnull %cbits, ptr noundef nonnull %xbits)
  store i32 %call107, ptr %bits, align 4
  %63 = load ptr, ptr %pph.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %65 = load i32, ptr %code, align 4
  %66 = load i32, ptr %cbits, align 4
  %call108 = call ptr @BF_addEntry(ptr noundef %64, i32 noundef %65, i32 noundef %66) #5
  store ptr %call108, ptr %63, align 8
  %67 = load i32, ptr %ext, align 4
  %68 = load i32, ptr %xbits, align 4
  %call109 = call ptr @BF_addEntry(ptr noundef %call108, i32 noundef %67, i32 noundef %68) #5
  %69 = load ptr, ptr %pph.addr, align 8
  store ptr %call109, ptr %69, align 8
  %70 = load i32, ptr %bits, align 4
  %71 = load i32, ptr %bitsWritten, align 4
  %add110 = add nsw i32 %71, %70
  store i32 %add110, ptr %bitsWritten, align 4
  br label %for.inc112

for.inc112:                                       ; preds = %cond.end99, %if.then106
  %72 = load i32, ptr %i, align 4
  %add113 = add nsw i32 %72, 2
  br label %for.cond70, !llvm.loop !51

if.end116:                                        ; preds = %for.cond, %for.cond70, %entry
  %73 = load ptr, ptr %gi.addr, align 8
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %73, i64 0, i32 14
  %74 = load i32, ptr %count1table_select, align 8
  %cmp117 = icmp ugt i32 %74, 1
  br i1 %cmp117, label %cond.true123, label %cond.end125

cond.true123:                                     ; preds = %if.end116
  call void @__assert_rtn(ptr noundef nonnull @__func__.Huffmancodebits, ptr noundef nonnull @.str, i32 noundef 649, ptr noundef nonnull @.str.10) #7
  unreachable

cond.end125:                                      ; preds = %if.end116
  %75 = load i32, ptr %bigvalues, align 4
  %76 = load ptr, ptr %gi.addr, align 8
  %count1 = getelementptr inbounds %struct.gr_info, ptr %76, i64 0, i32 2
  %77 = load i32, ptr %count1, align 8
  %mul126 = shl i32 %77, 2
  %add127 = add i32 %75, %mul126
  store i32 %add127, ptr %count1End, align 4
  %cmp128 = icmp sgt i32 %add127, 576
  br i1 %cmp128, label %cond.true134, label %cond.end136

cond.true134:                                     ; preds = %cond.end125
  call void @__assert_rtn(ptr noundef nonnull @__func__.Huffmancodebits, ptr noundef nonnull @.str, i32 noundef 652, ptr noundef nonnull @.str.11) #7
  unreachable

cond.end136:                                      ; preds = %cond.end125
  %78 = load i32, ptr %bigvalues, align 4
  br label %for.cond137

for.cond137:                                      ; preds = %for.body140, %cond.end136
  %storemerge = phi i32 [ %78, %cond.end136 ], [ %add159, %for.body140 ]
  store i32 %storemerge, ptr %i, align 4
  %79 = load i32, ptr %count1End, align 4
  %cmp138 = icmp slt i32 %storemerge, %79
  br i1 %cmp138, label %for.body140, label %for.end160

for.body140:                                      ; preds = %for.cond137
  %80 = load ptr, ptr %ix.addr, align 8
  %81 = load i32, ptr %i, align 4
  %idxprom141 = sext i32 %81 to i64
  %arrayidx142 = getelementptr inbounds i32, ptr %80, i64 %idxprom141
  %82 = load i32, ptr %arrayidx142, align 4
  store i32 %82, ptr %v, align 4
  %add143 = add nsw i32 %81, 1
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %80, i64 %idxprom144
  %83 = load i32, ptr %arrayidx145, align 4
  store i32 %83, ptr %w, align 4
  %84 = load ptr, ptr %ix.addr, align 8
  %85 = load i32, ptr %i, align 4
  %add146 = add nsw i32 %85, 2
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds i32, ptr %84, i64 %idxprom147
  %86 = load i32, ptr %arrayidx148, align 4
  store i32 %86, ptr %x, align 4
  %87 = load ptr, ptr %ix.addr, align 8
  %88 = load i32, ptr %i, align 4
  %add149 = add nsw i32 %88, 3
  %idxprom150 = sext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds i32, ptr %87, i64 %idxprom150
  %89 = load i32, ptr %arrayidx151, align 4
  store i32 %89, ptr %y, align 4
  %90 = load ptr, ptr %pph.addr, align 8
  %91 = load ptr, ptr %gi.addr, align 8
  %count1table_select152 = getelementptr inbounds %struct.gr_info, ptr %91, i64 0, i32 14
  %92 = load i32, ptr %count1table_select152, align 8
  %add153 = add i32 %92, 32
  %idxprom154 = zext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom154
  %93 = load i32, ptr %v, align 4
  %94 = load i32, ptr %w, align 4
  %95 = load i32, ptr %x, align 4
  %96 = load i32, ptr %y, align 4
  %call156 = call i32 @L3_huffman_coder_count1(ptr noundef %90, ptr noundef nonnull %arrayidx155, i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96)
  %97 = load i32, ptr %bitsWritten, align 4
  %add157 = add nsw i32 %97, %call156
  store i32 %add157, ptr %bitsWritten, align 4
  %98 = load i32, ptr %i, align 4
  %add159 = add nsw i32 %98, 4
  br label %for.cond137, !llvm.loop !52

for.end160:                                       ; preds = %for.cond137
  %99 = load ptr, ptr %gi.addr, align 8
  %100 = load i32, ptr %99, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %99, i64 0, i32 15
  %101 = load i32, ptr %part2_length, align 4
  %102 = load i32, ptr %bitsWritten, align 4
  %103 = add i32 %101, %102
  %sub161 = sub i32 %100, %103
  store i32 %sub161, ptr %stuffingBits, align 4
  %tobool162.not = icmp eq i32 %100, %103
  br i1 %tobool162.not, label %if.end173, label %if.then163

if.then163:                                       ; preds = %for.end160
  %104 = load i32, ptr %stuffingBits, align 4
  %div = sdiv i32 %104, 32
  store i32 %div, ptr %stuffingWords, align 4
  %rem = srem i32 %104, 32
  store i32 %rem, ptr %remainingBits, align 4
  %105 = load ptr, ptr @__stderrp, align 8
  %call164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.12, i32 noundef %104) #5
  %106 = load ptr, ptr @__stderrp, align 8
  %107 = call i64 @fwrite(ptr nonnull @.str.13, i64 26, i64 1, ptr %106)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then163
  %108 = load i32, ptr %stuffingWords, align 4
  %dec = add nsw i32 %108, -1
  store i32 %dec, ptr %stuffingWords, align 4
  %tobool166.not = icmp eq i32 %108, 0
  br i1 %tobool166.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %109 = load ptr, ptr %pph.addr, align 8
  %110 = load ptr, ptr %109, align 8
  %call167 = call ptr @BF_addEntry(ptr noundef %110, i32 noundef -1, i32 noundef 32) #5
  store ptr %call167, ptr %109, align 8
  br label %while.cond, !llvm.loop !53

while.end:                                        ; preds = %while.cond
  %111 = load i32, ptr %remainingBits, align 4
  %tobool168.not = icmp eq i32 %111, 0
  br i1 %tobool168.not, label %if.end171, label %if.then169

if.then169:                                       ; preds = %while.end
  %112 = load ptr, ptr %pph.addr, align 8
  %113 = load ptr, ptr %112, align 8
  %114 = load i32, ptr %remainingBits, align 4
  %call170 = call ptr @BF_addEntry(ptr noundef %113, i32 noundef -1, i32 noundef %114) #5
  store ptr %call170, ptr %112, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %while.end
  %115 = load i32, ptr %stuffingBits, align 4
  %116 = load i32, ptr %bitsWritten, align 4
  %add172 = add nsw i32 %116, %115
  store i32 %add172, ptr %bitsWritten, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.end171, %for.end160
  %117 = load i32, ptr %bitsWritten, align 4
  %118 = load ptr, ptr %gi.addr, align 8
  %119 = load i32, ptr %118, align 8
  %part2_length175 = getelementptr inbounds %struct.gr_info, ptr %118, i64 0, i32 15
  %120 = load i32, ptr %part2_length175, align 4
  %sub176 = sub i32 %119, %120
  %cmp177.not = icmp eq i32 %117, %sub176
  br i1 %cmp177.not, label %cond.end185, label %cond.true183

cond.true183:                                     ; preds = %if.end173
  call void @__assert_rtn(ptr noundef nonnull @__func__.Huffmancodebits, ptr noundef nonnull @.str, i32 noundef 683, ptr noundef nonnull @.str.14) #7
  unreachable

cond.end185:                                      ; preds = %if.end173
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @CRC_BF_addEntry(ptr noundef %thePH, i32 noundef %value, i32 noundef %length) #0 {
entry:
  %thePH.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %bit = alloca i32, align 4
  store ptr %thePH, ptr %thePH.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  store i32 %length, ptr %length.addr, align 4
  %shl = shl i32 1, %length
  store i32 %shl, ptr %bit, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %bit, align 4
  %shr = lshr i32 %0, 1
  store i32 %shr, ptr %bit, align 4
  %tobool.not = icmp ult i32 %0, 2
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr @crc, align 4
  %shl1 = shl i32 %1, 1
  store i32 %shl1, ptr @crc, align 4
  %2 = lshr i32 %1, 15
  %.lobit = and i32 %2, 1
  %3 = load i32, ptr %value.addr, align 4
  %4 = load i32, ptr %bit, align 4
  %and3 = and i32 %3, %4
  %tobool4.not = icmp eq i32 %and3, 0
  %lnot.ext6 = zext i1 %tobool4.not to i32
  %5 = xor i32 %.lobit, %lnot.ext6
  %tobool7.not = icmp eq i32 %5, 1
  br i1 %tobool7.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load i32, ptr @crc, align 4
  %xor8 = xor i32 %6, 32773
  store i32 %xor8, ptr @crc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr @crc, align 4
  %and9 = and i32 %7, 65535
  store i32 %and9, ptr @crc, align 4
  %8 = load ptr, ptr %thePH.addr, align 8
  %9 = load i32, ptr %value.addr, align 4
  %10 = load i32, ptr %length.addr, align 4
  %call = call ptr @BF_addEntry(ptr noundef %8, i32 noundef %9, i32 noundef %10) #5
  ret ptr %call
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { cold noreturn nounwind }

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
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
